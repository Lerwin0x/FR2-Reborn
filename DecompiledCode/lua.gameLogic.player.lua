local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = {}
L1_1 = require
L2_1 = "lua.modules.trails"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "lua.gameLogic.botModule"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "lua.gameLogic.playerCorpses"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "spine-corona.monsterLoader"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "lua.gameLogic.powerUpChance"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "lua.gameLogic.playerEffects"
L7_1 = L7_1(L8_1)
L8_1 = math
L8_1 = L8_1.random
L9_1 = math
L9_1 = L9_1.abs
L10_1 = math
L10_1 = L10_1.round
L11_1 = math
L11_1 = L11_1.atan
L12_1 = math
L12_1 = L12_1.atan2
L13_1 = math
L13_1 = L13_1.deg

function L14_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2)
  local L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2, L91_2, L92_2, L93_2, L94_2, L95_2, L96_2, L97_2, L98_2, L99_2, L100_2, L101_2, L102_2, L103_2, L104_2, L105_2, L106_2, L107_2, L108_2, L109_2, L110_2, L111_2, L112_2, L113_2, L114_2, L115_2, L116_2, L117_2, L118_2, L119_2, L120_2, L121_2, L122_2, L123_2, L124_2, L125_2, L126_2, L127_2, L128_2, L129_2, L130_2, L131_2, L132_2, L133_2, L134_2, L135_2, L136_2, L137_2, L138_2, L139_2, L140_2, L141_2, L142_2, L143_2, L144_2, L145_2, L146_2, L147_2, L148_2, L149_2, L150_2, L151_2, L152_2, L153_2, L154_2, L155_2, L156_2, L157_2, L158_2, L159_2, L160_2, L161_2, L162_2, L163_2, L164_2, L165_2, L166_2, L167_2, L168_2, L169_2, L170_2, L171_2, L172_2, L173_2, L174_2, L175_2, L176_2, L177_2, L178_2, L179_2, L180_2, L181_2, L182_2, L183_2, L184_2, L185_2, L186_2, L187_2, L188_2, L189_2, L190_2, L191_2, L192_2, L193_2, L194_2, L195_2, L196_2, L197_2, L198_2, L199_2, L200_2, L201_2, L202_2, L203_2, L204_2, L205_2
  L11_2 = display
  L11_2 = L11_2.newGroup
  L11_2 = L11_2()
  L12_2 = display
  L12_2 = L12_2.newGroup
  L12_2 = L12_2()
  L13_2 = display
  L13_2 = L13_2.newGroup
  L13_2 = L13_2()
  L14_2 = display
  L14_2 = L14_2.newGroup
  L14_2 = L14_2()
  L15_2 = display
  L15_2 = L15_2.newGroup
  L15_2 = L15_2()
  L16_2 = display
  L16_2 = L16_2.newGroup
  L16_2 = L16_2()
  L17_2 = display
  L17_2 = L17_2.newGroup
  L17_2 = L17_2()
  L18_2 = nil
  L19_2 = nil
  L20_2 = nil
  L21_2 = L2_1
  L21_2 = L21_2.storeConfig
  L21_2 = L21_2.isThisAPowerupSet
  L22_2 = A8_2
  L21_2 = L21_2(L22_2)
  L22_2 = false
  L23_2 = L2_1
  L23_2 = L23_2.data
  L23_2 = L23_2.gameInfo
  L23_2 = L23_2.gameType
  if 0 < L23_2 then
    L22_2 = true
  end
  L23_2 = A10_2 or L23_2
  if A10_2 then
    L23_2 = A10_2.c
  end
  L24_2 = L5_1
  L24_2 = L24_2.new
  L25_2 = A2_2
  L26_2 = L22_2
  L27_2 = A8_2
  L28_2 = L23_2
  L24_2 = L24_2(L25_2, L26_2, L27_2, L28_2)
  L25_2 = L24_2.getGroup
  L25_2 = L25_2()
  L25_2.xScale = 0.25
  L25_2 = L24_2.getGroup
  L25_2 = L25_2()
  L25_2.yScale = 0.25
  L25_2 = L2_1
  L25_2 = L25_2.data
  L25_2 = L25_2.gameInfo
  L25_2 = L25_2.crazyModeActive
  if L25_2 then
    L25_2 = L2_1
    L25_2 = L25_2.data
    L25_2 = L25_2.gameInfo
    L25_2 = L25_2.crazyMode
    if L25_2 == 3 then
      L25_2 = L24_2.getGroup
      L25_2 = L25_2()
      L25_2.xScale = 0.15
      L25_2 = L24_2.getGroup
      L25_2 = L25_2()
      L25_2.yScale = 0.15
    end
  end
  L26_2 = L13_2
  L25_2 = L13_2.insert
  L27_2 = L24_2.getGroup
  L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2, L91_2, L92_2, L93_2, L94_2, L95_2, L96_2, L97_2, L98_2, L99_2, L100_2, L101_2, L102_2, L103_2, L104_2, L105_2, L106_2, L107_2, L108_2, L109_2, L110_2, L111_2, L112_2, L113_2, L114_2, L115_2, L116_2, L117_2, L118_2, L119_2, L120_2, L121_2, L122_2, L123_2, L124_2, L125_2, L126_2, L127_2, L128_2, L129_2, L130_2, L131_2, L132_2, L133_2, L134_2, L135_2, L136_2, L137_2, L138_2, L139_2, L140_2, L141_2, L142_2, L143_2, L144_2, L145_2, L146_2, L147_2, L148_2, L149_2, L150_2, L151_2, L152_2, L153_2, L154_2, L155_2, L156_2, L157_2, L158_2, L159_2, L160_2, L161_2, L162_2, L163_2, L164_2, L165_2, L166_2, L167_2, L168_2, L169_2, L170_2, L171_2, L172_2, L173_2, L174_2, L175_2, L176_2, L177_2, L178_2, L179_2, L180_2, L181_2, L182_2, L183_2, L184_2, L185_2, L186_2, L187_2, L188_2, L189_2, L190_2, L191_2, L192_2, L193_2, L194_2, L195_2, L196_2, L197_2, L198_2, L199_2, L200_2, L201_2, L202_2, L203_2, L204_2, L205_2 = L27_2()
  L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2, L91_2, L92_2, L93_2, L94_2, L95_2, L96_2, L97_2, L98_2, L99_2, L100_2, L101_2, L102_2, L103_2, L104_2, L105_2, L106_2, L107_2, L108_2, L109_2, L110_2, L111_2, L112_2, L113_2, L114_2, L115_2, L116_2, L117_2, L118_2, L119_2, L120_2, L121_2, L122_2, L123_2, L124_2, L125_2, L126_2, L127_2, L128_2, L129_2, L130_2, L131_2, L132_2, L133_2, L134_2, L135_2, L136_2, L137_2, L138_2, L139_2, L140_2, L141_2, L142_2, L143_2, L144_2, L145_2, L146_2, L147_2, L148_2, L149_2, L150_2, L151_2, L152_2, L153_2, L154_2, L155_2, L156_2, L157_2, L158_2, L159_2, L160_2, L161_2, L162_2, L163_2, L164_2, L165_2, L166_2, L167_2, L168_2, L169_2, L170_2, L171_2, L172_2, L173_2, L174_2, L175_2, L176_2, L177_2, L178_2, L179_2, L180_2, L181_2, L182_2, L183_2, L184_2, L185_2, L186_2, L187_2, L188_2, L189_2, L190_2, L191_2, L192_2, L193_2, L194_2, L195_2, L196_2, L197_2, L198_2, L199_2, L200_2, L201_2, L202_2, L203_2, L204_2, L205_2)
  L25_2 = L24_2.getHead
  L25_2 = L25_2()
  L26_2 = 1201
  L27_2 = 1301
  L28_2 = 2001
  if A8_2 then
    L29_2 = 1
    L30_2 = #A8_2
    L31_2 = 1
    for L32_2 = L29_2, L30_2, L31_2 do
      L33_2 = L2_1
      L33_2 = L33_2.storeConfig
      L33_2 = L33_2.canDrawItem
      L34_2 = tonumber
      L35_2 = A8_2[L32_2]
      L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2, L91_2, L92_2, L93_2, L94_2, L95_2, L96_2, L97_2, L98_2, L99_2, L100_2, L101_2, L102_2, L103_2, L104_2, L105_2, L106_2, L107_2, L108_2, L109_2, L110_2, L111_2, L112_2, L113_2, L114_2, L115_2, L116_2, L117_2, L118_2, L119_2, L120_2, L121_2, L122_2, L123_2, L124_2, L125_2, L126_2, L127_2, L128_2, L129_2, L130_2, L131_2, L132_2, L133_2, L134_2, L135_2, L136_2, L137_2, L138_2, L139_2, L140_2, L141_2, L142_2, L143_2, L144_2, L145_2, L146_2, L147_2, L148_2, L149_2, L150_2, L151_2, L152_2, L153_2, L154_2, L155_2, L156_2, L157_2, L158_2, L159_2, L160_2, L161_2, L162_2, L163_2, L164_2, L165_2, L166_2, L167_2, L168_2, L169_2, L170_2, L171_2, L172_2, L173_2, L174_2, L175_2, L176_2, L177_2, L178_2, L179_2, L180_2, L181_2, L182_2, L183_2, L184_2, L185_2, L186_2, L187_2, L188_2, L189_2, L190_2, L191_2, L192_2, L193_2, L194_2, L195_2, L196_2, L197_2, L198_2, L199_2, L200_2, L201_2, L202_2, L203_2, L204_2, L205_2 = L34_2(L35_2)
      L33_2 = L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2, L91_2, L92_2, L93_2, L94_2, L95_2, L96_2, L97_2, L98_2, L99_2, L100_2, L101_2, L102_2, L103_2, L104_2, L105_2, L106_2, L107_2, L108_2, L109_2, L110_2, L111_2, L112_2, L113_2, L114_2, L115_2, L116_2, L117_2, L118_2, L119_2, L120_2, L121_2, L122_2, L123_2, L124_2, L125_2, L126_2, L127_2, L128_2, L129_2, L130_2, L131_2, L132_2, L133_2, L134_2, L135_2, L136_2, L137_2, L138_2, L139_2, L140_2, L141_2, L142_2, L143_2, L144_2, L145_2, L146_2, L147_2, L148_2, L149_2, L150_2, L151_2, L152_2, L153_2, L154_2, L155_2, L156_2, L157_2, L158_2, L159_2, L160_2, L161_2, L162_2, L163_2, L164_2, L165_2, L166_2, L167_2, L168_2, L169_2, L170_2, L171_2, L172_2, L173_2, L174_2, L175_2, L176_2, L177_2, L178_2, L179_2, L180_2, L181_2, L182_2, L183_2, L184_2, L185_2, L186_2, L187_2, L188_2, L189_2, L190_2, L191_2, L192_2, L193_2, L194_2, L195_2, L196_2, L197_2, L198_2, L199_2, L200_2, L201_2, L202_2, L203_2, L204_2, L205_2)
      if L33_2 then
        L33_2 = L2_1
        L33_2 = L33_2.storeConfig
        L33_2 = L33_2.getItemCategory
        L34_2 = tonumber
        L35_2 = A8_2[L32_2]
        L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2, L91_2, L92_2, L93_2, L94_2, L95_2, L96_2, L97_2, L98_2, L99_2, L100_2, L101_2, L102_2, L103_2, L104_2, L105_2, L106_2, L107_2, L108_2, L109_2, L110_2, L111_2, L112_2, L113_2, L114_2, L115_2, L116_2, L117_2, L118_2, L119_2, L120_2, L121_2, L122_2, L123_2, L124_2, L125_2, L126_2, L127_2, L128_2, L129_2, L130_2, L131_2, L132_2, L133_2, L134_2, L135_2, L136_2, L137_2, L138_2, L139_2, L140_2, L141_2, L142_2, L143_2, L144_2, L145_2, L146_2, L147_2, L148_2, L149_2, L150_2, L151_2, L152_2, L153_2, L154_2, L155_2, L156_2, L157_2, L158_2, L159_2, L160_2, L161_2, L162_2, L163_2, L164_2, L165_2, L166_2, L167_2, L168_2, L169_2, L170_2, L171_2, L172_2, L173_2, L174_2, L175_2, L176_2, L177_2, L178_2, L179_2, L180_2, L181_2, L182_2, L183_2, L184_2, L185_2, L186_2, L187_2, L188_2, L189_2, L190_2, L191_2, L192_2, L193_2, L194_2, L195_2, L196_2, L197_2, L198_2, L199_2, L200_2, L201_2, L202_2, L203_2, L204_2, L205_2 = L34_2(L35_2)
        L33_2 = L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2, L91_2, L92_2, L93_2, L94_2, L95_2, L96_2, L97_2, L98_2, L99_2, L100_2, L101_2, L102_2, L103_2, L104_2, L105_2, L106_2, L107_2, L108_2, L109_2, L110_2, L111_2, L112_2, L113_2, L114_2, L115_2, L116_2, L117_2, L118_2, L119_2, L120_2, L121_2, L122_2, L123_2, L124_2, L125_2, L126_2, L127_2, L128_2, L129_2, L130_2, L131_2, L132_2, L133_2, L134_2, L135_2, L136_2, L137_2, L138_2, L139_2, L140_2, L141_2, L142_2, L143_2, L144_2, L145_2, L146_2, L147_2, L148_2, L149_2, L150_2, L151_2, L152_2, L153_2, L154_2, L155_2, L156_2, L157_2, L158_2, L159_2, L160_2, L161_2, L162_2, L163_2, L164_2, L165_2, L166_2, L167_2, L168_2, L169_2, L170_2, L171_2, L172_2, L173_2, L174_2, L175_2, L176_2, L177_2, L178_2, L179_2, L180_2, L181_2, L182_2, L183_2, L184_2, L185_2, L186_2, L187_2, L188_2, L189_2, L190_2, L191_2, L192_2, L193_2, L194_2, L195_2, L196_2, L197_2, L198_2, L199_2, L200_2, L201_2, L202_2, L203_2, L204_2, L205_2)
        if L33_2 == "sawblade" then
          L26_2 = A8_2[L32_2]
        else
          L33_2 = L2_1
          L33_2 = L33_2.storeConfig
          L33_2 = L33_2.getItemCategory
          L34_2 = tonumber
          L35_2 = A8_2[L32_2]
          L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2, L91_2, L92_2, L93_2, L94_2, L95_2, L96_2, L97_2, L98_2, L99_2, L100_2, L101_2, L102_2, L103_2, L104_2, L105_2, L106_2, L107_2, L108_2, L109_2, L110_2, L111_2, L112_2, L113_2, L114_2, L115_2, L116_2, L117_2, L118_2, L119_2, L120_2, L121_2, L122_2, L123_2, L124_2, L125_2, L126_2, L127_2, L128_2, L129_2, L130_2, L131_2, L132_2, L133_2, L134_2, L135_2, L136_2, L137_2, L138_2, L139_2, L140_2, L141_2, L142_2, L143_2, L144_2, L145_2, L146_2, L147_2, L148_2, L149_2, L150_2, L151_2, L152_2, L153_2, L154_2, L155_2, L156_2, L157_2, L158_2, L159_2, L160_2, L161_2, L162_2, L163_2, L164_2, L165_2, L166_2, L167_2, L168_2, L169_2, L170_2, L171_2, L172_2, L173_2, L174_2, L175_2, L176_2, L177_2, L178_2, L179_2, L180_2, L181_2, L182_2, L183_2, L184_2, L185_2, L186_2, L187_2, L188_2, L189_2, L190_2, L191_2, L192_2, L193_2, L194_2, L195_2, L196_2, L197_2, L198_2, L199_2, L200_2, L201_2, L202_2, L203_2, L204_2, L205_2 = L34_2(L35_2)
          L33_2 = L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2, L91_2, L92_2, L93_2, L94_2, L95_2, L96_2, L97_2, L98_2, L99_2, L100_2, L101_2, L102_2, L103_2, L104_2, L105_2, L106_2, L107_2, L108_2, L109_2, L110_2, L111_2, L112_2, L113_2, L114_2, L115_2, L116_2, L117_2, L118_2, L119_2, L120_2, L121_2, L122_2, L123_2, L124_2, L125_2, L126_2, L127_2, L128_2, L129_2, L130_2, L131_2, L132_2, L133_2, L134_2, L135_2, L136_2, L137_2, L138_2, L139_2, L140_2, L141_2, L142_2, L143_2, L144_2, L145_2, L146_2, L147_2, L148_2, L149_2, L150_2, L151_2, L152_2, L153_2, L154_2, L155_2, L156_2, L157_2, L158_2, L159_2, L160_2, L161_2, L162_2, L163_2, L164_2, L165_2, L166_2, L167_2, L168_2, L169_2, L170_2, L171_2, L172_2, L173_2, L174_2, L175_2, L176_2, L177_2, L178_2, L179_2, L180_2, L181_2, L182_2, L183_2, L184_2, L185_2, L186_2, L187_2, L188_2, L189_2, L190_2, L191_2, L192_2, L193_2, L194_2, L195_2, L196_2, L197_2, L198_2, L199_2, L200_2, L201_2, L202_2, L203_2, L204_2, L205_2)
          if L33_2 == "beartrap" then
            L27_2 = A8_2[L32_2]
          else
            L33_2 = L2_1
            L33_2 = L33_2.storeConfig
            L33_2 = L33_2.getItemCategory
            L34_2 = tonumber
            L35_2 = A8_2[L32_2]
            L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2, L91_2, L92_2, L93_2, L94_2, L95_2, L96_2, L97_2, L98_2, L99_2, L100_2, L101_2, L102_2, L103_2, L104_2, L105_2, L106_2, L107_2, L108_2, L109_2, L110_2, L111_2, L112_2, L113_2, L114_2, L115_2, L116_2, L117_2, L118_2, L119_2, L120_2, L121_2, L122_2, L123_2, L124_2, L125_2, L126_2, L127_2, L128_2, L129_2, L130_2, L131_2, L132_2, L133_2, L134_2, L135_2, L136_2, L137_2, L138_2, L139_2, L140_2, L141_2, L142_2, L143_2, L144_2, L145_2, L146_2, L147_2, L148_2, L149_2, L150_2, L151_2, L152_2, L153_2, L154_2, L155_2, L156_2, L157_2, L158_2, L159_2, L160_2, L161_2, L162_2, L163_2, L164_2, L165_2, L166_2, L167_2, L168_2, L169_2, L170_2, L171_2, L172_2, L173_2, L174_2, L175_2, L176_2, L177_2, L178_2, L179_2, L180_2, L181_2, L182_2, L183_2, L184_2, L185_2, L186_2, L187_2, L188_2, L189_2, L190_2, L191_2, L192_2, L193_2, L194_2, L195_2, L196_2, L197_2, L198_2, L199_2, L200_2, L201_2, L202_2, L203_2, L204_2, L205_2 = L34_2(L35_2)
            L33_2 = L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2, L91_2, L92_2, L93_2, L94_2, L95_2, L96_2, L97_2, L98_2, L99_2, L100_2, L101_2, L102_2, L103_2, L104_2, L105_2, L106_2, L107_2, L108_2, L109_2, L110_2, L111_2, L112_2, L113_2, L114_2, L115_2, L116_2, L117_2, L118_2, L119_2, L120_2, L121_2, L122_2, L123_2, L124_2, L125_2, L126_2, L127_2, L128_2, L129_2, L130_2, L131_2, L132_2, L133_2, L134_2, L135_2, L136_2, L137_2, L138_2, L139_2, L140_2, L141_2, L142_2, L143_2, L144_2, L145_2, L146_2, L147_2, L148_2, L149_2, L150_2, L151_2, L152_2, L153_2, L154_2, L155_2, L156_2, L157_2, L158_2, L159_2, L160_2, L161_2, L162_2, L163_2, L164_2, L165_2, L166_2, L167_2, L168_2, L169_2, L170_2, L171_2, L172_2, L173_2, L174_2, L175_2, L176_2, L177_2, L178_2, L179_2, L180_2, L181_2, L182_2, L183_2, L184_2, L185_2, L186_2, L187_2, L188_2, L189_2, L190_2, L191_2, L192_2, L193_2, L194_2, L195_2, L196_2, L197_2, L198_2, L199_2, L200_2, L201_2, L202_2, L203_2, L204_2, L205_2)
            if L33_2 == "punchbox" then
              L28_2 = A8_2[L32_2]
            end
          end
        end
      end
    end
  end
  L29_2 = L2_1
  L29_2 = L29_2.powerUpImageSheetInfo
  L30_2 = L29_2
  L29_2 = L29_2.getFrameIndex
  L31_2 = ""
  L32_2 = L26_2
  L31_2 = L31_2 .. L32_2
  L29_2 = L29_2(L30_2, L31_2)
  L30_2 = L2_1
  L30_2 = L30_2.powerUpImageSheetInfo
  L31_2 = L30_2
  L30_2 = L30_2.getFrameIndex
  L32_2 = ""
  L33_2 = L27_2
  L34_2 = "_2"
  L32_2 = L32_2 .. L33_2 .. L34_2
  L30_2 = L30_2(L31_2, L32_2)
  L31_2 = L2_1
  L31_2 = L31_2.powerUpImageSheetInfo
  L32_2 = L31_2
  L31_2 = L31_2.getFrameIndex
  L33_2 = ""
  L34_2 = L28_2
  L33_2 = L33_2 .. L34_2
  L31_2 = L31_2(L32_2, L33_2)
  L32_2 = {}
  L33_2 = display
  L33_2 = L33_2.newImageRect
  L34_2 = L2_1
  L34_2 = L34_2.powerUpImageSheet
  L35_2 = L29_2
  L36_2 = 25
  L37_2 = 25
  L33_2 = L33_2(L34_2, L35_2, L36_2, L37_2)
  L32_2.bladeImage = L33_2
  L33_2 = display
  L33_2 = L33_2.newImageRect
  L34_2 = L2_1
  L34_2 = L34_2.powerUpImageSheet
  L35_2 = L30_2
  L36_2 = 25
  L37_2 = 25
  L33_2 = L33_2(L34_2, L35_2, L36_2, L37_2)
  L32_2.trapImage = L33_2
  L33_2 = display
  L33_2 = L33_2.newImageRect
  L34_2 = L2_1
  L34_2 = L34_2.powerUpImageSheet
  L35_2 = L31_2
  L36_2 = 20
  L37_2 = 20
  L33_2 = L33_2(L34_2, L35_2, L36_2, L37_2)
  L32_2.bounceTrapImage = L33_2
  L33_2 = display
  L33_2 = L33_2.newImageRect
  L34_2 = "images/game/markIcon.png"
  L35_2 = 37
  L36_2 = 34
  L33_2 = L33_2(L34_2, L35_2, L36_2)
  L32_2.markPlayerImage = L33_2
  L33_2 = display
  L33_2 = L33_2.newImageRect
  L34_2 = "images/game/markIcon.png"
  L35_2 = 24
  L36_2 = 22
  L33_2 = L33_2(L34_2, L35_2, L36_2)
  L32_2.markBarImage = L33_2
  L33_2 = false
  L34_2 = {}
  L34_2.defaultTopSpeed = 350
  L34_2.defaultAcceleration = 30
  L34_2.topSpeedX = 350
  L34_2.accelerateX = 25
  L34_2.tempSpeedX = 350
  L35_2 = L34_2.topSpeedX
  L35_2 = L35_2 * 2.5
  L34_2.boostMaks = L35_2
  L35_2 = L34_2.topSpeedX
  L35_2 = L35_2 * 2
  L34_2.boostMaksSlide = L35_2
  L35_2 = L34_2.topSpeedX
  L35_2 = L35_2 * 0.4
  L34_2.slowMaks = L35_2
  L35_2 = L2_1
  L35_2 = L35_2.data
  L35_2 = L35_2.gameInfo
  L35_2 = L35_2.crazyModeActive
  if L35_2 then
    L35_2 = 1
    L36_2 = L2_1
    L36_2 = L36_2.data
    L36_2 = L36_2.gameInfo
    L36_2 = L36_2.crazyMode
    if L36_2 == 3 then
      L35_2 = 1.25
    end
    L36_2 = L34_2.defaultTopSpeed
    L36_2 = L36_2 * L35_2
    L34_2.defaultTopSpeed = L36_2
    L36_2 = L34_2.defaultAcceleration
    L36_2 = L36_2 * L35_2
    L34_2.defaultAcceleration = L36_2
    L36_2 = L34_2.topSpeedX
    L36_2 = L36_2 * L35_2
    L34_2.topSpeedX = L36_2
    L36_2 = L34_2.accelerateX
    L36_2 = L36_2 * L35_2
    L34_2.accelerateX = L36_2
    L36_2 = L34_2.tempSpeedX
    L36_2 = L36_2 * L35_2
    L34_2.tempSpeedX = L36_2
    L36_2 = L34_2.topSpeedX
    L36_2 = L36_2 * 2.5
    L34_2.boostMaks = L36_2
    L36_2 = L34_2.topSpeedX
    L36_2 = L36_2 * 2
    L34_2.boostMaksSlide = L36_2
    L36_2 = L34_2.topSpeedX
    L36_2 = L36_2 * 0.4
    L34_2.slowMaks = L36_2
  end
  L35_2 = {}
  L35_2.groundTime = 0
  L35_2.playerDeadtime = 3000
  L35_2.goalTime = -1
  L35_2.powerUpAtTimes = 0
  L35_2.lastJumpTime = 1000
  L35_2.currentGameTime = -1
  L35_2.currentUDID = -1
  L36_2 = {}
  L37_2 = 1
  L38_2 = A0_2
  L39_2 = nil
  L38_2 = L38_2 + 1
  L40_2 = #A5_2
  if L38_2 > L40_2 then
    L38_2 = 1
  end
  L40_2 = 8
  L41_2 = -1
  L42_2 = 1
  L43_2 = 0
  L44_2 = 0
  L45_2 = 0
  L46_2 = A3_2
  L47_2 = L2_1
  L47_2 = L47_2.config
  L47_2 = L47_2.tutorial
  if L47_2 then
    L46_2 = 0
  else
    L47_2 = L2_1
    L47_2 = L47_2.data
    L47_2 = L47_2.gameInfo
    L47_2 = L47_2.crazyModeActive
    if L47_2 then
      L47_2 = L2_1
      L47_2 = L47_2.data
      L47_2 = L47_2.gameInfo
      L47_2 = L47_2.crazyMode
      if L47_2 == 1 then
        L46_2 = 0
      end
    end
  end
  L47_2 = L2_1
  L47_2 = L47_2.data
  L47_2 = L47_2.gameInfo
  L47_2 = L47_2.crazyModeActive
  if L47_2 then
    L47_2 = L2_1
    L47_2 = L47_2.data
    L47_2 = L47_2.gameInfo
    L47_2 = L47_2.crazyMode
    if L47_2 == 2 then
      L46_2 = 1
    else
      L47_2 = L2_1
      L47_2 = L47_2.data
      L47_2 = L47_2.gameInfo
      L47_2 = L47_2.crazyMode
      if L47_2 == 5 then
        L46_2 = 10
      else
        L47_2 = L2_1
        L47_2 = L47_2.data
        L47_2 = L47_2.gameInfo
        L47_2 = L47_2.crazyMode
        if L47_2 == 6 then
          L46_2 = 7
        else
          L47_2 = L2_1
          L47_2 = L47_2.data
          L47_2 = L47_2.gameInfo
          L47_2 = L47_2.crazyMode
          if L47_2 == 7 then
            L46_2 = 9
          end
        end
      end
    end
  end
  L47_2 = {}
  L47_2.armorActive = false
  L47_2.shieldActive = false
  L47_2.rocketActive = false
  L47_2.rocketActiveHigh = false
  L47_2.spriteIsRunning = false
  L47_2.spriteIsInAir = false
  L47_2.playerDead = false
  L47_2.playerInvulnerable = false
  L47_2.speedActive = false
  L47_2.disconnected = false
  L47_2.startedClean = false
  L47_2.tutorialPause = false
  L47_2.killedByLevel = false
  L48_2 = L4_1
  L48_2 = L48_2.newCorpsParts
  L49_2 = L14_2
  L50_2 = L11_2
  L48_2 = L48_2(L49_2, L50_2)
  L49_2 = {}
  L50_2 = nil
  L51_2 = nil
  L52_2 = nil
  L53_2 = nil
  L54_2 = nil
  L55_2 = 5
  L56_2 = {}
  L57_2 = 1
  L58_2 = L55_2
  L59_2 = 1
  for L60_2 = L57_2, L58_2, L59_2 do
    L61_2 = A0_2 - 1
    L61_2 = L61_2 * L55_2
    L61_2 = L61_2 + L60_2
    L56_2[L60_2] = L61_2
  end
  L57_2 = 1
  L58_2 = -1
  L59_2 = nil
  L60_2 = nil
  L61_2 = nil
  L11_2.mainPlayer = A4_2
  L62_2 = L7_1
  L62_2 = L62_2.createEffects
  L63_2 = L11_2
  L64_2 = L48_2
  L65_2 = L24_2
  L66_2 = L47_2
  L67_2 = L13_2
  L68_2 = L14_2
  L69_2 = L15_2
  L70_2 = A8_2
  L62_2 = L62_2(L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2)
  L63_2 = display
  L63_2 = L63_2.newImageRect
  L64_2 = "images/game/avatar/disconnected.png"
  L65_2 = 18
  L66_2 = 18
  L63_2 = L63_2(L64_2, L65_2, L66_2)
  L64_2 = nil
  L65_2 = nil
  if A4_2 then
    L65_2 = "images/game/playerSelfNormal"
  else
    L65_2 = "images/game/playerOtherNormal"
  end
  if A9_2 then
    L66_2 = L65_2
    L67_2 = A9_2
    L65_2 = L66_2 .. L67_2
  end
  L66_2 = L2_1
  L66_2 = L66_2.data
  L66_2 = L66_2.teamMateId
  L67_2 = L2_1
  L67_2 = L67_2.data
  L67_2 = L67_2.gameInfo
  L67_2 = L67_2.players
  L67_2 = L67_2[A0_2]
  L67_2 = L67_2.playerId
  if L66_2 == L67_2 then
    L66_2 = L65_2
    L67_2 = "Friendly"
    L65_2 = L66_2 .. L67_2
    L66_2 = L2_1
    L66_2 = L66_2.data
    L66_2.teamMateId = nil
  end
  L66_2 = L65_2
  L67_2 = ".png"
  L65_2 = L66_2 .. L67_2
  L66_2 = display
  L66_2 = L66_2.newImageRect
  L67_2 = L65_2
  L68_2 = 40
  L69_2 = 40
  L66_2 = L66_2(L67_2, L68_2, L69_2)
  L64_2 = L66_2
  L66_2 = nil
  L67_2 = nil
  L68_2 = nil
  L69_2 = nil
  L70_2 = 0
  L71_2 = 0
  L72_2 = 0
  
  function L73_2()
    local L0_3, L1_3
    L0_3 = A4_2
    if not L0_3 then
      return
    end
    L0_3 = L68_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L68_2
      L0_3(L1_3)
      L0_3 = nil
      L68_2 = L0_3
    end
    L0_3 = L66_2
    if L0_3 then
      L0_3 = transition
      L0_3 = L0_3.cancel
      L1_3 = L66_2
      L0_3(L1_3)
      L0_3 = L66_2
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      L66_2 = L0_3
    end
  end
  
  function L74_2()
    local L0_3, L1_3
    L0_3 = A4_2
    if not L0_3 then
      return
    end
    L0_3 = system
    L0_3 = L0_3.getTimer
    L0_3 = L0_3()
    L72_2 = L0_3
    L0_3 = L69_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L69_2
      L0_3(L1_3)
      L0_3 = nil
      L69_2 = L0_3
    end
    L0_3 = L67_2
    if L0_3 then
      L0_3 = transition
      L0_3 = L0_3.cancel
      L1_3 = L67_2
      L0_3(L1_3)
      L0_3 = L67_2
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      L67_2 = L0_3
    end
    L0_3 = L66_2
    if L0_3 then
      L0_3 = L66_2
      L0_3.alpha = 1
    end
  end
  
  function L75_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = display
    L1_3 = L1_3.newImageRect
    L2_3 = A0_3
    L3_3 = 140
    L4_3 = 210
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L1_3.anchorX = 1
    L1_3.anchorY = 1
    L1_3.xScale = 0.5
    L1_3.yScale = 0.5
    L1_3.x = 480
    L1_3.y = 240
    L1_3.alpha = 0
    return L1_3
  end
  
  function L76_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    if A0_3 then
      A1_3 = -A1_3
      L2_3 = transition
      L2_3 = L2_3.to
      L3_3 = A0_3
      L4_3 = {}
      L4_3.tag = "tutorialTransition"
      L4_3.delta = true
      L4_3.y = A1_3
      L4_3.time = 500
      
      function L5_3()
        local L0_4, L1_4, L2_4
        L0_4 = L76_2
        L1_4 = A0_3
        L2_4 = A1_3
        L0_4(L1_4, L2_4)
      end
      
      L4_3.onComplete = L5_3
      L2_3(L3_3, L4_3)
    end
  end
  
  function L77_2()
    local L0_3, L1_3, L2_3
    L0_3 = L66_2
    if not L0_3 then
      L0_3 = L73_2
      L0_3()
      L0_3 = L75_2
      L1_3 = "images/game/arrow.png"
      L0_3 = L0_3(L1_3)
      L66_2 = L0_3
      L0_3 = L66_2
      L0_3.anchorX = 1
      L0_3 = L66_2
      L0_3.anchorY = 1
      L0_3 = L66_2
      L0_3.alpha = 1
      L0_3 = L66_2
      L0_3.x = 70
      L0_3 = L70_2
      L0_3 = L0_3 + 1
      L70_2 = L0_3
      L0_3 = L76_2
      L1_3 = L66_2
      L2_3 = -30
      L0_3(L1_3, L2_3)
    end
  end
  
  function L78_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L2_1
    L1_3 = L1_3.onboarding
    L1_3 = L1_3.isActive
    if L1_3 then
      return
    end
    L1_3 = A4_2
    if L1_3 then
      L1_3 = L2_1
      L1_3 = L1_3.gamesPlayed
      if L1_3 < 4 then
        L1_3 = L70_2
        if L1_3 < 10 then
          L1_3 = timer
          L1_3 = L1_3.performWithDelay
          L2_3 = A0_3
          L3_3 = L77_2
          L4_3 = 1
          L1_3 = L1_3(L2_3, L3_3, L4_3)
          L68_2 = L1_3
        end
      end
    end
  end
  
  function L79_2()
    local L0_3, L1_3, L2_3
    L0_3 = L67_2
    if not L0_3 then
      L0_3 = L74_2
      L0_3()
      L0_3 = L75_2
      L1_3 = "images/game/arrow.png"
      L0_3 = L0_3(L1_3)
      L67_2 = L0_3
      L0_3 = L67_2
      L0_3.anchorX = 1
      L0_3 = L67_2
      L0_3.anchorY = 1
      L0_3 = L67_2
      L0_3.alpha = 1
      L0_3 = L66_2
      if L0_3 then
        L0_3 = L66_2
        L0_3.alpha = 0
      end
      L0_3 = L76_2
      L1_3 = L67_2
      L2_3 = -30
      L0_3(L1_3, L2_3)
    end
  end
  
  function L80_2()
    local L0_3, L1_3
    L0_3 = L2_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.isActive
    if L0_3 then
      return
    end
    L0_3 = A4_2
    if L0_3 then
      L0_3 = L2_1
      L0_3 = L0_3.gamesPlayed
      if not (3 < L0_3) then
        goto lbl_15
      end
    end
    do return end
    ::lbl_15::
    L0_3 = L11_2
    L0_3 = L0_3.x
    L1_3 = L71_2
    L0_3 = L0_3 - L1_3
    if 10 < L0_3 then
      L0_3 = L11_2
      L0_3 = L0_3.x
      L71_2 = L0_3
      L0_3 = system
      L0_3 = L0_3.getTimer
      L0_3 = L0_3()
      L72_2 = L0_3
      L0_3 = L74_2
      L0_3()
    else
      L0_3 = system
      L0_3 = L0_3.getTimer
      L0_3 = L0_3()
      L1_3 = L72_2
      L0_3 = L0_3 - L1_3
      if 3000 < L0_3 then
        L1_3 = L79_2
        L1_3()
      end
    end
  end
  
  function L81_2(A0_3)
    local L1_3
    L1_3 = A0_3 * 180
    L1_3 = L1_3 / 3.14
    return L1_3
  end
  
  function L82_2()
    local L0_3, L1_3
    L0_3 = L13_2
    L0_3.alpha = 0
    L0_3 = L24_2
    L0_3 = L0_3.cleanAnimationImages
    L0_3()
  end
  
  function L83_2()
    local L0_3, L1_3
    L0_3 = L47_2
    L0_3 = L0_3.startedClean
    if not L0_3 then
      L0_3 = L24_2
      L0_3 = L0_3.setBandage
      L1_3 = false
      L0_3(L1_3)
      L0_3 = L47_2
      L0_3.killedByLevel = false
      L0_3 = L47_2
      L0_3.playerInvulnerable = false
    end
  end
  
  function L84_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L24_2
    L0_3 = L0_3.setBandage
    L1_3 = true
    L0_3(L1_3)
    L0_3 = L13_2
    L0_3.alpha = 1
    L0_3 = L35_2
    L0_3 = L0_3.playerDeadtime
    L0_3 = L0_3 - 1000
    L1_3 = L2_1
    L1_3 = L1_3.onboarding
    L1_3 = L1_3.reduceRespawnTime
    L1_3 = L1_3()
    if L1_3 then
      L0_3 = 100
    end
    L1_3 = timer
    L1_3 = L1_3.performWithDelay
    L2_3 = L0_3
    L3_3 = L83_2
    L4_3 = 1
    L1_3(L2_3, L3_3, L4_3)
  end
  
  L85_2 = L2_1
  L85_2 = L85_2.data
  L85_2 = L85_2.monsterInMemory
  L86_2 = L24_2.getMemoryIndex
  L86_2 = L86_2()
  L85_2 = L85_2[L86_2]
  L86_2 = L48_2.addSpriteSet
  L87_2 = L85_2
  L86_2(L87_2)
  
  function L86_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L47_2
    L0_3 = L0_3.startedClean
    if L0_3 then
      L0_3 = 1
      L1_3 = 1
      return L0_3, L1_3
    end
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.getLinearVelocity
    L0_3, L1_3 = L0_3(L1_3)
    L2_3 = L0_3
    L3_3 = L1_3
    return L2_3, L3_3
  end
  
  function L87_2()
    local L0_3, L1_3
    L0_3 = L47_2
    L0_3 = L0_3.startedClean
    if L0_3 then
      L0_3 = 1
      L1_3 = 1
      return L0_3, L1_3
    end
    L0_3 = L11_2
    L0_3 = L0_3.x
    L1_3 = L11_2
    L1_3 = L1_3.y
    return L0_3, L1_3
  end
  
  function L88_2(A0_3, A1_3)
    local L2_3
    L2_3 = L11_2
    L2_3.x = A0_3
    L2_3 = L11_2
    L2_3.y = A1_3
  end
  
  function L89_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = L11_2
    L3_3 = L2_3
    L2_3 = L2_3.setLinearVelocity
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = L12_2
    L3_3 = L2_3
    L2_3 = L2_3.setLinearVelocity
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  
  function L90_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = L11_2
    L3_3 = L2_3
    L2_3 = L2_3.applyForce
    L4_3 = A0_3
    L5_3 = A1_3
    L6_3 = L11_2
    L6_3 = L6_3.x
    L7_3 = L11_2
    L7_3 = L7_3.y
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    L2_3 = L12_2
    L3_3 = L2_3
    L2_3 = L2_3.applyForce
    L4_3 = A0_3
    L5_3 = A1_3
    L6_3 = L12_2
    L6_3 = L6_3.x
    L7_3 = L12_2
    L7_3 = L7_3.y
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
  end
  
  function L91_2()
    local L0_3, L1_3, L2_3
    L0_3 = L21_2
    if L0_3 then
      L0_3 = L1_1
      L0_3 = L0_3.createSparkeEffect
      L1_3 = L11_2
      L2_3 = 1
      L0_3(L1_3, L2_3)
    end
  end
  
  function L92_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L22_2
    if L0_3 then
      L0_3 = A2_2
      L0_3 = L0_3.f
      if L0_3 then
        L0_3 = A2_2
        L0_3 = L0_3.f
        if 0 < L0_3 then
          L0_3 = L1_1
          L0_3 = L0_3.createTrail
          L1_3 = A2_2
          L1_3 = L1_3.f
          L2_3 = L11_2
          L2_3 = L2_3.x
          L2_3 = L2_3 - 5
          L3_3 = L11_2
          L3_3 = L3_3.y
          L3_3 = L3_3 - 10
          L4_3 = L14_2
          L5_3 = 0.5
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
      end
    end
    else
      L0_3 = A2_2
      L0_3 = L0_3[6]
      if L0_3 then
        L0_3 = tonumber
        L1_3 = A2_2
        L1_3 = L1_3[6]
        L0_3 = L0_3(L1_3)
        if 0 < L0_3 then
          L0_3 = L1_1
          L0_3 = L0_3.createTrail
          L1_3 = tonumber
          L2_3 = A2_2
          L2_3 = L2_3[6]
          L1_3 = L1_3(L2_3)
          L2_3 = L11_2
          L2_3 = L2_3.x
          L2_3 = L2_3 - 5
          L3_3 = L11_2
          L3_3 = L3_3.y
          L3_3 = L3_3 - 10
          L4_3 = L14_2
          L5_3 = 0.5
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
        end
      end
    end
  end
  
  function L93_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L47_2
    L1_3 = L1_3.startedClean
    if not L1_3 then
      if A0_3 then
        L1_3 = L24_2
        L1_3 = L1_3.playBuffAnimation
        L2_3 = "speed_end"
        L3_3 = false
        L1_3(L2_3, L3_3)
      else
        L1_3 = L24_2
        L1_3 = L1_3.setAnimation
        L2_3 = "run"
        L3_3 = true
        L4_3 = false
        L1_3(L2_3, L3_3, L4_3)
      end
      L1_3 = L36_2
      L1_3 = L1_3.speed
      if L1_3 then
        L1_3 = L36_2
        L1_3 = L1_3.speed
        L1_3 = L1_3.removeObject
        L2_3 = false
        L3_3 = true
        L1_3(L2_3, L3_3)
        L1_3 = L36_2
        L1_3.speed = nil
      end
      L1_3 = L34_2
      L2_3 = L34_2
      L2_3 = L2_3.defaultTopSpeed
      L1_3.topSpeedX = L2_3
      L1_3 = L34_2
      L2_3 = L34_2
      L2_3 = L2_3.topSpeedX
      L1_3.tempSpeedX = L2_3
      L1_3 = L34_2
      L2_3 = L34_2
      L2_3 = L2_3.defaultAcceleration
      L1_3.accelerateX = L2_3
      L1_3 = L24_2
      L1_3 = L1_3.cleanBuffAnimationImages
      L1_3()
    end
  end
  
  function L94_2()
    local L0_3, L1_3, L2_3
    L0_3 = L60_2
    L1_3 = "armor_end"
    L0_3(L1_3)
    L0_3 = L24_2
    L0_3 = L0_3.playBuffAnimation
    L1_3 = "sacrifice_end"
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = L36_2
    L0_3 = L0_3.armor
    if L0_3 then
      L0_3 = L36_2
      L0_3 = L0_3.armor
      L0_3 = L0_3.removeObject
      L0_3()
      L0_3 = L36_2
      L0_3.armor = nil
    end
  end
  
  function L95_2()
    local L0_3, L1_3, L2_3
    L0_3 = L24_2
    L0_3 = L0_3.playBuffAnimation
    L1_3 = "sacrifice_start"
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  
  function L96_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L24_2
    L1_3 = L1_3.setAnimation
    L2_3 = "run"
    L3_3 = true
    L4_3 = false
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L36_2
    L1_3 = L1_3.rocket
    if L1_3 then
      if A0_3 then
        L1_3 = L36_2
        L1_3 = L1_3.rocket
        L1_3 = L1_3.checkForOtherPlayerKill
        L1_3()
      end
      L1_3 = L36_2
      L1_3 = L1_3.rocket
      L1_3 = L1_3.removeObject
      L1_3()
      L1_3 = L36_2
      L1_3.rocket = nil
    end
    L1_3 = L52_2
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = L52_2
      L1_3(L2_3)
      L1_3 = nil
      L52_2 = L1_3
    end
    L1_3 = L24_2
    L1_3 = L1_3.cleanBuffAnimationImages
    L1_3()
  end
  
  function L97_2(A0_3)
    local L1_3, L2_3
    L1_3 = L24_2
    L1_3 = L1_3.setPaused
    L2_3 = A0_3
    L1_3(L2_3)
  end
  
  function L98_2(A0_3, A1_3)
    L41_2 = A0_3
    L42_2 = A1_3
  end
  
  function L99_2()
    local L0_3, L1_3
    L0_3 = L41_2
    return L0_3
  end
  
  function L100_2(A0_3)
    local L1_3
    L54_2 = A0_3
  end
  
  L101_2 = nil
  
  function L102_2()
    local L0_3, L1_3
    L0_3 = L47_2
    L0_3 = L0_3.startedClean
    if not L0_3 then
      L0_3 = L32_2
      L0_3 = L0_3.markPlayerImage
      L0_3.alpha = 0
      L0_3 = L32_2
      L0_3 = L0_3.markBarImage
      L0_3.alpha = 0
      L0_3 = L11_2
      L0_3.ninjaMark = false
    end
  end
  
  function L103_2()
    local L0_3, L1_3
    L0_3 = L47_2
    L0_3 = L0_3.startedClean
    if not L0_3 then
      L0_3 = A4_2
      if not L0_3 then
        L0_3 = L32_2
        L0_3 = L0_3.markPlayerImage
        L0_3.alpha = 1
      end
      L0_3 = L32_2
      L0_3 = L0_3.markBarImage
      L0_3.alpha = 1
      L0_3 = L50_2
      if L0_3 then
        L0_3 = timer
        L0_3 = L0_3.cancel
        L1_3 = L50_2
        L0_3(L1_3)
        L0_3 = nil
        L50_2 = L0_3
      end
      L0_3 = system
      L0_3 = L0_3.getTimer
      L0_3 = L0_3()
      L101_2 = L0_3
      L0_3 = L11_2
      L0_3.ninjaMark = true
    end
  end
  
  function L104_2(A0_3)
    local L1_3
    L1_3 = A5_2
    L1_3 = #L1_3
    if A0_3 > L1_3 then
      L1_3 = false
      return L1_3
    end
    L1_3 = A5_2
    L1_3 = L1_3[A0_3]
    L1_3 = L1_3.isDisconnected
    L1_3 = L1_3()
    if L1_3 then
      L1_3 = false
      return L1_3
    end
    L1_3 = true
    return L1_3
  end
  
  function L105_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L46_2
    if L0_3 ~= 59 then
      L0_3 = L46_2
      if L0_3 ~= 9 then
        goto lbl_89
      end
    end
    L0_3 = L47_2
    L0_3 = L0_3.startedClean
    if not L0_3 then
      L0_3 = L35_2
      L0_3 = L0_3.goalTime
      if L0_3 < 1 then
        L0_3 = A4_2
        if L0_3 then
          L0_3 = L51_2
          if L0_3 == nil then
            L0_3 = L8_1
            L1_3 = 1
            L2_3 = A5_2
            L2_3 = #L2_3
            L0_3 = L0_3(L1_3, L2_3)
            L38_2 = L0_3
            L0_3 = L38_2
            L1_3 = A0_2
            if L0_3 == L1_3 then
              L0_3 = L38_2
              L0_3 = L0_3 + 1
              L38_2 = L0_3
            end
          end
          L0_3 = 8
          L1_3 = L104_2
          L2_3 = L38_2
          L1_3 = L1_3(L2_3)
          while not L1_3 do
            L2_3 = L38_2
            L2_3 = L2_3 + 1
            L38_2 = L2_3
            L2_3 = L38_2
            L3_3 = A5_2
            L3_3 = #L3_3
            if L2_3 > L3_3 then
              L2_3 = 1
              L38_2 = L2_3
            end
            L2_3 = L104_2
            L3_3 = L38_2
            L2_3 = L2_3(L3_3)
            L1_3 = L2_3
            L0_3 = L0_3 - 1
            if L0_3 < 0 then
              break
            end
          end
          if L0_3 < 0 then
            L2_3 = A0_2
            L38_2 = L2_3
          end
          L2_3 = A5_2
          L3_3 = L38_2
          L2_3 = L2_3[L3_3]
          L2_3 = L2_3.addNinjaMark
          L2_3()
          L2_3 = L39_2
          if L2_3 then
            L2_3 = A5_2
            L3_3 = L39_2
            L2_3 = L2_3[L3_3]
            L2_3 = L2_3.removeNinjaMark
            L2_3()
          end
          L2_3 = L38_2
          L39_2 = L2_3
          L2_3 = L38_2
          L2_3 = L2_3 + 1
          L38_2 = L2_3
          L2_3 = timer
          L2_3 = L2_3.performWithDelay
          L3_3 = 501
          L4_3 = L105_2
          L5_3 = 1
          L2_3 = L2_3(L3_3, L4_3, L5_3)
          L51_2 = L2_3
      end
    end
    else
      ::lbl_89::
      
      function L0_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4
        L0_4 = L47_2
        L0_4 = L0_4.startedClean
        if not L0_4 then
          L0_4 = 1
          L1_4 = A5_2
          L1_4 = #L1_4
          L2_4 = 1
          for L3_4 = L0_4, L1_4, L2_4 do
            L4_4 = A5_2
            L4_4 = L4_4[L3_4]
            L4_4 = L4_4.removeNinjaMark
            L4_4()
          end
        end
      end
      
      L1_3 = timer
      L1_3 = L1_3.performWithDelay
      L2_3 = 501
      L3_3 = L0_3
      L4_3 = 1
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = nil
      L51_2 = L1_3
    end
  end
  
  function L106_2(A0_3)
    local L1_3, L2_3
    L46_2 = A0_3
    L1_3 = A4_2
    if L1_3 then
      L1_3 = L54_2
      L2_3 = L46_2
      L1_3(L2_3)
    end
  end
  
  function L107_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L11_2
    L0_3 = L0_3.x
    L44_2 = L0_3
    L0_3 = L6_1
    L0_3 = L0_3.selectRandomPowerUp
    L1_3 = L11_2
    L2_3 = L41_2
    L3_3 = L42_2
    L4_3 = A5_2
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
    L46_2 = L0_3
    L0_3 = A4_2
    if L0_3 then
      L0_3 = L54_2
      L1_3 = L46_2
      L0_3(L1_3)
      L0_3 = L46_2
      if L0_3 ~= 9 then
        L0_3 = L46_2
        if L0_3 ~= 59 then
          goto lbl_35
        end
      end
      L0_3 = L51_2
      if L0_3 then
        L0_3 = timer
        L0_3 = L0_3.cancel
        L1_3 = L51_2
        L0_3(L1_3)
        L0_3 = nil
        L51_2 = L0_3
      end
      L0_3 = L105_2
      L0_3()
    end
    ::lbl_35::
  end
  
  function L108_2()
    local L0_3, L1_3
    L0_3 = L47_2
    L0_3 = L0_3.playerDead
    return L0_3
  end
  
  function L109_2()
    local L0_3, L1_3
    L0_3 = L47_2
    L0_3 = L0_3.playerDead
    if L0_3 then
      L0_3 = 0
      return L0_3
    end
    L0_3 = L6_1
    L0_3 = L0_3.convertPowerUp
    L1_3 = L46_2
    L0_3 = L0_3(L1_3)
    L46_2 = L0_3
    L0_3 = L46_2
    return L0_3
  end
  
  function L110_2()
    local L0_3, L1_3
    L0_3 = L2_1
    L0_3 = L0_3.data
    L0_3 = L0_3.gameInfo
    L0_3 = L0_3.gameType
    if L0_3 == 0 then
      L0_3 = true
      return L0_3
    else
      L0_3 = L46_2
      if 0 < L0_3 then
        L0_3 = true
        return L0_3
      else
        L0_3 = false
        return L0_3
      end
    end
  end
  
  function L111_2()
    local L0_3, L1_3
    L0_3 = 0
    L46_2 = L0_3
    L0_3 = L73_2
    L0_3()
  end
  
  function L112_2()
    local L0_3, L1_3
    L0_3 = L47_2
    L0_3 = L0_3.spriteIsRunning
    if L0_3 then
      L0_3 = L47_2
      L0_3 = L0_3.startedClean
      if not L0_3 then
        L0_3 = L47_2
        L0_3.spriteIsRunning = false
      end
    end
  end
  
  function L113_2(A0_3)
    local L1_3
    if A0_3 == true then
      L1_3 = L47_2
      L1_3.tutorialPause = true
      L1_3 = L112_2
      L1_3()
    else
      L1_3 = L47_2
      L1_3.tutorialPause = false
    end
  end
  
  function L114_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L47_2
    L0_3 = L0_3.spriteIsInAir
    if not L0_3 then
      L0_3 = L47_2
      L0_3 = L0_3.startedClean
      if not L0_3 then
        L0_3 = L47_2
        L0_3.spriteIsInAir = true
        L0_3 = L47_2
        L0_3 = L0_3.rocketActive
        if not L0_3 then
          L0_3 = L35_2
          L0_3 = L0_3.goalTime
          if L0_3 < 0 then
            L0_3 = L24_2
            L0_3 = L0_3.setAnimation
            L1_3 = "jump_fall"
            L2_3 = true
            L3_3 = true
            L0_3(L1_3, L2_3, L3_3)
          end
        end
      end
    end
  end
  
  function L115_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L47_2
    L0_3 = L0_3.startedClean
    if not L0_3 then
      L0_3 = L35_2
      L0_3 = L0_3.goalTime
      if not (0 < L0_3) then
        goto lbl_10
      end
    end
    do return end
    ::lbl_10::
    L0_3 = L47_2
    L0_3 = L0_3.tutorialPause
    if L0_3 then
      return
    end
    L0_3 = L47_2
    L0_3 = L0_3.spriteIsInAir
    if L0_3 then
      L0_3 = L47_2
      L0_3.spriteIsInAir = false
      L0_3 = L47_2
      L0_3 = L0_3.rocketActive
      if not L0_3 then
        L0_3 = L24_2
        L0_3 = L0_3.setAnimation
        L1_3 = "run"
        L2_3 = true
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
      end
    end
  end
  
  function L116_2()
    local L0_3, L1_3
    L0_3 = L11_2
    if L0_3 then
      L0_3 = system
      L0_3 = L0_3.getTimer
      L0_3 = L0_3()
      L1_3 = L35_2
      L1_3 = L1_3.groundTime
      L1_3 = L1_3 + 300
      if L0_3 > L1_3 then
        L1_3 = L11_2
        L1_3.onGround = false
        L1_3 = L114_2
        L1_3()
      end
    end
  end
  
  function L117_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L35_2
    L1_3 = L1_3.goalTime
    if 0 < L1_3 then
      return
    end
    L1_3 = L47_2
    L1_3 = L1_3.tutorialPause
    if L1_3 then
      return
    end
    L1_3 = L47_2
    L1_3 = L1_3.spriteIsRunning
    if not L1_3 then
      L1_3 = L47_2
      L1_3 = L1_3.startedClean
      if not L1_3 then
        L1_3 = L47_2
        L1_3.spriteIsRunning = true
        L1_3 = L24_2
        L1_3 = L1_3.setAnimation
        L2_3 = "run"
        L3_3 = true
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
      end
    end
    L1_3 = L34_2
    L1_3 = L1_3.topSpeedX
    L1_3 = A0_3 / L1_3
    if L1_3 < 0.05 then
      L1_3 = 0.05
    end
  end
  
  function L118_2(A0_3)
    local L1_3
    if A0_3 then
      L1_3 = A0_3[1]
      L1_3.blendMode = "normal"
    end
  end
  
  function L119_2()
    local L0_3, L1_3
    L0_3 = L45_2
    L0_3 = L0_3 + 500
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()
    if L0_3 > L1_3 then
      L0_3 = false
      return L0_3
    else
      L0_3 = L11_2
      L0_3 = L0_3.x
      L1_3 = L44_2
      L1_3 = L1_3 + 100
      if L0_3 > L1_3 then
        L0_3 = L35_2
        L0_3.powerUpAtTimes = 1
        L0_3 = true
        return L0_3
      else
        L0_3 = L35_2
        L0_3 = L0_3.powerUpAtTimes
        if L0_3 < 2 then
          L0_3 = L35_2
          L1_3 = L35_2
          L1_3 = L1_3.powerUpAtTimes
          L1_3 = L1_3 + 1
          L0_3.powerUpAtTimes = L1_3
          L0_3 = true
          return L0_3
        end
      end
    end
    L0_3 = false
    return L0_3
  end
  
  function L120_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L4_3 = L47_2
    L4_3 = L4_3.startedClean
    if L4_3 then
      return
    end
    L4_3 = physics
    L4_3 = L4_3.rayCast
    L5_3 = A0_3
    L6_3 = A1_3
    L7_3 = A2_3
    L8_3 = A3_3
    L9_3 = "closest"
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
    if not L4_3 then
      L5_3 = false
      return L5_3
    end
    L5_3 = ipairs
    L6_3 = L4_3
    L5_3, L6_3, L7_3 = L5_3(L6_3)
    for L8_3, L9_3 in L5_3, L6_3, L7_3 do
      L10_3 = L9_3.object
      if L10_3 then
        L10_3 = L9_3.object
        L10_3 = L10_3.bounce
        if L10_3 then
          L10_3 = false
          return L10_3
        end
      end
      L10_3 = L9_3.object
      if L10_3 then
        L10_3 = L9_3.object
        L10_3 = L10_3.mapElement
        if L10_3 then
          return L9_3
        end
      end
    end
    L5_3 = false
    return L5_3
  end
  
  function L121_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L120_2
    L1_3 = L11_2
    L1_3 = L1_3.x
    L2_3 = L11_2
    L2_3 = L2_3.y
    L2_3 = L2_3 + 12
    L3_3 = L11_2
    L3_3 = L3_3.x
    L4_3 = L11_2
    L4_3 = L4_3.y
    L4_3 = L4_3 + 30
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
    if L0_3 then
      L1_3 = L62_2
      L1_3 = L1_3.playLandEffect
      L2_3 = L0_3.position
      L2_3 = L2_3.x
      L3_3 = L0_3.position
      L3_3 = L3_3.y
      L4_3 = L81_2
      L5_3 = L12_1
      L6_3 = L0_3.normal
      L6_3 = L6_3.y
      L7_3 = L0_3.normal
      L7_3 = L7_3.x
      L5_3, L6_3, L7_3 = L5_3(L6_3, L7_3)
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L4_3 = L4_3 + 90
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  
  function L122_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L11_2
    if L1_3 then
      L1_3 = L47_2
      L1_3 = L1_3.startedClean
      if not L1_3 then
        L1_3 = L11_2
        L1_3 = L1_3.setPlayerPositionInWorld
        L2_3 = A0_3.x
        L3_3 = A0_3.y
        L1_3(L2_3, L3_3)
        L1_3 = L11_2
        L1_3 = L1_3.setLinearVelocityOnPlayer
        L2_3 = 780
        L3_3 = -490
        L1_3(L2_3, L3_3)
      end
    end
  end
  
  L123_2 = 1
  L124_2 = 1
  
  function L125_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.getLinearVelocity
    L0_3, L1_3 = L0_3(L1_3)
    if L1_3 < -400 then
      L1_3 = L1_3 / 2
    end
    if 50 < L0_3 then
      L2_3 = L49_2
      L2_3 = #L2_3
      L3_3 = L40_2
      if L2_3 > L3_3 then
        L2_3 = table
        L2_3 = L2_3.remove
        L3_3 = L49_2
        L2_3(L3_3)
        L2_3 = table
        L2_3 = L2_3.remove
        L3_3 = L49_2
        L2_3(L3_3)
      end
      L2_3 = table
      L2_3 = L2_3.insert
      L3_3 = L49_2
      L4_3 = 1
      L5_3 = L0_3
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = table
      L2_3 = L2_3.insert
      L3_3 = L49_2
      L4_3 = 2
      L5_3 = L1_3
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = 0
      L3_3 = 0
      L4_3 = 1
      L5_3 = L49_2
      L5_3 = #L5_3
      L6_3 = 2
      for L7_3 = L4_3, L5_3, L6_3 do
        L8_3 = L49_2
        L8_3 = L8_3[L7_3]
        L2_3 = L2_3 + L8_3
        L8_3 = L49_2
        L9_3 = L7_3 + 1
        L8_3 = L8_3[L9_3]
        L3_3 = L3_3 + L8_3
      end
      L4_3 = L40_2
      L2_3 = L2_3 / L4_3
      L4_3 = L40_2
      L3_3 = L3_3 / L4_3
      L4_3 = L11_1
      L5_3 = L3_3 / L2_3
      L4_3 = L4_3(L5_3)
      L5_3 = L13_1
      L6_3 = L4_3
      L5_3 = L5_3(L6_3)
      if 35 < L5_3 then
        L5_3 = 34
      elseif L5_3 < -35 then
        L5_3 = -34
      end
      L6_3 = L11_2
      L6_3 = L6_3.onGround
      if not L6_3 and 10 < L5_3 then
        L5_3 = 9
      end
      L6_3 = L13_2
      L6_3.rotation = L5_3
    end
    L2_3 = L123_2
    if 5 < L2_3 then
      L2_3 = 0
      L123_2 = L2_3
      L2_3 = L92_2
      L2_3()
    end
    L2_3 = L124_2
    if 20 < L2_3 then
      L2_3 = 0
      L124_2 = L2_3
      L2_3 = L91_2
      L2_3()
    end
    L2_3 = L123_2
    L2_3 = L2_3 + 1
    L123_2 = L2_3
    L2_3 = L124_2
    L2_3 = L2_3 + 1
    L124_2 = L2_3
  end
  
  L126_2 = 0
  L127_2 = true
  
  function L128_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = L47_2
    L0_3 = L0_3.startedClean
    if not L0_3 then
      L0_3 = L47_2
      L0_3 = L0_3.disconnected
      if not L0_3 then
        L0_3 = L127_2
        if L0_3 then
          L0_3 = false
          L127_2 = L0_3
          L0_3 = system
          L0_3 = L0_3.getTimer
          L0_3 = L0_3()
          L126_2 = L0_3
          L0_3 = L11_2
          L0_3.bodyType = "dynamic"
          L0_3 = L24_2
          L0_3 = L0_3.setAnimation
          L1_3 = "run"
          L2_3 = true
          L3_3 = false
          L0_3(L1_3, L2_3, L3_3)
        end
        L0_3 = L11_2
        L1_3 = L0_3
        L0_3 = L0_3.getLinearVelocity
        L0_3, L1_3 = L0_3(L1_3)
        L2_3 = L43_2
        if L2_3 == 1 then
          L2_3 = system
          L2_3 = L2_3.getTimer
          L2_3 = L2_3()
          L126_2 = L2_3
        else
          L2_3 = 0
          L43_2 = L2_3
          L2_3 = L0_3
          L3_3 = L34_2
          L3_3 = L3_3.accelerateX
          L4_3 = system
          L4_3 = L4_3.getTimer
          L4_3 = L4_3()
          L5_3 = L126_2
          L5_3 = L4_3 - L5_3
          L5_3 = L5_3 * 0.01
          L126_2 = L4_3
          L3_3 = L3_3 * L5_3
          L6_3 = L34_2
          L6_3 = L6_3.topSpeedX
          L6_3 = L6_3 * 0.2
          if L0_3 < L6_3 then
            L3_3 = L3_3 * 4
          else
            L6_3 = L34_2
            L6_3 = L6_3.topSpeedX
            L6_3 = L6_3 * 0.5
            if L0_3 < L6_3 then
              L3_3 = L3_3 * 2
            end
          end
          L6_3 = L11_2
          L6_3 = L6_3.onGround
          if not L6_3 then
            L6_3 = L47_2
            L6_3 = L6_3.rocketActive
            if not L6_3 then
              goto lbl_73
            end
          end
          L0_3 = L0_3 + L3_3
          goto lbl_75
          ::lbl_73::
          L6_3 = L3_3 * 0.4
          L0_3 = L0_3 + L6_3
          ::lbl_75::
          L6_3 = L34_2
          L6_3 = L6_3.topSpeedX
          if L0_3 > L6_3 and L1_3 <= 20 then
            L6_3 = L34_2
            L6_3 = L6_3.topSpeedX
            L6_3 = L0_3 - L6_3
            L7_3 = L3_3 * 1.5
            if L6_3 < L7_3 then
              L6_3 = L34_2
              L0_3 = L6_3.topSpeedX
            else
              L0_3 = L0_3 * 0.9
            end
          else
            L6_3 = L34_2
            L6_3 = L6_3.topSpeedX
            L6_3 = L6_3 * 1.5
            if L0_3 > L6_3 and 0 < L1_3 then
              L6_3 = L34_2
              L6_3 = L6_3.topSpeedX
              L6_3 = L0_3 - L6_3
              L7_3 = L3_3 * 1.5
              if L6_3 < L7_3 then
                L6_3 = L34_2
                L6_3 = L6_3.topSpeedX
                L0_3 = L6_3 * 1.5
              else
                L0_3 = L0_3 * 0.9
              end
            end
          end
          L6_3 = L47_2
          L6_3 = L6_3.playerDead
          if L6_3 then
            L6_3 = L47_2
            L6_3 = L6_3.killedByLevel
            if not L6_3 then
              L0_3 = 0
              L6_3 = L89_2
              L7_3 = L0_3
              L8_3 = L1_3
              L6_3(L7_3, L8_3)
          end
          else
            L6_3 = L43_2
            if L6_3 == 0 then
              L6_3 = L37_2
              if L6_3 == 1 then
                L6_3 = L89_2
                L7_3 = L0_3
                L8_3 = L1_3
                L6_3(L7_3, L8_3)
            end
            else
              L6_3 = L43_2
              if L6_3 == 0 then
                L6_3 = L37_2
                if L6_3 == 3 then
                  L6_3 = L34_2
                  L6_3 = L6_3.topSpeedX
                  if L0_3 < L6_3 then
                    L6_3 = L89_2
                    L7_3 = L0_3
                    L8_3 = L1_3
                    L6_3(L7_3, L8_3)
                end
              end
              else
                L6_3 = L43_2
                if L6_3 == 0 then
                  L6_3 = L34_2
                  L6_3 = L6_3.topSpeedX
                  L6_3 = L6_3 * 0.4
                  if L2_3 < L6_3 then
                    L6_3 = L89_2
                    L7_3 = L0_3
                    L8_3 = L1_3
                    L6_3(L7_3, L8_3)
                end
                else
                  L6_3 = L47_2
                  L6_3 = L6_3.rocketActive
                  if L6_3 then
                    L6_3 = L34_2
                    L6_3 = L6_3.topSpeedX
                    if L0_3 > L6_3 then
                      L6_3 = L89_2
                      L7_3 = L0_3
                      L8_3 = L1_3
                      L6_3(L7_3, L8_3)
                    end
                  end
                end
              end
            end
          end
        end
        L2_3 = L117_2
        L3_3 = L0_3
        L2_3(L3_3)
        L2_3 = L24_2
        L2_3 = L2_3.updateSpeed
        L3_3 = L34_2
        L3_3 = L3_3.defaultTopSpeed
        L3_3 = L0_3 / L3_3
        L2_3(L3_3)
      end
    end
  end
  
  function L129_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L4_3 = L47_2
    L4_3 = L4_3.startedClean
    if L4_3 then
      return
    end
    L4_3 = physics
    L4_3 = L4_3.rayCast
    L5_3 = A0_3
    L6_3 = A1_3
    L7_3 = A2_3
    L8_3 = A3_3
    L9_3 = "closest"
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
    if not L4_3 then
      L5_3 = false
      return L5_3
    end
    L5_3 = ipairs
    L6_3 = L4_3
    L5_3, L6_3, L7_3 = L5_3(L6_3)
    for L8_3, L9_3 in L5_3, L6_3, L7_3 do
      L10_3 = L9_3.object
      if L10_3 then
        L10_3 = L9_3.object
        L10_3 = L10_3.mapElement
        if L10_3 then
          L10_3 = L9_3.object
          L10_3 = L10_3.canTileHaveDecal
          if L10_3 == true then
            return L9_3
          end
        end
      end
    end
    L5_3 = false
    return L5_3
  end
  
  function L130_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L47_2
    L0_3 = L0_3.startedClean
    if not L0_3 then
      L0_3 = L11_2
      if L0_3 ~= nil then
        goto lbl_11
      end
    end
    L0_3 = false
    do return L0_3 end
    goto lbl_105
    ::lbl_11::
    L0_3 = L2_1
    L0_3 = L0_3.onboarding
    L0_3 = L0_3.physicsPaused
    if L0_3 then
      L0_3 = false
      return L0_3
    else
      L0_3 = L47_2
      L0_3 = L0_3.playerDead
      if L0_3 then
        L0_3 = false
        return L0_3
      else
        L0_3 = L47_2
        L0_3 = L0_3.rocketActive
        if L0_3 then
          L0_3 = L47_2
          L0_3 = L0_3.rocketActiveHigh
          if L0_3 then
            L0_3 = false
            return L0_3
          else
            L0_3 = true
            return L0_3
          end
        else
          L0_3 = L11_2
          L0_3 = L0_3.onGround
          if L0_3 then
            L0_3 = true
            return L0_3
          else
            L0_3 = system
            L0_3 = L0_3.getTimer
            L0_3 = L0_3()
            L1_3 = L35_2
            L1_3 = L1_3.lastJumpTime
            L0_3 = L0_3 - L1_3
            if 75 < L0_3 then
              L0_3 = L120_2
              L1_3 = L11_2
              L1_3 = L1_3.x
              L2_3 = L11_2
              L2_3 = L2_3.y
              L2_3 = L2_3 + 12
              L3_3 = L11_2
              L3_3 = L3_3.x
              L4_3 = L11_2
              L4_3 = L4_3.y
              L4_3 = L4_3 + 30
              L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
              if L0_3 then
                L0_3 = true
                return L0_3
            end
            else
              L0_3 = L2_1
              L0_3 = L0_3.data
              L0_3 = L0_3.gameInfo
              L0_3 = L0_3.crazyModeActive
              if L0_3 then
                L0_3 = L33_2
                if not L0_3 then
                  L0_3 = L2_1
                  L0_3 = L0_3.data
                  L0_3 = L0_3.gameInfo
                  L0_3 = L0_3.crazyMode
                  if L0_3 == 2 then
                    L0_3 = system
                    L0_3 = L0_3.getTimer
                    L0_3 = L0_3()
                    L1_3 = L35_2
                    L1_3 = L1_3.lastJumpTime
                    L1_3 = L0_3 - L1_3
                    if 350 < L1_3 then
                      L1_3 = true
                      L33_2 = L1_3
                      L1_3 = true
                      return L1_3
                    else
                      L1_3 = false
                      return L1_3
                    end
                end
              end
              else
                L0_3 = false
                return L0_3
              end
            end
          end
        end
      end
    end
    ::lbl_105::
  end
  
  function L131_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = L120_2
    L1_3 = L11_2
    L1_3 = L1_3.x
    L2_3 = L11_2
    L2_3 = L2_3.y
    L2_3 = L2_3 + 12
    L3_3 = L11_2
    L3_3 = L3_3.x
    L4_3 = L11_2
    L4_3 = L4_3.y
    L4_3 = L4_3 + 30
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
    if L0_3 then
      L1_3 = L86_2
      L1_3, L2_3 = L1_3()
      L3_3 = L34_2
      L3_3 = L3_3.topSpeedX
      L3_3 = L1_3 / L3_3
      if L3_3 < 0 then
        L3_3 = 0
      elseif 1 < L3_3 then
        L3_3 = 1
      end
      L4_3 = 1 - L3_3
      L3_3 = L4_3 - 0.4
      L4_3 = L62_2
      L4_3 = L4_3.playJumpEffect
      L5_3 = L0_3.position
      L5_3 = L5_3.x
      L6_3 = L0_3.position
      L6_3 = L6_3.y
      L7_3 = L81_2
      L8_3 = L12_1
      L9_3 = L0_3.normal
      L9_3 = L9_3.y
      L10_3 = L0_3.normal
      L10_3 = L10_3.x
      L8_3, L9_3, L10_3 = L8_3(L9_3, L10_3)
      L7_3 = L7_3(L8_3, L9_3, L10_3)
      L7_3 = L7_3 + 90
      L8_3 = L3_3
      L4_3(L5_3, L6_3, L7_3, L8_3)
    end
  end
  
  function L132_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L35_2
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()
    L0_3.lastJumpTime = L1_3
    L0_3 = 1
    L43_2 = L0_3
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.getLinearVelocity
    L0_3, L1_3 = L0_3(L1_3)
    L2_3 = L74_2
    L2_3()
    L2_3 = 1
    L3_3 = L2_1
    L3_3 = L3_3.data
    L3_3 = L3_3.gameInfo
    L3_3 = L3_3.crazyModeActive
    if L3_3 then
      L3_3 = L2_1
      L3_3 = L3_3.data
      L3_3 = L3_3.gameInfo
      L3_3 = L3_3.crazyMode
      if L3_3 == 3 then
        L2_3 = 1.25
      end
    end
    L3_3 = -200 * L2_3
    L4_3 = L47_2
    L4_3 = L4_3.rocketActive
    if L4_3 then
      L3_3 = -200
      if L1_3 < -300 then
        L3_3 = -10 * L2_3
      end
      L4_3 = A4_2
      if L4_3 then
        L4_3 = L60_2
        L5_3 = "rocket_jump"
        L4_3(L5_3)
      end
    else
      L4_3 = L34_2
      L4_3 = L4_3.topSpeedX
      L4_3 = L4_3 * 0.2
      if L0_3 > L4_3 then
        L4_3 = 1
        L5_3 = L33_2
        if L5_3 then
          L4_3 = 1.2
        end
        L5_3 = L37_2
        if L5_3 == 4 then
          L5_3 = L0_3 * 0.8
          L0_3 = L5_3 * L4_3
        else
          L5_3 = L0_3 * 0.7
          L0_3 = L5_3 * L4_3
        end
      end
      L1_3 = 0
      L4_3 = A4_2
      if L4_3 then
        L4_3 = L60_2
        L5_3 = "jump"
        L4_3(L5_3)
      end
    end
    L4_3 = L89_2
    L5_3 = L0_3
    L6_3 = L1_3
    L4_3(L5_3, L6_3)
    L4_3 = L90_2
    L5_3 = 0
    L6_3 = L3_3
    L4_3(L5_3, L6_3)
    L4_3 = L11_2
    L4_3.onGround = false
    L4_3 = 1
    L37_2 = L4_3
    L4_3 = 2
    L43_2 = L4_3
    L4_3 = L24_2
    L4_3 = L4_3.setAnimation
    L5_3 = "jump_start"
    L6_3 = true
    L7_3 = true
    L4_3(L5_3, L6_3, L7_3)
    L4_3 = L47_2
    L4_3.spriteIsInAir = true
    L4_3 = L131_2
    L4_3()
  end
  
  function L133_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L47_2
    L0_3 = L0_3.startedClean
    if not L0_3 then
      L0_3 = L47_2
      L0_3 = L0_3.rocketActive
      if L0_3 then
        L0_3 = L96_2
        L0_3()
      end
      L0_3 = L11_2
      L1_3 = L0_3
      L0_3 = L0_3.getLinearVelocity
      L0_3, L1_3 = L0_3(L1_3)
      L2_3 = L11_2
      L2_3 = L2_3.onGround
      if not L2_3 then
        L2_3 = L120_2
        L3_3 = L11_2
        L3_3 = L3_3.x
        L4_3 = L11_2
        L4_3 = L4_3.y
        L4_3 = L4_3 + 12
        L5_3 = L11_2
        L5_3 = L5_3.x
        L6_3 = L11_2
        L6_3 = L6_3.y
        L6_3 = L6_3 + 30
        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
        if not L2_3 then
          goto lbl_68
        end
      end
      if L0_3 <= 60 then
        L2_3 = L112_2
        L2_3()
        L2_3 = L89_2
        L3_3 = 0
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
        L2_3 = L13_2
        L2_3.rotation = 0
        L2_3 = L24_2
        L2_3 = L2_3.setAnimation
        L3_3 = "idle"
        L4_3 = true
        L5_3 = true
        L2_3(L3_3, L4_3, L5_3)
      else
        L0_3 = L0_3 * 0.5
        L2_3 = L117_2
        L3_3 = L0_3
        L2_3(L3_3)
        L2_3 = L89_2
        L3_3 = L0_3
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
        L2_3 = L13_2
        L3_3 = L13_2
        L3_3 = L3_3.rotation
        L3_3 = L3_3 * 0.9
        L2_3.rotation = L3_3
        L2_3 = L24_2
        L2_3 = L2_3.setAnimation
        L3_3 = "slide"
        L4_3 = true
        L5_3 = true
        L2_3(L3_3, L4_3, L5_3)
      end
      ::lbl_68::
      L2_3 = L18_2
      if L2_3 then
        L2_3 = L18_2
        L2_3 = L2_3.inGoal
        L2_3()
      end
    end
    L0_3 = L74_2
    L0_3()
    L0_3 = L73_2
    L0_3()
  end
  
  function L134_2()
    local L0_3, L1_3
    L0_3 = L35_2
    L0_3 = L0_3.goalTime
    return L0_3
  end
  
  function L135_2(A0_3)
    local L1_3
    L1_3 = L35_2
    L1_3.goalTime = A0_3
  end
  
  function L136_2()
    local L0_3, L1_3
    L0_3 = A1_2
    return L0_3
  end
  
  function L137_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = display
    L0_3 = L0_3.newGroup
    L0_3 = L0_3()
    L2_3 = L0_3
    L1_3 = L0_3.insert
    L3_3 = L17_2
    L1_3(L2_3, L3_3)
    L2_3 = L0_3
    L1_3 = L0_3.insert
    L3_3 = L16_2
    L1_3(L2_3, L3_3)
    return L0_3
  end
  
  function L138_2(A0_3)
    local L1_3, L2_3
    A0_3 = A0_3 * 100
    L1_3 = math
    L1_3 = L1_3.floor
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    A0_3 = L1_3
    A0_3 = A0_3 * 0.01
    return A0_3
  end
  
  function L139_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = L11_2
    L2_3 = L1_3
    L1_3 = L1_3.getLinearVelocity
    L1_3, L2_3 = L1_3(L2_3)
    L3_3 = L11_2
    L3_3 = L3_3.x
    L4_3 = L11_2
    L4_3 = L4_3.y
    L5_3 = L138_2
    L6_3 = L1_3
    L5_3 = L5_3(L6_3)
    L1_3 = L5_3
    L5_3 = L138_2
    L6_3 = L2_3
    L5_3 = L5_3(L6_3)
    L2_3 = L5_3
    L5_3 = L138_2
    L6_3 = L3_3
    L5_3 = L5_3(L6_3)
    L3_3 = L5_3
    L5_3 = L138_2
    L6_3 = L4_3
    L5_3 = L5_3(L6_3)
    L4_3 = L5_3
    L5_3 = {}
    L5_3.x = L3_3
    L5_3.y = L4_3
    L5_3.vX = L1_3
    L5_3.vY = L2_3
    if A0_3 then
      L6_3 = L35_2
      L6_3 = L6_3.currentGameTime
      L5_3.s = L6_3
    end
    return L5_3
  end
  
  function L140_2()
    local L0_3, L1_3
    L0_3 = L139_2
    L1_3 = false
    L0_3 = L0_3(L1_3)
    return L0_3
  end
  
  function L141_2()
    local L0_3, L1_3
    L0_3 = L139_2
    L1_3 = true
    L0_3 = L0_3(L1_3)
    return L0_3
  end
  
  function L142_2()
    local L0_3, L1_3
    L0_3 = L35_2
    L0_3 = L0_3.currentGameTime
    return L0_3
  end
  
  function L143_2(A0_3)
    local L1_3
    L1_3 = L35_2
    L1_3.currentGameTime = A0_3
  end
  
  function L144_2()
    local L0_3, L1_3
    L0_3 = L14_2
    return L0_3
  end
  
  function L145_2()
    local L0_3, L1_3
    L0_3 = L15_2
    return L0_3
  end
  
  function L146_2()
    local L0_3, L1_3
    L0_3 = L12_2
    return L0_3
  end
  
  function L147_2()
    local L0_3, L1_3
    L0_3 = L53_2
    L0_3()
    L0_3 = L62_2
    L0_3 = L0_3.playPowerUpShieldStart
    L0_3()
  end
  
  function L148_2()
    local L0_3, L1_3
    L0_3 = L53_2
    L0_3()
    L0_3 = L95_2
    L0_3()
  end
  
  function L149_2()
    local L0_3, L1_3, L2_3
    L0_3 = L53_2
    L0_3()
    L0_3 = L34_2
    L1_3 = L34_2
    L1_3 = L1_3.topSpeedX
    L1_3 = L1_3 * 1.5
    L0_3.topSpeedX = L1_3
    L0_3 = L34_2
    L1_3 = L34_2
    L1_3 = L1_3.accelerateX
    L1_3 = L1_3 * 1.5
    L0_3.accelerateX = L1_3
    L0_3 = L90_2
    L1_3 = 300
    L2_3 = 0
    L0_3(L1_3, L2_3)
    L0_3 = L24_2
    L0_3 = L0_3.playBuffAnimation
    L1_3 = "speed_start"
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  
  function L150_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L53_2
    L0_3()
    L0_3 = L24_2
    L0_3 = L0_3.playBuffAnimation
    L1_3 = "rocket_start"
    L2_3 = false
    L0_3(L1_3, L2_3)
    
    function L0_3()
      local L0_4, L1_4, L2_4
      L0_4 = L24_2
      L0_4 = L0_4.playBuffAnimation
      L1_4 = "rocket_end"
      L2_4 = true
      L0_4(L1_4, L2_4)
    end
    
    L1_3 = timer
    L1_3 = L1_3.performWithDelay
    L2_3 = 3500
    L3_3 = L0_3
    L4_3 = 1
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L52_2 = L1_3
  end
  
  function L151_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L60_2
    L2_3 = "magnet_hit"
    L1_3(L2_3)
    L1_3 = nil
    L2_3 = A5_2
    L3_3 = A0_2
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.x
    L3_3 = A5_2
    L3_3 = L3_3[A0_3]
    L3_3 = L3_3.x
    if L2_3 < L3_3 then
      L2_3 = L90_2
      L3_3 = 100
      L4_3 = 0
      L2_3(L3_3, L4_3)
      L1_3 = false
    else
      L2_3 = L89_2
      L3_3 = 0
      L4_3 = 0
      L2_3(L3_3, L4_3)
      L2_3 = L90_2
      L3_3 = -400
      L4_3 = 0
      L2_3(L3_3, L4_3)
      L1_3 = true
    end
    L2_3 = L62_2
    L2_3 = L2_3.playMagnetEffect
    L3_3 = L1_3
    L2_3(L3_3)
  end
  
  function L152_2()
    local L0_3, L1_3, L2_3
    L0_3 = L89_2
    L1_3 = 0
    L2_3 = 0
    L0_3(L1_3, L2_3)
    L0_3 = L90_2
    L1_3 = -300
    L2_3 = -150
    L0_3(L1_3, L2_3)
  end
  
  function L53_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L47_2
    L0_3 = L0_3.shieldActive
    if L0_3 then
      L0_3 = L62_2
      L0_3 = L0_3.hidePowerUpShield
      L0_3()
    end
    L0_3 = L47_2
    L0_3 = L0_3.armorActive
    if L0_3 then
      L0_3 = L94_2
      L0_3()
    end
    L0_3 = L47_2
    L0_3 = L0_3.rocketActive
    if L0_3 then
      L0_3 = L96_2
      L0_3()
    end
    L0_3 = L47_2
    L0_3 = L0_3.speedActive
    if L0_3 then
      L0_3 = L93_2
      L1_3 = false
      L0_3(L1_3)
    end
    L0_3 = L24_2
    L0_3 = L0_3.setAnimation
    L1_3 = "run"
    L2_3 = true
    L3_3 = false
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L153_2()
    local L0_3, L1_3
    L0_3 = L62_2
    L0_3 = L0_3.playLightningStrike
    L0_3()
  end
  
  function L154_2()
    local L0_3, L1_3
    L0_3 = L32_2
    L0_3 = L0_3.bladeImage
    L0_3.alpha = 0
  end
  
  function L155_2()
    local L0_3, L1_3, L2_3
    L0_3 = L32_2
    L0_3 = L0_3.bladeImage
    L0_3.alpha = 1
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L32_2
    L1_3 = L1_3.bladeImage
    L2_3 = {}
    L2_3.time = 200
    L2_3.rotation = 355
    L0_3(L1_3, L2_3)
  end
  
  function L156_2()
    local L0_3, L1_3
    L0_3 = L32_2
    L0_3 = L0_3.trapImage
    L0_3.alpha = 0
  end
  
  function L157_2()
    local L0_3, L1_3
    L0_3 = L32_2
    L0_3 = L0_3.trapImage
    L0_3.alpha = 1
  end
  
  function L158_2()
    local L0_3, L1_3
    L0_3 = L32_2
    L0_3 = L0_3.bounceTrapImage
    L0_3.alpha = 0
  end
  
  function L159_2()
    local L0_3, L1_3
    L0_3 = L32_2
    L0_3 = L0_3.bounceTrapImage
    L0_3.alpha = 1
  end
  
  function L160_2()
    local L0_3, L1_3, L2_3
    L0_3 = L24_2
    L0_3 = L0_3.playUseAnimation
    L1_3 = "mark_active"
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  
  function L161_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L24_2
    L0_3 = L0_3.playUseAnimation
    L1_3 = "magnet_start"
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = L61_2
    L1_3 = A0_2
    L2_3 = 7
    L3_3 = A0_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  function L162_2()
    local L0_3, L1_3, L2_3
    L0_3 = A4_2
    if L0_3 then
      L0_3 = true
      return L0_3
    end
    L0_3 = L2_1
    L0_3 = L0_3.mainPlayer
    if L0_3 then
      L1_3 = L11_2
      L1_3 = L1_3.x
      L2_3 = L0_3.x
      L1_3 = L1_3 - L2_3
      if -300 <= L1_3 then
        L2_3 = true
        return L2_3
      end
    end
    L1_3 = false
    return L1_3
  end
  
  function L163_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L47_2
    L0_3 = L0_3.startedClean
    if L0_3 then
      return
    end
    L0_3 = L129_2
    L1_3 = L11_2
    L1_3 = L1_3.x
    L2_3 = L11_2
    L2_3 = L2_3.y
    L2_3 = L2_3 + 12
    L3_3 = L11_2
    L3_3 = L3_3.x
    L3_3 = L3_3 - 30
    L4_3 = L11_2
    L4_3 = L4_3.y
    L4_3 = L4_3 + 50
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
    L1_3 = L129_2
    L2_3 = L11_2
    L2_3 = L2_3.x
    L3_3 = L11_2
    L3_3 = L3_3.y
    L3_3 = L3_3 + 12
    L4_3 = L11_2
    L4_3 = L4_3.x
    L5_3 = L11_2
    L5_3 = L5_3.y
    L5_3 = L5_3 + 50
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    L2_3 = L129_2
    L3_3 = L11_2
    L3_3 = L3_3.x
    L4_3 = L11_2
    L4_3 = L4_3.y
    L4_3 = L4_3 + 12
    L5_3 = L11_2
    L5_3 = L5_3.x
    L5_3 = L5_3 + 30
    L6_3 = L11_2
    L6_3 = L6_3.y
    L6_3 = L6_3 + 50
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    if L0_3 and L1_3 and L2_3 then
      L3_3 = ""
      L4_3 = L8_1
      L4_3 = L4_3()
      if L4_3 < 0.5 then
        L3_3 = "2"
      end
      L4_3 = display
      L4_3 = L4_3.newImageRect
      L5_3 = "images/game/powerups/decal_blood"
      L6_3 = L3_3
      L7_3 = ".png"
      L5_3 = L5_3 .. L6_3 .. L7_3
      L6_3 = 160
      L7_3 = 100
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L5_3 = L81_2
      L6_3 = L12_1
      L7_3 = L1_3.normal
      L7_3 = L7_3.y
      L8_3 = L1_3.normal
      L8_3 = L8_3.x
      L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3, L8_3)
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
      L5_3 = L5_3 + 90
      L7_3 = L4_3
      L6_3 = L4_3.scale
      L8_3 = 0.35
      L9_3 = 0.35
      L6_3(L7_3, L8_3, L9_3)
      L4_3.yScale = 0.01
      L6_3 = transition
      L6_3 = L6_3.to
      L7_3 = L4_3
      L8_3 = {}
      L8_3.time = 85
      L9_3 = L8_1
      L9_3 = L9_3()
      L9_3 = L9_3 * 0.05
      L9_3 = 0.3 + L9_3
      L8_3.yScale = L9_3
      L6_3(L7_3, L8_3)
      L4_3.rotation = L5_3
      L4_3.anchorX = 0.5
      L4_3.anchorY = 0
      L6_3 = L8_1
      L6_3 = L6_3()
      if L6_3 < 0.5 then
        L4_3.xScale = -0.35
      end
      L6_3 = L1_3.position
      L6_3 = L6_3.x
      L4_3.x = L6_3
      L6_3 = L1_3.position
      L6_3 = L6_3.y
      L4_3.y = L6_3
      L6_3 = L14_2
      L7_3 = L6_3
      L6_3 = L6_3.insert
      L8_3 = L4_3
      L6_3(L7_3, L8_3)
    end
  end
  
  function L164_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = L129_2
    L1_3 = L11_2
    L1_3 = L1_3.x
    L2_3 = L11_2
    L2_3 = L2_3.y
    L2_3 = L2_3 + 12
    L3_3 = L11_2
    L3_3 = L3_3.x
    L3_3 = L3_3 - 30
    L4_3 = L11_2
    L4_3 = L4_3.y
    L4_3 = L4_3 + 50
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
    L1_3 = L129_2
    L2_3 = L11_2
    L2_3 = L2_3.x
    L3_3 = L11_2
    L3_3 = L3_3.y
    L3_3 = L3_3 + 12
    L4_3 = L11_2
    L4_3 = L4_3.x
    L5_3 = L11_2
    L5_3 = L5_3.y
    L5_3 = L5_3 + 50
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    L2_3 = L129_2
    L3_3 = L11_2
    L3_3 = L3_3.x
    L4_3 = L11_2
    L4_3 = L4_3.y
    L4_3 = L4_3 + 12
    L5_3 = L11_2
    L5_3 = L5_3.x
    L5_3 = L5_3 + 30
    L6_3 = L11_2
    L6_3 = L6_3.y
    L6_3 = L6_3 + 50
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    if L0_3 and L1_3 and L2_3 then
      L3_3 = display
      L3_3 = L3_3.newImageRect
      L4_3 = "images/game/powerups/decal_burnt.png"
      L5_3 = 160
      L6_3 = 100
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L4_3 = L81_2
      L5_3 = L12_1
      L6_3 = L1_3.normal
      L6_3 = L6_3.y
      L7_3 = L1_3.normal
      L7_3 = L7_3.x
      L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3, L7_3)
      L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = L4_3 + 90
      L6_3 = L3_3
      L5_3 = L3_3.scale
      L7_3 = 0.35
      L8_3 = 0.35
      L5_3(L6_3, L7_3, L8_3)
      L3_3.yScale = 0.01
      L5_3 = transition
      L5_3 = L5_3.to
      L6_3 = L3_3
      L7_3 = {}
      L7_3.time = 85
      L7_3.yScale = 0.35
      L5_3(L6_3, L7_3)
      L3_3.rotation = L4_3
      L3_3.anchorX = 0.5
      L3_3.anchorY = 0
      L5_3 = L1_3.position
      L5_3 = L5_3.x
      L3_3.x = L5_3
      L5_3 = L1_3.position
      L5_3 = L5_3.y
      L3_3.y = L5_3
      L5_3 = L14_2
      L6_3 = L5_3
      L5_3 = L5_3.insert
      L7_3 = L3_3
      L5_3(L6_3, L7_3)
    end
  end
  
  function L165_2()
    local L0_3, L1_3
    L0_3 = L47_2
    L0_3 = L0_3.playerDead
    if not L0_3 then
      L0_3 = L11_2
      if L0_3 then
        L0_3 = L34_2
        L1_3 = L34_2
        L1_3 = L1_3.tempSpeedX
        L0_3.topSpeedX = L1_3
        L0_3 = L11_2
        L0_3.alpha = 1
      end
    end
  end
  
  function L166_2()
    local L0_3, L1_3
    L0_3 = L11_2
    if L0_3 then
      L0_3 = L11_2
      L0_3.alpha = 0
    end
  end
  
  function L167_2()
    local L0_3, L1_3
    L0_3 = L47_2
    L0_3.playerDead = false
    L0_3 = L84_2
    L0_3()
    L0_3 = L165_2
    L0_3()
    L0_3 = L47_2
    L0_3 = L0_3.speedActive
    if L0_3 then
      L0_3 = L93_2
      L1_3 = false
      L0_3(L1_3)
    end
  end
  
  function L168_2(A0_3)
    local L1_3
    L61_2 = A0_3
  end
  
  function L169_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = 5000
    L1_3 = 1
    L2_3 = A5_2
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = A0_2
      if L4_3 ~= L5_3 then
        L5_3 = L11_2
        L5_3 = L5_3.x
        L6_3 = A5_2
        L6_3 = L6_3[L4_3]
        L6_3 = L6_3.x
        L5_3 = L5_3 - L6_3
        if L0_3 > L5_3 then
          L5_3 = L11_2
          L5_3 = L5_3.x
          L6_3 = A5_2
          L6_3 = L6_3[L4_3]
          L6_3 = L6_3.x
          L0_3 = L5_3 - L6_3
        end
      end
      L5_3 = A5_2
      L5_3 = L5_3[L4_3]
      L5_3 = L5_3.x
      L5_3 = L5_3 + 2000
      L6_3 = L11_2
      L6_3 = L6_3.x
      if L5_3 > L6_3 then
        L5_3 = A0_2
        if L4_3 ~= L5_3 then
          L5_3 = 0
          return L5_3
        end
      end
    end
    if L0_3 < 2500 then
      L1_3 = 1
      return L1_3
    end
    L1_3 = 2
    return L1_3
  end
  
  function L170_2()
    local L0_3, L1_3
    L0_3 = L11_2
    if L0_3 then
      L0_3 = L11_2
      L0_3.bodyType = "static"
    end
  end
  
  function L171_2()
    local L0_3, L1_3, L2_3
    L0_3 = L11_2
    if L0_3 then
      L0_3 = L89_2
      L1_3 = 0
      L2_3 = 0
      L0_3(L1_3, L2_3)
    end
  end
  
  function L172_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L11_2
    if L0_3 then
      L0_3 = L47_2
      L0_3 = L0_3.startedClean
      if not L0_3 then
        L0_3 = pcall
        L1_3 = L171_2
        L0_3(L1_3)
        L0_3 = L47_2
        L0_3.disconnected = true
        L0_3 = L47_2
        L0_3.playerInvulnerable = true
        L0_3 = L11_2
        L0_3.alpha = 0.5
        L0_3 = L63_2
        L0_3.alpha = 1
        L0_3 = timer
        L0_3 = L0_3.performWithDelay
        L1_3 = 10
        L2_3 = L170_2
        L3_3 = 1
        L0_3(L1_3, L2_3, L3_3)
      end
    end
  end
  
  function L173_2()
    local L0_3, L1_3
    L0_3 = L47_2
    L0_3 = L0_3.disconnected
    return L0_3
  end
  
  function L174_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    if A0_3 == 1 then
      L5_3 = L60_2
      L6_3 = "blade_hit"
      L5_3(L6_3)
    elseif A0_3 == 2 then
      L5_3 = L60_2
      L6_3 = "trap_hit"
      L5_3(L6_3)
    elseif A0_3 == 3 then
      L5_3 = L153_2
      L5_3()
      L5_3 = L60_2
      L6_3 = "lightning_hit"
      L5_3(L6_3)
    elseif A0_3 == 9 then
      L5_3 = L60_2
      L6_3 = "hunter_hit"
      L5_3(L6_3)
    elseif A0_3 == 10 then
      L5_3 = L60_2
      L6_3 = "rocket_hit"
      L5_3(L6_3)
    end
    if A1_3 == 1 then
      if not A4_3 then
        L5_3 = L61_2
        L6_3 = A2_3
        L7_3 = A0_3
        L8_3 = A0_2
        L5_3(L6_3, L7_3, L8_3)
      end
      L5_3 = 1000
      if A3_3 then
        L5_3 = A3_3
      else
        L6_3 = L41_2
        if L6_3 == 1 then
          L6_3 = L169_2
          L6_3 = L6_3()
          if L6_3 == 1 then
            L5_3 = 1500
          elseif L6_3 == 2 then
            L5_3 = 2000
          end
        end
      end
      L6_3 = L47_2
      L6_3.playerDead = true
      L6_3 = L47_2
      L6_3.playerInvulnerable = true
      L6_3 = L18_2
      if L6_3 then
        L6_3 = L18_2
        L6_3 = L6_3.botDied
        L6_3()
      end
      L6_3 = true
      L7_3 = L86_2
      L7_3, L8_3 = L7_3()
      
      function L9_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4
        L1_4 = L62_2
        L1_4 = L1_4.showGhostDeath
        L2_4 = L7_3
        L3_4 = L8_3
        L4_4 = A0_4
        L1_4(L2_4, L3_4, L4_4)
        L1_4 = L62_2
        L1_4 = L1_4.showScreenDeathEffect
        L2_4 = A0_4
        L1_4(L2_4)
        L1_4 = L48_2
        L1_4 = L1_4.dropTombstone
        L2_4 = A0_4
        L1_4(L2_4)
      end
      
      L10_3 = nil
      if A0_3 == 1 or A0_3 == 98 or A0_3 == 97 then
        L11_3 = L2_1
        L11_3 = L11_3.database
        L11_3 = L11_3.getViolence
        L11_3 = L11_3()
        if L11_3 == 1 then
          L11_3 = L162_2
          L11_3 = L11_3()
          if L11_3 then
            L11_3 = timer
            L11_3 = L11_3.performWithDelay
            L12_3 = 10
            
            function L13_3()
              local L0_4, L1_4, L2_4
              L0_4 = L48_2
              L0_4 = L0_4.dropSawbladeGibs
              L1_4 = L7_3
              L1_4 = L1_4 * 0.5
              L2_4 = L8_3
              L2_4 = L2_4 * 0.5
              L0_4(L1_4, L2_4)
            end
            
            L14_3 = 1
            L11_3(L12_3, L13_3, L14_3)
          end
        end
        L11_3 = L62_2
        L11_3 = L11_3.showDeathCloudAnimation
        L12_3 = L7_3
        L13_3 = L8_3
        L14_3 = 100
        L11_3(L12_3, L13_3, L14_3)
        L11_3 = timer
        L11_3 = L11_3.performWithDelay
        L12_3 = L5_3
        L13_3 = L167_2
        L14_3 = 1
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        L19_2 = L11_3
      elseif A0_3 == 2 then
        L11_3 = L2_1
        L11_3 = L11_3.database
        L11_3 = L11_3.getViolence
        L11_3 = L11_3()
        if L11_3 == 1 then
          L11_3 = L162_2
          L11_3 = L11_3()
          if L11_3 then
            L11_3 = timer
            L11_3 = L11_3.performWithDelay
            L12_3 = 10
            
            function L13_3()
              local L0_4, L1_4, L2_4
              L0_4 = L48_2
              L0_4 = L0_4.dropSawbladeGibs
              L1_4 = L7_3
              L1_4 = L1_4 * 0.5
              L2_4 = L8_3
              L2_4 = L2_4 * 0.5
              L0_4(L1_4, L2_4)
            end
            
            L14_3 = 1
            L11_3(L12_3, L13_3, L14_3)
          end
        end
        L11_3 = L62_2
        L11_3 = L11_3.showDeathCloudAnimation
        L12_3 = L7_3
        L13_3 = L8_3
        L14_3 = 100
        L11_3(L12_3, L13_3, L14_3)
        L11_3 = timer
        L11_3 = L11_3.performWithDelay
        L12_3 = L5_3
        L13_3 = L167_2
        L14_3 = 1
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        L19_2 = L11_3
      elseif A0_3 == 3 then
        L11_3 = L62_2
        L11_3 = L11_3.playLightningEffect
        L11_3()
        L11_3 = L164_2
        L11_3()
        L11_3 = timer
        L11_3 = L11_3.performWithDelay
        L12_3 = 600
        L13_3 = L166_2
        L14_3 = 1
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        L20_2 = L11_3
        L11_3 = timer
        L11_3 = L11_3.performWithDelay
        L12_3 = 600
        
        function L13_3()
          local L0_4, L1_4, L2_4
          L0_4 = L48_2
          L0_4 = L0_4.dropSkull
          L1_4 = 0
          L2_4 = 0
          L0_4(L1_4, L2_4)
        end
        
        L14_3 = 1
        L11_3(L12_3, L13_3, L14_3)
        L11_3 = timer
        L11_3 = L11_3.performWithDelay
        L12_3 = 1500
        L13_3 = L48_2
        L13_3 = L13_3.readySkull
        L14_3 = 1
        L11_3(L12_3, L13_3, L14_3)
        L11_3 = timer
        L11_3 = L11_3.performWithDelay
        L12_3 = L5_3
        L13_3 = L167_2
        L14_3 = 1
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        L19_2 = L11_3
        L10_3 = 200
      elseif A0_3 == 9 then
        L6_3 = false
        L11_3 = L62_2
        L11_3 = L11_3.createCannonBall
        L11_3()
        L11_3 = L2_1
        L11_3 = L11_3.database
        L11_3 = L11_3.getViolence
        L11_3 = L11_3()
        if L11_3 == 1 then
          L11_3 = L162_2
          L11_3 = L11_3()
          if L11_3 then
            L11_3 = timer
            L11_3 = L11_3.performWithDelay
            L12_3 = 10
            
            function L13_3()
              local L0_4, L1_4, L2_4
              L0_4 = L48_2
              L0_4 = L0_4.dropSawbladeGibs
              L1_4 = L7_3
              L1_4 = L1_4 * 0.5
              L2_4 = L8_3
              L2_4 = L2_4 * 0.5
              L0_4(L1_4, L2_4)
            end
            
            L14_3 = 1
            L11_3(L12_3, L13_3, L14_3)
          end
        end
        L11_3 = L62_2
        L11_3 = L11_3.showDeathCloudAnimation
        L12_3 = L7_3
        L13_3 = L8_3
        L14_3 = 150
        L11_3(L12_3, L13_3, L14_3)
        L11_3 = timer
        L11_3 = L11_3.performWithDelay
        L12_3 = 180
        L13_3 = L82_2
        L14_3 = 1
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        L20_2 = L11_3
        L11_3 = timer
        L11_3 = L11_3.performWithDelay
        L12_3 = L5_3
        L13_3 = L167_2
        L14_3 = 1
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        L19_2 = L11_3
      elseif A0_3 == 10 then
        L11_3 = A0_2
        if A2_3 == L11_3 then
          L11_3 = L62_2
          L11_3 = L11_3.playRocketDeathEffect
          L11_3()
        end
        L11_3 = L2_1
        L11_3 = L11_3.database
        L11_3 = L11_3.getViolence
        L11_3 = L11_3()
        if L11_3 == 1 then
          L11_3 = L162_2
          L11_3 = L11_3()
          if L11_3 then
            L11_3 = timer
            L11_3 = L11_3.performWithDelay
            L12_3 = 50
            
            function L13_3()
              local L0_4, L1_4, L2_4
              L0_4 = L48_2
              L0_4 = L0_4.dropSawbladeGibs
              L1_4 = L7_3
              L1_4 = L1_4 * 0.5
              L2_4 = L8_3
              L2_4 = L2_4 * 0.5
              L0_4(L1_4, L2_4)
            end
            
            L14_3 = 1
            L11_3(L12_3, L13_3, L14_3)
          end
        end
        L11_3 = timer
        L11_3 = L11_3.performWithDelay
        L12_3 = L5_3
        L13_3 = L167_2
        L14_3 = 1
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        L19_2 = L11_3
      end
      L11_3 = L9_3
      L12_3 = L10_3
      L11_3(L12_3)
      if L6_3 then
        L11_3 = L82_2
        L11_3()
      end
      L11_3 = L53_2
      L11_3()
      if A0_3 ~= 98 then
        L11_3 = L89_2
        L12_3 = 0
        L13_3 = 0
        L11_3(L12_3, L13_3)
      end
      L11_3 = L34_2
      L11_3 = L11_3.topSpeedX
      if 0 < L11_3 then
        L11_3 = L34_2
        L12_3 = L34_2
        L12_3 = L12_3.topSpeedX
        L11_3.tempSpeedX = L12_3
        L11_3 = L34_2
        L11_3.topSpeedX = 0
      end
    elseif A1_3 == 2 then
      L5_3 = L94_2
      L5_3()
    elseif A1_3 == 3 then
    elseif A1_3 == 4 then
      if A0_3 == 7 then
        L5_3 = L151_2
        L6_3 = A2_3
        L5_3(L6_3)
      elseif A0_3 == 8 then
        L5_3 = L60_2
        L6_3 = "bounce_hit"
        L5_3(L6_3)
        L5_3 = L152_2
        L6_3 = A2_3
        L5_3(L6_3)
        L5_3 = L61_2
        L6_3 = A2_3
        L7_3 = A0_3
        L8_3 = A0_2
        L5_3(L6_3, L7_3, L8_3)
      end
    end
  end
  
  function L175_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = L24_2
    L3_3 = L3_3.setAnimation
    L4_3 = A0_3
    L5_3 = A1_3
    L6_3 = A2_3
    L3_3(L4_3, L5_3, L6_3)
  end
  
  function L176_2()
    local L0_3, L1_3
    L0_3 = L24_2
    L0_3 = L0_3.resetBones
    L0_3()
  end
  
  function L177_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L3_3 = L47_2
    L3_3 = L3_3.startedClean
    if L3_3 then
    else
      L3_3 = L35_2
      L3_3 = L3_3.goalTime
      if L3_3 == -1 then
        L3_3 = L47_2
        L3_3 = L3_3.playerInvulnerable
        if not L3_3 then
          L3_3 = 0
          L4_3 = {}
          L5_3 = nil
          if A1_3 == 98 or A1_3 == 97 then
            L6_3 = L47_2
            L6_3.killedByLevel = true
            L3_3 = 1
            L5_3 = 500
            if A1_3 == 98 then
              L6_3 = L11_2
              L7_3 = L6_3
              L6_3 = L6_3.getLinearVelocity
              L6_3, L7_3 = L6_3(L7_3)
              L8_3 = L9_1
              L9_3 = L7_3
              L8_3 = L8_3(L9_3)
              if 100 < L8_3 then
                L6_3 = L6_3 * 0.7
              end
              L8_3 = L9_1
              L9_3 = L7_3 * 1.3
              L8_3 = L8_3(L9_3)
              L8_3 = -L8_3
              if L8_3 < -700 then
                L8_3 = -700
              end
              if -500 < L8_3 then
                L8_3 = -500
              end
              L9_3 = L11_2
              L9_3.onGround = false
              L9_3 = L89_2
              L10_3 = L6_3
              L11_3 = L8_3
              L9_3(L10_3, L11_3)
              L9_3 = 1
              L37_2 = L9_3
              L9_3 = 2
              L43_2 = L9_3
            end
          end
          L6_3 = L47_2
          L6_3 = L6_3.shieldActive
          if L6_3 then
            L3_3 = 3
            L6_3 = L62_2
            L6_3 = L6_3.playShieldAbsorb
            L6_3()
          else
            L6_3 = L47_2
            L6_3 = L6_3.armorActive
            if L6_3 then
              L3_3 = 2
            elseif A1_3 == 7 or A1_3 == 8 then
              L3_3 = 4
            else
              L3_3 = 1
            end
          end
          L6_3 = L174_2
          L7_3 = A1_3
          L8_3 = L3_3
          L9_3 = A0_3
          L10_3 = L5_3
          L11_3 = A2_3
          L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
          L6_3 = {}
          L6_3.k = A0_3
          L6_3.p = A1_3
          L6_3.h = L3_3
          L4_3 = L6_3
          L6_3 = L2_1
          L6_3 = L6_3.data
          L6_3 = L6_3.gameInfo
          L6_3 = L6_3.gameType
          if 0 < L6_3 then
            L6_3 = A4_2
            if L6_3 then
              L6_3 = L2_1
              L6_3 = L6_3.tcpClient
              L6_3 = L6_3.sendPlayerHitByPowerUp
              L7_3 = A0_3
              L8_3 = A1_3
              L9_3 = 0
              L10_3 = L3_3
              L11_3 = 0
              L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
            end
          end
          return L3_3
        end
      end
    end
  end
  
  function L178_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A4_2
    if not L0_3 then
      L0_3 = L2_1
      L0_3 = L0_3.data
      L0_3 = L0_3.gameInfo
      L0_3 = L0_3.gameType
      if L0_3 ~= 0 then
        goto lbl_11
      end
    end
    do return end
    ::lbl_11::
    L0_3 = L47_2
    L0_3 = L0_3.startedClean
    if not L0_3 then
      L0_3 = L12_2
      L1_3 = L0_3
      L0_3 = L0_3.getLinearVelocity
      L0_3, L1_3 = L0_3(L1_3)
      L2_3 = L89_2
      L3_3 = L0_3
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
      L2_3 = L11_2
      L3_3 = L12_2
      L3_3 = L3_3.x
      L2_3.x = L3_3
      L2_3 = L11_2
      L3_3 = L12_2
      L3_3 = L3_3.y
      L2_3.y = L3_3
    end
  end
  
  function L179_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = A4_2
    if L0_3 then
      return
    end
    L0_3 = L35_2
    L0_3 = L0_3.goalTime
    if not (0 < L0_3) then
      L0_3 = L2_1
      L0_3 = L0_3.data
      L0_3 = L0_3.gameInfo
      L0_3 = L0_3.gameType
      if L0_3 ~= 0 then
        goto lbl_16
      end
    end
    do return end
    ::lbl_16::
    L0_3 = L11_2
    L0_3 = L0_3.x
    L1_3 = L11_2
    L1_3 = L1_3.y
    L2_3 = L12_2
    L2_3 = L2_3.x
    L3_3 = L12_2
    L3_3 = L3_3.y
    L4_3 = L0_3 - L2_3
    L5_3 = L1_3 - L3_3
    L6_3 = 20
    L7_3 = L47_2
    L7_3 = L7_3.playerDead
    if L7_3 then
      L7_3 = L9_1
      L8_3 = L4_3
      L7_3 = L7_3(L8_3)
      if L7_3 < 2 then
        L0_3 = L2_3
      elseif L4_3 < 0 then
        L0_3 = L0_3 - 1
      else
        L0_3 = L0_3 + 1
      end
      L7_3 = L11_2
      L7_3.x = L0_3
      return
    end
    L7_3 = L9_1
    L8_3 = L5_3
    L7_3 = L7_3(L8_3)
    if not (50 < L7_3) then
      L7_3 = L9_1
      L8_3 = L4_3
      L7_3 = L7_3(L8_3)
      if not (100 < L7_3) then
        goto lbl_59
      end
    end
    L7_3 = L178_2
    L7_3()
    goto lbl_84
    ::lbl_59::
    L7_3 = L2_3 + L6_3
    if L0_3 < L7_3 then
      L7_3 = L11_2
      L8_3 = L7_3
      L7_3 = L7_3.applyForce
      L9_3 = 3
      L10_3 = 0
      L11_3 = L11_2
      L11_3 = L11_3.x
      L12_3 = L11_2
      L12_3 = L12_3.y
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
    else
      L7_3 = L2_3 + L6_3
      if L0_3 > L7_3 then
        L7_3 = L11_2
        L8_3 = L7_3
        L7_3 = L7_3.applyForce
        L9_3 = -3
        L10_3 = 0
        L11_3 = L11_2
        L11_3 = L11_3.x
        L12_3 = L11_2
        L12_3 = L12_3.y
        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
      end
    end
    ::lbl_84::
  end
  
  function L180_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3
    L4_3 = L47_2
    L4_3 = L4_3.startedClean
    if not L4_3 then
      L4_3 = L12_2
      L5_3 = L4_3
      L4_3 = L4_3.setLinearVelocity
      L6_3 = A2_3
      L7_3 = A3_3
      L4_3(L5_3, L6_3, L7_3)
      L4_3 = L12_2
      L4_3.x = A0_3
      L4_3 = L12_2
      L4_3.y = A1_3
      L4_3 = L11_2
      L5_3 = L4_3
      L4_3 = L4_3.setLinearVelocity
      L6_3 = A2_3
      L7_3 = A3_3
      L4_3(L5_3, L6_3, L7_3)
    end
  end
  
  function L181_2(A0_3)
    local L1_3
    L59_2 = A0_3
  end
  
  function L60_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L59_2
    L2_3 = A0_3
    L3_3 = L56_2
    L4_3 = L57_2
    L3_3 = L3_3[L4_3]
    L1_3(L2_3, L3_3)
    L1_3 = L57_2
    L1_3 = L1_3 + 1
    L57_2 = L1_3
    L1_3 = L57_2
    L2_3 = L55_2
    if L1_3 > L2_3 then
      L1_3 = 1
      L57_2 = L1_3
    end
  end
  
  function L182_2()
    local L0_3, L1_3
    L0_3 = L80_2
    L0_3()
    L0_3 = L62_2
    if L0_3 then
      L0_3 = L47_2
      L0_3 = L0_3.startedClean
      if not L0_3 then
        goto lbl_11
      end
    end
    do return end
    ::lbl_11::
    L0_3 = L62_2
    L0_3 = L0_3.update
    L0_3()
  end
  
  function L183_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = L58_2
    if A0_3 == L1_3 then
      L1_3 = 1
      return L1_3
    end
    L58_2 = A0_3
    L1_3 = 1
    L2_3 = L55_2
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L56_2
      L5_3 = L5_3[L4_3]
      L6_3 = audio
      L6_3 = L6_3.setVolume
      L7_3 = A0_3
      L8_3 = {}
      L8_3.channel = L5_3
      L6_3 = L6_3(L7_3, L8_3)
    end
  end
  
  function L184_2()
    local L0_3, L1_3
    L0_3 = L52_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L52_2
      L0_3(L1_3)
      L0_3 = nil
      L52_2 = L0_3
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
    L0_3 = L20_2
    if L0_3 then
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = L20_2
      L0_3(L1_3)
      L0_3 = nil
      L20_2 = L0_3
    end
  end
  
  function L185_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = A1_3.phase
    if L2_3 == "began" then
      L2_3 = A1_3.other
      L2_3 = L2_3.mapElement
      if L2_3 then
        L2_3 = L11_2
        L2_3.onGround = true
        L2_3 = false
        L33_2 = L2_3
        L2_3 = L115_2
        L2_3()
        L2_3 = L35_2
        L3_3 = system
        L3_3 = L3_3.getTimer
        L3_3 = L3_3()
        L2_3.groundTime = L3_3
        L2_3 = L47_2
        L2_3 = L2_3.playerDead
        if not L2_3 then
          L2_3 = A1_3.other
          L2_3 = L2_3.bounce
          if L2_3 then
            L2_3 = A4_2
            if L2_3 then
              L2_3 = "bounce_tile"
              L3_3 = L2_1
              L3_3 = L3_3.data
              L3_3 = L3_3.currentLevelTheme
              if L3_3 == "space" then
                L2_3 = "bounce_tile_space"
              end
              L3_3 = L60_2
              L4_3 = L2_3
              L3_3(L4_3)
            end
            L2_3 = 1
            L43_2 = L2_3
            L2_3 = L11_2
            L3_3 = L2_3
            L2_3 = L2_3.getLinearVelocity
            L2_3, L3_3 = L2_3(L3_3)
            L4_3 = L9_1
            L5_3 = L3_3
            L4_3 = L4_3(L5_3)
            if 100 < L4_3 then
              L2_3 = L2_3 * 0.7
            end
            L4_3 = L9_1
            L5_3 = L3_3 * 1.3
            L4_3 = L4_3(L5_3)
            L4_3 = -L4_3
            if L4_3 < -700 then
              L4_3 = -700
            end
            if -500 < L4_3 then
              L4_3 = -500
            end
            L5_3 = L11_2
            L5_3.onGround = false
            L5_3 = L89_2
            L6_3 = L2_3
            L7_3 = L4_3
            L5_3(L6_3, L7_3)
            L5_3 = 1
            L37_2 = L5_3
            L5_3 = 2
            L43_2 = L5_3
          else
            L2_3 = A1_3.other
            L2_3 = L2_3.boost
            if L2_3 then
              L2_3 = A4_2
              if L2_3 then
                L2_3 = L60_2
                L3_3 = "speed_tile"
                L2_3(L3_3)
              end
              L2_3 = 1
              L43_2 = L2_3
              L2_3 = L11_2
              L3_3 = L2_3
              L2_3 = L2_3.getLinearVelocity
              L2_3, L3_3 = L2_3(L3_3)
              L4_3 = L34_2
              L4_3 = L4_3.boostMaks
              if L2_3 < L4_3 then
                if L2_3 < 0 then
                  L2_3 = L2_3 * 0.1
                else
                  L4_3 = L34_2
                  L4_3 = L4_3.defaultTopSpeed
                  if L2_3 < L4_3 then
                    L4_3 = L34_2
                    L2_3 = L4_3.defaultTopSpeed
                  end
                  L2_3 = L2_3 * 1.8
                end
                L4_3 = L34_2
                L4_3 = L4_3.boostMaks
                if L2_3 > L4_3 then
                  L4_3 = L34_2
                  L2_3 = L4_3.boostMaks
                end
                L4_3 = L89_2
                L5_3 = L2_3
                L6_3 = L3_3
                L4_3(L5_3, L6_3)
              end
              L4_3 = 3
              L37_2 = L4_3
              L4_3 = 2
              L43_2 = L4_3
            else
              L2_3 = A1_3.other
              L2_3 = L2_3.boost2
              if L2_3 then
                L2_3 = 1
                L43_2 = L2_3
                L2_3 = L11_2
                L3_3 = L2_3
                L2_3 = L2_3.getLinearVelocity
                L2_3, L3_3 = L2_3(L3_3)
                L4_3 = L34_2
                L4_3 = L4_3.boostMaksSlide
                if L2_3 < L4_3 then
                  if L2_3 < 0 then
                    L2_3 = L2_3 * 0.7
                  else
                    L2_3 = L2_3 * 1.5
                  end
                  L4_3 = L34_2
                  L4_3 = L4_3.boostMaksSlide
                  if L2_3 > L4_3 then
                    L4_3 = L34_2
                    L2_3 = L4_3.boostMaksSlide
                  end
                  L4_3 = L89_2
                  L5_3 = L2_3
                  L6_3 = L3_3
                  L4_3(L5_3, L6_3)
                end
                L4_3 = 3
                L37_2 = L4_3
                L4_3 = 2
                L43_2 = L4_3
              else
                L2_3 = A1_3.other
                L2_3 = L2_3.slow
                if L2_3 then
                  L2_3 = 1
                  L43_2 = L2_3
                  L2_3 = L11_2
                  L3_3 = L2_3
                  L2_3 = L2_3.getLinearVelocity
                  L2_3, L3_3 = L2_3(L3_3)
                  L4_3 = L34_2
                  L4_3 = L4_3.slowMaks
                  if L2_3 > L4_3 then
                    L2_3 = L2_3 * 0.5
                    L4_3 = L34_2
                    L4_3 = L4_3.slowMaks
                    if L2_3 < L4_3 then
                      L4_3 = L34_2
                      L2_3 = L4_3.slowMaks
                    end
                    L4_3 = L89_2
                    L5_3 = L2_3
                    L6_3 = L3_3
                    L4_3(L5_3, L6_3)
                  end
                  L4_3 = 4
                  L37_2 = L4_3
                  L4_3 = 2
                  L43_2 = L4_3
                else
                  L2_3 = A1_3.other
                  L2_3 = L2_3.floatingBladeTrap
                  if L2_3 then
                    L2_3 = L47_2
                    L2_3 = L2_3.playerInvulnerable
                    if not L2_3 then
                      L2_3 = false
                      L3_3 = A4_2
                      if not L3_3 then
                        L3_3 = L2_1
                        L3_3 = L3_3.data
                        L3_3 = L3_3.gameInfo
                        L3_3 = L3_3.gameType
                        if L3_3 ~= 0 then
                          L2_3 = true
                        end
                      end
                      L3_3 = L177_2
                      L4_3 = 98
                      L5_3 = 97
                      L6_3 = L2_3
                      L3_3(L4_3, L5_3, L6_3)
                    end
                  else
                    L2_3 = A1_3.other
                    L2_3 = L2_3.flatBladeTrap
                    if L2_3 then
                      L2_3 = L47_2
                      L2_3 = L2_3.playerInvulnerable
                      if not L2_3 then
                        L2_3 = false
                        L3_3 = A4_2
                        if not L3_3 then
                          L3_3 = L2_1
                          L3_3 = L3_3.data
                          L3_3 = L3_3.gameInfo
                          L3_3 = L3_3.gameType
                          if L3_3 ~= 0 then
                            L2_3 = true
                          end
                        end
                        L3_3 = L177_2
                        L4_3 = 98
                        L5_3 = 98
                        L6_3 = L2_3
                        L3_3(L4_3, L5_3, L6_3)
                      end
                    else
                      L2_3 = 1
                      L37_2 = L2_3
                    end
                  end
                end
              end
            end
          end
          L2_3 = A1_3.other
          L2_3 = L2_3.onCollision
          if L2_3 then
            L2_3 = A1_3.other
            L2_3 = L2_3.onCollision
            L2_3()
          end
        end
      else
        L2_3 = A1_3.other
        L2_3 = L2_3.powerUp
        if L2_3 then
          L2_3 = A4_2
          if L2_3 then
            L2_3 = L2_1
            L2_3 = L2_3.onboarding
            L2_3 = L2_3.isActive
            if L2_3 == true then
              L2_3 = L2_1
              L2_3 = L2_3.onboarding
              L2_3 = L2_3.onCollideWithPowerBox
              L2_3()
            end
          end
          L2_3 = L46_2
          if L2_3 ~= 0 then
            goto lbl_380
          end
          L2_3 = L119_2
          L2_3 = L2_3()
          if not L2_3 then
            goto lbl_380
          end
          L2_3 = A4_2
          if L2_3 then
            L2_3 = L78_2
            L3_3 = 3000
            L2_3(L3_3)
            L2_3 = A1_3.other
            L2_3.blendMode = "add"
            L2_3 = {}
            L3_3 = A1_3.other
            L2_3[1] = L3_3
            
            function L3_3(A0_4)
              local L1_4, L2_4
              L1_4 = L118_2
              L2_4 = L2_3
              return L1_4(L2_4)
            end
            
            L4_3 = timer
            L4_3 = L4_3.performWithDelay
            L5_3 = 200
            L6_3 = L3_3
            L7_3 = 1
            L4_3(L5_3, L6_3, L7_3)
            L4_3 = L60_2
            L5_3 = "pickup"
            L4_3(L5_3)
            L4_3 = system
            L4_3 = L4_3.getTimer
            L4_3 = L4_3()
            L45_2 = L4_3
          end
          L2_3 = L2_1
          L2_3 = L2_3.data
          L2_3 = L2_3.gameInfo
          L2_3 = L2_3.gameType
          if L2_3 ~= 0 then
            L2_3 = A4_2
            if not L2_3 then
              goto lbl_301
            end
          end
          L2_3 = L107_2
          L2_3()
          ::lbl_301::
          L2_3 = L35_2
          L2_3 = L2_3.powerUpAtTimes
          if L2_3 == 2 then
            L2_3 = A4_2
            if L2_3 then
              L2_3 = A1_3.other
              L3_3 = L2_3
              L2_3 = L2_3.setFillColor
              L4_3 = 0.5450980392156862
              L5_3 = 0.5137254901960784
              L6_3 = 0.47058823529411764
              L7_3 = 1
              L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
            end
          end
          L2_3 = L2_1
          L2_3 = L2_3.data
          L2_3 = L2_3.gameInfo
          L2_3 = L2_3.gameType
          if L2_3 ~= 0 then
            L2_3 = A4_2
            if L2_3 then
              L2_3 = L2_1
              L2_3 = L2_3.tcpClient
              L2_3 = L2_3.sendPowerBoxMessage
              L3_3 = L46_2
              L4_3 = L11_2
              L4_3 = L4_3.x
              L5_3 = L11_2
              L5_3 = L5_3.y
              L6_3 = L10_1
              L7_3 = A1_3.other
              L7_3 = L7_3.x
              L6_3 = L6_3(L7_3)
              L7_3 = L10_1
              L8_3 = A1_3.other
              L8_3 = L8_3.y
              L7_3, L8_3 = L7_3(L8_3)
              L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
            end
          end
        else
          L2_3 = A1_3.other
          L2_3 = L2_3.cannon
          if L2_3 then
            L2_3 = A1_3.otherElement
            if L2_3 == 1 then
              L2_3 = A1_3.other
              L2_3 = L2_3.onCollision
              L3_3 = L11_2
              L4_3 = L11_2
              L4_3 = L4_3.booleanStates
              L4_3 = L4_3.startedClean
              L2_3(L3_3, L4_3)
            else
              L2_3 = L11_2
              L2_3.onGround = true
              L2_3 = L115_2
              L2_3()
              L2_3 = L35_2
              L3_3 = system
              L3_3 = L3_3.getTimer
              L3_3 = L3_3()
              L2_3.groundTime = L3_3
            end
          end
        end
      end
    else
      L2_3 = A1_3.phase
      if L2_3 == "ended" then
        L2_3 = A1_3.other
        L2_3 = L2_3.mapElement
        if L2_3 then
          L2_3 = timer
          L2_3 = L2_3.performWithDelay
          L3_3 = 300
          L4_3 = L116_2
          L5_3 = 1
          L2_3(L3_3, L4_3, L5_3)
        end
      end
    end
    ::lbl_380::
  end
  
  function L186_2()
    local L0_3, L1_3
    L0_3 = L24_2
    if L0_3 then
      L0_3 = L24_2
      L0_3 = L0_3.getGroup
      L0_3 = L0_3()
      L1_3 = L0_3.isVisible
      if not L1_3 then
        L0_3.isVisible = true
      end
    end
  end
  
  function L187_2()
    local L0_3, L1_3
    L0_3 = L24_2
    if L0_3 then
      L0_3 = L24_2
      L0_3 = L0_3.getGroup
      L0_3 = L0_3()
      L1_3 = L0_3.isVisible
      if L1_3 then
        L0_3.isVisible = false
      end
    end
  end
  
  function L188_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L47_2
    L0_3.startedClean = true
    L0_3 = L48_2
    L0_3 = L0_3.startedCleanNow
    L0_3()
    L0_3 = L73_2
    L0_3()
    L0_3 = L24_2
    L0_3 = L0_3.clean
    L0_3()
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "collision"
    L3_3 = L11_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = transition
    L0_3 = L0_3.cancel
    L1_3 = "ninjaTrans"
    L0_3(L1_3)
    L0_3 = L184_2
    L0_3()
    L0_3 = L18_2
    if L0_3 then
      L0_3 = L18_2
      L0_3 = L0_3.cleanBot
      L0_3()
    end
    L0_3 = L62_2
    L0_3 = L0_3.clean
    L0_3()
    L0_3 = L12_2
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = nil
    L12_2 = L0_3
    L0_3 = L11_2
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = nil
    L11_2 = L0_3
  end
  
  L190_2 = L11_2
  L189_2 = L11_2.insert
  L191_2 = L13_2
  L189_2(L190_2, L191_2)
  L190_2 = L11_2
  L189_2 = L11_2.insert
  L191_2 = L32_2.bladeImage
  L189_2(L190_2, L191_2)
  L190_2 = L11_2
  L189_2 = L11_2.insert
  L191_2 = L32_2.trapImage
  L189_2(L190_2, L191_2)
  L190_2 = L11_2
  L189_2 = L11_2.insert
  L191_2 = L32_2.bounceTrapImage
  L189_2(L190_2, L191_2)
  L190_2 = L11_2
  L189_2 = L11_2.insert
  L191_2 = L32_2.markPlayerImage
  L189_2(L190_2, L191_2)
  L189_2 = L62_2.updateDisplayGroup
  L189_2()
  L190_2 = L17_2
  L189_2 = L17_2.insert
  L191_2 = L64_2
  L189_2(L190_2, L191_2)
  L190_2 = L16_2
  L189_2 = L16_2.insert
  L191_2 = L25_2
  L189_2(L190_2, L191_2)
  L190_2 = L16_2
  L189_2 = L16_2.insert
  L191_2 = L32_2.markBarImage
  L189_2(L190_2, L191_2)
  L17_2.anchorChildren = true
  L17_2.anchorX = 0.5
  L17_2.anchorY = 1
  L189_2 = L16_2.y
  L190_2 = L25_2.head
  L190_2 = L190_2.y
  L190_2 = L190_2 * 0.17
  L190_2 = L190_2 + 15
  L189_2 = L189_2 - L190_2
  L16_2.y = L189_2
  L189_2 = L16_2.x
  L190_2 = L25_2.head
  L190_2 = L190_2.x
  L190_2 = L190_2 * 0.17
  L189_2 = L189_2 - L190_2
  L16_2.x = L189_2
  L190_2 = L16_2
  L189_2 = L16_2.insert
  L191_2 = L63_2
  L189_2(L190_2, L191_2)
  L63_2.alpha = 0
  L63_2.y = -25
  L63_2.x = 0
  L189_2 = L32_2.markBarImage
  L189_2.alpha = 0
  L189_2 = L32_2.markBarImage
  L189_2.y = -50
  L189_2 = L32_2.markBarImage
  L189_2.x = 0
  L189_2 = {}
  L190_2 = 12
  L191_2 = 12
  L192_2 = 9
  L193_2 = 15
  L194_2 = 4
  L195_2 = 17
  L196_2 = -4
  L197_2 = 17
  L198_2 = -9
  L199_2 = 15
  L200_2 = -12
  L201_2 = 12
  L202_2 = -15
  L203_2 = 7
  L204_2 = 15
  L205_2 = 7
  L189_2[1] = L190_2
  L189_2[2] = L191_2
  L189_2[3] = L192_2
  L189_2[4] = L193_2
  L189_2[5] = L194_2
  L189_2[6] = L195_2
  L189_2[7] = L196_2
  L189_2[8] = L197_2
  L189_2[9] = L198_2
  L189_2[10] = L199_2
  L189_2[11] = L200_2
  L189_2[12] = L201_2
  L189_2[13] = L202_2
  L189_2[14] = L203_2
  L189_2[15] = L204_2
  L189_2[16] = L205_2
  L190_2 = {}
  L191_2 = 15
  L192_2 = -9
  L193_2 = 15
  L194_2 = 7
  L195_2 = -15
  L196_2 = 7
  L197_2 = -15
  L198_2 = -9
  L190_2[1] = L191_2
  L190_2[2] = L192_2
  L190_2[3] = L193_2
  L190_2[4] = L194_2
  L190_2[5] = L195_2
  L190_2[6] = L196_2
  L190_2[7] = L197_2
  L190_2[8] = L198_2
  L191_2 = {}
  L192_2 = -15
  L193_2 = -9
  L194_2 = -4
  L195_2 = -18
  L196_2 = 4
  L197_2 = -18
  L198_2 = 15
  L199_2 = -9
  L191_2[1] = L192_2
  L191_2[2] = L193_2
  L191_2[3] = L194_2
  L191_2[4] = L195_2
  L191_2[5] = L196_2
  L191_2[6] = L197_2
  L191_2[7] = L198_2
  L191_2[8] = L199_2
  if not A4_2 then
    L192_2 = L2_1
    L192_2 = L192_2.data
    L192_2 = L192_2.gameInfo
    L192_2 = L192_2.gameType
    if L192_2 ~= 0 then
      goto lbl_1068
    end
  end
  L192_2 = physics
  L192_2 = L192_2.addBody
  L193_2 = L11_2
  L194_2 = {}
  L194_2.density = 1.27
  L194_2.friction = 0
  L194_2.shape = L190_2
  L194_2.bounce = 0.1
  L195_2 = remotePlayerCollisionFilter
  L194_2.filter = L195_2
  L195_2 = {}
  L195_2.density = 0
  L195_2.friction = 0
  L195_2.shape = L189_2
  L195_2.bounce = 0.1
  L196_2 = localPlayerCollisionFilter
  L195_2.filter = L196_2
  L196_2 = {}
  L196_2.density = 0
  L196_2.friction = 0
  L196_2.shape = L191_2
  L196_2.bounce = 0.1
  L197_2 = remotePlayerCollisionFilter
  L196_2.filter = L197_2
  L192_2(L193_2, L194_2, L195_2, L196_2)
  goto lbl_1093
  ::lbl_1068::
  L192_2 = physics
  L192_2 = L192_2.addBody
  L193_2 = L11_2
  L194_2 = {}
  L194_2.density = 1.27
  L194_2.friction = 0
  L194_2.shape = L190_2
  L194_2.bounce = 0.1
  L195_2 = remotePlayerCollisionFilter
  L194_2.filter = L195_2
  L195_2 = {}
  L195_2.density = 0
  L195_2.friction = 0
  L195_2.shape = L189_2
  L195_2.bounce = 0.1
  L196_2 = remotePlayerCollisionFilter
  L195_2.filter = L196_2
  L196_2 = {}
  L196_2.density = 0
  L196_2.friction = 0
  L196_2.shape = L191_2
  L196_2.bounce = 0.1
  L197_2 = remotePlayerCollisionFilter
  L196_2.filter = L197_2
  L192_2(L193_2, L194_2, L195_2, L196_2)
  ::lbl_1093::
  L192_2 = physics
  L192_2 = L192_2.addBody
  L193_2 = L12_2
  L194_2 = {}
  L194_2.density = 1.27
  L194_2.friction = 0
  L194_2.shape = L190_2
  L194_2.bounce = 0.1
  L195_2 = remotePlayerCollisionFilter
  L194_2.filter = L195_2
  L195_2 = {}
  L195_2.density = 0
  L195_2.friction = 0
  L195_2.shape = L189_2
  L195_2.bounce = 0.1
  L196_2 = remotePlayerCollisionFilter
  L195_2.filter = L196_2
  L196_2 = {}
  L196_2.density = 0
  L196_2.friction = 0
  L196_2.shape = L191_2
  L196_2.bounce = 0.1
  L197_2 = remotePlayerCollisionFilter
  L196_2.filter = L197_2
  L192_2(L193_2, L194_2, L195_2, L196_2)
  L192_2 = timer
  L192_2 = L192_2.performWithDelay
  L193_2 = 10
  L194_2 = L170_2
  L195_2 = 1
  L192_2(L193_2, L194_2, L195_2)
  L11_2.isSleepingAllowed = false
  L11_2.x = A6_2
  L192_2 = A7_2 + 4
  L11_2.y = L192_2
  L11_2.id = A0_2
  L11_2.player = true
  L11_2.onGround = true
  L11_2.isFixedRotation = true
  L11_2.mobileUser = false
  L11_2.ninjaMark = false
  L192_2 = L11_2.x
  L12_2.x = L192_2
  L192_2 = L11_2.y
  L12_2.y = L192_2
  L12_2.isFixedRotation = true
  L12_2.isSleepingAllowed = false
  L192_2 = L32_2.bladeImage
  L192_2.alpha = 0
  L192_2 = L32_2.trapImage
  L192_2.alpha = 0
  L192_2 = L32_2.bounceTrapImage
  L192_2.alpha = 0
  L192_2 = L32_2.markPlayerImage
  L192_2.alpha = 0
  L192_2 = L32_2.trapImage
  L192_2.y = -22
  L192_2 = L32_2.bounceTrapImage
  L192_2.x = -42
  L192_2 = L32_2.markPlayerImage
  L192_2.y = -43
  
  function L192_2()
    local L0_3, L1_3, L2_3
    L0_3 = L3_1
    L0_3 = L0_3.new
    L1_3 = L11_2
    L0_3 = L0_3(L1_3)
    L18_2 = L0_3
    L0_3 = L8_1
    L1_3 = 335
    L2_3 = 345
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = L34_2
    L1_3.defaultTopSpeed = L0_3
    L1_3 = L34_2
    L1_3.topSpeedX = L0_3
    L1_3 = L34_2
    L1_3.tempSpeedX = L0_3
  end
  
  L193_2 = isSimulator
  if L193_2 then
    L193_2 = L2_1
    L193_2 = L193_2.config
    L193_2 = L193_2.bot
    if L193_2 and A4_2 then
      L193_2 = L192_2
      L193_2()
  end
  else
    L193_2 = L2_1
    L193_2 = L193_2.data
    L193_2 = L193_2.gameInfo
    L193_2 = L193_2.gameType
    if L193_2 == 0 and not A4_2 then
      L193_2 = L192_2
      L193_2()
    end
  end
  
  function L193_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = L18_2
    if L3_3 then
      L3_3 = L18_2
      L3_3 = L3_3.setGameFunction
      L4_3 = A0_3
      L5_3 = A1_3
      L6_3 = A2_3
      L3_3(L4_3, L5_3, L6_3)
    end
  end
  
  L194_2 = L78_2
  L195_2 = 7500
  L194_2(L195_2)
  L11_2.collision = L185_2
  L11_2.onCollisionPowerUp = L177_2
  L11_2.stopPlayer = L133_2
  L11_2.accelerate = L128_2
  L11_2.getPowerUp = L109_2
  L11_2.booleanStates = L47_2
  L11_2.usedPowerUp = L111_2
  L11_2.setPlayerPosition = L98_2
  L11_2.getPlayerPosition = L99_2
  L11_2.getUsername = L136_2
  L11_2.jump = L132_2
  L11_2.canJump = L130_2
  L11_2.speedPowerUp = L149_2
  L11_2.stopPowerUpSpeed = L93_2
  L11_2.shieldPowerUp = L147_2
  L11_2.armorPowerUp = L148_2
  L11_2.rocketPowerUp = L150_2
  L194_2 = L62_2.playTeleportPowerUp
  L11_2.playTeleportPowerUp = L194_2
  L11_2.createBladeAnimation = L155_2
  L11_2.removeBladeAnimation = L154_2
  L11_2.createTrapAnimation = L157_2
  L11_2.removeTrapAnimation = L156_2
  L11_2.createBounceTrapAnimation = L159_2
  L11_2.removeBounceTrapAnimation = L158_2
  L11_2.createHuntersMarkAnimation = L160_2
  L11_2.createMagnetAnimation = L161_2
  L11_2.corrigateOtherPlayers = L180_2
  L11_2.calculateRotation = L125_2
  L11_2.getPlayerGoalTime = L134_2
  L11_2.setPlayerGoalTime = L135_2
  L11_2.getCurrentGameTime = L142_2
  L11_2.setCurrentGameTime = L143_2
  L11_2.getPlayerHead = L137_2
  L11_2.playHitAnimation = L174_2
  L11_2.playAnimation = L175_2
  L11_2.resetBones = L176_2
  L11_2.getPlayerStatus = L140_2
  L11_2.getPlayerFinish = L141_2
  L11_2.getBodyPartsGroup = L144_2
  L11_2.pauseSprite = L112_2
  L11_2.addPlaySoundFunction = L181_2
  L11_2.playSound = L60_2
  L11_2.setSoundVolume = L183_2
  L11_2.setUpdatePowerUpImageFunction = L100_2
  L11_2.setPowerUp = L106_2
  L11_2.getScreenGroup = L145_2
  L194_2 = L62_2.showCloud
  L11_2.showCloud = L194_2
  L11_2.setKillMessageFunction = L168_2
  L11_2.clean = L188_2
  L11_2.setDisconnected = L172_2
  L11_2.isDisconnected = L173_2
  L11_2.setBotModuleFunction = L193_2
  L11_2.addNinjaMark = L103_2
  L11_2.removeNinjaMark = L102_2
  L11_2.playNinjaEffect = L105_2
  L11_2.interpolation = L179_2
  L11_2.getGhostGroup = L146_2
  L11_2.forcePlayer = L178_2
  L11_2.tutorialPause = L113_2
  L11_2.canOtherPlayerUsePU = L110_2
  L11_2.getLinearVelocityOnPlayer = L86_2
  L11_2.setLinearVelocityOnPlayer = L89_2
  L11_2.getPlayerPositionInWorld = L87_2
  L11_2.setPlayerPositionInWorld = L88_2
  L11_2.cannonFunction = L122_2
  L11_2.applyForceOnPlayer = L90_2
  L11_2.powerUpLinks = L36_2
  L11_2.isDead = L108_2
  L11_2.customPowerUpSkins = A8_2
  L11_2.show = L186_2
  L11_2.hide = L187_2
  L11_2.updateEffects = L182_2
  L11_2.pauseAnimations = L97_2
  L195_2 = L11_2
  L194_2 = L11_2.addEventListener
  L196_2 = "collision"
  L197_2 = L11_2
  L194_2(L195_2, L196_2, L197_2)
  L194_2 = L62_2.addEventListeners
  L194_2()
  L194_2 = L48_2.readyRocketParts
  L194_2()
  L194_2 = L48_2.readySkull
  L194_2()
  L194_2 = L48_2.readyTombstones
  L194_2()
  return L11_2
end

L0_1.new = L14_1
return L0_1
