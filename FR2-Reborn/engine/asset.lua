-- Source: OriginalSourceCode/assets (rewritten)
-- Behavior inferred from DecompiledLua/images.gui (rewritten)

local M = {}

local displayApi = rawget(_G, "display")
local textures = {
  menu_background = "assets/images/gui/common/bgMain.png",
  menu_logo = "assets/images/gui/common/logo.png",
  menu_button_primary = "assets/images/gui/mainMenu/buttonPlayX.png",
  hud_panel = "assets/images/gui/common/headerSingle.png"
}

local manifest = {
  sounds = {},
  textures = textures
}

function M.preload()
  -- Future work: stream image sheets and sounds; for now we surface the manifest.
  return manifest
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
  if not displayApi then
    error("Display API unavailable; run inside Solar2D simulator")
  end
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
  if params.x then
    image.x = params.x
  end
  if params.y then
    image.y = params.y
  end
  if params.anchorX then
    image.anchorX = params.anchorX
  end
  if params.anchorY then
    image.anchorY = params.anchorY
  end
  if params.scale then
    image:scale(params.scale, params.scale)
  end
  return image
end

function M.registerSound(id, path)
  manifest.sounds[id] = audio.loadSound(path)
end

function M.getSound(id)
  return manifest.sounds[id]
end

return M
