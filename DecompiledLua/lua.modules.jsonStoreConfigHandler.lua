local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1
L0_1 = {}
L1_1 = nil
L2_1 = require
L3_1 = "lua.modules.jsonParser"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)
L4_1 = 10
L5_1 = 47

function L6_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.getJsonFromFile
  L1_2 = "config/storeConfig.json"
  L0_2 = L0_2(L1_2)
  L1_1 = L0_2
  L0_2 = L1_1
  L0_2 = L0_2.gemFloor
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.gemFloor
    L4_1 = L0_2
  end
  L0_2 = L1_1
  L0_2 = L0_2.gemRatio
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.gemRatio
    L5_1 = L0_2
  end
end

L0_1.readFromFile = L6_1

function L6_1()
  local L0_2, L1_2
  L0_2 = L1_1
  if L0_2 == nil then
    L0_2 = true
    return L0_2
  end
  L0_2 = false
  return L0_2
end

L0_1.isFileCorrupt = L6_1

function L6_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.isFileCorrupt
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = print
    L1_2 = "WARNING: Reloading storeConfig File."
    L0_2(L1_2)
    L0_2 = L0_1
    L0_2 = L0_2.readFromFile
    L0_2()
  end
end

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L6_1
  L1_2()
  L1_2 = nil
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 then
    L2_2 = print
    L3_2 = "GetProductMap - item is nil"
    L2_2(L3_2)
    return
  end
  if A0_2 < 200 or 5100 < A0_2 and A0_2 < 5200 then
    L2_2 = L1_1
    L1_2 = L2_2.characters
  elseif A0_2 < 300 or 5200 < A0_2 and A0_2 < 5300 then
    L2_2 = L1_1
    L1_2 = L2_2.skins
  elseif A0_2 < 400 or 5300 < A0_2 and A0_2 < 5400 then
    L2_2 = L1_1
    L1_2 = L2_2.hats
  elseif A0_2 < 500 or 5400 < A0_2 and A0_2 < 5500 then
    L2_2 = L1_1
    L1_2 = L2_2.facewear
  elseif A0_2 < 600 or 5500 < A0_2 and A0_2 < 5600 then
    L2_2 = L1_1
    L1_2 = L2_2.necks
  elseif A0_2 < 700 or 5600 < A0_2 and A0_2 < 5700 then
    L2_2 = L1_1
    L1_2 = L2_2.trails
  elseif A0_2 < 800 or 5700 < A0_2 and A0_2 < 5800 then
    L2_2 = L1_1
    L1_2 = L2_2.feet
  elseif 1000 < A0_2 and A0_2 < 1100 then
    L2_2 = L1_1
    L1_2 = L2_2.boosts
  elseif 1200 < A0_2 and A0_2 < 1300 then
    L2_2 = L1_1
    L1_2 = L2_2.sawblade
  elseif 1300 < A0_2 and A0_2 < 1400 then
    L2_2 = L1_1
    L1_2 = L2_2.beartrap
  elseif 1400 < A0_2 and A0_2 < 1500 then
    L2_2 = L1_1
    L1_2 = L2_2.rocket
  elseif 1500 < A0_2 and A0_2 < 1600 then
    L2_2 = L1_1
    L1_2 = L2_2.shield
  elseif 1600 < A0_2 and A0_2 < 1700 then
    L2_2 = L1_1
    L1_2 = L2_2.balloon
  elseif 1700 < A0_2 and A0_2 < 1800 then
    L2_2 = L1_1
    L1_2 = L2_2.magnet
  elseif 1800 < A0_2 and A0_2 < 1900 then
    L2_2 = L1_1
    L1_2 = L2_2.gun
  elseif 1900 < A0_2 and A0_2 < 2000 then
    L2_2 = L1_1
    L1_2 = L2_2.speed
  elseif 2000 < A0_2 and A0_2 < 2100 then
    L2_2 = L1_1
    L1_2 = L2_2.punchbox
  elseif 2100 < A0_2 and A0_2 < 2200 then
    L2_2 = L1_1
    L1_2 = L2_2.backwear
  else
    L2_2 = print
    L3_2 = "ERROR: No hashmap for id"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    L2_2 = nil
    return L2_2
  end
  return L1_2
end

function L8_1(A0_2)
  local L1_2, L2_2
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if A0_2 < 200 or 5100 < A0_2 and A0_2 < 5200 then
    L1_2 = "avatars"
    return L1_2
  elseif A0_2 < 300 or 5200 < A0_2 and A0_2 < 5300 then
    L1_2 = "skins"
    return L1_2
  elseif A0_2 < 400 or 5300 < A0_2 and A0_2 < 5400 then
    L1_2 = "hat"
    return L1_2
  elseif A0_2 < 500 or 5400 < A0_2 and A0_2 < 5500 then
    L1_2 = "facewear"
    return L1_2
  elseif A0_2 < 600 or 5500 < A0_2 and A0_2 < 5600 then
    L1_2 = "neck"
    return L1_2
  elseif A0_2 < 700 or 5600 < A0_2 and A0_2 < 5700 then
    L1_2 = "trail"
    return L1_2
  elseif A0_2 < 800 or 5700 < A0_2 and A0_2 < 5800 then
    L1_2 = "shoes"
    return L1_2
  elseif 1000 < A0_2 and A0_2 < 1100 then
    L1_2 = "boosts"
    return L1_2
  elseif 1200 < A0_2 and A0_2 < 1300 then
    L1_2 = "sawblade"
    return L1_2
  elseif 1300 < A0_2 and A0_2 < 1400 then
    L1_2 = "beartrap"
    return L1_2
  elseif 1400 < A0_2 and A0_2 < 1500 then
    L1_2 = "rocket"
    return L1_2
  elseif 1500 < A0_2 and A0_2 < 1600 then
    L1_2 = "shield"
    return L1_2
  elseif 1600 < A0_2 and A0_2 < 1700 then
    L1_2 = "balloon"
    return L1_2
  elseif 1700 < A0_2 and A0_2 < 1800 then
    L1_2 = "magnet"
    return L1_2
  elseif 1800 < A0_2 and A0_2 < 1900 then
    L1_2 = "gun"
    return L1_2
  elseif 1900 < A0_2 and A0_2 < 2000 then
    L1_2 = "speed"
    return L1_2
  elseif 2000 < A0_2 and A0_2 < 2100 then
    L1_2 = "punchbox"
    return L1_2
  elseif 2100 < A0_2 and A0_2 < 2200 then
    L1_2 = "backwear"
    return L1_2
  else
    L1_2 = nil
    return L1_2
  end
end

L0_1.getItemCategory = L8_1

function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = L4_1
  L1_2 = A0_2 - L1_2
  L2_2 = L5_1
  L1_2 = L1_2 * L2_2
  if L1_2 < 1 then
    L2_2 = 1
    return L2_2
  end
  return L1_2
end

function L9_1(A0_2)
  local L1_2
  L1_2 = A0_2 * 7500
  return L1_2
end

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_3.price
    L3_3 = A1_3.price
    if not L2_3 then
      L4_3 = A0_3.gemPrice
      if L4_3 then
        L4_3 = L8_1
        L5_3 = A0_3.gemPrice
        L4_3 = L4_3(L5_3)
        L2_3 = L4_3
      end
    end
    if not L2_3 then
      L4_3 = A0_3.gemPrice
      if not L4_3 then
        L4_3 = A0_3.tier
        if L4_3 then
          L4_3 = L9_1
          L5_3 = A0_3.tier
          L4_3 = L4_3(L5_3)
          L2_3 = L4_3
        end
      end
    end
    if not L3_3 then
      L4_3 = A1_3.gemPrice
      if L4_3 then
        L4_3 = L8_1
        L5_3 = A1_3.gemPrice
        L4_3 = L4_3(L5_3)
        L3_3 = L4_3
      end
    end
    if not L3_3 then
      L4_3 = A1_3.gemPrice
      if not L4_3 then
        L4_3 = A1_3.tier
        if L4_3 then
          L4_3 = L9_1
          L5_3 = A1_3.tier
          L4_3 = L4_3(L5_3)
          L3_3 = L4_3
        end
      end
    end
    if L2_3 and L3_3 then
      L4_3 = L2_3 < L3_3
      return L4_3
    else
      L4_3 = false
      return L4_3
    end
  end
  
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  return A0_2
end

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 then
    L1_2 = L3_1
    L1_2 = L1_2.database
    L1_2 = L1_2.unlockedClanRewards
    if L1_2 then
      L1_2 = pairs
      L2_2 = L3_1
      L2_2 = L2_2.database
      L2_2 = L2_2.unlockedClanRewards
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L6_2 = tonumber
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        L7_2 = tonumber
        L8_2 = A0_2
        L7_2 = L7_2(L8_2)
        if L6_2 == L7_2 then
          L6_2 = true
          return L6_2
        end
      end
    end
  end
  L1_2 = false
  return L1_2
end

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 then
    L2_2 = A0_2.minBuild
    if L2_2 then
      L2_2 = tonumber
      L3_2 = A0_2.minBuild
      L2_2 = L2_2(L3_2)
      L3_2 = tonumber
      L4_2 = L3_1
      L4_2 = L4_2.config
      L4_2 = L4_2.localVersion
      L3_2 = L3_2(L4_2)
      if L2_2 > L3_2 then
        L2_2 = false
        return L2_2
      end
    end
    if A1_2 == "1003" then
      L2_2 = L3_1
      L2_2 = L2_2.database
      L2_2 = L2_2.getItems
      L2_2 = L2_2()
      L3_2 = L2_2 ~= nil
      L4_2 = not L3_2
      return L4_2
    end
    L2_2 = A0_2.dev
    if L2_2 then
      L2_2 = L3_1
      L2_2 = L2_2.database
      L2_2 = L2_2.getItems
      L2_2 = L2_2()
      if L2_2 then
        L3_2 = tostring
        L4_2 = A1_2
        L3_2 = L3_2(L4_2)
        L3_2 = L2_2[L3_2]
        if L3_2 then
          L3_2 = true
          return L3_2
      end
      else
        L3_2 = false
        return L3_2
      end
    else
      L2_2 = A0_2.tier
      if L2_2 then
        L2_2 = A0_2.price
        if not L2_2 then
          L2_2 = A0_2.gemPrice
          if not L2_2 then
            L2_2 = false
            return L2_2
        end
      end
      else
        L2_2 = A0_2.hidden
        if L2_2 then
          if A1_2 == "207" then
            L2_2 = L3_1
            L2_2 = L2_2.database
            L2_2 = L2_2.getItems
            L2_2 = L2_2()
            L3_2 = L2_2 ~= nil
            if L3_2 then
              L4_2 = true
              return L4_2
            end
          end
          L2_2 = false
          return L2_2
        else
          L2_2 = A0_2.clanReward
          if L2_2 then
            L2_2 = L0_1
            L2_2 = L2_2.ownsItem
            L3_2 = A1_2
            L2_2 = L2_2(L3_2)
            if not L2_2 then
              L2_2 = L11_1
              L3_2 = A1_2
              L2_2 = L2_2(L3_2)
            end
            return L2_2
          end
        end
      end
    end
  else
    L2_2 = false
    return L2_2
  end
  L2_2 = true
  return L2_2
end

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = system
  L1_2 = L1_2.getTimer
  L1_2 = L1_2()
  L1_2 = L1_2 / 1000
  if A0_2 then
    L2_2 = L3_1
    L2_2 = L2_2.database
    L2_2 = L2_2.salesItem
    if L2_2 then
      L2_2 = pairs
      L3_2 = L3_1
      L3_2 = L3_2.database
      L3_2 = L3_2.salesItem
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = type
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if L7_2 == "table" then
          L7_2 = tonumber
          L8_2 = L6_2.i
          L7_2 = L7_2(L8_2)
          L8_2 = tonumber
          L9_2 = A0_2.key
          L8_2 = L8_2(L9_2)
          if L7_2 == L8_2 then
            L7_2 = L6_2.y
            L7_2 = L7_2 - L1_2
            if 0 < L7_2 then
              L8_2 = L6_2._id
              A0_2.saleKey = L8_2
              L8_2 = L6_2.p
              A0_2.salePrice = L8_2
              L8_2 = L6_2.g
              A0_2.saleGem = L8_2
              L8_2 = L6_2.h
              A0_2.gemTotalPrice = L8_2
              A0_2.saleTime = L7_2
            else
              A0_2.saleKey = nil
              A0_2.salePrice = nil
              A0_2.saleGem = nil
              A0_2.gemTotalPrice = nil
              A0_2.saleTime = nil
            end
          end
        end
      end
    end
  end
end

function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = system
  L1_2 = L1_2.getTimer
  L1_2 = L1_2()
  L1_2 = L1_2 / 1000
  if A0_2 then
    L2_2 = L3_1
    L2_2 = L2_2.database
    L2_2 = L2_2.seasonalItem
    if L2_2 then
      L2_2 = pairs
      L3_2 = L3_1
      L3_2 = L3_2.database
      L3_2 = L3_2.seasonalItem
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = type
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if L7_2 == "table" then
          L7_2 = tonumber
          L8_2 = L6_2.i
          L7_2 = L7_2(L8_2)
          L8_2 = tonumber
          L9_2 = A0_2.key
          L8_2 = L8_2(L9_2)
          if L7_2 == L8_2 then
            L7_2 = L6_2.y
            L7_2 = L7_2 - L1_2
            if 0 < L7_2 then
              A0_2.seasonalActive = true
              A0_2.saleTime = L7_2
            else
              A0_2.seasonalActive = nil
            end
          end
        end
      end
    end
  end
end

function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 then
    L1_2 = L3_1
    L1_2 = L1_2.database
    L1_2 = L1_2.unlockedClanRewards
    if L1_2 then
      L1_2 = pairs
      L2_2 = L3_1
      L2_2 = L2_2.database
      L2_2 = L2_2.unlockedClanRewards
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L6_2 = tonumber
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        L7_2 = tonumber
        L8_2 = A0_2.key
        L7_2 = L7_2(L8_2)
        if L6_2 == L7_2 then
          A0_2.unlockedClanReward = true
        end
      end
    end
  end
end

function L16_1(A0_2, A1_2)
  local L2_2
  L2_2 = {}
  A0_2[1] = L2_2
  L2_2 = A0_2[1]
  L2_2.price = 0
  L2_2 = A0_2[1]
  L2_2.preOwned = true
  L2_2 = A0_2[1]
  L2_2.key = 0
  L2_2 = A0_2[1]
  L2_2.title = "none"
  if A1_2 then
    L2_2 = A0_2[1]
    L2_2.title = A1_2
  end
  L2_2 = A0_2[1]
  L2_2.plate = 1
end

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.price
  if L1_2 then
    L1_2 = L4_1
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = A0_2.price
    L4_2 = L5_1
    L3_2 = L3_2 / L4_2
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2 + L2_2
    A0_2.gemPrice = L1_2
    L1_2 = A0_2.gemPrice
    if 99 < L1_2 then
      L1_2 = math
      L1_2 = L1_2.floor
      L2_2 = A0_2.gemPrice
      L2_2 = L2_2 / 10
      L1_2 = L1_2(L2_2)
      A0_2.gemPrice = L1_2
      L1_2 = A0_2.gemPrice
      L1_2 = L1_2 * 10
      A0_2.gemPrice = L1_2
    end
  end
end

function L18_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = L12_1
  L5_2 = A2_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = #A0_2
    L4_2 = L4_2 + 1
    A0_2[L4_2] = A2_2
    L4_2 = #A0_2
    L4_2 = A0_2[L4_2]
    L4_2.key = A1_2
    L4_2 = #A0_2
    L4_2 = A0_2[L4_2]
    L4_2.imagePath = A3_2
    L4_2 = L17_1
    L5_2 = #A0_2
    L5_2 = A0_2[L5_2]
    L4_2(L5_2)
    L4_2 = L13_1
    L5_2 = #A0_2
    L5_2 = A0_2[L5_2]
    L4_2(L5_2)
    L4_2 = L14_1
    L5_2 = #A0_2
    L5_2 = A0_2[L5_2]
    L4_2(L5_2)
    L4_2 = L15_1
    L5_2 = #A0_2
    L5_2 = A0_2[L5_2]
    L4_2(L5_2)
  end
end

function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = L1_1
  L2_2 = L2_2.boosts
  if L2_2 then
    L2_2 = pairs
    L3_2 = L1_1
    L3_2 = L3_2.boosts
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L18_1
      L8_2 = L1_2
      L9_2 = L5_2
      L10_2 = L6_2
      L11_2 = "images/gui/market/items/boosts/"
      L12_2 = L5_2
      L13_2 = ".png"
      L11_2 = L11_2 .. L12_2 .. L13_2
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  end
  L2_2 = L10_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L1_2 = L2_2
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = #A0_2
    L6_2 = L6_2 + 1
    L7_2 = L1_2[L5_2]
    A0_2[L6_2] = L7_2
  end
end

L0_1.addBoostItem = L19_1

function L20_1()
  local L0_2, L1_2
  L0_2 = L6_1
  L0_2()
  L0_2 = L1_1
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.boosts
    if L0_2 then
      L0_2 = L1_1
      L0_2 = L0_2.boosts
      L0_2 = L0_2["1003"]
      if L0_2 then
        L1_2 = L0_2.contents
        if L1_2 then
          L1_2 = L0_2.contents
          return L1_2
      end
      else
        L1_2 = nil
        return L1_2
      end
    end
  end
  L0_2 = nil
  return L0_2
end

L0_1.getStarterPackContents = L20_1

function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L3_1
  L1_2 = L1_2.database
  L1_2 = L1_2.getItems
  L1_2 = L1_2()
  L2_2 = true
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 then
      L8_2 = tostring
      L9_2 = L7_2.key
      L8_2 = L8_2(L9_2)
      L8_2 = L1_2[L8_2]
      if L8_2 then
        L7_2.owned = true
      else
        L2_2 = false
      end
    end
  end
  return L2_2
end

function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L3_1
  L1_2 = L1_2.database
  L1_2 = L1_2.getItems
  L1_2 = L1_2()
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = tonumber
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L8_2 = tonumber
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      if L7_2 == L8_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end

L0_1.ownsItem = L21_1

function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2.items = L1_2
  L1_2 = pairs
  L2_2 = A0_2.itemsInBundle
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2.items
    L7_2 = L0_1
    L7_2 = L7_2.getItem
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L6_2[L4_2] = L7_2
    L6_2 = A0_2.items
    L6_2 = L6_2[L4_2]
    L6_2.key = L5_2
    L6_2 = L17_1
    L7_2 = A0_2.items
    L7_2 = L7_2[L4_2]
    L6_2(L7_2)
  end
end

function L22_1(A0_2)
  local L1_2
  if A0_2 == "avatars" then
    L1_2 = 1
    return L1_2
  elseif A0_2 == "skins" then
    L1_2 = 2
    return L1_2
  elseif A0_2 == "hat" then
    L1_2 = 3
    return L1_2
  elseif A0_2 == "facewear" then
    L1_2 = 4
    return L1_2
  elseif A0_2 == "neck" then
    L1_2 = 5
    return L1_2
  elseif A0_2 == "trail" then
    L1_2 = 6
    return L1_2
  elseif A0_2 == "shoes" then
    L1_2 = 7
    return L1_2
  elseif A0_2 == "sawblade" then
    L1_2 = 8
    return L1_2
  elseif A0_2 == "beartrap" then
    L1_2 = 9
    return L1_2
  elseif A0_2 == "rocket" then
    L1_2 = 10
    return L1_2
  elseif A0_2 == "shield" then
    L1_2 = 11
    return L1_2
  elseif A0_2 == "balloon" then
    L1_2 = 12
    return L1_2
  elseif A0_2 == "magnet" then
    L1_2 = 13
    return L1_2
  elseif A0_2 == "gun" then
    L1_2 = 14
    return L1_2
  elseif A0_2 == "speed" then
    L1_2 = 15
    return L1_2
  elseif A0_2 == "punchbox" then
    L1_2 = 16
    return L1_2
  end
end

L0_1.getItemTypeId = L22_1

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = L6_1
  L1_2()
  L1_2 = system
  L1_2 = L1_2.getTimer
  L1_2 = L1_2()
  L1_2 = L1_2 / 1000
  L2_2 = {}
  if A0_2 then
    L2_2 = A0_2
  end
  L3_2 = L3_1
  L3_2 = L3_2.database
  L3_2 = L3_2.salesItem
  if L3_2 then
    L3_2 = pairs
    L4_2 = L3_1
    L4_2 = L4_2.database
    L4_2 = L4_2.salesItem
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = nil
      L9_2 = L7_2.l
      if L9_2 then
        L9_2 = {}
        L8_2 = L9_2
        L8_2.plate = 1
        L9_2 = L7_2.n
        L8_2.title = L9_2
        L8_2.bundle = true
        L9_2 = L7_2.l
        L8_2.itemsInBundle = L9_2
        L9_2 = L7_2.b
        L8_2.price = L9_2
        L9_2 = L7_2.g
        L8_2.gemPrice = L9_2
        L9_2 = L7_2.f
        L8_2.tier = L9_2
      else
        L9_2 = L0_1
        L9_2 = L9_2.getItem
        L10_2 = L7_2.i
        L9_2 = L9_2(L10_2)
        L8_2 = L9_2
      end
      if not L8_2 then
        break
      end
      L9_2 = L7_2.i
      L8_2.key = L9_2
      L9_2 = L7_2.y
      L9_2 = L9_2 - L1_2
      L10_2 = L0_1
      L10_2 = L10_2.getItemCategory
      L11_2 = L7_2.i
      L10_2 = L10_2(L11_2)
      if L10_2 == "boosts" then
      elseif L8_2 and 0 < L9_2 then
        L10_2 = L7_2._id
        L8_2.saleKey = L10_2
        L10_2 = L7_2.p
        L8_2.salePrice = L10_2
        L10_2 = L7_2.g
        L8_2.saleGem = L10_2
        L10_2 = L7_2.t
        L8_2.saleTier = L10_2
        L8_2.saleTime = L9_2
        L10_2 = L20_1
        L11_2 = {}
        L12_2 = L8_2
        L11_2[1] = L12_2
        L10_2 = L10_2(L11_2)
        if not L10_2 then
          L10_2 = L12_1
          L11_2 = L8_2
          L12_2 = L6_2
          L10_2 = L10_2(L11_2, L12_2)
          if L10_2 then
            L10_2 = L8_2.bundle
            if not L10_2 then
              L10_2 = L0_1
              L10_2 = L10_2.getItemCategory
              L11_2 = L7_2.i
              L10_2 = L10_2(L11_2)
              L11_2 = "images/gui/market/items/"
              L12_2 = L10_2
              L13_2 = "/"
              L14_2 = L7_2.i
              L15_2 = ".png"
              L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
              L8_2.imagePath = L11_2
              L11_2 = L22_1
              L12_2 = L10_2
              L11_2 = L11_2(L12_2)
              L8_2.itemType = L11_2
              L11_2 = L17_1
              L12_2 = L8_2
              L11_2(L12_2)
              L11_2 = #L2_2
              L11_2 = L11_2 + 1
              L2_2[L11_2] = L8_2
          end
        end
        else
          L10_2 = L8_2.bundle
          if L10_2 then
            L10_2 = true
            L11_2 = false
            L12_2 = L21_1
            L13_2 = L8_2
            L12_2(L13_2)
            L12_2 = pairs
            L13_2 = L8_2.items
            L12_2, L13_2, L14_2 = L12_2(L13_2)
            for L15_2, L16_2 in L12_2, L13_2, L14_2 do
              L17_2 = L12_1
              L18_2 = L16_2
              L19_2 = L16_2.key
              L17_2 = L17_2(L18_2, L19_2)
              if not L17_2 then
                L10_2 = false
              end
              L17_2 = L0_1
              L17_2 = L17_2.getItemCategory
              L18_2 = L16_2.key
              L17_2 = L17_2(L18_2)
              L18_2 = L22_1
              L19_2 = L17_2
              L18_2 = L18_2(L19_2)
              L16_2.itemType = L18_2
            end
            L12_2 = nil
            L13_2 = L0_1
            L13_2 = L13_2.getTotalGemPrice
            L14_2 = L8_2.items
            L13_2, L14_2 = L13_2(L14_2)
            L12_2 = L14_2
            L8_2.gemTotalPrice = L13_2
            L8_2.playerValue = L12_2
            L13_2 = L8_2.gemTotalPrice
            L8_2.gemPrice = L13_2
            L13_2 = L20_1
            L14_2 = L8_2.items
            L13_2 = L13_2(L14_2)
            L11_2 = L13_2
            L13_2 = L8_2.saleGem
            L13_2 = L12_2 > L13_2
            if L10_2 and not L11_2 and L13_2 then
              L8_2.imagePath = "images/gui/market/bundleIcon.png"
              L14_2 = #L2_2
              L14_2 = L14_2 + 1
              L2_2[L14_2] = L8_2
            end
          end
        end
      end
    end
  end
  return L2_2
end

L0_1.getSaleItems = L23_1

function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  
  function L1_2(A0_3)
    local L1_3, L2_3
    L1_3 = L12_1
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = A0_3.price
      if L1_3 == nil then
        L1_3 = A0_3.tier
        if L1_3 then
          L1_3 = true
          return L1_3
        end
      end
    end
    L1_3 = false
    return L1_3
  end
  
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.characters
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = #L0_2
      L7_2 = L7_2 + 1
      L0_2[L7_2] = L6_2
      L7_2 = #L0_2
      L7_2 = L0_2[L7_2]
      L7_2.key = L5_2
    end
  end
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.skins
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = #L0_2
      L7_2 = L7_2 + 1
      L0_2[L7_2] = L6_2
      L7_2 = #L0_2
      L7_2 = L0_2[L7_2]
      L7_2.key = L5_2
    end
  end
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.hats
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = #L0_2
      L7_2 = L7_2 + 1
      L0_2[L7_2] = L6_2
      L7_2 = #L0_2
      L7_2 = L0_2[L7_2]
      L7_2.key = L5_2
    end
  end
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.facewear
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = #L0_2
      L7_2 = L7_2 + 1
      L0_2[L7_2] = L6_2
      L7_2 = #L0_2
      L7_2 = L0_2[L7_2]
      L7_2.key = L5_2
    end
  end
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.necks
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = #L0_2
      L7_2 = L7_2 + 1
      L0_2[L7_2] = L6_2
      L7_2 = #L0_2
      L7_2 = L0_2[L7_2]
      L7_2.key = L5_2
    end
  end
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.trails
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = #L0_2
      L7_2 = L7_2 + 1
      L0_2[L7_2] = L6_2
      L7_2 = #L0_2
      L7_2 = L0_2[L7_2]
      L7_2.key = L5_2
    end
  end
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.feet
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = #L0_2
      L7_2 = L7_2 + 1
      L0_2[L7_2] = L6_2
      L7_2 = #L0_2
      L7_2 = L0_2[L7_2]
      L7_2.key = L5_2
    end
  end
  L2_2 = L1_1
  L2_2 = L2_2.boosts
  if L2_2 then
    L2_2 = pairs
    L3_2 = L1_1
    L3_2 = L3_2.boosts
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L1_2
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = #L0_2
        L7_2 = L7_2 + 1
        L0_2[L7_2] = L6_2
        L7_2 = #L0_2
        L7_2 = L0_2[L7_2]
        L7_2.key = L5_2
      end
    end
  end
  return L0_2
end

L0_1.getPreloadProductsForIAP = L23_1

function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L6_1
  L0_2()
  L0_2 = system
  L0_2 = L0_2.getTimer
  L0_2 = L0_2()
  L0_2 = L0_2 / 1000
  L1_2 = {}
  L2_2 = L16_1
  L3_2 = L1_2
  L4_2 = "selected"
  L2_2(L3_2, L4_2)
  L2_2 = L0_1
  L2_2 = L2_2.getSaleItems
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = L10_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L1_2 = L2_2
  L2_2 = L19_1
  L3_2 = L1_2
  L2_2(L3_2)
  return L1_2
end

L0_1.getAllSaleItemSortedOnPrice = L23_1

function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.characters
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L18_1
    L7_2 = L0_2
    L8_2 = L4_2
    L9_2 = L5_2
    L10_2 = "images/gui/market/items/avatars/"
    L11_2 = L4_2
    L12_2 = ".png"
    L10_2 = L10_2 .. L11_2 .. L12_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L1_2 = L10_1
  L2_2 = L0_2
  return L1_2(L2_2)
end

L0_1.getAllCharactersSortedOnPrice = L23_1

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.skins
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2.characterId
    L7_2 = L7_2(L8_2)
    L8_2 = tonumber
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      L7_2 = L18_1
      L8_2 = L1_2
      L9_2 = L5_2
      L10_2 = L6_2
      L11_2 = "images/gui/market/items/skins/"
      L12_2 = L5_2
      L13_2 = ".png"
      L11_2 = L11_2 .. L12_2 .. L13_2
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  end
  L2_2 = L10_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L1_2 = L2_2
  L2_2 = L3_1
  L2_2 = L2_2.tableUtils
  L2_2 = L2_2.deepCopy
  L3_2 = L0_1
  L3_2 = L3_2.getItem
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L2_2.key = A0_2
  L3_2 = "images/gui/market/items/avatars/"
  L4_2 = A0_2
  L5_2 = ".png"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2.imagePath = L3_2
  L2_2.skinId = 0
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = 1
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  return L1_2
end

L0_1.getAllSkinsSortedOnPrice = L23_1

function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.skins
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L18_1
    L7_2 = L0_2
    L8_2 = L4_2
    L9_2 = L5_2
    L10_2 = "images/gui/market/items/skins/"
    L11_2 = L4_2
    L12_2 = ".png"
    L10_2 = L10_2 .. L11_2 .. L12_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L1_2 = L10_1
  L2_2 = L0_2
  return L1_2(L2_2)
end

L0_1.getAllSkins = L23_1

function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = L16_1
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.hats
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L18_1
    L7_2 = L0_2
    L8_2 = L4_2
    L9_2 = L5_2
    L10_2 = "images/gui/market/items/hat/"
    L11_2 = L4_2
    L12_2 = ".png"
    L10_2 = L10_2 .. L11_2 .. L12_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L1_2 = L10_1
  L2_2 = L0_2
  return L1_2(L2_2)
end

L0_1.getAllHatsSortedOnPrice = L23_1

function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = L16_1
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.facewear
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L18_1
    L7_2 = L0_2
    L8_2 = L4_2
    L9_2 = L5_2
    L10_2 = "images/gui/market/items/facewear/"
    L11_2 = L4_2
    L12_2 = ".png"
    L10_2 = L10_2 .. L11_2 .. L12_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L1_2 = L10_1
  L2_2 = L0_2
  return L1_2(L2_2)
end

L0_1.getAllFacewearSortedOnPrice = L23_1

function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = L16_1
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = L1_1
  L1_2 = L1_2.backwear
  if not L1_2 then
    L1_2 = {}
    L2_2 = {}
    L2_2.title = "Nothing here yet."
    L2_2.spinningPrize = true
    L1_2[1] = L2_2
    return L1_2
  end
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.backwear
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L18_1
    L7_2 = L0_2
    L8_2 = L4_2
    L9_2 = L5_2
    L10_2 = "images/gui/market/items/backwear/"
    L11_2 = L4_2
    L12_2 = ".png"
    L10_2 = L10_2 .. L11_2 .. L12_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L1_2 = L10_1
  L2_2 = L0_2
  return L1_2(L2_2)
end

L0_1.getAllBackwearSortedOnPrice = L23_1

function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = L16_1
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.necks
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L18_1
    L7_2 = L0_2
    L8_2 = L4_2
    L9_2 = L5_2
    L10_2 = "images/gui/market/items/neck/"
    L11_2 = L4_2
    L12_2 = ".png"
    L10_2 = L10_2 .. L11_2 .. L12_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L1_2 = L10_1
  L2_2 = L0_2
  return L1_2(L2_2)
end

L0_1.getAllNecksSortedOnPrice = L23_1

function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = L16_1
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.trails
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L18_1
    L7_2 = L0_2
    L8_2 = L4_2
    L9_2 = L5_2
    L10_2 = "images/gui/market/items/trail/"
    L11_2 = L4_2
    L12_2 = ".png"
    L10_2 = L10_2 .. L11_2 .. L12_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L1_2 = L10_1
  L2_2 = L0_2
  return L1_2(L2_2)
end

L0_1.getAllTrailsSortedOnPrice = L23_1

function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = L16_1
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.feet
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L18_1
    L7_2 = L0_2
    L8_2 = L4_2
    L9_2 = L5_2
    L10_2 = "images/gui/market/items/shoes/"
    L11_2 = L4_2
    L12_2 = ".png"
    L10_2 = L10_2 .. L11_2 .. L12_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L1_2 = L10_1
  L2_2 = L0_2
  return L1_2(L2_2)
end

L0_1.getAllFeetSortedOnPrice = L23_1

function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = L1_1
  L1_2 = L1_2.sawblade
  if L1_2 then
    L1_2 = pairs
    L2_2 = L1_1
    L2_2 = L2_2.sawblade
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L18_1
      L7_2 = L0_2
      L8_2 = L4_2
      L9_2 = L5_2
      L10_2 = "images/gui/market/items/sawblade/"
      L11_2 = L4_2
      L12_2 = ".png"
      L10_2 = L10_2 .. L11_2 .. L12_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L1_2 = L10_1
    L2_2 = L0_2
    return L1_2(L2_2)
  end
  return L0_2
end

function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = L1_1
  L1_2 = L1_2.beartrap
  if L1_2 then
    L1_2 = pairs
    L2_2 = L1_1
    L2_2 = L2_2.beartrap
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L18_1
      L7_2 = L0_2
      L8_2 = L4_2
      L9_2 = L5_2
      L10_2 = "images/gui/market/items/beartrap/"
      L11_2 = L4_2
      L12_2 = ".png"
      L10_2 = L10_2 .. L11_2 .. L12_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L1_2 = L10_1
    L2_2 = L0_2
    return L1_2(L2_2)
  end
  return L0_2
end

function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = L1_1
  L1_2 = L1_2.rocket
  if L1_2 then
    L1_2 = pairs
    L2_2 = L1_1
    L2_2 = L2_2.rocket
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L18_1
      L7_2 = L0_2
      L8_2 = L4_2
      L9_2 = L5_2
      L10_2 = "images/gui/market/items/rocket/"
      L11_2 = L4_2
      L12_2 = ".png"
      L10_2 = L10_2 .. L11_2 .. L12_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L1_2 = L10_1
    L2_2 = L0_2
    return L1_2(L2_2)
  end
  return L0_2
end

function L26_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = L1_1
  L1_2 = L1_2.shield
  if L1_2 then
    L1_2 = pairs
    L2_2 = L1_1
    L2_2 = L2_2.shield
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L18_1
      L7_2 = L0_2
      L8_2 = L4_2
      L9_2 = L5_2
      L10_2 = "images/gui/market/items/shield/"
      L11_2 = L4_2
      L12_2 = ".png"
      L10_2 = L10_2 .. L11_2 .. L12_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L1_2 = L10_1
    L2_2 = L0_2
    return L1_2(L2_2)
  end
  return L0_2
end

function L27_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = L1_1
  L1_2 = L1_2.balloon
  if L1_2 then
    L1_2 = pairs
    L2_2 = L1_1
    L2_2 = L2_2.balloon
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L18_1
      L7_2 = L0_2
      L8_2 = L4_2
      L9_2 = L5_2
      L10_2 = "images/gui/market/items/balloon/"
      L11_2 = L4_2
      L12_2 = ".png"
      L10_2 = L10_2 .. L11_2 .. L12_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L1_2 = L10_1
    L2_2 = L0_2
    return L1_2(L2_2)
  end
  return L0_2
end

function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = L1_1
  L1_2 = L1_2.magnet
  if L1_2 then
    L1_2 = pairs
    L2_2 = L1_1
    L2_2 = L2_2.magnet
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L18_1
      L7_2 = L0_2
      L8_2 = L4_2
      L9_2 = L5_2
      L10_2 = "images/gui/market/items/magnet/"
      L11_2 = L4_2
      L12_2 = ".png"
      L10_2 = L10_2 .. L11_2 .. L12_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L1_2 = L10_1
    L2_2 = L0_2
    return L1_2(L2_2)
  end
  return L0_2
end

function L29_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = L1_1
  L1_2 = L1_2.gun
  if L1_2 then
    L1_2 = pairs
    L2_2 = L1_1
    L2_2 = L2_2.gun
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L18_1
      L7_2 = L0_2
      L8_2 = L4_2
      L9_2 = L5_2
      L10_2 = "images/gui/market/items/gun/"
      L11_2 = L4_2
      L12_2 = ".png"
      L10_2 = L10_2 .. L11_2 .. L12_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L1_2 = L10_1
    L2_2 = L0_2
    return L1_2(L2_2)
  end
  return L0_2
end

function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = L1_1
  L1_2 = L1_2.speed
  if L1_2 then
    L1_2 = pairs
    L2_2 = L1_1
    L2_2 = L2_2.speed
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L18_1
      L7_2 = L0_2
      L8_2 = L4_2
      L9_2 = L5_2
      L10_2 = "images/gui/market/items/speed/"
      L11_2 = L4_2
      L12_2 = ".png"
      L10_2 = L10_2 .. L11_2 .. L12_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L1_2 = L10_1
    L2_2 = L0_2
    return L1_2(L2_2)
  end
  return L0_2
end

function L31_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = L1_1
  L1_2 = L1_2.punchbox
  if L1_2 then
    L1_2 = pairs
    L2_2 = L1_1
    L2_2 = L2_2.punchbox
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L18_1
      L7_2 = L0_2
      L8_2 = L4_2
      L9_2 = L5_2
      L10_2 = "images/gui/market/items/punchbox/"
      L11_2 = L4_2
      L12_2 = ".png"
      L10_2 = L10_2 .. L11_2 .. L12_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L1_2 = L10_1
    L2_2 = L0_2
    return L1_2(L2_2)
  end
  return L0_2
end

function L32_1()
  local L0_2, L1_2, L2_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = L23_1
  L2_2 = L2_2()
  L0_2[L1_2] = L2_2
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = L25_1
  L2_2 = L2_2()
  L0_2[L1_2] = L2_2
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = L27_1
  L2_2 = L2_2()
  L0_2[L1_2] = L2_2
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = L29_1
  L2_2 = L2_2()
  L0_2[L1_2] = L2_2
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = L30_1
  L2_2 = L2_2()
  L0_2[L1_2] = L2_2
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = L26_1
  L2_2 = L2_2()
  L0_2[L1_2] = L2_2
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = L28_1
  L2_2 = L2_2()
  L0_2[L1_2] = L2_2
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = L24_1
  L2_2 = L2_2()
  L0_2[L1_2] = L2_2
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = L31_1
  L2_2 = L2_2()
  L0_2[L1_2] = L2_2
  return L0_2
end

L0_1.getAllPowerupsSortedOnPrice = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L7_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  if L1_2 then
    L3_2 = pairs
    L4_2 = L1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = "images/gui/market/items/"
      L9_2 = L0_1
      L9_2 = L9_2.getItemCategory
      L10_2 = A0_2
      L9_2 = L9_2(L10_2)
      L10_2 = "/"
      L11_2 = L6_2
      L12_2 = ".png"
      L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
      L9_2 = L18_1
      L10_2 = L2_2
      L11_2 = L6_2
      L12_2 = L7_2
      L13_2 = L8_2
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
    L3_2 = L10_1
    L4_2 = L2_2
    return L3_2(L4_2)
  end
  return L2_2
end

L0_1.getAllPowerupsOfTypeSortedOnPrice = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L23_1
  L1_2 = L1_2()
  if A0_2 then
    L2_2 = 1
    L3_2 = #L1_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L1_2[L5_2]
      L6_2 = L6_2.set
      if L6_2 == A0_2 then
        L6_2 = L1_2[L5_2]
        L6_2 = L6_2.imagePath
        return L6_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end

L0_1.getSetIcon = L32_1

function L32_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L6_1
  L0_2()
  L0_2 = 1
  L1_2 = L1_1
  L1_2 = L1_2.speed
  if L1_2 then
    L1_2 = pairs
    L2_2 = L1_1
    L2_2 = L2_2.speed
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L5_2.minBuild
      if L6_2 then
        L6_2 = tonumber
        L7_2 = L5_2.minBuild
        L6_2 = L6_2(L7_2)
        L7_2 = tonumber
        L8_2 = L3_1
        L8_2 = L8_2.config
        L8_2 = L8_2.localVersion
        L7_2 = L7_2(L8_2)
        if L6_2 <= L7_2 then
          L6_2 = L5_2.set
          if L6_2 then
            L6_2 = L5_2.set
            if L0_2 < L6_2 then
              L0_2 = L5_2.set
            end
          end
        end
      end
    end
  end
  return L0_2
end

L0_1.getNumberOfPuSets = L32_1

function L32_1()
  local L0_2, L1_2
  L0_2 = L6_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.hats
  return L0_2
end

L0_1.getAllHats = L32_1

function L32_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = L0_1
  L0_2 = L0_2.getAllCharactersSortedOnPrice
  L0_2 = L0_2()
  L1_2 = L0_1
  L1_2 = L1_2.getAllSkins
  L1_2 = L1_2()
  L2_2 = {}
  L3_2 = {}
  L4_2 = 1
  L5_2 = #L0_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L0_2[L7_2]
    L8_2 = L8_2.minBuild
    if L8_2 then
      L8_2 = L0_2[L7_2]
      L8_2 = L8_2.minBuild
      L9_2 = L3_1
      L9_2 = L9_2.config
      L9_2 = L9_2.patchInfo
      L9_2 = L9_2[1]
      L9_2 = L9_2.i
      if L8_2 == L9_2 then
        L8_2 = #L2_2
        L8_2 = L8_2 + 1
        L9_2 = L0_2[L7_2]
        L2_2[L8_2] = L9_2
      end
    end
  end
  L4_2 = 1
  L5_2 = #L1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_2[L7_2]
    L8_2 = L8_2.minBuild
    if L8_2 then
      L8_2 = L1_2[L7_2]
      L8_2 = L8_2.minBuild
      L9_2 = L3_1
      L9_2 = L9_2.config
      L9_2 = L9_2.patchInfo
      L9_2 = L9_2[1]
      L9_2 = L9_2.i
      if L8_2 == L9_2 then
        L8_2 = L2_2[1]
        if L8_2 then
          L8_2 = tonumber
          L9_2 = L2_2[1]
          L9_2 = L9_2.key
          L8_2 = L8_2(L9_2)
          L9_2 = tonumber
          L10_2 = L1_2[L7_2]
          L10_2 = L10_2.characterId
          L9_2 = L9_2(L10_2)
          if L8_2 == L9_2 then
            L8_2 = #L2_2
            L8_2 = L8_2 + 1
            L9_2 = L1_2[L7_2]
            L2_2[L8_2] = L9_2
        end
        else
          L8_2 = #L3_2
          L8_2 = L8_2 + 1
          L9_2 = L1_2[L7_2]
          L3_2[L8_2] = L9_2
        end
      end
    end
  end
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = #L2_2
    L8_2 = L8_2 + 1
    L9_2 = L3_2[L7_2]
    L2_2[L8_2] = L9_2
  end
  return L2_2
end

L0_1.getItemsForPatchPreview = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L6_1
  L1_2()
  L1_2 = L7_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = pairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = tonumber
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L8_2 = tonumber
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      if L7_2 == L8_2 and L6_2 then
        return L6_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end

L0_1.getItem = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = L0_1
  L2_2 = L2_2.getItem
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L18_1
  L4_2 = L1_2
  L5_2 = A0_2
  L6_2 = L2_2
  L7_2 = "images/gui/market/items/"
  L8_2 = L0_1
  L8_2 = L8_2.getItemCategory
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L8_2 = ""
  end
  L9_2 = "/"
  L10_2 = A0_2
  L11_2 = ".png"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L1_2[1]
  return L3_2
end

L0_1.getMarketItem = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L1_2 = L1_2.getItem
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.original
  if L2_2 then
    L2_2 = false
    return L2_2
  else
    L2_2 = L1_2.minBuild
    L3_2 = L3_1
    L3_2 = L3_2.config
    L3_2 = L3_2.localVersion
    if L2_2 > L3_2 then
      L2_2 = false
      return L2_2
    end
  end
  L2_2 = true
  return L2_2
end

L0_1.haveCustomPUImage = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = L0_1
    L1_2 = L1_2.getItem
    L2_2 = tonumber
    L3_2 = A0_2
    L2_2, L3_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L2_2 = L1_2.minBuild
      if L2_2 then
        L2_2 = L1_2.minBuild
        L3_2 = L3_1
        L3_2 = L3_2.config
        L3_2 = L3_2.localVersion
        if L2_2 <= L3_2 then
          L2_2 = true
          return L2_2
        end
      else
        L2_2 = true
        return L2_2
      end
    end
  end
  L1_2 = false
  return L1_2
end

L0_1.canDrawItem = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.a
  L2_2 = A0_2.b
  if 0 < L2_2 then
    L3_2 = L0_1
    L3_2 = L3_2.getItem
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = L3_2.plate
      return L4_2
    end
  else
    L3_2 = L0_1
    L3_2 = L3_2.getItem
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = L3_2.plate
      return L4_2
    end
  end
  L3_2 = 1
  return L3_2
end

L0_1.getPlateId = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L6_1
  L1_2()
  L1_2 = L3_1
  L1_2 = L1_2.database
  L1_2 = L1_2.salesItem
  if L1_2 then
    L1_2 = pairs
    L2_2 = L3_1
    L2_2 = L2_2.database
    L2_2 = L2_2.salesItem
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = type
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 == "table" then
        L6_2 = tonumber
        L7_2 = L5_2.i
        L6_2 = L6_2(L7_2)
        L7_2 = tonumber
        L8_2 = A0_2
        L7_2 = L7_2(L8_2)
        if L6_2 == L7_2 then
          L6_2 = L5_2.p
          if L6_2 then
            L6_2 = L5_2.p
            return L6_2
          end
        end
      end
    end
  end
  L1_2 = L0_1
  L1_2 = L1_2.getItem
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.price
    if L2_2 then
      L2_2 = L1_2.price
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end

L0_1.getCoinPrice = L32_1

function L32_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  
  function L0_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.tier
    L3_3 = A1_3.tier
    if L2_3 and L3_3 then
      L4_3 = L2_3 < L3_3
      return L4_3
    else
      L4_3 = false
      return L4_3
    end
  end
  
  L1_2 = {}
  L2_2 = L1_1
  L2_2 = L2_2.gems
  if L2_2 then
    L2_2 = pairs
    L3_2 = L1_1
    L3_2 = L3_2.gems
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = #L1_2
      L7_2 = L7_2 + 1
      L1_2[L7_2] = L6_2
      L7_2 = #L1_2
      L7_2 = L1_2[L7_2]
      L7_2.key = L5_2
    end
    L2_2 = table
    L2_2 = L2_2.sort
    L3_2 = L1_2
    L4_2 = L0_2
    L2_2(L3_2, L4_2)
  end
  return L1_2
end

L0_1.getGemPrices = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L6_1
  L1_2()
  L1_2 = L3_1
  L1_2 = L1_2.database
  L1_2 = L1_2.salesItem
  if L1_2 then
    L1_2 = pairs
    L2_2 = L3_1
    L2_2 = L2_2.database
    L2_2 = L2_2.salesItem
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = type
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 == "table" then
        L6_2 = tonumber
        L7_2 = L5_2.i
        L6_2 = L6_2(L7_2)
        L7_2 = tonumber
        L8_2 = A0_2
        L7_2 = L7_2(L8_2)
        if L6_2 == L7_2 then
          L6_2 = L5_2.g
          if L6_2 then
            L6_2 = L5_2.g
            return L6_2
          end
        end
      end
    end
  end
  L1_2 = L0_1
  L1_2 = L1_2.getItem
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.gemPrice
    if L2_2 then
      L2_2 = L1_2.gemPrice
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end

L0_1.getGemPrice = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = 1
  L4_2 = #A0_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L0_1
    L7_2 = L7_2.getGemPrice
    L8_2 = A0_2[L6_2]
    L8_2 = L8_2.key
    L7_2 = L7_2(L8_2)
    L1_2 = L1_2 + L7_2
    L7_2 = A0_2[L6_2]
    L7_2 = L7_2.owned
    if not L7_2 then
      L7_2 = L0_1
      L7_2 = L7_2.getGemPrice
      L8_2 = A0_2[L6_2]
      L8_2 = L8_2.key
      L7_2 = L7_2(L8_2)
      L2_2 = L2_2 + L7_2
    end
  end
  L3_2 = L1_2
  L4_2 = L2_2
  return L3_2, L4_2
end

L0_1.getTotalGemPrice = L32_1

function L32_1(A0_2)
  local L1_2, L2_2
  L1_2 = L6_1
  L1_2()
  L1_2 = L0_1
  L1_2 = L1_2.getItem
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.tier
    if L2_2 then
      L2_2 = L1_2.tier
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end

L0_1.getTier = L32_1

function L32_1(A0_2)
  local L1_2
  L1_2 = L6_1
  L1_2()
  L1_2 = L1_1
  if L1_2 then
    L1_2 = L1_1
    L1_2 = L1_2.powerUpOneTimeUpgrade
    if L1_2 then
      if A0_2 and A0_2 == 1 then
        L1_2 = L1_1
        L1_2 = L1_2.powerUpOneTimeUpgrade
        L1_2 = L1_2.price
        return L1_2
      end
      L1_2 = L1_1
      L1_2 = L1_2.powerUpOneTimeUpgrade
      L1_2 = L1_2.gemPrice
      return L1_2
    end
  end
  L1_2 = 1
  return L1_2
end

L0_1.getPowerUpTryCost = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L6_1
  L1_2()
  L1_2 = L0_1
  L1_2 = L1_2.getItem
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = L1_2.board
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end

L0_1.isBoard = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 then
    L1_2 = #A0_2
    if L1_2 == 9 then
      L1_2 = nil
      L2_2 = 0
      L3_2 = 1
      L4_2 = #A0_2
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = L0_1
        L7_2 = L7_2.getItem
        L8_2 = A0_2[L6_2]
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L8_2 = L7_2.set
          if L8_2 then
            if not L1_2 then
              L1_2 = L8_2
              L2_2 = L2_2 + 1
            elseif L1_2 == L8_2 then
              L2_2 = L2_2 + 1
            end
          end
        end
      end
      if L2_2 == 9 then
        return L1_2
      end
    end
  end
  L1_2 = false
  return L1_2
end

L0_1.isThisAPowerupSet = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L6_1
  L1_2()
  if not A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L0_1
  L1_2 = L1_2.getItemCategory
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = L1_1
    L2_2 = L2_2[L1_2]
    L3_2 = A0_2
    L4_2 = ""
    L3_2 = L3_2 .. L4_2
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L2_2 = L1_1
      L2_2 = L2_2[L1_2]
      L3_2 = A0_2
      L4_2 = ""
      L3_2 = L3_2 .. L4_2
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.hasHitImage
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end

L0_1.hasHitImage = L32_1

function L32_1()
  local L0_2, L1_2
  L0_2 = L6_1
  L0_2()
  L0_2 = L1_1
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.name
    if L0_2 then
      L0_2 = L1_1
      L0_2 = L0_2.name
      L0_2 = L0_2.gemPrice
      return L0_2
    end
  end
  L0_2 = 50
  return L0_2
end

L0_1.getUsernameChangePrice = L32_1

function L32_1()
  local L0_2, L1_2
  L0_2 = L6_1
  L0_2()
  L0_2 = L1_1
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.createClan
    if L0_2 then
      L0_2 = L1_1
      L0_2 = L0_2.createClan
      L0_2 = L0_2.price
      return L0_2
    end
  end
  L0_2 = 5000
  return L0_2
end

L0_1.getCreateClanPrice = L32_1

function L32_1()
  local L0_2, L1_2
  L0_2 = L6_1
  L0_2()
  L0_2 = L1_1
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.changeClanEmblem
    if L0_2 then
      L0_2 = L1_1
      L0_2 = L0_2.changeClanEmblem
      L0_2 = L0_2.gemPrice
      return L0_2
    end
  end
  L0_2 = 500
  return L0_2
end

L0_1.getChangeClanEmblemPrice = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L6_1
  L1_2()
  if A0_2 then
    L1_2 = L0_1
    L1_2 = L1_2.getItem
    L2_2 = tonumber
    L3_2 = A0_2
    L2_2, L3_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L2_2 = L1_2.runType
      if L2_2 then
        L2_2 = L1_2.runType
        return L2_2
      end
    end
  end
  L1_2 = 1
  return L1_2
end

L0_1.getRunningType = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L6_1
  L1_2()
  L1_2 = L3_1
  L1_2 = L1_2.database
  L1_2 = L1_2.getMarketItemId
  L1_2 = L1_2()
  if A0_2 then
    L2_2 = L7_1
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = pairs
      L4_2 = L2_2
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        if L7_2 then
          L8_2 = L7_2.minBuild
          if L8_2 then
            L8_2 = L7_2.minBuild
            if L1_2 < L8_2 then
              L8_2 = L7_2.minBuild
              L9_2 = L3_1
              L9_2 = L9_2.config
              L9_2 = L9_2.localVersion
              if L8_2 < L9_2 then
                L8_2 = print
                L9_2 = "found new item in "
                L10_2 = A0_2
                L8_2(L9_2, L10_2)
                L8_2 = true
                return L8_2
              end
            end
          end
        end
      end
    end
  end
  L2_2 = false
  return L2_2
end

L0_1.isThereNewItems = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L6_1
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.clanSupporterLevels
  if L1_2 then
    L1_2 = {}
    L2_2 = L1_1
    L2_2 = L2_2.clanSupporterLevels
    L3_2 = A0_2
    L4_2 = ""
    L3_2 = L3_2 .. L4_2
    L1_2 = L2_2[L3_2]
    L1_2.itemId = A0_2
    L2_2 = L1_2 or L2_2
    if not L1_2 then
      L2_2 = {}
    end
    return L2_2
  end
end

L0_1.getClanSupporterData = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L6_1
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.clanSupporterLevels
  if L1_2 then
    L1_2 = pairs
    L2_2 = L1_1
    L2_2 = L2_2.clanSupporterLevels
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = tonumber
      L7_2 = L5_2.supporterLevel
      L6_2 = L6_2(L7_2)
      if L6_2 == A0_2 then
        return L5_2
      end
    end
  end
  L1_2 = nil
  return L1_2
end

L0_1.getClanSupporterDataBySupporterLevel = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L6_1
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.clanSupporterLevels
  if L1_2 then
    L1_2 = pairs
    L2_2 = L1_1
    L2_2 = L2_2.clanSupporterLevels
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = tonumber
      L7_2 = L5_2.supporterLevel
      L6_2 = L6_2(L7_2)
      if L6_2 == A0_2 then
        L6_2 = tonumber
        L7_2 = L5_2.clanMemberBonus
        return L6_2(L7_2)
      end
    end
  end
  L1_2 = 0
  return L1_2
end

L0_1.getClanSupporterClanMemberBonus = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L6_1
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.clanSupporterLevels
  if L1_2 then
    L1_2 = pairs
    L2_2 = L1_1
    L2_2 = L2_2.clanSupporterLevels
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = tonumber
      L7_2 = L5_2.supporterLevel
      L6_2 = L6_2(L7_2)
      if L6_2 == A0_2 then
        L6_2 = tonumber
        L7_2 = L5_2.personalBonus
        return L6_2(L7_2)
      end
    end
  end
  L1_2 = 0
  return L1_2
end

L0_1.getPersonalSupporterClanPointBonus = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L6_1
  L1_2()
  L1_2 = 0
  A0_2 = A0_2 - 1
  L2_2 = pairs
  L3_2 = L1_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 == "table" then
      L7_2 = pairs
      L8_2 = L6_2
      L7_2, L8_2, L9_2 = L7_2(L8_2)
      for L10_2, L11_2 in L7_2, L8_2, L9_2 do
        if L11_2 then
          L12_2 = type
          L13_2 = L11_2
          L12_2 = L12_2(L13_2)
          if L12_2 == "table" then
            L12_2 = L11_2.clanTier
            if L12_2 then
              L12_2 = L11_2.clanTier
              if L12_2 == A0_2 then
                L1_2 = L1_2 + 1
              end
            end
          end
        end
      end
    end
  end
  return L1_2
end

L0_1.getNumberOfClanRewardsForTier = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L6_1
  L1_2()
  L1_2 = 0
  A0_2 = A0_2 - 1
  L2_2 = pairs
  L3_2 = L1_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 == "table" then
      L7_2 = pairs
      L8_2 = L6_2
      L7_2, L8_2, L9_2 = L7_2(L8_2)
      for L10_2, L11_2 in L7_2, L8_2, L9_2 do
        if L11_2 then
          L12_2 = type
          L13_2 = L11_2
          L12_2 = L12_2(L13_2)
          if L12_2 == "table" then
            L12_2 = L11_2.clanTier
            if L12_2 then
              L12_2 = L11_2.clanTier
              if A0_2 >= L12_2 then
                L1_2 = L1_2 + 1
              end
            end
          end
        end
      end
    end
  end
  return L1_2
end

L0_1.getNumberOfClanRewardsForTierAndBelow = L32_1

function L32_1()
  local L0_2, L1_2
  L0_2 = L6_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.boosts
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.boosts
    L0_2 = L0_2["1002"]
    if L0_2 then
      L0_2 = L1_1
      L0_2 = L0_2.boosts
      L0_2 = L0_2["1002"]
      L0_2 = L0_2.gemValue
      if not L0_2 then
        L0_2 = 25
      end
      return L0_2
    end
  end
  L0_2 = 25
  return L0_2
end

L0_1.getGiftGemConversion = L32_1
return L0_1
