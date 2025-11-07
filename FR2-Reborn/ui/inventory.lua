-- Source: OriginalSourceCode/assets/config/storeConfig.json (rewritten)
-- Behavior inferred from DecompiledLua/lua.game.powerups.puArmor.lua (rewritten)

local items = require("game.items")

local M = {}

function M.getLoadout()
  return {
    { id = "speed_boost", count = items.count("speed_boost") }
  }
end

return M
