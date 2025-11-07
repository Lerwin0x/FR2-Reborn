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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2
  L2_2 = A0_2.view
  L3_2 = L0_1
  L3_2 = L3_2.database
  L3_2 = L3_2.getGem
  L3_2 = L3_2()
  L4_2 = "error"
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  L6_2 = L0_1
  L6_2 = L6_2.storeConfig
  L6_2 = L6_2.getUsernameChangePrice
  L6_2 = L6_2()
  L4_2 = L6_2
  L6_2 = 25
  L7_2 = nil
  L8_2 = isAndroid
  if L8_2 then
    L6_2 = 35
  end
  L8_2 = nil
  L9_2 = L0_1
  L9_2 = L9_2.data
  L9_2 = L9_2.numberOfNameChangesDone
  if L9_2 then
    L9_2 = L0_1
    L9_2 = L9_2.data
    L9_2 = L9_2.numberOfNameChangesDone
    L8_2 = L9_2 < 1
  end
  L9_2 = display
  L9_2 = L9_2.newImageRect
  L10_2 = "images/gui/settings/windowRename.png"
  L11_2 = 350
  L12_2 = 137
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L9_2.anchorX = 0.5
  L9_2.anchorY = 0
  L9_2.x = 240
  L9_2.y = 0
  L10_2 = display
  L10_2 = L10_2.newImageRect
  L11_2 = "images/gui/market/currentCoins.png"
  L12_2 = 70
  L13_2 = 81
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L10_2.anchorX = 0
  L10_2.anchorY = 0
  L10_2.x = 400
  L10_2.y = 0
  L11_2 = L0_1
  L11_2 = L11_2.database
  L11_2 = L11_2.getMoney
  L11_2 = L11_2()
  L12_2 = L0_1
  L12_2 = L12_2.newText
  L13_2 = {}
  L13_2.string = L11_2
  L13_2.size = 14
  L13_2.x = 424
  L13_2.y = 69
  L13_2.ax = 0
  L14_2 = {}
  L15_2 = 1
  L16_2 = 1
  L17_2 = 1
  L14_2[1] = L15_2
  L14_2[2] = L16_2
  L14_2[3] = L17_2
  L13_2.color = L14_2
  L12_2 = L12_2(L13_2)
  L13_2 = L0_1
  L13_2 = L13_2.newText
  L14_2 = {}
  L14_2.string = L11_2
  L14_2.size = 14
  L14_2.x = 424
  L14_2.y = 69
  L14_2.ax = 0
  L15_2 = {}
  L16_2 = 1
  L17_2 = 0
  L18_2 = 0
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L14_2.color = L15_2
  L13_2 = L13_2(L14_2)
  L13_2.alpha = 0
  L14_2 = L0_1
  L14_2 = L14_2.newText
  L15_2 = {}
  L15_2.string = L3_2
  L15_2.size = 14
  L15_2.x = 424
  L15_2.y = 41
  L15_2.ax = 0
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
  L16_2.string = L3_2
  L16_2.size = 14
  L16_2.x = 424
  L16_2.y = 41
  L16_2.ax = 0
  L17_2 = {}
  L18_2 = 1
  L19_2 = 0
  L20_2 = 0
  L17_2[1] = L18_2
  L17_2[2] = L19_2
  L17_2[3] = L20_2
  L16_2.color = L17_2
  L15_2 = L15_2(L16_2)
  L15_2.alpha = 0
  L16_2 = display
  L16_2 = L16_2.newRect
  L17_2 = 0
  L18_2 = 0
  L19_2 = display
  L19_2 = L19_2.contentWidth
  L20_2 = display
  L20_2 = L20_2.contentHeight
  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
  L16_2.anchorX = 0
  L16_2.anchorY = 0
  L18_2 = L16_2
  L17_2 = L16_2.setFillColor
  L19_2 = 0
  L20_2 = 0
  L21_2 = 0
  L22_2 = 0.5882352941176471
  L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
  L16_2.x = 0
  L16_2.y = 0
  L17_2 = L0_1
  L17_2 = L17_2.newText
  L18_2 = {}
  L19_2 = L0_1
  L19_2 = L19_2.localized
  L19_2 = L19_2.get
  L20_2 = "SetUsername"
  L19_2 = L19_2(L20_2)
  L18_2.string = L19_2
  L18_2.size = 25
  L19_2 = {}
  L20_2 = 1
  L21_2 = 1
  L22_2 = 1
  L19_2[1] = L20_2
  L19_2[2] = L21_2
  L19_2[3] = L22_2
  L18_2.color = L19_2
  L17_2 = L17_2(L18_2)
  L17_2.anchorX = 0.5
  L17_2.anchorY = 0.5
  L17_2.x = 240
  L17_2.y = 25
  L18_2 = L0_1
  L18_2 = L18_2.newText
  L19_2 = {}
  L20_2 = L0_1
  L20_2 = L20_2.localized
  L20_2 = L20_2.get
  L21_2 = "Username"
  L20_2 = L20_2(L21_2)
  L19_2.string = L20_2
  L20_2 = {}
  L21_2 = 1
  L22_2 = 1
  L23_2 = 1
  L20_2[1] = L21_2
  L20_2[2] = L22_2
  L20_2[3] = L23_2
  L19_2.color = L20_2
  L18_2 = L18_2(L19_2)
  L18_2.anchorX = 0.5
  L18_2.anchorY = 0.5
  L18_2.x = 125
  L18_2.y = 80
  L19_2 = L0_1
  L19_2 = L19_2.newText
  L20_2 = {}
  L20_2.string = ""
  L19_2 = L19_2(L20_2)
  L19_2.anchorX = 0.5
  L19_2.anchorY = 0.5
  L19_2.x = 240
  L19_2.y = 110
  L20_2 = native
  L20_2 = L20_2.newTextField
  L21_2 = display
  L21_2 = L21_2.contentWidth
  L21_2 = L21_2 * 4
  L22_2 = display
  L22_2 = L22_2.contentHeight
  L22_2 = L22_2 * 0.2
  L23_2 = 150
  L24_2 = L6_2
  L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2)
  L4_1 = L20_2
  L20_2 = L4_1
  L20_2.anchorX = 0.5
  L20_2 = L4_1
  L20_2.anchorY = 0.5
  L20_2 = L4_1
  L20_2.x = 240
  L20_2 = L4_1
  L20_2.y = 80
  L20_2 = L4_1
  L21_2 = L0_1
  L21_2 = L21_2.validateInput
  L21_2 = L21_2.limitTextField
  L22_2 = 15
  L21_2 = L21_2(L22_2)
  L20_2.userInput = L21_2
  L20_2 = L4_1
  L21_2 = L20_2
  L20_2 = L20_2.addEventListener
  L22_2 = "userInput"
  L23_2 = L4_1
  L23_2 = L23_2.userInput
  L20_2(L21_2, L22_2, L23_2)
  L20_2 = L4_1
  L21_2 = L0_1
  L21_2 = L21_2.database
  L21_2 = L21_2.getPlayerInformation
  L21_2 = L21_2()
  L21_2 = L21_2.username
  L20_2.text = L21_2
  
  function L20_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = 1.2
    L1_3 = 100
    L2_3 = 200
    L3_3 = transition
    L3_3 = L3_3.to
    L4_3 = L14_2
    L5_3 = {}
    L5_3.time = L1_3
    L5_3.xScale = L0_3
    L5_3.yScale = L0_3
    L3_3(L4_3, L5_3)
    L3_3 = transition
    L3_3 = L3_3.to
    L4_3 = L14_2
    L5_3 = {}
    L5_3.time = L1_3
    L5_3.delay = L2_3
    L5_3.xScale = 1
    L5_3.yScale = 1
    L3_3(L4_3, L5_3)
    L3_3 = transition
    L3_3 = L3_3.to
    L4_3 = L15_2
    L5_3 = {}
    L5_3.time = L1_3
    L5_3.xScale = L0_3
    L5_3.yScale = L0_3
    L5_3.alpha = 1
    L3_3(L4_3, L5_3)
    L3_3 = transition
    L3_3 = L3_3.to
    L4_3 = L15_2
    L5_3 = {}
    L5_3.time = L1_3
    L5_3.delay = L2_3
    L5_3.xScale = 1
    L5_3.yScale = 1
    L5_3.alpha = 0
    L3_3(L4_3, L5_3)
  end
  
  function L21_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getGem
    L0_3 = L0_3()
    L1_3 = L8_2
    if L1_3 then
      L1_3 = true
      return L1_3
    else
      L1_3 = L4_2
      if L1_3 then
        L1_3 = L4_2
        if L0_3 >= L1_3 then
          L1_3 = L0_1
          L1_3 = L1_3.analytics
          L1_3 = L1_3.newEvent
          L2_3 = "design"
          L3_3 = {}
          L3_3.event_id = "rename:coins"
          L4_3 = L0_1
          L4_3 = L4_3.config
          L4_3 = L4_3.fullVersion
          L3_3.area = L4_3
          L1_3(L2_3, L3_3)
          L1_3 = true
          return L1_3
      end
      else
        L1_3 = L20_2
        L1_3()
        L1_3 = false
        return L1_3
      end
    end
  end
  
  function L22_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
    L0_3 = native
    L0_3 = L0_3.setKeyboardFocus
    L1_3 = nil
    L0_3(L1_3)
  end
  
  function L23_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L0_1
      L1_3 = L1_3.hideOverlay
      L1_3()
      L1_3 = native
      L1_3 = L1_3.setKeyboardFocus
      L2_3 = nil
      L1_3(L2_3)
    end
    L1_3 = true
    return L1_3
  end
  
  function L24_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = native
      L1_3 = L1_3.setKeyboardFocus
      L2_3 = nil
      L1_3(L2_3)
    end
    L1_3 = true
    return L1_3
  end
  
  L25_2 = L0_1
  L25_2 = L25_2.newButton
  L26_2 = {}
  L26_2.x = 380
  L26_2.y = 32
  L26_2.width = 43
  L26_2.height = 38
  L26_2.image = "images/gui/common/buttonClosePopupBrown.png"
  L26_2.onRelease = L22_2
  L25_2 = L25_2(L26_2)
  
  function L26_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L21_2
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.validateInput
      L0_3 = L0_3.validateUsername
      L1_3 = L4_1
      L1_3 = L1_3.text
      L0_3, L1_3 = L0_3(L1_3)
      if not L0_3 then
        L2_3 = L19_2
        L3_3 = L0_1
        L3_3 = L3_3.localized
        L3_3 = L3_3.get
        L4_3 = L1_3
        L3_3 = L3_3(L4_3)
        L2_3.text = L3_3
        L2_3 = L0_1
        L2_3 = L2_3.analytics
        L2_3 = L2_3.newEvent
        L3_3 = "design"
        L4_3 = {}
        L4_3.event_id = "renameUser:invalidUsername"
        L5_3 = L0_1
        L5_3 = L5_3.config
        L5_3 = L5_3.fullVersion
        L4_3.area = L5_3
        L2_3(L3_3, L4_3)
      else
        L2_3 = L0_1
        L2_3 = L2_3.commHttps
        L2_3 = L2_3.changeUsername
        L3_3 = L0_3
        L2_3(L3_3)
        L2_3 = L0_1
        L2_3 = L2_3.analytics
        L2_3 = L2_3.newEvent
        L3_3 = "design"
        L4_3 = {}
        L4_3.event_id = "renameUser:attempt"
        L5_3 = L0_1
        L5_3 = L5_3.config
        L5_3 = L5_3.fullVersion
        L4_3.area = L5_3
        L2_3(L3_3, L4_3)
        L2_3 = L0_1
        L2_3 = L2_3.hideOverlay
        L2_3()
      end
    end
  end
  
  L27_2 = "images/gui/settings/buttonRenameGems.png"
  L28_2 = L4_2
  if L8_2 then
    L27_2 = "images/gui/login/buttonNext.png"
    L28_2 = ""
  end
  L29_2 = L0_1
  L29_2 = L29_2.newButton
  L30_2 = {}
  L30_2.x = 350
  L30_2.y = 80
  L30_2.width = 62
  L30_2.height = 45
  L31_2 = {}
  L31_2.string = L28_2
  L31_2.y = 7
  L31_2.x = 0
  L30_2.text = L31_2
  L30_2.image = L27_2
  L30_2.onRelease = L26_2
  L29_2 = L29_2(L30_2)
  L7_2 = L29_2
  
  function L29_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L16_2
    L0_3(L1_3, L2_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L9_2
    L0_3(L1_3, L2_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L10_2
    L0_3(L1_3, L2_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L12_2
    L0_3(L1_3, L2_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L13_2
    L0_3(L1_3, L2_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L14_2
    L0_3(L1_3, L2_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L15_2
    L0_3(L1_3, L2_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L17_2
    L0_3(L1_3, L2_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L4_1
    L0_3(L1_3, L2_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L18_2
    L0_3(L1_3, L2_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L19_2
    L0_3(L1_3, L2_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L25_2
    L0_3(L1_3, L2_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L7_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L5_2
    L0_3(L1_3, L2_3)
  end
  
  function L30_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L16_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L23_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L24_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L31_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L25_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L7_2
    L0_3(L1_3)
    L0_3 = native
    L0_3 = L0_3.setKeyboardFocus
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = L4_1
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "userInput"
    L3_3 = L4_1
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L16_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L23_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L24_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L2_1 = L31_2
  L31_2 = L29_2
  L31_2()
  L31_2 = L30_2
  L31_2()
  L31_2 = isAndroid
  if not L31_2 then
    L31_2 = native
    L31_2 = L31_2.setKeyboardFocus
    L32_2 = L4_1
    L31_2(L32_2)
  end
  L31_2 = L0_1
  L31_2 = L31_2.bouncer
  L31_2 = L31_2.down
  L32_2 = L5_2
  L31_2(L32_2)
end

L1_1.create = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
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
    L0_3 = L0_3.isOverlay
    L1_3 = false
    L0_3(L1_3)
  end
  
  L3_1 = L5_2
  L5_2 = L4_2.isOverlay
  L6_2 = true
  L5_2(L6_2)
end

L1_1.show = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    return
  end
  L3_2 = A0_2.view
  L4_2 = L3_1
  L4_2()
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
