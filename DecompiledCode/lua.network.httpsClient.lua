local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = require
L1_1 = "json"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = {}
L3_1 = L1_1.config
L3_1 = L3_1.httpsClient
L4_1 = nil

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.response
  L2_2 = A0_2.isError
  if L2_2 then
    L1_2 = "{\"e\":\"Could not connect to server\"}"
  end
  L2_2 = print
  L3_2 = "rec: "
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = string
    L2_2 = L2_2.len
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if 0 < L2_2 then
      L2_2 = L0_1
      L2_2 = L2_2.decode
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = L4_1
      L4_2 = L2_2
      L3_2(L4_2)
    end
  end
end

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1
  L1_2 = L1_2.encode
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1
  L2_2 = L2_2.debugger
  L2_2 = L2_2.debugPrint
  L3_2 = "network"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L2_2.body = L1_2
  L3_2 = network
  L3_2 = L3_2.request
  L4_2 = L3_1
  L5_2 = "POST"
  L6_2 = L5_1
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end

L2_1.send = L6_1

function L6_1(A0_2)
  local L1_2
  L4_1 = A0_2
end

L2_1.setCallback = L6_1

function L6_1(A0_2)
  local L1_2
  L4_1 = A0_2
end

L2_1.initWithReceiveFunction = L6_1

function L7_1()
  local L0_2, L1_2
  L0_2 = system
  L0_2 = L0_2.getInfo
  L1_2 = "platformName"
  L0_2 = L0_2(L1_2)
  if L0_2 == "iPhone OS" then
    L1_2 = 1
    return L1_2
  elseif L0_2 == "Android" then
    L1_2 = 2
    return L1_2
  else
    L1_2 = 0
    return L1_2
  end
end

L2_1.getPlatformName = L7_1

function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = L7_1
  L3_2 = L3_2()
  L4_2 = "action=createUser&"
  L5_2 = L4_2
  L6_2 = "username="
  L7_2 = A1_2
  L8_2 = "&email="
  L9_2 = A0_2
  L10_2 = "&password="
  L11_2 = A2_2
  L12_2 = "&platform="
  L13_2 = L3_2
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = L3_1
  L9_2 = "POST"
  L10_2 = L5_1
  L11_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
end

L2_1.createUser = L8_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = L7_1
  L3_2 = L3_2()
  L4_2 = "action=createFacebookUser&"
  L5_2 = L4_2
  L6_2 = "username="
  L7_2 = A0_2
  L8_2 = "&facebookId="
  L9_2 = A1_2
  L10_2 = "&facebookToken="
  L11_2 = A2_2
  L12_2 = "&platform="
  L13_2 = L3_2
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = L3_1
  L9_2 = "POST"
  L10_2 = L5_1
  L11_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
end

L2_1.createFacebookUser = L9_1

function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = "action=addUserInformation&"
  L5_2 = L4_2
  L6_2 = "playerId="
  L7_2 = A0_2
  L8_2 = "&token="
  L9_2 = A1_2
  L10_2 = "&email="
  L11_2 = A2_2
  L12_2 = "&password="
  L13_2 = A3_2
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = L3_1
  L9_2 = "POST"
  L10_2 = L5_1
  L11_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
end

L2_1.addUserInformation = L10_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = "action=loginUser&"
  L3_2 = L2_2
  L4_2 = "username="
  L5_2 = A0_2
  L6_2 = "&password="
  L7_2 = A1_2
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
  L4_2 = {}
  L4_2.body = L3_2
  L5_2 = network
  L5_2 = L5_2.request
  L6_2 = L3_1
  L7_2 = "POST"
  L8_2 = L5_1
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end

L2_1.loginUser = L11_1

function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = "action=addFacebookInformation&"
  L5_2 = L4_2
  L6_2 = "facebookId="
  L7_2 = A2_2
  L8_2 = "&facebookToken="
  L9_2 = A3_2
  L10_2 = "&token="
  L11_2 = A0_2
  L12_2 = "&playerId="
  L13_2 = A1_2
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = L3_1
  L9_2 = "POST"
  L10_2 = L5_1
  L11_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
end

L2_1.addFacebookInformation = L12_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = "action=loginFacebookUser&"
  L3_2 = L2_2
  L4_2 = "facebookId="
  L5_2 = A0_2
  L6_2 = "&facebookToken="
  L7_2 = A1_2
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
  L4_2 = {}
  L4_2.body = L3_2
  L5_2 = network
  L5_2 = L5_2.request
  L6_2 = L3_1
  L7_2 = "POST"
  L8_2 = L5_1
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end

L2_1.loginFacebookUser = L13_1

function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = "action=forgotPassword&"
  L2_2 = L1_2
  L3_2 = "username="
  L4_2 = A0_2
  L2_2 = L2_2 .. L3_2 .. L4_2
  L3_2 = {}
  L3_2.body = L2_2
  L4_2 = network
  L4_2 = L4_2.request
  L5_2 = L3_1
  L6_2 = "POST"
  L7_2 = L5_1
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end

L2_1.forgotPassword = L14_1
return L2_1
