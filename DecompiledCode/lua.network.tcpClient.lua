local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1
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
L4_1 = "crypto"
L3_1 = L3_1(L4_1)
L4_1 = {}
L5_1 = L2_1.config
L5_1 = L5_1.tcpClient
L6_1 = 6789
L7_1 = 10
L8_1 = 10
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = false
L13_1 = false
L14_1 = false
L15_1 = false
L16_1 = nil

function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == "1" then
    L2_2 = "zs-dlk*ghf3#DFCw!35fs[];'pj;v.>"
    L4_2 = A0_2
    L3_2 = A0_2.sub
    L5_2 = 3
    L6_2 = string
    L6_2 = L6_2.len
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2 - 1
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = "skldhv7aoFG8h^fd$$afgsxv"
    A0_2 = L2_2 .. L3_2 .. L4_2
    L2_2 = L3_1
    L2_2 = L2_2.digest
    L3_2 = L3_1
    L3_2 = L3_2.sha512
    L4_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    return L2_2
  else
    return A0_2
  end
end

function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L2_1
  L1_2 = L1_2.data
  L1_2 = L1_2.gameInfo
  L1_2 = L1_2.gameType
  L2_2 = tonumber
  L3_2 = L2_1
  L3_2 = L3_2.gameConfig
  L3_2 = L3_2.getClientMessageTypeForName
  L4_2 = "CONNECT"
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = L2_1
  L3_2 = L3_2.database
  L3_2 = L3_2.getPlayerInformation
  L3_2 = L3_2()
  L3_2 = L3_2.playerId
  L4_2 = nil
  L5_2 = L2_1
  L5_2 = L5_2.config
  L5_2 = L5_2.serverBot
  if L5_2 then
    L5_2 = tonumber
    L6_2 = L2_1
    L6_2 = L6_2.gameConfig
    L6_2 = L6_2.getClientMessageTypeForName
    L7_2 = "BOT_CONNECT"
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L2_2 = L5_2
    L5_2 = {}
    L5_2.m = L2_2
    L5_2.p = L3_2
    L5_2.t = L1_2
    L4_2 = L5_2
  elseif L1_2 == 4 or L1_2 == 6 then
    L5_2 = {}
    L5_2.m = L2_2
    L5_2.p = L3_2
    L5_2.t = L1_2
    L6_2 = L2_1
    L6_2 = L6_2.gameHostData
    L6_2 = L6_2.sessionId
    L5_2.g = L6_2
    L4_2 = L5_2
  else
    L5_2 = {}
    L5_2.m = L2_2
    L5_2.p = L3_2
    L5_2.t = L1_2
    L4_2 = L5_2
  end
  L4_2.a = A0_2
  L5_2 = L1_1
  L5_2 = L5_2.encode
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = L2_1
  L6_2 = L6_2.debugger
  L6_2 = L6_2.debugPrint
  L7_2 = "network"
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = L9_1
  L7_2 = L6_2
  L6_2 = L6_2.send
  L8_2 = L5_2
  L9_2 = "\n"
  L8_2 = L8_2 .. L9_2
  L6_2(L7_2, L8_2)
  L6_2 = L2_1
  L6_2 = L6_2.debugger
  L6_2 = L6_2.debugPrint
  L7_2 = "network"
  L8_2 = "have sent first message"
  L6_2(L7_2, L8_2)
end

function L19_1()
  local L0_2, L1_2, L2_2
  L0_2 = L2_1
  L0_2 = L0_2.createCustomOverlay
  L1_2 = 19
  L0_2(L1_2)
  L0_2 = L2_1
  L0_2 = L0_2.getSceneName
  L1_2 = "current"
  L0_2 = L0_2(L1_2)
  L1_2 = L2_1
  L1_2 = L1_2.gotoScene
  L2_2 = "lua.scenes.mainMenu"
  L1_2(L2_2)
  L1_2 = L2_1
  L1_2 = L1_2.removeScene
  L2_2 = L0_2
  L1_2(L2_2)
end

function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L9_1
  if L1_2 then
    L1_2 = L12_1
    if L1_2 then
      L1_2 = L9_1
      L2_2 = L1_2
      L1_2 = L1_2.receive
      L3_2 = "*l"
      L1_2, L2_2 = L1_2(L2_2, L3_2)
      if L2_2 == "closed" then
        L3_2 = print
        L4_2 = "errorCode game"
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
        L3_2 = false
        L12_1 = L3_2
        L3_2 = L19_1
        L3_2()
      elseif L1_2 then
        L3_2 = L1_1
        L3_2 = L3_2.decode
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        L4_2 = type
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        if L4_2 == "table" then
          L4_2 = L2_1
          L4_2 = L4_2.debugger
          L4_2 = L4_2.debugPrint
          L5_2 = "network"
          L6_2 = "rec tcpClient: "
          L7_2 = L1_2
          L6_2 = L6_2 .. L7_2
          L4_2(L5_2, L6_2)
          L4_2 = L3_2[1]
          if L4_2 then
            L4_2 = L2_1
            L4_2 = L4_2.gameConfig
            L4_2 = L4_2.getMessageTypeForID
            L5_2 = tostring
            L6_2 = L3_2[1]
            L5_2, L6_2, L7_2 = L5_2(L6_2)
            L4_2 = L4_2(L5_2, L6_2, L7_2)
            if L4_2 == "HANDSHAKE" then
              L4_2 = L17_1
              L5_2 = L3_2[2]
              L6_2 = L3_2[3]
              L4_2 = L4_2(L5_2, L6_2)
              L5_2 = L18_1
              L6_2 = L4_2
              L5_2(L6_2)
          end
          else
            L4_2 = true
            L14_1 = L4_2
            L4_2 = true
            L12_1 = L4_2
            L4_2 = true
            L13_1 = L4_2
            L4_2 = L3_2[1]
            if L4_2 then
              L4_2 = L2_1
              L4_2 = L4_2.gameConfig
              L4_2 = L4_2.getMessageTypeForID
              L5_2 = tostring
              L6_2 = L3_2[1]
              L5_2, L6_2, L7_2 = L5_2(L6_2)
              L4_2 = L4_2(L5_2, L6_2, L7_2)
              if L4_2 == "PING" then
                L4_2 = L16_1
                L5_2 = L3_2
                L4_2(L5_2)
              end
            end
          end
          L4_2 = L11_1
          L5_2 = L3_2
          L4_2(L5_2)
        else
        end
      end
    end
  end
end

function L21_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = print
  L1_2 = "try to connect tcp"
  L0_2(L1_2)
  L0_2 = L9_1
  if L0_2 then
    L0_2 = L9_1
    L1_2 = L0_2
    L0_2 = L0_2.close
    L0_2(L1_2)
    L0_2 = nil
    L9_1 = L0_2
  end
  L0_2 = true
  L15_1 = L0_2
  L0_2 = false
  L13_1 = L0_2
  L0_2 = L0_1
  L0_2 = L0_2.tcp
  L0_2 = L0_2()
  L9_1 = L0_2
  L0_2 = L9_1
  L1_2 = L0_2
  L0_2 = L0_2.settimeout
  L2_2 = 3
  L0_2(L1_2, L2_2)
  L0_2 = L9_1
  L1_2 = L0_2
  L0_2 = L0_2.setoption
  L2_2 = "tcp-nodelay"
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L2_1
  L0_2 = L0_2.config
  L0_2 = L0_2.tcpClient
  L5_1 = L0_2
  L0_2 = L9_1
  if L0_2 == nil then
    L0_2 = print
    L1_2 = "WARNING: tcpConnection game = nil"
    L0_2(L1_2)
    return
  end
  L0_2 = type
  L1_2 = L5_1
  L0_2 = L0_2(L1_2)
  if L0_2 ~= "table" then
    L0_2 = L5_1
    if L0_2 ~= nil then
      goto lbl_53
    end
  end
  L0_2 = print
  L1_2 = "WARNING:  in sendFirstGameMessage not valid format"
  L2_2 = L5_1
  L0_2(L1_2, L2_2)
  do return end
  ::lbl_53::
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.gameInfo
  L0_2 = L0_2.gameType
  if L0_2 == 3 then
  end
  L0_2 = L9_1
  L1_2 = L0_2
  L0_2 = L0_2.connect
  L2_2 = L5_1
  L3_2 = L6_1
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L9_1
  L1_2 = L0_2
  L0_2 = L0_2.settimeout
  L2_2 = 0
  L0_2(L1_2, L2_2)
  L0_2 = true
  L12_1 = L0_2
  L0_2 = print
  L1_2 = "done with connect"
  L0_2(L1_2)
end

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = false
  L12_1 = L1_2
  L1_2 = L9_1
  if not L1_2 then
    L1_2 = L2_1
    L1_2 = L1_2.debugger
    L1_2 = L1_2.debugPrint
    L2_2 = "network"
    L3_2 = "start TCP game client"
    L1_2(L2_2, L3_2)
    L11_1 = A0_2
    L1_2 = L21_1
    L1_2()
    L1_2 = timer
    L1_2 = L1_2.performWithDelay
    L2_2 = L7_1
    L3_2 = L20_1
    L4_2 = 0
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L10_1 = L1_2
  end
end

function L23_1()
  local L0_2, L1_2
  L0_2 = L10_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L10_1
    L0_2(L1_2)
    L0_2 = nil
    L10_1 = L0_2
  end
end

function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L10_1
  if L1_2 then
    L1_2 = timer
    L1_2 = L1_2.cancel
    L2_2 = L10_1
    L1_2(L2_2)
    L1_2 = nil
    L10_1 = L1_2
  end
  L11_1 = A0_2
  L1_2 = timer
  L1_2 = L1_2.performWithDelay
  L2_2 = L8_1
  L3_2 = L20_1
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L10_1 = L1_2
end

function L25_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = math
    L1_2 = L1_2.round
    L2_2 = A0_2
    return L1_2(L2_2)
  else
    L1_2 = 0
    return L1_2
  end
end

function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L1_2.m = A0_2
  L2_2 = L12_1
  if L2_2 then
    L2_2 = L13_1
    if L2_2 then
      L2_2 = L1_1
      L2_2 = L2_2.encode
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = L2_1
      L3_2 = L3_2.debugger
      L3_2 = L3_2.debugPrint
      L4_2 = "network"
      L5_2 = "sendMessage tcp: "
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = L9_1
      L4_2 = L3_2
      L3_2 = L3_2.send
      L5_2 = L2_2
      L6_2 = "\n"
      L5_2 = L5_2 .. L6_2
      L3_2(L4_2, L5_2)
  end
  else
    L2_2 = print
    L3_2 = "tcp connection is not up yet"
    L2_2(L3_2)
  end
end

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L12_1
  if L1_2 then
    L1_2 = L13_1
    if L1_2 then
      L1_2 = L2_1
      L1_2 = L1_2.debugger
      L1_2 = L1_2.debugPrint
      L2_2 = "network"
      L3_2 = "sendMinimizedMessage tcp"
      L4_2 = A0_2
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = L9_1
      L2_2 = L1_2
      L1_2 = L1_2.send
      L3_2 = A0_2
      L4_2 = "\n"
      L3_2 = L3_2 .. L4_2
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = print
    L2_2 = "WARNING: sendMinimizedMessage tcp connection is not up yet"
    L1_2(L2_2)
  end
end

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L2_1
  L1_2 = L1_2.gameConfig
  L1_2 = L1_2.getClientMessageTypeForName
  L2_2 = "PONG"
  L1_2 = L1_2(L2_2)
  L2_2 = "["
  L3_2 = L1_2
  L4_2 = ","
  L5_2 = A0_2[2]
  L6_2 = "]"
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
  L3_2 = L27_1
  L4_2 = L2_2
  L3_2(L4_2)
end

function L28_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = L12_1
  if L4_2 then
    L4_2 = L13_1
    if L4_2 then
      L4_2 = L2_1
      L4_2 = L4_2.serverClock
      if L4_2 then
        L4_2 = L25_1
        L5_2 = A0_2
        L4_2 = L4_2(L5_2)
        A0_2 = L4_2
        L4_2 = L25_1
        L5_2 = A1_2
        L4_2 = L4_2(L5_2)
        A1_2 = L4_2
        L4_2 = L25_1
        L5_2 = A2_2
        L4_2 = L4_2(L5_2)
        A2_2 = L4_2
        L4_2 = L25_1
        L5_2 = A3_2
        L4_2 = L4_2(L5_2)
        A3_2 = L4_2
        L4_2 = L2_1
        L4_2 = L4_2.serverClock
        L4_2 = L4_2()
        L5_2 = L2_1
        L5_2 = L5_2.gameConfig
        L5_2 = L5_2.getClientMessageTypeForName
        L6_2 = "CORRIGATE_POSITION"
        L5_2 = L5_2(L6_2)
        L6_2 = "["
        L7_2 = L5_2
        L8_2 = ","
        L9_2 = L4_2
        L10_2 = ","
        L11_2 = A0_2
        L12_2 = ","
        L13_2 = A1_2
        L14_2 = ","
        L15_2 = A2_2
        L16_2 = ","
        L17_2 = A3_2
        L18_2 = "]"
        L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2
        L7_2 = L9_1
        L8_2 = L7_2
        L7_2 = L7_2.send
        L9_2 = L6_2
        L10_2 = "\n"
        L9_2 = L9_2 .. L10_2
        L7_2(L8_2, L9_2)
    end
  end
  else
    L4_2 = print
    L5_2 = "WARNING: sendCorrigateMessage tcp connection is not up yet"
    L4_2(L5_2)
  end
end

function L29_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L6_2 = L2_1
  L6_2 = L6_2.serverClock
  if L6_2 then
    L6_2 = L25_1
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    A1_2 = L6_2
    L6_2 = L25_1
    L7_2 = A2_2
    L6_2 = L6_2(L7_2)
    A2_2 = L6_2
    L6_2 = L25_1
    L7_2 = A3_2
    L6_2 = L6_2(L7_2)
    A3_2 = L6_2
    L6_2 = L25_1
    L7_2 = A4_2
    L6_2 = L6_2(L7_2)
    A4_2 = L6_2
    L6_2 = L2_1
    L6_2 = L6_2.serverClock
    L6_2 = L6_2()
    L7_2 = L2_1
    L7_2 = L7_2.gameConfig
    L7_2 = L7_2.getPowerUpDelay
    L7_2 = L7_2()
    L6_2 = L6_2 + L7_2
    L7_2 = L2_1
    L7_2 = L7_2.gameConfig
    L7_2 = L7_2.getClientMessageTypeForName
    L8_2 = "POWERUP"
    L7_2 = L7_2(L8_2)
    L8_2 = "["
    L9_2 = L7_2
    L10_2 = ","
    L11_2 = L6_2
    L12_2 = ","
    L13_2 = A0_2
    L14_2 = ","
    L15_2 = A1_2
    L16_2 = ","
    L17_2 = A2_2
    L18_2 = ","
    L19_2 = A3_2
    L20_2 = ","
    L21_2 = A4_2
    L22_2 = ","
    L23_2 = A5_2
    L24_2 = "]"
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2
    L9_2 = L27_1
    L10_2 = L8_2
    L9_2(L10_2)
  end
end

function L30_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = L2_1
  L4_2 = L4_2.serverClock
  if L4_2 then
    L4_2 = L25_1
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    A0_2 = L4_2
    L4_2 = L25_1
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    A1_2 = L4_2
    L4_2 = L25_1
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    A2_2 = L4_2
    L4_2 = L25_1
    L5_2 = A3_2
    L4_2 = L4_2(L5_2)
    A3_2 = L4_2
    L4_2 = L2_1
    L4_2 = L4_2.serverClock
    L4_2 = L4_2()
    L5_2 = L2_1
    L5_2 = L5_2.gameConfig
    L5_2 = L5_2.getJumpDelay
    L5_2 = L5_2()
    L4_2 = L4_2 + L5_2
    L5_2 = L2_1
    L5_2 = L5_2.gameConfig
    L5_2 = L5_2.getClientMessageTypeForName
    L6_2 = "JUMP"
    L5_2 = L5_2(L6_2)
    L6_2 = "["
    L7_2 = L5_2
    L8_2 = ","
    L9_2 = L4_2
    L10_2 = ","
    L11_2 = A0_2
    L12_2 = ","
    L13_2 = A1_2
    L14_2 = ","
    L15_2 = A2_2
    L16_2 = ","
    L17_2 = A3_2
    L18_2 = "]"
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2
    L7_2 = L27_1
    L8_2 = L6_2
    L7_2(L8_2)
  end
end

function L31_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L5_2 = L2_1
  L5_2 = L5_2.serverClock
  if L5_2 then
    L5_2 = L2_1
    L5_2 = L5_2.gameConfig
    L5_2 = L5_2.getClientMessageTypeForName
    L6_2 = "POWERBOX"
    L5_2 = L5_2(L6_2)
    L6_2 = L2_1
    L6_2 = L6_2.serverClock
    L6_2 = L6_2()
    L7_2 = "["
    L8_2 = L5_2
    L9_2 = ","
    L10_2 = L6_2
    L11_2 = ","
    L12_2 = A0_2
    L13_2 = ","
    L14_2 = A1_2
    L15_2 = ","
    L16_2 = A2_2
    L17_2 = ","
    L18_2 = A3_2
    L19_2 = ","
    L20_2 = A4_2
    L21_2 = "]"
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2
    L8_2 = L27_1
    L9_2 = L7_2
    L8_2(L9_2)
  end
end

function L32_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L5_2 = L2_1
  L5_2 = L5_2.serverClock
  if L5_2 then
    L5_2 = L2_1
    L5_2 = L5_2.gameConfig
    L5_2 = L5_2.getClientMessageTypeForName
    L6_2 = "POWERUP_HIT"
    L5_2 = L5_2(L6_2)
    L6_2 = L2_1
    L6_2 = L6_2.serverClock
    L6_2 = L6_2()
    L7_2 = L2_1
    L7_2 = L7_2.gameConfig
    L7_2 = L7_2.getRespawnTime
    L7_2 = L7_2()
    L6_2 = L6_2 + L7_2
    if A4_2 then
      L7_2 = L2_1
      L7_2 = L7_2.serverClock
      L7_2 = L7_2()
      L6_2 = L7_2 + A4_2
    end
    L7_2 = "["
    L8_2 = L5_2
    L9_2 = ","
    L10_2 = L6_2
    L11_2 = ","
    L12_2 = A0_2
    L13_2 = ","
    L14_2 = A1_2
    L15_2 = ","
    L16_2 = A2_2
    L17_2 = ","
    L18_2 = A3_2
    L19_2 = "]"
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2
    L8_2 = L27_1
    L9_2 = L7_2
    L8_2(L9_2)
  else
    L5_2 = print
    L6_2 = "sendPlayerHitByPowerUp error "
    L7_2 = A2_2
    L5_2(L6_2, L7_2)
  end
end

function L33_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L2_1
  L0_2 = L0_2.gameConfig
  L0_2 = L0_2.getClientMessageTypeForName
  L1_2 = "CHAT_START_TYPING"
  L0_2 = L0_2(L1_2)
  L1_2 = "["
  L2_2 = L0_2
  L3_2 = "]"
  L1_2 = L1_2 .. L2_2 .. L3_2
  L2_2 = L27_1
  L3_2 = L1_2
  L2_2(L3_2)
end

function L34_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L2_1
  L0_2 = L0_2.gameConfig
  L0_2 = L0_2.getClientMessageTypeForName
  L1_2 = "CHAT_STOP_TYPING"
  L0_2 = L0_2(L1_2)
  L1_2 = "["
  L2_2 = L0_2
  L3_2 = "]"
  L1_2 = L1_2 .. L2_2 .. L3_2
  L2_2 = L27_1
  L3_2 = L1_2
  L2_2(L3_2)
end

function L35_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L2_1
  L0_2 = L0_2.gameConfig
  L0_2 = L0_2.getClientMessageTypeForName
  L1_2 = "REACHED_GOAL"
  L0_2 = L0_2(L1_2)
  L1_2 = "["
  L2_2 = L0_2
  L3_2 = "]"
  L1_2 = L1_2 .. L2_2 .. L3_2
  L2_2 = L27_1
  L3_2 = L1_2
  L2_2(L3_2)
end

function L36_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L2_1
  L0_2 = L0_2.gameConfig
  L0_2 = L0_2.getClientMessageTypeForName
  L1_2 = "START_GAME"
  L0_2 = L0_2(L1_2)
  L1_2 = "["
  L2_2 = L0_2
  L3_2 = "]"
  L1_2 = L1_2 .. L2_2 .. L3_2
  L2_2 = L27_1
  L3_2 = L1_2
  L2_2(L3_2)
end

function L37_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L2_1
  L0_2 = L0_2.gameConfig
  L0_2 = L0_2.getClientMessageTypeForName
  L1_2 = "PLAYER_READY"
  L0_2 = L0_2(L1_2)
  L1_2 = "["
  L2_2 = L0_2
  L3_2 = "]"
  L1_2 = L1_2 .. L2_2 .. L3_2
  L2_2 = L27_1
  L3_2 = L1_2
  L2_2(L3_2)
end

function L38_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L2_1
  L0_2 = L0_2.gameConfig
  L0_2 = L0_2.getClientMessageTypeForName
  L1_2 = "REJOIN_GAME"
  L0_2 = L0_2(L1_2)
  L1_2 = "["
  L2_2 = L0_2
  L3_2 = "]"
  L1_2 = L1_2 .. L2_2 .. L3_2
  L2_2 = L27_1
  L3_2 = L1_2
  L2_2(L3_2)
end

function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L2_1
  L1_2 = L1_2.gameConfig
  L1_2 = L1_2.getClientMessageTypeForName
  L2_2 = "SET_MAP"
  L1_2 = L1_2(L2_2)
  L2_2 = "["
  L3_2 = L1_2
  L4_2 = ","
  L5_2 = A0_2
  L6_2 = "]"
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
  L3_2 = L27_1
  L4_2 = L2_2
  L3_2(L4_2)
end

function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L2_1
  L1_2 = L1_2.gameConfig
  L1_2 = L1_2.getClientMessageTypeForName
  L2_2 = "TOGGLE_RANDOM_PLAYERS"
  L1_2 = L1_2(L2_2)
  L2_2 = "["
  L3_2 = L1_2
  L4_2 = ","
  L5_2 = A0_2
  L6_2 = "]"
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
  L3_2 = L27_1
  L4_2 = L2_2
  L3_2(L4_2)
end

function L41_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L2_1
  L1_2 = L1_2.gameConfig
  L1_2 = L1_2.getClientMessageTypeForName
  L2_2 = "KICK_PLAYER"
  L1_2 = L1_2(L2_2)
  L2_2 = "["
  L3_2 = L1_2
  L4_2 = ","
  L5_2 = A0_2
  L6_2 = "]"
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
  L3_2 = L27_1
  L4_2 = L2_2
  L3_2(L4_2)
end

function L42_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L2_1
  L1_2 = L1_2.gameConfig
  L1_2 = L1_2.getClientMessageTypeForName
  L2_2 = "POSTGAME_CHAT"
  L1_2 = L1_2(L2_2)
  L2_2 = "["
  L3_2 = L1_2
  L4_2 = ","
  L5_2 = A0_2
  L6_2 = "]"
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
  L3_2 = L27_1
  L4_2 = L2_2
  L3_2(L4_2)
end

function L43_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L2_1
  L2_2 = L2_2.gameConfig
  L2_2 = L2_2.getClientMessageTypeForName
  L3_2 = "REPORT_PLAYER"
  L2_2 = L2_2(L3_2)
  L3_2 = "["
  L4_2 = L2_2
  L5_2 = ","
  L6_2 = A0_2
  L7_2 = ","
  L8_2 = A1_2
  L9_2 = "]"
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
  L4_2 = L27_1
  L5_2 = L3_2
  L4_2(L5_2)
end

function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if not A0_2 then
    A0_2 = 0
  end
  L1_2 = L2_1
  L1_2 = L1_2.gameConfig
  L1_2 = L1_2.getClientMessageTypeForName
  L2_2 = "POWER_UP_UPGRADE_BUY"
  L1_2 = L1_2(L2_2)
  L2_2 = "["
  L3_2 = L1_2
  L4_2 = ","
  L5_2 = A0_2
  L6_2 = "]"
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
  L3_2 = L27_1
  L4_2 = L2_2
  L3_2(L4_2)
end

function L45_1()
  local L0_2, L1_2, L2_2
  L0_2 = L10_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L10_1
    L0_2(L1_2)
    L0_2 = nil
    L10_1 = L0_2
  end
  L0_2 = L9_1
  if L0_2 then
    L0_2 = L9_1
    L1_2 = L0_2
    L0_2 = L0_2.close
    L0_2(L1_2)
    L0_2 = nil
    L9_1 = L0_2
  end
  L0_2 = false
  L12_1 = L0_2
  L0_2 = L2_1
  L0_2 = L0_2.debugger
  L0_2 = L0_2.debugPrint
  L1_2 = "network"
  L2_2 = "stop tcp"
  L0_2(L1_2, L2_2)
end

function L46_1()
  local L0_2, L1_2
  L0_2 = L12_1
  if L0_2 then
    L0_2 = L13_1
    if L0_2 then
      L0_2 = true
      return L0_2
  end
  else
    L0_2 = false
    return L0_2
  end
end

L4_1.startTCP = L22_1
L4_1.stopTCPClient = L45_1
L4_1.setReceiveFunction = L24_1
L4_1.sendJumpMessage = L30_1
L4_1.sendPowerUpMessage = L29_1
L4_1.sendMessage = L26_1
L4_1.sendMinimizedMessage = L27_1
L4_1.sendCorrigateMessage = L28_1
L4_1.sendPowerBoxMessage = L31_1
L4_1.sendPlayerHitByPowerUp = L32_1
L4_1.sendPlayerReachedGoal = L35_1
L4_1.sendStartGame = L36_1
L4_1.sendRejoinGame = L38_1
L4_1.sendMapSelected = L39_1
L4_1.sendToggleRandomPlayers = L40_1
L4_1.sendKickPlayer = L41_1
L4_1.isOnline = L46_1
L4_1.sendPlayerReady = L37_1
L4_1.pauseReadFromBuffer = L23_1
L4_1.sendStartTyping = L33_1
L4_1.sendStopTyping = L34_1
L4_1.sendChatMessage = L42_1
L4_1.sendPlayerReportMessage = L43_1
L4_1.sendPurchasePowerUpForSingleGame = L44_1
return L4_1
