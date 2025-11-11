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
    local skeletonBones = A3_3.skeleton.bones
    local weights = A0_3.weights
    local bones = A0_3.bones
    local worldIndex = 1
    local bonesIndex = 1
    local weightsIndex = 1
    local deform = A3_3.attachmentVertices
    local deformLength = deform and #deform or 0

    if deformLength == 0 then
      local bonesCount = #bones
      while bonesIndex <= bonesCount do
        local wx = 0
        local wy = 0
        local nn = bones[bonesIndex]
        bonesIndex = bonesIndex + 1
        for _ = 1, nn do
          local boneIndex = bones[bonesIndex]
          bonesIndex = bonesIndex + 1
          local bone = skeletonBones[boneIndex] or skeletonBones[boneIndex + 1]
          local vx = weights[weightsIndex]
          local vy = weights[weightsIndex + 1]
          local weight = weights[weightsIndex + 2]
          weightsIndex = weightsIndex + 3
          wx = wx + ((vx * bone.m00 + vy * bone.m01 + bone.worldX) * weight)
          wy = wy + ((vx * bone.m10 + vy * bone.m11 + bone.worldY) * weight)
        end
        A4_3[worldIndex] = wx + A1_3
        A4_3[worldIndex + 1] = wy + A2_3
        worldIndex = worldIndex + 2
      end
    else
      local bonesCount = #bones
      local deformIndex = 1
      while bonesIndex <= bonesCount do
        local wx = 0
        local wy = 0
        local nn = bones[bonesIndex]
        bonesIndex = bonesIndex + 1
        for _ = 1, nn do
          local boneIndex = bones[bonesIndex]
          bonesIndex = bonesIndex + 1
          local bone = skeletonBones[boneIndex] or skeletonBones[boneIndex + 1]
          local vx = weights[weightsIndex] + deform[deformIndex]
          local vy = weights[weightsIndex + 1] + deform[deformIndex + 1]
          local weight = weights[weightsIndex + 2]
          weightsIndex = weightsIndex + 3
          deformIndex = deformIndex + 2
          wx = wx + ((vx * bone.m00 + vy * bone.m01 + bone.worldX) * weight)
          wy = wy + ((vx * bone.m10 + vy * bone.m11 + bone.worldY) * weight)
        end
        A4_3[worldIndex] = wx + A1_3
        A4_3[worldIndex + 1] = wy + A2_3
        worldIndex = worldIndex + 2
      end
    end
  end

  L1_2.computeWorldVertices = L2_2
  return L1_2
end

L1_1.new = L2_1
return L1_1
