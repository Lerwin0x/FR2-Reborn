local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = {}
L1_1.fpsTimeStamps = nil
L1_1.fpsText = nil
L1_1.fpsText2 = nil
L1_1.luaMemText = nil
L1_1.texMemText = nil
L1_1.profiler = nil
L2_1 = {}
L2_1.count = 0
L2_1.fps = 0
L2_1.prevTimestamp = 0
L1_1.fpsData = L2_1

function L2_1(A0_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2.getSceneName
    L3_2 = "current"
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = print
      L4_2 = os
      L4_2 = L4_2.date
      L5_2 = "%H:%M:%S"
      L4_2 = L4_2(L5_2)
      L5_2 = " ["
      L6_2 = A0_2
      L7_2 = "]["
      L8_2 = L2_2
      L9_2 = "]: "
      L10_2 = unpack
      L11_2 = arg
      L10_2 = L10_2(L11_2)
      L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
      L3_2(L4_2)
    else
      L3_2 = print
      L4_2 = os
      L4_2 = L4_2.date
      L5_2 = "%H:%M:%S"
      L4_2 = L4_2(L5_2)
      L5_2 = " ["
      L6_2 = A0_2
      L7_2 = "]"
      L8_2 = unpack
      L9_2 = arg
      L8_2 = L8_2(L9_2)
      L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
      L3_2(L4_2)
    end
  end
end

function L3_1(A0_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2.getSceneName
    L3_2 = "current"
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = print
      L4_2 = os
      L4_2 = L4_2.date
      L5_2 = "%H:%M:%S"
      L4_2 = L4_2(L5_2)
      L5_2 = " ["
      L6_2 = A0_2
      L7_2 = "]["
      L8_2 = L2_2
      L9_2 = "]: "
      L10_2 = string
      L10_2 = L10_2.format
      L11_2 = unpack
      L12_2 = arg
      L11_2, L12_2 = L11_2(L12_2)
      L10_2 = L10_2(L11_2, L12_2)
      L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
      L3_2(L4_2)
    else
      L3_2 = print
      L4_2 = os
      L4_2 = L4_2.date
      L5_2 = "%H:%M:%S"
      L4_2 = L4_2(L5_2)
      L5_2 = " ["
      L6_2 = A0_2
      L7_2 = "]"
      L8_2 = string
      L8_2 = L8_2.format
      L9_2 = unpack
      L10_2 = arg
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
      L3_2(L4_2)
    end
  end
end

L1_1.debugPrint = L3_1

function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  if L4_2 then
    if A1_2 then
      L4_2 = L2_1
      L5_2 = A0_2
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
    end
    if not A3_2 then
      A3_2 = 0
    end
    if 10 < A3_2 then
      return
    end
    if A2_2 then
      L4_2 = pairs
      L5_2 = A2_2
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = ""
        L10_2 = 1
        L11_2 = A3_2
        L12_2 = 1
        for L13_2 = L10_2, L11_2, L12_2 do
          L14_2 = L9_2
          L15_2 = "    "
          L9_2 = L14_2 .. L15_2
        end
        L10_2 = L2_1
        L11_2 = A0_2
        L12_2 = L9_2
        L13_2 = "["
        L14_2 = tostring
        L15_2 = L7_2
        L14_2 = L14_2(L15_2)
        L15_2 = "] = "
        L16_2 = tostring
        L17_2 = L8_2
        L16_2 = L16_2(L17_2)
        L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
        L10_2(L11_2, L12_2)
        L10_2 = type
        L11_2 = L8_2
        L10_2 = L10_2(L11_2)
        if L10_2 == "table" then
          L10_2 = L2_1
          L11_2 = A0_2
          L12_2 = L9_2
          L13_2 = "{"
          L12_2 = L12_2 .. L13_2
          L10_2(L11_2, L12_2)
          L10_2 = L4_1
          L11_2 = A0_2
          L12_2 = nil
          L13_2 = L8_2
          L14_2 = A3_2 + 1
          L10_2(L11_2, L12_2, L13_2, L14_2)
          L10_2 = L2_1
          L11_2 = A0_2
          L12_2 = L9_2
          L13_2 = "}"
          L12_2 = L12_2 .. L13_2
          L10_2(L11_2, L12_2)
        end
      end
    end
  end
end

L1_1.debugTable = L4_1

function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L0_1
  L0_2 = L0_2.debugger
  L0_2 = L0_2.fpsGame
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.fpsText
    if not L0_2 then
      L0_2 = L1_1
      L1_2 = L0_1
      L1_2 = L1_2.newText
      L2_2 = {}
      L2_2.string = ""
      L2_2.size = 12
      L2_2.x = 5
      L2_2.y = 10
      L2_2.ax = 0
      L1_2 = L1_2(L2_2)
      L0_2.fpsText = L1_2
      L0_2 = L1_1
      L0_2 = L0_2.fpsText
      L1_2 = L0_2
      L0_2 = L0_2.setFillColor
      L2_2 = 1
      L3_2 = 0.1
      L4_2 = 0.1
      L0_2(L1_2, L2_2, L3_2, L4_2)
    end
    L0_2 = L1_1
    L0_2 = L0_2.fpsText2
    if not L0_2 then
      L0_2 = L1_1
      L1_2 = L0_1
      L1_2 = L1_2.newText
      L2_2 = {}
      L2_2.string = ""
      L2_2.size = 12
      L2_2.x = 5
      L2_2.y = 30
      L2_2.ax = 0
      L1_2 = L1_2(L2_2)
      L0_2.fpsText2 = L1_2
      L0_2 = L1_1
      L0_2 = L0_2.fpsText2
      L1_2 = L0_2
      L0_2 = L0_2.setFillColor
      L2_2 = 1
      L3_2 = 0.1
      L4_2 = 0.1
      L0_2(L1_2, L2_2, L3_2, L4_2)
    end
    L0_2 = L1_1
    L0_2 = L0_2.fpsTimeStamps
    if not L0_2 then
      L0_2 = L1_1
      L1_2 = {}
      L0_2.fpsTimeStamps = L1_2
    end
    L0_2 = L1_1
    L0_2 = L0_2.fpsTimeStamps
    if L0_2 then
      L0_2 = system
      L0_2 = L0_2.getTimer
      L0_2 = L0_2()
      L1_2 = L1_1
      L1_2 = L1_2.fpsTimeStamps
      L2_2 = L1_1
      L2_2 = L2_2.fpsTimeStamps
      L2_2 = #L2_2
      L2_2 = L2_2 + 1
      L1_2[L2_2] = L0_2
      L1_2 = 0
      L2_2 = 1
      L3_2 = L1_1
      L3_2 = L3_2.fpsTimeStamps
      L3_2 = #L3_2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = L1_1
        L6_2 = L6_2.fpsTimeStamps
        L6_2 = L6_2[L5_2]
        L6_2 = L0_2 - L6_2
        if L6_2 < 1000 then
          L1_2 = L1_2 + 1
        end
      end
      L2_2 = L1_1
      L2_2 = L2_2.fpsText
      L2_2.text = L1_2
      L2_2 = L1_1
      L2_2 = L2_2.fpsData
      L2_2 = L2_2.prevTimestamp
      L2_2 = L0_2 - L2_2
      if 1000 < L2_2 then
        L2_2 = L1_1
        L2_2 = L2_2.fpsData
        L3_2 = L1_1
        L3_2 = L3_2.fpsData
        L3_2 = L3_2.fps
        L3_2 = L3_2 + L1_2
        L2_2.fps = L3_2
        L2_2 = L1_1
        L2_2 = L2_2.fpsData
        L3_2 = L1_1
        L3_2 = L3_2.fpsData
        L3_2 = L3_2.count
        L3_2 = L3_2 + 1
        L2_2.count = L3_2
        L2_2 = L1_1
        L2_2 = L2_2.fpsData
        L2_2.prevTimestamp = L0_2
      end
      L2_2 = L1_1
      L2_2 = L2_2.fpsText2
      if L2_2 then
        L2_2 = L1_1
        L2_2 = L2_2.fpsText2
        L3_2 = L1_1
        L3_2 = L3_2.fpsData
        L3_2 = L3_2.fps
        L4_2 = L1_1
        L4_2 = L4_2.fpsData
        L4_2 = L4_2.count
        L3_2 = L3_2 / L4_2
        L2_2.text = L3_2
      end
    end
  end
end

L1_1.logFPS = L5_1

function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L0_1
  L0_2 = L0_2.debugger
  L0_2 = L0_2.memoryCheck
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.texMemText
    if not L0_2 then
      L0_2 = L1_1
      L1_2 = L0_1
      L1_2 = L1_2.newText
      L2_2 = {}
      L2_2.string = ""
      L2_2.size = 12
      L2_2.x = 30
      L2_2.y = 30
      L2_2.ax = 0
      L1_2 = L1_2(L2_2)
      L0_2.texMemText = L1_2
      L0_2 = L1_1
      L0_2 = L0_2.texMemText
      L1_2 = L0_2
      L0_2 = L0_2.setFillColor
      L2_2 = 1
      L3_2 = 0.1
      L4_2 = 0.1
      L0_2(L1_2, L2_2, L3_2, L4_2)
    end
    L0_2 = L1_1
    L0_2 = L0_2.luaMemText
    if not L0_2 then
      L0_2 = L1_1
      L1_2 = L0_1
      L1_2 = L1_2.newText
      L2_2 = {}
      L2_2.string = ""
      L2_2.size = 12
      L2_2.x = 30
      L2_2.y = 10
      L2_2.ax = 0
      L1_2 = L1_2(L2_2)
      L0_2.luaMemText = L1_2
      L0_2 = L1_1
      L0_2 = L0_2.luaMemText
      L1_2 = L0_2
      L0_2 = L0_2.setFillColor
      L2_2 = 1
      L3_2 = 0.1
      L4_2 = 0.1
      L0_2(L1_2, L2_2, L3_2, L4_2)
    end
    L0_2 = collectgarbage
    L1_2 = "count"
    L0_2 = L0_2(L1_2)
    L0_2 = L0_2 / 1024
    L1_2 = system
    L1_2 = L1_2.getInfo
    L2_2 = "textureMemoryUsed"
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2 / 1048576
    L2_2 = L1_1
    L2_2 = L2_2.luaMemText
    L3_2 = "LUAMEM: "
    L4_2 = L0_2
    L3_2 = L3_2 .. L4_2
    L2_2.text = L3_2
    L2_2 = L1_1
    L2_2 = L2_2.texMemText
    L3_2 = "TextureMEM: "
    L4_2 = L1_2
    L3_2 = L3_2 .. L4_2
    L2_2.text = L3_2
  end
end

L1_1.logMemUsage = L6_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L1_2 = L1_2.debugger
  L1_2 = L1_2.profiling
  if L1_2 then
    L1_2 = L1_1
    L1_2 = L1_2.profiler
    if not L1_2 then
      L1_2 = L1_1
      L2_2 = {}
      L1_2.profiler = L2_2
    end
    L1_2 = L1_1
    L1_2 = L1_2.profiler
    L1_2 = L1_2[A0_2]
    if not L1_2 then
      L1_2 = L1_1
      L1_2 = L1_2.profiler
      L2_2 = {}
      L1_2[A0_2] = L2_2
      L1_2 = L1_1
      L1_2 = L1_2.profiler
      L1_2 = L1_2[A0_2]
      L2_2 = {}
      L1_2.timestamps = L2_2
      L1_2 = L1_1
      L1_2 = L1_2.profiler
      L1_2 = L1_2[A0_2]
      L1_2.numberOfEvents = 0
    end
    L1_2 = L1_1
    L1_2 = L1_2.profiler
    L1_2 = L1_2[A0_2]
    L2_2 = L1_1
    L2_2 = L2_2.profiler
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.numberOfEvents
    L2_2 = L2_2 + 1
    L1_2.numberOfEvents = L2_2
    L1_2 = L1_1
    L1_2 = L1_2.profiler
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.timestamps
    L2_2 = L1_1
    L2_2 = L2_2.profiler
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.timestamps
    L2_2 = #L2_2
    L2_2 = L2_2 + 1
    L3_2 = system
    L3_2 = L3_2.getTimer
    L3_2 = L3_2()
    L1_2[L2_2] = L3_2
  end
end

L1_1.profile = L7_1

function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = L0_1
  L0_2 = L0_2.debugger
  L0_2 = L0_2.profiling
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.profiler
    if L0_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L0_2 = print
  L1_2 = "-----------------------------"
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "----------PROFILER-----------"
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "-----------------------------"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = L1_1
  L1_2 = L1_2.profiler
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = 0
    L6_2 = 9999999
    L7_2 = 0
    L8_2 = L1_1
    L8_2 = L8_2.profiler
    L8_2 = L8_2[L3_2]
    L8_2 = L8_2.timestamps
    L8_2 = #L8_2
    L9_2 = L1_1
    L9_2 = L9_2.profiler
    L9_2 = L9_2[L3_2]
    L9_2 = L9_2.numberOfEvents
    L9_2 = L9_2 % 2
    if L9_2 == 1 then
      L8_2 = L8_2 - 1
    end
    L9_2 = L8_2
    L10_2 = 2
    L11_2 = -2
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = L1_1
      L13_2 = L13_2.profiler
      L13_2 = L13_2[L3_2]
      L13_2 = L13_2.timestamps
      L13_2 = L13_2[L12_2]
      L14_2 = L1_1
      L14_2 = L14_2.profiler
      L14_2 = L14_2[L3_2]
      L14_2 = L14_2.timestamps
      L15_2 = L12_2 - 1
      L14_2 = L14_2[L15_2]
      L13_2 = L13_2 - L14_2
      L5_2 = L5_2 + L13_2
      if L7_2 < L13_2 then
        L7_2 = L13_2
      end
      if L6_2 > L13_2 then
        L6_2 = L13_2
      end
    end
    L9_2 = print
    L10_2 = "-----------------------------"
    L9_2(L10_2)
    L9_2 = print
    L10_2 = "PROFILER PART: "
    L11_2 = L3_2
    L9_2(L10_2, L11_2)
    L9_2 = print
    L10_2 = "Number Of Calls: "
    L11_2 = L1_1
    L11_2 = L11_2.profiler
    L11_2 = L11_2[L3_2]
    L11_2 = L11_2.numberOfEvents
    L11_2 = L11_2 * 0.5
    L10_2 = L10_2 .. L11_2
    L9_2(L10_2)
    L9_2 = print
    L10_2 = "Time Spent In Function: "
    L11_2 = L5_2
    L12_2 = " milliseconds"
    L10_2 = L10_2 .. L11_2 .. L12_2
    L9_2(L10_2)
    L9_2 = print
    L10_2 = "Minimum Spent In Function: "
    L11_2 = L6_2
    L12_2 = " milliseconds"
    L10_2 = L10_2 .. L11_2 .. L12_2
    L9_2(L10_2)
    L9_2 = print
    L10_2 = "Maximum Spent In Function: "
    L11_2 = L7_2
    L12_2 = " milliseconds"
    L10_2 = L10_2 .. L11_2 .. L12_2
    L9_2(L10_2)
    L9_2 = print
    L10_2 = "-----------------------------"
    L9_2(L10_2)
  end
  L0_2 = L1_1
  L0_2.profiler = nil
end

function L9_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L0_2 = L0_2.fpsText
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.fpsText
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = L1_1
    L0_2.fpsText = nil
  end
  L0_2 = L1_1
  L0_2 = L0_2.fpsText2
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.fpsText2
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = L1_1
    L0_2.fpsText2 = nil
  end
  L0_2 = L1_1
  L0_2.fpsTimeStamps = nil
  L0_2 = L1_1
  L0_2 = L0_2.luaMemText
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.luaMemText
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = L1_1
    L0_2.luaMemText = nil
  end
  L0_2 = L1_1
  L0_2 = L0_2.texMemText
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.texMemText
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = L1_1
    L0_2.texMemText = nil
  end
  L0_2 = L8_1
  L0_2()
  L0_2 = L1_1
  L1_2 = {}
  L1_2.count = 0
  L1_2.fps = 0
  L1_2.prevTimestamp = 0
  L0_2.fpsData = L1_2
end

L1_1.clean = L9_1
L0_1.debugger = L1_1
