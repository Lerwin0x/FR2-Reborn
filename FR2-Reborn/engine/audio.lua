-- Source: OriginalSourceCode/assets/sound (rewritten)
-- Behavior inferred from DecompiledLua/lua.ads.audioModule.lua (rewritten)

local asset = require("engine.asset")
local audioLib = audio

local M = {}

local activeMusic

function M.playMusic(id, options)
  if activeMusic then
    audioLib.stop(activeMusic)
  end
  local handle = asset.getSound(id)
  if handle then
    activeMusic = audioLib.play(handle, options or { loops = -1 })
  end
end

function M.playSfx(id, options)
  local handle = asset.getSound(id)
  if handle then
    audioLib.play(handle, options)
  end
end

function M.stopAll()
  audioLib.stop()
end

return M
