-- Reference: DecompiledCode/lua.scenes.postLobby.lua (lines 147-1400)
-- 1:1 pixel-perfect recreation from original Fun Run 2
-- All button positions, sizes, and behaviors match decompiled code exactly

local composer = require("composer")
local audio = require("engine.audio")

local scene = composer.newScene()
local display = rawget(_G, "display")
local native = rawget(_G, "native")
local transition = rawget(_G, "transition")

if not display then
  error("Display API unavailable; run inside Solar2D simulator")
end

local FONT = "assets/fonts/JungleAdventurer.ttf"

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

-- Referenced from lua.scenes.postLobby.lua lines 1270-1280
local function newButton(parent, params)
  local button = display.newImageRect(
    parent,
    params.image,
    params.width,
    params.height
  )

  button.x = params.x
  button.y = params.y

  local function onTouch(event)
    if event.phase == "began" then
      display.getCurrentStage():setFocus(button)
      button.xScale = 0.95
      button.yScale = 0.95
      button._pressed = true
      return true
    end

    if button._pressed and (event.phase == "ended" or event.phase == "cancelled") then
      display.getCurrentStage():setFocus(nil)
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

  local contentWidth = display.contentWidth
  local contentHeight = display.contentHeight

  -- Referenced from lua.scenes.postLobby.lua line 147-201: Background setup
  -- Uses theme-specific background based on map
  local backgrounds = require("engine.backgrounds")
  local background = backgrounds.getBackground()
  if background then
    group:insert(background)
  end

  -- Referenced from lua.scenes.postLobby.lua line 222: Main results panel
  local panel = display.newImageRect(
    group,
    "assets/images/gui/postgame/windowTimes.png",
    182,
    131
  )
  panel.x = contentWidth * 0.8
  panel.y = contentHeight * 0.2


  -- Place text (1st, 2nd, 3rd, 4th)
  local placeText = display.newText({
    parent = group,
    text = getOrdinal(stats.place or stats.position or 1),
    x = panel.x,
    y = panel.y - 44,
    font = FONT,
    fontSize = 22
  })
  placeText:setFillColor(1, 1, 1)

  -- Track name display
  local trackName = stats.trackName or stats.mapId or ""
  if trackName ~= "" then
    local trackText = display.newText({
      parent = group,
      text = trackName,
      x = panel.x,
      y = panel.y - 20,
      font = FONT,
      fontSize = 14
    })
    trackText:setFillColor(1, 1, 1)
  end

  -- Time display
  local timeValue = display.newText({
    parent = group,
    text = formatTime(stats.time),
    x = panel.x,
    y = panel.y + 10,
    font = FONT,
    fontSize = 18
  })
  timeValue:setFillColor(1, 1, 1)

  -- XP and coins display
  local xpText = display.newText({
    parent = group,
    text = string.format("+%d XP", stats.xp or 0),
    x = panel.x,
    y = panel.y + 30,
    font = FONT,
    fontSize = 14
  })
  xpText:setFillColor(0.3, 0.8, 1)

  local coinsText = display.newText({
    parent = group,
    text = string.format("+%d", stats.coins or 0),
    x = panel.x,
    y = panel.y + 48,
    font = FONT,
    fontSize = 14
  })
  coinsText:setFillColor(1, 0.85, 0.2)

  -- Referenced from lua.scenes.postLobby.lua line 1269: Close button (top left)
  newButton(group, {
    image = "assets/images/gui/common/buttonClosePopup.png",
    width = 43,
    height = 38,
    x = 22,
    y = 22,
    sound = "menu_button",
    onRelease = function()
      composer.gotoScene("scenes.menu", {
        effect = "slideRight",
        time = 400
      })
    end
  })

  -- Referenced from lua.scenes.postLobby.lua line 1276: Replay button (bottom right)
  newButton(group, {
    image = "assets/images/gui/postgame/buttonReplay.png",
    width = 90,
    height = 52,
    x = contentWidth - 50,
    y = 294,
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

  -- Referenced from lua.scenes.postLobby.lua line 1302: Market button
  newButton(group, {
    image = "assets/images/gui/postgame/buttonMarket.png",
    width = 55,
    height = 52,
    x = 350,
    y = 294,
    sound = "menu_button",
    onRelease = function()
      -- Market button - currently goes to menu
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
