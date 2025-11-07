-- Source: OriginalSourceCode/assets (rewritten)
-- Behavior inferred from DecompiledLua/lua (rewritten)

local composer = require("composer")
local random = require("engine.random")
local time = require("engine.time")

display.setStatusBar(display.HiddenStatusBar)

random.seed(0)
time.markStartup()

composer.gotoScene("scenes.boot")
