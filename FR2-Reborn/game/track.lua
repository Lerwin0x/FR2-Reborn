local json = require("json")

local constants = require("game.constants")
local asset = require("engine.asset")

local displayApi = rawget(_G, "display")
local systemApi = rawget(_G, "system")

if not displayApi then
  error("Display API unavailable; run inside Solar2D simulator")
end

local M = {}

local function makeThemeConfig(theme, backgrounds)
  return {
    propertyScale = 1,
    tilesets = {
      tiles = { sheet = theme .. "_tiles" },
      tilesR = { sheet = theme .. "_tiles", flipX = true },
      props = { sheet = theme .. "_props" },
      propsR = { sheet = theme .. "_props", flipX = true },
      special = { sheet = theme .. "_special" }
    },
    backgrounds = backgrounds
  }
end

local themeConfigs = {
  forest = makeThemeConfig("forest", {
    sky = "race_background_sky",
    mid = "forest_background_alt_mid",
    fore = "forest_background_alt_fore"
  }),
  space = makeThemeConfig("space", {
    sky = "space_background_sky",
    mid = "space_background_mid",
    fore = "space_background_fore"
  }),
  town = makeThemeConfig("town", {
    sky = "town_background_sky",
    mid = "town_background_mid",
    fore = "town_background_fore"
  }),
  tropical = makeThemeConfig("tropical", {
    sky = "tropical_background_sky",
    mid = "tropical_background_mid",
    fore = "tropical_background_fore"
  }),
  winter = makeThemeConfig("winter", {
    sky = "winter_background_sky",
    mid = "winter_background_mid",
    fore = "winter_background_fore"
  })
}

local function getThemeConfig(theme)
  return themeConfigs[theme] or themeConfigs.forest
end

local function normalizeLayerName(name)
  if not name then
    return nil
  end
  local lowered = name:lower()
  return lowered:gsub("%s+", "")
end

local function findLayer(layers, aliases)
  if not layers or not aliases then
    return nil
  end
  local targets = {}
  if type(aliases) == "string" then
    aliases = { aliases }
  end
  for index = 1, #aliases do
    local normalized = normalizeLayerName(aliases[index])
    if normalized then
      targets[normalized] = true
    end
  end
  if not next(targets) then
    return nil
  end
  for index = 1, #layers do
    local layer = layers[index]
    local normalized = normalizeLayerName(layer.name)
    if normalized and targets[normalized] then
      return layer
    end
  end
  return nil
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

local function fileExists(path)
  if not path or path == "" then
    return false
  end
  local resolved = path
  if systemApi and systemApi.pathForFile then
    resolved = systemApi.pathForFile(path) or path
  end
  local handle = io.open(resolved, "rb")
  if handle then
    handle:close()
    return true
  end
  return false
end

local function loadMap(mapId)
  local path = string.format("assets/config/map/%s.json", mapId)
  local data = readAssetFile(path)
  local decoded = json.decode(data)
  assert(decoded, string.format("failed to decode map '%s'", mapId))
  return decoded
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

local function normalizeTilesetConfig(tilesets, name)
  if not tilesets then
    return nil
  end
  local entry = tilesets[name] or tilesets.tiles
  if type(entry) == "string" then
    return { sheet = entry }
  end
  return entry
end

local function computeTilesetEntries(mapData, themeConfig)
  local entries = {}
  if not mapData.tilesets then
    return entries
  end
  for index = 1, #mapData.tilesets do
    local tileset = mapData.tilesets[index]
    local config = normalizeTilesetConfig(themeConfig.tilesets, tileset.name)
    if config and config.sheet then
      local tileWidth = tileset.tilewidth or mapData.tilewidth
      local tileHeight = tileset.tileheight or mapData.tileheight
      local spacing = tileset.spacing or 0
      local margin = tileset.margin or 0
      local imageWidth = tileset.imagewidth or tileWidth
      local imageHeight = tileset.imageheight or tileHeight
      local columns = tileset.columns
      if not columns or columns <= 0 then
        columns = math.max(1, math.floor((imageWidth - (margin * 2) + spacing) / (tileWidth + spacing)))
      end
      local rows
      if tileset.tilecount then
        rows = math.ceil(tileset.tilecount / columns)
      else
        rows = math.max(1, math.floor((imageHeight - (margin * 2) + spacing) / (tileHeight + spacing)))
      end
      local tileCount = tileset.tilecount or (columns * rows)
      local sheet = asset.newImageSheet(config.sheet)
      entries[#entries + 1] = {
        id = tileset.name,
        firstGid = tileset.firstgid,
        lastGid = tileset.firstgid + tileCount - 1,
        sheetId = config.sheet,
        sheet = sheet,
        flipX = config.flipX and true or false,
        flipY = config.flipY and true or false,
        tileWidth = tileWidth,
        tileHeight = tileHeight,
        spacing = spacing,
        margin = margin,
        columns = columns,
        rows = rows,
        offsetX = tileset.tileoffset and tileset.tileoffset.x or 0,
        offsetY = tileset.tileoffset and tileset.tileoffset.y or 0
      }
    end
  end
  table.sort(entries, function(a, b)
    return a.firstGid > b.firstGid
  end)
  return entries
end

local function findTilesetEntry(entries, gid)
  if not gid or gid == 0 then
    return nil
  end
  for index = 1, #entries do
    local entry = entries[index]
    if gid >= entry.firstGid and gid <= entry.lastGid then
      return entry
    end
  end
  return nil
end

local FLIPPED_HORIZONTALLY_FLAG = 0x80000000
local FLIPPED_VERTICALLY_FLAG = 0x40000000
local FLIPPED_DIAGONALLY_FLAG = 0x20000000

local function decodeTileId(rawId)
  local flippedH = false
  local flippedV = false
  local flippedD = false
  if rawId >= FLIPPED_HORIZONTALLY_FLAG then
    flippedH = true
    rawId = rawId - FLIPPED_HORIZONTALLY_FLAG
  end
  if rawId >= FLIPPED_VERTICALLY_FLAG then
    flippedV = true
    rawId = rawId - FLIPPED_VERTICALLY_FLAG
  end
  if rawId >= FLIPPED_DIAGONALLY_FLAG then
    flippedD = true
    rawId = rawId - FLIPPED_DIAGONALLY_FLAG
  end
  return rawId, flippedH, flippedV, flippedD
end

local function applyTileFlips(tile, entryFlipX, entryFlipY, flippedH, flippedV, flippedD)
  local currentScaleX = tile.xScale or 1
  local currentScaleY = tile.yScale or 1
  if entryFlipX then
    currentScaleX = -currentScaleX
  end
  if entryFlipY then
    currentScaleY = -currentScaleY
  end

  if flippedD then
    if flippedH and flippedV then
      tile.rotation = (tile.rotation or 0) + 180
    elseif flippedH then
      tile.rotation = (tile.rotation or 0) + 90
      currentScaleX = -currentScaleX
    elseif flippedV then
      tile.rotation = (tile.rotation or 0) - 90
      currentScaleY = -currentScaleY
    else
      tile.rotation = (tile.rotation or 0) + 90
      currentScaleX = -currentScaleX
    end
  else
    if flippedH then
      currentScaleX = -currentScaleX
    end
    if flippedV then
      currentScaleY = -currentScaleY
    end
  end
  tile.xScale = currentScaleX
  tile.yScale = currentScaleY
end

local function tryNewImageRect(path, parent, width, height)
  if not fileExists(path) then
    return nil
  end
  local targetWidth = width and width > 0 and width or nil
  local targetHeight = height and height > 0 and height or nil
  if targetWidth and targetHeight then
    local ok, sprite = pcall(displayApi.newImageRect, parent, path, targetWidth, targetHeight)
    if ok and sprite then
      return sprite
    end
  end
  local ok, sprite = pcall(displayApi.newImage, parent, path)
  if ok and sprite then
    if parent and sprite.parent ~= parent then
      parent:insert(sprite)
    end
    return sprite
  end
  return nil
end

local backgroundAliases = {
  forest = {
    ["0"] = { "sunbeams" },
    ["1"] = { "1_dawn", "1_cloud", "1_blue", "1_dusk" },
    ["2"] = { "2_dawn", "2_cloud", "2_blue", "2_dusk" },
    ["3"] = { "3_dawn", "3_cloud", "3_blue", "3_dusk" },
    ["4"] = { "4.1", "4.2", "4.3", "4.4", "4.5", "4.1-trunks", "4.1-flowerfield", "4.4-shrooms", "4.4-thorns" },
    ["5"] = { "5.1", "5.2", "5.3", "5.4", "5.5" }
  },
  space = {
    ["1"] = { "1_dawn", "1_blue", "1_dusk" },
    ["2"] = { "2_dawn", "2_blue", "2_dusk" },
    ["3"] = { "3_dawn", "3_blue", "3_pink" },
    ["4"] = { "4.1", "4.2", "4.2_structure", "4.3", "4.4", "4.5" },
    ["5"] = { "5.1", "5.2", "5.2_crystals", "5.3", "5.4", "5.4_spaceship", "5.5", "5.5_cannons" }
  },
  town = {
    ["1"] = { "1_sunrise", "1_day", "1_evening" },
    ["2"] = { "2_day", "2_evening", "2_night" },
    ["3"] = { "3_day", "3_evening", "3_night" },
    ["4"] = { "4.1", "4.2", "4.3", "4.4", "4.5" },
    ["5"] = { "5.1", "5.2", "5.3", "5.4", "5.5" }
  },
  tropical = {
    ["1"] = { "1_dawn", "1_day", "1_sunset" },
    ["2"] = { "2_day", "2_sunset", "2_twilight" },
    ["3"] = { "3_day", "3_sunset", "3_twilight" },
    ["4"] = { "4.1", "4.2", "4.3", "4.4", "4.5" },
    ["5"] = { "5.1", "5.2", "5.3", "5.4", "5.5" }
  },
  winter = {
    ["1"] = { "1_dawn", "1_day", "1_night" },
    ["2"] = { "2_day", "2_twilight", "2_night" },
    ["3"] = { "3_day", "3_twilight", "3_night" },
    ["4"] = { "4.1", "4.2", "4.3", "4.4", "4.5" },
    ["5"] = { "5.1", "5.2", "5.3", "5.4", "5.5" }
  }
}

local function resolveDecorPaths(theme, identifier)
  if not identifier then
    return {}
  end
  local token = tostring(identifier):gsub("%s+", "")
  if token == "" then
    return {}
  end
  local base = string.format("assets/images/map/%s/background/", theme or "forest")
  local normalized = token
  local variations = {
    normalized,
    normalized:gsub("%.", "_"),
    normalized:gsub("%-", "_"),
    normalized:gsub("%.", ""),
    normalized:gsub("_.+$", ""),
    normalized:gsub("%-[^%-]+$", "")
  }
  local results = {}
  local inserted = {}

  local function push(name)
    if not name or name == "" or inserted[name] then
      return
    end
    local path = base .. name .. ".png"
    if fileExists(path) then
      inserted[name] = true
      results[#results + 1] = path
    end
  end

  local aliasTable = backgroundAliases[theme or "forest"]
  if aliasTable then
    local aliasList = aliasTable[normalized]
    if aliasList then
      for index = 1, #aliasList do
        push(aliasList[index])
      end
    end
  end

  for index = 1, #variations do
    push(variations[index])
  end

  local numeric = normalized:match("^(%d+)$")
  if numeric then
    local variants = { "dawn", "blue", "cloud", "dusk" }
    for vIndex = 1, #variants do
      push(numeric .. "_" .. variants[vIndex])
    end
  end

  local major = normalized:match("^(%d+)")
  if major then
    push(major .. ".1")
    push(major .. ".2")
    push(major .. ".3")
    push(major .. ".4")
    push(major .. ".5")
    push(major .. ".4-shrooms")
    push(major .. ".4-thorns")
    push(major .. ".1-big_trunk")
    push(major .. ".1-trunks")
    push(major .. ".1-flowerfield")
  end

  return results
end

local function renderObjectLayer(layer, theme, propertyScale, groups)
  if not layer or layer.visible == false then
    return
  end
  local objects = layer.objects
  if not objects or #objects == 0 then
    return
  end
  local normalizedName = normalizeLayerName(layer.name)
  local targetGroup = groups and groups.foreground
  if normalizedName == "background" or normalizedName == "background1" or normalizedName == "background2" then
    targetGroup = groups and groups.background or targetGroup
  elseif normalizedName == "foreground" or normalizedName == "front" then
    targetGroup = groups and groups.foreground or targetGroup
  end
  if not targetGroup then
    return
  end
  local layerOpacity = layer.opacity or 1
  local fallbackImage = layer.properties and (layer.properties.image or layer.properties.art)
  for index = 1, #objects do
    local object = objects[index]
    local props = object.properties or {}
    local imageId = props.image or props.landmark or fallbackImage
    if imageId then
      local sprite
      local candidates = resolveDecorPaths(theme, imageId)
      for attempt = 1, #candidates do
        sprite = tryNewImageRect(candidates[attempt], targetGroup,
          (object.width or 0) * (propertyScale or 1),
          (object.height or 0) * (propertyScale or 1))
        if sprite then
          break
        end
      end
      if not sprite then
        local fallbackId = "menu_theme_default_" .. (theme or "forest")
        local fallbackPath = asset.getTexture and asset.getTexture(fallbackId)
        if fallbackPath then
          sprite = tryNewImageRect(fallbackPath, targetGroup,
            (object.width or 0) * (propertyScale or 1),
            (object.height or 0) * (propertyScale or 1))
        end
      end
      if sprite then
        sprite.alpha = layerOpacity
        sprite.anchorX = 0
        sprite.anchorY = 1
        sprite.x = (object.x or 0) * (propertyScale or 1)
        sprite.y = (object.y or 0) * (propertyScale or 1)
        sprite.rotation = object.rotation or 0
      end
    end
  end
end

local function renderTileLayer(layer, tilesets, tileWidth, tileHeight, parentGroup)
  if not layer or not layer.data or not tilesets then
    return
  end
  local layerWidth = layer.width or 0
  if layerWidth <= 0 then
    return
  end
  local layerOffsetX = layer.offsetx or 0
  local layerOffsetY = layer.offsety or 0
  local layerOpacity = layer.opacity or 1
  for index = 1, #layer.data do
    local rawId = layer.data[index]
    if rawId and rawId ~= 0 then
      local gid, flippedH, flippedV, flippedD = decodeTileId(rawId)
      local tilesetEntry = findTilesetEntry(tilesets, gid)
      if tilesetEntry then
        local frame = gid - tilesetEntry.firstGid + 1
        local sheet = tilesetEntry.sheet or asset.newImageSheet(tilesetEntry.sheetId)
        local column = ((index - 1) % layerWidth) + 1
        local row = math.floor((index - 1) / layerWidth) + 1
        local tileDisplayWidth = tilesetEntry.tileWidth or tileWidth
        local tileDisplayHeight = tilesetEntry.tileHeight or tileHeight
        local tile = displayApi.newImageRect(parentGroup, sheet, frame, tileDisplayWidth, tileDisplayHeight)
        tile.anchorX = 0.5
        tile.anchorY = 0.5
        tile.x = (column - 0.5) * tileWidth + layerOffsetX + (tilesetEntry.offsetX or 0)
        tile.y = (row - 0.5) * tileHeight + layerOffsetY + (tilesetEntry.offsetY or 0)
        tile.alpha = layerOpacity
        applyTileFlips(tile, tilesetEntry.flipX, tilesetEntry.flipY, flippedH, flippedV, flippedD)
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
  local propertyScale = themeConfig.propertyScale or 1
  local tilesetEntries = computeTilesetEntries(mapData, themeConfig)

  local mainLayer = findLayer(mapData.layers, { "Main", "Main Layer", "MainLayer" })
  assert(mainLayer, "Main tile layer missing in track map")

  local samples = buildHeightSamples(mainLayer, mapWidth, mapHeight, tileHeight)

  local function resolveWorldX(raw)
    local numeric = tonumber(raw)
    if not numeric then
      return nil
    end
    return numeric * tileWidth * propertyScale
  end

  local function resolveWorldY(raw)
    local numeric = tonumber(raw)
    if not numeric then
      return nil
    end
    return numeric * tileHeight * propertyScale
  end

  local function resolveColumn(worldX)
    if not worldX then
      return nil
    end
    return clamp(math.floor(worldX / tileWidth) + 1, 1, mapWidth)
  end

  local startWorldX = resolveWorldX(properties.startX)
  local goalWorldX = resolveWorldX(properties.goalX)
  local startWorldY = resolveWorldY(properties.startY)
  local goalWorldY = resolveWorldY(properties.goalY)

  local startColumn = resolveColumn(startWorldX)
  if not startColumn then
    local fallbackStart = tonumber(properties.startX)
    startColumn = clamp(math.floor((fallbackStart or 1)) + 1, 1, mapWidth)
    startWorldX = (startColumn - 0.5) * tileWidth
  end

  local goalColumn = resolveColumn(goalWorldX)
  if not goalColumn then
    local fallbackGoal = tonumber(properties.goalX)
    goalColumn = clamp(math.floor((fallbackGoal or (mapWidth - 2))) + 1, 1, mapWidth)
    goalWorldX = (goalColumn - 0.5) * tileWidth
  end

  local baseline = startWorldY or samples[startColumn] or (mapHeight * tileHeight)
  local startX = startWorldX or ((startColumn - 0.5) * tileWidth)
  local goalX = goalWorldX or ((goalColumn - 0.5) * tileWidth)

  if startWorldY then
    samples[startColumn] = startWorldY
  end

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

  local decorBackGroup = displayApi.newGroup()
  local backTileGroup = displayApi.newGroup()
  local mainTileGroup = displayApi.newGroup()
  local specialTileGroup = displayApi.newGroup()
  local segmentGroup = displayApi.newGroup()
  local frontTileGroup = displayApi.newGroup()
  local decorFrontGroup = displayApi.newGroup()

  worldGroup:insert(decorBackGroup)
  worldGroup:insert(backTileGroup)
  worldGroup:insert(mainTileGroup)
  worldGroup:insert(specialTileGroup)
  worldGroup:insert(segmentGroup)
  worldGroup:insert(frontTileGroup)
  worldGroup:insert(decorFrontGroup)

  local tileTargets = {
    backlayer = backTileGroup,
    backgroundlayer = backTileGroup,
    background = backTileGroup,
    mainlayer = mainTileGroup,
    main = mainTileGroup,
    track = mainTileGroup,
    terrain = mainTileGroup,
    special = specialTileGroup,
    speciallayer = specialTileGroup,
    special2 = specialTileGroup,
    proplayer = frontTileGroup,
    proplayerlayer = frontTileGroup,
    proplayer2 = frontTileGroup,
    props = frontTileGroup,
    proplayers = frontTileGroup
  }

  for index = 1, #(mapData.layers or {}) do
    local layer = mapData.layers[index]
    if layer.type == "tilelayer" and layer.visible ~= false then
      local normalizedName = normalizeLayerName(layer.name)
      local targetGroup = tileTargets[normalizedName] or mainTileGroup
      renderTileLayer(layer, tilesetEntries, tileWidth, tileHeight, targetGroup)
    elseif layer.type == "objectgroup" and layer.visible ~= false then
      renderObjectLayer(layer, theme, propertyScale, {
        background = decorBackGroup,
        foreground = decorFrontGroup
      })
    end
  end

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
    startY = startWorldY,
    goalX = goalX,
    goalY = goalWorldY,
    length = trackLength,
    groundGroup = segmentGroup,
    tileGroup = mainTileGroup,
    tileLayers = {
      back = backTileGroup,
      main = mainTileGroup,
      special = specialTileGroup,
      front = frontTileGroup
    },
    decorGroups = {
      back = decorBackGroup,
      front = decorFrontGroup
    },
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
