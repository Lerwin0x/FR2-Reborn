local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "lua.modules.dropdownHelper"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "lua.modules.coinReward"
L2_1 = L2_1(L3_1)
L3_1 = L0_1.newScene
L3_1 = L3_1()
L4_1 = 25
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = nil
L14_1 = nil
L15_1 = nil
L16_1 = nil
L17_1 = nil
L18_1 = false
L19_1 = nil
L20_1 = false
L21_1 = require
L22_1 = "lua.modules.jsonAwardsHandler"
L21_1 = L21_1(L22_1)
L22_1 = false
L23_1 = nil
L24_1 = nil

function L25_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.gamesPlayed
  L0_2 = 4 < L0_2
  return L0_2
end

function L26_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.database
  L0_2 = L0_2.getOnboardingMoney
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = L0_1
    L0_2 = L0_2.gamesPlayed
    L0_2 = L0_2 == 3
  end
  return L0_2
end

function L27_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L0_2 = L0_2.gamesPlayed
  if L0_2 <= 9 then
    L0_2 = false
    return L0_2
  end
  L0_2 = math
  L0_2 = L0_2.random
  L0_2 = L0_2()
  if L0_2 < 0.5 then
    L0_2 = false
    return L0_2
  end
  L0_2 = L0_1
  L0_2 = L0_2.database
  L0_2 = L0_2.getItems
  L0_2 = L0_2()
  L1_2 = L0_2 ~= nil
  L2_2 = not L1_2
  return L2_2
end

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2, L91_2, L92_2, L93_2, L94_2, L95_2, L96_2, L97_2, L98_2, L99_2, L100_2, L101_2, L102_2, L103_2, L104_2, L105_2, L106_2, L107_2, L108_2, L109_2, L110_2, L111_2, L112_2
  L2_2 = A0_2.view
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L15_1 = L3_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  L6_2 = require
  L7_2 = "spine-corona.monsterLoader"
  L6_2 = L6_2(L7_2)
  L7_2 = require
  L8_2 = "lua.ads.postGameVideoAds"
  L7_2 = L7_2(L8_2)
  L8_2 = require
  L9_2 = "lua.modules.onboardingChest"
  L8_2 = L8_2(L9_2)
  L9_2 = require
  L10_2 = "lua.ads.videoModule"
  L9_2 = L9_2(L10_2)
  L10_2 = nil
  L11_2 = {}
  L12_2 = nil
  L13_2 = nil
  L14_2 = display
  L14_2 = L14_2.newGroup
  L14_2 = L14_2()
  L15_2 = {}
  L16_2 = L0_1
  L16_2 = L16_2.database
  L16_2 = L16_2.getFriends
  L16_2 = L16_2()
  L17_2 = {}
  L18_2 = {}
  L19_2 = {}
  L20_2 = {}
  L9_1 = L20_2
  L20_2 = nil
  L21_2 = nil
  L22_2 = nil
  L23_2 = nil
  L24_2 = nil
  L25_2 = nil
  L26_2 = {}
  L27_2 = false
  L28_2 = {}
  L29_2 = "Well played"
  L30_2 = "Add me.. if you dare!"
  L31_2 = "Yaay!"
  L32_2 = "#&!?@*!"
  L33_2 = "So lucky!"
  L28_2[1] = L29_2
  L28_2[2] = L30_2
  L28_2[3] = L31_2
  L28_2[4] = L32_2
  L28_2[5] = L33_2
  L29_2 = "images/gui/postgame/postBG_forest.png"
  L30_2 = {}
  L31_2 = nil
  L32_2 = nil
  L33_2 = nil
  L34_2 = nil
  L35_2 = nil
  L36_2 = 176
  L37_2 = nil
  L38_2 = false
  L5_1 = L38_2
  L38_2 = false
  L22_1 = L38_2
  L38_2 = nil
  L39_2 = nil
  L40_2 = nil
  L41_2 = nil
  L42_2 = nil
  L43_2 = nil
  L44_2 = nil
  L45_2 = nil
  L46_2 = 30
  L47_2 = 40
  L48_2 = 150
  L49_2 = 22
  L50_2 = 17
  L51_2 = 0.9
  L52_2 = nil
  L53_2 = false
  L54_2 = false
  L55_2 = false
  L56_2 = {}
  L57_2 = L0_1
  L57_2 = L57_2.data
  L57_2 = L57_2.gameInfo
  L57_2 = L57_2.map
  if L57_2 < 1000 then
    L57_2 = L0_1
    L57_2 = L57_2.data
    L57_2 = L57_2.getMapInfo
    L58_2 = L0_1
    L58_2 = L58_2.data
    L58_2 = L58_2.gameInfo
    L58_2 = L58_2.map
    L57_2 = L57_2(L58_2)
    if L57_2 then
      L58_2 = L57_2.theme
      if L58_2 then
        L59_2 = "images/gui/postgame/postBG_"
        L60_2 = L58_2
        L61_2 = ".png"
        L29_2 = L59_2 .. L60_2 .. L61_2
      end
    end
  end
  L57_2 = display
  L57_2 = L57_2.newImageRect
  L58_2 = L29_2
  L59_2 = 480
  L60_2 = 320
  L57_2 = L57_2(L58_2, L59_2, L60_2)
  L58_2 = display
  L58_2 = L58_2.contentWidth
  L58_2 = L58_2 * 0.5
  L57_2.x = L58_2
  L58_2 = display
  L58_2 = L58_2.contentHeight
  L58_2 = L58_2 * 0.5
  L57_2.y = L58_2
  L59_2 = L2_2
  L58_2 = L2_2.insert
  L60_2 = L57_2
  L58_2(L59_2, L60_2)
  L58_2 = display
  L58_2 = L58_2.newImageRect
  L59_2 = "images/gui/postgame/windowTimes.png"
  L60_2 = 182
  L61_2 = 131
  L58_2 = L58_2(L59_2, L60_2, L61_2)
  L59_2 = display
  L59_2 = L59_2.contentWidth
  L59_2 = L59_2 * 0.8
  L58_2.x = L59_2
  L59_2 = display
  L59_2 = L59_2.contentHeight
  L59_2 = L59_2 * 0.2
  L58_2.y = L59_2
  L59_2 = display
  L59_2 = L59_2.newImageRect
  L60_2 = "images/gui/postgame/buttonToggle.png"
  L61_2 = 55
  L62_2 = 52
  L59_2 = L59_2(L60_2, L61_2, L62_2)
  L59_2.x = 30
  L59_2.y = 294
  L59_2.isVisible = false
  L60_2 = display
  L60_2 = L60_2.newImageRect
  L61_2 = "images/gui/postgame/buttonToggle.png"
  L62_2 = 55
  L63_2 = 52
  L60_2 = L60_2(L61_2, L62_2, L63_2)
  L60_2.x = 90
  L60_2.y = 294
  L60_2.isVisible = false
  L61_2 = display
  L61_2 = L61_2.newImageRect
  L62_2 = "images/gui/postgame/bubbleList.png"
  L63_2 = 175
  L64_2 = 179
  L61_2 = L61_2(L62_2, L63_2, L64_2)
  L62_2 = display
  L62_2 = L62_2.contentWidth
  L62_2 = L62_2 * 0.19
  L61_2.x = L62_2
  L62_2 = display
  L62_2 = L62_2.contentHeight
  L62_2 = L62_2 * 0.56
  L61_2.y = L62_2
  L61_2.isVisible = false
  
  function L62_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.adrally
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.adrally
      L0_3 = L0_3.register
      L1_3 = "level"
      L2_3 = {}
      L3_3 = L0_1
      L3_3 = L3_3.gamesPlayed
      L2_3.level = L3_3
      L0_3(L1_3, L2_3)
    end
  end
  
  function L63_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = 1
    L2_3 = 20
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L0_1
      L5_3 = L5_3.gamesPlayed
      if L5_3 == L4_3 then
        L5_3 = L0_1
        L5_3 = L5_3.analytics
        L5_3 = L5_3.addDesignEvent
        L6_3 = "Onboarding:FirstGamesPerformance:Game"
        L7_3 = L4_3
        L6_3 = L6_3 .. L7_3
        L7_3 = A0_3
        L5_3(L6_3, L7_3)
      end
    end
  end
  
  L64_2 = ""
  L65_2 = L0_1
  L65_2 = L65_2.onboarding
  L65_2 = L65_2.isActive
  if L65_2 == true then
    L65_2 = L0_1
    L65_2 = L65_2.onboarding
    L65_2 = L65_2.getMapName
    L65_2 = L65_2()
    L64_2 = L65_2
  else
    L65_2 = L0_1
    L65_2 = L65_2.data
    L65_2 = L65_2.getMapName
    L66_2 = L0_1
    L66_2 = L66_2.data
    L66_2 = L66_2.gameInfo
    L66_2 = L66_2.map
    L65_2 = L65_2(L66_2)
    L64_2 = L65_2
    L65_2 = L0_1
    L65_2 = L65_2.data
    L65_2 = L65_2.gameInfo
    L65_2 = L65_2.gameType
    if L65_2 ~= 0 then
      L65_2 = L0_1
      L66_2 = L0_1
      L66_2 = L66_2.gamesPlayed
      L66_2 = L66_2 + 1
      L65_2.gamesPlayed = L66_2
      L65_2 = L0_1
      L66_2 = L0_1
      L66_2 = L66_2.gamesPlayedThisSession
      L66_2 = L66_2 + 1
      L65_2.gamesPlayedThisSession = L66_2
    end
    L65_2 = L0_1
    L65_2 = L65_2.data
    L65_2 = L65_2.gameInfo
    L65_2 = L65_2.gameType
    if L65_2 == 1 then
      L65_2 = L0_1
      L65_2 = L65_2.analytics
      L65_2 = L65_2.SessionData
      L66_2 = L0_1
      L66_2 = L66_2.analytics
      L66_2 = L66_2.SessionData
      L66_2 = L66_2.quickPlayGamesPlayed
      if not L66_2 then
        L66_2 = 0
      end
      L66_2 = L66_2 + 1
      L65_2.quickPlayGamesPlayed = L66_2
    else
      L65_2 = L0_1
      L65_2 = L65_2.data
      L65_2 = L65_2.gameInfo
      L65_2 = L65_2.gameType
      if L65_2 ~= 3 then
        L65_2 = L0_1
        L65_2 = L65_2.data
        L65_2 = L65_2.gameInfo
        L65_2 = L65_2.gameType
        if L65_2 ~= 4 then
          goto lbl_246
        end
      end
      L65_2 = L0_1
      L65_2 = L65_2.analytics
      L65_2 = L65_2.SessionData
      L66_2 = L0_1
      L66_2 = L66_2.analytics
      L66_2 = L66_2.SessionData
      L66_2 = L66_2.customGamesPlayed
      if not L66_2 then
        L66_2 = 0
      end
      L66_2 = L66_2 + 1
      L65_2.customGamesPlayed = L66_2
      goto lbl_289
      ::lbl_246::
      L65_2 = L0_1
      L65_2 = L65_2.data
      L65_2 = L65_2.gameInfo
      L65_2 = L65_2.gameType
      if L65_2 ~= 5 then
        L65_2 = L0_1
        L65_2 = L65_2.data
        L65_2 = L65_2.gameInfo
        L65_2 = L65_2.gameType
        if L65_2 ~= 6 then
          goto lbl_271
        end
      end
      L65_2 = L0_1
      L65_2 = L65_2.analytics
      L65_2 = L65_2.SessionData
      L66_2 = L0_1
      L66_2 = L66_2.analytics
      L66_2 = L66_2.SessionData
      L66_2 = L66_2.twoVtwoGamesPlayed
      if not L66_2 then
        L66_2 = 0
      end
      L66_2 = L66_2 + 1
      L65_2.twoVtwoGamesPlayed = L66_2
      goto lbl_289
      ::lbl_271::
      L65_2 = L0_1
      L65_2 = L65_2.data
      L65_2 = L65_2.gameInfo
      L65_2 = L65_2.gameType
      if L65_2 == 0 then
        L65_2 = L0_1
        L65_2 = L65_2.analytics
        L65_2 = L65_2.SessionData
        L66_2 = L0_1
        L66_2 = L66_2.analytics
        L66_2 = L66_2.SessionData
        L66_2 = L66_2.practiceGamesPlayed
        if not L66_2 then
          L66_2 = 0
        end
        L66_2 = L66_2 + 1
        L65_2.practiceGamesPlayed = L66_2
      end
    end
    ::lbl_289::
    L65_2 = L62_2
    L65_2()
  end
  L65_2 = nil
  L66_2 = L0_1
  L66_2 = L66_2.newText
  L67_2 = {}
  L67_2.string = "Bonus race"
  L67_2.size = 18
  L68_2 = L58_2.x
  L67_2.x = L68_2
  L68_2 = L58_2.y
  L68_2 = L68_2 - 50
  L67_2.y = L68_2
  L68_2 = {}
  L69_2 = 1
  L70_2 = 1
  L71_2 = 1
  L68_2[1] = L69_2
  L68_2[2] = L70_2
  L68_2[3] = L71_2
  L67_2.color = L68_2
  L66_2 = L66_2(L67_2)
  L67_2 = L0_1
  L67_2 = L67_2.data
  L67_2 = L67_2.gameInfo
  L67_2 = L67_2.crazyModePostLobby
  if L67_2 then
    L67_2 = L0_1
    L67_2 = L67_2.newText
    L68_2 = {}
    L68_2.string = L64_2
    L68_2.size = 12
    L69_2 = L58_2.x
    L68_2.x = L69_2
    L69_2 = L58_2.y
    L69_2 = L69_2 - 36
    L68_2.y = L69_2
    L69_2 = {}
    L70_2 = 1
    L71_2 = 1
    L72_2 = 1
    L69_2[1] = L70_2
    L69_2[2] = L71_2
    L69_2[3] = L72_2
    L68_2.color = L69_2
    L67_2 = L67_2(L68_2)
    L65_2 = L67_2
  else
    L66_2.isVisible = false
    L67_2 = L0_1
    L67_2 = L67_2.newText
    L68_2 = {}
    L68_2.string = L64_2
    L68_2.size = 22
    L69_2 = L58_2.x
    L68_2.x = L69_2
    L69_2 = L58_2.y
    L69_2 = L69_2 - 44
    L68_2.y = L69_2
    L69_2 = {}
    L70_2 = 1
    L71_2 = 1
    L72_2 = 1
    L69_2[1] = L70_2
    L69_2[2] = L71_2
    L69_2[3] = L72_2
    L68_2.color = L69_2
    L67_2 = L67_2(L68_2)
    L65_2 = L67_2
  end
  
  function L67_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L2_3 = 1
    L3_3 = nil
    L4_3 = nil
    L5_3 = 1
    L6_3 = L0_1
    L6_3 = L6_3.data
    L6_3 = L6_3.gameInfo
    L6_3 = L6_3.players
    L6_3 = #L6_3
    L7_3 = 1
    for L8_3 = L5_3, L6_3, L7_3 do
      L9_3 = L0_1
      L9_3 = L9_3.data
      L9_3 = L9_3.gameInfo
      L9_3 = L9_3.players
      L9_3 = L9_3[L8_3]
      L9_3 = L9_3.playerId
      if A0_3 == L9_3 then
        L2_3 = L8_3
      end
    end
    if A1_3 < 0 then
      L5_3 = L28_2
      L5_3 = #L5_3
      if A1_3 > L5_3 then
        return
      end
    end
    
    function L5_3()
      local L0_4, L1_4
      L0_4 = L27_2
      if L0_4 then
        return
      end
      L0_4 = L4_3
      if L0_4 then
        L0_4 = L4_3
        L1_4 = L0_4
        L0_4 = L0_4.removeSelf
        L0_4(L1_4)
        L0_4 = nil
        L4_3 = L0_4
      end
      L0_4 = L3_3
      if L0_4 then
        L0_4 = L3_3
        L1_4 = L0_4
        L0_4 = L0_4.removeSelf
        L0_4(L1_4)
        L0_4 = nil
        L3_3 = L0_4
      end
    end
    
    L6_3 = L0_1
    L6_3 = L6_3.data
    L6_3 = L6_3.gameInfo
    L6_3 = L6_3.players
    L6_3 = L6_3[L2_3]
    L6_3 = L6_3.pos
    if L6_3 == 1 then
      L6_3 = display
      L6_3 = L6_3.newImageRect
      L7_3 = "images/gui/postgame/bubbleTalk.png"
      L8_3 = 159
      L9_3 = 47
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      L4_3 = L6_3
      L6_3 = L0_1
      L6_3 = L6_3.data
      L6_3 = L6_3.gameInfo
      L6_3 = L6_3.players
      L6_3 = L6_3[L2_3]
      L6_3 = L6_3.x
      L6_3 = L6_3 + 30
      L4_3.x = L6_3
      L6_3 = L0_1
      L6_3 = L6_3.data
      L6_3 = L6_3.gameInfo
      L6_3 = L6_3.players
      L6_3 = L6_3[L2_3]
      L6_3 = L6_3.y
      L6_3 = L6_3 - 76
      L4_3.y = L6_3
      L6_3 = L0_1
      L6_3 = L6_3.newText
      L7_3 = {}
      L8_3 = L0_1
      L8_3 = L8_3.localized
      L8_3 = L8_3.get
      L9_3 = L28_2
      L9_3 = L9_3[A1_3]
      L8_3 = L8_3(L9_3)
      L7_3.string = L8_3
      L7_3.size = 14
      L8_3 = L4_3.x
      L7_3.x = L8_3
      L8_3 = L4_3.y
      L8_3 = L8_3 - 8
      L7_3.y = L8_3
      L6_3 = L6_3(L7_3)
      L3_3 = L6_3
    else
      L6_3 = L0_1
      L6_3 = L6_3.data
      L6_3 = L6_3.gameInfo
      L6_3 = L6_3.players
      L6_3 = L6_3[L2_3]
      L6_3 = L6_3.pos
      if L6_3 == 2 then
        L6_3 = display
        L6_3 = L6_3.newImageRect
        L7_3 = "images/gui/postgame/bubbleTalk3.png"
        L8_3 = 159
        L9_3 = 47
        L6_3 = L6_3(L7_3, L8_3, L9_3)
        L4_3 = L6_3
        L6_3 = L0_1
        L6_3 = L6_3.data
        L6_3 = L6_3.gameInfo
        L6_3 = L6_3.players
        L6_3 = L6_3[L2_3]
        L6_3 = L6_3.x
        L6_3 = L6_3 + 42
        L4_3.x = L6_3
        L6_3 = L0_1
        L6_3 = L6_3.data
        L6_3 = L6_3.gameInfo
        L6_3 = L6_3.players
        L6_3 = L6_3[L2_3]
        L6_3 = L6_3.y
        L6_3 = L6_3 + 10
        L4_3.y = L6_3
        L6_3 = L0_1
        L6_3 = L6_3.newText
        L7_3 = {}
        L8_3 = L0_1
        L8_3 = L8_3.localized
        L8_3 = L8_3.get
        L9_3 = L28_2
        L9_3 = L9_3[A1_3]
        L8_3 = L8_3(L9_3)
        L7_3.string = L8_3
        L7_3.size = 14
        L8_3 = L4_3.x
        L7_3.x = L8_3
        L8_3 = L4_3.y
        L8_3 = L8_3 + 6
        L7_3.y = L8_3
        L6_3 = L6_3(L7_3)
        L3_3 = L6_3
      else
        L6_3 = L0_1
        L6_3 = L6_3.data
        L6_3 = L6_3.gameInfo
        L6_3 = L6_3.players
        L6_3 = L6_3[L2_3]
        L6_3 = L6_3.pos
        if L6_3 == 3 then
          L6_3 = display
          L6_3 = L6_3.newImageRect
          L7_3 = "images/gui/postgame/bubbleTalk.png"
          L8_3 = 159
          L9_3 = 47
          L6_3 = L6_3(L7_3, L8_3, L9_3)
          L4_3 = L6_3
          L6_3 = L0_1
          L6_3 = L6_3.data
          L6_3 = L6_3.gameInfo
          L6_3 = L6_3.players
          L6_3 = L6_3[L2_3]
          L6_3 = L6_3.x
          L6_3 = L6_3 + 30
          L4_3.x = L6_3
          L6_3 = L0_1
          L6_3 = L6_3.data
          L6_3 = L6_3.gameInfo
          L6_3 = L6_3.players
          L6_3 = L6_3[L2_3]
          L6_3 = L6_3.y
          L6_3 = L6_3 - 76
          L4_3.y = L6_3
          L6_3 = L0_1
          L6_3 = L6_3.newText
          L7_3 = {}
          L8_3 = L0_1
          L8_3 = L8_3.localized
          L8_3 = L8_3.get
          L9_3 = L28_2
          L9_3 = L9_3[A1_3]
          L8_3 = L8_3(L9_3)
          L7_3.string = L8_3
          L7_3.size = 14
          L8_3 = L4_3.x
          L7_3.x = L8_3
          L8_3 = L4_3.y
          L8_3 = L8_3 - 8
          L7_3.y = L8_3
          L6_3 = L6_3(L7_3)
          L3_3 = L6_3
        else
          L6_3 = L0_1
          L6_3 = L6_3.data
          L6_3 = L6_3.gameInfo
          L6_3 = L6_3.players
          L6_3 = L6_3[L2_3]
          L6_3 = L6_3.pos
          if L6_3 == 4 then
            L6_3 = display
            L6_3 = L6_3.newImageRect
            L7_3 = "images/gui/postgame/bubbleTalk2.png"
            L8_3 = 159
            L9_3 = 47
            L6_3 = L6_3(L7_3, L8_3, L9_3)
            L4_3 = L6_3
            L6_3 = L0_1
            L6_3 = L6_3.data
            L6_3 = L6_3.gameInfo
            L6_3 = L6_3.players
            L6_3 = L6_3[L2_3]
            L6_3 = L6_3.x
            L6_3 = L6_3 + 38
            L4_3.x = L6_3
            L6_3 = L0_1
            L6_3 = L6_3.data
            L6_3 = L6_3.gameInfo
            L6_3 = L6_3.players
            L6_3 = L6_3[L2_3]
            L6_3 = L6_3.y
            L6_3 = L6_3 + 10
            L4_3.y = L6_3
            L6_3 = L0_1
            L6_3 = L6_3.newText
            L7_3 = {}
            L8_3 = L0_1
            L8_3 = L8_3.localized
            L8_3 = L8_3.get
            L9_3 = L28_2
            L9_3 = L9_3[A1_3]
            L8_3 = L8_3(L9_3)
            L7_3.string = L8_3
            L7_3.size = 14
            L8_3 = L4_3.x
            L7_3.x = L8_3
            L8_3 = L4_3.y
            L8_3 = L8_3 + 6
            L7_3.y = L8_3
            L6_3 = L6_3(L7_3)
            L3_3 = L6_3
          end
        end
      end
    end
    if L4_3 and L3_3 then
      L6_3 = L5_2
      L7_3 = L6_3
      L6_3 = L6_3.insert
      L8_3 = L4_3
      L6_3(L7_3, L8_3)
      L6_3 = L5_2
      L7_3 = L6_3
      L6_3 = L6_3.insert
      L8_3 = L3_3
      L6_3(L7_3, L8_3)
    end
    L6_3 = timer
    L6_3 = L6_3.performWithDelay
    L7_3 = 4000
    L8_3 = L5_3
    L6_3(L7_3, L8_3)
  end
  
  L8_1 = L67_2
  
  function L67_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L59_2
    L0_3 = L0_3.isVisible
    if L0_3 then
      L0_3 = L59_2
      L0_3.isVisible = false
      L0_3 = L61_2
      L0_3.isVisible = false
      L0_3 = 1
      L1_3 = L26_2
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L26_2
        L4_3 = L4_3[L3_3]
        L4_3.isVisible = false
      end
    else
      L0_3 = L59_2
      L0_3.isVisible = true
      L0_3 = L61_2
      L0_3.isVisible = true
      L0_3 = 1
      L1_3 = L26_2
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L26_2
        L4_3 = L4_3[L3_3]
        L4_3.isVisible = true
      end
    end
  end
  
  function L68_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = "images/gui/postgame/"
    L1_3 = 1
    L2_3 = 5
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      function L5_3()
        local L0_4, L1_4, L2_4
        
        L0_4 = L0_1
        L0_4 = L0_4.comm
        L0_4 = L0_4.postGameChat
        L1_4 = L4_3
        L2_4 = L30_2
        L0_4(L1_4, L2_4)
        L0_4 = L8_1
        L1_4 = L0_1
        L1_4 = L1_4.database
        L1_4 = L1_4.getPlayerInformation
        L1_4 = L1_4()
        L1_4 = L1_4.playerId
        L2_4 = L4_3
        L0_4(L1_4, L2_4)
        L0_4 = L67_2
        L0_4()
      end
      
      L6_3 = nil
      L7_3 = L4_3 % 2
      if L7_3 == 0 then
        L7_3 = L0_3
        L8_3 = "bubbleListRow1.png"
        L6_3 = L7_3 .. L8_3
      else
        L7_3 = L0_3
        L8_3 = "bubbleListRow2.png"
        L6_3 = L7_3 .. L8_3
      end
      L7_3 = L26_2
      L8_3 = L0_1
      L8_3 = L8_3.newButton
      L9_3 = {}
      L9_3.image = L6_3
      L10_3 = {}
      L11_3 = L0_1
      L11_3 = L11_3.localized
      L11_3 = L11_3.get
      L12_3 = L28_2
      L12_3 = L12_3[L4_3]
      L11_3 = L11_3(L12_3)
      L10_3.string = L11_3
      L10_3.x = 0
      L10_3.y = -4
      L9_3.text = L10_3
      L9_3.width = 156
      L9_3.height = 30
      L9_3.onRelease = L5_3
      L9_3.x = 90
      L10_3 = L4_3 * 30
      L10_3 = 84 + L10_3
      L9_3.y = L10_3
      L8_3 = L8_3(L9_3)
      L7_3[L4_3] = L8_3
      L7_3 = L26_2
      L7_3 = L7_3[L4_3]
      L7_3.isVisible = false
      L7_3 = L2_2
      L8_3 = L7_3
      L7_3 = L7_3.insert
      L9_3 = L26_2
      L9_3 = L9_3[L4_3]
      L7_3(L8_3, L9_3)
    end
  end
  
  function L69_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.tcpClient
    L0_3 = L0_3.stopTCPClient
    L0_3()
    L0_3 = L0_1
    L0_3 = L0_3.gotoScene
    L1_3 = "lua.scenes.mainMenu"
    L0_3(L1_3)
  end
  
  function L70_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.action
    if "clicked" == L1_3 then
      L1_3 = nil
      L37_2 = L1_3
      L1_3 = A0_3.index
      if 1 == L1_3 then
        L2_3 = L27_2
        if L2_3 then
          return
        end
        L2_3 = L0_1
        L2_3 = L2_3.onboarding
        L2_3 = L2_3.deactivate
        L2_3()
        L2_3 = L0_1
        L2_3 = L2_3.gotoScene
        L3_3 = "lua.scenes.mainMenu"
        L2_3(L3_3)
      elseif 2 == L1_3 then
      end
    end
  end
  
  function L71_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L0_1
    L0_3 = L0_3.localized
    L0_3 = L0_3.get
    L1_3 = "QuitOnboarding"
    L0_3 = L0_3(L1_3)
    L1_3 = native
    L1_3 = L1_3.showAlert
    L2_3 = L0_1
    L2_3 = L2_3.localized
    L2_3 = L2_3.get
    L3_3 = "Quit"
    L2_3 = L2_3(L3_3)
    L3_3 = L0_3
    L4_3 = {}
    L5_3 = L0_1
    L5_3 = L5_3.localized
    L5_3 = L5_3.get
    L6_3 = "Yes"
    L5_3 = L5_3(L6_3)
    L6_3 = L0_1
    L6_3 = L6_3.localized
    L6_3 = L6_3.get
    L7_3 = "No"
    L6_3, L7_3 = L6_3(L7_3)
    L4_3[1] = L5_3
    L4_3[2] = L6_3
    L4_3[3] = L7_3
    L5_3 = L70_2
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    L37_2 = L1_3
  end
  
  function L72_2()
    local L0_3, L1_3
    L0_3 = L22_1
    if L0_3 then
      return
    end
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.isActive
    if L0_3 == true then
      L0_3 = L0_1
      L0_3 = L0_3.onboarding
      L0_3 = L0_3.stepDone
      L0_3()
      return
    else
      L0_3 = L0_1
      L0_3 = L0_3.data
      L0_3 = L0_3.gameInfo
      L0_3 = L0_3.gameType
      if L0_3 == 0 then
        L0_3 = L0_1
        L0_3 = L0_3.gotoScene
        L1_3 = "lua.scenes.lobbyPractise"
        L0_3(L1_3)
      else
        L0_3 = L0_1
        L0_3 = L0_3.data
        L0_3 = L0_3.gameInfo
        L0_3 = L0_3.gameType
        if L0_3 == 1 then
          L0_3 = L0_1
          L0_3 = L0_3.gotoScene
          L1_3 = "lua.scenes.lobbyQuickPlay"
          L0_3(L1_3)
        else
          L0_3 = L0_1
          L0_3 = L0_3.data
          L0_3 = L0_3.gameInfo
          L0_3 = L0_3.gameType
          if L0_3 ~= 3 then
            L0_3 = L0_1
            L0_3 = L0_3.data
            L0_3 = L0_3.gameInfo
            L0_3 = L0_3.gameType
            if L0_3 ~= 4 then
              goto lbl_55
            end
          end
          L0_3 = L0_1
          L0_3 = L0_3.gotoScene
          L1_3 = "lua.scenes.lobbyCustomPlay"
          L0_3(L1_3)
          goto lbl_71
          ::lbl_55::
          L0_3 = L0_1
          L0_3 = L0_3.data
          L0_3 = L0_3.gameInfo
          L0_3 = L0_3.gameType
          if L0_3 ~= 5 then
            L0_3 = L0_1
            L0_3 = L0_3.data
            L0_3 = L0_3.gameInfo
            L0_3 = L0_3.gameType
            if L0_3 ~= 6 then
              goto lbl_71
            end
          end
          L0_3 = L0_1
          L0_3 = L0_3.gotoScene
          L1_3 = "lua.scenes.lobby2v2Play"
          L0_3(L1_3)
        end
      end
    end
    ::lbl_71::
  end
  
  function L73_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = L19_2
    L2_3 = L2_3[A0_3]
    L2_3.isVisible = false
    L2_3 = L19_2
    L2_3 = L2_3[A0_3]
    L2_3.inviteSent = true
    L2_3 = L0_1
    L2_3 = L2_3.comm
    L2_3 = L2_3.inviteToClan
    L3_3 = A1_3
    L4_3 = false
    L2_3(L3_3, L4_3)
  end
  
  function L74_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = L18_2
    L2_3 = L2_3[A0_3]
    L2_3.isVisible = false
    L2_3 = L18_2
    L2_3 = L2_3[A0_3]
    L2_3.inviteSent = true
    L2_3 = L0_1
    L2_3 = L2_3.comm
    L2_3 = L2_3.addFriend
    L3_3 = A1_3
    L4_3 = false
    L2_3(L3_3, L4_3)
  end
  
  function L75_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = {}
    L2_3.isModal = true
    L3_3 = {}
    L2_3.params = L3_3
    L3_3 = L2_3.params
    L3_3.playerToReport = A1_3
    L3_3 = L2_3.params
    L3_3.position = A0_3
    L3_3 = L2_3.params
    L4_3 = L35_2
    L4_3 = L4_3[A0_3]
    L4_3 = L4_3.username
    L3_3.playerName = L4_3
    L3_3 = L0_1
    L3_3 = L3_3.showOverlay
    L4_3 = "lua.overlays.reportPlayerScene"
    L5_3 = L2_3
    L3_3(L4_3, L5_3)
  end
  
  function L76_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L60_2
    L0_3 = L0_3.isVisible
    if L0_3 then
      L0_3 = 1
      L1_3 = 4
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L18_2
        L4_3 = L4_3[L3_3]
        if L4_3 then
          L4_3 = L18_2
          L4_3 = L4_3[L3_3]
          L4_3.isVisible = false
        end
      end
      L0_3 = 1
      L1_3 = 4
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L9_1
        L4_3 = L4_3[L3_3]
        if L4_3 then
          L4_3 = L9_1
          L4_3 = L4_3[L3_3]
          L4_3.isVisible = false
        end
      end
      L0_3 = 1
      L1_3 = 4
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L19_2
        L4_3 = L4_3[L3_3]
        if L4_3 then
          L4_3 = L19_2
          L4_3 = L4_3[L3_3]
          L4_3.isVisible = false
        end
      end
      L0_3 = L60_2
      L0_3.isVisible = false
    else
      L0_3 = 1
      L1_3 = 4
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L18_2
        L4_3 = L4_3[L3_3]
        if L4_3 then
          L4_3 = L18_2
          L4_3 = L4_3[L3_3]
          L4_3 = L4_3.inviteSent
          if not L4_3 then
            L4_3 = L18_2
            L4_3 = L4_3[L3_3]
            L4_3.isVisible = true
          end
        end
      end
      L0_3 = 1
      L1_3 = 4
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L9_1
        L4_3 = L4_3[L3_3]
        if L4_3 then
          L4_3 = L9_1
          L4_3 = L4_3[L3_3]
          L4_3 = L4_3.reportSent
          if not L4_3 then
            L4_3 = L9_1
            L4_3 = L4_3[L3_3]
            L4_3.isVisible = true
          end
        end
      end
      L0_3 = 1
      L1_3 = 4
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L19_2
        L4_3 = L4_3[L3_3]
        if L4_3 then
          L4_3 = L19_2
          L4_3 = L4_3[L3_3]
          L4_3 = L4_3.inviteSent
          if not L4_3 then
            L4_3 = L0_1
            L4_3 = L4_3.data
            L4_3 = L4_3.clans
            L4_3 = L4_3.inClan
            if L4_3 then
              L4_3 = L0_1
              L4_3 = L4_3.clanUtils
              L4_3 = L4_3.getMyClanRank
              L4_3 = L4_3()
              if 1 <= L4_3 then
                L4_3 = L19_2
                L4_3 = L4_3[L3_3]
                L4_3.isVisible = true
              end
            end
          end
        end
      end
      L0_3 = L60_2
      L0_3.isVisible = true
    end
  end
  
  function L77_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L22_1
    if L0_3 then
      return
    end
    L0_3 = L0_1
    L0_3 = L0_3.tcpClient
    L0_3 = L0_3.stopTCPClient
    L0_3()
    L0_3 = L0_1
    L0_3 = L0_3.comm
    L0_3 = L0_3.isOnline
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.data
      L0_3 = L0_3.gameInfo
      L0_3 = L0_3.stats
      if L0_3 then
        L0_3 = L0_1
        L0_3 = L0_3.analytics
        L0_3 = L0_3.newEvent
        L1_3 = "design"
        L2_3 = {}
        L2_3.event_id = "marketButton:postLobby"
        L3_3 = L0_1
        L3_3 = L3_3.data
        L3_3 = L3_3.gameInfo
        L3_3 = L3_3.stats
        L3_3 = L3_3.h
        L2_3.value = L3_3
        L2_3.area = "postLobby"
        L0_3(L1_3, L2_3)
      end
      L0_3 = L18_1
      if L0_3 then
        L0_3 = {}
        L1_3 = {}
        L1_3.highlightItemId = 102
        L1_3.postLobbyTutorial = true
        L0_3.params = L1_3
        L1_3 = L0_1
        L1_3 = L1_3.analytics
        L1_3 = L1_3.newEvent
        L2_3 = "design"
        L3_3 = {}
        L3_3.event_id = "onboardingChest:Coins:enteredMarket"
        L4_3 = L52_2
        L3_3.value = L4_3
        L4_3 = "videos left: "
        L5_3 = L0_1
        L5_3 = L5_3.videosLeft
        if not L5_3 then
          L5_3 = "unknown"
        end
        L4_3 = L4_3 .. L5_3
        L3_3.area = L4_3
        L1_3(L2_3, L3_3)
        L1_3 = L0_1
        L1_3 = L1_3.gotoScene
        L2_3 = "lua.scenes.marketplace"
        L3_3 = L0_3
        L1_3(L2_3, L3_3)
      else
        L0_3 = L0_1
        L0_3 = L0_3.gotoScene
        L1_3 = "lua.scenes.marketplace"
        L0_3(L1_3)
      end
    else
      L0_3 = L0_1
      L0_3 = L0_3.createCustomOverlay
      L1_3 = 1
      L0_3(L1_3)
    end
  end
  
  function L78_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.replayKit
    L0_3 = L0_3.stopAutoRecord
    L0_3()
    L0_3 = L0_1
    L0_3 = L0_3.replayKit
    L0_3 = L0_3.showAutoRecord
    L0_3()
  end
  
  function L79_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.replayKit
    L0_3 = L0_3.stopAutoRecord
    L0_3()
  end
  
  L80_2 = timer
  L80_2 = L80_2.performWithDelay
  L81_2 = 5000
  L82_2 = L79_2
  L80_2 = L80_2(L81_2, L82_2)
  L24_1 = L80_2
  L80_2 = L0_1
  L80_2 = L80_2.newButton
  L81_2 = {}
  L81_2.image = "images/gui/common/buttonClosePopup.png"
  L81_2.width = 43
  L81_2.height = 38
  L81_2.onRelease = L69_2
  L81_2.x = 22
  L81_2.y = 22
  L80_2 = L80_2(L81_2)
  L81_2 = L0_1
  L81_2 = L81_2.newButton
  L82_2 = {}
  L82_2.image = "images/gui/postgame/buttonReplay.png"
  L82_2.width = 90
  L82_2.height = 52
  L82_2.onRelease = L72_2
  L83_2 = display
  L83_2 = L83_2.contentWidth
  L83_2 = L83_2 - 50
  L82_2.x = L83_2
  L82_2.y = 294
  L81_2 = L81_2(L82_2)
  L82_2 = L0_1
  L82_2 = L82_2.newButton
  L83_2 = {}
  L83_2.image = "images/gui/postgame/buttonFriends.png"
  L83_2.width = 55
  L83_2.height = 52
  L83_2.onRelease = L76_2
  L84_2 = L60_2.x
  L83_2.x = L84_2
  L84_2 = L60_2.y
  L83_2.y = L84_2
  L82_2 = L82_2(L83_2)
  L24_2 = L82_2
  L24_2.isVisible = false
  L82_2 = L0_1
  L82_2 = L82_2.newButton
  L83_2 = {}
  L83_2.image = "images/gui/postgame/buttonChat.png"
  L83_2.width = 55
  L83_2.height = 52
  L83_2.onRelease = L67_2
  L84_2 = L59_2.x
  L83_2.x = L84_2
  L84_2 = L59_2.y
  L83_2.y = L84_2
  L82_2 = L82_2(L83_2)
  L82_2.isVisible = false
  L83_2 = L0_1
  L83_2 = L83_2.newButton
  L84_2 = {}
  L84_2.image = "images/gui/postgame/buttonMarket.png"
  L84_2.width = 55
  L84_2.height = 52
  L84_2.onRelease = L77_2
  L84_2.x = 350
  L84_2.y = 294
  L83_2 = L83_2(L84_2)
  L84_2 = nil
  L85_2 = L0_1
  L85_2 = L85_2.onboarding
  L85_2 = L85_2.isActive
  if L85_2 == true then
    L85_2 = L0_1
    L85_2 = L85_2.newButton
    L86_2 = {}
    L86_2.image = "images/gui/common/buttonClosePopup.png"
    L86_2.width = 35
    L86_2.height = 35
    L86_2.onRelease = L71_2
    L86_2.x = 25.5
    L86_2.y = 25.5
    L85_2 = L85_2(L86_2)
    L84_2 = L85_2
  end
  
  function L85_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L0_1
    L0_3 = L0_3.showSocialPopup
    L1_3 = L3_1
    L2_3 = L55_2
    L3_3 = L53_2
    L4_3 = L54_2
    L5_3 = L56_2
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
  end
  
  L86_2 = L0_1
  L86_2 = L86_2.newButton
  L87_2 = {}
  L87_2.image = "images/gui/postgame/photo.png"
  L87_2.width = 30
  L87_2.height = 30
  L87_2.onRelease = L85_2
  L87_2.x = 460
  L87_2.y = 130
  L86_2 = L86_2(L87_2)
  L87_2 = L0_1
  L87_2 = L87_2.newButton
  L88_2 = {}
  L88_2.image = "images/gui/postgame/playRecording.png"
  L88_2.width = 30
  L88_2.height = 30
  L88_2.onRelease = L78_2
  L88_2.x = 424
  L88_2.y = 130
  L87_2 = L87_2(L88_2)
  L87_2.isVisible = false
  L88_2 = L0_1
  L88_2 = L88_2.replayKit
  L88_2 = L88_2.haveAutoRecording
  L88_2 = L88_2()
  if L88_2 then
    L87_2.isVisible = true
  end
  
  function L88_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = {}
    L0_3.isModal = true
    L1_3 = {}
    L1_3.openGlobal = true
    L0_3.params = L1_3
    L1_3 = L0_1
    L1_3 = L1_3.showOverlay
    L2_3 = "lua.overlays.league"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  
  L89_2 = L0_1
  L89_2 = L89_2.newButton
  L90_2 = {}
  L90_2.image = "images/gui/ranking/league/global.png"
  L90_2.width = 22
  L90_2.height = 16
  L90_2.onRelease = L88_2
  L91_2 = L46_2 + 4
  L90_2.x = L91_2
  L91_2 = L49_2 + L50_2
  L91_2 = L91_2 + 9
  L90_2.y = L91_2
  L89_2 = L89_2(L90_2)
  L91_2 = L89_2
  L90_2 = L89_2.scale
  L92_2 = L51_2 - 0.1
  L93_2 = L51_2 - 0.1
  L90_2(L91_2, L92_2, L93_2)
  L89_2.isVisible = false
  
  function L90_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = {}
    L0_3.isModal = true
    L1_3 = L0_1
    L1_3 = L1_3.showOverlay
    L2_3 = "lua.overlays.league"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  
  L91_2 = L0_1
  L91_2 = L91_2.newButton
  L92_2 = {}
  L93_2 = "images/gui/ranking/league/tierS_"
  L94_2 = L0_1
  L94_2 = L94_2.currentLeague
  L95_2 = ".png"
  L93_2 = L93_2 .. L94_2 .. L95_2
  L92_2.image = L93_2
  L92_2.width = 23
  L92_2.height = 22
  L92_2.onRelease = L90_2
  L93_2 = L46_2 + 4
  L92_2.x = L93_2
  L93_2 = L49_2 + L50_2
  L93_2 = L93_2 + 9
  L92_2.y = L93_2
  L91_2 = L91_2(L92_2)
  L93_2 = L91_2
  L92_2 = L91_2.scale
  L94_2 = L51_2 - 0.1
  L95_2 = L51_2 - 0.1
  L92_2(L93_2, L94_2, L95_2)
  L91_2.isVisible = false
  L92_2 = display
  L92_2 = L92_2.newImageRect
  L93_2 = "images/gui/ranking/friendsToggle2.png"
  L94_2 = 28
  L95_2 = 25
  L92_2 = L92_2(L93_2, L94_2, L95_2)
  L92_2.x = L36_2
  L92_2.y = 8
  L92_2.isVisible = false
  
  function L93_2()
    local L0_3, L1_3
    L0_3 = L91_2
    L0_3 = L0_3.isVisible
    if L0_3 then
      L0_3 = L91_2
      L0_3.isVisible = false
      L0_3 = L12_2
      L0_3.isVisible = false
      L0_3 = L92_2
      L0_3.isVisible = true
      L0_3 = L89_2
      L0_3.isVisible = true
      L0_3 = L13_2
      L1_3 = L0_1
      L1_3 = L1_3.data
      L1_3 = L1_3.gameInfo
      L1_3 = L1_3.stats
      L1_3 = L1_3.fe
      L0_3.text = L1_3
    else
      L0_3 = L91_2
      L0_3.isVisible = true
      L0_3 = L12_2
      L0_3.isVisible = true
      L0_3 = L92_2
      L0_3.isVisible = false
      L0_3 = L89_2
      L0_3.isVisible = false
      L0_3 = L13_2
      L1_3 = L0_1
      L1_3 = L1_3.data
      L1_3 = L1_3.gameInfo
      L1_3 = L1_3.stats
      L1_3 = L1_3.a
      L0_3.text = L1_3
    end
  end
  
  L94_2 = L0_1
  L94_2 = L94_2.newButton
  L95_2 = {}
  L95_2.image = "images/gui/ranking/friendsToggle.png"
  L95_2.width = 28
  L95_2.height = 25
  L95_2.onRelease = L93_2
  L95_2.x = L36_2
  L95_2.y = 8
  L94_2 = L94_2(L95_2)
  L94_2.isVisible = false
  L95_2 = 1
  L96_2 = 4
  L97_2 = 1
  for L98_2 = L95_2, L96_2, L97_2 do
    L99_2 = display
    L99_2 = L99_2.newGroup
    L99_2 = L99_2()
    L11_2[L98_2] = L99_2
    L100_2 = L2_2
    L99_2 = L2_2.insert
    L101_2 = L11_2[L98_2]
    L99_2(L100_2, L101_2)
  end
  
  function L95_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L3_3 = true
    L4_3 = L0_1
    L4_3 = L4_3.data
    L4_3 = L4_3.gameInfo
    L4_3 = L4_3.gameType
    if L4_3 == 0 then
      L3_3 = false
    end
    L4_3 = L0_1
    L4_3 = L4_3.data
    L4_3 = L4_3.gameInfo
    L4_3 = L4_3.players
    L4_3 = L4_3[A0_3]
    L4_3 = L4_3.playerId
    L5_3 = L0_1
    L5_3 = L5_3.data
    L5_3 = L5_3.gameInfo
    L5_3 = L5_3.players
    L5_3 = L5_3[A0_3]
    L5_3 = L5_3.avatar
    L6_3 = L0_1
    L6_3 = L6_3.data
    L6_3 = L6_3.gameInfo
    L6_3 = L6_3.players
    L6_3 = L6_3[A0_3]
    L6_3 = L6_3.clanState
    if L6_3 then
      L6_3 = L0_1
      L6_3 = L6_3.data
      L6_3 = L6_3.gameInfo
      L6_3 = L6_3.players
      L6_3 = L6_3[A0_3]
      L6_3 = L6_3.clanState
      L6_3 = L6_3.c
    end
    L7_3 = L15_2
    L8_3 = L6_2
    L8_3 = L8_3.new
    L9_3 = L5_3
    L10_3 = L3_3
    L11_3 = nil
    L12_3 = L6_3
    L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3)
    L7_3[A0_3] = L8_3
    L7_3 = L15_2
    L7_3 = L7_3[A0_3]
    L7_3 = L7_3.getGroup
    L7_3 = L7_3()
    L7_3.xScale = 0.5
    L7_3.yScale = 0.5
    L8_3 = L2_2
    L9_3 = L8_3
    L8_3 = L8_3.insert
    L10_3 = L7_3
    L8_3(L9_3, L10_3)
    L8_3 = nil
    L9_3 = nil
    if A2_3 == 1 then
      L8_3 = 130
      L9_3 = 128
    elseif A2_3 == 2 then
      L8_3 = 46
      L9_3 = 165
    elseif A2_3 == 3 then
      L8_3 = 220
      L9_3 = 172
    elseif A2_3 == 4 then
      L8_3 = 310
      L9_3 = 212
    end
    L10_3 = L9_3 + 40
    L7_3.y = L10_3
    L7_3.x = L8_3
    L10_3 = L0_1
    L10_3 = L10_3.data
    L10_3 = L10_3.gameInfo
    L10_3 = L10_3.players
    L10_3 = L10_3[A0_3]
    L10_3 = L10_3.league
    L11_3 = L0_1
    L11_3 = L11_3.database
    L11_3 = L11_3.getPlayerInformation
    L11_3 = L11_3()
    L11_3 = L11_3.playerId
    if L4_3 == L11_3 then
      L11_3 = L0_1
      L11_3 = L11_3.currentLeague
      L10_3 = L11_3 or L10_3
      if not L11_3 then
        L11_3 = L0_1
        L11_3 = L11_3.data
        L11_3 = L11_3.gameInfo
        L11_3 = L11_3.players
        L11_3 = L11_3[A0_3]
        L10_3 = L11_3.league
      end
    end
    if L10_3 then
      L11_3 = display
      L11_3 = L11_3.newImageRect
      L12_3 = "images/gui/ranking/league/tierS_"
      L13_3 = L10_3
      L14_3 = ".png"
      L12_3 = L12_3 .. L13_3 .. L14_3
      L13_3 = 26
      L14_3 = 26
      L11_3 = L11_3(L12_3, L13_3, L14_3)
      L11_3.anchorX = 1
      L11_3.anchorY = 0
      L12_3 = nil
      L13_3 = nil
      if A2_3 == 1 then
        L12_3 = 130
        L13_3 = 131
      elseif A2_3 == 2 then
        L12_3 = 46
        L13_3 = 166
      elseif A2_3 == 3 then
        L12_3 = 216
        L13_3 = 173
      elseif A2_3 == 4 then
        L12_3 = 310
        L13_3 = 190
      end
      L14_3 = L13_3 + 44
      L11_3.y = L14_3
      L14_3 = L12_3 + 40
      L11_3.x = L14_3
      L14_3 = L2_2
      L15_3 = L14_3
      L14_3 = L14_3.insert
      L16_3 = L11_3
      L14_3(L15_3, L16_3)
    end
    L11_3 = L0_1
    L11_3 = L11_3.data
    L11_3 = L11_3.gameInfo
    L11_3 = L11_3.players
    L11_3 = L11_3[A0_3]
    L11_3.pos = A2_3
    L11_3 = L0_1
    L11_3 = L11_3.data
    L11_3 = L11_3.gameInfo
    L11_3 = L11_3.players
    L11_3 = L11_3[A0_3]
    L11_3.x = L8_3
    L11_3 = L0_1
    L11_3 = L11_3.data
    L11_3 = L11_3.gameInfo
    L11_3 = L11_3.players
    L11_3 = L11_3[A0_3]
    L11_3.y = L9_3
    L11_3 = true
    L12_3 = true
    L13_3 = L0_1
    L13_3 = L13_3.database
    L13_3 = L13_3.isPlayerClanMember
    L14_3 = L4_3
    L13_3 = L13_3(L14_3)
    L13_3 = not L13_3
    L14_3 = L0_1
    L14_3 = L14_3.database
    L14_3 = L14_3.getPlayerInformation
    L14_3 = L14_3()
    L14_3 = L14_3.playerId
    if L4_3 == L14_3 then
      L11_3 = false
      L12_3 = false
      L13_3 = false
      if A2_3 == 1 and L3_3 then
        L14_3 = L0_1
        L14_3 = L14_3.database
        L14_3 = L14_3.updateWinsForAvatar
        L14_3()
        L14_3 = true
        L5_1 = L14_3
      end
      L14_3 = L34_2
      L15_3 = A2_3
      L14_3(L15_3)
    else
      L14_3 = L30_2
      L15_3 = L30_2
      L15_3 = #L15_3
      L15_3 = L15_3 + 1
      L14_3[L15_3] = L4_3
      L14_3 = L0_1
      L14_3 = L14_3.monsterConverter
      L14_3 = L14_3.fromServerFormat
      L15_3 = L5_3
      L14_3 = L14_3(L15_3)
      L15_3 = L14_3[1]
      if L15_3 then
        L15_3 = L14_3[2]
        if L15_3 then
          L15_3 = tonumber
          L16_3 = L14_3[1]
          L15_3 = L15_3(L16_3)
          L16_3 = tonumber
          L17_3 = L14_3[2]
          L16_3 = L16_3(L17_3)
          if L15_3 == 102 and L16_3 == 207 then
            L17_3 = true
            L54_2 = L17_3
          end
        end
      end
      L15_3 = L14_3[3]
      if L15_3 then
        L15_3 = L14_3[5]
        if L15_3 then
          L15_3 = L14_3[7]
          if L15_3 then
            L15_3 = tonumber
            L16_3 = L14_3[3]
            L15_3 = L15_3(L16_3)
            L16_3 = tonumber
            L17_3 = L14_3[5]
            L16_3 = L16_3(L17_3)
            L17_3 = tonumber
            L18_3 = L14_3[7]
            L17_3 = L17_3(L18_3)
            if L15_3 == 327 or L17_3 == 722 then
              L18_3 = true
              L53_2 = L18_3
            end
          end
        end
      end
      L15_3 = L56_2
      L16_3 = L56_2
      L16_3 = #L16_3
      L16_3 = L16_3 + 1
      L17_3 = L0_1
      L17_3 = L17_3.data
      L17_3 = L17_3.gameInfo
      L17_3 = L17_3.players
      L17_3 = L17_3[A0_3]
      L17_3 = L17_3.username
      L15_3[L16_3] = L17_3
    end
    L14_3 = 1
    L15_3 = L16_2
    L15_3 = #L15_3
    L16_3 = 1
    for L17_3 = L14_3, L15_3, L16_3 do
      L18_3 = L16_2
      L18_3 = L18_3[L17_3]
      L18_3 = L18_3.p
      if L4_3 == L18_3 then
        L11_3 = false
        break
      end
    end
    if L11_3 then
      L14_3 = L0_1
      L14_3 = L14_3.data
      L14_3 = L14_3.gameInfo
      L14_3 = L14_3.gameType
      if L14_3 ~= 0 then
        function L14_3()
          local L0_4, L1_4, L2_4
          
          L0_4 = L74_2
          L1_4 = A2_3
          L2_4 = L4_3
          L0_4(L1_4, L2_4)
        end
        
        L15_3 = L18_2
        L16_3 = L0_1
        L16_3 = L16_3.newButton
        L17_3 = {}
        L17_3.image = "images/gui/postgame/buttonFriendsAdd.png"
        L17_3.width = 30
        L17_3.height = 30
        L17_3.onRelease = L14_3
        L18_3 = L8_3 - 15
        L17_3.x = L18_3
        L18_3 = L9_3 + 30
        L17_3.y = L18_3
        L16_3 = L16_3(L17_3)
        L15_3[A2_3] = L16_3
        L15_3 = L18_2
        L15_3 = L15_3[A2_3]
        L15_3.isVisible = false
        L15_3 = L24_2
        L15_3.isVisible = true
        L15_3 = L2_2
        L16_3 = L15_3
        L15_3 = L15_3.insert
        L17_3 = L18_2
        L17_3 = L17_3[A2_3]
        L15_3(L16_3, L17_3)
      end
    end
    if L12_3 then
      L14_3 = L0_1
      L14_3 = L14_3.data
      L14_3 = L14_3.gameInfo
      L14_3 = L14_3.gameType
      if L14_3 ~= 0 then
        function L14_3()
          local L0_4, L1_4, L2_4
          
          L0_4 = L75_2
          L1_4 = A2_3
          L2_4 = L4_3
          L0_4(L1_4, L2_4)
        end
        
        L15_3 = L9_1
        L16_3 = L0_1
        L16_3 = L16_3.newButton
        L17_3 = {}
        L17_3.image = "images/gui/postgame/report/buttonReport.png"
        L17_3.width = 30
        L17_3.height = 30
        L17_3.onRelease = L14_3
        L18_3 = L8_3 + 20
        L17_3.x = L18_3
        L18_3 = L9_3 + 30
        L17_3.y = L18_3
        L16_3 = L16_3(L17_3)
        L15_3[A2_3] = L16_3
        L15_3 = L9_1
        L15_3 = L15_3[A2_3]
        L15_3.isVisible = false
        L15_3 = L24_2
        L15_3.isVisible = true
        L15_3 = L2_2
        L16_3 = L15_3
        L15_3 = L15_3.insert
        L17_3 = L9_1
        L17_3 = L17_3[A2_3]
        L15_3(L16_3, L17_3)
      end
    end
    if L13_3 then
      L14_3 = L0_1
      L14_3 = L14_3.data
      L14_3 = L14_3.gameInfo
      L14_3 = L14_3.gameType
      if L14_3 ~= 0 then
        function L14_3()
          local L0_4, L1_4, L2_4
          
          L0_4 = L73_2
          L1_4 = A2_3
          L2_4 = L4_3
          L0_4(L1_4, L2_4)
        end
        
        L15_3 = L19_2
        L16_3 = L0_1
        L16_3 = L16_3.newButton
        L17_3 = {}
        L17_3.image = "images/gui/postgame/moreAddToClan.png"
        L17_3.width = 30
        L17_3.height = 30
        L17_3.onRelease = L14_3
        L18_3 = L8_3 + 3
        L17_3.x = L18_3
        L17_3.y = L9_3
        L16_3 = L16_3(L17_3)
        L15_3[A2_3] = L16_3
        L15_3 = L19_2
        L15_3 = L15_3[A2_3]
        L15_3.isVisible = false
        L15_3 = L24_2
        L15_3.isVisible = true
        L15_3 = L2_2
        L16_3 = L15_3
        L15_3 = L15_3.insert
        L17_3 = L19_2
        L17_3 = L17_3[A2_3]
        L15_3(L16_3, L17_3)
      end
    end
  end
  
  function L96_2(A0_3)
    local L1_3
    if -1 < A0_3 then
      L1_3 = "+ "
      return L1_3
    else
      L1_3 = "- "
      return L1_3
    end
  end
  
  function L97_2(A0_3)
    local L1_3
    if A0_3 < 0 then
      L1_3 = -1
      return L1_3
    else
      L1_3 = 1
      return L1_3
    end
  end
  
  function L98_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L2_3 = L0_1
    L2_3 = L2_3.data
    L2_3 = L2_3.gameInfo
    L2_3 = L2_3.gameType
    if L2_3 == 0 then
      return
    end
    L2_3 = L43_2
    if not L2_3 then
      L2_3 = L0_1
      L2_3 = L2_3.newButton
      L3_3 = {}
      L3_3.image = "images/gui/clan_v2/clan_support/clanpoint.png"
      L3_3.width = 16
      L3_3.height = 16
      
      function L4_3()
        local L0_4, L1_4
        L0_4 = L0_1
        L0_4 = L0_4.data
        L0_4 = L0_4.clans
        L0_4 = L0_4.inClan
        if L0_4 then
          L0_4 = L0_1
          L0_4 = L0_4.showOverlay
          L1_4 = "lua.overlays.clanChat"
          L0_4(L1_4)
        else
          L0_4 = L0_1
          L0_4 = L0_4.showOverlay
          L1_4 = "lua.overlays.clanIntroduction"
          L0_4(L1_4)
        end
      end
      
      L3_3.onRelease = L4_3
      L4_3 = L46_2
      L3_3.x = L4_3
      L4_3 = L49_2
      L5_3 = L50_2
      L5_3 = L5_3 * 2
      L4_3 = L4_3 + L5_3
      L4_3 = L4_3 + 4
      L3_3.y = L4_3
      L2_3 = L2_3(L3_3)
      L43_2 = L2_3
      L2_3 = L43_2
      L3_3 = L2_3
      L2_3 = L2_3.scale
      L4_3 = L51_2
      L5_3 = L51_2
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = L4_2
      L3_3 = L2_3
      L2_3 = L2_3.insert
      L4_3 = L43_2
      L2_3(L3_3, L4_3)
    end
    if not A0_3 and not A1_3 then
      L2_3 = L0_1
      L2_3 = L2_3.data
      L2_3 = L2_3.clans
      L2_3 = L2_3.inClan
      if not L2_3 then
        L2_3 = L0_1
        L2_3 = L2_3.newText
        L3_3 = {}
        L4_3 = L0_1
        L4_3 = L4_3.localized
        L4_3 = L4_3.get
        L5_3 = "Join a clan to earn clan points"
        L4_3 = L4_3(L5_3)
        L3_3.string = L4_3
        L3_3.size = 10
        L4_3 = L0_1
        L4_3 = L4_3.colors
        L4_3 = L4_3.darkGrey
        L3_3.color = L4_3
        L2_3 = L2_3(L3_3)
        L42_2 = L2_3
        L2_3 = L42_2
        L2_3.anchorX = 0
        L2_3 = L42_2
        L2_3.anchorY = 0.5
        L2_3 = L42_2
        L3_3 = L47_2
        L2_3.x = L3_3
        L2_3 = L42_2
        L3_3 = L49_2
        L4_3 = L50_2
        L4_3 = L4_3 * 2
        L3_3 = L3_3 + L4_3
        L2_3.y = L3_3
        L2_3 = L4_2
        L3_3 = L2_3
        L2_3 = L2_3.insert
        L4_3 = L42_2
        L2_3(L3_3, L4_3)
      else
        L2_3 = L0_1
        L2_3 = L2_3.newText
        L3_3 = {}
        L4_3 = L0_1
        L4_3 = L4_3.localized
        L4_3 = L4_3.get
        L5_3 = "-"
        L4_3 = L4_3(L5_3)
        L3_3.string = L4_3
        L3_3.size = 15
        L4_3 = L0_1
        L4_3 = L4_3.colors
        L4_3 = L4_3.white
        L3_3.color = L4_3
        L2_3 = L2_3(L3_3)
        L42_2 = L2_3
        L2_3 = L42_2
        L2_3.anchorX = 0
        L2_3 = L42_2
        L2_3.anchorY = 0.5
        L2_3 = L42_2
        L3_3 = L47_2
        L2_3.x = L3_3
        L2_3 = L42_2
        L3_3 = L49_2
        L4_3 = L50_2
        L4_3 = L4_3 * 2
        L3_3 = L3_3 + L4_3
        L2_3.y = L3_3
        L2_3 = L4_2
        L3_3 = L2_3
        L2_3 = L2_3.insert
        L4_3 = L42_2
        L2_3(L3_3, L4_3)
      end
    end
    if A1_3 then
      L2_3 = A0_3 - A1_3
      L3_3 = L0_1
      L3_3 = L3_3.newText
      L4_3 = {}
      L4_3.string = L2_3
      L4_3.size = 15
      L5_3 = {}
      L6_3 = 1
      L7_3 = 1
      L8_3 = 1
      L5_3[1] = L6_3
      L5_3[2] = L7_3
      L5_3[3] = L8_3
      L4_3.color = L5_3
      L3_3 = L3_3(L4_3)
      L42_2 = L3_3
      L3_3 = L42_2
      L3_3.anchorX = 0
      L3_3 = L42_2
      L3_3.anchorY = 0.5
      L3_3 = L42_2
      L4_3 = L47_2
      L3_3.x = L4_3
      L3_3 = L42_2
      L4_3 = L49_2
      L5_3 = L50_2
      L5_3 = L5_3 * 2
      L4_3 = L4_3 + L5_3
      L3_3.y = L4_3
      L3_3 = L4_2
      L4_3 = L3_3
      L3_3 = L3_3.insert
      L5_3 = L42_2
      L3_3(L4_3, L5_3)
      L3_3 = L0_1
      L3_3 = L3_3.newText
      L4_3 = {}
      L4_3.string = ""
      L4_3.size = 15
      L5_3 = {}
      L6_3 = 1
      L7_3 = 1
      L8_3 = 1
      L5_3[1] = L6_3
      L5_3[2] = L7_3
      L5_3[3] = L8_3
      L4_3.color = L5_3
      L3_3 = L3_3(L4_3)
      L41_2 = L3_3
      L3_3 = L41_2
      L3_3.anchorX = 1
      L3_3 = L41_2
      L3_3.anchorY = 0.5
      L3_3 = L41_2
      L4_3 = L48_2
      L3_3.x = L4_3
      L3_3 = L41_2
      L4_3 = L49_2
      L5_3 = L50_2
      L5_3 = L5_3 * 2
      L4_3 = L4_3 + L5_3
      L3_3.y = L4_3
      L3_3 = L4_2
      L4_3 = L3_3
      L3_3 = L3_3.insert
      L5_3 = L41_2
      L3_3(L4_3, L5_3)
      L3_3 = 0
      L4_3 = 30
      L5_3 = math
      L5_3 = L5_3.round
      L6_3 = A1_3 / L4_3
      L5_3 = L5_3(L6_3)
      L6_3 = 0
      L7_3 = 0
      
      function L8_3()
        local L0_4, L1_4, L2_4
        L0_4 = L6_3
        L0_4 = L0_4 + 1
        L6_3 = L0_4
        L0_4 = L2_3
        L1_4 = L5_3
        L0_4 = L0_4 + L1_4
        L2_3 = L0_4
        L0_4 = L3_3
        L1_4 = L5_3
        L0_4 = L0_4 + L1_4
        L3_3 = L0_4
        L0_4 = L6_3
        L1_4 = L4_3
        if L0_4 == L1_4 then
          L0_4 = A0_3
          L2_3 = L0_4
          L0_4 = A1_3
          L3_3 = L0_4
        end
        L0_4 = L42_2
        if L0_4 then
          L0_4 = L42_2
          L1_4 = ""
          L2_4 = L2_3
          L1_4 = L1_4 .. L2_4
          L0_4.text = L1_4
          L0_4 = L41_2
          L1_4 = " + "
          L2_4 = L3_3
          L1_4 = L1_4 .. L2_4
          L0_4.text = L1_4
        end
      end
      
      function L9_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = A1_3
        if L0_4 == 0 then
          L0_4 = L41_2
          L0_4.text = "+0"
        else
          L0_4 = timer
          L0_4 = L0_4.performWithDelay
          L1_4 = 40
          L2_4 = L8_3
          L3_4 = L4_3
          L0_4 = L0_4(L1_4, L2_4, L3_4)
          L45_2 = L0_4
        end
      end
      
      L10_3 = timer
      L10_3 = L10_3.performWithDelay
      L11_3 = 650
      L12_3 = L9_3
      L13_3 = 1
      L10_3 = L10_3(L11_3, L12_3, L13_3)
      L44_2 = L10_3
    end
  end
  
  function L99_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    if A1_3 then
      L3_3 = L0_1
      L3_3 = L3_3.newText
      L4_3 = {}
      L4_3.string = ""
      L4_3.size = 15
      L5_3 = {}
      L6_3 = 1
      L7_3 = 1
      L8_3 = 1
      L5_3[1] = L6_3
      L5_3[2] = L7_3
      L5_3[3] = L8_3
      L4_3.color = L5_3
      L3_3 = L3_3(L4_3)
      L12_2 = L3_3
      L3_3 = L12_2
      L3_3.anchorX = 1
      L3_3 = L12_2
      L3_3.anchorY = 0.5
      L3_3 = L12_2
      L4_3 = L48_2
      L3_3.x = L4_3
      L3_3 = L12_2
      L4_3 = L49_2
      L5_3 = L50_2
      L4_3 = L4_3 + L5_3
      L3_3.y = L4_3
      L3_3 = L4_2
      L4_3 = L3_3
      L3_3 = L3_3.insert
      L5_3 = L12_2
      L3_3(L4_3, L5_3)
      L3_3 = L4_2
      L4_3 = L3_3
      L3_3 = L3_3.insert
      L5_3 = L91_2
      L3_3(L4_3, L5_3)
      L3_3 = L4_2
      L4_3 = L3_3
      L3_3 = L3_3.insert
      L5_3 = L89_2
      L3_3(L4_3, L5_3)
      L3_3 = L4_2
      L4_3 = L3_3
      L3_3 = L3_3.insert
      L5_3 = L94_2
      L3_3(L4_3, L5_3)
      L3_3 = L4_2
      L4_3 = L3_3
      L3_3 = L3_3.insert
      L5_3 = L92_2
      L3_3(L4_3, L5_3)
      L3_3 = L0_1
      L3_3 = L3_3.data
      L3_3 = L3_3.gameInfo
      L3_3 = L3_3.gameType
      if L3_3 ~= 3 then
        L3_3 = L0_1
        L3_3 = L3_3.data
        L3_3 = L3_3.gameInfo
        L3_3 = L3_3.gameType
        if L3_3 ~= 4 then
          goto lbl_63
        end
      end
      L3_3 = L89_2
      L3_3.isVisible = true
      goto lbl_65
      ::lbl_63::
      L3_3 = L91_2
      L3_3.isVisible = true
      ::lbl_65::
      L3_3 = A0_3 - A1_3
      L4_3 = L0_1
      L4_3 = L4_3.newText
      L5_3 = {}
      L5_3.string = L3_3
      L5_3.size = 15
      L6_3 = {}
      L7_3 = 1
      L8_3 = 1
      L9_3 = 1
      L6_3[1] = L7_3
      L6_3[2] = L8_3
      L6_3[3] = L9_3
      L5_3.color = L6_3
      L4_3 = L4_3(L5_3)
      L13_2 = L4_3
      L4_3 = L13_2
      L4_3.anchorX = 0
      L4_3 = L13_2
      L4_3.anchorY = 0.5
      L4_3 = L13_2
      L5_3 = L47_2
      L4_3.x = L5_3
      L4_3 = L13_2
      L5_3 = L49_2
      L6_3 = L50_2
      L5_3 = L5_3 + L6_3
      L4_3.y = L5_3
      L4_3 = L4_2
      L5_3 = L4_3
      L4_3 = L4_3.insert
      L6_3 = L13_2
      L4_3(L5_3, L6_3)
      L4_3 = 0
      
      function L5_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = L4_3
        L0_4 = L0_4 + 1
        L4_3 = L0_4
        L0_4 = math
        L0_4 = L0_4.floor
        L1_4 = L3_3
        L2_4 = L97_2
        L3_4 = A1_3
        L2_4 = L2_4(L3_4)
        L1_4 = L1_4 + L2_4
        L0_4 = L0_4(L1_4)
        L3_3 = L0_4
        L0_4 = L12_2
        L1_4 = L96_2
        L2_4 = A1_3
        L1_4 = L1_4(L2_4)
        L2_4 = L4_3
        L1_4 = L1_4 .. L2_4
        L0_4.text = L1_4
        L0_4 = L4_3
        L1_4 = math
        L1_4 = L1_4.abs
        L2_4 = A1_3
        L1_4 = L1_4(L2_4)
        if L0_4 == L1_4 then
          L0_4 = A0_3
          L3_3 = L0_4
          L0_4 = L0_1
          L0_4 = L0_4.contextualOnboarding
          L0_4 = L0_4.isActive
          if L0_4 == true then
            L0_4 = L0_1
            L0_4 = L0_4.data
            L0_4 = L0_4.gameInfo
            L0_4 = L0_4.gameType
            L1_4 = L0_4 == 1 or L0_4 == 3 or L0_4 == 4
            if L1_4 then
              L2_4 = L0_1
              L2_4 = L2_4.gamesPlayed
              if L2_4 == 1 then
                L2_4 = L0_1
                L2_4 = L2_4.contextualOnboarding
                L2_4 = L2_4.isPartActive
                L3_4 = 3
                L2_4 = L2_4(L3_4)
                if L2_4 then
                  L2_4 = L0_1
                  L2_4 = L2_4.contextualOnboarding
                  L2_4 = L2_4.firstGameCompleted
                  L3_4 = L2_2
                  L2_4(L3_4)
                  L2_4 = L0_1
                  L2_4 = L2_4.contextualOnboarding
                  L2_4 = L2_4.setPartDone
                  L3_4 = 3
                  L2_4(L3_4)
                end
              end
            end
            L2_4 = L0_1
            L2_4 = L2_4.database
            L2_4 = L2_4.getMoney
            L2_4 = L2_4()
            if 250 <= L2_4 then
              L2_4 = L0_1
              L2_4 = L2_4.contextualOnboarding
              L2_4 = L2_4.isPartActive
              L3_4 = 2
              L2_4 = L2_4(L3_4)
              if L2_4 then
              end
            end
          end
          L0_4 = L0_1
          L0_4 = L0_4.data
          L0_4 = L0_4.gameInfo
          L0_4 = L0_4.gameType
          if L0_4 == 1 then
            L0_4 = L0_1
            L0_4 = L0_4.data
            L0_4 = L0_4.gameInfo
            L0_4 = L0_4.stats
            L0_4 = L0_4.fe
            if L0_4 then
            end
          end
        end
        L0_4 = L13_2
        if L0_4 then
          L0_4 = L13_2
          L1_4 = L3_3
          L0_4.text = L1_4
          L0_4 = L4_2
          L1_4 = L0_4
          L0_4 = L0_4.insert
          L2_4 = L13_2
          L0_4(L1_4, L2_4)
        end
      end
      
      function L6_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4
        L0_4 = A1_3
        if L0_4 == 0 then
          L0_4 = L12_2
          L0_4.text = "+0"
          L0_4 = L0_1
          L0_4 = L0_4.data
          L0_4 = L0_4.gameInfo
          L0_4 = L0_4.gameType
          if L0_4 == 1 then
            L0_4 = L0_1
            L0_4 = L0_4.data
            L0_4 = L0_4.gameInfo
            L0_4 = L0_4.stats
            L0_4 = L0_4.fe
            if L0_4 then
            end
          end
        else
          L0_4 = timer
          L0_4 = L0_4.performWithDelay
          L1_4 = 40
          L2_4 = L5_3
          L3_4 = math
          L3_4 = L3_4.abs
          L4_4 = A1_3
          L3_4, L4_4 = L3_4(L4_4)
          L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4)
          L23_2 = L0_4
        end
      end
      
      L7_3 = timer
      L7_3 = L7_3.performWithDelay
      L8_3 = 650
      L9_3 = L6_3
      L10_3 = 1
      L7_3 = L7_3(L8_3, L9_3, L10_3)
      L22_2 = L7_3
    end
  end
  
  function L100_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = {}
    L2_3 = L52_2
    L1_3.targetPosition = L2_3
    L1_3.startPosition = 5
    L2_3 = tonumber
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L1_3.value = L2_3
    L1_3.imageName = "gem_small"
    L2_3 = L2_1
    L2_3 = L2_3.createCoinReward
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    L32_2 = L2_3
    L2_3 = L32_2
    L2_3 = L2_3.animateCoins
    L2_3()
    L2_3 = L15_1
    L3_3 = L2_3
    L2_3 = L2_3.insert
    L4_3 = L32_2
    L2_3(L3_3, L4_3)
  end
  
  L14_1 = L100_2
  
  function L100_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    if A0_3 then
      L4_3 = L0_1
      L4_3 = L4_3.database
      L4_3 = L4_3.setMoney
      L5_3 = A0_3
      L4_3(L5_3)
    end
    if not A3_3 then
      A3_3 = 0
    end
    if A1_3 then
      L4_3 = L40_2
      if not L4_3 then
        L4_3 = L0_1
        L4_3 = L4_3.newButton
        L5_3 = {}
        L5_3.image = "images/gui/postgame/iconCoin.png"
        L5_3.width = 16
        L5_3.height = 16
        L6_3 = L77_2
        L5_3.onRelease = L6_3
        L6_3 = L46_2
        L5_3.x = L6_3
        L6_3 = L49_2
        L5_3.y = L6_3
        L4_3 = L4_3(L5_3)
        L40_2 = L4_3
        L4_3 = L40_2
        L5_3 = L4_3
        L4_3 = L4_3.scale
        L6_3 = L51_2
        L7_3 = L51_2
        L4_3(L5_3, L6_3, L7_3)
        L4_3 = L4_2
        L5_3 = L4_3
        L4_3 = L4_3.insert
        L6_3 = L40_2
        L4_3(L5_3, L6_3)
      end
      L4_3 = L38_2
      if not L4_3 then
        L4_3 = L0_1
        L4_3 = L4_3.newText
        L5_3 = {}
        L5_3.string = ""
        L5_3.size = 15
        L6_3 = {}
        L7_3 = 1
        L8_3 = 1
        L9_3 = 1
        L6_3[1] = L7_3
        L6_3[2] = L8_3
        L6_3[3] = L9_3
        L5_3.color = L6_3
        L4_3 = L4_3(L5_3)
        L38_2 = L4_3
        L4_3 = L38_2
        L4_3.anchorX = 1
        L4_3 = L38_2
        L4_3.anchorY = 0.5
        L4_3 = L38_2
        L5_3 = L48_2
        L4_3.x = L5_3
        L4_3 = L38_2
        L5_3 = L49_2
        L4_3.y = L5_3
        L4_3 = L4_2
        L5_3 = L4_3
        L4_3 = L4_3.insert
        L6_3 = L38_2
        L4_3(L5_3, L6_3)
      end
      L4_3 = A0_3 - A1_3
      L5_3 = L39_2
      if not L5_3 then
        L5_3 = L0_1
        L5_3 = L5_3.newText
        L6_3 = {}
        L6_3.string = L4_3
        L6_3.size = 15
        L7_3 = {}
        L8_3 = 1
        L9_3 = 1
        L10_3 = 1
        L7_3[1] = L8_3
        L7_3[2] = L9_3
        L7_3[3] = L10_3
        L6_3.color = L7_3
        L5_3 = L5_3(L6_3)
        L39_2 = L5_3
        L5_3 = L39_2
        L5_3.anchorX = 0
        L5_3 = L39_2
        L5_3.anchorY = 0.5
        L5_3 = L39_2
        L6_3 = L47_2
        L5_3.x = L6_3
        L5_3 = L39_2
        L6_3 = L49_2
        L5_3.y = L6_3
        L5_3 = L4_2
        L6_3 = L5_3
        L5_3 = L5_3.insert
        L7_3 = L39_2
        L5_3(L6_3, L7_3)
      end
      L5_3 = A1_3
      L6_3 = L0_1
      L6_3 = L6_3.data
      L6_3 = L6_3.gameInfo
      L6_3 = L6_3.stats
      L6_3 = L6_3.fa
      if L6_3 then
        L6_3 = math
        L6_3 = L6_3.floor
        L7_3 = L5_3 / 2
        L6_3 = L6_3(L7_3)
        L5_3 = L6_3
      end
      L6_3 = {}
      L6_3.targetX = 164
      L7_3 = display
      L7_3 = L7_3.contentHeight
      L7_3 = L7_3 - 48
      L6_3.targetY = L7_3
      L6_3.startPosition = A2_3
      L6_3.value = L5_3
      L7_3 = L2_1
      L7_3 = L7_3.createCoinReward
      L8_3 = L6_3
      L7_3 = L7_3(L8_3)
      L31_2 = L7_3
      L7_3 = L31_2
      L7_3 = L7_3.animateCoins
      L7_3()
      L7_3 = L15_1
      L8_3 = L7_3
      L7_3 = L7_3.insert
      L9_3 = L31_2
      L7_3(L8_3, L9_3)
      L7_3 = A3_3
      L8_3 = 1
      L9_3 = 30
      if A1_3 < 30 then
        L9_3 = A1_3
      end
      if 30 < A1_3 then
        L8_3 = A1_3 / 30
      end
      L10_3 = 0
      
      function L11_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = L10_3
        L0_4 = L0_4 + 1
        L10_3 = L0_4
        L0_4 = L7_3
        L1_4 = L8_3
        L0_4 = L0_4 + L1_4
        L7_3 = L0_4
        L0_4 = L4_3
        L1_4 = L8_3
        L0_4 = L0_4 + L1_4
        L4_3 = L0_4
        L0_4 = L10_3
        L1_4 = L9_3
        if L0_4 == L1_4 then
          L0_4 = A0_3
          L4_3 = L0_4
          L0_4 = A1_3
          L1_4 = A3_3
          L0_4 = L0_4 + L1_4
          L7_3 = L0_4
          L0_4 = L0_1
          L0_4 = L0_4.audio
          L0_4 = L0_4.stop
          L1_4 = L4_1
          L0_4(L1_4)
          L0_4 = L0_1
          L0_4 = L0_4.audio
          L0_4 = L0_4.play
          L1_4 = "coins_end"
          L2_4 = {}
          L3_4 = L4_1
          L2_4.channel = L3_4
          L0_4(L1_4, L2_4)
        end
        L0_4 = L39_2
        if L0_4 then
          L0_4 = L38_2
          L1_4 = " + "
          L2_4 = math
          L2_4 = L2_4.round
          L3_4 = L7_3
          L2_4 = L2_4(L3_4)
          L1_4 = L1_4 .. L2_4
          L0_4.text = L1_4
          L0_4 = L39_2
          L1_4 = math
          L1_4 = L1_4.round
          L2_4 = L4_3
          L1_4 = L1_4(L2_4)
          L0_4.text = L1_4
        end
      end
      
      function L12_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = A1_3
        if L0_4 == 0 then
          L0_4 = L0_1
          L0_4 = L0_4.audio
          L0_4 = L0_4.stop
          L1_4 = L4_1
          L0_4(L1_4)
          L0_4 = L0_1
          L0_4 = L0_4.audio
          L0_4 = L0_4.play
          L1_4 = "coins_end"
          L2_4 = {}
          L3_4 = L4_1
          L2_4.channel = L3_4
          L0_4(L1_4, L2_4)
          L0_4 = L38_2
          L0_4.text = "+0"
        else
          L0_4 = L0_1
          L0_4 = L0_4.audio
          L0_4 = L0_4.play
          L1_4 = "coins"
          L2_4 = {}
          L3_4 = L4_1
          L2_4.channel = L3_4
          L2_4.loops = -1
          L2_4.fadein = 500
          L0_4(L1_4, L2_4)
          L0_4 = timer
          L0_4 = L0_4.performWithDelay
          L1_4 = 50
          L2_4 = L11_3
          L3_4 = L9_3
          L0_4 = L0_4(L1_4, L2_4, L3_4)
          L21_2 = L0_4
        end
      end
      
      L13_3 = timer
      L13_3 = L13_3.performWithDelay
      L14_3 = 650
      L15_3 = L12_3
      L16_3 = 1
      L13_3 = L13_3(L14_3, L15_3, L16_3)
      L20_2 = L13_3
    end
  end
  
  L13_1 = L100_2
  
  function L34_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = L0_1
    L1_3 = L1_3.data
    L1_3 = L1_3.gameInfo
    L1_3 = L1_3.stats
    if L1_3 then
      L2_3 = L1_3.a
      if L2_3 then
        L2_3 = L1_3.r
        if L2_3 then
          L2_3 = L1_3.g
          if L2_3 then
            L2_3 = L0_1
            L2_3 = L2_3.league
            if L2_3 then
              L2_3 = L99_2
              L3_3 = L0_1
              L3_3 = L3_3.league
              L3_3 = L3_3.currentRanking
              L4_3 = L0_1
              L4_3 = L4_3.league
              L4_3 = L4_3.currentRanking
              L5_3 = L1_3.g
              L5_3 = L5_3 * 50
              L2_3(L3_3, L4_3, L5_3)
            else
              L2_3 = L99_2
              L3_3 = L1_3.a
              L4_3 = L1_3.r
              L5_3 = L1_3.g
              L5_3 = L5_3 * 50
              L2_3(L3_3, L4_3, L5_3)
            end
          end
        end
      end
      L2_3 = L1_3.h
      if L2_3 then
        L2_3 = L1_3.g
        if L2_3 then
          L2_3 = L13_1
          L3_3 = L1_3.h
          L4_3 = L1_3.g
          L5_3 = A0_3
          L2_3(L3_3, L4_3, L5_3)
          L2_3 = tonumber
          L3_3 = L1_3.g
          L2_3 = L2_3(L3_3)
          L3_3 = L0_1
          L3_3 = L3_3.storeConfig
          L3_3 = L3_3.ownsItem
          L4_3 = 1001
          L3_3 = L3_3(L4_3)
          if L3_3 then
            L2_3 = L2_3 / 2
            L3_3 = L0_1
            L3_3 = L3_3.analytics
            L3_3 = L3_3.addResourceEvent
            L4_3 = "Source"
            L5_3 = "coin"
            L6_3 = L2_3
            L7_3 = "boost"
            L8_3 = "doublecoin"
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
          end
          L3_3 = L0_1
          L3_3 = L3_3.analytics
          L3_3 = L3_3.addResourceEvent
          L4_3 = "Source"
          L5_3 = "coin"
          L6_3 = L2_3
          L7_3 = "rewards"
          L8_3 = "gameplay"
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
        end
      end
      L2_3 = L98_2
      L3_3 = L1_3.fi
      L4_3 = L1_3.fh
      L2_3(L3_3, L4_3)
    end
  end
  
  function L100_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = ""
    L2_3 = A0_3
    A0_3 = L1_3 .. L2_3
    L1_3 = string
    L1_3 = L1_3.find
    L2_3 = A0_3
    L3_3 = "%."
    L1_3 = L1_3(L2_3, L3_3)
    if L1_3 then
      L2_3 = L1_3 + 2
      L3_3 = string
      L3_3 = L3_3.len
      L4_3 = A0_3
      L3_3 = L3_3(L4_3)
      if L2_3 < L3_3 then
        L2_3 = ""
        L4_3 = A0_3
        L3_3 = A0_3.sub
        L5_3 = 1
        L6_3 = L1_3 + 2
        L3_3 = L3_3(L4_3, L5_3, L6_3)
        A0_3 = L2_3 .. L3_3
      else
        L2_3 = L1_3 + 2
        L3_3 = string
        L3_3 = L3_3.len
        L4_3 = A0_3
        L3_3 = L3_3(L4_3)
        if L2_3 == L3_3 then
        else
          L2_3 = L1_3 + 1
          L3_3 = string
          L3_3 = L3_3.len
          L4_3 = A0_3
          L3_3 = L3_3(L4_3)
          if L2_3 == L3_3 then
            L2_3 = A0_3
            L3_3 = "0"
            A0_3 = L2_3 .. L3_3
          else
            L2_3 = string
            L2_3 = L2_3.len
            L3_3 = A0_3
            L2_3 = L2_3(L3_3)
            if L1_3 == L2_3 then
              L2_3 = A0_3
              L3_3 = "00"
              A0_3 = L2_3 .. L3_3
            end
          end
        end
      end
    else
      L2_3 = A0_3
      L3_3 = ".00"
      A0_3 = L2_3 .. L3_3
    end
    if A0_3 == "0.00" then
      A0_3 = "0.01"
    end
    return A0_3
  end
  
  L101_2 = {}
  L102_2 = {}
  
  function L103_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3
    L35_2 = A0_3
    L1_3 = L35_2
    if L1_3 then
      L1_3 = L35_2
      L1_3 = #L1_3
      if L1_3 < 5 then
        L1_3 = nil
        L2_3 = table
        L2_3 = L2_3.sort
        L3_3 = L35_2
        
        function L4_3(A0_4, A1_4)
          local L2_4, L3_4
          L2_4 = A0_4.goalTime
          L3_4 = A1_4.goalTime
          L2_4 = L2_4 < L3_4
          return L2_4
        end
        
        L2_3(L3_3, L4_3)
        L2_3 = L35_2
        L2_3 = L2_3[1]
        L2_3 = L2_3.goalTime
        L3_3 = math
        L3_3 = L3_3.round
        L4_3 = L2_3
        L3_3 = L3_3(L4_3)
        L2_3 = L3_3
        L2_3 = L2_3 / 1000
        L1_3 = L2_3
        L3_3 = 1
        L4_3 = L35_2
        L4_3 = #L4_3
        L4_3 = L4_3 - 1
        L5_3 = 1
        for L6_3 = L3_3, L4_3, L5_3 do
          L7_3 = L35_2
          L7_3 = L7_3[L6_3]
          L7_3 = L7_3.goalTime
          L8_3 = L35_2
          L9_3 = L6_3 + 1
          L8_3 = L8_3[L9_3]
          L8_3 = L8_3.goalTime
          if L7_3 >= L8_3 then
            L7_3 = L35_2
            L8_3 = L6_3 + 1
            L7_3 = L7_3[L8_3]
            L8_3 = L35_2
            L8_3 = L8_3[L6_3]
            L8_3 = L8_3.goalTime
            L8_3 = L8_3 + 0.01
            L7_3.goalTime = L8_3
          end
        end
        L3_3 = nil
        L4_3 = 1
        L5_3 = L35_2
        L5_3 = #L5_3
        L6_3 = 1
        for L7_3 = L4_3, L5_3, L6_3 do
          L8_3 = L35_2
          L8_3 = L8_3[L7_3]
          L8_3 = L8_3.username
          L9_3 = L35_2
          L9_3 = L9_3[L7_3]
          L9_3 = L9_3.goalTime
          L10_3 = L35_2
          L10_3 = L10_3[L7_3]
          L10_3 = L10_3.playerId
          L11_3 = L35_2
          L11_3 = L11_3[L7_3]
          L11_3 = L11_3.league
          L12_3 = L35_2
          L12_3 = L12_3[L7_3]
          L12_3 = L12_3.index
          L13_3 = nil
          L14_3 = L0_1
          L14_3 = L14_3.data
          L14_3 = L14_3.gameInfo
          L14_3 = L14_3.players
          if L14_3 then
            L15_3 = 1
            L16_3 = #L14_3
            L17_3 = 1
            for L18_3 = L15_3, L16_3, L17_3 do
              L19_3 = L14_3[L18_3]
              L19_3 = L19_3.playerId
              if L19_3 == L10_3 then
                L19_3 = L14_3[L18_3]
                L13_3 = L19_3.clanState
              end
            end
          end
          if L12_3 == nil then
            L12_3 = L7_3
          end
          L15_3 = false
          L16_3 = L0_1
          L16_3 = L16_3.database
          L16_3 = L16_3.getPlayerInformation
          L16_3 = L16_3()
          L16_3 = L16_3.playerId
          L16_3 = L10_3 == L16_3
          if L16_3 then
            L3_3 = L7_3
            L52_2 = L7_3
            L17_3 = L63_2
            L18_3 = L7_3
            L17_3(L18_3)
          end
          if L16_3 then
            L17_3 = L0_1
            L17_3 = L17_3.data
            L17_3 = L17_3.gameInfo
            L17_3 = L17_3.crazyModePostLobby
            if not L17_3 then
              if L7_3 == 1 then
                L17_3 = true
                L55_2 = L17_3
              end
              L17_3 = L0_1
              L17_3 = L17_3.bestLevelTimes
              if L17_3 then
                L17_3 = L0_1
                L17_3 = L17_3.data
                L17_3 = L17_3.gameInfo
                L17_3 = L17_3.gameType
                if L17_3 ~= 0 then
                  L17_3 = L0_1
                  L17_3 = L17_3.bestLevelTimes
                  L18_3 = ""
                  L19_3 = L0_1
                  L19_3 = L19_3.data
                  L19_3 = L19_3.gameInfo
                  L19_3 = L19_3.map
                  L18_3 = L18_3 .. L19_3
                  L17_3 = L17_3[L18_3]
                  if L17_3 then
                    if L9_3 < L17_3 then
                      L18_3 = L0_1
                      L18_3 = L18_3.bestLevelTimes
                      L19_3 = ""
                      L20_3 = L0_1
                      L20_3 = L20_3.data
                      L20_3 = L20_3.gameInfo
                      L20_3 = L20_3.map
                      L19_3 = L19_3 .. L20_3
                      L18_3[L19_3] = L9_3
                      L15_3 = true
                    else
                    end
                  else
                    L18_3 = L0_1
                    L18_3 = L18_3.bestLevelTimes
                    L19_3 = ""
                    L20_3 = L0_1
                    L20_3 = L20_3.data
                    L20_3 = L20_3.gameInfo
                    L20_3 = L20_3.map
                    L19_3 = L19_3 .. L20_3
                    L18_3[L19_3] = L9_3
                    L15_3 = true
                  end
                end
              end
            end
          end
          L17_3 = math
          L17_3 = L17_3.round
          L18_3 = L9_3
          L17_3 = L17_3(L18_3)
          L9_3 = L17_3
          L9_3 = L9_3 / 1000
          L17_3 = nil
          L18_3 = nil
          L19_3 = nil
          if L15_3 then
            L20_3 = L100_2
            L21_3 = L9_3
            L20_3 = L20_3(L21_3)
            L21_3 = " s"
            L19_3 = L20_3 .. L21_3
          end
          L20_3 = L8_3
          if L13_3 then
            L21_3 = L13_3.a
            L22_3 = "."
            L23_3 = L20_3
            L20_3 = L21_3 .. L22_3 .. L23_3
          end
          L21_3 = L0_1
          L21_3 = L21_3.fitText
          L22_3 = L20_3
          L23_3 = 15
          L24_3 = 105
          L21_3 = L21_3(L22_3, L23_3, L24_3)
          L20_3 = L21_3
          if L7_3 == 1 then
            L21_3 = L100_2
            L22_3 = L9_3
            L21_3 = L21_3(L22_3)
            L9_3 = L21_3
            L21_3 = L7_3
            L22_3 = ". "
            L23_3 = L20_3
            L17_3 = L21_3 .. L22_3 .. L23_3
            L21_3 = L9_3
            L22_3 = " s"
            L18_3 = L21_3 .. L22_3
          elseif 999999 < L9_3 then
            L21_3 = L7_3
            L22_3 = ". "
            L23_3 = L20_3
            L17_3 = L21_3 .. L22_3 .. L23_3
            L21_3 = L0_1
            L21_3 = L21_3.localized
            L21_3 = L21_3.get
            L22_3 = "PlayerDisconnected"
            L21_3 = L21_3(L22_3)
            L18_3 = L21_3
          else
            L21_3 = ""
            L22_3 = L9_3 - L1_3
            L21_3 = L21_3 .. L22_3
            L22_3 = L100_2
            L23_3 = L21_3
            L22_3 = L22_3(L23_3)
            L21_3 = L22_3
            L22_3 = L7_3
            L23_3 = ". "
            L24_3 = L20_3
            L17_3 = L22_3 .. L23_3 .. L24_3
            L22_3 = " + "
            L23_3 = L21_3
            L24_3 = " s"
            L18_3 = L22_3 .. L23_3 .. L24_3
          end
          L21_3 = L101_2
          L22_3 = L0_1
          L22_3 = L22_3.newText
          L23_3 = {}
          L23_3.string = L17_3
          L23_3.size = 15
          L24_3 = {}
          L25_3 = 1
          L26_3 = 1
          L27_3 = 1
          L24_3[1] = L25_3
          L24_3[2] = L26_3
          L24_3[3] = L27_3
          L23_3.color = L24_3
          L23_3.ax = 0
          L23_3.ay = 0
          L22_3 = L22_3(L23_3)
          L21_3[L7_3] = L22_3
          L21_3 = L101_2
          L21_3 = L21_3[L7_3]
          L22_3 = display
          L22_3 = L22_3.contentWidth
          L22_3 = L22_3 * 0.4
          L21_3.x = L22_3
          L21_3 = L101_2
          L21_3 = L21_3[L7_3]
          L22_3 = display
          L22_3 = L22_3.contentHeight
          L22_3 = L22_3 * 0.2
          L23_3 = L7_3 * 0.3
          L22_3 = L22_3 * L23_3
          L21_3.y = L22_3
          L21_3 = L14_2
          L22_3 = L21_3
          L21_3 = L21_3.insert
          L23_3 = L101_2
          L23_3 = L23_3[L7_3]
          L21_3(L22_3, L23_3)
          L21_3 = L102_2
          L22_3 = L0_1
          L22_3 = L22_3.newText
          L23_3 = {}
          L23_3.string = L18_3
          L23_3.size = 15
          L24_3 = {}
          L25_3 = 1
          L26_3 = 1
          L27_3 = 1
          L24_3[1] = L25_3
          L24_3[2] = L26_3
          L24_3[3] = L27_3
          L23_3.color = L24_3
          L23_3.ax = 1
          L23_3.ay = 0
          L22_3 = L22_3(L23_3)
          L21_3[L7_3] = L22_3
          L21_3 = L102_2
          L21_3 = L21_3[L7_3]
          L22_3 = display
          L22_3 = L22_3.contentWidth
          L22_3 = L22_3 * 0.75
          L21_3.x = L22_3
          L21_3 = L102_2
          L21_3 = L21_3[L7_3]
          L22_3 = L101_2
          L22_3 = L22_3[L7_3]
          L22_3 = L22_3.y
          L21_3.y = L22_3
          L21_3 = L14_2
          L22_3 = L21_3
          L21_3 = L21_3.insert
          L23_3 = L102_2
          L23_3 = L23_3[L7_3]
          L21_3(L22_3, L23_3)
          
          function L21_3(A0_4)
            local L1_4, L2_4, L3_4
            L1_4 = A0_4.text
            L2_4 = string
            L2_4 = L2_4.upper
            L3_4 = L17_3
            L2_4 = L2_4(L3_4)
            if L1_4 == L2_4 then
              L1_4 = L0_1
              L1_4 = L1_4.localized
              L1_4 = L1_4.get
              L2_4 = "New Best Time"
              L1_4 = L1_4(L2_4)
              A0_4.text = L1_4
              L1_4 = L102_2
              L2_4 = L7_3
              L1_4 = L1_4[L2_4]
              L2_4 = string
              L2_4 = L2_4.upper
              L3_4 = L19_3
              L2_4 = L2_4(L3_4)
              L1_4.text = L2_4
            else
              L1_4 = string
              L1_4 = L1_4.upper
              L2_4 = L17_3
              L1_4 = L1_4(L2_4)
              A0_4.text = L1_4
              L1_4 = L102_2
              L2_4 = L7_3
              L1_4 = L1_4[L2_4]
              L2_4 = string
              L2_4 = L2_4.upper
              L3_4 = L18_3
              L2_4 = L2_4(L3_4)
              L1_4.text = L2_4
            end
          end
          
          if L15_3 then
            L22_3 = display
            L22_3 = L22_3.newImageRect
            L23_3 = "images/gui/postgame/bestTimeBG.png"
            L24_3 = 21
            L25_3 = 31
            L22_3 = L22_3(L23_3, L24_3, L25_3)
            L22_3.anchorX = 0
            L22_3.anchorY = 1
            L23_3 = display
            L23_3 = L23_3.contentWidth
            L23_3 = L23_3 * 0.63
            L23_3 = L23_3 + -15
            L23_3 = L23_3 - 6
            L22_3.x = L23_3
            L23_3 = display
            L23_3 = L23_3.contentHeight
            L23_3 = L23_3 * 0.2
            L24_3 = L7_3 * 0.3
            L23_3 = L23_3 * L24_3
            L23_3 = L23_3 + 43
            L22_3.y = L23_3
            L23_3 = L2_2
            L24_3 = L23_3
            L23_3 = L23_3.insert
            L25_3 = L22_3
            L23_3(L24_3, L25_3)
            L23_3 = display
            L23_3 = L23_3.newImageRect
            L24_3 = "images/gui/postgame/bestTime.png"
            L25_3 = 15
            L26_3 = 18
            L23_3 = L23_3(L24_3, L25_3, L26_3)
            L23_3.anchorX = 0
            L23_3.anchorY = 1
            L24_3 = display
            L24_3 = L24_3.contentWidth
            L24_3 = L24_3 * 0.63
            L24_3 = L24_3 + -17
            L23_3.x = L24_3
            L24_3 = display
            L24_3 = L24_3.contentHeight
            L24_3 = L24_3 * 0.2
            L25_3 = L7_3 * 0.3
            L24_3 = L24_3 * L25_3
            L24_3 = L24_3 + 37
            L23_3.y = L24_3
            L24_3 = L2_2
            L25_3 = L24_3
            L24_3 = L24_3.insert
            L26_3 = L23_3
            L24_3(L25_3, L26_3)
            
            function L24_3()
              local L0_4, L1_4, L2_4
              L0_4 = L21_3
              L1_4 = L101_2
              L2_4 = L7_3
              L1_4 = L1_4[L2_4]
              L0_4(L1_4)
            end
            
            L25_3 = timer
            L25_3 = L25_3.performWithDelay
            L26_3 = 2000
            L27_3 = L24_3
            L28_3 = 0
            L25_3 = L25_3(L26_3, L27_3, L28_3)
            L10_1 = L25_3
          end
          L22_3 = L95_2
          L23_3 = L12_3
          L24_3 = L8_3
          L25_3 = L7_3
          L22_3(L23_3, L24_3, L25_3)
          L22_3 = L17_2
          L23_3 = L17_2
          L23_3 = #L23_3
          L23_3 = L23_3 + 1
          L22_3[L23_3] = L8_3
        end
        L4_3 = L14_2
        L4_3.anchorX = 0
        L4_3 = L14_2
        L4_3.anchorY = 0
        L4_3 = L14_2
        L4_3.anchorChildren = true
        L4_3 = L14_2
        L5_3 = display
        L5_3 = L5_3.contentWidth
        L5_3 = L5_3 * 0.63
        L4_3.x = L5_3
        L4_3 = L14_2
        L4_3.y = 36
        L4_3 = L2_2
        L5_3 = L4_3
        L4_3 = L4_3.insert
        L6_3 = L14_2
        L4_3(L5_3, L6_3)
        L4_3 = L15_1
        L5_3 = L4_3
        L4_3 = L4_3.toFront
        L4_3(L5_3)
        L4_3 = L0_1
        L4_3 = L4_3.data
        L4_3 = L4_3.gameInfo
        L4_3 = L4_3.crazyModePostLobby
        if L4_3 then
          L4_3 = false
          if L4_3 then
            L4_3 = L1_1
            L4_3 = L4_3.showCrazyMode
            L5_3 = L0_1
            L5_3 = L5_3.data
            L5_3 = L5_3.gameInfo
            L5_3 = L5_3.crazyMode
            L6_3 = true
            L7_3 = L0_1
            L7_3 = L7_3.data
            L7_3 = L7_3.gameInfo
            L7_3 = L7_3.map
            L8_3 = L3_3
            L4_3(L5_3, L6_3, L7_3, L8_3)
          end
        end
    end
    else
      L1_3 = L0_1
      L1_3 = L1_3.newText
      L2_3 = {}
      L3_3 = L0_1
      L3_3 = L3_3.localized
      L3_3 = L3_3.get
      L4_3 = "ErrorNoPlayers"
      L3_3 = L3_3(L4_3)
      L2_3.string = L3_3
      L2_3.size = 25
      L1_3 = L1_3(L2_3)
      L2_3 = display
      L2_3 = L2_3.contentWidth
      L2_3 = L2_3 * 0.5
      L1_3.x = L2_3
      L2_3 = display
      L2_3 = L2_3.contentHeight
      L2_3 = L2_3 * 0.3
      L1_3.y = L2_3
      L2_3 = L2_2
      L3_3 = L2_3
      L2_3 = L2_3.insert
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
    end
  end
  
  function L104_2()
    local L0_3, L1_3
  end
  
  function L105_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = L82_2
    L0_3.isVisible = true
    L0_3 = L82_2
    L0_3.isVisible = true
    
    function L0_3(A0_4, A1_4, A2_4, A3_4, A4_4)
      local L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4
      L5_4 = display
      L5_4 = L5_4.newGroup
      L5_4 = L5_4()
      L11_1 = L5_4
      L5_4 = display
      L5_4 = L5_4.newImageRect
      L6_4 = "images/gui/challenges/cellBG.png"
      L7_4 = 70
      L8_4 = 12
      L5_4 = L5_4(L6_4, L7_4, L8_4)
      L6_4 = display
      L6_4 = L6_4.contentWidth
      L6_4 = L6_4 * 0.455
      L6_4 = L6_4 + 10
      L5_4.x = L6_4
      L5_4.y = 290
      L5_4.anchorX = 0
      L6_4 = L11_1
      L7_4 = L6_4
      L6_4 = L6_4.insert
      L8_4 = L5_4
      L6_4(L7_4, L8_4)
      L6_4 = "images/gui/challenges/cellBar.png"
      if 1 <= A2_4 then
        A2_4 = 1
        L6_4 = "images/gui/challenges/cellBarGreen.png"
      end
      L7_4 = display
      L7_4 = L7_4.newImageRect
      L8_4 = L6_4
      L9_4 = 67
      L10_4 = 12
      L7_4 = L7_4(L8_4, L9_4, L10_4)
      L8_4 = display
      L8_4 = L8_4.contentWidth
      L8_4 = L8_4 * 0.455
      L8_4 = L8_4 + 11
      L7_4.x = L8_4
      L7_4.y = 290
      L7_4.anchorX = 0
      L7_4.xScale = A2_4
      L8_4 = L11_1
      L9_4 = L8_4
      L8_4 = L8_4.insert
      L10_4 = L7_4
      L8_4(L9_4, L10_4)
      L8_4 = math
      L8_4 = L8_4.floor
      L9_4 = A2_4 * 100
      L8_4 = L8_4(L9_4)
      L9_4 = "%"
      L8_4 = L8_4 .. L9_4
      if A2_4 == 1 then
        L9_4 = L0_1
        L9_4 = L9_4.localized
        L9_4 = L9_4.get
        L10_4 = "Press to claim"
        L9_4 = L9_4(L10_4)
        L8_4 = L9_4
      end
      L9_4 = L0_1
      L9_4 = L9_4.newText
      L10_4 = {}
      L10_4.string = L8_4
      L10_4.size = 8
      L11_4 = {}
      L12_4 = 1
      L13_4 = 1
      L14_4 = 1
      L11_4[1] = L12_4
      L11_4[2] = L13_4
      L11_4[3] = L14_4
      L10_4.color = L11_4
      L10_4.ax = 0.5
      L10_4.ay = 0.5
      L9_4 = L9_4(L10_4)
      L10_4 = display
      L10_4 = L10_4.contentWidth
      L10_4 = L10_4 * 0.455
      L10_4 = L10_4 + 45
      L9_4.x = L10_4
      L9_4.y = 290
      L10_4 = L11_1
      L11_4 = L10_4
      L10_4 = L10_4.insert
      L12_4 = L9_4
      L10_4(L11_4, L12_4)
      L10_4 = L11_1
      
      function L11_4()
        local L0_5, L1_5, L2_5
        L0_5 = L9_4
        L1_5 = L0_1
        L1_5 = L1_5.localized
        L1_5 = L1_5.get
        L2_5 = "Claimed"
        L1_5 = L1_5(L2_5)
        L0_5.text = L1_5
      end
      
      L10_4.setClaimedText = L11_4
      
      function L10_4()
        local L0_5, L1_5, L2_5, L3_5
        L0_5 = {}
        L0_5.isModal = true
        L1_5 = {}
        L0_5.params = L1_5
        L1_5 = L0_5.params
        L2_5 = A3_4
        L1_5.activeTable = L2_5
        L1_5 = L0_5.params
        L2_5 = A4_4
        L1_5.activeKey = L2_5
        L1_5 = L0_1
        L1_5 = L1_5.analytics
        L1_5 = L1_5.addDesignEvent
        L2_5 = "Onboarding:Postlobby:OpenAchievements"
        L3_5 = L0_1
        L3_5 = L3_5.gamesPlayed
        L1_5(L2_5, L3_5)
        L1_5 = L0_1
        L1_5 = L1_5.showOverlay
        L2_5 = "lua.overlays.achievementsScene"
        L3_5 = L0_5
        L1_5(L2_5, L3_5)
      end
      
      L11_4 = L0_1
      L11_4 = L11_4.newButton
      L12_4 = {}
      L12_4.image = "images/gui/postgame/achiProgress.png"
      L12_4.width = 180
      L12_4.height = 32
      L12_4.onRelease = L10_4
      L13_4 = display
      L13_4 = L13_4.contentWidth
      L13_4 = L13_4 * 0.455
      L12_4.x = L13_4
      L12_4.y = 292
      L11_4 = L11_4(L12_4)
      L12_4 = L11_1
      L13_4 = L12_4
      L12_4 = L12_4.insert
      L14_4 = L11_4
      L12_4(L13_4, L14_4)
      L12_4 = 10
      L13_4 = 0
      if A1_4 then
        L14_4 = L0_1
        L14_4 = L14_4.newText
        L15_4 = {}
        L15_4.string = A1_4
        L15_4.size = 8
        L16_4 = L0_1
        L16_4 = L16_4.colors
        L16_4 = L16_4.darkGrey
        L15_4.color = L16_4
        L14_4 = L14_4(L15_4)
        L15_4 = display
        L15_4 = L15_4.contentWidth
        L15_4 = L15_4 * 0.455
        L15_4 = L15_4 - 38
        L14_4.x = L15_4
        L14_4.y = 293
        L15_4 = L11_1
        L16_4 = L15_4
        L15_4 = L15_4.insert
        L17_4 = L14_4
        L15_4(L16_4, L17_4)
        L12_4 = 10
        L13_4 = -3
      end
      L14_4 = L0_1
      L14_4 = L14_4.newText
      L15_4 = {}
      L15_4.string = A0_4
      L15_4.size = L12_4
      L16_4 = L0_1
      L16_4 = L16_4.colors
      L16_4 = L16_4.black
      L15_4.color = L16_4
      L14_4 = L14_4(L15_4)
      L15_4 = display
      L15_4 = L15_4.contentWidth
      L15_4 = L15_4 * 0.455
      L15_4 = L15_4 - 38
      L14_4.x = L15_4
      L15_4 = 289 + L13_4
      L14_4.y = L15_4
      L15_4 = L11_1
      L16_4 = L15_4
      L15_4 = L15_4.insert
      L17_4 = L14_4
      L15_4(L16_4, L17_4)
      L15_4 = L2_2
      L16_4 = L15_4
      L15_4 = L15_4.insert
      L17_4 = L11_1
      L15_4(L16_4, L17_4)
      L15_4 = transition
      L15_4 = L15_4.to
      L16_4 = L11_1
      L17_4 = {}
      L17_4.time = 1500
      L17_4.delta = true
      L17_4.y = -31
      L17_4.delay = 1000
      L15_4(L16_4, L17_4)
    end
    
    L1_3 = L26_1
    L1_3 = L1_3()
    if not L1_3 then
      L1_3 = L0_1
      L1_3 = L1_3.data
      L1_3 = L1_3.gameInfo
      L1_3 = L1_3.stats
      L1_3 = L1_3.fb
      if L1_3 then
        L1_3 = L0_1
        L1_3 = L1_3.data
        L1_3 = L1_3.gameInfo
        L1_3 = L1_3.stats
        L1_3 = L1_3.fb
        L2_3 = L0_1
        L2_3 = L2_3.data
        L2_3 = L2_3.gameInfo
        L2_3 = L2_3.stats
        L2_3 = L2_3.fc
        L3_3 = L0_1
        L3_3 = L3_3.data
        L3_3 = L3_3.gameInfo
        L3_3 = L3_3.stats
        L3_3 = L3_3.fd
        L4_3 = L0_1
        L4_3 = L4_3.awards
        L4_3 = L4_3.getAchievementName
        L5_3 = ""
        L6_3 = L1_3
        L5_3 = L5_3 .. L6_3
        L6_3 = 0
        L4_3 = L4_3(L5_3, L6_3)
        L5_3 = L0_1
        L5_3 = L5_3.awards
        L5_3 = L5_3.getAchievementDescriptionForStep
        L6_3 = ""
        L7_3 = L1_3
        L6_3 = L6_3 .. L7_3
        L7_3 = L2_3 + 1
        L5_3 = L5_3(L6_3, L7_3)
        L6_3 = L0_3
        L7_3 = L4_3
        L8_3 = L5_3
        L9_3 = L3_3
        L10_3 = 2
        L11_3 = L1_3
        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      else
        L1_3 = L0_1
        L1_3 = L1_3.data
        L1_3 = L1_3.gameInfo
        L1_3 = L1_3.stats
        L1_3 = L1_3.ff
        if L1_3 then
          L1_3 = L0_1
          L1_3 = L1_3.data
          L1_3 = L1_3.gameInfo
          L1_3 = L1_3.stats
          L1_3 = L1_3.ff
          L2_3 = L0_1
          L2_3 = L2_3.data
          L2_3 = L2_3.gameInfo
          L2_3 = L2_3.stats
          L2_3 = L2_3.fg
          L3_3 = L0_1
          L3_3 = L3_3.awards
          L3_3 = L3_3.getDailyChallengeName
          L4_3 = ""
          L5_3 = L1_3
          L4_3 = L4_3 .. L5_3
          L5_3 = 0
          L3_3 = L3_3(L4_3, L5_3)
          L4_3 = L0_3
          L5_3 = L3_3
          L6_3 = nil
          L7_3 = L2_3
          L8_3 = 1
          L4_3(L5_3, L6_3, L7_3, L8_3)
        end
      end
    end
    L1_3 = display
    L1_3 = L1_3.newImageRect
    L2_3 = "images/gui/postgame/windowCurrency.png"
    L3_3 = 184
    L4_3 = 55
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L2_3 = display
    L2_3 = L2_3.contentWidth
    L2_3 = L2_3 * 0.455
    L1_3.x = L2_3
    L1_3.y = 293
    L2_3 = L2_2
    L3_3 = L2_3
    L2_3 = L2_3.insert
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
    
    function L2_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      L1_4 = display
      L1_4 = L1_4.newImageRect
      L2_4 = A0_4
      L3_4 = 30
      L4_4 = 30
      L1_4 = L1_4(L2_4, L3_4, L4_4)
      if L1_4 == nil then
        L2_4 = display
        L2_4 = L2_4.newImageRect
        L3_4 = "images/gui/challenges/iconsDaily/1.png"
        L4_4 = 30
        L5_4 = 30
        L2_4 = L2_4(L3_4, L4_4, L5_4)
        L1_4 = L2_4
      end
      L2_4 = display
      L2_4 = L2_4.contentWidth
      L2_4 = L2_4 * 0.455
      L2_4 = L2_4 - 80
      L1_4.x = L2_4
      L1_4.y = 262
      L1_4.xScale = 1.0E-4
      L1_4.yScale = 1.0E-4
      L2_4 = L2_2
      L3_4 = L2_4
      L2_4 = L2_4.insert
      L4_4 = L1_4
      L2_4(L3_4, L4_4)
      L2_4 = transition
      L2_4 = L2_4.to
      L3_4 = L1_4
      L4_4 = {}
      L4_4.time = 250
      L4_4.xScale = 1
      L4_4.yScale = 1
      L4_4.delay = 3000
      L5_4 = easing
      L5_4 = L5_4.inOutBack
      L4_4.transition = L5_4
      L2_4(L3_4, L4_4)
    end
    
    L3_3 = L26_1
    L3_3 = L3_3()
    if not L3_3 then
      L3_3 = L0_1
      L3_3 = L3_3.data
      L3_3 = L3_3.gameInfo
      L3_3 = L3_3.stats
      L3_3 = L3_3.fb
      if L3_3 then
        L3_3 = L0_1
        L3_3 = L3_3.data
        L3_3 = L3_3.gameInfo
        L3_3 = L3_3.stats
        L3_3 = L3_3.fb
        L4_3 = L0_1
        L4_3 = L4_3.awards
        L4_3 = L4_3.getAchievementImage
        L5_3 = ""
        L6_3 = L3_3
        L5_3 = L5_3 .. L6_3
        L4_3 = L4_3(L5_3)
        L5_3 = L2_3
        L6_3 = "images/gui/challenges/iconsAchiv/"
        L7_3 = L4_3
        L8_3 = ".png"
        L6_3 = L6_3 .. L7_3 .. L8_3
        L5_3(L6_3)
      else
        L3_3 = L0_1
        L3_3 = L3_3.data
        L3_3 = L3_3.gameInfo
        L3_3 = L3_3.stats
        L3_3 = L3_3.ff
        if L3_3 then
          L3_3 = L0_1
          L3_3 = L3_3.data
          L3_3 = L3_3.gameInfo
          L3_3 = L3_3.stats
          L3_3 = L3_3.ff
          L4_3 = L2_3
          L5_3 = "images/gui/challenges/iconsDaily/"
          L6_3 = L3_3
          L7_3 = ".png"
          L5_3 = L5_3 .. L6_3 .. L7_3
          L4_3(L5_3)
        end
      end
    end
  end
  
  function L106_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L58_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L65_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L66_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L80_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L81_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L24_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L60_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L82_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L59_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L61_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L83_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L86_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L87_2
    L0_3(L1_3, L2_3)
    L0_3 = L10_2
    if L0_3 then
      L0_3 = L2_2
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L10_2
      L0_3(L1_3, L2_3)
    end
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L89_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L91_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L94_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L92_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L15_1
    L0_3(L1_3, L2_3)
    L0_3 = L84_2
    if L0_3 then
      L0_3 = L2_2
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L84_2
      L0_3(L1_3, L2_3)
    end
  end
  
  function L107_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = true
    L27_2 = L0_3
    L0_3 = L20_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L20_2
      L0_3(L1_3)
      L0_3 = nil
      L20_2 = L0_3
    end
    L0_3 = L21_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L21_2
      L0_3(L1_3)
      L0_3 = nil
      L21_2 = L0_3
    end
    L0_3 = L22_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L22_2
      L0_3(L1_3)
      L0_3 = nil
      L22_2 = L0_3
    end
    L0_3 = L79_2
    L0_3()
    L0_3 = L24_1
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L24_1
      L0_3(L1_3)
      L0_3 = nil
      L24_1 = L0_3
    end
    L0_3 = L23_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L23_2
      L0_3(L1_3)
      L0_3 = nil
      L23_2 = L0_3
    end
    L0_3 = L44_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L44_2
      L0_3(L1_3)
      L0_3 = nil
      L44_2 = L0_3
    end
    L0_3 = L45_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L45_2
      L0_3(L1_3)
      L0_3 = nil
      L45_2 = L0_3
    end
    L0_3 = L10_2
    if L0_3 then
      L0_3 = L10_2
      L0_3 = L0_3.clean
      L0_3()
      L0_3 = nil
      L10_2 = L0_3
    end
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.crazyModePostLobby
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.data
      L0_3 = L0_3.gameInfo
      L0_3.crazyModePostLobby = false
      L0_3 = L0_1
      L0_3 = L0_3.data
      L0_3 = L0_3.gameInfo
      L0_3.crazyMode = 0
    end
    L0_3 = transition
    L0_3 = L0_3.cancel
    L1_3 = L11_1
    L0_3(L1_3)
    L0_3 = L12_1
    if L0_3 then
      L0_3 = transition
      L0_3 = L0_3.cancel
      L1_3 = L12_1
      L0_3(L1_3)
      L0_3 = nil
      L12_1 = L0_3
    end
    L0_3 = L10_1
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L10_1
      L0_3(L1_3)
      L0_3 = nil
      L10_1 = L0_3
    end
    L0_3 = L33_2
    if L0_3 then
      L0_3 = L33_2
      L0_3 = L0_3.clean
      L0_3()
      L0_3 = nil
      L33_2 = L0_3
    end
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L83_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L86_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L89_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L91_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L94_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L80_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L81_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L24_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L82_2
    L0_3(L1_3)
    L0_3 = L84_2
    if L0_3 then
      L0_3 = display
      L0_3 = L0_3.remove
      L1_3 = L84_2
      L0_3(L1_3)
    end
    L0_3 = L0_1
    L0_3 = L0_3.audio
    L0_3 = L0_3.stop
    L1_3 = L4_1
    L0_3(L1_3)
    L0_3 = 1
    L1_3 = L26_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = display
      L4_3 = L4_3.remove
      L5_3 = L26_2
      L5_3 = L5_3[L3_3]
      L4_3(L5_3)
    end
    L0_3 = L15_2
    if L0_3 then
      L0_3 = 1
      L1_3 = L15_2
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L15_2
        L4_3 = L4_3[L3_3]
        L4_3 = L4_3.clean
        L4_3()
      end
    end
    L0_3 = nil
    L13_1 = L0_3
    L0_3 = L31_2
    if L0_3 then
      L0_3 = L31_2
      L0_3 = L0_3.clean
      if L0_3 then
        L0_3 = L31_2
        L0_3 = L0_3.clean
        L0_3()
      end
    end
    L0_3 = L32_2
    if L0_3 then
      L0_3 = L32_2
      L0_3 = L0_3.clean
      if L0_3 then
        L0_3 = L32_2
        L0_3 = L0_3.clean
        L0_3()
      end
    end
  end
  
  L6_1 = L107_2
  L107_2 = L0_1
  L107_2 = L107_2.config
  L107_2 = L107_2.showPostLobby
  if L107_2 then
    L107_2 = L0_1
    L107_2 = L107_2.data
    L107_2 = L107_2.gameInfo
    L108_2 = {}
    L109_2 = {}
    L109_2.username = "gunnar"
    L109_2.goalTime = 10000
    L109_2.league = 0
    L110_2 = {}
    L110_2.username = "per"
    L110_2.goalTime = 13000
    L110_2.league = 1
    L111_2 = {}
    L111_2.username = "arne"
    L111_2.goalTime = 40000
    L111_2.league = 2
    L112_2 = {}
    L112_2.username = "ole"
    L112_2.goalTime = 20000
    L112_2.league = 3
    L108_2[1] = L109_2
    L108_2[2] = L110_2
    L108_2[3] = L111_2
    L108_2[4] = L112_2
    L107_2.quickPlayerRankingTable = L108_2
    L107_2 = L0_1
    L107_2 = L107_2.data
    L107_2 = L107_2.gameInfo
    L108_2 = {}
    L107_2.stats = L108_2
    L107_2 = L0_1
    L107_2 = L107_2.data
    L107_2 = L107_2.gameInfo
    L107_2 = L107_2.stats
    L107_2.a = 15
    L107_2 = L0_1
    L107_2 = L107_2.data
    L107_2 = L107_2.gameInfo
    L107_2 = L107_2.stats
    L107_2.h = 26
    L107_2 = L0_1
    L107_2 = L107_2.data
    L107_2 = L107_2.gameInfo
    L107_2 = L107_2.stats
    L107_2.b = 0
    L107_2 = L0_1
    L107_2 = L107_2.data
    L107_2 = L107_2.gameInfo
    L107_2 = L107_2.stats
    L107_2.d = 0
    L107_2 = L0_1
    L107_2 = L107_2.data
    L107_2 = L107_2.gameInfo
    L107_2 = L107_2.stats
    L107_2.g = 30
    L107_2 = L0_1
    L107_2 = L107_2.data
    L107_2 = L107_2.gameInfo
    L107_2 = L107_2.stats
    L107_2.r = 5
    L107_2 = L0_1
    L107_2 = L107_2.data
    L107_2 = L107_2.gameInfo
    L107_2 = L107_2.stats
    L107_2.fa = nil
    L107_2 = L0_1
    L107_2 = L107_2.data
    L107_2 = L107_2.gameInfo
    L107_2 = L107_2.stats
    L107_2.fe = 300
    L107_2 = L0_1
    L107_2 = L107_2.data
    L107_2 = L107_2.gameInfo
    L107_2 = L107_2.stats
    L107_2.fh = 100
    L107_2 = L0_1
    L107_2 = L107_2.data
    L107_2 = L107_2.gameInfo
    L107_2 = L107_2.stats
    L107_2.fi = 1230
  end
  
  function L107_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getMoney
    L0_3 = L0_3()
    L1_3 = L39_2
    if L1_3 then
      L1_3 = L39_2
      L2_3 = ""
      L3_3 = L0_3
      L2_3 = L2_3 .. L3_3
      L1_3.text = L2_3
    end
    L1_3 = L10_2
    if L1_3 then
      L1_3 = L10_2
      L1_3 = L1_3.removeEventListeners
      L1_3()
    end
  end
  
  L19_1 = L107_2
  
  function L107_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "boughtStarterPack"
    L3_3 = L19_1
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L108_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    if A0_3 then
      L2_3 = A0_3.getButtonWidget
      if L2_3 then
        if A1_3 <= 0 then
          A0_3.isVisible = false
        else
          A0_3.isVisible = true
          A0_3.alpha = A1_3
        end
        L2_3 = A0_3.getButtonWidget
        L2_3 = L2_3()
        L3_3 = L2_3
        L2_3 = L2_3.setEnabled
        L4_3 = false
        L2_3(L3_3, L4_3)
      end
    end
  end
  
  function L109_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = L26_1
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = L21_1
      L0_3 = L0_3.getEarnCoinsReward
      L1_3 = 7
      L0_3 = L0_3(L1_3)
      
      function L1_3()
        local L0_4, L1_4
        L0_4 = L0_1
        L0_4 = L0_4.comm
        L0_4 = L0_4.setCallback
        L1_4 = L16_1
        L0_4(L1_4)
        L0_4 = L0_1
        L0_4 = L0_4.comm
        L0_4 = L0_4.claimEarnCoins
        L1_4 = 7
        L0_4(L1_4)
      end
      
      L2_3 = L8_2
      L2_3 = L2_3.init
      L3_3 = L2_2
      L4_3 = L52_2
      L5_3 = "Coins"
      L6_3 = L1_3
      L7_3 = "Get "
      L8_3 = L0_3
      L9_3 = " Free Coins!"
      L7_3 = L7_3 .. L8_3 .. L9_3
      L8_3 = true
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      L10_2 = L2_3
      L2_3 = L80_2
      if L2_3 then
        L2_3 = L80_2
        L2_3.isVisible = false
        L2_3 = L80_2
        L2_3 = L2_3.getButtonWidget
        L2_3 = L2_3()
        L3_3 = L2_3
        L2_3 = L2_3.setEnabled
        L4_3 = false
        L2_3(L3_3, L4_3)
      end
      L2_3 = 0
      L3_3 = L108_2
      L4_3 = L81_2
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
      L3_3 = L108_2
      L4_3 = L24_2
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
      L3_3 = L108_2
      L4_3 = L82_2
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
      L3_3 = L108_2
      L4_3 = L84_2
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
      L3_3 = L108_2
      L4_3 = L86_2
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
      L3_3 = L108_2
      L4_3 = L94_2
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
      L3_3 = L60_2
      if L3_3 then
        L3_3 = L60_2
        L3_3.isVisible = false
      end
      L3_3 = L40_2
      if L3_3 then
        L3_3 = L40_2
        L3_3 = L3_3.getButtonWidget
        L3_3 = L3_3()
        L4_3 = L3_3
        L3_3 = L3_3.setEnabled
        L5_3 = false
        L3_3(L4_3, L5_3)
      end
      L3_3 = L91_2
      if L3_3 then
        L3_3 = L91_2
        L3_3 = L3_3.getButtonWidget
        L3_3 = L3_3()
        L4_3 = L3_3
        L3_3 = L3_3.setEnabled
        L5_3 = false
        L3_3(L4_3, L5_3)
      end
      L3_3 = require
      L4_3 = "lua.modules.androidBackButton"
      L3_3 = L3_3(L4_3)
      L4_3 = L3_3.removeBackButton
      L4_3()
    else
      L0_3 = L25_1
      L0_3 = L0_3()
      if L0_3 then
        function L0_3()
          local L0_4, L1_4
          
          L0_4 = L0_1
          L0_4 = L0_4.comm
          L0_4 = L0_4.setCallback
          L1_4 = L16_1
          L0_4(L1_4)
        end
        
        L1_3 = L7_2
        L1_3 = L1_3.init
        L2_3 = L0_1
        L2_3 = L2_3.data
        L2_3 = L2_3.gameInfo
        L2_3 = L2_3.stats
        L2_3 = L2_3.fa
        L3_3 = L2_2
        L4_3 = L0_1
        L4_3 = L4_3.gamesPlayed
        L5_3 = L0_1
        L5_3 = L5_3.data
        L5_3 = L5_3.gameInfo
        L5_3 = L5_3.stats
        L5_3 = L5_3.g
        L6_3 = L52_2
        L7_3 = L0_3
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
        L10_2 = L1_3
        L1_3 = L10_2
        L1_3 = L1_3.tryDropAndReturnResult
        L1_3 = L1_3()
        if not L1_3 then
          L2_3 = L27_1
          L2_3 = L2_3()
          if L2_3 then
            L2_3 = L0_1
            L2_3 = L2_3.database
            L2_3 = L2_3.canShowBoosterPack
            L3_3 = L0_1
            L3_3 = L3_3.gamesPlayed
            L2_3 = L2_3(L3_3)
            if L2_3 then
              L2_3 = L10_2
              L2_3 = L2_3.clean
              L2_3()
              
              function L2_3()
                local L0_4, L1_4, L2_4, L3_4
                L0_4 = L0_1
                L0_4 = L0_4.comm
                L0_4 = L0_4.setCallback
                L1_4 = L16_1
                L0_4(L1_4)
                L0_4 = {}
                L0_4.isModal = true
                L1_4 = {}
                L1_4.cartType = "postlobby"
                L0_4.params = L1_4
                L1_4 = L0_1
                L1_4 = L1_4.showOverlay
                L2_4 = "lua.overlays.starterPackBuy"
                L3_4 = L0_4
                L1_4(L2_4, L3_4)
                L1_4 = L20_1
                if not L1_4 then
                  L1_4 = true
                  L20_1 = L1_4
                  L1_4 = L0_1
                  L1_4 = L1_4.database
                  L1_4 = L1_4.incrementShowedBoosterPack
                  L1_4()
                end
              end
              
              L3_3 = L8_2
              L3_3 = L3_3.init
              L4_3 = L2_2
              L5_3 = L52_2
              L6_3 = "Starter"
              L7_3 = L2_3
              L8_3 = nil
              L9_3 = false
              L10_3 = true
              L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
              L10_2 = L3_3
            end
          end
        end
      end
    end
  end
  
  L110_2 = L106_2
  L110_2()
  L110_2 = L0_1
  L110_2 = L110_2.data
  L110_2 = L110_2.gameInfo
  L110_2 = L110_2.gameType
  if L110_2 ~= 0 then
    L110_2 = L105_2
    L110_2()
  end
  L4_2.x = 130
  L110_2 = display
  L110_2 = L110_2.contentHeight
  L110_2 = L110_2 - 64
  L4_2.y = L110_2
  L111_2 = L2_2
  L110_2 = L2_2.insert
  L112_2 = L4_2
  L110_2(L111_2, L112_2)
  L110_2 = L103_2
  L111_2 = L0_1
  L111_2 = L111_2.data
  L111_2 = L111_2.gameInfo
  L111_2 = L111_2.quickPlayerRankingTable
  L110_2(L111_2)
  L110_2 = L0_1
  L110_2 = L110_2.data
  L110_2 = L110_2.gameInfo
  L110_2 = L110_2.gameType
  if L110_2 ~= 0 then
    L110_2 = L109_2
    L110_2()
  else
  end
  if L10_2 then
    L111_2 = L2_2
    L110_2 = L2_2.insert
    L112_2 = L10_2
    L110_2(L111_2, L112_2)
  end
  L111_2 = L2_2
  L110_2 = L2_2.insert
  L112_2 = L5_2
  L110_2(L111_2, L112_2)
  L111_2 = L2_2
  L110_2 = L2_2.insert
  L112_2 = L61_2
  L110_2(L111_2, L112_2)
  L110_2 = L107_2
  L110_2()
  L110_2 = L68_2
  L110_2()
  L110_2 = L0_1
  L110_2 = L110_2.onboarding
  L110_2 = L110_2.isActive
  if L110_2 == true then
    L110_2 = L0_1
    L110_2 = L110_2.onboarding
    L110_2 = L110_2.addGuiReference
    L111_2 = "postlobby_exit"
    L112_2 = L80_2
    L110_2(L111_2, L112_2)
    L110_2 = L0_1
    L110_2 = L110_2.onboarding
    L110_2 = L110_2.addGuiReference
    L111_2 = "postlobby_addFriends"
    L112_2 = L24_2
    L110_2(L111_2, L112_2)
    L110_2 = L0_1
    L110_2 = L110_2.onboarding
    L110_2 = L110_2.addGuiReference
    L111_2 = "postlobby_chat"
    L112_2 = L82_2
    L110_2(L111_2, L112_2)
    L110_2 = L0_1
    L110_2 = L110_2.onboarding
    L110_2 = L110_2.addGuiReference
    L111_2 = "postlobby_times"
    L112_2 = L58_2
    L110_2(L111_2, L112_2)
    L110_2 = L0_1
    L110_2 = L110_2.onboarding
    L110_2 = L110_2.addGuiReference
    L111_2 = "postlobby_mapName"
    L112_2 = L65_2
    L110_2(L111_2, L112_2)
    L110_2 = L0_1
    L110_2 = L110_2.onboarding
    L110_2 = L110_2.addGuiReference
    L111_2 = "postlobby_market"
    L112_2 = L83_2
    L110_2(L111_2, L112_2)
    L110_2 = L0_1
    L110_2 = L110_2.onboarding
    L110_2 = L110_2.updateDisplayGroups
    L111_2 = nil
    L112_2 = L2_2
    L110_2(L111_2, L112_2)
  end
end

L3_1.create = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    return
  end
  L3_2 = A0_2.view
  L4_2 = false
  L5_2 = require
  L6_2 = "lua.network.tcpMessageFormat"
  L5_2 = L5_2(L6_2)
  L6_2 = require
  L7_2 = "lua.modules.androidBackButton"
  L6_2 = L6_2(L7_2)
  L7_2 = require
  L8_2 = "lua.ads.adModule"
  L7_2 = L7_2(L8_2)
  L8_2 = nil
  L9_2 = L6_2.addBackButton
  L10_2 = "lua.scenes.mainMenu"
  L11_2 = "lua.scenes.postLobby"
  L9_2(L10_2, L11_2)
  
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L4_2
    if L1_3 then
      return
    end
    L1_3 = A0_3[1]
    L2_3 = L0_1
    L2_3 = L2_3.gameConfig
    L2_3 = L2_3.getMessageTypeForID
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    if L2_3 == "UNLOCKED_AWARD" then
      L3_3 = {}
      L3_3[1] = 0
      L4_3 = A0_3[2]
      L3_3[2] = L4_3
      L4_3 = A0_3[3]
      L3_3[3] = L4_3
      L4_3 = A0_3[4]
      L3_3[4] = L4_3
      L4_3 = L1_1
      L4_3 = L4_3.showAchivement
      L5_3 = L3_3
      L4_3(L5_3)
    else
      L3_3 = print
      L4_3 = "ERROR NETWORK: Got this stuff, dunno what to do: "
      L5_3 = A0_3
      L3_3(L4_3, L5_3)
    end
  end
  
  L10_2 = L0_1
  L10_2 = L10_2.tcpClient
  L10_2 = L10_2.setReceiveFunction
  L11_2 = L9_2
  L10_2(L11_2)
  
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = L4_2
    if L1_3 then
      return
    end
    if A0_3 then
      L1_3 = A0_3.m
      L2_3 = L5_2
      L2_3 = L2_3.postGameChat
      L2_3 = L2_3()
      if L1_3 == L2_3 then
        L1_3 = L8_1
        if L1_3 then
          L1_3 = L8_1
          L2_3 = A0_3.a
          L3_3 = A0_3.b
          L1_3(L2_3, L3_3)
        end
      end
      L1_3 = A0_3.m
      L2_3 = L5_2
      L2_3 = L2_3.seenBoostVideoSingle
      L2_3 = L2_3()
      if L1_3 == L2_3 then
        L1_3 = A0_3.t
        if not L1_3 then
          L1_3 = "soft"
        end
        if L1_3 == "soft" then
          L2_3 = A0_3.s
          L3_3 = L0_1
          L3_3 = L3_3.database
          L3_3 = L3_3.getMoney
          L3_3 = L3_3()
          L4_3 = L13_1
          L5_3 = L3_3
          L6_3 = L2_3
          L7_3 = 5
          L8_3 = L0_1
          L8_3 = L8_3.data
          L8_3 = L8_3.gameInfo
          L8_3 = L8_3.stats
          L8_3 = L8_3.g
          L4_3(L5_3, L6_3, L7_3, L8_3)
        elseif L1_3 == "hard" then
          L2_3 = L14_1
          L3_3 = A0_3.s
          L2_3(L3_3)
        elseif L1_3 == "spin" then
          L2_3 = L0_1
          L2_3 = L2_3.showOverlay
          L3_3 = "lua.overlays.spinningWheel"
          L4_3 = {}
          L4_3.isModal = true
          L5_3 = {}
          L4_3.params = L5_3
          L2_3(L3_3, L4_3)
        end
      end
      L1_3 = A0_3.m
      L2_3 = L5_2
      L2_3 = L2_3.claimEarnCoins
      L2_3 = L2_3()
      if L1_3 == L2_3 then
        L1_3 = print
        L2_3 = "Postlobby got earn coins response"
        L1_3(L2_3)
        L1_3 = A0_3.i
        if L1_3 then
          L1_3 = A0_3.i
          if L1_3 == 7 then
            L1_3 = A0_3.s
            if L1_3 then
              L1_3 = true
              L18_1 = L1_3
              L1_3 = A0_3.s
              L2_3 = L0_1
              L2_3 = L2_3.database
              L2_3 = L2_3.getMoney
              L2_3 = L2_3()
              L3_3 = L13_1
              L4_3 = L2_3
              L5_3 = L1_3
              L6_3 = 5
              L7_3 = L0_1
              L7_3 = L7_3.data
              L7_3 = L7_3.gameInfo
              L7_3 = L7_3.stats
              L7_3 = L7_3.g
              L3_3(L4_3, L5_3, L6_3, L7_3)
              L3_3 = L15_1
              L4_3 = L3_3
              L3_3 = L3_3.toFront
              L3_3(L4_3)
              
              function L3_3()
                local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
                L0_4 = display
                L0_4 = L0_4.newImageRect
                L1_4 = "images/gui/postgame/bubbleAdchest.png"
                L2_4 = 452
                L3_4 = 104
                L0_4 = L0_4(L1_4, L2_4, L3_4)
                L1_4 = L0_1
                L1_4 = L1_4.newText
                L2_4 = {}
                L2_4.string = "Customize your avatar!"
                L2_4.size = 28
                L3_4 = {}
                L4_4 = 0
                L5_4 = 0
                L6_4 = 0
                L3_4[1] = L4_4
                L3_4[2] = L5_4
                L3_4[3] = L6_4
                L2_4.color = L3_4
                L2_4.width = 300
                L2_4.align = "center"
                L1_4 = L1_4(L2_4)
                L1_4.y = -10
                L2_4 = display
                L2_4 = L2_4.newGroup
                L2_4 = L2_4()
                L4_4 = L2_4
                L3_4 = L2_4.insert
                L5_4 = L0_4
                L3_4(L4_4, L5_4)
                L4_4 = L2_4
                L3_4 = L2_4.insert
                L5_4 = L1_4
                L3_4(L4_4, L5_4)
                L2_4.xScale = 0.5
                L2_4.yScale = 0.5
                L2_4.x = 310
                L2_4.y = 244
                L3_4 = L3_2
                L4_4 = L3_4
                L3_4 = L3_4.insert
                L5_4 = L2_4
                L3_4(L4_4, L5_4)
              end
              
              L4_3 = timer
              L4_3 = L4_3.performWithDelay
              L5_3 = 2000
              L6_3 = L3_3
              L7_3 = 1
              L4_3 = L4_3(L5_3, L6_3, L7_3)
              L17_1 = L4_3
            end
          end
        end
      end
    end
  end
  
  L16_1 = L10_2
  L10_2 = L0_1
  L10_2 = L10_2.comm
  L10_2 = L10_2.setCallback
  L11_2 = L16_1
  L10_2(L11_2)
  L10_2 = L3_1
  
  function L11_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = L0_1
    L2_3 = L2_3.comm
    L2_3 = L2_3.setCallback
    L3_3 = L16_1
    L2_3(L3_3)
    if not A1_3 then
      return
    end
    L2_3 = A1_3.reportSent
    if L2_3 == true then
      L2_3 = print
      L3_3 = "report sent! Hide button"
      L2_3(L3_3)
      L2_3 = L9_1
      L3_3 = A1_3.position
      L2_3 = L2_3[L3_3]
      L2_3.isVisible = false
      L2_3 = L9_1
      L3_3 = A1_3.position
      L2_3 = L2_3[L3_3]
      L2_3.reportSent = true
    end
    L2_3 = A1_3.claimedTargetAchievement
    if L2_3 then
      L2_3 = L11_1
      if L2_3 then
        L2_3 = L11_1
        L2_3 = L2_3.setClaimedText
        L2_3()
      end
    end
  end
  
  L10_2.overlayEnded = L11_2
  
  function L10_2()
    local L0_3, L1_3
    L0_3 = isSimulator
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.config
      L0_3 = L0_3.bot
      if L0_3 then
        L0_3 = L0_1
        L0_3 = L0_3.gotoScene
        L1_3 = "lua.scenes.mainMenu"
        L0_3(L1_3)
      end
    end
  end
  
  L11_2 = timer
  L11_2 = L11_2.performWithDelay
  L12_2 = 2000
  L13_2 = L10_2
  L14_2 = 1
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  
  function L12_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = true
    L4_2 = L0_3
    L0_3 = L6_2
    L0_3 = L0_3.removeBackButton
    L0_3()
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "boughtStarterPack"
    L3_3 = L19_1
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = false
    L22_1 = L0_3
    L0_3 = L23_1
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L23_1
      L0_3(L1_3)
      L0_3 = nil
      L23_1 = L0_3
    end
    L0_3 = L11_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L11_2
      L0_3(L1_3)
      L0_3 = nil
      L11_2 = L0_3
    end
    L0_3 = L17_1
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L17_1
      L0_3(L1_3)
      L0_3 = nil
      L17_1 = L0_3
    end
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.gameType
    if L0_3 ~= 1 then
      L0_3 = L0_1
      L0_3 = L0_3.data
      L0_3 = L0_3.gameInfo
      L0_3 = L0_3.gameType
      if L0_3 ~= 4 then
        L0_3 = L0_1
        L0_3 = L0_3.data
        L0_3 = L0_3.gameInfo
        L0_3 = L0_3.gameType
        if L0_3 ~= 6 then
          goto lbl_62
        end
      end
    end
    L0_3 = L0_1
    L0_3 = L0_3.tcpClient
    L0_3 = L0_3.stopTCPClient
    L0_3()
    ::lbl_62::
    L0_3 = L8_2
    if L0_3 then
      L0_3 = native
      L0_3 = L0_3.cancelAlert
      L1_3 = L8_2
      L0_3(L1_3)
      L0_3 = nil
      L8_2 = L0_3
    end
  end
  
  L7_1 = L12_2
  
  function L12_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.showRateApp
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.gamesPlayedThisSession
      if 1 < L0_3 then
        L0_3 = L5_1
        if L0_3 then
          L0_3 = L0_1
          L0_3 = L0_3.data
          L0_3 = L0_3.gameInfo
          L0_3 = L0_3.gameType
          if L0_3 == 1 then
            L0_3 = os
            L0_3 = L0_3.time
            L0_3 = L0_3()
            L1_3 = L0_1
            L1_3 = L1_3.database
            L1_3 = L1_3.getLastRateAppTime
            L1_3 = L1_3()
            L0_3 = L0_3 - L1_3
            if 82800 < L0_3 then
              L0_3 = true
              return L0_3
            end
          end
        end
      end
    end
    L0_3 = false
    return L0_3
  end
  
  function L13_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.gamesPlayed
    L1_3 = L0_1
    L1_3 = L1_3.gameConfig
    L1_3 = L1_3.getGamesForAccountCreationPrompt
    L1_3 = L1_3()
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.hasShownAccountCreationPrompt
    L0_3 = L0_3()
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.playerInfo
    L0_3 = L0_3.email
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getFacebookId
    L0_3 = L0_3()
    L0_3 = L0_3 > L1_3 and L0_3
    return L0_3
  end
  
  function L14_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.action
    if "clicked" == L1_3 then
      L1_3 = A0_3.index
      L2_3 = nil
      L8_2 = L2_3
      L2_3 = L4_2
      if L2_3 then
        return
      end
      if 3 == L1_3 then
        L2_3 = L0_1
        L2_3 = L2_3.database
        L2_3 = L2_3.setGraphics
        L3_3 = 0
        L2_3(L3_3)
      elseif 2 == L1_3 then
        L2_3 = L0_1
        L2_3.detectFPS = 0
      elseif 1 == L1_3 then
        L2_3 = L0_1
        L2_3 = L2_3.database
        L2_3 = L2_3.setDetectFPS
        L3_3 = 0
        L2_3(L3_3)
      end
    end
  end
  
  L15_2 = L0_1
  L15_2 = L15_2.league
  if L15_2 then
    L15_2 = L0_1
    L15_2 = L15_2.league
    L15_2 = L15_2.currentLeague
    L16_2 = L0_1
    L16_2 = L16_2.league
    L16_2 = L16_2.promotionType
    L17_2 = {}
    L17_2.isModal = true
    L18_2 = {}
    L18_2.promotionType = L16_2
    L19_2 = tonumber
    L20_2 = L15_2
    L19_2 = L19_2(L20_2)
    L18_2.league = L19_2
    L17_2.params = L18_2
    L18_2 = L0_1
    L18_2 = L18_2.showOverlay
    L19_2 = "lua.overlays.leaguePromotion"
    L20_2 = L17_2
    L18_2(L19_2, L20_2)
    L18_2 = L0_1
    L18_2.league = nil
  else
    L15_2 = L0_1
    L15_2 = L15_2.gamesPlayed
    if L15_2 ~= 3 then
      L15_2 = L0_1
      L15_2 = L15_2.gamesPlayed
      if L15_2 ~= 4 then
        goto lbl_124
      end
    end
    L15_2 = L0_1
    L15_2 = L15_2.database
    L15_2 = L15_2.getOnboardingMoney
    L15_2 = L15_2()
    if L15_2 then
    else
      ::lbl_124::
      L15_2 = L0_1
      L15_2 = L15_2.criticalFPSPerformanceDetected
      if L15_2 then
        L15_2 = L0_1
        L15_2.criticalFPSPerformanceDetected = false
        L15_2 = native
        L15_2 = L15_2.showAlert
        L16_2 = L0_1
        L16_2 = L16_2.localized
        L16_2 = L16_2.get
        L17_2 = "LowPerformanceTitle"
        L16_2 = L16_2(L17_2)
        L17_2 = L0_1
        L17_2 = L17_2.localized
        L17_2 = L17_2.get
        L18_2 = "LowPerformance"
        L17_2 = L17_2(L18_2)
        L18_2 = {}
        L19_2 = L0_1
        L19_2 = L19_2.localized
        L19_2 = L19_2.get
        L20_2 = "Never ask again"
        L19_2 = L19_2(L20_2)
        L20_2 = L0_1
        L20_2 = L20_2.localized
        L20_2 = L20_2.get
        L21_2 = "No"
        L20_2 = L20_2(L21_2)
        L21_2 = L0_1
        L21_2 = L21_2.localized
        L21_2 = L21_2.get
        L22_2 = "Yes"
        L21_2, L22_2 = L21_2(L22_2)
        L18_2[1] = L19_2
        L18_2[2] = L20_2
        L18_2[3] = L21_2
        L18_2[4] = L22_2
        L19_2 = L14_2
        L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
        L8_2 = L15_2
      else
        L15_2 = L12_2
        L15_2 = L15_2()
        if L15_2 then
          L15_2 = L0_1
          L15_2.showRateApp = false
          L15_2 = {}
          L15_2.isModal = true
          L16_2 = {}
          L16_2.location = 1
          L15_2.params = L16_2
          L16_2 = L0_1
          L16_2 = L16_2.showOverlay
          L17_2 = "lua.overlays.rateApp"
          L18_2 = L15_2
          L16_2(L17_2, L18_2)
        else
          L15_2 = L13_2
          L15_2 = L15_2()
          if L15_2 then
            L15_2 = L0_1
            L15_2 = L15_2.showOverlay
            L16_2 = "lua.overlays.accountPrompt"
            L17_2 = {}
            L17_2.isModal = true
            L15_2(L16_2, L17_2)
          else
            L15_2 = L0_1
            L15_2 = L15_2.data
            L15_2 = L15_2.gameInfo
            L15_2 = L15_2.crazyModePostLobby
            if L15_2 then
            else
              L15_2 = L7_2.shouldShowAds
              L15_2 = L15_2()
              if L15_2 then
                L15_2 = L0_1
                L15_2 = L15_2.showingDailyChallange
                if L15_2 == false then
                  L15_2 = L7_2.showAds
                  L15_2()
                  L15_2 = timer
                  L15_2 = L15_2.performWithDelay
                  L16_2 = L0_1
                  L16_2 = L16_2.adsTable
                  L16_2 = L16_2.showTime
                  L17_2 = L7_2.hideAds
                  L18_2 = 1
                  L15_2(L16_2, L17_2, L18_2)
                end
                L15_2 = true
                L22_1 = L15_2
                
                function L15_2()
                  local L0_3, L1_3
                  L0_3 = false
                  L22_1 = L0_3
                end
                
                L16_2 = timer
                L16_2 = L16_2.performWithDelay
                L17_2 = 1500
                L18_2 = L15_2
                L19_2 = 1
                L16_2 = L16_2(L17_2, L18_2, L19_2)
                L23_1 = L16_2
              end
            end
          end
        end
      end
    end
  end
end

L3_1.show = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = L7_1
    if L4_2 then
      L4_2 = L7_1
      L4_2()
      L4_2 = nil
      L7_1 = L4_2
    end
  elseif L3_2 == "did" then
    L4_2 = L0_1
    L4_2 = L4_2.removeScene
    L5_2 = "lua.scenes.postLobby"
    L4_2(L5_2)
  end
end

L3_1.hide = L28_1

function L28_1(A0_2, A1_2)
  local L2_2
  L2_2 = L6_1
  if L2_2 then
    L2_2 = L6_1
    L2_2()
    L2_2 = nil
    L6_1 = L2_2
    L2_2 = nil
    L16_1 = L2_2
  end
end

L3_1.destroy = L28_1
L29_1 = L3_1
L28_1 = L3_1.addEventListener
L30_1 = "create"
L31_1 = L3_1
L28_1(L29_1, L30_1, L31_1)
L29_1 = L3_1
L28_1 = L3_1.addEventListener
L30_1 = "show"
L31_1 = L3_1
L28_1(L29_1, L30_1, L31_1)
L29_1 = L3_1
L28_1 = L3_1.addEventListener
L30_1 = "hide"
L31_1 = L3_1
L28_1(L29_1, L30_1, L31_1)
L29_1 = L3_1
L28_1 = L3_1.addEventListener
L30_1 = "destroy"
L31_1 = L3_1
L28_1(L29_1, L30_1, L31_1)
return L3_1
