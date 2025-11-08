local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "spine-lua.AttachmentType"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "spine-lua.RegionAttachment"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "spine-lua.BoundingBoxAttachment"
L2_1 = L2_1(L3_1)
L3_1 = {}

function L4_1()
  local L0_2, L1_2
  L0_2 = {}
  
  function L1_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3
    L4_3 = L1_1
    L4_3 = L4_3.new
    L5_3 = A2_3
    return L4_3(L5_3)
  end
  
  L0_2.newRegionAttachment = L1_2
  
  function L1_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3
    L4_3 = MeshAttachment
    L4_3 = L4_3.new
    L5_3 = A2_3
    return L4_3(L5_3)
  end
  
  L0_2.newMeshAttachment = L1_2
  
  function L1_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3
    L4_3 = SkinningMeshAttachment
    L4_3 = L4_3.new
    L5_3 = A2_3
    return L4_3(L5_3)
  end
  
  L0_2.newSkinningMeshAttachment = L1_2
  
  function L1_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3
    L3_3 = L2_1
    L3_3 = L3_3.new
    L4_3 = A2_3
    return L3_3(L4_3)
  end
  
  L0_2.newBoundingBoxAttachment = L1_2
  return L0_2
end

L3_1.new = L4_1
return L3_1
