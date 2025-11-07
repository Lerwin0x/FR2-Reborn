local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = {}
L1_1 = nil
L2_1 = require
L3_1 = "lua.modules.jsonParser"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)

function L4_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.getJsonFromFile
  L1_2 = "config/awards.json"
  L0_2 = L0_2(L1_2)
  L1_1 = L0_2
end

L0_1.readFromFile = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = L1_1
  if L0_2 == nil then
    L0_2 = true
    return L0_2
  end
  L0_2 = L1_1
  L0_2 = L0_2.dailyChallenges
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.achievements
    if L0_2 then
      goto lbl_16
    end
  end
  L0_2 = true
  do return L0_2 end
  ::lbl_16::
  L0_2 = false
  return L0_2
end

L0_1.isFileCorrupt = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.isFileCorrupt
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = print
    L1_2 = "WARNING: Reloading AwardsConfig File."
    L0_2(L1_2)
    L0_2 = L0_1
    L0_2 = L0_2.readFromFile
    L0_2()
  end
end

function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.version
  return L0_2
end

L0_1.getVersion = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L4_1
  L1_2()
  L1_2 = ""
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.awards
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 == A0_2 then
      L1_2 = L6_2.text
      return L1_2
    end
  end
  return L1_2
end

L0_1.getAwardText = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L4_1
  L1_2()
  L1_2 = "1"
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.dailyChallenges
  L3_2 = L3_2.challenges
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L8_2 = tonumber
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      L7_2 = L6_2.image
      if L7_2 then
        L7_2 = L6_2.image
        return L7_2
      else
        L7_2 = "1"
        return L7_2
      end
    end
  end
  L2_2 = print
  L3_2 = "WARNING: coud not find image for daily challenge "
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  return L1_2
end

L0_1.getDailyChallengeImage = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L4_1
  L1_2()
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.dailyChallenges
  L2_2 = L2_2.challenges
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = tonumber
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = tonumber
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L6_2 == L7_2 then
      L6_2 = L5_2.title
      return L6_2
    end
  end
  L1_2 = "Cound not find name E:2"
  return L1_2
end

L0_1.getDailyChallengeName = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L4_1
  L1_2()
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.dailyChallenges
  L2_2 = L2_2.challenges
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = tonumber
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = tonumber
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L6_2 == L7_2 then
      return L5_2
    end
  end
  L1_2 = nil
  return L1_2
end

L0_1.getDailyChallenge = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L4_1
  L1_2()
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.achievements
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = tonumber
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = tonumber
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L6_2 == L7_2 then
      L6_2 = L5_2.steps
      L6_2 = #L6_2
      return L6_2
    end
  end
  L1_2 = 1
  return L1_2
end

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L4_1
  L1_2()
  L1_2 = {}
  L2_2 = L1_1
  L2_2 = L2_2.earnCoins
  if L2_2 then
    L2_2 = pairs
    L3_2 = L1_1
    L3_2 = L3_2.earnCoins
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2.id
      if L7_2 == A0_2 then
        L7_2 = L6_2.softCurrencyReward
        if L7_2 then
          L7_2 = L6_2.softCurrencyReward
          return L7_2
        else
          L7_2 = L6_2.gemReward
          if L7_2 then
            L7_2 = L6_2.gemReward
            return L7_2
          end
        end
      end
    end
  end
  L2_2 = 0
  return L2_2
end

L0_1.getEarnCoinsReward = L6_1

function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L4_1
  L0_2()
  L0_2 = {}
  L1_2 = L1_1
  L1_2 = L1_2.earnCoins
  if L1_2 then
    L1_2 = pairs
    L2_2 = L1_1
    L2_2 = L2_2.earnCoins
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L5_2.hidden
      if L6_2 then
      else
        L6_2 = L5_2.minBuild
        if L6_2 then
          L6_2 = L5_2.minBuild
          L7_2 = L3_1
          L7_2 = L7_2.config
          L7_2 = L7_2.localVersion
          if L6_2 > L7_2 then
        end
        else
          L6_2 = #L0_2
          L6_2 = L6_2 + 1
          L0_2[L6_2] = L5_2
          L7_2 = L0_2[L6_2]
          L8_2 = tonumber
          L9_2 = L4_2
          L8_2 = L8_2(L9_2)
          L7_2.id = L8_2
        end
      end
    end
  end
  return L0_2
end

L0_1.getEarnCoins = L6_1

function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L4_1
  L0_2()
  L0_2 = {}
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.achievements
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.minBuild
    if L6_2 then
      L6_2 = L5_2.minBuild
      L7_2 = L3_1
      L7_2 = L7_2.config
      L7_2 = L7_2.localVersion
      if L6_2 > L7_2 then
    end
    else
      L6_2 = #L0_2
      L6_2 = L6_2 + 1
      L0_2[L6_2] = L5_2
      L7_2 = L0_2[L6_2]
      L8_2 = tonumber
      L9_2 = L4_2
      L8_2 = L8_2(L9_2)
      L7_2.id = L8_2
      L7_2 = L0_2[L6_2]
      L8_2 = L5_1
      L9_2 = L4_2
      L8_2 = L8_2(L9_2)
      L7_2.maxStage = L8_2
    end
  end
  return L0_2
end

L0_1.getAchievements = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L4_1
  L1_2()
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.achievements
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.hidden
    if L6_2 then
    else
      L6_2 = L5_2.minBuild
      if L6_2 then
        L6_2 = L5_2.minBuild
        L7_2 = L3_1
        L7_2 = L7_2.config
        L7_2 = L7_2.localVersion
        if L6_2 > L7_2 then
      end
      else
        L6_2 = L5_2.steps
        if L6_2 then
          L6_2 = 1
          L7_2 = L5_2.steps
          L7_2 = #L7_2
          L8_2 = 1
          for L9_2 = L6_2, L7_2, L8_2 do
            L10_2 = L5_2.steps
            L10_2 = L10_2[L9_2]
            L11_2 = tonumber
            L12_2 = L10_2.itemAwarded
            L11_2 = L11_2(L12_2)
            L12_2 = tonumber
            L13_2 = A0_2
            L12_2 = L12_2(L13_2)
            if L11_2 == L12_2 then
              L11_2 = L5_2.image
              return L11_2
            end
          end
        end
      end
    end
  end
  L1_2 = nil
  return L1_2
end

L0_1.getAchievementImageForPrizeItem = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L4_1
  L2_2()
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.achievements
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L8_2 = tonumber
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      L7_2 = L6_2.title
      if L7_2 then
        L7_2 = L6_2.title
        return L7_2
      end
    end
  end
  L2_2 = print
  L3_2 = "WARNING: getAchievementName id"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = print
  L3_2 = "WARNING: getAchievementName stage"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = "Cound not find name E:1"
  return L2_2
end

L0_1.getAchievementName = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L4_1
  L2_2()
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.achievements
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L8_2 = tonumber
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      L7_2 = L6_2.steps
      L7_2 = L7_2[A1_2]
      if L7_2 then
        L7_2 = L6_2.steps
        L7_2 = L7_2[A1_2]
        L7_2 = L7_2.text
        if L7_2 then
          L7_2 = L6_2.steps
          L7_2 = L7_2[A1_2]
          L7_2 = L7_2.text
          return L7_2
        end
      end
    end
  end
  L2_2 = nil
  return L2_2
end

L0_1.getAchievementDescriptionForStep = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L4_1
  L1_2()
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2.achievements
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = tonumber
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = tonumber
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L6_2 == L7_2 then
      L6_2 = L5_2.image
      if L6_2 then
        L6_2 = L5_2.image
        return L6_2
      end
    end
  end
  L1_2 = print
  L2_2 = "WARNING: failed getAchievementImage id"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = "1"
  return L1_2
end

L0_1.getAchievementImage = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L4_1
  L2_2()
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.achievements
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L8_2 = tonumber
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      L7_2 = L6_2.steps
      L7_2 = L7_2[A1_2]
      if L7_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end

L0_1.isAchievementForStage = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L4_1
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.consecutiveLogins
  if not L1_2 then
    L1_2 = {}
    L1_2.type = "QUICK_PLAY_GAMES"
    L1_2.softCurrencyReward = 10
    L1_2.max = 1
    return L1_2
  end
  L1_2 = L1_1
  L1_2 = L1_2.specialConsecutiveLogins
  if L1_2 then
    L1_2 = pairs
    L2_2 = L1_1
    L2_2 = L2_2.specialConsecutiveLogins
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L5_2.type
      if L6_2 == "mod" then
        L6_2 = tonumber
        L7_2 = L4_2
        L6_2 = L6_2(L7_2)
        L6_2 = A0_2 % L6_2
        if L6_2 == 0 then
          return L5_2
        end
      end
    end
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.consecutiveLogins
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L8_2 = tonumber
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      return L6_2
    end
    L1_2 = L1_2 + 1
  end
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L1_2 - 6
  L3_2 = A0_2 - L3_2
  L3_2 = L3_2 / 7
  L2_2 = L2_2(L3_2)
  L2_2 = 7 * L2_2
  L2_2 = A0_2 - L2_2
  L3_2 = L1_1
  L3_2 = L3_2.consecutiveLogins
  L4_2 = ""
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2 = L3_2[L4_2]
  return L3_2
end

L0_1.getConsecutiveDayConstant = L6_1
L6_1 = {}
L7_1 = L3_1.localized
L7_1 = L7_1.get
L8_1 = "Reach "
L7_1 = L7_1(L8_1)
L8_1 = L3_1.localized
L8_1 = L8_1.get
L9_1 = " rating to advance to the next league"
L8_1 = L8_1(L9_1)
L9_1 = L3_1.localized
L9_1 = L9_1.get
L10_1 = "Be Top 50 player to advance"
L9_1 = L9_1(L10_1)
L10_1 = {}
L11_1 = L3_1.localized
L11_1 = L11_1.get
L12_1 = "Elite League"
L11_1 = L11_1(L12_1)
L10_1[1] = L11_1
L11_1 = L3_1.localized
L11_1 = L11_1.get
L12_1 = "Diamond League"
L11_1 = L11_1(L12_1)
L10_1[2] = L11_1
L11_1 = L3_1.localized
L11_1 = L11_1.get
L12_1 = "Gold League"
L11_1 = L11_1(L12_1)
L10_1[3] = L11_1
L11_1 = L3_1.localized
L11_1 = L11_1.get
L12_1 = "Silver League"
L11_1 = L11_1(L12_1)
L10_1[4] = L11_1
L11_1 = L3_1.localized
L11_1 = L11_1.get
L12_1 = "Bronze League"
L11_1 = L11_1(L12_1)
L10_1[5] = L11_1
L11_1 = L3_1.localized
L11_1 = L11_1.get
L12_1 = "Wood League"
L11_1 = L11_1(L12_1)
L10_1[6] = L11_1

function L11_1(A0_2)
  local L1_2
  L1_2 = L10_1
  L1_2 = L1_2[A0_2]
  return L1_2
end

L0_1.getLeagueNameText = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == 1 then
    L1_2 = L9_1
    return L1_2
  elseif 1 < A0_2 and A0_2 <= 5 then
    L1_2 = L7_1
    L2_2 = L0_1
    L2_2 = L2_2.getLeagueRequiredRating
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = L8_1
    L1_2 = L1_2 .. L2_2 .. L3_2
    return L1_2
  else
    L1_2 = nil
    return L1_2
  end
end

L0_1.getLeagueAdvancementText = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L4_1
  L2_2()
  L2_2 = L1_1
  L2_2 = L2_2.leaguePrizes
  if L2_2 and A0_2 and A1_2 then
    L2_2 = L1_1
    L2_2 = L2_2.leaguePrizes
    L3_2 = ""
    L4_2 = A0_2
    L3_2 = L3_2 .. L4_2
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2[A1_2]
    if L2_2 then
      L3_2 = #L2_2
      if 0 < L3_2 then
        L3_2 = L2_2[1]
        if A0_2 == 0 and A1_2 == 1 then
          L3_2 = L2_2[2]
        end
        if L3_2 then
          L4_2 = L3_2.amount
          return L4_2
        else
          L4_2 = nil
          return L4_2
        end
    end
    else
      L3_2 = nil
      return L3_2
    end
  else
    L2_2 = nil
    return L2_2
  end
end

L0_1.getLeagueRewardCount = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L4_1
  L2_2()
  L2_2 = L1_1
  L2_2 = L2_2.leaguePrizes
  if L2_2 and A0_2 and A1_2 then
    L2_2 = L1_1
    L2_2 = L2_2.leaguePrizes
    L3_2 = ""
    L4_2 = A0_2
    L3_2 = L3_2 .. L4_2
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2[A1_2]
    if L2_2 then
      L3_2 = #L2_2
      if 0 < L3_2 then
        L3_2 = L2_2[1]
        if A0_2 == 0 and A1_2 == 1 then
          L3_2 = L2_2[2]
        end
        if L3_2 then
          L4_2 = L3_2.type
          if L4_2 == "HARD_CURRENCY" then
            L4_2 = "images/gui/common/gem_small.png"
            return L4_2
        end
        else
          if L3_2 then
            L4_2 = L3_2.type
            if L4_2 == "SOFT_CURRENCY" then
              L4_2 = "images/gui/common/coin_small.png"
              return L4_2
          end
          else
            L4_2 = print
            L5_2 = "Prize list does not contain a valid first element"
            L4_2(L5_2)
            L4_2 = nil
            return L4_2
          end
        end
    end
    else
      L3_2 = print
      L4_2 = "Could not find prize list"
      L3_2(L4_2)
      L3_2 = nil
      return L3_2
    end
  else
    L2_2 = print
    L3_2 = "No valid config file, or input is wrong:"
    L4_2 = A0_2
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = nil
    return L2_2
  end
end

L0_1.getLeagueRewardIcon = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L4_1
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.leagueThresholds
  if L1_2 and A0_2 then
    L1_2 = L1_1
    L1_2 = L1_2.leagueThresholds
    L2_2 = ""
    L3_2 = A0_2
    L2_2 = L2_2 .. L3_2
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2[1]
    return L1_2
  else
    L1_2 = 0
    return L1_2
  end
end

L0_1.getLeagueRequiredRating = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L4_1
  L1_2()
  if A0_2 then
    L1_2 = L1_1
    L1_2 = L1_2.leagueDemotionPositionThresholds
    if L1_2 then
      L1_2 = L1_1
      L1_2 = L1_2.leagueDemotionRatingThresholds
      if L1_2 then
        L1_2 = L1_1
        L1_2 = L1_2.leagueDemotionType
        if L1_2 then
          L1_2 = L1_1
          L1_2 = L1_2.leagueDemotionType
          if L1_2 == "position" then
            L1_2 = L1_1
            L1_2 = L1_2.leagueDemotionPositionThresholds
            L2_2 = ""
            L3_2 = A0_2
            L2_2 = L2_2 .. L3_2
            L1_2 = L1_2[L2_2]
            L2_2 = L1_1
            L2_2 = L2_2.leagueDemotionType
            return L1_2, L2_2
          else
            L1_2 = L1_1
            L1_2 = L1_2.leagueDemotionType
            if L1_2 == "rating" then
              L1_2 = L1_1
              L1_2 = L1_2.leagueDemotionRatingThresholds
              L2_2 = ""
              L3_2 = A0_2
              L2_2 = L2_2 .. L3_2
              L1_2 = L1_2[L2_2]
              L2_2 = L1_1
              L2_2 = L2_2.leagueDemotionType
              return L1_2, L2_2
            end
          end
        end
      end
    end
  end
  L1_2 = 0
  L2_2 = "position"
  return L1_2, L2_2
end

L0_1.getLeagueDemotionThreshold = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L4_1
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.clanRewardTierRequirements
  if L1_2 and A0_2 then
    L1_2 = L1_1
    L1_2 = L1_2.clanRewardTierRequirements
    L1_2 = #L1_2
    L2_2 = 1
    L3_2 = -1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = tonumber
      L6_2 = L1_1
      L6_2 = L6_2.clanRewardTierRequirements
      L6_2 = L6_2[L4_2]
      L5_2 = L5_2(L6_2)
      if A0_2 >= L5_2 then
        L5_2 = print
        L6_2 = "Return CP requirement: "
        L7_2 = L1_1
        L7_2 = L7_2.clanRewardTierRequirements
        L7_2 = L7_2[L4_2]
        L6_2 = L6_2 .. L7_2
        L5_2(L6_2)
        L5_2 = L4_2
        L6_2 = L1_1
        L6_2 = L6_2.clanRewardTierRequirements
        L6_2 = L6_2[L4_2]
        return L5_2, L6_2
      end
    end
  end
  L1_2 = 1
  L2_2 = 0
  return L1_2, L2_2
end

L0_1.getAchievedClanRewardTierAndRequirement = L11_1

function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = L4_1
  L1_2()
  L1_2 = 0
  L2_2 = L1_1
  L2_2 = L2_2.clanRewardTierRequirements
  if L2_2 then
    L2_2 = L1_1
    L2_2 = L2_2.clanRewardTierRequirements
    L2_2 = #L2_2
    if A0_2 > L2_2 then
      L2_2 = 0
      return L2_2
    end
    if A0_2 < 1 then
      L2_2 = 0
      return L2_2
    end
    L2_2 = L1_1
    L2_2 = L2_2.clanRewardTierRequirements
    L1_2 = L2_2[A0_2]
  end
  return L1_2
end

L0_1.getNextClanPointRequirement = L11_1

function L11_1(A0_2)
  local L1_2
  L1_2 = L4_1
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.clanRewardSubGoalRewards
  if L1_2 then
    L1_2 = L1_1
    L1_2 = L1_2.clanRewardSubGoalRewards
    L1_2 = L1_2[A0_2]
    return L1_2
  end
  L1_2 = {}
  return L1_2
end

L0_1.getClanRewardStepData = L11_1

function L11_1(A0_2)
  local L1_2
  L1_2 = L4_1
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.clanRewardTierItemValue
  if L1_2 then
    L1_2 = L1_1
    L1_2 = L1_2.clanRewardTierItemValue
    L1_2 = L1_2[A0_2]
    return L1_2
  end
  L1_2 = nil
  return L1_2
end

L0_1.getClanRewardTierValue = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L1_2 = L1_2.getAchievedClanRewardTierAndRequirement
  L2_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = A0_2 - L2_2
  L4_2 = L0_1
  L4_2 = L4_2.getNextClanPointRequirement
  L5_2 = L1_2 + 1
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2 - L2_2
  L6_2 = L3_2 / L5_2
  return L6_2
end

L0_1.getPercentageComplete = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L0_1
  L2_2 = L2_2.getClanRewardStepData
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  L4_2 = {}
  L5_2 = 0.33
  L6_2 = 0.66
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L5_2 = 1
  L6_2 = #L2_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L2_2[L8_2]
    if L9_2 then
      L9_2 = L4_2[L8_2]
      if L9_2 then
        L9_2 = L4_2[L8_2]
        if A1_2 >= L9_2 then
          L9_2 = tonumber
          L10_2 = L2_2[L8_2]
          L9_2 = L9_2(L10_2)
          L3_2 = L3_2 + L9_2
        end
      end
    end
  end
  return L3_2
end

L0_1.getClanRewardSubRewardAchieved = L11_1

function L11_1(A0_2)
  local L1_2
  L1_2 = L4_1
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.clanRewards
  if L1_2 then
    L1_2 = L1_1
    L1_2 = L1_2.clanRewards
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.amount
    return L1_2
  end
  L1_2 = 0
  return L1_2
end

L0_1.getClanRewardCoinReward = L11_1
return L0_1
