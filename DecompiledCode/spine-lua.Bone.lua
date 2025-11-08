local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = {}
L1_1 = math
L1_1 = L1_1.cos
L2_1 = math
L2_1 = L2_1.sin
L3_1 = math
L3_1 = L3_1.rad
L4_1 = math
L4_1 = L4_1.round
L5_1 = {}
L6_1 = {}
L7_1 = 2048
L8_1 = math
L8_1 = L8_1.pi
L8_1 = 2 * L8_1
L8_1 = L7_1 / L8_1
L9_1 = math
L9_1 = L9_1.pi
L9_1 = L9_1 / 180
L10_1 = 0
L11_1 = 0
L12_1 = L7_1
L13_1 = 1
for L14_1 = L11_1, L12_1, L13_1 do
  L15_1 = L2_1
  L16_1 = L10_1
  L15_1 = L15_1(L16_1)
  L6_1[L14_1] = L15_1
  L15_1 = L1_1
  L16_1 = L10_1
  L15_1 = L15_1(L16_1)
  L5_1[L14_1] = L15_1
  L15_1 = 1 / L8_1
  L10_1 = L10_1 + L15_1
end

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if not A0_2 then
    L2_2 = error
    L3_2 = "data cannot be nil"
    L4_2 = 2
    L2_2(L3_2, L4_2)
  end
  L2_2 = {}
  L2_2.data = A0_2
  L2_2.parent = A1_2
  L2_2.x = 0
  L2_2.y = 0
  L2_2.rotation = 0
  L2_2.scaleX = 1
  L2_2.scaleY = 1
  L2_2.m00 = 0
  L2_2.m01 = 0
  L2_2.worldX = 0
  L2_2.m10 = 0
  L2_2.m11 = 0
  L2_2.worldY = 0
  L2_2.worldRotation = 0
  L2_2.worldScaleX = 1
  L2_2.worldScaleY = 1
  L3_2 = L2_2.data
  L3_2 = L3_2.inheritScale
  L4_2 = L2_2.data
  L4_2 = L4_2.inheritRotation
  
  function L5_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
    L3_3 = A0_3.parent
    L4_3 = A0_3.data
    L5_3 = A0_3.x
    L6_3 = A0_3.y
    L7_3 = A0_3.rotation
    L8_3 = A0_3.scaleX
    L9_3 = A0_3.scaleY
    L10_3 = nil
    L11_3 = nil
    L12_3 = nil
    L13_3 = nil
    L14_3 = nil
    L15_3 = nil
    L16_3 = L7_3
    L17_3 = L8_3
    L18_3 = L9_3
    if L3_3 then
      L19_3 = L3_3.m00
      L19_3 = L5_3 * L19_3
      L20_3 = L3_3.m01
      L20_3 = L6_3 * L20_3
      L19_3 = L19_3 + L20_3
      L20_3 = L3_3.worldX
      L14_3 = L19_3 + L20_3
      L19_3 = L3_3.m10
      L19_3 = L5_3 * L19_3
      L20_3 = L3_3.m11
      L20_3 = L6_3 * L20_3
      L19_3 = L19_3 + L20_3
      L20_3 = L3_3.worldY
      L15_3 = L19_3 + L20_3
      L19_3 = L3_2
      if L19_3 then
        L19_3 = L3_3.worldScaleX
        L17_3 = L19_3 * L17_3
        L19_3 = L3_3.worldScaleY
        L18_3 = L19_3 * L18_3
      end
      L19_3 = L4_2
      if L19_3 then
        L19_3 = L3_3.worldRotation
        L16_3 = L19_3 + L16_3
      end
    else
      if A1_3 then
        L14_3 = -L5_3
      else
        L14_3 = L5_3
      end
      if A2_3 then
        L15_3 = -L6_3
      else
        L15_3 = L6_3
      end
    end
    L19_3 = L16_3 + 360
    L19_3 = L19_3 % 360
    L20_3 = L4_1
    L21_3 = L9_1
    L21_3 = L21_3 * L19_3
    L22_3 = L8_1
    L21_3 = L21_3 * L22_3
    L20_3 = L20_3(L21_3)
    L21_3 = L5_1
    L21_3 = L21_3[L20_3]
    L22_3 = L6_1
    L22_3 = L22_3[L20_3]
    L10_3 = L21_3 * L17_3
    L12_3 = L22_3 * L17_3
    L23_3 = -L22_3
    L11_3 = L23_3 * L18_3
    L13_3 = L21_3 * L18_3
    if A1_3 then
      L10_3 = -L10_3
      L11_3 = -L11_3
    end
    if A2_3 then
      L12_3 = -L12_3
      L13_3 = -L13_3
    end
    L23_3 = L10_3
    L24_3 = L11_3
    A0_3.worldX = L14_3
    A0_3.m01 = L24_3
    A0_3.m00 = L23_3
    L23_3 = L12_3
    L24_3 = L13_3
    A0_3.worldY = L15_3
    A0_3.m11 = L24_3
    A0_3.m10 = L23_3
    L23_3 = L16_3
    L24_3 = L17_3
    A0_3.worldScaleY = L18_3
    A0_3.worldScaleX = L24_3
    A0_3.worldRotation = L23_3
  end
  
  L2_2.updateWorldTransform = L5_2
  
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.data
    L2_3 = L1_3.x
    A0_3.x = L2_3
    L2_3 = L1_3.y
    A0_3.y = L2_3
    L2_3 = L1_3.rotation
    A0_3.rotation = L2_3
    L2_3 = L1_3.scaleX
    A0_3.scaleX = L2_3
    L2_3 = L1_3.scaleY
    A0_3.scaleY = L2_3
  end
  
  L2_2.setToSetupPose = L5_2
  L6_2 = L2_2
  L5_2 = L2_2.setToSetupPose
  L5_2(L6_2)
  return L2_2
end

L0_1.new = L11_1
return L0_1
