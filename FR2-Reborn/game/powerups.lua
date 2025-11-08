local constants = require("game.constants")
local random = require("engine.random")
local audio = require("engine.audio")

local M = {}

local registry = {}

local speedBoost = {
  id = "speed",
  icon = "power_icon_speed",
  pickupSound = "pickup",
  activateSound = "power_speed"
}

function speedBoost.grant(runner)
  runner:grantPowerUp(speedBoost.id, speedBoost)
  audio.playSfx(speedBoost.pickupSound)
end

function speedBoost.activate(runner)
  runner:activateSpeedBoost(constants.runner.speedBoostMultiplier, constants.runner.speedBoostDuration)
end

registry[speedBoost.id] = speedBoost

-- Shield powerup
local shield = {
  id = "shield",
  icon = "power_icon_shield",
  pickupSound = "pickup",
  activateSound = "power_shield"
}

function shield.grant(runner)
  runner:grantPowerUp(shield.id, shield)
  audio.playSfx(shield.pickupSound)
end

function shield.activate(runner)
  -- Shield: temporary invincibility (use speed boost as placeholder effect)
  runner:activateSpeedBoost(1.2, 5000) -- Slight speed boost for 5 seconds
  audio.playSfx(shield.activateSound)
  print("Shield activated - invincible for 5 seconds")
end

registry[shield.id] = shield

-- Magnet powerup
local magnet = {
  id = "magnet",
  icon = "power_icon_magnet",
  pickupSound = "pickup",
  activateSound = "power_magnet"
}

function magnet.grant(runner)
  runner:grantPowerUp(magnet.id, magnet)
  audio.playSfx(magnet.pickupSound)
end

function magnet.activate(runner)
  -- Magnet: pull nearby runners (use speed boost as effect)
  runner:activateSpeedBoost(1.3, 3000) -- Speed boost for 3 seconds
  audio.playSfx(magnet.activateSound)
  print("Magnet activated - pull effect")
end

registry[magnet.id] = magnet

-- Lightning powerup
local lightning = {
  id = "lightning",
  icon = "power_icon_lightning",
  pickupSound = "pickup",
  activateSound = "power_lightning"
}

function lightning.grant(runner)
  runner:grantPowerUp(lightning.id, lightning)
  audio.playSfx(lightning.pickupSound)
end

function lightning.activate(runner)
  -- Lightning: slow other runners (give player speed boost)
  runner:activateSpeedBoost(1.5, 4000) -- Speed boost for 4 seconds
  audio.playSfx(lightning.activateSound)
  print("Lightning activated - slow effect")
end

registry[lightning.id] = lightning

-- Teleport powerup
local teleport = {
  id = "teleport",
  icon = "power_icon_teleport",
  pickupSound = "pickup",
  activateSound = "power_teleport"
}

function teleport.grant(runner)
  runner:grantPowerUp(teleport.id, teleport)
  audio.playSfx(teleport.pickupSound)
end

function teleport.activate(runner)
  -- Teleport: jump forward (large speed boost)
  runner:activateSpeedBoost(3.0, 1000) -- Huge speed boost for 1 second
  audio.playSfx(teleport.activateSound)
  print("Teleport activated")
end

registry[teleport.id] = teleport

-- Sawblade/Fireball powerup
local sawblade = {
  id = "sawblade",
  icon = "power_icon_sawblade",
  pickupSound = "pickup",
  activateSound = "power_sawblade"
}

function sawblade.grant(runner)
  runner:grantPowerUp(sawblade.id, sawblade)
  audio.playSfx(sawblade.pickupSound)
end

function sawblade.activate(runner)
  -- Sawblade/Fireball: attack (speed boost)
  runner:activateSpeedBoost(1.4, 3500) -- Speed boost for 3.5 seconds
  audio.playSfx(sawblade.activateSound)
  print("Sawblade activated")
end

registry[sawblade.id] = sawblade

-- Ninja/Decoy powerup
local decoy = {
  id = "decoy",
  icon = "power_icon_decoy",
  pickupSound = "pickup",
  activateSound = "power_decoy"
}

function decoy.grant(runner)
  runner:grantPowerUp(decoy.id, decoy)
  audio.playSfx(decoy.pickupSound)
end

function decoy.activate(runner)
  -- Become invisible
  audio.playSfx(decoy.activateSound)
  runner:activateSpeedBoost(1.5, 3000) -- Slight speed boost while invisible
  print("Decoy/Ninja activated")
end

registry[decoy.id] = decoy

-- Bear Trap powerup
local bearTrap = {
  id = "bearTrap",
  icon = "power_icon_beartrap",
  pickupSound = "pickup",
  activateSound = "power_trap"
}

function bearTrap.grant(runner)
  runner:grantPowerUp(bearTrap.id, bearTrap)
  audio.playSfx(bearTrap.pickupSound)
end

function bearTrap.activate(runner)
  -- Bear trap: defensive (speed boost)
  runner:activateSpeedBoost(1.3, 3000) -- Speed boost for 3 seconds
  audio.playSfx(bearTrap.activateSound)
  print("Bear trap placed")
end

registry[bearTrap.id] = bearTrap

function M.get(id)
  return registry[id]
end

function M.random()
  local ids = {}
  for key in pairs(registry) do
    ids[#ids + 1] = key
  end
  if #ids == 0 then
    return nil
  end
  local index = math.floor(random.randomRange(1, #ids + 1))
  return registry[ids[index]]
end

return M
