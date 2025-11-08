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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = A0_2.view
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L4_2.anchorX = 0.5
  L4_2.anchorY = 0.5
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 * 0.5
  L4_2.x = L5_2
  L4_2.y = 180
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
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = "images/gui/ranking/prizesPopup.png"
  L8_2 = 351
  L9_2 = 262
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L6_2.anchorY = 0
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 * 0.5
  L6_2.x = L7_2
  L6_2.y = 0
  L7_2 = A1_2.params
  L7_2 = L7_2.prize
  L8_2 = L0_1
  L8_2 = L8_2.newText
  L9_2 = {}
  L10_2 = L0_1
  L10_2 = L10_2.localized
  L10_2 = L10_2.get
  L11_2 = "Weekly"
  L10_2 = L10_2(L11_2)
  L9_2.string = L10_2
  L10_2 = L6_2.x
  L9_2.x = L10_2
  L10_2 = L6_2.y
  L10_2 = L10_2 + 44
  L9_2.y = L10_2
  L9_2.size = 24
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
  L11_2 = L0_1
  L11_2 = L11_2.localized
  L11_2 = L11_2.get
  L12_2 = "OnlyQuick"
  L11_2 = L11_2(L12_2)
  L10_2.string = L11_2
  L11_2 = L6_2.x
  L10_2.x = L11_2
  L11_2 = L6_2.y
  L11_2 = L11_2 + 68
  L10_2.y = L11_2
  L10_2.size = 12
  L11_2 = {}
  L12_2 = 1
  L13_2 = 1
  L14_2 = 1
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L10_2.color = L11_2
  L9_2 = L9_2(L10_2)
  
  function L10_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = A0_3.width
    L3_3 = A1_3 / L3_3
    L4_3 = A0_3.height
    L4_3 = A2_3 / L4_3
    L5_3 = math
    L5_3 = L5_3.min
    L6_3 = L3_3
    L7_3 = L4_3
    L5_3 = L5_3(L6_3, L7_3)
    L6_3 = A0_3.width
    L6_3 = L5_3 * L6_3
    A0_3.width = L6_3
    L6_3 = A0_3.height
    L6_3 = L5_3 * L6_3
    A0_3.height = L6_3
  end
  
  function L11_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L3_3 = display
    L3_3 = L3_3.newGroup
    L3_3 = L3_3()
    L4_3 = L0_1
    L4_3 = L4_3.storeConfig
    L4_3 = L4_3.getItemCategory
    L5_3 = A0_3
    L4_3 = L4_3(L5_3)
    L5_3 = nil
    L6_3 = nil
    L7_3 = nil
    if L4_3 then
      L8_3 = nil
      if A0_3 == 1 then
        L8_3 = "images/gui/common/coin.png"
      else
        L9_3 = "images/gui/market/items/"
        L10_3 = L4_3
        L11_3 = "/"
        L12_3 = A0_3
        L13_3 = ".png"
        L8_3 = L9_3 .. L10_3 .. L11_3 .. L12_3 .. L13_3
      end
      if 1 < A1_3 then
        L9_3 = L0_1
        L9_3 = L9_3.newText
        L10_3 = {}
        L11_3 = "x "
        L12_3 = A1_3
        L11_3 = L11_3 .. L12_3
        L10_3.string = L11_3
        L10_3.size = 12
        L10_3.x = 30
        L10_3.y = 30
        L9_3 = L9_3(L10_3)
        L6_3 = L9_3
        L10_3 = L3_3
        L9_3 = L3_3.insert
        L11_3 = L6_3
        L9_3(L10_3, L11_3)
      end
      L9_3 = 80
      L10_3 = 80
      L11_3 = 50
      L12_3 = 20
      if A2_3 ~= 1 then
        L9_3 = 35
        L10_3 = 35
        L11_3 = 35
        L12_3 = 15
      end
      L13_3 = display
      L13_3 = L13_3.newImage
      L14_3 = L8_3
      L13_3 = L13_3(L14_3)
      L5_3 = L13_3
      L13_3 = L10_2
      L14_3 = L5_3
      L15_3 = L9_3
      L16_3 = L10_3
      L13_3(L14_3, L15_3, L16_3)
      L5_3.x = 30
      if A0_3 ~= 1 then
        L13_3 = L0_1
        L13_3 = L13_3.storeConfig
        L13_3 = L13_3.getItem
        L14_3 = A0_3
        L13_3 = L13_3(L14_3)
        L13_3 = L13_3.plate
        if L13_3 then
          L14_3 = display
          L14_3 = L14_3.newImageRect
          L15_3 = "images/gui/lobby/"
          L16_3 = L13_3
          L17_3 = ".png"
          L15_3 = L15_3 .. L16_3 .. L17_3
          L16_3 = L11_3
          L17_3 = L12_3
          L14_3 = L14_3(L15_3, L16_3, L17_3)
          L7_3 = L14_3
          L14_3 = L5_3.x
          L7_3.x = L14_3
          L14_3 = L5_3.y
          L15_3 = L5_3.height
          L15_3 = L15_3 * 0.5
          L14_3 = L14_3 + L15_3
          L14_3 = L14_3 + 2
          L7_3.y = L14_3
          L15_3 = L3_3
          L14_3 = L3_3.insert
          L16_3 = L7_3
          L14_3(L15_3, L16_3)
        end
      end
      L14_3 = L3_3
      L13_3 = L3_3.insert
      L15_3 = L5_3
      L13_3(L14_3, L15_3)
    end
    if A2_3 == 1 then
      L3_3.x = 125
      L3_3.y = 155
    elseif A2_3 == 2 then
      L3_3.x = 244
      L3_3.y = 120
    elseif A2_3 == 3 then
      L3_3.x = 330
      L3_3.y = 120
    elseif A2_3 == 4 then
      L3_3.x = 244
      L3_3.y = 214
    elseif A2_3 == 5 then
      L3_3.x = 330
      L3_3.y = 214
    end
    L8_3 = L3_2
    L9_3 = L8_3
    L8_3 = L8_3.insert
    L10_3 = L3_3
    L8_3(L9_3, L10_3)
  end
  
  function L12_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
  L13_2 = L0_1
  L13_2 = L13_2.newButton
  L14_2 = {}
  L14_2.image = "images/gui/common/buttonClosePopup.png"
  L14_2.onRelease = L12_2
  L14_2.width = 43
  L14_2.height = 38
  L15_2 = L6_2.x
  L15_2 = L15_2 + 156
  L14_2.x = L15_2
  L15_2 = L6_2.y
  L15_2 = L15_2 + 50
  L14_2.y = L15_2
  L13_2 = L13_2(L14_2)
  
  function L14_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L7_2
    if L0_3 then
      L0_3 = 1
      L1_3 = L7_2
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L11_2
        L5_3 = L7_2
        L5_3 = L5_3[L3_3]
        L5_3 = L5_3.i
        L6_3 = L7_2
        L6_3 = L6_3[L3_3]
        L6_3 = L6_3.a
        L7_3 = L3_3
        L4_3(L5_3, L6_3, L7_3)
      end
    end
  end
  
  function L15_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L5_2
    L0_3(L1_3, L2_3)
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L6_2
    L0_3(L1_3, L2_3)
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L13_2
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
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L3_2
    L0_3(L1_3, L2_3)
    L0_3 = L14_2
    L0_3()
  end
  
  function L16_2(A0_3)
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
  
  function L17_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
    end
    L1_3 = true
    return L1_3
  end
  
  function L18_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L16_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L17_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L19_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L13_2
    L0_3(L1_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L16_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L17_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L2_1 = L19_2
  L19_2 = L15_2
  L19_2()
  L19_2 = L18_2
  L19_2()
  L19_2 = L0_1
  L19_2 = L19_2.bouncer
  L19_2 = L19_2.down
  L20_2 = L3_2
  L19_2(L20_2)
end

L1_1.create = L5_1

function L5_1(A0_2, A1_2)
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
