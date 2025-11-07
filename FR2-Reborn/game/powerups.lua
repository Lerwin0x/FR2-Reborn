local constants = require("game.constants")
local random = require("engine.random")
local audio = require("engine.audio")

local M = {}

local registry = {}

local speedBoost = {
  id = "speed_boost",
  icon = "power_icon_speed",
  pickupSound = "pickup",
  activateSound = "power_speed"
}

function speedBoost.grant(runner)
  runner:grantPowerUp(speedBoost.id, speedBoost)
  audio.playSfx(speedBoost.pickupSound)
end

function speedBoost.activate(runner)
  runner:activateSpeedBoost(constants.runner.speedBoostMultiplier, constants.runner.speedBoostDuration)
end

registry[speedBoost.id] = speedBoost

function M.get(id)
  return registry[id]
end

function M.random()
  local ids = {}
  for key in pairs(registry) do
    ids[#ids + 1] = key
  end
  if #ids == 0 then
    return nil
  end
  local index = math.floor(random.randomRange(1, #ids + 1))
  return registry[ids[index]]
end

return M
