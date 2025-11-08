local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = {}
L2_1 = isSimulator
if L2_1 then
  function L2_1(A0_2, A1_2)
  end
  
  L1_1.login = L2_1
  
  function L3_1()
    local L0_2, L1_2
  end
  
  L1_1.logout = L3_1
  
  function L4_1()
    local L0_2, L1_2
  end
  
  L1_1.fetchFriends = L4_1
  
  function L5_1()
    local L0_2, L1_2
  end
  
  L1_1.isLoggedIn = L5_1
  
  function L6_1()
    local L0_2, L1_2
  end
  
  L1_1.invitePlayerToDownloadApp = L6_1
  
  function L7_1()
    local L0_2, L1_2
  end
  
  L1_1.getFacebookFriends = L7_1
  
  function L8_1()
    local L0_2, L1_2
  end
  
  L1_1.stopDelayedTimer = L8_1
  return L1_1
end
L2_1 = 0
L3_1 = nil
L4_1 = nil
L5_1 = require
L6_1 = "lua.modules.facebook_lib"
L5_1 = L5_1(L6_1)
L1_1.libFacebook = L5_1
L5_1 = L1_1.libFacebook
L6_1 = L0_1.config
L6_1 = L6_1.facebookAppId
L5_1.FB_App_ID = L6_1
L5_1 = L1_1.libFacebook
L6_1 = L0_1.config
L6_1 = L6_1.facebookToken
L5_1.FB_Access_Token = L6_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "[%z\001-\127\194-\244][\128-\191]*"
  return L1_2(L2_2, L3_2)
end

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = ipairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = {}
    L7_2 = L5_2.name
    L8_2 = L7_2
    L7_2 = L7_2.split
    L9_2 = " "
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = L6_2[1]
    L8_2 = 2
    L9_2 = #L6_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L7_2
      L13_2 = " "
      L14_2 = L5_1
      L15_2 = L6_2[L11_2]
      L14_2 = L14_2(L15_2)
      L15_2 = "."
      L7_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
    end
    L5_2.name = L7_2
  end
  return A0_2
end

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.name
    L3_3 = A1_3.name
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  return A0_2
end

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L0_1
  L1_2 = L1_2.database
  L1_2 = L1_2.getFriends
  L1_2 = L1_2()
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = false
    L7_2 = 1
    L8_2 = #L1_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = L1_2[L10_2]
      L11_2 = L11_2.f
      if L11_2 then
        L11_2 = tonumber
        L12_2 = L1_2[L10_2]
        L12_2 = L12_2.f
        L11_2 = L11_2(L12_2)
        L12_2 = tonumber
        L13_2 = A0_2[L5_2]
        L13_2 = L13_2.id
        L12_2 = L12_2(L13_2)
        if L11_2 == L12_2 then
          L6_2 = true
          L11_2 = L1_2[L10_2]
          L12_2 = A0_2[L5_2]
          L12_2 = L12_2.name
          L11_2.facebookName = L12_2
        end
      end
    end
    if not L6_2 then
      L7_2 = L0_1
      L7_2 = L7_2.comm
      L7_2 = L7_2.addFacebookFriend
      L8_2 = A0_2[L5_2]
      L8_2 = L8_2.id
      L7_2(L8_2)
    end
  end
  L2_2 = L0_1
  L2_2 = L2_2.debugger
  L2_2 = L2_2.debugTable
  L3_2 = "facebook"
  L4_2 = "friends matched"
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end

function L9_1(A0_2)
  local L1_2
end

function L10_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L1_1
  L0_2 = L0_2.libFacebook
  L0_2 = L0_2.showDialog
  L1_2 = {}
  L2_2 = L0_1
  L2_2 = L2_2.config
  L2_2 = L2_2.facebookAppId
  L1_2.app_id = L2_2
  L2_2 = L0_1
  L2_2 = L2_2.localized
  L2_2 = L2_2.get
  L3_2 = "Text"
  L2_2 = L2_2(L3_2)
  L1_2.message = L2_2
  L2_2 = L0_1
  L2_2 = L2_2.localized
  L2_2 = L2_2.get
  L3_2 = "title"
  L2_2 = L2_2(L3_2)
  L1_2.title = L2_2
  L2_2 = L9_1
  L0_2(L1_2, L2_2)
end

L1_1.invitePlayerToDownloadApp = L10_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.isError
  if L1_2 then
    L1_2 = L0_1
    L1_2 = L1_2.debugger
    L1_2 = L1_2.debugPrint
    L2_2 = "facebook"
    L3_2 = "List Friends - Error, details: "
    L4_2 = A0_2.response
    L4_2 = L4_2.error
    L4_2 = L4_2.message
    L3_2 = L3_2 .. L4_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2.response
    L1_2 = L1_2.data
    if L1_2 then
      L1_2 = A0_2.response
      L1_2 = L1_2.data
      L2_2 = L0_1
      L2_2 = L2_2.debugger
      L2_2 = L2_2.debugPrint
      L3_2 = "facebook"
      L4_2 = "Facebook friends Length: "
      L5_2 = #L1_2
      L4_2 = L4_2 .. L5_2
      L2_2(L3_2, L4_2)
      L2_2 = L7_1
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
      L2_2 = L6_1
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
      L2_2 = {}
      L3_2 = {}
      L4_2 = ipairs
      L5_2 = L1_2
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = L8_2.installed
        if L9_2 then
          L9_2 = #L2_2
          L9_2 = L9_2 + 1
          L10_2 = {}
          L11_2 = L8_2.id
          L10_2.id = L11_2
          L11_2 = L8_2.name
          L10_2.name = L11_2
          L10_2.installed = true
          L2_2[L9_2] = L10_2
        else
          L9_2 = #L3_2
          L9_2 = L9_2 + 1
          L10_2 = {}
          L11_2 = L8_2.id
          L10_2.id = L11_2
          L11_2 = L8_2.name
          L10_2.name = L11_2
          L10_2.installed = false
          L3_2[L9_2] = L10_2
        end
      end
      L4_2 = L8_1
      L5_2 = L2_2
      L4_2(L5_2)
      L4_2 = L0_1
      L4_2 = L4_2.debugger
      L4_2 = L4_2.debugPrint
      L5_2 = "facebook"
      L6_2 = "Sorted facebook friends name"
      L4_2(L5_2, L6_2)
      L4_2 = L0_1
      L4_2 = L4_2.database
      L4_2 = L4_2.setFacebookFriends
      L5_2 = L2_2
      L4_2(L5_2)
      L4_2 = L0_1
      L4_2 = L4_2.database
      L4_2 = L4_2.setFacebookFriendsNotInstalled
      L5_2 = L3_2
      L4_2(L5_2)
    end
  end
end

function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L0_1
  L0_2 = L0_2.debugger
  L0_2 = L0_2.debugPrint
  L1_2 = "facebook"
  L2_2 = "getFacebookFriends"
  L0_2(L1_2, L2_2)
  L0_2 = L1_1
  L0_2 = L0_2.libFacebook
  L0_2 = L0_2.request
  L1_2 = "me/friends"
  L2_2 = "GET"
  L3_2 = {}
  L3_2.fields = "name,installed"
  L4_2 = L11_1
  L0_2(L1_2, L2_2, L3_2, L4_2)
end

L1_1.getFacebookFriends = L12_1

function L13_1()
  local L0_2, L1_2
  L0_2 = L3_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L3_1
    L0_2(L1_2)
    L0_2 = nil
    L3_1 = L0_2
  end
end

L1_1.stopDelayedTimer = L13_1

function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.isError
  if L1_2 then
    L1_2 = L0_1
    L1_2 = L1_2.config
    L1_2.facebookMissmatch = true
    L1_2 = L4_1
    if L1_2 then
      L1_2 = {}
      L1_2.isError = true
      L2_2 = L4_1
      L3_2 = L1_2
      L2_2(L3_2)
    else
      L1_2 = L0_1
      L1_2 = L1_2.createCustomOverlay
      L2_2 = 2
      L1_2(L2_2)
    end
    L1_2 = L0_1
    L1_2 = L1_2.debugger
    L1_2 = L1_2.debugPrint
    L2_2 = "facebook"
    L3_2 = "List Me - Error, details: "
    L4_2 = A0_2.response
    L4_2 = L4_2.error
    L4_2 = L4_2.message
    L3_2 = L3_2 .. L4_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2.response
    L1_2 = L1_2.id
    if L1_2 then
      L1_2 = L0_1
      L1_2 = L1_2.debugger
      L1_2 = L1_2.debugPrint
      L2_2 = "facebook"
      L3_2 = "Set Facebook id: "
      L4_2 = A0_2.response
      L4_2 = L4_2.id
      L3_2 = L3_2 .. L4_2
      L1_2(L2_2, L3_2)
      L1_2 = L0_1
      L1_2 = L1_2.config
      L1_2 = L1_2.loginMessage
      if L1_2 then
        L1_2 = L0_1
        L1_2 = L1_2.commHttps
        L1_2 = L1_2.loginWithFacebook
        L2_2 = L0_1
        L2_2 = L2_2.config
        L2_2 = L2_2.facebookToken
        L3_2 = A0_2.response
        L3_2 = L3_2.id
        L1_2(L2_2, L3_2)
      else
        L1_2 = L0_1
        L1_2 = L1_2.database
        L1_2 = L1_2.getFacebookId
        L1_2 = L1_2()
        if L1_2 then
          L1_2 = tonumber
          L2_2 = L0_1
          L2_2 = L2_2.database
          L2_2 = L2_2.getFacebookId
          L2_2, L3_2, L4_2, L5_2 = L2_2()
          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
          L2_2 = tonumber
          L3_2 = A0_2.response
          L3_2 = L3_2.id
          L2_2 = L2_2(L3_2)
          if L1_2 == L2_2 then
            L1_2 = L0_1
            L1_2 = L1_2.config
            L1_2.facebookMissmatch = false
            L1_2 = L0_1
            L1_2 = L1_2.config
            L1_2 = L1_2.authenticate
            if L1_2 then
              L1_2 = L12_1
              L1_2()
            else
              L1_2 = L2_1
              if L1_2 < 5 then
                function L1_2()
                  local L0_3, L1_3, L2_3
                  
                  L0_3 = A0_2
                  L1_3 = L14_1
                  L2_3 = L0_3
                  L1_3(L2_3)
                end
                
                L2_2 = print
                L3_2 = "WARNING: delayed facebook friend check"
                L2_2(L3_2)
                L2_2 = timer
                L2_2 = L2_2.performWithDelay
                L3_2 = 2000
                L4_2 = L1_2
                L5_2 = 1
                L2_2 = L2_2(L3_2, L4_2, L5_2)
                L3_1 = L2_2
                L2_2 = L2_1
                L2_2 = L2_2 + 1
                L2_1 = L2_2
              end
            end
          else
            L1_2 = L0_1
            L1_2 = L1_2.config
            L1_2.facebookMissmatch = true
          end
        else
          L1_2 = L0_1
          L1_2 = L1_2.database
          L1_2 = L1_2.getPlayerInformation
          L1_2 = L1_2()
          if L1_2 then
            L2_2 = L0_1
            L2_2 = L2_2.commHttps
            L2_2 = L2_2.registerFacebook
            L3_2 = L0_1
            L3_2 = L3_2.config
            L3_2 = L3_2.facebookToken
            L4_2 = A0_2.response
            L4_2 = L4_2.id
            L2_2(L3_2, L4_2)
          end
        end
      end
    else
      L1_2 = L0_1
      L1_2 = L1_2.config
      L1_2.facebookMissmatch = true
      L1_2 = L0_1
      L1_2 = L1_2.alytics
      L1_2 = L1_2.newEvent
      L2_2 = "design"
      L3_2 = {}
      L3_2.event_id = "facebook:idIsNil"
      L4_2 = L0_1
      L4_2 = L4_2.getSceneName
      L5_2 = "current"
      L4_2 = L4_2(L5_2)
      L3_2.area = L4_2
      L1_2(L2_2, L3_2)
    end
  end
end

function L15_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = require
  L1_2 = "lua.network.httpsMessageFormat"
  L0_2 = L0_2(L1_2)
  L1_2 = {}
  L2_2 = L0_2.loginWithFacebook
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.r = 19
  L2_2 = L0_1
  L2_2 = L2_2.commHttps
  L2_2 = L2_2.httpsReceiveFunction
  L3_2 = L1_2
  L2_2(L3_2)
end

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.phase
  if L1_2 ~= "login" then
    L1_2 = L0_1
    L1_2 = L1_2.debugger
    L1_2 = L1_2.debugPrint
    L2_2 = "facebook"
    L3_2 = "Facebook login not successful"
    L1_2(L2_2, L3_2)
    L1_2 = L0_1
    L1_2 = L1_2.getSceneName
    L2_2 = "overlay"
    L1_2 = L1_2(L2_2)
    if L1_2 == "lua.overlay.loginUser" then
      L1_2 = L4_1
      if L1_2 then
        L1_2 = {}
        L1_2.isError = true
        L2_2 = L4_1
        L3_2 = L1_2
        L2_2(L3_2)
      end
    else
      L1_2 = print
      L2_2 = "Facebook found on account but user did not log in."
      L1_2(L2_2)
    end
  else
    L1_2 = A0_2.isError
    if L1_2 then
      L1_2 = L0_1
      L1_2 = L1_2.getSceneName
      L2_2 = "overlay"
      L1_2 = L1_2(L2_2)
      if L1_2 == "lua.overlay.loginUser" then
        L1_2 = L15_1
        L1_2()
      else
        L1_2 = L0_1
        L1_2 = L1_2.createCustomOverlay
        L2_2 = 4
        L1_2(L2_2)
      end
      L1_2 = L0_1
      L1_2 = L1_2.debugger
      L1_2 = L1_2.debugPrint
      L2_2 = "facebook"
      L3_2 = "Facebook login error - details: "
      L4_2 = A0_2.response
      L4_2 = L4_2.error
      L4_2 = L4_2.message
      L3_2 = L3_2 .. L4_2
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2.token
      if L1_2 then
        L1_2 = L0_1
        L1_2 = L1_2.config
        L2_2 = A0_2.token
        L1_2.facebookToken = L2_2
      end
      L1_2 = L1_1
      L1_2 = L1_2.libFacebook
      L1_2 = L1_2.request
      L2_2 = "me"
      L3_2 = "GET"
      L4_2 = {}
      L4_2.fields = "name"
      L5_2 = L14_1
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end

function L17_1(A0_2)
  local L1_2
end

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = 0
  L2_1 = L2_2
  L2_2 = L1_1
  L2_2 = L2_2.libFacebook
  L2_2 = L2_2.login
  L3_2 = A0_2
  L4_2 = L16_1
  L2_2(L3_2, L4_2)
  L4_1 = A1_2
end

L1_1.login = L18_1

function L19_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L0_2 = L0_2.libFacebook
  L0_2 = L0_2.logout
  L1_2 = L17_1
  L0_2(L1_2)
end

L1_1.logout = L19_1

function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L1_1
  L0_2 = L0_2.libFacebook
  L0_2 = L0_2.isLoggedIn
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.libFacebook
    L0_2 = L0_2.request
    L1_2 = "me/friends"
    L2_2 = "GET"
    L3_2 = {}
    L3_2.fields = "name,installed"
    L4_2 = L11_1
    L0_2(L1_2, L2_2, L3_2, L4_2)
  else
    L0_2 = L18_1
    L0_2()
  end
end

L1_1.fetchFriends = L20_1

function L21_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L0_2 = L0_2.libFacebook
  L0_2 = L0_2.isLoggedIn
  return L0_2()
end

L1_1.isLoggedIn = L21_1
return L1_1
