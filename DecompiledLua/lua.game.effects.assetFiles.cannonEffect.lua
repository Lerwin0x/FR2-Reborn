local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L3_1.x = 184
L3_1.y = 130
L3_1.width = 32
L3_1.height = 32
L3_1.sourceX = 34
L3_1.sourceY = 35
L3_1.sourceWidth = 100
L3_1.sourceHeight = 100
L4_1 = {}
L4_1.x = 186
L4_1.y = 72
L4_1.width = 54
L4_1.height = 56
L4_1.sourceX = 23
L4_1.sourceY = 22
L4_1.sourceWidth = 100
L4_1.sourceHeight = 100
L5_1 = {}
L5_1.x = 186
L5_1.y = 2
L5_1.width = 62
L5_1.height = 68
L5_1.sourceX = 19
L5_1.sourceY = 18
L5_1.sourceWidth = 100
L5_1.sourceHeight = 100
L6_1 = {}
L6_1.x = 2
L6_1.y = 174
L6_1.width = 78
L6_1.height = 78
L6_1.sourceX = 12
L6_1.sourceY = 11
L6_1.sourceWidth = 100
L6_1.sourceHeight = 100
L7_1 = {}
L7_1.x = 98
L7_1.y = 2
L7_1.width = 86
L7_1.height = 84
L7_1.sourceX = 8
L7_1.sourceY = 9
L7_1.sourceWidth = 100
L7_1.sourceHeight = 100
L8_1 = {}
L8_1.x = 2
L8_1.y = 2
L8_1.width = 94
L8_1.height = 94
L8_1.sourceX = 5
L8_1.sourceY = 1
L8_1.sourceWidth = 100
L8_1.sourceHeight = 100
L9_1 = {}
L9_1.x = 98
L9_1.y = 88
L9_1.width = 84
L9_1.height = 84
L9_1.sourceX = 5
L9_1.sourceY = 7
L9_1.sourceWidth = 100
L9_1.sourceHeight = 100
L10_1 = {}
L10_1.x = 2
L10_1.y = 98
L10_1.width = 76
L10_1.height = 74
L10_1.sourceX = 4
L10_1.sourceY = 16
L10_1.sourceWidth = 100
L10_1.sourceHeight = 100
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L2_1[7] = L9_1
L2_1[8] = L10_1
L1_1.frames = L2_1
L1_1.sheetContentWidth = 256
L1_1.sheetContentHeight = 256
L0_1.sheet = L1_1
L1_1 = {}
L1_1["0"] = 1
L1_1["1"] = 2
L1_1["2"] = 3
L1_1["3"] = 4
L1_1["4"] = 5
L1_1["5"] = 6
L1_1["6"] = 7
L1_1["7"] = 8
L0_1.frameIndex = L1_1

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.sheet
  return L1_2
end

L0_1.getSheet = L1_1

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.frameIndex
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.getFrameIndex = L1_1
return L0_1
