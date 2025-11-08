local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.newScene
L1_1 = L1_1()
L2_1 = nil
L3_1 = nil

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  L2_2 = A0_2.view
  L3_2 = 50
  L4_2 = nil
  L5_2 = {}
  L6_2 = {}
  L7_2 = {}
  L8_2 = {}
  L9_2 = display
  L9_2 = L9_2.newGroup
  L9_2 = L9_2()
  L10_2 = isAndroid
  if L10_2 then
    L3_2 = 60
  end
  L10_2 = L0_1
  L10_2 = L10_2.database
  L10_2 = L10_2.getPushEnableStatus
  L10_2, L11_2, L12_2 = L10_2()
  L7_2[3] = L12_2
  L7_2[2] = L11_2
  L7_2[1] = L10_2
  L10_2 = L0_1
  L10_2 = L10_2.database
  L10_2 = L10_2.getDropdownStatus
  L10_2 = L10_2()
  L7_2[4] = L10_2
  L10_2 = display
  L10_2 = L10_2.newImageRect
  L11_2 = "images/gui/settings/pushWindow.png"
  L12_2 = 330
  L13_2 = 240
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
  L15_2 = "Notifications"
  L14_2 = L14_2(L15_2)
  L13_2.string = L14_2
  L13_2.x = 240
  L13_2.y = 60
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
  L15_2 = L0_1
  L15_2 = L15_2.localized
  L15_2 = L15_2.get
  L16_2 = "GameRequests"
  L15_2 = L15_2(L16_2)
  L14_2.string = L15_2
  L14_2.ax = 1
  L14_2.x = 280
  L14_2.y = 95
  L14_2.size = 22
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
  L17_2 = "FriendRequests"
  L16_2 = L16_2(L17_2)
  L15_2.string = L16_2
  L15_2.ax = 1
  L15_2.x = 280
  L15_2.y = 135
  L15_2.size = 22
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
  L18_2 = "GeneralRequests"
  L17_2 = L17_2(L18_2)
  L16_2.string = L17_2
  L16_2.ax = 1
  L16_2.x = 280
  L16_2.y = 175
  L16_2.size = 22
  L17_2 = {}
  L18_2 = 1
  L19_2 = 1
  L20_2 = 1
  L17_2[1] = L18_2
  L17_2[2] = L19_2
  L17_2[3] = L20_2
  L16_2.color = L17_2
  L15_2 = L15_2(L16_2)
  L16_2 = L0_1
  L16_2 = L16_2.newText
  L17_2 = {}
  L18_2 = L0_1
  L18_2 = L18_2.localized
  L18_2 = L18_2.get
  L19_2 = "dropdownRequests"
  L18_2 = L18_2(L19_2)
  L17_2.string = L18_2
  L17_2.ax = 1
  L17_2.x = 280
  L17_2.y = 215
  L17_2.size = 22
  L18_2 = {}
  L19_2 = 0.1
  L20_2 = 0.1
  L21_2 = 0.1
  L18_2[1] = L19_2
  L18_2[2] = L20_2
  L18_2[3] = L21_2
  L17_2.color = L18_2
  L16_2 = L16_2(L17_2)
  
  function L17_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = "images/gui/settings/toggleOn.png"
    L2_3 = L0_1
    L2_3 = L2_3.localized
    L2_3 = L2_3.get
    L3_3 = "On"
    L2_3 = L2_3(L3_3)
    L3_3 = L6_2
    L3_3 = L3_3[A0_3]
    if L3_3 then
      L3_3 = L6_2
      L3_3 = L3_3[A0_3]
      L4_3 = L3_3
      L3_3 = L3_3.removeSelf
      L3_3(L4_3)
      L3_3 = L6_2
      L3_3[A0_3] = nil
    end
    L3_3 = L5_2
    L3_3 = L3_3[A0_3]
    if L3_3 then
      L3_3 = L5_2
      L3_3 = L3_3[A0_3]
      L4_3 = L3_3
      L3_3 = L3_3.removeEventListener
      L5_3 = "touch"
      L6_3 = L8_2
      L6_3 = L6_3[A0_3]
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = L5_2
      L3_3 = L3_3[A0_3]
      L4_3 = L3_3
      L3_3 = L3_3.removeSelf
      L3_3(L4_3)
      L3_3 = L5_2
      L3_3[A0_3] = nil
    end
    L3_3 = L6_2
    L4_3 = L0_1
    L4_3 = L4_3.newText
    L5_3 = {}
    L5_3.string = L2_3
    L5_3.size = 14
    L5_3.ax = 0
    L5_3.ay = 0.5
    L4_3 = L4_3(L5_3)
    L3_3[A0_3] = L4_3
    L3_3 = L6_2
    L3_3 = L3_3[A0_3]
    L3_3.x = 348
    L3_3 = L6_2
    L3_3 = L3_3[A0_3]
    L4_3 = A0_3 - 1
    L4_3 = L4_3 * 40
    L4_3 = 95 + L4_3
    L3_3.y = L4_3
    L3_3 = L7_2
    L3_3 = L3_3[A0_3]
    if L3_3 == 0 then
      L1_3 = "images/gui/settings/toggleOff.png"
      L3_3 = L6_2
      L3_3 = L3_3[A0_3]
      L4_3 = L0_1
      L4_3 = L4_3.localized
      L4_3 = L4_3.get
      L5_3 = "Off"
      L4_3 = L4_3(L5_3)
      L3_3.text = L4_3
      L3_3 = L6_2
      L3_3 = L3_3[A0_3]
      L3_3.x = 320
      L3_3 = L6_2
      L3_3 = L3_3[A0_3]
      L4_3 = L3_3
      L3_3 = L3_3.setFillColor
      L5_3 = 1
      L6_3 = 1
      L7_3 = 1
      L3_3(L4_3, L5_3, L6_3, L7_3)
    end
    L3_3 = L5_2
    L4_3 = display
    L4_3 = L4_3.newImageRect
    L5_3 = L1_3
    L6_3 = 62
    L7_3 = 34
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L3_3[A0_3] = L4_3
    L3_3 = L5_2
    L3_3 = L3_3[A0_3]
    L3_3.anchorX = 0.5
    L3_3 = L5_2
    L3_3 = L3_3[A0_3]
    L3_3.anchorY = 0
    L3_3 = L5_2
    L3_3 = L3_3[A0_3]
    L3_3.x = 340
    L3_3 = L5_2
    L3_3 = L3_3[A0_3]
    L4_3 = A0_3 - 1
    L4_3 = L4_3 * 40
    L4_3 = 79 + L4_3
    L3_3.y = L4_3
    L3_3 = L5_2
    L3_3 = L3_3[A0_3]
    L4_3 = L3_3
    L3_3 = L3_3.addEventListener
    L5_3 = "touch"
    L6_3 = L8_2
    L6_3 = L6_3[A0_3]
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = L2_2
    L4_3 = L3_3
    L3_3 = L3_3.insert
    L5_3 = L5_2
    L5_3 = L5_3[A0_3]
    L3_3(L4_3, L5_3)
    L3_3 = L2_2
    L4_3 = L3_3
    L3_3 = L3_3.insert
    L5_3 = L6_2
    L5_3 = L5_3[A0_3]
    L3_3(L4_3, L5_3)
  end
  
  function L18_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = "off"
    L2_3 = L7_2
    L2_3 = L2_3[A0_3]
    if L2_3 == 1 then
      L2_3 = L7_2
      L2_3[A0_3] = 0
    else
      L1_3 = "on"
      L2_3 = L7_2
      L2_3[A0_3] = 1
    end
    L2_3 = L0_1
    L2_3 = L2_3.analytics
    L2_3 = L2_3.newEvent
    L3_3 = "design"
    L4_3 = {}
    L5_3 = "notifications:changeState:"
    L6_3 = A0_3
    L7_3 = ":"
    L8_3 = L1_3
    L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3
    L4_3.event_id = L5_3
    L5_3 = L7_2
    L5_3 = L5_3[A0_3]
    L4_3.value = L5_3
    L5_3 = L0_1
    L5_3 = L5_3.config
    L5_3 = L5_3.fullVersion
    L4_3.area = L5_3
    L2_3(L3_3, L4_3)
    L2_3 = L17_2
    L3_3 = A0_3
    L2_3(L3_3)
    L2_3 = L0_1
    L2_3 = L2_3.database
    L2_3 = L2_3.setPushEnableStatus
    L3_3 = L7_2
    L3_3 = L3_3[1]
    L4_3 = L7_2
    L4_3 = L4_3[2]
    L5_3 = L7_2
    L5_3 = L5_3[3]
    L2_3(L3_3, L4_3, L5_3)
  end
  
  function L19_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L18_2
      L2_3 = 1
      L1_3(L2_3)
    end
    L1_3 = true
    return L1_3
  end
  
  L8_2[1] = L19_2
  
  function L19_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L18_2
      L2_3 = 2
      L1_3(L2_3)
    end
    L1_3 = true
    return L1_3
  end
  
  L8_2[2] = L19_2
  
  function L19_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L18_2
      L2_3 = 3
      L1_3(L2_3)
    end
    L1_3 = true
    return L1_3
  end
  
  L8_2[3] = L19_2
  
  function L19_2()
    local L0_3, L1_3, L2_3
    L0_3 = "off"
    L1_3 = L7_2
    L1_3 = L1_3[4]
    if L1_3 == 1 then
      L1_3 = L7_2
      L1_3[4] = 0
    else
      L0_3 = "on"
      L1_3 = L7_2
      L1_3[4] = 1
    end
    L1_3 = L17_2
    L2_3 = 4
    L1_3(L2_3)
    L1_3 = L0_1
    L1_3 = L1_3.database
    L1_3 = L1_3.setDropdownStatus
    L2_3 = L7_2
    L2_3 = L2_3[4]
    L1_3(L2_3)
  end
  
  function L20_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L19_2
      L1_3()
    end
    L1_3 = true
    return L1_3
  end
  
  L8_2[4] = L20_2
  
  function L20_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
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
    L1_3 = true
    return L1_3
  end
  
  L23_2 = L0_1
  L23_2 = L23_2.newButton
  L24_2 = {}
  L24_2.x = 390
  L24_2.y = 70
  L24_2.width = 43
  L24_2.height = 38
  L24_2.image = "images/gui/common/buttonClosePopupBrown.png"
  L24_2.onRelease = L20_2
  L23_2 = L23_2(L24_2)
  
  function L24_2()
    local L0_3, L1_3
    L0_3 = L4_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L4_2
      L0_3(L1_3)
      L0_3 = nil
      L4_2 = L0_3
    end
  end
  
  function L25_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L11_2
    L0_3(L1_3, L2_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L10_2
    L0_3(L1_3, L2_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L12_2
    L0_3(L1_3, L2_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L13_2
    L0_3(L1_3, L2_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L14_2
    L0_3(L1_3, L2_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L15_2
    L0_3(L1_3, L2_3)
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L16_2
    L0_3(L1_3, L2_3)
    L0_3 = 1
    L1_3 = L5_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L9_2
      L5_3 = L4_3
      L4_3 = L4_3.insert
      L6_3 = L5_2
      L6_3 = L6_3[L3_3]
      L4_3(L5_3, L6_3)
      L4_3 = L9_2
      L5_3 = L4_3
      L4_3 = L4_3.insert
      L6_3 = L6_2
      L6_3 = L6_3[L3_3]
      L4_3(L5_3, L6_3)
    end
    L0_3 = L9_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L23_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L9_2
    L0_3(L1_3, L2_3)
  end
  
  function L26_2(A0_3)
    local L1_3
  end
  
  function L27_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L21_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L10_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L22_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L28_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L0_1
    L0_3 = L0_3.comm
    L0_3 = L0_3.updatePushNotificationSettings
    L1_3 = L7_2
    L1_3 = L1_3[1]
    L2_3 = L7_2
    L2_3 = L2_3[2]
    L3_3 = L7_2
    L3_3 = L3_3[3]
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L23_2
    L0_3(L1_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L21_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L21_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = 1
    L1_3 = L8_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L5_2
      L4_3 = L4_3[L3_3]
      L5_3 = L4_3
      L4_3 = L4_3.removeEventListener
      L6_3 = "touch"
      L7_3 = L8_2
      L7_3 = L7_3[L3_3]
      L4_3(L5_3, L6_3, L7_3)
    end
    L0_3 = L10_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L22_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L24_2
    L0_3()
  end
  
  L2_1 = L28_2
  L28_2 = 1
  L29_2 = 4
  L30_2 = 1
  for L31_2 = L28_2, L29_2, L30_2 do
    L32_2 = L17_2
    L33_2 = L31_2
    L32_2(L33_2)
  end
  L28_2 = L25_2
  L28_2()
  L28_2 = L27_2
  L28_2()
  L28_2 = L0_1
  L28_2 = L28_2.commHttps
  L28_2 = L28_2.setCallback
  L29_2 = L26_2
  L28_2(L29_2)
  L28_2 = L0_1
  L28_2 = L28_2.bouncer
  L28_2 = L28_2.down
  L29_2 = L9_2
  L28_2(L29_2)
end

L1_1.create = L4_1

function L4_1(A0_2, A1_2)
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

L1_1.show = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    return
  end
  L3_2 = A0_2.view
  L4_2 = L3_1
  L4_2()
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
