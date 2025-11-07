local json = require("json")

local constants = require("game.constants")
local asset = require("engine.asset")

local displayApi = rawget(_G, "display")
local systemApi = rawget(_G, "system")

if not displayApi then
  error("Display API unavailable; run inside Solar2D simulator")
end

local M = {}

local themeConfigs = {
  forest = {
    tilesets = {
      tiles = "forest_tiles",
      tilesR = "forest_tiles_r"
    },
    backgrounds = {
      sky = "race_background_sky",
      mid = "race_background_mid",
      fore = "race_background_fore"
    }
  }
}

local function getThemeConfig(theme)
  return themeConfigs[theme] or themeConfigs.forest
end

local function readAssetFile(relativePath)
  local fullPath
  if systemApi and systemApi.pathForFile then
    fullPath = systemApi.pathForFile(relativePath)
  end
  if not fullPath then
    fullPath = relativePath
  end
  local handle = io.open(fullPath, "r")
  assert(handle, string.format("unable to open map file '%s'", relativePath))
  local contents = handle:read("*a")
  handle:close()
  return contents
end

local function loadMap(mapId)
  local path = string.format("assets/config/map/%s.json", mapId)
  local data = readAssetFile(path)
  local decoded = json.decode(data)
  assert(decoded, string.format("failed to decode map '%s'", mapId))
  return decoded
end

local function findLayer(layers, name)
  for index = 1, #layers do
    local layer = layers[index]
    if layer.name == name then
      return layer
    end
  end
  return nil
end

local function buildHeightSamples(layer, mapWidth, mapHeight, tileHeight)
  local samples = {}
  for column = 1, mapWidth do
    local sample = mapHeight * tileHeight
    for row = 1, mapHeight do
      local tile = layer.data[((row - 1) * mapWidth) + column]
      if tile and tile ~= 0 then
        sample = (row - 1) * tileHeight
        break
      end
    end
    samples[column] = sample
  end
  return samples
end

local function clamp(value, minValue, maxValue)
  if value < minValue then
    return minValue
  end
  if value > maxValue then
    return maxValue
  end
  return value
end

local function computeTilesetEntries(mapData, themeConfig)
  local entries = {}
  if not mapData.tilesets then
    return entries
  end
  for index = 1, #mapData.tilesets do
    local tileset = mapData.tilesets[index]
    local sheetId = themeConfig.tilesets[tileset.name] or themeConfig.tilesets.tiles
    if sheetId then
      local imageWidth = tileset.imagewidth or mapData.tilewidth
      local imageHeight = tileset.imageheight or mapData.tileheight
      local tileWidth = tileset.tilewidth or mapData.tilewidth
      local tileHeight = tileset.tileheight or mapData.tileheight
      local columns = math.floor(imageWidth / tileWidth)
      local rows = math.floor(imageHeight / tileHeight)
      local tileCount = math.max(1, columns * rows)
      entries[#entries + 1] = {
        firstGid = tileset.firstgid,
        lastGid = tileset.firstgid + tileCount - 1,
        sheetId = sheetId
      }
    end
  end
  table.sort(entries, function(a, b)
    return a.firstGid > b.firstGid
  end)
  return entries
end

local function findTilesetEntry(entries, gid)
  for index = 1, #entries do
    local entry = entries[index]
    if gid >= entry.firstGid and gid <= entry.lastGid then
      return entry
    end
  end
  return nil
end

local function renderTileLayer(layer, tilesets, tileWidth, tileHeight, parentGroup)
  if not layer or not layer.data or not tilesets then
    return
  end
  local layerWidth = layer.width or 0
  if layerWidth <= 0 then
    return
  end
  for index = 1, #layer.data do
    local gid = layer.data[index]
    if gid and gid ~= 0 then
      local tilesetEntry = findTilesetEntry(tilesets, gid)
      if tilesetEntry then
        local frame = gid - tilesetEntry.firstGid + 1
        local sheet = asset.newImageSheet(tilesetEntry.sheetId)
        local column = ((index - 1) % layerWidth) + 1
        local row = math.floor((index - 1) / layerWidth) + 1
        local tile = displayApi.newImageRect(parentGroup, sheet, frame, tileWidth, tileHeight)
        tile.anchorX = 0.5
        tile.anchorY = 0.5
        tile.x = (column - 0.5) * tileWidth
        tile.y = (row - 0.5) * tileHeight
      end
    end
  end
end

function M.newTrack(mapId)
  local mapData = loadMap(mapId or constants.track.defaultMap)
  local mapWidth = mapData.width
  local mapHeight = mapData.height
  local tileWidth = mapData.tilewidth
  local tileHeight = mapData.tileheight
  local properties = mapData.properties or {}
  local theme = properties.theme or "forest"
  local themeConfig = getThemeConfig(theme)
  local tilesetEntries = computeTilesetEntries(mapData, themeConfig)

  local mainLayer = findLayer(mapData.layers, "Main")
  assert(mainLayer, "Main tile layer missing in track map")

  local samples = buildHeightSamples(mainLayer, mapWidth, mapHeight, tileHeight)

  local startProperty = tonumber(properties.startX)
  local goalProperty = tonumber(properties.goalX)
  local startColumn = clamp(math.floor((startProperty or 1)) + 1, 1, mapWidth)
  local goalColumn = clamp(math.floor((goalProperty or (mapWidth - 2))) + 1, 1, mapWidth)

  local baseline = samples[startColumn]
  local goalX = (goalColumn - 0.5) * tileWidth
  local startX = (startColumn - 0.5) * tileWidth

  local rootGroup = displayApi.newGroup()

  local backgroundGroup = displayApi.newGroup()
  local worldGroup = displayApi.newGroup()
  local overlayGroup = displayApi.newGroup()

  rootGroup:insert(backgroundGroup)
  rootGroup:insert(worldGroup)
  rootGroup:insert(overlayGroup)

  local backgrounds = themeConfig.backgrounds or themeConfigs.forest.backgrounds

  local function scaleToFill(sprite, multiplier)
    if not sprite then
      return
    end
    local targetWidth = displayApi.actualContentWidth
    local targetHeight = displayApi.actualContentHeight
    local scale = math.max(targetWidth / sprite.contentWidth, targetHeight / sprite.contentHeight)
    sprite:scale(scale * (multiplier or 1), scale * (multiplier or 1))
  end

  local sky = asset.newImage({
    parent = backgroundGroup,
    id = backgrounds.sky or "race_background_sky"
  })
  scaleToFill(sky, 1.05)
  sky.x = displayApi.contentCenterX
  sky.y = displayApi.contentCenterY

  local foliageMid = asset.newImage({
    parent = backgroundGroup,
    id = backgrounds.mid or "race_background_mid"
  })
  scaleToFill(foliageMid, 0.95)
  foliageMid.x = displayApi.contentCenterX
  foliageMid.y = displayApi.contentCenterY + (displayApi.actualContentHeight * 0.08)

  local foliageFore = asset.newImage({
    parent = overlayGroup,
    id = backgrounds.fore or "race_background_fore"
  })
  scaleToFill(foliageFore, 1.05)
  foliageFore.x = displayApi.contentCenterX
  foliageFore.y = displayApi.contentCenterY + (displayApi.actualContentHeight * 0.12)
  foliageFore.alpha = 0.85

  local parallaxLayers = {
    { view = sky,         ratio = 0.15 },
    { view = foliageMid,  ratio = 0.35 },
    { view = foliageFore, ratio = 0.55 }
  }

  local tileGroup = displayApi.newGroup()
  worldGroup:insert(tileGroup)

  for index = 1, #(mapData.layers or {}) do
    local layer = mapData.layers[index]
    if layer.type == "tilelayer" and layer.visible ~= false then
      renderTileLayer(layer, tilesetEntries, tileWidth, tileHeight, tileGroup)
    end
  end

  local segmentGroup = displayApi.newGroup()
  worldGroup:insert(segmentGroup)

  for column = 1, mapWidth do
    local groundY = samples[column]
    if groundY < mapHeight * tileHeight then
      local segment = displayApi.newRect(segmentGroup, (column - 1) * tileWidth + (tileWidth * 0.5),
        groundY + (tileHeight * 0.5), tileWidth + 2, tileHeight + 2)
      segment:setFillColor(1, 1, 1)
      segment.alpha = 0.0001
      segment.isVisible = false
    end
  end

  local trackLength = mapWidth * tileWidth

  local track = {
    view = rootGroup,
    world = worldGroup,
    parallax = parallaxLayers,
    samples = samples,
    mapWidth = mapWidth,
    mapHeight = mapHeight,
    tileWidth = tileWidth,
    tileHeight = tileHeight,
    baseline = baseline,
    startX = startX,
    goalX = goalX,
    length = trackLength,
    groundGroup = segmentGroup,
    tileGroup = tileGroup,
    theme = theme,
    name = properties.name or "Race",
    id = properties.id or mapId or constants.track.defaultMap
  }

  function track:getGroundHeight(worldX)
    local column = clamp(math.floor(worldX / tileWidth) + 1, 1, mapWidth)
    return self.samples[column]
  end

  function track:getStartPosition()
    return self.startX, self.baseline
  end

  function track:getGoalX()
    return self.goalX
  end

  function track:getLength()
    return self.length
  end

  function track:setWorldYOffset(offset)
    self.world.y = offset
  end

  function track:updateCamera(targetX)
    local offsetX = constants.camera.offsetX
    local desiredX = -targetX + offsetX
    local minX = -(self.length - displayApi.actualContentWidth)
    if minX > 0 then
      minX = 0
    end
    desiredX = clamp(desiredX, minX, 0)
    self.world.x = desiredX
    for index = 1, #self.parallax do
      local layer = self.parallax[index]
      layer.view.x = displayApi.contentCenterX + (desiredX * layer.ratio)
    end
  end

  function track:debugToggle(value)
    self.groundGroup.isVisible = value and true or false
    self.groundGroup.alpha = value and 0.35 or 0.0001
  end

  function track:getTheme()
    return self.theme
  end

  function track:getName()
    return self.name
  end

  function track:getId()
    return self.id
  end

  return track
end

return M
