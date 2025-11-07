local runtime = rawget(_G, "Runtime")

if not runtime then
  error("Runtime handle unavailable; ensure Solar2D runtime is initialized before binding input")
end

local actionListeners = {
  jump = {},
  powerup = {}
}

local keyToAction = {
  space = "jump",
  up = "jump",
  w = "jump",
  x = "powerup",
  z = "powerup",
  ctrl = "powerup"
}

local activeKeyListener = false

local function callListeners(action)
  local bucket = actionListeners[action]
  if not bucket then
    return
  end
  for index = 1, #bucket do
    bucket[index]()
  end
end

local function onKeyEvent(event)
  if event.phase ~= "down" then
    return false
  end
  local action = keyToAction[event.keyName]
  if action then
    callListeners(action)
    return true
  end
  return false
end

local M = {}

function M.bind(action, handler)
  assert(actionListeners[action], string.format("unknown input action '%s'", tostring(action)))
  assert(type(handler) == "function", "handler must be a function")
  local bucket = actionListeners[action]
  bucket[#bucket + 1] = handler
  if not activeKeyListener then
    runtime:addEventListener("key", onKeyEvent)
    activeKeyListener = true
  end
end

function M.unbind(action, handler)
  local bucket = actionListeners[action]
  if not bucket then
    return
  end
  for index = #bucket, 1, -1 do
    if bucket[index] == handler then
      table.remove(bucket, index)
    end
  end
  if activeKeyListener and #actionListeners.jump == 0 and #actionListeners.powerup == 0 then
    runtime:removeEventListener("key", onKeyEvent)
    activeKeyListener = false
  end
end

function M.emit(action)
  callListeners(action)
end

function M.clear()
  for action, bucket in pairs(actionListeners) do
    for index = #bucket, 1, -1 do
      bucket[index] = nil
    end
  end
  if activeKeyListener then
    runtime:removeEventListener("key", onKeyEvent)
    activeKeyListener = false
  end
end

return M
