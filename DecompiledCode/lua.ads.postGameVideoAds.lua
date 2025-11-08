local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = require
L2_1 = "lua.ads.videoModule"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)

function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L10_2 = display
  L10_2 = L10_2.newGroup
  L10_2 = L10_2()
  L11_2 = nil
  L12_2 = nil
  L13_2 = nil
  L14_2 = false
  L15_2 = nil
  L16_2 = nil
  L17_2 = require
  L18_2 = "lua.ads.rewardedVideoPoolInfo"
  L17_2 = L17_2(L18_2)
  L18_2 = L17_2.init
  L18_2 = L18_2()
  
  function L19_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L18_2
    L0_3 = L0_3.getChestRewardData
    L0_3 = L0_3()
    L1_3 = "x2"
    if L0_3 then
      L2_3 = L0_3.type
      if L2_3 == "soft" then
        L2_3 = "x"
        L3_3 = L0_3.multiplier
        L1_3 = L2_3 .. L3_3
      else
        L2_3 = L0_3.type
        if L2_3 == "hard" then
          L1_3 = "Gem"
        else
          L2_3 = L0_3.type
          if L2_3 == "spin" then
            L1_3 = "Spin"
          end
        end
      end
    end
    return L1_3
  end
  
  function L20_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L10_2
    if L0_3 then
      L0_3 = L16_2
      if not L0_3 then
        L0_3 = L19_2
        L0_3 = L0_3()
        L1_3 = L2_1
        L1_3 = L1_3.analytics
        L1_3 = L1_3.newEvent
        L2_3 = "design"
        L3_3 = {}
        L4_3 = "rewardedChests:"
        L5_3 = L0_3
        L6_3 = ":opened"
        L4_3 = L4_3 .. L5_3 .. L6_3
        L3_3.event_id = L4_3
        L4_3 = A4_2
        L3_3.value = L4_3
        L4_3 = "videos left: "
        L5_3 = L2_1
        L5_3 = L5_3.videosLeft
        if not L5_3 then
          L5_3 = "unknown"
        end
        L4_3 = L4_3 .. L5_3
        L3_3.area = L4_3
        L1_3(L2_3, L3_3)
        L1_3 = "images/gui/postgame/adCoins/chestOpen_"
        L2_3 = L0_3
        L3_3 = ".png"
        L1_3 = L1_3 .. L2_3 .. L3_3
        L2_3 = display
        L2_3 = L2_3.newImageRect
        L3_3 = L1_3
        L4_3 = 102
        L5_3 = 78
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        L11_2 = L2_3
        L2_3 = L10_2
        L2_3.x = 400
        L2_3 = L10_2
        L2_3.y = 216
        L2_3 = L10_2
        L2_3.xScale = 1
        L2_3 = L10_2
        L2_3.yScale = 1
        L2_3 = L10_2
        L3_3 = L2_3
        L2_3 = L2_3.insert
        L4_3 = L11_2
        L2_3(L3_3, L4_3)
      end
    end
  end
  
  function L21_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L10_2
    if L0_3 then
      L0_3 = L6_2
      if L0_3 then
        L0_3 = timer
        L0_3 = L0_3.cancel
        L1_3 = L6_2
        L0_3(L1_3)
        L0_3 = nil
        L6_2 = L0_3
      end
      L0_3 = L11_2
      if L0_3 then
        L0_3 = L11_2
        L1_3 = L0_3
        L0_3 = L0_3.removeEventListener
        L2_3 = "touch"
        L3_3 = L11_2
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = L11_2
        L1_3 = L0_3
        L0_3 = L0_3.removeSelf
        L0_3(L1_3)
        L0_3 = nil
        L11_2 = L0_3
      end
      L0_3 = L13_2
      if L0_3 then
        L0_3 = L13_2
        L1_3 = L0_3
        L0_3 = L0_3.removeSelf
        L0_3(L1_3)
        L0_3 = nil
        L13_2 = L0_3
      end
      L0_3 = L12_2
      if L0_3 then
        L0_3 = L12_2
        L1_3 = L0_3
        L0_3 = L0_3.removeSelf
        L0_3(L1_3)
        L0_3 = nil
        L12_2 = L0_3
      end
      L0_3 = Runtime
      L1_3 = L0_3
      L0_3 = L0_3.removeEventListener
      L2_3 = "seenVideoAdEvent"
      L3_3 = L21_2
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L20_2
      L0_3()
      L0_3 = L2_1
      L0_3.gamesSinceAdBoost = 0
      L0_3 = L2_1
      L0_3 = L0_3.database
      L0_3 = L0_3.setBonusVideoInfoBubbleState
      L1_3 = true
      L0_3(L1_3)
      L0_3 = L18_2
      L0_3 = L0_3.getChestRewardData
      L0_3 = L0_3()
      L1_3 = L18_2
      L1_3 = L1_3.updateAndClearPoolState
      L1_3()
      if L0_3 == nil then
        L1_3 = L2_1
        L1_3 = L1_3.analytics
        L1_3 = L1_3.newEvent
        L2_3 = "unhandledError"
        L3_3 = {}
        L3_3.message = "No chest data when done with video. Post Game"
        L3_3.severity = "warning"
        L1_3(L2_3, L3_3)
        return
      end
      L1_3 = L18_2
      L1_3 = L1_3.findChestRewardValue
      L2_3 = A3_2
      L1_3 = L1_3(L2_3)
      L2_3 = L0_3.type
      L3_3 = L0_3.multiplier
      L4_3 = timer
      L4_3 = L4_3.performWithDelay
      L5_3 = 500
      
      function L6_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = L2_1
        L0_4 = L0_4.comm
        L0_4 = L0_4.seenBoostVideoSingle
        L1_4 = L1_3
        L2_4 = L2_3
        L3_4 = L3_3
        L0_4(L1_4, L2_4, L3_4)
      end
      
      L7_3 = 1
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L8_2 = L4_3
      L4_3 = L2_1
      L4_3 = L4_3.debugger
      L4_3 = L4_3.debugTable
      L5_3 = "rewardedChests"
      L6_3 = "Send to server: "
      L7_3 = L0_3
      L4_3(L5_3, L6_3, L7_3)
      L4_3 = L2_1
      L5_3 = L2_1
      L5_3 = L5_3.gamesPlayed
      L4_3.adBoostPrevGame = L5_3
      L4_3 = L2_1
      L4_3.adBoostDrop = false
    end
  end
  
  function L22_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = L2_1
    L0_3 = L0_3.adsTable
    L0_3 = L0_3.postGameVideo
    if L0_3 then
      L0_3 = L1_1
      L0_3 = L0_3.isVideoReady
      L0_3 = L0_3()
      if L0_3 then
        L0_3 = L19_2
        L0_3 = L0_3()
        L1_3 = L2_1
        L1_3 = L1_3.analytics
        L1_3 = L1_3.newEvent
        L2_3 = "design"
        L3_3 = {}
        L4_3 = "rewardedChests:"
        L5_3 = L0_3
        L6_3 = ":offer"
        L4_3 = L4_3 .. L5_3 .. L6_3
        L3_3.event_id = L4_3
        L4_3 = A4_2
        L3_3.value = L4_3
        L4_3 = "videos left: "
        L5_3 = L2_1
        L5_3 = L5_3.videosLeft
        if not L5_3 then
          L5_3 = "unknown"
        end
        L4_3 = L4_3 .. L5_3
        L3_3.area = L4_3
        L1_3(L2_3, L3_3)
        L1_3 = L2_1
        L1_3 = L1_3.adBoostImageSheetInfo
        L2_3 = L1_3
        L1_3 = L1_3.getFrameIndex
        L3_3 = "chestFall"
        L4_3 = L0_3
        L5_3 = "_1"
        L3_3 = L3_3 .. L4_3 .. L5_3
        L1_3 = L1_3(L2_3, L3_3)
        L2_3 = L2_1
        L2_3 = L2_3.adBoostImageSheetInfo
        L3_3 = L2_3
        L2_3 = L2_3.getFrameIndex
        L4_3 = "chestIdle"
        L5_3 = L0_3
        L6_3 = "_1"
        L4_3 = L4_3 .. L5_3 .. L6_3
        L2_3 = L2_3(L3_3, L4_3)
        L3_3 = {}
        L4_3 = {}
        L4_3.name = "drop"
        L4_3.start = L1_3
        L4_3.count = 8
        L4_3.time = 600
        L4_3.loopCount = 1
        L5_3 = {}
        L5_3.name = "idle"
        L5_3.start = L2_3
        L5_3.count = 6
        L5_3.time = 350
        L5_3.loopCount = 1
        L3_3[1] = L4_3
        L3_3[2] = L5_3
        L4_3 = display
        L4_3 = L4_3.newSprite
        L5_3 = L2_1
        L5_3 = L5_3.adBoostImageSheet
        L6_3 = L3_3
        L4_3 = L4_3(L5_3, L6_3)
        L11_2 = L4_3
        L4_3 = L10_2
        L4_3.y = 156
        L4_3 = L10_2
        L4_3.x = 400
        L4_3 = L10_2
        L4_3.xScale = 0.5
        L4_3 = L10_2
        L4_3.yScale = 0.5
        L4_3 = L10_2
        L4_3.alpha = 0
        L4_3 = L10_2
        L5_3 = L4_3
        L4_3 = L4_3.insert
        L6_3 = L11_2
        L4_3(L5_3, L6_3)
        
        function L4_3()
          local L0_4, L1_4, L2_4
          L0_4 = L11_2
          if L0_4 then
            L0_4 = L11_2
            L0_4 = L0_4.setSequence
            if L0_4 then
              L0_4 = L11_2
              L1_4 = L0_4
              L0_4 = L0_4.setSequence
              L2_4 = "idle"
              L0_4(L1_4, L2_4)
              L0_4 = L11_2
              L1_4 = L0_4
              L0_4 = L0_4.play
              L0_4(L1_4)
            end
          end
        end
        
        function L5_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4
          L0_4 = L10_2
          L0_4.alpha = 1
          L0_4 = L11_2
          L1_4 = L0_4
          L0_4 = L0_4.setSequence
          L2_4 = "drop"
          L0_4(L1_4, L2_4)
          L0_4 = L11_2
          L1_4 = L0_4
          L0_4 = L0_4.play
          L0_4(L1_4)
          
          function L0_4()
            local L0_5, L1_5, L2_5, L3_5, L4_5, L5_5, L6_5, L7_5
            L0_5 = 26
            L1_5 = -74
            L2_5 = display
            L2_5 = L2_5.newImageRect
            L3_5 = "images/gui/postgame/bubbleAdchest.png"
            L4_5 = 452
            L5_5 = 104
            L2_5 = L2_5(L3_5, L4_5, L5_5)
            L12_2 = L2_5
            L2_5 = L12_2
            L2_5.y = L0_5
            L2_5 = L12_2
            L2_5.x = L1_5
            L2_5 = L2_1
            L2_5 = L2_5.newText
            L3_5 = {}
            L3_5.string = "Watch a video to get an extra reward!"
            L3_5.size = 28
            L4_5 = {}
            L5_5 = 0
            L6_5 = 0
            L7_5 = 0
            L4_5[1] = L5_5
            L4_5[2] = L6_5
            L4_5[3] = L7_5
            L3_5.color = L4_5
            L3_5.width = 300
            L3_5.align = "center"
            L2_5 = L2_5(L3_5)
            L13_2 = L2_5
            L2_5 = L13_2
            L3_5 = L0_5 - 10
            L2_5.y = L3_5
            L2_5 = L13_2
            L2_5.x = L1_5
            L2_5 = L10_2
            L3_5 = L2_5
            L2_5 = L2_5.insert
            L4_5 = L12_2
            L2_5(L3_5, L4_5)
            L2_5 = L10_2
            L3_5 = L2_5
            L2_5 = L2_5.insert
            L4_5 = L13_2
            L2_5(L3_5, L4_5)
          end
          
          L1_4 = L2_1
          L1_4 = L1_4.database
          L1_4 = L1_4.showBonusVideoInfoBubble
          L1_4 = L1_4()
          if L1_4 then
            L1_4 = L2_1
            L1_4 = L1_4.database
            L1_4 = L1_4.setBonusVideoInfoBubbleState
            L2_4 = false
            L1_4(L2_4)
            L1_4 = timer
            L1_4 = L1_4.performWithDelay
            L2_4 = 500
            L3_4 = L0_4
            L4_4 = 1
            L1_4 = L1_4(L2_4, L3_4, L4_4)
            L9_2 = L1_4
          end
          L1_4 = timer
          L1_4 = L1_4.performWithDelay
          L2_4 = 2800
          L3_4 = L4_3
          L4_4 = 0
          L1_4 = L1_4(L2_4, L3_4, L4_4)
          L6_2 = L1_4
        end
        
        function L6_3()
          local L0_4, L1_4
          L0_4 = false
          L14_2 = L0_4
        end
        
        function L7_3(A0_4, A1_4)
          local L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
          L2_4 = A1_4.phase
          if L2_4 == "began" then
            L2_4 = L14_2
            if not L2_4 then
              L2_4 = L2_1
              L2_4 = L2_4.audio
              L2_4 = L2_4.play
              L3_4 = "button_press"
              L2_4(L3_4)
              L2_4 = L2_1
              L2_4 = L2_4.analytics
              L2_4 = L2_4.newEvent
              L3_4 = "design"
              L4_4 = {}
              L5_4 = "rewardedChests:"
              L6_4 = L0_3
              L7_4 = ":open"
              L5_4 = L5_4 .. L6_4 .. L7_4
              L4_4.event_id = L5_4
              L5_4 = A4_2
              L4_4.value = L5_4
              L5_4 = "videos left: "
              L6_4 = L2_1
              L6_4 = L6_4.videosLeft
              if not L6_4 then
                L6_4 = "unknown"
              end
              L5_4 = L5_4 .. L6_4
              L4_4.area = L5_4
              L2_4(L3_4, L4_4)
              L2_4 = L2_1
              L2_4 = L2_4.adsTable
              L2_4.boostVideoActive = true
              L2_4 = L1_1
              L2_4 = L2_4.showAd
              L2_4 = L2_4()
              L14_2 = L2_4
              L3_4 = timer
              L3_4 = L3_4.performWithDelay
              L4_4 = 1000
              L5_4 = L6_3
              L6_4 = 1
              L3_4 = L3_4(L4_4, L5_4, L6_4)
              L15_2 = L3_4
              L3_4 = A5_2
              if L3_4 then
                L3_4 = A5_2
                L3_4()
              end
            end
          end
        end
        
        L8_3 = L11_2
        L8_3.touch = L7_3
        L8_3 = L11_2
        L9_3 = L8_3
        L8_3 = L8_3.addEventListener
        L10_3 = "touch"
        L11_3 = L11_2
        L8_3(L9_3, L10_3, L11_3)
        L8_3 = Runtime
        L9_3 = L8_3
        L8_3 = L8_3.addEventListener
        L10_3 = "seenVideoAdEvent"
        L11_3 = L21_2
        L8_3(L9_3, L10_3, L11_3)
        L8_3 = timer
        L8_3 = L8_3.performWithDelay
        L9_3 = 1500
        L10_3 = L5_3
        L8_3 = L8_3(L9_3, L10_3)
        L7_2 = L8_3
      end
    end
  end
  
  function L23_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L16_2
    if L0_3 then
      return
    end
    L0_3 = true
    L16_2 = L0_3
    L0_3 = false
    L14_2 = L0_3
    L0_3 = L11_2
    if L0_3 then
      L0_3 = L11_2
      L1_3 = L0_3
      L0_3 = L0_3.removeEventListener
      L2_3 = "touch"
      L3_3 = L11_2
      L0_3(L1_3, L2_3, L3_3)
    end
    L0_3 = L15_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L15_2
      L0_3(L1_3)
      L0_3 = nil
      L15_2 = L0_3
    end
    L0_3 = L6_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L6_2
      L0_3(L1_3)
      L0_3 = nil
      L6_2 = L0_3
    end
    L0_3 = L7_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L7_2
      L0_3(L1_3)
      L0_3 = nil
      L7_2 = L0_3
    end
    L0_3 = L8_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L8_2
      L0_3(L1_3)
      L0_3 = nil
      L8_2 = L0_3
    end
    L0_3 = L9_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L9_2
      L0_3(L1_3)
      L0_3 = nil
      L9_2 = L0_3
    end
    L0_3 = L10_2
    if L0_3 then
      L0_3 = L10_2
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      L10_2 = L0_3
    end
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "seenVideoAdEvent"
    L3_3 = L21_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L10_2.clean = L23_2
  
  function L24_2()
    local L0_3, L1_3, L2_3
    L0_3 = L18_2
    L0_3 = L0_3.rollForChest
    L1_3 = A4_2
    L2_3 = L2_1
    L2_3 = L2_3.videosLeft
    L0_3(L1_3, L2_3)
  end
  
  function L25_2()
    local L0_3, L1_3
    L0_3 = L2_1
    L0_3 = L0_3.adsTable
    L0_3 = L0_3.postGameVideo
    if not L0_3 then
    else
      L0_3 = L2_1
      L0_3 = L0_3.videosLeft
      if 0 < L0_3 then
        L0_3 = L2_1
        L0_3 = L0_3.gameConfig
        L0_3 = L0_3.hasDiverseAdBoostScheme
        L0_3 = L0_3()
        if L0_3 then
          L0_3 = L1_1
          L0_3 = L0_3.isVideoReady
          L0_3 = L0_3()
          if L0_3 then
            L0_3 = L24_2
            L0_3()
          end
        end
      end
    end
    L0_3 = L18_2
    L0_3 = L0_3.getChestRewardData
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = L22_2
      L1_3 = L18_2
      L1_3 = L1_3.getChestRewardData
      L1_3 = L1_3()
      L0_3(L1_3)
      L0_3 = true
      return L0_3
    end
    L0_3 = false
    return L0_3
  end
  
  L10_2.tryDropAndReturnResult = L25_2
  return L10_2
end

L0_1.init = L3_1
return L0_1
