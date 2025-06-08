-- utils/sound_manager.lua - Sound Management System for Fun Run 2
-----------------------------------------------------------------------------------------

local gameConfig = require("config.game_config")

local M = {}

-- Sound storage
local sounds = {}
local music = {}
local currentMusic = nil

-- Sound categories
M.CATEGORIES = {
    SFX = "sfx",
    MUSIC = "music",
    UI = "ui"
}

-- Volume settings
local volumes = {
    master = gameConfig.MASTER_VOLUME or 1.0,
    music = gameConfig.MUSIC_VOLUME or 0.8,
    sfx = gameConfig.SFX_VOLUME or 0.8
}

-- Initialize sound system
function M.init()
    -- Set audio session category for mobile
    if system.getInfo("platform") == "ios" or system.getInfo("platform") == "android" then
        audio.setSessionProperty(audio.MixMode, audio.AmbientMixMode)
    end
    
    -- Reserve audio channels
    audio.reserveChannels(4) -- Reserve first 4 channels for music and important sounds
    
    -- Load common sounds
    M.loadSound("jump", "sounds/jump.wav")
    M.loadSound("double_jump", "sounds/jump.wav") -- Using same file for now
    M.loadSound("slide", "sounds/slide.wav")
    M.loadSound("powerup_collect", "sounds/powerup_collect.wav")
    M.loadSound("lightning", "sounds/lightning_attack.wav")
    M.loadSound("damage", "sounds/obstacle_hit.wav")
    M.loadSound("finish", "sounds/finish_line.wav")
    
    -- UI sounds
    M.loadSound("button_click", "sounds/button_click.wav")
    M.loadSound("button_hover", "sounds/button_click.wav") -- Using same file for now
    M.loadSound("purchase", "sounds/coin_collect.wav")
    M.loadSound("error", "sounds/obstacle_hit.wav") -- Using damage sound for errors
    M.loadSound("achievement_unlock", "sounds/powerup_collect.wav") -- Using powerup sound for achievements
    
    print("Sound Manager initialized")
end

-- Load a sound file
function M.loadSound(name, filePath, category)
    category = category or M.CATEGORIES.SFX
    
    local fullPath = gameConfig.ASSETS.AUDIO .. filePath
    local soundHandle = audio.loadSound(fullPath)
    
    if soundHandle then
        sounds[name] = {
            handle = soundHandle,
            category = category,
            path = fullPath
        }
        print("Loaded sound: " .. name)
    else
        print("Failed to load sound: " .. fullPath)
    end
    
    return soundHandle
end

-- Load music
function M.loadMusic(name, filePath)
    local fullPath = gameConfig.ASSETS.AUDIO .. filePath
    local musicHandle = audio.loadStream(fullPath)
    
    if musicHandle then
        music[name] = {
            handle = musicHandle,
            path = fullPath
        }
        print("Loaded music: " .. name)
    else
        print("Failed to load music: " .. fullPath)
    end
    
    return musicHandle
end

-- Play sound effect
function M.playSound(name, options)
    options = options or {}
    
    if sounds[name] then
        local volume = volumes.master * volumes.sfx * (options.volume or 1.0)
        local channel = options.channel or audio.findFreeChannel()
        
        if channel then
            return audio.play(sounds[name].handle, {
                channel = channel,
                loops = options.loops or 0,
                fadein = options.fadein or 0,
                onComplete = options.onComplete
            })
        end
    else
        print("Sound not found: " .. tostring(name))
    end
    
    return nil
end

-- Play music
function M.playMusic(name, options)
    options = options or {}
    
    if music[name] then
        -- Stop current music if playing
        M.stopMusic()
        
        local volume = volumes.master * volumes.music * (options.volume or 1.0)
        audio.setVolume(volume, {channel = 1})
        
        currentMusic = {
            name = name,
            channel = 1
        }
        
        return audio.play(music[name].handle, {
            channel = 1,
            loops = options.loops or -1, -- Loop by default
            fadein = options.fadein or 1000,
            onComplete = options.onComplete
        })
    else
        print("Music not found: " .. tostring(name))
    end
    
    return nil
end

-- Stop music
function M.stopMusic(fadeout)
    if currentMusic then
        if fadeout and fadeout > 0 then
            audio.fadeOut({channel = currentMusic.channel, time = fadeout})
        else
            audio.stop(currentMusic.channel)
        end
        currentMusic = nil
    end
end

-- Pause/Resume music
function M.pauseMusic()
    if currentMusic then
        audio.pause(currentMusic.channel)
    end
end

function M.resumeMusic()
    if currentMusic then
        audio.resume(currentMusic.channel)
    end
end

-- Volume controls
function M.setMasterVolume(volume)
    volumes.master = math.max(0, math.min(1, volume))
    M.updateAllVolumes()
end

function M.setMusicVolume(volume)
    volumes.music = math.max(0, math.min(1, volume))
    if currentMusic then
        audio.setVolume(volumes.master * volumes.music, {channel = currentMusic.channel})
    end
end

function M.setSFXVolume(volume)
    volumes.sfx = math.max(0, math.min(1, volume))
end

function M.updateAllVolumes()
    -- Update music volume
    if currentMusic then
        audio.setVolume(volumes.master * volumes.music, {channel = currentMusic.channel})
    end
    
    -- SFX volumes are applied when playing individual sounds
end

-- Get current volumes
function M.getVolumes()
    return {
        master = volumes.master,
        music = volumes.music,
        sfx = volumes.sfx
    }
end

-- Cleanup
function M.cleanup()
    -- Stop all audio
    audio.stop()
    
    -- Dispose of all sounds
    for name, sound in pairs(sounds) do
        if sound.handle then
            audio.dispose(sound.handle)
        end
    end
    
    -- Dispose of all music
    for name, track in pairs(music) do
        if track.handle then
            audio.dispose(track.handle)
        end
    end
    
    sounds = {}
    music = {}
    currentMusic = nil
    
    print("Sound Manager cleaned up")
end

-- Preload common game sounds
function M.preloadGameSounds()
    -- Game sounds
    M.loadSound("countdown", "sounds/countdown.wav")
    M.loadSound("race_start", "sounds/race_start.wav")
    M.loadSound("checkpoint", "sounds/powerup_collect.wav") -- Using powerup sound for checkpoints
    M.loadSound("power_boost", "sounds/speed_boost.wav")
    M.loadSound("trap_spring", "sounds/obstacle_hit.wav")
    
    -- Environmental sounds
    M.loadSound("water_splash", "sounds/slide.wav") -- Using slide sound for water
    M.loadSound("fire_crackle", "sounds/obstacle_hit.wav") -- Using hit sound for fire
    M.loadSound("platform_break", "sounds/obstacle_hit.wav")
    M.loadSound("jump_pad", "sounds/jump.wav")
    
    -- Music tracks
    M.loadMusic("menu_theme", "music/menu_theme.mp3")
    M.loadMusic("forest_theme", "music/forest_theme.mp3")
    M.loadMusic("desert_theme", "music/desert_theme.mp3")
    M.loadMusic("city_theme", "music/city_theme.mp3")
    M.loadMusic("ice_theme", "music/ice_theme.mp3")
    M.loadMusic("jungle_theme", "music/jungle_theme.mp3")
    M.loadMusic("character_select_theme", "music/character_select_theme.mp3")
    M.loadMusic("results_theme", "music/results_theme.mp3")
end

-- Play random variation of a sound
function M.playRandomSound(baseName, variations, options)
    if variations and #variations > 0 then
        local randomIndex = math.random(1, #variations)
        local soundName = baseName .. "_" .. variations[randomIndex]
        return M.playSound(soundName, options)
    else
        return M.playSound(baseName, options)
    end
end

-- Create sound sequence
function M.playSoundSequence(soundNames, delay, options)
    delay = delay or 500
    options = options or {}
    
    for i, soundName in ipairs(soundNames) do
        timer.performWithDelay((i - 1) * delay, function()
            M.playSound(soundName, options)
        end)
    end
end

return M