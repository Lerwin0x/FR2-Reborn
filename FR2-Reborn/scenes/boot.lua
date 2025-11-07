-- Source: OriginalSourceCode/assets/lua (rewritten)
-- Behavior inferred from DecompiledLua/3.lua (rewritten)

local composer = require("composer")
local asset = require("engine.asset")
local scene = composer.newScene()

function scene:create(event)
  asset.preload()
end

function scene:show(event)
  if event.phase == "did" then
    composer.gotoScene("scenes.menu", { effect = "fade", time = 400 })
  end
end

scene:addEventListener("create")
scene:addEventListener("show")

return scene
