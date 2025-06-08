-- Save System for Fun Run 2 Remake
-- Handles player progress, character unlocks, and game settings

local save_system = {}
local json = require("json")

-- Default player progress
local defaultProgress = {
    version = "1.0",
    player_id = nil,
    coins = 500,
    gems = 10,
    experience = 0,
    level = 1,
    completed_levels = {[1] = true},
    unlocked_characters = {"runner"},
    premium_unlocked = false,
    achievements = {},
    settings = {
        sound_enabled = true,
        music_enabled = true,
        sound_volume = 1.0,
        music_volume = 0.7,
        controls_scheme = "default"
    },
    statistics = {
        races_played = 0,
        races_won = 0,
        total_distance = 0,
        power_ups_collected = 0,
        characters_unlocked = 1,
        levels_completed = 1
    }
}

-- File paths
local SAVE_FILE = "player_progress.json"
local SETTINGS_FILE = "game_settings.json"

-- Current player progress
local currentProgress = nil

-- Initialize save system
function save_system.initialize()
    currentProgress = save_system.loadProgress()
    return currentProgress
end

-- Load player progress
function save_system.loadProgress()
    local path = system.pathForFile(SAVE_FILE, system.DocumentsDirectory)
    local file = io.open(path, "r")
    
    if file then
        local contents = file:read("*a")
        file:close()
        
        local progress = json.decode(contents)
        if progress and progress.version then
            -- Merge with defaults to handle new fields
            for key, value in pairs(defaultProgress) do
                if progress[key] == nil then
                    progress[key] = value
                end
            end
            return progress
        end
    end
    
    -- Return default progress if file doesn't exist or is corrupted
    return table.copy(defaultProgress)
end

-- Save player progress
function save_system.saveProgress(progress)
    progress = progress or currentProgress
    if not progress then return false end
    
    local path = system.pathForFile(SAVE_FILE, system.DocumentsDirectory)
    local file = io.open(path, "w")
    
    if file then
        local jsonString = json.encode(progress)
        file:write(jsonString)
        file:close()
        return true
    end
    
    return false
end

-- Get current progress
function save_system.getCurrentProgress()
    return currentProgress
end

-- Update progress values
function save_system.updateProgress(updates)
    if not currentProgress then return false end
    
    for key, value in pairs(updates) do
        if currentProgress[key] ~= nil then
            if type(value) == "table" and type(currentProgress[key]) == "table" then
                -- Merge tables
                for subKey, subValue in pairs(value) do
                    currentProgress[key][subKey] = subValue
                end
            else
                currentProgress[key] = value
            end
        end
    end
    
    return save_system.saveProgress()
end

-- Add coins
function save_system.addCoins(amount)
    if currentProgress then
        currentProgress.coins = currentProgress.coins + amount
        save_system.saveProgress()
        return currentProgress.coins
    end
    return 0
end

-- Spend coins
function save_system.spendCoins(amount)
    if currentProgress and currentProgress.coins >= amount then
        currentProgress.coins = currentProgress.coins - amount
        save_system.saveProgress()
        return true
    end
    return false
end

-- Add gems
function save_system.addGems(amount)
    if currentProgress then
        currentProgress.gems = currentProgress.gems + amount
        save_system.saveProgress()
        return currentProgress.gems
    end
    return 0
end

-- Spend gems
function save_system.spendGems(amount)
    if currentProgress and currentProgress.gems >= amount then
        currentProgress.gems = currentProgress.gems - amount
        save_system.saveProgress()
        return true
    end
    return false
end

-- Add experience
function save_system.addExperience(amount)
    if currentProgress then
        currentProgress.experience = currentProgress.experience + amount
        
        -- Check for level up (100 XP per level)
        local newLevel = math.floor(currentProgress.experience / 100) + 1
        if newLevel > currentProgress.level then
            currentProgress.level = newLevel
            -- Level up rewards
            save_system.addCoins(newLevel * 50)
            save_system.addGems(math.floor(newLevel / 5))
        end
        
        save_system.saveProgress()
        return currentProgress.experience, currentProgress.level
    end
    return 0, 1
end

-- Complete level
function save_system.completeLevel(levelId, rewards)
    if currentProgress then
        currentProgress.completed_levels[levelId] = true
        
        -- Add rewards
        if rewards then
            if rewards.coins then save_system.addCoins(rewards.coins) end
            if rewards.experience then save_system.addExperience(rewards.experience) end
            if rewards.gems then save_system.addGems(rewards.gems) end
        end
        
        -- Update statistics
        currentProgress.statistics.levels_completed = currentProgress.statistics.levels_completed + 1
        
        save_system.saveProgress()
        return true
    end
    return false
end

-- Character unlock functions
function save_system.unlockCharacter(characterId)
    if currentProgress then
        local unlockedChars = currentProgress.unlocked_characters or {}
        local alreadyUnlocked = false
        
        for _, id in ipairs(unlockedChars) do
            if id == characterId then
                alreadyUnlocked = true
                break
            end
        end
        
        if not alreadyUnlocked then
            table.insert(unlockedChars, characterId)
            currentProgress.unlocked_characters = unlockedChars
            save_system.saveProgress()
        end
        
        return true
    end
    return false
end

function save_system.isCharacterUnlocked(characterId)
    if currentProgress and currentProgress.unlocked_characters then
        for _, id in ipairs(currentProgress.unlocked_characters) do
            if id == characterId then
                return true
            end
        end
    end
    return false
end

-- Cosmetic item functions
function save_system.addCosmetic(cosmeticId)
    if currentProgress then
        if not currentProgress.cosmetics then
            currentProgress.cosmetics = {}
        end
        
        local alreadyOwned = false
        for _, id in ipairs(currentProgress.cosmetics) do
            if id == cosmeticId then
                alreadyOwned = true
                break
            end
        end
        
        if not alreadyOwned then
            table.insert(currentProgress.cosmetics, cosmeticId)
            save_system.saveProgress()
        end
        
        return true
    end
    return false
end

function save_system.hasCosmeticItem(cosmeticId)
    if currentProgress and currentProgress.cosmetics then
        for _, id in ipairs(currentProgress.cosmetics) do
            if id == cosmeticId then
                return true
            end
        end
    end
    return false
end

-- Power-up pack functions
function save_system.addPowerupPack(packId)
    if currentProgress then
        if not currentProgress.powerup_packs then
            currentProgress.powerup_packs = {}
        end
        
        currentProgress.powerup_packs[packId] = (currentProgress.powerup_packs[packId] or 0) + 1
        save_system.saveProgress()
        return true
    end
    return false
end

function save_system.getPowerupPackCount(packId)
    if currentProgress and currentProgress.powerup_packs then
        return currentProgress.powerup_packs[packId] or 0
    end
    return 0
end

-- Level completion functions
function save_system.completeLevel(levelId)
    if currentProgress then
        if not currentProgress.completed_levels then
            currentProgress.completed_levels = {}
        end
        
        if not currentProgress.completed_levels[levelId] then
            currentProgress.completed_levels[levelId] = true
            currentProgress.statistics.levels_completed = currentProgress.statistics.levels_completed + 1
            save_system.saveProgress()
        end
        
        return true
    end
    return false
end

function save_system.isLevelCompleted(levelId)
    if currentProgress and currentProgress.completed_levels then
        return currentProgress.completed_levels[levelId] == true
    end
    return false
end

-- Achievement functions
function save_system.unlockAchievement(achievementId)
    if currentProgress then
        if not currentProgress.achievements then
            currentProgress.achievements = {}
        end
        
        if not currentProgress.achievements[achievementId] then
            currentProgress.achievements[achievementId] = {
                unlocked = true,
                timestamp = os.time()
            }
            save_system.saveProgress()
            return true
        end
    end
    return false
end

function save_system.isAchievementUnlocked(achievementId)
    if currentProgress and currentProgress.achievements then
        return currentProgress.achievements[achievementId] and currentProgress.achievements[achievementId].unlocked
    end
    return false
end

-- Statistics update function
function save_system.updateStatistics(updates)
    if currentProgress and currentProgress.statistics then
        for key, value in pairs(updates) do
            if currentProgress.statistics[key] ~= nil then
                if type(value) == "number" then
                    currentProgress.statistics[key] = currentProgress.statistics[key] + value
                else
                    currentProgress.statistics[key] = value
                end
            end
        end
        save_system.saveProgress()
        return true
    end
    return false
end

-- Get player profile summary
function save_system.getPlayerProfile()
    if currentProgress then
        return {
            level = currentProgress.level or 1,
            experience = currentProgress.experience or 0,
            coins = currentProgress.coins or 0,
            gems = currentProgress.gems or 0,
            charactersUnlocked = #(currentProgress.unlocked_characters or {"runner"}),
            levelsCompleted = currentProgress.statistics and currentProgress.statistics.levels_completed or 0,
            racesWon = currentProgress.statistics and currentProgress.statistics.races_won or 0,
            totalRaces = currentProgress.statistics and currentProgress.statistics.races_played or 0
        }
    end
    return nil
end

-- Export/import for cloud saves (future feature)
function save_system.exportProgress()
    if currentProgress then
        return json.encode(currentProgress)
    end
    return nil
end

function save_system.importProgress(progressString)
    local progress = json.decode(progressString)
    if progress and progress.version then
        currentProgress = progress
        save_system.saveProgress()
        return true
    end
    return false
end

-- Utility function for table copying
function table.copy(t)
    local copy = {}
    for key, value in pairs(t) do
        if type(value) == "table" then
            copy[key] = table.copy(value)
        else
            copy[key] = value
        end
    end
    return copy
end

return save_system
