local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = {}

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= "table" then
    return A0_2
  end
  L1_2 = getmetatable
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = type
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 == "table" then
      L8_2 = L1_1
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2
    end
    L2_2[L6_2] = L7_2
  end
  L3_2 = setmetatable
  L4_2 = L2_2
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  return L2_2
end

L0_1.deepCopy = L1_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.rating
  L3_2 = A1_2.rating
  L2_2 = L2_2 > L3_2
  return L2_2
end

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = string
  L2_2 = L2_2.lower
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = string
  L3_2 = L3_2.lower
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 < L3_2
  return L2_2
end

function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2
  
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.rating
    L3_3 = A1_3.rating
    if L2_3 == L3_3 then
      L2_3 = A0_3.name
      if L2_3 ~= nil then
        L2_3 = A1_3.name
        if L2_3 ~= nil then
          L2_3 = L3_1
          L3_3 = A0_3.name
          L4_3 = A1_3.name
          return L2_3(L3_3, L4_3)
        end
      end
    end
    L2_3 = L2_1
    L3_3 = A0_3
    L4_3 = A1_3
    return L2_3(L3_3, L4_3)
  end
  
  L1_2(L2_2, L3_2)
end

L0_1.sortTableOnRating = L4_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2
  
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = A0_3.title
    if L2_3 then
      L2_3 = true
      return L2_3
    end
    L2_3 = A1_3.title
    if L2_3 then
      L2_3 = false
      return L2_3
    end
    L2_3 = A0_3.n
    if not L2_3 then
      L2_3 = A0_3.name
    end
    L3_3 = A1_3.n
    if not L3_3 then
      L3_3 = A1_3.name
    end
    if L2_3 and L3_3 then
      L4_3 = L3_1
      L5_3 = L2_3
      L6_3 = L3_3
      return L4_3(L5_3, L6_3)
    else
      L4_3 = true
      return L4_3
    end
  end
  
  L1_2(L2_2, L3_2)
end

L0_1.sortPlayerTableAlphabetically = L5_1
L6_1 = require
L7_1 = "composer"
L6_1 = L6_1(L7_1)

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 0
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    if L1_2 < L6_2 then
      L1_2 = A0_2[L5_2]
    end
  end
  return L1_2
end

L6_1.getArrayMaxValue = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    if L6_2 == A1_2 then
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = false
  return L2_2
end

L6_1.arrayContainsValue = L7_1
return L0_1
