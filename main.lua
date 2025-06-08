-- main.lua - Fun Run 2: Reborn Entry Point
-----------------------------------------------------------------------------------------

-- Hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- Require composer for scene management
local composer = require("composer")

-- Require physics engine
local physics = require("physics")

-- Initialize physics
physics.start()
physics.setGravity(0, 9.8)
physics.setDrawMode("normal") -- Change to "debug" for physics debugging

-- Load configuration files
local gameConfig = require("config.game_config")

-- Set default scene transition options
local options = {
    effect = "slideLeft",
    time = 300
}

-- Start with the menu scene
composer.gotoScene("scenes.menu", options)

-- Global error handling
local function unhandledErrorListener(event)
    print("Unhandled error: " .. tostring(event.errorMessage))
    print("Stack traceback:")
    print(event.stackTrace)
    return false
end

Runtime:addEventListener("unhandledError", unhandledErrorListener)