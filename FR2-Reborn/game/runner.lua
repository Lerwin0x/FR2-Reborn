local constants = require("game.constants")
local asset = require("engine.asset")
local audio = require("engine.audio")

local displayApi = rawget(_G, "display")

if not displayApi then
  error("Display API unavailable; run inside Solar2D simulator")
end

local M = {}
local unpackFn = table.unpack or unpack

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

local function createSprite(params)
  params = params or {}
  local group = displayApi.newGroup()
  group.anchorChildren = true

  local avatarId = params.textureId or "runner_player"
  local avatarWidth = params.width or constants.runner.width
  local avatarHeight = params.height or constants.runner.height
  local avatar

  do
    local ok, image = pcall(asset.newImage, {
      parent = group,
      id = avatarId,
      width = avatarWidth,
      height = avatarHeight
    })
    if ok and image then
      avatar = image
    else
      avatar = displayApi.newRoundedRect(group, 0, 0, avatarWidth, avatarHeight, 18)
      avatar:setFillColor(0.25, 0.75, 0.35)
      avatar.anchorY = 1
    end
  end

  avatar.anchorY = 1
  avatar.x = 0
  avatar.y = 0

  if params.tint and avatar.setFillColor then
    avatar:setFillColor(unpackFn(params.tint))
  end

  local arrow
  if params.showArrow ~= false then
    local arrowId = params.arrowTextureId or "runner_arrow"
    local ok, image = pcall(asset.newImage, {
      parent = group,
      id = arrowId,
      width = params.arrowWidth or 60,
      height = params.arrowHeight or 60
    })
    if ok and image then
      arrow = image
      if params.arrowTint and arrow.setFillColor then
        arrow:setFillColor(unpackFn(params.arrowTint))
      end
      arrow.anchorY = 1
      arrow.y = -(params.arrowOffset or (avatarHeight + 12))
    end
  end

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

  local speedBias = self.speedBias or 1
  local minSpeed = constants.runner.forwardSpeed * speedBias
  local maxSpeed = constants.runner.maxForwardSpeed * self.speedMultiplier * speedBias
  local acceleration = constants.runner.acceleration * speedBias

  self.velocityX = clamp(
    self.velocityX + (acceleration * dt * self.speedMultiplier),
    minSpeed,
    maxSpeed
  )

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
  self.view.y = self.position.y + (self.renderOffsetY or 0)

  if self.velocityX > 0 then
    self.view.xScale = 1
  end
end

function Runner:reset(startX, startY)
  self.position.x = startX
  self.position.y = startY
  local speedBias = self.speedBias or 1
  self.velocityX = constants.runner.forwardSpeed * speedBias
  self.velocityY = 0
  self.coyoteTimer = 0
  self.jumpBuffer = 0
  self.isGrounded = false
  self.finished = false
  self.powerTimer = 0
  self.speedMultiplier = 1
  self.view.x = startX
  self.view.y = startY + (self.renderOffsetY or 0)
end

function M.newRunner(params)
  params = params or {}
  local runner = setmetatable({}, Runner)
  runner.id = params.id or "player"
  runner.displayName = params.displayName or params.name or runner.id
  runner.view = createSprite(params)
  runner.position = {
    x = 0,
    y = 0
  }
  local numericBias = params.speedBias
  if type(numericBias) ~= "number" then
    numericBias = tonumber(numericBias) or 1
  end
  if numericBias <= 0 then
    numericBias = 1
  end
  runner.speedBias = numericBias
  runner.velocityX = constants.runner.forwardSpeed * runner.speedBias
  runner.velocityY = 0
  runner.coyoteTimer = 0
  runner.jumpBuffer = 0
  runner.speedMultiplier = 1
  runner.powerTimer = 0
  runner.powerInventory = nil
  runner.isGrounded = false
  runner.finished = false
  runner.renderOffsetY = params.renderOffsetY or 0
  runner.textureId = params.textureId or "runner_player"
  runner.showArrow = params.showArrow ~= false
  runner.avatar = runner.view and runner.view.avatar
  runner.arrowView = runner.view and runner.view.arrow

  return runner
end

return M
