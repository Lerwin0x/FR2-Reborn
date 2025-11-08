local L0_1, L1_1, L2_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = A1_2
    if L0_3 then
      L0_3 = A1_2
      L0_3()
    end
  end
  
  A0_2.y = -200
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = A0_2
  L5_2 = {}
  L5_2.time = 600
  L5_2.y = 0
  L6_2 = easing
  L6_2 = L6_2.outBounce
  L5_2.transition = L6_2
  L5_2.onComplete = L2_2
  L5_2.onCancel = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = L1_1
  L3_2 = L3_2.audio
  L3_2 = L3_2.play
  L4_2 = "dropdown_menu"
  L3_2(L4_2)
end

L0_1.down = L2_1
L1_1.bouncer = L0_1
