-- Source: OriginalSourceCode/assets/config/storeConfig.json (rewritten)
-- Behavior inferred from DecompiledLua/lua.game.powerups.powerupsImageSheet.lua (rewritten)

local constants = require("game.constants")
local random = require("engine.random")

local M = {}
local registry = {}

function M.register(id, spec)
  registry[id] = spec
end

function M.get(id)
  return registry[id]
end

function M.roll()
  local available = {}
  for id in pairs(registry) do
    available[#available + 1] = id
  end
  if #available == 0 then
    return nil
  end
  local index = math.floor(random.randomRange(1, #available + 1))
  return registry[available[index]]
end

-- Example placeholder power-up for early loop validation.
M.register("speed_boost", {
  duration = 2,
  apply = function(runner)
    runner.velocity = math.min(runner.velocity + (constants.runner.maxSpeed * 0.5), constants.runner.maxSpeed * 1.2)
  end
})

return M
