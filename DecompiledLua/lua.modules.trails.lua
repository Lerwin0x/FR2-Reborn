local L0_1, L1_1, L2_1
L0_1 = {}
L1_1 = math
L1_1 = L1_1.random

function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if A0_2 == 0 then
    return
  end
  L5_2 = "images/monsters/trails/"
  L6_2 = A0_2
  L7_2 = "_"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = L5_2
  L7_2 = L1_1
  L8_2 = 1
  L9_2 = 3
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = ".png"
  L6_2 = L6_2 .. L7_2 .. L8_2
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = L6_2
  L9_2 = 27
  L10_2 = 27
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = L1_1
  L9_2 = 0
  L10_2 = 40
  L8_2 = L8_2(L9_2, L10_2)
  L8_2 = -100 + L8_2
  L9_2 = 500
  if L7_2 == nil then
    return
  end
  
  function L10_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A0_3.removeSelf
      if L1_3 then
        L2_3 = A0_3
        L1_3 = A0_3.removeSelf
        L1_3(L2_3)
        A0_3 = nil
      end
    end
  end
  
  L11_2 = L1_1
  L12_2 = -20
  L13_2 = 20
  L11_2 = L11_2(L12_2, L13_2)
  L7_2.x = A1_2
  L12_2 = A2_2 + L11_2
  L7_2.y = L12_2
  if A4_2 then
    L7_2.xScale = 0.7
    L7_2.yScale = 0.7
    L8_2 = -20
  end
  L12_2 = L1_1
  L13_2 = 1
  L14_2 = 2
  L12_2 = L12_2(L13_2, L14_2)
  L12_2 = L12_2 * 0.5
  L13_2 = L7_2.xScale
  L13_2 = L13_2 * L12_2
  L7_2.xScale = L13_2
  L13_2 = L7_2.yScale
  L13_2 = L13_2 * L12_2
  L7_2.yScale = L13_2
  if 0 < L11_2 then
    L13_2 = L7_2.xScale
    L13_2 = L13_2 * -1
    L7_2.xScale = L13_2
  end
  L13_2 = L1_1
  L14_2 = -30
  L15_2 = 30
  L13_2 = L13_2(L14_2, L15_2)
  L7_2.rotation = L13_2
  L14_2 = A3_2
  L13_2 = A3_2.insert
  L15_2 = 2
  L16_2 = L7_2
  L13_2(L14_2, L15_2, L16_2)
  L13_2 = transition
  L13_2 = L13_2.to
  L14_2 = L7_2
  L15_2 = {}
  L15_2.tag = "trails"
  L16_2 = L9_2 * 0.3
  L15_2.time = L16_2
  L16_2 = L9_2 * 0.6
  L15_2.delay = L16_2
  L15_2.alpha = 0.2
  L13_2(L14_2, L15_2)
  L13_2 = transition
  L13_2 = L13_2.to
  L14_2 = L7_2
  L15_2 = {}
  L15_2.tag = "trails"
  L15_2.time = L9_2
  L16_2 = L7_2.x
  L16_2 = L16_2 + L8_2
  L15_2.x = L16_2
  L15_2.onComplete = L10_2
  L13_2(L14_2, L15_2)
end

L0_1.createTrail = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = "images/game/sparkle.png"
  L5_2 = 30
  L6_2 = 30
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L1_1
  L5_2 = 1
  L6_2 = 360
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.rotation = L4_2
  L4_2 = L1_1
  L5_2 = -4
  L6_2 = 10
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.x = L4_2
  L4_2 = L1_1
  L5_2 = -24
  L6_2 = 16
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.y = L4_2
  if A1_2 then
    L4_2 = L3_2.x
    L4_2 = A1_2 + L4_2
    L3_2.x = L4_2
  end
  if A2_2 then
    L4_2 = L3_2.y
    L4_2 = A2_2 + L4_2
    L3_2.y = L4_2
  end
  
  function L4_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A0_3.removeSelf
      if L1_3 then
        L2_3 = A0_3
        L1_3 = A0_3.removeSelf
        L1_3(L2_3)
        A0_3 = nil
      end
    end
  end
  
  L5_2 = transition
  L5_2 = L5_2.to
  L6_2 = L3_2
  L7_2 = {}
  L7_2.time = 330
  L7_2.delay = 100
  L7_2.alpha = 0
  L7_2.onComplete = L4_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.insert
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
end

L0_1.createSparkeEffect = L2_1
return L0_1
