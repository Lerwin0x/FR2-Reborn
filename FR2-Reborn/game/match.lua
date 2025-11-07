local constants = require("game.constants")
local runnerFactory = require("game.runner")
local trackFactory = require("game.track")
local input = require("engine.input")
local audio = require("engine.audio")
local asset = require("engine.asset")
local powerups = require("game.powerups")

local M = {}
local displayApi = rawget(_G, "display")

if not displayApi then
  error("Display API unavailable; run inside Solar2D simulator")
end

local function formatResults(time)
  return {
    {
      id = "player",
      time = time,
      place = 1
    }
  }
end

function M.newLocalMatch(options)
  local group = displayApi.newGroup()
  local track = trackFactory.newTrack(options and options.mapId)
  group:insert(track.view)

  local runner = runnerFactory.newRunner({ id = "player" })
  track.world:insert(runner.view)

  local startX, startGround = track:getStartPosition()
  runner:reset(startX, startGround)

  local floorOffset = constants.camera.floorY - startGround
  track:setWorldYOffset(floorOffset)
  track:updateCamera(startX)

  local state = "countdown"
  local countdown = constants.track.countdown
  local lastCountdownCue = math.ceil(countdown)
  local elapsed = 0
  local results = {}
  local jumpHandler
  local powerHandler
  local pickup

  local summary = {
    results = results,
    stats = {
      theme = track:getTheme(),
      trackName = track:getName(),
      mapId = track:getId(),
      xp = 0,
      coins = 0,
      time = 0,
      pickups = 0,
      powersUsed = 0
    }
  }

  local function spawnPowerPickup()
    local spec = powerups.random()
    if not spec then
      return nil
    end

    local textureId = spec.icon or "hud_power_icon_placeholder"
    local ok, filename = pcall(asset.requireTexture, textureId)
    if not ok then
      ok, filename = pcall(asset.requireTexture, "hud_power_icon_placeholder")
    end
    if not ok or not filename then
      return nil
    end
    local image = displayApi.newImageRect(track.world, filename, constants.pickup.iconSize, constants.pickup.iconSize)
    if not image then
      return nil
    end
    image.anchorX = 0.5
    image.anchorY = 0.5

    local spawnX = math.min(track:getGoalX() - (track.tileWidth * 4), startX + (track.tileWidth * 8))
    if spawnX < startX + (track.tileWidth * 2) then
      spawnX = startX + (track.tileWidth * 2)
    end
    local groundY = track:getGroundHeight(spawnX)
    image.x = spawnX
    image.y = groundY - (track.tileHeight * 0.7)

    return {
      view = image,
      spec = spec,
      baseY = image.y
    }
  end

  local pickupTimer = 0

  local function cleanupPickup()
    if pickup and pickup.view and pickup.view.removeSelf then
      pickup.view:removeSelf()
    end
    pickup = nil
  end

  local function animatePickup(dt)
    if not pickup or not pickup.view then
      return
    end
    pickupTimer = pickupTimer + dt
    pickup.view.y = pickup.baseY + math.sin(pickupTimer * 3.2) * 12
  end

  local function tryCollectPickup()
    if not pickup or not pickup.view then
      return
    end
    local horizontalGap = math.abs(runner.position.x - pickup.view.x)
    local verticalGap = math.abs(runner.position.y - pickup.view.y)
    if horizontalGap <= constants.pickup.triggerDistance and verticalGap <= constants.pickup.heightTolerance then
      pickup.spec.grant(runner)
      summary.stats.pickups = summary.stats.pickups + 1
      cleanupPickup()
    end
  end

  local function finishRace()
    if state ~= "finished" then
      state = "finished"
      runner.finished = true
      results = formatResults(elapsed)
      summary.results = results
      summary.stats.time = elapsed
      local distance = track:getLength()
      local baseXp = 120
      local speedBonus = math.max(0, math.floor((distance / math.max(elapsed, 0.001)) * 0.05))
      summary.stats.xp = baseXp + speedBonus
      summary.stats.coins = 40 + math.floor(speedBonus * 0.6)
      cleanupPickup()
    end
  end

  local function handleJump()
    if state == "finished" then
      return
    end
    runner:queueJump()
  end

  local function handlePower()
    if state ~= "running" then
      return
    end
    local inventory = runner:consumePowerUp()
    local spec = inventory and (inventory.data or powerups.get(inventory.id))
    if not spec then
      audio.playSfx("power_empty")
      return
    end
    spec.activate(runner)
    summary.stats.powersUsed = (summary.stats.powersUsed or 0) + 1
  end

  jumpHandler = handleJump
  powerHandler = handlePower

  input.bind("jump", jumpHandler)
  input.bind("powerup", powerHandler)

  pickup = spawnPowerPickup()
  if pickup then
    pickupTimer = 0
  end

  local match = {
    group = group,
    runner = runner,
    track = track
  }

  function match:update(dt)
    if state == "finished" then
      return
    end

    if state == "countdown" then
      countdown = countdown - dt
      local cue = math.ceil(countdown)
      if cue < lastCountdownCue and cue > 0 then
        audio.playSfx("countdown_tick")
        lastCountdownCue = cue
      end
      if countdown <= 0 then
        state = "running"
        countdown = 0
        audio.playSfx("race_start")
      end
      track:updateCamera(runner.position.x)
      animatePickup(dt)
      return
    end

    elapsed = elapsed + dt
    runner:update(dt, track)
    track:updateCamera(runner.position.x)
    animatePickup(dt)
    tryCollectPickup()

    if runner.position.x >= track:getGoalX() then
      finishRace()
    end
  end

  function match:getState()
    return state
  end

  function match:getCountdown()
    return math.max(0, countdown)
  end

  function match:getElapsed()
    return elapsed
  end

  function match:getResults()
    return summary.results
  end

  function match:getRunner()
    return runner
  end

  function match:getTrack()
    return track
  end

  function match:getPowerSlot()
    local inventory = runner.powerInventory
    if inventory and inventory.data then
      return {
        id = inventory.id,
        icon = inventory.data.icon
      }
    end
    return nil
  end

  function match:getSummary()
    return summary
  end

  function match:destroy()
    input.unbind("jump", jumpHandler)
    input.unbind("powerup", powerHandler)
    cleanupPickup()
  end

  return match
end

return M
