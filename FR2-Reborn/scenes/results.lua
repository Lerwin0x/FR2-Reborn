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

-- Helper functions
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

local function getOrdinal(place)
  if not place then
    return "--"
  end
  if place == 1 then
    return "1st"
  elseif place == 2 then
    return "2nd"
  elseif place == 3 then
    return "3rd"
  else
    return place .. "th"
  end
end

-- Button factory matching original game
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
      displayApi.getCurrentStage():setFocus(button)
      button.xScale = 0.95
      button.yScale = 0.95
      return true
    end

    if event.phase == "ended" or event.phase == "cancelled" then
      displayApi.getCurrentStage():setFocus(nil)
      button.xScale = 1
      button.yScale = 1
      if event.phase == "ended" and params.onRelease then
        audio.playSfx("menu_button")
        params.onRelease()
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
  local params = event.params or {}
  local results = params.results or {}
  local stats = params.stats or {}
  local contentWidth = displayApi.contentWidth
  local contentHeight = displayApi.contentHeight

  -- Background
  local backgrounds = require("engine.backgrounds")
  local bg = backgrounds.getBlurredBackground()
  if bg then
    group:insert(bg)
  end

  -- Results window (centered, larger)
  local panel = asset.newImage({
    parent = group,
    id = "results_panel",
    width = 450,
    height = 320
  })
  panel.x = contentWidth * 0.5
  panel.y = contentHeight * 0.5

  -- Position display (inside panel, top)
  local position = stats.position or 1
  local positionText = displayApi.newText({
    parent = group,
    text = getOrdinal(position),
    x = contentWidth * 0.5,
    y = panel.y - 120,
    font = "assets/fonts/JungleAdventurer.ttf",
    fontSize = 64
  })
  positionText:setFillColor(1, 0.9, 0.2)

  -- Display all runners/animals with positions
  local rankings = results.rankings or {}
  if #rankings > 0 then
    local rankingGroup = displayApi.newGroup()
    group:insert(rankingGroup)

    local rankStartY = panel.y - 100
    local rankSpacing = 45

    for i = 1, math.min(4, #rankings) do
      local runner = rankings[i]
      local rankY = rankStartY + (i - 1) * rankSpacing

      -- Rank background
      local rankBg = displayApi.newRoundedRect(
        rankingGroup,
        contentWidth * 0.5,
        rankY,
        380,
        38,
        6
      )
      if runner.id == "player" then
        rankBg:setFillColor(0.2, 0.4, 0.2, 0.8) -- Green for player
      else
        rankBg:setFillColor(0.15, 0.15, 0.2, 0.7)
      end

      -- Position number
      local posNum = displayApi.newText({
        parent = rankingGroup,
        text = getOrdinal(i),
        x = contentWidth * 0.5 - 160,
        y = rankY,
        font = "assets/fonts/JungleAdventurer.ttf",
        fontSize = 24
      })
      posNum:setFillColor(1, 0.9, 0.2)

      -- Runner name/animal type
      local runnerName = displayApi.newText({
        parent = rankingGroup,
        text = runner.displayName or runner.id or "Runner",
        x = contentWidth * 0.5 - 60,
        y = rankY,
        font = "assets/fonts/JungleAdventurer.ttf",
        fontSize = 22
      })
      runnerName:setFillColor(1, 1, 1)
      runnerName.anchorX = 0

      -- Runner time
      local runnerTime = displayApi.newText({
        parent = rankingGroup,
        text = formatTime(runner.finishTime or 0),
        x = contentWidth * 0.5 + 140,
        y = rankY,
        font = "assets/fonts/JungleAdventurer.ttf",
        fontSize = 20
      })
      runnerTime:setFillColor(0.8, 0.9, 1)
    end
  end

  -- Time display
  local timeText = displayApi.newText({
    parent = group,
    text = formatTime(stats.time),
    x = contentWidth * 0.5,
    y = panel.y + 90,
    font = "assets/fonts/JungleAdventurer.ttf",
    fontSize = 32
  })
  timeText:setFillColor(1, 1, 1)

  -- Stats in boxes/sections
  local leftX = panel.x - 140
  local rightX = panel.x + 140
  local statsY = panel.y + 50

  -- XP box
  local xpBg = displayApi.newRoundedRect(
    group,
    leftX,
    statsY,
    120,
    80,
    8
  )
  xpBg:setFillColor(0.15, 0.2, 0.25, 0.9)

  local xpLabel = displayApi.newText({
    parent = group,
    text = "XP",
    x = leftX,
    y = statsY - 20,
    font = "assets/fonts/JungleAdventurer.ttf",
    fontSize = 18
  })
  xpLabel:setFillColor(0.7, 0.7, 0.7)

  local xpValue = displayApi.newText({
    parent = group,
    text = string.format("+%d", stats.xp or 0),
    x = leftX,
    y = statsY + 10,
    font = "assets/fonts/JungleAdventurer.ttf",
    fontSize = 28
  })
  xpValue:setFillColor(0.4, 1, 0.4)

  -- Coins box
  local coinsBg = displayApi.newRoundedRect(
    group,
    rightX,
    statsY,
    120,
    80,
    8
  )
  coinsBg:setFillColor(0.15, 0.2, 0.25, 0.9)

  local coinsLabel = displayApi.newText({
    parent = group,
    text = "COINS",
    x = rightX,
    y = statsY - 20,
    font = "assets/fonts/JungleAdventurer.ttf",
    fontSize = 18
  })
  coinsLabel:setFillColor(0.7, 0.7, 0.7)

  local coinsValue = displayApi.newText({
    parent = group,
    text = string.format("+%d", stats.coins or 0),
    x = rightX,
    y = statsY + 10,
    font = "assets/fonts/JungleAdventurer.ttf",
    fontSize = 28
  })
  coinsValue:setFillColor(1, 0.93, 0.72)

  -- Buttons

  -- Replay button (bottom center-left)
  local replayButton = newButton(group, {
    id = "button_replay",
    width = 90,
    height = 52,
    x = contentWidth * 0.5 - 60,
    y = contentHeight - 80,
    onRelease = function()
      composer.removeScene("scenes.race")
      composer.gotoScene("scenes.race", {
        effect = "fade",
        time = 300,
        params = {
          mapId = stats.mapId
        }
      })
    end
  })

  -- Menu button (bottom center-right)
  local menuButton = newButton(group, {
    id = "button_close",
    width = 90,
    height = 52,
    x = contentWidth * 0.5 + 60,
    y = contentHeight - 80,
    onRelease = function()
      composer.gotoScene("scenes.menu", {
        effect = "slideRight",
        time = 400
      })
    end
  })

  self.group = group
end

function scene:show(event)
  if event.phase == "did" then
    audio.playSfx("race_finish")
  end
end

function scene:destroy(event)
  if self.group and self.group.removeSelf then
    self.group:removeSelf()
    self.group = nil
  end
end

scene:addEventListener("create")
scene:addEventListener("show")
scene:addEventListener("destroy")

return scene
