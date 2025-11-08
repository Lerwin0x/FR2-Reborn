local L0_1, L1_1, L2_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = display
  L0_2 = L0_2.newGroup
  L0_2 = L0_2()
  L1_2 = false
  L2_2 = nil
  L3_2 = {}
  L3_2.name = "animate"
  L3_2.start = 1
  L3_2.count = 8
  L3_2.time = 200
  L3_2.loopCount = 1
  L4_2 = require
  L5_2 = "lua.game.effects.assetFiles.cannonEffect"
  L4_2 = L4_2(L5_2)
  L5_2 = graphics
  L5_2 = L5_2.newImageSheet
  L6_2 = "images/map/effects/cannonEffect.png"
  L8_2 = L4_2
  L7_2 = L4_2.getSheet
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = display
  L6_2 = L6_2.newSprite
  L7_2 = L5_2
  L8_2 = L3_2
  L6_2 = L6_2(L7_2, L8_2)
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L1_2
    if L0_3 then
      return
    end
    L0_3 = true
    L1_2 = L0_3
    L0_3 = L6_2
    if L0_3 then
      L0_3 = L6_2
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      L6_2 = L0_3
    end
    L0_3 = L2_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L2_2
      L0_3(L1_3)
      L0_3 = nil
      L2_2 = L0_3
    end
  end
  
  function L8_2()
    local L0_3, L1_3
    L0_3 = L6_2
    if L0_3 then
      L0_3 = L1_2
      if not L0_3 then
        L0_3 = L6_2
        L0_3.isVisible = false
      end
    end
  end
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L6_2
    L0_3.isVisible = true
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.setSequence
    L2_3 = "animate"
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.play
    L0_3(L1_3)
    L0_3 = timer
    L0_3 = L0_3.performWithDelay
    L1_3 = 200
    L2_3 = L8_2
    L3_3 = 1
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L2_2 = L0_3
  end
  
  L0_2.playEffect = L9_2
  L0_2.clean = L7_2
  L11_2 = L0_2
  L10_2 = L0_2.insert
  L12_2 = L6_2
  L10_2(L11_2, L12_2)
  L11_2 = L0_2
  L10_2 = L0_2.scale
  L12_2 = 0.7
  L13_2 = 0.7
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = L8_2
  L10_2()
  return L0_2
end

L0_1.new = L2_1
return L0_1
