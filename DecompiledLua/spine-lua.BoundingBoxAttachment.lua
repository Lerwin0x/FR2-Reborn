local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "spine-lua.AttachmentType"
L0_1 = L0_1(L1_1)
L1_1 = {}

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    L1_2 = error
    L2_2 = "name cannot be nil"
    L3_2 = 2
    L1_2(L2_2, L3_2)
  end
  L1_2 = {}
  L1_2.name = A0_2
  L2_2 = L0_1
  L2_2 = L2_2.boundingbox
  L1_2.type = L2_2
  L2_2 = {}
  L1_2.vertices = L2_2
  
  function L2_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L5_3 = A3_3.worldX
    A1_3 = A1_3 + L5_3
    L5_3 = A3_3.worldY
    A2_3 = A2_3 + L5_3
    L5_3 = A3_3.m00
    L6_3 = A3_3.m01
    L7_3 = A3_3.m10
    L8_3 = A3_3.m11
    L9_3 = A0_3.vertices
    L10_3 = #L9_3
    L11_3 = 1
    L12_3 = L10_3
    L13_3 = 2
    for L14_3 = L11_3, L12_3, L13_3 do
      L15_3 = L9_3[L14_3]
      L16_3 = L14_3 + 1
      L16_3 = L9_3[L16_3]
      L17_3 = L15_3 * L5_3
      L18_3 = L16_3 * L6_3
      L17_3 = L17_3 + L18_3
      L17_3 = L17_3 + A1_3
      A4_3[L14_3] = L17_3
      L17_3 = L14_3 + 1
      L18_3 = L15_3 * L7_3
      L19_3 = L16_3 * L8_3
      L18_3 = L18_3 + L19_3
      L18_3 = L18_3 + A2_3
      A4_3[L17_3] = L18_3
    end
  end
  
  L1_2.computeWorldVertices = L2_2
  return L1_2
end

L1_1.new = L2_1
return L1_1
