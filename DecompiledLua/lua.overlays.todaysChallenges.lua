local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.newScene
L1_1 = L1_1()
L2_1 = nil
L3_1 = nil

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2
  L2_2 = A0_2.view
  L3_2 = require
  L4_2 = "lua.modules.tableHelper"
  L3_2 = L3_2(L4_2)
  L4_2 = require
  L5_2 = "lua.network.tcpMessageFormat"
  L4_2 = L4_2(L5_2)
  L5_2 = nil
  L6_2 = nil
  L7_2 = {}
  L8_2 = 1
  L9_2 = false
  L10_2 = display
  L10_2 = L10_2.newGroup
  L10_2 = L10_2()
  L11_2 = {}
  L12_2 = L0_1
  L12_2.overlayWithNetwork = true
  L12_2 = display
  L12_2 = L12_2.newRect
  L13_2 = 0
  L14_2 = 0
  L15_2 = display
  L15_2 = L15_2.contentWidth
  L16_2 = display
  L16_2 = L16_2.contentHeight
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
  L12_2.anchorX = 0
  L12_2.anchorY = 0
  L14_2 = L12_2
  L13_2 = L12_2.setFillColor
  L15_2 = 0
  L16_2 = 0
  L17_2 = 0
  L18_2 = 0.5882352941176471
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L12_2.x = 0
  L12_2.y = 0
  L13_2 = display
  L13_2 = L13_2.newImageRect
  L14_2 = "images/gui/mainMenu/windowDailyChallenges.png"
  L15_2 = 300
  L16_2 = 320
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L13_2.anchorX = 0.5
  L13_2.anchorY = 0
  L13_2.x = 240
  L13_2.y = 0
  L14_2 = L0_1
  L14_2 = L14_2.newText
  L15_2 = {}
  L16_2 = L0_1
  L16_2 = L16_2.localized
  L16_2 = L16_2.get
  L17_2 = "TodaysChallenges"
  L16_2 = L16_2(L17_2)
  L15_2.string = L16_2
  L15_2.size = 20
  L16_2 = display
  L16_2 = L16_2.contentWidth
  L16_2 = L16_2 * 0.5
  L15_2.x = L16_2
  L15_2.y = 22
  L16_2 = {}
  L17_2 = 1
  L18_2 = 1
  L19_2 = 1
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L16_2[3] = L19_2
  L15_2.color = L16_2
  L14_2 = L14_2(L15_2)
  
  function L15_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = table
    L1_3 = L1_3.sort
    L2_3 = A0_3
    
    function L3_3(A0_4, A1_4)
      local L2_4, L3_4, L4_4
      L2_4 = 0
      L3_4 = 0
      L4_4 = A0_4.header
      if L4_4 then
        L2_4 = 2
      end
      L4_4 = A1_4.header
      if L4_4 then
        L3_4 = 2
      end
      L4_4 = A0_4.consecutiveSpecialRow
      if L4_4 then
        L2_4 = 1
      end
      L4_4 = A1_4.consecutiveSpecialRow
      if L4_4 then
        L3_4 = 1
      end
      L4_4 = A0_4.serverStatus
      if L4_4 then
        L4_4 = A0_4.serverStatus
        L2_4 = L4_4.p
        L4_4 = A0_4.serverStatus
        L4_4 = L4_4.c
        if L4_4 == 1 then
          L2_4 = -1
        end
      end
      L4_4 = A1_4.serverStatus
      if L4_4 then
        L4_4 = A1_4.serverStatus
        L3_4 = L4_4.p
        L4_4 = A1_4.serverStatus
        L4_4 = L4_4.c
        if L4_4 == 1 then
          L3_4 = -1
        end
      end
      L4_4 = L2_4 > L3_4
      return L4_4
    end
    
    L1_3(L2_3, L3_3)
  end
  
  function L16_2()
    local L0_3, L1_3
    L0_3 = L5_2
    L0_3 = L0_3.cleanTable
    L0_3()
  end
  
  function L17_2()
    local L0_3, L1_3, L2_3
    L0_3 = L9_2
    if L0_3 then
      return
    end
    L0_3 = L16_2
    L0_3()
    L0_3 = L0_1
    L0_3 = L0_3.playerInfo
    L0_3.awardsTable = 1
    L0_3 = L15_2
    L1_3 = L7_2
    L0_3(L1_3)
    L0_3 = L5_2
    L0_3 = L0_3.createTable
    L1_3 = L7_2
    L2_3 = L10_2
    L0_3(L1_3, L2_3)
    L0_3 = L5_2
    L0_3 = L0_3.getTable
    L0_3 = L0_3()
    L1_3 = L0_3
    L0_3 = L0_3.setIsLocked
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = L14_2
    L1_3 = L0_1
    L1_3 = L1_3.localized
    L1_3 = L1_3.get
    L2_3 = "TodaysChallenges"
    L1_3 = L1_3(L2_3)
    L0_3.text = L1_3
    L0_3 = L10_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L6_2
    L0_3(L1_3, L2_3)
  end
  
  function L18_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
  function L19_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L0_1
      L1_3 = L1_3.hideOverlay
      L1_3()
    end
    L1_3 = true
    return L1_3
  end
  
  function L20_2(A0_3)
    local L1_3
    L1_3 = true
    return L1_3
  end
  
  L21_2 = L0_1
  L21_2 = L21_2.newButton
  L22_2 = {}
  L22_2.x = 360
  L22_2.y = 40
  L22_2.width = 43
  L22_2.height = 38
  L22_2.image = "images/gui/common/buttonClosePopupBrown.png"
  L22_2.onRelease = L18_2
  L21_2 = L21_2(L22_2)
  L6_2 = L21_2
  
  function L21_2()
    local L0_3, L1_3, L2_3
    L0_3 = L5_2
    L0_3 = L0_3.refreshTable
    L0_3()
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L6_2
    L0_3(L1_3, L2_3)
  end
  
  function L22_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3
    if A1_3 == 1 and A0_3 == 0 and A4_3 then
      L5_3 = {}
      L5_3.isModal = true
      L6_3 = {}
      L7_3 = L8_2
      L6_3.tableActive = L7_3
      L6_3.challengeId = A2_3
      L5_3.params = L6_3
      L6_3 = L0_1
      L6_3 = L6_3.showOverlay
      L7_3 = "lua.overlays.spinningWheel"
      L8_3 = L5_3
      L6_3(L7_3, L8_3)
    end
  end
  
  function L23_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L18_2
    L0_3()
    L0_3 = {}
    L0_3.isModal = true
    L1_3 = {}
    L1_3.activeTable = 4
    L0_3.params = L1_3
    L1_3 = L0_1
    L1_3 = L1_3.showOverlay
    L2_3 = "lua.overlays.achievementsScene"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  
  L24_2 = L3_2.new
  L25_2 = 124
  L26_2 = 28
  L27_2 = 250
  L28_2 = 294
  L29_2 = 70
  L30_2 = nil
  L31_2 = "challenge"
  L32_2 = L22_2
  L33_2 = 8
  L34_2 = L23_2
  L24_2 = L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
  L5_2 = L24_2
  
  function L24_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    if A0_3 then
      L1_3 = math
      L1_3 = L1_3.floor
      L2_3 = A0_3 / 60
      L1_3 = L1_3(L2_3)
      L2_3 = math
      L2_3 = L2_3.floor
      L3_3 = L1_3 / 60
      L2_3 = L2_3(L3_3)
      L3_3 = L2_3 * 60
      L1_3 = L1_3 - L3_3
      if L1_3 < 10 then
        L3_3 = "0"
        L4_3 = L1_3
        L1_3 = L3_3 .. L4_3
      end
      L3_3 = L2_3
      L4_3 = "h "
      L5_3 = L1_3
      L6_3 = "m"
      L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3
      return L3_3
    end
    L1_3 = "12h 14m"
    return L1_3
  end
  
  function L25_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = L0_1
    L2_3 = L2_3.data
    L2_3.dailyToClaim = 0
    L2_3 = {}
    L7_2 = L2_3
    L2_3 = L7_2
    L3_3 = {}
    L2_3[1] = L3_3
    L2_3 = L7_2
    L2_3 = L2_3[1]
    L3_3 = L24_2
    L4_3 = A1_3
    L3_3 = L3_3(L4_3)
    L2_3.timeLeft = L3_3
    L2_3 = L7_2
    L2_3 = L2_3[1]
    L2_3.header = true
    L2_3 = L0_1
    L2_3 = L2_3.consecutiveLoginsFormatted
    if L2_3 then
      L2_3 = L7_2
      L3_3 = {}
      L2_3[2] = L3_3
      L2_3 = L7_2
      L2_3 = L2_3[2]
      L2_3.id = 1
      L2_3 = L7_2
      L2_3 = L2_3[2]
      L2_3.consecutiveSpecialRow = true
    end
    L2_3 = pairs
    L3_3 = A0_3
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L0_1
      L7_3 = L7_3.awards
      L7_3 = L7_3.getDailyChallenge
      L8_3 = tonumber
      L9_3 = L5_3
      L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3)
      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
      if L7_3 then
        L8_3 = L7_3.hidden
        if not L8_3 then
          L8_3 = L7_2
          L8_3 = #L8_3
          L8_3 = L8_3 + 1
          L9_3 = L7_2
          L9_3[L8_3] = L7_3
          L9_3 = L7_2
          L9_3 = L9_3[L8_3]
          L9_3.id = L5_3
          L9_3 = L7_2
          L9_3 = L9_3[L8_3]
          L9_3.serverStatus = L6_3
          L9_3 = L7_2
          L9_3 = L9_3[L8_3]
          L9_3 = L9_3.serverStatus
          L10_3 = L7_2
          L10_3 = L10_3[L8_3]
          L10_3 = L10_3.serverStatus
          L10_3 = L10_3.p
          L11_3 = L7_3.goal
          L10_3 = L10_3 / L11_3
          L9_3.p = L10_3
          L9_3 = L7_2
          L9_3 = L9_3[L8_3]
          L9_3 = L9_3.serverStatus
          L9_3 = L9_3.p
          if L9_3 == 1 then
            L9_3 = L7_2
            L9_3 = L9_3[L8_3]
            L9_3 = L9_3.serverStatus
            L9_3 = L9_3.c
            if L9_3 == 0 then
              L9_3 = L0_1
              L9_3 = L9_3.data
              L10_3 = L0_1
              L10_3 = L10_3.data
              L10_3 = L10_3.dailyToClaim
              L10_3 = L10_3 + 1
              L9_3.dailyToClaim = L10_3
            end
          end
        end
      end
    end
  end
  
  function L26_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = L9_2
    if L1_3 then
      return
    end
    L1_3 = A0_3.m
    L2_3 = L4_2
    L2_3 = L2_3.claimDailyChallenge
    L2_3 = L2_3()
    if L1_3 == L2_3 then
      L1_3 = A0_3.i
      if L1_3 then
        L1_3 = pairs
        L2_3 = L7_2
        L1_3, L2_3, L3_3 = L1_3(L2_3)
        for L4_3, L5_3 in L1_3, L2_3, L3_3 do
          L6_3 = tonumber
          L7_3 = A0_3.i
          L6_3 = L6_3(L7_3)
          L7_3 = tonumber
          L8_3 = L5_3.id
          L7_3 = L7_3(L8_3)
          if L6_3 == L7_3 then
            L6_3 = {}
            L6_3.c = 1
            L6_3.p = 1
            L5_3.serverStatus = L6_3
            L6_3 = L11_2
            L7_3 = tonumber
            L8_3 = A0_3.i
            L7_3 = L7_3(L8_3)
            L6_3[L7_3] = 0
          end
        end
        L1_3 = L0_1
        L1_3 = L1_3.data
        L2_3 = L0_1
        L2_3 = L2_3.data
        L2_3 = L2_3.dailyToClaim
        L2_3 = L2_3 - 1
        L1_3.dailyToClaim = L2_3
        L1_3 = L0_1
        L1_3 = L1_3.data
        L1_3 = L1_3.dailyToClaim
        if L1_3 < 0 then
          L1_3 = L0_1
          L1_3 = L1_3.data
          L1_3.dailyToClaim = 0
        end
        L1_3 = L0_1
        L1_3 = L1_3.audio
        L1_3 = L1_3.play
        L2_3 = "collect_achievement"
        L1_3(L2_3)
        L1_3 = L21_2
        L1_3()
        L1_3 = L0_1
        L1_3 = L1_3.analytics
        L1_3 = L1_3.newEvent
        L2_3 = "design"
        L3_3 = {}
        L4_3 = "claim:daily:"
        L5_3 = tostring
        L6_3 = A0_3.i
        L5_3 = L5_3(L6_3)
        L4_3 = L4_3 .. L5_3
        L3_3.event_id = L4_3
        L4_3 = tonumber
        L5_3 = A0_3.i
        L4_3 = L4_3(L5_3)
        L3_3.value = L4_3
        L4_3 = L0_1
        L4_3 = L4_3.config
        L4_3 = L4_3.fullVersion
        L3_3.area = L4_3
        L1_3(L2_3, L3_3)
      end
    end
  end
  
  function L27_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L12_2
    L0_3(L1_3, L2_3)
    L0_3 = L10_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L13_2
    L0_3(L1_3, L2_3)
    L0_3 = L10_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L14_2
    L0_3(L1_3, L2_3)
    L0_3 = L10_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L6_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L10_2
    L0_3(L1_3, L2_3)
  end
  
  function L28_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L12_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L19_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L20_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L29_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = true
    L9_2 = L0_3
    L0_3 = L16_2
    L0_3()
    L0_3 = L12_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L19_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L13_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L20_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L0_1
    L0_3.overlayWithNetwork = false
  end
  
  L2_1 = L29_2
  L29_2 = L27_2
  L29_2()
  L29_2 = L28_2
  L29_2()
  L29_2 = L25_2
  L30_2 = L0_1
  L30_2 = L30_2.todayChallenges
  L30_2 = L30_2.data
  L31_2 = L0_1
  L31_2 = L31_2.todayChallenges
  L31_2 = L31_2.time
  L29_2(L30_2, L31_2)
  L29_2 = L17_2
  L29_2()
  L29_2 = L0_1
  L29_2 = L29_2.comm
  L29_2 = L29_2.setCallback
  L30_2 = L26_2
  L29_2(L30_2)
  L29_2 = L0_1
  L29_2 = L29_2.bouncer
  L29_2 = L29_2.down
  L30_2 = L10_2
  L29_2(L30_2)
end

L1_1.create = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    return
  end
  L3_2 = require
  L4_2 = "lua.modules.androidBackButton"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1
  L4_2 = L4_2.database
  L4_2 = L4_2.setSeenDailyChallengePrompt
  L5_2 = L0_1
  L5_2 = L5_2.todayChallenges
  L5_2 = L5_2.time
  L4_2(L5_2)
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = L3_2
    L0_3 = L0_3.isOverlay
    L1_3 = false
    L0_3(L1_3)
  end
  
  L3_1 = L4_2
  L4_2 = L3_2.isOverlay
  L5_2 = true
  L4_2(L5_2)
end

L1_1.show = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L3_2 = A1_2.parent
    if L3_2 then
      L3_2 = A1_2.parent
      L3_2 = L3_2.overlayEnded
      if L3_2 then
        L3_2 = A1_2.parent
        L4_2 = L3_2
        L3_2 = L3_2.overlayEnded
        L3_2(L4_2)
      end
    end
    return
  end
  L3_2 = L3_1
  L3_2()
end

L1_1.hide = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.view
  L3_2 = L2_1
  L3_2()
end

L1_1.destroy = L4_1
L5_1 = L1_1
L4_1 = L1_1.addEventListener
L6_1 = "create"
L7_1 = L1_1
L4_1(L5_1, L6_1, L7_1)
L5_1 = L1_1
L4_1 = L1_1.addEventListener
L6_1 = "show"
L7_1 = L1_1
L4_1(L5_1, L6_1, L7_1)
L5_1 = L1_1
L4_1 = L1_1.addEventListener
L6_1 = "hide"
L7_1 = L1_1
L4_1(L5_1, L6_1, L7_1)
L5_1 = L1_1
L4_1 = L1_1.addEventListener
L6_1 = "destroy"
L7_1 = L1_1
L4_1(L5_1, L6_1, L7_1)
return L1_1
