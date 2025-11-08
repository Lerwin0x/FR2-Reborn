local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "lua.modules.friendlyHelper"
L1_1 = L1_1(L2_1)
L2_1 = math
L2_1 = L2_1.random
L3_1 = nil
L4_1 = 0.3
L5_1 = nil
L6_1 = {}
L7_1 = 101
L8_1 = 0
L9_1 = 0
L10_1 = 0
L11_1 = 0
L12_1 = 0
L13_1 = 0
L6_1[1] = L7_1
L6_1[2] = L8_1
L6_1[3] = L9_1
L6_1[4] = L10_1
L6_1[5] = L11_1
L6_1[6] = L12_1
L6_1[7] = L13_1
L7_1 = {}
L8_1 = 101
L9_1 = 0
L10_1 = 0
L11_1 = 402
L12_1 = 0
L13_1 = 0
L14_1 = 0
L7_1[1] = L8_1
L7_1[2] = L9_1
L7_1[3] = L10_1
L7_1[4] = L11_1
L7_1[5] = L12_1
L7_1[6] = L13_1
L7_1[7] = L14_1
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = nil
L14_1 = nil
L15_1 = nil
L16_1 = nil
L17_1 = nil
L18_1 = {}
L0_1.onboarding = L18_1
L18_1 = L0_1.onboarding
L18_1.settingsOverride = false
L18_1 = {}
L0_1.contextualOnboarding = L18_1
L18_1 = "images/game/arrow.png"
L19_1 = "images/game/skull.png"
L20_1 = L0_1.onboarding

function L21_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L0_1
  L0_2 = L0_2.database
  L0_2 = L0_2.introOnboardingIsActive
  L0_2 = L0_2()
  L0_2 = false
  if L0_2 then
    L1_2 = L0_1
    L1_2 = L1_2.onboarding
    L1_2 = L1_2.activate
    L1_2()
    L1_2 = L0_1
    L1_2 = L1_2.contextualOnboarding
    L1_2 = L1_2.activate
    L1_2()
    L1_2 = L0_1
    L1_2 = L1_2.database
    L1_2 = L1_2.getOnboardingIntroPart
    L1_2 = L1_2()
    L2_2 = L0_1
    L2_2 = L2_2.onboarding
    L2_2 = L2_2.setStep
    L3_2 = L0_1
    L3_2 = L3_2.onboarding
    L3_2 = L3_2.getNextStep
    L4_2 = L1_2
    L3_2, L4_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2)
  end
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.settingsOverride
  if L1_2 then
    L1_2 = L0_1
    L1_2 = L1_2.onboarding
    L1_2 = L1_2.activate
    L1_2()
  end
end

L20_1.checkOnboardingStatus = L21_1
L20_1 = L0_1.onboarding

function L21_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.createOnboardingSteps
  L0_2()
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L1_2 = {}
  L2_2 = {}
  L2_2[0] = "Sheep"
  L2_2[214] = "Wolf"
  L1_2[105] = L2_2
  L2_2 = {}
  L2_2[0] = "Tiger"
  L1_2[104] = L2_2
  L0_2.botnames = L1_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2.isActive = false
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2.isPaused = false
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L1_2 = {}
  L2_2 = {}
  L2_2.powerUpTutorial = false
  L2_2.endAtTileX = 81
  L2_2.fadeOut = false
  L2_2.hasJumped = false
  L1_2["1"] = L2_2
  L2_2 = {}
  L2_2.endAtTileX = 70
  L2_2.fadeOut = false
  L2_2.usedSawblade = false
  L1_2["3"] = L2_2
  L2_2 = {}
  L2_2.endAtTileX = 93
  L2_2.fadeOut = false
  L1_2["5"] = L2_2
  L2_2 = {}
  L2_2.endAtTileX = 58
  L2_2.fadeOut = false
  L1_2["7"] = L2_2
  L2_2 = {}
  L2_2.shieldPowerUpTutorial = false
  L2_2.balloonPowerUpTutorial = false
  L2_2.botUsedShield = false
  L2_2.movedBots = false
  L2_2.endAtTileX = 106
  L2_2.fadeOut = false
  L2_2.placedTrap1 = false
  L2_2.placedTrap2 = false
  L2_2.placedTrap3 = false
  L2_2.placedTrap4 = false
  L2_2.placedTrap5 = false
  L2_2.placedTrap6 = false
  L1_2["9"] = L2_2
  L2_2 = {}
  L2_2.endAtTileX = 93
  L2_2.fadeOut = false
  L1_2["11"] = L2_2
  L2_2 = {}
  L2_2.usedShieldOnce = false
  L2_2.usedShieldTwice = false
  L2_2.endAtTileX = 119
  L2_2.fadeOut = false
  L2_2.resetPU = false
  L2_2.usedHunter = false
  L2_2.usedJetpack = false
  L1_2["13"] = L2_2
  L2_2 = {}
  L2_2.endAtTileX = 123
  L2_2.fadeOut = false
  L1_2["15"] = L2_2
  L2_2 = {}
  L2_2.endAtTileX = 68
  L2_2.fadeOut = false
  L1_2["17"] = L2_2
  L2_2 = {}
  L2_2.usedShieldOnce = false
  L2_2.usedShieldTwice = false
  L2_2.endAtTileX = 81
  L2_2.fadeOut = false
  L2_2.usedMagnet = false
  L2_2.usedLightning = false
  L1_2["21"] = L2_2
  L2_2 = {}
  L2_2.categoryArrow = nil
  L2_2.iconArrow = nil
  L2_2.homeArrow = nil
  L1_2["25"] = L2_2
  L0_2.stepData = L1_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L1_2 = {}
  L0_2.guiReferences = L1_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L1_2 = {}
  L0_2.ingameTextArray = L1_2
  L0_2 = L0_1
  L0_2 = L0_2.contextualOnboarding
  L0_2.isActive = false
  L0_2 = L0_1
  L0_2 = L0_2.contextualOnboarding
  L1_2 = {}
  L2_2 = {}
  L2_2.description = "Display arrow on play buttons, until reached 3 games"
  L2_2.numberOfGamesBeforeStore = 3
  L2_2.playArrow = nil
  L2_2.quickPlayArrow = nil
  L1_2["2"] = L2_2
  L2_2 = {}
  L2_2.description = "After first game, show friendly helper explaining gold"
  L1_2["3"] = L2_2
  L0_2.stepData = L1_2
end

L20_1.init = L21_1
L20_1 = L0_1.contextualOnboarding

function L21_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L1_2 = L1_2.database
  L1_2 = L1_2.onboardingPartIsActive
  L2_2 = A0_2
  return L1_2(L2_2)
end

L20_1.isPartActive = L21_1
L20_1 = L0_1.contextualOnboarding

function L21_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L1_2 = L1_2.database
  L1_2 = L1_2.setOnboardingPartDone
  L2_2 = A0_2
  return L1_2(L2_2)
end

L20_1.setPartDone = L21_1
L20_1 = L0_1.contextualOnboarding

function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L1_2 = L1_2.createMessage
  L2_2 = "You've just completed your first online race. Look, you won coins! The better you play, the more coins you get!"
  L3_2 = A0_2
  L4_2 = L6_1
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

L20_1.firstGameCompleted = L21_1
L20_1 = L0_1.contextualOnboarding

function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L1_2 = L1_2.createMessage
  L2_2 = "You're getting some serious coinage. Go to the shop to check out what you can buy!"
  L3_2 = A0_2
  L4_2 = L6_1
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

L20_1.onGotSomeCoins = L21_1

function L20_1(A0_2)
  local L1_2
  L1_2 = A0_2 * 160
  L1_2 = L1_2 * 0.5
  return L1_2
end

function L21_1(A0_2)
  local L1_2
  L1_2 = A0_2 * 100
  L1_2 = L1_2 * 0.5
  return L1_2
end

function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = L3_1
  if not L3_2 then
    L3_2 = require
    L4_2 = "lua.gameLogic.powerUps"
    L3_2 = L3_2(L4_2)
    L3_1 = L3_2
  end
  L3_2 = L3_1
  L3_2 = L3_2.usePowerUp
  L4_2 = A2_2
  L5_2 = A1_2
  L6_2 = nil
  L7_2 = A0_2
  L8_2 = 0
  L9_2 = 0
  L10_2 = L0_1
  L10_2 = L10_2.onboarding
  L10_2 = L10_2.ingameDisplayGroup
  L11_2 = L0_1
  L11_2 = L11_2.onboarding
  L11_2 = L11_2.screenDisplayGroup
  L12_2 = L0_1
  L12_2 = L12_2.onboarding
  L12_2 = L12_2.playerReferences
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = display
  L1_2 = L1_2.newImageRect
  L2_2 = A0_2
  L3_2 = 140
  L4_2 = 210
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.anchorX = 1
  L1_2.anchorY = 1
  L1_2.xScale = 0.5
  L1_2.yScale = 0.5
  L1_2.x = 480
  L1_2.y = 240
  L1_2.alpha = 0
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2.arrowTutorialImage = L1_2
  return L1_2
end

function L24_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A0_2 then
    A2_2 = -A2_2
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = A0_2
    L5_2 = {}
    L5_2.tag = "tutorialTransition"
    L5_2.delta = true
    L5_2.y = A2_2
    L5_2.time = 750
    
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L24_1
      L1_3 = A0_2
      L2_3 = A1_2
      L2_3 = not L2_3
      L3_3 = A2_2
      L0_3(L1_3, L2_3, L3_3)
    end
    
    L5_2.onComplete = L6_2
    L3_2(L4_2, L5_2)
  end
end

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = L25_1
    L1_3 = A0_2
    L1_3 = not L1_3
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
  end
  
  L3_2 = A1_2.trapAttachedTo
  if L3_2 then
    L3_2 = A1_2.x
    A1_2.x = L3_2
    L3_2 = A1_2.y
    A1_2.y = L3_2
  end
  L3_2 = 1
  if not A0_2 then
    L3_2 = 0
  end
  L4_2 = transition
  L4_2 = L4_2.to
  L5_2 = A1_2
  L6_2 = {}
  L6_2.tag = "tutorialTransition"
  L6_2.alpha = L3_2
  L6_2.time = 100
  L6_2.onComplete = L2_2
  L4_2(L5_2, L6_2)
end

function L26_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = "images/game/skull.png"
  L5_2 = 140
  L6_2 = 210
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2.anchorX = 0.5
  L3_2.anchorY = 0.5
  L3_2.xScale = 0.25
  L3_2.yScale = 0.25
  L4_2 = A2_2.x
  L4_2 = L4_2 + A0_2
  L3_2.x = L4_2
  L4_2 = A2_2.y
  L4_2 = L4_2 + A1_2
  L3_2.y = L4_2
  L3_2.alpha = 0
  L3_2.trapAttachedTo = A2_2
  L4_2 = L25_1
  L5_2 = true
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L0_1
  L4_2 = L4_2.onboarding
  L4_2 = L4_2.ingameDisplayGroup
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  return L3_2
end

function L27_1()
  local L0_2, L1_2
  L0_2 = L3_1
  L0_2 = L0_2.getPowerUps
  L0_2 = L0_2()
  L1_2 = #L0_2
  L1_2 = L0_2[L1_2]
  return L1_2
end

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = 0
  L4_2 = 0
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2.anchorX = 0
  L2_2.anchorY = 0
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.x = 0
  L2_2.y = 0
  L2_2.alpha = 0
  L4_2 = A0_2
  L3_2 = A0_2.insert
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = L2_2
  L5_2 = {}
  L6_2 = "tutorialTransition"
  L7_2 = L0_1
  L7_2 = L7_2.onboarding
  L7_2 = L7_2.activatedPart
  L6_2 = L6_2 .. L7_2
  L5_2.tag = L6_2
  L5_2.alpha = 1
  L5_2.time = 250
  L5_2.onComplete = A1_2
  L3_2(L4_2, L5_2)
end

function L29_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = 0
  L4_2 = 0
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2.anchorX = 0
  L2_2.anchorY = 0
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.x = 0
  L2_2.y = 0
  L2_2.alpha = 1
  L4_2 = A0_2
  L3_2 = A0_2.insert
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = L2_2
  L5_2 = {}
  L6_2 = "tutorialTransition2"
  L7_2 = L0_1
  L7_2 = L7_2.onboarding
  L7_2 = L7_2.activatedPart
  L6_2 = L6_2 .. L7_2
  L5_2.tag = L6_2
  L5_2.alpha = 0
  L5_2.time = 250
  L5_2.onComplete = A1_2
  L3_2(L4_2, L5_2)
end

function L30_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3.doneMovingIn = true
    L0_3 = A0_2
    L0_3 = L0_3.id
    if L0_3 == 5 then
      L0_3 = A0_2
      L0_3 = L0_3.playAnimation
      L1_3 = "sad"
      L2_3 = true
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
    else
      L0_3 = A0_2
      L0_3 = L0_3.playAnimation
      L1_3 = "idle"
      L2_3 = true
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = A0_2
      L0_3 = L0_3.resetBones
      L0_3()
    end
  end
  
  L7_2 = A0_2.playAnimation
  L8_2 = "run"
  L9_2 = true
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
  A0_2.x = A1_2
  A0_2.y = A2_2
  L7_2 = transition
  L7_2 = L7_2.to
  L8_2 = A0_2
  L9_2 = {}
  L9_2.tag = "tutorialTransition"
  L9_2.x = A3_2
  L9_2.y = A4_2
  L9_2.time = A5_2
  L9_2.onComplete = L6_2
  L7_2(L8_2, L9_2)
end

function L31_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = L0_1
  L5_2 = L5_2.onboarding
  L5_2 = L5_2.ingameTextArray
  L6_2 = #L5_2
  L6_2 = L6_2 + 1
  L7_2 = L0_1
  L7_2 = L7_2.onboarding
  L7_2 = L7_2.insertTextIntoWorld
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2[L6_2] = L7_2
end

function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2 = L2_2.arrowTutorialImage
  if not L2_2 then
    L3_2 = L23_1
    L4_2 = L18_1
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  if L2_2 then
    L2_2.anchorX = 1
    L2_2.anchorY = 1
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = "tutorialTransition"
    L7_2 = A0_2
    L6_2 = L6_2 .. L7_2
    L5_2.tag = L6_2
    L5_2.x = 480
    L5_2.y = 240
    L5_2.alpha = 0
    L5_2.time = 1
    L5_2.delay = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = "tutorialTransition"
    L7_2 = A0_2
    L6_2 = L6_2 .. L7_2
    L5_2.tag = L6_2
    L5_2.alpha = 1
    L5_2.time = 100
    L6_2 = A1_2 + 1
    L5_2.delay = L6_2
    L3_2(L4_2, L5_2)
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = "tutorialTransition"
    L7_2 = A0_2
    L6_2 = L6_2 .. L7_2
    L5_2.tag = L6_2
    L5_2.y = 260
    L6_2 = easing
    L6_2 = L6_2.outBounce
    L5_2.transition = L6_2
    L5_2.time = 350
    L6_2 = A1_2 + 100
    L5_2.delay = L6_2
    L3_2(L4_2, L5_2)
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = "tutorialTransition"
    L7_2 = A0_2
    L6_2 = L6_2 .. L7_2
    L5_2.tag = L6_2
    L5_2.alpha = 0
    L5_2.time = 150
    L6_2 = A1_2 + 450
    L5_2.delay = L6_2
    L3_2(L4_2, L5_2)
  end
end

function L33_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L23_1
  L1_2 = L18_1
  L0_2 = L0_2(L1_2)
  L0_2.anchorX = 1
  L0_2.anchorY = 1
  L0_2.alpha = 1
  L0_2.x = 480
  L1_2 = L24_1
  L2_2 = L0_2
  L3_2 = true
  L4_2 = -30
  L1_2(L2_2, L3_2, L4_2)
end

function L34_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2 = L2_2.arrowTutorialImage
  if not L2_2 then
    L3_2 = L23_1
    L4_2 = L18_1
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  if L2_2 then
    L2_2.anchorX = 1
    L2_2.anchorY = 1
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = "tutorialTransition"
    L7_2 = A0_2
    L6_2 = L6_2 .. L7_2
    L5_2.tag = L6_2
    L5_2.x = 70
    L5_2.y = 240
    L5_2.alpha = 0
    L5_2.time = 1
    L5_2.delay = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = "tutorialTransition"
    L7_2 = A0_2
    L6_2 = L6_2 .. L7_2
    L5_2.tag = L6_2
    L5_2.alpha = 1
    L5_2.time = 100
    L6_2 = A1_2 + 1
    L5_2.delay = L6_2
    L3_2(L4_2, L5_2)
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = "tutorialTransition"
    L7_2 = A0_2
    L6_2 = L6_2 .. L7_2
    L5_2.tag = L6_2
    L5_2.y = 260
    L6_2 = easing
    L6_2 = L6_2.outBounce
    L5_2.transition = L6_2
    L5_2.time = 350
    L6_2 = A1_2 + 100
    L5_2.delay = L6_2
    L3_2(L4_2, L5_2)
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = "tutorialTransition"
    L7_2 = A0_2
    L6_2 = L6_2 .. L7_2
    L5_2.tag = L6_2
    L5_2.alpha = 0
    L5_2.time = 150
    L6_2 = A1_2 + 450
    L5_2.delay = L6_2
    L3_2(L4_2, L5_2)
  end
end

function L35_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L23_1
  L1_2 = L18_1
  L0_2 = L0_2(L1_2)
  L0_2.anchorX = 1
  L0_2.anchorY = 1
  L0_2.alpha = 1
  L0_2.x = 70
  L1_2 = L24_1
  L2_2 = L0_2
  L3_2 = true
  L4_2 = -30
  L1_2(L2_2, L3_2, L4_2)
end

L36_1 = L0_1.onboarding

function L37_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L6_2 = L0_1
  L6_2 = L6_2.onboarding
  L6_2 = L6_2.clean
  L6_2()
  L6_2 = L23_1
  L7_2 = A5_2
  L6_2 = L6_2(L7_2)
  L6_2.x = A1_2
  L6_2.y = A2_2
  L6_2.anchorX = 0.5
  L6_2.anchorY = 1
  L6_2.alpha = 1
  if A0_2 then
    L7_2 = #A0_2
    if 0 < L7_2 then
      L7_2 = 1
      L8_2 = #A0_2
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = A0_2[L10_2]
        if L11_2 then
          L11_2 = A0_2[L10_2]
          L11_2 = L11_2.insert
          if L11_2 then
            L11_2 = A0_2[L10_2]
            L12_2 = L11_2
            L11_2 = L11_2.insert
            L13_2 = L6_2
            L11_2(L12_2, L13_2)
          end
        end
      end
    end
  end
  L6_2.xScale = 0.01
  L6_2.yScale = 0.01
  L7_2 = transition
  L7_2 = L7_2.to
  L8_2 = L6_2
  L9_2 = {}
  L9_2.tag = "tutorialTransition"
  L10_2 = A3_2 * 0.5
  L9_2.xScale = L10_2
  L10_2 = A4_2 * 0.5
  L9_2.yScale = L10_2
  L9_2.time = 500
  L10_2 = easing
  L10_2 = L10_2.outBounce
  L9_2.transition = L10_2
  L9_2.delay = 0
  L7_2(L8_2, L9_2)
  L7_2 = L24_1
  L8_2 = L6_2
  L9_2 = true
  L10_2 = -20
  L7_2(L8_2, L9_2, L10_2)
  return L6_2
end

L36_1.insertArrow = L37_1
L36_1 = L0_1.onboarding

function L37_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.stepData
  L0_2 = L0_2["25"]
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.insertArrow
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2 = L2_2.guiReferences
  L2_2 = L2_2.market_glasses
  L3_2 = 45
  L4_2 = 0
  L5_2 = 1
  L6_2 = 1
  L7_2 = L18_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L0_2.categoryArrow = L1_2
end

L36_1.showMarketArrow = L37_1
L36_1 = L0_1.onboarding

function L37_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.stepData
  L0_2 = L0_2["25"]
  L0_2 = L0_2.categoryArrow
  if L0_2 then
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2 = L0_2.stepData
    L0_2 = L0_2["25"]
    L0_2 = L0_2.categoryArrow
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2 = L0_2.stepData
    L0_2 = L0_2["25"]
    L0_2.categoryArrow = nil
  end
end

L36_1.removeCategoryArrow = L37_1
L36_1 = L0_1.onboarding

function L37_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.showReferences
  L1_2 = "marketplace_back"
  L0_2(L1_2)
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.stepData
  L0_2 = L0_2["25"]
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.insertArrow
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2 = L2_2.guiReferences
  L2_2 = L2_2.marketplace_back
  L3_2 = 50
  L4_2 = 250
  L5_2 = 1
  L6_2 = 1
  L7_2 = L18_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L0_2.homeArrow = L1_2
end

L36_1.showMarketHomeArrow = L37_1
L36_1 = L0_1.onboarding

function L37_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.stepData
  L0_2 = L0_2["25"]
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.insertArrow
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2 = L2_2.guiReferences
  L2_2 = L2_2.market_glasses_icon
  L3_2 = 45
  L4_2 = 30
  L5_2 = 0.45
  L6_2 = 0.45
  L7_2 = L19_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L0_2.iconArrow = L1_2
end

L36_1.showGlassesArrow = L37_1
L36_1 = L0_1.onboarding

function L37_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.stepData
  L0_2 = L0_2["25"]
  L0_2 = L0_2.iconArrow
  if L0_2 then
    L1_2 = L0_2.removeSelf
    if L1_2 then
      L2_2 = L0_2
      L1_2 = L0_2.removeSelf
      L1_2(L2_2)
      L0_2 = nil
      L1_2 = L1_1
      L1_2 = L1_2.createMessage
      L2_2 = "Man I look good! Let's race some more with the new glasses!"
      L3_2 = L0_1
      L3_2 = L3_2.onboarding
      L3_2 = L3_2.screenDisplayGroup
      L4_2 = L7_1
      L5_2 = false
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = L1_1
      L1_2 = L1_2.setOnCloseFunction
      L2_2 = L0_1
      L2_2 = L2_2.onboarding
      L2_2 = L2_2.showMarketHomeArrow
      L1_2(L2_2)
    end
  end
end

L36_1.removeIconArrow = L37_1
L36_1 = L0_1.contextualOnboarding

function L37_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L0_1
  L0_2 = L0_2.contextualOnboarding
  L0_2 = L0_2.stepData
  L0_2 = L0_2["2"]
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.insertArrow
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2 = L2_2.guiReferences
  L2_2 = L2_2.mainMenu_playButton
  L3_2 = 240
  L4_2 = 152
  L5_2 = 1
  L6_2 = 1
  L7_2 = L18_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L0_2.playArrow = L1_2
end

L36_1.showPlayArrow = L37_1
L36_1 = L0_1.contextualOnboarding

function L37_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.contextualOnboarding
  L0_2 = L0_2.stepData
  L0_2 = L0_2["2"]
  L0_2 = L0_2.playArrow
  if L0_2 then
    L0_2 = L0_1
    L0_2 = L0_2.contextualOnboarding
    L0_2 = L0_2.stepData
    L0_2 = L0_2["2"]
    L0_2 = L0_2.playArrow
    L0_2 = L0_2.removeSelf
    if L0_2 then
      L0_2 = L0_1
      L0_2 = L0_2.contextualOnboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["2"]
      L0_2 = L0_2.playArrow
      L1_2 = L0_2
      L0_2 = L0_2.removeSelf
      L0_2(L1_2)
      L0_2 = L0_1
      L0_2 = L0_2.contextualOnboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["2"]
      L0_2.playArrow = nil
    end
  end
end

L36_1.hidePlayArrow = L37_1
L36_1 = L0_1.contextualOnboarding

function L37_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L0_1
  L0_2 = L0_2.contextualOnboarding
  L0_2 = L0_2.stepData
  L0_2 = L0_2["2"]
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.insertArrow
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2 = L2_2.guiReferences
  L2_2 = L2_2.playMenu_quickPlay
  L3_2 = 240
  L4_2 = 122
  L5_2 = 1
  L6_2 = 1
  L7_2 = L18_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L0_2.quickPlayArrow = L1_2
end

L36_1.showQuickPlayArrow = L37_1
L36_1 = L0_1.contextualOnboarding

function L37_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.contextualOnboarding
  L0_2 = L0_2.stepData
  L0_2 = L0_2["2"]
  L0_2 = L0_2.quickPlayArrow
  if L0_2 then
    L0_2 = L0_1
    L0_2 = L0_2.contextualOnboarding
    L0_2 = L0_2.stepData
    L0_2 = L0_2["2"]
    L0_2 = L0_2.quickPlayArrow
    L0_2 = L0_2.removeSelf
    if L0_2 then
      L0_2 = L0_1
      L0_2 = L0_2.contextualOnboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["2"]
      L0_2 = L0_2.quickPlayArrow
      L1_2 = L0_2
      L0_2 = L0_2.removeSelf
      L0_2(L1_2)
      L0_2 = L0_1
      L0_2 = L0_2.contextualOnboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["2"]
      L0_2.quickPlayArrow = nil
    end
  end
end

L36_1.hideQuickPlayArrow = L37_1

function L36_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A2_2 <= A1_2 then
    if A3_2 == "JUMP!" then
      L8_2 = L0_1
      L8_2 = L8_2.onboarding
      L8_2 = L8_2.activatedPart
      if L8_2 == "7" then
        L8_2 = L0_1
        L8_2 = L8_2.onboarding
        L8_2 = L8_2.playerReferences
        L8_2 = L8_2[1]
        L8_2 = L8_2.y
        L9_2 = L21_1
        L10_2 = 7
        L9_2 = L9_2(L10_2)
        if L8_2 > L9_2 then
          L8_2 = L32_1
          L9_2 = A0_2
          L10_2 = A4_2
          L8_2(L9_2, L10_2)
        end
      else
        L8_2 = L32_1
        L9_2 = A0_2
        L10_2 = A4_2
        L8_2(L9_2, L10_2)
      end
    end
    L8_2 = L31_1
    L9_2 = A5_2
    L10_2 = A6_2
    L11_2 = A3_2
    L12_2 = A4_2
    L13_2 = A7_2
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L8_2 = true
    return L8_2
  end
  L8_2 = false
  return L8_2
end

function L37_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = A1_2.booleanStates
  L3_2 = L3_2.playerDead
  if not L3_2 then
    L3_2 = A1_2.booleanStates
    L3_2 = L3_2.playerInvulnerable
  end
  L4_2 = A1_2.getLinearVelocityOnPlayer
  L4_2, L5_2 = L4_2()
  L6_2 = A1_2.getPlayerPositionInWorld
  L6_2, L7_2 = L6_2()
  L8_2 = A0_2.getPlayerPositionInWorld
  L8_2, L9_2 = L8_2()
  if L3_2 then
    L10_2 = A1_2.setLinearVelocityOnPlayer
    L11_2 = 0
    L12_2 = L5_2
    L10_2(L11_2, L12_2)
    return
  end
  if L4_2 < 0 then
    return
  end
  L10_2 = L8_2 - L6_2
  if L10_2 < 0 then
    L11_2 = A2_2 * 50
    L11_2 = -50 - L11_2
    if L10_2 < L11_2 then
      L12_2 = -400
      if L10_2 < L12_2 then
        L10_2 = L12_2
      end
      L13_2 = L10_2 - L11_2
      L14_2 = L12_2 - L11_2
      L13_2 = L13_2 / L14_2
      L13_2 = 1 - L13_2
      L14_2 = A1_2.setLinearVelocityOnPlayer
      L15_2 = 300 * L13_2
      L15_2 = 60 + L15_2
      L16_2 = L5_2
      L14_2(L15_2, L16_2)
    else
      L12_2 = A1_2.setLinearVelocityOnPlayer
      L13_2 = 350
      L14_2 = L5_2
      L12_2(L13_2, L14_2)
    end
  else
    L11_2 = L20_1
    L12_2 = 64
    L11_2 = L11_2(L12_2)
    L12_2 = L0_1
    L12_2 = L12_2.onboarding
    L12_2 = L12_2.activatedPart
    if L12_2 == "21" then
      L12_2 = L20_1
      L13_2 = 68
      L12_2 = L12_2(L13_2)
      L11_2 = L12_2
    else
      L12_2 = L0_1
      L12_2 = L12_2.onboarding
      L12_2 = L12_2.activatedPart
      if L12_2 == "13" then
        L12_2 = L20_1
        L13_2 = 58
        L12_2 = L12_2(L13_2)
        L11_2 = L12_2
      end
    end
    if 225 < L10_2 and L8_2 <= L11_2 then
      L12_2 = L8_2 + 300
      L13_2 = L2_1
      L14_2 = 100
      L15_2 = 200
      L13_2 = L13_2(L14_2, L15_2)
      L12_2 = L12_2 + L13_2
      L13_2 = L0_1
      L13_2 = L13_2.onboarding
      L13_2 = L13_2.activatedPart
      if L13_2 == "13" then
        L13_2 = A1_2.setPlayerPositionInWorld
        L14_2 = L12_2
        L15_2 = L21_1
        L16_2 = 21
        L15_2, L16_2 = L15_2(L16_2)
        L13_2(L14_2, L15_2, L16_2)
      else
        L13_2 = A1_2.setPlayerPositionInWorld
        L14_2 = L12_2
        L15_2 = 25
        L13_2(L14_2, L15_2)
      end
    else
      L12_2 = A1_2.setLinearVelocityOnPlayer
      L13_2 = 0
      L14_2 = L5_2
      L12_2(L13_2, L14_2)
    end
  end
end

function L38_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = A1_2.booleanStates
  L3_2 = L3_2.playerDead
  if not L3_2 then
    L3_2 = A1_2.booleanStates
    L3_2 = L3_2.playerInvulnerable
  end
  L4_2 = A1_2.getLinearVelocityOnPlayer
  L4_2, L5_2 = L4_2()
  L6_2 = A1_2.getPlayerPositionInWorld
  L6_2, L7_2 = L6_2()
  L8_2 = A0_2.getPlayerPositionInWorld
  L8_2, L9_2 = L8_2()
  if L4_2 < 0 then
    return
  end
  if L3_2 then
    L10_2 = A1_2.setLinearVelocityOnPlayer
    L11_2 = 0
    L12_2 = L5_2
    L10_2(L11_2, L12_2)
    return
  end
  L10_2 = L8_2 - L6_2
  if L10_2 < 0 then
    L11_2 = A2_2 * 50
    L11_2 = -50 - L11_2
    if L10_2 < L11_2 then
      L12_2 = -400
      if L10_2 < L12_2 then
        L10_2 = L12_2
      end
      L13_2 = L10_2 - L11_2
      L14_2 = L12_2 - L11_2
      L13_2 = L13_2 / L14_2
      L13_2 = 1 - L13_2
      L14_2 = A1_2.setLinearVelocityOnPlayer
      L15_2 = 300 * L13_2
      L15_2 = 60 + L15_2
      L16_2 = L5_2
      L14_2(L15_2, L16_2)
    else
      L12_2 = A1_2.setLinearVelocityOnPlayer
      L13_2 = 350
      L14_2 = L5_2
      L12_2(L13_2, L14_2)
    end
  else
    L11_2 = L20_1
    L12_2 = 64
    L11_2 = L11_2(L12_2)
    L12_2 = L0_1
    L12_2 = L12_2.onboarding
    L12_2 = L12_2.activatedPart
    if L12_2 == "21" then
      L12_2 = L20_1
      L13_2 = 123
      L12_2 = L12_2(L13_2)
      L11_2 = L12_2
    end
    if 200 < L10_2 and L8_2 <= L11_2 then
      L12_2 = L8_2 + 300
      L13_2 = L2_1
      L14_2 = 100
      L15_2 = 200
      L13_2 = L13_2(L14_2, L15_2)
      L12_2 = L12_2 + L13_2
      L13_2 = L0_1
      L13_2 = L13_2.onboarding
      L13_2 = L13_2.activatedPart
      if L13_2 == "13" then
        L13_2 = A1_2.setPlayerPositionInWorld
        L14_2 = L12_2
        L15_2 = L21_1
        L16_2 = 22
        L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L15_2(L16_2)
        L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      else
        L13_2 = A1_2.setPlayerPositionInWorld
        L14_2 = L12_2
        L15_2 = 50
        L13_2(L14_2, L15_2)
      end
    else
      L12_2 = A1_2.setLinearVelocityOnPlayer
      L13_2 = 0
      L14_2 = L5_2
      L12_2(L13_2, L14_2)
    end
  end
  L11_2 = A0_2.x
  L12_2 = L20_1
  L13_2 = 65
  L12_2 = L12_2(L13_2)
  if L11_2 > L12_2 then
    L11_2 = L0_1
    L11_2 = L11_2.onboarding
    L11_2 = L11_2.stepData
    L11_2 = L11_2["9"]
    L11_2 = L11_2.placedTrap1
    if not L11_2 then
      L11_2 = L3_1
      L11_2 = L11_2.usePowerUp
      L12_2 = 8
      L13_2 = A1_2.id
      L14_2 = nil
      L15_2 = nil
      L16_2 = L6_2
      L17_2 = L7_2
      L18_2 = L0_1
      L18_2 = L18_2.onboarding
      L18_2 = L18_2.ingameDisplayGroup
      L19_2 = L0_1
      L19_2 = L19_2.onboarding
      L19_2 = L19_2.screenDisplayGroup
      L20_2 = L0_1
      L20_2 = L20_2.onboarding
      L20_2 = L20_2.playerReferences
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L11_2 = L26_1
      L12_2 = 20
      L13_2 = -40
      L14_2 = L27_1
      L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2()
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L11_2 = L0_1
      L11_2 = L11_2.onboarding
      L11_2 = L11_2.stepData
      L11_2 = L11_2["9"]
      L11_2.placedTrap1 = true
  end
  else
    L11_2 = A0_2.x
    L12_2 = L20_1
    L13_2 = 70
    L12_2 = L12_2(L13_2)
    if L11_2 > L12_2 then
      L11_2 = L0_1
      L11_2 = L11_2.onboarding
      L11_2 = L11_2.stepData
      L11_2 = L11_2["9"]
      L11_2 = L11_2.placedTrap2
      if not L11_2 then
        L11_2 = L3_1
        L11_2 = L11_2.usePowerUp
        L12_2 = 8
        L13_2 = A1_2.id
        L14_2 = nil
        L15_2 = nil
        L16_2 = L6_2
        L17_2 = L7_2
        L18_2 = L0_1
        L18_2 = L18_2.onboarding
        L18_2 = L18_2.ingameDisplayGroup
        L19_2 = L0_1
        L19_2 = L19_2.onboarding
        L19_2 = L19_2.screenDisplayGroup
        L20_2 = L0_1
        L20_2 = L20_2.onboarding
        L20_2 = L20_2.playerReferences
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L11_2 = L26_1
        L12_2 = 20
        L13_2 = -40
        L14_2 = L27_1
        L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2()
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L11_2 = L0_1
        L11_2 = L11_2.onboarding
        L11_2 = L11_2.stepData
        L11_2 = L11_2["9"]
        L11_2.placedTrap2 = true
    end
    else
      L11_2 = A0_2.x
      L12_2 = L20_1
      L13_2 = 75
      L12_2 = L12_2(L13_2)
      if L11_2 > L12_2 then
        L11_2 = L0_1
        L11_2 = L11_2.onboarding
        L11_2 = L11_2.stepData
        L11_2 = L11_2["9"]
        L11_2 = L11_2.placedTrap3
        if not L11_2 then
          L11_2 = L3_1
          L11_2 = L11_2.usePowerUp
          L12_2 = 8
          L13_2 = A1_2.id
          L14_2 = nil
          L15_2 = nil
          L16_2 = L6_2
          L17_2 = L7_2
          L18_2 = L0_1
          L18_2 = L18_2.onboarding
          L18_2 = L18_2.ingameDisplayGroup
          L19_2 = L0_1
          L19_2 = L19_2.onboarding
          L19_2 = L19_2.screenDisplayGroup
          L20_2 = L0_1
          L20_2 = L20_2.onboarding
          L20_2 = L20_2.playerReferences
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          L11_2 = L26_1
          L12_2 = 20
          L13_2 = -40
          L14_2 = L27_1
          L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2()
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          L11_2 = L0_1
          L11_2 = L11_2.onboarding
          L11_2 = L11_2.stepData
          L11_2 = L11_2["9"]
          L11_2.placedTrap3 = true
      end
      else
        L11_2 = A0_2.x
        L12_2 = L20_1
        L13_2 = 80
        L12_2 = L12_2(L13_2)
        if L11_2 > L12_2 then
          L11_2 = L0_1
          L11_2 = L11_2.onboarding
          L11_2 = L11_2.stepData
          L11_2 = L11_2["9"]
          L11_2 = L11_2.placedTrap4
          if not L11_2 then
            L11_2 = L3_1
            L11_2 = L11_2.usePowerUp
            L12_2 = 2
            L13_2 = A1_2.id
            L14_2 = nil
            L15_2 = nil
            L16_2 = L6_2
            L17_2 = L7_2
            L18_2 = L0_1
            L18_2 = L18_2.onboarding
            L18_2 = L18_2.ingameDisplayGroup
            L19_2 = L0_1
            L19_2 = L19_2.onboarding
            L19_2 = L19_2.screenDisplayGroup
            L20_2 = L0_1
            L20_2 = L20_2.onboarding
            L20_2 = L20_2.playerReferences
            L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
            L11_2 = L26_1
            L12_2 = 0
            L13_2 = -40
            L14_2 = L27_1
            L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2()
            L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
            L11_2 = L0_1
            L11_2 = L11_2.onboarding
            L11_2 = L11_2.stepData
            L11_2 = L11_2["9"]
            L11_2.placedTrap4 = true
        end
        else
          L11_2 = A0_2.x
          L12_2 = L20_1
          L13_2 = 85
          L12_2 = L12_2(L13_2)
          if L11_2 > L12_2 then
            L11_2 = L0_1
            L11_2 = L11_2.onboarding
            L11_2 = L11_2.stepData
            L11_2 = L11_2["9"]
            L11_2 = L11_2.placedTrap5
            if not L11_2 then
              L11_2 = L3_1
              L11_2 = L11_2.usePowerUp
              L12_2 = 2
              L13_2 = A1_2.id
              L14_2 = nil
              L15_2 = nil
              L16_2 = L6_2
              L17_2 = L7_2
              L18_2 = L0_1
              L18_2 = L18_2.onboarding
              L18_2 = L18_2.ingameDisplayGroup
              L19_2 = L0_1
              L19_2 = L19_2.onboarding
              L19_2 = L19_2.screenDisplayGroup
              L20_2 = L0_1
              L20_2 = L20_2.onboarding
              L20_2 = L20_2.playerReferences
              L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
              L11_2 = L26_1
              L12_2 = 0
              L13_2 = -40
              L14_2 = L27_1
              L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2()
              L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
              L11_2 = L0_1
              L11_2 = L11_2.onboarding
              L11_2 = L11_2.stepData
              L11_2 = L11_2["9"]
              L11_2.placedTrap5 = true
          end
          else
            L11_2 = A0_2.x
            L12_2 = L20_1
            L13_2 = 89
            L12_2 = L12_2(L13_2)
            if L11_2 > L12_2 then
              L11_2 = L0_1
              L11_2 = L11_2.onboarding
              L11_2 = L11_2.stepData
              L11_2 = L11_2["9"]
              L11_2 = L11_2.placedTrap6
              if not L11_2 then
                L11_2 = L3_1
                L11_2 = L11_2.usePowerUp
                L12_2 = 2
                L13_2 = A1_2.id
                L14_2 = nil
                L15_2 = nil
                L16_2 = L6_2
                L17_2 = L7_2
                L18_2 = L0_1
                L18_2 = L18_2.onboarding
                L18_2 = L18_2.ingameDisplayGroup
                L19_2 = L0_1
                L19_2 = L19_2.onboarding
                L19_2 = L19_2.screenDisplayGroup
                L20_2 = L0_1
                L20_2 = L20_2.onboarding
                L20_2 = L20_2.playerReferences
                L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
                L11_2 = L26_1
                L12_2 = 0
                L13_2 = -40
                L14_2 = L27_1
                L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2()
                L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
                L11_2 = L0_1
                L11_2 = L11_2.onboarding
                L11_2 = L11_2.stepData
                L11_2 = L11_2["9"]
                L11_2.placedTrap6 = true
              end
            end
          end
        end
      end
    end
  end
end

function L39_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  if not A0_2 or not A1_2 then
    return
  end
  L3_2 = A1_2.booleanStates
  L3_2 = L3_2.playerDead
  if not L3_2 then
    L3_2 = A1_2.booleanStates
    L3_2 = L3_2.playerInvulnerable
  end
  if L3_2 then
    return
  end
  L4_2 = A0_2.getPlayerPositionInWorld
  L4_2, L5_2 = L4_2()
  L6_2 = A1_2.getPlayerPositionInWorld
  L6_2, L7_2 = L6_2()
  L8_2 = L20_1
  L9_2 = 16
  L8_2 = L8_2(L9_2)
  if L6_2 > L8_2 and A2_2 == 1 then
    L8_2 = L0_1
    L8_2 = L8_2.onboarding
    L8_2 = L8_2.stepData
    L8_2 = L8_2["9"]
    L8_2 = L8_2.botUsedShield
    if not L8_2 then
      L8_2 = L22_1
      L9_2 = A1_2
      L10_2 = A1_2.id
      L11_2 = 5
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = L0_1
      L8_2 = L8_2.onboarding
      L8_2 = L8_2.stepData
      L8_2 = L8_2["9"]
      L8_2.botUsedShield = true
    end
  end
  L8_2 = L20_1
  L9_2 = 23
  L8_2 = L8_2(L9_2)
  if L6_2 > L8_2 then
    L8_2 = A1_2.setLinearVelocityOnPlayer
    L9_2 = 0
    L10_2 = 0
    L8_2(L9_2, L10_2)
    return
  end
  L8_2 = L4_2 - L6_2
  L9_2 = L20_1
  L10_2 = 40
  L9_2 = L9_2(L10_2)
  if L4_2 < L9_2 then
    L9_2 = math
    L9_2 = L9_2.abs
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 <= 200 then
      L9_2 = A1_2.getLinearVelocityOnPlayer
      L9_2, L10_2 = L9_2()
      L11_2 = A2_2 - 2
      L11_2 = L11_2 * 80
      L11_2 = L4_2 + L11_2
      L12_2 = L11_2 - L6_2
      if 0 < L12_2 then
        L13_2 = 250
        if L12_2 > L13_2 then
          L12_2 = L13_2
        end
        L14_2 = L12_2 / L13_2
        L15_2 = 50 * L14_2
        L16_2 = A1_2.setLinearVelocityOnPlayer
        L17_2 = L9_2 + L15_2
        L18_2 = L10_2
        L16_2(L17_2, L18_2)
      end
  end
  else
    L9_2 = A1_2.setLinearVelocityOnPlayer
    L10_2 = 0
    L11_2 = 0
    L9_2(L10_2, L11_2)
  end
end

function L40_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = A1_2.booleanStates
  L3_2 = L3_2.playerDead
  if not L3_2 then
    L3_2 = A1_2.booleanStates
    L3_2 = L3_2.playerInvulnerable
  end
  if L3_2 then
    return
  end
  L4_2 = A0_2.getPlayerPositionInWorld
  L4_2, L5_2 = L4_2()
  L6_2 = A1_2.getPlayerPositionInWorld
  L6_2, L7_2 = L6_2()
  L8_2 = L4_2 - L6_2
  L9_2 = A2_2 * 25
  L9_2 = L4_2 - L9_2
  L10_2 = L9_2 - L6_2
  L11_2 = A1_2.getLinearVelocityOnPlayer
  L11_2, L12_2 = L11_2()
  if 0 < L10_2 then
    L13_2 = 300
    if L10_2 > L13_2 then
      L10_2 = L13_2
    end
    L14_2 = L10_2 / L13_2
    L15_2 = 30 * L14_2
    L16_2 = L11_2 + L15_2
    if L16_2 < 450 then
      L16_2 = A1_2.setLinearVelocityOnPlayer
      L17_2 = L11_2 + L15_2
      L18_2 = L12_2
      L16_2(L17_2, L18_2)
    end
  else
    L13_2 = A1_2.setLinearVelocityOnPlayer
    L14_2 = L11_2 - 1
    L15_2 = L12_2
    L13_2(L14_2, L15_2)
  end
  L13_2 = A1_2.setPowerUp
  L14_2 = 0
  L13_2(L14_2)
  L13_2 = A1_2.canJump
  L13_2 = L13_2()
  if L13_2 then
    L13_2 = A1_2.getLinearVelocityOnPlayer
    L13_2, L14_2 = L13_2()
    L15_2 = L2_1
    L15_2 = L15_2()
    if not (L15_2 < 0.05) then
      L15_2 = math
      L15_2 = L15_2.abs
      L16_2 = L13_2
      L15_2 = L15_2(L16_2)
      if not (L15_2 < 10) then
        goto lbl_61
      end
    end
    L15_2 = A1_2.jump
    L15_2()
  end
  ::lbl_61::
end

function L41_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = A1_2.booleanStates
  L3_2 = L3_2.playerDead
  if not L3_2 then
    L3_2 = A1_2.booleanStates
    L3_2 = L3_2.playerInvulnerable
  end
  if L3_2 then
    return
  end
  L4_2 = A1_2.getLinearVelocityOnPlayer
  L4_2, L5_2 = L4_2()
  L6_2 = A1_2.getPlayerPositionInWorld
  L6_2, L7_2 = L6_2()
  L8_2 = A0_2.getPlayerPositionInWorld
  L8_2, L9_2 = L8_2()
  L10_2 = L8_2 + 200
  L10_2 = L6_2 - L10_2
  L11_2 = 500
  if 0 < L10_2 then
    if L10_2 > L11_2 then
      L10_2 = L11_2
    end
    L12_2 = L10_2 / L11_2
    L13_2 = 300 * L12_2
    L13_2 = 50 + L13_2
    L14_2 = L4_2 - L13_2
    L14_2 = L14_2 * 0.1
    L14_2 = L4_2 - L14_2
    L15_2 = A1_2.setLinearVelocityOnPlayer
    L16_2 = L14_2
    L17_2 = L5_2
    L15_2(L16_2, L17_2)
  else
    L12_2 = L20_1
    L13_2 = L0_1
    L13_2 = L13_2.onboarding
    L13_2 = L13_2.stepData
    L14_2 = L0_1
    L14_2 = L14_2.onboarding
    L14_2 = L14_2.activatedPart
    L13_2 = L13_2[L14_2]
    L13_2 = L13_2.endAtTileX
    L12_2 = L12_2(L13_2)
    L12_2 = L12_2 * 0.9
    if L8_2 <= L12_2 then
      L10_2 = L8_2 - L6_2
      if L11_2 < L10_2 then
        L10_2 = L11_2
      end
      L12_2 = L10_2 / L11_2
      L13_2 = 50 * L12_2
      L14_2 = L13_2 * 0.1
      L14_2 = L4_2 + L14_2
      L15_2 = A1_2.setLinearVelocityOnPlayer
      L16_2 = L14_2
      L17_2 = L5_2
      L15_2(L16_2, L17_2)
    end
  end
end

function L42_1(A0_2, A1_2)
  local L2_2
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2 = L2_2.botnames
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L2_2 = ""
  end
  return L2_2
end

L43_1 = L0_1.onboarding

function L44_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = {}
  L1_2.next = "1"
  L0_2["0"] = L1_2
  L1_2 = {}
  L1_2.description = "Starting Onboarding, Jump & Power box tutorial"
  L1_2.ingame = true
  L1_2.walkIn = true
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L1_2.overrideAI = L2_2
  L1_2.overrideCountdown = true
  L1_2.mapId = 1000
  
  function L2_2()
    local L0_3, L1_3
  end
  
  L1_2.preLoad = L2_2
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "jump"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "powerUp"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "killMessages"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "position"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "countdown"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "bottomBar"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "exit"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
  end
  
  L1_2.onSetupGameComplete = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    
    function L1_3(A0_4)
      local L1_4
      if A0_4 == 0 then
        L1_4 = 26
        return L1_4
      elseif A0_4 == 1 then
        L1_4 = 31
        return L1_4
      elseif A0_4 == 2 then
        L1_4 = 36
        return L1_4
      elseif A0_4 == 3 then
        L1_4 = 48
        return L1_4
      elseif A0_4 == 4 then
        L1_4 = 58
        return L1_4
      elseif A0_4 == 5 then
        L1_4 = 60
        return L1_4
      else
        L1_4 = 999
        return L1_4
      end
    end
    
    function L2_3(A0_4)
      local L1_4
      if A0_4 == 10 then
        L1_4 = 500
        return L1_4
      elseif A0_4 == 11 then
        L1_4 = 1000
        return L1_4
      elseif A0_4 == 12 then
        L1_4 = 1500
        return L1_4
      else
        L1_4 = 0
        return L1_4
      end
    end
    
    function L3_3(A0_4)
      local L1_4
      if A0_4 == 3 then
        L1_4 = 5
        return L1_4
      elseif A0_4 == 4 then
        L1_4 = 8
        return L1_4
      elseif A0_4 == 5 then
        L1_4 = 9
        return L1_4
      elseif A0_4 == 6 or A0_4 == 7 or A0_4 == 8 then
        L1_4 = 10
        return L1_4
      else
        L1_4 = 3
        return L1_4
      end
    end
    
    function L4_3(A0_4)
      local L1_4
      if A0_4 == 4 then
        L1_4 = "1. GET POWER UP"
        return L1_4
      elseif A0_4 == 5 then
        L1_4 = "2. USE POWER UP"
        return L1_4
      else
        L1_4 = "JUMP!"
        return L1_4
      end
    end
    
    function L5_3(A0_4)
      local L1_4, L2_4
      if A0_4 == 3 then
        L1_4 = L1_3
        L2_4 = A0_4
        L1_4 = L1_4(L2_4)
        L1_4 = L1_4 - 3
        L1_4 = L1_4 * 160
        L1_4 = L1_4 * 0.5
        return L1_4
      else
        L1_4 = L1_3
        L2_4 = A0_4
        L1_4 = L1_4(L2_4)
        L1_4 = L1_4 - 2
        L1_4 = L1_4 * 160
        L1_4 = L1_4 * 0.5
        return L1_4
      end
    end
    
    L6_3 = L0_1
    L6_3 = L6_3.onboarding
    L6_3 = L6_3.ingameTextArray
    L6_3 = #L6_3
    L7_3 = L36_1
    L8_3 = L6_3
    L9_3 = A0_3.x
    L10_3 = L5_3
    L11_3 = L6_3
    L10_3 = L10_3(L11_3)
    L11_3 = L4_3
    L12_3 = L6_3
    L11_3 = L11_3(L12_3)
    L12_3 = L2_3
    L13_3 = L6_3
    L12_3 = L12_3(L13_3)
    L13_3 = L1_3
    L14_3 = L6_3
    L13_3 = L13_3(L14_3)
    L14_3 = L3_3
    L15_3 = L6_3
    L14_3 = L14_3(L15_3)
    L15_3 = 30
    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
    L7_3 = A0_3.x
    L8_3 = L20_1
    L9_3 = 19
    L8_3 = L8_3(L9_3)
    if L7_3 > L8_3 and L6_3 == 0 then
      L7_3 = L0_1
      L7_3 = L7_3.onboarding
      L7_3 = L7_3.showReferences
      L8_3 = "jump"
      L7_3(L8_3)
      L7_3 = L0_1
      L7_3 = L7_3.onboarding
      L7_3 = L7_3.setAlphaForReferences
      L8_3 = "exit"
      L9_3 = L4_1
      L7_3(L8_3, L9_3)
    end
    L7_3 = A0_3.x
    L8_3 = L20_1
    L9_3 = 58
    L8_3 = L8_3(L9_3)
    if L7_3 > L8_3 then
      L7_3 = L0_1
      L7_3 = L7_3.onboarding
      L7_3 = L7_3.stepData
      L7_3 = L7_3["1"]
      L7_3 = L7_3.powerUpTutorial
      if not L7_3 then
        L7_3 = L0_1
        L7_3 = L7_3.onboarding
        L7_3 = L7_3.showReferences
        L8_3 = "powerUp"
        L7_3(L8_3)
        L7_3 = L0_1
        L7_3 = L7_3.onboarding
        L7_3 = L7_3.pausePhysics
        L7_3()
        L7_3 = L35_1
        L7_3()
        L7_3 = L0_1
        L7_3 = L7_3.onboarding
        L7_3 = L7_3.stepData
        L7_3 = L7_3["1"]
        L7_3.powerUpTutorial = true
      end
    end
    L7_3 = A0_3.x
    L8_3 = L20_1
    L9_3 = 25
    L8_3 = L8_3(L9_3)
    if L7_3 > L8_3 then
      L7_3 = 2
      L8_3 = L0_1
      L8_3 = L8_3.onboarding
      L8_3 = L8_3.playerReferences
      L8_3 = #L8_3
      L9_3 = 1
      for L10_3 = L7_3, L8_3, L9_3 do
        L11_3 = L0_1
        L11_3 = L11_3.onboarding
        L11_3 = L11_3.playerReferences
        L11_3 = L11_3[L10_3]
        L11_3 = L11_3.setLinearVelocityOnPlayer
        L12_3 = 0
        L13_3 = 0
        L11_3(L12_3, L13_3)
      end
    end
    L7_3 = A0_3.x
    L8_3 = L20_1
    L9_3 = 36.15
    L8_3 = L8_3(L9_3)
    if L7_3 > L8_3 then
      L7_3 = L0_1
      L7_3 = L7_3.onboarding
      L7_3 = L7_3.stepData
      L7_3 = L7_3["1"]
      L7_3 = L7_3.hasJumped
      if not L7_3 then
        L7_3 = L0_1
        L7_3 = L7_3.onboarding
        L7_3 = L7_3.physicsPaused
        if not L7_3 then
          L7_3 = L0_1
          L7_3 = L7_3.onboarding
          L7_3 = L7_3.pausePhysics
          L7_3()
          L7_3 = L33_1
          L7_3()
        end
      end
    end
    L7_3 = A0_3.x
    L8_3 = L20_1
    L9_3 = L0_1
    L9_3 = L9_3.onboarding
    L9_3 = L9_3.stepData
    L9_3 = L9_3["1"]
    L9_3 = L9_3.endAtTileX
    L8_3 = L8_3(L9_3)
    if L7_3 > L8_3 then
      L7_3 = L0_1
      L7_3 = L7_3.onboarding
      L7_3 = L7_3.stepData
      L7_3 = L7_3["1"]
      L7_3 = L7_3.fadeOut
      if not L7_3 then
        function L7_3()
          local L0_4, L1_4, L2_4
          
          L0_4 = L28_1
          L1_4 = L0_1
          L1_4 = L1_4.onboarding
          L1_4 = L1_4.screenDisplayGroup
          L2_4 = L0_1
          L2_4 = L2_4.onboarding
          L2_4 = L2_4.stepDone
          L0_4(L1_4, L2_4)
        end
        
        L8_3 = L1_1
        L8_3 = L8_3.createMessage
        L9_3 = [[
Wow, you're fast!
Welcome to Fun Run 2.
Let's have some fun!]]
        L10_3 = L0_1
        L10_3 = L10_3.onboarding
        L10_3 = L10_3.screenDisplayGroup
        L11_3 = L6_1
        L8_3(L9_3, L10_3, L11_3)
        L8_3 = L1_1
        L8_3 = L8_3.setOnCloseFunction
        L9_3 = L7_3
        L8_3(L9_3)
        L8_3 = L0_1
        L8_3 = L8_3.onboarding
        L8_3 = L8_3.stepData
        L8_3 = L8_3["1"]
        L8_3.fadeOut = true
      end
    end
  end
  
  L1_2.onGameUpdate = L2_2
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = 4
    return L0_3
  end
  
  L1_2.powerBoxFunction = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 1
    L0_3[2] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 214
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 214
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 2
    L0_3[3] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 104
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 104
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 3
    L0_3[4] = L1_3
  end
  
  L1_2.setAIBots = L2_2
  L1_2.scene = "lua.scenes.gamePlay"
  L1_2.next = "3"
  L0_2["1"] = L1_2
  L1_2 = {}
  L1_2.description = "First post game scene, Friendly helper"
  L1_2.scene = "lua.scenes.postLobby"
  L1_2.skipDB = true
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_exit"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_addFriends"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_chat"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_times"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_mapName"
    L0_3(L1_3)
    L0_3 = L1_1
    L0_3 = L0_3.createMessage
    L1_3 = [[
Wow, you're fast!
Welcome to Fun Run 2, I am your friendly helper. Let's have some fun!]]
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.screenDisplayGroup
    L3_3 = L6_1
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L1_2.postLoad = L2_2
  L1_2.next = "3"
  L0_2["2"] = L1_2
  L1_2 = {}
  L1_2.description = "Sawblade challenge"
  L1_2.ingame = true
  L1_2.walkIn = true
  L1_2.overrideCountdown = true
  L1_2.mapId = 1001
  L1_2.scene = "lua.scenes.gamePlay"
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = 1
    return L0_3
  end
  
  L1_2.powerBoxFunction = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 1
    L0_3[2] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 214
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 214
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 2
    L0_3[3] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 104
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 104
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 3
    L0_3[4] = L1_3
  end
  
  L1_2.setAIBots = L2_2
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L1_2.overrideAI = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "jump"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "killMessages"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "position"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "countdown"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "bottomBar"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.setAlphaForReferences
    L1_3 = "exit"
    L2_3 = L4_1
    L0_3(L1_3, L2_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.x
    L1_3 = 2
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.playerReferences
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L0_1
      L5_3 = L5_3.onboarding
      L5_3 = L5_3.playerReferences
      L5_3 = L5_3[L4_3]
      L6_3 = L0_3 + 350
      L7_3 = L4_3 - 2
      L7_3 = L7_3 * 60
      L6_3 = L6_3 + L7_3
      L5_3.x = L6_3
    end
  end
  
  L1_2.onSetupGameComplete = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = 2
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.playerReferences
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L37_1
      L6_3 = A0_3
      L7_3 = L0_1
      L7_3 = L7_3.onboarding
      L7_3 = L7_3.playerReferences
      L7_3 = L7_3[L4_3]
      L8_3 = L4_3 - 1
      L5_3(L6_3, L7_3, L8_3)
      L5_3 = L0_1
      L5_3 = L5_3.onboarding
      L5_3 = L5_3.playerReferences
      L5_3 = L5_3[L4_3]
      L5_3 = L5_3.setPowerUp
      L6_3 = 0
      L5_3(L6_3)
      L5_3 = L0_1
      L5_3 = L5_3.onboarding
      L5_3 = L5_3.playerReferences
      L5_3 = L5_3[L4_3]
      L5_3 = L5_3.canJump
      L5_3 = L5_3()
      if L5_3 then
        L5_3 = L2_1
        L5_3 = L5_3()
        if L5_3 < 0.1 then
          L5_3 = L0_1
          L5_3 = L5_3.onboarding
          L5_3 = L5_3.playerReferences
          L5_3 = L5_3[L4_3]
          L5_3 = L5_3.jump
          L5_3()
        end
      end
    end
    L1_3 = A0_3.x
    L2_3 = L20_1
    L3_3 = 30
    L2_3 = L2_3(L3_3)
    if L1_3 > L2_3 then
      L1_3 = L0_1
      L1_3 = L1_3.onboarding
      L1_3 = L1_3.stepData
      L1_3 = L1_3["3"]
      L1_3 = L1_3.usedSawblade
      if not L1_3 then
        L1_3 = L0_1
        L1_3 = L1_3.onboarding
        L1_3 = L1_3.physicsPaused
        if not L1_3 then
          L1_3 = L0_1
          L1_3 = L1_3.onboarding
          L1_3 = L1_3.pausePhysics
          L1_3()
          L1_3 = L35_1
          L1_3()
        end
      end
    end
    L1_3 = A0_3.x
    L2_3 = L20_1
    L3_3 = L0_1
    L3_3 = L3_3.onboarding
    L3_3 = L3_3.stepData
    L3_3 = L3_3["3"]
    L3_3 = L3_3.endAtTileX
    L2_3 = L2_3(L3_3)
    if L1_3 > L2_3 then
      L1_3 = L0_1
      L1_3 = L1_3.onboarding
      L1_3 = L1_3.stepData
      L1_3 = L1_3["3"]
      L1_3 = L1_3.fadeOut
      if not L1_3 then
        L1_3 = L28_1
        L2_3 = L0_1
        L2_3 = L2_3.onboarding
        L2_3 = L2_3.screenDisplayGroup
        L3_3 = L0_1
        L3_3 = L3_3.onboarding
        L3_3 = L3_3.stepDone
        L1_3(L2_3, L3_3)
        L1_3 = L0_1
        L1_3 = L1_3.onboarding
        L1_3 = L1_3.stepData
        L1_3 = L1_3["3"]
        L1_3.fadeOut = true
      end
    end
  end
  
  L1_2.onGameUpdate = L2_2
  L1_2.next = "21"
  L0_2["3"] = L1_2
  L1_2 = {}
  L1_2.description = "Sawblade challenge post game scene"
  L1_2.scene = "lua.scenes.postLobby"
  L1_2.skipDB = true
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_exit"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_addFriends"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_chat"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_times"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_mapName"
    L0_3(L1_3)
  end
  
  L1_2.postLoad = L2_2
  L1_2.next = "5"
  L0_2["4"] = L1_2
  L1_2 = {}
  L1_2.description = "First Race"
  L1_2.ingame = true
  L1_2.walkIn = false
  L1_2.overrideCountdown = false
  L1_2.mapId = 2000
  L1_2.rubberband = true
  L1_2.scene = "lua.scenes.gamePlay"
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = {}
    L2_3 = 1
    L3_3 = 4
    L4_3 = 7
    L5_3 = 3
    L1_3[1] = L2_3
    L1_3[2] = L3_3
    L1_3[3] = L4_3
    L1_3[4] = L5_3
    L2_3 = L2_1
    L3_3 = 1
    L4_3 = #L1_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = L1_3[L2_3]
    return L3_3
  end
  
  L1_2.powerBoxFunction = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 1
    L0_3[2] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 214
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 214
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 2
    L0_3[3] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L0_3[4] = nil
  end
  
  L1_2.setAIBots = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "killMessages"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.setAlphaForReferences
    L1_3 = "exit"
    L2_3 = L4_1
    L0_3(L1_3, L2_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.setPowerUp
    L1_3 = 1
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[2]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[3]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
  end
  
  L1_2.onSetupGameComplete = L2_2
  L1_2.next = "6"
  L0_2["5"] = L1_2
  L1_2 = {}
  L1_2.description = "First Race"
  L1_2.scene = "lua.scenes.postLobby"
  L1_2.skipDB = true
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_exit"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_addFriends"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_chat"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_market"
    L0_3(L1_3)
  end
  
  L1_2.postLoad = L2_2
  L1_2.next = "7"
  L0_2["6"] = L1_2
  L1_2 = {}
  L1_2.description = "Wall climb challenge"
  L1_2.ingame = true
  L1_2.walkIn = true
  L1_2.overrideCountdown = true
  L1_2.mapId = 1002
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L1_2.overrideAI = L2_2
  L1_2.scene = "lua.scenes.gamePlay"
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = 4
    return L0_3
  end
  
  L1_2.powerBoxFunction = L2_2
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L0_3[2] = nil
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L0_3[3] = nil
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L0_3[4] = nil
  end
  
  L1_2.setAIBots = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "position"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "countdown"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "bottomBar"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.setAlphaForReferences
    L1_3 = "exit"
    L2_3 = L4_1
    L0_3(L1_3, L2_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
  end
  
  L1_2.onSetupGameComplete = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    
    function L1_3(A0_4)
      local L1_4
      if A0_4 == 0 or A0_4 == 1 or A0_4 == 2 or A0_4 == 3 then
        L1_4 = 19
        return L1_4
      elseif A0_4 == 4 then
        L1_4 = 24
        return L1_4
      elseif A0_4 == 5 then
        L1_4 = 30
        return L1_4
      elseif A0_4 == 6 or A0_4 == 7 or A0_4 == 8 then
        L1_4 = 42
        return L1_4
      else
        L1_4 = 999
        return L1_4
      end
    end
    
    function L2_3(A0_4)
      local L1_4
      if A0_4 == 1 or A0_4 == 7 then
        L1_4 = 500
        return L1_4
      elseif A0_4 == 2 or A0_4 == 8 then
        L1_4 = 1000
        return L1_4
      elseif A0_4 == 3 then
        L1_4 = 1500
        return L1_4
      else
        L1_4 = 0
        return L1_4
      end
    end
    
    function L3_3(A0_4)
      local L1_4
      if A0_4 == 0 then
        L1_4 = 15
        return L1_4
      elseif A0_4 == 1 then
        L1_4 = 13
        return L1_4
      elseif A0_4 == 2 then
        L1_4 = 11
        return L1_4
      elseif A0_4 == 3 then
        L1_4 = 9
        return L1_4
      elseif A0_4 == 4 then
        L1_4 = 9
        return L1_4
      elseif A0_4 == 5 then
        L1_4 = 9
        return L1_4
      elseif A0_4 == 6 then
        L1_4 = 14
        return L1_4
      elseif A0_4 == 7 then
        L1_4 = 12
        return L1_4
      elseif A0_4 == 8 then
        L1_4 = 10
        return L1_4
      else
        L1_4 = 999
        return L1_4
      end
    end
    
    function L4_3(A0_4)
      local L1_4
      L1_4 = "JUMP!"
      return L1_4
    end
    
    function L5_3(A0_4)
      local L1_4, L2_4
      if A0_4 == 6 then
        L1_4 = L1_3
        L2_4 = A0_4
        L1_4 = L1_4(L2_4)
        L1_4 = L1_4 - 3
        L1_4 = L1_4 * 160
        L1_4 = L1_4 * 0.5
        return L1_4
      else
        L1_4 = L1_3
        L2_4 = A0_4
        L1_4 = L1_4(L2_4)
        L1_4 = L1_4 - 2
        L1_4 = L1_4 * 160
        L1_4 = L1_4 * 0.5
        return L1_4
      end
    end
    
    L6_3 = L0_1
    L6_3 = L6_3.onboarding
    L6_3 = L6_3.ingameTextArray
    L6_3 = #L6_3
    L7_3 = L36_1
    L8_3 = L6_3
    L9_3 = A0_3.x
    L10_3 = L5_3
    L11_3 = L6_3
    L10_3 = L10_3(L11_3)
    L11_3 = L4_3
    L12_3 = L6_3
    L11_3 = L11_3(L12_3)
    L12_3 = L2_3
    L13_3 = L6_3
    L12_3 = L12_3(L13_3)
    L13_3 = L1_3
    L14_3 = L6_3
    L13_3 = L13_3(L14_3)
    L14_3 = L3_3
    L15_3 = L6_3
    L14_3 = L14_3(L15_3)
    L15_3 = 30
    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
    L7_3 = A0_3.x
    L8_3 = L20_1
    L9_3 = L0_1
    L9_3 = L9_3.onboarding
    L9_3 = L9_3.stepData
    L9_3 = L9_3["7"]
    L9_3 = L9_3.endAtTileX
    L8_3 = L8_3(L9_3)
    if L7_3 > L8_3 then
      L7_3 = L0_1
      L7_3 = L7_3.onboarding
      L7_3 = L7_3.stepData
      L7_3 = L7_3["7"]
      L7_3 = L7_3.fadeOut
      if not L7_3 then
        L7_3 = L28_1
        L8_3 = L0_1
        L8_3 = L8_3.onboarding
        L8_3 = L8_3.screenDisplayGroup
        L9_3 = L0_1
        L9_3 = L9_3.onboarding
        L9_3 = L9_3.stepDone
        L7_3(L8_3, L9_3)
        L7_3 = L0_1
        L7_3 = L7_3.onboarding
        L7_3 = L7_3.stepData
        L7_3 = L7_3["7"]
        L7_3.fadeOut = true
      end
    end
  end
  
  L1_2.onGameUpdate = L2_2
  L1_2.next = "9"
  L0_2["7"] = L1_2
  L1_2 = {}
  L1_2.description = "Wall climb post lobby"
  L1_2.scene = "lua.scenes.postLobby"
  L1_2.skipDB = true
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_exit"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_addFriends"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_chat"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_times"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_mapName"
    L0_3(L1_3)
  end
  
  L1_2.postLoad = L2_2
  L1_2.next = "9"
  L0_2["8"] = L1_2
  L1_2 = {}
  L1_2.description = "Shield challenge"
  L1_2.ingame = true
  L1_2.walkIn = true
  L1_2.overrideCountdown = true
  L1_2.mapId = 1003
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L1_2.overrideAI = L2_2
  L1_2.scene = "lua.scenes.gamePlay"
  
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.x
    L1_3 = L20_1
    L2_3 = 34
    L1_3 = L1_3(L2_3)
    if L0_3 < L1_3 then
      L0_3 = 5
      return L0_3
    else
      L0_3 = L0_1
      L0_3 = L0_3.onboarding
      L0_3 = L0_3.playerReferences
      L0_3 = L0_3[1]
      L0_3 = L0_3.x
      L1_3 = L20_1
      L2_3 = 63
      L1_3 = L1_3(L2_3)
      if L0_3 < L1_3 then
        L0_3 = 6
        return L0_3
      else
        L0_3 = 1
        return L0_3
      end
    end
  end
  
  L1_2.powerBoxFunction = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 1
    L0_3[2] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 214
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 214
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 2
    L0_3[3] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 104
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 104
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 3
    L0_3[4] = L1_3
  end
  
  L1_2.setAIBots = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "killMessages"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "jump"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "powerUp"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "position"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "countdown"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "bottomBar"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.setAlphaForReferences
    L1_3 = "exit"
    L2_3 = L4_1
    L0_3(L1_3, L2_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[2]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[3]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[4]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L20_1
    L1_3 = 5
    L0_3 = L0_3(L1_3)
    L1_3 = L21_1
    L2_3 = 7
    L1_3 = L1_3(L2_3)
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.playerReferences
    L2_3 = L2_3[2]
    L2_3.x = L0_3
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.playerReferences
    L2_3 = L2_3[2]
    L2_3.y = L1_3
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.playerReferences
    L2_3 = L2_3[3]
    L3_3 = L0_3 + 80
    L2_3.x = L3_3
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.playerReferences
    L2_3 = L2_3[3]
    L2_3.y = L1_3
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.playerReferences
    L2_3 = L2_3[4]
    L3_3 = L0_3 + 160
    L2_3.x = L3_3
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.playerReferences
    L2_3 = L2_3[4]
    L2_3.y = L1_3
    L2_3 = L3_1
    if not L2_3 then
      L2_3 = require
      L3_3 = "lua.gameLogic.powerUps"
      L2_3 = L2_3(L3_3)
      L3_1 = L2_3
    end
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.playerReferences
    L2_3 = L2_3[1]
    L3_3 = L3_1
    L3_3 = L3_3.usePowerUp
    L4_3 = 2
    L5_3 = L2_3.id
    L6_3 = nil
    L7_3 = nil
    L8_3 = L20_1
    L9_3 = 10
    L8_3 = L8_3(L9_3)
    L9_3 = L21_1
    L10_3 = 7
    L9_3 = L9_3(L10_3)
    L10_3 = L0_1
    L10_3 = L10_3.onboarding
    L10_3 = L10_3.ingameDisplayGroup
    L11_3 = L0_1
    L11_3 = L11_3.onboarding
    L11_3 = L11_3.screenDisplayGroup
    L12_3 = L0_1
    L12_3 = L12_3.onboarding
    L12_3 = L12_3.playerReferences
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L3_3 = L26_1
    L4_3 = 0
    L5_3 = -20
    L6_3 = L27_1
    L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L6_3()
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L3_3 = L3_1
    L3_3 = L3_3.usePowerUp
    L4_3 = 2
    L5_3 = L2_3.id
    L6_3 = nil
    L7_3 = nil
    L8_3 = L20_1
    L9_3 = 15
    L8_3 = L8_3(L9_3)
    L9_3 = L21_1
    L10_3 = 7
    L9_3 = L9_3(L10_3)
    L10_3 = L0_1
    L10_3 = L10_3.onboarding
    L10_3 = L10_3.ingameDisplayGroup
    L11_3 = L0_1
    L11_3 = L11_3.onboarding
    L11_3 = L11_3.screenDisplayGroup
    L12_3 = L0_1
    L12_3 = L12_3.onboarding
    L12_3 = L12_3.playerReferences
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L3_3 = L26_1
    L4_3 = 0
    L5_3 = -20
    L6_3 = L27_1
    L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L6_3()
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L3_3 = L3_1
    L3_3 = L3_3.usePowerUp
    L4_3 = 2
    L5_3 = L2_3.id
    L6_3 = nil
    L7_3 = nil
    L8_3 = L20_1
    L9_3 = 20
    L8_3 = L8_3(L9_3)
    L9_3 = L21_1
    L10_3 = 7
    L9_3 = L9_3(L10_3)
    L10_3 = L0_1
    L10_3 = L10_3.onboarding
    L10_3 = L10_3.ingameDisplayGroup
    L11_3 = L0_1
    L11_3 = L11_3.onboarding
    L11_3 = L11_3.screenDisplayGroup
    L12_3 = L0_1
    L12_3 = L12_3.onboarding
    L12_3 = L12_3.playerReferences
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L3_3 = L26_1
    L4_3 = 0
    L5_3 = -20
    L6_3 = L27_1
    L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L6_3()
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L3_3 = L3_1
    L3_3 = L3_3.usePowerUp
    L4_3 = 2
    L5_3 = L2_3.id
    L6_3 = nil
    L7_3 = nil
    L8_3 = L20_1
    L9_3 = 48
    L8_3 = L8_3(L9_3)
    L9_3 = L21_1
    L10_3 = 9
    L9_3 = L9_3(L10_3)
    L10_3 = L0_1
    L10_3 = L10_3.onboarding
    L10_3 = L10_3.ingameDisplayGroup
    L11_3 = L0_1
    L11_3 = L11_3.onboarding
    L11_3 = L11_3.screenDisplayGroup
    L12_3 = L0_1
    L12_3 = L12_3.onboarding
    L12_3 = L12_3.playerReferences
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L3_3 = L26_1
    L4_3 = 0
    L5_3 = -20
    L6_3 = L27_1
    L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L6_3()
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
  end
  
  L1_2.onSetupGameComplete = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    
    function L1_3(A0_4)
      local L1_4
      if A0_4 == 0 then
        L1_4 = 29
        return L1_4
      elseif A0_4 == 1 then
        L1_4 = 42
        return L1_4
      else
        L1_4 = 999
        return L1_4
      end
    end
    
    function L2_3(A0_4)
      local L1_4
      L1_4 = 0
      return L1_4
    end
    
    function L3_3(A0_4)
      local L1_4
      L1_4 = 10
      return L1_4
    end
    
    function L4_3(A0_4)
      local L1_4
      if A0_4 == 0 then
        L1_4 = "SHIELD PROTECTS YOU!"
        return L1_4
      elseif A0_4 == 1 then
        L1_4 = "BALLOON TAKES ONE HIT!"
        return L1_4
      end
    end
    
    function L5_3(A0_4)
      local L1_4, L2_4
      L1_4 = L1_3
      L2_4 = A0_4
      L1_4 = L1_4(L2_4)
      L1_4 = L1_4 - 2
      L1_4 = L1_4 * 160
      L1_4 = L1_4 * 0.5
      return L1_4
    end
    
    L6_3 = L0_1
    L6_3 = L6_3.onboarding
    L6_3 = L6_3.ingameTextArray
    L6_3 = #L6_3
    L7_3 = L36_1
    L8_3 = L6_3
    L9_3 = A0_3.x
    L10_3 = L5_3
    L11_3 = L6_3
    L10_3 = L10_3(L11_3)
    L11_3 = L4_3
    L12_3 = L6_3
    L11_3 = L11_3(L12_3)
    L12_3 = L2_3
    L13_3 = L6_3
    L12_3 = L12_3(L13_3)
    L13_3 = L1_3
    L14_3 = L6_3
    L13_3 = L13_3(L14_3)
    L14_3 = L3_3
    L15_3 = L6_3
    L14_3 = L14_3(L15_3)
    L15_3 = 20
    L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
    if (L6_3 == 0 or L6_3 == 1) and L7_3 then
      L8_3 = L3_1
      if not L8_3 then
        L8_3 = require
        L9_3 = "lua.gameLogic.powerUps"
        L8_3 = L8_3(L9_3)
        L3_1 = L8_3
      end
      L8_3 = L0_1
      L8_3 = L8_3.onboarding
      L8_3 = L8_3.playerReferences
      L8_3 = L8_3[1]
      if L6_3 == 0 then
        L9_3 = L3_1
        L9_3 = L9_3.usePowerUp
        L10_3 = 2
        L11_3 = L8_3.id
        L12_3 = nil
        L13_3 = nil
        L14_3 = L20_1
        L15_3 = 35
        L14_3 = L14_3(L15_3)
        L15_3 = L21_1
        L16_3 = 9
        L15_3 = L15_3(L16_3)
        L16_3 = L0_1
        L16_3 = L16_3.onboarding
        L16_3 = L16_3.ingameDisplayGroup
        L17_3 = L0_1
        L17_3 = L17_3.onboarding
        L17_3 = L17_3.screenDisplayGroup
        L18_3 = L0_1
        L18_3 = L18_3.onboarding
        L18_3 = L18_3.playerReferences
        L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
        L9_3 = L26_1
        L10_3 = 0
        L11_3 = -20
        L12_3 = L27_1
        L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3 = L12_3()
        L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
        L9_3 = L3_1
        L9_3 = L9_3.usePowerUp
        L10_3 = 2
        L11_3 = L8_3.id
        L12_3 = nil
        L13_3 = nil
        L14_3 = L20_1
        L15_3 = 37
        L14_3 = L14_3(L15_3)
        L15_3 = L21_1
        L16_3 = 9
        L15_3 = L15_3(L16_3)
        L16_3 = L0_1
        L16_3 = L16_3.onboarding
        L16_3 = L16_3.ingameDisplayGroup
        L17_3 = L0_1
        L17_3 = L17_3.onboarding
        L17_3 = L17_3.screenDisplayGroup
        L18_3 = L0_1
        L18_3 = L18_3.onboarding
        L18_3 = L18_3.playerReferences
        L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
        L9_3 = L26_1
        L10_3 = 0
        L11_3 = -20
        L12_3 = L27_1
        L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3 = L12_3()
        L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
      elseif L6_3 == 1 then
        L9_3 = L3_1
        L9_3 = L9_3.usePowerUp
        L10_3 = 2
        L11_3 = L8_3.id
        L12_3 = nil
        L13_3 = nil
        L14_3 = L20_1
        L15_3 = 61
        L14_3 = L14_3(L15_3)
        L15_3 = L21_1
        L16_3 = 9
        L15_3 = L15_3(L16_3)
        L16_3 = L0_1
        L16_3 = L16_3.onboarding
        L16_3 = L16_3.ingameDisplayGroup
        L17_3 = L0_1
        L17_3 = L17_3.onboarding
        L17_3 = L17_3.screenDisplayGroup
        L18_3 = L0_1
        L18_3 = L18_3.onboarding
        L18_3 = L18_3.playerReferences
        L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
        L9_3 = L26_1
        L10_3 = 0
        L11_3 = -20
        L12_3 = L27_1
        L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3 = L12_3()
        L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
      end
    end
    L8_3 = A0_3.x
    L9_3 = L20_1
    L10_3 = 65
    L9_3 = L9_3(L10_3)
    if L8_3 < L9_3 then
      L8_3 = 2
      L9_3 = L0_1
      L9_3 = L9_3.onboarding
      L9_3 = L9_3.playerReferences
      L9_3 = #L9_3
      L10_3 = 1
      for L11_3 = L8_3, L9_3, L10_3 do
        L12_3 = L39_1
        L13_3 = A0_3
        L14_3 = L0_1
        L14_3 = L14_3.onboarding
        L14_3 = L14_3.playerReferences
        L14_3 = L14_3[L11_3]
        L15_3 = L11_3 - 1
        L12_3(L13_3, L14_3, L15_3)
        L12_3 = L0_1
        L12_3 = L12_3.onboarding
        L12_3 = L12_3.playerReferences
        L12_3 = L12_3[L11_3]
        L12_3 = L12_3.setPowerUp
        L13_3 = 0
        L12_3(L13_3)
      end
    end
    L8_3 = A0_3.x
    L9_3 = L20_1
    L10_3 = 27.25
    L9_3 = L9_3(L10_3)
    if L8_3 > L9_3 then
      L8_3 = L0_1
      L8_3 = L8_3.onboarding
      L8_3 = L8_3.stepData
      L8_3 = L8_3["9"]
      L8_3 = L8_3.powerUpTutorial
      if not L8_3 then
        L8_3 = L0_1
        L8_3 = L8_3.onboarding
        L8_3 = L8_3.showReferences
        L9_3 = "powerUp"
        L8_3(L9_3)
        L8_3 = L0_1
        L8_3 = L8_3.onboarding
        L8_3 = L8_3.pausePhysics
        L8_3()
        L8_3 = L35_1
        L8_3()
        L8_3 = L0_1
        L8_3 = L8_3.onboarding
        L8_3 = L8_3.stepData
        L8_3 = L8_3["9"]
        L8_3.powerUpTutorial = true
        L8_3 = L0_1
        L8_3 = L8_3.onboarding
        L8_3 = L8_3.showReferences
        L9_3 = "jump"
        L8_3(L9_3)
      end
    end
    L8_3 = A0_3.x
    L9_3 = L20_1
    L10_3 = 40.25
    L9_3 = L9_3(L10_3)
    if L8_3 > L9_3 then
      L8_3 = L0_1
      L8_3 = L8_3.onboarding
      L8_3 = L8_3.stepData
      L8_3 = L8_3["9"]
      L8_3 = L8_3.balloonPowerUpTutorial
      if not L8_3 then
        L8_3 = L0_1
        L8_3 = L8_3.onboarding
        L8_3 = L8_3.showReferences
        L9_3 = "powerUp"
        L8_3(L9_3)
        L8_3 = L0_1
        L8_3 = L8_3.onboarding
        L8_3 = L8_3.pausePhysics
        L8_3()
        L8_3 = L35_1
        L8_3()
        L8_3 = L0_1
        L8_3 = L8_3.onboarding
        L8_3 = L8_3.stepData
        L8_3 = L8_3["9"]
        L8_3.balloonPowerUpTutorial = true
      end
    end
    L8_3 = A0_3.x
    L9_3 = L20_1
    L10_3 = 65
    L9_3 = L9_3(L10_3)
    if L8_3 > L9_3 then
      L8_3 = L0_1
      L8_3 = L8_3.onboarding
      L8_3 = L8_3.stepData
      L8_3 = L8_3["9"]
      L8_3 = L8_3.movedBots
      if not L8_3 then
        L8_3 = L0_1
        L8_3 = L8_3.onboarding
        L8_3 = L8_3.playerReferences
        L8_3 = L8_3[2]
        L9_3 = L20_1
        L10_3 = 69
        L9_3 = L9_3(L10_3)
        L8_3.x = L9_3
        L8_3 = L0_1
        L8_3 = L8_3.onboarding
        L8_3 = L8_3.playerReferences
        L8_3 = L8_3[2]
        L9_3 = A0_3.y
        L8_3.y = L9_3
        L8_3 = L0_1
        L8_3 = L8_3.onboarding
        L8_3 = L8_3.playerReferences
        L8_3 = L8_3[2]
        L8_3 = L8_3.setLinearVelocityOnPlayer
        L9_3 = 0
        L10_3 = 0
        L8_3(L9_3, L10_3)
        L8_3 = L0_1
        L8_3 = L8_3.onboarding
        L8_3 = L8_3.stepData
        L8_3 = L8_3["9"]
        L8_3.movedBots = true
      end
    end
    L8_3 = A0_3.x
    L9_3 = L20_1
    L10_3 = 65
    L9_3 = L9_3(L10_3)
    if L8_3 > L9_3 then
      L8_3 = L38_1
      L9_3 = A0_3
      L10_3 = L0_1
      L10_3 = L10_3.onboarding
      L10_3 = L10_3.playerReferences
      L10_3 = L10_3[2]
      L11_3 = 1
      L8_3(L9_3, L10_3, L11_3)
    end
    L8_3 = A0_3.x
    L9_3 = L20_1
    L10_3 = L0_1
    L10_3 = L10_3.onboarding
    L10_3 = L10_3.stepData
    L10_3 = L10_3["9"]
    L10_3 = L10_3.endAtTileX
    L9_3 = L9_3(L10_3)
    if L8_3 > L9_3 then
      L8_3 = L0_1
      L8_3 = L8_3.onboarding
      L8_3 = L8_3.stepData
      L8_3 = L8_3["9"]
      L8_3 = L8_3.fadeOut
      if not L8_3 then
        L8_3 = L28_1
        L9_3 = L0_1
        L9_3 = L9_3.onboarding
        L9_3 = L9_3.screenDisplayGroup
        L10_3 = L0_1
        L10_3 = L10_3.onboarding
        L10_3 = L10_3.stepDone
        L8_3(L9_3, L10_3)
        L8_3 = L0_1
        L8_3 = L8_3.onboarding
        L8_3 = L8_3.stepData
        L8_3 = L8_3["9"]
        L8_3.fadeOut = true
      end
    end
  end
  
  L1_2.onGameUpdate = L2_2
  L1_2.next = "11"
  L0_2["9"] = L1_2
  L1_2 = {}
  L1_2.description = "Shield post lobby"
  L1_2.scene = "lua.scenes.postLobby"
  L1_2.skipDB = true
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_exit"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_addFriends"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_chat"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_times"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_mapName"
    L0_3(L1_3)
  end
  
  L1_2.postLoad = L2_2
  L1_2.next = "11"
  L0_2["10"] = L1_2
  L1_2 = {}
  L1_2.description = "Second Race"
  L1_2.ingame = true
  L1_2.walkIn = false
  L1_2.overrideCountdown = false
  L1_2.mapId = 2001
  L1_2.rubberband = true
  L1_2.scene = "lua.scenes.gamePlay"
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = {}
    L1_3 = 1
    L2_3 = 2
    L3_3 = 3
    L4_3 = 4
    L5_3 = 7
    L6_3 = 8
    L0_3[1] = L1_3
    L0_3[2] = L2_3
    L0_3[3] = L3_3
    L0_3[4] = L4_3
    L0_3[5] = L5_3
    L0_3[6] = L6_3
    L1_3 = L2_1
    L2_3 = 1
    L3_3 = #L0_3
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = L0_3[L1_3]
    return L2_3
  end
  
  L1_2.powerBoxFunction = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 1
    L0_3[2] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 214
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 214
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 2
    L0_3[3] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 104
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 104
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 3
    L0_3[4] = L1_3
  end
  
  L1_2.setAIBots = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.setAlphaForReferences
    L1_3 = "exit"
    L2_3 = L4_1
    L0_3(L1_3, L2_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.setPowerUp
    L1_3 = 2
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[2]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[3]
    L0_3 = L0_3.setPowerUp
    L1_3 = 4
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[4]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.x
    L1_3 = 2
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.playerReferences
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L0_1
      L5_3 = L5_3.onboarding
      L5_3 = L5_3.playerReferences
      L5_3 = L5_3[L4_3]
      L6_3 = L4_3 - 1
      L6_3 = L6_3 * 40
      L6_3 = L0_3 - L6_3
      L5_3.x = L6_3
      L5_3 = L0_1
      L5_3 = L5_3.onboarding
      L5_3 = L5_3.playerReferences
      L5_3 = L5_3[L4_3]
      L6_3 = L0_1
      L6_3 = L6_3.onboarding
      L6_3 = L6_3.playerReferences
      L6_3 = L6_3[1]
      L6_3 = L6_3.y
      L5_3.y = L6_3
    end
  end
  
  L1_2.onSetupGameComplete = L2_2
  L1_2.next = "12"
  L0_2["11"] = L1_2
  L1_2 = {}
  L1_2.description = "Second Race"
  L1_2.scene = "lua.scenes.postLobby"
  L1_2.skipDB = true
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_exit"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_addFriends"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_chat"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_market"
    L0_3(L1_3)
  end
  
  L1_2.postLoad = L2_2
  L1_2.next = "13"
  L0_2["12"] = L1_2
  L1_2 = {}
  L1_2.description = "Jetpack Challenge"
  L1_2.ingame = true
  L1_2.walkIn = true
  L1_2.overrideCountdown = true
  L1_2.mapId = 1004
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L1_2.overrideAI = L2_2
  L1_2.scene = "lua.scenes.gamePlay"
  
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.x
    L1_3 = L20_1
    L2_3 = 59
    L1_3 = L1_3(L2_3)
    if L0_3 < L1_3 then
      L0_3 = 9
      return L0_3
    else
      L0_3 = 10
      return L0_3
    end
  end
  
  L1_2.powerBoxFunction = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 1
    L0_3[2] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 214
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 214
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 2
    L0_3[3] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 104
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 104
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 3
    L0_3[4] = L1_3
  end
  
  L1_2.setAIBots = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "position"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "countdown"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "bottomBar"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.setAlphaForReferences
    L1_3 = "exit"
    L2_3 = L4_1
    L0_3(L1_3, L2_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.x
    L1_3 = 2
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.playerReferences
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L0_1
      L5_3 = L5_3.onboarding
      L5_3 = L5_3.playerReferences
      L5_3 = L5_3[L4_3]
      L6_3 = L0_3 + 350
      L7_3 = L4_3 - 2
      L7_3 = L7_3 * 60
      L6_3 = L6_3 + L7_3
      L5_3.x = L6_3
      L5_3 = L0_1
      L5_3 = L5_3.onboarding
      L5_3 = L5_3.playerReferences
      L5_3 = L5_3[L4_3]
      L6_3 = L0_1
      L6_3 = L6_3.onboarding
      L6_3 = L6_3.playerReferences
      L6_3 = L6_3[1]
      L6_3 = L6_3.y
      L5_3.y = L6_3
    end
  end
  
  L1_2.onSetupGameComplete = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = 2
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.playerReferences
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L0_1
      L5_3 = L5_3.onboarding
      L5_3 = L5_3.playerReferences
      L5_3 = L5_3[L4_3]
      L5_3 = L5_3.x
      L6_3 = L20_1
      L7_3 = 66
      L6_3 = L6_3(L7_3)
      if L5_3 > L6_3 then
        L5_3 = L0_1
        L5_3 = L5_3.onboarding
        L5_3 = L5_3.playerReferences
        L5_3 = L5_3[L4_3]
        L5_3 = L5_3.setLinearVelocityOnPlayer
        L6_3 = 0
        L7_3 = 0
        L5_3(L6_3, L7_3)
      else
        L5_3 = L37_1
        L6_3 = A0_3
        L7_3 = L0_1
        L7_3 = L7_3.onboarding
        L7_3 = L7_3.playerReferences
        L7_3 = L7_3[L4_3]
        L8_3 = L4_3 - 1
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = L0_1
        L5_3 = L5_3.onboarding
        L5_3 = L5_3.playerReferences
        L5_3 = L5_3[L4_3]
        L5_3 = L5_3.setPowerUp
        L6_3 = 0
        L5_3(L6_3)
        L5_3 = A0_3.x
        L6_3 = L20_1
        L7_3 = 32
        L6_3 = L6_3(L7_3)
        if L5_3 > L6_3 then
          L5_3 = L0_1
          L5_3 = L5_3.onboarding
          L5_3 = L5_3.playerReferences
          L5_3 = L5_3[L4_3]
          L5_3 = L5_3.id
          if L5_3 == 2 then
            L5_3 = L0_1
            L5_3 = L5_3.onboarding
            L5_3 = L5_3.stepData
            L5_3 = L5_3["13"]
            L5_3 = L5_3.usedShieldOnce
            if not L5_3 then
              L5_3 = L22_1
              L6_3 = L0_1
              L6_3 = L6_3.onboarding
              L6_3 = L6_3.playerReferences
              L6_3 = L6_3[L4_3]
              L7_3 = L0_1
              L7_3 = L7_3.onboarding
              L7_3 = L7_3.playerReferences
              L7_3 = L7_3[L4_3]
              L7_3 = L7_3.id
              L8_3 = 5
              L5_3(L6_3, L7_3, L8_3)
              L5_3 = L0_1
              L5_3 = L5_3.onboarding
              L5_3 = L5_3.stepData
              L5_3 = L5_3["13"]
              L5_3.usedShieldOnce = true
            end
          end
        end
        L5_3 = A0_3.x
        L6_3 = L20_1
        L7_3 = 50
        L6_3 = L6_3(L7_3)
        if L5_3 > L6_3 then
          L5_3 = L0_1
          L5_3 = L5_3.onboarding
          L5_3 = L5_3.playerReferences
          L5_3 = L5_3[L4_3]
          L5_3 = L5_3.id
          if L5_3 == 3 then
            L5_3 = L0_1
            L5_3 = L5_3.onboarding
            L5_3 = L5_3.stepData
            L5_3 = L5_3["13"]
            L5_3 = L5_3.usedShieldTwice
            if not L5_3 then
              L5_3 = L22_1
              L6_3 = L0_1
              L6_3 = L6_3.onboarding
              L6_3 = L6_3.playerReferences
              L6_3 = L6_3[L4_3]
              L7_3 = L0_1
              L7_3 = L7_3.onboarding
              L7_3 = L7_3.playerReferences
              L7_3 = L7_3[L4_3]
              L7_3 = L7_3.id
              L8_3 = 5
              L5_3(L6_3, L7_3, L8_3)
              L5_3 = L0_1
              L5_3 = L5_3.onboarding
              L5_3 = L5_3.stepData
              L5_3 = L5_3["13"]
              L5_3.usedShieldTwice = true
            end
          end
        end
      end
    end
    L1_3 = A0_3.x
    L2_3 = L20_1
    L3_3 = 59
    L2_3 = L2_3(L3_3)
    if L1_3 > L2_3 then
      L1_3 = L0_1
      L1_3 = L1_3.onboarding
      L1_3 = L1_3.stepData
      L1_3 = L1_3["13"]
      L1_3 = L1_3.resetPU
      if not L1_3 then
        L1_3 = A0_3.setPowerUp
        L2_3 = 0
        L1_3(L2_3)
        L1_3 = L0_1
        L1_3 = L1_3.onboarding
        L1_3 = L1_3.stepData
        L1_3 = L1_3["13"]
        L1_3.resetPU = true
      end
    end
    L1_3 = A0_3.x
    L2_3 = L20_1
    L3_3 = 25
    L2_3 = L2_3(L3_3)
    if L1_3 >= L2_3 then
      L1_3 = L0_1
      L1_3 = L1_3.onboarding
      L1_3 = L1_3.stepData
      L1_3 = L1_3["13"]
      L1_3 = L1_3.usedHunter
      if not L1_3 then
        L1_3 = L0_1
        L1_3 = L1_3.onboarding
        L1_3 = L1_3.physicsPaused
        if not L1_3 then
          L1_3 = L0_1
          L1_3 = L1_3.onboarding
          L1_3 = L1_3.pausePhysics
          L1_3()
          L1_3 = L35_1
          L1_3()
        end
      end
    end
    L1_3 = A0_3.x
    L2_3 = L20_1
    L3_3 = 66
    L2_3 = L2_3(L3_3)
    if L1_3 >= L2_3 then
      L1_3 = L0_1
      L1_3 = L1_3.onboarding
      L1_3 = L1_3.stepData
      L1_3 = L1_3["13"]
      L1_3 = L1_3.usedJetpack
      if not L1_3 then
        L1_3 = L0_1
        L1_3 = L1_3.onboarding
        L1_3 = L1_3.physicsPaused
        if not L1_3 then
          L1_3 = L0_1
          L1_3 = L1_3.onboarding
          L1_3 = L1_3.pausePhysics
          L1_3()
          L1_3 = L35_1
          L1_3()
        end
      end
    end
    L1_3 = A0_3.x
    L2_3 = L20_1
    L3_3 = L0_1
    L3_3 = L3_3.onboarding
    L3_3 = L3_3.stepData
    L3_3 = L3_3["13"]
    L3_3 = L3_3.endAtTileX
    L2_3 = L2_3(L3_3)
    if L1_3 > L2_3 then
      L1_3 = L0_1
      L1_3 = L1_3.onboarding
      L1_3 = L1_3.stepData
      L1_3 = L1_3["13"]
      L1_3 = L1_3.fadeOut
      if not L1_3 then
        L1_3 = L28_1
        L2_3 = L0_1
        L2_3 = L2_3.onboarding
        L2_3 = L2_3.screenDisplayGroup
        L3_3 = L0_1
        L3_3 = L3_3.onboarding
        L3_3 = L3_3.stepDone
        L1_3(L2_3, L3_3)
        L1_3 = L0_1
        L1_3 = L1_3.onboarding
        L1_3 = L1_3.stepData
        L1_3 = L1_3["13"]
        L1_3.fadeOut = true
      end
    end
  end
  
  L1_2.onGameUpdate = L2_2
  L1_2.next = "15"
  L0_2["13"] = L1_2
  L1_2 = {}
  L1_2.description = "Jetpack post lobby"
  L1_2.scene = "lua.scenes.postLobby"
  L1_2.skipDB = true
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_exit"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_addFriends"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_chat"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_times"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_mapName"
    L0_3(L1_3)
  end
  
  L1_2.postLoad = L2_2
  L1_2.next = "15"
  L0_2["14"] = L1_2
  L1_2 = {}
  L1_2.description = "Third Race"
  L1_2.ingame = true
  L1_2.walkIn = false
  L1_2.overrideCountdown = false
  L1_2.mapId = 2002
  L1_2.rubberband = true
  L1_2.scene = "lua.scenes.gamePlay"
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = {}
    L1_3 = 1
    L2_3 = 2
    L3_3 = 3
    L4_3 = 4
    L5_3 = 5
    L6_3 = 6
    L7_3 = 7
    L8_3 = 8
    L9_3 = 9
    L10_3 = 10
    L0_3[1] = L1_3
    L0_3[2] = L2_3
    L0_3[3] = L3_3
    L0_3[4] = L4_3
    L0_3[5] = L5_3
    L0_3[6] = L6_3
    L0_3[7] = L7_3
    L0_3[8] = L8_3
    L0_3[9] = L9_3
    L0_3[10] = L10_3
    L1_3 = L2_1
    L2_3 = 1
    L3_3 = #L0_3
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = L0_3[L1_3]
    return L2_3
  end
  
  L1_2.powerBoxFunction = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 1
    L0_3[2] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 214
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 214
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 2
    L0_3[3] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 104
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 104
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 3
    L0_3[4] = L1_3
  end
  
  L1_2.setAIBots = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.setAlphaForReferences
    L1_3 = "exit"
    L2_3 = L4_1
    L0_3(L1_3, L2_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.setPowerUp
    L1_3 = 10
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[2]
    L0_3 = L0_3.setPowerUp
    L1_3 = 4
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[3]
    L0_3 = L0_3.setPowerUp
    L1_3 = 4
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[4]
    L0_3 = L0_3.setPowerUp
    L1_3 = 5
    L0_3(L1_3)
  end
  
  L1_2.onSetupGameComplete = L2_2
  L1_2.next = "16"
  L0_2["15"] = L1_2
  L1_2 = {}
  L1_2.description = "Third Race"
  L1_2.scene = "lua.scenes.postLobby"
  L1_2.skipDB = true
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_exit"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_addFriends"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_chat"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_market"
    L0_3(L1_3)
    
    function L0_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L1_1
      L0_4 = L0_4.createMessage
      L1_4 = "Cool! Let's put them on."
      L2_4 = L0_1
      L2_4 = L2_4.onboarding
      L2_4 = L2_4.screenDisplayGroup
      L3_4 = L6_1
      L4_4 = false
      L0_4(L1_4, L2_4, L3_4, L4_4)
    end
    
    function L1_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = {}
      L0_4.isModal = true
      L1_4 = {}
      L2_4 = L0_1
      L2_4 = L2_4.storeConfig
      L2_4 = L2_4.getItem
      L3_4 = 402
      L2_4 = L2_4(L3_4)
      L1_4.item = L2_4
      L1_4.freeItem = true
      L2_4 = L0_3
      L1_4.onCloseFunction = L2_4
      L0_4.params = L1_4
      L1_4 = L0_4.params
      L1_4 = L1_4.item
      L1_4.imagePath = "images/gui/market/items/facewear/402.png"
      L1_4 = L0_1
      L1_4 = L1_4.showOverlay
      L2_4 = "lua.overlays.marketFree"
      L3_4 = L0_4
      L1_4(L2_4, L3_4)
    end
    
    L2_3 = L1_1
    L2_3 = L2_3.createMessage
    L3_3 = "Congratulations! You've just completed your first three races!"
    L4_3 = L0_1
    L4_3 = L4_3.onboarding
    L4_3 = L4_3.screenDisplayGroup
    L5_3 = L6_1
    L6_3 = false
    L2_3(L3_3, L4_3, L5_3, L6_3)
    L2_3 = L1_1
    L2_3 = L2_3.setOnCloseFunction
    L3_3 = L1_3
    L2_3(L3_3)
  end
  
  L1_2.postLoad = L2_2
  L1_2.next = "25"
  L0_2["16"] = L1_2
  L1_2 = {}
  L1_2.description = "Trap challenge"
  L1_2.ingame = true
  L1_2.walkIn = true
  L1_2.overrideCountdown = true
  L1_2.mapId = 1005
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L1_2.overrideAI = L2_2
  L1_2.scene = "lua.scenes.gamePlay"
  
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.x
    L1_3 = L20_1
    L2_3 = 34
    L1_3 = L1_3(L2_3)
    if L0_3 < L1_3 then
      L0_3 = 8
      return L0_3
    else
      L0_3 = 2
      return L0_3
    end
  end
  
  L1_2.powerBoxFunction = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 1
    L0_3[2] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 214
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 214
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 2
    L0_3[3] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 104
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 104
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 3
    L0_3[4] = L1_3
  end
  
  L1_2.setAIBots = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "position"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "countdown"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "bottomBar"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.setAlphaForReferences
    L1_3 = "exit"
    L2_3 = L4_1
    L0_3(L1_3, L2_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[2]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[3]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[4]
    L0_3 = L0_3.setPowerUp
    L1_3 = 6
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.x
    L1_3 = 2
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.playerReferences
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L0_1
      L5_3 = L5_3.onboarding
      L5_3 = L5_3.playerReferences
      L5_3 = L5_3[L4_3]
      L6_3 = L4_3 - 1
      L6_3 = L6_3 * 40
      L6_3 = L0_3 - L6_3
      L5_3.x = L6_3
      L5_3 = L0_1
      L5_3 = L5_3.onboarding
      L5_3 = L5_3.playerReferences
      L5_3 = L5_3[L4_3]
      L6_3 = L0_1
      L6_3 = L6_3.onboarding
      L6_3 = L6_3.playerReferences
      L6_3 = L6_3[1]
      L6_3 = L6_3.y
      L5_3.y = L6_3
    end
  end
  
  L1_2.onSetupGameComplete = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = 2
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.playerReferences
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L40_1
      L6_3 = A0_3
      L7_3 = L0_1
      L7_3 = L7_3.onboarding
      L7_3 = L7_3.playerReferences
      L7_3 = L7_3[L4_3]
      L8_3 = L4_3 - 1
      L5_3(L6_3, L7_3, L8_3)
    end
    L1_3 = A0_3.x
    L2_3 = L20_1
    L3_3 = L0_1
    L3_3 = L3_3.onboarding
    L3_3 = L3_3.stepData
    L3_3 = L3_3["17"]
    L3_3 = L3_3.endAtTileX
    L2_3 = L2_3(L3_3)
    if L1_3 > L2_3 then
      L1_3 = L0_1
      L1_3 = L1_3.onboarding
      L1_3 = L1_3.stepData
      L1_3 = L1_3["17"]
      L1_3 = L1_3.fadeOut
      if not L1_3 then
        L1_3 = L28_1
        L2_3 = L0_1
        L2_3 = L2_3.onboarding
        L2_3 = L2_3.screenDisplayGroup
        L3_3 = L0_1
        L3_3 = L3_3.onboarding
        L3_3 = L3_3.stepDone
        L1_3(L2_3, L3_3)
        L1_3 = L0_1
        L1_3 = L1_3.onboarding
        L1_3 = L1_3.stepData
        L1_3 = L1_3["17"]
        L1_3.fadeOut = true
      end
    end
  end
  
  L1_2.onGameUpdate = L2_2
  L1_2.next = "11"
  L0_2["17"] = L1_2
  L1_2 = {}
  L1_2.description = "Trap challenge post game scene"
  L1_2.scene = "lua.scenes.postLobby"
  L1_2.skipDB = true
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_exit"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_addFriends"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_chat"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_times"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_mapName"
    L0_3(L1_3)
  end
  
  L1_2.postLoad = L2_2
  L1_2.next = "19"
  L0_2["18"] = L1_2
  L1_2 = {}
  L1_2.description = "Fourth Race"
  L1_2.ingame = true
  L1_2.walkIn = false
  L1_2.overrideCountdown = false
  L1_2.mapId = 2003
  L1_2.rubberband = true
  L1_2.scene = "lua.scenes.gamePlay"
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = {}
    L1_3 = 1
    L2_3 = 2
    L3_3 = 4
    L4_3 = 5
    L5_3 = 6
    L6_3 = 8
    L7_3 = 9
    L8_3 = 10
    L0_3[1] = L1_3
    L0_3[2] = L2_3
    L0_3[3] = L3_3
    L0_3[4] = L4_3
    L0_3[5] = L5_3
    L0_3[6] = L6_3
    L0_3[7] = L7_3
    L0_3[8] = L8_3
    L1_3 = math
    L1_3 = L1_3.random
    L2_3 = 1
    L3_3 = #L0_3
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = L0_3[L1_3]
    return L2_3
  end
  
  L1_2.powerBoxFunction = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 1
    L0_3[2] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 214
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 214
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 2
    L0_3[3] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 104
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 104
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 3
    L0_3[4] = L1_3
  end
  
  L1_2.setAIBots = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.setAlphaForReferences
    L1_3 = "exit"
    L2_3 = L4_1
    L0_3(L1_3, L2_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.setPowerUp
    L1_3 = 2
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[2]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[3]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[4]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.x
    L1_3 = 2
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.playerReferences
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L0_1
      L5_3 = L5_3.onboarding
      L5_3 = L5_3.playerReferences
      L5_3 = L5_3[L4_3]
      L6_3 = L4_3 - 1
      L6_3 = L6_3 * 40
      L6_3 = L0_3 - L6_3
      L5_3.x = L6_3
      L5_3 = L0_1
      L5_3 = L5_3.onboarding
      L5_3 = L5_3.playerReferences
      L5_3 = L5_3[L4_3]
      L6_3 = L0_1
      L6_3 = L6_3.onboarding
      L6_3 = L6_3.playerReferences
      L6_3 = L6_3[1]
      L6_3 = L6_3.y
      L5_3.y = L6_3
    end
  end
  
  L1_2.onSetupGameComplete = L2_2
  L1_2.next = "20"
  L0_2["19"] = L1_2
  L1_2 = {}
  L1_2.description = "Fourth Race"
  L1_2.scene = "lua.scenes.postLobby"
  L1_2.skipDB = true
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_exit"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_addFriends"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_chat"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_market"
    L0_3(L1_3)
  end
  
  L1_2.postLoad = L2_2
  L1_2.next = "21"
  L0_2["20"] = L1_2
  L1_2 = {}
  L1_2.description = "Lightning challenge"
  L1_2.ingame = true
  L1_2.walkIn = true
  L1_2.overrideCountdown = true
  L1_2.mapId = 1006
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L1_2.overrideAI = L2_2
  L1_2.scene = "lua.scenes.gamePlay"
  
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.x
    L1_3 = L20_1
    L2_3 = 44
    L1_3 = L1_3(L2_3)
    if L0_3 < L1_3 then
      L0_3 = 7
      return L0_3
    else
      L0_3 = 3
      return L0_3
    end
  end
  
  L1_2.powerBoxFunction = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 1
    L0_3[2] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 214
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 214
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 2
    L0_3[3] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 104
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 104
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 3
    L0_3[4] = L1_3
  end
  
  L1_2.setAIBots = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "killMessages"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "position"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "countdown"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "bottomBar"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.setAlphaForReferences
    L1_3 = "exit"
    L2_3 = L4_1
    L0_3(L1_3, L2_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[2]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[3]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[4]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.x
    L1_3 = 2
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.playerReferences
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L0_1
      L5_3 = L5_3.onboarding
      L5_3 = L5_3.playerReferences
      L5_3 = L5_3[L4_3]
      L6_3 = L0_3 + 350
      L7_3 = L4_3 - 2
      L7_3 = L7_3 * 60
      L6_3 = L6_3 + L7_3
      L5_3.x = L6_3
    end
  end
  
  L1_2.onSetupGameComplete = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = 2
    L2_3 = L0_1
    L2_3 = L2_3.onboarding
    L2_3 = L2_3.playerReferences
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L37_1
      L6_3 = A0_3
      L7_3 = L0_1
      L7_3 = L7_3.onboarding
      L7_3 = L7_3.playerReferences
      L7_3 = L7_3[L4_3]
      L8_3 = L4_3 - 1
      L5_3(L6_3, L7_3, L8_3)
      L5_3 = L0_1
      L5_3 = L5_3.onboarding
      L5_3 = L5_3.playerReferences
      L5_3 = L5_3[L4_3]
      L5_3 = L5_3.setPowerUp
      L6_3 = 0
      L5_3(L6_3)
      L5_3 = L0_1
      L5_3 = L5_3.onboarding
      L5_3 = L5_3.playerReferences
      L5_3 = L5_3[L4_3]
      L5_3 = L5_3.canJump
      L5_3 = L5_3()
      if L5_3 then
        L5_3 = L2_1
        L5_3 = L5_3()
        if L5_3 < 0.025 then
          L5_3 = L0_1
          L5_3 = L5_3.onboarding
          L5_3 = L5_3.playerReferences
          L5_3 = L5_3[L4_3]
          L5_3 = L5_3.jump
          L5_3()
        end
      end
    end
    L1_3 = A0_3.x
    L2_3 = L20_1
    L3_3 = 35
    L2_3 = L2_3(L3_3)
    if L1_3 >= L2_3 then
      L1_3 = L0_1
      L1_3 = L1_3.onboarding
      L1_3 = L1_3.stepData
      L1_3 = L1_3["21"]
      L1_3 = L1_3.usedMagnet
      if not L1_3 then
        L1_3 = L0_1
        L1_3 = L1_3.onboarding
        L1_3 = L1_3.physicsPaused
        if not L1_3 then
          L1_3 = L0_1
          L1_3 = L1_3.onboarding
          L1_3 = L1_3.pausePhysics
          L1_3()
          L1_3 = L35_1
          L1_3()
        end
      end
    end
    L1_3 = A0_3.x
    L2_3 = L20_1
    L3_3 = 60
    L2_3 = L2_3(L3_3)
    if L1_3 >= L2_3 then
      L1_3 = L0_1
      L1_3 = L1_3.onboarding
      L1_3 = L1_3.stepData
      L1_3 = L1_3["21"]
      L1_3 = L1_3.usedLightning
      if not L1_3 then
        L1_3 = L0_1
        L1_3 = L1_3.onboarding
        L1_3 = L1_3.physicsPaused
        if not L1_3 then
          L1_3 = L0_1
          L1_3 = L1_3.onboarding
          L1_3 = L1_3.pausePhysics
          L1_3()
          L1_3 = L35_1
          L1_3()
        end
      end
    end
    L1_3 = A0_3.x
    L2_3 = L20_1
    L3_3 = L0_1
    L3_3 = L3_3.onboarding
    L3_3 = L3_3.stepData
    L3_3 = L3_3["21"]
    L3_3 = L3_3.endAtTileX
    L2_3 = L2_3(L3_3)
    if L1_3 > L2_3 then
      L1_3 = L0_1
      L1_3 = L1_3.onboarding
      L1_3 = L1_3.stepData
      L1_3 = L1_3["21"]
      L1_3 = L1_3.fadeOut
      if not L1_3 then
        function L1_3()
          local L0_4, L1_4, L2_4
          
          L0_4 = L28_1
          L1_4 = L0_1
          L1_4 = L1_4.onboarding
          L1_4 = L1_4.screenDisplayGroup
          L2_4 = L0_1
          L2_4 = L2_4.onboarding
          L2_4 = L2_4.stepDone
          L0_4(L1_4, L2_4)
        end
        
        L2_3 = L1_1
        L2_3 = L2_3.createMessage
        L3_3 = [[
You got the basics!
Let's have a REAL race!]]
        L4_3 = L0_1
        L4_3 = L4_3.onboarding
        L4_3 = L4_3.screenDisplayGroup
        L5_3 = L6_1
        L2_3(L3_3, L4_3, L5_3)
        L2_3 = L1_1
        L2_3 = L2_3.setOnCloseFunction
        L3_3 = L1_3
        L2_3(L3_3)
        L2_3 = L0_1
        L2_3 = L2_3.onboarding
        L2_3 = L2_3.stepData
        L2_3 = L2_3["21"]
        L2_3.fadeOut = true
      end
    end
  end
  
  L1_2.onGameUpdate = L2_2
  L1_2.next = "5"
  L0_2["21"] = L1_2
  L1_2 = {}
  L1_2.description = "Lightning challenge post game scene"
  L1_2.scene = "lua.scenes.postLobby"
  L1_2.skipDB = true
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_exit"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_addFriends"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_chat"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_times"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_mapName"
    L0_3(L1_3)
  end
  
  L1_2.postLoad = L2_2
  L1_2.next = "23"
  L0_2["22"] = L1_2
  L1_2 = {}
  L1_2.description = "Fifth Race"
  L1_2.ingame = true
  L1_2.walkIn = false
  L1_2.overrideCountdown = false
  L1_2.mapId = 2004
  L1_2.rubberband = true
  L1_2.scene = "lua.scenes.gamePlay"
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = {}
    L1_3 = 1
    L2_3 = 2
    L3_3 = 3
    L4_3 = 4
    L5_3 = 5
    L6_3 = 6
    L7_3 = 7
    L8_3 = 8
    L9_3 = 9
    L10_3 = 10
    L0_3[1] = L1_3
    L0_3[2] = L2_3
    L0_3[3] = L3_3
    L0_3[4] = L4_3
    L0_3[5] = L5_3
    L0_3[6] = L6_3
    L0_3[7] = L7_3
    L0_3[8] = L8_3
    L0_3[9] = L9_3
    L0_3[10] = L10_3
    L1_3 = math
    L1_3 = L1_3.random
    L2_3 = 1
    L3_3 = #L0_3
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = L0_3[L1_3]
    return L2_3
  end
  
  L1_2.powerBoxFunction = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 1
    L0_3[2] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 105
    L4_3 = 214
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 105
    L4_3 = 214
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 2
    L0_3[3] = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.players
    L1_3 = {}
    L2_3 = L42_1
    L3_3 = 104
    L4_3 = 0
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.username = L2_3
    L2_3 = {}
    L3_3 = 104
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 0
    L9_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L2_3[7] = L9_3
    L1_3.avatar = L2_3
    L1_3.playerId = 3
    L0_3[4] = L1_3
  end
  
  L1_2.setAIBots = L2_2
  
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.setAlphaForReferences
    L1_3 = "exit"
    L2_3 = L4_1
    L0_3(L1_3, L2_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[1]
    L0_3 = L0_3.setPowerUp
    L1_3 = 3
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[2]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[3]
    L0_3 = L0_3.setPowerUp
    L1_3 = 5
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.playerReferences
    L0_3 = L0_3[4]
    L0_3 = L0_3.setPowerUp
    L1_3 = 0
    L0_3(L1_3)
  end
  
  L1_2.onSetupGameComplete = L2_2
  L1_2.next = "24"
  L0_2["23"] = L1_2
  L1_2 = {}
  L1_2.description = "Fifth Race"
  L1_2.scene = "lua.scenes.postLobby"
  L1_2.skipDB = true
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_exit"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_addFriends"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_chat"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "postlobby_market"
    L0_3(L1_3)
  end
  
  L1_2.postLoad = L2_2
  L1_2.next = "25"
  L0_2["24"] = L1_2
  L1_2 = {}
  L1_2.description = "Shop scene"
  L1_2.scene = "lua.scenes.marketplace"
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.hideReferences
    L1_3 = "marketplace_back"
    L0_3(L1_3)
    
    function L0_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L1_1
      L0_4 = L0_4.createMessage
      L1_4 = "Click on the 'Glasses' category to see different glasses you can wear"
      L2_4 = L0_1
      L2_4 = L2_4.onboarding
      L2_4 = L2_4.screenDisplayGroup
      L3_4 = L7_1
      L4_4 = false
      L0_4(L1_4, L2_4, L3_4, L4_4)
    end
    
    function L1_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L1_1
      L0_4 = L0_4.createMessage
      L1_4 = "Let's put on the new glasses! Follow the arrows."
      L2_4 = L0_1
      L2_4 = L2_4.onboarding
      L2_4 = L2_4.screenDisplayGroup
      L3_4 = L6_1
      L4_4 = false
      L0_4(L1_4, L2_4, L3_4, L4_4)
      L0_4 = L1_1
      L0_4 = L0_4.setOnCloseFunction
      L1_4 = L0_1
      L1_4 = L1_4.onboarding
      L1_4 = L1_4.showMarketArrow
      L0_4(L1_4)
      L0_4 = true
      return L0_4
    end
    
    L2_3 = L1_1
    L2_3 = L2_3.createMessage
    L3_3 = "Check out all this stuff!"
    L4_3 = L0_1
    L4_3 = L4_3.onboarding
    L4_3 = L4_3.screenDisplayGroup
    L5_3 = L6_1
    L6_3 = true
    L2_3(L3_3, L4_3, L5_3, L6_3)
    L2_3 = L1_1
    L2_3 = L2_3.setOnCloseFunction
    L3_3 = L1_3
    L2_3(L3_3)
  end
  
  L1_2.postLoad = L2_2
  L1_2.finalStep = true
  L0_2["25"] = L1_2
  L5_1 = L0_2
end

L43_1.createOnboardingSteps = L44_1
L43_1 = L0_1.onboarding

function L44_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2.physicsPaused = true
  L0_2 = 1
  L1_2 = 4
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L0_1
    L4_2 = L4_2.onboarding
    L4_2 = L4_2.playerReferences
    L4_2 = L4_2[L3_2]
    if L4_2 then
      L4_2 = L0_1
      L4_2 = L4_2.onboarding
      L4_2 = L4_2.playerReferences
      L4_2 = L4_2[L3_2]
      L4_2 = L4_2.pauseAnimations
      L5_2 = true
      L4_2(L5_2)
    end
  end
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.physics
  L0_2 = L0_2.pause
  L0_2()
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.hideReferences
  L1_2 = "exit"
  L0_2(L1_2)
end

L43_1.pausePhysics = L44_1
L43_1 = L0_1.onboarding

function L44_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.activatedPart
  if L0_2 == "1" then
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2 = L0_2.physicsPaused
    if L0_2 then
      L0_2 = L0_1
      L0_2 = L0_2.onboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["1"]
      L0_2 = L0_2.hasJumped
      if not L0_2 then
        L0_2 = L0_1
        L0_2 = L0_2.onboarding
        L0_2 = L0_2.stepData
        L0_2 = L0_2["1"]
        L0_2.hasJumped = true
        L0_2 = L0_1
        L0_2 = L0_2.onboarding
        L0_2 = L0_2.startPhysics
        L0_2()
    end
    else
      L0_2 = L0_1
      L0_2 = L0_2.onboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["1"]
      L0_2 = L0_2.hasJumped
      if not L0_2 then
        L0_2 = L0_1
        L0_2 = L0_2.onboarding
        L0_2 = L0_2.stepData
        L0_2 = L0_2["1"]
        L0_2.hasJumped = true
      end
    end
  end
end

L43_1.jumpButtonPressed = L44_1
L43_1 = L0_1.onboarding

function L44_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.arrowTutorialImage
  if L0_2 then
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2 = L0_2.arrowTutorialImage
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2.arrowTutorialImage = nil
  end
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.activatedPart
  if L0_2 == "9" then
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2 = L0_2.playerReferences
    L0_2 = L0_2[1]
    L0_2 = L0_2.x
    L1_2 = L20_1
    L2_2 = 33
    L1_2 = L1_2(L2_2)
    if L0_2 < L1_2 then
      L0_2 = L0_1
      L0_2 = L0_2.onboarding
      L0_2 = L0_2.hideReferences
      L1_2 = "powerUp"
      L0_2(L1_2)
    end
  end
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.activatedPart
  if L0_2 == "3" then
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2 = L0_2.stepData
    L0_2 = L0_2["3"]
    L0_2.usedSawblade = true
  end
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.activatedPart
  if L0_2 == "21" then
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2 = L0_2.playerReferences
    L0_2 = L0_2[1]
    L0_2 = L0_2.x
    L1_2 = L20_1
    L2_2 = 49
    L1_2 = L1_2(L2_2)
    if L0_2 <= L1_2 then
      L0_2 = L0_1
      L0_2 = L0_2.onboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["21"]
      L0_2.usedMagnet = true
    else
      L0_2 = L0_1
      L0_2 = L0_2.onboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["21"]
      L0_2.usedLightning = true
    end
  end
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.activatedPart
  if L0_2 == "13" then
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2 = L0_2.playerReferences
    L0_2 = L0_2[1]
    L0_2 = L0_2.x
    L1_2 = L20_1
    L2_2 = 63
    L1_2 = L1_2(L2_2)
    if L0_2 <= L1_2 then
      L0_2 = L0_1
      L0_2 = L0_2.onboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["13"]
      L0_2.usedHunter = true
    else
      L0_2 = L0_1
      L0_2 = L0_2.onboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["13"]
      L0_2.usedJetpack = true
    end
  end
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2.physicsPaused = false
  L0_2 = 1
  L1_2 = 4
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L0_1
    L4_2 = L4_2.onboarding
    L4_2 = L4_2.playerReferences
    L4_2 = L4_2[L3_2]
    if L4_2 then
      L4_2 = L0_1
      L4_2 = L4_2.onboarding
      L4_2 = L4_2.playerReferences
      L4_2 = L4_2[L3_2]
      L4_2 = L4_2.pauseAnimations
      L5_2 = false
      L4_2(L5_2)
    end
  end
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.physics
  L0_2 = L0_2.start
  L0_2()
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.setAlphaForReferences
  L1_2 = "exit"
  L2_2 = L4_1
  L0_2(L1_2, L2_2)
end

L43_1.startPhysics = L44_1

function L43_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L1_2 = L1_2.data
  L1_2 = L1_2.gameInfo
  L1_2 = L1_2.players
  L2_2 = {}
  L3_2 = L0_1
  L3_2 = L3_2.database
  L3_2 = L3_2.getPlayerInformation
  L3_2 = L3_2()
  L3_2 = L3_2.username
  L2_2.username = L3_2
  L3_2 = L0_1
  L3_2 = L3_2.database
  L3_2 = L3_2.getAvatarData
  L3_2 = L3_2()
  L2_2.avatar = L3_2
  L3_2 = L0_1
  L3_2 = L3_2.database
  L3_2 = L3_2.getPlayerInformation
  L3_2 = L3_2()
  L3_2 = L3_2.playerId
  L2_2.playerId = L3_2
  L1_2[1] = L2_2
  L1_2 = L0_1
  L1_2 = L1_2.data
  L1_2 = L1_2.gameInfo
  L1_2.gameType = 0
  L1_2 = L0_1
  L1_2 = L1_2.data
  L1_2 = L1_2.gameInfo
  L1_2.map = A0_2
end

L44_1 = L0_1.onboarding

function L45_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.isActive
  return L0_2
end

L44_1.isActive = L45_1
L44_1 = L0_1.onboarding

function L45_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2.isActive = true
end

L44_1.activate = L45_1
L44_1 = L0_1.contextualOnboarding

function L45_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.contextualOnboarding
  L0_2.isActive = true
end

L44_1.activate = L45_1
L44_1 = L0_1.onboarding

function L45_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2.activatedPart = A0_2
  L1_2 = L0_1
  L1_2 = L1_2.analytics
  L1_2 = L1_2.addDesignEvent
  L2_2 = "Tutorial:Step:"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end

L44_1.setStep = L45_1
L44_1 = L0_1.onboarding

function L45_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = display
  L5_2 = L5_2.newEmbossedText
  L6_2 = A2_2
  L7_2 = 500
  L8_2 = 500
  L9_2 = L0_1
  L9_2 = L9_2.data
  L9_2 = L9_2.font
  L10_2 = A4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = {}
  L7_2 = {}
  L7_2.r = 0
  L7_2.g = 0
  L7_2.b = 0
  L6_2.highlight = L7_2
  L7_2 = {}
  L7_2.r = 0
  L7_2.g = 0
  L7_2.b = 0
  L6_2.shadow = L7_2
  L8_2 = L5_2
  L7_2 = L5_2.setEmbossColor
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L5_2.anchorX = 0.5
  L5_2.anchorY = 0.5
  L7_2 = L20_1
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L5_2.x = L7_2
  L7_2 = L21_1
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  L5_2.y = L7_2
  L5_2.xScale = 0.01
  L5_2.yScale = 0.01
  L7_2 = transition
  L7_2 = L7_2.to
  L8_2 = L5_2
  L9_2 = {}
  L9_2.tag = "tutorialTransition"
  L9_2.xScale = 1.5
  L9_2.yScale = 1.5
  L9_2.time = 750
  L10_2 = easing
  L10_2 = L10_2.outElastic
  L9_2.transition = L10_2
  L9_2.delay = A3_2
  L7_2(L8_2, L9_2)
  L7_2 = L0_1
  L7_2 = L7_2.onboarding
  L7_2 = L7_2.ingameDisplayGroup
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  return L5_2
end

L44_1.insertTextIntoWorld = L45_1
L44_1 = L0_1.onboarding

function L45_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.activatedPart
  L1_2 = L5_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L1_2 = L5_1
    L1_2 = L1_2[L0_2]
    L1_2 = L1_2.ingame
    if L1_2 then
      L1_2 = L5_1
      L1_2 = L1_2[L0_2]
      L1_2 = L1_2.setAIBots
      if L1_2 then
        L1_2 = L5_1
        L1_2 = L1_2[L0_2]
        L1_2 = L1_2.setAIBots
        L1_2()
      end
    end
  end
end

L44_1.setBotCharacters = L45_1
L44_1 = L0_1.onboarding

function L45_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.activatedPart
  L2_2 = L5_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = L5_1
    L2_2 = L2_2[L1_2]
    L2_2 = L2_2.ingame
    if L2_2 then
      L2_2 = L5_1
      L2_2 = L2_2[L1_2]
      L2_2 = L2_2.powerBoxFunction
      if L2_2 then
        L2_2 = L5_1
        L2_2 = L2_2[L1_2]
        L2_2 = L2_2.powerBoxFunction
        L3_2 = A0_2
        return L2_2(L3_2)
    end
  end
  else
    L2_2 = 1
    return L2_2
  end
end

L44_1.powerBoxFunction = L45_1

function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1
  L1_2 = L1_2.powerUpImageSheetInfo
  L2_2 = L1_2
  L1_2 = L1_2.getFrameIndex
  L3_2 = "1201"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L0_1
  L2_2 = L2_2.powerUpImageSheetInfo
  L3_2 = L2_2
  L2_2 = L2_2.getFrameIndex
  L4_2 = "1201_2"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = display
  L3_2 = L3_2.newImage
  L4_2 = L0_1
  L4_2 = L4_2.powerUpImageSheet
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2.xScale = 0.5
  L3_2.yScale = 0.5
  L3_2.alpha = 1
  L4_2 = display
  L4_2 = L4_2.newImage
  L5_2 = L0_1
  L5_2 = L5_2.powerUpImageSheet
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2.xScale = 0.5
  L4_2.yScale = 0.5
  L4_2.alpha = 0
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  L7_2 = L5_2
  L6_2 = L5_2.insert
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.insert
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.insert
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = L0_1
  L6_2 = L6_2.onboarding
  L6_2.sawbladeGroup = L5_2
  L6_2 = L0_1
  L6_2 = L6_2.onboarding
  L6_2.sawblade = L3_2
  L6_2 = L0_1
  L6_2 = L6_2.onboarding
  L6_2.sawbladeBlood = L4_2
end

function L45_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2.intro = false
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.manualStartFunction
  L0_2()
end

function L46_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.sawbladeGroup
  if L0_2 then
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2 = L0_2.sawbladeGroup
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2.sawbladeGroup = nil
  end
  L0_2 = transition
  L0_2 = L0_2.to
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.ingameDisplayGroup
  L2_2 = {}
  L2_2.tag = "tutorialTransition"
  L2_2.delta = true
  L2_2.x = -150
  L2_2.time = 500
  L3_2 = L45_1
  L2_2.onComplete = L3_2
  L0_2(L1_2, L2_2)
end

function L47_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = display
  L0_2 = L0_2.newImageRect
  L1_2 = "images/gui/common/logo.png"
  L2_2 = 224
  L3_2 = 135
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L1_2 = display
  L1_2 = L1_2.contentWidth
  L1_2 = L1_2 * 0.5
  L0_2.x = L1_2
  L1_2 = display
  L1_2 = L1_2.contentHeight
  L1_2 = L1_2 * 0.25
  L0_2.y = L1_2
  L0_2.xScale = 0.01
  L0_2.yScale = 0.01
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.screenDisplayGroup
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  L1_2 = transition
  L1_2 = L1_2.to
  L2_2 = L0_2
  L3_2 = {}
  L3_2.tag = "tutorialTransition"
  L3_2.yScale = 1
  L3_2.xScale = 1
  L3_2.time = 500
  L4_2 = easing
  L4_2 = L4_2.outBounce
  L3_2.transition = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = transition
  L1_2 = L1_2.to
  L2_2 = L0_2
  L3_2 = {}
  L3_2.tag = "tutorialTransition"
  L3_2.alpha = 0
  L3_2.time = 500
  L3_2.delay = 1500
  L4_2 = L46_1
  L3_2.onComplete = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.playerReferences
  L1_2 = L1_2[1]
  L1_2 = L1_2.playSound
  L2_2 = "lightning_activate"
  L1_2(L2_2)
end

function L48_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.playerReferences
  L0_2 = L0_2[1]
  
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.sawblade
    L0_3.alpha = 0
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.sawbladeBlood
    L0_3.alpha = 1
  end
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    
    function L1_3()
      local L0_4, L1_4
      L0_4 = A0_3
      L1_4 = A0_3
      L1_4 = L1_4.x
      L1_4 = L1_4 - 500
      L0_4.x = L1_4
    end
    
    L2_3 = A0_3.playHitAnimation
    L3_3 = 1
    L4_3 = 1
    L5_3 = 1
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = timer
    L2_3 = L2_3.performWithDelay
    L3_3 = 400
    L4_3 = L1_3
    L5_3 = 1
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L17_1 = L2_3
  end
  
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_2
    L0_3 = L0_3.playAnimation
    L1_3 = "idle"
    L2_3 = true
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L0_2
    L0_3 = L0_3.playAnimation
    L1_3 = "happy"
    L2_3 = false
    L3_3 = false
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_2
    L0_3 = L0_3.playAnimation
    L1_3 = "idle"
    L2_3 = true
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L5_2 = timer
  L5_2 = L5_2.performWithDelay
  L6_2 = 200
  
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_2
    L0_3 = L0_3.playAnimation
    L1_3 = "jump_start"
    L2_3 = true
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L8_2 = 1
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L8_1 = L5_2
  L5_2 = timer
  L5_2 = L5_2.performWithDelay
  L6_2 = 650
  
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_2
    L0_3 = L0_3.playAnimation
    L1_3 = "jump_fall"
    L2_3 = true
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L8_2 = 1
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L9_1 = L5_2
  L5_2 = L0_2.y
  L6_2 = L5_2 - 100
  L7_2 = transition
  L7_2 = L7_2.to
  L8_2 = L0_2
  L9_2 = {}
  L9_2.tag = "tutorialTransition"
  L9_2.y = L6_2
  L9_2.time = 500
  L9_2.delay = 500
  L10_2 = easing
  L10_2 = L10_2.outSine
  L9_2.transition = L10_2
  L7_2(L8_2, L9_2)
  L7_2 = transition
  L7_2 = L7_2.to
  L8_2 = L0_2
  L9_2 = {}
  L9_2.tag = "tutorialTransition"
  L9_2.y = L5_2
  L9_2.time = 500
  L9_2.delay = 1000
  L10_2 = easing
  L10_2 = L10_2.inSine
  L9_2.transition = L10_2
  L9_2.onComplete = L4_2
  L7_2(L8_2, L9_2)
  L7_2 = L0_1
  L7_2 = L7_2.onboarding
  L7_2 = L7_2.sawbladeGroup
  L8_2 = L0_2.x
  L8_2 = L8_2 - 320
  L7_2.x = L8_2
  L7_2 = L0_1
  L7_2 = L7_2.onboarding
  L7_2 = L7_2.sawbladeGroup
  L8_2 = L21_1
  L9_2 = 2
  L8_2 = L8_2(L9_2)
  L7_2.y = L8_2
  L7_2 = L0_2.playSound
  L8_2 = "blade_activate"
  L7_2(L8_2)
  L7_2 = transition
  L7_2 = L7_2.to
  L8_2 = L0_1
  L8_2 = L8_2.onboarding
  L8_2 = L8_2.sawbladeGroup
  L9_2 = {}
  L9_2.tag = "tutorialTransition"
  L9_2.delta = true
  L9_2.x = 540
  L9_2.time = 1800
  L7_2(L8_2, L9_2)
  L7_2 = transition
  L7_2 = L7_2.to
  L8_2 = L0_1
  L8_2 = L8_2.onboarding
  L8_2 = L8_2.sawbladeGroup
  L9_2 = {}
  L9_2.tag = "tutorialTransition"
  L9_2.delta = true
  L9_2.rotation = 1500
  L9_2.time = 1800
  L7_2(L8_2, L9_2)
  L7_2 = timer
  L7_2 = L7_2.performWithDelay
  L8_2 = 400
  L9_2 = L1_2
  L10_2 = 1
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L10_1 = L7_2
  L7_2 = timer
  L7_2 = L7_2.performWithDelay
  L8_2 = 600
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = L2_2
    L1_3 = L0_1
    L1_3 = L1_3.onboarding
    L1_3 = L1_3.playerReferences
    L1_3 = L1_3[3]
    L0_3(L1_3)
  end
  
  L10_2 = 1
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L12_1 = L7_2
  L7_2 = timer
  L7_2 = L7_2.performWithDelay
  L8_2 = 800
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = L2_2
    L1_3 = L0_1
    L1_3 = L1_3.onboarding
    L1_3 = L1_3.playerReferences
    L1_3 = L1_3[2]
    L0_3(L1_3)
  end
  
  L10_2 = 1
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L13_1 = L7_2
  L7_2 = timer
  L7_2 = L7_2.performWithDelay
  L8_2 = 1750
  L9_2 = L47_1
  L10_2 = 1
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L14_1 = L7_2
  L7_2 = timer
  L7_2 = L7_2.performWithDelay
  L8_2 = 1450
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = L3_2
    L0_3()
  end
  
  L10_2 = 1
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L15_1 = L7_2
end

L49_1 = L0_1.onboarding

function L50_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L5_2 = L0_1
  L5_2 = L5_2.onboarding
  L5_2.ingameDisplayGroup = A1_2
  L5_2 = L0_1
  L5_2 = L5_2.onboarding
  L5_2.ingameForegroundDisplayGroup = A4_2
  L5_2 = L0_1
  L5_2 = L5_2.onboarding
  L5_2.screenDisplayGroup = A2_2
  L5_2 = L0_1
  L5_2 = L5_2.onboarding
  L5_2.playerReferences = A0_2
  L5_2 = L0_1
  L5_2 = L5_2.onboarding
  L5_2.physics = A3_2
  L5_2 = L0_1
  L5_2 = L5_2.onboarding
  L5_2 = L5_2.activatedPart
  L6_2 = L5_1
  L6_2 = L6_2[L5_2]
  if L6_2 then
    L6_2 = L5_1
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.ingame
    if L6_2 then
      L6_2 = L5_1
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.onSetupGameComplete
      if L6_2 then
        L6_2 = L5_1
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.onSetupGameComplete
        L6_2()
      end
    end
  end
  if A2_2 then
    L7_2 = A2_2
    L6_2 = A2_2.insert
    L8_2 = L23_1
    L9_2 = L18_1
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L8_2(L9_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L6_2 = L0_1
    L6_2 = L6_2.onboarding
    L6_2 = L6_2.activatedPart
    if L6_2 == "1" then
      L6_2 = 3000
      L7_2 = L44_1
      L8_2 = A4_2
      L7_2(L8_2)
      L7_2 = L0_1
      L7_2 = L7_2.onboarding
      L7_2.intro = true
      L7_2 = A0_2[1]
      L7_2 = L7_2.x
      L8_2 = L20_1
      L9_2 = 2
      L8_2 = L8_2(L9_2)
      L7_2 = L7_2 - L8_2
      L8_2 = A1_2.x
      L9_2 = L7_2 * 0.25
      L8_2 = L8_2 + L9_2
      A1_2.x = L8_2
      L8_2 = transition
      L8_2 = L8_2.to
      L9_2 = L0_1
      L9_2 = L9_2.onboarding
      L9_2 = L9_2.ingameForegroundDisplayGroup
      L10_2 = {}
      L10_2.tag = "tutorialTransition"
      L11_2 = A1_2.x
      L12_2 = L7_2 * 0.25
      L11_2 = L11_2 - L12_2
      L11_2 = L11_2 + 150
      L10_2.x = L11_2
      L10_2.time = L6_2
      L8_2(L9_2, L10_2)
      L8_2 = transition
      L8_2 = L8_2.to
      L9_2 = A1_2
      L10_2 = {}
      L10_2.tag = "tutorialTransition"
      L11_2 = A1_2.x
      L12_2 = L7_2 * 0.25
      L11_2 = L11_2 - L12_2
      L11_2 = L11_2 + 150
      L10_2.x = L11_2
      L10_2.time = L6_2
      L8_2(L9_2, L10_2)
      L8_2 = L29_1
      L9_2 = A2_2
      L8_2(L9_2)
      L8_2 = A0_2[1]
      L8_2 = L8_2.x
      L8_2 = L8_2 - L7_2
      L9_2 = A0_2[1]
      L9_2 = L9_2.y
      L10_2 = A0_2[1]
      L10_2 = L10_2.x
      L11_2 = L30_1
      L12_2 = A0_2[1]
      L13_2 = L8_2
      L14_2 = L9_2
      L15_2 = L10_2
      L16_2 = L9_2
      L17_2 = L6_2
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L11_2 = L30_1
      L12_2 = A0_2[2]
      L13_2 = L8_2 - 50
      L14_2 = L9_2
      L15_2 = L10_2 - 50
      L16_2 = L9_2
      L17_2 = L6_2
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L11_2 = L30_1
      L12_2 = A0_2[3]
      L13_2 = L8_2 - 100
      L14_2 = L9_2
      L15_2 = L10_2 - 100
      L16_2 = L9_2
      L17_2 = L6_2
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L11_2 = L30_1
      L12_2 = A0_2[4]
      L13_2 = L8_2 - 150
      L14_2 = L9_2
      L15_2 = L10_2 - 150
      L16_2 = L9_2
      L17_2 = L6_2
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L11_2 = timer
      L11_2 = L11_2.performWithDelay
      L12_2 = L6_2 + 350
      L13_2 = L48_1
      L14_2 = 1
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L16_1 = L11_2
    else
      L6_2 = L29_1
      L7_2 = A2_2
      L6_2(L7_2)
      L6_2 = L5_1
      L7_2 = L0_1
      L7_2 = L7_2.onboarding
      L7_2 = L7_2.activatedPart
      L6_2 = L6_2[L7_2]
      L6_2 = L6_2.walkIn
      if L6_2 then
        L6_2 = L30_1
        L7_2 = A0_2[1]
        L8_2 = A0_2[1]
        L8_2 = L8_2.x
        L8_2 = L8_2 - 200
        L9_2 = A0_2[1]
        L9_2 = L9_2.y
        L10_2 = A0_2[1]
        L10_2 = L10_2.x
        L11_2 = startY
        L12_2 = 1100
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      end
    end
  end
end

L49_1.onSetupGameComplete = L50_1
L49_1 = L0_1.onboarding

function L50_1(A0_2, A1_2)
  local L2_2
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2.ingameDisplayGroup = A0_2
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2.screenDisplayGroup = A1_2
end

L49_1.updateDisplayGroups = L50_1
L49_1 = L0_1.onboarding

function L50_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L0_1
  L0_2 = L0_2.config
  L0_2 = L0_2.invalidUser
  if L0_2 then
    return
  else
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2 = L0_2.isActive
    if not L0_2 then
      L0_2 = print
      L1_2 = "The Onboarding Module is not active"
      L0_2(L1_2)
      return
    else
      L0_2 = L0_1
      L0_2 = L0_2.onboarding
      L0_2 = L0_2.activatedPart
      if not L0_2 then
        L0_2 = print
        L1_2 = "activatedPart is not set"
        L0_2(L1_2)
        return
      end
    end
  end
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.activatedPart
  L1_2 = L5_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L1_2 = L5_1
    L1_2 = L1_2[L0_2]
    L2_2 = L1_2.preLoad
    if L2_2 then
      L2_2 = L1_2.preLoad
      L2_2()
    end
    L2_2 = L1_2.ingame
    if L2_2 then
      L2_2 = L43_1
      L3_2 = L1_2.mapId
      L2_2(L3_2)
      L2_2 = L0_1
      L2_2 = L2_2.onboarding
      L3_2 = {}
      L2_2.ingameTextArray = L3_2
      L2_2 = L0_1
      L2_2 = L2_2.onboarding
      L2_2.doneMovingIn = false
      L2_2 = L0_1
      L2_2 = L2_2.onboarding
      L2_2.setCamera = false
    end
    L2_2 = L0_1
    L2_2 = L2_2.getSceneName
    L3_2 = "current"
    L2_2 = L2_2(L3_2)
    L3_2 = L1_2.scene
    if L2_2 == L3_2 and L2_2 == "lua.scenes.gamePlay" then
      L3_2 = L0_1
      L3_2 = L3_2.gotoScene
      L4_2 = "lua.scenes.bufferScene"
      L3_2(L4_2)
      L3_2 = L0_1
      L3_2 = L3_2.removeScene
      L4_2 = L2_2
      L3_2(L4_2)
    else
      L3_2 = L0_1
      L3_2 = L3_2.gotoScene
      L4_2 = L1_2.scene
      L3_2(L4_2)
      L3_2 = L0_1
      L3_2 = L3_2.removeScene
      L4_2 = L2_2
      L3_2(L4_2)
    end
    L3_2 = L1_2.postLoad
    if L3_2 then
      L3_2 = L1_2.postLoad
      L3_2()
    else
    end
  end
end

L49_1.activateStep = L50_1
L49_1 = L0_1.onboarding

function L50_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = false
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.activatedPart
  L2_2 = L0_1
  L2_2 = L2_2.config
  L2_2 = L2_2.onboardingVersion
  L3_2 = L0_1
  L3_2 = L3_2.onboarding
  L3_2 = L3_2.clean
  L3_2()
  L3_2 = L0_1
  L3_2 = L3_2.analytics
  L3_2 = L3_2.newEvent
  L4_2 = "design"
  L5_2 = {}
  L6_2 = "onboarding:intro:step"
  L7_2 = L1_2
  L6_2 = L6_2 .. L7_2
  L5_2.event_id = L6_2
  L5_2.area = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = L5_1
  L3_2 = L3_2[L1_2]
  if L3_2 then
    L3_2 = L5_1
    L3_2 = L3_2[L1_2]
    L3_2 = L3_2.finalStep
    if L3_2 then
      L3_2 = L5_1
      L3_2 = L3_2[L1_2]
      L3_2 = L3_2.finalStep
      if L3_2 == true then
        L0_2 = true
      end
    end
  end
  if L0_2 then
    L3_2 = L0_1
    L3_2 = L3_2.onboarding
    L3_2 = L3_2.deactivate
    L3_2()
    L3_2 = L0_1
    L3_2 = L3_2.getSceneName
    L4_2 = "current"
    L3_2 = L3_2(L4_2)
    L4_2 = L0_1
    L4_2 = L4_2.gotoScene
    L5_2 = "lua.scenes.mainMenu"
    L4_2(L5_2)
    L4_2 = L0_1
    L4_2 = L4_2.removeScene
    L5_2 = L3_2
    L4_2(L5_2)
  else
    L3_2 = L0_1
    L3_2 = L3_2.database
    L3_2 = L3_2.setOnboardingIntroPartDone
    L4_2 = tonumber
    L5_2 = L0_1
    L5_2 = L5_2.onboarding
    L5_2 = L5_2.activatedPart
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = L0_1
    L3_2 = L3_2.onboarding
    L3_2 = L3_2.setStep
    L4_2 = L5_1
    L4_2 = L4_2[L1_2]
    L4_2 = L4_2.next
    L3_2(L4_2)
    L3_2 = L0_1
    L3_2 = L3_2.onboarding
    L3_2 = L3_2.activateStep
    L3_2()
  end
end

L49_1.stepDone = L50_1
L49_1 = L0_1.onboarding

function L50_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2 = L2_2.guiReferences
  if not L2_2 then
    return
  end
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2 = L2_2.guiReferences
  L3_2 = L2_2[A0_2]
  if not L3_2 then
    L3_2 = {}
    L2_2[A0_2] = L3_2
  end
  L3_2 = L2_2[A0_2]
  L4_2 = L2_2[A0_2]
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L3_2[L4_2] = A1_2
end

L49_1.addGuiReference = L50_1
L49_1 = L0_1.onboarding

function L50_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.guiReferences
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = 1
    L3_2 = #L1_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L1_2[L5_2]
      L6_2.alpha = 0
      L6_2 = L1_2[L5_2]
      L6_2 = L6_2.isVisible
      if L6_2 == true then
        L6_2 = L1_2[L5_2]
        L6_2.isVisible = false
      end
    end
  end
end

L49_1.hideReferences = L50_1
L49_1 = L0_1.onboarding

function L50_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2 = L2_2.guiReferences
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = 1
    L4_2 = #L2_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L2_2[L6_2]
      L7_2.alpha = A1_2
      L7_2 = L2_2[L6_2]
      L7_2 = L7_2.isVisible
      L7_2 = not L7_2
      if L7_2 == true then
        L7_2 = L2_2[L6_2]
        L7_2.isVisible = true
      end
    end
  end
end

L49_1.setAlphaForReferences = L50_1
L49_1 = L0_1.onboarding

function L50_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.guiReferences
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = 1
    L3_2 = #L1_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L1_2[L5_2]
      L6_2.alpha = 1
      L6_2 = L1_2[L5_2]
      L6_2 = L6_2.isVisible
      L6_2 = not L6_2
      if L6_2 == true then
        L6_2 = L1_2[L5_2]
        L6_2.isVisible = true
      end
    end
  end
end

L49_1.showReferences = L50_1
L49_1 = L0_1.onboarding

function L50_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.guiReferences
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = 1
    L3_2 = #L1_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L1_2[L5_2]
      L6_2 = L6_2.alpha
      if L6_2 ~= 1 then
        L6_2 = L1_2[L5_2]
        L6_2 = L6_2.isVisible
        if L6_2 ~= true then
          goto lbl_21
        end
      end
      L6_2 = true
      do return L6_2 end
      ::lbl_21::
    end
  end
  L2_2 = false
  return L2_2
end

L49_1.isReferenceVisible = L50_1
L49_1 = L0_1.onboarding

function L50_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L5_1
  L2_2 = A0_2
  L3_2 = ""
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2[L2_2]
  L2_2 = L5_1
  L3_2 = L1_2.next
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2.skipDB
  if L3_2 == true then
    return A0_2
  else
    L3_2 = L1_2.next
    return L3_2
  end
end

L49_1.getNextStep = L50_1
L49_1 = L0_1.onboarding

function L50_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.clean
  L0_2()
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.activatedPart
  L1_2 = L0_1
  L1_2 = L1_2.config
  L1_2 = L1_2.onboardingVersion
  L2_2 = L0_1
  L2_2 = L2_2.analytics
  L2_2 = L2_2.newEvent
  L3_2 = "design"
  L4_2 = {}
  L5_2 = "onboarding:intro:deactivationStep"
  L6_2 = L0_2
  L5_2 = L5_2 .. L6_2
  L4_2.event_id = L5_2
  L4_2.area = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2.isActive = false
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2.activatedPart = nil
  L2_2 = L0_1
  L2_2 = L2_2.database
  L2_2 = L2_2.setOnboardingPartDone
  L3_2 = 1
  L2_2(L3_2)
end

L49_1.deactivate = L50_1
L49_1 = L0_1.contextualOnboarding

function L50_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.contextualOnboarding
  L0_2.isActive = false
end

L49_1.deactivate = L50_1
L49_1 = L0_1.onboarding

function L50_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.activatedPart
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.playerReferences
  L1_2 = L1_2[1]
  L2_2 = L5_1
  L2_2 = L2_2[L0_2]
  if L2_2 then
    L2_2 = L5_1
    L2_2 = L2_2[L0_2]
    L2_2 = L2_2.ingame
    if L2_2 then
      L2_2 = L5_1
      L2_2 = L2_2[L0_2]
      L2_2 = L2_2.onGameUpdate
      if L2_2 and L1_2 then
        L2_2 = L1_2.x
        L3_2 = L20_1
        L4_2 = L0_1
        L4_2 = L4_2.onboarding
        L4_2 = L4_2.stepData
        L5_2 = L0_1
        L5_2 = L5_2.onboarding
        L5_2 = L5_2.activatedPart
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.endAtTileX
        L4_2 = L4_2 - 6
        L3_2 = L3_2(L4_2)
        L2_2 = L2_2 > L3_2
        if L2_2 then
          L3_2 = L0_1
          L3_2 = L3_2.onboarding
          L3_2 = L3_2.hideReferences
          L4_2 = "exit"
          L3_2(L4_2)
          L3_2 = L1_2.getLinearVelocityOnPlayer
          L3_2, L4_2 = L3_2()
          if 150 < L3_2 then
            L5_2 = L3_2 * 0.15
            L3_2 = L3_2 - L5_2
          end
          L5_2 = L1_2.setLinearVelocityOnPlayer
          L6_2 = L3_2
          L7_2 = L4_2
          L5_2(L6_2, L7_2)
        end
        L3_2 = L5_1
        L3_2 = L3_2[L0_2]
        L3_2 = L3_2.onGameUpdate
        L4_2 = L1_2
        L3_2(L4_2)
      end
    end
  end
  L2_2 = L5_1
  L2_2 = L2_2[L0_2]
  if L2_2 then
    L2_2 = L5_1
    L2_2 = L2_2[L0_2]
    L2_2 = L2_2.ingame
    if L2_2 then
      L2_2 = L5_1
      L2_2 = L2_2[L0_2]
      L2_2 = L2_2.rubberband
      if L2_2 and L1_2 then
        L2_2 = 2
        L3_2 = L0_1
        L3_2 = L3_2.onboarding
        L3_2 = L3_2.playerReferences
        L3_2 = #L3_2
        L4_2 = 1
        for L5_2 = L2_2, L3_2, L4_2 do
          L6_2 = L41_1
          L7_2 = L1_2
          L8_2 = L0_1
          L8_2 = L8_2.onboarding
          L8_2 = L8_2.playerReferences
          L8_2 = L8_2[L5_2]
          L9_2 = L5_2 - 1
          L6_2(L7_2, L8_2, L9_2)
        end
      end
    end
  end
end

L49_1.ingameUpdate = L50_1
L49_1 = L0_1.onboarding

function L50_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.activatedPart
  L1_2 = L5_1
  L1_2 = L1_2[L0_2]
  if not L1_2 then
    L1_2 = L5_1
    L1_2 = L1_2[L0_2]
    L1_2 = L1_2.overrideAI
    if not L1_2 then
      L1_2 = false
      return L1_2
  end
  else
    L1_2 = L5_1
    L1_2 = L1_2[L0_2]
    if L1_2 then
      L1_2 = L5_1
      L1_2 = L1_2[L0_2]
      L1_2 = L1_2.overrideAI
      if L1_2 then
        L1_2 = L5_1
        L1_2 = L1_2[L0_2]
        L1_2 = L1_2.overrideAI
        return L1_2()
      end
    end
  end
end

L49_1.overrideAI = L50_1
L49_1 = L0_1.onboarding

function L50_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.hideReferences
  L1_2 = "selfArrow"
  L0_2(L1_2)
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.setCamera
  if not L0_2 then
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2.setCamera = true
    L0_2 = true
    return L0_2
  end
  L0_2 = false
  return L0_2
end

L49_1.shouldSetStartCamera = L50_1
L49_1 = L0_1.onboarding

function L50_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.isActive
  L1_2 = not L1_2
  if L1_2 == true then
    L1_2 = false
    return L1_2
  end
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.intro
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = L5_1
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2 = L2_2.activatedPart
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.walkIn
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.stepData
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2 = L2_2.activatedPart
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.stepData
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2 = L2_2.activatedPart
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.endAtTileX
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L5_1
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2 = L2_2.activatedPart
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.walkIn
  if L1_2 then
    L1_2 = L0_1
    L1_2 = L1_2.onboarding
    L1_2 = L1_2.doneMovingIn
    if not L1_2 then
      L1_2 = true
      return L1_2
    end
  end
  L1_2 = L20_1
  L2_2 = L0_1
  L2_2 = L2_2.onboarding
  L2_2 = L2_2.stepData
  L3_2 = L0_1
  L3_2 = L3_2.onboarding
  L3_2 = L3_2.activatedPart
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.endAtTileX
  L2_2 = L2_2 - 6
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 > L1_2
  if L1_2 then
    L2_2 = L0_1
    L2_2 = L2_2.onboarding
    L2_2 = L2_2.hideReferences
    L3_2 = "jump"
    L2_2(L3_2)
    L2_2 = L0_1
    L2_2 = L2_2.onboarding
    L2_2 = L2_2.hideReferences
    L3_2 = "powerUp"
    L2_2(L3_2)
    L2_2 = L0_1
    L2_2 = L2_2.onboarding
    L2_2 = L2_2.hideReferences
    L3_2 = "selfArrow"
    L2_2(L3_2)
  end
  return L1_2
end

L49_1.disableCameraX = L50_1
L49_1 = L0_1.onboarding

function L50_1(A0_2)
  local L1_2
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.intro
  L1_2 = L1_2 == true
  return L1_2
end

L49_1.disableCameraY = L50_1
L49_1 = L0_1.onboarding

function L50_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.activatedPart
  L1_2 = L5_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L1_2 = L5_1
    L1_2 = L1_2[L0_2]
    L1_2 = L1_2.overrideCountdown
    return L1_2
  end
  L1_2 = false
  return L1_2
end

L49_1.overrideCountdown = L50_1
L49_1 = L0_1.onboarding

function L50_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.isReferenceVisible
  L1_2 = "powerUp"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = L34_1
    L1_2 = 1
    L2_2 = 0
    L0_2(L1_2, L2_2)
  end
end

L49_1.onCollideWithPowerBox = L50_1
L49_1 = L0_1.onboarding

function L50_1(A0_2)
  local L1_2
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2.quitGameClean = A0_2
end

L49_1.setGameCleanFunction = L50_1
L49_1 = L0_1.onboarding

function L50_1()
  local L0_2, L1_2
  L0_2 = L5_1
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2 = L1_2.activatedPart
  L0_2 = L0_2[L1_2]
  L0_2 = L0_2.description
  return L0_2
end

L49_1.getMapName = L50_1
L49_1 = L0_1.onboarding

function L50_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.activatedPart
  L0_2 = L0_2 == "1"
  return L0_2
end

L49_1.manualStart = L50_1
L49_1 = L0_1.onboarding

function L50_1(A0_2)
  local L1_2
  L1_2 = L0_1
  L1_2 = L1_2.onboarding
  L1_2.manualStartFunction = A0_2
end

L49_1.setManualStart = L50_1
L49_1 = L0_1.onboarding

function L50_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.isActive
  L0_2 = not L0_2
  if L0_2 == true then
    L0_2 = false
    return L0_2
  end
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.activatedPart
  L0_2 = L0_2 == "21"
  return L0_2
end

L49_1.reduceRespawnTime = L50_1
L49_1 = L0_1.onboarding

function L50_1()
  local L0_2, L1_2
  L0_2 = transition
  L0_2 = L0_2.cancel
  L1_2 = "tutorialTransition"
  L0_2(L1_2)
  L0_2 = L0_1
  L0_2 = L0_2.contextualOnboarding
  L0_2 = L0_2.stepData
  L0_2 = L0_2["2"]
  L0_2 = L0_2.playArrow
  if L0_2 then
    L0_2 = L0_1
    L0_2 = L0_2.contextualOnboarding
    L0_2 = L0_2.stepData
    L0_2 = L0_2["2"]
    L0_2 = L0_2.playArrow
    L0_2 = L0_2.removeSelf
    if L0_2 then
      L0_2 = L0_1
      L0_2 = L0_2.contextualOnboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["2"]
      L0_2 = L0_2.playArrow
      L1_2 = L0_2
      L0_2 = L0_2.removeSelf
      L0_2(L1_2)
      L0_2 = L0_1
      L0_2 = L0_2.contextualOnboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["2"]
      L0_2.playArrow = nil
    end
  end
  L0_2 = L0_1
  L0_2 = L0_2.contextualOnboarding
  L0_2 = L0_2.stepData
  L0_2 = L0_2["2"]
  L0_2 = L0_2.quickPlayArrow
  if L0_2 then
    L0_2 = L0_1
    L0_2 = L0_2.contextualOnboarding
    L0_2 = L0_2.stepData
    L0_2 = L0_2["2"]
    L0_2 = L0_2.quickPlayArrow
    L0_2 = L0_2.removeSelf
    if L0_2 then
      L0_2 = L0_1
      L0_2 = L0_2.contextualOnboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["2"]
      L0_2 = L0_2.quickPlayArrow
      L1_2 = L0_2
      L0_2 = L0_2.removeSelf
      L0_2(L1_2)
      L0_2 = L0_1
      L0_2 = L0_2.contextualOnboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["2"]
      L0_2.quickPlayArrow = nil
    end
  end
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.stepData
  L0_2 = L0_2["25"]
  L0_2 = L0_2.categoryArrow
  if L0_2 then
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2 = L0_2.stepData
    L0_2 = L0_2["25"]
    L0_2 = L0_2.categoryArrow
    L0_2 = L0_2.removeSelf
    if L0_2 then
      L0_2 = L0_1
      L0_2 = L0_2.onboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["25"]
      L0_2 = L0_2.categoryArrow
      L1_2 = L0_2
      L0_2 = L0_2.removeSelf
      L0_2(L1_2)
      L0_2 = L0_1
      L0_2 = L0_2.onboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["25"]
      L0_2.categoryArrow = nil
    end
  end
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.stepData
  L0_2 = L0_2["25"]
  L0_2 = L0_2.iconArrow
  if L0_2 then
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2 = L0_2.stepData
    L0_2 = L0_2["25"]
    L0_2 = L0_2.iconArrow
    L0_2 = L0_2.removeSelf
    if L0_2 then
      L0_2 = L0_1
      L0_2 = L0_2.onboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["25"]
      L0_2 = L0_2.iconArrow
      L1_2 = L0_2
      L0_2 = L0_2.removeSelf
      L0_2(L1_2)
      L0_2 = L0_1
      L0_2 = L0_2.onboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["25"]
      L0_2.iconArrow = nil
    end
  end
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.stepData
  L0_2 = L0_2["25"]
  L0_2 = L0_2.homeArrow
  if L0_2 then
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2 = L0_2.stepData
    L0_2 = L0_2["25"]
    L0_2 = L0_2.homeArrow
    L0_2 = L0_2.removeSelf
    if L0_2 then
      L0_2 = L0_1
      L0_2 = L0_2.onboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["25"]
      L0_2 = L0_2.homeArrow
      L1_2 = L0_2
      L0_2 = L0_2.removeSelf
      L0_2(L1_2)
      L0_2 = L0_1
      L0_2 = L0_2.onboarding
      L0_2 = L0_2.stepData
      L0_2 = L0_2["25"]
      L0_2.homeArrow = nil
    end
  end
  L0_2 = L0_1
  L0_2 = L0_2.onboarding
  L0_2 = L0_2.arrowTutorialImage
  if L0_2 then
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2 = L0_2.arrowTutorialImage
    L0_2 = L0_2.removeSelf
    if L0_2 then
      L0_2 = L0_1
      L0_2 = L0_2.onboarding
      L0_2 = L0_2.arrowTutorialImage
      L1_2 = L0_2
      L0_2 = L0_2.removeSelf
      L0_2(L1_2)
    end
    L0_2 = L0_1
    L0_2 = L0_2.onboarding
    L0_2.arrowTutorialImage = nil
  end
  L0_2 = L8_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L8_1
    L0_2(L1_2)
    L0_2 = nil
    L8_1 = L0_2
  end
  L0_2 = L9_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L9_1
    L0_2(L1_2)
    L0_2 = nil
    L9_1 = L0_2
  end
  L0_2 = L10_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L10_1
    L0_2(L1_2)
    L0_2 = nil
    L10_1 = L0_2
  end
  L0_2 = L11_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L11_1
    L0_2(L1_2)
    L0_2 = nil
    L11_1 = L0_2
  end
  L0_2 = L12_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L12_1
    L0_2(L1_2)
    L0_2 = nil
    L12_1 = L0_2
  end
  L0_2 = L13_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L13_1
    L0_2(L1_2)
    L0_2 = nil
    L13_1 = L0_2
  end
  L0_2 = L14_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L14_1
    L0_2(L1_2)
    L0_2 = nil
    L14_1 = L0_2
  end
  L0_2 = L15_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L15_1
    L0_2(L1_2)
    L0_2 = nil
    L15_1 = L0_2
  end
  L0_2 = L16_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L16_1
    L0_2(L1_2)
    L0_2 = nil
    L16_1 = L0_2
  end
  L0_2 = L17_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L17_1
    L0_2(L1_2)
    L0_2 = nil
    L17_1 = L0_2
  end
end

L49_1.clean = L50_1
