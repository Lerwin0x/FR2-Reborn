local M = {}

local displayApi = rawget(_G, "display")
local graphicsApi = rawget(_G, "graphics")
local audioApi = rawget(_G, "audio")

local textures = {
  menu_background = "assets/images/gui/common/bgMain.png",
  menu_logo = "assets/images/gui/common/logo.png",
  menu_button_primary = "assets/images/gui/mainMenu/buttonPlayX.png",
  hud_panel = "assets/images/gui/common/headerSingle.png",
  hud_power_slot = "assets/images/game/rocketBar.png",
  hud_power_fill = "assets/images/game/rocketBarFiller.png",
  hud_power_icon_placeholder = "assets/images/game/powerups/icons/mapIcon.png",
  runner_player = "assets/images/game/playerSelfNormal.png",
  runner_arrow = "assets/images/game/selfArrow.png",
  ui_jump_button = "assets/images/game/buttonJump.png",
  ui_power_button = "assets/images/game/buttonPowerup.png",
  race_background_sky = "assets/images/map/forest/background/1_dawn.png",
  race_background_mid = "assets/images/map/forest/background/4.4.png",
  race_background_fore = "assets/images/map/forest/background/5.3.png",
  countdown_3 = "assets/images/game/countdown3.png",
  countdown_2 = "assets/images/game/countdown2.png",
  countdown_1 = "assets/images/game/countdown1.png",
  countdown_go = "assets/images/game/countdownGo.png",
  power_icon_speed = "assets/images/game/powerups/icons/speed.png",
  finish_banner = "assets/images/game/windowPlace.png",
  results_bg_forest = "assets/images/gui/postgame/postBG_forest.png",
  results_bg_space = "assets/images/gui/postgame/postBG_space.png",
  results_bg_town = "assets/images/gui/postgame/postBG_town.png",
  results_bg_tropical = "assets/images/gui/postgame/postBG_tropical.png",
  results_bg_winter = "assets/images/gui/postgame/postBG_winter.png",
  results_panel = "assets/images/gui/postgame/windowTimes.png",
  results_coin_icon = "assets/images/gui/postgame/iconCoin.png",
  results_xp_icon = "assets/images/gui/postgame/achiProgress.png"
}

local sheets = {
  forest_tiles = {
    filename = "assets/lua/map/assets/forest/tiles.png",
    options = { width = 160, height = 100, numFrames = 72 }
  },
  forest_tiles_r = {
    filename = "assets/lua/map/assets/forest/tiles.png",
    options = { width = 160, height = 100, numFrames = 72 }
  }
}

local sounds = {
  menu_button = "assets/sound/sfx_button_press.wav",
  countdown_tick = "assets/sound/sfx_countdown.wav",
  race_start = "assets/sound/sfx_start.wav",
  jump = "assets/sound/sfx_jump.wav",
  power_speed = "assets/sound/sfx_speed_activate.wav",
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
    if not manifest.sheets[id] then
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
