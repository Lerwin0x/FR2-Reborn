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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
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
  L8_2 = nil
  L9_2 = isAndroid
  if L9_2 then
    L4_2 = 30
  end
  L9_2 = ""
  L10_2 = display
  L10_2 = L10_2.newImageRect
  L11_2 = "images/gui/login/window.png"
  L12_2 = 350
  L13_2 = 137
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L10_2.anchorX = 0.5
  L10_2.anchorY = 0
  L10_2.x = 240
  L10_2.y = 0
  L11_2 = display
  L11_2 = L11_2.newRect
  L12_2 = 0
  L13_2 = 0
  L14_2 = display
  L14_2 = L14_2.contentWidth
  L15_2 = display
  L15_2 = L15_2.contentHeight
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L11_2.anchorX = 0
  L11_2.anchorY = 0
  L13_2 = L11_2
  L12_2 = L11_2.setFillColor
  L14_2 = 0
  L15_2 = 0
  L16_2 = 0
  L17_2 = 0.5882352941176471
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  L11_2.x = 0
  L11_2.y = 0
  L12_2 = L0_1
  L12_2 = L12_2.newText
  L13_2 = {}
  L14_2 = L0_1
  L14_2 = L14_2.localized
  L14_2 = L14_2.get
  L15_2 = "AccountInfo"
  L14_2 = L14_2(L15_2)
  L13_2.string = L14_2
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
  L12_2.x = 240
  L12_2.y = 25
  L13_2 = L0_1
  L13_2 = L13_2.newText
  L14_2 = {}
  L15_2 = L0_1
  L15_2 = L15_2.localized
  L15_2 = L15_2.get
  L16_2 = "Email"
  L15_2 = L15_2(L16_2)
  L14_2.string = L15_2
  L15_2 = {}
  L16_2 = 1
  L17_2 = 1
  L18_2 = 1
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L14_2.color = L15_2
  L13_2 = L13_2(L14_2)
  L13_2.x = 125
  L13_2.y = 62
  L14_2 = L0_1
  L14_2 = L14_2.newText
  L15_2 = {}
  L16_2 = L0_1
  L16_2 = L16_2.localized
  L16_2 = L16_2.get
  L17_2 = "Password"
  L16_2 = L16_2(L17_2)
  L15_2.string = L16_2
  L16_2 = {}
  L17_2 = 1
  L18_2 = 1
  L19_2 = 1
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L16_2[3] = L19_2
  L15_2.color = L16_2
  L14_2 = L14_2(L15_2)
  L14_2.x = 125
  L14_2.y = 98
  L15_2 = L0_1
  L15_2 = L15_2.newText
  L16_2 = {}
  L16_2.string = ""
  L15_2 = L15_2(L16_2)
  L15_2.anchorX = 0.5
  L15_2.anchorY = 0.5
  L15_2.x = 240
  L15_2.y = 122
  L16_2 = native
  L16_2 = L16_2.newTextField
  L17_2 = display
  L17_2 = L17_2.contentWidth
  L17_2 = L17_2 * 4
  L18_2 = display
  L18_2 = L18_2.contentHeight
  L18_2 = L18_2 * 0.2
  L19_2 = 150
  L20_2 = L4_2
  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
  L16_2.anchorX = 0.5
  L16_2.anchorY = 0.5
  L16_2.x = 240
  L17_2 = L13_2.y
  L16_2.y = L17_2
  L16_2.inputType = "email"
  L17_2 = L0_1
  L17_2 = L17_2.validateInput
  L17_2 = L17_2.limitTextField
  L18_2 = 255
  L17_2 = L17_2(L18_2)
  L16_2.userInput = L17_2
  L18_2 = L16_2
  L17_2 = L16_2.addEventListener
  L19_2 = "userInput"
  L20_2 = L16_2.userInput
  L17_2(L18_2, L19_2, L20_2)
  L17_2 = native
  L17_2 = L17_2.newTextField
  L18_2 = display
  L18_2 = L18_2.contentWidth
  L18_2 = L18_2 * 4
  L19_2 = display
  L19_2 = L19_2.contentHeight
  L19_2 = L19_2 * 0.2
  L20_2 = 150
  L21_2 = L4_2
  L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
  L17_2.anchorX = 0.5
  L17_2.anchorY = 0.5
  L17_2.x = 240
  L18_2 = L14_2.y
  L17_2.y = L18_2
  L17_2.isSecure = true
  L18_2 = L0_1
  L18_2 = L18_2.validateInput
  L18_2 = L18_2.limitTextField
  L19_2 = 15
  L18_2 = L18_2(L19_2)
  L17_2.userInput = L18_2
  L19_2 = L17_2
  L18_2 = L17_2.addEventListener
  L20_2 = "userInput"
  L21_2 = L17_2.userInput
  L18_2(L19_2, L20_2, L21_2)
  
  function L18_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
    L0_3 = native
    L0_3 = L0_3.setKeyboardFocus
    L1_3 = nil
    L0_3(L1_3)
  end
  
  function L19_2(A0_3)
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
  
  function L20_2(A0_3)
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
  
  L21_2 = L0_1
  L21_2 = L21_2.newButton
  L22_2 = {}
  L22_2.x = 396
  L22_2.y = 32
  L22_2.width = 43
  L22_2.height = 38
  L22_2.image = "images/gui/common/buttonClosePopupBrown.png"
  L22_2.onRelease = L18_2
  L21_2 = L21_2(L22_2)
  
  function L22_2(A0_3)
    local L1_3
    L1_3 = L7_2
    L1_3.isVisible = A0_3
  end
  
  function L23_2()
    local L0_3, L1_3, L2_3
    L0_3 = L15_2
    L1_3 = L0_1
    L1_3 = L1_3.localized
    L1_3 = L1_3.get
    L2_3 = "NoResponse"
    L1_3 = L1_3(L2_3)
    L0_3.text = L1_3
    L0_3 = L22_2
    L1_3 = true
    L0_3(L1_3)
  end
  
  function L24_2()
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
  
  function L25_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L16_2
    L0_3 = L0_3.text
    L1_3 = L17_2
    L1_3 = L1_3.text
    if L0_3 then
      L2_3 = string
      L2_3 = L2_3.len
      L3_3 = L0_3
      L2_3 = L2_3(L3_3)
      if 1 < L2_3 and L1_3 then
        L2_3 = string
        L2_3 = L2_3.len
        L3_3 = L1_3
        L2_3 = L2_3(L3_3)
        if 1 < L2_3 then
          L2_3 = L0_1
          L2_3 = L2_3.validateInput
          L2_3 = L2_3.validateEmail
          L3_3 = L0_3
          L2_3, L3_3 = L2_3(L3_3)
          L4_3 = L0_1
          L4_3 = L4_3.validateInput
          L4_3 = L4_3.validatePassword
          L5_3 = L1_3
          L4_3, L5_3 = L4_3(L5_3)
          if not L4_3 then
            L6_3 = L15_2
            L7_3 = L0_1
            L7_3 = L7_3.localized
            L7_3 = L7_3.get
            L8_3 = L5_3
            L7_3 = L7_3(L8_3)
            L6_3.text = L7_3
            L6_3 = L0_1
            L6_3 = L6_3.analytics
            L6_3 = L6_3.newEvent
            L7_3 = "design"
            L8_3 = {}
            L8_3.event_id = "updateAccount:emailAndPassword:invalidPassword"
            L9_3 = L0_1
            L9_3 = L9_3.config
            L9_3 = L9_3.fullVersion
            L8_3.area = L9_3
            L6_3(L7_3, L8_3)
          elseif not L2_3 then
            L6_3 = L15_2
            L7_3 = L0_1
            L7_3 = L7_3.localized
            L7_3 = L7_3.get
            L8_3 = L3_3
            L7_3 = L7_3(L8_3)
            L6_3.text = L7_3
            L6_3 = L0_1
            L6_3 = L6_3.analytics
            L6_3 = L6_3.newEvent
            L7_3 = "design"
            L8_3 = {}
            L8_3.event_id = "updateAccount:emailAndPassword:invalidEmail"
            L9_3 = L0_1
            L9_3 = L9_3.config
            L9_3 = L9_3.fullVersion
            L8_3.area = L9_3
            L6_3(L7_3, L8_3)
          else
            L6_3 = L15_2
            L7_3 = L0_1
            L7_3 = L7_3.localized
            L7_3 = L7_3.get
            L8_3 = "SettingEmailAndPassword"
            L7_3 = L7_3(L8_3)
            L6_3.text = L7_3
            L6_3 = L0_1
            L6_3 = L6_3.commHttps
            L6_3 = L6_3.changeEmail
            L7_3 = L2_3
            L8_3 = L4_3
            L6_3(L7_3, L8_3)
            L9_2 = L2_3
            L6_3 = L24_2
            L6_3()
            L6_3 = timer
            L6_3 = L6_3.performWithDelay
            L7_3 = L0_1
            L7_3 = L7_3.config
            L7_3 = L7_3.serverTimeout
            L8_3 = L23_2
            L9_3 = 1
            L6_3 = L6_3(L7_3, L8_3, L9_3)
            L5_2 = L6_3
            L6_3 = L22_2
            L7_3 = false
            L6_3(L7_3)
            L6_3 = L0_1
            L6_3 = L6_3.analytics
            L6_3 = L6_3.newEvent
            L7_3 = "design"
            L8_3 = {}
            L8_3.event_id = "updateAccount:emailAndPassword:attempt"
            L9_3 = L0_1
            L9_3 = L9_3.config
            L9_3 = L9_3.fullVersion
            L8_3.area = L9_3
            L6_3(L7_3, L8_3)
          end
          L6_3 = 3
          L8_2 = L6_3
      end
    end
    else
      if L0_3 then
        L2_3 = string
        L2_3 = L2_3.len
        L3_3 = L0_3
        L2_3 = L2_3(L3_3)
        if 1 < L2_3 then
          L2_3 = L0_1
          L2_3 = L2_3.validateInput
          L2_3 = L2_3.validateEmail
          L3_3 = L0_3
          L2_3, L3_3 = L2_3(L3_3)
          if not L2_3 then
            L4_3 = L15_2
            L5_3 = L0_1
            L5_3 = L5_3.localized
            L5_3 = L5_3.get
            L6_3 = L3_3
            L5_3 = L5_3(L6_3)
            L4_3.text = L5_3
            L4_3 = L0_1
            L4_3 = L4_3.analytics
            L4_3 = L4_3.newEvent
            L5_3 = "design"
            L6_3 = {}
            L6_3.event_id = "updateAccount:email:invalidEmail"
            L7_3 = L0_1
            L7_3 = L7_3.config
            L7_3 = L7_3.fullVersion
            L6_3.area = L7_3
            L4_3(L5_3, L6_3)
          else
            L4_3 = L15_2
            L5_3 = L0_1
            L5_3 = L5_3.localized
            L5_3 = L5_3.get
            L6_3 = "EnterPassword"
            L5_3 = L5_3(L6_3)
            L4_3.text = L5_3
            L4_3 = L0_1
            L4_3 = L4_3.analytics
            L4_3 = L4_3.newEvent
            L5_3 = "design"
            L6_3 = {}
            L6_3.event_id = "updateAccount:onlyEmail"
            L7_3 = L0_1
            L7_3 = L7_3.config
            L7_3 = L7_3.fullVersion
            L6_3.area = L7_3
            L4_3(L5_3, L6_3)
          end
          L4_3 = 1
          L8_2 = L4_3
      end
      else
        if L1_3 then
          L2_3 = string
          L2_3 = L2_3.len
          L3_3 = L1_3
          L2_3 = L2_3(L3_3)
          if 1 < L2_3 then
            L2_3 = L0_1
            L2_3 = L2_3.validateInput
            L2_3 = L2_3.validatePassword
            L3_3 = L1_3
            L2_3, L3_3 = L2_3(L3_3)
            if not L2_3 then
              L4_3 = L15_2
              L5_3 = L0_1
              L5_3 = L5_3.localized
              L5_3 = L5_3.get
              L6_3 = L3_3
              L5_3 = L5_3(L6_3)
              L4_3.text = L5_3
              L4_3 = L0_1
              L4_3 = L4_3.analytics
              L4_3 = L4_3.newEvent
              L5_3 = "design"
              L6_3 = {}
              L6_3.event_id = "updateAccount:password:invalidPassword"
              L7_3 = L0_1
              L7_3 = L7_3.config
              L7_3 = L7_3.fullVersion
              L6_3.area = L7_3
              L4_3(L5_3, L6_3)
            else
              L4_3 = L15_2
              L5_3 = L0_1
              L5_3 = L5_3.localized
              L5_3 = L5_3.get
              L6_3 = "PleaseEnterEmail"
              L5_3 = L5_3(L6_3)
              L4_3.text = L5_3
              L4_3 = L0_1
              L4_3 = L4_3.analytics
              L4_3 = L4_3.newEvent
              L5_3 = "design"
              L6_3 = {}
              L6_3.event_id = "updateAccount:onlyPassword"
              L7_3 = L0_1
              L7_3 = L7_3.config
              L7_3 = L7_3.fullVersion
              L6_3.area = L7_3
              L4_3(L5_3, L6_3)
            end
            L4_3 = 2
            L8_2 = L4_3
        end
        else
          L2_3 = L15_2
          L3_3 = L0_1
          L3_3 = L3_3.localized
          L3_3 = L3_3.get
          L4_3 = "EnterEmailAndPassword"
          L3_3 = L3_3(L4_3)
          L2_3.text = L3_3
        end
      end
    end
  end
  
  L26_2 = L0_1
  L26_2 = L26_2.newButton
  L27_2 = {}
  L27_2.x = 350
  L27_2.y = 80
  L27_2.width = 62
  L27_2.height = 45
  L27_2.image = "images/gui/login/buttonNext.png"
  L27_2.onRelease = L25_2
  L26_2 = L26_2(L27_2)
  L7_2 = L26_2
  
  function L26_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L11_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L10_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L12_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L16_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L17_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L14_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L13_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L15_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L21_2
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
  
  function L27_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3.m
    L2_3 = L3_2
    L2_3 = L2_3.changeEmail
    L2_3 = L2_3()
    if L1_3 == L2_3 then
      L1_3 = L24_2
      L1_3()
      L1_3 = A0_3.r
      if L1_3 then
        L1_3 = A0_3.r
        if L1_3 == 1 then
          L1_3 = L15_2
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
          L3_3.event_id = "updateAccount:email:invalidInputResponse"
          L4_3 = L0_1
          L4_3 = L4_3.config
          L4_3 = L4_3.fullVersion
          L3_3.area = L4_3
          L1_3(L2_3, L3_3)
        else
          L1_3 = A0_3.r
          if L1_3 == 10 then
            L1_3 = L15_2
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
            L3_3.event_id = "updateAccount:email:invalidUserResponse"
            L4_3 = L0_1
            L4_3 = L4_3.config
            L4_3 = L4_3.fullVersion
            L3_3.area = L4_3
            L1_3(L2_3, L3_3)
          else
            L1_3 = A0_3.r
            if L1_3 == 11 then
              L1_3 = L15_2
              L2_3 = L0_1
              L2_3 = L2_3.localized
              L2_3 = L2_3.get
              L3_3 = "This email is already in use."
              L2_3 = L2_3(L3_3)
              L1_3.text = L2_3
              L1_3 = L0_1
              L1_3 = L1_3.analytics
              L1_3 = L1_3.newEvent
              L2_3 = "design"
              L3_3 = {}
              L3_3.event_id = "updateAccount:email:emailAlreadyExists"
              L4_3 = L0_1
              L4_3 = L4_3.config
              L4_3 = L4_3.fullVersion
              L3_3.area = L4_3
              L1_3(L2_3, L3_3)
            end
          end
        end
        L1_3 = L22_2
        L2_3 = true
        L1_3(L2_3)
      else
        L1_3 = L8_2
        if L1_3 == 1 then
          L1_3 = L15_2
          L2_3 = L0_1
          L2_3 = L2_3.localized
          L2_3 = L2_3.get
          L3_3 = "EmailUpdated"
          L2_3 = L2_3(L3_3)
          L1_3.text = L2_3
          L1_3 = L0_1
          L1_3 = L1_3.data
          L1_3 = L1_3.playerInfo
          L2_3 = L9_2
          L1_3.email = L2_3
          L1_3 = L0_1
          L1_3 = L1_3.analytics
          L1_3 = L1_3.newEvent
          L2_3 = "design"
          L3_3 = {}
          L3_3.event_id = "updateAccount:email:success"
          L4_3 = L0_1
          L4_3 = L4_3.config
          L4_3 = L4_3.fullVersion
          L3_3.area = L4_3
          L1_3(L2_3, L3_3)
        else
          L1_3 = L8_2
          if L1_3 == 2 then
            L1_3 = L15_2
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
          else
            L1_3 = L8_2
            if L1_3 == 3 then
              L1_3 = L15_2
              L2_3 = L0_1
              L2_3 = L2_3.localized
              L2_3 = L2_3.get
              L3_3 = "AccountCreated"
              L2_3 = L2_3(L3_3)
              L1_3.text = L2_3
              L1_3 = L0_1
              L1_3 = L1_3.data
              L1_3 = L1_3.playerInfo
              L2_3 = L9_2
              L1_3.email = L2_3
              L1_3 = L0_1
              L1_3 = L1_3.analytics
              L1_3 = L1_3.newEvent
              L2_3 = "design"
              L3_3 = {}
              L3_3.event_id = "updateAccount:emailAndPassword:success"
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
      end
    end
  end
  
  function L28_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L19_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L10_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L20_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L29_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L21_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L7_2
    L0_3(L1_3)
    L0_3 = native
    L0_3 = L0_3.setKeyboardFocus
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = L16_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "userInput"
    L3_3 = L16_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L17_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "userInput"
    L3_3 = L17_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L19_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L10_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L20_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L24_2
    L0_3()
  end
  
  L2_1 = L29_2
  L29_2 = L26_2
  L29_2()
  L29_2 = L28_2
  L29_2()
  L29_2 = L0_1
  L29_2 = L29_2.commHttps
  L29_2 = L29_2.setCallback
  L30_2 = L27_2
  L29_2(L30_2)
  L29_2 = isAndroid
  if not L29_2 then
    L29_2 = native
    L29_2 = L29_2.setKeyboardFocus
    L30_2 = L16_2
    L29_2(L30_2)
  end
  L29_2 = L0_1
  L29_2 = L29_2.bouncer
  L29_2 = L29_2.down
  L30_2 = L6_2
  L29_2(L30_2)
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
    L3_2 = A1_2.parent
    if L3_2 then
      L3_2 = A1_2.parent
      L3_2 = L3_2.overlayEnded
      if L3_2 then
        L3_2 = A1_2.parent
        L4_2 = L3_2
        L3_2 = L3_2.overlayEnded
        L3_2(L4_2)
      end
    end
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
