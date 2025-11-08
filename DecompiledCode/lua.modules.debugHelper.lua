local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = false

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  if L2_2 then
    L2_2 = print
    L3_2 = A0_2
    L4_2 = " "
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end

L0_1.debugPrint = L2_1
