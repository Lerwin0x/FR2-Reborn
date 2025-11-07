local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
L0_1 = {}
L1_1 = nil
L2_1 = nil
L3_1 = nil
L4_1 = nil
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = require
L9_1 = "composer"
L8_1 = L8_1(L9_1)
L9_1 = false
L10_1 = nil

function L11_1()
  local L0_2, L1_2
  L0_2 = false
  L3_1 = L0_2
  L0_2 = L10_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L10_1
    L0_2(L1_2)
    L0_2 = nil
    L10_1 = L0_2
  end
end

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L8_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.isActive
  if L1_2 == true then
    return
  else
    L1_2 = L8_1
    L1_2 = L1_2.data
    L1_2 = L1_2.iapOverlayActive
    if L1_2 then
      return
    end
  end
  L1_2 = L9_1
  if L1_2 == true then
    L1_2 = false
    L9_1 = L1_2
    L1_2 = false
    L3_1 = L1_2
    L1_2 = L4_1
    if L1_2 then
      L1_2 = L8_1
      L1_2 = L1_2.hideOverlay
      L1_2()
      L1_2 = false
      L4_1 = L1_2
    else
      L1_2 = L5_1
      if L1_2 then
        L1_2 = L5_1
        L1_2()
        L1_2 = nil
        L5_1 = L1_2
      else
        L1_2 = L6_1
        if L1_2 then
          L1_2 = L6_1
          if L1_2 == "lua.scenes.game.quitGameAlert" then
            L1_2 = L8_1
            L1_2 = L1_2.showOverlay
            L2_2 = L6_1
            L3_2 = {}
            L3_2.isModal = true
            L1_2(L2_2, L3_2)
          else
            L1_2 = L8_1
            L1_2 = L1_2.gotoScene
            L2_2 = L6_1
            L1_2(L2_2)
            L1_2 = nil
            L6_1 = L1_2
          end
          L1_2 = L7_1
          if L1_2 then
            L1_2 = L8_1
            L1_2 = L1_2.removeScene
            L2_2 = L7_1
            L1_2(L2_2)
            L1_2 = nil
            L7_1 = L1_2
          end
        else
          L1_2 = print
          L2_2 = "close app"
          L1_2(L2_2)
          L1_2 = L8_1
          L1_2.closeAppAndorid = true
          L1_2 = native
          L1_2 = L1_2.requestExit
          L1_2()
        end
      end
    end
  end
end

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.phase
  L2_2 = A0_2.keyName
  if L1_2 == "up" and L2_2 == "back" then
    L3_2 = L3_1
    if L3_2 then
      L3_2 = true
      L9_1 = L3_2
    end
    L3_2 = true
    return L3_2
  end
  L3_2 = false
  return L3_2
end

function L12_1()
  local L0_2, L1_2
  L0_2 = true
  L3_1 = L0_2
end

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L6_1 = A0_2
  L7_1 = A1_2
  L2_2 = timer
  L2_2 = L2_2.performWithDelay
  L3_2 = 200
  L4_2 = L12_1
  L5_2 = 1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L10_1 = L2_2
end

function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L4_1 = A0_2
  L1_2 = timer
  L1_2 = L1_2.performWithDelay
  L2_2 = 200
  L3_2 = L12_1
  L4_2 = 1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L10_1 = L1_2
end

function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L5_1 = A0_2
  L1_2 = timer
  L1_2 = L1_2.performWithDelay
  L2_2 = 200
  L3_2 = L12_1
  L4_2 = 1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L10_1 = L1_2
end

function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Runtime
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = "key"
  L3_2 = L2_1
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Runtime
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = "enterFrame"
  L3_2 = L1_1
  L0_2(L1_2, L2_2, L3_2)
end

function L17_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L1_1
  if L0_2 then
    L0_2 = Runtime
    L1_2 = L0_2
    L0_2 = L0_2.removeEventListener
    L2_2 = "enterFrame"
    L3_2 = L1_1
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = nil
    L1_1 = L0_2
  end
  L0_2 = L2_1
  if L0_2 then
    L0_2 = Runtime
    L1_2 = L0_2
    L0_2 = L0_2.removeEventListener
    L2_2 = "key"
    L3_2 = L2_1
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = nil
    L2_1 = L0_2
  end
end

L0_1.addBackButton = L13_1
L0_1.removeBackButton = L11_1
L0_1.isOverlay = L14_1
L0_1.isCustomOverlay = L15_1
L0_1.startAndroidBackButton = L16_1
L0_1.cleanAndroidBackButton = L17_1
return L0_1
