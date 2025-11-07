-- Source: OriginalSourceCode/assets/spine-lua/README.md (rewritten)
-- Behavior inferred from DecompiledLua/lua.menu (rewritten)

local composer = require("composer")
local asset = require("engine.asset")
local widgets = require("ui.widgets")
local scene = composer.newScene()

function scene:create(event)
  local group = self.view

  local background = asset.newImage({
    parent = group,
    id = "menu_background",
    width = display.actualContentWidth * 1.15,
    height = display.actualContentHeight * 1.15
  })
  background.x = display.contentCenterX
  background.y = display.contentCenterY

  local logo = asset.newImage({
    parent = group,
    id = "menu_logo",
    width = 420,
    height = 180
  })
  logo.x = display.contentCenterX
  logo.y = display.contentCenterY - 220

  local startButton = widgets.newButton({
    label = "Start Race",
    labelColor = { 0.1, 0.1, 0.1 },
    onRelease = function()
      composer.gotoScene("scenes.race", { effect = "slideLeft", time = 300 })
    end
  })
  startButton.x = display.contentCenterX
  startButton.y = display.contentCenterY + 160
  self.startButton = startButton

  group:insert(startButton)
end

scene:addEventListener("create")

return scene
