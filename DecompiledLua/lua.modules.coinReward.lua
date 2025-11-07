local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = {}
L3_1 = 1
L4_1 = 0
L5_1 = 0
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L3_1 = {}
L4_1 = 1
L5_1 = 1
L6_1 = 1
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 == 1 then
      L1_3 = 130
      L2_3 = 128
    elseif A0_3 == 2 then
      L1_3 = 46
      L2_3 = 165
    elseif A0_3 == 3 then
      L1_3 = 220
      L2_3 = 172
    elseif A0_3 == 4 then
      L1_3 = 310
      L2_3 = 212
    elseif A0_3 == 5 then
      L1_3 = 400
      L2_3 = 216
    end
    L3_3 = L1_3
    L4_3 = L2_3 + 0
    return L3_3, L4_3
  end
  
  L2_2 = 0
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = A0_2.value
  if L7_2 then
    L6_2 = A0_2.value
  end
  L7_2 = A0_2.startPosition
  if L7_2 then
    L7_2 = L1_2
    L8_2 = A0_2.startPosition
    L7_2, L8_2 = L7_2(L8_2)
    L3_2 = L8_2
    L2_2 = L7_2
  end
  L7_2 = A0_2.targetPosition
  if L7_2 then
    L7_2 = L1_2
    L8_2 = A0_2.targetPosition
    L7_2, L8_2 = L7_2(L8_2)
    L5_2 = L8_2
    L4_2 = L7_2
  end
  L7_2 = A0_2.targetX
  if L7_2 then
    L4_2 = A0_2.targetX
  end
  L7_2 = A0_2.targetY
  if L7_2 then
    L5_2 = A0_2.targetY
  end
  L7_2 = A0_2.startX
  if L7_2 then
    L2_2 = A0_2.startX
  end
  L7_2 = A0_2.startY
  if L7_2 then
    L3_2 = A0_2.startY
  end
  L7_2 = display
  L7_2 = L7_2.newGroup
  L7_2 = L7_2()
  L8_2 = nil
  L9_2 = nil
  L10_2 = false
  L11_2 = {}
  
  function L12_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L3_3 = L10_2
    if L3_3 then
      return
    end
    L3_3 = display
    L3_3 = L3_3.newImageRect
    L4_3 = "images/gui/common/shine.png"
    L5_3 = 39.5
    L6_3 = 39
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L3_3.anchorX = 0.5
    L3_3.anchorY = 0.5
    L5_3 = L3_3
    L4_3 = L3_3.scale
    L6_3 = A2_3
    L7_3 = A2_3
    L4_3(L5_3, L6_3, L7_3)
    L3_3.x = A0_3
    L3_3.y = A1_3
    L4_3 = math
    L4_3 = L4_3.random
    L5_3 = 360
    L4_3 = L4_3(L5_3)
    L3_3.rotation = L4_3
    L4_3 = L7_2
    L5_3 = L4_3
    L4_3 = L4_3.insert
    L6_3 = L3_3
    L4_3(L5_3, L6_3)
    L5_3 = L3_3
    L4_3 = L3_3.toBack
    L4_3(L5_3)
    
    function L4_3()
      local L0_4, L1_4
      L0_4 = L3_3
      if L0_4 then
        L0_4 = L3_3
        L0_4 = L0_4.removeSelf
        if L0_4 then
          L0_4 = L3_3
          L1_4 = L0_4
          L0_4 = L0_4.removeSelf
          L0_4(L1_4)
          L0_4 = nil
          L3_3 = L0_4
        end
      end
    end
    
    L5_3 = L11_2
    L6_3 = L11_2
    L6_3 = #L6_3
    L6_3 = L6_3 + 1
    L7_3 = transition
    L7_3 = L7_3.to
    L8_3 = L3_3
    L9_3 = {}
    L9_3.time = 600
    L10_3 = easing
    L10_3 = L10_3.easeInOutElastic
    L9_3.transition = L10_3
    L9_3.delta = true
    L9_3.alpha = -0.5
    L10_3 = L3_3.xScale
    L10_3 = -L10_3
    L10_3 = L10_3 + 0.1
    L9_3.xScale = L10_3
    L10_3 = L3_3.yScale
    L10_3 = -L10_3
    L10_3 = L10_3 + 0.1
    L9_3.yScale = L10_3
    L9_3.onComplete = L4_3
    L9_3.onCancel = L4_3
    L7_3 = L7_3(L8_3, L9_3)
    L5_3[L6_3] = L7_3
  end
  
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = L10_2
    if L0_3 then
      return
    end
    L0_3 = nil
    L1_3 = A0_2
    L1_3 = L1_3.imageName
    if L1_3 then
      L1_3 = display
      L1_3 = L1_3.newImageRect
      L2_3 = "images/gui/common/"
      L3_3 = A0_2
      L3_3 = L3_3.imageName
      L4_3 = ".png"
      L2_3 = L2_3 .. L3_3 .. L4_3
      L3_3 = 14
      L4_3 = 14
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      L0_3 = L1_3
    else
      L1_3 = display
      L1_3 = L1_3.newImageRect
      L2_3 = "images/gui/common/coin.png"
      L3_3 = 14
      L4_3 = 14
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      L0_3 = L1_3
    end
    
    function L1_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L0_3
      if L0_4 then
        L0_4 = L0_3
        L0_4 = L0_4.removeSelf
        if L0_4 then
          L0_4 = L12_2
          L1_4 = L0_3
          L1_4 = L1_4.x
          L1_4 = L1_4 - 7
          L2_4 = L0_3
          L2_4 = L2_4.y
          L2_4 = L2_4 + 7
          L3_4 = 0.7
          L0_4(L1_4, L2_4, L3_4)
          L0_4 = L0_3
          L1_4 = L0_4
          L0_4 = L0_4.removeSelf
          L0_4(L1_4)
          L0_4 = nil
          L0_3 = L0_4
        end
      end
    end
    
    L0_3.anchorX = 1
    L0_3.anchorY = 0
    L2_3 = 0.7
    L4_3 = L0_3
    L3_3 = L0_3.scale
    L5_3 = L2_3
    L6_3 = L2_3
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = math
    L3_3 = L3_3.random
    L4_3 = -20
    L5_3 = 10
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = A0_2
    L4_3 = L4_3.radial
    if L4_3 then
      L4_3 = math
      L4_3 = L4_3.random
      L4_3 = L4_3()
      L4_3 = L4_3 * 3.145
      L4_3 = L4_3 * 2
      L5_3 = math
      L5_3 = L5_3.cos
      L6_3 = L4_3
      L5_3 = L5_3(L6_3)
      L6_3 = A0_2
      L6_3 = L6_3.radial
      L5_3 = L5_3 * L6_3
      L0_3.x = L5_3
      L5_3 = math
      L5_3 = L5_3.sin
      L6_3 = L4_3
      L5_3 = L5_3(L6_3)
      L6_3 = A0_2
      L6_3 = L6_3.radial
      L5_3 = L5_3 * L6_3
      L0_3.y = L5_3
    else
      L4_3 = L2_2
      L4_3 = L4_3 + L3_3
      L0_3.x = L4_3
      L4_3 = L3_2
      L0_3.y = L4_3
    end
    L4_3 = math
    L4_3 = L4_3.random
    L5_3 = 0.9
    L6_3 = 1
    L4_3 = L4_3(L5_3, L6_3)
    L5_3 = A0_2
    L5_3 = L5_3.transitionTime
    if not L5_3 then
      L5_3 = 700
    end
    L6_3 = easing
    L6_3 = L6_3.linear
    L7_3 = easing
    L7_3 = L7_3.outInCubic
    if L3_3 < 0 then
      L8_3 = easing
      L7_3 = L8_3.inOutCubic
    end
    L8_3 = L7_2
    L9_3 = L8_3
    L8_3 = L8_3.insert
    L10_3 = L0_3
    L8_3(L9_3, L10_3)
    L8_3 = L12_2
    L9_3 = L0_3.x
    L10_3 = L0_3.y
    L11_3 = 1
    L8_3(L9_3, L10_3, L11_3)
    L8_3 = L11_2
    L9_3 = L11_2
    L9_3 = #L9_3
    L9_3 = L9_3 + 1
    L10_3 = transition
    L10_3 = L10_3.to
    L11_3 = L0_3
    L12_3 = {}
    L12_3.time = L5_3
    L12_3.xScale = L4_3
    L12_3.yScale = L4_3
    L13_3 = easing
    L13_3 = L13_3.outBack
    L12_3.transition = L13_3
    L10_3 = L10_3(L11_3, L12_3)
    L8_3[L9_3] = L10_3
    L8_3 = L11_2
    L9_3 = L11_2
    L9_3 = #L9_3
    L9_3 = L9_3 + 1
    L10_3 = transition
    L10_3 = L10_3.to
    L11_3 = L0_3
    L12_3 = {}
    L12_3.time = L5_3
    L13_3 = L5_2
    L12_3.y = L13_3
    L12_3.transition = L6_3
    L12_3.onComplete = L1_3
    L12_3.onCancel = L1_3
    L10_3 = L10_3(L11_3, L12_3)
    L8_3[L9_3] = L10_3
    L8_3 = L11_2
    L9_3 = L11_2
    L9_3 = #L9_3
    L9_3 = L9_3 + 1
    L10_3 = transition
    L10_3 = L10_3.to
    L11_3 = L0_3
    L12_3 = {}
    L12_3.time = L5_3
    L13_3 = L4_2
    L12_3.x = L13_3
    L12_3.transition = L7_3
    L10_3 = L10_3(L11_3, L12_3)
    L8_3[L9_3] = L10_3
  end
  
  function L14_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = 50
    L1_3 = 30
    L2_3 = L6_2
    if L1_3 > L2_3 then
      L1_3 = L6_2
    end
    if L1_3 <= 0 then
      return
    end
    L2_3 = timer
    L2_3 = L2_3.performWithDelay
    L3_3 = L0_3
    L4_3 = L13_2
    L5_3 = L1_3
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L9_2 = L2_3
  end
  
  L7_2.animateCoins = L14_2
  
  function L15_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = true
    L10_2 = L0_3
    L0_3 = L8_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L8_2
      L0_3(L1_3)
      L0_3 = nil
      L8_2 = L0_3
    end
    L0_3 = L9_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L9_2
      L0_3(L1_3)
      L0_3 = nil
      L9_2 = L0_3
    end
    L0_3 = 1
    L1_3 = L11_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L11_2
      L4_3 = L4_3[L3_3]
      if L4_3 then
        L4_3 = transition
        L4_3 = L4_3.cancel
        L5_3 = L11_2
        L5_3 = L5_3[L3_3]
        L4_3(L5_3)
      end
    end
    L0_3 = nil
    L11_2 = L0_3
  end
  
  L7_2.clean = L15_2
  return L7_2
end

L0_1.createCoinReward = L4_1
return L0_1
