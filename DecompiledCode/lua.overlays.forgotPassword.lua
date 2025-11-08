local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.newScene
L1_1 = L1_1()
L2_1 = nil
L3_1 = nil

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
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
  L10_2 = 25
  L11_2 = isAndroid
  if L11_2 then
    L10_2 = 35
  end
  L11_2 = L0_1
  L11_2 = L11_2.newText
  L12_2 = {}
  L13_2 = L0_1
  L13_2 = L13_2.localized
  L13_2 = L13_2.get
  L14_2 = "ForgotPassword"
  L13_2 = L13_2(L14_2)
  L12_2.string = L13_2
  L13_2 = L8_2.x
  L12_2.x = L13_2
  L13_2 = L8_2.y
  L13_2 = L13_2 - 44
  L12_2.y = L13_2
  L12_2.size = 20
  L13_2 = {}
  L14_2 = 1
  L15_2 = 1
  L16_2 = 1
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L12_2.color = L13_2
  L11_2 = L11_2(L12_2)
  L12_2 = L0_1
  L12_2 = L12_2.newText
  L13_2 = {}
  L13_2.string = ""
  L14_2 = L8_2.x
  L13_2.x = L14_2
  L14_2 = L8_2.y
  L14_2 = L14_2 + 50
  L13_2.y = L14_2
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
  L15_2 = L0_1
  L15_2 = L15_2.localized
  L15_2 = L15_2.get
  L16_2 = "Email"
  L15_2 = L15_2(L16_2)
  L14_2.string = L15_2
  L15_2 = L8_2.x
  L15_2 = L15_2 - 116
  L14_2.x = L15_2
  L15_2 = L8_2.y
  L15_2 = L15_2 + 20
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
  L17_2 = "ForgotPasswordHelp"
  L16_2 = L16_2(L17_2)
  L15_2.string = L16_2
  L16_2 = L8_2.x
  L15_2.x = L16_2
  L16_2 = L8_2.y
  L16_2 = L16_2 - 16
  L15_2.y = L16_2
  L16_2 = {}
  L17_2 = 1
  L18_2 = 1
  L19_2 = 1
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L16_2[3] = L19_2
  L15_2.color = L16_2
  L15_2.size = 14
  L14_2 = L14_2(L15_2)
  
  function L15_2()
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
  
  function L16_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.m
    L2_3 = L3_2
    L2_3 = L2_3.forgotPassword
    L2_3 = L2_3()
    if L1_3 == L2_3 then
      L1_3 = true
      L6_2 = L1_3
      L1_3 = L15_2
      L1_3()
      L1_3 = A0_3.r
      if L1_3 then
        L1_3 = A0_3.r
        if L1_3 == 76 then
          L1_3 = L12_2
          L2_3 = L0_1
          L2_3 = L2_3.localized
          L2_3 = L2_3.get
          L3_3 = "No account with that email. Please check your spelling."
          L2_3 = L2_3(L3_3)
          L1_3.text = L2_3
        else
          L1_3 = L12_2
          L2_3 = L0_1
          L2_3 = L2_3.localized
          L2_3 = L2_3.get
          L3_3 = "ErrorTryLater"
          L2_3 = L2_3(L3_3)
          L1_3.text = L2_3
        end
        return
      else
        L1_3 = L12_2
        L2_3 = L0_1
        L2_3 = L2_3.localized
        L2_3 = L2_3.get
        L3_3 = "ForgotPasswordHelpSuccess"
        L2_3 = L2_3(L3_3)
        L1_3.text = L2_3
      end
    end
  end
  
  function L17_2()
    local L0_3, L1_3, L2_3
    L0_3 = true
    L6_2 = L0_3
    L0_3 = L12_2
    L1_3 = L0_1
    L1_3 = L1_3.localized
    L1_3 = L1_3.get
    L2_3 = "Could not connect to server"
    L1_3 = L1_3(L2_3)
    L0_3.text = L1_3
  end
  
  function L18_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L6_2
    if not L0_3 then
      return
    end
    L0_3 = L0_1
    L0_3 = L0_3.validateInput
    L0_3 = L0_3.validateEmail
    L1_3 = L9_2
    L1_3 = L1_3.text
    L0_3, L1_3 = L0_3(L1_3)
    if not L0_3 then
      L2_3 = print
      L3_3 = "nameError "
      L4_3 = nameError
      L2_3(L3_3, L4_3)
      L2_3 = L12_2
      L2_3.text = L1_3
      L2_3 = L0_1
      L2_3 = L2_3.analytics
      L2_3 = L2_3.newEvent
      L3_3 = "design"
      L4_3 = {}
      L4_3.event_id = "forgotPassword:invalidEmail"
      L5_3 = L0_1
      L5_3 = L5_3.config
      L5_3 = L5_3.fullVersion
      L4_3.area = L5_3
      L2_3(L3_3, L4_3)
    else
      L2_3 = L0_1
      L2_3 = L2_3.commHttps
      L2_3 = L2_3.forgotPassword
      L3_3 = L0_3
      L2_3(L3_3)
      L2_3 = L0_1
      L2_3 = L2_3.analytics
      L2_3 = L2_3.newEvent
      L3_3 = "design"
      L4_3 = {}
      L4_3.event_id = "forgotPassword:attempt"
      L5_3 = L0_1
      L5_3 = L5_3.config
      L5_3 = L5_3.fullVersion
      L4_3.area = L5_3
      L2_3(L3_3, L4_3)
      L2_3 = L12_2
      L3_3 = L0_1
      L3_3 = L3_3.localized
      L3_3 = L3_3.get
      L4_3 = "Loading"
      L3_3 = L3_3(L4_3)
      L2_3.text = L3_3
      L2_3 = timer
      L2_3 = L2_3.performWithDelay
      L3_3 = L0_1
      L3_3 = L3_3.config
      L3_3 = L3_3.serverTimeout
      L4_3 = L17_2
      L2_3 = L2_3(L3_3, L4_3)
      L5_2 = L2_3
      L2_3 = false
      L6_2 = L2_3
    end
  end
  
  L19_2 = L0_1
  L19_2 = L19_2.newButton
  L20_2 = {}
  L20_2.image = "images/gui/login/buttonNext.png"
  L20_2.onRelease = L18_2
  L20_2.width = 62
  L20_2.height = 45
  L21_2 = L8_2.x
  L21_2 = L21_2 + 130
  L20_2.x = L21_2
  L21_2 = L8_2.y
  L21_2 = L21_2 + 16
  L20_2.y = L21_2
  L19_2 = L19_2(L20_2)
  
  function L20_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
  L21_2 = L0_1
  L21_2 = L21_2.newButton
  L22_2 = {}
  L22_2.image = "images/gui/common/buttonClosePopupBrown.png"
  L22_2.onRelease = L20_2
  L22_2.width = 43
  L22_2.height = 38
  L23_2 = L8_2.x
  L23_2 = L23_2 + 158
  L22_2.x = L23_2
  L23_2 = L8_2.y
  L23_2 = L23_2 + -38
  L22_2.y = L23_2
  L21_2 = L21_2(L22_2)
  L22_2 = native
  L22_2 = L22_2.newTextField
  L23_2 = display
  L23_2 = L23_2.contentWidth
  L23_2 = L23_2 * 4
  L24_2 = display
  L24_2 = L24_2.contentHeight
  L24_2 = L24_2 * 0.2
  L25_2 = 150
  L26_2 = L10_2
  L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2)
  L9_2 = L22_2
  L9_2.anchorX = 0.5
  L9_2.anchorY = 0.5
  L22_2 = L13_2.x
  L22_2 = L22_2 + 120
  L9_2.x = L22_2
  L22_2 = L13_2.y
  L9_2.y = L22_2
  L22_2 = L0_1
  L22_2 = L22_2.validateInput
  L22_2 = L22_2.limitTextField
  L23_2 = 255
  L22_2 = L22_2(L23_2)
  L9_2.userInput = L22_2
  L23_2 = L9_2
  L22_2 = L9_2.addEventListener
  L24_2 = "userInput"
  L25_2 = L9_2.userInput
  L22_2(L23_2, L24_2, L25_2)
  
  function L22_2(A0_3)
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
  
  function L23_2(A0_3)
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
  
  function L24_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L7_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L22_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L8_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L23_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L25_2()
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
    L2_3 = L19_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L21_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L13_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L14_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L9_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L12_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L11_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L4_2
    L0_3(L1_3, L2_3)
  end
  
  function L26_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L19_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L21_2
    L0_3(L1_3)
    L0_3 = native
    L0_3 = L0_3.setKeyboardFocus
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = L15_2
    L0_3()
    L0_3 = L7_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L22_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L8_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L23_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "userInput"
    L3_3 = L9_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L2_1 = L26_2
  L26_2 = L25_2
  L26_2()
  L26_2 = L24_2
  L26_2()
  L26_2 = isAndroid
  if not L26_2 then
    L26_2 = native
    L26_2 = L26_2.setKeyboardFocus
    L27_2 = L9_2
    L26_2(L27_2)
  end
  L26_2 = L0_1
  L26_2 = L26_2.commHttps
  L26_2 = L26_2.setCallback
  L27_2 = L16_2
  L26_2(L27_2)
  L26_2 = L0_1
  L26_2 = L26_2.bouncer
  L26_2 = L26_2.down
  L27_2 = L4_2
  L26_2(L27_2)
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
