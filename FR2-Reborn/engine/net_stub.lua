-- Source: OriginalSourceCode/assets/config/awards.json (rewritten)
-- Behavior inferred from DecompiledLua/lua.ads.rewardedVideoPoolInfo.lua (rewritten)

local random = require("engine.random")

local M = {}

local defaultLatency = 60

function M.configure(options)
  defaultLatency = options and options.latency or defaultLatency
end

function M.requestRaceSnapshot(racers)
  local snapshot = {}
  for index, racer in ipairs(racers) do
    snapshot[index] = {
      id = racer.id,
      progress = racer.progress,
      velocity = racer.velocity
    }
  end
  return snapshot
end

function M.syncDelay()
  return defaultLatency + random.randomRange(-15, 15)
end

return M
