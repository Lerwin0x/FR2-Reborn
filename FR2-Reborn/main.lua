-- Source: OriginalSourceCode/assets (rewritten)
-- Behavior inferred from DecompiledLua/lua (rewritten)

local composer = require("composer")
local random = require("engine.random")
local time = require("engine.time")

local display = rawget(_G, "display")

display.setStatusBar(display.HiddenStatusBar)

random.seed(0)
time.markStartup()

-- Load through original loading screen
composer.gotoScene("scenes.loading", {
  effect = "fade",
  time = 0,
  params = {
    targetScene = "scenes.menu"
  }
})
