-- Generic Coming Soon scene for placeholder navigation

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
    text = "Coming Soon!",
    x = contentWidth * 0.5,
    y = contentHeight * 0.48,
    font = "assets/fonts/JungleAdventurer.ttf",
    fontSize = 60
  })
  title:setFillColor(0, 0, 0)

  local closeBtn = asset.newImage({
    parent = group,
    id = "button_close",
    width = 62,
    height = 56,
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
