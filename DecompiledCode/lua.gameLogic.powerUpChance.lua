local L0_1, L1_1, L2_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = L1_1
  L4_2 = L4_2.data
  L4_2 = L4_2.gameInfo
  L4_2 = L4_2.crazyModeActive
  if L4_2 then
    L4_2 = L1_1
    L4_2 = L4_2.data
    L4_2 = L4_2.gameInfo
    L4_2 = L4_2.crazyMode
    if L4_2 == 2 then
      L4_2 = 1
      return L4_2
    else
      L4_2 = L1_1
      L4_2 = L4_2.data
      L4_2 = L4_2.gameInfo
      L4_2 = L4_2.crazyMode
      if L4_2 == 5 then
        L4_2 = 10
        return L4_2
      else
        L4_2 = L1_1
        L4_2 = L4_2.data
        L4_2 = L4_2.gameInfo
        L4_2 = L4_2.crazyMode
        if L4_2 == 6 then
          L4_2 = 7
          return L4_2
        else
          L4_2 = L1_1
          L4_2 = L4_2.data
          L4_2 = L4_2.gameInfo
          L4_2 = L4_2.crazyMode
          if L4_2 == 7 then
            L4_2 = 9
            return L4_2
          end
        end
      end
    end
  end
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = 1
  L6_2 = 100
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = 1
  if A1_2 == A2_2 then
    if 75 < L4_2 then
      L5_2 = 3
    elseif 45 < L4_2 then
      L5_2 = 7
    elseif 25 < L4_2 then
      L5_2 = 4
    elseif 15 < L4_2 then
      L5_2 = 9
    elseif 5 < L4_2 then
      L5_2 = 10
    else
      L5_2 = 5
    end
  elseif A1_2 == 1 then
    if 82 < L4_2 then
      L5_2 = 1
    elseif 64 < L4_2 then
      L5_2 = 8
    elseif 46 < L4_2 then
      L5_2 = 2
    elseif 33 < L4_2 then
      L5_2 = 9
    elseif 23 < L4_2 then
      L5_2 = 10
    elseif 10 < L4_2 then
      L5_2 = 4
    else
      L5_2 = 5
    end
  elseif 89 < L4_2 then
    L5_2 = 1
  elseif 82 < L4_2 then
    L5_2 = 10
  elseif 70 < L4_2 then
    L5_2 = 9
  elseif 60 < L4_2 then
    L5_2 = 7
  elseif 50 < L4_2 then
    L5_2 = 2
  elseif 40 < L4_2 then
    L5_2 = 8
  elseif 30 < L4_2 then
    L5_2 = 3
  elseif 20 < L4_2 then
    L5_2 = 4
  elseif 10 < L4_2 then
    L5_2 = 5
  else
    L5_2 = 6
  end
  if A2_2 == 1 then
    if 87 < L4_2 then
      L5_2 = 1
    elseif 75 < L4_2 then
      L5_2 = 2
    elseif 62 < L4_2 then
      L5_2 = 3
    elseif 50 < L4_2 then
      L5_2 = 4
    elseif 38 < L4_2 then
      L5_2 = 5
    elseif 25 < L4_2 then
      L5_2 = 6
    elseif 12 < L4_2 then
      L5_2 = 7
    elseif 5 < L4_2 then
      L5_2 = 8
    else
      L5_2 = 9
    end
  end
  L6_2 = L1_1
  L6_2 = L6_2.config
  L6_2 = L6_2.tutorial
  if L6_2 then
    L5_2 = 4
  end
  L6_2 = #A3_2
  if A1_2 == L6_2 and 2 < A2_2 then
    L6_2 = true
    L7_2 = 1
    L8_2 = #A3_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = A3_2[L10_2]
      L11_2 = L11_2.mainPlayer
      if not L11_2 then
        L11_2 = A3_2[L10_2]
        L11_2 = L11_2.x
        L12_2 = A0_2.x
        L12_2 = L12_2 + 1200
        if L11_2 < L12_2 then
          L6_2 = false
        end
      end
    end
    if L6_2 then
      L5_2 = 11
    end
  end
  L6_2 = L1_1
  L6_2 = L6_2.onboarding
  L6_2 = L6_2.isActive
  if L6_2 == true then
    L6_2 = L1_1
    L6_2 = L6_2.onboarding
    L6_2 = L6_2.powerBoxFunction
    L7_2 = A0_2.id
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  end
  return L5_2
end

L0_1.selectRandomPowerUp = L2_1

function L2_1(A0_2)
  local L1_2
  if A0_2 == 1 then
    A0_2 = 51
  elseif A0_2 == 2 then
    A0_2 = 52
  elseif A0_2 == 7 then
    A0_2 = 57
  elseif A0_2 == 8 then
    A0_2 = 58
  elseif A0_2 == 9 then
    A0_2 = 59
  end
  return A0_2
end

L0_1.convertPowerUp = L2_1
return L0_1
