local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.newScene
L1_1 = L1_1()
L2_1 = nil
L3_1 = nil

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = A1_2.params
  L2_2 = L2_2.setGameModeFunction
  L3_2 = A0_2.view
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = "images/gui/common/black.png"
  L7_2 = 480
  L8_2 = 320
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 * 0.5
  L5_2.x = L6_2
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 * 0.5
  L5_2.y = L6_2
  L7_2 = L3_2
  L6_2 = L3_2.insert
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = "images/gui/customplay/popupWindow.png"
  L8_2 = 211
  L9_2 = 161
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L6_2.anchorY = 0
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 * 0.5
  L6_2.x = L7_2
  L6_2.y = 0
  L7_2 = L0_1
  L7_2 = L7_2.newText
  L8_2 = {}
  L9_2 = L0_1
  L9_2 = L9_2.localized
  L9_2 = L9_2.get
  L10_2 = "Select"
  L9_2 = L9_2(L10_2)
  L8_2.string = L9_2
  L9_2 = L6_2.x
  L8_2.x = L9_2
  L9_2 = L6_2.y
  L9_2 = L9_2 + 64
  L8_2.y = L9_2
  L8_2.size = 20
  L9_2 = {}
  L10_2 = 1
  L11_2 = 1
  L12_2 = 1
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L8_2.color = L9_2
  L7_2 = L7_2(L8_2)
  L8_2 = L0_1
  L8_2 = L8_2.newText
  L9_2 = {}
  L9_2.string = "game mode"
  L10_2 = L6_2.x
  L9_2.x = L10_2
  L10_2 = L6_2.y
  L10_2 = L10_2 + 78
  L9_2.y = L10_2
  L9_2.size = 16
  L10_2 = {}
  L11_2 = 1
  L12_2 = 1
  L13_2 = 1
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L9_2.color = L10_2
  L8_2 = L8_2(L9_2)
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = L2_2
    L1_3 = 1
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
  L10_2 = L0_1
  L10_2 = L10_2.newButton
  L11_2 = {}
  L11_2.image = "images/gui/customplay/buttonQuickplay.png"
  L11_2.onRelease = L9_2
  L12_2 = {}
  L13_2 = L0_1
  L13_2 = L13_2.localized
  L13_2 = L13_2.get
  L14_2 = "QuickPlay"
  L13_2 = L13_2(L14_2)
  L12_2.string = L13_2
  L12_2.x = 0
  L12_2.y = 10
  L12_2.size = 13
  L11_2.text = L12_2
  L11_2.width = 75
  L11_2.height = 48
  L12_2 = L6_2.x
  L12_2 = L12_2 - 50
  L11_2.x = L12_2
  L12_2 = L6_2.y
  L12_2 = L12_2 + 120
  L11_2.y = L12_2
  L10_2 = L10_2(L11_2)
  
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = {}
    L0_3.isModal = true
    L1_3 = {}
    L2_3 = L2_2
    L1_3.setGameModeFunction = L2_3
    L0_3.params = L1_3
    L1_3 = L0_1
    L1_3 = L1_3.showOverlay
    L2_3 = "lua.overlays.customPlayMapSelect"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  
  L12_2 = L0_1
  L12_2 = L12_2.newButton
  L13_2 = {}
  L13_2.image = "images/gui/customplay/buttonCustom.png"
  L13_2.onRelease = L11_2
  L14_2 = {}
  L15_2 = L0_1
  L15_2 = L15_2.localized
  L15_2 = L15_2.get
  L16_2 = "CustomMap"
  L15_2 = L15_2(L16_2)
  L14_2.string = L15_2
  L14_2.x = 0
  L14_2.y = 10
  L14_2.size = 12
  L13_2.text = L14_2
  L13_2.width = 75
  L13_2.height = 48
  L14_2 = L6_2.x
  L14_2 = L14_2 + 50
  L13_2.x = L14_2
  L14_2 = L6_2.y
  L14_2 = L14_2 + 120
  L13_2.y = L14_2
  L12_2 = L12_2(L13_2)
  
  function L13_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
  L14_2 = L0_1
  L14_2 = L14_2.newButton
  L15_2 = {}
  L15_2.image = "images/gui/common/buttonClosePopupBrown.png"
  L15_2.onRelease = L13_2
  L15_2.width = 43
  L15_2.height = 38
  L16_2 = L6_2.x
  L16_2 = L16_2 + 90
  L15_2.x = L16_2
  L16_2 = L6_2.y
  L16_2 = L16_2 + 80
  L15_2.y = L16_2
  L14_2 = L14_2(L15_2)
  
  function L15_2(A0_3)
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
  
  function L16_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
    end
    L1_3 = true
    return L1_3
  end
  
  function L17_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L15_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L16_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L18_2()
    local L0_3, L1_3, L2_3
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L6_2
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
    L2_3 = L14_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L8_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L7_2
    L0_3(L1_3, L2_3)
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L4_2
    L0_3(L1_3, L2_3)
  end
  
  function L19_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L10_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L12_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L14_2
    L0_3(L1_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L15_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L16_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L2_1 = L19_2
  L19_2 = L18_2
  L19_2()
  L19_2 = L0_1
  L19_2 = L19_2.bouncer
  L19_2 = L19_2.down
  L20_2 = L4_2
  L19_2(L20_2)
  L19_2 = L17_2
  L19_2()
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
