local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.newScene
L1_1 = L1_1()
L2_1 = nil
L3_1 = nil
L4_1 = nil

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2
  L2_2 = A0_2.view
  L3_2 = require
  L4_2 = "lua.network.tcpMessageFormat"
  L3_2 = L3_2(L4_2)
  L4_2 = require
  L5_2 = "lua.modules.clans.clanEmblem"
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2.params
  L5_2 = L5_2.item
  L6_2 = L0_1
  L6_2 = L6_2.database
  L6_2 = L6_2.getMoney
  L6_2 = L6_2()
  L7_2 = L0_1
  L7_2 = L7_2.database
  L7_2 = L7_2.getGem
  L7_2 = L7_2()
  L8_2 = 0
  L9_2 = 0
  L10_2 = display
  L10_2 = L10_2.newGroup
  L10_2 = L10_2()
  L11_2 = false
  L12_2 = display
  L12_2 = L12_2.newRect
  L13_2 = 0
  L14_2 = 0
  L15_2 = display
  L15_2 = L15_2.contentWidth
  L16_2 = display
  L16_2 = L16_2.contentHeight
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
  L12_2.anchorX = 0
  L12_2.anchorY = 0
  L14_2 = L12_2
  L13_2 = L12_2.setFillColor
  L15_2 = 0
  L16_2 = 0
  L17_2 = 0
  L18_2 = 0.7843137254901961
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L12_2.x = 0
  L12_2.y = 0
  L12_2.isVisible = false
  L13_2 = display
  L13_2 = L13_2.newGroup
  L13_2 = L13_2()
  L14_2 = display
  L14_2 = L14_2.newImageRect
  L15_2 = "images/gui/common/black.png"
  L16_2 = 480
  L17_2 = 320
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L15_2 = display
  L15_2 = L15_2.contentWidth
  L15_2 = L15_2 * 0.5
  L14_2.x = L15_2
  L15_2 = display
  L15_2 = L15_2.contentHeight
  L15_2 = L15_2 * 0.5
  L14_2.y = L15_2
  L15_2 = display
  L15_2 = L15_2.newImageRect
  L16_2 = "images/gui/market/popup/window.png"
  L17_2 = 276
  L18_2 = 253
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L15_2.anchorY = 0
  L16_2 = display
  L16_2 = L16_2.contentWidth
  L16_2 = L16_2 * 0.5
  L15_2.x = L16_2
  L15_2.y = 0
  
  function L16_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L3_3 = L5_2
    L3_3 = L3_3.saleGem
    if L3_3 then
      L3_3 = L5_2
      L3_3 = L3_3.gemPrice
      if L3_3 then
        L0_3 = "images/gui/market/saleGems.png"
        L3_3 = math
        L3_3 = L3_3.ceil
        L4_3 = L5_2
        L4_3 = L4_3.saleGem
        L5_3 = L5_2
        L5_3 = L5_3.gemPrice
        L4_3 = L4_3 / L5_3
        L4_3 = L4_3 * 100
        L3_3 = L3_3(L4_3)
        L1_3 = L3_3 - 100
        L3_3 = L15_2
        L3_3 = L3_3.x
        L2_3 = L3_3 + 90
    end
    else
      L3_3 = L5_2
      L3_3 = L3_3.salePrice
      if L3_3 then
        L3_3 = L5_2
        L3_3 = L3_3.price
        if L3_3 then
          L0_3 = "images/gui/market/saleCoins.png"
          L3_3 = math
          L3_3 = L3_3.ceil
          L4_3 = L5_2
          L4_3 = L4_3.salePrice
          L5_3 = L5_2
          L5_3 = L5_3.price
          L4_3 = L4_3 / L5_3
          L4_3 = L4_3 * 100
          L3_3 = L3_3(L4_3)
          L1_3 = L3_3 - 100
          L3_3 = L15_2
          L3_3 = L3_3.x
          L2_3 = L3_3 - 30
      end
      else
        L3_3 = print
        L4_3 = "WARNING: missing some sale data. Can not create icon"
        L3_3(L4_3)
        return
      end
    end
    L3_3 = display
    L3_3 = L3_3.newImageRect
    L4_3 = L0_3
    L5_3 = 40
    L6_3 = 35
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L3_3.x = L2_3
    L4_3 = L15_2
    L4_3 = L4_3.y
    L4_3 = L4_3 + 230
    L3_3.y = L4_3
    L4_3 = L10_2
    L5_3 = L4_3
    L4_3 = L4_3.insert
    L6_3 = L3_3
    L4_3(L5_3, L6_3)
    L4_3 = L0_1
    L4_3 = L4_3.newText
    L5_3 = {}
    L6_3 = L1_3
    L7_3 = "%"
    L6_3 = L6_3 .. L7_3
    L5_3.string = L6_3
    L5_3.size = 10
    L6_3 = L3_3.x
    L5_3.x = L6_3
    L6_3 = L3_3.y
    L6_3 = L6_3 + 4
    L5_3.y = L6_3
    L6_3 = {}
    L7_3 = 1
    L8_3 = 1
    L9_3 = 1
    L6_3[1] = L7_3
    L6_3[2] = L8_3
    L6_3[3] = L9_3
    L5_3.color = L6_3
    L4_3 = L4_3(L5_3)
    L5_3 = L10_2
    L6_3 = L5_3
    L5_3 = L5_3.insert
    L7_3 = L4_3
    L5_3(L6_3, L7_3)
  end
  
  L17_2 = L5_2.salePrice
  if L17_2 then
    L8_2 = L5_2.salePrice
    L17_2 = L16_2
    L17_2()
  else
    L17_2 = L5_2.price
    if L17_2 then
      L8_2 = L5_2.price
    end
  end
  L17_2 = L5_2.saleGem
  if L17_2 then
    L9_2 = L5_2.saleGem
    L17_2 = L16_2
    L17_2()
  else
    L17_2 = L5_2.gemPrice
    if L17_2 then
      L9_2 = L5_2.gemPrice
    end
  end
  L17_2 = L0_1
  L17_2 = L17_2.newText
  L18_2 = {}
  L19_2 = L0_1
  L19_2 = L19_2.localized
  L19_2 = L19_2.get
  L20_2 = "Purchase"
  L19_2 = L19_2(L20_2)
  L18_2.string = L19_2
  L19_2 = L15_2.x
  L18_2.x = L19_2
  L19_2 = L15_2.y
  L19_2 = L19_2 + 65
  L18_2.y = L19_2
  L18_2.size = 20
  L19_2 = {}
  L20_2 = 1
  L21_2 = 1
  L22_2 = 1
  L19_2[1] = L20_2
  L19_2[2] = L21_2
  L19_2[3] = L22_2
  L18_2.color = L19_2
  L17_2 = L17_2(L18_2)
  L18_2 = L0_1
  L18_2 = L18_2.newText
  L19_2 = {}
  L20_2 = L5_2.title
  L19_2.string = L20_2
  L20_2 = L15_2.x
  L19_2.x = L20_2
  L20_2 = L15_2.y
  L20_2 = L20_2 + 78
  L19_2.y = L20_2
  L19_2.size = 16
  L20_2 = {}
  L21_2 = 1
  L22_2 = 1
  L23_2 = 1
  L20_2[1] = L21_2
  L20_2[2] = L22_2
  L20_2[3] = L23_2
  L19_2.color = L20_2
  L18_2 = L18_2(L19_2)
  L19_2 = L0_1
  L19_2 = L19_2.newText
  L20_2 = {}
  L20_2.string = ""
  L21_2 = L15_2.x
  L20_2.x = L21_2
  L21_2 = L15_2.y
  L21_2 = L21_2 + 214
  L20_2.y = L21_2
  L20_2.size = 11
  L20_2.width = 200
  L20_2.align = "center"
  L21_2 = {}
  L22_2 = 0.3215686274509804
  L23_2 = 0.1803921568627451
  L24_2 = 0.1411764705882353
  L21_2[1] = L22_2
  L21_2[2] = L23_2
  L21_2[3] = L24_2
  L20_2.color = L21_2
  L19_2 = L19_2(L20_2)
  L20_2 = L0_1
  L20_2 = L20_2.newText
  L21_2 = {}
  L21_2.string = ""
  L22_2 = L15_2.x
  L21_2.x = L22_2
  L22_2 = L15_2.y
  L22_2 = L22_2 + 210
  L21_2.y = L22_2
  L21_2.size = 20
  L21_2.width = 300
  L22_2 = {}
  L23_2 = 1
  L24_2 = 1
  L25_2 = 1
  L22_2[1] = L23_2
  L22_2[2] = L24_2
  L22_2[3] = L25_2
  L21_2.color = L22_2
  L21_2.align = "center"
  L20_2 = L20_2(L21_2)
  L21_2 = L0_1
  L21_2 = L21_2.newText
  L22_2 = {}
  L23_2 = L0_1
  L23_2 = L23_2.localized
  L23_2 = L23_2.get
  L24_2 = "or"
  L23_2 = L23_2(L24_2)
  L22_2.string = L23_2
  L22_2.size = 14
  L23_2 = L17_2.x
  L22_2.x = L23_2
  L23_2 = L17_2.y
  L23_2 = L23_2 + 170
  L22_2.y = L23_2
  L22_2.ax = 0.5
  L23_2 = {}
  L24_2 = 1
  L25_2 = 1
  L26_2 = 1
  L23_2[1] = L24_2
  L23_2[2] = L25_2
  L23_2[3] = L26_2
  L22_2.color = L23_2
  L22_2.size = 22
  L21_2 = L21_2(L22_2)
  L22_2 = L0_1
  L22_2 = L22_2.newText
  L23_2 = {}
  L23_2.string = ""
  L24_2 = L15_2.x
  L23_2.x = L24_2
  L24_2 = L15_2.y
  L24_2 = L24_2 + 100
  L23_2.y = L24_2
  L23_2.size = 9
  L23_2.width = 96
  L23_2.align = "center"
  L22_2 = L22_2(L23_2)
  L23_2 = L5_2.coinMultiplier
  if L23_2 then
    L23_2 = L0_1
    L23_2 = L23_2.localized
    L23_2 = L23_2.get
    L24_2 = "DoubleCoinsDesc"
    L23_2 = L23_2(L24_2)
    L22_2.text = L23_2
  end
  L23_2 = display
  L23_2 = L23_2.newImageRect
  L24_2 = "images/gui/market/items/plate/"
  L25_2 = L5_2.plate
  if not L25_2 then
    L25_2 = "1"
  end
  L26_2 = ".png"
  L24_2 = L24_2 .. L25_2 .. L26_2
  L25_2 = 54
  L26_2 = 19
  L23_2 = L23_2(L24_2, L25_2, L26_2)
  L24_2 = L15_2.x
  L23_2.x = L24_2
  L24_2 = L15_2.y
  L24_2 = L24_2 + 170
  L23_2.y = L24_2
  L24_2 = display
  L24_2 = L24_2.newImageRect
  L25_2 = L5_2.imagePath
  L26_2 = 65
  L27_2 = 72
  L24_2 = L24_2(L25_2, L26_2, L27_2)
  L25_2 = L15_2.x
  L24_2.x = L25_2
  L25_2 = L15_2.y
  L25_2 = L25_2 + 130
  L24_2.y = L25_2
  L25_2 = L4_2.create
  L26_2 = L0_1
  L26_2 = L26_2.data
  L26_2 = L26_2.clans
  L26_2 = L26_2.emblem
  L27_2 = false
  L25_2 = L25_2(L26_2, L27_2)
  L26_2 = L25_2.setEmblemSize
  L27_2 = "small"
  L26_2(L27_2)
  L27_2 = L25_2
  L26_2 = L25_2.rotate
  L28_2 = -10
  L26_2(L27_2, L28_2)
  L26_2 = L14_2.x
  L25_2.x = L26_2
  L26_2 = L14_2.y
  L26_2 = L26_2 - 20
  L25_2.y = L26_2
  L26_2 = L5_2.key
  if L26_2 ~= "554" then
    L25_2.isVisible = false
  end
  L26_2 = display
  L26_2 = L26_2.newImageRect
  L27_2 = "images/gui/market/currentCoins.png"
  L28_2 = 70
  L29_2 = 81
  L26_2 = L26_2(L27_2, L28_2, L29_2)
  L26_2.anchorX = 0
  L26_2.anchorY = 0
  L26_2.x = 400
  L26_2.y = 0
  L27_2 = L0_1
  L27_2 = L27_2.newText
  L28_2 = {}
  L28_2.string = L6_2
  L28_2.size = 14
  L28_2.x = 424
  L28_2.y = 69
  L28_2.ax = 0
  L29_2 = {}
  L30_2 = 1
  L31_2 = 1
  L32_2 = 1
  L29_2[1] = L30_2
  L29_2[2] = L31_2
  L29_2[3] = L32_2
  L28_2.color = L29_2
  L27_2 = L27_2(L28_2)
  L28_2 = L0_1
  L28_2 = L28_2.newText
  L29_2 = {}
  L29_2.string = L6_2
  L29_2.size = 14
  L29_2.x = 424
  L29_2.y = 69
  L29_2.ax = 0
  L30_2 = {}
  L31_2 = 1
  L32_2 = 0
  L33_2 = 0
  L30_2[1] = L31_2
  L30_2[2] = L32_2
  L30_2[3] = L33_2
  L29_2.color = L30_2
  L28_2 = L28_2(L29_2)
  L28_2.alpha = 0
  L29_2 = L0_1
  L29_2 = L29_2.newText
  L30_2 = {}
  L30_2.string = L7_2
  L30_2.size = 14
  L30_2.x = 424
  L30_2.y = 41
  L30_2.ax = 0
  L31_2 = {}
  L32_2 = 1
  L33_2 = 1
  L34_2 = 1
  L31_2[1] = L32_2
  L31_2[2] = L33_2
  L31_2[3] = L34_2
  L30_2.color = L31_2
  L29_2 = L29_2(L30_2)
  L30_2 = L0_1
  L30_2 = L30_2.newText
  L31_2 = {}
  L31_2.string = L7_2
  L31_2.size = 14
  L31_2.x = 424
  L31_2.y = 41
  L31_2.ax = 0
  L32_2 = {}
  L33_2 = 1
  L34_2 = 0
  L35_2 = 0
  L32_2[1] = L33_2
  L32_2[2] = L34_2
  L32_2[3] = L35_2
  L31_2.color = L32_2
  L30_2 = L30_2(L31_2)
  L30_2.alpha = 0
  
  function L31_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A0_3.m
    L2_3 = L3_2
    L2_3 = L2_3.purchaseItem
    L2_3 = L2_3()
    if L1_3 == L2_3 then
      L1_3 = false
      L11_2 = L1_3
      L1_3 = A0_3.r
      if L1_3 then
        L1_3 = A0_3.r
        if L1_3 == 61 then
          L1_3 = L19_2
          L2_3 = L0_1
          L2_3 = L2_3.localized
          L2_3 = L2_3.get
          L3_3 = "Not enough coins"
          L2_3 = L2_3(L3_3)
          L1_3.text = L2_3
        else
          L1_3 = A0_3.r
          if L1_3 == 25 then
            L1_3 = L19_2
            L2_3 = L0_1
            L2_3 = L2_3.localized
            L2_3 = L2_3.get
            L3_3 = "You already own this"
            L2_3 = L2_3(L3_3)
            L1_3.text = L2_3
          else
            L1_3 = A0_3.r
            if L1_3 == 73 then
              L1_3 = L19_2
              L2_3 = L0_1
              L2_3 = L2_3.localized
              L2_3 = L2_3.get
              L3_3 = "Item not unlocked"
              L2_3 = L2_3(L3_3)
              L1_3.text = L2_3
            else
              L1_3 = L19_2
              L2_3 = L0_1
              L2_3 = L2_3.localized
              L2_3 = L2_3.get
              L3_3 = "Invalid purchase"
              L2_3 = L2_3(L3_3)
              L1_3.text = L2_3
            end
          end
        end
      else
        L1_3 = Runtime
        L2_3 = L1_3
        L1_3 = L1_3.dispatchEvent
        L3_3 = {}
        L3_3.name = "updateMoneyLabel"
        L1_3(L2_3, L3_3)
        L1_3 = L0_1
        L1_3 = L1_3.audio
        L1_3 = L1_3.play
        L2_3 = "buy_item"
        L1_3(L2_3)
        L1_3 = L0_1
        L1_3 = L1_3.analytics
        L1_3 = L1_3.newEvent
        L2_3 = "design"
        L3_3 = {}
        L4_3 = "market:coinPurchase:purchaseComplete:"
        L5_3 = L5_2
        L5_3 = L5_3.key
        L4_3 = L4_3 .. L5_3
        L3_3.event_id = L4_3
        L4_3 = L6_2
        L3_3.value = L4_3
        L4_3 = L0_1
        L4_3 = L4_3.config
        L4_3 = L4_3.fullVersion
        L3_3.area = L4_3
        L1_3(L2_3, L3_3)
        L1_3 = L5_2
        L1_3 = L1_3.mysteryBox
        if L1_3 then
          L1_3 = {}
          L1_3.isModal = true
          L2_3 = {}
          L2_3.mysteryBox = true
          L1_3.params = L2_3
          L2_3 = L0_1
          L2_3 = L2_3.showOverlay
          L3_3 = "lua.overlays.messages"
          L4_3 = L1_3
          L2_3(L3_3, L4_3)
        else
          L1_3 = L5_2
          L1_3 = L1_3.bundle
          if L1_3 then
            L1_3 = L5_2
            L1_3.bundleBought = true
          end
          L4_1 = A0_3
          L1_3 = L0_1
          L1_3 = L1_3.hideOverlay
          L1_3()
        end
      end
    end
  end
  
  function L32_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if A0_3 and A1_3 then
      L2_3 = 1.2
      L3_3 = 100
      L4_3 = 200
      L5_3 = transition
      L5_3 = L5_3.to
      L6_3 = A0_3
      L7_3 = {}
      L7_3.time = L3_3
      L7_3.xScale = L2_3
      L7_3.yScale = L2_3
      L5_3(L6_3, L7_3)
      L5_3 = transition
      L5_3 = L5_3.to
      L6_3 = A0_3
      L7_3 = {}
      L7_3.time = L3_3
      L7_3.delay = L4_3
      L7_3.xScale = 1
      L7_3.yScale = 1
      L5_3(L6_3, L7_3)
      L5_3 = transition
      L5_3 = L5_3.to
      L6_3 = A1_3
      L7_3 = {}
      L7_3.time = L3_3
      L7_3.xScale = L2_3
      L7_3.yScale = L2_3
      L7_3.alpha = 1
      L5_3(L6_3, L7_3)
      L5_3 = transition
      L5_3 = L5_3.to
      L6_3 = A1_3
      L7_3 = {}
      L7_3.time = L3_3
      L7_3.delay = L4_3
      L7_3.xScale = 1
      L7_3.yScale = 1
      L7_3.alpha = 0
      L5_3(L6_3, L7_3)
    end
  end
  
  function L33_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L11_2
    if L0_3 then
      L0_3 = L19_2
      L1_3 = L0_1
      L1_3 = L1_3.localized
      L1_3 = L1_3.get
      L2_3 = "trying to buy item"
      L1_3 = L1_3(L2_3)
      L0_3.text = L1_3
      return
    else
      L0_3 = L6_2
      L1_3 = L8_2
      if L0_3 < L1_3 then
        L0_3 = L0_1
        L0_3 = L0_3.analytics
        L0_3 = L0_3.newEvent
        L1_3 = "design"
        L2_3 = {}
        L3_3 = "market:coinPurchase:notEnough:"
        L4_3 = L5_2
        L4_3 = L4_3.key
        L3_3 = L3_3 .. L4_3
        L2_3.event_id = L3_3
        L3_3 = L6_2
        L2_3.value = L3_3
        L3_3 = L0_1
        L3_3 = L3_3.config
        L3_3 = L3_3.fullVersion
        L2_3.area = L3_3
        L0_3(L1_3, L2_3)
        L0_3 = L0_1
        L0_3 = L0_3.audio
        L0_3 = L0_3.play
        L1_3 = "no_powerup"
        L0_3(L1_3)
        L0_3 = L32_2
        L1_3 = L27_2
        L2_3 = L28_2
        L0_3(L1_3, L2_3)
      else
        L0_3 = true
        L11_2 = L0_3
        L0_3 = L19_2
        L1_3 = L0_1
        L1_3 = L1_3.localized
        L1_3 = L1_3.get
        L2_3 = "Purchasing"
        L1_3 = L1_3(L2_3)
        L0_3.text = L1_3
        L0_3 = L0_1
        L0_3 = L0_3.analytics
        L0_3 = L0_3.newEvent
        L1_3 = "design"
        L2_3 = {}
        L3_3 = "market:coinPurchase:success:"
        L4_3 = L5_2
        L4_3 = L4_3.key
        L3_3 = L3_3 .. L4_3
        L2_3.event_id = L3_3
        L3_3 = L6_2
        L2_3.value = L3_3
        L3_3 = L0_1
        L3_3 = L3_3.config
        L3_3 = L3_3.fullVersion
        L2_3.area = L3_3
        L0_3(L1_3, L2_3)
        L0_3 = L0_1
        L0_3 = L0_3.comm
        L0_3 = L0_3.setCallback
        L1_3 = L31_2
        L0_3(L1_3)
        L0_3 = L5_2
        L0_3 = L0_3.saleKey
        if L0_3 then
          L0_3 = L5_2
          L0_3 = L0_3.salePrice
          if L0_3 then
            L0_3 = L0_1
            L0_3 = L0_3.analytics
            L0_3 = L0_3.ResourceData
            L1_3 = L0_1
            L1_3 = L1_3.storeConfig
            L1_3 = L1_3.getItemCategory
            L2_3 = L5_2
            L2_3 = L2_3.key
            L1_3 = L1_3(L2_3)
            L0_3.itemId = L1_3
            L0_3 = L0_1
            L0_3 = L0_3.analytics
            L0_3 = L0_3.ResourceData
            L0_3.itemType = "sale"
            L0_3 = L0_1
            L0_3 = L0_3.comm
            L0_3 = L0_3.purchaseItem
            L1_3 = L5_2
            L1_3 = L1_3.saleKey
            L0_3(L1_3)
        end
        else
          L0_3 = L0_1
          L0_3 = L0_3.analytics
          L0_3 = L0_3.ResourceData
          L1_3 = L0_1
          L1_3 = L1_3.storeConfig
          L1_3 = L1_3.getItemCategory
          L2_3 = L5_2
          L2_3 = L2_3.key
          L1_3 = L1_3(L2_3)
          L0_3.itemId = L1_3
          L0_3 = L0_1
          L0_3 = L0_3.storeConfig
          L0_3 = L0_3.getItemTypeId
          L1_3 = L0_1
          L1_3 = L1_3.analytics
          L1_3 = L1_3.ResourceData
          L1_3 = L1_3.itemId
          L0_3 = L0_3(L1_3)
          L1_3 = L0_1
          L1_3 = L1_3.analytics
          L1_3 = L1_3.ResourceData
          L1_3.itemType = "accessory"
          if L0_3 and 7 < L0_3 then
            L1_3 = L0_1
            L1_3 = L1_3.analytics
            L1_3 = L1_3.ResourceData
            L1_3.itemType = "powerupSkin"
          end
          L1_3 = L0_1
          L1_3 = L1_3.comm
          L1_3 = L1_3.purchaseItem
          L2_3 = L5_2
          L2_3 = L2_3.key
          L1_3(L2_3)
        end
      end
    end
  end
  
  L34_2 = L0_1
  L34_2 = L34_2.newButton
  L35_2 = {}
  L35_2.image = "images/gui/market/popup/buttonCoins.png"
  L35_2.onRelease = L33_2
  L36_2 = {}
  L36_2.string = L8_2
  L36_2.x = 0
  L36_2.y = 10
  L36_2.size = 14
  L35_2.text = L36_2
  L35_2.width = 77
  L35_2.height = 50
  L36_2 = L15_2.x
  L36_2 = L36_2 - 60
  L35_2.x = L36_2
  L36_2 = L15_2.y
  L36_2 = L36_2 + 250
  L35_2.y = L36_2
  L34_2 = L34_2(L35_2)
  
  function L35_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L5_2
    L0_3 = L0_3.mysteryBox
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.database
      L0_3 = L0_3.getFriends
      L0_3 = L0_3()
      L0_3 = #L0_3
      if L0_3 < 1 then
        L0_3 = L19_2
        L1_3 = L0_1
        L1_3 = L1_3.localized
        L1_3 = L1_3.get
        L2_3 = "nofriends"
        L1_3 = L1_3(L2_3)
        L0_3.text = L1_3
        return
      end
    end
    L0_3 = L7_2
    L1_3 = L9_2
    if L0_3 < L1_3 then
      L0_3 = L0_1
      L0_3 = L0_3.analytics
      L0_3 = L0_3.newEvent
      L1_3 = "design"
      L2_3 = {}
      L3_3 = "market:gemPurchase:notEnough:"
      L4_3 = L5_2
      L4_3 = L4_3.key
      L3_3 = L3_3 .. L4_3
      L2_3.event_id = L3_3
      L3_3 = L7_2
      L2_3.value = L3_3
      L3_3 = L0_1
      L3_3 = L3_3.config
      L3_3 = L3_3.fullVersion
      L2_3.area = L3_3
      L0_3(L1_3, L2_3)
      L0_3 = L0_1
      L0_3 = L0_3.audio
      L0_3 = L0_3.play
      L1_3 = "no_powerup"
      L0_3(L1_3)
      L0_3 = {}
      L0_3.isModal = true
      L1_3 = {}
      L2_3 = L5_2
      L1_3.oldItem = L2_3
      L2_3 = L9_2
      L1_3.price = L2_3
      L0_3.params = L1_3
      L1_3 = L0_1
      L1_3 = L1_3.showOverlay
      L2_3 = "lua.overlays.singleGemBuy"
      L3_3 = L0_3
      L1_3(L2_3, L3_3)
    else
      L0_3 = true
      L11_2 = L0_3
      L0_3 = L19_2
      L1_3 = L0_1
      L1_3 = L1_3.localized
      L1_3 = L1_3.get
      L2_3 = "Purchasing"
      L1_3 = L1_3(L2_3)
      L0_3.text = L1_3
      L0_3 = L0_1
      L0_3 = L0_3.analytics
      L0_3 = L0_3.newEvent
      L1_3 = "design"
      L2_3 = {}
      L3_3 = "market:gemPurchase:success:"
      L4_3 = L5_2
      L4_3 = L4_3.key
      L3_3 = L3_3 .. L4_3
      L2_3.event_id = L3_3
      L3_3 = L7_2
      L2_3.value = L3_3
      L3_3 = L0_1
      L3_3 = L3_3.config
      L3_3 = L3_3.fullVersion
      L2_3.area = L3_3
      L0_3(L1_3, L2_3)
      L0_3 = L0_1
      L0_3 = L0_3.comm
      L0_3 = L0_3.setCallback
      L1_3 = L31_2
      L0_3(L1_3)
      L0_3 = tonumber
      L1_3 = L5_2
      L1_3 = L1_3.key
      L0_3 = L0_3(L1_3)
      if L0_3 == 1001 then
        L0_3 = L0_1
        L0_3 = L0_3.analytics
        L0_3 = L0_3.ResourceData
        L0_3.itemId = "doublecoin"
        L0_3 = L0_1
        L0_3 = L0_3.analytics
        L0_3 = L0_3.ResourceData
        L0_3.itemType = "boost"
      else
        L0_3 = tonumber
        L1_3 = L5_2
        L1_3 = L1_3.key
        L0_3 = L0_3(L1_3)
        if L0_3 == 1002 then
          L0_3 = L0_1
          L0_3 = L0_3.analytics
          L0_3 = L0_3.ResourceData
          L0_3.itemId = "gift"
          L0_3 = L0_1
          L0_3 = L0_3.analytics
          L0_3 = L0_3.ResourceData
          L0_3.itemType = "boost"
        else
          L0_3 = L0_1
          L0_3 = L0_3.analytics
          L0_3 = L0_3.ResourceData
          L1_3 = L0_1
          L1_3 = L1_3.storeConfig
          L1_3 = L1_3.getItemCategory
          L2_3 = L5_2
          L2_3 = L2_3.key
          L1_3 = L1_3(L2_3)
          L0_3.itemId = L1_3
          L0_3 = L0_1
          L0_3 = L0_3.storeConfig
          L0_3 = L0_3.getItemTypeId
          L1_3 = L0_1
          L1_3 = L1_3.analytics
          L1_3 = L1_3.ResourceData
          L1_3 = L1_3.itemId
          L0_3 = L0_3(L1_3)
          L1_3 = L0_1
          L1_3 = L1_3.analytics
          L1_3 = L1_3.ResourceData
          L1_3.itemType = "accessory"
          if not L0_3 then
            L1_3 = L0_1
            L1_3 = L1_3.analytics
            L1_3 = L1_3.ResourceData
            L1_3.itemType = "errorItem"
          elseif 7 < L0_3 then
            L1_3 = L0_1
            L1_3 = L1_3.analytics
            L1_3 = L1_3.ResourceData
            L1_3.itemType = "powerupSkin"
          end
        end
      end
      L0_3 = L5_2
      L0_3 = L0_3.saleKey
      if L0_3 then
        L0_3 = L5_2
        L0_3 = L0_3.saleGem
        if L0_3 then
          L0_3 = L0_1
          L0_3 = L0_3.comm
          L0_3 = L0_3.purchaseItem
          L1_3 = L5_2
          L1_3 = L1_3.saleKey
          L2_3 = true
          L0_3(L1_3, L2_3)
      end
      else
        L0_3 = L0_1
        L0_3 = L0_3.comm
        L0_3 = L0_3.purchaseItem
        L1_3 = L5_2
        L1_3 = L1_3.key
        L2_3 = true
        L0_3(L1_3, L2_3)
      end
    end
  end
  
  L36_2 = L0_1
  L36_2 = L36_2.newButton
  L37_2 = {}
  L37_2.image = "images/gui/market/popup/buttonGems.png"
  L37_2.onRelease = L35_2
  L38_2 = {}
  L38_2.string = L9_2
  L38_2.x = 0
  L38_2.y = 10
  L38_2.size = 14
  L37_2.text = L38_2
  L37_2.width = 77
  L37_2.height = 50
  L38_2 = L15_2.x
  L38_2 = L38_2 + 60
  L37_2.x = L38_2
  L38_2 = L15_2.y
  L38_2 = L38_2 + 250
  L37_2.y = L38_2
  L36_2 = L36_2(L37_2)
  
  function L37_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
  L38_2 = L0_1
  L38_2 = L38_2.newButton
  L39_2 = {}
  L39_2.image = "images/gui/common/buttonClosePopupBrown.png"
  L39_2.onRelease = L37_2
  L39_2.width = 43
  L39_2.height = 38
  L40_2 = L15_2.x
  L40_2 = L40_2 + 120
  L39_2.x = L40_2
  L40_2 = L15_2.y
  L40_2 = L40_2 + 84
  L39_2.y = L40_2
  L38_2 = L38_2(L39_2)
  
  function L39_2()
    local L0_3, L1_3
    L0_3 = L5_2
    L0_3 = L0_3.price
    if not L0_3 then
      L0_3 = L34_2
      L0_3.isVisible = false
      L0_3 = L21_2
      L0_3.isVisible = false
      L0_3 = L36_2
      L0_3.x = -60
      L0_3 = L10_2
      L0_3.x = -60
    end
    L0_3 = L5_2
    L0_3 = L0_3.gemPrice
    if not L0_3 then
      L0_3 = L36_2
      L0_3.isVisible = false
      L0_3 = L21_2
      L0_3.isVisible = false
      L0_3 = L34_2
      L0_3.x = 60
      L0_3 = L10_2
      L0_3.x = 60
    end
  end
  
  function L40_2()
    local L0_3, L1_3, L2_3
    L0_3 = L5_2
    L0_3 = L0_3.description
    if L0_3 then
      L0_3 = L22_2
      L1_3 = L0_1
      L1_3 = L1_3.localized
      L1_3 = L1_3.get
      L2_3 = L5_2
      L2_3 = L2_3.description
      L1_3 = L1_3(L2_3)
      L0_3.text = L1_3
    end
  end
  
  function L41_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L14_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L26_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L27_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L28_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L29_2
    L0_3(L1_3, L2_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L15_2
    L0_3(L1_3, L2_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L34_2
    L0_3(L1_3, L2_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L36_2
    L0_3(L1_3, L2_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L38_2
    L0_3(L1_3, L2_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L18_2
    L0_3(L1_3, L2_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L23_2
    L0_3(L1_3, L2_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L24_2
    L0_3(L1_3, L2_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L25_2
    L0_3(L1_3, L2_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L19_2
    L0_3(L1_3, L2_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L17_2
    L0_3(L1_3, L2_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L21_2
    L0_3(L1_3, L2_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L22_2
    L0_3(L1_3, L2_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L10_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L13_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L12_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L20_2
    L0_3(L1_3, L2_3)
  end
  
  function L42_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L0_1
      L1_3 = L1_3.hideOverlay
      L1_3()
    end
    L1_3 = true
    return L1_3
  end
  
  function L43_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
    end
    L1_3 = true
    return L1_3
  end
  
  function L44_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L12_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L43_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L14_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L42_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L15_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L43_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L45_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L34_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L36_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L38_2
    L0_3(L1_3)
    L0_3 = L27_2
    if L0_3 then
      L0_3 = transition
      L0_3 = L0_3.cancel
      L1_3 = L27_2
      L0_3(L1_3)
    end
    L0_3 = L28_2
    if L0_3 then
      L0_3 = transition
      L0_3 = L0_3.cancel
      L1_3 = L28_2
      L0_3(L1_3)
    end
    L0_3 = L29_2
    if L0_3 then
      L0_3 = transition
      L0_3 = L0_3.cancel
      L1_3 = L29_2
      L0_3(L1_3)
    end
    L0_3 = L30_2
    if L0_3 then
      L0_3 = transition
      L0_3 = L0_3.cancel
      L1_3 = L30_2
      L0_3(L1_3)
    end
    L0_3 = L12_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L43_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L14_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L42_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L15_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L43_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L2_1 = L45_2
  L45_2 = L41_2
  L45_2()
  L45_2 = L44_2
  L45_2()
  L45_2 = L39_2
  L45_2()
  L45_2 = L40_2
  L45_2()
  L45_2 = L0_1
  L45_2 = L45_2.bouncer
  L45_2 = L45_2.down
  L46_2 = L13_2
  L45_2(L46_2)
end

L1_1.create = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    return
  end
  L3_2 = require
  L4_2 = "lua.modules.androidBackButton"
  L3_2 = L3_2(L4_2)
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = L3_2
    L0_3 = L0_3.isOverlay
    L1_3 = false
    L0_3(L1_3)
  end
  
  L3_1 = L4_2
  L4_2 = L3_2.isOverlay
  L5_2 = true
  L4_2(L5_2)
end

L1_1.show = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = L3_1
    L4_2()
  elseif L3_2 == "did" then
    L4_2 = A1_2.parent
    if L4_2 then
      L4_2 = A1_2.parent
      L4_2 = L4_2.overlayEnded
      if L4_2 then
        L4_2 = A1_2.parent
        L5_2 = L4_2
        L4_2 = L4_2.overlayEnded
        L6_2 = L4_1
        L4_2(L5_2, L6_2)
        L4_2 = nil
        L4_1 = L4_2
      end
    end
  end
end

L1_1.hide = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.view
  L3_2 = L2_1
  L3_2()
end

L1_1.destroy = L5_1
L6_1 = L1_1
L5_1 = L1_1.addEventListener
L7_1 = "create"
L8_1 = L1_1
L5_1(L6_1, L7_1, L8_1)
L6_1 = L1_1
L5_1 = L1_1.addEventListener
L7_1 = "show"
L8_1 = L1_1
L5_1(L6_1, L7_1, L8_1)
L6_1 = L1_1
L5_1 = L1_1.addEventListener
L7_1 = "hide"
L8_1 = L1_1
L5_1(L6_1, L7_1, L8_1)
L6_1 = L1_1
L5_1 = L1_1.addEventListener
L7_1 = "destroy"
L8_1 = L1_1
L5_1(L6_1, L7_1, L8_1)
return L1_1
