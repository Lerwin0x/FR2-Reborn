-- Source: OriginalSourceCode/assets/images/gui/postgame (rewritten)
-- Behavior inferred from DecompiledLua/images.gui.postgame.adCoins.adCoins.lua (rewritten)

local composer = require("composer")
local widgets = require("ui.widgets")

local scene = composer.newScene()
local displayApi = rawget(_G, "display")

if not displayApi then
  error("Display API unavailable; run inside Solar2D simulator")
end

function scene:create(event)
  local group = self.view
  local params = event.params or {}
  local results = params.results or {}

  local background = displayApi.newRect(group, displayApi.contentCenterX, displayApi.contentCenterY,
    displayApi.actualContentWidth, displayApi.actualContentHeight)
  background:setFillColor(0.05, 0.05, 0.1)

  local title = displayApi.newText({
    parent = group,
    text = "Results",
    x = displayApi.contentCenterX,
    y = displayApi.safeScreenOriginY + 60,
    font = native.systemFontBold,
    fontSize = 48
  })

  for index, entry in ipairs(results) do
    local line = string.format("%d. %s - %.2fs", entry.place, entry.id, entry.time)
    displayApi.newText({
      parent = group,
      text = line,
      x = displayApi.contentCenterX,
      y = displayApi.safeScreenOriginY + 120 + (index - 1) * 36,
      font = native.systemFont,
      fontSize = 24
    })
  end

  local backButton = widgets.newButton({
    label = "Back to Menu",
    onRelease = function()
      composer.gotoScene("scenes.menu", { effect = "slideRight", time = 400 })
    end
  })
  backButton.x = displayApi.contentCenterX
  backButton.y = displayApi.safeScreenOriginY + 280
  group:insert(backButton)
end

scene:addEventListener("create")

return scene
