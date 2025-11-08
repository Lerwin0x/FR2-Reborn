local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if not A1_2 then
    L3_2 = error
    L4_2 = "timelines cannot be nil"
    L5_2 = 2
    L3_2(L4_2, L5_2)
  end
  L3_2 = {}
  L3_2.name = A0_2
  L3_2.timelines = A1_2
  L3_2.duration = A2_2
  
  function L4_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    if not A1_3 then
      L6_3 = error
      L7_3 = "skeleton cannot be nil."
      L8_3 = 2
      L6_3(L7_3, L8_3)
    end
    if A4_3 then
      L6_3 = A2_2
      if 0 < L6_3 then
        L6_3 = A0_3.duration
        A3_3 = A3_3 % L6_3
        L6_3 = A0_3.duration
        A2_3 = A2_3 % L6_3
      end
    end
    L6_3 = ipairs
    L7_3 = A0_3.timelines
    L6_3, L7_3, L8_3 = L6_3(L7_3)
    for L9_3, L10_3 in L6_3, L7_3, L8_3 do
      L12_3 = L10_3
      L11_3 = L10_3.apply
      L13_3 = A1_3
      L14_3 = A2_3
      L15_3 = A3_3
      L16_3 = A5_3
      L17_3 = 1
      L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
    end
  end
  
  L3_2.apply = L4_2
  
  function L4_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3)
    local L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    if not A1_3 then
      L7_3 = error
      L8_3 = "skeleton cannot be nil."
      L9_3 = 2
      L7_3(L8_3, L9_3)
    end
    if A4_3 then
      L7_3 = A2_2
      if 0 < L7_3 then
        L7_3 = A0_3.duration
        A3_3 = A3_3 % L7_3
        L7_3 = A0_3.duration
        A2_3 = A2_3 % L7_3
      end
    end
    L7_3 = ipairs
    L8_3 = A0_3.timelines
    L7_3, L8_3, L9_3 = L7_3(L8_3)
    for L10_3, L11_3 in L7_3, L8_3, L9_3 do
      L13_3 = L11_3
      L12_3 = L11_3.apply
      L14_3 = A1_3
      L15_3 = A2_3
      L16_3 = A3_3
      L17_3 = A5_3
      L18_3 = A6_3
      L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
    end
  end
  
  L3_2.mix = L4_2
  return L3_2
end

L0_1.new = L1_1

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 0
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = #A0_2
  L5_2 = L5_2 + 1
  L5_2 = L5_2 / A2_2
  L5_2 = L5_2 - 2
  L4_2 = L4_2(L5_2)
  if L4_2 == 0 then
    return A2_2
  end
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = L4_2 / 2
  L5_2 = L5_2(L6_2)
  while true do
    L6_2 = L5_2 + 1
    L6_2 = L6_2 * A2_2
    L6_2 = A0_2[L6_2]
    if A1_2 >= L6_2 then
      L3_2 = L5_2 + 1
    else
      L4_2 = L5_2
    end
    if L3_2 == L4_2 then
      L6_2 = L3_2 + 1
      L6_2 = L6_2 * A2_2
      return L6_2
    end
    L6_2 = math
    L6_2 = L6_2.floor
    L7_2 = L3_2 + L4_2
    L7_2 = L7_2 / 2
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  end
end

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 0
  L4_2 = #A0_2
  L5_2 = A2_2
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    if A1_2 < L7_2 then
      return L6_2
    end
  end
  L3_2 = -1
  return L3_2
end

L3_1 = {}
L0_1.CurveTimeline = L3_1
L3_1 = L0_1.CurveTimeline

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = 0
  L1_2 = -1
  L2_2 = 10
  L3_2 = {}
  L4_2 = {}
  L3_2.curves = L4_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.curves
    L3_3 = A1_3 * 6
    L4_3 = L0_2
    L2_3[L3_3] = L4_3
  end
  
  L3_2.setLinear = L4_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.curves
    L3_3 = A1_3 * 6
    L4_3 = L1_2
    L2_3[L3_3] = L4_3
  end
  
  L3_2.setStepped = L4_2
  
  function L4_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
    L6_3 = L2_2
    L6_3 = 1 / L6_3
    L7_3 = L6_3 * L6_3
    L8_3 = L7_3 * L6_3
    L9_3 = 3 * L6_3
    L10_3 = 3 * L7_3
    L11_3 = 6 * L7_3
    L12_3 = 6 * L8_3
    L13_3 = -A2_3
    L13_3 = L13_3 * 2
    L13_3 = L13_3 + A4_3
    L14_3 = -A3_3
    L14_3 = L14_3 * 2
    L14_3 = L14_3 + A5_3
    L15_3 = A2_3 - A4_3
    L15_3 = L15_3 * 3
    L15_3 = L15_3 + 1
    L16_3 = A3_3 - A5_3
    L16_3 = L16_3 * 3
    L16_3 = L16_3 + 1
    L17_3 = A1_3 * 6
    L18_3 = A0_3.curves
    L19_3 = A2_3 * L9_3
    L20_3 = L13_3 * L10_3
    L19_3 = L19_3 + L20_3
    L20_3 = L15_3 * L8_3
    L19_3 = L19_3 + L20_3
    L18_3[L17_3] = L19_3
    L19_3 = L17_3 + 1
    L20_3 = A3_3 * L9_3
    L21_3 = L14_3 * L10_3
    L20_3 = L20_3 + L21_3
    L21_3 = L16_3 * L8_3
    L20_3 = L20_3 + L21_3
    L18_3[L19_3] = L20_3
    L19_3 = L17_3 + 2
    L20_3 = L13_3 * L11_3
    L21_3 = L15_3 * L12_3
    L20_3 = L20_3 + L21_3
    L18_3[L19_3] = L20_3
    L19_3 = L17_3 + 3
    L20_3 = L14_3 * L11_3
    L21_3 = L16_3 * L12_3
    L20_3 = L20_3 + L21_3
    L18_3[L19_3] = L20_3
    L19_3 = L17_3 + 4
    L20_3 = L15_3 * L12_3
    L18_3[L19_3] = L20_3
    L19_3 = L17_3 + 5
    L20_3 = L16_3 * L12_3
    L18_3[L19_3] = L20_3
  end
  
  L3_2.setCurve = L4_2
  
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L3_3 = A1_3 * 6
    L4_3 = A0_3.curves
    L5_3 = L4_3[L3_3]
    if not L5_3 then
      return A2_3
    end
    L6_3 = L1_2
    if L5_3 == L6_3 then
      L6_3 = 0
      return L6_3
    end
    L6_3 = L3_3 + 1
    L6_3 = L4_3[L6_3]
    L7_3 = L3_3 + 2
    L7_3 = L4_3[L7_3]
    L8_3 = L3_3 + 3
    L8_3 = L4_3[L8_3]
    L9_3 = L3_3 + 4
    L9_3 = L4_3[L9_3]
    L10_3 = L3_3 + 5
    L10_3 = L4_3[L10_3]
    L11_3 = L5_3
    L12_3 = L6_3
    L13_3 = L2_2
    L13_3 = L13_3 - 2
    while true do
      if A2_3 <= L11_3 then
        L14_3 = L11_3 - L5_3
        L15_3 = L12_3 - L6_3
        L16_3 = L12_3 - L15_3
        L17_3 = A2_3 - L14_3
        L16_3 = L16_3 * L17_3
        L17_3 = L11_3 - L14_3
        L16_3 = L16_3 / L17_3
        L16_3 = L15_3 + L16_3
        return L16_3
      end
      if L13_3 == 0 then
        break
      end
      L13_3 = L13_3 - 1
      L5_3 = L5_3 + L7_3
      L6_3 = L6_3 + L8_3
      L7_3 = L7_3 + L9_3
      L8_3 = L8_3 + L10_3
      L11_3 = L11_3 + L5_3
      L12_3 = L12_3 + L6_3
    end
    L14_3 = 1 - L12_3
    L15_3 = A2_3 - L11_3
    L14_3 = L14_3 * L15_3
    L15_3 = 1 - L11_3
    L14_3 = L14_3 / L15_3
    L14_3 = L12_3 + L14_3
    return L14_3
  end
  
  L3_2.getCurvePercent = L4_2
  return L3_2
end

L3_1.new = L4_1
L3_1 = {}
L0_1.RotateTimeline = L3_1
L3_1 = L0_1.RotateTimeline

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = -2
  L1_2 = 1
  L2_2 = L0_1
  L2_2 = L2_2.CurveTimeline
  L2_2 = L2_2.new
  L2_2 = L2_2()
  L3_2 = {}
  L2_2.frames = L3_2
  L2_2.boneIndex = -1
  
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.frames
    L2_3 = A0_3.frames
    L2_3 = #L2_3
    L2_3 = L2_3 - 1
    L1_3 = L1_3[L2_3]
    return L1_3
  end
  
  L2_2.getDuration = L3_2
  
  function L3_2(A0_3)
    local L1_3
    L1_3 = A0_3.frames
    L1_3 = #L1_3
    L1_3 = L1_3 + 1
    L1_3 = L1_3 / 2
    return L1_3
  end
  
  L2_2.getFrameCount = L3_2
  
  function L3_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3
    A1_3 = A1_3 * 2
    L4_3 = A0_3.frames
    L4_3[A1_3] = A2_3
    L4_3 = A0_3.frames
    L5_3 = A1_3 + 1
    L4_3[L5_3] = A3_3
  end
  
  L2_2.setFrame = L3_2
  
  function L3_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L6_3 = A0_3.frames
    L7_3 = L6_3[0]
    if A3_3 < L7_3 then
      return
    end
    L7_3 = A1_3.bones
    L8_3 = A0_3.boneIndex
    L7_3 = L7_3[L8_3]
    L8_3 = #L6_3
    L8_3 = L8_3 - 1
    L8_3 = L6_3[L8_3]
    if A3_3 >= L8_3 then
      L8_3 = L7_3.data
      L8_3 = L8_3.rotation
      L9_3 = #L6_3
      L9_3 = L6_3[L9_3]
      L8_3 = L8_3 + L9_3
      L9_3 = L7_3.rotation
      L8_3 = L8_3 - L9_3
      while 180 < L8_3 do
        L8_3 = L8_3 - 360
      end
      while L8_3 < -180 do
        L8_3 = L8_3 + 360
      end
      L9_3 = L7_3.rotation
      L10_3 = L8_3 * A5_3
      L9_3 = L9_3 + L10_3
      L7_3.rotation = L9_3
      return
    end
    L8_3 = L1_1
    L9_3 = L6_3
    L10_3 = A3_3
    L11_3 = 2
    L8_3 = L8_3(L9_3, L10_3, L11_3)
    L9_3 = L8_3 - 1
    L9_3 = L6_3[L9_3]
    L10_3 = L6_3[L8_3]
    L11_3 = A3_3 - L10_3
    L12_3 = L0_2
    L12_3 = L8_3 + L12_3
    L12_3 = L6_3[L12_3]
    L12_3 = L12_3 - L10_3
    L11_3 = L11_3 / L12_3
    L11_3 = 1 - L11_3
    if L11_3 < 0 then
      L11_3 = 0
    elseif 1 < L11_3 then
      L11_3 = 1
    end
    L13_3 = A0_3
    L12_3 = A0_3.getCurvePercent
    L14_3 = L8_3 / 2
    L14_3 = L14_3 - 1
    L15_3 = L11_3
    L12_3 = L12_3(L13_3, L14_3, L15_3)
    L11_3 = L12_3
    L12_3 = L1_2
    L12_3 = L8_3 + L12_3
    L12_3 = L6_3[L12_3]
    L12_3 = L12_3 - L9_3
    while 180 < L12_3 do
      L12_3 = L12_3 - 360
    end
    while L12_3 < -180 do
      L12_3 = L12_3 + 360
    end
    L13_3 = L7_3.data
    L13_3 = L13_3.rotation
    L14_3 = L12_3 * L11_3
    L14_3 = L9_3 + L14_3
    L13_3 = L13_3 + L14_3
    L14_3 = L7_3.rotation
    L12_3 = L13_3 - L14_3
    while 180 < L12_3 do
      L12_3 = L12_3 - 360
    end
    while L12_3 < -180 do
      L12_3 = L12_3 + 360
    end
    L13_3 = L7_3.rotation
    L14_3 = L12_3 * A5_3
    L13_3 = L13_3 + L14_3
    L7_3.rotation = L13_3
  end
  
  L2_2.apply = L3_2
  return L2_2
end

L3_1.new = L4_1
L3_1 = {}
L0_1.TranslateTimeline = L3_1
L3_1 = L0_1.TranslateTimeline

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = -3
  L1_2 = 1
  L2_2 = 2
  L3_2 = L0_1
  L3_2 = L3_2.CurveTimeline
  L3_2 = L3_2.new
  L3_2 = L3_2()
  L4_2 = {}
  L3_2.frames = L4_2
  L3_2.boneIndex = -1
  
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.frames
    L2_3 = A0_3.frames
    L2_3 = #L2_3
    L2_3 = L2_3 - 2
    L1_3 = L1_3[L2_3]
    return L1_3
  end
  
  L3_2.getDuration = L4_2
  
  function L4_2(A0_3)
    local L1_3
    L1_3 = A0_3.frames
    L1_3 = #L1_3
    L1_3 = L1_3 + 1
    L1_3 = L1_3 / 3
    return L1_3
  end
  
  L3_2.getFrameCount = L4_2
  
  function L4_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3
    A1_3 = A1_3 * 3
    L5_3 = A0_3.frames
    L5_3[A1_3] = A2_3
    L5_3 = A0_3.frames
    L6_3 = A1_3 + 1
    L5_3[L6_3] = A3_3
    L5_3 = A0_3.frames
    L6_3 = A1_3 + 2
    L5_3[L6_3] = A4_3
  end
  
  L3_2.setFrame = L4_2
  
  function L4_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L6_3 = A0_3.frames
    L7_3 = L6_3[0]
    if A3_3 < L7_3 then
      return
    end
    L7_3 = A1_3.bones
    L8_3 = A0_3.boneIndex
    L7_3 = L7_3[L8_3]
    L8_3 = #L6_3
    L8_3 = L8_3 - 2
    L8_3 = L6_3[L8_3]
    if A3_3 >= L8_3 then
      L8_3 = L7_3.x
      L9_3 = L7_3.data
      L9_3 = L9_3.x
      L10_3 = #L6_3
      L10_3 = L10_3 - 1
      L10_3 = L6_3[L10_3]
      L9_3 = L9_3 + L10_3
      L10_3 = L7_3.x
      L9_3 = L9_3 - L10_3
      L9_3 = L9_3 * A5_3
      L8_3 = L8_3 + L9_3
      L7_3.x = L8_3
      L8_3 = L7_3.y
      L9_3 = L7_3.data
      L9_3 = L9_3.y
      L10_3 = #L6_3
      L10_3 = L6_3[L10_3]
      L9_3 = L9_3 + L10_3
      L10_3 = L7_3.y
      L9_3 = L9_3 - L10_3
      L9_3 = L9_3 * A5_3
      L8_3 = L8_3 + L9_3
      L7_3.y = L8_3
      return
    end
    L8_3 = L1_1
    L9_3 = L6_3
    L10_3 = A3_3
    L11_3 = 3
    L8_3 = L8_3(L9_3, L10_3, L11_3)
    L9_3 = L8_3 - 2
    L9_3 = L6_3[L9_3]
    L10_3 = L8_3 - 1
    L10_3 = L6_3[L10_3]
    L11_3 = L6_3[L8_3]
    L12_3 = A3_3 - L11_3
    L13_3 = L0_2
    L13_3 = L8_3 + L13_3
    L13_3 = L6_3[L13_3]
    L13_3 = L13_3 - L11_3
    L12_3 = L12_3 / L13_3
    L12_3 = 1 - L12_3
    if L12_3 < 0 then
      L12_3 = 0
    elseif 1 < L12_3 then
      L12_3 = 1
    end
    L14_3 = A0_3
    L13_3 = A0_3.getCurvePercent
    L15_3 = L8_3 / 3
    L15_3 = L15_3 - 1
    L16_3 = L12_3
    L13_3 = L13_3(L14_3, L15_3, L16_3)
    L12_3 = L13_3
    L13_3 = L7_3.x
    L14_3 = L7_3.data
    L14_3 = L14_3.x
    L14_3 = L14_3 + L9_3
    L15_3 = L1_2
    L15_3 = L8_3 + L15_3
    L15_3 = L6_3[L15_3]
    L15_3 = L15_3 - L9_3
    L15_3 = L15_3 * L12_3
    L14_3 = L14_3 + L15_3
    L15_3 = L7_3.x
    L14_3 = L14_3 - L15_3
    L14_3 = L14_3 * A5_3
    L13_3 = L13_3 + L14_3
    L7_3.x = L13_3
    L13_3 = L7_3.y
    L14_3 = L7_3.data
    L14_3 = L14_3.y
    L14_3 = L14_3 + L10_3
    L15_3 = L2_2
    L15_3 = L8_3 + L15_3
    L15_3 = L6_3[L15_3]
    L15_3 = L15_3 - L10_3
    L15_3 = L15_3 * L12_3
    L14_3 = L14_3 + L15_3
    L15_3 = L7_3.y
    L14_3 = L14_3 - L15_3
    L14_3 = L14_3 * A5_3
    L13_3 = L13_3 + L14_3
    L7_3.y = L13_3
  end
  
  L3_2.apply = L4_2
  return L3_2
end

L3_1.new = L4_1
L3_1 = {}
L0_1.ScaleTimeline = L3_1
L3_1 = L0_1.ScaleTimeline

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = -3
  L1_2 = 1
  L2_2 = 2
  L3_2 = L0_1
  L3_2 = L3_2.TranslateTimeline
  L3_2 = L3_2.new
  L3_2 = L3_2()
  
  function L4_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L6_3 = A0_3.frames
    L7_3 = L6_3[0]
    if A3_3 < L7_3 then
      return
    end
    L7_3 = A1_3.bones
    L8_3 = A0_3.boneIndex
    L7_3 = L7_3[L8_3]
    L8_3 = #L6_3
    L8_3 = L8_3 - 2
    L8_3 = L6_3[L8_3]
    if A3_3 >= L8_3 then
      L8_3 = L7_3.scaleX
      L9_3 = L7_3.data
      L9_3 = L9_3.scaleX
      L9_3 = L9_3 - 1
      L10_3 = #L6_3
      L10_3 = L10_3 - 1
      L10_3 = L6_3[L10_3]
      L9_3 = L9_3 + L10_3
      L10_3 = L7_3.scaleX
      L9_3 = L9_3 - L10_3
      L9_3 = L9_3 * A5_3
      L8_3 = L8_3 + L9_3
      L7_3.scaleX = L8_3
      L8_3 = L7_3.scaleY
      L9_3 = L7_3.data
      L9_3 = L9_3.scaleY
      L9_3 = L9_3 - 1
      L10_3 = #L6_3
      L10_3 = L6_3[L10_3]
      L9_3 = L9_3 + L10_3
      L10_3 = L7_3.scaleY
      L9_3 = L9_3 - L10_3
      L9_3 = L9_3 * A5_3
      L8_3 = L8_3 + L9_3
      L7_3.scaleY = L8_3
      return
    end
    L8_3 = L1_1
    L9_3 = L6_3
    L10_3 = A3_3
    L11_3 = 3
    L8_3 = L8_3(L9_3, L10_3, L11_3)
    L9_3 = L8_3 - 2
    L9_3 = L6_3[L9_3]
    L10_3 = L8_3 - 1
    L10_3 = L6_3[L10_3]
    L11_3 = L6_3[L8_3]
    L12_3 = A3_3 - L11_3
    L13_3 = L0_2
    L13_3 = L8_3 + L13_3
    L13_3 = L6_3[L13_3]
    L13_3 = L13_3 - L11_3
    L12_3 = L12_3 / L13_3
    L12_3 = 1 - L12_3
    if L12_3 < 0 then
      L12_3 = 0
    elseif 1 < L12_3 then
      L12_3 = 1
    end
    L14_3 = A0_3
    L13_3 = A0_3.getCurvePercent
    L15_3 = L8_3 / 3
    L15_3 = L15_3 - 1
    L16_3 = L12_3
    L13_3 = L13_3(L14_3, L15_3, L16_3)
    L12_3 = L13_3
    L13_3 = L7_3.scaleX
    L14_3 = L7_3.data
    L14_3 = L14_3.scaleX
    L14_3 = L14_3 - 1
    L14_3 = L14_3 + L9_3
    L15_3 = L1_2
    L15_3 = L8_3 + L15_3
    L15_3 = L6_3[L15_3]
    L15_3 = L15_3 - L9_3
    L15_3 = L15_3 * L12_3
    L14_3 = L14_3 + L15_3
    L15_3 = L7_3.scaleX
    L14_3 = L14_3 - L15_3
    L14_3 = L14_3 * A5_3
    L13_3 = L13_3 + L14_3
    L7_3.scaleX = L13_3
    L13_3 = L7_3.scaleY
    L14_3 = L7_3.data
    L14_3 = L14_3.scaleY
    L14_3 = L14_3 - 1
    L14_3 = L14_3 + L10_3
    L15_3 = L2_2
    L15_3 = L8_3 + L15_3
    L15_3 = L6_3[L15_3]
    L15_3 = L15_3 - L10_3
    L15_3 = L15_3 * L12_3
    L14_3 = L14_3 + L15_3
    L15_3 = L7_3.scaleY
    L14_3 = L14_3 - L15_3
    L14_3 = L14_3 * A5_3
    L13_3 = L13_3 + L14_3
    L7_3.scaleY = L13_3
  end
  
  L3_2.apply = L4_2
  return L3_2
end

L3_1.new = L4_1
L3_1 = {}
L0_1.ColorTimeline = L3_1
L3_1 = L0_1.ColorTimeline

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = -5
  L1_2 = 1
  L2_2 = 2
  L3_2 = 3
  L4_2 = 4
  L5_2 = L0_1
  L5_2 = L5_2.CurveTimeline
  L5_2 = L5_2.new
  L5_2 = L5_2()
  L6_2 = {}
  L5_2.frames = L6_2
  L5_2.slotIndex = -1
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.frames
    L2_3 = A0_3.frames
    L2_3 = #L2_3
    L2_3 = L2_3 - 4
    L1_3 = L1_3[L2_3]
    return L1_3
  end
  
  L5_2.getDuration = L6_2
  
  function L6_2(A0_3)
    local L1_3
    L1_3 = A0_3.frames
    L1_3 = #L1_3
    L1_3 = L1_3 + 1
    L1_3 = L1_3 / 5
    return L1_3
  end
  
  L5_2.getFrameCount = L6_2
  
  function L6_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3)
    local L7_3, L8_3
    A1_3 = A1_3 * 5
    L7_3 = A0_3.frames
    L7_3[A1_3] = A2_3
    L7_3 = A0_3.frames
    L8_3 = A1_3 + 1
    L7_3[L8_3] = A3_3
    L7_3 = A0_3.frames
    L8_3 = A1_3 + 2
    L7_3[L8_3] = A4_3
    L7_3 = A0_3.frames
    L8_3 = A1_3 + 3
    L7_3[L8_3] = A5_3
    L7_3 = A0_3.frames
    L8_3 = A1_3 + 4
    L7_3[L8_3] = A6_3
  end
  
  L5_2.setFrame = L6_2
  
  function L6_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
    L6_3 = A0_3.frames
    L7_3 = L6_3[0]
    if A3_3 < L7_3 then
      return
    end
    L7_3 = nil
    L8_3 = nil
    L9_3 = nil
    L10_3 = nil
    L11_3 = #L6_3
    L11_3 = L11_3 - 4
    L11_3 = L6_3[L11_3]
    if A3_3 >= L11_3 then
      L11_3 = #L6_3
      L11_3 = L11_3 - 3
      L7_3 = L6_3[L11_3]
      L11_3 = #L6_3
      L11_3 = L11_3 - 2
      L8_3 = L6_3[L11_3]
      L11_3 = #L6_3
      L11_3 = L11_3 - 1
      L9_3 = L6_3[L11_3]
      L11_3 = #L6_3
      L10_3 = L6_3[L11_3]
    else
      L11_3 = L1_1
      L12_3 = L6_3
      L13_3 = A3_3
      L14_3 = 5
      L11_3 = L11_3(L12_3, L13_3, L14_3)
      L12_3 = L11_3 - 4
      L12_3 = L6_3[L12_3]
      L13_3 = L11_3 - 3
      L13_3 = L6_3[L13_3]
      L14_3 = L11_3 - 2
      L14_3 = L6_3[L14_3]
      L15_3 = L11_3 - 1
      L15_3 = L6_3[L15_3]
      L16_3 = L6_3[L11_3]
      L17_3 = A3_3 - L16_3
      L18_3 = L0_2
      L18_3 = L11_3 + L18_3
      L18_3 = L6_3[L18_3]
      L18_3 = L18_3 - L16_3
      L17_3 = L17_3 / L18_3
      L17_3 = 1 - L17_3
      if L17_3 < 0 then
        L17_3 = 0
      elseif 255 < L17_3 then
        L17_3 = 255
      end
      L19_3 = A0_3
      L18_3 = A0_3.getCurvePercent
      L20_3 = L11_3 / 5
      L20_3 = L20_3 - 1
      L21_3 = L17_3
      L18_3 = L18_3(L19_3, L20_3, L21_3)
      L17_3 = L18_3
      L18_3 = L1_2
      L18_3 = L11_3 + L18_3
      L18_3 = L6_3[L18_3]
      L18_3 = L18_3 - L12_3
      L18_3 = L18_3 * L17_3
      L7_3 = L12_3 + L18_3
      L18_3 = L2_2
      L18_3 = L11_3 + L18_3
      L18_3 = L6_3[L18_3]
      L18_3 = L18_3 - L13_3
      L18_3 = L18_3 * L17_3
      L8_3 = L13_3 + L18_3
      L18_3 = L3_2
      L18_3 = L11_3 + L18_3
      L18_3 = L6_3[L18_3]
      L18_3 = L18_3 - L14_3
      L18_3 = L18_3 * L17_3
      L9_3 = L14_3 + L18_3
      L18_3 = L4_2
      L18_3 = L11_3 + L18_3
      L18_3 = L6_3[L18_3]
      L18_3 = L18_3 - L15_3
      L18_3 = L18_3 * L17_3
      L10_3 = L15_3 + L18_3
    end
    L11_3 = A1_3.slots
    L12_3 = A0_3.slotIndex
    L11_3 = L11_3[L12_3]
    if A5_3 < 1 then
      L13_3 = L11_3
      L12_3 = L11_3.setColor
      L14_3 = L11_3.r
      L15_3 = L11_3.r
      L15_3 = L7_3 - L15_3
      L15_3 = L15_3 * A5_3
      L14_3 = L14_3 + L15_3
      L15_3 = L11_3.g
      L16_3 = L11_3.g
      L16_3 = L8_3 - L16_3
      L16_3 = L16_3 * A5_3
      L15_3 = L15_3 + L16_3
      L16_3 = L11_3.b
      L17_3 = L11_3.b
      L17_3 = L9_3 - L17_3
      L17_3 = L17_3 * A5_3
      L16_3 = L16_3 + L17_3
      L17_3 = L11_3.a
      L18_3 = L11_3.a
      L18_3 = L10_3 - L18_3
      L18_3 = L18_3 * A5_3
      L17_3 = L17_3 + L18_3
      L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
    else
      L13_3 = L11_3
      L12_3 = L11_3.setColor
      L14_3 = L7_3
      L15_3 = L8_3
      L16_3 = L9_3
      L17_3 = L10_3
      L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
    end
  end
  
  L5_2.apply = L6_2
  return L5_2
end

L3_1.new = L4_1
L3_1 = {}
L0_1.AttachmentTimeline = L3_1
L3_1 = L0_1.AttachmentTimeline

function L4_1()
  local L0_2, L1_2
  L0_2 = {}
  L1_2 = {}
  L0_2.frames = L1_2
  L1_2 = {}
  L0_2.attachmentNames = L1_2
  L0_2.slotName = nil
  
  function L1_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.frames
    L2_3 = A0_3.frames
    L2_3 = #L2_3
    L1_3 = L1_3[L2_3]
    return L1_3
  end
  
  L0_2.getDuration = L1_2
  
  function L1_2(A0_3)
    local L1_3
    L1_3 = A0_3.frames
    L1_3 = #L1_3
    L1_3 = L1_3 + 1
    return L1_3
  end
  
  L0_2.getFrameCount = L1_2
  
  function L1_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3
    L4_3 = A0_3.frames
    L4_3[A1_3] = A2_3
    L4_3 = A0_3.attachmentNames
    L4_3[A1_3] = A3_3
  end
  
  L0_2.setFrame = L1_2
  
  function L1_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L6_3 = A0_3.frames
    L7_3 = L6_3[0]
    if A3_3 < L7_3 then
      return
    end
    L7_3 = nil
    L8_3 = #L6_3
    L8_3 = L6_3[L8_3]
    if A3_3 >= L8_3 then
      L7_3 = #L6_3
    else
      L8_3 = L1_1
      L9_3 = L6_3
      L10_3 = A3_3
      L11_3 = 1
      L8_3 = L8_3(L9_3, L10_3, L11_3)
      L7_3 = L8_3 - 1
    end
    L8_3 = A0_3.attachmentNames
    L8_3 = L8_3[L7_3]
    L9_3 = A1_3.slotsByName
    L10_3 = A0_3.slotName
    L9_3 = L9_3[L10_3]
    if L8_3 then
      L10_3 = L9_3.attachment
      if not L10_3 then
        L11_3 = L9_3
        L10_3 = L9_3.setAttachment
        L13_3 = A1_3
        L12_3 = A1_3.getAttachment
        L14_3 = A0_3.slotName
        L15_3 = L8_3
        L12_3, L13_3, L14_3, L15_3 = L12_3(L13_3, L14_3, L15_3)
        L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
      else
        L10_3 = L9_3.attachment
        L10_3 = L10_3.name
        if L10_3 ~= L8_3 then
          L11_3 = L9_3
          L10_3 = L9_3.setAttachment
          L13_3 = A1_3
          L12_3 = A1_3.getAttachment
          L14_3 = A0_3.slotName
          L15_3 = L8_3
          L12_3, L13_3, L14_3, L15_3 = L12_3(L13_3, L14_3, L15_3)
          L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
        end
      end
    else
      L11_3 = L9_3
      L10_3 = L9_3.setAttachment
      L12_3 = nil
      L10_3(L11_3, L12_3)
    end
  end
  
  L0_2.apply = L1_2
  return L0_2
end

L3_1.new = L4_1
L3_1 = {}
L0_1.EventTimeline = L3_1
L3_1 = L0_1.EventTimeline

function L4_1()
  local L0_2, L1_2
  L0_2 = {}
  L1_2 = {}
  L0_2.frames = L1_2
  L1_2 = {}
  L0_2.events = L1_2
  
  function L1_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.frames
    L2_3 = A0_3.frames
    L2_3 = #L2_3
    L1_3 = L1_3[L2_3]
    return L1_3
  end
  
  L0_2.getDuration = L1_2
  
  function L1_2(A0_3)
    local L1_3
    L1_3 = A0_3.frames
    L1_3 = #L1_3
    L1_3 = L1_3 + 1
    return L1_3
  end
  
  L0_2.getFrameCount = L1_2
  
  function L1_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3
    L4_3 = A0_3.frames
    L4_3[A1_3] = A2_3
    L4_3 = A0_3.events
    L4_3[A1_3] = A3_3
  end
  
  L0_2.setFrame = L1_2
  
  function L1_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    if not A4_3 then
      return
    end
    L6_3 = A0_3.frames
    L7_3 = #L6_3
    if A3_3 < A2_3 then
      L9_3 = A0_3
      L8_3 = A0_3.apply
      L10_3 = A1_3
      L11_3 = A2_3
      L12_3 = 999999
      L13_3 = A4_3
      L14_3 = A5_3
      L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      A2_3 = -1
    else
      L8_3 = L7_3 - 1
      L8_3 = L6_3[L8_3]
      if A2_3 >= L8_3 then
        return
      end
    end
    L8_3 = L6_3[0]
    if A3_3 < L8_3 then
      return
    end
    L8_3 = nil
    L9_3 = L6_3[0]
    if A2_3 < L9_3 then
      L8_3 = 0
    else
      L9_3 = L1_1
      L10_3 = L6_3
      L11_3 = A2_3
      L12_3 = 1
      L9_3 = L9_3(L10_3, L11_3, L12_3)
      L8_3 = L9_3
      L9_3 = L6_3[L8_3]
      while 0 < L8_3 do
        L10_3 = L8_3 - 1
        L10_3 = L6_3[L10_3]
        if L10_3 ~= L9_3 then
          break
        end
        L8_3 = L8_3 - 1
      end
    end
    L9_3 = A0_3.events
    while L7_3 > L8_3 do
      L10_3 = L6_3[L8_3]
      if not (A3_3 >= L10_3) then
        break
      end
      L10_3 = table
      L10_3 = L10_3.insert
      L11_3 = A4_3
      L12_3 = L9_3[L8_3]
      L10_3(L11_3, L12_3)
      L8_3 = L8_3 + 1
    end
  end
  
  L0_2.apply = L1_2
  return L0_2
end

L3_1.new = L4_1
L3_1 = {}
L0_1.DrawOrderTimeline = L3_1
L3_1 = L0_1.DrawOrderTimeline

function L4_1()
  local L0_2, L1_2
  L0_2 = {}
  L1_2 = {}
  L0_2.frames = L1_2
  L1_2 = {}
  L0_2.drawOrders = L1_2
  
  function L1_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.frames
    L2_3 = A0_3.frames
    L2_3 = #L2_3
    L1_3 = L1_3[L2_3]
    return L1_3
  end
  
  L0_2.getDuration = L1_2
  
  function L1_2(A0_3)
    local L1_3
    L1_3 = A0_3.frames
    L1_3 = #L1_3
    L1_3 = L1_3 + 1
    return L1_3
  end
  
  L0_2.getFrameCount = L1_2
  
  function L1_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3
    L4_3 = A0_3.frames
    L4_3[A1_3] = A2_3
    L4_3 = A0_3.drawOrders
    L4_3[A1_3] = A3_3
  end
  
  L0_2.setFrame = L1_2
  
  function L1_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L6_3 = A0_3.frames
    L7_3 = L6_3[0]
    if A3_3 < L7_3 then
      return
    end
    L7_3 = nil
    L8_3 = #L6_3
    L8_3 = L6_3[L8_3]
    if A3_3 >= L8_3 then
      L7_3 = #L6_3
    else
      L8_3 = L1_1
      L9_3 = L6_3
      L10_3 = A3_3
      L11_3 = 1
      L8_3 = L8_3(L9_3, L10_3, L11_3)
      L7_3 = L8_3 - 1
    end
    L8_3 = A1_3.drawOrder
    L9_3 = A1_3.slots
    L10_3 = A0_3.drawOrders
    L10_3 = L10_3[L7_3]
    if not L10_3 then
      L11_3 = ipairs
      L12_3 = L9_3
      L11_3, L12_3, L13_3 = L11_3(L12_3)
      for L14_3, L15_3 in L11_3, L12_3, L13_3 do
        L16_3 = L9_3[L14_3]
        L8_3[L14_3] = L16_3
      end
    else
      L11_3 = ipairs
      L12_3 = L10_3
      L11_3, L12_3, L13_3 = L11_3(L12_3)
      for L14_3, L15_3 in L11_3, L12_3, L13_3 do
        L16_3 = A1_3.slots
        L16_3 = L16_3[L15_3]
        L8_3[L14_3] = L16_3
      end
    end
  end
  
  L0_2.apply = L1_2
  return L0_2
end

L3_1.new = L4_1
return L0_1
