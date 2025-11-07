local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "lua.modules.assetLoader"
L1_1 = L1_1(L2_1)
L2_1 = L0_1.newScene
L2_1 = L2_1()
L3_1 = require
L4_1 = "lua.network.httpsMessageFormat"
L3_1 = L3_1(L4_1)
L4_1 = nil
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = nil
L10_1 = false
L11_1 = nil
L12_1 = nil
L13_1 = true
L14_1 = nil

function L15_1()
  local L0_2, L1_2
end

function L16_1()
  local L0_2, L1_2
end

function L17_1(A0_2)
  local L1_2
  L1_2 = A0_2.phase
  if L1_2 == "ended" then
  end
  L1_2 = true
  return L1_2
end

function L18_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L8_1
  if L0_2 then
    L0_2 = L8_1
    L1_2 = L0_2
    L0_2 = L0_2.removeEventListener
    L2_2 = "touch"
    L3_2 = L17_1
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = L8_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L8_1 = L0_2
  end
  L0_2 = L11_1
  if L0_2 then
    L0_2 = L11_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L11_1 = L0_2
  end
  L0_2 = L9_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L9_1
    L0_2(L1_2)
  end
  L0_2 = L16_1
  if L0_2 then
    L0_2 = L16_1
    L1_2 = true
    L0_2(L1_2)
  end
  L0_2 = true
  L10_1 = L0_2
end

function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L8_1
  if L1_2 then
    L1_2 = L18_1
    L1_2()
  end
  L1_2 = display
  L1_2 = L1_2.newRect
  L2_2 = 0
  L3_2 = 0
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L5_2 = display
  L5_2 = L5_2.contentHeight
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L8_1 = L1_2
  L1_2 = L8_1
  L1_2.anchorX = 0
  L1_2 = L8_1
  L1_2.anchorY = 0
  L1_2 = L8_1
  L2_2 = L1_2
  L1_2 = L1_2.setFillColor
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0.5882352941176471
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.insert
  L3_2 = L8_1
  L1_2(L2_2, L3_2)
  L1_2 = L8_1
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = "touch"
  L4_2 = L17_1
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
  L11_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.insert
  L3_2 = L11_1
  L1_2(L2_2, L3_2)
  L1_2 = L9_1
  if L1_2 then
    L1_2 = timer
    L1_2 = L1_2.cancel
    L2_2 = L9_1
    L1_2(L2_2)
  end
  L1_2 = L16_1
  if L1_2 then
    L1_2 = L16_1
    L2_2 = false
    L1_2(L2_2)
  end
  L1_2 = false
  L10_1 = L1_2
  L1_2 = timer
  L1_2 = L1_2.performWithDelay
  L2_2 = 10000
  L3_2 = L18_1
  L1_2 = L1_2(L2_2, L3_2)
  L9_1 = L1_2
end

function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.type
  if L1_2 == "applicationSuspend" then
    L1_2 = print
    L2_2 = "Application suspend"
    L1_2(L2_2)
    L1_2 = L0_1
    L1_2 = L1_2.gameNetwork
    if L1_2 then
      L1_2 = L0_1
      L1_2 = L1_2.gameNetwork
      L1_2 = L1_2.refreshSuspendTimer
      L1_2()
    end
  else
    L1_2 = A0_2.type
    if L1_2 == "applicationResume" then
      L1_2 = print
      L2_2 = "Application resumed"
      L1_2(L2_2)
      L1_2 = L0_1
      L1_2 = L1_2.gameNetwork
      if L1_2 then
        L1_2 = L0_1
        L1_2 = L1_2.gameNetwork
        L1_2 = L1_2.canRetryStartGameNetwork
        L1_2 = L1_2()
        if L1_2 then
          L1_2 = L7_1
          if L1_2 then
            L1_2 = L7_1
            L1_2()
          end
        end
      end
    end
  end
end

function L21_1()
  local L0_2, L1_2
  L0_2 = L14_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L14_1
    L0_2(L1_2)
    L0_2 = nil
    L14_1 = L0_2
  end
end

function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L2_2 = A0_2.view
  L3_2 = L0_1
  L3_2.cheater = false
  L3_2 = true
  L13_1 = L3_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L4_2 = L0_1
  L4_2 = L4_2.backgrounds
  L4_2 = L4_2.getBlurredBackground
  L4_2 = L4_2()
  L6_2 = L2_2
  L5_2 = L2_2.insert
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = nil
  L6_2 = 25
  L7_2 = isAndroid
  if L7_2 then
    L6_2 = 35
  end
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = "images/gui/login/window2.png"
  L9_2 = 219
  L10_2 = 92
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2.x
  L8_2 = L8_2 + 10
  L7_2.x = L8_2
  L8_2 = L4_2.y
  L8_2 = L8_2 + 60
  L7_2.y = L8_2
  L8_2 = L0_1
  L8_2 = L8_2.newText
  L9_2 = {}
  L10_2 = L0_1
  L10_2 = L10_2.localized
  L10_2 = L10_2.get
  L11_2 = "Choose a Username"
  L10_2 = L10_2(L11_2)
  L9_2.string = L10_2
  L10_2 = L7_2.x
  L10_2 = L10_2 - 82
  L9_2.x = L10_2
  L10_2 = L7_2.y
  L10_2 = L10_2 - 30
  L9_2.y = L10_2
  L9_2.ax = 0
  L9_2.ay = 0.5
  L10_2 = {}
  L11_2 = 1
  L12_2 = 1
  L13_2 = 1
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L9_2.color = L10_2
  L8_2 = L8_2(L9_2)
  L9_2 = L0_1
  L9_2 = L9_2.newText
  L10_2 = {}
  L10_2.string = "(You can change this later)"
  L10_2.size = 14
  L11_2 = L8_2.x
  L10_2.x = L11_2
  L11_2 = L8_2.y
  L11_2 = L11_2 + 60
  L10_2.y = L11_2
  L10_2.ax = 0
  L10_2.ay = 0.5
  L11_2 = L0_1
  L11_2 = L11_2.colors
  L11_2 = L11_2.black
  L10_2.color = L11_2
  L9_2 = L9_2(L10_2)
  
  function L10_2(A0_3)
    local L1_3
    L1_3 = L9_2
    L1_3.text = A0_3
  end
  
  L15_1 = L10_2
  
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = true
    L13_1 = L0_3
    L0_3 = L15_1
    L1_3 = L0_1
    L1_3 = L1_3.localized
    L1_3 = L1_3.get
    L2_3 = "Could not connect to server"
    L1_3, L2_3 = L1_3(L2_3)
    L0_3(L1_3, L2_3)
  end
  
  function L11_2(A0_3)
    local L1_3
    L1_3 = L3_2
    L1_3.isVisible = A0_3
    L1_3 = L5_2
    L1_3.isVisible = A0_3
  end
  
  L16_1 = L11_2
  
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L0_1
    L1_3 = L1_3.analytics
    L1_3 = L1_3.addDesignEvent
    L2_3 = "Onboarding:StartScreen:GoToLogin"
    L1_3(L2_3)
    L1_3 = L16_1
    L2_3 = false
    L1_3(L2_3)
    L1_3 = {}
    L1_3.isModal = true
    L2_3 = L0_1
    L2_3 = L2_3.showOverlay
    L3_3 = "lua.overlays.loginUser"
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
  end
  
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L7_1
    if L1_3 then
      L1_3 = isAndroid
      if L1_3 then
        L1_3 = true
        L2_3 = L7_1
        L3_3 = L1_3
        L2_3(L3_3)
        L2_3 = L16_1
        L3_3 = false
        L2_3(L3_3)
      end
    end
  end
  
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L13_1
    if not L0_3 then
      return
    end
    L0_3 = L0_1
    L0_3 = L0_3.validateInput
    L0_3 = L0_3.validateUsername
    L1_3 = L5_2
    L1_3 = L1_3.text
    L0_3, L1_3 = L0_3(L1_3)
    if not L0_3 then
      L2_3 = print
      L3_3 = "nameError "
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
      L2_3 = L15_1
      L3_3 = L1_3
      L2_3(L3_3)
      L2_3 = L0_1
      L2_3 = L2_3.analytics
      L2_3 = L2_3.addDesignEvent
      L3_3 = "Onboarding:CreateUser:Validate:NameError"
      L2_3(L3_3)
    else
      L2_3 = L0_1
      L2_3 = L2_3.commHttps
      L2_3 = L2_3.sendRegisterMessage
      L3_3 = L0_3
      L2_3(L3_3)
      L2_3 = L0_1
      L2_3 = L2_3.analytics
      L2_3 = L2_3.addDesignEvent
      L3_3 = "Onboarding:CreateUser:Validate:RegisterSent"
      L2_3(L3_3)
      L2_3 = L15_1
      L3_3 = L0_1
      L3_3 = L3_3.localized
      L3_3 = L3_3.get
      L4_3 = "Loading"
      L3_3, L4_3 = L3_3(L4_3)
      L2_3(L3_3, L4_3)
      L2_3 = timer
      L2_3 = L2_3.performWithDelay
      L3_3 = L0_1
      L3_3 = L3_3.config
      L3_3 = L3_3.serverTimeout
      L4_3 = L10_2
      L2_3 = L2_3(L3_3, L4_3)
      L14_1 = L2_3
      L2_3 = false
      L13_1 = L2_3
    end
  end
  
  L14_2 = display
  L14_2 = L14_2.newImageRect
  L15_2 = "images/gui/common/logo.png"
  L16_2 = 224
  L17_2 = 135
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L15_2 = display
  L15_2 = L15_2.contentWidth
  L15_2 = L15_2 * 0.5
  L14_2.x = L15_2
  L15_2 = display
  L15_2 = L15_2.contentHeight
  L15_2 = L15_2 * 0.32
  L14_2.y = L15_2
  L16_2 = L2_2
  L15_2 = L2_2.insert
  L17_2 = L14_2
  L15_2(L16_2, L17_2)
  L15_2 = L0_1
  L15_2 = L15_2.newButton
  L16_2 = {}
  L16_2.image = "images/gui/login/buttonNextLogin.png"
  L16_2.onRelease = L13_2
  L16_2.width = 77
  L16_2.height = 43
  L17_2 = L8_2.x
  L17_2 = L17_2 + 120
  L16_2.x = L17_2
  L17_2 = L8_2.y
  L17_2 = L17_2 + 32
  L16_2.y = L17_2
  L15_2 = L15_2(L16_2)
  L16_2 = L0_1
  L16_2 = L16_2.newButton
  L17_2 = {}
  L17_2.image = "images/gui/login/login.png"
  L17_2.onRelease = L11_2
  L17_2.width = 40
  L17_2.height = 33
  L18_2 = display
  L18_2 = L18_2.contentWidth
  L18_2 = L18_2 - 30
  L17_2.x = L18_2
  L17_2.y = 25
  L16_2 = L16_2(L17_2)
  L17_2 = L0_1
  L17_2 = L17_2.newButton
  L18_2 = {}
  L18_2.image = "images/gui/challenges/buttonPlayServices.png"
  L18_2.onRelease = L12_2
  L18_2.width = 35
  L18_2.height = 35
  L19_2 = display
  L19_2 = L19_2.contentWidth
  L19_2 = L19_2 - 80
  L18_2.x = L19_2
  L18_2.y = 25
  L17_2 = L17_2(L18_2)
  L12_1 = L17_2
  L17_2 = L12_1
  L17_2.isVisible = false
  
  function L17_2()
    local L0_3, L1_3
    L0_3 = L14_2
    if L0_3 then
      L0_3 = transition
      L0_3 = L0_3.cancel
      L1_3 = L14_2
      L0_3(L1_3)
    end
    L0_3 = L3_2
    if L0_3 then
      L0_3 = transition
      L0_3 = L0_3.cancel
      L1_3 = L3_2
      L0_3(L1_3)
    end
  end
  
  function L18_2()
    local L0_3, L1_3
    L0_3 = L14_2
    L1_3 = display
    L1_3 = L1_3.contentWidth
    L1_3 = L1_3 * 0.5
    L1_3 = L1_3 - 170
    L0_3.x = L1_3
    L0_3 = L14_2
    L0_3.xScale = 0.6
    L0_3 = L14_2
    L0_3.yScale = 0.6
    L0_3 = L15_2
    L0_3.x = 100
    L0_3 = L3_2
    L0_3.x = 0
    L0_3 = L3_2
    L0_3.y = -116
  end
  
  function L19_2()
    local L0_3, L1_3
    L0_3 = L14_2
    L1_3 = display
    L1_3 = L1_3.contentWidth
    L1_3 = L1_3 * 0.5
    L0_3.x = L1_3
    L0_3 = L14_2
    L0_3.xScale = 1
    L0_3 = L14_2
    L0_3.yScale = 1
    L0_3 = L15_2
    L0_3.x = -50
    L0_3 = L3_2
    L0_3.x = 0
    L0_3 = L3_2
    L0_3.y = 0
  end
  
  function L20_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.analytics
    L0_3 = L0_3.addDesignEvent
    L1_3 = "Onboarding:CreateUser:DidFocusChooseUsername"
    L0_3(L1_3)
    L0_3 = L17_2
    L0_3()
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L14_2
    L2_3 = {}
    L2_3.time = 200
    L3_3 = display
    L3_3 = L3_3.contentWidth
    L3_3 = L3_3 * 0.5
    L3_3 = L3_3 - 170
    L2_3.x = L3_3
    L2_3.xScale = 0.6
    L2_3.yScale = 0.6
    L3_3 = L18_2
    L2_3.onCancel = L3_3
    L2_3.tag = "usernameInputTransition"
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L3_2
    L2_3 = {}
    L2_3.time = 200
    L2_3.delay = 100
    L2_3.x = 0
    L2_3.y = -116
    L3_3 = L18_2
    L2_3.onCancel = L3_3
    L2_3.tag = "usernameInputTransition"
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L15_2
    L2_3 = {}
    L2_3.time = 100
    L2_3.delay = 300
    L2_3.x = 100
    L3_3 = L18_2
    L2_3.onCancel = L3_3
    L2_3.tag = "usernameInputTransition"
    L0_3(L1_3, L2_3)
  end
  
  function L21_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L17_2
    L0_3()
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L14_2
    L2_3 = {}
    L2_3.time = 200
    L2_3.delay = 200
    L3_3 = display
    L3_3 = L3_3.contentWidth
    L3_3 = L3_3 * 0.5
    L2_3.x = L3_3
    L2_3.xScale = 1
    L2_3.yScale = 1
    L3_3 = L18_2
    L2_3.onCancel = L3_3
    L2_3.tag = "usernameInputTransition"
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L3_2
    L2_3 = {}
    L2_3.time = 200
    L2_3.delay = 100
    L2_3.x = 0
    L2_3.y = 0
    L3_3 = L18_2
    L2_3.onCancel = L3_3
    L2_3.tag = "usernameInputTransition"
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L15_2
    L2_3 = {}
    L2_3.time = 100
    L2_3.x = -50
    L3_3 = L18_2
    L2_3.onCancel = L3_3
    L2_3.tag = "usernameInputTransition"
    L0_3(L1_3, L2_3)
  end
  
  function L22_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "began" then
      L1_3 = L20_2
      L1_3()
    else
      L1_3 = A0_3.phase
      if L1_3 == "ended" then
        L1_3 = L21_2
        L1_3()
      else
        L1_3 = A0_3.phase
        if L1_3 == "submitted" then
          L1_3 = L21_2
          L1_3()
          L1_3 = L13_2
          L1_3()
        end
      end
    end
  end
  
  L23_2 = native
  L23_2 = L23_2.newTextField
  L24_2 = display
  L24_2 = L24_2.contentWidth
  L24_2 = L24_2 * 4
  L25_2 = display
  L25_2 = L25_2.contentHeight
  L25_2 = L25_2 * 0.2
  L26_2 = 150
  L27_2 = L6_2
  L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
  L5_2 = L23_2
  L5_2.anchorX = 0
  L5_2.anchorY = 0.5
  L23_2 = L8_2.x
  L5_2.x = L23_2
  L23_2 = L8_2.y
  L23_2 = L23_2 + 30
  L5_2.y = L23_2
  L23_2 = L0_1
  L23_2 = L23_2.validateInput
  L23_2 = L23_2.limitTextField
  L24_2 = 15
  L25_2 = L22_2
  L23_2 = L23_2(L24_2, L25_2)
  L5_2.userInput = L23_2
  L24_2 = L5_2
  L23_2 = L5_2.addEventListener
  L25_2 = "userInput"
  L26_2 = L5_2.userInput
  L23_2(L24_2, L25_2, L26_2)
  
  function L23_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L16_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L12_1
    L0_3(L1_3, L2_3)
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L15_2
    L0_3(L1_3, L2_3)
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L7_2
    L0_3(L1_3, L2_3)
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L8_2
    L0_3(L1_3, L2_3)
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L5_2
    L0_3(L1_3, L2_3)
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L9_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L3_2
    L0_3(L1_3, L2_3)
  end
  
  function L24_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L16_1
    L1_3 = false
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L16_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L12_1
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L15_2
    L0_3(L1_3)
    L0_3 = native
    L0_3 = L0_3.setKeyboardFocus
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = L21_1
    L0_3()
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "userInput"
    L3_3 = L5_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = L8_1
    if L0_3 then
      L0_3 = L8_1
      L1_3 = L0_3
      L0_3 = L0_3.removeEventListener
      L2_3 = "touch"
      L3_3 = L17_1
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L8_1
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      L8_1 = L0_3
    end
    L0_3 = L11_1
    if L0_3 then
      L0_3 = L11_1
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      L11_1 = L0_3
    end
    L0_3 = L6_1
    if L0_3 then
      L0_3 = Runtime
      L1_3 = L0_3
      L0_3 = L0_3.removeEventListener
      L2_3 = "GetGameCenterTokenEvent"
      L3_3 = L6_1
      L0_3(L1_3, L2_3, L3_3)
    end
    L0_3 = L0_1
    L0_3 = L0_3.gameNetwork
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.gameNetwork
      L0_3 = L0_3.setSuccesfullyGetLocalPlayerCallback
      L1_3 = nil
      L0_3(L1_3)
      L0_3 = L0_1
      L0_3 = L0_3.gameNetwork
      L0_3 = L0_3.setFailsGetLocalPlayerCallback
      L1_3 = nil
      L0_3(L1_3)
    end
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "system"
    L3_3 = L20_1
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L4_1 = L24_2
  L24_2 = L23_2
  L24_2()
  L24_2 = Runtime
  L25_2 = L24_2
  L24_2 = L24_2.addEventListener
  L26_2 = "system"
  L27_2 = L20_1
  L24_2(L25_2, L26_2, L27_2)
end

L2_1.create = L22_1

function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.phase
  L3_2 = true
  L13_1 = L3_2
  if L2_2 == "will" then
    return
  end
  L3_2 = L0_1
  L3_2 = L3_2.analytics
  L3_2 = L3_2.addDesignEvent
  L4_2 = "Onboarding:StartScreen:Open"
  L3_2(L4_2)
  L3_2 = require
  L4_2 = "lua.modules.androidBackButton"
  L3_2 = L3_2(L4_2)
  L4_2 = require
  L5_2 = "lua.network.tcpSocial"
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2.view
  L6_2 = L0_1
  L6_2 = L6_2.data
  L6_2.tutorial = true
  L6_2 = L1_1
  L6_2 = L6_2.loadBaseSounds
  L6_2()
  L6_2 = L1_1
  L6_2 = L6_2.loadFacebook
  L6_2()
  L6_2 = isSimulator
  if L6_2 then
    L6_2 = L0_1
    L6_2 = L6_2.config
    L6_2 = L6_2.bot
    if L6_2 then
      L6_2 = "Guest"
      L7_2 = math
      L7_2 = L7_2.random
      L8_2 = 1
      L9_2 = 1000
      L7_2 = L7_2(L8_2, L9_2)
      L6_2 = L6_2 .. L7_2
      L7_2 = L0_1
      L7_2 = L7_2.database
      L7_2 = L7_2.setOnboardingPartDone
      L8_2 = 1
      L7_2(L8_2)
      L7_2 = L0_1
      L7_2 = L7_2.commHttps
      L7_2 = L7_2.sendRegisterMessage
      L8_2 = L6_2
      L7_2(L8_2)
    end
  end
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L3_2
    L0_3 = L0_3.removeBackButton
    L0_3()
  end
  
  L5_1 = L6_2
  L6_2 = L3_2.addBackButton
  L6_2()
  L6_2 = L4_2.toggleNetworkAlert
  L6_2()
  L6_2 = L0_1
  L6_2 = L6_2.database
  L6_2 = L6_2.storeCurrentPatchVersion
  L6_2()
  
  function L6_2(A0_3)
    local L1_3, L2_3
    if A0_3 == nil then
      L1_3 = L0_1
      L1_3 = L1_3.gameNetwork
      L1_3 = L1_3.getAlias
      L1_3 = L1_3()
      A0_3 = L1_3
    end
    L1_3 = L0_1
    L1_3 = L1_3.analytics
    L1_3 = L1_3.addDesignEvent
    L2_3 = "Onboarding:StartScreen:GoToCreateUser:GameService"
    L1_3(L2_3)
  end
  
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = print
    L2_3 = "Receipt HTTPS Callback in startScreen "
    L3_3 = A0_3.m
    L1_3(L2_3, L3_3)
    L1_3 = A0_3.m
    L2_3 = L3_1
    L2_3 = L2_3.register
    L2_3 = L2_3()
    if L1_3 == L2_3 then
      L1_3 = true
      L13_1 = L1_3
      L1_3 = L21_1
      L1_3()
      L1_3 = A0_3.r
      if L1_3 then
        L1_3 = L15_1
        L2_3 = L0_1
        L2_3 = L2_3.localized
        L2_3 = L2_3.get
        L3_3 = "ErrorTryLater"
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3 = L2_3(L3_3)
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
        return
      end
    else
      L1_3 = A0_3.m
      L2_3 = L3_1
      L2_3 = L2_3.loginAppleGameCenter
      L2_3 = L2_3()
      if L1_3 == L2_3 then
        L1_3 = print
        L2_3 = "Got login apple reply"
        L1_3(L2_3)
        L1_3 = L10_1
        if L1_3 then
          L1_3 = print
          L2_3 = "timed out apple! be extra carefull if still want to login"
          L1_3(L2_3)
        end
        L1_3 = A0_3.r
        L1_3 = L1_3 == nil
        if L1_3 then
          L2_3 = print
          L3_3 = "Login with apple game center"
          L2_3(L3_3)
          L2_3 = A0_3.p
          L3_3 = A0_3.a
          L4_3 = L0_1
          L4_3 = L4_3.database
          L4_3 = L4_3.setPlayerIdAndToken
          L5_3 = L2_3
          L6_3 = L3_3
          L4_3(L5_3, L6_3)
          L4_3 = L0_1
          L4_3 = L4_3.config
          L4_3.loginMessage = true
          L4_3 = L0_1
          L4_3 = L4_3.gotoScene
          L5_3 = "lua.scenes.loadingScene"
          L4_3(L5_3)
          L4_3 = L0_1
          L4_3 = L4_3.database
          L4_3 = L4_3.setOnboardingPartDone
          L5_3 = 1
          L4_3(L5_3)
          L4_3 = L0_1
          L4_3.loggedInThisSession = true
          L4_3 = L0_1
          L4_3 = L4_3.analytics
          L4_3 = L4_3.newEvent
          L5_3 = "design"
          L6_3 = {}
          L6_3.event_id = "gameNetwork:stage3:success:apple"
          L7_3 = L0_1
          L7_3 = L7_3.config
          L7_3 = L7_3.fullVersion
          L6_3.area = L7_3
          L4_3(L5_3, L6_3)
        else
          L2_3 = print
          L3_3 = "Error login with game center "
          L4_3 = A0_3.r
          L2_3(L3_3, L4_3)
          L2_3 = L6_2
          L2_3()
          L2_3 = L0_1
          L2_3 = L2_3.analytics
          L2_3 = L2_3.newEvent
          L3_3 = "design"
          L4_3 = {}
          L4_3.event_id = "gameNetwork:stage3:fail:apple"
          L5_3 = L0_1
          L5_3 = L5_3.config
          L5_3 = L5_3.fullVersion
          L4_3.area = L5_3
          L2_3(L3_3, L4_3)
        end
      else
        L1_3 = A0_3.m
        L2_3 = L3_1
        L2_3 = L2_3.loginGooglePlayServices
        L2_3 = L2_3()
        if L1_3 == L2_3 then
          L1_3 = print
          L2_3 = "Got login google reply"
          L1_3(L2_3)
          L1_3 = L10_1
          if L1_3 then
            L1_3 = print
            L2_3 = "timed out google! be extra carefull if still want to login"
            L1_3(L2_3)
          end
          L1_3 = A0_3.r
          L1_3 = L1_3 == nil
          if L1_3 then
            L2_3 = print
            L3_3 = "Login with google success!"
            L2_3(L3_3)
            L2_3 = A0_3.p
            L3_3 = A0_3.a
            L4_3 = L0_1
            L4_3 = L4_3.database
            L4_3 = L4_3.setPlayerIdAndToken
            L5_3 = L2_3
            L6_3 = L3_3
            L4_3(L5_3, L6_3)
            L4_3 = L0_1
            L4_3 = L4_3.config
            L4_3.loginMessage = true
            L4_3 = L0_1
            L4_3 = L4_3.gotoScene
            L5_3 = "lua.scenes.loadingScene"
            L4_3(L5_3)
            L4_3 = L0_1
            L4_3 = L4_3.database
            L4_3 = L4_3.setOnboardingPartDone
            L5_3 = 1
            L4_3(L5_3)
            L4_3 = L0_1
            L4_3.loggedInThisSession = true
            L4_3 = L0_1
            L4_3 = L4_3.analytics
            L4_3 = L4_3.newEvent
            L5_3 = "design"
            L6_3 = {}
            L6_3.event_id = "gameNetwork:stage3:success:android"
            L7_3 = L0_1
            L7_3 = L7_3.config
            L7_3 = L7_3.fullVersion
            L6_3.area = L7_3
            L4_3(L5_3, L6_3)
          else
            L2_3 = print
            L3_3 = "Error login with google "
            L4_3 = A0_3.r
            L2_3(L3_3, L4_3)
            L2_3 = L6_2
            L3_3 = A0_3.s
            L2_3(L3_3)
            L2_3 = L0_1
            L2_3 = L2_3.analytics
            L2_3 = L2_3.newEvent
            L3_3 = "design"
            L4_3 = {}
            L4_3.event_id = "gameNetwork:stage3:fail:android"
            L5_3 = L0_1
            L5_3 = L5_3.config
            L5_3 = L5_3.fullVersion
            L4_3.area = L5_3
            L2_3(L3_3, L4_3)
          end
        else
          L1_3 = A0_3.m
          L2_3 = L3_1
          L2_3 = L2_3.getUserOnDeviceId
          L2_3 = L2_3()
          if L1_3 == L2_3 then
            L1_3 = A0_3.r
            if not L1_3 then
              L1_3 = A0_3.u
              if L1_3 then
                goto lbl_198
              end
            end
            L1_3 = L16_1
            L2_3 = true
            L1_3(L2_3)
            goto lbl_215
            ::lbl_198::
            L1_3 = A0_3.u
            if L1_3 then
              L1_3 = {}
              L1_3.isModal = true
              L2_3 = {}
              L3_3 = A0_3.u
              L2_3.username = L3_3
              L1_3.params = L2_3
              L2_3 = L0_1
              L2_3 = L2_3.showOverlay
              L3_3 = "lua.overlays.loginUserWithDeviceId"
              L4_3 = L1_3
              L2_3(L3_3, L4_3)
              L2_3 = L16_1
              L3_3 = false
              L2_3(L3_3)
            end
          end
        end
      end
    end
    ::lbl_215::
  end
  
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = print
      L2_3 = "startscreen Something went wrong while getting server auth token"
      L1_3(L2_3)
    end
    L1_3 = A0_3.errorCode
    if L1_3 then
      L1_3 = print
      L2_3 = "startscreen GPGS errorcode "
      L3_3 = A0_3.errorCode
      L1_3(L2_3, L3_3)
    end
    L1_3 = A0_3.errorMessage
    if L1_3 then
      L1_3 = print
      L2_3 = "startscreen GPGS errorMessage "
      L3_3 = A0_3.errorMessage
      L1_3(L2_3, L3_3)
    end
    L1_3 = A0_3.code
    if L1_3 then
      L1_3 = A0_3.isError
      if not L1_3 then
        L1_3 = print
        L2_3 = "Got GPGS code sending to backend"
        L1_3(L2_3)
        L1_3 = L19_1
        L2_3 = L5_2
        L1_3(L2_3)
        L1_3 = L0_1
        L1_3 = L1_3.commHttps
        L1_3 = L1_3.loginWithGooglePlayServices
        L2_3 = nil
        L3_3 = A0_3.code
        L4_3 = nil
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = L0_1
        L1_3 = L1_3.analytics
        L1_3 = L1_3.newEvent
        L2_3 = "design"
        L3_3 = {}
        L3_3.event_id = "gameNetwork:stage2:success:android"
        L4_3 = L0_1
        L4_3 = L4_3.config
        L4_3 = L4_3.fullVersion
        L3_3.area = L4_3
        L1_3(L2_3, L3_3)
    end
    else
      L1_3 = print
      L2_3 = "no startscreen event code "
      L1_3(L2_3)
      L1_3 = L18_1
      L1_3()
      L1_3 = L0_1
      L1_3 = L1_3.analytics
      L1_3 = L1_3.newEvent
      L2_3 = "design"
      L3_3 = {}
      L3_3.event_id = "gameNetwork:stage2:fail:android"
      L4_3 = L0_1
      L4_3 = L4_3.config
      L4_3 = L4_3.fullVersion
      L3_3.area = L4_3
      L1_3(L2_3, L3_3)
    end
  end
  
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = L16_1
    L2_3 = false
    L1_3(L2_3)
    L1_3 = L0_1
    L1_3 = L1_3.gameNetwork
    if L1_3 then
      L1_3 = L0_1
      L1_3 = L1_3.gameNetwork
      L1_3 = L1_3.shouldHideGameServicesOnStart
      L1_3 = L1_3()
      if L1_3 and not A0_3 then
        L1_3 = print
        L2_3 = "dont try to start up game network in startscreen if already invalidated (logged out same session) or player logged out of game network"
        L3_3 = L0_1
        L3_3 = L3_3.gameNetwork
        L3_3 = L3_3.shouldHideGameServicesOnStart
        L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L3_3()
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        L1_3 = L0_1
        L1_3 = L1_3.commHttps
        L1_3 = L1_3.getUserOnDeviceId
        L1_3()
        L1_3 = L16_1
        L2_3 = true
        L1_3(L2_3)
        return
      end
    end
    L1_3 = L0_1
    L1_3 = L1_3.database
    L1_3 = L1_3.getPlayerInformation
    L1_3 = L1_3()
    L1_3 = L1_3 ~= nil
    L2_3 = print
    L3_3 = "Has Locally Stored Profile!"
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
    if not L1_3 then
      L2_3 = L0_1
      L2_3 = L2_3.gameNetwork
      if L2_3 then
        function L2_3()
          local L0_4, L1_4
          
          L0_4 = L0_1
          L0_4 = L0_4.gameNetwork
          if L0_4 then
            L0_4 = L0_1
            L0_4 = L0_4.gameNetwork
            L0_4 = L0_4.setSuccesfullyGetLocalPlayerCallback
            L1_4 = nil
            L0_4(L1_4)
            L0_4 = L0_1
            L0_4 = L0_4.gameNetwork
            L0_4 = L0_4.setFailsGetLocalPlayerCallback
            L1_4 = nil
            L0_4(L1_4)
          end
        end
        
        function L3_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
          L1_4 = print
          L2_4 = "Sending login with game center callback"
          L1_4(L2_4)
          L1_4 = L0_1
          L1_4 = L1_4.gameNetwork
          L1_4 = L1_4.getPlayerId
          L1_4 = L1_4()
          if L1_4 and A0_4 then
            L2_4 = A0_4.signature
            if L2_4 then
              L2_4 = A0_4.timestamp
              if L2_4 then
                L2_4 = A0_4.publicKeyURL
                if L2_4 then
                  L2_4 = A0_4.salt
                  if L2_4 then
                    L2_4 = L19_1
                    L3_4 = L5_2
                    L2_4(L3_4)
                    L2_4 = L0_1
                    L2_4 = L2_4.commHttps
                    L2_4 = L2_4.loginWithAppleGameCenter
                    L3_4 = L1_4
                    L4_4 = A0_4.signature
                    L5_4 = A0_4.timestamp
                    L6_4 = A0_4.publicKeyURL
                    L7_4 = A0_4.salt
                    L2_4(L3_4, L4_4, L5_4, L6_4, L7_4)
                    L2_4 = L0_1
                    L2_4 = L2_4.analytics
                    L2_4 = L2_4.newEvent
                    L3_4 = "design"
                    L4_4 = {}
                    L4_4.event_id = "gameNetwork:stage2:success:apple"
                    L5_4 = L0_1
                    L5_4 = L5_4.config
                    L5_4 = L5_4.fullVersion
                    L4_4.area = L5_4
                    L2_4(L3_4, L4_4)
                end
              end
            end
          end
          else
            L2_4 = print
            L3_4 = "Unknown native apple game center error, neither error nor success?"
            L2_4(L3_4)
            L2_4 = L0_1
            L2_4 = L2_4.analytics
            L2_4 = L2_4.newEvent
            L3_4 = "design"
            L4_4 = {}
            L4_4.event_id = "gameNetwork:stage2:fail:apple"
            L5_4 = L0_1
            L5_4 = L5_4.config
            L5_4 = L5_4.fullVersion
            L4_4.area = L5_4
            L2_4(L3_4, L4_4)
            L2_4 = L18_1
            L2_4()
          end
          L2_4 = L2_3
          L2_4()
        end
        
        L6_1 = L3_3
        
        function L3_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
          L0_4 = print
          L1_4 = "ifSuccessfullyActivatedGameNetwork callback"
          L0_4(L1_4)
          L0_4 = false
          L1_4 = isIOS
          if L1_4 then
            L1_4 = L0_1
            L1_4 = L1_4.gameNetwork
            if L1_4 then
              L1_4 = require
              L2_4 = "dirtyLib"
              L1_4 = L1_4(L2_4)
              if L1_4 then
                L2_4 = print
                L3_4 = "DirtyLib called ios"
                L2_4(L3_4)
                L2_4 = L19_1
                L3_4 = L5_2
                L2_4(L3_4)
                L2_4 = L6_1
                if L2_4 then
                  L2_4 = Runtime
                  L3_4 = L2_4
                  L2_4 = L2_4.addEventListener
                  L4_4 = "GetGameCenterTokenEvent"
                  L5_4 = L6_1
                  L2_4(L3_4, L4_4, L5_4)
                end
                L2_4 = L1_4.Dirtybit
                L3_4 = "get_game_center_token"
                L2_4(L3_4)
                L2_4 = L0_1
                L2_4 = L2_4.analytics
                L2_4 = L2_4.newEvent
                L3_4 = "design"
                L4_4 = {}
                L4_4.event_id = "gameNetwork:stage1:apple:success"
                L5_4 = L0_1
                L5_4 = L5_4.config
                L5_4 = L5_4.fullVersion
                L4_4.area = L5_4
                L2_4(L3_4, L4_4)
                L0_4 = true
              else
                L2_4 = print
                L3_4 = "DirtyLib not found ios"
                L2_4(L3_4)
              end
            end
          end
          L1_4 = isAndroid
          if L1_4 then
            L1_4 = L0_1
            L1_4 = L1_4.gameNetwork
            if L1_4 then
              L1_4 = L0_1
              L1_4 = L1_4.gameNetwork
              L1_4 = L1_4.isGameServicesActive
              L1_4 = L1_4()
              if L1_4 then
                L0_4 = true
                L1_4 = L0_1
                L1_4 = L1_4.analytics
                L1_4 = L1_4.newEvent
                L2_4 = "design"
                L3_4 = {}
                L3_4.event_id = "gameNetwork:stage1:android:success"
                L4_4 = L0_1
                L4_4 = L4_4.config
                L4_4 = L4_4.fullVersion
                L3_4.area = L4_4
                L1_4(L2_4, L3_4)
                L1_4 = L0_1
                L1_4 = L1_4.gameNetwork
                L1_4 = L1_4.getPlayServicesRefreshToken
                L2_4 = L8_2
                L1_4(L2_4)
              else
                L1_4 = print
                L2_4 = "Gameservices not active."
                L1_4(L2_4)
              end
          end
          else
            L1_4 = print
            L2_4 = "Not android or gamenetwork not inited.."
            L1_4(L2_4)
          end
          L1_4 = print
          L2_4 = "Game Service Success?"
          L3_4 = L0_4
          L1_4(L2_4, L3_4)
          if not L0_4 then
            L1_4 = L18_1
            L1_4()
            L1_4 = isAndroid
            if L1_4 then
              L1_4 = L0_1
              L1_4 = L1_4.analytics
              L1_4 = L1_4.newEvent
              L2_4 = "design"
              L3_4 = {}
              L3_4.event_id = "gameNetwork:stage1:fail:android"
              L4_4 = L0_1
              L4_4 = L4_4.config
              L4_4 = L4_4.fullVersion
              L3_4.area = L4_4
              L1_4(L2_4, L3_4)
            else
              L1_4 = isIOS
              if L1_4 then
                L1_4 = L0_1
                L1_4 = L1_4.analytics
                L1_4 = L1_4.newEvent
                L2_4 = "design"
                L3_4 = {}
                L3_4.event_id = "gameNetwork:stage1:fail:apple"
                L4_4 = L0_1
                L4_4 = L4_4.config
                L4_4 = L4_4.fullVersion
                L3_4.area = L4_4
                L1_4(L2_4, L3_4)
              end
            end
          end
        end
        
        function L4_3()
          local L0_4, L1_4, L2_4, L3_4
          L0_4 = print
          L1_4 = "ifFailsActivatedGameNetwork callback"
          L0_4(L1_4)
          L0_4 = L0_1
          L0_4 = L0_4.commHttps
          L0_4 = L0_4.getUserOnDeviceId
          L0_4()
          L0_4 = L18_1
          L0_4()
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
        
        L5_3 = L0_1
        L5_3 = L5_3.gameNetwork
        L5_3 = L5_3.isGameServicesInit
        L5_3 = L5_3()
        if L5_3 then
          L5_3 = print
          L6_3 = "Game services inited. Only need to log in."
          L5_3(L6_3)
          L5_3 = isAndroid
          if L5_3 then
            L5_3 = L19_1
            L6_3 = L5_2
            L5_3(L6_3)
            L5_3 = L0_1
            L5_3 = L5_3.gameNetwork
            L5_3 = L5_3.setSuccesfullyGetLocalPlayerCallback
            L6_3 = L3_3
            L5_3(L6_3)
            L5_3 = L0_1
            L5_3 = L5_3.gameNetwork
            L5_3 = L5_3.setFailsGetLocalPlayerCallback
            L6_3 = L4_3
            L5_3(L6_3)
            L5_3 = print
            L6_3 = "Do Login direct."
            L5_3(L6_3)
            L5_3 = L0_1
            L5_3 = L5_3.gameNetwork
            L5_3 = L5_3.playServicesLogin
            L5_3()
          end
        else
          L5_3 = print
          L6_3 = "Game services not inited. Start init."
          L5_3(L6_3)
          L5_3 = L19_1
          L6_3 = L5_2
          L5_3(L6_3)
          L5_3 = L0_1
          L5_3 = L5_3.gameNetwork
          L5_3 = L5_3.setSuccesfullyGetLocalPlayerCallback
          L6_3 = L3_3
          L5_3(L6_3)
          L5_3 = L0_1
          L5_3 = L5_3.gameNetwork
          L5_3 = L5_3.setFailsGetLocalPlayerCallback
          L6_3 = L4_3
          L5_3(L6_3)
          L5_3 = L0_1
          L5_3 = L5_3.gameNetwork
          L5_3 = L5_3.init
          L5_3()
          L5_3 = isAndroid
          if L5_3 then
            L5_3 = L0_1
            L5_3 = L5_3.analytics
            L5_3 = L5_3.newEvent
            L6_3 = "design"
            L7_3 = {}
            L7_3.event_id = "gameNetwork:stage1:android"
            L8_3 = L0_1
            L8_3 = L8_3.config
            L8_3 = L8_3.fullVersion
            L7_3.area = L8_3
            L5_3(L6_3, L7_3)
          else
            L5_3 = isIOS
            if L5_3 then
              L5_3 = L0_1
              L5_3 = L5_3.analytics
              L5_3 = L5_3.newEvent
              L6_3 = "design"
              L7_3 = {}
              L7_3.event_id = "gameNetwork:stage1:apple"
              L8_3 = L0_1
              L8_3 = L8_3.config
              L8_3 = L8_3.fullVersion
              L7_3.area = L8_3
              L5_3(L6_3, L7_3)
            end
          end
        end
    end
    else
      L2_3 = print
      L3_3 = "We have stored locally a previous account, no auto-login"
      L2_3(L3_3)
    end
  end
  
  L7_1 = L9_2
  L9_2 = L2_1
  
  function L10_2(A0_3)
    local L1_3, L2_3
    L1_3 = L16_1
    L2_3 = true
    L1_3(L2_3)
    L1_3 = L0_1
    L1_3 = L1_3.commHttps
    L1_3 = L1_3.setCallback
    L2_3 = L7_2
    L1_3(L2_3)
  end
  
  L9_2.overlayEnded = L10_2
  L9_2 = L2_1
  
  function L10_2(A0_3)
    local L1_3, L2_3
    L1_3 = L16_1
    L2_3 = false
    L1_3(L2_3)
  end
  
  L9_2.overlayShow = L10_2
  L9_2 = L0_1
  L9_2 = L9_2.commHttps
  L9_2 = L9_2.setCallback
  L10_2 = L7_2
  L9_2(L10_2)
  L9_2 = L7_1
  L9_2()
  L9_2 = isAndroid
  if L9_2 then
    L9_2 = L12_1
    L9_2.isVisible = true
  end
end

L2_1.show = L22_1

function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    L3_2 = L5_1
    if L3_2 then
      L3_2 = L5_1
      L3_2()
      L3_2 = nil
      L5_1 = L3_2
    end
  elseif L2_2 == "did" then
    L3_2 = L0_1
    L3_2 = L3_2.removeScene
    L4_2 = "lua.scenes.startScreen"
    L3_2(L4_2)
  end
end

L2_1.hide = L22_1

function L22_1(A0_2, A1_2)
  local L2_2
  L2_2 = L4_1
  L2_2()
end

L2_1.destroy = L22_1
L23_1 = L2_1
L22_1 = L2_1.addEventListener
L24_1 = "create"
L25_1 = L2_1
L22_1(L23_1, L24_1, L25_1)
L23_1 = L2_1
L22_1 = L2_1.addEventListener
L24_1 = "show"
L25_1 = L2_1
L22_1(L23_1, L24_1, L25_1)
L23_1 = L2_1
L22_1 = L2_1.addEventListener
L24_1 = "hide"
L25_1 = L2_1
L22_1(L23_1, L24_1, L25_1)
L23_1 = L2_1
L22_1 = L2_1.addEventListener
L24_1 = "destroy"
L25_1 = L2_1
L22_1(L23_1, L24_1, L25_1)
return L2_1
