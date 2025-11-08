local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "lua.modules.dropdownHelper"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "lua.modules.assetLoader"
L2_1 = L2_1(L3_1)
L3_1 = L0_1.newScene
L3_1 = L3_1()
L4_1 = require
L5_1 = "lua.modules.clientStatReporting"
L4_1 = L4_1(L5_1)
L5_1 = nil
L6_1 = nil
L7_1 = nil
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
L18_1 = nil
L19_1 = nil
L20_1 = nil
L21_1 = nil
L22_1 = nil
L23_1 = nil
L24_1 = nil
L25_1 = nil
L26_1 = nil
L27_1 = nil

function L28_1()
  local L0_2, L1_2
end

function L29_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = A0_2.view
  L3_2 = {}
  L4_2 = 1
  L5_2 = 1
  L6_2 = 1
  L7_2 = 1
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L4_2 = L0_1
  L4_2 = L4_2.database
  L4_2 = L4_2.getPlayerInformation
  L4_2 = L4_2()
  L4_2 = L4_2.playerId
  L5_2 = L0_1
  L5_2 = L5_2.data
  L5_2 = L5_2.gameInfo
  L5_2.crazyModePostLobby = false
  L5_2 = L0_1
  L5_2 = L5_2.data
  L5_2 = L5_2.gameInfo
  L6_2 = {}
  L5_2.stats = L6_2
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  L13_1 = L5_2
  L6_2 = L2_2
  L5_2 = L2_2.insert
  L7_2 = L13_1
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  L14_1 = L5_2
  L6_2 = L2_2
  L5_2 = L2_2.insert
  L7_2 = L14_1
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  L12_1 = L5_2
  L6_2 = L2_2
  L5_2 = L2_2.insert
  L7_2 = L12_1
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  L10_1 = L5_2
  L5_2 = L12_1
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L10_1
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  L11_1 = L5_2
  L5_2 = L12_1
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L11_1
  L5_2(L6_2, L7_2)
  L5_2 = L0_1
  L5_2 = L5_2.newText
  L6_2 = {}
  L6_2.string = ""
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 * 0.5
  L6_2.x = L7_2
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 * 0.44
  L6_2.y = L7_2
  L6_2.size = 50
  L7_2 = {}
  L8_2 = 1
  L9_2 = 1
  L10_2 = 1
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L6_2.color = L7_2
  L5_2 = L5_2(L6_2)
  L15_1 = L5_2
  L5_2 = L12_1
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L15_1
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = "images/game/selfArrow.png"
  L7_2 = 15
  L8_2 = 15
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L23_1 = L5_2
  L5_2 = L23_1
  L5_2.x = 150
  L5_2 = L23_1
  L5_2.y = 100
  L5_2 = L23_1
  L6_2 = L5_2
  L5_2 = L5_2.scale
  L7_2 = 0.1
  L8_2 = 0.1
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L23_1
  L5_2.alpha = 0
  L5_2 = L12_1
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L23_1
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = "images/game/markIcon.png"
  L7_2 = 37
  L8_2 = 34
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L22_1 = L5_2
  L5_2 = L22_1
  L5_2.x = 150
  L5_2 = L22_1
  L5_2.y = 160
  L5_2 = L22_1
  L5_2.alpha = 0
  L5_2 = L12_1
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L22_1
  L5_2(L6_2, L7_2)
  L5_2 = "images/gui/common/buttonClosePopup.png"
  L6_2 = "images/game/buttonJump.png"
  L7_2 = "images/game/buttonPowerup.png"
  L8_2 = 0
  L9_2 = false
  L25_1 = L9_2
  L9_2 = 1
  L10_2 = L0_1
  L10_2 = L10_2.data
  L10_2 = L10_2.gameInfo
  L10_2 = L10_2.players
  L10_2 = #L10_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = L0_1
    L13_2 = L13_2.data
    L13_2 = L13_2.gameInfo
    L13_2 = L13_2.players
    L13_2 = L13_2[L12_2]
    L13_2 = L13_2.playerId
    if L13_2 then
      L13_2 = L0_1
      L13_2 = L13_2.data
      L13_2 = L13_2.gameInfo
      L13_2 = L13_2.players
      L13_2 = L13_2[L12_2]
      L13_2 = L13_2.playerId
      if L13_2 == L4_2 then
        L13_2 = L0_1
        L13_2 = L13_2.storeConfig
        L13_2 = L13_2.isThisAPowerupSet
        L14_2 = L0_1
        L14_2 = L14_2.data
        L14_2 = L14_2.gameInfo
        L14_2 = L14_2.players
        L14_2 = L14_2[L12_2]
        L14_2 = L14_2.customPowerUps
        L13_2 = L13_2(L14_2)
        L25_1 = L13_2
      end
    end
  end
  L9_2 = L25_1
  if L9_2 then
    L9_2 = display
    L9_2 = L9_2.newImageRect
    L10_2 = "images/game/buttonJump"
    L11_2 = L25_1
    L12_2 = ".png"
    L10_2 = L10_2 .. L11_2 .. L12_2
    L11_2 = 35
    L12_2 = 35
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    if L9_2 == nil then
      L10_2 = false
      L25_1 = L10_2
    else
      L11_2 = L9_2
      L10_2 = L9_2.removeSelf
      L10_2(L11_2)
      L9_2 = nil
      L10_2 = "images/game/buttonJump"
      L11_2 = L25_1
      L12_2 = ".png"
      L6_2 = L10_2 .. L11_2 .. L12_2
      L10_2 = "images/game/buttonPowerup"
      L11_2 = L25_1
      L12_2 = ".png"
      L7_2 = L10_2 .. L11_2 .. L12_2
      L8_2 = L25_1
    end
  end
  L9_2 = display
  L9_2 = L9_2.newImageRect
  L10_2 = L5_2
  L11_2 = 35
  L12_2 = 35
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_1 = L9_2
  L9_2 = L8_1
  L10_2 = L8_1
  L10_2 = L10_2.width
  L10_2 = L10_2 * 0.5
  L9_2.x = L10_2
  L9_2 = L8_1
  L10_2 = L8_1
  L10_2 = L10_2.height
  L10_2 = L10_2 * 0.5
  L9_2.y = L10_2
  L9_2 = L12_1
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L8_1
  L9_2(L10_2, L11_2)
  L9_2 = L0_1
  L9_2 = L9_2.newText
  L10_2 = {}
  L10_2.string = "22"
  L10_2.x = 240
  L10_2.y = 20
  L10_2.size = 40
  L11_2 = {}
  L12_2 = 1
  L13_2 = 1
  L14_2 = 1
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L10_2.color = L11_2
  L9_2 = L9_2(L10_2)
  L17_1 = L9_2
  L9_2 = L12_1
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L17_1
  L9_2(L10_2, L11_2)
  L9_2 = display
  L9_2 = L9_2.newImageRect
  L10_2 = "images/transparent.png"
  L11_2 = 150
  L12_2 = 150
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L7_1 = L9_2
  L9_2 = L7_1
  L10_2 = display
  L10_2 = L10_2.contentWidth
  L11_2 = L7_1
  L11_2 = L11_2.width
  L11_2 = L11_2 * 0.5
  L10_2 = L10_2 - L11_2
  L9_2.x = L10_2
  L9_2 = L7_1
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L11_2 = L7_1
  L11_2 = L11_2.height
  L11_2 = L11_2 * 0.5
  L10_2 = L10_2 - L11_2
  L9_2.y = L10_2
  L9_2 = L10_1
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L7_1
  L9_2(L10_2, L11_2)
  L9_2 = display
  L9_2 = L9_2.newImageRect
  L10_2 = L6_2
  L11_2 = 68
  L12_2 = 63
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L20_1 = L9_2
  L9_2 = L20_1
  L10_2 = display
  L10_2 = L10_2.contentWidth
  L11_2 = L20_1
  L11_2 = L11_2.width
  L11_2 = L11_2 * 0.5
  L10_2 = L10_2 - L11_2
  L9_2.x = L10_2
  L9_2 = L20_1
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L11_2 = L20_1
  L11_2 = L11_2.height
  L11_2 = L11_2 * 0.5
  L10_2 = L10_2 - L11_2
  L9_2.y = L10_2
  L9_2 = L10_1
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L20_1
  L9_2(L10_2, L11_2)
  L9_2 = display
  L9_2 = L9_2.newImageRect
  L10_2 = "images/transparent.png"
  L11_2 = 150
  L12_2 = 150
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L5_1 = L9_2
  L9_2 = L5_1
  L10_2 = L5_1
  L10_2 = L10_2.width
  L10_2 = L10_2 * 0.5
  L9_2.x = L10_2
  L9_2 = L5_1
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L11_2 = L5_1
  L11_2 = L11_2.height
  L11_2 = L11_2 * 0.5
  L10_2 = L10_2 - L11_2
  L9_2.y = L10_2
  L9_2 = L11_1
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L5_1
  L9_2(L10_2, L11_2)
  L9_2 = display
  L9_2 = L9_2.newImageRect
  L10_2 = L7_2
  L11_2 = 68
  L12_2 = 63
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L21_1 = L9_2
  L9_2 = L21_1
  L10_2 = L21_1
  L10_2 = L10_2.width
  L10_2 = L10_2 * 0.5
  L9_2.x = L10_2
  L9_2 = L21_1
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L11_2 = L21_1
  L11_2 = L11_2.height
  L11_2 = L11_2 * 0.5
  L10_2 = L10_2 - L11_2
  L9_2.y = L10_2
  L9_2 = L11_1
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L21_1
  L9_2(L10_2, L11_2)
  L9_2 = display
  L9_2 = L9_2.newSprite
  L10_2 = L0_1
  L10_2 = L10_2.powerUpFXImageSheet
  L11_2 = L2_1
  L11_2 = L11_2.getButtonAnimation
  L12_2 = L8_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L11_2(L12_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L6_1 = L9_2
  L9_2 = L6_1
  L9_2.xScale = 0.5
  L9_2 = L6_1
  L9_2.yScale = 0.5
  L9_2 = L6_1
  L10_2 = L21_1
  L10_2 = L10_2.x
  L10_2 = L10_2 - 5
  L9_2.x = L10_2
  L9_2 = L6_1
  L10_2 = L21_1
  L10_2 = L10_2.y
  L10_2 = L10_2 + 3
  L9_2.y = L10_2
  L9_2 = L11_1
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L6_1
  L9_2(L10_2, L11_2)
  L9_2 = display
  L9_2 = L9_2.newSprite
  L10_2 = L0_1
  L10_2 = L10_2.powerUpFXImageSheet
  L11_2 = L0_1
  L11_2 = L11_2.data
  L11_2 = L11_2.animations
  L11_2 = L11_2.shineEffect
  L9_2 = L9_2(L10_2, L11_2)
  L9_1 = L9_2
  L9_2 = L9_1
  L9_2.xScale = 0.5
  L9_2 = L9_1
  L9_2.yScale = 0.5
  L9_2 = L9_1
  L10_2 = L21_1
  L10_2 = L10_2.x
  L10_2 = L10_2 - 5
  L9_2.x = L10_2
  L9_2 = L9_1
  L10_2 = L21_1
  L10_2 = L10_2.y
  L10_2 = L10_2 + 3
  L9_2.y = L10_2
  L9_2 = L9_1
  L9_2.alpha = 0
  L9_2 = L11_1
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L9_1
  L9_2(L10_2, L11_2)
  L9_2 = display
  L9_2 = L9_2.newImageRect
  L10_2 = "images/game/networkAlert.png"
  L11_2 = 25
  L12_2 = 25
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L19_1 = L9_2
  L9_2 = L19_1
  L9_2.x = 125
  L9_2 = L19_1
  L9_2.y = 20
  L9_2 = L12_1
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L19_1
  L9_2(L10_2, L11_2)
  L9_2 = L19_1
  L9_2.alpha = 0
  L9_2 = {}
  L18_1 = L9_2
  L9_2 = L18_1
  L10_2 = L0_1
  L10_2 = L10_2.localized
  L10_2 = L10_2.get
  L11_2 = "1st"
  L10_2 = L10_2(L11_2)
  L9_2[1] = L10_2
  L9_2 = L18_1
  L10_2 = L0_1
  L10_2 = L10_2.localized
  L10_2 = L10_2.get
  L11_2 = "2nd"
  L10_2 = L10_2(L11_2)
  L9_2[2] = L10_2
  L9_2 = L18_1
  L10_2 = L0_1
  L10_2 = L10_2.localized
  L10_2 = L10_2.get
  L11_2 = "3rd"
  L10_2 = L10_2(L11_2)
  L9_2[3] = L10_2
  L9_2 = L18_1
  L10_2 = L0_1
  L10_2 = L10_2.localized
  L10_2 = L10_2.get
  L11_2 = "4th"
  L10_2 = L10_2(L11_2)
  L9_2[4] = L10_2
  L9_2 = audio
  L9_2 = L9_2.reserveChannels
  L10_2 = 21
  L9_2(L10_2)
  L9_2 = L0_1
  L9_2 = L9_2.data
  L9_2 = L9_2.gameInfo
  L9_2 = L9_2.gameType
  if L9_2 == 0 then
    L9_2 = L0_1
    L9_2 = L9_2.onboarding
    L9_2 = L9_2.isActive
    if L9_2 == true then
      L9_2 = L0_1
      L9_2 = L9_2.onboarding
      L9_2 = L9_2.setBotCharacters
      L9_2()
    else
      L9_2 = L0_1
      L9_2 = L9_2.data
      L9_2 = L9_2.gameInfo
      L9_2 = L9_2.players
      L10_2 = {}
      L10_2.username = "Sheep"
      L11_2 = {}
      L12_2 = 105
      L13_2 = 0
      L14_2 = 0
      L15_2 = 0
      L16_2 = 0
      L17_2 = 0
      L18_2 = 0
      L11_2[1] = L12_2
      L11_2[2] = L13_2
      L11_2[3] = L14_2
      L11_2[4] = L15_2
      L11_2[5] = L16_2
      L11_2[6] = L17_2
      L11_2[7] = L18_2
      L10_2.avatar = L11_2
      L10_2.playerId = 1
      L9_2[2] = L10_2
      L9_2 = L0_1
      L9_2 = L9_2.data
      L9_2 = L9_2.gameInfo
      L9_2 = L9_2.players
      L10_2 = {}
      L10_2.username = "Wolf"
      L11_2 = {}
      L12_2 = 105
      L13_2 = 214
      L14_2 = 0
      L15_2 = 0
      L16_2 = 0
      L17_2 = 0
      L18_2 = 0
      L11_2[1] = L12_2
      L11_2[2] = L13_2
      L11_2[3] = L14_2
      L11_2[4] = L15_2
      L11_2[5] = L16_2
      L11_2[6] = L17_2
      L11_2[7] = L18_2
      L10_2.avatar = L11_2
      L10_2.playerId = 2
      L9_2[3] = L10_2
      L9_2 = L0_1
      L9_2 = L9_2.data
      L9_2 = L9_2.gameInfo
      L9_2 = L9_2.players
      L10_2 = {}
      L10_2.username = "Tiger"
      L11_2 = {}
      L12_2 = 104
      L13_2 = 0
      L14_2 = 0
      L15_2 = 0
      L16_2 = 0
      L17_2 = 0
      L18_2 = 0
      L11_2[1] = L12_2
      L11_2[2] = L13_2
      L11_2[3] = L14_2
      L11_2[4] = L15_2
      L11_2[5] = L16_2
      L11_2[6] = L17_2
      L11_2[7] = L18_2
      L10_2.avatar = L11_2
      L10_2.playerId = 3
      L9_2[4] = L10_2
    end
  end
  L9_2 = L0_1
  L9_2 = L9_2.onboarding
  L9_2 = L9_2.isActive
  if L9_2 == true then
    L9_2 = L0_1
    L9_2 = L9_2.onboarding
    L9_2 = L9_2.addGuiReference
    L10_2 = "jump"
    L11_2 = L7_1
    L9_2(L10_2, L11_2)
    L9_2 = L0_1
    L9_2 = L9_2.onboarding
    L9_2 = L9_2.addGuiReference
    L10_2 = "jump"
    L11_2 = L20_1
    L9_2(L10_2, L11_2)
    L9_2 = L0_1
    L9_2 = L9_2.onboarding
    L9_2 = L9_2.addGuiReference
    L10_2 = "powerUp"
    L11_2 = L11_1
    L9_2(L10_2, L11_2)
    L9_2 = L0_1
    L9_2 = L9_2.onboarding
    L9_2 = L9_2.addGuiReference
    L10_2 = "position"
    L11_2 = L17_1
    L9_2(L10_2, L11_2)
    L9_2 = L0_1
    L9_2 = L9_2.onboarding
    L9_2 = L9_2.addGuiReference
    L10_2 = "countdown"
    L11_2 = L15_1
    L9_2(L10_2, L11_2)
    L9_2 = L0_1
    L9_2 = L9_2.onboarding
    L9_2 = L9_2.addGuiReference
    L10_2 = "selfArrow"
    L11_2 = L23_1
    L9_2(L10_2, L11_2)
    L9_2 = L0_1
    L9_2 = L9_2.onboarding
    L9_2 = L9_2.addGuiReference
    L10_2 = "exit"
    L11_2 = L8_1
    L9_2(L10_2, L11_2)
  end
  L9_2 = L0_1
  L9_2 = L9_2.data
  L9_2 = L9_2.gameInfo
  L9_2 = L9_2.crazyModeActive
  if L9_2 then
    L9_2 = L0_1
    L9_2 = L9_2.data
    L9_2 = L9_2.gameInfo
    L9_2 = L9_2.crazyMode
    if L9_2 == 1 then
      L9_2 = L11_1
      L9_2.isVisible = false
    end
  end
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_1
    if L0_3 then
      L0_3 = L8_1
      L1_3 = L0_3
      L0_3 = L0_3.removeEventListener
      L2_3 = "touch"
      L3_3 = L8_1
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = nil
      L8_1 = L0_3
    end
  end
  
  L26_1 = L9_2
end

L3_1.create = L29_1

function L29_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2, L91_2, L92_2, L93_2, L94_2, L95_2, L96_2, L97_2, L98_2, L99_2, L100_2, L101_2, L102_2, L103_2, L104_2, L105_2, L106_2, L107_2, L108_2, L109_2, L110_2, L111_2, L112_2, L113_2, L114_2, L115_2, L116_2, L117_2, L118_2, L119_2, L120_2, L121_2, L122_2, L123_2, L124_2, L125_2, L126_2, L127_2, L128_2, L129_2, L130_2, L131_2, L132_2, L133_2, L134_2, L135_2, L136_2, L137_2, L138_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    return
  end
  L3_2 = A0_2.view
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L5_2 = require
  L6_2 = "lua.map.interface"
  L5_2 = L5_2(L6_2)
  L6_2 = require
  L7_2 = "physics"
  L6_2 = L6_2(L7_2)
  L7_2 = require
  L8_2 = "lua.gameLogic.powerUps"
  L7_2 = L7_2(L8_2)
  L8_2 = require
  L9_2 = "lua.gameLogic.player"
  L8_2 = L8_2(L9_2)
  L9_2 = require
  L10_2 = "lua.game.effects.fireworksHandler"
  L9_2 = L9_2(L10_2)
  L10_2 = false
  L11_2 = true
  L12_2 = true
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L18_2 = 3
  L19_2 = -1
  L20_2 = 12000
  L21_2 = 0
  L22_2 = 0
  L23_2 = 0
  L24_2 = 0
  L25_2 = {}
  L26_2 = 1
  L27_2 = 1
  L28_2 = 1
  L29_2 = 1
  L25_2[1] = L26_2
  L25_2[2] = L27_2
  L25_2[3] = L28_2
  L25_2[4] = L29_2
  L26_2 = {}
  L27_2 = 80
  L28_2 = 300
  L29_2 = {}
  L30_2 = {}
  L31_2 = nil
  L32_2 = nil
  L33_2 = nil
  L34_2 = nil
  L35_2 = nil
  L36_2 = nil
  L37_2 = nil
  L38_2 = nil
  L39_2 = nil
  L40_2 = nil
  L41_2 = nil
  L42_2 = nil
  L43_2 = nil
  L44_2 = nil
  L45_2 = L0_1
  L45_2 = L45_2.database
  L45_2 = L45_2.getPlayerInformation
  L45_2 = L45_2()
  L45_2 = L45_2.playerId
  L46_2 = false
  L47_2 = nil
  L48_2 = nil
  L49_2 = nil
  L50_2 = {}
  L51_2 = system
  L51_2 = L51_2.activate
  L52_2 = "multitouch"
  L51_2(L52_2)
  L51_2 = false
  L52_2 = system
  L52_2 = L52_2.getTimer
  L52_2 = L52_2()
  if not L52_2 then
    L52_2 = 0
  end
  L53_2 = {}
  L54_2 = 0
  L55_2 = L0_1
  L55_2 = L55_2.criticalFPS
  if not L55_2 then
    L55_2 = 0
  end
  L56_2 = math
  L56_2 = L56_2.round
  L57_2 = math
  L57_2 = L57_2.random
  L58_2 = math
  L58_2 = L58_2.abs
  L59_2 = math
  L59_2 = L59_2.floor
  
  function L60_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    if A1_3 then
      L2_3 = L0_1
      L2_3 = L2_3.audio
      L2_3 = L2_3.play
      L3_3 = A0_3
      L4_3 = {}
      L4_3.channel = A1_3
      L2_3(L3_3, L4_3)
    else
      L2_3 = L0_1
      L2_3 = L2_3.audio
      L2_3 = L2_3.play
      L3_3 = A0_3
      L2_3(L3_3)
    end
  end
  
  L61_2 = 0.9
  L62_2 = 0.7
  L63_2 = 0.4
  L64_2 = 0
  L65_2 = display
  L65_2 = L65_2.contentWidth
  L66_2 = display
  L66_2 = L66_2.contentWidth
  L66_2 = L66_2 * 2
  L67_2 = display
  L67_2 = L67_2.contentWidth
  L67_2 = L67_2 * 4
  
  function L68_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = L58_2
    L3_3 = A0_3 - A1_3
    L2_3 = L2_3(L3_3)
    L3_3 = L65_2
    if L2_3 < L3_3 then
      L3_3 = L61_2
      return L3_3
    end
    L3_3 = L66_2
    if L2_3 < L3_3 then
      L3_3 = L62_2
      return L3_3
    end
    L3_3 = L67_2
    if L2_3 < L3_3 then
      L3_3 = L63_2
      return L3_3
    end
    L3_3 = L64_2
    return L3_3
  end
  
  function L69_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3
    L2_3 = L0_1
    L2_3.mainPlayer = nil
    L2_3 = L0_1
    L2_3 = L2_3.data
    L2_3 = L2_3.gameInfo
    L2_3 = L2_3.players
    L3_3 = 1
    L4_3 = #L2_3
    L5_3 = 1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = L2_3[L6_3]
      L7_3 = L7_3.playerId
      if L7_3 ~= "" then
        L7_3 = false
        L8_3 = L2_3[L6_3]
        L8_3 = L8_3.playerId
        L9_3 = L45_2
        if L8_3 == L9_3 then
          L7_3 = true
        end
        L8_3 = L57_2
        L9_3 = 1
        L10_3 = 10
        L8_3 = L8_3(L9_3, L10_3)
        if L8_3 == 2 then
          L8_3 = 1
        elseif L8_3 == 8 then
          L8_3 = 6
        end
        L9_3 = L2_3[L6_3]
        L9_3 = L9_3.clanState
        L10_3 = L29_2
        L11_3 = L8_2
        L11_3 = L11_3.new
        L12_3 = L6_3
        L13_3 = L2_3[L6_3]
        L13_3 = L13_3.username
        L14_3 = L2_3[L6_3]
        L14_3 = L14_3.avatar
        L15_3 = L8_3
        L16_3 = L7_3
        L17_3 = L29_2
        L18_3 = L6_3 - 1
        L18_3 = L18_3 * 40
        L18_3 = A0_3 + L18_3
        L19_3 = A1_3
        L20_3 = L2_3[L6_3]
        L20_3 = L20_3.customPowerUps
        L21_3 = L25_1
        L22_3 = L9_3
        L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
        L10_3[L6_3] = L11_3
        L10_3 = L29_2
        L10_3 = L10_3[L6_3]
        L10_3 = L10_3.addPlaySoundFunction
        L11_3 = L60_2
        L10_3(L11_3)
        L10_3 = L29_2
        L10_3 = L10_3[L6_3]
        L11_3 = L2_3[L6_3]
        L11_3 = L11_3.playerId
        L10_3.playerId = L11_3
        L10_3 = L29_2
        L10_3 = L10_3[L6_3]
        L11_3 = L2_3[L6_3]
        L11_3 = L11_3.level
        L10_3.level = L11_3
        if L7_3 then
          L10_3 = L0_1
          L11_3 = L29_2
          L11_3 = L11_3[L6_3]
          L10_3.mainPlayer = L11_3
        end
        L10_3 = L13_1
        L11_3 = L10_3
        L10_3 = L10_3.insert
        L12_3 = L29_2
        L12_3 = L12_3[L6_3]
        L12_3 = L12_3.getBodyPartsGroup
        L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3 = L12_3()
        L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
        L10_3 = L13_1
        L11_3 = L10_3
        L10_3 = L10_3.insert
        L12_3 = L29_2
        L12_3 = L12_3[L6_3]
        L10_3(L11_3, L12_3)
        L10_3 = L13_1
        L11_3 = L10_3
        L10_3 = L10_3.insert
        L12_3 = L29_2
        L12_3 = L12_3[L6_3]
        L12_3 = L12_3.getGhostGroup
        L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3 = L12_3()
        L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
        L10_3 = L3_2
        L11_3 = L10_3
        L10_3 = L10_3.insert
        L12_3 = L29_2
        L12_3 = L12_3[L6_3]
        L12_3 = L12_3.getScreenGroup
        L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3 = L12_3()
        L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
      end
    end
    L3_3 = L0_1
    L3_3 = L3_3.data
    L3_3 = L3_3.gameInfo
    L3_3 = L3_3.gameType
    if L3_3 == 0 then
      L3_3 = false
      L11_2 = L3_3
    end
  end
  
  function L70_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L23_1
    L0_3.alpha = 1
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L23_1
    L2_3 = {}
    L2_3.time = 300
    L2_3.xScale = 3
    L2_3.yScale = 3
    L3_3 = easing
    L3_3 = L3_3.outBack
    L2_3.transition = L3_3
    L2_3.tag = "selfArrowTransition"
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L23_1
    L2_3 = {}
    L2_3.time = 300
    L2_3.delay = 400
    L2_3.y = 160
    L2_3.xScale = 1
    L2_3.yScale = 1
    L3_3 = easing
    L3_3 = L3_3.outBounce
    L2_3.transition = L3_3
    L2_3.tag = "selfArrowTransition"
    L0_3(L1_3, L2_3)
  end
  
  function L71_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L50_2
    if L0_3 then
      L0_3 = 1
      L1_3 = L50_2
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L50_2
        L4_3 = L4_3[L3_3]
        if L4_3 then
          L5_3 = transition
          L5_3 = L5_3.cancel
          L6_3 = L4_3
          L5_3(L6_3)
        end
      end
    end
  end
  
  function L72_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = L50_2
    if L0_3 then
      L0_3 = 1
      L1_3 = L50_2
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L50_2
        L4_3 = L4_3[L3_3]
        if L4_3 then
          L5_3 = transition
          L5_3 = L5_3.cancel
          L6_3 = L4_3
          L5_3(L6_3)
          L5_3 = L57_2
          L6_3 = -150
          L7_3 = 150
          L5_3 = L5_3(L6_3, L7_3)
          L6_3 = -200
          L7_3 = transition
          L7_3 = L7_3.to
          L8_3 = L4_3
          L9_3 = {}
          L9_3.time = 1200
          L9_3.delta = true
          L9_3.x = L5_3
          L9_3.y = L6_3
          L10_3 = easing
          L10_3 = L10_3.linear
          L9_3.transition = L10_3
          L7_3(L8_3, L9_3)
          L7_3 = transition
          L7_3 = L7_3.to
          L8_3 = L4_3
          L9_3 = {}
          L9_3.time = 200
          L9_3.delay = 1000
          L9_3.alpha = 0
          L10_3 = L71_2
          L9_3.onComplete = L10_3
          L7_3(L8_3, L9_3)
          L8_3 = L4_3
          L7_3 = L4_3.setSequence
          L9_3 = "fast"
          L7_3(L8_3, L9_3)
          L8_3 = L4_3
          L7_3 = L4_3.play
          L7_3(L8_3)
        end
      end
    end
  end
  
  function L73_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L2_3 = {}
    L2_3.name = "animate"
    L2_3.start = 1
    L2_3.count = 4
    L2_3.time = 200
    L2_3.loopCount = -1
    
    function L3_3(A0_4, A1_4)
      local L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
      L2_4 = L57_2
      L3_4 = -30
      L4_4 = 30
      L2_4 = L2_4(L3_4, L4_4)
      L3_4 = nil
      L4_4 = A0_4.y
      L5_4 = A1_3
      L5_4 = L5_4 + 15
      if L4_4 > L5_4 then
        L4_4 = L57_2
        L5_4 = -5
        L6_4 = 0
        L4_4 = L4_4(L5_4, L6_4)
        L3_4 = L4_4
      else
        L4_4 = L57_2
        L5_4 = -5
        L6_4 = 5
        L4_4 = L4_4(L5_4, L6_4)
        L3_4 = L4_4
      end
      L4_4 = 25
      if L2_4 < 0 then
        L4_4 = -25
      end
      L5_4 = transition
      L5_4 = L5_4.to
      L6_4 = A0_4
      L7_4 = {}
      L7_4.time = A1_4
      L7_4.rotation = L4_4
      L8_4 = easing
      L8_4 = L8_4.linear
      L7_4.transition = L8_4
      L5_4(L6_4, L7_4)
      L5_4 = transition
      L5_4 = L5_4.to
      L6_4 = A0_4
      L7_4 = {}
      L7_4.time = A1_4
      L7_4.delta = true
      L7_4.x = L2_4
      L7_4.y = L3_4
      L8_4 = easing
      L8_4 = L8_4.linear
      L7_4.transition = L8_4
      
      function L8_4()
        local L0_5, L1_5, L2_5, L3_5, L4_5
        L0_5 = L3_3
        L1_5 = A0_4
        L2_5 = L57_2
        L3_5 = 0
        L4_5 = 500
        L2_5 = L2_5(L3_5, L4_5)
        L2_5 = 500 + L2_5
        L0_5(L1_5, L2_5)
      end
      
      L7_4.onComplete = L8_4
      L5_4(L6_4, L7_4)
    end
    
    function L4_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      L1_4 = L3_3
      L2_4 = A0_4
      L3_4 = L57_2
      L4_4 = 0
      L5_4 = 500
      L3_4 = L3_4(L4_4, L5_4)
      L3_4 = 500 + L3_4
      L1_4(L2_4, L3_4)
    end
    
    function L5_3(A0_4, A1_4)
      local L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
      L2_4 = "a1"
      L3_4 = L57_2
      L4_4 = 1
      L5_4 = 3
      L3_4 = L3_4(L4_4, L5_4)
      if L3_4 == 2 then
        L2_4 = "b1"
      elseif L3_4 == 3 then
        L2_4 = "c1"
      end
      L4_4 = L0_1
      L4_4 = L4_4.powerUpEffectImageSheetInfo
      L5_4 = L4_4
      L4_4 = L4_4.getFrameIndex
      L6_4 = L2_4
      L4_4 = L4_4(L5_4, L6_4)
      L5_4 = {}
      L6_4 = {}
      L6_4.name = "normal"
      L6_4.start = L4_4
      L6_4.count = 8
      L6_4.time = 350
      L6_4.loopCount = 0
      L7_4 = {}
      L7_4.name = "fast"
      L7_4.start = L4_4
      L7_4.count = 8
      L7_4.time = 75
      L7_4.loopCount = 0
      L5_4[1] = L6_4
      L5_4[2] = L7_4
      L6_4 = display
      L6_4 = L6_4.newSprite
      L7_4 = L0_1
      L7_4 = L7_4.powerUpEffectImageSheet
      L8_4 = L5_4
      L6_4 = L6_4(L7_4, L8_4)
      L7_4 = L57_2
      L8_4 = 0
      L9_4 = 0.25
      L7_4 = L7_4(L8_4, L9_4)
      L7_4 = 0.5 + L7_4
      L6_4.xScale = L7_4
      L7_4 = L57_2
      L8_4 = 0
      L9_4 = 0.25
      L7_4 = L7_4(L8_4, L9_4)
      L7_4 = 0.5 + L7_4
      L6_4.yScale = L7_4
      L7_4 = L57_2
      L8_4 = 0
      L9_4 = 125
      L7_4 = L7_4(L8_4, L9_4)
      L7_4 = A0_4 + L7_4
      L6_4.x = L7_4
      L7_4 = L57_2
      L8_4 = -25
      L9_4 = 25
      L7_4 = L7_4(L8_4, L9_4)
      L7_4 = A1_4 - L7_4
      L6_4.y = L7_4
      L7_4 = L4_3
      L8_4 = L6_4
      L7_4(L8_4)
      L8_4 = L6_4
      L7_4 = L6_4.setSequence
      L9_4 = "normal"
      L7_4(L8_4, L9_4)
      L8_4 = L6_4
      L7_4 = L6_4.play
      L7_4(L8_4)
      return L6_4
    end
    
    L6_3 = 1
    L7_3 = 6
    L8_3 = 1
    for L9_3 = L6_3, L7_3, L8_3 do
      L10_3 = L50_2
      L11_3 = L50_2
      L11_3 = #L11_3
      L11_3 = L11_3 + 1
      L12_3 = L5_3
      L13_3 = L9_3 - 1
      L13_3 = L13_3 * 5
      L13_3 = A0_3 + L13_3
      L14_3 = A1_3
      L12_3 = L12_3(L13_3, L14_3)
      L10_3[L11_3] = L12_3
      L10_3 = L9_3 % 2
      if L10_3 == 0 then
        L10_3 = L14_1
        L11_3 = L10_3
        L10_3 = L10_3.insert
        L12_3 = L50_2
        L13_3 = L50_2
        L13_3 = #L13_3
        L12_3 = L12_3[L13_3]
        L10_3(L11_3, L12_3)
      else
        L10_3 = L13_1
        L11_3 = L10_3
        L10_3 = L10_3.insert
        L12_3 = L50_2
        L13_3 = L50_2
        L13_3 = #L13_3
        L12_3 = L12_3[L13_3]
        L10_3(L11_3, L12_3)
      end
    end
  end
  
  function L74_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    if A0_3 == 0 then
      L3_3 = display
      L3_3 = L3_3.newImageRect
      L4_3 = "images/transparent.png"
      L5_3 = A1_3
      L6_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L3_3
    elseif A0_3 == 1 then
      L3_3 = display
      L3_3 = L3_3.newImageRect
      L4_3 = "images/game/powerups/icons/sawblade.png"
      L5_3 = A1_3
      L6_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L3_3
    elseif A0_3 == 2 then
      L3_3 = display
      L3_3 = L3_3.newImageRect
      L4_3 = "images/game/powerups/icons/beartrap.png"
      L5_3 = A1_3
      L6_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L3_3
    elseif A0_3 == 3 then
      L3_3 = display
      L3_3 = L3_3.newImageRect
      L4_3 = "images/game/powerups/icons/lightning.png"
      L5_3 = A1_3
      L6_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L3_3
    elseif A0_3 == 4 then
      L3_3 = display
      L3_3 = L3_3.newImageRect
      L4_3 = "images/game/powerups/icons/speed.png"
      L5_3 = A1_3
      L6_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L3_3
    elseif A0_3 == 5 then
      L3_3 = display
      L3_3 = L3_3.newImageRect
      L4_3 = "images/game/powerups/icons/shield.png"
      L5_3 = A1_3
      L6_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L3_3
    elseif A0_3 == 6 then
      L3_3 = display
      L3_3 = L3_3.newImageRect
      L4_3 = "images/game/powerups/icons/sacrifice.png"
      L5_3 = A1_3
      L6_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L3_3
    elseif A0_3 == 7 then
      L3_3 = display
      L3_3 = L3_3.newImageRect
      L4_3 = "images/game/powerups/icons/magnet.png"
      L5_3 = A1_3
      L6_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L3_3
    elseif A0_3 == 8 then
      L3_3 = display
      L3_3 = L3_3.newImageRect
      L4_3 = "images/game/powerups/icons/punchbox.png"
      L5_3 = A1_3
      L6_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L3_3
    elseif A0_3 == 9 then
      L3_3 = display
      L3_3 = L3_3.newImageRect
      L4_3 = "images/game/powerups/icons/mark.png"
      L5_3 = A1_3
      L6_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L3_3
    elseif A0_3 == 10 then
      L3_3 = display
      L3_3 = L3_3.newImageRect
      L4_3 = "images/game/powerups/icons/rocket.png"
      L5_3 = A1_3
      L6_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L3_3
    elseif A0_3 == 11 then
      L3_3 = display
      L3_3 = L3_3.newImageRect
      L4_3 = "images/game/powerups/icons/teleport.png"
      L5_3 = A1_3
      L6_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L3_3
    elseif A0_3 == 97 then
      L3_3 = display
      L3_3 = L3_3.newImageRect
      L4_3 = "images/game/powerups/icons/sawblade.png"
      L5_3 = A1_3
      L6_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L3_3
    elseif A0_3 == 98 then
      L3_3 = display
      L3_3 = L3_3.newImageRect
      L4_3 = "images/game/powerups/icons/sawblade.png"
      L5_3 = A1_3
      L6_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L3_3
    elseif A0_3 == 99 then
      L3_3 = display
      L3_3 = L3_3.newImageRect
      L4_3 = "images/game/powerups/icons/mapIcon.png"
      L5_3 = A1_3
      L6_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L3_3
    end
    return L2_3
  end
  
  function L75_2()
    local L0_3, L1_3, L2_3
    L0_3 = L44_2
    if L0_3 then
      L0_3 = L44_2
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      L44_2 = L0_3
      L0_3 = false
      L16_2 = L0_3
    end
    L0_3 = L6_1
    L0_3.alpha = 1
    L0_3 = L6_1
    L1_3 = L0_3
    L0_3 = L0_3.setSequence
    L2_3 = "close"
    L0_3(L1_3, L2_3)
    L0_3 = L6_1
    L1_3 = L0_3
    L0_3 = L0_3.play
    L0_3(L1_3)
  end
  
  function L76_2()
    local L0_3, L1_3
    L0_3 = L6_1
    if L0_3 then
      L0_3 = L6_1
      L0_3 = L0_3.alpha
      if L0_3 then
        L0_3 = L6_1
        L0_3.alpha = 0
      end
    end
  end
  
  function L77_2()
    local L0_3, L1_3
    L0_3 = L9_1
    if L0_3 then
      L0_3 = L9_1
      L0_3 = L0_3.alpha
      if L0_3 then
        L0_3 = L9_1
        L0_3.alpha = 0
      end
    end
  end
  
  function L78_2()
    local L0_3, L1_3, L2_3
    L0_3 = L6_1
    L0_3 = L0_3.alpha
    if L0_3 == 0 then
      L0_3 = L9_1
      L0_3.alpha = 1
      L0_3 = L9_1
      L1_3 = L0_3
      L0_3 = L0_3.setSequence
      L2_3 = "normal"
      L0_3(L1_3, L2_3)
      L0_3 = L9_1
      L1_3 = L0_3
      L0_3 = L0_3.play
      L0_3(L1_3)
      L0_3 = timer
      L0_3 = L0_3.performWithDelay
      L1_3 = 200
      L2_3 = L77_2
      L0_3(L1_3, L2_3)
    end
  end
  
  function L79_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L44_2
    if L1_3 then
      L1_3 = L44_2
      L2_3 = L1_3
      L1_3 = L1_3.removeSelf
      L1_3(L2_3)
      L1_3 = nil
      L44_2 = L1_3
    end
    if 50 < A0_3 then
      A0_3 = A0_3 - 50
    end
    L1_3 = L74_2
    L2_3 = A0_3
    L3_3 = 60
    L1_3 = L1_3(L2_3, L3_3)
    L44_2 = L1_3
    L1_3 = L44_2
    L1_3.x = 28
    L1_3 = L44_2
    L2_3 = display
    L2_3 = L2_3.contentHeight
    L2_3 = L2_3 - 30
    L1_3.y = L2_3
    L1_3 = L11_1
    L2_3 = L1_3
    L1_3 = L1_3.insert
    L3_3 = L44_2
    L1_3(L2_3, L3_3)
    L1_3 = true
    L16_2 = L1_3
    L1_3 = L6_1
    L2_3 = L1_3
    L1_3 = L1_3.setSequence
    L3_3 = "gotPU"
    L1_3(L2_3, L3_3)
    L1_3 = L6_1
    L2_3 = L1_3
    L1_3 = L1_3.play
    L1_3(L2_3)
    L1_3 = timer
    L1_3 = L1_3.performWithDelay
    L2_3 = 80
    L3_3 = L76_2
    L1_3(L2_3, L3_3)
  end
  
  function L80_2(A0_3)
    local L1_3, L2_3
    L1_3 = L79_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  
  function L81_2()
    local L0_3, L1_3
    L0_3 = L31_2
    L0_3 = L0_3.ninjaMark
    if L0_3 then
      L0_3 = L22_1
      L0_3.alpha = 1
    else
      L0_3 = L22_1
      L0_3.alpha = 0
    end
  end
  
  function L82_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L26_2
    L1_3 = L1_3[A0_3]
    L2_3 = L29_2
    L2_3 = L2_3[A0_3]
    L2_3 = L2_3.x
    L3_3 = L5_2
    L3_3 = L3_3.getLength
    L3_3 = L3_3()
    L3_3 = L3_3 - 10
    L2_3 = L2_3 / L3_3
    L3_3 = L28_2
    L2_3 = L2_3 * L3_3
    L3_3 = L27_2
    L2_3 = L2_3 + L3_3
    L1_3.x = L2_3
  end
  
  function L83_2(A0_3)
    local L1_3, L2_3
    L1_3 = L17_1
    L1_3 = L1_3.text
    if A0_3 ~= L1_3 then
      L1_3 = L18_1
      if L1_3 then
        L1_3 = L17_1
        L2_3 = L18_1
        L2_3 = L2_3[A0_3]
        L1_3.text = L2_3
      end
    end
  end
  
  function L84_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = L13_2
      if not L1_3 then
        L2_3 = A0_3
        L1_3 = A0_3.removeSelf
        L1_3(L2_3)
        A0_3 = nil
      end
    end
  end
  
  function L85_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L3_3 = L29_2
    if L3_3 then
      L3_3 = L13_2
      if not L3_3 then
        L3_3 = nil
        if A0_3 == 98 then
          L3_3 = "Level"
        else
          L4_3 = L29_2
          L4_3 = L4_3[A0_3]
          L4_3 = L4_3.getUsername
          L4_3 = L4_3()
          L3_3 = L4_3
        end
        L4_3 = L29_2
        L4_3 = L4_3[A2_3]
        L4_3 = L4_3.getUsername
        L4_3 = L4_3()
        L5_3 = 6000
        if A1_3 == 7 or A1_3 == 99 then
          L4_3 = ""
        end
        L6_3 = L0_1
        L6_3 = L6_3.newText
        L7_3 = {}
        L7_3.string = L4_3
        L7_3.size = 21
        L8_3 = {}
        L9_3 = 1
        L10_3 = 1
        L11_3 = 1
        L8_3[1] = L9_3
        L8_3[2] = L10_3
        L8_3[3] = L11_3
        L7_3.color = L8_3
        L6_3 = L6_3(L7_3)
        L6_3.anchorX = 1
        L6_3.anchorY = 0
        L7_3 = display
        L7_3 = L7_3.contentWidth
        L7_3 = L7_3 * 0.99
        L6_3.x = L7_3
        L7_3 = L30_2
        L7_3 = #L7_3
        L7_3 = L7_3 / 3
        L7_3 = L7_3 + 1
        L8_3 = display
        L8_3 = L8_3.contentHeight
        L7_3 = L7_3 * L8_3
        L7_3 = L7_3 * 0.05
        L7_3 = 0 - L7_3
        L6_3.y = L7_3
        
        function L7_3(A0_4)
          local L1_4, L2_4
          L1_4 = L84_2
          L2_4 = L6_3
          return L1_4(L2_4)
        end
        
        L8_3 = timer
        L8_3 = L8_3.performWithDelay
        L9_3 = L5_3
        L10_3 = L7_3
        L11_3 = 1
        L8_3(L9_3, L10_3, L11_3)
        L8_3 = L74_2
        L9_3 = A1_3
        L10_3 = 26
        L8_3 = L8_3(L9_3, L10_3)
        L8_3.anchorX = 1
        L8_3.anchorY = 0
        L9_3 = L6_3.x
        L10_3 = L6_3.width
        L9_3 = L9_3 - L10_3
        L8_3.x = L9_3
        L9_3 = L30_2
        L9_3 = #L9_3
        L9_3 = L9_3 / 3
        L9_3 = L9_3 + 1
        L10_3 = display
        L10_3 = L10_3.contentHeight
        L9_3 = L9_3 * L10_3
        L9_3 = L9_3 * 0.05
        L9_3 = 2 - L9_3
        L8_3.y = L9_3
        
        function L9_3(A0_4)
          local L1_4, L2_4
          L1_4 = L84_2
          L2_4 = L8_3
          return L1_4(L2_4)
        end
        
        L10_3 = timer
        L10_3 = L10_3.performWithDelay
        L11_3 = L5_3
        L12_3 = L9_3
        L13_3 = 1
        L10_3(L11_3, L12_3, L13_3)
        L10_3 = L0_1
        L10_3 = L10_3.newText
        L11_3 = {}
        L11_3.string = L3_3
        L11_3.size = 21
        L12_3 = {}
        L13_3 = 1
        L14_3 = 1
        L15_3 = 1
        L12_3[1] = L13_3
        L12_3[2] = L14_3
        L12_3[3] = L15_3
        L11_3.color = L12_3
        L10_3 = L10_3(L11_3)
        L10_3.anchorX = 1
        L10_3.anchorY = 0
        L11_3 = L8_3.x
        L12_3 = L8_3.width
        L11_3 = L11_3 - L12_3
        L10_3.x = L11_3
        L11_3 = L30_2
        L11_3 = #L11_3
        L11_3 = L11_3 / 3
        L11_3 = L11_3 + 1
        L12_3 = display
        L12_3 = L12_3.contentHeight
        L11_3 = L11_3 * L12_3
        L11_3 = L11_3 * 0.05
        L11_3 = 0 - L11_3
        L10_3.y = L11_3
        
        function L11_3(A0_4)
          local L1_4, L2_4
          L1_4 = L84_2
          L2_4 = L10_3
          return L1_4(L2_4)
        end
        
        L12_3 = timer
        L12_3 = L12_3.performWithDelay
        L13_3 = L5_3
        L14_3 = L11_3
        L15_3 = 1
        L12_3(L13_3, L14_3, L15_3)
        L12_3 = L30_2
        L13_3 = L30_2
        L13_3 = #L13_3
        L13_3 = L13_3 + 1
        L12_3[L13_3] = 1
        L12_3 = L30_2
        L13_3 = L30_2
        L13_3 = #L13_3
        L13_3 = L13_3 + 1
        L12_3[L13_3] = 1
        L12_3 = L30_2
        L13_3 = L30_2
        L13_3 = #L13_3
        L13_3 = L13_3 + 1
        L12_3[L13_3] = 1
        L12_3 = L4_2
        L13_3 = L12_3
        L12_3 = L12_3.insert
        L14_3 = L6_3
        L12_3(L13_3, L14_3)
        L12_3 = L4_2
        L13_3 = L12_3
        L12_3 = L12_3.insert
        L14_3 = L8_3
        L12_3(L13_3, L14_3)
        L12_3 = L4_2
        L13_3 = L12_3
        L12_3 = L12_3.insert
        L14_3 = L10_3
        L12_3(L13_3, L14_3)
        L12_3 = L12_1
        L13_3 = L12_3
        L12_3 = L12_3.insert
        L14_3 = L4_2
        L12_3(L13_3, L14_3)
      end
    end
  end
  
  function L86_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L3_3 = 200
    L4_3 = L4_2
    L4_3 = L4_3.y
    L5_3 = display
    L5_3 = L5_3.contentHeight
    L5_3 = L5_3 * 0.05
    L4_3 = L4_3 + L5_3
    L5_3 = L4_2
    L5_3.y = L4_3
    
    function L5_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L85_2
      L2_4 = A0_3
      L3_4 = A1_3
      L4_4 = A2_3
      return L1_4(L2_4, L3_4, L4_4)
    end
    
    L6_3 = timer
    L6_3 = L6_3.performWithDelay
    L7_3 = L3_3
    L8_3 = L5_3
    L9_3 = 1
    L6_3(L7_3, L8_3, L9_3)
  end
  
  L87_2 = L0_1
  
  function L88_2(A0_3, A1_3)
    local L2_3
    L2_3 = L31_2
    if not L2_3 then
      L2_3 = false
      return L2_3
    end
    L2_3 = L31_2
    L2_3 = L2_3.x
    L2_3 = L2_3 - 400
    if A0_3 < L2_3 then
      L2_3 = false
      return L2_3
    else
      L2_3 = L31_2
      L2_3 = L2_3.x
      L2_3 = L2_3 + 580
      if A0_3 > L2_3 then
        L2_3 = false
        return L2_3
      else
        L2_3 = true
        return L2_3
      end
    end
  end
  
  L87_2.isOnScreen = L88_2
  
  function L87_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L0_1
    L1_3 = L1_3.isOnScreen
    L2_3 = L29_2
    L2_3 = L2_3[A0_3]
    L2_3 = L2_3.x
    L3_3 = L29_2
    L3_3 = L3_3[A0_3]
    L3_3 = L3_3.y
    return L1_3(L2_3, L3_3)
  end
  
  function L88_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = L0_1
    L2_3 = L2_3.culler
    if L2_3 then
      L2_3 = L0_1
      L2_3 = L2_3.culler
      L2_3 = L2_3.columnMaps
      if L2_3 and 0 <= A0_3 then
        L2_3 = L0_1
        L2_3 = L2_3.culler
        L2_3 = L2_3.columnMaps
        L2_3 = L2_3[A0_3]
        if L2_3 then
          L3_3 = 1
          L4_3 = #L2_3
          L5_3 = 1
          for L6_3 = L3_3, L4_3, L5_3 do
            L7_3 = L2_3[L6_3]
            if L7_3 then
              L8_3 = L7_3.image
              if L8_3 then
                L8_3 = L7_3.tileId
                if L8_3 ~= 113 then
                  L8_3 = L7_3.image
                  L8_3.isVisible = A1_3
                end
              end
              L8_3 = L7_3.animation
              if L8_3 then
                L8_3 = L7_3.animation
                L8_3.isVisible = A1_3
              end
            end
          end
        end
      end
    end
  end
  
  function L89_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = L0_1
    L1_3 = L1_3.culler
    if L1_3 then
      L1_3 = L0_1
      L1_3 = L1_3.culler
      L1_3 = L1_3.columnMaps
      if L1_3 then
        L1_3 = L0_1
        L1_3 = L1_3.culler
        L1_3 = L1_3.minTileX
        if L1_3 then
          L1_3 = L0_1
          L1_3 = L1_3.culler
          L1_3 = L1_3.minTileX
          L2_3 = L0_1
          L2_3 = L2_3.culler
          L2_3 = L2_3.maxTileX
          L3_3 = L56_2
          L4_3 = A0_3 / 80
          L4_3 = L4_3 + 0
          L3_3 = L3_3(L4_3)
          L4_3 = L56_2
          L5_3 = A0_3 / 80
          L5_3 = L5_3 + 6
          L4_3 = L4_3(L5_3)
          if L1_3 ~= L3_3 then
            L5_3 = L3_3 - L1_3
            if 0 < L5_3 then
              L6_3 = 1
              L7_3 = L5_3
              L8_3 = 1
              for L9_3 = L6_3, L7_3, L8_3 do
                L10_3 = L88_2
                L11_3 = L1_3 - L9_3
                L12_3 = false
                L10_3(L11_3, L12_3)
              end
            else
              L6_3 = 1
              L7_3 = L58_2
              L8_3 = L5_3 - 2
              L7_3 = L7_3(L8_3)
              L8_3 = 1
              for L9_3 = L6_3, L7_3, L8_3 do
                L10_3 = L88_2
                L11_3 = L1_3 - L9_3
                L12_3 = true
                L10_3(L11_3, L12_3)
              end
            end
            L6_3 = L0_1
            L6_3 = L6_3.culler
            L6_3.minTileX = L3_3
          end
          if L2_3 ~= L4_3 then
            L5_3 = L0_1
            L5_3 = L5_3.culler
            L5_3.maxTileX = L4_3
            L5_3 = L4_3 - L2_3
            if 0 < L5_3 then
              L6_3 = 1
              L7_3 = L5_3
              L8_3 = 1
              for L9_3 = L6_3, L7_3, L8_3 do
                L10_3 = L88_2
                L11_3 = L2_3 + L9_3
                L12_3 = true
                L10_3(L11_3, L12_3)
              end
            end
          end
        end
      end
    end
  end
  
  function L90_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = L0_1
    L1_3 = L1_3.culler
    if L1_3 then
      L1_3 = L0_1
      L1_3 = L1_3.culler
      L1_3 = L1_3.columnMaps
      if L1_3 then
        L1_3 = L56_2
        L2_3 = A0_3 / 80
        L2_3 = L2_3 - 4
        L1_3 = L1_3(L2_3)
        L2_3 = L56_2
        L3_3 = A0_3 / 80
        L3_3 = L3_3 + 6
        L2_3 = L2_3(L3_3)
        L3_3 = L0_1
        L3_3 = L3_3.onboarding
        L3_3 = L3_3.isActive
        if L3_3 == true then
          L3_3 = L56_2
          L4_3 = A0_3 / 80
          L4_3 = L4_3 - 5
          L3_3 = L3_3(L4_3)
          L1_3 = L3_3
          L3_3 = L56_2
          L4_3 = A0_3 / 80
          L4_3 = L4_3 + 20
          L3_3 = L3_3(L4_3)
          L2_3 = L3_3
        end
        L3_3 = L0_1
        L3_3 = L3_3.culler
        L3_3.minTileX = L1_3
        L3_3 = L0_1
        L3_3 = L3_3.culler
        L3_3.maxTileX = L2_3
        L3_3 = L2_3 - L1_3
        L4_3 = 1
        L5_3 = L3_3
        L6_3 = 1
        for L7_3 = L4_3, L5_3, L6_3 do
          L8_3 = L88_2
          L9_3 = L1_3 + L7_3
          L10_3 = true
          L8_3(L9_3, L10_3)
        end
      end
    end
  end
  
  function L91_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = system
    L0_3 = L0_3.getTimer
    L0_3 = L0_3()
    L1_3 = L54_2
    L1_3 = L1_3 + 1
    L54_2 = L1_3
    L1_3 = L52_2
    L1_3 = L0_3 - L1_3
    if 1000 < L1_3 then
      L52_2 = L0_3
      L1_3 = L53_2
      L2_3 = L53_2
      L2_3 = #L2_3
      L2_3 = L2_3 + 1
      L3_3 = L54_2
      L1_3[L2_3] = L3_3
      L1_3 = 0
      L54_2 = L1_3
    end
  end
  
  function L92_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = L0_1
    L1_3 = L1_3.debugger
    L1_3 = L1_3.logFPS
    L1_3()
    L1_3 = L0_1
    L1_3 = L1_3.debugger
    L1_3 = L1_3.logMemUsage
    L1_3()
    L1_3 = L0_1
    L1_3 = L1_3.debugger
    L1_3 = L1_3.profile
    L2_3 = "gameLoop"
    L1_3(L2_3)
    L1_3 = L13_2
    if not L1_3 then
      L1_3 = L31_2
      if L1_3 then
        L1_3 = true
        L2_3 = true
        L3_3 = L0_1
        L3_3 = L3_3.onboarding
        L3_3 = L3_3.isActive
        if L3_3 == true then
          L3_3 = L0_1
          L3_3 = L3_3.onboarding
          L3_3 = L3_3.disableCameraX
          L4_3 = L31_2
          L4_3 = L4_3.x
          L3_3 = L3_3(L4_3)
          if L3_3 then
            L1_3 = false
          end
        end
        if not L1_3 then
          L3_3 = L0_1
          L3_3 = L3_3.onboarding
          L3_3 = L3_3.shouldSetStartCamera
          L3_3 = L3_3()
          if L3_3 then
            L1_3 = true
          end
        end
        if not L1_3 then
          L3_3 = L0_1
          L3_3 = L3_3.onboarding
          L3_3 = L3_3.disableCameraY
          L4_3 = L31_2
          L4_3 = L4_3.x
          L3_3 = L3_3(L4_3)
          L2_3 = not L3_3
        end
        if L1_3 then
          L3_3 = L5_2
          L3_3 = L3_3.updateBackgrounds
          L4_3 = L31_2
          L4_3 = L4_3.x
          L4_3 = -L4_3
          L5_3 = L31_2
          L5_3 = L5_3.y
          L5_3 = -L5_3
          L3_3(L4_3, L5_3)
          L3_3 = L13_1
          L4_3 = L31_2
          L4_3 = L4_3.x
          L4_3 = -L4_3
          L4_3 = L4_3 + 150
          L3_3.x = L4_3
          L3_3 = L14_1
          L4_3 = L31_2
          L4_3 = L4_3.x
          L4_3 = -L4_3
          L4_3 = L4_3 + 150
          L3_3.x = L4_3
          L3_3 = L89_2
          L4_3 = L31_2
          L4_3 = L4_3.x
          L3_3(L4_3)
        end
        if L2_3 then
          L3_3 = L13_1
          L4_3 = L31_2
          L4_3 = L4_3.y
          L4_3 = -L4_3
          L4_3 = L4_3 + 204
          L3_3.y = L4_3
          L3_3 = L14_1
          L4_3 = L31_2
          L4_3 = L4_3.y
          L4_3 = -L4_3
          L4_3 = L4_3 + 204
          L3_3.y = L4_3
        end
        L3_3 = L10_2
        if L3_3 then
          L3_3 = L0_1
          L3_3 = L3_3.onboarding
          L3_3 = L3_3.isActive
          if L3_3 == true then
            L3_3 = L0_1
            L3_3 = L3_3.onboarding
            L3_3 = L3_3.ingameUpdate
            L3_3()
          end
          L3_3 = L29_2
          if L3_3 then
            L3_3 = 1
            L4_3 = L29_2
            L4_3 = #L4_3
            L5_3 = 1
            for L6_3 = L3_3, L4_3, L5_3 do
              L7_3 = L87_2
              L8_3 = L6_3
              L7_3 = L7_3(L8_3)
              if L7_3 then
                L7_3 = L29_2
                L7_3 = L7_3[L6_3]
                L7_3 = L7_3.show
                L7_3()
                L7_3 = L29_2
                L7_3 = L7_3[L6_3]
                L7_3 = L7_3.interpolation
                L7_3()
                L7_3 = L29_2
                L7_3 = L7_3[L6_3]
                L7_3 = L7_3.calculateRotation
                L7_3()
              else
                L7_3 = L29_2
                L7_3 = L7_3[L6_3]
                L7_3 = L7_3.hide
                L7_3()
                L7_3 = L29_2
                L7_3 = L7_3[L6_3]
                L7_3 = L7_3.forcePlayer
                L7_3()
              end
              L7_3 = L29_2
              L7_3 = L7_3[L6_3]
              L7_3 = L7_3.updateEffects
              L7_3()
            end
          end
        end
      end
    end
    L1_3 = L0_1
    L1_3 = L1_3.debugger
    L1_3 = L1_3.profile
    L2_3 = "gameLoop"
    L1_3(L2_3)
    L1_3 = L51_2
    if L1_3 then
      L1_3 = L91_2
      L1_3()
    end
  end
  
  function L93_2()
    local L0_3, L1_3
    L0_3 = L13_2
    if not L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.onboarding
      L0_3 = L0_3.isActive
      if L0_3 == true then
        L0_3 = L0_1
        L0_3 = L0_3.onboarding
        L0_3 = L0_3.stepDone
        L0_3()
      else
        L0_3 = L0_1
        L0_3 = L0_3.gotoScene
        L1_3 = "lua.scenes.postLobby"
        L0_3(L1_3)
      end
    end
  end
  
  function L94_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L1_3 = L13_2
    if not L1_3 then
      L1_3 = L17_2
      if not L1_3 then
        L1_3 = 0
        L2_3 = 1
        L3_3 = {}
        L4_3 = 1
        L5_3 = L29_2
        L5_3 = #L5_3
        L6_3 = 1
        for L7_3 = L4_3, L5_3, L6_3 do
          L8_3 = L29_2
          L8_3 = L8_3[L7_3]
          L8_3 = L8_3.getPlayerGoalTime
          L8_3 = L8_3()
          if L8_3 == -2 then
            L8_3 = 9999999999
          end
          L9_3 = L29_2
          L9_3 = L9_3[L7_3]
          L9_3 = L9_3.getUsername
          L9_3 = L9_3()
          L10_3 = L29_2
          L10_3 = L10_3[L7_3]
          L10_3 = L10_3.playerId
          L11_3 = L29_2
          L11_3 = L11_3[L7_3]
          L11_3 = L11_3.level
          L12_3 = {}
          L12_3.username = L9_3
          L12_3.goalTime = L8_3
          L12_3.index = L7_3
          L12_3.playerId = L10_3
          L12_3.level = L11_3
          L3_3[L7_3] = L12_3
          if 0 < L8_3 then
            L1_3 = L1_3 + 1
            L12_3 = L31_2
            L12_3 = L12_3.getPlayerGoalTime
            L12_3 = L12_3()
            if L8_3 < L12_3 then
              L2_3 = L2_3 + 1
            end
          end
        end
        L4_3 = L0_1
        L4_3 = L4_3.data
        L4_3 = L4_3.gameInfo
        L4_3.quickPlayerRankingTable = L3_3
        L4_3 = L31_2
        L4_3 = L4_3.id
        if A0_3 == L4_3 then
          L4_3 = false
          L51_2 = L4_3
          L4_3 = L4_1
          L4_3 = L4_3.sendReportToServer
          L5_3 = L29_2
          L5_3 = #L5_3
          L6_3 = 0
          L4_3(L5_3, L6_3)
          L4_3 = L83_2
          L5_3 = L2_3
          L4_3(L5_3)
          L4_3 = L5_2
          L4_3 = L4_3.getGoal
          L4_3, L5_3 = L4_3()
          L6_3 = L29_2
          L6_3 = L6_3[A0_3]
          L6_3 = L6_3.x
          L7_3 = L29_2
          L7_3 = L7_3[A0_3]
          L7_3 = L7_3.y
          L8_3 = L9_2
          L8_3 = L8_3.startFireWorks
          L9_3 = L4_3
          L10_3 = L7_3
          L11_3 = L13_1
          L12_3 = L2_3
          L8_3(L9_3, L10_3, L11_3, L12_3)
        end
        L4_3 = L29_2
        L4_3 = #L4_3
        if L1_3 == L4_3 then
          L4_3 = L17_2
          if not L4_3 then
            L4_3 = L0_1
            L4_3 = L4_3.data
            L4_3 = L4_3.gameInfo
            L4_3 = L4_3.gameType
            if L4_3 == 0 then
              L4_3 = true
              L17_2 = L4_3
              L4_3 = timer
              L4_3 = L4_3.performWithDelay
              L5_3 = 2000
              L6_3 = L93_2
              L7_3 = 1
              L4_3(L5_3, L6_3, L7_3)
            end
        end
        else
          L4_3 = L0_1
          L4_3 = L4_3.onboarding
          L4_3 = L4_3.isActive
          if L4_3 == true then
            L4_3 = L31_2
            L4_3 = L4_3.id
            if A0_3 == L4_3 then
              L4_3 = L8_1
              if L4_3 then
                L4_3 = L8_1
                L4_3.isVisible = false
              end
              L4_3 = L29_2
              L4_3 = L4_3[1]
              L4_3 = L4_3.getPlayerGoalTime
              L4_3 = L4_3()
              L5_3 = 2
              L6_3 = L29_2
              L6_3 = #L6_3
              L7_3 = 1
              for L8_3 = L5_3, L6_3, L7_3 do
                L9_3 = L29_2
                L9_3 = L9_3[L8_3]
                L9_3 = L9_3.getPlayerGoalTime
                L9_3 = L9_3()
                if L9_3 < 1 then
                  L10_3 = L29_2
                  L10_3 = L10_3[L8_3]
                  L10_3 = L10_3.forceInGoal
                  L11_3 = L57_2
                  L12_3 = 1005
                  L13_3 = 10243
                  L11_3 = L11_3(L12_3, L13_3)
                  L11_3 = L4_3 + L11_3
                  L10_3(L11_3)
                end
              end
            end
          end
        end
      end
    end
  end
  
  function L95_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L31_2
    L0_3 = L0_3.setCurrentGameTime
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()
    L2_3 = L21_2
    L1_3 = L1_3 - L2_3
    L0_3(L1_3)
    L0_3 = L10_2
    if L0_3 then
      L0_3 = L11_2
      if L0_3 then
        L0_3 = L43_2
        L1_3 = nil
        L0_3(L1_3)
      end
    end
    L0_3 = L5_1
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L5_1
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L7_1
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L7_1
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.gameType
    if L0_3 == 0 then
      L0_3 = L31_2
      L0_3 = L0_3.getCurrentGameTime
      L0_3 = L0_3()
      L1_3 = L31_2
      L1_3 = L1_3.setPlayerGoalTime
      L2_3 = L0_3
      L1_3(L2_3)
      L1_3 = L86_2
      L2_3 = L31_2
      L2_3 = L2_3.id
      L3_3 = 99
      L4_3 = L31_2
      L4_3 = L4_3.id
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = L94_2
      L2_3 = L31_2
      L2_3 = L2_3.id
      L1_3(L2_3)
    end
  end
  
  function L96_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L10_2
    if L0_3 then
      L0_3 = L13_2
      if not L0_3 then
        L0_3 = 1
        L22_2 = L0_3
        L0_3 = 1
        L1_3 = L29_2
        L1_3 = #L1_3
        L2_3 = 1
        for L3_3 = L0_3, L1_3, L2_3 do
          L4_3 = L87_2
          L5_3 = L3_3
          L4_3 = L4_3(L5_3)
          if not L4_3 then
            L4_3 = L0_1
            L4_3 = L4_3.data
            L4_3 = L4_3.gameInfo
            L4_3 = L4_3.gameType
            if L4_3 ~= 0 then
              goto lbl_71
            end
          end
          L4_3 = L5_2
          L4_3 = L4_3.isInGoal
          L5_3 = L29_2
          L5_3 = L5_3[L3_3]
          L5_3 = L5_3.x
          L4_3 = L4_3(L5_3)
          if L4_3 then
            L4_3 = L29_2
            L4_3 = L4_3[L3_3]
            L4_3 = L4_3.stopPlayer
            L4_3()
            L4_3 = L12_2
            if L4_3 then
              L4_3 = L5_2
              L4_3 = L4_3.isInGoal
              L5_3 = L31_2
              L5_3 = L5_3.x
              L4_3 = L4_3(L5_3)
              if L4_3 then
                L4_3 = L0_1
                L4_3 = L4_3.audio
                L4_3 = L4_3.play
                L5_3 = "crowd_cheer"
                L4_3(L5_3)
                L4_3 = false
                L12_2 = L4_3
                L4_3 = L95_2
                L4_3()
                L4_3 = L39_2
                if L4_3 then
                  L4_3 = timer
                  L4_3 = L4_3.cancel
                  L5_3 = L39_2
                  L4_3(L5_3)
                  L4_3 = nil
                  L39_2 = L4_3
                end
              end
            end
          else
            L4_3 = L29_2
            L4_3 = L4_3[L3_3]
            L4_3 = L4_3.accelerate
            L4_3()
            goto lbl_75
            ::lbl_71::
            L4_3 = L29_2
            L4_3 = L4_3[L3_3]
            L4_3 = L4_3.pauseSprite
            L4_3()
          end
          ::lbl_75::
          L4_3 = L29_2
          L4_3 = L4_3[L3_3]
          L4_3 = L4_3.x
          L5_3 = L31_2
          L5_3 = L5_3.x
          if L4_3 > L5_3 then
            L4_3 = L22_2
            L4_3 = L4_3 + 1
            L22_2 = L4_3
          end
          L4_3 = L82_2
          L5_3 = L3_3
          L4_3(L5_3)
        end
        L0_3 = L81_2
        L0_3()
        L0_3 = L5_2
        L0_3 = L0_3.isInGoal
        L1_3 = L31_2
        L1_3 = L1_3.x
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          L0_3 = L83_2
          L1_3 = L22_2
          L0_3(L1_3)
          L0_3 = L31_2
          L0_3 = L0_3.setPlayerPosition
          L1_3 = L22_2
          L2_3 = L29_2
          L2_3 = #L2_3
          L3_3 = L23_2
          L2_3 = L2_3 - L3_3
          L0_3(L1_3, L2_3)
        end
      end
    end
  end
  
  function L97_2()
    local L0_3, L1_3, L2_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L15_1
    L2_3 = {}
    L2_3.time = 400
    L2_3.alpha = 1
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L15_1
    L2_3 = {}
    L2_3.time = 400
    L2_3.delay = 500
    L2_3.alpha = 0
    L0_3(L1_3, L2_3)
  end
  
  function L98_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L13_2
    if L0_3 then
      return
    end
    L0_3 = true
    L13_2 = L0_3
    L0_3 = L6_2
    L0_3 = L0_3.pause
    L0_3()
    L0_3 = 1
    L1_3 = L29_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L29_2
      L4_3 = L4_3[L3_3]
      L4_3 = L4_3.pauseSprite
      L4_3()
    end
    L0_3 = L31_2
    L0_3 = L0_3.getPlayerGoalTime
    L0_3 = L0_3()
    if L0_3 < 0 then
      L0_3 = L5_1
      L1_3 = L0_3
      L0_3 = L0_3.removeEventListener
      L2_3 = "touch"
      L3_3 = L5_1
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L7_1
      L1_3 = L0_3
      L0_3 = L0_3.removeEventListener
      L2_3 = "touch"
      L3_3 = L7_1
      L0_3(L1_3, L2_3, L3_3)
    end
    L0_3 = L11_2
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.tcpClient
      L0_3 = L0_3.stopTCPClient
      L0_3()
    end
  end
  
  function L99_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L16_1
    if L1_3 then
      L1_3 = L16_1
      L2_3 = L1_3
      L1_3 = L1_3.removeSelf
      L1_3(L2_3)
      L1_3 = nil
      L16_1 = L1_3
    end
    if A0_3 == "GO!" then
      L1_3 = display
      L1_3 = L1_3.newImageRect
      L2_3 = "images/game/countdownGo.png"
      L3_3 = 129
      L4_3 = 70
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      L16_1 = L1_3
    else
      L1_3 = string
      L1_3 = L1_3.len
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      if 1 < L1_3 then
        L2_3 = A0_3
        L1_3 = A0_3.sub
        L3_3 = 1
        L4_3 = 1
        L1_3 = L1_3(L2_3, L3_3, L4_3)
        A0_3 = L1_3
      end
      L1_3 = display
      L1_3 = L1_3.newImageRect
      L2_3 = "images/game/countdown"
      L3_3 = A0_3
      L4_3 = ".png"
      L2_3 = L2_3 .. L3_3 .. L4_3
      L3_3 = 129
      L4_3 = 70
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      L16_1 = L1_3
    end
    L1_3 = L16_1
    if L1_3 then
      L1_3 = L16_1
      L2_3 = display
      L2_3 = L2_3.contentWidth
      L2_3 = L2_3 * 0.5
      L1_3.x = L2_3
      L1_3 = L16_1
      L2_3 = display
      L2_3 = L2_3.contentHeight
      L2_3 = L2_3 * 0.3
      L1_3.y = L2_3
      L1_3 = L0_1
      L1_3 = L1_3.data
      L1_3 = L1_3.gameInfo
      L1_3 = L1_3.crazyModeActive
      if L1_3 then
        L1_3 = L16_1
        L2_3 = display
        L2_3 = L2_3.contentHeight
        L2_3 = L2_3 * 0.5
        L1_3.y = L2_3
      end
      L1_3 = L12_1
      L2_3 = L1_3
      L1_3 = L1_3.insert
      L3_3 = L16_1
      L1_3(L2_3, L3_3)
    end
  end
  
  function L100_2()
    local L0_3, L1_3, L2_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L16_1
    L2_3 = {}
    L2_3.time = 400
    L2_3.alpha = 1
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L16_1
    L2_3 = {}
    L2_3.time = 400
    L2_3.delay = 500
    L2_3.alpha = 0
    L0_3(L1_3, L2_3)
  end
  
  function L101_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.gotoScene
    L1_3 = "lua.scenes.mainMenu"
    L0_3(L1_3)
  end
  
  function L102_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3.action
    if "clicked" == L1_3 then
      L1_3 = nil
      L33_2 = L1_3
      L1_3 = L98_2
      L1_3()
      L1_3 = timer
      L1_3 = L1_3.performWithDelay
      L2_3 = 200
      L3_3 = L101_2
      L4_3 = 1
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  
  function L103_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = A0_3.action
    if "clicked" == L1_3 then
      L1_3 = L29_2
      if L1_3 then
        L1_3 = L4_1
        L1_3 = L1_3.sendReportToServer
        L2_3 = L29_2
        L2_3 = #L2_3
        L3_3 = 2
        L1_3(L2_3, L3_3)
      end
      L1_3 = A0_3.index
      L2_3 = nil
      L32_2 = L2_3
      if 1 == L1_3 then
        L2_3 = L13_2
        if L2_3 then
          return
        end
        L2_3 = L98_2
        L2_3()
        L2_3 = L0_1
        L2_3 = L2_3.onboarding
        L2_3 = L2_3.isActive
        if L2_3 == true then
          L2_3 = L0_1
          L2_3 = L2_3.onboarding
          L2_3 = L2_3.deactivate
          L2_3()
        end
        L2_3 = L31_2
        L2_3 = L2_3.getPlayerGoalTime
        L2_3 = L2_3()
        if 0 < L2_3 then
          L2_3 = L31_2
          L2_3 = L2_3.getPlayerPosition
          L2_3 = L2_3()
          L3_3 = L29_2
          L3_3 = #L3_3
          L4_3 = {}
          L5_3 = {}
          L6_3 = 0
          L5_3[1] = L6_3
          L6_3 = {}
          L7_3 = 10
          L8_3 = 5
          L6_3[1] = L7_3
          L6_3[2] = L8_3
          L7_3 = {}
          L8_3 = 15
          L9_3 = 10
          L10_3 = 5
          L7_3[1] = L8_3
          L7_3[2] = L9_3
          L7_3[3] = L10_3
          L8_3 = {}
          L9_3 = 30
          L10_3 = 15
          L11_3 = 10
          L12_3 = 5
          L8_3[1] = L9_3
          L8_3[2] = L10_3
          L8_3[3] = L11_3
          L8_3[4] = L12_3
          L4_3[1] = L5_3
          L4_3[2] = L6_3
          L4_3[3] = L7_3
          L4_3[4] = L8_3
          L5_3 = L4_3[L3_3]
          if not L5_3 then
            L5_3 = {}
          end
          L6_3 = L5_3[L2_3]
          L5_3 = L6_3 or L5_3
          if not L6_3 then
            L5_3 = 0
          end
          L6_3 = L0_1
          L6_3 = L6_3.analytics
          L6_3 = L6_3.addResourceEvent
          L7_3 = "Source"
          L8_3 = "coin"
          L9_3 = L5_3
          L10_3 = "rewards"
          L11_3 = "gameplay"
          L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
          L6_3 = L0_1
          L6_3 = L6_3.storeConfig
          L6_3 = L6_3.ownsItem
          L7_3 = 1001
          L6_3 = L6_3(L7_3)
          if L6_3 then
            L6_3 = L0_1
            L6_3 = L6_3.analytics
            L6_3 = L6_3.addResourceEvent
            L7_3 = "Source"
            L8_3 = "coin"
            L9_3 = L5_3
            L10_3 = "boost"
            L11_3 = "doublecoin"
            L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
          end
        end
        L2_3 = timer
        L2_3 = L2_3.performWithDelay
        L3_3 = 200
        L4_3 = L101_2
        L5_3 = 1
        L2_3(L3_3, L4_3, L5_3)
      elseif 2 == L1_3 then
      end
    end
  end
  
  function L104_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = A0_3.action
    if "clicked" == L1_3 then
      L1_3 = L29_2
      if L1_3 then
        L1_3 = L4_1
        L1_3 = L1_3.sendReportToServer
        L2_3 = L29_2
        L2_3 = #L2_3
        L3_3 = 2
        L1_3(L2_3, L3_3)
      end
      L1_3 = A0_3.index
      L2_3 = nil
      L32_2 = L2_3
      if 1 == L1_3 then
      elseif 2 == L1_3 then
        L2_3 = L13_2
        if L2_3 then
          return
        end
        L2_3 = L98_2
        L2_3()
        L2_3 = L0_1
        L2_3 = L2_3.onboarding
        L2_3 = L2_3.isActive
        if L2_3 == true then
          L2_3 = L0_1
          L2_3 = L2_3.onboarding
          L2_3 = L2_3.deactivate
          L2_3()
        end
        L2_3 = L31_2
        L2_3 = L2_3.getPlayerGoalTime
        L2_3 = L2_3()
        if 0 < L2_3 then
          L2_3 = L31_2
          L2_3 = L2_3.getPlayerPosition
          L2_3 = L2_3()
          L3_3 = L29_2
          L3_3 = #L3_3
          L4_3 = {}
          L5_3 = {}
          L6_3 = 0
          L5_3[1] = L6_3
          L6_3 = {}
          L7_3 = 10
          L8_3 = 5
          L6_3[1] = L7_3
          L6_3[2] = L8_3
          L7_3 = {}
          L8_3 = 15
          L9_3 = 10
          L10_3 = 5
          L7_3[1] = L8_3
          L7_3[2] = L9_3
          L7_3[3] = L10_3
          L8_3 = {}
          L9_3 = 30
          L10_3 = 15
          L11_3 = 10
          L12_3 = 5
          L8_3[1] = L9_3
          L8_3[2] = L10_3
          L8_3[3] = L11_3
          L8_3[4] = L12_3
          L4_3[1] = L5_3
          L4_3[2] = L6_3
          L4_3[3] = L7_3
          L4_3[4] = L8_3
          L5_3 = L4_3[L3_3]
          if not L5_3 then
            L5_3 = {}
          end
          L6_3 = L5_3[L2_3]
          L5_3 = L6_3 or L5_3
          if not L6_3 then
            L5_3 = 0
          end
          L6_3 = L0_1
          L6_3 = L6_3.analytics
          L6_3 = L6_3.addResourceEvent
          L7_3 = "Source"
          L8_3 = "coin"
          L9_3 = L5_3
          L10_3 = "rewards"
          L11_3 = "gameplay"
          L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
          L6_3 = L0_1
          L6_3 = L6_3.storeConfig
          L6_3 = L6_3.ownsItem
          L7_3 = 1001
          L6_3 = L6_3(L7_3)
          if L6_3 then
            L6_3 = L0_1
            L6_3 = L6_3.analytics
            L6_3 = L6_3.addResourceEvent
            L7_3 = "Source"
            L8_3 = "coin"
            L9_3 = L5_3
            L10_3 = "boost"
            L11_3 = "doublecoin"
            L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
          end
        end
        L2_3 = timer
        L2_3 = L2_3.performWithDelay
        L3_3 = 200
        L4_3 = L101_2
        L5_3 = 1
        L2_3(L3_3, L4_3, L5_3)
      end
    end
  end
  
  function L105_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = L29_2
    L1_3 = #L1_3
    if 1 < L1_3 then
      L1_3 = L33_2
      if not L1_3 then
        L1_3 = L98_2
        L1_3()
        L1_3 = isSimulator
        if L1_3 then
          L1_3 = L0_1
          L1_3 = L1_3.config
          L1_3 = L1_3.bot
          if L1_3 then
            L1_3 = timer
            L1_3 = L1_3.performWithDelay
            L2_3 = 200
            L3_3 = L101_2
            L4_3 = 1
            L1_3(L2_3, L3_3, L4_3)
        end
        else
          L1_3 = L4_1
          L1_3 = L1_3.sendReportToServer
          L2_3 = L29_2
          L2_3 = #L2_3
          L3_3 = 1
          L1_3(L2_3, L3_3)
          L1_3 = native
          L1_3 = L1_3.showAlert
          L2_3 = L0_1
          L2_3 = L2_3.localized
          L2_3 = L2_3.get
          L3_3 = "Disconnected"
          L2_3 = L2_3(L3_3)
          L3_3 = L0_1
          L3_3 = L3_3.localized
          L3_3 = L3_3.get
          L4_3 = "LostConnection"
          L3_3 = L3_3(L4_3)
          L4_3 = {}
          L5_3 = L0_1
          L5_3 = L5_3.localized
          L5_3 = L5_3.get
          L6_3 = "Ok"
          L5_3, L6_3 = L5_3(L6_3)
          L4_3[1] = L5_3
          L4_3[2] = L6_3
          L5_3 = L102_2
          L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
          L33_2 = L1_3
          L1_3 = L0_1
          L1_3 = L1_3.analytics
          L1_3 = L1_3.newEvent
          L2_3 = "design"
          L3_3 = {}
          L3_3.event_id = "gamePlay:lost connection"
          L4_3 = L0_1
          L4_3 = L4_3.config
          L4_3 = L4_3.fullVersion
          L3_3.area = L4_3
          L1_3(L2_3, L3_3)
        end
      end
    end
  end
  
  function L106_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L0_1
    L0_3 = L0_3.localized
    L0_3 = L0_3.get
    L1_3 = "QuitGame"
    L0_3 = L0_3(L1_3)
    L1_3 = L11_2
    if L1_3 then
      L1_3 = L0_1
      L1_3 = L1_3.localized
      L1_3 = L1_3.get
      L2_3 = "QuitGameWithWarning"
      L1_3 = L1_3(L2_3)
      L0_3 = L1_3
      L1_3 = L31_2
      L1_3 = L1_3.getPlayerGoalTime
      L1_3 = L1_3()
      if 0 < L1_3 then
        L1_3 = L0_1
        L1_3 = L1_3.localized
        L1_3 = L1_3.get
        L2_3 = "QuitGame"
        L1_3 = L1_3(L2_3)
        L0_3 = L1_3
      end
    end
    L1_3 = L0_1
    L1_3 = L1_3.onboarding
    L1_3 = L1_3.isActive
    if L1_3 == true then
      L1_3 = L0_1
      L1_3 = L1_3.localized
      L1_3 = L1_3.get
      L2_3 = "QuitOnboarding"
      L1_3 = L1_3(L2_3)
      L0_3 = L1_3
    end
    L1_3 = isAndroid
    if L1_3 then
      L1_3 = native
      L1_3 = L1_3.showAlert
      L2_3 = L0_1
      L2_3 = L2_3.localized
      L2_3 = L2_3.get
      L3_3 = "Quit"
      L2_3 = L2_3(L3_3)
      L3_3 = L0_3
      L4_3 = {}
      L5_3 = L0_1
      L5_3 = L5_3.localized
      L5_3 = L5_3.get
      L6_3 = "Yes"
      L5_3 = L5_3(L6_3)
      L6_3 = L0_1
      L6_3 = L6_3.localized
      L6_3 = L6_3.get
      L7_3 = "No"
      L6_3, L7_3 = L6_3(L7_3)
      L4_3[1] = L5_3
      L4_3[2] = L6_3
      L4_3[3] = L7_3
      L5_3 = L103_2
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      L32_2 = L1_3
    else
      L1_3 = native
      L1_3 = L1_3.showAlert
      L2_3 = L0_1
      L2_3 = L2_3.localized
      L2_3 = L2_3.get
      L3_3 = "Quit"
      L2_3 = L2_3(L3_3)
      L3_3 = L0_3
      L4_3 = {}
      L5_3 = L0_1
      L5_3 = L5_3.localized
      L5_3 = L5_3.get
      L6_3 = "No"
      L5_3 = L5_3(L6_3)
      L6_3 = L0_1
      L6_3 = L6_3.localized
      L6_3 = L6_3.get
      L7_3 = "Yes"
      L6_3, L7_3 = L6_3(L7_3)
      L4_3[1] = L5_3
      L4_3[2] = L6_3
      L4_3[3] = L7_3
      L5_3 = L104_2
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      L32_2 = L1_3
    end
  end
  
  function L107_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L31_2
    if L0_3 then
      L0_3 = L58_2
      L1_3 = L31_2
      L1_3 = L1_3.x
      L2_3 = L24_2
      L1_3 = L1_3 - L2_3
      L0_3 = L0_3(L1_3)
      if L0_3 < 50 then
        L0_3 = L40_2
        L0_3 = L0_3 + 1
        L40_2 = L0_3
      else
        L0_3 = 0
        L40_2 = L0_3
      end
      L0_3 = L40_2
      if L0_3 == 3 then
        L0_3 = L0_1
        L0_3 = L0_3.tcpClient
        L0_3 = L0_3.stopTCPClient
        L0_3()
        L0_3 = native
        L0_3 = L0_3.showAlert
        L1_3 = L0_1
        L1_3 = L1_3.localized
        L1_3 = L1_3.get
        L2_3 = "Disconnected"
        L1_3 = L1_3(L2_3)
        L2_3 = L0_1
        L2_3 = L2_3.localized
        L2_3 = L2_3.get
        L3_3 = "DidNotMove"
        L2_3 = L2_3(L3_3)
        L3_3 = {}
        L4_3 = L0_1
        L4_3 = L4_3.localized
        L4_3 = L4_3.get
        L5_3 = "Ok"
        L4_3, L5_3 = L4_3(L5_3)
        L3_3[1] = L4_3
        L3_3[2] = L5_3
        L4_3 = L102_2
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        L33_2 = L0_3
      end
      L0_3 = L31_2
      L0_3 = L0_3.x
      L24_2 = L0_3
    end
  end
  
  function L108_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = true
    L10_2 = L0_3
    L0_3 = system
    L0_3 = L0_3.getTimer
    L0_3 = L0_3()
    L21_2 = L0_3
    L0_3 = 1
    L1_3 = L29_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L29_2
      L4_3 = L4_3[L3_3]
      L4_3 = L4_3.playNinjaEffect
      L4_3()
      L4_3 = L0_1
      L4_3 = L4_3.data
      L4_3 = L4_3.gameInfo
      L4_3 = L4_3.gameType
      if L4_3 == 0 then
        L4_3 = L29_2
        L4_3 = L4_3[L3_3]
        L4_3 = L4_3.setBotModuleFunction
        L5_3 = L28_1
        L6_3 = L21_2
        L4_3(L5_3, L6_3)
      end
    end
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.gameType
    if L0_3 == 0 then
      L0_3 = L60_2
      L1_3 = "start"
      L0_3(L1_3)
    end
    L0_3 = L72_2
    L0_3()
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getDetectFPS
    L0_3 = L0_3()
    L0_3 = L0_3 == 1
    L51_2 = L0_3
  end
  
  function L109_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L13_2
    if not L1_3 then
      L1_3 = L18_2
      L2_3 = L0_1
      L2_3 = L2_3.localized
      L2_3 = L2_3.get
      L3_3 = "Go"
      L2_3 = L2_3(L3_3)
      if L1_3 ~= L2_3 then
        L1_3 = L18_2
        if 5 < L1_3 then
          return
        end
      end
      L1_3 = L99_2
      L2_3 = L18_2
      L1_3(L2_3)
      L1_3 = L100_2
      L1_3()
      L1_3 = L18_2
      L2_3 = L0_1
      L2_3 = L2_3.localized
      L2_3 = L2_3.get
      L3_3 = "Go"
      L2_3 = L2_3(L3_3)
      if L1_3 == L2_3 then
        L1_3 = timer
        L1_3 = L1_3.cancel
        L2_3 = A0_3.source
        L1_3(L2_3)
        L1_3 = L108_2
        L1_3()
      else
        L1_3 = L60_2
        L2_3 = "countdown"
        L1_3(L2_3)
        L1_3 = L18_2
        L1_3 = L1_3 - 1
        L18_2 = L1_3
        L1_3 = L18_2
        if L1_3 == 0 then
          L1_3 = L0_1
          L1_3 = L1_3.data
          L1_3 = L1_3.gameInfo
          L1_3 = L1_3.gameType
          if L1_3 == 0 then
            L1_3 = L0_1
            L1_3 = L1_3.localized
            L1_3 = L1_3.get
            L2_3 = "Go"
            L1_3 = L1_3(L2_3)
            L18_2 = L1_3
          else
            L1_3 = timer
            L1_3 = L1_3.cancel
            L2_3 = A0_3.source
            L1_3(L2_3)
          end
        end
      end
    end
  end
  
  function L110_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = L13_2
    if L1_3 then
      return
    end
    L1_3 = A0_3[1]
    L2_3 = L0_1
    L2_3 = L2_3.gameConfig
    L2_3 = L2_3.getMessageTypeForID
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    L3_3 = system
    L3_3 = L3_3.getTimer
    L3_3 = L3_3()
    L19_2 = L3_3
    L3_3 = L19_1
    L3_3 = L3_3.alpha
    if L3_3 == 1 then
      L3_3 = L19_1
      L3_3.alpha = 0
    end
    L3_3 = L10_2
    if L3_3 then
      L3_3 = L4_1
      L3_3 = L3_3.updateLatencyLog
      L3_3()
    end
    if L2_3 == "HEARTBEAT" then
    elseif L2_3 == "START_RACE" then
      L3_3 = true
      L10_2 = L3_3
      L3_3 = system
      L3_3 = L3_3.getTimer
      L3_3 = L3_3()
      L21_2 = L3_3
      L3_3 = isSimulator
      if L3_3 then
        L3_3 = L0_1
        L3_3 = L3_3.config
        L3_3 = L3_3.bot
        if L3_3 then
          L3_3 = L31_2
          L3_3 = L3_3.setBotModuleFunction
          L4_3 = L43_2
          L5_3 = L21_2
          L6_3 = L47_2
          L3_3(L4_3, L5_3, L6_3)
        end
      end
      L3_3 = timer
      L3_3 = L3_3.performWithDelay
      L4_3 = 5000
      L5_3 = L107_2
      L6_3 = 0
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L39_2 = L3_3
      L3_3 = L60_2
      L4_3 = "start"
      L3_3(L4_3)
      L3_3 = L36_2
      if L3_3 then
        L3_3 = timer
        L3_3 = L3_3.cancel
        L4_3 = L36_2
        L3_3(L4_3)
        L3_3 = nil
        L36_2 = L3_3
      end
      L3_3 = L0_1
      L3_3 = L3_3.localized
      L3_3 = L3_3.get
      L4_3 = "Go"
      L3_3 = L3_3(L4_3)
      L18_2 = L3_3
      L3_3 = L99_2
      L4_3 = L18_2
      L3_3(L4_3)
      L3_3 = L100_2
      L3_3()
      L3_3 = L108_2
      L3_3()
      L3_3 = L4_1
      L3_3 = L3_3.reset
      L3_3()
    elseif L2_3 == "REMOVE_OBJECT" then
      L3_3 = L29_2
      L4_3 = A0_3[2]
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.setPlayerGoalTime
      L4_3 = -2
      L3_3(L4_3)
      L3_3 = L29_2
      L4_3 = A0_3[2]
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.setDisconnected
      L3_3()
      L3_3 = L94_2
      L4_3 = A0_3[2]
      L3_3(L4_3)
    elseif L2_3 == "PLAYER_JUMPED" then
      L3_3 = L29_2
      L4_3 = A0_3[2]
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.corrigateOtherPlayers
      L4_3 = A0_3[4]
      L5_3 = A0_3[5]
      L6_3 = A0_3[6]
      L7_3 = A0_3[7]
      L3_3(L4_3, L5_3, L6_3, L7_3)
      L3_3 = L29_2
      L4_3 = A0_3[2]
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.jump
      L3_3()
    elseif L2_3 == "PLAYER_USED_POWERUP" then
      L3_3 = L29_2
      L4_3 = A0_3[2]
      L3_3 = L3_3[L4_3]
      if L3_3 == nil then
        return
      else
        L3_3 = L29_2
        L4_3 = A0_3[2]
        L3_3 = L3_3[L4_3]
        L3_3 = L3_3.mainPlayer
        if L3_3 then
          return
        end
      end
      L3_3 = L7_2
      L3_3 = L3_3.usePowerUp
      L4_3 = A0_3[4]
      L5_3 = A0_3[2]
      L6_3 = L45_2
      L7_3 = nil
      L8_3 = A0_3[5]
      L9_3 = A0_3[6]
      L10_3 = L13_1
      L11_3 = L3_2
      L12_3 = L29_2
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    elseif L2_3 == "SET_PLAYER_DEAD" then
      L3_3 = L29_2
      L4_3 = A0_3[2]
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.playHitAnimation
      L4_3 = A0_3[5]
      L5_3 = A0_3[7]
      L6_3 = A0_3[4]
      L3_3(L4_3, L5_3, L6_3)
    elseif L2_3 == "PLAYER_FINISHED" then
      L3_3 = L29_2
      L4_3 = A0_3[2]
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.setPlayerGoalTime
      L4_3 = A0_3[4]
      L3_3(L4_3)
      L3_3 = L86_2
      L4_3 = A0_3[2]
      L5_3 = 99
      L6_3 = A0_3[2]
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = L94_2
      L4_3 = A0_3[2]
      L3_3(L4_3)
      L3_3 = isSimulator
      if L3_3 then
        L3_3 = L0_1
        L3_3 = L3_3.config
        L3_3 = L3_3.bot
        if L3_3 then
          L3_3 = L29_2
          L4_3 = A0_3[2]
          L3_3 = L3_3[L4_3]
          L3_3 = L3_3.mainPlayer
          if L3_3 then
            L3_3 = L101_2
            L3_3()
          end
        end
      end
    elseif L2_3 == "RACE_FINISHED" then
      L3_3 = L0_1
      L3_3 = L3_3.debugger
      L3_3 = L3_3.debugTable
      L4_3 = "network"
      L5_3 = "Finished Race Data: "
      L6_3 = A0_3[2]
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = L0_1
      L3_3 = L3_3.data
      L3_3 = L3_3.gameInfo
      L4_3 = A0_3[2]
      L3_3.stats = L4_3
      L3_3 = timer
      L3_3 = L3_3.performWithDelay
      L4_3 = 1000
      L5_3 = L93_2
      L3_3 = L3_3(L4_3, L5_3)
      L48_2 = L3_3
    elseif L2_3 == "CORRIGATE_POSITION" then
      L3_3 = L29_2
      L4_3 = A0_3[2]
      L3_3 = L3_3[L4_3]
      if L3_3 == nil then
        return
      else
        L3_3 = L29_2
        L4_3 = A0_3[2]
        L3_3 = L3_3[L4_3]
        L3_3 = L3_3.mainPlayer
        if L3_3 then
          return
        end
      end
      L3_3 = L29_2
      L4_3 = A0_3[2]
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.corrigateOtherPlayers
      L4_3 = A0_3[3]
      L5_3 = A0_3[4]
      L6_3 = A0_3[5]
      L7_3 = A0_3[6]
      L3_3(L4_3, L5_3, L6_3, L7_3)
      L3_3 = L29_2
      L4_3 = A0_3[2]
      L3_3 = L3_3[L4_3]
      L3_3.connected = true
      L3_3 = L68_2
      L4_3 = L31_2
      L4_3 = L4_3.x
      L5_3 = A0_3[3]
      L3_3 = L3_3(L4_3, L5_3)
      L4_3 = L29_2
      L5_3 = A0_3[2]
      L4_3 = L4_3[L5_3]
      L4_3 = L4_3.setSoundVolume
      L5_3 = L3_3
      L4_3(L5_3)
    elseif L2_3 == "POWER_UP_UPGRADE_RESULT" then
      L3_3 = tonumber
      L4_3 = A0_3[3]
      L3_3 = L3_3(L4_3)
      if L3_3 == 1 then
        L4_3 = L0_1
        L4_3 = L4_3.database
        L4_3 = L4_3.decreaseMoney
        L5_3 = L0_1
        L5_3 = L5_3.storeConfig
        L5_3 = L5_3.getPowerUpTryCost
        L6_3 = 1
        L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L5_3(L6_3)
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      else
        L4_3 = L0_1
        L4_3 = L4_3.database
        L4_3 = L4_3.decreaseGem
        L5_3 = L0_1
        L5_3 = L5_3.storeConfig
        L5_3 = L5_3.getPowerUpTryCost
        L6_3 = 0
        L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L5_3(L6_3)
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      end
    elseif L2_3 == "UNLOCKED_AWARD" then
      L3_3 = {}
      L3_3[1] = 0
      L4_3 = A0_3[2]
      L3_3[2] = L4_3
      L4_3 = A0_3[3]
      L3_3[3] = L4_3
      L4_3 = A0_3[4]
      L3_3[4] = L4_3
      L4_3 = L1_1
      L4_3 = L4_3.showAchivement
      L5_3 = L3_3
      L4_3(L5_3)
    elseif L2_3 then
      L3_3 = print
      L4_3 = "ERROR NETWORK: Uncaught messagetype: "
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
    elseif L1_3 then
      L3_3 = print
      L4_3 = "ERROR NETWORK: Uncaught messageid: "
      L5_3 = L1_3
      L3_3(L4_3, L5_3)
    else
      L3_3 = print
      L4_3 = "ERROR NETWORK: Got this stuff, dunno what to do: "
      L5_3 = A0_3
      L3_3(L4_3, L5_3)
    end
  end
  
  L28_1 = L110_2
  
  function L110_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.gameConfig
    L0_3 = L0_3.getClientMessageTypeForName
    L1_3 = "HEARTBEAT"
    L0_3 = L0_3(L1_3)
    L1_3 = "["
    L2_3 = L0_3
    L3_3 = "]"
    L1_3 = L1_3 .. L2_3 .. L3_3
    L2_3 = L0_1
    L2_3 = L2_3.tcpClient
    L2_3 = L2_3.sendMinimizedMessage
    L3_3 = L1_3
    L2_3(L3_3)
  end
  
  function L111_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L11_2
    if L0_3 then
      L0_3 = L29_2
      L0_3 = #L0_3
      if 1 < L0_3 then
        L0_3 = system
        L0_3 = L0_3.getTimer
        L0_3 = L0_3()
        L1_3 = L19_2
        L1_3 = L0_3 - L1_3
        L2_3 = L20_2
        L2_3 = L2_3 * 0.2
        if L1_3 > L2_3 then
          L1_3 = L17_2
          if not L1_3 then
            L1_3 = L110_2
            L1_3()
          end
        end
        L1_3 = L19_2
        L1_3 = L0_3 - L1_3
        L2_3 = L20_2
        L2_3 = L2_3 * 0.4
        if L1_3 > L2_3 then
          L1_3 = L17_2
          if not L1_3 then
            L1_3 = L19_1
            L1_3 = L1_3.alpha
            if L1_3 == 0 then
              L1_3 = L19_1
              L1_3.alpha = 1
            end
          end
        end
        L1_3 = L19_2
        L1_3 = L0_3 - L1_3
        L2_3 = L20_2
        if L1_3 > L2_3 then
          L1_3 = L17_2
          if not L1_3 then
            L1_3 = L0_1
            L1_3 = L1_3.tcpClient
            L1_3 = L1_3.stopTCPClient
            L1_3()
            L1_3 = L105_2
            L1_3()
          end
        end
        L1_3 = 0
        L2_3 = 1
        L3_3 = L29_2
        L3_3 = #L3_3
        L4_3 = 1
        for L5_3 = L2_3, L3_3, L4_3 do
          L6_3 = L29_2
          L6_3 = L6_3[L5_3]
          L6_3 = L6_3.getPlayerGoalTime
          L6_3 = L6_3()
          if L6_3 == -2 then
            L1_3 = L1_3 + 1
          end
        end
        L2_3 = L23_2
        if L1_3 ~= L2_3 then
          L23_2 = L1_3
        end
      end
    end
  end
  
  function L43_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L2_3 = L11_2
    if L2_3 then
      L2_3 = L13_2
      if not L2_3 then
        L2_3 = L46_2
        if not L2_3 then
          L2_3 = L111_2
          L2_3()
          L2_3 = L10_2
          if L2_3 then
            L2_3 = L31_2
            L2_3 = L2_3.setCurrentGameTime
            L3_3 = system
            L3_3 = L3_3.getTimer
            L3_3 = L3_3()
            L4_3 = L21_2
            L3_3 = L3_3 - L4_3
            L2_3(L3_3)
            L2_3 = L31_2
            L2_3 = L2_3.getPlayerStatus
            L2_3 = L2_3()
            if A1_3 then
              L3_3 = L0_1
              L3_3 = L3_3.tcpClient
              L3_3 = L3_3.sendJumpMessage
              L4_3 = L2_3.x
              L5_3 = L2_3.y
              L6_3 = L2_3.vX
              L7_3 = L2_3.vY
              L3_3(L4_3, L5_3, L6_3, L7_3)
            elseif A0_3 then
              L3_3 = L0_1
              L3_3 = L3_3.tcpClient
              L3_3 = L3_3.sendPowerUpMessage
              L4_3 = A0_3.t
              L5_3 = A0_3.x
              L6_3 = A0_3.y
              L7_3 = 0
              L8_3 = 0
              L9_3 = 0
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
            else
              L3_3 = L0_1
              L3_3 = L3_3.tcpClient
              L3_3 = L3_3.sendCorrigateMessage
              L4_3 = L2_3.x
              L5_3 = L2_3.y
              L6_3 = L2_3.vX
              L7_3 = L2_3.vY
              L3_3(L4_3, L5_3, L6_3, L7_3)
            end
          end
        end
      end
    end
  end
  
  function L112_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L43_2
    L2_3 = nil
    L3_3 = nil
    return L1_3(L2_3, L3_3)
  end
  
  function L113_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = A1_3.phase
    if L2_3 == "began" then
      L2_3 = L10_2
      if L2_3 then
        L2_3 = L0_1
        L2_3 = L2_3.onboarding
        L2_3 = L2_3.isActive
        if L2_3 == true then
          L2_3 = L0_1
          L2_3 = L2_3.onboarding
          L2_3 = L2_3.jumpButtonPressed
          L2_3()
        end
        L2_3 = false
        L3_3 = L31_2
        L3_3 = L3_3.canJump
        L3_3 = L3_3()
        if L3_3 or L2_3 then
          L3_3 = L43_2
          L4_3 = false
          L5_3 = true
          L3_3(L4_3, L5_3)
          L3_3 = L31_2
          L3_3 = L3_3.jump
          L3_3()
          L3_3 = timer
          L3_3 = L3_3.performWithDelay
          L4_3 = 10
          L5_3 = L112_2
          L6_3 = 1
          L3_3(L4_3, L5_3, L6_3)
        end
        L3_3 = true
        return L3_3
      end
    end
  end
  
  function L114_2(A0_3)
    local L1_3, L2_3
    A0_3 = A0_3 * 100
    L1_3 = L59_2
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    A0_3 = L1_3
    A0_3 = A0_3 * 0.01
    return A0_3
  end
  
  function L115_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = L7_2
    L1_3 = L1_3.usePowerUp
    L2_3 = A0_3
    L3_3 = L31_2
    L3_3 = L3_3.id
    L4_3 = L45_2
    L5_3 = L31_2
    L6_3 = 0
    L7_3 = 0
    L8_3 = L13_1
    L9_3 = L3_2
    L10_3 = L29_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L3_3 = L114_2
    L4_3 = L1_3
    L3_3 = L3_3(L4_3)
    L4_3 = L114_2
    L5_3 = L2_3
    L4_3 = L4_3(L5_3)
    L5_3 = {}
    L5_3.t = A0_3
    L5_3.x = L3_3
    L5_3.y = L4_3
    L6_3 = L43_2
    L7_3 = L5_3
    L6_3(L7_3)
  end
  
  function L47_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L2_3 = A1_3.phase
    if L2_3 == "began" then
      L2_3 = L10_2
      if L2_3 then
        L2_3 = false
        L3_3 = L0_1
        L3_3 = L3_3.onboarding
        L3_3 = L3_3.isActive
        if L3_3 == true then
          L3_3 = L0_1
          L3_3 = L3_3.onboarding
          L3_3 = L3_3.startPhysics
          L3_3()
        end
        L3_3 = L31_2
        L3_3 = L3_3.getPowerUp
        L3_3 = L3_3()
        if 0 < L3_3 then
          L4_3 = L16_2
        end
        if L4_3 or L2_3 then
          L4_3 = L31_2
          L4_3 = L4_3.usedPowerUp
          L4_3()
          L4_3 = L7_2
          L4_3 = L4_3.usePowerUp
          L5_3 = L3_3
          L6_3 = L31_2
          L6_3 = L6_3.id
          L7_3 = L45_2
          L8_3 = L31_2
          L9_3 = 0
          L10_3 = 0
          L11_3 = L13_1
          L12_3 = L3_2
          L13_3 = L29_2
          L4_3, L5_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
          L6_3 = {}
          L6_3.t = L3_3
          L6_3.x = L4_3
          L6_3.y = L5_3
          L7_3 = L43_2
          L8_3 = L6_3
          L7_3(L8_3)
          if 50 < L3_3 then
            function L7_3(A0_4)
              local L1_4, L2_4
              
              L1_4 = L115_2
              L2_4 = L3_3
              L2_4 = L2_4 - 50
              return L1_4(L2_4)
            end
            
            L8_3 = timer
            L8_3 = L8_3.performWithDelay
            L9_3 = 200
            L10_3 = L7_3
            L11_3 = 1
            L8_3(L9_3, L10_3, L11_3)
          end
          L7_3 = L75_2
          L7_3()
        else
          L4_3 = L31_2
          L4_3 = L4_3.isDead
          L4_3 = L4_3()
          if not L4_3 then
            L4_3 = L6_1
            L4_3.alpha = 1
            L4_3 = L6_1
            L5_3 = L4_3
            L4_3 = L4_3.setSequence
            L6_3 = "click"
            L4_3(L5_3, L6_3)
            L4_3 = L6_1
            L5_3 = L4_3
            L4_3 = L4_3.play
            L4_3(L5_3)
            L4_3 = L0_1
            L4_3 = L4_3.audio
            L4_3 = L4_3.play
            L5_3 = "no_powerup"
            L4_3(L5_3)
          end
        end
        L4_3 = true
        return L4_3
      end
    end
  end
  
  function L116_2(A0_3, A1_3)
    local L2_3
    L2_3 = A1_3.phase
    if L2_3 == "began" then
      L2_3 = L106_2
      L2_3()
    end
  end
  
  function L117_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = 0
    L1_3 = 1
    L2_3 = L29_2
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L29_2
      L5_3 = L5_3[L4_3]
      L5_3 = L5_3.connected
      if L5_3 == false then
        L5_3 = L29_2
        L5_3 = L5_3[L4_3]
        L5_3 = L5_3.mobileUser
        if not L5_3 then
          L5_3 = L29_2
          L5_3 = L5_3[L4_3]
          L5_3 = L5_3.setPlayerGoalTime
          L6_3 = -2
          L5_3(L6_3)
          L5_3 = L29_2
          L5_3 = L5_3[L4_3]
          L5_3 = L5_3.setDisconnected
          L5_3()
          L0_3 = L0_3 + 1
        end
      end
    end
  end
  
  function L118_2()
    local L0_3, L1_3
    L0_3 = L35_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L35_2
      L0_3(L1_3)
      L0_3 = nil
      L35_2 = L0_3
    end
    L0_3 = L42_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L42_2
      L0_3(L1_3)
      L0_3 = nil
      L42_2 = L0_3
    end
    L0_3 = L37_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L37_2
      L0_3(L1_3)
      L0_3 = nil
      L37_2 = L0_3
    end
    L0_3 = L38_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L38_2
      L0_3(L1_3)
      L0_3 = nil
      L38_2 = L0_3
    end
    L0_3 = L11_2
    if L0_3 then
      L0_3 = L34_2
      if L0_3 then
        L0_3 = timer
        L0_3 = L0_3.cancel
        L1_3 = L34_2
        L0_3(L1_3)
        L0_3 = nil
        L34_2 = L0_3
      end
    else
      L0_3 = L36_2
      if L0_3 then
        L0_3 = timer
        L0_3 = L0_3.cancel
        L1_3 = L36_2
        L0_3(L1_3)
        L0_3 = nil
        L36_2 = L0_3
      end
    end
    L0_3 = L39_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L39_2
      L0_3(L1_3)
      L0_3 = nil
      L39_2 = L0_3
    end
    L0_3 = L48_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L48_2
      L0_3(L1_3)
      L0_3 = nil
      L48_2 = L0_3
    end
    L0_3 = L49_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L49_2
      L0_3(L1_3)
      L0_3 = nil
      L49_2 = L0_3
    end
    L0_3 = L41_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L41_2
      L0_3(L1_3)
      L0_3 = nil
      L41_2 = L0_3
    end
  end
  
  function L119_2()
    local L0_3, L1_3
    L0_3 = L33_2
    if L0_3 then
      L0_3 = native
      L0_3 = L0_3.cancelAlert
      L1_3 = L33_2
      L0_3(L1_3)
      L0_3 = nil
      L33_2 = L0_3
    end
    L0_3 = L32_2
    if L0_3 then
      L0_3 = native
      L0_3 = L0_3.cancelAlert
      L1_3 = L32_2
      L0_3(L1_3)
      L0_3 = nil
      L32_2 = L0_3
    end
  end
  
  function L120_2(A0_3)
    local L1_3
    L1_3 = L0_1
    L1_3 = L1_3.onboarding
    L1_3 = L1_3.isActive
    L1_3 = not L1_3
    if L1_3 == true then
      L1_3 = true
      L14_2 = L1_3
    end
  end
  
  function L121_2()
    local L0_3, L1_3
    L0_3 = L21_1
    L0_3.alpha = 1
  end
  
  function L122_2()
    local L0_3, L1_3
    L0_3 = L7_1
    L0_3.alpha = 1
    L0_3 = L20_1
    L0_3.alpha = 1
  end
  
  function L123_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.getSceneName
    L1_3 = "current"
    L0_3 = L0_3(L1_3)
    if L0_3 == "lua.scenes.gamePlay" then
      L0_3 = L7_1
      L1_3 = L113_2
      L0_3.touch = L1_3
      L0_3 = L5_1
      L1_3 = L47_2
      L0_3.touch = L1_3
      L0_3 = L8_1
      L1_3 = L116_2
      L0_3.touch = L1_3
      L0_3 = L5_1
      L1_3 = L0_3
      L0_3 = L0_3.addEventListener
      L2_3 = "touch"
      L3_3 = L5_1
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L7_1
      L1_3 = L0_3
      L0_3 = L0_3.addEventListener
      L2_3 = "touch"
      L3_3 = L7_1
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L8_1
      L1_3 = L0_3
      L0_3 = L0_3.addEventListener
      L2_3 = "touch"
      L3_3 = L8_1
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L120_2
      L0_3()
    end
  end
  
  function L124_2()
    local L0_3, L1_3, L2_3
    L0_3 = L12_1
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L8_1
    L0_3(L1_3, L2_3)
    L0_3 = L12_1
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L17_1
    L0_3(L1_3, L2_3)
    L0_3 = L12_1
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L4_2
    L0_3(L1_3, L2_3)
    L0_3 = L10_1
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L7_1
    L0_3(L1_3, L2_3)
    L0_3 = L10_1
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L20_1
    L0_3(L1_3, L2_3)
    L0_3 = L11_1
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L21_1
    L0_3(L1_3, L2_3)
    L0_3 = L11_1
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L6_1
    L0_3(L1_3, L2_3)
    L0_3 = L11_1
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L44_2
    L0_3(L1_3, L2_3)
    L0_3 = L11_1
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L9_1
    L0_3(L1_3, L2_3)
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L12_1
    L0_3(L1_3, L2_3)
  end
  
  function L125_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L13_2
    if L0_3 then
      return
    end
    L0_3 = 1
    L1_3 = L29_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L29_2
      L4_3 = L4_3[L3_3]
      if L4_3 then
        L4_3 = L13_1
        L5_3 = L4_3
        L4_3 = L4_3.insert
        L6_3 = L29_2
        L6_3 = L6_3[L3_3]
        L6_3 = L6_3.getBodyPartsGroup
        L6_3 = L6_3()
        L4_3(L5_3, L6_3)
      end
    end
    L0_3 = 1
    L1_3 = L29_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L29_2
      L4_3 = L4_3[L3_3]
      if L4_3 then
        L4_3 = L13_1
        L5_3 = L4_3
        L4_3 = L4_3.insert
        L6_3 = L29_2
        L6_3 = L6_3[L3_3]
        L4_3(L5_3, L6_3)
      end
    end
  end
  
  function L126_2()
    local L0_3, L1_3
    L0_3 = L12_1
    if L0_3 then
      L0_3 = L12_1
      L0_3.isVisible = false
      L0_3 = L12_1
      L0_3.isHitTestable = true
    end
  end
  
  function L127_2(A0_3)
    local L1_3
    L1_3 = L15_2
    if L1_3 == true then
      L1_3 = false
      L15_2 = L1_3
      L1_3 = L106_2
      L1_3()
    end
  end
  
  function L128_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.phase
    L2_3 = A0_3.keyName
    if L1_3 == "up" and L2_3 == "back" then
      L3_3 = L14_2
      if L3_3 then
        L3_3 = true
        L15_2 = L3_3
      end
      L3_3 = true
      return L3_3
    end
    L3_3 = false
    return L3_3
  end
  
  function L129_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = {}
    L1_3.phase = "began"
    L2_3 = A0_3.keyName
    if L2_3 == "a" then
      L2_3 = A0_3.phase
      if L2_3 == "down" then
        L2_3 = L47_2
        L3_3 = nil
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
    end
    else
      L2_3 = A0_3.keyName
      if L2_3 == "d" then
        L2_3 = A0_3.phase
        if L2_3 == "down" then
          L2_3 = L113_2
          L3_3 = nil
          L4_3 = L1_3
          L2_3(L3_3, L4_3)
        end
      end
    end
    L2_3 = false
    return L2_3
  end
  
  function L130_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = true
    L13_2 = L0_3
    L0_3 = transition
    L0_3 = L0_3.cancel
    L1_3 = "selfArrowTransition"
    L0_3(L1_3)
    L0_3 = L53_2
    if L0_3 then
      L0_3 = L53_2
      L0_3 = #L0_3
      if 10 < L0_3 then
        L0_3 = 0
        L1_3 = 1
        L2_3 = L53_2
        L2_3 = #L2_3
        L3_3 = 1
        for L4_3 = L1_3, L2_3, L3_3 do
          L5_3 = L53_2
          L5_3 = L5_3[L4_3]
          L0_3 = L0_3 + L5_3
        end
        L1_3 = L53_2
        L1_3 = #L1_3
        L1_3 = L0_3 / L1_3
        L2_3 = print
        L3_3 = "INFO: avg fps log: "
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
        L2_3 = L55_2
        if L1_3 < L2_3 then
          L2_3 = L0_1
          L2_3.criticalFPSPerformanceDetected = true
        end
      end
    end
    L0_3 = L92_2
    if L0_3 then
      L0_3 = Runtime
      L1_3 = L0_3
      L0_3 = L0_3.removeEventListener
      L2_3 = "enterFrame"
      L3_3 = L92_2
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = nil
      L92_2 = L0_3
    end
    L0_3 = L128_2
    if L0_3 then
      L0_3 = Runtime
      L1_3 = L0_3
      L0_3 = L0_3.removeEventListener
      L2_3 = "key"
      L3_3 = L128_2
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = nil
      L128_2 = L0_3
    end
    L0_3 = L127_2
    if L0_3 then
      L0_3 = Runtime
      L1_3 = L0_3
      L0_3 = L0_3.removeEventListener
      L2_3 = "enterFrame"
      L3_3 = L127_2
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = nil
      L127_2 = L0_3
    end
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.crazyModeActive
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.data
      L0_3 = L0_3.gameInfo
      L0_3.crazyModeActive = false
      L0_3 = L0_1
      L0_3 = L0_3.data
      L0_3 = L0_3.gameInfo
      L0_3.crazyModePostLobby = true
    end
    L0_3 = isSimulator
    if L0_3 then
      L0_3 = Runtime
      L1_3 = L0_3
      L0_3 = L0_3.removeEventListener
      L2_3 = "key"
      L3_3 = L129_2
      L0_3(L1_3, L2_3, L3_3)
    end
    L0_3 = system
    L0_3 = L0_3.deactivate
    L1_3 = "multitouch"
    L0_3(L1_3)
    L0_3 = L119_2
    L0_3()
    L0_3 = L118_2
    L0_3()
    L0_3 = L7_2
    L0_3 = L0_3.clean
    L0_3()
    L0_3 = 1
    L1_3 = L29_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L29_2
      L4_3 = L4_3[L3_3]
      L4_3 = L4_3.clean
      L4_3()
    end
    L0_3 = nil
    L29_2 = L0_3
    L0_3 = L5_2
    L0_3 = L0_3.clean
    L0_3()
    L0_3 = nil
    L16_1 = L0_3
    L0_3 = L6_2
    L0_3 = L0_3.stop
    L0_3()
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "mapDone"
    L3_3 = L125_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L0_1
    L0_3 = L0_3.comm
    L0_3 = L0_3.playerStateUpdate
    L1_3 = 1
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.debugger
    L0_3 = L0_3.clean
    L0_3()
    L0_3 = L71_2
    L0_3()
    L0_3 = L9_2
    L0_3 = L0_3.clean
    L0_3()
    L0_3 = L0_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.isActive
    if L0_3 == true then
      L0_3 = L0_1
      L0_3 = L0_3.onboarding
      L0_3 = L0_3.clean
      L0_3()
    end
    L0_3 = L24_1
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L24_1
      L0_3(L1_3)
      L0_3 = nil
      L24_1 = L0_3
    end
    L0_3 = L0_1
    L0_3 = L0_3.comm
    L0_3 = L0_3.changeReadInterval
    L1_3 = 35
    L0_3(L1_3)
  end
  
  L27_1 = L130_2
  
  function L130_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L0_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.timeToStartGame
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()
    L0_3 = L0_3 - L1_3
    L1_3 = L0_3 % 1000
    L2_3 = L59_2
    L3_3 = L0_3 - L1_3
    L3_3 = L3_3 / 1000
    L2_3 = L2_3(L3_3)
    
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L2_3
      if 0 < L0_4 then
        L0_4 = L2_3
        L0_4 = L0_4 - 1
        L18_2 = L0_4
        L0_4 = timer
        L0_4 = L0_4.performWithDelay
        L1_4 = 1000
        L2_4 = L109_2
        L3_4 = L2_3
        L0_4 = L0_4(L1_4, L2_4, L3_4)
        L36_2 = L0_4
      end
    end
    
    if 0 < L1_3 then
      L4_3 = timer
      L4_3 = L4_3.performWithDelay
      L5_3 = L1_3
      L6_3 = L3_3
      L4_3 = L4_3(L5_3, L6_3)
      L36_2 = L4_3
    else
      L4_3 = L3_3
      L4_3()
    end
  end
  
  function L131_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = L0_1
    L0_3 = L0_3.debugger
    L0_3 = L0_3.clean
    L0_3()
    L0_3 = L6_2
    L0_3 = L0_3.setVelocityIterations
    L1_3 = 3
    L0_3(L1_3)
    L0_3 = L6_2
    L0_3 = L0_3.setPositionIterations
    L1_3 = 8
    L0_3(L1_3)
    L0_3 = L6_2
    L0_3 = L0_3.start
    L0_3()
    L0_3 = L6_2
    L0_3 = L0_3.setGravity
    L1_3 = 0
    L2_3 = 20
    L0_3(L1_3, L2_3)
    L0_3 = L0_1
    L1_3 = {}
    L0_3.powerUpPositions = L1_3
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "mapDone"
    L3_3 = L125_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L5_2
    L0_3 = L0_3.generateMap
    L1_3 = L0_1
    L1_3 = L1_3.data
    L1_3 = L1_3.gameInfo
    L1_3 = L1_3.map
    L2_3 = L13_1
    L3_3 = L14_1
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2
    L0_3 = L0_3.view
    L2_3 = L0_3
    L1_3 = L0_3.insert
    L3_3 = 1
    L4_3 = L5_2
    L4_3 = L4_3.getDisplayGroup
    L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L4_3()
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L1_3 = L5_2
    L1_3 = L1_3.getStartPos
    L1_3, L2_3 = L1_3()
    L3_3 = L0_1
    L3_3 = L3_3.data
    L3_3 = L3_3.currentLevelTheme
    if L3_3 ~= "space" then
      L3_3 = L73_2
      L4_3 = L1_3
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
    end
    L3_3 = L69_2
    L4_3 = L1_3
    L5_3 = L2_3
    L3_3(L4_3, L5_3)
    L3_3 = 1
    L4_3 = L29_2
    L4_3 = #L4_3
    L5_3 = 1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = L29_2
      L7_3 = L7_3[L6_3]
      L7_3 = L7_3.playerId
      L8_3 = L45_2
      if L7_3 == L8_3 then
        L7_3 = L29_2
        L7_3 = L7_3[L6_3]
        L31_2 = L7_3
        L7_3 = L29_2
        L7_3 = #L7_3
        L7_3 = L7_3 - L6_3
        L7_3 = L7_3 + 1
        L22_2 = L7_3
        L7_3 = L31_2
        L7_3 = L7_3.setUpdatePowerUpImageFunction
        L8_3 = L80_2
        L7_3(L8_3)
        L7_3 = L31_2
        L7_3.mobileUser = true
        L7_3 = L92_2
        L7_3()
        L7_3 = L5_2
        L7_3 = L7_3.addmapNameText
        L8_3 = L14_1
        L9_3 = L29_2
        L9_3 = L9_3[L6_3]
        L9_3 = L9_3.x
        L10_3 = L29_2
        L10_3 = L10_3[L6_3]
        L10_3 = L10_3.y
        L7_3(L8_3, L9_3, L10_3)
        L7_3 = L5_2
        L7_3 = L7_3.addBestTimeText
        L8_3 = L14_1
        L9_3 = L29_2
        L9_3 = L9_3[L6_3]
        L9_3 = L9_3.x
        L10_3 = L29_2
        L10_3 = L10_3[L6_3]
        L10_3 = L10_3.y
        L7_3(L8_3, L9_3, L10_3)
      end
      L7_3 = L29_2
      L7_3 = L7_3[L6_3]
      L7_3.connected = false
      L7_3 = L29_2
      L7_3 = L7_3[L6_3]
      L7_3 = L7_3.setKillMessageFunction
      L8_3 = L86_2
      L7_3(L8_3)
    end
    L3_3 = L7_2
    L3_3 = L3_3.init
    L3_3()
    L3_3 = L7_2
    L3_3 = L3_3.addPlaySoundFunction
    L4_3 = L60_2
    L3_3(L4_3)
    L3_3 = L80_2
    L4_3 = L31_2
    L4_3 = L4_3.getPowerUp
    L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L4_3()
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L3_3 = 1
    L4_3 = L29_2
    L4_3 = #L4_3
    L5_3 = 1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = L26_2
      L8_3 = L29_2
      L8_3 = L8_3[L6_3]
      L8_3 = L8_3.getPlayerHead
      L8_3 = L8_3()
      L7_3[L6_3] = L8_3
      L7_3 = L26_2
      L7_3 = L7_3[L6_3]
      L8_3 = L29_2
      L8_3 = L8_3[L6_3]
      L8_3 = L8_3.x
      L9_3 = L5_2
      L9_3 = L9_3.getLength
      L9_3 = L9_3()
      L9_3 = L9_3 - 10
      L8_3 = L8_3 / L9_3
      L9_3 = L28_2
      L8_3 = L8_3 * L9_3
      L9_3 = L27_2
      L8_3 = L8_3 + L9_3
      L7_3.x = L8_3
      L7_3 = L26_2
      L7_3 = L7_3[L6_3]
      L8_3 = display
      L8_3 = L8_3.contentHeight
      L7_3.y = L8_3
      L7_3 = L12_1
      L8_3 = L7_3
      L7_3 = L7_3.insert
      L9_3 = L26_2
      L9_3 = L9_3[L6_3]
      L7_3(L8_3, L9_3)
    end
    L3_3 = L12_1
    L4_3 = L3_3
    L3_3 = L3_3.insert
    L5_3 = L26_2
    L6_3 = L31_2
    L6_3 = L6_3.id
    L5_3 = L5_3[L6_3]
    L3_3(L4_3, L5_3)
    L3_3 = L83_2
    L4_3 = L22_2
    L3_3(L4_3)
    L3_3 = timer
    L3_3 = L3_3.performWithDelay
    L4_3 = 100
    L5_3 = L96_2
    L6_3 = 0
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L35_2 = L3_3
    L3_3 = timer
    L3_3 = L3_3.performWithDelay
    L4_3 = 4000
    L5_3 = L78_2
    L6_3 = 0
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L49_2 = L3_3
    L3_3 = L11_2
    if L3_3 then
      L3_3 = system
      L3_3 = L3_3.getTimer
      L3_3 = L3_3()
      L19_2 = L3_3
      L3_3 = L0_1
      L3_3 = L3_3.tcpClient
      L3_3 = L3_3.setReceiveFunction
      L4_3 = L28_1
      L3_3(L4_3)
      L3_3 = timer
      L3_3 = L3_3.performWithDelay
      L4_3 = 500
      L5_3 = L112_2
      L6_3 = 0
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L34_2 = L3_3
      L3_3 = timer
      L3_3 = L3_3.performWithDelay
      L4_3 = 18000
      L5_3 = L117_2
      L6_3 = 1
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L38_2 = L3_3
      L3_3 = L130_2
      L3_3()
    else
      L3_3 = L0_1
      L3_3 = L3_3.onboarding
      L3_3 = L3_3.isActive
      if L3_3 == true then
        L3_3 = L0_1
        L3_3 = L3_3.onboarding
        L3_3 = L3_3.overrideCountdown
        L3_3 = L3_3()
        if L3_3 then
          L3_3 = L0_1
          L3_3 = L3_3.onboarding
          L3_3 = L3_3.manualStart
          L3_3 = L3_3()
          if L3_3 then
            L3_3 = L0_1
            L3_3 = L3_3.onboarding
            L3_3 = L3_3.setManualStart
            L4_3 = L108_2
            L3_3(L4_3)
          else
            L3_3 = timer
            L3_3 = L3_3.performWithDelay
            L4_3 = 2000
            L5_3 = L108_2
            L6_3 = 1
            L3_3 = L3_3(L4_3, L5_3, L6_3)
            L36_2 = L3_3
          end
      end
      else
        L3_3 = timer
        L3_3 = L3_3.performWithDelay
        L4_3 = 1000
        L5_3 = L109_2
        L6_3 = 7
        L3_3 = L3_3(L4_3, L5_3, L6_3)
        L36_2 = L3_3
      end
    end
    L3_3 = L124_2
    L3_3()
    L3_3 = L90_2
    L4_3 = L31_2
    L4_3 = L4_3.x
    L3_3(L4_3)
    L3_3 = Runtime
    L4_3 = L3_3
    L3_3 = L3_3.addEventListener
    L5_3 = "enterFrame"
    L6_3 = L92_2
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = timer
    L3_3 = L3_3.performWithDelay
    L4_3 = 500
    L5_3 = L123_2
    L6_3 = 1
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L42_2 = L3_3
    L3_3 = L0_1
    L3_3 = L3_3.comm
    L3_3 = L3_3.playerStateUpdate
    L4_3 = 2
    L3_3(L4_3)
    L3_3 = isSimulator
    if L3_3 then
      L3_3 = L0_1
      L3_3 = L3_3.config
      L3_3 = L3_3.bot
      if L3_3 then
        L3_3 = timer
        L3_3 = L3_3.performWithDelay
        L4_3 = 100000
        L5_3 = L101_2
        L3_3 = L3_3(L4_3, L5_3)
        L41_2 = L3_3
      end
    end
    L3_3 = isSimulator
    if L3_3 then
      L3_3 = Runtime
      L4_3 = L3_3
      L3_3 = L3_3.addEventListener
      L5_3 = "key"
      L6_3 = L129_2
      L3_3(L4_3, L5_3, L6_3)
    end
    L3_3 = L0_1
    L3_3 = L3_3.config
    L3_3 = L3_3.hideUI
    if L3_3 then
      L3_3 = L126_2
      L3_3()
    end
    L3_3 = Runtime
    L4_3 = L3_3
    L3_3 = L3_3.addEventListener
    L5_3 = "key"
    L6_3 = L128_2
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = Runtime
    L4_3 = L3_3
    L3_3 = L3_3.addEventListener
    L5_3 = "enterFrame"
    L6_3 = L127_2
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = L0_1
    L3_3 = L3_3.data
    L3_3 = L3_3.gameInfo
    L3_3 = L3_3.crazyModeActive
    if L3_3 then
      L3_3 = L1_1
      L3_3 = L3_3.showCrazyMode
      L4_3 = L0_1
      L4_3 = L4_3.data
      L4_3 = L4_3.gameInfo
      L4_3 = L4_3.crazyMode
      L3_3(L4_3)
    end
    L3_3 = L70_2
    L3_3()
  end
  
  L132_2 = L131_2
  L132_2()
  L132_2 = L0_1
  L132_2 = L132_2.onboarding
  L132_2 = L132_2.isActive
  if L132_2 == true then
    L132_2 = L0_1
    L132_2 = L132_2.onboarding
    L132_2 = L132_2.addGuiReference
    L133_2 = "killMessages"
    L134_2 = L4_2
    L132_2(L133_2, L134_2)
    L132_2 = L0_1
    L132_2 = L132_2.onboarding
    L132_2 = L132_2.addGuiReference
    L133_2 = "countdown"
    L134_2 = L16_1
    L132_2(L133_2, L134_2)
    L132_2 = 1
    L133_2 = #L29_2
    L134_2 = 1
    for L135_2 = L132_2, L133_2, L134_2 do
      L136_2 = L0_1
      L136_2 = L136_2.onboarding
      L136_2 = L136_2.addGuiReference
      L137_2 = "bottomBar"
      L138_2 = L26_2[L135_2]
      L136_2(L137_2, L138_2)
    end
    L132_2 = L0_1
    L132_2 = L132_2.onboarding
    L132_2 = L132_2.onSetupGameComplete
    L133_2 = L29_2
    L134_2 = L13_1
    L135_2 = L3_2
    L136_2 = L6_2
    L137_2 = L14_1
    L132_2(L133_2, L134_2, L135_2, L136_2, L137_2)
    L132_2 = L0_1
    L132_2 = L132_2.onboarding
    L132_2 = L132_2.setGameCleanFunction
    L133_2 = L27_1
    L132_2(L133_2)
  end
  
  function L132_2()
    local L0_3, L1_3
    L0_3 = L90_2
    L1_3 = L31_2
    L1_3 = L1_3.x
    L0_3(L1_3)
  end
  
  L133_2 = timer
  L133_2 = L133_2.performWithDelay
  L134_2 = 150
  L135_2 = L132_2
  L136_2 = 1
  L133_2 = L133_2(L134_2, L135_2, L136_2)
  L24_1 = L133_2
  L133_2 = L0_1
  L133_2 = L133_2.comm
  L133_2 = L133_2.changeReadInterval
  L134_2 = 200
  L133_2(L134_2)
  L133_2 = L0_1
  L133_2 = L133_2.replayKit
  L133_2 = L133_2.startAutoRecord
  L133_2()
end

L3_1.show = L29_1

function L29_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L3_2 = L0_1
    L3_2 = L3_2.removeScene
    L4_2 = "lua.scenes.gamePlay"
    L3_2(L4_2)
    return
  end
  L3_2 = L27_1
  if L3_2 then
    L3_2 = L27_1
    L3_2()
    L3_2 = nil
    L27_1 = L3_2
  end
end

L3_1.hide = L29_1

function L29_1(A0_2, A1_2)
  local L2_2
  L2_2 = L26_1
  if L2_2 then
    L2_2 = L26_1
    L2_2()
    L2_2 = nil
    L26_1 = L2_2
  end
end

L3_1.destroy = L29_1
L30_1 = L3_1
L29_1 = L3_1.addEventListener
L31_1 = "create"
L32_1 = L3_1
L29_1(L30_1, L31_1, L32_1)
L30_1 = L3_1
L29_1 = L3_1.addEventListener
L31_1 = "show"
L32_1 = L3_1
L29_1(L30_1, L31_1, L32_1)
L30_1 = L3_1
L29_1 = L3_1.addEventListener
L31_1 = "hide"
L32_1 = L3_1
L29_1(L30_1, L31_1, L32_1)
L30_1 = L3_1
L29_1 = L3_1.addEventListener
L31_1 = "destroy"
L32_1 = L3_1
L29_1(L30_1, L31_1, L32_1)
return L3_1
