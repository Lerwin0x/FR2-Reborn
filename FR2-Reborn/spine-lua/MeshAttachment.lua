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
  L1_2.vertices = nil
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
    local uSpan = A0_3.regionU2 - A0_3.regionU
    local vSpan = A0_3.regionV2 - A0_3.regionV
    local valueCount = #A0_3.regionUVs
    local uvs = A0_3.uvs
    if not uvs or #uvs ~= valueCount then
      uvs = {}
      A0_3.uvs = uvs
    end

    if A0_3.regionRotate then
      for i = 1, valueCount, 2 do
        local vIndex = i + 1
        uvs[i] = A0_3.regionU + (A0_3.regionUVs[vIndex] * uSpan)
        uvs[vIndex] = A0_3.regionV + vSpan - (A0_3.regionUVs[i] * vSpan)
      end
    else
      for i = 1, valueCount, 2 do
        local vIndex = i + 1
        uvs[i] = A0_3.regionU + (A0_3.regionUVs[i] * uSpan)
        uvs[vIndex] = A0_3.regionV + (A0_3.regionUVs[vIndex] * vSpan)
      end
    end
  end

  L1_2.updateUVs = L2_2

  function L2_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local bone = A3_3.bone
    local worldX = A1_3 + bone.worldX
    local worldY = A2_3 + bone.worldY
    local m00 = bone.m00
    local m01 = bone.m01
    local m10 = bone.m10
    local m11 = bone.m11
    local vertices = A0_3.vertices
    local verticesLength = #vertices
    local attachmentVertices = A3_3.attachmentVertices
    if attachmentVertices and #attachmentVertices == verticesLength then
      vertices = attachmentVertices
    end

    for i = 1, verticesLength, 2 do
      local x = vertices[i]
      local y = vertices[i + 1]
      A4_3[i] = (x * m00) + (y * m01) + worldX
      A4_3[i + 1] = (x * m10) + (y * m11) + worldY
    end
  end

  L1_2.computeWorldVertices = L2_2
  return L1_2
end

L1_1.new = L2_1
return L1_1
