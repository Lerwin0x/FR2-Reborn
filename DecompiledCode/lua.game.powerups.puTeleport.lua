local L0_1, L1_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  L3_2 = 1
  L2_2[1] = L3_2
  L2_2.x = 1
  L2_2.y = 1
  L3_2 = A1_2[A0_2]
  L4_2 = false
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = 1
    L1_3 = nil
    L2_3 = nil
    L3_3 = 1
    L4_3 = A1_2
    L4_3 = #L4_3
    L5_3 = 1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = L3_2
      L7_3 = L7_3.id
      if L6_3 ~= L7_3 then
        L7_3 = A1_2
        L7_3 = L7_3[L6_3]
        L7_3 = L7_3.x
        L8_3 = L3_2
        L8_3 = L8_3.x
        if L7_3 > L8_3 then
          L0_3 = L0_3 + 1
          if not L1_3 then
            L7_3 = A1_2
            L7_3 = L7_3[L6_3]
            L1_3 = L7_3.x
            L7_3 = A1_2
            L7_3 = L7_3[L6_3]
            L2_3 = L7_3.y
          else
            L7_3 = A1_2
            L7_3 = L7_3[L6_3]
            L7_3 = L7_3.x
            if L1_3 > L7_3 then
              L7_3 = A1_2
              L7_3 = L7_3[L6_3]
              L1_3 = L7_3.x
              L7_3 = A1_2
              L7_3 = L7_3[L6_3]
              L2_3 = L7_3.y
            end
          end
        end
      end
    end
    L3_3 = L0_3
    L4_3 = L1_3
    L5_3 = L2_3
    return L3_3, L4_3, L5_3
  end
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L5_2
    L0_3, L1_3, L2_3 = L0_3()
    if L0_3 == 1 then
      L3_3 = false
      return L3_3
    end
    if L1_3 and L2_3 then
      L3_3 = L1_3
      L4_3 = L2_3
      return L3_3, L4_3
    end
    L3_3 = false
    return L3_3
  end
  
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L3_2
    if L0_3 then
      L0_3 = L6_2
      L0_3, L1_3 = L0_3()
      if L0_3 and L1_3 then
        L2_3 = L3_2
        L2_3 = L2_3.playTeleportPowerUp
        L3_3 = L0_3
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
      end
    end
  end
  
  L8_2 = L7_2
  L8_2()
  return L2_2
end

L0_1.new = L1_1
return L0_1
