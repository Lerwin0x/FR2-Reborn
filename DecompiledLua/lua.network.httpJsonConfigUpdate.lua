local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1
L0_1 = require
L1_1 = "lua.modules.jsonParser"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = {}
L3_1 = L1_1.config
L3_1 = L3_1.jsonConfig
L4_1 = L1_1.config
L4_1 = L4_1.jsonStoreConfig
L5_1 = L1_1.config
L5_1 = L5_1.jsonAwardsConfig
L6_1 = L1_1.config
L6_1 = L6_1.jsonVersionConfig
L7_1 = false
L8_1 = false
L9_1 = false
L10_1 = 0
L11_1 = 3
L12_1 = 0
L13_1 = 3
L14_1 = 0
L15_1 = 3

function L16_1()
  local L0_2, L1_2
  L0_2 = L7_1
  if not L0_2 then
    L0_2 = L8_1
    if not L0_2 then
      L0_2 = L9_1
      if not L0_2 then
        L0_2 = L1_1
        L0_2.updatingConfingFiles = false
      end
    end
  end
end

function L17_1(A0_2)
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

function L18_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L17_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = print
    L2_2 = "Warning: Not valid request getting config."
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
    L2_2 = "Downloaded file is not valid format!"
    L3_2 = A0_2.response
    L3_2 = L3_2.filename
    L1_2(L2_2, L3_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end

function L19_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = L1_1
  L3_2.updatingConfingFiles = true
  L3_2 = L1_1
  L3_2.configDownloadFailure = false
  L3_2 = {}
  L3_2.timeout = 10
  L3_2.progress = false
  L4_2 = L0_1
  L4_2 = L4_2.ensureNeededDirectoriesExist
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = network
  L4_2 = L4_2.download
  L5_2 = A1_2
  L6_2 = "GET"
  L7_2 = A2_2
  L8_2 = L3_2
  L9_2 = A0_2
  L10_2 = system
  L10_2 = L10_2.CachesDirectory
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end

function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L1_2.name = "downloadConfigDone"
  L1_2.configType = "awards"
  L1_2.success = true
  L2_2 = L18_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L1_2.success = false
  end
  L2_2 = L10_1
  L2_2 = L2_2 + 1
  L10_1 = L2_2
  L2_2 = L1_2.success
  if L2_2 == false then
    L2_2 = L10_1
    L3_2 = L11_1
    if L2_2 < L3_2 then
      L2_2 = L19_1
      L3_2 = "config/awards.json"
      L4_2 = L5_1
      L5_2 = L20_1
      L2_2(L3_2, L4_2, L5_2)
      return
    end
  end
  L2_2 = false
  L7_1 = L2_2
  L2_2 = L16_1
  L2_2()
  L2_2 = Runtime
  L3_2 = L2_2
  L2_2 = L2_2.dispatchEvent
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end

function L21_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L1_1
  L0_2 = L0_2.config
  L0_2 = L0_2.ignoreJsonConfig
  if L0_2 then
    return
  end
  L0_2 = true
  L7_1 = L0_2
  L0_2 = L19_1
  L1_2 = "config/awards.json"
  L2_2 = L5_1
  L3_2 = L20_1
  L0_2(L1_2, L2_2, L3_2)
end

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L1_2.name = "downloadConfigDone"
  L1_2.configType = "store"
  L1_2.success = true
  L2_2 = L18_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L1_2.success = false
  end
  L2_2 = L12_1
  L2_2 = L2_2 + 1
  L12_1 = L2_2
  L2_2 = L1_2.success
  if L2_2 == false then
    L2_2 = L12_1
    L3_2 = L13_1
    if L2_2 < L3_2 then
      L2_2 = L19_1
      L3_2 = "config/storeConfig.json"
      L4_2 = L4_1
      L5_2 = L22_1
      L2_2(L3_2, L4_2, L5_2)
      return
    end
  end
  L2_2 = false
  L8_1 = L2_2
  L2_2 = L16_1
  L2_2()
  L2_2 = Runtime
  L3_2 = L2_2
  L2_2 = L2_2.dispatchEvent
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end

function L23_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L1_1
  L0_2 = L0_2.config
  L0_2 = L0_2.ignoreJsonConfig
  if L0_2 then
    return
  end
  L0_2 = true
  L8_1 = L0_2
  L0_2 = L19_1
  L1_2 = "config/storeConfig.json"
  L2_2 = L4_1
  L3_2 = L22_1
  L0_2(L1_2, L2_2, L3_2)
end

function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L1_2.name = "downloadConfigDone"
  L1_2.configType = "config"
  L1_2.success = true
  L2_2 = L18_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L1_2.success = false
  end
  L2_2 = L14_1
  L2_2 = L2_2 + 1
  L14_1 = L2_2
  L2_2 = L1_2.success
  if L2_2 == false then
    L2_2 = L14_1
    L3_2 = L15_1
    if L2_2 < L3_2 then
      L2_2 = L19_1
      L3_2 = "config/config.json"
      L4_2 = L3_1
      L5_2 = L24_1
      L2_2(L3_2, L4_2, L5_2)
      return
    end
  end
  L2_2 = false
  L9_1 = L2_2
  L2_2 = L16_1
  L2_2()
  L2_2 = Runtime
  L3_2 = L2_2
  L2_2 = L2_2.dispatchEvent
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end

function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L1_1
  L0_2 = L0_2.config
  L0_2 = L0_2.ignoreJsonConfig
  if L0_2 then
    return
  end
  L0_2 = true
  L9_1 = L0_2
  L0_2 = {}
  L1_2 = L19_1
  L2_2 = "config/config.json"
  L3_2 = L3_1
  L4_2 = L24_1
  L1_2(L2_2, L3_2, L4_2)
end

function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.response
  L2_2 = L17_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = require
  L3_2 = "json"
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.decode
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L1_2 = L3_2
  L3_2 = L1_2.supportedVersion
  L4_2 = L1_2.version
  L5_2 = L1_1
  L5_2 = L5_2.comm
  L5_2 = L5_2.haveValidVersion
  L6_2 = L4_2
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 == false then
    L5_2 = print
    L6_2 = "WARNING: deny access"
    L5_2(L6_2)
    L5_2 = L1_1
    L5_2 = L5_2.data
    L5_2.wrongVersion = true
    L5_2 = L1_1
    L5_2 = L5_2.gotoScene
    L6_2 = "lua.scenes.intro.blockScene"
    L5_2(L6_2)
  end
end

function L27_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L1_1
  L0_2 = L0_2.config
  L0_2 = L0_2.ignoreJsonConfig
  if L0_2 then
    return
  end
  L0_2 = {}
  L1_2 = network
  L1_2 = L1_2.request
  L2_2 = L6_1
  L3_2 = "GET"
  L4_2 = L26_1
  L5_2 = L0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

L2_1.checkForJsonConfigUpdate = L25_1
L2_1.checkForJsonStoreConfigUpdate = L23_1
L2_1.checkForJsonAwardsUpdate = L21_1
L28_1 = checkForJsonTextUpdate
L2_1.checkForJsonTextUpdate = L28_1
L2_1.checkForVersion = L27_1
return L2_1
