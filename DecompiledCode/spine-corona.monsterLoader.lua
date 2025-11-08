local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = require
L2_1 = "spine-corona.interface"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)

function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2
  L4_2 = require
  L5_2 = "lua.modules.clans.clanEmblem"
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = A0_2
  L7_2 = nil
  L8_2 = nil
  L9_2 = nil
  L10_2 = nil
  L11_2 = nil
  L12_2 = nil
  L13_2 = nil
  L14_2 = nil
  L15_2 = false
  L16_2 = nil
  L17_2 = nil
  L18_2 = nil
  L19_2 = nil
  L20_2 = nil
  L21_2 = nil
  L22_2 = nil
  L23_2 = nil
  L24_2 = nil
  L25_2 = nil
  L26_2 = nil
  L27_2 = nil
  L28_2 = nil
  L29_2 = nil
  L30_2 = nil
  L31_2 = nil
  L32_2 = nil
  L33_2 = nil
  L34_2 = nil
  L35_2 = nil
  L36_2 = nil
  L37_2 = nil
  L38_2 = nil
  L39_2 = nil
  L40_2 = 0
  L41_2 = 1
  L42_2 = nil
  L43_2 = nil
  L44_2 = nil
  L45_2 = 1401
  L46_2 = 1601
  L47_2 = 1701
  L48_2 = 1801
  L49_2 = 1901
  L50_2 = false
  L51_2 = nil
  
  function L52_2()
    local L0_3, L1_3, L2_3
    L0_3 = A3_2
    if not L0_3 then
      return
    end
    L0_3 = L4_2
    L0_3 = L0_3.create
    L1_3 = A3_2
    L2_3 = true
    L0_3 = L0_3(L1_3, L2_3)
    L51_2 = L0_3
    L0_3 = L51_2
    L0_3 = L0_3.setEmblemSize
    L1_3 = 0.7
    L0_3(L1_3)
    L0_3 = L51_2
    L0_3.isVisible = false
  end
  
  function L53_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = string
    L1_3 = L1_3.find
    L2_3 = A0_3
    L3_3 = "[%w_]+/[%w_]+/"
    L1_3, L2_3 = L1_3(L2_3, L3_3)
    if not L1_3 or L2_3 then
      L3_3 = string
      L3_3 = L3_3.find
      L4_3 = A0_3
      L5_3 = "[%w_]+/"
      L3_3, L4_3 = L3_3(L4_3, L5_3)
      L2_3 = L4_3
      L1_3 = L3_3
    end
    L3_3 = string
    L3_3 = L3_3.sub
    L4_3 = A0_3
    L5_3 = L1_3
    L6_3 = L2_3 - 1
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L4_3 = string
    L4_3 = L4_3.sub
    L5_3 = A0_3
    L6_3 = L2_3 + 1
    L7_3 = string
    L7_3 = L7_3.len
    L8_3 = A0_3
    L7_3, L8_3 = L7_3(L8_3)
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
    L5_3 = L3_3
    L6_3 = L4_3
    return L5_3, L6_3
  end
  
  function L54_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L53_2
    L2_3 = A0_3
    L1_3, L2_3 = L1_3(L2_3)
    L3_3 = L35_2
    if L1_3 == L3_3 then
      L3_3 = nil
      L4_3 = L2_3
      return L3_3, L4_3
    elseif L1_3 == "powerups" then
      L3_3 = L1_3
      L4_3 = L2_3
      return L3_3, L4_3
    elseif L1_3 == "neck" then
      L3_3 = L1_3
      L4_3 = L2_3
      return L3_3, L4_3
    else
      L3_3 = false
      return L3_3
    end
  end
  
  function L55_2(A0_3)
    local L1_3
    if A0_3 then
      L1_3 = "run_board"
      L14_2 = L1_3
    else
      L1_3 = L17_2
      if L1_3 == 1 then
        L1_3 = "run"
        L14_2 = L1_3
      else
        L1_3 = L17_2
        if L1_3 == 2 then
          L1_3 = "run2"
          L14_2 = L1_3
        else
          L1_3 = L17_2
          if L1_3 == 3 then
            L1_3 = "run3"
            L14_2 = L1_3
          end
        end
      end
    end
  end
  
  function L56_2()
    local L0_3, L1_3
    L0_3 = L9_2
    
    function L1_3(A0_4, A1_4)
      local L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4
      L2_4 = L2_1
      L2_4 = L2_4.debugger
      L2_4 = L2_4.profile
      L3_4 = "CreateImage"
      L2_4(L3_4)
      L2_4 = L54_2
      L3_4 = A1_4.name
      L2_4, L3_4 = L2_4(L3_4)
      L4_4 = nil
      if not L2_4 and L3_4 then
        L5_4 = L38_2
        if L5_4 then
          L5_4 = L38_2
          L6_4 = L5_4
          L5_4 = L5_4.getFrameIndex
          L7_4 = L3_4
          L5_4 = L5_4(L6_4, L7_4)
          L6_4 = display
          L6_4 = L6_4.newSprite
          L7_4 = L37_2
          L8_4 = L39_2
          L6_4 = L6_4(L7_4, L8_4)
          L4_4 = L6_4
          L7_4 = L4_4
          L6_4 = L4_4.setFrame
          L8_4 = L5_4
          L6_4(L7_4, L8_4)
      end
      else
        if L2_4 and L2_4 == "powerups" then
          L5_4 = L22_2
          if L5_4 then
            L5_4 = L25_2
            if L5_4 then
              L5_4 = L53_2
              L6_4 = L3_4
              L5_4, L6_4 = L5_4(L6_4)
              L7_4 = nil
              if L5_4 == "speed" then
                L8_4 = L25_2
                L9_4 = L8_4
                L8_4 = L8_4.getFrameIndex
                L10_4 = L6_4
                L8_4 = L8_4(L9_4, L10_4)
                L7_4 = L8_4
                L8_4 = display
                L8_4 = L8_4.newSprite
                L9_4 = L24_2
                L10_4 = L26_2
                L8_4 = L8_4(L9_4, L10_4)
                L4_4 = L8_4
              else
                L8_4 = L22_2
                L9_4 = L8_4
                L8_4 = L8_4.getFrameIndex
                L10_4 = L6_4
                L8_4 = L8_4(L9_4, L10_4)
                L7_4 = L8_4
                L8_4 = display
                L8_4 = L8_4.newSprite
                L9_4 = L21_2
                L10_4 = L23_2
                L8_4 = L8_4(L9_4, L10_4)
                L4_4 = L8_4
              end
              L9_4 = L4_4
              L8_4 = L4_4.setFrame
              L10_4 = L7_4
              L8_4(L9_4, L10_4)
          end
        end
        else
          if L2_4 then
            L5_4 = L51_2
            if L5_4 and L2_4 == "neck" and L3_4 == "554" then
              L5_4 = display
              L5_4 = L5_4.newGroup
              L5_4 = L5_4()
              
              function L6_4()
                local L0_5, L1_5
              end
              
              L5_4.setFillColor = L6_4
              L6_4 = "images/monsters/"
              L7_4 = A1_4.name
              L6_4 = L6_4 .. L7_4
              L7_4 = display
              L7_4 = L7_4.newImage
              L8_4 = L6_4
              L9_4 = ".png"
              L8_4 = L8_4 .. L9_4
              L7_4 = L7_4(L8_4)
              L9_4 = L5_4
              L8_4 = L5_4.insert
              L10_4 = L7_4
              L8_4(L9_4, L10_4)
              L8_4 = L51_2
              L8_4.isVisible = true
              L8_4 = L51_2
              L9_4 = L8_4
              L8_4 = L8_4.rotate
              L10_4 = -10
              L8_4(L9_4, L10_4)
              L8_4 = L51_2
              L8_4.x = 11
              L8_4 = L51_2
              L8_4.y = 14
              L9_4 = L5_4
              L8_4 = L5_4.insert
              L10_4 = L51_2
              L8_4(L9_4, L10_4)
              L4_4 = L5_4
          end
          else
            L5_4 = "images/monsters/"
            L6_4 = A1_4.name
            L5_4 = L5_4 .. L6_4
            L6_4 = L2_1
            L6_4 = L6_4.debugger
            L6_4 = L6_4.profile
            L7_4 = "CreateImage"
            L6_4(L7_4)
            if L3_4 == "554" then
              L6_4 = L9_2
              L7_4 = L6_4
              L6_4 = L6_4.setAttachment
              L8_4 = "neck"
              L9_4 = nil
              L6_4(L7_4, L8_4, L9_4)
              return
            end
            L6_4 = display
            L6_4 = L6_4.newImage
            L7_4 = L5_4
            L8_4 = ".png"
            L7_4 = L7_4 .. L8_4
            return L6_4(L7_4)
          end
        end
      end
      L5_4 = L2_1
      L5_4 = L5_4.debugger
      L5_4 = L5_4.profile
      L6_4 = "CreateImage"
      L5_4(L6_4)
      return L4_4
    end
    
    L0_3.createImage = L1_3
    L0_3 = L9_2
    
    function L1_3(A0_4, A1_4, A2_4)
      local L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4
      L3_4 = A1_4.setFrame
      if L3_4 then
        L3_4 = L2_1
        L3_4 = L3_4.debugger
        L3_4 = L3_4.profile
        L4_4 = "ModifyImage"
        L3_4(L4_4)
        L3_4 = L54_2
        L4_4 = A2_4.name
        L3_4, L4_4 = L3_4(L4_4)
        L5_4 = nil
        if not L3_4 and L4_4 then
          L6_4 = L38_2
          if L6_4 then
            L6_4 = L38_2
            L7_4 = L6_4
            L6_4 = L6_4.getFrameIndex
            L8_4 = L4_4
            L6_4 = L6_4(L7_4, L8_4)
            L5_4 = L6_4
        end
        elseif L3_4 and L3_4 == "powerups" then
          L6_4 = L22_2
          if L6_4 then
            L6_4 = L53_2
            L7_4 = L4_4
            L6_4, L7_4 = L6_4(L7_4)
            if L6_4 == "speed" then
              L8_4 = L25_2
              L9_4 = L8_4
              L8_4 = L8_4.getFrameIndex
              L10_4 = L7_4
              L8_4 = L8_4(L9_4, L10_4)
              L5_4 = L8_4
            else
              L8_4 = L22_2
              L9_4 = L8_4
              L8_4 = L8_4.getFrameIndex
              L10_4 = L7_4
              L8_4 = L8_4(L9_4, L10_4)
              L5_4 = L8_4
            end
          end
        end
        L7_4 = A1_4
        L6_4 = A1_4.setFrame
        L8_4 = L5_4
        L6_4(L7_4, L8_4)
        L6_4 = L2_1
        L6_4 = L6_4.debugger
        L6_4 = L6_4.profile
        L7_4 = "ModifyImage"
        L6_4(L7_4)
        L6_4 = true
        return L6_4
      else
        L3_4 = false
        return L3_4
      end
    end
    
    L0_3.modifyImage = L1_3
  end
  
  function L57_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = 1
    L27_2 = L0_3
    L0_3 = 0
    L28_2 = L0_3
    L0_3 = tonumber
    L1_3 = L27_2
    L2_3 = L28_2
    L1_3 = L1_3 .. L2_3
    L0_3 = L0_3(L1_3)
    L36_2 = L0_3
    L0_3 = "c"
    L1_3 = L27_2
    L2_3 = "s"
    L3_3 = L28_2
    L0_3 = L0_3 .. L1_3 .. L2_3 .. L3_3
    L35_2 = L0_3
    L0_3 = L16_2
    L0_3()
  end
  
  function L16_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = tonumber
    L1_3 = L27_2
    L2_3 = L28_2
    L1_3 = L1_3 .. L2_3
    L0_3 = L0_3(L1_3)
    L36_2 = L0_3
    L0_3 = "c"
    L1_3 = L27_2
    L2_3 = "s"
    L3_3 = L28_2
    L0_3 = L0_3 .. L1_3 .. L2_3 .. L3_3
    L35_2 = L0_3
    
    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L2_1
      L0_4 = L0_4.data
      L0_4 = L0_4.monsterInMemory
      L1_4 = L36_2
      L0_4 = L0_4[L1_4]
      L1_4 = require
      L2_4 = "lua.monsters."
      L3_4 = L35_2
      L2_4 = L2_4 .. L3_4
      L1_4 = L1_4(L2_4)
      L0_4.sheetInfo = L1_4
    end
    
    L1_3 = L2_1
    L1_3 = L1_3.data
    L1_3 = L1_3.monsterInMemory
    L2_3 = L36_2
    L1_3 = L1_3[L2_3]
    if not L1_3 then
      L1_3 = L2_1
      L1_3 = L1_3.data
      L1_3 = L1_3.monsterInMemory
      L2_3 = L36_2
      L3_3 = {}
      L1_3[L2_3] = L3_3
      L1_3 = pcall
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        L2_3 = print
        L3_3 = "WARNING:failed to find monster in lua, go default c1s0 "
        L4_3 = L35_2
        L2_3(L3_3, L4_3)
        L2_3 = L2_1
        L2_3 = L2_3.data
        L2_3 = L2_3.monsterInMemory
        L3_3 = L36_2
        L2_3[L3_3] = nil
        L2_3 = L57_2
        L2_3()
        return
      end
      L2_3 = L2_1
      L2_3 = L2_3.data
      L2_3 = L2_3.monsterInMemory
      L3_3 = L36_2
      L2_3 = L2_3[L3_3]
      L3_3 = graphics
      L3_3 = L3_3.newImageSheet
      L4_3 = "images/monsters/"
      L5_3 = L35_2
      L6_3 = "/monster.png"
      L4_3 = L4_3 .. L5_3 .. L6_3
      L5_3 = L2_1
      L5_3 = L5_3.data
      L5_3 = L5_3.monsterInMemory
      L6_3 = L36_2
      L5_3 = L5_3[L6_3]
      L5_3 = L5_3.sheetInfo
      L6_3 = L5_3
      L5_3 = L5_3.getSheet
      L5_3, L6_3 = L5_3(L6_3)
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3.sheet = L3_3
    else
    end
    L1_3 = L2_1
    L1_3 = L1_3.data
    L1_3 = L1_3.monsterInMemory
    L2_3 = L36_2
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.sheetInfo
    L38_2 = L1_3
    L1_3 = L2_1
    L1_3 = L1_3.data
    L1_3 = L1_3.monsterInMemory
    L2_3 = L36_2
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.sheet
    L37_2 = L1_3
  end
  
  function L58_2()
    local L0_3, L1_3
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setBonesToSetupPose
    L0_3(L1_3)
  end
  
  L5_2.resetBones = L58_2
  
  function L58_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L2_1
    L0_3 = L0_3.storeConfig
    L0_3 = L0_3.canDrawItem
    L1_3 = L29_2
    L0_3 = L0_3(L1_3)
    if L0_3 == false then
      L0_3 = 0
      L29_2 = L0_3
    end
    L0_3 = L29_2
    if L0_3 ~= nil then
      L0_3 = L29_2
      if L0_3 ~= 0 then
        goto lbl_27
      end
    end
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "hat"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "hair"
    L3_3 = "hair"
    L0_3(L1_3, L2_3, L3_3)
    goto lbl_37
    ::lbl_27::
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "hat"
    L3_3 = L29_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "hair"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
    ::lbl_37::
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.findSlot
    L2_3 = "hat"
    L0_3 = L0_3(L1_3, L2_3)
    L0_3 = L0_3.attachment
    if not L0_3 then
      L0_3 = L9_2
      L1_3 = L0_3
      L0_3 = L0_3.setAttachment
      L2_3 = "hat"
      L3_3 = nil
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L9_2
      L1_3 = L0_3
      L0_3 = L0_3.setAttachment
      L2_3 = "hair"
      L3_3 = "hair"
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L29_2
      if L0_3 ~= nil then
        L0_3 = L29_2
        if L0_3 ~= 0 then
          L0_3 = print
          L1_3 = "WARNING: failed to find hat in spine, set default"
          L0_3(L1_3)
        end
      end
    end
  end
  
  function L59_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L2_1
    L0_3 = L0_3.storeConfig
    L0_3 = L0_3.canDrawItem
    L1_3 = L31_2
    L0_3 = L0_3(L1_3)
    if L0_3 == false then
      L0_3 = 0
      L31_2 = L0_3
    end
    L0_3 = L31_2
    if L0_3 ~= nil then
      L0_3 = L31_2
      if L0_3 ~= 0 then
        goto lbl_22
      end
    end
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "neck"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
    goto lbl_27
    ::lbl_22::
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "neck"
    L3_3 = L31_2
    L0_3(L1_3, L2_3, L3_3)
    ::lbl_27::
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.findSlot
    L2_3 = "neck"
    L0_3 = L0_3(L1_3, L2_3)
    L0_3 = L0_3.attachment
    if not L0_3 then
      L0_3 = L9_2
      L1_3 = L0_3
      L0_3 = L0_3.setAttachment
      L2_3 = "neck"
      L3_3 = nil
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L31_2
      if L0_3 ~= nil then
        L0_3 = L31_2
        if L0_3 ~= 0 then
          L0_3 = print
          L1_3 = "WARNING: failed to find neck in spine, set default"
          L0_3(L1_3)
        end
      end
    end
  end
  
  function L60_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = L9_2
    L2_3 = L1_3
    L1_3 = L1_3.setAttachment
    L3_3 = "facewear"
    L4_3 = nil
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = display
    L1_3 = L1_3.newImage
    L2_3 = "images/monsters/facewear/430.png"
    L1_3 = L1_3(L2_3)
    L18_2 = L1_3
    L1_3 = L18_2
    L1_3.y = -300
    L1_3 = L18_2
    L1_3.x = 0
    L1_3 = 2000
    if A0_3 == 2 then
      L1_3 = 1200
    end
    L2_3 = L11_2
    L3_3 = L2_3
    L2_3 = L2_3.insert
    L4_3 = L18_2
    L2_3(L3_3, L4_3)
    
    function L2_3()
      local L0_4, L1_4
      L0_4 = L19_2
      L0_4.isVisible = false
    end
    
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
      L0_4 = L9_2
      L1_4 = L0_4
      L0_4 = L0_4.setAttachment
      L2_4 = "facewear"
      L3_4 = L30_2
      L0_4(L1_4, L2_4, L3_4)
      L0_4 = L2_1
      L0_4 = L0_4.newText
      L1_4 = {}
      L2_4 = L2_1
      L2_4 = L2_4.localized
      L2_4 = L2_4.get
      L3_4 = "DEAL WITH IT"
      L2_4 = L2_4(L3_4)
      L1_4.string = L2_4
      L1_4.size = 30
      L1_4.ax = 0.5
      L2_4 = {}
      L3_4 = 1
      L4_4 = 1
      L5_4 = 1
      L2_4[1] = L3_4
      L2_4[2] = L4_4
      L2_4[3] = L5_4
      L1_4.color = L2_4
      L0_4 = L0_4(L1_4)
      L19_2 = L0_4
      L0_4 = L19_2
      L0_4.y = -234
      L0_4 = L19_2
      L0_4.x = 0
      L0_4 = L11_2
      L1_4 = L0_4
      L0_4 = L0_4.insert
      L2_4 = L19_2
      L0_4(L1_4, L2_4)
      L0_4 = transition
      L0_4 = L0_4.to
      L1_4 = L19_2
      L2_4 = {}
      L2_4.time = 200
      L2_4.delay = 1200
      L2_4.alpha = 0
      L3_4 = L2_3
      L2_4.onComplete = L3_4
      L0_4 = L0_4(L1_4, L2_4)
      L42_2 = L0_4
      L0_4 = transition
      L0_4 = L0_4.to
      L1_4 = L18_2
      L2_4 = {}
      L2_4.time = 100
      L2_4.alpha = 0
      L0_4 = L0_4(L1_4, L2_4)
      L43_2 = L0_4
    end
    
    L4_3 = transition
    L4_3 = L4_3.to
    L5_3 = L18_2
    L6_3 = {}
    L6_3.time = 2000
    L6_3.delay = 200
    L6_3.delta = true
    L6_3.y = 130
    L6_3.onComplete = L3_3
    L4_3 = L4_3(L5_3, L6_3)
    L42_2 = L4_3
  end
  
  function L61_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L2_1
    L0_3 = L0_3.storeConfig
    L0_3 = L0_3.canDrawItem
    L1_3 = L30_2
    L0_3 = L0_3(L1_3)
    if L0_3 == false then
      L0_3 = 0
      L30_2 = L0_3
    end
    L0_3 = L30_2
    if L0_3 ~= nil then
      L0_3 = L30_2
      if L0_3 ~= 0 then
        goto lbl_22
      end
    end
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "facewear"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
    goto lbl_27
    ::lbl_22::
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "facewear"
    L3_3 = L30_2
    L0_3(L1_3, L2_3, L3_3)
    ::lbl_27::
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.findSlot
    L2_3 = "facewear"
    L0_3 = L0_3(L1_3, L2_3)
    L0_3 = L0_3.attachment
    if not L0_3 then
      L0_3 = L9_2
      L1_3 = L0_3
      L0_3 = L0_3.setAttachment
      L2_3 = "facewear"
      L3_3 = nil
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L30_2
      if L0_3 ~= nil then
        L0_3 = L30_2
        if L0_3 ~= 0 then
          L0_3 = print
          L1_3 = "WARNING: failed to find facewear in spine, set default"
          L0_3(L1_3)
        end
      end
    end
  end
  
  function L62_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    
    function L0_3()
      local L0_4, L1_4, L2_4
      L0_4 = L9_2
      L1_4 = L0_4
      L0_4 = L0_4.setSkin
      L2_4 = L35_2
      L0_4(L1_4, L2_4)
    end
    
    L1_3 = pcall
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      L2_3 = L57_2
      L2_3()
      L2_3 = L9_2
      L3_3 = L2_3
      L2_3 = L2_3.setSkin
      L4_3 = "c1s0"
      L2_3(L3_3, L4_3)
      L2_3 = print
      L3_3 = "WARNING: failed to find skin or monster in spine, set default"
      L2_3(L3_3)
    end
  end
  
  function L63_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L2_1
    L0_3 = L0_3.storeConfig
    L0_3 = L0_3.canDrawItem
    L1_3 = L33_2
    L0_3 = L0_3(L1_3)
    if L0_3 == false then
      L0_3 = 0
      L33_2 = L0_3
    end
    L0_3 = L33_2
    if L0_3 ~= nil then
      L0_3 = L33_2
      if L0_3 ~= 0 then
        goto lbl_35
      end
    end
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "board"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "foot_l"
    L3_3 = "0"
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "foot_r"
    L3_3 = "0"
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L55_2
    L1_3 = false
    L0_3(L1_3)
    goto lbl_87
    ::lbl_35::
    L0_3 = L2_1
    L0_3 = L0_3.storeConfig
    L0_3 = L0_3.isBoard
    L1_3 = L33_2
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = L9_2
      L1_3 = L0_3
      L0_3 = L0_3.setAttachment
      L2_3 = "foot_l"
      L3_3 = nil
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L9_2
      L1_3 = L0_3
      L0_3 = L0_3.setAttachment
      L2_3 = "foot_r"
      L3_3 = nil
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L9_2
      L1_3 = L0_3
      L0_3 = L0_3.setAttachment
      L2_3 = "board"
      L3_3 = "shoes/"
      L4_3 = L33_2
      L3_3 = L3_3 .. L4_3
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L55_2
      L1_3 = true
      L0_3(L1_3)
    else
      L0_3 = L9_2
      L1_3 = L0_3
      L0_3 = L0_3.setAttachment
      L2_3 = "board"
      L3_3 = nil
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L9_2
      L1_3 = L0_3
      L0_3 = L0_3.setAttachment
      L2_3 = "foot_l"
      L3_3 = "shoes/"
      L4_3 = L33_2
      L5_3 = "l"
      L3_3 = L3_3 .. L4_3 .. L5_3
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L9_2
      L1_3 = L0_3
      L0_3 = L0_3.setAttachment
      L2_3 = "foot_r"
      L3_3 = "shoes/"
      L4_3 = L33_2
      L5_3 = "r"
      L3_3 = L3_3 .. L4_3 .. L5_3
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L55_2
      L1_3 = false
      L0_3(L1_3)
    end
    ::lbl_87::
    L0_3 = true
    L1_3 = L9_2
    L2_3 = L1_3
    L1_3 = L1_3.findSlot
    L3_3 = "board"
    L1_3 = L1_3(L2_3, L3_3)
    L1_3 = L1_3.attachment
    if L1_3 then
      L0_3 = false
    end
    L1_3 = L9_2
    L2_3 = L1_3
    L1_3 = L1_3.findSlot
    L3_3 = "foot_l"
    L1_3 = L1_3(L2_3, L3_3)
    L1_3 = L1_3.attachment
    if L1_3 then
      L1_3 = L9_2
      L2_3 = L1_3
      L1_3 = L1_3.findSlot
      L3_3 = "foot_r"
      L1_3 = L1_3(L2_3, L3_3)
      L1_3 = L1_3.attachment
      if L1_3 then
        L0_3 = false
      end
    end
    if L0_3 then
      L1_3 = L9_2
      L2_3 = L1_3
      L1_3 = L1_3.setAttachment
      L3_3 = "board"
      L4_3 = nil
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = L9_2
      L2_3 = L1_3
      L1_3 = L1_3.setAttachment
      L3_3 = "foot_l"
      L4_3 = "0"
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = L9_2
      L2_3 = L1_3
      L1_3 = L1_3.setAttachment
      L3_3 = "foot_r"
      L4_3 = "0"
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = L55_2
      L2_3 = false
      L1_3(L2_3)
      L1_3 = print
      L2_3 = "WARNING: failed to find foot or board in spine, set default"
      L1_3(L2_3)
    end
  end
  
  function L64_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L2_1
    L0_3 = L0_3.storeConfig
    L0_3 = L0_3.canDrawItem
    L1_3 = L34_2
    L0_3 = L0_3(L1_3)
    if L0_3 == false then
      L0_3 = 0
      L34_2 = L0_3
    end
    L0_3 = L34_2
    if L0_3 ~= nil then
      L0_3 = L34_2
      if L0_3 ~= 0 then
        goto lbl_22
      end
    end
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "backwear"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
    goto lbl_27
    ::lbl_22::
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "backwear"
    L3_3 = L34_2
    L0_3(L1_3, L2_3, L3_3)
    ::lbl_27::
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.findSlot
    L2_3 = "backwear"
    L0_3 = L0_3(L1_3, L2_3)
    L0_3 = L0_3.attachment
    if not L0_3 then
      L0_3 = L9_2
      L1_3 = L0_3
      L0_3 = L0_3.setAttachment
      L2_3 = "backwear"
      L3_3 = nil
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L34_2
      if L0_3 ~= nil then
        L0_3 = L34_2
        if L0_3 ~= 0 then
          L0_3 = print
          L1_3 = "WARNING: failed to find backwear in spine, set default"
          L0_3(L1_3)
        end
      end
    end
  end
  
  function L65_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L9_2
    L2_3 = L1_3
    L1_3 = L1_3.setAttachment
    L3_3 = "bandage_arm_lower"
    L4_3 = nil
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L9_2
    L2_3 = L1_3
    L1_3 = L1_3.setAttachment
    L3_3 = "bandage_arm_upper"
    L4_3 = nil
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L9_2
    L2_3 = L1_3
    L1_3 = L1_3.setAttachment
    L3_3 = "bandage_head_left"
    L4_3 = nil
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L9_2
    L2_3 = L1_3
    L1_3 = L1_3.setAttachment
    L3_3 = "bandage_head_right"
    L4_3 = nil
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L9_2
    L2_3 = L1_3
    L1_3 = L1_3.setAttachment
    L3_3 = "bandage_torso_left"
    L4_3 = nil
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L9_2
    L2_3 = L1_3
    L1_3 = L1_3.setAttachment
    L3_3 = "bandage_torso_right"
    L4_3 = nil
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L9_2
    L2_3 = L1_3
    L1_3 = L1_3.setAttachment
    L3_3 = "bandage_torso_upper"
    L4_3 = nil
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L9_2
    L2_3 = L1_3
    L1_3 = L1_3.setAttachment
    L3_3 = "bandage_eyes"
    L4_3 = nil
    L1_3(L2_3, L3_3, L4_3)
    if A0_3 then
      L1_3 = L9_2
      L2_3 = L1_3
      L1_3 = L1_3.setAttachment
      L3_3 = "bandage_arm_lower"
      L4_3 = "misc/bandage_arm_lower"
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = L9_2
      L2_3 = L1_3
      L1_3 = L1_3.setAttachment
      L3_3 = "bandage_arm_upper"
      L4_3 = "misc/bandage_arm_upper"
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = L9_2
      L2_3 = L1_3
      L1_3 = L1_3.setAttachment
      L3_3 = "bandage_head_left"
      L4_3 = "misc/bandage_head_left"
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = L9_2
      L2_3 = L1_3
      L1_3 = L1_3.setAttachment
      L3_3 = "bandage_head_right"
      L4_3 = "misc/bandage_head_right"
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = L9_2
      L2_3 = L1_3
      L1_3 = L1_3.setAttachment
      L3_3 = "bandage_torso_left"
      L4_3 = "misc/bandage_torso_left"
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = L9_2
      L2_3 = L1_3
      L1_3 = L1_3.setAttachment
      L3_3 = "bandage_torso_right"
      L4_3 = "misc/bandage_torso_right"
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = L9_2
      L2_3 = L1_3
      L1_3 = L1_3.setAttachment
      L3_3 = "bandage_torso_upper"
      L4_3 = "misc/bandage_torso_upper"
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = L9_2
      L2_3 = L1_3
      L1_3 = L1_3.setAttachment
      L3_3 = "bandage_eyes"
      L4_3 = "misc/bandage_eyes"
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  
  L5_2.setBandage = L65_2
  
  function L65_2()
    local L0_3, L1_3
    L0_3 = L62_2
    L0_3()
    L0_3 = L58_2
    L0_3()
    L0_3 = L59_2
    L0_3()
    L0_3 = L61_2
    L0_3()
    L0_3 = L63_2
    L0_3()
    L0_3 = L64_2
    L0_3()
    L0_3 = L5_2
    L0_3 = L0_3.setBandage
    L1_3 = nil
    L0_3(L1_3)
  end
  
  function L66_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L40_2
    L0_3 = L0_3 + 1
    L40_2 = L0_3
    L0_3 = math
    L0_3 = L0_3.random
    L1_3 = 4
    L2_3 = 6
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = math
    L1_3 = L1_3.random
    L2_3 = 110
    L3_3 = 160
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = L41_2
    if L2_3 == 1 then
      L2_3 = L40_2
      if L1_3 < L2_3 then
        L2_3 = 0
        L41_2 = L2_3
        L2_3 = 0
        L40_2 = L2_3
        L2_3 = L9_2
        L3_3 = L2_3
        L2_3 = L2_3.setAttachment
        L4_3 = "eyes"
        L5_3 = "eyes_closed"
        L2_3(L3_3, L4_3, L5_3)
        L2_3 = 0
        L40_2 = L2_3
    end
    else
      L2_3 = L41_2
      if L2_3 == 0 then
        L2_3 = L40_2
        if L0_3 < L2_3 then
          L2_3 = 1
          L41_2 = L2_3
          L2_3 = 0
          L40_2 = L2_3
          L2_3 = L9_2
          L3_3 = L2_3
          L2_3 = L2_3.setAttachment
          L4_3 = "eyes"
          L5_3 = "eyes_normal"
          L2_3(L3_3, L4_3, L5_3)
        end
      end
    end
  end
  
  function L67_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = math
    L0_3 = L0_3.random
    L1_3 = 1
    L2_3 = 100
    L0_3 = L0_3(L1_3, L2_3)
    if 95 < L0_3 then
      L1_3 = L5_2
      L1_3 = L1_3.setAnimation
      L2_3 = "idle_var1"
      L3_3 = true
      L4_3 = nil
      L1_3(L2_3, L3_3, L4_3)
    elseif 90 < L0_3 then
      L1_3 = L5_2
      L1_3 = L1_3.setAnimation
      L2_3 = "idle_var2"
      L3_3 = true
      L4_3 = nil
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  
  function L68_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L15_2
    if L0_3 then
      return
    end
    L0_3 = L2_1
    L0_3 = L0_3.debugger
    L0_3 = L0_3.profile
    L1_3 = "monsterUpdate"
    L0_3(L1_3)
    L0_3 = system
    L0_3 = L0_3.getTimer
    L0_3 = L0_3()
    L0_3 = L0_3 / 1000
    L1_3 = L12_2
    L1_3 = L0_3 - L1_3
    L12_2 = L0_3
    L2_3 = L13_2
    L3_3 = L50_2
    if not L3_3 then
      L3_3 = L10_2
      L4_3 = L3_3
      L3_3 = L3_3.update
      L5_3 = L1_3
      L3_3(L4_3, L5_3)
    end
    L3_3 = L10_2
    L4_3 = L3_3
    L3_3 = L3_3.getCurrent
    L5_3 = 0
    L3_3 = L3_3(L4_3, L5_3)
    if L3_3 then
      L3_3 = L10_2
      L4_3 = L3_3
      L3_3 = L3_3.getCurrent
      L5_3 = 0
      L3_3 = L3_3(L4_3, L5_3)
      L3_3.timeScale = L2_3
    end
    L3_3 = L10_2
    L4_3 = L3_3
    L3_3 = L3_3.apply
    L5_3 = L9_2
    L3_3(L4_3, L5_3)
    L3_3 = L9_2
    L4_3 = L3_3
    L3_3 = L3_3.updateWorldTransform
    L3_3(L4_3)
    L3_3 = L2_1
    L3_3 = L3_3.debugger
    L3_3 = L3_3.profile
    L4_3 = "monsterUpdate"
    L3_3(L4_3)
    L3_3 = L66_2
    L3_3()
    L3_3 = L18_2
    if L3_3 then
      L3_3 = L11_2
      L4_3 = L3_3
      L3_3 = L3_3.insert
      L5_3 = L18_2
      L3_3(L4_3, L5_3)
    end
    L3_3 = L19_2
    if L3_3 then
      L3_3 = L11_2
      L4_3 = L3_3
      L3_3 = L3_3.insert
      L5_3 = L19_2
      L3_3(L4_3, L5_3)
    end
  end
  
  function L69_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L52_2
    L0_3()
    L0_3 = L2_1
    L0_3 = L0_3.debugger
    L0_3 = L0_3.debugTable
    L1_3 = "spine"
    L2_3 = "monsterData :"
    L3_3 = L6_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A1_2
    if L0_3 then
      L0_3 = L2_1
      L0_3 = L0_3.monsterConverter
      L0_3 = L0_3.fromServerFormat
      L1_3 = L6_2
      L0_3 = L0_3(L1_3)
      L6_2 = L0_3
    end
    L0_3 = L6_2
    if L0_3 ~= nil then
      L0_3 = type
      L1_3 = L6_2
      L0_3 = L0_3(L1_3)
      if L0_3 == "table" then
        goto lbl_37
      end
    end
    L0_3 = {}
    L1_3 = 1
    L2_3 = 0
    L3_3 = 0
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L0_3[1] = L1_3
    L0_3[2] = L2_3
    L0_3[3] = L3_3
    L0_3[4] = L4_3
    L0_3[5] = L5_3
    L0_3[6] = L6_3
    L0_3[7] = L7_3
    L6_2 = L0_3
    ::lbl_37::
    L0_3 = L6_2
    L0_3 = L0_3[1]
    L27_2 = L0_3
    L0_3 = tonumber
    L1_3 = L6_2
    L1_3 = L1_3[2]
    L0_3 = L0_3(L1_3)
    L28_2 = L0_3
    L0_3 = L6_2
    L0_3 = L0_3[3]
    L29_2 = L0_3
    L0_3 = L6_2
    L0_3 = L0_3[4]
    L30_2 = L0_3
    L0_3 = L6_2
    L0_3 = L0_3[5]
    L31_2 = L0_3
    L0_3 = L6_2
    L0_3 = L0_3[6]
    L32_2 = L0_3
    L0_3 = L6_2
    L0_3 = L0_3[7]
    L33_2 = L0_3
    L0_3 = L6_2
    L0_3 = L0_3[8]
    L34_2 = L0_3
    L0_3 = L2_1
    L0_3 = L0_3.storeConfig
    L0_3 = L0_3.getRunningType
    L1_3 = L6_2
    L1_3 = L1_3[1]
    L0_3 = L0_3(L1_3)
    L17_2 = L0_3
    L0_3 = L27_2
    if L0_3 ~= nil then
      L0_3 = L28_2
      if L0_3 ~= nil then
        goto lbl_81
      end
    end
    L0_3 = 1
    L27_2 = L0_3
    L0_3 = 0
    L28_2 = L0_3
    goto lbl_107
    ::lbl_81::
    L0_3 = L28_2
    if L0_3 ~= 0 then
      L0_3 = L28_2
      if 100 < L0_3 then
        L0_3 = L2_1
        L0_3 = L0_3.storeConfig
        L0_3 = L0_3.getItem
        L1_3 = L28_2
        L0_3 = L0_3(L1_3)
        if L0_3 == false then
          L1_3 = 0
          L28_2 = L1_3
        else
          L1_3 = L0_3.skinId
          L28_2 = L1_3
        end
        L1_3 = L28_2
        if L1_3 == nil then
          L1_3 = 0
          L28_2 = L1_3
        end
      end
    end
    L0_3 = L27_2
    L0_3 = L0_3 - 100
    L27_2 = L0_3
    ::lbl_107::
    L0_3 = A2_2
    if L0_3 then
      L0_3 = 1
      L1_3 = A2_2
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L2_1
        L4_3 = L4_3.storeConfig
        L4_3 = L4_3.canDrawItem
        L5_3 = tonumber
        L6_3 = A2_2
        L6_3 = L6_3[L3_3]
        L5_3, L6_3, L7_3 = L5_3(L6_3)
        L4_3 = L4_3(L5_3, L6_3, L7_3)
        if L4_3 then
          L4_3 = L2_1
          L4_3 = L4_3.storeConfig
          L4_3 = L4_3.getItemCategory
          L5_3 = tonumber
          L6_3 = A2_2
          L6_3 = L6_3[L3_3]
          L5_3, L6_3, L7_3 = L5_3(L6_3)
          L4_3 = L4_3(L5_3, L6_3, L7_3)
          if L4_3 == "rocket" then
            L4_3 = A2_2
            L4_3 = L4_3[L3_3]
            L45_2 = L4_3
          else
            L4_3 = L2_1
            L4_3 = L4_3.storeConfig
            L4_3 = L4_3.getItemCategory
            L5_3 = tonumber
            L6_3 = A2_2
            L6_3 = L6_3[L3_3]
            L5_3, L6_3, L7_3 = L5_3(L6_3)
            L4_3 = L4_3(L5_3, L6_3, L7_3)
            if L4_3 == "balloon" then
              L4_3 = A2_2
              L4_3 = L4_3[L3_3]
              L46_2 = L4_3
            else
              L4_3 = L2_1
              L4_3 = L4_3.storeConfig
              L4_3 = L4_3.getItemCategory
              L5_3 = tonumber
              L6_3 = A2_2
              L6_3 = L6_3[L3_3]
              L5_3, L6_3, L7_3 = L5_3(L6_3)
              L4_3 = L4_3(L5_3, L6_3, L7_3)
              if L4_3 == "magnet" then
                L4_3 = A2_2
                L4_3 = L4_3[L3_3]
                L47_2 = L4_3
              else
                L4_3 = L2_1
                L4_3 = L4_3.storeConfig
                L4_3 = L4_3.getItemCategory
                L5_3 = tonumber
                L6_3 = A2_2
                L6_3 = L6_3[L3_3]
                L5_3, L6_3, L7_3 = L5_3(L6_3)
                L4_3 = L4_3(L5_3, L6_3, L7_3)
                if L4_3 == "gun" then
                  L4_3 = A2_2
                  L4_3 = L4_3[L3_3]
                  L48_2 = L4_3
                else
                  L4_3 = L2_1
                  L4_3 = L4_3.storeConfig
                  L4_3 = L4_3.getItemCategory
                  L5_3 = tonumber
                  L6_3 = A2_2
                  L6_3 = L6_3[L3_3]
                  L5_3, L6_3, L7_3 = L5_3(L6_3)
                  L4_3 = L4_3(L5_3, L6_3, L7_3)
                  if L4_3 == "speed" then
                    L4_3 = A2_2
                    L4_3 = L4_3[L3_3]
                    L49_2 = L4_3
                  end
                end
              end
            end
          end
        end
      end
    end
    L0_3 = L16_2
    L0_3()
    L0_3 = {}
    L0_3.start = 1
    L1_3 = L38_2
    L2_3 = L1_3
    L1_3 = L1_3.getSheet
    L1_3 = L1_3(L2_3)
    L1_3 = L1_3.frames
    L1_3 = #L1_3
    L0_3.count = L1_3
    L39_2 = L0_3
    L0_3 = L2_1
    L0_3 = L0_3.characterPowerUpEffectsImageSheetInfo
    L22_2 = L0_3
    L0_3 = L2_1
    L0_3 = L0_3.characterPowerUpEffectsImageSheet
    L21_2 = L0_3
    L0_3 = {}
    L0_3.start = 1
    L1_3 = L22_2
    L2_3 = L1_3
    L1_3 = L1_3.getSheet
    L1_3 = L1_3(L2_3)
    L1_3 = L1_3.frames
    L1_3 = #L1_3
    L0_3.count = L1_3
    L23_2 = L0_3
    L0_3 = L2_1
    L0_3 = L0_3.characterPowerUpEffectsSpeedImageSheetInfo
    L25_2 = L0_3
    L0_3 = L2_1
    L0_3 = L0_3.characterPowerUpEffectsSpeedImageSheet
    L24_2 = L0_3
    L0_3 = {}
    L0_3.start = 1
    L1_3 = L25_2
    L2_3 = L1_3
    L1_3 = L1_3.getSheet
    L1_3 = L1_3(L2_3)
    L1_3 = L1_3.frames
    L1_3 = #L1_3
    L0_3.count = L1_3
    L26_2 = L0_3
    L0_3 = L1_1
    L0_3 = L0_3.newMonster
    L0_3 = L0_3()
    L8_2 = L0_3
    L0_3 = L8_2
    L0_3 = L0_3.getSkeleton
    L0_3 = L0_3()
    L9_2 = L0_3
    L0_3 = L8_2
    L0_3 = L0_3.getSkeletonData
    L0_3 = L0_3()
    L7_2 = L0_3
    L0_3 = L8_2
    L0_3 = L0_3.getAnimationState
    L0_3 = L0_3()
    L10_2 = L0_3
    L0_3 = L56_2
    L0_3()
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setSlotsToSetupPose
    L0_3(L1_3)
    L0_3 = L65_2
    L0_3()
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.updateWorldTransform
    L0_3(L1_3)
    L0_3 = L9_2
    L0_3 = L0_3.group
    L11_2 = L0_3
    L0_3 = L11_2
    L0_3.y = 24
    L0_3 = system
    L0_3 = L0_3.getTimer
    L0_3 = L0_3()
    L0_3 = L0_3 / 1000
    L12_2 = L0_3
    L0_3 = 1
    L13_2 = L0_3
    L0_3 = L10_2
    L1_3 = L0_3
    L0_3 = L0_3.addAnimationByName
    L2_3 = 0
    L3_3 = "idle"
    L4_3 = true
    L5_3 = nil
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L0_3 = L10_2
    L1_3 = L0_3
    L0_3 = L0_3.getCurrent
    L2_3 = 0
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = math
    L1_3 = L1_3.random
    L2_3 = 0
    L3_3 = 150
    L1_3 = L1_3(L2_3, L3_3)
    L0_3.time = L1_3
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "enterFrame"
    L3_3 = L68_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L2_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.crazyModeActive
    if L0_3 then
      L0_3 = L2_1
      L0_3 = L0_3.getSceneName
      L1_3 = "current"
      L0_3 = L0_3(L1_3)
      if L0_3 == "lua.scenes.gamePlay" then
        L0_3 = L2_1
        L0_3 = L0_3.data
        L0_3 = L0_3.gameInfo
        L0_3 = L0_3.crazyMode
        if L0_3 == 4 then
          L0_3 = L9_2
          L1_3 = L0_3
          L0_3 = L0_3.findBone
          L2_3 = "head"
          L0_3 = L0_3(L1_3, L2_3)
          L0_3.scaleX = 2
          L0_3 = L9_2
          L1_3 = L0_3
          L0_3 = L0_3.findBone
          L2_3 = "head"
          L0_3 = L0_3(L1_3, L2_3)
          L0_3.scaleY = 2
        end
      end
    end
    L0_3 = tonumber
    L1_3 = L30_2
    L0_3 = L0_3(L1_3)
    if L0_3 == 430 then
      L0_3 = L2_1
      L0_3 = L0_3.getSceneName
      L1_3 = "current"
      L0_3 = L0_3(L1_3)
      if L0_3 == "lua.scenes.gamePlay" then
        L0_3 = L60_2
        L1_3 = 1
        L0_3(L1_3)
      else
        L0_3 = L2_1
        L0_3 = L0_3.dealwithit
        if L0_3 then
          L0_3 = L60_2
          L1_3 = 2
          L0_3(L1_3)
        end
      end
    end
  end
  
  function L70_2(A0_3)
    local L1_3
    if A0_3 < 0.1 then
      A0_3 = 0.1
    elseif 1 < A0_3 then
      A0_3 = 1
    end
    L13_2 = A0_3
  end
  
  L5_2.updateSpeed = L70_2
  
  function L70_2()
    local L0_3, L1_3, L2_3
    L0_3 = L10_2
    L1_3 = L0_3
    L0_3 = L0_3.getCurrent
    L2_3 = 0
    L0_3 = L0_3(L1_3, L2_3)
    if L0_3 then
      L1_3 = L0_3.endTime
      L2_3 = L0_3.time
      L1_3 = L1_3 <= L2_3
      return L1_3
    end
    L1_3 = true
    return L1_3
  end
  
  function L71_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L10_2
    L2_3 = L1_3
    L1_3 = L1_3.getCurrent
    L3_3 = 0
    L1_3 = L1_3(L2_3, L3_3)
    if L1_3 then
      L1_3 = L10_2
      L2_3 = L1_3
      L1_3 = L1_3.getCurrent
      L3_3 = 0
      L1_3 = L1_3(L2_3, L3_3)
      L1_3 = L1_3.animation
      L1_3 = L1_3.name
      if L1_3 == A0_3 then
        L1_3 = true
        return L1_3
      end
    end
    L1_3 = false
    return L1_3
  end
  
  function L72_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "enterFrame"
    L3_3 = L68_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L5_2.stopAllAnimation = L72_2
  
  function L72_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L44_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L44_2
      L0_3(L1_3)
      L0_3 = nil
      L44_2 = L0_3
    end
    L0_3 = L10_2
    L1_3 = L0_3
    L0_3 = L0_3.getCurrent
    L2_3 = 2
    L0_3 = L0_3(L1_3, L2_3)
    if L0_3 then
      L0_3 = L10_2
      L1_3 = L0_3
      L0_3 = L0_3.clearTrack
      L2_3 = 2
      L0_3(L1_3, L2_3)
    end
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "magnet"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "magnetEffect"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "rifle"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "rifleEffect"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L5_2.cleanUseAnimationImages = L72_2
  
  function L72_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    if A0_3 == "mark_active" then
      L2_3 = A0_3
      L3_3 = "_"
      L4_3 = L48_2
      A0_3 = L2_3 .. L3_3 .. L4_3
    elseif A0_3 == "magnet_start" then
      L2_3 = A0_3
      L3_3 = "_"
      L4_3 = L47_2
      A0_3 = L2_3 .. L3_3 .. L4_3
    end
    L2_3 = L5_2
    L2_3 = L2_3.cleanUseAnimationImages
    L2_3()
    if A0_3 then
      L2_3 = L10_2
      L3_3 = L2_3
      L2_3 = L2_3.setAnimationByName
      L4_3 = 2
      L5_3 = A0_3
      L6_3 = false
      L2_3(L3_3, L4_3, L5_3, L6_3)
      if A1_3 then
        function L2_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4
          
          L0_4 = L5_2
          L0_4 = L0_4.cleanUseAnimationImages
          L0_4()
          L0_4 = L10_2
          L1_4 = L0_4
          L0_4 = L0_4.addAnimationByName
          L2_4 = 2
          L3_4 = A0_3
          L4_4 = false
          L0_4(L1_4, L2_4, L3_4, L4_4)
          L0_4 = timer
          L0_4 = L0_4.performWithDelay
          L1_4 = A1_3
          L2_4 = L2_3
          L3_4 = 1
          L0_4 = L0_4(L1_4, L2_4, L3_4)
          L44_2 = L0_4
        end
        
        L3_3 = timer
        L3_3 = L3_3.performWithDelay
        L4_3 = A1_3
        L5_3 = L2_3
        L6_3 = 1
        L3_3 = L3_3(L4_3, L5_3, L6_3)
        L44_2 = L3_3
      end
    end
  end
  
  L5_2.playUseAnimation = L72_2
  
  function L72_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L10_2
    L1_3 = L0_3
    L0_3 = L0_3.getCurrent
    L2_3 = 1
    L0_3 = L0_3(L1_3, L2_3)
    if L0_3 then
      L0_3 = L10_2
      L1_3 = L0_3
      L0_3 = L0_3.clearTrack
      L2_3 = 1
      L0_3(L1_3, L2_3)
    end
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "fire"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "fireStart"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "headSkull"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "poof"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "sacrificeLine"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "sacrificeBalloon"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "PU_rocket"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.setAttachment
    L2_3 = "PU_rocketFire"
    L3_3 = nil
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L5_2.cleanBuffAnimationImages = L72_2
  
  function L72_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3
    if A0_3 == "speed_start" then
      L2_3 = "speed_start_"
      L3_3 = L49_2
      L1_3 = L2_3 .. L3_3
    elseif A0_3 == "sacrifice_end" then
      L2_3 = "sacrifice_end_"
      L3_3 = L46_2
      L1_3 = L2_3 .. L3_3
    elseif A0_3 == "sacrifice_start" then
      L2_3 = "sacrifice_start_"
      L3_3 = L46_2
      L1_3 = L2_3 .. L3_3
    elseif A0_3 == "sacrifice_active" then
      L2_3 = "sacrifice_active_"
      L3_3 = L46_2
      L1_3 = L2_3 .. L3_3
    elseif A0_3 == "rocket_start" then
      L2_3 = "rocket_start_"
      L3_3 = L45_2
      L1_3 = L2_3 .. L3_3
    elseif A0_3 == "rocket_active" then
      L2_3 = "rocket_active_"
      L3_3 = L45_2
      L1_3 = L2_3 .. L3_3
    elseif A0_3 == "rocket_end" then
      L2_3 = "rocket_end_"
      L3_3 = L45_2
      L1_3 = L2_3 .. L3_3
    elseif A0_3 == "speed_start" then
      L2_3 = "speed_start_"
      L3_3 = L47_2
      L1_3 = L2_3 .. L3_3
    end
    return L1_3
  end
  
  function L73_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = L5_2
    L2_3 = L2_3.cleanBuffAnimationImages
    L2_3()
    if A0_3 then
      L2_3 = L72_2
      L3_3 = A0_3
      L2_3 = L2_3(L3_3)
      L3_3 = L10_2
      L4_3 = L3_3
      L3_3 = L3_3.setAnimationByName
      L5_3 = 1
      L6_3 = L2_3
      L7_3 = A1_3
      L3_3(L4_3, L5_3, L6_3, L7_3)
      if A0_3 == "speed_start" then
        L3_3 = L10_2
        L4_3 = L3_3
        L3_3 = L3_3.addAnimationByName
        L5_3 = 1
        L6_3 = "speed_active_"
        L7_3 = L49_2
        L6_3 = L6_3 .. L7_3
        L7_3 = true
        L3_3(L4_3, L5_3, L6_3, L7_3)
      elseif A0_3 == "speed_end" then
        L3_3 = L10_2
        L4_3 = L3_3
        L3_3 = L3_3.addAnimationByName
        L5_3 = 0
        L6_3 = "run"
        L7_3 = true
        L3_3(L4_3, L5_3, L6_3, L7_3)
      elseif A0_3 == "sacrifice_start" then
        L3_3 = L10_2
        L4_3 = L3_3
        L3_3 = L3_3.addAnimationByName
        L5_3 = 1
        L6_3 = "sacrifice_active_"
        L7_3 = L46_2
        L6_3 = L6_3 .. L7_3
        L7_3 = true
        L3_3(L4_3, L5_3, L6_3, L7_3)
      elseif A0_3 == "rocket_start" then
        L3_3 = L10_2
        L4_3 = L3_3
        L3_3 = L3_3.addAnimationByName
        L5_3 = 1
        L6_3 = "rocket_active_"
        L7_3 = L45_2
        L6_3 = L6_3 .. L7_3
        L7_3 = true
        L3_3(L4_3, L5_3, L6_3, L7_3)
      end
    end
  end
  
  L5_2.playBuffAnimation = L73_2
  
  function L73_2()
    local L0_3, L1_3
    L0_3 = L5_2
    L0_3 = L0_3.playBuffAnimation
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = L5_2
    L0_3 = L0_3.playUseAnimation
    L1_3 = nil
    L0_3(L1_3)
  end
  
  L5_2.cleanAnimationImages = L73_2
  
  function L73_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    if A0_3 == "run" then
      A0_3 = L14_2
    end
    if A0_3 then
      L3_3 = L71_2
      L4_3 = A0_3
      L3_3 = L3_3(L4_3)
      if not L3_3 then
        L3_3 = L72_2
        L4_3 = A0_3
        L3_3 = L3_3(L4_3)
        if A2_3 then
          L4_3 = L10_2
          L5_3 = L4_3
          L4_3 = L4_3.setAnimationByName
          L6_3 = 0
          L7_3 = L3_3
          L8_3 = A1_3
          L9_3 = nil
          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
        else
          L4_3 = L10_2
          L5_3 = L4_3
          L4_3 = L4_3.addAnimationByName
          L6_3 = 0
          L7_3 = L3_3
          L8_3 = A1_3
          L9_3 = nil
          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
        end
        if A0_3 == "idle_var1" then
          L4_3 = L10_2
          L5_3 = L4_3
          L4_3 = L4_3.addAnimationByName
          L6_3 = 0
          L7_3 = "idle"
          L8_3 = true
          L9_3 = nil
          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
        elseif A0_3 == "idle_var2" then
          L4_3 = L10_2
          L5_3 = L4_3
          L4_3 = L4_3.addAnimationByName
          L6_3 = 0
          L7_3 = "idle"
          L8_3 = true
          L9_3 = nil
          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
        elseif A0_3 == "jump_start" then
          L4_3 = L10_2
          L5_3 = L4_3
          L4_3 = L4_3.addAnimationByName
          L6_3 = 0
          L7_3 = "jump_fall"
          L8_3 = true
          L9_3 = nil
          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
        end
      end
    end
  end
  
  L5_2.setAnimation = L73_2
  
  function L73_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L0_3 = display
    L0_3 = L0_3.newGroup
    L0_3 = L0_3()
    L1_3 = L30_2
    if L1_3 == 430 then
      L1_3 = L9_2
      L2_3 = L1_3
      L1_3 = L1_3.setAttachment
      L3_3 = "facewear"
      L4_3 = L30_2
      L1_3(L2_3, L3_3, L4_3)
    end
    L1_3 = {}
    L2_3 = "head"
    L3_3 = "eyes"
    L4_3 = "head_lower"
    L5_3 = "hair"
    L6_3 = "facewear"
    L7_3 = "hat"
    L1_3[1] = L2_3
    L1_3[2] = L3_3
    L1_3[3] = L4_3
    L1_3[4] = L5_3
    L1_3[5] = L6_3
    L1_3[6] = L7_3
    L2_3 = pairs
    L3_3 = L1_3
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3 in L2_3, L3_3, L4_3 do
      L6_3 = L9_2
      L7_3 = L6_3
      L6_3 = L6_3.findSlot
      L8_3 = L1_3[L5_3]
      L6_3 = L6_3(L7_3, L8_3)
      L7_3 = nil
      if L6_3 then
        L7_3 = L6_3.attachment
      end
      if L7_3 then
        L8_3 = L9_2
        L9_3 = L8_3
        L8_3 = L8_3.createImage
        L10_3 = L7_3
        L8_3 = L8_3(L9_3, L10_3)
        if L8_3 then
          L9_3 = nil
          L10_3 = nil
          L11_3 = nil
          L12_3 = L6_3.bone
          L12_3 = L12_3.worldX
          L13_3 = L7_3.x
          L14_3 = L6_3.bone
          L14_3 = L14_3.m00
          L13_3 = L13_3 * L14_3
          L12_3 = L12_3 + L13_3
          L13_3 = L7_3.y
          L14_3 = L6_3.bone
          L14_3 = L14_3.m01
          L13_3 = L13_3 * L14_3
          L9_3 = L12_3 + L13_3
          L12_3 = L6_3.bone
          L12_3 = L12_3.worldY
          L13_3 = L7_3.x
          L14_3 = L6_3.bone
          L14_3 = L14_3.m10
          L13_3 = L13_3 * L14_3
          L12_3 = L12_3 + L13_3
          L13_3 = L7_3.y
          L14_3 = L6_3.bone
          L14_3 = L14_3.m11
          L13_3 = L13_3 * L14_3
          L12_3 = L12_3 + L13_3
          L10_3 = -L12_3
          L12_3 = L6_3.bone
          L12_3 = L12_3.worldRotation
          L13_3 = L7_3.rotation
          L12_3 = L12_3 + L13_3
          L11_3 = -L12_3
          L12_3 = L7_3.scaleX
          L13_3 = L7_3.scaleY
          L8_3.x = L9_3
          L8_3.y = L10_3
          L8_3.xScale = L12_3
          L8_3.yScale = L13_3
          L8_3.rotation = L11_3
          L14_3 = L1_3[L5_3]
          L0_3[L14_3] = L8_3
          L15_3 = L0_3
          L14_3 = L0_3.insert
          L16_3 = L8_3
          L14_3(L15_3, L16_3)
        end
      end
    end
    L2_3 = L30_2
    if L2_3 == 430 then
      L2_3 = L9_2
      L3_3 = L2_3
      L2_3 = L2_3.setAttachment
      L4_3 = "facewear"
      L5_3 = nil
      L2_3(L3_3, L4_3, L5_3)
    end
    L0_3.xScale = 0.17
    L0_3.yScale = 0.17
    return L0_3
  end
  
  L5_2.getHead = L73_2
  
  function L73_2()
    local L0_3, L1_3
    L0_3 = L36_2
    return L0_3
  end
  
  L5_2.getMemoryIndex = L73_2
  
  function L73_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L15_2
    if L0_3 then
      return
    end
    L0_3 = true
    L15_2 = L0_3
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "enterFrame"
    L3_3 = L68_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L42_2
    if L0_3 then
      L0_3 = transition
      L0_3 = L0_3.cancel
      L1_3 = L42_2
      L0_3(L1_3)
      L0_3 = nil
      L42_2 = L0_3
    end
    L0_3 = L43_2
    if L0_3 then
      L0_3 = transition
      L0_3 = L0_3.cancel
      L1_3 = L43_2
      L0_3(L1_3)
      L0_3 = nil
      L43_2 = L0_3
    end
    L0_3 = L44_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L44_2
      L0_3(L1_3)
      L0_3 = nil
      L44_2 = L0_3
    end
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = nil
    L11_2 = L0_3
  end
  
  L5_2.clean = L73_2
  
  function L73_2()
    local L0_3, L1_3
    L0_3 = L11_2
    return L0_3
  end
  
  L5_2.getGroup = L73_2
  
  function L73_2(A0_3)
    local L1_3
    L50_2 = A0_3
  end
  
  L5_2.setPaused = L73_2
  
  function L73_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    if A0_3 then
      L2_3 = L20_2
      if not L2_3 then
        L2_3 = display
        L2_3 = L2_3.newImageRect
        L3_3 = "images/gui/market/dropshadow.png"
        L4_3 = 90
        L5_3 = 17
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        L20_2 = L2_3
        L2_3 = L20_2
        L2_3.y = 0
        if A1_3 then
          L2_3 = L20_2
          L2_3.rotation = A1_3
        end
        L2_3 = L11_2
        L3_3 = L2_3
        L2_3 = L2_3.insert
        L4_3 = 1
        L5_3 = L20_2
        L2_3(L3_3, L4_3, L5_3)
    end
    elseif not A0_3 then
      L2_3 = L20_2
      L3_3 = L2_3
      L2_3 = L2_3.removeSelf
      L2_3(L3_3)
      L2_3 = nil
      L20_2 = L2_3
    end
  end
  
  L5_2.showDropShadow = L73_2
  L73_2 = L69_2
  L73_2()
  return L5_2
end

L0_1.new = L3_1
return L0_1
