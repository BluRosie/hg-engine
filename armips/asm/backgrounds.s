.nds
.thumb

// file included by armips/global.s

.open "base/overlay/overlay_0007.bin", 0x0221BE20

// make table used by get_bg_gfx_id half the size so new move backgrounds can be added

.org 0x0221FB7C

get_bg_gfx_id:
    mov r2, #10 // 2 * sizeof(struct BackgroundGfxId)
    mul r2, r0
    ldr r0, =sBackgroundGfxIds
    lsl r1, r1, #1
    add r0, r0, r2
    ldrh r0, [r1, r0]
    bx lr

.pool

.org 0x02234F48

.area 58 * 20, 0xFF // do not overflow old space used

sBackgroundGfxIds:
//            gfx,       pal,   tilemap,  tilemap2,  tilemap3
.halfword      59,       295,        56,        57,        58
.halfword      59,       295,        56,        57,        58
.halfword     119,       319,       120,       120,       120
.halfword      59,       295,        56,        57,        58
.halfword      59,       295,        56,        57,        58
.halfword      59,       330,        56,        57,        58
.halfword      63,       296,        60,        61,        62
.halfword     142,       334,       143,       144,       143
.halfword      63,       337,        60,        61,        62
.halfword      64,       297,        65,        65,        65
.halfword      64,       297,        65,        65,        65
.halfword     119,       320,       120,       120,       120
.halfword      64,       329,        65,        65,        65
.halfword      64,       336,        65,        65,        65
.halfword     119,       318,       120,       120,       120
.halfword      70,       300,        66,        66,        66
.halfword      70,       308,        66,        66,        66
.halfword     119,       317,       120,       120,       120
.halfword      70,       308,        66,        66,        66
.halfword      75,       301,        76,        76,        74
.halfword      83,       303,        80,        81,        82
.halfword      89,       305,        86,        87,        88
.halfword      93,       306,        90,        91,        92
.halfword      94,       307,        95,        95,        95
.halfword      99,       310,       100,       100,       100
.halfword     102,       311,       103,       103,       101
.halfword     108,       312,       107,       107,       107
.halfword     108,       348,       107,       107,       107
.halfword     109,       313,       110,       110,       110
.halfword     111,       314,       112,       112,       112
.halfword     109,       313,       110,       110,       110
.halfword     118,       316,       115,       116,       117
.halfword     118,       316,       115,       116,       117
.halfword     118,       316,       115,       116,       117
.halfword     125,       324,       126,       126,       126
.halfword     130,       326,       131,       131,       129
.halfword     132,       327,       133,       133,       134
.halfword     139,       332,       137,       138,       138
.halfword     140,       333,       141,       141,       141
.halfword     145,       335,       146,       146,       146
.halfword     150,       338,       147,       148,       149
.halfword     154,       339,       151,       152,       153
.halfword     155,       340,       156,       156,       156
.halfword     157,       341,       158,       158,       158
.halfword     159,       342,       160,       160,       160
.halfword     164,       343,       161,       162,       163
.halfword     165,       344,       166,       166,       166
.halfword      46,       290,        47,        47,        47
.halfword     167,       345,       168,       169,       168
.halfword     167,       347,       168,       169,       168
.halfword     170,       346,       172,       171,       171
.halfword      72,       299,        73,        73,        73
.halfword      84,       304,        85,        85,        85
.halfword      79,       302,        77,        78,        77
.halfword     113,       315,       114,       114,       114
.halfword     123,       323,       124,       124,       124
.halfword     121,       322,       122,       122,       122
.halfword     135,       331,       136,       136,       136 // trick rooom bg 57
.halfword      98,       309,        96,        97,        96
// new backgrounds:
.halfword     135,       351,       136,       136,       136 // wonder room bg 59
.halfword     135,       352,       136,       136,       136 // magic room bg 60

.endarea

.close
