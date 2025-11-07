local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.newScene
L1_1 = L1_1()
L2_1 = nil
L3_1 = nil

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
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
  L14_2 = "CreateUser"
  L13_2 = L13_2(L14_2)
  L12_2.string = L13_2
  L13_2 = L8_2.x
  L12_2.x = L13_2
  L13_2 = L8_2.y
  L13_2 = L13_2 - 44
  L12_2.y = L13_2
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
  L12_2 = L0_1
  L12_2 = L12_2.newText
  L13_2 = {}
  L13_2.string = ""
  L14_2 = L8_2.x
  L13_2.x = L14_2
  L14_2 = L8_2.y
  L14_2 = L14_2 + 42
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
  L16_2 = "Username"
  L15_2 = L15_2(L16_2)
  L14_2.string = L15_2
  L15_2 = L8_2.x
  L15_2 = L15_2 - 116
  L14_2.x = L15_2
  L15_2 = L8_2.y
  L15_2 = L15_2 + 10
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
  
  function L14_2()
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
  
  function L15_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.m
    L2_3 = L3_2
    L2_3 = L2_3.register
    L2_3 = L2_3()
    if L1_3 == L2_3 then
      L1_3 = true
      L6_2 = L1_3
      L1_3 = L14_2
      L1_3()
      L1_3 = A0_3.r
      if L1_3 then
        L1_3 = L12_2
        L2_3 = L0_1
        L2_3 = L2_3.localized
        L2_3 = L2_3.get
        L3_3 = "ErrorTryLater"
        L2_3 = L2_3(L3_3)
        L1_3.text = L2_3
        return
      end
    end
  end
  
  function L16_2()
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
  
  function L17_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L6_2
    if not L0_3 then
      return
    end
    L0_3 = L0_1
    L0_3 = L0_3.validateInput
    L0_3 = L0_3.validateUsername
    L1_3 = L9_2
    L1_3 = L1_3.text
    L0_3, L1_3 = L0_3(L1_3)
    if not L0_3 then
      L2_3 = isSimulator
      if L2_3 then
        L2_3 = "Guest"
        L3_3 = math
        L3_3 = L3_3.random
        L4_3 = 1
        L5_3 = 1000
        L3_3 = L3_3(L4_3, L5_3)
        L0_3 = L2_3 .. L3_3
      end
    end
    if not L0_3 then
      L2_3 = print
      L3_3 = "nameError "
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
      L2_3 = L12_2
      L2_3.text = L1_3
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
      L4_3 = L16_2
      L2_3 = L2_3(L3_3, L4_3)
      L5_2 = L2_3
      L2_3 = false
      L6_2 = L2_3
    end
  end
  
  L18_2 = L0_1
  L18_2 = L18_2.newButton
  L19_2 = {}
  L19_2.image = "images/gui/login/buttonNext.png"
  L19_2.onRelease = L17_2
  L19_2.width = 62
  L19_2.height = 45
  L20_2 = L8_2.x
  L20_2 = L20_2 + 130
  L19_2.x = L20_2
  L20_2 = L8_2.y
  L20_2 = L20_2 + 16
  L19_2.y = L20_2
  L18_2 = L18_2(L19_2)
  
  function L19_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.analytics
    L0_3 = L0_3.addDesignEvent
    L1_3 = "Onboarding:CreateUser:Exit"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
  L20_2 = L0_1
  L20_2 = L20_2.newButton
  L21_2 = {}
  L21_2.image = "images/gui/common/buttonClosePopupBrown.png"
  L21_2.onRelease = L19_2
  L21_2.width = 43
  L21_2.height = 38
  L22_2 = L8_2.x
  L22_2 = L22_2 + 158
  L21_2.x = L22_2
  L22_2 = L8_2.y
  L22_2 = L22_2 + -38
  L21_2.y = L22_2
  L20_2 = L20_2(L21_2)
  L21_2 = native
  L21_2 = L21_2.newTextField
  L22_2 = display
  L22_2 = L22_2.contentWidth
  L22_2 = L22_2 * 4
  L23_2 = display
  L23_2 = L23_2.contentHeight
  L23_2 = L23_2 * 0.2
  L24_2 = 150
  L25_2 = L10_2
  L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2)
  L9_2 = L21_2
  L9_2.anchorX = 0.5
  L9_2.anchorY = 0.5
  L21_2 = L13_2.x
  L21_2 = L21_2 + 120
  L9_2.x = L21_2
  L21_2 = L13_2.y
  L9_2.y = L21_2
  L21_2 = L0_1
  L21_2 = L21_2.validateInput
  L21_2 = L21_2.limitTextField
  L22_2 = 15
  L21_2 = L21_2(L22_2)
  L9_2.userInput = L21_2
  L22_2 = L9_2
  L21_2 = L9_2.addEventListener
  L23_2 = "userInput"
  L24_2 = L9_2.userInput
  L21_2(L22_2, L23_2, L24_2)
  L21_2 = A1_2.params
  if L21_2 then
    L21_2 = A1_2.params
    L21_2 = L21_2.suggestedName
    if L21_2 then
      L21_2 = A1_2.params
      L21_2 = L21_2.suggestedName
      L9_2.text = L21_2
      L21_2 = L0_1
      L21_2 = L21_2.analytics
      L21_2 = L21_2.addDesignEvent
      L22_2 = "Onboarding:CreateUser:Open:SuggestedName"
      L21_2(L22_2)
  end
  else
    L21_2 = L0_1
    L21_2 = L21_2.analytics
    L21_2 = L21_2.addDesignEvent
    L22_2 = "Onboarding:CreateUser:Open:NoSuggestedName"
    L21_2(L22_2)
  end
  
  function L21_2(A0_3)
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
  
  function L22_2(A0_3)
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
  
  function L23_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L7_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L21_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L8_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L22_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L24_2()
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
    L2_3 = L18_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L20_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L13_2
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
  
  function L25_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L18_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L20_2
    L0_3(L1_3)
    L0_3 = native
    L0_3 = L0_3.setKeyboardFocus
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = L14_2
    L0_3()
    L0_3 = L7_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L21_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L8_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L22_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "userInput"
    L3_3 = L9_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L2_1 = L25_2
  L25_2 = L24_2
  L25_2()
  L25_2 = L23_2
  L25_2()
  L25_2 = isAndroid
  if not L25_2 then
    L25_2 = native
    L25_2 = L25_2.setKeyboardFocus
    L26_2 = L9_2
    L25_2(L26_2)
  end
  L25_2 = L0_1
  L25_2 = L25_2.commHttps
  L25_2 = L25_2.setCallback
  L26_2 = L15_2
  L25_2(L26_2)
  L25_2 = L0_1
  L25_2 = L25_2.bouncer
  L25_2 = L25_2.down
  L26_2 = L4_2
  L25_2(L26_2)
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
  L4_2 = L3_2.isOverlay
  L5_2 = true
  L4_2(L5_2)
end

L1_1.show = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = L3_1
    L4_2()
  elseif L3_2 == "did" then
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
