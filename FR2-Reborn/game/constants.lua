-- Source: OriginalSourceCode/assets/config/config.json (rewritten)
-- Behavior inferred from DecompiledLua/config.lua (rewritten)

local C = {
  runner = {
    baseSpeed = 240,
    acceleration = 120,
    maxSpeed = 360
  },
  track = {
    length = 1600,
    gravity = 24,
    countdown = 3
  },
  camera = {
    lookAhead = 140,
    dampening = 0.15
  },
  hud = {
    timerFormat = "%.2f"
  }
}

return C
