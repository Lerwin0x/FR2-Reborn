local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = "Brady Bunch Remastered"
L2_1 = isAndroid
if L2_1 then
  L1_1 = "BradyBunchRemastered"
end

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A0_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = {}
  L3_2.text = A0_2
  L3_2.fontSize = A1_2
  L4_2 = L1_1
  L3_2.font = L4_2
  L4_2 = nil
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L4_2 = L5_2.contentWidth
  L7_2 = L5_2
  L6_2 = L5_2.removeSelf
  L6_2(L7_2)
  L5_2 = nil
  L6_2 = false
  while A2_2 < L4_2 do
    L6_2 = true
    L8_2 = A0_2
    L7_2 = A0_2.sub
    L9_2 = 1
    L10_2 = A0_2.len
    L11_2 = A0_2
    L10_2 = L10_2(L11_2)
    L10_2 = L10_2 - 1
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    A0_2 = L7_2
    L7_2 = A0_2
    L8_2 = ".."
    L7_2 = L7_2 .. L8_2
    L3_2.text = L7_2
    L7_2 = display
    L7_2 = L7_2.newText
    L8_2 = L3_2
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
    L4_2 = L5_2.contentWidth
    L8_2 = L5_2
    L7_2 = L5_2.removeSelf
    L7_2(L8_2)
    L5_2 = nil
  end
  if L6_2 then
    L7_2 = A0_2
    L8_2 = ".."
    A0_2 = L7_2 .. L8_2
  end
  return A0_2
end

function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A0_2 then
    return A2_2
  end
  if not A4_2 then
    A4_2 = 0
  end
  L5_2 = {}
  L5_2.text = A0_2
  L5_2.fontSize = A2_2
  L6_2 = L1_1
  L5_2.font = L6_2
  L6_2 = nil
  L7_2 = nil
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = L5_2
  L8_2 = L8_2(L9_2)
  L6_2 = L8_2.contentWidth
  L7_2 = L8_2.contentHeight
  L10_2 = L8_2
  L9_2 = L8_2.removeSelf
  L9_2(L10_2)
  L8_2 = nil
  while A3_2 < L6_2 or A4_2 ~= 0 and A4_2 < L7_2 do
    L9_2 = L5_2.fontSize
    if not (A1_2 <= L9_2) then
      break
    end
    L9_2 = L5_2.fontSize
    L9_2 = L9_2 - 0.5
    L5_2.fontSize = L9_2
    L9_2 = display
    L9_2 = L9_2.newText
    L10_2 = L5_2
    L9_2 = L9_2(L10_2)
    L8_2 = L9_2
    L6_2 = L8_2.contentWidth
    L7_2 = L8_2.contentHeight
    L10_2 = L8_2
    L9_2 = L8_2.removeSelf
    L9_2(L10_2)
    L8_2 = nil
  end
  L9_2 = L5_2.fontSize
  return L9_2
end

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2 % 100
  if 10 < L1_2 and L1_2 < 21 then
    L2_2 = A0_2
    L3_2 = "th"
    L2_2 = L2_2 .. L3_2
    return L2_2
  end
  L2_2 = A0_2 % 10
  if L2_2 == 1 then
    L3_2 = A0_2
    L4_2 = "st"
    L3_2 = L3_2 .. L4_2
    return L3_2
  elseif L2_2 == 2 then
    L3_2 = A0_2
    L4_2 = "nd"
    L3_2 = L3_2 .. L4_2
    return L3_2
  elseif L2_2 == 3 then
    L3_2 = A0_2
    L4_2 = "rd"
    L3_2 = L3_2 .. L4_2
    return L3_2
  end
  L3_2 = A0_2
  L4_2 = "th"
  L3_2 = L3_2 .. L4_2
  return L3_2
end

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3
    if A1_3 then
      L2_3 = A1_2
      if not L2_3 then
        L2_3 = 100000
      end
      A1_2 = L2_3
      L2_3 = A1_2
      if A1_3 >= L2_3 then
        L2_3 = math
        L2_3 = L2_3.floor
        L3_3 = A1_3 / 1000
        L2_3 = L2_3(L3_3)
        L3_3 = "K"
        L2_3 = L2_3 .. L3_3
        return L2_3
      end
    end
    return A0_3
  end
  
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 == "table" then
    L3_2 = tonumber
    L4_2 = A0_2.text
    L3_2 = L3_2(L4_2)
    L4_2 = L2_2
    L5_2 = A0_2.text
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    A0_2.text = L4_2
  else
    L3_2 = tonumber
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L2_2
    L5_2 = A0_2
    L6_2 = L3_2
    return L4_2(L5_2, L6_2)
  end
end

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = A0_2.string
  L2_2 = A0_2.size
  L3_2 = A0_2.color
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L6_2 = A0_2.width
  L7_2 = A0_2.height
  L8_2 = A0_2.ax
  L9_2 = A0_2.ay
  L10_2 = A0_2.align
  L11_2 = true
  if L1_2 == nil then
    L1_2 = ""
    L12_2 = print
    L13_2 = "WARNING: text in newText is nil"
    L12_2(L13_2)
  end
  if L4_2 == nil then
    L4_2 = 0
  end
  if L5_2 == nil then
    L5_2 = 0
  end
  if L3_2 == nil then
    L12_2 = {}
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L16_2 = 1
    L12_2[1] = L13_2
    L12_2[2] = L14_2
    L12_2[3] = L15_2
    L12_2[4] = L16_2
    L3_2 = L12_2
    A0_2.noFade = true
  end
  L12_2 = #L3_2
  if L12_2 == 3 then
    L3_2[4] = 1
  end
  L12_2 = 1
  L13_2 = #L3_2
  L14_2 = 1
  for L15_2 = L12_2, L13_2, L14_2 do
    L16_2 = L3_2[L15_2]
    if L16_2 ~= 1 then
      L11_2 = false
    end
  end
  if L2_2 == nil then
    L12_2 = L0_1
    L12_2 = L12_2.localized
    L12_2 = L12_2.getFontSize
    L12_2 = L12_2()
    L2_2 = L12_2
  end
  if L6_2 == nil then
    L6_2 = 0
  end
  if L7_2 == nil then
    L7_2 = 0
  end
  L12_2 = string
  L12_2 = L12_2.upper
  L13_2 = L1_2
  L12_2 = L12_2(L13_2)
  L1_2 = L12_2
  L12_2 = {}
  L12_2.text = L1_2
  L12_2.width = L6_2
  L12_2.height = L7_2
  L12_2.fontSize = L2_2
  L13_2 = L1_1
  L12_2.font = L13_2
  L12_2.align = L10_2
  L13_2 = nil
  L14_2 = true
  if L11_2 then
    L15_2 = pcall
    
    function L16_2()
      local L0_3, L1_3
      L0_3 = display
      L0_3 = L0_3.newEmbossedText
      L1_3 = L12_2
      return L0_3(L1_3)
    end
    
    L15_2, L16_2 = L15_2(L16_2)
    L13_2 = L16_2
    L14_2 = L15_2
  else
    L15_2 = pcall
    
    function L16_2()
      local L0_3, L1_3
      L0_3 = display
      L0_3 = L0_3.newText
      L1_3 = L12_2
      return L0_3(L1_3)
    end
    
    L15_2, L16_2 = L15_2(L16_2)
    L13_2 = L16_2
    L14_2 = L15_2
  end
  if not L14_2 then
    L15_2 = print
    L16_2 = "Failed to create text :( "
    L15_2(L16_2)
    L12_2.text = ""
    L15_2 = display
    L15_2 = L15_2.newText
    L16_2 = L12_2
    L15_2 = L15_2(L16_2)
    L13_2 = L15_2
  end
  L16_2 = L13_2
  L15_2 = L13_2.setFillColor
  L17_2 = L3_2[1]
  L18_2 = L3_2[2]
  L19_2 = L3_2[3]
  L20_2 = L3_2[4]
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
  L13_2.x = L4_2
  L13_2.y = L5_2
  if L8_2 then
    L13_2.anchorX = L8_2
  end
  if L9_2 then
    L13_2.anchorY = L9_2
  end
  
  function L15_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L0_3 = L0_3.noFade
    if L0_3 then
    else
      L0_3 = L13_2
      L1_3 = L0_3
      L0_3 = L0_3.setFillColor
      L2_3 = 0.5
      L0_3(L1_3, L2_3)
    end
  end
  
  function L16_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.setFillColor
    L2_3 = L3_2
    L2_3 = L2_3[1]
    L3_3 = L3_2
    L3_3 = L3_3[2]
    L4_3 = L3_2
    L4_3 = L4_3[3]
    L5_3 = L3_2
    L5_3 = L5_3[4]
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
  end
  
  L13_2.fadeColor = L15_2
  L13_2.returnToNormalColor = L16_2
  return L13_2
end

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = {}
  L3_2.string = A0_2
  L4_2 = L0_1
  L4_2 = L4_2.localized
  L4_2 = L4_2.getFontSize
  L4_2 = L4_2()
  L3_2.size = L4_2
  L4_2 = {}
  L5_2 = 0.0784313725490196
  L6_2 = 0.0784313725490196
  L7_2 = 0.0784313725490196
  L8_2 = 1
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L3_2.color = L4_2
  L3_2.x = 0
  L3_2.y = 0
  L3_2.noFade = true
  if A1_2 and A2_2 then
    L3_2.x = A1_2
    L3_2.y = A2_2
  end
  L4_2 = L6_1
  L5_2 = L3_2
  return L4_2(L5_2)
end

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == "table" then
    L1_2 = L6_1
    L2_2 = A0_2
    return L1_2(L2_2)
  else
    L1_2 = L7_1
    L2_2 = A0_2
    L3_2 = x
    L4_2 = y
    return L1_2(L2_2, L3_2, L4_2)
  end
end

L0_1.newText = L8_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 == "table" then
    L3_2 = A0_2.x
    if L3_2 then
      L3_2 = A0_2.y
      if L3_2 then
        L3_2 = A0_2.x
        L3_2 = L3_2 + A1_2
        A0_2.x = L3_2
        L3_2 = A0_2.y
        L3_2 = L3_2 + A2_2
        A0_2.y = L3_2
    end
    else
      A0_2.x = A1_2
      A0_2.y = A2_2
    end
    L3_2 = L6_1
    L4_2 = A0_2
    return L3_2(L4_2)
  else
    L3_2 = L7_1
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  end
end

L0_1.newButtonText = L9_1
L0_1.fitText = L2_1
L0_1.fitTextFontSize = L3_1
L0_1.formatTextKilo = L5_1
L0_1.formatPlacementNumber = L4_1
