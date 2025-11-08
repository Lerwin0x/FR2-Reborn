local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = {}
L1_1 = nil
L2_1 = nil
L3_1 = nil
L4_1 = {}
L5_1 = {}
L5_1.x = 130
L5_1.y = 302
L5_1.width = 524
L5_1.height = 176
L4_1["4.1-trunks"] = L5_1
L5_1 = {}
L5_1.x = 90
L5_1.y = 200
L5_1.width = 533
L5_1.height = 270
L4_1["4.4-shrooms"] = L5_1
L5_1 = {}
L5_1.x = 106
L5_1.y = 252
L5_1.width = 555
L5_1.height = 279
L4_1["4.4-thorns"] = L5_1
L5_1 = {}
L5_1.x = 114
L5_1.y = 300
L5_1.width = 551
L5_1.height = 182
L4_1["4.1-flowerfield"] = L5_1
L5_1 = {}
L5_1.x = 316
L5_1.y = 278
L5_1.width = 228
L5_1.height = 216
L4_1["4.1-big_trunk"] = L5_1
L5_1 = {}
L5_1.x = 0
L5_1.y = 0
L5_1.width = 767
L5_1.height = 641
L4_1["5.2_landmark_clothes"] = L5_1
L5_1 = {}
L5_1.x = 0
L5_1.y = 0
L5_1.width = 767
L5_1.height = 641
L4_1["5.4_landmark_flowers"] = L5_1
L5_1 = {}
L5_1.x = 0
L5_1.y = 0
L5_1.width = 767
L5_1.height = 641
L4_1["5.5_landmark_cannons"] = L5_1
L5_1 = {}
L5_1.x = 0
L5_1.y = 0
L5_1.width = 767
L5_1.height = 641
L4_1["5.5_cannons"] = L5_1
L5_1 = {}
L5_1.x = 0
L5_1.y = 0
L5_1.width = 767
L5_1.height = 641
L4_1["4.2_structure"] = L5_1
L5_1 = {}
L5_1.x = 0
L5_1.y = 0
L5_1.width = 767
L5_1.height = 641
L4_1["5.2_crystals"] = L5_1
L5_1 = {}
L5_1.x = 0
L5_1.y = 0
L5_1.width = 767
L5_1.height = 641
L4_1["5.4_spaceship"] = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L1_1 = L1_2
  L1_2 = 1
  L2_2 = A0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1
    L6_2 = display
    L6_2 = L6_2.newGroup
    L6_2 = L6_2()
    L5_2[L4_2] = L6_2
    L5_2 = L1_1
    L5_2 = L5_2[L4_2]
    L5_2.moved = 0
  end
end

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = L3_1
  if not L2_2 then
    L2_2 = "blue"
    L3_1 = L2_2
  end
  L2_2 = 480
  L3_2 = 320
  L4_2 = 0
  if A0_2 == 2 then
    L2_2 = 680
    L3_2 = 327
    L5_2 = L2_1
    if L5_2 == "space" then
      L4_2 = -10
    end
  elseif A0_2 == 3 then
    L5_2 = L2_1
    if L5_2 == "space" then
      L2_2 = 680
      L3_2 = 327
    else
      L2_2 = 680
      L3_2 = 236
      L4_2 = 110
    end
  end
  L5_2 = L3_1
  if L5_2 == "tall" and A0_2 == 2 then
    L5_2 = L2_1
    if L5_2 == "town" then
      L5_2 = "blue"
      L3_1 = L5_2
    end
  end
  L5_2 = L3_1
  if L5_2 == "dusk" then
    L5_2 = L2_1
    if L5_2 == "town" then
      L5_2 = "blue"
      L3_1 = L5_2
    end
  end
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = "images/map/"
  L7_2 = L2_1
  L8_2 = "/background/"
  L9_2 = A0_2
  L10_2 = "_"
  L11_2 = L3_1
  L12_2 = ".png"
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
  L7_2 = L2_2
  L8_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L1_2 = L5_2
  if not L1_2 then
    L5_2 = "blue"
    L6_2 = display
    L6_2 = L6_2.newImageRect
    L7_2 = "images/map/"
    L8_2 = L2_1
    L9_2 = "/background/"
    L10_2 = A0_2
    L11_2 = "_"
    L12_2 = L5_2
    L13_2 = ".png"
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
    L8_2 = L2_2
    L9_2 = L3_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L1_2 = L6_2
  end
  L1_2.anchorX = 0
  L1_2.anchorY = 0
  L1_2.x = 0
  L5_2 = 0 + L4_2
  L1_2.y = L5_2
  L5_2 = L1_1
  L5_2 = L5_2[A0_2]
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  if 1 < A0_2 then
    L5_2 = display
    L5_2 = L5_2.newImageRect
    L6_2 = "images/map/"
    L7_2 = L2_1
    L8_2 = "/background/"
    L9_2 = A0_2
    L10_2 = "_"
    L11_2 = L3_1
    L12_2 = ".png"
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
    L7_2 = L2_2
    L8_2 = L3_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if not L5_2 then
      L6_2 = "blue"
      L7_2 = display
      L7_2 = L7_2.newImageRect
      L8_2 = "images/map/"
      L9_2 = L2_1
      L10_2 = "/background/"
      L11_2 = A0_2
      L12_2 = "_"
      L13_2 = L6_2
      L14_2 = ".png"
      L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2
      L9_2 = L2_2
      L10_2 = L3_2
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L5_2 = L7_2
    end
    L5_2.anchorX = 0
    L5_2.anchorY = 0
    L6_2 = L1_2.x
    L7_2 = L1_2.width
    L8_2 = L1_2.xScale
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 + L7_2
    L6_2 = L6_2 - 2
    L5_2.x = L6_2
    L6_2 = 0 + L4_2
    L5_2.y = L6_2
    L6_2 = L1_1
    L6_2 = L6_2[A0_2]
    L7_2 = L6_2
    L6_2 = L6_2.insert
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = display
    L6_2 = L6_2.newImageRect
    L7_2 = "images/map/"
    L8_2 = L2_1
    L9_2 = "/background/"
    L10_2 = A0_2
    L11_2 = "_"
    L12_2 = L3_1
    L13_2 = ".png"
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
    L8_2 = L2_2
    L9_2 = L3_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if not L6_2 then
      L7_2 = "blue"
      L8_2 = display
      L8_2 = L8_2.newImageRect
      L9_2 = "images/map/"
      L10_2 = L2_1
      L11_2 = "/background/"
      L12_2 = A0_2
      L13_2 = "_"
      L14_2 = L7_2
      L15_2 = ".png"
      L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
      L10_2 = L2_2
      L11_2 = L3_2
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L6_2 = L8_2
    end
    L6_2.anchorX = 0
    L6_2.anchorY = 0
    L7_2 = L1_2.x
    L8_2 = L1_2.width
    L8_2 = 2 * L8_2
    L9_2 = L1_2.xScale
    L8_2 = L8_2 * L9_2
    L7_2 = L7_2 + L8_2
    L7_2 = L7_2 - 3
    L6_2.x = L7_2
    L7_2 = 0 + L4_2
    L6_2.y = L7_2
    L7_2 = L1_1
    L7_2 = L7_2[A0_2]
    L8_2 = L7_2
    L7_2 = L7_2.insert
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end

function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = 767
  L5_2 = 641
  L6_2 = L2_1
  if L6_2 == "space" then
    L4_2 = 613.6
    L5_2 = 512.8000000000001
  end
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = "images/map/"
  L8_2 = L2_1
  L9_2 = "/background/"
  L10_2 = A0_2
  L11_2 = "."
  L12_2 = A1_2
  L13_2 = ".png"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L6_2.anchorX = 0
  L6_2.anchorY = 0
  L7_2 = A2_2 * 0.5
  L6_2.x = L7_2
  L7_2 = A3_2 * 0.5
  L6_2.y = L7_2
  L7_2 = L1_1
  L7_2 = L7_2[A0_2]
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end

function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = L4_1
  L4_2 = L4_2[A1_2]
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = "images/map/"
  L7_2 = L2_1
  L8_2 = "/background/"
  L9_2 = A1_2
  L10_2 = ".png"
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L7_2 = L4_2.width
  L8_2 = L4_2.height
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if not L5_2 then
    return
  end
  L6_2 = L2_1
  if L6_2 == "space" then
    L6_2 = L5_2.width
    L6_2 = L6_2 * 0.8
    L5_2.width = L6_2
    L6_2 = L5_2.height
    L6_2 = L6_2 * 0.8
    L5_2.height = L6_2
  end
  L5_2.anchorX = 0
  L5_2.anchorY = 0
  L6_2 = A2_2 * 0.5
  L7_2 = L4_2.x
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L6_2 = A3_2 * 0.5
  L7_2 = L4_2.y
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  L6_2 = L1_1
  L6_2 = L6_2[A0_2]
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = "images/map/sunbeams"
  L5_2 = A0_2
  L6_2 = ".png"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = 647
  L6_2 = 600
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    return
  end
  L3_2.anchorX = 0
  L3_2.anchorY = 0
  L4_2 = A1_2 * 0.5
  L3_2.x = L4_2
  L4_2 = A2_2 * 0.5
  L3_2.y = L4_2
  L4_2 = L1_1
  L4_2 = L4_2[6]
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end

function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = 1
  L1_2 = 3
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L6_1
    L5_2 = L3_2
    L4_2(L5_2)
  end
end

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = 0.8
  if A1_2 == 4 then
    L2_2 = 0.6
  end
  L3_2 = 1
  L4_2 = A0_2.objects
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.objects
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.x
    L8_2 = A0_2.objects
    L8_2 = L8_2[L6_2]
    L8_2 = L8_2.y
    L9_2 = L7_2 * L2_2
    L10_2 = L8_2 * L2_2
    L11_2 = composer
    L11_2 = L11_2.database
    L11_2 = L11_2.getGraphics
    L11_2 = L11_2()
    L11_2 = L11_2 == 1
    if L11_2 then
      L12_2 = A0_2.objects
      L12_2 = L12_2[L6_2]
      L12_2 = L12_2.properties
      L12_2 = L12_2.image
      if L12_2 then
        L13_2 = L7_1
        L14_2 = A1_2
        L15_2 = L12_2
        L16_2 = L9_2
        L17_2 = L10_2
        L13_2(L14_2, L15_2, L16_2, L17_2)
      end
      L13_2 = A0_2.objects
      L13_2 = L13_2[L6_2]
      L13_2 = L13_2.properties
      L13_2 = L13_2.props
      if L13_2 then
        L14_2 = L8_1
        L15_2 = A1_2
        L16_2 = L13_2
        L17_2 = L9_2
        L18_2 = L10_2
        L14_2(L15_2, L16_2, L17_2, L18_2)
      end
      L14_2 = A0_2.objects
      L14_2 = L14_2[L6_2]
      L14_2 = L14_2.properties
      L14_2 = L14_2.landmark
      if L14_2 then
        L15_2 = L8_1
        L16_2 = A1_2
        L17_2 = L14_2
        L18_2 = L9_2
        L19_2 = L10_2
        L15_2(L16_2, L17_2, L18_2, L19_2)
      end
      L15_2 = A0_2.objects
      L15_2 = L15_2[L6_2]
      L15_2 = L15_2.properties
      L15_2 = L15_2.beams
      if L15_2 then
        L16_2 = L9_1
        L17_2 = L15_2
        L18_2 = L7_2 * 0.7
        L19_2 = L8_2 * 0.7
        L16_2(L17_2, L18_2, L19_2)
      end
    end
  end
end

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2.layers
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = string
    L5_2 = L5_2.sub
    L6_2 = A0_2.layers
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.name
    L7_2 = 1
    L8_2 = 10
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 == "Background" then
      L5_2 = tonumber
      L6_2 = string
      L6_2 = L6_2.sub
      L7_2 = A0_2.layers
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.name
      L8_2 = 11
      L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L5_2 = L5_2 - 1
      L5_2 = 5 - L5_2
      L6_2 = L11_1
      L7_2 = A0_2.layers
      L7_2 = L7_2[L4_2]
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
end

function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.properties
  L2_2 = L2_2.theme
  L2_1 = L2_2
  L2_2 = A1_2.properties
  L2_2 = L2_2.backdrop
  L3_1 = L2_2
  L2_2 = L5_1
  L3_2 = 6
  L2_2(L3_2)
  L2_2 = L10_1
  L2_2()
  L2_2 = L12_1
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = L1_1
  return L2_2
end

L0_1.createBackground = L13_1
return L0_1
