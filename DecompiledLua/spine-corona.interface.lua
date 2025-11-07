local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = {}
L1_1 = require
L2_1 = "spine-corona.spine"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)
L3_1 = nil
L4_1 = nil
L5_1 = nil
L6_1 = nil
L7_1 = nil

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L3_2 = pcall
  
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.readSkeletonDataFile
    L2_3 = "animations/monsters/monsters.json"
    return L0_3(L1_3, L2_3)
  end
  
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L4_2
  L2_2 = L3_2
  if L2_2 then
    L3_2 = {}
    L5_1 = L3_2
    L3_2 = L5_1
    L3_2.skeletonData = L1_2
    L3_2 = L5_1
    L4_2 = L1_1
    L4_2 = L4_2.AnimationStateData
    L4_2 = L4_2.new
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L3_2.animationStateData = L4_2
    L3_2 = L5_1
    L3_2 = L3_2.animationStateData
    L3_2.defaultMix = 0
    L3_2 = L2_1
    L3_2 = L3_2.debugPrint
    L4_2 = "spine"
    L5_2 = "added monster to table"
    L3_2(L4_2, L5_2)
  else
    L3_2 = print
    L4_2 = "ERROR: NO MONSTER WITH THAT ID: "
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
end

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = pcall
  
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.readSkeletonDataFile
    L2_3 = "animations/monsters/monsters1.json"
    return L0_3(L1_3, L2_3)
  end
  
  L6_2, L7_2 = L6_2(L7_2)
  L3_2 = L7_2
  L2_2 = L6_2
  L6_2 = pcall
  
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A1_2
    L1_3 = L0_3
    L0_3 = L0_3.readSkeletonDataFile
    L2_3 = "animations/monsters/monsters.json"
    return L0_3(L1_3, L2_3)
  end
  
  L6_2, L7_2 = L6_2(L7_2)
  L5_2 = L7_2
  L4_2 = L6_2
  L6_2 = {}
  
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = pairs
    L2_3 = L6_2
    L1_3, L2_3, L3_3 = L1_3(L2_3)
    for L4_3, L5_3 in L1_3, L2_3, L3_3 do
      if L4_3 == A0_3 then
        L6_3 = true
        return L6_3
      end
    end
    L1_3 = false
    return L1_3
  end
  
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L2_3 = type
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L3_3 = type
    L4_3 = A1_3
    L3_3 = L3_3(L4_3)
    if L2_3 ~= L3_3 then
      L4_3 = false
      return L4_3
    end
    if L2_3 == "function" then
      L4_3 = true
      return L4_3
    end
    if L2_3 ~= "table" then
      L4_3 = A0_3 == A1_3
      return L4_3
    end
    L4_3 = pairs
    L5_3 = A0_3
    L4_3, L5_3, L6_3 = L4_3(L5_3)
    for L7_3, L8_3 in L4_3, L5_3, L6_3 do
      L9_3 = L7_2
      L10_3 = L7_3
      L9_3 = L9_3(L10_3)
      if L9_3 then
        L9_3 = true
        return L9_3
      end
      L9_3 = L6_2
      L10_3 = L6_2
      L10_3 = #L10_3
      L10_3 = L10_3 + 1
      L9_3[L10_3] = L7_3
      L9_3 = A1_3[L7_3]
      if L9_3 == nil then
        L10_3 = print
        L11_3 = "Not found in modified!"
        L12_3 = L7_3
        L10_3(L11_3, L12_3)
      end
      if L9_3 ~= nil then
        L10_3 = L8_2
        L11_3 = L8_3
        L12_3 = L9_3
        L10_3 = L10_3(L11_3, L12_3)
        if L10_3 then
          goto lbl_55
        end
      end
      L10_3 = false
      do return L10_3 end
      ::lbl_55::
    end
    L4_3 = true
    return L4_3
  end
  
  if not L2_2 then
    L9_2 = print
    L10_2 = "Warning: No original spine file to compare."
    L9_2(L10_2)
  end
  if L2_2 and L4_2 then
    L9_2 = L8_2
    L10_2 = L3_2
    L11_2 = L5_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L9_2 = print
      L10_2 = "Spine structures are identical."
      L9_2(L10_2)
    else
      L9_2 = print
      L10_2 = "ERROR: Spine structures are different!"
      L9_2(L10_2)
    end
  else
    L9_2 = print
    L10_2 = "Something went wrong when comparing spine structures."
    L9_2(L10_2)
  end
end

function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = system
  L0_2 = L0_2.getTimer
  L0_2 = L0_2()
  L1_2 = L1_1
  L1_2 = L1_2.SkeletonJson
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L2_2 = L2_1
  L2_2 = L2_2.config
  L2_2 = L2_2.valdiateSpineJson
  if L2_2 then
    L2_2 = L1_1
    L2_2 = L2_2.SkeletonJson
    L2_2 = L2_2.new
    L2_2 = L2_2()
    if L2_2 then
      L3_2 = print
      L4_2 = "Checking spine structure..."
      L3_2(L4_2)
      L3_2 = L9_1
      L4_2 = L2_2
      L5_2 = L1_2
      L3_2(L4_2, L5_2)
    end
  end
  L2_2 = L8_1
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = L2_1
  L2_2 = L2_2.debugPrint
  L3_2 = "loadingTime"
  L4_2 = "SPINE basic timeToLoad  "
  L5_2 = system
  L5_2 = L5_2.getTimer
  L5_2 = L5_2()
  L5_2 = L5_2 - L0_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end

L0_1.loadBasicSpine = L10_1

function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = {}
  L1_2 = nil
  L2_2 = nil
  L3_2 = nil
  L4_2 = nil
  L5_2 = L5_1
  if L5_2 == nil then
    L5_2 = L0_1
    L5_2 = L5_2.loadBasicSpine
    L5_2()
  end
  
  function L5_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    if A0_3 == 1 then
      L3_3 = L2_2
      L4_3 = L3_3
      L3_3 = L3_3.setMix
      L5_3 = "run"
      L6_3 = A1_3
      L7_3 = A2_3
      L3_3(L4_3, L5_3, L6_3, L7_3)
      L3_3 = L2_2
      L4_3 = L3_3
      L3_3 = L3_3.setMix
      L5_3 = "run2"
      L6_3 = A1_3
      L7_3 = A2_3
      L3_3(L4_3, L5_3, L6_3, L7_3)
      L3_3 = L2_2
      L4_3 = L3_3
      L3_3 = L3_3.setMix
      L5_3 = "run2"
      L6_3 = A1_3
      L7_3 = A2_3
      L3_3(L4_3, L5_3, L6_3, L7_3)
    else
      L3_3 = L2_2
      L4_3 = L3_3
      L3_3 = L3_3.setMix
      L5_3 = A1_3
      L6_3 = "run"
      L7_3 = A2_3
      L3_3(L4_3, L5_3, L6_3, L7_3)
      L3_3 = L2_2
      L4_3 = L3_3
      L3_3 = L3_3.setMix
      L5_3 = A1_3
      L6_3 = "run2"
      L7_3 = A2_3
      L3_3(L4_3, L5_3, L6_3, L7_3)
      L3_3 = L2_2
      L4_3 = L3_3
      L3_3 = L3_3.setMix
      L5_3 = A1_3
      L6_3 = "run3"
      L7_3 = A2_3
      L3_3(L4_3, L5_3, L6_3, L7_3)
    end
  end
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L5_2
    L1_3 = 1
    L2_3 = "jump_start"
    L3_3 = 0.1
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L5_2
    L1_3 = 1
    L2_3 = "slide"
    L3_3 = 0.2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L5_2
    L1_3 = 1
    L2_3 = "idle"
    L3_3 = 0.2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L5_2
    L1_3 = 1
    L2_3 = "idle_var1"
    L3_3 = 0.2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L5_2
    L1_3 = 1
    L2_3 = "idle_var2"
    L3_3 = 0.2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L5_2
    L1_3 = 1
    L2_3 = "happy"
    L3_3 = 0.2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L5_2
    L1_3 = 1
    L2_3 = "sad"
    L3_3 = 0.2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L5_2
    L1_3 = 1
    L2_3 = "jump_fall"
    L3_3 = 0.1
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "run_board"
    L3_3 = "jump_start"
    L4_3 = 0.1
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "run_board"
    L3_3 = "slide"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "run_board"
    L3_3 = "idle"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "run_board"
    L3_3 = "idle_var1"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "run_board"
    L3_3 = "idle_var2"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "run_board"
    L3_3 = "happy"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "run_board"
    L3_3 = "sad"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "run_board"
    L3_3 = "jump_fall"
    L4_3 = 0.1
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "jump_start"
    L3_3 = "jump_fall"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L5_2
    L1_3 = 2
    L2_3 = "jump_start"
    L3_3 = 0.2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "jump_start"
    L3_3 = "run_board"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L5_2
    L1_3 = 2
    L2_3 = "jump_fall"
    L3_3 = 0.1
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "jump_fall"
    L3_3 = "run_board"
    L4_3 = 0.1
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "slide"
    L3_3 = "idle"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "slide"
    L3_3 = "idle_var1"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "slide"
    L3_3 = "idle_var2"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "idle"
    L3_3 = "happy"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L5_2
    L1_3 = 2
    L2_3 = "idle"
    L3_3 = 0.2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "idle"
    L3_3 = "run_board"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "idle"
    L3_3 = "jump_start"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "idle"
    L3_3 = "sad"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "idle_var1"
    L3_3 = "happy"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "idle_var1"
    L3_3 = "run"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L5_2
    L1_3 = 2
    L2_3 = "idle_var1"
    L3_3 = 0.2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "idle_var1"
    L3_3 = "run_board"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "idle_var1"
    L3_3 = "jump_start"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "idle_var1"
    L3_3 = "sad"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "idle_var1"
    L3_3 = "idle"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "idle_var2"
    L3_3 = "happy"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L5_2
    L1_3 = 2
    L2_3 = "idle_var2"
    L3_3 = 0.2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "idle_var2"
    L3_3 = "run_board"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "idle_var2"
    L3_3 = "jump_start"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "idle_var2"
    L3_3 = "sad"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "idle_var2"
    L3_3 = "idle"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "sad"
    L3_3 = "happy"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "sad"
    L3_3 = "idle_var1"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "sad"
    L3_3 = "idle_var2"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "sad"
    L3_3 = "idle"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L5_2
    L1_3 = 2
    L2_3 = "sad"
    L3_3 = 0.2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "sad"
    L3_3 = "run_board"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "happy"
    L3_3 = "sad"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "happy"
    L3_3 = "idle"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "happy"
    L3_3 = "idle_var1"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "happy"
    L3_3 = "idle_var2"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L5_2
    L1_3 = 2
    L2_3 = "happy"
    L3_3 = 0.2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.setMix
    L2_3 = "happy"
    L3_3 = "run_board"
    L4_3 = 0.2
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L5_1
    L0_3 = L0_3.skeletonData
    L1_2 = L0_3
    L0_3 = L5_1
    L0_3 = L0_3.animationStateData
    L2_2 = L0_3
    L0_3 = L6_2
    L0_3()
    L0_3 = L1_1
    L0_3 = L0_3.Skeleton
    L0_3 = L0_3.new
    L1_3 = L1_2
    L0_3 = L0_3(L1_3)
    L3_2 = L0_3
    L0_3 = L1_1
    L0_3 = L0_3.AnimationState
    L0_3 = L0_3.new
    L1_3 = L2_2
    L0_3 = L0_3(L1_3)
    L4_2 = L0_3
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.setToSetupPose
    L0_3(L1_3)
    L0_3 = L3_2
    L0_3.debug = false
  end
  
  function L8_2()
    local L0_3, L1_3
    L0_3 = L3_2
    return L0_3
  end
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = L1_2
    return L0_3
  end
  
  function L10_2()
    local L0_3, L1_3
    L0_3 = L4_2
    return L0_3
  end
  
  L11_2 = L7_2
  L11_2()
  L0_2.getSkeletonData = L9_2
  L0_2.getSkeleton = L8_2
  L0_2.getAnimationState = L10_2
  return L0_2
end

L0_1.newMonster = L10_1

function L10_1()
  local L0_2, L1_2
  L0_2 = true
  L3_1 = L0_2
  L0_2 = L2_1
  L0_2 = L0_2.config
  L0_2 = L0_2.numberOfMonsters
  L7_1 = L0_2
end

L0_1.init = L10_1

function L10_1(A0_2, A1_2)
end

L0_1.createMonster = L10_1
return L0_1
