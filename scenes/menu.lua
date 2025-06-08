-- scenes/menu.lua - Main Menu for Fun Run 2: Reborn
-----------------------------------------------------------------------------------------

local composer = require("composer")
local widget = require("widget")
local gameConfig = require("config.game_config")
local networkManager = require("utils.network_manager")
local levelData = require("config.level_data")
local soundManager = require("utils.sound_manager")

local scene = composer.newScene()

-- Forward declarations
local playBtn, multiplayerBtn, characterSelectBtn, shopBtn, settingsBtn, levelsBtn
local titleLogo, backgroundMusic
local multiplayerDialog = nil

-- Helper function to add sound to button actions
local function addButtonSound(originalOnRelease)
    return function(event)
        soundManager.playSound("button_click")
        if originalOnRelease then
            return originalOnRelease(event)
        end
    end
end

function scene:create(event)
    local sceneGroup = self.view
    
    -- Initialize sound manager
    soundManager.init()
    soundManager.preloadGameSounds()
    
    -- Create animated background
    local background = display.newImageRect(
        sceneGroup,
        gameConfig.ASSETS.GRAPHICS .. "backgrounds/menu_bg.png",
        display.contentWidth,
        display.contentHeight
    )
    background.x = display.contentCenterX
    background.y = display.contentCenterY
    
    -- Add parallax clouds
    local cloudsGroup = display.newGroup()
    sceneGroup:insert(cloudsGroup)
    
    for i = 1, 3 do
        local cloud = display.newImageRect(
            cloudsGroup,
            gameConfig.ASSETS.GRAPHICS .. "ui/cloud" .. i .. ".png",
            100, 60
        )
        cloud.x = math.random(0, display.contentWidth)
        cloud.y = math.random(50, 200)
        cloud.alpha = 0.7
        
        -- Animate clouds moving
        local function moveCloud()
            transition.to(cloud, {
                x = cloud.x + display.contentWidth + 200,
                time = math.random(20000, 40000),
                onComplete = function()
                    cloud.x = -100
                    moveCloud()
                end
            })
        end
        moveCloud()
    end
    
    -- Create title logo with animation
    titleLogo = display.newImageRect(
        sceneGroup,
        gameConfig.ASSETS.GRAPHICS .. "ui/title_logo.png",
        300, 120
    )
    titleLogo.x = display.contentCenterX
    titleLogo.y = 150
    titleLogo.alpha = 0
    
    -- Animate title appearance
    transition.to(titleLogo, {
        alpha = 1,
        y = titleLogo.y - 20,
        time = 1000,
        transition = easing.outBounce
    })
    
    -- Create menu buttons
    local buttonY = display.contentHeight - 300
    local buttonSpacing = 80
    
    -- Play button
    playBtn = widget.newButton({
        label = "QUICK RACE",
        labelColor = {default = {1, 1, 1}, over = {0.8, 0.8, 0.8}},
        defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_default.png",
        overFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_over.png",
        width = 200,
        height = 60,
        fontSize = 18,
        onRelease = function()
            -- Play button sound
            composer.gotoScene("scenes.game", {
                effect = "slideLeft",
                time = 300,
                params = {
                    numPlayers = 1,
                    character = "default"
                }
            })
        end
    })
    -- Quick Play button (single player)
    playBtn = widget.newButton({
        label = "QUICK PLAY",
        labelColor = {default = {1, 1, 1}, over = {0.8, 0.8, 0.8}},
        defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_default.png",
        overFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_over.png",
        width = 200,
        height = 60,
        fontSize = 18,
        onRelease = addButtonSound(function()
            composer.gotoScene("scenes.character_select", {
                effect = "slideLeft",
                time = 300,
                params = {
                    gameMode = "single",
                    numPlayers = 1,
                    levelId = 1
                }
            })
        end)
    })
    playBtn.x = display.contentCenterX
    playBtn.y = buttonY
    sceneGroup:insert(playBtn)
    
    -- Multiplayer button
    multiplayerBtn = widget.newButton({
        label = "MULTIPLAYER",
        labelColor = {default = {1, 1, 1}, over = {0.8, 0.8, 0.8}},
        defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_default.png",
        overFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_over.png",
        width = 200,
        height = 60,
        fontSize = 18,
        onRelease = function()
            showMultiplayerDialog()
        end
    })
    multiplayerBtn.x = display.contentCenterX
    multiplayerBtn.y = buttonY + buttonSpacing
    sceneGroup:insert(multiplayerBtn)
    
    -- Levels button
    levelsBtn = widget.newButton({
        label = "LEVELS",
        labelColor = {default = {1, 1, 1}, over = {0.8, 0.8, 0.8}},
        defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_default.png",
        overFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_over.png",
        width = 200,
        height = 60,
        fontSize = 18,
        onRelease = function()
            showLevelSelect()
        end
    })
    levelsBtn.x = display.contentCenterX
    levelsBtn.y = buttonY + buttonSpacing * 2
    sceneGroup:insert(levelsBtn)
    
    -- Character Select button
    characterSelectBtn = widget.newButton({
        label = "CHARACTERS",
        labelColor = {default = {1, 1, 1}, over = {0.8, 0.8, 0.8}},
        defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_default.png",
        overFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_over.png",
        width = 200,
        height = 60,
        fontSize = 18,
        onRelease = function()
            composer.gotoScene("scenes.character_select", {
                effect = "slideLeft",
                time = 300,
                params = {
                    gameMode = "preview",
                    numPlayers = 1
                }
            })
        end
    })
    characterSelectBtn.x = display.contentCenterX
    characterSelectBtn.y = buttonY + buttonSpacing * 3
    sceneGroup:insert(characterSelectBtn)
    
    -- Shop button
    shopBtn = widget.newButton({
        label = "SHOP",
        labelColor = {default = {1, 1, 1}, over = {0.8, 0.8, 0.8}},
        defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_default.png",
        overFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_over.png",
        width = 200,
        height = 60,
        fontSize = 18,
        onRelease = function()
            composer.gotoScene("scenes.shop", {
                effect = "slideLeft",
                time = 300
            })
        end
    })
    shopBtn.x = display.contentCenterX
    shopBtn.y = buttonY + buttonSpacing * 4
    sceneGroup:insert(shopBtn)
        height = 60,
        fontSize = 18,
        onRelease = function()
            -- Show multiplayer options
            local alert = native.showAlert(
                "Multiplayer",
                "Choose multiplayer mode:",
                {"Local (4 Players)", "Online", "Cancel"}
            )
        end
    })
    multiplayerBtn.x = display.contentCenterX
    multiplayerBtn.y = buttonY + buttonSpacing * 3
    sceneGroup:insert(multiplayerBtn)
    
    -- Settings button (small, in corner)
    settingsBtn = widget.newButton({
        label = "⚙",
        labelColor = {default = {1, 1, 1}, over = {0.8, 0.8, 0.8}},
        defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/small_button.png",
        overFile = gameConfig.ASSETS.GRAPHICS .. "ui/small_button_over.png",
        width = 50,
        height = 50,
        fontSize = 24,
        onRelease = function()
            -- Show settings
            native.showAlert("Settings", "Settings menu coming soon!", {"OK"})
        end
    })
    settingsBtn.x = display.contentWidth - 40
    settingsBtn.y = 40
    sceneGroup:insert(settingsBtn)
    
    -- Version text
    local versionText = display.newText(
        sceneGroup,
        "Fun Run 2: Reborn v1.0",
        display.contentCenterX,
        display.contentHeight - 30,
        native.systemFont,
        14
    )
    versionText:setFillColor(0.7, 0.7, 0.7)
    
    -- Character preview
    local previewCharacter = display.newImageRect(
        sceneGroup,
        gameConfig.ASSETS.GRAPHICS .. "characters/default_preview.png",
        80, 80
    )
    previewCharacter.x = display.contentWidth - 80
    previewCharacter.y = display.contentHeight - 100
    
    -- Add idle animation to preview character
    local function animatePreview()
        transition.to(previewCharacter, {
            y = previewCharacter.y - 5,
            time = 1000,
            transition = easing.inOutSine,
            onComplete = function()
                transition.to(previewCharacter, {
                    y = previewCharacter.y + 5,
                    time = 1000,
                    transition = easing.inOutSine,
                    onComplete = animatePreview
                })
            end
        })
    end
    animatePreview()
    
    -- Animated particles in background
    local function createParticle()
        local particle = display.newCircle(sceneGroup, 
            math.random(0, display.contentWidth),
            display.contentHeight + 10,
            math.random(2, 5)
        )
        particle:setFillColor(1, 1, 1, 0.3)
        
        transition.to(particle, {
            y = -10,
            x = particle.x + math.random(-50, 50),
            time = math.random(5000, 10000),
            onComplete = function()
                particle:removeSelf()
            end
        })
    end
    
    -- Create particles periodically
    timer.performWithDelay(2000, createParticle, 0)
end

function scene:show(event)
    local sceneGroup = self.view
    local phase = event.phase
    
    if phase == "will" then
        -- Scene is about to appear
        
    elseif phase == "did" then
        -- Scene is now on screen
        
        -- Start background music
        soundManager.playMusic("menu_theme", {
            loops = -1,
            volume = 0.7,
            fadein = 1000
        })
        
        -- Animate buttons appearing
        local buttons = {playBtn, characterSelectBtn, shopBtn}
        for i, button in ipairs(buttons) do
            button.alpha = 0
            button.y = button.y + 50
            
            timer.performWithDelay(i * 200, function()
                transition.to(button, {
                    alpha = 1,
                    y = button.y - 50,
                    time = 500,
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
        
        -- Stop background music
        if backgroundMusic then
            audio.stop(1)
            audio.dispose(backgroundMusic)
            backgroundMusic = nil
        end
    end
end

function scene:destroy(event)
    local sceneGroup = self.view
    
    -- Clean up buttons
    if playBtn then
        playBtn:removeSelf()
        playBtn = nil
    end
    
    if characterSelectBtn then
        characterSelectBtn:removeSelf()
        characterSelectBtn = nil
    end
    
    if shopBtn then
        shopBtn:removeSelf()
        shopBtn = nil
    end
    
    if settingsBtn then
        settingsBtn:removeSelf()
        settingsBtn = nil
    end
    
    -- Dispose of background music
    if backgroundMusic then
        audio.dispose(backgroundMusic)
        backgroundMusic = nil
    end
end

-- Multiplayer dialog functions
function showMultiplayerDialog()
    if multiplayerDialog then return end -- Prevent multiple dialogs
    
    -- Create overlay
    local overlay = display.newRect(sceneGroup, display.contentCenterX, display.contentCenterY, 
        display.contentWidth, display.contentHeight)
    overlay:setFillColor(0, 0, 0, 0.7)
    
    -- Dialog background
    local dialogBg = display.newRoundedRect(sceneGroup, display.contentCenterX, display.contentCenterY, 
        400, 300, 12)
    dialogBg:setFillColor(0.2, 0.2, 0.3)
    dialogBg:setStrokeColor(1, 1, 1)
    dialogBg.strokeWidth = 2
    
    -- Dialog title
    local dialogTitle = display.newText(sceneGroup, "MULTIPLAYER MODE", 
        display.contentCenterX, display.contentCenterY - 100, native.systemFontBold, 24)
    dialogTitle:setFillColor(1, 1, 1)
    
    -- Local multiplayer button
    local localBtn = widget.newButton({
        label = "LOCAL MULTIPLAYER",
        labelColor = {default = {1, 1, 1}, over = {0.8, 0.8, 0.8}},
        defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_default.png",
        overFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_over.png",
        width = 250,
        height = 50,
        fontSize = 16,
        onRelease = function()
            closeMultiplayerDialog()
            showPlayerCountDialog()
        end
    })
    localBtn.x = display.contentCenterX
    localBtn.y = display.contentCenterY - 30
    sceneGroup:insert(localBtn)
    
    -- Online multiplayer button (placeholder)
    local onlineBtn = widget.newButton({
        label = "ONLINE (COMING SOON)",
        labelColor = {default = {0.5, 0.5, 0.5}, over = {0.5, 0.5, 0.5}},
        defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_default.png",
        overFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_default.png",
        width = 250,
        height = 50,
        fontSize = 16,
        isEnabled = false
    })
    onlineBtn.x = display.contentCenterX
    onlineBtn.y = display.contentCenterY + 30
    sceneGroup:insert(onlineBtn)
    
    -- Close button
    local closeBtn = widget.newButton({
        label = "CLOSE",
        labelColor = {default = {1, 1, 1}, over = {0.8, 0.8, 0.8}},
        defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_default.png",
        overFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_over.png",
        width = 120,
        height = 40,
        fontSize = 14,
        onRelease = closeMultiplayerDialog
    })
    closeBtn.x = display.contentCenterX
    closeBtn.y = display.contentCenterY + 90
    sceneGroup:insert(closeBtn)
    
    multiplayerDialog = {overlay, dialogBg, dialogTitle, localBtn, onlineBtn, closeBtn}
end

function closeMultiplayerDialog()
    if multiplayerDialog then
        for _, element in ipairs(multiplayerDialog) do
            element:removeSelf()
        end
        multiplayerDialog = nil
    end
end

function showPlayerCountDialog()
    -- Create player count selection dialog
    local overlay = display.newRect(sceneGroup, display.contentCenterX, display.contentCenterY, 
        display.contentWidth, display.contentHeight)
    overlay:setFillColor(0, 0, 0, 0.7)
    
    local dialogBg = display.newRoundedRect(sceneGroup, display.contentCenterX, display.contentCenterY, 
        350, 250, 12)
    dialogBg:setFillColor(0.2, 0.2, 0.3)
    dialogBg:setStrokeColor(1, 1, 1)
    dialogBg.strokeWidth = 2
    
    local dialogTitle = display.newText(sceneGroup, "SELECT PLAYERS", 
        display.contentCenterX, display.contentCenterY - 80, native.systemFontBold, 20)
    dialogTitle:setFillColor(1, 1, 1)
    
    -- Player count buttons
    local playerCountDialog = {overlay, dialogBg, dialogTitle}
    
    for i = 2, 4 do
        local playerBtn = widget.newButton({
            label = i .. " PLAYERS",
            labelColor = {default = {1, 1, 1}, over = {0.8, 0.8, 0.8}},
            defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_default.png",
            overFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_over.png",
            width = 150,
            height = 40,
            fontSize = 14,
            onRelease = function()
                -- Close dialog
                for _, element in ipairs(playerCountDialog) do
                    element:removeSelf()
                end
                
                -- Go to character select with multiplayer settings
                composer.gotoScene("scenes.character_select", {
                    effect = "slideLeft",
                    time = 300,
                    params = {
                        gameMode = "local_multiplayer",
                        numPlayers = i,
                        levelId = 1
                    }
                })
            end
        })
        playerBtn.x = display.contentCenterX
        playerBtn.y = display.contentCenterY - 30 + (i-2) * 50
        sceneGroup:insert(playerBtn)
        table.insert(playerCountDialog, playerBtn)
    end
end

function showLevelSelect()
    -- Get available levels
    local unlockedLevels = levelData.getUnlockedLevels({
        completed_levels = {[1] = true, [2] = true, [3] = true},
        premium_unlocked = false,
        achievements = {}
    })
    
    -- Create level selection overlay
    local overlay = display.newRect(sceneGroup, display.contentCenterX, display.contentCenterY, 
        display.contentWidth, display.contentHeight)
    overlay:setFillColor(0, 0, 0, 0.7)
    
    local dialogBg = display.newRoundedRect(sceneGroup, display.contentCenterX, display.contentCenterY, 
        500, 400, 12)
    dialogBg:setFillColor(0.2, 0.2, 0.3)
    dialogBg:setStrokeColor(1, 1, 1)
    dialogBg.strokeWidth = 2
    
    local dialogTitle = display.newText(sceneGroup, "SELECT LEVEL", 
        display.contentCenterX, display.contentCenterY - 160, native.systemFontBold, 24)
    dialogTitle:setFillColor(1, 1, 1)
    
    local levelDialog = {overlay, dialogBg, dialogTitle}
    
    -- Create scroll view for levels
    local levelScrollView = widget.newScrollView({
        top = display.contentCenterY - 120,
        left = display.contentCenterX - 220,
        width = 440,
        height = 240,
        scrollWidth = 440,
        scrollHeight = math.max(240, #unlockedLevels * 60),
        backgroundColor = {0.1, 0.1, 0.1, 0.5}
    })
    sceneGroup:insert(levelScrollView)
    table.insert(levelDialog, levelScrollView)
    
    -- Add level buttons
    for i, level in ipairs(unlockedLevels) do
        local levelBtn = widget.newButton({
            label = level.name .. " (Difficulty: " .. level.difficulty .. ")",
            labelColor = {default = {1, 1, 1}, over = {0.8, 0.8, 0.8}},
            defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_default.png",
            overFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_over.png",
            width = 400,
            height = 50,
            fontSize = 14,
            onRelease = function()
                -- Close dialog
                for _, element in ipairs(levelDialog) do
                    element:removeSelf()
                end
                
                -- Go to character select with selected level
                composer.gotoScene("scenes.character_select", {
                    effect = "slideLeft",
                    time = 300,
                    params = {
                        gameMode = "single",
                        numPlayers = 1,
                        levelId = level.id
                    }
                })
            end
        })
        levelBtn.x = 220
        levelBtn.y = (i-1) * 60 + 30
        levelScrollView:insert(levelBtn)
    end
    
    -- Close button
    local closeBtn = widget.newButton({
        label = "CLOSE",
        labelColor = {default = {1, 1, 1}, over = {0.8, 0.8, 0.8}},
        defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_default.png",
        overFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_over.png",
        width = 120,
        height = 40,
        fontSize = 14,
        onRelease = function()
            for _, element in ipairs(levelDialog) do
                element:removeSelf()
            end
        end
    })
    closeBtn.x = display.contentCenterX
    closeBtn.y = display.contentCenterY + 160
    sceneGroup:insert(closeBtn)
    table.insert(levelDialog, closeBtn)
end

-- ...existing code...
