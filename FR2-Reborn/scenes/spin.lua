-- Reference: DecompiledCode (spinning wheel mechanics)
-- Using ONLY original wheel assets

local composer = require("composer")
local asset = require("engine.asset")
local audio = require("engine.audio")

local scene = composer.newScene()
local display = rawget(_G, "display")

function scene:create(event)
  local group = self.view
  local contentWidth = display.contentWidth
  local contentHeight = display.contentHeight

  -- Background
  local backgrounds = require("engine.backgrounds")
  local bg = backgrounds.getBlurredBackground()
  if bg then
    group:insert(bg)
  end

  -- Wheel window (original asset) - scaled to fit
  local wheelWindow = asset.newImage({
    parent = group,
    id = "wheel_window",
    width = contentWidth * 0.9,
    height = contentHeight * 0.8,
    x = contentWidth * 0.5,
    y = contentHeight * 0.5
  })

  -- Wheel mid/center (original asset) - scaled
  local wheelMid = asset.newImage({
    parent = group,
    id = "wheel_mid",
    width = contentWidth * 0.6,
    height = contentWidth * 0.6,
    x = contentWidth * 0.5,
    y = contentHeight * 0.5
  })

  -- Arrow pointer (original asset) - proper size
  local arrow = asset.newImage({
    parent = group,
    id = "wheel_arrow",
    width = 60,
    height = 100,
    x = contentWidth * 0.5,
    y = contentHeight * 0.3
  })

  -- Close button - proper size
  local closeBtn = asset.newImage({
    parent = group,
    id = "button_close",
    width = 43,
    height = 38,
    x = 30,
    y = 40
  })

  local function onCloseTap(event)
    if event.phase == "ended" then
      audio.playSfx("menu_button")
      composer.gotoScene("scenes.menu", { effect = "fade", time = 300 })
    end
    return true
  end
  closeBtn:addEventListener("touch", onCloseTap)
end

scene:addEventListener("create")

return scene
