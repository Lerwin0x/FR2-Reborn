local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "lua.modules.assetLoader"
L1_1 = L1_1(L2_1)
L2_1 = L0_1.newScene
L2_1 = L2_1()
L3_1 = nil
L4_1 = nil

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A0_2.view
  L3_2 = 200
  L4_2 = L0_1
  L4_2 = L4_2.backgrounds
  L4_2 = L4_2.getBlurredBackground
  L4_2 = L4_2()
  L6_2 = L2_2
  L5_2 = L2_2.insert
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = "images/gui/common/logo.png"
  L7_2 = 224
  L8_2 = 135
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 * 0.5
  L5_2.x = L6_2
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 * 0.25
  L5_2.y = L6_2
  L7_2 = L2_2
  L6_2 = L2_2.insert
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = L0_1
  L6_2 = L6_2.newText
  L7_2 = {}
  L8_2 = L0_1
  L8_2 = L8_2.localized
  L8_2 = L8_2.get
  L9_2 = "DirtybitGame"
  L8_2 = L8_2(L9_2)
  L7_2.string = L8_2
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 * 0.5
  L7_2.x = L8_2
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 * 0.9
  L7_2.y = L8_2
  L7_2.size = 22
  L6_2 = L6_2(L7_2)
  L8_2 = L2_2
  L7_2 = L2_2.insert
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = "images/gui/loading/loadingBarBG.png"
  L9_2 = 200
  L10_2 = 22
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 * 0.5
  L7_2.x = L8_2
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 * 0.7
  L7_2.y = L8_2
  L9_2 = L2_2
  L8_2 = L2_2.insert
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = display
  L8_2 = L8_2.newRect
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 20
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L10_2 = L8_2
  L9_2 = L8_2.setFillColor
  L11_2 = 1
  L12_2 = 1
  L13_2 = 1
  L14_2 = 1
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2.anchorX = 0
  L8_2.anchorY = 0.5
  L8_2.x = 140
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 * 0.5
  L8_2.y = L9_2
  L10_2 = L2_2
  L9_2 = L2_2.insert
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = display
  L9_2 = L9_2.newImageRect
  L10_2 = "images/gui/loading/loadingBarFiller.png"
  L11_2 = 12
  L12_2 = 20
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L9_2.anchorX = 0
  L9_2.anchorY = 0.5
  L9_2.x = 140
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L10_2 = L10_2 * 0.7
  L9_2.y = L10_2
  L11_2 = L2_2
  L10_2 = L2_2.insert
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = display
  L10_2 = L10_2.newImageRect
  L11_2 = "images/gui/loading/loadingBar.png"
  L12_2 = 220
  L13_2 = 40
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = display
  L11_2 = L11_2.contentWidth
  L11_2 = L11_2 * 0.5
  L10_2.x = L11_2
  L11_2 = display
  L11_2 = L11_2.contentHeight
  L11_2 = L11_2 * 0.7
  L10_2.y = L11_2
  L12_2 = L2_2
  L11_2 = L2_2.insert
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L9_2
    if L0_3 then
      L0_3 = L9_2
      L0_3 = L0_3.width
      if L0_3 then
        L0_3 = transition
        L0_3 = L0_3.to
        L1_3 = L9_2
        L2_3 = {}
        L3_3 = L3_2
        L2_3.time = L3_3
        L3_3 = L9_2
        L3_3 = L3_3.width
        L3_3 = L3_3 + 38
        L2_3.width = L3_3
        L3_3 = L9_2
        L3_3 = L3_3.x
        L2_3.x = L3_3
        L0_3(L1_3, L2_3)
      end
    end
  end
  
  L3_1 = L11_2
end

L2_1.create = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    return
  end
  L3_2 = A0_2.view
  L4_2 = 240
  L5_2 = nil
  L6_2 = nil
  L7_2 = nil
  L8_2 = 40
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = nil
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L16_2 = nil
  L17_2 = nil
  L18_2 = nil
  L19_2 = L0_1
  L19_2 = L19_2.newText
  L20_2 = {}
  L21_2 = L0_1
  L21_2 = L21_2.localized
  L21_2 = L21_2.get
  L22_2 = "Downloading"
  L21_2 = L21_2(L22_2)
  L20_2.string = L21_2
  L21_2 = display
  L21_2 = L21_2.contentWidth
  L21_2 = L21_2 * 0.5
  L20_2.x = L21_2
  L21_2 = display
  L21_2 = L21_2.contentHeight
  L21_2 = L21_2 * 0.8
  L20_2.y = L21_2
  L20_2.size = 22
  L19_2 = L19_2(L20_2)
  L19_2.isVisible = false
  L21_2 = L3_2
  L20_2 = L3_2.insert
  L22_2 = L19_2
  L20_2(L21_2, L22_2)
  
  function L20_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L9_2
    L2_3 = L0_1
    L2_3 = L2_3.mapHandler
    L2_3 = L2_3.getNumberOfMaps
    L2_3 = L2_3()
    L1_3 = L1_3 + L2_3
    L9_2 = L1_3
    L1_3 = L19_2
    L2_3 = L0_1
    L2_3 = L2_3.localized
    L2_3 = L2_3.get
    L3_3 = "Downloading"
    L2_3 = L2_3(L3_3)
    L3_3 = L11_2
    L4_3 = "/"
    L5_3 = L9_2
    L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
    L1_3.text = L2_3
    L1_3 = L19_2
    L1_3.isVisible = true
    L1_3 = true
    L13_2 = L1_3
  end
  
  function L21_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L9_2
    L1_3 = L1_3 + 3
    L9_2 = L1_3
    L1_3 = L19_2
    L2_3 = L0_1
    L2_3 = L2_3.localized
    L2_3 = L2_3.get
    L3_3 = "Downloading"
    L2_3 = L2_3(L3_3)
    L3_3 = L11_2
    L4_3 = "/"
    L5_3 = L9_2
    L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
    L1_3.text = L2_3
    L1_3 = L19_2
    L1_3.isVisible = true
    L1_3 = true
    L14_2 = L1_3
  end
  
  function L22_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L8_2
    L1_3 = L1_3 + 1
    L8_2 = L1_3
    if A0_3 then
      L1_3 = L11_2
      L1_3 = L1_3 + 1
      L11_2 = L1_3
    end
    L1_3 = L19_2
    L2_3 = L0_1
    L2_3 = L2_3.localized
    L2_3 = L2_3.get
    L3_3 = "Downloading"
    L2_3 = L2_3(L3_3)
    L3_3 = L11_2
    L4_3 = "/"
    L5_3 = L9_2
    L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
    L1_3.text = L2_3
  end
  
  function L23_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getFacebookId
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.facebook
      L0_3 = L0_3.isLoggedIn
      L0_3 = L0_3()
      if not L0_3 then
        L0_3 = L0_1
        L0_3 = L0_3.facebookLogin
        if not L0_3 then
          function L0_3(A0_4)
            local L1_4, L2_4, L3_4, L4_4, L5_4
            
            L1_4 = A0_4.isError
            if L1_4 then
              L1_4 = native
              L1_4 = L1_4.showAlert
              L2_4 = "Error"
              L3_4 = "Could not login with Facebook."
              L4_4 = {}
              L5_4 = "Ok"
              L4_4[1] = L5_4
              L1_4(L2_4, L3_4, L4_4)
            end
          end
          
          L5_2 = L0_3
          L0_3 = L0_1
          L0_3 = L0_3.facebook
          L0_3 = L0_3.login
          L1_3 = {}
          L2_3 = L5_2
          L0_3(L1_3, L2_3)
        end
      end
    end
  end
  
  function L24_2()
    local L0_3, L1_3
    L0_3 = L3_1
    L0_3()
  end
  
  function L25_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L1_1
    L0_3 = L0_3.loadSounds
    L0_3()
    L0_3 = L24_2
    L0_3()
    L0_3 = timer
    L0_3 = L0_3.performWithDelay
    L1_3 = L4_2
    L2_3 = L6_2
    L3_3 = 1
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L18_2 = L0_3
  end
  
  function L26_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L1_1
    L0_3 = L0_3.loadAnimations3
    L0_3()
    L0_3 = L24_2
    L0_3()
    L0_3 = timer
    L0_3 = L0_3.performWithDelay
    L1_3 = L4_2
    L2_3 = L25_2
    L3_3 = 1
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L18_2 = L0_3
  end
  
  function L27_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L1_1
    L0_3 = L0_3.loadAnimations1
    L0_3()
    L0_3 = L1_1
    L0_3 = L0_3.loadAnimations2
    L0_3()
    L0_3 = L24_2
    L0_3()
    L0_3 = timer
    L0_3 = L0_3.performWithDelay
    L1_3 = L4_2
    L2_3 = L26_2
    L3_3 = 1
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L18_2 = L0_3
  end
  
  function L28_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L1_1
    L0_3 = L0_3.createConfigChecksum
    L0_3()
    L0_3 = L1_1
    L0_3 = L0_3.createMapChecksum
    L0_3()
    L0_3 = L1_1
    L0_3 = L0_3.loadIAP
    L0_3()
    L0_3 = L0_1
    L1_3 = require
    L2_3 = "lua.modules.tableUtil"
    L1_3 = L1_3(L2_3)
    L0_3.tableHelper = L1_3
    L0_3 = L0_1
    L0_3 = L0_3.comm
    L0_3 = L0_3.startSocialTCP
    L0_3()
    L0_3 = L23_2
    L0_3()
    L0_3 = L0_1
    L0_3 = L0_3.loadScene
    L1_3 = "lua.scenes.mainMenu"
    L0_3(L1_3)
    L0_3 = L1_1
    L0_3 = L0_3.loadSpine
    L0_3()
    L0_3 = L1_1
    L0_3 = L0_3.readJsonMapFiles
    L0_3()
    L0_3 = L24_2
    L0_3()
    L0_3 = timer
    L0_3 = L0_3.performWithDelay
    L1_3 = L4_2
    L2_3 = L27_2
    L3_3 = 1
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L18_2 = L0_3
  end
  
  function L29_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = A0_3.success
    if L1_3 == false then
      L1_3 = print
      L2_3 = "Warning: Failed to update config file."
      L1_3(L2_3)
      L1_3 = A0_3.configType
      if L1_3 == "awards" then
        L1_3 = L0_1
        L1_3.awardsDownloadFailure = true
      else
        L1_3 = A0_3.configType
        if L1_3 == "store" then
          L1_3 = L0_1
          L1_3.storeDownloadFailure = true
        else
          L1_3 = A0_3.configType
          if L1_3 == "config" then
            L1_3 = L0_1
            L1_3.configDownloadFailure = true
          end
        end
      end
    end
    L1_3 = L10_2
    L1_3 = L1_3 + 1
    L10_2 = L1_3
    L1_3 = L0_1
    L1_3 = L1_3.updatingConfingFiles
    if L1_3 == false then
      L1_3 = L15_2
      if L1_3 then
        L1_3 = false
        L15_2 = L1_3
        L1_3 = L0_1
        L1_3 = L1_3.awardsDownloadFailure
        if not L1_3 then
          L1_3 = L0_1
          L1_3 = L1_3.storeDownloadFailure
          if not L1_3 then
            L1_3 = L0_1
            L1_3 = L1_3.configDownloadFailure
            if not L1_3 then
              goto lbl_74
            end
          end
        end
        
        function L1_3()
          local L0_4, L1_4
          L0_4 = native
          L0_4 = L0_4.requestExit
          L0_4()
        end
        
        L2_3 = native
        L2_3 = L2_3.showAlert
        L3_3 = L0_1
        L3_3 = L3_3.localized
        L3_3 = L3_3.get
        L4_3 = "CorruptedFiles"
        L3_3 = L3_3(L4_3)
        L4_3 = L0_1
        L4_3 = L4_3.localized
        L4_3 = L4_3.get
        L5_3 = "CorruptedFilesText"
        L4_3 = L4_3(L5_3)
        L5_3 = {}
        L6_3 = L0_1
        L6_3 = L6_3.localized
        L6_3 = L6_3.get
        L7_3 = "Ok"
        L6_3, L7_3 = L6_3(L7_3)
        L5_3[1] = L6_3
        L5_3[2] = L7_3
        L6_3 = L1_3
        L2_3(L3_3, L4_3, L5_3, L6_3)
        L2_3 = print
        L3_3 = "Warning: Coudl not get new config files and current ones are currupted. Closing app."
        L2_3(L3_3)
        do return end
        ::lbl_74::
        L1_3 = L28_2
        L1_3()
      end
      L1_3 = L1_1
      L1_3 = L1_3.readJsonConfigFiles
      L1_3()
    end
    L1_3 = L22_2
    L2_3 = A0_3.success
    L1_3(L2_3)
  end
  
  function L30_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.success
    if L1_3 == false then
      L1_3 = print
      L2_3 = "Warning: Failed to update map."
      L1_3(L2_3)
      L1_3 = L0_1
      L1_3.mapDownloadFailure = true
    end
    L1_3 = L10_2
    L1_3 = L1_3 + 1
    L10_2 = L1_3
    L1_3 = L22_2
    L2_3 = A0_3.success
    L1_3(L2_3)
  end
  
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.updatingConfingFiles
    if not L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.updatingMaps
      if not L0_3 then
        goto lbl_22
      end
    end
    L0_3 = L0_1
    L0_3 = L0_3.config
    L0_3 = L0_3.ignoreJsonConfig
    if L0_3 then
    else
      L0_3 = timer
      L0_3 = L0_3.performWithDelay
      L1_3 = 200
      L2_3 = L6_2
      L0_3 = L0_3(L1_3, L2_3)
      L17_2 = L0_3
      return
    end
    ::lbl_22::
    L0_3 = L0_1
    L0_3 = L0_3.configDownloadFailure
    if not L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.awardsDownloadFailure
      if not L0_3 then
        L0_3 = L0_1
        L0_3 = L0_3.storeDownloadFailure
        if not L0_3 then
          L0_3 = L0_1
          L0_3 = L0_3.mapDownloadFailure
        end
      end
    end
    if L0_3 then
      L1_3 = L0_1
      L1_3 = L1_3.comm
      L1_3 = L1_3.stopTCPSocial
      L2_3 = true
      L1_3(L2_3)
      L1_3 = L0_1
      L1_3 = L1_3.createCustomOverlay
      L2_3 = 47
      L1_3(L2_3)
    end
    L1_3 = L13_2
    if L1_3 then
      L1_3 = L1_1
      L1_3 = L1_3.readMapDataToMemory
      L2_3 = true
      L1_3(L2_3)
    end
    L1_3 = L0_1
    L1_3 = L1_3.onboarding
    L1_3 = L1_3.init
    L1_3()
    L1_3 = L0_1
    L1_3 = L1_3.onboarding
    L1_3 = L1_3.checkOnboardingStatus
    L1_3()
    L1_3 = L0_1
    L1_3 = L1_3.onboarding
    L1_3 = L1_3.isActive
    if L1_3 == true then
      L1_3 = L0_1
      L1_3 = L1_3.onboarding
      L1_3 = L1_3.activateStep
      L1_3()
    else
      L1_3 = L0_1
      L1_3 = L1_3.loadScene
      L2_3 = "lua.scenes.playMenu"
      L1_3(L2_3)
      L1_3 = L0_1
      L1_3 = L1_3.data
      L1_3 = L1_3.wrongVersion
      if not L1_3 then
        L1_3 = L0_1
        L1_3 = L1_3.config
        L1_3 = L1_3.invalidUser
        if not L1_3 then
          L1_3 = L0_1
          L1_3 = L1_3.gotoScene
          L2_3 = "lua.scenes.mainMenu"
          L1_3(L2_3)
        end
      end
    end
  end
  
  function L31_2()
    local L0_3, L1_3, L2_3
    L0_3 = L1_1
    L0_3 = L0_3.readJsonConfigFiles
    L0_3 = L0_3()
    if L0_3 == 0 then
      L1_3 = print
      L2_3 = "INFO: Current config files have errors. Need to get new."
      L1_3(L2_3)
      L1_3 = true
      L15_2 = L1_3
      L1_3 = L1_1
      L1_3 = L1_3.updateConfigFiles
      L1_3()
    end
  end
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L1_1
    L0_3 = L0_3.loadFacebook
    L0_3()
    L0_3 = L31_2
    L0_3()
    L0_3 = L15_2
    if L0_3 then
      return
    else
      L0_3 = print
      L1_3 = "INFO: Current config files are OK. Continue download."
      L0_3(L1_3)
      L0_3 = L28_2
      L0_3()
    end
  end
  
  L32_2 = L24_2
  L32_2()
  L32_2 = timer
  L32_2 = L32_2.performWithDelay
  L33_2 = L4_2 * 1.5
  L34_2 = L7_2
  L35_2 = 1
  L32_2 = L32_2(L33_2, L34_2, L35_2)
  L18_2 = L32_2
  L32_2 = Runtime
  L33_2 = L32_2
  L32_2 = L32_2.addEventListener
  L34_2 = "downloadConfigDone"
  L35_2 = L29_2
  L32_2(L33_2, L34_2, L35_2)
  L32_2 = Runtime
  L33_2 = L32_2
  L32_2 = L32_2.addEventListener
  L34_2 = "downloadMapDone"
  L35_2 = L30_2
  L32_2(L33_2, L34_2, L35_2)
  L32_2 = Runtime
  L33_2 = L32_2
  L32_2 = L32_2.addEventListener
  L34_2 = "downloadStartConfig"
  L35_2 = L21_2
  L32_2(L33_2, L34_2, L35_2)
  L32_2 = Runtime
  L33_2 = L32_2
  L32_2 = L32_2.addEventListener
  L34_2 = "downloadStartMaps"
  L35_2 = L20_2
  L32_2(L33_2, L34_2, L35_2)
  
  function L32_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "downloadStartMaps"
    L3_3 = L20_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "downloadStartConfig"
    L3_3 = L21_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "downloadMapDone"
    L3_3 = L30_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "downloadConfigDone"
    L3_3 = L29_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L18_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L18_2
      L0_3(L1_3)
      L0_3 = nil
      L18_2 = L0_3
    end
    L0_3 = L16_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L16_2
      L0_3(L1_3)
      L0_3 = nil
      L16_2 = L0_3
    end
    L0_3 = L17_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L17_2
      L0_3(L1_3)
      L0_3 = nil
      L17_2 = L0_3
    end
  end
  
  L4_1 = L32_2
end

L2_1.show = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    L3_2 = L4_1
    if L3_2 then
      L3_2 = L4_1
      L3_2()
      L3_2 = nil
      L4_1 = L3_2
    end
  elseif L2_2 == "did" then
    L3_2 = L0_1
    L3_2 = L3_2.removeScene
    L4_2 = "lua.scenes.loadingScene"
    L3_2(L4_2)
  end
end

L2_1.hide = L5_1

function L5_1(A0_2, A1_2)
end

L2_1.destroy = L5_1
L6_1 = L2_1
L5_1 = L2_1.addEventListener
L7_1 = "create"
L8_1 = L2_1
L5_1(L6_1, L7_1, L8_1)
L6_1 = L2_1
L5_1 = L2_1.addEventListener
L7_1 = "show"
L8_1 = L2_1
L5_1(L6_1, L7_1, L8_1)
L6_1 = L2_1
L5_1 = L2_1.addEventListener
L7_1 = "hide"
L8_1 = L2_1
L5_1(L6_1, L7_1, L8_1)
L6_1 = L2_1
L5_1 = L2_1.addEventListener
L7_1 = "destroy"
L8_1 = L2_1
L5_1(L6_1, L7_1, L8_1)
return L2_1
