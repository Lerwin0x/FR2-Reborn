local L0_1, L1_1, L2_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = true
  L2_2 = nil
  L3_2 = A0_2.image
  L3_2 = L3_2.idleAnimationInterval
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    if L0_3 then
      L0_3 = A0_2
      L0_3 = L0_3.image
      if L0_3 then
        L0_3 = A0_2
        L0_3 = L0_3.image
        L1_3 = L0_3
        L0_3 = L0_3.pause
        L0_3(L1_3)
        L0_3 = false
        L1_2 = L0_3
      end
    end
  end
  
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    if L0_3 then
      L0_3 = A0_2
      L0_3 = L0_3.image
      if L0_3 then
        L0_3 = A0_2
        L0_3 = L0_3.image
        L1_3 = L0_3
        L0_3 = L0_3.setSequence
        L2_3 = "idleAnimation"
        L0_3(L1_3, L2_3)
        L0_3 = A0_2
        L0_3 = L0_3.image
        L1_3 = L0_3
        L0_3 = L0_3.play
        L0_3(L1_3)
        L0_3 = true
        L1_2 = L0_3
      end
    end
  end
  
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = L1_1
    L0_3 = L0_3.isOnScreen
    L1_3 = A0_2
    L1_3 = L1_3.image
    L1_3 = L1_3.x
    L2_3 = A0_2
    L2_3 = L2_3.image
    L2_3 = L2_3.y
    L0_3 = L0_3(L1_3, L2_3)
    if L0_3 then
      L0_3 = L1_2
      if L0_3 then
        L0_3 = L3_2
      end
      if L0_3 then
        L0_3 = L5_2
        L0_3()
      end
    else
      L0_3 = L1_2
      if L0_3 then
        L0_3 = L4_2
        L0_3()
      end
    end
  end
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L2_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L2_2
      L0_3(L1_3)
      L0_3 = nil
      L2_2 = L0_3
    end
  end
  
  L8_2 = 1000
  if L3_2 then
    L8_2 = L3_2
  end
  L9_2 = timer
  L9_2 = L9_2.performWithDelay
  L10_2 = L8_2
  L11_2 = L6_2
  L12_2 = 0
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L2_2 = L9_2
  L9_2 = L5_2
  L9_2()
  L9_2 = A0_2.behaviors
  L10_2 = {}
  L9_2.idleAnimation = L10_2
  L9_2 = A0_2.behaviors
  L9_2 = L9_2.idleAnimation
  L9_2.play = L5_2
  L9_2 = A0_2.behaviors
  L9_2 = L9_2.idleAnimation
  L9_2.stop = L4_2
  L9_2 = A0_2.behaviors
  L9_2 = L9_2.idleAnimation
  L9_2.clean = L7_2
end

L0_1.addBehavior = L2_1
return L0_1
