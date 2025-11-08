local L0_1, L1_1, L2_1
L0_1 = {}

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    L1_2 = error
    L2_2 = "data cannot be nil"
    L3_2 = 2
    L1_2(L2_2, L3_2)
  end
  L1_2 = {}
  L1_2.data = A0_2
  L2_2 = {}
  L1_2.tracks = L2_2
  L1_2.trackCount = 0
  L2_2 = {}
  L1_2.events = L2_2
  L1_2.onStart = nil
  L1_2.onEnd = nil
  L1_2.onComplete = nil
  L1_2.onEvent = nil
  L1_2.timeScale = 1
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = L1_2
    L2_3 = L2_3.tracks
    L2_3 = L2_3[A0_3]
    if L2_3 then
      L3_3 = L2_3.previous
      L2_3.previous = nil
      L4_3 = L2_3.onEnd
      if L4_3 then
        L4_3 = L2_3.onEnd
        L5_3 = A0_3
        L4_3(L5_3)
      end
      L4_3 = L1_2
      L4_3 = L4_3.onEnd
      if L4_3 then
        L4_3 = L1_2
        L4_3 = L4_3.onEnd
        L5_3 = A0_3
        L4_3(L5_3)
      end
      L4_3 = L1_2
      L4_3 = L4_3.data
      L5_3 = L4_3
      L4_3 = L4_3.getMix
      L6_3 = L2_3.animation
      L6_3 = L6_3.name
      L7_3 = A1_3.animation
      L7_3 = L7_3.name
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      A1_3.mixDuration = L4_3
      L4_3 = A1_3.mixDuration
      if 0 < L4_3 then
        A1_3.mixTime = 0
        if L3_3 then
          L4_3 = L2_3.mixTime
          L5_3 = L2_3.mixDuration
          L4_3 = L4_3 / L5_3
          if L4_3 < 0.5 then
            A1_3.previous = L3_3
        end
        else
          A1_3.previous = L2_3
        end
      end
    end
    L3_3 = L1_2
    L3_3 = L3_3.tracks
    L3_3[A0_3] = A1_3
    L3_3 = L1_2
    L4_3 = math
    L4_3 = L4_3.max
    L5_3 = L1_2
    L5_3 = L5_3.trackCount
    L6_3 = A0_3
    L4_3 = L4_3(L5_3, L6_3)
    L3_3.trackCount = L4_3
    L3_3 = A1_3.onStart
    if L3_3 then
      L3_3 = A1_3.onStart
      L4_3 = A0_3
      L3_3(L4_3)
    end
    L3_3 = L1_2
    L3_3 = L3_3.onStart
    if L3_3 then
      L3_3 = L1_2
      L3_3 = L3_3.onStart
      L4_3 = A0_3
      L3_3(L4_3)
    end
  end
  
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L2_3 = A0_3.timeScale
    A1_3 = A1_3 * L2_3
    L2_3 = 0
    L3_3 = A0_3.trackCount
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A0_3.tracks
      L6_3 = L6_3[L5_3]
      if L6_3 then
        L7_3 = L6_3.time
        L8_3 = L6_3.timeScale
        L8_3 = A1_3 * L8_3
        L7_3 = L7_3 + L8_3
        L6_3.time = L7_3
        L7_3 = L6_3.previous
        if L7_3 then
          L7_3 = L6_3.previous
          L7_3 = L7_3.timeScale
          L7_3 = A1_3 * L7_3
          L8_3 = L6_3.previous
          L9_3 = L6_3.previous
          L9_3 = L9_3.time
          L9_3 = L9_3 + L7_3
          L8_3.time = L9_3
          L8_3 = L6_3.mixTime
          L8_3 = L8_3 + L7_3
          L6_3.mixTime = L8_3
        end
        L7_3 = L6_3.next
        if L7_3 then
          L8_3 = L6_3.lastTime
          L9_3 = L7_3.delay
          L8_3 = L8_3 - L9_3
          L7_3.time = L8_3
          L8_3 = L7_3.time
          if 0 <= L8_3 then
            L8_3 = L2_2
            L9_3 = L5_3
            L10_3 = L7_3
            L8_3(L9_3, L10_3)
          end
        else
          L8_3 = L6_3.loop
          if not L8_3 then
            L8_3 = L6_3.lastTime
            L9_3 = L6_3.endTime
            if L8_3 >= L9_3 then
              L9_3 = A0_3
              L8_3 = A0_3.clearTrack
              L10_3 = L5_3
              L8_3(L9_3, L10_3)
            end
          end
        end
      end
    end
  end
  
  L1_2.update = L3_2
  
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
    L2_3 = 0
    L3_3 = A0_3.trackCount
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A0_3.tracks
      L6_3 = L6_3[L5_3]
      if L6_3 then
        L7_3 = L6_3.time
        L8_3 = L6_3.lastTime
        L9_3 = L6_3.endTime
        L10_3 = L6_3.loop
        if not L10_3 and L7_3 > L9_3 then
          L7_3 = L9_3
        end
        L11_3 = L6_3.previous
        if not L11_3 then
          L12_3 = L6_3.mix
          if L12_3 == 1 then
            L12_3 = L6_3.animation
            L13_3 = L12_3
            L12_3 = L12_3.apply
            L14_3 = A1_3
            L15_3 = L6_3.lastTime
            L16_3 = L7_3
            L17_3 = L10_3
            L18_3 = A0_3.events
            L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
          else
            L12_3 = L6_3.animation
            L13_3 = L12_3
            L12_3 = L12_3.mix
            L14_3 = A1_3
            L15_3 = L6_3.lastTime
            L16_3 = L7_3
            L17_3 = L10_3
            L18_3 = A0_3.events
            L19_3 = L6_3.mix
            L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
          end
        else
          L12_3 = L11_3.time
          L13_3 = L11_3.loop
          if not L13_3 then
            L13_3 = L11_3.endTime
            if L12_3 > L13_3 then
              L12_3 = L11_3.endTime
            end
          end
          L13_3 = L11_3.animation
          L14_3 = L13_3
          L13_3 = L13_3.apply
          L15_3 = A1_3
          L16_3 = L12_3
          L17_3 = L12_3
          L18_3 = L11_3.loop
          L19_3 = nil
          L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
          L13_3 = L6_3.mixTime
          L14_3 = L6_3.mixDuration
          L13_3 = L13_3 / L14_3
          L14_3 = L6_3.mix
          L13_3 = L13_3 * L14_3
          if 1 <= L13_3 then
            L13_3 = 1
            L6_3.previous = nil
          end
          L14_3 = L6_3.animation
          L15_3 = L14_3
          L14_3 = L14_3.mix
          L16_3 = A1_3
          L17_3 = L6_3.lastTime
          L18_3 = L7_3
          L19_3 = L10_3
          L20_3 = A0_3.events
          L21_3 = L13_3
          L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
        end
        L12_3 = A0_3.events
        L12_3 = #L12_3
        L13_3 = 1
        L14_3 = L12_3
        L15_3 = 1
        for L16_3 = L13_3, L14_3, L15_3 do
          L17_3 = A0_3.events
          L17_3 = L17_3[L16_3]
          L18_3 = L6_3.onEvent
          if L18_3 then
            L18_3 = L6_3.onEvent
            L19_3 = L5_3
            L20_3 = L17_3
            L18_3(L19_3, L20_3)
          end
          L18_3 = A0_3.onEvent
          if L18_3 then
            L18_3 = A0_3.onEvent
            L19_3 = L5_3
            L20_3 = L17_3
            L18_3(L19_3, L20_3)
          end
        end
        L13_3 = 1
        L14_3 = L12_3
        L15_3 = 1
        for L16_3 = L13_3, L14_3, L15_3 do
          L17_3 = table
          L17_3 = L17_3.remove
          L18_3 = A0_3.events
          L17_3(L18_3)
        end
        L13_3 = nil
        L14_3 = L6_3.loop
        if L14_3 then
          L14_3 = L8_3 % L9_3
          L15_3 = L7_3 % L9_3
          L13_3 = L14_3 > L15_3
        else
          L13_3 = L8_3 < L9_3 and L9_3 <= L7_3
        end
        if L13_3 then
          L14_3 = math
          L14_3 = L14_3.floor
          L15_3 = L7_3 / L9_3
          L14_3 = L14_3(L15_3)
          L15_3 = L6_3.onComplete
          if L15_3 then
            L15_3 = L6_3.onComplete
            L16_3 = L5_3
            L17_3 = L14_3
            L15_3(L16_3, L17_3)
          end
          L15_3 = A0_3.onComplete
          if L15_3 then
            L15_3 = A0_3.onComplete
            L16_3 = L5_3
            L17_3 = L14_3
            L15_3(L16_3, L17_3)
          end
        end
        L14_3 = L6_3.time
        L6_3.lastTime = L14_3
      end
    end
  end
  
  L1_2.apply = L3_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = pairs
    L2_3 = A0_3.tracks
    L1_3, L2_3, L3_3 = L1_3(L2_3)
    for L4_3, L5_3 in L1_3, L2_3, L3_3 do
      L6_3 = A0_3.clearTrack
      L7_3 = L4_3
      L6_3(L7_3)
    end
    L1_3 = {}
    A0_3.tracks = L1_3
    A0_3.trackCount = 0
  end
  
  L1_2.clearTracks = L3_2
  
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.tracks
    L2_3 = L2_3[A1_3]
    if not L2_3 then
      return
    end
    L3_3 = L2_3.onEnd
    if L3_3 then
      L3_3 = L2_3.onEnd
      L4_3 = A1_3
      L3_3(L4_3)
    end
    L3_3 = A0_3.onEnd
    if L3_3 then
      L3_3 = A0_3.onEnd
      L4_3 = A1_3
      L3_3(L4_3)
    end
    L3_3 = A0_3.tracks
    L3_3[A1_3] = nil
    L3_3 = A0_3.trackCount
    L3_3 = L3_3 - 1
    if A1_3 == L3_3 then
    end
  end
  
  L1_2.clearTrack = L3_2
  
  function L3_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L4_3 = A0_3.data
    L4_3 = L4_3.skeletonData
    L5_3 = L4_3
    L4_3 = L4_3.findAnimation
    L6_3 = A2_3
    L4_3 = L4_3(L5_3, L6_3)
    if not L4_3 then
      L5_3 = error
      L6_3 = "Animation not found: "
      L7_3 = A2_3
      L6_3 = L6_3 .. L7_3
      L5_3(L6_3)
    end
    L6_3 = A0_3
    L5_3 = A0_3.setAnimation
    L7_3 = A1_3
    L8_3 = L4_3
    L9_3 = A3_3
    return L5_3(L6_3, L7_3, L8_3, L9_3)
  end
  
  L1_2.setAnimationByName = L3_2
  
  function L3_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3
    L4_3 = L0_1
    L4_3 = L4_3.TrackEntry
    L4_3 = L4_3.new
    L4_3 = L4_3()
    L4_3.animation = A2_3
    L4_3.loop = A3_3
    L5_3 = A2_3.duration
    L4_3.endTime = L5_3
    L5_3 = L2_2
    L6_3 = A1_3
    L7_3 = L4_3
    L5_3(L6_3, L7_3)
    return L4_3
  end
  
  L1_2.setAnimation = L3_2
  
  function L3_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L5_3 = A0_3.data
    L5_3 = L5_3.skeletonData
    L6_3 = L5_3
    L5_3 = L5_3.findAnimation
    L7_3 = A2_3
    L5_3 = L5_3(L6_3, L7_3)
    if not L5_3 then
      L6_3 = error
      L7_3 = "Animation not found: "
      L8_3 = A2_3
      L7_3 = L7_3 .. L8_3
      L6_3(L7_3)
    end
    L7_3 = A0_3
    L6_3 = A0_3.addAnimation
    L8_3 = A1_3
    L9_3 = L5_3
    L10_3 = A3_3
    L11_3 = A4_3
    return L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
  end
  
  L1_2.addAnimationByName = L3_2
  
  function L3_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L5_3 = L0_1
    L5_3 = L5_3.TrackEntry
    L5_3 = L5_3.new
    L5_3 = L5_3()
    L5_3.animation = A2_3
    L5_3.loop = A3_3
    L6_3 = A2_3.duration
    L5_3.endTime = L6_3
    L6_3 = A0_3.tracks
    L6_3 = L6_3[A1_3]
    if L6_3 then
      while true do
        L7_3 = L6_3.next
        if not L7_3 then
          break
        end
        L6_3 = L6_3.next
      end
      L6_3.next = L5_3
    else
      L7_3 = A0_3.tracks
      L7_3[A1_3] = L5_3
    end
    if not A4_3 then
      A4_3 = 0
    end
    if A4_3 <= 0 then
      if L6_3 then
        L7_3 = L6_3.endTime
        L7_3 = A4_3 + L7_3
        L8_3 = A0_3.data
        L9_3 = L8_3
        L8_3 = L8_3.getMix
        L10_3 = L6_3.animation
        L10_3 = L10_3.name
        L11_3 = A2_3.name
        L8_3 = L8_3(L9_3, L10_3, L11_3)
        A4_3 = L7_3 - L8_3
      else
        A4_3 = 0
      end
    end
    L5_3.delay = A4_3
    L7_3 = math
    L7_3 = L7_3.max
    L8_3 = A0_3.trackCount
    L9_3 = A1_3
    L7_3 = L7_3(L8_3, L9_3)
    A0_3.trackCount = L7_3
    return L5_3
  end
  
  L1_2.addAnimation = L3_2
  
  function L3_2(A0_3, A1_3)
    local L2_3
    L2_3 = A0_3.tracks
    L2_3 = L2_3[A1_3]
    return L2_3
  end
  
  L1_2.getCurrent = L3_2
  return L1_2
end

L0_1.new = L1_1
L1_1 = {}
L0_1.TrackEntry = L1_1
L1_1 = L0_1.TrackEntry

function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  L1_2.next = nil
  L1_2.previous = nil
  L1_2.animation = nil
  L1_2.loop = false
  L1_2.delay = 0
  L1_2.time = 0
  L1_2.lastTime = -1
  L1_2.endTime = 0
  L1_2.timeScale = 1
  L1_2.mixTime = 0
  L1_2.mixDuration = 0
  L1_2.mix = 1
  L1_2.onStart = nil
  L1_2.onEnd = nil
  L1_2.onComplete = nil
  L1_2.onEvent = nil
  return L1_2
end

L1_1.new = L2_1
return L0_1
