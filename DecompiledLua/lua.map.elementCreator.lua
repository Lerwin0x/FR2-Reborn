local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1
L0_1 = {}
L1_1 = nil
L2_1 = nil
L3_1 = nil
L4_1 = nil
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = 0.5
L14_1 = require
L15_1 = "physics"
L14_1 = L14_1(L15_1)
L15_1 = nil
L16_1 = {}

function L17_1()
  local L0_2, L1_2
end

L16_1.getBlock = L17_1
L17_1 = nil
L18_1 = nil
L19_1 = nil
L20_1 = 160 * L13_1
L21_1 = 100 * L13_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = {}
    L2_3 = pairs
    L3_3 = A0_3
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L1_3[L5_3] = L6_3
    end
    L2_3 = 1
    L3_3 = #L1_3
    L4_3 = 2
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = L1_3[L5_3]
      if 0 < L6_3 then
        L6_3 = L6_3 * -1
      elseif L6_3 < 0 then
        L7_3 = math
        L7_3 = L7_3.abs
        L8_3 = L6_3
        L7_3 = L7_3(L8_3)
        L6_3 = L7_3
      end
      L1_3[L5_3] = L6_3
    end
    return L1_3
  end
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = {}
    L2_3 = 1
    L3_3 = #A0_3
    L4_3 = 1
    L5_3 = -2
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = L6_3 - 1
      L7_3 = A0_3[L7_3]
      L1_3[L2_3] = L7_3
      L2_3 = L2_3 + 1
      L7_3 = A0_3[L6_3]
      L1_3[L2_3] = L7_3
      L2_3 = L2_3 + 1
    end
    return L1_3
  end
  
  L3_2 = L1_2
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L3_2 = L4_2
  return L3_2
end

function L23_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 < 10 then
    L2_2 = "00"
    L3_2 = A0_2
    L1_2 = L2_2 .. L3_2
  elseif A0_2 < 100 then
    L2_2 = "0"
    L3_2 = A0_2
    L1_2 = L2_2 .. L3_2
  else
    L2_2 = ""
    L3_2 = A0_2
    L1_2 = L2_2 .. L3_2
  end
  return L1_2
end

function L24_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.firstgid
  L2_2 = A0_2 - L2_2
  L2_2 = L2_2 + 1
  return L2_2
end

function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A0_2 then
    return
  end
  L3_2 = L23_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.get
  L7_2 = L3_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2)
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L4_2[5] = L9_2
  L4_2[6] = L10_2
  L4_2[7] = L11_2
  L5_2 = #L4_2
  if L5_2 == 0 then
    return
  end
  L5_2 = ipairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = obstacleFilter
    L9_2.filter = L10_2
    if L3_2 == "001" then
      L9_2.isSensor = true
    else
      L9_2.friction = 0.2
    end
  end
  if A2_2 then
    L5_2 = ipairs
    L6_2 = L4_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = L22_1
      L11_2 = L9_2.shape
      L10_2 = L10_2(L11_2)
      L9_2.shape = L10_2
    end
    L5_2 = L14_1
    L5_2 = L5_2.addBody
    L6_2 = A0_2
    L7_2 = unpack
    L8_2 = L4_2
    L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L5_2 = ipairs
    L6_2 = L4_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = L22_1
      L11_2 = L9_2.shape
      L10_2 = L10_2(L11_2)
      L9_2.shape = L10_2
    end
  else
    L5_2 = L14_1
    L5_2 = L5_2.addBody
    L6_2 = A0_2
    L7_2 = unpack
    L8_2 = L4_2
    L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end

function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  A0_2.behaviors = L2_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = require
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2.addBehavior
    L9_2 = A0_2
    L8_2(L9_2)
  end
end

function L27_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == "prop" then
    L2_2 = L8_1
  else
    L2_2 = L7_1
  end
  L3_2 = display
  L3_2 = L3_2.newImage
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  return L3_2
end

function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 == "prop" then
    L3_2 = L8_1
  else
    L3_2 = L9_1
  end
  L4_2 = display
  L4_2 = L4_2.newSprite
  L5_2 = L3_2
  L6_2 = A2_2.sequenceData
  L4_2 = L4_2(L5_2, L6_2)
  return L4_2
end

function L29_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2.tileId = A1_2
  if A2_2 == "prop" then
    L4_2 = L8_1
    A0_2.animatedBlockSheet = L4_2
    L4_2 = L11_1
    A0_2.animatedBlockSheetFile = L4_2
    L4_2 = L8_1
    A0_2.blockImageSheet = L4_2
    L4_2 = L11_1
    A0_2.blockImageSheetFile = L4_2
  elseif A2_2 == "special" then
    L4_2 = L9_1
    A0_2.animatedBlockSheet = L4_2
    L4_2 = L12_1
    A0_2.animatedBlockSheetFile = L4_2
    L4_2 = L7_1
    A0_2.blockImageSheet = L4_2
    L4_2 = L10_1
    A0_2.blockImageSheetFile = L4_2
  else
    L4_2 = L9_1
    A0_2.animatedBlockSheet = L4_2
    L4_2 = L12_1
    A0_2.animatedBlockSheetFile = L4_2
    L4_2 = L7_1
    A0_2.blockImageSheet = L4_2
    L4_2 = L10_1
    A0_2.blockImageSheetFile = L4_2
  end
  L4_2 = L15_1
  L4_2 = L4_2.getBlock
  L5_2 = A2_2
  L6_2 = L23_1
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = L4_2.animation
    if L5_2 then
      L5_2 = L4_2.animation
      A0_2.animation = L5_2
      L5_2 = L28_1
      L6_2 = A1_2
      L7_2 = A2_2
      L8_2 = L4_2.animation
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      A0_2.image = L5_2
  end
  else
    if L4_2 then
      L5_2 = L4_2.noBaseImage
      if L5_2 then
    end
    else
      L5_2 = L27_1
      L6_2 = A1_2
      L7_2 = A2_2
      L5_2 = L5_2(L6_2, L7_2)
      A0_2.image = L5_2
    end
  end
  L5_2 = A0_2.image
  if L5_2 then
    L5_2 = A0_2.displayGroup
    L6_2 = L5_2
    L5_2 = L5_2.insert
    L7_2 = A0_2.image
    L5_2(L6_2, L7_2)
    if A3_2 then
      L5_2 = A0_2.image
      L5_2.xScale = -1
    end
  end
  L5_2 = A0_2.image
  if L5_2 and A2_2 == "normal" then
    L5_2 = L25_1
    L6_2 = A0_2.image
    L7_2 = A1_2
    L8_2 = A3_2
    L5_2(L6_2, L7_2, L8_2)
  end
  if L4_2 then
    L5_2 = L4_2.properties
    if L5_2 then
      L5_2 = pairs
      L6_2 = L4_2.properties
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = A0_2.image
        L10_2[L8_2] = L9_2
      end
    end
  end
  if L4_2 then
    L5_2 = L4_2.behavior
    if L5_2 then
      L5_2 = L26_1
      L6_2 = A0_2
      L7_2 = L4_2.behavior
      L5_2(L6_2, L7_2)
    end
  end
  return A0_2
end

function L30_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = L17_1
  if L4_2 then
    return
  end
  L4_2 = {}
  L5_2 = L20_1
  L6_2 = A1_2 - 1
  L5_2 = L5_2 * L6_2
  L4_2.x = L5_2
  L5_2 = L21_1
  L6_2 = A2_2 - 1
  L5_2 = L5_2 * L6_2
  L4_2.y = L5_2
  L5_2 = L13_1
  L4_2.scale = L5_2
  L4_2.displayGroup = A3_2
  L5_2 = nil
  L6_2 = nil
  L7_2 = L4_1
  if L7_2 then
    L7_2 = L4_1
    L8_2 = L7_2
    L7_2 = L7_2.isInTileset
    L9_2 = A0_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      goto lbl_36
    end
  end
  L7_2 = L5_1
  if L7_2 then
    L7_2 = L5_1
    L8_2 = L7_2
    L7_2 = L7_2.isInTileset
    L9_2 = A0_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      ::lbl_36::
      L7_2 = L24_1
      L8_2 = A0_2
      L9_2 = L4_1
      L7_2 = L7_2(L8_2, L9_2)
      L5_2 = L7_2
      L6_2 = false
      L7_2 = L5_1
      L8_2 = L7_2
      L7_2 = L7_2.isInTileset
      L9_2 = A0_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L7_2 = L24_1
        L8_2 = A0_2
        L9_2 = L5_1
        L7_2 = L7_2(L8_2, L9_2)
        L5_2 = L7_2
        L6_2 = true
      end
      L7_2 = L29_1
      L8_2 = L4_2
      L9_2 = L5_2
      L10_2 = "prop"
      L11_2 = L6_2
      L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  else
    L7_2 = L6_1
    if L7_2 then
      L7_2 = L6_1
      L8_2 = L7_2
      L7_2 = L7_2.isInTileset
      L9_2 = A0_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L7_2 = L24_1
        L8_2 = A0_2
        L9_2 = L6_1
        L7_2 = L7_2(L8_2, L9_2)
        L5_2 = L7_2
        L7_2 = L29_1
        L8_2 = L4_2
        L9_2 = L5_2
        L10_2 = "special"
        L7_2(L8_2, L9_2, L10_2)
    end
    else
      L7_2 = L24_1
      L8_2 = A0_2
      L9_2 = L2_1
      L7_2 = L7_2(L8_2, L9_2)
      L5_2 = L7_2
      if L5_2 == 1 then
        L7_2 = composer
        L7_2 = L7_2.data
        L7_2 = L7_2.gameInfo
        L7_2 = L7_2.crazyModeActive
        if L7_2 then
          L7_2 = composer
          L7_2 = L7_2.data
          L7_2 = L7_2.gameInfo
          L7_2 = L7_2.crazyMode
          if L7_2 == 1 then
            return
          end
        end
      end
      L6_2 = false
      L7_2 = L3_1
      L8_2 = L7_2
      L7_2 = L7_2.isInTileset
      L9_2 = A0_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L7_2 = L24_1
        L8_2 = A0_2
        L9_2 = L3_1
        L7_2 = L7_2(L8_2, L9_2)
        L5_2 = L7_2
        L6_2 = true
      end
      if L5_2 == 1 then
        L6_2 = false
      end
      L7_2 = L29_1
      L8_2 = L4_2
      L9_2 = L5_2
      L10_2 = "normal"
      L11_2 = L6_2
      L7_2(L8_2, L9_2, L10_2, L11_2)
      L7_2 = L4_2.image
      L7_2 = L7_2.powerUp
      if not L7_2 then
        L7_2 = L4_2.image
        L7_2.mapElement = true
      end
      L7_2 = L4_2.image
      L7_2.bodyType = "static"
    end
  end
  L7_2 = L4_2.image
  if L7_2 then
    L7_2 = L4_2.image
    L8_2 = L4_2.x
    L7_2.x = L8_2
    L7_2 = L4_2.image
    L8_2 = L4_2.y
    L7_2.y = L8_2
    L7_2 = L4_2.image
    L8_2 = L4_2.image
    L8_2 = L8_2.xScale
    L9_2 = L13_1
    L8_2 = L8_2 * L9_2
    L7_2.xScale = L8_2
    L7_2 = L4_2.image
    L8_2 = L13_1
    L7_2.yScale = L8_2
    L7_2 = L4_2.image
    L8_2 = L15_1
    L8_2 = L8_2.canTileHaveDecal
    L9_2 = L23_1
    L10_2 = L5_2
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2.canTileHaveDecal = L8_2
    L7_2 = L4_2.image
    L7_2.isVisible = false
  end
  return L4_2
end

function L31_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = L17_1
  if L3_2 then
    return
  end
  L3_2 = display
  L3_2 = L3_2.newImage
  L4_2 = L7_1
  L5_2 = 1
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L20_1
  L5_2 = A0_2 - 1
  L4_2 = L4_2 * L5_2
  L3_2.x = L4_2
  L4_2 = L21_1
  L5_2 = A1_2 - 1
  L4_2 = L4_2 * L5_2
  L3_2.y = L4_2
  L4_2 = {}
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.get
  L7_2 = "001"
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2)
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L4_2[5] = L9_2
  L4_2[6] = L10_2
  L5_2 = ipairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = obstacleFilter
    L9_2.filter = L10_2
    L9_2.isSensor = true
  end
  L5_2 = L14_1
  L5_2 = L5_2.addBody
  L6_2 = L3_2
  L7_2 = unpack
  L8_2 = L4_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2.bodyType = "static"
  L3_2.powerUp = true
  L5_2 = L3_2.xScale
  L6_2 = L13_1
  L5_2 = L5_2 * L6_2
  L3_2.xScale = L5_2
  L5_2 = L13_1
  L3_2.yScale = L5_2
  L6_2 = A2_2
  L5_2 = A2_2.insert
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  return L3_2
end

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = #A0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = #A0_2
    if L4_2 == L5_2 then
      L5_2 = A0_2[L4_2]
      L6_2 = A0_2[L4_2]
      L6_2 = L6_2.firstgid
      L6_2 = L6_2 + 1000
      L5_2.lastgid = L6_2
    else
      L5_2 = A0_2[L4_2]
      L6_2 = L4_2 + 1
      L6_2 = A0_2[L6_2]
      L6_2 = L6_2.firstgid
      L6_2 = L6_2 - 1
      L5_2.lastgid = L6_2
    end
  end
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3
      
      L2_3 = tonumber
      L3_3 = A0_3.firstgid
      L2_3 = L2_3(L3_3)
      L3_3 = tonumber
      L4_3 = A1_3
      L3_3 = L3_3(L4_3)
      if L2_3 <= L3_3 then
        L2_3 = tonumber
        L3_3 = A0_3.lastgid
        L2_3 = L2_3(L3_3)
        L3_3 = tonumber
        L4_3 = A1_3
        L3_3 = L3_3(L4_3)
        if L2_3 >= L3_3 then
          L2_3 = true
          return L2_3
        end
      end
      L2_3 = false
      return L2_3
    end
    
    L5_2.isInTileset = L6_2
    L6_2 = string
    L6_2 = L6_2.sub
    L7_2 = L5_2.name
    L8_2 = 1
    L9_2 = 5
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 == "props" then
      L6_2 = string
      L6_2 = L6_2.sub
      L7_2 = L5_2.name
      L8_2 = L5_2.name
      L8_2 = #L8_2
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 == "R" then
        L5_1 = L5_2
      else
        L4_1 = L5_2
      end
    else
      L6_2 = L5_2.name
      if L6_2 == "special" then
        L6_1 = L5_2
      else
        L6_2 = string
        L6_2 = L6_2.sub
        L7_2 = L5_2.name
        L8_2 = 1
        L9_2 = 5
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        if L6_2 == "tiles" then
          L6_2 = string
          L6_2 = L6_2.sub
          L7_2 = L5_2.name
          L8_2 = L5_2.name
          L8_2 = #L8_2
          L6_2 = L6_2(L7_2, L8_2)
          if L6_2 == "R" then
            L3_1 = L5_2
          else
            L2_1 = L5_2
          end
        else
          L6_2 = print
          L7_2 = "WARNING: NO TILESET DEFINITION FOR TILESET NAMED: "
          L8_2 = L5_2.name
          L6_2(L7_2, L8_2)
        end
      end
    end
  end
end

function L33_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.properties
  L1_2 = L1_2.theme
  L2_2 = require
  L3_2 = "lua.map.tilePhysics"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.physicsData
  L3_2 = L13_1
  L2_2 = L2_2(L3_2)
  L1_1 = L2_2
  L2_2 = require
  L3_2 = "lua.map.blockPropertyMap"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.init
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L15_1 = L2_2
  L2_2 = require
  L3_2 = "lua.map.assets."
  L4_2 = L1_2
  L5_2 = ".tiles"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2 = L2_2(L3_2)
  L10_1 = L2_2
  L2_2 = require
  L3_2 = "lua.map.assets."
  L4_2 = L1_2
  L5_2 = ".props"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2 = L2_2(L3_2)
  L11_1 = L2_2
  L2_2 = require
  L3_2 = "lua.map.assets."
  L4_2 = L1_2
  L5_2 = ".animatedTiles"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2 = L2_2(L3_2)
  L12_1 = L2_2
  L2_2 = L32_1
  L3_2 = A0_2.tilesets
  L2_2(L3_2)
  L2_2 = A0_2.width
  L19_1 = L2_2
  L2_2 = graphics
  L2_2 = L2_2.newImageSheet
  L3_2 = "lua/map/assets/"
  L4_2 = L1_2
  L5_2 = "/tiles.png"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = L10_1
  L5_2 = L4_2
  L4_2 = L4_2.getSheet
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L7_1 = L2_2
  L2_2 = graphics
  L2_2 = L2_2.newImageSheet
  L3_2 = "lua/map/assets/"
  L4_2 = L1_2
  L5_2 = "/props.png"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = L11_1
  L5_2 = L4_2
  L4_2 = L4_2.getSheet
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L8_1 = L2_2
  L2_2 = graphics
  L2_2 = L2_2.newImageSheet
  L3_2 = "lua/map/assets/"
  L4_2 = L1_2
  L5_2 = "/animatedTiles.png"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = L12_1
  L5_2 = L4_2
  L4_2 = L4_2.getSheet
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L9_1 = L2_2
end

function L34_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2.layers
  L4_2 = {}
  L18_1 = L4_2
  L4_2 = false
  L17_1 = L4_2
  L4_2 = 1
  L5_2 = nil
  L6_2 = composer
  L7_2 = {}
  L6_2.culler = L7_2
  L6_2 = composer
  L6_2 = L6_2.culler
  L7_2 = {}
  L6_2.columnMaps = L7_2
  L6_2 = composer
  L6_2 = L6_2.culler
  
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L3_3 = composer
    L3_3 = L3_3.culler
    L3_3 = L3_3.columnMaps
    L3_3 = L3_3[A0_3]
    if not L3_3 then
      L3_3 = composer
      L3_3 = L3_3.culler
      L3_3 = L3_3.columnMaps
      L4_3 = {}
      L3_3[A0_3] = L4_3
    end
    L3_3 = composer
    L3_3 = L3_3.culler
    L3_3 = L3_3.columnMaps
    L2_3 = L3_3[A0_3]
    L3_3 = #L2_3
    L3_3 = L3_3 + 1
    L2_3[L3_3] = A1_3
  end
  
  L6_2.addTile = L7_2
  L6_2 = composer
  L6_2 = L6_2.culler
  
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = math
    L2_3 = L2_3.floor
    L3_3 = A0_3 + 80
    L3_3 = L3_3 / 80
    L2_3 = L2_3(L3_3)
    L3_3 = nil
    L4_3 = composer
    L4_3 = L4_3.culler
    L4_3 = L4_3.columnMaps
    L4_3 = L4_3[L2_3]
    if not L4_3 then
      L4_3 = composer
      L4_3 = L4_3.culler
      L4_3 = L4_3.columnMaps
      L5_3 = {}
      L4_3[L2_3] = L5_3
    end
    L4_3 = composer
    L4_3 = L4_3.culler
    L4_3 = L4_3.columnMaps
    L3_3 = L4_3[L2_3]
    L4_3 = {}
    L4_3.tileId = 1
    L4_3.image = A1_3
    L5_3 = #L3_3
    L5_3 = L5_3 + 1
    L3_3[L5_3] = L4_3
  end
  
  L6_2.addAnimatedTile = L7_2
  
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L3_3 = 1
    L4_3 = A0_3.height
    L5_3 = 1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = L4_2
      L8_3 = L5_2
      L9_3 = 1
      for L10_3 = L7_3, L8_3, L9_3 do
        L11_3 = A0_3.data
        L12_3 = L6_3 - 1
        L13_3 = A0_3.width
        L12_3 = L12_3 * L13_3
        L12_3 = L12_3 + L10_3
        L11_3 = L11_3[L12_3]
        if L11_3 ~= 0 then
          L12_3 = nil
          L13_3 = L30_1
          L14_3 = L11_3
          L15_3 = L10_3
          L16_3 = L6_3
          L17_3 = A1_3
          L13_3 = L13_3(L14_3, L15_3, L16_3, L17_3)
          L12_3 = L13_3
          L13_3 = composer
          L13_3 = L13_3.culler
          L13_3 = L13_3.addTile
          L14_3 = L10_3
          L15_3 = L12_3
          L13_3(L14_3, L15_3)
          if L12_3 then
            L13_3 = L18_1
            L14_3 = L18_1
            L14_3 = #L14_3
            L14_3 = L14_3 + 1
            L13_3[L14_3] = L12_3
          end
        end
      end
    end
  end
  
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = L17_1
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = A0_3.source
      L1_3(L2_3)
    end
    L1_3 = L4_2
    L1_3 = L1_3 + 15
    L5_2 = L1_3
    L1_3 = L5_2
    L2_3 = L19_1
    if L1_3 > L2_3 then
      L1_3 = L19_1
      L5_2 = L1_3
    end
    L1_3 = 1
    L2_3 = L3_2
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L3_2
      L5_3 = L5_3[L4_3]
      L5_3 = L5_3.name
      if L5_3 == "Front Layer" then
        L5_3 = L6_2
        L6_3 = L3_2
        L6_3 = L6_3[L4_3]
        L7_3 = A2_2
        L8_3 = L4_3
        L5_3(L6_3, L7_3, L8_3)
      else
        L5_3 = string
        L5_3 = L5_3.sub
        L6_3 = A0_2
        L6_3 = L6_3.layers
        L6_3 = L6_3[L4_3]
        L6_3 = L6_3.name
        L7_3 = 1
        L8_3 = 10
        L5_3 = L5_3(L6_3, L7_3, L8_3)
        if L5_3 == "Background" then
        else
          L5_3 = L6_2
          L6_3 = L3_2
          L6_3 = L6_3[L4_3]
          L7_3 = A1_2
          L8_3 = L4_3
          L5_3(L6_3, L7_3, L8_3)
        end
      end
    end
    L1_3 = L5_2
    L2_3 = L19_1
    if L1_3 == L2_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = A0_3.source
      L1_3(L2_3)
      L1_3 = {}
      L1_3.name = "mapDone"
      L2_3 = Runtime
      L3_3 = L2_3
      L2_3 = L2_3.dispatchEvent
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
    end
    L1_3 = L5_2
    L1_3 = L1_3 + 1
    L4_2 = L1_3
  end
  
  L8_2 = L7_2
  L8_2()
  L8_2 = timer
  L8_2 = L8_2.performWithDelay
  L9_2 = 50
  L10_2 = L7_2
  L11_2 = 0
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = L18_1
  return L8_2
end

function L35_1()
  local L0_2, L1_2
  L0_2 = true
  L17_1 = L0_2
end

L0_1.createAllElements = L34_1
L0_1.loadImageData = L33_1
L0_1.clean = L35_1
return L0_1
