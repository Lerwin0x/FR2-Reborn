local L0_1, L1_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = 1
  L2_2[1] = L3_2
  L2_2.x = 1
  L2_2.y = 1
  L3_2 = 4000
  L4_2 = A1_2[A0_2]
  L5_2 = false
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L4_2
    if L0_3 then
      L0_3 = L4_2
      L0_3 = L0_3.shieldPowerUp
      L0_3()
      L0_3 = L4_2
      L0_3 = L0_3.booleanStates
      L0_3.shieldActive = true
      L0_3 = L4_2
      L0_3 = L0_3.powerUpLinks
      L1_3 = L2_2
      L0_3.shield = L1_3
    end
  end
  
  L7_2 = L6_2
  L7_2()
  return L2_2
end

L0_1.new = L1_1
return L0_1
