-- Source: OriginalSourceCode/assets/config/bonusRaceConfig.json (rewritten)
-- Behavior inferred from DecompiledLua/lua.game.effects.fireworksHandler.lua (rewritten)

local constants = require("game.constants")
local runnerFactory = require("game.runner")
local trackFactory = require("game.track")
local random = require("engine.random")

local M = {}
local displayApi = rawget(_G, "display")

if not displayApi then
  error("Display API unavailable; run inside Solar2D simulator")
end

local function newBotSpec(index)
  return {
    id = "bot_" .. index,
    color = { 0.8 - (index * 0.1), 0.4 + (index * 0.1), 0.6 },
    skill = 0.9 + (index * 0.03)
  }
end

function M.newLocalMatch(options)
  local group = displayApi.newGroup()
  local track = trackFactory.newTrack()
  group:insert(track.view)

  local runners = {}
  local results = {}
  local state = "countdown"
  local countdown = constants.track.countdown
  local elapsed = 0

  local function createRunner(spec)
    local runner = runnerFactory.newRunner({
      id = spec.id,
      color = spec.color
    })
    runner.skill = spec.skill or 1
    runner.view.y = displayApi.contentCenterY + 80 + (#runners * 30)
    group:insert(runner.view)
    runners[#runners + 1] = runner
    return runner
  end

  createRunner({ id = "player", color = { 0.2, 0.6, 1 }, skill = 1 })

  local botCount = (options and options.bots) or 3
  for index = 1, botCount do
    createRunner(newBotSpec(index))
  end

  local match = {
    group = group
  }

  local function settleFinish(runner, finishTime)
    if not runner.finished then
      runner.finished = true
      runner.finishTime = finishTime
      results[#results + 1] = {
        id = runner.id,
        time = finishTime
      }
    end
  end

  function match:update(dt)
    if state == "finished" then
      return
    end

    elapsed = elapsed + dt

    if state == "countdown" then
      countdown = countdown - dt
      if countdown <= 0 then
        state = "running"
      end
      return
    end

    for _, runner in ipairs(runners) do
      if not runner.finished then
        local skillBoost = runner.skill or 1
        runner.velocity = math.min(runner.velocity + (constants.runner.acceleration * dt * skillBoost),
          constants.runner.maxSpeed * skillBoost)
        runner.progress = runner.progress + (runner.velocity * dt)
        runner.view.x = runner.progress
        if runner.progress >= constants.track.length then
          settleFinish(runner, elapsed)
        end
      end
    end

    if #results == #runners then
      state = "finished"
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
    table.sort(results, function(a, b)
      return a.time < b.time
    end)
    local placements = {}
    for index, entry in ipairs(results) do
      placements[index] = {
        id = entry.id,
        time = entry.time,
        place = index
      }
    end
    return placements
  end

  function match:reset()
    countdown = constants.track.countdown
    elapsed = 0
    state = "countdown"
    results = {}
    for _, runner in ipairs(runners) do
      runner:reset()
    end
  end

  function match:getRunners()
    return runners
  end

  function match:applyRandomPowerUps()
    for _, runner in ipairs(runners) do
      if random.random() > 0.95 then
        runner.velocity = runner.velocity * 1.1
      end
    end
  end

  match:reset()

  return match
end

return M
