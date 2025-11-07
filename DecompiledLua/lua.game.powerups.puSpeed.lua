local L0_1, L1_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = 1
  L2_2[1] = L3_2
  L2_2.x = 1
  L2_2.y = 1
  L3_2 = 4000
  L4_2 = A1_2[A0_2]
  L5_2 = false
  L6_2 = nil
  
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = L5_2
    if not L2_3 then
      L2_3 = L4_2
      if L2_3 ~= nil then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L2_3 = true
    L5_2 = L2_3
    L2_3 = L6_2
    if L2_3 then
      L2_3 = timer
      L2_3 = L2_3.cancel
      L3_3 = L6_2
      L2_3(L3_3)
      L2_3 = nil
      L6_2 = L2_3
    end
    if not A1_3 then
      L2_3 = L4_2
      L2_3 = L2_3.stopPowerUpSpeed
      L3_3 = true
      L2_3(L3_3)
    end
    L2_3 = L4_2
    L2_3 = L2_3.booleanStates
    L2_3.speedActive = false
  end
  
  function L8_2()
    local L0_3, L1_3
    L0_3 = L4_2
    if L0_3 then
      L0_3 = L4_2
      L0_3 = L0_3.speedPowerUp
      L0_3()
      L0_3 = L4_2
      L0_3 = L0_3.booleanStates
      L0_3.speedActive = true
      L0_3 = L4_2
      L0_3 = L0_3.powerUpLinks
      L1_3 = L2_2
      L0_3.speed = L1_3
    end
  end
  
  L9_2 = L8_2
  L9_2()
  L9_2 = timer
  L9_2 = L9_2.performWithDelay
  L10_2 = L3_2
  L11_2 = L7_2
  L12_2 = 1
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L6_2 = L9_2
  L2_2.removeObject = L7_2
  return L2_2
end

L0_1.new = L1_1
return L0_1
