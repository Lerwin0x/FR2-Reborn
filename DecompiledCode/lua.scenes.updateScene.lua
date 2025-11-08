local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.newScene
L1_1 = L1_1()
L2_1 = nil

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2.view
  L3_2 = require
  L4_2 = "lua.modules.androidBackButton"
  L3_2 = L3_2(L4_2)
  L4_2 = require
  L5_2 = "lua.modules.platformStoreButtonFunction"
  L4_2 = L4_2(L5_2)
  L5_2 = L0_1
  L5_2.cheater = false
  L5_2 = L0_1
  L5_2 = L5_2.backgrounds
  L5_2 = L5_2.getBlurredBackground
  L5_2 = L5_2()
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = "images/gui/common/logo.png"
  L8_2 = 224
  L9_2 = 135
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 * 0.5
  L6_2.x = L7_2
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 * 0.25
  L6_2.y = L7_2
  L7_2 = L0_1
  L7_2 = L7_2.newText
  L8_2 = {}
  L9_2 = L0_1
  L9_2 = L9_2.localized
  L9_2 = L9_2.get
  L10_2 = "PleaseUpdateApp"
  L9_2 = L9_2(L10_2)
  L8_2.string = L9_2
  L8_2.size = 20
  L8_2.x = 240
  L8_2.y = 200
  L7_2 = L7_2(L8_2)
  L8_2 = L0_1
  L8_2 = L8_2.newButton
  L9_2 = {}
  L9_2.image = "images/gui/common/buttonTextA.png"
  L10_2 = L0_1
  L10_2 = L10_2.localized
  L10_2 = L10_2.get
  L11_2 = "Update"
  L10_2 = L10_2(L11_2)
  L9_2.text = L10_2
  L10_2 = L4_2.toPlatformStoreButton
  L9_2.onRelease = L10_2
  L9_2.width = 126
  L9_2.height = 40
  L10_2 = display
  L10_2 = L10_2.contentWidth
  L10_2 = L10_2 * 0.5
  L9_2.x = L10_2
  L9_2.y = 250
  L8_2 = L8_2(L9_2)
  
  function L9_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L5_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L6_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L8_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L7_2
    L0_3(L1_3, L2_3)
  end
  
  function L10_2()
    local L0_3, L1_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L8_2
    L0_3(L1_3)
    L0_3 = L3_2
    L0_3 = L0_3.removeBackButton
    L0_3()
  end
  
  L2_1 = L10_2
  L10_2 = L9_2
  L10_2()
  L10_2 = L3_2.addBackButton
  L10_2()
  L10_2 = L0_1
  L10_2 = L10_2.comm
  L10_2 = L10_2.stopTCPSocial
  L11_2 = true
  L10_2(L11_2)
end

L1_1.create = L3_1

function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
  elseif L2_2 == "did" then
  end
end

L1_1.show = L3_1

function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
  elseif L2_2 == "did" then
  end
end

L1_1.hide = L3_1

function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = L2_1
  L2_2()
end

L1_1.destroy = L3_1
L4_1 = L1_1
L3_1 = L1_1.addEventListener
L5_1 = "create"
L6_1 = L1_1
L3_1(L4_1, L5_1, L6_1)
L4_1 = L1_1
L3_1 = L1_1.addEventListener
L5_1 = "show"
L6_1 = L1_1
L3_1(L4_1, L5_1, L6_1)
L4_1 = L1_1
L3_1 = L1_1.addEventListener
L5_1 = "hide"
L6_1 = L1_1
L3_1(L4_1, L5_1, L6_1)
L4_1 = L1_1
L3_1 = L1_1.addEventListener
L5_1 = "destroy"
L6_1 = L1_1
L3_1(L4_1, L5_1, L6_1)
return L1_1
