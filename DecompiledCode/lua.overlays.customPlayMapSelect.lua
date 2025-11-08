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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L2_2 = A1_2.params
  L2_2 = L2_2.setGameModeFunction
  L3_2 = A0_2.view
  L4_2 = require
  L5_2 = "lua.modules.tableHelper"
  L4_2 = L4_2(L5_2)
  L5_2 = nil
  L6_2 = display
  L6_2 = L6_2.newRect
  L7_2 = 0
  L8_2 = 0
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2.anchorX = 0
  L6_2.anchorY = 0
  L8_2 = L6_2
  L7_2 = L6_2.setFillColor
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0.5882352941176471
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2.x = 0
  L6_2.y = 0
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = "images/gui/customplay/settingsWindow.png"
  L9_2 = 251
  L10_2 = 320
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L7_2.x = 240
  L7_2.y = 160
  L8_2 = display
  L8_2 = L8_2.newImageRect
  L9_2 = "images/gui/customplay/settingsHeader.png"
  L10_2 = 226
  L11_2 = 36
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L8_2.anchorY = 0
  L8_2.x = 240
  L8_2.y = 0
  L9_2 = L0_1
  L9_2 = L9_2.newText
  L10_2 = {}
  L11_2 = L0_1
  L11_2 = L11_2.localized
  L11_2 = L11_2.get
  L12_2 = "SelectLevel"
  L11_2 = L11_2(L12_2)
  L10_2.string = L11_2
  L11_2 = L7_2.x
  L10_2.x = L11_2
  L10_2.y = 16
  L10_2.size = 20
  L11_2 = {}
  L12_2 = 1
  L13_2 = 1
  L14_2 = 1
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L10_2.color = L11_2
  L9_2 = L9_2(L10_2)
  
  function L10_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
  function L11_2(A0_3)
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
  
  function L12_2(A0_3)
    local L1_3
    L1_3 = true
    return L1_3
  end
  
  L13_2 = L0_1
  L13_2 = L13_2.newButton
  L14_2 = {}
  L14_2.x = 330
  L14_2.y = 16
  L14_2.width = 43
  L14_2.height = 38
  L14_2.image = "images/gui/common/buttonClosePopupRed.png"
  L14_2.onRelease = L10_2
  L13_2 = L13_2(L14_2)
  
  function L14_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L0_1
    L1_3 = L1_3.hideOverlay
    L1_3()
    if A0_3 then
      L1_3 = L2_2
      L2_3 = 0
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
  end
  
  L15_2 = L4_2.new
  L16_2 = 150
  L17_2 = 36
  L18_2 = 180
  L19_2 = 284
  L20_2 = 100
  L21_2 = nil
  L22_2 = "map"
  L23_2 = L14_2
  L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L5_2 = L15_2
  L15_2 = L5_2.createTable
  L16_2 = L0_1
  L16_2 = L16_2.data
  L16_2 = L16_2.mapInfo
  L17_2 = L3_2
  L15_2(L16_2, L17_2)
  
  function L15_2()
    local L0_3, L1_3, L2_3
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L6_2
    L0_3(L1_3, L2_3)
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L7_2
    L0_3(L1_3, L2_3)
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L5_2
    L2_3 = L2_3.getTable
    L2_3 = L2_3()
    L0_3(L1_3, L2_3)
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L8_2
    L0_3(L1_3, L2_3)
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L9_2
    L0_3(L1_3, L2_3)
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L13_2
    L0_3(L1_3, L2_3)
  end
  
  function L16_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L11_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L7_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L12_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L17_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L11_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L7_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L12_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L5_2
    L0_3 = L0_3.cleanTable
    L0_3()
  end
  
  L2_1 = L17_2
  L17_2 = L15_2
  L17_2()
  L17_2 = L16_2
  L17_2()
end

L1_1.create = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
  elseif L3_2 == "did" then
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
end

L1_1.show = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
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
        L6_2 = L4_1
        L4_2(L5_2, L6_2)
        L4_2 = nil
        L4_1 = L4_2
      end
    end
  end
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
