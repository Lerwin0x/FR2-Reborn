-- objects/platform.lua - Platform System for Fun Run 2
-----------------------------------------------------------------------------------------

local physics = require("physics")
local gameConfig = require("config.game_config")

local Platform = {}

function Platform.new(x, y, width, height, platformType)
    platformType = platformType or "standard"
    width = width or 200
    height = height or 20
    
    local platform = display.newImageRect(
        gameConfig.ASSETS.GRAPHICS .. "platforms/" .. platformType .. ".png",
        width, height
    )
    
    platform.x = x or 0
    platform.y = y or 0
    platform.platformType = platformType
    platform.isGround = true
    platform.isPlatform = true
    
    -- Physics body
    physics.addBody(platform, "static")
    
    return platform
end

-- Moving platform
function Platform.newMoving(x, y, width, height, moveDistance, moveTime, moveDirection)
    local platform = Platform.new(x, y, width, height, "moving")
    
    moveDistance = moveDistance or 200
    moveTime = moveTime or 3000
    moveDirection = moveDirection or "horizontal" -- "horizontal" or "vertical"
    
    platform.isMoving = true
    platform.startX = x
    platform.startY = y
    
    local function movePlatform()
        local targetX = platform.startX
        local targetY = platform.startY
        
        if moveDirection == "horizontal" then
            targetX = platform.startX + moveDistance
        else
            targetY = platform.startY + moveDistance
        end
        
        transition.to(platform, {
            x = targetX,
            y = targetY,
            time = moveTime,
            transition = easing.inOutSine,
            onComplete = function()
                transition.to(platform, {
                    x = platform.startX,
                    y = platform.startY,
                    time = moveTime,
                    transition = easing.inOutSine,
                    onComplete = movePlatform
                })
            end
        })
    end
    
    movePlatform()
    
    return platform
end

-- Breakable platform
function Platform.newBreakable(x, y, width, height, breakDelay)
    local platform = Platform.new(x, y, width, height, "breakable")
    
    breakDelay = breakDelay or 1000
    platform.isBreakable = true
    platform.isBroken = false
    
    local function onCollision(event)
        if event.phase == "began" and event.other.playerId and not platform.isBroken then
            -- Start breaking sequence
            platform.isBroken = true
            
            -- Visual feedback
            transition.to(platform, {
                alpha = 0.5,
                time = 200,
                iterations = 5,
                transition = easing.inOutSine
            })
            
            -- Break after delay
            timer.performWithDelay(breakDelay, function()
                -- Create breaking particles
                for i = 1, 8 do
                    local particle = display.newRect(
                        platform.x + math.random(-platform.width/2, platform.width/2),
                        platform.y + math.random(-platform.height/2, platform.height/2),
                        5, 5
                    )
                    particle:setFillColor(0.6, 0.4, 0.2) -- Brown color
                    
                    -- Physics for falling particles
                    physics.addBody(particle, "dynamic")
                    particle:applyLinearImpulse(
                        math.random(-0.1, 0.1),
                        math.random(-0.1, 0)
                    )
                    
                    -- Remove particle after 2 seconds
                    timer.performWithDelay(2000, function()
                        if particle.removeSelf then
                            particle:removeSelf()
                        end
                    end)
                end
                
                -- Remove platform
                platform:removeSelf()
            end)
        end
    end
    
    platform.collision = onCollision
    platform:addEventListener("collision", platform)
    
    return platform
end

-- Jump pad platform
function Platform.newJumpPad(x, y, width, height, jumpForce)
    local platform = Platform.new(x, y, width, height, "jump_pad")
    
    jumpForce = jumpForce or -600
    platform.isJumpPad = true
    
    local function onCollision(event)
        if event.phase == "began" and event.other.playerId then
            local player = event.other
            
            -- Apply jump force
            player:setLinearVelocity(player.velocity.x, 0)
            player:applyLinearImpulse(0, jumpForce)
            
            -- Visual effect
            platform:setSequence("activate")
            platform:play()
            
            -- Sound effect
            -- soundManager.playSound("jump_pad")
            
            -- Reset animation after short delay
            timer.performWithDelay(300, function()
                platform:setSequence("idle")
                platform:play()
            end)
        end
    end
    
    platform.collision = onCollision
    platform:addEventListener("collision", platform)
    
    return platform
end

-- Conveyor belt platform
function Platform.newConveyor(x, y, width, height, beltSpeed, direction)
    local platform = Platform.new(x, y, width, height, "conveyor")
    
    beltSpeed = beltSpeed or 100
    direction = direction or 1 -- 1 for right, -1 for left
    platform.isConveyor = true
    platform.beltSpeed = beltSpeed * direction
    
    local function onCollision(event)
        if event.phase == "began" and event.other.playerId then
            local player = event.other
            player.onConveyor = true
            player.conveyorSpeed = platform.beltSpeed
        elseif event.phase == "ended" and event.other.playerId then
            local player = event.other
            player.onConveyor = false
            player.conveyorSpeed = 0
        end
    end
    
    platform.collision = onCollision
    platform:addEventListener("collision", platform)
    
    return platform
end

-- Ice platform (slippery)
function Platform.newIce(x, y, width, height)
    local platform = Platform.new(x, y, width, height, "ice")
    
    platform.isIce = true
    
    -- Override physics properties for slippery effect
    physics.removeBody(platform)
    physics.addBody(platform, "static", {friction = 0.1})
    
    return platform
end

-- Platform factory function
function Platform.create(platformData)
    local pType = platformData.type or "standard"
    local x = platformData.x or 0
    local y = platformData.y or 0
    local width = platformData.width or 200
    local height = platformData.height or 20
    
    if pType == "moving" then
        return Platform.newMoving(
            x, y, width, height,
            platformData.moveDistance,
            platformData.moveTime,
            platformData.moveDirection
        )
    elseif pType == "breakable" then
        return Platform.newBreakable(x, y, width, height, platformData.breakDelay)
    elseif pType == "jump_pad" then
        return Platform.newJumpPad(x, y, width, height, platformData.jumpForce)
    elseif pType == "conveyor" then
        return Platform.newConveyor(x, y, width, height, platformData.beltSpeed, platformData.direction)
    elseif pType == "ice" then
        return Platform.newIce(x, y, width, height)
    else
        return Platform.new(x, y, width, height, pType)
    end
end

return Platform