local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "spine-corona.monsterLoader"
L2_1 = L2_1(L3_1)
L3_1 = nil
L4_1 = nil
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = nil
L14_1 = nil
L15_1 = 0
L16_1 = -20

function L17_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.phase
  if L1_2 == "ended" then
    L1_2 = L9_1
    if L1_2 then
      L1_2 = L8_1
      L1_2()
      L1_2 = L12_1
      if L1_2 then
        L1_2 = L12_1
        L1_2 = L1_2()
        if not L1_2 then
          L2_2 = nil
          L12_1 = L2_2
        end
      end
    end
  end
  L1_2 = true
  return L1_2
end

function L18_1()
  local L0_2, L1_2
  L12_1 = L0_2
  L0_2 = L8_1
  L0_2()
end

function L19_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L0_2.customOverlayActive = false
end

function L8_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L6_1
  if L0_2 then
    L0_2 = L6_1
    L1_2 = L0_2
    L0_2 = L0_2.removeEventListener
    L2_2 = "touch"
    L3_2 = L17_1
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = L6_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L6_1 = L0_2
  end
  L0_2 = transition
  L0_2 = L0_2.cancel
  L1_2 = "helperTransition"
  L0_2(L1_2)
  L0_2 = L10_1
  if L0_2 then
    L0_2 = L10_1
    L0_2 = L0_2.clean
    L0_2()
    L0_2 = nil
    L10_1 = L0_2
  end
  L0_2 = L3_1
  if L0_2 then
    L0_2 = L3_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L3_1 = L0_2
  end
  L0_2 = L5_1
  if L0_2 then
    L0_2 = L5_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L5_1 = L0_2
  end
  L0_2 = L7_1
  if L0_2 then
    L0_2 = L7_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L7_1 = L0_2
  end
  L0_2 = L14_1
  if L0_2 then
    L0_2 = L14_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L14_1 = L0_2
  end
  L0_2 = L4_1
  if L0_2 then
    L0_2 = L4_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L4_1 = L0_2
  end
  L0_2 = timer
  L0_2 = L0_2.performWithDelay
  L1_2 = 400
  L2_2 = L19_1
  L3_2 = 1
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L13_1 = L0_2
end

function L20_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L6_1
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = "touch"
  L3_2 = L17_1
  L0_2(L1_2, L2_2, L3_2)
end

function L21_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = L8_1
  L4_2()
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L3_1 = L4_2
  L4_2 = L13_1
  if L4_2 then
    L4_2 = timer
    L4_2 = L4_2.cancel
    L5_2 = L13_1
    L4_2(L5_2)
    L4_2 = nil
    L13_1 = L4_2
  end
  L4_2 = A0_2
  if L4_2 == nil then
    L5_2 = L1_1
    L5_2 = L5_2.getText
    L6_2 = "SOMETHING WENT WRONG"
    L5_2(L6_2)
  end
  L5_2 = display
  L5_2 = L5_2.newRect
  L6_2 = 0
  L7_2 = 0
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_1 = L5_2
  L5_2 = L6_1
  L5_2.anchorX = 0
  L5_2 = L6_1
  L5_2.anchorY = 0
  L5_2 = L6_1
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0.5882352941176471
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = L6_1
  L5_2.x = 0
  L5_2 = L6_1
  L5_2.y = 0
  L5_2 = L2_1
  L5_2 = L5_2.new
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L10_1 = L5_2
  L5_2 = L10_1
  L5_2 = L5_2.getGroup
  L5_2 = L5_2()
  L11_1 = L5_2
  L5_2 = L11_1
  L5_2.xScale = 0.75
  L5_2 = L11_1
  L5_2.yScale = 0.75
  L5_2 = L11_1
  L5_2.x = -200
  L5_2 = L11_1
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 + 25
  L5_2.y = L6_2
  L5_2 = L11_1
  L5_2.anchorX = 0
  L5_2 = L11_1
  L5_2.anchorY = 1
  if not A3_2 then
    L5_2 = L11_1
    L6_2 = L11_1
    L6_2 = L6_2.width
    L6_2 = L6_2 * 0.25
    L6_2 = L6_2 + 10
    L5_2.x = L6_2
  end
  L5_2 = 80
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = "images/gui/tutorial/helper/bubble2.png"
  L8_2 = 445
  L9_2 = 158
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_1 = L6_2
  L6_2 = L5_1
  L6_2.anchorX = 0
  L6_2 = L5_1
  L6_2.anchorY = 1
  L6_2 = L5_1
  L7_2 = L6_2
  L6_2 = L6_2.scale
  L8_2 = 0.05
  L9_2 = 0.5
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = L5_1
  L6_2.isVisible = false
  L6_2 = L3_1
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L5_1
  L6_2(L7_2, L8_2)
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = "images/gui/tutorial/helper/bubble_Arrow.png"
  L8_2 = 53
  L9_2 = 47
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L14_1 = L6_2
  L6_2 = L14_1
  L6_2.anchorX = 0.5
  L6_2 = L14_1
  L6_2.anchorY = 0.5
  L6_2 = L14_1
  L7_2 = L6_2
  L6_2 = L6_2.scale
  L8_2 = 0.05
  L9_2 = 0.5
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = L14_1
  L6_2.isVisible = false
  L6_2 = L14_1
  L6_2.x = -3
  L6_2 = L14_1
  L6_2.y = -30
  L6_2 = L3_1
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L14_1
  L6_2(L7_2, L8_2)
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = "images/gui/common/buttonClosePopup.png"
  L8_2 = 86
  L9_2 = 76
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_1 = L6_2
  L6_2 = L7_1
  L6_2.anchorX = 0.5
  L6_2 = L7_1
  L6_2.anchorY = 0.5
  L6_2 = L7_1
  L7_2 = L6_2
  L6_2 = L6_2.scale
  L8_2 = 0.25
  L9_2 = 0.25
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = L7_1
  L6_2.alpha = 0
  L6_2 = L7_1
  L7_2 = L5_1
  L7_2 = L7_2.width
  L7_2 = L7_2 * 0.5
  L7_2 = L7_2 - 8
  L6_2.x = L7_2
  L6_2 = L7_1
  L7_2 = L5_1
  L7_2 = L7_2.height
  L7_2 = -L7_2
  L7_2 = L7_2 * 0.5
  L7_2 = L7_2 + 8
  L6_2.y = L7_2
  L6_2 = L3_1
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L7_1
  L6_2(L7_2, L8_2)
  L6_2 = L3_1
  L6_2.x = L5_2
  L6_2 = L3_1
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L6_2.y = L7_2
  L6_2 = L1_1
  L6_2 = L6_2.newText
  L7_2 = {}
  L7_2.string = L4_2
  L7_2.size = 14
  L8_2 = {}
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L7_2.color = L8_2
  L7_2.width = 180
  L7_2.align = "center"
  L6_2 = L6_2(L7_2)
  L4_1 = L6_2
  L6_2 = L4_1
  L6_2.anchorX = 0.5
  L6_2 = L4_1
  L6_2.anchorY = 0.5
  L6_2 = L4_1
  L6_2.isVisible = false
  L6_2 = L4_1
  L6_2.alpha = 0
  L6_2 = L4_1
  L6_2.xScale = 0.01
  L6_2 = L4_1
  L6_2.yScale = 0.01
  L6_2 = L4_1
  L6_2.x = 111.25
  L6_2 = L4_1
  L6_2.y = -39.5
  L6_2 = L3_1
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L4_1
  L6_2(L7_2, L8_2)
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L4_1
    L0_3.isVisible = true
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L4_1
    L2_3 = {}
    L2_3.time = 300
    L2_3.alpha = 1
    L2_3.xScale = 1
    L2_3.yScale = 1
    L3_3 = easing
    L3_3 = L3_3.outCubic
    L2_3.transition = L3_3
    L2_3.tag = "helperTransition"
    L0_3(L1_3, L2_3)
  end
  
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L11_1
    if L0_3 then
      L0_3 = L5_1
      if L0_3 then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L0_3 = L5_1
    L0_3.isVisible = true
    L0_3 = L5_1
    L0_3.x = 0
    L0_3 = L5_1
    L0_3.y = 0
    L0_3 = L14_1
    L0_3.isVisible = true
    L0_3 = 0
    L1_3 = transition
    L1_3 = L1_3.to
    L2_3 = L5_1
    L3_3 = {}
    L3_3.time = 50
    L4_3 = L6_2
    L3_3.onComplete = L4_3
    L3_3.tag = "helperTransition"
    L1_3(L2_3, L3_3)
    L1_3 = transition
    L1_3 = L1_3.to
    L2_3 = L5_1
    L3_3 = {}
    L3_3.time = 300
    L3_3.x = L0_3
    L3_3.xScale = 0.5
    L3_3.yScale = 0.5
    L4_3 = easing
    L4_3 = L4_3.outCubic
    L3_3.transition = L4_3
    L3_3.tag = "helperTransition"
    L1_3(L2_3, L3_3)
    L1_3 = transition
    L1_3 = L1_3.to
    L2_3 = L14_1
    L3_3 = {}
    L3_3.time = 300
    L3_3.xScale = 0.5
    L3_3.yScale = 0.5
    L4_3 = easing
    L4_3 = L4_3.outBounce
    L3_3.transition = L4_3
    L3_3.tag = "helperTransition"
    L1_3(L2_3, L3_3)
    L1_3 = transition
    L1_3 = L1_3.to
    L2_3 = L7_1
    L3_3 = {}
    L3_3.time = 200
    L3_3.alpha = 0.5
    L3_3.tag = "helperTransition"
    L3_3.delay = 500
    L1_3(L2_3, L3_3)
  end
  
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L11_1
    L2_3 = {}
    L2_3.time = 300
    L3_3 = L5_2
    L3_3 = L3_3 * 0.25
    L3_3 = L3_3 + 10
    L2_3.x = L3_3
    L3_3 = easing
    L3_3 = L3_3.outCubic
    L2_3.transition = L3_3
    L3_3 = L7_2
    L2_3.onComplete = L3_3
    L2_3.tag = "helperTransition"
    L0_3(L1_3, L2_3)
  end
  
  L10_2 = A1_2
  L9_2 = A1_2.insert
  L11_2 = L6_1
  L9_2(L10_2, L11_2)
  L10_2 = A1_2
  L9_2 = A1_2.insert
  L11_2 = L11_1
  L9_2(L10_2, L11_2)
  L10_2 = A1_2
  L9_2 = A1_2.insert
  L11_2 = L3_1
  L9_2(L10_2, L11_2)
  L9_2 = false
  L9_1 = L9_2
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = true
    L9_1 = L0_3
  end
  
  L10_2 = timer
  L10_2 = L10_2.performWithDelay
  L11_2 = 1000
  L12_2 = L9_2
  L13_2 = 1
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = L20_1
  L10_2()
  L10_2 = L1_1
  L10_2.customOverlayActive = true
  if A3_2 then
    L10_2 = L8_2
    L10_2()
  else
    L10_2 = L7_2
    L10_2()
  end
end

function L22_1(A0_2)
  local L1_2
  L12_1 = A0_2
end

L0_1.createMessage = L21_1
L0_1.setOnCloseFunction = L22_1
L0_1.cleanOldOverlay = L8_1
return L0_1
