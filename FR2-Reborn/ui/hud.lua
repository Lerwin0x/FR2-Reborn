local constants = require("game.constants")
local asset = require("engine.asset")

local M = {}
local displayApi = rawget(_G, "display")
local nativeApi = rawget(_G, "native")

if not displayApi or not nativeApi then
  error("HUD requires Solar2D display/native globals")
end

local function newCountdownSprites(group)
  local sprites = {
    { threshold = 2.5,        id = "countdown_3" },
    { threshold = 1.5,        id = "countdown_2" },
    { threshold = 0.5,        id = "countdown_1" },
    { threshold = -math.huge, id = "countdown_go" }
  }

  for index = 1, #sprites do
    local sprite = asset.newImage({
      parent = group,
      id = sprites[index].id,
      width = 300,
      height = 260
    })
    sprite.isVisible = false
    sprite.x = displayApi.contentCenterX
    sprite.y = displayApi.safeScreenOriginY + 140
    sprites[index].view = sprite
  end

  return sprites
end

local function showCountdownSprite(sprites, remaining)
  local shown = false
  for index = 1, #sprites do
    local entry = sprites[index]
    local shouldShow = false
    if not shown then
      if index == #sprites then
        shouldShow = remaining <= 0.15
      else
        shouldShow = remaining > entry.threshold
      end
    end
    entry.view.isVisible = shouldShow
    if shouldShow then
      shown = true
    end
  end
end

function M.newHud()
  local group = displayApi.newGroup()

  local timerText = displayApi.newText({
    parent = group,
    text = "0.00",
    x = displayApi.contentCenterX,
    y = displayApi.safeScreenOriginY + 36,
    font = nativeApi.systemFontBold,
    fontSize = 48
  })

  local countdownSprites = newCountdownSprites(group)

  local powerSlot = asset.newImage({
    parent = group,
    id = "hud_power_slot",
    width = 420,
    height = 120
  })
  powerSlot.anchorX = 1
  powerSlot.anchorY = 1
  powerSlot.x = displayApi.safeScreenOriginX + displayApi.actualContentWidth - 40
  powerSlot.y = displayApi.safeScreenOriginY + displayApi.actualContentHeight - 40

  local powerIcon = asset.newImage({
    parent = group,
    id = "hud_power_icon_placeholder",
    width = 96,
    height = 96
  })
  powerIcon.anchorX = 1
  powerIcon.anchorY = 1
  powerIcon.x = powerSlot.x - 40
  powerIcon.y = powerSlot.y - 12

  local hud = {
    view = group,
    currentPowerIcon = "hud_power_icon_placeholder"
  }

  function hud:update(match)
    timerText.text = string.format(constants.hud.timerFormat, match:getElapsed())

    if match:getState() == "countdown" then
      showCountdownSprite(countdownSprites, match:getCountdown())
    else
      for index = 1, #countdownSprites do
        countdownSprites[index].view.isVisible = false
      end
    end

    local slot = match:getPowerSlot()
    local iconId = slot and slot.icon or "hud_power_icon_placeholder"
    if iconId ~= hud.currentPowerIcon then
      hud.currentPowerIcon = iconId
      local texture = asset.requireTexture(iconId)
      powerIcon.fill = { type = "image", filename = texture }
    end
  end

  function hud:destroy()
    if group.removeSelf then
      group:removeSelf()
    end
  end

  return hud
end

return M
