local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1, L74_1, L75_1, L76_1, L77_1, L78_1, L79_1, L80_1, L81_1, L82_1, L83_1, L84_1, L85_1, L86_1, L87_1, L88_1, L89_1
L0_1 = require
L1_1 = "sqlite3"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "crypto"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "json"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "lua.iap.base64"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "lua.modules.dropdownHelper"
L5_1 = L5_1(L6_1)
L6_1 = {}
L7_1 = {}
L6_1.friends = L7_1
L7_1 = {}
L6_1.friendRequests = L7_1
L7_1 = {}
L8_1 = {}
L7_1[1] = L8_1
L8_1 = {}
L7_1[2] = L8_1
L8_1 = {}
L7_1[3] = L8_1
L8_1 = {}
L7_1[4] = L8_1
L8_1 = {}
L7_1[5] = L8_1
L8_1 = {}
L7_1[6] = L8_1
L8_1 = {}
L7_1[7] = L8_1
L6_1.items = L7_1
L6_1.money = nil
L2_1.databaseData = L6_1
L6_1 = system
L6_1 = L6_1.pathForFile
L7_1 = "data.sqlite3"
L8_1 = system
L8_1 = L8_1.DocumentsDirectory
L6_1 = L6_1(L7_1, L8_1)
L7_1 = nil
L8_1 = {}

function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L7_1 = L0_2
  L0_2 = [[
CREATE TABLE IF NOT EXISTS user_settings (id INTEGER PRIMARY KEY, username VARCHAR(15), usernameCode INTEGER);
                            CREATE TABLE IF NOT EXISTS playerIdToken (id INTEGER PRIMARY KEY, playerId VARCHAR(64), token VARCHAR(64));
                            CREATE TABLE IF NOT EXISTS user_avatar (id INTEGER PRIMARY KEY, avatar INTEGER, skin INTEGER, hat INTEGER, face INTEGER, neck INTEGER, item INTEGER, boots INTEGER);
                            CREATE TABLE IF NOT EXISTS storedReceipts (id INTEGER PRIMARY KEY, encodedTransaction TEXT, hash VARCHAR(32) UNIQUE, storeType INTEGER);
                            CREATE TABLE IF NOT EXISTS iap_confirm (id INTEGER PRIMARY KEY, value INTEGER);
                            CREATE TABLE IF NOT EXISTS settings (id INTEGER PRIMARY KEY, sound INTEGER);
                            CREATE TABLE IF NOT EXISTS chat (id INTEGER PRIMARY KEY, isOn INTEGER);
                            CREATE TABLE IF NOT EXISTS deviceSync (id INTEGER PRIMARY KEY, value INTEGER);
                            CREATE TABLE IF NOT EXISTS marketItemId (id INTEGER PRIMARY KEY, value INTEGER);
                            CREATE TABLE IF NOT EXISTS facebook (id INTEGER PRIMARY KEY, facebookId INTEGER);
                            CREATE TABLE IF NOT EXISTS adTime (id INTEGER PRIMARY KEY, value INTEGER);
                            CREATE TABLE IF NOT EXISTS rateTime (id INTEGER PRIMARY KEY, value INTEGER);
                            CREATE TABLE IF NOT EXISTS marketNotification (id INTEGER PRIMARY KEY, version INTEGER, number INTEGER);
                            CREATE TABLE IF NOT EXISTS push_enabled (id INTEGER PRIMARY KEY, gameInvite INTEGER, friendRequest INTEGER, general INTEGER);    
                            CREATE TABLE IF NOT EXISTS onboarding (part INTEGER PRIMARY KEY, done INTEGER default 0);
                            CREATE TABLE IF NOT EXISTS onboardingIntro (id INTEGER PRIMARY KEY, done INTEGER default 0);      
                            CREATE TABLE IF NOT EXISTS onboardingMoney (id INTEGER PRIMARY KEY, done INTEGER default 0); 
                            CREATE TABLE IF NOT EXISTS starterPackLastShown (id INTEGER PRIMARY KEY, timesShown INTEGER default 0);
                            CREATE TABLE IF NOT EXISTS adrallyUse (id INTEGER PRIMARY KEY, state INTEGER default 0);   
                            CREATE TABLE IF NOT EXISTS localLeagueData (id INTEGER PRIMARY KEY, state INTEGER default 0);                   
                            CREATE TABLE IF NOT EXISTS lastSeenVersion (id INTEGER PRIMARY KEY, build INTEGER default 0);                   
                            CREATE TABLE IF NOT EXISTS bonusVideoState (id INTEGER PRIMARY KEY, value INTEGER default 0);  
                            CREATE TABLE IF NOT EXISTS infoHelpText (id INTEGER PRIMARY KEY, market INTEGER default 1);                   
                            CREATE TABLE IF NOT EXISTS accountCreationPrompt (id INTEGER PRIMARY KEY, value INTEGER default 0);
                            CREATE TABLE IF NOT EXISTS dropdownSettings (id INTEGER PRIMARY KEY, value INTEGER default 1);
                            CREATE TABLE IF NOT EXISTS rewardedChests (id INTEGER PRIMARY KEY, seen INTEGER default 0);
                            CREATE TABLE IF NOT EXISTS googlePlayServicesPlayer(id INTEGER PRIMARY KEY, googleId VARCHAR(50));
                            CREATE TABLE IF NOT EXISTS crossPromotion (id INTEGER PRIMARY KEY, seen INTEGER default 0);
                            CREATE TABLE IF NOT EXISTS dailyChallengePrompt (id INTEGER PRIMARY KEY, timeShown INTEGER default 0, timeRemaining INTEGER default 0);
                            CREATE TABLE IF NOT EXISTS currentAdRewardData (id INTEGER PRIMARY KEY, type INTEGER default 0, value1 INTEGER default 0, value2 INTEGER default 0);
                            CREATE TABLE IF NOT EXISTS clanInformationPrompt (id INTEGER PRIMARY KEY, value INTEGER default 0);
                            CREATE TABLE IF NOT EXISTS recordingSettings (id INTEGER PRIMARY KEY, value INTEGER default 0);
                            CREATE TABLE IF NOT EXISTS micSettings (id INTEGER PRIMARY KEY, value INTEGER default 0);
                            CREATE TABLE IF NOT EXISTS gameServiceState (id INTEGER PRIMARY KEY, value INTEGER default 0);
                            CREATE TABLE IF NOT EXISTS clanPushNotification (id INTEGER PRIMARY KEY, pushTimestamp INTEGER default 0);
    ]]
  L1_2 = "ALTER TABLE user_avatar ADD COLUMN backwear INTEGER default 0;"
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = L0_2
  L2_2(L3_2, L4_2)
  L2_2 = 0
  
  function L3_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    if A0_3 == "userVersion" then
      L4_3 = tonumber
      L5_3 = A2_3[1]
      L4_3 = L4_3(L5_3)
      L2_2 = L4_3
    elseif A0_3 == "alterDatabase" then
      L4_3 = print
      L5_3 = "Alter table: "
      L6_3 = A1_3
      L5_3 = L5_3 .. L6_3
      L4_3(L5_3)
      L4_3 = 1
      L5_3 = A1_3
      L6_3 = 1
      for L7_3 = L4_3, L5_3, L6_3 do
        L8_3 = print
        L9_3 = A3_3[L7_3]
        L10_3 = " "
        L11_3 = A2_3[L7_3]
        L9_3 = L9_3 .. L10_3 .. L11_3
        L8_3(L9_3)
      end
    end
    L4_3 = 0
    return L4_3
  end
  
  L4_2 = print
  L5_2 = L0_1
  L5_2 = L5_2.version
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = L7_1
  L5_2 = L4_2
  L4_2 = L4_2.exec
  L6_2 = "PRAGMA user_version;"
  L7_2 = L3_2
  L8_2 = "userVersion"
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = print
  L6_2 = "User Version: "
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  if L2_2 == 0 then
    L5_2 = print
    L6_2 = "Run Version Update to version 1"
    L5_2(L6_2)
    L5_2 = L7_1
    L6_2 = L5_2
    L5_2 = L5_2.exec
    L7_2 = L1_2
    L8_2 = L3_2
    L9_2 = "alterDatabase"
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = print
    L7_2 = "Update Status: "
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2(L7_2)
    if L5_2 == 0 then
      L6_2 = L7_1
      L7_2 = L6_2
      L6_2 = L6_2.exec
      L8_2 = "PRAGMA user_version = 1;"
      L6_2 = L6_2(L7_2, L8_2)
      L2_2 = 1
      L7_2 = print
      L8_2 = "Update userversion Status: "
      L9_2 = L6_2
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
  end
  L5_2 = print
  L6_2 = "After update. User Version: "
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L5_2 = L7_1
  L6_2 = L5_2
  L5_2 = L5_2.close
  L5_2(L6_2)
  L5_2 = nil
  L7_1 = L5_2
end

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L8_1
  L2_2 = L2_2.getPlayerInformation
  L2_2 = L2_2()
  if L2_2 then
    L3_2 = L8_1
    L3_2 = L3_2.setPlayerInformation
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = L2_2.playerId
    L7_2 = L2_2.token
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end

L8_1.updatePlayerInfo = L10_1

function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = L0_1
  L4_2 = L4_2.open
  L5_2 = L6_1
  L4_2 = L4_2(L5_2)
  L7_1 = L4_2
  L4_2 = L7_1
  L5_2 = L4_2
  L4_2 = L4_2.exec
  L6_2 = "INSERT OR REPLACE INTO user_settings VALUES(1, \""
  L7_2 = A0_2
  L8_2 = "\", "
  L9_2 = A1_2
  L10_2 = ");"
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L4_2(L5_2, L6_2)
  if A3_2 and A2_2 then
    L4_2 = L7_1
    L5_2 = L4_2
    L4_2 = L4_2.exec
    L6_2 = "INSERT OR REPLACE INTO playerIdToken VALUES(1, \""
    L7_2 = A2_2
    L8_2 = "\", \""
    L9_2 = A3_2
    L10_2 = "\");"
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = L7_1
  L5_2 = L4_2
  L4_2 = L4_2.close
  L4_2(L5_2)
  L4_2 = nil
  L7_1 = L4_2
end

L8_1.setPlayerInformation = L10_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L0_1
  L2_2 = L2_2.open
  L3_2 = L6_1
  L2_2 = L2_2(L3_2)
  L7_1 = L2_2
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "INSERT OR REPLACE INTO playerIdToken VALUES(1, \""
  L5_2 = A0_2
  L6_2 = "\", \""
  L7_2 = A1_2
  L8_2 = "\");"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.close
  L2_2(L3_2)
  L2_2 = nil
  L7_1 = L2_2
end

L8_1.setPlayerIdAndToken = L11_1

function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L7_1 = L0_2
  L0_2 = {}
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.nrows
  L3_2 = "SELECT username, usernameCode FROM user_settings;"
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  for L4_2 in L1_2, L2_2, L3_2 do
    L5_2 = L4_2.usernameCode
    L0_2.usernameCode = L5_2
    L5_2 = L4_2.username
    L0_2.username = L5_2
  end
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.nrows
  L3_2 = "SELECT playerId, token FROM playerIdToken;"
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  for L4_2 in L1_2, L2_2, L3_2 do
    L5_2 = L4_2.playerId
    L0_2.playerId = L5_2
    L5_2 = L4_2.token
    L0_2.token = L5_2
  end
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
  L1_2 = L0_2.token
  if not L1_2 then
    L1_2 = print
    L2_2 = "WARNING: NO TOKEN"
    L1_2(L2_2)
    L1_2 = nil
    return L1_2
  end
  return L0_2
end

L8_1.getPlayerInformation = L12_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  if A1_2 then
    L2_2 = L2_1
    L2_2 = L2_2.monsterConverter
    L2_2 = L2_2.fromServerFormat
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    A0_2 = L2_2
  end
  L2_2 = L2_1
  L2_2 = L2_2.debugger
  L2_2 = L2_2.debugTable
  L3_2 = "database"
  L4_2 = "setMonsterData :"
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = nil
  if A0_2 == nil or A0_2 == "null" then
    L2_2 = "INSERT OR REPLACE INTO user_avatar VALUES(1,101,0,0,0,0,0,0,0);"
  else
    L3_2 = "INSERT OR REPLACE INTO user_avatar VALUES(1,"
    L4_2 = A0_2[1]
    L5_2 = ", "
    L6_2 = A0_2[2]
    L7_2 = ", "
    L8_2 = A0_2[3]
    L9_2 = ", "
    L10_2 = A0_2[4]
    L11_2 = ", "
    L12_2 = A0_2[5]
    L13_2 = ", "
    L14_2 = A0_2[6]
    L15_2 = ", "
    L16_2 = A0_2[7]
    L17_2 = ", "
    L18_2 = A0_2[8]
    if not L18_2 then
      L18_2 = 0
    end
    L19_2 = ");"
    L2_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2
  end
  L3_2 = L0_1
  L3_2 = L3_2.open
  L4_2 = L6_1
  L3_2 = L3_2(L4_2)
  L7_1 = L3_2
  L3_2 = L7_1
  L4_2 = L3_2
  L3_2 = L3_2.exec
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = L7_1
  L4_2 = L3_2
  L3_2 = L3_2.close
  L3_2(L4_2)
  L3_2 = nil
  L7_1 = L3_2
  L3_2 = L2_1
  L3_2 = L3_2.databaseData
  L3_2.avatarData = A0_2
end

L8_1.setAvatarData = L13_1

function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.avatarData
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.avatarData
    return L0_2
  else
    L0_2 = L0_1
    L0_2 = L0_2.open
    L1_2 = L6_1
    L0_2 = L0_2(L1_2)
    L7_1 = L0_2
    L0_2 = {}
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.nrows
    L3_2 = "SELECT avatar, skin, hat, face, neck, item, boots, backwear FROM user_avatar;"
    L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
    for L4_2 in L1_2, L2_2, L3_2 do
      L5_2 = {}
      L6_2 = L4_2.avatar
      L7_2 = L4_2.skin
      L8_2 = L4_2.hat
      L9_2 = L4_2.face
      L10_2 = L4_2.neck
      L11_2 = L4_2.item
      L12_2 = L4_2.boots
      L13_2 = L4_2.backwear
      L5_2[1] = L6_2
      L5_2[2] = L7_2
      L5_2[3] = L8_2
      L5_2[4] = L9_2
      L5_2[5] = L10_2
      L5_2[6] = L11_2
      L5_2[7] = L12_2
      L5_2[8] = L13_2
      L0_2 = L5_2
    end
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L1_2.avatarData = L0_2
    return L0_2
  end
end

L8_1.getAvatarData = L14_1

function L15_1(A0_2)
  local L1_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2.powerupSkin = A0_2
end

L8_1.setPowerupSkin = L15_1

function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.powerupSkin
  if L1_2 then
    L1_2 = true
    L2_2 = 1
    L3_2 = L2_1
    L3_2 = L3_2.databaseData
    L3_2 = L3_2.powerupSkin
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L2_1
      L6_2 = L6_2.storeConfig
      L6_2 = L6_2.getItemCategory
      L7_2 = A0_2
      L6_2 = L6_2(L7_2)
      L7_2 = L2_1
      L7_2 = L7_2.storeConfig
      L7_2 = L7_2.getItemCategory
      L8_2 = L2_1
      L8_2 = L8_2.databaseData
      L8_2 = L8_2.powerupSkin
      L8_2 = L8_2[L5_2]
      L7_2 = L7_2(L8_2)
      if L6_2 == L7_2 then
        L6_2 = L2_1
        L6_2 = L6_2.databaseData
        L6_2 = L6_2.powerupSkin
        L6_2 = L6_2[L5_2]
        if A0_2 == L6_2 then
          L6_2 = false
          return L6_2
        end
        L1_2 = false
        L6_2 = L2_1
        L6_2 = L6_2.databaseData
        L6_2 = L6_2.powerupSkin
        L6_2[L5_2] = A0_2
      end
    end
    if L1_2 then
      L2_2 = L2_1
      L2_2 = L2_2.databaseData
      L2_2 = L2_2.powerupSkin
      L3_2 = L2_1
      L3_2 = L3_2.databaseData
      L3_2 = L3_2.powerupSkin
      L3_2 = #L3_2
      L3_2 = L3_2 + 1
      L2_2[L3_2] = A0_2
    end
  else
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L2_2 = {}
    L3_2 = A0_2
    L2_2[1] = L3_2
    L1_2.powerupSkin = L2_2
  end
  L1_2 = true
  return L1_2
end

L8_1.changePowerupSkin = L15_1

function L15_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.powerupSkin
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.powerupSkin
    return L0_2
  end
  L0_2 = {}
  return L0_2
end

L8_1.getPowerupSkin = L15_1

function L15_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.gameInvites
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.gameInvites
    L0_2 = #L0_2
    return L0_2
  end
  L0_2 = 0
  return L0_2
end

L8_1.getNumberOfGameInvites = L15_1

function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.gameInvites
  if L0_2 then
    L0_2 = 1
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L1_2 = L1_2.gameInvites
    L1_2 = #L1_2
    L2_2 = 1
    for L3_2 = L0_2, L1_2, L2_2 do
      L4_2 = os
      L4_2 = L4_2.time
      L4_2 = L4_2()
      L5_2 = L2_1
      L5_2 = L5_2.databaseData
      L5_2 = L5_2.gameInvites
      L5_2 = L5_2[L3_2]
      L5_2 = L5_2.addTime
      L5_2 = L5_2 + 100
      if L4_2 > L5_2 then
        L4_2 = table
        L4_2 = L4_2.remove
        L5_2 = L2_1
        L5_2 = L5_2.databaseData
        L5_2 = L5_2.gameInvites
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
        L4_2 = L16_1
        L4_2()
        return
      end
    end
  end
end

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.gameInvites
  if not L1_2 then
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L2_2 = {}
    L1_2.gameInvites = L2_2
  end
  L1_2 = 1
  L2_2 = L2_1
  L2_2 = L2_2.databaseData
  L2_2 = L2_2.gameInvites
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L2_1
    L5_2 = L5_2.databaseData
    L5_2 = L5_2.gameInvites
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.p
    L6_2 = A0_2.p
    if L5_2 == L6_2 then
      L5_2 = L2_1
      L5_2 = L5_2.databaseData
      L5_2 = L5_2.gameInvites
      L5_2[L4_2] = A0_2
      L5_2 = L2_1
      L5_2 = L5_2.databaseData
      L5_2 = L5_2.gameInvites
      L5_2 = L5_2[L4_2]
      L6_2 = os
      L6_2 = L6_2.time
      L6_2 = L6_2()
      L5_2.addTime = L6_2
      return
    end
  end
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.gameInvites
  L2_2 = L2_1
  L2_2 = L2_2.databaseData
  L2_2 = L2_2.gameInvites
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L1_2[L2_2] = A0_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.gameInvites
  L2_2 = L2_1
  L2_2 = L2_2.databaseData
  L2_2 = L2_2.gameInvites
  L2_2 = #L2_2
  L1_2 = L1_2[L2_2]
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L1_2.addTime = L2_2
  L1_2 = L16_1
  L1_2()
end

L8_1.addNewGameInvite = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.gameInvites
  if L1_2 then
    L1_2 = 1
    L2_2 = L2_1
    L2_2 = L2_2.databaseData
    L2_2 = L2_2.gameInvites
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = L2_1
      L5_2 = L5_2.databaseData
      L5_2 = L5_2.gameInvites
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.p
      if A0_2 == L5_2 then
        L5_2 = L2_1
        L5_2 = L5_2.databaseData
        L5_2 = L5_2.gameInvites
        L5_2 = L5_2[L4_2]
        return L5_2
      end
    end
  end
  L1_2 = nil
  return L1_2
end

L8_1.getGameInvite = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.gameInvites
  if L1_2 then
    L1_2 = nil
    L2_2 = 1
    L3_2 = L2_1
    L3_2 = L3_2.databaseData
    L3_2 = L3_2.gameInvites
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L2_1
      L6_2 = L6_2.databaseData
      L6_2 = L6_2.gameInvites
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.p
      if A0_2 == L6_2 then
        L1_2 = L5_2
      end
    end
    if L1_2 then
      L2_2 = table
      L2_2 = L2_2.remove
      L3_2 = L2_1
      L3_2 = L3_2.databaseData
      L3_2 = L3_2.gameInvites
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
end

L8_1.removeGameInvite = L17_1

function L17_1()
  local L0_2, L1_2
  L0_2 = L16_1
  L0_2()
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.gameInvites
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.gameInvites
    return L0_2
  else
    L0_2 = {}
    return L0_2
  end
end

L8_1.getGameInvites = L17_1

function L17_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.addNewMysteryBoxs
  if L1_2 then
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L1_2 = L1_2.addNewMysteryBoxs
    L2_2 = L2_1
    L2_2 = L2_2.databaseData
    L2_2 = L2_2.addNewMysteryBoxs
    L2_2 = #L2_2
    L2_2 = L2_2 + 1
    L1_2[L2_2] = A0_2
  else
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L2_2 = {}
    L1_2.addNewMysteryBoxs = L2_2
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L1_2 = L1_2.addNewMysteryBoxs
    L1_2[1] = A0_2
  end
end

L8_1.addNewMysteryBox = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.addNewMysteryBoxs
  if L1_2 then
    L1_2 = 1
    L2_2 = L2_1
    L2_2 = L2_2.databaseData
    L2_2 = L2_2.addNewMysteryBoxs
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = L2_1
      L5_2 = L5_2.databaseData
      L5_2 = L5_2.addNewMysteryBoxs
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.i
      if L5_2 == A0_2 then
        L5_2 = table
        L5_2 = L5_2.remove
        L6_2 = L2_1
        L6_2 = L6_2.databaseData
        L6_2 = L6_2.addNewMysteryBoxs
        L7_2 = L4_2
        L5_2(L6_2, L7_2)
        return
      end
    end
  end
end

L8_1.removeMysteryBox = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L2_2 = {}
  L1_2.addNewMysteryBoxs = L2_2
  if A0_2 then
    L1_2 = 1
    L2_2 = #A0_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = L2_1
      L5_2 = L5_2.databaseData
      L5_2 = L5_2.addNewMysteryBoxs
      L6_2 = A0_2[L4_2]
      L5_2[L4_2] = L6_2
    end
  end
end

L8_1.setMysteryBoxes = L17_1

function L17_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.addNewMysteryBoxs
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.addNewMysteryBoxs
    return L0_2
  end
  L0_2 = {}
  return L0_2
end

L8_1.getMysteryBoxes = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.clanInvites
  if not L1_2 then
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L2_2 = {}
    L1_2.clanInvites = L2_2
  end
  L1_2 = 1
  L2_2 = L2_1
  L2_2 = L2_2.databaseData
  L2_2 = L2_2.clanInvites
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L2_1
    L5_2 = L5_2.databaseData
    L5_2 = L5_2.clanInvites
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.c
    L5_2 = L5_2._id
    L6_2 = A0_2.c
    L6_2 = L6_2._id
    if L5_2 == L6_2 then
      L5_2 = L2_1
      L5_2 = L5_2.databaseData
      L5_2 = L5_2.clanInvites
      L5_2[L4_2] = A0_2
      L5_2 = false
      return L5_2
    end
  end
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.clanInvites
  L2_2 = L2_1
  L2_2 = L2_2.databaseData
  L2_2 = L2_2.clanInvites
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L1_2[L2_2] = A0_2
  L1_2 = true
  return L1_2
end

L8_1.addNewClanInvite = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.clanInvites
  if L1_2 then
    L1_2 = nil
    L2_2 = 1
    L3_2 = L2_1
    L3_2 = L3_2.databaseData
    L3_2 = L3_2.clanInvites
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L2_1
      L6_2 = L6_2.databaseData
      L6_2 = L6_2.clanInvites
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.p
      L6_2 = L6_2.p
      if A0_2 == L6_2 then
        L1_2 = L5_2
      end
    end
    if L1_2 then
      L2_2 = table
      L2_2 = L2_2.remove
      L3_2 = L2_1
      L3_2 = L3_2.databaseData
      L3_2 = L3_2.clanInvites
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
end

L8_1.removeClanInvite = L17_1

function L17_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L1_2 = {}
  L0_2.clanInvites = L1_2
end

L8_1.removeAllClanInvites = L17_1

function L17_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.clanInvites
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.clanInvites
    return L0_2
  else
    L0_2 = {}
    return L0_2
  end
end

L8_1.getClanInvites = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    L6_2.n2 = nil
    L6_2 = L5_2 + 1
    L7_2 = #A0_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = A0_2[L5_2]
      L10_2 = L10_2.n
      L11_2 = A0_2[L9_2]
      L11_2 = L11_2.n
      if L10_2 == L11_2 then
        L10_2 = #L1_2
        L10_2 = L10_2 + 1
        L1_2[L10_2] = L5_2
        L10_2 = #L1_2
        L10_2 = L10_2 + 1
        L1_2[L10_2] = L9_2
      end
    end
  end
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L6_2 = A0_2[L6_2]
    L7_2 = L1_2[L5_2]
    L7_2 = A0_2[L7_2]
    L7_2 = L7_2.n
    L8_2 = "#"
    L9_2 = L1_2[L5_2]
    L9_2 = A0_2[L9_2]
    L9_2 = L9_2.t
    L7_2 = L7_2 .. L8_2 .. L9_2
    L6_2.n2 = L7_2
  end
end

function L18_1()
  local L0_2, L1_2
  L0_2 = L17_1
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.friends
  L0_2(L1_2)
end

function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = 1
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.friends
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L8_1
    L4_2 = L4_2.removeFriendRequest
    L5_2 = L2_1
    L5_2 = L5_2.databaseData
    L5_2 = L5_2.friends
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.p
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = L2_1
      L4_2 = L4_2.comm
      L4_2 = L4_2.deleteFriendRequest
      L5_2 = L2_1
      L5_2 = L5_2.databaseData
      L5_2 = L5_2.friends
      L5_2 = L5_2[L3_2]
      L5_2 = L5_2.p
      L4_2(L5_2)
    end
  end
end

function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.friends
  if not L1_2 then
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L2_2 = {}
    L1_2.friends = L2_2
  end
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.friends
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.p
    L7_2 = A0_2.p
    if L6_2 == L7_2 then
      L6_2 = L8_1
      L6_2 = L6_2.removeFriendRequest
      L7_2 = A0_2.p
      L6_2(L7_2)
      return
    end
  end
  L2_2 = #L1_2
  L2_2 = L2_2 + 1
  L1_2[L2_2] = A0_2
  L2_2 = L18_1
  L2_2()
  L2_2 = L8_1
  L2_2 = L2_2.removeFriendRequest
  L3_2 = A0_2.p
  L2_2(L3_2)
end

L8_1.addNewFriend = L20_1

function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L2_2 = system
  L2_2 = L2_2.getTimer
  L2_2 = L2_2()
  L2_2 = L2_2 / 60000
  L1_2.friendTime = L2_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2.friends = A0_2
  L1_2 = L18_1
  L1_2()
end

L8_1.setFriends = L20_1

function L20_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.friendTime
  if L0_2 then
    L0_2 = system
    L0_2 = L0_2.getTimer
    L0_2 = L0_2()
    L0_2 = L0_2 / 60000
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L1_2 = L1_2.friendTime
    L0_2 = L0_2 - L1_2
    return L0_2
  end
  L0_2 = system
  L0_2 = L0_2.getTimer
  L0_2 = L0_2()
  L0_2 = L0_2 / 60000
  return L0_2
end

L8_1.getFriendTime = L20_1

function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.friends
  if L1_2 then
    L1_2 = nil
    L2_2 = 1
    L3_2 = L2_1
    L3_2 = L3_2.databaseData
    L3_2 = L3_2.friends
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L2_1
      L6_2 = L6_2.databaseData
      L6_2 = L6_2.friends
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.p
      if A0_2 == L6_2 then
        L1_2 = L5_2
      end
    end
    if L1_2 then
      L2_2 = table
      L2_2 = L2_2.remove
      L3_2 = L2_1
      L3_2 = L3_2.databaseData
      L3_2 = L3_2.friends
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
  L1_2 = L18_1
  L1_2()
end

L8_1.removeFriend = L20_1

function L20_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.friends
  if L0_2 then
    L0_2 = L19_1
    L0_2()
    L0_2 = L2_1
    L0_2 = L0_2.debugger
    L0_2 = L0_2.debugTable
    L1_2 = "database"
    L2_2 = "getFriends :"
    L3_2 = L2_1
    L3_2 = L3_2.databaseData
    L3_2 = L3_2.friends
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.friends
    return L0_2
  else
    L0_2 = {}
    return L0_2
  end
end

L8_1.getFriends = L20_1

function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.friends
  if L1_2 then
    L1_2 = 1
    L2_2 = L2_1
    L2_2 = L2_2.databaseData
    L2_2 = L2_2.friends
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = L2_1
      L5_2 = L5_2.databaseData
      L5_2 = L5_2.friends
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.p
      if A0_2 == L5_2 then
        L5_2 = true
        return L5_2
      end
    end
  end
  L1_2 = false
  return L1_2
end

L8_1.isFriend = L21_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.friends
  if L1_2 then
    L1_2 = 1
    L2_2 = L2_1
    L2_2 = L2_2.databaseData
    L2_2 = L2_2.friends
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = L2_1
      L5_2 = L5_2.databaseData
      L5_2 = L5_2.friends
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.p
      if A0_2 == L5_2 then
        L5_2 = L2_1
        L5_2 = L5_2.databaseData
        L5_2 = L5_2.friends
        L5_2 = L5_2[L4_2]
        return L5_2
      end
    end
  end
  L1_2 = {}
  return L1_2
end

L8_1.getFriend = L22_1

function L23_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = L2_1
  L2_2 = L2_2.databaseData
  L2_2 = L2_2.friendRequests
  L2_2[A1_2] = A0_2
end

L8_1.addFriendRequest = L23_1

function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = 0
  L1_2 = pairs
  L2_2 = L2_1
  L2_2 = L2_2.databaseData
  L2_2 = L2_2.friendRequests
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L0_2 = L0_2 + 1
  end
  return L0_2
end

L8_1.getNumberOfFriendRequests = L24_1

function L25_1(A0_2)
  local L1_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2.friendRequests = A0_2
end

L8_1.setFriendRequests = L25_1

function L25_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.friendRequests
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.friendRequests
    return L0_2
  else
    L0_2 = {}
    return L0_2
  end
end

L8_1.getFriendRequests = L25_1

function L25_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L1_2 = {}
  L0_2.friendRequests = L1_2
end

L8_1.removeAllFriendRequests = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.friendRequests
  if L1_2 then
    L1_2 = 1
    L2_2 = L2_1
    L2_2 = L2_2.databaseData
    L2_2 = L2_2.friendRequests
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = L2_1
      L5_2 = L5_2.databaseData
      L5_2 = L5_2.friendRequests
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.p
      if A0_2 == L5_2 then
        L5_2 = table
        L5_2 = L5_2.remove
        L6_2 = L2_1
        L6_2 = L6_2.databaseData
        L6_2 = L6_2.friendRequests
        L7_2 = L4_2
        return L5_2(L6_2, L7_2)
      end
    end
  end
  L1_2 = nil
  return L1_2
end

L8_1.removeFriendRequest = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.friendRequests
  if L1_2 then
    L1_2 = 1
    L2_2 = L2_1
    L2_2 = L2_2.databaseData
    L2_2 = L2_2.friendRequests
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2.p
      L6_2 = L2_1
      L6_2 = L6_2.databaseData
      L6_2 = L6_2.friendRequests
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.p
      if L5_2 == L6_2 then
        L5_2 = false
        return L5_2
      end
    end
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L1_2 = L1_2.friendRequests
    L2_2 = L2_1
    L2_2 = L2_2.databaseData
    L2_2 = L2_2.friendRequests
    L2_2 = #L2_2
    L2_2 = L2_2 + 1
    L1_2[L2_2] = A0_2
  else
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L2_2 = {}
    L1_2.friendRequests = L2_2
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L1_2 = L1_2.friendRequests
    L2_2 = L2_1
    L2_2 = L2_2.databaseData
    L2_2 = L2_2.friendRequests
    L2_2 = #L2_2
    L2_2 = L2_2 + 1
    L1_2[L2_2] = A0_2
  end
  L1_2 = true
  return L1_2
end

L8_1.addNewFriendRequest = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = L2_1
  L3_2 = L3_2.databaseData
  L3_2 = L3_2.friends
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L2_1
    L6_2 = L6_2.databaseData
    L6_2 = L6_2.friends
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.p
    if A0_2 == L6_2 then
      L6_2 = L2_1
      L6_2 = L6_2.databaseData
      L6_2 = L6_2.friends
      L6_2 = L6_2[L5_2]
      L6_2.state = A1_2
    end
  end
end

L8_1.changeOnlineState = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = false
  L2_2 = 0
  L3_2 = L2_1
  L3_2 = L3_2.databaseData
  if L3_2 then
    L3_2 = L2_1
    L3_2 = L3_2.databaseData
    L3_2 = L3_2.friends
    if L3_2 then
      L3_2 = 1
      L4_2 = #A0_2
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = 1
        L8_2 = L2_1
        L8_2 = L8_2.databaseData
        L8_2 = L8_2.friends
        L8_2 = #L8_2
        L9_2 = 1
        for L10_2 = L7_2, L8_2, L9_2 do
          L11_2 = A0_2[L6_2]
          L11_2 = L11_2.p
          L12_2 = L2_1
          L12_2 = L12_2.databaseData
          L12_2 = L12_2.friends
          L12_2 = L12_2[L10_2]
          L12_2 = L12_2.p
          if L11_2 == L12_2 then
            L11_2 = L2_1
            L11_2 = L11_2.databaseData
            L11_2 = L11_2.friends
            L11_2 = L11_2[L10_2]
            L12_2 = A0_2[L6_2]
            L12_2 = L12_2.s
            L11_2.state = L12_2
            L1_2 = true
            L2_2 = L2_2 + 1
          end
        end
      end
    end
  end
  if not L1_2 then
    L3_2 = #A0_2
    if 0 < L3_2 then
      L3_2 = A0_2[1]
      L3_2 = L3_2.delay
      if L3_2 == nil then
        function L3_2()
          local L0_3, L1_3
          
          L0_3 = A0_2
          if L0_3 then
            L0_3 = A0_2
            L0_3 = L0_3[1]
            if L0_3 then
              L0_3 = A0_2
              L0_3 = L0_3[1]
              L0_3.delay = true
              L0_3 = L8_1
              L0_3 = L0_3.setAllOnlineFriendsState
              L1_3 = A0_2
              L0_3(L1_3)
            end
          end
        end
        
        L4_2 = timer
        L4_2 = L4_2.performWithDelay
        L5_2 = 2000
        L6_2 = L3_2
        L7_2 = 1
        L4_2(L5_2, L6_2, L7_2)
      end
  end
  elseif 0 < L2_2 then
    L3_2 = L2_1
    L3_2 = L3_2.showFriendsOnline
    if L3_2 then
      L3_2 = L2_1
      L3_2.showFriendsOnline = false
      L3_2 = L5_1
      L3_2 = L3_2.showOnlineFriend
      L4_2 = L2_2
      L3_2(L4_2)
    end
  end
end

L8_1.setAllOnlineFriendsState = L25_1

function L25_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2.clanMembers = A0_2
  L1_2 = L17_1
  L2_2 = A0_2
  L1_2(L2_2)
end

L8_1.setClanMembers = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.clanMembers
  if not L1_2 then
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L2_2 = {}
    L1_2.clanMembers = L2_2
  end
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.clanMembers
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.p
    L7_2 = L1_2[L5_2]
    L7_2 = L7_2.p
    if L6_2 == L7_2 then
      L6_2 = print
      L7_2 = "Warning: Trying to add member that is already in list."
      L6_2(L7_2)
      return
    end
  end
  L2_2 = #L1_2
  L2_2 = L2_2 + 1
  L1_2[L2_2] = A0_2
  L2_2 = L17_1
  L3_2 = L1_2
  L2_2(L3_2)
end

L8_1.addClanMember = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L8_1
  L1_2 = L1_2.getClanMembers
  L1_2 = L1_2()
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.p
    if A0_2 == L6_2 then
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = L1_2
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
      L6_2 = L17_1
      L7_2 = L1_2
      L6_2(L7_2)
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = false
  return L2_2
end

L8_1.removeClanMember = L25_1

function L25_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.clanMembers
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.clanMembers
    return L0_2
  end
  L0_2 = {}
  return L0_2
end

L8_1.getClanMembers = L25_1

function L25_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L1_2 = {}
  L0_2.clans = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.clans
  L1_2 = {}
  L0_2.members = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.clans
  L1_2 = {}
  L0_2.motd = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.clans
  L1_2 = {}
  L0_2.messagelog = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.clans
  L1_2 = {}
  L0_2.eventLog = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.clans
  L1_2 = {}
  L0_2.memberLeagues = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L1_2 = {}
  L0_2.clanMembers = L1_2
end

L8_1.clearClanData = L25_1

function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = {}
  L1_2 = L8_1
  L1_2 = L1_2.getFriends
  L1_2 = L1_2()
  L2_2 = L8_1
  L2_2 = L2_2.getClanMembers
  L2_2 = L2_2()
  L3_2 = 1
  L4_2 = #L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = false
    L8_2 = 1
    L9_2 = #L2_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L1_2[L6_2]
      L12_2 = L12_2.p
      L13_2 = L2_2[L11_2]
      L13_2 = L13_2.p
      if L12_2 == L13_2 then
        L7_2 = true
      end
    end
    if not L7_2 then
      L8_2 = #L0_2
      L8_2 = L8_2 + 1
      L9_2 = L1_2[L6_2]
      L0_2[L8_2] = L9_2
    end
  end
  return L0_2
end

L8_1.getFriendsNotInClan = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L8_1
  L1_2 = L1_2.getClanMembers
  L1_2 = L1_2()
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.p
    if A0_2 == L6_2 then
      L6_2 = L1_2[L5_2]
      return L6_2
    end
  end
  L2_2 = nil
  return L2_2
end

L8_1.getClanMember = L25_1

function L25_1(A0_2)
  local L1_2, L2_2
  L1_2 = L8_1
  L1_2 = L1_2.getClanMember
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = false
  return L2_2
end

L8_1.isPlayerClanMember = L25_1

function L25_1(A0_2)
  local L1_2
  L1_2 = L2_1
  L1_2 = L1_2.data
  L1_2.previousPlayersOnline = A0_2
end

L8_1.setPreviouslyOnlinePlayers = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L2_1
  L1_2 = L1_2.data
  L1_2 = L1_2.previousPlayersOnline
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.p
    L7_2 = L1_2[L5_2]
    L7_2 = L7_2.p
    if L6_2 == L7_2 then
      L6_2 = L1_2[L5_2]
      L7_2 = A0_2.s
      L6_2.s = L7_2
    end
  end
end

L8_1.updatePreviouslyOnlinePlayer = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2.items = A0_2
  L1_2 = L14_1
  L1_2 = L1_2()
  L2_2 = L8_1
  L2_2 = L2_2.setNewDefaultSkinForAvatar
  L3_2 = L1_2.avatar
  L4_2 = L1_2.skin
  L2_2(L3_2, L4_2)
end

L8_1.setItems = L25_1

function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L2_1
  L2_2 = L2_2.databaseData
  L2_2 = L2_2.items
  if L2_2 then
    L2_2 = pairs
    L3_2 = L2_1
    L3_2 = L3_2.databaseData
    L3_2 = L3_2.items
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = tonumber
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L8_2 = tonumber
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      if L7_2 == L8_2 then
        L6_2.s = A1_2
      end
    end
  end
end

L8_1.setNewDefaultSkinForAvatar = L26_1

function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.items
  if L1_2 then
    L1_2 = pairs
    L2_2 = L2_1
    L2_2 = L2_2.databaseData
    L2_2 = L2_2.items
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = tonumber
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      L7_2 = tonumber
      L8_2 = A0_2
      L7_2 = L7_2(L8_2)
      if L6_2 == L7_2 then
        L6_2 = L5_2.s
        if L6_2 then
          L6_2 = L5_2.s
          return L6_2
        end
      end
    end
  end
  L1_2 = 0
  return L1_2
end

L8_1.getDefaultSkinForAvatar = L26_1

function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.items
  if L1_2 then
    L1_2 = pairs
    L2_2 = L2_1
    L2_2 = L2_2.databaseData
    L2_2 = L2_2.items
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = tonumber
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      L7_2 = tonumber
      L8_2 = A0_2
      L7_2 = L7_2(L8_2)
      if L6_2 == L7_2 then
        L6_2 = L5_2.w
        if L6_2 then
          L6_2 = L5_2.w
          return L6_2
        end
      end
    end
  end
  L1_2 = 0
  return L1_2
end

L8_1.getWinsForAvatar = L26_1

function L26_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L14_1
  L0_2 = L0_2()
  L1_2 = L2_1
  L1_2 = L1_2.debugger
  L1_2 = L1_2.debugTable
  L2_2 = "database"
  L3_2 = "getAvatarData :"
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L0_2[1]
  L2_2 = L2_1
  L2_2 = L2_2.databaseData
  L2_2 = L2_2.items
  if L2_2 then
    L2_2 = pairs
    L3_2 = L2_1
    L3_2 = L3_2.databaseData
    L3_2 = L3_2.items
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = tonumber
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L8_2 = tonumber
      L9_2 = L1_2
      L8_2 = L8_2(L9_2)
      if L7_2 == L8_2 then
        L7_2 = L6_2.w
        if L7_2 then
          L7_2 = L6_2.w
          L7_2 = L7_2 + 1
          L6_2.w = L7_2
        end
      end
    end
  end
end

L8_1.updateWinsForAvatar = L26_1

function L26_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.items
  return L0_2
end

L8_1.getItems = L26_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L2_1
  L1_2 = L1_2.database
  L1_2 = L1_2.salesItem
  if L1_2 then
    L1_2 = pairs
    L2_2 = L2_1
    L2_2 = L2_2.database
    L2_2 = L2_2.salesItem
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = type
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 == "table" then
        L6_2 = tonumber
        L7_2 = L5_2.i
        L6_2 = L6_2(L7_2)
        L7_2 = tonumber
        L8_2 = A0_2
        L7_2 = L7_2(L8_2)
        if L6_2 == L7_2 then
          L6_2 = L5_2.l
          if L6_2 then
            return L5_2
          end
        end
      end
    end
  end
  L1_2 = nil
  return L1_2
end

function L28_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = ""
  L2_2 = A0_2
  L1_2 = L1_2 .. L2_2
  L2_2 = L27_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_1
  L3_2 = L3_2.database
  L3_2 = L3_2.getItems
  L3_2 = L3_2()
  if L2_2 then
    L4_2 = pairs
    L5_2 = L2_2.l
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = print
      L10_2 = "Bundle add"
      L11_2 = L7_2
      L12_2 = L8_2
      L9_2(L10_2, L11_2, L12_2)
      if L3_2 then
        L9_2 = tostring
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        L9_2 = L3_2[L9_2]
        if L9_2 then
      end
      else
        L9_2 = L28_1
        L10_2 = L8_2
        L9_2(L10_2)
      end
    end
  else
    L4_2 = L2_1
    L4_2 = L4_2.databaseData
    L4_2 = L4_2.items
    if L4_2 then
      L4_2 = L2_1
      L4_2 = L4_2.databaseData
      L4_2 = L4_2.items
      L5_2 = {}
      L4_2[L1_2] = L5_2
    end
  end
end

L8_1.addItem = L28_1

function L29_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  A0_2 = A0_2 - 1
  L2_2 = pairs
  L3_2 = L2_1
  L3_2 = L3_2.databaseData
  L3_2 = L3_2.items
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L2_1
    L7_2 = L7_2.storeConfig
    L7_2 = L7_2.getItem
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = L7_2.clanReward
      if L8_2 then
        L8_2 = L7_2.clanTier
        if L8_2 == A0_2 then
          L1_2 = L1_2 + 1
        end
      end
    end
  end
  return L1_2
end

L8_1.getClanRewardsOwnedForTier = L29_1

function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  A0_2 = A0_2 - 1
  L2_2 = pairs
  L3_2 = L2_1
  L3_2 = L3_2.databaseData
  L3_2 = L3_2.items
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L2_1
    L7_2 = L7_2.storeConfig
    L7_2 = L7_2.getItem
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = L7_2.clanReward
      if L8_2 then
        L8_2 = L7_2.clanTier
        if A0_2 >= L8_2 then
          L1_2 = L1_2 + 1
        end
      end
    end
  end
  return L1_2
end

L8_1.getClanRewardsOwnedForTierAndBelow = L30_1

function L31_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L2_1
  L0_2 = L0_2.adrally
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.adrally
    L0_2 = L0_2.register
    L1_2 = "currency"
    L2_2 = {}
    L2_2.currency = 1
    L3_2 = L2_1
    L3_2 = L3_2.databaseData
    L3_2 = L3_2.money
    L2_2.balance = L3_2
    L0_2(L1_2, L2_2)
  end
end

function L32_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L2_2 = L2_1
  L2_2 = L2_2.databaseData
  L2_2 = L2_2.money
  L2_2 = L2_2 + A0_2
  L1_2.money = L2_2
  L1_2 = L31_1
  L1_2()
end

L8_1.increaseMoney = L32_1

function L33_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L2_2 = L2_1
  L2_2 = L2_2.databaseData
  L2_2 = L2_2.money
  L2_2 = L2_2 - A0_2
  L1_2.money = L2_2
  L1_2 = L31_1
  L1_2()
end

L8_1.decreaseMoney = L33_1

function L34_1(A0_2)
  local L1_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2.money = A0_2
  L1_2 = L31_1
  L1_2()
end

L8_1.setMoney = L34_1

function L35_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.money
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.money
    return L0_2
  else
    L0_2 = 0
    return L0_2
  end
end

L8_1.getMoney = L35_1

function L36_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L2_1
  L0_2 = L0_2.adrally
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.adrally
    L0_2 = L0_2.register
    L1_2 = "currency"
    L2_2 = {}
    L2_2.currency = 2
    L3_2 = L2_1
    L3_2 = L3_2.databaseData
    L3_2 = L3_2.gem
    L2_2.balance = L3_2
    L0_2(L1_2, L2_2)
  end
end

function L37_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L2_2 = L2_1
  L2_2 = L2_2.databaseData
  L2_2 = L2_2.gem
  L2_2 = L2_2 + A0_2
  L1_2.gem = L2_2
  L1_2 = L36_1
  L1_2()
end

L8_1.increaseGem = L37_1

function L38_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L2_2 = L2_1
  L2_2 = L2_2.databaseData
  L2_2 = L2_2.gem
  L2_2 = L2_2 - A0_2
  L1_2.gem = L2_2
  L1_2 = L36_1
  L1_2()
end

L8_1.decreaseGem = L38_1

function L39_1(A0_2)
  local L1_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2.gem = A0_2
  L1_2 = L36_1
  L1_2()
end

L8_1.setGem = L39_1

function L40_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.gem
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.gem
    return L0_2
  else
    L0_2 = 0
    return L0_2
  end
end

L8_1.getGem = L40_1

function L41_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L3_1
  L1_2 = L1_2.encode
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L4_1
  L2_2 = L2_2.encode
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L3_2 = L3_2.digest
  L4_2 = L1_1
  L4_2 = L4_2.md5
  L5_2 = A0_2.receipt
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end

L8_1.encodeTransaction = L41_1

function L41_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = L0_1
  L2_2 = L2_2.open
  L3_2 = L6_1
  L2_2 = L2_2(L3_2)
  L3_2 = L8_1
  L3_2 = L3_2.encodeTransaction
  L4_2 = A0_2
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = print
  L6_2 = "add receipt with hash: "
  L7_2 = L4_2
  L8_2 = " and storetype: "
  L9_2 = A1_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L2_2
  L5_2 = L2_2.exec
  L7_2 = "INSERT INTO storedReceipts(encodedTransaction, hash, storeType) VALUES(\""
  L8_2 = L3_2
  L9_2 = "\", \""
  L10_2 = L4_2
  L11_2 = "\", "
  L12_2 = A1_2
  L13_2 = ");"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
  L5_2(L6_2, L7_2)
  L6_2 = L2_2
  L5_2 = L2_2.close
  L5_2(L6_2)
  L2_2 = nil
end

L8_1.addReceipt = L41_1

function L41_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1
  L2_2 = L2_2.digest
  L3_2 = L1_1
  L3_2 = L3_2.md5
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = print
  L4_2 = "remove removeReceipt: "
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = "DELETE FROM storedReceipts WHERE hash = \""
  L4_2 = L2_2
  L5_2 = "\";"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L5_2 = L1_2
  L4_2 = L1_2.exec
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = L1_2
  L4_2 = L1_2.close
  L4_2(L5_2)
  L1_2 = nil
end

L8_1.removeReceipt = L41_1

function L41_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L1_2 = {}
  L3_2 = L0_2
  L2_2 = L0_2.nrows
  L4_2 = "SELECT encodedTransaction, hash, storeType FROM storedReceipts;"
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L6_2 = print
    L7_2 = "get receipts"
    L6_2(L7_2)
    L6_2 = L5_2.storeType
    if L6_2 then
      L6_2 = L5_2.encodedTransaction
      if L6_2 then
        L6_2 = L5_2.hash
        if L6_2 then
          L6_2 = L4_1
          L6_2 = L6_2.decode
          L7_2 = L5_2.encodedTransaction
          L6_2 = L6_2(L7_2)
          L7_2 = L3_1
          L7_2 = L7_2.decode
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          L8_2 = #L1_2
          L8_2 = L8_2 + 1
          L9_2 = {}
          L9_2.transactionData = L7_2
          L10_2 = L5_2.storeType
          L9_2.storeType = L10_2
          L10_2 = L5_2.hash
          L9_2.hash = L10_2
          L1_2[L8_2] = L9_2
        end
      end
    end
  end
  L2_2 = L2_1
  L2_2 = L2_2.debugger
  L2_2 = L2_2.debugTable
  L3_2 = "database"
  L4_2 = "receipts:"
  L5_2 = #L1_2
  L4_2 = L4_2 .. L5_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L0_2
  L2_2 = L0_2.close
  L2_2(L3_2)
  L0_2 = nil
  return L1_2
end

L8_1.getReceipts = L41_1

function L41_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L7_1 = L0_2
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.exec
  L2_2 = "INSERT OR REPLACE INTO iap_confirm VALUES(1, 1);"
  L0_2(L1_2, L2_2)
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.close
  L0_2(L1_2)
  L0_2 = nil
  L7_1 = L0_2
end

L8_1.addIAPSocialServerConfirm = L41_1

function L42_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L7_1 = L0_2
  L0_2 = {}
  L1_2 = false
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.nrows
  L4_2 = "SELECT value FROM iap_confirm;"
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L6_2 = L5_2.value
    if L6_2 == 1 then
      L1_2 = true
    end
  end
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.close
  L2_2(L3_2)
  L2_2 = nil
  L7_1 = L2_2
  return L1_2
end

L8_1.hasIAPSocialServerConfirm = L42_1

function L43_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L7_1 = L0_2
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.exec
  L2_2 = "INSERT OR REPLACE INTO iap_confirm VALUES(1, 0);"
  L0_2(L1_2, L2_2)
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.close
  L0_2(L1_2)
  L0_2 = nil
  L7_1 = L0_2
end

L8_1.removeIAPSocialServerConfirm = L43_1

function L44_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == 1 then
    L1_2 = L0_1
    L1_2 = L1_2.open
    L2_2 = L6_1
    L1_2 = L1_2(L2_2)
    L7_1 = L1_2
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.exec
    L3_2 = "INSERT OR REPLACE INTO chat VALUES(1, 1);"
    L1_2(L2_2, L3_2)
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2.chatState = 1
  elseif A0_2 == 0 then
    L1_2 = L0_1
    L1_2 = L1_2.open
    L2_2 = L6_1
    L1_2 = L1_2(L2_2)
    L7_1 = L1_2
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.exec
    L3_2 = "INSERT OR REPLACE INTO chat VALUES(1, 0);"
    L1_2(L2_2, L3_2)
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2.chatState = 0
  end
end

L8_1.setChat = L44_1

function L45_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L2_1
  L0_2 = L0_2.chatState
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.chatState
    return L0_2
  else
    L0_2 = L0_1
    L0_2 = L0_2.open
    L1_2 = L6_1
    L0_2 = L0_2(L1_2)
    L7_1 = L0_2
    L0_2 = 1
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.nrows
    L3_2 = "SELECT id, isOn FROM chat;"
    L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
    for L4_2 in L1_2, L2_2, L3_2 do
      L5_2 = L4_2.id
      if L5_2 == 1 then
        L0_2 = L4_2.isOn
      end
    end
    if L0_2 == nil then
      L0_2 = 1
    end
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2.chatState = L0_2
    return L0_2
  end
end

L8_1.getChat = L45_1

function L46_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if 0 <= A0_2 and A0_2 < 5 then
    L1_2 = L0_1
    L1_2 = L1_2.open
    L2_2 = L6_1
    L1_2 = L1_2(L2_2)
    L7_1 = L1_2
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.exec
    L3_2 = "INSERT OR REPLACE INTO settings VALUES(1,"
    L4_2 = A0_2
    L5_2 = ");"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L1_2(L2_2, L3_2)
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2.soundState = A0_2
  end
end

L8_1.setSound = L46_1

function L47_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L2_1
  L0_2 = L0_2.soundState
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.soundState
    return L0_2
  else
    L0_2 = L0_1
    L0_2 = L0_2.open
    L1_2 = L6_1
    L0_2 = L0_2(L1_2)
    L7_1 = L0_2
    L0_2 = 1
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.nrows
    L3_2 = "SELECT id, sound FROM settings;"
    L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
    for L4_2 in L1_2, L2_2, L3_2 do
      L5_2 = L4_2.id
      if L5_2 == 1 then
        L0_2 = L4_2.sound
      end
    end
    if L0_2 == nil then
      L0_2 = 1
    end
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2.soundState = L0_2
    return L0_2
  end
end

L8_1.getSound = L47_1

function L48_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == 1 then
    L1_2 = L0_1
    L1_2 = L1_2.open
    L2_2 = L6_1
    L1_2 = L1_2(L2_2)
    L7_1 = L1_2
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.exec
    L3_2 = "INSERT OR REPLACE INTO settings VALUES(2, 1);"
    L1_2(L2_2, L3_2)
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2.violenceState = 1
  elseif A0_2 == 0 then
    L1_2 = L0_1
    L1_2 = L1_2.open
    L2_2 = L6_1
    L1_2 = L1_2(L2_2)
    L7_1 = L1_2
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.exec
    L3_2 = "INSERT OR REPLACE INTO settings VALUES(2, 0);"
    L1_2(L2_2, L3_2)
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2.violenceState = 0
  end
end

L8_1.setViolence = L48_1

function L49_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L2_1
  L0_2 = L0_2.violenceState
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.violenceState
    return L0_2
  else
    L0_2 = L0_1
    L0_2 = L0_2.open
    L1_2 = L6_1
    L0_2 = L0_2(L1_2)
    L7_1 = L0_2
    L0_2 = 1
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.nrows
    L3_2 = "SELECT id, sound FROM settings;"
    L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
    for L4_2 in L1_2, L2_2, L3_2 do
      L5_2 = L4_2.id
      if L5_2 == 2 then
        L0_2 = L4_2.sound
      end
    end
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2.violenceState = L0_2
    return L0_2
  end
end

L8_1.getViolence = L49_1

function L50_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == 1 then
    L1_2 = L0_1
    L1_2 = L1_2.open
    L2_2 = L6_1
    L1_2 = L1_2(L2_2)
    L7_1 = L1_2
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.exec
    L3_2 = "INSERT OR REPLACE INTO settings VALUES(3, 1);"
    L1_2(L2_2, L3_2)
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2.graphicsState = 1
  elseif A0_2 == 0 then
    L1_2 = L0_1
    L1_2 = L1_2.open
    L2_2 = L6_1
    L1_2 = L1_2(L2_2)
    L7_1 = L1_2
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.exec
    L3_2 = "INSERT OR REPLACE INTO settings VALUES(3, 0);"
    L1_2(L2_2, L3_2)
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2.graphicsState = 0
  end
end

L8_1.setGraphics = L50_1

function L51_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L2_1
  L0_2 = L0_2.graphicsState
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.graphicsState
    return L0_2
  else
    L0_2 = L0_1
    L0_2 = L0_2.open
    L1_2 = L6_1
    L0_2 = L0_2(L1_2)
    L7_1 = L0_2
    L0_2 = 1
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.nrows
    L3_2 = "SELECT id, sound FROM settings;"
    L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
    for L4_2 in L1_2, L2_2, L3_2 do
      L5_2 = L4_2.id
      if L5_2 == 3 then
        L0_2 = L4_2.sound
      end
    end
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2.graphicsState = L0_2
    return L0_2
  end
end

L8_1.getGraphics = L51_1

function L52_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == 1 then
    L1_2 = L0_1
    L1_2 = L1_2.open
    L2_2 = L6_1
    L1_2 = L1_2(L2_2)
    L7_1 = L1_2
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.exec
    L3_2 = "INSERT OR REPLACE INTO settings VALUES(4, 1);"
    L1_2(L2_2, L3_2)
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2.detectFPS = 1
  elseif A0_2 == 0 then
    L1_2 = L0_1
    L1_2 = L1_2.open
    L2_2 = L6_1
    L1_2 = L1_2(L2_2)
    L7_1 = L1_2
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.exec
    L3_2 = "INSERT OR REPLACE INTO settings VALUES(4, 0);"
    L1_2(L2_2, L3_2)
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2.detectFPS = 0
  end
end

L8_1.setDetectFPS = L52_1

function L53_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L2_1
  L0_2 = L0_2.detectFPS
  if L0_2 then
    L0_2 = L51_1
    L0_2 = L0_2()
    if L0_2 == 0 then
      L0_2 = L2_1
      L0_2.detectFPS = 0
    end
    L0_2 = L2_1
    L0_2 = L0_2.detectFPS
    return L0_2
  else
    L0_2 = L0_1
    L0_2 = L0_2.open
    L1_2 = L6_1
    L0_2 = L0_2(L1_2)
    L7_1 = L0_2
    L0_2 = 0
    L1_2 = L2_1
    L1_2 = L1_2.logFPS
    if L1_2 then
      L0_2 = 1
    end
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.nrows
    L3_2 = "SELECT id, sound FROM settings;"
    L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
    for L4_2 in L1_2, L2_2, L3_2 do
      L5_2 = L4_2.id
      if L5_2 == 4 then
        L0_2 = L4_2.sound
        L5_2 = print
        L6_2 = "RAW:"
        L7_2 = L0_2
        L5_2(L6_2, L7_2)
      end
    end
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L51_1
    L1_2 = L1_2()
    if L1_2 == 0 then
      L0_2 = 0
    end
    L1_2 = L2_1
    L1_2.detectFPS = L0_2
    L1_2 = print
    L2_2 = "FPS DETECT STATE : "
    L3_2 = L0_2
    L1_2(L2_2, L3_2)
    return L0_2
  end
end

L8_1.getDetectFPS = L53_1

function L54_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == 1 then
    L1_2 = L0_1
    L1_2 = L1_2.open
    L2_2 = L6_1
    L1_2 = L1_2(L2_2)
    L7_1 = L1_2
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.exec
    L3_2 = "INSERT OR REPLACE INTO settings VALUES(5, 1);"
    L1_2(L2_2, L3_2)
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L1_2.loadVideoOnWifiState = 1
  elseif A0_2 == 0 then
    L1_2 = L0_1
    L1_2 = L1_2.open
    L2_2 = L6_1
    L1_2 = L1_2(L2_2)
    L7_1 = L1_2
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.exec
    L3_2 = "INSERT OR REPLACE INTO settings VALUES(5, 0);"
    L1_2(L2_2, L3_2)
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L1_2.loadVideoOnWifiState = 0
  end
end

L8_1.setLoadVideoOnWifiOnly = L54_1

function L54_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.loadVideoOnWifiState
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.loadVideoOnWifiState
    return L0_2
  else
    L0_2 = L0_1
    L0_2 = L0_2.open
    L1_2 = L6_1
    L0_2 = L0_2(L1_2)
    L7_1 = L0_2
    L0_2 = 0
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.nrows
    L3_2 = "SELECT id, sound FROM settings;"
    L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
    for L4_2 in L1_2, L2_2, L3_2 do
      L5_2 = L4_2.id
      if L5_2 == 5 then
        L0_2 = L4_2.sound
      end
    end
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L1_2.loadVideoOnWifiState = L0_2
    return L0_2
  end
end

L8_1.getLoadVideoOnWifiOnly = L54_1

function L54_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L7_1 = L1_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.exec
  L3_2 = "INSERT OR REPLACE INTO marketItemId VALUES(1, "
  L4_2 = A0_2
  L5_2 = ");"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2(L2_2, L3_2)
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2.marketItemId = A0_2
end

L8_1.setMarketItemId = L54_1

function L54_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.marketItemId
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.marketItemId
    return L0_2
  else
    L0_2 = L0_1
    L0_2 = L0_2.open
    L1_2 = L6_1
    L0_2 = L0_2(L1_2)
    L7_1 = L0_2
    L0_2 = L2_1
    L0_2 = L0_2.config
    L0_2 = L0_2.localVersion
    L0_2 = L0_2 - 1
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.nrows
    L3_2 = "SELECT value FROM marketItemId;"
    L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
    for L4_2 in L1_2, L2_2, L3_2 do
      L0_2 = L4_2.value
    end
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L1_2.marketItemId = L0_2
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L1_2 = L1_2.marketItemId
    return L1_2
  end
end

L8_1.getMarketItemId = L54_1

function L54_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == 1 then
    L1_2 = L0_1
    L1_2 = L1_2.open
    L2_2 = L6_1
    L1_2 = L1_2(L2_2)
    L7_1 = L1_2
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.exec
    L3_2 = "INSERT OR REPLACE INTO deviceSync VALUES(1, 1);"
    L1_2(L2_2, L3_2)
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2.deviceSyncState = 1
  elseif A0_2 == 2 then
    L1_2 = L0_1
    L1_2 = L1_2.open
    L2_2 = L6_1
    L1_2 = L1_2(L2_2)
    L7_1 = L1_2
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.exec
    L3_2 = "INSERT OR REPLACE INTO deviceSync VALUES(1, 2);"
    L1_2(L2_2, L3_2)
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2.deviceSyncState = 2
  end
end

L8_1.setDeviceSyncState = L54_1

function L55_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L2_1
  L0_2 = L0_2.deviceSyncState
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.deviceSyncState
    return L0_2
  else
    L0_2 = L0_1
    L0_2 = L0_2.open
    L1_2 = L6_1
    L0_2 = L0_2(L1_2)
    L7_1 = L0_2
    L0_2 = 0
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.nrows
    L3_2 = "SELECT value FROM deviceSync;"
    L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
    for L4_2 in L1_2, L2_2, L3_2 do
      L0_2 = L4_2.value
    end
    if L0_2 == nil then
      L0_2 = 0
    end
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2.deviceSyncState = L0_2
    return L0_2
  end
end

L8_1.getDeviceSyncState = L55_1

function L56_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L2_1
  L0_2 = L0_2.config
  L0_2 = L0_2.localVersion
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L7_1 = L1_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.exec
  L3_2 = "INSERT OR REPLACE INTO lastSeenVersion VALUES(1,\""
  L4_2 = L0_2
  L5_2 = "\");"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2(L2_2, L3_2)
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
  L1_2 = L2_1
  L1_2.lastSeenVersion = L0_2
end

L8_1.storeCurrentPatchVersion = L56_1

function L56_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L2_1
  L0_2 = L0_2.config
  L0_2 = L0_2.patchInfo
  L0_2 = L0_2[1]
  L0_2 = L0_2.i
  if not L0_2 then
    L0_2 = 1
  end
  L1_2 = L2_1
  L1_2 = L1_2.lastSeenVersion
  if L1_2 then
    L1_2 = L2_1
    L1_2 = L1_2.lastSeenVersion
    L2_2 = L2_1
    L2_2 = L2_2.config
    L2_2 = L2_2.localVersion
    if L1_2 ~= L2_2 then
      L1_2 = L2_1
      L1_2 = L1_2.config
      L1_2 = L1_2.liveServerVersion
      L2_2 = L2_1
      L2_2 = L2_2.config
      L2_2 = L2_2.localVersion
      if L1_2 >= L2_2 then
        L1_2 = L2_1
        L1_2 = L1_2.config
        L1_2 = L1_2.liveServerVersion
        if L0_2 == L1_2 then
          L1_2 = L8_1
          L1_2 = L1_2.storeCurrentPatchVersion
          L1_2()
          L1_2 = true
          return L1_2
        end
        L1_2 = false
        return L1_2
    end
    else
      L1_2 = false
      return L1_2
    end
  else
    L1_2 = L0_1
    L1_2 = L1_2.open
    L2_2 = L6_1
    L1_2 = L1_2(L2_2)
    L7_1 = L1_2
    L1_2 = 0
    L2_2 = L7_1
    L3_2 = L2_2
    L2_2 = L2_2.nrows
    L4_2 = "SELECT build FROM lastSeenVersion;"
    L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
    for L5_2 in L2_2, L3_2, L4_2 do
      L1_2 = L5_2.build
    end
    L2_2 = L7_1
    L3_2 = L2_2
    L2_2 = L2_2.close
    L2_2(L3_2)
    L2_2 = nil
    L7_1 = L2_2
    L2_2 = L2_1
    L2_2 = L2_2.config
    L2_2 = L2_2.localVersion
    if L1_2 ~= L2_2 then
      L2_2 = L2_1
      L2_2 = L2_2.config
      L2_2 = L2_2.liveServerVersion
      L3_2 = L2_1
      L3_2 = L3_2.config
      L3_2 = L3_2.localVersion
      if L2_2 >= L3_2 then
        L2_2 = L2_1
        L2_2 = L2_2.config
        L2_2 = L2_2.liveServerVersion
        if L0_2 == L2_2 then
          L2_2 = L8_1
          L2_2 = L2_2.storeCurrentPatchVersion
          L2_2()
          L2_2 = true
          return L2_2
        end
      end
    end
    L2_2 = false
    return L2_2
  end
end

L8_1.shouldShowPatchInfo = L56_1

function L56_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = os
  L0_2 = L0_2.time
  L0_2 = L0_2()
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L7_1 = L1_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.exec
  L3_2 = "INSERT OR REPLACE INTO rateTime VALUES(1,\""
  L4_2 = L0_2
  L5_2 = "\");"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2(L2_2, L3_2)
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
end

L8_1.ratedNO = L56_1

function L57_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = 0
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L7_1 = L1_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.nrows
  L3_2 = "SELECT value FROM rateTime;"
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  for L4_2 in L1_2, L2_2, L3_2 do
    L0_2 = L4_2.value
  end
  if L0_2 == nil then
    L0_2 = 0
  end
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
  return L0_2
end

L8_1.getLastRateAppTime = L57_1

function L58_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L7_1 = L1_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.nrows
  L3_2 = "SELECT value FROM accountCreationPrompt;"
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  for L4_2 in L1_2, L2_2, L3_2 do
    L0_2 = L4_2.value
  end
  if L0_2 == nil then
    L0_2 = 0
  end
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
  L1_2 = L0_2 == 1
  return L1_2
end

L8_1.hasShownAccountCreationPrompt = L58_1

function L59_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L7_1 = L0_2
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.exec
  L2_2 = "INSERT OR REPLACE INTO accountCreationPrompt VALUES(1, 1);"
  L0_2(L1_2, L2_2)
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.close
  L0_2(L1_2)
  L0_2 = nil
  L7_1 = L0_2
end

L8_1.didShowAccountCreationPrompt = L59_1

function L60_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = os
  L0_2 = L0_2.time
  L0_2 = L0_2()
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L7_1 = L1_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.exec
  L3_2 = "INSERT OR REPLACE INTO adTime VALUES(1,\""
  L4_2 = L0_2
  L5_2 = "\");"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2(L2_2, L3_2)
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
  L1_2 = L2_1
  L1_2 = L1_2.adsTable
  L1_2.time = L0_2
end

L8_1.usedAds = L60_1

function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = 0
  L1_2 = L2_1
  L1_2 = L1_2.adsTable
  L1_2 = L1_2.time
  if 0 < L1_2 then
    L1_2 = L2_1
    L1_2 = L1_2.adsTable
    L0_2 = L1_2.time
  else
    L1_2 = L0_1
    L1_2 = L1_2.open
    L2_2 = L6_1
    L1_2 = L1_2(L2_2)
    L7_1 = L1_2
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.nrows
    L3_2 = "SELECT value FROM adTime;"
    L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
    for L4_2 in L1_2, L2_2, L3_2 do
      L0_2 = L4_2.value
    end
    if L0_2 == nil then
      L0_2 = 0
    end
    L1_2 = L2_1
    L1_2 = L1_2.adsTable
    L1_2.time = L0_2
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
  end
  return L0_2
end

L8_1.getLastTimeAds = L61_1

function L62_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L7_1 = L1_2
  L1_2 = 0
  if A0_2 then
    L1_2 = 3
  else
    L2_2 = L7_1
    L3_2 = L2_2
    L2_2 = L2_2.nrows
    L4_2 = "SELECT value FROM bonusVideoState WHERE id = 1;"
    L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
    for L5_2 in L2_2, L3_2, L4_2 do
      L6_2 = L5_2.value
      L6_2 = L6_2 + 1
      L1_2 = L6_2 or L1_2
      if not L6_2 then
        L1_2 = 0
      end
    end
  end
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "INSERT OR REPLACE INTO bonusVideoState VALUES(1,\""
  L5_2 = L1_2
  L6_2 = "\");"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.close
  L2_2(L3_2)
  L2_2 = nil
  L7_1 = L2_2
end

L8_1.setBonusVideoInfoBubbleState = L62_1

function L63_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L7_1 = L1_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.nrows
  L3_2 = "SELECT value FROM bonusVideoState WHERE id = 1;"
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  for L4_2 in L1_2, L2_2, L3_2 do
    L0_2 = L4_2.value
  end
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
  if L0_2 == nil then
    L0_2 = 0
  end
  L1_2 = L0_2 < 2
  return L1_2
end

L8_1.showBonusVideoInfoBubble = L63_1

function L64_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L2_1
  L1_2 = L1_2.database
  L1_2 = L1_2.getRewardedChestPoolData
  L1_2 = L1_2()
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2 + 1
  L2_2 = L2_1
  L2_2 = L2_2.data
  L2_2 = L2_2.rewardedVideoTypePoolData
  L2_2[A0_2] = L1_2
  L2_2 = L0_1
  L2_2 = L2_2.open
  L3_2 = L6_1
  L2_2 = L2_2(L3_2)
  L7_1 = L2_2
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "INSERT OR REPLACE INTO rewardedChests VALUES("
  L5_2 = A0_2
  L6_2 = ","
  L7_2 = L1_2
  L8_2 = ");"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.close
  L2_2(L3_2)
  L2_2 = nil
  L7_1 = L2_2
end

L8_1.updateRewardedChestPoolData = L64_1

function L65_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.rewardedVideoTypePoolData
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.data
    L0_2 = L0_2.rewardedVideoTypePoolData
    return L0_2
  else
    L0_2 = 0
    L1_2 = 0
    L2_2 = 0
    L3_2 = L0_1
    L3_2 = L3_2.open
    L4_2 = L6_1
    L3_2 = L3_2(L4_2)
    L7_1 = L3_2
    L3_2 = L7_1
    L4_2 = L3_2
    L3_2 = L3_2.nrows
    L5_2 = "SELECT id,seen FROM rewardedChests;"
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    for L6_2 in L3_2, L4_2, L5_2 do
      L7_2 = L6_2.id
      if L7_2 == 1 then
        L0_2 = L6_2.seen
      else
        L7_2 = L6_2.id
        if L7_2 == 2 then
          L1_2 = L6_2.seen
        else
          L7_2 = L6_2.id
          if L7_2 == 3 then
            L2_2 = L6_2.seen
          else
            L7_2 = print
            L8_2 = "Found undefined rewardedChest Type entry."
            L7_2(L8_2)
          end
        end
      end
    end
    L3_2 = L7_1
    L4_2 = L3_2
    L3_2 = L3_2.close
    L3_2(L4_2)
    L3_2 = nil
    L7_1 = L3_2
    L3_2 = L2_1
    L3_2 = L3_2.data
    L4_2 = {}
    L5_2 = L0_2
    L6_2 = L1_2
    L7_2 = L2_2
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L3_2.rewardedVideoTypePoolData = L4_2
    L3_2 = L2_1
    L3_2 = L3_2.data
    L3_2 = L3_2.rewardedVideoTypePoolData
    return L3_2
  end
end

L8_1.getRewardedChestPoolData = L65_1

function L66_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L1_2 = {}
  L2_2 = 0
  L3_2 = 0
  L4_2 = 0
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L0_2.rewardedVideoTypePoolData = L1_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L7_1 = L0_2
  L0_2 = 1
  L1_2 = 3
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L7_1
    L5_2 = L4_2
    L4_2 = L4_2.exec
    L6_2 = "INSERT OR REPLACE INTO rewardedChests VALUES("
    L7_2 = L3_2
    L8_2 = ", 0);"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L4_2(L5_2, L6_2)
  end
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.close
  L0_2(L1_2)
  L0_2 = nil
  L7_1 = L0_2
end

L8_1.resetRewardedChestPoolData = L66_1

function L67_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.currentAdRewardData
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.data
    L0_2 = L0_2.currentAdRewardData
    return L0_2
  else
    L0_2 = 0
    L1_2 = 0
    L2_2 = 0
    L3_2 = L0_1
    L3_2 = L3_2.open
    L4_2 = L6_1
    L3_2 = L3_2(L4_2)
    L7_1 = L3_2
    L3_2 = L7_1
    L4_2 = L3_2
    L3_2 = L3_2.nrows
    L5_2 = "SELECT type,value1,value2 FROM currentAdRewardData WHERE id = 1;"
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    for L6_2 in L3_2, L4_2, L5_2 do
      L0_2 = L6_2.type
      L1_2 = L6_2.value1
      L2_2 = L6_2.value2
    end
    L3_2 = L7_1
    L4_2 = L3_2
    L3_2 = L3_2.close
    L3_2(L4_2)
    L3_2 = nil
    L7_1 = L3_2
    L3_2 = L2_1
    L3_2 = L3_2.data
    L4_2 = {}
    L4_2.type = L0_2
    L4_2.value1 = L1_2
    L4_2.value2 = L1_2
    L3_2.currentAdRewardData = L4_2
    L3_2 = L2_1
    L3_2 = L3_2.data
    L3_2 = L3_2.currentAdRewardData
    return L3_2
  end
end

function L68_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L67_1
  L0_2 = L0_2()
  if L0_2 == nil then
    return
  end
  L1_2 = {}
  L2_2 = L0_2.type
  if L2_2 == 0 then
    L2_2 = print
    L3_2 = "No current adReward set."
    L2_2(L3_2)
    L2_2 = L2_1
    L2_2 = L2_2.data
    L2_2.currentAdRewardData = nil
    L2_2 = nil
    return L2_2
  else
    L2_2 = L0_2.type
    if L2_2 == 1 then
      L1_2.type = "soft"
      L2_2 = L0_2.value1
      L1_2.multiplier = L2_2
    else
      L2_2 = L0_2.type
      if L2_2 == 2 then
        L1_2.type = "hard"
        L2_2 = L0_2.value1
        L1_2.min = L2_2
        L2_2 = L0_2.value2
        L1_2.max = L2_2
      else
        L2_2 = L0_2.type
        if L2_2 == 3 then
          L1_2.type = "spin"
          L2_2 = L0_2.value1
          L1_2.min = L2_2
          L2_2 = L0_2.value2
          L1_2.max = L2_2
        end
      end
    end
  end
  return L1_2
end

L8_1.getCurrentChestRewardData = L68_1

function L69_1()
  local L0_2, L1_2, L2_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2.currentAdRewardData = nil
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L7_1 = L0_2
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.exec
  L2_2 = "INSERT OR REPLACE INTO currentAdRewardData VALUES(1, 0, 0, 0);"
  L0_2(L1_2, L2_2)
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.close
  L0_2(L1_2)
  L0_2 = nil
  L7_1 = L0_2
end

L8_1.clearCurrentChestRewardData = L69_1

function L70_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if not A0_2 then
    return
  end
  L1_2 = 0
  L2_2 = A0_2.type
  if L2_2 == "soft" then
    L1_2 = 1
  else
    L2_2 = A0_2.type
    if L2_2 == "hard" then
      L1_2 = 2
    else
      L2_2 = A0_2.type
      if L2_2 == "spin" then
        L1_2 = 3
      end
    end
  end
  L2_2 = 0
  L3_2 = 0
  if L1_2 == 1 then
    L2_2 = A0_2.multiplier
  elseif L1_2 == 2 or L1_2 == 3 then
    L2_2 = A0_2.min
    L3_2 = A0_2.max
  end
  L4_2 = L2_1
  L4_2 = L4_2.data
  L5_2 = {}
  L5_2.type = L1_2
  L5_2.value1 = L2_2
  L5_2.value2 = L3_2
  L4_2.currentAdRewardData = L5_2
  L4_2 = L0_1
  L4_2 = L4_2.open
  L5_2 = L6_1
  L4_2 = L4_2(L5_2)
  L7_1 = L4_2
  L4_2 = L7_1
  L5_2 = L4_2
  L4_2 = L4_2.exec
  L6_2 = "INSERT OR REPLACE INTO currentAdRewardData VALUES( 1, "
  L7_2 = L1_2
  L8_2 = ","
  L9_2 = L2_2
  L10_2 = ","
  L11_2 = L3_2
  L12_2 = ");"
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
  L4_2(L5_2, L6_2)
  L4_2 = L7_1
  L5_2 = L4_2
  L4_2 = L4_2.close
  L4_2(L5_2)
  L4_2 = nil
  L7_1 = L4_2
end

L8_1.setCurrentAdChestReward = L70_1

function L71_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = string
  L1_2 = L1_2.format
  L2_2 = "%.0f"
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2 = L1_2
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L7_1 = L1_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.exec
  L3_2 = "INSERT OR REPLACE INTO facebook VALUES(1, "
  L4_2 = A0_2
  L5_2 = ");"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2(L2_2, L3_2)
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2.facebookId = A0_2
end

L8_1.setFacebookId = L71_1

function L72_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L2_2 = L0_2
  L1_2 = L0_2.exec
  L3_2 = "DELETE FROM facebook;"
  L1_2(L2_2, L3_2)
  L2_2 = L0_2
  L1_2 = L0_2.close
  L1_2(L2_2)
  L0_2 = nil
end

L8_1.removeFacebookId = L72_1

function L72_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.facebookId
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.facebookId
    return L0_2
  else
    L0_2 = L0_1
    L0_2 = L0_2.open
    L1_2 = L6_1
    L0_2 = L0_2(L1_2)
    L7_1 = L0_2
    L0_2 = nil
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.nrows
    L3_2 = "SELECT facebookId FROM facebook;"
    L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
    for L4_2 in L1_2, L2_2, L3_2 do
      L0_2 = L4_2.facebookId
    end
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L1_2.facebookId = L0_2
    return L0_2
  end
end

L8_1.getFacebookId = L72_1

function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1
  L1_2 = L1_2.debugger
  L1_2 = L1_2.debugTable
  L2_2 = "database"
  L3_2 = "setFacebookFriends :"
  L4_2 = #A0_2
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L2_1
  L1_2 = L1_2.data
  L1_2.facebookFriends = A0_2
end

L8_1.setFacebookFriends = L73_1

function L73_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.facebookFriends
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.data
    L0_2 = L0_2.facebookFriends
    return L0_2
  else
    L0_2 = {}
    return L0_2
  end
end

L8_1.getFacebookFriends = L73_1

function L73_1(A0_2)
  local L1_2
  L1_2 = L2_1
  L1_2 = L1_2.data
  L1_2.facebookFriendsNotInstalled = A0_2
end

L8_1.setFacebookFriendsNotInstalled = L73_1

function L73_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.facebookFriendsNotInstalled
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.data
    L0_2 = L0_2.facebookFriendsNotInstalled
    return L0_2
  else
    L0_2 = {}
    return L0_2
  end
end

L8_1.getFacebookFriendsNotInstalled = L73_1

function L73_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L2_1
  L0_2 = L0_2.config
  L0_2 = L0_2.newItems
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.marketNotification
  if L1_2 then
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L1_2 = L1_2.marketNotification
    return L1_2
  else
    L1_2 = L0_1
    L1_2 = L1_2.open
    L2_2 = L6_1
    L1_2 = L1_2(L2_2)
    L7_1 = L1_2
    L1_2 = {}
    L1_2.version = 0
    L1_2.number = 0
    L2_2 = L7_1
    L3_2 = L2_2
    L2_2 = L2_2.nrows
    L4_2 = "SELECT version, number FROM marketNotification;"
    L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
    for L5_2 in L2_2, L3_2, L4_2 do
      L6_2 = {}
      L7_2 = L5_2.version
      L6_2.version = L7_2
      L7_2 = L5_2.number
      L6_2.number = L7_2
      L1_2 = L6_2
    end
    L2_2 = L0_2.version
    L3_2 = L1_2.version
    if L2_2 ~= L3_2 then
      L2_2 = "INSERT OR REPLACE INTO marketNotification VALUES(1,"
      L3_2 = L0_2.version
      L4_2 = ", "
      L5_2 = L0_2.number
      L6_2 = ");"
      L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
      L3_2 = L0_1
      L3_2 = L3_2.open
      L4_2 = L6_1
      L3_2 = L3_2(L4_2)
      L7_1 = L3_2
      L3_2 = L7_1
      L4_2 = L3_2
      L3_2 = L3_2.exec
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = L2_1
      L3_2 = L3_2.databaseData
      L3_2.marketNotification = L0_2
    else
      L2_2 = L2_1
      L2_2 = L2_2.databaseData
      L2_2.marketNotification = L1_2
    end
    L2_2 = L7_1
    L3_2 = L2_2
    L2_2 = L2_2.close
    L2_2(L3_2)
    L2_2 = nil
    L7_1 = L2_2
    L2_2 = L2_1
    L2_2 = L2_2.databaseData
    L2_2 = L2_2.marketNotification
    return L2_2
  end
end

L8_1.getMarketNotification = L73_1

function L74_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = "UPDATE marketNotification set number = 0;"
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L7_1 = L1_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.exec
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2 = L1_2.marketNotification
  if L1_2 then
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L1_2 = L1_2.marketNotification
    L1_2 = L1_2.number
    if L1_2 then
      L1_2 = L2_1
      L1_2 = L1_2.databaseData
      L1_2 = L1_2.marketNotification
      L1_2.number = 0
    end
  end
end

L8_1.resetMarketNotification = L74_1

function L75_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = L0_1
  L3_2 = L3_2.open
  L4_2 = L6_1
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.exec
  L6_2 = "INSERT OR REPLACE INTO push_enabled VALUES(1, "
  L7_2 = A0_2
  L8_2 = ", "
  L9_2 = A1_2
  L10_2 = ", "
  L11_2 = A2_2
  L12_2 = ");"
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.close
  L4_2(L5_2)
  L3_2 = nil
end

L8_1.setPushEnableStatus = L75_1

function L75_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L0_1
  L3_2 = L3_2.open
  L4_2 = L6_1
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.nrows
  L6_2 = "SELECT gameInvite, friendRequest, general FROM push_enabled;"
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  for L7_2 in L4_2, L5_2, L6_2 do
    L0_2 = L7_2.gameInvite
    L1_2 = L7_2.friendRequest
    L2_2 = L7_2.general
  end
  L5_2 = L3_2
  L4_2 = L3_2.close
  L4_2(L5_2)
  L3_2 = nil
  L4_2 = L0_2
  L5_2 = L1_2
  L6_2 = L2_2
  return L4_2, L5_2, L6_2
end

L8_1.getPushEnableStatus = L75_1

function L75_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.exec
  L4_2 = "INSERT OR REPLACE INTO dropdownSettings VALUES(1, "
  L5_2 = A0_2
  L6_2 = ");"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.close
  L2_2(L3_2)
  L1_2 = nil
end

L8_1.setDropdownStatus = L75_1

function L75_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.nrows
  L4_2 = "SELECT value FROM dropdownSettings;"
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L0_2 = L5_2.value
  end
  L3_2 = L1_2
  L2_2 = L1_2.close
  L2_2(L3_2)
  L1_2 = nil
  if not L0_2 then
    L0_2 = 1
  end
  return L0_2
end

L8_1.getDropdownStatus = L75_1

function L75_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L1_2 = true
  L3_2 = L0_2
  L2_2 = L0_2.nrows
  L4_2 = "SELECT part, done FROM onboarding"
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L6_2 = L5_2.done
    if L6_2 then
      L6_2 = L5_2.done
      if L6_2 == 1 then
        L6_2 = L5_2.part
        if L6_2 == 1 then
          L1_2 = false
        end
      end
    end
  end
  L3_2 = L0_2
  L2_2 = L0_2.close
  L2_2(L3_2)
  L0_2 = nil
  return L1_2
end

L8_1.introOnboardingIsActive = L75_1

function L75_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L2_2 = true
  L4_2 = L1_2
  L3_2 = L1_2.nrows
  L5_2 = "SELECT part, done FROM onboarding"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  for L6_2 in L3_2, L4_2, L5_2 do
    L7_2 = L6_2.done
    if L7_2 then
      L7_2 = L6_2.done
      if L7_2 == 1 then
        L7_2 = L6_2.part
        if L7_2 == A0_2 then
          L2_2 = false
        end
      end
    end
  end
  L4_2 = L1_2
  L3_2 = L1_2.close
  L3_2(L4_2)
  L1_2 = nil
  return L2_2
end

L8_1.onboardingPartIsActive = L75_1

function L75_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.exec
  L4_2 = "INSERT OR REPLACE INTO onboarding VALUES("
  L5_2 = A0_2
  L6_2 = ",1);"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.close
  L2_2(L3_2)
  L1_2 = nil
end

L8_1.setOnboardingPartDone = L75_1

function L75_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L1_2 = 0
  L2_2 = L2_1
  L2_2 = L2_2.data
  if L2_2 then
    L2_2 = L2_1
    L2_2 = L2_2.data
    L2_2 = L2_2.showMarketPopup
    if L2_2 then
      L3_2 = L0_2
      L2_2 = L0_2.nrows
      L4_2 = "SELECT id, done FROM onboardingMoney;"
      L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
      for L5_2 in L2_2, L3_2, L4_2 do
        L6_2 = L5_2.done
        if L6_2 then
          L1_2 = L5_2.done
        end
      end
      L3_2 = L0_2
      L2_2 = L0_2.close
      L2_2(L3_2)
      L0_2 = nil
      if L1_2 == 0 then
        L2_2 = true
        return L2_2
      else
        L2_2 = L2_1
        L2_2 = L2_2.data
        L2_2.showMarketPopup = false
      end
    end
  end
  L2_2 = false
  return L2_2
end

L8_1.getOnboardingMoney = L75_1

function L75_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L2_2 = L0_2
  L1_2 = L0_2.exec
  L3_2 = "INSERT OR REPLACE INTO onboardingMoney VALUES(1,1);"
  L1_2(L2_2, L3_2)
  L2_2 = L0_2
  L1_2 = L0_2.close
  L1_2(L2_2)
  L0_2 = nil
end

L8_1.setOnboardingMoneyDone = L75_1

function L75_1(A0_2)
  local L1_2, L2_2
  if not A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L8_1
  L1_2 = L1_2.numberOfTimesShownStarterPack
  L1_2 = L1_2()
  if 500 <= A0_2 and 1 <= L1_2 then
    L2_2 = false
    return L2_2
  elseif L1_2 == 0 and 10 <= A0_2 then
    L2_2 = true
    return L2_2
  elseif L1_2 == 1 and 100 <= A0_2 then
    L2_2 = true
    return L2_2
  else
    L2_2 = false
    return L2_2
  end
end

L8_1.canShowBoosterPack = L75_1

function L75_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L1_2 = 0
  L3_2 = L0_2
  L2_2 = L0_2.nrows
  L4_2 = "SELECT id, timesShown FROM starterPackLastShown;"
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L6_2 = L5_2.timesShown
    if L6_2 then
      L1_2 = L5_2.timesShown
    end
  end
  L3_2 = L0_2
  L2_2 = L0_2.close
  L2_2(L3_2)
  L0_2 = nil
  return L1_2
end

L8_1.numberOfTimesShownStarterPack = L75_1

function L75_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L8_1
  L0_2 = L0_2.numberOfTimesShownStarterPack
  L0_2 = L0_2()
  L1_2 = L0_2 + 1
  L2_2 = L0_1
  L2_2 = L2_2.open
  L3_2 = L6_1
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.exec
  L5_2 = "INSERT OR REPLACE INTO starterPackLastShown VALUES(1,"
  L6_2 = L1_2
  L7_2 = ");"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.close
  L3_2(L4_2)
  L2_2 = nil
end

L8_1.incrementShowedBoosterPack = L75_1

function L75_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L1_2 = "0"
  L3_2 = L0_2
  L2_2 = L0_2.nrows
  L4_2 = "SELECT id, done FROM onboardingIntro;"
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L6_2 = L5_2.done
    if L6_2 then
      L6_2 = L5_2.id
      if L6_2 == 1 then
        L6_2 = ""
        L7_2 = L5_2.done
        L1_2 = L6_2 .. L7_2
      end
    end
  end
  L3_2 = L0_2
  L2_2 = L0_2.close
  L2_2(L3_2)
  L0_2 = nil
  return L1_2
end

L8_1.getOnboardingIntroPart = L75_1

function L75_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.exec
  L4_2 = "INSERT OR REPLACE INTO onboardingIntro VALUES(1,"
  L5_2 = A0_2
  L6_2 = ");"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.close
  L2_2(L3_2)
  L1_2 = nil
end

L8_1.setOnboardingIntroPartDone = L75_1

function L75_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L1_2 = 0
  L3_2 = L0_2
  L2_2 = L0_2.nrows
  L4_2 = "SELECT state FROM adrallyUse;"
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L1_2 = L5_2.state
  end
  L3_2 = L0_2
  L2_2 = L0_2.close
  L2_2(L3_2)
  L0_2 = nil
  return L1_2
end

L8_1.getAdrallyState = L75_1

function L75_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.exec
  L4_2 = "INSERT OR REPLACE INTO adrallyUse VALUES(1,"
  L5_2 = A0_2
  L6_2 = ");"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.close
  L2_2(L3_2)
  L1_2 = nil
end

L8_1.setAdrallyState = L75_1

function L75_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L2_2 = L0_2
  L1_2 = L0_2.exec
  L3_2 = "INSERT OR REPLACE INTO infoHelpText VALUES(1,0);"
  L1_2(L2_2, L3_2)
  L2_2 = L0_2
  L1_2 = L0_2.close
  L1_2(L2_2)
  L0_2 = nil
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2.marketHelpState = 0
end

L8_1.setMarketHelpInfo = L75_1

function L75_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.marketHelpState
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.marketHelpState
    return L0_2
  end
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L1_2 = 1
  L3_2 = L0_2
  L2_2 = L0_2.nrows
  L4_2 = "SELECT market FROM infoHelpText;"
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L1_2 = L5_2.market
  end
  L3_2 = L0_2
  L2_2 = L0_2.close
  L2_2(L3_2)
  L0_2 = nil
  L2_2 = L2_1
  L2_2 = L2_2.databaseData
  L2_2.marketHelpState = L1_2
  return L1_2
end

L8_1.shouldUseMarketHelp = L75_1

function L75_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L1_2 = 0
  L3_2 = L0_2
  L2_2 = L0_2.nrows
  L4_2 = "SELECT state FROM localLeagueData;"
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L1_2 = L5_2.state
  end
  L3_2 = L0_2
  L2_2 = L0_2.close
  L2_2(L3_2)
  L0_2 = nil
  return L1_2
end

L8_1.getLocalLeagueData = L75_1

function L75_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.exec
  L4_2 = "CREATE TABLE IF NOT EXISTS localLeagueData (id INTEGER PRIMARY KEY, state INTEGER default 0);"
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.exec
  L4_2 = "INSERT OR REPLACE INTO localLeagueData VALUES(1,"
  L5_2 = A0_2
  L6_2 = ");"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.close
  L2_2(L3_2)
  L1_2 = nil
end

L8_1.setLocalLeagueData = L75_1

function L75_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2.googlePlayServicesId = A0_2
  L1_2 = print
  L2_2 = "Set new google play services id"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  if A0_2 == nil then
    L1_2 = L0_1
    L1_2 = L1_2.open
    L2_2 = L6_1
    L1_2 = L1_2(L2_2)
    L7_1 = L1_2
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.exec
    L3_2 = "DELETE FROM googlePlayServicesPlayer;"
    L1_2(L2_2, L3_2)
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    return
  end
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L7_1 = L1_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.exec
  L3_2 = "INSERT OR REPLACE INTO googlePlayServicesPlayer VALUES(1, \""
  L4_2 = A0_2
  L5_2 = "\");"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2(L2_2, L3_2)
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
end

L8_1.setGooglePlayServicesId = L75_1

function L76_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.googlePlayServicesId
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.googlePlayServicesId
    return L0_2
  else
    L0_2 = L0_1
    L0_2 = L0_2.open
    L1_2 = L6_1
    L0_2 = L0_2(L1_2)
    L7_1 = L0_2
    L0_2 = nil
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.nrows
    L3_2 = "SELECT googleId FROM googlePlayServicesPlayer;"
    L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
    for L4_2 in L1_2, L2_2, L3_2 do
      L0_2 = L4_2.googleId
    end
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    L1_2 = L2_1
    L1_2 = L1_2.databaseData
    L1_2.googlePlayServicesId = L0_2
    return L0_2
  end
end

L8_1.getGooglePlayServicesId = L76_1

function L77_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L7_1 = L0_2
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.exec
  L2_2 = "INSERT OR REPLACE INTO crossPromotion VALUES(1, 1);"
  L0_2(L1_2, L2_2)
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.close
  L0_2(L1_2)
  L0_2 = nil
  L7_1 = L0_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2.hasSeenCrossPromotion = true
end

L8_1.setSeenCrossPromotion = L77_1

function L78_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.hasSeenCrossPromotion
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.data
    L0_2 = L0_2.hasSeenCrossPromotion
    if not L0_2 then
      L0_2 = false
    end
    return L0_2
  else
    L0_2 = L0_1
    L0_2 = L0_2.open
    L1_2 = L6_1
    L0_2 = L0_2(L1_2)
    L7_1 = L0_2
    L0_2 = nil
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.nrows
    L3_2 = "SELECT seen FROM crossPromotion WHERE id = 1;"
    L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
    for L4_2 in L1_2, L2_2, L3_2 do
      L0_2 = L4_2.seen
    end
    L1_2 = L7_1
    L2_2 = L1_2
    L1_2 = L1_2.close
    L1_2(L2_2)
    L1_2 = nil
    L7_1 = L1_2
    if L0_2 == nil then
      L0_2 = 0
    end
    L1_2 = L0_2 == 1
    return L1_2
  end
end

L8_1.hasSeenCrossPromotion = L78_1

function L79_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = os
  L1_2 = L1_2.time
  L1_2 = L1_2()
  L2_2 = A0_2
  L3_2 = L0_1
  L3_2 = L3_2.open
  L4_2 = L6_1
  L3_2 = L3_2(L4_2)
  L7_1 = L3_2
  L3_2 = L7_1
  L4_2 = L3_2
  L3_2 = L3_2.exec
  L5_2 = "INSERT OR REPLACE INTO dailyChallengePrompt VALUES(1,"
  L6_2 = L1_2
  L7_2 = ", "
  L8_2 = L2_2
  L9_2 = ");"
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
  L3_2(L4_2, L5_2)
  L3_2 = L7_1
  L4_2 = L3_2
  L3_2 = L3_2.close
  L3_2(L4_2)
  L3_2 = nil
  L7_1 = L3_2
end

L8_1.setSeenDailyChallengePrompt = L79_1

function L80_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L7_1 = L0_2
  L0_2 = 0
  L1_2 = 0
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.nrows
  L4_2 = "SELECT timeShown, timeRemaining FROM dailyChallengePrompt WHERE id = 1;"
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L0_2 = L5_2.timeShown
    L1_2 = L5_2.timeRemaining
  end
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.close
  L2_2(L3_2)
  L2_2 = nil
  L7_1 = L2_2
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L3_2 = L2_2 - L0_2
  L3_2 = L1_2 < L3_2
  return L3_2
end

L8_1.timeToShowDailyChallenge = L80_1

function L81_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L7_1 = L0_2
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.exec
  L2_2 = "INSERT OR REPLACE INTO clanInformationPrompt VALUES(1, 1);"
  L0_2(L1_2, L2_2)
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.close
  L0_2(L1_2)
  L0_2 = nil
  L7_1 = L0_2
end

L8_1.didShowClanInfo = L81_1

function L82_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L7_1 = L0_2
  L0_2 = nil
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.nrows
  L3_2 = "SELECT value FROM clanInformationPrompt WHERE id = 1;"
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  for L4_2 in L1_2, L2_2, L3_2 do
    L0_2 = L4_2.value
  end
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
  if L0_2 == nil then
    L0_2 = 0
  end
  L1_2 = L0_2 == 0
  return L1_2
end

L8_1.shouldShowClanInfo = L82_1

function L83_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if not A0_2 then
    return
  end
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L7_1 = L1_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.exec
  L3_2 = "INSERT OR REPLACE INTO gameServiceState VALUES(1,"
  L4_2 = A0_2
  L5_2 = ");"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2(L2_2, L3_2)
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
end

L8_1.setGameServiceState = L83_1

function L84_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L7_1 = L0_2
  L0_2 = 0
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.nrows
  L3_2 = "SELECT value FROM gameServiceState WHERE id = 1;"
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  for L4_2 in L1_2, L2_2, L3_2 do
    L0_2 = L4_2.value
  end
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
  return L0_2
end

L8_1.getGameServiceState = L84_1

function L85_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not A0_2 then
    return
  end
  L1_2 = os
  L1_2 = L1_2.time
  L1_2 = L1_2()
  L2_2 = L0_1
  L2_2 = L2_2.open
  L3_2 = L6_1
  L2_2 = L2_2(L3_2)
  L7_1 = L2_2
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "INSERT OR REPLACE INTO clanPushNotification VALUES("
  L5_2 = A0_2
  L6_2 = ","
  L7_2 = L1_2
  L8_2 = ");"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.close
  L2_2(L3_2)
  L2_2 = nil
  L7_1 = L2_2
end

L8_1.didScheduleClanNotification = L85_1

function L86_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if not A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L7_1 = L1_2
  L1_2 = nil
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.nrows
  L4_2 = "SELECT pushTimestamp FROM clanPushNotification WHERE id = "
  L5_2 = A0_2
  L6_2 = ";"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L1_2 = L5_2.pushTimestamp
  end
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.close
  L2_2(L3_2)
  L2_2 = nil
  L7_1 = L2_2
  if not L1_2 then
    L1_2 = 0
  end
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L3_2 = L2_2 - L1_2
  return L3_2
end

L8_1.timeSinceClanNotificationScheduled = L86_1

function L87_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L7_1 = L1_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.exec
  L3_2 = "INSERT OR REPLACE INTO recordingSettings VALUES(1,"
  L4_2 = A0_2
  L5_2 = ");"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2(L2_2, L3_2)
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2.autoRecord = A0_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
end

L8_1.setAutoRecord = L87_1

function L87_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.autoRecord
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.autoRecord
    return L0_2
  end
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L7_1 = L0_2
  L0_2 = nil
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.nrows
  L3_2 = "SELECT value FROM recordingSettings WHERE id = 1;"
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  for L4_2 in L1_2, L2_2, L3_2 do
    L0_2 = L4_2.value
  end
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
  if L0_2 == nil then
    L0_2 = 0
  end
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2.autoRecord = L0_2
  return L0_2
end

L8_1.shouldAutoRecord = L87_1

function L88_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L1_2 = L1_2.open
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L7_1 = L1_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.exec
  L3_2 = "INSERT OR REPLACE INTO micSettings VALUES(1,"
  L4_2 = A0_2
  L5_2 = ");"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2(L2_2, L3_2)
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2.useMic = A0_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
end

L8_1.setMicUse = L88_1

function L88_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L2_1
  L0_2 = L0_2.databaseData
  L0_2 = L0_2.useMic
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.databaseData
    L0_2 = L0_2.useMic
    return L0_2
  end
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L7_1 = L0_2
  L0_2 = nil
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.nrows
  L3_2 = "SELECT value FROM micSettings WHERE id = 1;"
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  for L4_2 in L1_2, L2_2, L3_2 do
    L0_2 = L4_2.value
  end
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
  if L0_2 == nil then
    L0_2 = 0
  end
  L1_2 = L2_1
  L1_2 = L1_2.databaseData
  L1_2.useMic = L0_2
  return L0_2
end

L8_1.shouldUseMic = L88_1

function L88_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L1_2 = {}
  L0_2.gameInfo = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.gameInfo
  L1_2 = {}
  L0_2.stats = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.gameInfo
  L1_2 = {}
  L0_2.players = L1_2
  L0_2 = L2_1
  L1_2 = {}
  L0_2.gameHostData = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2.iapOverlayActive = false
  L0_2 = L2_1
  L0_2 = L0_2.data
  L1_2 = {}
  L0_2.playerInfo = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L1_2 = {}
  L0_2.achievementProgress = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2.achievementToClaim = 0
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2.dailyToClaim = 0
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2.openURL = false
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2.showPuSkinInfo = true
  L0_2 = L2_1
  L0_2 = L0_2.data
  L1_2 = {}
  L0_2.clans = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.clans
  L1_2 = {}
  L0_2.members = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.clans
  L1_2 = {}
  L0_2.motd = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.clans
  L1_2 = {}
  L0_2.messagelog = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.clans
  L1_2 = {}
  L0_2.eventLog = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.clans
  L1_2 = {}
  L0_2.memberLeagues = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.data
  L1_2 = {}
  L0_2.previousPlayersOnline = L1_2
  L0_2 = L2_1
  L0_2.showingDailyChallange = false
  L0_2 = L2_1
  L0_2.showingSendGift = false
  L0_2 = L2_1
  L1_2 = {}
  L0_2.playerInfo = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.playerInfo
  L1_2 = {}
  L0_2.awards = L1_2
  L0_2 = L2_1
  L0_2.videosLeft = 15
  L0_2 = L2_1
  L0_2.gamesPlayed = 0
  L0_2 = L2_1
  L0_2.gamesPlayedThisSession = 0
  L0_2 = L2_1
  L0_2.goToLobbyCustomPlay = false
  L0_2 = L2_1
  L0_2.showFriendsOnline = true
  L0_2 = L2_1
  L0_2.showLeaguePrize = false
  L0_2 = L2_1
  L1_2 = {}
  L0_2.adsTable = L1_2
  L0_2 = L2_1
  L0_2 = L0_2.adsTable
  L0_2.use = false
  L0_2 = L2_1
  L0_2 = L0_2.adsTable
  L0_2.active = false
  L0_2 = L2_1
  L0_2 = L0_2.adsTable
  L0_2.time = 0
  L0_2 = L2_1
  L0_2 = L0_2.adsTable
  L0_2.showTime = 4000
  L0_2 = L2_1
  L0_2 = L0_2.adsTable
  L0_2.refreshRate = 72000
  L0_2 = L2_1
  L0_2 = L0_2.adsTable
  L1_2 = {}
  L0_2.chances = L1_2
  L0_2 = L2_1
  L0_2.facebookLogin = false
  L0_2 = L2_1
  L1_2 = {}
  L0_2.todayChallenges = L1_2
  L0_2 = L2_1
  L1_2 = {}
  L0_2.bestLevelTimes = L1_2
  L0_2 = L2_1
  L0_2.currentLeague = 5
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.gameInfo
  L0_2.crazyModeActive = false
  L0_2 = L2_1
  L0_2 = L0_2.data
  L0_2 = L0_2.gameInfo
  L0_2.crazyMode = 0
  L0_2 = L2_1
  L0_2.loggedInThisSession = false
  L0_2 = L2_1
  L0_2 = L0_2.analytics
  L0_2 = L0_2.SessionData
  L0_2.createdUserThisSession = false
  L0_2 = L2_1
  L1_2 = {}
  L0_2.clientStatReporting = L1_2
  L0_2 = L9_1
  L0_2()
end

L8_1.initPlayerVariables = L88_1

function L88_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L8_1
  L0_2 = L0_2.initPlayerVariables
  L0_2()
  L0_2 = L8_1
  L0_2 = L0_2.getReceipts
  L0_2 = L0_2()
  L1_2 = 0
  L2_2 = pairs
  L3_2 = L0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2 = L1_2 + 1
  end
  L2_2 = L2_1
  L3_2 = {}
  L4_2 = {}
  L3_2.friends = L4_2
  L4_2 = {}
  L3_2.friendRequests = L4_2
  L4_2 = {}
  L5_2 = {}
  L4_2[1] = L5_2
  L5_2 = {}
  L4_2[2] = L5_2
  L5_2 = {}
  L4_2[3] = L5_2
  L5_2 = {}
  L4_2[4] = L5_2
  L5_2 = {}
  L4_2[5] = L5_2
  L5_2 = {}
  L4_2[6] = L5_2
  L3_2.items = L4_2
  L3_2.money = nil
  L2_2.databaseData = L3_2
  L2_2 = L0_1
  L2_2 = L2_2.open
  L3_2 = L6_1
  L2_2 = L2_2(L3_2)
  L7_1 = L2_2
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "DELETE FROM user_settings;"
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "DELETE FROM playerIdToken;"
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "DELETE FROM facebook;"
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "DELETE FROM user_avatar;"
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "DELETE FROM storedReceipts;"
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "DELETE FROM onboarding;"
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "DELETE FROM onboardingIntro;"
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "DELETE FROM onboardingMoney;"
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "DELETE FROM starterPackLastShown;"
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "DELETE FROM adTime;"
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "DELETE FROM marketNotification;"
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "DELETE FROM push_enabled;"
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "DELETE FROM marketItemId;"
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "DELETE FROM adrallyUse;"
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "DELETE FROM localLeagueData;"
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "DELETE FROM settings WHERE id=5;"
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.exec
  L4_2 = "DELETE FROM currentAdRewardData;"
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.close
  L2_2(L3_2)
  L2_2 = nil
  L7_1 = L2_2
  L2_2 = true
  return L2_2
end

L8_1.reset = L88_1

function L89_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L2_1
  L1_2 = {}
  L2_2 = {}
  L1_2.friends = L2_2
  L2_2 = {}
  L1_2.friendRequests = L2_2
  L2_2 = {}
  L3_2 = {}
  L2_2[1] = L3_2
  L3_2 = {}
  L2_2[2] = L3_2
  L3_2 = {}
  L2_2[3] = L3_2
  L3_2 = {}
  L2_2[4] = L3_2
  L3_2 = {}
  L2_2[5] = L3_2
  L3_2 = {}
  L2_2[6] = L3_2
  L1_2.items = L2_2
  L1_2.money = nil
  L0_2.databaseData = L1_2
  L0_2 = L0_1
  L0_2 = L0_2.open
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  L7_1 = L0_2
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.exec
  L2_2 = "DELETE FROM user_settings;"
  L0_2(L1_2, L2_2)
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.exec
  L2_2 = "DELETE FROM facebook;"
  L0_2(L1_2, L2_2)
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.exec
  L2_2 = "DELETE FROM user_avatar;"
  L0_2(L1_2, L2_2)
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.close
  L0_2(L1_2)
  L0_2 = nil
  L7_1 = L0_2
end

L8_1.resetWithoutReceipts = L89_1
return L8_1
