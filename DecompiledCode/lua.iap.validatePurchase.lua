local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "json"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "lua.iap.base64"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "lua.network.httpsMessageFormat"
L3_1 = L3_1(L4_1)
L4_1 = nil

function L5_1(A0_2)
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
  L3_2 = L1_1
  L3_2 = L3_2.encode
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  return L3_2
end

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1
  L1_2 = L1_2.debugger
  L1_2 = L1_2.debugTable
  L2_2 = "iap"
  L3_2 = "localListener"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.response
  L2_2 = A0_2.isError
  if L2_2 then
    L1_2 = "{\"message\":\"Error: Your purchase was successful, but our server is currently down\"}"
  end
  L2_2 = L0_1
  L2_2 = L2_2.decode
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 == "table" then
    L3_2 = L4_1
    if L3_2 then
      L3_2 = L4_1
      L4_2 = L2_2
      L3_2(L4_2)
    end
  end
end

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = A0_2.listener
  L4_1 = L1_2
  L1_2 = A0_2.testing
  L2_2 = A0_2.productId
  L3_2 = L2_1
  L3_2 = L3_2.config
  L3_2 = L3_2.httpsClient
  L4_2 = A0_2.encodedReceipt
  L5_2 = L2_1
  L5_2 = L5_2.database
  L5_2 = L5_2.getPlayerInformation
  L5_2 = L5_2()
  L5_2 = L5_2.playerId
  L6_2 = L2_1
  L6_2 = L6_2.database
  L6_2 = L6_2.getPlayerInformation
  L6_2 = L6_2()
  L6_2 = L6_2.token
  L7_2 = A0_2.itemId
  L8_2 = nil
  if L1_2 then
    L9_2 = 1
    if L9_2 then
      goto lbl_27
    end
  end
  L9_2 = 0
  ::lbl_27::
  L10_2 = L2_1
  L10_2 = L10_2.analytics
  L10_2 = L10_2.IAPdata
  L10_2.itemType = "gemPack"
  L10_2 = L2_1
  L10_2 = L10_2.analytics
  L10_2 = L10_2.IAPdata
  L10_2.itemId = L2_2
  L10_2 = L2_1
  L10_2 = L10_2.analytics
  L10_2 = L10_2.IAPdata
  L10_2.receipt = L4_2
  if L2_2 and L4_2 and L5_2 and L6_2 then
    L10_2 = L3_1
    L10_2 = L10_2.buyCrystalIOS
    L10_2 = L10_2()
    if L2_2 == "com.dirtybit.funrun2.1001" then
      L11_2 = L3_1
      L11_2 = L11_2.buyProductIOS
      L11_2 = L11_2()
      L10_2 = L11_2
      L7_2 = 1001
      L11_2 = L2_1
      L11_2 = L11_2.analytics
      L11_2 = L11_2.IAPdata
      L11_2.itemType = "boost"
      L11_2 = L2_1
      L11_2 = L11_2.analytics
      L11_2 = L11_2.IAPdata
      L11_2.itemId = "doublecoin"
    elseif L2_2 == "com.dirtybit.funrun2.1003" then
      L11_2 = L3_1
      L11_2 = L11_2.buyProductIOS
      L11_2 = L11_2()
      L10_2 = L11_2
      L7_2 = 1003
      L11_2 = L2_1
      L11_2 = L11_2.analytics
      L11_2 = L11_2.IAPdata
      L11_2.itemType = "boost"
      L11_2 = L2_1
      L11_2 = L11_2.analytics
      L11_2 = L11_2.IAPdata
      L11_2.itemId = "starterpack"
    end
    L11_2 = {}
    L11_2.m = L10_2
    L11_2.r = L4_2
    L11_2.i = L2_2
    L11_2.s = L9_2
    L11_2.p = L5_2
    L11_2.a = L6_2
    L11_2.x = L7_2
    L8_2 = L11_2
  end
  if L8_2 then
    L10_2 = L2_1
    L10_2 = L10_2.debugger
    L10_2 = L10_2.debugTable
    L11_2 = "iap"
    L12_2 = "send purchase to server :"
    L13_2 = L8_2
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = L0_1
    L10_2 = L10_2.encode
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    L11_2 = L2_1
    L11_2 = L11_2.analytics
    L11_2 = L11_2.addBusinessEvent
    L11_2()
    L11_2 = network
    L11_2 = L11_2.request
    L12_2 = L3_2
    L13_2 = "POST"
    L14_2 = L6_1
    L15_2 = {}
    L15_2.body = L10_2
    L11_2(L12_2, L13_2, L14_2, L15_2)
  else
    L10_2 = L4_1
    L11_2 = {}
    L11_2.message = "Error: Invalid purchase, contact us: purchase@dirtybit.no"
    L11_2.deleteReceipt = true
    L10_2(L11_2)
  end
end

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = A0_2.listener
  L4_1 = L1_2
  L1_2 = A0_2.testing
  L2_2 = L2_1
  L2_2 = L2_2.config
  L2_2 = L2_2.httpsClient
  L3_2 = A0_2.receipt
  if not L3_2 then
    L3_2 = "<>"
  end
  L4_2 = A0_2.productId
  L5_2 = A0_2.encodedSignature
  L6_2 = L2_1
  L6_2 = L6_2.database
  L6_2 = L6_2.getPlayerInformation
  L6_2 = L6_2()
  L6_2 = L6_2.playerId
  L7_2 = L2_1
  L7_2 = L7_2.database
  L7_2 = L7_2.getPlayerInformation
  L7_2 = L7_2()
  L7_2 = L7_2.token
  L8_2 = nil
  if L1_2 then
    L9_2 = 1
    if L9_2 then
      goto lbl_30
    end
  end
  L9_2 = 0
  ::lbl_30::
  L10_2 = A0_2.itemId
  if L5_2 == nil then
    L5_2 = 0
  end
  L11_2 = L2_1
  L11_2 = L11_2.analytics
  L11_2 = L11_2.IAPdata
  L11_2.itemType = "gemPack"
  L11_2 = L2_1
  L11_2 = L11_2.analytics
  L11_2 = L11_2.IAPdata
  L11_2.itemId = L4_2
  L11_2 = L2_1
  L11_2 = L11_2.analytics
  L11_2 = L11_2.IAPdata
  L11_2.receipt = L3_2
  L11_2 = L2_1
  L11_2 = L11_2.analytics
  L11_2 = L11_2.IAPdata
  L12_2 = A0_2.signature
  L11_2.signature = L12_2
  if L4_2 and L3_2 and L6_2 and L7_2 and L5_2 then
    L11_2 = print
    L12_2 = "Validtating google"
    L13_2 = L4_2
    L14_2 = L10_2
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = L3_1
    L11_2 = L11_2.buyCrystalGoogle
    L11_2 = L11_2()
    if L4_2 == "com.dirtybit.funrun2.1001" then
      L12_2 = L3_1
      L12_2 = L12_2.buyProductGoogle
      L12_2 = L12_2()
      L11_2 = L12_2
      L10_2 = 1001
      L12_2 = L2_1
      L12_2 = L12_2.analytics
      L12_2 = L12_2.IAPdata
      L12_2.itemType = "boost"
      L12_2 = L2_1
      L12_2 = L12_2.analytics
      L12_2 = L12_2.IAPdata
      L12_2.itemId = "doublecoin"
    elseif L4_2 == "com.dirtybit.funrun2.1003" then
      L12_2 = L3_1
      L12_2 = L12_2.buyProductGoogle
      L12_2 = L12_2()
      L11_2 = L12_2
      L10_2 = 1003
      L12_2 = L2_1
      L12_2 = L12_2.analytics
      L12_2 = L12_2.IAPdata
      L12_2.itemType = "boost"
      L12_2 = L2_1
      L12_2 = L12_2.analytics
      L12_2 = L12_2.IAPdata
      L12_2.itemId = "starterpack"
    end
    L12_2 = {}
    L12_2.m = L11_2
    L12_2.r = L3_2
    L12_2.e = L5_2
    L12_2.i = L4_2
    L12_2.s = L9_2
    L12_2.p = L6_2
    L12_2.a = L7_2
    L12_2.x = L10_2
    L8_2 = L12_2
  end
  if L8_2 then
    L11_2 = L2_1
    L11_2 = L11_2.debugger
    L11_2 = L11_2.debugTable
    L12_2 = "iap"
    L13_2 = "send purchase to server :"
    L14_2 = L8_2
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = L0_1
    L11_2 = L11_2.encode
    L12_2 = L8_2
    L11_2 = L11_2(L12_2)
    L12_2 = L2_1
    L12_2 = L12_2.analytics
    L12_2 = L12_2.addBusinessEvent
    L12_2()
    L12_2 = network
    L12_2 = L12_2.request
    L13_2 = L2_2
    L14_2 = "POST"
    L15_2 = L6_1
    L16_2 = {}
    L16_2.body = L11_2
    L12_2(L13_2, L14_2, L15_2, L16_2)
  else
    L11_2 = L4_1
    L12_2 = {}
    L12_2.message = "Error: Invalid purchase, contact us: purchase@dirtybit.no"
    L12_2.deleteReceipt = true
    L11_2(L12_2)
  end
end

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = A0_2.listener
  L4_1 = L1_2
  L1_2 = A0_2.testing
  L2_2 = L2_1
  L2_2 = L2_2.config
  L2_2 = L2_2.httpsClient
  L3_2 = A0_2.receipt
  if not L3_2 then
    L3_2 = "<>"
  end
  L4_2 = A0_2.productId
  L5_2 = A0_2.encodedSignature
  L6_2 = L2_1
  L6_2 = L6_2.database
  L6_2 = L6_2.getPlayerInformation
  L6_2 = L6_2()
  L6_2 = L6_2.playerId
  L7_2 = L2_1
  L7_2 = L7_2.database
  L7_2 = L7_2.getPlayerInformation
  L7_2 = L7_2()
  L7_2 = L7_2.token
  L8_2 = nil
  if L1_2 then
    L9_2 = 1
    if L9_2 then
      goto lbl_30
    end
  end
  L9_2 = 0
  ::lbl_30::
  L10_2 = A0_2.itemId
  if L5_2 == nil then
    L5_2 = 0
  end
  if L4_2 and L3_2 and L6_2 and L7_2 and L5_2 then
    L11_2 = L3_1
    L11_2 = L11_2.buyCrystalOldGoogle
    L11_2 = L11_2()
    if L4_2 == "com.dirtybit.funrun2.1001" then
      L12_2 = L3_1
      L12_2 = L12_2.buyProductOldGoogle
      L12_2 = L12_2()
      L11_2 = L12_2
      L10_2 = 1001
    elseif L4_2 == "com.dirtybit.funrun2.1003" then
      L12_2 = L3_1
      L12_2 = L12_2.buyProductOldGoogle
      L12_2 = L12_2()
      L11_2 = L12_2
      L10_2 = 1003
    end
    L12_2 = {}
    L12_2.m = L11_2
    L12_2.r = L3_2
    L12_2.e = L5_2
    L12_2.i = L4_2
    L12_2.s = L9_2
    L12_2.p = L6_2
    L12_2.a = L7_2
    L12_2.x = L10_2
    L8_2 = L12_2
  end
  if L8_2 then
    L11_2 = L2_1
    L11_2 = L11_2.debugger
    L11_2 = L11_2.debugTable
    L12_2 = "iap"
    L13_2 = "send purchase to server :"
    L14_2 = L8_2
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = L0_1
    L11_2 = L11_2.encode
    L12_2 = L8_2
    L11_2 = L11_2(L12_2)
    L12_2 = network
    L12_2 = L12_2.request
    L13_2 = L2_2
    L14_2 = "POST"
    L15_2 = L6_1
    L16_2 = {}
    L16_2.body = L11_2
    L12_2(L13_2, L14_2, L15_2, L16_2)
  else
    L11_2 = L4_1
    L12_2 = {}
    L12_2.message = "Error: Invalid purchase, contact us: purchase@dirtybit.no"
    L12_2.deleteReceipt = true
    L11_2(L12_2)
  end
end

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = A0_2.listener
  L4_1 = L1_2
  L1_2 = A0_2.testing
  L2_2 = L2_1
  L2_2 = L2_2.config
  L2_2 = L2_2.httpsClient
  L3_2 = A0_2.receipt
  if not L3_2 then
    L3_2 = "<>"
  end
  L4_2 = A0_2.productId
  L5_2 = A0_2.amazonUser
  L6_2 = L2_1
  L6_2 = L6_2.database
  L6_2 = L6_2.getPlayerInformation
  L6_2 = L6_2()
  L6_2 = L6_2.playerId
  L7_2 = L2_1
  L7_2 = L7_2.database
  L7_2 = L7_2.getPlayerInformation
  L7_2 = L7_2()
  L7_2 = L7_2.token
  L8_2 = nil
  if L1_2 then
    L9_2 = 1
    if L9_2 then
      goto lbl_30
    end
  end
  L9_2 = 0
  ::lbl_30::
  L10_2 = A0_2.itemId
  if L4_2 and L3_2 and L6_2 and L7_2 and L5_2 then
    L11_2 = L3_1
    L11_2 = L11_2.buyCrystalAmazon
    L11_2 = L11_2()
    if L4_2 == "com.dirtybit.funrun2.1001" then
      L12_2 = L3_1
      L12_2 = L12_2.buyProductAmazon
      L12_2 = L12_2()
      L11_2 = L12_2
      L10_2 = 1001
    elseif L4_2 == "com.dirtybit.funrun2.1003" then
      L12_2 = L3_1
      L12_2 = L12_2.buyProductAmazon
      L12_2 = L12_2()
      L11_2 = L12_2
      L10_2 = 1003
    end
    L12_2 = {}
    L12_2.m = L11_2
    L12_2.r = L3_2
    L12_2.z = L5_2
    L12_2.i = L4_2
    L12_2.p = L6_2
    L12_2.a = L7_2
    L12_2.x = L10_2
    L8_2 = L12_2
  end
  if L8_2 then
    L11_2 = L2_1
    L11_2 = L11_2.debugger
    L11_2 = L11_2.debugTable
    L12_2 = "iap"
    L13_2 = "Amazon send purchase to server :"
    L14_2 = L8_2
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = L0_1
    L11_2 = L11_2.encode
    L12_2 = L8_2
    L11_2 = L11_2(L12_2)
    L12_2 = network
    L12_2 = L12_2.request
    L13_2 = L2_2
    L14_2 = "POST"
    L15_2 = L6_1
    L16_2 = {}
    L16_2.body = L11_2
    L12_2(L13_2, L14_2, L15_2, L16_2)
  else
    L11_2 = L4_1
    L12_2 = {}
    L12_2.message = "Error: Invalid purchase, contact us: purchase@dirtybit.no"
    L12_2.deleteReceipt = true
    L11_2(L12_2)
  end
end

L11_1 = {}
L11_1.validateApple = L7_1
L11_1.validateGoogle = L8_1
L11_1.validateAmazon = L10_1
L11_1.validateOldGoogle = L9_1
return L11_1
