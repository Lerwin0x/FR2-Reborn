-- objects/powerup.lua - Power-up System for Fun Run 2
-----------------------------------------------------------------------------------------

local physics = require("physics")
local gameConfig = require("config.game_config")
local animationManager = require("utils.animation_manager")
local soundManager = require("utils.sound_manager")

local PowerUp = {}

function PowerUp.new(powerUpType, x, y)
    powerUpType = powerUpType or "speed_boost"
    
    -- Create power-up sprite
    local powerUp = display.newImageRect(
        gameConfig.ASSETS.GRAPHICS .. "powerups/" .. powerUpType .. ".png",
        40, 40
    )
    
    powerUp.x = x or 0
    powerUp.y = y or 0
    powerUp.powerUpType = powerUpType
    powerUp.isPowerUp = true
    powerUp.isCollected = false
    
    -- Physics body (sensor)
    physics.addBody(powerUp, "kinematic", {isSensor = true})
    
    -- Floating animation
    local function floatAnimation()
        transition.to(powerUp, {
            y = powerUp.y - 10,
            time = 1000,
            transition = easing.inOutSine,
            onComplete = function()
                transition.to(powerUp, {
                    y = powerUp.y + 10,
                    time = 1000,
                    transition = easing.inOutSine,
                    onComplete = floatAnimation
                })
            end
        })
    end
    floatAnimation()
    
    -- Rotation animation
    transition.to(powerUp, {
        rotation = 360,
        time = 2000,
        iterations = -1,
        transition = easing.linear
    })
    
    -- Collection method
    function powerUp:collect(player)
        if self.isCollected then
            return
        end
        
        self.isCollected = true
        
        -- Apply power-up effect to player
        player:applyPowerUp(self.powerUpType)
        player:addScore(gameConfig.POWERUP_POINTS)
        
        -- Create collection effect
        animationManager.createParticleEffect(self.x, self.y, self.powerUpType)
        
        -- Play collection sound
        soundManager.playSound("powerup_collect")
        
        -- Remove power-up
        self:removeSelf()
    end
    
    return powerUp
end

-- Power-up spawning system
function PowerUp.spawnRandomPowerUp(x, y)
    local powerUpTypes = gameConfig.POWERUP_TYPES
    local randomType = powerUpTypes[math.random(1, #powerUpTypes)]
    return PowerUp.new(randomType, x, y)
end

-- Weapon power-ups (offensive items)
function PowerUp.createWeapon(weaponType, x, y, direction)
    weaponType = weaponType or "lightning"
    direction = direction or 1
    
    local weapon = display.newImageRect(
        gameConfig.ASSETS.GRAPHICS .. "weapons/" .. weaponType .. ".png",
        30, 30
    )
    
    weapon.x = x or 0
    weapon.y = y or 0
    weapon.weaponType = weaponType
    weapon.isWeapon = true
    weapon.direction = direction
    
    -- Physics body
    physics.addBody(weapon, "kinematic")
    weapon.isSensor = true
    
    if weaponType == "lightning" then
        -- Lightning bolt moves forward quickly
        weapon:setLinearVelocity(500 * direction, 0)
        
        -- Add electric effect
        weapon.electricEffect = animationManager.createParticleEffect(weapon.x, weapon.y, "lightning")
        
        -- Remove after 3 seconds
        timer.performWithDelay(3000, function()
            if weapon.removeSelf then
                weapon:removeSelf()
            end
        end)
        
    elseif weaponType == "bear_trap" then
        -- Bear trap stays in place
        weapon:setLinearVelocity(0, 0)
        weapon.isStationary = true
        
        -- Arm the trap after a short delay
        timer.performWithDelay(500, function()
            weapon.isArmed = true
            -- Visual indication that trap is armed
            weapon.alpha = 0.8
        end)
        
        -- Remove trap after 10 seconds
        timer.performWithDelay(10000, function()
            if weapon.removeSelf then
                weapon:removeSelf()
            end
        end)
        
    elseif weaponType == "punch" then
        -- Punch moves forward for a short distance
        weapon:setLinearVelocity(300 * direction, 0)
        
        -- Remove after 1 second
        timer.performWithDelay(1000, function()
            if weapon.removeSelf then
                weapon:removeSelf()
            end
        end)
    end
    
    -- Collision handling
    local function onCollision(event)
        if event.phase == "began" and event.other.playerId then
            local targetPlayer = event.other
            
            if weaponType == "lightning" then
                targetPlayer:takeDamage()
                animationManager.createParticleEffect(targetPlayer.x, targetPlayer.y, "lightning")
                weapon:removeSelf()
                
            elseif weaponType == "bear_trap" and weapon.isArmed then
                targetPlayer:takeDamage()
                -- Slow down the player
                local vx, vy = targetPlayer:getLinearVelocity()
                targetPlayer:setLinearVelocity(vx * 0.3, vy)
                weapon:removeSelf()
                
            elseif weaponType == "punch" then
                targetPlayer:takeDamage()
                -- Apply strong knockback
                targetPlayer:applyLinearImpulse(200 * direction, -100)
                weapon:removeSelf()
            end
        end
    end
    
    weapon.collision = onCollision
    weapon:addEventListener("collision", weapon)
    
    return weapon
end

-- Special power-up: Magnet (attracts nearby power-ups)
function PowerUp.createMagnetField(player)
    local magnetField = display.newCircle(player.x, player.y, 100)
    magnetField.alpha = 0.2
    magnetField:setFillColor(1, 1, 0) -- Yellow tint
    magnetField.player = player
    
    local function updateMagnetField()
        if player.x and magnetField.removeSelf then
            magnetField.x = player.x
            magnetField.y = player.y
            
            -- Find nearby power-ups and attract them
            -- This would require a reference to all active power-ups in the scene
        end
    end
    
    Runtime:addEventListener("enterFrame", updateMagnetField)
    
    -- Remove magnet field after 5 seconds
    timer.performWithDelay(5000, function()
        Runtime:removeEventListener("enterFrame", updateMagnetField)
        if magnetField.removeSelf then
            magnetField:removeSelf()
        end
    end)
    
    return magnetField
end

return PowerUp