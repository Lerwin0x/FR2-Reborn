-- Source: OriginalSourceCode/assets/images/game (rewritten)
-- Behavior inferred from DecompiledLua/lua.game.powerups.puArmor.lua (rewritten)

local constants = require("game.constants")

local M = {}

function M.newRunner(params)
  local id = params.id
  local color = params.color or { 0.3, 0.6, 0.9 }

  local group = display.newGroup()
  local body = display.newCircle(group, 0, 0, 24)
  body:setFillColor(unpack(color))

  local runner = {
    id = id,
    view = group,
    velocity = 0,
    progress = 0,
    finished = false
  }

  function runner:update(dt)
    if self.finished then
      return
    end
    self.velocity = math.min(self.velocity + (constants.runner.acceleration * dt), constants.runner.maxSpeed)
    self.progress = self.progress + (self.velocity * dt)
    self.view.x = self.progress
  end

  function runner:reset()
    self.velocity = constants.runner.baseSpeed
    self.progress = 0
    self.view.x = 0
    self.finished = false
  end

  runner:reset()

  return runner
end

return M
