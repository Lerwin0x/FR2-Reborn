local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.newScene
L1_1 = L1_1()
L2_1 = nil
L3_1 = nil
L4_1 = nil
L5_1 = nil
L6_1 = require
L7_1 = "lua.modules.clans.clanStatOverview"
L6_1 = L6_1(L7_1)
L7_1 = nil

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2
  L2_2 = A0_2.view
  L3_2 = require
  L4_2 = "lua.modules.tableHelper"
  L3_2 = L3_2(L4_2)
  L4_2 = require
  L5_2 = "lua.network.httpsMessageFormat"
  L4_2 = L4_2(L5_2)
  L5_2 = require
  L6_2 = "lua.network.tcpMessageFormat"
  L5_2 = L5_2(L6_2)
  L6_2 = nil
  L7_2 = nil
  L8_2 = display
  L8_2 = L8_2.newGroup
  L8_2 = L8_2()
  L9_2 = nil
  L10_2 = nil
  L11_2 = nil
  L12_2 = nil
  L13_2 = nil
  L14_2 = nil
  L15_2 = nil
  L16_2 = nil
  L17_2 = false
  L18_2 = false
  L19_2 = false
  L20_2 = nil
  L21_2 = A1_2.params
  if L21_2 then
    L21_2 = A1_2.params
    L21_2 = L21_2.mysteryBox
    if L21_2 then
      L21_2 = A1_2.params
      L18_2 = L21_2.mysteryBox
    else
      L21_2 = A1_2.params
      L21_2 = L21_2.tabToShow
      if L21_2 then
        L21_2 = A1_2.params
        L20_2 = L21_2.tabToShow
      end
    end
  end
  L21_2 = L6_1
  L21_2 = L21_2.create
  L21_2 = L21_2()
  L7_1 = L21_2
  L21_2 = L7_1
  L21_2 = L21_2.hide
  L21_2()
  L8_2.isVisible = false
  L21_2 = L0_1
  L21_2.overlayWithNetwork = true
  L21_2 = display
  L21_2 = L21_2.newRect
  L22_2 = 0
  L23_2 = 0
  L24_2 = display
  L24_2 = L24_2.contentWidth
  L25_2 = display
  L25_2 = L25_2.contentHeight
  L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2)
  L21_2.anchorX = 0
  L21_2.anchorY = 0
  L23_2 = L21_2
  L22_2 = L21_2.setFillColor
  L24_2 = 0
  L25_2 = 0
  L26_2 = 0
  L27_2 = 0.5882352941176471
  L22_2(L23_2, L24_2, L25_2, L26_2, L27_2)
  L21_2.x = 0
  L21_2.y = 0
  L22_2 = display
  L22_2 = L22_2.newImageRect
  L23_2 = "images/gui/friends/mainWindow.png"
  L24_2 = 330
  L25_2 = 320
  L22_2 = L22_2(L23_2, L24_2, L25_2)
  L22_2.anchorX = 0.5
  L22_2.anchorY = 0
  L22_2.x = 240
  L22_2.y = 0
  L23_2 = display
  L23_2 = L23_2.newRect
  L24_2 = L22_2.x
  L25_2 = L22_2.y
  L26_2 = L22_2.width
  L27_2 = L22_2.height
  L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
  L23_2.anchorX = 0.5
  L23_2.anchorY = 0
  L23_2.isHitTestable = true
  L25_2 = L23_2
  L24_2 = L23_2.setFillColor
  L26_2 = 0
  L27_2 = 0
  L28_2 = 0
  L29_2 = 0
  L24_2(L25_2, L26_2, L27_2, L28_2, L29_2)
  L24_2 = display
  L24_2 = L24_2.newImageRect
  L25_2 = "images/gui/friends/header.png"
  L26_2 = 306
  L27_2 = 38
  L24_2 = L24_2(L25_2, L26_2, L27_2)
  L24_2.anchorX = 0.5
  L24_2.anchorY = 0
  L24_2.x = 240
  L24_2.y = 0
  L25_2 = L0_1
  L25_2 = L25_2.newText
  L26_2 = {}
  L27_2 = L0_1
  L27_2 = L27_2.localized
  L27_2 = L27_2.get
  L28_2 = "Friends"
  L27_2 = L27_2(L28_2)
  L26_2.string = L27_2
  L26_2.size = 30
  L27_2 = display
  L27_2 = L27_2.contentWidth
  L27_2 = L27_2 * 0.5
  L26_2.x = L27_2
  L26_2.y = 16
  L27_2 = {}
  L28_2 = 1
  L29_2 = 1
  L30_2 = 1
  L27_2[1] = L28_2
  L27_2[2] = L29_2
  L27_2[3] = L30_2
  L26_2.color = L27_2
  L25_2 = L25_2(L26_2)
  L26_2 = display
  L26_2 = L26_2.newImageRect
  L27_2 = "images/gui/friends/buttonMessagesInactive.png"
  L28_2 = 62
  L29_2 = 62
  L26_2 = L26_2(L27_2, L28_2, L29_2)
  L26_2.anchorX = 0
  L26_2.anchorY = 0
  L26_2.x = 40
  L26_2.y = 70
  L27_2 = display
  L27_2 = L27_2.newImageRect
  L28_2 = "images/gui/friends/buttonFriendsInactive.png"
  L29_2 = 62
  L30_2 = 62
  L27_2 = L27_2(L28_2, L29_2, L30_2)
  L27_2.anchorX = 0
  L27_2.anchorY = 0
  L27_2.x = 40
  L27_2.y = 140
  L28_2 = display
  L28_2 = L28_2.newImageRect
  L29_2 = "images/gui/friends/buttonFacebookInactive.png"
  L30_2 = 62
  L31_2 = 62
  L28_2 = L28_2(L29_2, L30_2, L31_2)
  L28_2.anchorX = 0
  L28_2.anchorY = 0
  L28_2.x = 40
  L28_2.y = 210
  L29_2 = display
  L29_2 = L29_2.newImageRect
  L30_2 = "images/gui/friends/editPressed.png"
  L31_2 = 43
  L32_2 = 38
  L29_2 = L29_2(L30_2, L31_2, L32_2)
  L29_2.anchorX = 0.5
  L29_2.anchorY = 0.5
  L29_2.x = 116
  L29_2.y = 22
  L29_2.isVisible = false
  L30_2 = display
  L30_2 = L30_2.newGroup
  L30_2 = L30_2()
  L31_2 = display
  L31_2 = L31_2.newImageRect
  L32_2 = "images/gui/friends/connectFacebook.png"
  L33_2 = 210
  L34_2 = 154
  L31_2 = L31_2(L32_2, L33_2, L34_2)
  L31_2.anchorX = 0
  L31_2.anchorY = 0
  L31_2.x = 140
  L31_2.y = 70
  L33_2 = L30_2
  L32_2 = L30_2.insert
  L34_2 = L31_2
  L32_2(L33_2, L34_2)
  L32_2 = L0_1
  L32_2 = L32_2.newText
  L33_2 = {}
  L34_2 = L0_1
  L34_2 = L34_2.localized
  L34_2 = L34_2.get
  L35_2 = "Facebook1"
  L34_2 = L34_2(L35_2)
  L33_2.string = L34_2
  L33_2.size = 14
  L34_2 = L31_2.x
  L34_2 = L34_2 + 134
  L33_2.x = L34_2
  L34_2 = L31_2.y
  L34_2 = L34_2 + 36
  L33_2.y = L34_2
  L33_2.width = 160
  L33_2.align = "center"
  L32_2 = L32_2(L33_2)
  L33_2 = L0_1
  L33_2 = L33_2.newText
  L34_2 = {}
  L35_2 = L0_1
  L35_2 = L35_2.localized
  L35_2 = L35_2.get
  L36_2 = "Facebook2"
  L35_2 = L35_2(L36_2)
  L34_2.string = L35_2
  L34_2.size = 12
  L35_2 = L31_2.x
  L35_2 = L35_2 + 100
  L34_2.x = L35_2
  L35_2 = L31_2.y
  L35_2 = L35_2 + 128
  L34_2.y = L35_2
  L35_2 = {}
  L36_2 = 0.5372549019607843
  L37_2 = 0.4823529411764706
  L38_2 = 0.41568627450980394
  L35_2[1] = L36_2
  L35_2[2] = L37_2
  L35_2[3] = L38_2
  L34_2.color = L35_2
  L34_2.width = 160
  L34_2.align = "center"
  L33_2 = L33_2(L34_2)
  L35_2 = L30_2
  L34_2 = L30_2.insert
  L36_2 = L32_2
  L34_2(L35_2, L36_2)
  L35_2 = L30_2
  L34_2 = L30_2.insert
  L36_2 = L33_2
  L34_2(L35_2, L36_2)
  L34_2 = display
  L34_2 = L34_2.newImageRect
  L35_2 = "images/gui/friends/optionsBubble.png"
  L36_2 = 97
  L37_2 = 55
  L34_2 = L34_2(L35_2, L36_2, L37_2)
  L34_2.anchorX = 0.5
  L34_2.anchorY = 0.5
  L34_2.x = 116
  L34_2.y = 60
  L36_2 = L8_2
  L35_2 = L8_2.insert
  L37_2 = L34_2
  L35_2(L36_2, L37_2)
  
  function L35_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getFacebookId
    L0_3 = L0_3()
    if not L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.facebook
      L0_3 = L0_3.login
      L0_3()
    end
  end
  
  L36_2 = L0_1
  L36_2 = L36_2.newButton
  L37_2 = {}
  L37_2.image = "images/gui/common/buttonFacebook.png"
  L37_2.width = 126
  L37_2.height = 40
  L38_2 = {}
  L39_2 = L0_1
  L39_2 = L39_2.localized
  L39_2 = L39_2.get
  L40_2 = "Connect"
  L39_2 = L39_2(L40_2)
  L38_2.string = L39_2
  L39_2 = {}
  L40_2 = 1
  L41_2 = 1
  L42_2 = 1
  L39_2[1] = L40_2
  L39_2[2] = L41_2
  L39_2[3] = L42_2
  L38_2.color = L39_2
  L37_2.text = L38_2
  L37_2.x = 240
  L37_2.y = 160
  L37_2.onRelease = L35_2
  L36_2 = L36_2(L37_2)
  L36_2.isVisible = false
  L30_2.isVisible = false
  L37_2 = L0_1
  L37_2 = L37_2.newText
  L38_2 = {}
  L39_2 = L0_1
  L39_2 = L39_2.localized
  L39_2 = L39_2.get
  L40_2 = "Could not access Facebook"
  L39_2 = L39_2(L40_2)
  L38_2.string = L39_2
  L38_2.size = 20
  L38_2.x = 240
  L38_2.y = 200
  L37_2 = L37_2(L38_2)
  L37_2.isVisible = false
  
  function L38_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.n
    if L2_3 then
      L2_3 = A1_3.n
      if L2_3 then
        L2_3 = string
        L2_3 = L2_3.lower
        L3_3 = A0_3.n
        L2_3 = L2_3(L3_3)
        L3_3 = string
        L3_3 = L3_3.lower
        L4_3 = A1_3.n
        L3_3 = L3_3(L4_3)
        L2_3 = L2_3 < L3_3
        return L2_3
      end
    end
    L2_3 = false
    return L2_3
  end
  
  function L39_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = L0_1
    L1_3 = L1_3.database
    L1_3 = L1_3.getFriendRequests
    L1_3 = L1_3()
    L2_3 = L0_1
    L2_3 = L2_3.database
    L2_3 = L2_3.getFriends
    L2_3 = L2_3()
    L3_3 = {}
    L4_3 = table
    L4_3 = L4_3.sort
    L5_3 = L1_3
    L6_3 = L38_2
    L4_3(L5_3, L6_3)
    L4_3 = table
    L4_3 = L4_3.sort
    L5_3 = L2_3
    L6_3 = L38_2
    L4_3(L5_3, L6_3)
    L4_3 = 1
    L5_3 = L18_2
    if not L5_3 then
      L5_3 = 1
      L6_3 = #L1_3
      L7_3 = 1
      for L8_3 = L5_3, L6_3, L7_3 do
        L9_3 = #L3_3
        L9_3 = L9_3 + 1
        L10_3 = #L1_3
        L10_3 = L10_3 - L8_3
        if L8_3 <= L4_3 or A0_3 then
          L11_3 = L1_3[L8_3]
          L3_3[L9_3] = L11_3
          L11_3 = L3_3[L9_3]
          L11_3.request = true
        elseif not A0_3 then
          L11_3 = L4_3 + 1
          if L8_3 == L11_3 then
            if L10_3 == 0 then
              L11_3 = L1_3[L8_3]
              L3_3[L9_3] = L11_3
              L11_3 = L3_3[L9_3]
              L11_3.request = true
            else
              L11_3 = {}
              L3_3[L9_3] = L11_3
              L11_3 = L3_3[L9_3]
              L11_3.friendRequestCollection = true
              L11_3 = L3_3[L9_3]
              L12_3 = #L1_3
              L12_3 = L12_3 - L4_3
              L11_3.numberOfAdditionalRequests = L12_3
            end
          end
        end
      end
    end
    L5_3 = 1
    L6_3 = #L2_3
    L7_3 = 1
    for L8_3 = L5_3, L6_3, L7_3 do
      L9_3 = L2_3[L8_3]
      L9_3.addedOnline = false
      L9_3 = L2_3[L8_3]
      L9_3 = L9_3.state
      if L9_3 then
        L9_3 = L2_3[L8_3]
        L9_3 = L9_3.state
        if L9_3 ~= 3 then
          L9_3 = L2_3[L8_3]
          L9_3.addedOnline = true
          L9_3 = #L3_3
          L9_3 = L9_3 + 1
          L10_3 = L2_3[L8_3]
          L3_3[L9_3] = L10_3
          L10_3 = L3_3[L9_3]
          L10_3.request = false
          L10_3 = L3_3[L9_3]
          L11_3 = L19_2
          L10_3.showDelete = L11_3
          L10_3 = L18_2
          if L10_3 then
            L10_3 = L3_3[L9_3]
            L10_3.isMysteryBox = true
          else
            L10_3 = L3_3[L9_3]
            L10_3.isMysteryBox = false
          end
        end
      end
    end
    L5_3 = 1
    L6_3 = #L2_3
    L7_3 = 1
    for L8_3 = L5_3, L6_3, L7_3 do
      L9_3 = L2_3[L8_3]
      L9_3 = L9_3.addedOnline
      if not L9_3 then
        L9_3 = #L3_3
        L9_3 = L9_3 + 1
        L10_3 = L2_3[L8_3]
        L3_3[L9_3] = L10_3
        L10_3 = L3_3[L9_3]
        L10_3.request = false
        L10_3 = L3_3[L9_3]
        L11_3 = L19_2
        L10_3.showDelete = L11_3
        L10_3 = L18_2
        if L10_3 then
          L10_3 = L3_3[L9_3]
          L10_3.isMysteryBox = true
        else
          L10_3 = L3_3[L9_3]
          L10_3.isMysteryBox = false
        end
      end
    end
    return L3_3
  end
  
  function L40_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L2_3 = {}
    L3_3 = L0_1
    L3_3 = L3_3.database
    L3_3 = L3_3.getGameInvites
    L3_3 = L3_3()
    L4_3 = L0_1
    L4_3 = L4_3.database
    L4_3 = L4_3.getMysteryBoxes
    L4_3 = L4_3()
    L5_3 = L0_1
    L5_3 = L5_3.database
    L5_3 = L5_3.getClanInvites
    L5_3 = L5_3()
    L6_3 = 1
    L7_3 = 1
    L8_3 = #L4_3
    if 0 < L8_3 then
      L8_3 = #L2_3
      L8_3 = L8_3 + 1
      L9_3 = {}
      L9_3.header = true
      L9_3.text = "Gifts"
      L2_3[L8_3] = L9_3
    end
    L8_3 = 1
    L9_3 = #L4_3
    L10_3 = 1
    for L11_3 = L8_3, L9_3, L10_3 do
      L12_3 = #L2_3
      L12_3 = L12_3 + 1
      L13_3 = #L4_3
      L13_3 = L13_3 - L11_3
      if L11_3 <= L6_3 or A0_3 then
        L14_3 = L4_3[L11_3]
        L2_3[L12_3] = L14_3
        L14_3 = L2_3[L12_3]
        L14_3.mysteryBox = true
      elseif not A0_3 then
        L14_3 = L6_3 + 1
        if L11_3 == L14_3 then
          if L13_3 == 0 then
            L14_3 = L4_3[L11_3]
            L2_3[L12_3] = L14_3
            L14_3 = L2_3[L12_3]
            L14_3.mysteryBox = true
          else
            L14_3 = {}
            L2_3[L12_3] = L14_3
            L14_3 = L2_3[L12_3]
            L14_3.mysteryBoxCollection = true
            L14_3 = L2_3[L12_3]
            L15_3 = #L4_3
            L15_3 = L15_3 - L6_3
            L14_3.numberOfAdditionalGifts = L15_3
          end
        end
      end
    end
    L8_3 = #L3_3
    if 0 < L8_3 then
      L8_3 = #L2_3
      L8_3 = L8_3 + 1
      L9_3 = {}
      L9_3.header = true
      L9_3.text = "Game Invites"
      L2_3[L8_3] = L9_3
    end
    L8_3 = 1
    L9_3 = #L3_3
    L10_3 = 1
    for L11_3 = L8_3, L9_3, L10_3 do
      L12_3 = #L2_3
      L12_3 = L12_3 + 1
      L13_3 = L3_3[L11_3]
      L2_3[L12_3] = L13_3
      L13_3 = L2_3[L12_3]
      L13_3.gameInvite = true
    end
    L8_3 = #L5_3
    if 0 < L8_3 then
      L8_3 = #L2_3
      L8_3 = L8_3 + 1
      L9_3 = {}
      L9_3.header = true
      L9_3.text = "Clan Invites"
      L2_3[L8_3] = L9_3
    end
    L8_3 = 1
    L9_3 = #L5_3
    L10_3 = 1
    for L11_3 = L8_3, L9_3, L10_3 do
      L12_3 = #L2_3
      L12_3 = L12_3 + 1
      L13_3 = #L5_3
      L13_3 = L13_3 - L11_3
      if L11_3 <= L7_3 or A1_3 then
        L14_3 = L5_3[L11_3]
        L2_3[L12_3] = L14_3
        L14_3 = L2_3[L12_3]
        L14_3.clanInvite = true
      elseif not A1_3 then
        L14_3 = L7_3 + 1
        if L11_3 == L14_3 then
          if L13_3 == 0 then
            L14_3 = L5_3[L11_3]
            L2_3[L12_3] = L14_3
            L14_3 = L2_3[L12_3]
            L14_3.clanInvite = true
          else
            L14_3 = {}
            L2_3[L12_3] = L14_3
            L14_3 = L2_3[L12_3]
            L14_3.clanInviteCollection = true
            L14_3 = L2_3[L12_3]
            L15_3 = #L5_3
            L15_3 = L15_3 - L7_3
            L14_3.numberOfAdditionalClanInvites = L15_3
          end
        end
      end
    end
    return L2_3
  end
  
  function L41_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L0_1
    L0_3 = L0_3.database
    L0_3 = L0_3.getFacebookFriends
    L0_3 = L0_3()
    L1_3 = {}
    L2_3 = 1
    L3_3 = #L0_3
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = #L1_3
      L6_3 = L6_3 + 1
      L7_3 = L0_3[L5_3]
      L1_3[L6_3] = L7_3
    end
    return L1_3
  end
  
  function L42_2()
    local L0_3, L1_3
    L0_3 = L13_2
    if L0_3 == 1 then
      L0_3 = L10_2
      L0_3 = L0_3.cleanTable
      L0_3()
      L0_3 = L26_2
      L0_3.alpha = 1
    else
      L0_3 = L13_2
      if L0_3 == 2 then
        L0_3 = L11_2
        L0_3 = L0_3.cleanTable
        L0_3()
        L0_3 = L27_2
        L0_3.alpha = 1
      else
        L0_3 = L13_2
        if L0_3 == 3 then
          L0_3 = L12_2
          L0_3 = L0_3.cleanTable
          L0_3()
          L0_3 = L28_2
          L0_3.alpha = 1
        end
      end
    end
    L0_3 = L36_2
    L0_3.isVisible = false
    L0_3 = L30_2
    L0_3.isVisible = false
    L0_3 = L37_2
    L0_3.isVisible = false
  end
  
  function L43_2()
    local L0_3, L1_3
    L0_3 = L29_2
    L0_3.isVisible = false
    L0_3 = L16_2
    L0_3.isVisible = false
    L0_3 = L8_2
    L0_3.isVisible = false
  end
  
  function L44_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L9_2
    L1_3.alpha = 0
    L1_3 = L42_2
    L1_3()
    L1_3 = L43_2
    L1_3()
    L1_3 = L15_2
    L1_3.isVisible = false
    L13_2 = A0_3
    if A0_3 == 1 then
      L1_3 = L10_2
      L1_3 = L1_3.createTable
      L2_3 = L40_2
      L2_3 = L2_3()
      L3_3 = L2_2
      L1_3(L2_3, L3_3)
      L1_3 = L25_2
      L2_3 = L0_1
      L2_3 = L2_3.localized
      L2_3 = L2_3.get
      L3_3 = "inbox"
      L2_3 = L2_3(L3_3)
      L1_3.text = L2_3
      L1_3 = L26_2
      L1_3.alpha = 0
      L1_3 = L15_2
      L1_3.isVisible = true
      L1_3 = L0_1
      L1_3 = L1_3.analytics
      L1_3 = L1_3.newEvent
      L2_3 = "design"
      L3_3 = {}
      L3_3.event_id = "tab:gameInvites"
      L4_3 = L0_1
      L4_3 = L4_3.config
      L4_3 = L4_3.fullVersion
      L3_3.area = L4_3
      L1_3(L2_3, L3_3)
    elseif A0_3 == 2 then
      L1_3 = L11_2
      L1_3 = L1_3.createTable
      L2_3 = L39_2
      L2_3 = L2_3()
      L3_3 = L2_2
      L1_3(L2_3, L3_3)
      L1_3 = L25_2
      L2_3 = L0_1
      L2_3 = L2_3.localized
      L2_3 = L2_3.get
      L3_3 = "Friends"
      L2_3 = L2_3(L3_3)
      L1_3.text = L2_3
      L1_3 = L27_2
      L1_3.alpha = 0
      L1_3 = L9_2
      L1_3.alpha = 1
      L1_3 = L0_1
      L1_3 = L1_3.analytics
      L1_3 = L1_3.newEvent
      L2_3 = "design"
      L3_3 = {}
      L3_3.event_id = "tab:friends"
      L4_3 = L0_1
      L4_3 = L4_3.config
      L4_3 = L4_3.fullVersion
      L3_3.area = L4_3
      L1_3(L2_3, L3_3)
      L1_3 = L16_2
      L1_3.isVisible = true
      L1_3 = L9_2
      L1_3.x = 0
    elseif A0_3 == 3 then
      L1_3 = L9_2
      L1_3.x = -44
      L1_3 = L12_2
      L1_3 = L1_3.createTable
      L2_3 = L41_2
      L2_3 = L2_3()
      L3_3 = L2_2
      L1_3(L2_3, L3_3)
      L1_3 = L25_2
      L2_3 = L0_1
      L2_3 = L2_3.localized
      L2_3 = L2_3.get
      L3_3 = "FacebookFriends"
      L2_3 = L2_3(L3_3)
      L1_3.text = L2_3
      L1_3 = L28_2
      L1_3.alpha = 0
      L1_3 = L0_1
      L1_3 = L1_3.analytics
      L1_3 = L1_3.newEvent
      L2_3 = "design"
      L3_3 = {}
      L3_3.event_id = "tab:facebookFriends"
      L4_3 = L0_1
      L4_3 = L4_3.config
      L4_3 = L4_3.fullVersion
      L3_3.area = L4_3
      L1_3(L2_3, L3_3)
      L1_3 = L0_1
      L1_3 = L1_3.database
      L1_3 = L1_3.getFacebookId
      L1_3 = L1_3()
      if not L1_3 then
        L1_3 = L36_2
        L1_3.isVisible = true
        L1_3 = L30_2
        L1_3.isVisible = true
      else
        L1_3 = L0_1
        L1_3 = L1_3.config
        L1_3 = L1_3.facebookMissmatch
        if L1_3 then
          L1_3 = L37_2
          L1_3.isVisible = true
        else
          L1_3 = L9_2
          L1_3.alpha = 1
        end
      end
    end
    L1_3 = L7_2
    L1_3()
  end
  
  function L45_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    if not A0_3 then
      L1_3 = {}
      A0_3 = L1_3
    end
    L1_3 = L17_2
    if L1_3 then
    else
      L1_3 = L13_2
      if L1_3 == 1 then
        L1_3 = A0_3.showAllGifts
        if not L1_3 then
          L1_3 = false
        end
        L2_3 = A0_3.showAllClanInvites
        if not L2_3 then
          L2_3 = false
        end
        L3_3 = L10_2
        L3_3 = L3_3.refreshTable
        L4_3 = L40_2
        L5_3 = L1_3
        L6_3 = L2_3
        L4_3 = L4_3(L5_3, L6_3)
        L5_3 = L2_2
        L3_3(L4_3, L5_3)
      else
        L1_3 = L13_2
        if L1_3 == 2 then
          L1_3 = A0_3.showAllFriendRequests
          if not L1_3 then
            L1_3 = false
          end
          L2_3 = L11_2
          L2_3 = L2_3.refreshTable
          L3_3 = L39_2
          L4_3 = L1_3
          L3_3 = L3_3(L4_3)
          L4_3 = L2_2
          L2_3(L3_3, L4_3)
        else
          L1_3 = L13_2
          if L1_3 == 3 then
            L1_3 = L12_2
            L1_3 = L1_3.refreshTable
            L2_3 = L41_2
            L2_3 = L2_3()
            L3_3 = L2_2
            L1_3(L2_3, L3_3)
          end
        end
      end
    end
    L1_3 = L7_2
    L1_3()
  end
  
  L4_1 = L45_2
  
  function L45_2()
    local L0_3, L1_3
    L0_3 = L44_2
    L1_3 = 1
    L0_3(L1_3)
  end
  
  L46_2 = L0_1
  L46_2 = L46_2.newButton
  L47_2 = {}
  L48_2 = L26_2.x
  L48_2 = L48_2 + 31
  L47_2.x = L48_2
  L48_2 = L26_2.y
  L48_2 = L48_2 + 31
  L47_2.y = L48_2
  L47_2.width = 62
  L47_2.height = 62
  L47_2.image = "images/gui/friends/buttonMessages.png"
  L47_2.onRelease = L45_2
  L47_2.noFill = true
  L46_2 = L46_2(L47_2)
  
  function L47_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L13_2
    if L0_3 == 2 then
      L0_3 = {}
      L0_3.isModal = true
      L1_3 = {}
      L1_3.friendScene = true
      L0_3.params = L1_3
      L1_3 = L0_1
      L1_3 = L1_3.showOverlay
      L2_3 = "lua.overlays.sendFriendRequest"
      L3_3 = L0_3
      L1_3(L2_3, L3_3)
    else
      L0_3 = L13_2
      if L0_3 == 3 then
        L0_3 = L0_1
        L0_3 = L0_3.facebook
        L0_3 = L0_3.invitePlayerToDownloadApp
        L0_3()
        L0_3 = L0_1
        L0_3 = L0_3.analytics
        L0_3 = L0_3.newEvent
        L1_3 = "design"
        L2_3 = {}
        L2_3.event_id = "facebook:invite"
        L3_3 = L0_1
        L3_3 = L3_3.config
        L3_3 = L3_3.fullVersion
        L2_3.area = L3_3
        L0_3(L1_3, L2_3)
      end
    end
  end
  
  function L48_2()
    local L0_3, L1_3
    L0_3 = L29_2
    L0_3 = L0_3.isVisible
    if L0_3 then
      L0_3 = L29_2
      L0_3.isVisible = false
      L0_3 = L8_2
      L0_3.isVisible = false
    else
      L0_3 = L29_2
      L0_3.isVisible = true
      L0_3 = L8_2
      L0_3.isVisible = true
    end
  end
  
  function L49_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L0_1
    L0_3 = L0_3.createCustomOverlay
    L1_3 = 52
    L2_3 = nil
    L3_3 = nil
    L4_3 = L0_1
    L4_3 = L4_3.comm
    L4_3 = L4_3.clearFriendRequest
    L5_3 = true
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L0_3 = L48_2
    L0_3()
  end
  
  function L50_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L0_1
    L0_3 = L0_3.createCustomOverlay
    L1_3 = 57
    L2_3 = nil
    L3_3 = nil
    L4_3 = L0_1
    L4_3 = L4_3.comm
    L4_3 = L4_3.removeAllClanInvites
    L5_3 = true
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
  end
  
  function L51_2()
    local L0_3, L1_3
    L0_3 = L19_2
    if L0_3 then
      L0_3 = false
      L19_2 = L0_3
    else
      L0_3 = true
      L19_2 = L0_3
    end
    L0_3 = L4_1
    L0_3()
    L0_3 = L48_2
    L0_3()
  end
  
  L52_2 = L0_1
  L52_2 = L52_2.newButton
  L53_2 = {}
  L54_2 = L29_2.x
  L53_2.x = L54_2
  L54_2 = L29_2.y
  L53_2.y = L54_2
  L53_2.width = 43
  L53_2.height = 38
  L53_2.image = "images/gui/friends/options.png"
  L53_2.onRelease = L48_2
  L53_2.noFill = true
  L52_2 = L52_2(L53_2)
  L16_2 = L52_2
  if L13_2 ~= 2 then
    L16_2.isVisible = false
  end
  L52_2 = L0_1
  L52_2 = L52_2.newButton
  L53_2 = {}
  L53_2.x = 160
  L53_2.y = 22
  L53_2.width = 43
  L53_2.height = 38
  L53_2.image = "images/gui/friends/add.png"
  L53_2.onRelease = L47_2
  L52_2 = L52_2(L53_2)
  L9_2 = L52_2
  L52_2 = L0_1
  L52_2 = L52_2.newButton
  L53_2 = {}
  L54_2 = L34_2.x
  L54_2 = L54_2 - 23
  L53_2.x = L54_2
  L54_2 = L34_2.y
  L54_2 = L54_2 + 4
  L53_2.y = L54_2
  L53_2.width = 43
  L53_2.height = 38
  L53_2.image = "images/gui/friends/options_delete.png"
  L53_2.onRelease = L51_2
  L52_2 = L52_2(L53_2)
  L53_2 = L0_1
  L53_2 = L53_2.newButton
  L54_2 = {}
  L55_2 = L34_2.x
  L55_2 = L55_2 + 23
  L54_2.x = L55_2
  L55_2 = L34_2.y
  L55_2 = L55_2 + 4
  L54_2.y = L55_2
  L54_2.width = 43
  L54_2.height = 38
  L54_2.image = "images/gui/friends/options_clear.png"
  L54_2.onRelease = L49_2
  L53_2 = L53_2(L54_2)
  L54_2 = L0_1
  L54_2 = L54_2.newButton
  L55_2 = {}
  L55_2.x = 116
  L55_2.y = 22
  L55_2.width = 43
  L55_2.height = 38
  L55_2.image = "images/gui/friends/options_clear.png"
  L55_2.onRelease = L50_2
  L54_2 = L54_2(L55_2)
  L15_2 = L54_2
  L15_2.isVisible = false
  
  function L54_2()
    local L0_3, L1_3
    L0_3 = L44_2
    L1_3 = 2
    L0_3(L1_3)
  end
  
  L55_2 = L0_1
  L55_2 = L55_2.newButton
  L56_2 = {}
  L57_2 = L27_2.x
  L57_2 = L57_2 + 31
  L56_2.x = L57_2
  L57_2 = L27_2.y
  L57_2 = L57_2 + 31
  L56_2.y = L57_2
  L56_2.width = 62
  L56_2.height = 62
  L56_2.image = "images/gui/friends/buttonFriends.png"
  L56_2.onRelease = L54_2
  L56_2.noFill = true
  L55_2 = L55_2(L56_2)
  
  function L56_2()
    local L0_3, L1_3
    L0_3 = L44_2
    L1_3 = 3
    L0_3(L1_3)
  end
  
  L57_2 = L0_1
  L57_2 = L57_2.newButton
  L58_2 = {}
  L59_2 = L28_2.x
  L59_2 = L59_2 + 31
  L58_2.x = L59_2
  L59_2 = L28_2.y
  L59_2 = L59_2 + 31
  L58_2.y = L59_2
  L58_2.width = 62
  L58_2.height = 62
  L58_2.image = "images/gui/friends/buttonFacebook.png"
  L58_2.onRelease = L56_2
  L58_2.noFill = true
  L57_2 = L57_2(L58_2)
  
  function L58_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.m
    L2_3 = L4_2
    L2_3 = L2_3.registerFacebook
    L2_3 = L2_3()
    if L1_3 == L2_3 then
      L1_3 = L36_2
      L1_3.isVisible = false
      L1_3 = L30_2
      L1_3.isVisible = false
      L1_3 = L44_2
      L2_3 = 3
      L1_3(L2_3)
    end
    L1_3 = L4_1
    L1_3()
  end
  
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L23_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L46_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L55_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L57_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L27_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L26_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L28_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L22_2
    L0_3(L1_3, L2_3)
    L0_3 = L13_2
    if L0_3 == 1 then
      L0_3 = L2_2
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L10_2
      L2_3 = L2_3.getTable
      L2_3 = L2_3()
      L0_3(L1_3, L2_3)
      L0_3 = L2_2
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L46_2
      L0_3(L1_3, L2_3)
    end
    L0_3 = L13_2
    if L0_3 == 2 then
      L0_3 = L2_2
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L11_2
      L2_3 = L2_3.getTable
      L2_3 = L2_3()
      L0_3(L1_3, L2_3)
      L0_3 = L2_2
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L55_2
      L0_3(L1_3, L2_3)
    end
    L0_3 = L13_2
    if L0_3 == 3 then
      L0_3 = L2_2
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L12_2
      L2_3 = L2_3.getTable
      L2_3 = L2_3()
      L0_3(L1_3, L2_3)
      L0_3 = L2_2
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L57_2
      L0_3(L1_3, L2_3)
    end
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L24_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L25_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L9_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L30_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L36_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L14_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L16_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L29_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L15_2
    L0_3(L1_3, L2_3)
    L0_3 = L8_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L52_2
    L0_3(L1_3, L2_3)
    L0_3 = L8_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L53_2
    L0_3(L1_3, L2_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L8_2
    L0_3(L1_3, L2_3)
  end
  
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L21_2
    L0_3(L1_3, L2_3)
    L0_3 = L6_2
    L0_3()
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L7_1
    L0_3(L1_3, L2_3)
  end
  
  function L59_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = {}
    L0_3.isModal = true
    L1_3 = {}
    L2_3 = L0_1
    L2_3 = L2_3.storeConfig
    L2_3 = L2_3.getItem
    L3_3 = L18_2
    L2_3 = L2_3(L3_3)
    L1_3.item = L2_3
    L0_3.params = L1_3
    L1_3 = L0_1
    L1_3 = L1_3.storeConfig
    L1_3 = L1_3.getItemCategory
    L2_3 = L18_2
    L1_3 = L1_3(L2_3)
    L2_3 = L0_3.params
    L2_3 = L2_3.item
    L3_3 = "images/gui/market/items/"
    L4_3 = L1_3
    L5_3 = "/"
    L6_3 = L18_2
    L7_3 = ".png"
    L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3
    L2_3.imagePath = L3_3
    L2_3 = L0_1
    L2_3 = L2_3.showOverlay
    L3_3 = "lua.overlays.marketFree"
    L4_3 = L0_3
    L2_3(L3_3, L4_3)
  end
  
  function L60_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
  function L61_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L0_1
      L1_3 = L1_3.hideOverlay
      L1_3()
    end
    L1_3 = true
    return L1_3
  end
  
  function L62_2(A0_3)
    local L1_3
    L1_3 = true
    return L1_3
  end
  
  L63_2 = L0_1
  L63_2 = L63_2.newButton
  L64_2 = {}
  L64_2.x = 370
  L64_2.y = 14
  L64_2.width = 43
  L64_2.height = 38
  L64_2.image = "images/gui/common/buttonClosePopupRed.png"
  L64_2.onRelease = L60_2
  L63_2 = L63_2(L64_2)
  L14_2 = L63_2
  
  function L63_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = true
    L17_2 = L0_3
    L0_3 = L42_2
    L0_3()
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L57_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L55_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L46_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L9_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L36_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L52_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L53_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L15_2
    L0_3(L1_3)
    L0_3 = L7_1
    L0_3 = L0_3.clean
    L0_3()
    L0_3 = L21_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L61_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L23_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "touch"
    L3_3 = L62_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L0_1
    L0_3.overlayWithNetwork = false
  end
  
  L2_1 = L63_2
  
  function L63_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = print
    L3_3 = ""
    L2_3(L3_3)
    L2_3 = print
    L3_3 = "tableCallbackGameInbox"
    L2_3(L3_3)
    L2_3 = print
    L3_3 = "callback type"
    L4_3 = A0_3
    L2_3(L3_3, L4_3)
    if A0_3 == 1 then
      L2_3 = L0_1
      L2_3 = L2_3.database
      L2_3 = L2_3.removeGameInvite
      L3_3 = A1_3.playerId
      L2_3(L3_3)
      L2_3 = L4_1
      L2_3()
      L2_3 = L0_1
      L2_3 = L2_3.analytics
      L2_3 = L2_3.newEvent
      L3_3 = "design"
      L4_3 = {}
      L4_3.event_id = "gameInvites:delete"
      L5_3 = L0_1
      L5_3 = L5_3.config
      L5_3 = L5_3.fullVersion
      L4_3.area = L5_3
      L2_3(L3_3, L4_3)
    elseif A0_3 == 2 then
      L2_3 = L0_1
      L2_3 = L2_3.database
      L2_3 = L2_3.removeGameInvite
      L3_3 = A1_3.playerId
      L2_3(L3_3)
      L2_3 = L0_1
      L2_3 = L2_3.comm
      L2_3 = L2_3.isOnline
      L2_3 = L2_3()
      if L2_3 then
        L2_3 = print
        L3_3 = "go to game"
        L2_3(L3_3)
        L2_3 = L0_1
        L2_3 = L2_3.data
        L2_3 = L2_3.gameInfo
        L2_3.gameType = 4
        L2_3 = A1_3.messageType
        L3_3 = L5_2
        L3_3 = L3_3.receive2v2GameInvite
        L3_3 = L3_3()
        if L2_3 == L3_3 then
          L2_3 = L0_1
          L2_3 = L2_3.data
          L2_3 = L2_3.gameInfo
          L2_3.gameType = 6
        end
        L2_3 = L0_1
        L2_3 = L2_3.gameHostData
        L3_3 = A1_3.serverAddress
        L2_3.serverAddress = L3_3
        L2_3 = L0_1
        L2_3 = L2_3.config
        L3_3 = A1_3.serverAddress
        L2_3.tcpClient = L3_3
        L2_3 = L0_1
        L2_3 = L2_3.gameHostData
        L3_3 = A1_3.sessionId
        L2_3.sessionId = L3_3
        L2_3 = L0_1
        L2_3 = L2_3.analytics
        L2_3 = L2_3.newEvent
        L3_3 = "design"
        L4_3 = {}
        L4_3.event_id = "gameInvites:accept"
        L5_3 = L0_1
        L5_3 = L5_3.config
        L5_3 = L5_3.fullVersion
        L4_3.area = L5_3
        L2_3(L3_3, L4_3)
        L2_3 = L0_1
        L2_3 = L2_3.hideOverlay
        L2_3()
        L2_3 = A1_3.messageType
        L3_3 = L5_2
        L3_3 = L3_3.receive2v2GameInvite
        L3_3 = L3_3()
        if L2_3 == L3_3 then
          L2_3 = L0_1
          L2_3 = L2_3.gotoScene
          L3_3 = "lua.scenes.lobby2v2Play"
          L2_3(L3_3)
        else
          L2_3 = L0_1
          L2_3 = L2_3.gotoScene
          L3_3 = "lua.scenes.lobbyCustomPlay"
          L2_3(L3_3)
        end
      else
      end
    elseif A0_3 == 3 then
      L2_3 = L0_1
      L2_3 = L2_3.claimingGiftData
      if not L2_3 then
        L2_3 = L0_1
        L3_3 = L0_1
        L3_3 = L3_3.tableUtils
        L3_3 = L3_3.deepCopy
        L4_3 = A1_3.item
        L3_3 = L3_3(L4_3)
        L2_3.claimingGiftData = L3_3
        L2_3 = L0_1
        L2_3 = L2_3.comm
        L2_3 = L2_3.claimMysteryBox
        L3_3 = A1_3.item
        L3_3 = L3_3.i
        L4_3 = A1_3.item
        L4_3 = L4_3.f
        L5_3 = A1_3.item
        L5_3 = L5_3._id
        L2_3(L3_3, L4_3, L5_3)
        L2_3 = L0_1
        L2_3 = L2_3.database
        L2_3 = L2_3.removeMysteryBox
        L3_3 = A1_3.item
        L3_3 = L3_3.i
        L2_3(L3_3)
        L2_3 = L4_1
        L2_3()
      end
    elseif A0_3 == 4 then
      L2_3 = L0_1
      L2_3 = L2_3.comm
      L2_3 = L2_3.removeClanInvite
      L3_3 = A1_3.playerId
      L4_3 = A1_3.clanId
      L2_3(L3_3, L4_3)
      L2_3 = L0_1
      L2_3 = L2_3.database
      L2_3 = L2_3.removeClanInvite
      L3_3 = A1_3.playerId
      L2_3(L3_3)
      L2_3 = L4_1
      L2_3()
    elseif A0_3 == 5 then
      L2_3 = L0_1
      L2_3 = L2_3.comm
      L2_3 = L2_3.acceptClanInvite
      L3_3 = A1_3.playerId
      L4_3 = A1_3.clanId
      L2_3(L3_3, L4_3)
      L2_3 = L0_1
      L2_3 = L2_3.database
      L2_3 = L2_3.removeClanInvite
      L3_3 = A1_3.playerId
      L2_3(L3_3)
      L2_3 = L4_1
      L2_3()
    elseif A0_3 == 6 then
      L2_3 = L0_1
      L2_3 = L2_3.comm
      L2_3 = L2_3.getClanInfo
      L3_3 = A1_3.clanId
      L2_3(L3_3)
      L2_3 = L7_1
      L2_3 = L2_3.reset
      L2_3()
      L2_3 = L7_1
      L2_3 = L2_3.show
      L2_3()
    elseif A0_3 == 7 then
      L2_3 = L4_1
      L3_3 = {}
      L3_3.showAllGifts = true
      L2_3(L3_3)
    elseif A0_3 == 8 then
      L2_3 = L4_1
      L3_3 = {}
      L3_3.showAllClanInvites = true
      L2_3(L3_3)
    end
  end
  
  function L64_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = L17_2
    if L3_3 then
    elseif A0_3 == 1 then
      L3_3 = L0_1
      L3_3 = L3_3.comm
      L3_3 = L3_3.deleteFriend
      L4_3 = A1_3
      L3_3(L4_3)
      L3_3 = L0_1
      L3_3 = L3_3.analytics
      L3_3 = L3_3.newEvent
      L4_3 = "design"
      L5_3 = {}
      L5_3.event_id = "friends:delete"
      L6_3 = L0_1
      L6_3 = L6_3.config
      L6_3 = L6_3.fullVersion
      L5_3.area = L6_3
      L3_3(L4_3, L5_3)
    elseif A0_3 == 2 then
      L3_3 = L0_1
      L3_3 = L3_3.comm
      L3_3 = L3_3.deleteFriendRequest
      L4_3 = A1_3
      L3_3(L4_3)
      L3_3 = L0_1
      L3_3 = L3_3.analytics
      L3_3 = L3_3.newEvent
      L4_3 = "design"
      L5_3 = {}
      L5_3.event_id = "friends:request:delete"
      L6_3 = L0_1
      L6_3 = L6_3.config
      L6_3 = L6_3.fullVersion
      L5_3.area = L6_3
      L3_3(L4_3, L5_3)
    elseif A0_3 == 3 then
      L3_3 = L0_1
      L3_3 = L3_3.comm
      L3_3 = L3_3.acceptFriendRequest
      L4_3 = A1_3
      L3_3(L4_3)
      L3_3 = L0_1
      L3_3 = L3_3.analytics
      L3_3 = L3_3.newEvent
      L4_3 = "design"
      L5_3 = {}
      L5_3.event_id = "friends:request:accept"
      L6_3 = L0_1
      L6_3 = L6_3.config
      L6_3 = L6_3.fullVersion
      L5_3.area = L6_3
      L3_3(L4_3, L5_3)
    elseif A0_3 == 4 then
      L3_3 = L0_1
      L3_3 = L3_3.comm
      L3_3 = L3_3.isOnline
      L3_3 = L3_3()
      if L3_3 then
        L3_3 = L0_1
        L3_3 = L3_3.comm
        L3_3 = L3_3.sendMysteryBox
        L4_3 = A1_3
        L3_3(L4_3)
        L3_3 = L60_2
        L3_3()
      end
    elseif A0_3 == 5 then
      L3_3 = L0_1
      L3_3 = L3_3.comm
      L3_3 = L3_3.isOnline
      L3_3 = L3_3()
      if L3_3 then
        L3_3 = L0_1
        L4_3 = {}
        L3_3.gameHostData = L4_3
        L3_3 = L0_1
        L3_3 = L3_3.data
        L3_3 = L3_3.gameInfo
        L3_3.gameType = 3
        L3_3 = {}
        L4_3 = {}
        L4_3.autoSendInvite = A1_3
        L3_3.params = L4_3
        L4_3 = L0_1
        L4_3 = L4_3.gotoScene
        L5_3 = "lua.scenes.lobbyCustomPlay"
        L6_3 = L3_3
        L4_3(L5_3, L6_3)
      else
        L3_3 = L0_1
        L3_3 = L3_3.createCustomOverlay
        L4_3 = 1
        L3_3(L4_3)
      end
    elseif A0_3 == 6 then
      L3_3 = L4_1
      L4_3 = {}
      L4_3.showAllFriendRequests = true
      L3_3(L4_3)
    end
  end
  
  function L65_2()
    local L0_3, L1_3
  end
  
  L66_2 = L3_2.new
  L67_2 = 105
  L68_2 = 36
  L69_2 = 270
  L70_2 = 284
  L71_2 = 55
  L72_2 = nil
  L73_2 = "friendsSettings1"
  L74_2 = L63_2
  L75_2 = 18
  L66_2 = L66_2(L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2)
  L10_2 = L66_2
  L66_2 = L3_2.new
  L67_2 = 105
  L68_2 = 36
  L69_2 = 270
  L70_2 = 284
  L71_2 = 55
  L72_2 = nil
  L73_2 = "friendsSettings2"
  L74_2 = L64_2
  L75_2 = 18
  L66_2 = L66_2(L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2)
  L11_2 = L66_2
  L66_2 = L3_2.new
  L67_2 = 105
  L68_2 = 36
  L69_2 = 270
  L70_2 = 284
  L71_2 = 55
  L72_2 = nil
  L73_2 = "friendsSettings3"
  L74_2 = L65_2
  L75_2 = 18
  L66_2 = L66_2(L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2)
  L12_2 = L66_2
  if L20_2 then
    L66_2 = L44_2
    L67_2 = L20_2
    L66_2(L67_2)
  elseif L18_2 then
    L66_2 = L44_2
    L67_2 = 2
    L66_2(L67_2)
  else
    L66_2 = L0_1
    L66_2 = L66_2.database
    L66_2 = L66_2.getNumberOfGameInvites
    L66_2 = L66_2()
    if not (0 < L66_2) then
      L66_2 = L0_1
      L66_2 = L66_2.database
      L66_2 = L66_2.getMysteryBoxes
      L66_2 = L66_2()
      L66_2 = #L66_2
      if not (0 < L66_2) then
        L66_2 = L0_1
        L66_2 = L66_2.database
        L66_2 = L66_2.getClanInvites
        L66_2 = L66_2()
        L66_2 = #L66_2
        if not (0 < L66_2) then
          goto lbl_636
        end
      end
    end
    L66_2 = L44_2
    L67_2 = 1
    L66_2(L67_2)
    goto lbl_639
    ::lbl_636::
    L66_2 = L44_2
    L67_2 = 2
    L66_2(L67_2)
  end
  ::lbl_639::
  
  function L66_2()
    local L0_3, L1_3, L2_3
    L0_3 = L18_2
    if L0_3 then
      L0_3 = L43_2
      L0_3()
      L0_3 = L46_2
      L0_3.isVisible = false
      L0_3 = L26_2
      L0_3.isVisible = false
      L0_3 = L55_2
      L0_3.isVisible = false
      L0_3 = L57_2
      L0_3.isVisible = false
      L0_3 = L28_2
      L0_3.isVisible = false
      L0_3 = L9_2
      L0_3.isVisible = false
      L0_3 = L25_2
      L1_3 = L0_1
      L1_3 = L1_3.localized
      L1_3 = L1_3.get
      L2_3 = "chooseafriend"
      L1_3 = L1_3(L2_3)
      L0_3.text = L1_3
    end
  end
  
  function L67_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L21_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L61_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L23_2
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "touch"
    L3_3 = L62_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L68_2 = L67_2
  L68_2()
  L68_2 = L66_2
  L68_2()
  L68_2 = L7_2
  L68_2()
  L68_2 = L0_1
  L68_2 = L68_2.commHttps
  L68_2 = L68_2.setCallback
  L69_2 = L58_2
  L68_2(L69_2)
end

L1_1.create = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    return
  end
  L4_2 = require
  L5_2 = "lua.modules.androidBackButton"
  L4_2 = L4_2(L5_2)
  L5_2 = require
  L6_2 = "lua.network.tcpMessageFormat"
  L5_2 = L5_2(L6_2)
  L6_2 = false
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = true
    L6_2 = L0_3
    L0_3 = L4_2
    L0_3 = L0_3.isOverlay
    L1_3 = false
    L0_3(L1_3)
  end
  
  L3_1 = L7_2
  L7_2 = L4_2.isOverlay
  L8_2 = true
  L7_2(L8_2)
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L4_1
    if L0_3 then
      L0_3 = L4_1
      L0_3()
    end
  end
  
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L6_2
    if L1_3 then
      return
    end
    L1_3 = A0_3.m
    L2_3 = L5_2
    L2_3 = L2_3.recieveGameInvite
    L2_3 = L2_3()
    if L1_3 == L2_3 then
      L1_3 = L7_2
      L1_3()
    else
      L1_3 = A0_3.m
      L2_3 = L5_2
      L2_3 = L2_3.recieveAcceptedFriendRequest
      L2_3 = L2_3()
      if L1_3 == L2_3 then
        L1_3 = L7_2
        L1_3()
      else
        L1_3 = A0_3.m
        L2_3 = L5_2
        L2_3 = L2_3.acceptFriendRequest
        L2_3 = L2_3()
        if L1_3 == L2_3 then
          L1_3 = L7_2
          L1_3()
        else
          L1_3 = A0_3.m
          L2_3 = L5_2
          L2_3 = L2_3.deleteFriend
          L2_3 = L2_3()
          if L1_3 == L2_3 then
            L1_3 = L7_2
            L1_3()
          else
            L1_3 = A0_3.m
            L2_3 = L5_2
            L2_3 = L2_3.recieveDeletedFriend
            L2_3 = L2_3()
            if L1_3 == L2_3 then
              L1_3 = L7_2
              L1_3()
            else
              L1_3 = A0_3.m
              L2_3 = L5_2
              L2_3 = L2_3.deleteFriendRequest
              L2_3 = L2_3()
              if L1_3 == L2_3 then
                L1_3 = L7_2
                L1_3()
              else
                L1_3 = A0_3.m
                L2_3 = L5_2
                L2_3 = L2_3.addFriend
                L2_3 = L2_3()
                if L1_3 == L2_3 then
                  L1_3 = L7_2
                  L1_3()
                else
                  L1_3 = A0_3.m
                  L2_3 = L5_2
                  L2_3 = L2_3.addFacebookFriend
                  L2_3 = L2_3()
                  if L1_3 == L2_3 then
                    L1_3 = L7_2
                    L1_3()
                  else
                    L1_3 = A0_3.m
                    L2_3 = L5_2
                    L2_3 = L2_3.recieveFriendRequest
                    L2_3 = L2_3()
                    if L1_3 == L2_3 then
                      L1_3 = L7_2
                      L1_3()
                    else
                      L1_3 = A0_3.m
                      L2_3 = L5_2
                      L2_3 = L2_3.recieveFriendRequest
                      L2_3 = L2_3()
                      if L1_3 == L2_3 then
                        L1_3 = L7_2
                        L1_3()
                      else
                        L1_3 = A0_3.m
                        L2_3 = L5_2
                        L2_3 = L2_3.clearFriendRequest
                        L2_3 = L2_3()
                        if L1_3 == L2_3 then
                          L1_3 = L7_2
                          L1_3()
                        else
                          L1_3 = A0_3.m
                          L2_3 = L5_2
                          L2_3 = L2_3.removeClanInvite
                          L2_3 = L2_3()
                          if L1_3 == L2_3 then
                            L1_3 = L7_2
                            L1_3()
                          else
                            L1_3 = A0_3.m
                            L2_3 = L5_2
                            L2_3 = L2_3.removeAllClanInvites
                            L2_3 = L2_3()
                            if L1_3 == L2_3 then
                              L1_3 = L7_2
                              L1_3()
                            else
                              L1_3 = A0_3.m
                              L2_3 = L5_2
                              L2_3 = L2_3.receiveClanInvite
                              L2_3 = L2_3()
                              if L1_3 == L2_3 then
                                L1_3 = L7_2
                                L1_3()
                              else
                                L1_3 = A0_3.m
                                L2_3 = L5_2
                                L2_3 = L2_3.acceptClanInvite
                                L2_3 = L2_3()
                                if L1_3 == L2_3 then
                                  L1_3 = L0_1
                                  L1_3 = L1_3.gotoScene
                                  L2_3 = "lua.scenes.clanScene"
                                  L1_3(L2_3)
                                else
                                  L1_3 = A0_3.m
                                  L2_3 = L5_2
                                  L2_3 = L2_3.getClanInfo
                                  L2_3 = L2_3()
                                  if L1_3 == L2_3 then
                                    L1_3 = A0_3.r
                                    if L1_3 then
                                      L1_3 = L7_1
                                      L1_3 = L1_3.hide
                                      L1_3()
                                    end
                                    L1_3 = L7_1
                                    L1_3 = L1_3.updateClanId
                                    L2_3 = A0_3.a
                                    L2_3 = L2_3.a
                                    L2_3 = L2_3._id
                                    L1_3(L2_3)
                                    L1_3 = L7_1
                                    L1_3 = L1_3.updateClanName
                                    L2_3 = A0_3.a
                                    L2_3 = L2_3.a
                                    L2_3 = L2_3.b
                                    L1_3(L2_3)
                                    L1_3 = L7_1
                                    L1_3 = L1_3.updateClanEmblem
                                    L2_3 = A0_3.a
                                    L2_3 = L2_3.a
                                    L2_3 = L2_3.c
                                    L1_3(L2_3)
                                    L1_3 = L7_1
                                    L1_3 = L1_3.updateClanLevel
                                    L2_3 = A0_3.a
                                    L2_3 = L2_3.i
                                    L3_3 = A0_3.a
                                    L3_3 = L3_3.h
                                    L1_3(L2_3, L3_3)
                                    L1_3 = L7_1
                                    L1_3 = L1_3.updateClanLeagueData
                                    L2_3 = A0_3.b
                                    L1_3(L2_3)
                                    L1_3 = L7_1
                                    L1_3 = L1_3.updateClanStats
                                    L2_3 = A0_3.a
                                    L1_3(L2_3)
                                    L1_3 = L7_1
                                    L1_3 = L1_3.updateClanRating
                                    L2_3 = A0_3.a
                                    L2_3 = L2_3.g
                                    L1_3(L2_3)
                                    L1_3 = L7_1
                                    L1_3 = L1_3.updateClanAttitude
                                    L2_3 = tonumber
                                    L3_3 = A0_3.a
                                    L3_3 = L3_3.r
                                    L3_3 = L3_3 + 1
                                    L2_3, L3_3 = L2_3(L3_3)
                                    L1_3(L2_3, L3_3)
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  
  L5_1 = L8_2
  L8_2 = L0_1
  L8_2 = L8_2.comm
  L8_2 = L8_2.setCallback
  L9_2 = L5_1
  L8_2(L9_2)
end

L1_1.show = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = A1_2.parent
    if L4_2 then
      L4_2 = A1_2.parent
      L4_2 = L4_2.overlayEnded
      if L4_2 then
        L4_2 = A1_2.parent
        L5_2 = L4_2
        L4_2 = L4_2.overlayEnded
        L4_2(L5_2)
      end
    end
    return
  end
  L4_2 = L3_1
  L4_2()
end

L1_1.hide = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.view
  L3_2 = L2_1
  L3_2()
end

L1_1.destroy = L8_1
L9_1 = L1_1
L8_1 = L1_1.addEventListener
L10_1 = "create"
L11_1 = L1_1
L8_1(L9_1, L10_1, L11_1)
L9_1 = L1_1
L8_1 = L1_1.addEventListener
L10_1 = "show"
L11_1 = L1_1
L8_1(L9_1, L10_1, L11_1)
L9_1 = L1_1
L8_1 = L1_1.addEventListener
L10_1 = "hide"
L11_1 = L1_1
L8_1(L9_1, L10_1, L11_1)
L9_1 = L1_1
L8_1 = L1_1.addEventListener
L10_1 = "destroy"
L11_1 = L1_1
L8_1(L9_1, L10_1, L11_1)
return L1_1
