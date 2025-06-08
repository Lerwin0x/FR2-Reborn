-- scenes/shop.lua - Shop Scene for Fun Run 2
-----------------------------------------------------------------------------------------

local composer = require("composer")
local widget = require("widget")
local gameConfig = require("config.game_config")
local characterData = require("config.character_data")
local saveSystem = require("utils.save_system")
local soundManager = require("utils.sound_manager")

local scene = composer.newScene()

-- Scene variables
local sceneGroup
local playerData = {}
local coinsDisplay, gemsDisplay
local shopItems = {}
local scrollView
local backBtn
local currentCategory = "characters"

-- Shop items data
local shopData = {
    characters = characterData.getAllCharacters(),
    powerups = {
        {
            id = "speed_boost_pack",
            name = "Speed Boost Pack",
            description = "5x Speed Boost power-ups",
            price = 100,
            currency = "coins",
            icon = "powerups/speed_boost.png",
            category = "powerups"
        },
        {
            id = "lightning_pack",
            name = "Lightning Pack",
            description = "3x Lightning attacks",
            price = 150,
            currency = "coins",
            icon = "powerups/lightning.png",
            category = "powerups"
        },
        {
            id = "shield_pack",
            name = "Shield Pack",
            description = "5x Shield power-ups",
            price = 120,
            currency = "coins",
            icon = "powerups/shield.png",
            category = "powerups"
        }
    },
    cosmetics = {
        {
            id = "rainbow_trail",
            name = "Rainbow Trail",
            description = "Colorful trail effect",
            price = 250,
            currency = "gems",
            icon = "cosmetics/rainbow_trail.png",
            category = "cosmetics",
            unlocked = false
        },
        {
            id = "fire_trail",
            name = "Fire Trail",
            description = "Blazing trail effect",
            price = 200,
            currency = "gems",
            icon = "cosmetics/fire_trail.png",
            category = "cosmetics",
            unlocked = false
        },
        {
            id = "coin_magnet",
            name = "Coin Magnet",
            description = "Attract coins from distance",
            price = 500,
            currency = "coins",
            icon = "cosmetics/coin_magnet.png",
            category = "cosmetics",
            unlocked = false
}

function scene:create(event)
    sceneGroup = self.view
    
    -- Load player data
    playerData = saveSystem.loadProgress()
    
    -- Background
    local background = display.newRect(sceneGroup, display.contentCenterX, display.contentCenterY,
        display.contentWidth, display.contentHeight)
    background:setFillColor(0.1, 0.2, 0.4) -- Dark blue
    
    -- Header
    local header = display.newRect(sceneGroup, display.contentCenterX, 60,
        display.contentWidth, 120)
    header:setFillColor(0.2, 0.3, 0.5)
    
    -- Title
    local title = display.newText(sceneGroup, "🛍️ SHOP", 
        display.contentCenterX, 40, native.systemFontBold, 32)
    title:setFillColor(1, 1, 1)
    
    -- Currency display
    coinsDisplay = display.newText(sceneGroup, "💰 " .. (playerData.coins or 0),
        display.contentCenterX - 60, 80, native.systemFont, 18)
    coinsDisplay:setFillColor(1, 1, 0)
    
    gemsDisplay = display.newText(sceneGroup, "💎 " .. (playerData.gems or 0),
        display.contentCenterX + 60, 80, native.systemFont, 18)
    gemsDisplay:setFillColor(0, 1, 1)
    
    -- Category tabs
    local tabY = 120
    local tabWidth = display.contentWidth / 3
    
    local function createTab(text, x, category, isActive)
        local tab = display.newRect(sceneGroup, x, tabY, tabWidth, 40)
        tab:setFillColor(isActive and 0.3 or 0.2, isActive and 0.4 or 0.3, isActive and 0.6 or 0.5)
        tab:setStrokeColor(1, 1, 1)
        tab.strokeWidth = 1
        
        local tabText = display.newText(sceneGroup, text, x, tabY, native.systemFont, 16)
        tabText:setFillColor(1, 1, 1)
        
        -- Tab touch handler
        local function onTabTouch(event)
            if event.phase == "ended" then
                currentCategory = category
                scene:updateShopDisplay()
            end
            return true
        end
        tab:addEventListener("touch", onTabTouch)
        
        return {tab = tab, text = tabText, category = category}
    end
    
    local charactersTab = createTab("CHARACTERS", tabWidth/2, "characters", true)
    local powerupsTab = createTab("POWER-UPS", tabWidth + tabWidth/2, "powerups", false)
    local cosmeticsTab = createTab("COSMETICS", tabWidth*2 + tabWidth/2, "cosmetics", false)
    
    -- Create scroll view for shop items
    scrollView = widget.newScrollView({
        top = 160,
        left = 20,
        width = display.contentWidth - 40,
        height = display.contentHeight - 260,
        scrollWidth = display.contentWidth - 40,
        scrollHeight = 1000,
        horizontalScrollDisabled = true,
        verticalScrollDisabled = false,
        backgroundColor = {0.1, 0.1, 0.1, 0.3}
    })
    sceneGroup:insert(scrollView)
    
    -- Function to purchase item
    local function purchaseItem(item)
        local canAfford = false
        local currency = item.currency or "coins"
        local currentAmount = playerData[currency] or 0
        
        if currentAmount >= item.price then
            canAfford = true
        end
        
        if canAfford then
            -- Play purchase sound
            soundManager.playSound("purchase")
            
            -- Deduct currency
            if currency == "coins" then
                saveSystem.addCoins(-item.price)
            elseif currency == "gems" then
                saveSystem.addGems(-item.price)
            end
            
            -- Unlock item based on category
            if item.category == "characters" then
                saveSystem.unlockCharacter(item.id)
            elseif item.category == "cosmetics" then
                -- Add cosmetic to player inventory
                saveSystem.addCosmetic(item.id)
            elseif item.category == "powerups" then
                -- Add powerups to inventory
                saveSystem.addPowerupPack(item.id)
            end
            
            saveSystem.saveProgress()
            playerData = saveSystem.loadProgress()
            
            -- Update currency display
            coinsDisplay.text = "💰 " .. (playerData.coins or 0)
            gemsDisplay.text = "💎 " .. (playerData.gems or 0)
            
            -- Update shop display
            scene:updateShopDisplay()
            
            -- Show purchase confirmation
            local confirmText = display.newText(sceneGroup, "✅ PURCHASED!", 
                display.contentCenterX, display.contentCenterY, native.systemFontBold, 24)
            confirmText:setFillColor(0, 1, 0)
            
            transition.to(confirmText, {
                alpha = 0,
                y = confirmText.y - 50,
                time = 2000,
                onComplete = function()
                    confirmText:removeSelf()
                end
            })
        else
            -- Play error sound
            soundManager.playSound("error")
            
            -- Show insufficient funds message
            local errorText = display.newText(sceneGroup, "❌ INSUFFICIENT " .. string.upper(currency) .. "!", 
                display.contentCenterX, display.contentCenterY, native.systemFontBold, 20)
            errorText:setFillColor(1, 0, 0)
            
            transition.to(errorText, {
                alpha = 0,
                y = errorText.y - 50,
                time = 2000,
                onComplete = function()
                    errorText:removeSelf()
                end
            })
        end
    end
    
    -- Function to create shop item
    local function createShopItem(item, y)
        local itemHeight = 100
        
        -- Item background
        local itemBg = display.newRoundedRect(scrollView, 
            (display.contentWidth - 40) / 2, y, display.contentWidth - 60, itemHeight - 10, 8)
        itemBg:setFillColor(0.2, 0.2, 0.3)
        itemBg:setStrokeColor(1, 1, 1, 0.3)
        itemBg.strokeWidth = 1
        
        -- Item icon
        local icon = display.newImageRect(scrollView,
            gameConfig.ASSETS.GRAPHICS .. (item.icon or item.sprite or "ui/default_icon.png"),
            60, 60
        )
        icon.x = 60
        icon.y = y
        
        -- Item name
        local nameText = display.newText(scrollView, item.name,
            120, y - 15, native.systemFontBold, 16)
        nameText:setFillColor(1, 1, 1)
        nameText.anchorX = 0
        
        -- Item description
        local descText = display.newText(scrollView, item.description or "",
            120, y + 5, native.systemFont, 12)
        descText:setFillColor(0.8, 0.8, 0.8)
        descText.anchorX = 0
        
        -- Check if item is owned/unlocked
        local isOwned = false
        if item.category == "characters" then
            isOwned = saveSystem.isCharacterUnlocked(item.id)
        elseif item.category == "cosmetics" then
            isOwned = saveSystem.hasCosmeticItem(item.id)
        end
        
        -- Price and buy button
        if isOwned then
            local ownedText = display.newText(scrollView, "✅ OWNED",
                display.contentWidth - 100, y, native.systemFontBold, 14)
            ownedText:setFillColor(0, 1, 0)
        else
            local currency = item.currency or "coins"
            local currencyIcon = currency == "coins" and "💰" or "💎"
            
            local priceText = display.newText(scrollView, 
                currencyIcon .. " " .. item.price,
                display.contentWidth - 120, y - 10, native.systemFont, 14)
            priceText:setFillColor(currency == "coins" and 1 or 0, currency == "coins" and 1 or 1, currency == "coins" and 0 or 1)
            
            local buyBtn = widget.newButton({
                label = "BUY",
                labelColor = {default = {1, 1, 1}, over = {0.8, 0.8, 0.8}},
                defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_small_default.png",
                overFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_small_over.png",
                width = 60,
                height = 30,
                onRelease = function()
                    purchaseItem(item)
                end
            })
            buyBtn.x = display.contentWidth - 80
            buyBtn.y = y + 15
            scrollView:insert(buyBtn)
        end
        
        -- Rarity indicator for characters
        if item.category == "characters" and item.rarity then
            local rarityColors = {
                common = {0.5, 0.5, 0.5},
                rare = {0, 0.5, 1},
                epic = {0.5, 0, 1},
                legendary = {1, 0.5, 0}
            }
            local color = rarityColors[item.rarity] or {1, 1, 1}
            
            local rarityBorder = display.newRect(scrollView, icon.x, icon.y, 65, 65)
            rarityBorder:setFillColor(0, 0, 0, 0)
            rarityBorder:setStrokeColor(color[1], color[2], color[3])
            rarityBorder.strokeWidth = 3
        end
        
        return itemBg
    end
    
    -- Function to update shop display based on current category
    function scene:updateShopDisplay()
        -- Clear existing items
        for i = scrollView.numChildren, 1, -1 do
            local child = scrollView:getChildAt(i)
            child:removeSelf()
        end
        
        -- Get items for current category
        local categoryItems = shopData[currentCategory] or {}
        
        -- Create items
        local y = 60
        for _, item in ipairs(categoryItems) do
            createShopItem(item, y)
            y = y + 110
        end
        
        -- Update scroll view content height
        scrollView:setScrollHeight(math.max(y, scrollView.height))
    end
    
    -- Initial shop display
    scene:updateShopDisplay()
    
    -- Back button
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
    backBtn.x = 80
    backBtn.y = display.contentHeight - 50
    sceneGroup:insert(backBtn)
    
    -- Daily deals banner
    local dealsBanner = display.newRect(sceneGroup, display.contentCenterX, display.contentHeight - 40,
        display.contentWidth - 120, 30)
    dealsBanner:setFillColor(1, 0.5, 0, 0.8) -- Orange
    dealsBanner:setStrokeColor(1, 1, 0)
    dealsBanner.strokeWidth = 2
    
    local dealsText = display.newText(sceneGroup, "⚡ DAILY DEALS: 50% OFF POWER-UPS! ⚡",
        display.contentCenterX, display.contentHeight - 40, native.systemFont, 12)
    dealsText:setFillColor(1, 1, 1)
    
    -- Initialize with characters
    populateShop("characters")
end

function scene:show(event)
    local sceneGroup = self.view
    local phase = event.phase
    
    if phase == "will" then
        -- Scene is about to appear
    elseif phase == "did" then
        -- Scene is now on screen
        
        -- Animate coin counter
        local originalCoins = coinsDisplay.text
        coinsDisplay.text = "💰 0 coins"
        
        local function countUpCoins()
            local currentValue = 0
            local targetValue = playerCoins
            local increment = math.ceil(targetValue / 30)
            
            local function updateCoins()
                currentValue = currentValue + increment
                if currentValue >= targetValue then
                    currentValue = targetValue
                    coinsDisplay.text = "💰 " .. currentValue .. " coins"
                else
                    coinsDisplay.text = "💰 " .. currentValue .. " coins"
                    timer.performWithDelay(50, updateCoins)
                end
            end
            
            updateCoins()
        end
        
        timer.performWithDelay(300, countUpCoins)
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
    
    if backBtn then
        backBtn:removeSelf()
        backBtn = nil
    end
    
    shopItems = {}
end

-- Scene event listeners
scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)

return scene