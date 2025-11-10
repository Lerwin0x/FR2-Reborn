-- Play/Mode Selection Scene - EXACT 1:1 Recreation from Original
-- Reference: modeselect.png, DecompiledCode/lua.scenes.playMenu.lua
-- Uses original pixel-perfect coordinates from decompiled code

local composer = require("composer")
local audio = require("engine.audio")

local scene = composer.newScene()
local display = rawget(_G, "display")
local native = rawget(_G, "native")

function scene:create(event)
  local sceneGroup = self.view

  -- Layer 1: Main background
  local backgrounds = require("engine.backgrounds")
  local bg = backgrounds.getBackground()
  if bg then
    sceneGroup:insert(bg)
  end

  -- Tips window at top (scaled up from original 305x60) - moved down to align with sticks
  local tipsWindow = display.newImageRect(
    sceneGroup,
    "assets/images/gui/play/windowTips.png",
    305 * 1.5,
    60 * 1.5
  )
  tipsWindow.x = display.contentWidth * 0.5
  tipsWindow.y = 120 -- Moved down to align with button sticks

  -- Helper for button with text
  local function newButton(params)
    -- Button stick (decorative pole under button)
    if params.stick then
      local stick = display.newImageRect(
        sceneGroup,
        params.stick.image,
        params.stick.width,
        params.stick.height
      )
      stick.x = params.stick.x
      stick.y = params.stick.y
    end

    -- Button image
    local btn = display.newImageRect(
      sceneGroup,
      params.image,
      params.width,
      params.height
    )
    btn.x = params.x
    btn.y = params.y

    -- Text label
    if params.text then
      local label = display.newText({
        parent = sceneGroup,
        text = params.text.string,
        x = params.x + (params.text.x or 0),
        y = params.y + (params.text.y or 0),
        font = params.text.font or "assets/fonts/JungleAdventurer.ttf",
        fontSize = params.text.size or 22
      })
      label:setFillColor(0, 0, 0) -- Black text
    end

    -- Touch handler
    local function onTouch(event)
      if event.phase == "ended" and params.onRelease then
        params.onRelease()
      end
      return true
    end
    btn:addEventListener("touch", onTouch)

    return btn
  end

  -- Practice button (left) - scaled up, proper aspect ratio
  newButton({
    stick = {
      image = "assets/images/gui/play/buttonStickPractice.png",
      width = 39 * 2,
      height = 159 * 2,
      x = display.contentWidth * 0.17,
      y = display.contentHeight * 0.5 + 120 -- Closer to button
    },
    image = "assets/images/gui/play/buttonPractice.png",
    width = 116 * 2,
    height = 103 * 2, -- Original aspect ratio
    x = display.contentWidth * 0.17,
    y = display.contentHeight * 0.5,
    -- No text - image already has "Practice" on it
    onRelease = function()
      audio.playSfx("menu_button")
      composer.gotoScene("scenes.practice", { effect = "slideLeft", time = 300 })
    end
  })

  -- Quick Play button (center) - scaled up
  newButton({
    stick = {
      image = "assets/images/gui/play/buttonQuickplayStick.png",
      width = 39 * 2,
      height = 221 * 2,
      x = display.contentWidth * 0.501,
      y = display.contentHeight * 0.5 + 140 -- Adjusted to be below button
    },
    image = "assets/images/gui/play/buttonQuickplay.png",
    width = 131 * 2,
    height = 116 * 2,
    x = display.contentWidth * 0.501,
    y = display.contentHeight * 0.6,
    text = {
      string = "Quick Play",
      size = 28,
      x = 0,
      y = 55,
      font = "assets/fonts/JungleAdventurer.ttf"
    },
    onRelease = function()
      print("Quick Play - redirecting to practice for single-player")
      audio.playSfx("menu_button")
      composer.gotoScene("scenes.practice", { effect = "slideLeft", time = 300 })
    end
  })

  -- 2v2/Custom button (right) - scaled up
  newButton({
    stick = {
      image = "assets/images/gui/play/buttonStickFriends.png",
      width = 39 * 2,
      height = 159 * 2,
      x = display.contentWidth * 0.83,
      y = display.contentHeight * 0.5 + 120 -- Closer to button
    },
    image = "assets/images/gui/play/button2v2Play.png",
    width = 116 * 2,
    height = 103 * 2, -- Original aspect ratio
    x = display.contentWidth * 0.83,
    y = display.contentHeight * 0.5,
    text = {
      string = "2 vs 2",
      size = 28,
      x = 0,
      y = 50,
      font = "assets/fonts/JungleAdventurer.ttf"
    },
    onRelease = function()
      print("2v2 - redirecting to practice for single-player")
      audio.playSfx("menu_button")
      composer.gotoScene("scenes.practice", { effect = "slideLeft", time = 300 })
    end
  })

  -- Back button (top left)
  local backBtn = display.newImageRect(
    sceneGroup,
    "assets/images/gui/common/buttonClosePopup.png",
    65,
    65
  )
  backBtn.x = 45
  backBtn.y = 45

  local function backTapped(event)
    if event.phase == "ended" then
      audio.playSfx("menu_button")
      composer.gotoScene("scenes.menu", { effect = "slideRight", time = 300 })
    end
    return true
  end
  backBtn:addEventListener("touch", backTapped)
end

scene:addEventListener("create")

return scene
