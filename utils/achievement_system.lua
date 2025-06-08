-- utils/achievement_system.lua - Achievement System for Fun Run 2
-----------------------------------------------------------------------------------------

local gameConfig = require("config.game_config")
local saveSystem = require("utils.save_system")
local soundManager = require("utils.sound_manager")

local M = {}

-- Achievement definitions
M.ACHIEVEMENTS = {
    -- Racing achievements
    {
        id = "first_win",
        name = "First Victory",
        description = "Win your first race",
        icon = "achievements/first_win.png",
        requirement = {type = "wins", amount = 1},
        reward = {coins = 100, gems = 10},
        rarity = "common"
    },
    {
        id = "speedster",
        name = "Speedster",
        description = "Complete a level in under 60 seconds",
        icon = "achievements/speedster.png",
        requirement = {type = "fast_time", time = 60},
        reward = {coins = 250, gems = 15},
        rarity = "rare"
    },
    {
        id = "perfectionist",
        name = "Perfectionist",
        description = "Complete a level without taking damage",
        icon = "achievements/perfectionist.png",
        requirement = {type = "no_damage"},
        reward = {coins = 300, gems = 20},
        rarity = "rare"
    },
    {
        id = "marathon_runner",
        name = "Marathon Runner",
        description = "Complete 50 races",
        icon = "achievements/marathon.png",
        requirement = {type = "races_completed", amount = 50},
        reward = {coins = 500, gems = 25},
        rarity = "epic"
    },
    
    -- Collection achievements
    {
        id = "coin_collector",
        name = "Coin Collector",
        description = "Collect 1000 coins total",
        icon = "achievements/coin_collector.png",
        requirement = {type = "coins_collected", amount = 1000},
        reward = {coins = 200, gems = 15},
        rarity = "common"
    },
    {
        id = "power_hungry",
        name = "Power Hungry",
        description = "Use 100 power-ups",
        icon = "achievements/power_hungry.png",
        requirement = {type = "powerups_used", amount = 100},
        reward = {coins = 300, gems = 20},
        rarity = "rare"
    },
    {
        id = "lightning_master",
        name = "Lightning Master",
        description = "Hit opponents with lightning 25 times",
        icon = "achievements/lightning_master.png",
        requirement = {type = "lightning_hits", amount = 25},
        reward = {coins = 400, gems = 30},
        rarity = "epic"
    },
    
    -- Character achievements
    {
        id = "character_collector",
        name = "Character Collector",
        description = "Unlock 5 different characters",
        icon = "achievements/collector.png",
        requirement = {type = "characters_unlocked", amount = 5},
        reward = {coins = 500, gems = 50},
        rarity = "legendary"
    },
    {
        id = "ninja_master",
        name = "Ninja Master",
        description = "Win 10 races as Ninja",
        icon = "achievements/ninja_master.png",
        requirement = {type = "character_wins", character = "ninja", amount = 10},
        reward = {coins = 350, gems = 25},
        rarity = "epic"
    },
    
    -- Social achievements
    {
        id = "multiplayer_rookie",
        name = "Multiplayer Rookie",
        description = "Play 5 multiplayer races",
        icon = "achievements/multiplayer.png",
        requirement = {type = "multiplayer_races", amount = 5},
        reward = {coins = 200, gems = 15},
        rarity = "common"
    },
    {
        id = "social_butterfly",
        name = "Social Butterfly",
        description = "Win 20 multiplayer races",
        icon = "achievements/social.png",
        requirement = {type = "multiplayer_wins", amount = 20},
        reward = {coins = 750, gems = 75},
        rarity = "legendary"
    },
    
    -- Special achievements
    {
        id = "explorer",
        name = "Explorer",
        description = "Complete levels in all 4 worlds",
        icon = "achievements/explorer.png",
        requirement = {type = "worlds_completed", amount = 4},
        reward = {coins = 1000, gems = 100},
        rarity = "legendary"
    },
    {
        id = "comeback_kid",
        name = "Comeback Kid",
        description = "Win a race from last place",
        icon = "achievements/comeback.png",
        requirement = {type = "comeback_win"},
        reward = {coins = 400, gems = 35},
        rarity = "epic"
    }
}

-- Achievement rarity colors
M.RARITY_COLORS = {
    common = {0.7, 0.7, 0.7},      -- Gray
    rare = {0.3, 0.6, 1.0},        -- Blue
    epic = {0.6, 0.2, 0.8},        -- Purple
    legendary = {1.0, 0.8, 0.0}    -- Gold
}

-- Initialize achievement system
function M.init()
    local playerData = saveSystem.loadProgress()
    if not playerData.achievements then
        playerData.achievements = {}
        saveSystem.saveProgress()
    end
end

-- Check if achievement is unlocked
function M.isAchievementUnlocked(achievementId)
    local playerData = saveSystem.loadProgress()
    return playerData.achievements and playerData.achievements[achievementId] == true
end

-- Get achievement by ID
function M.getAchievement(achievementId)
    for _, achievement in ipairs(M.ACHIEVEMENTS) do
        if achievement.id == achievementId then
            return achievement
        end
    end
    return nil
end

-- Check and unlock achievements based on player stats
function M.checkAchievements(eventType, eventData)
    local playerData = saveSystem.loadProgress()
    local unlockedAchievements = {}
    
    for _, achievement in ipairs(M.ACHIEVEMENTS) do
        if not M.isAchievementUnlocked(achievement.id) then
            local requirement = achievement.requirement
            local shouldUnlock = false
            
            -- Check different achievement types
            if requirement.type == "wins" then
                if (playerData.stats.totalWins or 0) >= requirement.amount then
                    shouldUnlock = true
                end
                
            elseif requirement.type == "fast_time" and eventType == "race_completed" then
                if eventData.time and eventData.time <= requirement.time then
                    shouldUnlock = true
                end
                
            elseif requirement.type == "no_damage" and eventType == "race_completed" then
                if eventData.damagesTaken == 0 then
                    shouldUnlock = true
                end
                
            elseif requirement.type == "races_completed" then
                if (playerData.stats.totalRaces or 0) >= requirement.amount then
                    shouldUnlock = true
                end
                
            elseif requirement.type == "coins_collected" then
                if (playerData.stats.totalCoinsCollected or 0) >= requirement.amount then
                    shouldUnlock = true
                end
                
            elseif requirement.type == "powerups_used" then
                if (playerData.stats.powerupsUsed or 0) >= requirement.amount then
                    shouldUnlock = true
                end
                
            elseif requirement.type == "lightning_hits" then
                if (playerData.stats.lightningHits or 0) >= requirement.amount then
                    shouldUnlock = true
                end
                
            elseif requirement.type == "characters_unlocked" then
                local unlockedCount = 0
                for _, unlocked in pairs(playerData.unlockedCharacters or {}) do
                    if unlocked then unlockedCount = unlockedCount + 1 end
                end
                if unlockedCount >= requirement.amount then
                    shouldUnlock = true
                end
                
            elseif requirement.type == "character_wins" then
                if eventType == "race_won" and eventData.characterId == requirement.character then
                    local characterWins = playerData.stats.characterWins or {}
                    local wins = (characterWins[requirement.character] or 0) + 1
                    characterWins[requirement.character] = wins
                    playerData.stats.characterWins = characterWins
                    
                    if wins >= requirement.amount then
                        shouldUnlock = true
                    end
                end
                
            elseif requirement.type == "multiplayer_races" then
                if (playerData.stats.multiplayerRaces or 0) >= requirement.amount then
                    shouldUnlock = true
                end
                
            elseif requirement.type == "multiplayer_wins" then
                if (playerData.stats.multiplayerWins or 0) >= requirement.amount then
                    shouldUnlock = true
                end
                
            elseif requirement.type == "worlds_completed" then
                local worldsCompleted = 0
                for world, levels in pairs(playerData.levelProgress or {}) do
                    local worldComplete = true
                    for _, completed in pairs(levels) do
                        if not completed then
                            worldComplete = false
                            break
                        end
                    end
                    if worldComplete then worldsCompleted = worldsCompleted + 1 end
                end
                
                if worldsCompleted >= requirement.amount then
                    shouldUnlock = true
                end
                
            elseif requirement.type == "comeback_win" and eventType == "race_won" then
                if eventData.startingPosition and eventData.startingPosition >= 3 then
                    shouldUnlock = true
                end
            end
            
            -- Unlock achievement if conditions met
            if shouldUnlock then
                M.unlockAchievement(achievement.id)
                table.insert(unlockedAchievements, achievement)
            end
        end
    end
    
    return unlockedAchievements
end

-- Unlock an achievement
function M.unlockAchievement(achievementId)
    local playerData = saveSystem.loadProgress()
    
    if not playerData.achievements then
        playerData.achievements = {}
    end
    
    playerData.achievements[achievementId] = true
    
    local achievement = M.getAchievement(achievementId)
    if achievement and achievement.reward then
        -- Award rewards
        if achievement.reward.coins then
            saveSystem.addCoins(achievement.reward.coins)
        end
        if achievement.reward.gems then
            saveSystem.addGems(achievement.reward.gems)
        end
    end
    
    saveSystem.saveProgress()
    
    -- Play unlock sound
    soundManager.playSound("achievement_unlock")
    
    return achievement
end

-- Show achievement notification
function M.showAchievementNotification(achievement, parentGroup)
    local notification = display.newGroup()
    parentGroup:insert(notification)
    
    -- Background
    local bg = display.newRoundedRect(notification, 0, 0, 300, 80, 10)
    bg:setFillColor(0.1, 0.1, 0.1, 0.9)
    bg.strokeWidth = 2
    bg:setStrokeColor(M.RARITY_COLORS[achievement.rarity][1], 
                      M.RARITY_COLORS[achievement.rarity][2], 
                      M.RARITY_COLORS[achievement.rarity][3])
    
    -- Achievement icon
    local icon = display.newImageRect(notification, 
        gameConfig.ASSETS.GRAPHICS .. achievement.icon, 40, 40)
    icon.x = -100
    icon.y = 0
    
    -- Achievement text
    local titleText = display.newText(notification, "🏆 ACHIEVEMENT UNLOCKED!", 
        20, -15, native.systemFontBold, 12)
    titleText:setFillColor(1, 1, 0)
    
    local nameText = display.newText(notification, achievement.name, 
        20, 0, native.systemFontBold, 14)
    nameText:setFillColor(1, 1, 1)
    
    local descText = display.newText(notification, achievement.description, 
        20, 15, native.systemFont, 10)
    descText:setFillColor(0.8, 0.8, 0.8)
    
    -- Position notification
    notification.x = display.contentCenterX
    notification.y = 100
    notification.alpha = 0
    
    -- Animate in
    transition.to(notification, {
        alpha = 1,
        y = 120,
        time = 500,
        transition = easing.outBack
    })
    
    -- Animate out after delay
    timer.performWithDelay(3000, function()
        transition.to(notification, {
            alpha = 0,
            y = 80,
            time = 500,
            onComplete = function()
                notification:removeSelf()
            end
        })
    end)
end

-- Get achievement progress for display
function M.getAchievementProgress(achievementId)
    local achievement = M.getAchievement(achievementId)
    if not achievement then return 0, 0 end
    
    local playerData = saveSystem.loadProgress()
    local requirement = achievement.requirement
    local current = 0
    local target = requirement.amount or 1
    
    if requirement.type == "wins" then
        current = playerData.stats.totalWins or 0
    elseif requirement.type == "races_completed" then
        current = playerData.stats.totalRaces or 0
    elseif requirement.type == "coins_collected" then
        current = playerData.stats.totalCoinsCollected or 0
    elseif requirement.type == "powerups_used" then
        current = playerData.stats.powerupsUsed or 0
    elseif requirement.type == "lightning_hits" then
        current = playerData.stats.lightningHits or 0
    elseif requirement.type == "characters_unlocked" then
        current = 0
        for _, unlocked in pairs(playerData.unlockedCharacters or {}) do
            if unlocked then current = current + 1 end
        end
    elseif requirement.type == "multiplayer_races" then
        current = playerData.stats.multiplayerRaces or 0
    elseif requirement.type == "multiplayer_wins" then
        current = playerData.stats.multiplayerWins or 0
    end
    
    return math.min(current, target), target
end

-- Get all achievements for display
function M.getAllAchievements()
    local achievements = {}
    
    for _, achievement in ipairs(M.ACHIEVEMENTS) do
        local achievementData = {
            id = achievement.id,
            name = achievement.name,
            description = achievement.description,
            icon = achievement.icon,
            rarity = achievement.rarity,
            reward = achievement.reward,
            unlocked = M.isAchievementUnlocked(achievement.id)
        }
        
        local current, target = M.getAchievementProgress(achievement.id)
        achievementData.progress = current
        achievementData.target = target
        achievementData.progressPercent = target > 0 and (current / target) or 0
        
        table.insert(achievements, achievementData)
    end
    
    return achievements
end

-- Update player statistics
function M.updateStats(statType, value, characterId)
    local playerData = saveSystem.loadProgress()
    
    if not playerData.stats then
        playerData.stats = {}
    end
    
    if statType == "race_completed" then
        playerData.stats.totalRaces = (playerData.stats.totalRaces or 0) + 1
    elseif statType == "race_won" then
        playerData.stats.totalWins = (playerData.stats.totalWins or 0) + 1
        if value and value.isMultiplayer then
            playerData.stats.multiplayerWins = (playerData.stats.multiplayerWins or 0) + 1
        end
    elseif statType == "multiplayer_race" then
        playerData.stats.multiplayerRaces = (playerData.stats.multiplayerRaces or 0) + 1
    elseif statType == "coins_collected" then
        playerData.stats.totalCoinsCollected = (playerData.stats.totalCoinsCollected or 0) + value
    elseif statType == "powerup_used" then
        playerData.stats.powerupsUsed = (playerData.stats.powerupsUsed or 0) + 1
    elseif statType == "lightning_hit" then
        playerData.stats.lightningHits = (playerData.stats.lightningHits or 0) + 1
    end
    
    saveSystem.saveProgress()
end

return M
