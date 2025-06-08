-- config/game_config.lua - Game Configuration Constants
-----------------------------------------------------------------------------------------

local M = {}

-- Display settings
M.CONTENT_WIDTH = 1080
M.CONTENT_HEIGHT = 1920
M.FPS = 60

-- Physics settings
M.GRAVITY = 9.8
M.PLAYER_DENSITY = 1.0
M.PLAYER_FRICTION = 0.3
M.PLAYER_BOUNCE = 0.2

-- Player movement settings
M.PLAYER_SPEED = 300
M.JUMP_FORCE = -400
M.DOUBLE_JUMP_FORCE = -300
M.SLIDE_DURATION = 1000
M.INVINCIBILITY_DURATION = 2000

-- Game mechanics
M.MAX_PLAYERS = 4
M.RACE_LENGTH = 5000 -- pixels
M.CAMERA_OFFSET = 200

-- Power-up settings
M.POWERUP_SPAWN_RATE = 0.3
M.POWERUP_TYPES = {
    "speed_boost",
    "lightning",
    "bear_trap",
    "punch",
    "magnet"
}

-- Scoring
M.FINISH_POINTS = {1000, 500, 250, 100} -- 1st, 2nd, 3rd, 4th place
M.POWERUP_POINTS = 50
M.TRAP_HIT_PENALTY = -25

-- Audio settings
M.MASTER_VOLUME = 0.8
M.MUSIC_VOLUME = 0.6
M.SFX_VOLUME = 0.8

-- Asset paths
M.ASSETS = {
    GRAPHICS = "assets/graphics/",
    AUDIO = "assets/audio/",
    CHARACTERS = "assets/graphics/characters/",
    UI = "assets/graphics/ui/",
    BACKGROUNDS = "assets/graphics/backgrounds/",
    POWERUPS = "assets/graphics/powerups/",
    COSMETICS = "assets/graphics/cosmetics/",
    OBSTACLES = "assets/graphics/obstacles/",
    PLATFORMS = "assets/graphics/platforms/",
    MUSIC = "assets/audio/music/",
    SOUNDS = "assets/audio/sounds/"
}

-- Asset paths
M.ASSETS = {
    GRAPHICS = "assets/graphics/",
    AUDIO = "assets/audio/",
    FONTS = "assets/fonts/"
}

-- Character data
M.CHARACTERS = {
    {
        id = "default",
        name = "Runner",
        sprite = "characters/default.png",
        unlocked = true,
        price = 0
    },
    {
        id = "ninja",
        name = "Ninja",
        sprite = "characters/ninja.png",
        unlocked = false,
        price = 1000
    },
    {
        id = "robot",
        name = "Robot",
        sprite = "characters/robot.png",
        unlocked = false,
        price = 2500
    },
    {
        id = "pirate",
        name = "Pirate",
        sprite = "characters/pirate.png",
        unlocked = false,
        price = 5000
    }
}

-- Level configuration
M.LEVELS = {
    {
        id = "forest",
        name = "Forest Run",
        background = "backgrounds/forest.png",
        music = "music/forest_theme.mp3",
        unlocked = true
    },
    {
        id = "desert",
        name = "Desert Dash",
        background = "backgrounds/desert.png",
        music = "music/desert_theme.mp3",
        unlocked = false
    },
    {
        id = "city",
        name = "City Sprint",
        background = "backgrounds/city.png",
        music = "music/city_theme.mp3",
        unlocked = false
    }
}

return M