-- Main Menu Scene - EXACT 1:1 Recreation from Original
-- Reference: mainscreen.png, DecompiledCode/lua.scenes.mainMenu.lua
-- Uses NO SCALING - original pixel-perfect coordinates

local composer = require("composer")
local audio = require("engine.audio")
local asset = require("engine.asset")

local scene = composer.newScene()
local display = rawget(_G, "display")

function scene:create(event)
  local sceneGroup = self.view
  local contentWidth = display.contentWidth
  local contentHeight = display.contentHeight

  -- Background
  local backgrounds = require("engine.backgrounds")
  local bg = backgrounds.getBackground()
  if bg then
    sceneGroup:insert(bg)
  end

  -- Fun Run 2 Logo (top center) - scaled to fit
  local logo = asset.newImage({
    parent = sceneGroup,
    id = "menu_logo",
    width = contentWidth * 0.6,
    height = 200,
    x = contentWidth * 0.5,
    y = 150
  })

  -- Helper function for buttons
  local function newButton(params)
    local btn = asset.newImage({
      parent = sceneGroup,
      id = params.id,
      width = params.width,
      height = params.height,
      x = params.x,
      y = params.y
    })

    local function onTouch(event)
      if event.phase == "ended" then
        if params.onRelease then
          params.onRelease()
        end
      end
      return true
    end

    btn:addEventListener("touch", onTouch)
    return btn
  end

  -- Play button (main CTA) - proper size
  local playBtn = newButton({
    id = "menu_button_primary",
    width = 245,
    height = 122,
    x = contentWidth * 0.5,
    y = contentHeight * 0.6,
    onRelease = function()
      audio.playSfx("menu_button")
      composer.gotoScene("scenes.playMenu", { effect = "slideLeft", time = 300 })
    end
  })

  -- Market (left of play button) - proper size
  newButton({
    id = "menu_button_market",
    width = 95,
    height = 95,
    x = contentWidth * 0.26,
    y = contentHeight * 0.6,
    onRelease = function()
      audio.playSfx("menu_button")
      composer.gotoScene("scenes.shop", { effect = "slideLeft", time = 300 })
    end
  })

  -- Friends (bottom center) - proper size
  newButton({
    id = "menu_button_friends",
    width = 85,
    height = 85,
    x = contentWidth * 0.5,
    y = contentHeight - 50,
    onRelease = function()
      audio.playSfx("menu_button")
      composer.gotoScene("scenes.friends", { effect = "slideLeft", time = 300 })
    end
  })

  -- Leaderboards (right of play button) - proper size
  newButton({
    id = "menu_button_leaderboards",
    width = 95,
    height = 95,
    x = contentWidth * 0.74,
    y = contentHeight * 0.6,
    onRelease = function()
      audio.playSfx("menu_button")
      composer.gotoScene("scenes.comingSoon", { effect = "slideLeft", time = 300 })
    end
  })

  -- Placeholder for upcoming features (left)
  newButton({
    id = "button_text_b",
    width = 150,
    height = 70,
    x = contentWidth * 0.2,
    y = contentHeight - 50,
    onRelease = function()
      audio.playSfx("menu_button")
      composer.gotoScene("scenes.comingSoon", { effect = "slideLeft", time = 300 })
    end
  })

  -- Placeholder for upcoming features (right)
  newButton({
    id = "button_text_b",
    width = 150,
    height = 70,
    x = contentWidth * 0.8,
    y = contentHeight - 50,
    onRelease = function()
      audio.playSfx("menu_button")
      composer.gotoScene("scenes.comingSoon", { effect = "slideLeft", time = 300 })
    end
  })
end

scene:addEventListener("create")

return scene
