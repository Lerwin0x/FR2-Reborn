local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.newScene
L1_1 = L1_1()
L2_1 = nil

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = L0_1
  L3_2 = L3_2.backgrounds
  L3_2 = L3_2.getBlurredBackground
  L3_2 = L3_2()
  L5_2 = L2_2
  L4_2 = L2_2.insert
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = print
  L5_2 = "Creating bufferscene"
  L4_2(L5_2)
end

L1_1.create = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = print
  L3_2 = "Enter bufferscene"
  L2_2(L3_2)
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    return
  end
  L3_2 = A0_2.view
  L4_2 = false
  L5_2 = nil
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.gotoScene
    L1_3 = "lua.scenes.gamePlay"
    L0_3(L1_3)
  end
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = true
    L4_2 = L0_3
    L0_3 = L5_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L5_2
      L0_3(L1_3)
      L0_3 = nil
      L5_2 = L0_3
    end
  end
  
  L2_1 = L7_2
  L7_2 = print
  L8_2 = "Starting timer"
  L7_2(L8_2)
  L7_2 = L6_2
  L7_2()
end

L1_1.show = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = print
  L3_2 = "Exit bufferscene"
  L2_2(L3_2)
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L3_2 = L0_1
    L3_2 = L3_2.removeScene
    L4_2 = "lua.scenes.bufferScene"
    L3_2(L4_2)
    return
  end
  L3_2 = A0_2.view
  L4_2 = L2_1
  if L4_2 then
    L4_2 = L2_1
    L4_2()
  end
end

L1_1.hide = L3_1

function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
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
