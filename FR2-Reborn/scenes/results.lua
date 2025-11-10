-- Source: OriginalSourceCode/assets/images/gui/postgame (pixel-perfect recreation)
-- Coordinates from DecompiledCode/lua.scenes.postLobby.lua
-- Reference: results.png

local composer = require("composer")
local asset = require("engine.asset")
local audio = require("engine.audio")

local scene = composer.newScene()
local displayApi = rawget(_G, "display")
local nativeApi = rawget(_G, "native")

if not displayApi or not nativeApi then
  error("Display/native APIs unavailable; run inside Solar2D simulator")
end

local FONT = "assets/fonts/JungleAdventurer.ttf"

local THEME_BACKGROUNDS = {
  forest = "results_bg_forest",
  space = "results_bg_space",
  town = "results_bg_town",
  tropical = "results_bg_tropical",
  winter = "results_bg_winter"
}

local function formatTime(seconds)
  local value = tonumber(seconds) or 0
  if value < 0 then
    value = 0
  end
  local minutes = math.floor(value / 60)
  local remainder = value - (minutes * 60)
  if minutes > 0 then
    return string.format("%d:%05.2fs", minutes, remainder)
  end
  return string.format("%.2fs", remainder)
end

local function getOrdinal(place)
  local number = tonumber(place)
  if not number or number < 1 then
    return "--"
  end
  local mod100 = number % 100
  if mod100 >= 11 and mod100 <= 13 then
    return string.format("%dth", number)
  end
  local mod10 = number % 10
  if mod10 == 1 then
    return string.format("%dst", number)
  elseif mod10 == 2 then
    return string.format("%dnd", number)
  elseif mod10 == 3 then
    return string.format("%drd", number)
  end
  return string.format("%dth", number)
end

local function resolveBackgroundId(theme)
  if type(theme) ~= "string" then
    return THEME_BACKGROUNDS.forest
  end
  local key = string.lower(theme)
  return THEME_BACKGROUNDS[key] or THEME_BACKGROUNDS.forest
end

local function newButton(parent, params)
  local button = asset.newImage({
    parent = parent,
    id = params.id,
    width = params.width,
    height = params.height
  })

  button.x = params.x
  button.y = params.y

  local function onTouch(event)
    if event.phase == "began" then
      if displayApi.getCurrentStage then
        displayApi.getCurrentStage():setFocus(button)
      end
      button.xScale = 0.95
      button.yScale = 0.95
      button._pressed = true
      return true
    end

    if button._pressed and (event.phase == "ended" or event.phase == "cancelled") then
      if displayApi.getCurrentStage then
        displayApi.getCurrentStage():setFocus(nil)
      end
      button.xScale = 1
      button.yScale = 1
      button._pressed = false
      if event.phase == "ended" then
        if params.sound then
          audio.playSfx(params.sound)
        end
        if params.onRelease then
          params.onRelease()
        end
      end
      return true
    end

    return false
  end

  button:addEventListener("touch", onTouch)
  return button
end

function scene:create(event)
  local group = self.view
  local summary = event.params or {}
  local stats = summary.stats or {}
  local rankings = summary.results or summary.rankings or {}

  self.summary = summary

  local contentWidth = displayApi.contentWidth
  local contentHeight = displayApi.contentHeight

  local bgId = resolveBackgroundId(stats.theme)
  local background = asset.newImage({
    parent = group,
    id = bgId,
    width = contentWidth,
    height = contentHeight
  })
  background.x = contentWidth * 0.5
  background.y = contentHeight * 0.5

  local panel = asset.newImage({
    parent = group,
    id = "results_panel",
    width = 460,
    height = 330
  })
  panel.x = contentWidth * 0.5
  panel.y = contentHeight * 0.5

  local placeText = displayApi.newText({
    parent = group,
    text = getOrdinal(stats.place or stats.position or 1),
    x = panel.x,
    y = panel.y - (panel.height * 0.5) + 48,
    font = FONT,
    fontSize = 60
  })
  placeText:setFillColor(1, 0.92, 0.3)

  local trackName = stats.trackName or stats.mapId or ""
  if trackName ~= "" then
    local trackText = displayApi.newText({
      parent = group,
      text = trackName,
      x = panel.x,
      y = placeText.y + 34,
      font = FONT,
      fontSize = 22
    })
    trackText:setFillColor(0.85, 0.9, 1)
  end

  local timeLabel = displayApi.newText({
    parent = group,
    text = "Race Time",
    x = panel.x,
    y = panel.y + 20,
    font = FONT,
    fontSize = 20
  })
  timeLabel:setFillColor(0.8, 0.85, 0.95)

  local timeValue = displayApi.newText({
    parent = group,
    text = formatTime(stats.time),
    x = panel.x,
    y = timeLabel.y + 34,
    font = FONT,
    fontSize = 32
  })
  timeValue:setFillColor(1, 1, 1)

  newButton(group, {
    id = "button_replay",
    width = 100,
    height = 58,
    x = panel.x - 80,
    y = contentHeight - 70,
    sound = "menu_button",
    onRelease = function()
      composer.removeScene("scenes.race")
      composer.gotoScene("scenes.race", {
        effect = "fade",
        time = 300,
        params = {
          mapId = stats.mapId,
          theme = stats.theme,
          playerAnimalId = stats.playerAnimalId,
          botRoster = stats.botRoster
        }
      })
    end
  })

  newButton(group, {
    id = "button_close",
    width = 100,
    height = 58,
    x = panel.x + 80,
    y = contentHeight - 70,
    sound = "menu_button",
    onRelease = function()
      composer.gotoScene("scenes.menu", {
        effect = "slideRight",
        time = 400
      })
    end
  })
end

function scene:show(event)
  if event.phase == "did" then
    audio.playSfx("race_finish")
  end
end

function scene:destroy()
  self.summary = nil
end

scene:addEventListener("create")
scene:addEventListener("show")
scene:addEventListener("destroy")

return scene
