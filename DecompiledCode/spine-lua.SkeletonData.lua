local L0_1, L1_1
L0_1 = {}

function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  L1_2 = {}
  L0_2.bones = L1_2
  L1_2 = {}
  L0_2.slots = L1_2
  L1_2 = {}
  L0_2.slotNameIndices = L1_2
  L1_2 = {}
  L0_2.skins = L1_2
  L1_2 = {}
  L0_2.events = L1_2
  L1_2 = {}
  L0_2.animations = L1_2
  L0_2.defaultSkin = nil
  
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if not A1_3 then
      L2_3 = error
      L3_3 = "boneName cannot be nil."
      L4_3 = 2
      L2_3(L3_3, L4_3)
    end
    L2_3 = ipairs
    L3_3 = A0_3.bones
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.name
      if L7_3 == A1_3 then
        return L6_3
      end
    end
    L2_3 = nil
    return L2_3
  end
  
  L0_2.findBone = L1_2
  
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if not A1_3 then
      L2_3 = error
      L3_3 = "boneName cannot be nil."
      L4_3 = 2
      L2_3(L3_3, L4_3)
    end
    L2_3 = ipairs
    L3_3 = A0_3.bones
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.name
      if L7_3 == A1_3 then
        return L5_3
      end
    end
    L2_3 = -1
    return L2_3
  end
  
  L0_2.findBoneIndex = L1_2
  
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if not A1_3 then
      L2_3 = error
      L3_3 = "slotName cannot be nil."
      L4_3 = 2
      L2_3(L3_3, L4_3)
    end
    L2_3 = ipairs
    L3_3 = A0_3.slots
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.name
      if L7_3 == A1_3 then
        return L6_3
      end
    end
    L2_3 = nil
    return L2_3
  end
  
  L0_2.findSlot = L1_2
  
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    if not A1_3 then
      L2_3 = error
      L3_3 = "slotName cannot be nil."
      L4_3 = 2
      L2_3(L3_3, L4_3)
    end
    L2_3 = A0_3.slotNameIndices
    L2_3 = L2_3[A1_3]
    if not L2_3 then
      L2_3 = -1
    end
    return L2_3
  end
  
  L0_2.findSlotIndex = L1_2
  
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if not A1_3 then
      L2_3 = error
      L3_3 = "skinName cannot be nil."
      L4_3 = 2
      L2_3(L3_3, L4_3)
    end
    L2_3 = ipairs
    L3_3 = A0_3.skins
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.name
      if L7_3 == A1_3 then
        return L6_3
      end
    end
    L2_3 = nil
    return L2_3
  end
  
  L0_2.findSkin = L1_2
  
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if not A1_3 then
      L2_3 = error
      L3_3 = "eventName cannot be nil."
      L4_3 = 2
      L2_3(L3_3, L4_3)
    end
    L2_3 = ipairs
    L3_3 = A0_3.events
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.name
      if L7_3 == A1_3 then
        return L6_3
      end
    end
    L2_3 = nil
    return L2_3
  end
  
  L0_2.findEvent = L1_2
  
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if not A1_3 then
      L2_3 = error
      L3_3 = "animationName cannot be nil."
      L4_3 = 2
      L2_3(L3_3, L4_3)
    end
    L2_3 = ipairs
    L3_3 = A0_3.animations
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.name
      if L7_3 == A1_3 then
        return L6_3
      end
    end
    L2_3 = nil
    return L2_3
  end
  
  L0_2.findAnimation = L1_2
  return L0_2
end

L0_1.new = L1_1
return L0_1
