local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "widget"
L1_1 = L1_1(L2_1)

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L1_2 = display
  L1_2 = L1_2.newGroup
  L1_2 = L1_2()
  L2_2 = A0_2.width
  L3_2 = A0_2.height
  L4_2 = A0_2.x
  L5_2 = L2_2 * 0.5
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2.y
  L6_2 = L3_2 * 0.5
  L5_2 = L5_2 - L6_2
  L6_2 = A0_2.image
  L7_2 = A0_2.text
  L8_2 = A0_2.noSound
  L9_2 = A0_2.noFill
  L10_2 = nil
  L11_2 = nil
  L12_2 = nil
  L13_2 = false
  L14_2 = true
  
  function L15_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L14_2
    if not L1_3 then
      return
    end
    L1_3 = A0_3.phase
    if "began" == L1_3 then
      L1_3 = true
      L13_2 = L1_3
      L1_3 = L8_2
      if L1_3 then
      else
        L1_3 = L0_1
        L1_3 = L1_3.audio
        L1_3 = L1_3.play
        L2_3 = "button_press"
        L1_3(L2_3)
      end
      L1_3 = L9_2
      if L1_3 then
      else
        L1_3 = L10_2
        L2_3 = L1_3
        L1_3 = L1_3.setFillColor
        L3_3 = 0.5
        L1_3(L2_3, L3_3)
        L1_3 = L11_2
        if L1_3 then
          L1_3 = L11_2
          L1_3 = L1_3.fadeColor
          L1_3()
        end
      end
      L1_3 = A0_2
      L1_3 = L1_3.onPress
      if L1_3 then
        L1_3 = A0_2
        L1_3 = L1_3.onPress
        L2_3 = A0_3
        L1_3(L2_3)
      end
    else
      L1_3 = A0_3.phase
      if "ended" == L1_3 then
        L1_3 = L13_2
        if L1_3 then
          L1_3 = A0_2
          L1_3 = L1_3.onRelease
          if L1_3 then
            L1_3 = A0_2
            L1_3 = L1_3.onRelease
            L2_3 = A0_3
            L1_3(L2_3)
          end
          L1_3 = L10_2
          L2_3 = L1_3
          L1_3 = L1_3.setFillColor
          L3_3 = 1
          L1_3(L2_3, L3_3)
          L1_3 = L11_2
          if L1_3 then
            L1_3 = L11_2
            L1_3 = L1_3.returnToNormalColor
            L1_3()
          end
        end
        L1_3 = false
        L13_2 = L1_3
      else
        L1_3 = A0_3.phase
        if "cancelled" == L1_3 then
          L1_3 = L10_2
          L2_3 = L1_3
          L1_3 = L1_3.setFillColor
          L3_3 = 1
          L1_3(L2_3, L3_3)
          L1_3 = L11_2
          if L1_3 then
            L1_3 = L11_2
            L1_3 = L1_3.returnToNormalColor
            L1_3()
          end
          L1_3 = false
          L13_2 = L1_3
        end
      end
    end
  end
  
  function L16_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L10_2
    if L1_3 then
      L1_3 = L10_2
      L2_3 = L1_3
      L1_3 = L1_3.removeSelf
      L1_3(L2_3)
      L1_3 = nil
      L10_2 = L1_3
      L1_3 = L1_1
      L1_3 = L1_3.newButton
      L2_3 = {}
      L3_3 = L4_2
      L2_3.left = L3_3
      L3_3 = L5_2
      L2_3.top = L3_3
      L3_3 = L2_2
      L2_3.width = L3_3
      L3_3 = L3_2
      L2_3.height = L3_3
      L3_3 = L0_1
      L3_3 = L3_3.data
      L3_3 = L3_3.font
      L2_3.font = L3_3
      L2_3.defaultFile = A0_3
      L3_3 = L15_2
      L2_3.onEvent = L3_3
      L1_3 = L1_3(L2_3)
      L10_2 = L1_3
    end
    L1_3 = L1_2
    L2_3 = L1_3
    L1_3 = L1_3.insert
    L3_3 = 1
    L4_3 = L10_2
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L10_2
    return L1_3
  end
  
  L17_2 = L1_1
  L17_2 = L17_2.newButton
  L18_2 = {}
  L18_2.left = L4_2
  L18_2.top = L5_2
  L18_2.width = L2_2
  L18_2.height = L3_2
  L19_2 = L0_1
  L19_2 = L19_2.data
  L19_2 = L19_2.font
  L18_2.font = L19_2
  L18_2.defaultFile = L6_2
  L18_2.onEvent = L15_2
  L17_2 = L17_2(L18_2)
  L10_2 = L17_2
  
  function L17_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.x
    return L0_3
  end
  
  function L18_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.y
    return L0_3
  end
  
  function L19_2(A0_3)
    local L1_3
    if A0_3 then
      L1_3 = L11_2
      if L1_3 then
        L1_3 = L11_2
        L1_3.text = A0_3
      end
    end
  end
  
  function L20_2()
    local L0_3, L1_3
    L0_3 = L10_2
    return L0_3
  end
  
  function L21_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L14_2 = A0_3
    if A0_3 then
      L1_3 = L10_2
      L2_3 = L1_3
      L1_3 = L1_3.setFillColor
      L3_3 = 1
      L4_3 = 1
      L5_3 = 1
      L1_3(L2_3, L3_3, L4_3, L5_3)
    else
      L1_3 = L10_2
      L2_3 = L1_3
      L1_3 = L1_3.setFillColor
      L3_3 = 0.5
      L4_3 = 0.5
      L5_3 = 0.5
      L1_3(L2_3, L3_3, L4_3, L5_3)
    end
  end
  
  L23_2 = L1_2
  L22_2 = L1_2.insert
  L24_2 = L10_2
  L22_2(L23_2, L24_2)
  L1_2.changeButtonImage = L16_2
  L1_2.setInteractable = L21_2
  L1_2.getX = L17_2
  L1_2.getY = L18_2
  L1_2.changeText = L19_2
  L1_2.getButtonWidget = L20_2
  if L7_2 then
    L22_2 = L0_1
    L22_2 = L22_2.newButtonText
    L23_2 = L7_2
    L24_2 = A0_2.x
    L25_2 = A0_2.y
    L22_2 = L22_2(L23_2, L24_2, L25_2)
    L11_2 = L22_2
    L12_2 = L11_2.fillColor
    L23_2 = L1_2
    L22_2 = L1_2.insert
    L24_2 = L11_2
    L22_2(L23_2, L24_2)
  end
  return L1_2
end

L0_1.newButton = L2_1
