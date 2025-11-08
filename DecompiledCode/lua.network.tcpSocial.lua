local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1
L0_1 = require
L1_1 = "socket"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "json"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "lua.network.networkStatus"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "lua.network.tcpMessageFormat"
L4_1 = L4_1(L5_1)
L5_1 = {}
L6_1 = 6689
L7_1 = 35
L8_1 = 35
L9_1 = nil
L10_1 = 30000
L11_1 = nil
L12_1 = false
L13_1 = nil
L14_1 = false
L15_1 = false
L16_1 = nil
L17_1 = nil
L18_1 = nil
L19_1 = nil
L20_1 = nil
L21_1 = 5000
L22_1 = nil
L23_1 = ""

function L24_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L19_1
  if L0_2 then
    L0_2 = L19_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L19_1 = L0_2
  end
  L0_2 = L20_1
  if L0_2 then
    L0_2 = L20_1
    L1_2 = L0_2
    L0_2 = L0_2.removeEventListener
    L2_2 = "tap"
    L3_2 = L5_1
    L3_2 = L3_2.isOnline
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = L20_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L20_1 = L0_2
  end
  L0_2 = L2_1
  L0_2 = L0_2.getSceneName
  L1_2 = "current"
  L0_2 = L0_2(L1_2)
  if L0_2 == "lua.scenes.gamePlay" then
    return
  else
    L0_2 = L2_1
    L0_2 = L0_2.getSceneName
    L1_2 = "current"
    L0_2 = L0_2(L1_2)
    if L0_2 == "lua.scenes.updateScene" then
      return
    else
      L0_2 = L2_1
      L0_2 = L0_2.getSceneName
      L1_2 = "current"
      L0_2 = L0_2(L1_2)
      if L0_2 == "lua.scenes.startScreen" then
        return
      else
        L0_2 = L2_1
        L0_2 = L0_2.getSceneName
        L1_2 = "current"
        L0_2 = L0_2(L1_2)
        if L0_2 == "lua.scenes.loadingScene" then
          return
        end
      end
    end
  end
  L0_2 = L14_1
  if L0_2 then
    L0_2 = L15_1
    if L0_2 then
      goto lbl_81
    end
  end
  L0_2 = display
  L0_2 = L0_2.newImageRect
  L1_2 = "images/gui/common/dropdown/barOffline.png"
  L2_2 = 76
  L3_2 = 31
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L20_1 = L0_2
  L0_2 = L20_1
  L0_2.anchorX = 0.5
  L0_2 = L20_1
  L0_2.anchorY = 0
  L0_2 = L20_1
  L0_2.x = 240
  L0_2 = L20_1
  L0_2.y = 0
  L0_2 = L20_1
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = "tap"
  L3_2 = L5_1
  L3_2 = L3_2.isOnline
  L0_2(L1_2, L2_2, L3_2)
  ::lbl_81::
end

L5_1.toggleNetworkAlert = L24_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = isSimulator
  if L1_2 then
    L1_2 = L2_1
    L1_2 = L1_2.config
    L1_2 = L1_2.bot
    if L1_2 then
      L1_2 = L2_1
      L1_2 = L1_2.getSceneName
      L2_2 = "current"
      L1_2 = L1_2(L2_2)
      if L1_2 ~= "lua.scenes.mainMenu" then
        L2_2 = L2_1
        L2_2 = L2_2.gotoScene
        L3_2 = "lua.scenes.mainMenu"
        L2_2(L3_2)
        L2_2 = L2_1
        L2_2 = L2_2.removeScene
        L3_2 = L1_2
        L2_2(L3_2)
      end
    end
  end
end

L5_1.checkIfPlayerIsInInvalidScene = L25_1

function L26_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L4_1
  L1_2 = L1_2.heartbeat
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L14_1
  if L1_2 then
    L1_2 = L5_1
    L1_2 = L1_2.sendPacket
    L2_2 = L0_2
    L1_2(L2_2)
  end
end

L5_1.sendHeatbeat = L26_1

function L27_1()
  local L0_2, L1_2
  L0_2 = L16_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L16_1
    L0_2(L1_2)
    L0_2 = nil
    L16_1 = L0_2
  end
end

function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L11_1
  if L0_2 == nil then
    L0_2 = print
    L1_2 = "ERROR in connecting message, it's nil"
    L0_2(L1_2)
    return
  end
  L0_2 = type
  L1_2 = L11_1
  L0_2 = L0_2(L1_2)
  if L0_2 ~= "table" then
    L0_2 = print
    L1_2 = "ERROR in connecting message"
    L0_2(L1_2)
    return
  end
  L0_2 = L1_1
  L0_2 = L0_2.encode
  L1_2 = L11_1
  L0_2 = L0_2(L1_2)
  L1_2 = L2_1
  L1_2 = L1_2.debugger
  L1_2 = L1_2.debugPrint
  L2_2 = "network"
  L3_2 = "jsonObject sendPacket: "
  L4_2 = L0_2
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = L13_1
  L2_2 = L1_2
  L1_2 = L1_2.send
  L3_2 = L0_2
  L4_2 = "\n"
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
end

L5_1.sendConnectMessage = L28_1

function L29_1()
  local L0_2, L1_2
  L0_2 = L9_1
  if L0_2 then
    L0_2 = L9_1
    L0_2 = L0_2 + 30
    L1_2 = os
    L1_2 = L1_2.time
    L1_2 = L1_2()
    if L0_2 < L1_2 then
      L0_2 = L5_1
      L0_2 = L0_2.isOnline
      L0_2()
  end
  else
    L0_2 = L24_1
    L0_2()
  end
end

function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L14_1
  if L1_2 then
    L1_2 = L13_1
    L2_2 = L1_2
    L1_2 = L1_2.receive
    L3_2 = "*l"
    L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
    if L2_2 and L2_2 == "timeout" and L3_2 then
      L4_2 = string
      L4_2 = L4_2.len
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if 0 < L4_2 then
        L4_2 = L23_1
        L5_2 = L3_2
        L4_2 = L4_2 .. L5_2
        L23_1 = L4_2
    end
    elseif L2_2 and L2_2 == "closed" then
      L4_2 = print
      L5_2 = "errorCode social "
      L6_2 = L2_2
      L4_2(L5_2, L6_2)
      L4_2 = false
      L14_1 = L4_2
      L4_2 = false
      L15_1 = L4_2
      L4_2 = L27_1
      L4_2()
      L4_2 = L25_1
      L4_2()
      L4_2 = L29_1
      L4_2()
    elseif L1_2 then
      L4_2 = string
      L4_2 = L4_2.len
      L5_2 = L23_1
      L4_2 = L4_2(L5_2)
      if 0 < L4_2 then
        L4_2 = L23_1
        L5_2 = L1_2
        L1_2 = L4_2 .. L5_2
        L4_2 = ""
        L23_1 = L4_2
      end
      L4_2 = L2_1
      L4_2 = L4_2.debugger
      L4_2 = L4_2.debugPrint
      L5_2 = "network"
      L6_2 = "rec: "
      L7_2 = L1_2
      L6_2 = L6_2 .. L7_2
      L4_2(L5_2, L6_2)
      L4_2 = L1_1
      L4_2 = L4_2.decode
      L5_2 = L1_2
      L4_2 = L4_2(L5_2)
      L5_2 = type
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 == "table" then
        L5_2 = L15_1
        if L5_2 == false then
          L5_2 = true
          L15_1 = L5_2
          L5_2 = L2_1
          L5_2 = L5_2.notification
          L5_2 = L5_2.checkForPushNotification
          L5_2()
          L5_2 = L24_1
          L5_2()
          L5_2 = L2_1
          L5_2 = L5_2.data
          L5_2 = L5_2.clans
          L5_2.hasUpdatedClanLog = false
        end
        L5_2 = L22_1
        L6_2 = L4_2
        L5_2(L6_2)
      else
        L5_2 = print
        L6_2 = "TCP social: got corrupt data "
        L7_2 = L1_2
        L5_2(L6_2, L7_2)
        L5_2 = {}
        L5_2.corrupt = true
        L6_2 = L22_1
        L7_2 = L5_2
        L6_2(L7_2)
      end
    end
  end
end

function L31_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L1_2 = L1_2.debugger
  L1_2 = L1_2.debugPrint
  L2_2 = "network"
  L3_2 = "close tcp social connection with closeTCP"
  L1_2(L2_2, L3_2)
  L1_2 = false
  L14_1 = L1_2
  L1_2 = false
  L15_1 = L1_2
  if A0_2 then
    L1_2 = true
    L12_1 = L1_2
  end
  L1_2 = L27_1
  L1_2()
  L1_2 = L18_1
  if L1_2 then
    L1_2 = timer
    L1_2 = L1_2.cancel
    L2_2 = L18_1
    L1_2(L2_2)
    L1_2 = nil
    L18_1 = L1_2
  end
  L1_2 = L17_1
  if L1_2 then
    L1_2 = timer
    L1_2 = L1_2.cancel
    L2_2 = L17_1
    L1_2(L2_2)
    L1_2 = nil
    L17_1 = L1_2
  end
  L1_2 = L13_1
  if L1_2 then
    L1_2 = L13_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L13_1 = L1_2
  end
  L1_2 = L2_1
  L1_2 = L1_2.config
  L1_2.authenticate = false
end

L5_1.closeTCP = L31_1

function L32_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L12_1
  if L0_2 then
    L0_2 = print
    L1_2 = "Hard stop, do not auto reconnect"
    L0_2(L1_2)
    return
  end
  L0_2 = L2_1
  L0_2 = L0_2.config
  L0_2 = L0_2.fakeServer
  if L0_2 then
    return
  end
  L0_2 = L15_1
  if L0_2 then
    return
  end
  L0_2 = L13_1
  if L0_2 then
    L0_2 = L13_1
    L1_2 = L0_2
    L0_2 = L0_2.close
    L0_2(L1_2)
    L0_2 = nil
    L13_1 = L0_2
  end
  L0_2 = L3_1
  L0_2 = L0_2.checkStatus
  L0_2()
  L0_2 = os
  L0_2 = L0_2.time
  L0_2 = L0_2()
  L9_1 = L0_2
  L0_2 = L0_1
  L0_2 = L0_2.tcp
  L0_2 = L0_2()
  L13_1 = L0_2
  L0_2 = L13_1
  L1_2 = L0_2
  L0_2 = L0_2.settimeout
  L2_2 = 3
  L0_2(L1_2, L2_2)
  L0_2 = L13_1
  L1_2 = L0_2
  L0_2 = L0_2.setoption
  L2_2 = "tcp-nodelay"
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L13_1
  L1_2 = L0_2
  L0_2 = L0_2.connect
  L2_2 = L2_1
  L2_2 = L2_2.config
  L2_2 = L2_2.tcpSocial
  L3_2 = L6_1
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L14_1 = L0_2
  L0_2 = L13_1
  L1_2 = L0_2
  L0_2 = L0_2.settimeout
  L2_2 = 0
  L0_2(L1_2, L2_2)
  L0_2 = false
  L15_1 = L0_2
  L0_2 = L2_1
  L0_2 = L0_2.debugger
  L0_2 = L0_2.debugTable
  L1_2 = "network"
  L2_2 = L11_1
  L2_2 = #L2_2
  L3_2 = L11_1
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L18_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L18_1
    L0_2(L1_2)
    L0_2 = nil
    L18_1 = L0_2
  end
  L0_2 = timer
  L0_2 = L0_2.performWithDelay
  L1_2 = L10_1
  L2_2 = L26_1
  L3_2 = 0
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L18_1 = L0_2
  L0_2 = timer
  L0_2 = L0_2.performWithDelay
  L1_2 = L21_1
  L2_2 = L24_1
  L3_2 = 1
  L0_2(L1_2, L2_2, L3_2)
end

function L33_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L2_1
  L0_2 = L0_2.config
  L0_2 = L0_2.fakeServer
  if L0_2 then
    return
  end
  L0_2 = L14_1
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.debugger
    L0_2 = L0_2.debugPrint
    L1_2 = "network"
    L2_2 = "tcp social connection up"
    L0_2(L1_2, L2_2)
    L0_2 = timer
    L0_2 = L0_2.performWithDelay
    L1_2 = L7_1
    L2_2 = L30_1
    L3_2 = 0
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    L16_1 = L0_2
  else
    L0_2 = print
    L1_2 = "failed to start tcp social connection"
    L0_2(L1_2)
  end
end

function L34_1()
  local L0_2, L1_2, L2_2
  L0_2 = L31_1
  L0_2()
  L0_2 = L32_1
  L0_2()
  L0_2 = L33_1
  L0_2()
  L0_2 = L2_1
  L0_2 = L0_2.debugger
  L0_2 = L0_2.debugPrint
  L1_2 = "network"
  L2_2 = "start TCP social"
  L0_2(L1_2, L2_2)
end

function L35_1(A0_2, A1_2)
  local L2_2
  L2_2 = false
  L12_1 = L2_2
  L22_1 = A0_2
  L11_1 = A1_2
  L2_2 = L34_1
  L2_2()
end

L5_1.startTCP = L35_1

function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L27_1
  L1_2()
  L22_1 = A0_2
  L1_2 = timer
  L1_2 = L1_2.performWithDelay
  L2_2 = L8_1
  L3_2 = L30_1
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L16_1 = L1_2
end

L5_1.setReceiveFunction = L36_1

function L37_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L27_1
  L1_2()
  L8_1 = A0_2
  L1_2 = timer
  L1_2 = L1_2.performWithDelay
  L2_2 = L8_1
  L3_2 = L30_1
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L16_1 = L1_2
end

L5_1.changeReadInterval = L37_1

function L37_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1
  L1_2 = L1_2.config
  L1_2 = L1_2.fakeServer
  if L1_2 then
    return
  end
  L1_2 = L14_1
  if L1_2 then
    L1_2 = L15_1
    if L1_2 then
      L1_2 = L1_1
      L1_2 = L1_2.encode
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      L2_2 = L2_1
      L2_2 = L2_2.debugger
      L2_2 = L2_2.debugPrint
      L3_2 = "network"
      L4_2 = "jsonObject sendPacket: "
      L5_2 = L1_2
      L4_2 = L4_2 .. L5_2
      L2_2(L3_2, L4_2)
      L2_2 = L13_1
      L3_2 = L2_2
      L2_2 = L2_2.send
      L4_2 = L1_2
      L5_2 = "\n"
      L4_2 = L4_2 .. L5_2
      L2_2(L3_2, L4_2)
    end
  end
end

L5_1.sendPacket = L37_1

function L38_1()
  local L0_2, L1_2
  L0_2 = L14_1
  if L0_2 then
    L0_2 = L15_1
    if L0_2 then
      L0_2 = L2_1
      L0_2 = L0_2.config
      L0_2 = L0_2.authenticate
      if L0_2 then
        L0_2 = true
        return L0_2
    end
  end
  else
    L0_2 = L12_1
    if not L0_2 then
      L0_2 = L2_1
      L0_2 = L0_2.comm
      L0_2 = L0_2.startSocialTCP
      L0_2()
    end
    L0_2 = false
    return L0_2
  end
end

L5_1.isOnline = L38_1
return L5_1
