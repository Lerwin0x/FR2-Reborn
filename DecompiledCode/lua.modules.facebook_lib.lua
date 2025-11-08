local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
L0_1 = {}
L1_1 = require
L2_1 = "facebook"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "json"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "socket.url"
L3_1 = L3_1(L4_1)
L0_1.FB_App_ID = "_UNDEFINED_"
L0_1.FB_Access_Token = nil
L0_1.isDebug = false
L4_1 = "[Facebook]"

function L5_1(...)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L1_2 = L1_2.isDebug
  if L1_2 then
    L1_2 = print
    L2_2 = L4_1
    L3_2 = " "
    L4_2 = unpack
    L5_2 = arg
    L4_2 = L4_2(L5_2)
    L2_2 = L2_2 .. L3_2 .. L4_2
    L1_2(L2_2)
  end
end

function L6_1(...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  L1_2 = L1_2.isDebug
  if L1_2 then
    L1_2 = L5_1
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = unpack
    L4_2 = arg
    L3_2, L4_2 = L3_2(L4_2)
    L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = L0_1
  L3_2 = L3_2.isDebug
  if L3_2 then
    if A1_2 then
      L3_2 = L5_1
      L4_2 = A1_2
      L3_2(L4_2)
    end
    if not A2_2 then
      A2_2 = 0
    end
    if A0_2 then
      L3_2 = pairs
      L4_2 = A0_2
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = ""
        L9_2 = 1
        L10_2 = A2_2
        L11_2 = 1
        for L12_2 = L9_2, L10_2, L11_2 do
          L13_2 = L8_2
          L14_2 = "    "
          L8_2 = L13_2 .. L14_2
        end
        L9_2 = L5_1
        L10_2 = L8_2
        L11_2 = "["
        L12_2 = tostring
        L13_2 = L6_2
        L12_2 = L12_2(L13_2)
        L13_2 = "] = "
        L14_2 = tostring
        L15_2 = L7_2
        L14_2 = L14_2(L15_2)
        L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2
        L9_2(L10_2)
        L9_2 = type
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        if L9_2 == "table" then
          L9_2 = L5_1
          L10_2 = L8_2
          L11_2 = "{"
          L10_2 = L10_2 .. L11_2
          L9_2(L10_2)
          L9_2 = L7_1
          L10_2 = L7_2
          L11_2 = nil
          L12_2 = A2_2 + 1
          L9_2(L10_2, L11_2, L12_2)
          L9_2 = L5_1
          L10_2 = L8_2
          L11_2 = "}"
          L10_2 = L10_2 .. L11_2
          L9_2(L10_2)
        end
      end
    end
  end
end

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L0_1
  L2_2 = L2_2.isDebug
  if L2_2 then
    L2_2 = L5_1
    L3_2 = "----- Begin response -----"
    L2_2(L3_2)
    if A0_2 then
      L2_2 = A0_2.path
      if L2_2 == "login" then
        L2_2 = L6_1
        L3_2 = "Request: login"
        L2_2(L3_2)
        L2_2 = 1
        L3_2 = A0_2.params
        L3_2 = #L3_2
        L4_2 = 1
        for L5_2 = L2_2, L3_2, L4_2 do
          L6_2 = L6_1
          L7_2 = "Request permission: %s"
          L8_2 = A0_2.params
          L8_2 = L8_2[L5_2]
          L6_2(L7_2, L8_2)
        end
      else
        L2_2 = A0_2.method
        if L2_2 then
          L2_2 = L6_1
          L3_2 = "Request: %s %s"
          L4_2 = A0_2.method
          L5_2 = A0_2.path
          L2_2(L3_2, L4_2, L5_2)
        else
          L2_2 = L6_1
          L3_2 = "Request: %s"
          L4_2 = A0_2.path
          L2_2(L3_2, L4_2)
        end
        L2_2 = A0_2.params
        if L2_2 then
          L2_2 = pairs
          L3_2 = A0_2.params
          L2_2, L3_2, L4_2 = L2_2(L3_2)
          for L5_2, L6_2 in L2_2, L3_2, L4_2 do
            L7_2 = L6_1
            L8_2 = "Request parameter - %s: %s"
            L9_2 = L5_2
            L10_2 = L6_2
            L7_2(L8_2, L9_2, L10_2)
          end
        end
      end
    end
    if A1_2 then
      L2_2 = L5_1
      L3_2 = "Response - event.name: "
      L4_2 = A1_2.name
      L3_2 = L3_2 .. L4_2
      L2_2(L3_2)
      L2_2 = L5_1
      L3_2 = "Response - event.type: "
      L4_2 = A1_2.type
      L3_2 = L3_2 .. L4_2
      L2_2(L3_2)
      L2_2 = A1_2.phase
      if L2_2 then
        L2_2 = L5_1
        L3_2 = "Response - event.phase: "
        L4_2 = A1_2.phase
        L3_2 = L3_2 .. L4_2
        L2_2(L3_2)
      end
      L2_2 = A1_2.token
      if L2_2 then
        L2_2 = L5_1
        L3_2 = "Response - access token: "
        L4_2 = tostring
        L5_2 = A1_2.token
        L4_2 = L4_2(L5_2)
        L3_2 = L3_2 .. L4_2
        L2_2(L3_2)
      end
      L2_2 = A1_2.type
      if L2_2 == "dialog" then
        L2_2 = L5_1
        L3_2 = "Response - dialog 'didComplete' was: "
        L4_2 = tostring
        L5_2 = A1_2.didComplete
        L4_2 = L4_2(L5_2)
        L3_2 = L3_2 .. L4_2
        L2_2(L3_2)
      end
      L2_2 = A1_2.isError
      if L2_2 then
        L2_2 = L5_1
        L3_2 = "Response reports 'isError'"
        L2_2(L3_2)
      end
      L2_2 = A1_2.response
      if L2_2 then
        L2_2 = type
        L3_2 = A1_2.response
        L2_2 = L2_2(L3_2)
        if L2_2 == "table" then
          L2_2 = L7_1
          L3_2 = A1_2.response
          L4_2 = "Response body table:"
          L2_2(L3_2, L4_2)
        else
          L2_2 = tostring
          L3_2 = A1_2.response
          L2_2 = L2_2(L3_2)
          if L2_2 then
            L4_2 = L2_2
            L3_2 = L2_2.len
            L3_2 = L3_2(L4_2)
            if 0 < L3_2 then
              L3_2 = L5_1
              L4_2 = "Response body ("
              L5_2 = type
              L6_2 = A1_2.response
              L5_2 = L5_2(L6_2)
              L6_2 = "): "
              L7_2 = L2_2
              L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
              L3_2(L4_2)
            end
          end
        end
      end
    end
    L2_2 = L5_1
    L3_2 = "----- End response -----"
    L2_2(L3_2)
  end
end

L9_1 = false
L10_1 = nil

function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = {}
  L4_2.path = A0_2
  L4_2.method = A1_2
  L4_2.params = A2_2
  L4_2.listener = A3_2
  L10_1 = L4_2
end

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.isError
  if L1_2 then
    L1_2 = "Unknown Error"
    L2_2 = A0_2.response
    if L2_2 then
      L2_2 = type
      L3_2 = A0_2.response
      L2_2 = L2_2(L3_2)
      if L2_2 == "string" then
        L2_2 = A0_2.response
        L3_2 = L2_2
        L2_2 = L2_2.len
        L2_2 = L2_2(L3_2)
        if 0 < L2_2 then
          L1_2 = A0_2.response
        end
      end
    end
    L2_2 = {}
    L2_2.message = L1_2
    L2_2.type = "CallError"
    L2_2.code = -1
    L3_2 = A0_2.response
    A0_2.response_raw = L3_2
    L3_2 = {}
    A0_2.response = L3_2
    L3_2 = A0_2.response
    L3_2.error = L2_2
  else
    L1_2 = A0_2.response
    if L1_2 then
      L1_2 = A0_2.response
      L2_2 = L1_2
      L1_2 = L1_2.len
      L1_2 = L1_2(L2_2)
      if 0 < L1_2 then
        L1_2 = A0_2.response
        A0_2.response_raw = L1_2
        L1_2 = A0_2.response_raw
        L2_2 = L1_2
        L1_2 = L1_2.sub
        L3_2 = 1
        L4_2 = 1
        L1_2 = L1_2(L2_2, L3_2, L4_2)
        if L1_2 == "{" then
          L1_2 = L2_1
          L1_2 = L1_2.decode
          L2_2 = A0_2.response_raw
          L1_2 = L1_2(L2_2)
          A0_2.response = L1_2
        end
        L1_2 = A0_2.response
        L1_2 = L1_2.error
        if L1_2 then
          A0_2.isError = true
        end
      end
    end
    L1_2 = A0_2.isError
    if not L1_2 then
      L1_2 = A0_2.type
      if L1_2 == "session" then
        L1_2 = A0_2.phase
        if L1_2 == "login" then
          L1_2 = true
          L9_1 = L1_2
        else
          L1_2 = A0_2.phase
          if L1_2 == "logout" then
            L1_2 = false
            L9_1 = L1_2
          end
        end
      end
    end
  end
  L1_2 = L8_1
  L2_2 = L10_1
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = L10_1
  if L1_2 == nil then
    L1_2 = print
    L2_2 = "Facebook request completed, but no pending request state was available"
    L1_2(L2_2)
  else
    L1_2 = L10_1
    A0_2.request = L1_2
    L1_2 = nil
    L10_1 = L1_2
    L1_2 = A0_2.request
    L1_2 = L1_2.listener
    L2_2 = A0_2
    L1_2(L2_2)
  end
end

L13_1 = system
L13_1 = L13_1.getInfo
L14_1 = "environment"
L13_1 = L13_1(L14_1)
L13_1 = "simulator" == L13_1

function L14_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L0_2.name = "fbconnect"
  L0_2.type = "session"
  L0_2.phase = "login"
  L1_2 = L0_1
  L1_2 = L1_2.FB_Access_Token
  L0_2.token = L1_2
  L1_2 = L12_1
  L2_2 = L0_2
  L1_2(L2_2)
end

function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = A2_2 or nil
  if not A2_2 then
    L3_2 = {}
  end
  L4_2 = L0_1
  L4_2 = L4_2.FB_Access_Token
  if L4_2 then
    L4_2 = L0_1
    L4_2 = L4_2.FB_Access_Token
    L3_2.access_token = L4_2
  else
    L4_2 = print
    L5_2 = "Facebook functionality in the simulator requires that FB_Access_Token be set in lib_facebook.lua"
    L4_2(L5_2)
  end
  L4_2 = nil
  L5_2 = pairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    if L4_2 then
      L10_2 = L4_2
      L11_2 = "&"
      L4_2 = L10_2 .. L11_2
    else
      L4_2 = "?"
    end
    L10_2 = L4_2
    L11_2 = L8_2
    L12_2 = "="
    L13_2 = L3_1
    L13_2 = L13_2.escape
    L14_2 = L9_2
    L13_2 = L13_2(L14_2)
    L4_2 = L10_2 .. L11_2 .. L12_2 .. L13_2
  end
  L5_2 = "https://graph.facebook.com/"
  L6_2 = A0_2
  L7_2 = L4_2
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = L5_1
  L7_2 = "Simulator Facebook request: "
  L8_2 = L5_2
  L7_2 = L7_2 .. L8_2
  L6_2(L7_2)
  
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = {}
    L1_3.name = "fbconnect"
    L1_3.type = "request"
    L2_3 = A0_3.isError
    L1_3.isError = L2_3
    L2_3 = A0_3.response
    L1_3.response = L2_3
    L2_3 = L12_1
    L3_3 = L1_3
    L2_3(L3_3)
  end
  
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = L5_2
  L9_2 = A1_2
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
end

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L0_2.name = "fbconnect"
  L0_2.type = "session"
  L0_2.phase = "logout"
  L1_2 = L12_1
  L2_2 = L0_2
  L1_2(L2_2)
end

function L17_1()
  local L0_2, L1_2
  L0_2 = L9_1
  return L0_2
end

L0_1.isLoggedIn = L17_1

function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L5_1
  L3_2 = "Preparing to log in"
  L2_2(L3_2)
  L2_2 = assert
  L3_2 = L0_1
  L3_2 = L3_2.FB_App_ID
  if L3_2 then
    L3_2 = L0_1
    L3_2 = L3_2.FB_App_ID
    L4_2 = L3_2
    L3_2 = L3_2.len
    L3_2 = L3_2(L4_2)
    L3_2 = 0 < L3_2
  end
  L4_2 = "Facebook FB_App_ID not defined by caller"
  L2_2(L3_2, L4_2)
  L2_2 = L11_1
  L3_2 = "login"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L13_1
  if L2_2 then
    L2_2 = L14_1
    L2_2()
  else
    L2_2 = L1_1
    L2_2 = L2_2.login
    L3_2 = L0_1
    L3_2 = L3_2.FB_App_ID
    L4_2 = L12_1
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
  end
end

L0_1.login = L17_1

function L17_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = L5_1
  L5_2 = "Preparing to send request: "
  L6_2 = A1_2
  L7_2 = " "
  L8_2 = A0_2
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
  L4_2(L5_2)
  L4_2 = L10_1
  if L4_2 ~= nil then
    L4_2 = print
    L5_2 = "Error processing Facebook request: "
    L6_2 = A1_2
    L7_2 = " "
    L8_2 = A0_2
    L9_2 = ", a previous request is still being processed"
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    L4_2(L5_2)
  else
    L4_2 = L11_1
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L8_2 = A3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = L9_1
  if not L4_2 then
    L4_2 = print
    L5_2 = "Error processing Facebook request: "
    L6_2 = A1_2
    L7_2 = " "
    L8_2 = A0_2
    L9_2 = ", not currently logged in"
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    L4_2(L5_2)
  else
    L4_2 = L13_1
    if L4_2 then
      L4_2 = L15_1
      L5_2 = A0_2
      L6_2 = A1_2
      L7_2 = A2_2
      L4_2(L5_2, L6_2, L7_2)
    else
      L4_2 = L1_1
      L4_2 = L4_2.request
      L5_2 = A0_2
      L6_2 = A1_2
      L7_2 = A2_2
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end

L0_1.request = L17_1

function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L5_1
  L3_2 = "Preparing to show dialog"
  L2_2(L3_2)
  L2_2 = L10_1
  if L2_2 ~= nil then
    L2_2 = print
    L3_2 = "Error processing Facebook show dialog, a previous request is still being processed"
    L2_2(L3_2)
  else
    L2_2 = L11_1
    L3_2 = "showdialog"
    L4_2 = nil
    L5_2 = A0_2
    L6_2 = A1_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = L9_1
  if not L2_2 then
    L2_2 = print
    L3_2 = "Error processing Facebook show dialog, not currently logged in"
    L2_2(L3_2)
  else
    L2_2 = L13_1
    if L2_2 then
      L2_2 = print
      L3_2 = "Facebook showDialog not supported in simulator"
      L2_2(L3_2)
    else
      L2_2 = L1_1
      L2_2 = L2_2.showDialog
      L3_2 = "apprequests"
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
    end
  end
end

L0_1.showDialog = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L5_1
  L2_2 = "Preparing to log out"
  L1_2(L2_2)
  L1_2 = L10_1
  if L1_2 ~= nil then
    L1_2 = print
    L2_2 = "Error processing Facebook logout, a previous request is still being processed"
    L1_2(L2_2)
  else
    L1_2 = L11_1
    L2_2 = "logout"
    L3_2 = nil
    L4_2 = nil
    L5_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = L9_1
  if not L1_2 then
    L1_2 = print
    L2_2 = "Error processing Facebook logout, not currently logged in"
    L1_2(L2_2)
  else
    L1_2 = L13_1
    if L1_2 then
      L1_2 = L16_1
      L1_2()
    else
      L1_2 = L1_1
      L1_2 = L1_2.logout
      L1_2()
    end
  end
end

L0_1.logout = L17_1
return L0_1
