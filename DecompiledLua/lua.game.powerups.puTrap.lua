local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "physics"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "lua.modules.assetLoader"
L3_1 = L3_1(L4_1)

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L7_2 = false
  L8_2 = true
  L9_2 = true
  L10_2 = false
  L11_2 = 1301
  L12_2 = A5_2[A0_2]
  L12_2 = L12_2.customPowerUpSkins
  if L12_2 then
    L12_2 = 1
    L13_2 = A5_2[A0_2]
    L13_2 = L13_2.customPowerUpSkins
    L13_2 = #L13_2
    L14_2 = 1
    for L15_2 = L12_2, L13_2, L14_2 do
      L16_2 = L1_1
      L16_2 = L16_2.storeConfig
      L16_2 = L16_2.getItemCategory
      L17_2 = tonumber
      L18_2 = A5_2[A0_2]
      L18_2 = L18_2.customPowerUpSkins
      L18_2 = L18_2[L15_2]
      L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L17_2(L18_2)
      L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      if L16_2 == "beartrap" then
        L16_2 = L1_1
        L16_2 = L16_2.storeConfig
        L16_2 = L16_2.canDrawItem
        L17_2 = tonumber
        L18_2 = A5_2[A0_2]
        L18_2 = L18_2.customPowerUpSkins
        L18_2 = L18_2[L15_2]
        L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L17_2(L18_2)
        L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        if L16_2 then
          L16_2 = A5_2[A0_2]
          L16_2 = L16_2.customPowerUpSkins
          L11_2 = L16_2[L15_2]
        end
      end
    end
  end
  
  function L12_2()
    local L0_3, L1_3
    L0_3 = false
    L9_2 = L0_3
  end
  
  function L13_2()
    local L0_3, L1_3
  end
  
  function L14_2()
    local L0_3, L1_3, L2_3
    L0_3 = L10_2
    if L0_3 then
      L0_3 = L6_2
      L1_3 = L0_3
      L0_3 = L0_3.setSequence
      L2_3 = "close"
      L0_3(L1_3, L2_3)
    end
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.play
    L0_3(L1_3)
    L0_3 = true
    L7_2 = L0_3
    L0_3 = true
    L10_2 = L0_3
  end
  
  function L15_2()
    local L0_3, L1_3, L2_3
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.setSequence
    L2_3 = "open"
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.play
    L0_3(L1_3)
    L0_3 = false
    L7_2 = L0_3
  end
  
  function L16_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L7_2
      if L1_3 then
        L1_3 = L15_2
        L1_3()
      end
    end
  end
  
  function L17_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L6_2
    if L0_3 then
      L0_3 = L6_2
      L1_3 = L0_3
      L0_3 = L0_3.removeEventListener
      L2_3 = "sprite"
      L3_3 = L16_2
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L6_2
      L1_3 = L0_3
      L0_3 = L0_3.removeEventListener
      L2_3 = "collision"
      L3_3 = L6_2
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L6_2
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      L6_2 = L0_3
    end
  end
  
  function L18_2()
    local L0_3, L1_3
    L0_3 = true
    L8_2 = L0_3
  end
  
  function L19_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = A1_3.phase
    if L2_3 == "began" then
      L2_3 = true
      L3_3 = A1_3.other
      L3_3 = L3_3.id
      L4_3 = A0_2
      if L3_3 == L4_3 then
        L3_3 = L9_2
        if L3_3 then
          L2_3 = false
      end
      else
        L3_3 = A1_3.other
        L3_3 = L3_3.mobileUser
        if L3_3 then
          L3_3 = L8_2
          if L3_3 then
            L3_3 = false
            L8_2 = L3_3
            L3_3 = A1_3.other
            L3_3 = L3_3.onCollisionPowerUp
            L4_3 = A0_2
            L5_3 = 2
            L3_3(L4_3, L5_3)
            L3_3 = timer
            L3_3 = L3_3.performWithDelay
            L4_3 = 1000
            L5_3 = L18_2
            L6_3 = 1
            L3_3(L4_3, L5_3, L6_3)
        end
        else
          L3_3 = L1_1
          L3_3 = L3_3.data
          L3_3 = L3_3.gameInfo
          L3_3 = L3_3.gameType
          if L3_3 == 0 then
            L3_3 = L8_2
            if L3_3 then
              L3_3 = A1_3.other
              L3_3 = L3_3.onCollisionPowerUp
              if L3_3 then
                L3_3 = false
                L8_2 = L3_3
                L3_3 = A1_3.other
                L3_3 = L3_3.onCollisionPowerUp
                L4_3 = A0_2
                L5_3 = 2
                L3_3(L4_3, L5_3)
                L3_3 = timer
                L3_3 = L3_3.performWithDelay
                L4_3 = 1000
                L5_3 = L18_2
                L6_3 = 1
                L3_3(L4_3, L5_3, L6_3)
              end
            end
          end
        end
      end
      L3_3 = A1_3.other
      L3_3 = L3_3.player
      if L3_3 and L2_3 then
        L3_3 = L14_2
        L3_3()
      end
    end
  end
  
  function L20_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = A5_2
    L1_3 = A0_2
    L0_3 = L0_3[L1_3]
    L0_3 = L0_3.removeTrapAnimation
    L0_3()
    L0_3 = display
    L0_3 = L0_3.newSprite
    L1_3 = L1_1
    L1_3 = L1_3.powerUpImageSheet
    L2_3 = L3_1
    L2_3 = L2_3.getTrapAnimation
    L3_3 = L11_2
    L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L2_3(L3_3)
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L6_2 = L0_3
    L0_3 = {}
    L1_3 = 20
    L2_3 = 0
    L3_3 = 20
    L4_3 = 18
    L5_3 = -20
    L6_3 = 18
    L7_3 = -20
    L8_3 = 0
    L0_3[1] = L1_3
    L0_3[2] = L2_3
    L0_3[3] = L3_3
    L0_3[4] = L4_3
    L0_3[5] = L5_3
    L0_3[6] = L6_3
    L0_3[7] = L7_3
    L0_3[8] = L8_3
    L1_3 = {}
    L2_3 = 26
    L3_3 = 0
    L4_3 = 26
    L5_3 = 18
    L6_3 = 15
    L7_3 = 18
    L8_3 = 15
    L9_3 = 0
    L1_3[1] = L2_3
    L1_3[2] = L3_3
    L1_3[3] = L4_3
    L1_3[4] = L5_3
    L1_3[5] = L6_3
    L1_3[6] = L7_3
    L1_3[7] = L8_3
    L1_3[8] = L9_3
    L2_3 = L2_1
    L2_3 = L2_3.addBody
    L3_3 = L6_2
    L4_3 = {}
    L4_3.density = 0.6
    L4_3.friction = 1
    L4_3.bounce = 0.3
    L4_3.shape = L0_3
    L5_3 = powerUpFilter
    L4_3.filter = L5_3
    L5_3 = {}
    L5_3.isSensor = true
    L5_3.shape = L1_3
    L6_3 = obstacleFilter
    L5_3.filter = L6_3
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = L6_2
    L2_3.xScale = 0.5
    L2_3 = L6_2
    L2_3.yScale = 0.5
    L2_3 = L6_2
    L3_3 = L13_2
    L2_3.update = L3_3
    L2_3 = L6_2
    L3_3 = L17_2
    L2_3.removeObject = L3_3
    L2_3 = L6_2
    L3_3 = L19_2
    L2_3.collision = L3_3
    L2_3 = L6_2
    L3_3 = L2_3
    L2_3 = L2_3.addEventListener
    L4_3 = "collision"
    L5_3 = L6_2
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = L6_2
    L3_3 = L2_3
    L2_3 = L2_3.addEventListener
    L4_3 = "sprite"
    L5_3 = L16_2
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = A1_2
    if L2_3 then
      L2_3 = L6_2
      L3_3 = A1_2
      L3_3 = L3_3.x
      L2_3.x = L3_3
      L2_3 = L6_2
      L3_3 = A1_2
      L3_3 = L3_3.y
      L2_3.y = L3_3
    else
      L2_3 = L6_2
      L3_3 = A2_2
      L2_3.x = L3_3
      L2_3 = L6_2
      L3_3 = A3_2
      L2_3.y = L3_3
    end
    L2_3 = A4_2
    L3_3 = L2_3
    L2_3 = L2_3.insert
    L4_3 = L6_2
    L2_3(L3_3, L4_3)
  end
  
  L21_2 = L20_2
  L21_2()
  L21_2 = timer
  L21_2 = L21_2.performWithDelay
  L22_2 = 500
  L23_2 = L12_2
  L24_2 = 1
  L21_2(L22_2, L23_2, L24_2)
  L21_2 = L1_1
  L21_2 = L21_2.onboarding
  L21_2 = L21_2.isActive
  L21_2 = not L21_2
  if L21_2 == true then
    L21_2 = timer
    L21_2 = L21_2.performWithDelay
    L22_2 = 30000
    L23_2 = L17_2
    L24_2 = 1
    L21_2(L22_2, L23_2, L24_2)
  end
  return L6_2
end

L0_1.new = L4_1
return L0_1
