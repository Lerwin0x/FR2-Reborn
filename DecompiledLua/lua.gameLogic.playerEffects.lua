local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = true

function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2
  L8_2 = {}
  L9_2 = L1_1
  L9_2 = L9_2.data
  L9_2 = L9_2.monsterInMemory
  L10_2 = A2_2.getMemoryIndex
  L10_2 = L10_2()
  L9_2 = L9_2[L10_2]
  L10_2 = math
  L10_2 = L10_2.deg
  L11_2 = math
  L11_2 = L11_2.atan2
  L12_2 = require
  L13_2 = "lua.gameLogic.ghostAnimation"
  L12_2 = L12_2(L13_2)
  L13_2 = nil
  L14_2 = {}
  L15_2 = 1
  L16_2 = #L14_2
  L16_2 = L16_2 + 1
  L17_2 = L12_2.create
  L17_2 = L17_2()
  L14_2[L16_2] = L17_2
  L16_2 = #L14_2
  L16_2 = L16_2 + 1
  L17_2 = L12_2.create
  L17_2 = L17_2()
  L14_2[L16_2] = L17_2
  
  function L16_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = L13_2
    if L3_3 then
      L3_3 = timer
      L3_3 = L3_3.cancel
      L4_3 = L13_2
      L3_3(L4_3)
      L3_3 = nil
      L13_2 = L3_3
    end
    
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = A3_2
      L0_4 = L0_4.startedClean
      if L0_4 then
        return
      end
      L0_4 = L14_2
      L1_4 = L15_2
      L0_4 = L0_4[L1_4]
      L1_4 = L0_4.show
      L2_4 = A0_2
      L3_4 = A0_3
      L4_4 = A1_3
      L1_4(L2_4, L3_4, L4_4)
      L1_4 = L15_2
      L1_4 = L1_4 + 1
      L15_2 = L1_4
      L1_4 = L15_2
      L2_4 = L14_2
      L2_4 = #L2_4
      if L1_4 > L2_4 then
        L1_4 = 1
        L15_2 = L1_4
      end
    end
    
    if A2_3 then
      L4_3 = timer
      L4_3 = L4_3.performWithDelay
      L5_3 = A2_3
      L6_3 = L3_3
      L7_3 = 1
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L13_2 = L4_3
    else
      L4_3 = L3_3
      L4_3()
    end
  end
  
  L8_2.showGhostDeath = L16_2
  L16_2 = nil
  L17_2 = display
  L17_2 = L17_2.newSprite
  L18_2 = L1_1
  L18_2 = L18_2.powerUpEffectImageSheet
  L19_2 = L1_1
  L19_2 = L19_2.data
  L19_2 = L19_2.animations
  L19_2 = L19_2.deathCloud
  L17_2 = L17_2(L18_2, L19_2)
  L17_2.xScale = 0.5
  L17_2.yScale = 0.5
  L17_2.alpha = 0
  
  function L18_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = L16_2
    if L3_3 then
      L3_3 = timer
      L3_3 = L3_3.cancel
      L4_3 = L16_2
      L3_3(L4_3)
      L3_3 = nil
      L16_2 = L3_3
    end
    
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = A3_2
      L0_4 = L0_4.startedClean
      if L0_4 then
        return
      end
      L0_4 = L17_2
      L1_4 = L0_4
      L0_4 = L0_4.toFront
      L0_4(L1_4)
      L0_4 = L17_2
      L0_4.alpha = 1
      L0_4 = L17_2
      L1_4 = A0_2
      L1_4 = L1_4.x
      L0_4.x = L1_4
      L0_4 = L17_2
      L1_4 = A0_2
      L1_4 = L1_4.y
      L0_4.y = L1_4
      L0_4 = L17_2
      L1_4 = L0_4
      L0_4 = L0_4.setSequence
      L2_4 = "normal"
      L0_4(L1_4, L2_4)
      L0_4 = L10_2
      L1_4 = L11_2
      L2_4 = A1_3
      L3_4 = A0_3
      L1_4, L2_4, L3_4 = L1_4(L2_4, L3_4)
      L0_4 = L0_4(L1_4, L2_4, L3_4)
      L1_4 = 90 + L0_4
      L2_4 = L17_2
      L2_4.rotation = L1_4
      L2_4 = L17_2
      L3_4 = L2_4
      L2_4 = L2_4.play
      L2_4(L3_4)
    end
    
    if A2_3 then
      L4_3 = timer
      L4_3 = L4_3.performWithDelay
      L5_3 = A2_3
      L6_3 = L3_3
      L7_3 = 1
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L16_2 = L4_3
    else
      L4_3 = L3_3
      L4_3()
    end
  end
  
  L8_2.showDeathCloudAnimation = L18_2
  
  function L18_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L17_2
      L1_3.alpha = 0
    end
  end
  
  L19_2 = display
  L19_2 = L19_2.newSprite
  L20_2 = L1_1
  L20_2 = L20_2.powerUpEffectImageSheet
  L21_2 = L1_1
  L21_2 = L21_2.data
  L21_2 = L21_2.animations
  L21_2 = L21_2.bloodEffect
  L19_2 = L19_2(L20_2, L21_2)
  L19_2.xScale = 0.5
  L19_2.yScale = 0.5
  L19_2.alpha = 0
  L19_2.y = -30
  
  function L20_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L19_2
      L1_3.alpha = 0
    end
  end
  
  function L21_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    
    function L0_3()
      local L0_4, L1_4
      L0_4 = A3_2
      L0_4 = L0_4.startedClean
      if L0_4 then
        return
      end
    end
    
    L1_3 = L1_1
    L1_3 = L1_3.powerUpEffectImageSheetInfo
    L2_3 = L1_3
    L1_3 = L1_3.getFrameIndex
    L3_3 = "cannonball"
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = display
    L2_3 = L2_3.newImage
    L3_3 = L1_1
    L3_3 = L3_3.powerUpEffectImageSheet
    L4_3 = L1_3
    L2_3 = L2_3(L3_3, L4_3)
    L2_3.xScale = 0.5
    L2_3.yScale = 0.5
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3.insert
    L5_3 = L2_3
    L3_3(L4_3, L5_3)
    L2_3.y = -400
    
    function L3_3(A0_4)
      local L1_4, L2_4
      if A0_4 then
        L1_4 = A3_2
        L1_4 = L1_4.startedClean
        if not L1_4 then
          L2_4 = A0_4
          L1_4 = A0_4.removeSelf
          L1_4(L2_4)
          A0_4 = nil
        end
      end
    end
    
    L4_3 = transition
    L4_3 = L4_3.to
    L5_3 = L2_3
    L6_3 = {}
    L6_3.time = 200
    L6_3.y = 0
    L6_3.onComplete = L3_3
    L4_3(L5_3, L6_3)
  end
  
  L8_2.createCannonBall = L21_2
  L21_2 = display
  L21_2 = L21_2.newSprite
  L22_2 = L1_1
  L22_2 = L22_2.powerUpEffectImageSheet
  L23_2 = L1_1
  L23_2 = L23_2.data
  L23_2 = L23_2.animations
  L23_2 = L23_2.rocketEffect
  L21_2 = L21_2(L22_2, L23_2)
  L21_2.xScale = 0.5
  L21_2.yScale = 0.5
  L21_2.alpha = 0
  
  function L22_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L21_2
      L1_3.alpha = 0
    end
  end
  
  function L23_2()
    local L0_3, L1_3, L2_3
    L0_3 = L21_2
    L0_3.alpha = 1
    L0_3 = L21_2
    L1_3 = L0_3
    L0_3 = L0_3.setSequence
    L2_3 = "normal"
    L0_3(L1_3, L2_3)
    L0_3 = L21_2
    L1_3 = L0_3
    L0_3 = L0_3.play
    L0_3(L1_3)
  end
  
  L8_2.playRocketDeathEffect = L23_2
  L23_2 = L9_2.sheetInfo
  L24_2 = L23_2
  L23_2 = L23_2.getFrameIndex
  L25_2 = "deaths/lightning1"
  L23_2 = L23_2(L24_2, L25_2)
  L24_2 = {}
  L24_2.name = "normal"
  L24_2.start = L23_2
  L24_2.count = 2
  L24_2.time = 300
  L24_2.loopCount = 2
  L25_2 = display
  L25_2 = L25_2.newSprite
  L26_2 = L9_2.sheet
  L27_2 = L24_2
  L25_2 = L25_2(L26_2, L27_2)
  L25_2.xScale = 0.5
  L25_2.yScale = 0.5
  L25_2.alpha = 0
  L26_2 = display
  L26_2 = L26_2.newSprite
  L27_2 = L1_1
  L27_2 = L27_2.powerUpEffectImageSheet
  L28_2 = L1_1
  L28_2 = L28_2.data
  L28_2 = L28_2.animations
  L28_2 = L28_2.lightningBackSet
  L26_2 = L26_2(L27_2, L28_2)
  L26_2.xScale = 0.5
  L26_2.yScale = 0.5
  L26_2.alpha = 0
  
  function L27_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L25_2
      L1_3.alpha = 0
      L1_3 = L26_2
      L1_3.alpha = 0
    end
  end
  
  function L28_2()
    local L0_3, L1_3, L2_3
    L0_3 = L25_2
    L0_3.alpha = 1
    L0_3 = L25_2
    L1_3 = L0_3
    L0_3 = L0_3.setSequence
    L2_3 = "normal"
    L0_3(L1_3, L2_3)
    L0_3 = L25_2
    L1_3 = A4_2
    L1_3 = L1_3.rotation
    L0_3.rotation = L1_3
    L0_3 = L25_2
    L1_3 = L0_3
    L0_3 = L0_3.play
    L0_3(L1_3)
    L0_3 = L26_2
    L0_3.alpha = 1
    L0_3 = L26_2
    L1_3 = L0_3
    L0_3 = L0_3.setSequence
    L2_3 = "normal"
    L0_3(L1_3, L2_3)
    L0_3 = L26_2
    L1_3 = A4_2
    L1_3 = L1_3.rotation
    L0_3.rotation = L1_3
    L0_3 = L26_2
    L1_3 = L0_3
    L0_3 = L0_3.play
    L0_3(L1_3)
  end
  
  L8_2.playLightningEffect = L28_2
  L28_2 = display
  L28_2 = L28_2.newSprite
  L29_2 = L1_1
  L29_2 = L29_2.powerUpEffectImageSheet
  L30_2 = L1_1
  L30_2 = L30_2.data
  L30_2 = L30_2.animations
  L30_2 = L30_2.lightningBoltSet
  L28_2 = L28_2(L29_2, L30_2)
  L28_2.xScale = 0.5
  L28_2.yScale = 0.5
  L28_2.alpha = 0
  L30_2 = A5_2
  L29_2 = A5_2.insert
  L31_2 = L28_2
  L29_2(L30_2, L31_2)
  
  function L29_2()
    local L0_3, L1_3, L2_3
    L0_3 = L28_2
    L0_3.alpha = 1
    L0_3 = L28_2
    L1_3 = A0_2
    L1_3 = L1_3.x
    L1_3 = L1_3 + 10
    L0_3.x = L1_3
    L0_3 = L28_2
    L1_3 = A0_2
    L1_3 = L1_3.y
    L1_3 = L1_3 - 110
    L0_3.y = L1_3
    L0_3 = L28_2
    L1_3 = L0_3
    L0_3 = L0_3.setSequence
    L2_3 = "normal"
    L0_3(L1_3, L2_3)
    L0_3 = L28_2
    L1_3 = L0_3
    L0_3 = L0_3.play
    L0_3(L1_3)
  end
  
  L8_2.playLightningStrike = L29_2
  
  function L29_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L28_2
      L1_3.alpha = 0
    end
  end
  
  L30_2 = nil
  L31_2 = nil
  L32_2 = nil
  L33_2 = nil
  L34_2 = A0_2.mainPlayer
  if L34_2 then
    L34_2 = L1_1
    L34_2 = L34_2.powerUpEffectImageSheetInfo
    L35_2 = L34_2
    L34_2 = L34_2.getFrameIndex
    L36_2 = "lightningCloudBottom"
    L34_2 = L34_2(L35_2, L36_2)
    L35_2 = L1_1
    L35_2 = L35_2.powerUpEffectImageSheetInfo
    L36_2 = L35_2
    L35_2 = L35_2.getFrameIndex
    L37_2 = "lightningCloudTop"
    L35_2 = L35_2(L36_2, L37_2)
    L36_2 = display
    L36_2 = L36_2.newImage
    L37_2 = L1_1
    L37_2 = L37_2.powerUpEffectImageSheet
    L38_2 = L34_2
    L36_2 = L36_2(L37_2, L38_2)
    L31_2 = L36_2
    L31_2.xScale = 0.5
    L31_2.yScale = 0.5
    L31_2.anchorX = 1
    L31_2.anchorY = 0
    L36_2 = display
    L36_2 = L36_2.contentWidth
    L31_2.x = L36_2
    L31_2.y = 0
    L31_2.alpha = 0
    L36_2 = display
    L36_2 = L36_2.newImage
    L37_2 = L1_1
    L37_2 = L37_2.powerUpEffectImageSheet
    L38_2 = L35_2
    L36_2 = L36_2(L37_2, L38_2)
    L30_2 = L36_2
    L30_2.xScale = 0.5
    L30_2.yScale = 0.5
    L30_2.anchorX = 0
    L30_2.anchorY = 0
    L30_2.x = 0
    L30_2.y = 0
    L30_2.alpha = 0
    L36_2 = display
    L36_2 = L36_2.newRect
    L37_2 = 0
    L38_2 = 0
    L39_2 = 480
    L40_2 = 320
    L36_2 = L36_2(L37_2, L38_2, L39_2, L40_2)
    L32_2 = L36_2
    L36_2 = {}
    L36_2.type = "gradient"
    L37_2 = {}
    L38_2 = 0
    L39_2 = 0
    L40_2 = 0
    L37_2[1] = L38_2
    L37_2[2] = L39_2
    L37_2[3] = L40_2
    L36_2.color1 = L37_2
    L37_2 = {}
    L38_2 = 0.5
    L39_2 = 0.5
    L40_2 = 0.5
    L41_2 = 0
    L37_2[1] = L38_2
    L37_2[2] = L39_2
    L37_2[3] = L40_2
    L37_2[4] = L41_2
    L36_2.color2 = L37_2
    L36_2.direction = "down"
    L37_2 = display
    L37_2 = L37_2.contentWidth
    L37_2 = L37_2 * 0.5
    L32_2.x = L37_2
    L37_2 = display
    L37_2 = L37_2.contentHeight
    L37_2 = L37_2 * 0.5
    L32_2.y = L37_2
    L32_2.fill = L36_2
    L32_2.alpha = 0
    L38_2 = A6_2
    L37_2 = A6_2.insert
    L39_2 = L32_2
    L37_2(L38_2, L39_2)
    L38_2 = A6_2
    L37_2 = A6_2.insert
    L39_2 = L31_2
    L37_2(L38_2, L39_2)
    L38_2 = A6_2
    L37_2 = A6_2.insert
    L39_2 = L30_2
    L37_2(L38_2, L39_2)
  end
  
  function L34_2()
    local L0_3, L1_3
    L0_3 = L31_2
    L0_3.alpha = 0
    L0_3 = L30_2
    L0_3.alpha = 0
    L0_3 = L31_2
    L1_3 = display
    L1_3 = L1_3.contentWidth
    L0_3.x = L1_3
    L0_3 = L30_2
    L0_3.x = 0
  end
  
  function L35_2()
    local L0_3, L1_3, L2_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L32_2
    L2_3 = {}
    L2_3.delay = 800
    L2_3.time = 1200
    L2_3.alpha = 0
    L2_3.tag = "lightningCloud"
    L0_3(L1_3, L2_3)
  end
  
  function L36_2()
    local L0_3, L1_3, L2_3
    L0_3 = L31_2
    L0_3.alpha = 1
    L0_3 = L30_2
    L0_3.alpha = 1
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L31_2
    L2_3 = {}
    L2_3.x = 530
    L2_3.time = 1500
    L2_3.tag = "lightningCloud"
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L30_2
    L2_3 = {}
    L2_3.x = -50
    L2_3.time = 1500
    L2_3.tag = "lightningCloud"
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L31_2
    L2_3 = {}
    L2_3.delay = 1200
    L2_3.time = 500
    L2_3.alpha = 0
    L2_3.tag = "lightningCloud"
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L30_2
    L2_3 = {}
    L2_3.delay = 1200
    L2_3.time = 500
    L2_3.alpha = 0
    L2_3.tag = "lightningCloud"
    L0_3(L1_3, L2_3)
  end
  
  function L37_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L0_3 = L0_3.mainPlayer
    if L0_3 then
      L0_3 = L33_2
      if L0_3 then
        L0_3 = timer
        L0_3 = L0_3.cancel
        L1_3 = L33_2
        L0_3(L1_3)
        L0_3 = nil
        L33_2 = L0_3
      end
      L0_3 = L34_2
      L0_3()
      L0_3 = transition
      L0_3 = L0_3.cancel
      L1_3 = "lightningCloud"
      L0_3(L1_3)
      L0_3 = L32_2
      L0_3.alpha = 0.7
      L0_3 = L35_2
      L0_3()
      L0_3 = L36_2
      L0_3()
      L0_3 = timer
      L0_3 = L0_3.performWithDelay
      L1_3 = 2200
      L2_3 = L34_2
      L3_3 = 1
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      L33_2 = L0_3
    end
  end
  
  L8_2.showCloud = L37_2
  L37_2 = display
  L37_2 = L37_2.newSprite
  L38_2 = L1_1
  L38_2 = L38_2.powerUpImageSheet
  L39_2 = L1_1
  L39_2 = L39_2.data
  L39_2 = L39_2.animations
  L39_2 = L39_2.teleportEffect
  L37_2 = L37_2(L38_2, L39_2)
  L37_2.xScale = 0.5
  L37_2.yScale = 0.5
  L37_2.alpha = 0
  
  function L38_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L37_2
      L1_3 = L1_3.animationType
      if L1_3 == 1 then
        L1_3 = L37_2
        L2_3 = L1_3
        L1_3 = L1_3.setSequence
        L3_3 = "stop"
        L1_3(L2_3, L3_3)
        L1_3 = L37_2
        L1_3.animationType = 2
        L1_3 = L37_2
        L2_3 = L1_3
        L1_3 = L1_3.play
        L1_3(L2_3)
        L1_3 = A0_2
        L2_3 = L37_2
        L2_3 = L2_3.newX
        L1_3.x = L2_3
        L1_3 = A0_2
        L2_3 = L37_2
        L2_3 = L2_3.newY
        L1_3.y = L2_3
        L1_3 = A0_2
        L1_3 = L1_3.setLinearVelocityOnPlayer
        L2_3 = 0
        L3_3 = 0
        L1_3(L2_3, L3_3)
    end
    else
      L1_3 = A0_3.phase
      if L1_3 == "ended" then
        L1_3 = L37_2
        L1_3 = L1_3.animationType
        if L1_3 == 2 then
          L1_3 = L37_2
          L1_3.alpha = 0
          L1_3 = L37_2
          L2_3 = L1_3
          L1_3 = L1_3.pause
          L1_3(L2_3)
        end
      end
    end
  end
  
  function L39_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = L37_2
    L2_3.alpha = 1
    L2_3 = L37_2
    L3_3 = L2_3
    L2_3 = L2_3.setSequence
    L4_3 = "start"
    L2_3(L3_3, L4_3)
    L2_3 = L37_2
    L2_3.animationType = 1
    L2_3 = L37_2
    L2_3.newX = A0_3
    L2_3 = L37_2
    L2_3.newY = A1_3
    L2_3 = L37_2
    L3_3 = L2_3
    L2_3 = L2_3.play
    L2_3(L3_3)
  end
  
  L8_2.playTeleportPowerUp = L39_2
  L39_2 = display
  L39_2 = L39_2.newSprite
  L40_2 = L1_1
  L40_2 = L40_2.powerUpEffectImageSheet
  L41_2 = L1_1
  L41_2 = L41_2.data
  L41_2 = L41_2.animations
  L41_2 = L41_2.magnetEffect
  L39_2 = L39_2(L40_2, L41_2)
  L39_2.xScale = 0.5
  L39_2.yScale = 0.5
  L39_2.alpha = 0
  
  function L40_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L39_2
      L1_3.alpha = 0
      L1_3 = L39_2
      L2_3 = L1_3
      L1_3 = L1_3.pause
      L1_3(L2_3)
    end
  end
  
  function L41_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = L39_2
      L1_3.x = -40
      L1_3 = L39_2
      L2_3 = math
      L2_3 = L2_3.abs
      L3_3 = L39_2
      L3_3 = L3_3.xScale
      L2_3 = L2_3(L3_3)
      L1_3.xScale = L2_3
    else
      L1_3 = L39_2
      L1_3.x = 40
      L1_3 = L39_2
      L2_3 = math
      L2_3 = L2_3.abs
      L3_3 = L39_2
      L3_3 = L3_3.xScale
      L2_3 = L2_3(L3_3)
      L2_3 = -L2_3
      L1_3.xScale = L2_3
    end
    L1_3 = L39_2
    L1_3.alpha = 1
    L1_3 = L39_2
    L2_3 = L1_3
    L1_3 = L1_3.setSequence
    L3_3 = "normal"
    L1_3(L2_3, L3_3)
    L1_3 = L39_2
    L2_3 = L1_3
    L1_3 = L1_3.play
    L1_3(L2_3)
  end
  
  L8_2.playMagnetEffect = L41_2
  L41_2 = 1501
  if A7_2 then
    L42_2 = 1
    L43_2 = #A7_2
    L44_2 = 1
    for L45_2 = L42_2, L43_2, L44_2 do
      L46_2 = L1_1
      L46_2 = L46_2.storeConfig
      L46_2 = L46_2.getItemCategory
      L47_2 = tonumber
      L48_2 = A7_2[L45_2]
      L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L47_2(L48_2)
      L46_2 = L46_2(L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
      if L46_2 == "shield" then
        L46_2 = L1_1
        L46_2 = L46_2.storeConfig
        L46_2 = L46_2.canDrawItem
        L47_2 = tonumber
        L48_2 = A7_2[L45_2]
        L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L47_2(L48_2)
        L46_2 = L46_2(L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
        if L46_2 then
          L41_2 = A7_2[L45_2]
        end
      end
    end
  end
  L42_2 = L1_1
  L42_2 = L42_2.powerUpImageSheetInfo
  L43_2 = L42_2
  L42_2 = L42_2.getFrameIndex
  L44_2 = ""
  L45_2 = L41_2
  L46_2 = "_2"
  L44_2 = L44_2 .. L45_2 .. L46_2
  L42_2 = L42_2(L43_2, L44_2)
  L43_2 = L1_1
  L43_2 = L43_2.powerUpImageSheetInfo
  L44_2 = L43_2
  L43_2 = L43_2.getFrameIndex
  L45_2 = ""
  L46_2 = L41_2
  L45_2 = L45_2 .. L46_2
  L43_2 = L43_2(L44_2, L45_2)
  L44_2 = display
  L44_2 = L44_2.newImage
  L45_2 = L1_1
  L45_2 = L45_2.powerUpImageSheet
  L46_2 = L43_2
  L44_2 = L44_2(L45_2, L46_2)
  L44_2.xScale = 0.5
  L44_2.yScale = 0.5
  L44_2.y = -10
  L44_2.alpha = 0
  L45_2 = nil
  L46_2 = nil
  L47_2 = display
  L47_2 = L47_2.newImage
  L48_2 = L1_1
  L48_2 = L48_2.powerUpImageSheet
  L49_2 = L42_2
  L47_2 = L47_2(L48_2, L49_2)
  L47_2.xScale = 0.4
  L47_2.yScale = 0.4
  L47_2.y = -10
  L47_2.alpha = 0
  L48_2 = graphics
  L48_2 = L48_2.newMask
  L49_2 = "images/game/powerups/mask.png"
  L48_2 = L48_2(L49_2)
  L50_2 = L47_2
  L49_2 = L47_2.setMask
  L51_2 = L48_2
  L49_2(L50_2, L51_2)
  L47_2.maskScaleX = 2
  L47_2.maskScaleY = 2
  L47_2.maskX = -110
  L47_2.maskY = -110
  
  function L49_2()
    local L0_3, L1_3
    L0_3 = transition
    L0_3 = L0_3.cancel
    L1_3 = L44_2
    L0_3(L1_3)
    L0_3 = transition
    L0_3 = L0_3.cancel
    L1_3 = L47_2
    L0_3(L1_3)
    L0_3 = A3_2
    L0_3.shieldActive = false
    L0_3 = L44_2
    L0_3.alpha = 0
    L0_3 = L47_2
    L0_3.alpha = 0
  end
  
  L8_2.hidePowerUpShield = L49_2
  
  function L45_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L44_2
    L2_3 = {}
    L2_3.time = 200
    L2_3.xScale = 0.5
    L2_3.yScale = 0.5
    L3_3 = L46_2
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  function L46_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L44_2
    L2_3 = {}
    L2_3.time = 200
    L2_3.xScale = 0.45
    L2_3.yScale = 0.55
    L3_3 = L45_2
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  function L49_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A3_2
    L0_3 = L0_3.startedClean
    if not L0_3 then
      L0_3 = 0.45
      L1_3 = 0.25
      
      function L2_3()
        local L0_4, L1_4
        L0_4 = L0_3
        if L0_4 < 0.5 then
          L0_4 = 0.5
          L0_3 = L0_4
          L0_4 = 1
          L1_3 = L0_4
        else
          L0_4 = 0.45
          L0_3 = L0_4
          L0_4 = 0.25
          L1_3 = L0_4
        end
      end
      
      function L3_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = transition
        L0_4 = L0_4.to
        L1_4 = L44_2
        L2_4 = {}
        L2_4.time = 200
        L3_4 = L1_3
        L2_4.alpha = L3_4
        L3_4 = L0_3
        L2_4.xScale = L3_4
        L3_4 = L0_3
        L2_4.yScale = L3_4
        L3_4 = L2_3
        L2_4.onRepeat = L3_4
        L3_4 = L8_2
        L3_4 = L3_4.hidePowerUpShield
        L2_4.onComplete = L3_4
        L2_4.iterations = 4
        L0_4(L1_4, L2_4)
      end
      
      L4_3 = A0_2
      L4_3 = L4_3.playSound
      if L4_3 then
        L4_3 = A0_2
        L4_3 = L4_3.playSound
        L5_3 = "invul_end"
        L4_3(L5_3)
      end
      L4_3 = L3_3
      L4_3()
    end
  end
  
  function L50_2()
    local L0_3, L1_3, L2_3
    L0_3 = L44_2
    L0_3.animationType = 1
    L0_3 = L47_2
    L0_3.maskX = -110
    L0_3 = L47_2
    L0_3.maskY = -110
    L0_3 = L47_2
    L0_3.alpha = 1
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L47_2
    L2_3 = {}
    L2_3.time = 400
    L2_3.maskX = 110
    L2_3.maskY = 110
    L0_3(L1_3, L2_3)
  end
  
  L8_2.playShieldAbsorb = L50_2
  
  function L50_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.cancel
    L1_3 = L44_2
    L0_3(L1_3)
    L0_3 = L44_2
    L0_3.animationType = 1
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L44_2
    L2_3 = {}
    L2_3.time = 3200
    L3_3 = L49_2
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
    L0_3 = L44_2
    L0_3.xScale = 0.01
    L0_3 = L44_2
    L0_3.yScale = 0.01
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L44_2
    L2_3 = {}
    L2_3.time = 300
    L2_3.alpha = 1
    L2_3.xScale = 0.5
    L2_3.yScale = 0.5
    L3_3 = L45_2
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L8_2.playPowerUpShieldStart = L50_2
  
  function L50_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A3_2
    L0_3 = L0_3.startedClean
    if L0_3 then
      return
    end
    L0_3 = 1
    L1_3 = L14_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L14_2
      L4_3 = L4_3[L3_3]
      if L4_3 then
        L4_3 = L14_2
        L4_3 = L4_3[L3_3]
        L4_3 = L4_3.update
        L4_3()
      end
    end
  end
  
  L8_2.update = L50_2
  L50_2 = nil
  L51_2 = nil
  L52_2 = nil
  L53_2 = nil
  L54_2 = nil
  L55_2 = A0_2.mainPlayer
  if L55_2 then
    L55_2 = display
    L55_2 = L55_2.newImageRect
    L56_2 = "images/game/powerups/screen_effect1.png"
    L57_2 = 233
    L58_2 = 155
    L55_2 = L55_2(L56_2, L57_2, L58_2)
    L50_2 = L55_2
    L50_2.anchorX = 1
    L50_2.anchorY = 0
    L50_2.x = 0
    L55_2 = display
    L55_2 = L55_2.contentHeight
    L50_2.y = L55_2
    L50_2.xScale = -1
    L50_2.yScale = -1
    L50_2.alpha = 0
    L56_2 = A6_2
    L55_2 = A6_2.insert
    L57_2 = L50_2
    L55_2(L56_2, L57_2)
    L55_2 = display
    L55_2 = L55_2.newImageRect
    L56_2 = "images/game/powerups/screen_effect1.png"
    L57_2 = 233
    L58_2 = 155
    L55_2 = L55_2(L56_2, L57_2, L58_2)
    L53_2 = L55_2
    L53_2.anchorX = 1
    L53_2.anchorY = 0
    L55_2 = display
    L55_2 = L55_2.contentWidth
    L53_2.x = L55_2
    L55_2 = display
    L55_2 = L55_2.contentHeight
    L53_2.y = L55_2
    L53_2.yScale = -1
    L53_2.alpha = 0
    L56_2 = A6_2
    L55_2 = A6_2.insert
    L57_2 = L53_2
    L55_2(L56_2, L57_2)
    L55_2 = display
    L55_2 = L55_2.newImageRect
    L56_2 = "images/game/powerups/screen_effect1.png"
    L57_2 = 233
    L58_2 = 155
    L55_2 = L55_2(L56_2, L57_2, L58_2)
    L51_2 = L55_2
    L51_2.anchorX = 1
    L51_2.anchorY = 0
    L51_2.x = 0
    L51_2.y = 0
    L51_2.xScale = -1
    L51_2.alpha = 0
    L56_2 = A6_2
    L55_2 = A6_2.insert
    L57_2 = L51_2
    L55_2(L56_2, L57_2)
    L55_2 = display
    L55_2 = L55_2.newImageRect
    L56_2 = "images/game/powerups/screen_effect1.png"
    L57_2 = 233
    L58_2 = 155
    L55_2 = L55_2(L56_2, L57_2, L58_2)
    L52_2 = L55_2
    L52_2.anchorX = 1
    L52_2.anchorY = 0
    L55_2 = display
    L55_2 = L55_2.contentWidth
    L52_2.x = L55_2
    L52_2.y = 0
    L52_2.alpha = 0
    L56_2 = A6_2
    L55_2 = A6_2.insert
    L57_2 = L52_2
    L55_2(L56_2, L57_2)
  end
  
  function L55_2()
    local L0_3, L1_3, L2_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L50_2
    L2_3 = {}
    L2_3.time = 300
    L2_3.alpha = 0
    L2_3.tag = "blood"
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L53_2
    L2_3 = {}
    L2_3.time = 300
    L2_3.alpha = 0
    L2_3.tag = "blood"
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L52_2
    L2_3 = {}
    L2_3.time = 300
    L2_3.alpha = 0
    L2_3.tag = "blood"
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L51_2
    L2_3 = {}
    L2_3.time = 300
    L2_3.alpha = 0
    L2_3.tag = "blood"
    L0_3(L1_3, L2_3)
  end
  
  function L56_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L54_2
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = L54_2
      L1_3(L2_3)
      L1_3 = nil
      L54_2 = L1_3
    end
    
    function L1_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L54_2
      if L0_4 then
        L0_4 = timer
        L0_4 = L0_4.cancel
        L1_4 = L54_2
        L0_4(L1_4)
        L0_4 = nil
        L54_2 = L0_4
      end
      L0_4 = transition
      L0_4 = L0_4.to
      L1_4 = L50_2
      L2_4 = {}
      L2_4.time = 100
      L2_4.alpha = 1
      L2_4.tag = "blood"
      L0_4(L1_4, L2_4)
      L0_4 = transition
      L0_4 = L0_4.to
      L1_4 = L53_2
      L2_4 = {}
      L2_4.time = 100
      L2_4.alpha = 1
      L2_4.tag = "blood"
      L0_4(L1_4, L2_4)
      L0_4 = transition
      L0_4 = L0_4.to
      L1_4 = L52_2
      L2_4 = {}
      L2_4.time = 100
      L2_4.alpha = 1
      L2_4.tag = "blood"
      L0_4(L1_4, L2_4)
      L0_4 = transition
      L0_4 = L0_4.to
      L1_4 = L51_2
      L2_4 = {}
      L2_4.time = 100
      L2_4.alpha = 1
      L2_4.tag = "blood"
      L0_4(L1_4, L2_4)
      L0_4 = timer
      L0_4 = L0_4.performWithDelay
      L1_4 = 500
      L2_4 = L55_2
      L3_4 = 1
      L0_4 = L0_4(L1_4, L2_4, L3_4)
      L54_2 = L0_4
    end
    
    if A0_3 then
      L2_3 = timer
      L2_3 = L2_3.performWithDelay
      L3_3 = A0_3
      L4_3 = L1_3
      L5_3 = 1
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L54_2 = L2_3
    else
      L2_3 = L1_3
      L2_3()
    end
  end
  
  function L57_2(A0_3)
    local L1_3
    L1_3 = A0_2
    L1_3 = L1_3.mainPlayer
    if L1_3 or A0_3 then
      L1_3 = L56_2
      L1_3()
    end
  end
  
  L8_2.showScreenDeathEffect = L57_2
  L57_2 = display
  L57_2 = L57_2.newSprite
  L58_2 = L1_1
  L58_2 = L58_2.powerUpEffectImageSheet
  L59_2 = L1_1
  L59_2 = L59_2.data
  L59_2 = L59_2.animations
  L59_2 = L59_2.jumpEffect
  L57_2 = L57_2(L58_2, L59_2)
  L57_2.xScale = 0.25
  L57_2.yScale = 0.25
  L57_2.alpha = 0
  
  function L58_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L57_2
      L1_3.alpha = 0
      L1_3 = L57_2
      L2_3 = L1_3
      L1_3 = L1_3.pause
      L1_3(L2_3)
    end
  end
  
  function L59_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3
    L4_3 = L57_2
    L4_3.alpha = 1
    L4_3 = L57_2
    L4_3.anchorX = A3_3
    L4_3 = L57_2
    L4_3.anchorY = 0.5
    L4_3 = L57_2
    L4_3.rotation = A2_3
    L4_3 = L57_2
    L4_3.x = A0_3
    L4_3 = L57_2
    L4_3.y = A1_3
    L4_3 = L57_2
    L5_3 = L4_3
    L4_3 = L4_3.setSequence
    L6_3 = "normal"
    L4_3(L5_3, L6_3)
    L4_3 = L57_2
    L5_3 = L4_3
    L4_3 = L4_3.play
    L4_3(L5_3)
  end
  
  L8_2.playJumpEffect = L59_2
  L59_2 = display
  L59_2 = L59_2.newSprite
  L60_2 = L1_1
  L60_2 = L60_2.powerUpEffectImageSheet
  L61_2 = L1_1
  L61_2 = L61_2.data
  L61_2 = L61_2.animations
  L61_2 = L61_2.landEffect
  L59_2 = L59_2(L60_2, L61_2)
  L59_2.xScale = 0.25
  L59_2.yScale = 0.25
  L59_2.alpha = 0
  
  function L60_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L59_2
      L1_3.alpha = 0
      L1_3 = L59_2
      L2_3 = L1_3
      L1_3 = L1_3.pause
      L1_3(L2_3)
    end
  end
  
  function L61_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    L3_3 = L59_2
    L3_3.alpha = 1
    L3_3 = L59_2
    L3_3.anchorX = 0
    L3_3 = L59_2
    L3_3.anchorY = 0.5
    L3_3 = L59_2
    L3_3.rotation = A2_3
    L3_3 = L59_2
    L3_3.x = A0_3
    L3_3 = L59_2
    L3_3.y = A1_3
    L3_3 = L59_2
    L4_3 = L3_3
    L3_3 = L3_3.setSequence
    L5_3 = "normal"
    L3_3(L4_3, L5_3)
    L3_3 = L59_2
    L4_3 = L3_3
    L3_3 = L3_3.play
    L3_3(L4_3)
  end
  
  L8_2.playLandEffect = L61_2
  L61_2 = display
  L61_2 = L61_2.newSprite
  L62_2 = L1_1
  L62_2 = L62_2.powerUpEffectImageSheet
  L63_2 = L1_1
  L63_2 = L63_2.data
  L63_2 = L63_2.animations
  L63_2 = L63_2.markBlood
  L61_2 = L61_2(L62_2, L63_2)
  L61_2.xScale = 0.25
  L61_2.yScale = 0.25
  L61_2.alpha = 0
  
  function L62_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L61_2
      L1_3.alpha = 0
      L1_3 = L61_2
      L2_3 = L1_3
      L1_3 = L1_3.pause
      L1_3(L2_3)
    end
  end
  
  function L63_2()
    local L0_3, L1_3, L2_3
    L0_3 = L61_2
    L0_3.alpha = 1
    L0_3 = L61_2
    L1_3 = L0_3
    L0_3 = L0_3.setSequence
    L2_3 = "normal"
    L0_3(L1_3, L2_3)
    L0_3 = L61_2
    L1_3 = L0_3
    L0_3 = L0_3.play
    L0_3(L1_3)
  end
  
  L8_2.playMarkBloodEffect = L63_2
  
  function L63_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L19_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "sprite"
    L3_3 = L20_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L21_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "sprite"
    L3_3 = L22_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L25_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "sprite"
    L3_3 = L27_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L28_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "sprite"
    L3_3 = L29_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L37_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "sprite"
    L3_3 = L38_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L39_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "sprite"
    L3_3 = L40_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L57_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "sprite"
    L3_3 = L58_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L59_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "sprite"
    L3_3 = L60_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L61_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "sprite"
    L3_3 = L62_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L17_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "sprite"
    L3_3 = L18_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L64_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L33_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L33_2
      L0_3(L1_3)
      L0_3 = nil
      L33_2 = L0_3
    end
    L0_3 = L13_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L13_2
      L0_3(L1_3)
      L0_3 = nil
      L13_2 = L0_3
    end
    L0_3 = L16_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L16_2
      L0_3(L1_3)
      L0_3 = nil
      L16_2 = L0_3
    end
    L0_3 = L54_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L54_2
      L0_3(L1_3)
      L0_3 = nil
      L54_2 = L0_3
    end
    L0_3 = 1
    L1_3 = L14_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L14_2
      L4_3 = L4_3[L3_3]
      L4_3 = L4_3.clean
      L4_3()
    end
    L0_3 = transition
    L0_3 = L0_3.cancel
    L1_3 = "blood"
    L0_3(L1_3)
    L0_3 = L63_2
    L0_3()
  end
  
  L8_2.clean = L64_2
  
  function L64_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L19_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "sprite"
    L3_3 = L20_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L21_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "sprite"
    L3_3 = L22_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L25_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "sprite"
    L3_3 = L27_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L28_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "sprite"
    L3_3 = L29_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L37_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "sprite"
    L3_3 = L38_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L39_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "sprite"
    L3_3 = L40_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L57_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "sprite"
    L3_3 = L58_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L59_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "sprite"
    L3_3 = L60_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L61_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "sprite"
    L3_3 = L62_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L17_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "sprite"
    L3_3 = L18_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L8_2.addEventListeners = L64_2
  
  function L64_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L19_2
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L21_2
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L26_2
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L25_2
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L37_2
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L39_2
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L44_2
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L47_2
    L0_3(L1_3, L2_3)
    L0_3 = A5_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L57_2
    L0_3(L1_3, L2_3)
    L0_3 = A5_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L59_2
    L0_3(L1_3, L2_3)
    L0_3 = A5_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L17_2
    L0_3(L1_3, L2_3)
    L0_3 = 1
    L1_3 = L14_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = A5_2
      L5_3 = L4_3
      L4_3 = L4_3.insert
      L6_3 = L14_2
      L6_3 = L6_3[L3_3]
      L4_3(L5_3, L6_3)
    end
  end
  
  L8_2.updateDisplayGroup = L64_2
  return L8_2
end

L0_1.createEffects = L3_1
return L0_1
