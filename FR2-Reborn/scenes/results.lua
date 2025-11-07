-- Source: OriginalSourceCode/assets/images/gui/postgame (rewritten)
-- Behavior inferred from DecompiledLua/images.gui.postgame.adCoins.adCoins.lua (rewritten)

local composer = require("composer")
local widgets = require("ui.widgets")
local audio = require("engine.audio")
local asset = require("engine.asset")

local scene = composer.newScene()
local displayApi = rawget(_G, "display")
local native = rawget(_G, "native")

if not displayApi or not native then
  error("Display/native APIs unavailable; run inside Solar2D simulator")
end

local backgroundLookup = {
  forest = "results_bg_forest",
  space = "results_bg_space",
  town = "results_bg_town",
  tropical = "results_bg_tropical",
  winter = "results_bg_winter"
}

local function scaleToFill(sprite)
  if not sprite then
    return
  end
  local widthScale = displayApi.actualContentWidth / sprite.contentWidth
  local heightScale = displayApi.actualContentHeight / sprite.contentHeight
  local scale = math.max(widthScale, heightScale)
  sprite:scale(scale, scale)
end

local function formatTime(seconds)
  if not seconds or seconds <= 0 then
    return "0.00s"
  end
  local minutes = math.floor(seconds / 60)
  local remainder = seconds % 60
  if minutes > 0 then
    return string.format("%d:%05.2fs", minutes, remainder)
  end
  return string.format("%.2fs", remainder)
end

local function ordinal(place)
  if not place then
    return "--"
  end
  local mod10 = place % 10
  local mod100 = place % 100
  local suffix = "th"
  if mod10 == 1 and mod100 ~= 11 then
    suffix = "st"
  elseif mod10 == 2 and mod100 ~= 12 then
    suffix = "nd"
  elseif mod10 == 3 and mod100 ~= 13 then
    suffix = "rd"
  end
  return string.format("%d%s", place, suffix)
end

function scene:create(event)
  local group = self.view
  local params = event.params or {}
  local results = params.results or {}
  local stats = params.stats or {}
  local theme = stats.theme or "forest"

  local backgroundId = backgroundLookup[theme] or backgroundLookup.forest
  local background
  do
    local ok, sprite = pcall(asset.newImage, {
      parent = group,
      id = backgroundId
    })
    if ok and sprite then
      background = sprite
      background.x = displayApi.contentCenterX
      background.y = displayApi.contentCenterY
      scaleToFill(background)
    else
      background = displayApi.newRect(group, displayApi.contentCenterX, displayApi.contentCenterY,
        displayApi.actualContentWidth, displayApi.actualContentHeight)
      background:setFillColor(0.06, 0.08, 0.18)
    end
  end

  local panel
  local panelWidth
  local panelHeight
  do
    local ok, sprite = pcall(asset.newImage, {
      parent = group,
      id = "results_panel"
    })
    if ok and sprite then
      panel = sprite
      panelWidth = sprite.contentWidth
      panelHeight = sprite.contentHeight
      local targetWidth = displayApi.actualContentWidth * 0.74
      local targetHeight = displayApi.actualContentHeight * 0.62
      local scale = math.min(targetWidth / panelWidth, targetHeight / panelHeight)
      panel:scale(scale, scale)
      panelWidth = panel.contentWidth
      panelHeight = panel.contentHeight
      panel.x = displayApi.contentCenterX
      panel.y = displayApi.contentCenterY + (displayApi.actualContentHeight * 0.04)
    else
      panelWidth = displayApi.actualContentWidth * 0.72
      panelHeight = displayApi.actualContentHeight * 0.58
      panel = displayApi.newRoundedRect(group, displayApi.contentCenterX,
      displayApi.contentCenterY + (displayApi.actualContentHeight * 0.04),
        panelWidth, panelHeight, 28)
      panel:setFillColor(0.12, 0.14, 0.24, 0.92)
      panel.strokeWidth = 2
      panel:setStrokeColor(1, 1, 1, 0.15)
    end
  end

  local banner
  do
    local ok, sprite = pcall(asset.newImage, {
      parent = group,
      id = "finish_banner",
      width = 520,
      height = 200
    })
    if ok and sprite then
      banner = sprite
      banner.x = displayApi.contentCenterX
      banner.y = displayApi.safeScreenOriginY + 110
    end
  end

  local titleText = displayApi.newText({
    parent = group,
    text = string.format("%s - Race Complete!", stats.trackName or "Race"),
    x = displayApi.contentCenterX,
    y = (banner and (banner.y + 8)) or (displayApi.safeScreenOriginY + 96),
    font = native.systemFontBold,
    fontSize = 44,
    align = "center"
  })
  titleText:setFillColor(1, 0.95, 0.82)

  local timeLabel = displayApi.newText({
    parent = group,
    text = string.format("Final Time: %s", formatTime(stats.time)),
    x = displayApi.contentCenterX,
    y = panel.y - (panelHeight * 0.35),
    font = native.systemFontBold,
    fontSize = 30
  })
  timeLabel:setFillColor(0.98, 0.98, 1)

  local avatar
  do
    local ok, sprite = pcall(asset.newImage, {
      parent = group,
      id = "runner_player",
      width = 220,
      height = 260
    })
    if ok and sprite then
      avatar = sprite
      avatar.anchorY = 1
      avatar.x = displayApi.contentCenterX - (panelWidth * 0.27)
      avatar.y = panel.y + (panelHeight * 0.18)
    end
  end

  local listX = displayApi.contentCenterX + (panelWidth * 0.12)
  local listStartY = panel.y - (panelHeight * 0.18)
  if #results == 0 then
    displayApi.newText({
      parent = group,
      text = "No results available",
      x = listX,
      y = listStartY,
      font = native.systemFont,
      fontSize = 26,
      align = "left"
    })
  else
    for index, entry in ipairs(results) do
      local line = string.format("%s  %s  %s", ordinal(entry.place), entry.id or "--", formatTime(entry.time))
      displayApi.newText({
        parent = group,
        text = line,
        x = listX,
        y = listStartY + (index - 1) * 34,
        font = native.systemFont,
        fontSize = 26,
        align = "left"
      })
    end
  end

  local rewardsY = panel.y + (panelHeight * 0.1)

  local xpIcon
  do
    local ok, sprite = pcall(asset.newImage, {
      parent = group,
      id = "results_xp_icon",
      width = 82,
      height = 82
    })
    if ok and sprite then
      xpIcon = sprite
      xpIcon.x = displayApi.contentCenterX - 80
      xpIcon.y = rewardsY
    end
  end

  displayApi.newText({
    parent = group,
    text = string.format("XP +%d", stats.xp or 0),
    x = (xpIcon and (xpIcon.x + 94)) or (displayApi.contentCenterX - 10),
    y = rewardsY,
    font = native.systemFontBold,
    fontSize = 30,
    align = "left"
  }):setFillColor(0.95, 1, 0.95)

  local coinIcon
  do
    local ok, sprite = pcall(asset.newImage, {
      parent = group,
      id = "results_coin_icon",
      width = 72,
      height = 72
    })
    if ok and sprite then
      coinIcon = sprite
      coinIcon.x = displayApi.contentCenterX + 150
      coinIcon.y = rewardsY
    end
  end

  displayApi.newText({
    parent = group,
    text = string.format("Coins +%d", stats.coins or 0),
    x = (coinIcon and (coinIcon.x + 88)) or (displayApi.contentCenterX + 210),
    y = rewardsY,
    font = native.systemFontBold,
    fontSize = 30,
    align = "left"
  }):setFillColor(1, 0.93, 0.72)

  local statsY = rewardsY + 60
  displayApi.newText({
    parent = group,
    text = string.format("Power-ups used: %d", stats.powersUsed or 0),
    x = displayApi.contentCenterX,
    y = statsY,
    font = native.systemFont,
    fontSize = 24,
    align = "center"
  }):setFillColor(0.85, 0.9, 1)

  displayApi.newText({
    parent = group,
    text = string.format("Pickups collected: %d", stats.pickups or 0),
    x = displayApi.contentCenterX,
    y = statsY + 32,
    font = native.systemFont,
    fontSize = 24,
    align = "center"
  }):setFillColor(0.85, 0.9, 1)

  local buttonY = displayApi.safeScreenOriginY + displayApi.actualContentHeight - 100

  local replayButton = widgets.newButton({
    label = "Race Again",
    onRelease = function()
      audio.playSfx("menu_button")
      composer.gotoScene("scenes.race", {
        effect = "fade",
        time = 300,
        params = {
          mapId = stats.mapId
        }
      })
    end
  })
  replayButton.x = displayApi.contentCenterX - 180
  replayButton.y = buttonY
  group:insert(replayButton)

  local menuButton = widgets.newButton({
    label = "Return to Menu",
    onRelease = function()
      audio.playSfx("menu_button")
      composer.gotoScene("scenes.menu", { effect = "slideRight", time = 350 })
    end
  })
  menuButton.x = displayApi.contentCenterX + 180
  menuButton.y = buttonY
  group:insert(menuButton)
end

scene:addEventListener("create")

return scene
