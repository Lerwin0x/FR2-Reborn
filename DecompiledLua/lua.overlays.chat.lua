local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "lua.network.tcpClient"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "json"
L2_1 = L2_1(L3_1)
L3_1 = L0_1.newScene
L3_1 = L3_1()
L4_1 = nil
L5_1 = nil
L6_1 = nil
L7_1 = nil

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2
  L2_2 = A0_2.view
  L3_2 = require
  L4_2 = "lua.modules.tableHelper"
  L3_2 = L3_2(L4_2)
  L4_2 = require
  L5_2 = "lua.network.chatMessageFormat"
  L4_2 = L4_2(L5_2)
  L5_2 = nil
  L6_2 = 0
  L7_2 = nil
  L8_2 = nil
  L9_2 = nil
  L10_2 = nil
  L11_2 = false
  L12_2 = false
  L13_2 = 25
  L14_2 = 160
  L15_2 = 0
  L16_2 = ""
  L17_2 = nil
  L18_2 = nil
  L19_2 = nil
  L20_2 = nil
  
  function L21_2(A0_3)
    local L1_3
    if not A0_3 then
      A0_3 = 1000
    end
    
    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      L1_4 = A0_4.text
      if L1_4 then
        L1_4 = string
        L1_4 = L1_4.len
        L2_4 = A0_4.text
        L1_4 = L1_4(L2_4)
        L2_4 = A0_3
        if L1_4 > L2_4 then
          L1_4 = A0_4.target
          L2_4 = A0_4.text
          L3_4 = L2_4
          L2_4 = L2_4.sub
          L4_4 = 1
          L5_4 = A0_3
          L2_4 = L2_4(L3_4, L4_4, L5_4)
          L1_4.text = L2_4
        end
      end
      L1_4 = A0_4.phase
      if "began" == L1_4 then
        L1_4 = L7_1
        L2_4 = true
        L1_4(L2_4)
      else
        L1_4 = A0_4.phase
        if "ended" == L1_4 then
          L1_4 = L7_1
          L2_4 = false
          L1_4(L2_4)
        else
          L1_4 = A0_4.phase
          if "submitted" == L1_4 then
            L1_4 = native
            L1_4 = L1_4.setKeyboardFocus
            L2_4 = nil
            L1_4(L2_4)
            L1_4 = isAndroid
            if L1_4 then
              L1_4 = native
              L1_4 = L1_4.setProperty
              L2_4 = "androidSystemUiVisibility"
              L3_4 = "immersiveSticky"
              L1_4(L2_4, L3_4)
            end
            L1_4 = L7_1
            L2_4 = false
            L1_4(L2_4)
            
            function L1_4()
              local L0_5, L1_5
              L0_5 = L20_2
              L0_5()
            end
            
            L2_4 = timer
            L2_4 = L2_4.performWithDelay
            L3_4 = 10
            L4_4 = L1_4
            L5_4 = 1
            L2_4 = L2_4(L3_4, L4_4, L5_4)
            L19_2 = L2_4
          end
        end
      end
    end
    
    return L1_3
  end
  
  L22_2 = 25
  L23_2 = isAndroid
  if L23_2 then
    L22_2 = 35
  end
  L23_2 = display
  L23_2 = L23_2.newRect
  L24_2 = 0
  L25_2 = 0
  L26_2 = display
  L26_2 = L26_2.contentWidth
  L27_2 = display
  L27_2 = L27_2.contentHeight
  L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
  L23_2.anchorX = 0
  L23_2.anchorY = 0
  L25_2 = L23_2
  L24_2 = L23_2.setFillColor
  L26_2 = 0
  L27_2 = 0
  L28_2 = 0
  L29_2 = 0.5882352941176471
  L24_2(L25_2, L26_2, L27_2, L28_2, L29_2)
  L23_2.x = 0
  L23_2.y = 0
  L24_2 = display
  L24_2 = L24_2.newImageRect
  L25_2 = "images/gui/customplay/chatWindow.png"
  L26_2 = 287
  L27_2 = 320
  L24_2 = L24_2(L25_2, L26_2, L27_2)
  L24_2.anchorX = 0.5
  L24_2.anchorY = 0
  L24_2.x = 240
  L24_2.y = 0
  L25_2 = native
  L25_2 = L25_2.newTextField
  L26_2 = display
  L26_2 = L26_2.contentWidth
  L26_2 = L26_2 * 4
  L27_2 = display
  L27_2 = L27_2.contentHeight
  L27_2 = L27_2 * 0.2
  L28_2 = 250
  L29_2 = L22_2
  L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2)
  L6_1 = L25_2
  L25_2 = L6_1
  L25_2.anchorX = 0.5
  L25_2 = L6_1
  L25_2.anchorY = 0.5
  L25_2 = L6_1
  L25_2.x = 240
  L25_2 = L6_1
  L25_2.y = 300
  L25_2 = L6_1
  L26_2 = L21_2
  L27_2 = 300
  L26_2 = L26_2(L27_2)
  L25_2.userInput = L26_2
  L25_2 = L6_1
  L26_2 = L25_2
  L25_2 = L25_2.addEventListener
  L27_2 = "userInput"
  L28_2 = L6_1
  L28_2 = L28_2.userInput
  L25_2(L26_2, L27_2, L28_2)
  L25_2 = display
  L25_2 = L25_2.newImageRect
  L26_2 = "images/gui/customplay/chatBar.png"
  L27_2 = 327
  L28_2 = 44
  L25_2 = L25_2(L26_2, L27_2, L28_2)
  L25_2.anchorX = 0.5
  L25_2.anchorY = 1
  L25_2.x = 240
  L25_2.y = 320
  
  function L26_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
    L0_3 = native
    L0_3 = L0_3.setKeyboardFocus
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = isAndroid
    if L0_3 then
      L0_3 = native
      L0_3 = L0_3.setProperty
      L1_3 = "androidSystemUiVisibility"
      L2_3 = "immersiveSticky"
      L0_3(L1_3, L2_3)
    end
  end
  
  L27_2 = L0_1
  L27_2 = L27_2.newButton
  L28_2 = {}
  L28_2.x = 353
  L28_2.y = 15
  L28_2.width = 43
  L28_2.height = 38
  L28_2.image = "images/gui/common/buttonClosePopupBrown.png"
  L28_2.onRelease = L26_2
  L27_2 = L27_2(L28_2)
  
  function L28_2()
    local L0_3, L1_3
  end
  
  function L29_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = tonumber
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = L0_1
    L2_3 = L2_3.localized
    L2_3 = L2_3.get
    L3_3 = "HostSelect"
    L2_3 = L2_3(L3_3)
    L3_3 = "some map"
    L2_3 = L2_3 .. L3_3
    return L2_3
  end
  
  L30_2 = L3_2.new
  L31_2 = 130
  L32_2 = 0
  L33_2 = 220
  L34_2 = 270
  L35_2 = 138
  L36_2 = nil
  L37_2 = "chat"
  L38_2 = L28_2
  L30_2 = L30_2(L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
  L5_2 = L30_2
  
  function L30_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = A0_3[2]
    L2_3 = A0_3[3]
    L3_3 = A0_3[4]
    L4_3 = nil
    L5_3 = L4_2
    L5_3 = L5_3.playerMessageName
    L5_3 = L5_3()
    if L1_3 == L5_3 then
      L5_3 = L2_3
      L6_3 = ":"
      L4_3 = L5_3 .. L6_3
    else
      L5_3 = L4_2
      L5_3 = L5_3.playerMessage
      L5_3 = L5_3()
      if L1_3 == L5_3 then
        L4_3 = L3_3
      else
        L5_3 = L4_2
        L5_3 = L5_3.joinGame
        L5_3 = L5_3()
        if L1_3 == L5_3 then
          L5_3 = L2_3
          L6_3 = " "
          L7_3 = L0_1
          L7_3 = L7_3.localized
          L7_3 = L7_3.get
          L8_3 = "JoinedGame"
          L7_3 = L7_3(L8_3)
          L4_3 = L5_3 .. L6_3 .. L7_3
        else
          L5_3 = L4_2
          L5_3 = L5_3.leaveGame
          L5_3 = L5_3()
          if L1_3 == L5_3 then
            L5_3 = L2_3
            L6_3 = " "
            L7_3 = L0_1
            L7_3 = L7_3.localized
            L7_3 = L7_3.get
            L8_3 = "LeftGame"
            L7_3 = L7_3(L8_3)
            L4_3 = L5_3 .. L6_3 .. L7_3
          else
            L5_3 = L4_2
            L5_3 = L5_3.playerKicked
            L5_3 = L5_3()
            if L1_3 == L5_3 then
              L5_3 = L2_3
              L6_3 = " "
              L7_3 = L0_1
              L7_3 = L7_3.localized
              L7_3 = L7_3.get
              L8_3 = "WasKicked"
              L7_3 = L7_3(L8_3)
              L4_3 = L5_3 .. L6_3 .. L7_3
            else
              L5_3 = L4_2
              L5_3 = L5_3.startGame
              L5_3 = L5_3()
              if L1_3 == L5_3 then
                L5_3 = L0_1
                L5_3 = L5_3.localized
                L5_3 = L5_3.get
                L6_3 = "GameStartingChat"
                L5_3 = L5_3(L6_3)
                L4_3 = L5_3
              else
                L5_3 = L4_2
                L5_3 = L5_3.serverMessage
                L5_3 = L5_3()
                if L1_3 == L5_3 then
                  L4_3 = L2_3
                else
                  L5_3 = L4_2
                  L5_3 = L5_3.changedMap
                  L5_3 = L5_3()
                  if L1_3 == L5_3 then
                    L5_3 = L29_2
                    L6_3 = L2_3
                    L5_3 = L5_3(L6_3)
                    L4_3 = L5_3
                  end
                end
              end
            end
          end
        end
      end
    end
    return L4_3
  end
  
  function L31_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3
    L2_3 = L12_2
    if L2_3 then
      return
    end
    L2_3 = A0_3[2]
    L3_3 = A0_3[3]
    L4_3 = A0_3[4]
    L5_3 = false
    L6_3 = 0
    if A1_3 then
      L6_3 = A1_3
    end
    L7_3 = L16_2
    if L7_3 then
      L7_3 = L4_2
      L7_3 = L7_3.playerMessage
      L7_3 = L7_3()
      if L2_3 == L7_3 then
        L7_3 = L16_2
        if L7_3 ~= L3_3 then
          L5_3 = true
          L7_3 = L4_2
          L7_3 = L7_3.playerMessageName
          L7_3 = L7_3()
          L2_3 = L7_3
          L7_3 = L4_2
          L7_3 = L7_3.playerMessageName
          L7_3 = L7_3()
          A0_3[2] = L7_3
        end
        L16_2 = L3_3
    end
    else
      L7_3 = ""
      L16_2 = L7_3
    end
    L7_3 = L30_2
    L8_3 = A0_3
    L7_3 = L7_3(L8_3)
    if L7_3 == nil then
      return
    end
    L8_3 = L5_2
    L8_3 = L8_3.getTable
    L8_3 = L8_3()
    L9_3 = L0_1
    L9_3 = L9_3.newText
    L10_3 = {}
    L10_3.string = L7_3
    L10_3.size = 14
    L10_3.width = 220
    L10_3.height = 0
    L9_3 = L9_3(L10_3)
    L10_3 = {}
    L10_3.textType = L2_3
    L10_3.formatedText = L7_3
    L10_3.from = L3_3
    L10_3.splitTable = L5_3
    L11_3 = math
    L11_3 = L11_3.ceil
    L12_3 = L9_3.height
    L11_3 = L11_3(L12_3)
    L11_3 = L11_3 + 6
    L12_3 = L6_2
    L12_3 = L12_3 + L11_3
    L6_2 = L12_3
    if L8_3 then
      L13_3 = L8_3
      L12_3 = L8_3.insertRow
      L14_3 = {}
      L14_3.rowHeight = L11_3
      L15_3 = {}
      L16_3 = {}
      L17_3 = 1
      L18_3 = 1
      L19_3 = 1
      L20_3 = 0
      L16_3[1] = L17_3
      L16_3[2] = L18_3
      L16_3[3] = L19_3
      L16_3[4] = L20_3
      L15_3.default = L16_3
      L14_3.rowColor = L15_3
      L15_3 = {}
      L16_3 = 0.8627450980392157
      L17_3 = 0.8627450980392157
      L18_3 = 0.8627450980392157
      L15_3[1] = L16_3
      L15_3[2] = L17_3
      L15_3[3] = L18_3
      L14_3.lineColor = L15_3
      L14_3.params = L10_3
      L12_3(L13_3, L14_3)
    end
    L12_3 = L6_2
    L14_3 = L8_3
    L13_3 = L8_3.getContentPosition
    L13_3 = L13_3(L14_3)
    L12_3 = L12_3 + L13_3
    L13_3 = L11_2
    if L13_3 then
      L13_3 = L15_2
      L12_3 = L12_3 - L13_3
    end
    if L5_3 then
      L13_3 = L4_2
      L13_3 = L13_3.playerMessage
      L13_3 = L13_3()
      A0_3[2] = L13_3
      L13_3 = L31_2
      L14_3 = A0_3
      L15_3 = L11_3
      L13_3(L14_3, L15_3)
    else
      L13_3 = L6_1
      L13_3 = L13_3.y
      L14_3 = L13_2
      L13_3 = L13_3 - L14_3
      if L12_3 > L13_3 then
        L14_3 = L8_3
        L13_3 = L8_3.getContentPosition
        L13_3 = L13_3(L14_3)
        L14_3 = L13_3 - L11_3
        L13_3 = L14_3 - L6_3
        L15_3 = L8_3
        L14_3 = L8_3.scrollToY
        L16_3 = {}
        L16_3.y = L13_3
        L16_3.time = 0
        L14_3(L15_3, L16_3)
      end
    end
    L14_3 = L9_3
    L13_3 = L9_3.removeSelf
    L13_3(L14_3)
    L9_3 = nil
  end
  
  L32_2 = L0_1
  L32_2.chatListener = L31_2
  
  function L32_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L5_2
    L0_3 = L0_3.getTable
    L0_3 = L0_3()
    L1_3 = L6_2
    L3_3 = L0_3
    L2_3 = L0_3.getContentPosition
    L2_3 = L2_3(L3_3)
    L1_3 = L1_3 + L2_3
    L2_3 = L6_1
    L2_3 = L2_3.y
    L3_3 = L13_2
    L2_3 = L2_3 - L3_3
    if L1_3 > L2_3 then
      L3_3 = L0_3
      L2_3 = L0_3.getContentPosition
      L2_3 = L2_3(L3_3)
      L3_3 = L6_1
      L3_3 = L3_3.y
      L4_3 = L13_2
      L3_3 = L3_3 - L4_3
      L3_3 = L1_3 - L3_3
      L2_3 = L2_3 - L3_3
      L5_3 = L0_3
      L4_3 = L0_3.scrollToY
      L6_3 = {}
      L6_3.y = L2_3
      L6_3.time = 0
      L4_3(L5_3, L6_3)
    end
  end
  
  function L33_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L0_1
      L1_3 = L1_3.hideOverlay
      L1_3()
      L1_3 = native
      L1_3 = L1_3.setKeyboardFocus
      L2_3 = nil
      L1_3(L2_3)
      L1_3 = isAndroid
      if L1_3 then
        L1_3 = native
        L1_3 = L1_3.setProperty
        L2_3 = "androidSystemUiVisibility"
        L3_3 = "immersiveSticky"
        L1_3(L2_3, L3_3)
      end
    end
    L1_3 = true
    return L1_3
  end
  
  function L34_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L11_2
    if L1_3 then
      L1_3 = L7_1
      L2_3 = false
      L1_3(L2_3)
      L1_3 = native
      L1_3 = L1_3.setKeyboardFocus
      L2_3 = nil
      L1_3(L2_3)
      L1_3 = isAndroid
      if L1_3 then
        L1_3 = native
        L1_3 = L1_3.setProperty
        L2_3 = "androidSystemUiVisibility"
        L3_3 = "immersiveSticky"
        L1_3(L2_3, L3_3)
      end
    end
    L1_3 = true
    return L1_3
  end
  
  function L20_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L6_1
    L0_3 = L0_3.text
    if L0_3 then
      L1_3 = string
      L1_3 = L1_3.len
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if 0 < L1_3 then
        L1_3 = L31_2
        L2_3 = "testing"
        L1_3(L2_3)
        L1_3 = L2_1
        L1_3 = L1_3.encode
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        L0_3 = L1_3
        L1_3 = L0_1
        L1_3 = L1_3.gameConfig
        L1_3 = L1_3.getClientMessageTypeForName
        L2_3 = "CHAT"
        L1_3 = L1_3(L2_3)
        L2_3 = "["
        L3_3 = L1_3
        L4_3 = ","
        L5_3 = L0_3
        L6_3 = "]"
        L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3
        L3_3 = L1_1
        L3_3 = L3_3.sendMinimizedMessage
        L4_3 = L2_3
        L3_3(L4_3)
        L3_3 = L6_1
        L3_3.text = ""
      end
    end
    L1_3 = true
    return L1_3
  end
  
  L35_2 = L0_1
  L35_2 = L35_2.newButton
  L36_2 = {}
  L36_2.x = 426
  L36_2.y = 298
  L36_2.width = 75
  L36_2.height = 44
  L36_2.image = "images/gui/customplay/buttonSendmsg.png"
  L36_2.onRelease = L20_2
  L35_2 = L35_2(L36_2)
  
  function L36_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L5_2
    L1_3 = L1_3.getTable
    L1_3 = L1_3()
    L11_2 = A0_3
    if A0_3 then
      L2_3 = L35_2
      L3_3 = L7_2
      L4_3 = L14_2
      L3_3 = L3_3 - L4_3
      L2_3.y = L3_3
      L2_3 = L6_1
      L3_3 = L9_2
      L4_3 = L14_2
      L3_3 = L3_3 - L4_3
      L2_3.y = L3_3
      L2_3 = L25_2
      L3_3 = L10_2
      L4_3 = L14_2
      L3_3 = L3_3 - L4_3
      L2_3.y = L3_3
      L2_3 = L6_2
      L4_3 = L1_3
      L3_3 = L1_3.getContentPosition
      L3_3 = L3_3(L4_3)
      L2_3 = L2_3 + L3_3
      L3_3 = L6_1
      L3_3 = L3_3.y
      L4_3 = L13_2
      L3_3 = L3_3 - L4_3
      if L2_3 > L3_3 then
        L3_3 = L6_1
        L3_3 = L3_3.y
        L4_3 = L13_2
        L3_3 = L3_3 - L4_3
        L3_3 = L2_3 - L3_3
        L4_3 = L14_2
        if L3_3 > L4_3 then
          L3_3 = L14_2
        end
        L15_2 = L3_3
        L4_3 = L8_2
        L4_3 = L4_3 - L3_3
        L1_3.y = L4_3
      end
      L3_3 = L1_1
      L3_3 = L3_3.sendStartTyping
      L3_3()
    else
      L2_3 = L35_2
      L3_3 = L7_2
      L2_3.y = L3_3
      L2_3 = L8_2
      L1_3.y = L2_3
      L2_3 = L6_1
      L3_3 = L9_2
      L2_3.y = L3_3
      L2_3 = L25_2
      L3_3 = L10_2
      L2_3.y = L3_3
      L2_3 = 0
      L15_2 = L2_3
      L2_3 = L1_1
      L2_3 = L2_3.sendStopTyping
      L2_3()
    end
  end
  
  L7_1 = L36_2
  
  function L36_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L23_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L24_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L27_2
    L0_3(L1_3, L2_3)
  end
  
  function L37_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L25_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L27_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L6_1
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L35_2
    L0_3(L1_3, L2_3)
  end
  
  function L38_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L12_2
    if not L0_3 then
      L0_3 = L23_2
      L1_3 = L0_3
      L0_3 = L0_3.addEventListener
      L2_3 = "touch"
      L3_3 = L33_2
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L24_2
      L1_3 = L0_3
      L0_3 = L0_3.addEventListener
      L2_3 = "touch"
      L3_3 = L34_2
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L24_2
      L1_3 = L0_3
      L0_3 = L0_3.addEventListener
      L2_3 = "tap"
      L3_3 = L34_2
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  
  function L39_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L12_2
    if L0_3 then
      return
    end
    L0_3 = true
    L12_2 = L0_3
    
    function L0_3(A0_4)
      local L1_4
    end
    
    L7_1 = L0_3
    L0_3 = L1_1
    L0_3 = L0_3.sendStopTyping
    L0_3()
    L0_3 = L0_1
    L0_3.chatListener = nil
    L0_3 = native
    L0_3 = L0_3.setKeyboardFocus
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = isAndroid
    if L0_3 then
      L0_3 = native
      L0_3 = L0_3.setProperty
      L1_3 = "androidSystemUiVisibility"
      L2_3 = "immersiveSticky"
      L0_3(L1_3, L2_3)
    end
    L0_3 = L18_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L18_2
      L0_3(L1_3)
      L0_3 = nil
      L18_2 = L0_3
    end
    L0_3 = L19_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L19_2
      L0_3(L1_3)
      L0_3 = nil
      L19_2 = L0_3
    end
    L0_3 = L6_1
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "userInput"
    L3_3 = L6_1
    L3_3 = L3_3.userInput
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L17_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L17_2
      L0_3(L1_3)
      L0_3 = nil
      L17_2 = L0_3
    end
    L0_3 = L5_2
    if L0_3 then
      L0_3 = L5_2
      L0_3 = L0_3.cleanTable
      L0_3()
      L0_3 = nil
      L5_2 = L0_3
    end
    L0_3 = L23_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L33_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L24_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L34_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L24_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "tap"
    L3_3 = L34_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L4_1 = L39_2
  L39_2 = L36_2
  L39_2()
  L39_2 = L5_2.createTable
  L40_2 = {}
  L41_2 = L2_2
  L39_2(L40_2, L41_2)
  L39_2 = L37_2
  L39_2()
  L39_2 = timer
  L39_2 = L39_2.performWithDelay
  L40_2 = 200
  L41_2 = L38_2
  L39_2 = L39_2(L40_2, L41_2)
  L18_2 = L39_2
  L39_2 = {}
  L40_2 = 0
  L41_2 = 6
  L42_2 = "Never share your account information!"
  L43_2 = ""
  L39_2[1] = L40_2
  L39_2[2] = L41_2
  L39_2[3] = L42_2
  L39_2[4] = L43_2
  L40_2 = L31_2
  L41_2 = L39_2
  L40_2(L41_2)
  L40_2 = 1
  L41_2 = L0_1
  L41_2 = L41_2.data
  L41_2 = L41_2.chatLog
  L41_2 = #L41_2
  L42_2 = 1
  for L43_2 = L40_2, L41_2, L42_2 do
    L44_2 = L31_2
    L45_2 = L0_1
    L45_2 = L45_2.data
    L45_2 = L45_2.chatLog
    L45_2 = L45_2[L43_2]
    L44_2(L45_2)
  end
  L40_2 = L32_2
  L40_2()
  L7_2 = L35_2.y
  L40_2 = L5_2.getTable
  L40_2 = L40_2()
  L8_2 = L40_2.y
  L40_2 = L6_1
  L9_2 = L40_2.y
  L10_2 = L25_2.y
end

L3_1.create = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    return
  end
  L4_2 = require
  L5_2 = "lua.modules.androidBackButton"
  L4_2 = L4_2(L5_2)
  L5_2 = isAndroid
  if not L5_2 then
    L5_2 = isSimulator
    if not L5_2 then
      L5_2 = L7_1
      L6_2 = true
      L5_2(L6_2)
      L5_2 = native
      L5_2 = L5_2.setKeyboardFocus
      L6_2 = L6_1
      L5_2(L6_2)
    end
  end
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = L4_2
    L0_3 = L0_3.isOverlay
    L1_3 = false
    L0_3(L1_3)
  end
  
  L5_1 = L5_2
  L5_2 = L4_2.isOverlay
  L6_2 = true
  L5_2(L6_2)
end

L3_1.show = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L3_2 = A1_2.parent
    if L3_2 then
      L3_2 = A1_2.parent
      L3_2 = L3_2.overlayEnded
      if L3_2 then
        L3_2 = A1_2.parent
        L4_2 = L3_2
        L3_2 = L3_2.overlayEnded
        L3_2(L4_2)
      end
    end
    return
  end
  L3_2 = L5_1
  if L3_2 then
    L3_2 = L5_1
    L3_2()
    L3_2 = nil
    L5_1 = L3_2
  end
end

L3_1.hide = L8_1

function L8_1(A0_2, A1_2)
  local L2_2
  L2_2 = L4_1
  if L2_2 then
    L2_2 = L4_1
    L2_2()
    L2_2 = nil
    L4_1 = L2_2
  end
end

L3_1.destroy = L8_1
L9_1 = L3_1
L8_1 = L3_1.addEventListener
L10_1 = "create"
L11_1 = L3_1
L8_1(L9_1, L10_1, L11_1)
L9_1 = L3_1
L8_1 = L3_1.addEventListener
L10_1 = "show"
L11_1 = L3_1
L8_1(L9_1, L10_1, L11_1)
L9_1 = L3_1
L8_1 = L3_1.addEventListener
L10_1 = "hide"
L11_1 = L3_1
L8_1(L9_1, L10_1, L11_1)
L9_1 = L3_1
L8_1 = L3_1.addEventListener
L10_1 = "destroy"
L11_1 = L3_1
L8_1(L9_1, L10_1, L11_1)
return L3_1
