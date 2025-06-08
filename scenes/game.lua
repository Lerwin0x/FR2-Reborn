-- scenes/game.lua - Main Game Scene for Fun Run 2
-----------------------------------------------------------------------------------------

local composer = require("composer")
local physics = require("physics")
local gameConfig = require("config.game_config")
local Player = require("objects.player")
local Platform = require("objects.platform")
local Obstacle = require("objects.obstacle")
local PowerUp = require("objects.powerup")
local animationManager = require("utils.animation_manager")
local networkManager = require("utils.network_manager")
local characterData = require("config.character_data")
local levelData = require("config.level_data")
local soundManager = require("utils.sound_manager")

local scene = composer.newScene()

-- Scene variables
local sceneGroup
local players = {}
local platforms = {}
local obstacles = {}
local powerUps = {}
local camera = {}
local currentLevel = nil
local levelLayout = nil
local gameState = {
    isRunning = false,
    raceStartTime = 0,
    raceDistance = gameConfig.RACE_LENGTH,
    finishLine = nil,
    finishedPlayers = {},
    isMultiplayer = false,
    session = nil
}

-- Camera system
function camera.update()
    if #players > 0 then
        -- Follow the leading player
        local leadPlayer = players[1]
        local leadPosition = leadPlayer.x
        
        for i = 2, #players do
            if players[i].x > leadPosition then
                leadPlayer = players[i]
                leadPosition = players[i].x
            end
        end
        
        -- Move camera to follow lead player
        local targetX = -leadPosition + gameConfig.CAMERA_OFFSET
        
        if sceneGroup then
            transition.to(sceneGroup, {
                x = targetX,
                time = 100,
                transition = easing.outQuad
            })
        end
    end
end

-- Level generation using level data configuration
local function generateLevel()
    if not currentLevel then
        currentLevel = levelData.getLevelById(1) -- Default to first level
    end
    
    -- Generate level layout using the new system
    levelLayout = levelData.generateLevelLayout(currentLevel)
    
    -- Apply environmental effects
    local effects = levelData.getEnvironmentalEffects(currentLevel.environment)
    if effects then
        -- Set background music
        -- audio.stop()
        -- audio.play(audio.loadSound(effects.background_music), {loops = -1})
        
        -- Apply lighting effects (placeholder)
        -- display.setDefault("textureFilter", effects.lighting)
    end
    
    -- Create platforms from layout
    for _, platformData in ipairs(levelLayout.platforms) do
        local platform = Platform.create({
            type = platformData.type,
            x = platformData.x,
            y = platformData.y,
            width = platformData.width,
            height = platformData.height,
            texture = platformData.texture,
            friction = platformData.friction,
            bounce = platformData.bounce,
            special = platformData.special
        })
        platforms[#platforms + 1] = platform
        sceneGroup:insert(platform)
    end
    
    -- Create obstacles from layout
    for _, obstacleData in ipairs(levelLayout.obstacles) do
        local obstacle = Obstacle.new(
            obstacleData.x,
            obstacleData.y,
            obstacleData.type,
            {
                width = obstacleData.width,
                height = obstacleData.height,
                damage = obstacleData.damage,
                effect = obstacleData.effect,
                texture = obstacleData.texture
            }
        )
        obstacles[#obstacles + 1] = obstacle
        sceneGroup:insert(obstacle)
    end
    
    -- Create power-ups from layout
    for _, powerUpData in ipairs(levelLayout.power_ups) do
        local powerUp = PowerUp.spawnRandomPowerUp(
            powerUpData.x,
            powerUpData.y
        )
        powerUps[#powerUps + 1] = powerUp
        sceneGroup:insert(powerUp)
    end
    
    -- Create checkpoints
    for _, checkpointData in ipairs(levelLayout.checkpoints) do
        local checkpoint = display.newImageRect(
            gameConfig.ASSETS.GRAPHICS .. "ui/checkpoint.png",
            30, 100
        )
        checkpoint.x = checkpointData.x
        checkpoint.y = checkpointData.y
        checkpoint.checkpointId = checkpointData.id
        sceneGroup:insert(checkpoint)
    end
    
    -- Create finish line
    gameState.finishLine = display.newImageRect(
        gameConfig.ASSETS.GRAPHICS .. "ui/finish_line.png",
        20, 200
    )
    gameState.finishLine.x = currentLevel.length
    gameState.finishLine.y = display.contentHeight - 150
    gameState.finishLine.isFinishLine = true
    sceneGroup:insert(gameState.finishLine)
end
end

-- Input handling with network integration
local function setupControls()
    local function onKeyEvent(event)
        if event.phase == "down" then
            local player = players[1] -- Main player
            
            if event.keyName == "space" or event.keyName == "up" then
                player:jump()
                -- Send network message for multiplayer
                if gameState.isMultiplayer and gameState.session then
                    networkManager.sendPlayerAction(gameState.session, "jump", {
                        playerId = player.playerId,
                        x = player.x,
                        y = player.y,
                        timestamp = system.getTimer()
                    })
                end
            elseif event.keyName == "down" then
                player:slide()
                if gameState.isMultiplayer and gameState.session then
                    networkManager.sendPlayerAction(gameState.session, "slide", {
                        playerId = player.playerId,
                        x = player.x,
                        y = player.y,
                        timestamp = system.getTimer()
                    })
                end
            elseif event.keyName == "left" then
                player:move(-1)
                if gameState.isMultiplayer and gameState.session then
                    networkManager.sendPlayerAction(gameState.session, "move", {
                        playerId = player.playerId,
                        direction = -1,
                        x = player.x,
                        y = player.y,
                        timestamp = system.getTimer()
                    })
                end
            elseif event.keyName == "right" then
                player:move(1)
                if gameState.isMultiplayer and gameState.session then
                    networkManager.sendPlayerAction(gameState.session, "move", {
                        playerId = player.playerId,
                        direction = 1,
                        x = player.x,
                        y = player.y,
                        timestamp = system.getTimer()
                    })
                end
            elseif event.keyName == "x" then
                -- Use power-up/weapon
                if #player.powerUps > 0 then
                    local powerUp = table.remove(player.powerUps, 1)
                    if powerUp.type == "lightning" then
                        local weapon = PowerUp.createWeapon("lightning", player.x + 50, player.y, 1)
                        sceneGroup:insert(weapon)
                        
                        if gameState.isMultiplayer and gameState.session then
                            networkManager.sendWeaponUsed(gameState.session, "lightning", {
                                playerId = player.playerId,
                                x = player.x + 50,
                                y = player.y,
                                target = 1,
                                timestamp = system.getTimer()
                            })
                        end
                    end
                end
            end
        end
    end
    
    Runtime:addEventListener("key", onKeyEvent)
    
    -- Touch controls for mobile
    local function onTouch(event)
        if event.phase == "began" then
            local player = players[1]
            
            if event.y < display.contentHeight / 2 then
                player:jump()
                if gameState.isMultiplayer and gameState.session then
                    networkManager.sendPlayerAction(gameState.session, "jump", {
                        playerId = player.playerId,
                        x = player.x,
                        y = player.y,
                        timestamp = system.getTimer()
                    })
                end
            else
                player:slide()
                if gameState.isMultiplayer and gameState.session then
                    networkManager.sendPlayerAction(gameState.session, "slide", {
                        playerId = player.playerId,
                        x = player.x,
                        y = player.y,
                        timestamp = system.getTimer()
                    })
                end
            end
        end
    end
    
    Runtime:addEventListener("touch", onTouch)
end

-- Network event handlers
local function onPlayerAction(action, data)
    -- Find the player by ID
    local targetPlayer = nil
    for _, player in ipairs(players) do
        if player.playerId == data.playerId then
            targetPlayer = player
            break
        end
    end
    
    if targetPlayer then
        if action == "jump" then
            targetPlayer:jump()
        elseif action == "slide" then
            targetPlayer:slide()
        elseif action == "move" then
            targetPlayer:move(data.direction)
        end
    end
end

local function onPowerUpUsed(powerUpType, data)
    -- Apply power-up effects to the appropriate player
    local targetPlayer = nil
    for _, player in ipairs(players) do
        if player.playerId == data.playerId then
            targetPlayer = player
            break
        end
    end
    
    if targetPlayer then
        -- Apply power-up effect
        PowerUp.applyPowerUp(targetPlayer, powerUpType, data)
    end
end

local function onWeaponUsed(weaponType, data)
    -- Create weapon effect at specified position
    local weapon = PowerUp.createWeapon(weaponType, data.x, data.y, data.target)
    sceneGroup:insert(weapon)
end

-- Game loop
local function gameLoop()
    if gameState.isRunning then
        -- Update camera
        camera.update()
        
        -- Update players
        for i = 1, #players do
            local player = players[i]
            
            -- Apply conveyor belt effects
            if player.onConveyor then
                local vx, vy = player:getLinearVelocity()
                player:setLinearVelocity(vx + player.conveyorSpeed, vy)
            end
            
            -- Apply hazard effects
            if player.inHazard and player.hazardSlowFactor then
                local vx, vy = player:getLinearVelocity()
                player:setLinearVelocity(vx * player.hazardSlowFactor, vy)
            end
            
            -- Check finish line
            if player.x >= gameState.finishLine.x and not player.hasFinished then
                player.hasFinished = true
                table.insert(gameState.finishedPlayers, player)
                
                -- Award points based on finish position
                local position = #gameState.finishedPlayers
                if position <= 4 then
                    player:addScore(gameConfig.FINISH_POINTS[position])
                end
                
                -- Check if race is over
                if #gameState.finishedPlayers >= #players then
                    gameState.isRunning = false
                    -- Transition to results scene
                    timer.performWithDelay(2000, function()
                        composer.gotoScene("scenes.results", {
                            effect = "slideLeft",
                            time = 300,
                            params = {
                                players = players,
                                raceTime = system.getTimer() - gameState.raceStartTime
                            }
                        })
                    end)
                end
            end
        end
        
        -- Clean up off-screen objects
        for i = #powerUps, 1, -1 do
            if powerUps[i].x < players[1].x - 500 then
                powerUps[i]:removeSelf()
                table.remove(powerUps, i)
            end
        end
    end
end

function scene:create(event)
    sceneGroup = self.view
    
    -- Get level and game mode parameters
    local params = event.params or {}
    local levelId = params.levelId or 1
    local gameMode = params.gameMode or "single"
    local selectedCharacters = params.selectedCharacters or {"runner"}
    local numPlayers = params.numPlayers or 1
    
    -- Set current level
    currentLevel = levelData.getLevelById(levelId)
    if not currentLevel then
        currentLevel = levelData.getLevelById(1) -- Fallback to first level
    end
    
    -- Setup multiplayer if needed
    if gameMode == "local_multiplayer" then
        gameState.isMultiplayer = true
        gameState.session = networkManager.createLocalMultiplayerSession(numPlayers)
        
        -- Register network event handlers
        networkManager.registerPlayerActionHandler(onPlayerAction)
        networkManager.registerPowerUpHandler(onPowerUpUsed)
        networkManager.registerWeaponHandler(onWeaponUsed)
    end
    
    -- Create background based on environment
    local effects = levelData.getEnvironmentalEffects(currentLevel.environment)
    local backgroundFile = string.format("backgrounds/%s.png", currentLevel.environment)
    local background = display.newImageRect(
        gameConfig.ASSETS.GRAPHICS .. backgroundFile,
        currentLevel.length * 1.5,
        display.contentHeight
    )
    background.anchorX = 0
    background.x = 0
    background.y = display.contentCenterY
    sceneGroup:insert(background)
    
    -- Generate level using new system
    generateLevel()
    
    -- Create players with selected characters
    for i = 1, numPlayers do
        local characterId = selectedCharacters[i] or selectedCharacters[1] or "runner"
        local character = characterData.getCharacterById(characterId)
        
        local player = Player.new(character, i)
        player.x = 100 + (i-1) * 50 -- Offset players slightly
        player.y = display.contentHeight - 150
        player.playerId = i
        player.characterData = character
        players[i] = player
        sceneGroup:insert(player)
        
        -- Apply character special abilities
        if character and character.special_ability then
            -- Initialize special ability cooldowns and effects
            player.specialAbility = character.special_ability
            player.abilityStats = character.stats
        end
    end
    
    -- Create UI
    local ui = display.newGroup()
    sceneGroup:insert(ui)
    
    -- Score display for each player
    local scoreDisplays = {}
    for i = 1, numPlayers do
        local scoreText = display.newText(ui, "P" .. i .. ": 0", 50, 30 + (i-1) * 30, native.systemFont, 20)
        scoreText:setFillColor(1, 1, 1)
        scoreDisplays[i] = scoreText
    end
    
    -- Level info display
    local levelInfo = display.newText(ui, currentLevel.name, display.contentCenterX, 30, native.systemFont, 24)
    levelInfo:setFillColor(1, 1, 0)
    
    -- Timer display
    local timerText = display.newText(ui, "Time: 0:00", display.contentWidth - 100, 30, native.systemFont, 20)
    timerText:setFillColor(1, 1, 1)
    
    -- Update UI elements
    local function updateUI()
        -- Update scores
        for i = 1, #players do
            if scoreDisplays[i] and players[i] then
                scoreDisplays[i].text = "P" .. i .. ": " .. (players[i].score or 0)
            end
        end
        
        -- Update timer
        if gameState.isRunning then
            local elapsed = (system.getTimer() - gameState.raceStartTime) / 1000
            local minutes = math.floor(elapsed / 60)
            local seconds = math.floor(elapsed % 60)
            timerText.text = string.format("Time: %d:%02d", minutes, seconds)
        end
    end
    
    timer.performWithDelay(100, updateUI, 0)
    
    -- Setup controls
    setupControls()
    
    -- Start game loop
    Runtime:addEventListener("enterFrame", gameLoop)
    
    -- Apply environmental effects
    if effects then
        -- Add particle effects (placeholder)
        -- for _, particle in ipairs(effects.particles) do
        --     -- Create particle system
        -- end
        
        -- Add ambient sound
        -- if effects.ambient_sound then
        --     audio.play(audio.loadSound(effects.ambient_sound), {loops = -1, channel = 2})
        -- end
    end
end

function scene:show(event)
    local sceneGroup = self.view
    local phase = event.phase
    
    if phase == "will" then
        -- Scene is about to appear    elseif phase == "did" then
        -- Scene is now on screen
        gameState.isRunning = true
        gameState.raceStartTime = system.getTimer()
        
        -- Get level theme and play appropriate background music
        local currentLevel = event.params and event.params.levelId or 1
        local levelInfo = levelData.getLevelInfo(currentLevel)
        local musicTheme = levelInfo.theme or "forest"
        
        soundManager.playMusic(musicTheme .. "_theme", {
            loops = -1,
            volume = 0.6,
            fadein = 500
        })
        
        -- Countdown with sound effects
        local countdown = display.newText(sceneGroup, "3", display.contentCenterX, display.contentCenterY, native.systemFont, 72)
        countdown:setFillColor(1, 1, 0)
        
        soundManager.playSound("countdown")
        
        local function countdownSequence()
            countdown.text = "2"
            soundManager.playSound("countdown")
            timer.performWithDelay(1000, function()
                countdown.text = "1"
                soundManager.playSound("countdown")
                timer.performWithDelay(1000, function()
                    countdown.text = "GO!"
                    soundManager.playSound("race_start")
                    timer.performWithDelay(1000, function()
                        countdown:removeSelf()
                    end)
                end)
            end)
        end
        
        timer.performWithDelay(1000, countdownSequence)
    end
end

function scene:hide(event)
    local sceneGroup = self.view
    local phase = event.phase
    
    if phase == "will" then
        -- Scene is about to move off screen
        gameState.isRunning = false
    elseif phase == "did" then
        -- Scene is now off screen
    end
end

function scene:destroy(event)
    local sceneGroup = self.view
    
    -- Clean up
    Runtime:removeEventListener("enterFrame", gameLoop)
    
    -- Clean up players
    for i = 1, #players do
        players[i]:cleanup()
    end
    
    players = {}
    platforms = {}
    obstacles = {}
    powerUps = {}
end

-- Scene event listeners
scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)

return scene