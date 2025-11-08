local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "lua.network.tcpClient"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "lua.overlays.trySkin"
L2_1 = L2_1(L3_1)
L3_1 = L0_1.newScene
L3_1 = L3_1()
L4_1 = nil
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = nil
L14_1 = nil
L15_1 = nil
L16_1 = nil
L17_1 = {}
L18_1 = 0
L19_1 = 0
L20_1 = 0
L21_1 = 0.3
L17_1[1] = L18_1
L17_1[2] = L19_1
L17_1[3] = L20_1
L17_1[4] = L21_1
L18_1 = {}
L19_1 = 1
L20_1 = 1
L21_1 = 1
L22_1 = 0.5
L18_1[1] = L19_1
L18_1[2] = L20_1
L18_1[3] = L21_1
L18_1[4] = L22_1
L19_1 = {}
L20_1 = 1
L21_1 = 1
L22_1 = 1
L23_1 = 1
L19_1[1] = L20_1
L19_1[2] = L21_1
L19_1[3] = L22_1
L19_1[4] = L23_1
L20_1 = {}
L21_1 = 0
L22_1 = 0
L23_1 = 0
L24_1 = 1
L20_1[1] = L21_1
L20_1[2] = L22_1
L20_1[3] = L23_1
L20_1[4] = L24_1

function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = A0_2.view
  L3_2 = {}
  L4_2 = 0.1450980392156863
  L5_2 = 0.08235294117647059
  L6_2 = 0.06274509803921569
  L7_2 = 1
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L4_2 = true
  L5_2 = {}
  L6_1 = L5_2
  L5_2 = {}
  L9_1 = L5_2
  L5_2 = {}
  L7_1 = L5_2
  L5_2 = {}
  L8_1 = L5_2
  L5_2 = {}
  L14_1 = L5_2
  L5_2 = L0_1
  L5_2 = L5_2.backgrounds
  L5_2 = L5_2.getBlurredBackground
  L5_2 = L5_2()
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = "images/gui/lobby/bg_vote.png"
  L8_2 = 132
  L9_2 = 320
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L6_2.anchorX = 0
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 * 0.5
  L6_2.y = L7_2
  L6_2.x = 0
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = "images/gui/lobby/bg_countdown.png"
  L9_2 = 218
  L10_2 = 32
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L7_2.anchorY = 0
  L7_2.y = 0
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 * 0.5
  L8_2 = L8_2 + 45
  L7_2.x = L8_2
  L6_2.alpha = 0
  L7_2.alpha = 0
  L8_2 = L0_1
  L8_2 = L8_2.newText
  L9_2 = {}
  L10_2 = L0_1
  L10_2 = L10_2.localized
  L10_2 = L10_2.get
  L11_2 = "Vote"
  L10_2 = L10_2(L11_2)
  L9_2.string = L10_2
  L10_2 = display
  L10_2 = L10_2.contentWidth
  L10_2 = L10_2 * 0.11
  L9_2.x = L10_2
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L10_2 = L10_2 * 0.05
  L9_2.y = L10_2
  L9_2.size = 30
  L10_2 = {}
  L11_2 = 1
  L12_2 = 1
  L13_2 = 1
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L9_2.color = L10_2
  L8_2 = L8_2(L9_2)
  L8_2.alpha = 0
  L9_2 = require
  L10_2 = "lua.modules.uiElements.informationBubble"
  L9_2 = L9_2(L10_2)
  L10_2 = L9_2.create
  L10_2 = L10_2()
  
  function L11_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A1_3.phase
    if L2_3 == "began" then
      L2_3 = L10_2
      if L2_3 then
        L2_3 = L10_2
        L2_3 = L2_3.interact
        L3_3 = {}
        L3_3.text = "Press one of the images below to vote for the map you want to play."
        L4_3 = display
        L4_3 = L4_3.contentWidth
        L4_3 = L4_3 * 0.28
        L3_3.x = L4_3
        L4_3 = display
        L4_3 = L4_3.contentHeight
        L4_3 = L4_3 * 0.07
        L3_3.y = L4_3
        L3_3.arrowVertical = "bottom"
        L3_3.arrowHorizontal = "left"
        L2_3(L3_3)
      end
    end
  end
  
  L8_2.touch = L11_2
  L13_2 = L8_2
  L12_2 = L8_2.addEventListener
  L14_2 = "touch"
  L15_2 = L8_2
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = 1
  L13_2 = 4
  L14_2 = 1
  for L15_2 = L12_2, L13_2, L14_2 do
    L16_2 = L14_1
    L17_2 = display
    L17_2 = L17_2.newGroup
    L17_2 = L17_2()
    L16_2[L15_2] = L17_2
    L17_2 = L2_2
    L16_2 = L2_2.insert
    L18_2 = L14_1
    L18_2 = L18_2[L15_2]
    L16_2(L17_2, L18_2)
  end
  L12_2 = L0_1
  L12_2 = L12_2.newText
  L13_2 = {}
  L14_2 = L0_1
  L14_2 = L14_2.localized
  L14_2 = L14_2.get
  L15_2 = "SearchingForGame"
  L14_2 = L14_2(L15_2)
  L13_2.string = L14_2
  L14_2 = display
  L14_2 = L14_2.contentWidth
  L14_2 = L14_2 * 0.5
  L13_2.x = L14_2
  L14_2 = display
  L14_2 = L14_2.contentHeight
  L14_2 = L14_2 * 0.5
  L13_2.y = L14_2
  L13_2.size = 27
  L12_2 = L12_2(L13_2)
  L13_2 = L6_1
  L14_2 = display
  L14_2 = L14_2.newImageRect
  L15_2 = "images/gui/lobby/6.png"
  L16_2 = 81
  L17_2 = 28
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L13_2[1] = L14_2
  L13_2 = L6_1
  L13_2 = L13_2[1]
  L13_2.alpha = 0
  L13_2 = L6_1
  L13_2 = L13_2[1]
  L13_2.x = 0
  L13_2 = L6_1
  L13_2 = L13_2[1]
  L13_2.y = 32
  L13_2 = L14_1
  L13_2 = L13_2[1]
  L14_2 = L13_2
  L13_2 = L13_2.insert
  L15_2 = L6_1
  L15_2 = L15_2[1]
  L13_2(L14_2, L15_2)
  L13_2 = L7_1
  L14_2 = L0_1
  L14_2 = L14_2.newText
  L15_2 = {}
  L16_2 = L0_1
  L16_2 = L16_2.localized
  L16_2 = L16_2.get
  L17_2 = "Searching"
  L16_2 = L16_2(L17_2)
  L15_2.string = L16_2
  L16_2 = display
  L16_2 = L16_2.contentWidth
  L16_2 = L16_2 * 0.45
  L15_2.x = L16_2
  L16_2 = display
  L16_2 = L16_2.contentHeight
  L16_2 = L16_2 * 0.53
  L15_2.y = L16_2
  L15_2.size = 15
  L16_2 = {}
  L17_2 = 1
  L18_2 = 1
  L19_2 = 1
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L16_2[3] = L19_2
  L15_2.color = L16_2
  L14_2 = L14_2(L15_2)
  L13_2[1] = L14_2
  L13_2 = L7_1
  L13_2 = L13_2[1]
  L13_2.alpha = 0
  L13_2 = L9_1
  L14_2 = display
  L14_2 = L14_2.newRect
  L15_2 = L7_1
  L15_2 = L15_2[1]
  L15_2 = L15_2.x
  L16_2 = L7_1
  L16_2 = L16_2[1]
  L16_2 = L16_2.y
  L17_2 = 130
  L18_2 = 18
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
  L13_2[1] = L14_2
  L13_2 = L9_1
  L13_2 = L13_2[1]
  L13_2.anchorX = 0.5
  L13_2 = L9_1
  L13_2 = L13_2[1]
  L13_2.anchorY = 0.5
  L13_2 = L9_1
  L13_2 = L13_2[1]
  L14_2 = L13_2
  L13_2 = L13_2.setFillColor
  L15_2 = 0
  L16_2 = 0
  L17_2 = 0
  L18_2 = 0
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L13_2 = L8_1
  L14_2 = {}
  L13_2[1] = L14_2
  L13_2 = L8_1
  L13_2 = L13_2[1]
  L14_2 = L9_1
  L14_2 = L14_2[1]
  L14_2 = L14_2.x
  L15_2 = L9_1
  L15_2 = L15_2[1]
  L15_2 = L15_2.width
  L15_2 = 0.5 * L15_2
  L14_2 = L14_2 - L15_2
  L14_2 = L14_2 - 2
  L13_2.x = L14_2
  L13_2 = L8_1
  L13_2 = L13_2[1]
  L14_2 = L9_1
  L14_2 = L14_2[1]
  L14_2 = L14_2.y
  L13_2.y = L14_2
  L13_2 = L6_1
  L14_2 = display
  L14_2 = L14_2.newImageRect
  L15_2 = "images/gui/lobby/6.png"
  L16_2 = 81
  L17_2 = 28
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L13_2[2] = L14_2
  L13_2 = L6_1
  L13_2 = L13_2[2]
  L13_2.x = 0
  L13_2 = L6_1
  L13_2 = L13_2[2]
  L13_2.y = 32
  L13_2 = L6_1
  L13_2 = L13_2[2]
  L13_2.alpha = 0
  L13_2 = L14_1
  L13_2 = L13_2[2]
  L14_2 = L13_2
  L13_2 = L13_2.insert
  L15_2 = L6_1
  L15_2 = L15_2[2]
  L13_2(L14_2, L15_2)
  L13_2 = L7_1
  L14_2 = L0_1
  L14_2 = L14_2.newText
  L15_2 = {}
  L16_2 = L0_1
  L16_2 = L16_2.localized
  L16_2 = L16_2.get
  L17_2 = "Searching"
  L16_2 = L16_2(L17_2)
  L15_2.string = L16_2
  L16_2 = display
  L16_2 = L16_2.contentWidth
  L16_2 = L16_2 * 0.77
  L15_2.x = L16_2
  L16_2 = display
  L16_2 = L16_2.contentHeight
  L16_2 = L16_2 * 0.53
  L15_2.y = L16_2
  L15_2.size = 15
  L16_2 = {}
  L17_2 = 1
  L18_2 = 1
  L19_2 = 1
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L16_2[3] = L19_2
  L15_2.color = L16_2
  L14_2 = L14_2(L15_2)
  L13_2[2] = L14_2
  L13_2 = L7_1
  L13_2 = L13_2[2]
  L13_2.alpha = 0
  L13_2 = L9_1
  L14_2 = display
  L14_2 = L14_2.newRect
  L15_2 = L7_1
  L15_2 = L15_2[2]
  L15_2 = L15_2.x
  L16_2 = L7_1
  L16_2 = L16_2[2]
  L16_2 = L16_2.y
  L17_2 = 130
  L18_2 = 18
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
  L13_2[2] = L14_2
  L13_2 = L9_1
  L13_2 = L13_2[2]
  L13_2.anchorX = 0.5
  L13_2 = L9_1
  L13_2 = L13_2[2]
  L13_2.anchorY = 0.5
  L13_2 = L9_1
  L13_2 = L13_2[2]
  L14_2 = L13_2
  L13_2 = L13_2.setFillColor
  L15_2 = 0
  L16_2 = 0
  L17_2 = 0
  L18_2 = 0
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L13_2 = L8_1
  L14_2 = {}
  L13_2[2] = L14_2
  L13_2 = L8_1
  L13_2 = L13_2[2]
  L14_2 = L9_1
  L14_2 = L14_2[2]
  L14_2 = L14_2.x
  L15_2 = L9_1
  L15_2 = L15_2[2]
  L15_2 = L15_2.width
  L15_2 = 0.5 * L15_2
  L14_2 = L14_2 - L15_2
  L14_2 = L14_2 - 2
  L13_2.x = L14_2
  L13_2 = L8_1
  L13_2 = L13_2[2]
  L14_2 = L9_1
  L14_2 = L14_2[2]
  L14_2 = L14_2.y
  L13_2.y = L14_2
  L13_2 = L6_1
  L14_2 = display
  L14_2 = L14_2.newImageRect
  L15_2 = "images/gui/lobby/6.png"
  L16_2 = 81
  L17_2 = 28
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L13_2[3] = L14_2
  L13_2 = L6_1
  L13_2 = L13_2[3]
  L13_2.x = 0
  L13_2 = L6_1
  L13_2 = L13_2[3]
  L13_2.y = 32
  L13_2 = L6_1
  L13_2 = L13_2[3]
  L13_2.alpha = 0
  L13_2 = L14_1
  L13_2 = L13_2[3]
  L14_2 = L13_2
  L13_2 = L13_2.insert
  L15_2 = L6_1
  L15_2 = L15_2[3]
  L13_2(L14_2, L15_2)
  L13_2 = L7_1
  L14_2 = L0_1
  L14_2 = L14_2.newText
  L15_2 = {}
  L16_2 = L0_1
  L16_2 = L16_2.localized
  L16_2 = L16_2.get
  L17_2 = "Searching"
  L16_2 = L16_2(L17_2)
  L15_2.string = L16_2
  L16_2 = display
  L16_2 = L16_2.contentWidth
  L16_2 = L16_2 * 0.45
  L15_2.x = L16_2
  L16_2 = display
  L16_2 = L16_2.contentHeight
  L16_2 = L16_2 * 0.96
  L15_2.y = L16_2
  L15_2.size = 15
  L16_2 = {}
  L17_2 = 1
  L18_2 = 1
  L19_2 = 1
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L16_2[3] = L19_2
  L15_2.color = L16_2
  L14_2 = L14_2(L15_2)
  L13_2[3] = L14_2
  L13_2 = L7_1
  L13_2 = L13_2[3]
  L13_2.alpha = 0
  L13_2 = L9_1
  L14_2 = display
  L14_2 = L14_2.newRect
  L15_2 = L7_1
  L15_2 = L15_2[3]
  L15_2 = L15_2.x
  L16_2 = L7_1
  L16_2 = L16_2[3]
  L16_2 = L16_2.y
  L17_2 = 130
  L18_2 = 18
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
  L13_2[3] = L14_2
  L13_2 = L9_1
  L13_2 = L13_2[3]
  L13_2.anchorX = 0.5
  L13_2 = L9_1
  L13_2 = L13_2[3]
  L13_2.anchorY = 0.5
  L13_2 = L9_1
  L13_2 = L13_2[3]
  L14_2 = L13_2
  L13_2 = L13_2.setFillColor
  L15_2 = 0
  L16_2 = 0
  L17_2 = 0
  L18_2 = 0
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L13_2 = L8_1
  L14_2 = {}
  L13_2[3] = L14_2
  L13_2 = L8_1
  L13_2 = L13_2[3]
  L14_2 = L9_1
  L14_2 = L14_2[3]
  L14_2 = L14_2.x
  L15_2 = L9_1
  L15_2 = L15_2[3]
  L15_2 = L15_2.width
  L15_2 = 0.5 * L15_2
  L14_2 = L14_2 - L15_2
  L14_2 = L14_2 - 2
  L13_2.x = L14_2
  L13_2 = L8_1
  L13_2 = L13_2[3]
  L14_2 = L9_1
  L14_2 = L14_2[3]
  L14_2 = L14_2.y
  L13_2.y = L14_2
  L13_2 = L6_1
  L14_2 = display
  L14_2 = L14_2.newImageRect
  L15_2 = "images/gui/lobby/6.png"
  L16_2 = 81
  L17_2 = 28
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L13_2[4] = L14_2
  L13_2 = L6_1
  L13_2 = L13_2[4]
  L13_2.x = 0
  L13_2 = L6_1
  L13_2 = L13_2[4]
  L13_2.y = 32
  L13_2 = L6_1
  L13_2 = L13_2[4]
  L13_2.alpha = 0
  L13_2 = L14_1
  L13_2 = L13_2[4]
  L14_2 = L13_2
  L13_2 = L13_2.insert
  L15_2 = L6_1
  L15_2 = L15_2[4]
  L13_2(L14_2, L15_2)
  L13_2 = L7_1
  L14_2 = L0_1
  L14_2 = L14_2.newText
  L15_2 = {}
  L16_2 = L0_1
  L16_2 = L16_2.localized
  L16_2 = L16_2.get
  L17_2 = "Searching"
  L16_2 = L16_2(L17_2)
  L15_2.string = L16_2
  L16_2 = display
  L16_2 = L16_2.contentWidth
  L16_2 = L16_2 * 0.77
  L15_2.x = L16_2
  L16_2 = display
  L16_2 = L16_2.contentHeight
  L16_2 = L16_2 * 0.96
  L15_2.y = L16_2
  L15_2.size = 15
  L16_2 = {}
  L17_2 = 1
  L18_2 = 1
  L19_2 = 1
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L16_2[3] = L19_2
  L15_2.color = L16_2
  L14_2 = L14_2(L15_2)
  L13_2[4] = L14_2
  L13_2 = L7_1
  L13_2 = L13_2[4]
  L13_2.alpha = 0
  L13_2 = L9_1
  L14_2 = display
  L14_2 = L14_2.newRect
  L15_2 = L7_1
  L15_2 = L15_2[4]
  L15_2 = L15_2.x
  L16_2 = L7_1
  L16_2 = L16_2[4]
  L16_2 = L16_2.y
  L17_2 = 130
  L18_2 = 18
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
  L13_2[4] = L14_2
  L13_2 = L9_1
  L13_2 = L13_2[4]
  L13_2.anchorX = 0.5
  L13_2 = L9_1
  L13_2 = L13_2[4]
  L13_2.anchorY = 0.5
  L13_2 = L9_1
  L13_2 = L13_2[4]
  L14_2 = L13_2
  L13_2 = L13_2.setFillColor
  L15_2 = 0
  L16_2 = 0
  L17_2 = 0
  L18_2 = 0
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L13_2 = L8_1
  L14_2 = {}
  L13_2[4] = L14_2
  L13_2 = L8_1
  L13_2 = L13_2[4]
  L14_2 = L9_1
  L14_2 = L14_2[4]
  L14_2 = L14_2.x
  L15_2 = L9_1
  L15_2 = L15_2[4]
  L15_2 = L15_2.width
  L15_2 = 0.5 * L15_2
  L14_2 = L14_2 - L15_2
  L14_2 = L14_2 - 2
  L13_2.x = L14_2
  L13_2 = L8_1
  L13_2 = L13_2[4]
  L14_2 = L9_1
  L14_2 = L14_2[4]
  L14_2 = L14_2.y
  L13_2.y = L14_2
  L13_2 = L14_1
  L13_2 = L13_2[1]
  L14_2 = display
  L14_2 = L14_2.contentWidth
  L14_2 = L14_2 * 0.45
  L13_2.x = L14_2
  L13_2 = L14_1
  L13_2 = L13_2[1]
  L14_2 = display
  L14_2 = L14_2.contentHeight
  L14_2 = L14_2 * 0.35
  L13_2.y = L14_2
  L13_2 = L14_1
  L13_2 = L13_2[2]
  L14_2 = display
  L14_2 = L14_2.contentWidth
  L14_2 = L14_2 * 0.77
  L13_2.x = L14_2
  L13_2 = L14_1
  L13_2 = L13_2[2]
  L14_2 = display
  L14_2 = L14_2.contentHeight
  L14_2 = L14_2 * 0.35
  L13_2.y = L14_2
  L13_2 = L14_1
  L13_2 = L13_2[3]
  L14_2 = display
  L14_2 = L14_2.contentWidth
  L14_2 = L14_2 * 0.45
  L13_2.x = L14_2
  L13_2 = L14_1
  L13_2 = L13_2[3]
  L14_2 = display
  L14_2 = L14_2.contentHeight
  L14_2 = L14_2 * 0.78
  L13_2.y = L14_2
  L13_2 = L14_1
  L13_2 = L13_2[4]
  L14_2 = display
  L14_2 = L14_2.contentWidth
  L14_2 = L14_2 * 0.77
  L13_2.x = L14_2
  L13_2 = L14_1
  L13_2 = L13_2[4]
  L14_2 = display
  L14_2 = L14_2.contentHeight
  L14_2 = L14_2 * 0.78
  L13_2.y = L14_2
  L13_2 = L0_1
  L13_2 = L13_2.newText
  L14_2 = {}
  L14_2.string = "0"
  L14_2.x = 50
  L14_2.y = 66
  L14_2.size = 20
  L13_2 = L13_2(L14_2)
  L10_1 = L13_2
  L13_2 = L10_1
  L14_2 = L13_2
  L13_2 = L13_2.setFillColor
  L15_2 = L3_2[1]
  L16_2 = L3_2[2]
  L17_2 = L3_2[3]
  L18_2 = L3_2[4]
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L13_2 = L10_1
  L13_2.alpha = 0
  L13_2 = L0_1
  L13_2 = L13_2.newText
  L14_2 = {}
  L14_2.string = "0"
  L14_2.x = 50
  L14_2.y = 170
  L14_2.size = 20
  L13_2 = L13_2(L14_2)
  L11_1 = L13_2
  L13_2 = L11_1
  L14_2 = L13_2
  L13_2 = L13_2.setFillColor
  L15_2 = L3_2[1]
  L16_2 = L3_2[2]
  L17_2 = L3_2[3]
  L18_2 = L3_2[4]
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L13_2 = L11_1
  L13_2.alpha = 0
  L13_2 = L0_1
  L13_2 = L13_2.newText
  L14_2 = {}
  L14_2.string = "0"
  L14_2.x = 200
  L14_2.y = 14
  L14_2.size = 24
  L14_2.ax = 0
  L15_2 = {}
  L16_2 = 1
  L17_2 = 1
  L18_2 = 1
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L14_2.color = L15_2
  L13_2 = L13_2(L14_2)
  L12_1 = L13_2
  L13_2 = L12_1
  L13_2.alpha = 0
  
  function L13_2(A0_3)
    local L1_3, L2_3
    L1_3 = L0_1
    L1_3 = L1_3.gotoScene
    L2_3 = "lua.scenes.mainMenu"
    L1_3(L2_3)
  end
  
  L14_2 = L0_1
  L14_2 = L14_2.newButton
  L15_2 = {}
  L15_2.image = "images/gui/common/buttonHome.png"
  L15_2.width = 90
  L15_2.height = 57
  L15_2.onRelease = L13_2
  L15_2.x = 50
  L15_2.y = 292
  L14_2 = L14_2(L15_2)
  L14_2.alpha = 0
  
  function L15_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = L4_2
    if L0_3 then
      L0_3 = false
      L4_2 = L0_3
      L0_3 = L12_2
      L0_3.alpha = 0
      L0_3 = L6_2
      L0_3.alpha = 1
      L0_3 = L7_2
      L0_3.alpha = 1
      L0_3 = L8_2
      L0_3.alpha = 1
      L0_3 = 1
      L1_3 = 4
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L6_1
        L4_3 = L4_3[L3_3]
        L4_3.alpha = 1
        L4_3 = L7_1
        L4_3 = L4_3[L3_3]
        L4_3.alpha = 1
        L4_3 = L9_1
        L4_3 = L4_3[L3_3]
        L5_3 = L4_3
        L4_3 = L4_3.setFillColor
        L6_3 = unpack
        L7_3 = L17_1
        L6_3, L7_3, L8_3 = L6_3(L7_3)
        L4_3(L5_3, L6_3, L7_3, L8_3)
        L4_3 = L9_1
        L4_3 = L4_3[L3_3]
        L4_3.strokeWidth = 1
        L4_3 = L9_1
        L4_3 = L4_3[L3_3]
        L5_3 = L4_3
        L4_3 = L4_3.setStrokeColor
        L6_3 = 0
        L7_3 = 0
        L8_3 = 0
        L4_3(L5_3, L6_3, L7_3, L8_3)
      end
      L0_3 = L10_1
      L0_3.alpha = 1
      L0_3 = L11_1
      L0_3.alpha = 1
      L0_3 = L12_1
      L0_3.alpha = 1
      L0_3 = L14_2
      L0_3.alpha = 1
    end
  end
  
  L13_1 = L15_2
  
  function L15_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L5_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L6_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L7_2
    L0_3(L1_3, L2_3)
    L0_3 = 1
    L1_3 = 4
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L2_2
      L5_3 = L4_3
      L4_3 = L4_3.insert
      L6_3 = L14_1
      L6_3 = L6_3[L3_3]
      L4_3(L5_3, L6_3)
      L4_3 = L2_2
      L5_3 = L4_3
      L4_3 = L4_3.insert
      L6_3 = L9_1
      L6_3 = L6_3[L3_3]
      L4_3(L5_3, L6_3)
      L4_3 = L2_2
      L5_3 = L4_3
      L4_3 = L4_3.insert
      L6_3 = L7_1
      L6_3 = L6_3[L3_3]
      L4_3(L5_3, L6_3)
      L4_3 = L8_1
      L4_3 = L4_3[L3_3]
      L4_3 = L4_3.img
      if L4_3 then
        L4_3 = L2_2
        L5_3 = L4_3
        L4_3 = L4_3.insert
        L6_3 = L8_1
        L6_3 = L6_3[L3_3]
        L6_3 = L6_3.img
        L4_3(L5_3, L6_3)
      end
    end
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L10_1
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L11_1
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L8_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L12_1
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L12_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L14_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L10_2
    L0_3(L1_3, L2_3)
  end
  
  function L16_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L14_2
    L0_3(L1_3)
    L0_3 = L8_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L8_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L15_1
    if L0_3 then
      L0_3 = display
      L0_3 = L0_3.remove
      L1_3 = L15_1
      L0_3(L1_3)
    end
    L0_3 = L16_1
    if L0_3 then
      L0_3 = display
      L0_3 = L0_3.remove
      L1_3 = L16_1
      L0_3(L1_3)
    end
  end
  
  L4_1 = L16_2
  L16_2 = L15_2
  L16_2()
end

L3_1.create = L21_1

function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    return
  end
  L4_2 = require
  L5_2 = "spine-corona.monsterLoader"
  L4_2 = L4_2(L5_2)
  L5_2 = require
  L6_2 = "lua.modules.androidBackButton"
  L5_2 = L5_2(L6_2)
  L6_2 = require
  L7_2 = "lua.network.tcpMessageFormat"
  L6_2 = L6_2(L7_2)
  L7_2 = {}
  L8_2 = 0
  L9_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L8_2 = 0
  L9_2 = 0
  L10_2 = {}
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L14_2 = 0
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  L11_2 = true
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L15_2 = L0_1
  L15_2 = L15_2.database
  L15_2 = L15_2.getPlayerInformation
  L15_2 = L15_2()
  L15_2 = L15_2.playerId
  L16_2 = nil
  L17_2 = nil
  L18_2 = nil
  L19_2 = nil
  L20_2 = nil
  L21_2 = nil
  L22_2 = nil
  L23_2 = nil
  L24_2 = {}
  L25_2 = nil
  L26_2 = L5_2.addBackButton
  L27_2 = "lua.scenes.playMenu"
  L28_2 = "lua.scenes.lobbyQuickPlay"
  L26_2(L27_2, L28_2)
  L26_2 = L0_1
  L26_2 = L26_2.data
  L26_2 = L26_2.gameInfo
  L26_2.crazyModeActive = false
  L26_2 = L0_1
  L26_2 = L26_2.data
  L26_2 = L26_2.gameInfo
  L26_2.crazyMode = 0
  
  function L26_2(A0_3)
    local L1_3, L2_3
    L1_3 = L24_2
    L1_3 = L1_3[A0_3]
    if L1_3 then
      L1_3 = L24_2
      L1_3 = L1_3[A0_3]
      L1_3 = L1_3.clean
      L1_3()
      L1_3 = L24_2
      L1_3[A0_3] = nil
    end
    L1_3 = L6_1
    L1_3 = L1_3[A0_3]
    if L1_3 then
      L1_3 = L6_1
      L1_3 = L1_3[A0_3]
      L2_3 = L1_3
      L1_3 = L1_3.removeSelf
      L1_3(L2_3)
      L1_3 = L6_1
      L1_3[A0_3] = nil
    end
  end
  
  function L27_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = "images/gui/lobby/6.png"
    if A1_3 then
      L3_3 = L0_1
      L3_3 = L3_3.storeConfig
      L3_3 = L3_3.getPlateId
      L4_3 = A1_3
      L3_3 = L3_3(L4_3)
      L4_3 = "images/gui/lobby/"
      L5_3 = L3_3
      L6_3 = ".png"
      L2_3 = L4_3 .. L5_3 .. L6_3
    end
    L3_3 = L6_1
    L4_3 = display
    L4_3 = L4_3.newImageRect
    L5_3 = L2_3
    L6_3 = 81
    L7_3 = 28
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L3_3[A0_3] = L4_3
    L3_3 = L6_1
    L3_3 = L3_3[A0_3]
    L3_3.x = 0
    L3_3 = L6_1
    L3_3 = L3_3[A0_3]
    L3_3.y = 32
    L3_3 = L14_1
    L3_3 = L3_3[A0_3]
    L4_3 = L3_3
    L3_3 = L3_3.insert
    L5_3 = L6_1
    L5_3 = L5_3[A0_3]
    L3_3(L4_3, L5_3)
  end
  
  function L28_2(A0_3)
    local L1_3, L2_3
    L1_3 = L8_1
    L1_3 = L1_3[A0_3]
    L1_3 = L1_3.img
    if L1_3 then
      L1_3 = L8_1
      L1_3 = L1_3[A0_3]
      L1_3 = L1_3.img
      L1_3 = L1_3.removeSelf
      if L1_3 then
        L1_3 = L8_1
        L1_3 = L1_3[A0_3]
        L1_3 = L1_3.img
        L2_3 = L1_3
        L1_3 = L1_3.removeSelf
        L1_3(L2_3)
        L1_3 = L8_1
        L1_3 = L1_3[A0_3]
        L1_3.img = nil
      end
    end
  end
  
  function L29_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    if A2_3 then
      L6_3 = L24_2
      L6_3 = L6_3[A0_3]
      if L6_3 then
        L6_3 = L24_2
        L6_3 = L6_3[A0_3]
        L6_3 = L6_3.playerId
        if L6_3 == A4_3 then
          return
        end
      end
      L6_3 = L26_2
      L7_3 = A0_3
      L6_3(L7_3)
      L6_3 = L27_2
      L7_3 = A0_3
      L8_3 = A1_3
      L6_3(L7_3, L8_3)
      L6_3 = L0_1
      L6_3 = L6_3.data
      L6_3 = L6_3.gameInfo
      L6_3 = L6_3.players
      L6_3 = L6_3[A0_3]
      L6_3 = L6_3.clanState
      if L6_3 then
        L6_3 = L0_1
        L6_3 = L6_3.data
        L6_3 = L6_3.gameInfo
        L6_3 = L6_3.players
        L6_3 = L6_3[A0_3]
        L6_3 = L6_3.clanState
        L6_3 = L6_3.c
      end
      L7_3 = L24_2
      L8_3 = L4_2
      L8_3 = L8_3.new
      L9_3 = A1_3
      L10_3 = true
      L11_3 = nil
      L12_3 = L6_3
      L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3)
      L7_3[A0_3] = L8_3
      L7_3 = L24_2
      L7_3 = L7_3[A0_3]
      L7_3 = L7_3.stopAllAnimation
      L7_3()
      L7_3 = L24_2
      L7_3 = L7_3[A0_3]
      L7_3.playerId = A4_3
      L7_3 = L24_2
      L7_3 = L7_3[A0_3]
      L7_3 = L7_3.getGroup
      L7_3 = L7_3()
      L7_3.xScale = 0.36
      L7_3.yScale = 0.36
      L8_3 = L14_1
      L8_3 = L8_3[A0_3]
      L9_3 = L8_3
      L8_3 = L8_3.insert
      L10_3 = L7_3
      L8_3(L9_3, L10_3)
    else
      L6_3 = L26_2
      L7_3 = A0_3
      L6_3(L7_3)
      L6_3 = L27_2
      L7_3 = A0_3
      L6_3(L7_3)
      L6_3 = L28_2
      L7_3 = A0_3
      L6_3(L7_3)
    end
    L6_3 = L7_1
    L6_3 = L6_3[A0_3]
    L6_3.text = A3_3
    L6_3 = L0_1
    L6_3 = L6_3.database
    L6_3 = L6_3.getPlayerInformation
    L6_3 = L6_3()
    L6_3 = L6_3.playerId
    if A4_3 == L6_3 then
      L6_3 = L9_1
      L6_3 = L6_3[A0_3]
      L7_3 = L6_3
      L6_3 = L6_3.setFillColor
      L8_3 = unpack
      L9_3 = L18_1
      L8_3, L9_3, L10_3, L11_3, L12_3 = L8_3(L9_3)
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L6_3 = L7_1
      L6_3 = L6_3[A0_3]
      L7_3 = L6_3
      L6_3 = L6_3.setFillColor
      L8_3 = unpack
      L9_3 = L20_1
      L8_3, L9_3, L10_3, L11_3, L12_3 = L8_3(L9_3)
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    else
      L6_3 = L9_1
      L6_3 = L6_3[A0_3]
      L7_3 = L6_3
      L6_3 = L6_3.setFillColor
      L8_3 = unpack
      L9_3 = L17_1
      L8_3, L9_3, L10_3, L11_3, L12_3 = L8_3(L9_3)
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L6_3 = L7_1
      L6_3 = L6_3[A0_3]
      L7_3 = L6_3
      L6_3 = L6_3.setFillColor
      L8_3 = unpack
      L9_3 = L19_1
      L8_3, L9_3, L10_3, L11_3, L12_3 = L8_3(L9_3)
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    end
    L6_3 = L28_2
    L7_3 = A0_3
    L6_3(L7_3)
  end
  
  function L30_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = 0
    L8_2 = L0_3
    L0_3 = 0
    L9_2 = L0_3
    L0_3 = 1
    L1_3 = L10_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L10_2
      L4_3 = L4_3[L3_3]
      L5_3 = L7_2
      L5_3 = L5_3[1]
      if L4_3 == L5_3 then
        L4_3 = L8_2
        L4_3 = L4_3 + 1
        L8_2 = L4_3
      else
        L4_3 = L10_2
        L4_3 = L4_3[L3_3]
        L5_3 = L7_2
        L5_3 = L5_3[2]
        if L4_3 == L5_3 then
          L4_3 = L9_2
          L4_3 = L4_3 + 1
          L9_2 = L4_3
        end
      end
    end
    L0_3 = L10_1
    L1_3 = L8_2
    L0_3.text = L1_3
    L0_3 = L11_1
    L1_3 = L9_2
    L0_3.text = L1_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L10_1
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L11_1
    L0_3(L1_3, L2_3)
  end
  
  function L31_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = L1_1
    L2_3 = L2_3.sendMapSelected
    L3_3 = L7_2
    L3_3 = L3_3[1]
    L2_3(L3_3)
  end
  
  function L32_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = L1_1
    L2_3 = L2_3.sendMapSelected
    L3_3 = L7_2
    L3_3 = L3_3[2]
    L2_3(L3_3)
  end
  
  function L33_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L2_3 = A0_3
    L3_3 = A1_3
    L4_3 = display
    L4_3 = L4_3.newImageRect
    L5_3 = L2_3
    L6_3 = 88
    L7_3 = 90
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L18_2 = L4_3
    L4_3 = L0_1
    L4_3 = L4_3.data
    L4_3 = L4_3.getMapInfo
    L5_3 = L7_2
    L5_3 = L5_3[1]
    L4_3 = L4_3(L5_3)
    L5_3 = L18_2
    if not L5_3 then
      if L4_3 then
        L5_3 = L4_3.theme
        L6_3 = "images/gui/practice/default"
        L7_3 = L5_3
        L8_3 = ".png"
        L2_3 = L6_3 .. L7_3 .. L8_3
        L6_3 = display
        L6_3 = L6_3.newImageRect
        L7_3 = L2_3
        L8_3 = 88
        L9_3 = 90
        L6_3 = L6_3(L7_3, L8_3, L9_3)
        L18_2 = L6_3
      else
        L2_3 = "images/gui/practice/iconRandom.png"
        L5_3 = display
        L5_3 = L5_3.newImageRect
        L6_3 = L2_3
        L7_3 = 88
        L8_3 = 90
        L5_3 = L5_3(L6_3, L7_3, L8_3)
        L18_2 = L5_3
      end
    end
    L5_3 = L18_2
    L5_3.isVisible = false
    L5_3 = L18_2
    L5_3.x = 50
    L5_3 = L18_2
    L5_3.y = 102
    L5_3 = L2_2
    L6_3 = L5_3
    L5_3 = L5_3.insert
    L7_3 = L18_2
    L5_3(L6_3, L7_3)
    L5_3 = L0_1
    L5_3 = L5_3.newButton
    L6_3 = {}
    L6_3.image = L2_3
    L6_3.width = 88
    L6_3.height = 90
    L7_3 = L31_2
    L6_3.onPress = L7_3
    L6_3.x = 50
    L6_3.y = 102
    L5_3 = L5_3(L6_3)
    L15_1 = L5_3
    L5_3 = L2_2
    L6_3 = L5_3
    L5_3 = L5_3.insert
    L7_3 = L15_1
    L5_3(L6_3, L7_3)
    if L4_3 then
      L5_3 = L0_1
      L5_3 = L5_3.newText
      L6_3 = {}
      L7_3 = L4_3.name
      L6_3.string = L7_3
      L6_3.size = 14
      L7_3 = L18_2
      L7_3 = L7_3.x
      L6_3.x = L7_3
      L7_3 = L18_2
      L7_3 = L7_3.y
      L7_3 = L7_3 + 28
      L6_3.y = L7_3
      L5_3 = L5_3(L6_3)
      L20_2 = L5_3
      L5_3 = L2_2
      L6_3 = L5_3
      L5_3 = L5_3.insert
      L7_3 = L20_2
      L5_3(L6_3, L7_3)
    end
    L5_3 = display
    L5_3 = L5_3.newImageRect
    L6_3 = L3_3
    L7_3 = 88
    L8_3 = 90
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    L19_2 = L5_3
    L5_3 = L0_1
    L5_3 = L5_3.data
    L5_3 = L5_3.getMapInfo
    L6_3 = L7_2
    L6_3 = L6_3[2]
    L5_3 = L5_3(L6_3)
    L6_3 = L19_2
    if not L6_3 then
      if L5_3 then
        L6_3 = L5_3.theme
        L7_3 = "images/gui/practice/default"
        L8_3 = L6_3
        L9_3 = ".png"
        L3_3 = L7_3 .. L8_3 .. L9_3
        L7_3 = display
        L7_3 = L7_3.newImageRect
        L8_3 = L3_3
        L9_3 = 88
        L10_3 = 90
        L7_3 = L7_3(L8_3, L9_3, L10_3)
        L19_2 = L7_3
      else
        L3_3 = "images/gui/practice/iconRandom.png"
        L6_3 = display
        L6_3 = L6_3.newImageRect
        L7_3 = L3_3
        L8_3 = 88
        L9_3 = 90
        L6_3 = L6_3(L7_3, L8_3, L9_3)
        L19_2 = L6_3
      end
    end
    L6_3 = L19_2
    L6_3.isVisible = false
    L6_3 = L19_2
    L6_3.x = 50
    L6_3 = L19_2
    L6_3.y = 206
    L6_3 = L2_2
    L7_3 = L6_3
    L6_3 = L6_3.insert
    L8_3 = L19_2
    L6_3(L7_3, L8_3)
    L6_3 = L0_1
    L6_3 = L6_3.newButton
    L7_3 = {}
    L7_3.image = L3_3
    L7_3.width = 88
    L7_3.height = 90
    L8_3 = L32_2
    L7_3.onPress = L8_3
    L7_3.x = 50
    L7_3.y = 206
    L6_3 = L6_3(L7_3)
    L16_1 = L6_3
    L6_3 = L2_2
    L7_3 = L6_3
    L6_3 = L6_3.insert
    L8_3 = L16_1
    L6_3(L7_3, L8_3)
    if L5_3 then
      L6_3 = L0_1
      L6_3 = L6_3.newText
      L7_3 = {}
      L8_3 = L5_3.name
      L7_3.string = L8_3
      L7_3.size = 14
      L8_3 = L19_2
      L8_3 = L8_3.x
      L7_3.x = L8_3
      L8_3 = L19_2
      L8_3 = L8_3.y
      L8_3 = L8_3 + 29
      L7_3.y = L8_3
      L6_3 = L6_3(L7_3)
      L21_2 = L6_3
      L6_3 = L2_2
      L7_3 = L6_3
      L6_3 = L6_3.insert
      L8_3 = L21_2
      L6_3(L7_3, L8_3)
    end
  end
  
  function L34_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = tonumber
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = tonumber
    L3_3 = L7_2
    L3_3 = L3_3[1]
    L2_3 = L2_3(L3_3)
    if L1_3 == L2_3 then
      L1_3 = L0_1
      L1_3 = L1_3.data
      L1_3 = L1_3.gameInfo
      L2_3 = L7_2
      L2_3 = L2_3[1]
      L1_3.map = L2_3
    else
      L1_3 = L0_1
      L1_3 = L1_3.data
      L1_3 = L1_3.gameInfo
      L2_3 = L7_2
      L2_3 = L2_3[2]
      L1_3.map = L2_3
    end
  end
  
  function L35_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L11_2
    if L0_3 then
      L0_3 = false
      L11_2 = L0_3
      L0_3 = "images/gui/practice/icon"
      L1_3 = L7_2
      L1_3 = L1_3[1]
      L2_3 = ".png"
      L0_3 = L0_3 .. L1_3 .. L2_3
      L1_3 = "images/gui/practice/icon"
      L2_3 = L7_2
      L2_3 = L2_3[2]
      L3_3 = ".png"
      L1_3 = L1_3 .. L2_3 .. L3_3
      L2_3 = L33_2
      L3_3 = L0_3
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
    end
  end
  
  function L36_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.gotoScene
    L1_3 = "lua.scenes.playMenu"
    L0_3(L1_3)
  end
  
  function L37_2(A0_3)
    local L1_3
    L1_3 = A0_3.action
    if "clicked" == L1_3 then
      L1_3 = nil
      L22_2 = L1_3
      L1_3 = nil
      L23_2 = L1_3
      L1_3 = L36_2
      L1_3()
    end
  end
  
  function L38_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L0_1
    L0_3 = L0_3.suspendAlert
    if L0_3 then
      return
    end
    L0_3 = L22_2
    if not L0_3 then
      L0_3 = L23_2
      if not L0_3 then
        L0_3 = L1_1
        L0_3 = L0_3.stopTCPClient
        L0_3()
        L0_3 = isSimulator
        if L0_3 then
          L0_3 = L0_1
          L0_3 = L0_3.config
          L0_3 = L0_3.bot
          if L0_3 then
            L0_3 = L0_1
            L0_3 = L0_3.gotoScene
            L1_3 = "lua.scenes.playMenu"
            L0_3(L1_3)
        end
        else
          L0_3 = native
          L0_3 = L0_3.showAlert
          L1_3 = L0_1
          L1_3 = L1_3.localized
          L1_3 = L1_3.get
          L2_3 = "Disconnected"
          L1_3 = L1_3(L2_3)
          L2_3 = L0_1
          L2_3 = L2_3.localized
          L2_3 = L2_3.get
          L3_3 = "You have lost the connection. Press the ok button to return to the menu."
          L2_3 = L2_3(L3_3)
          L3_3 = {}
          L4_3 = L0_1
          L4_3 = L4_3.localized
          L4_3 = L4_3.get
          L5_3 = "Ok"
          L4_3, L5_3 = L4_3(L5_3)
          L3_3[1] = L4_3
          L3_3[2] = L5_3
          L4_3 = L37_2
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
          L22_2 = L0_3
        end
      end
    end
  end
  
  function L39_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L22_2
    if not L0_3 then
      L0_3 = native
      L0_3 = L0_3.showAlert
      L1_3 = L0_1
      L1_3 = L1_3.localized
      L1_3 = L1_3.get
      L2_3 = "OldVersion"
      L1_3 = L1_3(L2_3)
      L2_3 = L0_1
      L2_3 = L2_3.localized
      L2_3 = L2_3.get
      L3_3 = "PleaseUpdateApp"
      L2_3 = L2_3(L3_3)
      L3_3 = {}
      L4_3 = L0_1
      L4_3 = L4_3.localized
      L4_3 = L4_3.get
      L5_3 = "Ok"
      L4_3, L5_3 = L4_3(L5_3)
      L3_3[1] = L4_3
      L3_3[2] = L5_3
      L4_3 = L37_2
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      L23_2 = L0_3
    end
  end
  
  function L40_2()
    local L0_3, L1_3
    L0_3 = L12_2
    if L0_3 then
      L0_3 = L13_2
      if not L0_3 then
        L0_3 = L1_1
        L0_3 = L0_3.isOnline
        L0_3 = L0_3()
        if L0_3 == false then
          L0_3 = L38_2
          L0_3()
        end
      end
    end
  end
  
  function L41_2()
    local L0_3, L1_3
    L0_3 = L25_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L25_2
      L0_3(L1_3)
      L0_3 = nil
      L25_2 = L0_3
    end
  end
  
  function L42_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = L41_2
    L1_3()
    L1_3 = A0_3 % 1000
    L2_3 = math
    L2_3 = L2_3.floor
    L3_3 = A0_3 / 1000
    L2_3 = L2_3(L3_3)
    if 0 < L2_3 then
      L3_3 = L12_1
      L4_3 = L0_1
      L4_3 = L4_3.localized
      L4_3 = L4_3.get
      L5_3 = "GameStarting"
      L4_3 = L4_3(L5_3)
      L5_3 = L2_3
      L4_3 = L4_3 .. L5_3
      L3_3.text = L4_3
    end
    
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L2_3
      L0_4 = L0_4 - 1
      L2_3 = L0_4
      L0_4 = ""
      L1_4 = L2_3
      if L1_4 < 0 then
        L1_4 = L0_1
        L1_4 = L1_4.localized
        L1_4 = L1_4.get
        L2_4 = "GameStartingNow"
        L1_4 = L1_4(L2_4)
        L0_4 = L1_4
      else
        L1_4 = L0_1
        L1_4 = L1_4.localized
        L1_4 = L1_4.get
        L2_4 = "GameStarting"
        L1_4 = L1_4(L2_4)
        L2_4 = L2_3
        L0_4 = L1_4 .. L2_4
      end
      L1_4 = L12_1
      L1_4.text = L0_4
      L1_4 = L2_1
      L1_4 = L1_4.timeLeft
      L2_4 = L2_3
      L1_4(L2_4)
      L1_4 = timer
      L1_4 = L1_4.performWithDelay
      L2_4 = 1000
      L3_4 = L3_3
      L4_4 = 1
      L1_4 = L1_4(L2_4, L3_4, L4_4)
      L25_2 = L1_4
    end
    
    L4_3 = timer
    L4_3 = L4_3.performWithDelay
    L5_3 = L1_3
    L6_3 = L3_3
    L7_3 = 1
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L25_2 = L4_3
  end
  
  function L43_2(A0_3)
    local L1_3, L2_3
    L1_3 = L0_1
    L2_3 = A0_3 / 1000000
    L1_3.syncedClock = L2_3
    L1_3 = L0_1
    L2_3 = system
    L2_3 = L2_3.getTimer
    L2_3 = L2_3()
    L1_3.serverSyncTime = L2_3
    L1_3 = L0_1
    
    function L2_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = math
      L0_4 = L0_4.round
      L1_4 = L0_1
      L1_4 = L1_4.syncedClock
      L2_4 = system
      L2_4 = L2_4.getTimer
      L2_4 = L2_4()
      L3_4 = L0_1
      L3_4 = L3_4.serverSyncTime
      L2_4 = L2_4 - L3_4
      L1_4 = L1_4 + L2_4
      return L0_4(L1_4)
    end
    
    L1_3.serverClock = L2_3
  end
  
  function L44_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L1_3 = L0_1
    L1_3 = L1_3.data
    L1_3 = L1_3.gameInfo
    L2_3 = {}
    L1_3.players = L2_3
    L1_3 = A0_3[2]
    L1_3 = L1_3.p
    L1_3 = #L1_3
    L2_3 = 1
    L3_3 = 4
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      if L5_3 <= L1_3 then
        L6_3 = A0_3[2]
        L6_3 = L6_3.p
        L6_3 = L6_3[L5_3]
        L7_3 = L0_1
        L7_3 = L7_3.data
        L7_3 = L7_3.gameInfo
        L7_3 = L7_3.players
        L8_3 = {}
        L7_3[L5_3] = L8_3
        L7_3 = L0_1
        L7_3 = L7_3.data
        L7_3 = L7_3.gameInfo
        L7_3 = L7_3.players
        L7_3 = L7_3[L5_3]
        L8_3 = L6_3.a
        L7_3.avatar = L8_3
        L7_3 = L0_1
        L7_3 = L7_3.data
        L7_3 = L7_3.gameInfo
        L7_3 = L7_3.players
        L7_3 = L7_3[L5_3]
        L8_3 = L6_3.n
        L7_3.username = L8_3
        L7_3 = L0_1
        L7_3 = L7_3.data
        L7_3 = L7_3.gameInfo
        L7_3 = L7_3.players
        L7_3 = L7_3[L5_3]
        L8_3 = L6_3.p
        L7_3.playerId = L8_3
        L7_3 = L0_1
        L7_3 = L7_3.data
        L7_3 = L7_3.gameInfo
        L7_3 = L7_3.players
        L7_3 = L7_3[L5_3]
        L8_3 = L6_3.l
        L7_3.league = L8_3
        L7_3 = L0_1
        L7_3 = L7_3.data
        L7_3 = L7_3.gameInfo
        L7_3 = L7_3.players
        L7_3 = L7_3[L5_3]
        L8_3 = L6_3.c
        L7_3.customPowerUps = L8_3
        L7_3 = L0_1
        L7_3 = L7_3.data
        L7_3 = L7_3.gameInfo
        L7_3 = L7_3.players
        L7_3 = L7_3[L5_3]
        L8_3 = L6_3.b
        L7_3.clanState = L8_3
        L7_3 = L10_2
        L8_3 = L6_3.v
        L7_3[L5_3] = L8_3
        L7_3 = L6_3.n
        L8_3 = L6_3.b
        if L8_3 then
          L8_3 = L6_3.b
          L8_3 = L8_3.a
          L9_3 = "."
          L10_3 = L7_3
          L7_3 = L8_3 .. L9_3 .. L10_3
        end
        L8_3 = L0_1
        L8_3 = L8_3.fitText
        L9_3 = L7_3
        L10_3 = 15
        L11_3 = 115
        L8_3 = L8_3(L9_3, L10_3, L11_3)
        L7_3 = L8_3
        L8_3 = L29_2
        L9_3 = L5_3
        L10_3 = L6_3.a
        L11_3 = true
        L12_3 = L7_3
        L13_3 = L6_3.p
        L14_3 = L6_3.l
        L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      else
        L6_3 = L10_2
        L6_3[L5_3] = 0
        L6_3 = L29_2
        L7_3 = L5_3
        L8_3 = nil
        L9_3 = false
        L10_3 = L0_1
        L10_3 = L10_3.localized
        L10_3 = L10_3.get
        L11_3 = "Searching"
        L10_3, L11_3, L12_3, L13_3, L14_3 = L10_3(L11_3)
        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      end
    end
  end
  
  function L45_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = L14_2
    if L1_3 then
      return
    end
    L1_3 = A0_3[1]
    L2_3 = L0_1
    L2_3 = L2_3.gameConfig
    L2_3 = L2_3.getMessageTypeForID
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    L3_3 = true
    L12_2 = L3_3
    L3_3 = A0_3.serverVersion
    if L3_3 then
      L3_3 = L39_2
      L3_3()
    elseif L2_3 == "START_COUNTDOWN" then
      L3_3 = L44_2
      L4_3 = A0_3
      L3_3(L4_3)
      L3_3 = true
      L13_2 = L3_3
      L3_3 = L34_2
      L4_3 = A0_3[3]
      L3_3(L4_3)
      L3_3 = L0_1
      L3_3 = L3_3.data
      L3_3 = L3_3.gameInfo
      L4_3 = A0_3[4]
      L5_3 = system
      L5_3 = L5_3.getTimer
      L5_3 = L5_3()
      L4_3 = L4_3 + L5_3
      L3_3.timeToStartGame = L4_3
      L3_3 = L0_1
      L3_3 = L3_3.gotoScene
      L4_3 = "lua.scenes.gamePlay"
      L3_3(L4_3)
    elseif L2_3 == "SET_CLOCK" then
      L3_3 = A0_3[2]
      L4_3 = L43_2
      L5_3 = L3_3
      L4_3(L5_3)
    elseif L2_3 == "CRAZY_MODE" then
      L3_3 = L0_1
      L3_3 = L3_3.data
      L3_3 = L3_3.gameInfo
      L3_3.crazyModeActive = true
      L3_3 = L0_1
      L3_3 = L3_3.data
      L3_3 = L3_3.gameInfo
      L4_3 = A0_3[2]
      L3_3.crazyMode = L4_3
      L3_3 = print
      L4_3 = "CRAZY MODE"
      L5_3 = L0_1
      L5_3 = L5_3.data
      L5_3 = L5_3.gameInfo
      L5_3 = L5_3.crazyMode
      L3_3(L4_3, L5_3)
    elseif L2_3 == "CREATE_OBJECT" then
      L3_3 = L13_1
      L3_3()
      L3_3 = A0_3[3]
      if L3_3 then
        L3_3 = A0_3[3]
        L7_2 = L3_3
        L3_3 = L35_2
        L3_3()
      end
      L3_3 = L42_2
      L4_3 = A0_3[4]
      L3_3(L4_3)
      L3_3 = L44_2
      L4_3 = A0_3
      L3_3(L4_3)
      L3_3 = L30_2
      L3_3()
    elseif L2_3 == "POWER_UP_UPGRADE_OFFER" then
      L3_3 = A0_3[2]
      if not L3_3 then
        L3_3 = 0
      end
      L4_3 = print
      L5_3 = "Got Power Up Skin Upgrade offer from game server"
      L4_3(L5_3)
      L4_3 = L2_1
      L4_3 = L4_3.showButton
      L5_3 = L3_3
      L4_3(L5_3)
    elseif L2_3 == "POWER_UP_UPGRADE_RESULT" then
      L3_3 = A0_3[2]
      L4_3 = tonumber
      L5_3 = A0_3[3]
      L4_3 = L4_3(L5_3)
      L5_3 = print
      L6_3 = "Got Power Up Skin Upgrade set: "
      L7_3 = L3_3
      L5_3(L6_3, L7_3)
      if L4_3 == 1 then
        L5_3 = L0_1
        L5_3 = L5_3.database
        L5_3 = L5_3.decreaseMoney
        L6_3 = L0_1
        L6_3 = L6_3.storeConfig
        L6_3 = L6_3.getPowerUpTryCost
        L7_3 = 1
        L6_3, L7_3 = L6_3(L7_3)
        L5_3(L6_3, L7_3)
      else
        L5_3 = L0_1
        L5_3 = L5_3.database
        L5_3 = L5_3.decreaseGem
        L6_3 = L0_1
        L6_3 = L6_3.storeConfig
        L6_3 = L6_3.getPowerUpTryCost
        L7_3 = 0
        L6_3, L7_3 = L6_3(L7_3)
        L5_3(L6_3, L7_3)
      end
      L5_3 = L2_1
      L5_3 = L5_3.showSkinType
      L6_3 = L3_3
      L5_3(L6_3)
    end
  end
  
  function L46_2()
    local L0_3, L1_3
    L0_3 = L16_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L16_2
      L0_3(L1_3)
      L0_3 = nil
      L16_2 = L0_3
    end
    L0_3 = L17_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L17_2
      L0_3(L1_3)
      L0_3 = nil
      L17_2 = L0_3
    end
  end
  
  function L47_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.suspendAlert
    if L0_3 then
      return
    end
    L0_3 = L12_2
    if not L0_3 then
      L0_3 = L36_2
      L0_3()
      L0_3 = L0_1
      L0_3 = L0_3.createCustomOverlay
      L1_3 = 39
      L0_3(L1_3)
    end
  end
  
  function L48_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.m
    L2_3 = L6_2
    L2_3 = L2_3.requestGame
    L2_3 = L2_3()
    if L1_3 == L2_3 then
      L1_3 = A0_3.r
      if L1_3 then
        L1_3 = A0_3.r
        if L1_3 == 53 then
          L1_3 = L36_2
          L1_3()
        end
      else
        L1_3 = A0_3.a
        if L1_3 then
          L1_3 = L0_1
          L1_3 = L1_3.config
          L2_3 = A0_3.a
          L1_3.tcpClient = L2_3
          L1_3 = L1_1
          L1_3 = L1_3.startTCP
          L2_3 = L45_2
          L1_3(L2_3)
        end
      end
    end
  end
  
  L49_2 = L0_1
  L49_2 = L49_2.comm
  L49_2 = L49_2.setCallback
  L50_2 = L48_2
  L49_2(L50_2)
  L49_2 = L0_1
  L49_2 = L49_2.data
  L49_2 = L49_2.gameInfo
  L49_2 = L49_2.gameType
  if L49_2 == 1 then
    L49_2 = L0_1
    L49_2 = L49_2.comm
    L49_2 = L49_2.getGameServerAddress
    L49_2()
  else
    L49_2 = L1_1
    L49_2 = L49_2.setReceiveFunction
    L50_2 = L45_2
    L49_2(L50_2)
    L49_2 = L45_2
    L50_2 = A1_2.params
    L50_2 = L50_2.gameInfo
    L49_2(L50_2)
    L49_2 = A1_2.params
    L49_2 = L49_2.showChest
    if L49_2 then
      L49_2 = L2_1
      L49_2 = L49_2.showButton
      L50_2 = A1_2.params
      L50_2 = L50_2.powerupTryCurrencyType
      L49_2(L50_2)
    end
  end
  L49_2 = L0_1
  L49_2 = L49_2.config
  L49_2 = L49_2.bot
  if L49_2 then
    L49_2 = L0_1
    L49_2 = L49_2.cleanOldOverlay
    L49_2()
    L49_2 = timer
    L49_2 = L49_2.performWithDelay
    L50_2 = 120000
    L51_2 = L36_2
    L52_2 = 1
    L49_2 = L49_2(L50_2, L51_2, L52_2)
    L16_2 = L49_2
  else
    L49_2 = timer
    L49_2 = L49_2.performWithDelay
    L50_2 = 8000
    L51_2 = L47_2
    L52_2 = 1
    L49_2 = L49_2(L50_2, L51_2, L52_2)
    L16_2 = L49_2
    L49_2 = timer
    L49_2 = L49_2.performWithDelay
    L50_2 = 6000
    L51_2 = L40_2
    L52_2 = 0
    L49_2 = L49_2(L50_2, L51_2, L52_2)
    L17_2 = L49_2
  end
  
  function L49_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = true
    L14_2 = L0_3
    L0_3 = L2_1
    L0_3 = L0_3.clean
    L0_3()
    L0_3 = L5_2
    L0_3 = L0_3.removeBackButton
    L0_3()
    L0_3 = L46_2
    L0_3()
    L0_3 = pairs
    L1_3 = L24_2
    L0_3, L1_3, L2_3 = L0_3(L1_3)
    for L3_3, L4_3 in L0_3, L1_3, L2_3 do
      L5_3 = L4_3.clean
      L5_3()
    end
    L0_3 = L41_2
    L0_3()
    L0_3 = L13_2
    if not L0_3 then
      L0_3 = L1_1
      L0_3 = L0_3.stopTCPClient
      L0_3()
    end
    L0_3 = L0_1
    L0_3 = L0_3.comm
    L0_3 = L0_3.setCallback
    
    function L1_3(A0_4)
      local L1_4
    end
    
    L0_3(L1_3)
  end
  
  L5_1 = L49_2
end

L3_1.show = L21_1

function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L3_2 = L0_1
    L3_2 = L3_2.removeScene
    L4_2 = "lua.scenes.lobbyQuickPlay"
    L3_2(L4_2)
    return
  end
  L3_2 = L5_1
  if L3_2 then
    L3_2 = L5_1
    L3_2()
    L3_2 = nil
    L5_1 = L3_2
  end
end

L3_1.hide = L21_1

function L21_1(A0_2, A1_2)
  local L2_2
  L2_2 = L4_1
  if L2_2 then
    L2_2 = L4_1
    L2_2()
    L2_2 = nil
    L4_1 = L2_2
  end
  L2_2 = nil
  L6_1 = L2_2
  L2_2 = nil
  L10_1 = L2_2
  L2_2 = nil
  L11_1 = L2_2
  L2_2 = nil
  L13_1 = L2_2
  L2_2 = nil
  L14_1 = L2_2
end

L3_1.destroy = L21_1
L22_1 = L3_1
L21_1 = L3_1.addEventListener
L23_1 = "create"
L24_1 = L3_1
L21_1(L22_1, L23_1, L24_1)
L22_1 = L3_1
L21_1 = L3_1.addEventListener
L23_1 = "show"
L24_1 = L3_1
L21_1(L22_1, L23_1, L24_1)
L22_1 = L3_1
L21_1 = L3_1.addEventListener
L23_1 = "hide"
L24_1 = L3_1
L21_1(L22_1, L23_1, L24_1)
L22_1 = L3_1
L21_1 = L3_1.addEventListener
L23_1 = "destroy"
L24_1 = L3_1
L21_1(L22_1, L23_1, L24_1)
return L3_1
