-- Minimal Shop Scene placeholder

local composer = require("composer")
local asset = require("engine.asset")
local audio = require("engine.audio")

local scene = composer.newScene()
local display = rawget(_G, "display")

function scene:create(event)
  local group = self.view
  local contentWidth = display.contentWidth
  local contentHeight = display.contentHeight

  local backgrounds = require("engine.backgrounds")
  local bg = backgrounds.getBlurredBackground()
  if bg then
    group:insert(bg)
  end

  local title = display.newText({
    parent = group,
    text = "Shop",
    x = contentWidth * 0.5,
    y = contentHeight * 0.46,
    font = "assets/fonts/JungleAdventurer.ttf",
    fontSize = 56
  })
  title:setFillColor(0, 0, 0)

  local subtitle = display.newText({
    parent = group,
    text = "Content coming soon!",
    x = contentWidth * 0.5,
    y = contentHeight * 0.58,
    width = contentWidth * 0.7,
    align = "center",
    font = "assets/fonts/JungleAdventurer.ttf",
    fontSize = 28
  })
  subtitle:setFillColor(0, 0, 0)

  local closeBtn = asset.newImage({
    parent = group,
    id = "button_close",
    width = 60,
    height = 54,
    x = 40,
    y = 40
  })

  closeBtn:addEventListener("touch", function(event)
    if event.phase == "ended" then
      audio.playSfx("menu_button")
      composer.gotoScene("scenes.menu", { effect = "slideRight", time = 300 })
    end
    return true
  end)
end

scene:addEventListener("create")

return scene
