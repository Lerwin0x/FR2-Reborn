local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.newScene
L1_1 = L1_1()
L2_1 = nil
L3_1 = nil

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L2_2 = A0_2.view
  L3_2 = nil
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = L3_2
    if L1_3 then
      L1_3 = native
      L1_3 = L1_3.cancelAlert
      L2_3 = L3_2
      L1_3(L2_3)
      L1_3 = nil
      L3_2 = L1_3
    end
    if A0_3 == 1 then
    elseif A0_3 == 2 then
    elseif A0_3 == 3 then
      L1_3 = native
      L1_3 = L1_3.showAlert
      L2_3 = L0_1
      L2_3 = L2_3.localized
      L2_3 = L2_3.get
      L3_3 = "ServerMessage"
      L2_3 = L2_3(L3_3)
      L3_3 = L0_1
      L3_3 = L3_3.errorTable
      L3_3 = L3_3.quickplay
      L4_3 = {}
      L5_3 = L0_1
      L5_3 = L5_3.localized
      L5_3 = L5_3.get
      L6_3 = "Ok"
      L5_3, L6_3 = L5_3(L6_3)
      L4_3[1] = L5_3
      L4_3[2] = L6_3
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      L3_2 = L1_3
    elseif A0_3 == 4 then
      L1_3 = native
      L1_3 = L1_3.showAlert
      L2_3 = L0_1
      L2_3 = L2_3.localized
      L2_3 = L2_3.get
      L3_3 = "ServerMessage"
      L2_3 = L2_3(L3_3)
      L3_3 = L0_1
      L3_3 = L3_3.errorTable
      L3_3 = L3_3.friends
      L4_3 = {}
      L5_3 = L0_1
      L5_3 = L5_3.localized
      L5_3 = L5_3.get
      L6_3 = "Ok"
      L5_3, L6_3 = L5_3(L6_3)
      L4_3[1] = L5_3
      L4_3[2] = L6_3
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      L3_2 = L1_3
    end
  end
  
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = L0_1
    L1_3 = L1_3.analytics
    L1_3 = L1_3.SessionData
    L1_3 = L1_3.createdUserThisSession
    if L1_3 then
      L1_3 = L0_1
      L1_3 = L1_3.analytics
      L1_3 = L1_3.addDesignEvent
      L2_3 = "Onboarding:PlayMenu:PressPractice"
      L1_3(L2_3)
    end
    L1_3 = L0_1
    L1_3 = L1_3.gotoScene
    L2_3 = "lua.scenes.lobbyPractise"
    L1_3(L2_3)
  end
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = L0_1
    L1_3 = L1_3.errorTable
    L1_3 = L1_3.quickplay
    if L1_3 then
      L1_3 = L4_2
      L2_3 = 3
      L1_3(L2_3)
    else
      L1_3 = L0_1
      L1_3 = L1_3.comm
      L1_3 = L1_3.isOnline
      L1_3 = L1_3()
      if L1_3 then
        L1_3 = L0_1
        L1_3 = L1_3.analytics
        L1_3 = L1_3.SessionData
        L1_3 = L1_3.createdUserThisSession
        if L1_3 then
          L1_3 = L0_1
          L1_3 = L1_3.analytics
          L1_3 = L1_3.addDesignEvent
          L2_3 = "Onboarding:PlayMenu:PressQuickPlay"
          L1_3(L2_3)
        end
        L1_3 = L0_1
        L1_3 = L1_3.data
        L1_3 = L1_3.gameInfo
        L1_3.gameType = 1
        L1_3 = L0_1
        L1_3 = L1_3.gotoScene
        L2_3 = "lua.scenes.lobbyQuickPlay"
        L1_3(L2_3)
      else
        L1_3 = L0_1
        L1_3 = L1_3.createCustomOverlay
        L2_3 = 1
        L1_3(L2_3)
      end
    end
  end
  
  function L7_2(A0_3)
    local L1_3, L2_3
    L1_3 = L0_1
    L1_3 = L1_3.comm
    L1_3 = L1_3.isOnline
    L1_3 = L1_3()
    if L1_3 then
      L1_3 = L0_1
      L2_3 = {}
      L1_3.gameHostData = L2_3
      L1_3 = L0_1
      L1_3 = L1_3.data
      L1_3 = L1_3.gameInfo
      L1_3.gameType = 3
      L1_3 = L0_1
      L1_3 = L1_3.analytics
      L1_3 = L1_3.SessionData
      L1_3 = L1_3.createdUserThisSession
      if L1_3 then
        L1_3 = L0_1
        L1_3 = L1_3.analytics
        L1_3 = L1_3.addDesignEvent
        L2_3 = "Onboarding:PlayMenu:PressCustomPlay"
        L1_3(L2_3)
      end
      L1_3 = L0_1
      L1_3 = L1_3.gotoScene
      L2_3 = "lua.scenes.lobbyCustomPlay"
      L1_3(L2_3)
    else
      L1_3 = L0_1
      L1_3 = L1_3.createCustomOverlay
      L2_3 = 1
      L1_3(L2_3)
    end
  end
  
  function L8_2(A0_3)
    local L1_3, L2_3
    L1_3 = L0_1
    L1_3 = L1_3.comm
    L1_3 = L1_3.isOnline
    L1_3 = L1_3()
    if L1_3 then
      L1_3 = L0_1
      L2_3 = {}
      L1_3.gameHostData = L2_3
      L1_3 = L0_1
      L1_3 = L1_3.data
      L1_3 = L1_3.gameInfo
      L1_3.gameType = 5
      L1_3 = L0_1
      L1_3 = L1_3.analytics
      L1_3 = L1_3.SessionData
      L1_3 = L1_3.createdUserThisSession
      if L1_3 then
        L1_3 = L0_1
        L1_3 = L1_3.analytics
        L1_3 = L1_3.addDesignEvent
        L2_3 = "Onboarding:PlayMenu:Press2V2Play"
        L1_3(L2_3)
      end
      L1_3 = L0_1
      L1_3 = L1_3.gotoScene
      L2_3 = "lua.scenes.lobby2v2Play"
      L1_3(L2_3)
    else
      L1_3 = L0_1
      L1_3 = L1_3.createCustomOverlay
      L2_3 = 1
      L1_3(L2_3)
    end
  end
  
  function L9_2(A0_3)
    local L1_3, L2_3
    L1_3 = L0_1
    L1_3 = L1_3.analytics
    L1_3 = L1_3.SessionData
    L1_3 = L1_3.createdUserThisSession
    if L1_3 then
      L1_3 = L0_1
      L1_3 = L1_3.analytics
      L1_3 = L1_3.addDesignEvent
      L2_3 = "Onboarding:PlayMenu:PressHome"
      L1_3(L2_3)
    end
    L1_3 = L0_1
    L1_3 = L1_3.gotoScene
    L2_3 = "lua.scenes.mainMenu"
    L1_3(L2_3)
  end
  
  L10_2 = L0_1
  L10_2 = L10_2.backgrounds
  L10_2 = L10_2.getBackground
  L10_2 = L10_2()
  L11_2 = display
  L11_2 = L11_2.newImageRect
  L12_2 = "images/gui/play/windowTips.png"
  L13_2 = 305
  L14_2 = 60
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = display
  L12_2 = L12_2.contentWidth
  L12_2 = L12_2 * 0.5
  L11_2.x = L12_2
  L11_2.y = 30
  L12_2 = display
  L12_2 = L12_2.newImageRect
  L13_2 = "images/gui/play/buttonStickFriends.png"
  L14_2 = 39
  L15_2 = 159
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L13_2 = display
  L13_2 = L13_2.contentWidth
  L13_2 = L13_2 * 0.17
  L12_2.x = L13_2
  L12_2.y = 184
  L13_2 = display
  L13_2 = L13_2.newImageRect
  L14_2 = "images/gui/play/buttonQuickplayStick.png"
  L15_2 = 39
  L16_2 = 221
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L14_2 = display
  L14_2 = L14_2.contentWidth
  L14_2 = L14_2 * 0.501
  L13_2.x = L14_2
  L13_2.y = 178
  L14_2 = display
  L14_2 = L14_2.newImageRect
  L15_2 = "images/gui/play/buttonStickFriends.png"
  L16_2 = 39
  L17_2 = 159
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L15_2 = display
  L15_2 = L15_2.contentWidth
  L15_2 = L15_2 * 0.83
  L14_2.x = L15_2
  L14_2.y = 184
  L15_2 = L0_1
  L15_2 = L15_2.newButton
  L16_2 = {}
  L16_2.image = "images/gui/play/button2v2Play.png"
  L17_2 = {}
  L18_2 = L0_1
  L18_2 = L18_2.localized
  L18_2 = L18_2.get
  L19_2 = "2 vs 2"
  L18_2 = L18_2(L19_2)
  L17_2.string = L18_2
  L17_2.size = 22
  L18_2 = {}
  L18_2.fr = 18
  L18_2.es = 16
  L17_2.languageSizes = L18_2
  L17_2.y = 30
  L17_2.x = 0
  L16_2.text = L17_2
  L16_2.width = 116
  L16_2.height = 103
  L16_2.onRelease = L8_2
  L17_2 = display
  L17_2 = L17_2.contentWidth
  L17_2 = L17_2 * 0.17
  L16_2.x = L17_2
  L17_2 = display
  L17_2 = L17_2.contentHeight
  L17_2 = L17_2 * 0.52
  L16_2.y = L17_2
  L15_2 = L15_2(L16_2)
  L16_2 = L0_1
  L16_2 = L16_2.newButton
  L17_2 = {}
  L17_2.image = "images/gui/play/buttonPractice.png"
  L17_2.width = 125
  L17_2.height = 41
  L17_2.onRelease = L5_2
  L18_2 = display
  L18_2 = L18_2.contentWidth
  L18_2 = L18_2 * 0.5
  L17_2.x = L18_2
  L18_2 = display
  L18_2 = L18_2.contentHeight
  L18_2 = L18_2 * 0.76
  L17_2.y = L18_2
  L16_2 = L16_2(L17_2)
  L17_2 = L0_1
  L17_2 = L17_2.newButton
  L18_2 = {}
  L18_2.image = "images/gui/play/buttonQuickplay.png"
  L19_2 = {}
  L20_2 = L0_1
  L20_2 = L20_2.localized
  L20_2 = L20_2.get
  L21_2 = "QuickPlay"
  L20_2 = L20_2(L21_2)
  L19_2.string = L20_2
  L19_2.size = 30
  L20_2 = {}
  L20_2.fr = 28
  L20_2.es = 26
  L20_2.ja = 18
  L20_2.ko = 25
  L20_2.de = 24
  L19_2.languageSizes = L20_2
  L19_2.y = 40
  L19_2.x = 0
  L18_2.text = L19_2
  L18_2.width = 168
  L18_2.height = 145
  L18_2.onRelease = L6_2
  L19_2 = display
  L19_2 = L19_2.contentWidth
  L19_2 = L19_2 * 0.5
  L18_2.x = L19_2
  L19_2 = display
  L19_2 = L19_2.contentHeight
  L19_2 = L19_2 * 0.48
  L18_2.y = L19_2
  L17_2 = L17_2(L18_2)
  L18_2 = L0_1
  L18_2 = L18_2.newButton
  L19_2 = {}
  L19_2.image = "images/gui/play/buttonFriends.png"
  L20_2 = {}
  L21_2 = L0_1
  L21_2 = L21_2.localized
  L21_2 = L21_2.get
  L22_2 = "Friends"
  L21_2 = L21_2(L22_2)
  L20_2.string = L21_2
  L20_2.size = 20
  L21_2 = {}
  L21_2.fr = 18
  L21_2.es = 16
  L20_2.languageSizes = L21_2
  L20_2.y = 30
  L20_2.x = 0
  L19_2.text = L20_2
  L19_2.width = 116
  L19_2.height = 103
  L19_2.onRelease = L7_2
  L20_2 = display
  L20_2 = L20_2.contentWidth
  L20_2 = L20_2 * 0.83
  L19_2.x = L20_2
  L20_2 = display
  L20_2 = L20_2.contentHeight
  L20_2 = L20_2 * 0.52
  L19_2.y = L20_2
  L18_2 = L18_2(L19_2)
  L19_2 = L0_1
  L19_2 = L19_2.newButton
  L20_2 = {}
  L20_2.image = "images/gui/common/buttonHome.png"
  L20_2.width = 90
  L20_2.height = 57
  L20_2.onRelease = L9_2
  L20_2.x = 50
  L20_2.y = 292
  L19_2 = L19_2(L20_2)
  
  function L20_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.analytics
    L0_3 = L0_3.addDesignEvent
    L1_3 = "Onboarding:PlayMenu:OpenPlayMenuIntroduction"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "lua.overlays.playMenuIntroduction"
    L0_3(L1_3)
  end
  
  L21_2 = L0_1
  L21_2 = L21_2.newButton
  L22_2 = {}
  L23_2 = display
  L23_2 = L23_2.contentWidth
  L23_2 = L23_2 - 20
  L22_2.x = L23_2
  L22_2.y = 20
  L22_2.width = 25
  L22_2.height = 25
  L22_2.image = "images/gui/clan_v2/create_clan/buttonInfo.png"
  L22_2.onRelease = L20_2
  L21_2 = L21_2(L22_2)
  
  function L22_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L10_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L11_2
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
    L2_3 = L14_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L16_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L15_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L17_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L18_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L21_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L19_2
    L0_3(L1_3, L2_3)
  end
  
  function L23_2()
    local L0_3, L1_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L16_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L17_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L18_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L15_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L19_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L21_2
    L0_3(L1_3)
    L0_3 = infoBubble
    if L0_3 then
      L0_3 = infoBubble
      L0_3 = L0_3.clean
      L0_3()
    end
    L0_3 = L3_2
    if L0_3 then
      L0_3 = native
      L0_3 = L0_3.cancelAlert
      L1_3 = L3_2
      L0_3(L1_3)
      L0_3 = nil
      L3_2 = L0_3
    end
  end
  
  L2_1 = L23_2
  L23_2 = L22_2
  L23_2()
end

L1_1.create = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    return
  end
  L3_2 = A0_2.view
  L4_2 = require
  L5_2 = "lua.modules.androidBackButton"
  L4_2 = L4_2(L5_2)
  L5_2 = nil
  L6_2 = nil
  L7_2 = {}
  L8_2 = "TD1"
  L9_2 = "TD2"
  L10_2 = "TD3"
  L11_2 = "TD4"
  L12_2 = "TD5"
  L13_2 = "TD6"
  L14_2 = "TD7"
  L15_2 = "TD8"
  L16_2 = "TD9"
  L17_2 = "TD10"
  L18_2 = "TD11"
  L19_2 = "TD12"
  L20_2 = "TD13"
  L21_2 = "TD14"
  L22_2 = "TD15"
  L23_2 = "TD16"
  L24_2 = "TD17"
  L25_2 = "TD18"
  L26_2 = "TD19"
  L27_2 = "TD20"
  L28_2 = "TD21"
  L29_2 = "TD22"
  L30_2 = "TD23"
  L31_2 = "TD24"
  L32_2 = "TD25"
  L33_2 = "TD26"
  L34_2 = "TD27"
  L35_2 = "TD28"
  L36_2 = "TD29"
  L37_2 = "TD30"
  L38_2 = "TD31"
  L39_2 = "TD32"
  L40_2 = "TD33"
  L41_2 = "TD34"
  L42_2 = "TD35"
  L43_2 = "TD36"
  L44_2 = "TD37"
  L45_2 = "TD38"
  L46_2 = "TD39"
  L47_2 = "TD40"
  L48_2 = "TD41"
  L49_2 = "TD42"
  L50_2 = "TD43"
  L51_2 = "TD44"
  L52_2 = "TD45"
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L7_2[5] = L12_2
  L7_2[6] = L13_2
  L7_2[7] = L14_2
  L7_2[8] = L15_2
  L7_2[9] = L16_2
  L7_2[10] = L17_2
  L7_2[11] = L18_2
  L7_2[12] = L19_2
  L7_2[13] = L20_2
  L7_2[14] = L21_2
  L7_2[15] = L22_2
  L7_2[16] = L23_2
  L7_2[17] = L24_2
  L7_2[18] = L25_2
  L7_2[19] = L26_2
  L7_2[20] = L27_2
  L7_2[21] = L28_2
  L7_2[22] = L29_2
  L7_2[23] = L30_2
  L7_2[24] = L31_2
  L7_2[25] = L32_2
  L7_2[26] = L33_2
  L7_2[27] = L34_2
  L7_2[28] = L35_2
  L7_2[29] = L36_2
  L7_2[30] = L37_2
  L7_2[31] = L38_2
  L7_2[32] = L39_2
  L7_2[33] = L40_2
  L7_2[34] = L41_2
  L7_2[35] = L42_2
  L7_2[36] = L43_2
  L7_2[37] = L44_2
  L7_2[38] = L45_2
  L7_2[39] = L46_2
  L7_2[40] = L47_2
  L7_2[41] = L48_2
  L7_2[42] = L49_2
  L7_2[43] = L50_2
  L7_2[44] = L51_2
  L7_2[45] = L52_2
  L8_2 = {}
  L9_2 = "TD5"
  L10_2 = "TD7"
  L11_2 = "TD8"
  L12_2 = "TD9"
  L13_2 = "TD11"
  L14_2 = "TD14"
  L15_2 = "TD15"
  L16_2 = "TD16"
  L17_2 = "TD18"
  L18_2 = "TD25"
  L19_2 = "TD28"
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L8_2[5] = L13_2
  L8_2[6] = L14_2
  L8_2[7] = L15_2
  L8_2[8] = L16_2
  L8_2[9] = L17_2
  L8_2[10] = L18_2
  L8_2[11] = L19_2
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = isSimulator
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.config
      L0_3 = L0_3.bot
      if L0_3 then
        L0_3 = L0_1
        L0_3 = L0_3.data
        L0_3 = L0_3.gameInfo
        L0_3.gameType = 1
        L0_3 = L0_1
        L0_3 = L0_3.gotoScene
        L1_3 = "lua.scenes.lobbyQuickPlay"
        L0_3(L1_3)
      end
    end
  end
  
  function L10_2()
    local L0_3, L1_3
    L0_3 = L4_2
    L0_3 = L0_3.removeBackButton
    L0_3()
    L0_3 = L5_2
    if L0_3 then
      L0_3 = L5_2
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      L5_2 = L0_3
    end
    L0_3 = L6_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L6_2
      L0_3(L1_3)
      L0_3 = nil
      L6_2 = L0_3
    end
    L0_3 = L0_1
    L0_3 = L0_3.contextualOnboarding
    L0_3 = L0_3.isActive
    if L0_3 == true then
      L0_3 = L0_1
      L0_3 = L0_3.onboarding
      L0_3 = L0_3.clean
      L0_3()
    end
    L0_3 = L0_1
    L0_3 = L0_3.analytics
    L0_3 = L0_3.SessionData
    L0_3 = L0_3.createdUserThisSession
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.analytics
      L0_3 = L0_3.addDesignEvent
      L1_3 = "Onboarding:PlayMenu:Exit"
      L0_3(L1_3)
    end
  end
  
  L3_1 = L10_2
  L10_2 = L0_1
  L10_2 = L10_2.data
  L10_2 = L10_2.gameInfo
  L11_2 = {}
  L10_2.players = L11_2
  L10_2 = L4_2.addBackButton
  L11_2 = "lua.scenes.mainMenu"
  L10_2(L11_2)
  L10_2 = math
  L10_2 = L10_2.random
  L11_2 = 1
  L12_2 = #L7_2
  L10_2 = L10_2(L11_2, L12_2)
  L10_2 = L7_2[L10_2]
  L11_2 = L0_1
  L11_2 = L11_2.gamesPlayed
  if L11_2 < 10 then
    L11_2 = math
    L11_2 = L11_2.random
    L12_2 = 1
    L13_2 = #L8_2
    L11_2 = L11_2(L12_2, L13_2)
    L10_2 = L8_2[L11_2]
  end
  L11_2 = L0_1
  L11_2 = L11_2.localized
  L11_2 = L11_2.get
  L12_2 = L10_2
  L11_2 = L11_2(L12_2)
  L12_2 = type
  L13_2 = L0_1
  L13_2 = L13_2.data
  L13_2 = L13_2.messageOfTheDay
  L12_2 = L12_2(L13_2)
  if L12_2 == "string" then
    L12_2 = string
    L12_2 = L12_2.len
    L13_2 = L0_1
    L13_2 = L13_2.data
    L13_2 = L13_2.messageOfTheDay
    L12_2 = L12_2(L13_2)
    if 1 < L12_2 then
      L12_2 = L0_1
      L12_2 = L12_2.data
      L11_2 = L12_2.messageOfTheDay
    end
  end
  L12_2 = L0_1
  L12_2 = L12_2.newText
  L13_2 = {}
  L13_2.string = L11_2
  L13_2.x = 242
  L13_2.y = 36
  L13_2.size = 12
  L13_2.width = 290
  L13_2.height = 50
  L14_2 = {}
  L15_2 = 1
  L16_2 = 1
  L17_2 = 1
  L14_2[1] = L15_2
  L14_2[2] = L16_2
  L14_2[3] = L17_2
  L13_2.color = L14_2
  L13_2.align = "center"
  L12_2 = L12_2(L13_2)
  L5_2 = L12_2
  L13_2 = L3_2
  L12_2 = L3_2.insert
  L14_2 = L5_2
  L12_2(L13_2, L14_2)
  L12_2 = math
  L12_2 = L12_2.randomseed
  L13_2 = os
  L13_2 = L13_2.time
  L13_2 = L13_2()
  L14_2 = system
  L14_2 = L14_2.getTimer
  L14_2 = L14_2()
  L13_2 = L13_2 + L14_2
  L12_2(L13_2)
  L12_2 = L0_1
  L12_2 = L12_2.tcpClient
  L12_2 = L12_2.stopTCPClient
  L12_2()
  L12_2 = timer
  L12_2 = L12_2.performWithDelay
  L13_2 = 2000
  L14_2 = L9_2
  L15_2 = 1
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L6_2 = L12_2
  L12_2 = L0_1
  L12_2 = L12_2.contextualOnboarding
  L12_2 = L12_2.isActive
  if L12_2 == true then
    L12_2 = L0_1
    L12_2 = L12_2.contextualOnboarding
    L12_2 = L12_2.isPartActive
    L13_2 = 3
    L12_2 = L12_2(L13_2)
    if L12_2 then
      L12_2 = L0_1
      L12_2 = L12_2.gamesPlayed
      if L12_2 < 1 then
        L12_2 = L0_1
        L12_2 = L12_2.onboarding
        L12_2 = L12_2.addGuiReference
        L13_2 = "playMenu_quickPlay"
        L14_2 = L3_2
        L12_2(L13_2, L14_2)
        L12_2 = L0_1
        L12_2 = L12_2.contextualOnboarding
        L12_2 = L12_2.showQuickPlayArrow
        L12_2()
      else
        L12_2 = L0_1
        L12_2 = L12_2.contextualOnboarding
        L12_2 = L12_2.setPartDone
        L13_2 = 3
        L12_2(L13_2)
      end
    end
  end
  L12_2 = L0_1
  L12_2 = L12_2.analytics
  L12_2 = L12_2.SessionData
  L12_2 = L12_2.createdUserThisSession
  if L12_2 then
    L12_2 = L0_1
    L12_2 = L12_2.analytics
    L12_2 = L12_2.addDesignEvent
    L13_2 = "Onboarding:PlayMenu:Enter"
    L12_2(L13_2)
  end
end

L1_1.show = L4_1

function L4_1(A0_2, A1_2)
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
        L3_2 = L3_2.hideQuickPlayArrow
        L3_2()
      end
    end
    L3_2 = L3_1
    if L3_2 then
      L3_2 = L3_1
      L3_2()
      L3_2 = nil
      L3_1 = L3_2
    end
  elseif L2_2 == "did" then
    L3_2 = L0_1
    L3_2 = L3_2.removeScene
    L4_2 = "lua.scenes.playMenu"
    L3_2(L4_2)
  end
end

L1_1.hide = L4_1

function L4_1(A0_2, A1_2)
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
