local L0_1, L1_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = false
  L3_2 = system
  L3_2 = L3_2.pathForFile
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = io
    L4_2 = L4_2.open
    L5_2 = L3_2
    L6_2 = "r"
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.close
    L4_2(L5_2)
    L2_2 = true
  end
  return L2_2
end

L0_1.doesFileExist = L1_1
return L0_1
