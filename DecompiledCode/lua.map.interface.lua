local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1
L0_1 = {}
L1_1 = require
L2_1 = "lua.map.backgroundCreator"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "lua.map.elementCreator"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "lua.modules.timeFormat"
L4_1 = L4_1(L5_1)
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = nil
L14_1 = nil
L15_1 = nil
L16_1 = nil
L17_1 = nil
L18_1 = nil
L19_1 = nil
L20_1 = nil
L21_1 = 80
L22_1 = 50

function L23_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L21_1
  L1_2 = L8_1
  L0_2 = L0_2 * L1_2
  L1_2 = L22_1
  L2_2 = L9_1
  L1_2 = L1_2 * L2_2
  L2_2 = L0_2
  L3_2 = L1_2
  return L2_2, L3_2
end

function L24_1()
  local L0_2, L1_2, L2_2
  L0_2 = L21_1
  L1_2 = L12_1
  L0_2 = L0_2 * L1_2
  L1_2 = L22_1
  L2_2 = L13_1
  L1_2 = L1_2 * L2_2
  return L0_2, L1_2
end

function L25_1(A0_2)
  local L1_2, L2_2
  L1_2 = L21_1
  L2_2 = L12_1
  L1_2 = L1_2 * L2_2
  L1_2 = A0_2 > L1_2
  return L1_2
end

function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  L5_1 = L2_2
  L2_2 = L1_1
  L2_2 = L2_2.createBackground
  L3_2 = A0_2
  L4_2 = L20_1
  L2_2 = L2_2(L3_2, L4_2)
  L6_1 = L2_2
  L2_2 = 1
  L3_2 = L6_1
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L5_1
    L7_2 = L6_2
    L6_2 = L6_2.insert
    L8_2 = L6_1
    L8_2 = L8_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L2_2 = L5_1
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = 5
  L5_2 = L6_1
  L5_2 = L5_2[6]
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A1_2
  L2_2 = A1_2.insert
  L4_2 = L5_1
  L2_2(L3_2, L4_2)
end

function L27_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L3_1
  L3_2 = L3_2.newText
  L4_2 = {}
  L5_2 = L17_1
  L4_2.string = L5_2
  L4_2.size = 30
  L5_2 = {}
  L6_2 = 1
  L7_2 = 1
  L8_2 = 1
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L4_2.color = L5_2
  L3_2 = L3_2(L4_2)
  L14_1 = L3_2
  L3_2 = L14_1
  L4_2 = A1_2 + 90
  L3_2.x = L4_2
  L3_2 = L14_1
  L4_2 = A2_2 + 85
  L3_2.y = L4_2
  L4_2 = A0_2
  L3_2 = A0_2.insert
  L5_2 = L14_1
  L3_2(L4_2, L5_2)
end

function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = L3_1
  L3_2 = L3_2.bestLevelTimes
  if L3_2 then
    L3_2 = L3_1
    L3_2 = L3_2.data
    L3_2 = L3_2.gameInfo
    L3_2 = L3_2.gameType
    if L3_2 ~= 0 then
      L3_2 = L3_1
      L3_2 = L3_2.bestLevelTimes
      L4_2 = ""
      L5_2 = L16_1
      L4_2 = L4_2 .. L5_2
      L3_2 = L3_2[L4_2]
      L4_2 = nil
      if L3_2 then
        L5_2 = L4_1
        L5_2 = L5_2.millisToFormatedSeconds
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        L6_2 = "Personal Best Time: "
        L7_2 = L5_2
        L4_2 = L6_2 .. L7_2
      else
        L4_2 = "No Personal Best Time Yet"
      end
      L5_2 = L3_1
      L5_2 = L5_2.newText
      L6_2 = {}
      L6_2.string = L4_2
      L6_2.size = 14
      L7_2 = {}
      L8_2 = 1
      L9_2 = 1
      L10_2 = 1
      L7_2[1] = L8_2
      L7_2[2] = L9_2
      L7_2[3] = L10_2
      L6_2.color = L7_2
      L5_2 = L5_2(L6_2)
      L4_2 = L5_2
      L5_2 = A1_2 + 90
      L4_2.x = L5_2
      L5_2 = A2_2 + 105
      L4_2.y = L5_2
      L6_2 = A0_2
      L5_2 = A0_2.insert
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    end
  end
end

function L29_1(A0_2)
  local L1_2, L2_2
  L1_2 = L19_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = L19_1
    L1_2 = L1_2[A0_2]
    L2_2 = L1_2
    L1_2 = L1_2.removeSelf
    L1_2(L2_2)
    L1_2 = L19_1
    L1_2[A0_2] = nil
  end
end

function L30_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L3_1
  L3_2 = L3_2.tutorial
  L3_2 = L3_2.game
  if L3_2 then
    return
  end
  L3_2 = L29_1
  L4_2 = A1_2
  L3_2(L4_2)
  if A2_2 and A1_2 then
    L3_2 = L23_1
    L3_2, L4_2 = L3_2()
    L5_2 = L3_1
    L5_2 = L5_2.newText
    L6_2 = {}
    L6_2.string = A2_2
    L6_2.size = 14
    L5_2 = L5_2(L6_2)
    L6_2 = L3_2 + 90
    L7_2 = A1_2 - 1
    L7_2 = L7_2 * 92
    L6_2 = L6_2 + L7_2
    L5_2.x = L6_2
    L6_2 = L4_2 + 38
    L5_2.y = L6_2
    L6_2 = A1_2 % 2
    if L6_2 == 0 then
      L6_2 = L4_2 + 54
      L5_2.y = L6_2
    end
    L6_2 = L19_1
    L6_2[A1_2] = L5_2
    L7_2 = A0_2
    L6_2 = A0_2.insert
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end

function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = require
  L2_2 = "lua.modules.jsonParser"
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.getJsonFromFile
  L3_2 = "config/map/"
  L4_2 = A0_2
  L5_2 = ".json"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2 = L2_2(L3_2)
  L20_1 = L2_2
  L2_2 = L20_1
  L2_2 = L2_2.properties
  L3_2 = L2_2.startX
  L8_1 = L3_2
  L3_2 = L2_2.startY
  L9_1 = L3_2
  L3_2 = L2_2.goalX
  L12_1 = L3_2
  L3_2 = L2_2.goalY
  L13_1 = L3_2
  L3_2 = L13_1
  if not L3_2 then
    L3_2 = L9_1
    L13_1 = L3_2
  end
  L3_2 = L2_2.name
  L17_1 = L3_2
  L16_1 = A0_2
  L3_2 = L2_2.theme
  L18_1 = L3_2
  L3_2 = L3_1
  L3_2 = L3_2.data
  L4_2 = L18_1
  L3_2.currentLevelTheme = L4_2
  L3_2 = L20_1
  L3_2 = L3_2.height
  L10_1 = L3_2
  L3_2 = L20_1
  L3_2 = L3_2.width
  L11_1 = L3_2
end

function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L2_1
  L2_2 = L2_2.loadImageData
  L3_2 = L20_1
  L2_2(L3_2)
  L2_2 = L2_1
  L2_2 = L2_2.createAllElements
  L3_2 = L20_1
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L7_1 = L2_2
end

function L33_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L31_1
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = L26_1
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = L32_1
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L19_1 = L3_2
end

function L34_1(A0_2)
  local L1_2
  L1_2 = L22_1
  L1_2 = L1_2 * A0_2
  return L1_2
end

function L35_1()
  local L0_2, L1_2
  L0_2 = L5_1
  return L0_2
end

function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = 4
  L6_2 = 6
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L6_1
    L9_2 = L9_2[L8_2]
    if L9_2 then
      L3_2 = L9_2.x
      L10_2 = 1
      L11_2 = L9_2.numChildren
      L12_2 = 1
      for L13_2 = L10_2, L11_2, L12_2 do
        L1_2 = L9_2[L13_2]
        L2_2 = L1_2.x
        L14_2 = L1_2.width
        L14_2 = L2_2 + L14_2
        L4_2 = L3_2 + L14_2
        if L4_2 < 0 then
        end
        L14_2 = 0 < L4_2
        L1_2.isVisible = L14_2
      end
    end
  end
end

function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = 1
  L3_2 = L18_1
  if L3_2 == "space" then
    L2_2 = 0.3
  end
  L3_2 = L3_1
  L3_2 = L3_2.debugger
  L3_2 = L3_2.profile
  L4_2 = "UpdateBackgrounds"
  L3_2(L4_2)
  L3_2 = L34_1
  L4_2 = L10_1
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2 / L3_2
  L5_2 = 1 + L4_2
  L5_2 = L5_2 * 20
  L6_2 = L6_1
  L6_2 = L6_2[2]
  L7_2 = L5_2 * 1
  L7_2 = L7_2 * L2_2
  L6_2.y = L7_2
  L6_2 = L6_1
  L6_2 = L6_2[3]
  L7_2 = L5_2 * 2
  L7_2 = L7_2 * L2_2
  L6_2.y = L7_2
  L6_2 = L6_1
  L6_2 = L6_2[4]
  L7_2 = A1_2 * 0.6
  L6_2.y = L7_2
  L6_2 = L6_1
  L6_2 = L6_2[5]
  L7_2 = A1_2 * 0.8
  L6_2.y = L7_2
  L6_2 = L6_1
  L6_2 = L6_2[6]
  L7_2 = A1_2 * 0.7
  L6_2.y = L7_2
  L6_2 = L6_1
  L6_2 = L6_2[2]
  L7_2 = L6_1
  L7_2 = L7_2[2]
  L7_2 = L7_2.moved
  L8_2 = L6_1
  L8_2 = L8_2[2]
  L8_2 = L8_2.width
  L7_2 = L7_2 * L8_2
  L7_2 = L7_2 / 3
  L8_2 = A0_2 * 0.01
  L8_2 = L8_2 * L2_2
  L7_2 = L7_2 + L8_2
  L6_2.x = L7_2
  L6_2 = L6_1
  L6_2 = L6_2[3]
  L7_2 = L6_1
  L7_2 = L7_2[3]
  L7_2 = L7_2.moved
  L8_2 = L6_1
  L8_2 = L8_2[3]
  L8_2 = L8_2.width
  L7_2 = L7_2 * L8_2
  L7_2 = L7_2 / 3
  L8_2 = A0_2 * 0.06
  L8_2 = L8_2 * L2_2
  L7_2 = L7_2 + L8_2
  L6_2.x = L7_2
  L6_2 = L6_1
  L6_2 = L6_2[4]
  L7_2 = A0_2 * 0.6
  L6_2.x = L7_2
  L6_2 = L6_1
  L6_2 = L6_2[5]
  L7_2 = A0_2 * 0.8
  L6_2.x = L7_2
  L6_2 = L6_1
  L6_2 = L6_2[6]
  L7_2 = A0_2 * 0.7
  L6_2.x = L7_2
  L6_2 = L3_1
  L6_2 = L6_2.database
  L6_2 = L6_2.getGraphics
  L6_2 = L6_2()
  L6_2 = L6_2 == 1
  if L6_2 then
    L7_2 = L36_1
    L7_2()
  end
  L7_2 = 2
  L8_2 = 3
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L6_1
    L11_2 = L11_2[L10_2]
    L11_2 = L11_2.x
    L12_2 = L6_1
    L12_2 = L12_2[L10_2]
    L12_2 = L12_2.width
    L12_2 = L12_2 / 3
    L12_2 = 2 * L12_2
    L12_2 = -L12_2
    if L11_2 < L12_2 then
      L11_2 = L6_1
      L11_2 = L11_2[L10_2]
      L12_2 = L6_1
      L12_2 = L12_2[L10_2]
      L12_2 = L12_2.x
      L13_2 = L6_1
      L13_2 = L13_2[L10_2]
      L13_2 = L13_2.width
      L13_2 = L13_2 / 3
      L12_2 = L12_2 + L13_2
      L11_2.x = L12_2
      L11_2 = L6_1
      L11_2 = L11_2[L10_2]
      L12_2 = L6_1
      L12_2 = L12_2[L10_2]
      L12_2 = L12_2.moved
      L12_2 = L12_2 + 1
      L11_2.moved = L12_2
    end
  end
  L7_2 = L3_1
  L7_2 = L7_2.debugger
  L7_2 = L7_2.profile
  L8_2 = "UpdateBackgrounds"
  L7_2(L8_2)
end

function L38_1()
  local L0_2, L1_2, L2_2
  L0_2 = L21_1
  L1_2 = L12_1
  L0_2 = L0_2 * L1_2
  L1_2 = L22_1
  L2_2 = L9_1
  L2_2 = L2_2 + 0.5
  L1_2 = L1_2 * L2_2
  L0_2 = L0_2 - L1_2
  return L0_2
end

function L39_1()
  local L0_2, L1_2
  L0_2 = L18_1
  return L0_2
end

function L40_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L2_1
  L0_2 = L0_2.clean
  L0_2()
  L0_2 = L7_1
  if L0_2 then
    L0_2 = 1
    L1_2 = L7_1
    L1_2 = #L1_2
    L2_2 = 1
    for L3_2 = L0_2, L1_2, L2_2 do
      L4_2 = L7_1
      L4_2 = L4_2[L3_2]
      if L4_2 then
        L4_2 = L7_1
        L4_2 = L4_2[L3_2]
        L4_2 = L4_2.behaviors
        if L4_2 then
          L4_2 = pairs
          L5_2 = L7_1
          L5_2 = L5_2[L3_2]
          L5_2 = L5_2.behaviors
          L4_2, L5_2, L6_2 = L4_2(L5_2)
          for L7_2, L8_2 in L4_2, L5_2, L6_2 do
            if L8_2 then
              L9_2 = L8_2.clean
              if L9_2 then
                L9_2 = L8_2.clean
                L9_2()
              end
            end
          end
        end
        L4_2 = L7_1
        L4_2 = L4_2[L3_2]
        L4_2 = L4_2.clean
        if L4_2 then
          L4_2 = L7_1
          L4_2 = L4_2[L3_2]
          L4_2 = L4_2.clean
          L4_2()
        end
        L4_2 = transition
        L4_2 = L4_2.cancel
        L5_2 = L7_1
        L5_2 = L5_2[L3_2]
        L4_2(L5_2)
        L4_2 = L7_1
        L4_2 = L4_2[L3_2]
        L4_2 = L4_2.image
        if L4_2 then
          L4_2 = L7_1
          L4_2 = L4_2[L3_2]
          L4_2 = L4_2.image
          L5_2 = L4_2
          L4_2 = L4_2.removeSelf
          L4_2(L5_2)
          L4_2 = L7_1
          L4_2[L3_2] = nil
        end
      end
    end
    L0_2 = nil
    L7_1 = L0_2
  end
end

L0_1.getStartPos = L23_1
L0_1.getTheme = L39_1
L0_1.getGoal = L24_1
L0_1.isInGoal = L25_1
L0_1.generateMap = L33_1
L0_1.clean = L40_1
L0_1.getDisplayGroup = L35_1
L0_1.updateBackgrounds = L37_1
L0_1.getLength = L38_1
L0_1.addPlayerNameText = L30_1
L0_1.addmapNameText = L27_1
L0_1.addBestTimeText = L28_1
L0_1.removePlayerNameText = L29_1
L3_1.getGoal = L24_1
return L0_1
