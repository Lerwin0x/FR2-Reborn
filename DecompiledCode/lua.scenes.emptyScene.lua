local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.newScene
L1_1 = L1_1()

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.view
  L3_2 = L0_1
  L3_2 = L3_2.backgrounds
  L3_2 = L3_2.getBlurredBackground
  L3_2 = L3_2()
  L5_2 = L2_2
  L4_2 = L2_2.insert
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L0_1
  L4_2 = L4_2.newText
  L5_2 = {}
  L6_2 = L0_1
  L6_2 = L6_2.localized
  L6_2 = L6_2.get
  L7_2 = "LoadingGame"
  L6_2 = L6_2(L7_2)
  L5_2.string = L6_2
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 * 0.5
  L5_2.x = L6_2
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 * 0.5
  L5_2.y = L6_2
  L5_2.size = 27
  L4_2 = L4_2(L5_2)
  L6_2 = L2_2
  L5_2 = L2_2.insert
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end

L1_1.create = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    return
  end
  L3_2 = A0_2.view
end

L1_1.show = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    return
  end
  L3_2 = A0_2.view
end

L1_1.hide = L2_1

function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L1_1.destroy = L2_1
L3_1 = L1_1
L2_1 = L1_1.addEventListener
L4_1 = "create"
L5_1 = L1_1
L2_1(L3_1, L4_1, L5_1)
L3_1 = L1_1
L2_1 = L1_1.addEventListener
L4_1 = "show"
L5_1 = L1_1
L2_1(L3_1, L4_1, L5_1)
L3_1 = L1_1
L2_1 = L1_1.addEventListener
L4_1 = "hide"
L5_1 = L1_1
L2_1(L3_1, L4_1, L5_1)
L3_1 = L1_1
L2_1 = L1_1.addEventListener
L4_1 = "destroy"
L5_1 = L1_1
L2_1(L3_1, L4_1, L5_1)
return L1_1
