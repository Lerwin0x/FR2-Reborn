local constants = require("game.constants")
local asset = require("engine.asset")
local audio = require("engine.audio")

local displayApi = rawget(_G, "display")

if not displayApi then
  error("Display API unavailable; run inside Solar2D simulator")
end

local M = {}

local Runner = {}
Runner.__index = Runner

local function clamp(value, minValue, maxValue)
  if value < minValue then
    return minValue
  end
  if value > maxValue then
    return maxValue
  end
  return value
end

local function createSprite()
  local group = displayApi.newGroup()
  group.anchorChildren = true

  local avatar = asset.newImage({
    parent = group,
    id = "runner_player",
    width = constants.runner.width,
    height = constants.runner.height
  })
  avatar.anchorY = 1
  avatar.x = 0
  avatar.y = 0

  local arrow = asset.newImage({
    parent = group,
    id = "runner_arrow",
    width = 60,
    height = 60
  })
  arrow.anchorY = 1
  arrow.y = -constants.runner.height - 12

  group.avatar = avatar
  group.arrow = arrow

  return group
end

function Runner:queueJump()
  self.jumpBuffer = constants.runner.jumpBuffer
end

function Runner:grantPowerUp(powerId, data)
  self.powerInventory = {
    id = powerId,
    data = data
  }
end

function Runner:consumePowerUp()
  local payload = self.powerInventory
  self.powerInventory = nil
  return payload
end

function Runner:activateSpeedBoost(multiplier, duration)
  self.speedMultiplier = multiplier or constants.runner.speedBoostMultiplier
  self.powerTimer = duration or constants.runner.speedBoostDuration
  audio.playSfx("power_speed")
end

function Runner:clearPower()
  self.speedMultiplier = 1
  self.powerTimer = 0
end

function Runner:update(dt, track)
  if self.finished then
    return
  end

  if self.jumpBuffer > 0 then
    self.jumpBuffer = self.jumpBuffer - dt
    if self.jumpBuffer < 0 then
      self.jumpBuffer = 0
    end
  end

  if self.coyoteTimer > 0 then
    self.coyoteTimer = self.coyoteTimer - dt
    if self.coyoteTimer < 0 then
      self.coyoteTimer = 0
    end
  end

  if self.powerTimer > 0 then
    self.powerTimer = self.powerTimer - dt
    if self.powerTimer <= 0 then
      self.speedMultiplier = 1
      self.powerTimer = 0
    end
  end

  local desiredSpeed = constants.runner.forwardSpeed * self.speedMultiplier
  self.velocityX = clamp(
    self.velocityX + (constants.runner.acceleration * dt * self.speedMultiplier),
    constants.runner.forwardSpeed,
    constants.runner.maxForwardSpeed * self.speedMultiplier
  )
  if self.velocityX < desiredSpeed then
    self.velocityX = clamp(desiredSpeed, constants.runner.forwardSpeed,
      constants.runner.maxForwardSpeed * self.speedMultiplier)
  end

  self.velocityY = self.velocityY + (constants.runner.gravity * dt)

  local nextX = self.position.x + (self.velocityX * dt)
  local nextY = self.position.y + (self.velocityY * dt)

  local groundY = track:getGroundHeight(nextX)

  local wantJump = (self.jumpBuffer or 0) > 0 and (self.coyoteTimer or 0) > 0
  if wantJump then
    self.velocityY = constants.runner.jumpVelocity
    self.coyoteTimer = 0
    self.jumpBuffer = 0
    self.isGrounded = false
    audio.playSfx("jump")
  end

  if self.velocityY >= 0 then
    if nextY >= groundY then
      nextY = groundY
      if self.velocityY > 0 then
        self.velocityY = 0
      end
      if not self.isGrounded then
        self.isGrounded = true
      end
      self.coyoteTimer = constants.runner.coyoteWindow
    else
      self.isGrounded = false
    end
  else
    self.isGrounded = false
  end

  self.position.x = nextX
  self.position.y = nextY

  self.view.x = self.position.x
  self.view.y = self.position.y

  if self.velocityX > 0 then
    self.view.xScale = 1
  end
end

function Runner:reset(startX, startY)
  self.position.x = startX
  self.position.y = startY
  self.velocityX = constants.runner.forwardSpeed
  self.velocityY = 0
  self.coyoteTimer = 0
  self.jumpBuffer = 0
  self.isGrounded = false
  self.finished = false
  self.powerTimer = 0
  self.speedMultiplier = 1
  self.view.x = startX
  self.view.y = startY
end

function M.newRunner(params)
  params = params or {}
  local runner = setmetatable({}, Runner)
  runner.id = params.id or "player"
  runner.view = createSprite()
  runner.position = {
    x = 0,
    y = 0
  }
  runner.velocityX = constants.runner.forwardSpeed
  runner.velocityY = 0
  runner.coyoteTimer = 0
  runner.jumpBuffer = 0
  runner.speedMultiplier = 1
  runner.powerTimer = 0
  runner.powerInventory = nil
  runner.isGrounded = false
  runner.finished = false

  return runner
end

return M
