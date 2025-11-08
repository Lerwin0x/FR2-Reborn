local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "lua.network.httpsMessageFormat"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "lua.network.httpsClient"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "lua.iap.base64"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "lua.iap.validatePurchase"
L4_1 = L4_1(L5_1)
L5_1 = nil
L6_1 = {}

function L7_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "WARNING: Https callback not sat"
  L0_2(L1_2)
end

L6_1.callback = L7_1

function L7_1(A0_2)
  local L1_2
  L1_2 = L6_1
  L1_2.callback = A0_2
end

L6_1.setCallback = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2.r
  if L1_2 then
    L1_2 = print
    L2_2 = "WARNING: got error in commHttps type: "
    L3_2 = A0_2.r
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2.m
  L2_2 = L1_1
  L2_2 = L2_2.register
  L2_2 = L2_2()
  if L1_2 == L2_2 then
    L1_2 = A0_2.r
    if L1_2 then
      L1_2 = L0_1
      L1_2 = L1_2.cleanOldOverlay
      L1_2()
      L1_2 = L6_1
      L1_2 = L1_2.callback
      if L1_2 then
        L1_2 = L6_1
        L1_2 = L1_2.callback
        L2_2 = A0_2
        L1_2(L2_2)
      end
      return
    end
    L1_2 = L0_1
    L1_2 = L1_2.database
    L1_2 = L1_2.setPlayerInformation
    L2_2 = A0_2.u
    L3_2 = A0_2.t
    L4_2 = A0_2.p
    L5_2 = A0_2.a
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = L0_1
    L1_2 = L1_2.database
    L1_2 = L1_2.setAvatarData
    L1_2()
    L1_2 = L0_1
    L1_2 = L1_2.database
    L1_2 = L1_2.setOnboardingPartDone
    L2_2 = 1
    L1_2(L2_2)
    L1_2 = isSimulator
    if L1_2 then
      L1_2 = L0_1
      L1_2 = L1_2.config
      L1_2 = L1_2.bot
      if L1_2 then
    end
    else
      L1_2 = A0_2.ab
      if L1_2 then
        L1_2 = L0_1
        L1_2 = L1_2.config
        L2_2 = A0_2.ab
        L1_2.abTest = L2_2
        L1_2 = L0_1
        L1_2 = L1_2.config
        L1_2 = L1_2.abTest
        if L1_2 == "A" then
          L1_2 = L0_1
          L1_2 = L1_2.analytics
          L1_2 = L1_2.setABtestDimension
          L2_2 = "A"
          L1_2(L2_2)
        else
          L1_2 = L0_1
          L1_2 = L1_2.analytics
          L1_2 = L1_2.setABtestDimension
          L2_2 = "B"
          L1_2(L2_2)
          L1_2 = L0_1
          L1_2.dontShowTodaysChallenges = true
        end
      end
    end
    L1_2 = A0_2.g
    if L1_2 then
      L1_2 = print
      L2_2 = "Got google playerid from server"
      L3_2 = A0_2.g
      L1_2(L2_2, L3_2)
      L1_2 = L0_1
      L1_2 = L1_2.database
      L1_2 = L1_2.setGooglePlayServicesId
      L2_2 = A0_2.g
      L1_2(L2_2)
    end
    L1_2 = L0_1
    L1_2 = L1_2.analytics
    L1_2 = L1_2.addResourceEvent
    L2_2 = "Source"
    L3_2 = "gem"
    L4_2 = 4
    L5_2 = "misc"
    L6_2 = "register"
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = L0_1
    L1_2 = L1_2.analytics
    L1_2 = L1_2.addDesignEvent
    L2_2 = "Onboarding:CreateUser:Created"
    L1_2(L2_2)
    L1_2 = L0_1
    L1_2 = L1_2.analytics
    L1_2 = L1_2.SessionData
    L1_2.createdUserThisSession = true
    L1_2 = L0_1
    L1_2 = L1_2.gotoScene
    L2_2 = "lua.scenes.loadingScene"
    L1_2(L2_2)
  else
    L1_2 = A0_2.m
    L2_2 = L1_1
    L2_2 = L2_2.forgotPassword
    L2_2 = L2_2()
    if L1_2 == L2_2 then
      L1_2 = A0_2.r
      if L1_2 then
        L1_2 = A0_2.r
        if L1_2 == 78 then
          L1_2 = L0_1
          L1_2 = L1_2.createCustomOverlay
          L2_2 = 46
          L1_2(L2_2)
        end
        L1_2 = A0_2.r
        if L1_2 == 76 then
          L1_2 = L0_1
          L1_2 = L1_2.createCustomOverlay
          L2_2 = 46
          L1_2(L2_2)
        end
        L1_2 = A0_2.r
        if L1_2 == 83 then
          L1_2 = L0_1
          L1_2 = L1_2.createCustomOverlay
          L2_2 = 46
          L1_2(L2_2)
        end
        return
      end
      L1_2 = L6_1
      L1_2 = L1_2.callback
      if L1_2 then
        L1_2 = L6_1
        L1_2 = L1_2.callback
        L2_2 = A0_2
        L1_2(L2_2)
      end
    else
      L1_2 = A0_2.m
      L2_2 = L1_1
      L2_2 = L2_2.maintenance
      L2_2 = L2_2()
      if L1_2 == L2_2 then
        L1_2 = A0_2.a
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.createCustomOverlay
          L2_2 = 98
          L3_2 = nil
          L4_2 = A0_2.a
          L1_2(L2_2, L3_2, L4_2)
        end
      else
        L1_2 = A0_2.m
        L2_2 = L1_1
        L2_2 = L2_2.changeUsername
        L2_2 = L2_2()
        if L1_2 == L2_2 then
          L1_2 = A0_2.r
          if L1_2 then
            L1_2 = A0_2.r
            if L1_2 == 14 then
              L1_2 = L0_1
              L1_2 = L1_2.createCustomOverlay
              L2_2 = 10
              L1_2(L2_2)
              L1_2 = L0_1
              L1_2 = L1_2.analytics
              L1_2 = L1_2.newEvent
              L2_2 = "design"
              L3_2 = {}
              L3_2.event_id = "rename:invalidUsername"
              L4_2 = L0_1
              L4_2 = L4_2.config
              L4_2 = L4_2.fullVersion
              L3_2.area = L4_2
              L1_2(L2_2, L3_2)
            else
              L1_2 = A0_2.r
              if L1_2 == 15 then
                L1_2 = L0_1
                L1_2 = L1_2.createCustomOverlay
                L2_2 = 21
                L1_2(L2_2)
                L1_2 = L0_1
                L1_2 = L1_2.analytics
                L1_2 = L1_2.newEvent
                L2_2 = "design"
                L3_2 = {}
                L3_2.event_id = "rename:sameUsername"
                L4_2 = L0_1
                L4_2 = L4_2.config
                L4_2 = L4_2.fullVersion
                L3_2.area = L4_2
                L1_2(L2_2, L3_2)
              else
                L1_2 = A0_2.r
                if L1_2 == 16 then
                  L1_2 = L0_1
                  L1_2 = L1_2.createCustomOverlay
                  L2_2 = 22
                  L1_2(L2_2)
                  L1_2 = L0_1
                  L1_2 = L1_2.analytics
                  L1_2 = L1_2.newEvent
                  L2_2 = "design"
                  L3_2 = {}
                  L3_2.event_id = "rename:cantAfford"
                  L4_2 = L0_1
                  L4_2 = L4_2.config
                  L4_2 = L4_2.fullVersion
                  L3_2.area = L4_2
                  L1_2(L2_2, L3_2)
                else
                  L1_2 = A0_2.r
                  if L1_2 == 70 then
                    L1_2 = L0_1
                    L1_2 = L1_2.createCustomOverlay
                    L2_2 = 21
                    L1_2(L2_2)
                    L1_2 = L0_1
                    L1_2 = L1_2.analytics
                    L1_2 = L1_2.newEvent
                    L2_2 = "design"
                    L3_2 = {}
                    L3_2.event_id = "rename:bannedName"
                    L4_2 = L0_1
                    L4_2 = L4_2.config
                    L4_2 = L4_2.fullVersion
                    L3_2.area = L4_2
                    L1_2(L2_2, L3_2)
                  end
                end
              end
            end
            return
          end
          L1_2 = A0_2.u
          if L1_2 then
            L1_2 = A0_2.t
            if L1_2 then
              L1_2 = L0_1
              L1_2 = L1_2.database
              L1_2 = L1_2.updatePlayerInfo
              L2_2 = A0_2.u
              L3_2 = A0_2.t
              L1_2(L2_2, L3_2)
            end
          end
          L1_2 = L0_1
          L1_2 = L1_2.data
          L1_2 = L1_2.numberOfNameChangesDone
          if L1_2 == 0 then
            L1_2 = L0_1
            L1_2 = L1_2.data
            L1_2.numberOfNameChangesDone = 1
          else
            L1_2 = L0_1
            L1_2 = L1_2.database
            L1_2 = L1_2.getGem
            L1_2 = L1_2()
            L2_2 = L0_1
            L2_2 = L2_2.storeConfig
            L2_2 = L2_2.getUsernameChangePrice
            L2_2 = L2_2()
            L1_2 = L1_2 - L2_2
            L2_2 = L0_1
            L2_2 = L2_2.database
            L2_2 = L2_2.setGem
            L3_2 = L1_2
            L2_2(L3_2)
            L2_2 = L0_1
            L2_2 = L2_2.analytics
            L2_2 = L2_2.addResourceEvent
            L3_2 = "Sink"
            L4_2 = "gem"
            L5_2 = L0_1
            L5_2 = L5_2.storeConfig
            L5_2 = L5_2.getUsernameChangePrice
            L5_2 = L5_2()
            L6_2 = "misc"
            L7_2 = "namechange"
            L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
          end
          L1_2 = L0_1
          L1_2 = L1_2.analytics
          L1_2 = L1_2.newEvent
          L2_2 = "design"
          L3_2 = {}
          L3_2.event_id = "rename:success"
          L4_2 = L0_1
          L4_2 = L4_2.config
          L4_2 = L4_2.fullVersion
          L3_2.area = L4_2
          L1_2(L2_2, L3_2)
          L1_2 = L6_1
          L1_2 = L1_2.callback
          if L1_2 then
            L1_2 = L6_1
            L1_2 = L1_2.callback
            L2_2 = A0_2
            L1_2(L2_2)
          end
        else
          L1_2 = A0_2.m
          L2_2 = L1_1
          L2_2 = L2_2.changeEmail
          L2_2 = L2_2()
          if L1_2 == L2_2 then
            L1_2 = L6_1
            L1_2 = L1_2.callback
            if L1_2 then
              L1_2 = L6_1
              L1_2 = L1_2.callback
              L2_2 = A0_2
              L1_2(L2_2)
            end
          else
            L1_2 = A0_2.m
            L2_2 = L1_1
            L2_2 = L2_2.loginWithEmail
            L2_2 = L2_2()
            if L1_2 == L2_2 then
              L1_2 = A0_2.r
              if L1_2 then
                L1_2 = L6_1
                L1_2 = L1_2.callback
                if L1_2 then
                  L1_2 = L6_1
                  L1_2 = L1_2.callback
                  L2_2 = A0_2
                  L1_2(L2_2)
                end
                return
              end
              L1_2 = L0_1
              L1_2 = L1_2.database
              L1_2 = L1_2.setPlayerIdAndToken
              L2_2 = A0_2.p
              L3_2 = A0_2.a
              L1_2(L2_2, L3_2)
              L1_2 = L0_1
              L1_2.cleanLogin = true
              L1_2 = L0_1
              L1_2 = L1_2.analytics
              L1_2 = L1_2.newEvent
              L2_2 = "design"
              L3_2 = {}
              L3_2.event_id = "continueLogin:success"
              L4_2 = L0_1
              L4_2 = L4_2.config
              L4_2 = L4_2.fullVersion
              L3_2.area = L4_2
              L1_2(L2_2, L3_2)
              L1_2 = L0_1
              L1_2 = L1_2.config
              L1_2.loginMessage = true
              L1_2 = L0_1
              L1_2 = L1_2.gotoScene
              L2_2 = "lua.scenes.loadingScene"
              L1_2(L2_2)
              L1_2 = L0_1
              L1_2 = L1_2.database
              L1_2 = L1_2.setOnboardingPartDone
              L2_2 = 1
              L1_2(L2_2)
              L1_2 = L0_1
              L1_2.loggedInThisSession = true
            else
              L1_2 = A0_2.m
              L2_2 = L1_1
              L2_2 = L2_2.getUserOnDeviceId
              L2_2 = L2_2()
              if L1_2 == L2_2 then
                L1_2 = A0_2.r
                if L1_2 then
                end
                L1_2 = L0_1
                L1_2 = L1_2.getSceneName
                L2_2 = "current"
                L1_2 = L1_2(L2_2)
                if L1_2 ~= "lua.scenes.startScreen" then
                  return
                end
                L1_2 = L6_1
                L1_2 = L1_2.callback
                if L1_2 then
                  L1_2 = L6_1
                  L1_2 = L1_2.callback
                  L2_2 = A0_2
                  L1_2(L2_2)
                end
              else
                L1_2 = A0_2.m
                L2_2 = L1_1
                L2_2 = L2_2.loginWithDeviceId
                L2_2 = L2_2()
                if L1_2 == L2_2 then
                  L1_2 = A0_2.r
                  if L1_2 then
                    L1_2 = L6_1
                    L1_2 = L1_2.callback
                    if L1_2 then
                      L1_2 = L6_1
                      L1_2 = L1_2.callback
                      L2_2 = A0_2
                      L1_2(L2_2)
                    end
                    return
                  end
                  L1_2 = L0_1
                  L1_2 = L1_2.database
                  L1_2 = L1_2.setPlayerIdAndToken
                  L2_2 = A0_2.p
                  L3_2 = A0_2.a
                  L1_2(L2_2, L3_2)
                  L1_2 = L0_1
                  L1_2 = L1_2.config
                  L1_2.loginMessage = true
                  L1_2 = L0_1
                  L1_2 = L1_2.gotoScene
                  L2_2 = "lua.scenes.loadingScene"
                  L1_2(L2_2)
                  L1_2 = L0_1
                  L1_2 = L1_2.database
                  L1_2 = L1_2.setOnboardingPartDone
                  L2_2 = 1
                  L1_2(L2_2)
                  L1_2 = L0_1
                  L1_2.loggedInThisSession = true
                else
                  L1_2 = A0_2.m
                  L2_2 = L1_1
                  L2_2 = L2_2.loginWithFacebook
                  L2_2 = L2_2()
                  if L1_2 == L2_2 then
                    L1_2 = A0_2.r
                    if L1_2 then
                      L1_2 = L6_1
                      L1_2 = L1_2.callback
                      if L1_2 then
                        L1_2 = L6_1
                        L1_2 = L1_2.callback
                        L2_2 = A0_2
                        L1_2(L2_2)
                      end
                      return
                    end
                    L1_2 = L0_1
                    L1_2 = L1_2.database
                    L1_2 = L1_2.setPlayerIdAndToken
                    L2_2 = A0_2.p
                    L3_2 = A0_2.a
                    L1_2(L2_2, L3_2)
                    L1_2 = L0_1
                    L1_2.facebookLogin = true
                    L1_2 = L0_1
                    L1_2 = L1_2.config
                    L1_2.loginMessage = true
                    L1_2 = L0_1
                    L1_2 = L1_2.gotoScene
                    L2_2 = "lua.scenes.loadingScene"
                    L1_2(L2_2)
                    L1_2 = L0_1
                    L1_2 = L1_2.database
                    L1_2 = L1_2.setOnboardingPartDone
                    L2_2 = 1
                    L1_2(L2_2)
                    L1_2 = L0_1
                    L1_2.loggedInThisSession = true
                  else
                    L1_2 = A0_2.m
                    L2_2 = L1_1
                    L2_2 = L2_2.registerFacebook
                    L2_2 = L2_2()
                    if L1_2 == L2_2 then
                      L1_2 = A0_2.r
                      if L1_2 then
                        L1_2 = A0_2.r
                        if L1_2 == 20 then
                          L1_2 = L0_1
                          L1_2 = L1_2.createCustomOverlay
                          L2_2 = 10
                          L1_2(L2_2)
                        else
                          L1_2 = A0_2.r
                          if L1_2 == 21 then
                            L1_2 = L0_1
                            L1_2 = L1_2.createCustomOverlay
                            L2_2 = 26
                            L1_2(L2_2)
                          else
                            L1_2 = A0_2.r
                            if L1_2 == 22 then
                              L1_2 = L0_1
                              L1_2 = L1_2.createCustomOverlay
                              L2_2 = 16
                              L1_2(L2_2)
                            else
                              L1_2 = A0_2.r
                              if L1_2 == 23 then
                                L1_2 = L0_1
                                L1_2 = L1_2.createCustomOverlay
                                L2_2 = 27
                                L1_2(L2_2)
                              end
                            end
                          end
                        end
                        return
                      end
                      L1_2 = L0_1
                      L1_2 = L1_2.database
                      L1_2 = L1_2.setFacebookId
                      L2_2 = A0_2.f
                      L1_2(L2_2)
                      L1_2 = L0_1
                      L1_2 = L1_2.facebook
                      L1_2 = L1_2.getFacebookFriends
                      L1_2()
                      L1_2 = L6_1
                      L1_2 = L1_2.callback
                      if L1_2 then
                        L1_2 = L6_1
                        L1_2 = L1_2.callback
                        L2_2 = A0_2
                        L1_2(L2_2)
                      end
                    else
                      L1_2 = A0_2.m
                      L2_2 = L1_1
                      L2_2 = L2_2.buyProductIOS
                      L2_2 = L2_2()
                      if L1_2 ~= L2_2 then
                        L1_2 = A0_2.m
                        L2_2 = L1_1
                        L2_2 = L2_2.buyProductGoogle
                        L2_2 = L2_2()
                        if L1_2 ~= L2_2 then
                          L1_2 = A0_2.m
                          L2_2 = L1_1
                          L2_2 = L2_2.buyProductAmazon
                          L2_2 = L2_2()
                          if L1_2 ~= L2_2 then
                            L1_2 = A0_2.m
                            L2_2 = L1_1
                            L2_2 = L2_2.buyProductOldGoogle
                            L2_2 = L2_2()
                            if L1_2 ~= L2_2 then
                              goto lbl_740
                            end
                          end
                        end
                      end
                      L1_2 = A0_2.r
                      if L1_2 then
                        L1_2 = print
                        L2_2 = "WARNING: buy item iap failed "
                        L3_2 = A0_2.x
                        L1_2(L2_2, L3_2)
                        L1_2 = L6_1
                        L1_2 = L1_2.callback
                        if L1_2 then
                          L1_2 = L6_1
                          L1_2 = L1_2.callback
                          L2_2 = A0_2
                          L1_2(L2_2)
                        end
                        return
                      end
                      L1_2 = A0_2.e
                      if L1_2 then
                        L1_2 = L0_1
                        L1_2 = L1_2.database
                        L1_2 = L1_2.removeReceipt
                        L2_2 = A0_2.e
                        L1_2(L2_2)
                      end
                      L1_2 = A0_2.c
                      if L1_2 then
                        L1_2 = tonumber
                        L2_2 = A0_2.c
                        L1_2 = L1_2(L2_2)
                        L2_2 = L0_1
                        L2_2 = L2_2.database
                        L2_2 = L2_2.getGem
                        L2_2 = L2_2()
                        L1_2 = L1_2 - L2_2
                        L2_2 = L0_1
                        L2_2 = L2_2.database
                        L2_2 = L2_2.setGem
                        L3_2 = A0_2.c
                        L2_2(L3_2)
                        L2_2 = L0_1
                        L2_2 = L2_2.analytics
                        L2_2 = L2_2.addResourceEvent
                        L3_2 = "Source"
                        L4_2 = "gem"
                        L5_2 = tonumber
                        L6_2 = L1_2
                        L5_2 = L5_2(L6_2)
                        L6_2 = "iap"
                        L7_2 = "missing"
                        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
                      end
                      L1_2 = A0_2.x
                      if L1_2 then
                        L1_2 = L0_1
                        L1_2 = L1_2.debugger
                        L1_2 = L1_2.debugPrint
                        L2_2 = "network"
                        L3_2 = "purchaseItem with cash "
                        L4_2 = A0_2.x
                        L1_2(L2_2, L3_2, L4_2)
                        L1_2 = tonumber
                        L2_2 = A0_2.x
                        L1_2 = L1_2(L2_2)
                        if L1_2 == 1003 then
                          L1_2 = L0_1
                          L1_2 = L1_2.storeConfig
                          L1_2 = L1_2.getStarterPackContents
                          L1_2 = L1_2()
                          if L1_2 then
                            L2_2 = print
                            L3_2 = "number of starter pack contents"
                            L4_2 = #L1_2
                            L2_2(L3_2, L4_2)
                            L2_2 = 1
                            L3_2 = #L1_2
                            L4_2 = 1
                            for L5_2 = L2_2, L3_2, L4_2 do
                              L6_2 = L1_2[L5_2]
                              L7_2 = L6_2.type
                              if L7_2 == 901 then
                                L7_2 = L0_1
                                L7_2 = L7_2.database
                                L7_2 = L7_2.increaseMoney
                                L8_2 = L6_2.count
                                L7_2(L8_2)
                                L7_2 = L0_1
                                L7_2 = L7_2.analytics
                                L7_2 = L7_2.addResourceEvent
                                L8_2 = "Source"
                                L9_2 = "coin"
                                L10_2 = tonumber
                                L11_2 = L6_2.count
                                L10_2 = L10_2(L11_2)
                                L11_2 = "boost"
                                L12_2 = "starterpack"
                                L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
                              else
                                L7_2 = L6_2.type
                                if L7_2 == 902 then
                                  L7_2 = L0_1
                                  L7_2 = L7_2.database
                                  L7_2 = L7_2.increaseGem
                                  L8_2 = L6_2.count
                                  L7_2(L8_2)
                                  L7_2 = L0_1
                                  L7_2 = L7_2.analytics
                                  L7_2 = L7_2.addResourceEvent
                                  L8_2 = "Source"
                                  L9_2 = "gem"
                                  L10_2 = tonumber
                                  L11_2 = L6_2.count
                                  L10_2 = L10_2(L11_2)
                                  L11_2 = "boost"
                                  L12_2 = "starterpack"
                                  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
                                else
                                  L7_2 = L6_2.type
                                  if L7_2 ~= 1002 then
                                    L7_2 = L0_1
                                    L7_2 = L7_2.database
                                    L7_2 = L7_2.addItem
                                    L8_2 = L6_2.type
                                    L7_2(L8_2)
                                  end
                                end
                              end
                            end
                            L2_2 = L0_1
                            L2_2 = L2_2.analytics
                            L2_2 = L2_2.ResourceData
                            L2_2.itemType = "boost"
                            L2_2 = L0_1
                            L2_2 = L2_2.analytics
                            L2_2 = L2_2.ResourceData
                            L2_2.itemId = "starterpack"
                          else
                            L2_2 = print
                            L3_2 = "config does not contain starter pack contents"
                            L2_2(L3_2)
                          end
                        else
                          L1_2 = tonumber
                          L2_2 = A0_2.x
                          L1_2 = L1_2(L2_2)
                          if L1_2 ~= 1002 then
                            L1_2 = L0_1
                            L1_2 = L1_2.database
                            L1_2 = L1_2.addItem
                            L2_2 = A0_2.x
                            L1_2(L2_2)
                          end
                        end
                      end
                      L1_2 = L6_1
                      L1_2 = L1_2.callback
                      if L1_2 then
                        L1_2 = L6_1
                        L1_2 = L1_2.callback
                        L2_2 = A0_2
                        L1_2(L2_2)
                        goto lbl_1032
                        ::lbl_740::
                        L1_2 = A0_2.m
                        L2_2 = L1_1
                        L2_2 = L2_2.buyCrystalIOS
                        L2_2 = L2_2()
                        if L1_2 ~= L2_2 then
                          L1_2 = A0_2.m
                          L2_2 = L1_1
                          L2_2 = L2_2.buyCrystalGoogle
                          L2_2 = L2_2()
                          if L1_2 ~= L2_2 then
                            L1_2 = A0_2.m
                            L2_2 = L1_1
                            L2_2 = L2_2.buyCrystalAmazon
                            L2_2 = L2_2()
                            if L1_2 ~= L2_2 then
                              L1_2 = A0_2.m
                              L2_2 = L1_1
                              L2_2 = L2_2.buyCrystalOldGoogle
                              L2_2 = L2_2()
                              if L1_2 ~= L2_2 then
                                goto lbl_850
                              end
                            end
                          end
                        end
                        L1_2 = A0_2.r
                        if L1_2 then
                          L1_2 = print
                          L2_2 = "WARNING: buy item failed "
                          L3_2 = A0_2.x
                          L1_2(L2_2, L3_2)
                          L1_2 = L6_1
                          L1_2 = L1_2.callback
                          if L1_2 then
                            L1_2 = L6_1
                            L1_2 = L1_2.callback
                            L2_2 = A0_2
                            L1_2(L2_2)
                          end
                          return
                        end
                        L1_2 = A0_2.e
                        if L1_2 then
                          L1_2 = L0_1
                          L1_2 = L1_2.database
                          L1_2 = L1_2.removeReceipt
                          L2_2 = A0_2.e
                          L1_2(L2_2)
                        end
                        L1_2 = A0_2.c
                        if L1_2 then
                          L1_2 = tonumber
                          L2_2 = A0_2.c
                          L1_2 = L1_2(L2_2)
                          L2_2 = L0_1
                          L2_2 = L2_2.database
                          L2_2 = L2_2.getGem
                          L2_2 = L2_2()
                          L1_2 = L1_2 - L2_2
                          L2_2 = L0_1
                          L2_2 = L2_2.database
                          L2_2 = L2_2.setGem
                          L3_2 = A0_2.c
                          L2_2(L3_2)
                          L2_2 = L0_1
                          L2_2 = L2_2.analytics
                          L2_2 = L2_2.addResourceEvent
                          L3_2 = "Source"
                          L4_2 = "gem"
                          L5_2 = tonumber
                          L6_2 = L1_2
                          L5_2 = L5_2(L6_2)
                          L6_2 = L0_1
                          L6_2 = L6_2.analytics
                          L6_2 = L6_2.ResourceData
                          L6_2 = L6_2.itemType
                          L7_2 = L0_1
                          L7_2 = L7_2.analytics
                          L7_2 = L7_2.ResourceData
                          L7_2 = L7_2.itemId
                          L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
                        end
                        L1_2 = A0_2.x
                        if L1_2 then
                          L1_2 = L0_1
                          L1_2 = L1_2.debugger
                          L1_2 = L1_2.debugPrint
                          L2_2 = "network"
                          L3_2 = "purchaseItem with cash "
                          L4_2 = A0_2.x
                          L1_2(L2_2, L3_2, L4_2)
                          L1_2 = tonumber
                          L2_2 = A0_2.x
                          L1_2 = L1_2(L2_2)
                          if L1_2 ~= 1002 then
                            L1_2 = L0_1
                            L1_2 = L1_2.database
                            L1_2 = L1_2.addItem
                            L2_2 = A0_2.x
                            L1_2(L2_2)
                          end
                        end
                        L1_2 = L6_1
                        L1_2 = L1_2.callback
                        if L1_2 then
                          L1_2 = L6_1
                          L1_2 = L1_2.callback
                          L2_2 = A0_2
                          L1_2(L2_2)
                          goto lbl_1032
                          ::lbl_850::
                          L1_2 = A0_2.m
                          L2_2 = L1_1
                          L2_2 = L2_2.registerGameNetworkPlayerId
                          L2_2 = L2_2()
                          if L1_2 == L2_2 then
                            L1_2 = print
                            L2_2 = "Got register game network reply"
                            L1_2(L2_2)
                            L1_2 = A0_2.s
                            if L1_2 ~= nil then
                              L1_2 = A0_2.s
                              if L1_2 == true then
                                L1_2 = A0_2.r
                                if L1_2 then
                                  L1_2 = isAndroid
                                  if L1_2 then
                                    L1_2 = L0_1
                                    L1_2 = L1_2.analytics
                                    L1_2 = L1_2.newEvent
                                    L2_2 = "design"
                                    L3_2 = {}
                                    L3_2.event_id = "gameNetwork:stage5:fail:android"
                                    L4_2 = L0_1
                                    L4_2 = L4_2.config
                                    L4_2 = L4_2.fullVersion
                                    L3_2.area = L4_2
                                    L1_2(L2_2, L3_2)
                                  else
                                    L1_2 = isIOS
                                    if L1_2 then
                                      L1_2 = L0_1
                                      L1_2 = L1_2.analytics
                                      L1_2 = L1_2.newEvent
                                      L2_2 = "design"
                                      L3_2 = {}
                                      L3_2.event_id = "gameNetwork:stage5:fail:apple"
                                      L4_2 = L0_1
                                      L4_2 = L4_2.config
                                      L4_2 = L4_2.fullVersion
                                      L3_2.area = L4_2
                                      L1_2(L2_2, L3_2)
                                    end
                                  end
                                  return
                                end
                                L1_2 = "Game Service Link Success!"
                                L2_2 = L0_1
                                L2_2 = L2_2.createCustomOverlay
                                L3_2 = 98
                                L4_2 = nil
                                L5_2 = L1_2
                                L2_2(L3_2, L4_2, L5_2)
                                L2_2 = print
                                L3_2 = "text to show:"
                                L4_2 = L1_2
                                L2_2(L3_2, L4_2)
                                L2_2 = isAndroid
                                if L2_2 then
                                  L2_2 = L0_1
                                  L2_2 = L2_2.analytics
                                  L2_2 = L2_2.newEvent
                                  L3_2 = "design"
                                  L4_2 = {}
                                  L4_2.event_id = "gameNetwork:stage5:success:android"
                                  L5_2 = L0_1
                                  L5_2 = L5_2.config
                                  L5_2 = L5_2.fullVersion
                                  L4_2.area = L5_2
                                  L2_2(L3_2, L4_2)
                                else
                                  L2_2 = isIOS
                                  if L2_2 then
                                    L2_2 = L0_1
                                    L2_2 = L2_2.analytics
                                    L2_2 = L2_2.newEvent
                                    L3_2 = "design"
                                    L4_2 = {}
                                    L4_2.event_id = "gameNetwork:stage5:success:apple"
                                    L5_2 = L0_1
                                    L5_2 = L5_2.config
                                    L5_2 = L5_2.fullVersion
                                    L4_2.area = L5_2
                                    L2_2(L3_2, L4_2)
                                  end
                                end
                              else
                                L1_2 = A0_2.p
                                if L1_2 then
                                  L1_2 = {}
                                  
                                  function L2_2()
                                    local L0_3, L1_3, L2_3, L3_3
                                    L0_3 = isAndroid
                                    if L0_3 then
                                      function L0_3(A0_4)
                                        local L1_4, L2_4, L3_4, L4_4
                                        
                                        L1_4 = A0_4.isError
                                        if L1_4 then
                                          L1_4 = print
                                          L2_4 = "[confirm replace] Something went wrong while getting server auth token"
                                          L1_4(L2_4)
                                        end
                                        L1_4 = A0_4.errorCode
                                        if L1_4 then
                                          L1_4 = print
                                          L2_4 = "[confirm replace] GPGS errorcode "
                                          L3_4 = A0_4.errorCode
                                          L1_4(L2_4, L3_4)
                                        end
                                        L1_4 = A0_4.errorMessage
                                        if L1_4 then
                                          L1_4 = print
                                          L2_4 = "[confirm replace] GPGS errorMessage "
                                          L3_4 = A0_4.errorMessage
                                          L1_4(L2_4, L3_4)
                                        end
                                        L1_4 = A0_4.code
                                        if L1_4 then
                                          L1_4 = A0_4.isError
                                          if not L1_4 then
                                            L1_4 = print
                                            L2_4 = "[confirm replace] got GPGS code, sending https! "
                                            L1_4(L2_4)
                                            L1_4 = L0_1
                                            L1_4 = L1_4.analytics
                                            L1_4 = L1_4.newEvent
                                            L2_4 = "design"
                                            L3_4 = {}
                                            L3_4.event_id = "gameNetwork:stage4:success:android"
                                            L4_4 = L0_1
                                            L4_4 = L4_4.config
                                            L4_4 = L4_4.fullVersion
                                            L3_4.area = L4_4
                                            L1_4(L2_4, L3_4)
                                            L1_4 = L0_1
                                            L1_4 = L1_4.commHttps
                                            L1_4 = L1_4.registerGameNetworkPlayerId
                                            L2_4 = nil
                                            L3_4 = A0_4.code
                                            L4_4 = true
                                            L1_4(L2_4, L3_4, L4_4)
                                        end
                                        else
                                          L1_4 = print
                                          L2_4 = "no [settings] event code "
                                          L1_4(L2_4)
                                          L1_4 = L0_1
                                          L1_4 = L1_4.analytics
                                          L1_4 = L1_4.newEvent
                                          L2_4 = "design"
                                          L3_4 = {}
                                          L3_4.event_id = "gameNetwork:stage4:fail:android"
                                          L4_4 = L0_1
                                          L4_4 = L4_4.config
                                          L4_4 = L4_4.fullVersion
                                          L3_4.area = L4_4
                                          L1_4(L2_4, L3_4)
                                        end
                                      end
                                      
                                      L1_3 = L0_1
                                      L1_3 = L1_3.gameNetwork
                                      L1_3 = L1_3.getPlayServicesRefreshToken
                                      L2_3 = L0_3
                                      L1_3(L2_3)
                                    else
                                      L0_3 = isIOS
                                      if L0_3 then
                                        L0_3 = L0_1
                                        L0_3 = L0_3.analytics
                                        L0_3 = L0_3.newEvent
                                        L1_3 = "design"
                                        L2_3 = {}
                                        L2_3.event_id = "gameNetwork:stage4:success:apple"
                                        L3_3 = L0_1
                                        L3_3 = L3_3.config
                                        L3_3 = L3_3.fullVersion
                                        L2_3.area = L3_3
                                        L0_3(L1_3, L2_3)
                                        L0_3 = L0_1
                                        L0_3 = L0_3.commHttps
                                        L0_3 = L0_3.registerGameNetworkPlayerId
                                        L1_3 = L0_1
                                        L1_3 = L1_3.gameNetwork
                                        L1_3 = L1_3.getPlayerId
                                        L1_3 = L1_3()
                                        L2_3 = nil
                                        L3_3 = true
                                        L0_3(L1_3, L2_3, L3_3)
                                      else
                                        L0_3 = print
                                        L1_3 = "Error, tried to send game network player id for something else than ios or android3"
                                        L0_3(L1_3)
                                      end
                                    end
                                  end
                                  
                                  L1_2.yesEvent = L2_2
                                  L2_2 = L0_1
                                  L2_2 = L2_2.database
                                  L2_2 = L2_2.getPlayerInformation
                                  L2_2 = L2_2()
                                  L3_2 = L2_2.username
                                  L4_2 = "#"
                                  L5_2 = L2_2.usernameCode
                                  L3_2 = L3_2 .. L4_2 .. L5_2
                                  L4_2 = L0_1
                                  L4_2 = L4_2.localized
                                  L4_2 = L4_2.get
                                  L5_2 = "Remove link from: "
                                  L4_2 = L4_2(L5_2)
                                  L5_2 = A0_2.p
                                  L6_2 = "\n"
                                  L7_2 = L0_1
                                  L7_2 = L7_2.localized
                                  L7_2 = L7_2.get
                                  L8_2 = "Add link to: "
                                  L7_2 = L7_2(L8_2)
                                  L8_2 = L3_2
                                  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
                                  L1_2.text = L4_2
                                  L1_2.textSize = 16
                                  L4_2 = require
                                  L5_2 = "lua.overlays.areYouSureOverlay"
                                  L4_2 = L4_2(L5_2)
                                  L5_2 = L4_2.create
                                  L6_2 = L1_2
                                  L5_2(L6_2)
                                else
                                  L1_2 = "Game Service Link Failed. Please restart the game and try again."
                                  L2_2 = L0_1
                                  L2_2 = L2_2.createCustomOverlay
                                  L3_2 = 98
                                  L4_2 = nil
                                  L5_2 = L1_2
                                  L2_2(L3_2, L4_2, L5_2)
                                  L2_2 = print
                                  L3_2 = "text to show:"
                                  L4_2 = L1_2
                                  L2_2(L3_2, L4_2)
                                end
                              end
                            end
                            L1_2 = L6_1
                            L1_2 = L1_2.callback
                            if L1_2 then
                              L1_2 = L6_1
                              L1_2 = L1_2.callback
                              L2_2 = A0_2
                              L1_2(L2_2)
                            end
                          else
                            L1_2 = A0_2.m
                            L2_2 = L1_1
                            L2_2 = L2_2.getGooglePlayServicesId
                            L2_2 = L2_2()
                            if L1_2 == L2_2 then
                              L1_2 = L0_1
                              L1_2 = L1_2.gameNetwork
                              if L1_2 then
                                L1_2 = A0_2.a
                                if L1_2 then
                                  L1_2 = L0_1
                                  L1_2 = L1_2.database
                                  L1_2 = L1_2.setGooglePlayServicesId
                                  L2_2 = A0_2.a
                                  L1_2(L2_2)
                                  L1_2 = L0_1
                                  L1_2 = L1_2.gameNetwork
                                  L1_2 = L1_2.revalidateGooglePlayServices
                                  L1_2()
                                end
                              end
                              L1_2 = L6_1
                              L1_2 = L1_2.callback
                              if L1_2 then
                                L1_2 = L6_1
                                L1_2 = L1_2.callback
                                L2_2 = A0_2
                                L1_2(L2_2)
                              end
                            else
                              L1_2 = L6_1
                              L1_2 = L1_2.callback
                              L2_2 = A0_2
                              L1_2(L2_2)
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_1032::
  L1_2 = A0_2.token
  if L1_2 then
    L1_2 = L0_1
    L2_2 = L0_1
    L2_2 = L2_2.database
    L2_2 = L2_2.getPlayerInformation
    L2_2 = L2_2()
    L1_2.playerInfo = L2_2
    L1_2 = L6_1
    L1_2 = L1_2.callback
    L2_2 = A0_2
    L1_2(L2_2)
  end
  L1_2 = nil
  L5_1 = L1_2
end

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = L1_1
  L2_2 = L2_2.register
  L2_2 = L2_2()
  L1_2.m = L2_2
  L2_2 = system
  L2_2 = L2_2.getInfo
  L3_2 = "deviceID"
  L2_2 = L2_2(L3_2)
  L1_2.d = L2_2
  L2_2 = L0_1
  L2_2 = L2_2.config
  L2_2 = L2_2.platform
  L1_2.p = L2_2
  L2_2 = system
  L2_2 = L2_2.getInfo
  L3_2 = "model"
  L2_2 = L2_2(L3_2)
  L1_2.i = L2_2
  L2_2 = system
  L2_2 = L2_2.getInfo
  L3_2 = "architectureInfo"
  L2_2 = L2_2(L3_2)
  L1_2.a = L2_2
  L1_2.u = A0_2
  L2_2 = L0_1
  L2_2 = L2_2.localized
  L2_2 = L2_2.language
  L1_2.l = L2_2
  L2_2 = L0_1
  L2_2 = L2_2.config
  L2_2 = L2_2.fullVersion
  L1_2.v = L2_2
  L2_2 = isAndroid
  if L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2.gameNetwork
    if L2_2 then
      L2_2 = L0_1
      L2_2 = L2_2.gameNetwork
      L2_2 = L2_2.isGameServicesActive
      L2_2 = L2_2()
      if L2_2 then
        function L2_2(A0_3)
          local L1_3, L2_3, L3_3
          
          L1_3 = A0_3.isError
          if L1_3 then
            L1_3 = print
            L2_3 = "Register Something went wrong while getting server auth token"
            L1_3(L2_3)
          end
          L1_3 = A0_3.errorCode
          if L1_3 then
            L1_3 = print
            L2_3 = "Register GPGS errorcode "
            L3_3 = A0_3.errorCode
            L1_3(L2_3, L3_3)
          end
          L1_3 = A0_3.errorMessage
          if L1_3 then
            L1_3 = print
            L2_3 = "Register GPGS errorMessage "
            L3_3 = A0_3.errorMessage
            L1_3(L2_3, L3_3)
          end
          L1_3 = A0_3.code
          if L1_3 then
            L1_3 = print
            L2_3 = "Register GPGS code "
            L1_3(L2_3)
            L1_3 = L1_2
            L2_3 = A0_3.code
            L1_3.s = L2_3
          end
          L1_3 = L2_1
          L1_3 = L1_3.send
          L2_3 = L1_2
          L1_3(L2_3)
        end
        
        L3_2 = L0_1
        L3_2 = L3_2.gameNetwork
        L3_2 = L3_2.getPlayServicesRefreshToken
        L4_2 = L2_2
        L3_2(L4_2)
        return
      end
  end
  else
    L2_2 = isIOS
    if L2_2 then
      L2_2 = L0_1
      L2_2 = L2_2.gameNetwork
      L2_2 = L2_2.isGameServicesActive
      L2_2 = L2_2()
      if L2_2 then
        L2_2 = L0_1
        L2_2 = L2_2.gameNetwork
        L2_2 = L2_2.getAppleGameCenterPlayerId
        L2_2 = L2_2()
        L1_2.r = L2_2
      end
    end
  end
  L2_2 = L2_1
  L2_2 = L2_2.send
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.sendRegisterMessage = L8_1

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  L1_2 = L1_2.database
  L1_2 = L1_2.getPlayerInformation
  L1_2 = L1_2()
  L2_2 = {}
  L3_2 = L1_1
  L3_2 = L3_2.changeUsername
  L3_2 = L3_2()
  L2_2.m = L3_2
  L3_2 = L1_2.token
  L2_2.a = L3_2
  L3_2 = L1_2.playerId
  L2_2.p = L3_2
  L2_2.u = A0_2
  L2_2.g = true
  L3_2 = L2_1
  L3_2 = L3_2.send
  L4_2 = L2_2
  L3_2(L4_2)
end

L6_1.changeUsername = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  L2_2 = L2_2.database
  L2_2 = L2_2.getPlayerInformation
  L2_2 = L2_2()
  L3_2 = {}
  L4_2 = L1_1
  L4_2 = L4_2.changeEmail
  L4_2 = L4_2()
  L3_2.m = L4_2
  L3_2.e = A0_2
  L3_2.w = A1_2
  L4_2 = L2_2.token
  L3_2.a = L4_2
  L4_2 = L2_2.playerId
  L3_2.p = L4_2
  L4_2 = L2_1
  L4_2 = L4_2.send
  L5_2 = L3_2
  L4_2(L5_2)
end

L6_1.changeEmail = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = L1_1
  L3_2 = L3_2.loginWithEmail
  L3_2 = L3_2()
  L2_2.m = L3_2
  L2_2.e = A0_2
  L2_2.w = A1_2
  L3_2 = system
  L3_2 = L3_2.getInfo
  L4_2 = "deviceID"
  L3_2 = L3_2(L4_2)
  L2_2.d = L3_2
  L3_2 = L0_1
  L3_2 = L3_2.config
  L3_2 = L3_2.platform
  L2_2.p = L3_2
  L3_2 = L2_1
  L3_2 = L3_2.send
  L4_2 = L2_2
  L3_2(L4_2)
end

L6_1.loginWithEmail = L8_1

function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L1_1
  L2_2 = L2_2.forgotPassword
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.e = A0_2
  L2_2 = system
  L2_2 = L2_2.getInfo
  L3_2 = "deviceID"
  L2_2 = L2_2(L3_2)
  L1_2.d = L2_2
  L2_2 = L2_1
  L2_2 = L2_2.send
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.forgotPassword = L8_1

function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L1_1
  L1_2 = L1_2.getUserOnDeviceId
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = system
  L1_2 = L1_2.getInfo
  L2_2 = "deviceID"
  L1_2 = L1_2(L2_2)
  L0_2.d = L1_2
  L1_2 = L2_1
  L1_2 = L1_2.send
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.getUserOnDeviceId = L8_1

function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L1_1
  L1_2 = L1_2.loginWithDeviceId
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = system
  L1_2 = L1_2.getInfo
  L2_2 = "deviceID"
  L1_2 = L1_2(L2_2)
  L0_2.d = L1_2
  L1_2 = L0_1
  L1_2 = L1_2.config
  L1_2 = L1_2.platform
  L0_2.p = L1_2
  L1_2 = L2_1
  L1_2 = L1_2.send
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.loginWithDeviceId = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = {}
  L3_2 = L1_1
  L3_2 = L3_2.loginWithFacebook
  L3_2 = L3_2()
  L2_2.m = L3_2
  L2_2.t = A0_2
  L2_2.f = A1_2
  L3_2 = system
  L3_2 = L3_2.getInfo
  L4_2 = "deviceID"
  L3_2 = L3_2(L4_2)
  L2_2.d = L3_2
  L3_2 = L0_1
  L3_2 = L3_2.config
  L3_2 = L3_2.platform
  L2_2.p = L3_2
  L3_2 = L0_1
  L3_2 = L3_2.debugger
  L3_2 = L3_2.debugTable
  L4_2 = "facebook"
  L5_2 = "Sending login message:"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L2_1
  L3_2 = L3_2.send
  L4_2 = L2_2
  L3_2(L4_2)
end

L6_1.loginWithFacebook = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  L2_2 = L2_2.database
  L2_2 = L2_2.getPlayerInformation
  L2_2 = L2_2()
  L3_2 = {}
  L4_2 = L1_1
  L4_2 = L4_2.registerFacebook
  L4_2 = L4_2()
  L3_2.m = L4_2
  L4_2 = L2_2.token
  L3_2.a = L4_2
  L4_2 = L2_2.playerId
  L3_2.p = L4_2
  L3_2.t = A0_2
  L3_2.f = A1_2
  L4_2 = L2_1
  L4_2 = L4_2.send
  L5_2 = L3_2
  L4_2(L5_2)
end

L6_1.registerFacebook = L8_1

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2.sub
  L3_2 = 2
  L4_2 = -2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = " "
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L1_2 = ""
  L3_2 = A0_2
  L2_2 = A0_2.len
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = L2_2
  L5_2 = 2
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = A0_2
    L7_2 = A0_2.sub
    L9_2 = L6_2
    L10_2 = L6_2 + 1
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = tonumber
    L9_2 = L7_2
    L10_2 = 16
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L9_2 = string
      L9_2 = L9_2.char
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L10_2 = L1_2
      L11_2 = L9_2
      L1_2 = L10_2 .. L11_2
    end
  end
  L3_2 = L3_1
  L3_2 = L3_2.encode
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  return L3_2
end

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == 1 then
    L2_2 = L4_1
    L2_2 = L2_2.validateApple
    L3_2 = {}
    L4_2 = A0_2.receipt
    L3_2.encodedReceipt = L4_2
    L4_2 = A0_2.productId
    L3_2.productId = L4_2
    L4_2 = L7_1
    L3_2.listener = L4_2
    L3_2.testing = false
    L4_2 = A0_2.itemId
    L3_2.itemId = L4_2
    L2_2(L3_2)
  elseif A1_2 == 2 then
    L2_2 = L4_1
    L2_2 = L2_2.validateGoogle
    L3_2 = {}
    L4_2 = A0_2.receipt
    L3_2.receipt = L4_2
    L4_2 = A0_2.productId
    L3_2.productId = L4_2
    L4_2 = A0_2.encodedSignature
    L3_2.encodedSignature = L4_2
    L4_2 = A0_2.signature
    L3_2.signature = L4_2
    L4_2 = L7_1
    L3_2.listener = L4_2
    L3_2.testing = false
    L4_2 = A0_2.itemId
    L3_2.itemId = L4_2
    L2_2(L3_2)
  elseif A1_2 == 3 then
    L2_2 = L4_1
    L2_2 = L2_2.validateAmazon
    L3_2 = {}
    L4_2 = A0_2.receipt
    L3_2.receipt = L4_2
    L4_2 = A0_2.productId
    L3_2.productId = L4_2
    L4_2 = A0_2.amazonUser
    L3_2.amazonUser = L4_2
    L4_2 = L7_1
    L3_2.listener = L4_2
    L3_2.testing = false
    L4_2 = A0_2.itemId
    L3_2.itemId = L4_2
    L2_2(L3_2)
  elseif A1_2 == 4 then
    L2_2 = L4_1
    L2_2 = L2_2.validateOldGoogle
    L3_2 = {}
    L4_2 = A0_2.receipt
    L3_2.receipt = L4_2
    L4_2 = A0_2.productId
    L3_2.productId = L4_2
    L4_2 = A0_2.encodedSignature
    L3_2.encodedSignature = L4_2
    L4_2 = L7_1
    L3_2.listener = L4_2
    L3_2.testing = false
    L4_2 = A0_2.itemId
    L3_2.itemId = L4_2
    L2_2(L3_2)
  end
end

L6_1.validateReceipt = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  if A1_2 == 1 then
    L3_2 = L8_1
    L4_2 = A0_2.receipt
    L3_2 = L3_2(L4_2)
    L2_2.receipt = L3_2
    L4_2 = A0_2.productIdentifier
    L2_2.productId = L4_2
  elseif A1_2 == 2 then
    L3_2 = L3_1
    L3_2 = L3_2.encode
    L4_2 = A0_2.signature
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2.originalJson
    L2_2.receipt = L4_2
    L4_2 = A0_2.productIdentifier
    L2_2.productId = L4_2
    L2_2.encodedSignature = L3_2
    L4_2 = A0_2.signature
    L2_2.signature = L4_2
  elseif A1_2 == 3 then
    L3_2 = A0_2.receipt
    L2_2.receipt = L3_2
    L3_2 = A0_2.productIdentifier
    L2_2.productId = L3_2
    L3_2 = A0_2.userId
    L2_2.amazonUser = L3_2
  elseif A1_2 == 4 then
    L3_2 = L3_1
    L3_2 = L3_2.encode
    L4_2 = A0_2.signature
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2.receipt
    L2_2.receipt = L4_2
    L4_2 = A0_2.productIdentifier
    L2_2.productIdentifier = L4_2
    L2_2.encodedSignature = L3_2
  end
  L3_2 = L0_1
  L3_2 = L3_2.database
  L3_2 = L3_2.addReceipt
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = L6_1
  L3_2 = L3_2.validateReceipt
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end

L6_1.buyItem = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L0_1
  L3_2 = L3_2.database
  L3_2 = L3_2.getPlayerInformation
  L3_2 = L3_2()
  L4_2 = {}
  L5_2 = L1_1
  L5_2 = L5_2.registerGameNetworkPlayerId
  L5_2 = L5_2()
  L4_2.m = L5_2
  L5_2 = L3_2.token
  L4_2.a = L5_2
  L5_2 = L3_2.playerId
  L4_2.p = L5_2
  L4_2.r = A0_2
  L4_2.s = A1_2
  if A2_2 then
    L4_2.o = A2_2
  end
  L5_2 = L2_1
  L5_2 = L5_2.send
  L6_2 = L4_2
  L5_2(L6_2)
end

L6_1.registerGameNetworkPlayerId = L9_1

function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = {}
  L6_2 = L1_1
  L6_2 = L6_2.loginAppleGameCenter
  L6_2 = L6_2()
  L5_2.m = L6_2
  L5_2.p = A0_2
  L5_2.s = A1_2
  L5_2.t = A2_2
  L5_2.k = A3_2
  L5_2.l = A4_2
  L6_2 = system
  L6_2 = L6_2.getInfo
  L7_2 = "deviceID"
  L6_2 = L6_2(L7_2)
  L5_2.d = L6_2
  L6_2 = L0_1
  L6_2 = L6_2.config
  L6_2 = L6_2.platform
  L5_2.f = L6_2
  L6_2 = L2_1
  L6_2 = L6_2.send
  L7_2 = L5_2
  L6_2(L7_2)
end

L6_1.loginWithAppleGameCenter = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = {}
  L4_2 = L1_1
  L4_2 = L4_2.loginGooglePlayServices
  L4_2 = L4_2()
  L3_2.m = L4_2
  L3_2.p = A0_2
  L3_2.e = A2_2
  L3_2.t = A1_2
  L4_2 = system
  L4_2 = L4_2.getInfo
  L5_2 = "deviceID"
  L4_2 = L4_2(L5_2)
  L3_2.d = L4_2
  L4_2 = L0_1
  L4_2 = L4_2.config
  L4_2 = L4_2.platform
  L3_2.f = L4_2
  L4_2 = L2_1
  L4_2 = L4_2.send
  L5_2 = L3_2
  L4_2(L5_2)
end

L6_1.loginWithGooglePlayServices = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L1_1
  L2_2 = L2_2.getGooglePlayServicesId
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.t = A0_2
  L2_2 = L2_1
  L2_2 = L2_2.send
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.getGooglePlayServicesId = L9_1
L9_1 = L2_1.setCallback
L10_1 = L7_1
L9_1(L10_1)
L0_1.commHttps = L6_1
