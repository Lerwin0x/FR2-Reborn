local M = {}

local displayApi = rawget(_G, "display")
local graphicsApi = rawget(_G, "graphics")
local audioApi = rawget(_G, "audio")

local textures = {
  menu_background = "assets/images/gui/common/bgMain.png",
  menu_logo = "assets/images/gui/common/logo.png",
  menu_button_primary = "assets/images/gui/mainMenu/buttonPlayX.png",
  menu_button_settings = "assets/images/gui/mainMenu/buttonSettings.png",
  menu_button_friends = "assets/images/gui/mainMenu/buttonFriends.png",
  menu_button_leaderboards = "assets/images/gui/mainMenu/buttonLeaderboards.png",
  menu_button_market = "assets/images/gui/mainMenu/buttonMarket.png",
  menu_button_achievements = "assets/images/gui/mainMenu/buttonAchievements.png",
  hud_panel = "assets/images/gui/common/headerSingle.png",
  hud_power_slot = "assets/images/game/rocketBar.png",
  hud_power_fill = "assets/images/game/rocketBarFiller.png",
  hud_power_icon_placeholder = "assets/images/game/powerups/icons/mapIcon.png",
  runner_player = "assets/images/game/playerSelfNormal.png",
  runner_arrow = "assets/images/game/selfArrow.png",
  ui_jump_button = "assets/images/game/buttonJump.png",
  ui_power_button = "assets/images/game/buttonPowerup.png",
  ui_pause_button = "assets/images/gui/common/buttonClosePopup.png",
  ui_close_button = "assets/images/gui/common/buttonClosePopup.png",
  race_background_sky = "assets/images/map/forest/background/1_dawn.png",
  race_background_mid = "assets/images/map/forest/background/4.4.png",
  race_background_fore = "assets/images/map/forest/background/5.3.png",
  countdown_3 = "assets/images/game/countdown3.png",
  countdown_2 = "assets/images/game/countdown2.png",
  countdown_1 = "assets/images/game/countdown1.png",
  countdown_go = "assets/images/game/countdownGo.png",
  power_icon_speed = "assets/images/game/powerups/icons/speed.png",
  power_icon_shield = "assets/images/game/powerups/icons/shield.png",
  power_icon_magnet = "assets/images/game/powerups/icons/magnet.png",
  power_icon_lightning = "assets/images/game/powerups/icons/lightning.png",
  power_icon_teleport = "assets/images/game/powerups/icons/teleport.png",
  power_icon_sawblade = "assets/images/game/powerups/icons/sawblade.png",
  power_icon_decoy = "assets/images/game/powerups/icons/punchbox.png",
  power_icon_bearTrap = "assets/images/game/powerups/icons/beartrap.png",
  finish_banner = "assets/images/game/windowPlace.png",
  results_bg_forest = "assets/images/gui/postgame/postBG_forest.png",
  results_bg_space = "assets/images/gui/postgame/postBG_space.png",
  results_bg_town = "assets/images/gui/postgame/postBG_town.png",
  results_bg_tropical = "assets/images/gui/postgame/postBG_tropical.png",
  results_bg_winter = "assets/images/gui/postgame/postBG_winter.png",
  results_panel = "assets/images/gui/postgame/windowTimes.png",
  results_coin_icon = "assets/images/gui/postgame/iconCoin.png",
  results_xp_icon = "assets/images/gui/postgame/iconCoin.png",
  button_replay = "assets/images/gui/postgame/buttonReplay.png",
  button_close = "assets/images/gui/common/buttonClosePopup.png",
  button_home = "assets/images/gui/common/buttonHome.png",
  button_text_a = "assets/images/gui/common/buttonTextA.png",
  button_text_b = "assets/images/gui/common/buttonTextB.png",
  button_text_b_gray = "assets/images/gui/common/buttonTextB_gray.png",
  button_facebook = "assets/images/gui/common/buttonFacebook.png",
  clan_button_chat = "assets/images/gui/clan_v2/smallChat.png",
  clan_button_clans = "assets/images/gui/clan_v2/smallClans.png",
  clan_button_ranks = "assets/images/gui/clan_v2/smallRanks.png",
  clan_button_play = "assets/images/gui/clan_v2/smallPlay.png",
  clan_button_share = "assets/images/gui/clan_v2/smallShare.png",
  shop_button_buy = "assets/images/gui/market/buttonBuy.png",
  shop_button_skins = "assets/images/gui/market/buttonSkins.png",
  shop_button_skins_back = "assets/images/gui/market/buttonSkinsBack.png",
  quest_button_daily = "assets/images/gui/challenges/buttonDaily.png",
  quest_button_daily_inactive = "assets/images/gui/challenges/buttonDailyInactive.png",
  quest_button_achievements = "assets/images/gui/challenges/buttonAchievements.png",
  quest_button_achievements_inactive = "assets/images/gui/challenges/buttonAchievementsInactive.png",
  postgame_button_chat = "assets/images/gui/postgame/buttonChat.png",
  postgame_button_friends = "assets/images/gui/postgame/buttonFriends.png",
  postgame_button_market = "assets/images/gui/postgame/buttonMarket.png",
  shop_window_master = "assets/images/gui/market/masterWindow.png",
  shop_bg = "assets/images/gui/market/bg.png",
  shop_mid_table = "assets/images/gui/market/midTable.png",
  shop_category_panel = "assets/images/gui/market/categoryPanel.png",
  shop_roof = "assets/images/gui/market/roof.png",
  shop_bundle_item = "assets/images/gui/market/bundleItem.png",
  shop_price_tag = "assets/images/gui/market/pricetag.png",
  shop_popup_window = "assets/images/gui/market/popup/window.png",
  shop_current_coins = "assets/images/gui/market/currentCoins.png",
  overlay_black = "assets/images/gui/common/black.png",
  ranking_cell = "assets/images/gui/ranking/cell.png",
  ranking_main_overlay = "assets/images/gui/ranking/mainOverlay.png",
  ranking_info_area = "assets/images/gui/ranking/infoArea.png",
  ranking_dynamic_top = "assets/images/gui/ranking/dynamicTop.png",
  ranking_dynamic_bot = "assets/images/gui/ranking/dynamicBot.png",
  ranking_clans_panel = "assets/images/gui/ranking/clans_panel.png",
  quest_window_paperlist = "assets/images/gui/challenges/mainWindowPaperlist.png",
  quest_cell_normal = "assets/images/gui/challenges/cellNormal.png",
  quest_cell_bg = "assets/images/gui/challenges/cellBG.png",
  quest_cell_bar = "assets/images/gui/challenges/cellBar.png",
  quest_cell_bar_green = "assets/images/gui/challenges/cellBarGreen.png",
  quest_claim_buy = "assets/images/gui/challenges/claimBuy.png",
  clan_hub_panel = "assets/images/gui/clan_v2/hub.png",
  clan_panel_background = "assets/images/gui/clan_v2/clanPanelBackground.png",
  clan_window_info = "assets/images/gui/clan_v2/window_clanInfo.png",
  wheel_window = "assets/images/gui/wheel/window.png",
  wheel_mid = "assets/images/gui/wheel/wheelMid.png",
  wheel_arrow = "assets/images/gui/wheel/arrow.png",
  loading_spinner = "assets/images/gui/loading/loader.png",
  loading_bar_bg = "assets/images/gui/loading/loadingBarBG.png",
  loading_bar_frame = "assets/images/gui/loading/loadingBar.png",
  loading_bar_fill = "assets/images/gui/loading/loadingBarFiller.png",
  settings_window_rename = "assets/images/gui/settings/windowRename.png",
  settings_main = "assets/images/gui/settings/main.png",
  settings_toggle_on = "assets/images/gui/settings/toggleOn.png",
  settings_toggle_off = "assets/images/gui/settings/toggleOff.png",
  settings_button_sound = "assets/images/gui/settings/buttonSound.png",
  settings_button_sound_mute = "assets/images/gui/settings/buttonSoundMute.png",
  settings_button_music = "assets/images/gui/settings/buttonMusic.png",
  settings_button_music_mute = "assets/images/gui/settings/buttonMusicMute.png",
  settings_button_chat_on = "assets/images/gui/settings/buttonChatOn.png",
  settings_button_chat_off = "assets/images/gui/settings/buttonChatOff.png",
  settings_button_rename = "assets/images/gui/settings/buttonRename.png",
  settings_button = "assets/images/gui/settings/button.png",
  menu_panel = "assets/images/gui/practice/window.png",
  menu_info_panel = "assets/images/gui/play/play_infoWindow.png",
  menu_map_frame_top = "assets/images/gui/practice/top.png",
  menu_map_frame_bottom = "assets/images/gui/practice/bottom.png",
  menu_map_frame_left = "assets/images/gui/practice/left.png",
  menu_map_frame_right = "assets/images/gui/practice/right.png",
  menu_map_selected = "assets/images/gui/practice/levelSelected.png",
  menu_arrow_left = "assets/images/gui/mainMenu/arrowLeft.png",
  menu_arrow_right = "assets/images/gui/mainMenu/arrowRight.png",
  menu_icon_random = "assets/images/gui/practice/iconRandom.png",
  menu_theme_default_forest = "assets/images/gui/practice/defaultforest.png",
  menu_theme_default_space = "assets/images/gui/practice/defaultspace.png",
  menu_theme_default_town = "assets/images/gui/practice/defaulttown.png",
  menu_theme_default_tropical = "assets/images/gui/practice/defaulttropical.png",
  menu_theme_default_winter = "assets/images/gui/practice/defaultwinter.png",
  runner_bot_default = "assets/images/game/playerOtherNormal.png",
  animal_swiftclaw = "assets/images/monsters/c1s0/monster.png",
  animal_brimstone = "assets/images/monsters/c2s0/monster.png",
  animal_glacier = "assets/images/monsters/c3s0/monster.png",
  animal_bramble = "assets/images/monsters/c4s0/monster.png",
  animal_ember = "assets/images/monsters/c5s0/monster.png",
  animal_torrent = "assets/images/monsters/c6s0/monster.png",
  forest_background_alt_mid = "assets/images/map/forest/background/4.4.png",
  forest_background_alt_fore = "assets/images/map/forest/background/5.3.png",
  space_background_sky = "assets/images/map/space/background/1_dawn.png",
  space_background_mid = "assets/images/map/space/background/4.4.png",
  space_background_fore = "assets/images/map/space/background/5.3.png",
  town_background_sky = "assets/images/map/town/background/1_sunrise.png",
  town_background_mid = "assets/images/map/town/background/4.3.png",
  town_background_fore = "assets/images/map/town/background/5.3.png",
  tropical_background_sky = "assets/images/map/tropical/background/1_dawn.png",
  tropical_background_mid = "assets/images/map/tropical/background/4.3.png",
  tropical_background_fore = "assets/images/map/tropical/background/5.3.png",
  winter_background_sky = "assets/images/map/winter/background/1_dawn.png",
  winter_background_mid = "assets/images/map/winter/background/4.3.png",
  winter_background_fore = "assets/images/map/winter/background/5.3.png"
}

for index = 1, 30 do
  local id = string.format("practice_icon_%d", index)
  if not textures[id] then
    textures[id] = string.format("assets/images/gui/practice/icon%d.png", index)
  end
end

textures.practice_icon_random = textures.menu_icon_random

local sheets = {}

local function registerThemeSheets(theme)
  local basePath = string.format("assets/lua/map/assets/%s/", theme)
  if not textures[theme .. "_tiles"] then
    textures[theme .. "_tiles"] = basePath .. "tiles.png"
  end
  if not textures[theme .. "_props"] then
    textures[theme .. "_props"] = basePath .. "props.png"
  end
  if not textures[theme .. "_special"] then
    textures[theme .. "_special"] = basePath .. "animatedTiles.png"
  end
  sheets[theme .. "_tiles"] = {
    filename = basePath .. "tiles.png",
    dynamic = true
  }
  sheets[theme .. "_props"] = {
    filename = basePath .. "props.png",
    dynamic = true
  }
  sheets[theme .. "_special"] = {
    filename = basePath .. "animatedTiles.png",
    dynamic = true
  }
end

registerThemeSheets("forest")
registerThemeSheets("space")
registerThemeSheets("town")
registerThemeSheets("tropical")
registerThemeSheets("winter")

local sounds = {
  menu_button = "assets/sound/sfx_button_press.wav",
  countdown_tick = "assets/sound/sfx_countdown.wav",
  race_start = "assets/sound/sfx_start.wav",
  race_finish = "assets/sound/sfx_crowd_cheer.wav",
  jump = "assets/sound/sfx_jump.wav",
  power_speed = "assets/sound/sfx_speed_activate.wav",
  power_shield = "assets/sound/sfx_armor_activate.wav",
  power_magnet = "assets/sound/sfx_magnet_activate.wav",
  power_lightning = "assets/sound/sfx_lightning_activate.wav",
  power_teleport = "assets/sound/sfx_teleport_activate.wav",
  power_sawblade = "assets/sound/sfx_blade_activate.wav",
  power_decoy = "assets/sound/sfx_invul_activate.wav",
  power_trap = "assets/sound/sfx_trap_activate.wav",
  power_empty = "assets/sound/sfx_no_powerup.wav",
  pickup = "assets/sound/sfx_pickup.wav"
}

local manifest = {
  sounds = {},
  textures = textures,
  sheets = {}
}

local function ensureDisplay()
  if not displayApi then
    error("Display API unavailable; run inside Solar2D simulator")
  end
end

local function ensureGraphics()
  if not graphicsApi then
    error("Graphics API unavailable; run inside Solar2D simulator")
  end
end

function M.preload()
  ensureGraphics()
  ensureDisplay()
  assert(audioApi, "Audio API unavailable; run inside Solar2D simulator")

  for id, entry in pairs(sheets) do
    if not manifest.sheets[id] and not entry.dynamic then
      manifest.sheets[id] = graphicsApi.newImageSheet(entry.filename, entry.options)
    end
  end

  for id, path in pairs(sounds) do
    if not manifest.sounds[id] then
      local handle = audioApi.loadSound(path)
      manifest.sounds[id] = handle
    end
  end

  return manifest
end

function M.requireTexture(id)
  local filename = textures[id]
  assert(filename, string.format("texture '%s' is not registered", tostring(id)))
  return filename
end

function M.getTexture(id)
  return textures[id]
end

function M.listTextures()
  local copy = {}
  for key, value in pairs(textures) do
    copy[key] = value
  end
  return copy
end

function M.newImage(params)
  ensureDisplay()
  assert(params and params.id, "asset id is required")
  local filename = textures[params.id]
  assert(filename, string.format("texture '%s' is not registered", params.id))
  local parent = params.parent
  local image
  if params.width and params.height then
    image = displayApi.newImageRect(parent, filename, params.width, params.height)
  else
    image = displayApi.newImage(parent, filename)
    if parent and image and image.removeSelf and image.parent ~= parent then
      parent:insert(image)
    end
  end
  if params.anchorX then
    image.anchorX = params.anchorX
  end
  if params.anchorY then
    image.anchorY = params.anchorY
  end
  if params.x then
    image.x = params.x
  end
  if params.y then
    image.y = params.y
  end
  if params.scale then
    image:scale(params.scale, params.scale)
  end
  return image
end

function M.newImageSheet(id)
  ensureGraphics()
  local sheet = manifest.sheets[id]
  if not sheet then
    local entry = sheets[id]
    assert(entry, string.format("image sheet '%s' is not registered", tostring(id)))
    assert(entry.options, string.format("image sheet '%s' must be built dynamically", tostring(id)))
    sheet = graphicsApi.newImageSheet(entry.filename, entry.options)
    manifest.sheets[id] = sheet
  end
  return sheet
end

function M.getSound(id)
  return manifest.sounds[id]
end

function M.listSounds()
  local copy = {}
  for key, _ in pairs(sounds) do
    copy[#copy + 1] = key
  end
  table.sort(copy)
  return copy
end

return M
