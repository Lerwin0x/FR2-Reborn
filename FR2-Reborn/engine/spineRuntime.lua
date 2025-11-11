local spine = require("spine-corona.spine")

local M = {}

local cache = {}

local function buildCacheKey(path, scale)
  return table.concat({ path or "", scale or "" }, "::")
end

local function ensureSkeletonData(path, scale)
  if not path or path == "" then
    error("Missing skeleton JSON path", 2)
  end
  local key = buildCacheKey(path, scale)
  local entry = cache[key]
  if entry then
    return entry
  end
  local loader = spine.SkeletonJson.new()
  loader.scale = scale or 1
  local skeletonData = loader:readSkeletonDataFile(path)
  if not skeletonData then
    error(string.format("Failed to load skeleton data: %s", path), 2)
  end
  local stateData = spine.AnimationStateData.new(skeletonData)
  stateData.defaultMix = 0.1
  entry = {
    skeletonData = skeletonData,
    stateData = stateData
  }
  cache[key] = entry
  return entry
end

function M.instantiate(options)
  options = options or {}
  local resourcePath = options.path or ""
  local scale = options.scale or 1
  local animation = options.animation or "idle"
  local loop = options.loop
  if loop == nil then
    loop = true
  end

  local data = ensureSkeletonData(resourcePath, scale)
  local skeleton = spine.Skeleton.new(data.skeletonData)
  skeleton.group.anchorChildren = true
  local state = spine.AnimationState.new(data.stateData)
  if animation then
    state:setAnimationByName(0, animation, loop)
  end
  return {
    skeleton = skeleton,
    group = skeleton.group,
    state = state,
    stateData = data.stateData,
    skeletonData = data.skeletonData
  }
end

function M.update(instance, dt)
  if not instance or not instance.skeleton or not instance.state then
    return
  end
  if dt and dt > 0 then
    instance.state:update(dt)
  end
  instance.state:apply(instance.skeleton)
  instance.skeleton:updateWorldTransform()
end

function M.clear()
  for key in pairs(cache) do
    cache[key] = nil
  end
end

return M
