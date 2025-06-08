-- utils/network_manager.lua - Network Management System for Fun Run 2
-----------------------------------------------------------------------------------------

local gameConfig = require("config.game_config")
local json = require("json")

local M = {}

-- Network state
local isConnected = false
local isHost = false
local playerID = nil
local gameSession = nil
local connectedPlayers = {}
local networkType = "local" -- "local" or "online"

-- Message types
M.MESSAGE_TYPES = {
    -- Connection messages
    CONNECT = "connect",
    DISCONNECT = "disconnect",
    PLAYER_LIST = "player_list",
    
    -- Game state messages
    GAME_START = "game_start",
    GAME_END = "game_end",
    PLAYER_UPDATE = "player_update",
    PLAYER_ACTION = "player_action",
    
    -- Object sync messages
    POWERUP_SPAWN = "powerup_spawn",
    POWERUP_COLLECT = "powerup_collect",
    WEAPON_FIRE = "weapon_fire",
    PLATFORM_UPDATE = "platform_update",
    
    -- Chat messages
    CHAT_MESSAGE = "chat_message",
    
    -- Heartbeat
    HEARTBEAT = "heartbeat"
}

-- Event listeners
local eventListeners = {}
local heartbeatTimer = nil

-- Initialize network manager
function M.init(type)
    networkType = type or "local"
    playerID = M.generatePlayerID()
    
    if networkType == "local" then
        M.initLocalNetwork()
    else
        M.initOnlineNetwork()
    end
    
    print("Network Manager initialized for " .. networkType .. " play")
    print("Player ID: " .. playerID)
end

-- Generate unique player ID
function M.generatePlayerID()
    local chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local id = ""
    
    for i = 1, 8 do
        local rand = math.random(#chars)
        id = id .. string.sub(chars, rand, rand)
    end
    
    return id .. "_" .. system.getTimer()
end

-- Initialize local network (for same-device multiplayer)
function M.initLocalNetwork()
    isHost = true
    isConnected = true
    
    -- Add local player
    connectedPlayers[playerID] = {
        id = playerID,
        name = "Player 1",
        character = "default",
        position = {x = 0, y = 0},
        state = "ready",
        isLocal = true
    }
    
    -- Setup local message handling
    M.startHeartbeat()
end

-- Initialize online network
function M.initOnlineNetwork()
    -- For online multiplayer, you would typically use:
    -- 1. Solar2D's network library
    -- 2. WebSocket connections
    -- 3. Third-party services like GameSparks, Photon, etc.
    -- 4. Custom server implementation
    
    print("Online multiplayer not yet implemented")
    print("Falling back to local multiplayer")
    M.initLocalNetwork()
end

-- Create game session (host only)
function M.createGameSession(sessionData)
    if not isHost then
        return false, "Only host can create game session"
    end
    
    gameSession = {
        id = M.generateSessionID(),
        name = sessionData.name or "Fun Run Race",
        maxPlayers = sessionData.maxPlayers or 4,
        level = sessionData.level or "forest",
        state = "waiting", -- "waiting", "starting", "playing", "finished"
        players = {},
        settings = sessionData.settings or {}
    }
    
    -- Add host to session
    gameSession.players[playerID] = connectedPlayers[playerID]
    
    M.broadcastMessage(M.MESSAGE_TYPES.GAME_START, gameSession)
    
    return true, gameSession
end

-- Join game session
function M.joinGameSession(sessionID, playerData)
    if isHost then
        -- Add player to session
        if gameSession and #gameSession.players < gameSession.maxPlayers then
            gameSession.players[playerData.id] = playerData
            M.broadcastMessage(M.MESSAGE_TYPES.PLAYER_LIST, gameSession.players)
            return true
        end
        return false
    else
        -- Send join request to host
        M.sendMessage(M.MESSAGE_TYPES.CONNECT, {
            sessionID = sessionID,
            player = playerData
        })
    end
end

-- Generate session ID
function M.generateSessionID()
    return "session_" .. system.getTimer() .. "_" .. math.random(1000, 9999)
end

-- Add player to local session
function M.addLocalPlayer(playerData)
    if networkType == "local" then
        local localPlayerID = M.generatePlayerID()
        playerData.id = localPlayerID
        playerData.isLocal = true
        
        connectedPlayers[localPlayerID] = playerData
        
        if gameSession then
            gameSession.players[localPlayerID] = playerData
        end
        
        M.triggerEvent("playerJoined", playerData)
        return localPlayerID
    end
    
    return nil
end

-- Remove player
function M.removePlayer(playerId)
    if connectedPlayers[playerId] then
        connectedPlayers[playerId] = nil
        
        if gameSession and gameSession.players[playerId] then
            gameSession.players[playerId] = nil
        end
        
        M.broadcastMessage(M.MESSAGE_TYPES.DISCONNECT, {playerId = playerId})
        M.triggerEvent("playerLeft", {id = playerId})
    end
end

-- Send message
function M.sendMessage(messageType, data, targetPlayer)
    local message = {
        type = messageType,
        from = playerID,
        to = targetPlayer or "all",
        timestamp = system.getTimer(),
        data = data
    }
    
    if networkType == "local" then
        -- For local play, immediately process the message
        timer.performWithDelay(1, function()
            M.handleMessage(message)
        end)
    else
        -- For online play, send through network
        M.sendOnlineMessage(message)
    end
end

-- Broadcast message to all players
function M.broadcastMessage(messageType, data)
    M.sendMessage(messageType, data, "all")
end

-- Network message validation and security
function M.validateMessage(message)
    if not message or type(message) ~= "table" then
        return false
    end
    
    -- Required fields
    if not message.type or not message.from or not message.timestamp then
        return false
    end
    
    -- Valid message type
    local validType = false
    for _, msgType in pairs(M.MESSAGE_TYPES) do
        if message.type == msgType then
            validType = true
            break
        end
    end
    
    if not validType then
        return false
    end
    
    -- Timestamp validation (prevent old messages)
    local currentTime = system.getTimer()
    if currentTime - message.timestamp > 30000 then -- 30 seconds old
        return false
    end
    
    return true
end

-- Enhanced message processing with validation
function M.processMessage(message)
    if not M.validateMessage(message) then
        print("Invalid message received:", message.type or "unknown")
        return
    end
    
    -- Update last activity time for sender
    if connectedPlayers[message.from] then
        connectedPlayers[message.from].lastActivity = system.getTimer()
    end
    
    -- Process different message types
    if message.type == M.MESSAGE_TYPES.PLAYER_UPDATE then
        M.handlePlayerUpdate(message)
    elseif message.type == M.MESSAGE_TYPES.PLAYER_ACTION then
        M.handlePlayerAction(message)
    elseif message.type == M.MESSAGE_TYPES.POWERUP_COLLECT then
        M.handlePowerupCollect(message)
    elseif message.type == M.MESSAGE_TYPES.WEAPON_FIRE then
        M.handleWeaponFire(message)
    elseif message.type == M.MESSAGE_TYPES.GAME_START then
        M.handleGameStart(message)
    elseif message.type == M.MESSAGE_TYPES.GAME_END then
        M.handleGameEnd(message)
    elseif message.type == M.MESSAGE_TYPES.CHAT_MESSAGE then
        M.handleChatMessage(message)
    elseif message.type == M.MESSAGE_TYPES.HEARTBEAT then
        M.handleHeartbeat(message)
    end
    
    -- Trigger generic event for listeners
    M.triggerEvent("messageReceived", message)
end

-- Player update handler
function M.handlePlayerUpdate(message)
    local data = message.data
    if data and data.playerId and connectedPlayers[data.playerId] then
        local player = connectedPlayers[data.playerId]
        
        -- Update player position
        if data.position then
            player.position = data.position
        end
        
        -- Update player state
        if data.state then
            player.state = data.state
        end
        
        -- Update player stats
        if data.health then
            player.health = data.health
        end
        
        if data.score then
            player.score = data.score
        end
        
        M.triggerEvent("playerUpdated", player)
    end
end

-- Player action handler
function M.handlePlayerAction(message)
    local data = message.data
    if data and data.playerId and data.action then
        M.triggerEvent("playerAction", {
            playerId = data.playerId,
            action = data.action,
            params = data.params
        })
    end
end

-- Power-up collection handler
function M.handlePowerupCollect(message)
    local data = message.data
    if data and data.powerupId and data.playerId then
        M.triggerEvent("powerupCollected", {
            powerupId = data.powerupId,
            playerId = data.playerId,
            position = data.position
        })
    end
end

-- Weapon fire handler
function M.handleWeaponFire(message)
    local data = message.data
    if data and data.playerId and data.weaponType then
        M.triggerEvent("weaponFired", {
            playerId = data.playerId,
            weaponType = data.weaponType,
            position = data.position,
            direction = data.direction
        })
    end
end

-- Handle game start
function M.handleGameStart(data)
    gameSession = data
    M.triggerEvent("gameStarted", gameSession)
end

-- Handle game end
function M.handleGameEnd(data)
    M.triggerEvent("gameEnded", data)
end

-- Handle heartbeat
function M.handleHeartbeat(playerId, data)
    if connectedPlayers[playerId] then
        connectedPlayers[playerId].lastHeartbeat = system.getTimer()
    end
end

-- Handle chat message
function M.handleChatMessage(playerId, data)
    M.triggerEvent("chatMessage", {
        playerId = playerId,
        playerName = connectedPlayers[playerId] and connectedPlayers[playerId].name or "Unknown",
        message = data.message,
        timestamp = data.timestamp
    })
end

-- Send online message (placeholder for real implementation)
function M.sendOnlineMessage(message)
    -- This would be implemented using:
    -- 1. WebSocket connection
    -- 2. UDP sockets
    -- 3. Third-party service API
    -- 4. HTTP requests for turn-based games
    
    print("Online message sending not implemented yet")
    print("Message:", json.encode(message))
end

-- Player synchronization
function M.syncPlayerPosition(player)
    if not isConnected then return end
    
    local positionData = {
        position = {x = player.x, y = player.y},
        velocity = {x = player.velocity.x, y = player.velocity.y},
        state = {
            isGrounded = player.isGrounded,
            isSliding = player.isSliding,
            facingDirection = player.facingDirection,
            currentAnimation = player.currentAnimation
        }
    }
    
    M.sendMessage(M.MESSAGE_TYPES.PLAYER_UPDATE, positionData)
end

-- Send player action
function M.sendPlayerAction(action, data)
    if not isConnected then return end
    
    M.sendMessage(M.MESSAGE_TYPES.PLAYER_ACTION, {
        action = action,
        data = data,
        timestamp = system.getTimer()
    })
end

-- Send powerup collection
function M.sendPowerupCollection(powerupId, powerupType)
    if not isConnected then return end
    
    M.sendMessage(M.MESSAGE_TYPES.POWERUP_COLLECT, {
        powerupId = powerupId,
        playerId = playerID,
        powerupType = powerupType
    })
end

-- Send weapon fire
function M.sendWeaponFire(weaponType, position, direction)
    if not isConnected then return end
    
    M.sendMessage(M.MESSAGE_TYPES.WEAPON_FIRE, {
        weaponType = weaponType,
        position = position,
        direction = direction
    })
end

-- Event system
function M.addEventListener(eventType, listener)
    if not eventListeners[eventType] then
        eventListeners[eventType] = {}
    end
    
    table.insert(eventListeners[eventType], listener)
end

function M.removeEventListener(eventType, listener)
    if eventListeners[eventType] then
        for i = #eventListeners[eventType], 1, -1 do
            if eventListeners[eventType][i] == listener then
                table.remove(eventListeners[eventType], i)
                break
            end
        end
    end
end

function M.triggerEvent(eventType, data)
    if eventListeners[eventType] then
        for _, listener in ipairs(eventListeners[eventType]) do
            listener(data)
        end
    end
end

-- Heartbeat system
function M.startHeartbeat()
    if heartbeatTimer then
        timer.cancel(heartbeatTimer)
    end
    
    heartbeatTimer = timer.performWithDelay(gameConfig.HEARTBEAT_INTERVAL or 1000, function()
        M.sendMessage(M.MESSAGE_TYPES.HEARTBEAT, {
            timestamp = system.getTimer(),
            playerCount = M.getPlayerCount()
        })
        
        -- Check for disconnected players
        M.checkPlayerConnections()
    end, 0)
end

-- Check player connections
function M.checkPlayerConnections()
    local currentTime = system.getTimer()
    local timeout = gameConfig.SERVER_TIMEOUT or 5000
    
    for playerId, player in pairs(connectedPlayers) do
        if not player.isLocal and player.lastHeartbeat then
            if currentTime - player.lastHeartbeat > timeout then
                print("Player " .. playerId .. " timed out")
                M.removePlayer(playerId)
            end
        end
    end
end

-- Utility functions
function M.isConnected()
    return isConnected
end

function M.isHost()
    return isHost
end

function M.getPlayerID()
    return playerID
end

function M.getPlayerCount()
    local count = 0
    for _ in pairs(connectedPlayers) do
        count = count + 1
    end
    return count
end

function M.getConnectedPlayers()
    return connectedPlayers
end

function M.getGameSession()
    return gameSession
end

function M.getNetworkType()
    return networkType
end

-- Cleanup
function M.cleanup()
    -- Stop heartbeat
    if heartbeatTimer then
        timer.cancel(heartbeatTimer)
        heartbeatTimer = nil
    end
    
    -- Disconnect from session
    if isConnected then
        M.sendMessage(M.MESSAGE_TYPES.DISCONNECT, {
            playerId = playerID,
            reason = "cleanup"
        })
    end
    
    -- Clear data
    isConnected = false
    isHost = false
    playerID = nil
    gameSession = nil
    connectedPlayers = {}
    eventListeners = {}
    
    print("Network Manager cleaned up")
end

-- Network statistics (for debugging)
function M.getNetworkStats()
    return {
        isConnected = isConnected,
        isHost = isHost,
        playerID = playerID,
        playerCount = M.getPlayerCount(),
        networkType = networkType,
        gameSession = gameSession and gameSession.id or "none"
    }
end

-- Start local multiplayer game
function M.startLocalMultiplayerGame(numPlayers, level)
    numPlayers = numPlayers or 2
    level = level or "forest"
    
    -- Create additional local players
    for i = 2, numPlayers do
        local playerData = {
            name = "Player " .. i,
            character = "default",
            position = {x = 0, y = 0},
            state = "ready",
            isLocal = true
        }
        
        M.addLocalPlayer(playerData)
    end
    
    -- Create game session
    local sessionData = {
        name = "Local Race",
        maxPlayers = numPlayers,
        level = level,
        settings = {
            raceLength = gameConfig.RACE_LENGTH,
            powerUpsEnabled = true,
            weaponsEnabled = true
        }
    }
    
    return M.createGameSession(sessionData)
end

return M