-- Practice/Map Selection Scene - EXACT 1:1 Recreation from Original
-- Reference: mapselect.png, DecompiledCode/lua.scenes.lobbyPractise.lua
-- Uses original pixel-perfect coordinates from decompiled code

local composer = require("composer")
local audio = require("engine.audio")
local asset = require("engine.asset")
local mapCatalog = require("game.mapCatalog")

local scene = composer.newScene()
local display = rawget(_G, "display")
local native = rawget(_G, "native")
local transition = rawget(_G, "transition")

local currentPage = 1
local mapButtons = {}
local mapLabels = {}
local scrollGroup
local leftArrow
local rightArrow

-- Constants from original
local MAPS_PER_PAGE = 6
local COLS = 3

function scene:create(event)
  local sceneGroup = self.view

  -- Layer 1: Main background
  local backgrounds = require("engine.backgrounds")
  local bg = backgrounds.getBackground()
  if bg then
    sceneGroup:insert(bg)
  end

  -- Window frame (scaled up 2x for visibility)
  local windowBottom = display.newImageRect(
    sceneGroup,
    "assets/images/gui/practice/bottom.png",
    42 * 2,
    45 * 2
  )
  windowBottom.x = display.contentWidth * 0.5
  windowBottom.y = display.contentHeight * 0.75

  local window = display.newImageRect(
    sceneGroup,
    "assets/images/gui/practice/window.png",
    358 * 2,
    222 * 2
  )
  window.x = windowBottom.x
  window.y = windowBottom.y - (window.height * 0.55)

  local windowTop = display.newImageRect(
    sceneGroup,
    "assets/images/gui/practice/top.png",
    22 * 2,
    14 * 2
  )
  windowTop.x = window.x
  windowTop.y = window.y - (window.height * 0.51)

  -- Scrollable map group
  scrollGroup = display.newGroup()
  sceneGroup:insert(scrollGroup)

  -- Create map buttons (from decompiled code logic)
  local function startRace(mapId)
    composer.gotoScene("scenes.race", {
      effect = "slideLeft",
      time = 300,
      params = { mapId = tostring(mapId) }
    })
  end

  local function createMapButtons()
    local maps = mapCatalog.list()
    local totalMaps = #maps
    local startX = display.contentWidth * 0.5 - 180 -- Moved right for better alignment
    local startY = window.y - 100                   -- Position relative to window
    local spacingX = 180
    local spacingY = 150

    for i = 1, totalMaps do
      local map = maps[i]
      local page = math.ceil(i / MAPS_PER_PAGE)
      local posOnPage = (i - 1) % MAPS_PER_PAGE
      local col = posOnPage % COLS
      local row = math.floor(posOnPage / COLS)

      -- Page offset
      local pageOffset = (page - 1) * (display.contentWidth)

      -- Calculate position
      local x = startX + (col * spacingX) + pageOffset
      local y = startY + (row * spacingY)

      -- Get icon asset ID (using asset module)
      local iconId = string.format("practice_icon_%d", i)

      -- Create button using asset module (scaled up 2x)
      local btn = asset.newImage({
        parent = scrollGroup,
        id = iconId,
        width = 88 * 2,
        height = 90 * 2
      })

      -- Fallback if icon doesn't load (use theme default)
      if not btn then
        local theme = map.theme or "forest"
        local fallbackId = string.format("menu_theme_default_%s", theme)
        btn = asset.newImage({
          parent = scrollGroup,
          id = fallbackId,
          width = 88 * 2,
          height = 90 * 2
        })
      end

      if not btn then
        -- Last resort: create placeholder
        btn = display.newRect(scrollGroup, 0, 0, 88 * 2, 90 * 2)
        btn:setFillColor(0.3, 0.3, 0.4)
      end
      btn.x = x
      btn.y = y
      btn.mapId = map.id

      local function btnTapped(event)
        if event.phase == "ended" then
          audio.playSfx("menu_button")
          startRace(event.target.mapId)
        end
        return true
      end
      btn:addEventListener("touch", btnTapped)

      mapButtons[i] = btn

      -- Map name label
      if map.name then
        local label = display.newText({
          parent = scrollGroup,
          text = map.name,
          x = x,
          y = y + 70,
          font = "assets/fonts/JungleAdventurer.ttf",
          fontSize = 18
        })
        label:setFillColor(0, 0, 0) -- Black text
        mapLabels[i] = label
      end
    end

    return math.ceil(totalMaps / MAPS_PER_PAGE)
  end

  local totalPages = createMapButtons()

  -- Update page visibility
  local function updatePageVisibility()
    local targetX = -1 * (currentPage - 1) * display.contentWidth
    if transition then
      transition.to(scrollGroup, {
        time = 200,
        x = targetX
      })
    else
      scrollGroup.x = targetX
    end

    -- Update arrow visibility
    if leftArrow then
      leftArrow.isVisible = (currentPage > 1)
    end
    if rightArrow then
      rightArrow.isVisible = (currentPage < totalPages)
    end
  end

  -- Left arrow (scaled up)
  leftArrow = display.newImageRect(
    sceneGroup,
    "assets/images/gui/practice/left.png",
    45 * 2,
    45 * 2
  )
  leftArrow.x = 70
  leftArrow.y = window.y

  local function leftTapped(event)
    if event.phase == "ended" and currentPage > 1 then
      currentPage = currentPage - 1
      updatePageVisibility()
    end
    return true
  end
  leftArrow:addEventListener("touch", leftTapped)

  -- Right arrow (scaled up)
  rightArrow = display.newImageRect(
    sceneGroup,
    "assets/images/gui/practice/right.png",
    45 * 2,
    45 * 2
  )
  rightArrow.x = display.contentWidth - 70
  rightArrow.y = window.y

  local function rightTapped(event)
    if event.phase == "ended" and currentPage < totalPages then
      currentPage = currentPage + 1
      updatePageVisibility()
    end
    return true
  end
  rightArrow:addEventListener("touch", rightTapped)

  -- Back button (top left)
  local backBtn = display.newImageRect(
    sceneGroup,
    "assets/images/gui/common/buttonClosePopup.png",
    65,
    65
  )
  backBtn.x = 45
  backBtn.y = 45

  local function backTapped(event)
    if event.phase == "ended" then
      audio.playSfx("menu_button")
      composer.gotoScene("scenes.playMenu", { effect = "slideRight", time = 300 })
    end
    return true
  end
  backBtn:addEventListener("touch", backTapped)

  -- Initialize
  updatePageVisibility()
end

function scene:show(event)
  if event.phase == "will" then
    currentPage = 1
    if scrollGroup then
      scrollGroup.x = 0
    end
    if leftArrow then
      leftArrow.isVisible = false
    end
    if rightArrow and mapButtons then
      local totalPages = math.ceil(#mapButtons / MAPS_PER_PAGE)
      rightArrow.isVisible = (totalPages > 1)
    end
  end
end

scene:addEventListener("create")
scene:addEventListener("show")

return scene
