local L0_1, L1_1
L0_1 = {}

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    L1_2 = error
    L2_2 = "data cannot be nil"
    L3_2 = 2
    L1_2(L2_2, L3_2)
  end
  L1_2 = {}
  L1_2.data = A0_2
  L1_2.intValue = 0
  L1_2.floatValue = 0
  L1_2.stringValue = nil
  return L1_2
end

L0_1.new = L1_1
return L0_1
