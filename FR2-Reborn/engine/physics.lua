-- Source: OriginalSourceCode/assets/config/physics (rewritten)
-- Behavior inferred from DecompiledLua/config.physics.shared_special.lua (rewritten)

local physics = require("physics")
local M = {}

function M.start()
  physics.start()
  physics.setGravity(0, 24)
end

function M.stop()
  physics.stop()
end

function M.setDrawMode(mode)
  physics.setDrawMode(mode)
end

return M
