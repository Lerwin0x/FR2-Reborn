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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2
  L2_2 = A0_2.view
  L3_2 = require
  L4_2 = "lua.modules.tableHelper"
  L3_2 = L3_2(L4_2)
  L4_2 = require
  L5_2 = "lua.network.tcpMessageFormat"
  L4_2 = L4_2(L5_2)
  L5_2 = require
  L6_2 = "lua.ads.videoModule"
  L5_2 = L5_2(L6_2)
  L6_2 = require
  L7_2 = "lua.modules.currencyDisplay"
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.create
  L6_2 = L6_2()
  L7_2 = nil
  L8_2 = nil
  L9_2 = nil
  L10_2 = nil
  L11_2 = nil
  L12_2 = nil
  L13_2 = nil
  L14_2 = {}
  L15_2 = 1
  L16_2 = nil
  L17_2 = nil
  L18_2 = nil
  L19_2 = false
  L20_2 = false
  L21_2 = false
  L22_2 = false
  L23_2 = L0_1
  L23_2 = L23_2.database
  L23_2 = L23_2.getMoney
  L23_2 = L23_2()
  L24_2 = L0_1
  L24_2 = L24_2.database
  L24_2 = L24_2.getGem
  L24_2 = L24_2()
  L25_2 = {}
  L26_2 = {}
  L27_2 = {}
  L28_2 = L0_1
  L28_2.overlayWithNetwork = true
  L28_2 = false
  L29_2 = L4_1
  if L29_2 == nil then
    L29_2 = {}
    L4_1 = L29_2
  end
  L29_2 = A1_2.params
  if L29_2 then
    L29_2 = A1_2.params
    L29_2 = L29_2.activeTable
    if L29_2 then
      L29_2 = A1_2.params
      L15_2 = L29_2.activeTable
      L29_2 = print
      L30_2 = "Overriding activetableint"
      L31_2 = L15_2
      L29_2(L30_2, L31_2)
  end
  else
    L29_2 = L0_1
    L29_2 = L29_2.data
    L29_2 = L29_2.dailyToClaim
    if 0 < L29_2 then
      L15_2 = 1
    else
      L29_2 = L0_1
      L29_2 = L29_2.data
      L29_2 = L29_2.achievementToClaim
      if 0 < L29_2 then
        L15_2 = 2
      end
    end
  end
  L29_2 = L0_1
  L29_2 = L29_2.newText
  L30_2 = {}
  L31_2 = L0_1
  L31_2 = L31_2.localized
  L31_2 = L31_2.get
  L32_2 = "Play every day to get bigger rewards"
  L31_2 = L31_2(L32_2)
  L30_2.string = L31_2
  L30_2.size = 15
  L31_2 = {}
  L32_2 = 0
  L33_2 = 0
  L34_2 = 0
  L31_2[1] = L32_2
  L31_2[2] = L33_2
  L31_2[3] = L34_2
  L30_2.color = L31_2
  L30_2.ax = 0.5
  L29_2 = L29_2(L30_2)
  L29_2.isVisible = false
  L29_2.x = 237
  L29_2.y = 52
  L30_2 = display
  L30_2 = L30_2.newRect
  L31_2 = 0
  L32_2 = 0
  L33_2 = display
  L33_2 = L33_2.contentWidth
  L34_2 = display
  L34_2 = L34_2.contentHeight
  L30_2 = L30_2(L31_2, L32_2, L33_2, L34_2)
  L30_2.anchorX = 0
  L30_2.anchorY = 0
  L32_2 = L30_2
  L31_2 = L30_2.setFillColor
  L33_2 = 0
  L34_2 = 0
  L35_2 = 0
  L36_2 = 0.5882352941176471
  L31_2(L32_2, L33_2, L34_2, L35_2, L36_2)
  L30_2.x = 0
  L30_2.y = 0
  L31_2 = display
  L31_2 = L31_2.newImageRect
  L32_2 = "images/gui/friends/mainWindow.png"
  L33_2 = 330
  L34_2 = 320
  L31_2 = L31_2(L32_2, L33_2, L34_2)
  L31_2.anchorX = 0.5
  L31_2.anchorY = 0
  L31_2.x = 240
  L31_2.y = 0
  L32_2 = display
  L32_2 = L32_2.newImageRect
  L33_2 = "images/gui/challenges/mainWindowPaperlist.png"
  L34_2 = 330
  L35_2 = 320
  L32_2 = L32_2(L33_2, L34_2, L35_2)
  L32_2.anchorX = 0.5
  L32_2.anchorY = 0
  L32_2.x = 240
  L32_2.y = 0
  L33_2 = display
  L33_2 = L33_2.newImageRect
  L34_2 = "images/gui/friends/header.png"
  L35_2 = 306
  L36_2 = 38
  L33_2 = L33_2(L34_2, L35_2, L36_2)
  L33_2.anchorX = 0.5
  L33_2.anchorY = 0
  L33_2.x = 240
  L33_2.y = 0
  L34_2 = L0_1
  L34_2 = L34_2.newText
  L35_2 = {}
  L36_2 = L0_1
  L36_2 = L36_2.localized
  L36_2 = L36_2.get
  L37_2 = "Friends"
  L36_2 = L36_2(L37_2)
  L35_2.string = L36_2
  L35_2.size = 30
  L36_2 = display
  L36_2 = L36_2.contentWidth
  L36_2 = L36_2 * 0.5
  L35_2.x = L36_2
  L35_2.y = 16
  L36_2 = {}
  L37_2 = 1
  L38_2 = 1
  L39_2 = 1
  L36_2[1] = L37_2
  L36_2[2] = L38_2
  L36_2[3] = L39_2
  L35_2.color = L36_2
  L34_2 = L34_2(L35_2)
  L35_2 = display
  L35_2 = L35_2.newImageRect
  L36_2 = "images/gui/challenges/buttonDaily.png"
  L37_2 = 62
  L38_2 = 62
  L35_2 = L35_2(L36_2, L37_2, L38_2)
  L35_2.anchorX = 0
  L35_2.anchorY = 0
  L35_2.x = 40
  L35_2.y = 60
  L36_2 = display
  L36_2 = L36_2.newImageRect
  L37_2 = "images/gui/challenges/buttonAchievements.png"
  L38_2 = 62
  L39_2 = 62
  L36_2 = L36_2(L37_2, L38_2, L39_2)
  L36_2.anchorX = 0
  L36_2.anchorY = 0
  L36_2.x = 40
  L36_2.y = 125
  L36_2.isVisible = false
  L37_2 = display
  L37_2 = L37_2.newImageRect
  L38_2 = "images/gui/challenges/buttonEarncoins.png"
  L39_2 = 62
  L40_2 = 62
  L37_2 = L37_2(L38_2, L39_2, L40_2)
  L37_2.anchorX = 0
  L37_2.anchorY = 0
  L37_2.x = 40
  L37_2.y = 190
  L37_2.isVisible = false
  L38_2 = L0_1
  L38_2 = L38_2.newText
  L39_2 = {}
  L40_2 = L0_1
  L40_2 = L40_2.localized
  L40_2 = L40_2.get
  L41_2 = "Loading"
  L40_2 = L40_2(L41_2)
  L39_2.string = L40_2
  L39_2.size = 20
  L40_2 = display
  L40_2 = L40_2.contentWidth
  L40_2 = L40_2 * 0.5
  L39_2.x = L40_2
  L39_2.y = 150
  L38_2 = L38_2(L39_2)
  L39_2 = 0
  
  function L40_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L35_2
    L0_3.isVisible = true
    L0_3 = L36_2
    L0_3.isVisible = false
    L0_3 = L37_2
    L0_3.isVisible = false
    L0_3 = L39_2
    if 1 < L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.analytics
      L0_3 = L0_3.newEvent
      L1_3 = "design"
      L2_3 = {}
      L2_3.event_id = "tab:daily"
      L3_3 = L0_1
      L3_3 = L3_3.config
      L3_3 = L3_3.fullVersion
      L2_3.area = L3_3
      L0_3(L1_3, L2_3)
    end
    L0_3 = L34_2
    L1_3 = L0_1
    L1_3 = L1_3.localized
    L1_3 = L1_3.get
    L2_3 = "DailyChallenges"
    L1_3 = L1_3(L2_3)
    L0_3.text = L1_3
    L0_3 = L39_2
    L0_3 = L0_3 + 1
    L39_2 = L0_3
  end
  
  function L41_2()
    local L0_3, L1_3, L2_3
    L0_3 = L35_2
    L0_3.isVisible = false
    L0_3 = L36_2
    L0_3.isVisible = false
    L0_3 = L37_2
    L0_3.isVisible = false
    L0_3 = L34_2
    L1_3 = L0_1
    L1_3 = L1_3.localized
    L1_3 = L1_3.get
    L2_3 = "Challenge Days"
    L1_3 = L1_3(L2_3)
    L0_3.text = L1_3
  end
  
  function L42_2()
    local L0_3, L1_3
    L0_3 = L12_2
    L0_3.isVisible = false
    L0_3 = L29_2
    L0_3.isVisible = false
  end
  
  function L43_2()
    local L0_3, L1_3
    L0_3 = L12_2
    L0_3.isVisible = true
    L0_3 = L29_2
    L0_3.isVisible = true
  end
  
  function L44_2()
    local L0_3, L1_3
    L0_3 = L13_2
    L0_3.isVisible = false
  end
  
  function L45_2()
    local L0_3, L1_3
    L0_3 = L13_2
    L0_3.isVisible = true
  end
  
  function L46_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L36_2
    L0_3.isVisible = true
    L0_3 = L35_2
    L0_3.isVisible = false
    L0_3 = L37_2
    L0_3.isVisible = false
    L0_3 = L0_1
    L0_3 = L0_3.analytics
    L0_3 = L0_3.newEvent
    L1_3 = "design"
    L2_3 = {}
    L2_3.event_id = "tab:achievements"
    L3_3 = L0_1
    L3_3 = L3_3.config
    L3_3 = L3_3.fullVersion
    L2_3.area = L3_3
    L0_3(L1_3, L2_3)
    L0_3 = L34_2
    L1_3 = L0_1
    L1_3 = L1_3.localized
    L1_3 = L1_3.get
    L2_3 = "Achievements"
    L1_3 = L1_3(L2_3)
    L0_3.text = L1_3
  end
  
  function L47_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L37_2
    L0_3.isVisible = true
    L0_3 = L36_2
    L0_3.isVisible = false
    L0_3 = L35_2
    L0_3.isVisible = false
    L0_3 = L0_1
    L0_3 = L0_3.analytics
    L0_3 = L0_3.newEvent
    L1_3 = "design"
    L2_3 = {}
    L2_3.event_id = "tab:earnCoins"
    L3_3 = L0_1
    L3_3 = L3_3.config
    L3_3 = L3_3.fullVersion
    L2_3.area = L3_3
    L0_3(L1_3, L2_3)
    L0_3 = L34_2
    L1_3 = L0_1
    L1_3 = L1_3.localized
    L1_3 = L1_3.get
    L2_3 = "EarnCoins"
    L1_3 = L1_3(L2_3)
    L0_3.text = L1_3
  end
  
  function L48_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = table
    L1_3 = L1_3.sort
    L2_3 = A0_3
    
    function L3_3(A0_4, A1_4)
      local L2_4, L3_4, L4_4
      L2_4 = 0
      L3_4 = 0
      L4_4 = A0_4.header
      if L4_4 then
        L2_4 = 3
      end
      L4_4 = A1_4.header
      if L4_4 then
        L3_4 = 3
      end
      L4_4 = A0_4.consecutiveSpecialRow
      if L4_4 then
        L2_4 = 2
      end
      L4_4 = A1_4.consecutiveSpecialRow
      if L4_4 then
        L3_4 = 2
      end
      L4_4 = A0_4.serverStatus
      if L4_4 then
        L4_4 = A0_4.serverStatus
        L2_4 = L4_4.p
        L4_4 = A0_4.serverStatus
        L4_4 = L4_4.c
        if L4_4 == 1 then
          L2_4 = -1
        end
      end
      L4_4 = A1_4.serverStatus
      if L4_4 then
        L4_4 = A1_4.serverStatus
        L3_4 = L4_4.p
        L4_4 = A1_4.serverStatus
        L4_4 = L4_4.c
        if L4_4 == 1 then
          L3_4 = -1
        end
      end
      L4_4 = L2_4 > L3_4
      return L4_4
    end
    
    L1_3(L2_3, L3_3)
  end
  
  function L49_2()
    local L0_3, L1_3
    L0_3 = L15_2
    if L0_3 == 1 then
      L0_3 = L7_2
      L0_3 = L0_3.cleanTable
      L0_3()
    else
      L0_3 = L15_2
      if L0_3 == 2 then
        L0_3 = L8_2
        L0_3 = L0_3.cleanTable
        L0_3()
      else
        L0_3 = L15_2
        if L0_3 == 3 then
          L0_3 = L9_2
          L0_3 = L0_3.cleanTable
          L0_3()
        else
          L0_3 = L15_2
          if L0_3 == 4 then
            L0_3 = L10_2
            L0_3 = L0_3.cleanTable
            L0_3()
          end
        end
      end
    end
  end
  
  function L50_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = L19_2
    if L2_3 then
      return
    end
    L2_3 = L49_2
    L3_3 = L15_2
    L2_3(L3_3)
    L2_3 = L42_2
    L2_3()
    L2_3 = L44_2
    L2_3()
    L15_2 = A0_3
    L2_3 = L0_1
    L2_3 = L2_3.playerInfo
    L3_3 = L15_2
    L2_3.awardsTable = L3_3
    L2_3 = L38_2
    L2_3 = L2_3.isVisible
    if L2_3 then
      return
    end
    if A0_3 == 1 then
      if not A1_3 then
        L2_3 = L20_2
        if L2_3 then
          goto lbl_34
        end
      end
      L2_3 = true
      L20_2 = L2_3
      L2_3 = L48_2
      L3_3 = L14_2
      L2_3(L3_3)
      ::lbl_34::
      L2_3 = L7_2
      L2_3 = L2_3.createTable
      L3_3 = L14_2
      L4_3 = L2_2
      L2_3(L3_3, L4_3)
      L2_3 = L7_2
      L2_3 = L2_3.getTable
      L2_3 = L2_3()
      L3_3 = L2_3
      L2_3 = L2_3.setIsLocked
      L4_3 = true
      L2_3(L3_3, L4_3)
      L2_3 = L40_2
      L2_3()
    elseif A0_3 == 2 then
      if not A1_3 then
        L2_3 = L21_2
        if L2_3 then
          goto lbl_60
        end
      end
      L2_3 = true
      L21_2 = L2_3
      L2_3 = L48_2
      L3_3 = L16_2
      L2_3(L3_3)
      ::lbl_60::
      L2_3 = L8_2
      L2_3 = L2_3.createTable
      L3_3 = L16_2
      L4_3 = L2_2
      L2_3(L3_3, L4_3)
      L2_3 = L46_2
      L2_3()
      L2_3 = L0_1
      L2_3 = L2_3.gameNetwork
      if L2_3 then
        L2_3 = L0_1
        L2_3 = L2_3.gameNetwork
        L2_3 = L2_3.isGameServicesActive
        L2_3 = L2_3()
        if L2_3 then
          L2_3 = L45_2
          L2_3()
        end
      end
    elseif A0_3 == 3 then
      if not A1_3 then
        L2_3 = L22_2
        if L2_3 then
          goto lbl_92
        end
      end
      L2_3 = true
      L22_2 = L2_3
      L2_3 = L48_2
      L3_3 = L17_2
      L2_3(L3_3)
      ::lbl_92::
      L2_3 = L18_2
      L2_3()
      L2_3 = L9_2
      L2_3 = L2_3.createTable
      L3_3 = L17_2
      L4_3 = L2_2
      L2_3(L3_3, L4_3)
      L2_3 = L47_2
      L2_3()
    elseif A0_3 == 4 then
      L2_3 = L10_2
      L2_3 = L2_3.createTable
      L3_3 = L0_1
      L3_3 = L3_3.consecutiveLoginsFormatted
      L4_3 = L2_2
      L2_3(L3_3, L4_3)
      L2_3 = L10_2
      L2_3 = L2_3.getTable
      L2_3 = L2_3()
      L3_3 = L2_3
      L2_3 = L2_3.setIsLocked
      L4_3 = true
      L2_3(L3_3, L4_3)
      L2_3 = L41_2
      L2_3()
      L2_3 = L43_2
      L2_3()
    end
    L2_3 = L2_2
    L3_3 = L2_3
    L2_3 = L2_3.insert
    L4_3 = L11_2
    L2_3(L3_3, L4_3)
  end
  
  function L18_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = L19_2
    if L1_3 then
      return
    end
    L1_3 = 1
    L2_3 = L17_2
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L17_2
      L5_3 = L5_3[L4_3]
      L5_3 = L5_3.video
      if L5_3 then
        L5_3 = L5_2
        L5_3 = L5_3.isVideoReady
        L5_3 = L5_3()
        if L5_3 == false then
          L5_3 = table
          L5_3 = L5_3.remove
          L6_3 = L17_2
          L7_3 = L4_3
          L5_3(L6_3, L7_3)
          if A0_3 then
            L5_3 = L15_2
            if L5_3 == 3 then
              L5_3 = L50_2
              L6_3 = 3
              L7_3 = true
              L5_3(L6_3, L7_3)
            end
          end
          return
        end
      end
    end
  end
  
  function L51_2()
    local L0_3, L1_3
    L0_3 = L50_2
    L1_3 = 1
    L0_3(L1_3)
  end
  
  function L52_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = A0_3.errorCode
      if L1_3 == 10001 then
        L1_3 = print
        L2_3 = "Log out of gameService."
        L1_3(L2_3)
        L1_3 = L0_1
        L1_3 = L1_3.gameNetwork
        L1_3 = L1_3.playServicesLogout
        L1_3()
      end
      L1_3 = L0_1
      L1_3 = L1_3.gameNetwork
      if L1_3 then
        L1_3 = L0_1
        L1_3 = L1_3.gameNetwork
        L1_3 = L1_3.isGameServicesActive
        L1_3 = L1_3()
        if L1_3 then
          L1_3 = L45_2
          L1_3()
      end
      else
        L1_3 = L44_2
        L1_3()
      end
    end
  end
  
  function L53_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.gameNetwork
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.gameNetwork
      L0_3 = L0_3.isGameServicesActive
      L0_3 = L0_3()
      if L0_3 then
        L0_3 = L0_1
        L0_3 = L0_3.gameNetwork
        L0_3 = L0_3.showAchievements
        L1_3 = L52_2
        L0_3(L1_3)
      end
    end
  end
  
  L54_2 = L0_1
  L54_2 = L54_2.newButton
  L55_2 = {}
  L56_2 = L35_2.x
  L56_2 = L56_2 + 31
  L55_2.x = L56_2
  L56_2 = L35_2.y
  L56_2 = L56_2 + 31
  L55_2.y = L56_2
  L55_2.width = 62
  L55_2.height = 62
  L55_2.image = "images/gui/challenges/buttonDailyInactive.png"
  L55_2.onRelease = L51_2
  L55_2.noFill = true
  L54_2 = L54_2(L55_2)
  
  function L55_2()
    local L0_3, L1_3
    L0_3 = L50_2
    L1_3 = 4
    L0_3(L1_3)
  end
  
  function L56_2()
    local L0_3, L1_3
    L0_3 = L50_2
    L1_3 = 2
    L0_3(L1_3)
  end
  
  L57_2 = L0_1
  L57_2 = L57_2.newButton
  L58_2 = {}
  L59_2 = L36_2.x
  L59_2 = L59_2 + 31
  L58_2.x = L59_2
  L59_2 = L36_2.y
  L59_2 = L59_2 + 31
  L58_2.y = L59_2
  L58_2.width = 62
  L58_2.height = 62
  L58_2.image = "images/gui/challenges/buttonAchievementsInactive.png"
  L58_2.onRelease = L56_2
  L58_2.noFill = true
  L57_2 = L57_2(L58_2)
  
  function L58_2()
    local L0_3, L1_3
    L0_3 = L50_2
    L1_3 = 3
    L0_3(L1_3)
  end
  
  L59_2 = L0_1
  L59_2 = L59_2.newButton
  L60_2 = {}
  L61_2 = L37_2.x
  L61_2 = L61_2 + 31
  L60_2.x = L61_2
  L61_2 = L37_2.y
  L61_2 = L61_2 + 31
  L60_2.y = L61_2
  L60_2.width = 62
  L60_2.height = 62
  L60_2.image = "images/gui/challenges/buttonEarncoinsInactive.png"
  L60_2.onRelease = L58_2
  L60_2.noFill = true
  L59_2 = L59_2(L60_2)
  
  function L60_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
  function L61_2(A0_3)
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
  
  function L62_2(A0_3)
    local L1_3
    L1_3 = true
    return L1_3
  end
  
  L63_2 = L0_1
  L63_2 = L63_2.newButton
  L64_2 = {}
  L64_2.x = 370
  L64_2.y = 16
  L64_2.width = 43
  L64_2.height = 38
  L64_2.image = "images/gui/common/buttonClosePopupRed.png"
  L64_2.onRelease = L60_2
  L63_2 = L63_2(L64_2)
  L11_2 = L63_2
  L63_2 = L0_1
  L63_2 = L63_2.newButton
  L64_2 = {}
  L64_2.x = 116
  L64_2.y = 22
  L64_2.width = 38
  L64_2.height = 38
  L64_2.image = "images/gui/friends/back.png"
  L64_2.onRelease = L51_2
  L64_2.isVisible = false
  L63_2 = L63_2(L64_2)
  L12_2 = L63_2
  L63_2 = "images/gui/challenges/buttonPlayServices.png"
  L64_2 = isIOS
  if L64_2 then
    L63_2 = "images/gui/challenges/buttonGameCenter.png"
  end
  L64_2 = L0_1
  L64_2 = L64_2.newButton
  L65_2 = {}
  L65_2.x = 116
  L65_2.y = 22
  L65_2.width = 45
  L65_2.height = 45
  L65_2.image = L63_2
  L65_2.onRelease = L53_2
  L65_2.isVisible = false
  L64_2 = L64_2(L65_2)
  L13_2 = L64_2
  
  function L64_2()
    local L0_3, L1_3, L2_3
    L0_3 = L15_2
    if L0_3 == 1 then
      L0_3 = L7_2
      L0_3 = L0_3.refreshTable
      L0_3()
    else
      L0_3 = L15_2
      if L0_3 == 2 then
        L0_3 = L8_2
        L0_3 = L0_3.refreshTable
        L0_3()
      else
        L0_3 = L15_2
        if L0_3 == 3 then
          L0_3 = L9_2
          L0_3 = L0_3.refreshTable
          L0_3()
        else
          L0_3 = L15_2
          if L0_3 == 4 then
            L0_3 = L10_2
            L0_3 = L0_3.refreshTable
            L0_3()
          end
        end
      end
    end
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L11_2
    L0_3(L1_3, L2_3)
  end
  
  function L65_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = {}
    L1_3 = L0_1
    L1_3 = L1_3.database
    L1_3 = L1_3.getItems
    L1_3 = L1_3()
    L2_3 = L0_1
    L2_3 = L2_3.storeConfig
    L2_3 = L2_3.addBoostItem
    L3_3 = L0_3
    L2_3(L3_3)
    L2_3 = 1
    L3_3 = #L0_3
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = L0_3[L5_3]
      L6_3 = L6_3.mysteryBox
      if not L6_3 then
        L6_3 = L0_3[L5_3]
        L6_3 = L6_3.key
        if L6_3 == "1003" then
        else
          L6_3 = L17_2
          L6_3 = #L6_3
          L6_3 = L6_3 + 1
          L7_3 = L0_3[L5_3]
          L7_3.goal = 1
          L7_3 = L0_3[L5_3]
          L7_3.image = "1"
          L7_3 = L0_3[L5_3]
          L7_3.id = L6_3
          L7_3 = L0_3[L5_3]
          L7_3.boost = true
          L7_3 = L0_3[L5_3]
          L8_3 = L0_1
          L8_3 = L8_3.localized
          L8_3 = L8_3.get
          L9_3 = "Forever"
          L8_3 = L8_3(L9_3)
          L7_3.text = L8_3
          L7_3 = tostring
          L8_3 = L0_3[L5_3]
          L8_3 = L8_3.key
          L7_3 = L7_3(L8_3)
          L7_3 = L1_3[L7_3]
          if L7_3 then
            L7_3 = L0_3[L5_3]
            L8_3 = {}
            L8_3.p = 1
            L8_3.c = 1
            L7_3.serverStatus = L8_3
            L7_3 = L0_3[L5_3]
            L7_3.owned = true
          end
          L7_3 = L17_2
          L8_3 = L0_3[L5_3]
          L7_3[L6_3] = L8_3
        end
      end
    end
  end
  
  function L66_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3)
    local L7_3, L8_3, L9_3, L10_3
    if A1_3 == 1 and A0_3 == 0 then
      L7_3 = A4_3.spinReward
      if L7_3 then
        L7_3 = {}
        L7_3.isModal = true
        L8_3 = {}
        L9_3 = L15_2
        L8_3.tableActive = L9_3
        L8_3.challengeId = A2_3
        L7_3.params = L8_3
        L8_3 = L0_1
        L8_3 = L8_3.showOverlay
        L9_3 = "lua.overlays.spinningWheel"
        L10_3 = L7_3
        L8_3(L9_3, L10_3)
      else
        L7_3 = L15_2
        if L7_3 == 1 then
          L7_3 = tonumber
          L8_3 = A2_3
          L7_3 = L7_3(L8_3)
          if L7_3 == 1 then
          else
            L7_3 = L25_2
            L8_3 = tonumber
            L9_3 = A2_3
            L8_3 = L8_3(L9_3)
            L7_3 = L7_3[L8_3]
            if L7_3 then
              L7_3 = L25_2
              L8_3 = tonumber
              L9_3 = A2_3
              L8_3 = L8_3(L9_3)
              L7_3 = L7_3[L8_3]
              if L7_3 == 1 then
                L7_3 = print
                L8_3 = "WARNING: already tried to claim "
                L9_3 = A2_3
                L7_3(L8_3, L9_3)
            end
            else
              L7_3 = L25_2
              L8_3 = tonumber
              L9_3 = A2_3
              L8_3 = L8_3(L9_3)
              L7_3[L8_3] = 1
              L7_3 = L0_1
              L7_3 = L7_3.comm
              L7_3 = L7_3.claimDailyChallenge
              L8_3 = A2_3
              L7_3(L8_3)
            end
          end
        else
          L7_3 = L15_2
          if L7_3 == 2 then
            L7_3 = L26_2
            L8_3 = tonumber
            L9_3 = A2_3
            L8_3 = L8_3(L9_3)
            L7_3 = L7_3[L8_3]
            if L7_3 then
              L7_3 = L26_2
              L8_3 = tonumber
              L9_3 = A2_3
              L8_3 = L8_3(L9_3)
              L7_3 = L7_3[L8_3]
              if L7_3 == 1 then
                L7_3 = print
                L8_3 = "WARNING: already tried to claim "
                L9_3 = A2_3
                L7_3(L8_3, L9_3)
            end
            else
              L7_3 = L26_2
              L8_3 = tonumber
              L9_3 = A2_3
              L8_3 = L8_3(L9_3)
              L7_3[L8_3] = 1
              L7_3 = L0_1
              L7_3 = L7_3.comm
              L7_3 = L7_3.claimAchievement
              L8_3 = A2_3
              L7_3(L8_3)
            end
          else
            L7_3 = L15_2
            if L7_3 == 3 then
              L7_3 = L27_2
              L8_3 = tonumber
              L9_3 = A2_3
              L8_3 = L8_3(L9_3)
              L7_3 = L7_3[L8_3]
              if L7_3 then
                L7_3 = L27_2
                L8_3 = tonumber
                L9_3 = A2_3
                L8_3 = L8_3(L9_3)
                L7_3 = L7_3[L8_3]
                if L7_3 == 1 then
                  L7_3 = print
                  L8_3 = "WARNING: already tried to claim "
                  L9_3 = A2_3
                  L7_3(L8_3, L9_3)
              end
              else
                L7_3 = tonumber
                L8_3 = A2_3
                L7_3 = L7_3(L8_3)
                if L7_3 == 1 then
                  L7_3 = L5_2
                  L7_3 = L7_3.showAd
                  L7_3()
                  L7_3 = timer
                  L7_3 = L7_3.performWithDelay
                  L8_3 = 700
                  L9_3 = L18_2
                  L10_3 = 1
                  L7_3(L8_3, L9_3, L10_3)
                else
                  L7_3 = A4_3.boost
                  if L7_3 then
                    L7_3 = A4_3.owned
                    if not L7_3 then
                      L7_3 = {}
                      L7_3.isModal = true
                      L8_3 = {}
                      L8_3.item = A4_3
                      L7_3.params = L8_3
                      L8_3 = L0_1
                      L8_3 = L8_3.showOverlay
                      L9_3 = "lua.overlays.starterPackBuy"
                      L10_3 = L7_3
                      L8_3(L9_3, L10_3)
                    end
                    L7_3 = print
                    L8_3 = "challenge "
                    L9_3 = A4_3.key
                    L7_3(L8_3, L9_3)
                  else
                    L7_3 = A4_3.link
                    if L7_3 then
                      L7_3 = L0_1
                      L7_3 = L7_3.data
                      L7_3.openURL = true
                      L7_3 = L27_2
                      L8_3 = tonumber
                      L9_3 = A2_3
                      L8_3 = L8_3(L9_3)
                      L7_3[L8_3] = 1
                      L7_3 = L0_1
                      L7_3 = L7_3.comm
                      L7_3 = L7_3.claimEarnCoins
                      L8_3 = A2_3
                      L7_3(L8_3)
                      L7_3 = system
                      L7_3 = L7_3.openURL
                      L8_3 = A4_3.link
                      L7_3(L8_3)
                    end
                  end
                end
              end
            else
              L7_3 = print
              L8_3 = "invalid table"
              L9_3 = L15_2
              L7_3(L8_3, L9_3)
            end
          end
        end
      end
    elseif A1_3 == 1 and A0_3 == 1 then
      L7_3 = L15_2
      if L7_3 == 3 then
        L7_3 = A4_3.link
        if L7_3 then
          L7_3 = L0_1
          L7_3 = L7_3.data
          L7_3.openURL = true
          L7_3 = system
          L7_3 = L7_3.openURL
          L8_3 = A4_3.link
          L7_3(L8_3)
        end
      end
    end
  end
  
  function L67_2()
    local L0_3, L1_3
  end
  
  L68_2 = L3_2.new
  L69_2 = 124
  L70_2 = 26
  L71_2 = 250
  L72_2 = 294
  L73_2 = 70
  L74_2 = nil
  L75_2 = "challenge"
  L76_2 = L66_2
  L77_2 = 10
  L78_2 = L55_2
  L68_2 = L68_2(L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2)
  L7_2 = L68_2
  L68_2 = L3_2.new
  L69_2 = 124
  L70_2 = 36
  L71_2 = 250
  L72_2 = 284
  L73_2 = 70
  L74_2 = nil
  L75_2 = "challenge"
  L76_2 = L66_2
  L77_2 = 10
  L68_2 = L68_2(L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2)
  L8_2 = L68_2
  L68_2 = L3_2.new
  L69_2 = 124
  L70_2 = 36
  L71_2 = 250
  L72_2 = 284
  L73_2 = 70
  L74_2 = nil
  L75_2 = "challenge"
  L76_2 = L66_2
  L77_2 = 10
  L68_2 = L68_2(L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2)
  L9_2 = L68_2
  L68_2 = L3_2.new
  L69_2 = 124
  L70_2 = 56
  L71_2 = 250
  L72_2 = 284
  L73_2 = 35
  L74_2 = nil
  L75_2 = "consecutive"
  L76_2 = L67_2
  L77_2 = 10
  L68_2 = L68_2(L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2)
  L10_2 = L68_2
  
  function L68_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    if A0_3 then
      L1_3 = math
      L1_3 = L1_3.floor
      L2_3 = A0_3 / 60
      L1_3 = L1_3(L2_3)
      L2_3 = math
      L2_3 = L2_3.floor
      L3_3 = L1_3 / 60
      L2_3 = L2_3(L3_3)
      L3_3 = L2_3 * 60
      L1_3 = L1_3 - L3_3
      if L1_3 < 10 then
        L3_3 = "0"
        L4_3 = L1_3
        L1_3 = L3_3 .. L4_3
      end
      L3_3 = L2_3
      L4_3 = "h "
      L5_3 = L1_3
      L6_3 = "m"
      L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3
      return L3_3
    end
    L1_3 = "12h 14m"
    return L1_3
  end
  
  function L69_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = L0_1
    L2_3 = L2_3.data
    L2_3.dailyToClaim = 0
    L2_3 = {}
    L14_2 = L2_3
    L2_3 = L14_2
    L3_3 = {}
    L2_3[1] = L3_3
    L2_3 = L14_2
    L2_3 = L2_3[1]
    L3_3 = L68_2
    L4_3 = A1_3
    L3_3 = L3_3(L4_3)
    L2_3.timeLeft = L3_3
    L2_3 = L14_2
    L2_3 = L2_3[1]
    L2_3.header = true
    L2_3 = L0_1
    L2_3 = L2_3.consecutiveLoginsFormatted
    if L2_3 then
      L2_3 = L14_2
      L3_3 = {}
      L2_3[2] = L3_3
      L2_3 = L14_2
      L2_3 = L2_3[2]
      L2_3.id = 1
      L2_3 = L14_2
      L2_3 = L2_3[2]
      L2_3.consecutiveSpecialRow = true
    end
    L2_3 = pairs
    L3_3 = A0_3
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L0_1
      L7_3 = L7_3.awards
      L7_3 = L7_3.getDailyChallenge
      L8_3 = tonumber
      L9_3 = L5_3
      L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3)
      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
      if L7_3 then
        L8_3 = L7_3.hidden
        if not L8_3 then
          L8_3 = L14_2
          L8_3 = #L8_3
          L8_3 = L8_3 + 1
          L9_3 = L14_2
          L9_3[L8_3] = L7_3
          L9_3 = L14_2
          L9_3 = L9_3[L8_3]
          L9_3.id = L5_3
          L9_3 = L14_2
          L9_3 = L9_3[L8_3]
          L9_3.serverStatus = L6_3
          L9_3 = L14_2
          L9_3 = L9_3[L8_3]
          L9_3 = L9_3.serverStatus
          L10_3 = L14_2
          L10_3 = L10_3[L8_3]
          L10_3 = L10_3.serverStatus
          L10_3 = L10_3.p
          L11_3 = L7_3.goal
          L10_3 = L10_3 / L11_3
          L9_3.p = L10_3
          L9_3 = L14_2
          L9_3 = L9_3[L8_3]
          L9_3 = L9_3.serverStatus
          L9_3 = L9_3.p
          if L9_3 == 1 then
            L9_3 = L14_2
            L9_3 = L9_3[L8_3]
            L9_3 = L9_3.serverStatus
            L9_3 = L9_3.c
            if L9_3 == 0 then
              L9_3 = L0_1
              L9_3 = L9_3.data
              L10_3 = L0_1
              L10_3 = L10_3.data
              L10_3 = L10_3.dailyToClaim
              L10_3 = L10_3 + 1
              L9_3.dailyToClaim = L10_3
            end
          end
        end
      end
    end
  end
  
  function L70_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L1_3 = L19_2
    if L1_3 then
      return
    end
    L1_3 = A0_3.m
    L2_3 = L4_2
    L2_3 = L2_3.getEarnCoins
    L2_3 = L2_3()
    if L1_3 == L2_3 then
      L1_3 = L38_2
      L1_3.isVisible = false
      L1_3 = 1
      L2_3 = A0_3.a
      L2_3 = #L2_3
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = pairs
        L6_3 = L17_2
        L5_3, L6_3, L7_3 = L5_3(L6_3)
        for L8_3, L9_3 in L5_3, L6_3, L7_3 do
          L10_3 = tonumber
          L11_3 = L9_3.id
          L10_3 = L10_3(L11_3)
          L11_3 = tonumber
          L12_3 = A0_3.a
          L12_3 = L12_3[L4_3]
          L11_3 = L11_3(L12_3)
          if L10_3 == L11_3 then
            L10_3 = L17_2
            L10_3 = L10_3[L8_3]
            L11_3 = {}
            L11_3.p = 1
            L11_3.c = 1
            L10_3.serverStatus = L11_3
          end
        end
      end
      L1_3 = L65_2
      L1_3()
      L1_3 = L18_2
      L1_3()
      L1_3 = L15_2
      if L1_3 == 3 then
        L1_3 = L50_2
        L2_3 = 3
        L3_3 = true
        L1_3(L2_3, L3_3)
      end
    else
      L1_3 = A0_3.m
      L2_3 = L4_2
      L2_3 = L2_3.claimEarnCoins
      L2_3 = L2_3()
      if L1_3 == L2_3 then
        L1_3 = A0_3.i
        if L1_3 then
          L1_3 = pairs
          L2_3 = L17_2
          L1_3, L2_3, L3_3 = L1_3(L2_3)
          for L4_3, L5_3 in L1_3, L2_3, L3_3 do
            L6_3 = tonumber
            L7_3 = A0_3.i
            L6_3 = L6_3(L7_3)
            L7_3 = tonumber
            L8_3 = L5_3.id
            L7_3 = L7_3(L8_3)
            if L6_3 == L7_3 then
              L6_3 = {}
              L6_3.c = 1
              L6_3.p = 1
              L5_3.serverStatus = L6_3
              L6_3 = L27_2
              L7_3 = tonumber
              L8_3 = A0_3.i
              L7_3 = L7_3(L8_3)
              L6_3[L7_3] = 0
            end
          end
          L1_3 = L0_1
          L1_3 = L1_3.audio
          L1_3 = L1_3.play
          L2_3 = "collect_achievement"
          L1_3(L2_3)
          L1_3 = L64_2
          L1_3()
          L1_3 = L6_2
          L1_3 = L1_3.refreshMoney
          L1_3()
          L1_3 = L0_1
          L1_3 = L1_3.analytics
          L1_3 = L1_3.newEvent
          L2_3 = "design"
          L3_3 = {}
          L4_3 = "claim:earnCoins:"
          L5_3 = tostring
          L6_3 = A0_3.i
          L5_3 = L5_3(L6_3)
          L4_3 = L4_3 .. L5_3
          L3_3.event_id = L4_3
          L4_3 = tonumber
          L5_3 = A0_3.i
          L4_3 = L4_3(L5_3)
          L3_3.value = L4_3
          L4_3 = L0_1
          L4_3 = L4_3.config
          L4_3 = L4_3.fullVersion
          L3_3.area = L4_3
          L1_3(L2_3, L3_3)
        end
      else
        L1_3 = A0_3.m
        L2_3 = L4_2
        L2_3 = L2_3.getAchievementList
        L2_3 = L2_3()
        if L1_3 == L2_3 then
          L1_3 = L38_2
          L1_3.isVisible = false
          L1_3 = L0_1
          L1_3 = L1_3.data
          L1_3.achievementToClaim = 0
          L1_3 = L16_2
          L1_3 = #L1_3
          L2_3 = 1
          L3_3 = -1
          for L4_3 = L1_3, L2_3, L3_3 do
            L5_3 = L16_2
            L5_3 = L5_3[L4_3]
            L6_3 = pairs
            L7_3 = A0_3.a
            L6_3, L7_3, L8_3 = L6_3(L7_3)
            for L9_3, L10_3 in L6_3, L7_3, L8_3 do
              L11_3 = tonumber
              L12_3 = L5_3.id
              L11_3 = L11_3(L12_3)
              L12_3 = tonumber
              L13_3 = L9_3
              L12_3 = L12_3(L13_3)
              if L11_3 == L12_3 then
                L5_3.serverStatus = L10_3
                L11_3 = L5_3.serverStatus
                L11_3 = L11_3.p
                if L11_3 == 1 then
                  L11_3 = L5_3.serverStatus
                  L11_3 = L11_3.c
                  if L11_3 == 0 then
                    L11_3 = L0_1
                    L11_3 = L11_3.data
                    L12_3 = L0_1
                    L12_3 = L12_3.data
                    L12_3 = L12_3.achievementToClaim
                    L12_3 = L12_3 + 1
                    L11_3.achievementToClaim = L12_3
                  end
                end
                L11_3 = L0_1
                L11_3 = L11_3.gameNetwork
                if L11_3 then
                  L11_3 = L5_3.steps
                  if L11_3 then
                    L11_3 = 0
                    L12_3 = L16_2
                    L12_3 = L12_3[L4_3]
                    L12_3 = L12_3.serverStatus
                    L12_3 = L12_3.l
                    if L12_3 then
                      L12_3 = L16_2
                      L12_3 = L12_3[L4_3]
                      L12_3 = L12_3.serverStatus
                      L12_3 = L12_3.l
                      if L11_3 < L12_3 then
                        L12_3 = L16_2
                        L12_3 = L12_3[L4_3]
                        L12_3 = L12_3.serverStatus
                        L11_3 = L12_3.l
                      end
                    end
                    L11_3 = L11_3 + 1
                    if 3 < L11_3 then
                      L11_3 = 3
                    end
                    if 1 < L11_3 then
                      L12_3 = 1
                      L13_3 = L11_3 - 1
                      L14_3 = 1
                      for L15_3 = L12_3, L13_3, L14_3 do
                        L16_3 = L5_3.steps
                        L16_3 = L16_3[L15_3]
                        L17_3 = L0_1
                        L17_3 = L17_3.gameNetwork
                        L17_3 = L17_3.unlockAchievementLevelProgression
                        L18_3 = L16_3
                        L19_3 = 1
                        L17_3(L18_3, L19_3)
                      end
                    end
                    L12_3 = L5_3.steps
                    L12_3 = L12_3[L11_3]
                    L13_3 = L0_1
                    L13_3 = L13_3.gameNetwork
                    L13_3 = L13_3.unlockAchievementLevelProgression
                    L14_3 = L12_3
                    L15_3 = L16_2
                    L15_3 = L15_3[L4_3]
                    L15_3 = L15_3.serverStatus
                    L15_3 = L15_3.p
                    L13_3(L14_3, L15_3)
                  end
                end
              end
            end
            L6_3 = L16_2
            L6_3 = L6_3[L4_3]
            L6_3 = L6_3.hidden
            if L6_3 then
              L6_3 = L16_2
              L6_3 = L6_3[L4_3]
              L6_3 = L6_3.serverStatus
              if L6_3 then
                L6_3 = L16_2
                L6_3 = L6_3[L4_3]
                L6_3 = L6_3.serverStatus
                L6_3 = L6_3.p
                if L6_3 == 1 then
                  goto lbl_238
                end
              end
              L6_3 = table
              L6_3 = L6_3.remove
              L7_3 = L16_2
              L8_3 = L4_3
              L6_3(L7_3, L8_3)
            end
            ::lbl_238::
          end
          L1_3 = L15_2
          if L1_3 == 2 then
            L1_3 = L50_2
            L2_3 = 2
            L3_3 = true
            L1_3(L2_3, L3_3)
          end
        else
          L1_3 = A0_3.m
          L2_3 = L4_2
          L2_3 = L2_3.claimAchievement
          L2_3 = L2_3()
          if L1_3 == L2_3 then
            L1_3 = A0_3.i
            if L1_3 then
              L1_3 = A0_3.a
              if L1_3 then
                L1_3 = pairs
                L2_3 = L16_2
                L1_3, L2_3, L3_3 = L1_3(L2_3)
                for L4_3, L5_3 in L1_3, L2_3, L3_3 do
                  L6_3 = tonumber
                  L7_3 = A0_3.i
                  L6_3 = L6_3(L7_3)
                  L7_3 = tonumber
                  L8_3 = L5_3.id
                  L7_3 = L7_3(L8_3)
                  if L6_3 == L7_3 then
                    L6_3 = A0_3.a
                    L5_3.serverStatus = L6_3
                    L6_3 = L26_2
                    L7_3 = tonumber
                    L8_3 = A0_3.i
                    L7_3 = L7_3(L8_3)
                    L6_3[L7_3] = 0
                    L6_3 = A1_2
                    L6_3 = L6_3.params
                    if L6_3 then
                      L6_3 = A0_3.i
                      L7_3 = A1_2
                      L7_3 = L7_3.params
                      L7_3 = L7_3.activeKey
                      if L6_3 == L7_3 then
                        L6_3 = true
                        L28_2 = L6_3
                        L6_3 = L4_1
                        L7_3 = L28_2
                        L6_3.claimedTargetAchievement = L7_3
                      end
                    end
                  end
                end
                L1_3 = L0_1
                L1_3 = L1_3.data
                L2_3 = L0_1
                L2_3 = L2_3.data
                L2_3 = L2_3.achievementToClaim
                L2_3 = L2_3 - 1
                L1_3.achievementToClaim = L2_3
                L1_3 = L0_1
                L1_3 = L1_3.data
                L1_3 = L1_3.achievementToClaim
                if L1_3 < 0 then
                  L1_3 = L0_1
                  L1_3 = L1_3.data
                  L1_3.achievementToClaim = 0
                end
                L1_3 = L0_1
                L1_3 = L1_3.audio
                L1_3 = L1_3.play
                L2_3 = "collect_achievement"
                L1_3(L2_3)
                L1_3 = L64_2
                L1_3()
                L1_3 = L6_2
                L1_3 = L1_3.refreshMoney
                L1_3()
                L1_3 = L0_1
                L1_3 = L1_3.analytics
                L1_3 = L1_3.newEvent
                L2_3 = "design"
                L3_3 = {}
                L4_3 = "claim:achievment:"
                L5_3 = tostring
                L6_3 = A0_3.i
                L5_3 = L5_3(L6_3)
                L4_3 = L4_3 .. L5_3
                L3_3.event_id = L4_3
                L4_3 = tonumber
                L5_3 = A0_3.i
                L4_3 = L4_3(L5_3)
                L3_3.value = L4_3
                L4_3 = L0_1
                L4_3 = L4_3.config
                L4_3 = L4_3.fullVersion
                L3_3.area = L4_3
                L1_3(L2_3, L3_3)
              end
            end
          else
            L1_3 = A0_3.m
            L2_3 = L4_2
            L2_3 = L2_3.claimDailyChallenge
            L2_3 = L2_3()
            if L1_3 == L2_3 then
              L1_3 = A0_3.i
              if L1_3 then
                L1_3 = L38_2
                L1_3.isVisible = false
                L1_3 = pairs
                L2_3 = L14_2
                L1_3, L2_3, L3_3 = L1_3(L2_3)
                for L4_3, L5_3 in L1_3, L2_3, L3_3 do
                  L6_3 = tonumber
                  L7_3 = A0_3.i
                  L6_3 = L6_3(L7_3)
                  L7_3 = tonumber
                  L8_3 = L5_3.id
                  L7_3 = L7_3(L8_3)
                  if L6_3 == L7_3 then
                    L6_3 = {}
                    L6_3.c = 1
                    L6_3.p = 1
                    L5_3.serverStatus = L6_3
                    L6_3 = L25_2
                    L7_3 = tonumber
                    L8_3 = A0_3.i
                    L7_3 = L7_3(L8_3)
                    L6_3[L7_3] = 0
                  end
                end
                L1_3 = L0_1
                L1_3 = L1_3.data
                L2_3 = L0_1
                L2_3 = L2_3.data
                L2_3 = L2_3.dailyToClaim
                L2_3 = L2_3 - 1
                L1_3.dailyToClaim = L2_3
                L1_3 = L0_1
                L1_3 = L1_3.data
                L1_3 = L1_3.dailyToClaim
                if L1_3 < 0 then
                  L1_3 = L0_1
                  L1_3 = L1_3.data
                  L1_3.dailyToClaim = 0
                end
                L1_3 = L0_1
                L1_3 = L1_3.audio
                L1_3 = L1_3.play
                L2_3 = "collect_achievement"
                L1_3(L2_3)
                L1_3 = L64_2
                L1_3()
                L1_3 = L6_2
                L1_3 = L1_3.refreshMoney
                L1_3()
                L1_3 = L0_1
                L1_3 = L1_3.analytics
                L1_3 = L1_3.newEvent
                L2_3 = "design"
                L3_3 = {}
                L4_3 = "claim:daily:"
                L5_3 = tostring
                L6_3 = A0_3.i
                L5_3 = L5_3(L6_3)
                L4_3 = L4_3 .. L5_3
                L3_3.event_id = L4_3
                L4_3 = tonumber
                L5_3 = A0_3.i
                L4_3 = L4_3(L5_3)
                L3_3.value = L4_3
                L4_3 = L0_1
                L4_3 = L4_3.config
                L4_3 = L4_3.fullVersion
                L3_3.area = L4_3
                L1_3(L2_3, L3_3)
              end
            else
              L1_3 = A0_3.m
              L2_3 = L4_2
              L2_3 = L2_3.claimConsecutiveLogin
              L2_3 = L2_3()
              if L1_3 == L2_3 then
                L1_3 = L0_1
                L1_3 = L1_3.consecutiveLoginsFormatted
                L2_3 = L1_3[1]
                L2_3.c = 1
                L2_3 = L64_2
                L2_3()
                L2_3 = L6_2
                L2_3 = L2_3.refreshMoney
                L2_3()
                L2_3 = L0_1
                L2_3 = L2_3.audio
                L2_3 = L2_3.play
                L3_3 = "collect_achievement"
                L2_3(L3_3)
                L2_3 = L15_2
                if L2_3 == 4 then
                  L2_3 = L50_2
                  L3_3 = 4
                  L4_3 = true
                  L2_3(L3_3, L4_3)
                end
              else
                L1_3 = A0_3.m
                L2_3 = L4_2
                L2_3 = L2_3.getDailyChallenge
                L2_3 = L2_3()
                if L1_3 == L2_3 then
                  L1_3 = L38_2
                  L1_3.isVisible = false
                  L1_3 = L69_2
                  L2_3 = A0_3.a
                  L3_3 = A0_3.t
                  L1_3(L2_3, L3_3)
                  L1_3 = L15_2
                  if L1_3 == 1 then
                    L1_3 = L50_2
                    L2_3 = 1
                    L3_3 = true
                    L1_3(L2_3, L3_3)
                  else
                    L1_3 = L15_2
                    if L1_3 == 4 then
                      L1_3 = L50_2
                      L2_3 = 4
                      L3_3 = true
                      L1_3(L2_3, L3_3)
                    end
                  end
                  L1_3 = L0_1
                  L1_3 = L1_3.database
                  L1_3 = L1_3.timeToShowDailyChallenge
                  L1_3 = L1_3()
                  if L1_3 then
                    L1_3 = L0_1
                    L1_3 = L1_3.database
                    L1_3 = L1_3.setSeenDailyChallengePrompt
                    L2_3 = A0_3.t
                    L1_3(L2_3)
                  end
                else
                  L1_3 = A0_3.m
                  L2_3 = L4_2
                  L2_3 = L2_3.seenVideo
                  L2_3 = L2_3()
                  if L1_3 == L2_3 then
                    L1_3 = L6_2
                    L1_3 = L1_3.refreshMoney
                    L1_3()
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  
  function L71_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L30_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L31_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L32_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L54_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L57_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L59_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L35_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L36_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L37_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L33_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L34_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L11_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L38_2
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
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L29_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L6_2
    L0_3(L1_3, L2_3)
  end
  
  function L72_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L30_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L61_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L31_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L62_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L73_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = true
    L19_2 = L0_3
    L0_3 = L49_2
    L1_3 = L15_2
    L0_3(L1_3)
    L0_3 = L6_2
    L0_3 = L0_3.clean
    L0_3()
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L54_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L57_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L59_2
    L0_3(L1_3)
    L0_3 = L30_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L61_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L31_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L62_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L0_1
    L0_3.overlayWithNetwork = false
  end
  
  L2_1 = L73_2
  L73_2 = L0_1
  L73_2 = L73_2.awards
  L73_2 = L73_2.getAchievements
  L73_2 = L73_2()
  L16_2 = L73_2
  L73_2 = L0_1
  L73_2 = L73_2.awards
  L73_2 = L73_2.getEarnCoins
  L73_2 = L73_2()
  L17_2 = L73_2
  L73_2 = L71_2
  L73_2()
  L73_2 = L72_2
  L73_2()
  L73_2 = L6_2.updateMoneyText
  L74_2 = L23_2
  L75_2 = L24_2
  L73_2(L74_2, L75_2)
  L73_2 = L42_2
  L73_2()
  L73_2 = L44_2
  L73_2()
  if L15_2 == 1 then
    L73_2 = L40_2
    L73_2()
  elseif L15_2 == 2 then
    L73_2 = L46_2
    L73_2()
  elseif L15_2 == 3 then
    L73_2 = L47_2
    L73_2()
  elseif L15_2 == 4 then
    L73_2 = L41_2
    L73_2()
  end
  L73_2 = L0_1
  L73_2 = L73_2.comm
  L73_2 = L73_2.setCallback
  L74_2 = L70_2
  L73_2(L74_2)
  L73_2 = L0_1
  L73_2 = L73_2.comm
  L73_2 = L73_2.getAchievementList
  L73_2()
  L73_2 = L0_1
  L73_2 = L73_2.comm
  L73_2 = L73_2.getDailyChallenge
  L73_2()
  L73_2 = L0_1
  L73_2 = L73_2.comm
  L73_2 = L73_2.getEarnCoins
  L73_2()
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
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L3_2 = A1_2.parent
    if L3_2 then
      L3_2 = A1_2.parent
      L3_2 = L3_2.overlayEnded
      if L3_2 then
        L3_2 = A1_2.parent
        L4_2 = L3_2
        L3_2 = L3_2.overlayEnded
        L5_2 = L4_1
        L3_2(L4_2, L5_2)
        L3_2 = nil
        L4_1 = L3_2
      end
    end
    return
  end
  L3_2 = L3_1
  L3_2()
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
