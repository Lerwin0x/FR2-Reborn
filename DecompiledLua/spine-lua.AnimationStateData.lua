local L0_1, L1_1
L0_1 = {}

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    L1_2 = error
    L2_2 = "skeletonData cannot be nil"
    L3_2 = 2
    L1_2(L2_2, L3_2)
  end
  L1_2 = {}
  L1_2.skeletonData = A0_2
  L2_2 = {}
  L1_2.animationToMixTime = L2_2
  L1_2.defaultMix = 0
  
  function L2_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3
    L4_3 = A0_3.animationToMixTime
    L4_3 = L4_3[A1_3]
    if not L4_3 then
      L4_3 = A0_3.animationToMixTime
      L5_3 = {}
      L4_3[A1_3] = L5_3
    end
    L4_3 = A0_3.animationToMixTime
    L4_3 = L4_3[A1_3]
    L4_3[A2_3] = A3_3
  end
  
  L1_2.setMix = L2_2
  
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    L3_3 = A0_3.animationToMixTime
    L3_3 = L3_3[A1_3]
    if not L3_3 then
      L4_3 = A0_3.defaultMix
      return L4_3
    end
    L4_3 = L3_3[A2_3]
    if not L4_3 then
      L5_3 = A0_3.defaultMix
      return L5_3
    end
    return L4_3
  end
  
  L1_2.getMix = L2_2
  return L1_2
end

L0_1.new = L1_1
return L0_1
