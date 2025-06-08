-- utils/animation_manager.lua - Animation System for Fun Run 2
-----------------------------------------------------------------------------------------

local M = {}

-- Animation sequences storage
local animations = {}

function M.setupPlayerAnimations(player, characterId)
    characterId = characterId or "default"
    
    local animData = {
        idle = {
            frames = {"idle_01.png", "idle_02.png", "idle_03.png", "idle_04.png"},
            time = 800,
            loopCount = 0
        },
        run = {
            frames = {"run_01.png", "run_02.png", "run_03.png", "run_04.png", "run_05.png", "run_06.png"},
            time = 600,
            loopCount = 0
        },
        jump = {
            frames = {"jump_01.png", "jump_02.png", "jump_03.png"},
            time = 400,
            loopCount = 1
        },
        double_jump = {
            frames = {"double_jump_01.png", "double_jump_02.png", "double_jump_03.png"},
            time = 300,
            loopCount = 1
        },
        fall = {
            frames = {"fall_01.png", "fall_02.png"},
            time = 200,
            loopCount = 0
        },
        slide = {
            frames = {"slide_01.png", "slide_02.png", "slide_03.png"},
            time = 300,
            loopCount = 0
        },
        celebrate = {
            frames = {"celebrate_01.png", "celebrate_02.png", "celebrate_03.png", "celebrate_04.png"},
            time = 1000,
            loopCount = 3
        }
    }
    
    -- Create sprite sheets for each animation
    local playerAnimations = {}
    
    for animName, animInfo in pairs(animData) do
        local imageSheet = graphics.newImageSheet(
            "assets/graphics/characters/" .. characterId .. "/" .. animName .. ".png",
            {
                width = 64,
                height = 64,
                numFrames = #animInfo.frames
            }
        )
        
        local sequenceData = {
            name = animName,
            sheet = imageSheet,
            start = 1,
            count = #animInfo.frames,
            time = animInfo.time,
            loopCount = animInfo.loopCount
        }
        
        playerAnimations[animName] = sequenceData
    end
    
    -- Store animations for this player
    animations[player] = {
        sequences = playerAnimations,
        currentAnimation = nil,
        sprite = nil
    }
    
    return playerAnimations
end

function M.playAnimation(player, animationName)
    if not animations[player] then
        print("Warning: No animations found for player")
        return
    end
    
    local playerAnim = animations[player]
    
    -- Don't restart the same animation
    if playerAnim.currentAnimation == animationName then
        return
    end
    
    -- Remove existing sprite if any
    if playerAnim.sprite then
        playerAnim.sprite:removeSelf()
        playerAnim.sprite = nil
    end
    
    -- Create new sprite with animation
    local sequence = playerAnim.sequences[animationName]
    if sequence then
        playerAnim.sprite = display.newSprite(sequence.sheet, sequence)
        playerAnim.sprite.x = player.x
        playerAnim.sprite.y = player.y
        playerAnim.sprite.xScale = player.xScale or 1
        playerAnim.sprite.yScale = player.yScale or 1
        
        -- Hide the original player image and show animated sprite
        player.isVisible = false
        playerAnim.sprite:play()
        
        playerAnim.currentAnimation = animationName
        
        -- Update sprite position with player
        local function updateSpritePosition()
            if playerAnim.sprite and player.x then
                playerAnim.sprite.x = player.x
                playerAnim.sprite.y = player.y
                playerAnim.sprite.xScale = player.xScale or 1
            end
        end
        
        -- Remove old listener if exists
        if playerAnim.updateListener then
            Runtime:removeEventListener("enterFrame", playerAnim.updateListener)
        end
        
        playerAnim.updateListener = updateSpritePosition
        Runtime:addEventListener("enterFrame", updateSpritePosition)
    else
        print("Warning: Animation '" .. animationName .. "' not found")
    end
end

function M.stopAnimation(player)
    if animations[player] and animations[player].sprite then
        animations[player].sprite:pause()
    end
end

function M.resumeAnimation(player)
    if animations[player] and animations[player].sprite then
        animations[player].sprite:play()
    end
end

function M.cleanupAnimations(player)
    if animations[player] then
        if animations[player].sprite then
            animations[player].sprite:removeSelf()
        end
        if animations[player].updateListener then
            Runtime:removeEventListener("enterFrame", animations[player].updateListener)
        end
        animations[player] = nil
    end
    
    -- Show original player image
    if player.isVisible ~= nil then
        player.isVisible = true
    end
end

-- Particle effects for power-ups and actions
function M.createParticleEffect(x, y, effectType)
    local effect = display.newGroup()
    effect.x, effect.y = x, y
    
    if effectType == "speed_boost" then
        -- Speed boost particles
        for i = 1, 10 do
            local particle = display.newCircle(effect, 0, 0, math.random(2, 5))
            particle:setFillColor(1, 1, 0) -- Yellow
            particle.alpha = 0.8
            
            local angle = math.random() * 360
            local distance = math.random(20, 50)
            local endX = math.cos(math.rad(angle)) * distance
            local endY = math.sin(math.rad(angle)) * distance
            
            transition.to(particle, {
                x = endX,
                y = endY,
                alpha = 0,
                time = 1000,
                onComplete = function()
                    particle:removeSelf()
                end
            })
        end
    elseif effectType == "lightning" then
        -- Lightning effect
        for i = 1, 15 do
            local particle = display.newRect(effect, 0, 0, math.random(2, 4), math.random(2, 4))
            particle:setFillColor(0.8, 0.8, 1) -- Light blue
            particle.alpha = 1
            
            local endX = math.random(-30, 30)
            local endY = math.random(-30, 30)
            
            transition.to(particle, {
                x = endX,
                y = endY,
                alpha = 0,
                rotation = math.random(0, 360),
                time = 500,
                onComplete = function()
                    particle:removeSelf()
                end
            })
        end
    end
    
    -- Clean up effect group after all particles are done
    timer.performWithDelay(1500, function()
        if effect.removeSelf then
            effect:removeSelf()
        end
    end)
    
    return effect
end

return M