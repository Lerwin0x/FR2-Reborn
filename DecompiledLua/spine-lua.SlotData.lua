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
  if not A1_2 then
    L2_2 = error
    L3_2 = "boneData cannot be nil"
    L4_2 = 2
    L2_2(L3_2, L4_2)
  end
  L2_2 = {}
  L2_2.name = A0_2
  L2_2.boneData = A1_2
  L2_2.r = 1
  L2_2.g = 1
  L2_2.b = 1
  L2_2.a = 1
  L2_2.attachmentName = nil
  L2_2.additiveBlending = false
  
  function L3_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    A0_3.r = A1_3
    A0_3.g = A2_3
    A0_3.b = A3_3
    A0_3.a = A4_3
  end
  
  L2_2.setColor = L3_2
  return L2_2
end

L0_1.new = L1_1
return L0_1
