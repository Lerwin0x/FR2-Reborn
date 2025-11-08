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
  L9_2 = L0_1
  L9_2 = L9_2.newText
  L10_2 = {}
  L11_2 = L0_1
  L11_2 = L11_2.localized
  L11_2 = L11_2.get
  L12_2 = "Login"
  L11_2 = L11_2(L12_2)
  L10_2.string = L11_2
  L11_2 = L8_2.x
  L10_2.x = L11_2
  L11_2 = L8_2.y
  L11_2 = L11_2 - 44
  L10_2.y = L11_2
  L10_2.size = 25
  L11_2 = {}
  L12_2 = 1
  L13_2 = 1
  L14_2 = 1
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L10_2.color = L11_2
  L9_2 = L9_2(L10_2)
  L10_2 = L0_1
  L10_2 = L10_2.newText
  L11_2 = {}
  L11_2.string = ""
  L12_2 = L8_2.x
  L11_2.x = L12_2
  L12_2 = L8_2.y
  L12_2 = L12_2 + 46
  L11_2.y = L12_2
  L12_2 = {}
  L13_2 = 1
  L14_2 = 1
  L15_2 = 1
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L11_2.color = L12_2
  L10_2 = L10_2(L11_2)
  
  function L11_2()
    local L0_3, L1_3, L2_3
    L0_3 = true
    L6_2 = L0_3
    L0_3 = L0_1
    L0_3 = L0_3.config
    L0_3.loginMessage = false
    L0_3 = L10_2
    L1_3 = L0_1
    L1_3 = L1_3.localized
    L1_3 = L1_3.get
    L2_3 = "Could not access Facebook"
    L1_3 = L1_3(L2_3)
    L0_3.text = L1_3
  end
  
  function L12_2(A0_3)
    local L1_3
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = L11_2
      L1_3()
    end
  end
  
  function L13_2()
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
  
  function L14_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3.m
    L2_3 = L3_2
    L2_3 = L2_3.loginWithFacebook
    L2_3 = L2_3()
    if L1_3 == L2_3 then
      L1_3 = true
      L6_2 = L1_3
      L1_3 = L13_2
      L1_3()
      L1_3 = A0_3.r
      if L1_3 then
        L1_3 = A0_3.r
        if L1_3 == 18 then
          L1_3 = L10_2
          L2_3 = L0_1
          L2_3 = L2_3.localized
          L2_3 = L2_3.get
          L3_3 = "NoFacebookAccount"
          L2_3 = L2_3(L3_3)
          L1_3.text = L2_3
          L1_3 = L0_1
          L1_3 = L1_3.config
          L1_3.loginMessage = false
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
  
  function L15_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L6_2
    if not L0_3 then
      return
    end
    L0_3 = {}
    L0_3.isModal = true
    L1_3 = L0_1
    L1_3 = L1_3.showOverlay
    L2_3 = "lua.overlays.loginUserEmail"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  
  L16_2 = L0_1
  L16_2 = L16_2.newButton
  L17_2 = {}
  L17_2.image = "images/gui/common/buttonTextB.png"
  L18_2 = L0_1
  L18_2 = L18_2.localized
  L18_2 = L18_2.get
  L19_2 = "Email"
  L18_2 = L18_2(L19_2)
  L17_2.text = L18_2
  L17_2.onRelease = L15_2
  L17_2.width = 126
  L17_2.height = 40
  L18_2 = L8_2.x
  L18_2 = L18_2 + 70
  L17_2.x = L18_2
  L18_2 = L8_2.y
  L18_2 = L18_2 + 16
  L17_2.y = L18_2
  L16_2 = L16_2(L17_2)
  
  function L17_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L6_2
    if not L0_3 then
      return
    end
    L0_3 = L0_1
    L0_3 = L0_3.config
    L0_3.loginMessage = true
    L0_3 = L0_1
    L0_3 = L0_3.facebook
    L0_3 = L0_3.login
    L1_3 = {}
    L2_3 = "user_friends"
    L1_3[1] = L2_3
    L2_3 = L12_2
    L0_3(L1_3, L2_3)
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
    L0_3 = timer
    L0_3 = L0_3.performWithDelay
    L1_3 = L0_1
    L1_3 = L1_3.config
    L1_3 = L1_3.serverTimeout
    L1_3 = 6 * L1_3
    L2_3 = L11_2
    L0_3 = L0_3(L1_3, L2_3)
    L5_2 = L0_3
    L0_3 = L10_2
    L1_3 = L0_1
    L1_3 = L1_3.localized
    L1_3 = L1_3.get
    L2_3 = "Loading"
    L1_3 = L1_3(L2_3)
    L0_3.text = L1_3
    L0_3 = false
    L6_2 = L0_3
  end
  
  L18_2 = L0_1
  L18_2 = L18_2.newButton
  L19_2 = {}
  L19_2.image = "images/gui/common/buttonFacebook.png"
  L20_2 = {}
  L21_2 = L0_1
  L21_2 = L21_2.localized
  L21_2 = L21_2.get
  L22_2 = "Facebook"
  L21_2 = L21_2(L22_2)
  L20_2.string = L21_2
  L21_2 = {}
  L22_2 = 1
  L23_2 = 1
  L24_2 = 1
  L21_2[1] = L22_2
  L21_2[2] = L23_2
  L21_2[3] = L24_2
  L20_2.color = L21_2
  L19_2.text = L20_2
  L19_2.onRelease = L17_2
  L19_2.width = 126
  L19_2.height = 40
  L20_2 = L8_2.x
  L20_2 = L20_2 - 70
  L19_2.x = L20_2
  L20_2 = L8_2.y
  L20_2 = L20_2 + 16
  L19_2.y = L20_2
  L18_2 = L18_2(L19_2)
  
  function L19_2()
    local L0_3, L1_3
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
  
  function L21_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L0_1
      L1_3 = L1_3.hideOverlay
      L1_3()
    end
    L1_3 = true
    return L1_3
  end
  
  function L22_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
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
    L2_3 = L16_2
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
    L2_3 = L9_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L10_2
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
    L1_3 = L20_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L18_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L16_2
    L0_3(L1_3)
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
    L0_3 = L13_2
    L0_3()
  end
  
  L2_1 = L25_2
  L25_2 = L24_2
  L25_2()
  L25_2 = L23_2
  L25_2()
  L25_2 = L0_1
  L25_2 = L25_2.bouncer
  L25_2 = L25_2.down
  L26_2 = L4_2
  L25_2(L26_2)
  L25_2 = L0_1
  L25_2 = L25_2.commHttps
  L25_2 = L25_2.setCallback
  L26_2 = L14_2
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
