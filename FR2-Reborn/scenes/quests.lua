-- Reference: DecompiledCode (quest systems)
-- Using ONLY original quest/challenges assets

local composer = require("composer")
local asset = require("engine.asset")
local audio = require("engine.audio")

local scene = composer.newScene()
local display = rawget(_G, "display")

function scene:create(event)
  local group = self.view
  local contentWidth = display.contentWidth
  local contentHeight = display.contentHeight

  -- Background
  local backgrounds = require("engine.backgrounds")
  local bg = backgrounds.getBackground()
  if bg then
    group:insert(bg)
  end

  -- Main window paperlist (original asset) - scaled to fit
  local paperlist = asset.newImage({
    parent = group,
    id = "quest_window_paperlist",
    width = contentWidth * 0.9,
    height = contentHeight * 0.85,
    x = contentWidth * 0.5,
    y = contentHeight * 0.5
  })

  -- Tab buttons (original assets) - proper size
  local dailyBtn = asset.newImage({
    parent = group,
    id = "quest_button_daily",
    width = 120,
    height = 45,
    x = contentWidth * 0.35,
    y = 80
  })

  local achievementsBtn = asset.newImage({
    parent = group,
    id = "quest_button_achievements_inactive",
    width = 120,
    height = 45,
    x = contentWidth * 0.65,
    y = 80
  })

  local function onDailyTap(event)
    if event.phase == "ended" then
      audio.playSfx("menu_button")
    end
    return true
  end
  dailyBtn:addEventListener("touch", onDailyTap)

  local function onAchievementsTap(event)
    if event.phase == "ended" then
      audio.playSfx("menu_button")
    end
    return true
  end
  achievementsBtn:addEventListener("touch", onAchievementsTap)

  -- Quest cells (original assets) - proper size
  local questY = 180
  for i = 1, 3 do
    local cellNormal = asset.newImage({
      parent = group,
      id = "quest_cell_normal",
      width = contentWidth * 0.8,
      height = 80,
      x = contentWidth * 0.5,
      y = questY + ((i - 1) * 90)
    })

    -- Progress bar background - proper size
    local cellBar = asset.newImage({
      parent = group,
      id = "quest_cell_bar",
      width = 200,
      height = 15,
      x = contentWidth * 0.5,
      y = questY + ((i - 1) * 90) + 20
    })

    -- Claim/Buy button (original asset) - proper size
    if i == 2 then -- Completed quest
      local claimBtn = asset.newImage({
        parent = group,
        id = "quest_claim_buy",
        width = 80,
        height = 35,
        x = contentWidth * 0.75,
        y = questY + ((i - 1) * 90)
      })
    end
  end

  -- Close button - proper size
  local closeBtn = asset.newImage({
    parent = group,
    id = "button_close",
    width = 43,
    height = 38,
    x = 30,
    y = 40
  })

  local function onCloseTap(event)
    if event.phase == "ended" then
      audio.playSfx("menu_button")
      composer.gotoScene("scenes.menu", { effect = "slideRight", time = 300 })
    end
    return true
  end
  closeBtn:addEventListener("touch", onCloseTap)
end

scene:addEventListener("create")

return scene
