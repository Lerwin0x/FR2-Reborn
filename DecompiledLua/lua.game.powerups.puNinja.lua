local L0_1, L1_1
L0_1 = {}

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = require
  L5_2 = "composer"
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = 1
  L5_2[1] = L6_2
  L5_2.x = 1
  L5_2.y = 1
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L4_2
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.gameType
    if L0_3 == 0 then
      L0_3 = A3_2
      L1_3 = A0_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3.playerId
      L1_3 = A2_2
      if L0_3 == L1_3 then
        L0_3 = 1
        L1_3 = A3_2
        L1_3 = #L1_3
        L2_3 = 1
        for L3_3 = L0_3, L1_3, L2_3 do
          L4_3 = A3_2
          L4_3 = L4_3[L3_3]
          L4_3 = L4_3.ninjaMark
          if L4_3 then
            L4_3 = A3_2
            L4_3 = L4_3[L3_3]
            L4_3 = L4_3.onCollisionPowerUp
            L5_3 = A0_2
            L6_3 = 9
            L4_3(L5_3, L6_3)
          end
        end
      else
        L0_3 = math
        L0_3 = L0_3.random
        L1_3 = 1
        L2_3 = A3_2
        L2_3 = #L2_3
        L0_3 = L0_3(L1_3, L2_3)
        L1_3 = A3_2
        L1_3 = L1_3[L0_3]
        L1_3 = L1_3.onCollisionPowerUp
        L2_3 = A0_2
        L3_3 = 9
        L1_3(L2_3, L3_3)
      end
    else
      L0_3 = A3_2
      L1_3 = A0_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3.playerId
      L1_3 = A2_2
      if L0_3 == L1_3 then
        L0_3 = 1
        L1_3 = A3_2
        L1_3 = #L1_3
        L2_3 = 1
        for L3_3 = L0_3, L1_3, L2_3 do
          L4_3 = A3_2
          L4_3 = L4_3[L3_3]
          L4_3 = L4_3.ninjaMark
          if L4_3 then
            L4_3 = L5_2
            L4_3.x = L3_3
            A1_2 = L3_3
          end
        end
      end
      L0_3 = A1_2
      if L0_3 == 0 then
        return
      end
      L0_3 = A3_2
      L1_3 = A1_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3.playerId
      L1_3 = A2_2
      if L0_3 == L1_3 then
        L0_3 = A3_2
        L1_3 = A1_2
        L0_3 = L0_3[L1_3]
        L0_3 = L0_3.onCollisionPowerUp
        L1_3 = A0_2
        L2_3 = 9
        L0_3(L1_3, L2_3)
      end
    end
  end
  
  L7_2 = L6_2
  L7_2()
  return L5_2
end

L0_1.new = L1_1
return L0_1
