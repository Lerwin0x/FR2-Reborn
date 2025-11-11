local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "spine-lua.AttachmentType"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "spine-lua.utils"
L1_1 = L1_1(L2_1)
L2_1 = {}

function L3_1()
  local L0_2, L1_2
  L0_2 = {}
  L1_2 = {}
  L0_2.polygons = L1_2
  L1_2 = {}
  L0_2.boundingBoxes = L1_2
  L0_2.minX = 0
  L0_2.minY = 0
  L0_2.maxX = 0
  L0_2.maxY = 0
  
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L0_3 = L0_2
    L0_3 = L0_3.polygons
    L1_3 = 9999999
    L2_3 = 9999999
    L3_3 = -9999999
    L4_3 = -9999999
    L5_3 = ipairs
    L6_3 = L0_3
    L5_3, L6_3, L7_3 = L5_3(L6_3)
    for L8_3, L9_3 in L5_3, L6_3, L7_3 do
      L10_3 = #L9_3
      L11_3 = 1
      L12_3 = L10_3
      L13_3 = 2
      for L14_3 = L11_3, L12_3, L13_3 do
        L15_3 = L9_3[L14_3]
        L16_3 = L14_3 + 1
        L16_3 = L9_3[L16_3]
        L17_3 = math
        L17_3 = L17_3.min
        L18_3 = L1_3
        L19_3 = L15_3
        L17_3 = L17_3(L18_3, L19_3)
        L1_3 = L17_3
        L17_3 = math
        L17_3 = L17_3.min
        L18_3 = L2_3
        L19_3 = L16_3
        L17_3 = L17_3(L18_3, L19_3)
        L2_3 = L17_3
        L17_3 = math
        L17_3 = L17_3.max
        L18_3 = L3_3
        L19_3 = L15_3
        L17_3 = L17_3(L18_3, L19_3)
        L3_3 = L17_3
        L17_3 = math
        L17_3 = L17_3.max
        L18_3 = L4_3
        L19_3 = L16_3
        L17_3 = L17_3(L18_3, L19_3)
        L4_3 = L17_3
      end
    end
    L5_3 = L0_2
    L5_3.minX = L1_3
    L5_3 = L0_2
    L5_3.minY = L2_3
    L5_3 = L0_2
    L5_3.maxX = L3_3
    L5_3 = L0_2
    L5_3.maxY = L4_3
  end
  
  aabbCompute = L1_2
  
  function L1_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L3_3 = A1_3.x
    L4_3 = A1_3.y
    L5_3 = {}
    A0_3.polygons = L5_3
    L6_3 = {}
    A0_3.boundingBoxes = L6_3
    L7_3 = ipairs
    L8_3 = A1_3.slots
    L7_3, L8_3, L9_3 = L7_3(L8_3)
    for L10_3, L11_3 in L7_3, L8_3, L9_3 do
      L12_3 = L11_3.attachment
      if L12_3 then
        L13_3 = L12_3.type
        L14_3 = L0_1
        L14_3 = L14_3.boundingbox
        if L13_3 == L14_3 then
          L13_3 = table
          L13_3 = L13_3.insert
          L14_3 = L6_3
          L15_3 = L12_3
          L13_3(L14_3, L15_3)
          L13_3 = {}
          L14_3 = table
          L14_3 = L14_3.insert
          L15_3 = L5_3
          L16_3 = L13_3
          L14_3(L15_3, L16_3)
          L15_3 = L12_3
          L14_3 = L12_3.computeWorldVertices
          L16_3 = L3_3
          L17_3 = L4_3
          L18_3 = L11_3.bone
          L19_3 = L13_3
          L14_3(L15_3, L16_3, L17_3, L18_3, L19_3)
        end
      end
    end
    if A2_3 then
      L7_3 = aabbCompute
      L7_3()
    end
  end
  
  L0_2.update = L1_2
  
  function L1_2(A0_3, A1_3, A2_3)
    local L3_3
    L3_3 = A0_3.minX
    L3_3 = A1_3 >= L3_3
    return L3_3
  end
  
  L0_2.aabbContainsPoint = L1_2
  
  function L1_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L5_3 = A0_3.minX
    L6_3 = A0_3.minY
    L7_3 = A0_3.maxX
    L8_3 = A0_3.maxY
    if A1_3 <= L5_3 and A3_3 <= L5_3 or A2_3 <= L6_3 and A4_3 <= L6_3 or A1_3 >= L7_3 and A3_3 >= L7_3 or A2_3 >= L8_3 and A4_3 >= L8_3 then
      L9_3 = false
      return L9_3
    end
    L9_3 = A4_3 - A2_3
    L10_3 = A3_3 - A1_3
    L9_3 = L9_3 / L10_3
    L10_3 = L5_3 - A1_3
    L10_3 = L9_3 * L10_3
    L10_3 = L10_3 + A2_3
    if L6_3 < L10_3 and L8_3 > L10_3 then
      L11_3 = true
      return L11_3
    end
    L11_3 = L7_3 - A1_3
    L11_3 = L9_3 * L11_3
    L10_3 = L11_3 + A2_3
    if L6_3 < L10_3 and L8_3 > L10_3 then
      L11_3 = true
      return L11_3
    end
    L11_3 = L6_3 - A2_3
    L11_3 = L11_3 / L9_3
    L11_3 = L11_3 + A1_3
    if L5_3 < L11_3 and L7_3 > L11_3 then
      L12_3 = true
      return L12_3
    end
    L12_3 = L8_3 - A2_3
    L12_3 = L12_3 / L9_3
    L11_3 = L12_3 + A1_3
    if L5_3 < L11_3 and L7_3 > L11_3 then
      L12_3 = true
      return L12_3
    end
    L12_3 = false
    return L12_3
  end
  
  L0_2.aabbIntersectsSegment = L1_2
  
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.minX
    L3_3 = A1_3.maxX
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  
  L0_2.aabbIntersectsSkeleton = L1_2
  
  function L1_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L3_3 = ipairs
    L4_3 = A0_3.polygons
    L3_3, L4_3, L5_3 = L3_3(L4_3)
    for L6_3, L7_3 in L3_3, L4_3, L5_3 do
      L9_3 = A0_3
      L8_3 = A0_3.polygonContainsPoint
      L10_3 = L7_3
      L11_3 = A1_3
      L12_3 = A2_3
      L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3)
      if L8_3 then
        L8_3 = A0_3.boundingBoxes
        L8_3 = L8_3[L6_3]
        return L8_3
      end
    end
    L3_3 = nil
    return L3_3
  end
  
  L0_2.containsPoint = L1_2
  
  function L1_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L5_3 = ipairs
    L6_3 = A0_3.polygons
    L5_3, L6_3, L7_3 = L5_3(L6_3)
    for L8_3, L9_3 in L5_3, L6_3, L7_3 do
      L11_3 = A0_3
      L10_3 = A0_3.polygonIntersectsSegment
      L12_3 = L9_3
      L13_3 = A1_3
      L14_3 = A2_3
      L15_3 = A3_3
      L16_3 = A4_3
      L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      if L10_3 then
        L10_3 = A0_3.boundingBoxes
        L10_3 = L10_3[L8_3]
        return L10_3
      end
    end
    L5_3 = nil
    return L5_3
  end
  
  L0_2.intersectsSegment = L1_2
  
  function L1_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L4_3 = #A1_3
    L5_3 = L4_3 - 1
    L6_3 = false
    L7_3 = 1
    L8_3 = L4_3
    L9_3 = 2
    for L10_3 = L7_3, L8_3, L9_3 do
      L11_3 = L10_3 + 1
      L11_3 = A1_3[L11_3]
      L12_3 = L5_3 + 1
      L12_3 = A1_3[L12_3]
      if A3_3 > L11_3 and A3_3 <= L12_3 or A3_3 > L12_3 and A3_3 <= L11_3 then
        L13_3 = A1_3[L10_3]
        L14_3 = A3_3 - L11_3
        L15_3 = L12_3 - L11_3
        L14_3 = L14_3 / L15_3
        L15_3 = A1_3[L5_3]
        L15_3 = L15_3 - L13_3
        L14_3 = L14_3 * L15_3
        L14_3 = L13_3 + L14_3
        if A2_3 > L14_3 then
          L6_3 = not L6_3
        end
      end
      L5_3 = L10_3
    end
    return L6_3
  end
  
  L0_2.polygonContainsPoint = L1_2
  
  function L1_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
    L6_3 = #A1_3
    L7_3 = A2_3 - A4_3
    L8_3 = A3_3 - A5_3
    L9_3 = A2_3 * A5_3
    L10_3 = A3_3 * A4_3
    L9_3 = L9_3 - L10_3
    L10_3 = L6_3 - 2
    L10_3 = A1_3[L10_3]
    L11_3 = L6_3 - 1
    L11_3 = A1_3[L11_3]
    L12_3 = 1
    L13_3 = L6_3
    L14_3 = 2
    for L15_3 = L12_3, L13_3, L14_3 do
      L16_3 = A1_3[L15_3]
      L17_3 = L15_3 + 1
      L17_3 = A1_3[L17_3]
      L18_3 = L10_3 * L17_3
      L19_3 = L11_3 * L16_3
      L18_3 = L18_3 - L19_3
      L19_3 = L10_3 - L16_3
      L20_3 = L11_3 - L17_3
      L21_3 = L7_3 * L20_3
      L22_3 = L8_3 * L19_3
      L21_3 = L21_3 - L22_3
      L22_3 = L9_3 * L19_3
      L23_3 = L7_3 * L18_3
      L22_3 = L22_3 - L23_3
      L22_3 = L22_3 / L21_3
      if (L10_3 <= L22_3 and L16_3 >= L22_3 or L16_3 <= L22_3 and L10_3 >= L22_3) and (A2_3 <= L22_3 and A4_3 >= L22_3 or A4_3 <= L22_3 and A2_3 >= L22_3) then
        L23_3 = L9_3 * L20_3
        L24_3 = L8_3 * L18_3
        L23_3 = L23_3 - L24_3
        L23_3 = L23_3 / L21_3
        if (L11_3 <= L23_3 and L17_3 >= L23_3 or L17_3 <= L23_3 and L11_3 >= L23_3) and (A3_3 <= L23_3 and A5_3 >= L23_3 or A5_3 <= L23_3 and A3_3 >= L23_3) then
          L24_3 = true
          return L24_3
        end
      end
      L10_3 = L16_3
      L11_3 = L17_3
    end
    L12_3 = false
    return L12_3
  end
  
  L0_2.polygonIntersectsSegment = L1_2
  
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = spine
    L2_3 = L2_3.utils
    L2_3 = L2_3.indexOf
    L3_3 = A0_3.boundingBoxes
    L4_3 = A1_3
    L2_3 = L2_3(L3_3, L4_3)
    if L2_3 == -1 then
      L3_3 = nil
      return L3_3
    else
      L3_3 = A0_3.polygons
      L3_3 = L3_3[L2_3]
      return L3_3
    end
  end
  
  L0_2.getPolygon = L1_2
  
  function L1_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.maxX
    L2_3 = A0_3.minX
    L1_3 = L1_3 - L2_3
    return L1_3
  end
  
  L0_2.getWidth = L1_2
  
  function L1_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.maxY
    L2_3 = A0_3.minY
    L1_3 = L1_3 - L2_3
    return L1_3
  end
  
  L0_2.getHeight = L1_2
  return L0_2
end

L2_1.new = L3_1
return L2_1
