local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = nil
L3_1 = 0
L4_1 = false
L5_1 = false
L6_1 = nil
L7_1 = nil

function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2.phase
  if L1_2 == "ended" then
  end
  L1_2 = true
  return L1_2
end

L9_1 = display
L9_1 = L9_1.newRect
L10_1 = 0
L11_1 = 0
L12_1 = display
L12_1 = L12_1.contentWidth
L13_1 = display
L13_1 = L13_1.contentHeight
L9_1 = L9_1(L10_1, L11_1, L12_1, L13_1)
L9_1.anchorX = 0
L9_1.anchorY = 0
L11_1 = L9_1
L10_1 = L9_1.setFillColor
L12_1 = 0
L13_1 = 0
L14_1 = 0
L15_1 = 0.7843137254901961
L10_1(L11_1, L12_1, L13_1, L14_1, L15_1)
L9_1.x = 0
L9_1.y = 0
L9_1.isVisible = false
L11_1 = L9_1
L10_1 = L9_1.addEventListener
L12_1 = "touch"
L13_1 = L8_1
L10_1(L11_1, L12_1, L13_1)
L10_1 = L1_1.newText
L11_1 = {}
L11_1.string = ""
L12_1 = display
L12_1 = L12_1.contentWidth
L12_1 = L12_1 * 0.5
L11_1.x = L12_1
L12_1 = display
L12_1 = L12_1.contentHeight
L12_1 = L12_1 * 0.5
L11_1.y = L12_1
L11_1.size = 20
L11_1.width = 300
L12_1 = {}
L13_1 = 1
L14_1 = 1
L15_1 = 1
L12_1[1] = L13_1
L12_1[2] = L14_1
L12_1[3] = L15_1
L11_1.color = L12_1
L11_1.align = "center"
L10_1 = L10_1(L11_1)

function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L1_2 = L1_2.config
  L1_2 = L1_2.platform
  if L1_2 ~= "z" then
    L1_2 = L5_1
    if not L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = true
  L5_1 = L1_2
  L1_2 = 0
  L3_1 = L1_2
  L1_2 = A0_2.fy
  if L1_2 then
    L1_2 = A0_2.fy
    L3_1 = L1_2
    L1_2 = require
    L2_2 = "lua.ads.fyberModule"
    L1_2 = L1_2(L2_2)
    L2_1 = L1_2
  end
end

L0_1.setChance = L11_1

function L12_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L0_2 = L0_2.config
  L0_2 = L0_2.platform
  if L0_2 ~= "z" then
    L0_2 = L4_1
    if not L0_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L0_2 = L2_1
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.init
    L0_2()
  end
  L0_2 = true
  L4_1 = L0_2
end

L0_1.init = L12_1

function L13_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L0_2 = L0_2.wifiOn
  if not L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.database
    L0_2 = L0_2.getLoadVideoOnWifiOnly
    L0_2 = L0_2()
    L0_2 = L0_2 == 0
  end
  return L0_2
end

function L14_1()
  local L0_2, L1_2
  L0_2 = L4_1
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = L1_1
  L0_2 = L0_2.videosLeft
  if L0_2 < 1 then
    L0_2 = false
    return L0_2
  end
  L0_2 = L3_1
  if not (0 < L0_2) then
    L0_2 = false
    return L0_2
  end
  L0_2 = L13_1
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = true
  return L0_2
end

L0_1.isVideoReady = L14_1

function L15_1()
  local L0_2, L1_2
  L0_2 = L6_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L6_1
    L0_2(L1_2)
    L0_2 = nil
    L6_1 = L0_2
  end
  L0_2 = L7_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L7_1
    L0_2(L1_2)
    L0_2 = nil
    L7_1 = L0_2
  end
end

function L16_1()
  local L0_2, L1_2
  L0_2 = L15_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.data
  L0_2.iapOverlayActive = false
  L0_2 = L9_1
  L0_2.isVisible = false
  L0_2 = L10_1
  L0_2.text = ""
end

function L17_1()
  local L0_2, L1_2
  L0_2 = L16_1
  L0_2()
  L0_2 = L2_1
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.isVideoReady
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = L2_1
      L0_2 = L0_2.showVideo
      L0_2()
      return
    end
  end
  L0_2 = L0_1
  L0_2 = L0_2.onVideoSeen
  L0_2()
end

function L18_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "checkForVideoAfterDelay"
  L0_2(L1_2)
  L0_2 = L2_1
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.isVideoReady
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = L16_1
      L0_2()
      L0_2 = L2_1
      L0_2 = L0_2.showVideo
      L0_2()
      return
    end
  end
end

function L19_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L15_1
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.data
  L0_2.iapOverlayActive = true
  L0_2 = L9_1
  L0_2.isVisible = true
  L0_2 = L10_1
  L0_2.text = "Loading ad"
  L0_2 = timer
  L0_2 = L0_2.performWithDelay
  L1_2 = 1000
  L2_2 = L18_1
  L3_2 = 5
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L6_1 = L0_2
  L0_2 = timer
  L0_2 = L0_2.performWithDelay
  L1_2 = 5500
  L2_2 = L17_1
  L0_2 = L0_2(L1_2, L2_2)
  L7_1 = L0_2
end

function L20_1()
  local L0_2, L1_2
  L0_2 = L4_1
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = L3_1
  if not (0 < L0_2) then
    L0_2 = false
    return L0_2
  end
  L0_2 = L2_1
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.isVideoReady
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = L2_1
      L0_2 = L0_2.showVideo
      L0_2()
    else
      L0_2 = L19_1
      L0_2()
      L0_2 = L2_1
      L0_2 = L0_2.preloadVideo
      L0_2()
    end
  end
end

L0_1.showAd = L20_1

function L21_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L4_1
  if not L0_2 then
    return
  end
  L0_2 = L1_1
  L0_2 = L0_2.adsTable
  L0_2 = L0_2.boostVideoActive
  if L0_2 then
    L0_2 = L1_1
    L0_2 = L0_2.adsTable
    L0_2.boostVideoActive = false
    L0_2 = L1_1
    L0_2.rewardedVideoOnMainMenu = false
    L0_2 = {}
    L0_2.name = "seenVideoAdEvent"
    L1_2 = Runtime
    L2_2 = L1_2
    L1_2 = L1_2.dispatchEvent
    L3_2 = L0_2
    L1_2(L2_2, L3_2)
  else
    L0_2 = timer
    L0_2 = L0_2.performWithDelay
    L1_2 = 500
    L2_2 = L1_1
    L2_2 = L2_2.comm
    L2_2 = L2_2.seenVideo
    L0_2(L1_2, L2_2)
  end
  L0_2 = L1_1
  L1_2 = L1_1
  L1_2 = L1_2.videosLeft
  L1_2 = L1_2 - 1
  L0_2.videosLeft = L1_2
  L0_2 = L1_1
  L0_2 = L0_2.adsTable
  L0_2.active = false
  L0_2 = L1_1
  L0_2 = L0_2.database
  L0_2 = L0_2.usedAds
  L0_2()
end

L0_1.onVideoSeen = L21_1

function L22_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L1_1
  L0_2 = L0_2.debugger
  L0_2 = L0_2.debugTable
  L1_2 = "main"
  L2_2 = "FyberModule"
  L3_2 = L2_1
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L2_1
  if L0_2 then
    L0_2 = L2_1
    L0_2 = L0_2.showIntegrationStatus
    if L0_2 then
      L0_2 = L2_1
      L0_2 = L0_2.showIntegrationStatus
      L0_2()
  end
  else
    L0_2 = print
    L1_2 = "FyberModule not set."
    L0_2(L1_2)
  end
end

L0_1.showIntegrationStatus = L22_1
return L0_1
