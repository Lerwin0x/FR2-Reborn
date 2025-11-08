local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = nil
L3_1 = 0
L4_1 = nil

function L5_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L0_2 = L0_2.adsTable
  L0_2 = L0_2.chances
  L0_2 = L0_2.fyberAdChance
  if L0_2 then
    L0_2 = require
    L1_2 = "lua.ads.fyberModule"
    L0_2 = L0_2(L1_2)
    L2_1 = L0_2
    L0_2 = L2_1
    L0_2 = L0_2.init
    L0_2()
    L0_2 = L1_1
    L0_2 = L0_2.adsTable
    L0_2 = L0_2.chances
    L0_2 = L0_2.fyberAdChance
    L3_1 = L0_2
    L0_2 = L3_1
    L0_2 = L0_2 * 10
    L3_1 = L0_2
  end
  L0_2 = {}
  L4_1 = L0_2
end

L0_1.init = L5_1

function L6_1()
  local L0_2, L1_2, L2_2
  L0_2 = L1_1
  L0_2 = L0_2.database
  L0_2 = L0_2.getLastTimeAds
  L0_2 = L0_2()
  L1_2 = os
  L1_2 = L1_2.time
  L1_2 = L1_2()
  L2_2 = L1_1
  L2_2 = L2_2.adsTable
  L2_2 = L2_2.refreshRate
  L2_2 = L0_2 + L2_2
  if L1_2 > L2_2 then
    L2_2 = true
    return L2_2
  else
    L2_2 = false
    return L2_2
  end
end

function L7_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L0_2 = L0_2.data
  L0_2 = L0_2.gameInfo
  L0_2 = L0_2.gameType
  if L0_2 ~= 1 then
    L0_2 = false
    return L0_2
  end
  L0_2 = L3_1
  if L0_2 == 0 then
    L0_2 = false
    return L0_2
  end
  L0_2 = L1_1
  L0_2 = L0_2.adsTable
  L0_2 = L0_2.use
  if L0_2 then
    L0_2 = L6_1
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = true
      return L0_2
    else
      L0_2 = false
      return L0_2
    end
  else
    L0_2 = false
    return L0_2
  end
end

L0_1.shouldShowAds = L7_1

function L8_1()
  local L0_2, L1_2
end

L0_1.hideAds = L8_1

function L9_1()
  local L0_2, L1_2
  L0_2 = L2_1
  if L0_2 then
    L0_2 = L3_1
    if 0 < L0_2 then
      L0_2 = L2_1
      L0_2 = L0_2.preloadAds
      L0_2()
    end
  end
end

L0_1.preloadAds = L9_1

function L10_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L4_1 = L0_2
  L0_2 = L2_1
  if L0_2 then
    L0_2 = L3_1
    if 0 < L0_2 then
      L0_2 = L2_1
      L0_2 = L0_2.isAdReady
      L0_2 = L0_2()
      if L0_2 then
        L0_2 = L4_1
        L1_2 = L4_1
        L1_2 = #L1_2
        L1_2 = L1_2 + 1
        L2_2 = L2_1
        L0_2[L1_2] = L2_2
        L0_2 = L4_1
        L1_2 = L4_1
        L1_2 = #L1_2
        L0_2 = L0_2[L1_2]
        L1_2 = L3_1
        L0_2.chance = L1_2
        L0_2 = print
        L1_2 = "Fyber ad ready"
        L0_2(L1_2)
      end
    end
  end
  L0_2 = L4_1
  L0_2 = #L0_2
  if L0_2 == 0 then
    L0_2 = print
    L1_2 = "WARNING: no ads avalible"
    L0_2(L1_2)
    L0_2 = L0_1
    L0_2 = L0_2.preloadAds
    L0_2()
  end
end

function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L10_1
  L0_2()
  L0_2 = nil
  L1_2 = 0
  L2_2 = L4_1
  L2_2 = #L2_2
  if L2_2 == 1 then
    L2_2 = L4_1
    L2_2 = L2_2[1]
    L2_2 = L2_2.showAds
    L2_2()
  else
    L2_2 = L4_1
    L2_2 = #L2_2
    if 1 < L2_2 then
      L2_2 = 1
      L3_2 = L4_1
      L3_2 = #L3_2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = L4_1
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.chance
        if L1_2 < L6_2 then
          L6_2 = L4_1
          L0_2 = L6_2[L5_2]
          L6_2 = L4_1
          L6_2 = L6_2[L5_2]
          L1_2 = L6_2.chance
        end
      end
      if L0_2 then
        L2_2 = L0_2.showAds
        L2_2()
      end
    else
      L2_2 = L9_1
      L2_2()
    end
  end
end

L0_1.showAds = L11_1

function L12_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L1_1
  L0_2 = L0_2.debugger
  L0_2 = L0_2.debugTable
  L1_2 = "main"
  L2_2 = "FyberModule"
  L3_2 = L2_1
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L2_1
  if L0_2 ~= nil then
    L0_2 = L2_1
    L0_2 = L0_2.showIntegrationStatus
    if L0_2 then
      L0_2 = L2_1
      L0_2 = L0_2.showIntegrationStatus
      L0_2()
  end
  else
    L0_2 = print
    L1_2 = "FyberModule not set."
    L0_2(L1_2)
  end
end

L0_1.showIntegrationStatus = L12_1
L13_1 = L5_1
L13_1()
return L0_1
