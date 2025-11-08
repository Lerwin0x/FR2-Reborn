-- Main Menu Scene - EXACT 1:1 Recreation from Original
-- Reference: mainscreen.png, DecompiledCode/lua.scenes.mainMenu.lua
-- Uses NO SCALING - original pixel-perfect coordinates

local composer = require("composer")
local audio = require("engine.audio")

local scene = composer.newScene()
local display = rawget(_G, "display")

function scene:create(event)
  local sceneGroup = self.view

  -- Background - just use the bgMain without the oval overlay
  local backgrounds = require("engine.backgrounds")
  local bg = backgrounds.getBackground()
  if bg then
    sceneGroup:insert(bg)
  end

  -- Fun Run 2 Logo (top center)
  local logo = display.newImageRect(
    sceneGroup,
    "assets/images/gui/common/logo.png",
    400,
    200
  )
  logo.x = display.contentWidth * 0.5
  logo.y = 150

  -- Helper function for buttons
  local function newButton(params)
    local btn = display.newImageRect(
      sceneGroup,
      params.image,
      params.width,
      params.height
    )
    btn.x = params.x
    btn.y = params.y

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

  -- Play button (main CTA)
  local playBtn = newButton({
    image = "assets/images/gui/mainMenu/buttonPlayX.png",
    width = 245,
    height = 122,
    x = display.contentWidth * 0.5,
    y = display.contentHeight * 0.6,
    onRelease = function()
      audio.playSfx("menu_button")
      composer.gotoScene("scenes.playMenu", { effect = "slideLeft", time = 300 })
    end
  })

  -- Play button stick (decorative background for play button) - positioned below play button
  local playStick = display.newImageRect(
    sceneGroup,
    "assets/images/gui/mainMenu/buttonPlayStick.png",
    70,
    97
  )
  playStick.x = display.contentWidth * 0.5
  playStick.y = display.contentHeight * 0.6 + 100

  -- Settings (top right corner)
  newButton({
    image = "assets/images/gui/mainMenu/buttonSettings.png",
    width = 85,
    height = 85,
    x = display.contentWidth - 50,
    y = 50,
    onRelease = function()
      print("Settings not implemented")
    end
  })

  -- Market (left of play button)
  newButton({
    image = "assets/images/gui/mainMenu/buttonMarket.png",
    width = 95,
    height = 95,
    x = display.contentWidth * 0.26,
    y = display.contentHeight * 0.6,
    onRelease = function()
      print("Market not implemented")
    end
  })

  -- Leaderboards (right of play button)
  newButton({
    image = "assets/images/gui/mainMenu/buttonLeaderboards.png",
    width = 95,
    height = 95,
    x = display.contentWidth * 0.74,
    y = display.contentHeight * 0.6,
    onRelease = function()
      print("Leaderboards not implemented")
    end
  })

  -- Achievements (bottom left)
  newButton({
    image = "assets/images/gui/mainMenu/buttonAchievements.png",
    width = 85,
    height = 85,
    x = 50,
    y = display.contentHeight - 50,
    onRelease = function()
      print("Achievements not implemented")
    end
  })

  -- Friends (bottom right)
  newButton({
    image = "assets/images/gui/mainMenu/buttonFriends.png",
    width = 85,
    height = 85,
    x = display.contentWidth - 50,
    y = display.contentHeight - 50,
    onRelease = function()
      print("Friends not implemented")
    end
  })
end

scene:addEventListener("create")

return scene
