.nds
.thumb

/*
  this file contains all of the edits that can be made to the rom using armips (hypothetically) that do not deal with data
  assumes a deconstructed a011 and a017 in the root directory
  this file does not deal with the summary screen icon (img & pal), the dex icon (img), the item gfx (pal), the arceus btx0 overworlds, or the judgment battle script
  all of the gfx are dealt with as raw included files
  the battle script is dealt with as a file in data/ and assumes a deconstructed a030.  that is all.

  type table is at type_effectiveness_table on line 237.  type boosters at held_effect_type_boosters on line 198.
*/

HELD_EFFECT_FLAME_PLATE equ 0x7E
HELD_EFFECT_PIXIE_PLATE equ 0x93

.open "base/arm9.bin", 0x02000000

/*
r0 = held item effect
returns:
r0 = type from the held item

basic premise:
7e - flame
7f - water
80 - electric
81 - grass
82 - ice
83 - fight
84 - poison
85 - ground
86 - flying
87 - psychic
88 - bug
89 - rock
8a - ghost
8b - dragon
8c - dark
8d - steel
93 - fairy
*/

// ARM9 OFFSET 0x71C28
.org 0x02071C28

.area 0x02071CA0-., 0xFF

get_arceus_type_from_held_effect: // a much simpler routine that uses a table instead of some weird jumptable
    sub r0, #HELD_EFFECT_FLAME_PLATE
    cmp r0, #HELD_EFFECT_PIXIE_PLATE - HELD_EFFECT_FLAME_PLATE
    bhi @@normal // this catches negative numbers too
    ldr r1, =plate_to_type_table
    ldrb r0, [r1, r0]
    bx lr

@@normal:
    mov r0, #0
    bx lr

.align 2
.pool

plate_to_type_table:     // 21 bytes
    .byte TYPE_FIRE      // 0x7e
    .byte TYPE_WATER     // 0x7f
    .byte TYPE_ELECTRIC  // 0x80
    .byte TYPE_GRASS     // 0x81
    .byte TYPE_ICE       // 0x82
    .byte TYPE_FIGHTING  // 0x83
    .byte TYPE_POISON    // 0x84
    .byte TYPE_GROUND    // 0x85
    .byte TYPE_FLYING    // 0x86
    .byte TYPE_PSYCHIC   // 0x87
    .byte TYPE_BUG       // 0x88
    .byte TYPE_ROCK      // 0x89
    .byte TYPE_GHOST     // 0x8a
    .byte TYPE_DRAGON    // 0x8b
    .byte TYPE_DARK      // 0x8c
    .byte TYPE_STEEL     // 0x8d
    // it should be noted that 0 is the default return value
    .byte 0              // 0x8e
    .byte 0              // 0x8f
    .byte 0              // 0x90
    .byte 0              // 0x91
    .byte 0              // 0x92
    .byte TYPE_FAIRY     // 0x93 - new fairy held type

.endarea


.org 0x02100194

_02100194:
                            // .halfword dataid, gfxid, palid, gbaid
    /* ITEM_NONE            */ .halfword   0, 793, 794,   0
    /* ITEM_MASTER_BALL     */ .halfword   1,   2,   3,   1
    /* ITEM_ULTRA_BALL      */ .halfword   2,   4,   5,   2
    /* ITEM_GREAT_BALL      */ .halfword   3,   6,   7,   3
    /* ITEM_POKE_BALL       */ .halfword   4,   8,   9,   4
    /* ITEM_SAFARI_BALL     */ .halfword   5,  10,  11,   5
    /* ITEM_NET_BALL        */ .halfword   6,  12,  13,   6
    /* ITEM_DIVE_BALL       */ .halfword   7,  14,  15,   7
    /* ITEM_NEST_BALL       */ .halfword   8,  16,  17,   8
    /* ITEM_REPEAT_BALL     */ .halfword   9,  18,  19,   9
    /* ITEM_TIMER_BALL      */ .halfword  10,  20,  19,  10
    /* ITEM_LUXURY_BALL     */ .halfword  11,  21,  22,  11
    /* ITEM_PREMIER_BALL    */ .halfword  12,  23,  22,  12
    /* ITEM_DUSK_BALL       */ .halfword  13, 663, 664,   0
    /* ITEM_HEAL_BALL       */ .halfword  14, 665, 666,   0
    /* ITEM_QUICK_BALL      */ .halfword  15, 667, 668,   0
    /* ITEM_CHERISH_BALL    */ .halfword  16, 669, 670,   0
    /* ITEM_POTION          */ .halfword  17,  24,  25,  13
    /* ITEM_ANTIDOTE        */ .halfword  18,  26,  27,  14
    /* ITEM_BURN_HEAL       */ .halfword  19,  30,  28,  15
    /* ITEM_ICE_HEAL        */ .halfword  20,  30,  29,  16
    /* ITEM_AWAKENING       */ .halfword  21,  30,  31,  17
    /* ITEM_PARLYZ_HEAL     */ .halfword  22,  30,  32,  18
    /* ITEM_FULL_RESTORE    */ .halfword  23,  33,  34,  19
    /* ITEM_MAX_POTION      */ .halfword  24,  33,  35,  20
    /* ITEM_HYPER_POTION    */ .halfword  25,  24,  36,  21
    /* ITEM_SUPER_POTION    */ .halfword  26,  24,  37,  22
    /* ITEM_FULL_HEAL       */ .halfword  27,  38,  39,  23
    /* ITEM_REVIVE          */ .halfword  28,  40,  42,  24
    /* ITEM_MAX_REVIVE      */ .halfword  29,  41,  42,  25
    /* ITEM_FRESH_WATER     */ .halfword  30,  43,  44,  26
    /* ITEM_SODA_POP        */ .halfword  31,  45,  46,  27
    /* ITEM_LEMONADE        */ .halfword  32,  47,  48,  28
    /* ITEM_MOOMOO_MILK     */ .halfword  33,  49,  50,  29
    /* ITEM_ENERGYPOWDER    */ .halfword  34,  51,  52,  30
    /* ITEM_ENERGY_ROOT     */ .halfword  35,  53,  54,  31
    /* ITEM_HEAL_POWDER     */ .halfword  36,  51,  55,  32
    /* ITEM_REVIVAL_HERB    */ .halfword  37,  56,  57,  33
    /* ITEM_ETHER           */ .halfword  38,  58,  59,  34
    /* ITEM_MAX_ETHER       */ .halfword  39,  58,  60,  35
    /* ITEM_ELIXIR          */ .halfword  40,  58,  61,  36
    /* ITEM_MAX_ELIXIR      */ .halfword  41,  58,  62,  37
    /* ITEM_LAVA_COOKIE     */ .halfword  42,  63,  64,  38
    /* ITEM_BERRY_JUICE     */ .halfword  43,  71,  72,  44
    /* ITEM_SACRED_ASH      */ .halfword  44,  73,  74,  45
    /* ITEM_HP_UP           */ .halfword  45,  83,  84,  63
    /* ITEM_PROTEIN         */ .halfword  46,  85,  86,  64
    /* ITEM_IRON            */ .halfword  47,  85,  87,  65
    /* ITEM_CARBOS          */ .halfword  48,  85,  88,  66
    /* ITEM_CALCIUM         */ .halfword  49,  85,  89,  67
    /* ITEM_RARE_CANDY      */ .halfword  50,  90,  91,  68
    /* ITEM_PP_UP           */ .halfword  51,  92,  93,  69
    /* ITEM_ZINC            */ .halfword  52,  85,  94,  70
    /* ITEM_PP_MAX          */ .halfword  53,  95,  96,  71
    /* ITEM_OLD_GATEAU      */ .halfword  54, 466, 467,   0
    /* ITEM_GUARD_SPEC      */ .halfword  55, 100,  97,  73
    /* ITEM_DIRE_HIT        */ .halfword  56, 100,  98,  74
    /* ITEM_X_ATTACK        */ .halfword  57, 100,  99,  75
    /* ITEM_X_DEFENSE       */ .halfword  58, 100, 101,  76
    /* ITEM_X_SPEED         */ .halfword  59, 100, 102,  77
    /* ITEM_X_ACCURACY      */ .halfword  60, 100, 103,  78
    /* ITEM_X_SPECIAL       */ .halfword  61, 100, 104,  79
    /* ITEM_X_SP_DEF        */ .halfword  62, 100, 469,   0
    /* ITEM_POKE_DOLL       */ .halfword  63, 105, 106,  80
    /* ITEM_FLUFFY_TAIL     */ .halfword  64, 107, 108,  81
    /* ITEM_BLUE_FLUTE      */ .halfword  65,  65,  66,  39
    /* ITEM_YELLOW_FLUTE    */ .halfword  66,  65,  67,  40
    /* ITEM_RED_FLUTE       */ .halfword  67,  65,  68,  41
    /* ITEM_BLACK_FLUTE     */ .halfword  68,  65,  69,  42
    /* ITEM_WHITE_FLUTE     */ .halfword  69,  65,  70,  43
    /* ITEM_SHOAL_SALT      */ .halfword  70,  51,  75,  46
    /* ITEM_SHOAL_SHELL     */ .halfword  71,  76,  77,  47
    /* ITEM_RED_SHARD       */ .halfword  72,  78,  79,  48
    /* ITEM_BLUE_SHARD      */ .halfword  73,  78,  80,  49
    /* ITEM_YELLOW_SHARD    */ .halfword  74,  78,  81,  50
    /* ITEM_GREEN_SHARD     */ .halfword  75,  78,  82,  51
    /* ITEM_SUPER_REPEL     */ .halfword  76, 109, 110,  83
    /* ITEM_MAX_REPEL       */ .halfword  77, 109, 111,  84
    /* ITEM_ESCAPE_ROPE     */ .halfword  78, 112, 113,  85
    /* ITEM_REPEL           */ .halfword  79, 109, 114,  86
    /* ITEM_SUN_STONE       */ .halfword  80, 115, 116,  93
    /* ITEM_MOON_STONE      */ .halfword  81, 117, 118,  94
    /* ITEM_FIRE_STONE      */ .halfword  82, 119, 120,  95
    /* ITEM_THUNDERSTONE    */ .halfword  83, 121, 122,  96
    /* ITEM_WATER_STONE     */ .halfword  84, 123, 124,  97
    /* ITEM_LEAF_STONE      */ .halfword  85, 125, 126,  98
    /* ITEM_TINYMUSHROOM    */ .halfword  86, 127, 129, 103
    /* ITEM_BIG_MUSHROOM    */ .halfword  87, 128, 129, 104
    /* ITEM_PEARL           */ .halfword  88, 130, 131, 106
    /* ITEM_BIG_PEARL       */ .halfword  89, 132, 131, 107
    /* ITEM_STARDUST        */ .halfword  90, 133, 134, 108
    /* ITEM_STAR_PIECE      */ .halfword  91, 135, 134, 109
    /* ITEM_NUGGET          */ .halfword  92, 136, 137, 110
    /* ITEM_HEART_SCALE     */ .halfword  93, 138, 139, 111
    /* ITEM_HONEY           */ .halfword  94, 470, 471,   0
    /* ITEM_GROWTH_MULCH    */ .halfword  95, 472, 473,   0
    /* ITEM_DAMP_MULCH      */ .halfword  96, 474, 475,   0
    /* ITEM_STABLE_MULCH    */ .halfword  97, 476, 477,   0
    /* ITEM_GOOEY_MULCH     */ .halfword  98, 478, 479,   0
    /* ITEM_ROOT_FOSSIL     */ .halfword  99, 392, 393, 286
    /* ITEM_CLAW_FOSSIL     */ .halfword 100, 394, 393, 287
    /* ITEM_HELIX_FOSSIL    */ .halfword 101, 431, 432, 357
    /* ITEM_DOME_FOSSIL     */ .halfword 102, 433, 432, 358
    /* ITEM_OLD_AMBER       */ .halfword 103, 425, 426, 354
    /* ITEM_ARMOR_FOSSIL    */ .halfword 104, 617, 618,   0
    /* ITEM_SKULL_FOSSIL    */ .halfword 105, 615, 616,   0
    /* ITEM_RARE_BONE       */ .halfword 106, 337, 338,   0
    /* ITEM_SHINY_STONE     */ .halfword 107, 480, 481,   0
    /* ITEM_DUSK_STONE      */ .halfword 108, 482, 483,   0
    /* ITEM_DAWN_STONE      */ .halfword 109, 484, 485,   0
    /* ITEM_OVAL_STONE      */ .halfword 110, 486, 487,   0
    /* ITEM_ODD_KEYSTONE    */ .halfword 111, 488, 489,   0
    /* ITEM_GRISEOUS_ORB    */ .halfword 112, 699, 700,   0
    /* ITEM_PIXIE_PLATE     */ .halfword 514, 901, 902,   0
    /* ITEM_UNKNOWN_72      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_73      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_74      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_75      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_76      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_77      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_78      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_79      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_7A      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_7B      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_7C      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_7D      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_7E      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_7F      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_80      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_81      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_82      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_83      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_84      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_85      */ .halfword   0, 793, 794,   0
    /* ITEM_UNKNOWN_86      */ .halfword   0, 793, 794,   0
    /* ITEM_ADAMANT_ORB     */ .halfword 113, 648, 649,   0
    /* ITEM_LUSTROUS_ORB    */ .halfword 114, 646, 647,   0
    /* ITEM_GRASS_MAIL      */ .halfword 115, 140, 141,   0
    /* ITEM_FLAME_MAIL      */ .halfword 116, 142, 143,   0
    /* ITEM_BUBBLE_MAIL     */ .halfword 117, 144, 145,   0
    /* ITEM_BLOOM_MAIL      */ .halfword 118, 146, 147,   0
    /* ITEM_TUNNEL_MAIL     */ .halfword 119, 148, 149,   0
    /* ITEM_STEEL_MAIL      */ .halfword 120, 150, 151,   0
    /* ITEM_HEART_MAIL      */ .halfword 121, 152, 153,   0
    /* ITEM_SNOW_MAIL       */ .halfword 122, 154, 155,   0
    /* ITEM_SPACE_MAIL      */ .halfword 123, 156, 157,   0
    /* ITEM_AIR_MAIL        */ .halfword 124, 158, 159,   0
    /* ITEM_MOSAIC_MAIL     */ .halfword 125, 160, 161,   0
    /* ITEM_BRICK_MAIL      */ .halfword 126, 162, 163,   0
    /* ITEM_CHERI_BERRY     */ .halfword 127, 164, 165, 133
    /* ITEM_CHESTO_BERRY    */ .halfword 128, 166, 167, 134
    /* ITEM_PECHA_BERRY     */ .halfword 129, 168, 169, 135
    /* ITEM_RAWST_BERRY     */ .halfword 130, 170, 171, 136
    /* ITEM_ASPEAR_BERRY    */ .halfword 131, 172, 173, 137
    /* ITEM_LEPPA_BERRY     */ .halfword 132, 174, 175, 138
    /* ITEM_ORAN_BERRY      */ .halfword 133, 176, 177, 139
    /* ITEM_PERSIM_BERRY    */ .halfword 134, 178, 179, 140
    /* ITEM_LUM_BERRY       */ .halfword 135, 180, 181, 141
    /* ITEM_SITRUS_BERRY    */ .halfword 136, 182, 183, 142
    /* ITEM_FIGY_BERRY      */ .halfword 137, 184, 185, 143
    /* ITEM_WIKI_BERRY      */ .halfword 138, 186, 187, 144
    /* ITEM_MAGO_BERRY      */ .halfword 139, 188, 189, 145
    /* ITEM_AGUAV_BERRY     */ .halfword 140, 190, 191, 146
    /* ITEM_IAPAPA_BERRY    */ .halfword 141, 192, 193, 147
    /* ITEM_RAZZ_BERRY      */ .halfword 142, 194, 195, 148
    /* ITEM_BLUK_BERRY      */ .halfword 143, 196, 197, 149
    /* ITEM_NANAB_BERRY     */ .halfword 144, 198, 199, 150
    /* ITEM_WEPEAR_BERRY    */ .halfword 145, 200, 201, 151
    /* ITEM_PINAP_BERRY     */ .halfword 146, 202, 203, 152
    /* ITEM_POMEG_BERRY     */ .halfword 147, 204, 205, 153
    /* ITEM_KELPSY_BERRY    */ .halfword 148, 206, 207, 154
    /* ITEM_QUALOT_BERRY    */ .halfword 149, 208, 209, 155
    /* ITEM_HONDEW_BERRY    */ .halfword 150, 210, 211, 156
    /* ITEM_GREPA_BERRY     */ .halfword 151, 212, 213, 157
    /* ITEM_TAMATO_BERRY    */ .halfword 152, 214, 215, 158
    /* ITEM_CORNN_BERRY     */ .halfword 153, 216, 217, 159
    /* ITEM_MAGOST_BERRY    */ .halfword 154, 218, 219, 160
    /* ITEM_RABUTA_BERRY    */ .halfword 155, 220, 221, 161
    /* ITEM_NOMEL_BERRY     */ .halfword 156, 222, 223, 162
    /* ITEM_SPELON_BERRY    */ .halfword 157, 224, 225, 163
    /* ITEM_PAMTRE_BERRY    */ .halfword 158, 226, 227, 164
    /* ITEM_WATMEL_BERRY    */ .halfword 159, 228, 229, 165
    /* ITEM_DURIN_BERRY     */ .halfword 160, 230, 231, 166
    /* ITEM_BELUE_BERRY     */ .halfword 161, 232, 233, 167
    /* ITEM_OCCA_BERRY      */ .halfword 162, 554, 555,   0
    /* ITEM_PASSHO_BERRY    */ .halfword 163, 556, 557,   0
    /* ITEM_WACAN_BERRY     */ .halfword 164, 558, 559,   0
    /* ITEM_RINDO_BERRY     */ .halfword 165, 560, 561,   0
    /* ITEM_YACHE_BERRY     */ .halfword 166, 562, 563,   0
    /* ITEM_CHOPLE_BERRY    */ .halfword 167, 564, 565,   0
    /* ITEM_KEBIA_BERRY     */ .halfword 168, 566, 567,   0
    /* ITEM_SHUCA_BERRY     */ .halfword 169, 568, 569,   0
    /* ITEM_COBA_BERRY      */ .halfword 170, 570, 571,   0
    /* ITEM_PAYAPA_BERRY    */ .halfword 171, 572, 573,   0
    /* ITEM_TANGA_BERRY     */ .halfword 172, 574, 575,   0
    /* ITEM_CHARTI_BERRY    */ .halfword 173, 576, 577,   0
    /* ITEM_KASIB_BERRY     */ .halfword 174, 578, 579,   0
    /* ITEM_HABAN_BERRY     */ .halfword 175, 580, 581,   0
    /* ITEM_COLBUR_BERRY    */ .halfword 176, 582, 583,   0
    /* ITEM_BABIRI_BERRY    */ .halfword 177, 584, 585,   0
    /* ITEM_CHILAN_BERRY    */ .halfword 178, 586, 587,   0
    /* ITEM_LIECHI_BERRY    */ .halfword 179, 234, 235, 168
    /* ITEM_GANLON_BERRY    */ .halfword 180, 236, 237, 169
    /* ITEM_SALAC_BERRY     */ .halfword 181, 238, 239, 170
    /* ITEM_PETAYA_BERRY    */ .halfword 182, 240, 241, 171
    /* ITEM_APICOT_BERRY    */ .halfword 183, 242, 243, 172
    /* ITEM_LANSAT_BERRY    */ .halfword 184, 244, 245, 173
    /* ITEM_STARF_BERRY     */ .halfword 185, 246, 247, 174
    /* ITEM_ENIGMA_BERRY    */ .halfword 186, 248, 249, 175
    /* ITEM_MICLE_BERRY     */ .halfword 187, 588, 589,   0
    /* ITEM_CUSTAP_BERRY    */ .halfword 188, 590, 591,   0
    /* ITEM_JABOCA_BERRY    */ .halfword 189, 592, 593,   0
    /* ITEM_ROWAP_BERRY     */ .halfword 190, 594, 595,   0
    /* ITEM_BRIGHTPOWDER    */ .halfword 191, 250, 251, 179
    /* ITEM_WHITE_HERB      */ .halfword 192, 252, 253, 180
    /* ITEM_MACHO_BRACE     */ .halfword 193, 254, 255, 181
    /* ITEM_EXP_SHARE       */ .halfword 194, 256, 257, 182
    /* ITEM_QUICK_CLAW      */ .halfword 195, 258, 259, 183
    /* ITEM_SOOTHE_BELL     */ .halfword 196, 260, 261, 184
    /* ITEM_MENTAL_HERB     */ .halfword 197, 252, 262, 185
    /* ITEM_CHOICE_BAND     */ .halfword 198, 263, 264, 186
    /* ITEM_KINGS_ROCK      */ .halfword 199, 265, 266, 187
    /* ITEM_SILVERPOWDER    */ .halfword 200, 267, 268, 188
    /* ITEM_AMULET_COIN     */ .halfword 201, 269, 270, 189
    /* ITEM_CLEANSE_TAG     */ .halfword 202, 271, 272, 190
    /* ITEM_SOUL_DEW        */ .halfword 203, 273, 274, 191
    /* ITEM_DEEPSEATOOTH    */ .halfword 204, 275, 276, 192
    /* ITEM_DEEPSEASCALE    */ .halfword 205, 277, 278, 193
    /* ITEM_SMOKE_BALL      */ .halfword 206, 279, 280, 194
    /* ITEM_EVERSTONE       */ .halfword 207, 281, 282, 195
    /* ITEM_FOCUS_BAND      */ .halfword 208, 283, 284, 196
    /* ITEM_LUCKY_EGG       */ .halfword 209, 285, 286, 197
    /* ITEM_SCOPE_LENS      */ .halfword 210, 287, 288, 198
    /* ITEM_METAL_COAT      */ .halfword 211, 289, 290, 199
    /* ITEM_LEFTOVERS       */ .halfword 212, 291, 292, 200
    /* ITEM_DRAGON_SCALE    */ .halfword 213, 293, 294, 201
    /* ITEM_LIGHT_BALL      */ .halfword 214, 295, 296, 202
    /* ITEM_SOFT_SAND       */ .halfword 215, 297, 298, 203
    /* ITEM_HARD_STONE      */ .halfword 216, 299, 300, 204
    /* ITEM_MIRACLE_SEED    */ .halfword 217, 301, 302, 205
    /* ITEM_BLACKGLASSES    */ .halfword 218, 303, 304, 206
    /* ITEM_BLACK_BELT      */ .halfword 219, 305, 304, 207
    /* ITEM_MAGNET          */ .halfword 220, 306, 307, 208
    /* ITEM_MYSTIC_WATER    */ .halfword 221, 308, 309, 209
    /* ITEM_SHARP_BEAK      */ .halfword 222, 310, 311, 210
    /* ITEM_POISON_BARB     */ .halfword 223, 312, 313, 211
    /* ITEM_NEVERMELTICE    */ .halfword 224, 314, 315, 212
    /* ITEM_SPELL_TAG       */ .halfword 225, 316, 317, 213
    /* ITEM_TWISTEDSPOON    */ .halfword 226, 318, 319, 214
    /* ITEM_CHARCOAL        */ .halfword 227, 320, 321, 215
    /* ITEM_DRAGON_FANG     */ .halfword 228, 322, 323, 216
    /* ITEM_SILK_SCARF      */ .halfword 229, 324, 325, 217
    /* ITEM_UP_GRADE        */ .halfword 230, 326, 327, 218
    /* ITEM_SHELL_BELL      */ .halfword 231, 328, 77 , 219
    /* ITEM_SEA_INCENSE     */ .halfword 232, 329, 330, 220
    /* ITEM_LAX_INCENSE     */ .halfword 233, 331, 332, 221
    /* ITEM_LUCKY_PUNCH     */ .halfword 234, 333, 334, 222
    /* ITEM_METAL_POWDER    */ .halfword 235, 335, 336, 223
    /* ITEM_THICK_CLUB      */ .halfword 236, 337, 338, 224
    /* ITEM_STICK           */ .halfword 237, 339, 340, 225
    /* ITEM_RED_SCARF       */ .halfword 238, 341, 342, 254
    /* ITEM_BLUE_SCARF      */ .halfword 239, 341, 343, 255
    /* ITEM_PINK_SCARF      */ .halfword 240, 341, 344, 256
    /* ITEM_GREEN_SCARF     */ .halfword 241, 341, 345, 257
    /* ITEM_YELLOW_SCARF    */ .halfword 242, 341, 346, 258
    /* ITEM_WIDE_LENS       */ .halfword 243, 490, 491,   0
    /* ITEM_MUSCLE_BAND     */ .halfword 244, 492, 493,   0
    /* ITEM_WISE_GLASSES    */ .halfword 245, 494, 495,   0
    /* ITEM_EXPERT_BELT     */ .halfword 246, 496, 497,   0
    /* ITEM_LIGHT_CLAY      */ .halfword 247, 611, 612,   0
    /* ITEM_LIFE_ORB        */ .halfword 248, 498, 499,   0
    /* ITEM_POWER_HERB      */ .halfword 249, 500, 501,   0
    /* ITEM_TOXIC_ORB       */ .halfword 250, 502, 503,   0
    /* ITEM_FLAME_ORB       */ .halfword 251, 504, 505,   0
    /* ITEM_QUICK_POWDER    */ .halfword 252, 335, 658,   0
    /* ITEM_FOCUS_SASH      */ .halfword 253, 659, 660,   0
    /* ITEM_ZOOM_LENS       */ .halfword 254, 506, 507,   0
    /* ITEM_METRONOME       */ .halfword 255, 508, 509,   0
    /* ITEM_IRON_BALL       */ .halfword 256, 613, 614,   0
    /* ITEM_LAGGING_TAIL    */ .halfword 257, 650, 651,   0
    /* ITEM_DESTINY_KNOT    */ .halfword 258, 654, 655,   0
    /* ITEM_BLACK_SLUDGE    */ .halfword 259, 510, 511,   0
    /* ITEM_ICY_ROCK        */ .halfword 260, 636, 637,   0
    /* ITEM_SMOOTH_ROCK     */ .halfword 261, 638, 639,   0
    /* ITEM_HEAT_ROCK       */ .halfword 262, 640, 641,   0
    /* ITEM_DAMP_ROCK       */ .halfword 263, 642, 643,   0
    /* ITEM_GRIP_CLAW       */ .halfword 264, 652, 653,   0
    /* ITEM_CHOICE_SCARF    */ .halfword 265, 512, 513,   0
    /* ITEM_STICKY_BARB     */ .halfword 266, 514, 515,   0
    /* ITEM_POWER_BRACER    */ .halfword 267, 683, 684,   0
    /* ITEM_POWER_BELT      */ .halfword 268, 691, 692,   0
    /* ITEM_POWER_LENS      */ .halfword 269, 693, 694,   0
    /* ITEM_POWER_BAND      */ .halfword 270, 685, 686,   0
    /* ITEM_POWER_ANKLET    */ .halfword 271, 687, 688,   0
    /* ITEM_POWER_WEIGHT    */ .halfword 272, 689, 690,   0
    /* ITEM_SHED_SHELL      */ .halfword 273, 516, 517,   0
    /* ITEM_BIG_ROOT        */ .halfword 274, 518, 519,   0
    /* ITEM_CHOICE_SPECS    */ .halfword 275, 520, 521,   0
    /* ITEM_FLAME_PLATE     */ .halfword 276, 619, 620,   0
    /* ITEM_SPLASH_PLATE    */ .halfword 277, 619, 621,   0
    /* ITEM_ZAP_PLATE       */ .halfword 278, 619, 622,   0
    /* ITEM_MEADOW_PLATE    */ .halfword 279, 619, 623,   0
    /* ITEM_ICICLE_PLATE    */ .halfword 280, 619, 624,   0
    /* ITEM_FIST_PLATE      */ .halfword 281, 619, 625,   0
    /* ITEM_TOXIC_PLATE     */ .halfword 282, 619, 626,   0
    /* ITEM_EARTH_PLATE     */ .halfword 283, 619, 627,   0
    /* ITEM_SKY_PLATE       */ .halfword 284, 619, 628,   0
    /* ITEM_MIND_PLATE      */ .halfword 285, 619, 629,   0
    /* ITEM_INSECT_PLATE    */ .halfword 286, 619, 630,   0
    /* ITEM_STONE_PLATE     */ .halfword 287, 619, 631,   0
    /* ITEM_SPOOKY_PLATE    */ .halfword 288, 619, 632,   0
    /* ITEM_DRACO_PLATE     */ .halfword 289, 619, 633,   0
    /* ITEM_DREAD_PLATE     */ .halfword 290, 619, 634,   0
    /* ITEM_IRON_PLATE      */ .halfword 291, 619, 635,   0
    /* ITEM_ODD_INCENSE     */ .halfword 292, 522, 523,   0
    /* ITEM_ROCK_INCENSE    */ .halfword 293, 524, 525,   0
    /* ITEM_FULL_INCENSE    */ .halfword 294, 526, 527,   0
    /* ITEM_WAVE_INCENSE    */ .halfword 295, 528, 529,   0
    /* ITEM_ROSE_INCENSE    */ .halfword 296, 530, 531,   0
    /* ITEM_LUCK_INCENSE    */ .halfword 297, 532, 533,   0
    /* ITEM_PURE_INCENSE    */ .halfword 298, 534, 535,   0
    /* ITEM_PROTECTOR       */ .halfword 299, 695, 696,   0
    /* ITEM_ELECTIRIZER     */ .halfword 300, 536, 537,   0
    /* ITEM_MAGMARIZER      */ .halfword 301, 538, 539,   0
    /* ITEM_DUBIOUS_DISC    */ .halfword 302, 540, 541,   0
    /* ITEM_REAPER_CLOTH    */ .halfword 303, 542, 543,   0
    /* ITEM_RAZOR_CLAW      */ .halfword 304, 544, 545,   0
    /* ITEM_RAZOR_FANG      */ .halfword 305, 546, 547,   0
    /* ITEM_TM01            */ .halfword 306, 397, 398, 289
    /* ITEM_TM02            */ .halfword 307, 397, 399, 290
    /* ITEM_TM03            */ .halfword 308, 397, 400, 291
    /* ITEM_TM04            */ .halfword 309, 397, 401, 292
    /* ITEM_TM05            */ .halfword 310, 397, 402, 293
    /* ITEM_TM06            */ .halfword 311, 397, 403, 294
    /* ITEM_TM07            */ .halfword 312, 397, 404, 295
    /* ITEM_TM08            */ .halfword 313, 397, 398, 296
    /* ITEM_TM09            */ .halfword 314, 397, 405, 297
    /* ITEM_TM10            */ .halfword 315, 397, 402, 298
    /* ITEM_TM11            */ .halfword 316, 397, 406, 299
    /* ITEM_TM12            */ .halfword 317, 397, 407, 300
    /* ITEM_TM13            */ .halfword 318, 397, 404, 301
    /* ITEM_TM14            */ .halfword 319, 397, 404, 302
    /* ITEM_TM15            */ .halfword 320, 397, 402, 303
    /* ITEM_TM16            */ .halfword 321, 397, 401, 304
    /* ITEM_TM17            */ .halfword 322, 397, 402, 305
    /* ITEM_TM18            */ .halfword 323, 397, 400, 306
    /* ITEM_TM19            */ .halfword 324, 397, 405, 307
    /* ITEM_TM20            */ .halfword 325, 397, 402, 308
    /* ITEM_TM21            */ .halfword 326, 397, 402, 309
    /* ITEM_TM22            */ .halfword 327, 397, 405, 310
    /* ITEM_TM23            */ .halfword 328, 397, 408, 311
    /* ITEM_TM24            */ .halfword 329, 397, 409, 312
    /* ITEM_TM25            */ .halfword 330, 397, 409, 313
    /* ITEM_TM26            */ .halfword 331, 397, 410, 314
    /* ITEM_TM27            */ .halfword 332, 397, 402, 315
    /* ITEM_TM28            */ .halfword 333, 397, 410, 316
    /* ITEM_TM29            */ .halfword 334, 397, 401, 317
    /* ITEM_TM30            */ .halfword 335, 397, 411, 318
    /* ITEM_TM31            */ .halfword 336, 397, 398, 319
    /* ITEM_TM32            */ .halfword 337, 397, 402, 320
    /* ITEM_TM33            */ .halfword 338, 397, 401, 321
    /* ITEM_TM34            */ .halfword 339, 397, 409, 322
    /* ITEM_TM35            */ .halfword 340, 397, 406, 323
    /* ITEM_TM36            */ .halfword 341, 397, 403, 324
    /* ITEM_TM37            */ .halfword 342, 397, 412, 325
    /* ITEM_TM38            */ .halfword 343, 397, 406, 326
    /* ITEM_TM39            */ .halfword 344, 397, 412, 327
    /* ITEM_TM40            */ .halfword 345, 397, 413, 328
    /* ITEM_TM41            */ .halfword 346, 397, 407, 329
    /* ITEM_TM42            */ .halfword 347, 397, 402, 330
    /* ITEM_TM43            */ .halfword 348, 397, 402, 331
    /* ITEM_TM44            */ .halfword 349, 397, 401, 332
    /* ITEM_TM45            */ .halfword 350, 397, 402, 333
    /* ITEM_TM46            */ .halfword 351, 397, 407, 334
    /* ITEM_TM47            */ .halfword 352, 397, 408, 335
    /* ITEM_TM48            */ .halfword 353, 397, 401, 336
    /* ITEM_TM49            */ .halfword 354, 397, 407, 337
    /* ITEM_TM50            */ .halfword 355, 397, 406, 338
    /* ITEM_TM51            */ .halfword 356, 397, 413,   0
    /* ITEM_TM52            */ .halfword 357, 397, 398,   0
    /* ITEM_TM53            */ .halfword 358, 397, 405,   0
    /* ITEM_TM54            */ .halfword 359, 397, 402,   0
    /* ITEM_TM55            */ .halfword 360, 397, 400,   0
    /* ITEM_TM56            */ .halfword 361, 397, 407,   0
    /* ITEM_TM57            */ .halfword 362, 397, 409,   0
    /* ITEM_TM58            */ .halfword 363, 397, 402,   0
    /* ITEM_TM59            */ .halfword 364, 397, 399,   0
    /* ITEM_TM60            */ .halfword 365, 397, 398,   0
    /* ITEM_TM61            */ .halfword 366, 397, 406,   0
    /* ITEM_TM62            */ .halfword 367, 397, 610,   0
    /* ITEM_TM63            */ .halfword 368, 397, 407,   0
    /* ITEM_TM64            */ .halfword 369, 397, 402,   0
    /* ITEM_TM65            */ .halfword 370, 397, 411,   0
    /* ITEM_TM66            */ .halfword 371, 397, 407,   0
    /* ITEM_TM67            */ .halfword 372, 397, 402,   0
    /* ITEM_TM68            */ .halfword 373, 397, 402,   0
    /* ITEM_TM69            */ .halfword 374, 397, 412,   0
    /* ITEM_TM70            */ .halfword 375, 397, 402,   0
    /* ITEM_TM71            */ .halfword 376, 397, 412,   0
    /* ITEM_TM72            */ .halfword 377, 397, 404,   0
    /* ITEM_TM73            */ .halfword 378, 397, 409,   0
    /* ITEM_TM74            */ .halfword 379, 397, 408,   0
    /* ITEM_TM75            */ .halfword 380, 397, 402,   0
    /* ITEM_TM76            */ .halfword 381, 397, 412,   0
    /* ITEM_TM77            */ .halfword 382, 397, 402,   0
    /* ITEM_TM78            */ .halfword 383, 397, 402,   0
    /* ITEM_TM79            */ .halfword 384, 397, 407,   0
    /* ITEM_TM80            */ .halfword 385, 397, 412,   0
    /* ITEM_TM81            */ .halfword 386, 397, 610,   0
    /* ITEM_TM82            */ .halfword 387, 397, 402,   0
    /* ITEM_TM83            */ .halfword 388, 397, 402,   0
    /* ITEM_TM84            */ .halfword 389, 397, 403,   0
    /* ITEM_TM85            */ .halfword 390, 397, 401,   0
    /* ITEM_TM86            */ .halfword 391, 397, 405,   0
    /* ITEM_TM87            */ .halfword 392, 397, 402,   0
    /* ITEM_TM88            */ .halfword 393, 397, 413,   0
    /* ITEM_TM89            */ .halfword 394, 397, 610,   0
    /* ITEM_TM90            */ .halfword 395, 397, 402,   0
    /* ITEM_TM91            */ .halfword 396, 397, 408,   0
    /* ITEM_TM92            */ .halfword 397, 397, 401,   0
    /* ITEM_HM01            */ .halfword 398, 414, 402, 339
    /* ITEM_HM02            */ .halfword 399, 414, 413, 340
    /* ITEM_HM03            */ .halfword 400, 414, 400, 341
    /* ITEM_HM04            */ .halfword 401, 414, 402, 342
    /* ITEM_HM05            */ .halfword 402, 414, 400, 343
    /* ITEM_HM06            */ .halfword 403, 414, 398, 344
    /* ITEM_HM07            */ .halfword 404, 414, 400, 345
    /* ITEM_HM08            */ .halfword 405, 414, 402, 346
    /* ITEM_EXPLORER_KIT    */ .halfword   0, 793, 794,   0
    /* ITEM_LOOT_SACK       */ .halfword 406, 550, 551,   0
    /* ITEM_RULE_BOOK       */ .halfword 407, 552, 553,   0
    /* ITEM_POKE_RADAR      */ .halfword 408, 697, 698,   0
    /* ITEM_POINT_CARD      */ .halfword 409, 681, 682,   0
    /* ITEM_JOURNAL         */ .halfword 410, 606, 607,   0
    /* ITEM_SEAL_CASE       */ .halfword 411, 671, 672,   0
    /* ITEM_FASHION_CASE    */ .halfword 412, 675, 676,   0
    /* ITEM_SEAL_BAG        */ .halfword 413, 673, 674,   0
    /* ITEM_PAL_PAD         */ .halfword 414, 661, 662,   0
    /* ITEM_WORKS_KEY       */ .halfword 415, 644, 645,   0
    /* ITEM_OLD_CHARM       */ .halfword 416, 604, 605,   0
    /* ITEM_GALACTIC_KEY    */ .halfword 417, 656, 657,   0
    /* ITEM_RED_CHAIN       */ .halfword 418, 679, 680,   0
    /* ITEM_TOWN_MAP        */ .halfword 419, 439, 440, 361
    /* ITEM_VS_SEEKER       */ .halfword 420, 441, 442, 362
    /* ITEM_COIN_CASE       */ .halfword 421, 349, 350, 260
    /* ITEM_OLD_ROD         */ .halfword 422, 353, 354, 262
    /* ITEM_GOOD_ROD        */ .halfword 423, 355, 356, 263
    /* ITEM_SUPER_ROD       */ .halfword 424, 357, 358, 264
    /* ITEM_SPRAYDUCK       */ .halfword 425, 363, 364,   0
    /* ITEM_POFFIN_CASE     */ .halfword 426, 373, 374,   0
    /* ITEM_BICYCLE         */ .halfword 427, 437, 438, 360
    /* ITEM_SUITE_KEY       */ .halfword 428, 429, 430,   0
    /* ITEM_OAKS_LETTER     */ .halfword 429, 375, 64 ,   0
    /* ITEM_LUNAR_WING      */ .halfword 430, 602, 603,   0
    /* ITEM_MEMBER_CARD     */ .halfword 431, 608, 609,   0
    /* ITEM_AZURE_FLUTE     */ .halfword 432, 677, 678,   0
    /* ITEM_SS_TICKET       */ .halfword 433, 359, 360, 265
    /* ITEM_CONTEST_PASS    */ .halfword 434, 361, 362, 266
    /* ITEM_MAGMA_STONE     */ .halfword 435, 596, 597,   0
    /* ITEM_PARCEL          */ .halfword 436, 415, 416, 349
    /* ITEM_COUPON_1        */ .halfword 437, 417, 418,   0
    /* ITEM_COUPON_2        */ .halfword 438, 419, 420,   0
    /* ITEM_COUPON_3        */ .halfword 439, 421, 422,   0
    /* ITEM_STORAGE_KEY     */ .halfword 440, 598, 599, 285
    /* ITEM_SECRETPOTION    */ .halfword 441, 600, 601,   0
    /* ITEM_VS_RECORDER     */ .halfword 442, 701, 702,   0
    /* ITEM_GRACIDEA        */ .halfword 443, 703, 704,   0
    /* ITEM_SECRET_KEY      */ .halfword 444, 705, 706, 351
    /* ITEM_APRICORN_BOX    */ .halfword 445, 709, 710,   0
    /* ITEM_UNOWN_REPORT    */ .halfword 446, 759, 760,   0
    /* ITEM_BERRY_POTS      */ .halfword 447, 711, 712,   0
    /* ITEM_DOWSING_MCHN    */ .halfword 448, 747, 748, 261
    /* ITEM_BLUE_CARD       */ .halfword 449, 761, 762,   0
    /* ITEM_SLOWPOKETAIL    */ .halfword 450, 763, 764,   0
    /* ITEM_CLEAR_BELL      */ .halfword 451, 765, 766,   0
    /* ITEM_CARD_KEY        */ .halfword 452, 767, 768, 355
    /* ITEM_BASEMENT_KEY    */ .halfword 453, 769, 770, 271
    /* ITEM_SQUIRTBOTTLE    */ .halfword 454, 713, 714,   0
    /* ITEM_RED_SCALE       */ .halfword 455, 771, 772,   0
    /* ITEM_LOST_ITEM       */ .halfword 456, 773, 774,   0
    /* ITEM_PASS            */ .halfword 457, 775, 776,   0
    /* ITEM_MACHINE_PART    */ .halfword 458, 777, 778,   0
    /* ITEM_SILVER_WING     */ .halfword 459, 779, 780,   0
    /* ITEM_RAINBOW_WING    */ .halfword 460, 781, 782,   0
    /* ITEM_MYSTERY_EGG     */ .halfword 461, 783, 784,   0
    /* ITEM_RED_APRICORN    */ .halfword 462, 733, 734,   0
    /* ITEM_YLW_APRICORN    */ .halfword 463, 737, 738,   0
    /* ITEM_BLU_APRICORN    */ .halfword 464, 735, 736,   0
    /* ITEM_GRN_APRICORN    */ .halfword 465, 739, 740,   0
    /* ITEM_PNK_APRICORN    */ .halfword 466, 741, 742,   0
    /* ITEM_WHT_APRICORN    */ .halfword 467, 743, 744,   0
    /* ITEM_BLK_APRICORN    */ .halfword 468, 745, 746,   0
    /* ITEM_FAST_BALL       */ .halfword 469, 723, 724,   0
    /* ITEM_LEVEL_BALL      */ .halfword 470, 717, 718,   0
    /* ITEM_LURE_BALL       */ .halfword 471, 715, 716,   0
    /* ITEM_HEAVY_BALL      */ .halfword 472, 721, 722,   0
    /* ITEM_LOVE_BALL       */ .halfword 473, 727, 728,   0
    /* ITEM_FRIEND_BALL     */ .halfword 474, 725, 726,   0
    /* ITEM_MOON_BALL       */ .halfword 475, 719, 720,   0
    /* ITEM_SPORT_BALL      */ .halfword 476, 731, 732,   0
    /* ITEM_PARK_BALL       */ .halfword 477, 729, 730,   0
    /* ITEM_PHOTO_ALBUM     */ .halfword 478, 606, 607,   0
    /* ITEM_GB_SOUNDS       */ .halfword 479, 785, 786,   0
    /* ITEM_TIDAL_BELL      */ .halfword 480, 787, 788,   0
    /* ITEM_RAGECANDYBAR    */ .halfword 481, 749, 750,   0
    /* ITEM_DATA_CARD_01    */ .halfword 482, 789, 790,   0
    /* ITEM_DATA_CARD_02    */ .halfword 483, 789, 790,   0
    /* ITEM_DATA_CARD_03    */ .halfword 484, 789, 790,   0
    /* ITEM_DATA_CARD_04    */ .halfword 485, 789, 790,   0
    /* ITEM_DATA_CARD_05    */ .halfword 486, 789, 790,   0
    /* ITEM_DATA_CARD_06    */ .halfword 487, 789, 790,   0
    /* ITEM_DATA_CARD_07    */ .halfword 488, 789, 790,   0
    /* ITEM_DATA_CARD_08    */ .halfword 489, 789, 790,   0
    /* ITEM_DATA_CARD_09    */ .halfword 490, 789, 790,   0
    /* ITEM_DATA_CARD_10    */ .halfword 491, 789, 790,   0
    /* ITEM_DATA_CARD_11    */ .halfword 492, 789, 790,   0
    /* ITEM_DATA_CARD_12    */ .halfword 493, 789, 790,   0
    /* ITEM_DATA_CARD_13    */ .halfword 494, 789, 790,   0
    /* ITEM_DATA_CARD_14    */ .halfword 495, 789, 790,   0
    /* ITEM_DATA_CARD_15    */ .halfword 496, 789, 790,   0
    /* ITEM_DATA_CARD_16    */ .halfword 497, 789, 790,   0
    /* ITEM_DATA_CARD_17    */ .halfword 498, 789, 790,   0
    /* ITEM_DATA_CARD_18    */ .halfword 499, 789, 790,   0
    /* ITEM_DATA_CARD_19    */ .halfword 500, 789, 790,   0
    /* ITEM_DATA_CARD_20    */ .halfword 501, 789, 790,   0
    /* ITEM_DATA_CARD_21    */ .halfword 502, 789, 790,   0
    /* ITEM_DATA_CARD_22    */ .halfword 503, 789, 790,   0
    /* ITEM_DATA_CARD_23    */ .halfword 504, 789, 790,   0
    /* ITEM_DATA_CARD_24    */ .halfword 505, 789, 790,   0
    /* ITEM_DATA_CARD_25    */ .halfword 506, 789, 790,   0
    /* ITEM_DATA_CARD_26    */ .halfword 507, 789, 790,   0
    /* ITEM_DATA_CARD_27    */ .halfword 508, 789, 790,   0
    /* ITEM_JADE_ORB        */ .halfword 509, 755, 756,   0
    /* ITEM_LOCK_CAPSULE    */ .halfword 510, 791, 792,   0
    /* ITEM_RED_ORB         */ .halfword 511, 751, 752, 276
    /* ITEM_BLUE_ORB        */ .halfword 512, 753, 754, 277
    /* ITEM_ENIGMA_STONE    */ .halfword 513, 757, 758,   0

.close


.open "base/overlay/overlay_0010.bin", 0x0221BE20

// ARM9 OVERLAY 10 OFFSET 0x3352
.org 0x0221F172
.area 0x0221F1E8 - 0x0221F172, 0xFF

hook_subroutine_0221F172_ov_0A:
    bl get_arceus_type_from_held_effect
    mov r7, r0
    b 0x221F3B4 // continue with the routine
    // this frees up until 221F1E8

.endarea


// ARM9 OVERLAY 10 OFFSET 0x36A0
.org 0x0221F4C0
.area 0x0221F536 - 0x0221F4C0, 0xFF

hook_subroutine_0221F4C0_ov_0A:
    bl get_arceus_type_from_held_effect
    mov r5, r0
    b 0x221F5E4 // continue with the routine
    // this frees up until 221F536

.endarea

.close


.open "base/overlay/overlay_0012.bin", 0x022378C0

.org 0x02251D20
.word type_effectiveness_table+1
.word type_effectiveness_table+2

.org 0x0225204C
.word type_effectiveness_table

.org 0x02252174
.word type_effectiveness_table

.org 0x022521C0
.word type_effectiveness_table+1
.word type_effectiveness_table+2

.org 0x02252640
.word type_effectiveness_table
.word type_effectiveness_table+1
.word type_effectiveness_table+2

.org 0x02252694
.word type_effectiveness_table

.org 0x022574A8
.word held_effect_type_boosters

.org 0x0225732C
	cmp r2, #NUM_TYPE_BOOSTERS


// ARM9 OVERLAY 12 OFFSET 0x20C3E
.org 0x022584FE
.area 0x02258572-., 0xFF

hook_subroutine_022584FE_ov_0C:
    bl get_arceus_type_from_held_effect
    mov r4, r0
    b 0x2258572
    // this frees up until 2258572

.endarea


// ARM9 OVERLAY 12 OFFSET 0x20E0C
.org 0x022586CC
.area 0x02258742-., 0xFF

hook_subroutine_022586CC_ov_0C:
    bl get_arceus_type_from_held_effect
    mov r5, r0
    b 0x22587F0
    // this frees up until 2258742

.endarea


// ARM9 OVERLAY 12 OFFSET 0x2135A
.org 0x02258C1A
.area 0x02258C90-., 0xFF

hook_subroutine_02258C1A_ov_0C:
    bl get_arceus_type_from_held_effect
    mov r5, r0
    b 0x2258D66
    // this frees up until 2258C90--we can put held_effect_type_boosters here to expand space for type table effectiveness

.endarea


.org 0x0226CC3C
type_effectiveness_table:
.byte TYPE_NORMAL, TYPE_ROCK, 0x05
.byte TYPE_NORMAL, TYPE_STEEL, 0x05
.byte TYPE_FIGHTING, TYPE_NORMAL, 0x14
.byte TYPE_FIGHTING, TYPE_FLYING, 0x05
.byte TYPE_FIGHTING, TYPE_POISON, 0x05
.byte TYPE_FIGHTING, TYPE_ROCK, 0x14
.byte TYPE_FIGHTING, TYPE_BUG, 0x05
.byte TYPE_FIGHTING, TYPE_STEEL, 0x14
.byte TYPE_FIGHTING, TYPE_FAIRY, 0x05
.byte TYPE_FIGHTING, TYPE_PSYCHIC, 0x05
.byte TYPE_FIGHTING, TYPE_ICE, 0x14
.byte TYPE_FIGHTING, TYPE_DARK, 0x14
.byte TYPE_FLYING, TYPE_FIGHTING, 0x14
.byte TYPE_FLYING, TYPE_ROCK, 0x05
.byte TYPE_FLYING, TYPE_BUG, 0x14
.byte TYPE_FLYING, TYPE_STEEL, 0x05
.byte TYPE_FLYING, TYPE_GRASS, 0x14
.byte TYPE_FLYING, TYPE_ELECTRIC, 0x05
.byte TYPE_POISON, TYPE_POISON, 0x05
.byte TYPE_POISON, TYPE_GROUND, 0x05
.byte TYPE_POISON, TYPE_ROCK, 0x05
.byte TYPE_POISON, TYPE_GHOST, 0x05
.byte TYPE_POISON, TYPE_STEEL, 0x00
.byte TYPE_POISON, TYPE_FAIRY, 0x14
.byte TYPE_POISON, TYPE_GRASS, 0x14
.byte TYPE_GROUND, TYPE_FLYING, 0x00
.byte TYPE_GROUND, TYPE_POISON, 0x14
.byte TYPE_GROUND, TYPE_ROCK, 0x14
.byte TYPE_GROUND, TYPE_BUG, 0x05
.byte TYPE_GROUND, TYPE_STEEL, 0x14
.byte TYPE_GROUND, TYPE_FIRE, 0x14
.byte TYPE_GROUND, TYPE_GRASS, 0x05
.byte TYPE_GROUND, TYPE_ELECTRIC, 0x14
.byte TYPE_ROCK, TYPE_FIGHTING, 0x05
.byte TYPE_ROCK, TYPE_FLYING, 0x14
.byte TYPE_ROCK, TYPE_GROUND, 0x05
.byte TYPE_ROCK, TYPE_BUG, 0x14
.byte TYPE_ROCK, TYPE_STEEL, 0x05
.byte TYPE_ROCK, TYPE_FIRE, 0x14
.byte TYPE_ROCK, TYPE_ICE, 0x14
.byte TYPE_BUG, TYPE_FIGHTING, 0x05
.byte TYPE_BUG, TYPE_FLYING, 0x05
.byte TYPE_BUG, TYPE_POISON, 0x05
.byte TYPE_BUG, TYPE_GHOST, 0x05
.byte TYPE_BUG, TYPE_STEEL, 0x05
.byte TYPE_BUG, TYPE_FAIRY, 0x05
.byte TYPE_BUG, TYPE_FIRE, 0x05
.byte TYPE_BUG, TYPE_GRASS, 0x14
.byte TYPE_BUG, TYPE_PSYCHIC, 0x14
.byte TYPE_BUG, TYPE_DARK, 0x14
.byte TYPE_GHOST, TYPE_NORMAL, 0x00
.byte TYPE_GHOST, TYPE_GHOST, 0x14
.byte TYPE_GHOST, TYPE_PSYCHIC, 0x14
.byte TYPE_GHOST, TYPE_DARK, 0x05
.byte TYPE_STEEL, TYPE_ROCK, 0x14
.byte TYPE_STEEL, TYPE_STEEL, 0x05
.byte TYPE_STEEL, TYPE_FAIRY, 0x14
.byte TYPE_STEEL, TYPE_FIRE, 0x05
.byte TYPE_STEEL, TYPE_WATER, 0x05
.byte TYPE_STEEL, TYPE_ELECTRIC, 0x05
.byte TYPE_STEEL, TYPE_ICE, 0x14
.byte TYPE_STEEL, TYPE_DARK, 0x0A
.byte TYPE_FAIRY, TYPE_FIGHTING, 0x14
.byte TYPE_FAIRY, TYPE_POISON, 0x05
.byte TYPE_FAIRY, TYPE_STEEL, 0x05
.byte TYPE_FAIRY, TYPE_FIRE, 0x05
.byte TYPE_FAIRY, TYPE_DRAGON, 0x14
.byte TYPE_FAIRY, TYPE_DARK, 0x14
.byte TYPE_FIRE, TYPE_ROCK, 0x05
.byte TYPE_FIRE, TYPE_BUG, 0x14
.byte TYPE_FIRE, TYPE_STEEL, 0x14
.byte TYPE_FIRE, TYPE_FIRE, 0x05
.byte TYPE_FIRE, TYPE_WATER, 0x05
.byte TYPE_FIRE, TYPE_GRASS, 0x14
.byte TYPE_FIRE, TYPE_ICE, 0x14
.byte TYPE_FIRE, TYPE_DRAGON, 0x05
.byte TYPE_WATER, TYPE_GROUND, 0x14
.byte TYPE_WATER, TYPE_ROCK, 0x14
.byte TYPE_WATER, TYPE_FIRE, 0x14
.byte TYPE_WATER, TYPE_WATER, 0x05
.byte TYPE_WATER, TYPE_GRASS, 0x05
.byte TYPE_WATER, TYPE_DRAGON, 0x05
.byte TYPE_GRASS, TYPE_FLYING, 0x05
.byte TYPE_GRASS, TYPE_POISON, 0x05
.byte TYPE_GRASS, TYPE_GROUND, 0x14
.byte TYPE_GRASS, TYPE_ROCK, 0x14
.byte TYPE_GRASS, TYPE_BUG, 0x05
.byte TYPE_GRASS, TYPE_STEEL, 0x05
.byte TYPE_GRASS, TYPE_FIRE, 0x05
.byte TYPE_GRASS, TYPE_WATER, 0x14
.byte TYPE_GRASS, TYPE_GRASS, 0x05
.byte TYPE_GRASS, TYPE_DRAGON, 0x05
.byte TYPE_ELECTRIC, TYPE_FLYING, 0x14
.byte TYPE_ELECTRIC, TYPE_GROUND, 0x00
.byte TYPE_ELECTRIC, TYPE_WATER, 0x14
.byte TYPE_ELECTRIC, TYPE_GRASS, 0x05
.byte TYPE_ELECTRIC, TYPE_ELECTRIC, 0x05
.byte TYPE_ELECTRIC, TYPE_DRAGON, 0x05
.byte TYPE_PSYCHIC, TYPE_FIGHTING, 0x14
.byte TYPE_PSYCHIC, TYPE_POISON, 0x14
.byte TYPE_PSYCHIC, TYPE_STEEL, 0x05
.byte TYPE_PSYCHIC, TYPE_PSYCHIC, 0x05
.byte TYPE_PSYCHIC, TYPE_DARK, 0x00
.byte TYPE_ICE, TYPE_FLYING, 0x14
.byte TYPE_ICE, TYPE_GROUND, 0x14
.byte TYPE_ICE, TYPE_STEEL, 0x05
.byte TYPE_ICE, TYPE_FIRE, 0x05
.byte TYPE_ICE, TYPE_WATER, 0x05
.byte TYPE_ICE, TYPE_GRASS, 0x14
.byte TYPE_ICE, TYPE_ICE, 0x05
.byte TYPE_ICE, TYPE_DRAGON, 0x14
.byte TYPE_DRAGON, TYPE_STEEL, 0x05
.byte TYPE_DRAGON, TYPE_FAIRY, 0x00
.byte TYPE_DARK, TYPE_FIGHTING, 0x05
.byte TYPE_DARK, TYPE_GHOST, 0x14
.byte TYPE_DARK, TYPE_FAIRY, 0x05
.byte TYPE_DARK, TYPE_PSYCHIC, 0x14
.byte TYPE_DARK, TYPE_DARK, 0x05
.byte 0xFE, 0xFE, 0x00
.byte TYPE_NORMAL, TYPE_GHOST, 0x00
.byte TYPE_FIGHTING, TYPE_GHOST, 0x00
.byte 0xFF, 0xFF, 0xFF

.close


.open "base/overlay/overlay_0018.bin", 0x021E5900

.orga 0x16505 // palette for fairy
.byte 3

.orga 0x16534 // gfx for fairy
.word 123

.close


.open "base/overlay/overlay_0006.bin", 0x0221BA00

.orga 0x290 // offset 290 of overlay 6, palette for move selection
.halfword 0x7EDF, 0xF23F, 0x6A1E, 0x59DD, 0xCD5B, 0xC117, 0xB4D6, 0x7F37

.close
