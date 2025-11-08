local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "lua.modules.jsonParser"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "crypto"
L3_1 = L3_1(L4_1)
L4_1 = false
L5_1 = false
L6_1 = false
L7_1 = false
L8_1 = false
L9_1 = false
L10_1 = false
L11_1 = false
L12_1 = require
L13_1 = "lua.modules.jsonMapInfoHandler"
L12_1 = L12_1(L13_1)
L1_1.mapHandler = L12_1

function L12_1()
  local L0_2, L1_2, L2_2
  L0_2 = L5_1
  if L0_2 then
    return
  end
  L0_2 = L1_1
  L0_2 = L0_2.data
  L0_2 = L0_2.sounds
  L1_2 = audio
  L1_2 = L1_2.loadSound
  L2_2 = "sound/sfx_button_back.wav"
  L1_2 = L1_2(L2_2)
  L0_2.button_back = L1_2
  L1_2 = audio
  L1_2 = L1_2.loadSound
  L2_2 = "sound/sfx_button_press.wav"
  L1_2 = L1_2(L2_2)
  L0_2.button_press = L1_2
  L1_2 = audio
  L1_2 = L1_2.loadSound
  L2_2 = "sound/sfx_dropdown_menu.wav"
  L1_2 = L1_2(L2_2)
  L0_2.dropdown_menu = L1_2
end

L0_1.loadBaseSounds = L12_1

function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L4_1
  if L0_2 then
    return
  end
  L0_2 = system
  L0_2 = L0_2.getTimer
  L0_2 = L0_2()
  L1_2 = L0_1
  L1_2 = L1_2.loadBaseSounds
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.data
  L1_2 = L1_2.sounds
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_armor_activate.wav"
  L2_2 = L2_2(L3_2)
  L1_2.armor_activate = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_armor_end.wav"
  L2_2 = L2_2(L3_2)
  L1_2.armor_end = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_blade_activate.wav"
  L2_2 = L2_2(L3_2)
  L1_2.blade_activate = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_blade_hit.wav"
  L2_2 = L2_2(L3_2)
  L1_2.blade_hit = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_blood.wav"
  L2_2 = L2_2(L3_2)
  L1_2.blood = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_bounce_activate.wav"
  L2_2 = L2_2(L3_2)
  L1_2.bounce_activate = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_bounce_hit.wav"
  L2_2 = L2_2(L3_2)
  L1_2.bounce_hit = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_bounce_tile.wav"
  L2_2 = L2_2(L3_2)
  L1_2.bounce_tile = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_bounce_tile_space.wav"
  L2_2 = L2_2(L3_2)
  L1_2.bounce_tile_space = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_buy_item.wav"
  L2_2 = L2_2(L3_2)
  L1_2.buy_item = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_cannon.wav"
  L2_2 = L2_2(L3_2)
  L1_2.cannon = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_collect_achievement.wav"
  L2_2 = L2_2(L3_2)
  L1_2.collect_achievement = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_crowd_cheer.wav"
  L2_2 = L2_2(L3_2)
  L1_2.crowd_cheer = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_coins.wav"
  L2_2 = L2_2(L3_2)
  L1_2.coins = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_coins_end.wav"
  L2_2 = L2_2(L3_2)
  L1_2.coins_end = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_countdown.wav"
  L2_2 = L2_2(L3_2)
  L1_2.countdown = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_dropdown.wav"
  L2_2 = L2_2(L3_2)
  L1_2.dropdown = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_dropdown_achievement.wav"
  L2_2 = L2_2(L3_2)
  L1_2.dropdown_achievement = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_hunter_activate.wav"
  L2_2 = L2_2(L3_2)
  L1_2.hunter_activate = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_hunter_hit.wav"
  L2_2 = L2_2(L3_2)
  L1_2.hunter_hit = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_invul_activate.wav"
  L2_2 = L2_2(L3_2)
  L1_2.invul_activate = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_invul_end.wav"
  L2_2 = L2_2(L3_2)
  L1_2.invul_end = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_jump.wav"
  L2_2 = L2_2(L3_2)
  L1_2.jump = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_lightning_activate.wav"
  L2_2 = L2_2(L3_2)
  L1_2.lightning_activate = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_lightning_hit.wav"
  L2_2 = L2_2(L3_2)
  L1_2.lightning_hit = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_magnet_activate.wav"
  L2_2 = L2_2(L3_2)
  L1_2.magnet_activate = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_magnet_hit.wav"
  L2_2 = L2_2(L3_2)
  L1_2.magnet_hit = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_message_received.wav"
  L2_2 = L2_2(L3_2)
  L1_2.message_received = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_no_powerup.wav"
  L2_2 = L2_2(L3_2)
  L1_2.no_powerup = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_pickup.wav"
  L2_2 = L2_2(L3_2)
  L1_2.pickup = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_rating_short.wav"
  L2_2 = L2_2(L3_2)
  L1_2.rating = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_rating_end.wav"
  L2_2 = L2_2(L3_2)
  L1_2.rating_end = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_rocket_activate.wav"
  L2_2 = L2_2(L3_2)
  L1_2.rocket_activate = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_rocket_hit.wav"
  L2_2 = L2_2(L3_2)
  L1_2.rocket_hit = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_rocket_jump.wav"
  L2_2 = L2_2(L3_2)
  L1_2.rocket_jump = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_speed_activate.wav"
  L2_2 = L2_2(L3_2)
  L1_2.speed_activate = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_speed_tile.wav"
  L2_2 = L2_2(L3_2)
  L1_2.speed_tile = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_spin_wheel.wav"
  L2_2 = L2_2(L3_2)
  L1_2.spin_wheel = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_start.wav"
  L2_2 = L2_2(L3_2)
  L1_2.start = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_teleport_activate.wav"
  L2_2 = L2_2(L3_2)
  L1_2.teleport_activate = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_trap_activate.wav"
  L2_2 = L2_2(L3_2)
  L1_2.trap_activate = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_trap_hit.wav"
  L2_2 = L2_2(L3_2)
  L1_2.trap_hit = L2_2
  L2_2 = audio
  L2_2 = L2_2.loadSound
  L3_2 = "sound/sfx_wheel_win.wav"
  L2_2 = L2_2(L3_2)
  L1_2.wheel_win = L2_2
  L2_2 = system
  L2_2 = L2_2.getTimer
  L2_2 = L2_2()
  L0_2 = L2_2 - L0_2
  L2_2 = L1_1
  L2_2 = L2_2.debugger
  L2_2 = L2_2.debugPrint
  L3_2 = "loadingTime"
  L4_2 = "SOUND timeToLoad  "
  L5_2 = L0_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end

L0_1.loadSounds = L12_1

function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2
  L0_2 = L7_1
  if L0_2 then
    return
  end
  L0_2 = true
  L7_1 = L0_2
  L0_2 = system
  L0_2 = L0_2.getTimer
  L0_2 = L0_2()
  L1_2 = L1_1
  L1_2 = L1_2.data
  L1_2 = L1_2.animations
  L2_2 = L1_1
  L3_2 = require
  L4_2 = "images.gui.clan_v2.emblem.shapes"
  L3_2 = L3_2(L4_2)
  L2_2.clanEmblemShapeSheetInfo = L3_2
  L2_2 = L1_1
  L3_2 = graphics
  L3_2 = L3_2.newImageSheet
  L4_2 = "images/gui/clan_v2/emblem/shapes.png"
  L5_2 = L1_1
  L5_2 = L5_2.clanEmblemShapeSheetInfo
  L6_2 = L5_2
  L5_2 = L5_2.getSheet
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
  L2_2.clanEmblemShapeSheet = L3_2
  L2_2 = L1_1
  L3_2 = require
  L4_2 = "images.gui.clan_v2.emblem.icons"
  L3_2 = L3_2(L4_2)
  L2_2.clanEmblemIconsSheetInfo = L3_2
  L2_2 = L1_1
  L3_2 = graphics
  L3_2 = L3_2.newImageSheet
  L4_2 = "images/gui/clan_v2/emblem/icons.png"
  L5_2 = L1_1
  L5_2 = L5_2.clanEmblemIconsSheetInfo
  L6_2 = L5_2
  L5_2 = L5_2.getSheet
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
  L2_2.clanEmblemIconsSheet = L3_2
  L2_2 = L1_1
  L3_2 = require
  L4_2 = "images.gui.clan_v2.emblem.borders"
  L3_2 = L3_2(L4_2)
  L2_2.clanEmblemBordersSheetInfo = L3_2
  L2_2 = L1_1
  L3_2 = graphics
  L3_2 = L3_2.newImageSheet
  L4_2 = "images/gui/clan_v2/emblem/borders.png"
  L5_2 = L1_1
  L5_2 = L5_2.clanEmblemBordersSheetInfo
  L6_2 = L5_2
  L5_2 = L5_2.getSheet
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
  L2_2.clanEmblemBordersSheet = L3_2
  L2_2 = L1_1
  L3_2 = require
  L4_2 = "images.gui.postgame.adCoins.adCoins"
  L3_2 = L3_2(L4_2)
  L2_2.adBoostImageSheetInfo = L3_2
  L2_2 = L1_1
  L3_2 = graphics
  L3_2 = L3_2.newImageSheet
  L4_2 = "images/gui/postgame/adCoins/adCoins.png"
  L5_2 = L1_1
  L5_2 = L5_2.adBoostImageSheetInfo
  L6_2 = L5_2
  L5_2 = L5_2.getSheet
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
  L2_2.adBoostImageSheet = L3_2
  L2_2 = L1_1
  L3_2 = require
  L4_2 = "lua.game.powerups.effectsImageSheet"
  L3_2 = L3_2(L4_2)
  L2_2.powerUpEffectImageSheetInfo = L3_2
  L2_2 = L1_1
  L3_2 = graphics
  L3_2 = L3_2.newImageSheet
  L4_2 = "images/game/powerups/effects.png"
  L5_2 = L1_1
  L5_2 = L5_2.powerUpEffectImageSheetInfo
  L6_2 = L5_2
  L5_2 = L5_2.getSheet
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
  L2_2.powerUpEffectImageSheet = L3_2
  L2_2 = L1_1
  L3_2 = require
  L4_2 = "lua.game.powerups.ghostImageSheet"
  L3_2 = L3_2(L4_2)
  L2_2.ghostImageSheetInfo = L3_2
  L2_2 = L1_1
  L3_2 = graphics
  L3_2 = L3_2.newImageSheet
  L4_2 = "images/game/powerups/ghost.png"
  L5_2 = L1_1
  L5_2 = L5_2.ghostImageSheetInfo
  L6_2 = L5_2
  L5_2 = L5_2.getSheet
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
  L2_2.ghostImageSheet = L3_2
  L2_2 = L1_1
  L3_2 = require
  L4_2 = "lua.monsters.powerUpEffects"
  L3_2 = L3_2(L4_2)
  L2_2.characterPowerUpEffectsImageSheetInfo = L3_2
  L2_2 = L1_1
  L3_2 = graphics
  L3_2 = L3_2.newImageSheet
  L4_2 = "images/monsters/powerups/powerUpEffects.png"
  L5_2 = L1_1
  L5_2 = L5_2.characterPowerUpEffectsImageSheetInfo
  L6_2 = L5_2
  L5_2 = L5_2.getSheet
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
  L2_2.characterPowerUpEffectsImageSheet = L3_2
  L2_2 = L1_1
  L3_2 = require
  L4_2 = "lua.monsters.powerUpEffectsSpeed"
  L3_2 = L3_2(L4_2)
  L2_2.characterPowerUpEffectsSpeedImageSheetInfo = L3_2
  L2_2 = L1_1
  L3_2 = graphics
  L3_2 = L3_2.newImageSheet
  L4_2 = "images/monsters/powerups/powerUpEffectsSpeed.png"
  L5_2 = L1_1
  L5_2 = L5_2.characterPowerUpEffectsSpeedImageSheetInfo
  L6_2 = L5_2
  L5_2 = L5_2.getSheet
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
  L2_2.characterPowerUpEffectsSpeedImageSheet = L3_2
  L2_2 = L1_1
  L2_2 = L2_2.ghostImageSheetInfo
  L3_2 = L2_2
  L2_2 = L2_2.getFrameIndex
  L4_2 = "skeletonGhost-white-aura_00"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = {}
  L3_2.name = "normal"
  L3_2.start = L2_2
  L3_2.count = 18
  L3_2.time = 300
  L3_2.loopCount = 0
  L1_2.ghost = L3_2
  L4_2 = L1_1
  L4_2 = L4_2.powerUpEffectImageSheetInfo
  L5_2 = L4_2
  L4_2 = L4_2.getFrameIndex
  L6_2 = "deathCloud_1"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = {}
  L5_2.name = "normal"
  L5_2.start = L4_2
  L5_2.count = 8
  L5_2.time = 400
  L5_2.loopCount = 1
  L1_2.deathCloud = L5_2
  L6_2 = L1_1
  L6_2 = L6_2.powerUpEffectImageSheetInfo
  L7_2 = L6_2
  L6_2 = L6_2.getFrameIndex
  L8_2 = "lightningBolt1"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = {}
  L7_2.name = "normal"
  L7_2.start = L6_2
  L7_2.count = 2
  L7_2.time = 400
  L7_2.loopCount = 2
  L1_2.lightningBoltSet = L7_2
  L8_2 = L1_1
  L8_2 = L8_2.powerUpEffectImageSheetInfo
  L9_2 = L8_2
  L8_2 = L8_2.getFrameIndex
  L10_2 = "lightning1"
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = {}
  L9_2.name = "normal"
  L9_2.start = L8_2
  L9_2.count = 2
  L9_2.time = 300
  L9_2.loopCount = 2
  L1_2.lightningBackSet = L9_2
  L10_2 = L1_1
  L10_2 = L10_2.powerUpEffectImageSheetInfo
  L11_2 = L10_2
  L10_2 = L10_2.getFrameIndex
  L12_2 = "magnetPull1"
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = {}
  L11_2.name = "normal"
  L11_2.start = L10_2
  L11_2.count = 3
  L11_2.time = 400
  L11_2.loopCount = 1
  L1_2.magnetEffect = L11_2
  L12_2 = L1_1
  L12_2 = L12_2.powerUpEffectImageSheetInfo
  L13_2 = L12_2
  L12_2 = L12_2.getFrameIndex
  L14_2 = "explo1"
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = {}
  L13_2.name = "normal"
  L13_2.start = L12_2
  L13_2.count = 8
  L13_2.time = 500
  L13_2.loopCount = 1
  L1_2.rocketEffect = L13_2
  L14_2 = L1_1
  L14_2 = L14_2.powerUpEffectImageSheetInfo
  L15_2 = L14_2
  L14_2 = L14_2.getFrameIndex
  L16_2 = "bloodspray1"
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = {}
  L15_2.name = "normal"
  L15_2.start = L14_2
  L15_2.count = 5
  L15_2.time = 400
  L15_2.loopCount = 1
  L1_2.bloodEffect = L15_2
  L16_2 = L1_1
  L16_2 = L16_2.powerUpEffectImageSheetInfo
  L17_2 = L16_2
  L16_2 = L16_2.getFrameIndex
  L18_2 = "bloodsquirt1"
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = {}
  L17_2.name = "normal"
  L17_2.start = L16_2
  L17_2.count = 5
  L17_2.time = 300
  L17_2.loopCount = 3
  L1_2.bloodSquirt = L17_2
  L18_2 = L1_1
  L18_2 = L18_2.powerUpEffectImageSheetInfo
  L19_2 = L18_2
  L18_2 = L18_2.getFrameIndex
  L20_2 = "bloodLL1"
  L18_2 = L18_2(L19_2, L20_2)
  L19_2 = {}
  L19_2.name = "normal"
  L19_2.start = L18_2
  L19_2.count = 3
  L19_2.time = 100
  L19_2.loopCount = 1
  L1_2.llBloodEffect = L19_2
  L20_2 = L1_1
  L20_2 = L20_2.powerUpEffectImageSheetInfo
  L21_2 = L20_2
  L20_2 = L20_2.getFrameIndex
  L22_2 = "bloodTL1"
  L20_2 = L20_2(L21_2, L22_2)
  L21_2 = {}
  L21_2.name = "normal"
  L21_2.start = L20_2
  L21_2.count = 3
  L21_2.time = 100
  L21_2.loopCount = 1
  L1_2.tlBloodEffect = L21_2
  L22_2 = L1_1
  L22_2 = L22_2.powerUpEffectImageSheetInfo
  L23_2 = L22_2
  L22_2 = L22_2.getFrameIndex
  L24_2 = "bloodTR1"
  L22_2 = L22_2(L23_2, L24_2)
  L23_2 = {}
  L23_2.name = "normal"
  L23_2.start = L22_2
  L23_2.count = 3
  L23_2.time = 100
  L23_2.loopCount = 1
  L1_2.trBloodEffect = L23_2
  L24_2 = L1_1
  L24_2 = L24_2.powerUpEffectImageSheetInfo
  L25_2 = L24_2
  L24_2 = L24_2.getFrameIndex
  L26_2 = "jump_cloud1"
  L24_2 = L24_2(L25_2, L26_2)
  L25_2 = {}
  L25_2.name = "normal"
  L25_2.start = L24_2
  L25_2.count = 6
  L25_2.time = 250
  L25_2.loopCount = 1
  L1_2.jumpEffect = L25_2
  L26_2 = L1_1
  L26_2 = L26_2.powerUpEffectImageSheetInfo
  L27_2 = L26_2
  L26_2 = L26_2.getFrameIndex
  L28_2 = "land_cloud1"
  L26_2 = L26_2(L27_2, L28_2)
  L27_2 = {}
  L27_2.name = "normal"
  L27_2.start = L26_2
  L27_2.count = 5
  L27_2.time = 200
  L27_2.loopCount = 1
  L1_2.landEffect = L27_2
  L28_2 = L1_1
  L28_2 = L28_2.powerUpEffectImageSheetInfo
  L29_2 = L28_2
  L28_2 = L28_2.getFrameIndex
  L30_2 = "bloodspray1"
  L28_2 = L28_2(L29_2, L30_2)
  L29_2 = {}
  L29_2.name = "normal"
  L29_2.start = L28_2
  L29_2.count = 5
  L29_2.time = 300
  L29_2.loopCount = 1
  L1_2.markBlood = L29_2
  L30_2 = L1_1
  L30_2 = L30_2.powerUpEffectImageSheetInfo
  L31_2 = L30_2
  L30_2 = L30_2.getFrameIndex
  L32_2 = "write1"
  L30_2 = L30_2(L31_2, L32_2)
  L31_2 = {}
  L31_2.name = "normal"
  L31_2.start = L30_2
  L31_2.count = 3
  L31_2.time = 900
  L31_2.loopCount = 0
  L1_2.chat = L31_2
  L32_2 = L1_1
  L32_2 = L32_2.powerUpEffectImageSheetInfo
  L33_2 = L32_2
  L32_2 = L32_2.getFrameIndex
  L34_2 = "poof1"
  L32_2 = L32_2(L33_2, L34_2)
  L33_2 = {}
  L34_2 = {}
  L34_2.name = "normal"
  L34_2.start = L32_2
  L34_2.count = 6
  L34_2.time = 600
  L34_2.loopCount = 1
  L35_2 = {}
  L35_2.name = "loop"
  L36_2 = L32_2 + 1
  L35_2.start = L36_2
  L35_2.count = 5
  L35_2.time = 500
  L35_2.loopCount = 0
  L36_2 = {}
  L36_2.name = "end"
  L37_2 = L32_2 + 6
  L36_2.start = L37_2
  L36_2.count = 3
  L36_2.time = 300
  L36_2.loopCount = 1
  L33_2[1] = L34_2
  L33_2[2] = L35_2
  L33_2[3] = L36_2
  L1_2.poff = L33_2
  L34_2 = system
  L34_2 = L34_2.getTimer
  L34_2 = L34_2()
  L0_2 = L34_2 - L0_2
  L34_2 = L1_1
  L34_2 = L34_2.debugger
  L34_2 = L34_2.debugPrint
  L35_2 = "loadingTime"
  L36_2 = "Animations3 timeToLoad  "
  L37_2 = L0_2
  L36_2 = L36_2 .. L37_2
  L34_2(L35_2, L36_2)
end

L0_1.loadAnimations3 = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L1_1
  L1_2 = L1_2.data
  L1_2 = L1_2.animations
  L2_2 = L1_1
  L2_2 = L2_2.storeConfig
  L2_2 = L2_2.canDrawItem
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if not L2_2 then
    A0_2 = 1301
  end
  L2_2 = ""
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L2_2 = L1_2[L2_2]
  if L2_2 then
    L2_2 = ""
    L3_2 = A0_2
    L2_2 = L2_2 .. L3_2
    L2_2 = L1_2[L2_2]
    return L2_2
  else
    L2_2 = L1_1
    L2_2 = L2_2.powerUpImageSheetInfo
    L3_2 = L2_2
    L2_2 = L2_2.getFrameIndex
    L4_2 = ""
    L5_2 = A0_2
    L4_2 = L4_2 .. L5_2
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L1_1
    L3_2 = L3_2.powerUpImageSheetInfo
    L4_2 = L3_2
    L3_2 = L3_2.getFrameIndex
    L5_2 = ""
    L6_2 = A0_2
    L7_2 = "_4"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = {}
    L5_2 = {}
    L5_2.name = "close"
    L5_2.start = L2_2
    L5_2.count = 4
    L5_2.time = 70
    L5_2.loopCount = 1
    L6_2 = {}
    L6_2.name = "open"
    L7_2 = {}
    L8_2 = L3_2
    L9_2 = L3_2 - 1
    L10_2 = L3_2 - 2
    L11_2 = L3_2 - 3
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L7_2[3] = L10_2
    L7_2[4] = L11_2
    L6_2.frames = L7_2
    L6_2.time = 1000
    L6_2.loopCount = 1
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L5_2 = ""
    L6_2 = A0_2
    L5_2 = L5_2 .. L6_2
    L1_2[L5_2] = L4_2
    L5_2 = ""
    L6_2 = A0_2
    L5_2 = L5_2 .. L6_2
    L5_2 = L1_2[L5_2]
    return L5_2
  end
end

L0_1.getTrapAnimation = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L1_1
  L1_2 = L1_2.data
  L1_2 = L1_2.animations
  L2_2 = L1_1
  L2_2 = L2_2.storeConfig
  L2_2 = L2_2.canDrawItem
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if not L2_2 then
    A0_2 = 2001
  end
  L2_2 = ""
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L2_2 = L1_2[L2_2]
  if L2_2 then
    L2_2 = ""
    L3_2 = A0_2
    L2_2 = L2_2 .. L3_2
    L2_2 = L1_2[L2_2]
    return L2_2
  else
    L2_2 = L1_1
    L2_2 = L2_2.powerUpImageSheetInfo
    L3_2 = L2_2
    L2_2 = L2_2.getFrameIndex
    L4_2 = ""
    L5_2 = A0_2
    L4_2 = L4_2 .. L5_2
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L1_1
    L3_2 = L3_2.powerUpImageSheetInfo
    L4_2 = L3_2
    L3_2 = L3_2.getFrameIndex
    L5_2 = ""
    L6_2 = A0_2
    L7_2 = "_5"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = {}
    L5_2 = {}
    L5_2.name = "play"
    L5_2.start = L2_2
    L5_2.count = 5
    L5_2.time = 70
    L5_2.loopCount = 1
    L6_2 = {}
    L6_2.name = "reset"
    L7_2 = {}
    L8_2 = L3_2
    L9_2 = L3_2 - 1
    L10_2 = L3_2 - 2
    L11_2 = L3_2 - 3
    L12_2 = L3_2 - 4
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L7_2[3] = L10_2
    L7_2[4] = L11_2
    L7_2[5] = L12_2
    L6_2.frames = L7_2
    L6_2.time = 800
    L6_2.loopCount = 1
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L5_2 = ""
    L6_2 = A0_2
    L5_2 = L5_2 .. L6_2
    L1_2[L5_2] = L4_2
    L5_2 = ""
    L6_2 = A0_2
    L5_2 = L5_2 .. L6_2
    L5_2 = L1_2[L5_2]
    return L5_2
  end
end

L0_1.getBounceTrapAnimation = L12_1

function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = L8_1
  if L0_2 then
    return
  end
  L0_2 = true
  L8_1 = L0_2
  L0_2 = system
  L0_2 = L0_2.getTimer
  L0_2 = L0_2()
  L1_2 = L1_1
  L1_2 = L1_2.data
  L1_2 = L1_2.animations
  L2_2 = L1_1
  L3_2 = require
  L4_2 = "lua.game.powerups.powerupsImageSheet"
  L3_2 = L3_2(L4_2)
  L2_2.powerUpImageSheetInfo = L3_2
  L2_2 = L1_1
  L3_2 = graphics
  L3_2 = L3_2.newImageSheet
  L4_2 = "images/game/powerups/powerups.png"
  L5_2 = L1_1
  L5_2 = L5_2.powerUpImageSheetInfo
  L6_2 = L5_2
  L5_2 = L5_2.getSheet
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L2_2.powerUpImageSheet = L3_2
  L2_2 = L0_1
  L2_2 = L2_2.getTrapAnimation
  L3_2 = 1301
  L2_2 = L2_2(L3_2)
  L1_2["1301"] = L2_2
  L2_2 = L0_1
  L2_2 = L2_2.getBounceTrapAnimation
  L3_2 = 2001
  L2_2 = L2_2(L3_2)
  L1_2["2001"] = L2_2
  L2_2 = L1_1
  L2_2 = L2_2.powerUpImageSheetInfo
  L3_2 = L2_2
  L2_2 = L2_2.getFrameIndex
  L4_2 = "tp1"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_1
  L3_2 = L3_2.powerUpImageSheetInfo
  L4_2 = L3_2
  L3_2 = L3_2.getFrameIndex
  L5_2 = "tp7"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = {}
  L5_2 = {}
  L5_2.name = "start"
  L5_2.start = L2_2
  L5_2.count = 7
  L5_2.time = 400
  L5_2.loopCount = 1
  L6_2 = {}
  L6_2.name = "stop"
  L7_2 = {}
  L8_2 = L3_2
  L9_2 = L3_2 - 1
  L10_2 = L3_2 - 2
  L11_2 = L3_2 - 3
  L12_2 = L3_2 - 4
  L13_2 = L3_2 - 5
  L14_2 = L3_2 - 6
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L7_2[5] = L12_2
  L7_2[6] = L13_2
  L7_2[7] = L14_2
  L6_2.frames = L7_2
  L6_2.time = 400
  L6_2.loopCount = 1
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L1_2.teleportEffect = L4_2
  L5_2 = system
  L5_2 = L5_2.getTimer
  L5_2 = L5_2()
  L0_2 = L5_2 - L0_2
  L5_2 = L1_1
  L5_2 = L5_2.debugger
  L5_2 = L5_2.debugPrint
  L6_2 = "loadingTime"
  L7_2 = "Animations2 timeToLoad  "
  L8_2 = L0_2
  L7_2 = L7_2 .. L8_2
  L5_2(L6_2, L7_2)
end

L0_1.loadAnimations2 = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = L1_1
  L1_2 = L1_2.data
  L1_2 = L1_2.animations
  if A0_2 then
    L2_2 = "puButtonEffect"
    L3_2 = A0_2
    L2_2 = L2_2 .. L3_2
    L2_2 = L1_2[L2_2]
    if L2_2 then
      L2_2 = "puButtonEffect"
      L3_2 = A0_2
      L2_2 = L2_2 .. L3_2
      L2_2 = L1_2[L2_2]
      return L2_2
    else
      L2_2 = L1_1
      L2_2 = L2_2.powerUpFXImageSheetInfo
      L3_2 = L2_2
      L2_2 = L2_2.getFrameIndex
      L4_2 = "activate"
      L5_2 = A0_2
      L4_2 = L4_2 .. L5_2
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = L1_1
      L3_2 = L3_2.powerUpFXImageSheetInfo
      L4_2 = L3_2
      L3_2 = L3_2.getFrameIndex
      L5_2 = "activate"
      L6_2 = A0_2
      L7_2 = "_6"
      L5_2 = L5_2 .. L6_2 .. L7_2
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = {}
      L5_2 = {}
      L5_2.name = "click"
      L5_2.start = L2_2
      L5_2.count = 6
      L5_2.time = 200
      L5_2.loopCount = 1
      L5_2.loopDirection = "bounce"
      L6_2 = {}
      L6_2.name = "gotPU"
      L6_2.start = L2_2
      L6_2.count = 6
      L6_2.time = 100
      L6_2.loopCount = 1
      L7_2 = {}
      L7_2.name = "close"
      L8_2 = {}
      L9_2 = L3_2
      L10_2 = L3_2 - 1
      L11_2 = L3_2 - 2
      L12_2 = L3_2 - 3
      L13_2 = L3_2 - 4
      L14_2 = L3_2 - 5
      L8_2[1] = L9_2
      L8_2[2] = L10_2
      L8_2[3] = L11_2
      L8_2[4] = L12_2
      L8_2[5] = L13_2
      L8_2[6] = L14_2
      L7_2.frames = L8_2
      L7_2.time = 200
      L7_2.loopCount = 1
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L4_2[3] = L7_2
      L5_2 = "puButtonEffect"
      L6_2 = A0_2
      L5_2 = L5_2 .. L6_2
      L1_2[L5_2] = L4_2
      L5_2 = "puButtonEffect"
      L6_2 = A0_2
      L5_2 = L5_2 .. L6_2
      L5_2 = L1_2[L5_2]
      return L5_2
    end
  else
    L2_2 = L1_2.puButtonEffect0
    return L2_2
  end
end

L0_1.getButtonAnimation = L12_1

function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L9_1
  if L0_2 then
    return
  end
  L0_2 = true
  L9_1 = L0_2
  L0_2 = L1_1
  L0_2 = L0_2.data
  L0_2 = L0_2.animations
  L1_2 = L1_1
  L2_2 = require
  L3_2 = "lua.game.powerups.powerupsFXImageSheet"
  L2_2 = L2_2(L3_2)
  L1_2.powerUpFXImageSheetInfo = L2_2
  L1_2 = L1_1
  L2_2 = graphics
  L2_2 = L2_2.newImageSheet
  L3_2 = "images/game/powerups/powerupsFX.png"
  L4_2 = L1_1
  L4_2 = L4_2.powerUpFXImageSheetInfo
  L5_2 = L4_2
  L4_2 = L4_2.getSheet
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.powerUpFXImageSheet = L2_2
  L1_2 = L0_1
  L1_2 = L1_2.getButtonAnimation
  L2_2 = 0
  L1_2 = L1_2(L2_2)
  L0_2.puButtonEffect0 = L1_2
  L1_2 = L1_1
  L1_2 = L1_2.powerUpFXImageSheetInfo
  L2_2 = L1_2
  L1_2 = L1_2.getFrameIndex
  L3_2 = "shine1"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = {}
  L3_2.name = "normal"
  L3_2.start = L1_2
  L3_2.count = 4
  L3_2.time = 200
  L3_2.loopCount = 1
  L2_2[1] = L3_2
  L0_2.shineEffect = L2_2
end

L0_1.loadAnimations1 = L12_1

function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L11_1
  if L0_2 then
    return
  end
  L0_2 = system
  L0_2 = L0_2.getTimer
  L0_2 = L0_2()
  L1_2 = true
  L11_1 = L1_2
  L1_2 = L1_1
  L2_2 = require
  L3_2 = "lua.modules.facebookV4"
  L2_2 = L2_2(L3_2)
  L1_2.facebook = L2_2
  L1_2 = L1_1
  L1_2 = L1_2.facebook
  L1_2 = L1_2.init
  L1_2()
  L1_2 = system
  L1_2 = L1_2.getTimer
  L1_2 = L1_2()
  L0_2 = L1_2 - L0_2
  L1_2 = L1_1
  L1_2 = L1_2.debugger
  L1_2 = L1_2.debugPrint
  L2_2 = "loadingTime"
  L3_2 = "facebook timeToLoad  "
  L4_2 = L0_2
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
end

L0_1.loadFacebook = L12_1

function L12_1()
  local L0_2, L1_2
  L0_2 = L6_1
  if L0_2 then
    return
  end
  L0_2 = true
  L6_1 = L0_2
  L0_2 = require
  L1_2 = "lua.iap.inAppPurchase"
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2.initInAppPurchase
  L1_2()
end

L0_1.loadIAP = L12_1

function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = system
  L0_2 = L0_2.getTimer
  L0_2 = L0_2()
  L1_2 = ""
  L2_2 = L1_2
  L3_2 = L2_1
  L3_2 = L3_2.getFile
  L4_2 = "config/config.json"
  L3_2 = L3_2(L4_2)
  L1_2 = L2_2 .. L3_2
  L2_2 = L1_2
  L3_2 = L2_1
  L3_2 = L3_2.getFile
  L4_2 = "config/storeConfig.json"
  L3_2 = L3_2(L4_2)
  L1_2 = L2_2 .. L3_2
  L2_2 = L1_2
  L3_2 = L2_1
  L3_2 = L3_2.getFile
  L4_2 = "config/awards.json"
  L3_2 = L3_2(L4_2)
  L1_2 = L2_2 .. L3_2
  L2_2 = L3_1
  L2_2 = L2_2.digest
  L3_2 = L3_1
  L3_2 = L3_2.sha1
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_1
  L3_2 = L3_2.data
  L3_2.configChecksum = L2_2
  L3_2 = system
  L3_2 = L3_2.getTimer
  L3_2 = L3_2()
  L0_2 = L3_2 - L0_2
  L3_2 = L1_1
  L3_2 = L3_2.debugger
  L3_2 = L3_2.debugPrint
  L4_2 = "loadingTime"
  L5_2 = "createConfigChecksum timeToLoad  "
  L6_2 = L0_2
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
end

L0_1.createConfigChecksum = L12_1

function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = system
  L0_2 = L0_2.getTimer
  L0_2 = L0_2()
  L1_2 = L1_1
  L1_2 = L1_2.mapHandler
  L1_2 = L1_2.getNumberOfMaps
  L1_2 = L1_2()
  L2_2 = ""
  L3_2 = 1
  L4_2 = L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_1
    L7_2 = L7_2.getFile
    L8_2 = "config/map/"
    L9_2 = L6_2
    L10_2 = ".json"
    L8_2 = L8_2 .. L9_2 .. L10_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = L2_2
      L9_2 = L7_2
      L2_2 = L8_2 .. L9_2
    end
  end
  L3_2 = L3_1
  L3_2 = L3_2.digest
  L4_2 = L3_1
  L4_2 = L4_2.sha1
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L1_1
  L4_2 = L4_2.data
  L4_2.mapChecksum = L3_2
  L4_2 = system
  L4_2 = L4_2.getTimer
  L4_2 = L4_2()
  L0_2 = L4_2 - L0_2
  L4_2 = L1_1
  L4_2 = L4_2.debugger
  L4_2 = L4_2.debugPrint
  L5_2 = "loadingTime"
  L6_2 = "createMapChecksum timeToLoad  "
  L7_2 = L0_2
  L6_2 = L6_2 .. L7_2
  L4_2(L5_2, L6_2)
end

L0_1.createMapChecksum = L12_1

function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = system
  L0_2 = L0_2.getTimer
  L0_2 = L0_2()
  L1_2 = L1_1
  L1_2.updatingMaps = true
  L1_2 = {}
  L1_2.name = "downloadStartMaps"
  L2_2 = Runtime
  L3_2 = L2_2
  L2_2 = L2_2.dispatchEvent
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = require
  L3_2 = "lua.network.httpMapUpdate"
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.checkForJsonMapUpdate
  L3_2()
  L3_2 = system
  L3_2 = L3_2.getTimer
  L3_2 = L3_2()
  L0_2 = L3_2 - L0_2
  L3_2 = L1_1
  L3_2 = L3_2.debugger
  L3_2 = L3_2.debugPrint
  L4_2 = "loadingTime"
  L5_2 = "UPDATE map files timeToLoad  "
  L6_2 = L0_2
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
end

L0_1.updateMapFiles = L12_1

function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L1_2 = L1_2.mapHandler
  L1_2 = L1_2.readMapDataToMemory
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.readMapDataToMemory = L12_1

function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = system
  L0_2 = L0_2.getTimer
  L0_2 = L0_2()
  L1_2 = L1_1
  L2_2 = require
  L3_2 = "lua.modules.jsonConfigHandler"
  L2_2 = L2_2(L3_2)
  L1_2.gameConfig = L2_2
  L1_2 = L1_1
  L2_2 = require
  L3_2 = "lua.modules.jsonStoreConfigHandler"
  L2_2 = L2_2(L3_2)
  L1_2.storeConfig = L2_2
  L1_2 = L1_1
  L2_2 = require
  L3_2 = "lua.modules.jsonAwardsHandler"
  L2_2 = L2_2(L3_2)
  L1_2.awards = L2_2
  L1_2 = L1_1
  L1_2 = L1_2.gameConfig
  L1_2 = L1_2.readFromFile
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.gameConfig
  L1_2 = L1_2.isFileCorrupt
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = L1_1
  L1_2 = L1_2.storeConfig
  L1_2 = L1_2.readFromFile
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.storeConfig
  L1_2 = L1_2.isFileCorrupt
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = L1_1
  L1_2 = L1_2.awards
  L1_2 = L1_2.readFromFile
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.awards
  L1_2 = L1_2.isFileCorrupt
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = system
  L1_2 = L1_2.getTimer
  L1_2 = L1_2()
  L0_2 = L1_2 - L0_2
  L1_2 = L1_1
  L1_2 = L1_2.debugger
  L1_2 = L1_2.debugPrint
  L2_2 = "loadingTime"
  L3_2 = "readJsonConfigFiles timeToLoad  "
  L4_2 = L0_2
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = 1
  return L1_2
end

L0_1.readJsonConfigFiles = L12_1

function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = system
  L0_2 = L0_2.getTimer
  L0_2 = L0_2()
  L1_2 = L0_1
  L1_2 = L1_2.readMapDataToMemory
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.mapHandler
  L1_2 = L1_2.isFileCorrupt
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = -1
    return L1_2
  end
  L1_2 = system
  L1_2 = L1_2.getTimer
  L1_2 = L1_2()
  L0_2 = L1_2 - L0_2
  L1_2 = L1_1
  L1_2 = L1_2.debugger
  L1_2 = L1_2.debugPrint
  L2_2 = "loadingTime"
  L3_2 = "readJsonMapFiles timeToLoad  "
  L4_2 = L0_2
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = 1
  return L1_2
end

L0_1.readJsonMapFiles = L12_1

function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = system
  L0_2 = L0_2.getTimer
  L0_2 = L0_2()
  L1_2 = L1_1
  L1_2.updatingConfingFiles = true
  L1_2 = {}
  L1_2.name = "downloadStartConfig"
  L2_2 = Runtime
  L3_2 = L2_2
  L2_2 = L2_2.dispatchEvent
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = require
  L3_2 = "lua.network.httpJsonConfigUpdate"
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.checkForJsonConfigUpdate
  L3_2()
  L3_2 = L2_2.checkForJsonStoreConfigUpdate
  L3_2()
  L3_2 = L2_2.checkForJsonAwardsUpdate
  L3_2()
  L3_2 = system
  L3_2 = L3_2.getTimer
  L3_2 = L3_2()
  L0_2 = L3_2 - L0_2
  L3_2 = L1_1
  L3_2 = L3_2.debugger
  L3_2 = L3_2.debugPrint
  L4_2 = "loadingTime"
  L5_2 = "UPDATE config files timeToLoad  "
  L6_2 = L0_2
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
end

L0_1.updateConfigFiles = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L1_1
    L1_3 = L1_3.updatingMaps
    if not L1_3 then
      L1_3 = Runtime
      L2_3 = L1_3
      L1_3 = L1_3.removeEventListener
      L3_3 = "downloadMapDone"
      L4_3 = L2_2
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = L0_1
      L1_3 = L1_3.readJsonMapFiles
      L1_3()
    end
  end
  
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A1_2
    L1_3 = L1_1
    L1_3 = L1_3.data
    L1_3 = L1_3.mapChecksum
    if L0_3 ~= L1_3 then
      L0_3 = print
      L1_3 = "WARNING: map checksum wrong, get new"
      L0_3(L1_3)
      L0_3 = Runtime
      L1_3 = L0_3
      L0_3 = L0_3.addEventListener
      L2_3 = "downloadMapDone"
      L3_3 = L2_2
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L0_1
      L0_3 = L0_3.updateMapFiles
      L0_3()
    end
  end
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3.configType
    if L1_3 == "config" then
      L1_3 = L0_1
      L1_3 = L1_3.readJsonConfigFiles
      L1_3()
      L1_3 = L0_1
      L1_3 = L1_3.loadIAP
      L1_3()
      L1_3 = print
      L2_3 = "Got new config file."
      L1_3(L2_3)
      L1_3 = L0_1
      L1_3 = L1_3.createMapChecksum
      L1_3()
      L1_3 = L3_2
      L1_3()
      L1_3 = Runtime
      L2_3 = L1_3
      L1_3 = L1_3.removeEventListener
      L3_3 = "downloadConfigDone"
      L4_3 = L4_2
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  
  L5_2 = L1_1
  L5_2 = L5_2.data
  L5_2 = L5_2.configChecksum
  if A0_2 ~= L5_2 then
    L5_2 = print
    L6_2 = "WARNING: config checksum wrong, get new"
    L5_2(L6_2)
    L5_2 = Runtime
    L6_2 = L5_2
    L5_2 = L5_2.addEventListener
    L7_2 = "downloadConfigDone"
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = L0_1
    L5_2 = L5_2.updateConfigFiles
    L5_2()
  else
    L5_2 = L1_1
    L5_2 = L5_2.data
    L5_2 = L5_2.mapChecksum
    if A1_2 ~= L5_2 then
      L5_2 = L3_2
      L5_2()
    end
  end
end

L0_1.checksumProcedure = L12_1

function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L10_1
  if L0_2 then
    return
  end
  L0_2 = true
  L10_1 = L0_2
  L0_2 = system
  L0_2 = L0_2.getTimer
  L0_2 = L0_2()
  L1_2 = require
  L2_2 = "spine-corona.interface"
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.init
  L2_2()
  L2_2 = L1_2.newMonster
  L2_2()
  L2_2 = system
  L2_2 = L2_2.getTimer
  L2_2 = L2_2()
  L0_2 = L2_2 - L0_2
  L2_2 = L1_1
  L2_2 = L2_2.debugger
  L2_2 = L2_2.debugPrint
  L3_2 = "loadingTime"
  L4_2 = "spine timeToLoad  "
  L5_2 = L0_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end

L0_1.loadSpine = L12_1
return L0_1
