local random = math.random

local animals = {
  {
    id = "swiftclaw",
    name = "Swiftclaw",
    textureId = "animal_swiftclaw",
    speedBias = 1.05,
    arrowTint = { 0.95, 0.35, 0.35 },
    description = "Lightweight sprinter with quick acceleration."
  },
  {
    id = "brimstone",
    name = "Brimstone",
    textureId = "animal_brimstone",
    speedBias = 1.0,
    arrowTint = { 0.96, 0.55, 0.22 },
    description = "Reliable runner with even pacing."
  },
  {
    id = "glacier",
    name = "Glacier",
    textureId = "animal_glacier",
    speedBias = 0.97,
    arrowTint = { 0.55, 0.75, 0.95 },
    description = "Tanky racer that favors consistent jumps."
  },
  {
    id = "bramble",
    name = "Bramble",
    textureId = "animal_bramble",
    speedBias = 1.02,
    arrowTint = { 0.45, 0.85, 0.45 },
    description = "Agile climber that handles steep terrain."
  },
  {
    id = "ember",
    name = "Ember",
    textureId = "animal_ember",
    speedBias = 1.03,
    arrowTint = { 0.95, 0.8, 0.3 },
    description = "Fiery personality with explosive bursts."
  },
  {
    id = "torrent",
    name = "Torrent",
    textureId = "animal_torrent",
    speedBias = 0.99,
    arrowTint = { 0.4, 0.85, 0.9 },
    description = "Wave rider that keeps pace through rough drops."
  }
}

local function shallowCopy(input)
  if not input then
    return nil
  end
  local copy = {}
  for key, value in pairs(input) do
    copy[key] = value
  end
  return copy
end

local function buildExcludeSet(values)
  local set = {}
  if not values then
    return set
  end
  if type(values) == "table" then
    for _, entry in ipairs(values) do
      if entry then
        set[entry] = true
      end
    end
  else
    set[values] = true
  end
  return set
end

local M = {}

function M.list()
  local out = {}
  for index = 1, #animals do
    out[index] = shallowCopy(animals[index])
  end
  return out
end

function M.get(id)
  if not id then
    return nil
  end
  for index = 1, #animals do
    local entry = animals[index]
    if entry.id == id then
      return shallowCopy(entry)
    end
  end
  return nil
end

function M.default()
  return shallowCopy(animals[1])
end

function M.ensureRoster(botIds, desiredCount, exclude)
  local roster = {}
  local total = 0
  if botIds then
    for index = 1, #botIds do
      local candidate = M.get(botIds[index])
      if candidate then
        total = total + 1
        roster[total] = candidate
      end
    end
  end
  local missing = math.max(0, (desiredCount or total) - total)
  if missing > 0 then
    local extras = M.pickBots(missing, { exclude = exclude, existing = roster })
    for _, entry in ipairs(extras) do
      total = total + 1
      roster[total] = entry
    end
  end
  return roster
end

function M.pickBots(count, params)
  params = params or {}
  count = math.max(0, count or 0)
  if count == 0 then
    return {}
  end
  local excludeSet = buildExcludeSet(params.exclude)
  if params.existing then
    for _, entry in ipairs(params.existing) do
      if entry and entry.id then
        excludeSet[entry.id] = true
      end
    end
  end

  local pool = {}
  for index = 1, #animals do
    local entry = animals[index]
    if not excludeSet[entry.id] then
      pool[#pool + 1] = entry
    end
  end

  if #pool == 0 then
    return {}
  end

  local roster = {}
  local startOffset = params.offset or random(#pool)
  for i = 1, count do
    local selection = pool[((startOffset + i - 2) % #pool) + 1]
    roster[#roster + 1] = shallowCopy(selection)
  end
  return roster
end

function M.serialize(roster)
  if not roster then
    return {}
  end
  local out = {}
  for index = 1, #roster do
    local entry = roster[index]
    out[index] = entry.id
  end
  return out
end

return M
