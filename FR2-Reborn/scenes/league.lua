-- Reference: DecompiledCode/lua.scenes.ranking.lua
-- Using ONLY original ranking assets

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
  local bg = backgrounds.getBackground()
  if bg then
    group:insert(bg)
  end

  -- Main overlay (original asset) - scaled to fit
  local mainOverlay = asset.newImage({
    parent = group,
    id = "ranking_main_overlay",
    width = contentWidth * 0.9,
    height = contentHeight * 0.85,
    x = contentWidth * 0.5,
    y = contentHeight * 0.5
  })

  -- Info area (original asset) - scaled
  local infoArea = asset.newImage({
    parent = group,
    id = "ranking_info_area",
    width = contentWidth * 0.85,
    height = 100,
    x = contentWidth * 0.5,
    y = 100
  })

  -- Dynamic top (original asset) - scaled
  local dynamicTop = asset.newImage({
    parent = group,
    id = "ranking_dynamic_top",
    width = contentWidth * 0.8,
    height = 50,
    x = contentWidth * 0.5,
    y = 180
  })

  -- Ranking cells (original assets) - proper size
  local cellY = 250
  for i = 1, 5 do
    local cell = asset.newImage({
      parent = group,
      id = "ranking_cell",
      width = contentWidth * 0.75,
      height = 60,
      x = contentWidth * 0.5,
      y = cellY + ((i - 1) * 65)
    })
  end

  -- Dynamic bottom (original asset) - scaled
  local dynamicBot = asset.newImage({
    parent = group,
    id = "ranking_dynamic_bot",
    width = contentWidth * 0.8,
    height = 50,
    x = contentWidth * 0.5,
    y = contentHeight - 100
  })

  -- Close button
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
      composer.gotoScene("scenes.menu", { effect = "slideRight", time = 300 })
    end
    return true
  end
  closeBtn:addEventListener("touch", onCloseTap)
end

scene:addEventListener("create")

return scene
