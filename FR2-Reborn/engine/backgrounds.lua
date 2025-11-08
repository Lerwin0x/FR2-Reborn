-- Background module - provides layered backgrounds for menus
-- Source: DecompiledCode/lua.modules.backgroundModule.lua

local M = {}
local display = rawget(_G, "display")

if not display then
  error("Display API unavailable; run inside Solar2D simulator")
end

-- Default background paths
local DEFAULT_BG = "assets/images/gui/common/bgMain.png"
local DEFAULT_BG_BLUR = "assets/images/gui/common/bgMain_blur.png"

-- Seasonal backgrounds (can be extended later)
local SEASONAL_BACKGROUNDS = {
  winter = "assets/images/gui/common/bgMain_winter.png",
  halloween = "assets/images/gui/common/bgMain_halloween.png",
  valentine = "assets/images/gui/common/bgMain_valentine.png",
}

local SEASONAL_BACKGROUNDS_BLUR = {
  winter = "assets/images/gui/common/bgMain_winter_blur.png",
  halloween = "assets/images/gui/common/bgMain_halloween_blur.png",
  valentine = "assets/images/gui/common/bgMain_valentine_blur.png",
}

-- Helper function to create background sprite
local function createBackground(imagePath)
  local bg = display.newImageRect(
    imagePath,
    480,
    320
  )

  if bg then
    bg.x = display.contentWidth * 0.5
    bg.y = display.contentHeight * 0.5

    -- Scale to fill screen
    local scaleX = display.actualContentWidth / bg.contentWidth
    local scaleY = display.actualContentHeight / bg.contentHeight
    local scale = math.max(scaleX, scaleY)
    bg:scale(scale, scale)
  end

  return bg
end

-- Get the default background
function M.getDefaultBackground()
  return createBackground(DEFAULT_BG)
end

-- Get the active background (checks for seasonal)
function M.getBackground(season)
  local bgPath = DEFAULT_BG

  if season and SEASONAL_BACKGROUNDS[season] then
    bgPath = SEASONAL_BACKGROUNDS[season]
  end

  return createBackground(bgPath)
end

-- Get the default blurred background
function M.getDefaultBlurredBackground()
  return createBackground(DEFAULT_BG_BLUR)
end

-- Get the active blurred background (checks for seasonal)
function M.getBlurredBackground(season)
  local bgPath = DEFAULT_BG_BLUR

  if season and SEASONAL_BACKGROUNDS_BLUR[season] then
    bgPath = SEASONAL_BACKGROUNDS_BLUR[season]
  end

  return createBackground(bgPath)
end

return M
