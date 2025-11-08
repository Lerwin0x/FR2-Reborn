local BotController = {}
BotController.__index = BotController

local function clamp(value, minValue, maxValue)
  if value < minValue then
    return minValue
  end
  if value > maxValue then
    return maxValue
  end
  return value
end

local function newRandomTimer(base)
  return base * (0.6 + math.random() * 0.8)
end

function BotController.new(runner, track, spec)
  spec = spec or {}
  local controller = {
    runner = runner,
    track = track,
    aggression = spec.aggression or 1,
    lookAhead = spec.lookAhead or (track.tileWidth * 2.4),
    jumpThreshold = spec.jumpThreshold or (track.tileHeight * 0.65),
    dropThreshold = spec.dropThreshold or (track.tileHeight * 0.85),
    gapThreshold = spec.gapThreshold or (track.tileHeight * 2.4),
    jumpCooldown = 0,
    randomJumpInterval = spec.randomJumpInterval or 2.4,
    randomTimer = newRandomTimer(spec.randomJumpInterval or 2.4)
  }
  return setmetatable(controller, BotController)
end

function BotController:reset()
  self.jumpCooldown = 0
  self.randomTimer = newRandomTimer(self.randomJumpInterval)
end

local function isGap(track, x)
  local height = track:getGroundHeight(x)
  return height >= (track.mapHeight * track.tileHeight)
end

function BotController:update(dt, raceState)
  if raceState ~= "running" then
    return
  end
  local runner = self.runner
  if not runner or runner.finished then
    return
  end
  local track = self.track
  self.jumpCooldown = math.max(0, (self.jumpCooldown or 0) - dt)
  self.randomTimer = (self.randomTimer or self.randomJumpInterval) - dt

  local speedBias = clamp(self.aggression or 1, 0.8, 1.3)
  runner.speedBias = speedBias

  local positionX = runner.position.x
  local aheadX = positionX + self.lookAhead
  local groundNow = track:getGroundHeight(positionX)
  local groundAhead = track:getGroundHeight(aheadX)
  local heightDiff = (groundAhead or groundNow) - groundNow

  local shouldJump = false
  if self.jumpCooldown <= 0 then
    if isGap(track, aheadX) then
      shouldJump = true
      self.jumpCooldown = 0.55
    elseif heightDiff > self.jumpThreshold then
      shouldJump = true
      self.jumpCooldown = 0.42
    elseif heightDiff < -self.dropThreshold and runner.isGrounded then
      shouldJump = true
      self.jumpCooldown = 0.38
    elseif self.randomTimer <= 0 and runner.isGrounded then
      shouldJump = true
      self.jumpCooldown = 0.36
    end
  end

  if shouldJump then
    runner:queueJump()
    self.randomTimer = newRandomTimer(self.randomJumpInterval)
  end
end

return BotController
