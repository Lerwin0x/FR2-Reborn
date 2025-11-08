local L0_1, L1_1, L2_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = {}
  L4_2 = 1
  L3_2[1] = L4_2
  L3_2.x = 1
  L3_2.y = 1
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = 1
    L1_3 = A2_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = A2_2
      L4_3 = L4_3[L3_3]
      L4_3 = L4_3.id
      L5_3 = A0_2
      if L4_3 ~= L5_3 then
        L4_3 = A2_2
        L4_3 = L4_3[L3_3]
        L4_3 = L4_3.playerId
        L5_3 = A1_2
        if L4_3 == L5_3 then
          L4_3 = A2_2
          L4_3 = L4_3[L3_3]
          L4_3 = L4_3.onCollisionPowerUp
          L5_3 = A0_2
          L6_3 = 7
          L4_3(L5_3, L6_3)
        else
          L4_3 = L1_1
          L4_3 = L4_3.data
          L4_3 = L4_3.gameInfo
          L4_3 = L4_3.gameType
          if L4_3 == 0 then
            L4_3 = A2_2
            L4_3 = L4_3[L3_3]
            L4_3 = L4_3.onCollisionPowerUp
            L5_3 = A0_2
            L6_3 = 7
            L4_3(L5_3, L6_3)
          end
        end
      end
    end
  end
  
  L5_2 = L4_2
  L5_2()
  return L3_2
end

L0_1.new = L2_1
return L0_1
