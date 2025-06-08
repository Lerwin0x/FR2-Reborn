-- Level Data Configuration for Fun Run 2 Remake
-- Defines all levels, environments, obstacles, and environmental effects

local level_data = {}

-- Level categories
level_data.LEVEL_CATEGORIES = {
    STARTER = "starter",
    ADVENTURE = "adventure",
    PREMIUM = "premium",
    SEASONAL = "seasonal",
    LEGENDARY = "legendary"
}

-- Environment types
level_data.ENVIRONMENT_TYPES = {
    FOREST = "forest",
    DESERT = "desert",
    ICE = "ice",
    VOLCANO = "volcano",
    SPACE = "space",
    UNDERWATER = "underwater",
    CITY = "city",
    JUNGLE = "jungle"
}

-- Platform types for each environment
level_data.PLATFORM_TYPES = {
    forest = {
        {type = "wood", texture = "wood_platform.png", friction = 0.8, bounce = 0.1},
        {type = "mushroom", texture = "mushroom_platform.png", friction = 0.6, bounce = 0.3, special = "bouncy"},
        {type = "tree_branch", texture = "branch_platform.png", friction = 0.9, bounce = 0.0, special = "breakable"}
    },
    desert = {
        {type = "sand", texture = "sand_platform.png", friction = 0.7, bounce = 0.0},
        {type = "cactus", texture = "cactus_platform.png", friction = 0.8, bounce = 0.0, special = "spiky"},
        {type = "rock", texture = "rock_platform.png", friction = 1.0, bounce = 0.1}
    },
    ice = {
        {type = "ice", texture = "ice_platform.png", friction = 0.2, bounce = 0.0, special = "slippery"},
        {type = "snow", texture = "snow_platform.png", friction = 0.5, bounce = 0.0},
        {type = "crystal", texture = "crystal_platform.png", friction = 0.8, bounce = 0.2, special = "reflective"}
    },
    volcano = {
        {type = "lava_rock", texture = "lava_rock_platform.png", friction = 0.9, bounce = 0.0, special = "hot"},
        {type = "metal", texture = "metal_platform.png", friction = 0.8, bounce = 0.1},
        {type = "obsidian", texture = "obsidian_platform.png", friction = 1.0, bounce = 0.0, special = "sharp"}
    },
    space = {
        {type = "metal_grate", texture = "space_grate.png", friction = 0.8, bounce = 0.0},
        {type = "energy", texture = "energy_platform.png", friction = 0.6, bounce = 0.4, special = "electric"},
        {type = "asteroid", texture = "asteroid_platform.png", friction = 0.7, bounce = 0.1}
    },
    underwater = {
        {type = "coral", texture = "coral_platform.png", friction = 0.7, bounce = 0.2},
        {type = "seaweed", texture = "seaweed_platform.png", friction = 0.5, bounce = 0.3, special = "bouncy"},
        {type = "shell", texture = "shell_platform.png", friction = 0.8, bounce = 0.1}
    },
    city = {
        {type = "concrete", texture = "concrete_platform.png", friction = 0.9, bounce = 0.0},
        {type = "glass", texture = "glass_platform.png", friction = 0.6, bounce = 0.1, special = "breakable"},
        {type = "metal_grid", texture = "metal_grid.png", friction = 0.8, bounce = 0.0}
    },
    jungle = {
        {type = "vine", texture = "vine_platform.png", friction = 0.6, bounce = 0.4, special = "swinging"},
        {type = "leaf", texture = "leaf_platform.png", friction = 0.7, bounce = 0.2},
        {type = "bamboo", texture = "bamboo_platform.png", friction = 0.8, bounce = 0.1, special = "flexible"}
    }
}

-- Obstacle definitions for each environment
level_data.OBSTACLE_TYPES = {
    forest = {
        {type = "log", texture = "log_obstacle.png", width = 60, height = 30, damage = 1, effect = "trip"},
        {type = "thorn_bush", texture = "thorn_bush.png", width = 40, height = 50, damage = 2, effect = "slow"},
        {type = "spider_web", texture = "spider_web.png", width = 80, height = 60, damage = 0, effect = "trap"},
        {type = "bear_trap", texture = "bear_trap.png", width = 40, height = 20, damage = 3, effect = "stun"}
    },
    desert = {
        {type = "cactus_spike", texture = "cactus_spike.png", width = 30, height = 80, damage = 2, effect = "poison"},
        {type = "quicksand", texture = "quicksand.png", width = 100, height = 20, damage = 0, effect = "sink"},
        {type = "tumbleweed", texture = "tumbleweed.png", width = 50, height = 50, damage = 1, effect = "push"},
        {type = "scorpion", texture = "scorpion.png", width = 40, height = 30, damage = 2, effect = "poison"}
    },
    ice = {
        {type = "icicle", texture = "icicle.png", width = 20, height = 60, damage = 2, effect = "freeze"},
        {type = "ice_spike", texture = "ice_spike.png", width = 40, height = 40, damage = 1, effect = "slip"},
        {type = "snowball", texture = "snowball.png", width = 30, height = 30, damage = 1, effect = "cold"},
        {type = "ice_crack", texture = "ice_crack.png", width = 80, height = 20, damage = 0, effect = "break"}
    },
    volcano = {
        {type = "lava_pit", texture = "lava_pit.png", width = 100, height = 40, damage = 4, effect = "burn"},
        {type = "fire_geyser", texture = "fire_geyser.png", width = 40, height = 100, damage = 3, effect = "launch"},
        {type = "falling_rock", texture = "falling_rock.png", width = 50, height = 50, damage = 2, effect = "crush"},
        {type = "lava_bubble", texture = "lava_bubble.png", width = 30, height = 30, damage = 1, effect = "burn"}
    },
    space = {
        {type = "laser_beam", texture = "laser_beam.png", width = 10, height = 200, damage = 3, effect = "zap"},
        {type = "asteroid", texture = "space_asteroid.png", width = 60, height = 60, damage = 2, effect = "crush"},
        {type = "energy_field", texture = "energy_field.png", width = 80, height = 100, damage = 1, effect = "shock"},
        {type = "black_hole", texture = "black_hole.png", width = 50, height = 50, damage = 0, effect = "suck"}
    },
    underwater = {
        {type = "jellyfish", texture = "jellyfish.png", width = 40, height = 60, damage = 2, effect = "shock"},
        {type = "sea_urchin", texture = "sea_urchin.png", width = 30, height = 30, damage = 1, effect = "spike"},
        {type = "whirlpool", texture = "whirlpool.png", width = 80, height = 80, damage = 0, effect = "spin"},
        {type = "shark", texture = "shark.png", width = 100, height = 40, damage = 3, effect = "bite"}
    },
    city = {
        {type = "traffic_cone", texture = "traffic_cone.png", width = 30, height = 50, damage = 0, effect = "block"},
        {type = "manhole", texture = "manhole.png", width = 60, height = 20, damage = 1, effect = "fall"},
        {type = "electric_wire", texture = "electric_wire.png", width = 100, height = 10, damage = 2, effect = "shock"},
        {type = "construction_sign", texture = "construction_sign.png", width = 50, height = 80, damage = 0, effect = "block"}
    },
    jungle = {
        {type = "poison_dart", texture = "poison_dart.png", width = 20, height = 5, damage = 2, effect = "poison"},
        {type = "snake", texture = "snake.png", width = 80, height = 20, damage = 2, effect = "poison"},
        {type = "quicksand_pit", texture = "jungle_quicksand.png", width = 100, height = 30, damage = 0, effect = "sink"},
        {type = "swinging_log", texture = "swinging_log.png", width = 60, height = 30, damage = 1, effect = "swing"}
    }
}

-- Environmental effects for each level type
level_data.ENVIRONMENTAL_EFFECTS = {
    forest = {
        weather = "rain",
        particles = {"leaves", "fireflies"},
        ambient_sound = "forest_ambience.mp3",
        lighting = "dappled",
        background_music = "forest_theme.mp3",
        special_effects = {"wind_rustle", "bird_calls"}
    },
    desert = {
        weather = "sandstorm",
        particles = {"sand", "dust"},
        ambient_sound = "desert_wind.mp3",
        lighting = "harsh",
        background_music = "desert_theme.mp3",
        special_effects = {"heat_shimmer", "tumbleweeds"}
    },
    ice = {
        weather = "blizzard",
        particles = {"snow", "ice_crystals"},
        ambient_sound = "ice_wind.mp3",
        lighting = "blue_tint",
        background_music = "ice_theme.mp3",
        special_effects = {"aurora", "ice_crack_sounds"}
    },
    volcano = {
        weather = "ash_fall",
        particles = {"lava_sparks", "ash", "smoke"},
        ambient_sound = "volcano_rumble.mp3",
        lighting = "red_glow",
        background_music = "volcano_theme.mp3",
        special_effects = {"lava_flow", "tremors"}
    },
    space = {
        weather = "meteor_shower",
        particles = {"stars", "energy_sparks"},
        ambient_sound = "space_ambience.mp3",
        lighting = "cosmic",
        background_music = "space_theme.mp3",
        special_effects = {"nebula_glow", "zero_gravity_zones"}
    },
    underwater = {
        weather = "current_flow",
        particles = {"bubbles", "seaweed_bits"},
        ambient_sound = "underwater_ambience.mp3",
        lighting = "blue_filtered",
        background_music = "underwater_theme.mp3",
        special_effects = {"water_distortion", "school_of_fish"}
    },
    city = {
        weather = "smog",
        particles = {"exhaust", "paper_bits"},
        ambient_sound = "city_traffic.mp3",
        lighting = "neon",
        background_music = "city_theme.mp3",
        special_effects = {"neon_signs", "traffic_lights"}
    },
    jungle = {
        weather = "humid_mist",
        particles = {"pollen", "water_drops"},
        ambient_sound = "jungle_sounds.mp3",
        lighting = "green_filtered",
        background_music = "jungle_theme.mp3",
        special_effects = {"monkey_calls", "rustling_leaves"}
    }
}

-- Level definitions
level_data.LEVELS = {
    -- Starter Levels
    {
        id = 1,
        name = "Forest Trail",
        category = level_data.LEVEL_CATEGORIES.STARTER,
        environment = level_data.ENVIRONMENT_TYPES.FOREST,
        unlock_requirement = {type = "none"},
        length = 2000,
        difficulty = 1,
        max_players = 4,
        time_limit = 120,
        lap_count = 1,
        power_up_spawn_rate = 0.3,
        obstacle_density = 0.2,
        platform_generation = {
            min_gap = 50,
            max_gap = 150,
            height_variation = 100,
            platform_types = {"wood", "mushroom"}
        },
        special_features = {"checkpoint_trees", "hidden_shortcuts"},
        rewards = {
            first_place = {coins = 100, experience = 50},
            second_place = {coins = 75, experience = 35},
            third_place = {coins = 50, experience = 25},
            participation = {coins = 25, experience = 10}
        }
    },
    
    {
        id = 2,
        name = "Desert Dash",
        category = level_data.LEVEL_CATEGORIES.STARTER,
        environment = level_data.ENVIRONMENT_TYPES.DESERT,
        unlock_requirement = {type = "level_complete", level_id = 1},
        length = 2200,
        difficulty = 2,
        max_players = 4,
        time_limit = 130,
        lap_count = 1,
        power_up_spawn_rate = 0.35,
        obstacle_density = 0.25,
        platform_generation = {
            min_gap = 60,
            max_gap = 160,
            height_variation = 80,
            platform_types = {"sand", "rock"}
        },
        special_features = {"oasis_checkpoints", "sandstorm_sections"},
        rewards = {
            first_place = {coins = 120, experience = 60},
            second_place = {coins = 90, experience = 40},
            third_place = {coins = 60, experience = 30},
            participation = {coins = 30, experience = 15}
        }
    },
    
    {
        id = 3,
        name = "City Sprint",
        category = level_data.LEVEL_CATEGORIES.STARTER,
        environment = level_data.ENVIRONMENT_TYPES.CITY,
        unlock_requirement = {type = "level_complete", level_id = 2},
        length = 2400,
        difficulty = 2,
        max_players = 4,
        time_limit = 140,
        lap_count = 1,
        power_up_spawn_rate = 0.4,
        obstacle_density = 0.3,
        platform_generation = {
            min_gap = 40,
            max_gap = 120,
            height_variation = 120,
            platform_types = {"concrete", "metal_grid"}
        },
        special_features = {"rooftop_shortcuts", "traffic_obstacles"},
        rewards = {
            first_place = {coins = 140, experience = 70},
            second_place = {coins = 105, experience = 50},
            third_place = {coins = 70, experience = 35},
            participation = {coins = 35, experience = 20}
        }
    },
    
    -- Adventure Levels
    {
        id = 4,
        name = "Frozen Peaks",
        category = level_data.LEVEL_CATEGORIES.ADVENTURE,
        environment = level_data.ENVIRONMENT_TYPES.ICE,
        unlock_requirement = {type = "level_complete", level_id = 3},
        length = 2800,
        difficulty = 3,
        max_players = 6,
        time_limit = 160,
        lap_count = 1,
        power_up_spawn_rate = 0.3,
        obstacle_density = 0.35,
        platform_generation = {
            min_gap = 70,
            max_gap = 180,
            height_variation = 150,
            platform_types = {"ice", "snow", "crystal"}
        },
        special_features = {"slippery_surfaces", "ice_slide_shortcuts", "aurora_effects"},
        rewards = {
            first_place = {coins = 200, experience = 100},
            second_place = {coins = 150, experience = 75},
            third_place = {coins = 100, experience = 50},
            participation = {coins = 50, experience = 25}
        }
    },
    
    {
        id = 5,
        name = "Volcano Valley",
        category = level_data.LEVEL_CATEGORIES.ADVENTURE,
        environment = level_data.ENVIRONMENT_TYPES.VOLCANO,
        unlock_requirement = {type = "level_complete", level_id = 4},
        length = 3000,
        difficulty = 4,
        max_players = 6,
        time_limit = 180,
        lap_count = 1,
        power_up_spawn_rate = 0.25,
        obstacle_density = 0.4,
        platform_generation = {
            min_gap = 80,
            max_gap = 200,
            height_variation = 160,
            platform_types = {"lava_rock", "metal", "obsidian"}
        },
        special_features = {"lava_geysers", "collapsing_platforms", "heat_distortion"},
        rewards = {
            first_place = {coins = 250, experience = 125},
            second_place = {coins = 190, experience = 95},
            third_place = {coins = 130, experience = 65},
            participation = {coins = 65, experience = 30}
        }
    },
    
    {
        id = 6,
        name = "Jungle Temple",
        category = level_data.LEVEL_CATEGORIES.ADVENTURE,
        environment = level_data.ENVIRONMENT_TYPES.JUNGLE,
        unlock_requirement = {type = "level_complete", level_id = 5},
        length = 3200,
        difficulty = 4,
        max_players = 6,
        time_limit = 200,
        lap_count = 1,
        power_up_spawn_rate = 0.35,
        obstacle_density = 0.35,
        platform_generation = {
            min_gap = 60,
            max_gap = 170,
            height_variation = 140,
            platform_types = {"vine", "leaf", "bamboo"}
        },
        special_features = {"swinging_vines", "temple_traps", "monkey_helpers"},
        rewards = {
            first_place = {coins = 280, experience = 140},
            second_place = {coins = 210, experience = 105},
            third_place = {coins = 140, experience = 70},
            participation = {coins = 70, experience = 35}
        }
    },
    
    -- Premium Levels
    {
        id = 7,
        name = "Ocean Depths",
        category = level_data.LEVEL_CATEGORIES.PREMIUM,
        environment = level_data.ENVIRONMENT_TYPES.UNDERWATER,
        unlock_requirement = {type = "premium_unlock"},
        length = 3500,
        difficulty = 5,
        max_players = 8,
        time_limit = 220,
        lap_count = 2,
        power_up_spawn_rate = 0.4,
        obstacle_density = 0.3,
        platform_generation = {
            min_gap = 50,
            max_gap = 140,
            height_variation = 120,
            platform_types = {"coral", "seaweed", "shell"}
        },
        special_features = {"water_currents", "bubble_zones", "sea_creature_helpers"},
        rewards = {
            first_place = {coins = 400, experience = 200, gems = 5},
            second_place = {coins = 300, experience = 150, gems = 3},
            third_place = {coins = 200, experience = 100, gems = 2},
            participation = {coins = 100, experience = 50, gems = 1}
        }
    },
    
    {
        id = 8,
        name = "Space Station",
        category = level_data.LEVEL_CATEGORIES.PREMIUM,
        environment = level_data.ENVIRONMENT_TYPES.SPACE,
        unlock_requirement = {type = "premium_unlock"},
        length = 4000,
        difficulty = 6,
        max_players = 8,
        time_limit = 250,
        lap_count = 2,
        power_up_spawn_rate = 0.3,
        obstacle_density = 0.45,
        platform_generation = {
            min_gap = 90,
            max_gap = 220,
            height_variation = 200,
            platform_types = {"metal_grate", "energy", "asteroid"}
        },
        special_features = {"zero_gravity_zones", "teleporters", "laser_barriers"},
        rewards = {
            first_place = {coins = 500, experience = 250, gems = 8},
            second_place = {coins = 375, experience = 190, gems = 5},
            third_place = {coins = 250, experience = 125, gems = 3},
            participation = {coins = 125, experience = 60, gems = 1}
        }
    },
    
    -- Legendary Level
    {
        id = 9,
        name = "Rainbow Road",
        category = level_data.LEVEL_CATEGORIES.LEGENDARY,
        environment = level_data.ENVIRONMENT_TYPES.SPACE,
        unlock_requirement = {type = "achievement", achievement_id = "rainbow_unlock"},
        length = 5000,
        difficulty = 10,
        max_players = 8,
        time_limit = 300,
        lap_count = 3,
        power_up_spawn_rate = 0.5,
        obstacle_density = 0.5,
        platform_generation = {
            min_gap = 100,
            max_gap = 300,
            height_variation = 250,
            platform_types = {"energy", "crystal", "rainbow"}
        },
        special_features = {"rainbow_boosts", "portal_shortcuts", "cosmic_hazards", "multi_gravity"},
        rewards = {
            first_place = {coins = 1000, experience = 500, gems = 20, special_reward = "rainbow_character"},
            second_place = {coins = 750, experience = 375, gems = 15},
            third_place = {coins = 500, experience = 250, gems = 10},
            participation = {coins = 250, experience = 125, gems = 5}
        }
    }
}

-- Helper functions
function level_data.getLevelById(level_id)
    for _, level in ipairs(level_data.LEVELS) do
        if level.id == level_id then
            return level
        end
    end
    return nil
end

function level_data.getLevelsByCategory(category)
    local levels = {}
    for _, level in ipairs(level_data.LEVELS) do
        if level.category == category then
            table.insert(levels, level)
        end
    end
    return levels
end

function level_data.getLevelsByEnvironment(environment)
    local levels = {}
    for _, level in ipairs(level_data.LEVELS) do
        if level.environment == environment then
            table.insert(levels, level)
        end
    end
    return levels
end

function level_data.getUnlockedLevels(player_progress)
    local unlocked = {}
    for _, level in ipairs(level_data.LEVELS) do
        if level_data.isLevelUnlocked(level, player_progress) then
            table.insert(unlocked, level)
        end
    end
    return unlocked
end

function level_data.isLevelUnlocked(level, player_progress)
    local req = level.unlock_requirement
    
    if req.type == "none" then
        return true
    elseif req.type == "level_complete" then
        return player_progress.completed_levels[req.level_id] == true
    elseif req.type == "premium_unlock" then
        return player_progress.premium_unlocked == true
    elseif req.type == "achievement" then
        return player_progress.achievements[req.achievement_id] == true
    end
    
    return false
end

function level_data.getPlatformTypesForEnvironment(environment)
    return level_data.PLATFORM_TYPES[environment] or {}
end

function level_data.getObstacleTypesForEnvironment(environment)
    return level_data.OBSTACLE_TYPES[environment] or {}
end

function level_data.getEnvironmentalEffects(environment)
    return level_data.ENVIRONMENTAL_EFFECTS[environment] or {}
end

function level_data.generateLevelLayout(level)
    local layout = {
        platforms = {},
        obstacles = {},
        power_ups = {},
        checkpoints = {}
    }
    
    local platform_types = level_data.getPlatformTypesForEnvironment(level.environment)
    local obstacle_types = level_data.getObstacleTypesForEnvironment(level.environment)
    
    -- Generate platforms
    local current_x = 0
    local current_y = 200
    local segment_length = 200
    
    while current_x < level.length do
        -- Choose random platform type
        local platform_type = platform_types[math.random(#platform_types)]
        
        -- Calculate next platform position
        local gap = math.random(level.platform_generation.min_gap, level.platform_generation.max_gap)
        local height_change = math.random(-level.platform_generation.height_variation/2, level.platform_generation.height_variation/2)
        
        current_x = current_x + gap
        current_y = math.max(100, math.min(400, current_y + height_change))
        
        table.insert(layout.platforms, {
            x = current_x,
            y = current_y,
            width = segment_length,
            height = 20,
            type = platform_type.type,
            texture = platform_type.texture,
            friction = platform_type.friction,
            bounce = platform_type.bounce,
            special = platform_type.special
        })
        
        -- Add obstacles
        if math.random() < level.obstacle_density then
            local obstacle_type = obstacle_types[math.random(#obstacle_types)]
            table.insert(layout.obstacles, {
                x = current_x + math.random(0, segment_length - obstacle_type.width),
                y = current_y - obstacle_type.height,
                width = obstacle_type.width,
                height = obstacle_type.height,
                type = obstacle_type.type,
                texture = obstacle_type.texture,
                damage = obstacle_type.damage,
                effect = obstacle_type.effect
            })
        end
        
        -- Add power-ups
        if math.random() < level.power_up_spawn_rate then
            table.insert(layout.power_ups, {
                x = current_x + math.random(0, segment_length),
                y = current_y - 40,
                type = "random"
            })
        end
        
        current_x = current_x + segment_length
    end
    
    -- Add checkpoints
    local checkpoint_interval = level.length / 4
    for i = 1, 3 do
        table.insert(layout.checkpoints, {
            x = i * checkpoint_interval,
            y = 100,
            id = i
        })
    end
    
    return layout
end

return level_data