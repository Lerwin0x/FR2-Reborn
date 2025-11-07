local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "physics"
L2_1 = L2_1(L3_1)

function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L6_2 = display
  L6_2 = L6_2.newGroup
  L6_2 = L6_2()
  L7_2 = false
  L8_2 = nil
  L9_2 = nil
  L10_2 = 610
  L11_2 = 1000
  L12_2 = {}
  L13_2 = 7
  L14_2 = 17
  L15_2 = -7
  L16_2 = 17
  L17_2 = -17
  L18_2 = 7
  L19_2 = -17
  L20_2 = -7
  L21_2 = -7
  L22_2 = -17
  L23_2 = 7
  L24_2 = -17
  L25_2 = 17
  L26_2 = -7
  L27_2 = 17
  L28_2 = 7
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L12_2[5] = L17_2
  L12_2[6] = L18_2
  L12_2[7] = L19_2
  L12_2[8] = L20_2
  L12_2[9] = L21_2
  L12_2[10] = L22_2
  L12_2[11] = L23_2
  L12_2[12] = L24_2
  L12_2[13] = L25_2
  L12_2[14] = L26_2
  L12_2[15] = L27_2
  L12_2[16] = L28_2
  L13_2 = true
  L14_2 = 1201
  L15_2 = A5_2[A0_2]
  L15_2 = L15_2.customPowerUpSkins
  if L15_2 then
    L15_2 = 1
    L16_2 = A5_2[A0_2]
    L16_2 = L16_2.customPowerUpSkins
    L16_2 = #L16_2
    L17_2 = 1
    for L18_2 = L15_2, L16_2, L17_2 do
      L19_2 = L1_1
      L19_2 = L19_2.storeConfig
      L19_2 = L19_2.getItemCategory
      L20_2 = tonumber
      L21_2 = A5_2[A0_2]
      L21_2 = L21_2.customPowerUpSkins
      L21_2 = L21_2[L18_2]
      L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L20_2(L21_2)
      L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
      if L19_2 == "sawblade" then
        L19_2 = L1_1
        L19_2 = L19_2.storeConfig
        L19_2 = L19_2.canDrawItem
        L20_2 = tonumber
        L21_2 = A5_2[A0_2]
        L21_2 = L21_2.customPowerUpSkins
        L21_2 = L21_2[L18_2]
        L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L20_2(L21_2)
        L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
        if L19_2 then
          L19_2 = A5_2[A0_2]
          L19_2 = L19_2.customPowerUpSkins
          L14_2 = L19_2[L18_2]
        end
      end
    end
  end
  L15_2 = L1_1
  L15_2 = L15_2.storeConfig
  L15_2 = L15_2.hasHitImage
  L16_2 = L14_2
  L15_2 = L15_2(L16_2)
  L16_2 = L1_1
  L16_2 = L16_2.powerUpImageSheetInfo
  L17_2 = L16_2
  L16_2 = L16_2.getFrameIndex
  L18_2 = ""
  L19_2 = L14_2
  L18_2 = L18_2 .. L19_2
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = L1_1
  L17_2 = L17_2.powerUpImageSheetInfo
  L18_2 = L17_2
  L17_2 = L17_2.getFrameIndex
  L19_2 = ""
  L20_2 = L14_2
  L21_2 = "_2"
  L19_2 = L19_2 .. L20_2 .. L21_2
  L17_2 = L17_2(L18_2, L19_2)
  
  function L18_2()
    local L0_3, L1_3
    L0_3 = false
    L13_2 = L0_3
  end
  
  function L19_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L6_2
    if L0_3 then
      L0_3 = L7_2
      if not L0_3 then
        L0_3 = L6_2
        L1_3 = L0_3
        L0_3 = L0_3.getLinearVelocity
        L0_3, L1_3 = L0_3(L1_3)
        L2_3 = L8_2
        L3_3 = L2_3
        L2_3 = L2_3.rotate
        L4_3 = L0_3 * 0.05
        L2_3(L3_3, L4_3)
        L2_3 = L9_2
        if L2_3 then
          L2_3 = L9_2
          L3_3 = L2_3
          L2_3 = L2_3.rotate
          L4_3 = L0_3 * 0.05
          L2_3(L3_3, L4_3)
        end
      end
    end
  end
  
  function L20_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L6_2
    if L0_3 then
      L0_3 = L7_2
      if not L0_3 then
        L0_3 = L6_2
        L1_3 = L0_3
        L0_3 = L0_3.getLinearVelocity
        L0_3, L1_3 = L0_3(L1_3)
        if L0_3 < 0 then
          L2_3 = L10_2
          L2_3 = -L2_3
          if L0_3 > L2_3 then
            L0_3 = L0_3 - 40
        end
        elseif 0 < L0_3 then
          L2_3 = L10_2
          if L0_3 < L2_3 then
            L0_3 = L0_3 + 40
          end
        end
        L2_3 = L6_2
        L3_3 = L2_3
        L2_3 = L2_3.setLinearVelocity
        L4_3 = L0_3
        L5_3 = L1_3
        L2_3(L3_3, L4_3, L5_3)
      end
    end
  end
  
  function L21_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = true
    L7_2 = L0_3
    L0_3 = L6_2
    if L0_3 then
      L0_3 = Runtime
      L1_3 = L0_3
      L0_3 = L0_3.removeEventListener
      L2_3 = "enterFrame"
      L3_3 = L19_2
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
  
  function L22_2()
    local L0_3, L1_3
    L0_3 = L9_2
    if L0_3 then
      L0_3 = L9_2
      L0_3.alpha = 1
      L0_3 = L8_2
      L0_3.alpha = 0
    end
  end
  
  L6_2.changeImage = L22_2
  
  function L23_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L6_2
    if L1_3 then
      L1_3 = L7_2
      if not L1_3 then
        L1_3 = L6_2
        L2_3 = A0_3.x
        L1_3.x = L2_3
        L1_3 = L6_2
        L2_3 = A0_3.y
        L1_3.y = L2_3
        L1_3 = L6_2
        L2_3 = L1_3
        L1_3 = L1_3.setLinearVelocity
        L3_3 = 2000
        L4_3 = -1700
        L1_3(L2_3, L3_3, L4_3)
      end
    end
  end
  
  L6_2.cannonFunction = L23_2
  
  function L24_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = A1_3.phase
    if L2_3 == "began" then
      L2_3 = A1_3.other
      L2_3 = L2_3.bounce
      if L2_3 then
        L2_3 = L6_2
        L3_3 = L2_3
        L2_3 = L2_3.getLinearVelocity
        L2_3, L3_3 = L2_3(L3_3)
        L4_3 = math
        L4_3 = L4_3.abs
        L5_3 = L3_3
        L4_3 = L4_3(L5_3)
        if 100 < L4_3 then
          L2_3 = L2_3 * 0.7
        end
        L4_3 = math
        L4_3 = L4_3.abs
        L5_3 = L3_3 * 1.3
        L4_3 = L4_3(L5_3)
        L4_3 = -L4_3
        if L4_3 < -700 then
          L4_3 = -700
        end
        if -500 < L4_3 then
          L4_3 = -500
        end
        L5_3 = L6_2
        L6_3 = L5_3
        L5_3 = L5_3.setLinearVelocity
        L7_3 = L2_3
        L8_3 = L4_3
        L5_3(L6_3, L7_3, L8_3)
      else
        L2_3 = A1_3.other
        L2_3 = L2_3.cannon
        if L2_3 then
          L2_3 = A1_3.otherElement
          if L2_3 == 1 then
            L2_3 = A1_3.other
            L2_3 = L2_3.onCollision
            L3_3 = L6_2
            L4_3 = L7_2
            L2_3(L3_3, L4_3)
          end
        else
          L2_3 = A1_3.other
          L2_3 = L2_3.boost
          if L2_3 then
            L2_3 = L6_2
            L3_3 = L2_3
            L2_3 = L2_3.getLinearVelocity
            L2_3, L3_3 = L2_3(L3_3)
            L4_3 = L11_2
            L4_3 = L4_3 / L2_3
            if 1.6 < L4_3 then
              L4_3 = 1.6
            elseif L4_3 < 1 then
              L4_3 = 1
            end
            L5_3 = L6_2
            L6_3 = L5_3
            L5_3 = L5_3.setLinearVelocity
            L7_3 = L2_3 * L4_3
            L8_3 = L3_3
            L5_3(L6_3, L7_3, L8_3)
          else
            L2_3 = A1_3.other
            L2_3 = L2_3.id
            L3_3 = A0_2
            if L2_3 == L3_3 then
              L2_3 = L13_2
              if L2_3 then
            end
            else
              L2_3 = A1_3.other
              L2_3 = L2_3.onCollisionPowerUp
              if L2_3 then
                L2_3 = A1_3.other
                L2_3 = L2_3.onCollisionPowerUp
                L3_3 = A0_2
                L4_3 = 1
                L2_3 = L2_3(L3_3, L4_3)
                if L2_3 == 1 then
                  L3_3 = L22_2
                  L3_3()
                end
              end
            end
          end
        end
      end
    end
  end
  
  function L25_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = display
    L0_3 = L0_3.newImage
    L1_3 = L1_1
    L1_3 = L1_3.powerUpImageSheet
    L2_3 = L16_2
    L0_3 = L0_3(L1_3, L2_3)
    L8_2 = L0_3
    L0_3 = L8_2
    L0_3.xScale = 0.5
    L0_3 = L8_2
    L0_3.yScale = 0.5
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L8_2
    L0_3(L1_3, L2_3)
    L0_3 = L15_2
    if L0_3 then
      L0_3 = display
      L0_3 = L0_3.newImage
      L1_3 = L1_1
      L1_3 = L1_3.powerUpImageSheet
      L2_3 = L17_2
      L0_3 = L0_3(L1_3, L2_3)
      L9_2 = L0_3
      L0_3 = L9_2
      L0_3.xScale = 0.5
      L0_3 = L9_2
      L0_3.yScale = 0.5
      L0_3 = L9_2
      L0_3.alpha = 0
      L0_3 = L6_2
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L9_2
      L0_3(L1_3, L2_3)
    end
    L0_3 = L2_1
    L0_3 = L0_3.addBody
    L1_3 = L6_2
    L2_3 = {}
    L2_3.density = 0.6
    L2_3.friction = 0.1
    L2_3.bounce = 0.5
    L3_3 = L12_2
    L2_3.shape = L3_3
    L3_3 = powerUpFilter
    L2_3.filter = L3_3
    L3_3 = {}
    L3_3.isSensor = true
    L3_3.radius = 18
    L4_3 = sensorFilter
    L3_3.filter = L4_3
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L6_2
    L1_3 = L24_2
    L0_3.collision = L1_3
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "collision"
    L3_3 = L6_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L6_2
    L0_3.isFixedRotation = true
    L0_3 = L6_2
    L1_3 = L20_2
    L0_3.update = L1_3
    L0_3 = L6_2
    L1_3 = L21_2
    L0_3.removeObject = L1_3
    L0_3 = L6_2
    L0_3.id = "blade"
    L0_3 = A0_2
    if L0_3 then
      L0_3 = L6_2
      L1_3 = L6_2
      L1_3 = L1_3.id
      L2_3 = A0_2
      L1_3 = L1_3 .. L2_3
      L0_3.id = L1_3
    end
    L0_3 = A4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L6_2
    L0_3(L1_3, L2_3)
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "enterFrame"
    L3_3 = L19_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L26_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A5_2
    L1_3 = A0_2
    L0_3 = L0_3[L1_3]
    L0_3 = L0_3.removeBladeAnimation
    L0_3()
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.setLinearVelocity
    L2_3 = L10_2
    L2_3 = L2_3 * 1
    L3_3 = 5
    L4_3 = 0
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.applyForce
    L2_3 = 50
    L3_3 = 0
    L4_3 = 0
    L5_3 = -20
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.applyForce
    L2_3 = -50
    L3_3 = 0
    L4_3 = 0
    L5_3 = 20
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L0_3 = A1_2
    if L0_3 then
      L0_3 = L6_2
      L1_3 = A1_2
      L1_3 = L1_3.x
      L0_3.x = L1_3
      L0_3 = L6_2
      L1_3 = A1_2
      L1_3 = L1_3.y
      L1_3 = L1_3 - 2
      L0_3.y = L1_3
    else
      L0_3 = L6_2
      L1_3 = A2_2
      L0_3.x = L1_3
      L0_3 = L6_2
      L1_3 = A3_2
      L0_3.y = L1_3
    end
  end
  
  L27_2 = L25_2
  L27_2()
  L27_2 = L26_2
  L27_2()
  L27_2 = timer
  L27_2 = L27_2.performWithDelay
  L28_2 = 500
  L29_2 = L18_2
  L30_2 = 1
  L27_2(L28_2, L29_2, L30_2)
  L27_2 = timer
  L27_2 = L27_2.performWithDelay
  L28_2 = 6000
  L29_2 = L21_2
  L30_2 = 1
  L27_2(L28_2, L29_2, L30_2)
  return L6_2
end

L0_1.new = L3_1
return L0_1
