local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "physics"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "lua.game.effects.cannonEffect"
L3_1 = L3_1(L4_1)

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L1_2 = A0_2.displayGroup
  L2_2 = A0_2.animatedBlockSheet
  L3_2 = "cannon1"
  L4_2 = 0
  L5_2 = 1
  L6_2 = L1_1
  L6_2 = L6_2.data
  L6_2 = L6_2.currentLevelTheme
  if L6_2 == "space" then
    L5_2 = 8
  end
  L6_2 = {}
  L6_2.name = "collisionAnimation"
  L7_2 = A0_2.animatedBlockSheetFile
  L8_2 = L7_2
  L7_2 = L7_2.getFrameIndex
  L9_2 = L3_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.start = L7_2
  L6_2.count = L5_2
  L6_2.time = 200
  L6_2.loopCount = 1
  L6_2.loopDirection = "bounce"
  L7_2 = display
  L7_2 = L7_2.newSprite
  L8_2 = L2_2
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2.x
  L7_2.x = L8_2
  L8_2 = A0_2.y
  L8_2 = L8_2 + L4_2
  L7_2.y = L8_2
  L9_2 = L7_2
  L8_2 = L7_2.scale
  L10_2 = A0_2.scale
  L11_2 = A0_2.scale
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L1_2
  L8_2 = L1_2.insert
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = L1_1
  L8_2 = L8_2.culler
  L8_2 = L8_2.addAnimatedTile
  L9_2 = A0_2.x
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L7_2.isVisible = false
  L8_2 = "lua.map.assets.physics."
  L9_2 = L1_1
  L9_2 = L9_2.data
  L9_2 = L9_2.currentLevelTheme
  L10_2 = "_special"
  L8_2 = L8_2 .. L9_2 .. L10_2
  L9_2 = require
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2.physicsData
  L10_2 = A0_2.scale
  L9_2 = L9_2(L10_2)
  L10_2 = {}
  L12_2 = L9_2
  L11_2 = L9_2.get
  L13_2 = L3_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L11_2(L12_2, L13_2)
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  L10_2[5] = L15_2
  L10_2[6] = L16_2
  L10_2[7] = L17_2
  L10_2[8] = L18_2
  L10_2[9] = L19_2
  L10_2[10] = L20_2
  L10_2[11] = L21_2
  L10_2[12] = L22_2
  L10_2[13] = L23_2
  L11_2 = ipairs
  L12_2 = L10_2
  L11_2, L12_2, L13_2 = L11_2(L12_2)
  for L14_2, L15_2 in L11_2, L12_2, L13_2 do
    L16_2 = obstacleFilter
    L15_2.filter = L16_2
  end
  L11_2 = L2_1
  L11_2 = L11_2.addBody
  L12_2 = L7_2
  L13_2 = unpack
  L14_2 = L10_2
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L13_2(L14_2)
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L7_2.bodyType = "static"
  L7_2.isFixedRotation = true
  L7_2.cannon = true
  L11_2 = nil
  L12_2 = false
  L13_2 = {}
  L14_2 = 1000
  L15_2 = {}
  L16_2 = L3_1
  L16_2 = L16_2.new
  L16_2 = L16_2()
  L18_2 = L1_2
  L17_2 = L1_2.insert
  L19_2 = L16_2
  L17_2(L18_2, L19_2)
  L17_2 = A0_2.x
  L17_2 = L17_2 + 105
  L16_2.x = L17_2
  L17_2 = A0_2.y
  L17_2 = L17_2 - 60
  L16_2.y = L17_2
  
  function L17_2()
    local L0_3, L1_3, L2_3
    L0_3 = L1_1
    L0_3 = L0_3.isOnScreen
    L1_3 = A0_2
    L1_3 = L1_3.x
    L2_3 = A0_2
    L2_3 = L2_3.y
    L0_3 = L0_3(L1_3, L2_3)
    if L0_3 then
      L0_3 = true
      return L0_3
    end
    L0_3 = false
    return L0_3
  end
  
  function L18_2()
    local L0_3, L1_3
    L0_3 = L7_2
    if L0_3 then
      L0_3 = L7_2
      L1_3 = L0_3
      L0_3 = L0_3.pause
      L0_3(L1_3)
    end
  end
  
  function L19_2()
    local L0_3, L1_3, L2_3
    L0_3 = L7_2
    if L0_3 then
      L0_3 = L17_2
      L0_3 = L0_3()
      if L0_3 then
        L0_3 = L7_2
        L1_3 = L0_3
        L0_3 = L0_3.setSequence
        L2_3 = "collisionAnimation"
        L0_3(L1_3, L2_3)
        L0_3 = L7_2
        L1_3 = L0_3
        L0_3 = L0_3.play
        L0_3(L1_3)
      end
    end
  end
  
  function L20_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = L13_2
    L3_3 = A0_3.id
    L2_3 = L2_3[L3_3]
    if L2_3 then
      L2_3 = system
      L2_3 = L2_3.getTimer
      L2_3 = L2_3()
      L3_3 = L13_2
      L4_3 = A0_3.id
      L3_3 = L3_3[L4_3]
      L3_3 = L2_3 - L3_3
      L4_3 = L14_2
      if L3_3 < L4_3 then
        return
      end
    end
    
    function L2_3()
      local L0_4, L1_4, L2_4
      L0_4 = A0_3
      if L0_4 then
        L0_4 = L16_2
        if L0_4 then
          L0_4 = A1_3
          if not L0_4 then
            L0_4 = L13_2
            L1_4 = A0_3
            L1_4 = L1_4.id
            L2_4 = system
            L2_4 = L2_4.getTimer
            L2_4 = L2_4()
            L0_4[L1_4] = L2_4
            L0_4 = L16_2
            L0_4 = L0_4.playEffect
            L0_4()
            L0_4 = L19_2
            L0_4()
            L0_4 = A0_3
            L0_4 = L0_4.playSound
            if L0_4 then
              L0_4 = A0_3
              L0_4 = L0_4.playSound
              L1_4 = "cannon"
              L0_4(L1_4)
            end
            L0_4 = A0_3
            L0_4 = L0_4.cannonFunction
            L1_4 = A0_2
            L0_4(L1_4)
          end
        end
      end
    end
    
    L3_3 = L15_2
    L4_3 = A0_3.id
    L5_3 = timer
    L5_3 = L5_3.performWithDelay
    L6_3 = 10
    L7_3 = L2_3
    L5_3 = L5_3(L6_3, L7_3)
    L3_3[L4_3] = L5_3
  end
  
  function L21_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = true
    L12_2 = L0_3
    L0_3 = L11_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L11_2
      L0_3(L1_3)
      L0_3 = nil
      L11_2 = L0_3
    end
    L0_3 = L15_2
    if L0_3 then
      L0_3 = pairs
      L1_3 = L15_2
      L0_3, L1_3, L2_3 = L0_3(L1_3)
      for L3_3, L4_3 in L0_3, L1_3, L2_3 do
        if L4_3 then
          L5_3 = timer
          L5_3 = L5_3.cancel
          L6_3 = L4_3
          L5_3(L6_3)
          L4_3 = nil
        end
      end
      L0_3 = nil
      L15_2 = L0_3
    end
    L0_3 = L16_2
    if L0_3 then
      L0_3 = L16_2
      L0_3 = L0_3.clean
      L0_3()
      L0_3 = nil
      L16_2 = L0_3
    end
    L0_3 = L7_2
    if L0_3 then
      L0_3 = L7_2
      L0_3 = L0_3.removeSelf
      if L0_3 then
        L0_3 = L7_2
        L1_3 = L0_3
        L0_3 = L0_3.removeSelf
        L0_3(L1_3)
        L0_3 = nil
        L7_2 = L0_3
      end
    end
  end
  
  L22_2 = A0_2.behaviors
  L23_2 = {}
  L22_2.cannon = L23_2
  L22_2 = A0_2.behaviors
  L22_2 = L22_2.cannon
  L22_2.clean = L21_2
  L7_2.onCollision = L20_2
end

L0_1.addBehavior = L4_1
return L0_1
