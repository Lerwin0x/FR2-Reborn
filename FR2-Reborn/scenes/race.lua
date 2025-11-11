-- Source: OriginalSourceCode/assets (pixel-perfect recreation)
-- Coordinates from DecompiledCode/lua.scenes.gamePlay.lua
-- Reference: ingame.png

local composer = require("composer")
local matchFactory = require("game.match")
local asset = require("engine.asset")
local input = require("engine.input")

local scene = composer.newScene()
local runtime = rawget(_G, "Runtime")
local timerApi = rawget(_G, "timer")
local displayApi = rawget(_G, "display")
local nativeApi = rawget(_G, "native")

if not runtime or not displayApi then
  error("Runtime handle unavailable; ensure Solar2D runtime is initialized")
end

-- Action button factory matching original game
local function newActionButton(parent, params)
  local button = asset.newImage({
    parent = parent,
    id = params.id,
    width = params.width,
    height = params.height
  })
  button.alpha = params.alpha or 0.9

  local stage = displayApi.getCurrentStage and displayApi.getCurrentStage()

  local function onTouch(event)
    if event.phase == "began" then
      if stage then
        stage:setFocus(button)
      end
      button.isPressed = true
      button.xScale = 0.95
      button.yScale = 0.95
      return true
    end

    if not button.isPressed then
      return false
    end

    if event.phase == "ended" or event.phase == "cancelled" then
      if stage then
        stage:setFocus(nil)
      end
      button.xScale = 1
      button.yScale = 1
      local shouldFire = event.phase == "ended"
      button.isPressed = false
      if shouldFire and params.onRelease then
        params.onRelease()
      end
      return true
    end

    return false
  end

  button:addEventListener("touch", onTouch)
  return button
end

function scene:create(event)
  local group = self.view
  local contentWidth = displayApi.contentWidth
  local contentHeight = displayApi.contentHeight

  local match = matchFactory.newLocalMatch({ mapId = event.params and event.params.mapId })
  group:insert(match.group)

  -- HUD Group (on top of game)
  local hudGroup = displayApi.newGroup()
  group:insert(hudGroup)

  -- Position text (top center) - exact coordinates from original
  local positionText = displayApi.newText({
    parent = hudGroup,
    text = "1st",
    x = contentWidth * 0.5,
    y = displayApi.safeScreenOriginY + 60, -- Top of screen
    font = "assets/fonts/JungleAdventurer.ttf",
    fontSize = 72
  })
  positionText:setFillColor(1, 1, 1) -- White color

  -- Position indicators at bottom (4 runners) - MOVED FURTHER DOWN
  local positionIndicators = {}
  local indicatorWidth = 60
  local indicatorHeight = 60
  local spacing = 20
  local totalWidth = (indicatorWidth * 4) + (spacing * 3)
  local startX = (contentWidth - totalWidth) / 2
  local bottomY = contentHeight - displayApi.safeScreenOriginY - 80 -- Much lower, closer to bottom

  for i = 1, 4 do
    local indicator = displayApi.newGroup()
    hudGroup:insert(indicator)

    -- Background circle
    local circle = displayApi.newCircle(indicator, 0, 0, indicatorWidth / 2)
    circle:setFillColor(0.2, 0.2, 0.2, 0.7)
    circle.strokeWidth = 3
    circle:setStrokeColor(1, 1, 1, 0.8)

    -- Position number
    local posNum = displayApi.newText({
      parent = indicator,
      text = tostring(i),
      x = 0,
      y = 0,
      font = "assets/fonts/JungleAdventurer.ttf",
      fontSize = 32
    })
    posNum:setFillColor(1, 1, 1)

    indicator.x = startX + (i - 1) * (indicatorWidth + spacing) + indicatorWidth / 2
    indicator.y = bottomY
    indicator.circle = circle
    indicator.posNum = posNum

    positionIndicators[i] = indicator
  end

  self.positionIndicators = positionIndicators

  -- Countdown sprites (3, 2, 1, GO!)
  local countdownSprites = {}
  local countdownSequence = {
    { threshold = 2.5,        id = "countdown_3" },
    { threshold = 1.5,        id = "countdown_2" },
    { threshold = 0.5,        id = "countdown_1" },
    { threshold = -math.huge, id = "countdown_go" }
  }

  for index = 1, #countdownSequence do
    local sprite = asset.newImage({
      parent = hudGroup,
      id = countdownSequence[index].id,
      width = 300,
      height = 260
    })
    sprite.isVisible = false
    sprite.x = contentWidth * 0.5
    sprite.y = displayApi.safeScreenOriginY + 140
    countdownSprites[index] = { view = sprite, threshold = countdownSequence[index].threshold }
  end

  -- Controls overlay (buttons)
  local overlay = displayApi.newGroup()
  group:insert(overlay)

  -- Powerup button (bottom LEFT) - properly aligned
  local powerButton = newActionButton(overlay, {
    id = "ui_power_button",
    width = 140,
    height = 140,
    alpha = 1,
    onRelease = function()
      input.emit("powerup")
    end
  })
  powerButton.anchorX = 0
  powerButton.anchorY = 1
  powerButton.x = 20                 -- Fixed alignment from left edge
  powerButton.y = contentHeight - 20 -- Fixed alignment from bottom

  -- Jump button (bottom RIGHT) - properly aligned
  local jumpButton = newActionButton(overlay, {
    id = "ui_jump_button",
    width = 140,
    height = 140,
    onRelease = function()
      input.emit("jump")
    end
  })
  jumpButton.anchorX = 1
  jumpButton.anchorY = 1
  jumpButton.x = contentWidth - 20  -- Fixed alignment from right edge
  jumpButton.y = contentHeight - 20 -- Fixed alignment from bottom

  -- Powerup icon overlay (question mark - centered on powerButton)
  local powerIcon = displayApi.newRect(overlay, 0, 0, 84, 84)
  powerIcon.anchorX = 0.5
  powerIcon.anchorY = 0.5
  powerIcon.x = powerButton.x + (powerButton.width * 0.5)
  powerIcon.y = powerButton.y - (powerButton.height * 0.5)
  powerIcon.isVisible = false
  powerIcon.currentIcon = nil

  -- Pause button (top right) - moved more to left and made functional
  local pauseButton = newActionButton(overlay, {
    id = "ui_pause_button",
    width = 100,
    height = 100,
    onRelease = function()
      -- Exit to menu
      composer.gotoScene("scenes.menu", {
        effect = "slideRight",
        time = 400
      })
    end
  })
  pauseButton.anchorX = 1
  pauseButton.anchorY = 0
  pauseButton.x = displayApi.safeScreenOriginX + displayApi.actualContentWidth - 80 -- Moved left
  pauseButton.y = displayApi.safeScreenOriginY + 20

  self.match = match
  self.hudGroup = hudGroup
  self.positionText = positionText
  self.countdownSprites = countdownSprites
  self.overlay = overlay
  self.jumpButton = jumpButton
  self.powerButton = powerButton
  self.powerIcon = powerIcon
  self._lastUpdate = nil
  self._finishTriggered = false
end

function scene:show(event)
  if event.phase == "did" then
    runtime:addEventListener("enterFrame", self)
  elseif event.phase == "will" then
    self._lastUpdate = event.time
  end
end

function scene:hide(event)
  if event.phase == "will" then
    runtime:removeEventListener("enterFrame", self)
  elseif event.phase == "did" then
    if self.match then
      self.match:destroy()
      self.match = nil
    end
    if self.hudGroup and self.hudGroup.removeSelf then
      self.hudGroup:removeSelf()
      self.hudGroup = nil
    end
    if self.overlay and self.overlay.removeSelf then
      self.overlay:removeSelf()
      self.overlay = nil
    end
  end
end

-- Helper function for position ordinal
local function getOrdinal(place)
  if place == 1 then
    return "1st"
  elseif place == 2 then
    return "2nd"
  elseif place == 3 then
    return "3rd"
  else
    return place .. "th"
  end
end

-- Helper function for countdown display
local function showCountdownSprite(sprites, remaining)
  local shown = false
  for index = 1, #sprites do
    local entry = sprites[index]
    local shouldShow = false
    if not shown then
      if index == #sprites then
        shouldShow = remaining <= 0.15
      else
        shouldShow = remaining > entry.threshold
      end
    end
    entry.view.isVisible = shouldShow
    if shouldShow then
      shown = true
    end
  end
end

function scene:enterFrame(event)
  if not self._lastUpdate then
    self._lastUpdate = event.time
    return
  end

  local dt = (event.time - self._lastUpdate) / 1000
  self._lastUpdate = event.time

  if self.match then
    self.match:update(dt)

    -- Update position display
    if self.positionText then
      local position = self.match:getPosition() or 1
      self.positionText.text = getOrdinal(position)
    end

    -- Update position indicators at bottom
    if self.positionIndicators then
      local standings = self.match:getStandings() or {}
      for i = 1, 4 do
        local indicator = self.positionIndicators[i]
        if indicator and standings[i] then
          local runner = standings[i]
          -- All indicators white, highlight player's position with brighter white
          if runner.id == "player" then
            indicator.circle:setFillColor(1, 1, 1, 0.9) -- Bright white for player
            indicator.circle:setStrokeColor(1, 1, 1, 1) -- White border
          else
            indicator.circle:setFillColor(0.2, 0.2, 0.2, 0.7)
            indicator.circle:setStrokeColor(1, 1, 1, 0.8)
          end
        end
      end
    end

    -- Update countdown sprites
    if self.match:getState() == "countdown" then
      showCountdownSprite(self.countdownSprites, self.match:getCountdown())
    else
      for index = 1, #self.countdownSprites do
        self.countdownSprites[index].view.isVisible = false
      end
    end

    -- Update powerup icon display - show question mark when powerup available
    if self.powerIcon then
      local slot = self.match:getPowerSlot()
      if slot and slot.icon then
        if self.powerIcon.currentIcon ~= slot.icon then
          local ok, texture = pcall(asset.requireTexture, slot.icon)
          if ok and texture then
            self.powerIcon.fill = { type = "image", filename = texture }
            self.powerIcon.currentIcon = slot.icon
          else
            local fallback = asset.getTexture("hud_power_icon_placeholder")
            if fallback then
              self.powerIcon.fill = { type = "image", filename = fallback }
            end
            self.powerIcon.currentIcon = nil
          end
        end
        self.powerIcon.isVisible = true
      else
        self.powerIcon.isVisible = false
        self.powerIcon.currentIcon = nil
      end
    end

    -- Check for race finish
    if self.match:getState() == "finished" and not self._finishTriggered then
      self._finishTriggered = true
      runtime:removeEventListener("enterFrame", self)
      local function gotoResults()
        composer.gotoScene("scenes.results", {
          effect = "slideLeft",
          time = 400,
          params = self.match and self.match:getSummary() or {}
        })
      end
      if timerApi then
        timerApi.performWithDelay(600, gotoResults)
      else
        gotoResults()
      end
    end
  end
end

function scene:destroy(event)
  runtime:removeEventListener("enterFrame", self)
  if self.match then
    self.match:destroy()
    self.match = nil
  end
  if self.hudGroup and self.hudGroup.removeSelf then
    self.hudGroup:removeSelf()
    self.hudGroup = nil
  end
  if self.overlay and self.overlay.removeSelf then
    self.overlay:removeSelf()
    self.overlay = nil
  end
end

scene:addEventListener("create")
scene:addEventListener("show")
scene:addEventListener("hide")
scene:addEventListener("destroy")
scene:addEventListener("enterFrame")

return scene
