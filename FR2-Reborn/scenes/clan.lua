-- Minimal Clan Scene placeholder

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
  local bg = backgrounds.getBackground()
  if bg then
    group:insert(bg)
  end

  asset.newImage({
    parent = group,
    id = "clan_panel_background",
    width = contentWidth * 0.8,
    height = contentHeight * 0.5,
    x = contentWidth * 0.5,
    y = contentHeight * 0.5
  })

  local title = display.newText({
    parent = group,
    text = "Clan",
    x = contentWidth * 0.5,
    y = contentHeight * 0.38,
    font = "assets/fonts/JungleAdventurer.ttf",
    fontSize = 42
  })
  title:setFillColor(1, 1, 1)

  local subtitle = display.newText({
    parent = group,
    text = "Clan hub coming soon!",
    x = contentWidth * 0.5,
    y = contentHeight * 0.5,
    width = contentWidth * 0.6,
    align = "center",
    font = "assets/fonts/JungleAdventurer.ttf",
    fontSize = 20
  })
  subtitle:setFillColor(0.9, 0.9, 0.9)

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
