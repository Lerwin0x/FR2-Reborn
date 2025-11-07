local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.newScene
L1_1 = L1_1()
L2_1 = nil
L3_1 = nil
L4_1 = nil
L5_1 = nil

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2
  L2_2 = A0_2.view
  L3_2 = A1_2.params
  L3_2 = L3_2.item
  L4_2 = nil
  L5_2 = A1_2.params
  L5_2 = L5_2.onCloseFunction
  L5_1 = L5_2
  L5_2 = require
  L6_2 = "lua.modules.itemRevealHelper"
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.itemRevealHelper
  L5_2 = L5_2()
  L6_2 = display
  L6_2 = L6_2.newGroup
  L6_2 = L6_2()
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = "images/gui/common/black.png"
  L9_2 = 480
  L10_2 = 320
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 * 0.5
  L7_2.x = L8_2
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 * 0.5
  L7_2.y = L8_2
  L8_2 = display
  L8_2 = L8_2.newImageRect
  L9_2 = "images/gui/clan_v2/clan_support/window.png"
  L10_2 = 276
  L11_2 = 250
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L8_2.anchorY = 0
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 * 0.5
  L8_2.x = L9_2
  L8_2.y = 0
  L9_2 = L0_1
  L9_2 = L9_2.newText
  L10_2 = {}
  L11_2 = L0_1
  L11_2 = L11_2.localized
  L11_2 = L11_2.get
  L12_2 = "Yougot"
  L11_2 = L11_2(L12_2)
  L10_2.string = L11_2
  L11_2 = L8_2.x
  L11_2 = L11_2 + 2
  L10_2.x = L11_2
  L11_2 = L8_2.y
  L11_2 = L11_2 + 68
  L10_2.y = L11_2
  L10_2.size = 26
  L11_2 = {}
  L12_2 = 1
  L13_2 = 1
  L14_2 = 1
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L10_2.color = L11_2
  L9_2 = L9_2(L10_2)
  L10_2 = L0_1
  L10_2 = L10_2.newText
  L11_2 = {}
  L12_2 = L3_2.title
  L11_2.string = L12_2
  L12_2 = L8_2.x
  L11_2.x = L12_2
  L12_2 = L8_2.y
  L12_2 = L12_2 + 200
  L11_2.y = L12_2
  L11_2.size = 18
  L12_2 = {}
  L13_2 = 0
  L14_2 = 0
  L15_2 = 0
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L11_2.color = L12_2
  L11_2.width = 180
  L11_2.align = "center"
  L10_2 = L10_2(L11_2)
  L10_2.isVisible = false
  L11_2 = L0_1
  L11_2 = L11_2.storeConfig
  L11_2 = L11_2.getItemCategory
  L12_2 = L3_2.key
  L11_2 = L11_2(L12_2)
  L12_2 = nil
  if L11_2 then
    L13_2 = display
    L13_2 = L13_2.newImageRect
    L14_2 = "images/gui/market/symbol_"
    L15_2 = L11_2
    L16_2 = ".png"
    L14_2 = L14_2 .. L15_2 .. L16_2
    L15_2 = 54
    L16_2 = 35
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L12_2 = L13_2
    if L12_2 then
      L13_2 = L8_2.x
      L13_2 = L13_2 + 90
      L12_2.x = L13_2
      L13_2 = L8_2.y
      L13_2 = L13_2 + 115
      L12_2.y = L13_2
      L12_2.isVisible = false
    end
  end
  L13_2 = display
  L13_2 = L13_2.newImageRect
  L14_2 = "images/gui/market/items/plate/"
  L15_2 = L3_2.plate
  if not L15_2 then
    L15_2 = "1"
  end
  L16_2 = ".png"
  L14_2 = L14_2 .. L15_2 .. L16_2
  L15_2 = 35
  L16_2 = 15
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L14_2 = L8_2.x
  L14_2 = L14_2 + 3
  L13_2.x = L14_2
  L14_2 = L8_2.y
  L14_2 = L14_2 + 180
  L13_2.y = L14_2
  L13_2.isVisible = false
  L14_2 = display
  L14_2 = L14_2.newImageRect
  L15_2 = L3_2.imagePath
  L16_2 = 65
  L17_2 = 72
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  if L14_2 == nil then
    L15_2 = L0_1
    L15_2 = L15_2.localized
    L15_2 = L15_2.get
    L16_2 = "updatetouse"
    L15_2 = L15_2(L16_2)
    L10_2.text = L15_2
    L15_2 = L10_2.y
    L15_2 = L15_2 - 40
    L10_2.y = L15_2
    L15_2 = display
    L15_2 = L15_2.newGroup
    L15_2 = L15_2()
    L14_2 = L15_2
    L13_2.isVisible = false
  else
    L15_2 = L8_2.x
    L14_2.x = L15_2
    L15_2 = L8_2.y
    L15_2 = L15_2 + 140
    L14_2.y = L15_2
  end
  L14_2.isVisible = false
  L15_2 = nil
  L16_2 = 4
  L17_2 = nil
  L18_2 = nil
  
  function L19_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L15_2
    if L0_3 then
      L0_3 = L15_2
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      L15_2 = L0_3
    end
    L0_3 = display
    L0_3 = L0_3.newImageRect
    L1_3 = "images/game/countdown"
    L2_3 = L16_2
    L3_3 = ".png"
    L1_3 = L1_3 .. L2_3 .. L3_3
    L2_3 = 129
    L3_3 = 70
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L15_2 = L0_3
    L0_3 = L15_2
    if L0_3 then
      L0_3 = L15_2
      L1_3 = display
      L1_3 = L1_3.contentWidth
      L1_3 = L1_3 * 0.51
      L0_3.x = L1_3
      L0_3 = L15_2
      L1_3 = display
      L1_3 = L1_3.contentHeight
      L1_3 = L1_3 * 0.5
      L0_3.y = L1_3
      L0_3 = L15_2
      L1_3 = L0_3
      L0_3 = L0_3.scale
      L2_3 = 0.1
      L3_3 = 0.1
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L6_2
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L15_2
      L0_3(L1_3, L2_3)
    end
  end
  
  function L20_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L15_2
    L2_3 = {}
    L2_3.time = 250
    L2_3.xScale = 0.8
    L2_3.yScale = 0.8
    L3_3 = easing
    L3_3 = L3_3.outBounce
    L2_3.transition = L3_3
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L15_2
    L2_3 = {}
    L2_3.time = 100
    L2_3.delay = 350
    L2_3.alpha = 0
    L0_3(L1_3, L2_3)
  end
  
  function L21_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
    L0_3 = L0_1
    L0_3 = L0_3.getSceneName
    L1_3 = "current"
    L0_3 = L0_3(L1_3)
    if L0_3 == "lua.scenes.marketplace" then
      return
    end
    L1_3 = {}
    L2_3 = {}
    L3_3 = tonumber
    L4_3 = L3_2
    L4_3 = L4_3.key
    L3_3 = L3_3(L4_3)
    L2_3.highlightItemId = L3_3
    L1_3.params = L2_3
    L2_3 = L0_1
    L2_3 = L2_3.gotoScene
    L3_3 = "lua.scenes.marketplace"
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
  end
  
  function L22_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
  L23_2 = L0_1
  L23_2 = L23_2.newButton
  L24_2 = {}
  L25_2 = display
  L25_2 = L25_2.contentWidth
  L25_2 = L25_2 * 0.5
  L25_2 = L25_2 - 30
  L24_2.x = L25_2
  L25_2 = L8_2.height
  L25_2 = L25_2 - 10
  L24_2.y = L25_2
  L24_2.width = 62
  L24_2.height = 37
  L25_2 = L0_1
  L25_2 = L25_2.localized
  L25_2 = L25_2.get
  L26_2 = "OK"
  L25_2 = L25_2(L26_2)
  L24_2.text = L25_2
  L24_2.image = "images/gui/ranking/promotion/buttonOk.png"
  L24_2.onRelease = L22_2
  L23_2 = L23_2(L24_2)
  L23_2.isVisible = false
  L24_2 = L0_1
  L24_2 = L24_2.newButton
  L25_2 = {}
  L26_2 = display
  L26_2 = L26_2.contentWidth
  L26_2 = L26_2 * 0.5
  L26_2 = L26_2 + 30
  L25_2.x = L26_2
  L26_2 = L8_2.height
  L26_2 = L26_2 - 10
  L25_2.y = L26_2
  L25_2.width = 48
  L25_2.height = 37
  L25_2.image = "images/gui/ranking/promotion/buttonShop.png"
  L25_2.onRelease = L21_2
  L24_2 = L24_2(L25_2)
  L24_2.isVisible = false
  
  function L25_2(A0_3)
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
  
  function L26_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L16_2
      if 0 < L1_3 then
        L1_3 = 0
        L16_2 = L1_3
      else
        L1_3 = L5_2
        L1_3 = L1_3.clean
        L1_3()
        L1_3 = L5_2
        L1_3 = L1_3.instant
        L2_3 = L13_2
        L1_3(L2_3)
        L1_3 = L5_2
        L1_3 = L1_3.instant
        L2_3 = L14_2
        L1_3(L2_3)
        L1_3 = L5_2
        L1_3 = L1_3.instant
        L2_3 = L10_2
        L1_3(L2_3)
        L1_3 = L5_2
        L1_3 = L1_3.instant
        L2_3 = L12_2
        L1_3(L2_3)
      end
    end
    L1_3 = true
    return L1_3
  end
  
  function L27_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L7_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L25_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L28_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L5_2
    L1_3 = L1_3.bounce
    L2_3 = L13_2
    L3_3 = 400
    L1_3(L2_3, L3_3)
    L1_3 = L5_2
    L1_3 = L1_3.bounce
    L2_3 = L14_2
    L3_3 = 200
    L1_3(L2_3, L3_3)
    L1_3 = L5_2
    L1_3 = L1_3.bounce
    L2_3 = L10_2
    L3_3 = 600
    L1_3(L2_3, L3_3)
    L1_3 = L5_2
    L1_3 = L1_3.bounce
    L2_3 = L12_2
    L1_3(L2_3)
    L1_3 = L23_2
    L1_3.isVisible = true
    if A0_3 then
      L1_3 = L24_2
      L1_3.isVisible = true
    end
  end
  
  function L29_2()
    local L0_3, L1_3
    
    function L0_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
      L0_4 = L16_2
      L0_4 = L0_4 - 1
      L16_2 = L0_4
      L0_4 = L16_2
      if L0_4 < 1 then
        L0_4 = false
        L1_4 = L0_1
        L1_4 = L1_4.getSceneName
        L2_4 = "current"
        L1_4 = L1_4(L2_4)
        L2_4 = L1_4 == "lua.scenes.marketplace"
        if not L2_4 then
          L3_4 = L0_1
          L3_4 = L3_4.onboarding
          L3_4 = L3_4.isActive
          if L3_4 ~= true then
            goto lbl_26
          end
        end
        L3_4 = L23_2
        L3_4.x = 30
        goto lbl_27
        ::lbl_26::
        L0_4 = true
        ::lbl_27::
        L3_4 = L28_2
        L4_4 = L0_4
        L3_4(L4_4)
        L3_4 = false
        L4_4 = L3_2
        L4_4 = L4_4.price
        if L4_4 then
          L4_4 = L3_2
          L4_4 = L4_4.price
          if 2000 < L4_4 then
            L3_4 = true
          end
        end
        L4_4 = L3_2
        L4_4 = L4_4.tier
        if L4_4 then
          L4_4 = L3_2
          L4_4 = L4_4.tier
          if 2 < L4_4 then
            L3_4 = true
          end
        end
        if L3_4 then
          L4_4 = require
          L5_4 = "lua.game.effects.fireworksHandler"
          L4_4 = L4_4(L5_4)
          L4_2 = L4_4
          L4_4 = L4_2
          L4_4 = L4_4.startFireWorks
          L5_4 = 0
          L6_4 = 320
          L7_4 = L2_2
          L8_4 = 0
          L9_4 = true
          L4_4(L5_4, L6_4, L7_4, L8_4, L9_4)
        end
        L4_4 = L27_2
        L4_4()
      else
        L0_4 = L19_2
        L0_4()
        L0_4 = L20_2
        L0_4()
        L0_4 = timer
        L0_4 = L0_4.performWithDelay
        L1_4 = 400
        L2_4 = L0_3
        L3_4 = 1
        L0_4 = L0_4(L1_4, L2_4, L3_4)
        L18_2 = L0_4
      end
    end
    
    L1_3 = L0_3
    L1_3()
  end
  
  function L30_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L7_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L8_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L23_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L24_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L10_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L13_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L14_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L9_2
    L0_3(L1_3, L2_3)
    L0_3 = L12_2
    if L0_3 then
      L0_3 = L6_2
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L12_2
      L0_3(L1_3, L2_3)
    end
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L6_2
    L0_3(L1_3, L2_3)
  end
  
  function L31_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L23_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L24_2
    L0_3(L1_3)
    L0_3 = L5_2
    L0_3 = L0_3.clean
    L0_3()
    L0_3 = L18_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L18_2
      L0_3(L1_3)
      L0_3 = nil
      L18_2 = L0_3
    end
    L0_3 = L17_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L17_2
      L0_3(L1_3)
      L0_3 = nil
      L17_2 = L0_3
    end
    L0_3 = L4_2
    if L0_3 then
      L0_3 = L4_2
      L0_3 = L0_3.clean
      L0_3()
    end
    L0_3 = L7_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L25_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L8_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L26_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L2_1 = L31_2
  L31_2 = L30_2
  L31_2()
  L32_2 = L8_2
  L31_2 = L8_2.addEventListener
  L33_2 = "touch"
  L34_2 = L26_2
  L31_2(L32_2, L33_2, L34_2)
  L31_2 = timer
  L31_2 = L31_2.performWithDelay
  L32_2 = 500
  L33_2 = L29_2
  L34_2 = 1
  L31_2 = L31_2(L32_2, L33_2, L34_2)
  L17_2 = L31_2
  L31_2 = L0_1
  L31_2 = L31_2.bouncer
  L31_2 = L31_2.down
  L32_2 = L6_2
  L31_2(L32_2)
end

L1_1.create = L6_1

function L6_1(A0_2, A1_2)
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
  
  L3_1 = L4_2
  L4_2 = L3_2.isOverlay
  L5_2 = true
  L4_2(L5_2)
end

L1_1.show = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = L3_1
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
        L6_2 = L4_1
        L4_2(L5_2, L6_2)
        L4_2 = nil
        L4_1 = L4_2
      end
    end
  end
end

L1_1.hide = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L5_1
  if L2_2 then
    L2_2 = L5_1
    L2_2()
    L2_2 = nil
    L5_1 = L2_2
  end
  L2_2 = A0_2.view
  L3_2 = L2_1
  L3_2()
end

L1_1.destroy = L6_1
L7_1 = L1_1
L6_1 = L1_1.addEventListener
L8_1 = "create"
L9_1 = L1_1
L6_1(L7_1, L8_1, L9_1)
L7_1 = L1_1
L6_1 = L1_1.addEventListener
L8_1 = "show"
L9_1 = L1_1
L6_1(L7_1, L8_1, L9_1)
L7_1 = L1_1
L6_1 = L1_1.addEventListener
L8_1 = "hide"
L9_1 = L1_1
L6_1(L7_1, L8_1, L9_1)
L7_1 = L1_1
L6_1 = L1_1.addEventListener
L8_1 = "destroy"
L9_1 = L1_1
L6_1(L7_1, L8_1, L9_1)
return L1_1
