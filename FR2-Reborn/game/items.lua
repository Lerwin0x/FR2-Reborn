-- Source: OriginalSourceCode/assets/config/storeConfig.json (rewritten)
-- Behavior inferred from DecompiledLua/lua.game.powerups.effectsImageSheet.lua (rewritten)

local M = {}
local inventory = {}

function M.add(id, count)
  inventory[id] = (inventory[id] or 0) + (count or 1)
end

function M.consume(id)
  if (inventory[id] or 0) > 0 then
    inventory[id] = inventory[id] - 1
    return true
  end
  return false
end

function M.count(id)
  return inventory[id] or 0
end

return M
