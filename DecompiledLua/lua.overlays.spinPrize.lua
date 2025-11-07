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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2
  L2_2 = A0_2.view
  L3_2 = L0_1
  L3_2 = L3_2.database
  L3_2 = L3_2.getMoney
  L3_2 = L3_2()
  L4_2 = L0_1
  L4_2 = L4_2.database
  L4_2 = L4_2.getGem
  L4_2 = L4_2()
  L5_2 = 0
  L6_2 = "error"
  L7_2 = "images/gui/wheel/"
  L8_2 = A1_2.params
  L8_2 = L8_2.rewardThatIsWon
  L9_2 = A1_2.params
  L9_2 = L9_2.rewardValue
  L10_2 = nil
  L11_2 = display
  L11_2 = L11_2.newGroup
  L11_2 = L11_2()
  L12_2 = display
  L12_2 = L12_2.newImageRect
  L13_2 = "images/gui/common/black.png"
  L14_2 = 480
  L15_2 = 320
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L13_2 = display
  L13_2 = L13_2.contentWidth
  L13_2 = L13_2 * 0.5
  L12_2.x = L13_2
  L13_2 = display
  L13_2 = L13_2.contentHeight
  L13_2 = L13_2 * 0.5
  L12_2.y = L13_2
  L13_2 = display
  L13_2 = L13_2.newImageRect
  L14_2 = "images/gui/clan_v2/clan_support/window.png"
  L15_2 = 276
  L16_2 = 250
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L13_2.anchorY = 0
  L14_2 = display
  L14_2 = L14_2.contentWidth
  L14_2 = L14_2 * 0.5
  L13_2.x = L14_2
  L13_2.y = 0
  L14_2 = L0_1
  L14_2 = L14_2.newText
  L15_2 = {}
  L16_2 = L0_1
  L16_2 = L16_2.localized
  L16_2 = L16_2.get
  L17_2 = "Purchase"
  L16_2 = L16_2(L17_2)
  L15_2.string = L16_2
  L16_2 = L13_2.x
  L15_2.x = L16_2
  L16_2 = L13_2.y
  L16_2 = L16_2 + 68
  L15_2.y = L16_2
  L15_2.size = 22
  L16_2 = {}
  L17_2 = 1
  L18_2 = 1
  L19_2 = 1
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L16_2[3] = L19_2
  L15_2.color = L16_2
  L14_2 = L14_2(L15_2)
  L15_2 = L0_1
  L15_2 = L15_2.newText
  L16_2 = {}
  L16_2.string = ""
  L17_2 = L13_2.x
  L16_2.x = L17_2
  L17_2 = L13_2.y
  L17_2 = L17_2 + 94
  L16_2.y = L17_2
  L15_2 = L15_2(L16_2)
  L16_2 = L0_1
  L16_2 = L16_2.newText
  L17_2 = {}
  L17_2.string = ""
  L18_2 = L13_2.x
  L17_2.x = L18_2
  L18_2 = L13_2.y
  L18_2 = L18_2 + 200
  L17_2.y = L18_2
  L17_2.size = 16
  L18_2 = {}
  L19_2 = 0
  L20_2 = 0
  L21_2 = 0
  L18_2[1] = L19_2
  L18_2[2] = L20_2
  L18_2[3] = L21_2
  L17_2.color = L18_2
  L16_2 = L16_2(L17_2)
  L16_2.isVisible = false
  L17_2 = nil
  L18_2 = nil
  L19_2 = nil
  L20_2 = false
  L21_2 = L8_2.type
  if L21_2 == "mystery" then
    L21_2 = L0_1
    L21_2 = L21_2.storeConfig
    L21_2 = L21_2.getItemCategory
    L22_2 = L9_2
    L21_2 = L21_2(L22_2)
    if L21_2 then
      L22_2 = display
      L22_2 = L22_2.newImageRect
      L23_2 = "images/gui/market/symbol_"
      L24_2 = L21_2
      L25_2 = ".png"
      L23_2 = L23_2 .. L24_2 .. L25_2
      L24_2 = 54
      L25_2 = 35
      L22_2 = L22_2(L23_2, L24_2, L25_2)
      L19_2 = L22_2
      if L19_2 then
        L22_2 = L13_2.x
        L22_2 = L22_2 + 90
        L19_2.x = L22_2
        L22_2 = L13_2.y
        L22_2 = L22_2 + 115
        L19_2.y = L22_2
        L19_2.isVisible = false
      end
    end
    L20_2 = true
    L22_2 = L0_1
    L22_2 = L22_2.storeConfig
    L22_2 = L22_2.getItem
    L23_2 = L9_2
    L22_2 = L22_2(L23_2)
    if L22_2 then
      L23_2 = L22_2.plate
      L24_2 = display
      L24_2 = L24_2.newImageRect
      L25_2 = "images/gui/lobby/"
      L26_2 = L23_2
      L27_2 = ".png"
      L25_2 = L25_2 .. L26_2 .. L27_2
      L26_2 = 54
      L27_2 = 19
      L24_2 = L24_2(L25_2, L26_2, L27_2)
      L18_2 = L24_2
      L24_2 = L13_2.x
      L18_2.x = L24_2
      L24_2 = L13_2.y
      L24_2 = L24_2 + 180
      L18_2.y = L24_2
      L18_2.isVisible = false
      L24_2 = L0_1
      L24_2 = L24_2.storeConfig
      L24_2 = L24_2.getItemCategory
      L25_2 = L9_2
      L24_2 = L24_2(L25_2)
      if L24_2 then
        L25_2 = "images/gui/market/items/"
        L26_2 = L24_2
        L27_2 = "/"
        L28_2 = L9_2
        L29_2 = ".png"
        L25_2 = L25_2 .. L26_2 .. L27_2 .. L28_2 .. L29_2
        L26_2 = display
        L26_2 = L26_2.newImageRect
        L27_2 = L25_2
        L28_2 = 65
        L29_2 = 72
        L26_2 = L26_2(L27_2, L28_2, L29_2)
        L17_2 = L26_2
        L26_2 = L13_2.x
        L17_2.x = L26_2
        L26_2 = L13_2.y
        L26_2 = L26_2 + 140
        L17_2.y = L26_2
        L17_2.isVisible = false
      end
      L25_2 = L0_1
      L25_2 = L25_2.localized
      L25_2 = L25_2.get
      L26_2 = "GotItem"
      L25_2 = L25_2(L26_2)
      L14_2.text = L25_2
      L25_2 = L0_1
      L25_2 = L25_2.localized
      L25_2 = L25_2.get
      L26_2 = L22_2.title
      L25_2 = L25_2(L26_2)
      L16_2.text = L25_2
    end
  else
    L21_2 = display
    L21_2 = L21_2.newImageRect
    L22_2 = L7_2
    L23_2 = L8_2.image
    L22_2 = L22_2 .. L23_2
    L23_2 = 112
    L24_2 = 112
    L21_2 = L21_2(L22_2, L23_2, L24_2)
    L17_2 = L21_2
    L21_2 = L13_2.x
    L17_2.x = L21_2
    L21_2 = L13_2.y
    L21_2 = L21_2 + 146
    L17_2.y = L21_2
    L17_2.isVisible = false
    L16_2.size = 18
    L22_2 = L16_2
    L21_2 = L16_2.setFillColor
    L23_2 = 1
    L24_2 = 1
    L25_2 = 1
    L21_2(L22_2, L23_2, L24_2, L25_2)
    if L9_2 == nil then
      L9_2 = "error"
    end
    L21_2 = L8_2.type
    if L21_2 == "coins" then
      L21_2 = L0_1
      L21_2 = L21_2.localized
      L21_2 = L21_2.get
      L22_2 = "GotCoins"
      L21_2 = L21_2(L22_2)
      L14_2.text = L21_2
      L21_2 = "x "
      L22_2 = L9_2
      L21_2 = L21_2 .. L22_2
      L16_2.text = L21_2
      L21_2 = L17_2.y
      L21_2 = L21_2 + 26
      L16_2.y = L21_2
      if 100 < L9_2 then
        L20_2 = true
      end
      if 1000 < L9_2 then
        L16_2.size = 10
      end
    else
      L21_2 = L8_2.type
      if L21_2 == "gems" then
        L21_2 = L0_1
        L21_2 = L21_2.localized
        L21_2 = L21_2.get
        L22_2 = "GotGems"
        L21_2 = L21_2(L22_2)
        L14_2.text = L21_2
        L21_2 = "x "
        L22_2 = L9_2
        L21_2 = L21_2 .. L22_2
        L16_2.text = L21_2
        L21_2 = L17_2.y
        L21_2 = L21_2 + 26
        L16_2.y = L21_2
        L20_2 = true
      else
        L21_2 = L8_2.type
        if L21_2 == "spin" then
          L21_2 = L0_1
          L21_2 = L21_2.localized
          L21_2 = L21_2.get
          L22_2 = "GotSpin"
          L21_2 = L21_2(L22_2)
          L14_2.text = L21_2
          L21_2 = "x "
          L22_2 = L9_2
          L21_2 = L21_2 .. L22_2
          L16_2.text = L21_2
          L21_2 = L17_2.y
          L21_2 = L21_2 + 10
          L16_2.y = L21_2
          L20_2 = true
        end
      end
    end
  end
  L21_2 = display
  L21_2 = L21_2.newImageRect
  L22_2 = "images/gui/market/currentCoins.png"
  L23_2 = 70
  L24_2 = 81
  L21_2 = L21_2(L22_2, L23_2, L24_2)
  L21_2.anchorX = 0
  L21_2.anchorY = 0
  L21_2.x = 410
  L21_2.y = 0
  L22_2 = L0_1
  L22_2 = L22_2.newText
  L23_2 = {}
  L23_2.string = L3_2
  L23_2.size = 14
  L23_2.x = 434
  L23_2.y = 69
  L23_2.ax = 0
  L24_2 = {}
  L25_2 = 1
  L26_2 = 1
  L27_2 = 1
  L24_2[1] = L25_2
  L24_2[2] = L26_2
  L24_2[3] = L27_2
  L23_2.color = L24_2
  L22_2 = L22_2(L23_2)
  L23_2 = L0_1
  L23_2 = L23_2.newText
  L24_2 = {}
  L24_2.string = L4_2
  L24_2.size = 14
  L24_2.x = 434
  L24_2.y = 41
  L24_2.ax = 0
  L25_2 = {}
  L26_2 = 1
  L27_2 = 1
  L28_2 = 1
  L25_2[1] = L26_2
  L25_2[2] = L27_2
  L25_2[3] = L28_2
  L24_2.color = L25_2
  L23_2 = L23_2(L24_2)
  
  function L24_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getMoney
    L0_3 = L0_3()
    L1_3 = L0_1
    L1_3 = L1_3.database
    L1_3 = L1_3.getGem
    L1_3 = L1_3()
    L2_3 = L3_2
    if L0_3 > L2_3 then
      L3_2 = L0_3
      L2_3 = L22_2
      L3_3 = L3_2
      L2_3.text = L3_3
      L2_3 = transition
      L2_3 = L2_3.to
      L3_3 = L22_2
      L4_3 = {}
      L4_3.time = 100
      L4_3.xScale = 1.2
      L4_3.yScale = 1.2
      L2_3(L3_3, L4_3)
      L2_3 = transition
      L2_3 = L2_3.to
      L3_3 = L22_2
      L4_3 = {}
      L4_3.time = 100
      L4_3.delay = 200
      L4_3.xScale = 1
      L4_3.yScale = 1
      L2_3(L3_3, L4_3)
    end
    L2_3 = L4_2
    if L1_3 > L2_3 then
      L4_2 = L1_3
      L2_3 = L23_2
      L3_3 = L4_2
      L2_3.text = L3_3
      L2_3 = transition
      L2_3 = L2_3.to
      L3_3 = L23_2
      L4_3 = {}
      L4_3.time = 100
      L4_3.xScale = 1.2
      L4_3.yScale = 1.2
      L2_3(L3_3, L4_3)
      L2_3 = transition
      L2_3 = L2_3.to
      L3_3 = L23_2
      L4_3 = {}
      L4_3.time = 100
      L4_3.delay = 200
      L4_3.xScale = 1
      L4_3.yScale = 1
      L2_3(L3_3, L4_3)
    end
  end
  
  function L25_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.playerInfo
    L0_3 = L0_3.spins
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.data
      L0_3 = L0_3.playerInfo
      L0_3 = L0_3.spins
      if 0 < L0_3 then
        L0_3 = {}
        L0_3.isModal = true
        L1_3 = {}
        L0_3.params = L1_3
        L1_3 = L0_1
        L1_3 = L1_3.showOverlay
        L2_3 = "lua.overlays.spinningWheel"
        L3_3 = L0_3
        L1_3(L2_3, L3_3)
      end
    end
  end
  
  function L26_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
    L0_3 = {}
    L1_3 = L8_2
    L1_3 = L1_3.type
    if L1_3 == "mystery" then
      L1_3 = {}
      L2_3 = L9_2
      L1_3.highlightItemId = L2_3
      L0_3.params = L1_3
    end
    L1_3 = L0_1
    L1_3 = L1_3.gotoScene
    L2_3 = "lua.scenes.marketplace"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  
  L27_2 = L0_1
  L27_2 = L27_2.newButton
  L28_2 = {}
  L29_2 = display
  L29_2 = L29_2.contentWidth
  L29_2 = L29_2 * 0.5
  L29_2 = L29_2 - 30
  L28_2.x = L29_2
  L29_2 = L13_2.height
  L29_2 = L29_2 - 10
  L28_2.y = L29_2
  L28_2.width = 62
  L28_2.height = 37
  L29_2 = L0_1
  L29_2 = L29_2.localized
  L29_2 = L29_2.get
  L30_2 = "OK"
  L29_2 = L29_2(L30_2)
  L28_2.text = L29_2
  L28_2.image = "images/gui/ranking/promotion/buttonOk.png"
  L28_2.onRelease = L25_2
  L27_2 = L27_2(L28_2)
  L28_2 = L0_1
  L28_2 = L28_2.newButton
  L29_2 = {}
  L30_2 = display
  L30_2 = L30_2.contentWidth
  L30_2 = L30_2 * 0.5
  L30_2 = L30_2 + 30
  L29_2.x = L30_2
  L30_2 = L13_2.height
  L30_2 = L30_2 - 10
  L29_2.y = L30_2
  L29_2.width = 48
  L29_2.height = 37
  L29_2.image = "images/gui/ranking/promotion/buttonShop.png"
  L29_2.onRelease = L26_2
  L28_2 = L28_2(L29_2)
  if L20_2 then
    L29_2 = require
    L30_2 = "lua.game.effects.fireworksHandler"
    L29_2 = L29_2(L30_2)
    L10_2 = L29_2
    L29_2 = L10_2.startFireWorks
    L30_2 = 0
    L31_2 = 320
    L32_2 = L2_2
    L33_2 = 0
    L34_2 = true
    L29_2(L30_2, L31_2, L32_2, L33_2, L34_2)
  end
  
  function L29_2(A0_3)
    local L1_3
    if not A0_3 then
      return
    end
    A0_3.xScale = 1
    A0_3.yScale = 1
    A0_3.isVisible = true
  end
  
  function L30_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if not A0_3 then
      return
    end
    
    function L2_3(A0_4)
      local L1_4
      A0_4.xScale = 1
      A0_4.yScale = 1
    end
    
    function L3_3(A0_4)
      local L1_4
      A0_4.isVisible = true
    end
    
    L5_3 = A0_3
    L4_3 = A0_3.scale
    L6_3 = 0.2
    L7_3 = 0.2
    L4_3(L5_3, L6_3, L7_3)
    L4_3 = transition
    L4_3 = L4_3.to
    L5_3 = A0_3
    L6_3 = {}
    L6_3.time = 500
    L7_3 = A1_3 or L7_3
    if not A1_3 then
      L7_3 = 0
    end
    L6_3.delay = L7_3
    L6_3.xScale = 1
    L6_3.yScale = 1
    L7_3 = easing
    L7_3 = L7_3.outBounce
    L6_3.transition = L7_3
    L6_3.onStart = L3_3
    L6_3.onCancel = L2_3
    L6_3.tag = "revealTransition"
    L4_3(L5_3, L6_3)
  end
  
  function L31_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L30_2
    L2_3 = L18_2
    L3_3 = 400
    L1_3(L2_3, L3_3)
    L1_3 = L30_2
    L2_3 = L17_2
    L3_3 = 200
    L1_3(L2_3, L3_3)
    L1_3 = L30_2
    L2_3 = L16_2
    L3_3 = 600
    L1_3(L2_3, L3_3)
    L1_3 = L30_2
    L2_3 = L19_2
    L1_3(L2_3)
    L1_3 = L27_2
    L1_3.isVisible = true
    if A0_3 then
      L1_3 = L28_2
      L1_3.isVisible = true
    end
  end
  
  function L32_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L12_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L21_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L22_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L23_2
    L0_3(L1_3, L2_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L13_2
    L0_3(L1_3, L2_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L27_2
    L0_3(L1_3, L2_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L28_2
    L0_3(L1_3, L2_3)
    L0_3 = L18_2
    if L0_3 then
      L0_3 = L11_2
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L18_2
      L0_3(L1_3, L2_3)
    end
    L0_3 = L17_2
    if L0_3 then
      L0_3 = L11_2
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L17_2
      L0_3(L1_3, L2_3)
    end
    L0_3 = L19_2
    if L0_3 then
      L0_3 = L11_2
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L19_2
      L0_3(L1_3, L2_3)
    end
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L16_2
    L0_3(L1_3, L2_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L15_2
    L0_3(L1_3, L2_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L14_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L11_2
    L0_3(L1_3, L2_3)
  end
  
  function L33_2(A0_3)
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
  
  function L34_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = transition
      L1_3 = L1_3.cancel
      L2_3 = "revealTransition"
      L1_3(L2_3)
      L1_3 = L29_2
      L2_3 = L18_2
      L1_3(L2_3)
      L1_3 = L29_2
      L2_3 = L17_2
      L1_3(L2_3)
      L1_3 = L29_2
      L2_3 = L19_2
      L1_3(L2_3)
      L1_3 = L29_2
      L2_3 = L16_2
      L1_3(L2_3)
    end
    L1_3 = true
    return L1_3
  end
  
  function L35_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L12_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L33_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L34_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L36_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.cancel
    L1_3 = "revealTransition"
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L27_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L28_2
    L0_3(L1_3)
    L0_3 = L12_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L33_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L34_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L10_2
    if L0_3 then
      L0_3 = L10_2
      L0_3 = L0_3.clean
      L0_3()
    end
  end
  
  L2_1 = L36_2
  L36_2 = L32_2
  L36_2()
  
  function L36_2()
    local L0_3, L1_3
    L0_3 = L35_2
    L0_3()
    L0_3 = L31_2
    L0_3()
  end
  
  L37_2 = L0_1
  L37_2 = L37_2.bouncer
  L37_2 = L37_2.down
  L38_2 = L11_2
  L39_2 = L36_2
  L37_2(L38_2, L39_2)
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
