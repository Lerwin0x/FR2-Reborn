local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.newScene
L1_1 = L1_1()
L2_1 = nil
L3_1 = nil

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2
  L2_2 = A0_2.view
  L3_2 = require
  L4_2 = "lua.network.httpsMessageFormat"
  L3_2 = L3_2(L4_2)
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L5_2 = nil
  L6_2 = true
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = "images/gui/common/black.png"
  L9_2 = 480
  L10_2 = 320
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 * 0.5
  L7_2.x = L8_2
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 * 0.5
  L7_2.y = L8_2
  L8_2 = display
  L8_2 = L8_2.newImageRect
  L9_2 = "images/gui/login/window.png"
  L10_2 = 350
  L11_2 = 137
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 * 0.5
  L8_2.x = L9_2
  L8_2.y = 66
  L9_2 = nil
  L10_2 = nil
  L11_2 = 25
  L12_2 = isAndroid
  if L12_2 then
    L11_2 = 35
  end
  L12_2 = L0_1
  L12_2 = L12_2.newText
  L13_2 = {}
  L14_2 = L0_1
  L14_2 = L14_2.localized
  L14_2 = L14_2.get
  L15_2 = "Login"
  L14_2 = L14_2(L15_2)
  L13_2.string = L14_2
  L14_2 = L8_2.x
  L13_2.x = L14_2
  L14_2 = L8_2.y
  L14_2 = L14_2 - 44
  L13_2.y = L14_2
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
  L13_2 = L0_1
  L13_2 = L13_2.newText
  L14_2 = {}
  L14_2.string = ""
  L15_2 = L8_2.x
  L14_2.x = L15_2
  L15_2 = L8_2.y
  L15_2 = L15_2 + 48
  L14_2.y = L15_2
  L15_2 = {}
  L16_2 = 1
  L17_2 = 1
  L18_2 = 1
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L14_2.color = L15_2
  L13_2 = L13_2(L14_2)
  L14_2 = L0_1
  L14_2 = L14_2.newText
  L15_2 = {}
  L16_2 = L0_1
  L16_2 = L16_2.localized
  L16_2 = L16_2.get
  L17_2 = "Email"
  L16_2 = L16_2(L17_2)
  L15_2.string = L16_2
  L16_2 = L8_2.x
  L16_2 = L16_2 - 116
  L15_2.x = L16_2
  L16_2 = L8_2.y
  L16_2 = L16_2 - 6
  L15_2.y = L16_2
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
  L17_2 = L0_1
  L17_2 = L17_2.localized
  L17_2 = L17_2.get
  L18_2 = "Password"
  L17_2 = L17_2(L18_2)
  L16_2.string = L17_2
  L17_2 = L8_2.x
  L17_2 = L17_2 - 116
  L16_2.x = L17_2
  L17_2 = L8_2.y
  L17_2 = L17_2 + 26
  L16_2.y = L17_2
  L17_2 = {}
  L18_2 = 1
  L19_2 = 1
  L20_2 = 1
  L17_2[1] = L18_2
  L17_2[2] = L19_2
  L17_2[3] = L20_2
  L16_2.color = L17_2
  L15_2 = L15_2(L16_2)
  
  function L16_2()
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
  
  function L17_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = false
      if L1_3 then
        L1_3 = native
        L1_3 = L1_3.setKeyboardFocus
        L2_3 = nil
        L1_3(L2_3)
      else
        L1_3 = L0_1
        L1_3 = L1_3.hideOverlay
        L1_3()
      end
    end
    L1_3 = true
    return L1_3
  end
  
  function L18_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3.m
    L2_3 = L3_2
    L2_3 = L2_3.loginWithEmail
    L2_3 = L2_3()
    if L1_3 == L2_3 then
      L1_3 = true
      L6_2 = L1_3
      L1_3 = L16_2
      L1_3()
      L1_3 = A0_3.r
      if L1_3 then
        L1_3 = A0_3.r
        if L1_3 == 17 then
          L1_3 = L13_2
          L2_3 = L0_1
          L2_3 = L2_3.localized
          L2_3 = L2_3.get
          L3_3 = "wrong username or password"
          L2_3 = L2_3(L3_3)
          L1_3.text = L2_3
          L1_3 = L0_1
          L1_3 = L1_3.analytics
          L1_3 = L1_3.newEvent
          L2_3 = "design"
          L3_3 = {}
          L3_3.event_id = "continueLogin:invalidEmailPassword"
          L4_3 = L0_1
          L4_3 = L4_3.config
          L4_3 = L4_3.fullVersion
          L3_3.area = L4_3
          L1_3(L2_3, L3_3)
        end
      end
    end
  end
  
  function L19_2(A0_3)
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
  
  function L20_2()
    local L0_3, L1_3, L2_3
    L0_3 = true
    L6_2 = L0_3
    L0_3 = L13_2
    L1_3 = L0_1
    L1_3 = L1_3.localized
    L1_3 = L1_3.get
    L2_3 = "Could not connect to server"
    L1_3 = L1_3(L2_3)
    L0_3.text = L1_3
  end
  
  function L21_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L0_1
    L0_3 = L0_3.validateInput
    L0_3 = L0_3.validateEmail
    L1_3 = L9_2
    L1_3 = L1_3.text
    L0_3, L1_3 = L0_3(L1_3)
    L2_3 = L0_1
    L2_3 = L2_3.validateInput
    L2_3 = L2_3.validatePassword
    L3_3 = L10_2
    L3_3 = L3_3.text
    L2_3, L3_3 = L2_3(L3_3)
    if not L0_3 then
      L4_3 = L13_2
      L4_3.text = L1_3
      L4_3 = L0_1
      L4_3 = L4_3.analytics
      L4_3 = L4_3.newEvent
      L5_3 = "design"
      L6_3 = {}
      L6_3.event_id = "loginUserEmail:invalidEmail"
      L7_3 = L0_1
      L7_3 = L7_3.config
      L7_3 = L7_3.fullVersion
      L6_3.area = L7_3
      L4_3(L5_3, L6_3)
    elseif not L2_3 then
      L4_3 = L13_2
      L4_3.text = L3_3
      L4_3 = L0_1
      L4_3 = L4_3.analytics
      L4_3 = L4_3.newEvent
      L5_3 = "design"
      L6_3 = {}
      L6_3.event_id = "loginUserEmail:invalidPassword"
      L7_3 = L0_1
      L7_3 = L7_3.config
      L7_3 = L7_3.fullVersion
      L6_3.area = L7_3
      L4_3(L5_3, L6_3)
    elseif L0_3 and L2_3 then
      L4_3 = L13_2
      L5_3 = L0_1
      L5_3 = L5_3.localized
      L5_3 = L5_3.get
      L6_3 = "Loading"
      L5_3 = L5_3(L6_3)
      L4_3.text = L5_3
      L4_3 = L0_1
      L4_3 = L4_3.commHttps
      L4_3 = L4_3.loginWithEmail
      L5_3 = L0_3
      L6_3 = L2_3
      L4_3(L5_3, L6_3)
      L4_3 = timer
      L4_3 = L4_3.performWithDelay
      L5_3 = L0_1
      L5_3 = L5_3.config
      L5_3 = L5_3.serverTimeout
      L6_3 = L20_2
      L7_3 = 1
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L5_2 = L4_3
      L4_3 = L0_1
      L4_3 = L4_3.analytics
      L4_3 = L4_3.newEvent
      L5_3 = "design"
      L6_3 = {}
      L6_3.event_id = "continueLogin:attempt"
      L7_3 = L0_1
      L7_3 = L7_3.config
      L7_3 = L7_3.fullVersion
      L6_3.area = L7_3
      L4_3(L5_3, L6_3)
    else
      L4_3 = L13_2
      L5_3 = L0_1
      L5_3 = L5_3.localized
      L5_3 = L5_3.get
      L6_3 = "UsernameAndPassword"
      L5_3 = L5_3(L6_3)
      L4_3.text = L5_3
    end
  end
  
  L22_2 = L0_1
  L22_2 = L22_2.newButton
  L23_2 = {}
  L23_2.image = "images/gui/login/buttonNext.png"
  L23_2.onRelease = L21_2
  L23_2.width = 62
  L23_2.height = 45
  L24_2 = L8_2.x
  L24_2 = L24_2 + 130
  L23_2.x = L24_2
  L24_2 = L8_2.y
  L24_2 = L24_2 + 16
  L23_2.y = L24_2
  L22_2 = L22_2(L23_2)
  
  function L23_2()
    local L0_3, L1_3
    L0_3 = native
    L0_3 = L0_3.setKeyboardFocus
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
  L24_2 = L0_1
  L24_2 = L24_2.newButton
  L25_2 = {}
  L25_2.image = "images/gui/common/buttonClosePopupBrown.png"
  L25_2.onRelease = L23_2
  L25_2.width = 43
  L25_2.height = 38
  L26_2 = L8_2.x
  L26_2 = L26_2 + 158
  L25_2.x = L26_2
  L26_2 = L8_2.y
  L26_2 = L26_2 + -38
  L25_2.y = L26_2
  L24_2 = L24_2(L25_2)
  
  function L25_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = native
    L0_3 = L0_3.setKeyboardFocus
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = {}
    L0_3.isModal = true
    L1_3 = L0_1
    L1_3 = L1_3.showOverlay
    L2_3 = "lua.overlays.forgotPassword"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  
  L26_2 = L0_1
  L26_2 = L26_2.newButton
  L27_2 = {}
  L27_2.image = "images/gui/login/forgotPassword.png"
  L27_2.onRelease = L25_2
  L27_2.width = 43
  L27_2.height = 38
  L28_2 = L8_2.x
  L28_2 = L28_2 + 110
  L27_2.x = L28_2
  L28_2 = L8_2.y
  L28_2 = L28_2 + -40
  L27_2.y = L28_2
  L26_2 = L26_2(L27_2)
  L27_2 = native
  L27_2 = L27_2.newTextField
  L28_2 = display
  L28_2 = L28_2.contentWidth
  L28_2 = L28_2 * 4
  L29_2 = display
  L29_2 = L29_2.contentHeight
  L29_2 = L29_2 * 0.2
  L30_2 = 150
  L31_2 = L11_2
  L27_2 = L27_2(L28_2, L29_2, L30_2, L31_2)
  L9_2 = L27_2
  L9_2.anchorX = 0.5
  L9_2.anchorY = 0.5
  L27_2 = L14_2.x
  L27_2 = L27_2 + 120
  L9_2.x = L27_2
  L27_2 = L14_2.y
  L9_2.y = L27_2
  L9_2.inputType = "email"
  L27_2 = L0_1
  L27_2 = L27_2.validateInput
  L27_2 = L27_2.limitTextField
  L28_2 = 255
  L27_2 = L27_2(L28_2)
  L9_2.userInput = L27_2
  L28_2 = L9_2
  L27_2 = L9_2.addEventListener
  L29_2 = "userInput"
  L30_2 = L9_2.userInput
  L27_2(L28_2, L29_2, L30_2)
  L27_2 = native
  L27_2 = L27_2.newTextField
  L28_2 = display
  L28_2 = L28_2.contentWidth
  L28_2 = L28_2 * 4
  L29_2 = display
  L29_2 = L29_2.contentHeight
  L29_2 = L29_2 * 0.2
  L30_2 = 150
  L31_2 = L11_2
  L27_2 = L27_2(L28_2, L29_2, L30_2, L31_2)
  L10_2 = L27_2
  L10_2.anchorX = 0.5
  L10_2.anchorY = 0.5
  L27_2 = L15_2.x
  L27_2 = L27_2 + 120
  L10_2.x = L27_2
  L27_2 = L15_2.y
  L10_2.y = L27_2
  L10_2.isSecure = true
  L27_2 = L0_1
  L27_2 = L27_2.validateInput
  L27_2 = L27_2.limitTextField
  L28_2 = 15
  L27_2 = L27_2(L28_2)
  L10_2.userInput = L27_2
  L28_2 = L10_2
  L27_2 = L10_2.addEventListener
  L29_2 = "userInput"
  L30_2 = L10_2.userInput
  L27_2(L28_2, L29_2, L30_2)
  
  function L27_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L7_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L8_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L22_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L9_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L10_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L26_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L24_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L12_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L14_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L15_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L13_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L4_2
    L0_3(L1_3, L2_3)
  end
  
  function L28_2(A0_3)
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
  
  function L29_2(A0_3)
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
  
  function L30_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L7_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L28_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L8_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L29_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L31_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L22_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L24_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L26_2
    L0_3(L1_3)
    L0_3 = L16_2
    L0_3()
    L0_3 = L7_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L28_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L8_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L29_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "userInput"
    L3_3 = L9_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L2_1 = L31_2
  L31_2 = L27_2
  L31_2()
  L31_2 = L30_2
  L31_2()
  L31_2 = L0_1
  L31_2 = L31_2.commHttps
  L31_2 = L31_2.setCallback
  L32_2 = L18_2
  L31_2(L32_2)
end

L1_1.create = L4_1

function L4_1(A0_2, A1_2)
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
  L4_2 = A1_2.parent
  if L4_2 then
    L4_2 = A1_2.parent
    L4_2 = L4_2.overlayShow
    if L4_2 then
      L4_2 = A1_2.parent
      L5_2 = L4_2
      L4_2 = L4_2.overlayShow
      L4_2(L5_2)
    end
  end
  L4_2 = L3_2.isOverlay
  L5_2 = true
  L4_2(L5_2)
end

L1_1.show = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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
        L4_2(L5_2)
      end
    end
  end
end

L1_1.hide = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.view
  L3_2 = L2_1
  L3_2()
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
