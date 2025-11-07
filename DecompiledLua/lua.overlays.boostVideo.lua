local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "lua.ads.videoModule"
L1_1 = L1_1(L2_1)
L2_1 = L0_1.newScene
L2_1 = L2_1()
L3_1 = nil
L4_1 = nil

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A0_2.view
  L3_2 = nil
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = "images/gui/common/black.png"
  L6_2 = 480
  L7_2 = 320
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 * 0.5
  L4_2.x = L5_2
  L5_2 = display
  L5_2 = L5_2.contentHeight
  L5_2 = L5_2 * 0.5
  L4_2.y = L5_2
  L6_2 = L2_2
  L5_2 = L2_2.insert
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = "images/gui/postgame/adCointsPopup.png"
  L7_2 = 258
  L8_2 = 221
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L5_2.anchorY = 0
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 * 0.5
  L5_2.x = L6_2
  L5_2.y = 0
  L6_2 = L0_1
  L6_2 = L6_2.newText
  L7_2 = {}
  L8_2 = L0_1
  L8_2 = L8_2.localized
  L8_2 = L8_2.get
  L9_2 = "adBoostInfo"
  L8_2 = L8_2(L9_2)
  L7_2.string = L8_2
  L8_2 = L5_2.x
  L7_2.x = L8_2
  L8_2 = L5_2.y
  L8_2 = L8_2 + 170
  L7_2.y = L8_2
  L7_2.size = 16
  L8_2 = {}
  L9_2 = 1
  L10_2 = 1
  L11_2 = 1
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L7_2.color = L8_2
  L7_2.width = 200
  L7_2.align = "center"
  L6_2 = L6_2(L7_2)
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.adsTable
    L0_3.boostVideoActive = true
    L0_3 = L1_1
    L0_3 = L0_3.showAd
    L0_3()
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
  L8_2 = L0_1
  L8_2 = L8_2.newButton
  L9_2 = {}
  L9_2.image = "images/gui/common/buttonTextA.png"
  L9_2.onRelease = L7_2
  L10_2 = {}
  L11_2 = L0_1
  L11_2 = L11_2.localized
  L11_2 = L11_2.get
  L12_2 = "Watch"
  L11_2 = L11_2(L12_2)
  L10_2.string = L11_2
  L10_2.size = 16
  L9_2.text = L10_2
  L9_2.width = 126
  L9_2.height = 40
  L10_2 = L5_2.x
  L9_2.x = L10_2
  L10_2 = L5_2.y
  L10_2 = L10_2 + 220
  L9_2.y = L10_2
  L8_2 = L8_2(L9_2)
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
  L10_2 = L0_1
  L10_2 = L10_2.newButton
  L11_2 = {}
  L11_2.image = "images/gui/common/buttonClosePopup.png"
  L11_2.onRelease = L9_2
  L11_2.width = 43
  L11_2.height = 38
  L12_2 = L5_2.x
  L12_2 = L12_2 + 120
  L11_2.x = L12_2
  L12_2 = L5_2.y
  L12_2 = L12_2 + 70
  L11_2.y = L12_2
  L10_2 = L10_2(L11_2)
  
  function L11_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L0_1
      L1_3 = L1_3.hideOverlay
      L1_3()
    end
    L1_3 = true
    return L1_3
  end
  
  function L12_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
    end
    L1_3 = true
    return L1_3
  end
  
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L11_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L12_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L14_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L5_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L8_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L10_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L6_2
    L0_3(L1_3, L2_3)
  end
  
  function L15_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L3_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L3_2
      L0_3(L1_3)
      L0_3 = nil
      L3_2 = L0_3
    end
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L8_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L10_2
    L0_3(L1_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L11_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L12_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L3_1 = L15_2
  L15_2 = L14_2
  L15_2()
  L15_2 = timer
  L15_2 = L15_2.performWithDelay
  L16_2 = 700
  L17_2 = L13_2
  L15_2 = L15_2(L16_2, L17_2)
  L3_2 = L15_2
end

L2_1.create = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    return
  end
  L3_2 = require
  L4_2 = "lua.modules.androidBackButton"
  L3_2 = L3_2(L4_2)
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = L3_2
    L0_3 = L0_3.isOverlay
    L1_3 = false
    L0_3(L1_3)
  end
  
  L4_1 = L4_2
  L4_2 = L3_2.isOverlay
  L5_2 = true
  L4_2(L5_2)
end

L2_1.show = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = L4_1
    L4_2()
  elseif L3_2 == "did" then
    L4_2 = A1_2.parent
    if L4_2 then
      L4_2 = A1_2.parent
      L4_2 = L4_2.overlayEnded
      if L4_2 then
        L4_2 = A1_2.parent
        L5_2 = L4_2
        L4_2 = L4_2.overlayEnded
        L4_2(L5_2)
      end
    end
  end
end

L2_1.hide = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.view
  L3_2 = L3_1
  L3_2()
end

L2_1.destroy = L5_1
L6_1 = L2_1
L5_1 = L2_1.addEventListener
L7_1 = "create"
L8_1 = L2_1
L5_1(L6_1, L7_1, L8_1)
L6_1 = L2_1
L5_1 = L2_1.addEventListener
L7_1 = "show"
L8_1 = L2_1
L5_1(L6_1, L7_1, L8_1)
L6_1 = L2_1
L5_1 = L2_1.addEventListener
L7_1 = "hide"
L8_1 = L2_1
L5_1(L6_1, L7_1, L8_1)
L6_1 = L2_1
L5_1 = L2_1.addEventListener
L7_1 = "destroy"
L8_1 = L2_1
L5_1(L6_1, L7_1, L8_1)
return L2_1
