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
  L3_2 = require
  L4_2 = "lua.network.httpsMessageFormat"
  L3_2 = L3_2(L4_2)
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L5_2 = true
  L6_2 = ""
  L7_2 = A1_2.params
  if L7_2 then
    L7_2 = A1_2.params
    L7_2 = L7_2.username
    if L7_2 then
      L7_2 = A1_2.params
      L6_2 = L7_2.username
    end
  end
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
  L12_2 = "OldUser"
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
  L11_2 = L0_1
  L11_2 = L11_2.newText
  L12_2 = {}
  L13_2 = L0_1
  L13_2 = L13_2.localized
  L13_2 = L13_2.get
  L14_2 = "OldUserInfo"
  L13_2 = L13_2(L14_2)
  L14_2 = L6_2
  L13_2 = L13_2 .. L14_2
  L12_2.string = L13_2
  L13_2 = L8_2.x
  L12_2.x = L13_2
  L13_2 = L8_2.y
  L13_2 = L13_2 - 4
  L12_2.y = L13_2
  L13_2 = {}
  L14_2 = 1
  L15_2 = 1
  L16_2 = 1
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L12_2.color = L13_2
  L12_2.width = 250
  L12_2.align = "center"
  L11_2 = L11_2(L12_2)
  L12_2 = L0_1
  L12_2 = L12_2.newText
  L13_2 = {}
  L14_2 = L0_1
  L14_2 = L14_2.localized
  L14_2 = L14_2.get
  L15_2 = "OldUserInfo2"
  L14_2 = L14_2(L15_2)
  L13_2.string = L14_2
  L14_2 = L8_2.x
  L13_2.x = L14_2
  L14_2 = L8_2.y
  L14_2 = L14_2 + 32
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
  
  function L13_2()
    local L0_3, L1_3, L2_3
    L0_3 = true
    L5_2 = L0_3
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
  
  function L14_2()
    local L0_3, L1_3
    L0_3 = L5_2
    if not L0_3 then
      return
    end
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
  L15_2 = L0_1
  L15_2 = L15_2.newButton
  L16_2 = {}
  L16_2.image = "images/gui/common/buttonTextB.png"
  L17_2 = L0_1
  L17_2 = L17_2.localized
  L17_2 = L17_2.get
  L18_2 = "No"
  L17_2 = L17_2(L18_2)
  L16_2.text = L17_2
  L16_2.onRelease = L14_2
  L16_2.width = 126
  L16_2.height = 40
  L17_2 = L8_2.x
  L17_2 = L17_2 + 70
  L16_2.x = L17_2
  L17_2 = L8_2.y
  L17_2 = L17_2 + 70
  L16_2.y = L17_2
  L15_2 = L15_2(L16_2)
  
  function L16_2()
    local L0_3, L1_3
    L0_3 = L5_2
    if not L0_3 then
      return
    end
    L0_3 = false
    L5_2 = L0_3
    L0_3 = L0_1
    L0_3 = L0_3.commHttps
    L0_3 = L0_3.loginWithDeviceId
    L0_3()
  end
  
  L17_2 = L0_1
  L17_2 = L17_2.newButton
  L18_2 = {}
  L18_2.image = "images/gui/common/buttonTextA.png"
  L19_2 = L0_1
  L19_2 = L19_2.localized
  L19_2 = L19_2.get
  L20_2 = "Yes"
  L19_2 = L19_2(L20_2)
  L18_2.text = L19_2
  L18_2.onRelease = L16_2
  L18_2.width = 126
  L18_2.height = 40
  L19_2 = L8_2.x
  L19_2 = L19_2 - 70
  L18_2.x = L19_2
  L19_2 = L8_2.y
  L19_2 = L19_2 + 70
  L18_2.y = L19_2
  L17_2 = L17_2(L18_2)
  
  function L18_2(A0_3)
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
  
  function L19_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
    end
    L1_3 = true
    return L1_3
  end
  
  function L20_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L7_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L18_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L8_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L19_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L21_2()
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
    L2_3 = L15_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L17_2
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
  
  function L22_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L17_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L15_2
    L0_3(L1_3)
    L0_3 = L7_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L18_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L8_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L19_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L2_1 = L22_2
  L22_2 = L21_2
  L22_2()
  L22_2 = L20_2
  L22_2()
  L22_2 = L0_1
  L22_2 = L22_2.bouncer
  L22_2 = L22_2.down
  L23_2 = L4_2
  L22_2(L23_2)
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
