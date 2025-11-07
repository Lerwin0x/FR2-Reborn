local L0_1, L1_1, L2_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L1_1
  L2_2 = L2_2.database
  L2_2 = L2_2.getSound
  L2_2 = L2_2()
  if L2_2 ~= 0 then
    L2_2 = nil
    if A1_2 then
      L3_2 = audio
      L3_2 = L3_2.play
      L4_2 = L1_1
      L4_2 = L4_2.data
      L4_2 = L4_2.sounds
      L4_2 = L4_2[A0_2]
      L5_2 = A1_2
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L3_2
    else
      L3_2 = audio
      L3_2 = L3_2.play
      L4_2 = L1_1
      L4_2 = L4_2.data
      L4_2 = L4_2.sounds
      L4_2 = L4_2[A0_2]
      L3_2 = L3_2(L4_2)
      L2_2 = L3_2
    end
    L3_2 = L1_1
    L3_2 = L3_2.debugger
    L3_2 = L3_2.debugPrint
    L4_2 = "audio"
    L5_2 = "Playing sound "
    L6_2 = A0_2
    L5_2 = L5_2 .. L6_2
    L3_2(L4_2, L5_2)
    return L2_2
  end
end

L0_1.play = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L1_2 = L1_2.database
  L1_2 = L1_2.getSound
  L1_2 = L1_2()
  if L1_2 ~= 0 then
    L1_2 = audio
    L1_2 = L1_2.stop
    L2_2 = A0_2
    L1_2(L2_2)
  end
end

L0_1.stop = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = audio
  L1_2 = L1_2.setVolume
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.setMasterVolume = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = 29
  L1_2 = audio
  L1_2 = L1_2.isChannelPlaying
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = L0_1
    L1_2 = L1_2.play
    L2_2 = "spin_wheel"
    L3_2 = {}
    L3_2.channel = L0_2
    L1_2(L2_2, L3_2)
  end
end

L0_1.playWheelSpin = L2_1
L1_1.audio = L0_1
