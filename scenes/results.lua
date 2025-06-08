-- scenes/results.lua - Race Results Scene for Fun Run 2
-----------------------------------------------------------------------------------------

local composer = require("composer")
local widget = require("widget")
local gameConfig = require("config.game_config")
local characterData = require("config.character_data")
local saveSystem = require("utils.save_system")
local soundManager = require("utils.sound_manager")
local achievementSystem = require("utils.achievement_system")

local scene = composer.newScene()

-- Scene variables
local sceneGroup
local players = {}
local raceTime = 0
local levelData = {}
local isMultiplayer = false
local playAgainBtn, menuBtn

function scene:create(event)
    sceneGroup = self.view
    
    -- Get race data
    if event.params then
        players = event.params.players or {}
        raceTime = event.params.raceTime or 0
        levelData = event.params.levelData or {}
        isMultiplayer = event.params.isMultiplayer or false
    end
    
    -- Calculate results and update save data
    local winner = nil
    local winnerPosition = math.huge
    local totalCoinsEarned = 0
    local experienceGained = 0
    
    -- Find winner and calculate rewards
    for _, player in ipairs(players) do
        if player.finishPosition and player.finishPosition < winnerPosition then
            winner = player
            winnerPosition = player.finishPosition
        end
    end
    
    -- Calculate rewards based on performance
    if winner then
        local baseCoins = levelData.rewards and levelData.rewards.coins or 50
        local baseExp = levelData.rewards and levelData.rewards.experience or 25
        
        -- Bonus for first place
        if winner.finishPosition == 1 then
            totalCoinsEarned = baseCoins + 25
            experienceGained = baseExp + 15
        else
            totalCoinsEarned = baseCoins
            experienceGained = baseExp
        end
        
        -- Time bonus
        if raceTime < (levelData.par_time or 60) then
            totalCoinsEarned = totalCoinsEarned + 20
            experienceGained = experienceGained + 10
        end
        
        -- Update save data
        saveSystem.addCoins(totalCoinsEarned)
        saveSystem.addExperience(experienceGained)
        saveSystem.updateStatistics({
            races_played = 1,
            races_won = winner.finishPosition == 1 and 1 or 0,
            total_distance = levelData.length or 1000
        })
        
        -- Check for achievements
        achievementSystem.updateStats("race_completed", {
            time = raceTime,
            damagesTaken = winner.damagesTaken or 0,
            isMultiplayer = isMultiplayer
        })
        
        if winner.finishPosition == 1 then
            achievementSystem.updateStats("race_won", {
                isMultiplayer = isMultiplayer,
                characterId = winner.characterId,
                startingPosition = winner.startingPosition
            })
        end
        
        if isMultiplayer then
            achievementSystem.updateStats("multiplayer_race")
        end
        
        -- Check and show any unlocked achievements
        local newAchievements = achievementSystem.checkAchievements("race_completed", {
            time = raceTime,
            damagesTaken = winner.damagesTaken or 0,
            isMultiplayer = isMultiplayer
        })
        
        -- Show achievement notifications
        for i, achievement in ipairs(newAchievements) do
            timer.performWithDelay(i * 1000, function()
                achievementSystem.showAchievementNotification(achievement, sceneGroup)
            end)
        end
        
        -- Mark level as completed if not already
        if levelData.id and not saveSystem.isLevelCompleted(levelData.id) then
            saveSystem.completeLevel(levelData.id)
        end
        
        saveSystem.saveProgress()
    end
    
    -- Background with celebration effect
    local background = display.newRect(sceneGroup, display.contentCenterX, display.contentCenterY,
        display.contentWidth, display.contentHeight)
    background:setFillColor(0.1, 0.1, 0.2) -- Dark blue
    
    -- Add celebration particles
    local function createCelebrationParticle()
        local colors = {{1,1,0}, {1,0.5,0}, {1,0,1}, {0,1,1}} -- Yellow, orange, magenta, cyan
        local color = colors[math.random(1, #colors)]
        
        local particle = display.newCircle(sceneGroup,
            math.random(0, display.contentWidth),
            display.contentHeight + 10,
            math.random(3, 8)
        )
        particle:setFillColor(color[1], color[2], color[3])
        
        transition.to(particle, {
            y = -10,
            x = particle.x + math.random(-50, 50),
            rotation = math.random(0, 360),
            time = math.random(3000, 6000),
            onComplete = function()
                particle:removeSelf()
            end
        })
    end
    
    -- Create particles continuously
    timer.performWithDelay(200, createCelebrationParticle, 0)
    
    -- Results title with celebration effect
    local titleText = display.newText(sceneGroup, "RACE RESULTS", 
        display.contentCenterX, 80, native.systemFontBold, 36)
    titleText:setFillColor(1, 1, 0)
    
    -- Add pulsing effect to title
    transition.to(titleText, {
        xScale = 1.1,
        yScale = 1.1,
        time = 1000,
        iterations = -1,
        transition = easing.inOutSine
    })
    
    -- Display player results
    local yPos = 150
    local playerHeight = 80
    
    -- Sort players by finish position
    table.sort(players, function(a, b)
        return (a.finishPosition or 999) < (b.finishPosition or 999)
    end)
    
    for i, player in ipairs(players) do
        local playerBg = display.newRoundedRect(sceneGroup,
            display.contentCenterX, yPos + (i-1) * playerHeight,
            display.contentWidth - 40, playerHeight - 10, 10)
        
        -- Color based on position
        if player.finishPosition == 1 then
            playerBg:setFillColor(0.8, 0.8, 0.2, 0.8) -- Gold
        elseif player.finishPosition == 2 then
            playerBg:setFillColor(0.7, 0.7, 0.7, 0.8) -- Silver
        elseif player.finishPosition == 3 then
            playerBg:setFillColor(0.8, 0.5, 0.2, 0.8) -- Bronze
        else
            playerBg:setFillColor(0.3, 0.3, 0.5, 0.8) -- Default
        end
        
        -- Position indicator
        local positionText = display.newText(sceneGroup,
            player.finishPosition or "DNF",
            playerBg.x - 120, playerBg.y,
            native.systemFontBold, 24)
        positionText:setFillColor(1, 1, 1)
        
        -- Character info
        local characterInfo = characterData.getCharacter(player.character or "runner")
        local playerNameText = display.newText(sceneGroup,
            (player.name or "Player " .. i) .. " (" .. characterInfo.name .. ")",
            playerBg.x - 20, playerBg.y - 15,
            native.systemFont, 16)
        playerNameText:setFillColor(1, 1, 1)
        
        -- Race time
        local timeText = display.newText(sceneGroup,
            "Time: " .. string.format("%.2f", player.raceTime or raceTime) .. "s",
            playerBg.x - 20, playerBg.y + 15,
            native.systemFont, 14)
        timeText:setFillColor(0.9, 0.9, 0.9)
        
        -- Score/points
        if player.score then
            local scoreText = display.newText(sceneGroup,
                "Score: " .. player.score,
                playerBg.x + 80, playerBg.y,
                native.systemFont, 14)
            scoreText:setFillColor(1, 1, 0)
        end
    end
    
    -- Create particles continuously
    timer.performWithDelay(200, createCelebrationParticle, 0)
    
    -- Title
    local title = display.newText(sceneGroup, "RACE RESULTS!", 
        display.contentCenterX, 80, native.systemFontBold, 36)
    title:setFillColor(1, 1, 0) -- Yellow
    
    -- Race time
    local timeText = display.newText(sceneGroup, 
        "Race Time: " .. string.format("%.2f", raceTime / 1000) .. " seconds",
        display.contentCenterX, 120, native.systemFont, 18)
    timeText:setFillColor(1, 1, 1)
    
    -- Results panel
    local resultsPanel = display.newRoundedRect(sceneGroup,
        display.contentCenterX, 300, display.contentWidth - 60, 280, 12)
    resultsPanel:setFillColor(0.2, 0.2, 0.3, 0.9)
    resultsPanel:setStrokeColor(1, 1, 1)
    resultsPanel.strokeWidth = 2
    
    -- Sort players by finish position or score
    table.sort(players, function(a, b)
        if a.hasFinished and b.hasFinished then
            return a.finishTime < b.finishTime
        elseif a.hasFinished then
            return true
        elseif b.hasFinished then
            return false
        else
            return a.score > b.score
        end
    end)
    
    -- Display results
    local startY = 200
    local rowHeight = 60
    
    for i, player in ipairs(players) do
        local y = startY + (i - 1) * rowHeight
        
        -- Position number
        local positionBg = display.newCircle(sceneGroup, 100, y, 25)
        if i == 1 then
            positionBg:setFillColor(1, 0.8, 0) -- Gold
        elseif i == 2 then
            positionBg:setFillColor(0.8, 0.8, 0.8) -- Silver
        elseif i == 3 then
            positionBg:setFillColor(0.8, 0.5, 0.2) -- Bronze
        else
            positionBg:setFillColor(0.5, 0.5, 0.5) -- Gray
        end
        
        local positionText = display.newText(sceneGroup, tostring(i),
            100, y, native.systemFontBold, 20)
        positionText:setFillColor(0, 0, 0)
        
        -- Player character icon
        local characterIcon = display.newImageRect(sceneGroup,
            gameConfig.ASSETS.GRAPHICS .. "characters/" .. (player.characterId or "default") .. "_small.png",
            40, 40
        )
        characterIcon.x = 160
        characterIcon.y = y
        
        -- Player name/info
        local playerName = display.newText(sceneGroup, "Player " .. (player.playerId or i),
            220, y - 10, native.systemFontBold, 16)
        playerName:setFillColor(1, 1, 1)
        playerName.anchorX = 0
        
        -- Score
        local scoreText = display.newText(sceneGroup, "Score: " .. (player.score or 0),
            220, y + 10, native.systemFont, 14)
        scoreText:setFillColor(0.8, 0.8, 0.8)
        scoreText.anchorX = 0
        
        -- Status (Finished/DNF)
        local statusText
        if player.hasFinished then
            statusText = display.newText(sceneGroup, "FINISHED",
                display.contentWidth - 80, y, native.systemFont, 14)
            statusText:setFillColor(0, 1, 0) -- Green
        else
            statusText = display.newText(sceneGroup, "DNF",
                display.contentWidth - 80, y, native.systemFont, 14)
            statusText:setFillColor(1, 0, 0) -- Red
        end
        
        -- Animate row appearance
        local rowGroup = display.newGroup()
        rowGroup:insert(positionBg)
        rowGroup:insert(positionText)
        rowGroup:insert(characterIcon)
        rowGroup:insert(playerName)
        rowGroup:insert(scoreText)
        rowGroup:insert(statusText)
        sceneGroup:insert(rowGroup)
        
        rowGroup.alpha = 0
        rowGroup.x = rowGroup.x + 50
        
        timer.performWithDelay(i * 200, function()
            transition.to(rowGroup, {
                alpha = 1,
                x = rowGroup.x - 50,
                time = 400,
                transition = easing.outBounce
            })
        end)
    end
    
    -- Winner announcement
    if #players > 0 and players[1].hasFinished then
        local winnerText = display.newText(sceneGroup,
            "🏆 PLAYER " .. (players[1].playerId or 1) .. " WINS! 🏆",
            display.contentCenterX, 500, native.systemFontBold, 24)
        winnerText:setFillColor(1, 1, 0)
        winnerText.alpha = 0
        
        timer.performWithDelay(1000, function()
            transition.to(winnerText, {
                alpha = 1,
                xScale = 1.2,
                yScale = 1.2,
                time = 500,
                transition = easing.outBounce
            })
        end)
    end
    
    -- Buttons
    playAgainBtn = widget.newButton({
        label = "PLAY AGAIN",
        labelColor = {default = {1, 1, 1}, over = {0.8, 0.8, 0.8}},
        defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_default.png",
        overFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_over.png",
        width = 150,
        height = 50,
        onRelease = function()
            composer.gotoScene("scenes.game", {
                effect = "slideLeft",
                time = 300,
                params = {
                    character = players[1] and players[1].characterId or "default",
                    numPlayers = #players
                }
            })
        end
    })
    playAgainBtn.x = display.contentCenterX - 100
    playAgainBtn.y = display.contentHeight - 80
    sceneGroup:insert(playAgainBtn)
    
    menuBtn = widget.newButton({
        label = "MAIN MENU",
        labelColor = {default = {1, 1, 1}, over = {0.8, 0.8, 0.8}},
        defaultFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_default.png",
        overFile = gameConfig.ASSETS.GRAPHICS .. "ui/button_over.png",
        width = 150,
        height = 50,
        onRelease = function()
            composer.gotoScene("scenes.menu", {
                effect = "slideRight",
                time = 300
            })
        end
    })
    menuBtn.x = display.contentCenterX + 100
    menuBtn.y = display.contentHeight - 80
    sceneGroup:insert(menuBtn)
    
    -- Rewards display
    if totalCoinsEarned > 0 or experienceGained > 0 then
        local rewardsY = yPos + (#players * playerHeight) + 20
        
        local rewardsTitle = display.newText(sceneGroup, "REWARDS EARNED",
            display.contentCenterX, rewardsY, native.systemFontBold, 20)
        rewardsTitle:setFillColor(1, 1, 0)
        
        if totalCoinsEarned > 0 then
            local coinsText = display.newText(sceneGroup,
                "💰 +" .. totalCoinsEarned .. " coins",
                display.contentCenterX - 60, rewardsY + 30, native.systemFont, 16)
            coinsText:setFillColor(1, 1, 0)
        end
        
        if experienceGained > 0 then
            local expText = display.newText(sceneGroup,
                "⭐ +" .. experienceGained .. " exp",
                display.contentCenterX + 60, rewardsY + 30, native.systemFont, 16)
            expText:setFillColor(0, 1, 1)
        end
    end
    
    -- Level completion bonus
    if levelData.id and levelData.first_completion then
        local bonusText = display.newText(sceneGroup,
            "🎉 LEVEL COMPLETED! 🎉",
            display.contentCenterX, display.contentHeight - 150,
            native.systemFontBold, 18)
        bonusText:setFillColor(1, 0.5, 1)
        
        -- Animate bonus text
        transition.to(bonusText, {
            xScale = 1.2,
            yScale = 1.2,
            time = 1500,
            iterations = -1,
            transition = easing.inOutSine
        })
    end
end

function scene:show(event)
    local sceneGroup = self.view
    local phase = event.phase
    
    if phase == "will" then
        -- Scene is about to appear
    elseif phase == "did" then
        -- Scene is now on screen
        
        -- Play victory/results music
        soundManager.playMusic("results_theme", {
            loops = 1,
            volume = 0.8,
            fadein = 500
        })
        
        -- Play finish line sound for dramatic effect
        soundManager.playSound("finish_line")
        
        -- Animate buttons
        playAgainBtn.alpha = 0
        menuBtn.alpha = 0
        
        timer.performWithDelay(2000, function()
            transition.to(playAgainBtn, {alpha = 1, time = 300})
            transition.to(menuBtn, {alpha = 1, time = 300})
        end)
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
    if playAgainBtn then
        playAgainBtn:removeSelf()
        playAgainBtn = nil
    end
    
    if menuBtn then
        menuBtn:removeSelf()
        menuBtn = nil
    end
    
    players = {}
end

-- Scene event listeners
scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)

return scene