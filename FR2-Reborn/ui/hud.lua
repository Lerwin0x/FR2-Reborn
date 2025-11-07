-- Source: OriginalSourceCode/assets/images/gui (rewritten)
-- Behavior inferred from DecompiledLua/images.gui.postgame.adCoins.adCoins.lua (rewritten)

local constants = require("game.constants")

local M = {}
local displayApi = rawget(_G, "display")

if not displayApi then
  error("Display API unavailable; run inside Solar2D simulator")
end

function M.newHud()
  local group = displayApi.newGroup()

  local countdownText = displayApi.newText({
    parent = group,
    text = "",
    x = displayApi.contentCenterX,
    y = displayApi.safeScreenOriginY + 80,
    font = native.systemFontBold,
    fontSize = 72
  })

  local timerText = displayApi.newText({
    parent = group,
    text = "0.00",
    x = displayApi.contentCenterX,
    y = displayApi.safeScreenOriginY + 20,
    font = native.systemFont,
    fontSize = 28
  })

  local placementText = displayApi.newText({
    parent = group,
    text = "",
    x = displayApi.safeScreenOriginX + 120,
    y = displayApi.safeScreenOriginY + 24,
    font = native.systemFontBold,
    fontSize = 28
  })

  local hud = {
    view = group
  }

  function hud:update(match)
    if match:getState() == "countdown" then
      countdownText.text = string.format("%.1f", match:getCountdown())
    else
      countdownText.text = ""
    end

    timerText.text = string.format(constants.hud.timerFormat, match:getElapsed())

    local results = match:getResults()
    for _, entry in ipairs(results) do
      if entry.id == "player" then
        placementText.text = string.format("Place: %d", entry.place)
        return
      end
    end
    placementText.text = "Place: --"
  end

  function hud:destroy()
    if group.removeSelf then
      group:removeSelf()
    end
  end

  return hud
end

return M
