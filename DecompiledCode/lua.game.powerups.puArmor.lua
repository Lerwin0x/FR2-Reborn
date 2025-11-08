local L0_1, L1_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = 1
  L2_2[1] = L3_2
  L2_2.x = 1
  L2_2.y = 1
  L3_2 = A1_2[A0_2]
  L4_2 = false
  L5_2 = A1_2[A0_2]
  L5_2 = L5_2.armorPowerUp
  L5_2()
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = L4_2
    if not L0_3 then
      L0_3 = L3_2
      if L0_3 ~= nil then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L0_3 = true
    L4_2 = L0_3
    L0_3 = L3_2
    L0_3 = L0_3.booleanStates
    L0_3.armorActive = false
  end
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L3_2
    if L0_3 then
      L0_3 = L3_2
      L0_3 = L0_3.armorPowerUp
      L0_3()
      L0_3 = L3_2
      L0_3 = L0_3.booleanStates
      L0_3.armorActive = true
      L0_3 = L3_2
      L0_3 = L0_3.powerUpLinks
      L1_3 = L2_2
      L0_3.armor = L1_3
    end
  end
  
  L7_2 = L6_2
  L7_2()
  L2_2.removeObject = L5_2
  return L2_2
end

L0_1.new = L1_1
return L0_1
