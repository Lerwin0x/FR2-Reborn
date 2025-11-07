local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.newScene
L1_1 = L1_1()
L2_1 = nil
L3_1 = nil

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2
  L2_2 = A0_2.view
  L3_2 = require
  L4_2 = "lua.modules.tableHelper"
  L3_2 = L3_2(L4_2)
  L4_2 = require
  L5_2 = "lua.modules.trails"
  L4_2 = L4_2(L5_2)
  L5_2 = require
  L6_2 = "spine-corona.monsterLoader"
  L5_2 = L5_2(L6_2)
  L6_2 = require
  L7_2 = "lua.network.tcpMessageFormat"
  L6_2 = L6_2(L7_2)
  L7_2 = nil
  L8_2 = nil
  L9_2 = nil
  L10_2 = 0
  L11_2 = display
  L11_2 = L11_2.newGroup
  L11_2 = L11_2()
  L12_2 = nil
  L13_2 = {}
  L14_2 = nil
  L15_2 = nil
  L16_2 = nil
  L17_2 = nil
  L18_2 = nil
  L19_2 = nil
  L20_2 = nil
  L21_2 = false
  L22_2 = {}
  L23_2 = "dino league"
  L24_2 = "global"
  L25_2 = "friends"
  
  function L26_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = {}
    L2_3 = 1
    L3_3 = 1
    L4_3 = #A0_3
    L5_3 = 1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = A0_3[L6_3]
      L1_3[L6_3] = L7_3
      L7_3 = L1_3[L6_3]
      L7_3 = L7_3.tier
      if not L7_3 then
        L7_3 = L1_3[L6_3]
        L7_3.index = L2_3
        L2_3 = L2_3 + 1
      end
    end
    return L1_3
  end
  
  L27_2 = display
  L27_2 = L27_2.newImageRect
  L28_2 = "images/gui/ranking/main.png"
  L29_2 = 480
  L30_2 = 320
  L27_2 = L27_2(L28_2, L29_2, L30_2)
  L27_2.anchorX = 0
  L27_2.anchorY = 0
  L27_2.x = 0
  L27_2.y = 0
  L28_2 = display
  L28_2 = L28_2.newImageRect
  L29_2 = "images/gui/ranking/cell.png"
  L30_2 = 480
  L31_2 = 320
  L28_2 = L28_2(L29_2, L30_2, L31_2)
  L29_2 = display
  L29_2 = L29_2.contentWidth
  L29_2 = L29_2 * 0.5
  L28_2.x = L29_2
  L29_2 = display
  L29_2 = L29_2.contentHeight
  L29_2 = L29_2 * 0.5
  L28_2.y = L29_2
  L29_2 = display
  L29_2 = L29_2.newImageRect
  L30_2 = "images/gui/ranking/marker.png"
  L31_2 = 67
  L32_2 = 44
  L29_2 = L29_2(L30_2, L31_2, L32_2)
  L29_2.x = 303
  L29_2.y = 26
  L30_2 = 50
  L31_2 = L0_1
  L31_2 = L31_2.newText
  L32_2 = {}
  L32_2.string = ""
  L32_2.size = 24
  L32_2.x = 122
  L32_2.y = 18
  L33_2 = {}
  L34_2 = 1
  L35_2 = 1
  L36_2 = 1
  L33_2[1] = L34_2
  L33_2[2] = L35_2
  L33_2[3] = L36_2
  L32_2.color = L33_2
  L31_2 = L31_2(L32_2)
  L32_2 = L0_1
  L32_2 = L32_2.newText
  L33_2 = {}
  L34_2 = L0_1
  L34_2 = L34_2.localized
  L34_2 = L34_2.get
  L35_2 = "Games"
  L34_2 = L34_2(L35_2)
  L33_2.string = L34_2
  L33_2.size = 14
  L33_2.x = 35
  L33_2.y = 44
  L33_2.ax = 0
  L34_2 = {}
  L35_2 = 1
  L36_2 = 1
  L37_2 = 1
  L34_2[1] = L35_2
  L34_2[2] = L36_2
  L34_2[3] = L37_2
  L33_2.color = L34_2
  L32_2 = L32_2(L33_2)
  L33_2 = L0_1
  L33_2 = L33_2.newText
  L34_2 = {}
  L34_2.string = "?"
  L34_2.size = 14
  L35_2 = L32_2.x
  L35_2 = L35_2 + L30_2
  L34_2.x = L35_2
  L35_2 = L32_2.y
  L34_2.y = L35_2
  L34_2.ax = 0
  L35_2 = {}
  L36_2 = 1
  L37_2 = 1
  L38_2 = 1
  L35_2[1] = L36_2
  L35_2[2] = L37_2
  L35_2[3] = L38_2
  L34_2.color = L35_2
  L33_2 = L33_2(L34_2)
  L34_2 = L0_1
  L34_2 = L34_2.newText
  L35_2 = {}
  L36_2 = L0_1
  L36_2 = L36_2.localized
  L36_2 = L36_2.get
  L37_2 = "Wins"
  L36_2 = L36_2(L37_2)
  L35_2.string = L36_2
  L35_2.size = 14
  L35_2.x = 35
  L35_2.y = 57
  L35_2.ax = 0
  L36_2 = {}
  L37_2 = 1
  L38_2 = 1
  L39_2 = 1
  L36_2[1] = L37_2
  L36_2[2] = L38_2
  L36_2[3] = L39_2
  L35_2.color = L36_2
  L34_2 = L34_2(L35_2)
  L35_2 = L0_1
  L35_2 = L35_2.newText
  L36_2 = {}
  L36_2.string = "?"
  L36_2.size = 14
  L37_2 = L34_2.x
  L37_2 = L37_2 + L30_2
  L36_2.x = L37_2
  L37_2 = L34_2.y
  L36_2.y = L37_2
  L36_2.ax = 0
  L37_2 = {}
  L38_2 = 1
  L39_2 = 1
  L40_2 = 1
  L37_2[1] = L38_2
  L37_2[2] = L39_2
  L37_2[3] = L40_2
  L36_2.color = L37_2
  L35_2 = L35_2(L36_2)
  L36_2 = L0_1
  L36_2 = L36_2.newText
  L37_2 = {}
  L38_2 = L0_1
  L38_2 = L38_2.localized
  L38_2 = L38_2.get
  L39_2 = "Kills"
  L38_2 = L38_2(L39_2)
  L37_2.string = L38_2
  L37_2.size = 14
  L37_2.x = 35
  L37_2.y = 70
  L37_2.ax = 0
  L38_2 = {}
  L39_2 = 1
  L40_2 = 1
  L41_2 = 1
  L38_2[1] = L39_2
  L38_2[2] = L40_2
  L38_2[3] = L41_2
  L37_2.color = L38_2
  L36_2 = L36_2(L37_2)
  L37_2 = L0_1
  L37_2 = L37_2.newText
  L38_2 = {}
  L38_2.string = "?"
  L38_2.size = 14
  L39_2 = L36_2.x
  L39_2 = L39_2 + L30_2
  L38_2.x = L39_2
  L39_2 = L36_2.y
  L38_2.y = L39_2
  L38_2.ax = 0
  L39_2 = {}
  L40_2 = 1
  L41_2 = 1
  L42_2 = 1
  L39_2[1] = L40_2
  L39_2[2] = L41_2
  L39_2[3] = L42_2
  L38_2.color = L39_2
  L37_2 = L37_2(L38_2)
  L38_2 = L0_1
  L38_2 = L38_2.newText
  L39_2 = {}
  L40_2 = L0_1
  L40_2 = L40_2.localized
  L40_2 = L40_2.get
  L41_2 = "Deaths"
  L40_2 = L40_2(L41_2)
  L39_2.string = L40_2
  L39_2.size = 14
  L39_2.x = 130
  L39_2.y = 44
  L39_2.ax = 0
  L40_2 = {}
  L41_2 = 1
  L42_2 = 1
  L43_2 = 1
  L40_2[1] = L41_2
  L40_2[2] = L42_2
  L40_2[3] = L43_2
  L39_2.color = L40_2
  L38_2 = L38_2(L39_2)
  L39_2 = L0_1
  L39_2 = L39_2.newText
  L40_2 = {}
  L40_2.string = "?"
  L40_2.size = 14
  L41_2 = L38_2.x
  L41_2 = L41_2 + L30_2
  L40_2.x = L41_2
  L41_2 = L38_2.y
  L40_2.y = L41_2
  L40_2.ax = 0
  L41_2 = {}
  L42_2 = 1
  L43_2 = 1
  L44_2 = 1
  L41_2[1] = L42_2
  L41_2[2] = L43_2
  L41_2[3] = L44_2
  L40_2.color = L41_2
  L39_2 = L39_2(L40_2)
  L40_2 = L0_1
  L40_2 = L40_2.newText
  L41_2 = {}
  L42_2 = L0_1
  L42_2 = L42_2.localized
  L42_2 = L42_2.get
  L43_2 = "Suicides"
  L42_2 = L42_2(L43_2)
  L41_2.string = L42_2
  L41_2.size = 14
  L41_2.x = 130
  L41_2.y = 57
  L41_2.ax = 0
  L42_2 = {}
  L43_2 = 1
  L44_2 = 1
  L45_2 = 1
  L42_2[1] = L43_2
  L42_2[2] = L44_2
  L42_2[3] = L45_2
  L41_2.color = L42_2
  L40_2 = L40_2(L41_2)
  L41_2 = L0_1
  L41_2 = L41_2.newText
  L42_2 = {}
  L42_2.string = "?"
  L42_2.size = 14
  L43_2 = L40_2.x
  L43_2 = L43_2 + L30_2
  L42_2.x = L43_2
  L43_2 = L40_2.y
  L42_2.y = L43_2
  L42_2.ax = 0
  L43_2 = {}
  L44_2 = 1
  L45_2 = 1
  L46_2 = 1
  L43_2[1] = L44_2
  L43_2[2] = L45_2
  L43_2[3] = L46_2
  L42_2.color = L43_2
  L41_2 = L41_2(L42_2)
  L42_2 = L0_1
  L42_2 = L42_2.newText
  L43_2 = {}
  L43_2.string = "?d ?h ?m"
  L43_2.size = 12
  L43_2.x = 306
  L43_2.y = 36
  L42_2 = L42_2(L43_2)
  L43_2 = L0_1
  L43_2 = L43_2.newText
  L44_2 = {}
  L44_2.string = ""
  L44_2.size = 13
  L44_2.x = 300
  L44_2.y = 68
  L44_2.ax = 0
  L43_2 = L43_2(L44_2)
  L44_2 = L0_1
  L44_2 = L44_2.newText
  L45_2 = {}
  L45_2.string = ""
  L45_2.size = 13
  L45_2.x = 465
  L45_2.y = 68
  L45_2.ax = 1
  L44_2 = L44_2(L45_2)
  
  function L45_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = ""
    L2_3 = A0_3
    A0_3 = L1_3 .. L2_3
    L1_3 = string
    L1_3 = L1_3.find
    L2_3 = A0_3
    L3_3 = "%."
    L1_3 = L1_3(L2_3, L3_3)
    if L1_3 then
      L2_3 = L1_3 + 2
      L3_3 = string
      L3_3 = L3_3.len
      L4_3 = A0_3
      L3_3 = L3_3(L4_3)
      if L2_3 < L3_3 then
        L3_3 = A0_3
        L2_3 = A0_3.sub
        L4_3 = L1_3 + 1
        L5_3 = L1_3 + 2
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        if L2_3 == "00" then
          L4_3 = A0_3
          L3_3 = A0_3.sub
          L5_3 = 1
          L6_3 = L1_3 - 1
          L3_3 = L3_3(L4_3, L5_3, L6_3)
          L4_3 = ""
          L5_3 = L3_3
          A0_3 = L4_3 .. L5_3
        else
          L4_3 = A0_3
          L3_3 = A0_3.sub
          L5_3 = 1
          L6_3 = L1_3 + 2
          L3_3 = L3_3(L4_3, L5_3, L6_3)
          L4_3 = ""
          L5_3 = L3_3
          A0_3 = L4_3 .. L5_3
        end
      else
        L2_3 = L1_3 + 2
        L3_3 = string
        L3_3 = L3_3.len
        L4_3 = A0_3
        L3_3 = L3_3(L4_3)
        if L2_3 == L3_3 then
        else
          L2_3 = L1_3 + 1
          L3_3 = string
          L3_3 = L3_3.len
          L4_3 = A0_3
          L3_3 = L3_3(L4_3)
          if L2_3 == L3_3 then
          else
            L2_3 = string
            L2_3 = L2_3.len
            L3_3 = A0_3
            L2_3 = L2_3(L3_3)
            if L1_3 == L2_3 then
            else
            end
          end
        end
      end
    end
    return A0_3
  end
  
  function L46_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      L1_3 = A0_3.ae
      if L1_3 then
        L1_3 = L33_2
        L2_3 = A0_3.ae
        L1_3.text = L2_3
      end
      L1_3 = A0_3.wr
      if L1_3 then
        L1_3 = L45_2
        L2_3 = A0_3.wr
        L2_3 = L2_3 * 100
        L1_3 = L1_3(L2_3)
        L2_3 = L35_2
        L3_3 = L1_3
        L4_3 = "%"
        L3_3 = L3_3 .. L4_3
        L2_3.text = L3_3
      end
      L1_3 = A0_3.z
      if L1_3 then
        L1_3 = L37_2
        L2_3 = A0_3.z
        L1_3.text = L2_3
      end
      L1_3 = A0_3.aa
      if L1_3 then
        L1_3 = L39_2
        L2_3 = A0_3.aa
        L1_3.text = L2_3
      end
      L1_3 = A0_3.ab
      if L1_3 then
        L1_3 = L41_2
        L2_3 = A0_3.ab
        L1_3.text = L2_3
      end
      L1_3 = A0_3.u
      if L1_3 then
        L1_3 = L31_2
        L2_3 = A0_3.u
        L1_3.text = L2_3
      end
    end
  end
  
  function L47_2()
    local L0_3, L1_3
    L0_3 = L8_2
    if L0_3 then
      L0_3 = L8_2
      L0_3 = L0_3.clean
      L0_3()
      L0_3 = nil
      L8_2 = L0_3
    end
    L0_3 = L14_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L14_2
      L0_3(L1_3)
      L0_3 = nil
      L14_2 = L0_3
    end
  end
  
  function L48_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L4_2
    L0_3 = L0_3.createTrail
    L1_3 = L15_2
    L2_3 = L8_2
    L2_3 = L2_3.getGroup
    L2_3 = L2_3()
    L2_3 = L2_3.x
    L2_3 = L2_3 - 5
    L3_3 = L8_2
    L3_3 = L3_3.getGroup
    L3_3 = L3_3()
    L3_3 = L3_3.y
    L3_3 = L3_3 - 50
    L4_3 = L2_2
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L8_2
    L2_3 = L2_3.getGroup
    L2_3, L3_3, L4_3 = L2_3()
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  
  function L49_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if A0_3 == nil then
      return
    end
    L2_3 = L47_2
    L2_3()
    L2_3 = L0_1
    L2_3 = L2_3.monsterConverter
    L2_3 = L2_3.fromServerFormat
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L3_3 = L2_3[6]
    L15_2 = L3_3
    L3_3 = L5_2
    L3_3 = L3_3.new
    L4_3 = L2_3
    L3_3 = L3_3(L4_3)
    L8_2 = L3_3
    L3_3 = L8_2
    L3_3 = L3_3.getGroup
    L3_3 = L3_3()
    L3_3.xScale = 0.5
    L3_3.yScale = 0.5
    L3_3.x = 140
    L3_3.y = 250
    L4_3 = L15_2
    if 0 < L4_3 then
      L4_3 = timer
      L4_3 = L4_3.performWithDelay
      L5_3 = 200
      L6_3 = L48_2
      L7_3 = 0
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L14_2 = L4_3
    end
    L4_3 = L2_2
    L5_3 = L4_3
    L4_3 = L4_3.insert
    L6_3 = L3_3
    L4_3(L5_3, L6_3)
  end
  
  function L50_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L43_2
    if L1_3 ~= nil then
      L1_3 = L44_2
      if L1_3 ~= nil then
        goto lbl_16
      end
    end
    L1_3 = print
    L2_3 = "WARNING: selfName is "
    L3_3 = L43_2
    L1_3(L2_3, L3_3)
    L1_3 = print
    L2_3 = "WARNING: selfRating is "
    L3_3 = L44_2
    L1_3(L2_3, L3_3)
    do return end
    ::lbl_16::
    L1_3 = L13_2
    L2_3 = L10_2
    L1_3 = L1_3[L2_3]
    if L1_3 then
      L1_3 = L44_2
      L1_3 = L1_3.text
      L2_3 = L13_2
      L3_3 = L10_2
      L2_3 = L2_3[L3_3]
      L2_3 = L2_3.r
      if L1_3 ~= L2_3 then
        L1_3 = L43_2
        L2_3 = L13_2
        L3_3 = L10_2
        L2_3 = L2_3[L3_3]
        L2_3 = L2_3.u
        L1_3.text = L2_3
        L1_3 = L44_2
        L2_3 = L13_2
        L3_3 = L10_2
        L2_3 = L2_3[L3_3]
        L2_3 = L2_3.r
        L1_3.text = L2_3
      end
    end
    if A0_3 then
      L1_3 = L43_2
      L2_3 = L1_3
      L1_3 = L1_3.setFillColor
      L3_3 = 0.2
      L4_3 = 0.432
      L5_3 = 0.12
      L1_3(L2_3, L3_3, L4_3, L5_3)
    else
      L1_3 = L43_2
      L2_3 = L1_3
      L1_3 = L1_3.setFillColor
      L3_3 = 0
      L4_3 = 0
      L5_3 = 0
      L1_3(L2_3, L3_3, L4_3, L5_3)
    end
  end
  
  function L51_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    if A0_3 then
      L1_3 = math
      L1_3 = L1_3.floor
      L2_3 = A0_3 / 60
      L1_3 = L1_3(L2_3)
      L2_3 = math
      L2_3 = L2_3.floor
      L3_3 = L1_3 / 60
      L2_3 = L2_3(L3_3)
      L3_3 = math
      L3_3 = L3_3.floor
      L4_3 = L2_3 / 24
      L3_3 = L3_3(L4_3)
      L4_3 = L2_3 * 60
      L1_3 = L1_3 - L4_3
      L4_3 = L3_3 * 24
      L2_3 = L2_3 - L4_3
      L4_3 = L3_3
      L5_3 = "d "
      L6_3 = L2_3
      L7_3 = "h "
      L8_3 = L1_3
      L9_3 = "m"
      L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3
      return L4_3
    end
    L1_3 = ""
    return L1_3
  end
  
  function L52_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.gotoScene
    L1_3 = "lua.scenes.mainMenu"
    L0_3(L1_3)
  end
  
  L53_2 = L0_1
  L53_2 = L53_2.newButton
  L54_2 = {}
  L54_2.image = "images/gui/common/buttonHome.png"
  L54_2.width = 90
  L54_2.height = 57
  L54_2.onRelease = L52_2
  L54_2.x = 50
  L54_2.y = 292
  L53_2 = L53_2(L54_2)
  
  function L54_2()
    local L0_3, L1_3, L2_3
    L0_3 = L10_2
    if L0_3 == 1 then
      return
    end
    L0_3 = 1
    L10_2 = L0_3
    L0_3 = L16_2
    if L0_3 then
      L0_3 = L19_2
      L1_3 = nil
      L2_3 = L16_2
      L0_3(L1_3, L2_3)
    else
      L0_3 = L0_1
      L0_3 = L0_3.comm
      L0_3 = L0_3.getRankingListOnName
      L1_3 = L23_2
      L0_3(L1_3)
    end
  end
  
  L55_2 = L0_1
  L55_2 = L55_2.newButton
  L56_2 = {}
  L56_2.image = "images/transparent.png"
  L56_2.width = 67
  L56_2.height = 44
  L56_2.onRelease = L54_2
  L56_2.x = 304
  L56_2.y = 26
  L55_2 = L55_2(L56_2)
  
  function L56_2()
    local L0_3, L1_3, L2_3
    L0_3 = L10_2
    if L0_3 == 2 then
      return
    end
    L0_3 = 2
    L10_2 = L0_3
    L0_3 = L17_2
    if L0_3 then
      L0_3 = L19_2
      L1_3 = nil
      L2_3 = L17_2
      L0_3(L1_3, L2_3)
    else
      L0_3 = L0_1
      L0_3 = L0_3.comm
      L0_3 = L0_3.getRankingListOnName
      L1_3 = L25_2
      L0_3(L1_3)
    end
  end
  
  L57_2 = L0_1
  L57_2 = L57_2.newButton
  L58_2 = {}
  L58_2.image = "images/transparent.png"
  L58_2.width = 67
  L58_2.height = 44
  L58_2.onRelease = L56_2
  L58_2.x = 373
  L58_2.y = 26
  L57_2 = L57_2(L58_2)
  
  function L58_2()
    local L0_3, L1_3, L2_3
    L0_3 = L10_2
    if L0_3 == 3 then
      return
    end
    L0_3 = 3
    L10_2 = L0_3
    L0_3 = L18_2
    if L0_3 then
      L0_3 = L19_2
      L1_3 = nil
      L2_3 = L18_2
      L0_3(L1_3, L2_3)
    else
      L0_3 = L0_1
      L0_3 = L0_3.comm
      L0_3 = L0_3.getRankingListOnName
      L1_3 = L24_2
      L0_3(L1_3)
    end
  end
  
  L59_2 = L0_1
  L59_2 = L59_2.newButton
  L60_2 = {}
  L60_2.image = "images/transparent.png"
  L60_2.width = 67
  L60_2.height = 44
  L60_2.onRelease = L58_2
  L60_2.x = 443
  L60_2.y = 26
  L59_2 = L59_2(L60_2)
  
  function L60_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L13_2
    L1_3 = L10_2
    L0_3 = L0_3[L1_3]
    if L0_3 then
      L0_3 = L20_2
      L1_3 = nil
      L2_3 = nil
      L3_3 = L13_2
      L4_3 = L10_2
      L3_3 = L3_3[L4_3]
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  
  L61_2 = L0_1
  L61_2 = L61_2.newButton
  L62_2 = {}
  L62_2.image = "images/transparent.png"
  L62_2.width = 200
  L62_2.height = 22
  L62_2.onRelease = L60_2
  L62_2.x = 378
  L62_2.y = 70
  L61_2 = L61_2(L62_2)
  
  function L62_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = {}
    L0_3.isModal = true
    L1_3 = {}
    L2_3 = L22_2
    L1_3.prize = L2_3
    L0_3.params = L1_3
    L1_3 = L0_1
    L1_3 = L1_3.showOverlay
    L2_3 = "lua.overlays.weeklyPrizes"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  
  L63_2 = L0_1
  L63_2 = L63_2.newButton
  L64_2 = {}
  L64_2.image = "images/gui/ranking/prizes.png"
  L64_2.width = 60
  L64_2.height = 56
  L64_2.onRelease = L62_2
  L64_2.x = 238
  L64_2.y = 294
  L63_2 = L63_2(L64_2)
  
  function L64_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L12_2
    if L0_3 then
      L0_3 = 1
      L1_3 = L12_2
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L12_2
        L4_3 = L4_3[L3_3]
        L4_3.isSelected = false
      end
    end
  end
  
  function L65_2()
    local L0_3, L1_3, L2_3
    L0_3 = L7_2
    if L0_3 == nil then
      return
    end
    L0_3 = L9_2
    L0_3 = L0_3.getTable
    L0_3 = L0_3()
    if L0_3 == nil then
      return
    end
    L0_3 = L9_2
    L0_3 = L0_3.getTable
    L0_3 = L0_3()
    L1_3 = L0_3
    L0_3 = L0_3.getRowAtIndex
    L2_3 = L7_2
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = L12_2
    L2_3 = L7_2
    L1_3 = L1_3[L2_3]
    if L1_3 then
      L1_3 = L12_2
      L2_3 = L7_2
      L1_3 = L1_3[L2_3]
      L1_3.isSelected = false
    end
    if L0_3 then
      L1_3 = L0_3.setSelected
      if L1_3 then
        L1_3 = L0_3.setSelected
        L2_3 = false
        L1_3(L2_3)
      end
    end
  end
  
  function L66_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = {}
    L0_3.tier = true
    L0_3.imagePath = "images/gui/ranking/tier1.png"
    L1_3 = table
    L1_3 = L1_3.insert
    L2_3 = L12_2
    L3_3 = 1
    L4_3 = L0_3
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L12_2
    L1_3 = #L1_3
    if 3 < L1_3 then
      L1_3 = {}
      L1_3.tier = true
      L1_3.imagePath = "images/gui/ranking/tier2.png"
      L2_3 = table
      L2_3 = L2_3.insert
      L3_3 = L12_2
      L4_3 = 3
      L5_3 = L1_3
      L2_3(L3_3, L4_3, L5_3)
    end
    L1_3 = L12_2
    L1_3 = #L1_3
    if 7 < L1_3 then
      L1_3 = {}
      L1_3.tier = true
      L1_3.imagePath = "images/gui/ranking/tier3.png"
      L2_3 = table
      L2_3 = L2_3.insert
      L3_3 = L12_2
      L4_3 = 7
      L5_3 = L1_3
      L2_3(L3_3, L4_3, L5_3)
    end
    L1_3 = L12_2
    L1_3 = #L1_3
    if 14 < L1_3 then
      L1_3 = {}
      L1_3.tier = true
      L1_3.imagePath = "images/gui/ranking/tier4.png"
      L2_3 = table
      L2_3 = L2_3.insert
      L3_3 = L12_2
      L4_3 = 14
      L5_3 = L1_3
      L2_3(L3_3, L4_3, L5_3)
    end
    L1_3 = L12_2
    L1_3 = #L1_3
    if 25 < L1_3 then
      L1_3 = {}
      L1_3.tier = true
      L1_3.imagePath = "images/gui/ranking/tier5.png"
      L2_3 = table
      L2_3 = L2_3.insert
      L3_3 = L12_2
      L4_3 = 25
      L5_3 = L1_3
      L2_3(L3_3, L4_3, L5_3)
    end
  end
  
  function L20_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3
    L3_3 = L65_2
    L3_3()
    if A2_3 then
      L3_3 = L46_2
      L4_3 = A2_3
      L3_3(L4_3)
      L3_3 = L49_2
      L4_3 = A2_3.fa
      L3_3(L4_3)
      L3_3 = L50_2
      L4_3 = true
      L3_3(L4_3)
    elseif A1_3 then
      L7_2 = A1_3
      L3_3 = L12_2
      L4_3 = L7_2
      L3_3 = L3_3[L4_3]
      L3_3.isSelected = true
      L3_3 = L46_2
      L4_3 = A0_3
      L3_3(L4_3)
      L3_3 = L49_2
      L4_3 = A0_3.fa
      L3_3(L4_3)
      L3_3 = L50_2
      L4_3 = false
      L3_3(L4_3)
    end
  end
  
  function L67_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L27_2
    L0_3(L1_3, L2_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L31_2
    L0_3(L1_3, L2_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L32_2
    L0_3(L1_3, L2_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L33_2
    L0_3(L1_3, L2_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L36_2
    L0_3(L1_3, L2_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L37_2
    L0_3(L1_3, L2_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L38_2
    L0_3(L1_3, L2_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L39_2
    L0_3(L1_3, L2_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L34_2
    L0_3(L1_3, L2_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L35_2
    L0_3(L1_3, L2_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L40_2
    L0_3(L1_3, L2_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L41_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L11_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L55_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L59_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L57_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L29_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L61_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L44_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L43_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L53_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L63_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L42_2
    L0_3(L1_3, L2_3)
    L0_3 = L8_2
    if L0_3 then
      L0_3 = L2_2
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L8_2
      L2_3 = L2_3.getGroup
      L2_3 = L2_3()
      L0_3(L1_3, L2_3)
    end
  end
  
  function L19_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = L9_2
    if L2_3 then
      L2_3 = L9_2
      L2_3 = L2_3.cleanTable
      if L2_3 then
        L2_3 = L9_2
        L2_3 = L2_3.cleanTable
        L2_3()
      end
    end
    if A0_3 then
      L2_3 = A0_3.a
      L2_3 = L2_3.l
      L12_2 = L2_3
      L2_3 = L10_2
      if L2_3 == 1 then
        L2_3 = L66_2
        L2_3()
        L2_3 = L26_2
        L3_3 = L12_2
        L2_3 = L2_3(L3_3)
        L16_2 = L2_3
      else
        L2_3 = L10_2
        if L2_3 == 2 then
          L2_3 = L26_2
          L3_3 = L12_2
          L2_3 = L2_3(L3_3)
          L17_2 = L2_3
        else
          L2_3 = L10_2
          if L2_3 == 3 then
            L2_3 = L26_2
            L3_3 = L12_2
            L2_3 = L2_3(L3_3)
            L18_2 = L2_3
          end
        end
      end
      L2_3 = L13_2
      L3_3 = L10_2
      L4_3 = A0_3.a
      L4_3 = L4_3.i
      L2_3[L3_3] = L4_3
    elseif A1_3 then
      L12_2 = A1_3
    end
    L2_3 = L10_2
    if L2_3 == 1 then
      L2_3 = L29_2
      L2_3.x = 303
    else
      L2_3 = L10_2
      if L2_3 == 2 then
        L2_3 = L29_2
        L2_3.x = 373
      else
        L2_3 = L10_2
        if L2_3 == 3 then
          L2_3 = L29_2
          L2_3.x = 443
        end
      end
    end
    L2_3 = L20_2
    L3_3 = nil
    L4_3 = nil
    L5_3 = L13_2
    L6_3 = L10_2
    L5_3 = L5_3[L6_3]
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = L64_2
    L2_3()
    L2_3 = L9_2
    L2_3 = L2_3.createTable
    L3_3 = L12_2
    L4_3 = L2_2
    L2_3(L3_3, L4_3)
    L2_3 = L2_2
    L3_3 = L2_3
    L2_3 = L2_3.insert
    L4_3 = L9_2
    L4_3 = L4_3.getTable
    L4_3, L5_3, L6_3 = L4_3()
    L2_3(L3_3, L4_3, L5_3, L6_3)
    L2_3 = L67_2
    L2_3()
  end
  
  function L68_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L21_2
    if L1_3 then
      return
    end
    L1_3 = A0_3.m
    L2_3 = L6_2
    L2_3 = L2_3.getRankingListOnName
    L2_3 = L2_3()
    if L1_3 == L2_3 then
      L1_3 = A0_3.a
      L1_3 = L1_3.n
      L2_3 = L23_2
      if L1_3 == L2_3 then
        L1_3 = 1
        L10_2 = L1_3
      else
        L1_3 = A0_3.a
        L1_3 = L1_3.n
        L2_3 = L25_2
        if L1_3 == L2_3 then
          L1_3 = 2
          L10_2 = L1_3
        else
          L1_3 = A0_3.a
          L1_3 = L1_3.n
          L2_3 = L24_2
          if L1_3 == L2_3 then
            L1_3 = 3
            L10_2 = L1_3
          end
        end
      end
      L1_3 = L19_2
      L2_3 = A0_3
      L1_3(L2_3)
      L1_3 = A0_3.t
      if L1_3 then
        L1_3 = L42_2
        L2_3 = L51_2
        L3_3 = A0_3.t
        L2_3 = L2_3(L3_3)
        L1_3.text = L2_3
      end
      L1_3 = A0_3.p
      if L1_3 then
        L1_3 = A0_3.p
        L22_2 = L1_3
      end
    end
  end
  
  function L69_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = true
    L21_2 = L0_3
    L0_3 = L12_2
    if L0_3 then
      L0_3 = 1
      L1_3 = L12_2
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L12_2
        L4_3 = L4_3[L3_3]
        L4_3.isSelected = false
      end
      L0_3 = nil
      L12_2 = L0_3
    end
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L53_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L63_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L55_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L57_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L59_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L61_2
    L0_3(L1_3)
    L0_3 = L47_2
    L0_3()
    L0_3 = L9_2
    if L0_3 then
      L0_3 = L9_2
      L0_3 = L0_3.cleanTable
      L0_3()
    end
  end
  
  L2_1 = L69_2
  L70_2 = L2_2
  L69_2 = L2_2.insert
  L71_2 = L28_2
  L69_2(L70_2, L71_2)
  L69_2 = L3_2.new
  L70_2 = 280
  L71_2 = 86
  L72_2 = 200
  L73_2 = 234
  L74_2 = 30
  L75_2 = nil
  L76_2 = "ranking"
  L77_2 = L20_2
  L69_2 = L69_2(L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2)
  L9_2 = L69_2
  L69_2 = L67_2
  L69_2()
  L69_2 = L0_1
  L69_2 = L69_2.comm
  L69_2 = L69_2.setCallback
  L70_2 = L68_2
  L69_2(L70_2)
  L69_2 = L0_1
  L69_2 = L69_2.comm
  L69_2 = L69_2.getRankingListOnName
  L70_2 = L23_2
  L69_2(L70_2)
end

L1_1.create = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    return
  end
  L4_2 = require
  L5_2 = "lua.modules.androidBackButton"
  L4_2 = L4_2(L5_2)
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = L4_2
    L0_3 = L0_3.removeBackButton
    L0_3()
  end
  
  L3_1 = L5_2
  L5_2 = L4_2.addBackButton
  L6_2 = "lua.scenes.mainMenu"
  L5_2(L6_2)
end

L1_1.show = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    return
  end
  L3_2 = L3_1
  L3_2()
end

L1_1.hide = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.view
  L3_2 = L2_1
  L3_2()
end

L1_1.destroy = L4_1
L5_1 = L1_1
L4_1 = L1_1.addEventListener
L6_1 = "create"
L7_1 = L1_1
L4_1(L5_1, L6_1, L7_1)
L5_1 = L1_1
L4_1 = L1_1.addEventListener
L6_1 = "show"
L7_1 = L1_1
L4_1(L5_1, L6_1, L7_1)
L5_1 = L1_1
L4_1 = L1_1.addEventListener
L6_1 = "hide"
L7_1 = L1_1
L4_1(L5_1, L6_1, L7_1)
L5_1 = L1_1
L4_1 = L1_1.addEventListener
L6_1 = "destroy"
L7_1 = L1_1
L4_1(L5_1, L6_1, L7_1)
return L1_1
