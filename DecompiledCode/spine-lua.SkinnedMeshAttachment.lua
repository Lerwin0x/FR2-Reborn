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
  L2_2 = L2_2.mesh
  L1_2.type = L2_2
  L1_2.bones = nil
  L1_2.weights = nil
  L1_2.uvs = nil
  L1_2.regionUVs = nil
  L1_2.triangles = nil
  L1_2.hullLength = 0
  L1_2.r = 1
  L1_2.g = 1
  L1_2.b = 1
  L1_2.a = 1
  L1_2.path = nil
  L1_2.rendererObject = nil
  L1_2.regionU = 0
  L1_2.regionV = 0
  L1_2.regionU2 = 0
  L1_2.regionV2 = 0
  L1_2.regionRotate = false
  L1_2.regionOffsetX = 0
  L1_2.regionOffsetY = 0
  L1_2.regionWidth = 0
  L1_2.regionHeight = 0
  L1_2.regionOriginalWidth = 0
  L1_2.regionOriginalHeight = 0
  L1_2.edges = nil
  L1_2.width = 0
  L1_2.height = 0
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = A0_3.regionU2
    L2_3 = A0_3.regionU
    L1_3 = L1_3 - L2_3
    L2_3 = A0_3.regionV2
    L3_3 = A0_3.regionV
    L2_3 = L2_3 - L3_3
    L3_3 = A0_3.regionUVs
    L3_3 = #L3_3
    L4_3 = A0_3.uvs
    if L4_3 then
      L4_3 = A0_3.uvs
      L4_3 = #L4_3
      if L4_3 == L3_3 then
        goto lbl_18
      end
    end
    L4_3 = {}
    A0_3.uvs = L4_3
    ::lbl_18::
    L4_3 = A0_3.regionRotate
    if L4_3 then
      L4_3 = 1
      L5_3 = L3_3
      L6_3 = 2
      for L7_3 = L4_3, L5_3, L6_3 do
        L8_3 = A0_3.uvs
        L9_3 = A0_3.regionU
        L10_3 = A0_3.regionUVs
        L11_3 = L7_3 + 1
        L10_3 = L10_3[L11_3]
        L10_3 = L10_3 * L1_3
        L9_3 = L9_3 + L10_3
        L8_3[L7_3] = L9_3
        L8_3 = A0_3.uvs
        L9_3 = L7_3 + 1
        L10_3 = A0_3.regionV
        L10_3 = L10_3 + L2_3
        L11_3 = A0_3.regionUVs
        L11_3 = L11_3[L7_3]
        L11_3 = L11_3 * L2_3
        L10_3 = L10_3 - L11_3
        L8_3[L9_3] = L10_3
      end
    else
      L4_3 = 1
      L5_3 = L3_3
      L6_3 = 2
      for L7_3 = L4_3, L5_3, L6_3 do
        L8_3 = A0_3.uvs
        L9_3 = A0_3.regionU
        L10_3 = A0_3.regionUVs
        L10_3 = L10_3[L7_3]
        L10_3 = L10_3 * L1_3
        L9_3 = L9_3 + L10_3
        L8_3[L7_3] = L9_3
        L8_3 = A0_3.uvs
        L9_3 = L7_3 + 1
        L10_3 = A0_3.regionV
        L11_3 = A0_3.regionUVs
        L12_3 = L7_3 + 1
        L11_3 = L11_3[L12_3]
        L11_3 = L11_3 * L2_3
        L10_3 = L10_3 + L11_3
        L8_3[L9_3] = L10_3
      end
    end
  end
  
  L1_2.updateUVs = L2_2
  
  function L2_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3
    L5_3 = A3_3.skeleton
    L5_3 = L5_3.bones
    L6_3 = A0_3.weights
    L7_3 = A0_3.bones
    L8_3 = 0
    L9_3 = 0
    L10_3 = 0
    L11_3 = 0
    L12_3 = L7_3.length
    L13_3 = nil
    L14_3 = nil
    L15_3 = nil
    L16_3 = nil
    L17_3 = nil
    L18_3 = nil
    L19_3 = A3_3.attachmentVertices
    L19_3 = #L19_3
    if L19_3 == 0 then
      while L9_3 < L12_3 do
        L13_3 = 0
        L14_3 = 0
        L19_3 = L7_3[L9_3]
        L19_3 = L19_3 + L9_3
        L9_3 = L9_3 + 1
        while L19_3 >= L9_3 do
          L20_3 = L7_3[L9_3]
          L15_3 = L5_3[L20_3]
          L16_3 = L6_3[L10_3]
          L20_3 = L10_3 + 1
          L17_3 = L6_3[L20_3]
          L20_3 = L10_3 + 2
          L18_3 = L6_3[L20_3]
          L20_3 = L15_3.m00
          L20_3 = L16_3 * L20_3
          L21_3 = L15_3.m01
          L21_3 = L17_3 * L21_3
          L20_3 = L20_3 + L21_3
          L21_3 = L15_3.worldX
          L20_3 = L20_3 + L21_3
          L20_3 = L20_3 * L18_3
          L13_3 = L13_3 + L20_3
          L20_3 = L15_3.m10
          L20_3 = L16_3 * L20_3
          L21_3 = L15_3.m11
          L21_3 = L17_3 * L21_3
          L20_3 = L20_3 + L21_3
          L21_3 = L15_3.worldY
          L20_3 = L20_3 + L21_3
          L20_3 = L20_3 * L18_3
          L14_3 = L14_3 + L20_3
          L9_3 = L9_3 + 1
          L10_3 = L10_3 + 3
        end
        L20_3 = L13_3 + A1_3
        A4_3[L8_3] = L20_3
        L20_3 = L8_3 + 1
        L21_3 = L14_3 + A2_3
        A4_3[L20_3] = L21_3
        L8_3 = L8_3 + 2
      end
    else
      L19_3 = A3_3.attachmentVertices
      while L12_3 > L9_3 do
        L13_3 = 0
        L14_3 = 0
        L20_3 = L7_3[L9_3]
        L20_3 = L20_3 + L9_3
        L9_3 = L9_3 + 1
        while L20_3 >= L9_3 do
          L21_3 = L7_3[L9_3]
          L15_3 = L5_3[L21_3]
          L21_3 = L6_3[L10_3]
          L22_3 = L19_3[L11_3]
          L16_3 = L21_3 + L22_3
          L21_3 = L10_3 + 1
          L21_3 = L6_3[L21_3]
          L22_3 = L11_3 + 1
          L22_3 = L19_3[L22_3]
          L17_3 = L21_3 + L22_3
          L21_3 = L10_3 + 2
          L18_3 = L6_3[L21_3]
          L21_3 = L15_3.m00
          L21_3 = L16_3 * L21_3
          L22_3 = L15_3.m01
          L22_3 = L17_3 * L22_3
          L21_3 = L21_3 + L22_3
          L22_3 = L15_3.worldX
          L21_3 = L21_3 + L22_3
          L21_3 = L21_3 * L18_3
          L13_3 = L13_3 + L21_3
          L21_3 = L15_3.m10
          L21_3 = L16_3 * L21_3
          L22_3 = L15_3.m11
          L22_3 = L17_3 * L22_3
          L21_3 = L21_3 + L22_3
          L22_3 = L15_3.worldY
          L21_3 = L21_3 + L22_3
          L21_3 = L21_3 * L18_3
          L14_3 = L14_3 + L21_3
          L9_3 = L9_3 + 1
          L10_3 = L10_3 + 3
          L11_3 = L11_3 + 2
        end
        L21_3 = L13_3 + A1_3
        A4_3[L8_3] = L21_3
        L21_3 = L8_3 + 1
        L22_3 = L14_3 + A2_3
        A4_3[L21_3] = L22_3
        L8_3 = L8_3 + 2
      end
    end
  end
  
  L1_2.computeWorldVertices = L2_2
  return L1_2
end

L1_1.new = L2_1
L2_1 = MeshAttachment
return L2_1
