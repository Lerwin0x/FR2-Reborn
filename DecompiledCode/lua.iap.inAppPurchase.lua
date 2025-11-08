local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1
L0_1 = {}
L1_1 = require
L2_1 = "json"
L1_1 = L1_1(L2_1)
L2_1 = nil
L3_1 = "com.dirtybit.funrun2.t"
L4_1 = "com.dirtybit.funrun2."
L5_1 = {}
L6_1 = "com.dirtybit.funrun2.t1"
L7_1 = "com.dirtybit.funrun2.t2"
L8_1 = "com.dirtybit.funrun2.t3"
L9_1 = "com.dirtybit.funrun2.t4"
L10_1 = "com.dirtybit.funrun2.t5"
L11_1 = "com.dirtybit.funrun2.1001"
L12_1 = "com.dirtybit.funrun2.1003"
L5_1[1] = L6_1
L5_1[2] = L7_1
L5_1[3] = L8_1
L5_1[4] = L9_1
L5_1[5] = L10_1
L5_1[6] = L11_1
L5_1[7] = L12_1
L6_1 = nil
L7_1 = require
L8_1 = "composer"
L7_1 = L7_1(L8_1)
L8_1 = nil
L9_1 = system
L9_1 = L9_1.getInfo
L10_1 = "environment"
L9_1 = L9_1(L10_1)
L9_1 = "simulator" == L9_1
L10_1 = {}
L11_1 = nil
L12_1 = true

function L13_1(A0_2)
  local L1_2
  L2_1 = A0_2
end

function L14_1(A0_2)
  local L1_2
  if A0_2 <= 50 then
    L1_2 = A0_2 - 0.01
    return L1_2
  else
    L1_2 = A0_2 - 50
    L1_2 = L1_2 * 5
    L1_2 = 49.99 + L1_2
    return L1_2
  end
end

function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2
  L3_2 = ","
  L4_2 = "."
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L1_2 = string
  L1_2 = L1_2.find
  L2_2 = A0_2
  L3_2 = "[0-9]+.?[0-9]*"
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if not L1_2 or not L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = string
  L3_2 = L3_2.sub
  L4_2 = A0_2
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = tonumber
  L5_2 = L3_2
  return L4_2(L5_2)
end

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = L10_1
    L3_2 = L3_1
    L4_2 = A1_2
    L3_2 = L3_2 .. L4_2
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L2_2 = L10_1
      L3_2 = L3_1
      L4_2 = A1_2
      L3_2 = L3_2 .. L4_2
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.localizedPrice
      if L2_2 then
        L2_2 = L15_1
        L3_2 = L10_1
        L4_2 = L3_1
        L5_2 = A1_2
        L4_2 = L4_2 .. L5_2
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.localizedPrice
        L2_2 = L2_2(L3_2)
        if not L2_2 then
          L3_2 = L14_1
          L4_2 = A0_2
          return L3_2(L4_2)
        end
        return L2_2
    end
  end
  else
    L2_2 = L14_1
    L3_2 = A0_2
    return L2_2(L3_2)
  end
end

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L5_1
  L1_2 = L1_2[A0_2]
  L2_2 = print
  L3_2 = ""
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "buyThis storeType "
  L4_2 = L8_1
  L2_2(L3_2, L4_2)
  L2_2 = print
  L3_2 = "productId "
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L8_1
  if L2_2 == 0 then
    L2_2 = L2_1
    if L2_2 then
      L2_2 = L2_1
      L3_2 = L7_1
      L3_2 = L3_2.localized
      L3_2 = L3_2.get
      L4_2 = "Store not available"
      L3_2 = L3_2(L4_2)
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = L6_1
    L2_2 = L2_2.isActive
    if L2_2 == false then
      L2_2 = L2_1
      if L2_2 then
        L2_2 = L2_1
        L3_2 = L7_1
        L3_2 = L3_2.localized
        L3_2 = L3_2.get
        L4_2 = "Store not available"
        L3_2 = L3_2(L4_2)
        L4_2 = true
        L2_2(L3_2, L4_2)
      end
    else
      L2_2 = L6_1
      L2_2 = L2_2.canMakePurchases
      if L2_2 == false then
      elseif L1_2 then
        L2_2 = L7_1
        L2_2 = L2_2.data
        L2_2.iapCallActive = true
        L11_1 = L1_2
        L2_2 = L8_1
        if L2_2 == 1 then
          L2_2 = L6_1
          L2_2 = L2_2.purchase
          L3_2 = {}
          L4_2 = L1_2
          L3_2[1] = L4_2
          L2_2(L3_2)
        else
          L2_2 = L8_1
          if L2_2 == 2 then
            L2_2 = L6_1
            L2_2 = L2_2.purchase
            L3_2 = L1_2
            L2_2(L3_2)
          else
            L2_2 = L8_1
            if L2_2 == 3 then
              L2_2 = L6_1
              L2_2 = L2_2.purchase
              L3_2 = L1_2
              L2_2(L3_2)
            else
              L2_2 = L8_1
              if L2_2 == 4 then
                L2_2 = L6_1
                L2_2 = L2_2.purchase
                L3_2 = {}
                L4_2 = L1_2
                L3_2[1] = L4_2
                L2_2(L3_2)
              end
            end
          end
        end
      end
    end
  end
end

function L18_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = print
  L2_2 = ""
  L1_2(L2_2)
  L1_2 = print
  L2_2 = "buyProduct storeType "
  L3_2 = L8_1
  L1_2(L2_2, L3_2)
  L1_2 = print
  L2_2 = "productId "
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = L4_1
  L2_2 = A0_2
  A0_2 = L1_2 .. L2_2
  L1_2 = print
  L2_2 = "Full productId "
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = L8_1
  if L1_2 == 0 then
    L1_2 = L2_1
    if L1_2 then
      L1_2 = L2_1
      L2_2 = L7_1
      L2_2 = L2_2.localized
      L2_2 = L2_2.get
      L3_2 = "Store not available"
      L2_2 = L2_2(L3_2)
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = L6_1
    L1_2 = L1_2.isActive
    if L1_2 == false then
      L1_2 = L2_1
      if L1_2 then
        L1_2 = L2_1
        L2_2 = L7_1
        L2_2 = L2_2.localized
        L2_2 = L2_2.get
        L3_2 = "Store not available"
        L2_2 = L2_2(L3_2)
        L3_2 = true
        L1_2(L2_2, L3_2)
      end
    else
      L1_2 = L6_1
      L1_2 = L1_2.canMakePurchases
      if L1_2 == false then
      elseif A0_2 then
        L1_2 = L7_1
        L1_2 = L1_2.data
        L1_2.iapCallActive = true
        L11_1 = A0_2
        L1_2 = L8_1
        if L1_2 == 1 then
          L1_2 = L6_1
          L1_2 = L1_2.purchase
          L2_2 = {}
          L3_2 = A0_2
          L2_2[1] = L3_2
          L1_2(L2_2)
        else
          L1_2 = L8_1
          if L1_2 == 2 then
            L1_2 = L6_1
            L1_2 = L1_2.purchase
            L2_2 = A0_2
            L1_2(L2_2)
          else
            L1_2 = L8_1
            if L1_2 == 3 then
              L1_2 = L6_1
              L1_2 = L1_2.purchase
              L2_2 = A0_2
              L1_2(L2_2)
            else
              L1_2 = L8_1
              if L1_2 == 4 then
                L1_2 = L6_1
                L1_2 = L1_2.purchase
                L2_2 = {}
                L3_2 = A0_2
                L2_2[1] = L3_2
                L1_2(L2_2)
              end
            end
          end
        end
      end
    end
  end
end

function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L7_1
  L0_2 = L0_2.database
  L0_2 = L0_2.getReceipts
  L0_2 = L0_2()
  L1_2 = #L0_2
  if 0 < L1_2 then
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3
      
      L0_3 = L0_2
      L1_3 = L0_2
      L1_3 = #L1_3
      L0_3 = L0_3[L1_3]
      L1_3 = L7_1
      L1_3 = L1_3.commHttps
      L1_3 = L1_3.validateReceipt
      L2_3 = L0_3.transactionData
      L3_3 = L0_3.storeType
      L1_3(L2_3, L3_3)
      L1_3 = table
      L1_3 = L1_3.remove
      L2_3 = L0_2
      L3_3 = L0_2
      L3_3 = #L3_3
      L1_3(L2_3, L3_3)
    end
    
    L2_2 = timer
    L2_2 = L2_2.performWithDelay
    L3_2 = 500
    L4_2 = L1_2
    L5_2 = #L0_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = true
    return L2_2
  end
  L1_2 = false
  return L1_2
end

function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = false
  L3_2 = 0
  L4_2 = L11_1
  if L4_2 then
    L2_2 = true
    L4_2 = L11_1
    L5_2 = L5_1
    L5_2 = L5_2[1]
    if L4_2 == L5_2 then
      L3_2 = 499
      L4_2 = L7_1
      L4_2 = L4_2.analytics
      L4_2 = L4_2.ResourceData
      L4_2.itemType = "gemPack"
      L4_2 = L7_1
      L4_2 = L4_2.analytics
      L4_2 = L4_2.ResourceData
      L5_2 = L11_1
      L4_2.itemId = L5_2
    else
      L4_2 = L11_1
      L5_2 = L5_1
      L5_2 = L5_2[2]
      if L4_2 == L5_2 then
        L3_2 = 999
        L4_2 = L7_1
        L4_2 = L4_2.analytics
        L4_2 = L4_2.ResourceData
        L4_2.itemType = "gemPack"
        L4_2 = L7_1
        L4_2 = L4_2.analytics
        L4_2 = L4_2.ResourceData
        L5_2 = L11_1
        L4_2.itemId = L5_2
      else
        L4_2 = L11_1
        L5_2 = L5_1
        L5_2 = L5_2[3]
        if L4_2 == L5_2 then
          L3_2 = 1999
          L4_2 = L7_1
          L4_2 = L4_2.analytics
          L4_2 = L4_2.ResourceData
          L4_2.itemType = "gemPack"
          L4_2 = L7_1
          L4_2 = L4_2.analytics
          L4_2 = L4_2.ResourceData
          L5_2 = L11_1
          L4_2.itemId = L5_2
        else
          L4_2 = L11_1
          L5_2 = L5_1
          L5_2 = L5_2[4]
          if L4_2 == L5_2 then
            L3_2 = 4999
            L4_2 = L7_1
            L4_2 = L4_2.analytics
            L4_2 = L4_2.ResourceData
            L4_2.itemType = "gemPack"
            L4_2 = L7_1
            L4_2 = L4_2.analytics
            L4_2 = L4_2.ResourceData
            L5_2 = L11_1
            L4_2.itemId = L5_2
          else
            L4_2 = L11_1
            L5_2 = L5_1
            L5_2 = L5_2[5]
            if L4_2 == L5_2 then
              L3_2 = 9999
              L4_2 = L7_1
              L4_2 = L4_2.analytics
              L4_2 = L4_2.ResourceData
              L4_2.itemType = "gemPack"
              L4_2 = L7_1
              L4_2 = L4_2.analytics
              L4_2 = L4_2.ResourceData
              L5_2 = L11_1
              L4_2.itemId = L5_2
            else
              L4_2 = L5_1
              L4_2 = #L4_2
              if 5 < L4_2 then
                L4_2 = L11_1
                L5_2 = L5_1
                L5_2 = L5_2[6]
                if L4_2 == L5_2 then
                  L3_2 = 499
              end
              else
                L4_2 = L5_1
                L4_2 = #L4_2
                if 6 < L4_2 then
                  L4_2 = L11_1
                  L5_2 = L5_1
                  L5_2 = L5_2[7]
                  if L4_2 == L5_2 then
                    L3_2 = 699
                    L4_2 = L7_1
                    L4_2 = L4_2.analytics
                    L4_2 = L4_2.ResourceData
                    L4_2.itemType = "boost"
                    L4_2 = L7_1
                    L4_2 = L4_2.analytics
                    L4_2 = L4_2.ResourceData
                    L4_2.itemId = "starterpack"
                end
                else
                  L2_2 = false
                end
              end
            end
          end
        end
      end
    end
  end
  if L2_2 and 0 < L3_2 then
    L4_2 = L7_1
    L4_2 = L4_2.analytics
    L4_2 = L4_2.IAPdata
    L4_2.amount = L3_2
  end
end

function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L7_1
  L1_2 = L1_2.debugger
  L1_2 = L1_2.debugTable
  L2_2 = "iap"
  L3_2 = "loadProductsCallback :"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  if A0_2 then
    L1_2 = A0_2.products
    if L1_2 then
      L1_2 = 1
      L2_2 = A0_2.products
      L2_2 = #L2_2
      L3_2 = 1
      for L4_2 = L1_2, L2_2, L3_2 do
        L5_2 = L10_1
        L6_2 = A0_2.products
        L6_2 = L6_2[L4_2]
        L6_2 = L6_2.productIdentifier
        L7_2 = A0_2.products
        L7_2 = L7_2[L4_2]
        L5_2[L6_2] = L7_2
      end
      L1_2 = L7_1
      L1_2 = L1_2.debugger
      L1_2 = L1_2.debugTable
      L2_2 = "iap"
      L3_2 = "validProducts from store:"
      L4_2 = L10_1
      L1_2(L2_2, L3_2, L4_2)
    end
  end
  L1_2 = {}
  L1_2.name = "iapDone"
  L2_2 = Runtime
  L3_2 = L2_2
  L2_2 = L2_2.dispatchEvent
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2
  L3_2 = ","
  L4_2 = "."
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L1_2 = string
  L1_2 = L1_2.find
  L2_2 = A0_2
  L3_2 = "[^%d.]+"
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = ""
  if L1_2 and L2_2 then
    L4_2 = string
    L4_2 = L4_2.sub
    L5_2 = A0_2
    L6_2 = L1_2
    L7_2 = L2_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
    if not L3_2 then
      L3_2 = ""
    end
  end
  return L3_2
end

function L23_1()
  local L0_2, L1_2, L2_2
  L0_2 = L7_1
  L0_2 = L0_2.debugger
  L0_2 = L0_2.debugPrint
  L1_2 = "iap"
  L2_2 = "loadProducts"
  L0_2(L1_2, L2_2)
  L0_2 = L9_1
  if not L0_2 then
    L0_2 = L6_1
    L0_2 = L0_2.isActive
    if not L0_2 then
      goto lbl_42
    end
  end
  L0_2 = L9_1
  if not L0_2 then
    L0_2 = L6_1
    L0_2 = L0_2.canLoadProducts
    if L0_2 then
      L0_2 = L7_1
      L0_2 = L0_2.debugger
      L0_2 = L0_2.debugPrint
      L1_2 = "iap"
      L2_2 = "canLoadProducts"
      L0_2(L1_2, L2_2)
      L0_2 = L6_1
      L0_2 = L0_2.loadProducts
      L1_2 = L5_1
      L2_2 = L21_1
      L0_2(L1_2, L2_2)
  end
  else
    L0_2 = L7_1
    L0_2 = L0_2.debugger
    L0_2 = L0_2.debugPrint
    L1_2 = "iap"
    L2_2 = "cantLoadProducts"
    L0_2(L1_2, L2_2)
    L0_2 = L21_1
    L0_2()
    goto lbl_45
    ::lbl_42::
    L0_2 = print
    L1_2 = "WARNING: iap not supported on this device"
    L0_2(L1_2)
  end
  ::lbl_45::
end

function L24_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = L10_1
    L2_2 = L3_1
    L3_2 = A0_2
    L2_2 = L2_2 .. L3_2
    L1_2 = L1_2[L2_2]
    if L1_2 then
      L1_2 = L10_1
      L2_2 = L3_1
      L3_2 = A0_2
      L2_2 = L2_2 .. L3_2
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.localizedPrice
      return L1_2
  end
  else
    L1_2 = L12_1
    if L1_2 then
      L1_2 = false
      L12_1 = L1_2
      L1_2 = L23_1
      L1_2()
    end
    L1_2 = "error"
    return L1_2
  end
end

function L25_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = L10_1
    L2_2 = L4_1
    L3_2 = A0_2
    L2_2 = L2_2 .. L3_2
    L1_2 = L1_2[L2_2]
    if L1_2 then
      L1_2 = L10_1
      L2_2 = L4_1
      L3_2 = A0_2
      L2_2 = L2_2 .. L3_2
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.localizedPrice
      return L1_2
  end
  else
    L1_2 = L12_1
    if L1_2 then
      L1_2 = false
      L12_1 = L1_2
      L1_2 = L23_1
      L1_2()
    end
    L1_2 = "error"
    return L1_2
  end
end

function L26_1()
  local L0_2, L1_2, L2_2, L3_2
  
  function L0_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = true
    L3_3 = L7_1
    L3_3 = L3_3.debugger
    L3_3 = L3_3.debugTable
    L4_3 = "iap"
    L5_3 = "transactionCallback :"
    L6_3 = A0_3
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = A0_3.name
    if L3_3 == "init" then
      L3_3 = L6_1
      L3_3 = L3_3.isActive
      if not L3_3 then
        L3_3 = 0
        L8_1 = L3_3
      end
      L3_3 = L23_1
      L3_3()
      return
    end
    L3_3 = A0_3.transaction
    L3_3 = L3_3.state
    if L3_3 == "purchased" then
      L3_3 = L7_1
      L3_3 = L3_3.localized
      L3_3 = L3_3.get
      L4_3 = "VerifyingPurchase"
      L3_3 = L3_3(L4_3)
      L1_3 = L3_3
      L2_3 = false
      L3_3 = L8_1
      if L3_3 ~= 2 then
        L3_3 = L20_1
        L4_3 = L8_1
        L5_3 = A0_3.transaction
        L5_3 = L5_3.productIdentifier
        L3_3(L4_3, L5_3)
        L3_3 = L7_1
        L3_3 = L3_3.commHttps
        L3_3 = L3_3.buyItem
        L4_3 = A0_3.transaction
        L5_3 = L8_1
        L3_3(L4_3, L5_3)
        L3_3 = L7_1
        L3_3 = L3_3.localized
        L3_3 = L3_3.get
        L4_3 = "Purchasing"
        L3_3 = L3_3(L4_3)
        L1_3 = L3_3
        L2_3 = false
        L3_3 = L7_1
        L3_3 = L3_3.data
        L3_3.iapCallActive = false
      else
        L3_3 = L8_1
        if L3_3 == 2 then
          L3_3 = A0_3.transaction
          L3_3 = L3_3.productIdentifier
          L4_3 = L1_1
          L4_3 = L4_3.decode
          L5_3 = A0_3.transaction
          L5_3 = L5_3.originalJson
          L4_3 = L4_3(L5_3)
          L5_3 = L4_3.purchaseState
          L6_3 = tonumber
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          if L6_3 == 0 then
            L6_3 = L6_1
            L6_3 = L6_3.consumePurchase
            L7_3 = L3_3
            L6_3(L7_3)
          else
            L6_3 = print
            L7_3 = "WARNING: state = "
            L8_3 = L5_3
            L6_3(L7_3, L8_3)
            L6_3 = L7_1
            L6_3 = L6_3.localized
            L6_3 = L6_3.get
            L7_3 = "PurchaseFailed"
            L6_3 = L6_3(L7_3)
            L1_3 = L6_3
            L2_3 = true
            L6_3 = L7_1
            L6_3 = L6_3.data
            L6_3.iapCallActive = false
          end
        end
      end
    else
      L3_3 = A0_3.transaction
      L3_3 = L3_3.state
      if L3_3 == "consumed" then
        L3_3 = L1_1
        L3_3 = L3_3.decode
        L4_3 = A0_3.transaction
        L4_3 = L4_3.originalJson
        L3_3 = L3_3(L4_3)
        L4_3 = L3_3.purchaseState
        L5_3 = tonumber
        L6_3 = L4_3
        L5_3 = L5_3(L6_3)
        if L5_3 == 0 then
          L5_3 = L20_1
          L6_3 = L8_1
          L7_3 = A0_3.transaction
          L7_3 = L7_3.productIdentifier
          L5_3(L6_3, L7_3)
          L5_3 = L7_1
          L5_3 = L5_3.commHttps
          L5_3 = L5_3.buyItem
          L6_3 = A0_3.transaction
          L7_3 = L8_1
          L5_3(L6_3, L7_3)
          L5_3 = L7_1
          L5_3 = L5_3.localized
          L5_3 = L5_3.get
          L6_3 = "Purchasing"
          L5_3 = L5_3(L6_3)
          L1_3 = L5_3
          L2_3 = false
          L5_3 = L7_1
          L5_3 = L5_3.data
          L5_3.iapCallActive = false
        else
          L5_3 = print
          L6_3 = "WARNING: state = "
          L7_3 = L4_3
          L5_3(L6_3, L7_3)
          L5_3 = L7_1
          L5_3 = L5_3.localized
          L5_3 = L5_3.get
          L6_3 = "PurchaseFailed"
          L5_3 = L5_3(L6_3)
          L1_3 = L5_3
          L5_3 = L7_1
          L5_3 = L5_3.data
          L5_3.iapCallActive = false
        end
      else
        L3_3 = A0_3.transaction
        L3_3 = L3_3.state
        if L3_3 == "cancelled" then
          L1_3 = ""
          L3_3 = L7_1
          L3_3 = L3_3.data
          L3_3.iapCallActive = false
        else
          L3_3 = A0_3.transaction
          L3_3 = L3_3.state
          if L3_3 == "failed" then
            L3_3 = L8_1
            if L3_3 == 2 then
              L3_3 = L11_1
              if L3_3 then
                L3_3 = A0_3.transaction
                L3_3 = L3_3.errorType
                if L3_3 == 7 then
                  L3_3 = print
                  L4_3 = "WARNING: already owns item, try to use it "
                  L5_3 = L11_1
                  L3_3(L4_3, L5_3)
                  L3_3 = L6_1
                  L3_3 = L3_3.consumePurchase
                  L4_3 = L11_1
                  L3_3(L4_3)
                  return
                end
              end
            end
            L3_3 = L8_1
            if L3_3 ~= 2 then
              L3_3 = L8_1
              if L3_3 ~= 3 then
                goto lbl_204
              end
            end
            L3_3 = tostring
            L4_3 = A0_3.transaction
            L4_3 = L4_3.errorType
            L3_3 = L3_3(L4_3)
            if L3_3 == "-1005" then
              L3_3 = L8_1
              if L3_3 == 2 then
                L1_3 = ""
            end
            else
              L3_3 = L7_1
              L3_3 = L3_3.localized
              L3_3 = L3_3.get
              L4_3 = "PurchaseFailed"
              L3_3 = L3_3(L4_3)
              L4_3 = tostring
              L5_3 = A0_3.transaction
              L5_3 = L5_3.errorString
              L4_3 = L4_3(L5_3)
              L1_3 = L3_3 .. L4_3
              goto lbl_219
              ::lbl_204::
              L3_3 = L7_1
              L3_3 = L3_3.localized
              L3_3 = L3_3.get
              L4_3 = "PurchaseFailed"
              L3_3 = L3_3(L4_3)
              L4_3 = tostring
              L5_3 = A0_3.transaction
              L5_3 = L5_3.errorType
              L4_3 = L4_3(L5_3)
              L5_3 = " - "
              L6_3 = tostring
              L7_3 = A0_3.transaction
              L7_3 = L7_3.errorString
              L6_3 = L6_3(L7_3)
              L1_3 = L3_3 .. L4_3 .. L5_3 .. L6_3
            end
            ::lbl_219::
            L3_3 = L7_1
            L3_3 = L3_3.data
            L3_3.iapCallActive = false
          else
            L1_3 = "UnknownError"
            L3_3 = L7_1
            L3_3 = L3_3.data
            L3_3.iapCallActive = false
          end
        end
      end
    end
    L3_3 = L2_1
    if L3_3 then
      L3_3 = L2_1
      L4_3 = L1_3
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
    end
    L3_3 = L6_1
    L3_3 = L3_3.finishTransaction
    L4_3 = A0_3.transaction
    L3_3(L4_3)
  end
  
  L1_2 = require
  L2_2 = "store"
  L1_2 = L1_2(L2_2)
  L6_1 = L1_2
  L1_2 = L6_1
  L1_2 = L1_2.availableStores
  L1_2 = L1_2.apple
  if L1_2 then
    L1_2 = L7_1
    L1_2 = L1_2.debugger
    L1_2 = L1_2.debugPrint
    L2_2 = "iap"
    L3_2 = "Use Apple store"
    L1_2(L2_2, L3_2)
    L1_2 = L6_1
    L1_2 = L1_2.init
    L2_2 = "apple"
    L3_2 = L0_2
    L1_2(L2_2, L3_2)
    L1_2 = 1
    L8_1 = L1_2
    L1_2 = L23_1
    L1_2()
  else
    L1_2 = system
    L1_2 = L1_2.getInfo
    L2_2 = "targetAppStore"
    L1_2 = L1_2(L2_2)
    if L1_2 == "amazon" then
      L1_2 = L7_1
      L1_2 = L1_2.debugger
      L1_2 = L1_2.debugPrint
      L2_2 = "iap"
      L3_2 = "Use Amazon store"
      L1_2(L2_2, L3_2)
      L1_2 = require
      L2_2 = "plugin.amazon.iap"
      L1_2 = L1_2(L2_2)
      L6_1 = L1_2
      L1_2 = L6_1
      L1_2 = L1_2.init
      L2_2 = L0_2
      L1_2(L2_2)
      L1_2 = 3
      L8_1 = L1_2
      L1_2 = L23_1
      L1_2()
    else
      L1_2 = L6_1
      L1_2 = L1_2.availableStores
      L1_2 = L1_2.google
      if L1_2 then
        L1_2 = L7_1
        L1_2 = L1_2.debugger
        L1_2 = L1_2.debugPrint
        L2_2 = "iap"
        L3_2 = "Use Google store"
        L1_2(L2_2, L3_2)
        L1_2 = require
        L2_2 = "plugin.google.iap.v3"
        L1_2 = L1_2(L2_2)
        L6_1 = L1_2
        L1_2 = L6_1
        L1_2 = L1_2.init
        L2_2 = "google"
        L3_2 = L0_2
        L1_2(L2_2, L3_2)
        L1_2 = print
        L2_2 = "Using Google's Android In-App Billing system."
        L1_2(L2_2)
        L1_2 = 2
        L8_1 = L1_2
      else
        L1_2 = print
        L2_2 = "WARNING: iap no store supported on this device"
        L1_2(L2_2)
        L1_2 = 0
        L8_1 = L1_2
      end
    end
  end
end

function L27_1()
  local L0_2, L1_2
  L0_2 = L8_1
  if L0_2 then
    L0_2 = L8_1
    return L0_2
  end
  L0_2 = 0
  return L0_2
end

L0_1.initInAppPurchase = L26_1
L0_1.setInAppPurchaseCallback = L13_1
L0_1.buyThis = L17_1
L0_1.buyProduct = L18_1
L0_1.restoreReceipts = L19_1
L0_1.getStoreType = L27_1
L0_1.getLocalizedPrice = L24_1
L0_1.getLocalizedPriceForProductId = L25_1
L0_1.getCurrency = L22_1
L0_1.getPrice = L16_1
return L0_1
