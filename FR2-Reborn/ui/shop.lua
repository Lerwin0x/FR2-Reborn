-- Source: OriginalSourceCode/assets/config/storeConfig.json (rewritten)
-- Behavior inferred from DecompiledLua/lua.ads.rewardedVideoEntrypoint.lua (rewritten)

local items = require("game.items")

local M = {}

function M.purchase(id, cost)
  -- Future: integrate with currency manager; currently grants the item when invoked.
  items.add(id, 1)
  return true
end

return M
