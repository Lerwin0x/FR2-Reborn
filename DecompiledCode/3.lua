local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = display
L0_1 = L0_1.setStatusBar
L1_1 = display
L1_1 = L1_1.HiddenStatusBar
L0_1(L1_1)
L0_1 = system
L0_1 = L0_1.setIdleTimer
L1_1 = false
L0_1(L1_1)
L0_1 = system
L0_1 = L0_1.getInfo
L1_1 = "platform"
L0_1 = L0_1(L1_1)
L0_1 = "android" == L0_1
isAndroid = L0_1
L0_1 = system
L0_1 = L0_1.getInfo
L1_1 = "platform"
L0_1 = L0_1(L1_1)
L0_1 = "ios" == L0_1
isIOS = L0_1
L0_1 = system
L0_1 = L0_1.getInfo
L1_1 = "environment"
L0_1 = L0_1(L1_1)
L0_1 = "simulator" == L0_1
isSimulator = L0_1
L0_1 = "Brady Bunch Remastered"
L1_1 = isAndroid
if L1_1 then
  L0_1 = "BradyBunchRemastered"
  L1_1 = native
  L1_1 = L1_1.setProperty
  L2_1 = "androidSystemUiVisibility"
  L3_1 = "immersiveSticky"
  L1_1(L2_1, L3_1)
end
L1_1 = {}
L1_1.categoryBits = 1
L1_1.maskBits = 10
localPlayerCollisionFilter = L1_1
L1_1 = {}
L1_1.categoryBits = 16
L1_1.maskBits = 2
remotePlayerCollisionFilter = L1_1
L1_1 = {}
L1_1.categoryBits = 2
L1_1.maskBits = 21
obstacleFilter = L1_1
L1_1 = {}
L1_1.categoryBits = 4
L1_1.maskBits = 2
powerUpFilter = L1_1
L1_1 = {}
L1_1.categoryBits = 8
L1_1.maskBits = 1
sensorFilter = L1_1
L1_1 = audio
L1_1 = L1_1.supportsSessionProperty
if L1_1 == true then
  L1_1 = audio
  L1_1 = L1_1.setSessionProperty
  L2_1 = audio
  L2_1 = L2_1.MixMode
  L3_1 = audio
  L3_1 = L3_1.AmbientMixMode
  L1_1(L2_1, L3_1)
end
L1_1 = os
L1_1 = L1_1.time
L1_1 = L1_1()
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "lua.modules.debugMode"
L3_1(L4_1)
L3_1 = require
L4_1 = "configuration"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "plugin.notifications"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "localization"
L5_1 = L5_1(L6_1)
L2_1.localized = L5_1
L5_1 = require
L6_1 = "database"
L5_1 = L5_1(L6_1)
L2_1.database = L5_1
L5_1 = require
L6_1 = "lua.modules.tableUtil"
L5_1 = L5_1(L6_1)
L2_1.tableUtils = L5_1
L5_1 = require
L6_1 = "lua.modules.gameNetwork"
L5_1 = L5_1(L6_1)
L2_1.gameNetwork = L5_1
L5_1 = require
L6_1 = "lua.modules.buttonHelper"
L5_1(L6_1)
L5_1 = require
L6_1 = "lua.modules.textHelper"
L5_1(L6_1)
L5_1 = require
L6_1 = "lua.modules.debugHelper"
L5_1(L6_1)
L5_1 = require
L6_1 = "lua.modules.validateInput"
L5_1(L6_1)
L5_1 = require
L6_1 = "lua.modules.notification"
L5_1(L6_1)
L5_1 = require
L6_1 = "lua.modules.audio"
L5_1(L6_1)
L5_1 = require
L6_1 = "lua.modules.bounceWindow"
L5_1(L6_1)
L5_1 = require
L6_1 = "lua.network.communicationModule"
L5_1(L6_1)
L5_1 = require
L6_1 = "lua.network.communicationModuleHttps"
L5_1(L6_1)
L5_1 = require
L6_1 = "lua.modules.monsterConvert"
L5_1(L6_1)
L5_1 = require
L6_1 = "lua.overlays.customOverlay"
L5_1(L6_1)
L5_1 = require
L6_1 = "lua.modules.onboardingModule"
L5_1(L6_1)
L5_1 = require
L6_1 = "lua.modules.socialMediaPopup"
L5_1(L6_1)
L5_1 = require
L6_1 = "lua.modules.seasonalModule"
L5_1(L6_1)
L5_1 = require
L6_1 = "lua.modules.backgroundModule"
L5_1(L6_1)
L5_1 = require
L6_1 = "lua.modules.clans.clanMembers"
L5_1(L6_1)
L5_1 = require
L6_1 = "lua.modules.colors"
L5_1(L6_1)
L5_1 = require
L6_1 = "lua.modules.replayKitHelper"
L5_1(L6_1)

function L5_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  if L0_2 then
  end
end

function L6_1()
  local L0_2, L1_2
  L0_2 = L2_1
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.comm
    if L0_2 then
      L0_2 = L2_1
      L0_2 = L0_2.comm
      L0_2 = L0_2.stopTCPSocial
      L0_2()
      L0_2 = require
      L1_2 = "lua.network.tcpClient"
      L0_2 = L0_2(L1_2)
      L1_2 = L0_2.stopTCPClient
      L1_2()
    end
  end
end

function L7_1()
  local L0_2, L1_2
  L0_2 = L2_1
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.comm
    if L0_2 then
      L0_2 = L2_1
      L0_2 = L0_2.comm
      L0_2 = L0_2.stopTCPSocial
      L0_2()
    end
  end
end

function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.action
  if "clicked" == L1_2 then
    L1_2 = L2_1
    L1_2 = L1_2.getSceneName
    L2_2 = "current"
    L1_2 = L1_2(L2_2)
    L2_2 = L2_1
    L2_2 = L2_2.gotoScene
    L3_2 = "lua.scenes.playMenu"
    L2_2(L3_2)
    L2_2 = L2_1
    L2_2 = L2_2.removeScene
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = L2_1
    L2_2.suspendAlert = false
  end
end

function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L2_1
  L0_2 = L0_2.suspendAlert
  if not L0_2 then
    L0_2 = L2_1
    L0_2.suspendAlert = true
    L0_2 = native
    L0_2 = L0_2.showAlert
    L1_2 = L2_1
    L1_2 = L1_2.localized
    L1_2 = L1_2.get
    L2_2 = "Disconnected"
    L1_2 = L1_2(L2_2)
    L2_2 = L2_1
    L2_2 = L2_2.localized
    L2_2 = L2_2.get
    L3_2 = "YouSuspended"
    L2_2 = L2_2(L3_2)
    L3_2 = {}
    L4_2 = L2_1
    L4_2 = L4_2.localized
    L4_2 = L4_2.get
    L5_2 = "Ok"
    L4_2, L5_2 = L4_2(L5_2)
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L4_2 = L8_1
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
end

function L10_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L2_1
  L0_2 = L0_2.analytics
  L0_2 = L0_2.SessionData
  L0_2 = L0_2.createdUserThisSession
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.gamesPlayedThisSession
    L1_2 = L2_1
    L1_2 = L1_2.analytics
    L1_2 = L1_2.SessionData
    L1_2 = L1_2.practiceGamesPlayed
    if not L1_2 then
      L1_2 = 0
    end
    L0_2 = L0_2 + L1_2
    L1_2 = L2_1
    L1_2 = L1_2.analytics
    L1_2 = L1_2.addDesignEvent
    L2_2 = "FirstSession:TotalGamesPlayedThisSession"
    L3_2 = L0_2
    L1_2(L2_2, L3_2)
    L1_2 = L2_1
    L1_2 = L1_2.analytics
    L1_2 = L1_2.addDesignEvent
    L2_2 = "FirstSession:OnlineGamesPlayed"
    L3_2 = L2_1
    L3_2 = L3_2.gamesPlayedThisSession
    L1_2(L2_2, L3_2)
    L1_2 = L2_1
    L1_2 = L1_2.analytics
    L1_2 = L1_2.addDesignEvent
    L2_2 = "FirstSession:PracticeGamesPlayed"
    L3_2 = L2_1
    L3_2 = L3_2.analytics
    L3_2 = L3_2.SessionData
    L3_2 = L3_2.practiceGamesPlayed
    L1_2(L2_2, L3_2)
    L1_2 = L2_1
    L1_2 = L1_2.analytics
    L1_2 = L1_2.addDesignEvent
    L2_2 = "FirstSession:QuickPlayGamesPlayed"
    L3_2 = L2_1
    L3_2 = L3_2.analytics
    L3_2 = L3_2.SessionData
    L3_2 = L3_2.quickPlayGamesPlayed
    L1_2(L2_2, L3_2)
    L1_2 = L2_1
    L1_2 = L1_2.analytics
    L1_2 = L1_2.addDesignEvent
    L2_2 = "FirstSession:CustomGamesPlayed"
    L3_2 = L2_1
    L3_2 = L3_2.analytics
    L3_2 = L3_2.SessionData
    L3_2 = L3_2.customGamesPlayed
    L1_2(L2_2, L3_2)
    L1_2 = L2_1
    L1_2 = L1_2.analytics
    L1_2 = L1_2.addDesignEvent
    L2_2 = "FirstSession:2v2GamesPlayed"
    L3_2 = L2_1
    L3_2 = L3_2.analytics
    L3_2 = L3_2.SessionData
    L3_2 = L3_2.twoVtwoGamesPlayed
    L1_2(L2_2, L3_2)
  end
  L0_2 = L2_1
  L0_2 = L0_2.analytics
  L0_2 = L0_2.addDesignEvent
  L1_2 = "EndSession:OnlineGamesPlayed"
  L2_2 = L2_1
  L2_2 = L2_2.gamesPlayedThisSession
  L0_2(L1_2, L2_2)
  L0_2 = L2_1
  L0_2 = L0_2.analytics
  L0_2 = L0_2.addDesignEvent
  L1_2 = "EndSession:PracticeGamesPlayed"
  L2_2 = L2_1
  L2_2 = L2_2.analytics
  L2_2 = L2_2.SessionData
  L2_2 = L2_2.practiceGamesPlayed
  L0_2(L1_2, L2_2)
  L0_2 = L2_1
  L0_2 = L0_2.analytics
  L0_2 = L0_2.addDesignEvent
  L1_2 = "EndSession:QuickPlayGamesPlayed"
  L2_2 = L2_1
  L2_2 = L2_2.analytics
  L2_2 = L2_2.SessionData
  L2_2 = L2_2.quickPlayGamesPlayed
  L0_2(L1_2, L2_2)
  L0_2 = L2_1
  L0_2 = L0_2.analytics
  L0_2 = L0_2.addDesignEvent
  L1_2 = "EndSession:CustomGamesPlayed"
  L2_2 = L2_1
  L2_2 = L2_2.analytics
  L2_2 = L2_2.SessionData
  L2_2 = L2_2.customGamesPlayed
  L0_2(L1_2, L2_2)
  L0_2 = L2_1
  L0_2 = L0_2.analytics
  L0_2 = L0_2.addDesignEvent
  L1_2 = "EndSession:2v2GamesPlayed"
  L2_2 = L2_1
  L2_2 = L2_2.analytics
  L2_2 = L2_2.SessionData
  L2_2 = L2_2.twoVtwoGamesPlayed
  L0_2(L1_2, L2_2)
  L0_2 = L2_1
  L0_2 = L0_2.analytics
  L0_2 = L0_2.endSession
  L0_2()
end

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.type
  if L1_2 == "applicationStart" then
  else
    L1_2 = A0_2.type
    if L1_2 == "applicationExit" then
      L1_2 = L6_1
      L1_2()
      L1_2 = L5_1
      L1_2()
      L1_2 = L2_1
      L1_2 = L1_2.notification
      L1_2 = L1_2.clean
      L1_2()
      L1_2 = L10_1
      L1_2()
      L1_2 = Runtime
      L2_2 = L1_2
      L1_2 = L1_2.removeEventListener
      L3_2 = "system"
      L4_2 = onSystem
      L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = A0_2.type
      if L1_2 == "applicationSuspend" then
        L1_2 = os
        L1_2 = L1_2.time
        L1_2 = L1_2()
        L1_1 = L1_2
        L1_2 = L2_1
        L1_2 = L1_2.getSceneName
        L2_2 = "current"
        L1_2 = L1_2(L2_2)
        if L1_2 == "lua.scenes.marketplace" then
          L1_2 = L2_1
          L1_2 = L1_2.comm
          L1_2 = L1_2.sendHeartbeat
          L1_2()
          L1_2 = print
          L2_2 = "keep connection open"
          L1_2(L2_2)
        else
          L1_2 = L2_1
          L1_2 = L1_2.data
          L1_2 = L1_2.openURL
          if L1_2 then
            L1_2 = L2_1
            L1_2 = L1_2.comm
            L1_2 = L1_2.sendHeartbeat
            L1_2()
            L1_2 = print
            L2_2 = "open link, keep connection open"
            L1_2(L2_2)
          else
            L1_2 = L2_1
            L1_2 = L1_2.adsTable
            L1_2 = L1_2.active
            if L1_2 then
              L1_2 = L2_1
              L1_2 = L1_2.comm
              L1_2 = L1_2.sendHeartbeat
              L1_2()
              L1_2 = print
              L2_2 = "is an ad, keep connection open"
              L1_2(L2_2)
            else
              L1_2 = L2_1
              L1_2 = L1_2.getSceneName
              L2_2 = "overlay"
              L1_2 = L1_2(L2_2)
              if L1_2 then
                L1_2 = L2_1
                L1_2 = L1_2.getSceneName
                L2_2 = "overlay"
                L1_2 = L1_2(L2_2)
                if L1_2 == "lua.overlays.newsfeed" then
                  L1_2 = L2_1
                  L1_2 = L1_2.comm
                  L1_2 = L1_2.sendHeartbeat
                  L1_2()
                  L1_2 = print
                  L2_2 = "Opening link form newsfeed"
                  L1_2(L2_2)
              end
              else
                L1_2 = L2_1
                L1_2 = L1_2.gameNetwork
                L1_2 = L1_2.isDoingGameNetworkWork
                L1_2 = L1_2()
                if L1_2 then
                  L1_2 = L2_1
                  L1_2 = L1_2.comm
                  L1_2 = L1_2.sendHeartbeat
                  L1_2()
                  L1_2 = print
                  L2_2 = "Opening game network. Keep connection."
                  L1_2(L2_2)
                else
                  L1_2 = L2_1
                  L1_2 = L1_2.getSceneName
                  L2_2 = "current"
                  L1_2 = L1_2(L2_2)
                  if L1_2 ~= "lua.scenes.gamePlay" then
                    L1_2 = L6_1
                    L1_2()
                    L1_2 = L10_1
                    L1_2()
                  else
                    L1_2 = L7_1
                    L1_2()
                    L1_2 = L10_1
                    L1_2()
                  end
                end
              end
            end
          end
        end
        L1_2 = L2_1
        L1_2 = L1_2.notification
        L1_2 = L1_2.queue3DayNotification
        L1_2()
        L1_2 = L2_1
        L1_2 = L1_2.notification
        L1_2 = L1_2.queue7DayNotification
        L1_2()
        L1_2 = L2_1
        L1_2 = L1_2.notification
        L1_2 = L1_2.queueClanSupporterNotification
        L1_2()
      else
        L1_2 = A0_2.type
        if L1_2 == "applicationResume" then
          L1_2 = L2_1
          L1_2 = L1_2.comm
          if L1_2 then
            L1_2 = L2_1
            L1_2 = L1_2.comm
            L1_2 = L1_2.isOnline
            L1_2 = L1_2()
            if L1_2 then
              L1_2 = L2_1
              L1_2 = L1_2.comm
              L1_2 = L1_2.sendHeartbeat
              L1_2()
            end
            L1_2 = L2_1
            L1_2 = L1_2.getSceneName
            L2_2 = "current"
            L1_2 = L1_2(L2_2)
            if L1_2 == "lua.scenes.lobbyQuickPlay" then
              L1_2 = L9_1
              L1_2()
            else
              L1_2 = L2_1
              L1_2 = L1_2.getSceneName
              L2_2 = "current"
              L1_2 = L1_2(L2_2)
              if L1_2 == "lua.scenes.lobbyCustomPlay" then
                L1_2 = L9_1
                L1_2()
              end
            end
          end
          L1_2 = 600
          L2_2 = L1_1
          if L2_2 then
            L2_2 = os
            L2_2 = L2_2.time
            L2_2 = L2_2()
            L3_2 = L1_1
            L2_2 = L2_2 - L3_2
            if L1_2 > L2_2 then
              L2_2 = L2_1
              L2_2 = L2_2.adsTable
              L2_2 = L2_2.active
              if L2_2 then
                goto lbl_199
              end
              L2_2 = L2_1
              L2_2 = L2_2.data
              L2_2 = L2_2.openURL
              if L2_2 then
                goto lbl_199
              end
              L2_2 = L2_1
              L2_2 = L2_2.getSceneName
              L3_2 = "current"
              L2_2 = L2_2(L3_2)
              if L2_2 == "lua.scenes.marketplace" then
            end
          end
          else
            L2_2 = L2_1
            L2_2 = L2_2.analytics
            L2_2 = L2_2.startSession
            L2_2()
          end
          ::lbl_199::
          L2_2 = isAndroid
          if L2_2 then
            L2_2 = native
            L2_2 = L2_2.setProperty
            L3_2 = "androidSystemUiVisibility"
            L4_2 = "immersiveSticky"
            L2_2(L3_2, L4_2)
            L2_2 = require
            L3_2 = "lua.iap.inAppPurchase"
            L2_2 = L2_2(L3_2)
            L3_2 = L2_2.getStoreType
            L3_2 = L3_2()
            if L3_2 == 2 then
              L3_2 = L1_1
              if L3_2 then
                L3_2 = L1_1
                L3_2 = L3_2 + 300
                L4_2 = os
                L4_2 = L4_2.time
                L4_2 = L4_2()
                if L3_2 < L4_2 then
                  L3_2 = L2_2.initInAppPurchase
                  L3_2()
                end
              end
            end
          end
          L2_2 = L2_1
          L2_2 = L2_2.notification
          L2_2 = L2_2.clearLocalPushNotificationQueue
          L2_2()
          L2_2 = L2_1
          L2_2 = L2_2.data
          L2_2.openURL = false
        end
      end
    end
  end
end

L12_1 = Runtime
L13_1 = L12_1
L12_1 = L12_1.addEventListener
L14_1 = "system"
L15_1 = L11_1
L12_1(L13_1, L14_1, L15_1)
L12_1 = isAndroid
if L12_1 then
  L12_1 = require
  L13_1 = "lua.modules.androidBackButton"
  L12_1 = L12_1(L13_1)
  androidLogic = L12_1
  L12_1 = androidLogic
  L12_1 = L12_1.startAndroidBackButton
  L12_1()
end

function L12_1()
  local L0_2, L1_2, L2_2
  L0_2 = L2_1
  L1_2 = {}
  L0_2.data = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L1_2 = L0_1
  L0_2.font = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L1_2 = L2_1
  L1_2 = L1_2.config
  L1_2 = L1_2.version
  L0_2.version = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L1_2 = L2_1
  L1_2 = L1_2.config
  L1_2 = L1_2.localVersion
  L0_2.localVersion = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L1_2 = {}
  L0_2.sounds = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.sounds
  L1_2 = audio
  L1_2 = L1_2.loadSound
  L2_2 = "sound/sfx_button_press.wav"
  L1_2 = L1_2(L2_2)
  L0_2.buttonSound = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L1_2 = {}
  L0_2.animations = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.animations
  L1_2 = {}
  L0_2.avatar = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.animations
  L1_2 = {}
  L0_2.boots = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.animations
  L1_2 = {}
  L0_2.item = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.animations
  L1_2 = {}
  L0_2.hat = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.animations
  L1_2 = {}
  L0_2.face = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.animations
  L1_2 = {}
  L0_2.neck = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2.messageOfTheDay = ""
  L0_2 = L2_1
  L0_2 = L0_2.data
  L1_2 = {}
  L0_2.monsterInMemory = L1_2
  L0_2 = L2_1
  L1_2 = require
  L2_2 = "analyticsV2"
  L1_2 = L1_2(L2_2)
  L0_2.analytics = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.database
  L0_2 = L0_2.initPlayerVariables
  L0_2()
  L0_2 = L2_1
  L0_2 = L0_2.database
  L0_2 = L0_2.getViolence
  L0_2()
  L0_2 = L2_1
  L1_2 = {}
  L0_2.errorTable = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.errorTable
  L0_2.showServerError = true
  L0_2 = L2_1
  L0_2.suspendAlert = false
  L0_2 = L2_1
  L0_2.wifiOn = true
  L0_2 = L2_1
  
  function L1_2()
    local L0_3, L1_3
  end
  
  L0_2.facebookCallback = L1_2
  L0_2 = L2_1
  L1_2 = {}
  L0_2.onlineFriends = L1_2
  L0_2 = L2_1
  L0_2.gameType = 0
  L0_2 = L2_1
  L1_2 = {}
  L0_2.gameInvites = L1_2
  L0_2 = L2_1
  L1_2 = require
  L2_2 = "lua.network.tcpClient"
  L1_2 = L1_2(L2_2)
  L0_2.tcpClient = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.database
  L0_2 = L0_2.getPlayerInformation
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = L2_1
    L0_2.loggedInThisSession = false
    L0_2 = L2_1
    L0_2 = L0_2.gotoScene
    L1_2 = "lua.scenes.loadingScene"
    L0_2(L1_2)
  else
    L0_2 = L2_1
    L0_2 = L0_2.gotoScene
    L1_2 = "lua.scenes.startScreen"
    L0_2(L1_2)
  end
  L0_2 = true
  return L0_2
end

L13_1 = L12_1
L13_1()
L13_1 = (...)
if L13_1 then
  L14_1 = L13_1.notification
  if L14_1 then
    L14_1 = L2_1.notification
    L14_1 = L14_1.notificationListener
    L15_1 = L13_1.notification
    L14_1(L15_1)
  end
end
