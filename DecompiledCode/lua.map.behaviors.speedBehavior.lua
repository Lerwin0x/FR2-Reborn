local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "physics"
L2_1 = L2_1(L3_1)

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = A0_2.displayGroup
  L2_2 = A0_2.animatedBlockSheet
  L3_2 = A0_2.tileId
  L4_2 = A0_2.image
  L4_2 = L4_2.xScale
  L4_2 = L4_2 < 0
  L5_2 = nil
  L6_2 = false
  L7_2 = "speedFlat1"
  L8_2 = 0
  L9_2 = -1
  if L3_2 == 89 then
    L7_2 = "speedHill1"
    L9_2 = 32
  end
  L10_2 = {}
  L10_2.name = "idleAnimation"
  L11_2 = A0_2.animatedBlockSheetFile
  L12_2 = L11_2
  L11_2 = L11_2.getFrameIndex
  L13_2 = L7_2
  L11_2 = L11_2(L12_2, L13_2)
  L10_2.start = L11_2
  L10_2.count = 2
  L10_2.time = 200
  L10_2.loopCount = 0
  L10_2.loopDirection = "forward"
  L11_2 = display
  L11_2 = L11_2.newSprite
  L12_2 = L2_2
  L13_2 = L10_2
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = A0_2.x
  L12_2 = L12_2 + L8_2
  L11_2.x = L12_2
  L12_2 = A0_2.y
  L12_2 = L12_2 + L9_2
  L11_2.y = L12_2
  L13_2 = L11_2
  L12_2 = L11_2.scale
  L14_2 = A0_2.scale
  L15_2 = A0_2.image
  L15_2 = L15_2.xScale
  L16_2 = math
  L16_2 = L16_2.abs
  L17_2 = A0_2.image
  L17_2 = L17_2.xScale
  L16_2 = L16_2(L17_2)
  L15_2 = L15_2 / L16_2
  L14_2 = L14_2 * L15_2
  L15_2 = A0_2.scale
  L12_2(L13_2, L14_2, L15_2)
  L13_2 = L1_2
  L12_2 = L1_2.insert
  L14_2 = L11_2
  L12_2(L13_2, L14_2)
  L12_2 = L1_1
  L12_2 = L12_2.culler
  L12_2 = L12_2.addAnimatedTile
  L13_2 = A0_2.x
  L14_2 = L11_2
  L12_2(L13_2, L14_2)
  L11_2.isVisible = false
  
  function L12_2()
    local L0_3, L1_3, L2_3
    L0_3 = L1_1
    L0_3 = L0_3.isOnScreen
    L1_3 = A0_2
    L1_3 = L1_3.x
    L2_3 = A0_2
    L2_3 = L2_3.y
    L0_3 = L0_3(L1_3, L2_3)
    if L0_3 then
      L0_3 = true
      return L0_3
    end
    L0_3 = false
    return L0_3
  end
  
  function L13_2()
    local L0_3, L1_3
    L0_3 = L11_2
    if L0_3 then
      L0_3 = L11_2
      L1_3 = L0_3
      L0_3 = L0_3.pause
      L0_3(L1_3)
      L0_3 = false
      L6_2 = L0_3
    end
  end
  
  function L14_2()
    local L0_3, L1_3, L2_3
    L0_3 = L11_2
    if L0_3 then
      L0_3 = L12_2
      L0_3 = L0_3()
      if L0_3 then
        L0_3 = L6_2
        if not L0_3 then
          L0_3 = L11_2
          L1_3 = L0_3
          L0_3 = L0_3.setSequence
          L2_3 = "idleAnimation"
          L0_3(L1_3, L2_3)
          L0_3 = L11_2
          L1_3 = L0_3
          L0_3 = L0_3.play
          L0_3(L1_3)
          L0_3 = true
          L6_2 = L0_3
        end
    end
    else
      L0_3 = L13_2
      L0_3()
    end
  end
  
  function L15_2()
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
    L0_3 = L11_2
    if L0_3 then
      L0_3 = L11_2
      L0_3 = L0_3.removeSelf
      if L0_3 then
        L0_3 = L11_2
        L1_3 = L0_3
        L0_3 = L0_3.removeSelf
        L0_3(L1_3)
        L0_3 = nil
        L11_2 = L0_3
      end
    end
  end
  
  L16_2 = timer
  L16_2 = L16_2.performWithDelay
  L17_2 = 1000
  L18_2 = L14_2
  L19_2 = 0
  L16_2 = L16_2(L17_2, L18_2, L19_2)
  L5_2 = L16_2
  L16_2 = L14_2
  L16_2()
  L16_2 = A0_2.behaviors
  L17_2 = {}
  L16_2.speedHamster = L17_2
  L16_2 = A0_2.behaviors
  L16_2 = L16_2.speedHamster
  L16_2.clean = L15_2
end

L0_1.addBehavior = L3_1
return L0_1
