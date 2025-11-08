local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.newScene
L1_1 = L1_1()
L2_1 = nil
L3_1 = nil
L4_1 = nil
L5_1 = nil
L6_1 = nil
L7_1 = false
L8_1 = nil

function L9_1(A0_2)
  local L1_2
  L1_2 = A0_2.phase
  if L1_2 == "ended" then
  end
  L1_2 = true
  return L1_2
end

function L10_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L5_1
  if L0_2 then
    L0_2 = L5_1
    L1_2 = L0_2
    L0_2 = L0_2.removeEventListener
    L2_2 = "touch"
    L3_2 = L9_1
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = L5_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L5_1 = L0_2
  end
  L0_2 = L8_1
  if L0_2 then
    L0_2 = L8_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L8_1 = L0_2
  end
  L0_2 = L6_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L6_1
    L0_2(L1_2)
    L0_2 = nil
    L6_1 = L0_2
  end
  L0_2 = true
  L7_1 = L0_2
  L0_2 = L0_1
  L0_2 = L0_2.gameNetwork
  L0_2 = L0_2.setGameNetworkDoingWork
  L1_2 = false
  L0_2(L1_2)
end

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L5_1
  if L1_2 then
    L1_2 = L10_1
    L1_2()
  end
  L1_2 = L0_1
  L1_2 = L1_2.gameNetwork
  L1_2 = L1_2.setGameNetworkDoingWork
  L2_2 = true
  L1_2(L2_2)
  L1_2 = display
  L1_2 = L1_2.newRect
  L2_2 = 0
  L3_2 = 0
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L5_2 = display
  L5_2 = L5_2.contentHeight
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L5_1 = L1_2
  L1_2 = L5_1
  L1_2.anchorX = 0
  L1_2 = L5_1
  L1_2.anchorY = 0
  L1_2 = L5_1
  L2_2 = L1_2
  L1_2 = L1_2.setFillColor
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0.5882352941176471
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.insert
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = L5_1
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = "touch"
  L4_2 = L9_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L0_1
  L1_2 = L1_2.newText
  L2_2 = {}
  L2_2.string = "Loading Game Services"
  L2_2.size = 22
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L3_2 = L3_2 * 0.5
  L2_2.x = L3_2
  L3_2 = display
  L3_2 = L3_2.contentHeight
  L3_2 = L3_2 * 0.5
  L2_2.y = L3_2
  L3_2 = {}
  L4_2 = 1
  L5_2 = 1
  L6_2 = 1
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L2_2.color = L3_2
  L2_2.ax = 0.5
  L2_2.ay = 0.5
  L1_2 = L1_2(L2_2)
  L8_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.insert
  L3_2 = L8_1
  L1_2(L2_2, L3_2)
  L1_2 = L6_1
  if L1_2 then
    L1_2 = timer
    L1_2 = L1_2.cancel
    L2_2 = L6_1
    L1_2(L2_2)
  end
  L1_2 = false
  L7_1 = L1_2
  L1_2 = timer
  L1_2 = L1_2.performWithDelay
  L2_2 = 10000
  L3_2 = L10_1
  L1_2 = L1_2(L2_2, L3_2)
  L6_1 = L1_2
end

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2
  L2_2 = A0_2.view
  L3_2 = require
  L4_2 = "lua.network.httpsMessageFormat"
  L3_2 = L3_2(L4_2)
  L4_2 = require
  L5_2 = "lua.modules.tableHelper"
  L4_2 = L4_2(L5_2)
  L5_2 = nil
  L6_2 = nil
  L7_2 = nil
  L8_2 = {}
  L9_2 = false
  L10_2 = nil
  L11_2 = display
  L11_2 = L11_2.newImageRect
  L12_2 = "images/gui/settings/main.png"
  L13_2 = 480
  L14_2 = 320
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L11_2.anchorX = 0
  L11_2.anchorY = 0
  L11_2.x = 0
  L11_2.y = 0
  L12_2 = L0_1
  L12_2 = L12_2.newText
  L13_2 = {}
  L13_2.string = ""
  L13_2.size = 25
  L14_2 = {}
  L15_2 = 1
  L16_2 = 1
  L17_2 = 1
  L14_2[1] = L15_2
  L14_2[2] = L16_2
  L14_2[3] = L17_2
  L13_2.color = L14_2
  L12_2 = L12_2(L13_2)
  L12_2.anchorX = 0.5
  L12_2.anchorY = 0.5
  L12_2.x = 160
  L12_2.y = 20
  L13_2 = L0_1
  L13_2 = L13_2.newText
  L14_2 = {}
  L14_2.string = ""
  L14_2.size = 25
  L15_2 = {}
  L16_2 = 1
  L17_2 = 1
  L18_2 = 1
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L14_2.color = L15_2
  L13_2 = L13_2(L14_2)
  L13_2.anchorX = 0
  L13_2.anchorY = 0.5
  L14_2 = L12_2.x
  L13_2.x = L14_2
  L14_2 = L12_2.y
  L13_2.y = L14_2
  L14_2 = L0_1
  L14_2 = L14_2.newText
  L15_2 = {}
  L16_2 = L0_1
  L16_2 = L16_2.localized
  L16_2 = L16_2.get
  L17_2 = "Settings"
  L16_2 = L16_2(L17_2)
  L15_2.string = L16_2
  L15_2.size = 30
  L16_2 = {}
  L17_2 = 1
  L18_2 = 1
  L19_2 = 1
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L16_2[3] = L19_2
  L15_2.color = L16_2
  L14_2 = L14_2(L15_2)
  L14_2.x = 410
  L14_2.y = 16
  L15_2 = display
  L15_2 = L15_2.newImageRect
  L16_2 = "images/gui/ranking/cell.png"
  L17_2 = 480
  L18_2 = 320
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L16_2 = display
  L16_2 = L16_2.contentWidth
  L16_2 = L16_2 * 0.5
  L15_2.x = L16_2
  L16_2 = display
  L16_2 = L16_2.contentHeight
  L16_2 = L16_2 * 0.5
  L15_2.y = L16_2
  
  function L16_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getPlayerInformation
    L0_3 = L0_3()
    L1_3 = L0_3.usernameCode
    if L1_3 then
      L1_3 = L12_2
      L2_3 = L0_3.username
      L1_3.text = L2_3
      L1_3 = L13_2
      L2_3 = "#"
      L3_3 = L0_3.usernameCode
      L2_3 = L2_3 .. L3_3
      L1_3.text = L2_3
    else
      L1_3 = L12_2
      L1_3.text = ""
      L1_3 = L13_2
      L1_3.text = ""
    end
    L1_3 = L13_2
    L2_3 = L12_2
    L2_3 = L2_3.x
    L3_3 = L12_2
    L3_3 = L3_3.width
    L3_3 = L3_3 * 0.5
    L2_3 = L2_3 + L3_3
    L1_3.x = L2_3
  end
  
  function L17_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.gotoScene
    L1_3 = "lua.scenes.mainMenu"
    L0_3(L1_3)
  end
  
  L18_2 = L0_1
  L18_2 = L18_2.newButton
  L19_2 = {}
  L19_2.image = "images/gui/common/buttonHome.png"
  L19_2.width = 90
  L19_2.height = 57
  L19_2.onRelease = L17_2
  L19_2.x = 50
  L19_2.y = 292
  L18_2 = L18_2(L19_2)
  
  function L19_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "lua.overlays.editUsername"
    L2_3 = {}
    L2_3.isModal = true
    L0_3(L1_3, L2_3)
  end
  
  L20_2 = L0_1
  L20_2 = L20_2.newButton
  L21_2 = {}
  L21_2.x = 75
  L21_2.y = 53
  L21_2.width = 45
  L21_2.height = 42
  L21_2.image = "images/gui/settings/buttonRename.png"
  L21_2.onRelease = L19_2
  L20_2 = L20_2(L21_2)
  
  function L21_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L15_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L7_2
    L2_3 = L2_3.getTable
    L2_3 = L2_3()
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
    L2_3 = L20_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L14_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L18_2
    L0_3(L1_3, L2_3)
  end
  
  function L22_2(A0_3)
    local L1_3
  end
  
  function L23_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.init
    L0_3()
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.activate
    L0_3()
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3.settingsOverride = true
    L0_3 = L0_1
    L0_3 = L0_3.analytics
    L0_3 = L0_3.addDesignEvent
    L1_3 = "Tutorial:Start"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.setStep
    L1_3 = "1"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.activateStep
    L0_3()
  end
  
  function L24_2(A0_3)
    local L1_3
    L1_3 = A0_3 + 1
    if 4 < L1_3 then
      L1_3 = 0
    end
    return L1_3
  end
  
  function L25_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getSound
    L0_3 = L0_3()
    L1_3 = {}
    L2_3 = 0
    L3_3 = 0.25
    L4_3 = 0.5
    L5_3 = 0.75
    L6_3 = 1
    L1_3[1] = L2_3
    L1_3[2] = L3_3
    L1_3[3] = L4_3
    L1_3[4] = L5_3
    L1_3[5] = L6_3
    L2_3 = L24_2
    L3_3 = L0_3
    L2_3 = L2_3(L3_3)
    L3_3 = L0_1
    L3_3 = L3_3.database
    L3_3 = L3_3.setSound
    L4_3 = L2_3
    L3_3(L4_3)
    L3_3 = L2_3 + 1
    L3_3 = L1_3[L3_3]
    L4_3 = L0_1
    L4_3 = L4_3.audio
    L4_3 = L4_3.setMasterVolume
    L5_3 = L3_3
    L4_3(L5_3)
    L4_3 = L5_2
    L4_3 = L4_3.refreshTable
    L4_3()
  end
  
  function L26_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getChat
    L0_3 = L0_3()
    if L0_3 == 1 then
      L1_3 = L0_1
      L1_3 = L1_3.database
      L1_3 = L1_3.setChat
      L2_3 = 0
      L1_3(L2_3)
      L1_3 = L0_1
      L1_3 = L1_3.analytics
      L1_3 = L1_3.newEvent
      L2_3 = "design"
      L3_3 = {}
      L3_3.event_id = "chat:deactivate"
      L4_3 = L0_1
      L4_3 = L4_3.config
      L4_3 = L4_3.fullVersion
      L3_3.area = L4_3
      L1_3(L2_3, L3_3)
    else
      L1_3 = L0_1
      L1_3 = L1_3.database
      L1_3 = L1_3.setChat
      L2_3 = 1
      L1_3(L2_3)
      L1_3 = L0_1
      L1_3 = L1_3.analytics
      L1_3 = L1_3.newEvent
      L2_3 = "design"
      L3_3 = {}
      L3_3.event_id = "chat:activate"
      L4_3 = L0_1
      L4_3 = L4_3.config
      L4_3 = L4_3.fullVersion
      L3_3.area = L4_3
      L1_3(L2_3, L3_3)
    end
    L1_3 = L5_2
    L1_3 = L1_3.refreshTable
    L1_3()
  end
  
  function L27_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getViolence
    L0_3 = L0_3()
    L1_3 = print
    L2_3 = "Old violence state"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
    if L0_3 == 1 then
      L1_3 = L0_1
      L1_3 = L1_3.database
      L1_3 = L1_3.setViolence
      L2_3 = 0
      L1_3(L2_3)
      L1_3 = L0_1
      L1_3 = L1_3.analytics
      L1_3 = L1_3.newEvent
      L2_3 = "design"
      L3_3 = {}
      L3_3.event_id = "violence:deactivate"
      L4_3 = L0_1
      L4_3 = L4_3.config
      L4_3 = L4_3.fullVersion
      L3_3.area = L4_3
      L1_3(L2_3, L3_3)
    else
      L1_3 = L0_1
      L1_3 = L1_3.database
      L1_3 = L1_3.setViolence
      L2_3 = 1
      L1_3(L2_3)
      L1_3 = L0_1
      L1_3 = L1_3.analytics
      L1_3 = L1_3.newEvent
      L2_3 = "design"
      L3_3 = {}
      L3_3.event_id = "violence:activate"
      L4_3 = L0_1
      L4_3 = L4_3.config
      L4_3 = L4_3.fullVersion
      L3_3.area = L4_3
      L1_3(L2_3, L3_3)
    end
    L1_3 = L5_2
    L1_3 = L1_3.refreshTable
    L1_3()
  end
  
  function L28_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getLoadVideoOnWifiOnly
    L0_3 = L0_3()
    if L0_3 == 1 then
      L1_3 = L0_1
      L1_3 = L1_3.database
      L1_3 = L1_3.setLoadVideoOnWifiOnly
      L2_3 = 0
      L1_3(L2_3)
    else
      L1_3 = L0_1
      L1_3 = L1_3.database
      L1_3 = L1_3.setLoadVideoOnWifiOnly
      L2_3 = 1
      L1_3(L2_3)
    end
    L1_3 = L5_2
    L1_3 = L1_3.refreshTable
    L1_3()
  end
  
  function L29_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getGraphics
    L0_3 = L0_3()
    if L0_3 == 1 then
      L1_3 = L0_1
      L1_3 = L1_3.database
      L1_3 = L1_3.setGraphics
      L2_3 = 0
      L1_3(L2_3)
      L1_3 = L0_1
      L1_3 = L1_3.analytics
      L1_3 = L1_3.newEvent
      L2_3 = "design"
      L3_3 = {}
      L3_3.event_id = "graphics:set:low"
      L4_3 = L0_1
      L4_3 = L4_3.config
      L4_3 = L4_3.fullVersion
      L3_3.area = L4_3
      L1_3(L2_3, L3_3)
    else
      L1_3 = L0_1
      L1_3 = L1_3.database
      L1_3 = L1_3.setGraphics
      L2_3 = 1
      L1_3(L2_3)
      L1_3 = L0_1
      L1_3 = L1_3.analytics
      L1_3 = L1_3.newEvent
      L2_3 = "design"
      L3_3 = {}
      L3_3.event_id = "graphics:set:high"
      L4_3 = L0_1
      L4_3 = L4_3.config
      L4_3 = L4_3.fullVersion
      L3_3.area = L4_3
      L1_3(L2_3, L3_3)
    end
    L1_3 = L5_2
    L1_3 = L1_3.refreshTable
    L1_3()
  end
  
  function L30_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getFacebookId
    L0_3 = L0_3()
    if not L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.analytics
      L0_3 = L0_3.newEvent
      L1_3 = "design"
      L2_3 = {}
      L2_3.event_id = "facebookLogin:attempt"
      L3_3 = L0_1
      L3_3 = L3_3.config
      L3_3 = L3_3.fullVersion
      L2_3.area = L3_3
      L0_3(L1_3, L2_3)
      L0_3 = L0_1
      L0_3 = L0_3.facebook
      L0_3 = L0_3.login
      L1_3 = {}
      L2_3 = "user_friends"
      L1_3[1] = L2_3
      L0_3(L1_3)
    end
    L0_3 = L5_2
    L0_3 = L0_3.refreshTable
    L0_3()
  end
  
  function L31_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L9_2
    if L0_3 then
      return
    end
    L0_3 = false
    L1_3 = false
    L2_3 = isAndroid
    if not L2_3 then
      L2_3 = isIOS
      if not L2_3 then
        L2_3 = isSimulator
        if not L2_3 then
          L2_3 = print
          L3_3 = "not android or ios, hide game services"
          L2_3(L3_3)
          L1_3 = true
        end
      end
    end
    if not L1_3 then
      L2_3 = L0_1
      L2_3 = L2_3.gameNetwork
      if L2_3 then
        L2_3 = isAndroid
        if L2_3 then
          L2_3 = L0_1
          L2_3 = L2_3.database
          L2_3 = L2_3.getGooglePlayServicesId
          L2_3 = L2_3()
          L3_3 = L0_1
          L3_3 = L3_3.gameNetwork
          L3_3 = L3_3.isGameServicesActive
          L3_3 = L3_3()
          if L3_3 then
            L3_3 = L0_1
            L3_3 = L3_3.gameNetwork
            L3_3 = L3_3.getBackEndGooglePlayerId
            L3_3 = L3_3()
            if L2_3 == L3_3 then
              L0_3 = true
            end
          end
        else
          L2_3 = isIOS
          if L2_3 then
            L2_3 = L0_1
            L2_3 = L2_3.gameNetwork
            L2_3 = L2_3.getPlayerId
            L2_3 = L2_3()
            L3_3 = L0_1
            L3_3 = L3_3.gameNetwork
            L3_3 = L3_3.isGameServicesActive
            L3_3 = L3_3()
            if L3_3 then
              L3_3 = L0_1
              L3_3 = L3_3.gameNetwork
              L3_3 = L3_3.getBackEndApplePlayerId
              L3_3 = L3_3()
              if L2_3 == L3_3 then
                L0_3 = true
              end
            end
          end
        end
        L2_3 = L0_1
        L2_3 = L2_3.gameNetwork
        L2_3 = L2_3.isGameServicesInit
        L2_3 = L2_3()
        if L2_3 then
          L1_3 = true
        else
          L2_3 = print
          L3_3 = "game network is not inited, OK!"
          L2_3(L3_3)
        end
      end
    end
    L2_3 = L0_1
    L2_3 = L2_3.comm
    L2_3 = L2_3.isOnline
    L2_3 = L2_3()
    if not L2_3 then
      L0_3 = false
      L1_3 = true
    end
    L2_3 = L0_1
    L2_3 = L2_3.gameNetwork
    if L2_3 then
      L2_3 = isAndroid
      if L2_3 then
        L2_3 = L0_1
        L2_3 = L2_3.gameNetwork
        L2_3 = L2_3.getBackEndGooglePlayerId
        L2_3 = L2_3()
        if L2_3 ~= nil then
          L1_3 = true
      end
      else
        L2_3 = isIOS
        if L2_3 then
          L2_3 = L0_1
          L2_3 = L2_3.gameNetwork
          L2_3 = L2_3.getBackEndApplePlayerId
          L2_3 = L2_3()
          if L2_3 ~= nil then
            L1_3 = true
          end
        end
      end
    end
    L2_3 = true
    if not L0_3 then
      L3_3 = L0_1
      L3_3 = L3_3.gameNetwork
      L3_3 = L3_3.getBackEndGooglePlayerId
      L3_3 = L3_3()
      if L3_3 ~= nil then
        L3_3 = isAndroid
        if L3_3 then
          L3_3 = L0_1
          L3_3 = L3_3.gameNetwork
          L3_3 = L3_3.isConnected
          L3_3 = L3_3()
          if not L3_3 then
            L2_3 = false
          end
        end
      end
    end
    if not L0_3 then
      L3_3 = 1
      L4_3 = L6_2
      L4_3 = #L4_3
      L5_3 = 1
      for L6_3 = L3_3, L4_3, L5_3 do
        L7_3 = L6_2
        L7_3 = L7_3[L6_3]
        L7_3 = L7_3.gameNetworkConnected
        if L7_3 then
          L7_3 = table
          L7_3 = L7_3.remove
          L8_3 = L6_2
          L9_3 = L6_3
          L7_3(L8_3, L9_3)
          break
        end
      end
    end
    if L1_3 then
      L3_3 = 1
      L4_3 = L6_2
      L4_3 = #L4_3
      L5_3 = 1
      for L6_3 = L3_3, L4_3, L5_3 do
        L7_3 = L6_2
        L7_3 = L7_3[L6_3]
        L7_3 = L7_3.gameNetwork
        if L7_3 then
          L7_3 = table
          L7_3 = L7_3.remove
          L8_3 = L6_2
          L9_3 = L6_3
          L7_3(L8_3, L9_3)
          break
        end
      end
    end
    if L2_3 then
      L3_3 = 1
      L4_3 = L6_2
      L4_3 = #L4_3
      L5_3 = 1
      for L6_3 = L3_3, L4_3, L5_3 do
        L7_3 = L6_2
        L7_3 = L7_3[L6_3]
        L7_3 = L7_3.gameNetworkLogin
        if L7_3 then
          L7_3 = table
          L7_3 = L7_3.remove
          L8_3 = L6_2
          L9_3 = L6_3
          L7_3(L8_3, L9_3)
          break
        end
      end
    end
    L3_3 = L5_1
    if L3_3 then
      L3_3 = L11_1
      L4_3 = L2_2
      L3_3(L4_3)
    end
  end
  
  function L32_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = isAndroid
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.showOverlay
      L1_3 = "lua.overlays.gameServiceLogout"
      L2_3 = {}
      L2_3.isModal = true
      L3_3 = {}
      L4_3 = L31_2
      L3_3.logoutCallback = L4_3
      L2_3.params = L3_3
      L0_3(L1_3, L2_3)
    else
      L0_3 = isIOS
      if L0_3 then
        L0_3 = L0_1
        L0_3 = L0_3.createCustomOverlay
        L1_3 = 98
        L2_3 = nil
        L3_3 = "Your Fun Run 2 account is linked to your Game Center account"
        L0_3(L1_3, L2_3, L3_3)
      else
        L0_3 = L0_1
        L0_3 = L0_3.createCustomOverlay
        L1_3 = 98
        L2_3 = nil
        L3_3 = "Your Fun Run 2 account is linked to your Google account"
        L0_3(L1_3, L2_3, L3_3)
      end
    end
  end
  
  function L33_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.gameNetwork
    if L0_3 then
      function L0_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4
        
        L0_4 = print
        L1_4 = "ifSuccessfullyActivatedGameNetwork settings callback"
        L0_4(L1_4)
        L0_4 = isAndroid
        if L0_4 then
          L0_4 = L11_1
          L1_4 = L2_2
          L0_4(L1_4)
          
          function L0_4(A0_5)
            local L1_5, L2_5, L3_5
            L1_5 = A0_5.isError
            if L1_5 then
              L1_5 = print
              L2_5 = "[settings] Something went wrong while getting server auth token"
              L1_5(L2_5)
            end
            L1_5 = A0_5.errorCode
            if L1_5 then
              L1_5 = print
              L2_5 = "[settings] GPGS errorcode "
              L3_5 = A0_5.errorCode
              L1_5(L2_5, L3_5)
            end
            L1_5 = A0_5.errorMessage
            if L1_5 then
              L1_5 = print
              L2_5 = "[settings] GPGS errorMessage "
              L3_5 = A0_5.errorMessage
              L1_5(L2_5, L3_5)
            end
            L1_5 = A0_5.code
            if L1_5 then
              L1_5 = A0_5.isError
              if not L1_5 then
                L1_5 = print
                L2_5 = "[settings] GPGS login code, sending getGPGSId! "
                L1_5(L2_5)
                L1_5 = L0_1
                L1_5 = L1_5.commHttps
                L1_5 = L1_5.getGooglePlayServicesId
                L2_5 = A0_5.code
                L1_5(L2_5)
            end
            else
              L1_5 = print
              L2_5 = "no [settings] event code "
              L1_5(L2_5)
            end
          end
          
          L1_4 = L0_1
          L1_4 = L1_4.gameNetwork
          L1_4 = L1_4.getPlayServicesRefreshToken
          L2_4 = L0_4
          L1_4(L2_4)
          L1_4 = L31_2
          L1_4()
          L1_4 = L5_2
          L1_4 = L1_4.refreshTable
          L2_4 = L6_2
          L3_4 = L2_2
          L4_4 = 1
          L1_4(L2_4, L3_4, L4_4)
          L1_4 = L0_1
          L1_4 = L1_4.gameNetwork
          L1_4 = L1_4.setGameNetworkDoingWork
          L2_4 = false
          L1_4(L2_4)
        else
          L0_4 = isIOS
          if L0_4 then
          else
            L0_4 = L10_1
            L0_4()
            L0_4 = L0_1
            L0_4 = L0_4.gameNetwork
            L0_4 = L0_4.setGameNetworkDoingWork
            L1_4 = false
            L0_4(L1_4)
            L0_4 = print
            L1_4 = "Error, tried to send game network player id for something else than ios or android"
            L0_4(L1_4)
          end
        end
      end
      
      function L1_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = print
        L1_4 = "ifFailsActivatedGameNetwork settings login callback"
        L0_4(L1_4)
        L0_4 = L10_1
        L0_4()
        L0_4 = L31_2
        L0_4()
        L0_4 = L5_2
        L0_4 = L0_4.refreshTable
        L1_4 = L6_2
        L2_4 = L2_2
        L3_4 = 1
        L0_4(L1_4, L2_4, L3_4)
        L0_4 = L0_1
        L0_4 = L0_4.gameNetwork
        L0_4 = L0_4.setGameNetworkDoingWork
        L1_4 = false
        L0_4(L1_4)
      end
      
      L2_3 = L11_1
      L3_3 = L2_2
      L2_3(L3_3)
      L2_3 = L0_1
      L2_3 = L2_3.gameNetwork
      L2_3 = L2_3.setSuccesfullyGetLocalPlayerCallback
      L3_3 = L0_3
      L2_3(L3_3)
      L2_3 = L0_1
      L2_3 = L2_3.gameNetwork
      L2_3 = L2_3.setFailsGetLocalPlayerCallback
      L3_3 = L1_3
      L2_3(L3_3)
      L2_3 = L0_1
      L2_3 = L2_3.gameNetwork
      L2_3 = L2_3.setGameNetworkDoingWork
      L3_3 = true
      L2_3(L3_3)
      L2_3 = L0_1
      L2_3 = L2_3.gameNetwork
      L2_3 = L2_3.isGameServicesInit
      L2_3 = L2_3()
      if not L2_3 then
        L2_3 = L0_1
        L2_3 = L2_3.gameNetwork
        L2_3 = L2_3.init
        L2_3()
      else
        L2_3 = L0_1
        L2_3 = L2_3.gameNetwork
        L2_3 = L2_3.playServicesLogin
        L2_3()
      end
    end
  end
  
  function L34_2()
    local L0_3, L1_3
    L0_3 = isAndroid
    if L0_3 then
      L0_3 = L33_2
      L0_3()
    end
  end
  
  function L35_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L0_1
    L0_3 = L0_3.gameNetwork
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.gameNetwork
      L0_3 = L0_3.isGameServicesInit
      L0_3 = L0_3()
      if not L0_3 then
        L0_3 = L11_1
        L1_3 = L2_2
        L0_3(L1_3)
        
        function L0_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4
          L0_4 = print
          L1_4 = "ifSuccessfullyActivatedGameNetwork settings callback"
          L0_4(L1_4)
          L0_4 = isAndroid
          if L0_4 then
            L0_4 = L11_1
            L1_4 = L2_2
            L0_4(L1_4)
            
            function L0_4(A0_5)
              local L1_5, L2_5, L3_5, L4_5
              L1_5 = A0_5.isError
              if L1_5 then
                L1_5 = print
                L2_5 = "[settings] Something went wrong while getting server auth token"
                L1_5(L2_5)
              end
              L1_5 = A0_5.errorCode
              if L1_5 then
                L1_5 = print
                L2_5 = "[settings] GPGS errorcode "
                L3_5 = A0_5.errorCode
                L1_5(L2_5, L3_5)
              end
              L1_5 = A0_5.errorMessage
              if L1_5 then
                L1_5 = print
                L2_5 = "[settings] GPGS errorMessage "
                L3_5 = A0_5.errorMessage
                L1_5(L2_5, L3_5)
              end
              L1_5 = A0_5.code
              if L1_5 then
                L1_5 = A0_5.isError
                if not L1_5 then
                  L1_5 = print
                  L2_5 = "[settings] GPGS code, sending https! "
                  L1_5(L2_5)
                  L1_5 = L0_1
                  L1_5 = L1_5.commHttps
                  L1_5 = L1_5.registerGameNetworkPlayerId
                  L2_5 = nil
                  L3_5 = A0_5.code
                  L1_5(L2_5, L3_5)
                  L1_5 = L0_1
                  L1_5 = L1_5.analytics
                  L1_5 = L1_5.newEvent
                  L2_5 = "design"
                  L3_5 = {}
                  L3_5.event_id = "gameNetwork:stage2:success:android"
                  L4_5 = L0_1
                  L4_5 = L4_5.config
                  L4_5 = L4_5.fullVersion
                  L3_5.area = L4_5
                  L1_5(L2_5, L3_5)
              end
              else
                L1_5 = print
                L2_5 = "no [settings] event code "
                L1_5(L2_5)
                L1_5 = L0_1
                L1_5 = L1_5.analytics
                L1_5 = L1_5.newEvent
                L2_5 = "design"
                L3_5 = {}
                L3_5.event_id = "gameNetwork:stage2:fail:android"
                L4_5 = L0_1
                L4_5 = L4_5.config
                L4_5 = L4_5.fullVersion
                L3_5.area = L4_5
                L1_5(L2_5, L3_5)
              end
            end
            
            L1_4 = L0_1
            L1_4 = L1_4.gameNetwork
            L1_4 = L1_4.invalidateGameServices
            L1_4()
            L1_4 = L0_1
            L1_4 = L1_4.gameNetwork
            L1_4 = L1_4.getPlayServicesRefreshToken
            L2_4 = L0_4
            L1_4(L2_4)
            L1_4 = L0_1
            L1_4 = L1_4.analytics
            L1_4 = L1_4.newEvent
            L2_4 = "design"
            L3_4 = {}
            L3_4.event_id = "gameNetwork:stage1:success:android"
            L4_4 = L0_1
            L4_4 = L4_4.config
            L4_4 = L4_4.fullVersion
            L3_4.area = L4_4
            L1_4(L2_4, L3_4)
          else
            L0_4 = isIOS
            if L0_4 then
              L0_4 = L11_1
              L1_4 = L2_2
              L0_4(L1_4)
              L0_4 = L0_1
              L0_4 = L0_4.commHttps
              L0_4 = L0_4.registerGameNetworkPlayerId
              L1_4 = L0_1
              L1_4 = L1_4.gameNetwork
              L1_4 = L1_4.getPlayerId
              L1_4 = L1_4()
              L2_4 = nil
              L0_4(L1_4, L2_4)
              L0_4 = L0_1
              L0_4 = L0_4.analytics
              L0_4 = L0_4.newEvent
              L1_4 = "design"
              L2_4 = {}
              L2_4.event_id = "gameNetwork:stage1:success:ios"
              L3_4 = L0_1
              L3_4 = L3_4.config
              L3_4 = L3_4.fullVersion
              L2_4.area = L3_4
              L0_4(L1_4, L2_4)
              L0_4 = L0_1
              L0_4 = L0_4.analytics
              L0_4 = L0_4.newEvent
              L1_4 = "design"
              L2_4 = {}
              L2_4.event_id = "gameNetwork:stage2:success:ios"
              L3_4 = L0_1
              L3_4 = L3_4.config
              L3_4 = L3_4.fullVersion
              L2_4.area = L3_4
              L0_4(L1_4, L2_4)
            else
              L0_4 = L10_1
              L0_4()
              L0_4 = print
              L1_4 = "Error, tried to send game network player id for something else than ios or android"
              L0_4(L1_4)
            end
          end
        end
        
        function L1_3()
          local L0_4, L1_4, L2_4, L3_4
          L0_4 = print
          L1_4 = "ifFailsActivatedGameNetwork settings callback"
          L0_4(L1_4)
          L0_4 = L10_1
          L0_4()
          L0_4 = L31_2
          L0_4()
          L0_4 = L5_2
          L0_4 = L0_4.refreshTable
          L1_4 = L6_2
          L2_4 = L2_2
          L3_4 = 1
          L0_4(L1_4, L2_4, L3_4)
          L0_4 = isAndroid
          if L0_4 then
            L0_4 = L0_1
            L0_4 = L0_4.analytics
            L0_4 = L0_4.newEvent
            L1_4 = "design"
            L2_4 = {}
            L2_4.event_id = "gameNetwork:stage1:fail:android"
            L3_4 = L0_1
            L3_4 = L3_4.config
            L3_4 = L3_4.fullVersion
            L2_4.area = L3_4
            L0_4(L1_4, L2_4)
          else
            L0_4 = isIOS
            if L0_4 then
              L0_4 = L0_1
              L0_4 = L0_4.analytics
              L0_4 = L0_4.newEvent
              L1_4 = "design"
              L2_4 = {}
              L2_4.event_id = "gameNetwork:stage1:fail:apple"
              L3_4 = L0_1
              L3_4 = L3_4.config
              L3_4 = L3_4.fullVersion
              L2_4.area = L3_4
              L0_4(L1_4, L2_4)
            end
          end
        end
        
        L2_3 = L0_1
        L2_3 = L2_3.gameNetwork
        L2_3 = L2_3.setSuccesfullyGetLocalPlayerCallback
        L3_3 = L0_3
        L2_3(L3_3)
        L2_3 = L0_1
        L2_3 = L2_3.gameNetwork
        L2_3 = L2_3.setFailsGetLocalPlayerCallback
        L3_3 = L1_3
        L2_3(L3_3)
        L2_3 = L0_1
        L2_3 = L2_3.gameNetwork
        L2_3 = L2_3.init
        L2_3()
        L2_3 = isAndroid
        if L2_3 then
          L2_3 = L0_1
          L2_3 = L2_3.analytics
          L2_3 = L2_3.newEvent
          L3_3 = "design"
          L4_3 = {}
          L4_3.event_id = "gameNetwork:stage1:android"
          L5_3 = L0_1
          L5_3 = L5_3.config
          L5_3 = L5_3.fullVersion
          L4_3.area = L5_3
          L2_3(L3_3, L4_3)
        else
          L2_3 = isIOS
          if L2_3 then
            L2_3 = L0_1
            L2_3 = L2_3.analytics
            L2_3 = L2_3.newEvent
            L3_3 = "design"
            L4_3 = {}
            L4_3.event_id = "gameNetwork:stage1:apple"
            L5_3 = L0_1
            L5_3 = L5_3.config
            L5_3 = L5_3.fullVersion
            L4_3.area = L5_3
            L2_3(L3_3, L4_3)
          end
        end
      else
        L0_3 = L0_1
        L0_3 = L0_3.gameNetwork
        L0_3 = L0_3.getPlayerId
        L0_3 = L0_3()
        if L0_3 then
          L1_3 = print
          L2_3 = "Tell back end to use service id with this account, removing old one"
          L3_3 = L0_3
          L1_3(L2_3, L3_3)
          L1_3 = isAndroid
          if L1_3 then
            L1_3 = L11_1
            L2_3 = L2_2
            L1_3(L2_3)
            L1_3 = L0_1
            L1_3 = L1_3.commHttps
            L1_3 = L1_3.registerGameNetworkPlayerId
            L2_3 = nil
            L3_3 = L0_3
            L1_3(L2_3, L3_3)
          else
            L1_3 = isIOS
            if L1_3 then
              L1_3 = L11_1
              L2_3 = L2_2
              L1_3(L2_3)
              L1_3 = L0_1
              L1_3 = L1_3.commHttps
              L1_3 = L1_3.registerGameNetworkPlayerId
              L2_3 = L0_3
              L3_3 = nil
              L1_3(L2_3, L3_3)
            else
              L1_3 = print
              L2_3 = "Error, tried to send game network player id for something else than ios or android2"
              L1_3(L2_3)
            end
          end
        else
          L1_3 = print
          L2_3 = "Error, service is inited, but no service player id is found"
          L1_3(L2_3)
        end
      end
    end
    L0_3 = L31_2
    L0_3()
    L0_3 = L5_2
    L0_3 = L0_3.refreshTable
    L1_3 = L6_2
    L2_3 = L2_2
    L3_3 = 1
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L36_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "lua.overlays.editAccountData"
    L2_3 = {}
    L2_3.isModal = true
    L0_3(L1_3, L2_3)
  end
  
  function L37_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "lua.overlays.editEmail"
    L2_3 = {}
    L2_3.isModal = true
    L0_3(L1_3, L2_3)
  end
  
  function L38_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "lua.overlays.editPassword"
    L2_3 = {}
    L2_3.isModal = true
    L0_3(L1_3, L2_3)
  end
  
  function L39_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "lua.overlays.logout"
    L2_3 = {}
    L2_3.isModal = true
    L0_3(L1_3, L2_3)
  end
  
  function L40_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "lua.overlays.editNotificationSettings"
    L2_3 = {}
    L2_3.isModal = true
    L0_3(L1_3, L2_3)
  end
  
  function L41_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.comm
    L0_3 = L0_3.rateApp
    L1_3 = 3
    L0_3(L1_3)
    L0_3 = require
    L1_3 = "lua.modules.platformStoreButtonFunction"
    L0_3 = L0_3(L1_3)
    L1_3 = L0_3.toPlatformStoreButton
    L1_3()
  end
  
  function L42_2()
    local L0_3, L1_3
    L0_3 = system
    L0_3 = L0_3.openURL
    L1_3 = "http://support.dirtybit.com/"
    L0_3(L1_3)
  end
  
  L43_2 = L4_2.new
  L44_2 = 356
  L45_2 = 37
  L46_2 = 150
  L47_2 = 283
  L48_2 = 38
  L49_2 = "images/scenes/market/table.png"
  L50_2 = "settings"
  L51_2 = L22_2
  L52_2 = 10
  L43_2 = L43_2(L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2)
  L5_2 = L43_2
  
  function L43_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = system
    L0_3 = L0_3.getInfo
    L1_3 = "targetAppStore"
    L0_3 = L0_3(L1_3)
    if L0_3 == "amazon" then
      L0_3 = L6_2
      if not L0_3 then
        return
      end
      L0_3 = 1
      L1_3 = L6_2
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L6_2
        L4_3 = L4_3[L3_3]
        L4_3 = L4_3.videoLoad
        if L4_3 then
          L4_3 = table
          L4_3 = L4_3.remove
          L5_3 = L6_2
          L6_3 = L3_3
          L4_3(L5_3, L6_3)
          break
        end
      end
    end
  end
  
  function L44_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "lua.overlays.editRecordingSettings"
    L2_3 = {}
    L2_3.isModal = true
    L0_3(L1_3, L2_3)
  end
  
  function L45_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = {}
    L1_3 = {}
    L1_3.sound = true
    L2_3 = L25_2
    L1_3.onClick = L2_3
    L2_3 = {}
    L2_3.chat = true
    L3_3 = L26_2
    L2_3.onClick = L3_3
    L3_3 = {}
    L3_3.videoLoad = true
    L4_3 = L28_2
    L3_3.onClick = L4_3
    L4_3 = {}
    L4_3.graphics = true
    L5_3 = L29_2
    L4_3.onClick = L5_3
    L5_3 = {}
    L5_3.gameNetwork = true
    L6_3 = L35_2
    L5_3.onClick = L6_3
    L6_3 = L0_1
    L6_3 = L6_3.localized
    L6_3 = L6_3.get
    L7_3 = "Connect"
    L6_3 = L6_3(L7_3)
    L5_3.text = L6_3
    L6_3 = {}
    L6_3.gameNetworkConnected = true
    L7_3 = L32_2
    L6_3.onClick = L7_3
    L7_3 = L0_1
    L7_3 = L7_3.localized
    L7_3 = L7_3.get
    L8_3 = "Linked"
    L7_3 = L7_3(L8_3)
    L6_3.text = L7_3
    L7_3 = {}
    L7_3.gameNetworkLogin = true
    L8_3 = L34_2
    L7_3.onClick = L8_3
    L8_3 = L0_1
    L8_3 = L8_3.localized
    L8_3 = L8_3.get
    L9_3 = "Login"
    L8_3 = L8_3(L9_3)
    L7_3.text = L8_3
    L8_3 = {}
    L8_3.facebook = true
    L9_3 = L30_2
    L8_3.onClick = L9_3
    L9_3 = L0_1
    L9_3 = L9_3.localized
    L9_3 = L9_3.get
    L10_3 = "Connect"
    L9_3 = L9_3(L10_3)
    L8_3.text = L9_3
    L9_3 = {}
    L9_3.tutorial = true
    L10_3 = L23_2
    L9_3.onClick = L10_3
    L10_3 = L0_1
    L10_3 = L10_3.localized
    L10_3 = L10_3.get
    L11_3 = "Tutorial"
    L10_3 = L10_3(L11_3)
    L9_3.text = L10_3
    L0_3[1] = L1_3
    L0_3[2] = L2_3
    L0_3[3] = L3_3
    L0_3[4] = L4_3
    L0_3[5] = L5_3
    L0_3[6] = L6_3
    L0_3[7] = L7_3
    L0_3[8] = L8_3
    L0_3[9] = L9_3
    L6_2 = L0_3
    L0_3 = isIOS
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.replayKit
      L0_3 = L0_3.availableToRecord
      L0_3 = L0_3()
      if L0_3 then
        L0_3 = {}
        L0_3.recording = true
        L1_3 = L0_1
        L1_3 = L1_3.localized
        L1_3 = L1_3.get
        L2_3 = "Record game"
        L1_3 = L1_3(L2_3)
        L0_3.text = L1_3
        L1_3 = L44_2
        L0_3.onClick = L1_3
        L1_3 = L6_2
        L2_3 = L6_2
        L2_3 = #L2_3
        L2_3 = L2_3 + 1
        L1_3[L2_3] = L0_3
      else
        L0_3 = print
        L1_3 = "replaykit not supported for recording"
        L0_3(L1_3)
      end
    end
    L0_3 = isAndroid
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.gameNetwork
      L0_3 = L0_3.gpgs
      if L0_3 then
        function L0_3()
          local L0_4, L1_4
          
          L0_4 = L0_1
          L0_4 = L0_4.gameNetwork
          L0_4 = L0_4.gpgs
          L0_4 = L0_4.videos
          L0_4 = L0_4.show
          
          function L1_4(A0_5)
            local L1_5, L2_5, L3_5
            L1_5 = print
            L2_5 = "Event phase "
            L3_5 = A0_5.phase
            L1_5(L2_5, L3_5)
          end
          
          L0_4(L1_4)
        end
        
        L1_3 = L0_1
        L1_3 = L1_3.gameNetwork
        L1_3 = L1_3.gpgs
        L1_3 = L1_3.videos
        L1_3 = L1_3.isSupported
        L1_3 = L1_3()
        if L1_3 then
          L1_3 = {}
          L1_3.recording = true
          L2_3 = L0_1
          L2_3 = L2_3.localized
          L2_3 = L2_3.get
          L3_3 = "Record game"
          L2_3 = L2_3(L3_3)
          L1_3.text = L2_3
          L1_3.onClick = L0_3
          L2_3 = L6_2
          L3_3 = L6_2
          L3_3 = #L3_3
          L3_3 = L3_3 + 1
          L2_3[L3_3] = L1_3
        else
          L1_3 = print
          L2_3 = "gpgs video not supported"
          L1_3(L2_3)
        end
      end
    end
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.playerInfo
    L0_3 = L0_3.email
    if L0_3 then
      L0_3 = {}
      L0_3.email = true
      L1_3 = L37_2
      L0_3.onClick = L1_3
      L1_3 = L0_1
      L1_3 = L1_3.localized
      L1_3 = L1_3.get
      L2_3 = "EditEmail"
      L1_3 = L1_3(L2_3)
      L0_3.text = L1_3
      L1_3 = {}
      L1_3.password = true
      L2_3 = L38_2
      L1_3.onClick = L2_3
      L2_3 = L0_1
      L2_3 = L2_3.localized
      L2_3 = L2_3.get
      L3_3 = "EditPassword"
      L2_3 = L2_3(L3_3)
      L1_3.text = L2_3
      L2_3 = L6_2
      L3_3 = L6_2
      L3_3 = #L3_3
      L3_3 = L3_3 + 1
      L2_3[L3_3] = L0_3
      L2_3 = L6_2
      L3_3 = L6_2
      L3_3 = #L3_3
      L3_3 = L3_3 + 1
      L2_3[L3_3] = L1_3
    else
      L0_3 = {}
      L0_3.account = true
      L1_3 = L36_2
      L0_3.onClick = L1_3
      L1_3 = L0_1
      L1_3 = L1_3.localized
      L1_3 = L1_3.get
      L2_3 = "AccountInfo"
      L1_3 = L1_3(L2_3)
      L0_3.text = L1_3
      L1_3 = L6_2
      L2_3 = L6_2
      L2_3 = #L2_3
      L2_3 = L2_3 + 1
      L1_3[L2_3] = L0_3
    end
    L0_3 = {}
    L0_3.push = true
    L1_3 = L40_2
    L0_3.onClick = L1_3
    L1_3 = L0_1
    L1_3 = L1_3.localized
    L1_3 = L1_3.get
    L2_3 = "Notifications"
    L1_3 = L1_3(L2_3)
    L0_3.text = L1_3
    L1_3 = {}
    L1_3.logout = true
    L2_3 = L39_2
    L1_3.onClick = L2_3
    L2_3 = L0_1
    L2_3 = L2_3.localized
    L2_3 = L2_3.get
    L3_3 = "Logout"
    L2_3 = L2_3(L3_3)
    L1_3.text = L2_3
    L2_3 = L6_2
    L3_3 = L6_2
    L3_3 = #L3_3
    L3_3 = L3_3 + 1
    L2_3[L3_3] = L0_3
    L2_3 = L0_1
    L2_3 = L2_3.showRateApp
    if L2_3 then
      L2_3 = {}
      L2_3.rate = true
      L3_3 = L41_2
      L2_3.onClick = L3_3
      L3_3 = L0_1
      L3_3 = L3_3.localized
      L3_3 = L3_3.get
      L4_3 = "Rate app"
      L3_3 = L3_3(L4_3)
      L2_3.text = L3_3
      L3_3 = L6_2
      L4_3 = L6_2
      L4_3 = #L4_3
      L4_3 = L4_3 + 1
      L3_3[L4_3] = L2_3
    end
    L2_3 = {}
    L3_3 = L42_2
    L2_3.onClick = L3_3
    L3_3 = L0_1
    L3_3 = L3_3.localized
    L3_3 = L3_3.get
    L4_3 = "Need Help?"
    L3_3 = L3_3(L4_3)
    L2_3.text = L3_3
    L3_3 = L6_2
    L4_3 = L6_2
    L4_3 = #L4_3
    L4_3 = L4_3 + 1
    L3_3[L4_3] = L2_3
    L3_3 = L6_2
    L4_3 = L6_2
    L4_3 = #L4_3
    L4_3 = L4_3 + 1
    L3_3[L4_3] = L1_3
    L3_3 = L43_2
    L3_3()
    L3_3 = L31_2
    L3_3()
  end
  
  function L46_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getFacebookId
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = 1
      L1_3 = L6_2
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L6_2
        L4_3 = L4_3[L3_3]
        L4_3 = L4_3.facebook
        if L4_3 then
          L4_3 = table
          L4_3 = L4_3.remove
          L5_3 = L6_2
          L6_3 = L3_3
          L4_3(L5_3, L6_3)
          return
        end
      end
    end
  end
  
  L47_2 = L1_1
  
  function L48_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = L45_2
    L2_3()
    L2_3 = L31_2
    L2_3()
    L2_3 = L5_2
    L2_3 = L2_3.refreshTable
    L3_3 = L6_2
    L4_3 = L2_2
    L5_3 = 1
    L2_3(L3_3, L4_3, L5_3)
  end
  
  L47_2.overlayEnded = L48_2
  
  function L47_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = A0_3.m
    L2_3 = L3_2
    L2_3 = L2_3.changeUsername
    L2_3 = L2_3()
    if L1_3 == L2_3 then
      L1_3 = L16_2
      L1_3()
    else
      L1_3 = A0_3.m
      L2_3 = L3_2
      L2_3 = L2_3.registerFacebook
      L2_3 = L2_3()
      if L1_3 == L2_3 then
        L1_3 = L45_2
        L1_3()
        L1_3 = L46_2
        L1_3()
        L1_3 = L31_2
        L1_3()
        L1_3 = L5_2
        L1_3 = L1_3.refreshTable
        L2_3 = L6_2
        L3_3 = L2_2
        L4_3 = 1
        L1_3(L2_3, L3_3, L4_3)
      else
        L1_3 = A0_3.m
        L2_3 = L3_2
        L2_3 = L2_3.registerGameNetworkPlayerId
        L2_3 = L2_3()
        if L1_3 == L2_3 then
          L1_3 = isAndroid
          if L1_3 then
            L1_3 = L0_1
            L1_3 = L1_3.gameNetwork
            if L1_3 then
              L1_3 = A0_3.r
              if L1_3 then
                L1_3 = L0_1
                L1_3 = L1_3.analytics
                L1_3 = L1_3.newEvent
                L2_3 = "design"
                L3_3 = {}
                L3_3.event_id = "gameNetwork:stage3:fail:android"
                L4_3 = L0_1
                L4_3 = L4_3.config
                L4_3 = L4_3.fullVersion
                L3_3.area = L4_3
                L1_3(L2_3, L3_3)
                return
              end
              L1_3 = A0_3.g
              if L1_3 then
                L1_3 = print
                L2_3 = "Try to revalidate play services"
                L3_3 = A0_3.g
                L1_3(L2_3, L3_3)
                L1_3 = L0_1
                L1_3 = L1_3.database
                L1_3 = L1_3.setGooglePlayServicesId
                L2_3 = A0_3.g
                L1_3(L2_3)
                L1_3 = L0_1
                L1_3 = L1_3.gameNetwork
                L1_3 = L1_3.setBackEndGooglePlayerId
                L2_3 = A0_3.g
                L1_3(L2_3)
                L1_3 = L0_1
                L1_3 = L1_3.gameNetwork
                L1_3 = L1_3.revalidateGooglePlayServices
                L1_3()
                L1_3 = L0_1
                L1_3 = L1_3.analytics
                L1_3 = L1_3.newEvent
                L2_3 = "design"
                L3_3 = {}
                L3_3.event_id = "gameNetwork:stage3:success:android"
                L4_3 = L0_1
                L4_3 = L4_3.config
                L4_3 = L4_3.fullVersion
                L3_3.area = L4_3
                L1_3(L2_3, L3_3)
              else
                L1_3 = print
                L2_3 = "Missing newly registered google player id"
                L1_3(L2_3)
                L1_3 = L0_1
                L1_3 = L1_3.analytics
                L1_3 = L1_3.newEvent
                L2_3 = "design"
                L3_3 = {}
                L3_3.event_id = "gameNetwork:stage3:fail:android"
                L4_3 = L0_1
                L4_3 = L4_3.config
                L4_3 = L4_3.fullVersion
                L3_3.area = L4_3
                L1_3(L2_3, L3_3)
              end
          end
          else
            L1_3 = isIOS
            if L1_3 then
              L1_3 = A0_3.r
              if L1_3 then
                L1_3 = L0_1
                L1_3 = L1_3.analytics
                L1_3 = L1_3.newEvent
                L2_3 = "design"
                L3_3 = {}
                L3_3.event_id = "gameNetwork:stage3:fail:apple"
                L4_3 = L0_1
                L4_3 = L4_3.config
                L4_3 = L4_3.fullVersion
                L3_3.area = L4_3
                L1_3(L2_3, L3_3)
                return
              end
              L1_3 = L0_1
              L1_3 = L1_3.analytics
              L1_3 = L1_3.newEvent
              L2_3 = "design"
              L3_3 = {}
              L3_3.event_id = "gameNetwork:stage3:success:apple"
              L4_3 = L0_1
              L4_3 = L4_3.config
              L4_3 = L4_3.fullVersion
              L3_3.area = L4_3
              L1_3(L2_3, L3_3)
            end
          end
          L1_3 = L45_2
          L1_3()
          L1_3 = L46_2
          L1_3()
          L1_3 = L31_2
          L1_3()
          L1_3 = L5_2
          L1_3 = L1_3.refreshTable
          L2_3 = L6_2
          L3_3 = L2_2
          L4_3 = 1
          L1_3(L2_3, L3_3, L4_3)
          L1_3 = L10_1
          L1_3()
        else
          L1_3 = A0_3.m
          L2_3 = L3_2
          L2_3 = L2_3.getGooglePlayServicesId
          L2_3 = L2_3()
          if L1_3 == L2_3 then
            L1_3 = L0_1
            L1_3 = L1_3.gameNetwork
            L1_3 = L1_3.getBackEndGooglePlayerId
            L1_3 = L1_3()
            L2_3 = L0_1
            L2_3 = L2_3.gameNetwork
            L2_3 = L2_3.getPlayerId
            L2_3 = L2_3()
            if L1_3 and L1_3 == L2_3 then
            else
              L3_3 = "Login failed. Fun Run account is connected to another Google account."
              L4_3 = L0_1
              L4_3 = L4_3.createCustomOverlay
              L5_3 = 98
              L6_3 = nil
              L7_3 = L3_3
              L4_3(L5_3, L6_3, L7_3)
              L4_3 = L0_1
              L4_3 = L4_3.gameNetwork
              L4_3 = L4_3.playServicesLogout
              L4_3()
            end
            L3_3 = L10_1
            L3_3()
            L3_3 = L31_2
            L3_3()
            L3_3 = L5_2
            L3_3 = L3_3.refreshTable
            L4_3 = L6_2
            L5_3 = L2_2
            L6_3 = 1
            L3_3(L4_3, L5_3, L6_3)
          end
        end
      end
    end
  end
  
  L4_1 = L47_2
  
  function L47_2(A0_3)
    local L1_3
  end
  
  function L48_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = L8_2
    L3_3 = L8_2
    L3_3 = #L3_3
    L3_3 = L3_3 + 1
    L4_3 = {}
    L4_3.creditInfo = A0_3
    L2_3[L3_3] = L4_3
    if A1_3 then
      L2_3 = L8_2
      L3_3 = L8_2
      L3_3 = #L3_3
      L2_3 = L2_3[L3_3]
      L2_3.size = A1_3
    end
  end
  
  L49_2 = 20
  L50_2 = 15
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = "Fun Run 2 V: "
  L53_2 = L0_1
  L53_2 = L53_2.config
  L53_2 = L53_2.fullVersion
  L52_2 = L52_2 .. L53_2
  L53_2 = L49_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = "facebook.com/funrungame"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "@TheFunRun"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "#funrun2"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "/r/funrun"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = L0_1
  L52_2 = L52_2.localized
  L52_2 = L52_2.get
  L53_2 = "Credits"
  L52_2 = L52_2(L53_2)
  L53_2 = L49_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = "Dirtybit"
  L53_2 = L49_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Erlend B. Haugsdal"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Nicolaj B. Petersen"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Martin N. Vagstad"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Fredrik Fors Hansen"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Matthew Guise"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Ida Vilhelmiina Oltedal"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Aleksander Aa. Elvemo"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Aurora K. Berg"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Anne Marte Markussen"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Maxime Montera"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Kasper K. Berg"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Zahra Alobaidi"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = L0_1
  L52_2 = L52_2.localized
  L52_2 = L52_2.get
  L53_2 = "Sound design"
  L52_2 = L52_2(L53_2)
  L53_2 = L49_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Martin Kvale"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = L0_1
  L52_2 = L52_2.localized
  L52_2 = L52_2.get
  L53_2 = "Character Assets"
  L52_2 = L52_2(L53_2)
  L53_2 = L49_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Pykotta"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = L0_1
  L52_2 = L52_2.localized
  L52_2 = L52_2.get
  L53_2 = "SpecialThanks"
  L52_2 = L52_2(L53_2)
  L53_2 = L49_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Helene E. Wiik"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Mirna Besirovic"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Benedicte H. St\195\184rksen"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Torstein Berteig"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "Silje Valla"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = "James Portnow"
  L53_2 = L50_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = "Dirtybit.com"
  L53_2 = L49_2
  L51_2(L52_2, L53_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  L51_2 = L48_2
  L52_2 = ""
  L51_2(L52_2)
  
  function L51_2()
    local L0_3, L1_3
  end
  
  function L52_2()
    local L0_3, L1_3
    L0_3 = L9_2
    if L0_3 then
      return
    end
  end
  
  function L53_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = L4_2
    L0_3 = L0_3.new
    L1_3 = 15
    L2_3 = 45
    L3_3 = 300
    L4_3 = 283
    L5_3 = 22
    L6_3 = nil
    L7_3 = "credits"
    L8_3 = L51_2
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L7_2 = L0_3
    L0_3 = L7_2
    L0_3 = L0_3.createTable
    L1_3 = L8_2
    L2_3 = L2_2
    L0_3(L1_3, L2_3)
  end
  
  function L54_2()
    local L0_3, L1_3, L2_3
    L0_3 = true
    L9_2 = L0_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L18_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L20_2
    L0_3(L1_3)
    L0_3 = isAndroid
    if L0_3 then
      L0_3 = native
      L0_3 = L0_3.setProperty
      L1_3 = "androidSystemUiVisibility"
      L2_3 = "immersiveSticky"
      L0_3(L1_3, L2_3)
    end
    L0_3 = L10_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L10_2
      L0_3(L1_3)
      L0_3 = nil
      L10_2 = L0_3
    end
    L0_3 = L7_2
    if L0_3 then
      L0_3 = L7_2
      L0_3 = L0_3.cleanTable
      L0_3()
    end
    L0_3 = L5_2
    if L0_3 then
      L0_3 = L5_2
      L0_3 = L0_3.cleanTable
      L0_3()
    end
  end
  
  L2_1 = L54_2
  L54_2 = L45_2
  L54_2()
  L54_2 = L46_2
  L54_2()
  L54_2 = L31_2
  L54_2()
  L54_2 = L53_2
  L54_2()
  L54_2 = L21_2
  L54_2()
  L54_2 = L0_1
  L54_2 = L54_2.comm
  L54_2 = L54_2.setCallback
  L55_2 = L47_2
  L54_2(L55_2)
  L54_2 = L0_1
  L54_2 = L54_2.commHttps
  L54_2 = L54_2.setCallback
  L55_2 = L4_1
  L54_2(L55_2)
  L54_2 = L5_2.createTable
  L55_2 = L6_2
  L56_2 = L2_2
  L54_2(L55_2, L56_2)
  L54_2 = L16_2
  L54_2()
  L54_2 = timer
  L54_2 = L54_2.performWithDelay
  L55_2 = 2000
  L56_2 = L52_2
  L57_2 = 1
  L54_2 = L54_2(L55_2, L56_2, L57_2)
  L10_2 = L54_2
end

L1_1.create = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    return
  end
  L3_2 = A0_2.view
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
  L7_2 = "lua.scenes.settings"
  L5_2(L6_2, L7_2)
end

L1_1.show = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L3_2 = L0_1
    L3_2 = L3_2.removeScene
    L4_2 = "lua.scenes.settings"
    L3_2(L4_2)
    return
  end
  L3_2 = A0_2.view
  L4_2 = L3_1
  if L4_2 then
    L4_2 = L3_1
    L4_2()
  end
end

L1_1.hide = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.view
  L3_2 = L2_1
  if L3_2 then
    L3_2 = L2_1
    L3_2()
  end
end

L1_1.destroy = L12_1
L13_1 = L1_1
L12_1 = L1_1.addEventListener
L14_1 = "create"
L15_1 = L1_1
L12_1(L13_1, L14_1, L15_1)
L13_1 = L1_1
L12_1 = L1_1.addEventListener
L14_1 = "show"
L15_1 = L1_1
L12_1(L13_1, L14_1, L15_1)
L13_1 = L1_1
L12_1 = L1_1.addEventListener
L14_1 = "hide"
L15_1 = L1_1
L12_1(L13_1, L14_1, L15_1)
L13_1 = L1_1
L12_1 = L1_1.addEventListener
L14_1 = "destroy"
L15_1 = L1_1
L12_1(L13_1, L14_1, L15_1)
return L1_1
