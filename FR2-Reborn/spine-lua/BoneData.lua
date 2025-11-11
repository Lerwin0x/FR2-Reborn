local L0_1, L1_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A0_2 then
    L2_2 = error
    L3_2 = "name cannot be nil"
    L4_2 = 2
    L2_2(L3_2, L4_2)
  end
  L2_2 = {}
  L2_2.name = A0_2
  L2_2.parent = A1_2
  L2_2.length = 0
  L2_2.x = 0
  L2_2.y = 0
  L2_2.rotation = 0
  L2_2.scaleX = 1
  L2_2.scaleY = 1
  L2_2.inheritScale = true
  L2_2.inheritRotation = true
  return L2_2
end

L0_1.new = L1_1
return L0_1
