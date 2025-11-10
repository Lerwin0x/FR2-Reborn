local constants = require("game.constants")
local runnerFactory = require("game.runner")
local trackFactory = require("game.track")
local input = require("engine.input")
local audio = require("engine.audio")
local asset = require("engine.asset")
local powerups = require("game.powerups")
local animals = require("game.animals")
local botController = require("game.bot")

local M = {}
local displayApi = rawget(_G, "display")

if not displayApi then
  error("Display API unavailable; run inside Solar2D simulator")
end

local function computeRewards(trackLength, finishTime, place, totalRacers)
  local safeTime = math.max(finishTime or trackLength, 0.001)
  local baseXp = 120
  local speedBonus = math.max(0, math.floor((trackLength / safeTime) * 0.05))
  local placementBonus = math.max(0, (totalRacers - (place or 1)) * 12)
  local xp = baseXp + speedBonus + placementBonus
  local coins = 40 + math.floor((speedBonus + placementBonus) * 0.6)
  return xp, coins
end

function M.newLocalMatch(options)
  options = options or {}

  local group = displayApi.newGroup()
  local track = trackFactory.newTrack(options.mapId)
  group:insert(track.view)

  local state = "countdown"
  local countdown = constants.track.countdown
  local lastCountdownCue = math.ceil(countdown)
  local elapsed = 0

  local playerAnimal = animals.get(options.playerAnimalId) or animals.default()
  local botCount = math.max(0, options.botCount or 3)
  local botRoster = animals.ensureRoster(options.botRoster, botCount, playerAnimal and playerAnimal.id)

  local summary = {
    results = {},
    stats = {
      theme = track:getTheme(),
      trackName = track:getName(),
      mapId = track:getId(),
      xp = 0,
      coins = 0,
      time = 0,
      pickups = 0,
      powersUsed = 0,
      botCount = #botRoster,
      botRoster = animals.serialize(botRoster),
      playerAnimalId = playerAnimal and playerAnimal.id,
      playerTextureId = playerAnimal and playerAnimal.textureId,
      runnerCount = 1 + #botRoster
    }
  }

  local racers = {}
  local controllers = {}
  local finishOrder = {}
  local summaryReady = false
  local playerEntry

  local function addRacer(spec)
    local params = {
      id = spec.id,
      displayName = spec.name,
      textureId = spec.textureId,
      speedBias = spec.speedBias,
      showArrow = spec.showArrow,
      arrowTint = spec.arrowTint,
      renderOffsetY = spec.renderOffsetY
    }
    local runner = runnerFactory.newRunner(params)
    track.world:insert(runner.view)
    local entry = {
      id = spec.id,
      name = spec.name,
      runner = runner,
      isPlayer = spec.isPlayer,
      animal = spec.animal,
      animalId = spec.animal and spec.animal.id or nil,
      textureId = spec.textureId,
      controller = nil,
      finished = false,
      finishTime = nil,
      place = nil
    }
    racers[#racers + 1] = entry
    return entry
  end

  playerEntry = addRacer({
    id = "player",
    name = options.playerName or "You",
    textureId = playerAnimal and playerAnimal.textureId or "runner_player",
    speedBias = playerAnimal and playerAnimal.speedBias or 1,
    showArrow = true,
    arrowTint = playerAnimal and playerAnimal.arrowTint,
    renderOffsetY = 0,
    animal = playerAnimal,
    isPlayer = true
  })

  for index = 1, #botRoster do
    local bot = botRoster[index]
    local entry = addRacer({
      id = string.format("bot_%d", index),
      name = bot.name or string.format("Bot %d", index),
      textureId = bot.textureId or "runner_bot_default",
      speedBias = bot.speedBias or 1,
      showArrow = false,
      renderOffsetY = (index % 2 == 0) and -6 or 6,
      animal = bot,
      isPlayer = false
    })
    local controller = botController.new(entry.runner, track, {
      aggression = bot.speedBias,
      randomJumpInterval = 2.1 + (index * 0.3)
    })
    entry.controller = controller
    controllers[#controllers + 1] = controller
  end

  local startX, startGround = track:getStartPosition()
  local goalX = track:getGoalX()

  for index = 1, #racers do
    local entry = racers[index]
    local offsetX = -((index - 1) * (track.tileWidth * 0.18))
    entry.runner.renderOffsetY = entry.runner.renderOffsetY or ((index % 2 == 0) and -6 or 6)
    entry.runner:reset(startX + offsetX, startGround)
    if entry.controller and entry.controller.reset then
      entry.controller:reset()
    end
  end

  local floorOffset = constants.camera.floorY - startGround
  track:setWorldYOffset(floorOffset)
  track:updateCamera(playerEntry.runner.position.x)

  local pickup
  local pickupTimer = 0

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

    local spawnX = math.min(goalX - (track.tileWidth * 4), startX + (track.tileWidth * 8))
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
    local playerRunner = playerEntry.runner
    local horizontalGap = math.abs(playerRunner.position.x - pickup.view.x)
    local verticalGap = math.abs(playerRunner.position.y - pickup.view.y)
    if horizontalGap <= constants.pickup.triggerDistance and verticalGap <= constants.pickup.heightTolerance then
      pickup.spec.grant(playerRunner)
      summary.stats.pickups = summary.stats.pickups + 1
      cleanupPickup()
    end
  end

  pickup = spawnPowerPickup()
  if pickup then
    pickupTimer = 0
  end

  local playerFinished = false
  local postTimer = 0

  local function recordFinish(entry, time)
    if entry.finished then
      return
    end
    entry.finished = true
    entry.finishTime = time
    entry.runner.finished = true
    finishOrder[#finishOrder + 1] = entry
    entry.place = #finishOrder
    if entry.isPlayer then
      playerFinished = true
    end
  end

  local function finalizeResults(finalTime)
    if summaryReady then
      return
    end
    summaryReady = true
    local ordered = {}
    for index = 1, #finishOrder do
      local entry = finishOrder[index]
      ordered[#ordered + 1] = {
        id = entry.id,
        name = entry.name,
        displayName = entry.name,
        place = index,
        time = entry.finishTime or finalTime or elapsed,
        finishTime = entry.finishTime or finalTime or elapsed,
        isPlayer = entry.isPlayer,
        textureId = entry.textureId,
        animalId = entry.animalId
      }
    end
    for index = 1, #racers do
      local entry = racers[index]
      if not entry.finished then
        ordered[#ordered + 1] = {
          id = entry.id,
          name = entry.name,
          displayName = entry.name,
          place = #ordered + 1,
          time = finalTime or elapsed,
          finishTime = finalTime or elapsed,
          isPlayer = entry.isPlayer,
          textureId = entry.textureId,
          animalId = entry.animalId
        }
      end
    end
    local playerRecord
    for _, record in ipairs(ordered) do
      if record.isPlayer then
        playerRecord = record
        break
      end
    end
    if not playerRecord then
      playerRecord = {
        id = playerEntry.id,
        name = playerEntry.name,
        place = #ordered + 1,
        time = finalTime or elapsed,
        isPlayer = true
      }
      ordered[#ordered + 1] = playerRecord
    end
    summary.results = ordered
    summary.stats.time = playerRecord.time
    summary.stats.place = playerRecord.place
    local xp, coins = computeRewards(track:getLength(), playerRecord.time, playerRecord.place, #racers)
    summary.stats.xp = xp
    summary.stats.coins = coins
  end

  local function handleJump()
    if state == "finished" then
      return
    end
    playerEntry.runner:queueJump()
  end

  local function handlePower()
    if state ~= "running" and state ~= "post" then
      return
    end
    local inventory = playerEntry.runner:consumePowerUp()
    local spec = inventory and (inventory.data or powerups.get(inventory.id))
    if not spec then
      audio.playSfx("power_empty")
      return
    end
    spec.activate(playerEntry.runner)
    summary.stats.powersUsed = (summary.stats.powersUsed or 0) + 1
  end

  input.bind("jump", handleJump)
  input.bind("powerup", handlePower)

  local match = {
    group = group,
    runner = playerEntry.runner,
    track = track,
    racers = racers
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
        for index = 1, #controllers do
          local controller = controllers[index]
          if controller.reset then
            controller:reset()
          end
        end
      end
      track:updateCamera(playerEntry.runner.position.x)
      animatePickup(dt)
      return
    end

    elapsed = elapsed + dt
    local controllerState = (state == "post") and "running" or state

    for index = 1, #racers do
      local entry = racers[index]
      if entry.controller then
        entry.controller:update(dt, controllerState)
      end
      entry.runner:update(dt, track)
      if not entry.finished and entry.runner.position.x >= goalX then
        recordFinish(entry, elapsed)
      end
    end

    track:updateCamera(playerEntry.runner.position.x)
    animatePickup(dt)
    tryCollectPickup()

    -- Wait for all racers to finish (extended time for bots)
    if state == "running" and playerFinished then
      state = "post"
      postTimer = math.max(postTimer, 10.0) -- Give bots 10 seconds to finish
    end

    if state == "post" then
      postTimer = postTimer - dt
      -- Only end when all racers finish OR timeout after generous delay
      if #finishOrder == #racers or postTimer <= 0 then
        state = "finished"
        cleanupPickup()
        finalizeResults(elapsed)
      end
      return
    end

    if #finishOrder == #racers then
      state = "finished"
      cleanupPickup()
      finalizeResults(elapsed)
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

  function match:getPosition()
    -- Calculate player's current position among all racers
    if not playerEntry or not playerEntry.runner then
      return 1
    end

    local playerX = playerEntry.runner.position.x
    local position = 1

    for i = 1, #racers do
      local racer = racers[i]
      if racer and racer.runner and not racer.isPlayer then
        if racer.runner.position.x > playerX then
          position = position + 1
        end
      end
    end

    return position
  end

  function match:getStandings()
    -- Return all racers sorted by their current position (furthest ahead first)
    local standings = {}

    -- Copy racers array
    for i = 1, #racers do
      standings[i] = racers[i]
    end

    -- Sort by x position (descending)
    table.sort(standings, function(a, b)
      if not a or not a.runner or not a.runner.position then return false end
      if not b or not b.runner or not b.runner.position then return true end
      return a.runner.position.x > b.runner.position.x
    end)

    return standings
  end

  function match:getResults()
    return summary.results
  end

  function match:getRunner()
    return playerEntry.runner
  end

  function match:getTrack()
    return track
  end

  function match:getPowerSlot()
    local inventory = playerEntry.runner.powerInventory
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
    input.unbind("jump", handleJump)
    input.unbind("powerup", handlePower)
    cleanupPickup()
  end

  return match
end

return M
