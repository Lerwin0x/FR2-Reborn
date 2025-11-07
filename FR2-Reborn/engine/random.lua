-- Source: OriginalSourceCode/assets/config/config.json (rewritten)
-- Behavior inferred from DecompiledLua/config.physics.shared_special.lua (rewritten)

local M = {}
local activeSeed = 0

local function reseed()
  math.random()
  math.random()
  math.random()
end

function M.seed(value)
  activeSeed = value or 0
  math.randomseed(activeSeed)
  reseed()
  return activeSeed
end

function M.getSeed()
  return activeSeed
end

function M.random()
  return math.random()
end

function M.randomRange(minValue, maxValue)
  return minValue + (math.random() * (maxValue - minValue))
end

return M
