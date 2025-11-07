local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "lua.modules.androidBackButton"
L1_1 = L1_1(L2_1)
L2_1 = nil
L3_1 = nil
L4_1 = nil
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = nil

function L13_1(A0_2)
  local L1_2
  L1_2 = A0_2.phase
  if L1_2 == "ended" then
    L1_2 = L11_1
    if L1_2 then
      L1_2 = L8_1
      L1_2()
    end
  end
  L1_2 = true
  return L1_2
end

function L14_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end

function L8_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L1_1
  L0_2 = L0_2.isCustomOverlay
  L1_2 = nil
  L0_2(L1_2)
  L0_2 = L9_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L9_1
    L0_2(L1_2)
    L0_2 = nil
    L9_1 = L0_2
  end
  L0_2 = L3_1
  if L0_2 then
    L0_2 = L3_1
    L1_2 = L0_2
    L0_2 = L0_2.removeEventListener
    L2_2 = "touch"
    L3_2 = L14_1
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = L3_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L3_1 = L0_2
  end
  L0_2 = L4_1
  if L0_2 then
    L0_2 = L4_1
    L1_2 = L0_2
    L0_2 = L0_2.removeEventListener
    L2_2 = "touch"
    L3_2 = L13_1
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = L4_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L4_1 = L0_2
  end
  L0_2 = L6_1
  if L0_2 then
    L0_2 = display
    L0_2 = L0_2.remove
    L1_2 = L6_1
    L0_2(L1_2)
    L0_2 = nil
    L6_1 = L0_2
  end
  L0_2 = L7_1
  if L0_2 then
    L0_2 = display
    L0_2 = L0_2.remove
    L1_2 = L7_1
    L0_2(L1_2)
    L0_2 = nil
    L7_1 = L0_2
  end
  L0_2 = L5_1
  if L0_2 then
    L0_2 = L5_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L5_1 = L0_2
  end
  L0_2 = L2_1
  if L0_2 then
    L0_2 = L2_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L2_1 = L0_2
  end
  L0_2 = false
  L10_1 = L0_2
  L0_2 = L12_1
  if L0_2 then
    L0_2 = L12_1
    L0_2()
    L0_2 = nil
    L12_1 = L0_2
  end
end

L0_1.cleanOldOverlay = L8_1

function L15_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = L10_1
  if L5_2 then
    return
  end
  if A1_2 then
    L10_1 = A1_2
  end
  L5_2 = L8_1
  L5_2()
  L5_2 = false
  L11_1 = L5_2
  L5_2 = ""
  L6_2 = 20
  if A0_2 == 1 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Offline, try again later"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 2 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Facebook login failed E3"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 3 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Facebook login failed E1"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 4 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Facebook login failed E2"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 5 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Store not available"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 6 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Game unavailable"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 7 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Host left"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 8 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "You were kicked"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 9 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Try again later"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 10 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Logged in elsewhere"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 11 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Please login again"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 12 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Something went wrong"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 13 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Failed to unlock zone"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 14 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Facebook failed E4"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 15 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Facebook failed E5"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 16 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Facebook already in use"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 17 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "You must buy more slots"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 18 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "You can not use this item"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 19 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Lost connection"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 20 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Could not find a game"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 21 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Please enter a new name"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 22 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Not enough gems"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 23 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Not enough coins"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 24 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Egg hunt not unlocked"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 25 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Already a member"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 26 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Already connected to facebook"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 27 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Facebook error"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 28 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "You already own this"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 29 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Achievements error"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 30 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Daily challenge not complete"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 31 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Can't find daily challenges"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 32 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "You need more progression"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 33 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Game is full"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 34 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Game already started"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 35 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "No game found"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 36 then
    if A2_2 then
      if A2_2 < 0 then
        L7_2 = L0_1
        L7_2 = L7_2.localized
        L7_2 = L7_2.get
        L8_2 = "You have been permanently banned"
        L7_2 = L7_2(L8_2)
        L5_2 = L7_2
      else
        L7_2 = os
        L7_2 = L7_2.time
        L7_2 = L7_2()
        L7_2 = L7_2 * 1000
        L8_2 = A2_2 - L7_2
        if 0 < L8_2 then
          L9_2 = math
          L9_2 = L9_2.ceil
          L10_2 = L8_2 / 3600000
          L9_2 = L9_2(L10_2)
          L8_2 = L9_2
          L9_2 = L0_1
          L9_2 = L9_2.localized
          L9_2 = L9_2.get
          L10_2 = "You have been banned for"
          L9_2 = L9_2(L10_2)
          L10_2 = " "
          L11_2 = L8_2
          L12_2 = " "
          L13_2 = L0_1
          L13_2 = L13_2.localized
          L13_2 = L13_2.get
          L14_2 = "hour(s)"
          L13_2 = L13_2(L14_2)
          L5_2 = L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
        else
          L9_2 = L0_1
          L9_2 = L9_2.localized
          L9_2 = L9_2.get
          L10_2 = "You've been banned"
          L9_2 = L9_2(L10_2)
          L5_2 = L9_2
        end
      end
    else
      L7_2 = L0_1
      L7_2 = L7_2.localized
      L7_2 = L7_2.get
      L8_2 = "You have been banned"
      L7_2 = L7_2(L8_2)
      L5_2 = L7_2
    end
  elseif A0_2 == 37 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Your account has been frozen"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 38 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Failed to update files, try again later"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 39 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "CouldNotConnect"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 40 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "TooManyFriends"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 41 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Already friends"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 42 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "TooManyFriendInvites"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 43 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Error: Please try again"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 44 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Gift sent!"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 45 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "You own all items, wait for next patch"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 46 then
    L6_2 = 16
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Can't send to that address. Please contact support@dirtybit.com"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 47 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Failed file update. Starting offline mode."
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 48 then
    L6_2 = 14
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = [[
The bank is empty! Come back tomorrow
to earn more coins.
You can still earn rating!]]
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
    L7_2 = A2_2.onCloseCallback
    L12_1 = L7_2
  elseif A0_2 == 49 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "You are safe from demotion this week."
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 50 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "You are in danger of being demoted!"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 51 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = [[
Demotion line.
Stay above!]]
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 52 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "This will remove all friend requests. Are you sure?"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 53 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "You left the clan."
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 54 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "You need a rank of recruiter or higher to invite players to the clan"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 55 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "The leader must promote someone else OR kick everyone before leaving"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 56 then
    L5_2 = A2_2.message
    L7_2 = A2_2.onCloseCallback
    L12_1 = L7_2
  elseif A0_2 == 57 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "This will remove all clan invites. Are you sure?"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  elseif A0_2 == 98 then
    L5_2 = A2_2
  elseif A0_2 == 99 then
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "Message error "
    L7_2 = L7_2(L8_2)
    L8_2 = A2_2
    L5_2 = L7_2 .. L8_2
  else
    L7_2 = L0_1
    L7_2 = L7_2.localized
    L7_2 = L7_2.get
    L8_2 = "SOMETHING WENT WRONG"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  end
  if A2_2 then
    L7_2 = type
    L8_2 = A2_2
    L7_2 = L7_2(L8_2)
    if L7_2 == "table" then
      L7_2 = A2_2.fontSize
      if L7_2 then
        L6_2 = A2_2.fontSize
      end
    end
  end
  L7_2 = display
  L7_2 = L7_2.newGroup
  L7_2 = L7_2()
  L2_1 = L7_2
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = "images/gui/common/generalPopup.png"
  L9_2 = 248
  L10_2 = 105
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L3_1 = L7_2
  L7_2 = L3_1
  L7_2.anchorX = 0.5
  L7_2 = L3_1
  L7_2.anchorY = 0
  L7_2 = L3_1
  L7_2.x = 240
  L7_2 = L3_1
  L7_2.y = 100
  L7_2 = display
  L7_2 = L7_2.newRect
  L8_2 = 0
  L9_2 = 0
  L10_2 = display
  L10_2 = L10_2.contentWidth
  L11_2 = display
  L11_2 = L11_2.contentHeight
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L4_1 = L7_2
  L7_2 = L4_1
  L7_2.anchorX = 0
  L7_2 = L4_1
  L7_2.anchorY = 0
  L7_2 = L4_1
  L8_2 = L7_2
  L7_2 = L7_2.setFillColor
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0.5882352941176471
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = L4_1
  L7_2.x = 0
  L7_2 = L4_1
  L7_2.y = 0
  L7_2 = L0_1
  L7_2 = L7_2.newText
  L8_2 = {}
  L8_2.string = L5_2
  L8_2.size = L6_2
  L8_2.x = 240
  L8_2.y = 140
  L8_2.width = 220
  L8_2.align = "center"
  L8_2.ay = 0.5
  L9_2 = {}
  L10_2 = 1
  L11_2 = 1
  L12_2 = 1
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L8_2.color = L9_2
  L7_2 = L7_2(L8_2)
  L5_1 = L7_2
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L8_1
    L0_3()
    L0_3 = A3_2
    if L0_3 then
      L0_3 = A3_2
      L0_3()
    end
  end
  
  L8_2 = L0_1
  L8_2 = L8_2.localized
  L8_2 = L8_2.get
  L9_2 = "OK"
  L8_2 = L8_2(L9_2)
  L9_2 = nil
  if A0_2 == 48 then
    L10_2 = L0_1
    L10_2 = L10_2.localized
    L10_2 = L10_2.get
    L11_2 = "Collect     x"
    L10_2 = L10_2(L11_2)
    L11_2 = A2_2.amount
    L8_2 = L10_2 .. L11_2
    L10_2 = display
    L10_2 = L10_2.newImageRect
    L11_2 = "images/gui/common/gem.png"
    L12_2 = 90
    L13_2 = 90
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L9_2 = L10_2
    L9_2.x = 260
    L9_2.y = 200
    L9_2.xScale = 0.25
    L9_2.yScale = 0.25
  elseif A0_2 == 52 then
    L10_2 = L0_1
    L10_2 = L10_2.localized
    L10_2 = L10_2.get
    L11_2 = "Yes"
    L10_2 = L10_2(L11_2)
    L8_2 = L10_2
  end
  L10_2 = L0_1
  L10_2 = L10_2.newButton
  L11_2 = {}
  L11_2.x = 240
  L11_2.y = 200
  L11_2.width = 126
  L11_2.height = 40
  L11_2.text = L8_2
  L11_2.image = "images/gui/common/buttonTextB.png"
  L11_2.onRelease = L7_2
  L10_2 = L10_2(L11_2)
  L6_1 = L10_2
  
  function L10_2()
    local L0_3, L1_3
    L0_3 = L8_1
    L0_3()
  end
  
  L11_2 = L0_1
  L11_2 = L11_2.newButton
  L12_2 = {}
  L12_2.x = 360
  L12_2.y = 100
  L12_2.width = 43
  L12_2.height = 38
  L12_2.image = "images/gui/common/buttonClosePopup.png"
  L12_2.onRelease = L10_2
  L11_2 = L11_2(L12_2)
  L7_1 = L11_2
  L11_2 = L7_1
  L11_2.isVisible = false
  if A4_2 then
    L11_2 = L7_1
    L11_2.isVisible = true
  end
  
  function L11_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_1
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L4_1
    L0_3(L1_3, L2_3)
    L0_3 = L2_1
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L3_1
    L0_3(L1_3, L2_3)
    L0_3 = L2_1
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L5_1
    L0_3(L1_3, L2_3)
    L0_3 = L2_1
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L6_1
    L0_3(L1_3, L2_3)
    L0_3 = L2_1
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L7_1
    L0_3(L1_3, L2_3)
    L0_3 = L9_2
    if L0_3 then
      L0_3 = L2_1
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L9_2
      L0_3(L1_3, L2_3)
    end
  end
  
  function L12_2()
    local L0_3, L1_3
    L0_3 = true
    L11_1 = L0_3
  end
  
  L13_2 = L4_1
  L14_2 = L13_2
  L13_2 = L13_2.addEventListener
  L15_2 = "touch"
  L16_2 = L13_1
  L13_2(L14_2, L15_2, L16_2)
  L13_2 = L3_1
  L14_2 = L13_2
  L13_2 = L13_2.addEventListener
  L15_2 = "touch"
  L16_2 = L14_1
  L13_2(L14_2, L15_2, L16_2)
  L13_2 = L11_2
  L13_2()
  L13_2 = timer
  L13_2 = L13_2.performWithDelay
  L14_2 = 500
  L15_2 = L12_2
  L16_2 = 1
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L9_1 = L13_2
  L13_2 = L1_1
  L13_2 = L13_2.isCustomOverlay
  L14_2 = L8_1
  L13_2(L14_2)
end

L0_1.createCustomOverlay = L15_1
