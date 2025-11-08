local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "lua.modules.dropdownHelper"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "lua.modules.assetLoader"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "lua.network.tcpMessageFormat"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "lua.network.tcpSocial"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "lua.ads.videoModule"
L5_1 = L5_1(L6_1)
L6_1 = {}

function L7_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L0_2 = L0_2.comm
  if L0_2 then
    L0_2 = L0_1
    L0_2 = L0_2.playerInfo
    if L0_2 then
      L0_2 = L0_1
      L0_2 = L0_2.tcpSocial
      if L0_2 then
        L0_2 = L0_1
        L0_2 = L0_2.comm
        L0_2 = L0_2.stopTCPSocial
        L0_2()
      end
      L0_2 = L0_1
      L0_2 = L0_2.tcpClient
      if L0_2 then
        L0_2 = L0_1
        L0_2 = L0_2.tcpClient
        L0_2 = L0_2.stopTCPClient
        L0_2()
      end
    end
  end
  L0_2 = L0_1
  L0_2 = L0_2.getSceneName
  L1_2 = "current"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= "lua.scenes.mainMenu" then
    L1_2 = L0_1
    L1_2 = L1_2.removeScene
    L2_2 = "lua.scenes.mainMenu"
    L1_2(L2_2)
  end
  L1_2 = L0_1
  L1_2 = L1_2.gotoScene
  L2_2 = "lua.scenes.startScreen"
  L1_2(L2_2)
  L1_2 = L0_1
  L1_2 = L1_2.removeScene
  L2_2 = L0_2
  L1_2(L2_2)
end

function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = native
  L0_2 = L0_2.showAlert
  L1_2 = L0_1
  L1_2 = L1_2.localized
  L1_2 = L1_2.get
  L2_2 = "LoggingOut"
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1
  L2_2 = L2_2.localized
  L2_2 = L2_2.get
  L3_2 = "AccountDevice"
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = L0_1
  L4_2 = L4_2.localized
  L4_2 = L4_2.get
  L5_2 = "Ok"
  L4_2, L5_2 = L4_2(L5_2)
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = L7_1
  L0_2(L1_2, L2_2, L3_2, L4_2)
end

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.p
  L2_2 = L0_1
  L2_2 = L2_2.clanUtils
  L2_2 = L2_2.getClanMember
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.name
    A0_2.username = L3_2
    L4_2 = L1_1
    L4_2 = L4_2.showGameInvite
    L5_2 = A0_2
    L4_2(L5_2)
  else
    L3_2 = L0_1
    L3_2 = L3_2.database
    L3_2 = L3_2.getFriend
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.n
    A0_2.username = L3_2
    L4_2 = L1_1
    L4_2 = L4_2.showGameInvite
    L5_2 = A0_2
    L4_2(L5_2)
  end
end

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = "elite"
  L3_2 = "diamond"
  L4_2 = "gold"
  L5_2 = "silver"
  L6_2 = "bronze"
  L7_2 = "wood"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = L1_2[L2_2]
  if not L2_2 then
    L2_2 = "none"
  end
  return L2_2
end

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.r
  if L1_2 then
    L1_2 = print
    L2_2 = "WARNING: got error in tcpReceiveFunction type "
    L3_2 = A0_2.r
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2.m
  L2_2 = L3_1
  L2_2 = L2_2.challenge
  L2_2 = L2_2()
  if L1_2 == L2_2 then
    L1_2 = A0_2.s
    if L1_2 == nil then
      A0_2.s = "1"
    end
    L1_2 = A0_2.s
    L2_2 = A0_2.v
    L3_2 = L0_1
    L3_2 = L3_2.config
    L4_2 = tonumber
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L3_2.liveServerVersion = L4_2
    L3_2 = L0_1
    L3_2 = L3_2.config
    L3_2 = L3_2.localVersion
    if L2_2 < L3_2 then
      L3_2 = print
      L4_2 = "WARNING: live server version is lower the device version"
      L3_2(L4_2)
    end
    L3_2 = tonumber
    L4_2 = L0_1
    L4_2 = L4_2.config
    L4_2 = L4_2.localVersion
    L3_2 = L3_2(L4_2)
    L4_2 = tonumber
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    if L3_2 >= L4_2 then
      L3_2 = L0_1
      L3_2 = L3_2.data
      L3_2.wrongVersion = false
      L3_2 = L2_1
      L3_2 = L3_2.checksumProcedure
      L4_2 = A0_2.c
      L5_2 = A0_2.p
      L3_2(L4_2, L5_2)
      L3_2 = L4_1
      L3_2 = L3_2.sendConnectMessage
      L3_2()
      L3_2 = tonumber
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = tonumber
      L5_2 = L0_1
      L5_2 = L5_2.config
      L5_2 = L5_2.localVersion
      L4_2 = L4_2(L5_2)
      if L3_2 > L4_2 then
        L3_2 = L0_1
        L3_2 = L3_2.data
        L3_2.updateAvailable = true
      else
        L3_2 = L0_1
        L3_2 = L3_2.data
        L3_2.updateAvailable = false
      end
    else
      L3_2 = L0_1
      L3_2 = L3_2.data
      L3_2.wrongVersion = true
      L3_2 = L0_1
      L3_2 = L3_2.gotoScene
      L4_2 = "lua.scenes.updateScene"
      L3_2(L4_2)
    end
  else
    L1_2 = A0_2.m
    L2_2 = L3_1
    L2_2 = L2_2.loggedInElsewhere
    L2_2 = L2_2()
    if L1_2 == L2_2 then
      L1_2 = L0_1
      L1_2 = L1_2.config
      L1_2.invalidUser = true
      L1_2 = L8_1
      L1_2()
    else
      L1_2 = A0_2.m
      L2_2 = L3_1
      L2_2 = L2_2.authenticate
      L2_2 = L2_2()
      if L1_2 == L2_2 then
        L1_2 = L0_1
        L1_2 = L1_2.config
        L1_2.invalidUser = false
        L1_2 = A0_2.r
        if L1_2 then
          L1_2 = A0_2.r
          if L1_2 == 43 then
            L1_2 = L0_1
            L1_2 = L1_2.cleanOldOverlay
            L1_2()
            L1_2 = L0_1
            L1_2 = L1_2.config
            L1_2.invalidUser = true
            L1_2 = L0_1
            L1_2 = L1_2.createCustomOverlay
            L2_2 = 11
            L1_2(L2_2)
            L1_2 = L0_1
            L1_2 = L1_2.comm
            L1_2 = L1_2.stopTCPSocial
            L1_2()
            L1_2 = L0_1
            L1_2 = L1_2.facebook
            if L1_2 then
              L1_2 = L0_1
              L1_2 = L1_2.facebook
              L1_2 = L1_2.stopDelayedTimer
              L1_2()
            end
            L1_2 = L0_1
            L1_2 = L1_2.database
            L1_2 = L1_2.reset
            L1_2()
            L1_2 = L0_1
            L1_2 = L1_2.getSceneName
            L2_2 = "current"
            L1_2 = L1_2(L2_2)
            L2_2 = L0_1
            L2_2 = L2_2.gotoScene
            L3_2 = "lua.scenes.startScreen"
            L2_2(L3_2)
            if L1_2 == "lua.scenes.loadingScene" then
              L2_2 = L0_1
              L2_2 = L2_2.removeScene
              L3_2 = "lua.scenes.loadingScene"
              L2_2(L3_2)
            else
              L2_2 = L0_1
              L2_2 = L2_2.removeScene
              L3_2 = "lua.scenes.mainMenu"
              L2_2(L3_2)
            end
          else
            L1_2 = A0_2.r
            if L1_2 == 72 then
              L1_2 = L0_1
              L1_2 = L1_2.cleanOldOverlay
              L1_2()
              L1_2 = L0_1
              L1_2 = L1_2.createCustomOverlay
              L2_2 = 36
              L3_2 = nil
              L4_2 = A0_2.d
              L1_2(L2_2, L3_2, L4_2)
              L1_2 = L0_1
              L1_2 = L1_2.comm
              L1_2 = L1_2.stopTCPSocial
              L1_2()
              L1_2 = L0_1
              L1_2 = L1_2.facebook
              if L1_2 then
                L1_2 = L0_1
                L1_2 = L1_2.facebook
                L1_2 = L1_2.stopDelayedTimer
                L1_2()
              end
            end
          end
          return
        end
        L1_2 = A0_2.ba
        if L1_2 then
          L1_2 = L0_1
          L1_2.logFPS = true
          L1_2 = L0_1
          L2_2 = A0_2.ba
          L1_2.criticalFPS = L2_2
        end
        L1_2 = A0_2.gi
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.database
          L1_2 = L1_2.setMysteryBoxes
          L2_2 = A0_2.gi
          L1_2(L2_2)
        end
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
        L1_2 = L0_1
        L1_2 = L1_2.database
        L1_2 = L1_2.updatePlayerInfo
        L2_2 = A0_2.u
        L3_2 = A0_2.t
        L1_2(L2_2, L3_2)
        L1_2 = L0_1
        L1_2 = L1_2.database
        L1_2 = L1_2.setAvatarData
        L2_2 = A0_2.fa
        L3_2 = true
        L1_2(L2_2, L3_2)
        L1_2 = A0_2.b
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.data
          L1_2 = L1_2.playerInfo
          L2_2 = A0_2.b
          L1_2.email = L2_2
        end
        L1_2 = A0_2.fb
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.data
          L1_2 = L1_2.playerInfo
          L2_2 = A0_2.fb
          L1_2.spins = L2_2
        end
        L1_2 = A0_2.fc
        if L1_2 then
          L1_2 = L0_1
          L2_2 = A0_2.fc
          L1_2.gamesPlayed = L2_2
        end
        L1_2 = A0_2.fo
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.database
          L1_2 = L1_2.setPowerupSkin
          L2_2 = A0_2.fo
          L1_2(L2_2)
        end
        L1_2 = A0_2.fp
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.data
          L1_2 = L1_2.playerInfo
          L2_2 = tonumber
          L3_2 = A0_2.fp
          L2_2 = L2_2(L3_2)
          L1_2.showcase = L2_2
        end
        L1_2 = A0_2.fi
        if L1_2 then
          L1_2 = A0_2.fj
          if L1_2 then
            L1_2 = A0_2.fj
            L2_2 = {}
            L3_2 = #L2_2
            L3_2 = L3_2 + 1
            L4_2 = A0_2.fi
            L2_2[L3_2] = L4_2
            L3_2 = 1
            L4_2 = 6
            L5_2 = 1
            for L6_2 = L3_2, L4_2, L5_2 do
              L7_2 = #L2_2
              L7_2 = L7_2 + 1
              L8_2 = {}
              L2_2[L7_2] = L8_2
            end
            L3_2 = L0_1
            L3_2.consecutiveLoginsCount = L1_2
            L3_2 = L0_1
            L3_2.consecutiveLoginsFormatted = L2_2
          end
        end
        L1_2 = A0_2.fy
        if L1_2 then
          L1_2 = A0_2.fy
          L1_2 = #L1_2
          if 0 < L1_2 then
            L1_2 = 1
            L2_2 = A0_2.fy
            L2_2 = #L2_2
            L3_2 = 1
            for L4_2 = L1_2, L2_2, L3_2 do
              L5_2 = A0_2.fy
              L5_2 = L5_2[L4_2]
              if L5_2 == "a" then
                L5_2 = L0_1
                L5_2 = L5_2.data
                L5_2.showMarketPopup = true
              end
              L5_2 = A0_2.fy
              L5_2 = L5_2[L4_2]
              if L5_2 == "b" then
                L5_2 = L0_1
                L5_2 = L5_2.data
                L5_2.showMarketIAPOfferPopup = true
              end
            end
          end
        end
        L1_2 = L0_1
        L1_2 = L1_2.database
        L1_2 = L1_2.setFriends
        L2_2 = A0_2.f
        L1_2(L2_2)
        L1_2 = L0_1
        L1_2 = L1_2.database
        L1_2 = L1_2.setFriendRequests
        L2_2 = A0_2.q
        L1_2(L2_2)
        L1_2 = L0_1
        L1_2 = L1_2.database
        L1_2 = L1_2.setItems
        L2_2 = A0_2.i
        L1_2(L2_2)
        L1_2 = L0_1
        L1_2 = L1_2.database
        L1_2 = L1_2.setMoney
        L2_2 = A0_2.d
        L1_2(L2_2)
        L1_2 = A0_2.h
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.database
          L1_2 = L1_2.setGem
          L2_2 = A0_2.h
          L1_2(L2_2)
        end
        L1_2 = A0_2.o
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.database
          L2_2 = A0_2.o
          L1_2.salesItem = L2_2
          L1_2 = pairs
          L2_2 = L0_1
          L2_2 = L2_2.database
          L2_2 = L2_2.salesItem
          L1_2, L2_2, L3_2 = L1_2(L2_2)
          for L4_2, L5_2 in L1_2, L2_2, L3_2 do
            L6_2 = tonumber
            L7_2 = L5_2.y
            L6_2 = L6_2(L7_2)
            L7_2 = system
            L7_2 = L7_2.getTimer
            L7_2 = L7_2()
            L7_2 = L7_2 / 1000
            L6_2 = L6_2 + L7_2
            L5_2.y = L6_2
          end
        end
        L1_2 = A0_2.ff
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.database
          L2_2 = A0_2.ff
          L1_2.seasonalItem = L2_2
          L1_2 = pairs
          L2_2 = L0_1
          L2_2 = L2_2.database
          L2_2 = L2_2.seasonalItem
          L1_2, L2_2, L3_2 = L1_2(L2_2)
          for L4_2, L5_2 in L1_2, L2_2, L3_2 do
            L6_2 = tonumber
            L7_2 = L5_2.y
            L6_2 = L6_2(L7_2)
            L7_2 = system
            L7_2 = L7_2.getTimer
            L7_2 = L7_2()
            L7_2 = L7_2 / 1000
            L6_2 = L6_2 + L7_2
            L5_2.y = L6_2
          end
        end
        L1_2 = A0_2.aq
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.database
          L2_2 = A0_2.aq
          L1_2.promoSale = L2_2
        end
        L1_2 = A0_2.sa
        if L1_2 then
          L1_2 = A0_2.sb
          if L1_2 then
            L1_2 = A0_2.sc
            if L1_2 then
              L1_2 = L0_1
              L1_2 = L1_2.database
              L1_2 = L1_2.setPushEnableStatus
              L2_2 = A0_2.sa
              L3_2 = A0_2.sb
              L4_2 = A0_2.sc
              L1_2(L2_2, L3_2, L4_2)
            end
          end
        end
        L1_2 = A0_2.v
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.config
          L1_2 = L1_2.useTestAdInfo
          if L1_2 then
            L1_2 = print
            L2_2 = "Warning: Using test ad data."
            L1_2(L2_2)
            L1_2 = {}
            L1_2.v = 0.1
            L1_2.vi = 0.1
            L1_2.d = 10
            L1_2.dv2 = 0
            L1_2.dvi = 0
            L1_2.di = 0
            L1_2.t = 3600
            A0_2.v = L1_2
          end
          L1_2 = L0_1
          L1_2 = L1_2.adsTable
          L1_2.use = true
          L1_2 = A0_2.v
          L1_2 = L1_2.t
          if L1_2 then
            L1_2 = L0_1
            L1_2 = L1_2.adsTable
            L2_2 = A0_2.v
            L2_2 = L2_2.t
            L1_2.refreshRate = L2_2
          end
          L1_2 = isAndroid
          if L1_2 then
            L1_2 = L0_1
            L1_2 = L1_2.adsTable
            L1_2 = L1_2.chances
            L2_2 = A0_2.v
            L2_2 = L2_2.fia
            L1_2.fyberAdChance = L2_2
          else
            L1_2 = L0_1
            L1_2 = L1_2.adsTable
            L1_2 = L1_2.chances
            L2_2 = A0_2.v
            L2_2 = L2_2.fii
            L1_2.fyberAdChance = L2_2
          end
          L1_2 = L0_1
          L1_2 = L1_2.adsTable
          L2_2 = A0_2.v
          L2_2 = L2_2.p
          L1_2.postGameVideo = L2_2
          L1_2 = {}
          L2_2 = isAndroid
          if L2_2 then
            L2_2 = A0_2.v
            L2_2 = L2_2.fya
            L1_2.fy = L2_2
          else
            L2_2 = A0_2.v
            L2_2 = L2_2.fyi
            L1_2.fy = L2_2
          end
          L2_2 = require
          L3_2 = "lua.ads.videoModule"
          L2_2 = L2_2(L3_2)
          L3_2 = L2_2.setChance
          L4_2 = L1_2
          L3_2(L4_2)
          L3_2 = L2_2.init
          L3_2()
          L3_2 = print
          L4_2 = "set ad chances"
          L3_2(L4_2)
          L3_2 = require
          L4_2 = "lua.ads.adModule"
          L3_2 = L3_2(L4_2)
          L3_2 = L3_2.init
          L3_2()
        end
        L1_2 = A0_2.fq
        if L1_2 then
          L1_2 = L0_1
          L2_2 = A0_2.fq
          L1_2.chestLikelihoods = L2_2
        end
        L1_2 = A0_2.fd
        if L1_2 then
          L1_2 = A0_2.fe
          if L1_2 then
            L1_2 = L0_1
            L1_2 = L1_2.todayChallenges
            L2_2 = A0_2.fd
            L1_2.data = L2_2
            L1_2 = L0_1
            L1_2 = L1_2.todayChallenges
            L2_2 = A0_2.fe
            L1_2.time = L2_2
            L1_2 = L0_1
            L1_2 = L1_2.getSceneName
            L2_2 = "current"
            L1_2 = L1_2(L2_2)
            if L1_2 ~= "lua.scenes.loadingScene" then
              L1_2 = {}
              L1_2.name = "showTodaysChallenges"
              L2_2 = Runtime
              L3_2 = L2_2
              L2_2 = L2_2.dispatchEvent
              L4_2 = L1_2
              L2_2(L3_2, L4_2)
            end
          end
        end
        L1_2 = A0_2.an
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.data
          L2_2 = A0_2.an
          L1_2.achievementToClaim = L2_2
        end
        L1_2 = A0_2.ap
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.data
          L2_2 = A0_2.ap
          L1_2.dailyToClaim = L2_2
        end
        L1_2 = A0_2.ar
        if L1_2 then
          L1_2 = L0_1
          L2_2 = tonumber
          L3_2 = A0_2.ar
          L2_2 = L2_2(L3_2)
          L1_2.videosLeft = L2_2
          L1_2 = 10
          L2_2 = L0_1
          L2_2 = L2_2.gameConfig
          if L2_2 then
            L2_2 = L0_1
            L2_2 = L2_2.gameConfig
            L2_2 = L2_2.getRewardedVideosPerDay
            L2_2 = L2_2()
            L1_2 = L2_2
          end
          L2_2 = L0_1
          L2_2 = L2_2.videosLeft
          if L2_2 == L1_2 then
            L2_2 = L0_1
            L2_2 = L2_2.debugger
            L2_2 = L2_2.debugPrint
            L3_2 = "rewardedChests"
            L4_2 = "Reset chest on login."
            L2_2(L3_2, L4_2)
            L2_2 = L0_1
            L2_2 = L2_2.database
            L2_2 = L2_2.resetRewardedChestPoolData
            L2_2()
            L2_2 = L0_1
            L2_2.rewardedVideoOnMainMenu = true
          end
        end
        L1_2 = A0_2.as
        if L1_2 then
          L1_2 = L0_1
          L1_2.showRateApp = true
        end
        L1_2 = A0_2.fh
        if L1_2 then
          L1_2 = L0_1
          L2_2 = tonumber
          L3_2 = A0_2.fh
          L2_2 = L2_2(L3_2)
          L1_2.adBoostsLeft = L2_2
        else
          L1_2 = L0_1
          L1_2.adBoostsLeft = 0
        end
        L1_2 = L0_1
        L2_2 = L0_1
        L2_2 = L2_2.gamesPlayed
        L1_2.adBoostPrevGame = L2_2
        L1_2 = L0_1
        L1_2.adBoostDrop = false
        L1_2 = A0_2.fm
        if L1_2 then
          L1_2 = A0_2.fm
          L1_2 = L1_2.l
          if L1_2 then
            L1_2 = L0_1
            L2_2 = A0_2.fm
            L2_2 = L2_2.l
            L1_2.currentLeague = L2_2
            L1_2 = L0_1
            L1_2 = L1_2.analytics
            L1_2 = L1_2.setLeagueDimension
            L2_2 = L10_1
            L3_2 = L0_1
            L3_2 = L3_2.currentLeague
            L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2(L3_2)
            L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
          end
        end
        L1_2 = A0_2.z
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.database
          L1_2 = L1_2.setFacebookId
          L2_2 = A0_2.z
          L1_2(L2_2)
        else
          L1_2 = L0_1
          L1_2 = L1_2.database
          L1_2 = L1_2.removeFacebookId
          L1_2()
        end
        L1_2 = A0_2.fn
        if L1_2 then
          L1_2 = L0_1
          L2_2 = {}
          L1_2.showLeaguePrize = L2_2
          L1_2 = L0_1
          L1_2 = L1_2.showLeaguePrize
          L2_2 = A0_2.fn
          L2_2 = L2_2.l
          L1_2.leagueState = L2_2
          L1_2 = L0_1
          L1_2 = L1_2.showLeaguePrize
          L2_2 = A0_2.fn
          L2_2 = L2_2.r
          L1_2.rating = L2_2
          L1_2 = L0_1
          L1_2 = L1_2.showLeaguePrize
          L2_2 = A0_2.fn
          L2_2 = L2_2.p
          L1_2.prizes = L2_2
          L1_2 = L0_1
          L1_2 = L1_2.getSceneName
          L2_2 = "current"
          L1_2 = L1_2(L2_2)
          if L1_2 ~= "lua.scenes.loadingScene" then
            L1_2 = {}
            L1_2.isModal = true
            L2_2 = L0_1
            L2_2 = L2_2.showOverlay
            L3_2 = "lua.overlays.leaguePrize"
            L4_2 = L1_2
            L2_2(L3_2, L4_2)
          end
        end
        L1_2 = A0_2.fg
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.getSceneName
          L2_2 = "current"
          L1_2 = L1_2(L2_2)
          if L1_2 ~= "lua.scenes.loadingScene" then
            L1_2 = L0_1
            L1_2 = L1_2.showLeaguePrize
            if not L1_2 then
              L1_2 = {}
              L1_2.isModal = true
              L2_2 = {}
              L2_2.mysteryBox = true
              L1_2.params = L2_2
              L2_2 = L0_1
              L2_2 = L2_2.showOverlay
              L3_2 = "lua.overlays.messages"
              L4_2 = L1_2
              L2_2(L3_2, L4_2)
          end
          else
            L1_2 = L0_1
            L1_2.showingSendGift = true
          end
        end
        L1_2 = A0_2.ao
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.data
          L2_2 = A0_2.ao
          L1_2.numberOfNameChangesDone = L2_2
        end
        L1_2 = A0_2.ft
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.clanUtils
          L1_2 = L1_2.setClanState
          L2_2 = A0_2.ft
          L1_2(L2_2)
        end
        L1_2 = A0_2.fr
        if L1_2 then
          L1_2 = 1
          L2_2 = A0_2.fr
          L2_2 = #L2_2
          L3_2 = 1
          for L4_2 = L1_2, L2_2, L3_2 do
            L5_2 = L0_1
            L5_2 = L5_2.database
            L5_2 = L5_2.addNewClanInvite
            L6_2 = A0_2.fr
            L6_2 = L6_2[L4_2]
            L5_2(L6_2)
          end
        end
        L1_2 = A0_2.fs
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.database
          L1_2 = L1_2.setClanMembers
          L2_2 = A0_2.fs
          L1_2(L2_2)
          L1_2 = L0_1
          L1_2 = L1_2.clanUtils
          L1_2 = L1_2.updateClanMembersTable
          L1_2()
        end
        L1_2 = A0_2.fu
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.clanUtils
          L1_2 = L1_2.setMyClanRank
          L2_2 = A0_2.fu
          L1_2(L2_2)
        end
        L1_2 = A0_2.fv
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.clanUtils
          L1_2 = L1_2.showSelfKickedMessage
          L2_2 = A0_2.fv
          L2_2 = L2_2.p
          L2_2 = L2_2.n
          L1_2(L2_2)
        end
        L1_2 = A0_2.fw
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.database
          L2_2 = A0_2.fw
          L1_2.unlockedClanRewards = L2_2
        end
        L1_2 = A0_2.fx
        if L1_2 then
        end
        L1_2 = A0_2.fz
        if L1_2 then
          L1_2 = A0_2.fz
          if 0 < L1_2 then
            L1_2 = L0_1
            L1_2 = L1_2.clientStatReporting
            L1_2.shouldReportLatency = true
            L1_2 = L0_1
            L1_2 = L1_2.clientStatReporting
            L1_2.latencyThreshold = 1000
            L1_2 = A0_2.ga
            if L1_2 then
              L1_2 = L0_1
              L1_2 = L1_2.clientStatReporting
              L2_2 = A0_2.ga
              L1_2.latencyThreshold = L2_2
            end
            L1_2 = L0_1
            L1_2 = L1_2.clientStatReporting
            L2_2 = A0_2.fz
            L1_2.maxReports = L2_2
          end
        end
        L1_2 = isAndroid
        if L1_2 then
          L1_2 = A0_2.gc
          if L1_2 then
            L1_2 = L0_1
            L1_2 = L1_2.gameNetwork
            if L1_2 then
              L1_2 = L0_1
              L1_2 = L1_2.gameNetwork
              L1_2 = L1_2.setBackEndGooglePlayerId
              L2_2 = A0_2.gc
              L1_2(L2_2)
              L1_2 = L0_1
              L1_2 = L1_2.gameNetwork
              L1_2 = L1_2.shouldHideGameServicesOnStart
              L1_2 = L1_2()
              if not L1_2 then
                L1_2 = L0_1
                L1_2 = L1_2.database
                L1_2 = L1_2.getGooglePlayServicesId
                L1_2 = L1_2()
                if L1_2 == nil then
                  L2_2 = print
                  L3_2 = "No stored google play services id, yet server says this account has linked id, need to get my googleid"
                  L2_2(L3_2)
                  
                  function L2_2()
                    local L0_3, L1_3, L2_3
                    
                    function L0_3(A0_4)
                      local L1_4, L2_4, L3_4
                      L1_4 = A0_4.isError
                      if L1_4 then
                        L1_4 = print
                        L2_4 = "[nil local playerid] Something went wrong while getting server auth token"
                        L1_4(L2_4)
                      end
                      L1_4 = A0_4.errorCode
                      if L1_4 then
                        L1_4 = print
                        L2_4 = "[nil local playerid] GPGS errorcode "
                        L3_4 = A0_4.errorCode
                        L1_4(L2_4, L3_4)
                      end
                      L1_4 = A0_4.errorMessage
                      if L1_4 then
                        L1_4 = print
                        L2_4 = "[nil local playerid] GPGS errorMessage "
                        L3_4 = A0_4.errorMessage
                        L1_4(L2_4, L3_4)
                      end
                      L1_4 = A0_4.code
                      if L1_4 then
                        L1_4 = A0_4.isError
                        if not L1_4 then
                          L1_4 = print
                          L2_4 = "[nil local playerid] GPGS code, sending https! "
                          L1_4(L2_4)
                          L1_4 = L0_1
                          L1_4 = L1_4.commHttps
                          L1_4 = L1_4.getGooglePlayServicesId
                          L2_4 = A0_4.code
                          L1_4(L2_4)
                      end
                      else
                        L1_4 = print
                        L2_4 = "no [nil local playerid] event code "
                        L1_4(L2_4)
                      end
                    end
                    
                    L1_3 = L0_1
                    L1_3 = L1_3.gameNetwork
                    L1_3 = L1_3.invalidateGameServices
                    L1_3()
                    L1_3 = L0_1
                    L1_3 = L1_3.gameNetwork
                    L1_3 = L1_3.getPlayServicesRefreshToken
                    L2_3 = L0_3
                    L1_3(L2_3)
                  end
                  
                  function L3_2()
                    local L0_3, L1_3
                    L0_3 = print
                    L1_3 = "failed init game network when stored playerid was nil"
                    L0_3(L1_3)
                    L0_3 = L0_1
                    L0_3 = L0_3.gameNetwork
                    L0_3 = L0_3.invalidateGameServices
                    L0_3()
                  end
                  
                  L4_2 = L0_1
                  L4_2 = L4_2.gameNetwork
                  L4_2 = L4_2.setSuccesfullyGetLocalPlayerCallback
                  L5_2 = L2_2
                  L4_2(L5_2)
                  L4_2 = L0_1
                  L4_2 = L4_2.gameNetwork
                  L4_2 = L4_2.setFailsGetLocalPlayerCallback
                  L5_2 = L3_2
                  L4_2(L5_2)
                  L4_2 = L0_1
                  L4_2 = L4_2.gameNetwork
                  L4_2 = L4_2.init
                  L4_2()
                else
                  L2_2 = L0_1
                  L2_2 = L2_2.gameNetwork
                  L2_2 = L2_2.isGameServicesActive
                  L2_2 = L2_2()
                  if L2_2 then
                    L2_2 = A0_2.gc
                    if L2_2 ~= L1_2 then
                      L2_2 = L0_1
                      L2_2 = L2_2.gameNetwork
                      L2_2 = L2_2.invalidateGameServices
                      L2_2()
                    else
                      L2_2 = L0_1
                      L2_2 = L2_2.gameNetwork
                      L2_2 = L2_2.revalidateGooglePlayServices
                      L2_2()
                    end
                  else
                    L2_2 = L0_1
                    L2_2 = L2_2.gameNetwork
                    L2_2 = L2_2.init
                    L2_2()
                  end
                end
              end
            end
          else
            L1_2 = L0_1
            L1_2 = L1_2.gameNetwork
            if L1_2 then
              L1_2 = L0_1
              L1_2 = L1_2.gameNetwork
              L1_2 = L1_2.setBackEndGooglePlayerId
              L2_2 = nil
              L1_2(L2_2)
            end
            L1_2 = L0_1
            L1_2 = L1_2.gameNetwork
            if L1_2 then
              L1_2 = L0_1
              L1_2 = L1_2.gameNetwork
              L1_2 = L1_2.isGameServicesActive
              L1_2 = L1_2()
              if L1_2 then
                L1_2 = L0_1
                L1_2 = L1_2.gameNetwork
                L1_2 = L1_2.invalidateGameServices
                L1_2()
              end
            end
          end
        end
        L1_2 = isIOS
        if L1_2 then
          L1_2 = A0_2.gb
          if L1_2 then
            L1_2 = L0_1
            L1_2 = L1_2.gameNetwork
            if L1_2 then
              L1_2 = L0_1
              L1_2 = L1_2.gameNetwork
              L1_2 = L1_2.isGameServicesActive
              L1_2 = L1_2()
              if L1_2 then
                L1_2 = L0_1
                L1_2 = L1_2.gameNetwork
                L1_2 = L1_2.getPlayerId
                L1_2 = L1_2()
                L2_2 = A0_2.gb
                if L2_2 ~= L1_2 then
                  L2_2 = L0_1
                  L2_2 = L2_2.gameNetwork
                  L2_2 = L2_2.invalidateGameServices
                  L2_2()
                end
              else
                L1_2 = L0_1
                L1_2 = L1_2.gameNetwork
                L1_2 = L1_2.setBackEndApplePlayerId
                L2_2 = A0_2.gb
                L1_2(L2_2)
                L1_2 = L0_1
                L1_2 = L1_2.gameNetwork
                L1_2 = L1_2.init
                L1_2()
              end
            end
          else
            L1_2 = L0_1
            L1_2 = L1_2.gameNetwork
            if L1_2 then
              L1_2 = L0_1
              L1_2 = L1_2.gameNetwork
              L1_2 = L1_2.setBackEndApplePlayerId
              L2_2 = nil
              L1_2(L2_2)
            end
            L1_2 = L0_1
            L1_2 = L1_2.gameNetwork
            if L1_2 then
              L1_2 = L0_1
              L1_2 = L1_2.gameNetwork
              L1_2 = L1_2.isGameServicesActive
              L1_2 = L1_2()
              if L1_2 then
                L1_2 = L0_1
                L1_2 = L1_2.gameNetwork
                L1_2 = L1_2.invalidateGameServices
                L1_2()
              end
            end
          end
        end
        L1_2 = L0_1
        L1_2 = L1_2.data
        L1_2.crossPromotionIsActive = false
        L1_2 = L0_1
        L1_2 = L1_2.data
        L1_2.crossPromotionGameLimit = 0
        L1_2 = A0_2.ge
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.data
          L2_2 = tonumber
          L3_2 = A0_2.ge
          L2_2 = L2_2(L3_2)
          L2_2 = -1 < L2_2
          L1_2.crossPromotionIsActive = L2_2
          L1_2 = L0_1
          L1_2 = L1_2.data
          L2_2 = A0_2.ge
          L1_2.crossPromotionGameLimit = L2_2
        end
        L1_2 = A0_2.gf
        if L1_2 then
          L1_2 = print
          L2_2 = "UnreadClanChatMessages "
          L3_2 = A0_2.gf
          L1_2(L2_2, L3_2)
          L1_2 = L0_1
          L1_2 = L1_2.data
          L1_2 = L1_2.clans
          L2_2 = tonumber
          L3_2 = A0_2.gf
          L2_2 = L2_2(L3_2)
          L1_2.unreadMessages = L2_2
        end
        L1_2 = L0_1
        L1_2 = L1_2.data
        L1_2.unreadNewsFeedItems = 0
        L1_2 = A0_2.gg
        if L1_2 then
          L1_2 = print
          L2_2 = "UnreadNewsFeedItems "
          L3_2 = A0_2.gg
          L1_2(L2_2, L3_2)
          L1_2 = L0_1
          L1_2 = L1_2.data
          L2_2 = tonumber
          L3_2 = A0_2.gg
          L2_2 = L2_2(L3_2)
          L1_2.unreadNewsFeedItems = L2_2
        end
        L1_2 = A0_2.gh
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.data
          L2_2 = A0_2.gh
          L1_2.shouldHideNewsFeed = L2_2
        end
        L1_2 = A0_2.gj
        if L1_2 then
          L1_2 = A0_2.gk
          if L1_2 then
            L1_2 = print
            L2_2 = "Got clan supporter data: "
            L3_2 = A0_2.gj
            L4_2 = " | "
            L5_2 = A0_2.gk
            L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
            L1_2(L2_2)
            L1_2 = L0_1
            L1_2 = L1_2.clanUtils
            L1_2 = L1_2.setPlayerSupporterStatus
            L2_2 = A0_2.gj
            L3_2 = A0_2.gk
            L1_2(L2_2, L3_2)
          end
        end
        L1_2 = A0_2.gl
        if L1_2 then
          L1_2 = print
          L2_2 = "Has clan reward to claim!"
          L3_2 = A0_2.gl
          L1_2(L2_2, L3_2)
          L1_2 = L0_1
          L1_2 = L1_2.data
          L1_2 = L1_2.clans
          L2_2 = tonumber
          L3_2 = A0_2.gl
          L2_2 = L2_2(L3_2)
          L2_2 = L2_2 + 1
          L1_2.clanRewardToClaim = L2_2
        end
        L1_2 = L0_1
        L1_2 = L1_2.config
        L1_2.authenticate = true
        L1_2 = L0_1
        L1_2 = L1_2.database
        L1_2 = L1_2.getFriends
        L1_2 = L1_2()
        L1_2 = #L1_2
        L2_2 = L0_1
        L2_2 = L2_2.data
        L2_2 = L2_2.clans
        L2_2 = L2_2.inClan
        L3_2 = "loner"
        if 0 < L1_2 and L2_2 then
          L3_2 = "clanAndFriends"
        elseif L2_2 then
          L3_2 = "clan"
        elseif 0 < L1_2 then
          L3_2 = "friends"
        end
        L4_2 = L0_1
        L4_2 = L4_2.analytics
        L4_2 = L4_2.setSocialDimension
        L5_2 = L3_2
        L4_2(L5_2)
      else
        L1_2 = A0_2.m
        L2_2 = L3_1
        L2_2 = L2_2.refreshConfig
        L2_2 = L2_2()
        if L1_2 == L2_2 then
          L1_2 = A0_2.c
          L2_2 = L0_1
          L2_2 = L2_2.data
          L2_2 = L2_2.configChecksum
          if L1_2 ~= L2_2 then
            L1_2 = print
            L2_2 = "WARNING: config checksum wrong, get new"
            L1_2(L2_2)
            L1_2 = L2_1
            L2_2 = "updateConfigFiles"
            L1_2 = L1_2[L2_2]
            L1_2()
          end
          L1_2 = A0_2.p
          L2_2 = L0_1
          L2_2 = L2_2.data
          L3_2 = "mapChecksum"
          L2_2 = L2_2[L3_2]
          if L1_2 ~= L2_2 then
            L1_2 = print
            L2_2 = "WARNING: map checksum wrong, get new"
            L1_2(L2_2)
            L1_2 = L2_1
            L2_2 = "updateMapFiles"
            L1_2 = L1_2[L2_2]
            L1_2()
          end
        else
          L1_2 = A0_2.m
          L2_2 = L3_1
          L2_2 = L2_2.showLeaguePrize
          L2_2 = L2_2()
          if L1_2 == L2_2 then
            L1_2 = L0_1
            L2_2 = {}
            L1_2.showLeaguePrize = L2_2
            L1_2 = L0_1
            L1_2 = L1_2.showLeaguePrize
            L2_2 = A0_2.l
            L1_2.leagueState = L2_2
            L1_2 = L0_1
            L1_2 = L1_2.showLeaguePrize
            L2_2 = A0_2.r
            L1_2.rating = L2_2
            L1_2 = L0_1
            L1_2 = L1_2.showLeaguePrize
            L2_2 = A0_2.p
            L1_2.prizes = L2_2
            L1_2 = L0_1
            L1_2 = L1_2.getSceneName
            L2_2 = "current"
            L1_2 = L1_2(L2_2)
            L2_2 = "lua.scenes.gamePlay"
            if L1_2 ~= L2_2 then
              L1_2 = {}
              L2_2 = true
              L1_2.isModal = L2_2
              L2_2 = L0_1
              L2_2 = L2_2.showOverlay
              L3_2 = "lua.overlays.leaguePrize"
              L4_2 = L1_2
              L2_2(L3_2, L4_2)
            end
          else
            L1_2 = A0_2.m
            L2_2 = L3_1
            L3_2 = "getNewSeasonalSale"
            L2_2 = L2_2[L3_2]
            L2_2 = L2_2()
            if L1_2 == L2_2 then
              L1_2 = A0_2.a
              if L1_2 then
                L1_2 = L0_1
                L1_2 = L1_2.database
                L2_2 = A0_2.a
                L1_2.seasonalItem = L2_2
                L1_2 = pairs
                L2_2 = L0_1
                L2_2 = L2_2.database
                L2_2 = L2_2.seasonalItem
                L1_2, L2_2, L3_2 = L1_2(L2_2)
                for L4_2, L5_2 in L1_2, L2_2, L3_2 do
                  L6_2 = tonumber
                  L7_2 = L5_2.y
                  L6_2 = L6_2(L7_2)
                  L7_2 = system
                  L7_2 = L7_2.getTimer
                  L7_2 = L7_2()
                  L8_2 = 1000
                  L7_2 = L7_2 / L8_2
                  L6_2 = L6_2 + L7_2
                  L5_2.y = L6_2
                end
              end
            else
              L1_2 = A0_2.m
              L2_2 = L3_1
              L3_2 = "getNewSalesItems"
              L2_2 = L2_2[L3_2]
              L2_2 = L2_2()
              if L1_2 == L2_2 then
                L1_2 = A0_2.a
                if L1_2 then
                  L1_2 = L0_1
                  L1_2 = L1_2.database
                  L2_2 = A0_2.a
                  L1_2.salesItem = L2_2
                  L1_2 = pairs
                  L2_2 = L0_1
                  L2_2 = L2_2.database
                  L2_2 = L2_2.salesItem
                  L1_2, L2_2, L3_2 = L1_2(L2_2)
                  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
                    L6_2 = tonumber
                    L7_2 = L5_2.y
                    L6_2 = L6_2(L7_2)
                    L7_2 = system
                    L7_2 = L7_2.getTimer
                    L7_2 = L7_2()
                    L8_2 = 1000
                    L7_2 = L7_2 / L8_2
                    L6_2 = L6_2 + L7_2
                    L5_2.y = L6_2
                  end
                end
              else
                L1_2 = A0_2.m
                L2_2 = L3_1
                L3_2 = "maintenance"
                L2_2 = L2_2[L3_2]
                L2_2 = L2_2()
                if L1_2 == L2_2 then
                  L1_2 = A0_2.a
                  if L1_2 then
                    L1_2 = L4_1
                    L2_2 = "closeTCP"
                    L1_2 = L1_2[L2_2]
                    L2_2 = true
                    L1_2(L2_2)
                    L1_2 = L0_1
                    L1_2 = L1_2.createCustomOverlay
                    L2_2 = 98
                    L3_2 = nil
                    L4_2 = A0_2.a
                    L1_2(L2_2, L3_2, L4_2)
                  end
                else
                  L1_2 = A0_2.m
                  L2_2 = L3_1
                  L3_2 = "getNewPromoSale"
                  L2_2 = L2_2[L3_2]
                  L2_2 = L2_2()
                  if L1_2 == L2_2 then
                    L1_2 = A0_2.a
                    if L1_2 then
                      L1_2 = L0_1
                      L1_2 = L1_2.database
                      L2_2 = A0_2.a
                      L1_2.promoSale = L2_2
                      L1_2 = L6_1
                      L2_2 = "callback"
                      L1_2 = L1_2[L2_2]
                      if L1_2 then
                        L1_2 = L6_1
                        L2_2 = "callback"
                        L1_2 = L1_2[L2_2]
                        L2_2 = A0_2
                        L1_2(L2_2)
                      end
                    end
                  else
                    L1_2 = A0_2.m
                    L2_2 = L3_1
                    L3_2 = "messageOfTheDay"
                    L2_2 = L2_2[L3_2]
                    L2_2 = L2_2()
                    if L1_2 == L2_2 then
                      L1_2 = A0_2.t
                      if L1_2 then
                        L1_2 = L0_1
                        L1_2 = L1_2.data
                        L2_2 = "messageOfTheDay"
                        L3_2 = A0_2.t
                        L1_2[L2_2] = L3_2
                      end
                    else
                      L1_2 = A0_2.m
                      L2_2 = L3_1
                      L3_2 = "getRankingListOnName"
                      L2_2 = L2_2[L3_2]
                      L2_2 = L2_2()
                      if L1_2 == L2_2 then
                        L1_2 = L6_1
                        L2_2 = "callback"
                        L1_2 = L1_2[L2_2]
                        if L1_2 then
                          L1_2 = L6_1
                          L2_2 = "callback"
                          L1_2 = L1_2[L2_2]
                          L2_2 = A0_2
                          L1_2(L2_2)
                        end
                      else
                        L1_2 = A0_2.m
                        L2_2 = L3_1
                        L3_2 = "postGameChat"
                        L2_2 = L2_2[L3_2]
                        L2_2 = L2_2()
                        if L1_2 == L2_2 then
                          L1_2 = A0_2.r
                          if L1_2 then
                            return
                          end
                          L1_2 = L6_1
                          L2_2 = "callback"
                          L1_2 = L1_2[L2_2]
                          if L1_2 then
                            L1_2 = L6_1
                            L2_2 = "callback"
                            L1_2 = L1_2[L2_2]
                            L2_2 = A0_2
                            L1_2(L2_2)
                          end
                        else
                          L1_2 = A0_2.m
                          L2_2 = L3_1
                          L3_2 = "requestGame"
                          L2_2 = L2_2[L3_2]
                          L2_2 = L2_2()
                          if L1_2 == L2_2 then
                            L1_2 = A0_2.r
                            if L1_2 then
                              L1_2 = A0_2.r
                              L2_2 = 53
                              if L1_2 == L2_2 then
                                L1_2 = L0_1
                                L1_2 = L1_2.createCustomOverlay
                                L2_2 = 35
                                L1_2(L2_2)
                              end
                            end
                            L1_2 = A0_2.a
                            if L1_2 then
                              L1_2 = L0_1
                              L1_2 = L1_2.config
                              L2_2 = "tcpClient"
                              L3_2 = A0_2.a
                              L1_2[L2_2] = L3_2
                            end
                            L1_2 = L6_1
                            L2_2 = "callback"
                            L1_2 = L1_2[L2_2]
                            if L1_2 then
                              L1_2 = L6_1
                              L2_2 = "callback"
                              L1_2 = L1_2[L2_2]
                              L2_2 = A0_2
                              L1_2(L2_2)
                            end
                          else
                            L1_2 = A0_2.m
                            L2_2 = L3_1
                            L3_2 = "playerSearch"
                            L2_2 = L2_2[L3_2]
                            L2_2 = L2_2()
                            if L1_2 == L2_2 then
                              L1_2 = A0_2.f
                              if L1_2 then
                                L1_2 = L6_1
                                L2_2 = "callback"
                                L1_2 = L1_2[L2_2]
                                if L1_2 then
                                  L1_2 = L6_1
                                  L2_2 = "callback"
                                  L1_2 = L1_2[L2_2]
                                  L2_2 = A0_2
                                  L1_2(L2_2)
                                end
                              end
                            else
                              L1_2 = A0_2.m
                              L2_2 = L3_1
                              L3_2 = "clearFriendRequest"
                              L2_2 = L2_2[L3_2]
                              L2_2 = L2_2()
                              if L1_2 == L2_2 then
                                L1_2 = L0_1
                                L1_2 = L1_2.database
                                L2_2 = "removeAllFriendRequests"
                                L1_2 = L1_2[L2_2]
                                L1_2()
                                L1_2 = L6_1
                                L2_2 = "callback"
                                L1_2 = L1_2[L2_2]
                                if L1_2 then
                                  L1_2 = L6_1
                                  L2_2 = "callback"
                                  L1_2 = L1_2[L2_2]
                                  L2_2 = A0_2
                                  L1_2(L2_2)
                                end
                              else
                                L1_2 = A0_2.m
                                L2_2 = L3_1
                                L3_2 = "addFriend"
                                L2_2 = L2_2[L3_2]
                                L2_2 = L2_2()
                                if L1_2 == L2_2 then
                                  L1_2 = A0_2.r
                                  if L1_2 then
                                    L1_2 = A0_2.r
                                    L2_2 = 35
                                    if L1_2 == L2_2 then
                                      L1_2 = L0_1
                                      L1_2 = L1_2.cleanOldOverlay
                                      L1_2()
                                    else
                                      L1_2 = A0_2.r
                                      L2_2 = 36
                                      if L1_2 == L2_2 then
                                        L1_2 = L0_1
                                        L1_2 = L1_2.cleanOldOverlay
                                        L1_2()
                                      else
                                        L1_2 = A0_2.r
                                        L2_2 = 69
                                        if L1_2 == L2_2 then
                                          L1_2 = L0_1
                                          L1_2 = L1_2.cleanOldOverlay
                                          L1_2()
                                        else
                                          L1_2 = A0_2.r
                                          L2_2 = 71
                                          if L1_2 == L2_2 then
                                            L1_2 = L0_1
                                            L1_2 = L1_2.cleanOldOverlay
                                            L1_2()
                                          else
                                            L1_2 = A0_2.r
                                            L2_2 = 37
                                            if L1_2 == L2_2 then
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                  L1_2 = L6_1
                                  L2_2 = "callback"
                                  L1_2 = L1_2[L2_2]
                                  if L1_2 then
                                    L1_2 = L6_1
                                    L2_2 = "callback"
                                    L1_2 = L1_2[L2_2]
                                    L2_2 = A0_2
                                    L1_2(L2_2)
                                  end
                                else
                                  L1_2 = A0_2.m
                                  L2_2 = L3_1
                                  L3_2 = "deleteFriend"
                                  L2_2 = L2_2[L3_2]
                                  L2_2 = L2_2()
                                  if L1_2 == L2_2 then
                                    L1_2 = A0_2.p
                                    if L1_2 then
                                      L1_2 = L0_1
                                      L1_2 = L1_2.database
                                      L2_2 = "removeFriend"
                                      L1_2 = L1_2[L2_2]
                                      L2_2 = A0_2.p
                                      L1_2(L2_2)
                                      L1_2 = L6_1
                                      L2_2 = "callback"
                                      L1_2 = L1_2[L2_2]
                                      if L1_2 then
                                        L1_2 = L6_1
                                        L2_2 = "callback"
                                        L1_2 = L1_2[L2_2]
                                        L2_2 = A0_2
                                        L1_2(L2_2)
                                      end
                                    end
                                  else
                                    L1_2 = A0_2.m
                                    L2_2 = L3_1
                                    L3_2 = "acceptFriendRequest"
                                    L2_2 = L2_2[L3_2]
                                    L2_2 = L2_2()
                                    if L1_2 == L2_2 then
                                      L1_2 = A0_2.r
                                      if L1_2 then
                                        L1_2 = A0_2.r
                                        L2_2 = 38
                                        if L1_2 == L2_2 then
                                          L1_2 = L0_1
                                          L1_2 = L1_2.cleanOldOverlay
                                          L1_2()
                                        else
                                          L1_2 = A0_2.r
                                          L2_2 = 39
                                          if L1_2 == L2_2 then
                                            L1_2 = L0_1
                                            L1_2 = L1_2.cleanOldOverlay
                                            L1_2()
                                          else
                                            L1_2 = A0_2.r
                                            L2_2 = 71
                                            if L1_2 == L2_2 then
                                              L1_2 = L0_1
                                              L1_2 = L1_2.cleanOldOverlay
                                              L1_2()
                                              L1_2 = L0_1
                                              L1_2 = L1_2.createCustomOverlay
                                              L2_2 = 40
                                              L1_2(L2_2)
                                            end
                                          end
                                        end
                                        return
                                      end
                                      L1_2 = A0_2.p
                                      if L1_2 then
                                        L1_2 = L0_1
                                        L1_2 = L1_2.database
                                        L2_2 = "removeFriendRequest"
                                        L1_2 = L1_2[L2_2]
                                        L2_2 = A0_2.p
                                        L1_2 = L1_2(L2_2)
                                        if L1_2 then
                                          L2_2 = L0_1
                                          L2_2 = L2_2.database
                                          L3_2 = "addNewFriend"
                                          L2_2 = L2_2[L3_2]
                                          L3_2 = L1_2
                                          L2_2(L3_2)
                                        end
                                        L2_2 = L6_1
                                        L3_2 = "callback"
                                        L2_2 = L2_2[L3_2]
                                        if L2_2 then
                                          L2_2 = L6_1
                                          L3_2 = "callback"
                                          L2_2 = L2_2[L3_2]
                                          L3_2 = A0_2
                                          L2_2(L3_2)
                                        end
                                      end
                                    else
                                      L1_2 = A0_2.m
                                      L2_2 = L3_1
                                      L3_2 = "recieveAcceptedFriendRequest"
                                      L2_2 = L2_2[L3_2]
                                      L2_2 = L2_2()
                                      if L1_2 == L2_2 then
                                        L1_2 = A0_2.f
                                        if L1_2 then
                                          L1_2 = L0_1
                                          L1_2 = L1_2.database
                                          L2_2 = "addNewFriend"
                                          L1_2 = L1_2[L2_2]
                                          L2_2 = A0_2.f
                                          L1_2(L2_2)
                                          L1_2 = L0_1
                                          L1_2 = L1_2.database
                                          L2_2 = "changeOnlineState"
                                          L1_2 = L1_2[L2_2]
                                          L2_2 = A0_2.f
                                          L2_2 = L2_2.p
                                          L3_2 = 1
                                          L1_2(L2_2, L3_2)
                                          L1_2 = L6_1
                                          L2_2 = "callback"
                                          L1_2 = L1_2[L2_2]
                                          if L1_2 then
                                            L1_2 = L6_1
                                            L2_2 = "callback"
                                            L1_2 = L1_2[L2_2]
                                            L2_2 = A0_2
                                            L1_2(L2_2)
                                          end
                                        end
                                      else
                                        L1_2 = A0_2.m
                                        L2_2 = L3_1
                                        L3_2 = "recieveFriendRequest"
                                        L2_2 = L2_2[L3_2]
                                        L2_2 = L2_2()
                                        if L1_2 == L2_2 then
                                          L1_2 = A0_2.f
                                          if L1_2 then
                                            L1_2 = L0_1
                                            L1_2 = L1_2.database
                                            L2_2 = "addNewFriendRequest"
                                            L1_2 = L1_2[L2_2]
                                            L2_2 = A0_2.f
                                            L1_2 = L1_2(L2_2)
                                            if L1_2 then
                                              L2_2 = L1_1
                                              L3_2 = "showFriendRequest"
                                              L2_2 = L2_2[L3_2]
                                              L3_2 = A0_2.f
                                              L2_2(L3_2)
                                            end
                                            L2_2 = L6_1
                                            L3_2 = "callback"
                                            L2_2 = L2_2[L3_2]
                                            if L2_2 then
                                              L2_2 = L6_1
                                              L3_2 = "callback"
                                              L2_2 = L2_2[L3_2]
                                              L3_2 = A0_2
                                              L2_2(L3_2)
                                            end
                                          end
                                        else
                                          L1_2 = A0_2.m
                                          L2_2 = L3_1
                                          L3_2 = "deleteFriendRequest"
                                          L2_2 = L2_2[L3_2]
                                          L2_2 = L2_2()
                                          if L1_2 == L2_2 then
                                            L1_2 = A0_2.p
                                            if L1_2 then
                                              L1_2 = L0_1
                                              L1_2 = L1_2.database
                                              L2_2 = "removeFriendRequest"
                                              L1_2 = L1_2[L2_2]
                                              L2_2 = A0_2.p
                                              L1_2(L2_2)
                                              L1_2 = L6_1
                                              L2_2 = "callback"
                                              L1_2 = L1_2[L2_2]
                                              if L1_2 then
                                                L1_2 = L6_1
                                                L2_2 = "callback"
                                                L1_2 = L1_2[L2_2]
                                                L2_2 = A0_2
                                                L1_2(L2_2)
                                              end
                                            end
                                          else
                                            L1_2 = A0_2.m
                                            L2_2 = L3_1
                                            L3_2 = "recieveDeletedFriend"
                                            L2_2 = L2_2[L3_2]
                                            L2_2 = L2_2()
                                            if L1_2 == L2_2 then
                                              L1_2 = A0_2.p
                                              if L1_2 then
                                                L1_2 = L0_1
                                                L1_2 = L1_2.database
                                                L2_2 = "removeFriend"
                                                L1_2 = L1_2[L2_2]
                                                L2_2 = A0_2.p
                                                L1_2(L2_2)
                                                L1_2 = L6_1
                                                L2_2 = "callback"
                                                L1_2 = L1_2[L2_2]
                                                if L1_2 then
                                                  L1_2 = L6_1
                                                  L2_2 = "callback"
                                                  L1_2 = L1_2[L2_2]
                                                  L2_2 = A0_2
                                                  L1_2(L2_2)
                                                end
                                              end
                                            else
                                              L1_2 = A0_2.m
                                              L2_2 = L3_1
                                              L3_2 = "addFacebookFriend"
                                              L2_2 = L2_2[L3_2]
                                              L2_2 = L2_2()
                                              if L1_2 == L2_2 then
                                                L1_2 = A0_2.r
                                                if L1_2 then
                                                  L1_2 = A0_2.r
                                                  L2_2 = 40
                                                  if L1_2 == L2_2 then
                                                    L1_2 = L0_1
                                                    L1_2 = L1_2.cleanOldOverlay
                                                    L1_2()
                                                  else
                                                    L1_2 = A0_2.r
                                                    L2_2 = 41
                                                    if L1_2 == L2_2 then
                                                    else
                                                      L1_2 = A0_2.r
                                                      L2_2 = 42
                                                      if L1_2 == L2_2 then
                                                      end
                                                    end
                                                  end
                                                  return
                                                end
                                                L1_2 = A0_2.f
                                                if L1_2 then
                                                  L1_2 = L0_1
                                                  L1_2 = L1_2.database
                                                  L2_2 = "addNewFriend"
                                                  L1_2 = L1_2[L2_2]
                                                  L2_2 = A0_2.f
                                                  L1_2(L2_2)
                                                  L1_2 = L6_1
                                                  L2_2 = "callback"
                                                  L1_2 = L1_2[L2_2]
                                                  if L1_2 then
                                                    L1_2 = L6_1
                                                    L2_2 = "callback"
                                                    L1_2 = L1_2[L2_2]
                                                    L2_2 = A0_2
                                                    L1_2(L2_2)
                                                  end
                                                end
                                              else
                                                L1_2 = A0_2.m
                                                L2_2 = L3_1
                                                L3_2 = "getOnlineFriends"
                                                L2_2 = L2_2[L3_2]
                                                L2_2 = L2_2()
                                                if L1_2 == L2_2 then
                                                  L1_2 = A0_2.r
                                                  if L1_2 then
                                                    return
                                                  end
                                                  L1_2 = A0_2.f
                                                  if L1_2 then
                                                    L1_2 = L0_1
                                                    L1_2 = L1_2.database
                                                    L2_2 = "setAllOnlineFriendsState"
                                                    L1_2 = L1_2[L2_2]
                                                    L2_2 = A0_2.f
                                                    L1_2(L2_2)
                                                    L1_2 = L0_1
                                                    L1_2 = L1_2.clanUtils
                                                    L2_2 = "setClanMembersOnlineStatus"
                                                    L1_2 = L1_2[L2_2]
                                                    L2_2 = A0_2.f
                                                    L1_2(L2_2)
                                                    L1_2 = L0_1
                                                    L1_2 = L1_2.database
                                                    L2_2 = "setPreviouslyOnlinePlayers"
                                                    L1_2 = L1_2[L2_2]
                                                    L2_2 = A0_2.f
                                                    L1_2(L2_2)
                                                  end
                                                else
                                                  L1_2 = A0_2.m
                                                  L2_2 = L3_1
                                                  L2_2 = L2_2.setPowerupSkin
                                                  L2_2 = L2_2()
                                                  if L1_2 == L2_2 then
                                                  else
                                                    L1_2 = A0_2.m
                                                    L2_2 = L3_1
                                                    L3_2 = "setPowerupShowcase"
                                                    L2_2 = L2_2[L3_2]
                                                    L2_2 = L2_2()
                                                    if L1_2 == L2_2 then
                                                    else
                                                      L1_2 = A0_2.m
                                                      L2_2 = L3_1
                                                      L3_2 = "sendMysteryBox"
                                                      L2_2 = L2_2[L3_2]
                                                      L2_2 = L2_2()
                                                      if L1_2 == L2_2 then
                                                        L1_2 = A0_2.r
                                                        if L1_2 then
                                                        else
                                                          L1_2 = L0_1
                                                          L1_2 = L1_2.createCustomOverlay
                                                          L2_2 = 44
                                                          L1_2(L2_2)
                                                        end
                                                      else
                                                        L1_2 = A0_2.m
                                                        L2_2 = L3_1
                                                        L3_2 = "claimMysteryBox"
                                                        L2_2 = L2_2[L3_2]
                                                        L2_2 = L2_2()
                                                        if L1_2 == L2_2 then
                                                          L1_2 = A0_2.r
                                                          if L1_2 then
                                                            L1_2 = A0_2.r
                                                            L2_2 = 77
                                                            if L1_2 == L2_2 then
                                                              L1_2 = L0_1
                                                              L2_2 = "claimingGiftData"
                                                              L1_2 = L1_2[L2_2]
                                                              if L1_2 then
                                                                L1_2 = {}
                                                                L2_2 = true
                                                                L1_2.isModal = L2_2
                                                                L2_2 = {}
                                                                L3_2 = "giftData"
                                                                L4_2 = L0_1
                                                                L5_2 = "tableUtils"
                                                                L4_2 = L4_2[L5_2]
                                                                L5_2 = "deepCopy"
                                                                L4_2 = L4_2[L5_2]
                                                                L5_2 = L0_1
                                                                L6_2 = "claimingGiftData"
                                                                L5_2 = L5_2[L6_2]
                                                                L4_2 = L4_2(L5_2)
                                                                L2_2[L3_2] = L4_2
                                                                L1_2.params = L2_2
                                                                L2_2 = L0_1
                                                                L2_2 = L2_2.showOverlay
                                                                L3_2 = "lua.overlays.outOfGiftsOverlay"
                                                                L4_2 = L1_2
                                                                L2_2(L3_2, L4_2)
                                                              else
                                                                L1_2 = L0_1
                                                                L1_2 = L1_2.createCustomOverlay
                                                                L2_2 = 12
                                                                L1_2(L2_2)
                                                              end
                                                            end
                                                          else
                                                            L1_2 = A0_2.a
                                                            if L1_2 then
                                                              L1_2 = tonumber
                                                              L2_2 = A0_2.a
                                                              L1_2 = L1_2(L2_2)
                                                              L2_2 = 902
                                                              if L1_2 == L2_2 then
                                                                L1_2 = L0_1
                                                                L1_2 = L1_2.database
                                                                L2_2 = "increaseGem"
                                                                L1_2 = L1_2[L2_2]
                                                                L2_2 = tonumber
                                                                L3_2 = A0_2.b
                                                                L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2(L3_2)
                                                                L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
                                                                L1_2 = L0_1
                                                                L1_2 = L1_2.analytics
                                                                L2_2 = "addResourceEvent"
                                                                L1_2 = L1_2[L2_2]
                                                                L2_2 = "Source"
                                                                L3_2 = "gems"
                                                                L4_2 = A0_2.b
                                                                L5_2 = "rewards"
                                                                L6_2 = "gift"
                                                                L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
                                                                L1_2 = L0_1
                                                                L1_2 = L1_2.analytics
                                                                L2_2 = "addResourceEvent"
                                                                L1_2 = L1_2[L2_2]
                                                                L2_2 = "Sink"
                                                                L3_2 = "gift"
                                                                L4_2 = 1
                                                                L5_2 = "misc"
                                                                L6_2 = "convertGem"
                                                                L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
                                                              else
                                                                L1_2 = L0_1
                                                                L1_2 = L1_2.database
                                                                L2_2 = "addItem"
                                                                L1_2 = L1_2[L2_2]
                                                                L2_2 = A0_2.a
                                                                L1_2(L2_2)
                                                                L1_2 = L0_1
                                                                L1_2 = L1_2.analytics
                                                                L2_2 = "addResourceEvent"
                                                                L1_2 = L1_2[L2_2]
                                                                L2_2 = "Sink"
                                                                L3_2 = "gift"
                                                                L4_2 = 1
                                                                L5_2 = "accessory"
                                                                L6_2 = "gift"
                                                                L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
                                                                L1_2 = {}
                                                                L2_2 = true
                                                                L1_2.isModal = L2_2
                                                                L2_2 = {}
                                                                L3_2 = "item"
                                                                L4_2 = L0_1
                                                                L5_2 = "storeConfig"
                                                                L4_2 = L4_2[L5_2]
                                                                L5_2 = "getItem"
                                                                L4_2 = L4_2[L5_2]
                                                                L5_2 = A0_2.a
                                                                L4_2 = L4_2(L5_2)
                                                                L2_2[L3_2] = L4_2
                                                                L1_2.params = L2_2
                                                                L2_2 = L0_1
                                                                L3_2 = "storeConfig"
                                                                L2_2 = L2_2[L3_2]
                                                                L3_2 = "getItemCategory"
                                                                L2_2 = L2_2[L3_2]
                                                                L3_2 = A0_2.a
                                                                L2_2 = L2_2(L3_2)
                                                                L3_2 = L1_2.params
                                                                L4_2 = "item"
                                                                L3_2 = L3_2[L4_2]
                                                                L4_2 = "imagePath"
                                                                L5_2 = "images/gui/market/items/"
                                                                L6_2 = L2_2
                                                                L7_2 = "/"
                                                                L8_2 = A0_2.a
                                                                L9_2 = ".png"
                                                                L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
                                                                L3_2[L4_2] = L5_2
                                                                L3_2 = L0_1
                                                                L3_2 = L3_2.showOverlay
                                                                L4_2 = "lua.overlays.marketFree"
                                                                L5_2 = L1_2
                                                                L3_2(L4_2, L5_2)
                                                              end
                                                              L1_2 = L0_1
                                                              L1_2 = L1_2.debugger
                                                              L1_2 = L1_2.debugPrint
                                                              L2_2 = "network"
                                                              L3_2 = "Got item from claiming mystery box "
                                                              L4_2 = A0_2.a
                                                              L1_2(L2_2, L3_2, L4_2)
                                                            end
                                                          end
                                                          L1_2 = L0_1
                                                          L2_2 = "claimingGiftData"
                                                          L3_2 = nil
                                                          L1_2[L2_2] = L3_2
                                                          L1_2 = L6_1
                                                          L2_2 = "callback"
                                                          L1_2 = L1_2[L2_2]
                                                          if L1_2 then
                                                            L1_2 = L6_1
                                                            L2_2 = "callback"
                                                            L1_2 = L1_2[L2_2]
                                                            L2_2 = A0_2
                                                            L1_2(L2_2)
                                                          end
                                                        else
                                                          L1_2 = A0_2.m
                                                          L2_2 = L3_1
                                                          L3_2 = "getMysteryBox"
                                                          L2_2 = L2_2[L3_2]
                                                          L2_2 = L2_2()
                                                          if L1_2 == L2_2 then
                                                            L1_2 = A0_2.a
                                                            if L1_2 then
                                                              L1_2 = {}
                                                              L2_2 = A0_2.a
                                                              L2_2 = L2_2.f
                                                              L1_2.n = L2_2
                                                              L2_2 = L1_1
                                                              L3_2 = "showFriendRequest"
                                                              L2_2 = L2_2[L3_2]
                                                              L3_2 = L1_2
                                                              L4_2 = true
                                                              L2_2(L3_2, L4_2)
                                                              L2_2 = L0_1
                                                              L2_2 = L2_2.database
                                                              L3_2 = "addNewMysteryBox"
                                                              L2_2 = L2_2[L3_2]
                                                              L3_2 = A0_2.a
                                                              L2_2(L3_2)
                                                              L2_2 = L0_1
                                                              L2_2 = L2_2.analytics
                                                              L3_2 = "ResourceData"
                                                              L2_2 = L2_2[L3_2]
                                                              L3_2 = "itemType"
                                                              L2_2 = L2_2[L3_2]
                                                              L3_2 = L0_1
                                                              L3_2 = L3_2.analytics
                                                              L4_2 = "ResourceData"
                                                              L3_2 = L3_2[L4_2]
                                                              L4_2 = "itemId"
                                                              L3_2 = L3_2[L4_2]
                                                              L4_2 = "consecutiveLogin"
                                                              if L3_2 ~= L4_2 then
                                                                L4_2 = "starterpack"
                                                                if L3_2 ~= L4_2 then
                                                                  L2_2 = "rewards"
                                                                  L3_2 = "fromfriend"
                                                                end
                                                              end
                                                              L4_2 = L0_1
                                                              L4_2 = L4_2.analytics
                                                              L5_2 = "addResourceEvent"
                                                              L4_2 = L4_2[L5_2]
                                                              L5_2 = "Source"
                                                              L6_2 = "gift"
                                                              L7_2 = 1
                                                              L8_2 = L0_1
                                                              L8_2 = L8_2.analytics
                                                              L9_2 = "ResourceData"
                                                              L8_2 = L8_2[L9_2]
                                                              L9_2 = "itemType"
                                                              L8_2 = L8_2[L9_2]
                                                              L9_2 = L0_1
                                                              L9_2 = L9_2.analytics
                                                              L10_2 = "ResourceData"
                                                              L9_2 = L9_2[L10_2]
                                                              L10_2 = "itemId"
                                                              L9_2 = L9_2[L10_2]
                                                              L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
                                                              L4_2 = L6_1
                                                              L5_2 = "callback"
                                                              L4_2 = L4_2[L5_2]
                                                              if L4_2 then
                                                                L4_2 = L6_1
                                                                L5_2 = "callback"
                                                                L4_2 = L4_2[L5_2]
                                                                L5_2 = A0_2
                                                                L4_2(L5_2)
                                                              end
                                                            end
                                                          else
                                                            L1_2 = A0_2.m
                                                            L2_2 = L3_1
                                                            L3_2 = "playerStateUpdate"
                                                            L2_2 = L2_2[L3_2]
                                                            L2_2 = L2_2()
                                                            if L1_2 == L2_2 then
                                                              L1_2 = A0_2.r
                                                              if L1_2 then
                                                                return
                                                              end
                                                              L1_2 = A0_2.f
                                                              if L1_2 then
                                                                L1_2 = L0_1
                                                                L1_2 = L1_2.database
                                                                L2_2 = "changeOnlineState"
                                                                L1_2 = L1_2[L2_2]
                                                                L2_2 = A0_2.f
                                                                L2_2 = L2_2.p
                                                                L3_2 = A0_2.f
                                                                L3_2 = L3_2.s
                                                                L1_2(L2_2, L3_2)
                                                                L1_2 = L0_1
                                                                L1_2 = L1_2.clanUtils
                                                                L2_2 = "changeClanMemberOnlineState"
                                                                L1_2 = L1_2[L2_2]
                                                                L2_2 = A0_2.f
                                                                L2_2 = L2_2.p
                                                                L3_2 = A0_2.f
                                                                L3_2 = L3_2.s
                                                                L1_2(L2_2, L3_2)
                                                                L1_2 = L0_1
                                                                L1_2 = L1_2.database
                                                                L2_2 = "updatePreviouslyOnlinePlayer"
                                                                L1_2 = L1_2[L2_2]
                                                                L2_2 = A0_2.f
                                                                L1_2(L2_2)
                                                                L1_2 = L6_1
                                                                L2_2 = "callback"
                                                                L1_2 = L1_2[L2_2]
                                                                if L1_2 then
                                                                  L1_2 = L6_1
                                                                  L2_2 = "callback"
                                                                  L1_2 = L1_2[L2_2]
                                                                  L2_2 = A0_2
                                                                  L1_2(L2_2)
                                                                end
                                                              end
                                                            else
                                                              L1_2 = A0_2.m
                                                              L2_2 = L3_1
                                                              L3_2 = "hostGame"
                                                              L2_2 = L2_2[L3_2]
                                                              L2_2 = L2_2()
                                                              if L1_2 == L2_2 then
                                                                L1_2 = A0_2.r
                                                                if L1_2 then
                                                                  L1_2 = A0_2.r
                                                                  L2_2 = 51
                                                                  if L1_2 == L2_2 then
                                                                    L1_2 = L0_1
                                                                    L1_2 = L1_2.createCustomOverlay
                                                                    L2_2 = 20
                                                                    L1_2(L2_2)
                                                                    L1_2 = L0_1
                                                                    L1_2 = L1_2.analytics
                                                                    L2_2 = "newEvent"
                                                                    L1_2 = L1_2[L2_2]
                                                                    L2_2 = "design"
                                                                    L3_2 = {}
                                                                    L4_2 = "event_id"
                                                                    L5_2 = "server:couldnotfindgame"
                                                                    L3_2[L4_2] = L5_2
                                                                    L4_2 = "area"
                                                                    L5_2 = L0_1
                                                                    L5_2 = L5_2.config
                                                                    L6_2 = "fullVersion"
                                                                    L5_2 = L5_2[L6_2]
                                                                    L3_2[L4_2] = L5_2
                                                                    L1_2(L2_2, L3_2)
                                                                  end
                                                                  L1_2 = L6_1
                                                                  L2_2 = "callback"
                                                                  L1_2 = L1_2[L2_2]
                                                                  if L1_2 then
                                                                    L1_2 = L6_1
                                                                    L2_2 = "callback"
                                                                    L1_2 = L1_2[L2_2]
                                                                    L2_2 = A0_2
                                                                    L1_2(L2_2)
                                                                  end
                                                                end
                                                                L1_2 = A0_2.a
                                                                if L1_2 then
                                                                  L1_2 = L6_1
                                                                  L2_2 = "callback"
                                                                  L1_2 = L1_2[L2_2]
                                                                  if L1_2 then
                                                                    L1_2 = L6_1
                                                                    L2_2 = "callback"
                                                                    L1_2 = L1_2[L2_2]
                                                                    L2_2 = A0_2
                                                                    L1_2(L2_2)
                                                                  end
                                                                end
                                                              else
                                                                L1_2 = A0_2.m
                                                                L2_2 = L3_1
                                                                L3_2 = "inviteFriendToGame"
                                                                L2_2 = L2_2[L3_2]
                                                                L2_2 = L2_2()
                                                                if L1_2 == L2_2 then
                                                                else
                                                                  L1_2 = A0_2.m
                                                                  L2_2 = L3_1
                                                                  L3_2 = "inviteFriendTo2v2Game"
                                                                  L2_2 = L2_2[L3_2]
                                                                  L2_2 = L2_2()
                                                                  if L1_2 == L2_2 then
                                                                  else
                                                                    L1_2 = A0_2.m
                                                                    L2_2 = L3_1
                                                                    L3_2 = "recieveGameInvite"
                                                                    L2_2 = L2_2[L3_2]
                                                                    L2_2 = L2_2()
                                                                    if L1_2 == L2_2 then
                                                                      L1_2 = A0_2.r
                                                                      if L1_2 then
                                                                        return
                                                                      end
                                                                      L1_2 = L9_1
                                                                      L2_2 = A0_2
                                                                      L1_2(L2_2)
                                                                      L1_2 = L0_1
                                                                      L1_2 = L1_2.database
                                                                      L2_2 = "addNewGameInvite"
                                                                      L1_2 = L1_2[L2_2]
                                                                      L2_2 = A0_2
                                                                      L1_2(L2_2)
                                                                      L1_2 = L6_1
                                                                      L2_2 = "callback"
                                                                      L1_2 = L1_2[L2_2]
                                                                      if L1_2 then
                                                                        L1_2 = L6_1
                                                                        L2_2 = "callback"
                                                                        L1_2 = L1_2[L2_2]
                                                                        L2_2 = A0_2
                                                                        L1_2(L2_2)
                                                                      end
                                                                    else
                                                                      L1_2 = A0_2.m
                                                                      L2_2 = L3_1
                                                                      L3_2 = "receive2v2GameInvite"
                                                                      L2_2 = L2_2[L3_2]
                                                                      L2_2 = L2_2()
                                                                      if L1_2 == L2_2 then
                                                                        L1_2 = A0_2.r
                                                                        if L1_2 then
                                                                          return
                                                                        end
                                                                        L1_2 = "invite2v2"
                                                                        L2_2 = true
                                                                        A0_2[L1_2] = L2_2
                                                                        L1_2 = L9_1
                                                                        L2_2 = A0_2
                                                                        L1_2(L2_2)
                                                                        L1_2 = L0_1
                                                                        L1_2 = L1_2.database
                                                                        L2_2 = "addNewGameInvite"
                                                                        L1_2 = L1_2[L2_2]
                                                                        L2_2 = A0_2
                                                                        L1_2(L2_2)
                                                                        L1_2 = L6_1
                                                                        L2_2 = "callback"
                                                                        L1_2 = L1_2[L2_2]
                                                                        if L1_2 then
                                                                          L1_2 = L6_1
                                                                          L2_2 = "callback"
                                                                          L1_2 = L1_2[L2_2]
                                                                          L2_2 = A0_2
                                                                          L1_2(L2_2)
                                                                        end
                                                                      else
                                                                        L1_2 = A0_2.m
                                                                        L2_2 = L3_1
                                                                        L3_2 = "purchaseItem"
                                                                        L2_2 = L2_2[L3_2]
                                                                        L2_2 = L2_2()
                                                                        if L1_2 == L2_2 then
                                                                          L1_2 = A0_2.i
                                                                          if L1_2 then
                                                                            L1_2 = A0_2.r
                                                                            if not L1_2 then
                                                                              L1_2 = L0_1
                                                                              L1_2 = L1_2.debugger
                                                                              L1_2 = L1_2.debugPrint
                                                                              L2_2 = "network"
                                                                              L3_2 = "purchaseItem "
                                                                              L4_2 = A0_2.i
                                                                              L1_2(L2_2, L3_2, L4_2)
                                                                              L1_2 = A0_2.s
                                                                              if L1_2 then
                                                                                L1_2 = tonumber
                                                                                L2_2 = A0_2.s
                                                                                L1_2 = L1_2(L2_2)
                                                                                L2_2 = L0_1
                                                                                L2_2 = L2_2.database
                                                                                L3_2 = "getMoney"
                                                                                L2_2 = L2_2[L3_2]
                                                                                L2_2 = L2_2()
                                                                                L1_2 = L1_2 - L2_2
                                                                                L2_2 = L0_1
                                                                                L2_2 = L2_2.database
                                                                                L2_2 = L2_2.setMoney
                                                                                L3_2 = A0_2.s
                                                                                L2_2(L3_2)
                                                                                L2_2 = 0
                                                                                if L1_2 ~= L2_2 then
                                                                                  L2_2 = L0_1
                                                                                  L2_2 = L2_2.analytics
                                                                                  L3_2 = "addResourceEvent"
                                                                                  L2_2 = L2_2[L3_2]
                                                                                  L3_2 = "Sink"
                                                                                  L4_2 = "coin"
                                                                                  L5_2 = L1_2
                                                                                  L6_2 = L0_1
                                                                                  L6_2 = L6_2.analytics
                                                                                  L7_2 = "ResourceData"
                                                                                  L6_2 = L6_2[L7_2]
                                                                                  L7_2 = "itemType"
                                                                                  L6_2 = L6_2[L7_2]
                                                                                  L7_2 = L0_1
                                                                                  L7_2 = L7_2.analytics
                                                                                  L8_2 = "ResourceData"
                                                                                  L7_2 = L7_2[L8_2]
                                                                                  L8_2 = "itemId"
                                                                                  L7_2 = L7_2[L8_2]
                                                                                  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
                                                                                end
                                                                              end
                                                                              L1_2 = A0_2.h
                                                                              if L1_2 then
                                                                                L1_2 = tonumber
                                                                                L2_2 = A0_2.h
                                                                                L1_2 = L1_2(L2_2)
                                                                                L2_2 = L0_1
                                                                                L2_2 = L2_2.database
                                                                                L3_2 = "getGem"
                                                                                L2_2 = L2_2[L3_2]
                                                                                L2_2 = L2_2()
                                                                                L1_2 = L1_2 - L2_2
                                                                                L2_2 = L0_1
                                                                                L2_2 = L2_2.database
                                                                                L2_2 = L2_2.setGem
                                                                                L3_2 = A0_2.h
                                                                                L2_2(L3_2)
                                                                                L2_2 = 0
                                                                                if L1_2 ~= L2_2 then
                                                                                  L2_2 = L0_1
                                                                                  L2_2 = L2_2.analytics
                                                                                  L3_2 = "addResourceEvent"
                                                                                  L2_2 = L2_2[L3_2]
                                                                                  L3_2 = "Sink"
                                                                                  L4_2 = "gem"
                                                                                  L5_2 = L1_2
                                                                                  L6_2 = L0_1
                                                                                  L6_2 = L6_2.analytics
                                                                                  L7_2 = "ResourceData"
                                                                                  L6_2 = L6_2[L7_2]
                                                                                  L7_2 = "itemType"
                                                                                  L6_2 = L6_2[L7_2]
                                                                                  L7_2 = L0_1
                                                                                  L7_2 = L7_2.analytics
                                                                                  L8_2 = "ResourceData"
                                                                                  L7_2 = L7_2[L8_2]
                                                                                  L8_2 = "itemId"
                                                                                  L7_2 = L7_2[L8_2]
                                                                                  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
                                                                                end
                                                                              end
                                                                              L1_2 = tonumber
                                                                              L2_2 = A0_2.i
                                                                              L1_2 = L1_2(L2_2)
                                                                              L2_2 = 1002
                                                                              if L1_2 ~= L2_2 then
                                                                                L1_2 = L0_1
                                                                                L1_2 = L1_2.database
                                                                                L2_2 = "addItem"
                                                                                L1_2 = L1_2[L2_2]
                                                                                L2_2 = A0_2.i
                                                                                L1_2(L2_2)
                                                                              end
                                                                            end
                                                                          end
                                                                          L1_2 = L6_1
                                                                          L2_2 = "callback"
                                                                          L1_2 = L1_2[L2_2]
                                                                          if L1_2 then
                                                                            L1_2 = L6_1
                                                                            L2_2 = "callback"
                                                                            L1_2 = L1_2[L2_2]
                                                                            L2_2 = A0_2
                                                                            L1_2(L2_2)
                                                                          end
                                                                        else
                                                                          L1_2 = A0_2.m
                                                                          L2_2 = L3_1
                                                                          L3_2 = "setActiveCreature"
                                                                          L2_2 = L2_2[L3_2]
                                                                          L2_2 = L2_2()
                                                                          if L1_2 == L2_2 then
                                                                            L1_2 = A0_2.r
                                                                            if L1_2 then
                                                                              L1_2 = A0_2.r
                                                                              L2_2 = 26
                                                                              if L1_2 == L2_2 then
                                                                              end
                                                                              return
                                                                            end
                                                                            L1_2 = L6_1
                                                                            L2_2 = "callback"
                                                                            L1_2 = L1_2[L2_2]
                                                                            if L1_2 then
                                                                              L1_2 = L6_1
                                                                              L2_2 = "callback"
                                                                              L1_2 = L1_2[L2_2]
                                                                              L2_2 = A0_2
                                                                              L1_2(L2_2)
                                                                            end
                                                                          else
                                                                            L1_2 = A0_2.m
                                                                            L2_2 = L3_1
                                                                            L3_2 = "claimEarnCoins"
                                                                            L2_2 = L2_2[L3_2]
                                                                            L2_2 = L2_2()
                                                                            if L1_2 == L2_2 then
                                                                              L1_2 = A0_2.r
                                                                              if L1_2 then
                                                                                L1_2 = A0_2.r
                                                                                L2_2 = 44
                                                                                if L1_2 == L2_2 then
                                                                                  L1_2 = L0_1
                                                                                  L1_2 = L1_2.createCustomOverlay
                                                                                  L2_2 = 44
                                                                                  L1_2(L2_2)
                                                                                end
                                                                                return
                                                                              end
                                                                              L1_2 = "earncoins"
                                                                              L2_2 = A0_2.i
                                                                              if L2_2 then
                                                                                L2_2 = A0_2.i
                                                                                L3_2 = 7
                                                                                if L2_2 == L3_2 then
                                                                                  L2_2 = L0_1
                                                                                  L2_2 = L2_2.database
                                                                                  L3_2 = "setOnboardingMoneyDone"
                                                                                  L2_2 = L2_2[L3_2]
                                                                                  L2_2()
                                                                                  L1_2 = "tutorial"
                                                                                end
                                                                              end
                                                                              L2_2 = A0_2.s
                                                                              if L2_2 then
                                                                                L2_2 = L0_1
                                                                                L2_2 = L2_2.database
                                                                                L3_2 = "increaseMoney"
                                                                                L2_2 = L2_2[L3_2]
                                                                                L3_2 = A0_2.s
                                                                                L2_2(L3_2)
                                                                                L2_2 = L0_1
                                                                                L2_2 = L2_2.analytics
                                                                                L3_2 = "addResourceEvent"
                                                                                L2_2 = L2_2[L3_2]
                                                                                L3_2 = "Source"
                                                                                L4_2 = "coin"
                                                                                L5_2 = tonumber
                                                                                L6_2 = A0_2.s
                                                                                L5_2 = L5_2(L6_2)
                                                                                L6_2 = "rewards"
                                                                                L7_2 = L1_2
                                                                                L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
                                                                              end
                                                                              L2_2 = L6_1
                                                                              L3_2 = "callback"
                                                                              L2_2 = L2_2[L3_2]
                                                                              if L2_2 then
                                                                                L2_2 = L6_1
                                                                                L3_2 = "callback"
                                                                                L2_2 = L2_2[L3_2]
                                                                                L3_2 = A0_2
                                                                                L2_2(L3_2)
                                                                              end
                                                                            else
                                                                              L1_2 = A0_2.m
                                                                              L2_2 = L3_1
                                                                              L3_2 = "claimAchievement"
                                                                              L2_2 = L2_2[L3_2]
                                                                              L2_2 = L2_2()
                                                                              if L1_2 == L2_2 then
                                                                                L1_2 = A0_2.r
                                                                                if L1_2 then
                                                                                  L1_2 = A0_2.r
                                                                                  L2_2 = 44
                                                                                  if L1_2 == L2_2 then
                                                                                    L1_2 = L0_1
                                                                                    L1_2 = L1_2.createCustomOverlay
                                                                                    L2_2 = 43
                                                                                    L1_2(L2_2)
                                                                                  end
                                                                                  return
                                                                                end
                                                                                L1_2 = A0_2.s
                                                                                if L1_2 then
                                                                                  L1_2 = L0_1
                                                                                  L1_2 = L1_2.database
                                                                                  L2_2 = "increaseMoney"
                                                                                  L1_2 = L1_2[L2_2]
                                                                                  L2_2 = A0_2.s
                                                                                  L1_2(L2_2)
                                                                                  L1_2 = L0_1
                                                                                  L1_2 = L1_2.analytics
                                                                                  L2_2 = "addResourceEvent"
                                                                                  L1_2 = L1_2[L2_2]
                                                                                  L2_2 = "Source"
                                                                                  L3_2 = "coin"
                                                                                  L4_2 = tonumber
                                                                                  L5_2 = A0_2.s
                                                                                  L4_2 = L4_2(L5_2)
                                                                                  L5_2 = "rewards"
                                                                                  L6_2 = "achievement"
                                                                                  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
                                                                                end
                                                                                L1_2 = L6_1
                                                                                L2_2 = "callback"
                                                                                L1_2 = L1_2[L2_2]
                                                                                if L1_2 then
                                                                                  L1_2 = L6_1
                                                                                  L2_2 = "callback"
                                                                                  L1_2 = L1_2[L2_2]
                                                                                  L2_2 = A0_2
                                                                                  L1_2(L2_2)
                                                                                end
                                                                                L1_2 = A0_2.b
                                                                                if L1_2 then
                                                                                  L1_2 = L0_1
                                                                                  L1_2 = L1_2.database
                                                                                  L2_2 = "addItem"
                                                                                  L1_2 = L1_2[L2_2]
                                                                                  L2_2 = A0_2.b
                                                                                  L1_2(L2_2)
                                                                                  
                                                                                  function L1_2()
                                                                                    local L0_3, L1_3, L2_3, L3_3
                                                                                    L0_3 = {}
                                                                                    L0_3.isModal = true
                                                                                    L1_3 = L0_1
                                                                                    L1_3 = L1_3.showOverlay
                                                                                    L2_3 = "lua.overlays.achievementsScene"
                                                                                    L3_3 = L0_3
                                                                                    L1_3(L2_3, L3_3)
                                                                                  end
                                                                                  
                                                                                  L2_2 = {}
                                                                                  L3_2 = true
                                                                                  L2_2.isModal = L3_2
                                                                                  L3_2 = {}
                                                                                  L4_2 = "item"
                                                                                  L5_2 = L0_1
                                                                                  L6_2 = "storeConfig"
                                                                                  L5_2 = L5_2[L6_2]
                                                                                  L6_2 = "getItem"
                                                                                  L5_2 = L5_2[L6_2]
                                                                                  L6_2 = A0_2.b
                                                                                  L5_2 = L5_2(L6_2)
                                                                                  L3_2[L4_2] = L5_2
                                                                                  L4_2 = "freeItem"
                                                                                  L5_2 = true
                                                                                  L3_2[L4_2] = L5_2
                                                                                  L4_2 = "onCloseFunction"
                                                                                  L3_2[L4_2] = L1_2
                                                                                  L2_2.params = L3_2
                                                                                  L3_2 = L0_1
                                                                                  L4_2 = "storeConfig"
                                                                                  L3_2 = L3_2[L4_2]
                                                                                  L4_2 = "getItemCategory"
                                                                                  L3_2 = L3_2[L4_2]
                                                                                  L4_2 = A0_2.b
                                                                                  L3_2 = L3_2(L4_2)
                                                                                  L4_2 = L2_2.params
                                                                                  L5_2 = "item"
                                                                                  L4_2 = L4_2[L5_2]
                                                                                  L5_2 = "imagePath"
                                                                                  L6_2 = "images/gui/market/items/"
                                                                                  L7_2 = L3_2
                                                                                  L8_2 = "/"
                                                                                  L9_2 = A0_2.b
                                                                                  L10_2 = ".png"
                                                                                  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
                                                                                  L4_2[L5_2] = L6_2
                                                                                  L4_2 = L0_1
                                                                                  L4_2 = L4_2.showOverlay
                                                                                  L5_2 = "lua.overlays.marketFree"
                                                                                  L6_2 = L2_2
                                                                                  L4_2(L5_2, L6_2)
                                                                                  L4_2 = L0_1
                                                                                  L4_2 = L4_2.debugger
                                                                                  L4_2 = L4_2.debugPrint
                                                                                  L5_2 = "network"
                                                                                  L6_2 = "Got item from claiming achievement "
                                                                                  L7_2 = A0_2.b
                                                                                  L4_2(L5_2, L6_2, L7_2)
                                                                                end
                                                                              else
                                                                                L1_2 = A0_2.m
                                                                                L2_2 = L3_1
                                                                                L3_2 = "claimConsecutiveLogin"
                                                                                L2_2 = L2_2[L3_2]
                                                                                L2_2 = L2_2()
                                                                                if L1_2 == L2_2 then
                                                                                  L1_2 = A0_2.r
                                                                                  if L1_2 then
                                                                                    return
                                                                                  end
                                                                                  L1_2 = A0_2.c
                                                                                  if L1_2 then
                                                                                    L1_2 = A0_2.c
                                                                                    L2_2 = 0
                                                                                    if L1_2 > L2_2 then
                                                                                      L1_2 = L0_1
                                                                                      L1_2 = L1_2.database
                                                                                      L2_2 = "increaseMoney"
                                                                                      L1_2 = L1_2[L2_2]
                                                                                      L2_2 = A0_2.c
                                                                                      L1_2(L2_2)
                                                                                      L1_2 = L0_1
                                                                                      L1_2 = L1_2.analytics
                                                                                      L2_2 = "addResourceEvent"
                                                                                      L1_2 = L1_2[L2_2]
                                                                                      L2_2 = "Source"
                                                                                      L3_2 = "coin"
                                                                                      L4_2 = tonumber
                                                                                      L5_2 = A0_2.c
                                                                                      L4_2 = L4_2(L5_2)
                                                                                      L5_2 = "rewards"
                                                                                      L6_2 = "consecutiveLogin"
                                                                                      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
                                                                                    end
                                                                                  end
                                                                                  L1_2 = A0_2.s
                                                                                  if L1_2 then
                                                                                    L1_2 = A0_2.s
                                                                                    L2_2 = 0
                                                                                    if L1_2 > L2_2 then
                                                                                      L1_2 = L0_1
                                                                                      L1_2 = L1_2.data
                                                                                      L1_2 = L1_2.playerInfo
                                                                                      L1_2 = L1_2.spins
                                                                                      if L1_2 then
                                                                                        L1_2 = L0_1
                                                                                        L1_2 = L1_2.data
                                                                                        L1_2 = L1_2.playerInfo
                                                                                        L2_2 = L0_1
                                                                                        L2_2 = L2_2.data
                                                                                        L2_2 = L2_2.playerInfo
                                                                                        L2_2 = L2_2.spins
                                                                                        L3_2 = A0_2.s
                                                                                        L2_2 = L2_2 + L3_2
                                                                                        L1_2.spins = L2_2
                                                                                      else
                                                                                        L1_2 = L0_1
                                                                                        L1_2 = L1_2.data
                                                                                        L1_2 = L1_2.playerInfo
                                                                                        L2_2 = A0_2.s
                                                                                        L1_2.spins = L2_2
                                                                                      end
                                                                                      L1_2 = L0_1
                                                                                      L1_2 = L1_2.analytics
                                                                                      L2_2 = "addResourceEvent"
                                                                                      L1_2 = L1_2[L2_2]
                                                                                      L2_2 = "Source"
                                                                                      L3_2 = "spin"
                                                                                      L4_2 = tonumber
                                                                                      L5_2 = A0_2.s
                                                                                      L4_2 = L4_2(L5_2)
                                                                                      L5_2 = "rewards"
                                                                                      L6_2 = "consecutiveLogin"
                                                                                      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
                                                                                      L1_2 = L0_1
                                                                                      L1_2 = L1_2.showOverlay
                                                                                      L2_2 = "lua.overlays.spinningWheel"
                                                                                      L3_2 = {}
                                                                                      L4_2 = true
                                                                                      L3_2.isModal = L4_2
                                                                                      L4_2 = {}
                                                                                      L3_2.params = L4_2
                                                                                      L1_2(L2_2, L3_2)
                                                                                    end
                                                                                  end
                                                                                  L1_2 = "g"
                                                                                  L1_2 = A0_2[L1_2]
                                                                                  if L1_2 then
                                                                                    L1_2 = L0_1
                                                                                    L1_2 = L1_2.analytics
                                                                                    L2_2 = "ResourceData"
                                                                                    L1_2 = L1_2[L2_2]
                                                                                    L2_2 = "itemType"
                                                                                    L3_2 = "rewards"
                                                                                    L1_2[L2_2] = L3_2
                                                                                    L1_2 = L0_1
                                                                                    L1_2 = L1_2.analytics
                                                                                    L2_2 = "ResourceData"
                                                                                    L1_2 = L1_2[L2_2]
                                                                                    L2_2 = "itemId"
                                                                                    L3_2 = "consecutiveLogin"
                                                                                    L1_2[L2_2] = L3_2
                                                                                  end
                                                                                  L1_2 = A0_2.h
                                                                                  if L1_2 then
                                                                                    L1_2 = A0_2.h
                                                                                    L2_2 = 0
                                                                                    if L1_2 > L2_2 then
                                                                                      L1_2 = L0_1
                                                                                      L1_2 = L1_2.database
                                                                                      L2_2 = "increaseGem"
                                                                                      L1_2 = L1_2[L2_2]
                                                                                      L2_2 = A0_2.h
                                                                                      L1_2(L2_2)
                                                                                      L1_2 = L0_1
                                                                                      L1_2 = L1_2.analytics
                                                                                      L2_2 = "addResourceEvent"
                                                                                      L1_2 = L1_2[L2_2]
                                                                                      L2_2 = "Source"
                                                                                      L3_2 = "gem"
                                                                                      L4_2 = tonumber
                                                                                      L5_2 = A0_2.h
                                                                                      L4_2 = L4_2(L5_2)
                                                                                      L5_2 = "rewards"
                                                                                      L6_2 = "consecutiveLogin"
                                                                                      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
                                                                                    end
                                                                                  end
                                                                                  L1_2 = L6_1
                                                                                  L2_2 = "callback"
                                                                                  L1_2 = L1_2[L2_2]
                                                                                  if L1_2 then
                                                                                    L1_2 = L6_1
                                                                                    L2_2 = "callback"
                                                                                    L1_2 = L1_2[L2_2]
                                                                                    L2_2 = A0_2
                                                                                    L1_2(L2_2)
                                                                                  end
                                                                                else
                                                                                  L1_2 = A0_2.m
                                                                                  L2_2 = L3_1
                                                                                  L3_2 = "gotAchievement"
                                                                                  L2_2 = L2_2[L3_2]
                                                                                  L2_2 = L2_2()
                                                                                  if L1_2 == L2_2 then
                                                                                    L1_2 = A0_2.r
                                                                                    if L1_2 then
                                                                                      return
                                                                                    end
                                                                                    L1_2 = A0_2.t
                                                                                    if L1_2 then
                                                                                      L1_2 = A0_2.i
                                                                                      if L1_2 then
                                                                                        L1_2 = {}
                                                                                        L2_2 = 1
                                                                                        L3_2 = 0
                                                                                        L1_2[L2_2] = L3_2
                                                                                        L2_2 = 2
                                                                                        L3_2 = A0_2.t
                                                                                        L1_2[L2_2] = L3_2
                                                                                        L2_2 = 3
                                                                                        L3_2 = A0_2.i
                                                                                        L1_2[L2_2] = L3_2
                                                                                        L2_2 = 4
                                                                                        L3_2 = A0_2.s
                                                                                        L1_2[L2_2] = L3_2
                                                                                        L2_2 = L1_1
                                                                                        L3_2 = "showAchivement"
                                                                                        L2_2 = L2_2[L3_2]
                                                                                        L3_2 = L1_2
                                                                                        L2_2(L3_2)
                                                                                      end
                                                                                    end
                                                                                  else
                                                                                    L1_2 = A0_2.m
                                                                                    L2_2 = L3_1
                                                                                    L3_2 = "consecutiveLoginAccomplished"
                                                                                    L2_2 = L2_2[L3_2]
                                                                                    L2_2 = L2_2()
                                                                                    if L1_2 == L2_2 then
                                                                                      L1_2 = L0_1
                                                                                      L1_2 = L1_2.consecutiveLoginsCount
                                                                                      if L1_2 then
                                                                                        L1_2 = L0_1
                                                                                        L1_2 = L1_2.consecutiveLoginsFormatted
                                                                                        if L1_2 then
                                                                                          L1_2 = L0_1
                                                                                          L1_2 = L1_2.consecutiveLoginsFormatted
                                                                                          L1_2 = #L1_2
                                                                                          L2_2 = 0
                                                                                          if L1_2 > L2_2 then
                                                                                            L1_2 = L0_1
                                                                                            L2_2 = "awards"
                                                                                            L1_2 = L1_2[L2_2]
                                                                                            L2_2 = "getConsecutiveDayConstant"
                                                                                            L1_2 = L1_2[L2_2]
                                                                                            L2_2 = L0_1
                                                                                            L2_2 = L2_2.consecutiveLoginsCount
                                                                                            L1_2 = L1_2(L2_2)
                                                                                            L2_2 = "max"
                                                                                            L2_2 = L1_2[L2_2]
                                                                                            L3_2 = L0_1
                                                                                            L3_2 = L3_2.consecutiveLoginsFormatted
                                                                                            L4_2 = 1
                                                                                            L3_2 = L3_2[L4_2]
                                                                                            L4_2 = L3_2.p
                                                                                            if L2_2 > L4_2 then
                                                                                              L3_2.p = L2_2
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    else
                                                                                      L1_2 = A0_2.m
                                                                                      L2_2 = L3_1
                                                                                      L3_2 = "claimDailyChallenge"
                                                                                      L2_2 = L2_2[L3_2]
                                                                                      L2_2 = L2_2()
                                                                                      if L1_2 == L2_2 then
                                                                                        L1_2 = A0_2.r
                                                                                        if L1_2 then
                                                                                          L1_2 = A0_2.r
                                                                                          L2_2 = 45
                                                                                          if L1_2 == L2_2 then
                                                                                            L1_2 = L0_1
                                                                                            L1_2 = L1_2.createCustomOverlay
                                                                                            L2_2 = 30
                                                                                            L1_2(L2_2)
                                                                                          end
                                                                                          return
                                                                                        end
                                                                                        L1_2 = A0_2.s
                                                                                        if L1_2 then
                                                                                          L1_2 = L0_1
                                                                                          L1_2 = L1_2.database
                                                                                          L2_2 = "increaseMoney"
                                                                                          L1_2 = L1_2[L2_2]
                                                                                          L2_2 = A0_2.s
                                                                                          L1_2(L2_2)
                                                                                        end
                                                                                        L1_2 = L6_1
                                                                                        L2_2 = "callback"
                                                                                        L1_2 = L1_2[L2_2]
                                                                                        if L1_2 then
                                                                                          L1_2 = L6_1
                                                                                          L2_2 = "callback"
                                                                                          L1_2 = L1_2[L2_2]
                                                                                          L2_2 = A0_2
                                                                                          L1_2(L2_2)
                                                                                        end
                                                                                      else
                                                                                        L1_2 = A0_2.m
                                                                                        L2_2 = L3_1
                                                                                        L3_2 = "getEarnCoins"
                                                                                        L2_2 = L2_2[L3_2]
                                                                                        L2_2 = L2_2()
                                                                                        if L1_2 == L2_2 then
                                                                                          L1_2 = A0_2.a
                                                                                          if L1_2 then
                                                                                            L1_2 = L0_1
                                                                                            L1_2 = L1_2.database
                                                                                            L2_2 = "getOnboardingMoney"
                                                                                            L1_2 = L1_2[L2_2]
                                                                                            L1_2 = L1_2()
                                                                                            if L1_2 then
                                                                                              L1_2 = false
                                                                                              L2_2 = 1
                                                                                              L3_2 = A0_2.a
                                                                                              L3_2 = #L3_2
                                                                                              L4_2 = 1
                                                                                              for L5_2 = L2_2, L3_2, L4_2 do
                                                                                                L6_2 = A0_2.a
                                                                                                L6_2 = L6_2[L5_2]
                                                                                                L7_2 = 7
                                                                                                if L6_2 == L7_2 then
                                                                                                  L1_2 = true
                                                                                                  break
                                                                                                end
                                                                                              end
                                                                                              if not L1_2 then
                                                                                              else
                                                                                                L2_2 = L0_1
                                                                                                L2_2 = L2_2.database
                                                                                                L3_2 = "setOnboardingMoneyDone"
                                                                                                L2_2 = L2_2[L3_2]
                                                                                                L2_2()
                                                                                              end
                                                                                            end
                                                                                            L1_2 = L6_1
                                                                                            L2_2 = "callback"
                                                                                            L1_2 = L1_2[L2_2]
                                                                                            if L1_2 then
                                                                                              L1_2 = L6_1
                                                                                              L2_2 = "callback"
                                                                                              L1_2 = L1_2[L2_2]
                                                                                              L2_2 = A0_2
                                                                                              L1_2(L2_2)
                                                                                            end
                                                                                          end
                                                                                        else
                                                                                          L1_2 = A0_2.m
                                                                                          L2_2 = L3_1
                                                                                          L3_2 = "getDailyChallenge"
                                                                                          L2_2 = L2_2[L3_2]
                                                                                          L2_2 = L2_2()
                                                                                          if L1_2 == L2_2 then
                                                                                            L1_2 = A0_2.r
                                                                                            if L1_2 then
                                                                                              L1_2 = A0_2.r
                                                                                              L2_2 = 52
                                                                                              if L1_2 == L2_2 then
                                                                                                L1_2 = L0_1
                                                                                                L1_2 = L1_2.createCustomOverlay
                                                                                                L2_2 = 31
                                                                                                L1_2(L2_2)
                                                                                              end
                                                                                              return
                                                                                            end
                                                                                            L1_2 = A0_2.c
                                                                                            if L1_2 then
                                                                                              L1_2 = A0_2.d
                                                                                              if L1_2 then
                                                                                                L1_2 = A0_2.d
                                                                                                L2_2 = {}
                                                                                                L3_2 = #L2_2
                                                                                                L4_2 = 1
                                                                                                L3_2 = L3_2 + L4_2
                                                                                                L4_2 = A0_2.c
                                                                                                L2_2[L3_2] = L4_2
                                                                                                L3_2 = 1
                                                                                                L4_2 = 6
                                                                                                L5_2 = 1
                                                                                                for L6_2 = L3_2, L4_2, L5_2 do
                                                                                                  L7_2 = #L2_2
                                                                                                  L8_2 = 1
                                                                                                  L7_2 = L7_2 + L8_2
                                                                                                  L8_2 = {}
                                                                                                  L2_2[L7_2] = L8_2
                                                                                                end
                                                                                                L3_2 = L0_1
                                                                                                L3_2.consecutiveLoginsCount = L1_2
                                                                                                L3_2 = L0_1
                                                                                                L3_2.consecutiveLoginsFormatted = L2_2
                                                                                              end
                                                                                            end
                                                                                            L1_2 = A0_2.a
                                                                                            if L1_2 then
                                                                                              L1_2 = L6_1
                                                                                              L2_2 = "callback"
                                                                                              L1_2 = L1_2[L2_2]
                                                                                              if L1_2 then
                                                                                                L1_2 = L6_1
                                                                                                L2_2 = "callback"
                                                                                                L1_2 = L1_2[L2_2]
                                                                                                L2_2 = A0_2
                                                                                                L1_2(L2_2)
                                                                                              end
                                                                                            end
                                                                                          else
                                                                                            L1_2 = A0_2.m
                                                                                            L2_2 = L3_1
                                                                                            L3_2 = "rateCrazyRace"
                                                                                            L2_2 = L2_2[L3_2]
                                                                                            L2_2 = L2_2()
                                                                                            if L1_2 == L2_2 then
                                                                                            else
                                                                                              L1_2 = A0_2.m
                                                                                              L2_2 = L3_1
                                                                                              L3_2 = "getAchievementList"
                                                                                              L2_2 = L2_2[L3_2]
                                                                                              L2_2 = L2_2()
                                                                                              if L1_2 == L2_2 then
                                                                                                L1_2 = A0_2.a
                                                                                                if L1_2 then
                                                                                                  L1_2 = L6_1
                                                                                                  L2_2 = "callback"
                                                                                                  L1_2 = L1_2[L2_2]
                                                                                                  if L1_2 then
                                                                                                    L1_2 = L6_1
                                                                                                    L2_2 = "callback"
                                                                                                    L1_2 = L1_2[L2_2]
                                                                                                    L2_2 = A0_2
                                                                                                    L1_2(L2_2)
                                                                                                  end
                                                                                                end
                                                                                              else
                                                                                                L1_2 = A0_2.m
                                                                                                L2_2 = L3_1
                                                                                                L3_2 = "useSpin"
                                                                                                L2_2 = L2_2[L3_2]
                                                                                                L2_2 = L2_2()
                                                                                                if L1_2 == L2_2 then
                                                                                                  L1_2 = A0_2.i
                                                                                                  if L1_2 then
                                                                                                    L1_2 = A0_2.v
                                                                                                    if L1_2 then
                                                                                                      L1_2 = L6_1
                                                                                                      L2_2 = "callback"
                                                                                                      L1_2 = L1_2[L2_2]
                                                                                                      if L1_2 then
                                                                                                        L1_2 = L6_1
                                                                                                        L2_2 = "callback"
                                                                                                        L1_2 = L1_2[L2_2]
                                                                                                        L2_2 = A0_2
                                                                                                        L1_2(L2_2)
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                else
                                                                                                  L1_2 = A0_2.m
                                                                                                  L2_2 = L3_1
                                                                                                  L3_2 = "seenBoostVideo"
                                                                                                  L2_2 = L2_2[L3_2]
                                                                                                  L2_2 = L2_2()
                                                                                                  if L1_2 == L2_2 then
                                                                                                    L1_2 = A0_2.r
                                                                                                    if L1_2 then
                                                                                                      return
                                                                                                    end
                                                                                                    L1_2 = L0_1
                                                                                                    L1_2 = L1_2.adBoostsLeft
                                                                                                    if L1_2 then
                                                                                                      L1_2 = L0_1
                                                                                                      L1_2 = L1_2.adBoostsLeft
                                                                                                      L2_2 = 0
                                                                                                      if L1_2 > L2_2 then
                                                                                                        L1_2 = L0_1
                                                                                                        L2_2 = L0_1
                                                                                                        L2_2 = L2_2.adBoostsLeft
                                                                                                        L3_2 = 1
                                                                                                        L2_2 = L2_2 - L3_2
                                                                                                        L1_2.adBoostsLeft = L2_2
                                                                                                      end
                                                                                                    else
                                                                                                      L1_2 = L0_1
                                                                                                      L2_2 = 0
                                                                                                      L1_2.adBoostsLeft = L2_2
                                                                                                    end
                                                                                                  else
                                                                                                    L1_2 = A0_2.m
                                                                                                    L2_2 = L3_1
                                                                                                    L3_2 = "seenBoostVideoSingle"
                                                                                                    L2_2 = L2_2[L3_2]
                                                                                                    L2_2 = L2_2()
                                                                                                    if L1_2 == L2_2 then
                                                                                                      L1_2 = A0_2.r
                                                                                                      if L1_2 then
                                                                                                        return
                                                                                                      end
                                                                                                      L1_2 = L0_1
                                                                                                      L1_2 = L1_2.adBoostsLeft
                                                                                                      if L1_2 then
                                                                                                        L1_2 = L0_1
                                                                                                        L1_2 = L1_2.adBoostsLeft
                                                                                                        L2_2 = 0
                                                                                                        if L1_2 > L2_2 then
                                                                                                          L1_2 = L0_1
                                                                                                          L2_2 = L0_1
                                                                                                          L2_2 = L2_2.adBoostsLeft
                                                                                                          L3_2 = 1
                                                                                                          L2_2 = L2_2 - L3_2
                                                                                                          L1_2.adBoostsLeft = L2_2
                                                                                                        end
                                                                                                      else
                                                                                                        L1_2 = L0_1
                                                                                                        L2_2 = 0
                                                                                                        L1_2.adBoostsLeft = L2_2
                                                                                                      end
                                                                                                      L1_2 = A0_2.t
                                                                                                      if not L1_2 then
                                                                                                        L1_2 = "soft"
                                                                                                      end
                                                                                                      L2_2 = L0_1
                                                                                                      L2_2 = L2_2.analytics
                                                                                                      L3_2 = "ResourceData"
                                                                                                      L2_2 = L2_2[L3_2]
                                                                                                      L3_2 = "itemId"
                                                                                                      L2_2 = L2_2[L3_2]
                                                                                                      if not L2_2 then
                                                                                                        L2_2 = "postGameVideo"
                                                                                                      end
                                                                                                      L3_2 = A0_2.s
                                                                                                      if L3_2 then
                                                                                                        L3_2 = "soft"
                                                                                                        if L1_2 == L3_2 then
                                                                                                          L3_2 = L0_1
                                                                                                          L3_2 = L3_2.database
                                                                                                          L4_2 = "increaseMoney"
                                                                                                          L3_2 = L3_2[L4_2]
                                                                                                          L4_2 = tonumber
                                                                                                          L5_2 = A0_2.s
                                                                                                          L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2)
                                                                                                          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
                                                                                                          L3_2 = L0_1
                                                                                                          L3_2 = L3_2.analytics
                                                                                                          L4_2 = "addResourceEvent"
                                                                                                          L3_2 = L3_2[L4_2]
                                                                                                          L4_2 = "Source"
                                                                                                          L5_2 = "coin"
                                                                                                          L6_2 = tonumber
                                                                                                          L7_2 = A0_2.s
                                                                                                          L6_2 = L6_2(L7_2)
                                                                                                          L7_2 = "rewards"
                                                                                                          L8_2 = L2_2
                                                                                                          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
                                                                                                        else
                                                                                                          L3_2 = "hard"
                                                                                                          if L1_2 == L3_2 then
                                                                                                            L3_2 = L0_1
                                                                                                            L3_2 = L3_2.database
                                                                                                            L4_2 = "increaseGem"
                                                                                                            L3_2 = L3_2[L4_2]
                                                                                                            L4_2 = tonumber
                                                                                                            L5_2 = A0_2.s
                                                                                                            L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2)
                                                                                                            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
                                                                                                            L3_2 = L0_1
                                                                                                            L3_2 = L3_2.analytics
                                                                                                            L4_2 = "addResourceEvent"
                                                                                                            L3_2 = L3_2[L4_2]
                                                                                                            L4_2 = "Source"
                                                                                                            L5_2 = "gem"
                                                                                                            L6_2 = tonumber
                                                                                                            L7_2 = A0_2.s
                                                                                                            L6_2 = L6_2(L7_2)
                                                                                                            L7_2 = "rewards"
                                                                                                            L8_2 = L2_2
                                                                                                            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
                                                                                                          else
                                                                                                            L3_2 = "spin"
                                                                                                            if L1_2 == L3_2 then
                                                                                                              L3_2 = L0_1
                                                                                                              L3_2 = L3_2.data
                                                                                                              L3_2 = L3_2.playerInfo
                                                                                                              L4_2 = L0_1
                                                                                                              L4_2 = L4_2.data
                                                                                                              L4_2 = L4_2.playerInfo
                                                                                                              L4_2 = L4_2.spins
                                                                                                              L5_2 = tonumber
                                                                                                              L6_2 = A0_2.s
                                                                                                              L5_2 = L5_2(L6_2)
                                                                                                              L4_2 = L4_2 + L5_2
                                                                                                              L3_2.spins = L4_2
                                                                                                              L3_2 = L0_1
                                                                                                              L3_2 = L3_2.analytics
                                                                                                              L4_2 = "addResourceEvent"
                                                                                                              L3_2 = L3_2[L4_2]
                                                                                                              L4_2 = "Source"
                                                                                                              L5_2 = "spin"
                                                                                                              L6_2 = tonumber
                                                                                                              L7_2 = A0_2.s
                                                                                                              L6_2 = L6_2(L7_2)
                                                                                                              L7_2 = "rewards"
                                                                                                              L8_2 = L2_2
                                                                                                              L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                      L3_2 = print
                                                                                                      L4_2 = "Seen boost video OK response, decrementing remaining ad boosts. Remaining boosts "
                                                                                                      L5_2 = L0_1
                                                                                                      L5_2 = L5_2.adBoostsLeft
                                                                                                      L4_2 = L4_2 .. L5_2
                                                                                                      L3_2(L4_2)
                                                                                                      L3_2 = L6_1
                                                                                                      L4_2 = "callback"
                                                                                                      L3_2 = L3_2[L4_2]
                                                                                                      if L3_2 then
                                                                                                        L3_2 = L6_1
                                                                                                        L4_2 = "callback"
                                                                                                        L3_2 = L3_2[L4_2]
                                                                                                        L4_2 = A0_2
                                                                                                        L3_2(L4_2)
                                                                                                      end
                                                                                                    else
                                                                                                      L1_2 = A0_2.m
                                                                                                      L2_2 = L3_1
                                                                                                      L3_2 = "seenVideo"
                                                                                                      L2_2 = L2_2[L3_2]
                                                                                                      L2_2 = L2_2()
                                                                                                      if L1_2 == L2_2 then
                                                                                                        L1_2 = A0_2.r
                                                                                                        if L1_2 then
                                                                                                          return
                                                                                                        end
                                                                                                        L1_2 = A0_2.s
                                                                                                        if L1_2 then
                                                                                                          L1_2 = L0_1
                                                                                                          L1_2 = L1_2.database
                                                                                                          L2_2 = "increaseMoney"
                                                                                                          L1_2 = L1_2[L2_2]
                                                                                                          L2_2 = A0_2.s
                                                                                                          L1_2(L2_2)
                                                                                                          L1_2 = L0_1
                                                                                                          L1_2 = L1_2.analytics
                                                                                                          L2_2 = "addResourceEvent"
                                                                                                          L1_2 = L1_2[L2_2]
                                                                                                          L2_2 = "Source"
                                                                                                          L3_2 = "coin"
                                                                                                          L4_2 = tonumber
                                                                                                          L5_2 = A0_2.s
                                                                                                          L4_2 = L4_2(L5_2)
                                                                                                          L5_2 = "rewards"
                                                                                                          L6_2 = "earnCoinsVideo"
                                                                                                          L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
                                                                                                        end
                                                                                                        L1_2 = L6_1
                                                                                                        L2_2 = "callback"
                                                                                                        L1_2 = L1_2[L2_2]
                                                                                                        if L1_2 then
                                                                                                          L1_2 = L6_1
                                                                                                          L2_2 = "callback"
                                                                                                          L1_2 = L1_2[L2_2]
                                                                                                          L2_2 = A0_2
                                                                                                          L1_2(L2_2)
                                                                                                        end
                                                                                                      else
                                                                                                        L1_2 = A0_2.m
                                                                                                        L2_2 = L3_1
                                                                                                        L3_2 = "reportPlayer"
                                                                                                        L2_2 = L2_2[L3_2]
                                                                                                        L2_2 = L2_2()
                                                                                                        if L1_2 == L2_2 then
                                                                                                        else
                                                                                                          L1_2 = A0_2.m
                                                                                                          L2_2 = L3_1
                                                                                                          L3_2 = "getReportStatus"
                                                                                                          L2_2 = L2_2[L3_2]
                                                                                                          L2_2 = L2_2()
                                                                                                          if L1_2 == L2_2 then
                                                                                                            L1_2 = L6_1
                                                                                                            L2_2 = "callback"
                                                                                                            L1_2 = L1_2[L2_2]
                                                                                                            if L1_2 then
                                                                                                              L1_2 = L6_1
                                                                                                              L2_2 = "callback"
                                                                                                              L1_2 = L1_2[L2_2]
                                                                                                              L2_2 = A0_2
                                                                                                              L1_2(L2_2)
                                                                                                            end
                                                                                                          else
                                                                                                            L1_2 = A0_2.m
                                                                                                            L2_2 = L3_1
                                                                                                            L3_2 = "getBestLevelTimes"
                                                                                                            L2_2 = L2_2[L3_2]
                                                                                                            L2_2 = L2_2()
                                                                                                            if L1_2 == L2_2 then
                                                                                                              L1_2 = A0_2.t
                                                                                                              if L1_2 then
                                                                                                                L1_2 = L0_1
                                                                                                                L2_2 = "bestLevelTimes"
                                                                                                                L3_2 = {}
                                                                                                                L1_2[L2_2] = L3_2
                                                                                                                L1_2 = pairs
                                                                                                                L2_2 = A0_2.t
                                                                                                                L1_2, L2_2, L3_2 = L1_2(L2_2)
                                                                                                                for L4_2, L5_2 in L1_2, L2_2, L3_2 do
                                                                                                                  L6_2 = L0_1
                                                                                                                  L7_2 = "bestLevelTimes"
                                                                                                                  L6_2 = L6_2[L7_2]
                                                                                                                  L7_2 = ""
                                                                                                                  L8_2 = L4_2
                                                                                                                  L7_2 = L7_2 .. L8_2
                                                                                                                  L6_2[L7_2] = L5_2
                                                                                                                end
                                                                                                              end
                                                                                                            else
                                                                                                              L1_2 = A0_2.m
                                                                                                              L2_2 = L3_1
                                                                                                              L3_2 = "levelUp"
                                                                                                              L2_2 = L2_2[L3_2]
                                                                                                              L2_2 = L2_2()
                                                                                                              if L1_2 == L2_2 then
                                                                                                              else
                                                                                                                L1_2 = A0_2.m
                                                                                                                L2_2 = L3_1
                                                                                                                L3_2 = "reachedDailyMaxGamesLimit"
                                                                                                                L2_2 = L2_2[L3_2]
                                                                                                                L2_2 = L2_2()
                                                                                                                if L1_2 == L2_2 then
                                                                                                                  L1_2 = L0_1
                                                                                                                  L2_2 = "reachedMaxGames"
                                                                                                                  L1_2[L2_2] = A0_2
                                                                                                                else
                                                                                                                  L1_2 = A0_2.m
                                                                                                                  L2_2 = L3_1
                                                                                                                  L3_2 = "heartbeat"
                                                                                                                  L2_2 = L2_2[L3_2]
                                                                                                                  L2_2 = L2_2()
                                                                                                                  if L1_2 == L2_2 then
                                                                                                                    L1_2 = L6_1
                                                                                                                    L2_2 = "callback"
                                                                                                                    L1_2 = L1_2[L2_2]
                                                                                                                    if L1_2 then
                                                                                                                      L1_2 = L6_1
                                                                                                                      L2_2 = "callback"
                                                                                                                      L1_2 = L1_2[L2_2]
                                                                                                                      L2_2 = A0_2
                                                                                                                      L1_2(L2_2)
                                                                                                                    end
                                                                                                                  else
                                                                                                                    L1_2 = A0_2.m
                                                                                                                    L2_2 = L3_1
                                                                                                                    L3_2 = "newLeagueState"
                                                                                                                    L2_2 = L2_2[L3_2]
                                                                                                                    L2_2 = L2_2()
                                                                                                                    if L1_2 == L2_2 then
                                                                                                                      L1_2 = print
                                                                                                                      L2_2 = "Got new league state message"
                                                                                                                      L1_2(L2_2)
                                                                                                                      L1_2 = A0_2.l
                                                                                                                      L1_2 = L1_2.l
                                                                                                                      L2_2 = A0_2.c
                                                                                                                      L3_2 = A0_2.l
                                                                                                                      L3_2 = L3_2.d
                                                                                                                      L4_2 = A0_2.l
                                                                                                                      L4_2 = L4_2.p
                                                                                                                      L5_2 = A0_2.l
                                                                                                                      L6_2 = "w"
                                                                                                                      L5_2 = L5_2[L6_2]
                                                                                                                      L6_2 = A0_2.r
                                                                                                                      L7_2 = L0_1
                                                                                                                      L7_2.currentLeague = L1_2
                                                                                                                      L7_2 = L0_1
                                                                                                                      L7_2 = L7_2.analytics
                                                                                                                      L7_2 = L7_2.setLeagueDimension
                                                                                                                      L8_2 = L10_1
                                                                                                                      L9_2 = L0_1
                                                                                                                      L9_2 = L9_2.currentLeague
                                                                                                                      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
                                                                                                                      L7_2(L8_2, L9_2, L10_2, L11_2)
                                                                                                                      if L6_2 then
                                                                                                                        L7_2 = print
                                                                                                                        L8_2 = "New rating"
                                                                                                                        L9_2 = L6_2
                                                                                                                        L7_2(L8_2, L9_2)
                                                                                                                      end
                                                                                                                      if not (L1_2 and L2_2) then
                                                                                                                        goto lbl_4437
                                                                                                                      end
                                                                                                                      L7_2 = print
                                                                                                                      L8_2 = "new league state is "
                                                                                                                      L9_2 = L1_2
                                                                                                                      L7_2(L8_2, L9_2)
                                                                                                                      L7_2 = tonumber
                                                                                                                      L8_2 = L1_2
                                                                                                                      L7_2 = L7_2(L8_2)
                                                                                                                      L8_2 = 0
                                                                                                                      if not (L7_2 < L8_2) then
                                                                                                                        L8_2 = 4
                                                                                                                        if not (L7_2 > L8_2) then
                                                                                                                          goto lbl_3308
                                                                                                                        end
                                                                                                                      end
                                                                                                                      L8_2 = print
                                                                                                                      L9_2 = "ignoring event"
                                                                                                                      L10_2 = L7_2
                                                                                                                      L8_2(L9_2, L10_2)
                                                                                                                      goto lbl_4437
                                                                                                                      ::lbl_3308::
                                                                                                                      L8_2 = print
                                                                                                                      L9_2 = "storing promotion event"
                                                                                                                      L10_2 = L7_2
                                                                                                                      L8_2(L9_2, L10_2)
                                                                                                                      L8_2 = L0_1
                                                                                                                      L9_2 = "league"
                                                                                                                      L10_2 = {}
                                                                                                                      L8_2[L9_2] = L10_2
                                                                                                                      L8_2 = L0_1
                                                                                                                      L9_2 = "league"
                                                                                                                      L8_2 = L8_2[L9_2]
                                                                                                                      L8_2.currentLeague = L1_2
                                                                                                                      L8_2 = L0_1
                                                                                                                      L9_2 = "league"
                                                                                                                      L8_2 = L8_2[L9_2]
                                                                                                                      L9_2 = "promotionType"
                                                                                                                      L10_2 = tonumber
                                                                                                                      L11_2 = L2_2
                                                                                                                      L10_2 = L10_2(L11_2)
                                                                                                                      L8_2[L9_2] = L10_2
                                                                                                                      L8_2 = L0_1
                                                                                                                      L9_2 = "league"
                                                                                                                      L8_2 = L8_2[L9_2]
                                                                                                                      L9_2 = "currentDivision"
                                                                                                                      L8_2[L9_2] = L3_2
                                                                                                                      L8_2 = L0_1
                                                                                                                      L9_2 = "league"
                                                                                                                      L8_2 = L8_2[L9_2]
                                                                                                                      L9_2 = "currentPlacement"
                                                                                                                      L8_2[L9_2] = L4_2
                                                                                                                      L8_2 = L0_1
                                                                                                                      L9_2 = "league"
                                                                                                                      L8_2 = L8_2[L9_2]
                                                                                                                      L9_2 = "currentWeeklyKey"
                                                                                                                      L8_2[L9_2] = L5_2
                                                                                                                      L8_2 = L0_1
                                                                                                                      L9_2 = "league"
                                                                                                                      L8_2 = L8_2[L9_2]
                                                                                                                      L9_2 = "currentRanking"
                                                                                                                      L8_2[L9_2] = L6_2
                                                                                                                    else
                                                                                                                      L1_2 = A0_2.m
                                                                                                                      L2_2 = L3_1
                                                                                                                      L3_2 = "getMyLeagueMessage"
                                                                                                                      L2_2 = L2_2[L3_2]
                                                                                                                      L2_2 = L2_2()
                                                                                                                      if L1_2 == L2_2 then
                                                                                                                        L1_2 = L6_1
                                                                                                                        L2_2 = "callback"
                                                                                                                        L1_2 = L1_2[L2_2]
                                                                                                                        if L1_2 then
                                                                                                                          L1_2 = L6_1
                                                                                                                          L2_2 = "callback"
                                                                                                                          L1_2 = L1_2[L2_2]
                                                                                                                          L2_2 = A0_2
                                                                                                                          L1_2(L2_2)
                                                                                                                        end
                                                                                                                      else
                                                                                                                        L1_2 = A0_2.m
                                                                                                                        L2_2 = L3_1
                                                                                                                        L3_2 = "getFriendLeagueMessage"
                                                                                                                        L2_2 = L2_2[L3_2]
                                                                                                                        L2_2 = L2_2()
                                                                                                                        if L1_2 == L2_2 then
                                                                                                                          L1_2 = L6_1
                                                                                                                          L2_2 = "callback"
                                                                                                                          L1_2 = L1_2[L2_2]
                                                                                                                          if L1_2 then
                                                                                                                            L1_2 = L6_1
                                                                                                                            L2_2 = "callback"
                                                                                                                            L1_2 = L1_2[L2_2]
                                                                                                                            L2_2 = A0_2
                                                                                                                            L1_2(L2_2)
                                                                                                                          end
                                                                                                                        else
                                                                                                                          L1_2 = A0_2.m
                                                                                                                          L2_2 = L3_1
                                                                                                                          L3_2 = "getEliteLeagueMessage"
                                                                                                                          L2_2 = L2_2[L3_2]
                                                                                                                          L2_2 = L2_2()
                                                                                                                          if L1_2 == L2_2 then
                                                                                                                            L1_2 = L6_1
                                                                                                                            L2_2 = "callback"
                                                                                                                            L1_2 = L1_2[L2_2]
                                                                                                                            if L1_2 then
                                                                                                                              L1_2 = L6_1
                                                                                                                              L2_2 = "callback"
                                                                                                                              L1_2 = L1_2[L2_2]
                                                                                                                              L2_2 = A0_2
                                                                                                                              L1_2(L2_2)
                                                                                                                            end
                                                                                                                          else
                                                                                                                            L1_2 = A0_2.m
                                                                                                                            L2_2 = L3_1
                                                                                                                            L3_2 = "getHallOfFameMessage"
                                                                                                                            L2_2 = L2_2[L3_2]
                                                                                                                            L2_2 = L2_2()
                                                                                                                            if L1_2 == L2_2 then
                                                                                                                              L1_2 = L6_1
                                                                                                                              L2_2 = "callback"
                                                                                                                              L1_2 = L1_2[L2_2]
                                                                                                                              if L1_2 then
                                                                                                                                L1_2 = L6_1
                                                                                                                                L2_2 = "callback"
                                                                                                                                L1_2 = L1_2[L2_2]
                                                                                                                                L2_2 = A0_2
                                                                                                                                L1_2(L2_2)
                                                                                                                              end
                                                                                                                            else
                                                                                                                              L1_2 = A0_2.m
                                                                                                                              L2_2 = L3_1
                                                                                                                              L3_2 = "getPlayerLeagueDetailsMessage"
                                                                                                                              L2_2 = L2_2[L3_2]
                                                                                                                              L2_2 = L2_2()
                                                                                                                              if L1_2 == L2_2 then
                                                                                                                                L1_2 = L6_1
                                                                                                                                L2_2 = "callback"
                                                                                                                                L1_2 = L1_2[L2_2]
                                                                                                                                if L1_2 then
                                                                                                                                  L1_2 = L6_1
                                                                                                                                  L2_2 = "callback"
                                                                                                                                  L1_2 = L1_2[L2_2]
                                                                                                                                  L2_2 = A0_2
                                                                                                                                  L1_2(L2_2)
                                                                                                                                end
                                                                                                                              else
                                                                                                                                L1_2 = A0_2.m
                                                                                                                                L2_2 = L3_1
                                                                                                                                L3_2 = "getPlayerHallOfFameDetailsMessage"
                                                                                                                                L2_2 = L2_2[L3_2]
                                                                                                                                L2_2 = L2_2()
                                                                                                                                if L1_2 == L2_2 then
                                                                                                                                  L1_2 = L6_1
                                                                                                                                  L2_2 = "callback"
                                                                                                                                  L1_2 = L1_2[L2_2]
                                                                                                                                  if L1_2 then
                                                                                                                                    L1_2 = L6_1
                                                                                                                                    L2_2 = "callback"
                                                                                                                                    L1_2 = L1_2[L2_2]
                                                                                                                                    L2_2 = A0_2
                                                                                                                                    L1_2(L2_2)
                                                                                                                                  end
                                                                                                                                else
                                                                                                                                  L1_2 = A0_2.m
                                                                                                                                  L2_2 = L3_1
                                                                                                                                  L3_2 = "getFriendHallOfFame"
                                                                                                                                  L2_2 = L2_2[L3_2]
                                                                                                                                  L2_2 = L2_2()
                                                                                                                                  if L1_2 == L2_2 then
                                                                                                                                    L1_2 = L6_1
                                                                                                                                    L2_2 = "callback"
                                                                                                                                    L1_2 = L1_2[L2_2]
                                                                                                                                    if L1_2 then
                                                                                                                                      L1_2 = L6_1
                                                                                                                                      L2_2 = "callback"
                                                                                                                                      L1_2 = L1_2[L2_2]
                                                                                                                                      L2_2 = A0_2
                                                                                                                                      L1_2(L2_2)
                                                                                                                                    end
                                                                                                                                  else
                                                                                                                                    L1_2 = A0_2.m
                                                                                                                                    L2_2 = L3_1
                                                                                                                                    L3_2 = "createClan"
                                                                                                                                    L2_2 = L2_2[L3_2]
                                                                                                                                    L2_2 = L2_2()
                                                                                                                                    if L1_2 == L2_2 then
                                                                                                                                      L1_2 = A0_2.r
                                                                                                                                      if L1_2 then
                                                                                                                                        L1_2 = print
                                                                                                                                        L2_2 = "Create clan: Something went wrong"
                                                                                                                                        L1_2(L2_2)
                                                                                                                                      end
                                                                                                                                      L1_2 = A0_2.a
                                                                                                                                      if L1_2 then
                                                                                                                                        L1_2 = L0_1
                                                                                                                                        L1_2 = L1_2.data
                                                                                                                                        L1_2 = L1_2.clans
                                                                                                                                        L2_2 = "clanId"
                                                                                                                                        L3_2 = A0_2.a
                                                                                                                                        L3_2 = L3_2.p
                                                                                                                                        L1_2[L2_2] = L3_2
                                                                                                                                      end
                                                                                                                                      L1_2 = A0_2.b
                                                                                                                                      if L1_2 then
                                                                                                                                        L1_2 = L0_1
                                                                                                                                        L1_2 = L1_2.clanUtils
                                                                                                                                        L2_2 = "setClanSync"
                                                                                                                                        L1_2 = L1_2[L2_2]
                                                                                                                                        L2_2 = A0_2.b
                                                                                                                                        L1_2(L2_2)
                                                                                                                                      end
                                                                                                                                      L1_2 = A0_2.r
                                                                                                                                      if not L1_2 then
                                                                                                                                        L1_2 = L0_1
                                                                                                                                        L1_2 = L1_2.database
                                                                                                                                        L2_2 = "getMoney"
                                                                                                                                        L1_2 = L1_2[L2_2]
                                                                                                                                        L1_2 = L1_2()
                                                                                                                                        L2_2 = L0_1
                                                                                                                                        L3_2 = "storeConfig"
                                                                                                                                        L2_2 = L2_2[L3_2]
                                                                                                                                        L3_2 = "getCreateClanPrice"
                                                                                                                                        L2_2 = L2_2[L3_2]
                                                                                                                                        L2_2 = L2_2()
                                                                                                                                        L1_2 = L1_2 - L2_2
                                                                                                                                        L2_2 = L0_1
                                                                                                                                        L2_2 = L2_2.database
                                                                                                                                        L2_2 = L2_2.setMoney
                                                                                                                                        L3_2 = L1_2
                                                                                                                                        L2_2(L3_2)
                                                                                                                                        L2_2 = L0_1
                                                                                                                                        L2_2 = L2_2.analytics
                                                                                                                                        L3_2 = "addResourceEvent"
                                                                                                                                        L2_2 = L2_2[L3_2]
                                                                                                                                        L3_2 = "Sink"
                                                                                                                                        L4_2 = "coin"
                                                                                                                                        L5_2 = L0_1
                                                                                                                                        L6_2 = "storeConfig"
                                                                                                                                        L5_2 = L5_2[L6_2]
                                                                                                                                        L6_2 = "getCreateClanPrice"
                                                                                                                                        L5_2 = L5_2[L6_2]
                                                                                                                                        L5_2 = L5_2()
                                                                                                                                        L6_2 = "misc"
                                                                                                                                        L7_2 = "createclan"
                                                                                                                                        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
                                                                                                                                      end
                                                                                                                                      L1_2 = L0_1
                                                                                                                                      L1_2 = L1_2.analytics
                                                                                                                                      L2_2 = "newEvent"
                                                                                                                                      L1_2 = L1_2[L2_2]
                                                                                                                                      L2_2 = "design"
                                                                                                                                      L3_2 = {}
                                                                                                                                      L4_2 = "event_id"
                                                                                                                                      L5_2 = "clans:create"
                                                                                                                                      L3_2[L4_2] = L5_2
                                                                                                                                      L4_2 = "area"
                                                                                                                                      L5_2 = L0_1
                                                                                                                                      L5_2 = L5_2.config
                                                                                                                                      L6_2 = "fullVersion"
                                                                                                                                      L5_2 = L5_2[L6_2]
                                                                                                                                      L3_2[L4_2] = L5_2
                                                                                                                                      L4_2 = "value"
                                                                                                                                      L5_2 = L0_1
                                                                                                                                      L5_2 = L5_2.gamesPlayed
                                                                                                                                      if not L5_2 then
                                                                                                                                        L5_2 = -1
                                                                                                                                      end
                                                                                                                                      L3_2[L4_2] = L5_2
                                                                                                                                      L1_2(L2_2, L3_2)
                                                                                                                                      L1_2 = L6_1
                                                                                                                                      L2_2 = "callback"
                                                                                                                                      L1_2 = L1_2[L2_2]
                                                                                                                                      if L1_2 then
                                                                                                                                        L1_2 = L6_1
                                                                                                                                        L2_2 = "callback"
                                                                                                                                        L1_2 = L1_2[L2_2]
                                                                                                                                        L2_2 = A0_2
                                                                                                                                        L1_2(L2_2)
                                                                                                                                      end
                                                                                                                                    else
                                                                                                                                      L1_2 = A0_2.m
                                                                                                                                      L2_2 = L3_1
                                                                                                                                      L3_2 = "getClanDetails"
                                                                                                                                      L2_2 = L2_2[L3_2]
                                                                                                                                      L2_2 = L2_2()
                                                                                                                                      if L1_2 == L2_2 then
                                                                                                                                        L1_2 = A0_2.r
                                                                                                                                        if L1_2 then
                                                                                                                                          L1_2 = print
                                                                                                                                          L2_2 = "Get clan: Something went wrong"
                                                                                                                                          L1_2(L2_2)
                                                                                                                                          return
                                                                                                                                        end
                                                                                                                                        L1_2 = L0_1
                                                                                                                                        L1_2 = L1_2.clanUtils
                                                                                                                                        L2_2 = "setClanDetails"
                                                                                                                                        L1_2 = L1_2[L2_2]
                                                                                                                                        L2_2 = A0_2.a
                                                                                                                                        L1_2(L2_2)
                                                                                                                                        L1_2 = L6_1
                                                                                                                                        L2_2 = "callback"
                                                                                                                                        L1_2 = L1_2[L2_2]
                                                                                                                                        if L1_2 then
                                                                                                                                          L1_2 = L6_1
                                                                                                                                          L2_2 = "callback"
                                                                                                                                          L1_2 = L1_2[L2_2]
                                                                                                                                          L2_2 = A0_2
                                                                                                                                          L1_2(L2_2)
                                                                                                                                        end
                                                                                                                                      else
                                                                                                                                        L1_2 = A0_2.m
                                                                                                                                        L2_2 = L3_1
                                                                                                                                        L3_2 = "leaveClan"
                                                                                                                                        L2_2 = L2_2[L3_2]
                                                                                                                                        L2_2 = L2_2()
                                                                                                                                        if L1_2 == L2_2 then
                                                                                                                                          L1_2 = A0_2.r
                                                                                                                                          if L1_2 then
                                                                                                                                            return
                                                                                                                                          end
                                                                                                                                          L1_2 = L0_1
                                                                                                                                          L1_2 = L1_2.clanUtils
                                                                                                                                          L2_2 = "clearClanData"
                                                                                                                                          L1_2 = L1_2[L2_2]
                                                                                                                                          L1_2()
                                                                                                                                          L1_2 = L0_1
                                                                                                                                          L1_2 = L1_2.createCustomOverlay
                                                                                                                                          L2_2 = 53
                                                                                                                                          L1_2(L2_2)
                                                                                                                                          L1_2 = L0_1
                                                                                                                                          L1_2 = L1_2.clanUtils
                                                                                                                                          L2_2 = "goToMainMenuIfInClanScenes"
                                                                                                                                          L1_2 = L1_2[L2_2]
                                                                                                                                          L1_2()
                                                                                                                                          L1_2 = L6_1
                                                                                                                                          L2_2 = "callback"
                                                                                                                                          L1_2 = L1_2[L2_2]
                                                                                                                                          if L1_2 then
                                                                                                                                            L1_2 = L6_1
                                                                                                                                            L2_2 = "callback"
                                                                                                                                            L1_2 = L1_2[L2_2]
                                                                                                                                            L2_2 = A0_2
                                                                                                                                            L1_2(L2_2)
                                                                                                                                          end
                                                                                                                                        else
                                                                                                                                          L1_2 = A0_2.m
                                                                                                                                          L2_2 = L3_1
                                                                                                                                          L3_2 = "receiveClanInvite"
                                                                                                                                          L2_2 = L2_2[L3_2]
                                                                                                                                          L2_2 = L2_2()
                                                                                                                                          if L1_2 == L2_2 then
                                                                                                                                            L1_2 = A0_2.r
                                                                                                                                            if L1_2 then
                                                                                                                                              return
                                                                                                                                            end
                                                                                                                                            L1_2 = L0_1
                                                                                                                                            L1_2 = L1_2.database
                                                                                                                                            L1_2 = L1_2.addNewClanInvite
                                                                                                                                            L2_2 = A0_2.a
                                                                                                                                            L1_2 = L1_2(L2_2)
                                                                                                                                            if L1_2 then
                                                                                                                                              L2_2 = {}
                                                                                                                                              L3_2 = A0_2.a
                                                                                                                                              L3_2 = L3_2.c
                                                                                                                                              L3_2 = L3_2.b
                                                                                                                                              L2_2.n = L3_2
                                                                                                                                              L3_2 = L1_1
                                                                                                                                              L4_2 = "showClanInvite"
                                                                                                                                              L3_2 = L3_2[L4_2]
                                                                                                                                              L4_2 = L2_2
                                                                                                                                              L3_2(L4_2)
                                                                                                                                            end
                                                                                                                                            L2_2 = L6_1
                                                                                                                                            L3_2 = "callback"
                                                                                                                                            L2_2 = L2_2[L3_2]
                                                                                                                                            if L2_2 then
                                                                                                                                              L2_2 = L6_1
                                                                                                                                              L3_2 = "callback"
                                                                                                                                              L2_2 = L2_2[L3_2]
                                                                                                                                              L3_2 = A0_2
                                                                                                                                              L2_2(L3_2)
                                                                                                                                            end
                                                                                                                                          else
                                                                                                                                            L1_2 = A0_2.m
                                                                                                                                            L2_2 = L3_1
                                                                                                                                            L3_2 = "inviteToClan"
                                                                                                                                            L2_2 = L2_2[L3_2]
                                                                                                                                            L2_2 = L2_2()
                                                                                                                                            if L1_2 == L2_2 then
                                                                                                                                              L1_2 = A0_2.r
                                                                                                                                              if L1_2 then
                                                                                                                                                L1_2 = A0_2.r
                                                                                                                                                L2_2 = 93
                                                                                                                                                if L1_2 == L2_2 then
                                                                                                                                                  L1_2 = L0_1
                                                                                                                                                  L1_2 = L1_2.createCustomOverlay
                                                                                                                                                  L2_2 = 98
                                                                                                                                                  L3_2 = nil
                                                                                                                                                  L4_2 = "The clan is full!"
                                                                                                                                                  L1_2(L2_2, L3_2, L4_2)
                                                                                                                                                end
                                                                                                                                              end
                                                                                                                                            else
                                                                                                                                              L1_2 = A0_2.m
                                                                                                                                              L2_2 = L3_1
                                                                                                                                              L3_2 = "acceptClanInvite"
                                                                                                                                              L2_2 = L2_2[L3_2]
                                                                                                                                              L2_2 = L2_2()
                                                                                                                                              if L1_2 == L2_2 then
                                                                                                                                                L1_2 = A0_2.r
                                                                                                                                                if L1_2 then
                                                                                                                                                  L1_2 = A0_2.r
                                                                                                                                                  L2_2 = 98
                                                                                                                                                  if L1_2 == L2_2 then
                                                                                                                                                    L1_2 = L0_1
                                                                                                                                                    L1_2 = L1_2.createCustomOverlay
                                                                                                                                                    L2_2 = 98
                                                                                                                                                    L3_2 = nil
                                                                                                                                                    L4_2 = "The clan is full. Try again later."
                                                                                                                                                    L1_2(L2_2, L3_2, L4_2)
                                                                                                                                                  else
                                                                                                                                                    L1_2 = A0_2.r
                                                                                                                                                    L2_2 = 99
                                                                                                                                                    if L1_2 == L2_2 then
                                                                                                                                                      L1_2 = L0_1
                                                                                                                                                      L1_2 = L1_2.createCustomOverlay
                                                                                                                                                      L2_2 = 98
                                                                                                                                                      L3_2 = nil
                                                                                                                                                      L4_2 = [[
You are in a clan.
Leave your clan before accepting this invite.]]
                                                                                                                                                      L1_2(L2_2, L3_2, L4_2)
                                                                                                                                                    end
                                                                                                                                                  end
                                                                                                                                                  return
                                                                                                                                                end
                                                                                                                                                L1_2 = L0_1
                                                                                                                                                L1_2 = L1_2.clanUtils
                                                                                                                                                L1_2 = L1_2.setClanState
                                                                                                                                                L2_2 = A0_2.b
                                                                                                                                                L2_2 = L2_2.a
                                                                                                                                                L1_2(L2_2)
                                                                                                                                                L1_2 = L0_1
                                                                                                                                                L1_2 = L1_2.database
                                                                                                                                                L1_2 = L1_2.setClanMembers
                                                                                                                                                L2_2 = A0_2.b
                                                                                                                                                L2_2 = L2_2.b
                                                                                                                                                L1_2(L2_2)
                                                                                                                                                L1_2 = L0_1
                                                                                                                                                L1_2 = L1_2.clanUtils
                                                                                                                                                L1_2 = L1_2.setMyClanRank
                                                                                                                                                L2_2 = A0_2.b
                                                                                                                                                L2_2 = L2_2.c
                                                                                                                                                L1_2(L2_2)
                                                                                                                                                L1_2 = L0_1
                                                                                                                                                L1_2 = L1_2.clanUtils
                                                                                                                                                L1_2 = L1_2.updateClanMembersTable
                                                                                                                                                L1_2()
                                                                                                                                                L1_2 = L0_1
                                                                                                                                                L1_2 = L1_2.analytics
                                                                                                                                                L2_2 = "newEvent"
                                                                                                                                                L1_2 = L1_2[L2_2]
                                                                                                                                                L2_2 = "design"
                                                                                                                                                L3_2 = {}
                                                                                                                                                L4_2 = "event_id"
                                                                                                                                                L5_2 = "clans:acceptInvite"
                                                                                                                                                L3_2[L4_2] = L5_2
                                                                                                                                                L4_2 = "area"
                                                                                                                                                L5_2 = L0_1
                                                                                                                                                L5_2 = L5_2.config
                                                                                                                                                L6_2 = "fullVersion"
                                                                                                                                                L5_2 = L5_2[L6_2]
                                                                                                                                                L3_2[L4_2] = L5_2
                                                                                                                                                L4_2 = "value"
                                                                                                                                                L5_2 = L0_1
                                                                                                                                                L5_2 = L5_2.gamesPlayed
                                                                                                                                                if not L5_2 then
                                                                                                                                                  L5_2 = -1
                                                                                                                                                end
                                                                                                                                                L3_2[L4_2] = L5_2
                                                                                                                                                L1_2(L2_2, L3_2)
                                                                                                                                                L1_2 = L6_1
                                                                                                                                                L2_2 = "callback"
                                                                                                                                                L1_2 = L1_2[L2_2]
                                                                                                                                                if L1_2 then
                                                                                                                                                  L1_2 = L6_1
                                                                                                                                                  L2_2 = "callback"
                                                                                                                                                  L1_2 = L1_2[L2_2]
                                                                                                                                                  L2_2 = A0_2
                                                                                                                                                  L1_2(L2_2)
                                                                                                                                                end
                                                                                                                                              else
                                                                                                                                                L1_2 = A0_2.m
                                                                                                                                                L2_2 = L3_1
                                                                                                                                                L3_2 = "removeClanInvite"
                                                                                                                                                L2_2 = L2_2[L3_2]
                                                                                                                                                L2_2 = L2_2()
                                                                                                                                                if L1_2 == L2_2 then
                                                                                                                                                else
                                                                                                                                                  L1_2 = A0_2.m
                                                                                                                                                  L2_2 = L3_1
                                                                                                                                                  L3_2 = "removeAllClanInvites"
                                                                                                                                                  L2_2 = L2_2[L3_2]
                                                                                                                                                  L2_2 = L2_2()
                                                                                                                                                  if L1_2 == L2_2 then
                                                                                                                                                    L1_2 = L0_1
                                                                                                                                                    L1_2 = L1_2.database
                                                                                                                                                    L2_2 = "removeAllClanInvites"
                                                                                                                                                    L1_2 = L1_2[L2_2]
                                                                                                                                                    L1_2()
                                                                                                                                                    L1_2 = L6_1
                                                                                                                                                    L2_2 = "callback"
                                                                                                                                                    L1_2 = L1_2[L2_2]
                                                                                                                                                    if L1_2 then
                                                                                                                                                      L1_2 = L6_1
                                                                                                                                                      L2_2 = "callback"
                                                                                                                                                      L1_2 = L1_2[L2_2]
                                                                                                                                                      L2_2 = A0_2
                                                                                                                                                      L1_2(L2_2)
                                                                                                                                                    end
                                                                                                                                                  else
                                                                                                                                                    L1_2 = A0_2.m
                                                                                                                                                    L2_2 = L3_1
                                                                                                                                                    L3_2 = "sendClanMessage"
                                                                                                                                                    L2_2 = L2_2[L3_2]
                                                                                                                                                    L2_2 = L2_2()
                                                                                                                                                    if L1_2 == L2_2 then
                                                                                                                                                    else
                                                                                                                                                      L1_2 = A0_2.m
                                                                                                                                                      L2_2 = L3_1
                                                                                                                                                      L3_2 = "receiveClanMessage"
                                                                                                                                                      L2_2 = L2_2[L3_2]
                                                                                                                                                      L2_2 = L2_2()
                                                                                                                                                      if L1_2 == L2_2 then
                                                                                                                                                        L1_2 = L0_1
                                                                                                                                                        L1_2 = L1_2.clanUtils
                                                                                                                                                        L2_2 = "handleMessage"
                                                                                                                                                        L1_2 = L1_2[L2_2]
                                                                                                                                                        L2_2 = A0_2.a
                                                                                                                                                        L1_2(L2_2)
                                                                                                                                                        L1_2 = L6_1
                                                                                                                                                        L2_2 = "callback"
                                                                                                                                                        L1_2 = L1_2[L2_2]
                                                                                                                                                        if L1_2 then
                                                                                                                                                          L1_2 = L6_1
                                                                                                                                                          L2_2 = "callback"
                                                                                                                                                          L1_2 = L1_2[L2_2]
                                                                                                                                                          L2_2 = A0_2
                                                                                                                                                          L1_2(L2_2)
                                                                                                                                                        end
                                                                                                                                                      else
                                                                                                                                                        L1_2 = A0_2.m
                                                                                                                                                        L2_2 = L3_1
                                                                                                                                                        L3_2 = "getClanMessageLog"
                                                                                                                                                        L2_2 = L2_2[L3_2]
                                                                                                                                                        L2_2 = L2_2()
                                                                                                                                                        if L1_2 == L2_2 then
                                                                                                                                                          L1_2 = A0_2.r
                                                                                                                                                          if L1_2 then
                                                                                                                                                            L1_2 = print
                                                                                                                                                            L2_2 = "Failed to get log."
                                                                                                                                                            L1_2(L2_2)
                                                                                                                                                          end
                                                                                                                                                          L1_2 = L0_1
                                                                                                                                                          L1_2 = L1_2.clanUtils
                                                                                                                                                          L2_2 = "setClanMessageLog"
                                                                                                                                                          L1_2 = L1_2[L2_2]
                                                                                                                                                          L2_2 = A0_2.a
                                                                                                                                                          L1_2(L2_2)
                                                                                                                                                          L1_2 = L6_1
                                                                                                                                                          L2_2 = "callback"
                                                                                                                                                          L1_2 = L1_2[L2_2]
                                                                                                                                                          if L1_2 then
                                                                                                                                                            L1_2 = L6_1
                                                                                                                                                            L2_2 = "callback"
                                                                                                                                                            L1_2 = L1_2[L2_2]
                                                                                                                                                            L2_2 = A0_2
                                                                                                                                                            L1_2(L2_2)
                                                                                                                                                          end
                                                                                                                                                        else
                                                                                                                                                          L1_2 = A0_2.m
                                                                                                                                                          L2_2 = L3_1
                                                                                                                                                          L3_2 = "getOpenClans"
                                                                                                                                                          L2_2 = L2_2[L3_2]
                                                                                                                                                          L2_2 = L2_2()
                                                                                                                                                          if L1_2 == L2_2 then
                                                                                                                                                            L1_2 = L6_1
                                                                                                                                                            L2_2 = "callback"
                                                                                                                                                            L1_2 = L1_2[L2_2]
                                                                                                                                                            if L1_2 then
                                                                                                                                                              L1_2 = L6_1
                                                                                                                                                              L2_2 = "callback"
                                                                                                                                                              L1_2 = L1_2[L2_2]
                                                                                                                                                              L2_2 = A0_2
                                                                                                                                                              L1_2(L2_2)
                                                                                                                                                            end
                                                                                                                                                          else
                                                                                                                                                            L1_2 = A0_2.m
                                                                                                                                                            L2_2 = L3_1
                                                                                                                                                            L3_2 = "joinOpenClan"
                                                                                                                                                            L2_2 = L2_2[L3_2]
                                                                                                                                                            L2_2 = L2_2()
                                                                                                                                                            if L1_2 == L2_2 then
                                                                                                                                                              L1_2 = A0_2.r
                                                                                                                                                              if L1_2 then
                                                                                                                                                                L1_2 = A0_2.r
                                                                                                                                                                L2_2 = 106
                                                                                                                                                                if L1_2 == L2_2 then
                                                                                                                                                                  L1_2 = L0_1
                                                                                                                                                                  L1_2 = L1_2.createCustomOverlay
                                                                                                                                                                  L2_2 = 98
                                                                                                                                                                  L3_2 = nil
                                                                                                                                                                  L4_2 = "The clan is full. Try again later."
                                                                                                                                                                  L1_2(L2_2, L3_2, L4_2)
                                                                                                                                                                else
                                                                                                                                                                  L1_2 = A0_2.r
                                                                                                                                                                  L2_2 = 107
                                                                                                                                                                  if L1_2 == L2_2 then
                                                                                                                                                                    L1_2 = L0_1
                                                                                                                                                                    L1_2 = L1_2.createCustomOverlay
                                                                                                                                                                    L2_2 = 98
                                                                                                                                                                    L3_2 = nil
                                                                                                                                                                    L4_2 = "This clan is private."
                                                                                                                                                                    L1_2(L2_2, L3_2, L4_2)
                                                                                                                                                                  else
                                                                                                                                                                    L1_2 = A0_2.r
                                                                                                                                                                    L2_2 = 108
                                                                                                                                                                    if L1_2 == L2_2 then
                                                                                                                                                                      L1_2 = L0_1
                                                                                                                                                                      L1_2 = L1_2.createCustomOverlay
                                                                                                                                                                      L2_2 = 98
                                                                                                                                                                      L3_2 = nil
                                                                                                                                                                      L4_2 = [[
You are in a clan.
Leave your clan before accepting this invite.]]
                                                                                                                                                                      L1_2(L2_2, L3_2, L4_2)
                                                                                                                                                                    else
                                                                                                                                                                      L1_2 = A0_2.r
                                                                                                                                                                      L2_2 = 125
                                                                                                                                                                      if L1_2 == L2_2 then
                                                                                                                                                                        L1_2 = L0_1
                                                                                                                                                                        L1_2 = L1_2.createCustomOverlay
                                                                                                                                                                        L2_2 = 98
                                                                                                                                                                        L3_2 = nil
                                                                                                                                                                        L4_2 = "You do not match league requirements for this clan"
                                                                                                                                                                        L1_2(L2_2, L3_2, L4_2)
                                                                                                                                                                      end
                                                                                                                                                                    end
                                                                                                                                                                  end
                                                                                                                                                                end
                                                                                                                                                                return
                                                                                                                                                              end
                                                                                                                                                              L1_2 = L0_1
                                                                                                                                                              L1_2 = L1_2.clanUtils
                                                                                                                                                              L1_2 = L1_2.setClanState
                                                                                                                                                              L2_2 = A0_2.b
                                                                                                                                                              L2_2 = L2_2.a
                                                                                                                                                              L1_2(L2_2)
                                                                                                                                                              L1_2 = L0_1
                                                                                                                                                              L1_2 = L1_2.database
                                                                                                                                                              L1_2 = L1_2.setClanMembers
                                                                                                                                                              L2_2 = A0_2.b
                                                                                                                                                              L2_2 = L2_2.b
                                                                                                                                                              L1_2(L2_2)
                                                                                                                                                              L1_2 = L0_1
                                                                                                                                                              L1_2 = L1_2.clanUtils
                                                                                                                                                              L1_2 = L1_2.setMyClanRank
                                                                                                                                                              L2_2 = A0_2.b
                                                                                                                                                              L2_2 = L2_2.c
                                                                                                                                                              L1_2(L2_2)
                                                                                                                                                              L1_2 = L0_1
                                                                                                                                                              L1_2 = L1_2.clanUtils
                                                                                                                                                              L1_2 = L1_2.updateClanMembersTable
                                                                                                                                                              L1_2()
                                                                                                                                                              L1_2 = L0_1
                                                                                                                                                              L1_2 = L1_2.analytics
                                                                                                                                                              L2_2 = "newEvent"
                                                                                                                                                              L1_2 = L1_2[L2_2]
                                                                                                                                                              L2_2 = "design"
                                                                                                                                                              L3_2 = {}
                                                                                                                                                              L4_2 = "event_id"
                                                                                                                                                              L5_2 = "clans:joinOpenClan"
                                                                                                                                                              L3_2[L4_2] = L5_2
                                                                                                                                                              L4_2 = "area"
                                                                                                                                                              L5_2 = L0_1
                                                                                                                                                              L5_2 = L5_2.config
                                                                                                                                                              L6_2 = "fullVersion"
                                                                                                                                                              L5_2 = L5_2[L6_2]
                                                                                                                                                              L3_2[L4_2] = L5_2
                                                                                                                                                              L4_2 = "value"
                                                                                                                                                              L5_2 = L0_1
                                                                                                                                                              L5_2 = L5_2.gamesPlayed
                                                                                                                                                              if not L5_2 then
                                                                                                                                                                L5_2 = -1
                                                                                                                                                              end
                                                                                                                                                              L3_2[L4_2] = L5_2
                                                                                                                                                              L1_2(L2_2, L3_2)
                                                                                                                                                              L1_2 = L6_1
                                                                                                                                                              L2_2 = "callback"
                                                                                                                                                              L1_2 = L1_2[L2_2]
                                                                                                                                                              if L1_2 then
                                                                                                                                                                L1_2 = L6_1
                                                                                                                                                                L2_2 = "callback"
                                                                                                                                                                L1_2 = L1_2[L2_2]
                                                                                                                                                                L2_2 = A0_2
                                                                                                                                                                L1_2(L2_2)
                                                                                                                                                              end
                                                                                                                                                            else
                                                                                                                                                              L1_2 = A0_2.m
                                                                                                                                                              L2_2 = L3_1
                                                                                                                                                              L3_2 = "changeClanRank"
                                                                                                                                                              L2_2 = L2_2[L3_2]
                                                                                                                                                              L2_2 = L2_2()
                                                                                                                                                              if L1_2 == L2_2 then
                                                                                                                                                              else
                                                                                                                                                                L1_2 = A0_2.m
                                                                                                                                                                L2_2 = L3_1
                                                                                                                                                                L3_2 = "clanHallOfFame"
                                                                                                                                                                L2_2 = L2_2[L3_2]
                                                                                                                                                                L2_2 = L2_2()
                                                                                                                                                                if L1_2 == L2_2 then
                                                                                                                                                                  L1_2 = A0_2.r
                                                                                                                                                                  if L1_2 then
                                                                                                                                                                    return
                                                                                                                                                                  end
                                                                                                                                                                  L1_2 = L6_1
                                                                                                                                                                  L2_2 = "callback"
                                                                                                                                                                  L1_2 = L1_2[L2_2]
                                                                                                                                                                  if L1_2 then
                                                                                                                                                                    L1_2 = L6_1
                                                                                                                                                                    L2_2 = "callback"
                                                                                                                                                                    L1_2 = L1_2[L2_2]
                                                                                                                                                                    L2_2 = A0_2
                                                                                                                                                                    L1_2(L2_2)
                                                                                                                                                                  end
                                                                                                                                                                else
                                                                                                                                                                  L1_2 = A0_2.m
                                                                                                                                                                  L2_2 = L3_1
                                                                                                                                                                  L3_2 = "clanHallOfFameDetails"
                                                                                                                                                                  L2_2 = L2_2[L3_2]
                                                                                                                                                                  L2_2 = L2_2()
                                                                                                                                                                  if L1_2 == L2_2 then
                                                                                                                                                                    L1_2 = A0_2.r
                                                                                                                                                                    if L1_2 then
                                                                                                                                                                      return
                                                                                                                                                                    end
                                                                                                                                                                    L1_2 = L6_1
                                                                                                                                                                    L2_2 = "callback"
                                                                                                                                                                    L1_2 = L1_2[L2_2]
                                                                                                                                                                    if L1_2 then
                                                                                                                                                                      L1_2 = L6_1
                                                                                                                                                                      L2_2 = "callback"
                                                                                                                                                                      L1_2 = L1_2[L2_2]
                                                                                                                                                                      L2_2 = A0_2
                                                                                                                                                                      L1_2(L2_2)
                                                                                                                                                                    end
                                                                                                                                                                  else
                                                                                                                                                                    L1_2 = A0_2.m
                                                                                                                                                                    L2_2 = L3_1
                                                                                                                                                                    L3_2 = "clanLeague"
                                                                                                                                                                    L2_2 = L2_2[L3_2]
                                                                                                                                                                    L2_2 = L2_2()
                                                                                                                                                                    if L1_2 == L2_2 then
                                                                                                                                                                      L1_2 = A0_2.r
                                                                                                                                                                      if L1_2 then
                                                                                                                                                                        return
                                                                                                                                                                      end
                                                                                                                                                                      L1_2 = L6_1
                                                                                                                                                                      L2_2 = "callback"
                                                                                                                                                                      L1_2 = L1_2[L2_2]
                                                                                                                                                                      if L1_2 then
                                                                                                                                                                        L1_2 = L6_1
                                                                                                                                                                        L2_2 = "callback"
                                                                                                                                                                        L1_2 = L1_2[L2_2]
                                                                                                                                                                        L2_2 = A0_2
                                                                                                                                                                        L1_2(L2_2)
                                                                                                                                                                      end
                                                                                                                                                                    else
                                                                                                                                                                      L1_2 = A0_2.m
                                                                                                                                                                      L2_2 = L3_1
                                                                                                                                                                      L3_2 = "getClanLeagueDetails"
                                                                                                                                                                      L2_2 = L2_2[L3_2]
                                                                                                                                                                      L2_2 = L2_2()
                                                                                                                                                                      if L1_2 == L2_2 then
                                                                                                                                                                        L1_2 = A0_2.r
                                                                                                                                                                        if L1_2 then
                                                                                                                                                                          return
                                                                                                                                                                        end
                                                                                                                                                                        L1_2 = L6_1
                                                                                                                                                                        L2_2 = "callback"
                                                                                                                                                                        L1_2 = L1_2[L2_2]
                                                                                                                                                                        if L1_2 then
                                                                                                                                                                          L1_2 = L6_1
                                                                                                                                                                          L2_2 = "callback"
                                                                                                                                                                          L1_2 = L1_2[L2_2]
                                                                                                                                                                          L2_2 = A0_2
                                                                                                                                                                          L1_2(L2_2)
                                                                                                                                                                        end
                                                                                                                                                                      else
                                                                                                                                                                        L1_2 = A0_2.m
                                                                                                                                                                        L2_2 = L3_1
                                                                                                                                                                        L3_2 = "getClanLeaguePlayerDetails"
                                                                                                                                                                        L2_2 = L2_2[L3_2]
                                                                                                                                                                        L2_2 = L2_2()
                                                                                                                                                                        if L1_2 == L2_2 then
                                                                                                                                                                          L1_2 = A0_2.r
                                                                                                                                                                          if L1_2 then
                                                                                                                                                                            return
                                                                                                                                                                          end
                                                                                                                                                                          L1_2 = L6_1
                                                                                                                                                                          L2_2 = "callback"
                                                                                                                                                                          L1_2 = L1_2[L2_2]
                                                                                                                                                                          if L1_2 then
                                                                                                                                                                            L1_2 = L6_1
                                                                                                                                                                            L2_2 = "callback"
                                                                                                                                                                            L1_2 = L1_2[L2_2]
                                                                                                                                                                            L2_2 = A0_2
                                                                                                                                                                            L1_2(L2_2)
                                                                                                                                                                          end
                                                                                                                                                                        else
                                                                                                                                                                          L1_2 = A0_2.m
                                                                                                                                                                          L2_2 = L3_1
                                                                                                                                                                          L3_2 = "getClanMembers"
                                                                                                                                                                          L2_2 = L2_2[L3_2]
                                                                                                                                                                          L2_2 = L2_2()
                                                                                                                                                                          if L1_2 == L2_2 then
                                                                                                                                                                            L1_2 = A0_2.r
                                                                                                                                                                            if L1_2 then
                                                                                                                                                                              return
                                                                                                                                                                            end
                                                                                                                                                                            L1_2 = L0_1
                                                                                                                                                                            L1_2 = L1_2.data
                                                                                                                                                                            L1_2 = L1_2.clans
                                                                                                                                                                            L2_2 = "memberDetails"
                                                                                                                                                                            L3_2 = A0_2.a
                                                                                                                                                                            L1_2[L2_2] = L3_2
                                                                                                                                                                            L1_2 = L0_1
                                                                                                                                                                            L1_2 = L1_2.data
                                                                                                                                                                            L1_2 = L1_2.clans
                                                                                                                                                                            L2_2 = "weeklyRating"
                                                                                                                                                                            L3_2 = tonumber
                                                                                                                                                                            L4_2 = A0_2.b
                                                                                                                                                                            L3_2 = L3_2(L4_2)
                                                                                                                                                                            L1_2[L2_2] = L3_2
                                                                                                                                                                            L1_2 = L0_1
                                                                                                                                                                            L1_2 = L1_2.data
                                                                                                                                                                            L1_2 = L1_2.clans
                                                                                                                                                                            L2_2 = "weeklyResetRemaining"
                                                                                                                                                                            L3_2 = tonumber
                                                                                                                                                                            L4_2 = A0_2.c
                                                                                                                                                                            L3_2 = L3_2(L4_2)
                                                                                                                                                                            L1_2[L2_2] = L3_2
                                                                                                                                                                            L1_2 = L0_1
                                                                                                                                                                            L1_2 = L1_2.data
                                                                                                                                                                            L1_2 = L1_2.clans
                                                                                                                                                                            L2_2 = "weeklyClanPoints"
                                                                                                                                                                            L3_2 = tonumber
                                                                                                                                                                            L4_2 = A0_2.d
                                                                                                                                                                            L3_2 = L3_2(L4_2)
                                                                                                                                                                            L1_2[L2_2] = L3_2
                                                                                                                                                                            L1_2 = L0_1
                                                                                                                                                                            L1_2 = L1_2.clanUtils
                                                                                                                                                                            L1_2 = L1_2.updateClanMembersTable
                                                                                                                                                                            L1_2()
                                                                                                                                                                            L1_2 = L6_1
                                                                                                                                                                            L2_2 = "callback"
                                                                                                                                                                            L1_2 = L1_2[L2_2]
                                                                                                                                                                            if L1_2 then
                                                                                                                                                                              L1_2 = L6_1
                                                                                                                                                                              L2_2 = "callback"
                                                                                                                                                                              L1_2 = L1_2[L2_2]
                                                                                                                                                                              L2_2 = A0_2
                                                                                                                                                                              L1_2(L2_2)
                                                                                                                                                                            end
                                                                                                                                                                          else
                                                                                                                                                                            L1_2 = A0_2.m
                                                                                                                                                                            L2_2 = L3_1
                                                                                                                                                                            L3_2 = "getClanInfo"
                                                                                                                                                                            L2_2 = L2_2[L3_2]
                                                                                                                                                                            L2_2 = L2_2()
                                                                                                                                                                            if L1_2 == L2_2 then
                                                                                                                                                                              L1_2 = A0_2.r
                                                                                                                                                                              if L1_2 then
                                                                                                                                                                              end
                                                                                                                                                                              L1_2 = L6_1
                                                                                                                                                                              L2_2 = "callback"
                                                                                                                                                                              L1_2 = L1_2[L2_2]
                                                                                                                                                                              if L1_2 then
                                                                                                                                                                                L1_2 = L6_1
                                                                                                                                                                                L2_2 = "callback"
                                                                                                                                                                                L1_2 = L1_2[L2_2]
                                                                                                                                                                                L2_2 = A0_2
                                                                                                                                                                                L1_2(L2_2)
                                                                                                                                                                              end
                                                                                                                                                                            else
                                                                                                                                                                              L1_2 = A0_2.m
                                                                                                                                                                              L2_2 = L3_1
                                                                                                                                                                              L3_2 = "setSeenNewsTimestamp"
                                                                                                                                                                              L2_2 = L2_2[L3_2]
                                                                                                                                                                              L2_2 = L2_2()
                                                                                                                                                                              if L1_2 == L2_2 then
                                                                                                                                                                                L1_2 = A0_2.r
                                                                                                                                                                                if L1_2 then
                                                                                                                                                                                end
                                                                                                                                                                              else
                                                                                                                                                                                L1_2 = A0_2.m
                                                                                                                                                                                L2_2 = L3_1
                                                                                                                                                                                L3_2 = "purchaseClanSupporter"
                                                                                                                                                                                L2_2 = L2_2[L3_2]
                                                                                                                                                                                L2_2 = L2_2()
                                                                                                                                                                                if L1_2 == L2_2 then
                                                                                                                                                                                  L1_2 = A0_2.r
                                                                                                                                                                                  if L1_2 then
                                                                                                                                                                                  end
                                                                                                                                                                                  L1_2 = L0_1
                                                                                                                                                                                  L1_2 = L1_2.clanUtils
                                                                                                                                                                                  L1_2 = L1_2.setPlayerSupporterStatus
                                                                                                                                                                                  L2_2 = A0_2.a
                                                                                                                                                                                  L3_2 = A0_2.b
                                                                                                                                                                                  L1_2(L2_2, L3_2)
                                                                                                                                                                                  L1_2 = L0_1
                                                                                                                                                                                  L1_2 = L1_2.database
                                                                                                                                                                                  L2_2 = "getGem"
                                                                                                                                                                                  L1_2 = L1_2[L2_2]
                                                                                                                                                                                  L1_2 = L1_2()
                                                                                                                                                                                  L2_2 = L0_1
                                                                                                                                                                                  L2_2 = L2_2.database
                                                                                                                                                                                  L2_2 = L2_2.setGem
                                                                                                                                                                                  L3_2 = A0_2.c
                                                                                                                                                                                  L2_2(L3_2)
                                                                                                                                                                                  L2_2 = L0_1
                                                                                                                                                                                  L2_2 = L2_2.database
                                                                                                                                                                                  L3_2 = "getGem"
                                                                                                                                                                                  L2_2 = L2_2[L3_2]
                                                                                                                                                                                  L2_2 = L2_2()
                                                                                                                                                                                  L1_2 = L1_2 - L2_2
                                                                                                                                                                                  L2_2 = L0_1
                                                                                                                                                                                  L2_2 = L2_2.analytics
                                                                                                                                                                                  L3_2 = "addResourceEvent"
                                                                                                                                                                                  L2_2 = L2_2[L3_2]
                                                                                                                                                                                  L3_2 = "Sink"
                                                                                                                                                                                  L4_2 = "gem"
                                                                                                                                                                                  L5_2 = L1_2
                                                                                                                                                                                  L6_2 = "clanSupporter"
                                                                                                                                                                                  L7_2 = A0_2.a
                                                                                                                                                                                  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
                                                                                                                                                                                  L2_2 = L6_1
                                                                                                                                                                                  L3_2 = "callback"
                                                                                                                                                                                  L2_2 = L2_2[L3_2]
                                                                                                                                                                                  if L2_2 then
                                                                                                                                                                                    L2_2 = L6_1
                                                                                                                                                                                    L3_2 = "callback"
                                                                                                                                                                                    L2_2 = L2_2[L3_2]
                                                                                                                                                                                    L3_2 = A0_2
                                                                                                                                                                                    L2_2(L3_2)
                                                                                                                                                                                  end
                                                                                                                                                                                else
                                                                                                                                                                                  L1_2 = A0_2.m
                                                                                                                                                                                  L2_2 = L3_1
                                                                                                                                                                                  L3_2 = "claimClanReward"
                                                                                                                                                                                  L2_2 = L2_2[L3_2]
                                                                                                                                                                                  L2_2 = L2_2()
                                                                                                                                                                                  if L1_2 == L2_2 then
                                                                                                                                                                                    L1_2 = false
                                                                                                                                                                                    L2_2 = A0_2.r
                                                                                                                                                                                    if L2_2 then
                                                                                                                                                                                      L2_2 = print
                                                                                                                                                                                      L3_2 = "Error claiming clan reward."
                                                                                                                                                                                      L4_2 = A0_2.r
                                                                                                                                                                                      L2_2(L3_2, L4_2)
                                                                                                                                                                                      L1_2 = true
                                                                                                                                                                                    end
                                                                                                                                                                                    if not L1_2 then
                                                                                                                                                                                      L2_2 = A0_2.b
                                                                                                                                                                                      if L2_2 then
                                                                                                                                                                                        L2_2 = L0_1
                                                                                                                                                                                        L2_2 = L2_2.database
                                                                                                                                                                                        L3_2 = "increaseMoney"
                                                                                                                                                                                        L2_2 = L2_2[L3_2]
                                                                                                                                                                                        L3_2 = A0_2.b
                                                                                                                                                                                        L2_2(L3_2)
                                                                                                                                                                                        L2_2 = L0_1
                                                                                                                                                                                        L2_2 = L2_2.analytics
                                                                                                                                                                                        L3_2 = "addResourceEvent"
                                                                                                                                                                                        L2_2 = L2_2[L3_2]
                                                                                                                                                                                        L3_2 = "Source"
                                                                                                                                                                                        L4_2 = "coin"
                                                                                                                                                                                        L5_2 = tonumber
                                                                                                                                                                                        L6_2 = A0_2.b
                                                                                                                                                                                        L5_2 = L5_2(L6_2)
                                                                                                                                                                                        L6_2 = "rewards"
                                                                                                                                                                                        L7_2 = "clan"
                                                                                                                                                                                        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
                                                                                                                                                                                      end
                                                                                                                                                                                      L2_2 = A0_2.a
                                                                                                                                                                                      if L2_2 then
                                                                                                                                                                                        L2_2 = L0_1
                                                                                                                                                                                        L2_2 = L2_2.database
                                                                                                                                                                                        L3_2 = "addItem"
                                                                                                                                                                                        L2_2 = L2_2[L3_2]
                                                                                                                                                                                        L3_2 = A0_2.a
                                                                                                                                                                                        L2_2(L3_2)
                                                                                                                                                                                      end
                                                                                                                                                                                      L2_2 = L0_1
                                                                                                                                                                                      L2_2 = L2_2.clanUtils
                                                                                                                                                                                      L3_2 = "setClanReward"
                                                                                                                                                                                      L2_2 = L2_2[L3_2]
                                                                                                                                                                                      L3_2 = A0_2
                                                                                                                                                                                      L2_2(L3_2)
                                                                                                                                                                                      L2_2 = L0_1
                                                                                                                                                                                      L2_2 = L2_2.data
                                                                                                                                                                                      L2_2 = L2_2.clans
                                                                                                                                                                                      L3_2 = nil
                                                                                                                                                                                      L2_2.clanRewardToClaim = L3_2
                                                                                                                                                                                      L2_2 = {}
                                                                                                                                                                                      L3_2 = true
                                                                                                                                                                                      L2_2.isModal = L3_2
                                                                                                                                                                                      L3_2 = {}
                                                                                                                                                                                      L2_2.params = L3_2
                                                                                                                                                                                      L3_2 = L2_2.params
                                                                                                                                                                                      L4_2 = "itemReward"
                                                                                                                                                                                      L5_2 = A0_2.a
                                                                                                                                                                                      L3_2[L4_2] = L5_2
                                                                                                                                                                                      L3_2 = L2_2.params
                                                                                                                                                                                      L4_2 = "coinReward"
                                                                                                                                                                                      L5_2 = A0_2.b
                                                                                                                                                                                      L3_2[L4_2] = L5_2
                                                                                                                                                                                      L3_2 = L0_1
                                                                                                                                                                                      L3_2 = L3_2.showOverlay
                                                                                                                                                                                      L4_2 = "lua.overlays.clanRewardOverlay"
                                                                                                                                                                                      L5_2 = L2_2
                                                                                                                                                                                      L3_2(L4_2, L5_2)
                                                                                                                                                                                    end
                                                                                                                                                                                    L2_2 = L6_1
                                                                                                                                                                                    L3_2 = "callback"
                                                                                                                                                                                    L2_2 = L2_2[L3_2]
                                                                                                                                                                                    if L2_2 then
                                                                                                                                                                                      L2_2 = L6_1
                                                                                                                                                                                      L3_2 = "callback"
                                                                                                                                                                                      L2_2 = L2_2[L3_2]
                                                                                                                                                                                      L3_2 = A0_2
                                                                                                                                                                                      L2_2(L3_2)
                                                                                                                                                                                    end
                                                                                                                                                                                  else
                                                                                                                                                                                    L1_2 = A0_2.m
                                                                                                                                                                                    L2_2 = L3_1
                                                                                                                                                                                    L3_2 = "requestClanRewardToClaim"
                                                                                                                                                                                    L2_2 = L2_2[L3_2]
                                                                                                                                                                                    L2_2 = L2_2()
                                                                                                                                                                                    if L1_2 == L2_2 then
                                                                                                                                                                                      L1_2 = A0_2.r
                                                                                                                                                                                      if L1_2 then
                                                                                                                                                                                        return
                                                                                                                                                                                      end
                                                                                                                                                                                      L1_2 = print
                                                                                                                                                                                      L2_2 = "Got clanrewardToClaim"
                                                                                                                                                                                      L3_2 = A0_2.a
                                                                                                                                                                                      L1_2(L2_2, L3_2)
                                                                                                                                                                                      L1_2 = L0_1
                                                                                                                                                                                      L1_2 = L1_2.data
                                                                                                                                                                                      L1_2 = L1_2.clans
                                                                                                                                                                                      L2_2 = tonumber
                                                                                                                                                                                      L3_2 = A0_2.a
                                                                                                                                                                                      L2_2 = L2_2(L3_2)
                                                                                                                                                                                      L3_2 = 1
                                                                                                                                                                                      L2_2 = L2_2 + L3_2
                                                                                                                                                                                      L1_2.clanRewardToClaim = L2_2
                                                                                                                                                                                      L1_2 = L6_1
                                                                                                                                                                                      L2_2 = "callback"
                                                                                                                                                                                      L1_2 = L1_2[L2_2]
                                                                                                                                                                                      if L1_2 then
                                                                                                                                                                                        L1_2 = L6_1
                                                                                                                                                                                        L2_2 = "callback"
                                                                                                                                                                                        L1_2 = L1_2[L2_2]
                                                                                                                                                                                        L2_2 = A0_2
                                                                                                                                                                                        L1_2(L2_2)
                                                                                                                                                                                      end
                                                                                                                                                                                    else
                                                                                                                                                                                      L1_2 = A0_2.m
                                                                                                                                                                                      L2_2 = L3_1
                                                                                                                                                                                      L2_2 = L2_2.setClanState
                                                                                                                                                                                      L2_2 = L2_2()
                                                                                                                                                                                      if L1_2 == L2_2 then
                                                                                                                                                                                        L1_2 = A0_2.r
                                                                                                                                                                                        if L1_2 then
                                                                                                                                                                                        else
                                                                                                                                                                                          L1_2 = L0_1
                                                                                                                                                                                          L1_2 = L1_2.clanUtils
                                                                                                                                                                                          L2_2 = "setEditableClanState"
                                                                                                                                                                                          L1_2 = L1_2[L2_2]
                                                                                                                                                                                          L2_2 = A0_2
                                                                                                                                                                                          L1_2(L2_2)
                                                                                                                                                                                        end
                                                                                                                                                                                        L1_2 = L6_1
                                                                                                                                                                                        L2_2 = "callback"
                                                                                                                                                                                        L1_2 = L1_2[L2_2]
                                                                                                                                                                                        if L1_2 then
                                                                                                                                                                                          L1_2 = L6_1
                                                                                                                                                                                          L2_2 = "callback"
                                                                                                                                                                                          L1_2 = L1_2[L2_2]
                                                                                                                                                                                          L2_2 = A0_2
                                                                                                                                                                                          L1_2(L2_2)
                                                                                                                                                                                        end
                                                                                                                                                                                      else
                                                                                                                                                                                        L1_2 = print
                                                                                                                                                                                        L2_2 = "WARNING: unknown tcp format"
                                                                                                                                                                                        L1_2(L2_2)
                                                                                                                                                                                        if A0_2 then
                                                                                                                                                                                          L1_2 = print
                                                                                                                                                                                          L2_2 = "data.m "
                                                                                                                                                                                          L3_2 = A0_2.m
                                                                                                                                                                                          L1_2(L2_2, L3_2)
                                                                                                                                                                                          L1_2 = "corrupt"
                                                                                                                                                                                          L1_2 = A0_2[L1_2]
                                                                                                                                                                                          if L1_2 then
                                                                                                                                                                                            L1_2 = print
                                                                                                                                                                                            L2_2 = "WARNING: got corrupt data"
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
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_4437::
end

function L12_1(A0_2)
  local L1_2
  L1_2 = L6_1
  L1_2.callback = A0_2
end

L6_1.setCallback = L12_1

function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L0_1
  L0_2 = L0_2.database
  L0_2 = L0_2.getPlayerInformation
  L0_2 = L0_2()
  if L0_2 then
    L1_2 = L0_2.token
    if L1_2 then
      L1_2 = {}
      L2_2 = L3_1
      L2_2 = L2_2.authenticate
      L2_2 = L2_2()
      L1_2.m = L2_2
      L2_2 = L0_2.token
      L1_2.a = L2_2
      L2_2 = system
      L2_2 = L2_2.getInfo
      L3_2 = "deviceID"
      L2_2 = L2_2(L3_2)
      L1_2.d = L2_2
      L2_2 = L0_1
      L2_2 = L2_2.config
      L2_2 = L2_2.platform
      L1_2.f = L2_2
      L2_2 = L0_2.playerId
      L1_2.p = L2_2
      L2_2 = L0_1
      L2_2 = L2_2.pushToken
      L1_2.u = L2_2
      L2_2 = L0_1
      L2_2 = L2_2.config
      L2_2 = L2_2.fullVersion
      L1_2.v = L2_2
      L2_2 = L0_1
      L2_2 = L2_2.config
      L2_2 = L2_2.localVersion
      L1_2.b = L2_2
      L2_2 = L4_1
      L2_2 = L2_2.startTCP
      L3_2 = L11_1
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
end

L6_1.startSocialTCP = L13_1

function L13_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2 = L0_2.sendHeatbeat
  L0_2()
end

L6_1.sendHeartbeat = L13_1

function L13_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L4_1
  if L0_2 == nil then
    return
  end
  L0_2 = L4_1
  L0_2 = L0_2.isOnline
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = {}
    L1_2 = L3_1
    L1_2 = L1_2.seenVideo
    L1_2 = L1_2()
    L0_2.m = L1_2
    L1_2 = L4_1
    L1_2 = L1_2.sendPacket
    L2_2 = L0_2
    L1_2(L2_2)
  else
    L0_2 = timer
    L0_2 = L0_2.performWithDelay
    L1_2 = 500
    L2_2 = L6_1
    L2_2 = L2_2.seenVideo
    L3_2 = 1
    L0_2(L1_2, L2_2, L3_2)
  end
end

L6_1.seenVideo = L13_1

function L13_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L4_1
  if L0_2 == nil then
    return
  end
  L0_2 = L4_1
  L0_2 = L0_2.isOnline
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = {}
    L1_2 = L3_1
    L1_2 = L1_2.seenBoostVideo
    L1_2 = L1_2()
    L0_2.m = L1_2
    L1_2 = L4_1
    L1_2 = L1_2.sendPacket
    L2_2 = L0_2
    L1_2(L2_2)
  else
    L0_2 = timer
    L0_2 = L0_2.performWithDelay
    L1_2 = 500
    L2_2 = L6_1
    L2_2 = L2_2.seenBoostVideo
    L3_2 = 1
    L0_2(L1_2, L2_2, L3_2)
  end
end

L6_1.seenBoostVideo = L13_1

function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L4_1
  if L3_2 == nil then
    return
  end
  
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L6_1
    L0_3 = L0_3.seenBoostVideoSingle
    L1_3 = A0_2
    L2_3 = A1_2
    L3_3 = A2_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L4_2 = L4_1
  L4_2 = L4_2.isOnline
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = {}
    L5_2 = L3_1
    L5_2 = L5_2.seenBoostVideoSingle
    L5_2 = L5_2()
    L4_2.m = L5_2
    L4_2.v = A0_2
    L4_2.t = A1_2
    L4_2.a = A2_2
    L5_2 = L4_1
    L5_2 = L5_2.sendPacket
    L6_2 = L4_2
    L5_2(L6_2)
  else
    L4_2 = timer
    L4_2 = L4_2.performWithDelay
    L5_2 = 500
    L6_2 = L3_2
    L7_2 = 1
    L4_2(L5_2, L6_2, L7_2)
  end
end

L6_1.seenBoostVideoSingle = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.getRankingListOnName
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.n = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.getRankingListOnName = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = L3_1
  L3_2 = L3_2.postGameChat
  L3_2 = L3_2()
  L2_2.m = L3_2
  L2_2.a = A1_2
  L2_2.b = A0_2
  L3_2 = L4_1
  L3_2 = L3_2.sendPacket
  L4_2 = L2_2
  L3_2(L4_2)
end

L6_1.postGameChat = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = L3_1
  L3_2 = L3_2.playerSearch
  L3_2 = L3_2()
  L2_2.m = L3_2
  L2_2.n = A0_2
  if A1_2 then
    L2_2.t = A1_2
  end
  L3_2 = L4_1
  L3_2 = L3_2.sendPacket
  L4_2 = L2_2
  L3_2(L4_2)
end

L6_1.playerSearch = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = L3_1
  L3_2 = L3_2.addFriend
  L3_2 = L3_2()
  L2_2.m = L3_2
  L2_2.p = A0_2
  L2_2.s = A1_2
  L3_2 = L4_1
  L3_2 = L3_2.sendPacket
  L4_2 = L2_2
  L3_2(L4_2)
end

L6_1.addFriend = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.addFacebookFriend
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.f = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.addFacebookFriend = L13_1

function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = {}
  L4_2 = L3_1
  L4_2 = L4_2.inviteFriendToGame
  L4_2 = L4_2()
  L3_2.m = L4_2
  L3_2.f = A0_2
  L3_2.s = A1_2
  L3_2.a = A2_2
  L4_2 = L4_1
  L4_2 = L4_2.sendPacket
  L5_2 = L3_2
  L4_2(L5_2)
end

L6_1.inviteFriendToGame = L13_1

function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = {}
  L4_2 = L3_1
  L4_2 = L4_2.inviteFriendTo2v2Game
  L4_2 = L4_2()
  L3_2.m = L4_2
  L3_2.f = A0_2
  L3_2.s = A1_2
  L3_2.a = A2_2
  L4_2 = L4_1
  L4_2 = L4_2.sendPacket
  L5_2 = L3_2
  L4_2(L5_2)
end

L6_1.inviteFriendTo2v2Game = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = L3_1
  L3_2 = L3_2.changeSkin
  L3_2 = L3_2()
  L2_2.m = L3_2
  L2_2.a = A0_2
  L2_2.b = A1_2
  L3_2 = L4_1
  L3_2 = L3_2.sendPacket
  L4_2 = L2_2
  L3_2(L4_2)
end

L6_1.changeSkin = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.claimAchievement
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.a = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.claimAchievement = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.claimDailyChallenge
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.a = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.claimDailyChallenge = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.claimEarnCoins
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.a = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.claimEarnCoins = L13_1

function L13_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.getAchievementList
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.getAchievementList = L13_1

function L13_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.getDailyChallenge
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.getDailyChallenge = L13_1

function L13_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.getEarnCoins
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.getEarnCoins = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.sendMysteryBox
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.f = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.sendMysteryBox = L13_1

function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = {}
  L5_2 = L3_1
  L5_2 = L5_2.claimMysteryBox
  L5_2 = L5_2()
  L4_2.m = L5_2
  L4_2.f = A1_2
  L4_2.g = A2_2
  L4_2.i = A0_2
  L4_2.c = A3_2
  L5_2 = L4_1
  L5_2 = L5_2.sendPacket
  L6_2 = L4_2
  L5_2(L6_2)
end

L6_1.claimMysteryBox = L13_1

function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = L6_1
  L1_2.callback = nil
  L1_2 = L4_1
  L1_2 = L1_2.closeTCP
  L2_2 = A0_2
  L1_2(L2_2)
end

L6_1.stopTCPSocial = L13_1

function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.hostGame
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.z = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.hostGame = L14_1

function L14_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.requestGame
  L1_2 = L1_2()
  L0_2.m = L1_2
  L0_2.z = 1
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.getGameServerAddress = L14_1

function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.deleteFriendRequest
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.p = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.deleteFriendRequest = L15_1

function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.acceptFriendRequest
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.p = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.acceptFriendRequest = L15_1

function L15_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.clearFriendRequest
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.clearFriendRequest = L15_1

function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.deleteFriend
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.p = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.deleteFriend = L15_1

function L15_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.clearLeaguePrize
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.clearLeaguePrize = L15_1

function L15_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2 = L0_2.isOnline
  return L0_2()
end

L6_1.isOnline = L15_1

function L15_1(A0_2)
  local L1_2, L2_2
  L1_2 = L4_1
  L1_2 = L1_2.changeReadInterval
  L2_2 = A0_2
  L1_2(L2_2)
end

L6_1.changeReadInterval = L15_1

function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.playerStateUpdate
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.s = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.playerStateUpdate = L15_1

function L15_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = {}
  L5_2 = L3_1
  L5_2 = L5_2.rateCrazyRace
  L5_2 = L5_2()
  L4_2.m = L5_2
  L4_2.r = A0_2
  L4_2.d = A1_2
  L4_2.a = A2_2
  L4_2.g = 1
  L4_2.f = A3_2
  L5_2 = L4_1
  L5_2 = L5_2.sendPacket
  L6_2 = L4_2
  L5_2(L6_2)
end

L6_1.rateCrazyRace = L15_1

function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.rateApp
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.a = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.rateApp = L15_1

function L15_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.useSpin
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.useSpin = L15_1

function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.claimConsecutiveLogin
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.d = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.claimConsecutiveLogin = L15_1

function L15_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = {}
  L5_2 = L3_1
  L5_2 = L5_2.reportPlayer
  L5_2 = L5_2()
  L4_2.m = L5_2
  L4_2.t = A0_2
  L4_2.g = A1_2
  L4_2.r = A2_2
  L4_2.c = A3_2
  L5_2 = L4_1
  L5_2 = L5_2.sendPacket
  L6_2 = L4_2
  L5_2(L6_2)
end

L6_1.sendReportPlayer = L15_1

function L15_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.getReportStatus
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.getReportStatus = L15_1

function L15_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.getBestLevelTimes
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.getBestLevelTimes = L15_1

function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = {}
  L4_2 = L3_1
  L4_2 = L4_2.updatePushNotificationSettings
  L4_2 = L4_2()
  L3_2.m = L4_2
  L3_2.sa = A0_2
  L3_2.sb = A1_2
  L3_2.sc = A2_2
  L4_2 = L4_1
  L4_2 = L4_2.sendPacket
  L5_2 = L3_2
  L4_2(L5_2)
end

L6_1.updatePushNotificationSettings = L15_1

function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L0_1
  L0_2 = L0_2.database
  L0_2 = L0_2.getGameInvites
  L0_2 = L0_2()
  L0_2 = #L0_2
  L1_2 = L0_1
  L1_2 = L1_2.database
  L1_2 = L1_2.getNumberOfFriendRequests
  L1_2 = L1_2()
  L2_2 = L0_1
  L2_2 = L2_2.database
  L2_2 = L2_2.getMysteryBoxes
  L2_2 = L2_2()
  L2_2 = #L2_2
  L3_2 = L0_1
  L3_2 = L3_2.database
  L3_2 = L3_2.getClanInvites
  L3_2 = L3_2()
  L3_2 = #L3_2
  L4_2 = L1_2 + L0_2
  L4_2 = L4_2 + L2_2
  L4_2 = L4_2 + L3_2
  return L4_2
end

L6_1.getNumberOfNotifications = L15_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = L3_1
  L3_2 = L3_2.purchaseItem
  L3_2 = L3_2()
  L2_2.m = L3_2
  L2_2.i = A0_2
  L2_2.c = A1_2
  L3_2 = L4_1
  L3_2 = L3_2.sendPacket
  L4_2 = L2_2
  L3_2(L4_2)
end

L6_1.purchaseItem = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.setActiveCreature
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L0_1
  L1_2 = L1_2.monsterConverter
  L1_2 = L1_2.toServerFormat
  L2_2 = L0_1
  L2_2 = L2_2.database
  L2_2 = L2_2.getAvatarData
  L2_2 = L2_2()
  L1_2 = L1_2(L2_2)
  L0_2.fa = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.setActiveCreature = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.setPowerupSkin
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L0_1
  L1_2 = L1_2.database
  L1_2 = L1_2.getPowerupSkin
  L1_2 = L1_2()
  L0_2.fk = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.setPowerupSkin = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.setPowerupShowcase
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.p = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.setPowerupShowcase = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.getMyLeagueMessage
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.getMyLeagueMessage = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.getEliteLeagueMessage
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.getEliteLeague = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.getFriendLeagueMessage
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.getFriendLeague = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.getHallOfFameMessage
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.getHallOfFameLeague = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = L3_1
  L3_2 = L3_2.getPlayerLeagueDetailsMessage
  L3_2 = L3_2()
  L2_2.m = L3_2
  L2_2.p = A0_2
  L2_2.l = A1_2
  L3_2 = L4_1
  L3_2 = L3_2.sendPacket
  L4_2 = L2_2
  L3_2(L4_2)
end

L6_1.getPlayerLeagueDetailsMessage = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.getPlayerHallOfFameDetailsMessage
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.p = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.getPlayerHallOfFameDetailsMessage = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.getFriendHallOfFame
  L2_2 = L2_2()
  L1_2.m = L2_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.getFriendHallOfFame = L16_1

function L16_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  L6_2 = {}
  L7_2 = L3_1
  L7_2 = L7_2.createClan
  L7_2 = L7_2()
  L6_2.m = L7_2
  L6_2.n = A0_2
  L6_2.t = A1_2
  L6_2.e = A2_2
  L6_2.o = A3_2
  L6_2.p = A4_2
  L7_2 = A5_2 - 1
  L6_2.a = L7_2
  L7_2 = L4_1
  L7_2 = L7_2.sendPacket
  L8_2 = L6_2
  L7_2(L8_2)
end

L6_1.createClan = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.getClanDetails
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.getClanDetails = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = L3_1
  L3_2 = L3_2.inviteToClan
  L3_2 = L3_2()
  L2_2.m = L3_2
  L2_2.p = A0_2
  L2_2.s = A1_2
  L3_2 = L4_1
  L3_2 = L3_2.sendPacket
  L4_2 = L2_2
  L3_2(L4_2)
end

L6_1.inviteToClan = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.leaveClan
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.leaveClan = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.receiveClanInvite
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.receiveClanInvite = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = {}
  L2_2.a = L3_2
  L3_2 = L2_2.a
  L3_2.p = A0_2
  L3_2 = L2_2.a
  L3_2.c = A1_2
  L3_2 = L3_1
  L3_2 = L3_2.acceptClanInvite
  L3_2 = L3_2()
  L2_2.m = L3_2
  L3_2 = L4_1
  L3_2 = L3_2.sendPacket
  L4_2 = L2_2
  L3_2(L4_2)
end

L6_1.acceptClanInvite = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = {}
  L2_2.a = L3_2
  L3_2 = L2_2.a
  L3_2.p = A0_2
  L3_2 = L2_2.a
  L3_2.c = A1_2
  L3_2 = L3_1
  L3_2 = L3_2.removeClanInvite
  L3_2 = L3_2()
  L2_2.m = L3_2
  L3_2 = L4_1
  L3_2 = L3_2.sendPacket
  L4_2 = L2_2
  L3_2(L4_2)
end

L6_1.removeClanInvite = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = {}
  L0_2.a = L1_2
  L1_2 = L3_1
  L1_2 = L1_2.removeAllClanInvites
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.removeAllClanInvites = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.sendClanMessage
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.a = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.sendClanMessage = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.setClanMessageOfTheDay
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.a = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.setClanMessageOfTheDay = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.getClanMessageLog
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.getClanMessageLog = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.getOpenClans
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.getOpenClans = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.joinOpenClan
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.a = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.joinOpenClan = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = L3_1
  L3_2 = L3_2.changeClanRank
  L3_2 = L3_2()
  L2_2.m = L3_2
  L2_2.a = A0_2
  L2_2.b = A1_2
  L3_2 = L4_1
  L3_2 = L3_2.sendPacket
  L4_2 = L2_2
  L3_2(L4_2)
end

L6_1.changeClanRank = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.clanHallOfFame
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.clanHallOfFame = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.clanHallOfFameDetails
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.a = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.clanHallOfFameDetails = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.clanLeague
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.clanLeague = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L1_2.a = A0_2
  L2_2 = L3_1
  L2_2 = L2_2.getClanLeagueDetails
  L2_2 = L2_2()
  L1_2.m = L2_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.getClanLeagueDetails = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.getClanLeaguePlayerDetails
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.getClanLeaguePlayerDetails = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.getClanMembers
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.getClanMembers = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.kickPlayerFromClan
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.a = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.kickPlayerFromClan = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.clearKickState
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.clearKickState = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.clearClanReward
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.clearClanReward = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.getClanInfo
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.a = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.getClanInfo = L16_1

function L16_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = {}
  L5_2 = L3_1
  L5_2 = L5_2.setClanState
  L5_2 = L5_2()
  L4_2.m = L5_2
  L4_2.a = A0_2
  L4_2.b = A1_2
  L5_2 = A2_2 - 1
  L4_2.c = L5_2
  L4_2.d = A3_2
  L5_2 = L4_1
  L5_2 = L5_2.sendPacket
  L6_2 = L4_2
  L5_2(L6_2)
end

L6_1.setClanState = L16_1

function L16_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = {}
  L6_2 = L3_1
  L6_2 = L6_2.sendClientStatReport
  L6_2 = L6_2()
  L5_2.m = L6_2
  L5_2.a = A0_2
  L5_2.b = A1_2
  L5_2.c = A2_2
  L5_2.d = A4_2
  L5_2.n = A3_2
  L6_2 = L0_1
  L6_2 = L6_2.debugger
  L6_2 = L6_2.debugTable
  L7_2 = "profiling"
  L8_2 = "Sending Latency Report to server!: "
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = L4_1
  L6_2 = L6_2.sendPacket
  L7_2 = L5_2
  L6_2(L7_2)
end

L6_1.sendClientStatReport = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.setSeenNewsTimestamp
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.setSeenNewsTimestamp = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L3_1
  L2_2 = L2_2.purchaseClanSupporter
  L2_2 = L2_2()
  L1_2.m = L2_2
  L1_2.l = A0_2
  L2_2 = L4_1
  L2_2 = L2_2.sendPacket
  L3_2 = L1_2
  L2_2(L3_2)
end

L6_1.purchaseClanSupporter = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.claimClanReward
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.claimClanReward = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = L3_1
  L1_2 = L1_2.requestClanRewardToClaim
  L1_2 = L1_2()
  L0_2.m = L1_2
  L1_2 = L4_1
  L1_2 = L1_2.sendPacket
  L2_2 = L0_2
  L1_2(L2_2)
end

L6_1.requestClanRewardToClaim = L16_1
L0_1.comm = L6_1
