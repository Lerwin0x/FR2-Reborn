-- objects/player.lua - Enhanced Player Object for Fun Run 2
-----------------------------------------------------------------------------------------

local physics = require("physics")
local gameConfig = require("config.game_config")
local animationManager = require("utils.animation_manager")
local soundManager = require("utils.sound_manager")

local Player = {}

function Player.new(characterId, playerId)
    characterId = characterId or "default"
    playerId = playerId or 1
    
    -- Create player sprite
    local player = display.newImageRect(
        gameConfig.ASSETS.GRAPHICS .. "characters/" .. characterId .. ".png", 
        64, 64
    )
    
    -- Player properties
    player.characterId = characterId
    player.playerId = playerId
    player.isGrounded = false
    player.canDoubleJump = true
    player.isSliding = false
    player.isInvincible = false
    player.powerUps = {}
    player.score = 0
    player.velocity = {x = 0, y = 0}
    player.facingDirection = 1 -- 1 for right, -1 for left
    
    -- Physics body
    physics.addBody(player, "dynamic", {
        density = gameConfig.PLAYER_DENSITY,
        friction = gameConfig.PLAYER_FRICTION,
        bounce = gameConfig.PLAYER_BOUNCE,
        box = {
            halfWidth = 25,
            halfHeight = 30,
            x = 0,
            y = 0
        }
    })
    
    player.isFixedRotation = true
    player.isSensor = false
    
    -- Animation setup
    player.animations = animationManager.setupPlayerAnimations(player, characterId)
    
    -- Movement methods    function player:jump()
        if self.isGrounded then
            self:setLinearVelocity(self.velocity.x, 0)
            self:applyLinearImpulse(0, gameConfig.JUMP_FORCE)
            self.isGrounded = false
            self.canDoubleJump = true
            animationManager.playAnimation(self, "jump")
            soundManager.playSound("jump")
        elseif self.canDoubleJump then
            self:setLinearVelocity(self.velocity.x, 0)
            self:applyLinearImpulse(0, gameConfig.DOUBLE_JUMP_FORCE)
            self.canDoubleJump = false
            animationManager.playAnimation(self, "double_jump")
            soundManager.playSound("double_jump")
        end
    end
      function player:slide()
        if self.isGrounded and not self.isSliding then
            self.isSliding = true
            self.isSensor = true -- Make player pass through some obstacles while sliding
            
            soundManager.playSound("slide")
            
            -- Change collision box for sliding
            physics.removeBody(self)
            physics.addBody(self, "dynamic", {
                density = gameConfig.PLAYER_DENSITY,
                friction = gameConfig.PLAYER_FRICTION,
                bounce = gameConfig.PLAYER_BOUNCE,
                box = {
                    halfWidth = 30,
                    halfHeight = 15,
                    x = 0,
                    y = 15
                }
            })
            
            animationManager.playAnimation(self, "slide")
            
            -- End slide after duration
            timer.performWithDelay(gameConfig.SLIDE_DURATION, function()
                self:endSlide()
            end)
        end
    end
    
    function player:endSlide()
        if self.isSliding then
            self.isSliding = false
            self.isSensor = false
            
            -- Restore normal collision box
            physics.removeBody(self)
            physics.addBody(self, "dynamic", {
                density = gameConfig.PLAYER_DENSITY,
                friction = gameConfig.PLAYER_FRICTION,
                bounce = gameConfig.PLAYER_BOUNCE,
                box = {
                    halfWidth = 25,
                    halfHeight = 30,
                    x = 0,
                    y = 0
                }
            })
            
            if self.isGrounded then
                animationManager.playAnimation(self, "run")
            end
        end
    end
    
    function player:setDirection(direction)
        if direction ~= self.facingDirection then
            self.facingDirection = direction
            self.xScale = direction
        end
    end
    
    function player:move(direction)
        direction = direction or 1
        self:setDirection(direction)
        
        local vx, vy = self:getLinearVelocity()
        self:setLinearVelocity(gameConfig.PLAYER_SPEED * direction, vy)
        self.velocity.x = gameConfig.PLAYER_SPEED * direction
        
        if self.isGrounded and not self.isSliding then
            animationManager.playAnimation(self, "run")
        end
    end
      function player:applyPowerUp(powerUpType)
        table.insert(self.powerUps, {
            type = powerUpType,
            startTime = system.getTimer()
        })
        
        soundManager.playSound("powerup_use")
        
        if powerUpType == "speed_boost" then
            self:speedBoost()
        elseif powerUpType == "invincibility" then
            self:makeInvincible()
        elseif powerUpType == "magnet" then
            self:activateMagnet()
        end
    end
    
    function player:speedBoost()
        local originalSpeed = gameConfig.PLAYER_SPEED
        gameConfig.PLAYER_SPEED = originalSpeed * 1.5
        
        timer.performWithDelay(3000, function()
            gameConfig.PLAYER_SPEED = originalSpeed
        end)
    end
    
    function player:makeInvincible()
        self.isInvincible = true
        
        -- Visual feedback for invincibility
        local function blink()
            transition.to(self, {alpha = 0.5, time = 200, onComplete = function()
                transition.to(self, {alpha = 1.0, time = 200})
            end})
        end
        
        local blinkTimer = timer.performWithDelay(400, blink, 0)
        
        timer.performWithDelay(gameConfig.INVINCIBILITY_DURATION, function()
            self.isInvincible = false
            timer.cancel(blinkTimer)
            self.alpha = 1.0
        end)
    end
      function player:takeDamage()
        if not self.isInvincible then
            self:makeInvincible()
            soundManager.playSound("obstacle_hit")
            -- Apply knockback
            self:applyLinearImpulse(-50 * self.facingDirection, -100)
            self.score = self.score + gameConfig.TRAP_HIT_PENALTY
        end
    end
    
    function player:addScore(points)
        self.score = self.score + points
    end
    
    function player:cleanup()
        if self.animations then
            animationManager.cleanupAnimations(self)
        end
        if self.removeSelf then
            self:removeSelf()
        end
    end
    
    -- Ground detection
    local function onCollision(event)
        if event.phase == "began" then
            if event.other.isGround then
                player.isGrounded = true
                player.canDoubleJump = true
                if not player.isSliding then
                    animationManager.playAnimation(player, "run")
                end
            elseif event.other.isPowerUp then
                -- Handle power-up collection
                event.other:collect(player)
            elseif event.other.isObstacle then
                -- Handle obstacle collision
                if not player.isSliding or not event.other.canSlideUnder then
                    player:takeDamage()
                end
            end
        elseif event.phase == "ended" then
            if event.other.isGround then
                player.isGrounded = false
                animationManager.playAnimation(player, "fall")
            end
        end
    end
    
    player.collision = onCollision
    player:addEventListener("collision", player)
    
    return player
end

return Player