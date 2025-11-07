local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
L1_1 = require
L2_1 = "widget"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "lua.network.chatMessageFormat"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "lua.modules.clans.clanEventParser"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "lua.modules.clans.clanEmblem"
L5_1 = L5_1(L6_1)

function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2)
  local L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2
  L11_2 = {}
  L12_2 = false
  L13_2 = nil
  L14_2 = nil
  L15_2 = nil
  L16_2 = nil
  
  function L17_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.target
    if "began" == L1_3 then
      L3_3 = true
      L12_2 = L3_3
    elseif "moved" == L1_3 then
      L3_3 = false
      L12_2 = L3_3
    elseif "ended" == L1_3 then
      L3_3 = L12_2
      if L3_3 then
        L3_3 = A6_2
        if L3_3 == "ranking" then
          L3_3 = L2_3.getPlayerData
          if L3_3 then
            L3_3 = A7_2
            L4_3 = L2_3.getPlayerData
            L4_3 = L4_3()
            L5_3 = L2_3.getIndex
            L5_3 = L5_3()
            L6_3 = L16_2
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = L2_3.setSelected
            L4_3 = true
            L3_3(L4_3)
          end
        end
        L3_3 = A6_2
        if L3_3 == "challenge" then
          L3_3 = L2_3.index
          if L3_3 == 2 then
            L3_3 = A9_2
            if L3_3 then
              L3_3 = L2_1
              L3_3 = L3_3.consecutiveLoginsFormatted
              if L3_3 then
                L3_3 = A9_2
                L3_3()
            end
          end
          else
            L3_3 = L2_3.getChallengeData
            if L3_3 then
              L3_3 = A7_2
              L4_3 = L2_3.getChallengeData
              L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
            end
          end
        end
        L3_3 = A6_2
        if L3_3 == "consecutive" then
          L3_3 = L2_3.index
          if L3_3 == 1 then
            L3_3 = L2_1
            L3_3 = L3_3.consecutiveLoginsCount
            if L3_3 then
              L4_3 = L2_1
              L4_3 = L4_3.consecutiveLoginsFormatted
              if L4_3 then
                L4_3 = L2_1
                L4_3 = L4_3.consecutiveLoginsFormatted
                L4_3 = #L4_3
                if 0 < L4_3 then
                  L4_3 = L3_3 - 1
                  if L4_3 < 0 then
                    L4_3 = 0
                  end
                  L5_3 = L2_3.index
                  L5_3 = L4_3 + L5_3
                  L6_3 = L2_1
                  L6_3 = L6_3.awards
                  L6_3 = L6_3.getConsecutiveDayConstant
                  L7_3 = L3_3
                  L6_3 = L6_3(L7_3)
                  L7_3 = L6_3.max
                  L8_3 = L2_1
                  L8_3 = L8_3.consecutiveLoginsFormatted
                  L8_3 = L8_3[1]
                  L9_3 = L8_3.p
                  L10_3 = false
                  L11_3 = L8_3.c
                  if L11_3 then
                    L11_3 = L8_3.c
                    if L11_3 == 1 then
                      L10_3 = true
                    end
                  end
                  L11_3 = L9_3 / L7_3
                  if 1 <= L11_3 and not L10_3 then
                    L12_3 = L2_1
                    L12_3 = L12_3.comm
                    L12_3 = L12_3.claimConsecutiveLogin
                    L13_3 = L5_3
                    L12_3(L13_3)
                  else
                  end
                end
              end
            end
          end
        end
        L3_3 = A6_2
        if L3_3 == "market" then
          L3_3 = L2_3.clickButton
          if L3_3 then
            L3_3 = L2_3.clickButton
            L3_3()
          end
        end
        L3_3 = A6_2
        if L3_3 == "settings" then
          L3_3 = L2_3.clickButton
          if L3_3 then
            L3_3 = L2_3.clickButton
            L3_3()
          end
        end
        L3_3 = A6_2
        if L3_3 == "map" then
          L3_3 = L2_3.setThisMapActive
          if L3_3 then
            L3_3 = L2_3.setThisMapActive
            L3_3()
            L3_3 = A7_2
            L4_3 = L2_3.getId
            L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
          end
        end
        L3_3 = A6_2
        if L3_3 == "friends" then
          L3_3 = A0_3.x
          if 420 < L3_3 then
            L3_3 = L2_3.getId
            if L3_3 then
              L3_3 = A7_2
              L4_3 = L2_3.getId
              L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
          end
          else
            L3_3 = L2_3.toggleName
            if L3_3 then
              L3_3 = L2_3.toggleName
              L3_3()
            end
          end
        end
        L3_3 = A6_2
        if L3_3 == "findFriends" then
          L3_3 = A0_3.x
          if 317 < L3_3 then
            L3_3 = L2_3.getPlayerInfo
            if L3_3 then
              L3_3 = A7_2
              L4_3 = L2_3.getPlayerInfo
              L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
            end
          end
        end
        L3_3 = A6_2
        if L3_3 == "friendsSettings1" then
          L3_3 = L2_3.openGift
          if L3_3 then
            L3_3 = A0_3.x
            if 330 < L3_3 then
              L3_3 = A7_2
              L4_3 = L2_3.openGift
              L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
            end
          else
            L3_3 = L2_3.expandGifts
            if L3_3 then
              L3_3 = A7_2
              L4_3 = L2_3.expandGifts
              L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
            else
              L3_3 = L2_3.expandClanInvites
              if L3_3 then
                L3_3 = A7_2
                L4_3 = L2_3.expandClanInvites
                L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
                L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
              else
                L3_3 = L2_3.clanInvite
                if L3_3 then
                  L3_3 = A0_3.x
                  if 330 < L3_3 then
                    L3_3 = A7_2
                    L4_3 = L2_3.deleteClanInvite
                    L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
                    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
                  else
                    L3_3 = A0_3.x
                    if 270 < L3_3 then
                      L3_3 = A7_2
                      L4_3 = L2_3.acceptClanInvite
                      L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
                      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
                    else
                      L3_3 = A0_3.x
                      if -5 < L3_3 then
                        L3_3 = A7_2
                        L4_3 = L2_3.showInfo
                        L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
                        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
                      end
                    end
                  end
                else
                  L3_3 = L2_3.acceptRequest
                  if L3_3 then
                    L3_3 = L2_3.deleteRequest
                    if L3_3 then
                      L3_3 = A0_3.x
                      if 330 < L3_3 then
                        L3_3 = A7_2
                        L4_3 = L2_3.deleteRequest
                        L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
                        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
                      else
                        L3_3 = A0_3.x
                        if 270 < L3_3 then
                          L3_3 = A7_2
                          L4_3 = L2_3.acceptRequest
                          L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
                          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
        L3_3 = A6_2
        if L3_3 == "friendsSettings2" then
          L3_3 = L2_3.isMysteryBox
          if L3_3 then
            L3_3 = A0_3.x
            if 330 < L3_3 then
              L3_3 = A7_2
              L4_3 = L2_3.sendMysterybox
              L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
            else
              L3_3 = L2_3.toggleName
              if L3_3 then
                L3_3 = L2_3.toggleName
                L3_3()
              end
            end
          else
            L3_3 = L2_3.expandFriendRequests
            if L3_3 then
              L3_3 = A7_2
              L4_3 = L2_3.expandFriendRequests
              L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
            else
              L3_3 = L2_3.isRequest
              if L3_3 then
                L3_3 = L2_3.isRequest
                L3_3 = L3_3()
                if L3_3 then
                  L3_3 = A0_3.x
                  if 330 < L3_3 then
                    L3_3 = A7_2
                    L4_3 = L2_3.declineFriend
                    L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
                    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
                  else
                    L3_3 = A0_3.x
                    if 270 < L3_3 then
                      L3_3 = A7_2
                      L4_3 = L2_3.acceptFriend
                      L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
                      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
                    end
                  end
                else
                  L3_3 = A0_3.x
                  if 330 < L3_3 then
                    L3_3 = L2_3.isGameInvite
                    L3_3 = L3_3()
                    if L3_3 then
                      L3_3 = A7_2
                      L4_3 = L2_3.sendGameInvite
                      L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
                      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
                    else
                      L3_3 = A7_2
                      L4_3 = L2_3.deleteFriend
                      L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L4_3()
                      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
                    end
                  else
                    L3_3 = L2_3.toggleName
                    if L3_3 then
                      L3_3 = L2_3.toggleName
                      L3_3()
                    end
                  end
                end
              end
            end
          end
        end
        L3_3 = A6_2
        if L3_3 == "friendsSettings3" then
        end
        L3_3 = A6_2
        if L3_3 == "clanHubPlayerList" then
          L3_3 = A7_2
          if L3_3 then
            L3_3 = L2_3.getPlayerId
            if L3_3 then
              L3_3 = A7_2
              L4_3 = L2_3.getPlayerId
              L4_3 = L4_3()
              L5_3 = L2_3
              L3_3(L4_3, L5_3)
            end
          end
        end
        L3_3 = A6_2
        if L3_3 == "rankingPrizes" then
          L3_3 = print
          L4_3 = "ranking prizes touch"
          L3_3(L4_3)
        end
        L3_3 = A6_2
        if L3_3 == "openClans" then
          L3_3 = L2_3.clanId
          if L3_3 then
            L3_3 = A7_2
            if L3_3 then
              L3_3 = A7_2
              L4_3 = L2_3.clanId
              L3_3(L4_3)
            end
          end
        end
      end
      L3_3 = false
      L12_2 = L3_3
    end
  end
  
  function L18_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = L3_3.header
    if L4_3 then
      L4_3 = L2_1
      L4_3 = L4_3.newText
      L5_3 = {}
      L6_3 = L2_1
      L6_3 = L6_3.localized
      L6_3 = L6_3.get
      L7_3 = L3_3.text
      L6_3 = L6_3(L7_3)
      L5_3.string = L6_3
      L5_3.size = 18
      L5_3.x = 42
      L6_3 = L2_3.contentHeight
      L6_3 = L6_3 * 0.43
      L5_3.y = L6_3
      L5_3.ax = 0
      L6_3 = L2_1
      L6_3 = L6_3.colors
      L6_3 = L6_3.almostWhite
      L5_3.color = L6_3
      L4_3 = L4_3(L5_3)
      L6_3 = L2_3
      L5_3 = L2_3.insert
      L7_3 = L4_3
      L5_3(L6_3, L7_3)
      return
    end
    L4_3 = display
    L4_3 = L4_3.newImageRect
    L5_3 = "images/gui/friends/cell.png"
    L6_3 = 256
    L7_3 = 51
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L4_3.anchorX = 0
    L4_3.anchorY = 0
    L6_3 = L2_3
    L5_3 = L2_3.insert
    L7_3 = L4_3
    L5_3(L6_3, L7_3)
    L4_3.x = 10
    L4_3.y = 0
    L5_3 = L3_3.username
    if L5_3 then
      L5_3 = L2_1
      L5_3 = L5_3.newText
      L6_3 = {}
      L7_3 = L3_3.username
      L6_3.string = L7_3
      L6_3.size = 25
      L7_3 = L4_3.x
      L7_3 = L7_3 + 42
      L6_3.x = L7_3
      L7_3 = L2_3.contentHeight
      L7_3 = L7_3 * 0.43
      L6_3.y = L7_3
      L6_3.ax = 0
      L5_3 = L5_3(L6_3)
      L7_3 = L2_3
      L6_3 = L2_3.insert
      L8_3 = L5_3
      L6_3(L7_3, L8_3)
    else
      L5_3 = L3_3.mysteryBox
      if L5_3 then
        L5_3 = L3_3.f
        if L5_3 then
          L5_3 = L2_1
          L5_3 = L5_3.newText
          L6_3 = {}
          L7_3 = L2_1
          L7_3 = L7_3.localized
          L7_3 = L7_3.get
          L8_3 = "gift"
          L7_3 = L7_3(L8_3)
          L8_3 = L3_3.f
          L7_3 = L7_3 .. L8_3
          L6_3.string = L7_3
          L6_3.size = 25
          L7_3 = L4_3.x
          L7_3 = L7_3 + 42
          L6_3.x = L7_3
          L7_3 = L2_3.contentHeight
          L7_3 = L7_3 * 0.43
          L6_3.y = L7_3
          L6_3.ax = 0
          L5_3 = L5_3(L6_3)
          L7_3 = L2_3
          L6_3 = L2_3.insert
          L8_3 = L5_3
          L6_3(L7_3, L8_3)
      end
      else
        L5_3 = L3_3.mysteryBoxCollection
        if L5_3 then
          L5_3 = L2_1
          L5_3 = L5_3.newText
          L6_3 = {}
          L7_3 = L3_3.numberOfAdditionalGifts
          L8_3 = L2_1
          L8_3 = L8_3.localized
          L8_3 = L8_3.get
          L9_3 = " more gifts"
          L8_3 = L8_3(L9_3)
          L7_3 = L7_3 .. L8_3
          L6_3.string = L7_3
          L6_3.size = 25
          L7_3 = L4_3.x
          L7_3 = L7_3 + 42
          L6_3.x = L7_3
          L7_3 = L2_3.contentHeight
          L7_3 = L7_3 * 0.43
          L6_3.y = L7_3
          L6_3.ax = 0
          L5_3 = L5_3(L6_3)
          L7_3 = L2_3
          L6_3 = L2_3.insert
          L8_3 = L5_3
          L6_3(L7_3, L8_3)
        else
          L5_3 = L3_3.clanInviteCollection
          if L5_3 then
            L5_3 = L2_1
            L5_3 = L5_3.newText
            L6_3 = {}
            L7_3 = L3_3.numberOfAdditionalClanInvites
            L8_3 = L2_1
            L8_3 = L8_3.localized
            L8_3 = L8_3.get
            L9_3 = " more clan invites"
            L8_3 = L8_3(L9_3)
            L7_3 = L7_3 .. L8_3
            L6_3.string = L7_3
            L6_3.size = 25
            L7_3 = L4_3.x
            L7_3 = L7_3 + 42
            L6_3.x = L7_3
            L7_3 = L2_3.contentHeight
            L7_3 = L7_3 * 0.43
            L6_3.y = L7_3
            L6_3.ax = 0
            L5_3 = L5_3(L6_3)
            L7_3 = L2_3
            L6_3 = L2_3.insert
            L8_3 = L5_3
            L6_3(L7_3, L8_3)
          end
        end
      end
    end
    L5_3 = nil
    L6_3 = nil
    L7_3 = L3_3.mysteryBox
    if L7_3 then
      L7_3 = display
      L7_3 = L7_3.newImageRect
      L8_3 = "images/gui/friends/openMysterybox.png"
      L9_3 = 36
      L10_3 = 36
      L7_3 = L7_3(L8_3, L9_3, L10_3)
      L7_3.anchorX = 0
      L7_3.anchorY = 0
      L9_3 = L2_3
      L8_3 = L2_3.insert
      L10_3 = L7_3
      L8_3(L9_3, L10_3)
      L8_3 = L4_3.x
      L8_3 = L8_3 + 212
      L7_3.x = L8_3
      L7_3.y = 6
      L5_3 = "images/gui/friends/messageIconMysterybox.png"
    else
      L7_3 = L3_3.clanInvite
      if L7_3 then
        L7_3 = display
        L7_3 = L7_3.newImageRect
        L8_3 = "images/gui/friends/roundAccept.png"
        L9_3 = 36
        L10_3 = 36
        L7_3 = L7_3(L8_3, L9_3, L10_3)
        L7_3.anchorX = 0
        L7_3.anchorY = 0
        L9_3 = L2_3
        L8_3 = L2_3.insert
        L10_3 = L7_3
        L8_3(L9_3, L10_3)
        L8_3 = L4_3.x
        L8_3 = L8_3 + 162
        L7_3.x = L8_3
        L7_3.y = 6
        L8_3 = display
        L8_3 = L8_3.newImageRect
        L9_3 = "images/gui/friends/roundDecline.png"
        L10_3 = 36
        L11_3 = 36
        L8_3 = L8_3(L9_3, L10_3, L11_3)
        L8_3.anchorX = 0
        L8_3.anchorY = 0
        L10_3 = L2_3
        L9_3 = L2_3.insert
        L11_3 = L8_3
        L9_3(L10_3, L11_3)
        L9_3 = L4_3.x
        L9_3 = L9_3 + 212
        L8_3.x = L9_3
        L8_3.y = 6
        L9_3 = display
        L9_3 = L9_3.newImageRect
        L10_3 = "images/gui/friends/roundInfo.png"
        L11_3 = 22
        L12_3 = 22
        L9_3 = L9_3(L10_3, L11_3, L12_3)
        L6_3 = L9_3
        L6_3.anchorX = 0
        L6_3.anchorY = 0.5
        L10_3 = L2_3
        L9_3 = L2_3.insert
        L11_3 = L6_3
        L9_3(L10_3, L11_3)
        L9_3 = L4_3.x
        L9_3 = L9_3 - 5
        L6_3.x = L9_3
        L6_3.y = 5
        L9_3 = L2_1
        L9_3 = L9_3.newText
        L10_3 = {}
        L11_3 = L2_1
        L11_3 = L11_3.localized
        L11_3 = L11_3.get
        L12_3 = "JoinClan"
        L11_3 = L11_3(L12_3)
        L10_3.string = L11_3
        L10_3.size = 16
        L11_3 = L4_3.x
        L11_3 = L11_3 + 45
        L10_3.x = L11_3
        L11_3 = L2_3.contentHeight
        L11_3 = L11_3 * 0.15
        L10_3.y = L11_3
        L10_3.ax = 0
        L9_3 = L9_3(L10_3)
        L11_3 = L2_3
        L10_3 = L2_3.insert
        L12_3 = L9_3
        L10_3(L11_3, L12_3)
        L10_3 = L2_1
        L10_3 = L10_3.newText
        L11_3 = {}
        L12_3 = L3_3.c
        L12_3 = L12_3.b
        L11_3.string = L12_3
        L11_3.size = 20
        L12_3 = L4_3.x
        L12_3 = L12_3 + 45
        L11_3.x = L12_3
        L12_3 = L2_3.contentHeight
        L12_3 = L12_3 * 0.4
        L11_3.y = L12_3
        L11_3.ax = 0
        L10_3 = L10_3(L11_3)
        L12_3 = L2_3
        L11_3 = L2_3.insert
        L13_3 = L10_3
        L11_3(L12_3, L13_3)
        L11_3 = L2_1
        L11_3 = L11_3.newText
        L12_3 = {}
        L13_3 = "-"
        L14_3 = L3_3.p
        L14_3 = L14_3.n
        L13_3 = L13_3 .. L14_3
        L12_3.string = L13_3
        L12_3.size = 16
        L13_3 = L4_3.x
        L13_3 = L13_3 + 45
        L12_3.x = L13_3
        L13_3 = L2_3.contentHeight
        L13_3 = L13_3 * 0.69
        L12_3.y = L13_3
        L12_3.ax = 0
        L11_3 = L11_3(L12_3)
        L13_3 = L2_3
        L12_3 = L2_3.insert
        L14_3 = L11_3
        L12_3(L13_3, L14_3)
        L5_3 = "images/gui/friends/messageIconClan.png"
      else
        L7_3 = L3_3.mysteryBoxCollection
        if L7_3 then
          L5_3 = "images/gui/friends/messageIconMysterybox.png"
        else
          L7_3 = L3_3.clanInviteCollection
          if L7_3 then
            L5_3 = "images/gui/friends/messageIconClan.png"
          else
            L7_3 = L3_3.gameInvite
            if not L7_3 then
              L7_3 = L3_3.clanInvite
              if not L7_3 then
                goto lbl_330
              end
            end
            L7_3 = display
            L7_3 = L7_3.newImageRect
            L8_3 = "images/gui/friends/roundAccept.png"
            L9_3 = 36
            L10_3 = 36
            L7_3 = L7_3(L8_3, L9_3, L10_3)
            L7_3.anchorX = 0
            L7_3.anchorY = 0
            L9_3 = L2_3
            L8_3 = L2_3.insert
            L10_3 = L7_3
            L8_3(L9_3, L10_3)
            L8_3 = L4_3.x
            L8_3 = L8_3 + 162
            L7_3.x = L8_3
            L7_3.y = 6
            L8_3 = display
            L8_3 = L8_3.newImageRect
            L9_3 = "images/gui/friends/roundDecline.png"
            L10_3 = 36
            L11_3 = 36
            L8_3 = L8_3(L9_3, L10_3, L11_3)
            L8_3.anchorX = 0
            L8_3.anchorY = 0
            L10_3 = L2_3
            L9_3 = L2_3.insert
            L11_3 = L8_3
            L9_3(L10_3, L11_3)
            L9_3 = L4_3.x
            L9_3 = L9_3 + 212
            L8_3.x = L9_3
            L8_3.y = 6
            L5_3 = "images/gui/friends/messageIconInvite.png"
            L9_3 = L3_3.invite2v2
            if L9_3 then
              L5_3 = "images/gui/friends/messageIconInvite2v2.png"
            end
          end
        end
      end
    end
    ::lbl_330::
    L7_3 = nil
    if L5_3 then
      L8_3 = display
      L8_3 = L8_3.newImageRect
      L9_3 = L5_3
      L10_3 = 30
      L11_3 = 30
      L8_3 = L8_3(L9_3, L10_3, L11_3)
      L7_3 = L8_3
      L7_3.anchorX = 0
      L7_3.anchorY = 0
      L9_3 = L2_3
      L8_3 = L2_3.insert
      L10_3 = L7_3
      L8_3(L9_3, L10_3)
      L8_3 = L4_3.x
      L8_3 = L8_3 + 5
      L7_3.x = L8_3
      L7_3.y = 8
    end
    if L6_3 then
      L9_3 = L2_3
      L8_3 = L2_3.insert
      L10_3 = L6_3
      L8_3(L9_3, L10_3)
    end
    
    function L8_3()
      local L0_4, L1_4, L2_4
      L0_4 = {}
      L1_4 = L3_3
      L1_4 = L1_4.p
      L0_4.playerId = L1_4
      L1_4 = L3_3
      L1_4 = L1_4.m
      L0_4.messageType = L1_4
      L1_4 = 1
      L2_4 = L0_4
      return L1_4, L2_4
    end
    
    function L9_3()
      local L0_4, L1_4, L2_4
      L0_4 = {}
      L1_4 = L3_3
      L1_4 = L1_4.p
      L0_4.playerId = L1_4
      L1_4 = L3_3
      L1_4 = L1_4.s
      L0_4.sessionId = L1_4
      L1_4 = L3_3
      L1_4 = L1_4.a
      L0_4.serverAddress = L1_4
      L1_4 = L3_3
      L1_4 = L1_4.m
      L0_4.messageType = L1_4
      L1_4 = 2
      L2_4 = L0_4
      return L1_4, L2_4
    end
    
    function L10_3()
      local L0_4, L1_4, L2_4
      L0_4 = {}
      L1_4 = L3_3
      L1_4 = L1_4.p
      L1_4 = L1_4.p
      L0_4.playerId = L1_4
      L1_4 = L3_3
      L1_4 = L1_4.c
      L1_4 = L1_4._id
      L0_4.clanId = L1_4
      L1_4 = 4
      L2_4 = L0_4
      return L1_4, L2_4
    end
    
    function L11_3()
      local L0_4, L1_4, L2_4
      L0_4 = {}
      L1_4 = L3_3
      L1_4 = L1_4.p
      L1_4 = L1_4.p
      L0_4.playerId = L1_4
      L1_4 = L3_3
      L1_4 = L1_4.c
      L1_4 = L1_4._id
      L0_4.clanId = L1_4
      L1_4 = 5
      L2_4 = L0_4
      return L1_4, L2_4
    end
    
    function L12_3()
      local L0_4, L1_4, L2_4
      L0_4 = {}
      L1_4 = L3_3
      L1_4 = L1_4.p
      L1_4 = L1_4.p
      L0_4.playerId = L1_4
      L1_4 = L3_3
      L1_4 = L1_4.c
      L1_4 = L1_4._id
      L0_4.clanId = L1_4
      L1_4 = 6
      L2_4 = L0_4
      return L1_4, L2_4
    end
    
    function L13_3()
      local L0_4, L1_4, L2_4
      L0_4 = {}
      L1_4 = L3_3
      L0_4.item = L1_4
      L1_4 = 3
      L2_4 = L0_4
      return L1_4, L2_4
    end
    
    function L14_3()
      local L0_4, L1_4, L2_4
      L0_4 = {}
      L1_4 = 7
      L2_4 = L0_4
      return L1_4, L2_4
    end
    
    function L15_3()
      local L0_4, L1_4, L2_4
      L0_4 = {}
      L1_4 = 8
      L2_4 = L0_4
      return L1_4, L2_4
    end
    
    L2_3.deleteRequest = L8_3
    L2_3.acceptRequest = L9_3
    L2_3.deleteClanInvite = L10_3
    L2_3.acceptClanInvite = L11_3
    L2_3.showInfo = L12_3
    L16_3 = L3_3.mysteryBox
    if L16_3 then
      L2_3.openGift = L13_3
    end
    L16_3 = L3_3.mysteryBoxCollection
    if L16_3 then
      L2_3.expandGifts = L14_3
    end
    L16_3 = L3_3.clanInviteCollection
    if L16_3 then
      L2_3.expandClanInvites = L15_3
    end
    L16_3 = L3_3.clanInvite
    if L16_3 then
      L16_3 = L3_3.clanInvite
      L2_3.clanInvite = L16_3
    end
  end
  
  function L19_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = math
    L1_3 = L1_3.floor
    L2_3 = L2_1
    L2_3 = L2_3.database
    L2_3 = L2_3.getFriendTime
    L2_3 = L2_3()
    L2_3 = A0_3 + L2_3
    L1_3 = L1_3(L2_3)
    L2_3 = L1_3 / 43829
    L3_3 = math
    L3_3 = L3_3.floor
    L4_3 = L1_3 / 10080
    L3_3 = L3_3(L4_3)
    L4_3 = math
    L4_3 = L4_3.floor
    L5_3 = L1_3 / 1440
    L4_3 = L4_3(L5_3)
    L5_3 = math
    L5_3 = L5_3.floor
    L6_3 = L1_3 / 60
    L5_3 = L5_3(L6_3)
    if 1 <= L2_3 then
      L6_3 = "> 1 month"
      return L6_3
    elseif 1 < L3_3 then
      L6_3 = L3_3
      L7_3 = " weeks"
      L6_3 = L6_3 .. L7_3
      return L6_3
    elseif L3_3 == 1 then
      L6_3 = L3_3
      L7_3 = " week"
      L6_3 = L6_3 .. L7_3
      return L6_3
    elseif 1 < L4_3 then
      L6_3 = L4_3
      L7_3 = " days"
      L6_3 = L6_3 .. L7_3
      return L6_3
    elseif L4_3 == 1 then
      L6_3 = L4_3
      L7_3 = " day"
      L6_3 = L6_3 .. L7_3
      return L6_3
    elseif 1 < L5_3 then
      L6_3 = L5_3
      L7_3 = " hours"
      L6_3 = L6_3 .. L7_3
      return L6_3
    elseif L5_3 == 1 then
      L6_3 = L5_3
      L7_3 = " hour"
      L6_3 = L6_3 .. L7_3
      return L6_3
    elseif 1 < L1_3 then
      L6_3 = L1_3
      L7_3 = " minutes"
      L6_3 = L6_3 .. L7_3
      return L6_3
    elseif L1_3 <= 1 then
      L6_3 = "< 1 minute"
      return L6_3
    end
    L6_3 = "a long time"
    return L6_3
  end
  
  function L20_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = nil
    L5_3 = L3_3.showDelete
    L6_3 = true
    L7_3 = display
    L7_3 = L7_3.newImageRect
    L8_3 = "images/gui/friends/cell.png"
    L9_3 = 256
    L10_3 = 51
    L7_3 = L7_3(L8_3, L9_3, L10_3)
    L7_3.anchorX = 0
    L7_3.anchorY = 0
    L9_3 = L2_3
    L8_3 = L2_3.insert
    L10_3 = L7_3
    L8_3(L9_3, L10_3)
    L7_3.x = 10
    L7_3.y = 0
    L8_3 = nil
    L9_3 = L3_3.n2
    if L9_3 then
      L8_3 = L3_3.n2
    else
      L9_3 = L3_3.n
      if L9_3 then
        L8_3 = L3_3.n
      end
    end
    L9_3 = L2_1
    L9_3 = L9_3.newText
    L10_3 = {}
    L10_3.string = L8_3
    L10_3.size = 25
    L11_3 = L7_3.x
    L11_3 = L11_3 + 42
    L10_3.x = L11_3
    L11_3 = L2_3.contentHeight
    L11_3 = L11_3 * 0.43
    L10_3.y = L11_3
    L10_3.ax = 0
    L9_3 = L9_3(L10_3)
    L10_3 = L3_3.friendRequestCollection
    if L10_3 then
      L10_3 = L3_3.numberOfAdditionalRequests
      L11_3 = L2_1
      L11_3 = L11_3.localized
      L11_3 = L11_3.get
      L12_3 = " more friend requests"
      L11_3 = L11_3(L12_3)
      L10_3 = L10_3 .. L11_3
      L9_3.text = L10_3
      L10_3 = L9_3.x
      L10_3 = L10_3 - 20
      L9_3.x = L10_3
    end
    L11_3 = L2_3
    L10_3 = L2_3.insert
    L12_3 = L9_3
    L10_3(L11_3, L12_3)
    L10_3 = L3_3.state
    if L10_3 then
      L10_3 = tonumber
      L11_3 = L3_3.state
      L10_3 = L10_3(L11_3)
      if L10_3 == 1 then
        L10_3 = L9_3.y
        L10_3 = L10_3 - 5
        L9_3.y = L10_3
        L10_3 = L2_1
        L10_3 = L10_3.newText
        L11_3 = {}
        L11_3.string = "online"
        L11_3.size = 14
        L12_3 = L7_3.x
        L12_3 = L12_3 + 42
        L11_3.x = L12_3
        L12_3 = L2_3.contentHeight
        L12_3 = L12_3 * 0.65
        L11_3.y = L12_3
        L11_3.ax = 0
        L12_3 = {}
        L13_3 = 0.4196078431372549
        L14_3 = 0.5568627450980392
        L15_3 = 0.13725490196078433
        L12_3[1] = L13_3
        L12_3[2] = L14_3
        L12_3[3] = L15_3
        L11_3.color = L12_3
        L10_3 = L10_3(L11_3)
        L12_3 = L2_3
        L11_3 = L2_3.insert
        L13_3 = L10_3
        L11_3(L12_3, L13_3)
        L6_3 = false
      else
        L10_3 = tonumber
        L11_3 = L3_3.state
        L10_3 = L10_3(L11_3)
        if L10_3 == 2 then
          L10_3 = L9_3.y
          L10_3 = L10_3 - 5
          L9_3.y = L10_3
          L10_3 = L2_1
          L10_3 = L10_3.newText
          L11_3 = {}
          L11_3.string = "in game"
          L11_3.size = 14
          L12_3 = L7_3.x
          L12_3 = L12_3 + 42
          L11_3.x = L12_3
          L12_3 = L2_3.contentHeight
          L12_3 = L12_3 * 0.65
          L11_3.y = L12_3
          L11_3.ax = 0
          L12_3 = {}
          L13_3 = 0.4196078431372549
          L14_3 = 0.5568627450980392
          L15_3 = 0.13725490196078433
          L12_3[1] = L13_3
          L12_3[2] = L14_3
          L12_3[3] = L15_3
          L11_3.color = L12_3
          L10_3 = L10_3(L11_3)
          L12_3 = L2_3
          L11_3 = L2_3.insert
          L13_3 = L10_3
          L11_3(L12_3, L13_3)
          L6_3 = false
        end
      end
    end
    L10_3 = nil
    L11_3 = L3_3.facebookName
    if L11_3 then
      L11_3 = L2_1
      L11_3 = L11_3.newText
      L12_3 = {}
      L13_3 = L3_3.facebookName
      L12_3.string = L13_3
      L12_3.size = 25
      L13_3 = L7_3.x
      L13_3 = L13_3 + 42
      L12_3.x = L13_3
      L13_3 = L2_3.contentHeight
      L13_3 = L13_3 * 0.43
      L12_3.y = L13_3
      L12_3.ax = 0
      L11_3 = L11_3(L12_3)
      L10_3 = L11_3
      L12_3 = L2_3
      L11_3 = L2_3.insert
      L13_3 = L10_3
      L11_3(L12_3, L13_3)
      L10_3.isVisible = false
      L11_3 = display
      L11_3 = L11_3.newImageRect
      L12_3 = "images/gui/friends/fb.png"
      L13_3 = 30
      L14_3 = 30
      L11_3 = L11_3(L12_3, L13_3, L14_3)
      L11_3.anchorX = 0
      L11_3.anchorY = 0
      L13_3 = L2_3
      L12_3 = L2_3.insert
      L14_3 = L11_3
      L12_3(L13_3, L14_3)
      L12_3 = L7_3.x
      L12_3 = L12_3 + 5
      L11_3.x = L12_3
      L11_3.y = 8
    end
    if L6_3 then
      L11_3 = L3_3.l
      if L11_3 then
        L11_3 = L9_3.y
        L11_3 = L11_3 - 5
        L9_3.y = L11_3
        L11_3 = L2_1
        L11_3 = L11_3.newText
        L12_3 = {}
        L13_3 = "offline for "
        L14_3 = L19_2
        L15_3 = L3_3.l
        L14_3 = L14_3(L15_3)
        L13_3 = L13_3 .. L14_3
        L12_3.string = L13_3
        L12_3.size = 14
        L13_3 = L7_3.x
        L13_3 = L13_3 + 42
        L12_3.x = L13_3
        L13_3 = L2_3.contentHeight
        L13_3 = L13_3 * 0.65
        L12_3.y = L13_3
        L12_3.ax = 0
        L13_3 = {}
        L14_3 = 0
        L15_3 = 0
        L16_3 = 0
        L17_3 = 0.5
        L13_3[1] = L14_3
        L13_3[2] = L15_3
        L13_3[3] = L16_3
        L13_3[4] = L17_3
        L12_3.color = L13_3
        L11_3 = L11_3(L12_3)
        L13_3 = L2_3
        L12_3 = L2_3.insert
        L14_3 = L11_3
        L12_3(L13_3, L14_3)
      end
      if L10_3 then
        L11_3 = L10_3.y
        L11_3 = L11_3 - 5
        L10_3.y = L11_3
      end
    end
    L11_3 = L3_3.request
    if L11_3 then
      L11_3 = display
      L11_3 = L11_3.newImageRect
      L12_3 = "images/gui/friends/roundAccept.png"
      L13_3 = 36
      L14_3 = 36
      L11_3 = L11_3(L12_3, L13_3, L14_3)
      L11_3.anchorX = 0
      L11_3.anchorY = 0
      L13_3 = L2_3
      L12_3 = L2_3.insert
      L14_3 = L11_3
      L12_3(L13_3, L14_3)
      L12_3 = L7_3.x
      L12_3 = L12_3 + 162
      L11_3.x = L12_3
      L11_3.y = 6
      L12_3 = display
      L12_3 = L12_3.newImageRect
      L13_3 = "images/gui/friends/roundDecline.png"
      L14_3 = 36
      L15_3 = 36
      L12_3 = L12_3(L13_3, L14_3, L15_3)
      L12_3.anchorX = 0
      L12_3.anchorY = 0
      L14_3 = L2_3
      L13_3 = L2_3.insert
      L15_3 = L12_3
      L13_3(L14_3, L15_3)
      L13_3 = L7_3.x
      L13_3 = L13_3 + 212
      L12_3.x = L13_3
      L12_3.y = 6
    else
      L11_3 = L3_3.isMysteryBox
      if L11_3 then
        L11_3 = display
        L11_3 = L11_3.newImageRect
        L12_3 = "images/gui/friends/sendMysterybox.png"
        L13_3 = 36
        L14_3 = 36
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        L11_3.anchorX = 0
        L11_3.anchorY = 0
        L13_3 = L2_3
        L12_3 = L2_3.insert
        L14_3 = L11_3
        L12_3(L13_3, L14_3)
        L12_3 = L7_3.x
        L12_3 = L12_3 + 212
        L11_3.x = L12_3
        L11_3.y = 6
        L2_3.isMysteryBox = true
      else
        L11_3 = L3_3.friendRequestCollection
        if L11_3 then
        else
          L11_3 = display
          L11_3 = L11_3.newImageRect
          L12_3 = "images/gui/friends/roundDelete.png"
          L13_3 = 36
          L14_3 = 36
          L11_3 = L11_3(L12_3, L13_3, L14_3)
          L4_3 = L11_3
          L4_3.anchorX = 0
          L4_3.anchorY = 0
          L12_3 = L2_3
          L11_3 = L2_3.insert
          L13_3 = L4_3
          L11_3(L12_3, L13_3)
          L11_3 = L7_3.x
          L11_3 = L11_3 + 212
          L4_3.x = L11_3
          L4_3.y = 6
          if not L5_3 then
            L4_3.isVisible = false
            if not L6_3 then
              L11_3 = display
              L11_3 = L11_3.newImageRect
              L12_3 = "images/gui/friends/sendMysterybox.png"
              L13_3 = 36
              L14_3 = 36
              L11_3 = L11_3(L12_3, L13_3, L14_3)
              L11_3.anchorX = 0
              L11_3.anchorY = 0
              L13_3 = L2_3
              L12_3 = L2_3.insert
              L14_3 = L11_3
              L12_3(L13_3, L14_3)
              L12_3 = L7_3.x
              L12_3 = L12_3 + 212
              L11_3.x = L12_3
              L11_3.y = 6
            end
          end
        end
      end
    end
    
    function L11_3()
      local L0_4, L1_4, L2_4
      L0_4 = L5_3
      if L0_4 then
        L0_4 = 1
        L1_4 = L3_3
        L1_4 = L1_4.p
        L2_4 = L3_3
        L2_4 = L2_4.rowIndex
        return L0_4, L1_4, L2_4
      else
        L0_4 = 0
        return L0_4
      end
    end
    
    function L12_3()
      local L0_4, L1_4, L2_4
      L0_4 = 2
      L1_4 = L3_3
      L1_4 = L1_4.p
      L2_4 = L3_3
      L2_4 = L2_4.rowIndex
      return L0_4, L1_4, L2_4
    end
    
    function L13_3()
      local L0_4, L1_4
      L0_4 = 3
      L1_4 = L3_3
      L1_4 = L1_4.p
      return L0_4, L1_4
    end
    
    function L14_3()
      local L0_4, L1_4
      L0_4 = 4
      L1_4 = L3_3
      L1_4 = L1_4.p
      return L0_4, L1_4
    end
    
    function L15_3()
      local L0_4, L1_4
      L0_4 = 5
      L1_4 = L3_3
      L1_4 = L1_4.p
      return L0_4, L1_4
    end
    
    function L16_3()
      local L0_4, L1_4
      L0_4 = 6
      L1_4 = {}
      return L0_4, L1_4
    end
    
    function L17_3()
      local L0_4, L1_4
      L0_4 = L6_3
      L0_4 = L5_3
      L0_4 = not L0_4 and L0_4
      return L0_4
    end
    
    function L18_3()
      local L0_4, L1_4
      L0_4 = L3_3
      L0_4 = L0_4.request
      return L0_4
    end
    
    function L19_3()
      local L0_4, L1_4
      L0_4 = L10_3
      if L0_4 then
        L0_4 = L10_3
        L0_4 = L0_4.isVisible
        if L0_4 then
          L0_4 = L10_3
          L0_4.isVisible = false
          L0_4 = L9_3
          L0_4.isVisible = true
        else
          L0_4 = L10_3
          L0_4.isVisible = true
          L0_4 = L9_3
          L0_4.isVisible = false
        end
      end
    end
    
    L20_3 = L3_3.friendRequestCollection
    if L20_3 then
      L2_3.expandFriendRequests = L16_3
      return
    end
    L2_3.deleteFriend = L11_3
    L2_3.declineFriend = L12_3
    L2_3.acceptFriend = L13_3
    L2_3.isRequest = L18_3
    L2_3.toggleName = L19_3
    L2_3.sendMysterybox = L14_3
    L2_3.sendGameInvite = L15_3
    L2_3.isGameInvite = L17_3
  end
  
  function L21_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = display
    L4_3 = L4_3.newImageRect
    L5_3 = "images/gui/friends/cell.png"
    L6_3 = 256
    L7_3 = 51
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L4_3.anchorX = 0
    L4_3.anchorY = 0
    L6_3 = L2_3
    L5_3 = L2_3.insert
    L7_3 = L4_3
    L5_3(L6_3, L7_3)
    L4_3.x = 10
    L4_3.y = 0
    L5_3 = L2_1
    L5_3 = L5_3.newText
    L6_3 = {}
    L7_3 = L3_3.name
    L6_3.string = L7_3
    L6_3.size = 25
    L7_3 = L4_3.x
    L7_3 = L7_3 + 42
    L6_3.x = L7_3
    L7_3 = L2_3.contentHeight
    L7_3 = L7_3 * 0.43
    L6_3.y = L7_3
    L6_3.ax = 0
    L5_3 = L5_3(L6_3)
    L7_3 = L2_3
    L6_3 = L2_3.insert
    L8_3 = L5_3
    L6_3(L7_3, L8_3)
    L6_3 = display
    L6_3 = L6_3.newImageRect
    L7_3 = "images/gui/friends/fb.png"
    L8_3 = 30
    L9_3 = 30
    L6_3 = L6_3(L7_3, L8_3, L9_3)
    L6_3.anchorX = 0
    L6_3.anchorY = 0
    L8_3 = L2_3
    L7_3 = L2_3.insert
    L9_3 = L6_3
    L7_3(L8_3, L9_3)
    L7_3 = L4_3.x
    L7_3 = L7_3 + 5
    L6_3.x = L7_3
    L6_3.y = 8
  end
  
  function L22_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = display
    L4_3 = L4_3.newImageRect
    L5_3 = "images/gui/friends/cell.png"
    L6_3 = 256
    L7_3 = 51
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L4_3.anchorX = 0
    L4_3.anchorY = 0
    L6_3 = L2_3
    L5_3 = L2_3.insert
    L7_3 = L4_3
    L5_3(L6_3, L7_3)
    L4_3.x = 10
    L4_3.y = 0
    L5_3 = nil
    L6_3 = L3_3.n
    if L6_3 then
      L6_3 = L3_3.t
      if L6_3 then
        L6_3 = L3_3.n
        L7_3 = "#"
        L8_3 = L3_3.t
        L5_3 = L6_3 .. L7_3 .. L8_3
    end
    else
      L5_3 = "Error"
    end
    L6_3 = L2_1
    L6_3 = L6_3.newText
    L7_3 = {}
    L7_3.string = L5_3
    L7_3.size = 25
    L8_3 = L4_3.x
    L8_3 = L8_3 + 10
    L7_3.x = L8_3
    L8_3 = L2_3.contentHeight
    L8_3 = L8_3 * 0.43
    L7_3.y = L8_3
    L7_3.ax = 0
    L6_3 = L6_3(L7_3)
    L8_3 = L2_3
    L7_3 = L2_3.insert
    L9_3 = L6_3
    L7_3(L8_3, L9_3)
    L7_3 = display
    L7_3 = L7_3.newImageRect
    L8_3 = "images/gui/friends/roundAdd.png"
    L9_3 = 36
    L10_3 = 36
    L7_3 = L7_3(L8_3, L9_3, L10_3)
    L7_3.anchorX = 0
    L7_3.anchorY = 0.5
    L9_3 = L2_3
    L8_3 = L2_3.insert
    L10_3 = L7_3
    L8_3(L9_3, L10_3)
    L8_3 = L4_3.x
    L8_3 = L8_3 + 212
    L7_3.x = L8_3
    L8_3 = L2_3.contentHeight
    L8_3 = L8_3 * 0.35
    L7_3.y = L8_3
    L8_3 = display
    L8_3 = L8_3.newImageRect
    L9_3 = "images/gui/friends/roundAccept.png"
    L10_3 = 36
    L11_3 = 36
    L8_3 = L8_3(L9_3, L10_3, L11_3)
    L8_3.anchorX = 0
    L8_3.anchorY = 0.5
    L10_3 = L2_3
    L9_3 = L2_3.insert
    L11_3 = L8_3
    L9_3(L10_3, L11_3)
    L9_3 = L4_3.x
    L9_3 = L9_3 + 212
    L8_3.x = L9_3
    L9_3 = L2_3.contentHeight
    L9_3 = L9_3 * 0.35
    L8_3.y = L9_3
    L8_3.isVisible = false
    
    function L9_3()
      local L0_4, L1_4
      L0_4 = L8_3
      L0_4.isVisible = true
    end
    
    L2_3.changeImage = L9_3
    L10_3 = L3_3.p
    if L10_3 then
      function L10_3()
        local L0_4, L1_4
        
        L0_4 = L9_3
        L0_4()
        L0_4 = L3_3
        L0_4 = L0_4.p
        return L0_4
      end
      
      L2_3.getPlayerInfo = L10_3
    end
  end
  
  function L23_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = nil
    L5_3 = display
    L5_3 = L5_3.newImageRect
    L6_3 = "images/gui/ranking/cell.png"
    L7_3 = L2_3.contentWidth
    L8_3 = L2_3.contentHeight
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    L5_3.anchorX = 0
    L5_3.anchorY = 0
    L7_3 = L2_3
    L6_3 = L2_3.insert
    L8_3 = L5_3
    L6_3(L7_3, L8_3)
    L5_3.x = 0
    L5_3.y = 0
    L6_3 = L3_3.title
    if L6_3 then
      L6_3 = L2_1
      L6_3 = L6_3.newText
      L7_3 = {}
      L8_3 = L3_3.title
      L7_3.string = L8_3
      L7_3.size = 20
      L7_3.x = 20
      L7_3.y = 20
      L7_3.ax = 0
      L8_3 = {}
      L9_3 = 0
      L10_3 = 0
      L11_3 = 0
      L12_3 = 0.5
      L8_3[1] = L9_3
      L8_3[2] = L10_3
      L8_3[3] = L11_3
      L8_3[4] = L12_3
      L7_3.color = L8_3
      L6_3 = L6_3(L7_3)
      L8_3 = L2_3
      L7_3 = L2_3.insert
      L9_3 = L6_3
      L7_3(L8_3, L9_3)
      return
    end
    L6_3 = L3_3.image
    if L6_3 then
      L6_3 = display
      L6_3 = L6_3.newImageRect
      L7_3 = L3_3.image
      L8_3 = 60
      L9_3 = 60
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      L6_3.anchorX = 0
      L6_3.anchorY = 0
      L8_3 = L2_3
      L7_3 = L2_3.insert
      L9_3 = L6_3
      L7_3(L8_3, L9_3)
      L6_3.x = 5
      L6_3.y = 20
    end
    L6_3 = nil
    L7_3 = nil
    L8_3 = L3_3.n2
    if L8_3 then
      L7_3 = L3_3.n2
    else
      L8_3 = L3_3.n
      if L8_3 then
        L7_3 = L3_3.n
      else
        L8_3 = L3_3.name
        if L8_3 then
          L7_3 = L3_3.name
        end
      end
    end
    L8_3 = print
    L9_3 = "text "
    L10_3 = L7_3
    L8_3(L9_3, L10_3)
    if L7_3 then
      L8_3 = L2_1
      L8_3 = L8_3.newText
      L9_3 = {}
      L9_3.string = L7_3
      L9_3.size = 20
      L9_3.x = 20
      L9_3.y = 20
      L9_3.ax = 0
      L8_3 = L8_3(L9_3)
      L6_3 = L8_3
      L9_3 = L2_3
      L8_3 = L2_3.insert
      L10_3 = L6_3
      L8_3(L9_3, L10_3)
    end
    L8_3 = nil
    L9_3 = nil
    L10_3 = L3_3.facebookName
    if L10_3 then
      L10_3 = L2_1
      L10_3 = L10_3.newText
      L11_3 = {}
      L12_3 = L3_3.facebookName
      L11_3.string = L12_3
      L11_3.size = 20
      L11_3.x = 20
      L11_3.y = 20
      L11_3.ax = 0
      L10_3 = L10_3(L11_3)
      L9_3 = L10_3
      L11_3 = L2_3
      L10_3 = L2_3.insert
      L12_3 = L9_3
      L10_3(L11_3, L12_3)
      L9_3.isVisible = false
      L8_3 = "images/gui/friends/fb.png"
    end
    L10_3 = L3_3.clanMember
    if L10_3 then
      L8_3 = "images/gui/friends/messageIconClan.png"
    end
    if L8_3 then
      L10_3 = display
      L10_3 = L10_3.newImageRect
      L11_3 = L8_3
      L12_3 = 18
      L13_3 = 18
      L10_3 = L10_3(L11_3, L12_3, L13_3)
      L10_3.anchorX = 0
      L10_3.anchorY = 0
      L12_3 = L2_3
      L11_3 = L2_3.insert
      L13_3 = L10_3
      L11_3(L12_3, L13_3)
      L10_3.x = 0
      L10_3.y = 12
    end
    L10_3 = display
    L10_3 = L10_3.newImageRect
    L11_3 = "images/gui/friends/roundAdd.png"
    L12_3 = 36
    L13_3 = 36
    L10_3 = L10_3(L11_3, L12_3, L13_3)
    L10_3.anchorX = 0
    L10_3.anchorY = 0
    L12_3 = L2_3
    L11_3 = L2_3.insert
    L13_3 = L10_3
    L11_3(L12_3, L13_3)
    L10_3.x = 130
    L10_3.y = 2
    L11_3 = display
    L11_3 = L11_3.newImageRect
    L12_3 = "images/gui/customplay/roundSent.png"
    L13_3 = 36
    L14_3 = 36
    L11_3 = L11_3(L12_3, L13_3, L14_3)
    L11_3.anchorX = 0
    L11_3.anchorY = 0
    L13_3 = L2_3
    L12_3 = L2_3.insert
    L14_3 = L11_3
    L12_3(L13_3, L14_3)
    L12_3 = L10_3.x
    L11_3.x = L12_3
    L12_3 = L10_3.y
    L11_3.y = L12_3
    L11_3.isVisible = false
    L12_3 = L3_3.autoSend
    if L12_3 then
      L11_3.isVisible = true
    end
    
    function L12_3()
      local L0_4, L1_4
      L0_4 = L9_3
      if L0_4 then
        L0_4 = L6_3
        if L0_4 then
          L0_4 = L9_3
          L0_4 = L0_4.isVisible
          if L0_4 then
            L0_4 = L9_3
            L0_4.isVisible = false
            L0_4 = L6_3
            L0_4.isVisible = true
          else
            L0_4 = L9_3
            L0_4.isVisible = true
            L0_4 = L6_3
            L0_4.isVisible = false
          end
        end
      end
    end
    
    function L13_3()
      local L0_4, L1_4
      L0_4 = L11_3
      L0_4.isVisible = true
      L0_4 = L3_3
      L0_4 = L0_4.p
      if not L0_4 then
        L0_4 = L3_3
        L0_4 = L0_4.playerId
      end
      return L0_4
    end
    
    L2_3.getId = L13_3
    L2_3.toggleName = L12_3
  end
  
  function L24_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = nil
    L5_3 = display
    L5_3 = L5_3.newImageRect
    L6_3 = "images/gui/ranking/cell.png"
    L7_3 = L2_3.contentWidth
    L8_3 = L2_3.contentHeight
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    L5_3.anchorX = 0
    L5_3.anchorY = 0
    L7_3 = L2_3
    L6_3 = L2_3.insert
    L8_3 = L5_3
    L6_3(L7_3, L8_3)
    L5_3.x = 0
    L5_3.y = 0
    L6_3 = L3_3.title
    if L6_3 then
      L6_3 = L2_1
      L6_3 = L6_3.newText
      L7_3 = {}
      L8_3 = L3_3.title
      L7_3.string = L8_3
      L7_3.size = 15
      L7_3.x = 5
      L7_3.y = 10
      L7_3.ax = 0
      L8_3 = {}
      L9_3 = 0
      L10_3 = 0
      L11_3 = 0
      L12_3 = 0.5
      L8_3[1] = L9_3
      L8_3[2] = L10_3
      L8_3[3] = L11_3
      L8_3[4] = L12_3
      L7_3.color = L8_3
      L6_3 = L6_3(L7_3)
      L8_3 = L2_3
      L7_3 = L2_3.insert
      L9_3 = L6_3
      L7_3(L8_3, L9_3)
      return
    end
    L6_3 = nil
    L7_3 = L3_3.name
    if L7_3 then
      L7_3 = L2_1
      L7_3 = L7_3.fitText
      L8_3 = L3_3.name
      L9_3 = 15
      L10_3 = 120
      L7_3 = L7_3(L8_3, L9_3, L10_3)
      L8_3 = L2_1
      L8_3 = L8_3.newText
      L9_3 = {}
      L9_3.string = L7_3
      L9_3.size = 15
      L9_3.x = 5
      L9_3.y = 10
      L9_3.ax = 0
      L8_3 = L8_3(L9_3)
      L6_3 = L8_3
      L9_3 = L2_3
      L8_3 = L2_3.insert
      L10_3 = L6_3
      L8_3(L9_3, L10_3)
    end
  end
  
  function L25_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = nil
    L5_3 = display
    L5_3 = L5_3.newRect
    L6_3 = 0
    L7_3 = 0
    L8_3 = L2_3.contentWidth
    L9_3 = L2_3.contentHeight
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
    L5_3.anchorX = 0
    L5_3.anchorY = 0
    L7_3 = L2_3
    L6_3 = L2_3.insert
    L8_3 = L5_3
    L6_3(L7_3, L8_3)
    L5_3.x = 0
    L5_3.y = 0
    L7_3 = L5_3
    L6_3 = L5_3.setFillColor
    L8_3 = 0.9568627450980393
    L9_3 = 0.8862745098039215
    L10_3 = 0.7725490196078432
    L6_3(L7_3, L8_3, L9_3, L10_3)
    L6_3 = L5_1
    L6_3 = L6_3.create
    L6_3 = L6_3()
    L6_3.x = 20
    L7_3 = L2_3.contentHeight
    L7_3 = L7_3 * 0.25
    L6_3.y = L7_3
    L7_3 = L6_3.updateEmblem
    L8_3 = L3_3.emblemData
    L7_3(L8_3)
    L7_3 = L6_3.setEmblemSize
    L8_3 = 0.2
    L7_3(L8_3)
    L8_3 = L2_3
    L7_3 = L2_3.insert
    L9_3 = L6_3
    L7_3(L8_3, L9_3)
    L7_3 = nil
    L8_3 = L3_3.name
    if L8_3 then
      L8_3 = L2_1
      L8_3 = L8_3.fitText
      L9_3 = L3_3.name
      L10_3 = 12
      L11_3 = 90
      L8_3 = L8_3(L9_3, L10_3, L11_3)
      L9_3 = L2_1
      L9_3 = L9_3.newText
      L10_3 = {}
      L10_3.string = L8_3
      L10_3.size = 12
      L10_3.x = 36
      L10_3.y = 10
      L10_3.ax = 0
      L9_3 = L9_3(L10_3)
      L7_3 = L9_3
      L10_3 = L2_3
      L9_3 = L2_3.insert
      L11_3 = L7_3
      L9_3(L10_3, L11_3)
    end
    L8_3 = L2_1
    L8_3 = L8_3.newText
    L9_3 = {}
    L10_3 = L3_3.members
    if not L10_3 then
      L10_3 = "-"
    end
    L11_3 = "/50"
    L10_3 = L10_3 .. L11_3
    L9_3.string = L10_3
    L9_3.size = 12
    L9_3.x = 126
    L9_3.y = 10
    L9_3.ax = 0
    L8_3 = L8_3(L9_3)
    L10_3 = L2_3
    L9_3 = L2_3.insert
    L11_3 = L8_3
    L9_3(L10_3, L11_3)
    L9_3 = L2_1
    L9_3 = L9_3.newText
    L10_3 = {}
    L11_3 = L3_3.attitude
    if not L11_3 then
      L11_3 = "-"
    end
    L10_3.string = L11_3
    L10_3.size = 12
    L10_3.x = 164
    L10_3.y = 10
    L10_3.ax = 0
    L9_3 = L9_3(L10_3)
    L11_3 = L2_3
    L10_3 = L2_3.insert
    L12_3 = L9_3
    L10_3(L11_3, L12_3)
    L10_3 = display
    L10_3 = L10_3.newImageRect
    L11_3 = "images/gui/clan_v2/create_clan/listInfo.png"
    L12_3 = 15
    L13_3 = 15
    L10_3 = L10_3(L11_3, L12_3, L13_3)
    L10_3.x = 250
    L10_3.y = 10
    L12_3 = L2_3
    L11_3 = L2_3.insert
    L13_3 = L10_3
    L11_3(L12_3, L13_3)
    L11_3 = L3_3.id
    L2_3.clanId = L11_3
  end
  
  function L26_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = tonumber
    L5_3 = L3_3.id
    L4_3 = L4_3(L5_3)
    if L4_3 == nil then
      L5_3 = print
      L6_3 = "WARNING: failed to find map id, set 0"
      L5_3(L6_3)
      L4_3 = 0
    end
    L5_3 = "images/gui/practice/icon"
    L6_3 = L4_3
    L7_3 = ".png"
    L5_3 = L5_3 .. L6_3 .. L7_3
    if L4_3 == 0 then
      L5_3 = "images/gui/practice/iconRandom.png"
    end
    L6_3 = display
    L6_3 = L6_3.newImageRect
    L7_3 = L5_3
    L8_3 = 88
    L9_3 = 90
    L6_3 = L6_3(L7_3, L8_3, L9_3)
    if not L6_3 then
      L7_3 = L3_3.theme
      L8_3 = display
      L8_3 = L8_3.newImageRect
      L9_3 = "images/gui/practice/default"
      L10_3 = L7_3
      L11_3 = ".png"
      L9_3 = L9_3 .. L10_3 .. L11_3
      L10_3 = 88
      L11_3 = 90
      L8_3 = L8_3(L9_3, L10_3, L11_3)
      L6_3 = L8_3
    end
    L6_3.anchorY = 0
    L8_3 = L2_3
    L7_3 = L2_3.insert
    L9_3 = L6_3
    L7_3(L8_3, L9_3)
    L6_3.x = 90
    L6_3.y = 6
    L7_3 = L2_1
    L7_3 = L7_3.newText
    L8_3 = {}
    L9_3 = L3_3.name
    L8_3.string = L9_3
    L9_3 = L6_3.x
    L8_3.x = L9_3
    L9_3 = L6_3.y
    L9_3 = L9_3 + 73
    L8_3.y = L9_3
    L8_3.size = 14
    L7_3 = L7_3(L8_3)
    L9_3 = L2_3
    L8_3 = L2_3.insert
    L10_3 = L7_3
    L8_3(L9_3, L10_3)
    L8_3 = L3_3.active
    if L8_3 then
      L8_3 = "images/gui/customplay/mapMarker.png"
      L9_3 = display
      L9_3 = L9_3.newImageRect
      L10_3 = L8_3
      L11_3 = 88
      L12_3 = 90
      L9_3 = L9_3(L10_3, L11_3, L12_3)
      L9_3.anchorY = 0
      L11_3 = L2_3
      L10_3 = L2_3.insert
      L12_3 = L9_3
      L10_3(L11_3, L12_3)
      L10_3 = L6_3.x
      L9_3.x = L10_3
      L10_3 = L6_3.y
      L9_3.y = L10_3
    end
    
    function L8_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L2_1
      L0_4 = L0_4.mapHandler
      L0_4 = L0_4.setActiveMap
      L1_4 = L4_3
      L0_4(L1_4)
      L0_4 = L2_1
      L0_4 = L0_4.analytics
      L0_4 = L0_4.newEvent
      L1_4 = "design"
      L2_4 = {}
      L2_4.event_id = "selectMap"
      L3_4 = L4_3
      L2_4.value = L3_4
      L3_4 = L2_1
      L3_4 = L3_4.config
      L3_4 = L3_4.fullVersion
      L2_4.area = L3_4
      L0_4(L1_4, L2_4)
    end
    
    function L9_3()
      local L0_4, L1_4
      L0_4 = L3_3
      L0_4 = L0_4.id
      return L0_4
    end
    
    L2_3.getId = L9_3
    L2_3.setThisMapActive = L8_3
  end
  
  function L27_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = A0_3.league
    L5_3 = display
    L5_3 = L5_3.newImageRect
    L6_3 = "images/gui/ranking/cell2.png"
    L7_3 = L2_3.contentWidth
    L8_3 = L2_3.contentHeight
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    L5_3.anchorX = 0
    L5_3.anchorY = 0
    L7_3 = L2_3
    L6_3 = L2_3.insert
    L8_3 = L5_3
    L6_3(L7_3, L8_3)
    L5_3.x = 0
    L5_3.y = 0
    L6_3 = L3_3.nextLeauge
    if L6_3 then
      L6_3 = display
      L6_3 = L6_3.newImageRect
      L7_3 = "images/gui/ranking/league/nextLeague.png"
      L8_3 = 175
      L9_3 = 26
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      L6_3.anchorX = 0.5
      L6_3.anchorY = 0
      L8_3 = L2_3
      L7_3 = L2_3.insert
      L9_3 = L6_3
      L7_3(L8_3, L9_3)
      L6_3.x = 100
      L6_3.y = 26
      L7_3 = L2_1
      L7_3 = L7_3.awards
      L7_3 = L7_3.getLeagueAdvancementText
      L8_3 = L15_2
      L7_3 = L7_3(L8_3)
      L8_3 = L2_1
      L8_3 = L8_3.newText
      L9_3 = {}
      L9_3.string = L7_3
      L9_3.size = 9
      L9_3.x = 100
      L9_3.y = 38
      L9_3.ax = 0.5
      L9_3.width = 168
      L10_3 = {}
      L11_3 = 1
      L12_3 = 1
      L13_3 = 1
      L10_3[1] = L11_3
      L10_3[2] = L12_3
      L10_3[3] = L13_3
      L9_3.color = L10_3
      L9_3.align = "center"
      L8_3 = L8_3(L9_3)
      L10_3 = L2_3
      L9_3 = L2_3.insert
      L11_3 = L8_3
      L9_3(L10_3, L11_3)
    else
      L6_3 = L3_3.demotion
      if L6_3 then
        function L6_3()
          local L0_4, L1_4
          
          L0_4 = L2_1
          L0_4 = L0_4.createCustomOverlay
          L1_4 = 51
          L0_4(L1_4)
        end
        
        L7_3 = L2_1
        L7_3 = L7_3.newButton
        L8_3 = {}
        L8_3.x = 100
        L8_3.y = 16
        L8_3.width = 221
        L8_3.height = 21
        L9_3 = L3_3.imagePath
        L8_3.image = L9_3
        L8_3.onRelease = L6_3
        L7_3 = L7_3(L8_3)
        L9_3 = L2_3
        L8_3 = L2_3.insert
        L10_3 = L7_3
        L8_3(L9_3, L10_3)
      else
        L6_3 = L3_3.tier
        if L6_3 then
          L6_3 = display
          L6_3 = L6_3.newImageRect
          L7_3 = "images/gui/ranking/league/plank.png"
          L8_3 = 113
          L9_3 = 12
          L6_3 = L6_3(L7_3, L8_3, L9_3)
          L6_3.anchorX = 0.5
          L6_3.anchorY = 0.5
          L8_3 = L2_3
          L7_3 = L2_3.insert
          L9_3 = L6_3
          L7_3(L8_3, L9_3)
          L6_3.x = 100
          L6_3.y = 16
          L7_3 = 35
          L8_3 = 19
          L9_3 = L3_3.linearScale
          if L9_3 then
            L7_3 = 28
            L8_3 = L7_3
          end
          L9_3 = display
          L9_3 = L9_3.newImageRect
          L10_3 = L3_3.imagePath
          L11_3 = L7_3
          L12_3 = L8_3
          L9_3 = L9_3(L10_3, L11_3, L12_3)
          L9_3.anchorX = 0.5
          L9_3.anchorY = 0.5
          L11_3 = L2_3
          L10_3 = L2_3.insert
          L12_3 = L9_3
          L10_3(L11_3, L12_3)
          L9_3.x = 100
          L9_3.y = 16
        else
          L6_3 = ""
          L7_3 = L3_3.index
          if L7_3 then
            L7_3 = L3_3.index
            L8_3 = ". "
            L6_3 = L7_3 .. L8_3
          end
          L7_3 = L2_1
          L7_3 = L7_3.newText
          L8_3 = {}
          L9_3 = L3_3.r
          L8_3.string = L9_3
          L8_3.size = 16
          L8_3.x = 190
          L8_3.y = 20
          L8_3.ax = 1
          L7_3 = L7_3(L8_3)
          L8_3 = L7_3.contentWidth
          L9_3 = L2_1
          L9_3 = L9_3.fitText
          L10_3 = L6_3
          L11_3 = L3_3.u
          L10_3 = L10_3 .. L11_3
          L11_3 = 16
          L12_3 = 165 - L8_3
          L9_3 = L9_3(L10_3, L11_3, L12_3)
          L10_3 = L2_1
          L10_3 = L10_3.newText
          L11_3 = {}
          L11_3.string = L9_3
          L11_3.size = 16
          L11_3.x = 15
          L11_3.y = 20
          L11_3.ax = 0
          L10_3 = L10_3(L11_3)
          L11_3 = L16_2
          if L11_3 ~= 4 then
            L11_3 = L16_2
            if L11_3 ~= 6 then
              goto lbl_159
            end
          end
          L10_3.x = 22
          ::lbl_159::
          L12_3 = L2_3
          L11_3 = L2_3.insert
          L13_3 = L10_3
          L11_3(L12_3, L13_3)
          L12_3 = L2_3
          L11_3 = L2_3.insert
          L13_3 = L7_3
          L11_3(L12_3, L13_3)
          L11_3 = L16_2
          if L11_3 ~= 4 then
            L11_3 = L16_2
            if L11_3 ~= 6 then
              goto lbl_195
            end
          end
          L11_3 = 5
          L12_3 = L3_3.fh
          if L12_3 then
            L12_3 = L3_3.fh
            L11_3 = L12_3.l
          end
          if L11_3 then
            L12_3 = display
            L12_3 = L12_3.newImageRect
            L13_3 = "images/gui/ranking/league/tierS_"
            L14_3 = L11_3
            L15_3 = ".png"
            L13_3 = L13_3 .. L14_3 .. L15_3
            L14_3 = 20
            L15_3 = 20
            L12_3 = L12_3(L13_3, L14_3, L15_3)
            L12_3.anchorX = 0.5
            L12_3.anchorY = 0.5
            L14_3 = L2_3
            L13_3 = L2_3.insert
            L15_3 = L12_3
            L13_3(L14_3, L15_3)
            L12_3.x = 13
            L12_3.y = 20
          end
          ::lbl_195::
          L11_3 = L3_3.demotionStatus
          if L11_3 then
            L11_3 = nil
            L12_3 = nil
            L13_3 = L2_1
            L13_3 = L13_3.awards
            L13_3 = L13_3.getLeagueDemotionThreshold
            L14_3 = L15_2
            L13_3, L14_3 = L13_3(L14_3)
            L15_3 = L3_3.demotionStatus
            if L15_3 == 1 then
              if L14_3 == "position" then
                L15_3 = L3_3.index
                if L13_3 < L15_3 and L13_3 ~= 0 then
                  L11_3 = "status_demotion"
                  L12_3 = 50
              end
              elseif L14_3 == "ranking" then
                L15_3 = L3_3.r
                if L13_3 > L15_3 and L13_3 ~= 0 then
                  L11_3 = "status_demotion"
                  L12_3 = 50
                end
              end
            else
              L15_3 = L3_3.demotionStatus
              if L15_3 == 2 then
                L11_3 = "status_safe"
                L12_3 = 49
              end
            end
            
            function L15_3()
              local L0_4, L1_4
              L0_4 = L12_3
              if L0_4 then
                L0_4 = L2_1
                L0_4 = L0_4.createCustomOverlay
                L1_4 = L12_3
                L0_4(L1_4)
              end
            end
            
            if L11_3 then
              L16_3 = L2_1
              L16_3 = L16_3.newButton
              L17_3 = {}
              L18_3 = L7_3.x
              L19_3 = L7_3.contentWidth
              L18_3 = L18_3 - L19_3
              L18_3 = L18_3 - 12
              L17_3.x = L18_3
              L17_3.y = 18
              L17_3.width = 58.5
              L17_3.height = 19.8
              L18_3 = "images/gui/ranking/"
              L19_3 = L11_3
              L20_3 = ".png"
              L18_3 = L18_3 .. L19_3 .. L20_3
              L17_3.image = L18_3
              L17_3.onRelease = L15_3
              L16_3 = L16_3(L17_3)
              L18_3 = L2_3
              L17_3 = L2_3.insert
              L19_3 = L16_3
              L17_3(L18_3, L19_3)
            end
          end
          L11_3 = L3_3.isSelected
          if L11_3 then
            L12_3 = L10_3
            L11_3 = L10_3.setFillColor
            L13_3 = 0.2
            L14_3 = 0.432
            L15_3 = 0.12
            L11_3(L12_3, L13_3, L14_3, L15_3)
            L12_3 = L7_3
            L11_3 = L7_3.setFillColor
            L13_3 = 0.2
            L14_3 = 0.432
            L15_3 = 0.12
            L11_3(L12_3, L13_3, L14_3, L15_3)
          end
          
          function L11_3(A0_4)
            local L1_4, L2_4, L3_4, L4_4, L5_4
            if A0_4 then
              L1_4 = L10_3
              L2_4 = L1_4
              L1_4 = L1_4.setFillColor
              L3_4 = 0.2
              L4_4 = 0.432
              L5_4 = 0.12
              L1_4(L2_4, L3_4, L4_4, L5_4)
              L1_4 = L7_3
              L2_4 = L1_4
              L1_4 = L1_4.setFillColor
              L3_4 = 0.2
              L4_4 = 0.432
              L5_4 = 0.12
              L1_4(L2_4, L3_4, L4_4, L5_4)
            else
              L1_4 = L10_3
              L2_4 = L1_4
              L1_4 = L1_4.setFillColor
              L3_4 = 0
              L4_4 = 0
              L5_4 = 0
              L1_4(L2_4, L3_4, L4_4, L5_4)
              L1_4 = L7_3
              L2_4 = L1_4
              L1_4 = L1_4.setFillColor
              L3_4 = 0
              L4_4 = 0
              L5_4 = 0
              L1_4(L2_4, L3_4, L4_4, L5_4)
            end
          end
          
          function L12_3()
            local L0_4, L1_4
            L0_4 = L3_3
            return L0_4
          end
          
          function L13_3()
            local L0_4, L1_4
            L0_4 = L3_3
            L0_4 = L0_4.rowIndex
            return L0_4
          end
          
          function L14_3(A0_4)
            local L1_4
            L1_4 = L3_3
            L1_4.cache = A0_4
          end
          
          L2_3.getPlayerData = L12_3
          L2_3.setSelected = L11_3
          L2_3.getIndex = L13_3
          L2_3.setCachedData = L14_3
        end
      end
    end
  end
  
  function L28_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3)
    local L7_3, L8_3, L9_3, L10_3
    L7_3 = display
    L7_3 = L7_3.newImageRect
    L8_3 = A0_3
    L9_3 = A1_3
    L10_3 = A2_3
    L7_3 = L7_3(L8_3, L9_3, L10_3)
    if A5_3 then
      L7_3.anchorX = A5_3
    end
    if A6_3 then
      L7_3.anchorY = A6_3
    end
    if A3_3 then
      L7_3.x = A3_3
    end
    if A4_3 then
      L7_3.y = A4_3
    end
    return L7_3
  end
  
  function L29_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3
    if A1_3 == 0 then
      L5_3 = 102
      L7_3 = L5_3
      L6_3 = 28
      if 1 < A2_3 then
        L8_3 = A2_3 - 1
        L8_3 = L8_3 * 6
        L5_3 = 92 - L8_3
        L8_3 = A2_3 - 1
        L8_3 = L8_3 * 6
        L7_3 = 80 - L8_3
        L8_3 = A2_3 - 1
        L8_3 = L8_3 * 19
        L6_3 = 60 + L8_3
      end
    else
      L8_3 = A2_3 - 1
      L8_3 = L8_3 * 6
      L5_3 = 102 - L8_3
      L7_3 = L5_3
      L8_3 = A2_3 - 1
      L8_3 = L8_3 * 19
      L6_3 = 28 + L8_3
    end
    L8_3 = {}
    L9_3 = 0.2
    L10_3 = 0.432
    L11_3 = 0.12
    L8_3[1] = L9_3
    L8_3[2] = L10_3
    L8_3[3] = L11_3
    L9_3 = A3_3 or L9_3
    L9_3 = A4_3 or L9_3
    if A3_3 and A4_3 then
      L9_3 = tonumber
      L10_3 = A3_3
      L9_3 = L9_3(L10_3)
      L10_3 = tonumber
      L11_3 = A1_3
      L10_3 = L10_3(L11_3)
      L9_3 = L9_3 == L10_3
    end
    L10_3 = L2_1
    L10_3 = L10_3.awards
    L10_3 = L10_3.getLeagueRewardIcon
    L11_3 = A1_3
    L12_3 = A2_3
    L10_3 = L10_3(L11_3, L12_3)
    L11_3 = L2_1
    L11_3 = L11_3.awards
    L11_3 = L11_3.getLeagueRewardCount
    L12_3 = A1_3
    L13_3 = A2_3
    L11_3 = L11_3(L12_3, L13_3)
    L12_3 = nil
    L13_3 = nil
    if A1_3 ~= 0 or A2_3 ~= 1 then
      if L10_3 and L11_3 then
        L14_3 = L2_1
        L14_3 = L14_3.newText
        L15_3 = {}
        L16_3 = "+"
        L17_3 = L11_3
        L16_3 = L16_3 .. L17_3
        L15_3.string = L16_3
        L15_3.size = 12
        L16_3 = L5_3 + 55
        L15_3.x = L16_3
        L16_3 = L6_3 + 1
        L15_3.y = L16_3
        L15_3.ax = 1
        L14_3 = L14_3(L15_3)
        L12_3 = L14_3
        L15_3 = A0_3
        L14_3 = A0_3.insert
        L16_3 = L12_3
        L14_3(L15_3, L16_3)
        L14_3 = 12
        L15_3 = 1
        if L10_3 == "images/gui/common/coin_small.png" then
          L14_3 = 10
          L15_3 = 0.5
        end
        L16_3 = L28_2
        L17_3 = L10_3
        L18_3 = L14_3
        L19_3 = L14_3
        L20_3 = L12_3.x
        L21_3 = L6_3 + L15_3
        L22_3 = 0
        L16_3 = L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
        L13_3 = L16_3
        L17_3 = A0_3
        L16_3 = A0_3.insert
        L18_3 = L13_3
        L16_3(L17_3, L18_3)
      end
    else
      L14_3 = "images/gui/ranking/diamondFox.png"
      L15_3 = L2_1
      L15_3 = L15_3.database
      L15_3 = L15_3.getItems
      L15_3 = L15_3()
      L16_3 = L15_3["5202"]
      if L16_3 then
        L14_3 = "images/gui/market/items/balloon/1605.png"
        L16_3 = L28_2
        L17_3 = L14_3
        L18_3 = 65
        L19_3 = 72
        L20_3 = L7_3 + 35
        L21_3 = L6_3 + 10
        L16_3 = L16_3(L17_3, L18_3, L19_3, L20_3, L21_3)
        L16_3.xScale = 0.5
        L16_3.yScale = 0.5
        L18_3 = A0_3
        L17_3 = A0_3.insert
        L19_3 = L16_3
        L17_3(L18_3, L19_3)
      else
        L16_3 = L28_2
        L17_3 = L14_3
        L18_3 = 68.25
        L19_3 = 40.5
        L20_3 = L7_3 + 35
        L21_3 = L6_3 + 10
        L16_3 = L16_3(L17_3, L18_3, L19_3, L20_3, L21_3)
        L18_3 = A0_3
        L17_3 = A0_3.insert
        L19_3 = L16_3
        L17_3(L18_3, L19_3)
      end
      if not L11_3 then
        L11_3 = "????"
      end
      L16_3 = L2_1
      L16_3 = L16_3.newText
      L17_3 = {}
      L18_3 = "+"
      L19_3 = L11_3
      L18_3 = L18_3 .. L19_3
      L17_3.string = L18_3
      L17_3.size = 12
      L18_3 = L7_3 + 30
      L18_3 = L18_3 + 20
      L17_3.x = L18_3
      L18_3 = L6_3 + 35
      L17_3.y = L18_3
      L17_3.ax = 1
      L16_3 = L16_3(L17_3)
      L12_3 = L16_3
      L17_3 = A0_3
      L16_3 = A0_3.insert
      L18_3 = L12_3
      L16_3(L17_3, L18_3)
      L16_3 = L28_2
      L17_3 = L10_3
      L18_3 = 12
      L19_3 = 12
      L20_3 = L12_3.x
      L20_3 = L20_3 - 3
      L21_3 = L12_3.y
      L21_3 = L21_3 + 1
      L22_3 = 0
      L16_3 = L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
      L13_3 = L16_3
      L17_3 = A0_3
      L16_3 = A0_3.insert
      L18_3 = L13_3
      L16_3(L17_3, L18_3)
    end
    if A1_3 == 0 then
      L14_3 = "images/gui/ranking/medalPrize"
      L15_3 = A2_3 - 1
      L16_3 = ".png"
      L14_3 = L14_3 .. L15_3 .. L16_3
      if L14_3 then
        L15_3 = L28_2
        L16_3 = L14_3
        L17_3 = 18
        L18_3 = 18
        L19_3 = 166
        L20_3 = L12_3.y
        L21_3 = 0
        L15_3 = L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
        L17_3 = A0_3
        L16_3 = A0_3.insert
        L18_3 = L15_3
        L16_3(L17_3, L18_3)
      end
    end
    if L9_3 then
      L15_3 = L12_3
      L14_3 = L12_3.setFillColor
      L16_3 = L8_3[1]
      L17_3 = L8_3[2]
      L18_3 = L8_3[3]
      L14_3(L15_3, L16_3, L17_3, L18_3)
    end
    L14_3 = L28_2
    L15_3 = "images/gui/ranking/league/"
    L16_3 = A1_3
    L17_3 = A2_3
    L18_3 = ".png"
    L15_3 = L15_3 .. L16_3 .. L17_3 .. L18_3
    L16_3 = 35
    L17_3 = 19
    L18_3 = L7_3
    L19_3 = L6_3
    L14_3 = L14_3(L15_3, L16_3, L17_3, L18_3, L19_3)
    L16_3 = A0_3
    L15_3 = A0_3.insert
    L17_3 = L14_3
    L15_3(L16_3, L17_3)
  end
  
  function L30_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = A0_3.league
    L5_3 = L3_3.rowIndex
    L4_3 = L5_3 - 1
    L6_3 = L3_3.myLeague
    L7_3 = L3_3.myTier
    L8_3 = nil
    L9_3 = nil
    L10_3 = nil
    if L4_3 == 0 then
      L8_3 = "images/gui/ranking/prizes2.png"
      L9_3 = 208
      L10_3 = 138
    else
      L8_3 = "images/gui/ranking/prizes1.png"
      L9_3 = 208
      L10_3 = 111
    end
    L11_3 = L28_2
    L12_3 = L8_3
    L13_3 = L9_3
    L14_3 = L10_3
    L15_3 = 0
    L16_3 = 15
    L17_3 = 0
    L18_3 = 0
    L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
    L12_3 = L28_2
    L13_3 = "images/gui/ranking/league/tierB_"
    L14_3 = L4_3
    L15_3 = ".png"
    L13_3 = L13_3 .. L14_3 .. L15_3
    L14_3 = 83
    L15_3 = 81
    L16_3 = 45
    L17_3 = 45
    L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
    L13_3 = L2_1
    L13_3 = L13_3.newText
    L14_3 = {}
    L15_3 = L2_1
    L15_3 = L15_3.awards
    L15_3 = L15_3.getLeagueNameText
    L16_3 = L4_3 + 1
    L15_3 = L15_3(L16_3)
    L14_3.string = L15_3
    L14_3.size = 16
    L14_3.x = 128
    L14_3.y = 6
    L14_3.ax = 0.5
    L15_3 = L2_1
    L15_3 = L15_3.colors
    L15_3 = L15_3.black
    L14_3.color = L15_3
    L13_3 = L13_3(L14_3)
    L15_3 = L2_3
    L14_3 = L2_3.insert
    L16_3 = L11_3
    L14_3(L15_3, L16_3)
    L15_3 = L2_3
    L14_3 = L2_3.insert
    L16_3 = L13_3
    L14_3(L15_3, L16_3)
    L14_3 = 1
    L15_3 = 5
    L16_3 = 1
    for L17_3 = L14_3, L15_3, L16_3 do
      L18_3 = L29_2
      L19_3 = L2_3
      L20_3 = L4_3
      L21_3 = L17_3
      L22_3 = L6_3
      L23_3 = L7_3
      L18_3(L19_3, L20_3, L21_3, L22_3, L23_3)
    end
    L15_3 = L2_3
    L14_3 = L2_3.insert
    L16_3 = L12_3
    L14_3(L15_3, L16_3)
  end
  
  function L31_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = L2_1
    L4_3 = L4_3.awards
    L5_3 = "images/gui/challenges/consecutive/listCell.png"
    L6_3 = L2_3.index
    if L6_3 == 1 then
      L5_3 = "images/gui/challenges/consecutive/listCellCurrent.png"
    end
    L6_3 = display
    L6_3 = L6_3.newImageRect
    L7_3 = L5_3
    L8_3 = 226
    L9_3 = 31
    L6_3 = L6_3(L7_3, L8_3, L9_3)
    L6_3.anchorX = 0
    L6_3.anchorY = 0
    L8_3 = L2_3
    L7_3 = L2_3.insert
    L9_3 = L6_3
    L7_3(L8_3, L9_3)
    L6_3.x = 0
    L6_3.y = 0
    L7_3 = L2_1
    L7_3 = L7_3.consecutiveLoginsCount
    L7_3 = L7_3 - 1
    L8_3 = L2_3.index
    L8_3 = L7_3 + L8_3
    L9_3 = L4_3.getConsecutiveDayConstant
    L10_3 = L8_3
    L9_3 = L9_3(L10_3)
    L10_3 = false
    L11_3 = nil
    L12_3 = nil
    if L9_3 then
      L13_3 = L9_3.gemReward
      if L13_3 then
        L13_3 = L9_3.gemReward
        if 0 < L13_3 then
          L12_3 = "images/gui/common/gem_small.png"
          L13_3 = ""
          L14_3 = L9_3.gemReward
          L11_3 = L13_3 .. L14_3
      end
      else
        L13_3 = L9_3.softCurrencyReward
        if L13_3 then
          L13_3 = L9_3.softCurrencyReward
          if 0 < L13_3 then
            L12_3 = "images/gui/challenges/consecutive/iconCoin.png"
            L13_3 = ""
            L14_3 = L9_3.softCurrencyReward
            L11_3 = L13_3 .. L14_3
        end
        else
          L13_3 = L9_3.giftReward
          if L13_3 then
            L13_3 = L9_3.giftReward
            if 0 < L13_3 then
              L12_3 = "images/gui/challenges/consecutive/iconGift.png"
              L13_3 = ""
              L14_3 = L9_3.giftReward
              L11_3 = L13_3 .. L14_3
              L13_3 = L9_3.giftReward
              if 1 < L13_3 then
                L13_3 = L11_3
                L14_3 = " gifts"
                L11_3 = L13_3 .. L14_3
              else
                L13_3 = L11_3
                L14_3 = " gift"
                L11_3 = L13_3 .. L14_3
              end
          end
          else
            L13_3 = L9_3.spinReward
            if L13_3 then
              L13_3 = L9_3.spinReward
              if 0 < L13_3 then
                L12_3 = "images/gui/challenges/consecutive/iconSpin.png"
                L13_3 = ""
                L14_3 = L9_3.spinReward
                L11_3 = L13_3 .. L14_3
                L13_3 = L9_3.spinReward
                if 1 < L13_3 then
                  L13_3 = L11_3
                  L14_3 = " spins"
                  L11_3 = L13_3 .. L14_3
                else
                  L13_3 = L11_3
                  L14_3 = " spin"
                  L11_3 = L13_3 .. L14_3
                end
              end
            end
          end
        end
      end
    end
    L13_3 = false
    L14_3 = L3_3.c
    if L14_3 then
      L14_3 = L3_3.c
      if L14_3 == 1 then
        L13_3 = true
      end
    end
    if L13_3 then
      L14_3 = display
      L14_3 = L14_3.newImageRect
      L15_3 = "images/gui/challenges/consecutive/lsitCompleted.png"
      L16_3 = 25
      L17_3 = 25
      L14_3 = L14_3(L15_3, L16_3, L17_3)
      L14_3.anchorX = 0
      L14_3.anchorY = 0.5
      L16_3 = L2_3
      L15_3 = L2_3.insert
      L17_3 = L14_3
      L15_3(L16_3, L17_3)
      L14_3.x = 125.5
      L14_3.y = 16
    end
    L14_3 = 0
    L15_3 = L3_3.p
    if L15_3 then
      L15_3 = L9_3.max
      if L15_3 then
        L15_3 = L3_3.p
        L16_3 = L9_3.max
        L14_3 = L15_3 / L16_3
      end
    end
    if 1 <= L14_3 and not L13_3 then
      L15_3 = display
      L15_3 = L15_3.newImageRect
      L16_3 = "images/gui/challenges/consecutive/claim.png"
      L17_3 = 55
      L18_3 = 35
      L15_3 = L15_3(L16_3, L17_3, L18_3)
      L15_3.anchorX = 0
      L15_3.anchorY = 0.5
      L17_3 = L2_3
      L16_3 = L2_3.insert
      L18_3 = L15_3
      L16_3(L17_3, L18_3)
      L15_3.x = 96.5
      L15_3.y = 16
      L16_3 = L2_1
      L16_3 = L16_3.newText
      L17_3 = {}
      L17_3.string = "claim"
      L17_3.size = 14
      L18_3 = L15_3.x
      L18_3 = L18_3 + 27.5
      L17_3.x = L18_3
      L18_3 = L15_3.y
      L18_3 = L18_3 - 1
      L17_3.y = L18_3
      L17_3.ax = 0.5
      L16_3 = L16_3(L17_3)
      L18_3 = L2_3
      L17_3 = L2_3.insert
      L19_3 = L16_3
      L17_3(L18_3, L19_3)
    end
    if L12_3 then
      L15_3 = display
      L15_3 = L15_3.newImageRect
      L16_3 = L12_3
      L17_3 = 25.9
      L18_3 = 25.9
      L15_3 = L15_3(L16_3, L17_3, L18_3)
      L15_3.anchorX = 0
      L15_3.anchorY = 0.5
      L17_3 = L2_3
      L16_3 = L2_3.insert
      L18_3 = L15_3
      L16_3(L17_3, L18_3)
      L15_3.x = 199.5
      L15_3.y = 16
    end
    L15_3 = L2_1
    L15_3 = L15_3.newText
    L16_3 = {}
    L17_3 = "Day "
    L18_3 = L8_3
    L17_3 = L17_3 .. L18_3
    L16_3.string = L17_3
    L16_3.size = 14
    L16_3.x = 15
    L16_3.y = 15.5
    L16_3.ax = 0
    L17_3 = {}
    L18_3 = 1
    L19_3 = 1
    L20_3 = 1
    L21_3 = 1
    L17_3[1] = L18_3
    L17_3[2] = L19_3
    L17_3[3] = L20_3
    L17_3[4] = L21_3
    L16_3.color = L17_3
    L15_3 = L15_3(L16_3)
    L17_3 = L2_3
    L16_3 = L2_3.insert
    L18_3 = L15_3
    L16_3(L17_3, L18_3)
    if L11_3 then
      L16_3 = L2_1
      L16_3 = L16_3.newText
      L17_3 = {}
      L17_3.string = L11_3
      L17_3.size = 14
      L17_3.x = 178
      L17_3.y = 15.5
      L17_3.ax = 0.5
      L18_3 = {}
      L19_3 = 1
      L20_3 = 1
      L21_3 = 1
      L22_3 = 1
      L18_3[1] = L19_3
      L18_3[2] = L20_3
      L18_3[3] = L21_3
      L18_3[4] = L22_3
      L17_3.color = L18_3
      L16_3 = L16_3(L17_3)
      L18_3 = L2_3
      L17_3 = L2_3.insert
      L19_3 = L16_3
      L17_3(L18_3, L19_3)
    end
  end
  
  function L32_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = L2_1
    L4_3 = L4_3.playerInfo
    L4_3 = L4_3.awardsTable
    if L4_3 == 1 then
      L4_3 = L2_3.index
      if L4_3 == 2 then
        L4_3 = L2_1
        L4_3 = L4_3.consecutiveLoginsCount
        if L4_3 then
          L4_3 = L2_1
          L4_3 = L4_3.awards
          L4_3 = L4_3.getConsecutiveDayConstant
          L5_3 = L2_1
          L5_3 = L5_3.consecutiveLoginsCount
          L4_3 = L4_3(L5_3)
          L5_3 = L4_3.max
          L6_3 = L2_1
          L6_3 = L6_3.consecutiveLoginsFormatted
          L6_3 = L6_3[1]
          L7_3 = L6_3.p
          L8_3 = false
          L9_3 = L6_3.c
          if L9_3 then
            L9_3 = L6_3.c
            if L9_3 == 1 then
              L8_3 = true
            end
          end
          L9_3 = L7_3 / L5_3
          if 1 < L9_3 then
            L9_3 = 1
          end
          L10_3 = math
          L10_3 = L10_3.floor
          L11_3 = L9_3 * 100
          L10_3 = L10_3(L11_3)
          L11_3 = "images/gui/challenges/cellBar.png"
          if L8_3 or 100 <= L10_3 then
            L11_3 = "images/gui/challenges/cellBarGreen.png"
            L10_3 = 100
            L9_3 = 1
          end
          L12_3 = display
          L12_3 = L12_3.newImageRect
          L13_3 = "images/gui/challenges/consecutive/barBG.png"
          L14_3 = 70
          L15_3 = 20
          L12_3 = L12_3(L13_3, L14_3, L15_3)
          L12_3.anchorX = 0
          L12_3.anchorY = 0
          L12_3.x = 108
          L12_3.y = 9
          L14_3 = L2_3
          L13_3 = L2_3.insert
          L15_3 = L12_3
          L13_3(L14_3, L15_3)
          L13_3 = display
          L13_3 = L13_3.newImageRect
          L14_3 = L11_3
          L15_3 = 70
          L16_3 = 20
          L13_3 = L13_3(L14_3, L15_3, L16_3)
          L13_3.anchorX = 0
          L13_3.anchorY = 0
          L13_3.x = 108
          L13_3.y = 9
          L14_3 = L13_3.width
          L14_3 = L14_3 * L9_3
          L13_3.width = L14_3
          L15_3 = L2_3
          L14_3 = L2_3.insert
          L16_3 = L13_3
          L14_3(L15_3, L16_3)
          L14_3 = display
          L14_3 = L14_3.newImageRect
          L15_3 = "images/gui/challenges/consecutive/cellNormal.png"
          L16_3 = 189
          L17_3 = 38
          L14_3 = L14_3(L15_3, L16_3, L17_3)
          L14_3.anchorX = 0
          L14_3.anchorY = 0
          L16_3 = L2_3
          L15_3 = L2_3.insert
          L17_3 = L14_3
          L15_3(L16_3, L17_3)
          L14_3.x = 0
          L14_3.y = 0
          L15_3 = display
          L15_3 = L15_3.newImageRect
          L16_3 = "images/gui/challenges/consecutive/openList.png"
          L17_3 = 50
          L18_3 = 38
          L15_3 = L15_3(L16_3, L17_3, L18_3)
          L15_3.anchorX = 0
          L15_3.anchorY = 0.5
          L17_3 = L2_3
          L16_3 = L2_3.insert
          L18_3 = L15_3
          L16_3(L17_3, L18_3)
          L15_3.x = 182
          L15_3.y = 19
          if 1 <= L9_3 and L8_3 then
            L16_3 = display
            L16_3 = L16_3.newImageRect
            L17_3 = "images/gui/challenges/consecutive/openListComplete.png"
            L18_3 = 47
            L19_3 = 30
            L16_3 = L16_3(L17_3, L18_3, L19_3)
            L16_3.anchorX = 0
            L16_3.anchorY = 0.5
            L18_3 = L2_3
            L17_3 = L2_3.insert
            L19_3 = L16_3
            L17_3(L18_3, L19_3)
            L16_3.x = 187
            L16_3.y = 19
          end
          L16_3 = L2_1
          L16_3 = L16_3.newText
          L17_3 = {}
          L18_3 = "Challenge Day "
          L19_3 = L2_1
          L19_3 = L19_3.consecutiveLoginsCount
          L18_3 = L18_3 .. L19_3
          L17_3.string = L18_3
          L17_3.size = 14
          L17_3.x = 10
          L17_3.y = 12
          L17_3.ax = 0
          L18_3 = {}
          L19_3 = 1
          L20_3 = 1
          L21_3 = 1
          L18_3[1] = L19_3
          L18_3[2] = L20_3
          L18_3[3] = L21_3
          L17_3.color = L18_3
          L16_3 = L16_3(L17_3)
          L18_3 = L2_3
          L17_3 = L2_3.insert
          L19_3 = L16_3
          L17_3(L18_3, L19_3)
          L17_3 = L2_1
          L17_3 = L17_3.awards
          L17_3 = L17_3.getConsecutiveDayConstant
          L18_3 = L2_1
          L18_3 = L18_3.consecutiveLoginsCount
          L17_3 = L17_3(L18_3)
          L18_3 = ""
          L19_3 = L17_3.type
          if L19_3 == "QUICK_PLAY_GAMES" then
            L19_3 = "Play "
            L20_3 = L17_3.max
            L18_3 = L19_3 .. L20_3
            L19_3 = L17_3.max
            if 1 < L19_3 then
              L19_3 = L18_3
              L20_3 = " races"
              L18_3 = L19_3 .. L20_3
            else
              L19_3 = L18_3
              L20_3 = " race"
              L18_3 = L19_3 .. L20_3
            end
          end
          L19_3 = L2_1
          L19_3 = L19_3.newText
          L20_3 = {}
          L20_3.string = L18_3
          L20_3.size = 12
          L20_3.x = 10
          L20_3.y = 25
          L20_3.ax = 0
          L21_3 = {}
          L22_3 = 1
          L23_3 = 1
          L24_3 = 1
          L21_3[1] = L22_3
          L21_3[2] = L23_3
          L21_3[3] = L24_3
          L20_3.color = L21_3
          L19_3 = L19_3(L20_3)
          L21_3 = L2_3
          L20_3 = L2_3.insert
          L22_3 = L19_3
          L20_3(L21_3, L22_3)
          L20_3 = L2_1
          L20_3 = L20_3.newText
          L21_3 = {}
          L22_3 = L10_3
          L23_3 = "%"
          L22_3 = L22_3 .. L23_3
          L21_3.string = L22_3
          L21_3.size = 14
          L21_3.x = 145
          L21_3.y = 19
          L21_3.ax = 0.5
          L22_3 = {}
          L23_3 = 1
          L24_3 = 1
          L25_3 = 1
          L22_3[1] = L23_3
          L22_3[2] = L24_3
          L22_3[3] = L25_3
          L21_3.color = L22_3
          L20_3 = L20_3(L21_3)
          L22_3 = L2_3
          L21_3 = L2_3.insert
          L23_3 = L20_3
          L21_3(L22_3, L23_3)
          return
        end
      end
    end
    L4_3 = 1
    L5_3 = 0
    L6_3 = 0
    L7_3 = 1
    L8_3 = nil
    L9_3 = L3_3.rowIndex
    L10_3 = nil
    L11_3 = nil
    L12_3 = L2_1
    L12_3 = L12_3.playerInfo
    L12_3 = L12_3.awardsTable
    if L12_3 == 1 then
      L12_3 = L3_3.serverStatus
      if L12_3 then
        L12_3 = L3_3.serverStatus
        L5_3 = L12_3.p
        L12_3 = L3_3.serverStatus
        L6_3 = L12_3.c
      end
      L9_3 = L3_3.id
      L8_3 = L3_3
      L12_3 = L8_3.image
      if L12_3 then
        L12_3 = "images/gui/challenges/iconsDaily/"
        L13_3 = L8_3.image
        L14_3 = ".png"
        L10_3 = L12_3 .. L13_3 .. L14_3
        L12_3 = L2_1
        L12_3 = L12_3.database
        L12_3 = L12_3.timeToShowDailyChallenge
        L12_3 = L12_3()
        if L12_3 then
          L12_3 = display
          L12_3 = L12_3.newImageRect
          L13_3 = "images/gui/mainMenu/alertBlue.png"
          L14_3 = 22
          L15_3 = 22
          L12_3 = L12_3(L13_3, L14_3, L15_3)
          L11_3 = L12_3
        end
      end
    else
      L12_3 = L2_1
      L12_3 = L12_3.playerInfo
      L12_3 = L12_3.awardsTable
      if L12_3 == 2 then
        L12_3 = L3_3.serverStatus
        if L12_3 then
          L12_3 = L3_3.serverStatus
          L12_3 = L12_3.l
          if L12_3 then
            L12_3 = L3_3.serverStatus
            L12_3 = L12_3.l
            L4_3 = L12_3 + 1
            L12_3 = L3_3.maxStage
            if L4_3 > L12_3 then
              L4_3 = L3_3.maxStage
            end
          end
          L12_3 = L3_3.serverStatus
          L5_3 = L12_3.p
          L12_3 = L3_3.serverStatus
          L6_3 = L12_3.c
        end
        L7_3 = L3_3.maxStage
        L12_3 = L3_3.image
        if L12_3 then
          L12_3 = "images/gui/challenges/iconsAchiv/"
          L13_3 = L3_3.image
          L14_3 = ".png"
          L10_3 = L12_3 .. L13_3 .. L14_3
        end
        L9_3 = L3_3.id
        L12_3 = L3_3.steps
        L8_3 = L12_3[L4_3]
      else
        L12_3 = L2_1
        L12_3 = L12_3.playerInfo
        L12_3 = L12_3.awardsTable
        if L12_3 == 3 then
          L5_3 = 1
          L12_3 = L3_3.serverStatus
          if L12_3 then
            L12_3 = L3_3.serverStatus
            L6_3 = L12_3.c
          end
          L12_3 = L3_3.image
          if L12_3 then
            L12_3 = "images/gui/challenges/iconsCoins/"
            L13_3 = L3_3.image
            L14_3 = ".png"
            L10_3 = L12_3 .. L13_3 .. L14_3
          end
          L9_3 = L3_3.id
          L8_3 = L3_3
        end
      end
    end
    L12_3 = L3_3.timeLeft
    if L12_3 then
      L12_3 = L2_1
      L12_3 = L12_3.newText
      L13_3 = {}
      L14_3 = L2_1
      L14_3 = L14_3.localized
      L14_3 = L14_3.get
      L15_3 = "NewChallenges"
      L14_3 = L14_3(L15_3)
      L13_3.string = L14_3
      L13_3.size = 16
      L13_3.x = 86
      L13_3.y = 15
      L12_3 = L12_3(L13_3)
      L14_3 = L2_3
      L13_3 = L2_3.insert
      L15_3 = L12_3
      L13_3(L14_3, L15_3)
      L13_3 = L2_1
      L13_3 = L13_3.newText
      L14_3 = {}
      L15_3 = L3_3.timeLeft
      L14_3.string = L15_3
      L14_3.size = 16
      L15_3 = L12_3.x
      L16_3 = L12_3.width
      L16_3 = L16_3 * 0.8
      L15_3 = L15_3 + L16_3
      L14_3.x = L15_3
      L15_3 = L12_3.y
      L14_3.y = L15_3
      L13_3 = L13_3(L14_3)
      L15_3 = L2_3
      L14_3 = L2_3.insert
      L16_3 = L13_3
      L14_3(L15_3, L16_3)
      return
    end
    L12_3 = display
    L12_3 = L12_3.newImageRect
    L13_3 = "images/gui/challenges/cellBG.png"
    L14_3 = 102
    L15_3 = 14
    L12_3 = L12_3(L13_3, L14_3, L15_3)
    L12_3.anchorX = 0
    L12_3.anchorY = 0
    L12_3.x = 65
    L12_3.y = 42
    L14_3 = L2_3
    L13_3 = L2_3.insert
    L15_3 = L12_3
    L13_3(L14_3, L15_3)
    L13_3 = "images/gui/challenges/cellBar.png"
    L14_3 = L5_3
    if L6_3 == 1 or L5_3 == 1 then
      L13_3 = "images/gui/challenges/cellBarGreen.png"
      L14_3 = 1
    end
    L15_3 = display
    L15_3 = L15_3.newImageRect
    L16_3 = L13_3
    L17_3 = 102
    L18_3 = 14
    L15_3 = L15_3(L16_3, L17_3, L18_3)
    L15_3.anchorX = 0
    L15_3.anchorY = 0
    L15_3.x = 65
    L15_3.y = 42
    L16_3 = 102 * L14_3
    L15_3.width = L16_3
    L17_3 = L2_3
    L16_3 = L2_3.insert
    L18_3 = L15_3
    L16_3(L17_3, L18_3)
    L16_3 = display
    L16_3 = L16_3.newImageRect
    L17_3 = "images/gui/challenges/cellNormal.png"
    L18_3 = 180
    L19_3 = 61
    L16_3 = L16_3(L17_3, L18_3, L19_3)
    L16_3.anchorX = 0
    L16_3.anchorY = 0
    L18_3 = L2_3
    L17_3 = L2_3.insert
    L19_3 = L16_3
    L17_3(L18_3, L19_3)
    L16_3.x = 0
    L16_3.y = 0
    if L10_3 then
      L17_3 = display
      L17_3 = L17_3.newImageRect
      L18_3 = L10_3
      L19_3 = 65
      L20_3 = 65
      L17_3 = L17_3(L18_3, L19_3, L20_3)
      if L17_3 == nil then
        L18_3 = display
        L18_3 = L18_3.newImageRect
        L19_3 = "images/gui/challenges/iconsDaily/1.png"
        L20_3 = 65
        L21_3 = 65
        L18_3 = L18_3(L19_3, L20_3, L21_3)
        L17_3 = L18_3
      end
      L17_3.anchorX = 0
      L17_3.anchorY = 0
      L17_3.x = 2
      L17_3.y = 0
      L19_3 = L2_3
      L18_3 = L2_3.insert
      L20_3 = L17_3
      L18_3(L19_3, L20_3)
    end
    if L11_3 then
      L11_3.x = 12
      L11_3.y = 6
      L17_3 = L2_1
      L17_3 = L17_3.newText
      L18_3 = {}
      L18_3.string = "!"
      L19_3 = L11_3.x
      L19_3 = L19_3 + 1
      L18_3.x = L19_3
      L19_3 = L11_3.y
      L18_3.y = L19_3
      L18_3.size = 20
      L19_3 = {}
      L20_3 = 1
      L21_3 = 1
      L22_3 = 1
      L19_3[1] = L20_3
      L19_3[2] = L21_3
      L19_3[3] = L22_3
      L18_3.color = L19_3
      L17_3 = L17_3(L18_3)
      L19_3 = L2_3
      L18_3 = L2_3.insert
      L20_3 = L11_3
      L18_3(L19_3, L20_3)
      L19_3 = L2_3
      L18_3 = L2_3.insert
      L20_3 = L17_3
      L18_3(L19_3, L20_3)
    end
    L17_3 = nil
    if L5_3 == 1 and L6_3 == 0 then
      L18_3 = L3_3.boost
      if L18_3 then
        L18_3 = L2_1
        L18_3 = L18_3.localized
        L18_3 = L18_3.get
        L19_3 = "Buy"
        L18_3 = L18_3(L19_3)
        L17_3 = L18_3
      else
        L18_3 = L3_3.video
        if L18_3 then
          L18_3 = L2_1
          L18_3 = L18_3.localized
          L18_3 = L18_3.get
          L19_3 = "Video time!"
          L18_3 = L18_3(L19_3)
          L17_3 = L18_3
        else
          L18_3 = L2_1
          L18_3 = L18_3.localized
          L18_3 = L18_3.get
          L19_3 = "ClaimMe"
          L18_3 = L18_3(L19_3)
          L17_3 = L18_3
        end
      end
    elseif L6_3 == 1 then
      L17_3 = ""
    else
      L18_3 = math
      L18_3 = L18_3.floor
      L19_3 = L5_3 * 100
      L18_3 = L18_3(L19_3)
      L19_3 = "%"
      L17_3 = L18_3 .. L19_3
    end
    L18_3 = L2_1
    L18_3 = L18_3.newText
    L19_3 = {}
    L19_3.string = L17_3
    L19_3.size = 10
    L19_3.x = 120
    L19_3.y = 48
    L20_3 = {}
    L21_3 = 1
    L22_3 = 1
    L23_3 = 1
    L20_3[1] = L21_3
    L20_3[2] = L22_3
    L20_3[3] = L23_3
    L19_3.color = L20_3
    L18_3 = L18_3(L19_3)
    L20_3 = L2_3
    L19_3 = L2_3.insert
    L21_3 = L18_3
    L19_3(L20_3, L21_3)
    L19_3 = L3_3.title
    if L19_3 then
      L19_3 = L2_1
      L19_3 = L19_3.newText
      L20_3 = {}
      L21_3 = L3_3.title
      L20_3.string = L21_3
      L20_3.size = 14
      L20_3.x = 72
      L20_3.y = 15
      L20_3.ax = 0
      L21_3 = {}
      L22_3 = 1
      L23_3 = 1
      L24_3 = 1
      L21_3[1] = L22_3
      L21_3[2] = L23_3
      L21_3[3] = L24_3
      L20_3.color = L21_3
      L19_3 = L19_3(L20_3)
      L21_3 = L2_3
      L20_3 = L2_3.insert
      L22_3 = L19_3
      L20_3(L21_3, L22_3)
    end
    if L8_3 then
      L19_3 = L8_3.text
      if L19_3 then
        L19_3 = L2_1
        L19_3 = L19_3.newText
        L20_3 = {}
        L21_3 = L8_3.text
        L20_3.string = L21_3
        L20_3.size = 11
        L20_3.x = 72
        L20_3.y = 28
        L20_3.ax = 0
        L21_3 = {}
        L22_3 = 1
        L23_3 = 1
        L24_3 = 1
        L21_3[1] = L22_3
        L21_3[2] = L23_3
        L21_3[3] = L24_3
        L20_3.color = L21_3
        L19_3 = L19_3(L20_3)
        L21_3 = L2_3
        L20_3 = L2_3.insert
        L22_3 = L19_3
        L20_3(L21_3, L22_3)
      end
      L19_3 = L8_3.softCurrencyReward
      if L19_3 then
        L19_3 = L8_3.softCurrencyReward
        if 0 < L19_3 then
          L19_3 = "images/gui/challenges/claimCoins.png"
          if L5_3 < 1 then
            L19_3 = "images/gui/challenges/claimCoinsIncomplete.png"
          end
          if L6_3 == 1 then
            L19_3 = "images/gui/challenges/claimCoinsClaimed.png"
          end
          L20_3 = display
          L20_3 = L20_3.newImageRect
          L21_3 = L19_3
          L22_3 = 58
          L23_3 = 55
          L20_3 = L20_3(L21_3, L22_3, L23_3)
          L20_3.anchorX = 0
          L20_3.anchorY = 0.5
          L22_3 = L2_3
          L21_3 = L2_3.insert
          L23_3 = L20_3
          L21_3(L22_3, L23_3)
          L20_3.x = 176
          L20_3.y = 32
          if L6_3 ~= 1 then
            L21_3 = L2_1
            L21_3 = L21_3.newText
            L22_3 = {}
            L23_3 = "x "
            L24_3 = L8_3.softCurrencyReward
            L23_3 = L23_3 .. L24_3
            L22_3.string = L23_3
            L22_3.size = 13
            L23_3 = L20_3.x
            L23_3 = L23_3 + 30
            L22_3.x = L23_3
            L23_3 = L20_3.y
            L23_3 = L23_3 + 13
            L22_3.y = L23_3
            L21_3 = L21_3(L22_3)
            L23_3 = L2_3
            L22_3 = L2_3.insert
            L24_3 = L21_3
            L22_3(L23_3, L24_3)
          end
      end
      else
        L19_3 = L8_3.boost
        if L19_3 then
          L19_3 = "images/gui/challenges/claimBuy.png"
          if L6_3 == 1 then
            L19_3 = "images/gui/challenges/claimBuyClaimed.png"
          end
          L20_3 = display
          L20_3 = L20_3.newImageRect
          L21_3 = L19_3
          L22_3 = 58
          L23_3 = 55
          L20_3 = L20_3(L21_3, L22_3, L23_3)
          L20_3.anchorX = 0
          L20_3.anchorY = 0.5
          L22_3 = L2_3
          L21_3 = L2_3.insert
          L23_3 = L20_3
          L21_3(L22_3, L23_3)
          L20_3.x = 176
          L20_3.y = 32
        else
          L19_3 = L8_3.spinReward
          if L19_3 then
            L19_3 = "images/gui/challenges/claimSpin.png"
            if L5_3 < 1 then
              L19_3 = "images/gui/challenges/claimSpinIncomplete.png"
            end
            if L6_3 == 1 then
              L19_3 = "images/gui/challenges/claimSpinClaimed.png"
            end
            L20_3 = display
            L20_3 = L20_3.newImageRect
            L21_3 = L19_3
            L22_3 = 58
            L23_3 = 55
            L20_3 = L20_3(L21_3, L22_3, L23_3)
            L20_3.anchorX = 0
            L20_3.anchorY = 0.5
            L22_3 = L2_3
            L21_3 = L2_3.insert
            L23_3 = L20_3
            L21_3(L22_3, L23_3)
            L20_3.x = 176
            L20_3.y = 32
          else
            L19_3 = L8_3.itemAwarded
            if L19_3 then
              L19_3 = "images/gui/challenges/claimItem.png"
              if L5_3 < 1 then
                L19_3 = "images/gui/challenges/claimItemIncomplete.png"
              end
              if L6_3 == 1 then
                L19_3 = "images/gui/challenges/claimItemClaimed.png"
              end
              L20_3 = display
              L20_3 = L20_3.newImageRect
              L21_3 = L19_3
              L22_3 = 58
              L23_3 = 55
              L20_3 = L20_3(L21_3, L22_3, L23_3)
              L20_3.anchorX = 0
              L20_3.anchorY = 0.5
              L22_3 = L2_3
              L21_3 = L2_3.insert
              L23_3 = L20_3
              L21_3(L22_3, L23_3)
              L20_3.x = 176
              L20_3.y = 32
            end
          end
        end
      end
    end
    
    function L19_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      L1_4 = "images/gui/challenges/star1.png"
      L2_4 = L4_3
      if A0_4 < L2_4 then
        L2_4 = L6_3
        if L2_4 == 0 then
          L1_4 = "images/gui/challenges/star2.png"
      end
      else
        L2_4 = L4_3
        if A0_4 <= L2_4 then
          L2_4 = L6_3
          if L2_4 == 1 then
            L1_4 = "images/gui/challenges/star2.png"
          end
        end
      end
      L2_4 = display
      L2_4 = L2_4.newImageRect
      L3_4 = L1_4
      L4_4 = 25
      L5_4 = 25
      L2_4 = L2_4(L3_4, L4_4, L5_4)
      L2_4.anchorX = 0
      L2_4.anchorY = 0.5
      L3_4 = L2_3
      L4_4 = L3_4
      L3_4 = L3_4.insert
      L5_4 = L2_4
      L3_4(L4_4, L5_4)
      if A0_4 == 1 then
        L2_4.x = 8
        L2_4.y = 47
      elseif A0_4 == 2 then
        L2_4.x = 24
        L2_4.y = 50
      elseif A0_4 == 3 then
        L2_4.x = 40
        L2_4.y = 47
      end
    end
    
    L20_3 = L2_1
    L20_3 = L20_3.playerInfo
    L20_3 = L20_3.awardsTable
    if L20_3 == 2 and L7_3 == 3 then
      L20_3 = 1
      L21_3 = L7_3
      L22_3 = 1
      for L23_3 = L20_3, L21_3, L22_3 do
        L24_3 = L19_3
        L25_3 = L23_3
        L24_3(L25_3)
      end
    end
    
    function L20_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
      L0_4 = L8_3
      if L0_4 then
        L0_4 = L6_3
        L1_4 = L5_3
        L2_4 = L9_3
        L3_4 = L4_3
        L4_4 = L8_3
        return L0_4, L1_4, L2_4, L3_4, L4_4
      else
        L0_4 = print
        L1_4 = "WARNING: challenge is nil for id "
        L2_4 = L9_3
        L3_4 = " numberInList "
        L4_4 = L4_3
        L0_4(L1_4, L2_4, L3_4, L4_4)
        L0_4 = L6_3
        L1_4 = L5_3
        L2_4 = L9_3
        L3_4 = L4_3
        L4_4 = false
        L5_4 = false
        return L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
      end
    end
    
    L2_3.getChallengeData = L20_3
  end
  
  function L33_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = L3_3.text
    L5_3 = nil
    L6_3 = L3_3.image
    L7_3 = display
    L7_3 = L7_3.newImageRect
    L8_3 = L6_3
    L9_3 = 65
    L10_3 = 48
    L7_3 = L7_3(L8_3, L9_3, L10_3)
    L7_3.anchorX = 0.5
    L7_3.anchorY = 0.5
    L9_3 = L2_3
    L8_3 = L2_3.insert
    L10_3 = L7_3
    L8_3(L9_3, L10_3)
    L7_3.x = 35
    L7_3.y = 24
    if L6_3 == "images/gui/market/categoryGlasses.png" then
      L8_3 = L2_1
      L8_3 = L8_3.onboarding
      L8_3 = L8_3.isActive
      if L8_3 == true then
        L8_3 = L2_1
        L8_3 = L8_3.onboarding
        L8_3 = L8_3.addGuiReference
        L9_3 = "market_glasses"
        L10_3 = L2_3
        L8_3(L9_3, L10_3)
      end
    end
    L8_3 = {}
    L9_3 = 0.7
    L10_3 = 1
    L11_3 = 0.7
    L8_3[1] = L9_3
    L8_3[2] = L10_3
    L8_3[3] = L11_3
    L9_3 = 1.05
    L10_3 = {}
    L11_3 = 1
    L12_3 = 1
    L13_3 = 1
    L10_3[1] = L11_3
    L10_3[2] = L12_3
    L10_3[3] = L13_3
    L11_3 = 1
    L12_3 = L3_3.active
    if not L12_3 then
      L13_3 = L7_3
      L12_3 = L7_3.setFillColor
      L14_3 = unpack
      L15_3 = L10_3
      L14_3, L15_3 = L14_3(L15_3)
      L12_3(L13_3, L14_3, L15_3)
      L2_3.xScale = L11_3
      L2_3.yScale = L11_3
    else
      L13_3 = L7_3
      L12_3 = L7_3.setFillColor
      L14_3 = unpack
      L15_3 = L8_3
      L14_3, L15_3 = L14_3(L15_3)
      L12_3(L13_3, L14_3, L15_3)
      L2_3.xScale = L9_3
      L2_3.yScale = L9_3
    end
    L12_3 = L3_3.sale
    if L12_3 then
      L12_3 = display
      L12_3 = L12_3.newImageRect
      L13_3 = "images/gui/market/saleSmall.png"
      L14_3 = 23
      L15_3 = 20
      L12_3 = L12_3(L13_3, L14_3, L15_3)
      L5_3 = L12_3
      L13_3 = L2_3
      L12_3 = L2_3.insert
      L14_3 = L5_3
      L12_3(L13_3, L14_3)
      L12_3 = L7_3.x
      L12_3 = L12_3 + 33
      L5_3.x = L12_3
      L12_3 = L7_3.y
      L12_3 = L12_3 - 18
      L5_3.y = L12_3
    end
    L12_3 = L3_3.newItem
    if L12_3 then
      L12_3 = display
      L12_3 = L12_3.newImageRect
      L13_3 = "images/gui/market/newItemSmall.png"
      L14_3 = 23
      L15_3 = 20
      L12_3 = L12_3(L13_3, L14_3, L15_3)
      L14_3 = L2_3
      L13_3 = L2_3.insert
      L15_3 = L12_3
      L13_3(L14_3, L15_3)
      L13_3 = L7_3.x
      L13_3 = L13_3 + 33
      L12_3.x = L13_3
      L13_3 = L7_3.y
      L13_3 = L13_3 - 18
      L12_3.y = L13_3
      if L5_3 then
        L13_3 = L7_3.x
        L13_3 = L13_3 + 22
        L12_3.x = L13_3
        L14_3 = L2_3
        L13_3 = L2_3.insert
        L15_3 = L5_3
        L13_3(L14_3, L15_3)
      end
    end
    
    function L12_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      if A0_4 then
        L1_4 = L7_3
        L2_4 = L1_4
        L1_4 = L1_4.setFillColor
        L3_4 = unpack
        L4_4 = L8_3
        L3_4, L4_4 = L3_4(L4_4)
        L1_4(L2_4, L3_4, L4_4)
        L1_4 = L2_3
        L2_4 = L9_3
        L1_4.xScale = L2_4
        L1_4 = L2_3
        L2_4 = L9_3
        L1_4.yScale = L2_4
      else
        L1_4 = L7_3
        L2_4 = L1_4
        L1_4 = L1_4.setFillColor
        L3_4 = unpack
        L4_4 = L10_3
        L3_4, L4_4 = L3_4(L4_4)
        L1_4(L2_4, L3_4, L4_4)
        L1_4 = L2_3
        L2_4 = L11_3
        L1_4.xScale = L2_4
        L1_4 = L2_3
        L2_4 = L11_3
        L1_4.yScale = L2_4
      end
      L1_4 = L3_3
      L1_4.active = A0_4
    end
    
    function L13_3()
      local L0_4, L1_4
      L0_4 = L3_3
      L0_4 = L0_4.onClick
      if L0_4 then
        L0_4 = L3_3
        L0_4 = L0_4.onClick
        L0_4()
      end
      L0_4 = L6_3
      if L0_4 == "images/gui/market/categoryGlasses.png" then
        L0_4 = L2_1
        L0_4 = L0_4.onboarding
        L0_4 = L0_4.isActive
        if L0_4 == true then
          L0_4 = L2_1
          L0_4 = L0_4.onboarding
          L0_4 = L0_4.removeCategoryArrow
          L0_4()
        end
      end
    end
    
    L2_3.clickButton = L13_3
    L2_3.setActiveState = L12_3
  end
  
  function L34_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = L3_3.text
    L5_3 = 0
    L6_3 = nil
    L7_3 = "images/gui/settings/button.png"
    L8_3 = L3_3.sound
    if L8_3 then
      L8_3 = L2_1
      L8_3 = L8_3.database
      L8_3 = L8_3.getSound
      L8_3 = L8_3()
      if L8_3 == 0 then
        L7_3 = "images/gui/settings/buttonSoundMute.png"
      else
        L7_3 = "images/gui/settings/buttonSound.png"
        L9_3 = {}
        L10_3 = "25%"
        L11_3 = "50%"
        L12_3 = "75%"
        L13_3 = "100%"
        L9_3[1] = L10_3
        L9_3[2] = L11_3
        L9_3[3] = L12_3
        L9_3[4] = L13_3
        L4_3 = L9_3[L8_3]
        L5_3 = 36
        L6_3 = 14
      end
    else
      L8_3 = L3_3.chat
      if L8_3 then
        L8_3 = L2_1
        L8_3 = L8_3.database
        L8_3 = L8_3.getChat
        L8_3 = L8_3()
        if L8_3 == 1 then
          L7_3 = "images/gui/settings/buttonChatOn.png"
        else
          L7_3 = "images/gui/settings/buttonChatOff.png"
        end
      else
        L8_3 = L3_3.violence
        if L8_3 then
          L8_3 = L2_1
          L8_3 = L8_3.database
          L8_3 = L8_3.getViolence
          L8_3 = L8_3()
          if L8_3 == 1 then
            L7_3 = "images/gui/settings/buttonViolenceHigh.png"
          else
            L7_3 = "images/gui/settings/buttonViolenceLow.png"
          end
        else
          L8_3 = L3_3.facebook
          if L8_3 then
            L7_3 = "images/gui/settings/buttonFB.png"
          else
            L8_3 = L3_3.gameNetwork
            if L8_3 then
              L8_3 = isAndroid
              if L8_3 then
                L7_3 = "images/gui/settings/buttonPlayServices.png"
              else
                L8_3 = isIOS
                if L8_3 then
                  L7_3 = "images/gui/settings/buttonGameCenter.png"
                else
                  L8_3 = isSimulator
                  if L8_3 then
                    L7_3 = "images/gui/settings/buttonPlayServices.png"
                  else
                    L8_3 = print
                    L9_3 = "Error, should not display the game network settings button!"
                    L8_3(L9_3)
                  end
                end
              end
            else
              L8_3 = L3_3.gameNetworkConnected
              if L8_3 then
                L8_3 = isAndroid
                if L8_3 then
                  L7_3 = "images/gui/settings/buttonPlayServices.png"
                else
                  L8_3 = isIOS
                  if L8_3 then
                    L7_3 = "images/gui/settings/buttonGameCenter.png"
                  else
                    L8_3 = isSimulator
                    if L8_3 then
                      L7_3 = "images/gui/settings/buttonPlayServices.png"
                    else
                      L8_3 = print
                      L9_3 = "Error, should not display the game network connected settings button!"
                      L8_3(L9_3)
                    end
                  end
                end
              else
                L8_3 = L3_3.gameNetworkLogin
                if L8_3 then
                  L8_3 = isAndroid
                  if L8_3 then
                    L7_3 = "images/gui/settings/buttonPlayServices.png"
                  else
                    L8_3 = isIOS
                    if L8_3 then
                      L7_3 = "images/gui/settings/buttonGameCenter.png"
                    else
                      L8_3 = isSimulator
                      if L8_3 then
                        L7_3 = "images/gui/settings/buttonPlayServices.png"
                      else
                        L8_3 = print
                        L9_3 = "Error, should not display the game network login settings button!"
                        L8_3(L9_3)
                      end
                    end
                  end
                else
                  L8_3 = L3_3.videoLoad
                  if L8_3 then
                    L8_3 = L2_1
                    L8_3 = L8_3.database
                    L8_3 = L8_3.getLoadVideoOnWifiOnly
                    L8_3 = L8_3()
                    if L8_3 == 1 then
                      L7_3 = "images/gui/settings/videoLoadWifiOnly.png"
                    else
                      L7_3 = "images/gui/settings/videoLoadAllNetworks.png"
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    L8_3 = L3_3.graphics
    if L8_3 then
      L8_3 = L2_1
      L8_3 = L8_3.database
      L8_3 = L8_3.getGraphics
      L8_3 = L8_3()
      if L8_3 == 1 then
        L9_3 = L2_1
        L9_3 = L9_3.localized
        L9_3 = L9_3.get
        L10_3 = "High"
        L9_3 = L9_3(L10_3)
        L4_3 = L9_3
      else
        L9_3 = L2_1
        L9_3 = L9_3.localized
        L9_3 = L9_3.get
        L10_3 = "Low"
        L9_3 = L9_3(L10_3)
        L4_3 = L9_3
      end
    end
    L8_3 = display
    L8_3 = L8_3.newImageRect
    L9_3 = L7_3
    L10_3 = 120
    L11_3 = 37
    L8_3 = L8_3(L9_3, L10_3, L11_3)
    L8_3.anchorX = 0
    L8_3.anchorY = 0
    L10_3 = L2_3
    L9_3 = L2_3.insert
    L11_3 = L8_3
    L9_3(L10_3, L11_3)
    L8_3.x = 0
    L8_3.y = 0
    if L4_3 then
      L9_3 = L2_1
      L9_3 = L9_3.newText
      L10_3 = {}
      L10_3.string = L4_3
      L10_3.size = L6_3
      L9_3 = L9_3(L10_3)
      L11_3 = L2_3
      L10_3 = L2_3.insert
      L12_3 = L9_3
      L10_3(L11_3, L12_3)
      L9_3.anchorX = 0.5
      L9_3.anchorY = 0.5
      L10_3 = 60 + L5_3
      L9_3.x = L10_3
      L9_3.y = 17
    end
    
    function L9_3()
      local L0_4, L1_4
      L0_4 = L3_3
      L0_4 = L0_4.onClick
      if L0_4 then
        L0_4 = L3_3
        L0_4 = L0_4.onClick
        L0_4()
      end
    end
    
    L2_3.clickButton = L9_3
  end
  
  function L35_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = display
    L4_3 = L4_3.newImageRect
    L5_3 = "images/gui/common/transparent.png"
    L6_3 = L2_3.contentWidth
    L7_3 = L2_3.contentHeight
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L4_3.anchorX = 0
    L4_3.anchorY = 0
    L6_3 = L2_3
    L5_3 = L2_3.insert
    L7_3 = L4_3
    L5_3(L6_3, L7_3)
    L4_3.x = 0
    L4_3.y = 0
    L5_3 = L4_1
    L5_3 = L5_3.parseEvent
    L6_3 = L3_3
    L5_3 = L5_3(L6_3)
    L7_3 = L2_3
    L6_3 = L2_3.insert
    L8_3 = L5_3
    L6_3(L7_3, L8_3)
  end
  
  function L36_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = display
    L4_3 = L4_3.newImageRect
    L5_3 = "images/gui/common/transparent.png"
    L6_3 = L2_3.contentWidth
    L7_3 = L2_3.contentHeight
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L4_3.anchorX = 0
    L4_3.anchorY = 0
    L6_3 = L2_3
    L5_3 = L2_3.insert
    L7_3 = L4_3
    L5_3(L6_3, L7_3)
    L4_3.x = 0
    L4_3.y = 0
    L5_3 = L3_3.formatedText
    if L5_3 then
      L5_3 = L2_1
      L5_3 = L5_3.newText
      L6_3 = {}
      L7_3 = L3_3.formatedText
      L6_3.string = L7_3
      L6_3.size = 14
      L6_3.width = 220
      L6_3.height = 0
      L5_3 = L5_3(L6_3)
      L7_3 = L2_3
      L6_3 = L2_3.insert
      L8_3 = L5_3
      L6_3(L7_3, L8_3)
      L5_3.anchorX = 0
      L5_3.anchorY = 0
      L5_3.x = 0
      L5_3.y = 0
      L6_3 = L3_3.splitTable
      if L6_3 then
        L6_3 = L3_3.from
        if L6_3 then
          L6_3 = 0
          L7_3 = 1
          L8_3 = string
          L8_3 = L8_3.len
          L9_3 = L3_3.from
          L8_3 = L8_3(L9_3)
          L9_3 = 1
          for L10_3 = L7_3, L8_3, L9_3 do
            L11_3 = string
            L11_3 = L11_3.byte
            L12_3 = L3_3.from
            L13_3 = L12_3
            L12_3 = L12_3.sub
            L14_3 = L10_3
            L15_3 = L10_3
            L12_3, L13_3, L14_3, L15_3 = L12_3(L13_3, L14_3, L15_3)
            L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3)
            L6_3 = L6_3 + L11_3
          end
          L7_3 = L6_3 % 4
          if L7_3 == 0 then
            L9_3 = L5_3
            L8_3 = L5_3.setFillColor
            L10_3 = 0.8666666666666667
            L11_3 = 0.15294117647058825
            L12_3 = 0.15294117647058825
            L8_3(L9_3, L10_3, L11_3, L12_3)
          elseif L7_3 == 1 then
            L9_3 = L5_3
            L8_3 = L5_3.setFillColor
            L10_3 = 0.08235294117647059
            L11_3 = 0.38823529411764707
            L12_3 = 0.050980392156862744
            L8_3(L9_3, L10_3, L11_3, L12_3)
          elseif L7_3 == 2 then
            L9_3 = L5_3
            L8_3 = L5_3.setFillColor
            L10_3 = 0.14901960784313725
            L11_3 = 0.25098039215686274
            L12_3 = 0.7686274509803922
            L8_3(L9_3, L10_3, L11_3, L12_3)
          elseif L7_3 == 3 then
            L9_3 = L5_3
            L8_3 = L5_3.setFillColor
            L10_3 = 0.8313725490196079
            L11_3 = 0.3803921568627451
            L12_3 = 0.0784313725490196
            L8_3(L9_3, L10_3, L11_3, L12_3)
          end
      end
      else
        L6_3 = L3_3.textType
        L7_3 = L3_1
        L7_3 = L7_3.playerMessage
        L7_3 = L7_3()
        if L6_3 ~= L7_3 then
          L7_3 = L5_3
          L6_3 = L5_3.setFillColor
          L8_3 = 0.5
          L6_3(L7_3, L8_3)
        end
      end
    end
  end
  
  function L37_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = require
    L2_3 = "lua.modules.clans.clanHubPlayerEntry"
    L1_3 = L1_3(L2_3)
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = display
    L4_3 = L4_3.newRect
    L5_3 = 0
    L6_3 = 0
    L7_3 = L2_3.contentWidth
    L8_3 = L2_3.contentHeight
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
    L5_3 = {}
    L6_3 = 0.9568627450980393
    L7_3 = 0.8862745098039215
    L8_3 = 0.7725490196078432
    L5_3[1] = L6_3
    L5_3[2] = L7_3
    L5_3[3] = L8_3
    L6_3 = L2_3.index
    L6_3 = L6_3 % 2
    if L6_3 == 1 then
      L6_3 = {}
      L7_3 = 0.8745098039215686
      L8_3 = 0.792156862745098
      L9_3 = 0.6627450980392157
      L6_3[1] = L7_3
      L6_3[2] = L8_3
      L6_3[3] = L9_3
      L5_3 = L6_3
    end
    L6_3 = {}
    L7_3 = 0.6235294117647059
    L8_3 = 0.8784313725490196
    L9_3 = 0.5215686274509804
    L6_3[1] = L7_3
    L6_3[2] = L8_3
    L6_3[3] = L9_3
    L7_3 = L4_3.setFillColor
    if L7_3 then
      L8_3 = L4_3
      L7_3 = L4_3.setFillColor
      L9_3 = unpack
      L10_3 = L5_3
      L9_3, L10_3 = L9_3(L10_3)
      L7_3(L8_3, L9_3, L10_3)
    end
    L4_3.anchorX = 0
    L4_3.anchorY = 0
    L8_3 = L2_3
    L7_3 = L2_3.insert
    L9_3 = L4_3
    L7_3(L8_3, L9_3)
    L4_3.x = 0
    L4_3.y = -8
    L7_3 = L1_3.create
    L8_3 = L3_3
    L7_3 = L7_3(L8_3)
    L9_3 = L2_3
    L8_3 = L2_3.insert
    L10_3 = L7_3
    L8_3(L9_3, L10_3)
    
    function L8_3()
      local L0_4, L1_4
      L0_4 = L3_3
      L0_4 = L0_4.playerId
      return L0_4
    end
    
    L2_3.getPlayerId = L8_3
    
    function L9_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L4_3
      L0_4 = L0_4.setFillColor
      if L0_4 then
        L0_4 = L4_3
        L1_4 = L0_4
        L0_4 = L0_4.setFillColor
        L2_4 = unpack
        L3_4 = L5_3
        L2_4, L3_4 = L2_4(L3_4)
        L0_4(L1_4, L2_4, L3_4)
      end
      L0_4 = L7_3
      L0_4 = L0_4.deSelect
      L0_4()
    end
    
    L2_3.deSelect = L9_3
    
    function L10_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L4_3
      L0_4 = L0_4.setFillColor
      if L0_4 then
        L0_4 = L4_3
        L1_4 = L0_4
        L0_4 = L0_4.setFillColor
        L2_4 = unpack
        L3_4 = L6_3
        L2_4, L3_4 = L2_4(L3_4)
        L0_4(L1_4, L2_4, L3_4)
      end
      L0_4 = L7_3
      L0_4 = L0_4.setSelected
      L0_4()
    end
    
    L2_3.setSelected = L10_3
  end
  
  function L38_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_3.params
    L4_3 = L2_1
    L4_3 = L4_3.newText
    L5_3 = {}
    L6_3 = L3_3.creditInfo
    L5_3.string = L6_3
    L6_3 = L3_3.size
    L5_3.size = L6_3
    L4_3 = L4_3(L5_3)
    L6_3 = L2_3
    L5_3 = L2_3.insert
    L7_3 = L4_3
    L5_3(L6_3, L7_3)
    L4_3.anchorX = 0
    L4_3.anchorY = 0
    L4_3.x = 100
    L4_3.y = 24
  end
  
  function L39_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.row
    L3_3 = L2_1
    L3_3 = L3_3.createEmbossedText
    L4_3 = "Create a uniqe one"
    L5_3 = L2_1
    L5_3 = L5_3.getFontSize
    L6_3 = "small"
    L5_3 = L5_3(L6_3)
    L6_3 = 35
    L7_3 = L2_3.contentHeight
    L7_3 = L7_3 * 0.5
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
    L5_3 = L2_3
    L4_3 = L2_3.insert
    L6_3 = L3_3
    L4_3(L5_3, L6_3)
  end
  
  function L40_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L39_2
    L1_3 = A6_2
    if L1_3 == "settings" then
      L0_3 = L34_2
    else
      L1_3 = A6_2
      if L1_3 == "findFriends" then
        L0_3 = L22_2
      else
        L1_3 = A6_2
        if L1_3 == "friendsSettings1" then
          L0_3 = L18_2
        else
          L1_3 = A6_2
          if L1_3 == "friendsSettings2" then
            L0_3 = L20_2
          else
            L1_3 = A6_2
            if L1_3 == "friendsSettings3" then
              L0_3 = L21_2
            else
              L1_3 = A6_2
              if L1_3 == "ranking" then
                L0_3 = L27_2
              else
                L1_3 = A6_2
                if L1_3 == "challenge" then
                  L0_3 = L32_2
                else
                  L1_3 = A6_2
                  if L1_3 == "consecutive" then
                    L0_3 = L31_2
                  else
                    L1_3 = A6_2
                    if L1_3 == "credits" then
                      L0_3 = L38_2
                    else
                      L1_3 = A6_2
                      if L1_3 == "map" then
                        L0_3 = L26_2
                      else
                        L1_3 = A6_2
                        if L1_3 == "clanChat" then
                          L0_3 = L35_2
                        else
                          L1_3 = A6_2
                          if L1_3 == "chat" then
                            L0_3 = L36_2
                          else
                            L1_3 = A6_2
                            if L1_3 == "market" then
                              L0_3 = L33_2
                            else
                              L1_3 = A6_2
                              if L1_3 == "friends" then
                                L0_3 = L23_2
                              else
                                L1_3 = A6_2
                                if L1_3 == "rankingPrizes" then
                                  L0_3 = L30_2
                                else
                                  L1_3 = A6_2
                                  if L1_3 == "clanHubPlayerList" then
                                    L0_3 = L37_2
                                  else
                                    L1_3 = A6_2
                                    if L1_3 == "clanChatMemberList" then
                                      L0_3 = L24_2
                                    else
                                      L1_3 = A6_2
                                      if L1_3 == "openClans" then
                                        L0_3 = L25_2
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
    L1_3 = 0
    L2_3 = A8_2
    if L2_3 then
      L1_3 = A8_2
    end
    L2_3 = A6_2
    if L2_3 == "ranking" then
      L2_3 = L15_2
      if L2_3 == 0 then
        L1_3 = 20
      end
    end
    L2_3 = 0
    L3_3 = A10_2
    if L3_3 then
      L2_3 = A10_2
    end
    L3_3 = L1_1
    L3_3 = L3_3.newTableView
    L4_3 = {}
    L5_3 = A1_2
    L4_3.top = L5_3
    L5_3 = A0_2
    L4_3.left = L5_3
    L5_3 = A2_2
    L4_3.width = L5_3
    L5_3 = A3_2
    L4_3.height = L5_3
    L4_3.hideBackground = true
    L4_3.noLines = true
    L5_3 = L17_2
    L4_3.listener = L5_3
    L4_3.onRowRender = L0_3
    L4_3.hideScrollBar = true
    L4_3.topPadding = L1_3
    L4_3.bottomPadding = L2_3
    L3_3 = L3_3(L4_3)
    L13_2 = L3_3
  end
  
  function L41_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = L14_2
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = L14_2
      L1_3(L2_3)
      L1_3 = nil
      L14_2 = L1_3
    end
    L1_3 = A4_2
    L2_3 = 50
    L3_3 = 0
    L4_3 = 0
    L5_3 = #A0_3
    if L2_3 < L5_3 then
      L5_3 = #A0_3
      L3_3 = L5_3 - L2_3
    else
      L2_3 = #A0_3
    end
    
    function L5_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
      L0_4 = L4_3
      L0_4 = L0_4 + 1
      L4_3 = L0_4
      L0_4 = {}
      L1_4 = {}
      L2_4 = 1
      L3_4 = 1
      L4_4 = 1
      L5_4 = 0
      L1_4[1] = L2_4
      L1_4[2] = L3_4
      L1_4[3] = L4_4
      L1_4[4] = L5_4
      L0_4.default = L1_4
      L1_4 = {}
      L2_4 = 0.8627450980392157
      L3_4 = 0.8627450980392157
      L4_4 = 0.8627450980392157
      L1_4[1] = L2_4
      L1_4[2] = L3_4
      L1_4[3] = L4_4
      L2_4 = L1_3
      L3_4 = A0_3
      L4_4 = L4_3
      L3_4 = L3_4[L4_4]
      L3_4 = L3_4.nextLeauge
      if L3_4 then
        L2_4 = L2_4 * 2.6
      else
        L3_4 = A0_3
        L4_4 = L4_3
        L3_4 = L3_4[L4_4]
        L3_4 = L3_4.header
        if L3_4 then
          L2_4 = L2_4 * 0.4
        else
          L3_4 = A0_3
          L4_4 = L4_3
          L3_4 = L3_4[L4_4]
          L3_4 = L3_4.rowHeight
          if L3_4 then
            L3_4 = A0_3
            L4_4 = L4_3
            L3_4 = L3_4[L4_4]
            L2_4 = L3_4.rowHeight
          end
        end
      end
      L3_4 = A6_2
      if L3_4 == "challenge" then
        L3_4 = L2_1
        L3_4 = L3_4.playerInfo
        L3_4 = L3_4.awardsTable
        if L3_4 == 1 then
          L3_4 = L4_3
          if L3_4 == 2 then
            L3_4 = L2_1
            L3_4 = L3_4.consecutiveLoginsFormatted
            if L3_4 then
              L2_4 = 45
            end
          end
        end
      end
      L3_4 = A0_3
      L4_4 = L4_3
      L3_4 = L3_4[L4_4]
      L4_4 = L4_3
      L3_4.rowIndex = L4_4
      L3_4 = L13_2
      L4_4 = L3_4
      L3_4 = L3_4.insertRow
      L5_4 = {}
      L5_4.rowHeight = L2_4
      L5_4.rowColor = L0_4
      L5_4.lineColor = L1_4
      L6_4 = A0_3
      L7_4 = L4_3
      L6_4 = L6_4[L7_4]
      L5_4.params = L6_4
      L3_4(L4_4, L5_4)
    end
    
    L6_3 = 1
    L7_3 = L2_3
    L8_3 = 1
    for L9_3 = L6_3, L7_3, L8_3 do
      L10_3 = L5_3
      L10_3()
    end
    if 0 < L3_3 then
      L6_3 = timer
      L6_3 = L6_3.performWithDelay
      L7_3 = 40
      L8_3 = L5_3
      L9_3 = L3_3
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      L14_2 = L6_3
    end
  end
  
  function L42_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    if A1_3 then
      L2_3 = A1_3.insert
      if L2_3 then
        L2_3 = A0_3.leagueType
        if L2_3 then
          L2_3 = A0_3.leagueType
          L15_2 = L2_3
        end
        L2_3 = A0_3.tableIndex
        if L2_3 then
          L2_3 = A0_3.tableIndex
          L16_2 = L2_3
        end
        L2_3 = L40_2
        L2_3()
        L3_3 = A1_3
        L2_3 = A1_3.insert
        L4_3 = L13_2
        L2_3(L3_3, L4_3)
        L2_3 = L41_2
        L3_3 = A0_3
        L2_3(L3_3)
      end
    end
  end
  
  function L43_2()
    local L0_3, L1_3
    L0_3 = L14_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L14_2
      L0_3(L1_3)
      L0_3 = nil
      L14_2 = L0_3
    end
    L0_3 = L13_2
    if L0_3 then
      L0_3 = L13_2
      L1_3 = L0_3
      L0_3 = L0_3.deleteAllRows
      L0_3(L1_3)
      L0_3 = L13_2
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      L13_2 = L0_3
    end
  end
  
  function L44_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L13_2
    L2_3 = L1_3
    L1_3 = L1_3.deleteRow
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  function L45_2()
    local L0_3, L1_3
    L0_3 = L13_2
    return L0_3
  end
  
  function L46_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    if A0_3 and A1_3 then
      L3_3 = L13_2
      if L3_3 then
        L3_3 = L13_2
        L4_3 = L3_3
        L3_3 = L3_3.getContentPosition
        L3_3 = L3_3(L4_3)
        if A2_3 then
          L3_3 = A2_3
        end
        L4_3 = L43_2
        L4_3()
        L4_3 = L42_2
        L5_3 = A0_3
        L6_3 = A1_3
        L4_3(L5_3, L6_3)
        L4_3 = L13_2
        L5_3 = L4_3
        L4_3 = L4_3.scrollToY
        L6_3 = {}
        L6_3.y = L3_3
        L6_3.time = 0
        L4_3(L5_3, L6_3)
    end
    else
      L3_3 = L13_2
      if L3_3 then
        L3_3 = L13_2
        L4_3 = L3_3
        L3_3 = L3_3.getNumRows
        L3_3 = L3_3(L4_3)
        if 0 < L3_3 then
          L3_3 = L13_2
          L4_3 = L3_3
          L3_3 = L3_3.reloadData
          L3_3(L4_3)
        end
      end
    end
  end
  
  function L47_2(A0_3)
    local L1_3
    L1_3 = L13_2
    L1_3.isVisible = A0_3
  end
  
  L11_2.createTable = L42_2
  L11_2.cleanTable = L43_2
  L11_2.getTable = L45_2
  L11_2.refreshTable = L46_2
  L11_2.deleteRow = L44_2
  L11_2.setVisible = L47_2
  return L11_2
end

L0_1.new = L6_1
return L0_1
