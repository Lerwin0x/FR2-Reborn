local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.newScene
L1_1 = L1_1()
L2_1 = nil
L3_1 = nil

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2, L91_2, L92_2, L93_2, L94_2, L95_2, L96_2, L97_2, L98_2, L99_2, L100_2, L101_2, L102_2, L103_2, L104_2, L105_2, L106_2, L107_2, L108_2, L109_2, L110_2, L111_2, L112_2, L113_2, L114_2, L115_2, L116_2, L117_2, L118_2, L119_2, L120_2, L121_2, L122_2, L123_2, L124_2, L125_2, L126_2, L127_2, L128_2, L129_2, L130_2, L131_2, L132_2, L133_2, L134_2, L135_2, L136_2, L137_2, L138_2, L139_2, L140_2, L141_2, L142_2, L143_2, L144_2, L145_2, L146_2, L147_2, L148_2, L149_2, L150_2, L151_2, L152_2, L153_2, L154_2, L155_2, L156_2, L157_2
  L2_2 = A0_2.view
  L3_2 = require
  L4_2 = "lua.modules.tableHelper"
  L3_2 = L3_2(L4_2)
  L4_2 = require
  L5_2 = "lua.modules.trails"
  L4_2 = L4_2(L5_2)
  L5_2 = require
  L6_2 = "lua.network.tcpMessageFormat"
  L5_2 = L5_2(L6_2)
  L6_2 = require
  L7_2 = "lua.network.httpsMessageFormat"
  L6_2 = L6_2(L7_2)
  L7_2 = require
  L8_2 = "spine-corona.monsterLoader"
  L7_2 = L7_2(L8_2)
  L8_2 = require
  L9_2 = "lua.modules.tableViewHorizontal"
  L8_2 = L8_2(L9_2)
  L9_2 = require
  L10_2 = "lua.iap.inAppPurchase"
  L9_2 = L9_2(L10_2)
  L10_2 = require
  L11_2 = "lua.gameLogic.powerUpPreviewer"
  L10_2 = L10_2(L11_2)
  L11_2 = require
  L12_2 = "lua.modules.clans.clanEmblem"
  L11_2 = L11_2(L12_2)
  L12_2 = display
  L12_2 = L12_2.newGroup
  L12_2 = L12_2()
  L13_2 = display
  L13_2 = L13_2.newGroup
  L13_2 = L13_2()
  L13_2.isVisible = false
  L14_2 = nil
  L15_2 = nil
  L16_2 = nil
  L17_2 = 1
  L18_2 = 0
  L19_2 = 0
  L20_2 = nil
  L21_2 = nil
  L22_2 = nil
  L23_2 = {}
  L24_2 = {}
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
  L40_2 = nil
  L41_2 = nil
  L42_2 = nil
  L43_2 = nil
  L44_2 = nil
  L45_2 = nil
  L46_2 = nil
  L47_2 = nil
  L48_2 = L0_1
  L48_2 = L48_2.database
  L48_2 = L48_2.getAvatarData
  L48_2 = L48_2()
  L49_2 = L0_1
  L49_2 = L49_2.tableHelper
  L49_2 = L49_2.deepCopy
  L50_2 = L48_2
  L49_2 = L49_2(L50_2)
  L50_2 = L0_1
  L50_2 = L50_2.tableHelper
  L50_2 = L50_2.deepCopy
  L51_2 = L48_2
  L50_2 = L50_2(L51_2)
  L51_2 = L48_2[6]
  L52_2 = A1_2.params
  if L52_2 then
    L52_2 = A1_2.params
    L52_2 = L52_2.postLobbyTutorial
  end
  
  function L53_2(A0_3)
    local L1_3, L2_3
    if A0_3 == nil then
      L1_3 = nil
      return L1_3
    end
    L1_3 = tonumber
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    A0_3 = L1_3
    if A0_3 < 200 or 5100 < A0_3 and A0_3 < 5200 then
      L1_3 = 1
      return L1_3
    elseif A0_3 < 300 or 5200 < A0_3 and A0_3 < 5300 then
      L1_3 = 2
      return L1_3
    elseif A0_3 < 400 or 5300 < A0_3 and A0_3 < 5400 then
      L1_3 = 3
      return L1_3
    elseif A0_3 < 500 or 5400 < A0_3 and A0_3 < 5500 then
      L1_3 = 4
      return L1_3
    elseif A0_3 < 600 or 5500 < A0_3 and A0_3 < 5600 then
      L1_3 = 5
      return L1_3
    elseif A0_3 < 700 or 5600 < A0_3 and A0_3 < 5700 then
      L1_3 = 6
      return L1_3
    elseif A0_3 < 800 or 5700 < A0_3 and A0_3 < 5800 then
      L1_3 = 7
      return L1_3
    elseif 1200 < A0_3 and A0_3 < 1300 or 1300 < A0_3 and A0_3 < 1400 or 1400 < A0_3 and A0_3 < 1500 or 1500 < A0_3 and A0_3 < 1600 or 1600 < A0_3 and A0_3 < 1700 or 1700 < A0_3 and A0_3 < 1800 or 1800 < A0_3 and A0_3 < 1900 or 1900 < A0_3 and A0_3 < 2000 or 2000 < A0_3 and A0_3 < 2100 then
      L1_3 = 10
      return L1_3
    elseif 2100 < A0_3 and A0_3 < 2200 then
      L1_3 = 11
      return L1_3
    elseif 1000 < A0_3 and A0_3 < 1100 then
      L1_3 = 8
      return L1_3
    end
  end
  
  function L54_2(A0_3)
    local L1_3
    L1_3 = A0_3
    if A0_3 == 11 then
      L1_3 = 8
    end
    return L1_3
  end
  
  L55_2 = nil
  L56_2 = false
  L57_2 = L0_1
  L57_2 = L57_2.database
  L57_2 = L57_2.getMoney
  L57_2 = L57_2()
  L58_2 = L0_1
  L58_2 = L58_2.database
  L58_2 = L58_2.getGem
  L58_2 = L58_2()
  L59_2 = L0_1
  L59_2 = L59_2.database
  L59_2 = L59_2.getItems
  L59_2 = L59_2()
  L60_2 = L0_1
  L60_2 = L60_2.database
  L60_2 = L60_2.getPowerupSkin
  L60_2 = L60_2()
  L61_2 = 1
  L62_2 = false
  L63_2 = L0_1
  L63_2 = L63_2.storeConfig
  L63_2 = L63_2.isThisAPowerupSet
  L64_2 = L60_2
  L63_2 = L63_2(L64_2)
  L64_2 = nil
  L65_2 = L0_1
  L65_2 = L65_2.backgrounds
  L65_2 = L65_2.getDefaultBlurredBackground
  L65_2 = L65_2()
  L66_2 = L65_2.y
  L66_2 = L66_2 - 50
  L65_2.y = L66_2
  L66_2 = L65_2.x
  L65_2.x = L66_2
  L66_2 = require
  L67_2 = "lua.modules.bundleInfoDropdown"
  L66_2 = L66_2(L67_2)
  L66_2 = L66_2.new
  L66_2 = L66_2()
  L67_2 = nil
  L68_2 = nil
  L69_2 = nil
  L70_2 = nil
  L71_2 = 1
  L72_2 = {}
  L73_2 = "filterToggle"
  L74_2 = "filterShop"
  L75_2 = "filterOwned"
  L72_2[1] = L73_2
  L72_2[2] = L74_2
  L72_2[3] = L75_2
  L73_2 = {}
  L74_2 = 0
  L75_2 = 0
  L76_2 = 0
  L73_2[1] = L74_2
  L73_2[2] = L75_2
  L73_2[3] = L76_2
  L74_2 = display
  L74_2 = L74_2.newImageRect
  L75_2 = "images/gui/market/check.png"
  L76_2 = 22
  L77_2 = 20
  L74_2 = L74_2(L75_2, L76_2, L77_2)
  L74_2.anchorX = 0
  L74_2.anchorY = 0
  L74_2.x = 176
  L74_2.y = 280
  L74_2.isVisible = false
  L75_2 = display
  L75_2 = L75_2.newImageRect
  L76_2 = "images/gui/market/bg.png"
  L77_2 = 480
  L78_2 = 320
  L75_2 = L75_2(L76_2, L77_2, L78_2)
  L75_2.anchorX = 0
  L75_2.anchorY = 0
  L75_2.x = 0
  L75_2.y = 0
  L76_2 = display
  L76_2 = L76_2.newImageRect
  L77_2 = "images/gui/market/midTable.png"
  L78_2 = 408
  L79_2 = 66
  L76_2 = L76_2(L77_2, L78_2, L79_2)
  L76_2.anchorX = 0
  L76_2.anchorY = 0
  L76_2.x = 72
  L77_2 = L75_2.height
  L77_2 = L77_2 * 0.7
  L76_2.y = L77_2
  L77_2 = display
  L77_2 = L77_2.newImageRect
  L78_2 = "images/gui/market/currentCoins.png"
  L79_2 = 70
  L80_2 = 81
  L77_2 = L77_2(L78_2, L79_2, L80_2)
  L77_2.anchorX = 0
  L77_2.anchorY = 0
  L77_2.x = 400
  L77_2.y = 0
  L78_2 = display
  L78_2 = L78_2.newImageRect
  L79_2 = "images/gui/market/roof.png"
  L80_2 = 480
  L81_2 = 30
  L78_2 = L78_2(L79_2, L80_2, L81_2)
  L78_2.anchorX = 0
  L78_2.anchorY = 0
  L78_2.x = 0
  L78_2.y = 0
  L79_2 = display
  L79_2 = L79_2.newImageRect
  L80_2 = "images/gui/market/categoryCover.png"
  L81_2 = 114
  L82_2 = 72
  L79_2 = L79_2(L80_2, L81_2, L82_2)
  L79_2.anchorX = 0
  L79_2.anchorY = 1
  L79_2.x = 0
  L79_2.y = 320
  L80_2 = display
  L80_2 = L80_2.newImageRect
  L81_2 = "images/gui/customplay/info_bubble.png"
  L82_2 = 228
  L83_2 = 53
  L80_2 = L80_2(L81_2, L82_2, L83_2)
  L80_2.anchorY = 0.5
  L80_2.anchorX = 0.5
  L80_2.yScale = -1
  L80_2.x = 0
  L80_2.y = 0
  L13_2.x = 160
  L13_2.y = 240
  L81_2 = display
  L81_2 = L81_2.newImageRect
  L82_2 = "images/gui/market/masterWindow.png"
  L83_2 = 100
  L84_2 = 32
  L81_2 = L81_2(L82_2, L83_2, L84_2)
  L42_2 = L81_2
  L42_2.x = 280
  L42_2.y = 306
  L82_2 = L2_2
  L81_2 = L2_2.insert
  L83_2 = L42_2
  L81_2(L82_2, L83_2)
  L81_2 = L0_1
  L81_2 = L81_2.newText
  L82_2 = {}
  L82_2.string = "Click to showcase this powerup on your profile"
  L82_2.size = 13
  L83_2 = L80_2.x
  L82_2.x = L83_2
  L83_2 = L80_2.y
  L83_2 = L83_2 - 5
  L82_2.y = L83_2
  L82_2.ax = 0.5
  L82_2.align = "center"
  L83_2 = {}
  L84_2 = 0
  L85_2 = 0
  L86_2 = 0
  L87_2 = 0.5
  L83_2[1] = L84_2
  L83_2[2] = L85_2
  L83_2[3] = L86_2
  L83_2[4] = L87_2
  L82_2.color = L83_2
  L82_2.width = 200
  L81_2 = L81_2(L82_2)
  L82_2 = display
  L82_2 = L82_2.newImageRect
  L83_2 = "images/gui/market/categoryPanel.png"
  L84_2 = 76
  L85_2 = 261
  L82_2 = L82_2(L83_2, L84_2, L85_2)
  L82_2.anchorX = 0
  L82_2.anchorY = 0
  L82_2.x = 0
  L82_2.y = 0
  L84_2 = L12_2
  L83_2 = L12_2.insert
  L85_2 = L82_2
  L83_2(L84_2, L85_2)
  L83_2 = display
  L83_2 = L83_2.newImageRect
  L84_2 = "images/gui/market/filterPlank.png"
  L85_2 = 11
  L86_2 = 58
  L83_2 = L83_2(L84_2, L85_2, L86_2)
  L83_2.anchorY = 1
  L84_2 = display
  L84_2 = L84_2.contentWidth
  L84_2 = L84_2 - 20
  L83_2.x = L84_2
  L84_2 = L76_2.y
  L84_2 = L84_2 + 1
  L83_2.y = L84_2
  L17_2 = 1
  L84_2 = display
  L84_2 = L84_2.newImageRect
  L85_2 = "images/gui/market/selectedGlow.png"
  L86_2 = 178
  L87_2 = 113
  L84_2 = L84_2(L85_2, L86_2, L87_2)
  L84_2.x = 280
  L84_2.y = 210
  L84_2.alpha = 0.7
  
  function L85_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3.m
    L2_3 = L5_2
    L2_3 = L2_3.purchaseItem
    L2_3 = L2_3()
    if L1_3 ~= L2_3 then
      L1_3 = A0_3.m
      L2_3 = L6_2
      L2_3 = L2_3.buyCrystalIOS
      L2_3 = L2_3()
      if L1_3 ~= L2_3 then
        L1_3 = A0_3.m
        L2_3 = L6_2
        L2_3 = L2_3.buyCrystalGoogle
        L2_3 = L2_3()
        if L1_3 ~= L2_3 then
          L1_3 = A0_3.m
          L2_3 = L6_2
          L2_3 = L2_3.buyCrystalAmazon
          L2_3 = L2_3()
          if L1_3 ~= L2_3 then
            goto lbl_56
          end
        end
      end
    end
    L1_3 = L0_1
    L1_3 = L1_3.database
    L1_3 = L1_3.getItems
    L1_3 = L1_3()
    L59_2 = L1_3
    L1_3 = L18_2
    if L1_3 == 8 then
      L1_3 = L24_2
      L2_3 = L17_2
      L1_3 = L1_3[L2_3]
      if L1_3 then
        L2_3 = L1_3.bundle
        if L2_3 then
          L2_3 = L1_3.bundleBought
          if L2_3 then
            L2_3 = L66_2
            if L2_3 then
              L2_3 = L66_2
              L2_3 = L2_3.createBundleInfo
              L3_3 = L1_3
              L4_3 = nil
              L2_3(L3_3, L4_3)
            end
          end
        end
      end
    end
    L1_3 = L33_2
    L1_3()
    L1_3 = L26_2
    L1_3()
    ::lbl_56::
  end
  
  function L86_2(A0_3)
    local L1_3
    L1_3 = A0_3.clanReward
    if L1_3 then
      L1_3 = A0_3.bought
      L1_3 = A0_3.unlockedClanReward
      L1_3 = not L1_3 and L1_3
    end
    return L1_3
  end
  
  function L87_2(A0_3)
    local L1_3
    L1_3 = A0_3.clanReward
    if L1_3 then
      L1_3 = A0_3.bought
      L1_3 = not L1_3 and L1_3
    end
    return L1_3
  end
  
  function L88_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L31_2
    if L0_3 then
      L0_3 = L4_2
      L0_3 = L0_3.createTrail
      L1_3 = L51_2
      L2_3 = L31_2
      L2_3 = L2_3.getGroup
      L2_3 = L2_3()
      L2_3 = L2_3.x
      L2_3 = L2_3 - 5
      L3_3 = L31_2
      L3_3 = L3_3.getGroup
      L3_3 = L3_3()
      L3_3 = L3_3.y
      L3_3 = L3_3 - 50
      L4_3 = L2_2
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
  end
  
  function L89_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L31_2
    if L0_3 then
      L0_3 = L4_2
      L0_3 = L0_3.createSparkeEffect
      L1_3 = L2_2
      L2_3 = L31_2
      L2_3 = L2_3.getGroup
      L2_3 = L2_3()
      L2_3 = L2_3.x
      L2_3 = L2_3 - 5
      L3_3 = L31_2
      L3_3 = L3_3.getGroup
      L3_3 = L3_3()
      L3_3 = L3_3.y
      L3_3 = L3_3 - 50
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  
  function L90_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L19_2
    L1_3 = L51_2
    if L0_3 ~= L1_3 then
      L0_3 = L51_2
      L19_2 = L0_3
      L0_3 = L20_2
      if L0_3 then
        L0_3 = timer
        L0_3 = L0_3.cancel
        L1_3 = L20_2
        L0_3(L1_3)
        L0_3 = nil
        L20_2 = L0_3
      end
      L0_3 = L51_2
      if 1 < L0_3 then
        L0_3 = L88_2
        L0_3()
        L0_3 = timer
        L0_3 = L0_3.performWithDelay
        L1_3 = 200
        L2_3 = L88_2
        L3_3 = 0
        L0_3 = L0_3(L1_3, L2_3, L3_3)
        L20_2 = L0_3
      end
    end
  end
  
  function L91_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L21_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L21_2
      L0_3(L1_3)
      L0_3 = nil
      L21_2 = L0_3
    end
    L0_3 = L31_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.performWithDelay
      L1_3 = 400
      L2_3 = L89_2
      L3_3 = 0
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      L21_2 = L0_3
    end
  end
  
  function L92_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L66_2
    L1_3 = L1_3.cancelTransitions
    L1_3()
    
    function L1_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L24_2
      L1_4 = A0_3
      L0_4 = L0_4[L1_4]
      if L0_4 then
        L0_4 = L24_2
        L1_4 = A0_3
        L0_4 = L0_4[L1_4]
        L0_4 = L0_4.bundle
        if L0_4 then
          L0_4 = L24_2
          L1_4 = A0_3
          L0_4 = L0_4[L1_4]
          L1_4 = L66_2
          L1_4 = L1_4.createBundleInfo
          L2_4 = L0_4
          L3_4 = L40_2
          L1_4(L2_4, L3_4)
          L1_4 = L66_2
          L1_4.anchorX = 0
          L1_4 = L66_2
          L1_4.anchorY = 0
          L1_4 = L66_2
          L1_4.x = 150
          L1_4 = L66_2
          L1_4.y = 20
        end
      end
    end
    
    L2_3 = L66_2
    if L2_3 then
      L2_3 = L66_2
      L2_3 = L2_3.pullUp
      L3_3 = L1_3
      L2_3(L3_3)
    else
      L2_3 = L1_3
      L2_3()
    end
  end
  
  function L93_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L31_2
    if L0_3 then
      L0_3 = L31_2
      L0_3 = L0_3.clean
      L0_3()
      L0_3 = nil
      L31_2 = L0_3
    end
    L0_3 = L32_2
    if L0_3 then
      L0_3 = L32_2
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      L32_2 = L0_3
    end
    L0_3 = L67_2
    if L0_3 then
      L0_3 = 1
      L1_3 = L67_2
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L67_2
        L4_3 = L4_3[L3_3]
        L4_3 = L4_3.clean
        L4_3()
        L4_3 = L67_2
        L4_3[L3_3] = nil
      end
      L0_3 = nil
      L67_2 = L0_3
    end
    L0_3 = L28_2
    L0_3.isVisible = false
    L0_3 = L74_2
    L0_3.isVisible = false
    L0_3 = L13_2
    L0_3.isVisible = false
    L0_3 = L29_2
    if L0_3 then
      L0_3 = L29_2
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      L29_2 = L0_3
    end
  end
  
  function L94_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3[6]
    if L1_3 then
      L1_3 = tonumber
      L2_3 = A0_3[6]
      L1_3 = L1_3(L2_3)
      L51_2 = L1_3
      L1_3 = L90_2
      L1_3()
    end
    L1_3 = L63_2
    if L1_3 then
      L1_3 = L91_2
      L1_3()
    else
      L1_3 = L21_2
      if L1_3 then
        L1_3 = timer
        L1_3 = L1_3.cancel
        L2_3 = L21_2
        L1_3(L2_3)
        L1_3 = nil
        L21_2 = L1_3
      end
    end
  end
  
  function L95_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L2_3 = L24_2
    L2_3 = L2_3[A1_3]
    if L2_3 == nil then
      return
    end
    L2_3 = L93_2
    L2_3()
    L2_3 = L0_1
    L2_3 = L2_3.tableUtils
    L2_3 = L2_3.deepCopy
    L3_3 = L48_2
    L2_3 = L2_3(L3_3)
    if A0_3 == 1 then
      L3_3 = L59_2
      L4_3 = tostring
      L5_3 = L24_2
      L5_3 = L5_3[A1_3]
      L5_3 = L5_3.key
      L4_3 = L4_3(L5_3)
      L3_3 = L3_3[L4_3]
      if L3_3 then
        L4_3 = L3_3.s
        if L4_3 and L4_3 ~= 0 then
          L5_3 = L0_1
          L5_3 = L5_3.storeConfig
          L5_3 = L5_3.getItem
          L6_3 = tonumber
          L7_3 = L4_3
          L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L6_3(L7_3)
          L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
          L6_3 = L5_3.skinId
          L2_3[2] = L6_3
        else
          L2_3[2] = 0
        end
      else
        L2_3[2] = 0
      end
    end
    if A0_3 == 2 then
      L3_3 = L24_2
      L3_3 = L3_3[A1_3]
      L3_3 = L3_3.characterId
      if not L3_3 then
        L3_3 = L24_2
        L3_3 = L3_3[A1_3]
        L3_3 = L3_3.key
      end
      L2_3[1] = L3_3
    end
    L3_3 = L18_2
    if L3_3 == 8 and A1_3 == 1 then
      L3_3 = L2_3[1]
      L2_3[1] = L3_3
      L3_3 = L48_2
      L3_3 = L3_3[2]
      L2_3[2] = L3_3
    else
      L3_3 = L18_2
      if L3_3 == 8 then
        L3_3 = L24_2
        L3_3 = L3_3[A1_3]
        L3_3 = L3_3.bundle
        if L3_3 then
          L3_3 = 3
          L4_3 = 8
          L5_3 = 1
          for L6_3 = L3_3, L4_3, L5_3 do
            L2_3[L6_3] = 0
          end
          L3_3 = pairs
          L4_3 = L24_2
          L4_3 = L4_3[A1_3]
          L4_3 = L4_3.items
          L3_3, L4_3, L5_3 = L3_3(L4_3)
          for L6_3, L7_3 in L3_3, L4_3, L5_3 do
            L8_3 = L7_3.itemType
            if L8_3 == 1 then
              L8_3 = L7_3.itemType
              L9_3 = L7_3.key
              L2_3[L8_3] = L9_3
              L2_3[2] = 0
            else
              L8_3 = L7_3.itemType
              if L8_3 ~= 2 then
                L8_3 = L7_3.itemType
                L9_3 = L7_3.key
                L2_3[L8_3] = L9_3
              end
            end
          end
          L3_3 = pairs
          L4_3 = L24_2
          L4_3 = L4_3[A1_3]
          L4_3 = L4_3.items
          L3_3, L4_3, L5_3 = L3_3(L4_3)
          for L6_3, L7_3 in L3_3, L4_3, L5_3 do
            L8_3 = L7_3.itemType
            if L8_3 == 2 then
              L8_3 = L67_2
              if not L8_3 then
                L8_3 = {}
                L67_2 = L8_3
              end
              L8_3 = L0_1
              L8_3 = L8_3.tableHelper
              L8_3 = L8_3.deepCopy
              L9_3 = L2_3
              L8_3 = L8_3(L9_3)
              L9_3 = L7_3.key
              L8_3[2] = L9_3
              L9_3 = L67_2
              L10_3 = L67_2
              L10_3 = #L10_3
              L10_3 = L10_3 + 1
              L11_3 = L7_2
              L11_3 = L11_3.new
              L12_3 = L8_3
              L13_3 = nil
              L14_3 = nil
              L15_3 = L0_1
              L15_3 = L15_3.data
              L15_3 = L15_3.clans
              L15_3 = L15_3.emblem
              L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3)
              L9_3[L10_3] = L11_3
            end
          end
      end
      else
        L3_3 = L18_2
        if L3_3 == 10 then
        elseif A0_3 == nil then
        else
          L3_3 = L24_2
          L4_3 = L17_2
          L3_3 = L3_3[L4_3]
          L3_3 = L3_3.key
          L2_3[A0_3] = L3_3
        end
      end
    end
    L3_3 = L67_2
    if L3_3 then
      L3_3 = L67_2
      L3_3 = #L3_3
      L4_3 = 1
      L5_3 = -1
      for L6_3 = L3_3, L4_3, L5_3 do
        L7_3 = L67_2
        L7_3 = L7_3[L6_3]
        L7_3 = L7_3.getGroup
        L7_3 = L7_3()
        L8_3 = L67_2
        L8_3 = L8_3[L6_3]
        L8_3 = L8_3.showDropShadow
        L9_3 = true
        L8_3(L9_3)
        L7_3.xScale = 0.5
        L7_3.yScale = 0.5
        L8_3 = 50 * L6_3
        L9_3 = L67_2
        L9_3 = #L9_3
        L8_3 = L8_3 - L9_3
        L8_3 = 250 + L8_3
        L7_3.x = L8_3
        L7_3.y = 164
        L8_3 = L2_2
        L9_3 = L8_3
        L8_3 = L8_3.insert
        L10_3 = L7_3
        L8_3(L9_3, L10_3)
      end
    end
    if A0_3 == 4 then
      L3_3 = L2_3[A0_3]
      if L3_3 == "430" then
        L3_3 = L0_1
        L3_3.dealwithit = true
    end
    else
      L3_3 = L0_1
      L3_3.dealwithit = false
    end
    L3_3 = L31_2
    if L3_3 then
      L3_3 = L31_2
      L3_3 = L3_3.clean
      L3_3()
      L3_3 = nil
      L31_2 = L3_3
    end
    L3_3 = L7_2
    L3_3 = L3_3.new
    L4_3 = L2_3
    L5_3 = nil
    L6_3 = nil
    L7_3 = L0_1
    L7_3 = L7_3.data
    L7_3 = L7_3.clans
    L7_3 = L7_3.emblem
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
    L31_2 = L3_3
    L3_3 = L31_2
    L3_3 = L3_3.showDropShadow
    L4_3 = true
    L3_3(L4_3)
    L3_3 = L31_2
    L3_3 = L3_3.getGroup
    L3_3 = L3_3()
    L3_3.xScale = 0.5
    L3_3.yScale = 0.5
    L3_3.x = 290
    L3_3.y = 162
    L4_3 = L2_2
    L5_3 = L4_3
    L4_3 = L4_3.insert
    L6_3 = L3_3
    L4_3(L5_3, L6_3)
    L4_3 = L67_2
    if L4_3 then
      L4_3 = L3_3.x
      L4_3 = L4_3 - 40
      L3_3.x = L4_3
    end
    L4_3 = L94_2
    L5_3 = L2_3
    L4_3(L5_3)
  end
  
  function L96_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = L0_1
    L1_3 = L1_3.tableHelper
    L1_3 = L1_3.deepCopy
    L2_3 = L48_2
    L1_3 = L1_3(L2_3)
    L2_3 = L31_2
    if L2_3 then
      L2_3 = L31_2
      L2_3 = L2_3.clean
      L2_3()
      L2_3 = nil
      L31_2 = L2_3
    end
    L2_3 = L7_2
    L2_3 = L2_3.new
    L3_3 = L1_3
    L4_3 = nil
    L5_3 = {}
    L6_3 = A0_3
    L5_3[1] = L6_3
    L6_3 = L0_1
    L6_3 = L6_3.data
    L6_3 = L6_3.clans
    L6_3 = L6_3.emblem
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    L31_2 = L2_3
    L2_3 = L31_2
    L2_3.isVisible = false
    L2_3 = L31_2
    L2_3 = L2_3.getGroup
    L2_3 = L2_3()
    L2_3.xScale = 0.5
    L2_3.yScale = 0.5
    L2_3.x = 290
    L2_3.y = 162
    L3_3 = L2_2
    L4_3 = L3_3
    L3_3 = L3_3.insert
    L5_3 = L2_3
    L3_3(L4_3, L5_3)
    L3_3 = L94_2
    L4_3 = L1_3
    L3_3(L4_3)
  end
  
  function L97_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L13_2
    L0_3 = L0_3.isVisible
    L1_3 = L10_2
    L1_3 = L1_3.softClean
    L1_3()
    L1_3 = L93_2
    L1_3()
    L1_3 = L17_2
    L2_3 = tonumber
    L3_3 = L24_2
    L3_3 = L3_3[L1_3]
    L3_3 = L3_3.key
    L2_3 = L2_3(L3_3)
    L3_3 = L0_1
    L3_3 = L3_3.storeConfig
    L3_3 = L3_3.getItemCategory
    L4_3 = L2_3
    L3_3 = L3_3(L4_3)
    if L3_3 == "sawblade" then
      L4_3 = L10_2
      L4_3 = L4_3.showSawblade
      L5_3 = L2_3
      L4_3 = L4_3(L5_3)
      L32_2 = L4_3
      L4_3 = L2_2
      L5_3 = L4_3
      L4_3 = L4_3.insert
      L6_3 = L32_2
      L4_3(L5_3, L6_3)
    elseif L3_3 == "beartrap" then
      L4_3 = L10_2
      L4_3 = L4_3.showBearTrap
      L5_3 = L2_3
      L4_3 = L4_3(L5_3)
      L32_2 = L4_3
      L4_3 = L2_2
      L5_3 = L4_3
      L4_3 = L4_3.insert
      L6_3 = L32_2
      L4_3(L5_3, L6_3)
    elseif L3_3 == "balloon" then
      L4_3 = L96_2
      L5_3 = L2_3
      L4_3(L5_3)
      L4_3 = L31_2
      L4_3 = L4_3.playBuffAnimation
      L5_3 = "sacrifice_active"
      L6_3 = true
      L4_3(L5_3, L6_3)
      L4_3 = L31_2
      L4_3.isVisible = true
      L4_3 = L28_2
      L4_3.isVisible = true
    elseif L3_3 == "magnet" then
      L4_3 = L96_2
      L5_3 = L2_3
      L4_3(L5_3)
      L4_3 = L31_2
      L4_3 = L4_3.playUseAnimation
      L5_3 = "magnet_start"
      L6_3 = 2000
      L4_3(L5_3, L6_3)
      L4_3 = L31_2
      L4_3.isVisible = true
      L4_3 = L28_2
      L4_3.isVisible = true
    elseif L3_3 == "speed" then
      L4_3 = L96_2
      L5_3 = L2_3
      L4_3(L5_3)
      L4_3 = L31_2
      L4_3 = L4_3.setAnimation
      L5_3 = "run"
      L6_3 = true
      L7_3 = false
      L4_3(L5_3, L6_3, L7_3)
      L4_3 = L31_2
      L4_3 = L4_3.playBuffAnimation
      L5_3 = "speed_start"
      L6_3 = false
      L4_3(L5_3, L6_3)
      L4_3 = L31_2
      L4_3.isVisible = true
      L4_3 = L28_2
      L4_3.isVisible = true
    elseif L3_3 == "gun" then
      L4_3 = L96_2
      L5_3 = L2_3
      L4_3(L5_3)
      L4_3 = L31_2
      L4_3 = L4_3.playUseAnimation
      L5_3 = "mark_active"
      L6_3 = 2000
      L4_3(L5_3, L6_3)
      L4_3 = L31_2
      L4_3.isVisible = true
      L4_3 = L28_2
      L4_3.isVisible = true
    elseif L3_3 == "rocket" then
      L4_3 = L96_2
      L5_3 = L2_3
      L4_3(L5_3)
      L4_3 = L31_2
      L4_3 = L4_3.setAnimation
      L5_3 = "rocket_active"
      L6_3 = true
      L7_3 = true
      L4_3(L5_3, L6_3, L7_3)
      L4_3 = L31_2
      L4_3.isVisible = true
      L4_3 = L28_2
      L4_3.isVisible = true
    elseif L3_3 == "punchbox" then
      L4_3 = L10_2
      L4_3 = L4_3.showPunchbox
      L5_3 = L2_3
      L4_3 = L4_3(L5_3)
      L32_2 = L4_3
      L4_3 = L2_2
      L5_3 = L4_3
      L4_3 = L4_3.insert
      L6_3 = L32_2
      L4_3(L5_3, L6_3)
    elseif L3_3 == "shield" then
      L4_3 = L96_2
      L5_3 = L2_3
      L4_3(L5_3)
      L4_3 = L10_2
      L4_3 = L4_3.showShield
      L5_3 = L2_3
      L4_3 = L4_3(L5_3)
      L32_2 = L4_3
      L4_3 = L2_2
      L5_3 = L4_3
      L4_3 = L4_3.insert
      L6_3 = L32_2
      L4_3(L5_3, L6_3)
      L4_3 = L31_2
      L4_3.isVisible = true
    end
    L4_3 = L29_2
    if L4_3 then
      L4_3 = L29_2
      L5_3 = L28_2
      L5_3 = L5_3.isVisible
      L4_3.isVisible = L5_3
    end
    L4_3 = L0_1
    L4_3 = L4_3.database
    L4_3 = L4_3.shouldUseMarketHelp
    L4_3 = L4_3()
    if L4_3 == 1 then
      if not L0_3 then
        L4_3 = L13_2
        L4_3.xScale = 0.1
        L4_3 = L13_2
        L4_3.yScale = 0.1
        L4_3 = transition
        L4_3 = L4_3.to
        L5_3 = L13_2
        L6_3 = {}
        L6_3.time = 1000
        L6_3.xScale = 1
        L6_3.yScale = 1
        L7_3 = easing
        L7_3 = L7_3.outElastic
        L6_3.transition = L7_3
        L4_3 = L4_3(L5_3, L6_3)
        L64_2 = L4_3
      end
      L4_3 = L13_2
      L5_3 = L28_2
      L5_3 = L5_3.isVisible
      L4_3.isVisible = L5_3
    end
  end
  
  function L98_2(A0_3)
    local L1_3, L2_3
    L1_3 = tonumber
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if 1200 < L1_3 then
      L1_3 = tonumber
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      if L1_3 < 2100 then
        L1_3 = true
        return L1_3
      end
    end
    L1_3 = false
    return L1_3
  end
  
  function L99_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = 0
    L2_3 = tonumber
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    while 1200 < L2_3 do
      L2_3 = L2_3 - 100
      L1_3 = L1_3 + 1
    end
    L3_3 = L1_3 - 1
    L3_3 = 100 * L3_3
    L3_3 = 1201 + L3_3
    return L3_3
  end
  
  function L100_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = 1
    L2_3 = L24_2
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = tonumber
      L6_3 = L24_2
      L6_3 = L6_3[L4_3]
      L6_3 = L6_3.key
      L5_3 = L5_3(L6_3)
      L6_3 = tonumber
      L7_3 = A0_3
      L6_3 = L6_3(L7_3)
      if L5_3 == L6_3 then
        return L4_3
      end
    end
  end
  
  function L101_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = L59_2
      L2_3 = tostring
      L3_3 = A0_3.key
      L2_3 = L2_3(L3_3)
      L1_3 = L1_3[L2_3]
      if L1_3 then
        L1_3 = true
        return L1_3
    end
    else
      if A0_3 then
        L1_3 = A0_3.preOwned
        if L1_3 then
          L1_3 = true
          return L1_3
      end
      elseif A0_3 then
        L1_3 = A0_3.bundle
        if L1_3 then
          L1_3 = A0_3.bundleBought
          if L1_3 then
            L1_3 = true
            return L1_3
          end
        end
      end
    end
    L1_3 = false
    return L1_3
  end
  
  function L102_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = L0_1
    L2_3 = L2_3.storeConfig
    L2_3 = L2_3.getAllSaleItemSortedOnPrice
    L2_3 = L2_3()
    L3_3 = pairs
    L4_3 = L2_3
    L3_3, L4_3, L5_3 = L3_3(L4_3)
    for L6_3, L7_3 in L3_3, L4_3, L5_3 do
      L8_3 = L0_1
      L8_3 = L8_3.storeConfig
      L8_3 = L8_3.getItemCategory
      L9_3 = tonumber
      L10_3 = L7_3.key
      L9_3, L10_3, L11_3 = L9_3(L10_3)
      L8_3 = L8_3(L9_3, L10_3, L11_3)
      if L8_3 and L8_3 == "skins" then
        L9_3 = L101_2
        L10_3 = L7_3
        L9_3 = L9_3(L10_3)
        if not L9_3 then
          L9_3 = tonumber
          L10_3 = L7_3.characterId
          L9_3 = L9_3(L10_3)
          L10_3 = tonumber
          L11_3 = A0_3
          L10_3 = L10_3(L11_3)
          if L9_3 == L10_3 then
            if not L1_3 then
              L9_3 = {}
              L1_3 = L9_3
            end
            L9_3 = #L1_3
            L9_3 = L9_3 + 1
            L1_3[L9_3] = L7_3
          end
        end
      end
    end
    return L1_3
  end
  
  function L103_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = ""
    L2_3 = L24_2
    L2_3 = L2_3[A0_3]
    if L2_3 then
      L2_3 = L24_2
      L2_3 = L2_3[A0_3]
      L1_3 = L2_3.title
      L2_3 = L24_2
      L2_3 = L2_3[A0_3]
      L2_3 = L2_3.skinTitle
      if L2_3 then
        L2_3 = L24_2
        L2_3 = L2_3[A0_3]
        L1_3 = L2_3.skinTitle
      end
    end
    L2_3 = L14_2
    if L2_3 then
      L2_3 = L14_2
      L3_3 = L2_3
      L2_3 = L2_3.removeSelf
      L2_3(L3_3)
      L2_3 = nil
      L14_2 = L2_3
    end
    L2_3 = L0_1
    L2_3 = L2_3.newText
    L3_3 = {}
    L3_3.string = L1_3
    L3_3.size = 14
    L3_3.x = 280
    L3_3.y = 278
    L4_3 = {}
    L5_3 = 1
    L6_3 = 1
    L7_3 = 1
    L4_3[1] = L5_3
    L4_3[2] = L6_3
    L4_3[3] = L7_3
    L3_3.color = L4_3
    L2_3 = L2_3(L3_3)
    L14_2 = L2_3
    L2_3 = L2_2
    L3_3 = L2_3
    L2_3 = L2_3.insert
    L4_3 = L14_2
    L2_3(L3_3, L4_3)
  end
  
  function L104_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = L42_2
    if L1_3 then
      L1_3 = L42_2
      L1_3.isVisible = false
    end
    L1_3 = L43_2
    if L1_3 then
      L1_3 = L43_2
      L2_3 = L1_3
      L1_3 = L1_3.removeSelf
      L1_3(L2_3)
      L1_3 = nil
      L43_2 = L1_3
    end
    L1_3 = L47_2
    if L1_3 then
      L1_3 = L47_2
      L2_3 = L1_3
      L1_3 = L1_3.removeSelf
      L1_3(L2_3)
      L1_3 = nil
      L47_2 = L1_3
    end
    L1_3 = L44_2
    if L1_3 then
      L1_3 = L44_2
      L2_3 = L1_3
      L1_3 = L1_3.removeSelf
      L1_3(L2_3)
      L1_3 = nil
      L44_2 = L1_3
    end
    L1_3 = L45_2
    if L1_3 then
      L1_3 = transition
      L1_3 = L1_3.cancel
      L2_3 = L45_2
      L1_3(L2_3)
      L1_3 = L45_2
      L2_3 = L1_3
      L1_3 = L1_3.removeSelf
      L1_3(L2_3)
      L1_3 = nil
      L45_2 = L1_3
    end
    L1_3 = L18_2
    if L1_3 ~= 9 then
      L1_3 = L18_2
      if L1_3 ~= 10 then
        goto lbl_50
      end
    end
    A0_3 = L17_2
    goto lbl_68
    ::lbl_50::
    L1_3 = L101_2
    L2_3 = L24_2
    L2_3 = L2_3[A0_3]
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = L24_2
      L1_3 = L1_3[A0_3]
      L1_3 = L1_3.clanReward
      if not L1_3 then
        L1_3 = L24_2
        L1_3 = L1_3[A0_3]
        L1_3 = L1_3.key
        L1_3 = not L1_3
        if L1_3 == "554" then
          return
        end
      end
    end
    ::lbl_68::
    L1_3 = L24_2
    L1_3 = L1_3[A0_3]
    if L1_3 == nil then
      return
    end
    
    function L1_3()
      local L0_4, L1_4
      L0_4 = L42_2
      L0_4.isVisible = true
    end
    
    L2_3 = L24_2
    L2_3 = L2_3[A0_3]
    L2_3 = L2_3.master
    if L2_3 then
      L2_3 = L0_1
      L2_3 = L2_3.database
      L2_3 = L2_3.getWinsForAvatar
      L3_3 = L24_2
      L3_3 = L3_3[A0_3]
      L3_3 = L3_3.characterId
      L2_3 = L2_3(L3_3)
      L3_3 = L24_2
      L3_3 = L3_3[A0_3]
      L3_3 = L3_3.winsReq
      L4_3 = L1_3
      L4_3()
      if L2_3 < L3_3 then
        L4_3 = L0_1
        L4_3 = L4_3.newText
        L5_3 = {}
        L6_3 = L0_1
        L6_3 = L6_3.localized
        L6_3 = L6_3.get
        L7_3 = "WinsUnlock"
        L6_3 = L6_3(L7_3)
        L5_3.string = L6_3
        L5_3.size = 14
        L5_3.x = 280
        L5_3.y = 310
        L6_3 = {}
        L7_3 = 1
        L8_3 = 1
        L9_3 = 1
        L6_3[1] = L7_3
        L6_3[2] = L8_3
        L6_3[3] = L9_3
        L5_3.color = L6_3
        L4_3 = L4_3(L5_3)
        L43_2 = L4_3
        L4_3 = L2_3
        L5_3 = "/"
        L6_3 = L3_3
        L4_3 = L4_3 .. L5_3 .. L6_3
        L5_3 = L0_1
        L5_3 = L5_3.newText
        L6_3 = {}
        L6_3.string = L4_3
        L6_3.size = 14
        L6_3.x = 280
        L6_3.y = 298
        L7_3 = {}
        L8_3 = 1
        L9_3 = 1
        L10_3 = 1
        L7_3[1] = L8_3
        L7_3[2] = L9_3
        L7_3[3] = L10_3
        L6_3.color = L7_3
        L5_3 = L5_3(L6_3)
        L44_2 = L5_3
        L5_3 = L2_2
        L6_3 = L5_3
        L5_3 = L5_3.insert
        L7_3 = L43_2
        L5_3(L6_3, L7_3)
        L5_3 = L2_2
        L6_3 = L5_3
        L5_3 = L5_3.insert
        L7_3 = L44_2
        L5_3(L6_3, L7_3)
      else
        L4_3 = L0_1
        L4_3 = L4_3.newText
        L5_3 = {}
        L6_3 = L0_1
        L6_3 = L6_3.localized
        L6_3 = L6_3.get
        L7_3 = "Unlocked"
        L6_3 = L6_3(L7_3)
        L5_3.string = L6_3
        L5_3.size = 14
        L5_3.x = 280
        L5_3.y = 304
        L6_3 = {}
        L7_3 = 1
        L8_3 = 1
        L9_3 = 1
        L6_3[1] = L7_3
        L6_3[2] = L8_3
        L6_3[3] = L9_3
        L5_3.color = L6_3
        L4_3 = L4_3(L5_3)
        L43_2 = L4_3
        L4_3 = L2_2
        L5_3 = L4_3
        L4_3 = L4_3.insert
        L6_3 = L43_2
        L4_3(L5_3, L6_3)
      end
    else
      L2_3 = L24_2
      L2_3 = L2_3[A0_3]
      L2_3 = L2_3.seasonal
      if L2_3 then
        L2_3 = L1_3
        L2_3()
        L2_3 = L0_1
        L2_3 = L2_3.newText
        L3_3 = {}
        L4_3 = L0_1
        L4_3 = L4_3.localized
        L4_3 = L4_3.get
        L5_3 = "seasonal"
        L4_3 = L4_3(L5_3)
        L3_3.string = L4_3
        L3_3.size = 14
        L3_3.x = 280
        L3_3.y = 304
        L4_3 = {}
        L5_3 = 1
        L6_3 = 1
        L7_3 = 1
        L4_3[1] = L5_3
        L4_3[2] = L6_3
        L4_3[3] = L7_3
        L3_3.color = L4_3
        L2_3 = L2_3(L3_3)
        L43_2 = L2_3
        L2_3 = L2_2
        L3_3 = L2_3
        L2_3 = L2_3.insert
        L4_3 = L43_2
        L2_3(L3_3, L4_3)
      else
        L2_3 = L24_2
        L2_3 = L2_3[A0_3]
        L2_3 = L2_3.spinningPrize
        if L2_3 then
          L2_3 = L1_3
          L2_3()
          L2_3 = L0_1
          L2_3 = L2_3.newText
          L3_3 = {}
          L4_3 = L0_1
          L4_3 = L4_3.localized
          L4_3 = L4_3.get
          L5_3 = "SpinningPrize"
          L4_3 = L4_3(L5_3)
          L3_3.string = L4_3
          L3_3.size = 14
          L3_3.x = 280
          L3_3.y = 304
          L4_3 = {}
          L5_3 = 1
          L6_3 = 1
          L7_3 = 1
          L4_3[1] = L5_3
          L4_3[2] = L6_3
          L4_3[3] = L7_3
          L3_3.color = L4_3
          L2_3 = L2_3(L3_3)
          L43_2 = L2_3
          L2_3 = L2_2
          L3_3 = L2_3
          L2_3 = L2_3.insert
          L4_3 = L43_2
          L2_3(L3_3, L4_3)
        else
          L2_3 = L24_2
          L2_3 = L2_3[A0_3]
          L2_3 = L2_3.clanReward
          if L2_3 then
            L2_3 = L1_3
            L2_3()
            L2_3 = L0_1
            L2_3 = L2_3.localized
            L2_3 = L2_3.get
            L3_3 = "ClanReward"
            L2_3 = L2_3(L3_3)
            L3_3 = "images/gui/challenges/iconsAchiv/28.png"
            L4_3 = display
            L4_3 = L4_3.newImageRect
            L5_3 = L3_3
            L6_3 = 40
            L7_3 = 40
            L4_3 = L4_3(L5_3, L6_3, L7_3)
            L47_2 = L4_3
            L4_3 = L47_2
            if L4_3 then
              L4_3 = L47_2
              L4_3.anchorX = 0
              L4_3 = L47_2
              L4_3.anchorY = 0.5
              L4_3 = L2_2
              L5_3 = L4_3
              L4_3 = L4_3.insert
              L6_3 = L47_2
              L4_3(L5_3, L6_3)
              L4_3 = L47_2
              L4_3.x = 312
              L4_3 = L47_2
              L4_3.y = 284
            end
            L4_3 = L0_1
            L4_3 = L4_3.newText
            L5_3 = {}
            L5_3.string = L2_3
            L5_3.size = 14
            L5_3.x = 280
            L5_3.y = 304
            L6_3 = {}
            L7_3 = 1
            L8_3 = 1
            L9_3 = 1
            L6_3[1] = L7_3
            L6_3[2] = L8_3
            L6_3[3] = L9_3
            L5_3.color = L6_3
            L4_3 = L4_3(L5_3)
            L43_2 = L4_3
            L4_3 = L2_2
            L5_3 = L4_3
            L4_3 = L4_3.insert
            L6_3 = L43_2
            L4_3(L5_3, L6_3)
          else
            L2_3 = L24_2
            L2_3 = L2_3[A0_3]
            L2_3 = L2_3.key
            if L2_3 == "554" then
              L2_3 = L1_3
              L2_3()
              L2_3 = nil
              L3_3 = 14
              L4_3 = L0_1
              L4_3 = L4_3.data
              L4_3 = L4_3.clans
              L4_3 = L4_3.inClan
              if not L4_3 then
                L4_3 = L101_2
                L5_3 = L24_2
                L5_3 = L5_3[A0_3]
                L4_3 = L4_3(L5_3)
                if not L4_3 then
                  L4_3 = L0_1
                  L4_3 = L4_3.localized
                  L4_3 = L4_3.get
                  L5_3 = "MustBeInClan"
                  L4_3 = L4_3(L5_3)
                  L2_3 = L4_3
              end
              else
                L4_3 = L0_1
                L4_3 = L4_3.localized
                L4_3 = L4_3.get
                L5_3 = "ChangesWithYourClan"
                L4_3 = L4_3(L5_3)
                L2_3 = L4_3
                L3_3 = 10
              end
              L4_3 = L0_1
              L4_3 = L4_3.newText
              L5_3 = {}
              L5_3.string = L2_3
              L5_3.size = L3_3
              L5_3.x = 280
              L5_3.y = 304
              L6_3 = {}
              L7_3 = 1
              L8_3 = 1
              L9_3 = 1
              L6_3[1] = L7_3
              L6_3[2] = L8_3
              L6_3[3] = L9_3
              L5_3.color = L6_3
              L4_3 = L4_3(L5_3)
              L43_2 = L4_3
              L4_3 = L2_2
              L5_3 = L4_3
              L4_3 = L4_3.insert
              L6_3 = L43_2
              L4_3(L5_3, L6_3)
            else
              L2_3 = L24_2
              L2_3 = L2_3[A0_3]
              L2_3 = L2_3.set
              if L2_3 then
                L2_3 = L1_3
                L2_3()
                L2_3 = {}
                L3_3 = "GoldSet"
                L4_3 = "DiamondSet"
                L5_3 = "SpaceSet"
                L6_3 = "Emerald Set"
                L7_3 = "FireSet"
                L8_3 = "AirSet"
                L9_3 = "WaterSet"
                L10_3 = "EarthSet"
                L2_3[1] = L3_3
                L2_3[2] = L4_3
                L2_3[3] = L5_3
                L2_3[4] = L6_3
                L2_3[5] = L7_3
                L2_3[6] = L8_3
                L2_3[7] = L9_3
                L2_3[8] = L10_3
                L3_3 = ""
                L4_3 = L24_2
                L4_3 = L4_3[A0_3]
                L4_3 = L4_3.set
                L4_3 = L2_3[L4_3]
                if L4_3 then
                  L4_3 = L0_1
                  L4_3 = L4_3.localized
                  L4_3 = L4_3.get
                  L5_3 = L24_2
                  L5_3 = L5_3[A0_3]
                  L5_3 = L5_3.set
                  L5_3 = L2_3[L5_3]
                  L4_3 = L4_3(L5_3)
                  L3_3 = L4_3
                end
                L4_3 = L0_1
                L4_3 = L4_3.storeConfig
                L4_3 = L4_3.getSetIcon
                L5_3 = L24_2
                L5_3 = L5_3[A0_3]
                L5_3 = L5_3.set
                L4_3 = L4_3(L5_3)
                if L4_3 then
                  L5_3 = display
                  L5_3 = L5_3.newImageRect
                  L6_3 = L4_3
                  L7_3 = 22
                  L8_3 = 22
                  L5_3 = L5_3(L6_3, L7_3, L8_3)
                  L47_2 = L5_3
                  L5_3 = L47_2
                  if L5_3 then
                    L5_3 = L47_2
                    L5_3.anchorX = 0
                    L5_3 = L47_2
                    L5_3.anchorY = 0.5
                    L5_3 = L2_2
                    L6_3 = L5_3
                    L5_3 = L5_3.insert
                    L7_3 = L47_2
                    L5_3(L6_3, L7_3)
                    L5_3 = L47_2
                    L5_3.x = 232
                    L5_3 = L47_2
                    L5_3.y = 303
                  end
                end
                L5_3 = L0_1
                L5_3 = L5_3.newText
                L6_3 = {}
                L6_3.string = L3_3
                L6_3.size = 14
                L6_3.x = 260
                L6_3.y = 304
                L6_3.ax = 0
                L7_3 = {}
                L8_3 = 1
                L9_3 = 1
                L10_3 = 1
                L7_3[1] = L8_3
                L7_3[2] = L9_3
                L7_3[3] = L10_3
                L6_3.color = L7_3
                L5_3 = L5_3(L6_3)
                L43_2 = L5_3
                L5_3 = L2_2
                L6_3 = L5_3
                L5_3 = L5_3.insert
                L7_3 = L43_2
                L5_3(L6_3, L7_3)
              else
                L2_3 = L24_2
                L2_3 = L2_3[A0_3]
                L2_3 = L2_3.achievementPrize
                if L2_3 then
                  L2_3 = L1_3
                  L2_3()
                  L2_3 = L0_1
                  L2_3 = L2_3.newText
                  L3_3 = {}
                  L4_3 = L0_1
                  L4_3 = L4_3.localized
                  L4_3 = L4_3.get
                  L5_3 = "AchievementPrize"
                  L4_3 = L4_3(L5_3)
                  L3_3.string = L4_3
                  L3_3.size = 14
                  L3_3.x = 280
                  L3_3.y = 304
                  L4_3 = {}
                  L5_3 = 1
                  L6_3 = 1
                  L7_3 = 1
                  L4_3[1] = L5_3
                  L4_3[2] = L6_3
                  L4_3[3] = L7_3
                  L3_3.color = L4_3
                  L2_3 = L2_3(L3_3)
                  L43_2 = L2_3
                  L2_3 = L0_1
                  L2_3 = L2_3.awards
                  L2_3 = L2_3.getAchievementImageForPrizeItem
                  L3_3 = L24_2
                  L4_3 = L17_2
                  L3_3 = L3_3[L4_3]
                  L3_3 = L3_3.key
                  L2_3 = L2_3(L3_3)
                  if L2_3 then
                    L3_3 = "images/gui/challenges/iconsAchiv/"
                    L4_3 = L2_3
                    L5_3 = ".png"
                    L3_3 = L3_3 .. L4_3 .. L5_3
                    L4_3 = display
                    L4_3 = L4_3.newImageRect
                    L5_3 = L3_3
                    L6_3 = 40
                    L7_3 = 40
                    L4_3 = L4_3(L5_3, L6_3, L7_3)
                    L47_2 = L4_3
                    L4_3 = L47_2
                    if L4_3 then
                      L4_3 = L47_2
                      L4_3.anchorX = 0
                      L4_3 = L47_2
                      L4_3.anchorY = 0.5
                      L4_3 = L2_2
                      L5_3 = L4_3
                      L4_3 = L4_3.insert
                      L6_3 = L47_2
                      L4_3(L5_3, L6_3)
                      L4_3 = L47_2
                      L4_3.x = 312
                      L4_3 = L47_2
                      L4_3.y = 284
                    end
                  end
                  L3_3 = L2_2
                  L4_3 = L3_3
                  L3_3 = L3_3.insert
                  L5_3 = L43_2
                  L3_3(L4_3, L5_3)
                else
                  L2_3 = L24_2
                  L2_3 = L2_3[A0_3]
                  L2_3 = L2_3.weeklyPrice
                  if L2_3 then
                    L2_3 = L1_3
                    L2_3()
                    L2_3 = L0_1
                    L2_3 = L2_3.newText
                    L3_3 = {}
                    L4_3 = L0_1
                    L4_3 = L4_3.localized
                    L4_3 = L4_3.get
                    L5_3 = "WeeklyPrize"
                    L4_3 = L4_3(L5_3)
                    L3_3.string = L4_3
                    L3_3.size = 14
                    L3_3.x = 280
                    L3_3.y = 304
                    L4_3 = {}
                    L5_3 = 1
                    L6_3 = 1
                    L7_3 = 1
                    L4_3[1] = L5_3
                    L4_3[2] = L6_3
                    L4_3[3] = L7_3
                    L3_3.color = L4_3
                    L2_3 = L2_3(L3_3)
                    L43_2 = L2_3
                    L2_3 = L2_2
                    L3_3 = L2_3
                    L2_3 = L2_3.insert
                    L4_3 = L43_2
                    L2_3(L3_3, L4_3)
                  else
                    L2_3 = L18_2
                    if L2_3 == 8 then
                      L2_3 = L24_2
                      L3_3 = L17_2
                      L2_3 = L2_3[L3_3]
                      L2_3 = L2_3.characterId
                      if L2_3 then
                        L2_3 = L59_2
                        L3_3 = tostring
                        L4_3 = L24_2
                        L5_3 = L17_2
                        L4_3 = L4_3[L5_3]
                        L4_3 = L4_3.characterId
                        L3_3 = L3_3(L4_3)
                        L2_3 = L2_3[L3_3]
                        if not L2_3 then
                          L2_3 = L1_3
                          L2_3()
                          L2_3 = L0_1
                          L2_3 = L2_3.localized
                          L2_3 = L2_3.get
                          L3_3 = "Buy"
                          L2_3 = L2_3(L3_3)
                          L3_3 = " "
                          L4_3 = L0_1
                          L4_3 = L4_3.storeConfig
                          L4_3 = L4_3.getItem
                          L5_3 = L24_2
                          L6_3 = L17_2
                          L5_3 = L5_3[L6_3]
                          L5_3 = L5_3.characterId
                          L4_3 = L4_3(L5_3)
                          L4_3 = L4_3.title
                          L5_3 = " "
                          L6_3 = L0_1
                          L6_3 = L6_3.localized
                          L6_3 = L6_3.get
                          L7_3 = "First"
                          L6_3 = L6_3(L7_3)
                          L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3
                          L3_3 = L0_1
                          L3_3 = L3_3.newText
                          L4_3 = {}
                          L4_3.string = L2_3
                          L4_3.size = 14
                          L4_3.x = 280
                          L4_3.y = 304
                          L5_3 = {}
                          L6_3 = 1
                          L7_3 = 1
                          L8_3 = 1
                          L5_3[1] = L6_3
                          L5_3[2] = L7_3
                          L5_3[3] = L8_3
                          L4_3.color = L5_3
                          L3_3 = L3_3(L4_3)
                          L43_2 = L3_3
                          L3_3 = L2_2
                          L4_3 = L3_3
                          L3_3 = L3_3.insert
                          L5_3 = L43_2
                          L3_3(L4_3, L5_3)
                      end
                    end
                    else
                      L2_3 = L18_2
                      if L2_3 == 8 then
                        L2_3 = L53_2
                        L3_3 = L24_2
                        L4_3 = L17_2
                        L3_3 = L3_3[L4_3]
                        L3_3 = L3_3.key
                        L2_3 = L2_3(L3_3)
                        if L2_3 == 8 then
                          L2_3 = L1_3
                          L2_3()
                          L2_3 = L0_1
                          L2_3 = L2_3.localized
                          L2_3 = L2_3.get
                          L3_3 = "Forever"
                          L2_3 = L2_3(L3_3)
                          L3_3 = L24_2
                          L4_3 = L17_2
                          L3_3 = L3_3[L4_3]
                          L3_3 = L3_3.mysteryBox
                          if L3_3 then
                            L3_3 = L0_1
                            L3_3 = L3_3.localized
                            L3_3 = L3_3.get
                            L4_3 = "youandfriends"
                            L3_3 = L3_3(L4_3)
                            L2_3 = L3_3
                          else
                            L3_3 = L24_2
                            L4_3 = L17_2
                            L3_3 = L3_3[L4_3]
                            L3_3 = L3_3.key
                            if L3_3 == "1003" then
                              L3_3 = L0_1
                              L3_3 = L3_3.localized
                              L3_3 = L3_3.get
                              L4_3 = "Best Value"
                              L3_3 = L3_3(L4_3)
                              L2_3 = L3_3
                            end
                          end
                          L3_3 = L0_1
                          L3_3 = L3_3.newText
                          L4_3 = {}
                          L4_3.string = L2_3
                          L4_3.size = 14
                          L4_3.x = 280
                          L4_3.y = 304
                          L5_3 = {}
                          L6_3 = 1
                          L7_3 = 1
                          L8_3 = 1
                          L5_3[1] = L6_3
                          L5_3[2] = L7_3
                          L5_3[3] = L8_3
                          L4_3.color = L5_3
                          L3_3 = L3_3(L4_3)
                          L43_2 = L3_3
                          L3_3 = L2_2
                          L4_3 = L3_3
                          L3_3 = L3_3.insert
                          L5_3 = L43_2
                          L3_3(L4_3, L5_3)
                          L3_3 = display
                          L3_3 = L3_3.newImageRect
                          L4_3 = "images/gui/market/items/boosts/"
                          L5_3 = L24_2
                          L6_3 = L17_2
                          L5_3 = L5_3[L6_3]
                          L5_3 = L5_3.key
                          L6_3 = "_2.png"
                          L4_3 = L4_3 .. L5_3 .. L6_3
                          L5_3 = 100
                          L6_3 = 69
                          L3_3 = L3_3(L4_3, L5_3, L6_3)
                          L45_2 = L3_3
                          L3_3 = L45_2
                          L3_3.anchorX = 1
                          L3_3 = L45_2
                          L3_3.acnhorY = 1
                          L3_3 = L45_2
                          L3_3.x = 260
                          L3_3 = L45_2
                          L3_3.y = 50
                          L3_3 = L45_2
                          L3_3.xScale = 0.2
                          L3_3 = L45_2
                          L3_3.yScale = 0.2
                          L3_3 = L2_2
                          L4_3 = L3_3
                          L3_3 = L3_3.insert
                          L5_3 = L45_2
                          L3_3(L4_3, L5_3)
                          L3_3 = transition
                          L3_3 = L3_3.to
                          L4_3 = L45_2
                          L5_3 = {}
                          L5_3.time = 400
                          L5_3.xScale = 1
                          L5_3.yScale = 1
                          L6_3 = easing
                          L6_3 = L6_3.inOutBack
                          L5_3.transition = L6_3
                          L3_3(L4_3, L5_3)
                      end
                      else
                        L2_3 = L18_2
                        if L2_3 == 2 then
                          L2_3 = L17_2
                          if L2_3 ~= 1 then
                            L2_3 = L0_1
                            L2_3 = L2_3.storeConfig
                            L2_3 = L2_3.getItem
                            L3_3 = L24_2
                            L4_3 = L17_2
                            L3_3 = L3_3[L4_3]
                            L3_3 = L3_3.characterId
                            L2_3 = L2_3(L3_3)
                            L3_3 = L101_2
                            L4_3 = L2_3
                            L3_3 = L3_3(L4_3)
                            if not L3_3 then
                              L3_3 = L1_3
                              L3_3()
                              L3_3 = L2_3.title
                              L4_3 = L0_1
                              L4_3 = L4_3.localized
                              L4_3 = L4_3.get
                              L5_3 = "Buy"
                              L4_3 = L4_3(L5_3)
                              L5_3 = " "
                              L6_3 = L3_3
                              L7_3 = " "
                              L8_3 = L0_1
                              L8_3 = L8_3.localized
                              L8_3 = L8_3.get
                              L9_3 = "First"
                              L8_3 = L8_3(L9_3)
                              L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3
                              L5_3 = L0_1
                              L5_3 = L5_3.newText
                              L6_3 = {}
                              L6_3.string = L4_3
                              L6_3.size = 14
                              L6_3.x = 280
                              L6_3.y = 304
                              L7_3 = {}
                              L8_3 = 1
                              L9_3 = 1
                              L10_3 = 1
                              L7_3[1] = L8_3
                              L7_3[2] = L9_3
                              L7_3[3] = L10_3
                              L6_3.color = L7_3
                              L5_3 = L5_3(L6_3)
                              L43_2 = L5_3
                              L5_3 = L2_2
                              L6_3 = L5_3
                              L5_3 = L5_3.insert
                              L7_3 = L43_2
                              L5_3(L6_3, L7_3)
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  
  function L105_2(A0_3, A1_3)
    local L2_3, L3_3
    if A1_3 then
      L2_3 = L39_2
      L2_3.isVisible = false
    else
      if A0_3 then
        L2_3 = L24_2
        L2_3 = L2_3[A0_3]
        L2_3 = L2_3.spinningPrize
        if L2_3 then
          L2_3 = L39_2
          L2_3.isVisible = false
      end
      else
        if A0_3 then
          L2_3 = L24_2
          L2_3 = L2_3[A0_3]
          L2_3 = L2_3.weeklyPrice
          if L2_3 then
            L2_3 = L39_2
            L2_3.isVisible = false
        end
        else
          if A0_3 then
            L2_3 = L24_2
            L2_3 = L2_3[A0_3]
            L2_3 = L2_3.seasonal
            if L2_3 then
              L2_3 = L24_2
              L2_3 = L2_3[A0_3]
              L2_3 = L2_3.seasonalActive
              if not L2_3 then
                L2_3 = L39_2
                L2_3.isVisible = false
            end
          end
          else
            if A0_3 then
              L2_3 = L24_2
              L2_3 = L2_3[A0_3]
              L2_3 = L2_3.achievementPrize
              if L2_3 then
                L2_3 = L39_2
                L2_3.isVisible = false
            end
            else
              if A0_3 then
                L2_3 = L101_2
                L3_3 = L24_2
                L3_3 = L3_3[A0_3]
                L2_3 = L2_3(L3_3)
                if L2_3 then
                  L2_3 = L39_2
                  L2_3.isVisible = false
              end
              else
                L2_3 = L39_2
                L2_3.isVisible = true
              end
            end
          end
        end
      end
    end
  end
  
  function L35_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L2_3 = L0_1
    L2_3 = L2_3.debugger
    L2_3 = L2_3.debugTable
    L3_3 = "market"
    L4_3 = "currentMarketData :"
    L5_3 = L24_2
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = tonumber
    L3_3 = A1_3
    L2_3 = L2_3(L3_3)
    if not L2_3 then
      L2_3 = 0
    end
    L3_3 = nil
    L4_3 = nil
    L5_3 = L0_1
    L5_3 = L5_3.debugger
    L5_3 = L5_3.debugPrint
    L6_3 = "market"
    L7_3 = "updateMarketplace > spriteType: "
    L8_3 = A0_3
    L7_3 = L7_3 .. L8_3
    L5_3(L6_3, L7_3)
    L5_3 = L0_1
    L5_3 = L5_3.debugger
    L5_3 = L5_3.debugPrint
    L6_3 = "market"
    L7_3 = "updateMarketplace > index: "
    L8_3 = L2_3 or L8_3
    if not L2_3 then
      L8_3 = "nil"
    end
    L7_3 = L7_3 .. L8_3
    L5_3(L6_3, L7_3)
    if L2_3 == 0 then
      L2_3 = 1
    elseif A0_3 == 9 or A0_3 == 10 then
      if L2_3 == nil then
        L2_3 = 1
      end
      if A0_3 == 9 then
        L4_3 = true
      end
    elseif A0_3 == 8 then
      L5_3 = L24_2
      L5_3 = L5_3[L2_3]
      if not L5_3 then
        L5_3 = {}
      end
      L6_3 = L5_3.key
      L7_3 = L54_2
      L8_3 = L53_2
      L9_3 = L6_3
      L8_3, L9_3 = L8_3(L9_3)
      L7_3 = L7_3(L8_3, L9_3)
      L3_3 = L7_3
    else
      L5_3 = L54_2
      L6_3 = A0_3
      L5_3 = L5_3(L6_3)
      L3_3 = L5_3
    end
    if A0_3 == 1 then
      L5_3 = L24_2
      L5_3 = L5_3[L2_3]
      if L5_3 then
        L5_3 = L102_2
        L6_3 = L24_2
        L6_3 = L6_3[L2_3]
        L6_3 = L6_3.key
        L5_3 = L5_3(L6_3)
        if L5_3 then
          L5_3 = L37_2
          L5_3.isVisible = true
      end
    end
    else
      L5_3 = L37_2
      L5_3.isVisible = false
    end
    L5_3 = L92_2
    L6_3 = L2_3
    L5_3(L6_3)
    L5_3 = L104_2
    L6_3 = L2_3
    L5_3(L6_3)
    L5_3 = L103_2
    L6_3 = L2_3
    L5_3(L6_3)
    if A0_3 == 9 or A0_3 == 10 then
      L5_3 = L97_2
      L5_3()
    else
      L5_3 = L95_2
      L6_3 = L3_3
      L7_3 = L2_3
      L5_3(L6_3, L7_3)
    end
    if L2_3 == 2 and L3_3 == 4 then
      L5_3 = L0_1
      L5_3 = L5_3.onboarding
      L5_3 = L5_3.isActive
      if L5_3 == true then
        L5_3 = L0_1
        L5_3 = L5_3.onboarding
        L5_3 = L5_3.removeIconArrow
        L5_3()
      end
    end
    L5_3 = L105_2
    L6_3 = L2_3
    L7_3 = L4_3
    L5_3(L6_3, L7_3)
  end
  
  function L33_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getMoney
    L0_3 = L0_3()
    L57_2 = L0_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getGem
    L0_3 = L0_3()
    L58_2 = L0_3
    L0_3 = L15_2
    if L0_3 then
      L0_3 = L15_2
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      L15_2 = L0_3
    end
    L0_3 = L0_1
    L0_3 = L0_3.newText
    L1_3 = {}
    L2_3 = L57_2
    L1_3.string = L2_3
    L1_3.size = 14
    L1_3.x = 424
    L1_3.y = 69
    L1_3.ax = 0
    L2_3 = {}
    L3_3 = 1
    L4_3 = 1
    L5_3 = 1
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L1_3.color = L2_3
    L0_3 = L0_3(L1_3)
    L15_2 = L0_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L15_2
    L0_3(L1_3, L2_3)
    L0_3 = L16_2
    if L0_3 then
      L0_3 = L16_2
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      L16_2 = L0_3
    end
    L0_3 = L0_1
    L0_3 = L0_3.newText
    L1_3 = {}
    L2_3 = L58_2
    L1_3.string = L2_3
    L1_3.size = 14
    L1_3.x = 424
    L1_3.y = 41
    L1_3.ax = 0
    L2_3 = {}
    L3_3 = 1
    L4_3 = 1
    L5_3 = 1
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L1_3.color = L2_3
    L0_3 = L0_3(L1_3)
    L16_2 = L0_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L16_2
    L0_3(L1_3, L2_3)
  end
  
  function L34_2()
    local L0_3, L1_3
    L0_3 = L18_2
    if L0_3 == 8 then
      L0_3 = L0_1
      L0_3 = L0_3.storeConfig
      L0_3 = L0_3.getAllSaleItemSortedOnPrice
      L0_3 = L0_3()
      L24_2 = L0_3
      L0_3 = L17_2
      if 1 < L0_3 then
        L0_3 = L17_2
        L0_3 = L0_3 - 1
        L17_2 = L0_3
      end
    end
    L0_3 = L33_2
    L0_3()
    L0_3 = L26_2
    L0_3()
  end
  
  function L106_2()
    local L0_3, L1_3
    L0_3 = L68_2
    if L0_3 then
      L0_3 = L68_2
      L0_3.isVisible = true
    end
    L0_3 = L83_2
    L0_3.isVisible = true
  end
  
  function L107_2()
    local L0_3, L1_3
    L0_3 = L68_2
    if L0_3 then
      L0_3 = L68_2
      L0_3.isVisible = false
    end
    L0_3 = L83_2
    L0_3.isVisible = false
  end
  
  function L108_2(A0_3)
    local L1_3
    L1_3 = L73_2
    L1_3[1] = A0_3
    L1_3 = L73_2
    L1_3[2] = A0_3
    L1_3 = L73_2
    L1_3[3] = A0_3
  end
  
  function L109_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = 1
    L1_3 = L73_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L73_2
      L4_3 = L4_3[L3_3]
      if L4_3 == 0 then
        L4_3 = false
        return L4_3
      end
    end
    L0_3 = true
    return L0_3
  end
  
  function L110_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    if not A0_3 then
      A0_3 = 0
    end
    L3_3 = L18_2
    if L3_3 == 8 then
      A0_3 = 1002
    end
    L3_3 = 1
    L4_3 = L25_2
    L4_3 = #L4_3
    L5_3 = 1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = tonumber
      L8_3 = L25_2
      L8_3 = L8_3[L6_3]
      L8_3 = L8_3.key
      L7_3 = L7_3(L8_3)
      L8_3 = tonumber
      L9_3 = A0_3
      L8_3 = L8_3(L9_3)
      if L7_3 == L8_3 then
        L2_3 = L6_3
        break
      end
    end
    if L2_3 then
      L3_3 = L2_3
      L4_3 = 1
      L5_3 = -1
      for L6_3 = L3_3, L4_3, L5_3 do
        L7_3 = 1
        L8_3 = L24_2
        L8_3 = #L8_3
        L9_3 = 1
        for L10_3 = L7_3, L8_3, L9_3 do
          L11_3 = tonumber
          L12_3 = L24_2
          L12_3 = L12_3[L10_3]
          L12_3 = L12_3.key
          L11_3 = L11_3(L12_3)
          L12_3 = tonumber
          L13_3 = L25_2
          L13_3 = L13_3[L6_3]
          L13_3 = L13_3.key
          L12_3 = L12_3(L13_3)
          if L11_3 == L12_3 then
            L1_3 = L10_3
            break
          end
        end
        if L1_3 then
          break
        end
      end
      if not L1_3 then
        L1_3 = 1
      end
    end
    L3_3 = L55_2
    L3_3 = L1_3 or L3_3
    if not L3_3 and not L1_3 then
      L3_3 = L17_2
      if not L3_3 then
        L3_3 = 1
      end
    end
    L17_2 = L3_3
    L3_3 = L17_2
    L4_3 = L24_2
    L4_3 = #L4_3
    if L3_3 > L4_3 then
      L3_3 = L24_2
      L3_3 = #L3_3
      L17_2 = L3_3
    else
      L3_3 = L17_2
      if L3_3 < 1 then
        L3_3 = 1
        L17_2 = L3_3
      end
    end
  end
  
  function L111_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L0_3 = 1
    L1_3 = L25_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L25_2
      L4_3 = L4_3[L3_3]
      L5_3 = L0_1
      L5_3 = L5_3.database
      L5_3 = L5_3.getPowerupSkin
      L5_3 = L5_3()
      L60_2 = L5_3
      L5_3 = nil
      if L4_3 ~= nil then
        L6_3 = #L4_3
        if L6_3 ~= 0 then
          goto lbl_20
        end
      end
      do return end
      ::lbl_20::
      L6_3 = 1
      L7_3 = #L4_3
      L8_3 = 1
      for L9_3 = L6_3, L7_3, L8_3 do
        L10_3 = 1
        L11_3 = L60_2
        L11_3 = #L11_3
        L12_3 = 1
        for L13_3 = L10_3, L11_3, L12_3 do
          L14_3 = tonumber
          L15_3 = L4_3[L9_3]
          L15_3 = L15_3.key
          L14_3 = L14_3(L15_3)
          L15_3 = tonumber
          L16_3 = L60_2
          L16_3 = L16_3[L13_3]
          L15_3 = L15_3(L16_3)
          if L14_3 == L15_3 then
            L5_3 = L4_3[L9_3]
          end
        end
        if L5_3 == nil then
          L10_3 = L4_3[L9_3]
          L10_3 = L10_3.preOwned
          if L10_3 then
            L5_3 = L4_3[L9_3]
          end
        end
      end
      L6_3 = L25_2
      L6_3[L3_3] = L5_3
      L6_3 = L25_2
      L6_3 = L6_3[L3_3]
      L7_3 = L0_1
      L7_3 = L7_3.tableUtils
      L7_3 = L7_3.deepCopy
      L8_3 = L4_3
      L7_3 = L7_3(L8_3)
      L6_3.oldData = L7_3
    end
  end
  
  function L112_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L0_3 = {}
    L24_2 = L0_3
    L0_3 = 1
    L1_3 = L25_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L25_2
      L4_3 = L4_3[L3_3]
      L5_3 = L101_2
      L6_3 = L4_3
      L5_3 = L5_3(L6_3)
      L6_3 = true
      L7_3 = L71_2
      if L7_3 ~= 1 then
        L7_3 = L18_2
        if L7_3 ~= 9 then
          L7_3 = L18_2
          if L7_3 ~= 8 then
            goto lbl_68
          end
        end
      end
      L7_3 = L18_2
      if L7_3 == 9 then
        L7_3 = nil
        L8_3 = L0_1
        L8_3 = L8_3.database
        L8_3 = L8_3.getPowerupSkin
        L8_3 = L8_3()
        L60_2 = L8_3
        L8_3 = 1
        L9_3 = #L4_3
        L10_3 = 1
        for L11_3 = L8_3, L9_3, L10_3 do
          L12_3 = 1
          L13_3 = L60_2
          L13_3 = #L13_3
          L14_3 = 1
          for L15_3 = L12_3, L13_3, L14_3 do
            L16_3 = tonumber
            L17_3 = L4_3[L11_3]
            L17_3 = L17_3.key
            L16_3 = L16_3(L17_3)
            L17_3 = tonumber
            L18_3 = L60_2
            L18_3 = L18_3[L15_3]
            L17_3 = L17_3(L18_3)
            if L16_3 == L17_3 then
              L7_3 = L4_3[L11_3]
              L6_3 = true
            end
          end
          L12_3 = itemToShow
          if L12_3 == nil then
            L12_3 = L4_3[L11_3]
            L12_3 = L12_3.preOwned
            if L12_3 then
              L7_3 = L4_3[L11_3]
              L6_3 = true
            end
          end
        end
        if L6_3 then
          L4_3 = L7_3
          goto lbl_79
          ::lbl_68::
          L7_3 = L71_2
          if L7_3 == 2 then
            L6_3 = not L5_3
          else
            L7_3 = L71_2
            L6_3 = L5_3 or L6_3
            if L7_3 == 3 and not L5_3 then
              L6_3 = L4_3.owned
            end
          end
        end
      end
      ::lbl_79::
      if L6_3 then
        L7_3 = L24_2
        L8_3 = L24_2
        L8_3 = #L8_3
        L8_3 = L8_3 + 1
        L9_3 = L0_1
        L9_3 = L9_3.tableUtils
        L9_3 = L9_3.deepCopy
        L10_3 = L4_3
        L9_3 = L9_3(L10_3)
        L7_3[L8_3] = L9_3
      end
    end
    L0_3 = L24_2
    L0_3 = #L0_3
    if L0_3 == 0 then
      L0_3 = L24_2
      L1_3 = {}
      L1_3.title = "No items"
      L0_3[1] = L1_3
    end
  end
  
  function L113_2()
    local L0_3, L1_3
    L0_3 = 1
    L71_2 = L0_3
    L0_3 = L70_2
    L1_3 = L71_2
    L0_3(L1_3)
  end
  
  function L114_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = L54_2
    L2_3 = L18_2
    L1_3 = L1_3(L2_3)
    L2_3 = tonumber
    L3_3 = L48_2
    L3_3 = L3_3[L1_3]
    L2_3 = L2_3(L3_3)
    if A0_3 then
      L3_3 = L18_2
      if L3_3 == 1 then
        L2_3 = A0_3
      else
        L3_3 = L0_1
        L3_3 = L3_3.database
        L3_3 = L3_3.getDefaultSkinForAvatar
        L4_3 = A0_3
        L3_3 = L3_3(L4_3)
        L2_3 = L3_3
      end
    end
    L3_3 = L108_2
    L4_3 = L2_3
    L3_3(L4_3)
    L3_3 = 1
    L4_3 = L24_2
    L4_3 = #L4_3
    L5_3 = 1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = tonumber
      L8_3 = L24_2
      L8_3 = L8_3[L6_3]
      L8_3 = L8_3.key
      L7_3 = L7_3(L8_3)
      L8_3 = tonumber
      L9_3 = L2_3
      L8_3 = L8_3(L9_3)
      if L7_3 == L8_3 then
        L17_2 = L6_3
        return
      end
    end
    L3_3 = 1
    L17_2 = L3_3
  end
  
  function L115_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = false
    L1_3 = L18_2
    if L1_3 == 10 then
      L1_3 = 1
      L2_3 = L24_2
      L2_3 = #L2_3
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = 1
        L6_3 = L60_2
        L6_3 = #L6_3
        L7_3 = 1
        for L8_3 = L5_3, L6_3, L7_3 do
          L9_3 = tonumber
          L10_3 = L24_2
          L10_3 = L10_3[L4_3]
          L10_3 = L10_3.key
          L9_3 = L9_3(L10_3)
          L10_3 = tonumber
          L11_3 = L60_2
          L11_3 = L11_3[L8_3]
          L10_3 = L10_3(L11_3)
          if L9_3 == L10_3 then
            L17_2 = L4_3
            L0_3 = true
          end
        end
      end
    else
      L1_3 = L18_2
      if L1_3 == 9 then
        L1_3 = L61_2
        L17_2 = L1_3
        L0_3 = true
      end
    end
    if not L0_3 then
      L1_3 = 1
      L17_2 = L1_3
    end
  end
  
  function L116_2(A0_3)
    local L1_3, L2_3
    L1_3 = L0_1
    L1_3 = L1_3.onboarding
    L1_3 = L1_3.isActive
    if L1_3 == true then
      L1_3 = L0_1
      L1_3 = L1_3.onboarding
      L1_3 = L1_3.stepDone
      L1_3()
    else
      L1_3 = L0_1
      L1_3 = L1_3.gotoScene
      L2_3 = "lua.scenes.mainMenu"
      L1_3(L2_3)
    end
  end
  
  function L117_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if not A0_3 then
      L1_3 = L24_2
      L2_3 = L17_2
      A0_3 = L1_3[L2_3]
    end
    L1_3 = A0_3.key
    if not L1_3 then
      return
    end
    L1_3 = A0_3.characterId
    if not L1_3 then
      L1_3 = A0_3.key
    end
    L2_3 = 0
    L3_3 = L17_2
    if 1 < L3_3 then
      L2_3 = A0_3.key
    end
    if L2_3 ~= 0 then
      L3_3 = L101_2
      L4_3 = A0_3
      L3_3 = L3_3(L4_3)
      if not L3_3 then
        goto lbl_38
      end
    end
    L3_3 = L0_1
    L3_3 = L3_3.database
    L3_3 = L3_3.setNewDefaultSkinForAvatar
    L4_3 = L1_3
    L5_3 = L2_3
    L3_3(L4_3, L5_3)
    L3_3 = L0_1
    L3_3 = L3_3.comm
    L3_3 = L3_3.changeSkin
    L4_3 = L1_3
    L5_3 = L2_3
    L3_3(L4_3, L5_3)
    ::lbl_38::
  end
  
  function L118_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = L24_2
    if not L0_3 then
      return
    end
    L0_3 = L18_2
    if L0_3 == 2 then
      L0_3 = L117_2
      L0_3()
    end
    L0_3 = L24_2
    L1_3 = L17_2
    L0_3 = L0_3[L1_3]
    if not L0_3 then
      return
    end
    L1_3 = L101_2
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L2_3 = L18_2
      if L2_3 == 2 then
        L2_3 = L17_2
        if L2_3 == 1 then
          L2_3 = L48_2
          L3_3 = L18_2
          L4_3 = L24_2
          L5_3 = L17_2
          L4_3 = L4_3[L5_3]
          L4_3 = L4_3.skinId
          L2_3[L3_3] = L4_3
      end
      else
        L2_3 = L18_2
        if L2_3 ~= 1 then
          L2_3 = L18_2
          if L2_3 ~= 2 then
            goto lbl_59
          end
        end
        L2_3 = L18_2
        if L2_3 == 1 then
          L2_3 = L48_2
          L3_3 = L24_2
          L4_3 = L17_2
          L3_3 = L3_3[L4_3]
          L3_3 = L3_3.key
          L2_3[1] = L3_3
        end
        L2_3 = L48_2
        L3_3 = L0_1
        L3_3 = L3_3.database
        L3_3 = L3_3.getDefaultSkinForAvatar
        L4_3 = L48_2
        L4_3 = L4_3[1]
        L3_3 = L3_3(L4_3)
        L2_3[2] = L3_3
        goto lbl_166
        ::lbl_59::
        L2_3 = L18_2
        if L2_3 == 8 then
          L2_3 = L24_2
          L3_3 = L17_2
          L2_3 = L2_3[L3_3]
          L3_3 = L2_3.bundle
          if L3_3 then
            L3_3 = 1
            L4_3 = L2_3.itemsInBundle
            L4_3 = #L4_3
            L5_3 = 1
            for L6_3 = L3_3, L4_3, L5_3 do
              L7_3 = L2_3.itemsInBundle
              L7_3 = L7_3[L6_3]
              L8_3 = L0_1
              L8_3 = L8_3.storeConfig
              L8_3 = L8_3.getItemCategory
              L9_3 = L7_3
              L8_3 = L8_3(L9_3)
              L9_3 = L0_1
              L9_3 = L9_3.storeConfig
              L9_3 = L9_3.getItemTypeId
              L10_3 = L8_3
              L9_3 = L9_3(L10_3)
              L8_3 = L9_3
              if L8_3 then
                L9_3 = L48_2
                L9_3[L8_3] = L7_3
              end
              if L8_3 == 2 then
                L9_3 = L0_1
                L9_3 = L9_3.storeConfig
                L9_3 = L9_3.getMarketItem
                L10_3 = L7_3
                L9_3 = L9_3(L10_3)
                L10_3 = L117_2
                L11_3 = L9_3
                L10_3(L11_3)
              end
            end
          else
            L3_3 = L2_3.itemType
            if L3_3 then
              if L3_3 == 2 then
                L4_3 = L117_2
                L5_3 = L2_3
                L4_3(L5_3)
                L4_3 = L48_2
                L5_3 = L2_3.characterId
                if not L5_3 then
                  L5_3 = L2_3.key
                end
                L4_3[1] = L5_3
              end
              L4_3 = L48_2
              L5_3 = L2_3.key
              L4_3[L3_3] = L5_3
            end
          end
        else
          L2_3 = L18_2
          if L2_3 == 10 then
            L2_3 = L0_1
            L2_3 = L2_3.database
            L2_3 = L2_3.changePowerupSkin
            L3_3 = tonumber
            L4_3 = L24_2
            L5_3 = L17_2
            L4_3 = L4_3[L5_3]
            L4_3 = L4_3.key
            L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L3_3(L4_3)
            L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
            if L2_3 then
              L3_3 = true
              L56_2 = L3_3
            end
            L3_3 = L0_1
            L3_3 = L3_3.database
            L3_3 = L3_3.getPowerupSkin
            L3_3 = L3_3()
            L60_2 = L3_3
            L3_3 = L0_1
            L3_3 = L3_3.storeConfig
            L3_3 = L3_3.isThisAPowerupSet
            L4_3 = L60_2
            L3_3 = L3_3(L4_3)
            L63_2 = L3_3
          else
            L2_3 = L18_2
            if L2_3 == 11 then
              L2_3 = L48_2
              L3_3 = L24_2
              L4_3 = L17_2
              L3_3 = L3_3[L4_3]
              L3_3 = L3_3.key
              L2_3[8] = L3_3
            else
              L2_3 = L48_2
              L3_3 = L18_2
              L4_3 = L24_2
              L5_3 = L17_2
              L4_3 = L4_3[L5_3]
              L4_3 = L4_3.key
              L2_3[L3_3] = L4_3
            end
          end
        end
      end
    end
    ::lbl_166::
    L2_3 = L0_1
    L2_3 = L2_3.tableUtils
    L2_3 = L2_3.deepCopy
    L3_3 = L48_2
    L2_3 = L2_3(L3_3)
    L50_2 = L2_3
  end
  
  function L119_2(A0_3)
    local L1_3
    if A0_3 == 1 or A0_3 == 2 then
      L1_3 = 2
    elseif A0_3 == 8 then
      L1_3 = 1
    elseif A0_3 == 9 or A0_3 == 10 then
      L1_3 = 3
    elseif 10 < A0_3 then
      L1_3 = A0_3 - 2
    elseif 2 < A0_3 then
      L1_3 = A0_3 + 1
    end
    return L1_3
  end
  
  function L120_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = false
    L3_3 = L23_2
    L3_3 = L3_3[A0_3]
    if L3_3 then
      if A1_3 then
        L3_3 = L23_2
        L3_3 = L3_3[A0_3]
        L3_3 = L3_3[A1_3]
        if L3_3 then
          L3_3 = L23_2
          L3_3 = L3_3[A0_3]
          L3_3 = L3_3[A1_3]
          L25_2 = L3_3
          L2_3 = true
        end
      else
        L3_3 = L23_2
        L3_3 = L3_3[A0_3]
        L25_2 = L3_3
        L2_3 = true
      end
    end
    if not L2_3 then
      if A0_3 == 1 then
        L3_3 = L23_2
        L4_3 = L0_1
        L4_3 = L4_3.storeConfig
        L4_3 = L4_3.getAllCharactersSortedOnPrice
        L4_3 = L4_3()
        L3_3[A0_3] = L4_3
        L3_3 = L23_2
        L3_3 = L3_3[A0_3]
        L25_2 = L3_3
      elseif A0_3 == 2 then
        L3_3 = L23_2
        L3_3 = L3_3[A0_3]
        if L3_3 == nil then
          L3_3 = L23_2
          L4_3 = {}
          L3_3[A0_3] = L4_3
        end
        L3_3 = L23_2
        L3_3 = L3_3[A0_3]
        L4_3 = L0_1
        L4_3 = L4_3.storeConfig
        L4_3 = L4_3.getAllSkinsSortedOnPrice
        L5_3 = A1_3
        L4_3 = L4_3(L5_3)
        L3_3[A1_3] = L4_3
        L3_3 = L23_2
        L3_3 = L3_3[A0_3]
        L3_3 = L3_3[A1_3]
        L25_2 = L3_3
      elseif A0_3 == 3 then
        L3_3 = L23_2
        L4_3 = L0_1
        L4_3 = L4_3.storeConfig
        L4_3 = L4_3.getAllHatsSortedOnPrice
        L4_3 = L4_3()
        L3_3[A0_3] = L4_3
        L3_3 = L23_2
        L3_3 = L3_3[A0_3]
        L25_2 = L3_3
      elseif A0_3 == 4 then
        L3_3 = L23_2
        L4_3 = L0_1
        L4_3 = L4_3.storeConfig
        L4_3 = L4_3.getAllFacewearSortedOnPrice
        L4_3 = L4_3()
        L3_3[A0_3] = L4_3
        L3_3 = L23_2
        L3_3 = L3_3[A0_3]
        L25_2 = L3_3
      elseif A0_3 == 5 then
        L3_3 = L23_2
        L4_3 = L0_1
        L4_3 = L4_3.storeConfig
        L4_3 = L4_3.getAllNecksSortedOnPrice
        L4_3 = L4_3()
        L3_3[A0_3] = L4_3
        L3_3 = L23_2
        L3_3 = L3_3[A0_3]
        L25_2 = L3_3
      elseif A0_3 == 6 then
        L3_3 = L23_2
        L4_3 = L0_1
        L4_3 = L4_3.storeConfig
        L4_3 = L4_3.getAllTrailsSortedOnPrice
        L4_3 = L4_3()
        L3_3[A0_3] = L4_3
        L3_3 = L23_2
        L3_3 = L3_3[A0_3]
        L25_2 = L3_3
      elseif A0_3 == 7 then
        L3_3 = L23_2
        L4_3 = L0_1
        L4_3 = L4_3.storeConfig
        L4_3 = L4_3.getAllFeetSortedOnPrice
        L4_3 = L4_3()
        L3_3[A0_3] = L4_3
        L3_3 = L23_2
        L3_3 = L3_3[A0_3]
        L25_2 = L3_3
      elseif A0_3 == 11 then
        L3_3 = L23_2
        L4_3 = L0_1
        L4_3 = L4_3.storeConfig
        L4_3 = L4_3.getAllBackwearSortedOnPrice
        L4_3 = L4_3()
        L3_3[A0_3] = L4_3
        L3_3 = L23_2
        L3_3 = L3_3[A0_3]
        L25_2 = L3_3
      elseif A0_3 == 8 then
        L3_3 = L23_2
        L4_3 = L0_1
        L4_3 = L4_3.storeConfig
        L4_3 = L4_3.getAllSaleItemSortedOnPrice
        L4_3 = L4_3()
        L3_3[A0_3] = L4_3
        L3_3 = L23_2
        L3_3 = L3_3[A0_3]
        L25_2 = L3_3
      elseif A0_3 == 9 then
        L3_3 = L23_2
        L4_3 = L0_1
        L4_3 = L4_3.storeConfig
        L4_3 = L4_3.getAllPowerupsSortedOnPrice
        L4_3 = L4_3()
        L3_3[A0_3] = L4_3
        L3_3 = L23_2
        L3_3 = L3_3[A0_3]
        L25_2 = L3_3
      elseif A0_3 == 10 then
        L3_3 = L23_2
        L3_3 = L3_3[A0_3]
        if L3_3 == nil then
          L3_3 = L23_2
          L4_3 = {}
          L3_3[A0_3] = L4_3
        end
        L3_3 = L23_2
        L3_3 = L3_3[A0_3]
        L4_3 = L0_1
        L4_3 = L4_3.storeConfig
        L4_3 = L4_3.getAllPowerupsOfTypeSortedOnPrice
        L5_3 = A1_3
        L4_3 = L4_3(L5_3)
        L3_3[A1_3] = L4_3
        L3_3 = L23_2
        L3_3 = L3_3[A0_3]
        L3_3 = L3_3[A1_3]
        L25_2 = L3_3
      end
    end
  end
  
  function L121_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L2_3 = L120_2
    L3_3 = A0_3
    L4_3 = A1_3
    L2_3(L3_3, L4_3)
    L2_3 = nil
    L3_3 = L18_2
    if 0 < L3_3 then
      L3_3 = L18_2
      if L3_3 == 2 then
        L3_3 = L18_2
        if L3_3 == 10 then
          goto lbl_44
        end
      end
      L3_3 = L119_2
      L4_3 = L18_2
      L3_3 = L3_3(L4_3)
      L2_3 = L3_3
      L3_3 = L27_2
      L3_3 = L3_3.getTable
      L3_3 = L3_3()
      L4_3 = L3_3
      L3_3 = L3_3.getRowAtIndex
      L5_3 = L2_3
      L3_3 = L3_3(L4_3, L5_3)
      if L3_3 then
        L3_3 = L27_2
        L3_3 = L3_3.getTable
        L3_3 = L3_3()
        L4_3 = L3_3
        L3_3 = L3_3.getRowAtIndex
        L5_3 = L2_3
        L3_3 = L3_3(L4_3, L5_3)
        L3_3 = L3_3.setActiveState
        L4_3 = false
        L3_3(L4_3)
      else
        L3_3 = L30_2
        L3_3 = L3_3[L2_3]
        if L3_3 then
          L3_3 = L30_2
          L3_3 = L3_3[L2_3]
          L3_3.active = false
        end
      end
    end
    ::lbl_44::
    L18_2 = A0_3
    L3_3 = L119_2
    L4_3 = L18_2
    L3_3 = L3_3(L4_3)
    L4_3 = L18_2
    if L4_3 ~= 9 then
      L4_3 = L18_2
      if L4_3 ~= 10 then
        L4_3 = L114_2
        L5_3 = A1_3
        L4_3(L5_3)
        L4_3 = L10_2
        L4_3 = L4_3.clean
        L4_3()
    end
    else
      L4_3 = L115_2
      L4_3()
    end
    
    function L4_3()
      local L0_4, L1_4, L2_4
      L0_4 = L62_2
      if L0_4 then
        return
      end
      L0_4 = L27_2
      L0_4 = L0_4.getTable
      L0_4 = L0_4()
      L1_4 = L0_4
      L0_4 = L0_4.getRowAtIndex
      L2_4 = L3_3
      L0_4 = L0_4(L1_4, L2_4)
      if L0_4 then
        L0_4 = L27_2
        L0_4 = L0_4.getTable
        L0_4 = L0_4()
        L1_4 = L0_4
        L0_4 = L0_4.getRowAtIndex
        L2_4 = L3_3
        L0_4 = L0_4(L1_4, L2_4)
        L0_4 = L0_4.setActiveState
        L1_4 = true
        L0_4(L1_4)
      end
    end
    
    L5_3 = L27_2
    L5_3 = L5_3.getTable
    L5_3 = L5_3()
    L6_3 = L5_3
    L5_3 = L5_3.getRowAtIndex
    L7_3 = L3_3
    L5_3 = L5_3(L6_3, L7_3)
    if L5_3 then
      L5_3 = L27_2
      L5_3 = L5_3.getTable
      L5_3 = L5_3()
      L6_3 = L5_3
      L5_3 = L5_3.getRowAtIndex
      L7_3 = L3_3
      L5_3 = L5_3(L6_3, L7_3)
      L5_3 = L5_3.setActiveState
      L6_3 = true
      L5_3(L6_3)
    else
      L5_3 = L27_2
      L5_3 = L5_3.getTable
      L5_3 = L5_3()
      L6_3 = L5_3
      L5_3 = L5_3.scrollToIndex
      L7_3 = L3_3
      L8_3 = 100
      L9_3 = L4_3
      L5_3(L6_3, L7_3, L8_3, L9_3)
    end
    L5_3 = L18_2
    if L5_3 ~= 1 then
      L5_3 = L18_2
      if L5_3 ~= 9 then
        goto lbl_104
      end
    end
    L5_3 = L36_2
    L5_3.isVisible = true
    L5_3 = L38_2
    L5_3.isVisible = false
    goto lbl_119
    ::lbl_104::
    L5_3 = L18_2
    if L5_3 ~= 2 then
      L5_3 = L18_2
      if L5_3 ~= 10 then
        goto lbl_115
      end
    end
    L5_3 = L36_2
    L5_3.isVisible = false
    L5_3 = L38_2
    L5_3.isVisible = true
    goto lbl_119
    ::lbl_115::
    L5_3 = L36_2
    L5_3.isVisible = false
    L5_3 = L38_2
    L5_3.isVisible = false
    ::lbl_119::
  end
  
  function L122_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L118_2
    L1_3()
    L1_3 = L121_2
    L2_3 = 1
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
    L1_3 = L70_2
    L1_3()
  end
  
  function L123_2()
    local L0_3, L1_3
    L0_3 = L18_2
    if L0_3 ~= 1 then
      L0_3 = L0_1
      L0_3 = L0_3.audio
      L0_3 = L0_3.play
      L1_3 = "button_press"
      L0_3(L1_3)
      L0_3 = L122_2
      L0_3()
    end
    L0_3 = L52_2
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.analytics
      L0_3 = L0_3.addDesignEvent
      L1_3 = "Onboarding:Marketplace:ChangeMarketTab:Avatar"
      L0_3(L1_3)
    end
  end
  
  function L124_2()
    local L0_3, L1_3
    L0_3 = L18_2
    if L0_3 ~= 3 then
      L0_3 = L0_1
      L0_3 = L0_3.audio
      L0_3 = L0_3.play
      L1_3 = "button_press"
      L0_3(L1_3)
      L0_3 = L118_2
      L0_3()
      L0_3 = L121_2
      L1_3 = 3
      L0_3(L1_3)
      L0_3 = L70_2
      L0_3()
    end
    L0_3 = L52_2
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.analytics
      L0_3 = L0_3.addDesignEvent
      L1_3 = "Onboarding:Marketplace:ChangeMarketTab:Hats"
      L0_3(L1_3)
    end
  end
  
  function L125_2()
    local L0_3, L1_3
    L0_3 = L18_2
    if L0_3 ~= 4 then
      L0_3 = L0_1
      L0_3 = L0_3.audio
      L0_3 = L0_3.play
      L1_3 = "button_press"
      L0_3(L1_3)
      L0_3 = L118_2
      L0_3()
      L0_3 = L121_2
      L1_3 = 4
      L0_3(L1_3)
      L0_3 = L70_2
      L0_3()
    end
    L0_3 = L52_2
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.analytics
      L0_3 = L0_3.addDesignEvent
      L1_3 = "Onboarding:Marketplace:ChangeMarketTab:Facewear"
      L0_3(L1_3)
    end
  end
  
  function L126_2()
    local L0_3, L1_3
    L0_3 = L18_2
    if L0_3 ~= 5 then
      L0_3 = L0_1
      L0_3 = L0_3.audio
      L0_3 = L0_3.play
      L1_3 = "button_press"
      L0_3(L1_3)
      L0_3 = L118_2
      L0_3()
      L0_3 = L121_2
      L1_3 = 5
      L0_3(L1_3)
      L0_3 = L70_2
      L0_3()
    end
    L0_3 = L52_2
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.analytics
      L0_3 = L0_3.addDesignEvent
      L1_3 = "Onboarding:Marketplace:ChangeMarketTab:Neckwear"
      L0_3(L1_3)
    end
  end
  
  function L127_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = L18_2
    if L2_3 ~= 6 then
      L2_3 = L0_1
      L2_3 = L2_3.audio
      L2_3 = L2_3.play
      L3_3 = "button_press"
      L2_3(L3_3)
      L2_3 = L118_2
      L2_3()
      L2_3 = L121_2
      L3_3 = 6
      L2_3(L3_3)
      L2_3 = L70_2
      L2_3()
    end
    L2_3 = L52_2
    if L2_3 then
      L2_3 = L0_1
      L2_3 = L2_3.analytics
      L2_3 = L2_3.addDesignEvent
      L3_3 = "Onboarding:Marketplace:ChangeMarketTab:Trail"
      L2_3(L3_3)
    end
  end
  
  function L128_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = L18_2
    if L2_3 ~= 7 then
      L2_3 = L0_1
      L2_3 = L2_3.audio
      L2_3 = L2_3.play
      L3_3 = "button_press"
      L2_3(L3_3)
      L2_3 = L118_2
      L2_3()
      L2_3 = L121_2
      L3_3 = 7
      L2_3(L3_3)
      L2_3 = L70_2
      L2_3()
    end
    L2_3 = L52_2
    if L2_3 then
      L2_3 = L0_1
      L2_3 = L2_3.analytics
      L2_3 = L2_3.addDesignEvent
      L3_3 = "Onboarding:Marketplace:ChangeMarketTab:Feet"
      L2_3(L3_3)
    end
  end
  
  function L129_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = L18_2
    if L2_3 ~= 11 then
      L2_3 = L0_1
      L2_3 = L2_3.audio
      L2_3 = L2_3.play
      L3_3 = "button_press"
      L2_3(L3_3)
      L2_3 = L118_2
      L2_3()
      L2_3 = L121_2
      L3_3 = 11
      L2_3(L3_3)
      L2_3 = L70_2
      L2_3()
    end
    L2_3 = L52_2
    if L2_3 then
      L2_3 = L0_1
      L2_3 = L2_3.analytics
      L2_3 = L2_3.addDesignEvent
      L3_3 = "Onboarding:Marketplace:ChangeMarketTab:Backwear"
      L2_3(L3_3)
    end
  end
  
  function L130_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = L18_2
    if L3_3 ~= 8 then
      if not A2_3 then
        L3_3 = L0_1
        L3_3 = L3_3.audio
        L3_3 = L3_3.play
        L4_3 = "button_press"
        L3_3(L4_3)
      end
      L3_3 = nil
      L4_3 = L18_2
      if L4_3 == 1 then
        L4_3 = L24_2
        L5_3 = L17_2
        L4_3 = L4_3[L5_3]
        L3_3 = L4_3.key
      else
        L4_3 = L48_2
        L3_3 = L4_3[1]
      end
      L4_3 = L118_2
      L4_3()
      L4_3 = L121_2
      L5_3 = 8
      L6_3 = L3_3
      L4_3(L5_3, L6_3)
      L4_3 = L70_2
      L4_3()
    end
    L3_3 = L52_2
    if L3_3 then
      L3_3 = L0_1
      L3_3 = L3_3.analytics
      L3_3 = L3_3.addDesignEvent
      L4_3 = "Onboarding:Marketplace:ChangeMarketTab:Sales"
      L3_3(L4_3)
    end
  end
  
  function L131_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L29_2
    if L0_3 then
      L0_3 = L29_2
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      L29_2 = L0_3
    end
    L0_3 = L74_2
    L0_3.isVisible = false
    L0_3 = nil
    L1_3 = nil
    L2_3 = L0_1
    L2_3 = L2_3.data
    L2_3 = L2_3.playerInfo
    L2_3 = L2_3.showcase
    if L2_3 then
      L2_3 = L0_1
      L2_3 = L2_3.storeConfig
      L2_3 = L2_3.getItem
      L3_3 = L0_1
      L3_3 = L3_3.data
      L3_3 = L3_3.playerInfo
      L3_3 = L3_3.showcase
      L2_3 = L2_3(L3_3)
      L0_3 = L2_3.imagePath
      L2_3 = L0_1
      L2_3 = L2_3.storeConfig
      L2_3 = L2_3.getItem
      L3_3 = L0_1
      L3_3 = L3_3.data
      L3_3 = L3_3.playerInfo
      L3_3 = L3_3.showcase
      L2_3 = L2_3(L3_3)
      L1_3 = L2_3.key
    else
      L2_3 = L0_1
      L2_3 = L2_3.data
      L2_3 = L2_3.playerInfo
      L2_3 = L2_3.previewShowcase
      if L2_3 then
        L2_3 = L0_1
        L2_3 = L2_3.storeConfig
        L2_3 = L2_3.getItem
        L3_3 = L0_1
        L3_3 = L3_3.data
        L3_3 = L3_3.playerInfo
        L3_3 = L3_3.previewShowcase
        L2_3 = L2_3(L3_3)
        L0_3 = L2_3.imagePath
        L2_3 = L0_1
        L2_3 = L2_3.storeConfig
        L2_3 = L2_3.getItem
        L3_3 = L0_1
        L3_3 = L3_3.data
        L3_3 = L3_3.playerInfo
        L3_3 = L3_3.previewShowcase
        L2_3 = L2_3(L3_3)
        L1_3 = L2_3.key
      end
    end
    if L0_3 then
      L2_3 = display
      L2_3 = L2_3.newImageRect
      L3_3 = L0_3
      L4_3 = 32
      L5_3 = 36
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L29_2 = L2_3
      L2_3 = L29_2
      L2_3.x = 146
      L2_3 = L29_2
      L2_3.y = 290
      L2_3 = L0_1
      L2_3 = L2_3.storeConfig
      L2_3 = L2_3.getItemCategory
      L3_3 = tonumber
      L4_3 = L1_3
      L3_3, L4_3, L5_3 = L3_3(L4_3)
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      if L2_3 == "speed" then
        L3_3 = L29_2
        L3_3.x = 140
        L3_3 = L29_2
        L3_3.y = 284
      elseif L2_3 == "magnet" then
        L3_3 = L29_2
        L3_3.x = 142
        L3_3 = L29_2
        L3_3.y = 286
      end
      L3_3 = L29_2
      L4_3 = L28_2
      L4_3 = L4_3.isVisible
      L3_3.isVisible = L4_3
      L3_3 = L29_2
      L3_3 = L3_3.isVisible
      if L3_3 then
        L3_3 = L0_1
        L3_3 = L3_3.data
        L3_3 = L3_3.playerInfo
        L3_3 = L3_3.showcase
        if L3_3 then
          L3_3 = L74_2
          L3_3.isVisible = true
        end
      end
      L3_3 = L2_2
      L4_3 = L3_3
      L3_3 = L3_3.insert
      L5_3 = L29_2
      L3_3(L4_3, L5_3)
    end
  end
  
  function L132_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    L3_3 = L18_2
    if L3_3 ~= 9 then
      if not A2_3 then
        L3_3 = L0_1
        L3_3 = L3_3.audio
        L3_3 = L3_3.play
        L4_3 = "button_press"
        L3_3(L4_3)
      end
      L3_3 = L118_2
      L3_3()
      L3_3 = L10_2
      L3_3 = L3_3.clean
      L3_3()
      L3_3 = L10_2
      L3_3 = L3_3.init
      L4_3 = L31_2
      L5_3 = L2_2
      L3_3(L4_3, L5_3)
      L3_3 = L121_2
      L4_3 = 9
      L3_3(L4_3)
      L3_3 = L70_2
      L3_3()
      L3_3 = L131_2
      L3_3()
    end
    L3_3 = L52_2
    if L3_3 then
      L3_3 = L0_1
      L3_3 = L3_3.analytics
      L3_3 = L3_3.addDesignEvent
      L4_3 = "Onboarding:Marketplace:ChangeMarketTab:Powerups"
      L3_3(L4_3)
    end
  end
  
  function L133_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L62_2
    if L1_3 then
      return
    end
    L1_3 = L18_2
    if L1_3 == 1 then
      L1_3 = L118_2
      L1_3()
      L1_3 = nil
      L2_3 = L18_2
      if L2_3 == 1 then
        L2_3 = L24_2
        L3_3 = L17_2
        L2_3 = L2_3[L3_3]
        L1_3 = L2_3.key
      else
        L2_3 = L48_2
        L1_3 = L2_3[1]
      end
      L2_3 = L121_2
      L3_3 = 2
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
      L2_3 = L70_2
      L2_3()
      L2_3 = L52_2
      if L2_3 then
        L2_3 = L0_1
        L2_3 = L2_3.analytics
        L2_3 = L2_3.addDesignEvent
        L3_3 = "Onboarding:Marketplace:ChangeMarketTab:Skins"
        L2_3(L3_3)
      end
    else
      L1_3 = L18_2
      if L1_3 == 2 then
        L1_3 = L122_2
        L2_3 = L24_2
        L2_3 = L2_3[1]
        L2_3 = L2_3.key
        L1_3(L2_3)
      else
        L1_3 = L18_2
        if L1_3 == 9 then
          L1_3 = L118_2
          L1_3()
          L1_3 = L17_2
          L61_2 = L1_3
          L1_3 = L121_2
          L2_3 = 10
          L3_3 = L99_2
          L4_3 = L24_2
          L5_3 = L17_2
          L4_3 = L4_3[L5_3]
          L4_3 = L4_3.key
          L3_3, L4_3, L5_3 = L3_3(L4_3)
          L1_3(L2_3, L3_3, L4_3, L5_3)
          L1_3 = L70_2
          L1_3()
          L1_3 = L131_2
          L1_3()
          L1_3 = L52_2
          if L1_3 then
            L1_3 = L0_1
            L1_3 = L1_3.analytics
            L1_3 = L1_3.addDesignEvent
            L2_3 = "Onboarding:Marketplace:ChangeMarketTab:PowerupSkins"
            L1_3(L2_3)
          end
        else
          L1_3 = L18_2
          if L1_3 == 10 then
            L1_3 = L132_2
            L2_3 = A0_2
            L3_3 = A0_3
            L4_3 = true
            L1_3(L2_3, L3_3, L4_3)
          end
        end
      end
    end
  end
  
  function L134_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = {}
    L0_3.isModal = true
    L1_3 = L0_1
    L1_3 = L1_3.showOverlay
    L2_3 = "lua.overlays.buyGems"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  
  L135_2 = L0_1
  L135_2 = L135_2.newButton
  L136_2 = {}
  L136_2.image = "images/gui/market/buyGems.png"
  L136_2.width = 172
  L136_2.height = 46
  L136_2.onRelease = L134_2
  L136_2.x = 420
  L136_2.y = 44
  L135_2 = L135_2(L136_2)
  L136_2 = L3_2.new
  L137_2 = 0
  L138_2 = 0
  L139_2 = 100
  L140_2 = 250
  L141_2 = 58
  L142_2 = nil
  L143_2 = "market"
  
  function L144_2()
    local L0_3, L1_3
  end
  
  L145_2 = 43
  L136_2 = L136_2(L137_2, L138_2, L139_2, L140_2, L141_2, L142_2, L143_2, L144_2, L145_2)
  L27_2 = L136_2
  
  function L136_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = {}
    L1_3 = {}
    L1_3.image = "images/gui/market/categorySpecial.png"
    L2_3 = L130_2
    L1_3.onClick = L2_3
    L1_3.id = 8
    L1_3.name = "sale"
    L2_3 = {}
    L2_3.image = "images/gui/market/categoryAvatars.png"
    L3_3 = L123_2
    L2_3.onClick = L3_3
    L2_3.id = 1
    L2_3.name = "avatars"
    L3_3 = {}
    L3_3.image = "images/gui/market/categoryPowerups.png"
    L4_3 = L132_2
    L3_3.onClick = L4_3
    L3_3.id = 9
    L3_3.name = "powerups"
    L4_3 = {}
    L4_3.image = "images/gui/market/categoryHats.png"
    L5_3 = L124_2
    L4_3.onClick = L5_3
    L4_3.id = 3
    L4_3.name = "hat"
    L5_3 = {}
    L5_3.image = "images/gui/market/categoryGlasses.png"
    L6_3 = L125_2
    L5_3.onClick = L6_3
    L5_3.id = 4
    L5_3.name = "facewear"
    L6_3 = {}
    L6_3.image = "images/gui/market/categoryNeck.png"
    L7_3 = L126_2
    L6_3.onClick = L7_3
    L6_3.id = 5
    L6_3.name = "neck"
    L7_3 = {}
    L7_3.image = "images/gui/market/categoryTrails.png"
    L8_3 = L127_2
    L7_3.onClick = L8_3
    L7_3.id = 6
    L7_3.name = "trail"
    L8_3 = {}
    L8_3.image = "images/gui/market/categoryShoes.png"
    L9_3 = L128_2
    L8_3.onClick = L9_3
    L8_3.id = 7
    L8_3.name = "shoes"
    L9_3 = {}
    L9_3.image = "images/gui/market/categoryBackwear.png"
    L10_3 = L129_2
    L9_3.onClick = L10_3
    L9_3.id = 11
    L9_3.name = "backwear"
    L0_3[1] = L1_3
    L0_3[2] = L2_3
    L0_3[3] = L3_3
    L0_3[4] = L4_3
    L0_3[5] = L5_3
    L0_3[6] = L6_3
    L0_3[7] = L7_3
    L0_3[8] = L8_3
    L0_3[9] = L9_3
    L30_2 = L0_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.salesItem
    if L0_3 then
      L0_3 = system
      L0_3 = L0_3.getTimer
      L0_3 = L0_3()
      L0_3 = L0_3 / 1000
      L1_3 = pairs
      L2_3 = L0_1
      L2_3 = L2_3.database
      L2_3 = L2_3.salesItem
      L1_3, L2_3, L3_3 = L1_3(L2_3)
      for L4_3, L5_3 in L1_3, L2_3, L3_3 do
        L6_3 = type
        L7_3 = L5_3
        L6_3 = L6_3(L7_3)
        if L6_3 == "table" then
          L6_3 = L0_1
          L6_3 = L6_3.storeConfig
          L6_3 = L6_3.getItemCategory
          L7_3 = tonumber
          L8_3 = L5_3.i
          L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L7_3(L8_3)
          L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
          L7_3 = L5_3.y
          L7_3 = L7_3 - L0_3
          if L7_3 < 0 then
          else
            if L6_3 == "skins" then
              L7_3 = L59_2
              L8_3 = tostring
              L9_3 = L5_3.i
              L8_3 = L8_3(L9_3)
              L7_3 = L7_3[L8_3]
              if not L7_3 then
                L7_3 = L30_2
                L7_3 = L7_3[2]
                L7_3.sale = true
              end
            end
            L7_3 = 1
            L8_3 = L30_2
            L8_3 = #L8_3
            L9_3 = 1
            for L10_3 = L7_3, L8_3, L9_3 do
              L11_3 = L30_2
              L11_3 = L11_3[L10_3]
              L11_3 = L11_3.name
              if L6_3 == L11_3 then
                L11_3 = L59_2
                L12_3 = tostring
                L13_3 = L5_3.i
                L12_3 = L12_3(L13_3)
                L11_3 = L11_3[L12_3]
                if not L11_3 then
                  L11_3 = L30_2
                  L11_3 = L11_3[L10_3]
                  L11_3.sale = true
                end
              end
            end
          end
        end
      end
    end
    L0_3 = L0_1
    L0_3 = L0_3.storeConfig
    L0_3 = L0_3.isThereNewItems
    L1_3 = 101
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = L30_2
      L0_3 = L0_3[2]
      L0_3.newItem = true
    end
    L0_3 = L0_1
    L0_3 = L0_3.storeConfig
    L0_3 = L0_3.isThereNewItems
    L1_3 = 201
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = L30_2
      L0_3 = L0_3[3]
      L0_3.newItem = true
    end
    L0_3 = L0_1
    L0_3 = L0_3.storeConfig
    L0_3 = L0_3.isThereNewItems
    L1_3 = 301
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = L30_2
      L0_3 = L0_3[4]
      L0_3.newItem = true
    end
    L0_3 = L0_1
    L0_3 = L0_3.storeConfig
    L0_3 = L0_3.isThereNewItems
    L1_3 = 401
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = L30_2
      L0_3 = L0_3[5]
      L0_3.newItem = true
    end
    L0_3 = L0_1
    L0_3 = L0_3.storeConfig
    L0_3 = L0_3.isThereNewItems
    L1_3 = 501
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = L30_2
      L0_3 = L0_3[6]
      L0_3.newItem = true
    end
    L0_3 = L0_1
    L0_3 = L0_3.storeConfig
    L0_3 = L0_3.isThereNewItems
    L1_3 = 601
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = L30_2
      L0_3 = L0_3[7]
      L0_3.newItem = true
    end
    L0_3 = L0_1
    L0_3 = L0_3.storeConfig
    L0_3 = L0_3.isThereNewItems
    L1_3 = 701
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = L30_2
      L0_3 = L0_3[8]
      L0_3.newItem = true
    end
    L0_3 = L27_2
    L0_3 = L0_3.createTable
    L1_3 = L30_2
    L2_3 = L2_2
    L0_3(L1_3, L2_3)
  end
  
  function L137_2()
    local L0_3, L1_3
  end
  
  function L138_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L43_2
    if not L0_3 then
      return
    end
    L0_3 = L46_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L46_2
      L0_3(L1_3)
    end
    
    function L0_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
      L0_4 = L43_2
      L1_4 = L0_4
      L0_4 = L0_4.setFillColor
      L2_4 = unpack
      L3_4 = {}
      L4_4 = 1
      L5_4 = 1
      L6_4 = 1
      L3_4[1] = L4_4
      L3_4[2] = L5_4
      L3_4[3] = L6_4
      L2_4, L3_4, L4_4, L5_4, L6_4 = L2_4(L3_4)
      L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4)
    end
    
    function L1_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
      L0_4 = L43_2
      L1_4 = L0_4
      L0_4 = L0_4.setFillColor
      L2_4 = unpack
      L3_4 = {}
      L4_4 = 1
      L5_4 = 0.2
      L6_4 = 0.2
      L3_4[1] = L4_4
      L3_4[2] = L5_4
      L3_4[3] = L6_4
      L2_4, L3_4, L4_4, L5_4, L6_4 = L2_4(L3_4)
      L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4)
    end
    
    L2_3 = 0
    
    function L3_3()
      local L0_4, L1_4
      L0_4 = L2_3
      L0_4 = L0_4 + 1
      L2_3 = L0_4
      L0_4 = L2_3
      L0_4 = L0_4 % 2
      if L0_4 == 0 then
        L0_4 = L1_3
        L0_4()
      else
        L0_4 = L0_3
        L0_4()
      end
    end
    
    L4_3 = timer
    L4_3 = L4_3.performWithDelay
    L5_3 = 200
    L6_3 = L3_3
    L7_3 = 3
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L46_2 = L4_3
    L4_3 = L1_3
    L4_3()
  end
  
  function L139_2()
    local L0_3, L1_3
    L0_3 = L22_2
    L0_3 = L0_3.dataTable
    if L0_3 then
      L0_3 = L22_2
      L0_3 = L0_3.dataTable
      L1_3 = L17_2
      L0_3 = L0_3[L1_3]
      if L0_3 then
        L0_3 = L22_2
        L0_3 = L0_3.dataTable
        L1_3 = L17_2
        L0_3 = L0_3[L1_3]
        L0_3 = L0_3.group
        if L0_3 then
          L1_3 = L0_3.isLocked
          L1_3 = L1_3()
          if L1_3 then
            L1_3 = L0_3.bounceLock
            L1_3()
            L1_3 = L138_2
            L1_3()
            L1_3 = true
            return L1_3
          end
        end
      end
    end
    L0_3 = false
    return L0_3
  end
  
  function L140_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = math
    L2_3 = L2_3.ceil
    L3_3 = A0_3 / A1_3
    return L2_3(L3_3)
  end
  
  function L141_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = L0_1
    L1_3 = L1_3.database
    L1_3 = L1_3.getMoney
    L1_3 = L1_3()
    L2_3 = L0_1
    L2_3 = L2_3.storeConfig
    L2_3 = L2_3.getCoinPrice
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L3_3 = print
    L4_3 = "Enough coins? "
    L5_3 = L1_3
    L6_3 = "/"
    L7_3 = L2_3
    L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3
    L3_3(L4_3)
    L3_3 = L1_3 >= L2_3
    return L3_3
  end
  
  function L142_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L0_1
    L1_3 = L1_3.database
    L1_3 = L1_3.getMoney
    L1_3 = L1_3()
    L2_3 = L0_1
    L2_3 = L2_3.storeConfig
    L2_3 = L2_3.getCoinPrice
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    if L1_3 >= L2_3 then
      L3_3 = 0
      return L3_3
    else
      L3_3 = L140_2
      L4_3 = L2_3 - L1_3
      L5_3 = 10
      return L3_3(L4_3, L5_3)
    end
  end
  
  function L143_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L0_1
    L1_3 = L1_3.database
    L1_3 = L1_3.getMoney
    L1_3 = L1_3()
    L2_3 = L0_1
    L2_3 = L2_3.storeConfig
    L2_3 = L2_3.getCoinPrice
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    if L1_3 >= L2_3 then
      L3_3 = 0
      return L3_3
    else
      L3_3 = L2_3 - L1_3
      return L3_3
    end
  end
  
  function L144_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = L0_1
    L1_3 = L1_3.database
    L1_3 = L1_3.getMoney
    L1_3 = L1_3()
    L2_3 = L0_1
    L2_3 = L2_3.storeConfig
    L2_3 = L2_3.getCoinPrice
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    if L1_3 >= L2_3 then
      L3_3 = true
      return L3_3
    else
      L3_3 = L142_2
      L4_3 = A0_3
      L3_3 = L3_3(L4_3)
      L4_3 = L0_1
      L4_3 = L4_3.database
      L4_3 = L4_3.getGem
      L4_3 = L4_3()
      L5_3 = print
      L6_3 = "Enough gems? "
      L7_3 = L4_3
      L8_3 = "/"
      L9_3 = L3_3
      L6_3 = L6_3 .. L7_3 .. L8_3 .. L9_3
      L5_3(L6_3)
      L5_3 = L3_3 <= L4_3
      return L5_3
    end
  end
  
  function L40_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = L24_2
    L2_3 = L17_2
    L1_3 = L1_3[L2_3]
    if L1_3 then
      L2_3 = L1_3.key
      if L2_3 then
        L2_3 = L0_1
        L2_3 = L2_3.analytics
        L2_3 = L2_3.newEvent
        L3_3 = "design"
        L4_3 = {}
        L5_3 = "market:buyButton:press:"
        L6_3 = L1_3.key
        L5_3 = L5_3 .. L6_3
        L4_3.event_id = L5_3
        L5_3 = L0_1
        L5_3 = L5_3.database
        L5_3 = L5_3.getMoney
        L5_3 = L5_3()
        L4_3.value = L5_3
        L5_3 = L0_1
        L5_3 = L5_3.config
        L5_3 = L5_3.fullVersion
        L4_3.area = L5_3
        L2_3(L3_3, L4_3)
      end
    end
    L2_3 = L139_2
    L2_3 = L2_3()
    if L2_3 then
      if L1_3 then
        L2_3 = L1_3.key
        if L2_3 then
          L2_3 = L0_1
          L2_3 = L2_3.analytics
          L2_3 = L2_3.newEvent
          L3_3 = "design"
          L4_3 = {}
          L5_3 = "market:buyButton:locked:"
          L6_3 = L1_3.key
          L5_3 = L5_3 .. L6_3
          L4_3.event_id = L5_3
          L5_3 = L0_1
          L5_3 = L5_3.database
          L5_3 = L5_3.getMoney
          L5_3 = L5_3()
          L4_3.value = L5_3
          L5_3 = L0_1
          L5_3 = L5_3.config
          L5_3 = L5_3.fullVersion
          L4_3.area = L5_3
          L2_3(L3_3, L4_3)
        end
      end
      L2_3 = L0_1
      L2_3 = L2_3.audio
      L2_3 = L2_3.play
      L3_3 = "no_powerup"
      L2_3(L3_3)
    else
      L2_3 = L101_2
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      if not L2_3 then
        if L1_3 then
          L2_3 = L1_3.key
          if L2_3 then
            L2_3 = L0_1
            L2_3 = L2_3.analytics
            L2_3 = L2_3.newEvent
            L3_3 = "design"
            L4_3 = {}
            L5_3 = "market:buyButton:openBuyOptions:"
            L6_3 = L1_3.key
            L5_3 = L5_3 .. L6_3
            L4_3.event_id = L5_3
            L5_3 = L0_1
            L5_3 = L5_3.database
            L5_3 = L5_3.getMoney
            L5_3 = L5_3()
            L4_3.value = L5_3
            L5_3 = L0_1
            L5_3 = L5_3.config
            L5_3 = L5_3.fullVersion
            L4_3.area = L5_3
            L2_3(L3_3, L4_3)
          end
        end
        L2_3 = L1_3.key
        if L2_3 == "1003" then
          L3_3 = {}
          L3_3.isModal = true
          L4_3 = {}
          L4_3.cartType = "shop"
          L3_3.params = L4_3
          L4_3 = L0_1
          L4_3 = L4_3.showOverlay
          L5_3 = "lua.overlays.starterPackBuy"
          L6_3 = L3_3
          L4_3(L5_3, L6_3)
        else
          L3_3 = L1_3.saleTier
          if L3_3 then
            L3_3 = L1_3.saleKey
            if L3_3 then
              L2_3 = L1_3.saleKey
            end
          end
          L3_3 = {}
          L3_3.isModal = true
          L4_3 = {}
          L4_3.item = L1_3
          L3_3.params = L4_3
          L4_3 = L0_1
          L4_3 = L4_3.showOverlay
          L5_3 = "lua.overlays.marketBuy"
          L6_3 = L3_3
          L4_3(L5_3, L6_3)
        end
      end
    end
  end
  
  function L70_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = ""
    L1_3 = L18_2
    if L1_3 == 9 then
      L0_3 = "_locked"
    end
    L1_3 = L68_2
    L1_3 = L1_3.changeButtonImage
    L2_3 = "images/gui/market/"
    L3_3 = L72_2
    L4_3 = L71_2
    L3_3 = L3_3[L4_3]
    L4_3 = L0_3
    L5_3 = ".png"
    L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
    L1_3(L2_3)
    L1_3 = L73_2
    L2_3 = L71_2
    L1_3 = L1_3[L2_3]
    L2_3 = L112_2
    L2_3()
    L2_3 = L110_2
    L3_3 = L1_3
    L2_3(L3_3)
    L2_3 = L108_2
    L3_3 = L24_2
    L4_3 = L17_2
    L3_3 = L3_3[L4_3]
    L3_3 = L3_3.key
    L2_3(L3_3)
    L2_3 = L26_2
    L2_3()
    L2_3 = L35_2
    L3_3 = L18_2
    L4_3 = L17_2
    L2_3(L3_3, L4_3)
    L2_3 = L18_2
    if L2_3 == 8 then
      L2_3 = L107_2
      L2_3()
      return
    end
    L2_3 = L106_2
    L2_3()
  end
  
  function L69_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L18_2
    if L0_3 == 9 then
      return
    end
    L0_3 = {}
    L1_3 = {}
    L2_3 = L71_2
    L1_3.currentFilter = L2_3
    L0_3.params = L1_3
    L1_3 = L0_1
    L1_3 = L1_3.showOverlay
    L2_3 = "lua.overlays.editShopFilter"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  
  function L145_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L0_1
    L1_3 = L1_3.data
    L1_3 = L1_3.playerInfo
    L1_3 = L1_3.showcase
    if not L1_3 then
      L1_3 = tonumber
      L2_3 = L24_2
      L3_3 = L17_2
      L2_3 = L2_3[L3_3]
      L2_3 = L2_3.key
      L1_3 = L1_3(L2_3)
      if L1_3 and 1200 < L1_3 and L1_3 < 2100 then
        L2_3 = L0_1
        L2_3 = L2_3.data
        L2_3 = L2_3.playerInfo
        L2_3.previewShowcase = L1_3
      end
    end
  end
  
  function L146_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    if A1_3 then
      L2_3 = L17_2
      if L2_3 == A0_3 then
        L2_3 = L18_2
        if L2_3 ~= 1 then
          L2_3 = L18_2
          if L2_3 ~= 2 then
            L2_3 = L18_2
            if L2_3 ~= 9 then
              L2_3 = L18_2
              if L2_3 == 10 then
              end
            end
          end
        end
        return
    end
    else
      L17_2 = A0_3
      L2_3 = L108_2
      L3_3 = L24_2
      L4_3 = L17_2
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.key
      L2_3(L3_3)
      L2_3 = L35_2
      L3_3 = L18_2
      L4_3 = L17_2
      L2_3(L3_3, L4_3)
    end
    L2_3 = L145_2
    L3_3 = A0_3
    L2_3(L3_3)
    L2_3 = L131_2
    L2_3()
  end
  
  L147_2 = L0_1
  L147_2 = L147_2.newButton
  L148_2 = {}
  L148_2.image = "images/gui/common/buttonHome.png"
  L148_2.width = 90
  L148_2.height = 57
  L148_2.onRelease = L116_2
  L148_2.x = 50
  L148_2.y = 292
  L147_2 = L147_2(L148_2)
  
  function L148_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = tonumber
    L1_3 = L24_2
    L2_3 = L17_2
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.key
    L0_3 = L0_3(L1_3)
    L1_3 = L0_1
    L1_3 = L1_3.database
    L1_3 = L1_3.shouldUseMarketHelp
    L1_3 = L1_3()
    if L1_3 == 1 then
      L1_3 = L0_1
      L1_3 = L1_3.database
      L1_3 = L1_3.setMarketHelpInfo
      L1_3()
      L1_3 = L13_2
      L1_3.isVisible = false
    end
    L1_3 = L0_1
    L1_3 = L1_3.data
    L1_3 = L1_3.playerInfo
    L1_3 = L1_3.showcase
    if L1_3 then
      L1_3 = L0_1
      L1_3 = L1_3.comm
      L1_3 = L1_3.setPowerupShowcase
      L2_3 = 0
      L1_3(L2_3)
      L1_3 = L0_1
      L1_3 = L1_3.data
      L1_3 = L1_3.playerInfo
      L1_3.showcase = nil
      if L0_3 and 1200 < L0_3 then
        L1_3 = L0_1
        L1_3 = L1_3.data
        L1_3 = L1_3.playerInfo
        L1_3.previewShowcase = L0_3
      end
      L1_3 = L131_2
      L1_3()
      return
    end
    L1_3 = L101_2
    L2_3 = L24_2
    L3_3 = L17_2
    L2_3 = L2_3[L3_3]
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = L0_1
      L1_3 = L1_3.data
      L1_3 = L1_3.playerInfo
      L1_3.showcase = L0_3
      L1_3 = L0_1
      L1_3 = L1_3.comm
      L1_3 = L1_3.setPowerupShowcase
      L2_3 = L0_3
      L1_3(L2_3)
    elseif L0_3 and 1200 < L0_3 then
      L1_3 = L0_1
      L1_3 = L1_3.data
      L1_3 = L1_3.playerInfo
      L1_3.previewShowcase = L0_3
    end
    L1_3 = L131_2
    L1_3()
  end
  
  L149_2 = L0_1
  L149_2 = L149_2.newButton
  L150_2 = {}
  L150_2.image = "images/gui/market/selectedPU_1.png"
  L150_2.width = 100
  L150_2.height = 53
  L150_2.onRelease = L148_2
  L150_2.x = 150
  L150_2.y = 292
  L149_2 = L149_2(L150_2)
  L28_2 = L149_2
  L28_2.isVisible = false
  L149_2 = L0_1
  L149_2 = L149_2.newButton
  L150_2 = {}
  L150_2.image = "images/gui/market/buttonBuy.png"
  L151_2 = {}
  L152_2 = L0_1
  L152_2 = L152_2.localized
  L152_2 = L152_2.get
  L153_2 = "Buy"
  L152_2 = L152_2(L153_2)
  L151_2.string = L152_2
  L151_2.size = 32
  L150_2.text = L151_2
  L150_2.width = 83
  L150_2.height = 54
  L150_2.onRelease = L40_2
  L150_2.x = 437
  L150_2.y = 291
  L149_2 = L149_2(L150_2)
  L39_2 = L149_2
  L149_2 = L0_1
  L149_2 = L149_2.newButton
  L150_2 = {}
  L150_2.image = "images/gui/market/buttonSkins.png"
  L150_2.width = 57
  L150_2.height = 53
  L150_2.onRelease = L133_2
  L150_2.x = 365
  L150_2.y = 291
  L149_2 = L149_2(L150_2)
  L36_2 = L149_2
  L149_2 = display
  L149_2 = L149_2.newImageRect
  L150_2 = "images/gui/market/saleSmall.png"
  L151_2 = 23
  L152_2 = 20
  L149_2 = L149_2(L150_2, L151_2, L152_2)
  L37_2 = L149_2
  L149_2 = L36_2.width
  L149_2 = L149_2 * 0.5
  L149_2 = 365 - L149_2
  L37_2.x = L149_2
  L149_2 = L36_2.height
  L149_2 = L149_2 * 0.3
  L149_2 = 291 + L149_2
  L37_2.y = L149_2
  L37_2.isVisible = false
  L149_2 = L0_1
  L149_2 = L149_2.newButton
  L150_2 = {}
  L150_2.image = "images/gui/market/buttonSkinsBack.png"
  L150_2.width = 57
  L150_2.height = 53
  L150_2.onRelease = L133_2
  L150_2.x = 365
  L150_2.y = 291
  L149_2 = L149_2(L150_2)
  L38_2 = L149_2
  L149_2 = L0_1
  L149_2 = L149_2.newButton
  L150_2 = {}
  L151_2 = "images/gui/market/"
  L152_2 = L72_2[L71_2]
  L153_2 = ".png"
  L151_2 = L151_2 .. L152_2 .. L153_2
  L150_2.image = L151_2
  L150_2.width = 37
  L150_2.height = 36
  L150_2.onRelease = L69_2
  L151_2 = L83_2.x
  L150_2.x = L151_2
  L151_2 = L83_2.y
  L152_2 = L83_2.height
  L151_2 = L151_2 - L152_2
  L151_2 = L151_2 - 16
  L150_2.y = L151_2
  L149_2 = L149_2(L150_2)
  L68_2 = L149_2
  
  function L149_2(A0_3)
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
  
  function L26_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L0_3 = L22_2
    if L0_3 then
      L0_3 = L22_2
      L1_3 = L0_3
      L0_3 = L0_3.cleanUp
      L0_3(L1_3)
      L0_3 = nil
      L22_2 = L0_3
    end
    L0_3 = {}
    L41_2 = L0_3
    L0_3 = 1
    L1_3 = L24_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L24_2
      L4_3 = L4_3[L3_3]
      L5_3 = L4_3.imagePath
      L6_3 = L4_3.plate
      L7_3 = L101_2
      L8_3 = L4_3
      L7_3 = L7_3(L8_3)
      L4_3.skinTitle = nil
      L8_3 = L18_2
      if L8_3 == 1 and L7_3 then
        L8_3 = L59_2
        L9_3 = tostring
        L10_3 = L4_3.key
        L9_3 = L9_3(L10_3)
        L8_3 = L8_3[L9_3]
        if L8_3 then
          L9_3 = L8_3.s
          if L9_3 and L9_3 ~= 0 then
            L10_3 = L0_1
            L10_3 = L10_3.storeConfig
            L10_3 = L10_3.getItem
            L11_3 = tonumber
            L12_3 = L9_3
            L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L11_3(L12_3)
            L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
            L11_3 = L0_1
            L11_3 = L11_3.storeConfig
            L11_3 = L11_3.getItemCategory
            L12_3 = tonumber
            L13_3 = L9_3
            L12_3, L13_3, L14_3, L15_3, L16_3 = L12_3(L13_3)
            L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3)
            L12_3 = "images/gui/market/items/"
            L13_3 = L11_3
            L14_3 = "/"
            L15_3 = L9_3
            L16_3 = ".png"
            L5_3 = L12_3 .. L13_3 .. L14_3 .. L15_3 .. L16_3
            L6_3 = L10_3.plate
            L12_3 = L10_3.title
            L4_3.skinTitle = L12_3
          end
        end
      end
      L8_3 = L41_2
      L9_3 = L41_2
      L9_3 = #L9_3
      L9_3 = L9_3 + 1
      L10_3 = L0_1
      L10_3 = L10_3.tableUtils
      L10_3 = L10_3.deepCopy
      L11_3 = L4_3
      L10_3 = L10_3(L11_3)
      L8_3[L9_3] = L10_3
      L8_3 = L41_2
      L9_3 = L41_2
      L9_3 = #L9_3
      L8_3 = L8_3[L9_3]
      L8_3.image = L5_3
      L8_3 = L41_2
      L9_3 = L41_2
      L9_3 = #L9_3
      L8_3 = L8_3[L9_3]
      L8_3.bought = L7_3
      L8_3 = L41_2
      L9_3 = L41_2
      L9_3 = #L9_3
      L8_3 = L8_3[L9_3]
      L9_3 = L41_2
      L9_3 = #L9_3
      L8_3.index = L9_3
      L8_3 = L41_2
      L9_3 = L41_2
      L9_3 = #L9_3
      L8_3 = L8_3[L9_3]
      L8_3.plateIndex = L6_3
    end
    L0_3 = L8_2
    L0_3 = L0_3.newList
    L1_3 = {}
    L2_3 = L41_2
    L1_3.data = L2_3
    L2_3 = L137_2
    L1_3.onRelease = L2_3
    L2_3 = L146_2
    L1_3.onScrollEnd = L2_3
    L1_3.left = 250
    L1_3.right = 0
    L1_3.width = 80
    L1_3.height = 96
    
    function L2_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4, L19_4
      L1_4 = display
      L1_4 = L1_4.newGroup
      L1_4 = L1_4()
      L2_4 = false
      L3_4 = false
      L4_4 = nil
      L5_4 = nil
      L6_4 = nil
      L7_4 = nil
      L8_4 = nil
      L9_4 = A0_4.bought
      if not L9_4 then
        L9_4 = A0_4.weeklyPrice
        if not L9_4 then
          L9_4 = A0_4.spinningPrize
          if not L9_4 then
            L9_4 = A0_4.achievementPrize
            if not L9_4 then
              goto lbl_21
            end
          end
        end
      end
      L5_4 = " "
      goto lbl_72
      ::lbl_21::
      L9_4 = A0_4.price
      if L9_4 then
        L5_4 = A0_4.price
        L9_4 = display
        L9_4 = L9_4.newImageRect
        L10_4 = "images/gui/market/pricetag.png"
        L11_4 = 60
        L12_4 = 18
        L9_4 = L9_4(L10_4, L11_4, L12_4)
        L9_4.x = 40
        L9_4.y = 82
        L11_4 = L1_4
        L10_4 = L1_4.insert
        L12_4 = L9_4
        L10_4(L11_4, L12_4)
      else
        L9_4 = A0_4.gemPrice
        if L9_4 then
          L5_4 = A0_4.gemPrice
          L9_4 = display
          L9_4 = L9_4.newImageRect
          L10_4 = "images/gui/market/pricetagGems.png"
          L11_4 = 60
          L12_4 = 18
          L9_4 = L9_4(L10_4, L11_4, L12_4)
          L9_4.x = 40
          L9_4.y = 82
          L11_4 = L1_4
          L10_4 = L1_4.insert
          L12_4 = L9_4
          L10_4(L11_4, L12_4)
        else
          L9_4 = A0_4.tier
          if L9_4 then
            L9_4 = L9_2
            L9_4 = L9_4.getLocalizedPriceForProductId
            L10_4 = A0_4.key
            L9_4 = L9_4(L10_4)
            L5_4 = L9_4
            L9_4 = display
            L9_4 = L9_4.newImageRect
            L10_4 = "images/gui/market/pricetagTier.png"
            L11_4 = 60
            L12_4 = 18
            L9_4 = L9_4(L10_4, L11_4, L12_4)
            L9_4.x = 40
            L9_4.y = 82
            L11_4 = L1_4
            L10_4 = L1_4.insert
            L12_4 = L9_4
            L10_4(L11_4, L12_4)
          end
        end
      end
      ::lbl_72::
      L9_4 = A0_4.plateIndex
      if L9_4 then
        L9_4 = A0_4.clanTier
        if L9_4 then
          L9_4 = display
          L9_4 = L9_4.newImageRect
          L10_4 = "images/gui/market/items/plate/clan"
          L11_4 = A0_4.clanTier
          L12_4 = ".png"
          L10_4 = L10_4 .. L11_4 .. L12_4
          L11_4 = 35
          L12_4 = 15
          L9_4 = L9_4(L10_4, L11_4, L12_4)
          L7_4 = L9_4
        else
          L9_4 = display
          L9_4 = L9_4.newImageRect
          L10_4 = "images/gui/market/items/plate/"
          L11_4 = A0_4.plateIndex
          L12_4 = ".png"
          L10_4 = L10_4 .. L11_4 .. L12_4
          L11_4 = 35
          L12_4 = 15
          L9_4 = L9_4(L10_4, L11_4, L12_4)
          L7_4 = L9_4
        end
        L7_4.anchorY = 1
        L7_4.x = 42
        L7_4.y = 72
        L10_4 = L1_4
        L9_4 = L1_4.insert
        L11_4 = L7_4
        L9_4(L10_4, L11_4)
      end
      L9_4 = A0_4.image
      if L9_4 then
        L9_4 = A0_4.image
        L10_4 = display
        L10_4 = L10_4.newImageRect
        L11_4 = L9_4
        L12_4 = 52
        L13_4 = 58
        L10_4 = L10_4(L11_4, L12_4, L13_4)
        L6_4 = L10_4
        L6_4.anchorY = 1
        L6_4.x = 40
        L6_4.y = 61
        L11_4 = L1_4
        L10_4 = L1_4.insert
        L12_4 = L6_4
        L10_4(L11_4, L12_4)
        L10_4 = A0_4.bought
        if not L10_4 then
        end
        L10_4 = A0_4.key
        if L10_4 then
          L10_4 = A0_4.key
          if L10_4 == "402" then
            L10_4 = L0_1
            L10_4 = L10_4.onboarding
            L10_4 = L10_4.isActive
            if L10_4 == true then
              L10_4 = L0_1
              L10_4 = L10_4.onboarding
              L10_4 = L10_4.addGuiReference
              L11_4 = "market_glasses_icon"
              L12_4 = L1_4
              L10_4(L11_4, L12_4)
              L10_4 = L0_1
              L10_4 = L10_4.onboarding
              L10_4 = L10_4.showGlassesArrow
              L10_4()
            end
          end
        end
        L10_4 = A0_4.key
        if L10_4 then
          L10_4 = A0_4.key
          if L10_4 == "554" then
            L10_4 = L11_2
            L10_4 = L10_4.create
            L11_4 = L0_1
            L11_4 = L11_4.data
            L11_4 = L11_4.clans
            L11_4 = L11_4.emblem
            L12_4 = false
            L10_4 = L10_4(L11_4, L12_4)
            L8_4 = L10_4
            L10_4 = L8_4.setEmblemSize
            L11_4 = 0.23
            L10_4(L11_4)
            L11_4 = L8_4
            L10_4 = L8_4.rotate
            L12_4 = -10
            L10_4(L11_4, L12_4)
            L8_4.x = 40
            L8_4.y = 41
            L11_4 = L1_4
            L10_4 = L1_4.insert
            L12_4 = L8_4
            L10_4(L11_4, L12_4)
          end
        end
      end
      L9_4 = A0_4.master
      if L9_4 then
        L9_4 = L0_1
        L9_4 = L9_4.database
        L9_4 = L9_4.getWinsForAvatar
        L10_4 = A0_4.characterId
        L9_4 = L9_4(L10_4)
        L10_4 = A0_4.winsReq
        if L9_4 < L10_4 then
          L2_4 = true
        end
      else
        L9_4 = A0_4.bought
        if not L9_4 then
          L9_4 = A0_4.weeklyPrice
          if L9_4 then
            L2_4 = true
          else
            L9_4 = A0_4.spinningPrize
            if L9_4 then
              L2_4 = true
            else
              L9_4 = A0_4.seasonal
              if L9_4 then
                L9_4 = A0_4.seasonalActive
                if not L9_4 then
                  L2_4 = true
              end
              else
                L9_4 = A0_4.achievementPrize
                if L9_4 then
                  L2_4 = true
                else
                  L9_4 = A0_4.key
                  if L9_4 == "554" then
                    L9_4 = L0_1
                    L9_4 = L9_4.data
                    L9_4 = L9_4.clans
                    L9_4 = L9_4.inClan
                    if not L9_4 then
                      L2_4 = true
                  end
                  else
                    L9_4 = A0_4.characterId
                    if L9_4 then
                      L9_4 = L59_2
                      L10_4 = tostring
                      L11_4 = A0_4.characterId
                      L10_4 = L10_4(L11_4)
                      L9_4 = L9_4[L10_4]
                      if not L9_4 then
                        L2_4 = true
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      L9_4 = A0_4.minBuild
      if L9_4 then
        L9_4 = A0_4.minBuild
        L10_4 = L0_1
        L10_4 = L10_4.database
        L10_4 = L10_4.getMarketItemId
        L10_4 = L10_4()
        if L9_4 >= L10_4 then
          L9_4 = A0_4.bought
          if not L9_4 then
            L9_4 = display
            L9_4 = L9_4.newImageRect
            L10_4 = "images/gui/market/newItemSmall.png"
            L11_4 = 23
            L12_4 = 20
            L9_4 = L9_4(L10_4, L11_4, L12_4)
            L9_4.x = 12
            L9_4.y = 81
            L11_4 = L1_4
            L10_4 = L1_4.insert
            L12_4 = L9_4
            L10_4(L11_4, L12_4)
          end
        end
      end
      L9_4 = A0_4.saleKey
      if L9_4 then
        L9_4 = A0_4.bought
        if not L9_4 then
          L9_4 = nil
          L10_4 = nil
          L11_4 = A0_4.salePrice
          if L11_4 then
            L9_4 = "images/gui/market/saleCoins.png"
            L11_4 = math
            L11_4 = L11_4.ceil
            L12_4 = A0_4.salePrice
            L13_4 = A0_4.price
            L12_4 = L12_4 / L13_4
            L12_4 = L12_4 * 100
            L11_4 = L11_4(L12_4)
            L10_4 = L11_4 - 100
            L5_4 = A0_4.salePrice
          else
            L11_4 = A0_4.saleGem
            if L11_4 then
              L9_4 = "images/gui/market/saleGems.png"
              L11_4 = A0_4.gemTotalPrice
              if L11_4 then
                L11_4 = math
                L11_4 = L11_4.ceil
                L12_4 = A0_4.saleGem
                L13_4 = A0_4.gemTotalPrice
                L12_4 = L12_4 / L13_4
                L12_4 = L12_4 * 100
                L11_4 = L11_4(L12_4)
                L10_4 = L11_4 - 100
              else
                L11_4 = A0_4.gemPrice
                if L11_4 then
                  L11_4 = math
                  L11_4 = L11_4.ceil
                  L12_4 = A0_4.saleGem
                  L13_4 = A0_4.gemPrice
                  L12_4 = L12_4 / L13_4
                  L12_4 = L12_4 * 100
                  L11_4 = L11_4(L12_4)
                  L10_4 = L11_4 - 100
                end
              end
              L11_4 = A0_4.price
              if not L11_4 then
                L5_4 = A0_4.saleGem
              end
            else
              L11_4 = A0_4.saleTier
              if L11_4 then
                L11_4 = A0_4.tier
                if L11_4 then
                  L9_4 = "images/gui/market/saleCash.png"
                  L11_4 = math
                  L11_4 = L11_4.ceil
                  L12_4 = A0_4.saleTier
                  L13_4 = A0_4.tier
                  L12_4 = L12_4 / L13_4
                  L12_4 = L12_4 * 100
                  L11_4 = L11_4(L12_4)
                  L10_4 = L11_4 - 100
                  L11_4 = A0_4.price
                  if not L11_4 then
                    L11_4 = L9_2
                    L11_4 = L11_4.getLocalizedPrice
                    L12_4 = A0_4.saleTier
                    L13_4 = A0_4.key
                    L11_4 = L11_4(L12_4, L13_4)
                    L5_4 = L11_4
                  end
                end
              end
            end
          end
          if L9_4 and L10_4 then
            L11_4 = display
            L11_4 = L11_4.newImageRect
            L12_4 = "images/gui/market/timeleftGeneral.png"
            L13_4 = 74
            L14_4 = 19
            L11_4 = L11_4(L12_4, L13_4, L14_4)
            L11_4.x = 40
            L11_4.y = 68
            L13_4 = L1_4
            L12_4 = L1_4.insert
            L14_4 = L11_4
            L12_4(L13_4, L14_4)
            L12_4 = L0_1
            L12_4 = L12_4.newText
            L13_4 = {}
            L14_4 = L149_2
            L15_4 = A0_4.saleTime
            L14_4 = L14_4(L15_4)
            L13_4.string = L14_4
            L13_4.size = 10
            L14_4 = L11_4.x
            L14_4 = L14_4 - 12
            L13_4.x = L14_4
            L14_4 = L11_4.y
            L13_4.y = L14_4
            L14_4 = {}
            L15_4 = 1
            L16_4 = 1
            L17_4 = 1
            L14_4[1] = L15_4
            L14_4[2] = L16_4
            L14_4[3] = L17_4
            L13_4.color = L14_4
            L13_4.ax = 0
            L12_4 = L12_4(L13_4)
            L14_4 = L1_4
            L13_4 = L1_4.insert
            L15_4 = L12_4
            L13_4(L14_4, L15_4)
            L13_4 = display
            L13_4 = L13_4.newImageRect
            L14_4 = L9_4
            L15_4 = 40
            L16_4 = 35
            L13_4 = L13_4(L14_4, L15_4, L16_4)
            L13_4.x = 48
            L13_4.y = 15
            L15_4 = L1_4
            L14_4 = L1_4.insert
            L16_4 = L13_4
            L14_4(L15_4, L16_4)
            L14_4 = L0_1
            L14_4 = L14_4.newText
            L15_4 = {}
            L16_4 = L10_4
            L17_4 = "%"
            L16_4 = L16_4 .. L17_4
            L15_4.string = L16_4
            L15_4.size = 10
            L16_4 = L13_4.x
            L15_4.x = L16_4
            L16_4 = L13_4.y
            L16_4 = L16_4 + 4
            L15_4.y = L16_4
            L16_4 = {}
            L17_4 = 1
            L18_4 = 1
            L19_4 = 1
            L16_4[1] = L17_4
            L16_4[2] = L18_4
            L16_4[3] = L19_4
            L15_4.color = L16_4
            L14_4 = L14_4(L15_4)
            L16_4 = L1_4
            L15_4 = L1_4.insert
            L17_4 = L14_4
            L15_4(L16_4, L17_4)
          end
        end
      end
      L9_4 = A0_4.seasonalActive
      if L9_4 then
        L9_4 = A0_4.bought
        if not L9_4 then
          L9_4 = display
          L9_4 = L9_4.newImageRect
          L10_4 = "images/gui/market/timeleftGeneral.png"
          L11_4 = 74
          L12_4 = 19
          L9_4 = L9_4(L10_4, L11_4, L12_4)
          L9_4.x = 40
          L9_4.y = 68
          L11_4 = L1_4
          L10_4 = L1_4.insert
          L12_4 = L9_4
          L10_4(L11_4, L12_4)
          L10_4 = L0_1
          L10_4 = L10_4.newText
          L11_4 = {}
          L12_4 = L149_2
          L13_4 = A0_4.saleTime
          L12_4 = L12_4(L13_4)
          L11_4.string = L12_4
          L11_4.size = 10
          L12_4 = L9_4.x
          L12_4 = L12_4 - 12
          L11_4.x = L12_4
          L12_4 = L9_4.y
          L11_4.y = L12_4
          L12_4 = {}
          L13_4 = 1
          L14_4 = 1
          L15_4 = 1
          L12_4[1] = L13_4
          L12_4[2] = L14_4
          L12_4[3] = L15_4
          L11_4.color = L12_4
          L11_4.ax = 0
          L10_4 = L10_4(L11_4)
          L12_4 = L1_4
          L11_4 = L1_4.insert
          L13_4 = L10_4
          L11_4(L12_4, L13_4)
        end
      end
      L9_4 = 42
      L10_4 = 40
      if L2_4 then
        L11_4 = display
        L11_4 = L11_4.newImageRect
        L12_4 = "images/gui/market/masterLocked.png"
        L13_4 = 37
        L14_4 = 37
        L11_4 = L11_4(L12_4, L13_4, L14_4)
        L4_4 = L11_4
        L4_4.x = 42
        L4_4.y = 40
        L12_4 = L1_4
        L11_4 = L1_4.insert
        L13_4 = L4_4
        L11_4(L12_4, L13_4)
        L3_4 = true
      end
      L11_4 = L0_1
      L11_4 = L11_4.newText
      L12_4 = {}
      L12_4.string = L5_4
      L12_4.size = 13
      L12_4.x = 38
      L12_4.y = 81
      L13_4 = {}
      L14_4 = 1
      L15_4 = 1
      L16_4 = 1
      L13_4[1] = L14_4
      L13_4[2] = L15_4
      L13_4[3] = L16_4
      L12_4.color = L13_4
      L11_4 = L11_4(L12_4)
      L13_4 = L1_4
      L12_4 = L1_4.insert
      L14_4 = L11_4
      L12_4(L13_4, L14_4)
      
      function L12_4()
        local L0_5, L1_5
        L0_5 = L3_4
        return L0_5
      end
      
      L1_4.isLocked = L12_4
      
      function L13_4()
        local L0_5, L1_5, L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5, L9_5
        L0_5 = L4_4
        if L0_5 then
          L0_5 = transition
          L0_5 = L0_5.cancel
          L1_5 = "lockVibration"
          L0_5(L1_5)
          L0_5 = transition
          L0_5 = L0_5.cancel
          L1_5 = "lockAnimation"
          L0_5(L1_5)
          L0_5 = nil
          L1_5 = nil
          L2_5 = nil
          L3_5 = nil
          
          function L4_5()
            local L0_6, L1_6
            L0_6 = transition
            L0_6 = L0_6.cancel
            L1_6 = "lockVibration"
            L0_6(L1_6)
          end
          
          function L5_5()
            local L0_6, L1_6
            L0_6 = L4_4
            L1_6 = L9_4
            L0_6.x = L1_6
            L0_6 = L4_4
            L1_6 = L10_4
            L0_6.y = L1_6
            L0_6 = L4_4
            L0_6.rotation = 0
            L0_6 = L4_4
            L0_6.xScale = 1
            L0_6 = L4_4
            L0_6.YScale = 1
          end
          
          function L6_5()
            local L0_6, L1_6, L2_6, L3_6
            L0_6 = transition
            L0_6 = L0_6.to
            L1_6 = L4_4
            L2_6 = {}
            L2_6.time = 100
            L2_6.delay = 300
            L2_6.xScale = 1
            L2_6.yScale = 1
            L2_6.rotation = 0
            L3_6 = L9_4
            L2_6.x = L3_6
            L3_6 = L10_4
            L2_6.y = L3_6
            L3_6 = L4_5
            L2_6.onStart = L3_6
            L2_6.tag = "lockAnimation"
            L3_6 = L5_5
            L2_6.onCancel = L3_6
            L0_6(L1_6, L2_6)
          end
          
          function L0_5()
            local L0_6, L1_6, L2_6, L3_6
            L0_6 = transition
            L0_6 = L0_6.to
            L1_6 = L4_4
            L2_6 = {}
            L2_6.time = 66
            L3_6 = L9_4
            L3_6 = L3_6 - 3
            L2_6.x = L3_6
            L2_6.rotation = -4
            L3_6 = L1_5
            L2_6.onComplete = L3_6
            L2_6.tag = "lockVibration"
            L0_6(L1_6, L2_6)
          end
          
          function L1_5()
            local L0_6, L1_6, L2_6, L3_6
            L0_6 = transition
            L0_6 = L0_6.to
            L1_6 = L4_4
            L2_6 = {}
            L2_6.time = 66
            L3_6 = L9_4
            L3_6 = L3_6 + 3
            L2_6.x = L3_6
            L2_6.rotation = 4
            L3_6 = L0_5
            L2_6.onComplete = L3_6
            L2_6.tag = "lockVibration"
            L0_6(L1_6, L2_6)
          end
          
          function L3_5()
            local L0_6, L1_6, L2_6, L3_6
            L0_6 = transition
            L0_6 = L0_6.to
            L1_6 = L4_4
            L2_6 = {}
            L2_6.time = 80
            L3_6 = L10_4
            L3_6 = L3_6 - 2
            L2_6.y = L3_6
            L3_6 = L2_5
            L2_6.onComplete = L3_6
            L2_6.tag = "lockVibration"
            L0_6(L1_6, L2_6)
          end
          
          function L2_5()
            local L0_6, L1_6, L2_6, L3_6
            L0_6 = transition
            L0_6 = L0_6.to
            L1_6 = L4_4
            L2_6 = {}
            L2_6.time = 80
            L3_6 = L10_4
            L3_6 = L3_6 + 2
            L2_6.y = L3_6
            L3_6 = L3_5
            L2_6.onComplete = L3_6
            L2_6.tag = "lockVibration"
            L0_6(L1_6, L2_6)
          end
          
          L7_5 = L0_5
          L7_5()
          L7_5 = L3_5
          L7_5()
          L7_5 = transition
          L7_5 = L7_5.to
          L8_5 = L4_4
          L9_5 = {}
          L9_5.time = 80
          L9_5.xScale = 1.7
          L9_5.yScale = 1.7
          L9_5.onComplete = L6_5
          L9_5.onCancel = L5_5
          L9_5.tag = "lockAnimation"
          L7_5(L8_5, L9_5)
        end
      end
      
      L1_4.bounceLock = L13_4
      
      function L14_4(A0_5)
        local L1_5, L2_5, L3_5, L4_5
        if A0_5 < 0 then
          A0_5 = 0
        elseif 1 < A0_5 then
          A0_5 = 1
        end
        L1_5 = 0.2
        L2_5 = L1_5 * A0_5
        L2_5 = 1 + L2_5
        L3_5 = L7_4
        if L3_5 then
          L3_5 = L7_4
          L3_5.xScale = L2_5
          L3_5 = L7_4
          L3_5.yScale = L2_5
        end
        L3_5 = L6_4
        if L3_5 then
          L3_5 = L6_4
          L3_5.xScale = L2_5
          L3_5 = L6_4
          L3_5.yScale = L2_5
        end
        L3_5 = L8_4
        if L3_5 then
          L3_5 = L8_4
          L4_5 = L2_5 * 0.23
          L3_5.xScale = L4_5
          L3_5 = L8_4
          L4_5 = L2_5 * 0.23
          L3_5.yScale = L4_5
          L3_5 = L8_4
          L4_5 = L2_5 - 1
          L4_5 = 39 * L4_5
          L4_5 = 39 - L4_5
          L3_5.y = L4_5
        end
      end
      
      L1_4.updateHighlight = L14_4
      return L1_4
    end
    
    L1_3.callback = L2_3
    L0_3 = L0_3(L1_3)
    L22_2 = L0_3
    L0_3 = L22_2
    L0_3.anchorX = 0
    L0_3 = L22_2
    L0_3.anchorY = 1
    L0_3 = L22_2
    L0_3.anchorChildren = true
    L0_3 = L22_2
    L0_3.x = 145
    L0_3 = L22_2
    L0_3.y = 269
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L22_2
    L0_3(L1_3, L2_3)
    L0_3 = L22_2
    L1_3 = L0_3
    L0_3 = L0_3.startAt
    L2_3 = L17_2
    L0_3(L1_3, L2_3)
    L0_3 = L103_2
    L1_3 = L17_2
    L0_3(L1_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L66_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L68_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L12_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L13_2
    L0_3(L1_3, L2_3)
  end
  
  function L150_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A1_2
    L1_3 = L1_3.params
    if L1_3 then
      L1_3 = A1_2
      L1_3 = L1_3.params
      L1_3 = L1_3.highlightItemId
      if L1_3 then
        L1_3 = print
        L2_3 = "Got To hilight"
        L1_3(L2_3)
        L1_3 = L53_2
        L2_3 = A1_2
        L2_3 = L2_3.params
        L2_3 = L2_3.highlightItemId
        L1_3 = L1_3(L2_3)
        L0_3 = L1_3
        if not L0_3 then
          L1_3 = false
          return L1_3
        end
        L1_3 = L0_1
        L1_3 = L1_3.storeConfig
        L1_3 = L1_3.getMarketItem
        L2_3 = A1_2
        L2_3 = L2_3.params
        L2_3 = L2_3.highlightItemId
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L2_3 = false
          return L2_3
        end
        L2_3 = nil
        L3_3 = L98_2
        L4_3 = A1_2
        L4_3 = L4_3.params
        L4_3 = L4_3.highlightItemId
        L3_3 = L3_3(L4_3)
        if L3_3 then
          L3_3 = L99_2
          L4_3 = A1_2
          L4_3 = L4_3.params
          L4_3 = L4_3.highlightItemId
          L3_3 = L3_3(L4_3)
          L2_3 = L3_3
        else
          L3_3 = L1_3.characterId
          if L3_3 then
            L2_3 = L1_3.characterId
          end
        end
        L3_3 = L121_2
        L4_3 = L0_3
        L5_3 = L2_3
        L3_3(L4_3, L5_3)
        L3_3 = L112_2
        L3_3()
        L3_3 = L100_2
        L4_3 = A1_2
        L4_3 = L4_3.params
        L4_3 = L4_3.highlightItemId
        L3_3 = L3_3(L4_3)
        L55_2 = L3_3
        L3_3 = L110_2
        L3_3()
        L3_3 = L108_2
        L4_3 = L24_2
        L5_3 = L17_2
        L4_3 = L4_3[L5_3]
        L4_3 = L4_3.key
        L3_3(L4_3)
        L3_3 = nil
        L55_2 = L3_3
        L3_3 = A1_2
        L3_3.params = nil
        L3_3 = L26_2
        L3_3()
        L3_3 = L35_2
        L4_3 = L18_2
        L5_3 = L17_2
        L3_3(L4_3, L5_3)
        L3_3 = true
        return L3_3
      end
    end
    L1_3 = false
    return L1_3
  end
  
  function L151_2()
    local L0_3, L1_3, L2_3
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L80_2
    L0_3(L1_3, L2_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L81_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L65_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L75_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L42_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L84_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L83_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L68_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L76_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L12_2
    L0_3(L1_3, L2_3)
    L0_3 = L12_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L27_2
    L2_3 = L2_3.getTable
    L2_3 = L2_3()
    L0_3(L1_3, L2_3)
    L0_3 = L12_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L79_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L135_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L77_2
    L0_3(L1_3, L2_3)
    L0_3 = L12_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L78_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L66_2
    L0_3(L1_3, L2_3)
    L0_3 = L12_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L147_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L39_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L28_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L13_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L74_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L36_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L38_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L37_2
    L0_3(L1_3, L2_3)
  end
  
  function L152_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = true
    L62_2 = L0_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L147_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L28_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L39_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L36_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L38_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L68_2
    L0_3(L1_3)
    L0_3 = L10_2
    L0_3 = L0_3.clean
    L0_3()
    L0_3 = L46_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L46_2
      L0_3(L1_3)
    end
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "updateMoneyLabel"
    L3_3 = L33_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "boughtStarterPack"
    L3_3 = L34_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L118_2
    L0_3()
    L0_3 = false
    L1_3 = 1
    L2_3 = L49_2
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L49_2
      L5_3 = L5_3[L4_3]
      L6_3 = L48_2
      L6_3 = L6_3[L4_3]
      if L5_3 ~= L6_3 then
        L0_3 = true
      end
    end
    L1_3 = L66_2
    if L1_3 then
      L1_3 = L66_2
      L1_3 = L1_3.clean
      L1_3()
    end
    if L0_3 then
      L1_3 = L0_1
      L1_3 = L1_3.database
      L1_3 = L1_3.setAvatarData
      L2_3 = L48_2
      L1_3(L2_3)
      L1_3 = L0_1
      L1_3 = L1_3.comm
      L1_3 = L1_3.setActiveCreature
      L1_3()
    end
    L1_3 = L56_2
    if L1_3 then
      L1_3 = L0_1
      L1_3 = L1_3.comm
      L1_3 = L1_3.setPowerupSkin
      L1_3()
    end
    L1_3 = L0_1
    L1_3 = L1_3.database
    L1_3 = L1_3.setMarketItemId
    L2_3 = L0_1
    L2_3 = L2_3.config
    L2_3 = L2_3.localVersion
    L1_3(L2_3)
    L1_3 = 0
    L51_2 = L1_3
    L1_3 = L20_2
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = L20_2
      L1_3(L2_3)
      L1_3 = nil
      L20_2 = L1_3
    end
    L1_3 = L21_2
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = L21_2
      L1_3(L2_3)
      L1_3 = nil
      L21_2 = L1_3
    end
    L1_3 = transition
    L1_3 = L1_3.cancel
    L2_3 = "trails"
    L1_3(L2_3)
    L1_3 = L45_2
    if L1_3 then
      L1_3 = transition
      L1_3 = L1_3.cancel
      L2_3 = L45_2
      L1_3(L2_3)
      L1_3 = L45_2
      L2_3 = L1_3
      L1_3 = L1_3.removeSelf
      L1_3(L2_3)
      L1_3 = nil
      L45_2 = L1_3
    end
    L1_3 = L64_2
    if L1_3 then
      L1_3 = transition
      L1_3 = L1_3.cancel
      L2_3 = L64_2
      L1_3(L2_3)
    end
    L1_3 = L22_2
    if L1_3 then
      L1_3 = L22_2
      L2_3 = L1_3
      L1_3 = L1_3.cleanUp
      L1_3(L2_3)
      L1_3 = nil
      L22_2 = L1_3
    end
    L1_3 = L27_2
    if L1_3 then
      L1_3 = L27_2
      L1_3 = L1_3.cleanTable
      L1_3()
      L1_3 = nil
      L27_2 = L1_3
    end
    L1_3 = L31_2
    if L1_3 then
      L1_3 = L31_2
      L1_3 = L1_3.clean
      L1_3()
      L1_3 = nil
      L31_2 = L1_3
    end
    L1_3 = L0_1
    L1_3 = L1_3.database
    L1_3 = L1_3.shouldUseMarketHelp
    L1_3 = L1_3()
    if L1_3 == 1 then
      L1_3 = L0_1
      L1_3 = L1_3.database
      L1_3 = L1_3.setMarketHelpInfo
      L1_3()
    end
    L1_3 = L67_2
    if L1_3 then
      L1_3 = 1
      L2_3 = L67_2
      L2_3 = #L2_3
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = L67_2
        L5_3 = L5_3[L4_3]
        L5_3 = L5_3.clean
        L5_3()
        L5_3 = L67_2
        L5_3[L4_3] = nil
      end
      L1_3 = nil
      L67_2 = L1_3
    end
  end
  
  L2_1 = L152_2
  L152_2 = L1_1
  
  function L153_2(A0_3, A1_3)
    local L2_3, L3_3
    if A1_3 then
      L2_3 = A1_3.selectedFilter
      if L2_3 then
        L2_3 = A1_3.selectedFilter
        L3_3 = L71_2
        if L2_3 ~= L3_3 then
          L2_3 = A1_3.selectedFilter
          L71_2 = L2_3
          L2_3 = L70_2
          L2_3()
        end
    end
    else
      L2_3 = L0_1
      L2_3 = L2_3.comm
      L2_3 = L2_3.setCallback
      L3_3 = L85_2
      L2_3(L3_3)
      if A1_3 then
        L2_3 = type
        L3_3 = A1_3
        L2_3 = L2_3(L3_3)
        if L2_3 == "table" then
          L2_3 = L85_2
          L3_3 = A1_3
          L2_3(L3_3)
        end
      end
      L2_3 = L17_2
      if L2_3 then
        L2_3 = L105_2
        L3_3 = L17_2
        L2_3(L3_3)
      end
    end
  end
  
  L152_2.overlayEnded = L153_2
  
  function L152_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "updateMoneyLabel"
    L3_3 = L33_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "boughtStarterPack"
    L3_3 = L34_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L153_2 = L136_2
  L153_2()
  L153_2 = L151_2
  L153_2()
  L153_2 = L152_2
  L153_2()
  L153_2 = L150_2
  L153_2 = L153_2()
  if L153_2 then
  else
    L154_2 = L0_1
    L154_2 = L154_2.data
    L154_2 = L154_2.openAvatarsFirst
    if L154_2 then
      L154_2 = L0_1
      L154_2 = L154_2.data
      L154_2.openAvatarsFirst = false
      L154_2 = L122_2
      L154_2()
    else
      L154_2 = L130_2
      L155_2 = nil
      L156_2 = nil
      L157_2 = true
      L154_2(L155_2, L156_2, L157_2)
    end
  end
  L154_2 = L33_2
  L154_2()
  L154_2 = L90_2
  L154_2()
  L154_2 = L0_1
  L154_2 = L154_2.comm
  L154_2 = L154_2.setCallback
  L155_2 = L85_2
  L154_2(L155_2)
  L154_2 = L0_1
  L154_2 = L154_2.onboarding
  L154_2 = L154_2.isActive
  if L154_2 == true then
    L154_2 = L0_1
    L154_2 = L154_2.onboarding
    L154_2 = L154_2.updateDisplayGroups
    L155_2 = nil
    L156_2 = L2_2
    L154_2(L155_2, L156_2)
    L154_2 = L0_1
    L154_2 = L154_2.onboarding
    L154_2 = L154_2.addGuiReference
    L155_2 = "marketplace_back"
    L156_2 = L147_2
    L154_2(L155_2, L156_2)
  end
  if L52_2 then
    L154_2 = L0_1
    L154_2 = L154_2.analytics
    L154_2 = L154_2.addDesignEvent
    L155_2 = "Onboarding:Marketplace:EnterFromPostLobbyPrompt"
    L154_2(L155_2)
  else
    L154_2 = L0_1
    L154_2 = L154_2.analytics
    L154_2 = L154_2.addDesignEvent
    L155_2 = "Onboarding:Marketplace:Enter"
    L154_2(L155_2)
  end
end

L1_1.create = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    return
  end
  L3_2 = A0_2.view
  L4_2 = require
  L5_2 = "lua.modules.androidBackButton"
  L4_2 = L4_2(L5_2)
  L5_2 = L0_1
  L5_2.dealwithit = false
  L5_2 = L4_2.addBackButton
  L6_2 = "lua.scenes.mainMenu"
  L7_2 = "lua.scenes.marketplace"
  L5_2(L6_2, L7_2)
  L5_2 = L0_1
  L5_2 = L5_2.database
  L5_2 = L5_2.resetMarketNotification
  L5_2()
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = L4_2
    L0_3 = L0_3.removeBackButton
    L0_3()
    L0_3 = L0_1
    L0_3.dealwithit = false
  end
  
  L3_1 = L5_2
  L5_2 = L0_1
  L5_2 = L5_2.league
  if L5_2 then
    L5_2 = L0_1
    L5_2 = L5_2.league
    L5_2 = L5_2.currentLeague
    L6_2 = L0_1
    L6_2 = L6_2.league
    L6_2 = L6_2.promotionType
    L7_2 = {}
    L7_2.isModal = true
    L8_2 = {}
    L8_2.promotionType = L6_2
    L9_2 = tonumber
    L10_2 = L5_2
    L9_2 = L9_2(L10_2)
    L8_2.league = L9_2
    L7_2.params = L8_2
    L8_2 = L0_1
    L8_2 = L8_2.showOverlay
    L9_2 = "lua.overlays.leaguePromotion"
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = L0_1
    L8_2.league = nil
  else
    L5_2 = L0_1
    L5_2 = L5_2.reachedMaxGames
    if L5_2 then
      L5_2 = {}
      L6_2 = L0_1
      L6_2 = L6_2.reachedMaxGames
      L6_2 = L6_2.a
      L5_2.amount = L6_2
      L6_2 = L0_1
      L6_2 = L6_2.reachedMaxGames
      L6_2 = L6_2.b
      L5_2.limit = L6_2
      
      function L6_2()
        local L0_3, L1_3
        L0_3 = L0_1
        L0_3 = L0_3.database
        L0_3 = L0_3.increaseGem
        L1_3 = L5_2
        L1_3 = L1_3.amount
        L0_3(L1_3)
      end
      
      L5_2.onCloseCallback = L6_2
      L6_2 = L0_1
      L6_2 = L6_2.createCustomOverlay
      L7_2 = 48
      L8_2 = nil
      L9_2 = L5_2
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = L0_1
      L6_2.reachedMaxGames = nil
    end
  end
end

L1_1.show = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L3_2 = L0_1
    L3_2 = L3_2.removeScene
    L4_2 = "lua.scenes.marketplace"
    L3_2(L4_2)
    return
  end
  L3_2 = L2_1
  L3_2()
end

L1_1.hide = L4_1

function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = L3_1
  L2_2()
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
