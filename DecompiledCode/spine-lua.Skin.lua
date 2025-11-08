local L0_1, L1_1
L0_1 = {}

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    L1_2 = error
    L2_2 = "name cannot be nil"
    L3_2 = 2
    L1_2(L2_2, L3_2)
  end
  L1_2 = {}
  L1_2.name = A0_2
  L2_2 = {}
  L1_2.attachments = L2_2
  
  function L2_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    if not A2_3 then
      L4_3 = error
      L5_3 = "name cannot be nil."
      L6_3 = 2
      L4_3(L5_3, L6_3)
    end
    L4_3 = A0_3.attachments
    L5_3 = A1_3
    L6_3 = ":"
    L7_3 = A2_3
    L5_3 = L5_3 .. L6_3 .. L7_3
    L6_3 = {}
    L7_3 = A1_3
    L8_3 = A2_3
    L9_3 = A3_3
    L6_3[1] = L7_3
    L6_3[2] = L8_3
    L6_3[3] = L9_3
    L4_3[L5_3] = L6_3
  end
  
  L1_2.addAttachment = L2_2
  
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    if not A2_3 then
      L3_3 = error
      L4_3 = "name cannot be nil."
      L5_3 = 2
      L3_3(L4_3, L5_3)
    end
    L3_3 = A0_3.attachments
    L4_3 = A1_3
    L5_3 = ":"
    L6_3 = A2_3
    L4_3 = L4_3 .. L5_3 .. L6_3
    L3_3 = L3_3[L4_3]
    if not L3_3 then
      L4_3 = nil
      return L4_3
    end
    L4_3 = L3_3[3]
    return L4_3
  end
  
  L1_2.getAttachment = L2_2
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L2_3 = {}
    L3_3 = A0_3.attachments
    L4_3 = nil
    L5_3 = nil
    for L6_3, L7_3 in L3_3, L4_3, L5_3 do
      L8_3 = L7_3[1]
      if L8_3 == A1_3 then
        L8_3 = table
        L8_3 = L8_3.insert
        L9_3 = L2_3
        L10_3 = L7_3[2]
        L8_3(L9_3, L10_3)
      end
    end
  end
  
  L1_2.findNamesForSlot = L2_2
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L2_3 = {}
    L3_3 = A0_3.attachments
    L4_3 = nil
    L5_3 = nil
    for L6_3, L7_3 in L3_3, L4_3, L5_3 do
      L8_3 = L7_3[1]
      if L8_3 == A1_3 then
        L8_3 = table
        L8_3 = L8_3.insert
        L9_3 = L2_3
        L10_3 = L7_3[3]
        L8_3(L9_3, L10_3)
      end
    end
  end
  
  L1_2.findAttachmentsForSlot = L2_2
  return L1_2
end

L0_1.new = L1_1
return L0_1
