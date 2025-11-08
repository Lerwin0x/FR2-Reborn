local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
L1_1 = nil
L2_1 = require
L3_1 = "lua.modules.jsonParser"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)

function L4_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.getJsonFromFile
  L1_2 = "config/config.json"
  L0_2 = L0_2(L1_2)
  L1_1 = L0_2
end

L0_1.readFromFile = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = L1_1
  if L0_2 == nil then
    L0_2 = true
    return L0_2
  end
  L0_2 = L1_1
  L0_2 = L0_2.numberOfMaps
  if not L0_2 then
    L0_2 = true
    return L0_2
  end
  L0_2 = false
  return L0_2
end

L0_1.isFileCorrupt = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1
  L0_2 = L0_2.isFileCorrupt
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = print
    L1_2 = "WARNING: Reloading Config File."
    L0_2(L1_2)
    L0_2 = L3_1
    L0_2 = L0_2.analytics
    L0_2 = L0_2.newEvent
    L1_2 = "design"
    L2_2 = {}
    L2_2.event_id = "config:fileCorrupt"
    L3_2 = L3_1
    L3_2 = L3_2.config
    L3_2 = L3_2.fullVersion
    L2_2.area = L3_2
    L0_2(L1_2, L2_2)
    L0_2 = L0_1
    L0_2 = L0_2.readFromFile
    L0_2()
  end
end

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  if L0_2 then
    L0_2 = tonumber
    L1_2 = L1_1
    L1_2 = L1_2.numberOfMaps
    return L0_2(L1_2)
  else
    L0_2 = 0
    return L0_2
  end
end

L0_1.getNumberOfMaps = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.adventure
  L0_2 = L0_2.numberOfZones
  if L0_2 then
    L0_2 = tonumber
    L1_2 = L1_1
    L1_2 = L1_2.adventure
    L1_2 = L1_2.numberOfZones
    return L0_2(L1_2)
  else
    L0_2 = 1
    return L0_2
  end
end

L0_1.getNumberOfZones = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L4_1
  L1_2()
  if not A0_2 then
    return
  end
  L1_2 = L1_1
  L1_2 = L1_2.adventure
  L1_2 = L1_2.themes
  L1_2 = L1_2[A0_2]
  if L1_2 then
    return L1_2
  else
    L2_2 = print
    L3_2 = "Warning: No theme for zoneId, "
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    L2_2 = ""
    return L2_2
  end
end

L0_1.getZoneThemeString = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.version
  return L0_2
end

L0_1.getVersion = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.physicsDefinitions
  L0_2 = L0_2.setup
  L0_2 = L0_2.velocityIterations
  return L0_2
end

L0_1.getVelocityIterations = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.physicsDefinitions
  L0_2 = L0_2.setup
  L0_2 = L0_2.positionIterations
  return L0_2
end

L0_1.getPositionIterations = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.physicsDefinitions
  L0_2 = L0_2.setup
  L0_2 = L0_2.scale
  return L0_2
end

L0_1.getScale = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.physicsDefinitions
  L0_2 = L0_2.setup
  L0_2 = L0_2.gravity
  return L0_2
end

L0_1.getGravity = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.physicsDefinitions
  L0_2 = L0_2.setup
  L0_2 = L0_2.gravityWaterUpScale
  return L0_2
end

L0_1.getWaterUpScale = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.physicsDefinitions
  L0_2 = L0_2.setup
  L0_2 = L0_2.gravityWaterDownScale
  return L0_2
end

L0_1.getWaterDownScale = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.physicsDefinitions
  L0_2 = L0_2.setup
  L0_2 = L0_2.waterSpeedTransitionFactor
  return L0_2
end

L0_1.getWaterSpeedTransitionFactor = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.physicsDefinitions
  L0_2 = L0_2.setup
  L0_2 = L0_2.terminalVelocity
  return L0_2
end

L0_1.getTerminalVelocity = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.physicsDefinitions
  L0_2 = L0_2.setup
  L0_2 = L0_2.blockSizeX
  return L0_2
end

L0_1.getBlockSizeX = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.physicsDefinitions
  L0_2 = L0_2.setup
  L0_2 = L0_2.blockSizeY
  return L0_2
end

L0_1.getBlockSizeY = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.physicsDefinitions
  L0_2 = L0_2.player
  L0_2 = L0_2.playerBody
  return L0_2
end

L0_1.getPlayerBodyOptions = L5_1

function L5_1(A0_2)
  local L1_2
  L1_2 = L4_1
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.gameDefinitions
  L1_2 = L1_2.acceleration
  L1_2 = L1_2[A0_2]
  return L1_2
end

L0_1.getAcceleration = L5_1

function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L4_1
  L0_2()
  L0_2 = 0
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.gameDefinitions
  L2_2 = L2_2.acceleration
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L0_2 = L0_2 + 1
  end
  return L0_2
end

L0_1.getAccelerationSteps = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.deadSlowFactor
  return L0_2
end

L0_1.getDeadSlowFactor = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.maxSpeedDeaccelerationFactor
  return L0_2
end

L0_1.getMaxSpeedDeaccelerationFactor = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.airBuoyancy
  return L0_2
end

L0_1.getAirBuoyancy = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.waterBuoyancy
  return L0_2
end

L0_1.getWaterBuoyancy = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.maxSpeed
  return L0_2
end

L0_1.getMaxSpeed = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.yAccelerationCap
  return L0_2
end

L0_1.yAccelerationCap = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.maxSpeedSlope
  return L0_2
end

L0_1.getMaxSpeedSlopeBonus = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.maxSpeedCart
  return L0_2
end

L0_1.getMaxSpeedCartBonus = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.cartAcceleration
  return L0_2
end

L0_1.getCartAccelerationBonus = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.minecartJumpSpeed
  return L0_2
end

L0_1.getMinecartJumpSpeed = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.respawnSpeed
  return L0_2
end

L0_1.getRespawnSpeed = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.respawnTime
  return L0_2
end

L0_1.getRespawnTime = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.regenTime
  return L0_2
end

L0_1.getRegenTime = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.contdownTime
  return L0_2
end

L0_1.getContdownTime = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.startingHP
  return L0_2
end

L0_1.getStartingHP = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.maxHP
  return L0_2
end

L0_1.getMaxHP = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.selfHitDelay
  return L0_2
end

L0_1.getPowerUpSelfHitDelay = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.numberOfPlayers
  return L0_2
end

L0_1.getNumberOfPlayers = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.numberOfPassives
  return L0_2
end

L0_1.getNumberOfPassives = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.glide
  return L0_2
end

L0_1.getPlayerGlideFactor = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.jumpCheckDelay
  return L0_2
end

L0_1.getJumpCheckDelay = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.jumpDelay
  return L0_2
end

L0_1.getJumpDelay = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.jumpPenelty
  return L0_2
end

L0_1.getJumpPenalty = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.jumpAccelerationPenalty
  return L0_2
end

L0_1.getJumpAccelerationPenalty = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.powerUpDelay
  return L0_2
end

L0_1.getPowerUpDelay = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.numberOfJumps
  return L0_2
end

L0_1.getNumberOfJumps = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.jumpSpeed
  return L0_2
end

L0_1.getJumpSpeed = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.gameDefinitions
  L0_2 = L0_2.invulnerabilityTime
  return L0_2
end

L0_1.getInvulnerabilityTime = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L4_1
  L1_2()
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.powerUps
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = tonumber
    L7_2 = L5_2.id
    L6_2 = L6_2(L7_2)
    L7_2 = tonumber
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L6_2 == L7_2 then
      return L4_2
    end
  end
  L1_2 = "none"
  return L1_2
end

L0_1.getPowerUpName = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L4_1
  L1_2()
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.powerUps
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.id
    if L6_2 == A0_2 then
      L6_2 = L5_2.dinoCorpTrap
      if L6_2 then
        L6_2 = true
        return L6_2
      end
    end
  end
  L1_2 = false
  return L1_2
end

L0_1.isDinoCorpTrap = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L4_1
  L1_2()
  L1_2 = 0
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.powerUps
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    if L7_2 == A0_2 then
      L7_2 = L6_2.damage
      if L7_2 then
        L1_2 = L6_2.damage
      end
    end
  end
  return L1_2
end

L0_1.getPowerUpDamage = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L4_1
  L1_2()
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.powerUps
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    if L7_2 == A0_2 then
      L7_2 = L6_2.chance
      if L7_2 then
        L1_2 = L6_2.chance
      end
    end
  end
  return L1_2
end

L0_1.getPowerUpChance = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.none
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getPowerUpNoneId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.laser
  return L0_2
end

L0_1.getLaserData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.laser
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getLaserId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.wind
  return L0_2
end

L0_1.getWindData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.wind
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getWindId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.speed
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getSpeedId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.speed
  L0_2 = L0_2.maxSpeedBonus
  return L0_2
end

L0_1.getSpeedMaxSpeedBonus = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.speed
  L0_2 = L0_2.accelerationBonus
  return L0_2
end

L0_1.getSpeedAccelerationBonus = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.speed
  L0_2 = L0_2.duration
  return L0_2
end

L0_1.getSpeedDuration = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.speed
  L0_2 = L0_2.initialBoost
  return L0_2
end

L0_1.getSpeedInitialBoost = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.speed
  return L0_2
end

L0_1.getSpeedData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.trap
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getTrapId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.trap
  return L0_2
end

L0_1.getTrapData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.trap
  L0_2 = L0_2.duration
  return L0_2
end

L0_1.getTrapDuration = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.trap
  L0_2 = L0_2.xForce
  return L0_2
end

L0_1.getTrapXForce = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.trap
  L0_2 = L0_2.yForce
  return L0_2
end

L0_1.getTrapYForce = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.trap
  L0_2 = L0_2.options
  return L0_2
end

L0_1.getTrapOptions = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.confusion
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getConfusionId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.confusion
  L0_2 = L0_2.playerDuration
  return L0_2
end

L0_1.getConfusionPlayerDuration = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.confusion
  L0_2 = L0_2.duration
  return L0_2
end

L0_1.getConfusionDuration = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.confusion
  L0_2 = L0_2.options
  return L0_2
end

L0_1.getConfusionOptions = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.shield
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getShieldId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.shield
  L0_2 = L0_2.duration
  return L0_2
end

L0_1.getShieldTime = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.shield
  L0_2 = L0_2.damageRadius
  return L0_2
end

L0_1.getShieldDamageRadius = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.shield
  L0_2 = L0_2.damage
  return L0_2
end

L0_1.getShieldDamage = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.teleport
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getTeleportId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.teleport
  L0_2 = L0_2.trigerDistance
  return L0_2
end

L0_1.getTeleportTrigerDistance = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.teleport
  L0_2 = L0_2.delay
  return L0_2
end

L0_1.getTeleportDelay = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.forestTrap
  return L0_2
end

L0_1.getForestTrapData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.forestBlade
  return L0_2
end

L0_1.getForestBladeData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.fireTrap
  return L0_2
end

L0_1.getFireTrapData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.fireBlade
  return L0_2
end

L0_1.getFireBladeData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.waterTrap
  return L0_2
end

L0_1.getWaterTrapData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.waterBlade
  return L0_2
end

L0_1.getWaterBladeData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.cage
  return L0_2
end

L0_1.getCageData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.stealth
  return L0_2
end

L0_1.getStealthData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.fakePU
  return L0_2
end

L0_1.getFakePUData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.stumbleTrap
  return L0_2
end

L0_1.getStumbleTrapData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.powerUps
  L0_2 = L0_2.knockUpTrap
  return L0_2
end

L0_1.getKnockUpTrapData = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L4_1
  L1_2()
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.powerUps
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = tonumber
    L7_2 = L5_2.id
    L6_2 = L6_2(L7_2)
    if L6_2 == A0_2 then
      L6_2 = L5_2.respawnType
      if L6_2 then
        L6_2 = tonumber
        L7_2 = L5_2.respawnType
        return L6_2(L7_2)
      end
    end
  end
  L1_2 = 0
  return L1_2
end

L0_1.getRespawnType = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L4_1
  L1_2()
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.passiveAbilities
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = tonumber
    L7_2 = L5_2.id
    L6_2 = L6_2(L7_2)
    L7_2 = tonumber
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L6_2 == L7_2 then
      return L4_2
    end
  end
  L1_2 = "none"
  return L1_2
end

L0_1.getPassiveName = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L4_1
  L1_2()
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.passiveAbilities
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = tonumber
    L7_2 = L5_2.id
    L6_2 = L6_2(L7_2)
    L7_2 = tonumber
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L6_2 == L7_2 then
      return L5_2
    end
  end
  L1_2 = {}
  return L1_2
end

L0_1.getPassiveData = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L4_1
  L1_2()
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.passiveAbilities
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = tonumber
    L7_2 = L5_2.id
    L6_2 = L6_2(L7_2)
    L7_2 = tonumber
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L6_2 == L7_2 then
      L6_2 = L5_2.charges
      return L6_2
    end
  end
  L1_2 = 0
  return L1_2
end

L0_1.getNumberOfCharges = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.fastLaser
  return L0_2
end

L0_1.getFastLaserData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.fastStealth
  return L0_2
end

L0_1.getFastStealthData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.doubleTeleport
  return L0_2
end

L0_1.getDoubleTeleportData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.lessCageTime
  return L0_2
end

L0_1.getLessCageTimeData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.longShield
  return L0_2
end

L0_1.getLongShieldData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.longSpeed
  return L0_2
end

L0_1.getLongSpeedData = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.none
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getPassiveNoneId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.glide
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getPassiveGlideId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.glide
  L0_2 = L0_2.glideFactor
  return L0_2
end

L0_1.getGlideFactor = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.ignorePain
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getIgnorePainId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.ignorePain
  L0_2 = L0_2.respawnTime
  return L0_2
end

L0_1.getIgnorePainRespawnTime = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.motivationalPain
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getMotivationalPainId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.motivationalPain
  L0_2 = L0_2.respawnSpeed
  return L0_2
end

L0_1.getMotivationalPainRespawnSpeed = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.moreMaxSpeed
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getMoreMaxSpeedId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.moreMaxSpeed
  L0_2 = L0_2.speedFactor
  return L0_2
end

L0_1.getMoreMaxSpeedSpeedFactor = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.moreMaxAcceleration
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getMoreMaxAccelerationId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.moreMaxAcceleration
  L0_2 = L0_2.accelerationFactor
  return L0_2
end

L0_1.getMoreMaxAccelerationAccelerationFactor = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.jumpAround
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getJumpAroundId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.jumpAround
  L0_2 = L0_2.jumpAccelerationPenaltyFactor
  return L0_2
end

L0_1.getJumpAroundFactor = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.artfulDodger
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getArtfulDodgerId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.artfulDodger
  L0_2 = L0_2.invulnerabilityTimeFactor
  return L0_2
end

L0_1.getArtfulDodgerFactor = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.downHillChampion
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getDownHillChampionId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.downHillChampion
  L0_2 = L0_2.maxSpeedSlopeFactor
  return L0_2
end

L0_1.getDownHillChampionFactor = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.fasterUpHill
  L0_2 = L0_2.accelerationFactor
  return L0_2
end

L0_1.getFasterUpHillFactor = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.coin1
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getCoin1Id = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.coin1
  L0_2 = L0_2.coinBonus
  return L0_2
end

L0_1.getCoin1Bonus = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.coin2
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getCoin2Id = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.coin2
  L0_2 = L0_2.coinBonus
  return L0_2
end

L0_1.getCoin2Bonus = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.learner1
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getLearner1Id = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.learner1
  L0_2 = L0_2.xpBonus
  return L0_2
end

L0_1.getLearner1Bonus = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.learner2
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getLearner2Id = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.learner2
  L0_2 = L0_2.xpBonus
  return L0_2
end

L0_1.getLearner2Bonus = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.god
  L0_2 = L0_2.id
  return L0_2
end

L0_1.getGodId = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.god
  L0_2 = L0_2.coinBonus
  return L0_2
end

L0_1.getGodCoinBonus = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.passiveAbilities
  L0_2 = L0_2.god
  L0_2 = L0_2.xpBonus
  return L0_2
end

L0_1.getGodXpBonus = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L4_1
  L1_2()
  L1_2 = nil
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.characters
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2.id
    L7_2 = L7_2(L8_2)
    L8_2 = tonumber
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      return L5_2
    end
    L1_2 = L5_2
  end
  return L1_2
end

L0_1.getCreatureName = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L4_1
  L1_2()
  L1_2 = {}
  L2_2 = {}
  L3_2 = 0
  L4_2 = 0
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L1_2[1] = L2_2
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.characters
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2.id
    L7_2 = L7_2(L8_2)
    L8_2 = tonumber
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      L1_2 = L6_2.slot1
      return L1_2
    end
  end
  return L1_2
end

L0_1.getCreatureSlot1 = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L4_1
  L1_2()
  L1_2 = {}
  L2_2 = {}
  L3_2 = 0
  L4_2 = 0
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L1_2[1] = L2_2
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.characters
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2.id
    L7_2 = L7_2(L8_2)
    L8_2 = tonumber
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      L1_2 = L6_2.slot2
      return L1_2
    end
  end
  return L1_2
end

L0_1.getCreatureSlot2 = L5_1

function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L4_1
  L0_2()
  L0_2 = 0
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.characters
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L0_2 = L0_2 + 1
  end
  L1_2 = L1_1
  L1_2 = L1_2.newCharacters
  if L1_2 then
    L1_2 = pairs
    L2_2 = L1_1
    L2_2 = L2_2.newCharacters
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L0_2 = L0_2 + 1
    end
  end
  return L0_2
end

L0_1.getAllCharacters = L5_1

function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L4_1
  L0_2()
  L0_2 = 0
  L1_2 = print
  L2_2 = "getNumberOfCharacters "
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.characters
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L0_2 = L0_2 + 1
  end
  return L0_2
end

L0_1.getNumberOfCharacters = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L4_1
  L1_2()
  L1_2 = ""
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.characters
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2.id
    L7_2 = L7_2(L8_2)
    L8_2 = tonumber
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      L7_2 = L6_2.theme
      return L7_2
    end
  end
  return L1_2
end

L0_1.getCreatureTheme = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L4_1
  L1_2()
  L1_2 = ""
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if 1000 < A0_2 then
    A0_2 = 1000
  elseif A0_2 < 0 then
    A0_2 = 0
  end
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.monsterValues
  L3_2 = L3_2.mood
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2[1]
    L7_2 = L7_2(L8_2)
    if A0_2 <= L7_2 then
      L7_2 = tonumber
      L8_2 = L6_2[2]
      L7_2 = L7_2(L8_2)
      if A0_2 >= L7_2 then
        L1_2 = L5_2
      end
    end
  end
  return L1_2
end

L0_1.getMonsterMood = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.monsterValues
  L0_2 = L0_2.moodModifier
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.monsterValues
    L0_2 = L0_2.moodModifier
    return L0_2
  else
    L0_2 = 0
    return L0_2
  end
end

L0_1.getMoodChange = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.monsterValues
  L0_2 = L0_2.eyeColor
  return L0_2
end

L0_1.getMonsterEyeColorValues = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L4_1
  L1_2()
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.characters
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = tonumber
    L7_2 = L5_2.id
    L6_2 = L6_2(L7_2)
    if L6_2 == A0_2 then
      return A0_2
    end
  end
  L1_2 = 1
  return L1_2
end

L0_1.getMonsterType = L5_1

function L5_1(A0_2)
  local L1_2
  L1_2 = L4_1
  L1_2()
  if A0_2 < 1 or 3 < A0_2 then
    L1_2 = 1
    return L1_2
  end
  return A0_2
end

L0_1.getMonsterStage = L5_1

function L5_1(A0_2)
  local L1_2
  L1_2 = L4_1
  L1_2()
  if not (A0_2 < 1) then
    L1_2 = L1_1
    L1_2 = L1_2.monsterValues
    L1_2 = L1_2.eyeColor
    L1_2 = #L1_2
    if not (A0_2 > L1_2) then
      goto lbl_13
    end
  end
  L1_2 = 1
  do return L1_2 end
  ::lbl_13::
  return A0_2
end

L0_1.getMonsterEyes = L5_1

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L4_1
  L3_2()
  if not (A2_2 < 1) then
    L3_2 = L1_1
    L3_2 = L3_2.characters
    L4_2 = L0_1
    L4_2 = L4_2.getCreatureName
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2[L4_2]
    L4_2 = "stage"
    L5_2 = A1_2
    L4_2 = L4_2 .. L5_2
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.hair
    if not (A2_2 > L3_2) then
      goto lbl_21
    end
  end
  L3_2 = 1
  do return L3_2 end
  ::lbl_21::
  return A2_2
end

L0_1.getMonsterHair = L5_1

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L4_1
  L3_2()
  if not (A2_2 < 0) then
    L3_2 = tonumber
    L4_2 = L1_1
    L4_2 = L4_2.characters
    L5_2 = L0_1
    L5_2 = L5_2.getCreatureName
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2[L5_2]
    L5_2 = "stage"
    L6_2 = A1_2
    L5_2 = L5_2 .. L6_2
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.skins
    L3_2 = L3_2(L4_2)
    if not (A2_2 > L3_2) then
      goto lbl_23
    end
  end
  L3_2 = 0
  do return L3_2 end
  ::lbl_23::
  return A2_2
end

L0_1.getMonsterSkin = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L4_1
  L1_2()
  L1_2 = 1
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = 1
  L3_2 = L1_1
  L3_2 = L3_2.monsterValues
  L3_2 = L3_2.evolveLevel
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = tonumber
    L7_2 = L1_1
    L7_2 = L7_2.monsterValues
    L7_2 = L7_2.evolveLevel
    L7_2 = L7_2[L5_2]
    L6_2 = L6_2(L7_2)
    if A0_2 >= L6_2 then
      L1_2 = L1_2 + 1
    end
  end
  return L1_2
end

L0_1.getStageLevel = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L4_1
  L1_2()
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.specialBlock
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = tonumber
    L7_2 = L5_2.id
    L6_2 = L6_2(L7_2)
    L7_2 = tonumber
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L6_2 == L7_2 then
      L6_2 = L5_2.type
      return L6_2
    end
  end
  L1_2 = "none"
  return L1_2
end

L0_1.getBlockType = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L4_1
  L1_2()
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.specialBlock
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = tonumber
    L7_2 = L5_2.id
    L6_2 = L6_2(L7_2)
    L7_2 = tonumber
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L6_2 == L7_2 then
      return L4_2
    end
  end
  L1_2 = "none"
  return L1_2
end

L0_1.getBlockName = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.specialBlock
  L0_2 = L0_2.slowingFlower
  L0_2 = L0_2.speedSlowFactor
  return L0_2
end

L0_1.getSlowingFlowerFactor = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.specialBlock
  L0_2 = L0_2.knockBackFlower
  L0_2 = L0_2.xSpeed
  return L0_2
end

L0_1.getKnockBackFlowerFactor = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.specialBlock
  L0_2 = L0_2.cannon
  L0_2 = L0_2.xSpeed
  L1_2 = L1_1
  L1_2 = L1_2.specialBlock
  L1_2 = L1_2.cannon
  L1_2 = L1_2.ySpeed
  return L0_2, L1_2
end

L0_1.getCanonSpeed = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.specialBlock
  L0_2 = L0_2.cannon
  L0_2 = L0_2.duration
  return L0_2
end

L0_1.getCanonDuration = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.specialBlock
  L0_2 = L0_2.bigCannon
  L0_2 = L0_2.xSpeed
  L1_2 = L1_1
  L1_2 = L1_2.specialBlock
  L1_2 = L1_2.bigCannon
  L1_2 = L1_2.ySpeed
  return L0_2, L1_2
end

L0_1.getBigCanonSpeed = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.specialBlock
  L0_2 = L0_2.bigCannon
  L0_2 = L0_2.duration
  return L0_2
end

L0_1.getBigCanonDuration = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.specialBlock
  L0_2 = L0_2.speed
  L0_2 = L0_2.maxSpeedBonus
  L1_2 = L1_1
  L1_2 = L1_2.specialBlock
  L1_2 = L1_2.speed
  L1_2 = L1_2.accelerationBonus
  return L0_2, L1_2
end

L0_1.getMapElementSpeed = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.specialBlock
  L0_2 = L0_2.slow
  L0_2 = L0_2.maxSpeedBonus
  L1_2 = L1_1
  L1_2 = L1_2.specialBlock
  L1_2 = L1_2.slow
  L1_2 = L1_2.accelerationBonus
  return L0_2, L1_2
end

L0_1.getMapElementSlow = L5_1

function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L4_1
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.messageIDs
  if L1_2 then
    L1_2 = L1_1
    L1_2 = L1_2.messageIDs
    L1_2 = L1_2[A0_2]
    return L1_2
  else
    L1_2 = print
    L2_2 = "WARNING: failed to find configInput.messageIDs"
    L1_2(L2_2)
    L1_2 = "none"
    return L1_2
  end
end

L0_1.getMessageTypeForID = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L4_1
  L1_2()
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.messageIDs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if A0_2 == L5_2 then
      return L4_2
    end
  end
  L1_2 = "00"
  return L1_2
end

L0_1.getServerMessageTypeForName = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L4_1
  L1_2()
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.clientIDs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if A0_2 == L5_2 then
      return L4_2
    end
  end
  L1_2 = "00"
  return L1_2
end

L0_1.getClientMessageTypeForName = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L4_1
  L1_2()
  L1_2 = 1
  L2_2 = ipairs
  L3_2 = L1_1
  L3_2 = L3_2.adventure
  L3_2 = L3_2.progression
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if A0_2 >= L7_2 then
      L7_2 = tonumber
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L1_2 = L7_2
    end
  end
  return L1_2
end

L0_1.getUnlockedZones = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L4_1
  L1_2()
  L1_2 = 0
  L2_2 = tonumber
  L3_2 = L1_1
  L3_2 = L3_2.adventure
  L3_2 = L3_2.progressionRewards
  L3_2 = L3_2[A0_2]
  L2_2 = L2_2(L3_2)
  L1_2 = L2_2
  return L1_2
end

L0_1.getProgressionReward = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L4_1
  L2_2()
  L2_2 = nil
  if A1_2 then
    L3_2 = L1_1
    L3_2 = L3_2.adventure
    L3_2 = L3_2.progression
    L4_2 = A1_2 + 1
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L4_2 = tonumber
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L2_2 = A0_2 / L4_2
    else
      L2_2 = 1
    end
  end
  if L2_2 < 0 then
    L2_2 = 0
  elseif 1 < L2_2 then
    L2_2 = 1
  end
  if A1_2 == 0 then
    L2_2 = 0
  end
  return L2_2
end

L0_1.getZoneProgressionPercentage = L5_1

function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L4_1
  L1_2()
  L1_2 = tonumber
  L2_2 = L1_1
  L2_2 = L2_2.adventure
  L2_2 = L2_2.progression
  L2_2 = L2_2[A0_2]
  return L1_2(L2_2)
end

L0_1.getZoneProgressionRequirement = L5_1

function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L4_1
  L1_2()
  L1_2 = tonumber
  L2_2 = L1_1
  L2_2 = L2_2.adventure
  L2_2 = L2_2.unlockEgghunt
  L2_2 = L2_2[A0_2]
  return L1_2(L2_2)
end

L0_1.getZoneEggHuntRequirement = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L4_1
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.monsterValues
  L1_2 = L1_2.level
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = tonumber
    L2_2 = L1_1
    L2_2 = L2_2.monsterValues
    L2_2 = L2_2.level
    L2_2 = L2_2[A0_2]
    return L1_2(L2_2)
  else
    L1_2 = tonumber
    L2_2 = L1_1
    L2_2 = L2_2.monsterValues
    L2_2 = L2_2.level
    L3_2 = L1_1
    L3_2 = L3_2.monsterValues
    L3_2 = L3_2.level
    L3_2 = #L3_2
    L2_2 = L2_2[L3_2]
    return L1_2(L2_2)
  end
end

L0_1.getLevelRequirement = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L4_1
  L2_2()
  L2_2 = L0_1
  L2_2 = L2_2.getLevelRequirement
  L3_2 = A1_2 + 1
  L2_2 = L2_2(L3_2)
  if A0_2 and L2_2 then
    if A0_2 <= 0 then
      L3_2 = 0
      return L3_2
    end
    L3_2 = A0_2 / L2_2
    return L3_2
  else
    L3_2 = print
    L4_2 = "M.getLevelProgression error"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
    L3_2 = 1
    return L3_2
  end
end

L0_1.getLevelProgression = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.adventure
  L0_2 = L0_2.safariTicketRechargeRate
  return L0_2
end

L0_1.getTicketRechargeTime = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.adventure
  L0_2 = L0_2.maxSafariTicket
  return L0_2
end

L0_1.getMaxTickets = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L4_1
  L1_2()
  if A0_2 then
    L1_2 = L1_1
    L1_2 = L1_2.adventure
    L1_2 = L1_2.eggHuntSoftCurrencyPrice
    L2_2 = tonumber
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2[L2_2]
    L2_2 = L1_1
    L2_2 = L2_2.adventure
    L2_2 = L2_2.eggHuntHardCurrencyPrice
    L3_2 = tonumber
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2[L3_2]
    L3_2 = L1_2
    L4_2 = L2_2
    return L3_2, L4_2
  end
  L1_2 = 10
  L2_2 = 10
  return L1_2, L2_2
end

L0_1.getEggHuntPrice = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L4_1
  L1_2()
  L1_2 = nil
  L2_2 = A0_2
  L3_2 = L1_1
  L3_2 = L3_2.monsterValues
  L3_2 = L3_2.softRewards
  L3_2 = #L3_2
  if L2_2 > L3_2 then
    L3_2 = tonumber
    L4_2 = L1_1
    L4_2 = L4_2.monsterValues
    L4_2 = L4_2.softRewards
    L5_2 = L1_1
    L5_2 = L5_2.monsterValues
    L5_2 = L5_2.softRewards
    L5_2 = #L5_2
    L4_2 = L4_2[L5_2]
    L3_2 = L3_2(L4_2)
    L1_2 = L3_2
  else
    L3_2 = tonumber
    L4_2 = L1_1
    L4_2 = L4_2.monsterValues
    L4_2 = L4_2.softRewards
    L4_2 = L4_2[L2_2]
    L3_2 = L3_2(L4_2)
    L1_2 = L3_2
  end
  if L1_2 < 0 or L1_2 == nil then
    L1_2 = 0
    L3_2 = print
    L4_2 = "WARNING: Could not find valid soft reward for level "
    L5_2 = L2_2
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
  end
  return L1_2
end

L0_1.getLevelSoftReward = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L4_1
  L1_2()
  L1_2 = nil
  L2_2 = A0_2
  L3_2 = L1_1
  L3_2 = L3_2.monsterValues
  L3_2 = L3_2.hardRewards
  L3_2 = #L3_2
  if L2_2 > L3_2 then
    L3_2 = tonumber
    L4_2 = L1_1
    L4_2 = L4_2.monsterValues
    L4_2 = L4_2.hardRewards
    L5_2 = L1_1
    L5_2 = L5_2.monsterValues
    L5_2 = L5_2.hardRewards
    L5_2 = #L5_2
    L4_2 = L4_2[L5_2]
    L3_2 = L3_2(L4_2)
    L1_2 = L3_2
  else
    L3_2 = tonumber
    L4_2 = L1_1
    L4_2 = L4_2.monsterValues
    L4_2 = L4_2.hardRewards
    L4_2 = L4_2[L2_2]
    L3_2 = L3_2(L4_2)
    L1_2 = L3_2
  end
  if L1_2 < 0 or L1_2 == nil then
    L1_2 = 0
    L3_2 = print
    L4_2 = "WARNING: Could not find valid hard reward for level "
    L5_2 = L2_2
    L6_2 = ". Returning 0."
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
  end
  return L1_2
end

L0_1.getLevelHardReward = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L4_1
  L1_2()
  L1_2 = 1
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.powerUps
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2.id
    L7_2 = L7_2(L8_2)
    if L7_2 == A0_2 then
      L7_2 = tonumber
      L8_2 = L6_2.level
      return L7_2(L8_2)
    end
  end
  return L1_2
end

L0_1.getPowerUpLevel = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L4_1
  L1_2()
  L1_2 = nil
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.powerUps
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2.id
    L7_2 = L7_2(L8_2)
    if L7_2 == A0_2 then
      L7_2 = L6_2.theme
      if L7_2 then
        L7_2 = L6_2.theme
        return L7_2
      else
        return L1_2
      end
    end
  end
  return L1_2
end

L0_1.getPowerUpTheme = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = L4_1
  L2_2()
  L2_2 = nil
  L3_2 = 0
  L4_2 = 1
  L5_2 = L1_1
  L5_2 = L5_2.monsterValues
  L5_2 = L5_2.evolveLevel
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_1
    L8_2 = L8_2.monsterValues
    L8_2 = L8_2.evolveLevel
    L8_2 = L8_2[L7_2]
    if A0_2 == L8_2 then
      L8_2 = 1
      L9_2 = true
      return L8_2, L9_2
    end
  end
  L4_2 = L0_1
  L4_2 = L4_2.getCreatureSlot2
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = 1
  L6_2 = #L4_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = tonumber
    L10_2 = L4_2[L8_2]
    L10_2 = L10_2[2]
    L9_2 = L9_2(L10_2)
    if A0_2 == L9_2 then
      L9_2 = 2
      L10_2 = tonumber
      L11_2 = L4_2[L8_2]
      L11_2 = L11_2[1]
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      return L9_2, L10_2, L11_2, L12_2, L13_2
    end
  end
  L5_2 = L0_1
  L5_2 = L5_2.getCreatureSlot1
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = 1
  L7_2 = #L5_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = tonumber
    L11_2 = L5_2[L9_2]
    L11_2 = L11_2[2]
    L10_2 = L10_2(L11_2)
    if A0_2 == L10_2 then
      L10_2 = 2
      L11_2 = tonumber
      L12_2 = L5_2[L9_2]
      L12_2 = L12_2[1]
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      return L10_2, L11_2, L12_2, L13_2
    end
  end
  L6_2 = pairs
  L7_2 = L1_1
  L7_2 = L7_2.powerUps
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = tonumber
    L12_2 = L10_2.level
    L11_2 = L11_2(L12_2)
    if L11_2 == A0_2 then
      L11_2 = L10_2.theme
      if L11_2 then
        L11_2 = L10_2.theme
        L12_2 = L0_1
        L12_2 = L12_2.getCreatureTheme
        L13_2 = A1_2
        L12_2 = L12_2(L13_2)
        if L11_2 == L12_2 then
          L3_2 = 3
          L11_2 = tonumber
          L12_2 = L10_2.id
          L11_2 = L11_2(L12_2)
          L2_2 = L11_2
      end
      else
        L11_2 = L10_2.theme
        if not L11_2 then
          L3_2 = 3
          L11_2 = tonumber
          L12_2 = L10_2.id
          L11_2 = L11_2(L12_2)
          L2_2 = L11_2
        end
      end
    end
  end
  if L3_2 == 0 and L2_2 == nil then
    L3_2 = 4
    L2_2 = 1
  end
  L6_2 = L3_2
  L7_2 = L2_2
  return L6_2, L7_2
end

L0_1.getLevelSpecialReward = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L4_1
  L2_2()
  L2_2 = ""
  if A0_2 == 2 then
    L3_2 = pairs
    L4_2 = L1_1
    L4_2 = L4_2.passiveAbilities
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = tonumber
      L9_2 = L7_2.id
      L8_2 = L8_2(L9_2)
      if L8_2 == A1_2 then
        L8_2 = L7_2.description
        return L8_2
      end
    end
  elseif A0_2 == 3 then
    L3_2 = pairs
    L4_2 = L1_1
    L4_2 = L4_2.powerUps
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = tonumber
      L9_2 = L7_2.id
      L8_2 = L8_2(L9_2)
      if L8_2 == A1_2 then
        L8_2 = L7_2.description
        return L8_2
      end
    end
  end
  return L2_2
end

L0_1.getLevelUpString = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.monsterValues
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.monsterValues
    L0_2 = L0_2.maxLevel
    if L0_2 then
      L0_2 = L1_1
      L0_2 = L0_2.monsterValues
      L0_2 = L0_2.maxLevel
      return L0_2
    end
  end
end

L0_1.getLevelCap = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.clanDefinitions
  if L0_2 then
    L0_2 = tonumber
    L1_2 = L1_1
    L1_2 = L1_2.clanDefinitions
    L1_2 = L1_2.clanFrontEndLogLength
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      L0_2 = 50
    end
    return L0_2
  end
  L0_2 = 50
  return L0_2
end

L0_1.getMaxClanLogLength = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.clanDefinitions
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.clanDefinitions
    L0_2 = L0_2.clanMaxSize
    if not L0_2 then
      L0_2 = 50
    end
    return L0_2
  end
  L0_2 = 50
  return L0_2
end

L0_1.getMaxClanSize = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.clanDefinitions
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.clanDefinitions
    L0_2 = L0_2.clanContributionScheme
    return L0_2
  end
end

L0_1.getClanContributionScheme = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.clanDefinitions
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.clanDefinitions
    L0_2 = L0_2.clanRefreshTime
    if not L0_2 then
      L0_2 = 5
    end
    return L0_2
  end
  L0_2 = 5
  return L0_2
end

L0_1.getClanRefreshTime = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L4_1
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.videoRewards
  if L1_2 then
    L1_2 = L1_1
    L1_2 = L1_2.videoRewards
    L1_2 = L1_2.prizes
    if L1_2 then
      L1_2 = 1
      L2_2 = L1_1
      L2_2 = L2_2.videoRewards
      L2_2 = L2_2.prizes
      L2_2 = #L2_2
      L3_2 = 1
      for L4_2 = L1_2, L2_2, L3_2 do
        L5_2 = L1_1
        L5_2 = L5_2.videoRewards
        L5_2 = L5_2.prizes
        L5_2 = L5_2[L4_2]
        L6_2 = tonumber
        L7_2 = L5_2.videosRemaining
        L6_2 = L6_2(L7_2)
        if L6_2 == A0_2 then
          return L5_2
        end
      end
    end
  end
  L1_2 = nil
  return L1_2
end

L0_1.getAdBoostData = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L4_1
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.videoRewards
  if L1_2 then
    L1_2 = L1_1
    L1_2 = L1_2.videoRewards
    L1_2 = L1_2.videoChance
    if L1_2 then
      L1_2 = tonumber
      L2_2 = L1_1
      L2_2 = L2_2.videoRewards
      L2_2 = L2_2.videoChance
      L3_2 = A0_2
      L4_2 = ""
      L3_2 = L3_2 .. L4_2
      L2_2 = L2_2[L3_2]
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = 0.8
      end
      return L1_2
    end
  end
  L1_2 = 0.8
  return L1_2
end

L0_1.getAdBoostChance = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.videoRewards
  if L0_2 then
    L0_2 = tonumber
    L1_2 = L1_1
    L1_2 = L1_2.videoRewards
    L1_2 = L1_2.gamesBetweenVideos
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      L0_2 = -1
    end
    return L0_2
  end
  L0_2 = -1
  return L0_2
end

L0_1.getGamesBetweenAdBoost = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.videoRewards
  if L0_2 then
    L0_2 = true
    return L0_2
  end
  L0_2 = false
  return L0_2
end

L0_1.hasDiverseAdBoostScheme = L5_1

function L5_1(A0_2)
  local L1_2
  L1_2 = L4_1
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.videoRewards
  if L1_2 then
    L1_2 = L1_1
    L1_2 = L1_2.videoRewards
    L1_2 = L1_2.randomizedPrizes
    if L1_2 then
      L1_2 = L1_1
      L1_2 = L1_2.videoRewards
      L1_2 = L1_2.randomizedPrizes
      L1_2 = L1_2[A0_2]
      return L1_2
    end
  end
  L1_2 = nil
  return L1_2
end

L0_1.getRandomizedVideoChest = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.videoRewards
    if L0_2 then
      L0_2 = tonumber
      L1_2 = L1_1
      L1_2 = L1_2.videoRewards
      L1_2 = L1_2.rewardedVideosPerDay
      L0_2 = L0_2(L1_2)
      if not L0_2 then
        L0_2 = 10
      end
      return L0_2
    end
  end
  L0_2 = 10
  return L0_2
end

L0_1.getRewardedVideosPerDay = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = tonumber
  L1_2 = L1_1
  L1_2 = L1_2.gamesForAccountCreationPrompt
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = 20
  end
  return L0_2
end

L0_1.getGamesForAccountCreationPrompt = L5_1
return L0_1
