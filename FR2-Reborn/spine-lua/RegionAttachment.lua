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
  L2_2 = L2_2.region
  L1_2.type = L2_2
  L1_2.x = 0
  L1_2.y = 0
  L1_2.rotation = 0
  L1_2.scaleX = 1
  L1_2.scaleY = 1
  L1_2.width = 0
  L1_2.height = 0
  L2_2 = {}
  L1_2.offset = L2_2
  L2_2 = {}
  L1_2.uvs = L2_2
  L1_2.r = 1
  L1_2.g = 1
  L1_2.b = 1
  L1_2.a = 1
  L2_2 = null
  L1_2.path = L2_2
  L2_2 = null
  L1_2.rendererObject = L2_2
  L1_2.regionOffsetX = 0
  L1_2.regionOffsetY = 0
  L1_2.regionWidth = 0
  L1_2.regionHeight = 0
  L1_2.regionOriginalWidth = 0
  L1_2.regionOriginalHeight = 0
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L1_3 = A0_3.width
    L2_3 = A0_3.regionOriginalWidth
    L1_3 = L1_3 / L2_3
    L2_3 = A0_3.scaleX
    L1_3 = L1_3 * L2_3
    L2_3 = A0_3.height
    L3_3 = A0_3.regionOriginalHeight
    L2_3 = L2_3 / L3_3
    L3_3 = A0_3.scaleY
    L2_3 = L2_3 * L3_3
    L3_3 = A0_3.width
    L3_3 = -L3_3
    L3_3 = L3_3 / 2
    L4_3 = A0_3.scaleX
    L3_3 = L3_3 * L4_3
    L4_3 = A0_3.regionOffsetX
    L4_3 = L4_3 * L1_3
    L3_3 = L3_3 + L4_3
    L4_3 = A0_3.height
    L4_3 = -L4_3
    L4_3 = L4_3 / 2
    L5_3 = A0_3.scaleY
    L4_3 = L4_3 * L5_3
    L5_3 = A0_3.regionOffsetY
    L5_3 = L5_3 * L2_3
    L4_3 = L4_3 + L5_3
    L5_3 = A0_3.regionWidth
    L5_3 = L5_3 * L1_3
    L5_3 = L3_3 + L5_3
    L6_3 = A0_3.regionHeight
    L6_3 = L6_3 * L2_3
    L6_3 = L4_3 + L6_3
    L7_3 = A0_3.rotation
    L8_3 = math
    L8_3 = L8_3.pi
    L7_3 = L7_3 * L8_3
    L7_3 = L7_3 / 180
    L8_3 = math
    L8_3 = L8_3.cos
    L9_3 = L7_3
    L8_3 = L8_3(L9_3)
    L9_3 = math
    L9_3 = L9_3.sin
    L10_3 = L7_3
    L9_3 = L9_3(L10_3)
    L10_3 = L3_3 * L8_3
    L11_3 = A0_3.x
    L10_3 = L10_3 + L11_3
    L11_3 = L3_3 * L9_3
    L12_3 = L4_3 * L8_3
    L13_3 = A0_3.y
    L12_3 = L12_3 + L13_3
    L13_3 = L4_3 * L9_3
    L14_3 = L5_3 * L8_3
    L15_3 = A0_3.x
    L14_3 = L14_3 + L15_3
    L15_3 = L5_3 * L9_3
    L16_3 = L6_3 * L8_3
    L17_3 = A0_3.y
    L16_3 = L16_3 + L17_3
    L17_3 = L6_3 * L9_3
    L18_3 = A0_3.offset
    L19_3 = L10_3 - L13_3
    L18_3[0] = L19_3
    L19_3 = L12_3 + L11_3
    L18_3[1] = L19_3
    L19_3 = L10_3 - L17_3
    L18_3[2] = L19_3
    L19_3 = L16_3 + L11_3
    L18_3[3] = L19_3
    L19_3 = L14_3 - L17_3
    L18_3[4] = L19_3
    L19_3 = L16_3 + L15_3
    L18_3[5] = L19_3
    L19_3 = L14_3 - L13_3
    L18_3[6] = L19_3
    L19_3 = L12_3 + L15_3
    L18_3[7] = L19_3
  end
  
  L1_2.updateOffset = L2_2
  
  function L2_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L5_3 = A3_3.worldX
    A1_3 = A1_3 + L5_3
    L5_3 = A3_3.worldY
    A2_3 = A2_3 + L5_3
    L5_3 = A3_3.m00
    L6_3 = A3_3.m01
    L7_3 = A3_3.m10
    L8_3 = A3_3.m11
    L9_3 = A0_3.offset
    L10_3 = vertices
    L11_3 = L9_3[0]
    L11_3 = L11_3 * L5_3
    L12_3 = L9_3[1]
    L12_3 = L12_3 * L6_3
    L11_3 = L11_3 + L12_3
    L11_3 = L11_3 + A1_3
    L10_3[0] = L11_3
    L10_3 = vertices
    L11_3 = L9_3[0]
    L11_3 = L11_3 * L7_3
    L12_3 = L9_3[1]
    L12_3 = L12_3 * L8_3
    L11_3 = L11_3 + L12_3
    L11_3 = L11_3 + A2_3
    L10_3[1] = L11_3
    L10_3 = vertices
    L11_3 = L9_3[2]
    L11_3 = L11_3 * L5_3
    L12_3 = L9_3[3]
    L12_3 = L12_3 * L6_3
    L11_3 = L11_3 + L12_3
    L11_3 = L11_3 + A1_3
    L10_3[2] = L11_3
    L10_3 = vertices
    L11_3 = L9_3[2]
    L11_3 = L11_3 * L7_3
    L12_3 = L9_3[3]
    L12_3 = L12_3 * L8_3
    L11_3 = L11_3 + L12_3
    L11_3 = L11_3 + A2_3
    L10_3[3] = L11_3
    L10_3 = vertices
    L11_3 = L9_3[4]
    L11_3 = L11_3 * L5_3
    L12_3 = L9_3[5]
    L12_3 = L12_3 * L6_3
    L11_3 = L11_3 + L12_3
    L11_3 = L11_3 + A1_3
    L10_3[4] = L11_3
    L10_3 = vertices
    L11_3 = L9_3[4]
    L11_3 = L11_3 * L7_3
    L12_3 = L9_3[5]
    L12_3 = L12_3 * L8_3
    L11_3 = L11_3 + L12_3
    L11_3 = L11_3 + A2_3
    L10_3[5] = L11_3
    L10_3 = vertices
    L11_3 = L9_3[6]
    L11_3 = L11_3 * L5_3
    L12_3 = L9_3[7]
    L12_3 = L12_3 * L6_3
    L11_3 = L11_3 + L12_3
    L11_3 = L11_3 + A1_3
    L10_3[6] = L11_3
    L10_3 = vertices
    L11_3 = L9_3[6]
    L11_3 = L11_3 * L7_3
    L12_3 = L9_3[7]
    L12_3 = L12_3 * L8_3
    L11_3 = L11_3 + L12_3
    L11_3 = L11_3 + A2_3
    L10_3[7] = L11_3
  end
  
  L1_2.computeWorldVertices = L2_2
  return L1_2
end

L1_1.new = L2_1
return L1_1
