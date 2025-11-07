local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "lua.network.tcpMessageFormat"
L1_1 = L1_1(L2_1)
L2_1 = L0_1.newScene
L2_1 = L2_1()
L3_1 = nil
L4_1 = nil
L5_1 = nil

function L6_1()
  local L0_2, L1_2
end

function L7_1()
  local L0_2, L1_2
end

L8_1 = nil

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2
  L2_2 = A0_2.view
  L3_2 = false
  L4_2 = require
  L5_2 = "lua.modules.salePromotion"
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2.create
  L5_2 = L5_2()
  L8_1 = L5_2
  L5_2 = {}
  L6_2 = {}
  L7_2 = 0
  L8_2 = false
  L9_2 = nil
  L10_2 = nil
  
  function L11_2(A0_3)
    local L1_3, L2_3
    L1_3 = L5_2
    L1_3 = L1_3[A0_3]
    if L1_3 then
      L1_3 = L5_2
      L1_3 = L1_3[A0_3]
      L2_3 = L1_3
      L1_3 = L1_3.removeSelf
      L1_3(L2_3)
      L1_3 = L5_2
      L1_3[A0_3] = nil
    end
    L1_3 = L6_2
    L1_3 = L1_3[A0_3]
    if L1_3 then
      L1_3 = L6_2
      L1_3 = L1_3[A0_3]
      L2_3 = L1_3
      L1_3 = L1_3.removeSelf
      L1_3(L2_3)
      L1_3 = L6_2
      L1_3[A0_3] = nil
    end
  end
  
  function L12_2(A0_3)
    local L1_3, L2_3
    L1_3 = L0_1
    L1_3 = L1_3.gotoScene
    L2_3 = "lua.scenes.playMenu"
    L1_3(L2_3)
  end
  
  function L13_2(A0_3)
    local L1_3, L2_3
    L1_3 = L0_1
    L1_3 = L1_3.gotoScene
    L2_3 = "lua.scenes.settings"
    L1_3(L2_3)
  end
  
  function L14_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L11_2
    L2_3 = 5
    L1_3(L2_3)
    L1_3 = L0_1
    L1_3 = L1_3.comm
    L1_3 = L1_3.setSeenNewsTimestamp
    L1_3()
    L1_3 = L0_1
    L1_3 = L1_3.data
    L1_3.unreadNewsFeedItems = 0
    L1_3 = L0_1
    L1_3 = L1_3.analytics
    L1_3 = L1_3.addDesignEvent
    L2_3 = "MainMenu:Newsfeed"
    L3_3 = 1
    L1_3(L2_3, L3_3)
    L1_3 = L0_1
    L1_3 = L1_3.showOverlay
    L2_3 = "lua.overlays.newsfeed"
    L3_3 = {}
    L3_3.isModal = true
    L1_3(L2_3, L3_3)
  end
  
  function L15_2(A0_3)
    local L1_3, L2_3
    L1_3 = L0_1
    L1_3 = L1_3.config
    L1_3 = L1_3.testMode
    if L1_3 then
      L1_3 = require
      L2_3 = "lua.ads.videoModule"
      L1_3 = L1_3(L2_3)
      L1_3 = L1_3.showIntegrationStatus
      L1_3()
    end
  end
  
  L16_2 = L0_1
  L16_2 = L16_2.newButton
  L17_2 = {}
  L17_2.image = "images/gui/mainMenu/newsfeedSubtle.png"
  L17_2.width = 35
  L17_2.height = 35
  L17_2.onRelease = L15_2
  L17_2.x = 105
  L17_2.y = 25
  L16_2 = L16_2(L17_2)
  L17_2 = L0_1
  L17_2 = L17_2.config
  L17_2 = L17_2.testMode
  if not L17_2 then
    L16_2.isVisible = false
  end
  
  function L17_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L0_1
    L1_3 = L1_3.comm
    L1_3 = L1_3.isOnline
    L1_3 = L1_3()
    if not L1_3 then
      L1_3 = L0_1
      L1_3 = L1_3.createCustomOverlay
      L2_3 = 1
      L1_3(L2_3)
      return
    end
    L1_3 = L0_1
    L1_3 = L1_3.data
    L1_3 = L1_3.clans
    L1_3 = L1_3.inClan
    if L1_3 then
      L1_3 = L0_1
      L1_3 = L1_3.gotoScene
      L2_3 = "lua.scenes.clanScene"
      L1_3(L2_3)
    else
      L1_3 = L0_1
      L1_3 = L1_3.showOverlay
      L2_3 = "lua.overlays.clanIntroduction"
      L3_3 = {}
      L3_3.isModal = true
      L1_3(L2_3, L3_3)
    end
  end
  
  function L18_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L0_1
    L1_3 = L1_3.comm
    L1_3 = L1_3.isOnline
    L1_3 = L1_3()
    if L1_3 then
      L1_3 = {}
      L1_3.isModal = true
      L2_3 = L0_1
      L2_3 = L2_3.showOverlay
      L3_3 = "lua.overlays.league"
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
    else
      L1_3 = L0_1
      L1_3 = L1_3.createCustomOverlay
      L2_3 = 1
      L1_3(L2_3)
    end
  end
  
  function L19_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L0_1
    L1_3 = L1_3.comm
    L1_3 = L1_3.isOnline
    L1_3 = L1_3()
    if L1_3 then
      L1_3 = {}
      L1_3.isModal = true
      L2_3 = L0_1
      L2_3 = L2_3.showOverlay
      L3_3 = "lua.overlays.messages"
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
    else
      L1_3 = L0_1
      L1_3 = L1_3.createCustomOverlay
      L2_3 = 1
      L1_3(L2_3)
    end
  end
  
  function L20_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L0_1
    L1_3 = L1_3.comm
    L1_3 = L1_3.isOnline
    L1_3 = L1_3()
    if L1_3 then
      L1_3 = L0_1
      L1_3 = L1_3.analytics
      L1_3 = L1_3.newEvent
      L2_3 = "design"
      L3_3 = {}
      L3_3.event_id = "marketButton:mainMenu"
      L4_3 = L0_1
      L4_3 = L4_3.database
      L4_3 = L4_3.getMoney
      L4_3 = L4_3()
      L3_3.value = L4_3
      L3_3.area = "mainMenu"
      L1_3(L2_3, L3_3)
      L1_3 = L0_1
      L1_3 = L1_3.gotoScene
      L2_3 = "lua.scenes.marketplace"
      L1_3(L2_3)
    else
      L1_3 = L0_1
      L1_3 = L1_3.createCustomOverlay
      L2_3 = 1
      L1_3(L2_3)
    end
  end
  
  function L21_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L0_1
    L1_3 = L1_3.comm
    L1_3 = L1_3.isOnline
    L1_3 = L1_3()
    if L1_3 then
      L1_3 = {}
      L1_3.isModal = true
      L2_3 = L0_1
      L2_3 = L2_3.showOverlay
      L3_3 = "lua.overlays.achievementsScene"
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
    else
      L1_3 = L0_1
      L1_3 = L1_3.createCustomOverlay
      L2_3 = 1
      L1_3(L2_3)
    end
  end
  
  L22_2 = L0_1
  L23_2 = L0_1
  L23_2 = L23_2.database
  L23_2 = L23_2.getPlayerInformation
  L23_2 = L23_2()
  L22_2.playerInfo = L23_2
  L22_2 = L0_1
  L22_2 = L22_2.backgrounds
  L22_2 = L22_2.getBackground
  L22_2 = L22_2()
  L23_2 = display
  L23_2 = L23_2.newImageRect
  L24_2 = "images/gui/common/logo.png"
  L25_2 = 224
  L26_2 = 135
  L23_2 = L23_2(L24_2, L25_2, L26_2)
  L24_2 = display
  L24_2 = L24_2.contentWidth
  L24_2 = L24_2 * 0.5
  L23_2.x = L24_2
  L24_2 = display
  L24_2 = L24_2.contentHeight
  L24_2 = L24_2 * 0.245
  L23_2.y = L24_2
  L25_2 = L23_2
  L24_2 = L23_2.scale
  L26_2 = 0.9
  L27_2 = 0.9
  L24_2(L25_2, L26_2, L27_2)
  L24_2 = display
  L24_2 = L24_2.newImageRect
  L25_2 = "images/gui/mainMenu/buttonPlayStick.png"
  L26_2 = 46
  L27_2 = 142
  L24_2 = L24_2(L25_2, L26_2, L27_2)
  L25_2 = display
  L25_2 = L25_2.contentWidth
  L25_2 = L25_2 * 0.5
  L24_2.x = L25_2
  L25_2 = display
  L25_2 = L25_2.contentHeight
  L25_2 = L25_2 * 0.65
  L24_2.y = L25_2
  L25_2 = L0_1
  L25_2 = L25_2.newButton
  L26_2 = {}
  L26_2.image = "images/gui/mainMenu/buttonPlayX.png"
  L26_2.width = 153
  L26_2.height = 88
  L26_2.onRelease = L12_2
  L27_2 = display
  L27_2 = L27_2.contentWidth
  L27_2 = L27_2 * 0.5
  L26_2.x = L27_2
  L27_2 = display
  L27_2 = L27_2.contentHeight
  L27_2 = L27_2 * 0.6
  L26_2.y = L27_2
  L25_2 = L25_2(L26_2)
  L26_2 = L0_1
  L26_2 = L26_2.newButton
  L27_2 = {}
  L27_2.image = "images/gui/mainMenu/settingsSubtle.png"
  L27_2.width = 35
  L27_2.height = 35
  L27_2.onRelease = L13_2
  L27_2.x = 25
  L27_2.y = 25
  L26_2 = L26_2(L27_2)
  L27_2 = L0_1
  L27_2 = L27_2.newButton
  L28_2 = {}
  L28_2.image = "images/gui/mainMenu/newsfeedSubtle.png"
  L28_2.width = 35
  L28_2.height = 35
  L28_2.onRelease = L14_2
  L28_2.x = 65
  L28_2.y = 25
  L27_2 = L27_2(L28_2)
  L28_2 = L0_1
  L28_2 = L28_2.data
  L28_2 = L28_2.shouldHideNewsFeed
  if L28_2 then
    L27_2.isVisible = false
  end
  L28_2 = L0_1
  L28_2 = L28_2.newButton
  L29_2 = {}
  L29_2.image = "images/gui/clan_v2/smallClans.png"
  L29_2.width = 52
  L29_2.height = 52
  L29_2.onRelease = L17_2
  L29_2.x = 30
  L30_2 = display
  L30_2 = L30_2.contentHeight
  L30_2 = L30_2 - 26
  L29_2.y = L30_2
  L28_2 = L28_2(L29_2)
  L29_2 = L0_1
  L29_2 = L29_2.newButton
  L30_2 = {}
  L30_2.image = "images/gui/mainMenu/buttonLeaderboards.png"
  L30_2.width = 52
  L30_2.height = 52
  L30_2.onRelease = L18_2
  L30_2.x = 85
  L31_2 = display
  L31_2 = L31_2.contentHeight
  L31_2 = L31_2 - 26
  L30_2.y = L31_2
  L29_2 = L29_2(L30_2)
  L30_2 = L0_1
  L30_2 = L30_2.newButton
  L31_2 = {}
  L31_2.image = "images/gui/mainMenu/buttonFriends.png"
  L31_2.width = 52
  L31_2.height = 52
  L31_2.onRelease = L19_2
  L31_2.x = 140
  L32_2 = display
  L32_2 = L32_2.contentHeight
  L32_2 = L32_2 - 26
  L31_2.y = L32_2
  L30_2 = L30_2(L31_2)
  L31_2 = L0_1
  L31_2 = L31_2.newButton
  L32_2 = {}
  L32_2.image = "images/gui/mainMenu/buttonMarket.png"
  L32_2.width = 89
  L32_2.height = 52
  L32_2.onRelease = L20_2
  L33_2 = display
  L33_2 = L33_2.contentWidth
  L33_2 = L33_2 - 50
  L32_2.x = L33_2
  L33_2 = display
  L33_2 = L33_2.contentHeight
  L33_2 = L33_2 - 26
  L32_2.y = L33_2
  L31_2 = L31_2(L32_2)
  L32_2 = L0_1
  L32_2 = L32_2.newButton
  L33_2 = {}
  L33_2.image = "images/gui/mainMenu/buttonAchievements.png"
  L33_2.width = 52
  L33_2.height = 52
  L33_2.onRelease = L21_2
  L34_2 = display
  L34_2 = L34_2.contentWidth
  L34_2 = L34_2 - 124
  L33_2.x = L34_2
  L34_2 = display
  L34_2 = L34_2.contentHeight
  L34_2 = L34_2 - 26
  L33_2.y = L34_2
  L32_2 = L32_2(L33_2)
  
  function L33_2()
    local L0_3, L1_3
    L0_3 = L32_2
    L0_3.y = 0
    L0_3 = L31_2
    L0_3.y = 0
    L0_3 = L28_2
    L0_3.y = 0
    L0_3 = L30_2
    L0_3.y = 0
    L0_3 = L29_2
    L0_3.y = 0
  end
  
  function L34_2()
    local L0_3, L1_3
    L0_3 = transition
    L0_3 = L0_3.cancel
    L1_3 = "mainMenuButtonAnimation"
    L0_3(L1_3)
    L0_3 = L33_2
    L0_3()
  end
  
  L7_1 = L34_2
  
  function L34_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L32_2
    L0_3.y = 54
    L0_3 = L31_2
    L0_3.y = 54
    L0_3 = L28_2
    L0_3.y = 54
    L0_3 = L30_2
    L0_3.y = 54
    L0_3 = L29_2
    L0_3.y = 54
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L28_2
    L2_3 = {}
    L2_3.time = 200
    L2_3.y = 0
    L3_3 = L33_2
    L2_3.onCancel = L3_3
    L2_3.tag = "mainMenuButtonAnimation"
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L29_2
    L2_3 = {}
    L2_3.time = 200
    L2_3.y = 0
    L3_3 = L33_2
    L2_3.onCancel = L3_3
    L2_3.tag = "mainMenuButtonAnimation"
    L2_3.delay = 100
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L30_2
    L2_3 = {}
    L2_3.time = 200
    L2_3.y = 0
    L3_3 = L33_2
    L2_3.onCancel = L3_3
    L2_3.tag = "mainMenuButtonAnimation"
    L2_3.delay = 200
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L32_2
    L2_3 = {}
    L2_3.time = 200
    L2_3.y = 0
    L3_3 = L33_2
    L2_3.onCancel = L3_3
    L2_3.tag = "mainMenuButtonAnimation"
    L2_3.delay = 300
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L31_2
    L2_3 = {}
    L2_3.time = 200
    L2_3.y = 0
    L3_3 = L33_2
    L2_3.onCancel = L3_3
    L2_3.tag = "mainMenuButtonAnimation"
    L2_3.delay = 400
    L0_3(L1_3, L2_3)
  end
  
  L6_1 = L34_2
  
  function L34_2()
    local L0_3, L1_3
    L0_3 = transition
    L0_3 = L0_3.cancel
    L1_3 = "mainMenuNotification"
    L0_3(L1_3)
    L0_3 = L11_2
    L1_3 = 1
    L0_3(L1_3)
    L0_3 = L11_2
    L1_3 = 2
    L0_3(L1_3)
    L0_3 = L11_2
    L1_3 = 3
    L0_3(L1_3)
    L0_3 = L11_2
    L1_3 = 4
    L0_3(L1_3)
    L0_3 = L11_2
    L1_3 = 5
    L0_3(L1_3)
  end
  
  function L35_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L1_3 = L8_2
    if L1_3 then
      return
    end
    L1_3 = L34_2
    L1_3()
    L1_3 = L0_1
    L1_3 = L1_3.comm
    L1_3 = L1_3.getNumberOfNotifications
    L1_3 = L1_3()
    if 0 < L1_3 then
      if 99 < L1_3 then
        L1_3 = 99
      end
      L2_3 = L5_2
      L3_3 = display
      L3_3 = L3_3.newImageRect
      L4_3 = "images/gui/mainMenu/alert.png"
      L5_3 = 20
      L6_3 = 20
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3[1] = L3_3
      L2_3 = L5_2
      L2_3 = L2_3[1]
      L3_3 = L30_2
      L3_3 = L3_3.getX
      L3_3 = L3_3()
      L3_3 = L3_3 + 23
      L2_3.x = L3_3
      L2_3 = L5_2
      L2_3 = L2_3[1]
      L3_3 = L30_2
      L3_3 = L3_3.getY
      L3_3 = L3_3()
      L3_3 = L3_3 - 20
      L2_3.y = L3_3
      L2_3 = L2_2
      L3_3 = L2_3
      L2_3 = L2_3.insert
      L4_3 = L5_2
      L4_3 = L4_3[1]
      L2_3(L3_3, L4_3)
      L2_3 = L6_2
      L3_3 = L0_1
      L3_3 = L3_3.newText
      L4_3 = {}
      L4_3.string = L1_3
      L5_3 = L5_2
      L5_3 = L5_3[1]
      L5_3 = L5_3.x
      L4_3.x = L5_3
      L5_3 = L5_2
      L5_3 = L5_3[1]
      L5_3 = L5_3.y
      L4_3.y = L5_3
      L4_3.size = 20
      L5_3 = {}
      L6_3 = 1
      L7_3 = 1
      L8_3 = 1
      L5_3[1] = L6_3
      L5_3[2] = L7_3
      L5_3[3] = L8_3
      L4_3.color = L5_3
      L3_3 = L3_3(L4_3)
      L2_3[1] = L3_3
      L2_3 = L2_2
      L3_3 = L2_3
      L2_3 = L2_3.insert
      L4_3 = L6_2
      L4_3 = L4_3[1]
      L2_3(L3_3, L4_3)
    end
    L2_3 = L0_1
    L2_3 = L2_3.database
    L2_3 = L2_3.getMarketNotification
    L2_3 = L2_3()
    L3_3 = L2_3.number
    if 0 < L3_3 then
      if 99 < L3_3 then
        L3_3 = 99
      end
      L4_3 = L5_2
      L5_3 = display
      L5_3 = L5_3.newImageRect
      L6_3 = "images/gui/mainMenu/alert.png"
      L7_3 = 20
      L8_3 = 20
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L4_3[2] = L5_3
      L4_3 = L5_2
      L4_3 = L4_3[2]
      L5_3 = L31_2
      L5_3 = L5_3.getX
      L5_3 = L5_3()
      L5_3 = L5_3 + 34
      L4_3.x = L5_3
      L4_3 = L5_2
      L4_3 = L4_3[2]
      L5_3 = L31_2
      L5_3 = L5_3.getY
      L5_3 = L5_3()
      L5_3 = L5_3 - 20
      L4_3.y = L5_3
      L4_3 = L2_2
      L5_3 = L4_3
      L4_3 = L4_3.insert
      L6_3 = L5_2
      L6_3 = L6_3[1]
      L4_3(L5_3, L6_3)
      L4_3 = L6_2
      L5_3 = L0_1
      L5_3 = L5_3.newText
      L6_3 = {}
      L6_3.string = L3_3
      L7_3 = L5_2
      L7_3 = L7_3[2]
      L7_3 = L7_3.x
      L6_3.x = L7_3
      L7_3 = L5_2
      L7_3 = L7_3[2]
      L7_3 = L7_3.y
      L6_3.y = L7_3
      L6_3.size = 20
      L7_3 = {}
      L8_3 = 1
      L9_3 = 1
      L10_3 = 1
      L7_3[1] = L8_3
      L7_3[2] = L9_3
      L7_3[3] = L10_3
      L6_3.color = L7_3
      L5_3 = L5_3(L6_3)
      L4_3[2] = L5_3
      L4_3 = L2_2
      L5_3 = L4_3
      L4_3 = L4_3.insert
      L6_3 = L6_2
      L6_3 = L6_3[2]
      L4_3(L5_3, L6_3)
    end
    L4_3 = L0_1
    L4_3 = L4_3.data
    L4_3 = L4_3.dailyToClaim
    L5_3 = L0_1
    L5_3 = L5_3.data
    L5_3 = L5_3.achievementToClaim
    L4_3 = L4_3 + L5_3
    L5_3 = L0_1
    L5_3 = L5_3.consecutiveLoginsCount
    if L5_3 then
      L6_3 = L0_1
      L6_3 = L6_3.consecutiveLoginsFormatted
      if L6_3 then
        L6_3 = L0_1
        L6_3 = L6_3.consecutiveLoginsFormatted
        L6_3 = #L6_3
        if 0 < L6_3 then
          L6_3 = L0_1
          L6_3 = L6_3.awards
          L6_3 = L6_3.getConsecutiveDayConstant
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          L7_3 = L6_3.max
          L8_3 = L0_1
          L8_3 = L8_3.consecutiveLoginsFormatted
          L8_3 = L8_3[1]
          L9_3 = L8_3.p
          L10_3 = false
          L11_3 = L8_3.c
          if L11_3 then
            L11_3 = L8_3.c
            if L11_3 == 1 then
              L10_3 = true
            end
          end
          L11_3 = L9_3 / L7_3
          if 1 <= L11_3 and not L10_3 then
            L4_3 = L4_3 + 1
          end
        end
      end
    end
    if 0 < L4_3 then
      if 99 < L4_3 then
        L4_3 = 99
      end
      L6_3 = L5_2
      L7_3 = display
      L7_3 = L7_3.newImageRect
      L8_3 = "images/gui/mainMenu/alert.png"
      L9_3 = 20
      L10_3 = 20
      L7_3 = L7_3(L8_3, L9_3, L10_3)
      L6_3[3] = L7_3
      L6_3 = L5_2
      L6_3 = L6_3[3]
      L7_3 = L32_2
      L7_3 = L7_3.getX
      L7_3 = L7_3()
      L7_3 = L7_3 + 23
      L6_3.x = L7_3
      L6_3 = L5_2
      L6_3 = L6_3[3]
      L7_3 = L32_2
      L7_3 = L7_3.getY
      L7_3 = L7_3()
      L7_3 = L7_3 - 20
      L6_3.y = L7_3
      L6_3 = L2_2
      L7_3 = L6_3
      L6_3 = L6_3.insert
      L8_3 = L5_2
      L8_3 = L8_3[3]
      L6_3(L7_3, L8_3)
      L6_3 = L6_2
      L7_3 = L0_1
      L7_3 = L7_3.newText
      L8_3 = {}
      L8_3.string = L4_3
      L9_3 = L5_2
      L9_3 = L9_3[3]
      L9_3 = L9_3.x
      L8_3.x = L9_3
      L9_3 = L5_2
      L9_3 = L9_3[3]
      L9_3 = L9_3.y
      L8_3.y = L9_3
      L8_3.size = 20
      L9_3 = {}
      L10_3 = 1
      L11_3 = 1
      L12_3 = 1
      L9_3[1] = L10_3
      L9_3[2] = L11_3
      L9_3[3] = L12_3
      L8_3.color = L9_3
      L7_3 = L7_3(L8_3)
      L6_3[3] = L7_3
      L6_3 = L2_2
      L7_3 = L6_3
      L6_3 = L6_3.insert
      L8_3 = L6_2
      L8_3 = L8_3[3]
      L6_3(L7_3, L8_3)
    else
      L6_3 = L0_1
      L6_3 = L6_3.database
      L6_3 = L6_3.timeToShowDailyChallenge
      L6_3 = L6_3()
      if L6_3 then
        L6_3 = L0_1
        L6_3 = L6_3.analytics
        L6_3 = L6_3.SessionData
        L6_3 = L6_3.createdUserThisSession
        if not L6_3 then
          L6_3 = L5_2
          L7_3 = display
          L7_3 = L7_3.newImageRect
          L8_3 = "images/gui/mainMenu/alertBlue.png"
          L9_3 = 22
          L10_3 = 22
          L7_3 = L7_3(L8_3, L9_3, L10_3)
          L6_3[3] = L7_3
          L6_3 = L5_2
          L6_3 = L6_3[3]
          L7_3 = L32_2
          L7_3 = L7_3.getX
          L7_3 = L7_3()
          L7_3 = L7_3 + 23
          L6_3.x = L7_3
          L6_3 = L5_2
          L6_3 = L6_3[3]
          L7_3 = L32_2
          L7_3 = L7_3.getY
          L7_3 = L7_3()
          L7_3 = L7_3 - 20
          L6_3.y = L7_3
          L6_3 = L2_2
          L7_3 = L6_3
          L6_3 = L6_3.insert
          L8_3 = L5_2
          L8_3 = L8_3[3]
          L6_3(L7_3, L8_3)
          L6_3 = L6_2
          L7_3 = L0_1
          L7_3 = L7_3.newText
          L8_3 = {}
          L8_3.string = "!"
          L9_3 = L5_2
          L9_3 = L9_3[3]
          L9_3 = L9_3.x
          L9_3 = L9_3 + 1
          L8_3.x = L9_3
          L9_3 = L5_2
          L9_3 = L9_3[3]
          L9_3 = L9_3.y
          L8_3.y = L9_3
          L8_3.size = 20
          L9_3 = {}
          L10_3 = 1
          L11_3 = 1
          L12_3 = 1
          L9_3[1] = L10_3
          L9_3[2] = L11_3
          L9_3[3] = L12_3
          L8_3.color = L9_3
          L7_3 = L7_3(L8_3)
          L6_3[3] = L7_3
          L6_3 = L2_2
          L7_3 = L6_3
          L6_3 = L6_3.insert
          L8_3 = L6_2
          L8_3 = L8_3[3]
          L6_3(L7_3, L8_3)
        end
      end
    end
    L6_3 = L0_1
    L6_3 = L6_3.clanUtils
    L6_3 = L6_3.getNumberOfUnreadMessages
    L6_3 = L6_3()
    L7_3 = L0_1
    L7_3 = L7_3.clanUtils
    L7_3 = L7_3.getNumberOfUnreadEvents
    L7_3 = L7_3()
    L6_3 = L6_3 + L7_3
    if 0 < L6_3 then
      if 99 < L6_3 then
        L6_3 = 99
      end
      L7_3 = L5_2
      L8_3 = display
      L8_3 = L8_3.newImageRect
      L9_3 = "images/gui/mainMenu/alert.png"
      L10_3 = 20
      L11_3 = 20
      L8_3 = L8_3(L9_3, L10_3, L11_3)
      L7_3[4] = L8_3
      L7_3 = L5_2
      L7_3 = L7_3[4]
      L8_3 = L28_2
      L8_3 = L8_3.getX
      L8_3 = L8_3()
      L8_3 = L8_3 + 23
      L7_3.x = L8_3
      L7_3 = L5_2
      L7_3 = L7_3[4]
      L8_3 = L28_2
      L8_3 = L8_3.getY
      L8_3 = L8_3()
      L8_3 = L8_3 - 20
      L7_3.y = L8_3
      L7_3 = L2_2
      L8_3 = L7_3
      L7_3 = L7_3.insert
      L9_3 = L5_2
      L9_3 = L9_3[4]
      L7_3(L8_3, L9_3)
      L7_3 = L6_2
      L8_3 = L0_1
      L8_3 = L8_3.newText
      L9_3 = {}
      L9_3.string = L6_3
      L10_3 = L5_2
      L10_3 = L10_3[4]
      L10_3 = L10_3.x
      L9_3.x = L10_3
      L10_3 = L5_2
      L10_3 = L10_3[4]
      L10_3 = L10_3.y
      L9_3.y = L10_3
      L9_3.size = 20
      L10_3 = {}
      L11_3 = 1
      L12_3 = 1
      L13_3 = 1
      L10_3[1] = L11_3
      L10_3[2] = L12_3
      L10_3[3] = L13_3
      L9_3.color = L10_3
      L8_3 = L8_3(L9_3)
      L7_3[4] = L8_3
      L7_3 = L2_2
      L8_3 = L7_3
      L7_3 = L7_3.insert
      L9_3 = L6_2
      L9_3 = L9_3[4]
      L7_3(L8_3, L9_3)
    end
    L7_3 = L0_1
    L7_3 = L7_3.data
    L7_3 = L7_3.unreadNewsFeedItems
    if L7_3 then
      L7_3 = L0_1
      L7_3 = L7_3.data
      L7_3 = L7_3.unreadNewsFeedItems
      if 0 < L7_3 then
        L7_3 = L0_1
        L7_3 = L7_3.data
        L7_3 = L7_3.shouldHideNewsFeed
        if not L7_3 then
          L7_3 = L0_1
          L7_3 = L7_3.analytics
          L7_3 = L7_3.SessionData
          L7_3 = L7_3.createdUserThisSession
          if not L7_3 then
            L7_3 = L0_1
            L7_3 = L7_3.data
            L7_3 = L7_3.unreadNewsFeedItems
            if 9 < L7_3 then
              L7_3 = L0_1
              L7_3 = L7_3.data
              L7_3.unreadNewsFeedItems = 9
            end
            L7_3 = L5_2
            L8_3 = display
            L8_3 = L8_3.newImageRect
            L9_3 = "images/gui/mainMenu/alert.png"
            L10_3 = 16
            L11_3 = 16
            L8_3 = L8_3(L9_3, L10_3, L11_3)
            L7_3[5] = L8_3
            L7_3 = L5_2
            L7_3 = L7_3[5]
            L8_3 = L27_2
            L8_3 = L8_3.getX
            L8_3 = L8_3()
            L8_3 = L8_3 + 12
            L7_3.x = L8_3
            L7_3 = L5_2
            L7_3 = L7_3[5]
            L8_3 = L27_2
            L8_3 = L8_3.getY
            L8_3 = L8_3()
            L8_3 = L8_3 + 12
            L7_3.y = L8_3
            L7_3 = L2_2
            L8_3 = L7_3
            L7_3 = L7_3.insert
            L9_3 = L5_2
            L9_3 = L9_3[5]
            L7_3(L8_3, L9_3)
            L7_3 = L6_2
            L8_3 = L0_1
            L8_3 = L8_3.newText
            L9_3 = {}
            L10_3 = L0_1
            L10_3 = L10_3.data
            L10_3 = L10_3.unreadNewsFeedItems
            L9_3.string = L10_3
            L10_3 = L5_2
            L10_3 = L10_3[5]
            L10_3 = L10_3.x
            L9_3.x = L10_3
            L10_3 = L5_2
            L10_3 = L10_3[5]
            L10_3 = L10_3.y
            L9_3.y = L10_3
            L9_3.size = 15
            L10_3 = {}
            L11_3 = 1
            L12_3 = 1
            L13_3 = 1
            L10_3[1] = L11_3
            L10_3[2] = L12_3
            L10_3[3] = L13_3
            L9_3.color = L10_3
            L8_3 = L8_3(L9_3)
            L7_3[5] = L8_3
            L7_3 = L2_2
            L8_3 = L7_3
            L7_3 = L7_3.insert
            L9_3 = L6_2
            L9_3 = L9_3[5]
            L7_3(L8_3, L9_3)
          end
        end
      end
    end
    if not A0_3 then
      L7_3 = 1
      L8_3 = 5
      L9_3 = 1
      for L10_3 = L7_3, L8_3, L9_3 do
        L11_3 = os
        L11_3 = L11_3.time
        L11_3 = L11_3()
        L12_3 = L7_2
        L12_3 = L11_3 - L12_3
        if L12_3 < 20 then
        else
          L12_3 = L5_2
          L12_3 = L12_3[L10_3]
          if L12_3 then
            L12_3 = L6_2
            L12_3 = L12_3[L10_3]
            if L12_3 then
              L12_3 = L5_2
              L12_3 = L12_3[L10_3]
              L12_3.xScale = 0.1
              L12_3 = L5_2
              L12_3 = L12_3[L10_3]
              L12_3.yScale = 0.1
              L12_3 = L6_2
              L12_3 = L12_3[L10_3]
              L12_3.xScale = 0.1
              L12_3 = L6_2
              L12_3 = L12_3[L10_3]
              L12_3.yScale = 0.1
              L12_3 = transition
              L12_3 = L12_3.to
              L13_3 = L5_2
              L13_3 = L13_3[L10_3]
              L14_3 = {}
              L14_3.delay = 200
              L14_3.time = 300
              L14_3.xScale = 1
              L14_3.yScale = 1
              L15_3 = easing
              L15_3 = L15_3.outBounce
              L14_3.transition = L15_3
              L14_3.tag = "mainMenuNotification"
              L12_3(L13_3, L14_3)
              L12_3 = transition
              L12_3 = L12_3.to
              L13_3 = L6_2
              L13_3 = L13_3[L10_3]
              L14_3 = {}
              L14_3.delay = 200
              L14_3.time = 300
              L14_3.xScale = 1
              L14_3.yScale = 1
              L15_3 = easing
              L15_3 = L15_3.outBounce
              L14_3.transition = L15_3
              L14_3.tag = "mainMenuNotification"
              L12_3(L13_3, L14_3)
              L7_2 = L11_3
            end
          end
        end
      end
    end
  end
  
  function L36_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.tutorial
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.backgrounds
      L0_3 = L0_3.getBlurredBackground
      L0_3 = L0_3()
      L9_2 = L0_3
      L0_3 = L2_2
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L9_2
      L0_3(L1_3, L2_3)
      L0_3 = L9_2
      L0_3.alpha = 0
      L0_3 = L0_1
      L0_3 = L0_3.newText
      L1_3 = {}
      L2_3 = L0_1
      L2_3 = L2_3.localized
      L2_3 = L2_3.get
      L3_3 = "LoadingGame"
      L2_3 = L2_3(L3_3)
      L1_3.string = L2_3
      L2_3 = display
      L2_3 = L2_3.contentWidth
      L2_3 = L2_3 * 0.5
      L1_3.x = L2_3
      L2_3 = display
      L2_3 = L2_3.contentHeight
      L2_3 = L2_3 * 0.5
      L1_3.y = L2_3
      L1_3.size = 24
      L0_3 = L0_3(L1_3)
      L10_2 = L0_3
      L0_3 = L2_2
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L10_2
      L0_3(L1_3, L2_3)
      L0_3 = L10_2
      L0_3.alpha = 0
    end
  end
  
  function L37_2()
    local L0_3, L1_3, L2_3
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
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L24_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L25_2
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
    L2_3 = L16_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L29_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L30_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L28_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L8_1
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
  end
  
  function L38_2(A0_3)
    local L1_3, L2_3
    L1_3 = L8_2
    if L1_3 then
      return
    end
    L1_3 = L35_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  
  L5_1 = L38_2
  
  function L38_2()
    local L0_3, L1_3
    L0_3 = L34_2
    L0_3()
    L0_3 = L7_1
    L0_3()
    L0_3 = true
    L8_2 = L0_3
    L0_3 = L8_1
    if L0_3 then
      L0_3 = L8_1
      L0_3 = L0_3.clean
      L0_3()
    end
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L25_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L26_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L27_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L16_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L29_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L30_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L28_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L31_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L32_2
    L0_3(L1_3)
  end
  
  L3_1 = L38_2
  L38_2 = L37_2
  L38_2()
  L38_2 = L36_2
  L38_2()
end

L2_1.create = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = ""
  if 1000000 < A1_2 then
    function L4_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3
      
      L2_3 = A1_3 or nil
      if not A1_3 then
        L2_3 = 0
      end
      L2_3 = 10 ^ L2_3
      L3_3 = math
      L3_3 = L3_3.floor
      L4_3 = A0_3 * L2_3
      L4_3 = L4_3 + 0.5
      L3_3 = L3_3(L4_3)
      L3_3 = L3_3 / L2_3
      return L3_3
    end
    
    L5_2 = L4_2
    L6_2 = A1_2 / 1000000
    L7_2 = 1
    L5_2 = L5_2(L6_2, L7_2)
    A1_2 = L5_2
    L3_2 = " MILLION"
  elseif 1000 < A1_2 then
    L4_2 = math
    L4_2 = L4_2.floor
    L5_2 = A1_2 / 1000
    L4_2 = L4_2(L5_2)
    A1_2 = L4_2
    L3_2 = " THOUSAND"
  end
  if A0_2 == 0 then
    L4_2 = "PLAY "
    L5_2 = A1_2
    L6_2 = L3_2
    L7_2 = " GAMES: "
    L8_2 = A2_2
    L9_2 = "%"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    return L4_2
  elseif A0_2 == 1 then
    L4_2 = "PLAY "
    L5_2 = A1_2
    L6_2 = L3_2
    L7_2 = " QUICK PLAY GAMES: "
    L8_2 = A2_2
    L9_2 = "%"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    return L4_2
  elseif A0_2 == 2 then
    L4_2 = "PLAY "
    L5_2 = A1_2
    L6_2 = L3_2
    L7_2 = " 2v2 GAMES: "
    L8_2 = A2_2
    L9_2 = "%"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    return L4_2
  elseif A0_2 == 3 then
    L4_2 = "PLAY "
    L5_2 = A1_2
    L6_2 = L3_2
    L7_2 = " FRIEND GAMES: "
    L8_2 = A2_2
    L9_2 = "%"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    return L4_2
  elseif A0_2 == 4 then
    L4_2 = "GET "
    L5_2 = A1_2
    L6_2 = L3_2
    L7_2 = " KILLS: "
    L8_2 = A2_2
    L9_2 = "%"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    return L4_2
  elseif A0_2 == 5 then
    L4_2 = "PLAY "
    L5_2 = A1_2
    L6_2 = L3_2
    L7_2 = " BONUS RACES: "
    L8_2 = A2_2
    L9_2 = "%"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    return L4_2
  elseif A0_2 == 6 then
    L4_2 = "GET "
    L5_2 = A1_2
    L6_2 = L3_2
    L7_2 = " FRIEND KILLS: "
    L8_2 = A2_2
    L9_2 = "%"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    return L4_2
  else
    L4_2 = ""
    return L4_2
  end
end

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2
  L2_2 = A1_2.phase
  L3_2 = A0_2.view
  L4_2 = false
  if L2_2 == "will" then
    return
  end
  L5_2 = isAndroid
  if L5_2 then
    L5_2 = native
    L5_2 = L5_2.setProperty
    L6_2 = "androidSystemUiVisibility"
    L7_2 = "immersiveSticky"
    L5_2(L6_2, L7_2)
  end
  L5_2 = require
  L6_2 = "lua.modules.androidBackButton"
  L5_2 = L5_2(L6_2)
  L6_2 = require
  L7_2 = "plugin.notifications"
  L6_2 = L6_2(L7_2)
  L7_2 = L6_2.registerForPushNotifications
  L7_2()
  L7_2 = false
  L8_2 = system
  L8_2 = L8_2.getTimer
  L8_2 = L8_2()
  L9_2 = require
  L10_2 = "lua.ads.rewardedVideoEntrypoint"
  L9_2 = L9_2(L10_2)
  L10_2 = require
  L11_2 = "lua.ads.videoModule"
  L10_2 = L10_2(L11_2)
  L11_2 = nil
  L12_2 = false
  L13_2 = require
  L14_2 = "spine-corona.monsterLoader"
  L13_2 = L13_2(L14_2)
  L14_2 = L13_2.new
  L15_2 = L0_1
  L15_2 = L15_2.database
  L15_2 = L15_2.getAvatarData
  L15_2 = L15_2()
  L16_2 = nil
  L17_2 = nil
  L18_2 = L0_1
  L18_2 = L18_2.data
  L18_2 = L18_2.clans
  L18_2 = L18_2.emblem
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
  L15_2 = L14_2.showDropShadow
  L16_2 = true
  L17_2 = 7
  L15_2(L16_2, L17_2)
  L15_2 = L14_2.updateSpeed
  L16_2 = 0.6
  L15_2(L16_2)
  L15_2 = L14_2.getGroup
  L15_2 = L15_2()
  L15_2.xScale = 0.5
  L15_2.yScale = 0.5
  L15_2.x = 84
  L15_2.y = 232
  L17_2 = L3_2
  L16_2 = L3_2.insert
  L18_2 = L15_2
  L16_2(L17_2, L18_2)
  L16_2 = nil
  
  function L17_2()
    local L0_3, L1_3
    L0_3 = L7_2
    if not L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.analytics
      L0_3 = L0_3.SessionData
      L0_3 = L0_3.createdUserThisSession
      if not L0_3 then
        L0_3 = L4_2
        if not L0_3 then
          goto lbl_14
        end
      end
    end
    do return end
    ::lbl_14::
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.promoSale
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.database
      L0_3 = L0_3.promoSale
      L0_3 = L0_3.b
      if L0_3 < 0 then
        return
      end
      L0_3 = true
      L7_2 = L0_3
      L0_3 = L8_1
      L0_3 = L0_3.setPromotionImage
      L0_3()
    end
  end
  
  function L18_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.analytics
    L0_3 = L0_3.SessionData
    L0_3 = L0_3.createdUserThisSession
    L1_3 = L0_1
    L1_3 = L1_3.rewardedVideoOnMainMenu
    if L1_3 then
      L1_3 = L10_2
      L1_3 = L1_3.isVideoReady
      L1_3 = L1_3()
      if L1_3 then
        L1_3 = L12_2
        if not L1_3 and not L0_3 then
          L1_3 = true
          L12_2 = L1_3
          L1_3 = L9_2
          L1_3 = L1_3.init
          L2_3 = "gem"
          L3_3 = nil
          L1_3 = L1_3(L2_3, L3_3)
          L11_2 = L1_3
          L1_3 = L3_2
          L2_3 = L1_3
          L1_3 = L1_3.insert
          L3_3 = L11_2
          L1_3(L2_3, L3_3)
        end
      end
    end
  end
  
  function L19_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.todayChallenges
    L0_3 = L0_3.hasShown
    if not L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.todayChallenges
      L0_3 = L0_3.data
      if L0_3 then
        L0_3 = L0_1
        L0_3 = L0_3.todayChallenges
        L0_3 = L0_3.time
        if L0_3 then
          L0_3 = L0_1
          L0_3 = L0_3.todayChallenges
          L0_3.hasShown = true
          L0_3 = L0_1
          L0_3 = L0_3.database
          L0_3 = L0_3.timeToShowDailyChallenge
          L0_3 = L0_3()
          if L0_3 then
            L0_3 = L0_1
            L0_3 = L0_3.gamesPlayed
            if 5 < L0_3 then
              L0_3 = L0_1
              L0_3 = L0_3.dontShowTodaysChallenges
              if L0_3 then
                L0_3 = false
                return L0_3
              end
              L0_3 = true
              return L0_3
            end
          end
        end
      end
    end
    L0_3 = false
    return L0_3
  end
  
  function L20_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = {}
    L0_3.isModal = true
    L1_3 = L0_1
    L1_3 = L1_3.showOverlay
    L2_3 = "lua.overlays.todaysChallenges"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  
  function L21_2()
    local L0_3, L1_3
    L0_3 = L19_2
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = L20_2
      L0_3()
    end
  end
  
  function L22_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.m
    if L1_3 then
      L1_3 = L5_1
      L1_3()
      L1_3 = L17_2
      L1_3()
      L1_3 = A0_3.m
      L2_3 = L1_1
      L2_3 = L2_3.seenBoostVideoSingle
      L2_3 = L2_3()
      if L1_3 == L2_3 then
        L1_3 = L0_1
        L1_3.rewardedVideoOnMainMenu = false
        L1_3 = L11_2
        L1_3 = L1_3.onCommCallback
        L1_3()
      end
    end
  end
  
  function L23_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L0_1
    L2_3 = L2_3.database
    L2_3 = L2_3.getPlayerInformation
    L2_3 = L2_3()
    L2_3 = L2_3.username
    L1_3.username = L2_3
    L2_3 = L0_1
    L2_3 = L2_3.database
    L2_3 = L2_3.getAvatarData
    L2_3 = L2_3()
    L1_3.avatar = L2_3
    L2_3 = L0_1
    L2_3 = L2_3.database
    L2_3 = L2_3.getPlayerInformation
    L2_3 = L2_3()
    L2_3 = L2_3.playerId
    L1_3.playerId = L2_3
    L2_3 = L0_1
    L2_3 = L2_3.database
    L2_3 = L2_3.getPowerupSkin
    L2_3 = L2_3()
    L1_3.customPowerUps = L2_3
    L0_3[1] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L1_3 = L0_1
    L1_3 = L1_3.config
    L1_3 = L1_3.gameType
    L0_3.gameType = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L1_3 = L0_1
    L1_3 = L1_3.config
    L1_3 = L1_3.mapId
    L0_3.map = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.gotoScene
    L1_3 = "lua.scenes.gamePlay"
    L0_3(L1_3)
  end
  
  function L24_2()
    local L0_3, L1_3
    L0_3 = isSimulator
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.config
      L0_3 = L0_3.bot
      if L0_3 then
        L0_3 = L0_1
        L0_3 = L0_3.comm
        L0_3 = L0_3.isOnline
        L0_3()
        L0_3 = L0_1
        L0_3 = L0_3.gotoScene
        L1_3 = "lua.scenes.playMenu"
        L0_3(L1_3)
      end
    end
  end
  
  function L25_2()
    local L0_3, L1_3
    L0_3 = require
    L1_3 = "lua.modules.platformStoreButtonFunction"
    L0_3 = L0_3(L1_3)
    L1_3 = L0_3.toPlatformStoreButton
    L1_3()
  end
  
  function L26_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = {}
    L0_3.isModal = true
    L1_3 = L0_1
    L1_3 = L1_3.showOverlay
    L2_3 = "lua.overlays.crossPromotion"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  
  L27_2 = L0_1
  L27_2 = L27_2.newButton
  L28_2 = {}
  L28_2.image = "images/gui/mainMenu/update.png"
  L28_2.width = 126
  L28_2.height = 36
  L28_2.onRelease = L25_2
  L28_2.x = 68
  L28_2.y = 70
  L27_2 = L27_2(L28_2)
  L29_2 = L3_2
  L28_2 = L3_2.insert
  L30_2 = L27_2
  L28_2(L29_2, L30_2)
  L28_2 = L0_1
  L28_2 = L28_2.data
  L28_2 = L28_2.updateAvailable
  if not L28_2 then
    L27_2.isVisible = false
  end
  L28_2 = L0_1
  L28_2 = L28_2.newButton
  L29_2 = {}
  L29_2.image = "images/gui/mainMenu/buttonFRAlogo.png"
  L29_2.width = 58
  L29_2.height = 54
  L29_2.onRelease = L26_2
  L30_2 = display
  L30_2 = L30_2.contentWidth
  L30_2 = L30_2 - 28
  L29_2.x = L30_2
  L29_2.y = 26
  L28_2 = L28_2(L29_2)
  L30_2 = L3_2
  L29_2 = L3_2.insert
  L31_2 = L28_2
  L29_2(L30_2, L31_2)
  L28_2.isVisible = false
  
  function L29_2()
    local L0_3, L1_3
    L0_3 = L28_2
    L0_3.isVisible = true
  end
  
  L30_2 = L0_1
  L30_2 = L30_2.data
  L30_2 = L30_2.crossPromotionIsActive
  if L30_2 then
    L30_2 = L29_2
    L30_2()
  end
  
  function L30_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = true
    L4_2 = L0_3
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "videoLoadedEvent"
    L3_3 = L18_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "showTodaysChallenges"
    L3_3 = L21_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L5_2
    L0_3 = L0_3.removeBackButton
    L0_3()
    L0_3 = L14_2
    if L0_3 then
      L0_3 = L14_2
      L0_3 = L0_3.clean
      L0_3()
    end
    L0_3 = L11_2
    if L0_3 then
      L0_3 = L11_2
      L0_3 = L0_3.clean
      if L0_3 then
        L0_3 = L11_2
        L0_3 = L0_3.clean
        L0_3()
      end
    end
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L27_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L28_2
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.analytics
    L0_3 = L0_3.SessionData
    L0_3 = L0_3.createdUserThisSession
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.analytics
      L0_3 = L0_3.addDesignEvent
      L1_3 = "Onboarding:MainMenu:Exit"
      L0_3(L1_3)
    end
  end
  
  L4_1 = L30_2
  L30_2 = L5_1
  L30_2()
  L30_2 = L0_1
  L30_2 = L30_2.comm
  L30_2 = L30_2.setCallback
  L31_2 = L22_2
  L30_2(L31_2)
  L30_2 = L2_1
  
  function L31_2(A0_3)
    local L1_3, L2_3
    L1_3 = print
    L2_3 = "Overlay ended in main menu"
    L1_3(L2_3)
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()
    L8_2 = L1_3
    L1_3 = L5_1
    L2_3 = true
    L1_3(L2_3)
    L1_3 = L0_1
    L1_3 = L1_3.comm
    L1_3 = L1_3.setCallback
    L2_3 = L22_2
    L1_3(L2_3)
    L1_3 = L11_2
    if L1_3 then
      L1_3 = L11_2
      L1_3 = L1_3.onCommCallback
      L1_3()
    end
  end
  
  L30_2.overlayEnded = L31_2
  L30_2 = L0_1
  L30_2 = L30_2.data
  L30_2 = L30_2.wrongVersion
  if L30_2 then
    L30_2 = L0_1
    L30_2 = L30_2.gotoScene
    L31_2 = "lua.scenes.updateScene"
    L30_2(L31_2)
  end
  L30_2 = L0_1
  L30_2.enterMainMenu = true
  L30_2 = L0_1
  L30_2 = L30_2.errorTable
  L30_2 = L30_2.server
  if L30_2 then
    L30_2 = L0_1
    L30_2 = L30_2.errorTable
    L30_2 = L30_2.showServerError
    if L30_2 then
      L30_2 = L0_1
      L30_2 = L30_2.errorTable
      L30_2.showServerError = false
    end
  end
  L30_2 = L0_1
  L30_2 = L30_2.config
  L30_2 = L30_2.startGameAtOnce
  if L30_2 then
    L30_2 = L23_2
    L30_2()
  else
    L30_2 = L0_1
    L30_2 = L30_2.config
    L30_2 = L30_2.showPostLobby
    if L30_2 then
      L30_2 = L0_1
      L30_2 = L30_2.data
      L30_2 = L30_2.gameInfo
      L31_2 = L0_1
      L31_2 = L31_2.config
      L31_2 = L31_2.mapId
      L30_2.map = L31_2
      L30_2 = L0_1
      L30_2 = L30_2.data
      L30_2 = L30_2.gameInfo
      L31_2 = L0_1
      L31_2 = L31_2.config
      L31_2 = L31_2.gameType
      L30_2.gameType = L31_2
      L30_2 = L0_1
      L30_2 = L30_2.data
      L30_2 = L30_2.gameInfo
      L30_2 = L30_2.players
      L31_2 = {}
      L32_2 = L0_1
      L32_2 = L32_2.database
      L32_2 = L32_2.getPlayerInformation
      L32_2 = L32_2()
      L32_2 = L32_2.username
      L31_2.username = L32_2
      L32_2 = L0_1
      L32_2 = L32_2.database
      L32_2 = L32_2.getAvatarData
      L32_2 = L32_2()
      L31_2.avatar = L32_2
      L32_2 = L0_1
      L32_2 = L32_2.database
      L32_2 = L32_2.getPlayerInformation
      L32_2 = L32_2()
      L32_2 = L32_2.playerId
      L31_2.playerId = L32_2
      L31_2.league = 0
      L30_2[1] = L31_2
      L30_2 = L0_1
      L30_2 = L30_2.data
      L30_2 = L30_2.gameInfo
      L30_2 = L30_2.players
      L31_2 = {}
      L31_2.username = "BearBot"
      L32_2 = {}
      L33_2 = 105
      L34_2 = 0
      L35_2 = 0
      L36_2 = 0
      L37_2 = 0
      L38_2 = 0
      L39_2 = 0
      L32_2[1] = L33_2
      L32_2[2] = L34_2
      L32_2[3] = L35_2
      L32_2[4] = L36_2
      L32_2[5] = L37_2
      L32_2[6] = L38_2
      L32_2[7] = L39_2
      L31_2.avatar = L32_2
      L31_2.playerId = 1
      L31_2.league = 1
      L30_2[2] = L31_2
      L30_2 = L0_1
      L30_2 = L30_2.data
      L30_2 = L30_2.gameInfo
      L30_2 = L30_2.players
      L31_2 = {}
      L31_2.username = "PandaBot"
      L32_2 = {}
      L33_2 = 105
      L34_2 = 214
      L35_2 = 0
      L36_2 = 0
      L37_2 = 0
      L38_2 = 0
      L39_2 = 0
      L32_2[1] = L33_2
      L32_2[2] = L34_2
      L32_2[3] = L35_2
      L32_2[4] = L36_2
      L32_2[5] = L37_2
      L32_2[6] = L38_2
      L32_2[7] = L39_2
      L31_2.avatar = L32_2
      L31_2.playerId = 2
      L31_2.league = 2
      L30_2[3] = L31_2
      L30_2 = L0_1
      L30_2 = L30_2.data
      L30_2 = L30_2.gameInfo
      L30_2 = L30_2.players
      L31_2 = {}
      L31_2.username = "TurtleBot"
      L32_2 = {}
      L33_2 = 104
      L34_2 = 0
      L35_2 = 0
      L36_2 = 0
      L37_2 = 0
      L38_2 = 0
      L39_2 = 0
      L32_2[1] = L33_2
      L32_2[2] = L34_2
      L32_2[3] = L35_2
      L32_2[4] = L36_2
      L32_2[5] = L37_2
      L32_2[6] = L38_2
      L32_2[7] = L39_2
      L31_2.avatar = L32_2
      L31_2.playerId = 3
      L31_2.league = 3
      L30_2[4] = L31_2
      L30_2 = L0_1
      L30_2 = L30_2.gotoScene
      L31_2 = "lua.scenes.postLobby"
      L30_2(L31_2)
    end
  end
  L30_2 = L0_1
  L30_2 = L30_2.contextualOnboarding
  L30_2 = L30_2.isActive
  if L30_2 == true then
    L30_2 = L0_1
    L30_2 = L30_2.onboarding
    L30_2 = L30_2.addGuiReference
    L31_2 = "mainMenu_playButton"
    L32_2 = L3_2
    L30_2(L31_2, L32_2)
    L30_2 = L0_1
    L30_2 = L30_2.contextualOnboarding
    L30_2 = L30_2.isPartActive
    L31_2 = 3
    L30_2 = L30_2(L31_2)
    if L30_2 then
      L30_2 = L0_1
      L30_2 = L30_2.gamesPlayed
      if L30_2 < 1 then
        L30_2 = L0_1
        L30_2 = L30_2.contextualOnboarding
        L30_2 = L30_2.showPlayArrow
        L30_2()
      else
        L30_2 = L0_1
        L30_2 = L30_2.contextualOnboarding
        L30_2 = L30_2.setPartDone
        L31_2 = 3
        L30_2(L31_2)
      end
    end
  end
  L30_2 = L5_2.addBackButton
  L30_2()
  L30_2 = timer
  L30_2 = L30_2.performWithDelay
  L31_2 = 2000
  L32_2 = L24_2
  L33_2 = 1
  L30_2(L31_2, L32_2, L33_2)
  L30_2 = L0_1
  L30_2 = L30_2.notification
  L30_2 = L30_2.checkForPushNotification
  L30_2()
  L30_2 = L6_2.cancelNotification
  L30_2()
  L30_2 = L17_2
  L30_2()
  L30_2 = L18_2
  L30_2()
  L30_2 = Runtime
  L31_2 = L30_2
  L30_2 = L30_2.addEventListener
  L32_2 = "videoLoadedEvent"
  L33_2 = L18_2
  L30_2(L31_2, L32_2, L33_2)
  L30_2 = Runtime
  L31_2 = L30_2
  L30_2 = L30_2.addEventListener
  L32_2 = "showTodaysChallenges"
  L33_2 = L21_2
  L30_2(L31_2, L32_2, L33_2)
  L30_2 = L0_1
  L30_2 = L30_2.database
  L30_2 = L30_2.getReceipts
  L30_2 = L30_2()
  L31_2 = L0_1
  L31_2 = L31_2.goToLobbyCustomPlay
  if L31_2 then
    L31_2 = L0_1
    L31_2.goToLobbyCustomPlay = false
    L31_2 = L0_1
    L32_2 = {}
    L31_2.gameHostData = L32_2
    L31_2 = L0_1
    L31_2 = L31_2.data
    L31_2 = L31_2.gameInfo
    L31_2.gameType = 3
    L31_2 = L0_1
    L31_2 = L31_2.gotoScene
    L32_2 = "lua.scenes.lobbyCustomPlay"
    L31_2(L32_2)
  else
    if L30_2 then
      L31_2 = #L30_2
      if 0 < L31_2 then
        L31_2 = L0_1
        L31_2 = L31_2.comm
        L31_2 = L31_2.isOnline
        L31_2 = L31_2()
        if L31_2 then
          L31_2 = L0_1
          L31_2 = L31_2.showOverlay
          L32_2 = "lua.overlays.receiptChecker"
          L33_2 = {}
          L31_2(L32_2, L33_2)
        end
    end
    else
      L31_2 = L0_1
      L31_2 = L31_2.database
      L31_2 = L31_2.hasSeenCrossPromotion
      L31_2 = L31_2()
      if not L31_2 then
        L31_2 = L0_1
        L31_2 = L31_2.data
        L31_2 = L31_2.crossPromotionIsActive
        if L31_2 then
          L31_2 = L0_1
          L31_2 = L31_2.data
          L31_2 = L31_2.crossPromotionGameLimit
          L32_2 = L0_1
          L32_2 = L32_2.gamesPlayed
          if L31_2 <= L32_2 then
            L31_2 = L26_2
            L31_2()
        end
      end
      else
        L31_2 = L0_1
        L31_2 = L31_2.showLeaguePrize
        if L31_2 then
          L31_2 = {}
          L31_2.isModal = true
          L32_2 = L0_1
          L32_2 = L32_2.showOverlay
          L33_2 = "lua.overlays.leaguePrize"
          L34_2 = L31_2
          L32_2(L33_2, L34_2)
        else
          L31_2 = L0_1
          L31_2 = L31_2.showingSendGift
          if L31_2 then
            L31_2 = L0_1
            L31_2.showingSendGift = false
            L31_2 = {}
            L31_2.isModal = true
            L32_2 = {}
            L32_2.mysteryBox = true
            L31_2.params = L32_2
            L32_2 = L0_1
            L32_2 = L32_2.showOverlay
            L33_2 = "lua.overlays.messages"
            L34_2 = L31_2
            L32_2(L33_2, L34_2)
          else
            L31_2 = L19_2
            L31_2 = L31_2()
            if L31_2 then
              L31_2 = L20_2
              L31_2()
            else
              L31_2 = L0_1
              L31_2 = L31_2.league
              if L31_2 then
                L31_2 = L0_1
                L31_2 = L31_2.league
                L31_2 = L31_2.currentLeague
                L32_2 = L0_1
                L32_2 = L32_2.league
                L32_2 = L32_2.promotionType
                L33_2 = {}
                L33_2.isModal = true
                L34_2 = {}
                L34_2.promotionType = L32_2
                L35_2 = tonumber
                L36_2 = L31_2
                L35_2 = L35_2(L36_2)
                L34_2.league = L35_2
                L33_2.params = L34_2
                L34_2 = L0_1
                L34_2 = L34_2.showOverlay
                L35_2 = "lua.overlays.leaguePromotion"
                L36_2 = L33_2
                L34_2(L35_2, L36_2)
                L34_2 = L0_1
                L34_2.league = nil
              end
            end
          end
        end
      end
    end
  end
  L31_2 = L0_1
  L31_2 = L31_2.loggedInThisSession
  if L31_2 then
    L31_2 = L0_1
    L31_2 = L31_2.comm
    L31_2 = L31_2.getEarnCoins
    L31_2()
    L31_2 = L0_1
    L31_2.loggedInThisSession = false
  end
  L31_2 = L0_1
  L31_2 = L31_2.analytics
  L31_2 = L31_2.SessionData
  L31_2 = L31_2.createdUserThisSession
  if L31_2 then
    L31_2 = L0_1
    L31_2 = L31_2.analytics
    L31_2 = L31_2.addDesignEvent
    L32_2 = "Onboarding:MainMenu:Enter"
    L31_2(L32_2)
  end
  L31_2 = L0_1
  L31_2 = L31_2.config
  L31_2 = L31_2.showLeaguePrizeTest
  if L31_2 then
    L31_2 = {}
    L31_2.isModal = true
    L32_2 = {}
    L33_2 = {}
    L33_2.l = 2
    L33_2.p = 23
    L32_2.leagueState = L33_2
    L33_2 = {}
    L33_2.l = 2
    L33_2.p = 23
    L32_2.rating = L33_2
    L33_2 = {}
    L34_2 = {}
    L34_2.type = "HARD_CURRENCY"
    L34_2.amount = 10
    L35_2 = {}
    L35_2.type = "SOFT_CURRENCY"
    L35_2.amount = 10
    L33_2[1] = L34_2
    L33_2[2] = L35_2
    L32_2.prizes = L33_2
    L31_2.params = L32_2
    L32_2 = L0_1
    L32_2 = L32_2.showOverlay
    L33_2 = "lua.overlays.leaguePrize"
    L34_2 = L31_2
    L32_2(L33_2, L34_2)
  end
  L31_2 = L0_1
  L31_2 = L31_2.config
  L31_2 = L31_2.showClanPrizeTest
  if L31_2 then
    L31_2 = {}
    L31_2.isModal = true
    L32_2 = {}
    L32_2.itemReward = nil
    L32_2.coinReward = 1000
    L31_2.params = L32_2
    L32_2 = L0_1
    L32_2 = L32_2.showOverlay
    L33_2 = "lua.overlays.clanRewardOverlay"
    L34_2 = L31_2
    L32_2(L33_2, L34_2)
  end
  L31_2 = L0_1
  L31_2 = L31_2.config
  L31_2 = L31_2.showSpinningWheelTest
  if L31_2 then
    L31_2 = {}
    L31_2.isModal = true
    L32_2 = {}
    L31_2.params = L32_2
    L32_2 = L0_1
    L32_2 = L32_2.showOverlay
    L33_2 = "lua.overlays.spinningWheel"
    L34_2 = L31_2
    L32_2(L33_2, L34_2)
  end
  L31_2 = L0_1
  L31_2 = L31_2.config
  L31_2 = L31_2.showLeaguePromotionTest
  if L31_2 then
    L31_2 = {}
    L31_2.isModal = true
    L32_2 = {}
    L32_2.league = 4
    L32_2.promotionType = 1
    L31_2.params = L32_2
    L32_2 = L0_1
    L32_2 = L32_2.showOverlay
    L33_2 = "lua.overlays.leaguePromotion"
    L34_2 = L31_2
    L32_2(L33_2, L34_2)
  end
  L31_2 = L0_1
  L31_2 = L31_2.config
  L31_2 = L31_2.showMarketFreeTest
  if L31_2 then
    L31_2 = {}
    L31_2.isModal = true
    L32_2 = {}
    L33_2 = L0_1
    L33_2 = L33_2.storeConfig
    L33_2 = L33_2.getMarketItem
    L34_2 = 204
    L33_2 = L33_2(L34_2)
    L32_2.item = L33_2
    L31_2.params = L32_2
    L32_2 = L0_1
    L32_2 = L32_2.showOverlay
    L33_2 = "lua.overlays.marketFree"
    L34_2 = L31_2
    L32_2(L33_2, L34_2)
  end
  L31_2 = L0_1
  L31_2 = L31_2.config
  L31_2 = L31_2.showSpinPrizeTest
  if L31_2 then
    L31_2 = {}
    L31_2.isModal = true
    L32_2 = {}
    L33_2 = {}
    L33_2.id = 3
    L33_2.type = "mystery"
    L33_2.image = "prizeGems1.png"
    L32_2.rewardThatIsWon = L33_2
    L32_2.rewardValue = 2104
    L31_2.params = L32_2
    L32_2 = L0_1
    L32_2 = L32_2.showOverlay
    L33_2 = "lua.overlays.spinPrize"
    L34_2 = L31_2
    L32_2(L33_2, L34_2)
  end
end

L2_1.show = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    L3_2 = L0_1
    L3_2 = L3_2.contextualOnboarding
    L3_2 = L3_2.isActive
    if L3_2 == true then
      L3_2 = L0_1
      L3_2 = L3_2.contextualOnboarding
      L3_2 = L3_2.isPartActive
      L4_2 = 3
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = L0_1
        L3_2 = L3_2.contextualOnboarding
        L3_2 = L3_2.hidePlayArrow
        L3_2()
      end
    end
    L3_2 = L4_1
    if L3_2 then
      L3_2 = L4_1
      L3_2()
      L3_2 = nil
      L4_1 = L3_2
    end
  elseif L2_2 == "did" then
  end
end

L2_1.hide = L10_1

function L10_1(A0_2, A1_2)
  local L2_2
  L2_2 = L4_1
  if L2_2 then
    L2_2 = L4_1
    L2_2()
    L2_2 = nil
    L4_1 = L2_2
  end
  L2_2 = L3_1
  if L2_2 then
    L2_2 = L3_1
    L2_2()
    L2_2 = nil
    L3_1 = L2_2
  end
end

L2_1.destroy = L10_1
L11_1 = L2_1
L10_1 = L2_1.addEventListener
L12_1 = "create"
L13_1 = L2_1
L10_1(L11_1, L12_1, L13_1)
L11_1 = L2_1
L10_1 = L2_1.addEventListener
L12_1 = "show"
L13_1 = L2_1
L10_1(L11_1, L12_1, L13_1)
L11_1 = L2_1
L10_1 = L2_1.addEventListener
L12_1 = "hide"
L13_1 = L2_1
L10_1(L11_1, L12_1, L13_1)
L11_1 = L2_1
L10_1 = L2_1.addEventListener
L12_1 = "destroy"
L13_1 = L2_1
L10_1(L11_1, L12_1, L13_1)
return L2_1
