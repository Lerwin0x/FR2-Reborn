local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = require
L1_1 = "lua.modules.jsonParser"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "json"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "lua.modules.assetLoader"
L3_1 = L3_1(L4_1)
L4_1 = {}
L5_1 = L1_1.config
L5_1 = L5_1.jsonMap
L6_1 = {}
L7_1 = 4
L8_1 = 0
L9_1 = 0
L10_1 = 3
L11_1 = nil

function L12_1()
  local L0_2, L1_2
  L0_2 = L9_1
  L1_2 = L8_1
  if L0_2 ~= L1_2 then
    return
  end
  L0_2 = L1_1
  L0_2.updatingMaps = false
end

function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.isError
  if not L1_2 then
    L1_2 = A0_2.status
    if not L1_2 then
      goto lbl_14
    end
    L1_2 = tonumber
    L2_2 = A0_2.status
    L1_2 = L1_2(L2_2)
    if L1_2 == 200 then
      goto lbl_14
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_14::
  L1_2 = true
  return L1_2
end

function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L13_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = print
    L2_2 = "Warning: Not valid request getting map."
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = L0_1
  L1_2 = L1_2.isValidJson
  L2_2 = A0_2.response
  L2_2 = L2_2.filename
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = print
    L2_2 = "Downloaded map file is not valid format!"
    L3_2 = A0_2.response
    L3_2 = L3_2.filename
    L1_2(L2_2, L3_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end

function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L1_2.progress = false
  L1_2.timeout = 30
  L2_2 = L8_1
  L2_2 = L2_2 + 1
  L8_1 = L2_2
  L2_2 = L0_1
  L2_2 = L2_2.ensureNeededDirectoriesExist
  L3_2 = "config"
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = network
  L2_2 = L2_2.download
  L3_2 = L5_1
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L4_2 = "GET"
  L5_2 = L11_1
  L6_2 = L1_2
  L7_2 = "config"
  L8_2 = A0_2
  L7_2 = L7_2 .. L8_2
  L8_2 = system
  L8_2 = L8_2.CachesDirectory
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L1_2.name = "downloadMapDone"
  L1_2.success = true
  L2_2 = L14_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L1_2.success = false
  end
  L2_2 = L9_1
  L2_2 = L2_2 + 1
  L9_1 = L2_2
  L2_2 = A0_2.response
  if L2_2 then
    L2_2 = L6_1
    L3_2 = A0_2.response
    L3_2 = L3_2.filename
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L2_2 = L6_1
      L3_2 = A0_2.response
      L3_2 = L3_2.filename
      L4_2 = L6_1
      L5_2 = A0_2.response
      L5_2 = L5_2.filename
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2 + 1
      L2_2[L3_2] = L4_2
      L2_2 = L6_1
      L3_2 = A0_2.response
      L3_2 = L3_2.filename
      L2_2 = L2_2[L3_2]
      L3_2 = L10_1
      if L2_2 < L3_2 then
        L2_2 = L1_2.success
        if not L2_2 then
          L2_2 = L15_1
          L3_2 = string
          L3_2 = L3_2.sub
          L4_2 = A0_2.response
          L4_2 = L4_2.filename
          L5_2 = 7
          L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
          L2_2(L3_2, L4_2, L5_2)
          return
        end
      end
    end
  end
  L2_2 = L12_1
  L2_2()
  L2_2 = Runtime
  L3_2 = L2_2
  L2_2 = L2_2.dispatchEvent
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end

function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L1_1
  L0_2 = L0_2.config
  L0_2 = L0_2.ignoreJsonConfig
  if L0_2 then
    return
  end
  L0_2 = L1_1
  L0_2.updatingMaps = true
  L0_2 = L1_1
  L0_2.mapDownloadFailure = false
  L0_2 = L1_1
  L0_2 = L0_2.mapHandler
  if L0_2 == nil then
    L0_2 = 4
    L7_1 = L0_2
  else
    L0_2 = L1_1
    L0_2 = L0_2.mapHandler
    L0_2 = L0_2.getNumberOfMaps
    L0_2 = L0_2()
    L7_1 = L0_2
  end
  L0_2 = {}
  L6_1 = L0_2
  L0_2 = 1
  L1_2 = L7_1
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = "/map/"
    L5_2 = L3_2
    L6_2 = ".json"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L5_2 = L6_1
    L6_2 = "config"
    L7_2 = L4_2
    L6_2 = L6_2 .. L7_2
    L5_2[L6_2] = 0
    L5_2 = L15_1
    L6_2 = L4_2
    L5_2(L6_2)
  end
end

L4_1.checkForJsonMapUpdate = L16_1
return L4_1
