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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L2_2 = A0_2.view
  L3_2 = require
  L4_2 = "lua.network.httpsMessageFormat"
  L3_2 = L3_2(L4_2)
  L4_2 = 25
  L5_2 = nil
  L6_2 = display
  L6_2 = L6_2.newGroup
  L6_2 = L6_2()
  L7_2 = nil
  L8_2 = isAndroid
  if L8_2 then
    L4_2 = 30
  end
  L8_2 = ""
  L9_2 = display
  L9_2 = L9_2.newImageRect
  L10_2 = "images/gui/login/window.png"
  L11_2 = 350
  L12_2 = 137
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L9_2.anchorX = 0.5
  L9_2.anchorY = 0
  L9_2.x = 240
  L9_2.y = 0
  L10_2 = display
  L10_2 = L10_2.newRect
  L11_2 = 0
  L12_2 = 0
  L13_2 = display
  L13_2 = L13_2.contentWidth
  L14_2 = display
  L14_2 = L14_2.contentHeight
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2.anchorX = 0
  L10_2.anchorY = 0
  L12_2 = L10_2
  L11_2 = L10_2.setFillColor
  L13_2 = 0
  L14_2 = 0
  L15_2 = 0
  L16_2 = 0.5882352941176471
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2.x = 0
  L10_2.y = 0
  L11_2 = L0_1
  L11_2 = L11_2.newText
  L12_2 = {}
  L13_2 = L0_1
  L13_2 = L13_2.localized
  L13_2 = L13_2.get
  L14_2 = "EditPassword"
  L13_2 = L13_2(L14_2)
  L12_2.string = L13_2
  L12_2.size = 25
  L13_2 = {}
  L14_2 = 1
  L15_2 = 1
  L16_2 = 1
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L12_2.color = L13_2
  L11_2 = L11_2(L12_2)
  L11_2.anchorX = 0.5
  L11_2.anchorY = 0.5
  L11_2.x = 240
  L11_2.y = 25
  L12_2 = L0_1
  L12_2 = L12_2.newText
  L13_2 = {}
  L14_2 = L0_1
  L14_2 = L14_2.localized
  L14_2 = L14_2.get
  L15_2 = "Password"
  L14_2 = L14_2(L15_2)
  L13_2.string = L14_2
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
  L12_2.x = 125
  L12_2.y = 80
  L13_2 = L0_1
  L13_2 = L13_2.newText
  L14_2 = {}
  L14_2.string = ""
  L13_2 = L13_2(L14_2)
  L13_2.anchorX = 0.5
  L13_2.anchorY = 0.5
  L13_2.x = 240
  L13_2.y = 118
  L14_2 = native
  L14_2 = L14_2.newTextField
  L15_2 = display
  L15_2 = L15_2.contentWidth
  L15_2 = L15_2 * 4
  L16_2 = display
  L16_2 = L16_2.contentHeight
  L16_2 = L16_2 * 0.2
  L17_2 = 150
  L18_2 = L4_2
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
  L14_2.anchorX = 0.5
  L14_2.anchorY = 0.5
  L14_2.x = 240
  L14_2.y = 80
  L15_2 = L0_1
  L15_2 = L15_2.validateInput
  L15_2 = L15_2.limitTextField
  L16_2 = 15
  L15_2 = L15_2(L16_2)
  L14_2.userInput = L15_2
  L16_2 = L14_2
  L15_2 = L14_2.addEventListener
  L17_2 = "userInput"
  L18_2 = L14_2.userInput
  L15_2(L16_2, L17_2, L18_2)
  
  function L15_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
    L0_3 = native
    L0_3 = L0_3.setKeyboardFocus
    L1_3 = nil
    L0_3(L1_3)
  end
  
  function L16_2(A0_3)
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
  
  function L17_2(A0_3)
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
  
  L18_2 = L0_1
  L18_2 = L18_2.newButton
  L19_2 = {}
  L19_2.x = 400
  L19_2.y = 26
  L19_2.width = 43
  L19_2.height = 38
  L19_2.image = "images/gui/common/buttonClosePopup.png"
  L19_2.onRelease = L15_2
  L18_2 = L18_2(L19_2)
  
  function L19_2(A0_3)
    local L1_3
    L1_3 = L7_2
    L1_3.isVisible = A0_3
  end
  
  function L20_2()
    local L0_3, L1_3, L2_3
    L0_3 = L13_2
    L1_3 = L0_1
    L1_3 = L1_3.localized
    L1_3 = L1_3.get
    L2_3 = "NoResponse"
    L1_3 = L1_3(L2_3)
    L0_3.text = L1_3
    L0_3 = L19_2
    L1_3 = true
    L0_3(L1_3)
  end
  
  function L21_2()
    local L0_3, L1_3
    L0_3 = L5_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L5_2
      L0_3(L1_3)
      L0_3 = nil
      L5_2 = L0_3
    end
  end
  
  function L22_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L14_2
    L0_3 = L0_3.text
    if L0_3 then
      L1_3 = string
      L1_3 = L1_3.len
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if 1 < L1_3 then
        L1_3 = L0_1
        L1_3 = L1_3.validateInput
        L1_3 = L1_3.validatePassword
        L2_3 = L0_3
        L1_3, L2_3 = L1_3(L2_3)
        if not L1_3 then
          L3_3 = L13_2
          L4_3 = L0_1
          L4_3 = L4_3.localized
          L4_3 = L4_3.get
          L5_3 = L2_3
          L4_3 = L4_3(L5_3)
          L3_3.text = L4_3
          L3_3 = L0_1
          L3_3 = L3_3.analytics
          L3_3 = L3_3.newEvent
          L4_3 = "design"
          L5_3 = {}
          L5_3.event_id = "updateAccount:password:invalidPassword"
          L6_3 = L0_1
          L6_3 = L6_3.config
          L6_3 = L6_3.fullVersion
          L5_3.area = L6_3
          L3_3(L4_3, L5_3)
        else
          L3_3 = L13_2
          L4_3 = L0_1
          L4_3 = L4_3.localized
          L4_3 = L4_3.get
          L5_3 = "PleaseEnterPassword"
          L4_3 = L4_3(L5_3)
          L3_3.text = L4_3
          L3_3 = L0_1
          L3_3 = L3_3.commHttps
          L3_3 = L3_3.changeEmail
          L4_3 = nil
          L5_3 = L1_3
          L3_3(L4_3, L5_3)
          L3_3 = L21_2
          L3_3()
          L3_3 = timer
          L3_3 = L3_3.performWithDelay
          L4_3 = L0_1
          L4_3 = L4_3.config
          L4_3 = L4_3.serverTimeout
          L5_3 = L20_2
          L6_3 = 1
          L3_3 = L3_3(L4_3, L5_3, L6_3)
          L5_2 = L3_3
          L3_3 = L0_1
          L3_3 = L3_3.analytics
          L3_3 = L3_3.newEvent
          L4_3 = "design"
          L5_3 = {}
          L5_3.event_id = "updateAccount:onlyPassword"
          L6_3 = L0_1
          L6_3 = L6_3.config
          L6_3 = L6_3.fullVersion
          L5_3.area = L6_3
          L3_3(L4_3, L5_3)
        end
    end
    else
      L1_3 = L13_2
      L2_3 = L0_1
      L2_3 = L2_3.localized
      L2_3 = L2_3.get
      L3_3 = "EnterPassword"
      L2_3 = L2_3(L3_3)
      L1_3.text = L2_3
    end
  end
  
  L23_2 = L0_1
  L23_2 = L23_2.newButton
  L24_2 = {}
  L24_2.x = 350
  L24_2.y = 80
  L24_2.width = 62
  L24_2.height = 45
  L24_2.image = "images/gui/login/buttonNext.png"
  L24_2.onRelease = L22_2
  L23_2 = L23_2(L24_2)
  L7_2 = L23_2
  
  function L23_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L10_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L9_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L11_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L14_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L12_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L13_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L18_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L7_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L6_2
    L0_3(L1_3, L2_3)
  end
  
  function L24_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3.m
    L2_3 = L3_2
    L2_3 = L2_3.changeEmail
    L2_3 = L2_3()
    if L1_3 == L2_3 then
      L1_3 = L21_2
      L1_3()
      L1_3 = A0_3.r
      if L1_3 then
        L1_3 = A0_3.r
        if L1_3 == 1 then
          L1_3 = L13_2
          L2_3 = L0_1
          L2_3 = L2_3.localized
          L2_3 = L2_3.get
          L3_3 = "NotValidInput"
          L2_3 = L2_3(L3_3)
          L1_3.text = L2_3
          L1_3 = L0_1
          L1_3 = L1_3.analytics
          L1_3 = L1_3.newEvent
          L2_3 = "design"
          L3_3 = {}
          L3_3.event_id = "updateAccount:password:invalidInputResponse"
          L4_3 = L0_1
          L4_3 = L4_3.config
          L4_3 = L4_3.fullVersion
          L3_3.area = L4_3
          L1_3(L2_3, L3_3)
        else
          L1_3 = A0_3.r
          if L1_3 == 10 then
            L1_3 = L13_2
            L2_3 = L0_1
            L2_3 = L2_3.localized
            L2_3 = L2_3.get
            L3_3 = "NotValidSession"
            L2_3 = L2_3(L3_3)
            L1_3.text = L2_3
            L1_3 = L0_1
            L1_3 = L1_3.analytics
            L1_3 = L1_3.newEvent
            L2_3 = "design"
            L3_3 = {}
            L3_3.event_id = "updateAccount:password:invalidUserResponse"
            L4_3 = L0_1
            L4_3 = L4_3.config
            L4_3 = L4_3.fullVersion
            L3_3.area = L4_3
            L1_3(L2_3, L3_3)
          end
        end
        L1_3 = L19_2
        L2_3 = true
        L1_3(L2_3)
      else
        L1_3 = L13_2
        L2_3 = L0_1
        L2_3 = L2_3.localized
        L2_3 = L2_3.get
        L3_3 = "PasswordUpdated"
        L2_3 = L2_3(L3_3)
        L1_3.text = L2_3
        L1_3 = L0_1
        L1_3 = L1_3.analytics
        L1_3 = L1_3.newEvent
        L2_3 = "design"
        L3_3 = {}
        L3_3.event_id = "updateAccount:password:success"
        L4_3 = L0_1
        L4_3 = L4_3.config
        L4_3 = L4_3.fullVersion
        L3_3.area = L4_3
        L1_3(L2_3, L3_3)
        
        function L1_3()
          local L0_4, L1_4
          L0_4 = L0_1
          L0_4 = L0_4.hideOverlay
          L0_4()
        end
        
        L2_3 = timer
        L2_3 = L2_3.performWithDelay
        L3_3 = 1000
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
      end
    end
  end
  
  function L25_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L10_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L16_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L17_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L26_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L18_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L7_2
    L0_3(L1_3)
    L0_3 = native
    L0_3 = L0_3.setKeyboardFocus
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = L14_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "userInput"
    L3_3 = L14_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L10_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L16_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L17_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L21_2
    L0_3()
  end
  
  L2_1 = L26_2
  L26_2 = L23_2
  L26_2()
  L26_2 = L25_2
  L26_2()
  L26_2 = L0_1
  L26_2 = L26_2.commHttps
  L26_2 = L26_2.setCallback
  L27_2 = L24_2
  L26_2(L27_2)
  L26_2 = isAndroid
  if not L26_2 then
    L26_2 = native
    L26_2 = L26_2.setKeyboardFocus
    L27_2 = L14_2
    L26_2(L27_2)
  end
  L26_2 = L0_1
  L26_2 = L26_2.bouncer
  L26_2 = L26_2.down
  L27_2 = L6_2
  L26_2(L27_2)
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
