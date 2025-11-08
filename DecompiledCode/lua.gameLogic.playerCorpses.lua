local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "physics"
L2_1 = L2_1(L3_1)
L3_1 = 0.25
L4_1 = 0.3
L5_1 = require
L6_1 = "lua.monsters.physics.gibs"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.physicsData
L6_1 = L3_1
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "lua.monsters.physics.gibs"
L6_1 = L6_1(L7_1)
L6_1 = L6_1.physicsData
L7_1 = L4_1
L6_1 = L6_1(L7_1)

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L2_2 = {}
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = {}
  L6_2 = {}
  L7_2 = {}
  L8_2 = {}
  L9_2 = false
  L10_2 = 30
  L11_2 = nil
  L12_2 = 1
  L13_2 = nil
  
  function L14_2(A0_3)
    local L1_3
    L11_2 = A0_3
  end
  
  L2_2.addSpriteSet = L14_2
  
  function L15_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = true
    L9_2 = L0_3
    L0_3 = 1
    L1_3 = L5_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L5_2
      L4_3 = L4_3[L3_3]
      L5_3 = L4_3
      L4_3 = L4_3.removeSelf
      L4_3(L5_3)
    end
    L0_3 = 1
    L1_3 = L6_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L6_2
      L4_3 = L4_3[L3_3]
      L5_3 = L4_3
      L4_3 = L4_3.removeSelf
      L4_3(L5_3)
    end
    L0_3 = 1
    L1_3 = L7_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L7_2
      L4_3 = L4_3[L3_3]
      if L4_3 then
        L4_3 = transition
        L4_3 = L4_3.cancel
        L5_3 = L7_2
        L5_3 = L5_3[L3_3]
        L4_3(L5_3)
        L4_3 = L7_2
        L4_3 = L4_3[L3_3]
        L4_3 = L4_3.removeSelf
        if L4_3 then
          L4_3 = L7_2
          L4_3 = L4_3[L3_3]
          L5_3 = L4_3
          L4_3 = L4_3.removeSelf
          L4_3(L5_3)
        end
      end
    end
  end
  
  L2_2.startedCleanNow = L15_2
  
  function L16_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = 1
    L1_3 = 3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L8_2
      L5_3 = L8_2
      L5_3 = #L5_3
      L5_3 = L5_3 + 1
      L6_3 = display
      L6_3 = L6_3.newImageRect
      L7_3 = "images/game/powerups/tombstone.png"
      L8_3 = 111
      L9_3 = 144
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      L4_3[L5_3] = L6_3
      L4_3 = L8_2
      L5_3 = L8_2
      L5_3 = #L5_3
      L4_3 = L4_3[L5_3]
      L4_3.xScale = 0.25
      L4_3 = L8_2
      L5_3 = L8_2
      L5_3 = #L5_3
      L4_3 = L4_3[L5_3]
      L4_3.yScale = 0.25
      L4_3 = L5_1
      L5_3 = L4_3
      L4_3 = L4_3.get
      L6_3 = "tombstone"
      L4_3 = L4_3(L5_3, L6_3)
      L4_3.density = 0.6
      L4_3.friction = 1
      L4_3.bounce = 0
      L5_3 = remotePlayerCollisionFilter
      L4_3.filter = L5_3
      L5_3 = L2_1
      L5_3 = L5_3.addBody
      L6_3 = L8_2
      L7_3 = L8_2
      L7_3 = #L7_3
      L6_3 = L6_3[L7_3]
      L7_3 = "dynamic"
      L8_3 = L4_3
      L5_3(L6_3, L7_3, L8_3)
      L5_3 = L8_2
      L6_3 = L8_2
      L6_3 = #L6_3
      L5_3 = L5_3[L6_3]
      L6_3 = L4_2
      L6_3 = L6_3.x
      L5_3.x = L6_3
      L5_3 = L8_2
      L6_3 = L8_2
      L6_3 = #L6_3
      L5_3 = L5_3[L6_3]
      L6_3 = L4_2
      L6_3 = L6_3.y
      L5_3.y = L6_3
      L5_3 = L8_2
      L6_3 = L8_2
      L6_3 = #L6_3
      L5_3 = L5_3[L6_3]
      L5_3.alpha = 0
      L5_3 = L3_2
      L6_3 = L5_3
      L5_3 = L5_3.insert
      L7_3 = L8_2
      L8_3 = L8_2
      L8_3 = #L8_3
      L7_3 = L7_3[L8_3]
      L5_3(L6_3, L7_3)
    end
  end
  
  L2_2.readyTombstones = L16_2
  
  function L17_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L13_2
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = L13_2
      L1_3(L2_3)
      L1_3 = nil
      L13_2 = L1_3
    end
    
    function L1_3()
      local L0_4, L1_4, L2_4
      L0_4 = L8_2
      L1_4 = L12_2
      L0_4 = L0_4[L1_4]
      L1_4 = L4_2
      L1_4 = L1_4.x
      L0_4.x = L1_4
      L1_4 = L4_2
      L1_4 = L1_4.y
      L0_4.y = L1_4
      L0_4.alpha = 1
      L1_4 = L12_2
      L1_4 = L1_4 + 1
      L12_2 = L1_4
      L1_4 = L12_2
      L2_4 = L8_2
      L2_4 = #L2_4
      if L1_4 > L2_4 then
        L1_4 = 1
        L12_2 = L1_4
      end
    end
    
    if A0_3 then
      L2_3 = timer
      L2_3 = L2_3.performWithDelay
      L3_3 = A0_3
      L4_3 = L1_3
      L5_3 = 1
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L13_2 = L2_3
    else
      L2_3 = timer
      L2_3 = L2_3.performWithDelay
      L3_3 = 10
      L4_3 = L1_3
      L5_3 = 1
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L13_2 = L2_3
    end
  end
  
  L2_2.dropTombstone = L17_2
  
  function L17_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L2_3 = L9_2
    if not L2_3 then
      L2_3 = L6_2
      L2_3 = #L2_3
      L2_3 = L2_3 - 2
      if 0 < L2_3 then
        L3_3 = 1
        L4_3 = 3
        L5_3 = 1
        for L6_3 = L3_3, L4_3, L5_3 do
          L7_3 = L6_2
          L7_3 = L7_3[L2_3]
          L8_3 = L4_2
          L8_3 = L8_3.x
          L7_3.x = L8_3
          L7_3 = L6_2
          L7_3 = L7_3[L2_3]
          L8_3 = L4_2
          L8_3 = L8_3.y
          L7_3.y = L8_3
          L7_3 = L6_2
          L7_3 = L7_3[L2_3]
          L7_3.alpha = 1
          L7_3 = L6_2
          L7_3 = L7_3[L2_3]
          L8_3 = L7_3
          L7_3 = L7_3.setLinearVelocity
          L9_3 = A0_3
          L10_3 = A1_3
          L7_3(L8_3, L9_3, L10_3)
          L7_3 = L6_2
          L7_3 = L7_3[L2_3]
          L8_3 = L7_3
          L7_3 = L7_3.toFront
          L7_3(L8_3)
          L7_3 = L6_2
          L7_3 = L7_3[L2_3]
          L8_3 = L7_3
          L7_3 = L7_3.applyForce
          L9_3 = math
          L9_3 = L9_3.random
          L10_3 = L10_2
          L10_3 = -L10_3
          L10_3 = L10_3 * 2
          L11_3 = L10_2
          L11_3 = L11_3 * 2
          L9_3 = L9_3(L10_3, L11_3)
          L10_3 = math
          L10_3 = L10_3.random
          L11_3 = L10_2
          L11_3 = -L11_3
          L11_3 = L11_3 * 3.5
          L12_3 = L10_2
          L12_3 = -L12_3
          L12_3 = L12_3 * 2
          L10_3 = L10_3(L11_3, L12_3)
          L11_3 = L6_2
          L11_3 = L11_3[L2_3]
          L11_3 = L11_3.x
          L12_3 = math
          L12_3 = L12_3.random
          L13_3 = 1
          L14_3 = 5
          L12_3 = L12_3(L13_3, L14_3)
          L11_3 = L11_3 + L12_3
          L12_3 = L6_2
          L12_3 = L12_3[L2_3]
          L12_3 = L12_3.y
          L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
          L2_3 = L2_3 + 1
        end
      end
    end
  end
  
  L2_2.dropRocketParts = L17_2
  L18_2 = {}
  L19_2 = "gibs_1"
  L20_2 = "gibs_2"
  L21_2 = "gibs_3"
  L22_2 = "gibs_4"
  L23_2 = "gibs_5"
  L24_2 = "gibs_6"
  L25_2 = "gibs_7"
  L26_2 = "gibs_8"
  L27_2 = "gibs_9"
  L18_2[1] = L19_2
  L18_2[2] = L20_2
  L18_2[3] = L21_2
  L18_2[4] = L22_2
  L18_2[5] = L23_2
  L18_2[6] = L24_2
  L18_2[7] = L25_2
  L18_2[8] = L26_2
  L18_2[9] = L27_2
  
  function L19_2(A0_3)
    local L1_3, L2_3
    L1_3 = L13_2
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = L13_2
      L1_3(L2_3)
      L1_3 = nil
      L13_2 = L1_3
    end
    if A0_3 then
      L1_3 = A0_3.removeSelf
      if L1_3 then
        L2_3 = A0_3
        L1_3 = A0_3.removeSelf
        L1_3(L2_3)
        A0_3 = nil
      end
    end
  end
  
  function L20_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3)
    local L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L7_3 = display
    L7_3 = L7_3.newImage
    L8_3 = A0_3
    L7_3 = L7_3(L8_3)
    L7_3.xScale = A1_3
    L7_3.yScale = A2_3
    L7_3.x = A3_3
    L7_3.y = A4_3
    L7_3.alpha = 1
    L8_3 = transition
    L8_3 = L8_3.to
    L9_3 = L7_3
    L10_3 = {}
    L10_3.time = 1000
    L10_3.delay = 5000
    
    function L11_3()
      local L0_4, L1_4
      L0_4 = L19_2
      L1_4 = L7_3
      L0_4(L1_4)
    end
    
    L10_3.onComplete = L11_3
    
    function L11_3()
      local L0_4, L1_4
      L0_4 = L19_2
      L1_4 = L7_3
      L0_4(L1_4)
    end
    
    L10_3.onCancel = L11_3
    L10_3.alpha = 0
    L8_3(L9_3, L10_3)
    L8_3 = remotePlayerCollisionFilter
    A6_3.filter = L8_3
    A6_3.density = 15
    A6_3.friction = 0.9
    A6_3.bounce = 0.4
    L8_3 = L2_1
    L8_3 = L8_3.addBody
    L9_3 = L7_3
    L10_3 = A6_3
    L8_3(L9_3, L10_3)
    L8_3 = L4_2
    L8_3 = L8_3.getLinearVelocityOnPlayer
    L8_3, L9_3 = L8_3()
    L11_3 = L7_3
    L10_3 = L7_3.setLinearVelocity
    L12_3 = L8_3
    L13_3 = L9_3
    L10_3(L11_3, L12_3, L13_3)
    if A5_3 then
      L11_3 = L7_3
      L10_3 = L7_3.applyForce
      L12_3 = math
      L12_3 = L12_3.random
      L13_3 = -10
      L14_3 = 10
      L12_3 = L12_3(L13_3, L14_3)
      L13_3 = -150
      L14_3 = L7_3.x
      L15_3 = math
      L15_3 = L15_3.random
      L16_3 = -5
      L17_3 = 5
      L15_3 = L15_3(L16_3, L17_3)
      L14_3 = L14_3 + L15_3
      L15_3 = L7_3.y
      L16_3 = math
      L16_3 = L16_3.random
      L17_3 = -5
      L18_3 = 5
      L16_3 = L16_3(L17_3, L18_3)
      L15_3 = L15_3 + L16_3
      L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
    end
    L10_3 = L7_2
    L11_3 = L7_2
    L11_3 = #L11_3
    L11_3 = L11_3 + 1
    L10_3[L11_3] = L7_3
    L10_3 = L3_2
    L11_3 = L10_3
    L10_3 = L10_3.insert
    L12_3 = L7_3
    L10_3(L11_3, L12_3)
  end
  
  function L21_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L2_3 = L9_2
    if not L2_3 then
      L2_3 = 1
      L3_3 = 5
      L4_3 = 1
      for L5_3 = L2_3, L3_3, L4_3 do
        L6_3 = L18_2
        L7_3 = math
        L7_3 = L7_3.random
        L8_3 = 1
        L9_3 = L18_2
        L9_3 = #L9_3
        L7_3 = L7_3(L8_3, L9_3)
        L6_3 = L6_3[L7_3]
        L7_3 = "images/game/powerups/"
        L8_3 = L6_3
        L9_3 = ".png"
        L7_3 = L7_3 .. L8_3 .. L9_3
        L8_3 = L20_2
        L9_3 = L7_3
        L10_3 = L4_1
        L11_3 = L4_1
        L12_3 = L4_2
        L12_3 = L12_3.x
        L13_3 = L4_2
        L13_3 = L13_3.y
        L14_3 = true
        L15_3 = L6_1
        L16_3 = L15_3
        L15_3 = L15_3.get
        L17_3 = L6_3
        L15_3, L16_3, L17_3 = L15_3(L16_3, L17_3)
        L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
      end
    end
  end
  
  L2_2.dropSawbladeGibs = L21_2
  
  function L22_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = L9_2
    if not L0_3 then
      L0_3 = L1_1
      L0_3 = L0_3.powerUpEffectImageSheetInfo
      L1_3 = L0_3
      L0_3 = L0_3.getFrameIndex
      L2_3 = "rocketPart1"
      L0_3 = L0_3(L1_3, L2_3)
      L1_3 = 1
      L2_3 = 3
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = L0_3 + L4_3
        L5_3 = L5_3 - 1
        L6_3 = L6_2
        L7_3 = L6_2
        L7_3 = #L7_3
        L7_3 = L7_3 + 1
        L8_3 = display
        L8_3 = L8_3.newImage
        L9_3 = L1_1
        L9_3 = L9_3.powerUpEffectImageSheet
        L10_3 = L5_3
        L8_3 = L8_3(L9_3, L10_3)
        L6_3[L7_3] = L8_3
        L6_3 = L6_2
        L7_3 = L6_2
        L7_3 = #L7_3
        L6_3 = L6_3[L7_3]
        L6_3.xScale = 0.5
        L6_3 = L6_2
        L7_3 = L6_2
        L7_3 = #L7_3
        L6_3 = L6_3[L7_3]
        L6_3.yScale = 0.5
        L6_3 = L2_1
        L6_3 = L6_3.addBody
        L7_3 = L6_2
        L8_3 = L6_2
        L8_3 = #L8_3
        L7_3 = L7_3[L8_3]
        L8_3 = {}
        L8_3.density = 0.6
        L8_3.friction = 1
        L8_3.radius = 10
        L8_3.bounce = 0.2
        L9_3 = powerUpFilter
        L8_3.filter = L9_3
        L6_3(L7_3, L8_3)
        L6_3 = L6_2
        L7_3 = L6_2
        L7_3 = #L7_3
        L6_3 = L6_3[L7_3]
        L7_3 = L4_2
        L7_3 = L7_3.x
        L6_3.x = L7_3
        L6_3 = L6_2
        L7_3 = L6_2
        L7_3 = #L7_3
        L6_3 = L6_3[L7_3]
        L7_3 = L4_2
        L7_3 = L7_3.y
        L6_3.y = L7_3
        L6_3 = L6_2
        L7_3 = L6_2
        L7_3 = #L7_3
        L6_3 = L6_3[L7_3]
        L6_3.alpha = 0
        L6_3 = L3_2
        L7_3 = L6_3
        L6_3 = L6_3.insert
        L8_3 = L6_2
        L9_3 = L6_2
        L9_3 = #L9_3
        L8_3 = L8_3[L9_3]
        L6_3(L7_3, L8_3)
      end
    end
  end
  
  L2_2.readyRocketParts = L22_2
  
  function L23_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = L9_2
    if not L2_3 then
      L2_3 = L5_2
      L3_3 = L5_2
      L3_3 = #L3_3
      L2_3 = L2_3[L3_3]
      L3_3 = L4_2
      L3_3 = L3_3.x
      L2_3.x = L3_3
      L2_3 = L5_2
      L3_3 = L5_2
      L3_3 = #L3_3
      L2_3 = L2_3[L3_3]
      L3_3 = L4_2
      L3_3 = L3_3.y
      L2_3.y = L3_3
      L2_3 = L5_2
      L3_3 = L5_2
      L3_3 = #L3_3
      L2_3 = L2_3[L3_3]
      L3_3 = L2_3
      L2_3 = L2_3.setLinearVelocity
      L4_3 = A0_3
      L5_3 = A1_3
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = L5_2
      L3_3 = L5_2
      L3_3 = #L3_3
      L2_3 = L2_3[L3_3]
      L2_3.alpha = 1
      L2_3 = L5_2
      L3_3 = L5_2
      L3_3 = #L3_3
      L2_3 = L2_3[L3_3]
      L3_3 = L2_3
      L2_3 = L2_3.toFront
      L2_3(L3_3)
    end
  end
  
  L2_2.dropSkull = L23_2
  
  function L24_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L9_2
    if not L0_3 then
      L0_3 = L11_2
      L0_3 = L0_3.sheetInfo
      L1_3 = L0_3
      L0_3 = L0_3.getFrameIndex
      L2_3 = "deaths/headSkull"
      L0_3 = L0_3(L1_3, L2_3)
      L1_3 = L5_2
      L2_3 = L5_2
      L2_3 = #L2_3
      L2_3 = L2_3 + 1
      L3_3 = display
      L3_3 = L3_3.newImage
      L4_3 = L11_2
      L4_3 = L4_3.sheet
      L5_3 = L0_3
      L3_3 = L3_3(L4_3, L5_3)
      L1_3[L2_3] = L3_3
      L1_3 = L5_2
      L2_3 = L5_2
      L2_3 = #L2_3
      L1_3 = L1_3[L2_3]
      L1_3.xScale = 0.5
      L1_3 = L5_2
      L2_3 = L5_2
      L2_3 = #L2_3
      L1_3 = L1_3[L2_3]
      L1_3.yScale = 0.5
      L1_3 = L2_1
      L1_3 = L1_3.addBody
      L2_3 = L5_2
      L3_3 = L5_2
      L3_3 = #L3_3
      L2_3 = L2_3[L3_3]
      L3_3 = {}
      L3_3.density = 0.6
      L3_3.friction = 1
      L3_3.radius = 10
      L3_3.bounce = 0.2
      L4_3 = powerUpFilter
      L3_3.filter = L4_3
      L1_3(L2_3, L3_3)
      L1_3 = L5_2
      L2_3 = L5_2
      L2_3 = #L2_3
      L1_3 = L1_3[L2_3]
      L2_3 = L4_2
      L2_3 = L2_3.x
      L1_3.x = L2_3
      L1_3 = L5_2
      L2_3 = L5_2
      L2_3 = #L2_3
      L1_3 = L1_3[L2_3]
      L2_3 = L4_2
      L2_3 = L2_3.y
      L1_3.y = L2_3
      L1_3 = L5_2
      L2_3 = L5_2
      L2_3 = #L2_3
      L1_3 = L1_3[L2_3]
      L1_3.alpha = 0
      L1_3 = L3_2
      L2_3 = L1_3
      L1_3 = L1_3.insert
      L3_3 = L5_2
      L4_3 = L5_2
      L4_3 = #L4_3
      L3_3 = L3_3[L4_3]
      L1_3(L2_3, L3_3)
    end
  end
  
  L2_2.readySkull = L24_2
  return L2_2
end

L0_1.newCorpsParts = L7_1
return L0_1
