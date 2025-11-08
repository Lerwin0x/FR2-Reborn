local json = require("json")

local systemApi = rawget(_G, "system")

local MAP_PATH_TEMPLATE = "assets/config/map/%s.json"
local CONFIG_PATH = "assets/config/config.json"

local catalogCache
local mapLookup
local randomSeed = 0

local function resolvePath(relativePath)
  if systemApi and systemApi.pathForFile then
    local candidate = systemApi.pathForFile(relativePath)
    if candidate then
      return candidate
    end
  end
  return relativePath
end

local function readFile(relativePath)
  local path = resolvePath(relativePath)
  local handle = io.open(path, "r")
  if not handle then
    return nil
  end
  local contents = handle:read("*a")
  handle:close()
  return contents
end

local function decodeJson(relativePath)
  local data = readFile(relativePath)
  if not data then
    return nil
  end
  local ok, result = pcall(json.decode, data)
  if not ok then
    return nil
  end
  return result
end

local function shallowCopy(source)
  if not source then
    return nil
  end
  local copy = {}
  for key, value in pairs(source) do
    copy[key] = value
  end
  return copy
end

local function loadConfig()
  local config = decodeJson(CONFIG_PATH) or {}
  return config
end

local function coerceNumber(value, fallback)
  local numeric = tonumber(value)
  if numeric then
    return numeric
  end
  return fallback
end

local function ingestMap(mapId)
  local data = decodeJson(string.format(MAP_PATH_TEMPLATE, mapId))
  if not data then
    return nil
  end
  local properties = data.properties or {}
  local numericId = coerceNumber(properties.id or mapId, nil)
  local tileWidth = data.tilewidth or 160
  local tileHeight = data.tileheight or 100
  local goalTiles = coerceNumber(properties.goalX, data.width) or data.width or 0
  local trackLength = goalTiles * tileWidth
  local theme = properties.theme or "forest"
  local result = {
    id = tostring(properties.id or mapId),
    numericId = numericId,
    name = properties.name or string.format("Track %s", mapId),
    description = properties.description or "",
    theme = theme,
    tileWidth = tileWidth,
    tileHeight = tileHeight,
    width = data.width or 0,
    height = data.height or 0,
    goalTiles = goalTiles,
    trackLength = trackLength,
    iconTextureId = numericId and string.format("practice_icon_%d", numericId) or nil,
    themeTextureId = string.format("menu_theme_default_%s", theme),
    raw = data
  }
  return result
end

local function buildCatalog()
  if catalogCache then
    return catalogCache, mapLookup
  end
  local config = loadConfig()
  local numberOfMaps = config.numberOfMaps or 0
  local catalog = {}
  local lookup = {}

  if numberOfMaps > 0 then
    for index = 1, numberOfMaps do
      local id = tostring(index)
      local record = ingestMap(id)
      if record then
        catalog[#catalog + 1] = record
        lookup[record.id] = record
      end
    end
  else
    -- Fallback: attempt to load common ids 1..30 if config missing
    for index = 1, 30 do
      local id = tostring(index)
      local record = ingestMap(id)
      if record then
        catalog[#catalog + 1] = record
        lookup[record.id] = record
      end
    end
  end

  table.sort(catalog, function(a, b)
    local aId = a.numericId or tonumber(a.id) or math.huge
    local bId = b.numericId or tonumber(b.id) or math.huge
    if aId == bId then
      return (a.id or "") < (b.id or "")
    end
    return aId < bId
  end)

  catalogCache = catalog
  mapLookup = lookup
  return catalogCache, mapLookup
end

local function ensureCatalog()
  return buildCatalog()
end

local M = {}

function M.list()
  local catalog = ensureCatalog()
  local copy = {}
  for index = 1, #catalog do
    copy[index] = shallowCopy(catalog[index])
  end
  return copy
end

function M.get(id)
  if not id then
    return nil
  end
  ensureCatalog()
  local entry = mapLookup and mapLookup[tostring(id)]
  if entry then
    return shallowCopy(entry)
  end
  return nil
end

function M.indexOf(id)
  if not id then
    return nil
  end
  local catalog = ensureCatalog()
  for index = 1, #catalog do
    if catalog[index].id == tostring(id) then
      return index
    end
  end
  return nil
end

function M.size()
  local catalog = ensureCatalog()
  return #catalog
end

function M.next(id)
  local catalog = ensureCatalog()
  if #catalog == 0 then
    return nil
  end
  local index = M.indexOf(id) or 0
  index = index + 1
  if index > #catalog then
    index = 1
  end
  return shallowCopy(catalog[index])
end

function M.previous(id)
  local catalog = ensureCatalog()
  if #catalog == 0 then
    return nil
  end
  local index = M.indexOf(id)
  if not index then
    index = #catalog
  else
    index = index - 1
    if index < 1 then
      index = #catalog
    end
  end
  return shallowCopy(catalog[index])
end

function M.random(excludeId)
  local catalog = ensureCatalog()
  local size = #catalog
  if size == 0 then
    return nil
  end
  if size == 1 then
    return shallowCopy(catalog[1])
  end
  randomSeed = (randomSeed + 1) % size
  local pick = (randomSeed % size) + 1
  if catalog[pick].id == tostring(excludeId) then
    pick = (pick % size) + 1
  end
  return shallowCopy(catalog[pick])
end

function M.refresh()
  catalogCache = nil
  mapLookup = nil
  return ensureCatalog()
end

function M.iconTextureId(mapId)
  local entry = M.get(mapId)
  if entry and entry.iconTextureId then
    return entry.iconTextureId
  end
  if entry and entry.numericId then
    return string.format("practice_icon_%d", entry.numericId)
  end
  local numericId = tonumber(mapId)
  if numericId then
    return string.format("practice_icon_%d", numericId)
  end
  return nil
end

return M
