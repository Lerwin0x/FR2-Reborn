local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.newScene
L1_1 = L1_1()
L2_1 = nil
L3_1 = nil
L4_1 = nil
L5_1 = 100

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2
  L2_2 = A0_2.view
  L3_2 = require
  L4_2 = "lua.network.tcpMessageFormat"
  L3_2 = L3_2(L4_2)
  L4_2 = require
  L5_2 = "lua.network.httpsMessageFormat"
  L4_2 = L4_2(L5_2)
  L5_2 = require
  L6_2 = "lua.iap.inAppPurchase"
  L5_2 = L5_2(L6_2)
  L6_2 = L0_1
  L6_2 = L6_2.database
  L6_2 = L6_2.getMoney
  L6_2 = L6_2()
  L7_2 = L0_1
  L7_2 = L7_2.database
  L7_2 = L7_2.getGem
  L7_2 = L7_2()
  L8_2 = false
  L9_2 = 0
  L10_2 = 0
  L11_2 = false
  L12_2 = nil
  L13_2 = nil
  L14_2 = 0
  L15_2 = 1
  L16_2 = nil
  L17_2 = nil
  L18_2 = nil
  L19_2 = nil
  L20_2 = nil
  L21_2 = A1_2.params
  L21_2 = L21_2.tableActive
  L22_2 = A1_2.params
  L22_2 = L22_2.challengeId
  L23_2 = require
  L24_2 = "lua.modules.jsonParser"
  L23_2 = L23_2(L24_2)
  L23_2 = L23_2.getJsonFromFile
  L24_2 = "config/spin.json"
  L23_2 = L23_2(L24_2)
  L24_2 = L23_2.spinRewards
  L25_2 = nil
  L26_2 = nil
  L27_2 = nil
  L28_2 = nil
  L29_2 = nil
  L30_2 = false
  L31_2 = false
  L32_2 = 0
  L33_2 = display
  L33_2 = L33_2.newGroup
  L33_2 = L33_2()
  L34_2 = display
  L34_2 = L34_2.newGroup
  L34_2 = L34_2()
  L34_2.anchorX = 0.5
  L34_2.anchorY = 0.5
  L35_2 = display
  L35_2 = L35_2.contentWidth
  L35_2 = L35_2 * 0.5
  L34_2.x = L35_2
  L34_2.y = 180
  L35_2 = display
  L35_2 = L35_2.newImageRect
  L36_2 = "images/gui/common/black.png"
  L37_2 = 480
  L38_2 = 320
  L35_2 = L35_2(L36_2, L37_2, L38_2)
  L36_2 = display
  L36_2 = L36_2.contentWidth
  L36_2 = L36_2 * 0.5
  L35_2.x = L36_2
  L36_2 = display
  L36_2 = L36_2.contentHeight
  L36_2 = L36_2 * 0.5
  L35_2.y = L36_2
  L37_2 = L2_2
  L36_2 = L2_2.insert
  L38_2 = L35_2
  L36_2(L37_2, L38_2)
  L36_2 = display
  L36_2 = L36_2.newImageRect
  L37_2 = "images/gui/wheel/window.png"
  L38_2 = 436
  L39_2 = 173
  L36_2 = L36_2(L37_2, L38_2, L39_2)
  L36_2.anchorY = 0
  L36_2.anchorX = 0.5
  L36_2.x = 224
  L36_2.y = 0
  L37_2 = display
  L37_2 = L37_2.newImageRect
  L38_2 = "images/gui/market/currentCoins.png"
  L39_2 = 70
  L40_2 = 81
  L37_2 = L37_2(L38_2, L39_2, L40_2)
  L37_2.anchorX = 0
  L37_2.anchorY = 0
  L37_2.x = 410
  L37_2.y = 0
  L38_2 = L0_1
  L38_2 = L38_2.newText
  L39_2 = {}
  L39_2.string = L6_2
  L39_2.size = 14
  L39_2.x = 434
  L39_2.y = 69
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
  L40_2.string = L7_2
  L40_2.size = 14
  L40_2.x = 434
  L40_2.y = 41
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
  L40_2 = display
  L40_2 = L40_2.newImageRect
  L41_2 = "images/gui/wheel/wheel1.png"
  L42_2 = 257
  L43_2 = 258
  L40_2 = L40_2(L41_2, L42_2, L43_2)
  L40_2.x = 0
  L40_2.y = 0
  L41_2 = display
  L41_2 = L41_2.newImageRect
  L42_2 = "images/gui/wheel/wheelMid.png"
  L43_2 = 50
  L44_2 = 50
  L41_2 = L41_2(L42_2, L43_2, L44_2)
  L42_2 = display
  L42_2 = L42_2.contentWidth
  L42_2 = L42_2 * 0.5
  L41_2.x = L42_2
  L41_2.y = 180
  L42_2 = display
  L42_2 = L42_2.newImageRect
  L43_2 = "images/gui/wheel/header1.png"
  L44_2 = 215
  L45_2 = 75
  L42_2 = L42_2(L43_2, L44_2, L45_2)
  L43_2 = display
  L43_2 = L43_2.contentWidth
  L43_2 = L43_2 * 0.5
  L42_2.x = L43_2
  L42_2.y = 60
  L43_2 = display
  L43_2 = L43_2.newImageRect
  L44_2 = "images/gui/wheel/header2.png"
  L45_2 = 215
  L46_2 = 75
  L43_2 = L43_2(L44_2, L45_2, L46_2)
  L44_2 = L42_2.x
  L43_2.x = L44_2
  L44_2 = L42_2.y
  L43_2.y = L44_2
  L44_2 = display
  L44_2 = L44_2.newImageRect
  L45_2 = "images/gui/wheel/arrow.png"
  L46_2 = 25
  L47_2 = 45
  L44_2 = L44_2(L45_2, L46_2, L47_2)
  L45_2 = L42_2.x
  L44_2.x = L45_2
  L45_2 = L42_2.y
  L45_2 = L45_2 + 24
  L44_2.y = L45_2
  L45_2 = L0_1
  L45_2 = L45_2.newText
  L46_2 = {}
  L47_2 = L0_1
  L47_2 = L47_2.localized
  L47_2 = L47_2.get
  L48_2 = "Spin"
  L47_2 = L47_2(L48_2)
  L46_2.string = L47_2
  L47_2 = L36_2.x
  L47_2 = L47_2 + 16
  L46_2.x = L47_2
  L47_2 = L36_2.y
  L47_2 = L47_2 + 50
  L46_2.y = L47_2
  L46_2.size = 20
  L47_2 = {}
  L48_2 = 1
  L49_2 = 1
  L50_2 = 1
  L47_2[1] = L48_2
  L47_2[2] = L49_2
  L47_2[3] = L50_2
  L46_2.color = L47_2
  L46_2.ax = 0.5
  L45_2 = L45_2(L46_2)
  L46_2 = L0_1
  L46_2 = L46_2.newText
  L47_2 = {}
  L47_2.string = ""
  L48_2 = L36_2.x
  L47_2.x = L48_2
  L48_2 = L36_2.y
  L48_2 = L48_2 + 32
  L47_2.y = L48_2
  L46_2 = L46_2(L47_2)
  
  function L47_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getMoney
    L0_3 = L0_3()
    L1_3 = L0_1
    L1_3 = L1_3.database
    L1_3 = L1_3.getGem
    L1_3 = L1_3()
    L2_3 = L6_2
    if L0_3 > L2_3 then
      L6_2 = L0_3
      L2_3 = L38_2
      L3_3 = L6_2
      L2_3.text = L3_3
      L2_3 = transition
      L2_3 = L2_3.to
      L3_3 = L38_2
      L4_3 = {}
      L4_3.time = 100
      L4_3.xScale = 1.2
      L4_3.yScale = 1.2
      L2_3(L3_3, L4_3)
      L2_3 = transition
      L2_3 = L2_3.to
      L3_3 = L38_2
      L4_3 = {}
      L4_3.time = 100
      L4_3.delay = 200
      L4_3.xScale = 1
      L4_3.yScale = 1
      L2_3(L3_3, L4_3)
    end
    L2_3 = L7_2
    if L1_3 > L2_3 then
      L7_2 = L1_3
      L2_3 = L39_2
      L3_3 = L7_2
      L2_3.text = L3_3
      L2_3 = transition
      L2_3 = L2_3.to
      L3_3 = L39_2
      L4_3 = {}
      L4_3.time = 100
      L4_3.xScale = 1.2
      L4_3.yScale = 1.2
      L2_3(L3_3, L4_3)
      L2_3 = transition
      L2_3 = L2_3.to
      L3_3 = L39_2
      L4_3 = {}
      L4_3.time = 100
      L4_3.delay = 200
      L4_3.xScale = 1
      L4_3.yScale = 1
      L2_3(L3_3, L4_3)
    end
  end
  
  function L48_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = {}
    L0_3.isModal = true
    L1_3 = {}
    L2_3 = L28_2
    L1_3.rewardThatIsWon = L2_3
    L2_3 = L27_2
    L1_3.rewardValue = L2_3
    L0_3.params = L1_3
    L1_3 = false
    L8_2 = L1_3
    L1_3 = L0_1
    L1_3 = L1_3.showOverlay
    L2_3 = "lua.overlays.spinPrize"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  
  function L49_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L2_3 = ipairs
    L3_3 = L24_2
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = tonumber
      L8_3 = L6_3.id
      L7_3 = L7_3(L8_3)
      if L7_3 == A0_3 then
        L28_2 = L6_3
        L7_3 = L6_3.type
        if L7_3 == "spin" then
          L7_3 = L0_1
          L7_3 = L7_3.analytics
          L7_3 = L7_3.addResourceEvent
          L8_3 = "Source"
          L9_3 = "spin"
          L10_3 = 1
          L11_3 = "rewards"
          L12_3 = "spin"
          L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
          L7_3 = L0_1
          L7_3 = L7_3.data
          L7_3 = L7_3.playerInfo
          L8_3 = L0_1
          L8_3 = L8_3.data
          L8_3 = L8_3.playerInfo
          L8_3 = L8_3.spins
          L8_3 = L8_3 + A1_3
          L7_3.spins = L8_3
        else
          L7_3 = L6_3.type
          if L7_3 == "gems" then
            L7_3 = L0_1
            L7_3 = L7_3.database
            L7_3 = L7_3.increaseGem
            L8_3 = A1_3
            L7_3(L8_3)
            L7_3 = L0_1
            L7_3 = L7_3.analytics
            L7_3 = L7_3.addResourceEvent
            L8_3 = "Source"
            L9_3 = "gem"
            L10_3 = A1_3
            L11_3 = "rewards"
            L12_3 = "spin"
            L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
          else
            L7_3 = L6_3.type
            if L7_3 == "coins" then
              L7_3 = L0_1
              L7_3 = L7_3.database
              L7_3 = L7_3.increaseMoney
              L8_3 = A1_3
              L7_3(L8_3)
              L7_3 = L0_1
              L7_3 = L7_3.analytics
              L7_3 = L7_3.addResourceEvent
              L8_3 = "Source"
              L9_3 = "coin"
              L10_3 = A1_3
              L11_3 = "rewards"
              L12_3 = "spin"
              L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
            else
              L7_3 = L6_3.type
              if L7_3 == "mystery" then
                L7_3 = L0_1
                L7_3 = L7_3.database
                L7_3 = L7_3.addItem
                L8_3 = A1_3
                L7_3(L8_3)
              else
                L7_3 = print
                L8_3 = "WARNING: failed to find spin prize"
                L7_3(L8_3)
              end
            end
          end
        end
      end
    end
  end
  
  function L50_2()
    local L0_3, L1_3, L2_3
    L0_3 = L14_2
    if L0_3 ~= 0 then
      L0_3 = L11_2
      if not L0_3 then
        L0_3 = L14_2
        L1_3 = L15_2
        L0_3 = L0_3 * L1_3
        L14_2 = L0_3
        L0_3 = L34_2
        L1_3 = L34_2
        L1_3 = L1_3.rotation
        L2_3 = L14_2
        L1_3 = L1_3 + L2_3
        L0_3.rotation = L1_3
      end
    end
  end
  
  function L51_2(A0_3)
    local L1_3
    L1_3 = A0_3 % 360
    return L1_3
  end
  
  function L52_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = ipairs
    L2_3 = L24_2
    L1_3, L2_3, L3_3 = L1_3(L2_3)
    for L4_3, L5_3 in L1_3, L2_3, L3_3 do
      L6_3 = L5_3.id
      if L6_3 == A0_3 then
        L6_3 = L5_3.angleBefore
        L6_3 = L6_3 + 5
        L7_3 = L5_3.angleAfter
        L7_3 = L7_3 - 5
        if L6_3 > L7_3 then
          L8_3 = L6_3 + L7_3
          L8_3 = L8_3 / 2
          L6_3 = L8_3
          L7_3 = L8_3
        end
        L8_3 = math
        L8_3 = L8_3.random
        L9_3 = L6_3
        L10_3 = L7_3
        L8_3 = L8_3(L9_3, L10_3)
        L9_3 = L23_2
        L9_3 = L9_3.rotationOffset
        L10_3 = math
        L10_3 = L10_3.pi
        L10_3 = 180 / L10_3
        L9_3 = L9_3 * L10_3
        L9_3 = L8_3 + L9_3
        L8_3 = L9_3 + 90
        L9_3 = -L8_3
        return L9_3
      end
    end
  end
  
  function L53_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = math
    L0_3 = L0_3.abs
    L1_3 = L34_2
    L1_3 = L1_3.rotation
    L2_3 = L32_2
    L1_3 = L1_3 - L2_3
    L0_3 = L0_3(L1_3)
    L1_3 = L8_2
    if L1_3 then
      if 8 < L0_3 then
        L1_3 = L34_2
        L1_3 = L1_3.rotation
        L32_2 = L1_3
        L1_3 = L0_1
        L1_3 = L1_3.audio
        L1_3 = L1_3.playWheelSpin
        L1_3()
      end
    else
      L1_3 = L17_2
      if L1_3 then
        L1_3 = timer
        L1_3 = L1_3.cancel
        L2_3 = L17_2
        L1_3(L2_3)
        L1_3 = nil
        L17_2 = L1_3
      end
      return
    end
    L1_3 = timer
    L1_3 = L1_3.performWithDelay
    L2_3 = 50
    L3_3 = L53_2
    L4_3 = 1
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L17_2 = L1_3
  end
  
  function L54_2()
    local L0_3, L1_3
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
  
  function L55_2()
    local L0_3, L1_3
    L0_3 = 0.6
    L15_2 = L0_3
  end
  
  function L56_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = L14_2
    L0_3 = L0_3 * 45
    if 4000 < L0_3 then
      L0_3 = 4000
    end
    
    function L1_3()
      local L0_4, L1_4
      L0_4 = 0
      L14_2 = L0_4
      L0_4 = false
      L8_2 = L0_4
      L0_4 = L54_2
      L0_4()
    end
    
    L2_3 = L14_2
    L2_3 = L2_3 * 50
    L3_3 = math
    L3_3 = L3_3.floor
    L4_3 = L2_3 / 360
    L3_3 = L3_3(L4_3)
    L2_3 = L3_3
    L3_3 = 360 * L2_3
    L4_3 = L34_2
    L4_3 = L4_3.rotation
    L4_3 = L4_3 % 360
    L5_3 = L52_2
    L6_3 = 1
    L5_3 = L5_3(L6_3)
    L5_3 = L5_3 % 360
    L6_3 = nil
    if L4_3 > L5_3 then
      L7_3 = L4_3 - L5_3
      L6_3 = 360 - L7_3
    else
      L6_3 = L5_3 - L4_3
    end
    L3_3 = L3_3 + L6_3
    L7_3 = transition
    L7_3 = L7_3.to
    L8_3 = L34_2
    L9_3 = {}
    L9_3.time = L0_3
    L9_3.rotation = L3_3
    L9_3.delta = true
    L10_3 = easing
    L10_3 = L10_3.outExpo
    L9_3.transition = L10_3
    L9_3.onComplete = L1_3
    L7_3(L8_3, L9_3)
  end
  
  function L57_2()
    local L0_3, L1_3
    L0_3 = L56_2
    L0_3()
    L0_3 = L0_1
    L0_3 = L0_3.createCustomOverlay
    L1_3 = 43
    L0_3(L1_3)
  end
  
  function L58_2()
    local L0_3, L1_3
    L0_3 = L18_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L18_2
      L0_3(L1_3)
      L0_3 = nil
      L18_2 = L0_3
    end
  end
  
  function L59_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = L58_2
    L0_3()
    L0_3 = true
    L11_2 = L0_3
    L0_3 = transition
    L0_3 = L0_3.cancel
    L1_3 = L34_2
    L0_3(L1_3)
    
    function L0_3()
      local L0_4, L1_4, L2_4
      L0_4 = 0
      L14_2 = L0_4
      L0_4 = L54_2
      L0_4()
      L0_4 = timer
      L0_4 = L0_4.performWithDelay
      L1_4 = 1000
      L2_4 = L48_2
      L0_4 = L0_4(L1_4, L2_4)
      L29_2 = L0_4
      L0_4 = L0_1
      L0_4 = L0_4.audio
      L0_4 = L0_4.play
      L1_4 = "wheel_win"
      L0_4(L1_4)
      L0_4 = L47_2
      L0_4()
    end
    
    L1_3 = L14_2
    L1_3 = L1_3 * 300
    if 4000 < L1_3 then
      L1_3 = 4000
    end
    L2_3 = L14_2
    L2_3 = L2_3 * 50
    L3_3 = math
    L3_3 = L3_3.floor
    L4_3 = L2_3 / 360
    L3_3 = L3_3(L4_3)
    L2_3 = L3_3
    L3_3 = 360 * L2_3
    L4_3 = L34_2
    L4_3 = L4_3.rotation
    L4_3 = L4_3 % 360
    L5_3 = L25_2
    L5_3 = L5_3 % 360
    L6_3 = nil
    if L4_3 > L5_3 then
      L7_3 = L4_3 - L5_3
      L6_3 = 360 - L7_3
    else
      L6_3 = L5_3 - L4_3
    end
    L3_3 = L3_3 + L6_3
    L7_3 = transition
    L7_3 = L7_3.to
    L8_3 = L34_2
    L9_3 = {}
    L9_3.time = L1_3
    L9_3.rotation = L3_3
    L9_3.delta = true
    L9_3.onComplete = L0_3
    L10_3 = easing
    L10_3 = L10_3.outExpo
    L9_3.transition = L10_3
    L7_3(L8_3, L9_3)
  end
  
  function L60_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = math
    L1_3 = L1_3.cos
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = L5_1
    L1_3 = L1_3 * L2_3
    L2_3 = math
    L2_3 = L2_3.sin
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L3_3 = L5_1
    L2_3 = L2_3 * L3_3
    L3_3 = display
    L3_3 = L3_3.newLine
    L4_3 = 0
    L5_3 = 0
    L6_3 = L1_3
    L7_3 = L2_3
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
    L5_3 = L3_3
    L4_3 = L3_3.setStrokeColor
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 1
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
    L3_3.strokeWidth = 1
    L4_3 = L34_2
    L5_3 = L4_3
    L4_3 = L4_3.insert
    L6_3 = L3_3
    L4_3(L5_3, L6_3)
  end
  
  function L61_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L2_3 = "images/gui/wheel/"
    L3_3 = A0_3.type
    if L3_3 == "coins" then
    end
    L3_3 = display
    L3_3 = L3_3.newGroup
    L3_3 = L3_3()
    L4_3 = math
    L4_3 = L4_3.cos
    L5_3 = A1_3
    L4_3 = L4_3(L5_3)
    L5_3 = L5_1
    L4_3 = L4_3 * L5_3
    L4_3 = L4_3 / 4
    L4_3 = L4_3 * 3
    L5_3 = math
    L5_3 = L5_3.sin
    L6_3 = A1_3
    L5_3 = L5_3(L6_3)
    L6_3 = L5_1
    L5_3 = L5_3 * L6_3
    L5_3 = L5_3 / 4
    L5_3 = L5_3 * 3
    L6_3 = display
    L6_3 = L6_3.newImage
    L7_3 = L2_3
    L8_3 = A0_3.image
    L7_3 = L7_3 .. L8_3
    L6_3 = L6_3(L7_3)
    L6_3.xScale = 0.35
    L6_3.yScale = 0.35
    L8_3 = L3_3
    L7_3 = L3_3.insert
    L9_3 = L6_3
    L7_3(L8_3, L9_3)
    L7_3 = 10
    L8_3 = A0_3.value
    L9_3 = A0_3.type
    if L9_3 ~= "mystery" then
      L9_3 = "x "
      L10_3 = L8_3
      L8_3 = L9_3 .. L10_3
      L9_3 = tonumber
      L10_3 = A0_3.value
      L9_3 = L9_3(L10_3)
      if 1000 < L9_3 then
        L7_3 = 8
      end
    end
    L9_3 = L0_1
    L9_3 = L9_3.newText
    L10_3 = {}
    L10_3.string = L8_3
    L10_3.size = L7_3
    L10_3.x = 0
    L10_3.y = 15
    L11_3 = {}
    L12_3 = 1
    L13_3 = 1
    L14_3 = 1
    L11_3[1] = L12_3
    L11_3[2] = L13_3
    L11_3[3] = L14_3
    L10_3.color = L11_3
    L9_3 = L9_3(L10_3)
    L11_3 = L3_3
    L10_3 = L3_3.insert
    L12_3 = L9_3
    L10_3(L11_3, L12_3)
    L3_3.x = L4_3
    L3_3.y = L5_3
    L10_3 = math
    L10_3 = L10_3.pi
    L10_3 = 180 / L10_3
    L10_3 = A1_3 * L10_3
    L10_3 = L10_3 + 90
    L3_3.rotation = L10_3
    L10_3 = L3_3.rotation
    A0_3.degrees = L10_3
    L10_3 = L34_2
    L11_3 = L10_3
    L10_3 = L10_3.insert
    L12_3 = L3_3
    L10_3(L11_3, L12_3)
  end
  
  function L62_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = 0
    L1_3 = ipairs
    L2_3 = L24_2
    L1_3, L2_3, L3_3 = L1_3(L2_3)
    for L4_3, L5_3 in L1_3, L2_3, L3_3 do
      L6_3 = L5_3.weight
      L0_3 = L0_3 + L6_3
    end
    L1_3 = L23_2
    L1_3 = L1_3.rotationOffset
    L2_3 = L1_3
    L3_3 = ipairs
    L4_3 = L24_2
    L3_3, L4_3, L5_3 = L3_3(L4_3)
    for L6_3, L7_3 in L3_3, L4_3, L5_3 do
      L8_3 = L7_3.weight
      L8_3 = L8_3 / L0_3
      L9_3 = math
      L9_3 = L9_3.pi
      L8_3 = L8_3 * L9_3
      L8_3 = L8_3 * 2
      L9_3 = L61_2
      L10_3 = L7_3
      L11_3 = L8_3 / 2
      L11_3 = L2_3 + L11_3
      L9_3(L10_3, L11_3)
      L9_3 = L2_3 - L1_3
      L10_3 = math
      L10_3 = L10_3.pi
      L10_3 = 180 / L10_3
      L9_3 = L9_3 * L10_3
      L7_3.angleBefore = L9_3
      L2_3 = L2_3 + L8_3
      L9_3 = L2_3 - L1_3
      L10_3 = math
      L10_3 = L10_3.pi
      L10_3 = 180 / L10_3
      L9_3 = L9_3 * L10_3
      L7_3.angleAfter = L9_3
    end
  end
  
  function L63_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3
    L4_3 = {}
    L5_3 = A2_3 - A0_3
    L4_3.x = L5_3
    L5_3 = A3_3 - A1_3
    L4_3.y = L5_3
    return L4_3
  end
  
  function L64_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.x
    L3_3 = A1_3.x
    L2_3 = L2_3 * L3_3
    L3_3 = A0_3.y
    L4_3 = A1_3.y
    L3_3 = L3_3 * L4_3
    L2_3 = L2_3 + L3_3
    return L2_3
  end
  
  function L65_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.x
    L3_3 = A1_3.y
    L2_3 = L2_3 * L3_3
    L3_3 = A0_3.y
    L4_3 = A1_3.x
    L3_3 = L3_3 * L4_3
    L2_3 = L2_3 - L3_3
    return L2_3
  end
  
  function L66_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = math
    L1_3 = L1_3.sqrt
    L2_3 = A0_3.x
    L3_3 = A0_3.x
    L2_3 = L2_3 * L3_3
    L3_3 = A0_3.y
    L4_3 = A0_3.y
    L3_3 = L3_3 * L4_3
    L2_3 = L2_3 + L3_3
    L1_3 = L1_3(L2_3)
    L2_3 = A0_3.x
    L2_3 = L2_3 / L1_3
    A0_3.x = L2_3
    L2_3 = A0_3.y
    L2_3 = L2_3 / L1_3
    A0_3.y = L2_3
  end
  
  function L67_2(A0_3)
    local L1_3
    L1_3 = A0_3 * 180
    L1_3 = L1_3 / 3.14
    return L1_3
  end
  
  function L68_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3, L9_3, L10_3
    if A2_3 == A4_3 and A3_3 == A5_3 then
      L6_3 = 0
      return L6_3
    end
    L6_3 = L63_2
    L7_3 = A0_3
    L8_3 = A1_3
    L9_3 = A2_3
    L10_3 = A3_3
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
    L7_3 = {}
    L8_3 = A4_3 - A2_3
    L7_3.x = L8_3
    L8_3 = A5_3 - A3_3
    L7_3.y = L8_3
    L8_3 = L66_2
    L9_3 = L6_3
    L8_3(L9_3)
    L8_3 = L66_2
    L9_3 = L7_3
    L8_3(L9_3)
    L8_3 = L65_2
    L9_3 = L6_3
    L10_3 = L7_3
    L8_3 = L8_3(L9_3, L10_3)
    return L8_3
  end
  
  function L69_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L21_2
    if L0_3 then
      L0_3 = L22_2
      if L0_3 then
        L0_3 = L21_2
        if L0_3 == 1 then
          L0_3 = L0_1
          L0_3 = L0_3.data
          L1_3 = L0_1
          L1_3 = L1_3.data
          L1_3 = L1_3.dailyToClaim
          L1_3 = L1_3 - 1
          L0_3.dailyToClaim = L1_3
          L0_3 = L0_1
          L0_3 = L0_3.comm
          L0_3 = L0_3.claimDailyChallenge
          L1_3 = L22_2
          L0_3(L1_3)
        else
          L0_3 = L21_2
          if L0_3 == 2 then
            L0_3 = L0_1
            L0_3 = L0_3.comm
            L0_3 = L0_3.claimAchievement
            L1_3 = L22_2
            L0_3(L1_3)
          end
        end
        L0_3 = true
        L30_2 = L0_3
    end
    else
      L0_3 = L0_1
      L0_3 = L0_3.comm
      L0_3 = L0_3.useSpin
      L0_3()
      L0_3 = false
      L30_2 = L0_3
    end
    L0_3 = timer
    L0_3 = L0_3.performWithDelay
    L1_3 = 10000
    L2_3 = L57_2
    L3_3 = 1
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L18_2 = L0_3
  end
  
  function L70_2()
    local L0_3, L1_3
    L0_3 = L8_2
    if not L0_3 then
      L0_3 = L14_2
      if 10 < L0_3 then
        L0_3 = 1
        L15_2 = L0_3
        L0_3 = true
        L8_2 = L0_3
        L0_3 = false
        L11_2 = L0_3
        L0_3 = nil
        L25_2 = L0_3
        L0_3 = nil
        L26_2 = L0_3
        L0_3 = nil
        L27_2 = L0_3
        L0_3 = L53_2
        L0_3()
        L0_3 = L69_2
        L0_3()
    end
    else
      L0_3 = L55_2
      L0_3()
    end
  end
  
  function L71_2()
    local L0_3, L1_3
    L0_3 = L21_2
    if L0_3 then
      L0_3 = L22_2
      if L0_3 then
        L0_3 = true
        return L0_3
    end
    else
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
          L0_3 = true
          return L0_3
        end
      end
    end
    L0_3 = false
    return L0_3
  end
  
  L72_2 = 240
  L73_2 = 180
  L74_2 = 0
  L75_2 = 0
  
  function L76_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L2_3 = A1_3.phase
    L3_3 = L71_2
    L3_3 = L3_3()
    if L3_3 then
      L3_3 = L8_2
      if not L3_3 then
        goto lbl_13
      end
    end
    L3_3 = print
    L4_3 = "No spins or spin active"
    L3_3(L4_3)
    do return end
    ::lbl_13::
    if L2_3 == "began" then
      L3_3 = A1_3.x
      L12_2 = L3_3
      L3_3 = A1_3.y
      L13_2 = L3_3
      L3_3 = L34_2
      if L3_3 then
        L3_3 = transition
        L3_3 = L3_3.cancel
        L4_3 = L34_2
        L3_3(L4_3)
      end
    elseif L2_3 == "moved" then
      L3_3 = L12_2
      if L3_3 ~= nil then
        L3_3 = L13_2
        if L3_3 ~= nil then
          goto lbl_40
        end
      end
      L3_3 = A1_3.x
      L12_2 = L3_3
      L3_3 = A1_3.y
      L13_2 = L3_3
      do return end
      ::lbl_40::
      L3_3 = A1_3.x
      L4_3 = A1_3.y
      L5_3 = L63_2
      L6_3 = L72_2
      L7_3 = L73_2
      L8_3 = L12_2
      L9_3 = L13_2
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
      L6_3 = L66_2
      L7_3 = L5_3
      L6_3(L7_3)
      L6_3 = L67_2
      L7_3 = math
      L7_3 = L7_3.atan2
      L8_3 = L5_3.y
      L9_3 = L5_3.x
      L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L7_3(L8_3, L9_3)
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
      L6_3 = L6_3 + 90
      L7_3 = L63_2
      L8_3 = L72_2
      L9_3 = L73_2
      L10_3 = L3_3
      L11_3 = L4_3
      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
      L8_3 = L66_2
      L9_3 = L7_3
      L8_3(L9_3)
      L8_3 = L67_2
      L9_3 = math
      L9_3 = L9_3.atan2
      L10_3 = L7_3.y
      L11_3 = L7_3.x
      L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L9_3(L10_3, L11_3)
      L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
      L8_3 = L8_3 + 90
      L9_3 = L34_2
      L10_3 = L34_2
      L10_3 = L10_3.rotation
      L11_3 = L8_3 - L6_3
      L10_3 = L10_3 + L11_3
      L9_3.rotation = L10_3
      L9_3 = L68_2
      L10_3 = L72_2
      L11_3 = L73_2
      L12_3 = L12_2
      L13_3 = L13_2
      L14_3 = L3_3
      L15_3 = L4_3
      L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
      L10_2 = L9_3
      L9_3 = L12_2
      L9_3 = L3_3 - L9_3
      L74_2 = L9_3
      L9_3 = L13_2
      L9_3 = L4_3 - L9_3
      L75_2 = L9_3
      L12_2 = L3_3
      L13_2 = L4_3
    elseif L2_3 == "ended" or L2_3 == "cancelled" then
      L3_3 = A1_3.x
      L4_3 = A1_3.y
      L5_3 = L74_2
      if 3 < L5_3 then
        L5_3 = 3
        L74_2 = L5_3
      else
        L5_3 = L74_2
        if L5_3 < -3 then
          L5_3 = -3
          L74_2 = L5_3
        end
      end
      L5_3 = L75_2
      if 3 < L5_3 then
        L5_3 = 3
        L75_2 = L5_3
      else
        L5_3 = L75_2
        if L5_3 < -3 then
          L5_3 = -3
          L75_2 = L5_3
        end
      end
      L5_3 = math
      L5_3 = L5_3.sqrt
      L6_3 = L74_2
      L7_3 = L74_2
      L6_3 = L6_3 * L7_3
      L7_3 = L75_2
      L8_3 = L75_2
      L7_3 = L7_3 * L8_3
      L6_3 = L6_3 + L7_3
      L5_3 = L5_3(L6_3)
      L6_3 = L10_2
      L6_3 = L6_3 * 20
      L6_3 = L6_3 * L5_3
      L14_2 = L6_3
      L6_3 = L70_2
      L6_3()
    end
  end
  
  function L77_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.m
    L2_3 = L4_2
    L2_3 = L2_3.buyCrystalIOS
    L2_3 = L2_3()
    if L1_3 ~= L2_3 then
      L1_3 = A0_3.m
      L2_3 = L4_2
      L2_3 = L2_3.buyCrystalGoogle
      L2_3 = L2_3()
      if L1_3 ~= L2_3 then
        L1_3 = A0_3.m
        L2_3 = L4_2
        L2_3 = L2_3.buyCrystalAmazon
        L2_3 = L2_3()
        if L1_3 == L2_3 then
        end
      end
    end
  end
  
  function L78_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = L31_2
    if L1_3 then
    else
      L1_3 = A0_3.m
      L2_3 = L3_2
      L2_3 = L2_3.useSpin
      L2_3 = L2_3()
      if L1_3 == L2_3 then
        L1_3 = L0_1
        L1_3 = L1_3.data
        L1_3 = L1_3.playerInfo
        L2_3 = L0_1
        L2_3 = L2_3.data
        L2_3 = L2_3.playerInfo
        L2_3 = L2_3.spins
        L2_3 = L2_3 - 1
        L1_3.spins = L2_3
        L1_3 = L0_1
        L1_3 = L1_3.analytics
        L1_3 = L1_3.addResourceEvent
        L2_3 = "Sink"
        L3_3 = "spin"
        L4_3 = 1
        L5_3 = "rewards"
        L6_3 = "spin"
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
        L1_3 = A0_3.i
        L26_2 = L1_3
        L1_3 = A0_3.v
        L27_2 = L1_3
        L1_3 = L52_2
        L2_3 = L26_2
        L1_3 = L1_3(L2_3)
        L25_2 = L1_3
        L1_3 = L49_2
        L2_3 = tonumber
        L3_3 = L26_2
        L2_3 = L2_3(L3_3)
        L3_3 = tonumber
        L4_3 = L27_2
        L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
        L1_3 = L59_2
        L1_3()
      else
        L1_3 = A0_3.m
        L2_3 = L3_2
        L2_3 = L2_3.claimDailyChallenge
        L2_3 = L2_3()
        if L1_3 == L2_3 then
          L1_3 = L30_2
          if L1_3 then
            L1_3 = L0_1
            L1_3 = L1_3.analytics
            L1_3 = L1_3.addResourceEvent
            L2_3 = "Source"
            L3_3 = "spin"
            L4_3 = 1
            L5_3 = "rewards"
            L6_3 = "dailyChallenge"
            L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
            L1_3 = L0_1
            L1_3 = L1_3.data
            L1_3 = L1_3.playerInfo
            L2_3 = L0_1
            L2_3 = L2_3.data
            L2_3 = L2_3.playerInfo
            L2_3 = L2_3.spins
            L2_3 = L2_3 + 1
            L1_3.spins = L2_3
            L1_3 = L0_1
            L1_3 = L1_3.comm
            L1_3 = L1_3.useSpin
            L1_3()
            L1_3 = false
            L30_2 = L1_3
          end
        end
      end
    end
  end
  
  function L79_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.iapCallActive
    if not L0_3 then
    end
  end
  
  L80_2 = L0_1
  L80_2 = L80_2.newButton
  L81_2 = {}
  L81_2.image = "images/gui/market/popup/buttonCash.png"
  L81_2.onRelease = L79_2
  L82_2 = {}
  L82_2.string = "cashPrice"
  L82_2.x = 0
  L82_2.y = 10
  L81_2.text = L82_2
  L81_2.width = 77
  L81_2.height = 50
  L82_2 = L36_2.x
  L82_2 = L82_2 + 50
  L81_2.x = L82_2
  L82_2 = L36_2.y
  L82_2 = L82_2 + 190
  L81_2.y = L82_2
  L80_2 = L80_2(L81_2)
  L80_2.isVisible = false
  
  function L81_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
  L82_2 = L0_1
  L82_2 = L82_2.newButton
  L83_2 = {}
  L83_2.image = "images/gui/common/buttonClosePopup.png"
  L83_2.onRelease = L81_2
  L83_2.width = 43
  L83_2.height = 38
  L84_2 = L36_2.x
  L84_2 = L84_2 + 120
  L83_2.x = L84_2
  L84_2 = L36_2.y
  L84_2 = L84_2 + 66
  L83_2.y = L84_2
  L82_2 = L82_2(L83_2)
  
  function L83_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L43_2
    L0_3 = L0_3.isVisible
    if L0_3 then
      L0_3 = L43_2
      L0_3.isVisible = false
    else
      L0_3 = L43_2
      L0_3.isVisible = true
    end
    L0_3 = 400
    L1_3 = L8_2
    if L1_3 then
      L0_3 = 100
    end
    L1_3 = timer
    L1_3 = L1_3.performWithDelay
    L2_3 = L0_3
    L3_3 = L83_2
    L4_3 = 1
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L20_2 = L1_3
  end
  
  function L84_2()
    local L0_3, L1_3, L2_3
    L0_3 = L33_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L36_2
    L0_3(L1_3, L2_3)
    L0_3 = L34_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L40_2
    L0_3(L1_3, L2_3)
    L0_3 = L62_2
    L0_3()
    L0_3 = L33_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L34_2
    L0_3(L1_3, L2_3)
    L0_3 = L33_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L41_2
    L0_3(L1_3, L2_3)
    L0_3 = L33_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L42_2
    L0_3(L1_3, L2_3)
    L0_3 = L33_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L43_2
    L0_3(L1_3, L2_3)
    L0_3 = L33_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L44_2
    L0_3(L1_3, L2_3)
    L0_3 = L33_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L80_2
    L0_3(L1_3, L2_3)
    L0_3 = L33_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L82_2
    L0_3(L1_3, L2_3)
    L0_3 = L33_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L46_2
    L0_3(L1_3, L2_3)
    L0_3 = L33_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L45_2
    L0_3(L1_3, L2_3)
    L0_3 = L33_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L37_2
    L0_3(L1_3, L2_3)
    L0_3 = L33_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L38_2
    L0_3(L1_3, L2_3)
    L0_3 = L33_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L39_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L33_2
    L0_3(L1_3, L2_3)
  end
  
  function L85_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = true
    L31_2 = L0_3
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
    L0_3 = L18_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L18_2
      L0_3(L1_3)
      L0_3 = nil
      L18_2 = L0_3
    end
    L0_3 = transition
    L0_3 = L0_3.cancel
    L1_3 = L34_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L80_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L82_2
    L0_3(L1_3)
    L0_3 = L34_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L34_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "enterFrame"
    L3_3 = L50_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L19_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L19_2
      L0_3(L1_3)
      L0_3 = nil
      L19_2 = L0_3
    end
    L0_3 = L20_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L20_2
      L0_3(L1_3)
      L0_3 = nil
      L20_2 = L0_3
    end
    L0_3 = L29_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L29_2
      L0_3(L1_3)
      L0_3 = nil
      L29_2 = L0_3
    end
  end
  
  L2_1 = L85_2
  L85_2 = L84_2
  L85_2()
  L85_2 = L0_1
  L85_2 = L85_2.commHttps
  L85_2 = L85_2.setCallback
  L86_2 = L77_2
  L85_2(L86_2)
  L85_2 = L0_1
  L85_2 = L85_2.comm
  L85_2 = L85_2.setCallback
  L86_2 = L78_2
  L85_2(L86_2)
  L85_2 = L0_1
  L85_2 = L85_2.bouncer
  L85_2 = L85_2.down
  L86_2 = L33_2
  L85_2(L86_2)
  L34_2.touch = L76_2
  L86_2 = L34_2
  L85_2 = L34_2.addEventListener
  L87_2 = "touch"
  L88_2 = L34_2
  L85_2(L86_2, L87_2, L88_2)
  L85_2 = timer
  L85_2 = L85_2.performWithDelay
  L86_2 = 300
  L87_2 = L83_2
  L88_2 = 1
  L85_2 = L85_2(L86_2, L87_2, L88_2)
  L20_2 = L85_2
  L85_2 = math
  L85_2 = L85_2.random
  L86_2 = 0
  L87_2 = 360
  L85_2 = L85_2(L86_2, L87_2)
  L9_2 = L85_2
  L34_2.rotation = L9_2
  L85_2 = Runtime
  L86_2 = L85_2
  L85_2 = L85_2.addEventListener
  L87_2 = "enterFrame"
  L88_2 = L50_2
  L85_2(L86_2, L87_2, L88_2)
end

L1_1.create = L6_1

function L6_1(A0_2, A1_2)
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

L1_1.show = L6_1

function L6_1(A0_2, A1_2)
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

L1_1.hide = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.view
  L3_2 = L2_1
  L3_2()
end

L1_1.destroy = L6_1
L7_1 = L1_1
L6_1 = L1_1.addEventListener
L8_1 = "create"
L9_1 = L1_1
L6_1(L7_1, L8_1, L9_1)
L7_1 = L1_1
L6_1 = L1_1.addEventListener
L8_1 = "show"
L9_1 = L1_1
L6_1(L7_1, L8_1, L9_1)
L7_1 = L1_1
L6_1 = L1_1.addEventListener
L8_1 = "hide"
L9_1 = L1_1
L6_1(L7_1, L8_1, L9_1)
L7_1 = L1_1
L6_1 = L1_1.addEventListener
L8_1 = "destroy"
L9_1 = L1_1
L6_1(L7_1, L8_1, L9_1)
return L1_1
