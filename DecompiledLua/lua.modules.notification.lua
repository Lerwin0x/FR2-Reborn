local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "plugin.notifications"
L1_1 = L1_1(L2_1)
L2_1 = {}
L3_1 = nil
L4_1 = {}
L5_1 = {}
L6_1 = "Want to race?"
L7_1 = "Miss the feel of sawblades?"
L5_1[1] = L6_1
L5_1[2] = L7_1
L6_1 = {}
L7_1 = "Let's race!"
L8_1 = "You just got magneted back into this game"
L6_1[1] = L7_1
L6_1[2] = L8_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.type
  if L1_2 == "remote" then
    L1_2 = print
    L2_2 = "remote notification"
    L1_2(L2_2)
  else
    L1_2 = A0_2.type
    if L1_2 == "local" then
      L1_2 = print
      L2_2 = "local notification"
      L1_2(L2_2)
    else
      L1_2 = A0_2.type
      if L1_2 == "remoteRegistration" then
        L1_2 = nil
        L2_2 = system
        L2_2 = L2_2.getInfo
        L3_2 = "platformName"
        L2_2 = L2_2(L3_2)
        if "Android" == L2_2 then
          L1_2 = 1
        else
          L1_2 = 0
        end
        L2_2 = {}
        L3_2 = A0_2.token
        L2_2.t = L3_2
        L2_2.p = L1_2
        L3_2 = L0_1
        L3_2.pushToken = L2_2
      end
    end
  end
  L1_2 = L0_1
  L1_2 = L1_2.debugger
  L1_2 = L1_2.debugTable
  L2_2 = "notification"
  L3_2 = "Push - event: "
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.custom
  if L1_2 then
    L1_2 = A0_2.custom
    if L1_2 then
      L2_2 = L1_2.m
      if L2_2 then
        L2_2 = L1_2.m
        L3_1 = L2_2
        L2_2 = tonumber
        L3_2 = L3_1
        L2_2 = L2_2(L3_2)
        if L2_2 ~= 1 then
          L2_2 = tonumber
          L3_2 = L3_1
          L2_2 = L2_2(L3_2)
        end
        if L2_2 == 15 then
          L2_2 = L0_1
          L2_2 = L2_2.gameHostData
          L3_2 = L1_2.a
          L2_2.serverAddress = L3_2
          L2_2 = L0_1
          L2_2 = L2_2.gameHostData
          L3_2 = L1_2.s
          L2_2.sessionId = L3_2
          L2_2 = L0_1
          L2_2 = L2_2.config
          L3_2 = L0_1
          L3_2 = L3_2.gameHostData
          L3_2 = L3_2.serverAddress
          L2_2.tcpClient = L3_2
        end
    end
    else
      L2_2 = print
      L3_2 = "push data on wrong format"
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
end

L2_1.notificationListener = L7_1

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = native
  L1_2 = L1_2.getProperty
  L2_2 = "applicationIconBadgeNumber"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 + A0_2
  L2_2 = native
  L2_2 = L2_2.setProperty
  L3_2 = "applicationIconBadgeNumber"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end

L2_1.increaseBadgeNumber = L8_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = native
  L1_2 = L1_2.getProperty
  L2_2 = "applicationIconBadgeNumber"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 - A0_2
  L2_2 = native
  L2_2 = L2_2.setProperty
  L3_2 = "applicationIconBadgeNumber"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end

L2_1.decreaseBadgeNumber = L9_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = native
  L1_2 = L1_2.setProperty
  L2_2 = "applicationIconBadgeNumber"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

L2_1.setBadgeNumber = L10_1

function L11_1()
  local L0_2, L1_2, L2_2
  L0_2 = native
  L0_2 = L0_2.setProperty
  L1_2 = "applicationIconBadgeNumber"
  L2_2 = 0
  L0_2(L1_2, L2_2)
end

L2_1.resetBadgeNumber = L11_1

function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L3_1
  if L0_2 == nil then
    return
  end
  L0_2 = L0_1
  L0_2 = L0_2.getSceneName
  L1_2 = "current"
  L0_2 = L0_2(L1_2)
  if L0_2 == "lua.scenes.loadingScene" then
    return
  end
  L1_2 = print
  L2_2 = "checkForPushNotification "
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = tonumber
  L2_2 = L3_1
  L1_2 = L1_2(L2_2)
  if L1_2 == 1 then
    L1_2 = L0_1
    L1_2 = L1_2.data
    L1_2 = L1_2.gameInfo
    L1_2.gameType = 4
    L1_2 = L0_1
    L1_2 = L1_2.gotoScene
    L2_2 = "lua.scenes.lobbyCustomPlay"
    L1_2(L2_2)
  else
    L1_2 = tonumber
    L2_2 = L3_1
    L1_2 = L1_2(L2_2)
    if L1_2 == 2 then
      L1_2 = {}
      L1_2.isModal = true
      L2_2 = L0_1
      L2_2 = L2_2.showOverlay
      L3_2 = "lua.overlays.messages"
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    else
      L1_2 = tonumber
      L2_2 = L3_1
      L1_2 = L1_2(L2_2)
      if L1_2 == 3 then
        L1_2 = L0_1
        L1_2 = L1_2.gotoScene
        L2_2 = "lua.scenes.marketplace"
        L1_2(L2_2)
      else
        L1_2 = tonumber
        L2_2 = L3_1
        L1_2 = L1_2(L2_2)
        if L1_2 == 4 then
        else
          L1_2 = tonumber
          L2_2 = L3_1
          L1_2 = L1_2(L2_2)
          if L1_2 == 5 then
          else
            L1_2 = tonumber
            L2_2 = L3_1
            L1_2 = L1_2(L2_2)
            if L1_2 == 15 then
              L1_2 = L0_1
              L1_2 = L1_2.data
              L1_2 = L1_2.gameInfo
              L1_2.gameType = 6
              L1_2 = L0_1
              L1_2 = L1_2.gotoScene
              L2_2 = "lua.scenes.lobby2v2Play"
              L1_2(L2_2)
            end
          end
        end
      end
    end
  end
  L1_2 = nil
  L3_1 = L1_2
end

L2_1.checkForPushNotification = L12_1

function L13_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Runtime
  L1_2 = L0_2
  L0_2 = L0_2.removeEventListener
  L2_2 = "notification"
  L3_2 = L7_1
  L0_2(L1_2, L2_2, L3_2)
end

L2_1.clean = L13_1

function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1
  L3_2 = #A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2[L1_2]
  return L2_2
end

function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = L0_1
  L3_2 = L3_2.database
  if L3_2 then
    L3_2 = L0_1
    L3_2 = L3_2.database
    L3_2 = L3_2.getPlayerInformation
    if L3_2 then
      L3_2 = L0_1
      L3_2 = L3_2.database
      L3_2 = L3_2.getPushEnableStatus
      if L3_2 then
        goto lbl_16
      end
    end
  end
  do return end
  ::lbl_16::
  L3_2 = L0_1
  L3_2 = L3_2.database
  L3_2 = L3_2.getPlayerInformation
  L3_2 = L3_2()
  if L3_2 then
    L4_2 = L3_2.username
    if L4_2 then
      goto lbl_26
    end
  end
  do return end
  ::lbl_26::
  L4_2 = L0_1
  L4_2 = L4_2.database
  L4_2 = L4_2.getPushEnableStatus
  L4_2, L5_2, L6_2 = L4_2()
  if L6_2 ~= 1 then
    return
  end
  L7_2 = {}
  L8_2 = L14_1
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  L7_2.alert = L8_2
  L8_2 = nil
  L9_2 = isAndroid
  if L9_2 then
    L9_2 = L1_1
    L9_2 = L9_2.scheduleNotification
    L10_2 = A0_2
    L11_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2 = L9_2
  else
    L9_2 = L1_1
    L9_2 = L9_2.scheduleNotification
    L10_2 = A0_2
    L11_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2 = L9_2
  end
  if A2_2 then
    L9_2 = #A2_2
    L9_2 = L9_2 + 1
    A2_2[L9_2] = L8_2
  end
end

function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = 259200
  L1_2 = L15_1
  L2_2 = L0_2
  L3_2 = L5_1
  L4_2 = L4_1
  L1_2(L2_2, L3_2, L4_2)
end

L2_1.queue3DayNotification = L16_1

function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = 604800
  L1_2 = L15_1
  L2_2 = L0_2
  L3_2 = L6_1
  L4_2 = L4_1
  L1_2(L2_2, L3_2, L4_2)
end

L2_1.queue7DayNotification = L17_1

function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L0_1
  L0_2 = L0_2.clanUtils
  L0_2 = L0_2.getPlayerSupporterStatusLevel
  L0_2 = L0_2()
  L1_2 = print
  L2_2 = "Should schedule clan supporter notification"
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  if 0 < L0_2 then
    L1_2 = L0_1
    L1_2 = L1_2.clanUtils
    L1_2 = L1_2.getPlayerSupporterStatusTimeLeft
    L1_2 = L1_2()
    if L1_2 < 60 then
      return
    end
    L2_2 = 3600
    L3_2 = 24 * L2_2
    L4_2 = nil
    L5_2 = ""
    if L1_2 > L3_2 then
      L6_2 = L0_1
      L6_2 = L6_2.database
      L6_2 = L6_2.timeSinceClanNotificationScheduled
      L7_2 = 1
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2 + L1_2
      L7_2 = 5 * L3_2
      if L6_2 < L7_2 then
        L6_2 = print
        L7_2 = "1 day notice notification already scheduled this round."
        L6_2(L7_2)
        return
      end
      L6_2 = print
      L7_2 = "Schedule one day notification"
      L6_2(L7_2)
      L4_2 = L1_2 - L3_2
      L5_2 = "Your clan supporter bonus will reset in one day."
      L6_2 = L0_1
      L6_2 = L6_2.database
      L6_2 = L6_2.didScheduleClanNotification
      L7_2 = 1
      L6_2(L7_2)
    elseif L1_2 > L2_2 then
      L6_2 = L0_1
      L6_2 = L6_2.database
      L6_2 = L6_2.timeSinceClanNotificationScheduled
      L7_2 = 2
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2 + L1_2
      if L3_2 > L6_2 then
        L6_2 = print
        L7_2 = "1 hour notice notification already scheduled this round."
        L6_2(L7_2)
        return
      end
      L6_2 = print
      L7_2 = "Shedule 1 hour notification."
      L6_2(L7_2)
      L4_2 = L1_2 - L2_2
      L6_2 = L0_1
      L6_2 = L6_2.database
      L6_2 = L6_2.didScheduleClanNotification
      L7_2 = 2
      L6_2(L7_2)
      L5_2 = "Only 1 hour left of your clan supporter bonus."
    else
      L6_2 = print
      L7_2 = "Shedule less than hour notification."
      L6_2(L7_2)
      L4_2 = 120
      if L1_2 < L4_2 then
        L4_2 = 5
      end
      L5_2 = "Less than one hour left of your clan supporter bonus!"
    end
    L6_2 = L15_1
    L7_2 = L4_2
    L8_2 = {}
    L9_2 = L5_2
    L8_2[1] = L9_2
    L6_2(L7_2, L8_2)
  end
end

L2_1.queueClanSupporterNotification = L18_1

function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = 1
  L1_2 = L4_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L1_1
    L4_2 = L4_2.cancelNotification
    L5_2 = L4_1
    L5_2 = L5_2[L3_2]
    L4_2(L5_2)
  end
  L0_2 = {}
  L4_1 = L0_2
end

L2_1.clearLocalPushNotificationQueue = L19_1

function L20_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Runtime
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = "notification"
  L3_2 = L7_1
  L0_2(L1_2, L2_2, L3_2)
end

L21_1 = L20_1
L21_1()
L0_1.notification = L2_1
