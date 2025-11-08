local L0_1, L1_1
L0_1 = {}

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L1_2 = require
  L2_2 = "composer"
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  L7_2 = nil
  L8_2 = nil
  L9_2 = nil
  L10_2 = nil
  L11_2 = nil
  L12_2 = nil
  
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L6_2
    L0_3 = #L0_3
    if 10 < L0_3 then
      L0_3 = L6_2
      L0_3 = L0_3[1]
      L1_3 = true
      L2_3 = 2
      L3_3 = L6_2
      L3_3 = #L3_3
      L4_3 = 1
      for L5_3 = L2_3, L3_3, L4_3 do
        L6_3 = math
        L6_3 = L6_3.abs
        L7_3 = L6_2
        L7_3 = L7_3[L5_3]
        L7_3 = L0_3 - L7_3
        L6_3 = L6_3(L7_3)
        if 30 < L6_3 then
          L1_3 = false
          break
        end
      end
      if L1_3 then
        L2_3 = print
        L3_3 = "stuck"
        L2_3(L3_3)
        L2_3 = L2_2
        L3_3 = L2_3
        L2_3 = L2_3.applyForce
        L4_3 = -400
        L5_3 = -200
        L6_3 = L2_2
        L6_3 = L6_3.x
        L7_3 = L2_2
        L7_3 = L7_3.y
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
      end
    end
  end
  
  function L14_2()
    local L0_3, L1_3
    L0_3 = false
    L4_2 = L0_3
    L0_3 = 999999
    L5_2 = L0_3
  end
  
  function L15_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L2_2
    L1_3 = L1_3.canJump
    L1_3 = L1_3()
    if L1_3 then
      L1_3 = L2_2
      L1_3 = L1_3.y
      L2_3 = L5_2
      L2_3 = L2_3 - 20
      if L1_3 > L2_3 then
        L1_3 = true
        L4_2 = L1_3
        L1_3 = timer
        L1_3 = L1_3.performWithDelay
        L2_3 = 1800
        L3_3 = L14_2
        L4_3 = 1
        L1_3(L2_3, L3_3, L4_3)
      else
        L1_3 = L2_2
        L1_3 = L1_3.jump
        L1_3()
        if A0_3 then
          L1_3 = L2_2
          L1_3 = L1_3.y
          L5_2 = L1_3
        end
      end
    end
  end
  
  function L16_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L8_2
    if L1_3 then
      L1_3 = {}
      L1_3[1] = "11"
      L2_3 = L2_2
      L2_3 = L2_3.id
      L1_3[2] = L2_3
      L2_3 = {}
      L1_3[3] = L2_3
      L1_3[4] = A0_3
      L2_3 = L2_2
      L2_3 = L2_3.x
      L1_3[5] = L2_3
      L2_3 = L2_2
      L2_3 = L2_3.y
      L1_3[6] = L2_3
      L2_3 = L8_2
      L3_3 = L1_3
      L2_3(L3_3)
    end
  end
  
  function L17_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = L1_2
    L1_3 = L1_3.data
    L1_3 = L1_3.gameInfo
    L1_3 = L1_3.gameType
    if L1_3 == 0 then
      L1_3 = L2_2
      L1_3 = L1_3.getPowerUp
      L1_3 = L1_3()
      if 0 < L1_3 then
        if 50 < L1_3 then
          L2_3 = L16_2
          L3_3 = L1_3
          L2_3(L3_3)
          
          function L2_3(A0_4)
            local L1_4, L2_4
            L1_4 = L16_2
            L2_4 = L1_3
            L2_4 = L2_4 - 50
            return L1_4(L2_4)
          end
          
          L3_3 = timer
          L3_3 = L3_3.performWithDelay
          L4_3 = 200
          L5_3 = L2_3
          L6_3 = 1
          L3_3(L4_3, L5_3, L6_3)
        else
          L2_3 = L16_2
          L3_3 = L1_3
          L2_3(L3_3)
        end
        L2_3 = L2_2
        L2_3 = L2_3.usedPowerUp
        L2_3()
      end
    else
      L1_3 = L12_2
      if L1_3 then
        L1_3 = {}
        L1_3.phase = "began"
        L2_3 = L12_2
        L3_3 = nil
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
      end
    end
  end
  
  function L18_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = L1_2
    L1_3 = L1_3.onboarding
    L1_3 = L1_3.isActive
    if L1_3 == true then
      L1_3 = L1_2
      L1_3 = L1_3.onboarding
      L1_3 = L1_3.overrideAI
      L1_3 = L1_3()
      if L1_3 then
        return
      end
    end
    L1_3 = L2_2
    if L1_3 then
      L1_3 = L2_2
      L2_3 = L1_3
      L1_3 = L1_3.getLinearVelocity
      L1_3, L2_3 = L1_3(L2_3)
      if 0 < L1_3 then
        L3_3 = L9_2
        if L3_3 == 0 then
          L3_3 = 1
          L9_2 = L3_3
        end
      end
      if L1_3 < 80 then
        L3_3 = L9_2
        if L3_3 == 1 then
          L3_3 = L4_2
          if not L3_3 then
            L3_3 = L15_2
            L4_3 = true
            L3_3(L4_3)
            L3_3 = 0
            L7_2 = L3_3
        end
      end
      else
        L3_3 = math
        L3_3 = L3_3.random
        L3_3 = L3_3()
        if 0.95 < L3_3 then
          L3_3 = L9_2
          if L3_3 == 1 then
            L3_3 = L4_2
            if not L3_3 then
              L3_3 = L15_2
              L3_3()
              L3_3 = 0
              L7_2 = L3_3
          end
        end
        else
          L3_3 = L7_2
          L3_3 = L3_3 + 1
          L7_2 = L3_3
        end
      end
      L3_3 = L7_2
      if L3_3 == 3 then
        L3_3 = 999999
        L5_2 = L3_3
      end
      L3_3 = L6_2
      L3_3 = #L3_3
      if 12 < L3_3 then
        L3_3 = table
        L3_3 = L3_3.remove
        L4_3 = L6_2
        L3_3(L4_3)
      end
      L3_3 = L9_2
      if L3_3 == 1 then
        L3_3 = L10_2
        if 5 < L3_3 then
          L3_3 = L2_2
          L3_3 = L3_3.canJump
          L3_3 = L3_3()
          if L3_3 then
            L3_3 = table
            L3_3 = L3_3.insert
            L4_3 = L6_2
            L5_3 = 1
            L6_3 = L2_2
            L6_3 = L6_3.x
            L3_3(L4_3, L5_3, L6_3)
          end
          L3_3 = 0
          L10_2 = L3_3
          L3_3 = L17_2
          L3_3()
        end
      end
      L3_3 = L10_2
      L3_3 = L3_3 + 1
      L10_2 = L3_3
      L3_3 = L13_2
      L3_3()
    else
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = A0_3.source
      L1_3(L2_3)
    end
  end
  
  function L19_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      L2_2 = A0_3
      L1_3 = false
      L4_2 = L1_3
      L1_3 = 999999
      L5_2 = L1_3
      L1_3 = {}
      L6_2 = L1_3
      L1_3 = 0
      L7_2 = L1_3
      L1_3 = 0
      L9_2 = L1_3
      L1_3 = 0
      L10_2 = L1_3
      L1_3 = timer
      L1_3 = L1_3.performWithDelay
      L2_3 = 200
      L3_3 = L18_2
      L4_3 = 0
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      L3_2 = L1_3
    end
  end
  
  L20_2 = L19_2
  L21_2 = A0_2
  L20_2(L21_2)
  
  function L20_2(A0_3, A1_3, A2_3)
    L8_2 = A0_3
    L11_2 = A1_3
    L12_2 = A2_3
  end
  
  L2_2.setGameFunction = L20_2
  
  function L21_2()
    local L0_3, L1_3
    L0_3 = L14_2
    L0_3()
  end
  
  L2_2.botDied = L21_2
  
  function L22_2()
    local L0_3, L1_3
    L0_3 = L3_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L3_2
      L0_3(L1_3)
      L0_3 = nil
      L3_2 = L0_3
    end
  end
  
  L2_2.cleanBot = L22_2
  
  function L23_2()
    local L0_3, L1_3, L2_3
    L0_3 = L8_2
    if L0_3 then
      L0_3 = L2_2
      if L0_3 then
        L0_3 = L9_2
        if L0_3 == 1 then
          L0_3 = L1_2
          L0_3 = L0_3.data
          L0_3 = L0_3.gameInfo
          L0_3 = L0_3.gameType
          if L0_3 == 0 then
            L0_3 = {}
            L0_3[1] = "15"
            L1_3 = L2_2
            L1_3 = L1_3.id
            L0_3[2] = L1_3
            L0_3[3] = ""
            L1_3 = system
            L1_3 = L1_3.getTimer
            L1_3 = L1_3()
            L2_3 = L11_2
            L1_3 = L1_3 - L2_3
            L0_3[4] = L1_3
            L1_3 = L8_2
            L2_3 = L0_3
            L1_3(L2_3)
          end
        end
      end
    end
    L0_3 = 2
    L9_2 = L0_3
    L0_3 = L3_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L3_2
      L0_3(L1_3)
      L0_3 = nil
      L3_2 = L0_3
    end
  end
  
  function L24_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = {}
    L1_3[1] = "15"
    L2_3 = L2_2
    L2_3 = L2_3.id
    L1_3[2] = L2_3
    L1_3[3] = ""
    L1_3[4] = A0_3
    L2_3 = L8_2
    L3_3 = L1_3
    L2_3(L3_3)
    L2_3 = 2
    L9_2 = L2_3
    L2_3 = L3_2
    if L2_3 then
      L2_3 = timer
      L2_3 = L2_3.cancel
      L3_3 = L3_2
      L2_3(L3_3)
      L2_3 = nil
      L3_2 = L2_3
    end
  end
  
  L2_2.inGoal = L23_2
  L2_2.forceInGoal = L24_2
  return L2_2
end

L0_1.new = L1_1
return L0_1
