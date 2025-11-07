-- Source: OriginalSourceCode/assets/images/gui (rewritten)
-- Behavior inferred from DecompiledLua/images.gui (rewritten)

local asset = require("engine.asset")

local displayApi = rawget(_G, "display")
local nativeApi = rawget(_G, "native")

if not displayApi or not nativeApi then
  error("UI widgets require Solar2D display/native globals")
end

local unpackFn = table.unpack or unpack

local M = {}

local function handleTouch(event)
  local target = event.target
  local phase = event.phase
  local stage = displayApi.getCurrentStage and displayApi.getCurrentStage()

  if phase == "began" then
    if stage then
      stage:setFocus(target)
    end
    target.isFocus = true
    target.isInside = true
    if target.background then
      target.background.xScale = (target.backgroundBaseScaleX or 1) * (target.pressScale or 0.96)
      target.background.yScale = (target.backgroundBaseScaleY or 1) * (target.pressScale or 0.96)
    end
    if target.label then
      target.label.y = (target.labelBaseY or target.label.y) + (target.labelPressOffset or 4)
    end
    return true
  end

  if not target.isFocus then
    return false
  end

  if phase == "moved" then
    local bounds = target.contentBounds
    local inside = event.x >= bounds.xMin and event.x <= bounds.xMax
        and event.y >= bounds.yMin and event.y <= bounds.yMax
    target.isInside = inside
    if target.background then
      local scale = inside and (target.pressScale or 0.96) or 1
      target.background.xScale = (target.backgroundBaseScaleX or 1) * scale
      target.background.yScale = (target.backgroundBaseScaleY or 1) * scale
    end
    if target.label then
      target.label.y = inside and ((target.labelBaseY or target.label.y) + (target.labelPressOffset or 4))
          or (target.labelBaseY or target.label.y)
    end
    return true
  end

  if phase == "ended" or phase == "cancelled" then
    if stage then
      stage:setFocus(nil)
    end
    target.isFocus = false
    if target.background then
      target.background.xScale = target.backgroundBaseScaleX or 1
      target.background.yScale = target.backgroundBaseScaleY or 1
    end
    if target.label then
      target.label.y = target.labelBaseY or target.label.y
    end
    if phase == "ended" and target.isInside and target.onRelease then
      target:onRelease()
    end
    return true
  end

  return false
end

function M.newButton(params)
  params = params or {}
  local group = displayApi.newGroup()
  group.anchorChildren = true

  local width = params.width
  local height = params.height
  local textureId = params.textureId or "menu_button_primary"
  local background

  local request = {
    parent = group,
    id = textureId
  }
  if width and height then
    request.width = width
    request.height = height
  end

  local ok, result = pcall(asset.newImage, request)
  if ok then
    background = result
  else
    local fallbackWidth = width or 360
    local fallbackHeight = height or 128
    background = displayApi.newRoundedRect(group, 0, 0, fallbackWidth, fallbackHeight, 24)
    background:setFillColor(0.15, 0.18, 0.32)
    background.strokeWidth = 2
    background:setStrokeColor(0.9, 0.5, 0.2)
  end

  local label = displayApi.newText({
    parent = group,
    text = params.label or "Button",
    x = 0,
    y = 0,
    font = params.font or nativeApi.systemFontBold,
    fontSize = params.fontSize or 32,
    align = "center"
  })
  if params.labelColor then
    label:setFillColor(unpackFn(params.labelColor))
  else
    label:setFillColor(1, 1, 1)
  end

  group.background = background
  group.backgroundBaseScaleX = background and background.xScale or 1
  group.backgroundBaseScaleY = background and background.yScale or 1
  group.label = label
  group.labelBaseY = label.y
  group.pressScale = params.pressScale or 0.96
  group.labelPressOffset = params.labelPressOffset or 4

  group.onRelease = params.onRelease
  group:addEventListener("touch", handleTouch)

  return group
end

return M
