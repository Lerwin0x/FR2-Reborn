-- config/character_data.lua - Character Configuration for Fun Run 2
-----------------------------------------------------------------------------------------

local M = {}

-- Character definitions with complete data
M.CHARACTERS = {
    {
        id = "default",
        name = "Runner",
        description = "The classic Fun Run character. Balanced stats for all situations.",
        sprite = "characters/default.png",
        unlocked = true,
        price = 0,
        category = "starter",
        stats = {
            speed = 100,
            jump = 100,
            agility = 100,
            luck = 100
        },
        specialAbility = {
            name = "Balanced Runner",
            description = "No special bonuses, but well-rounded performance",
            cooldown = 0,
            effect = "none"
        },
        animations = {
            idle = {
                frames = {"default_idle_01.png", "default_idle_02.png", "default_idle_03.png", "default_idle_04.png"},
                time = 800,
                loopCount = 0
            },
            run = {
                frames = {"default_run_01.png", "default_run_02.png", "default_run_03.png", "default_run_04.png", "default_run_05.png", "default_run_06.png"},
                time = 600,
                loopCount = 0
            },
            jump = {
                frames = {"default_jump_01.png", "default_jump_02.png", "default_jump_03.png"},
                time = 400,
                loopCount = 1
            },
            double_jump = {
                frames = {"default_djump_01.png", "default_djump_02.png", "default_djump_03.png"},
                time = 300,
                loopCount = 1
            },
            slide = {
                frames = {"default_slide_01.png", "default_slide_02.png"},
                time = 200,
                loopCount = 0
            },
            fall = {
                frames = {"default_fall_01.png", "default_fall_02.png"},
                time = 400,
                loopCount = 0
            }
        },
        sounds = {
            jump = "default_jump.wav",
            slide = "default_slide.wav",
            damage = "default_damage.wav"
        }
    },
    
    {
        id = "ninja",
        name = "Shadow Ninja",
        description = "Swift and silent. Increased jump height and faster movement.",
        sprite = "characters/ninja.png",
        unlocked = false,
        price = 1000,
        category = "premium",
        stats = {
            speed = 120,
            jump = 130,
            agility = 140,
            luck = 80
        },
        specialAbility = {
            name = "Shadow Dash",
            description = "Briefly become invisible and move through obstacles",
            cooldown = 15000,
            effect = "invisibility",
            duration = 2000
        },
        animations = {
            idle = {
                frames = {"ninja_idle_01.png", "ninja_idle_02.png", "ninja_idle_03.png", "ninja_idle_04.png"},
                time = 600,
                loopCount = 0
            },
            run = {
                frames = {"ninja_run_01.png", "ninja_run_02.png", "ninja_run_03.png", "ninja_run_04.png", "ninja_run_05.png", "ninja_run_06.png"},
                time = 500,
                loopCount = 0
            },
            jump = {
                frames = {"ninja_jump_01.png", "ninja_jump_02.png", "ninja_jump_03.png"},
                time = 350,
                loopCount = 1
            },
            double_jump = {
                frames = {"ninja_djump_01.png", "ninja_djump_02.png", "ninja_djump_03.png"},
                time = 250,
                loopCount = 1
            },
            slide = {
                frames = {"ninja_slide_01.png", "ninja_slide_02.png"},
                time = 150,
                loopCount = 0
            },
            fall = {
                frames = {"ninja_fall_01.png", "ninja_fall_02.png"},
                time = 300,
                loopCount = 0
            }
        },
        sounds = {
            jump = "ninja_jump.wav",
            slide = "ninja_slide.wav",
            damage = "ninja_damage.wav",
            ability = "ninja_shadow.wav"
        }
    },
    
    {
        id = "robot",
        name = "Cyber Bot",
        description = "Mechanical precision. Enhanced power-up effects and electric abilities.",
        sprite = "characters/robot.png",
        unlocked = false,
        price = 2500,
        category = "premium",
        stats = {
            speed = 90,
            jump = 90,
            agility = 70,
            luck = 150
        },
        specialAbility = {
            name = "Electric Surge",
            description = "Generate an electric field that destroys nearby obstacles",
            cooldown = 20000,
            effect = "electric_field",
            duration = 3000
        },
        animations = {
            idle = {
                frames = {"robot_idle_01.png", "robot_idle_02.png", "robot_idle_03.png", "robot_idle_04.png"},
                time = 1000,
                loopCount = 0
            },
            run = {
                frames = {"robot_run_01.png", "robot_run_02.png", "robot_run_03.png", "robot_run_04.png", "robot_run_05.png", "robot_run_06.png"},
                time = 700,
                loopCount = 0
            },
            jump = {
                frames = {"robot_jump_01.png", "robot_jump_02.png", "robot_jump_03.png"},
                time = 500,
                loopCount = 1
            },
            double_jump = {
                frames = {"robot_djump_01.png", "robot_djump_02.png", "robot_djump_03.png"},
                time = 400,
                loopCount = 1
            },
            slide = {
                frames = {"robot_slide_01.png", "robot_slide_02.png"},
                time = 250,
                loopCount = 0
            },
            fall = {
                frames = {"robot_fall_01.png", "robot_fall_02.png"},
                time = 500,
                loopCount = 0
            }
        },
        sounds = {
            jump = "robot_jump.wav",
            slide = "robot_slide.wav",
            damage = "robot_damage.wav",
            ability = "robot_electric.wav"
        }
    },
    
    {
        id = "pirate",
        name = "Captain Pegleg",
        description = "Arrr! Treasure hunter with a cannon arm and seafaring skills.",
        sprite = "characters/pirate.png",
        unlocked = false,
        price = 5000,
        category = "legendary",
        stats = {
            speed = 110,
            jump = 80,
            agility = 90,
            luck = 130
        },
        specialAbility = {
            name = "Cannon Blast",
            description = "Fire a powerful cannonball that destroys obstacles and damages players",
            cooldown = 25000,
            effect = "cannon_blast",
            duration = 1000
        },
        animations = {
            idle = {
                frames = {"pirate_idle_01.png", "pirate_idle_02.png", "pirate_idle_03.png", "pirate_idle_04.png"},
                time = 900,
                loopCount = 0
            },
            run = {
                frames = {"pirate_run_01.png", "pirate_run_02.png", "pirate_run_03.png", "pirate_run_04.png", "pirate_run_05.png", "pirate_run_06.png"},
                time = 650,
                loopCount = 0
            },
            jump = {
                frames = {"pirate_jump_01.png", "pirate_jump_02.png", "pirate_jump_03.png"},
                time = 450,
                loopCount = 1
            },
            double_jump = {
                frames = {"pirate_djump_01.png", "pirate_djump_02.png", "pirate_djump_03.png"},
                time = 350,
                loopCount = 1
            },
            slide = {
                frames = {"pirate_slide_01.png", "pirate_slide_02.png"},
                time = 200,
                loopCount = 0
            },
            fall = {
                frames = {"pirate_fall_01.png", "pirate_fall_02.png"},
                time = 400,
                loopCount = 0
            }
        },
        sounds = {
            jump = "pirate_jump.wav",
            slide = "pirate_slide.wav",
            damage = "pirate_damage.wav",
            ability = "pirate_cannon.wav"
        }
    },
    
    {
        id = "fairy",
        name = "Forest Sprite",
        description = "Magical creature with the ability to fly and create nature magic.",
        sprite = "characters/fairy.png",
        unlocked = false,
        price = 3500,
        category = "premium",
        stats = {
            speed = 85,
            jump = 160,
            agility = 150,
            luck = 105
        },
        specialAbility = {
            name = "Fairy Flight",
            description = "Gain the ability to fly for a short duration",
            cooldown = 18000,
            effect = "flight",
            duration = 4000
        },
        animations = {
            idle = {
                frames = {"fairy_idle_01.png", "fairy_idle_02.png", "fairy_idle_03.png", "fairy_idle_04.png"},
                time = 600,
                loopCount = 0
            },
            run = {
                frames = {"fairy_run_01.png", "fairy_run_02.png", "fairy_run_03.png", "fairy_run_04.png", "fairy_run_05.png", "fairy_run_06.png"},
                time = 550,
                loopCount = 0
            },
            jump = {
                frames = {"fairy_jump_01.png", "fairy_jump_02.png", "fairy_jump_03.png"},
                time = 300,
                loopCount = 1
            },
            double_jump = {
                frames = {"fairy_djump_01.png", "fairy_djump_02.png", "fairy_djump_03.png"},
                time = 200,
                loopCount = 1
            },
            slide = {
                frames = {"fairy_slide_01.png", "fairy_slide_02.png"},
                time = 180,
                loopCount = 0
            },
            fall = {
                frames = {"fairy_fall_01.png", "fairy_fall_02.png"},
                time = 350,
                loopCount = 0
            },
            fly = {
                frames = {"fairy_fly_01.png", "fairy_fly_02.png", "fairy_fly_03.png", "fairy_fly_04.png"},
                time = 400,
                loopCount = 0
            }
        },
        sounds = {
            jump = "fairy_jump.wav",
            slide = "fairy_slide.wav",
            damage = "fairy_damage.wav",
            ability = "fairy_magic.wav"
        }
    },
    
    {
        id = "viking",
        name = "Thunder Viking",
        description = "Mighty warrior with incredible strength and weather powers.",
        sprite = "characters/viking.png",
        unlocked = false,
        price = 4000,
        category = "legendary",
        stats = {
            speed = 95,
            jump = 110,
            agility = 70,
            luck = 125
        },
        specialAbility = {
            name = "Thunder Strike",
            description = "Call down lightning to stun all nearby players",
            cooldown = 22000,
            effect = "thunder_strike",
            duration = 2000
        },
        animations = {
            idle = {
                frames = {"viking_idle_01.png", "viking_idle_02.png", "viking_idle_03.png", "viking_idle_04.png"},
                time = 1000,
                loopCount = 0
            },
            run = {
                frames = {"viking_run_01.png", "viking_run_02.png", "viking_run_03.png", "viking_run_04.png", "viking_run_05.png", "viking_run_06.png"},
                time = 750,
                loopCount = 0
            },
            jump = {
                frames = {"viking_jump_01.png", "viking_jump_02.png", "viking_jump_03.png"},
                time = 500,
                loopCount = 1
            },
            double_jump = {
                frames = {"viking_djump_01.png", "viking_djump_02.png", "viking_djump_03.png"},
                time = 400,
                loopCount = 1
            },
            slide = {
                frames = {"viking_slide_01.png", "viking_slide_02.png"},
                time = 300,
                loopCount = 0
            },
            fall = {
                frames = {"viking_fall_01.png", "viking_fall_02.png"},
                time = 450,
                loopCount = 0
            }
        },
        sounds = {
            jump = "viking_jump.wav",
            slide = "viking_slide.wav",
            damage = "viking_damage.wav",
            ability = "viking_thunder.wav"
        }
    }
}

-- Character categories for organization
M.CATEGORIES = {
    {
        id = "starter",
        name = "Starter Characters",
        description = "Free characters available from the beginning"
    },
    {
        id = "premium",
        name = "Premium Characters", 
        description = "Special characters with unique abilities"
    },
    {
        id = "legendary",
        name = "Legendary Characters",
        description = "Rare and powerful characters with exceptional abilities"
    }
}

-- Character unlock requirements
M.UNLOCK_REQUIREMENTS = {
    ninja = {
        type = "coins",
        amount = 1000
    },
    robot = {
        type = "coins",
        amount = 2500
    },
    fairy = {
        type = "coins", 
        amount = 3500
    },
    viking = {
        type = "coins",
        amount = 4000
    },
    pirate = {
        type = "achievement",
        achievement = "treasure_hunter",
        fallback = {type = "coins", amount = 5000}
    }
}

-- Special ability effects data
M.ABILITIES = {
    invisibility = {
        effect = function(player)
            player.alpha = 0.3
            player.isInvisible = true
            player.isSensor = true -- Pass through obstacles
        end,
        cleanup = function(player)
            player.alpha = 1.0
            player.isInvisible = false
            player.isSensor = false
        end
    },
    
    electric_field = {
        effect = function(player)
            player.hasElectricField = true
            -- Create visual effect around player
            local field = display.newCircle(player.x, player.y, 80)
            field.alpha = 0.3
            field:setFillColor(0, 0.8, 1)
            player.electricField = field
        end,
        cleanup = function(player)
            player.hasElectricField = false
            if player.electricField then
                player.electricField:removeSelf()
                player.electricField = nil
            end
        end
    },
    
    flight = {
        effect = function(player)
            player.canFly = true
            player.gravity = 0
            physics.setGravity(0, 0) -- Temporarily disable gravity for this player
        end,
        cleanup = function(player)
            player.canFly = false
            player.gravity = nil
            physics.setGravity(0, 9.8) -- Restore normal gravity
        end
    },
    
    thunder_strike = {
        effect = function(player)
            -- Create thunder effect
            local thunder = display.newCircle(player.x, player.y, 200)
            thunder.alpha = 0.5
            thunder:setFillColor(1, 1, 0)
            
            -- Flash effect
            transition.to(thunder, {
                alpha = 0,
                time = 500,
                onComplete = function()
                    thunder:removeSelf()
                end
            })
        end,
        cleanup = function(player)
            -- Thunder strike is instant, no cleanup needed
        end
    },
    
    cannon_blast = {
        effect = function(player)
            -- Create cannonball projectile
            local cannonball = display.newCircle(player.x + 50, player.y, 15)
            cannonball:setFillColor(0.2, 0.2, 0.2)
            physics.addBody(cannonball, "dynamic")
            cannonball:setLinearVelocity(500, -100)
            
            -- Remove cannonball after 3 seconds
            timer.performWithDelay(3000, function()
                if cannonball.removeSelf then
                    cannonball:removeSelf()
                end
            end)
        end,
        cleanup = function(player)
            -- Cannon blast is projectile-based, no cleanup needed
        end
    }
}

-- Get character by ID
function M.getCharacter(characterId)
    for _, character in ipairs(M.CHARACTERS) do
        if character.id == characterId then
            return character
        end
    end
    return nil
end

-- Get characters by category
function M.getCharactersByCategory(categoryId)
    local characters = {}
    for _, character in ipairs(M.CHARACTERS) do
        if character.category == categoryId then
            table.insert(characters, character)
        end
    end
    return characters
end

-- Get unlocked characters
function M.getUnlockedCharacters(playerData)
    local unlockedChars = {}
    for _, character in ipairs(M.CHARACTERS) do
        if character.unlocked or M.isCharacterUnlocked(character.id, playerData) then
            table.insert(unlockedChars, character)
        end
    end
    return unlockedChars
end

-- Check if character is unlocked
function M.isCharacterUnlocked(characterId, playerData)
    local character = M.getCharacter(characterId)
    if not character then return false end
    
    if character.unlocked then return true end
    
    local requirement = M.UNLOCK_REQUIREMENTS[characterId]
    if not requirement then return false end
    
    if requirement.type == "coins" then
        return (playerData.coins or 0) >= requirement.amount
    elseif requirement.type == "achievement" then
        local hasAchievement = playerData.achievements and playerData.achievements[requirement.achievement]
        if hasAchievement then
            return true
        elseif requirement.fallback and requirement.fallback.type == "coins" then
            return (playerData.coins or 0) >= requirement.fallback.amount
        end
    end
    
    return false
end

-- Apply character stats to player
function M.applyCharacterStats(player, characterId)
    local character = M.getCharacter(characterId)
    if not character then return end
    
    local stats = character.stats
    player.speedMultiplier = stats.speed / 100
    player.jumpMultiplier = stats.jump / 100
    player.agilityMultiplier = stats.agility / 100
    player.luckMultiplier = stats.luck / 100
    
    -- Store character data on player
    player.characterData = character
    player.specialAbility = character.specialAbility
end

-- Activate special ability
function M.activateSpecialAbility(player)
    if not player.specialAbility or not player.characterData then
        return false
    end
    
    local ability = player.specialAbility
    local currentTime = system.getTimer()
    
    -- Check cooldown
    if player.lastAbilityUse and (currentTime - player.lastAbilityUse) < ability.cooldown then
        return false
    end
    
    -- Apply ability effect
    local abilityData = M.ABILITIES[ability.effect]
    if abilityData and abilityData.effect then
        abilityData.effect(player)
        
        -- Set cleanup timer
        if ability.duration and abilityData.cleanup then
            timer.performWithDelay(ability.duration, function()
                abilityData.cleanup(player)
            end)
        end
        
        player.lastAbilityUse = currentTime
        return true
    end
    
    return false
end

return M