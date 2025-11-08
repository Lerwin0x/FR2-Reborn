local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1
L0_1 = {}
L1_1 = {}
L2_1 = require
L3_1 = "lua.game.powerups.puBlade"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "lua.game.powerups.puBladeAnimation"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "lua.game.powerups.puTrap"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "lua.game.powerups.puTrapAnimation"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "lua.game.powerups.puLightning"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "lua.game.powerups.puSpeed"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "lua.game.powerups.puShield"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "lua.game.powerups.puArmor"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "lua.game.powerups.puMagnet"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "lua.game.powerups.puJump"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "lua.game.powerups.puMagnetAnimation"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "lua.game.powerups.puBounceTrap"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "lua.game.powerups.puBounceTrapAnimation"
L14_1 = L14_1(L15_1)
L15_1 = require
L16_1 = "lua.game.powerups.puNinja"
L15_1 = L15_1(L16_1)
L16_1 = require
L17_1 = "lua.game.powerups.puHuntersMarkAnimation"
L16_1 = L16_1(L17_1)
L17_1 = require
L18_1 = "lua.game.powerups.puRocket"
L17_1 = L17_1(L18_1)
L18_1 = require
L19_1 = "lua.game.powerups.puTeleport"
L18_1 = L18_1(L19_1)
L19_1 = nil
L20_1 = nil

function L21_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L9_2 = L0_1
  L9_2 = #L9_2
  L9_2 = L9_2 + 1
  L10_2 = nil
  if A8_2 and A6_2 and A7_2 and A0_2 then
  else
    L11_2 = 1
    L12_2 = 1
    return L11_2, L12_2
  end
  if A0_2 == 1 then
    L11_2 = L2_1
    L11_2 = L11_2.new
    L12_2 = A1_2
    L13_2 = A3_2
    L14_2 = A4_2
    L15_2 = A5_2
    L16_2 = A6_2
    L17_2 = A8_2
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L10_2 = L11_2
    L11_2 = L0_1
    L11_2[L9_2] = L10_2
    L11_2 = A8_2[A1_2]
    L11_2 = L11_2.playSound
    L12_2 = "blade_activate"
    L11_2(L12_2)
  elseif A0_2 == 2 then
    L11_2 = L4_1
    L11_2 = L11_2.new
    L12_2 = A1_2
    L13_2 = A3_2
    L14_2 = A4_2
    L15_2 = A5_2
    L16_2 = A6_2
    L17_2 = A8_2
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L10_2 = L11_2
    L11_2 = L0_1
    L11_2[L9_2] = L10_2
    L11_2 = A8_2[A1_2]
    L11_2 = L11_2.playSound
    L12_2 = "trap_activate"
    L11_2(L12_2)
  elseif A0_2 == 3 then
    L11_2 = L6_1
    L11_2 = L11_2.new
    L12_2 = A1_2
    L13_2 = A2_2
    L14_2 = A8_2
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L10_2 = L11_2
    L11_2 = L0_1
    L11_2[L9_2] = L10_2
    L11_2 = L20_1
    L12_2 = "lightning_activate"
    L11_2(L12_2)
  elseif A0_2 == 4 then
    L11_2 = L7_1
    L11_2 = L11_2.new
    L12_2 = A1_2
    L13_2 = A8_2
    L11_2 = L11_2(L12_2, L13_2)
    L10_2 = L11_2
    L11_2 = A8_2[A1_2]
    L11_2 = L11_2.playSound
    L12_2 = "speed_activate"
    L11_2(L12_2)
  elseif A0_2 == 5 then
    L11_2 = L8_1
    L11_2 = L11_2.new
    L12_2 = A1_2
    L13_2 = A8_2
    L11_2 = L11_2(L12_2, L13_2)
    L10_2 = L11_2
    L11_2 = A8_2[A1_2]
    L11_2 = L11_2.playSound
    L12_2 = "invul_activate"
    L11_2(L12_2)
  elseif A0_2 == 6 then
    L11_2 = L9_1
    L11_2 = L11_2.new
    L12_2 = A1_2
    L13_2 = A8_2
    L11_2 = L11_2(L12_2, L13_2)
    L10_2 = L11_2
    L11_2 = A8_2[A1_2]
    L11_2 = L11_2.playSound
    L12_2 = "armor_activate"
    L11_2(L12_2)
  elseif A0_2 == 7 then
    L11_2 = L10_1
    L11_2 = L11_2.new
    L12_2 = A1_2
    L13_2 = A2_2
    L14_2 = A8_2
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L10_2 = L11_2
    L11_2 = A8_2[A1_2]
    L11_2 = L11_2.playSound
    L12_2 = "magnet_activate"
    L11_2(L12_2)
  elseif A0_2 == 8 then
    L11_2 = L13_1
    L11_2 = L11_2.new
    L12_2 = A1_2
    L13_2 = A3_2
    L14_2 = A4_2
    L15_2 = A5_2
    L16_2 = A6_2
    L17_2 = A8_2
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L10_2 = L11_2
    L11_2 = L0_1
    L11_2[L9_2] = L10_2
    L11_2 = A8_2[A1_2]
    L11_2 = L11_2.playSound
    L12_2 = "bounce_activate"
    L11_2(L12_2)
  elseif A0_2 == 9 then
    L11_2 = L15_1
    L11_2 = L11_2.new
    L12_2 = A1_2
    L13_2 = A4_2
    L14_2 = A2_2
    L15_2 = A8_2
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
    L10_2 = L11_2
    L11_2 = L0_1
    L11_2[L9_2] = L10_2
    L11_2 = A8_2[A1_2]
    L11_2 = L11_2.playSound
    L12_2 = "hunter_activate"
    L11_2(L12_2)
  elseif A0_2 == 10 then
    L11_2 = L17_1
    L11_2 = L11_2.new
    L12_2 = A1_2
    L13_2 = A8_2
    L14_2 = A6_2
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L10_2 = L11_2
    L11_2 = L0_1
    L11_2[L9_2] = L10_2
    L11_2 = A8_2[A1_2]
    L11_2 = L11_2.playSound
    L12_2 = "rocket_activate"
    L11_2(L12_2)
  elseif A0_2 == 11 then
    L11_2 = L18_1
    L11_2 = L11_2.new
    L12_2 = A1_2
    L13_2 = A8_2
    L11_2 = L11_2(L12_2, L13_2)
    L10_2 = L11_2
    L11_2 = L0_1
    L11_2[L9_2] = L10_2
    L11_2 = A8_2[A1_2]
    L11_2 = L11_2.playSound
    L12_2 = "teleport_activate"
    L11_2(L12_2)
  end
  if A0_2 == 51 then
    L11_2 = L3_1
    L11_2 = L11_2.new
    L12_2 = A1_2
    L13_2 = A8_2
    L11_2 = L11_2(L12_2, L13_2)
    L10_2 = L11_2
  elseif A0_2 == 52 then
    L11_2 = L5_1
    L11_2 = L11_2.new
    L12_2 = A1_2
    L13_2 = A8_2
    L11_2 = L11_2(L12_2, L13_2)
    L10_2 = L11_2
  elseif A0_2 == 57 then
    L11_2 = L12_1
    L11_2 = L11_2.new
    L12_2 = A1_2
    L13_2 = A8_2
    L11_2 = L11_2(L12_2, L13_2)
    L10_2 = L11_2
  elseif A0_2 == 58 then
    L11_2 = L14_1
    L11_2 = L11_2.new
    L12_2 = A1_2
    L13_2 = A8_2
    L11_2 = L11_2(L12_2, L13_2)
    L10_2 = L11_2
  elseif A0_2 == 59 then
    L11_2 = L16_1
    L11_2 = L11_2.new
    L12_2 = A1_2
    L13_2 = A8_2
    L11_2 = L11_2(L12_2, L13_2)
    L10_2 = L11_2
  end
  if L10_2 == nil then
    L11_2 = 1
    L12_2 = 1
    return L11_2, L12_2
  end
  L11_2 = L10_2.x
  L12_2 = L10_2.y
  return L11_2, L12_2
end

L1_1.usePowerUp = L21_1

function L22_1()
  local L0_2, L1_2
  L0_2 = L0_1
  return L0_2
end

L1_1.getPowerUps = L22_1

function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = 1
  L1_2 = L0_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L0_1
    L4_2 = L4_2[L3_2]
    if L4_2 then
      L4_2 = L0_1
      L4_2 = L4_2[L3_2]
      L4_2 = L4_2.update
      if L4_2 then
        L4_2 = L0_1
        L4_2 = L4_2[L3_2]
        L4_2 = L4_2.update
        L4_2()
      end
    end
  end
end

function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L19_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L19_1
    L0_2(L1_2)
    L0_2 = nil
    L19_1 = L0_2
  end
  L0_2 = 1
  L1_2 = L0_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L0_1
    L4_2 = L4_2[L3_2]
    if L4_2 then
      L4_2 = L0_1
      L4_2 = L4_2[L3_2]
      L4_2 = L4_2.removeObject
      if L4_2 then
        L4_2 = L0_1
        L4_2 = L4_2[L3_2]
        L4_2 = L4_2.removeObject
        L4_2()
        L4_2 = L0_1
        L4_2[L3_2] = nil
      else
        L4_2 = L0_1
        L4_2[L3_2] = nil
      end
    end
  end
end

L1_1.clean = L24_1

function L25_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L0_1 = L0_2
  L0_2 = timer
  L0_2 = L0_2.performWithDelay
  L1_2 = 100
  L2_2 = L23_1
  L3_2 = 0
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L19_1 = L0_2
end

L1_1.init = L25_1

function L26_1(A0_2)
  local L1_2
  L20_1 = A0_2
end

L1_1.addPlaySoundFunction = L26_1
return L1_1
