-- Source: OriginalSourceCode/assets/lua/map (rewritten)
-- Behavior inferred from DecompiledLua/lua.game.effects.cannonEffect.lua (rewritten)

local constants = require("game.constants")
local displayApi = rawget(_G, "display")

if not displayApi then
  error("Display API unavailable; run inside Solar2D simulator")
end

local M = {}

function M.newTrack()
  local group = displayApi.newGroup()

  local ground = displayApi.newRect(group, 0, displayApi.contentCenterY + 120, constants.track.length, 80)
  ground.anchorX = 0
  ground:setFillColor(0.2, 0.6, 0.2)

  local finish = displayApi.newRect(group, constants.track.length, displayApi.contentCenterY + 80, 12, 160)
  finish.anchorY = 1
  finish:setFillColor(0.9, 0.1, 0.1)

  return {
    view = group,
    finishLine = finish
  }
end

return M
