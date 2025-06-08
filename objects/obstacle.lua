-- objects/obstacle.lua - Obstacle System for Fun Run 2
-----------------------------------------------------------------------------------------

local physics = require("physics")
local gameConfig = require("config.game_config")
local animationManager = require("utils.animation_manager")

local Obstacle = {}

function Obstacle.new(x, y, obstacleType)
    obstacleType = obstacleType or "spike"
    
    local obstacle = display.newImageRect(
        gameConfig.ASSETS.GRAPHICS .. "obstacles/" .. obstacleType .. ".png",
        40, 40
    )
    
    obstacle.x = x or 0
    obstacle.y = y or 0
    obstacle.obstacleType = obstacleType
    obstacle.isObstacle = true
    obstacle.canSlideUnder = false -- Can player slide under this obstacle?
    
    -- Different physics based on obstacle type
    if obstacleType == "spike" then
        physics.addBody(obstacle, "static", {isSensor = true})
        obstacle.damage = 1
        
    elseif obstacleType == "saw" then
        physics.addBody(obstacle, "static", {isSensor = true})
        obstacle.damage = 1
        obstacle.canSlideUnder = true
        
        -- Rotating animation
        transition.to(obstacle, {
            rotation = 360,
            time = 1000,
            iterations = -1,
            transition = easing.linear
        })
        
    elseif obstacleType == "wall" then
        physics.addBody(obstacle, "static")
        obstacle.damage = 1
        obstacle.canSlideUnder = false
        
    elseif obstacleType == "low_wall" then
        physics.addBody(obstacle, "static")
        obstacle.damage = 1
        obstacle.canSlideUnder = true
        
    elseif obstacleType == "fire" then
        physics.addBody(obstacle, "static", {isSensor = true})
        obstacle.damage = 1
        obstacle.canSlideUnder = true
        
        -- Fire animation effect
        obstacle.fireEffect = animationManager.createParticleEffect(obstacle.x, obstacle.y, "fire")
    end
    
    return obstacle
end

-- Moving obstacle (like moving saws)
function Obstacle.newMoving(x, y, obstacleType, moveDistance, moveTime, moveDirection)
    local obstacle = Obstacle.new(x, y, obstacleType)
    
    moveDistance = moveDistance or 150
    moveTime = moveTime or 2000
    moveDirection = moveDirection or "horizontal"
    
    obstacle.isMoving = true
    obstacle.startX = x
    obstacle.startY = y
    
    local function moveObstacle()
        local targetX = obstacle.startX
        local targetY = obstacle.startY
        
        if moveDirection == "horizontal" then
            targetX = obstacle.startX + moveDistance
        else
            targetY = obstacle.startY + moveDistance
        end
        
        transition.to(obstacle, {
            x = targetX,
            y = targetY,
            time = moveTime,
            transition = easing.inOutSine,
            onComplete = function()
                transition.to(obstacle, {
                    x = obstacle.startX,
                    y = obstacle.startY,
                    time = moveTime,
                    transition = easing.inOutSine,
                    onComplete = moveObstacle
                })
            end
        })
    end
    
    moveObstacle()
    
    return obstacle
end

-- Falling obstacle
function Obstacle.newFalling(x, y, obstacleType, triggerDistance)
    local obstacle = Obstacle.new(x, y, obstacleType)
    
    triggerDistance = triggerDistance or 100
    obstacle.isFalling = false
    obstacle.triggerDistance = triggerDistance
    obstacle.startY = y
    
    -- Create trigger area
    local trigger = display.newRect(x + triggerDistance, y, 20, 200)
    trigger.alpha = 0
    trigger.obstacle = obstacle
    physics.addBody(trigger, "static", {isSensor = true})
    
    local function onTriggerCollision(event)
        if event.phase == "began" and event.other.playerId and not obstacle.isFalling then
            obstacle.isFalling = true
            
            -- Remove static physics body and add dynamic
            physics.removeBody(obstacle)
            physics.addBody(obstacle, "dynamic")
            
            -- Remove trigger
            trigger:removeSelf()
            
            -- Remove obstacle after it falls off screen
            timer.performWithDelay(5000, function()
                if obstacle.removeSelf then
                    obstacle:removeSelf()
                end
            end)
        end
    end
    
    trigger.collision = onTriggerCollision
    trigger:addEventListener("collision", trigger)
    
    return obstacle
end

-- Timed obstacle (appears/disappears)
function Obstacle.newTimed(x, y, obstacleType, showTime, hideTime)
    local obstacle = Obstacle.new(x, y, obstacleType)
    
    showTime = showTime or 2000
    hideTime = hideTime or 1000
    obstacle.isTimed = true
    obstacle.isActive = true
    
    local function toggleObstacle()
        if obstacle.isActive then
            -- Hide obstacle
            obstacle.isActive = false
            obstacle.alpha = 0.3
            physics.removeBody(obstacle)
            
            timer.performWithDelay(hideTime, function()
                -- Show obstacle
                obstacle.isActive = true
                obstacle.alpha = 1.0
                
                if obstacle.obstacleType == "spike" then
                    physics.addBody(obstacle, "static", {isSensor = true})
                else
                    physics.addBody(obstacle, "static")
                end
                
                timer.performWithDelay(showTime, toggleObstacle)
            end)
        end
    end
    
    timer.performWithDelay(showTime, toggleObstacle)
    
    return obstacle
end

-- Projectile obstacle (shoots projectiles)
function Obstacle.newProjectile(x, y, direction, fireRate)
    local launcher = Obstacle.new(x, y, "launcher")
    
    direction = direction or 1 -- 1 for right, -1 for left
    fireRate = fireRate or 3000
    launcher.isProjectileLauncher = true
    launcher.direction = direction
    
    local function fireProjectile()
        local projectile = display.newImageRect(
            gameConfig.ASSETS.GRAPHICS .. "obstacles/projectile.png",
            20, 10
        )
        
        projectile.x = launcher.x + (30 * direction)
        projectile.y = launcher.y
        projectile.isObstacle = true
        projectile.damage = 1
        
        physics.addBody(projectile, "kinematic", {isSensor = true})
        projectile:setLinearVelocity(300 * direction, 0)
        
        -- Remove projectile after 5 seconds
        timer.performWithDelay(5000, function()
            if projectile.removeSelf then
                projectile:removeSelf()
            end
        end)
        
        -- Add collision detection
        local function onProjectileCollision(event)
            if event.phase == "began" and event.other.playerId then
                event.other:takeDamage()
                projectile:removeSelf()
            end
        end
        
        projectile.collision = onProjectileCollision
        projectile:addEventListener("collision", projectile)
    end
    
    -- Start firing projectiles
    timer.performWithDelay(fireRate, fireProjectile, 0)
    
    return launcher
end

-- Obstacle factory function
function Obstacle.create(obstacleData)
    local oType = obstacleData.type or "spike"
    local x = obstacleData.x or 0
    local y = obstacleData.y or 0
    
    if obstacleData.moving then
        return Obstacle.newMoving(
            x, y, oType,
            obstacleData.moveDistance,
            obstacleData.moveTime,
            obstacleData.moveDirection
        )
    elseif obstacleData.falling then
        return Obstacle.newFalling(x, y, oType, obstacleData.triggerDistance)
    elseif obstacleData.timed then
        return Obstacle.newTimed(x, y, oType, obstacleData.showTime, obstacleData.hideTime)
    elseif obstacleData.projectile then
        return Obstacle.newProjectile(x, y, obstacleData.direction, obstacleData.fireRate)
    else
        return Obstacle.new(x, y, oType)
    end
end

-- Environmental hazards
function Obstacle.createHazard(hazardType, x, y, width, height)
    local hazard = display.newRect(x, y, width, height)
    hazard:setFillColor(1, 0, 0, 0.3) -- Semi-transparent red
    hazard.hazardType = hazardType
    hazard.isHazard = true
    
    if hazardType == "lava" then
        physics.addBody(hazard, "static", {isSensor = true})
        hazard.damage = 2 -- More damage than regular obstacles
        
        -- Lava bubble effect
        local function createBubble()
            local bubble = display.newCircle(
                x + math.random(-width/2, width/2),
                y,
                math.random(3, 8)
            )
            bubble:setFillColor(1, 0.5, 0) -- Orange
            
            transition.to(bubble, {
                y = y - 50,
                alpha = 0,
                time = 2000,
                onComplete = function()
                    bubble:removeSelf()
                end
            })
        end
        
        timer.performWithDelay(500, createBubble, 0)
        
    elseif hazardType == "water" then
        physics.addBody(hazard, "static", {isSensor = true})
        hazard.damage = 0 -- Water doesn't damage, but slows down
        hazard.slowFactor = 0.5
        
    elseif hazardType == "quicksand" then
        physics.addBody(hazard, "static", {isSensor = true})
        hazard.damage = 0
        hazard.slowFactor = 0.3
        hazard.sinkRate = 50 -- Pixels per second
    end
    
    local function onHazardCollision(event)
        if event.phase == "began" and event.other.playerId then
            local player = event.other
            
            if hazardType == "lava" then
                player:takeDamage()
            elseif hazardType == "water" or hazardType == "quicksand" then
                player.inHazard = hazardType
                player.hazardSlowFactor = hazard.slowFactor
            end
        elseif event.phase == "ended" and event.other.playerId then
            local player = event.other
            player.inHazard = nil
            player.hazardSlowFactor = 1
        end
    end
    
    hazard.collision = onHazardCollision
    hazard:addEventListener("collision", hazard)
    
    return hazard
end

return Obstacle