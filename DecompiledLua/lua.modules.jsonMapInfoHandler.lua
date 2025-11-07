local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "lua.modules.jsonParser"
L2_1 = L2_1(L3_1)
L3_1 = nil

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = false
  L3_1 = L1_2
  L1_2 = L1_1
  L1_2 = L1_2.gameConfig
  L1_2 = L1_2.getNumberOfMaps
  L1_2 = L1_2()
  if A0_2 then
  else
    L2_2 = L1_1
    L2_2 = L2_2.data
    L2_2 = L2_2.mapInfo
    if L2_2 then
      L2_2 = L1_1
      L2_2 = L2_2.data
      L2_2 = L2_2.mapInfo
      L2_2 = #L2_2
      if 1 < L2_2 then
        return
      end
    end
  end
  
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = L1_1
    L0_3 = L0_3.data
    L0_3 = L0_3.mapInfo
    L1_3 = {}
    L0_3[1] = L1_3
    L0_3 = L1_1
    L0_3 = L0_3.data
    L0_3 = L0_3.mapInfo
    L0_3 = L0_3[1]
    L0_3.id = 0
    L0_3 = L1_1
    L0_3 = L0_3.data
    L0_3 = L0_3.mapInfo
    L0_3 = L0_3[1]
    L1_3 = L1_1
    L1_3 = L1_3.localized
    L1_3 = L1_3.get
    L2_3 = "Random"
    L1_3 = L1_3(L2_3)
    L0_3.name = L1_3
    L0_3 = L1_1
    L0_3 = L0_3.data
    L0_3 = L0_3.mapInfo
    L0_3 = L0_3[1]
    L0_3.theme = "forest"
  end
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L1_1
    L1_3 = L1_3.data
    L1_3 = L1_3.mapInfo
    L1_3 = #L1_3
    L1_3 = L1_3 + 1
    L2_3 = L1_1
    L2_3 = L2_3.data
    L2_3 = L2_3.mapInfo
    L3_3 = {}
    L2_3[L1_3] = L3_3
    L2_3 = L1_1
    L2_3 = L2_3.data
    L2_3 = L2_3.mapInfo
    L2_3 = L2_3[L1_3]
    L3_3 = A0_3.id
    L2_3.id = L3_3
    L2_3 = L1_1
    L2_3 = L2_3.data
    L2_3 = L2_3.mapInfo
    L2_3 = L2_3[L1_3]
    L3_3 = A0_3.name
    L2_3.name = L3_3
    L2_3 = L1_1
    L2_3 = L2_3.data
    L2_3 = L2_3.mapInfo
    L2_3 = L2_3[L1_3]
    L3_3 = A0_3.theme
    L2_3.theme = L3_3
  end
  
  L4_2 = L1_1
  L4_2 = L4_2.data
  
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = L1_1
    L1_3 = L1_3.data
    L1_3 = L1_3.mapInfo
    L2_3 = A0_3 + 1
    L1_3 = L1_3[L2_3]
    if L1_3 then
      L1_3 = L1_1
      L1_3 = L1_3.data
      L1_3 = L1_3.mapInfo
      L2_3 = A0_3 + 1
      L1_3 = L1_3[L2_3]
      return L1_3
    end
    L1_3 = nil
    return L1_3
  end
  
  L4_2.getMapInfo = L5_2
  L4_2 = L1_1
  L4_2 = L4_2.data
  
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = L1_1
    L1_3 = L1_3.data
    L1_3 = L1_3.mapInfo
    L2_3 = A0_3 + 1
    L1_3 = L1_3[L2_3]
    if L1_3 then
      L1_3 = L1_1
      L1_3 = L1_3.data
      L1_3 = L1_3.mapInfo
      L2_3 = A0_3 + 1
      L1_3 = L1_3[L2_3]
      L1_3 = L1_3.name
      if L1_3 then
        L1_3 = L1_1
        L1_3 = L1_3.data
        L1_3 = L1_3.mapInfo
        L2_3 = A0_3 + 1
        L1_3 = L1_3[L2_3]
        L1_3 = L1_3.name
        return L1_3
      end
    end
    L1_3 = ""
    return L1_3
  end
  
  L4_2.getMapName = L5_2
  L4_2 = L1_1
  L4_2 = L4_2.data
  
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = L1_1
    L1_3 = L1_3.data
    L1_3 = L1_3.mapInfo
    L2_3 = A0_3 + 1
    L1_3 = L1_3[L2_3]
    if L1_3 then
      L1_3 = L1_1
      L1_3 = L1_3.data
      L1_3 = L1_3.mapInfo
      L2_3 = A0_3 + 1
      L1_3 = L1_3[L2_3]
      L1_3 = L1_3.theme
      if L1_3 then
        L1_3 = L1_1
        L1_3 = L1_3.data
        L1_3 = L1_3.mapInfo
        L2_3 = A0_3 + 1
        L1_3 = L1_3[L2_3]
        L1_3 = L1_3.theme
        return L1_3
      end
    end
    L1_3 = ""
    return L1_3
  end
  
  L4_2.getMapTheme = L5_2
  L4_2 = L1_1
  L4_2 = L4_2.data
  
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = L1_1
    L1_3 = L1_3.data
    L1_3 = L1_3.mapInfo
    L2_3 = A0_3 + 1
    L1_3 = L1_3[L2_3]
    if L1_3 then
      L1_3 = L1_1
      L1_3 = L1_3.data
      L1_3 = L1_3.mapInfo
      L2_3 = A0_3 + 1
      L1_3 = L1_3[L2_3]
      L1_3 = L1_3.id
      if L1_3 then
        L1_3 = L1_1
        L1_3 = L1_3.data
        L1_3 = L1_3.mapInfo
        L2_3 = A0_3 + 1
        L1_3 = L1_3[L2_3]
        L1_3 = L1_3.id
        return L1_3
      end
    end
    L1_3 = -1
    return L1_3
  end
  
  L4_2.getMapId = L5_2
  L4_2 = false
  L5_2 = L1_1
  L5_2 = L5_2.data
  L6_2 = {}
  L5_2.mapInfo = L6_2
  L5_2 = L2_2
  L5_2()
  L5_2 = 1
  L6_2 = L1_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L2_1
    L9_2 = L9_2.getMapInfoFromFile
    L10_2 = "config/map/"
    L11_2 = L8_2
    L12_2 = ".json"
    L10_2 = L10_2 .. L11_2 .. L12_2
    L9_2 = L9_2(L10_2)
    if L9_2 == -1 then
      L4_2 = true
      L10_2 = L1_1
      L10_2 = L10_2.analytics
      L10_2 = L10_2.newEvent
      L11_2 = "design"
      L12_2 = {}
      L12_2.event_id = "map:failedToReadMapInfo"
      L12_2.value = L8_2
      L13_2 = L1_1
      L13_2 = L13_2.config
      L13_2 = L13_2.fullVersion
      L12_2.area = L13_2
      L10_2(L11_2, L12_2)
      break
    end
    if L9_2 then
      L10_2 = L3_2
      L11_2 = L9_2
      L10_2(L11_2)
    end
  end
  if L4_2 then
    L5_2 = L1_1
    L5_2 = L5_2.data
    L6_2 = {}
    L5_2.mapInfo = L6_2
    L5_2 = L2_2
    L5_2()
    L5_2 = print
    L6_2 = "WARNING: use slow read of maps"
    L5_2(L6_2)
    L5_2 = 1
    L6_2 = L1_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L2_1
      L9_2 = L9_2.getJsonFromFile
      L10_2 = "config/map/"
      L11_2 = L8_2
      L12_2 = ".json"
      L10_2 = L10_2 .. L11_2 .. L12_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L10_2 = L3_2
        L11_2 = L9_2.properties
        L10_2(L11_2)
      else
        L10_2 = true
        L3_1 = L10_2
        return
      end
    end
  end
end

L0_1.readMapDataToMemory = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = L3_1
  return L0_2
end

L0_1.isFileCorrupt = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L0_2 = L0_2.gameConfig
  L0_2 = L0_2.getNumberOfMaps
  return L0_2()
end

L0_1.getNumberOfMaps = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L1_1
  L0_2 = L0_2.gameConfig
  L0_2 = L0_2.getNumberOfMaps
  L0_2 = L0_2()
  L1_2 = 1
  L2_2 = L0_2 + 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1
    L5_2 = L5_2.data
    L5_2 = L5_2.mapInfo
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = L1_1
      L5_2 = L5_2.data
      L5_2 = L5_2.mapInfo
      L5_2 = L5_2[L4_2]
      L5_2.active = false
    end
  end
end

L0_1.setNonMapActive = L4_1

function L4_1(A0_2)
  local L1_2
  A0_2 = A0_2 + 1
  L1_2 = L0_1
  L1_2 = L1_2.setNonMapActive
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.data
  L1_2 = L1_2.mapInfo
  L1_2 = L1_2[A0_2]
  L1_2.active = true
end

L0_1.setActiveMap = L4_1
return L0_1
