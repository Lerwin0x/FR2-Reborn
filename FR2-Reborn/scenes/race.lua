local composer = require("composer")
local matchFactory = require("game.match")
local hudFactory = require("ui.hud")
local asset = require("engine.asset")
local input = require("engine.input")

local scene = composer.newScene()
local runtime = rawget(_G, "Runtime")
local timerApi = rawget(_G, "timer")
local displayApi = rawget(_G, "display")

if not runtime or not displayApi then
  error("Runtime handle unavailable; ensure Solar2D runtime is initialized")
end

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

  local match = matchFactory.newLocalMatch({ mapId = event.params and event.params.mapId })
  group:insert(match.group)

  local hud = hudFactory.newHud()
  group:insert(hud.view)

  local overlay = displayApi.newGroup()
  group:insert(overlay)

  local jumpButton = newActionButton(overlay, {
    id = "ui_jump_button",
    width = 220,
    height = 220,
    onRelease = function()
      input.emit("jump")
    end
  })
  jumpButton.anchorX = 0
  jumpButton.anchorY = 1
  jumpButton.x = displayApi.safeScreenOriginX + 40
  jumpButton.y = displayApi.safeScreenOriginY + displayApi.actualContentHeight - 36

  local powerButton = newActionButton(overlay, {
    id = "ui_power_button",
    width = 220,
    height = 220,
    onRelease = function()
      input.emit("powerup")
    end
  })
  powerButton.anchorX = 1
  powerButton.anchorY = 1
  powerButton.x = displayApi.safeScreenOriginX + displayApi.actualContentWidth - 40
  powerButton.y = displayApi.safeScreenOriginY + displayApi.actualContentHeight - 36

  self.match = match
  self.hud = hud
  self.overlay = overlay
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
    if self.hud then
      self.hud:destroy()
      self.hud = nil
    end
    if self.overlay and self.overlay.removeSelf then
      self.overlay:removeSelf()
      self.overlay = nil
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

  if self.hud and self.match then
    self.hud:update(self.match)
  end
end

function scene:destroy(event)
  runtime:removeEventListener("enterFrame", self)
  if self.match then
    self.match:destroy()
    self.match = nil
  end
  if self.hud then
    self.hud:destroy()
    self.hud = nil
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
