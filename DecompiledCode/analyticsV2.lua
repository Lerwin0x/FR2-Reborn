local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = system
L1_1 = L1_1.getInfo
L2_1 = "environment"
L1_1 = L1_1(L2_1)
L1_1 = "simulator" == L1_1
L2_1 = 30
L3_1 = 0
L4_1 = {}
L5_1 = L0_1.config
L5_1 = L5_1.gameAnalytics
if L5_1 then
  L5_1 = require
  L6_1 = "plugin.gameanalytics_v2"
  L5_1 = L5_1(L6_1)
  L4_1.plugin = L5_1
  L5_1 = L4_1.plugin
  L5_1 = L5_1.setEnabledManualSessionHandling
  L6_1 = true
  L5_1(L6_1)
  L5_1 = L4_1.plugin
  L5_1 = L5_1.configureAvailableResourceCurrencies
  L6_1 = {}
  L7_1 = "gem"
  L8_1 = "coin"
  L9_1 = "spin"
  L10_1 = "gift"
  L6_1[1] = L7_1
  L6_1[2] = L8_1
  L6_1[3] = L9_1
  L6_1[4] = L10_1
  L5_1(L6_1)
  L5_1 = L4_1.plugin
  L5_1 = L5_1.configureAvailableResourceItemTypes
  L6_1 = {}
  L7_1 = "accessory"
  L8_1 = "powerupSkin"
  L9_1 = "rewards"
  L10_1 = "misc"
  L11_1 = "gemPack"
  L12_1 = "boost"
  L13_1 = "iap"
  L14_1 = "sale"
  L15_1 = "clanSupporter"
  L6_1[1] = L7_1
  L6_1[2] = L8_1
  L6_1[3] = L9_1
  L6_1[4] = L10_1
  L6_1[5] = L11_1
  L6_1[6] = L12_1
  L6_1[7] = L13_1
  L6_1[8] = L14_1
  L6_1[9] = L15_1
  L5_1(L6_1)
  L5_1 = L4_1.plugin
  L5_1 = L5_1.configureAvailableCustomDimensions01
  L6_1 = {}
  L7_1 = "none"
  L8_1 = "wood"
  L9_1 = "bronze"
  L10_1 = "silver"
  L11_1 = "gold"
  L12_1 = "diamond"
  L13_1 = "elite"
  L6_1[1] = L7_1
  L6_1[2] = L8_1
  L6_1[3] = L9_1
  L6_1[4] = L10_1
  L6_1[5] = L11_1
  L6_1[6] = L12_1
  L6_1[7] = L13_1
  L5_1(L6_1)
  L5_1 = L4_1.plugin
  L5_1 = L5_1.configureAvailableCustomDimensions02
  L6_1 = {}
  L7_1 = "loner"
  L8_1 = "friends"
  L9_1 = "clan"
  L10_1 = "clanAndFriends"
  L6_1[1] = L7_1
  L6_1[2] = L8_1
  L6_1[3] = L9_1
  L6_1[4] = L10_1
  L5_1(L6_1)
  L5_1 = L4_1.plugin
  L5_1 = L5_1.configureAvailableCustomDimensions03
  L6_1 = {}
  L7_1 = "A"
  L8_1 = "B"
  L9_1 = "C"
  L10_1 = "D"
  L11_1 = "E"
  L6_1[1] = L7_1
  L6_1[2] = L8_1
  L6_1[3] = L9_1
  L6_1[4] = L10_1
  L6_1[5] = L11_1
  L5_1(L6_1)
  L5_1 = L4_1.plugin
  L5_1 = L5_1.configureBuild
  L6_1 = L0_1.config
  L6_1 = L6_1.fullVersion
  L5_1(L6_1)
else
  L5_1 = {}
  L4_1.plugin = L5_1
  L5_1 = L4_1.plugin
  
  function L6_1(A0_2, A1_2)
  end
  
  L5_1.init = L6_1
  
  function L5_1(A0_2, A1_2)
  end
  
  L4_1.setLeagueDimension = L5_1
  
  function L5_1(A0_2, A1_2)
  end
  
  L4_1.setSocialDimension = L5_1
  
  function L5_1(A0_2, A1_2)
  end
  
  L4_1.setABtestDimension = L5_1
  
  function L5_1()
    local L0_2, L1_2
  end
  
  L4_1.startSession = L5_1
  
  function L5_1()
    local L0_2, L1_2
  end
  
  L4_1.endSession = L5_1
  
  function L5_1(A0_2, A1_2)
  end
  
  L4_1.newEvent = L5_1
  
  function L5_1(A0_2, A1_2)
  end
  
  L4_1.addDesignEvent = L5_1
  
  function L5_1(A0_2, A1_2)
  end
  
  L4_1.addResourceEvent = L5_1
  
  function L5_1(A0_2, A1_2)
  end
  
  L4_1.addBusinessEvent = L5_1
  L5_1 = {}
  L4_1.SessionData = L5_1
  L5_1 = {}
  L4_1.IAPdata = L5_1
  L5_1 = {}
  L4_1.ResourceData = L5_1
end
L5_1 = nil
L6_1 = nil

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1
  L1_2 = L1_2.getSceneName
  L2_2 = "overlay"
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = L0_1
    L1_2 = L1_2.getSceneName
    L2_2 = "current"
    L1_2 = L1_2(L2_2)
  end
  L2_2 = A0_2.errorMessage
  L3_2 = A0_2.stackTrace
  L2_2 = L2_2 .. L3_2
  if L1_2 then
    L3_2 = L2_2
    L4_2 = [[
 
 in ]]
    L5_2 = L1_2
    L6_2 = " v: "
    L7_2 = L0_1
    L7_2 = L7_2.config
    L7_2 = L7_2.fullVersion
    L2_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
  end
  L3_2 = print
  L4_2 = "unhandledError: "
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = L3_1
  L4_2 = L2_1
  if L3_2 < L4_2 then
    L3_2 = L3_1
    L3_2 = L3_2 + 1
    L3_1 = L3_2
    L3_2 = L4_1
    L3_2 = L3_2.plugin
    L3_2 = L3_2.addErrorEvent
    L4_2 = {}
    L4_2.message = L2_2
    L4_2.severity = "critical"
    L3_2(L4_2)
  end
end

function L6_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L1_1
  if not L0_2 then
    L0_2 = Runtime
    L1_2 = L0_2
    L0_2 = L0_2.addEventListener
    L2_2 = "unhandledError"
    L3_2 = L5_1
    L0_2(L1_2, L2_2, L3_2)
  end
end

L7_1 = L0_1.config
L7_1 = L7_1.gameAnalytics
if L7_1 then
  L7_1 = L4_1.plugin
  L7_1 = L7_1.addDesignEvent
  L4_1.addDesignEvent = L7_1
  L7_1 = L4_1.plugin
  L7_1 = L7_1.setCustomDimension01
  L4_1.setLeagueDimension = L7_1
  L7_1 = L4_1.plugin
  L7_1 = L7_1.setCustomDimension02
  L4_1.setSocialDimension = L7_1
  L7_1 = L4_1.plugin
  L7_1 = L7_1.setCustomDimension03
  L4_1.setABtestDimension = L7_1
  
  function L7_1(A0_2, A1_2)
  end
  
  L4_1.newEvent = L7_1
  
  function L7_1()
    local L0_2, L1_2
    L0_2 = L4_1
    L0_2 = L0_2.plugin
    L0_2 = L0_2.startSession
    L0_2()
  end
  
  L4_1.startSession = L7_1
  
  function L7_1()
    local L0_2, L1_2
    L0_2 = L4_1
    L0_2 = L0_2.plugin
    L0_2 = L0_2.endSession
    L0_2()
  end
  
  L4_1.endSession = L7_1
  
  function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
    local L5_2, L6_2, L7_2, L8_2
    L5_2 = math
    L5_2 = L5_2.abs
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if not A4_2 then
      A4_2 = "unknown"
    end
    L6_2 = A4_2
    L7_2 = ""
    A4_2 = L6_2 .. L7_2
    L6_2 = {}
    L6_2.flowType = A0_2
    L6_2.currency = A1_2
    L6_2.amount = L5_2
    L6_2.itemType = A3_2
    L6_2.itemId = A4_2
    L7_2 = L4_1
    L7_2 = L7_2.plugin
    L7_2 = L7_2.addResourceEvent
    L8_2 = L6_2
    L7_2(L8_2)
    L7_2 = L4_1
    L8_2 = {}
    L7_2.ResourceData = L8_2
  end
  
  L4_1.addResourceEvent = L7_1
  
  function L7_1()
    local L0_2, L1_2
    L0_2 = print
    L1_2 = "IAP event."
    L0_2(L1_2)
    L0_2 = L4_1
    L0_2 = L0_2.IAPdata
    if L0_2 then
      L0_2 = L4_1
      L0_2 = L0_2.IAPdata
      L0_2 = L0_2.cartType
      if L0_2 == nil then
        L0_2 = L4_1
        L0_2 = L0_2.IAPdata
        L0_2.cartType = "missing"
      end
      L0_2 = L4_1
      L0_2 = L0_2.IAPdata
      L0_2.currency = "USD"
      L0_2 = L4_1
      L0_2 = L0_2.IAPdata
      L0_2 = L0_2.currency
      if L0_2 then
        L0_2 = L4_1
        L0_2 = L0_2.IAPdata
        L0_2 = L0_2.itemType
        if L0_2 then
          L0_2 = L4_1
          L0_2 = L0_2.IAPdata
          L0_2 = L0_2.itemId
          if L0_2 then
            L0_2 = print
            L1_2 = "Send event."
            L0_2(L1_2)
            L0_2 = L4_1
            L0_2 = L0_2.plugin
            L0_2 = L0_2.addBusinessEvent
            L1_2 = L4_1
            L1_2 = L1_2.IAPdata
            L0_2(L1_2)
        end
      end
      else
        L0_2 = print
        L1_2 = "Warning: Could not send event. Missing parameters."
        L0_2(L1_2)
      end
    end
    L0_2 = L4_1
    L1_2 = {}
    L0_2.IAPdata = L1_2
  end
  
  L4_1.addBusinessEvent = L7_1
  
  function L7_1(A0_2, A1_2)
    local L2_2, L3_2
    L2_2 = L4_1
    L2_2 = L2_2.plugin
    L2_2 = L2_2.addDesignEvent
    L3_2 = {}
    L3_2.eventId = A0_2
    L3_2.value = A1_2
    L2_2(L3_2)
  end
  
  L4_1.addDesignEvent = L7_1
  L7_1 = {}
  L4_1.IAPdata = L7_1
  L7_1 = {}
  L4_1.ResourceData = L7_1
  L7_1 = {}
  L4_1.SessionData = L7_1
end
L7_1 = L0_1.config
L7_1 = L7_1.gameAnalytics
if L7_1 then
  L7_1 = L4_1.plugin
  L7_1 = L7_1.initialize
  L8_1 = {}
  L9_1 = L0_1.config
  L9_1 = L9_1.GAGameKey
  L8_1.gameKey = L9_1
  L9_1 = L0_1.config
  L9_1 = L9_1.GASecretKey
  L8_1.gameSecret = L9_1
  L7_1(L8_1)
  L7_1 = L6_1
  L7_1()
else
  L7_1 = print
  L8_1 = "ERROR: no analytics, turn on in config"
  L7_1(L8_1)
end
return L4_1
