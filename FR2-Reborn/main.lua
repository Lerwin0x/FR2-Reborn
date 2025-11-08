-- Source: OriginalSourceCode/assets (rewritten)
-- Behavior inferred from DecompiledLua/lua (rewritten)

local composer = require("composer")
local random = require("engine.random")
local time = require("engine.time")
local asset = require("engine.asset")

display.setStatusBar(display.HiddenStatusBar)

random.seed(0)
time.markStartup()

-- Preload assets (textures, sounds, sheets)
asset.preload()

-- Load main menu
composer.gotoScene("scenes.menu")
