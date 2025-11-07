-- Source: OriginalSourceCode/assets/config (rewritten)
-- Behavior inferred from DecompiledLua/lua.game (rewritten)

local M = {}
local listeners = {}
local runtime = _G.Runtime

if not runtime then
  error("Runtime handle unavailable; ensure Solar2D runtime is initialized before adding input listeners")
end

local function dispatch(event)
  for _, handler in ipairs(listeners) do
    handler(event)
  end
end

function M.addListener(callback)
  listeners[#listeners + 1] = callback
  if #listeners == 1 then
    runtime:addEventListener("touch", dispatch)
  end
end

function M.removeListener(callback)
  for index, handler in ipairs(listeners) do
    if handler == callback then
      table.remove(listeners, index)
      break
    end
  end
  if #listeners == 0 then
    runtime:removeEventListener("touch", dispatch)
  end
end

return M
