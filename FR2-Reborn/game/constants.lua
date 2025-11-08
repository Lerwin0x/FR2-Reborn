-- Source: OriginalSourceCode/assets/config/config.json (rewritten)
-- Behavior inferred from DecompiledLua/config.lua (rewritten)

local C = {
  runner = {
    width = 90,
    height = 110,
    forwardSpeed = 420,
    maxForwardSpeed = 640,
    acceleration = 320,
    jumpVelocity = -920,
    gravity = 2100,
    coyoteWindow = 0.12,
    jumpBuffer = 0.1,
    speedBoostMultiplier = 1.5,
    speedBoostDuration = 2.4
  },
  track = {
    defaultMap = "3",
    countdown = 3,
    worldScale = 1,
    tileWidth = 160,
    tileHeight = 100
  },
  camera = {
    offsetX = 640,
    floorY = 640, -- Adjusted for 720x1280 resolution
    smoothing = 12
  },
  hud = {
    timerFormat = "%.2f",
    powerCooldownFormat = "%.1fs"
  },
  pickup = {
    triggerDistance = 140,
    heightTolerance = 120,
    iconSize = 108 * 3 -- Scaled 3x for visibility
  }
}

return C
