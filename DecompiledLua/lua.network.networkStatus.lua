local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = require
L2_1 = "network"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)

function L3_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L0_2 = L0_2.getConnectionStatus
  L0_2 = L0_2()
  L1_2 = L0_2.isConnected
  if L1_2 then
  end
  L1_2 = L0_2.isMobile
  if L1_2 then
    L1_2 = L2_1
    L1_2.wifiOn = false
  else
    L1_2 = L2_1
    L1_2.wifiOn = true
  end
end

L0_1.checkStatus = L3_1
return L0_1
