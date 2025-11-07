local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
L1_1 = require
L2_1 = "lua.network.tcpClient"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "lua.network.tcpMessageFormat"
L3_1 = L3_1(L4_1)
L4_1 = 0

function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = L2_1
  L0_2 = L0_2.database
  L0_2 = L0_2.getDropdownStatus
  L0_2 = L0_2()
  L1_2 = L0_2 == 0
  return L1_2
end

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = L5_1
  L1_2 = L1_2()
  if L1_2 then
    return
  end
  L1_2 = A0_2.username
  if L1_2 == nil then
    L2_2 = print
    L3_2 = "WARNING: showGameInvite - nameToShow is nil"
    L2_2(L3_2)
    return
  end
  L2_2 = L2_1
  L2_2 = L2_2.getSceneName
  L3_2 = "current"
  L2_2 = L2_2(L3_2)
  if L2_2 == "lua.scenes.lobbyCustomPlay" then
    L2_2 = L2_1
    L2_2 = L2_2.gameHostData
    L2_2 = L2_2.serverAddress
    L3_2 = A0_2.a
    if L2_2 == L3_2 then
      L2_2 = L2_1
      L2_2 = L2_2.gameHostData
      L2_2 = L2_2.sessionId
      L3_2 = A0_2.s
      if L2_2 == L3_2 then
        L2_2 = L2_1
        L2_2 = L2_2.database
        L2_2 = L2_2.removeGameInvite
        L3_2 = A0_2.p
        L2_2(L3_2)
        return
      end
    end
  else
    L2_2 = L2_1
    L2_2 = L2_2.data
    L2_2 = L2_2.gameInfo
    L2_2 = L2_2.gameType
    if L2_2 == 3 then
      L2_2 = L2_1
      L2_2 = L2_2.gameHostData
      L2_2 = L2_2.serverAddress
      L3_2 = A0_2.a
      if L2_2 == L3_2 then
        L2_2 = L2_1
        L2_2 = L2_2.gameHostData
        L2_2 = L2_2.sessionId
        L3_2 = A0_2.s
        if L2_2 == L3_2 then
          L2_2 = L2_1
          L2_2 = L2_2.database
          L2_2 = L2_2.removeGameInvite
          L3_2 = A0_2.p
          L2_2(L3_2)
          return
        end
      end
    else
      L2_2 = L2_1
      L2_2 = L2_2.database
      L2_2 = L2_2.getGameInvite
      L3_2 = A0_2.p
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = os
        L2_2 = L2_2.time
        L2_2 = L2_2()
        L3_2 = L2_1
        L3_2 = L3_2.database
        L3_2 = L3_2.getGameInvite
        L4_2 = A0_2.p
        L3_2 = L3_2(L4_2)
        L3_2 = L3_2.addTime
        L2_2 = L2_2 - L3_2
        L3_2 = L2_1
        L3_2 = L3_2.config
        L3_2 = L3_2.dropdownInterval
        if L2_2 < L3_2 then
          return
        end
      end
    end
  end
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  L3_2 = false
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = "images/gui/common/dropdown/bar.png"
  L6_2 = 310
  L7_2 = 33
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L4_2.anchorX = 0
  L4_2.anchorY = 0
  L4_2.x = 0
  L4_2.y = 0
  L6_2 = L2_2
  L5_2 = L2_2.insert
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = nil
  L6_2 = nil
  L7_2 = "images/gui/common/dropdown/gameInvite.png"
  L8_2 = A0_2.m
  L9_2 = L3_1
  L9_2 = L9_2.receive2v2GameInvite
  L9_2 = L9_2()
  if L8_2 == L9_2 then
    L7_2 = "images/gui/common/dropdown/2v2.png"
  end
  L8_2 = display
  L8_2 = L8_2.newImageRect
  L9_2 = L7_2
  L10_2 = 24
  L11_2 = 24
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = L4_2.x
  L9_2 = L9_2 + 40
  L8_2.x = L9_2
  L9_2 = L4_2.y
  L9_2 = L9_2 + 10
  L8_2.y = L9_2
  L10_2 = L2_2
  L9_2 = L2_2.insert
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = string
  L9_2 = L9_2.len
  L10_2 = L1_2
  L9_2 = L9_2(L10_2)
  if 10 < L9_2 then
    L10_2 = L1_2
    L9_2 = L1_2.sub
    L11_2 = 1
    L12_2 = 10
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = ".."
    L1_2 = L9_2 .. L10_2
  end
  L9_2 = L2_1
  L9_2 = L9_2.newText
  L10_2 = {}
  L11_2 = L2_1
  L11_2 = L11_2.localized
  L11_2 = L11_2.get
  L12_2 = "Join"
  L11_2 = L11_2(L12_2)
  L12_2 = L1_2
  L11_2 = L11_2 .. L12_2
  L10_2.string = L11_2
  L10_2.size = 20
  L10_2.x = 90
  L10_2.y = 10
  L10_2.ax = 0
  L9_2 = L9_2(L10_2)
  L11_2 = L2_2
  L10_2 = L2_2.insert
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L3_2
    if not L1_3 then
      L1_3 = true
      L3_2 = L1_3
      L1_3 = L5_2
      if L1_3 then
        L1_3 = transition
        L1_3 = L1_3.cancel
        L2_3 = L5_2
        L1_3(L2_3)
        L1_3 = nil
        L5_2 = L1_3
      end
      L1_3 = L6_2
      if L1_3 then
        L1_3 = timer
        L1_3 = L1_3.cancel
        L2_3 = L6_2
        L1_3(L2_3)
        L1_3 = nil
        L6_2 = L1_3
      end
      L2_3 = A0_3
      L1_3 = A0_3.removeEventListener
      L3_3 = "touch"
      L4_3 = A0_3
      L1_3(L2_3, L3_3, L4_3)
      L2_3 = A0_3
      L1_3 = A0_3.removeSelf
      L1_3(L2_3)
      A0_3 = nil
    end
  end
  
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L2_2
    L2_3 = {}
    L2_3.time = 200
    L2_3.y = -33
    L3_3 = L10_2
    L2_3.onComplete = L3_3
    L3_3 = L10_2
    L2_3.onCancel = L3_3
    L0_3 = L0_3(L1_3, L2_3)
    L5_2 = L0_3
  end
  
  function L12_2()
    local L0_3, L1_3
    L0_3 = L11_2
    L0_3()
    L0_3 = true
    return L0_3
  end
  
  L13_2 = L2_1
  L13_2 = L13_2.newButton
  L14_2 = {}
  L15_2 = L4_2.x
  L16_2 = L4_2.width
  L15_2 = L15_2 + L16_2
  L15_2 = L15_2 - 30
  L14_2.x = L15_2
  L15_2 = L4_2.y
  L15_2 = L15_2 + 14
  L14_2.y = L15_2
  L14_2.width = 43
  L14_2.height = 38
  L14_2.image = "images/gui/common/buttonClosePopup.png"
  L14_2.onRelease = L12_2
  L13_2 = L13_2(L14_2)
  L15_2 = L2_2
  L14_2 = L2_2.insert
  L16_2 = L13_2
  L14_2(L15_2, L16_2)
  
  function L14_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.m
    L1_3 = L3_1
    L1_3 = L1_3.receive2v2GameInvite
    L1_3 = L1_3()
    if L0_3 == L1_3 then
      L0_3 = L2_1
      L0_3 = L0_3.gotoScene
      L1_3 = "lua.scenes.lobby2v2Play"
      L0_3(L1_3)
    else
      L0_3 = L2_1
      L0_3 = L0_3.gotoScene
      L1_3 = "lua.scenes.lobbyCustomPlay"
      L0_3(L1_3)
    end
    L0_3 = L2_1
    L0_3 = L0_3.database
    L0_3 = L0_3.removeGameInvite
    L1_3 = A0_2
    L1_3 = L1_3.p
    L0_3(L1_3)
    L0_3 = L10_2
    L1_3 = L2_2
    L0_3(L1_3)
  end
  
  function L15_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L4_1
    L0_3 = L0_3 + 2000
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()
    if L0_3 > L1_3 then
      return
    end
    L0_3 = system
    L0_3 = L0_3.getTimer
    L0_3 = L0_3()
    L4_1 = L0_3
    L0_3 = L2_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3.gameType = 4
    L0_3 = A0_2
    L0_3 = L0_3.m
    L1_3 = L3_1
    L1_3 = L1_3.receive2v2GameInvite
    L1_3 = L1_3()
    if L0_3 == L1_3 then
      L0_3 = L2_1
      L0_3 = L0_3.data
      L0_3 = L0_3.gameInfo
      L0_3.gameType = 6
    end
    L0_3 = L10_2
    L1_3 = L2_2
    L0_3(L1_3)
    L0_3 = L1_1
    L0_3 = L0_3.stopTCPClient
    L0_3()
    L0_3 = L2_1
    L0_3 = L0_3.getSceneName
    L1_3 = "current"
    L0_3 = L0_3(L1_3)
    L1_3 = L2_1
    L1_3 = L1_3.gameHostData
    L2_3 = A0_2
    L2_3 = L2_3.a
    L1_3.serverAddress = L2_3
    L1_3 = L2_1
    L1_3 = L1_3.config
    L2_3 = A0_2
    L2_3 = L2_3.a
    L1_3.tcpClient = L2_3
    L1_3 = L2_1
    L1_3 = L1_3.gameHostData
    L2_3 = A0_2
    L2_3 = L2_3.s
    L1_3.sessionId = L2_3
    L1_3 = L2_1
    L1_3 = L1_3.gotoScene
    L2_3 = "lua.scenes.emptyScene"
    L1_3(L2_3)
    L1_3 = L2_1
    L1_3 = L1_3.removeScene
    L2_3 = L0_3
    L1_3(L2_3)
    L1_3 = timer
    L1_3 = L1_3.performWithDelay
    L2_3 = 200
    L3_3 = L14_2
    L4_3 = 1
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L2_1
    L1_3 = L1_3.onboarding
    L1_3 = L1_3.isActive
    if L1_3 == true then
      L1_3 = L2_1
      L1_3 = L1_3.onboarding
      L1_3 = L1_3.deactivate
      L1_3()
    end
    L1_3 = true
    return L1_3
  end
  
  L2_2.x = 85
  L2_2.y = -33
  L2_2.touch = L15_2
  L17_2 = L2_2
  L16_2 = L2_2.addEventListener
  L18_2 = "touch"
  L19_2 = L2_2
  L16_2(L17_2, L18_2, L19_2)
  L16_2 = L2_1
  L16_2 = L16_2.audio
  L16_2 = L16_2.play
  L17_2 = "dropdown"
  L16_2(L17_2)
  L16_2 = transition
  L16_2 = L16_2.to
  L17_2 = L2_2
  L18_2 = {}
  L18_2.time = 200
  L18_2.y = 0
  L16_2(L17_2, L18_2)
  L16_2 = timer
  L16_2 = L16_2.performWithDelay
  L17_2 = 4200
  L18_2 = L11_2
  L19_2 = 1
  L16_2 = L16_2(L17_2, L18_2, L19_2)
  L6_2 = L16_2
end

L0_1.showGameInvite = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = display
  L1_2 = L1_2.newGroup
  L1_2 = L1_2()
  L2_2 = false
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = "images/gui/common/dropdown/bar.png"
  L5_2 = 310
  L6_2 = 33
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2.anchorX = 0
  L3_2.anchorY = 0
  L3_2.x = 0
  L3_2.y = 0
  L5_2 = L1_2
  L4_2 = L1_2.insert
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = nil
  L5_2 = nil
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = "images/gui/common/dropdown/friends.png"
  L8_2 = 24
  L9_2 = 24
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = L3_2.x
  L7_2 = L7_2 + 40
  L6_2.x = L7_2
  L7_2 = L3_2.y
  L7_2 = L7_2 + 10
  L6_2.y = L7_2
  L8_2 = L1_2
  L7_2 = L1_2.insert
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = nil
  if 1 < A0_2 then
    L8_2 = A0_2
    L9_2 = L2_1
    L9_2 = L9_2.localized
    L9_2 = L9_2.get
    L10_2 = "FriendsOnline"
    L9_2 = L9_2(L10_2)
    L7_2 = L8_2 .. L9_2
  else
    L8_2 = A0_2
    L9_2 = L2_1
    L9_2 = L9_2.localized
    L9_2 = L9_2.get
    L10_2 = "FriendOnline"
    L9_2 = L9_2(L10_2)
    L7_2 = L8_2 .. L9_2
  end
  L8_2 = L2_1
  L8_2 = L8_2.newText
  L9_2 = {}
  L9_2.string = L7_2
  L9_2.size = 20
  L9_2.x = 90
  L9_2.y = 10
  L9_2.ax = 0
  L8_2 = L8_2(L9_2)
  L10_2 = L1_2
  L9_2 = L1_2.insert
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L2_2
    if not L1_3 then
      L1_3 = true
      L2_2 = L1_3
      L1_3 = L4_2
      if L1_3 then
        L1_3 = transition
        L1_3 = L1_3.cancel
        L2_3 = L4_2
        L1_3(L2_3)
        L1_3 = nil
        L4_2 = L1_3
      end
      L1_3 = L5_2
      if L1_3 then
        L1_3 = timer
        L1_3 = L1_3.cancel
        L2_3 = L5_2
        L1_3(L2_3)
        L1_3 = nil
        L5_2 = L1_3
      end
      L2_3 = A0_3
      L1_3 = A0_3.removeEventListener
      L3_3 = "touch"
      L4_3 = A0_3
      L1_3(L2_3, L3_3, L4_3)
      L2_3 = A0_3
      L1_3 = A0_3.removeSelf
      L1_3(L2_3)
      A0_3 = nil
    end
  end
  
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L1_2
    L2_3 = {}
    L2_3.time = 200
    L2_3.y = -33
    L3_3 = L9_2
    L2_3.onComplete = L3_3
    L3_3 = L9_2
    L2_3.onCancel = L3_3
    L0_3 = L0_3(L1_3, L2_3)
    L4_2 = L0_3
  end
  
  function L11_2()
    local L0_3, L1_3
    L0_3 = L10_2
    L0_3()
    L0_3 = true
    return L0_3
  end
  
  L12_2 = L2_1
  L12_2 = L12_2.newButton
  L13_2 = {}
  L14_2 = L3_2.x
  L15_2 = L3_2.width
  L14_2 = L14_2 + L15_2
  L14_2 = L14_2 - 30
  L13_2.x = L14_2
  L14_2 = L3_2.y
  L14_2 = L14_2 + 14
  L13_2.y = L14_2
  L13_2.width = 43
  L13_2.height = 38
  L13_2.image = "images/gui/common/buttonClosePopup.png"
  L13_2.onRelease = L11_2
  L12_2 = L12_2(L13_2)
  L14_2 = L1_2
  L13_2 = L1_2.insert
  L15_2 = L12_2
  L13_2(L14_2, L15_2)
  
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L2_1
    L0_3 = L0_3.getSceneName
    L1_3 = "current"
    L0_3 = L0_3(L1_3)
    L1_3 = L9_2
    L2_3 = L1_2
    L1_3(L2_3)
    L1_3 = {}
    L1_3.isModal = true
    L2_3 = L2_1
    L2_3 = L2_3.showOverlay
    L3_3 = "lua.overlays.messages"
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
    L2_3 = true
    return L2_3
  end
  
  L1_2.x = 85
  L1_2.y = -33
  L1_2.touch = L13_2
  L15_2 = L1_2
  L14_2 = L1_2.addEventListener
  L16_2 = "touch"
  L17_2 = L1_2
  L14_2(L15_2, L16_2, L17_2)
  L14_2 = L2_1
  L14_2 = L14_2.audio
  L14_2 = L14_2.play
  L15_2 = "dropdown"
  L14_2(L15_2)
  L14_2 = transition
  L14_2 = L14_2.to
  L15_2 = L1_2
  L16_2 = {}
  L16_2.time = 200
  L16_2.y = 0
  L14_2(L15_2, L16_2)
  L14_2 = timer
  L14_2 = L14_2.performWithDelay
  L15_2 = 4200
  L16_2 = L10_2
  L17_2 = 1
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L5_2 = L14_2
end

L0_1.showOnlineFriend = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = display
  L1_2 = L1_2.newGroup
  L1_2 = L1_2()
  L2_2 = false
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = "images/gui/common/dropdown/bar.png"
  L5_2 = 310
  L6_2 = 33
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2.anchorX = 0
  L3_2.anchorY = 0
  L3_2.x = 0
  L3_2.y = 0
  L5_2 = L1_2
  L4_2 = L1_2.insert
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = "images/gui/common/dropdown/clan.png"
  L9_2 = 24
  L10_2 = 24
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2 = L7_2
  L7_2 = L3_2.x
  L7_2 = L7_2 + 40
  L6_2.x = L7_2
  L7_2 = L3_2.y
  L7_2 = L7_2 + 10
  L6_2.y = L7_2
  L8_2 = L1_2
  L7_2 = L1_2.insert
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.n
  if L7_2 == nil then
    L7_2 = ""
  end
  L8_2 = string
  L8_2 = L8_2.len
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  if 10 < L8_2 then
    L9_2 = L7_2
    L8_2 = L7_2.sub
    L10_2 = 1
    L11_2 = 10
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = ".."
    L7_2 = L8_2 .. L9_2
  end
  L8_2 = L2_1
  L8_2 = L8_2.newText
  L9_2 = {}
  L9_2.string = L7_2
  L9_2.size = 20
  L9_2.x = 90
  L9_2.y = 10
  L9_2.ax = 0
  L8_2 = L8_2(L9_2)
  L10_2 = L1_2
  L9_2 = L1_2.insert
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L2_2
    if not L1_3 then
      L1_3 = true
      L2_2 = L1_3
      L1_3 = L4_2
      if L1_3 then
        L1_3 = transition
        L1_3 = L1_3.cancel
        L2_3 = L4_2
        L1_3(L2_3)
        L1_3 = nil
        L4_2 = L1_3
      end
      L1_3 = L5_2
      if L1_3 then
        L1_3 = timer
        L1_3 = L1_3.cancel
        L2_3 = L5_2
        L1_3(L2_3)
        L1_3 = nil
        L5_2 = L1_3
      end
      L2_3 = A0_3
      L1_3 = A0_3.removeEventListener
      L3_3 = "touch"
      L4_3 = A0_3
      L1_3(L2_3, L3_3, L4_3)
      L2_3 = A0_3
      L1_3 = A0_3.removeSelf
      L1_3(L2_3)
      A0_3 = nil
    end
  end
  
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L1_2
    L2_3 = {}
    L2_3.time = 200
    L2_3.y = -33
    L3_3 = L9_2
    L2_3.onComplete = L3_3
    L3_3 = L9_2
    L2_3.onCancel = L3_3
    L0_3 = L0_3(L1_3, L2_3)
    L4_2 = L0_3
  end
  
  function L11_2()
    local L0_3, L1_3
    L0_3 = L10_2
    L0_3()
    L0_3 = true
    return L0_3
  end
  
  L12_2 = L2_1
  L12_2 = L12_2.newButton
  L13_2 = {}
  L14_2 = L3_2.x
  L15_2 = L3_2.width
  L14_2 = L14_2 + L15_2
  L14_2 = L14_2 - 30
  L13_2.x = L14_2
  L14_2 = L3_2.y
  L14_2 = L14_2 + 14
  L13_2.y = L14_2
  L13_2.width = 43
  L13_2.height = 38
  L13_2.image = "images/gui/common/buttonClosePopup.png"
  L13_2.onRelease = L11_2
  L12_2 = L12_2(L13_2)
  L14_2 = L1_2
  L13_2 = L1_2.insert
  L15_2 = L12_2
  L13_2(L14_2, L15_2)
  
  function L13_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = {}
    L1_3.isModal = true
    L2_3 = {}
    L1_3.params = L2_3
    L2_3 = L1_3.params
    L2_3.tabToShow = 1
    L2_3 = L2_1
    L2_3 = L2_3.showOverlay
    L3_3 = "lua.overlays.messages"
    L4_3 = {}
    L4_3.isModal = true
    L2_3(L3_3, L4_3)
    L2_3 = L9_2
    L3_3 = L1_2
    L2_3(L3_3)
    L2_3 = true
    return L2_3
  end
  
  L1_2.x = 85
  L1_2.y = -33
  L1_2.touch = L13_2
  L15_2 = L1_2
  L14_2 = L1_2.addEventListener
  L16_2 = "touch"
  L17_2 = L1_2
  L14_2(L15_2, L16_2, L17_2)
  L14_2 = L2_1
  L14_2 = L14_2.audio
  L14_2 = L14_2.play
  L15_2 = "dropdown"
  L14_2(L15_2)
  L14_2 = transition
  L14_2 = L14_2.to
  L15_2 = L1_2
  L16_2 = {}
  L16_2.time = 200
  L16_2.y = 0
  L14_2(L15_2, L16_2)
  L14_2 = timer
  L14_2 = L14_2.performWithDelay
  L15_2 = 4200
  L16_2 = L10_2
  L17_2 = 1
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L5_2 = L14_2
end

L0_1.showClanInvite = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  L3_2 = false
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = "images/gui/common/dropdown/bar.png"
  L6_2 = 310
  L7_2 = 33
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L4_2.anchorX = 0
  L4_2.anchorY = 0
  L4_2.x = 0
  L4_2.y = 0
  L6_2 = L2_2
  L5_2 = L2_2.insert
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = nil
  L6_2 = nil
  L7_2 = nil
  if A1_2 then
    L8_2 = display
    L8_2 = L8_2.newImageRect
    L9_2 = "images/gui/common/dropdown/mysterybox.png"
    L10_2 = 24
    L11_2 = 24
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2 = L8_2
  else
    L8_2 = display
    L8_2 = L8_2.newImageRect
    L9_2 = "images/gui/common/dropdown/friendReq.png"
    L10_2 = 24
    L11_2 = 24
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2 = L8_2
  end
  L8_2 = L4_2.x
  L8_2 = L8_2 + 40
  L7_2.x = L8_2
  L8_2 = L4_2.y
  L8_2 = L8_2 + 10
  L7_2.y = L8_2
  L9_2 = L2_2
  L8_2 = L2_2.insert
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2.n
  if L8_2 == nil then
    L8_2 = ""
  end
  L9_2 = string
  L9_2 = L9_2.len
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  if 10 < L9_2 then
    L10_2 = L8_2
    L9_2 = L8_2.sub
    L11_2 = 1
    L12_2 = 10
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = ".."
    L8_2 = L9_2 .. L10_2
  end
  L9_2 = L2_1
  L9_2 = L9_2.newText
  L10_2 = {}
  L10_2.string = L8_2
  L10_2.size = 20
  L10_2.x = 90
  L10_2.y = 10
  L10_2.ax = 0
  L9_2 = L9_2(L10_2)
  L11_2 = L2_2
  L10_2 = L2_2.insert
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L3_2
    if not L1_3 then
      L1_3 = true
      L3_2 = L1_3
      L1_3 = L5_2
      if L1_3 then
        L1_3 = transition
        L1_3 = L1_3.cancel
        L2_3 = L5_2
        L1_3(L2_3)
        L1_3 = nil
        L5_2 = L1_3
      end
      L1_3 = L6_2
      if L1_3 then
        L1_3 = timer
        L1_3 = L1_3.cancel
        L2_3 = L6_2
        L1_3(L2_3)
        L1_3 = nil
        L6_2 = L1_3
      end
      L2_3 = A0_3
      L1_3 = A0_3.removeEventListener
      L3_3 = "touch"
      L4_3 = A0_3
      L1_3(L2_3, L3_3, L4_3)
      L2_3 = A0_3
      L1_3 = A0_3.removeSelf
      L1_3(L2_3)
      A0_3 = nil
    end
  end
  
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L2_2
    L2_3 = {}
    L2_3.time = 200
    L2_3.y = -33
    L3_3 = L10_2
    L2_3.onComplete = L3_3
    L3_3 = L10_2
    L2_3.onCancel = L3_3
    L0_3 = L0_3(L1_3, L2_3)
    L5_2 = L0_3
  end
  
  function L12_2()
    local L0_3, L1_3
    L0_3 = L11_2
    L0_3()
    L0_3 = true
    return L0_3
  end
  
  L13_2 = L2_1
  L13_2 = L13_2.newButton
  L14_2 = {}
  L15_2 = L4_2.x
  L16_2 = L4_2.width
  L15_2 = L15_2 + L16_2
  L15_2 = L15_2 - 30
  L14_2.x = L15_2
  L15_2 = L4_2.y
  L15_2 = L15_2 + 14
  L14_2.y = L15_2
  L14_2.width = 43
  L14_2.height = 38
  L14_2.image = "images/gui/common/buttonClosePopup.png"
  L14_2.onRelease = L12_2
  L13_2 = L13_2(L14_2)
  L15_2 = L2_2
  L14_2 = L2_2.insert
  L16_2 = L13_2
  L14_2(L15_2, L16_2)
  
  function L14_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L2_1
    L1_3 = L1_3.showOverlay
    L2_3 = "lua.overlays.messages"
    L3_3 = {}
    L3_3.isModal = true
    L1_3(L2_3, L3_3)
    L1_3 = L10_2
    L2_3 = L2_2
    L1_3(L2_3)
    L1_3 = true
    return L1_3
  end
  
  L2_2.x = 85
  L2_2.y = -33
  L2_2.touch = L14_2
  L16_2 = L2_2
  L15_2 = L2_2.addEventListener
  L17_2 = "touch"
  L18_2 = L2_2
  L15_2(L16_2, L17_2, L18_2)
  L15_2 = L2_1
  L15_2 = L15_2.audio
  L15_2 = L15_2.play
  L16_2 = "dropdown"
  L15_2(L16_2)
  L15_2 = transition
  L15_2 = L15_2.to
  L16_2 = L2_2
  L17_2 = {}
  L17_2.time = 200
  L17_2.y = 0
  L15_2(L16_2, L17_2)
  L15_2 = timer
  L15_2 = L15_2.performWithDelay
  L16_2 = 4200
  L17_2 = L11_2
  L18_2 = 1
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L6_2 = L15_2
end

L0_1.showFriendRequest = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = display
  L1_2 = L1_2.newGroup
  L1_2 = L1_2()
  L2_2 = false
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = "images/gui/common/dropdown/barAchievement.png"
  L5_2 = 310
  L6_2 = 33
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2.anchorX = 0
  L3_2.anchorY = 0
  L3_2.x = 0
  L3_2.y = 0
  L5_2 = L1_2
  L4_2 = L1_2.insert
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = nil
  L5_2 = nil
  L6_2 = A0_2[2]
  L6_2 = L6_2 + 1
  A0_2[2] = L6_2
  L6_2 = ""
  L7_2 = nil
  L8_2 = A0_2[2]
  if L8_2 == 1 then
    L8_2 = L2_1
    L8_2 = L8_2.awards
    L8_2 = L8_2.getDailyChallengeName
    L9_2 = A0_2[3]
    L8_2 = L8_2(L9_2)
    L6_2 = L8_2
    L8_2 = L2_1
    L8_2 = L8_2.data
    L9_2 = L2_1
    L9_2 = L9_2.data
    L9_2 = L9_2.dailyToClaim
    L9_2 = L9_2 + 1
    L8_2.dailyToClaim = L9_2
    L8_2 = L2_1
    L8_2 = L8_2.awards
    L8_2 = L8_2.getDailyChallengeImage
    L9_2 = A0_2[3]
    L8_2 = L8_2(L9_2)
    L9_2 = "images/gui/challenges/iconsDaily/"
    L10_2 = L8_2
    L11_2 = ".png"
    L7_2 = L9_2 .. L10_2 .. L11_2
  else
    L8_2 = A0_2[2]
    if L8_2 == 2 then
      L8_2 = L2_1
      L8_2 = L8_2.awards
      L8_2 = L8_2.getAchievementName
      L9_2 = A0_2[3]
      L10_2 = A0_2[4]
      L8_2 = L8_2(L9_2, L10_2)
      L6_2 = L8_2
      L8_2 = L2_1
      L8_2 = L8_2.data
      L9_2 = L2_1
      L9_2 = L9_2.data
      L9_2 = L9_2.achievementToClaim
      L9_2 = L9_2 + 1
      L8_2.achievementToClaim = L9_2
      L8_2 = L2_1
      L8_2 = L8_2.awards
      L8_2 = L8_2.getAchievementImage
      L9_2 = A0_2[3]
      L8_2 = L8_2(L9_2)
      L9_2 = "images/gui/challenges/iconsAchiv/"
      L10_2 = L8_2
      L11_2 = ".png"
      L7_2 = L9_2 .. L10_2 .. L11_2
    end
  end
  L8_2 = display
  L8_2 = L8_2.newImageRect
  L9_2 = L7_2
  L10_2 = 55
  L11_2 = 55
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  if L8_2 == nil then
    L9_2 = display
    L9_2 = L9_2.newImageRect
    L10_2 = "images/gui/challenges/iconsDaily/1.png"
    L11_2 = 55
    L12_2 = 55
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L8_2 = L9_2
  end
  L9_2 = L3_2.x
  L9_2 = L9_2 + 40
  L8_2.x = L9_2
  L9_2 = L3_2.y
  L9_2 = L9_2 + 26
  L8_2.y = L9_2
  L10_2 = L1_2
  L9_2 = L1_2.insert
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = L2_1
  L9_2 = L9_2.newText
  L10_2 = {}
  L10_2.string = L6_2
  L10_2.size = 20
  L10_2.x = 180
  L10_2.y = 10
  L10_2.ax = 0.5
  L9_2 = L9_2(L10_2)
  L11_2 = L1_2
  L10_2 = L1_2.insert
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L2_2
    if not L1_3 then
      L1_3 = true
      L2_2 = L1_3
      L1_3 = L4_2
      if L1_3 then
        L1_3 = transition
        L1_3 = L1_3.cancel
        L2_3 = L4_2
        L1_3(L2_3)
        L1_3 = nil
        L4_2 = L1_3
      end
      L1_3 = L5_2
      if L1_3 then
        L1_3 = timer
        L1_3 = L1_3.cancel
        L2_3 = L5_2
        L1_3(L2_3)
        L1_3 = nil
        L5_2 = L1_3
      end
      L1_3 = L2_1
      L1_3.showingDailyChallange = false
      L2_3 = A0_3
      L1_3 = A0_3.removeEventListener
      L3_3 = "touch"
      L4_3 = A0_3
      L1_3(L2_3, L3_3, L4_3)
      L2_3 = A0_3
      L1_3 = A0_3.removeSelf
      L1_3(L2_3)
      A0_3 = nil
    end
  end
  
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L1_2
    L2_3 = {}
    L2_3.time = 200
    L2_3.y = -33
    L3_3 = L10_2
    L2_3.onComplete = L3_3
    L3_3 = L10_2
    L2_3.onCancel = L3_3
    L0_3 = L0_3(L1_3, L2_3)
    L4_2 = L0_3
  end
  
  function L12_2()
    local L0_3, L1_3
    L0_3 = L11_2
    L0_3()
    L0_3 = true
    return L0_3
  end
  
  L13_2 = L2_1
  L13_2 = L13_2.newButton
  L14_2 = {}
  L15_2 = L3_2.x
  L16_2 = L3_2.width
  L15_2 = L15_2 + L16_2
  L15_2 = L15_2 - 30
  L14_2.x = L15_2
  L15_2 = L3_2.y
  L15_2 = L15_2 + 14
  L14_2.y = L15_2
  L14_2.width = 43
  L14_2.height = 38
  L14_2.image = "images/gui/common/buttonClosePopup.png"
  L14_2.onRelease = L12_2
  L13_2 = L13_2(L14_2)
  L15_2 = L1_2
  L14_2 = L1_2.insert
  L16_2 = L13_2
  L14_2(L15_2, L16_2)
  
  function L14_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L2_1
    L1_3 = L1_3.showOverlay
    L2_3 = "lua.overlays.achievementsScene"
    L3_3 = {}
    L3_3.isModal = true
    L1_3(L2_3, L3_3)
    L1_3 = L10_2
    L2_3 = L1_2
    L1_3(L2_3)
    L1_3 = true
    return L1_3
  end
  
  L1_2.x = 85
  L1_2.y = -33
  L1_2.touch = L14_2
  L16_2 = L1_2
  L15_2 = L1_2.addEventListener
  L17_2 = "touch"
  L18_2 = L1_2
  L15_2(L16_2, L17_2, L18_2)
  L15_2 = L2_1
  L15_2 = L15_2.audio
  L15_2 = L15_2.play
  L16_2 = "dropdown_achievement"
  L15_2(L16_2)
  L15_2 = L2_1
  L15_2.showingDailyChallange = true
  L15_2 = transition
  L15_2 = L15_2.to
  L16_2 = L1_2
  L17_2 = {}
  L17_2.time = 200
  L17_2.y = 0
  L15_2 = L15_2(L16_2, L17_2)
  L4_2 = L15_2
  L15_2 = timer
  L15_2 = L15_2.performWithDelay
  L16_2 = 4200
  L17_2 = L11_2
  L18_2 = 1
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L5_2 = L15_2
end

L0_1.showAchivement = L6_1

function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  L6_2 = display
  L6_2 = L6_2.newGroup
  L6_2 = L6_2()
  L7_2 = false
  L8_2 = 4200
  L9_2 = {}
  L10_2 = {}
  L11_2 = nil
  L12_2 = nil
  L13_2 = nil
  L14_2 = nil
  L15_2 = nil
  L16_2 = nil
  
  function L17_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L13_2
      if L1_3 then
        L1_3 = L13_2
        L1_3()
      end
    end
    L1_3 = true
    return L1_3
  end
  
  function L18_2(A0_3)
    local L1_3
    L1_3 = true
    return L1_3
  end
  
  if A1_2 then
    L19_2 = display
    L19_2 = L19_2.newRect
    L20_2 = 0
    L21_2 = 0
    L22_2 = display
    L22_2 = L22_2.contentWidth
    L23_2 = display
    L23_2 = L23_2.contentHeight
    L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2)
    L12_2 = L19_2
    L12_2.anchorX = 0
    L12_2.anchorY = 0
    L20_2 = L12_2
    L19_2 = L12_2.setFillColor
    L21_2 = 0
    L22_2 = 0
    L23_2 = 0
    L24_2 = 0.5882352941176471
    L19_2(L20_2, L21_2, L22_2, L23_2, L24_2)
    L12_2.x = 0
    L12_2.y = 0
    L20_2 = L4_2
    L19_2 = L4_2.insert
    L21_2 = L12_2
    L19_2(L20_2, L21_2)
    L20_2 = L12_2
    L19_2 = L12_2.addEventListener
    L21_2 = "touch"
    L22_2 = L17_2
    L19_2(L20_2, L21_2, L22_2)
  end
  L19_2 = display
  L19_2 = L19_2.newImageRect
  L20_2 = "images/gui/bonusrace/window.png"
  L21_2 = 344
  L22_2 = 113
  L19_2 = L19_2(L20_2, L21_2, L22_2)
  L19_2.anchorX = 0
  L19_2.anchorY = 0
  L19_2.x = 0
  L19_2.y = 0
  L21_2 = L5_2
  L20_2 = L5_2.insert
  L22_2 = L19_2
  L20_2(L21_2, L22_2)
  L20_2 = ""
  L21_2 = "images/gui/bonusrace/"
  L22_2 = A0_2
  L23_2 = ".png"
  L21_2 = L21_2 .. L22_2 .. L23_2
  if A0_2 == 1 then
    L22_2 = L20_2
    L23_2 = "No Power Ups!"
    L20_2 = L22_2 .. L23_2
  elseif A0_2 == 2 then
    L22_2 = L20_2
    L23_2 = "Sawblades!"
    L20_2 = L22_2 .. L23_2
  elseif A0_2 == 3 then
    L22_2 = L20_2
    L23_2 = "Tiny Animals"
    L20_2 = L22_2 .. L23_2
  elseif A0_2 == 4 then
    L22_2 = L20_2
    L23_2 = "Big Heads!"
    L20_2 = L22_2 .. L23_2
  elseif A0_2 == 5 then
    L22_2 = L20_2
    L23_2 = "Rockets!"
    L20_2 = L22_2 .. L23_2
  elseif A0_2 == 6 then
    L22_2 = L20_2
    L23_2 = "Magnets!"
    L20_2 = L22_2 .. L23_2
  elseif A0_2 == 7 then
    L22_2 = L20_2
    L23_2 = "ZOMBIES!"
    L20_2 = L22_2 .. L23_2
  end
  L22_2 = display
  L22_2 = L22_2.newImageRect
  L23_2 = L21_2
  L24_2 = 61
  L25_2 = 51
  L22_2 = L22_2(L23_2, L24_2, L25_2)
  if not L22_2 then
    L23_2 = print
    L24_2 = "WARNING: failed to find crazy mode image"
    L23_2(L24_2)
    L23_2 = display
    L23_2 = L23_2.newImageRect
    L24_2 = "images/gui/bonusrace/1.png"
    L25_2 = 61
    L26_2 = 51
    L23_2 = L23_2(L24_2, L25_2, L26_2)
    L22_2 = L23_2
  end
  if L22_2 then
    L22_2.x = 170
    L22_2.y = 32
    L24_2 = L5_2
    L23_2 = L5_2.insert
    L25_2 = L22_2
    L23_2(L24_2, L25_2)
  end
  L23_2 = L2_1
  L23_2 = L23_2.data
  L23_2 = L23_2.gameInfo
  L23_2 = L23_2.crazyModePostLobby
  if not L23_2 then
    L23_2 = display
    L23_2 = L23_2.newImageRect
    L24_2 = "images/gui/bonusrace/header.png"
    L25_2 = 152
    L26_2 = 34
    L23_2 = L23_2(L24_2, L25_2, L26_2)
    L23_2.x = 170
    L23_2.y = 110
    L25_2 = L5_2
    L24_2 = L5_2.insert
    L26_2 = L23_2
    L24_2(L25_2, L26_2)
    L24_2 = L2_1
    L24_2 = L24_2.newText
    L25_2 = {}
    L25_2.string = "Bonus race!"
    L25_2.size = 22
    L26_2 = L23_2.x
    L25_2.x = L26_2
    L26_2 = L23_2.y
    L25_2.y = L26_2
    L25_2.ax = 0.5
    L26_2 = {}
    L27_2 = 1
    L28_2 = 1
    L29_2 = 1
    L26_2[1] = L27_2
    L26_2[2] = L28_2
    L26_2[3] = L29_2
    L25_2.color = L26_2
    L24_2 = L24_2(L25_2)
    L26_2 = L5_2
    L25_2 = L5_2.insert
    L27_2 = L24_2
    L25_2(L26_2, L27_2)
  end
  L23_2 = L2_1
  L23_2 = L23_2.newText
  L24_2 = {}
  L24_2.string = "Bonus coins!"
  L24_2.size = 12
  L24_2.x = 76
  L24_2.y = 60
  L24_2.ax = 0.5
  L23_2 = L23_2(L24_2)
  L25_2 = L5_2
  L24_2 = L5_2.insert
  L26_2 = L23_2
  L24_2(L25_2, L26_2)
  L24_2 = L2_1
  L24_2 = L24_2.newText
  L25_2 = {}
  L25_2.string = L20_2
  L25_2.size = 15
  L25_2.x = 170
  L25_2.y = 70
  L25_2.ax = 0.5
  L24_2 = L24_2(L25_2)
  L26_2 = L5_2
  L25_2 = L5_2.insert
  L27_2 = L24_2
  L25_2(L26_2, L27_2)
  L25_2 = L2_1
  L25_2 = L25_2.newText
  L26_2 = {}
  L26_2.string = "Rating for all!"
  L26_2.size = 12
  L26_2.x = 266
  L26_2.y = 60
  L26_2.ax = 0.5
  L25_2 = L25_2(L26_2)
  L27_2 = L5_2
  L26_2 = L5_2.insert
  L28_2 = L25_2
  L26_2(L27_2, L28_2)
  
  function L26_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = L7_2
    if L1_3 then
      return
    end
    L1_3 = transition
    L1_3 = L1_3.cancel
    L2_3 = L5_2
    L1_3(L2_3)
    L1_3 = L14_2
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = L14_2
      L1_3(L2_3)
      L1_3 = nil
      L14_2 = L1_3
    end
    L1_3 = L7_2
    if not L1_3 then
      L1_3 = true
      L7_2 = L1_3
      L2_3 = A0_3
      L1_3 = A0_3.removeEventListener
      L3_3 = "touch"
      L4_3 = L18_2
      L1_3(L2_3, L3_3, L4_3)
      L2_3 = A0_3
      L1_3 = A0_3.removeSelf
      L1_3(L2_3)
      A0_3 = nil
    end
    L1_3 = L9_2
    if L1_3 then
      L1_3 = 1
      L2_3 = L9_2
      L2_3 = #L2_3
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = L9_2
        L5_3 = L5_3[L4_3]
        L6_3 = L5_3
        L5_3 = L5_3.removeEventListener
        L7_3 = "tap"
        L8_3 = L9_2
        L8_3 = L8_3[L4_3]
        L5_3(L6_3, L7_3, L8_3)
      end
      L1_3 = nil
      L9_2 = L1_3
    end
    L1_3 = L11_2
    if L1_3 then
      L1_3 = L2_1
      L1_3 = L1_3.comm
      L1_3 = L1_3.rateCrazyRace
      L2_3 = L11_2
      L3_3 = A0_2
      L4_3 = A2_2
      L5_3 = A3_2
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = nil
      L11_2 = L1_3
    end
    L1_3 = L12_2
    if L1_3 then
      L1_3 = L12_2
      L2_3 = L1_3
      L1_3 = L1_3.removeEventListener
      L3_3 = "touch"
      L4_3 = L17_2
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = nil
      L12_2 = L1_3
    end
    L1_3 = L4_2
    if L1_3 then
      L1_3 = L4_2
      L2_3 = L1_3
      L1_3 = L1_3.removeSelf
      L1_3(L2_3)
      L1_3 = nil
      L4_2 = L1_3
    end
  end
  
  function L13_2(A0_3)
    local L1_3, L2_3
    L1_3 = L26_2
    L2_3 = L5_2
    L1_3(L2_3)
    L1_3 = true
    return L1_3
  end
  
  L5_2.x = 60
  L5_2.y = -33
  if A1_2 then
    L28_2 = L5_2
    L27_2 = L5_2.addEventListener
    L29_2 = "touch"
    L30_2 = L18_2
    L27_2(L28_2, L29_2, L30_2)
  end
  L27_2 = L2_1
  L27_2 = L27_2.audio
  L27_2 = L27_2.play
  L28_2 = "dropdown_achievement"
  L27_2(L28_2)
  
  function L27_2()
    local L0_3, L1_3
    L0_3 = L26_2
    L1_3 = L5_2
    L0_3(L1_3)
  end
  
  function L28_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = 1
    L2_3 = 5
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L10_2
      L5_3 = L5_3[L4_3]
      L5_3.isVisible = false
    end
    L1_3 = 1
    L2_3 = A0_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L10_2
      L5_3 = L5_3[L4_3]
      L5_3.isVisible = true
    end
    L11_2 = A0_3
    L1_3 = L16_2
    if L1_3 then
      L1_3 = L16_2
      L2_3 = L1_3
      L1_3 = L1_3.removeSelf
      L1_3(L2_3)
      L1_3 = nil
      L16_2 = L1_3
    end
    L1_3 = L2_1
    L1_3 = L1_3.newText
    L2_3 = {}
    L2_3.string = "Thanks!"
    L2_3.size = 16
    L2_3.x = 80
    L2_3.y = 6
    L2_3.ax = 0.5
    L2_3.width = 200
    L3_3 = {}
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0.5
    L3_3[1] = L4_3
    L3_3[2] = L5_3
    L3_3[3] = L6_3
    L3_3[4] = L7_3
    L2_3.color = L3_3
    L1_3 = L1_3(L2_3)
    L16_2 = L1_3
    L1_3 = L6_2
    L2_3 = L1_3
    L1_3 = L1_3.insert
    L3_3 = L16_2
    L1_3(L2_3, L3_3)
    L1_3 = L14_2
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = L14_2
      L1_3(L2_3)
      L1_3 = nil
      L14_2 = L1_3
    end
    L1_3 = transition
    L1_3 = L1_3.to
    L2_3 = L5_2
    L3_3 = {}
    L3_3.time = 600
    L3_3.delay = 500
    L3_3.y = -170
    L4_3 = L26_2
    L3_3.onComplete = L4_3
    L1_3(L2_3, L3_3)
  end
  
  function L29_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = 1
    L1_3 = 5
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L9_2
      L5_3 = display
      L5_3 = L5_3.newImageRect
      L6_3 = "images/gui/challenges/star1.png"
      L7_3 = 24
      L8_3 = 24
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L4_3[L3_3] = L5_3
      L4_3 = L9_2
      L4_3 = L4_3[L3_3]
      L5_3 = L3_3 * 30
      L5_3 = 84 + L5_3
      L4_3.x = L5_3
      L4_3 = L9_2
      L4_3 = L4_3[L3_3]
      L4_3.y = 94
      L4_3 = L9_2
      L4_3 = L4_3[L3_3]
      
      function L5_3()
        local L0_4, L1_4
        L0_4 = L28_2
        L1_4 = L3_3
        L0_4(L1_4)
        L0_4 = true
        return L0_4
      end
      
      L4_3.tap = L5_3
      L4_3 = L9_2
      L4_3 = L4_3[L3_3]
      L5_3 = L4_3
      L4_3 = L4_3.addEventListener
      L6_3 = "tap"
      L7_3 = L9_2
      L7_3 = L7_3[L3_3]
      L4_3(L5_3, L6_3, L7_3)
      L4_3 = L5_2
      L5_3 = L4_3
      L4_3 = L4_3.insert
      L6_3 = L9_2
      L6_3 = L6_3[L3_3]
      L4_3(L5_3, L6_3)
      L4_3 = L10_2
      L5_3 = display
      L5_3 = L5_3.newImageRect
      L6_3 = "images/gui/challenges/star2.png"
      L7_3 = 24
      L8_3 = 24
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L4_3[L3_3] = L5_3
      L4_3 = L10_2
      L4_3 = L4_3[L3_3]
      L5_3 = L9_2
      L5_3 = L5_3[L3_3]
      L5_3 = L5_3.x
      L4_3.x = L5_3
      L4_3 = L10_2
      L4_3 = L4_3[L3_3]
      L5_3 = L9_2
      L5_3 = L5_3[L3_3]
      L5_3 = L5_3.y
      L4_3.y = L5_3
      L4_3 = L10_2
      L4_3 = L4_3[L3_3]
      L4_3.isVisible = false
      L4_3 = L5_2
      L5_3 = L4_3
      L4_3 = L4_3.insert
      L6_3 = L10_2
      L6_3 = L6_3[L3_3]
      L4_3(L5_3, L6_3)
    end
  end
  
  if A1_2 then
    L8_2 = 80000
    L30_2 = L29_2
    L30_2()
    L30_2 = display
    L30_2 = L30_2.newImageRect
    L31_2 = "images/gui/bonusrace/rateBubble.png"
    L32_2 = 226
    L33_2 = 52
    L30_2 = L30_2(L31_2, L32_2, L33_2)
    L30_2.x = 0
    L30_2.y = 0
    L32_2 = L6_2
    L31_2 = L6_2.insert
    L33_2 = L30_2
    L31_2(L32_2, L33_2)
    L31_2 = L2_1
    L31_2 = L31_2.newText
    L32_2 = {}
    L32_2.string = "How much did you enjoy this game mode?"
    L32_2.size = 14
    L33_2 = L30_2.x
    L33_2 = L33_2 + 2
    L32_2.x = L33_2
    L33_2 = L30_2.y
    L33_2 = L33_2 + 6
    L32_2.y = L33_2
    L32_2.ax = 0.5
    L33_2 = {}
    L34_2 = 0
    L35_2 = 0
    L36_2 = 0
    L37_2 = 0.5
    L33_2[1] = L34_2
    L33_2[2] = L35_2
    L33_2[3] = L36_2
    L33_2[4] = L37_2
    L32_2.color = L33_2
    L32_2.align = "center"
    L32_2.width = 200
    L31_2 = L31_2(L32_2)
    L16_2 = L31_2
    L32_2 = L6_2
    L31_2 = L6_2.insert
    L33_2 = L16_2
    L31_2(L32_2, L33_2)
    
    function L15_2()
      local L0_3, L1_3
      L0_3 = L30_2
      L0_3.isVisible = false
      L0_3 = L16_2
      L0_3.isVisible = false
    end
    
    L32_2 = L5_2
    L31_2 = L5_2.insert
    L33_2 = L6_2
    L31_2(L32_2, L33_2)
    L6_2.x = 170
    L6_2.y = 134
    L6_2.xScale = 0.1
    L6_2.yScale = 0.1
    L31_2 = transition
    L31_2 = L31_2.to
    L32_2 = L6_2
    L33_2 = {}
    L33_2.time = 1000
    L33_2.delay = 100
    L33_2.xScale = 1
    L33_2.yScale = 1
    L34_2 = easing
    L34_2 = L34_2.outElastic
    L33_2.transition = L34_2
    L31_2(L32_2, L33_2)
  end
  L31_2 = L4_2
  L30_2 = L4_2.insert
  L32_2 = L5_2
  L30_2(L31_2, L32_2)
  L30_2 = transition
  L30_2 = L30_2.to
  L31_2 = L5_2
  L32_2 = {}
  L32_2.time = 200
  L32_2.y = 0
  L30_2(L31_2, L32_2)
  L30_2 = transition
  L30_2 = L30_2.to
  L31_2 = L5_2
  L32_2 = {}
  L32_2.time = 200
  L32_2.delay = L8_2
  L32_2.y = -33
  L32_2.onComplete = L26_2
  L30_2(L31_2, L32_2)
end

L0_1.showCrazyMode = L6_1
return L0_1
