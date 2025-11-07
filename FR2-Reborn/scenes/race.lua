-- Source: OriginalSourceCode/assets/lua/map (rewritten)
-- Behavior inferred from DecompiledLua/lua.game.effects.fireworksHandler.lua (rewritten)

local composer = require("composer")
local physics = require("engine.physics")
local matchFactory = require("game.match")
local hudFactory = require("ui.hud")

local scene = composer.newScene()
local runtime = _G.Runtime
local timerApi = rawget(_G, "timer")
local displayApi = rawget(_G, "display")

if not runtime or not displayApi then
  error("Runtime handle unavailable; ensure Solar2D runtime is initialized")
end

function scene:create(event)
  local group = self.view

  local background = displayApi.newRect(group, displayApi.contentCenterX, displayApi.contentCenterY,
    displayApi.actualContentWidth, displayApi.actualContentHeight)
  background:setFillColor(0.1, 0.1, 0.2)

  local match = matchFactory.newLocalMatch({ bots = 3 })
  group:insert(match.group)

  local hud = hudFactory.newHud()
  group:insert(hud.view)

  self.match = match
  self.hud = hud
  self._lastUpdate = nil
end

function scene:show(event)
  if event.phase == "will" then
    physics.start()
    self._lastUpdate = event.time
  elseif event.phase == "did" then
    runtime:addEventListener("enterFrame", self)
  end
end

function scene:hide(event)
  if event.phase == "will" then
    runtime:removeEventListener("enterFrame", self)
  elseif event.phase == "did" then
    physics.stop()
  end
end

function scene:enterFrame(event)
  if not self._lastUpdate then
    self._lastUpdate = event.time
  end
  local dt = (event.time - self._lastUpdate) / 1000
  self._lastUpdate = event.time

  self.match:update(dt)
  self.hud:update(self.match)

  if self.match:getState() == "finished" then
    runtime:removeEventListener("enterFrame", self)
    if timerApi then
      timerApi.performWithDelay(750, function()
        composer.gotoScene("scenes.results",
          { effect = "slideLeft", time = 400, params = { results = self.match:getResults() } })
      end)
    else
      composer.gotoScene("scenes.results",
        { effect = "slideLeft", time = 400, params = { results = self.match:getResults() } })
    end
  end
end

function scene:destroy(event)
  runtime:removeEventListener("enterFrame", self)
  if self.hud then
    self.hud:destroy()
    self.hud = nil
  end
end

scene:addEventListener("create")
scene:addEventListener("show")
scene:addEventListener("hide")
scene:addEventListener("destroy")
scene:addEventListener("enterFrame")

return scene
