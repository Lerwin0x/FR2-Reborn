local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = {}
L1_1 = require
L2_1 = "json"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "lua.modules.fileUtils"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)
L4_1 = string

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = 1
  L4_2 = string
  L4_2 = L4_2.find
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = L3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  while L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A2_2
    L8_2 = string
    L8_2 = L8_2.sub
    L9_2 = A0_2
    L10_2 = L3_2
    L11_2 = L4_2 - 1
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L3_2 = L5_2 + 1
    L6_2 = string
    L6_2 = L6_2.find
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = L3_2
    L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L7_2
    L4_2 = L6_2
  end
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = A2_2
  L8_2 = string
  L8_2 = L8_2.sub
  L9_2 = A0_2
  L10_2 = L3_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  return A2_2
end

L4_1.split = L5_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = L2_1
  L2_2 = L2_2.doesFileExist
  L3_2 = A0_2
  L4_2 = system
  L4_2 = L4_2.CachesDirectory
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = L3_1
    L2_2 = L2_2.config
    L2_2 = L2_2.ignoreJsonConfig
    if not L2_2 then
      L2_2 = system
      L2_2 = L2_2.pathForFile
      L3_2 = A0_2
      L4_2 = system
      L4_2 = L4_2.CachesDirectory
      L2_2 = L2_2(L3_2, L4_2)
      L1_2 = L2_2
  end
  else
    L2_2 = system
    L2_2 = L2_2.pathForFile
    L3_2 = A0_2
    L4_2 = system
    L4_2 = L4_2.ResourceDirectory
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  return L1_2
end

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L4_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = io
    L2_2 = L2_2.open
    L3_2 = L1_2
    L4_2 = "r"
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.read
    L5_2 = "*a"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = io
    L4_2 = L4_2.close
    L5_2 = L2_2
    L4_2(L5_2)
    L4_2 = L3_1
    L4_2 = L4_2.debugger
    L4_2 = L4_2.debugPrint
    L5_2 = "filesystem"
    L6_2 = "getFile"
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
    return L3_2
  else
    L2_2 = nil
    return L2_2
  end
end

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L5_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_1
    L2_2 = L2_2.decode
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = L3_1
    L3_2 = L3_2.debugger
    L3_2 = L3_2.debugTable
    L4_2 = "filesystem"
    L5_2 = "getJsonFromFile"
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
    if L2_2 == nil then
      L3_2 = L3_1
      L3_2 = L3_2.analytics
      if L3_2 then
        L3_2 = print
        L4_2 = "WARNING: failed to find file "
        L5_2 = A0_2
        L3_2(L4_2, L5_2)
        L3_2 = L3_1
        L3_2 = L3_2.analytics
        L3_2 = L3_2.newEvent
        L4_2 = "design"
        L5_2 = {}
        L5_2.event_id = "json:decodeFailed"
        L6_2 = L3_1
        L6_2 = L6_2.config
        L6_2 = L6_2.fullVersion
        L5_2.area = L6_2
        L3_2(L4_2, L5_2)
      end
    end
    return L2_2
  else
    L2_2 = nil
    return L2_2
  end
end

function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L5_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_1
    L2_2 = L2_2.decode
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = true
      return L3_2
    end
  end
  L2_2 = false
  return L2_2
end

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L4_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = -1
    return L2_2
  end
  L2_2 = io
  L2_2 = L2_2.open
  L3_2 = L1_2
  L4_2 = "r"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = nil
  L4_2 = ""
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = 2000
    while 0 < L0_3 do
      L1_3 = L2_2
      L2_3 = L1_3
      L1_3 = L1_3.read
      L3_3 = "*l"
      L1_3 = L1_3(L2_3, L3_3)
      L3_2 = L1_3
      L1_3 = L3_2
      if L1_3 == " \"properties\":" then
        break
      end
      L0_3 = L0_3 - 1
    end
    if L0_3 == 0 then
      L1_3 = false
      return L1_3
    end
    L0_3 = 2000
    while 0 < L0_3 do
      L1_3 = L2_2
      L2_3 = L1_3
      L1_3 = L1_3.read
      L3_3 = "*l"
      L1_3 = L1_3(L2_3, L3_3)
      L3_2 = L1_3
      L1_3 = L4_2
      L2_3 = L3_2
      L1_3 = L1_3 .. L2_3
      L4_2 = L1_3
      L1_3 = L3_2
      if L1_3 == "    }," then
        break
      end
      L0_3 = L0_3 - 1
    end
    if L0_3 == 0 then
      L1_3 = false
      return L1_3
    end
    L1_3 = true
    return L1_3
  end
  
  L6_2 = pcall
  L7_2 = L5_2
  L6_2, L7_2 = L6_2(L7_2)
  if L6_2 and L7_2 and L4_2 then
    L8_2 = io
    L8_2 = L8_2.close
    L9_2 = L2_2
    L8_2(L9_2)
    L8_2 = L1_1
    L8_2 = L8_2.decode
    L9_2 = L4_2
    L8_2 = L8_2(L9_2)
    L9_2 = L3_1
    L9_2 = L9_2.debugger
    L9_2 = L9_2.debugPrint
    L10_2 = "filesystem"
    L11_2 = "getMapInfoFromFile json"
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
    return L8_2
  else
    L8_2 = L3_1
    L8_2 = L8_2.debugger
    L8_2 = L8_2.debugPrint
    L9_2 = "filesystem"
    L10_2 = "getMapInfoFromFile file"
    L11_2 = L2_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = io
    L8_2 = L8_2.close
    L9_2 = L2_2
    L8_2(L9_2)
    L8_2 = -1
    return L8_2
  end
end

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L3_1
    L0_3 = L0_3.debugger
    L0_3 = L0_3.debugPrint
    L1_3 = "filesystem"
    L2_3 = "writeJsonToFile: "
    L3_3 = A0_2
    L2_3 = L2_3 .. L3_3
    L3_3 = A1_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = system
    L0_3 = L0_3.pathForFile
    L1_3 = A0_2
    L2_3 = system
    L2_3 = L2_3.CachesDirectory
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = io
    L1_3 = L1_3.open
    L2_3 = L0_3
    L3_3 = "w"
    L1_3 = L1_3(L2_3, L3_3)
    L3_3 = L1_3
    L2_3 = L1_3.write
    L4_3 = A1_2
    L2_3(L3_3, L4_3)
    L2_3 = io
    L2_3 = L2_3.close
    L3_3 = L1_3
    L2_3(L3_3)
    L1_3 = nil
    L2_3 = A2_2
    if L2_3 then
      L2_3 = A2_2
      L2_3()
    end
  end
  
  L4_2 = L2_1
  L4_2 = L4_2.doesFileExist
  L5_2 = A0_2
  L6_2 = system
  L6_2 = L6_2.CachesDirectory
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = require
    L5_2 = "lfs"
    L4_2 = L4_2(L5_2)
    L5_2 = system
    L5_2 = L5_2.pathForFile
    L6_2 = ""
    L7_2 = system
    L7_2 = L7_2.CachesDirectory
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L4_2.chdir
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L8_2 = A0_2
    L7_2 = A0_2.split
    L9_2 = "/"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L4_2.chdir
    L9_2 = L5_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L9_2 = L7_2[1]
      L10_2 = L4_2.mkdir
      L11_2 = L9_2
      L10_2(L11_2)
      L10_2 = 2
      L11_2 = #L7_2
      L11_2 = L11_2 - 1
      L12_2 = 1
      for L13_2 = L10_2, L11_2, L12_2 do
        L14_2 = L9_2
        L15_2 = "/"
        L16_2 = L7_2[L13_2]
        L9_2 = L14_2 .. L15_2 .. L16_2
        L14_2 = L4_2.mkdir
        L15_2 = L9_2
        L14_2(L15_2)
      end
    end
  end
  L4_2 = L3_2
  L4_2()
end

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L2_1
  L1_2 = L1_2.doesFileExist
  L2_2 = A0_2
  L3_2 = system
  L3_2 = L3_2.CachesDirectory
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = require
    L2_2 = "lfs"
    L1_2 = L1_2(L2_2)
    L2_2 = system
    L2_2 = L2_2.pathForFile
    L3_2 = ""
    L4_2 = system
    L4_2 = L4_2.CachesDirectory
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = A0_2
    L3_2 = A0_2.split
    L5_2 = "/"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L1_2.chdir
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L5_2 = 1
    L6_2 = #L3_2
    L6_2 = L6_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L1_2.chdir
      L10_2 = L3_2[L8_2]
      L9_2 = L9_2(L10_2)
      L4_2 = L9_2
      if not L4_2 then
        break
      end
    end
    if L4_2 then
      return
    end
    L5_2 = L1_2.chdir
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L6_2 = L3_2[1]
      L7_2 = L1_2.mkdir
      L8_2 = L6_2
      L7_2(L8_2)
      L7_2 = 2
      L8_2 = #L3_2
      L8_2 = L8_2 - 1
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = L6_2
        L12_2 = "/"
        L13_2 = L3_2[L10_2]
        L6_2 = L11_2 .. L12_2 .. L13_2
        L11_2 = L1_2.mkdir
        L12_2 = L6_2
        L11_2(L12_2)
      end
    end
  end
end

L0_1.getJsonFromFile = L6_1
L0_1.writeJsonToFile = L9_1
L0_1.getFile = L5_1
L0_1.isValidJson = L7_1
L0_1.ensureNeededDirectoriesExist = L10_1
L0_1.getMapInfoFromFile = L8_1
return L0_1
