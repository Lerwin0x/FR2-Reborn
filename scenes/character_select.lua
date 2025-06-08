-- scenes/character_select.lua - Character Selection for Fun Run 2
-----------------------------------------------------------------------------------------

local composer = require("composer")
local widget = require("widget")
local gameConfig = require("config.game_config")
local characterData = require("config.character_data")
local soundManager = require("utils.sound_manager")

local scene = composer.newScene()

-- Scene variables
local sceneGroup
local selectedCharacterIndex = 1
local characterPreviews = {}
local characterInfo = {}
local playBtn, backBtn
local scrollView
local selectedCharacters = {} -- For multiplayer character selection
local maxPlayers = 1

function scene:create(event)
    sceneGroup = self.view
    
    -- Get parameters
    local params = event.params or {}
    maxPlayers = params.numPlayers or 1
    local gameMode = params.gameMode or "single"
    local levelId = params.levelId or 1
    
    -- Initialize selected characters array
    selectedCharacters = {}
    for i = 1, maxPlayers do
        selectedCharacters[i] = "runner" -- Default to runner
    end
    
    -- Background
    local background = display.newRect(sceneGroup, display.contentCenterX, display.contentCenterY,
        display.contentWidth, display.contentHeight)
    background:setFillColor(0.2, 0.3, 0.5) -- Dark blue
    
    -- Title
    local titleText = maxPlayers > 1 and "SELECT CHARACTERS" or "SELECT CHARACTER"
    local title = display.newText(sceneGroup, titleText, 
        display.contentCenterX, 60, native.systemFontBold, 32)
    title:setFillColor(1, 1, 1)
    
    -- Player selection indicator for multiplayer
    local currentPlayer = 1
    local playerIndicator
    if maxPlayers > 1 then
        playerIndicator = display.newText(sceneGroup, "Player 1", 
            display.contentCenterX, 100, native.systemFont, 24)
        playerIndicator:setFillColor(1, 1, 0)
    end
    
    -- Get available characters
    local availableCharacters = characterData.getUnlockedCharacters({
        -- Mock player progress - in real game this would come from save data
        completed_levels = {[1] = true, [2] = true},
        premium_unlocked = false,
        achievements = {}
    })
    
    -- Create scroll view for characters
    scrollView = widget.newScrollView({
        top = 130,
        left = 50,
        width = display.contentWidth - 100,
        height = 300,
        scrollWidth = #availableCharacters * 150,
        scrollHeight = 300,
        horizontalScrollDisabled = false,
        verticalScrollDisabled = true,
        backgroundColor = {0.1, 0.1, 0.1, 0.5}
    })
    sceneGroup:insert(scrollView)
    
    -- Create character selection cards
    for i, character in ipairs(availableCharacters) do
        local cardX = (i - 1) * 150 + 75
        local cardY = 150
        
        -- Character card background
        local card = display.newRoundedRect(scrollView, cardX, cardY, 120, 200, 12)
        card:setFillColor(0.3, 0.3, 0.3)
        card:setStrokeColor(1, 1, 1)
        card.strokeWidth = 2
        
        -- Character preview image
        local preview = display.newImageRect(scrollView,
            gameConfig.ASSETS.GRAPHICS .. "characters/" .. character.id .. "_idle.png",
            80, 80
        )
        preview.x = cardX
        preview.y = cardY - 40
        characterPreviews[i] = preview
        
        -- Character name
        local nameText = display.newText(scrollView, character.name,
            cardX, cardY + 20, native.systemFont, 14)
        nameText:setFillColor(1, 1, 1)
        
        -- Character rarity indicator
        local rarityColor = characterData.getRarityColor(character.rarity)
        local rarityIndicator = display.newCircle(scrollView, cardX + 40, cardY - 70, 8)
        rarityIndicator:setFillColor(rarityColor.r, rarityColor.g, rarityColor.b)
        
        -- Character stats display
        local statsText = string.format("Speed: %d\nJump: %d\nLuck: %d", 
            character.stats.speed, character.stats.jump_height, character.stats.luck)
        local stats = display.newText(scrollView, statsText,
            cardX, cardY + 50, native.systemFont, 10)
        stats:setFillColor(0.8, 0.8, 0.8)
        
        -- Selection handler
        local function selectCharacter()
            selectedCharacters[currentPlayer] = character.id
            
            -- Update visual selection
            updateCharacterSelection()
            
            -- Move to next player in multiplayer
            if maxPlayers > 1 then
                currentPlayer = currentPlayer + 1
                if currentPlayer > maxPlayers then
                    currentPlayer = 1 -- Loop back to first player
                end
                if playerIndicator then
                    playerIndicator.text = "Player " .. currentPlayer
                end
            end
        end
        
        card:addEventListener("tap", selectCharacter)
        preview:addEventListener("tap", selectCharacter)
    end
    
    -- Function to update character selection visuals
    function updateCharacterSelection()
        for i, character in ipairs(availableCharacters) do
            local card = scrollView[i] -- Assuming cards are stored in order
            if card then
                local isSelected = false
                for j = 1, maxPlayers do
                    if selectedCharacters[j] == character.id then
                        isSelected = true
                        break
                    end
                end
                
                if isSelected then
                    card:setStrokeColor(0, 1, 0) -- Green for selected
                    card.strokeWidth = 4
                else
                    card:setStrokeColor(1, 1, 1) -- White for unselected
                    card.strokeWidth = 2
                end
            end
        end
    end
        
        -- Lock/unlock status
        local statusText
        if character.unlocked then
            statusText = display.newText(scrollView, "✓ UNLOCKED",
                cardX, cardY + 40, native.systemFont, 12)
            statusText:setFillColor(0, 1, 0) -- Green
        else
            statusText = display.newText(scrollView, "🔒 " .. character.price .. " coins",
                cardX, cardY + 40, native.systemFont, 12)
            statusText:setFillColor(1, 1, 0) -- Yellow
        end
        
        -- Selection indicator
        local indicator = display.newRect(scrollView, cardX, cardY, 124, 204)
        indicator:setFillColor(1, 1, 0, 0) -- Transparent
        indicator:setStrokeColor(1, 1, 0) -- Yellow border
        indicator.strokeWidth = 4
        indicator.isVisible = (i == selectedCharacterIndex)
        
        -- Touch handling for character selection
        local function selectCharacter()
            -- Hide all indicators
            for j = 1, #gameConfig.CHARACTERS do
                if characterInfo[j] and characterInfo[j].indicator then
                    characterInfo[j].indicator.isVisible = false
                end
            end
            
            -- Show selected indicator
            indicator.isVisible = true
            selectedCharacterIndex = i
            
            -- Play character selection sound
            soundManager.playSound("character_select")
            
            -- Update character info display
            updateCharacterInfo()
        end
        
        card:addEventListener("tap", selectCharacter)
        preview:addEventListener("tap", selectCharacter)
        
        -- Store references
        characterInfo[i] = {
            card = card,
            preview = preview,
            nameText = nameText,
            statusText = statusText,
            indicator = indicator,
            character = character
        }
    end
    
    -- Character info panel
    local infoPanel = display.newRoundedRect(sceneGroup,
        display.contentCenterX, 500, display.contentWidth - 60, 120, 12)
    infoPanel:setFillColor(0.1, 0.1, 0.1, 0.8)
    infoPanel:setStrokeColor(1, 1, 1)
    infoPanel.strokeWidth = 2
    
    -- Character info text
    local infoTitle = display.newText(sceneGroup, "", display.contentCenterX, 460,
        native.systemFontBold, 20)
    infoTitle:setFillColor(1, 1, 1)
    
    local infoDescription = display.newText(sceneGroup, "", display.contentCenterX, 490,
        native.systemFont, 14)
    infoDescription:setFillColor(0.8, 0.8, 0.8)
    
    local infoStats = display.newText(sceneGroup, "", display.contentCenterX, 520,
        native.systemFont, 12)
    infoStats:setFillColor(0.6, 0.6, 0.6)
    
    -- Update character info function
    function updateCharacterInfo()
        local character = gameConfig.CHARACTERS[selectedCharacterIndex]
        infoTitle.text = character.name
        
        if character.unlocked then
            infoDescription.text = "Ready to race!"
            infoStats.text = "Speed: ★★★☆☆  |  Jump: ★★★★☆  |  Special: Boost"
        else
            infoDescription.text = "Unlock with " .. character.price .. " coins"
            infoStats.text = "Visit the shop to purchase this character"
        end
    end
    
    -- Buttons
    playBtn = widget.newButton({
        label = "PLAY",
        labelColor = {default = {1, 1, 1}, over = {0.8, 0.8, 0.8}},
        defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_default.png",
        overFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_over.png",
        width = 120,
        height = 50,
        onRelease = function()
            local character = gameConfig.CHARACTERS[selectedCharacterIndex]
            if character.unlocked then
                composer.gotoScene("scenes.game", {
                    effect = "slideLeft",
                    time = 300,
                    params = {
                        character = character.id,
                        numPlayers = 1
                    }
                })
            else
                native.showAlert("Character Locked", 
                    "This character must be purchased in the shop first!", {"OK"})
            end
        end
    })
    playBtn.x = display.contentCenterX + 80
    playBtn.y = 600
    sceneGroup:insert(playBtn)
    
    backBtn = widget.newButton({
        label = "BACK",
        labelColor = {default = {1, 1, 1}, over = {0.8, 0.8, 0.8}},
        defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_default.png",
        overFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_over.png",
        width = 120,
        height = 50,
        onRelease = function()
            composer.gotoScene("scenes.menu", {
                effect = "slideRight",
                time = 300
            })
        end
    })
    backBtn.x = display.contentCenterX - 80
    backBtn.y = 600
    sceneGroup:insert(backBtn)
    
    -- Initialize character info
    updateCharacterInfo()
end

function scene:show(event)
    local sceneGroup = self.view
    local phase = event.phase
    
    if phase == "will" then
        -- Scene is about to appear
    elseif phase == "did" then
        -- Scene is now on screen
        
        -- Play character select music
        soundManager.playMusic("character_select_theme", {
            loops = -1,
            volume = 0.7,
            fadein = 800
        })
        
        -- Animate character previews
        for i, preview in ipairs(characterPreviews) do
            preview.alpha = 0
            preview.y = preview.y + 20
            
            timer.performWithDelay(i * 100, function()
                transition.to(preview, {
                    alpha = 1,
                    y = preview.y - 20,
                    time = 300,
                    transition = easing.outBounce
                })
            end)
        end
    end
end

function scene:hide(event)
    local sceneGroup = self.view
    local phase = event.phase
    
    if phase == "will" then
        -- Scene is about to move off screen
    elseif phase == "did" then
        -- Scene is now off screen
    end
end

function scene:destroy(event)
    local sceneGroup = self.view
    
    -- Clean up
    if scrollView then
        scrollView:removeSelf()
        scrollView = nil
    end
    
    if playBtn then
        playBtn:removeSelf()
        playBtn = nil
    end
    
    if backBtn then
        backBtn:removeSelf()
        backBtn = nil
    end
    
    characterPreviews = {}
    characterInfo = {}
end

-- Scene event listeners
scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)

return scene