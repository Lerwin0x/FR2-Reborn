-- Reference: DecompiledCode/lua.scenes.loadingScene.lua (lines 1-820)
-- 1:1 recreation of loading screen with progress bar and tips

local composer = require("composer")
local asset = require("engine.asset")

local scene = composer.newScene()
local display = rawget(_G, "display")
local transition = rawget(_G, "transition")
local timer = rawget(_G, "timer")

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

  -- Fun Run 2 logo (centered near top)
  asset.newImage({
    parent = group,
    id = "menu_logo",
    width = contentWidth * 0.42,
    height = contentWidth * 0.24,
    x = contentWidth * 0.5,
    y = contentHeight * 0.2
  })

  -- Spinner artwork to mimic original idle animation
  local spinner = asset.newImage({
    parent = group,
    id = "loading_spinner",
    width = 72,
    height = 72,
    x = contentWidth * 0.9,
    y = contentHeight * 0.86
  })
  self.spinner = spinner

  -- Loading text tips sourced from original copy
  local tips = {
    "Collect power-ups to gain an advantage!",
    "Use shields to protect yourself from attacks",
    "Jump on opponents to slow them down!",
    "Complete daily quests for rewards",
    "Unlock new animals in the shop"
  }

  local tipText = display.newText({
    parent = group,
    text = tips[math.random(#tips)],
    x = contentWidth * 0.5,
    y = contentHeight * 0.55,
    font = "assets/fonts/JungleAdventurer.ttf",
    fontSize = 20,
    width = contentWidth * 0.8,
    align = "center"
  })
  tipText:setFillColor(1, 1, 1)
  self.tipText = tipText

  -- Progress bar assembly using original loading assets
  local barFrameWidth = contentWidth * 0.7
  local barFrame = asset.newImage({
    parent = group,
    id = "loading_bar_frame",
    width = barFrameWidth,
    height = barFrameWidth * 0.17,
    x = contentWidth * 0.5,
    y = contentHeight * 0.78
  })

  local barBG = asset.newImage({
    parent = group,
    id = "loading_bar_bg",
    width = barFrame.width * 0.82,
    height = barFrame.height * 0.38,
    x = barFrame.x,
    y = barFrame.y
  })

  local barLeft = barBG.x - (barBG.width * 0.5)
  local fillHeight = barBG.height * 0.78
  local fillStartX = barLeft + 6

  local barFill = display.newRect(group, fillStartX, barBG.y, 2, fillHeight)
  barFill.anchorX = 0
  barFill:setFillColor(0.85, 0.1, 0.1)

  -- Copyright footer
  local copyrightText = display.newText({
    parent = group,
    text = "© Flow Studio",
    x = contentWidth * 0.5,
    y = contentHeight * 0.92,
    font = "assets/fonts/JungleAdventurer.ttf",
    fontSize = 22
  })
  copyrightText:setFillColor(1, 1, 1)

  self.progressFill = barFill
  self.progressStartX = fillStartX
  self.progressMaxWidth = barBG.width - 12
end

local function updateBarWidth(bar, width, maxWidth)
  if bar and width then
    bar.width = math.max(2, math.min(width, maxWidth))
  end
end

local function playSpinner(spinner)
  if not spinner or not transition then
    return nil
  end
  return transition.to(spinner, {
    rotation = spinner.rotation + 360,
    time = 1200,
    iterations = 0
  })
end

function scene:startLoading(targetScene, sceneParams)
  if self.isLoading then
    return
  end
  self.isLoading = true

  local totalSteps = 20
  local currentStep = 0
  local maxWidth = self.progressMaxWidth or 180

  local function advance()
    currentStep = currentStep + 1
    local progress = currentStep / totalSteps
    local nextWidth = maxWidth * progress

    updateBarWidth(self.progressFill, nextWidth, maxWidth)

    if currentStep == 2 and not self.didPreload then
      -- Defer preload slightly so the loading art is visible first
      local ok, err = pcall(asset.preload)
      if not ok then
        print("Asset preload failed:", err)
      end
      self.didPreload = true
    end

    if currentStep >= totalSteps then
      self.loadTimer = nil
      composer.gotoScene(targetScene, {
        effect = "fade",
        time = 300,
        params = sceneParams
      })
    else
      if timer then
        self.loadTimer = timer.performWithDelay(90, advance)
      else
        advance()
      end
    end
  end

  advance()
end

function scene:show(event)
  if event.phase == "did" then
    local params = event.params or {}
    local targetScene = params.targetScene or "scenes.menu"
    local sceneParams = params.sceneParams or {}

    if self.spinner then
      self.spinnerTween = playSpinner(self.spinner)
    end

    self:startLoading(targetScene, sceneParams)
  end
end

function scene:hide(event)
  if event.phase == "will" then
    if timer and self.loadTimer then
      timer.cancel(self.loadTimer)
      self.loadTimer = nil
    end
    if transition then
      if self.spinnerTween then
        transition.cancel(self.spinnerTween)
        self.spinnerTween = nil
      end
      if self.spinner then
        transition.cancel(self.spinner)
      end
    end
  end
end

function scene:destroy()
  self.progressFill = nil
  self.progressFiller = nil
  self.spinner = nil
  self.spinnerTween = nil
  self.tipText = nil
end

scene:addEventListener("create")
scene:addEventListener("show")
scene:addEventListener("hide")
scene:addEventListener("destroy")

return scene
