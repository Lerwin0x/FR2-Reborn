local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = require
L2_1 = "physics"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)

function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L3_2 = {}
  L4_2 = 1
  L3_2[1] = L4_2
  L3_2.x = 1
  L3_2.y = 1
  L4_2 = A1_2[A0_2]
  L5_2 = nil
  L6_2 = false
  L7_2 = 200
  L8_2 = nil
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = false
  
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L12_2
    if L0_3 then
      L0_3 = L9_2
      L0_3 = L0_3 - 1
      L9_2 = L0_3
      L0_3 = L9_2
      if L0_3 < -30 then
        L0_3 = false
        L12_2 = L0_3
        L0_3 = 0
        L9_2 = L0_3
      end
      L0_3 = true
      return L0_3
    end
    L0_3 = L4_2
    L0_3 = L0_3.x
    L1_3 = L11_2
    L0_3 = L0_3 - L1_3
    L1_3 = L4_2
    L1_3 = L1_3.y
    L2_3 = L10_2
    L1_3 = L1_3 - L2_3
    L2_3 = math
    L2_3 = L2_3.sqrt
    L3_3 = L0_3 * L0_3
    L4_3 = L1_3 * L1_3
    L3_3 = L3_3 + L4_3
    L2_3 = L2_3(L3_3)
    if L2_3 < 20 then
      L3_3 = L9_2
      L3_3 = L3_3 + 1
      L9_2 = L3_3
    else
      L3_3 = L4_2
      L3_3 = L3_3.x
      L11_2 = L3_3
      L3_3 = L4_2
      L3_3 = L3_3.y
      L10_2 = L3_3
      L3_3 = 0
      L9_2 = L3_3
    end
    L3_3 = L9_2
    if 10 < L3_3 then
      L3_3 = true
      L12_2 = L3_3
      L3_3 = print
      L4_3 = "rocket stuck"
      L3_3(L4_3)
      L3_3 = true
      return L3_3
    end
    L3_3 = false
    return L3_3
  end
  
  function L14_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = L4_2
    if L0_3 then
      L0_3 = L4_2
      L0_3 = L0_3.getPlayerGoalTime
      L0_3 = L0_3()
      if L0_3 < 1 then
        L0_3 = L13_2
        L0_3 = L0_3()
        if not L0_3 then
          L0_3 = 10
          L1_3 = 4
          L2_3 = L1_1
          L2_3 = L2_3.rayCast
          L3_3 = L4_2
          L3_3 = L3_3.x
          L3_3 = L3_3 + 12
          L4_3 = L4_2
          L4_3 = L4_3.y
          L4_3 = L4_3 + 20
          L5_3 = L4_2
          L5_3 = L5_3.x
          L5_3 = L5_3 + 90
          L6_3 = L4_2
          L6_3 = L6_3.y
          L6_3 = L6_3 + 100
          L7_3 = "closest"
          L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
          L3_3 = L1_1
          L3_3 = L3_3.rayCast
          L4_3 = L4_2
          L4_3 = L4_3.x
          L4_3 = L4_3 + 10
          L5_3 = L4_2
          L5_3 = L5_3.y
          L5_3 = L5_3 - 20
          L6_3 = L4_2
          L6_3 = L6_3.x
          L6_3 = L6_3 + 10
          L7_3 = L4_2
          L7_3 = L7_3.y
          L7_3 = L7_3 - 50
          L8_3 = "closest"
          L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
          L4_3 = L4_2
          L5_3 = L4_3
          L4_3 = L4_3.getLinearVelocity
          L4_3, L5_3 = L4_3(L5_3)
          if L3_3 then
            L6_3 = L3_3[1]
            L6_3 = L6_3.object
            if L6_3 then
              L6_3 = L3_3[1]
              L6_3 = L6_3.object
              L6_3 = L6_3.mapElement
              if L6_3 then
                goto lbl_62
              end
            end
            do return end
            ::lbl_62::
            L6_3 = L4_2
            L6_3 = L6_3.x
            L7_3 = L3_3[1]
            L7_3 = L7_3.position
            L7_3 = L7_3.x
            L6_3 = L6_3 - L7_3
            L7_3 = L4_2
            L7_3 = L7_3.y
            L8_3 = L3_3[1]
            L8_3 = L8_3.position
            L8_3 = L8_3.y
            L7_3 = L7_3 - L8_3
            L8_3 = math
            L8_3 = L8_3.sqrt
            L9_3 = L6_3 * L6_3
            L10_3 = L7_3 * L7_3
            L9_3 = L9_3 + L10_3
            L8_3 = L8_3(L9_3)
            if L8_3 < 50 then
              if L5_3 < 0 then
                L0_3 = 50
              end
            elseif L8_3 < 100 then
              L0_3 = 0
            end
            L9_3 = L4_2
            L9_3 = L9_3.booleanStates
            L9_3.rocketActiveHigh = false
          elseif L2_3 then
            L6_3 = L2_3[1]
            L6_3 = L6_3.object
            if L6_3 then
              L6_3 = L2_3[1]
              L6_3 = L6_3.object
              L6_3 = L6_3.mapElement
              if L6_3 then
                goto lbl_105
              end
            end
            do return end
            ::lbl_105::
            L6_3 = L4_2
            L6_3 = L6_3.x
            L7_3 = L2_3[1]
            L7_3 = L7_3.position
            L7_3 = L7_3.x
            L6_3 = L6_3 - L7_3
            L7_3 = L4_2
            L7_3 = L7_3.y
            L8_3 = L2_3[1]
            L8_3 = L8_3.position
            L8_3 = L8_3.y
            L7_3 = L7_3 - L8_3
            L8_3 = math
            L8_3 = L8_3.sqrt
            L9_3 = L6_3 * L6_3
            L10_3 = L7_3 * L7_3
            L9_3 = L9_3 + L10_3
            L8_3 = L8_3(L9_3)
            if L8_3 < 50 then
              if 0 < L5_3 then
                L9_3 = L4_2
                L9_3 = L9_3.setLinearVelocityOnPlayer
                L10_3 = L4_3
                L11_3 = 0
                L9_3(L10_3, L11_3)
                if L8_3 < 20 then
                  L0_3 = -70
                else
                  L0_3 = -50
                end
              else
                L0_3 = -20
              end
            elseif L8_3 < 100 then
              L0_3 = -10
            else
              L0_3 = -5
            end
            L9_3 = L4_2
            L9_3 = L9_3.booleanStates
            L9_3.rocketActiveHigh = false
          else
            if L5_3 < 0 then
              L0_3 = 20
            else
              L0_3 = 0
            end
            L6_3 = L4_2
            L6_3 = L6_3.booleanStates
            L6_3.rocketActiveHigh = true
          end
          L6_3 = L4_2
          L6_3 = L6_3.applyForceOnPlayer
          L7_3 = L1_3
          L8_3 = L0_3
          L6_3(L7_3, L8_3)
        end
      end
    end
  end
  
  function L15_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L6_2
    if not L0_3 then
      L0_3 = L4_2
      if L0_3 ~= nil then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L0_3 = true
    L6_2 = L0_3
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "enterFrame"
    L3_3 = L14_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L4_2
    L0_3 = L0_3.booleanStates
    L0_3.rocketActive = false
    L0_3 = L4_2
    L0_3 = L0_3.booleanStates
    L0_3.rocketActiveHigh = false
    L0_3 = L4_2
    L0_3 = L0_3.rocketBlinkTimer
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L4_2
      L1_3 = L1_3.rocketBlinkTimer
      L0_3(L1_3)
      L0_3 = L4_2
      L0_3.rocketBlinkTimer = nil
    end
    L0_3 = L5_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L5_2
      L0_3(L1_3)
      L0_3 = nil
      L5_2 = L0_3
    end
    L0_3 = L8_2
    if L0_3 then
      L0_3 = L8_2
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      L8_2 = L0_3
    end
  end
  
  function L16_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L4_2
    L1_3 = L1_3.x
    L2_3 = A0_3.x
    L1_3 = L1_3 - L2_3
    L2_3 = L4_2
    L2_3 = L2_3.y
    L3_3 = A0_3.y
    L2_3 = L2_3 - L3_3
    L3_3 = math
    L3_3 = L3_3.sqrt
    L4_3 = L1_3 * L1_3
    L5_3 = L2_3 * L2_3
    L4_3 = L4_3 + L5_3
    L3_3 = L3_3(L4_3)
    L4_3 = L7_2
    if L3_3 < L4_3 then
      L4_3 = true
      return L4_3
    end
    L4_3 = false
    return L4_3
  end
  
  function L17_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L6_2
    if L0_3 then
      return
    end
    L0_3 = 1
    L1_3 = A1_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = A1_2
      L4_3 = L4_3[L3_3]
      L4_3 = L4_3.id
      L5_3 = A0_2
      if L4_3 ~= L5_3 then
        L4_3 = L16_2
        L5_3 = A1_2
        L5_3 = L5_3[L3_3]
        L4_3 = L4_3(L5_3)
        if L4_3 then
          L4_3 = A1_2
          L4_3 = L4_3[L3_3]
          L4_3 = L4_3.mainPlayer
          if not L4_3 then
            L4_3 = L2_1
            L4_3 = L4_3.data
            L4_3 = L4_3.gameInfo
            L4_3 = L4_3.gameType
            if L4_3 ~= 0 then
              goto lbl_39
            end
          end
          L4_3 = A1_2
          L4_3 = L4_3[L3_3]
          L4_3 = L4_3.onCollisionPowerUp
          L5_3 = A0_2
          L6_3 = 10
          L4_3(L5_3, L6_3)
        end
      end
      ::lbl_39::
    end
  end
  
  function L18_2()
    local L0_3, L1_3, L2_3
    L0_3 = L6_2
    if L0_3 then
      return
    end
    L0_3 = L4_2
    L0_3 = L0_3.mainPlayer
    if not L0_3 then
      L0_3 = L2_1
      L0_3 = L0_3.data
      L0_3 = L0_3.gameInfo
      L0_3 = L0_3.gameType
      if L0_3 ~= 0 then
        goto lbl_20
      end
    end
    L0_3 = L4_2
    L0_3 = L0_3.onCollisionPowerUp
    L1_3 = A0_2
    L2_3 = 10
    L0_3(L1_3, L2_3)
    ::lbl_20::
    L0_3 = L17_2
    L0_3()
    L0_3 = L15_2
    L0_3()
  end
  
  function L19_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L4_2
    if L0_3 then
      L0_3 = L4_2
      L0_3 = L0_3.rocketPowerUp
      L0_3()
      L0_3 = L4_2
      L0_3 = L0_3.booleanStates
      L0_3.rocketActive = true
      L0_3 = L4_2
      L0_3 = L0_3.applyForceOnPlayer
      L1_3 = 100
      L2_3 = -150
      L0_3(L1_3, L2_3)
      L0_3 = Runtime
      L1_3 = L0_3
      L0_3 = L0_3.addEventListener
      L2_3 = "enterFrame"
      L3_3 = L14_2
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L4_2
      L0_3 = L0_3.powerUpLinks
      L1_3 = L3_2
      L0_3.rocket = L1_3
    end
  end
  
  L20_2 = L19_2
  L20_2()
  L20_2 = timer
  L20_2 = L20_2.performWithDelay
  L21_2 = 5000
  L22_2 = L18_2
  L23_2 = 1
  L20_2 = L20_2(L21_2, L22_2, L23_2)
  L5_2 = L20_2
  L3_2.removeObject = L15_2
  L3_2.checkForOtherPlayerKill = L17_2
  return L3_2
end

L0_1.new = L3_1
return L0_1
