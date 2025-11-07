-- Source: OriginalSourceCode/assets/config/config.json (rewritten)
-- Behavior inferred from DecompiledLua/lua.game.effects.fireworks.lua (rewritten)

local M = {}
local ok, envSystem = pcall(function()
  return rawget(_G, "system")
end)
local startupMark = 0

if not ok or not envSystem or not envSystem.getTimer then
  envSystem = {
    getTimer = function()
      return os.clock() * 1000
    end
  }
end

function M.markStartup()
  startupMark = envSystem.getTimer()
end

function M.elapsed()
  return (envSystem.getTimer() - startupMark) / 1000
end

function M.now()
  return envSystem.getTimer() / 1000
end

return M
