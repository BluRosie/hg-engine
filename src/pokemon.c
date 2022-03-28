#include "../include/types.h"
#include "../include/battle.h"
#include "../include/pokemon.h"
#include "../include/constants/ability.h"
#include "../include/constants/item.h"
#include "../include/constants/species.h"
#include "../include/constants/file.h"

extern struct ILLUSION_STRUCT gIllusionStruct;

typedef struct
{
    u16 arc_no;
    u16 index_chr;
    u16 index_pal;
    u16 strike_mons;
    u8 form_no;
    u8 dummy[3];
    u32 personal_rnd;
} MON_PIC;

struct FormData
{
    u16 species;
    u16 form_no;
    u16 need_rev;

    u16 file;
};

static const u16 sSpeciesToOWGfx[] =
{
    [SPECIES_NONE               ] = 0,
    [SPECIES_BULBASAUR          ] = 0,
    [SPECIES_IVYSAUR            ] = 1,
    [SPECIES_VENUSAUR           ] = 2,
    [SPECIES_CHARMANDER         ] = 4,
    [SPECIES_CHARMELEON         ] = 5,
    [SPECIES_CHARIZARD          ] = 6,
    [SPECIES_SQUIRTLE           ] = 7,
    [SPECIES_WARTORTLE          ] = 8,
    [SPECIES_BLASTOISE          ] = 9,
    [SPECIES_CATERPIE           ] = 10,
    [SPECIES_METAPOD            ] = 11,
    [SPECIES_BUTTERFREE         ] = 12,
    [SPECIES_WEEDLE             ] = 13,
    [SPECIES_KAKUNA             ] = 14,
    [SPECIES_BEEDRILL           ] = 15,
    [SPECIES_PIDGEY             ] = 16,
    [SPECIES_PIDGEOTTO          ] = 17,
    [SPECIES_PIDGEOT            ] = 18,
    [SPECIES_RATTATA            ] = 19,
    [SPECIES_RATICATE           ] = 20,
    [SPECIES_SPEAROW            ] = 21,
    [SPECIES_FEAROW             ] = 22,
    [SPECIES_EKANS              ] = 23,
    [SPECIES_ARBOK              ] = 24,
    [SPECIES_PIKACHU            ] = 25,
    [SPECIES_RAICHU             ] = 27,
    [SPECIES_SANDSHREW          ] = 28,
    [SPECIES_SANDSLASH          ] = 29,
    [SPECIES_NIDORAN_F          ] = 30,
    [SPECIES_NIDORINA           ] = 31,
    [SPECIES_NIDOQUEEN          ] = 32,
    [SPECIES_NIDORAN_M          ] = 33,
    [SPECIES_NIDORINO           ] = 34,
    [SPECIES_NIDOKING           ] = 35,
    [SPECIES_CLEFAIRY           ] = 36,
    [SPECIES_CLEFABLE           ] = 37,
    [SPECIES_VULPIX             ] = 38,
    [SPECIES_NINETALES          ] = 39,
    [SPECIES_JIGGLYPUFF         ] = 40,
    [SPECIES_WIGGLYTUFF         ] = 41,
    [SPECIES_ZUBAT              ] = 42,
    [SPECIES_GOLBAT             ] = 43,
    [SPECIES_ODDISH             ] = 44,
    [SPECIES_GLOOM              ] = 45,
    [SPECIES_VILEPLUME          ] = 46,
    [SPECIES_PARAS              ] = 47,
    [SPECIES_PARASECT           ] = 48,
    [SPECIES_VENONAT            ] = 49,
    [SPECIES_VENOMOTH           ] = 50,
    [SPECIES_DIGLETT            ] = 51,
    [SPECIES_DUGTRIO            ] = 52,
    [SPECIES_MEOWTH             ] = 53,
    [SPECIES_PERSIAN            ] = 54,
    [SPECIES_PSYDUCK            ] = 55,
    [SPECIES_GOLDUCK            ] = 56,
    [SPECIES_MANKEY             ] = 57,
    [SPECIES_PRIMEAPE           ] = 58,
    [SPECIES_GROWLITHE          ] = 59,
    [SPECIES_ARCANINE           ] = 60,
    [SPECIES_POLIWAG            ] = 61,
    [SPECIES_POLIWHIRL          ] = 62,
    [SPECIES_POLIWRATH          ] = 63,
    [SPECIES_ABRA               ] = 64,
    [SPECIES_KADABRA            ] = 65,
    [SPECIES_ALAKAZAM           ] = 66,
    [SPECIES_MACHOP             ] = 67,
    [SPECIES_MACHOKE            ] = 68,
    [SPECIES_MACHAMP            ] = 69,
    [SPECIES_BELLSPROUT         ] = 70,
    [SPECIES_WEEPINBELL         ] = 71,
    [SPECIES_VICTREEBEL         ] = 72,
    [SPECIES_TENTACOOL          ] = 73,
    [SPECIES_TENTACRUEL         ] = 74,
    [SPECIES_GEODUDE            ] = 75,
    [SPECIES_GRAVELER           ] = 76,
    [SPECIES_GOLEM              ] = 77,
    [SPECIES_PONYTA             ] = 78,
    [SPECIES_RAPIDASH           ] = 79,
    [SPECIES_SLOWPOKE           ] = 80,
    [SPECIES_SLOWBRO            ] = 81,
    [SPECIES_MAGNEMITE          ] = 82,
    [SPECIES_MAGNETON           ] = 83,
    [SPECIES_FARFETCHD          ] = 84,
    [SPECIES_DODUO              ] = 85,
    [SPECIES_DODRIO             ] = 86,
    [SPECIES_SEEL               ] = 87,
    [SPECIES_DEWGONG            ] = 88,
    [SPECIES_GRIMER             ] = 89,
    [SPECIES_MUK                ] = 90,
    [SPECIES_SHELLDER           ] = 91,
    [SPECIES_CLOYSTER           ] = 92,
    [SPECIES_GASTLY             ] = 93,
    [SPECIES_HAUNTER            ] = 94,
    [SPECIES_GENGAR             ] = 95,
    [SPECIES_ONIX               ] = 96,
    [SPECIES_DROWZEE            ] = 97,
    [SPECIES_HYPNO              ] = 98,
    [SPECIES_KRABBY             ] = 99,
    [SPECIES_KINGLER            ] = 100,
    [SPECIES_VOLTORB            ] = 101,
    [SPECIES_ELECTRODE          ] = 102,
    [SPECIES_EXEGGCUTE          ] = 103,
    [SPECIES_EXEGGUTOR          ] = 104,
    [SPECIES_CUBONE             ] = 105,
    [SPECIES_MAROWAK            ] = 106,
    [SPECIES_HITMONLEE          ] = 107,
    [SPECIES_HITMONCHAN         ] = 108,
    [SPECIES_LICKITUNG          ] = 109,
    [SPECIES_KOFFING            ] = 110,
    [SPECIES_WEEZING            ] = 111,
    [SPECIES_RHYHORN            ] = 112,
    [SPECIES_RHYDON             ] = 113,
    [SPECIES_CHANSEY            ] = 114,
    [SPECIES_TANGELA            ] = 115,
    [SPECIES_KANGASKHAN         ] = 116,
    [SPECIES_HORSEA             ] = 117,
    [SPECIES_SEADRA             ] = 118,
    [SPECIES_GOLDEEN            ] = 119,
    [SPECIES_SEAKING            ] = 120,
    [SPECIES_STARYU             ] = 121,
    [SPECIES_STARMIE            ] = 122,
    [SPECIES_MR_MIME            ] = 123,
    [SPECIES_SCYTHER            ] = 124,
    [SPECIES_JYNX               ] = 125,
    [SPECIES_ELECTABUZZ         ] = 126,
    [SPECIES_MAGMAR             ] = 127,
    [SPECIES_PINSIR             ] = 128,
    [SPECIES_TAUROS             ] = 129,
    [SPECIES_MAGIKARP           ] = 130,
    [SPECIES_GYARADOS           ] = 131,
    [SPECIES_LAPRAS             ] = 132,
    [SPECIES_DITTO              ] = 133,
    [SPECIES_EEVEE              ] = 134,
    [SPECIES_VAPOREON           ] = 135,
    [SPECIES_JOLTEON            ] = 136,
    [SPECIES_FLAREON            ] = 137,
    [SPECIES_PORYGON            ] = 138,
    [SPECIES_OMANYTE            ] = 139,
    [SPECIES_OMASTAR            ] = 140,
    [SPECIES_KABUTO             ] = 141,
    [SPECIES_KABUTOPS           ] = 142,
    [SPECIES_AERODACTYL         ] = 143,
    [SPECIES_SNORLAX            ] = 144,
    [SPECIES_ARTICUNO           ] = 145,
    [SPECIES_ZAPDOS             ] = 146,
    [SPECIES_MOLTRES            ] = 147,
    [SPECIES_DRATINI            ] = 148,
    [SPECIES_DRAGONAIR          ] = 149,
    [SPECIES_DRAGONITE          ] = 150,
    [SPECIES_MEWTWO             ] = 151,
    [SPECIES_MEW                ] = 152,
    [SPECIES_CHIKORITA          ] = 153,
    [SPECIES_BAYLEEF            ] = 154,
    [SPECIES_MEGANIUM           ] = 155,
    [SPECIES_CYNDAQUIL          ] = 157,
    [SPECIES_QUILAVA            ] = 158,
    [SPECIES_TYPHLOSION         ] = 159,
    [SPECIES_TOTODILE           ] = 160,
    [SPECIES_CROCONAW           ] = 161,
    [SPECIES_FERALIGATR         ] = 162,
    [SPECIES_SENTRET            ] = 163,
    [SPECIES_FURRET             ] = 164,
    [SPECIES_HOOTHOOT           ] = 165,
    [SPECIES_NOCTOWL            ] = 166,
    [SPECIES_LEDYBA             ] = 167,
    [SPECIES_LEDIAN             ] = 168,
    [SPECIES_SPINARAK           ] = 169,
    [SPECIES_ARIADOS            ] = 170,
    [SPECIES_CROBAT             ] = 171,
    [SPECIES_CHINCHOU           ] = 172,
    [SPECIES_LANTURN            ] = 173,
    [SPECIES_PICHU              ] = 174,
    [SPECIES_CLEFFA             ] = 176,
    [SPECIES_IGGLYBUFF          ] = 177,
    [SPECIES_TOGEPI             ] = 178,
    [SPECIES_TOGETIC            ] = 179,
    [SPECIES_NATU               ] = 180,
    [SPECIES_XATU               ] = 181,
    [SPECIES_MAREEP             ] = 182,
    [SPECIES_FLAAFFY            ] = 183,
    [SPECIES_AMPHAROS           ] = 184,
    [SPECIES_BELLOSSOM          ] = 185,
    [SPECIES_MARILL             ] = 186,
    [SPECIES_AZUMARILL          ] = 187,
    [SPECIES_SUDOWOODO          ] = 188,
    [SPECIES_POLITOED           ] = 189,
    [SPECIES_HOPPIP             ] = 190,
    [SPECIES_SKIPLOOM           ] = 191,
    [SPECIES_JUMPLUFF           ] = 192,
    [SPECIES_AIPOM              ] = 193,
    [SPECIES_SUNKERN            ] = 194,
    [SPECIES_SUNFLORA           ] = 195,
    [SPECIES_YANMA              ] = 196,
    [SPECIES_WOOPER             ] = 197,
    [SPECIES_QUAGSIRE           ] = 198,
    [SPECIES_ESPEON             ] = 199,
    [SPECIES_UMBREON            ] = 200,
    [SPECIES_MURKROW            ] = 201,
    [SPECIES_SLOWKING           ] = 202,
    [SPECIES_MISDREAVUS         ] = 203,
    [SPECIES_UNOWN              ] = 204,
    [SPECIES_WOBBUFFET          ] = 232,
    [SPECIES_GIRAFARIG          ] = 234,
    [SPECIES_PINECO             ] = 235,
    [SPECIES_FORRETRESS         ] = 236,
    [SPECIES_DUNSPARCE          ] = 237,
    [SPECIES_GLIGAR             ] = 238,
    [SPECIES_STEELIX            ] = 239,
    [SPECIES_SNUBBULL           ] = 241,
    [SPECIES_GRANBULL           ] = 242,
    [SPECIES_QWILFISH           ] = 243,
    [SPECIES_SCIZOR             ] = 244,
    [SPECIES_SHUCKLE            ] = 245,
    [SPECIES_HERACROSS          ] = 246,
    [SPECIES_SNEASEL            ] = 248,
    [SPECIES_TEDDIURSA          ] = 249,
    [SPECIES_URSARING           ] = 250,
    [SPECIES_SLUGMA             ] = 251,
    [SPECIES_MAGCARGO           ] = 252,
    [SPECIES_SWINUB             ] = 253,
    [SPECIES_PILOSWINE          ] = 254,
    [SPECIES_CORSOLA            ] = 255,
    [SPECIES_REMORAID           ] = 256,
    [SPECIES_OCTILLERY          ] = 257,
    [SPECIES_DELIBIRD           ] = 258,
    [SPECIES_MANTINE            ] = 259,
    [SPECIES_SKARMORY           ] = 260,
    [SPECIES_HOUNDOUR           ] = 261,
    [SPECIES_HOUNDOOM           ] = 262,
    [SPECIES_KINGDRA            ] = 263,
    [SPECIES_PHANPY             ] = 264,
    [SPECIES_DONPHAN            ] = 265,
    [SPECIES_PORYGON2           ] = 266,
    [SPECIES_STANTLER           ] = 267,
    [SPECIES_SMEARGLE           ] = 268,
    [SPECIES_TYROGUE            ] = 269,
    [SPECIES_HITMONTOP          ] = 270,
    [SPECIES_SMOOCHUM           ] = 271,
    [SPECIES_ELEKID             ] = 272,
    [SPECIES_MAGBY              ] = 273,
    [SPECIES_MILTANK            ] = 274,
    [SPECIES_BLISSEY            ] = 275,
    [SPECIES_RAIKOU             ] = 276,
    [SPECIES_ENTEI              ] = 277,
    [SPECIES_SUICUNE            ] = 278,
    [SPECIES_LARVITAR           ] = 279,
    [SPECIES_PUPITAR            ] = 280,
    [SPECIES_TYRANITAR          ] = 281,
    [SPECIES_LUGIA              ] = 282,
    [SPECIES_HO_OH              ] = 283,
    [SPECIES_CELEBI             ] = 284,
    [SPECIES_TREECKO            ] = 285,
    [SPECIES_GROVYLE            ] = 286,
    [SPECIES_SCEPTILE           ] = 287,
    [SPECIES_TORCHIC            ] = 288,
    [SPECIES_COMBUSKEN          ] = 289,
    [SPECIES_BLAZIKEN           ] = 290,
    [SPECIES_MUDKIP             ] = 291,
    [SPECIES_MARSHTOMP          ] = 292,
    [SPECIES_SWAMPERT           ] = 293,
    [SPECIES_POOCHYENA          ] = 294,
    [SPECIES_MIGHTYENA          ] = 295,
    [SPECIES_ZIGZAGOON          ] = 296,
    [SPECIES_LINOONE            ] = 297,
    [SPECIES_WURMPLE            ] = 298,
    [SPECIES_SILCOON            ] = 299,
    [SPECIES_BEAUTIFLY          ] = 300,
    [SPECIES_CASCOON            ] = 301,
    [SPECIES_DUSTOX             ] = 302,
    [SPECIES_LOTAD              ] = 303,
    [SPECIES_LOMBRE             ] = 304,
    [SPECIES_LUDICOLO           ] = 305,
    [SPECIES_SEEDOT             ] = 306,
    [SPECIES_NUZLEAF            ] = 307,
    [SPECIES_SHIFTRY            ] = 308,
    [SPECIES_TAILLOW            ] = 309,
    [SPECIES_SWELLOW            ] = 310,
    [SPECIES_WINGULL            ] = 311,
    [SPECIES_PELIPPER           ] = 312,
    [SPECIES_RALTS              ] = 313,
    [SPECIES_KIRLIA             ] = 314,
    [SPECIES_GARDEVOIR          ] = 315,
    [SPECIES_SURSKIT            ] = 316,
    [SPECIES_MASQUERAIN         ] = 317,
    [SPECIES_SHROOMISH          ] = 318,
    [SPECIES_BRELOOM            ] = 319,
    [SPECIES_SLAKOTH            ] = 320,
    [SPECIES_VIGOROTH           ] = 321,
    [SPECIES_SLAKING            ] = 322,
    [SPECIES_NINCADA            ] = 323,
    [SPECIES_NINJASK            ] = 324,
    [SPECIES_SHEDINJA           ] = 325,
    [SPECIES_WHISMUR            ] = 326,
    [SPECIES_LOUDRED            ] = 327,
    [SPECIES_EXPLOUD            ] = 328,
    [SPECIES_MAKUHITA           ] = 329,
    [SPECIES_HARIYAMA           ] = 330,
    [SPECIES_AZURILL            ] = 331,
    [SPECIES_NOSEPASS           ] = 332,
    [SPECIES_SKITTY             ] = 333,
    [SPECIES_DELCATTY           ] = 334,
    [SPECIES_SABLEYE            ] = 335,
    [SPECIES_MAWILE             ] = 336,
    [SPECIES_ARON               ] = 337,
    [SPECIES_LAIRON             ] = 338,
    [SPECIES_AGGRON             ] = 339,
    [SPECIES_MEDITITE           ] = 340,
    [SPECIES_MEDICHAM           ] = 341,
    [SPECIES_ELECTRIKE          ] = 342,
    [SPECIES_MANECTRIC          ] = 343,
    [SPECIES_PLUSLE             ] = 344,
    [SPECIES_MINUN              ] = 345,
    [SPECIES_VOLBEAT            ] = 346,
    [SPECIES_ILLUMISE           ] = 347,
    [SPECIES_ROSELIA            ] = 348,
    [SPECIES_GULPIN             ] = 349,
    [SPECIES_SWALOT             ] = 350,
    [SPECIES_CARVANHA           ] = 351,
    [SPECIES_SHARPEDO           ] = 352,
    [SPECIES_WAILMER            ] = 353,
    [SPECIES_WAILORD            ] = 354,
    [SPECIES_NUMEL              ] = 355,
    [SPECIES_CAMERUPT           ] = 356,
    [SPECIES_TORKOAL            ] = 357,
    [SPECIES_SPOINK             ] = 358,
    [SPECIES_GRUMPIG            ] = 359,
    [SPECIES_SPINDA             ] = 360,
    [SPECIES_TRAPINCH           ] = 361,
    [SPECIES_VIBRAVA            ] = 362,
    [SPECIES_FLYGON             ] = 363,
    [SPECIES_CACNEA             ] = 364,
    [SPECIES_CACTURNE           ] = 365,
    [SPECIES_SWABLU             ] = 366,
    [SPECIES_ALTARIA            ] = 367,
    [SPECIES_ZANGOOSE           ] = 368,
    [SPECIES_SEVIPER            ] = 369,
    [SPECIES_LUNATONE           ] = 370,
    [SPECIES_SOLROCK            ] = 371,
    [SPECIES_BARBOACH           ] = 372,
    [SPECIES_WHISCASH           ] = 373,
    [SPECIES_CORPHISH           ] = 374,
    [SPECIES_CRAWDAUNT          ] = 375,
    [SPECIES_BALTOY             ] = 376,
    [SPECIES_CLAYDOL            ] = 377,
    [SPECIES_LILEEP             ] = 378,
    [SPECIES_CRADILY            ] = 379,
    [SPECIES_ANORITH            ] = 380,
    [SPECIES_ARMALDO            ] = 381,
    [SPECIES_FEEBAS             ] = 382,
    [SPECIES_MILOTIC            ] = 383,
    [SPECIES_CASTFORM           ] = 384,
    [SPECIES_KECLEON            ] = 385,
    [SPECIES_SHUPPET            ] = 386,
    [SPECIES_BANETTE            ] = 387,
    [SPECIES_DUSKULL            ] = 388,
    [SPECIES_DUSCLOPS           ] = 389,
    [SPECIES_TROPIUS            ] = 390,
    [SPECIES_CHIMECHO           ] = 391,
    [SPECIES_ABSOL              ] = 392,
    [SPECIES_WYNAUT             ] = 393,
    [SPECIES_SNORUNT            ] = 394,
    [SPECIES_GLALIE             ] = 395,
    [SPECIES_SPHEAL             ] = 396,
    [SPECIES_SEALEO             ] = 397,
    [SPECIES_WALREIN            ] = 398,
    [SPECIES_CLAMPERL           ] = 399,
    [SPECIES_HUNTAIL            ] = 400,
    [SPECIES_GOREBYSS           ] = 401,
    [SPECIES_RELICANTH          ] = 402,
    [SPECIES_LUVDISC            ] = 403,
    [SPECIES_BAGON              ] = 404,
    [SPECIES_SHELGON            ] = 405,
    [SPECIES_SALAMENCE          ] = 406,
    [SPECIES_BELDUM             ] = 407,
    [SPECIES_METANG             ] = 408,
    [SPECIES_METAGROSS          ] = 409,
    [SPECIES_REGIROCK           ] = 410,
    [SPECIES_REGICE             ] = 411,
    [SPECIES_REGISTEEL          ] = 412,
    [SPECIES_LATIAS             ] = 413,
    [SPECIES_LATIOS             ] = 414,
    [SPECIES_KYOGRE             ] = 415,
    [SPECIES_GROUDON            ] = 416,
    [SPECIES_RAYQUAZA           ] = 417,
    [SPECIES_JIRACHI            ] = 418,
    [SPECIES_DEOXYS             ] = 419,
    [SPECIES_TURTWIG            ] = 423,
    [SPECIES_GROTLE             ] = 424,
    [SPECIES_TORTERRA           ] = 425,
    [SPECIES_CHIMCHAR           ] = 426,
    [SPECIES_MONFERNO           ] = 427,
    [SPECIES_INFERNAPE          ] = 428,
    [SPECIES_PIPLUP             ] = 429,
    [SPECIES_PRINPLUP           ] = 430,
    [SPECIES_EMPOLEON           ] = 431,
    [SPECIES_STARLY             ] = 432,
    [SPECIES_STARAVIA           ] = 433,
    [SPECIES_STARAPTOR          ] = 434,
    [SPECIES_BIDOOF             ] = 435,
    [SPECIES_BIBAREL            ] = 436,
    [SPECIES_KRICKETOT          ] = 437,
    [SPECIES_KRICKETUNE         ] = 438,
    [SPECIES_SHINX              ] = 439,
    [SPECIES_LUXIO              ] = 440,
    [SPECIES_LUXRAY             ] = 441,
    [SPECIES_BUDEW              ] = 442,
    [SPECIES_ROSERADE           ] = 443,
    [SPECIES_CRANIDOS           ] = 444,
    [SPECIES_RAMPARDOS          ] = 445,
    [SPECIES_SHIELDON           ] = 446,
    [SPECIES_BASTIODON          ] = 447,
    [SPECIES_BURMY              ] = 448,
    [SPECIES_WORMADAM           ] = 451,
    [SPECIES_MOTHIM             ] = 454,
    [SPECIES_COMBEE             ] = 455,
    [SPECIES_VESPIQUEN          ] = 457,
    [SPECIES_PACHIRISU          ] = 458,
    [SPECIES_BUIZEL             ] = 459,
    [SPECIES_FLOATZEL           ] = 460,
    [SPECIES_CHERUBI            ] = 461,
    [SPECIES_CHERRIM            ] = 462,
    [SPECIES_SHELLOS            ] = 463,
    [SPECIES_GASTRODON          ] = 465,
    [SPECIES_AMBIPOM            ] = 467,
    [SPECIES_DRIFLOON           ] = 468,
    [SPECIES_DRIFBLIM           ] = 469,
    [SPECIES_BUNEARY            ] = 470,
    [SPECIES_LOPUNNY            ] = 471,
    [SPECIES_MISMAGIUS          ] = 472,
    [SPECIES_HONCHKROW          ] = 473,
    [SPECIES_GLAMEOW            ] = 474,
    [SPECIES_PURUGLY            ] = 475,
    [SPECIES_CHINGLING          ] = 476,
    [SPECIES_STUNKY             ] = 477,
    [SPECIES_SKUNTANK           ] = 478,
    [SPECIES_BRONZOR            ] = 479,
    [SPECIES_BRONZONG           ] = 480,
    [SPECIES_BONSLY             ] = 481,
    [SPECIES_MIME_JR            ] = 482,
    [SPECIES_HAPPINY            ] = 483,
    [SPECIES_CHATOT             ] = 484,
    [SPECIES_SPIRITOMB          ] = 485,
    [SPECIES_GIBLE              ] = 486,
    [SPECIES_GABITE             ] = 488,
    [SPECIES_GARCHOMP           ] = 490,
    [SPECIES_MUNCHLAX           ] = 492,
    [SPECIES_RIOLU              ] = 493,
    [SPECIES_LUCARIO            ] = 494,
    [SPECIES_HIPPOPOTAS         ] = 495,
    [SPECIES_HIPPOWDON          ] = 497,
    [SPECIES_SKORUPI            ] = 499,
    [SPECIES_DRAPION            ] = 500,
    [SPECIES_CROAGUNK           ] = 501,
    [SPECIES_TOXICROAK          ] = 502,
    [SPECIES_CARNIVINE          ] = 503,
    [SPECIES_FINNEON            ] = 504,
    [SPECIES_LUMINEON           ] = 505,
    [SPECIES_MANTYKE            ] = 506,
    [SPECIES_SNOVER             ] = 507,
    [SPECIES_ABOMASNOW          ] = 508,
    [SPECIES_WEAVILE            ] = 509,
    [SPECIES_MAGNEZONE          ] = 510,
    [SPECIES_LICKILICKY         ] = 511,
    [SPECIES_RHYPERIOR          ] = 512,
    [SPECIES_TANGROWTH          ] = 513,
    [SPECIES_ELECTIVIRE         ] = 514,
    [SPECIES_MAGMORTAR          ] = 515,
    [SPECIES_TOGEKISS           ] = 516,
    [SPECIES_YANMEGA            ] = 517,
    [SPECIES_LEAFEON            ] = 518,
    [SPECIES_GLACEON            ] = 519,
    [SPECIES_GLISCOR            ] = 520,
    [SPECIES_MAMOSWINE          ] = 521,
    [SPECIES_PORYGON_Z          ] = 522,
    [SPECIES_GALLADE            ] = 523,
    [SPECIES_PROBOPASS          ] = 524,
    [SPECIES_DUSKNOIR           ] = 525,
    [SPECIES_FROSLASS           ] = 526,
    [SPECIES_ROTOM              ] = 527,
    [SPECIES_UXIE               ] = 533,
    [SPECIES_MESPRIT            ] = 534,
    [SPECIES_AZELF              ] = 535,
    [SPECIES_DIALGA             ] = 536,
    [SPECIES_PALKIA             ] = 537,
    [SPECIES_HEATRAN            ] = 538,
    [SPECIES_REGIGIGAS          ] = 539,
    [SPECIES_GIRATINA           ] = 540,
    [SPECIES_CRESSELIA          ] = 542,
    [SPECIES_PHIONE             ] = 543,
    [SPECIES_MANAPHY            ] = 544,
    [SPECIES_DARKRAI            ] = 545,
    [SPECIES_SHAYMIN            ] = 546,
    [SPECIES_ARCEUS             ] = 548,
    [SPECIES_EGG                ] = 0,
    [SPECIES_BAD_EGG            ] = 0,
    [SPECIES_DEOXYS_ATTACK      ] = 0,
    [SPECIES_DEOXYS_DEFENSE     ] = 0,
    [SPECIES_DEOXYS_SPEED       ] = 0,
    [SPECIES_WORMADAM_SANDY     ] = 0,
    [SPECIES_WORMADAM_TRASHY    ] = 0,
    [SPECIES_GIRATINA_ORIGIN    ] = 0,
    [SPECIES_SHAYMIN_SKY        ] = 0,
    [SPECIES_ROTOM_HEAT         ] = 0,
    [SPECIES_ROTOM_WASH         ] = 0,
    [SPECIES_ROTOM_FROST        ] = 0,
    [SPECIES_ROTOM_FAN          ] = 0,
    [SPECIES_ROTOM_MOW          ] = 0,
    [SPECIES_508                ] = 0,
    [SPECIES_509                ] = 0,
    [SPECIES_510                ] = 0,
    [SPECIES_511                ] = 0,
    [SPECIES_512                ] = 0,
    [SPECIES_513                ] = 0,
    [SPECIES_514                ] = 0,
    [SPECIES_515                ] = 0,
    [SPECIES_516                ] = 0,
    [SPECIES_517                ] = 0,
    [SPECIES_518                ] = 0,
    [SPECIES_519                ] = 0,
    [SPECIES_520                ] = 0,
    [SPECIES_521                ] = 0,
    [SPECIES_522                ] = 0,
    [SPECIES_523                ] = 0,
    [SPECIES_524                ] = 0,
    [SPECIES_525                ] = 0,
    [SPECIES_526                ] = 0,
    [SPECIES_527                ] = 0,
    [SPECIES_528                ] = 0,
    [SPECIES_529                ] = 0,
    [SPECIES_530                ] = 0,
    [SPECIES_531                ] = 0,
    [SPECIES_532                ] = 0,
    [SPECIES_533                ] = 0,
    [SPECIES_534                ] = 0,
    [SPECIES_535                ] = 0,
    [SPECIES_536                ] = 0,
    [SPECIES_537                ] = 0,
    [SPECIES_538                ] = 0,
    [SPECIES_539                ] = 0,
    [SPECIES_540                ] = 0,
    [SPECIES_541                ] = 0,
    [SPECIES_542                ] = 0,
    [SPECIES_543                ] = 0,
    [SPECIES_VICTINI            ] = 566,
    [SPECIES_SNIVY              ] = 567,
    [SPECIES_SERVINE            ] = 568,
    [SPECIES_SERPERIOR          ] = 569,
    [SPECIES_TEPIG              ] = 570,
    [SPECIES_PIGNITE            ] = 571,
    [SPECIES_EMBOAR             ] = 572,
    [SPECIES_OSHAWOTT           ] = 573,
    [SPECIES_DEWOTT             ] = 574,
    [SPECIES_SAMUROTT           ] = 575,
    [SPECIES_PATRAT             ] = 576,
    [SPECIES_WATCHOG            ] = 577,
    [SPECIES_LILLIPUP           ] = 578,
    [SPECIES_HERDIER            ] = 579,
    [SPECIES_STOUTLAND          ] = 580,
    [SPECIES_PURRLOIN           ] = 581,
    [SPECIES_LIEPARD            ] = 582,
    [SPECIES_PANSAGE            ] = 583,
    [SPECIES_SIMISAGE           ] = 584,
    [SPECIES_PANSEAR            ] = 585,
    [SPECIES_SIMISEAR           ] = 586,
    [SPECIES_PANPOUR            ] = 587,
    [SPECIES_SIMIPOUR           ] = 588,
    [SPECIES_MUNNA              ] = 589,
    [SPECIES_MUSHARNA           ] = 590,
    [SPECIES_PIDOVE             ] = 591,
    [SPECIES_TRANQUILL          ] = 592,
    [SPECIES_UNFEZANT           ] = 593,
    [SPECIES_BLITZLE            ] = 595,
    [SPECIES_ZEBSTRIKA          ] = 596,
    [SPECIES_ROGGENROLA         ] = 597,
    [SPECIES_BOLDORE            ] = 598,
    [SPECIES_GIGALITH           ] = 599,
    [SPECIES_WOOBAT             ] = 600,
    [SPECIES_SWOOBAT            ] = 601,
    [SPECIES_DRILBUR            ] = 602,
    [SPECIES_EXCADRILL          ] = 603,
    [SPECIES_AUDINO             ] = 604,
    [SPECIES_TIMBURR            ] = 605,
    [SPECIES_GURDURR            ] = 606,
    [SPECIES_CONKELDURR         ] = 607,
    [SPECIES_TYMPOLE            ] = 608,
    [SPECIES_PALPITOAD          ] = 609,
    [SPECIES_SEISMITOAD         ] = 610,
    [SPECIES_THROH              ] = 611,
    [SPECIES_SAWK               ] = 612,
    [SPECIES_SEWADDLE           ] = 613,
    [SPECIES_SWADLOON           ] = 614,
    [SPECIES_LEAVANNY           ] = 615,
    [SPECIES_VENIPEDE           ] = 616,
    [SPECIES_WHIRLIPEDE         ] = 617,
    [SPECIES_SCOLIPEDE          ] = 618,
    [SPECIES_COTTONEE           ] = 619,
    [SPECIES_WHIMSICOTT         ] = 620,
    [SPECIES_PETILIL            ] = 621,
    [SPECIES_LILLIGANT          ] = 622,
    [SPECIES_BASCULIN           ] = 623,
    [SPECIES_SANDILE            ] = 625,
    [SPECIES_KROKOROK           ] = 626,
    [SPECIES_KROOKODILE         ] = 627,
    [SPECIES_DARUMAKA           ] = 628,
    [SPECIES_DARMANITAN         ] = 629,
    [SPECIES_MARACTUS           ] = 631,
    [SPECIES_DWEBBLE            ] = 632,
    [SPECIES_CRUSTLE            ] = 633,
    [SPECIES_SCRAGGY            ] = 634,
    [SPECIES_SCRAFTY            ] = 635,
    [SPECIES_SIGILYPH           ] = 636,
    [SPECIES_YAMASK             ] = 637,
    [SPECIES_COFAGRIGUS         ] = 638,
    [SPECIES_TIRTOUGA           ] = 639,
    [SPECIES_CARRACOSTA         ] = 640,
    [SPECIES_ARCHEN             ] = 641,
    [SPECIES_ARCHEOPS           ] = 642,
    [SPECIES_TRUBBISH           ] = 643,
    [SPECIES_GARBODOR           ] = 644,
    [SPECIES_ZORUA              ] = 645,
    [SPECIES_ZOROARK            ] = 646,
    [SPECIES_MINCCINO           ] = 647,
    [SPECIES_CINCCINO           ] = 648,
    [SPECIES_GOTHITA            ] = 649,
    [SPECIES_GOTHORITA          ] = 650,
    [SPECIES_GOTHITELLE         ] = 651,
    [SPECIES_SOLOSIS            ] = 652,
    [SPECIES_DUOSION            ] = 653,
    [SPECIES_REUNICLUS          ] = 654,
    [SPECIES_DUCKLETT           ] = 655,
    [SPECIES_SWANNA             ] = 656,
    [SPECIES_VANILLITE          ] = 657,
    [SPECIES_VANILLISH          ] = 658,
    [SPECIES_VANILLUXE          ] = 659,
    [SPECIES_DEERLING           ] = 660,
    [SPECIES_SAWSBUCK           ] = 664,
    [SPECIES_EMOLGA             ] = 668,
    [SPECIES_KARRABLAST         ] = 669,
    [SPECIES_ESCAVALIER         ] = 670,
    [SPECIES_FOONGUS            ] = 671,
    [SPECIES_AMOONGUSS          ] = 672,
    [SPECIES_FRILLISH           ] = 673,
    [SPECIES_JELLICENT          ] = 675,
    [SPECIES_ALOMOMOLA          ] = 677,
    [SPECIES_JOLTIK             ] = 678,
    [SPECIES_GALVANTULA         ] = 679,
    [SPECIES_FERROSEED          ] = 680,
    [SPECIES_FERROTHORN         ] = 681,
    [SPECIES_KLINK              ] = 682,
    [SPECIES_KLANG              ] = 683,
    [SPECIES_KLINKLANG          ] = 684,
    [SPECIES_TYNAMO             ] = 685,
    [SPECIES_EELEKTRIK          ] = 686,
    [SPECIES_EELEKTROSS         ] = 687,
    [SPECIES_ELGYEM             ] = 688,
    [SPECIES_BEHEEYEM           ] = 689,
    [SPECIES_LITWICK            ] = 690,
    [SPECIES_LAMPENT            ] = 691,
    [SPECIES_CHANDELURE         ] = 692,
    [SPECIES_AXEW               ] = 693,
    [SPECIES_FRAXURE            ] = 694,
    [SPECIES_HAXORUS            ] = 695,
    [SPECIES_CUBCHOO            ] = 696,
    [SPECIES_BEARTIC            ] = 697,
    [SPECIES_CRYOGONAL          ] = 698,
    [SPECIES_SHELMET            ] = 699,
    [SPECIES_ACCELGOR           ] = 700,
    [SPECIES_STUNFISK           ] = 701,
    [SPECIES_MIENFOO            ] = 702,
    [SPECIES_MIENSHAO           ] = 703,
    [SPECIES_DRUDDIGON          ] = 704,
    [SPECIES_GOLETT             ] = 705,
    [SPECIES_GOLURK             ] = 706,
    [SPECIES_PAWNIARD           ] = 707,
    [SPECIES_BISHARP            ] = 708,
    [SPECIES_BOUFFALANT         ] = 709,
    [SPECIES_RUFFLET            ] = 710,
    [SPECIES_BRAVIARY           ] = 711,
    [SPECIES_VULLABY            ] = 712,
    [SPECIES_MANDIBUZZ          ] = 713,
    [SPECIES_HEATMOR            ] = 714,
    [SPECIES_DURANT             ] = 715,
    [SPECIES_DEINO              ] = 716,
    [SPECIES_ZWEILOUS           ] = 717,
    [SPECIES_HYDREIGON          ] = 718,
    [SPECIES_LARVESTA           ] = 719,
    [SPECIES_VOLCARONA          ] = 720,
    [SPECIES_COBALION           ] = 721,
    [SPECIES_TERRAKION          ] = 722,
    [SPECIES_VIRIZION           ] = 723,
    [SPECIES_TORNADUS           ] = 724,
    [SPECIES_THUNDURUS          ] = 726,
    [SPECIES_RESHIRAM           ] = 728,
    [SPECIES_ZEKROM             ] = 729,
    [SPECIES_LANDORUS           ] = 730,
    [SPECIES_KYUREM             ] = 732,
    [SPECIES_KELDEO             ] = 733,
    [SPECIES_MELOETTA           ] = 734,
    [SPECIES_GENESECT           ] = 736,
    [SPECIES_MEGA_VENUSAUR      ] = 0,
    [SPECIES_MEGA_CHARIZARD_X   ] = 0,
    [SPECIES_MEGA_CHARIZARD_Y   ] = 0,
    [SPECIES_MEGA_BLASTOISE     ] = 0,
    [SPECIES_MEGA_BEEDRILL      ] = 0,
    [SPECIES_MEGA_PIDGEOT       ] = 0,
    [SPECIES_MEGA_ALAKAZAM      ] = 0,
    [SPECIES_MEGA_SLOWBRO       ] = 0,
    [SPECIES_MEGA_GENGAR        ] = 0,
    [SPECIES_MEGA_KANGASKHAN    ] = 0,
    [SPECIES_MEGA_PINSIR        ] = 0,
    [SPECIES_MEGA_GYARADOS      ] = 0,
    [SPECIES_MEGA_AERODACTYL    ] = 0,
    [SPECIES_MEGA_MEWTWO_X      ] = 0,
    [SPECIES_MEGA_MEWTWO_Y      ] = 0,
    [SPECIES_MEGA_AMPHAROS      ] = 0,
    [SPECIES_MEGA_STEELIX       ] = 0,
    [SPECIES_MEGA_SCIZOR        ] = 0,
    [SPECIES_MEGA_HERACROSS     ] = 0,
    [SPECIES_MEGA_HOUNDOOM      ] = 0,
    [SPECIES_MEGA_TYRANITAR     ] = 0,
    [SPECIES_MEGA_SCEPTILE      ] = 0,
    [SPECIES_MEGA_BLAZIKEN      ] = 0,
    [SPECIES_MEGA_SWAMPERT      ] = 0,
    [SPECIES_MEGA_GARDEVOIR     ] = 0,
    [SPECIES_MEGA_SABLEYE       ] = 0,
    [SPECIES_MEGA_MAWILE        ] = 0,
    [SPECIES_MEGA_AGGRON        ] = 0,
    [SPECIES_MEGA_MEDICHAM      ] = 0,
    [SPECIES_MEGA_MANECTRIC     ] = 0,
    [SPECIES_MEGA_SHARPEDO      ] = 0,
    [SPECIES_MEGA_CAMERUPT      ] = 0,
    [SPECIES_MEGA_ALTARIA       ] = 0,
    [SPECIES_MEGA_BANETTE       ] = 0,
    [SPECIES_MEGA_ABSOL         ] = 0,
    [SPECIES_MEGA_GLALIE        ] = 0,
    [SPECIES_MEGA_SALAMENCE     ] = 0,
    [SPECIES_MEGA_METAGROSS     ] = 0,
    [SPECIES_MEGA_LATIAS        ] = 0,
    [SPECIES_MEGA_LATIOS        ] = 0,
    [SPECIES_MEGA_RAYQUAZA      ] = 0,
    [SPECIES_MEGA_LOPUNNY       ] = 0,
    [SPECIES_MEGA_GARCHOMP      ] = 0,
    [SPECIES_MEGA_LUCARIO       ] = 0,
    [SPECIES_MEGA_ABOMASNOW     ] = 0,
    [SPECIES_MEGA_GALLADE       ] = 0,
    [SPECIES_MEGA_AUDINO        ] = 0,
    [SPECIES_MEGA_DIANCIE       ] = 0,













    [SPECIES_DARMANITAN_ZEN_MODE] = 0,
};


const struct FormData PokeFormDataTbl[]=
{
    {
        .species = SPECIES_VENUSAUR,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_VENUSAUR,
    },
    {
        .species = SPECIES_CHARIZARD,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_CHARIZARD_X,
    },
    {
        .species = SPECIES_CHARIZARD,
        .form_no = 2,
        .need_rev = 1,
        .file = SPECIES_MEGA_CHARIZARD_Y,
    },
    {
        .species = SPECIES_BLASTOISE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_BLASTOISE,
    },
    {
        .species = SPECIES_BEEDRILL,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_BEEDRILL,
    },
    {
        .species = SPECIES_PIDGEOT,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_PIDGEOT,
    },
    {
        .species = SPECIES_ALAKAZAM,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_ALAKAZAM,
    },
    {
        .species = SPECIES_SLOWBRO,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_SLOWBRO,
    },
    {
        .species = SPECIES_GENGAR,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_GENGAR,
    },
    {
        .species = SPECIES_KANGASKHAN,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_KANGASKHAN,
    },
    {
        .species = SPECIES_PINSIR,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_PINSIR,
    },
    {
        .species = SPECIES_GYARADOS,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_GYARADOS,
    },
    {
        .species = SPECIES_AERODACTYL,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_AERODACTYL,
    },
    {
        .species = SPECIES_MEWTWO,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_MEWTWO_X,
    },
    {
        .species = SPECIES_MEWTWO,
        .form_no = 2,
        .need_rev = 1,
        .file = SPECIES_MEGA_MEWTWO_Y,
    },
    {
        .species = SPECIES_AMPHAROS,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_AMPHAROS,
    },
    {
        .species = SPECIES_STEELIX,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_STEELIX,
    },
    {
        .species = SPECIES_SCIZOR,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_SCIZOR,
    },
    {
        .species = SPECIES_HERACROSS,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_HERACROSS,
    },
    {
        .species = SPECIES_HOUNDOOM,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_HOUNDOOM,
    },
    {
        .species = SPECIES_TYRANITAR,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_TYRANITAR,
    },
    {
        .species = SPECIES_SCEPTILE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_SCEPTILE,
    },
    {
        .species = SPECIES_BLAZIKEN,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_BLAZIKEN,
    },
    {
        .species = SPECIES_SWAMPERT,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_SWAMPERT,
    },
    {
        .species = SPECIES_GARDEVOIR,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_GARDEVOIR,
    },
    {
        .species = SPECIES_SABLEYE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_SABLEYE,
    },
    {
        .species = SPECIES_MAWILE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_MAWILE,
    },
    {
        .species = SPECIES_AGGRON,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_AGGRON,
    },
    {
        .species = SPECIES_MEDICHAM,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_MEDICHAM,
    },
    {
        .species = SPECIES_MANECTRIC,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_MANECTRIC,
    },
    {
        .species = SPECIES_SHARPEDO,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_SHARPEDO,
    },
    {
        .species = SPECIES_CAMERUPT,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_CAMERUPT,
    },
    {
        .species = SPECIES_ALTARIA,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_ALTARIA,
    },
    {
        .species = SPECIES_BANETTE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_BANETTE,
    },
    {
        .species = SPECIES_ABSOL,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_ABSOL,
    },
    {
        .species = SPECIES_GLALIE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_GLALIE,
    },
    {
        .species = SPECIES_SALAMENCE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_SALAMENCE,
    },
    {
        .species = SPECIES_METAGROSS,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_METAGROSS,
    },
    {
        .species = SPECIES_LATIAS,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_LATIAS,
    },
    {
        .species = SPECIES_LATIOS,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_LATIOS,
    },
    /*{
        .species = SPECIES_RAYQUAZA,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_RAYQUAZA,
    },*/
    {
        .species = SPECIES_LOPUNNY,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_LOPUNNY,
    },
    {
        .species = SPECIES_GARCHOMP,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_GARCHOMP,
    },
    {
        .species = SPECIES_LUCARIO,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_LUCARIO,
    },
    {
        .species = SPECIES_ABOMASNOW,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_ABOMASNOW,
    },
    {
        .species = SPECIES_GALLADE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_GALLADE,
    },
    {
        .species = SPECIES_AUDINO,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_AUDINO,
    },
    {
        .species = SPECIES_DIANCIE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_DIANCIE,
    },

    /**alolan forms**/
    {
            .species = SPECIES_RATTATA,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_RATTATA_ALOLAN,
    },
    {
            .species = SPECIES_RATICATE,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_RATICATE_ALOLAN,
    },
    {
            .species = SPECIES_RAICHU,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_RAICHU_ALOLAN,
    },
    {
            .species = SPECIES_SANDSHREW,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_SANDSHREW_ALOLAN,
    },
    {
            .species = SPECIES_SANDSLASH,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_SANDSLASH_ALOLAN,
    },
    {
            .species = SPECIES_VULPIX,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_VULPIX_ALOLAN,
    },
    {
            .species = SPECIES_NINETALES,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_NINETALES_ALOLAN,
    },
    {
            .species = SPECIES_DIGLETT,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_DIGLETT_ALOLAN,
    },
    {
            .species = SPECIES_DUGTRIO,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_DUGTRIO_ALOLAN,
    },
    {
            .species = SPECIES_MEOWTH,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_MEOWTH_ALOLAN,
    },
    {
            .species = SPECIES_PERSIAN,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_PERSIAN_ALOLAN,
    },
    {
            .species = SPECIES_GEODUDE,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_GEODUDE_ALOLAN,
    },
    {
            .species = SPECIES_GRAVELER,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_GRAVELER_ALOLAN,
    },
    {
            .species = SPECIES_GOLEM,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_GOLEM_ALOLAN,
    },
    {
            .species = SPECIES_GRIMER,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_GRIMER_ALOLAN,
    },
    {
            .species = SPECIES_MUK,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_MUK_ALOLAN,
    },
    {
            .species = SPECIES_EXEGGUTOR,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_EXEGGUTOR_ALOLAN,
    },
    {
            .species = SPECIES_MAROWAK,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_MAROWAK_ALOLAN,
    },

    /**galarian forms**/
    {
            .species = SPECIES_MEOWTH,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_MEOWTH_GALARIAN,
    },
    {
            .species = SPECIES_PONYTA,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_PONYTA_GALARIAN,
    },
    {
            .species = SPECIES_RAPIDASH,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_RAPIDASH_GALARIAN,
    },
    {
            .species = SPECIES_SLOWPOKE,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_SLOWPOKE_GALARIAN,
    },
    {
            .species = SPECIES_SLOWBRO,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_SLOWBRO_GALARIAN,
    },
    {
            .species = SPECIES_FARFETCHD,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_FARFETCHD_GALARIAN,
    },
    {
            .species = SPECIES_WEEZING,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_WEEZING_GALARIAN,
    },
    {
            .species = SPECIES_MR_MIME,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_MR_MIME_GALARIAN,
    },
    {
            .species = SPECIES_ARTICUNO,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_ARTICUNO_GALARIAN,
    },
    {
            .species = SPECIES_ZAPDOS,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_ZAPDOS_GALARIAN,
    },
    {
            .species = SPECIES_MOLTRES,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_MOLTRES_GALARIAN,
    },
    {
            .species = SPECIES_SLOWKING,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_SLOWKING_GALARIAN,
    },
    {
            .species = SPECIES_CORSOLA,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_CORSOLA_GALARIAN,
    },
    {
            .species = SPECIES_ZIGZAGOON,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_ZIGZAGOON_GALARIAN,
    },
    {
            .species = SPECIES_LINOONE,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_LINOONE_GALARIAN,
    },
    {
            .species = SPECIES_DARUMAKA,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_DARUMAKA_GALARIAN,
    },
    {
            .species = SPECIES_DARMANITAN,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_DARMANITAN_GALARIAN,
    },
    {
            .species = SPECIES_YAMASK,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_YAMASK_GALARIAN,
    },
    {
            .species = SPECIES_STUNFISK,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_STUNFISK_GALARIAN,
    },

    /**cosmetic forms**/
    {
            .species = SPECIES_PIKACHU,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_PIKACHU_COSPLAY,
    },
    {
            .species = SPECIES_PIKACHU,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_PIKACHU_ROCK_STAR,
    },
    {
            .species = SPECIES_PIKACHU,
            .form_no = 3,
            .need_rev = 0,
            .file = SPECIES_PIKACHU_BELLE,
    },
    {
            .species = SPECIES_PIKACHU,
            .form_no = 4,
            .need_rev = 0,
            .file = SPECIES_PIKACHU_POP_STAR,
    },
    {
            .species = SPECIES_PIKACHU,
            .form_no = 5,
            .need_rev = 0,
            .file = SPECIES_PIKACHU_PH_D,
    },
    {
            .species = SPECIES_PIKACHU,
            .form_no = 6,
            .need_rev = 0,
            .file = SPECIES_PIKACHU_LIBRE,
    },
    {
            .species = SPECIES_PIKACHU,
            .form_no = 7,
            .need_rev = 0,
            .file = SPECIES_PIKACHU_ORIGINAL_CAP,
    },
    {
            .species = SPECIES_PIKACHU,
            .form_no = 8,
            .need_rev = 0,
            .file = SPECIES_PIKACHU_HOENN_CAP,
    },
    {
            .species = SPECIES_PIKACHU,
            .form_no = 9,
            .need_rev = 0,
            .file = SPECIES_PIKACHU_SINNOH_CAP,
    },
    {
            .species = SPECIES_PIKACHU,
            .form_no = 10,
            .need_rev = 0,
            .file = SPECIES_PIKACHU_UNOVA_CAP,
    },
    {
            .species = SPECIES_PIKACHU,
            .form_no = 11,
            .need_rev = 0,
            .file = SPECIES_PIKACHU_KALOS_CAP,
    },
    {
            .species = SPECIES_PIKACHU,
            .form_no = 12,
            .need_rev = 0,
            .file = SPECIES_PIKACHU_ALOLA_CAP,
    },
    {
            .species = SPECIES_PIKACHU,
            .form_no = 13,
            .need_rev = 0,
            .file = SPECIES_PIKACHU_PARTNER_CAP,
    },
    {
            .species = SPECIES_PIKACHU,
            .form_no = 14,
            .need_rev = 0,
            .file = SPECIES_PIKACHU_WORLD_CAP,
    },
    {
            .species = SPECIES_BASCULIN,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_BASCULIN_BLUE_STRIPED,
    },
    {
            .species = SPECIES_BASCULIN,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_BASCULIN_WHITE_STRIPED,
    },
    {
            .species = SPECIES_DEERLING,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_DEERLING_SUMMER,
    },
    {
            .species = SPECIES_DEERLING,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_DEERLING_AUTUMN,
    },
    {
            .species = SPECIES_DEERLING,
            .form_no = 3,
            .need_rev = 0,
            .file = SPECIES_DEERLING_WINTER,
    },
    {
            .species = SPECIES_SAWSBUCK,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_SAWSBUCK_SUMMER,
    },
    {
            .species = SPECIES_SAWSBUCK,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_SAWSBUCK_AUTUMN,
    },
    {
            .species = SPECIES_SAWSBUCK,
            .form_no = 3,
            .need_rev = 0,
            .file = SPECIES_SAWSBUCK_WINTER,
    },
    {
            .species = SPECIES_TORNADUS,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_TORNADUS_THERIAN,
    },
    {
            .species = SPECIES_THUNDURUS,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_THUNDURUS_THERIAN,
    },
    {
            .species = SPECIES_LANDORUS,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_LANDORUS_THERIAN,
    },
    {
            .species = SPECIES_KYUREM,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_KYUREM_WHITE,
    },
    {
            .species = SPECIES_KYUREM,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_KYUREM_BLACK,
    },
    {
            .species = SPECIES_KELDEO,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_KELDEO_RESOLUTE,
    },
    {
            .species = SPECIES_GENESECT,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_GENESECT_DOUSE_DRIVE,
    },
    {
            .species = SPECIES_GENESECT,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_GENESECT_SHOCK_DRIVE,
    },
    {
            .species = SPECIES_GENESECT,
            .form_no = 3,
            .need_rev = 0,
            .file = SPECIES_GENESECT_BURN_DRIVE,
    },
    {
            .species = SPECIES_GENESECT,
            .form_no = 4,
            .need_rev = 0,
            .file = SPECIES_GENESECT_CHILL_DRIVE,
    },
    {
            .species = SPECIES_GRENINJA,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_GRENINJA_BATTLE_BOND,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_POLAR,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_TUNDRA,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 3,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_CONTINENTAL,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 4,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_GARDEN,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 5,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_ELEGANT,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 6,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_MEADOW,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 7,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_MODERN,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 8,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_MARINE,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 9,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_ARCHIPELAGO,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 10,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_HIGH_PLAINS,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 11,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_SANDSTORM,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 12,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_RIVER,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 13,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_MONSOON,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 14,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_SAVANNA,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 15,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_SUN,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 16,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_OCEAN,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 17,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_JUNGLE,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 18,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_FANCY,
    },
    {
            .species = SPECIES_VIVILLON,
            .form_no = 19,
            .need_rev = 0,
            .file = SPECIES_VIVILLON_POKE_BALL,
    },
    {
            .species = SPECIES_FLABEBE,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_FLABEBE_YELLOW_FLOWER,
    },
    {
            .species = SPECIES_FLABEBE,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_FLABEBE_ORANGE_FLOWER,
    },
    {
            .species = SPECIES_FLABEBE,
            .form_no = 3,
            .need_rev = 0,
            .file = SPECIES_FLABEBE_BLUE_FLOWER,
    },
    {
            .species = SPECIES_FLABEBE,
            .form_no = 4,
            .need_rev = 0,
            .file = SPECIES_FLABEBE_WHITE_FLOWER,
    },
    {
            .species = SPECIES_FLOETTE,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_FLOETTE_YELLOW_FLOWER,
    },
    {
            .species = SPECIES_FLOETTE,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_FLOETTE_ORANGE_FLOWER,
    },
    {
            .species = SPECIES_FLOETTE,
            .form_no = 3,
            .need_rev = 0,
            .file = SPECIES_FLOETTE_BLUE_FLOWER,
    },
    {
            .species = SPECIES_FLOETTE,
            .form_no = 4,
            .need_rev = 0,
            .file = SPECIES_FLOETTE_WHITE_FLOWER,
    },
    {
            .species = SPECIES_FLOETTE,
            .form_no = 5,
            .need_rev = 0,
            .file = SPECIES_FLOETTE_ETERNAL_FLOWER,
    },
    {
            .species = SPECIES_FLORGES,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_FLORGES_YELLOW_FLOWER,
    },
    {
            .species = SPECIES_FLORGES,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_FLORGES_ORANGE_FLOWER,
    },
    {
            .species = SPECIES_FLORGES,
            .form_no = 3,
            .need_rev = 0,
            .file = SPECIES_FLORGES_BLUE_FLOWER,
    },
    {
            .species = SPECIES_FLORGES,
            .form_no = 4,
            .need_rev = 0,
            .file = SPECIES_FLORGES_WHITE_FLOWER,
    },
    {
            .species = SPECIES_FURFROU,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_FURFROU_HEART,
    },
    {
            .species = SPECIES_FURFROU,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_FURFROU_STAR,
    },
    {
            .species = SPECIES_FURFROU,
            .form_no = 3,
            .need_rev = 0,
            .file = SPECIES_FURFROU_DIAMOND,
    },
    {
            .species = SPECIES_FURFROU,
            .form_no = 4,
            .need_rev = 0,
            .file = SPECIES_FURFROU_DEBUTANTE,
    },
    {
            .species = SPECIES_FURFROU,
            .form_no = 5,
            .need_rev = 0,
            .file = SPECIES_FURFROU_MATRON,
    },
    {
            .species = SPECIES_FURFROU,
            .form_no = 6,
            .need_rev = 0,
            .file = SPECIES_FURFROU_DANDY,
    },
    {
            .species = SPECIES_FURFROU,
            .form_no = 7,
            .need_rev = 0,
            .file = SPECIES_FURFROU_LA_REINE,
    },
    {
            .species = SPECIES_FURFROU,
            .form_no = 8,
            .need_rev = 0,
            .file = SPECIES_FURFROU_KABUKI,
    },
    {
            .species = SPECIES_FURFROU,
            .form_no = 9,
            .need_rev = 0,
            .file = SPECIES_FURFROU_PHARAOH,
    },
    {
            .species = SPECIES_PUMPKABOO,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_PUMPKABOO_SMALL,
    },
    {
            .species = SPECIES_PUMPKABOO,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_PUMPKABOO_LARGE,
    },
    {
            .species = SPECIES_PUMPKABOO,
            .form_no = 3,
            .need_rev = 0,
            .file = SPECIES_PUMPKABOO_SUPER,
    },
    {
            .species = SPECIES_GOURGEIST,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_GOURGEIST_SMALL,
    },
    {
            .species = SPECIES_GOURGEIST,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_GOURGEIST_LARGE,
    },
    {
            .species = SPECIES_GOURGEIST,
            .form_no = 3,
            .need_rev = 0,
            .file = SPECIES_GOURGEIST_SUPER,
    },
    {
            .species = SPECIES_HOOPA,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_HOOPA_UNBOUND,
    },
    {
            .species = SPECIES_ORICORIO,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_ORICORIO_POM_POM,
    },
    {
            .species = SPECIES_ORICORIO,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_ORICORIO_PAU,
    },
    {
            .species = SPECIES_ORICORIO,
            .form_no = 3,
            .need_rev = 0,
            .file = SPECIES_ORICORIO_SENSU,
    },
    {
            .species = SPECIES_ROCKRUFF,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_ROCKRUFF_OWN_TEMPO,
    },
    {
            .species = SPECIES_LYCANROC,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_LYCANROC_MIDNIGHT,
    },
    {
            .species = SPECIES_LYCANROC,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_LYCANROC_DUSK,
    },
    {
            .species = SPECIES_MAGEARNA,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_MAGEARNA_ORIGINAL,
    },
    {
            .species = SPECIES_TOXTRICITY,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_TOXTRICITY_LOW_KEY,
    },
    {
            .species = SPECIES_SINISTEA,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_SINISTEA_ANTIQUE,
    },
    {
            .species = SPECIES_POLTEAGEIST,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_POLTEAGEIST_ANTIQUE,
    },
    {
            .species = SPECIES_ALCREMIE,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_ALCREMIE_RUBY_CREAM,
    },
    {
            .species = SPECIES_ALCREMIE,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_ALCREMIE_MATCHA_CREAM,
    },
    {
            .species = SPECIES_ALCREMIE,
            .form_no = 3,
            .need_rev = 0,
            .file = SPECIES_ALCREMIE_MINT_CREAM,
    },
    {
            .species = SPECIES_ALCREMIE,
            .form_no = 4,
            .need_rev = 0,
            .file = SPECIES_ALCREMIE_LEMON_CREAM,
    },
    {
            .species = SPECIES_ALCREMIE,
            .form_no = 5,
            .need_rev = 0,
            .file = SPECIES_ALCREMIE_SALTED_CREAM,
    },
    {
            .species = SPECIES_ALCREMIE,
            .form_no = 6,
            .need_rev = 0,
            .file = SPECIES_ALCREMIE_RUBY_SWIRL,
    },
    {
            .species = SPECIES_ALCREMIE,
            .form_no = 7,
            .need_rev = 0,
            .file = SPECIES_ALCREMIE_CARAMEL_SWIRL,
    },
    {
            .species = SPECIES_ALCREMIE,
            .form_no = 8,
            .need_rev = 0,
            .file = SPECIES_ALCREMIE_RAINBOW_SWIRL,
    },
    {
            .species = SPECIES_URSHIFU,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_URSHIFU_RAPID_STRIKE,
    },
    {
            .species = SPECIES_ZARUDE,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_ZARUDE_DADA,
    },
    {
            .species = SPECIES_CALYREX,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_CALYREX_ICE_RIDER,
    },
    {
            .species = SPECIES_CALYREX,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_CALYREX_SHADOW_RIDER,
    },

    /**Battle Forms**/
    {
            .species = SPECIES_CASTFORM,
            .form_no = 1,
            .need_rev = 1,
            .file = SPECIES_CASTFORM_SUNNY,
    },
    {
            .species = SPECIES_CASTFORM,
            .form_no = 2,
            .need_rev = 1,
            .file = SPECIES_CASTFORM_RAINY,
    },
    {
            .species = SPECIES_CASTFORM,
            .form_no = 3,
            .need_rev = 1,
            .file = SPECIES_CASTFORM_SNOWY,
    },
    {
            .species = SPECIES_CHERRIM,
            .form_no = 1,
            .need_rev = 1,
            .file = SPECIES_CHERRIM_SUNSHINE,
    },
    {
            .species = SPECIES_SHELLOS,
            .form_no = 1,
            .need_rev = 1,
            .file = SPECIES_SHELLOS_EAST_SEA,
    },
    {
            .species = SPECIES_GASTRODON,
            .form_no = 1,
            .need_rev = 1,
            .file = SPECIES_GASTRODON_EAST_SEA,
    },
    {
            .species = SPECIES_DIALGA,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_DIALGA_ORIGIN,
    },
    {
            .species = SPECIES_PALKIA,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_PALKIA_ORIGIN,
    },
    {
            .species = SPECIES_DARMANITAN,
            .form_no = 2,
            .need_rev = 1,
            .file = SPECIES_DARMANITAN_ZEN_MODE,
    },
    {
            .species = SPECIES_DARMANITAN,
            .form_no = 3,
            .need_rev = 1,
            .file = SPECIES_DARMANITAN_ZEN_MODE_GALARIAN,
    },
    {
            .species = SPECIES_MELOETTA,
            .form_no = 1,
            .need_rev = 1,
            .file = SPECIES_MELOETTA_PIROUETTE,
    },
    {
            .species = SPECIES_GRENINJA,
            .form_no = 2,
            .need_rev = 1,
            .file = SPECIES_GRENINJA_ASH,
    },
    {
            .species = SPECIES_AEGISLASH,
            .form_no = 1,
            .need_rev = 1,
            .file = SPECIES_AEGISLASH_BLADE,
    },
    {
            .species = SPECIES_XERNEAS,
            .form_no = 1,
            .need_rev = 1,
            .file = SPECIES_XERNEAS_ACTIVE,
    },
    {
            .species = SPECIES_ZYGARDE,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_ZYGARDE_10,
    },
    {
            .species = SPECIES_ZYGARDE,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_ZYGARDE_10_POWER_CONSTRUCT,
    },
    {
            .species = SPECIES_ZYGARDE,
            .form_no = 3,
            .need_rev = 0,
            .file = SPECIES_ZYGARDE_50_POWER_CONSTRUCT,
    },
    {
            .species = SPECIES_ZYGARDE,
            .form_no = 4,
            .need_rev = 1,
            .file = SPECIES_ZYGARDE_10_COMPLETE,
    },
    {
            .species = SPECIES_ZYGARDE,
            .form_no = 5,
            .need_rev = 1,
            .file = SPECIES_ZYGARDE_50_COMPLETE,
    },
    {
            .species = SPECIES_WISHIWASHI,
            .form_no = 1,
            .need_rev = 1,
            .file = SPECIES_WISHIWASHI_SCHOOL,
    },
    {
            .species = SPECIES_MINIOR,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_MINIOR_METEOR_ORANGE,
    },
    {
            .species = SPECIES_MINIOR,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_MINIOR_METEOR_YELLOW,
    },
    {
            .species = SPECIES_MINIOR,
            .form_no = 3,
            .need_rev = 0,
            .file = SPECIES_MINIOR_METEOR_GREEN,
    },
    {
            .species = SPECIES_MINIOR,
            .form_no = 4,
            .need_rev = 0,
            .file = SPECIES_MINIOR_METEOR_BLUE,
    },
    {
            .species = SPECIES_MINIOR,
            .form_no = 5,
            .need_rev = 0,
            .file = SPECIES_MINIOR_METEOR_INDIGO,
    },
    {
            .species = SPECIES_MINIOR,
            .form_no = 6,
            .need_rev = 0,
            .file = SPECIES_MINIOR_METEOR_VIOLET,
    },
    {
            .species = SPECIES_MINIOR,
            .form_no = 7,
            .need_rev = 1,
            .file = SPECIES_MINIOR_CORE_RED,
    },
    {
            .species = SPECIES_MINIOR,
            .form_no = 8,
            .need_rev = 1,
            .file = SPECIES_MINIOR_CORE_ORANGE,
    },
    {
            .species = SPECIES_MINIOR,
            .form_no = 9,
            .need_rev = 1,
            .file = SPECIES_MINIOR_CORE_YELLOW,
    },
    {
            .species = SPECIES_MINIOR,
            .form_no = 10,
            .need_rev = 1,
            .file = SPECIES_MINIOR_CORE_GREEN,
    },
    {
            .species = SPECIES_MINIOR,
            .form_no = 11,
            .need_rev = 1,
            .file = SPECIES_MINIOR_CORE_BLUE,
    },
    {
            .species = SPECIES_MINIOR,
            .form_no = 12,
            .need_rev = 1,
            .file = SPECIES_MINIOR_CORE_INDIGO,
    },
    {
            .species = SPECIES_MINIOR,
            .form_no = 13,
            .need_rev = 1,
            .file = SPECIES_MINIOR_CORE_VIOLET,
    },
    {
            .species = SPECIES_MIMIKYU,
            .form_no = 1,
            .need_rev = 1,
            .file = SPECIES_MIMIKYU_BUSTED,
    },
    {
            .species = SPECIES_NECROZMA,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_NECROZMA_DUSK_MANE,
    },
    {
            .species = SPECIES_NECROZMA,
            .form_no = 2,
            .need_rev = 0,
            .file = SPECIES_NECROZMA_DAWN_WINGS,
    },
    {
            .species = SPECIES_NECROZMA,
            .form_no = 3,
            .need_rev = 1,
            .file = SPECIES_NECROZMA_ULTRA_DUSK_MANE,
    },
    {
            .species = SPECIES_NECROZMA,
            .form_no = 4,
            .need_rev = 1,
            .file = SPECIES_NECROZMA_ULTRA_DAWN_WINGS,
    },
    {
            .species = SPECIES_CRAMORANT,
            .form_no = 1,
            .need_rev = 1,
            .file = SPECIES_CRAMORANT_GULPING,
    },
    {
            .species = SPECIES_CRAMORANT,
            .form_no = 2,
            .need_rev = 1,
            .file = SPECIES_CRAMORANT_GORGING,
    },
    {
            .species = SPECIES_EISCUE,
            .form_no = 1,
            .need_rev = 1,
            .file = SPECIES_EISCUE_NOICE_FACE,
    },
    {
            .species = SPECIES_MORPEKO,
            .form_no = 1,
            .need_rev = 1,
            .file = SPECIES_MORPEKO_HANGRY,
    },
    {
            .species = SPECIES_ZACIAN,
            .form_no = 1,
            .need_rev = 1,
            .file = SPECIES_ZACIAN_CROWNED,
    },
    {
            .species = SPECIES_ZAMAZENTA,
            .form_no = 1,
            .need_rev = 1,
            .file = SPECIES_ZAMAZENTA_CROWNED,
    },
    {
            .species = SPECIES_ETERNATUS,
            .form_no = 1,
            .need_rev = 1,
            .file = SPECIES_ETERNATUS_ETERNAMAX,
    },
    {
            .species = SPECIES_ENAMORUS,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_ENAMORUS_THERIAN,
    },

    /**hisuian forms**/
    {
            .species = SPECIES_GROWLITHE,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_GROWLITHE_HISUIAN,
    },
    {
            .species = SPECIES_ARCANINE,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_ARCANINE_HISUIAN,
    },
    {
            .species = SPECIES_VOLTORB,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_VOLTORB_HISUIAN,
    },
    {
            .species = SPECIES_ELECTRODE,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_ELECTRODE_HISUIAN,
    },
    {
            .species = SPECIES_TYPHLOSION,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_TYPHLOSION_HISUIAN,
    },
    {
            .species = SPECIES_QWILFISH,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_QWILFISH_HISUIAN,
    },
    {
            .species = SPECIES_SNEASEL,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_SNEASEL_HISUIAN,
    },
    {
            .species = SPECIES_SAMUROTT,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_SAMUROTT_HISUIAN,
    },
    {
            .species = SPECIES_LILLIGANT,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_LILLIGANT_HISUIAN,
    },
    {
            .species = SPECIES_ZORUA,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_ZORUA_HISUIAN,
    },
    {
            .species = SPECIES_ZOROARK,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_ZOROARK_HISUIAN,
    },
    {
            .species = SPECIES_BRAVIARY,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_BRAVIARY_HISUIAN,
    },
    {
            .species = SPECIES_SLIGGOO,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_SLIGGOO_HISUIAN,
    },
    {
            .species = SPECIES_GOODRA,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_GOODRA_HISUIAN,
    },
    {
            .species = SPECIES_AVALUGG,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_AVALUGG_HISUIAN,
    },
    {
            .species = SPECIES_DECIDUEYE,
            .form_no = 1,
            .need_rev = 0,
            .file = SPECIES_DECIDUEYE_HISUIAN,
    },

};

extern u32 word_to_store_form_at;

u8 GetOtherFormPic(MON_PIC *picdata, u16 mons_no, u8 dir, u8 col,u8 form_no)
{
    word_to_store_form_at = form_no;

    if (!form_no)
        return FALSE;

    for (u8 i = 0; i < NELEMS(PokeFormDataTbl); i++)
    {
        if (mons_no == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no)
        {
            picdata->arc_no = ARC_MON_PIC;
            picdata->index_chr = (PokeFormDataTbl[i].file) * 6 + dir;
            picdata->index_pal = (PokeFormDataTbl[i].file) * 6 + 4 + col;
            return TRUE;
        }
    }

    return FALSE;
}

int PokeOtherFormMonsNoGet(int mons_no, int form_no)
{
    u8 i;
    switch (mons_no)
    {
    case 386:
        if ((form_no) && (form_no <= 3))
        {
            mons_no = 495 + form_no;
        }
        break;
    case 413:
        if ((form_no) && (form_no <= 2))
        {
            mons_no = 498 + form_no;
        }
        break;

    case 487:
        if ((form_no) && (form_no <= 1))
        {
            mons_no = 500 + form_no;
        }
        break;
    case 492:
        if ((form_no) && (form_no <= 1))
        {
            mons_no = 501 + form_no;
        }
        break;
    case 479:
        if ((form_no) && (form_no <= 5))
        {
            mons_no = 502 + form_no;
        }
        break;

    default:
        break;
    }

    for (i = 0; i < NELEMS(PokeFormDataTbl); i++)
    {
        if (mons_no == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no)
            mons_no = PokeFormDataTbl[i].file;
    }
    return mons_no;
}

u16 GetSpeciesBasedOnForm(int mons_no, int form_no)
{
    for (u8 i = 0; i < NELEMS(PokeFormDataTbl); i++)
    {
        if (mons_no == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no)
            mons_no = PokeFormDataTbl[i].file;
    }
    return mons_no;
}

u32 PokeIconIndexGetByMonsNumber(u32 mons, u32 egg, u32 form_no)
{
    u8 i;
    u32 pat = form_no;

    if (egg == 1)
    {
        if (mons == 490)
        {
            return 502;
        }
        else
        {
            return 501;
        }
    }

    pat = PokeFuseiFormNoCheck(mons, pat);//70438

    if (pat != 0)
    {
        if (mons == 386)
        {
            return (503 + pat - 1);
        }
        if (mons == 201)
        {
            return (507 + pat - 1);
        }
        if (mons == 412)
        {
            return (534 + pat - 1);
        }
        if (mons == 413)
        {
            return (536 + pat - 1);
        }
        if (mons == 422)
        {
            return (538 + pat - 1);
        }
        if (mons == 423)
        {
            return (539 + pat - 1);
        }
        if (mons == 487)
        {
            return (540 + pat - 1);
        }
        if (mons == 492)
        {
            return (541 + pat - 1);
        }
        if (mons == 479)
        {
            return (542 + pat - 1);
        }
    }

    if (mons > 950)
    {
        mons = 0;
    }

    for (i = 0; i < NELEMS(PokeFormDataTbl); i++)
    {
        if (mons == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no)
            return PokeFormDataTbl[i].file + 7;
    }
    return (7 + mons);
}

u16 PokeIconCgxPatternGet(const void *ppp)
{
    u32 monsno;
    u8 i;

    monsno = PokePasoParaGet((void *)ppp, 0xae, NULL);

    switch (monsno)
    {
    case 201:
    case 386:
    case 412:
    case 413:
    case 422:
    case 423:
    case 487:
    case 492:
    case 479:
        return PokePasoParaGet((void *)ppp, 0x70, NULL);

    default:
        for (i = 0; i < NELEMS(PokeFormDataTbl); i++)
        {
            if (monsno == PokeFormDataTbl[i].species)
                return PokePasoParaGet((void *)ppp, 0x70, NULL);
        }
        return 0;
    }
    return 0;
}

u32 PokeIconPalNumGet(u32 mons, u32 form)
{
    u8 i;

    if (form != 0)
    {
        if (mons == 386)
        {
            mons = 496 + form - 1;
        }
        else if (mons == 201)
        {
            mons = 499 + form - 1;
        }
        else if (mons == 412)
        {
            mons = 527 + form - 1;
        }
        else if (mons == 413)
        {
            mons = 529 + form - 1;
        }
        else if (mons == 422)
        {
            mons = 531 + form - 1;
        }
        else if (mons == 423)
        {
            mons = 532 + form - 1;
        }
        else if (mons == 487)
        {
            mons = 533 + form - 1;
        }
        else if (mons == 492)
        {
            mons = 534 + form - 1;
        }
        else if (mons == 479)
        {
            mons = 535 + form - 1;
        }
        for (i = 0; i < NELEMS(PokeFormDataTbl); i++)
        {
            if (mons == PokeFormDataTbl[i].species && form == PokeFormDataTbl[i].form_no)
                return PokeFormDataTbl[i].file;
        }
    }
    return mons;
}

void BattleFormChange(int client, int form_no, void* bw,struct BattleStruct *sp,bool8 SwitchAbility)
{
    //void *pp;
    void *pp2;

    pp2 = BattleWorkPokemonParamGet(bw, client, sp->sel_mons_no[client]);
    SetMonData(pp2,112,&form_no);

    PokeParaCalc(pp2);
    if(SwitchAbility)
    {
        PokeParaSpeabiSet(pp2);
        sp->battlemon[client].ability = GetMonData(pp2, 10, 0);
    }
    

    sp->battlemon[client].attack = GetMonData(pp2, 165, 0);
    sp->battlemon[client].defense = GetMonData(pp2, 166, 0);
    sp->battlemon[client].speed = GetMonData(pp2, 167, 0);
    sp->battlemon[client].spatk = GetMonData(pp2, 168, 0);
    sp->battlemon[client].spdef = GetMonData(pp2, 169, 0);
    
    sp->battlemon[client].type1 = GetMonData(pp2, 177, 0);
    sp->battlemon[client].type2 = GetMonData(pp2, 178, 0);

    //sp->battlemon[client].species = PokeOtherFormMonsNoGet(sp->battlemon[client].species, form_no);
}

bool8 ReverFormChange(void *pp, u16 species, u8 form_no)
{
    u8 i;
    int work = 0;

    for (i = 0; i < NELEMS(PokeFormDataTbl); i++)
    {
        if (species == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no && PokeFormDataTbl[i].need_rev)
        {
            if(species == SPECIES_DARMANITAN && form_no == 3)
                work = 1;
            else if(species == SPECIES_NECROZMA)
                work = form_no-2;
            else if(species == SPECIES_GRENINJA)
                work = 1;
            else if(species == SPECIES_MINIOR)
                work = form_no-7;
            else if(species == SPECIES_ZYGARDE)
                work = form_no-2;

            SetMonData(pp,112,&work);
            return TRUE;
        }
    }
    return FALSE;
}

void TryRevertFormChange(struct BattleStruct *sp, void* bw, int client_no)
{
    u16 species = sp->battlemon[client_no].species;
    u8 form_no = sp->battlemon[client_no].form_no;

    void *pp = BattleWorkPokemonParamGet(bw, client_no, sp->sel_mons_no[client_no]);

    if(ReverFormChange(pp,species,form_no))
    {
        PokeParaCalc(pp);
        PokeParaSpeabiSet(pp);
    }
}

void BattleEndRevertFormChange(void *bw)
{
    int i, j;
    void *pp;
    u16 monsno;
    u16 form;

    newBS.SideMega[0] = 0;
    newBS.SideMega[1] = 0;
    newBS.playerWantMega = 0;
    newBS.PlayerMegaed = 0;

    newBS.CanMega = 0;
    newBS.ChangeBgFlag = 0;
    newBS.MegaIconLight = 0;
    
    for (i = 0; i < 2; i++)
    {
        // revert illusion
        if (gIllusionStruct.isSideInIllusion[i])
        {
            pp = BattleWorkPokemonParamGet(bw, 0, gIllusionStruct.illusionPos[i]);
            SetMonData(pp, ID_PARA_nickname, gIllusionStruct.illusionNameBuf[i]);
        }
        
        // clear the illusion structure
        gIllusionStruct.isSideInIllusion[i] = 0;
        gIllusionStruct.illusionPos[i] = 0;
        for (j = 0; j < 11; j++)
            gIllusionStruct.illusionNameBuf[i][j] = 0;
    }

    for (i = 0; i < BattleWorkPokeCountGet(bw, 0); i++)
    {
        pp = BattleWorkPokemonParamGet(bw, 0, i);
        monsno = GetMonData(pp, 174, 0);
        form = GetMonData(pp, 112, 0);

        if(ReverFormChange(pp,monsno,form))
        {
            PokeParaCalc(pp);
            PokeParaSpeabiSet(pp);
        }
    }
}

bool8 IsMonShiny(u32 id, u32 rnd)
{
    return ((((id & 0xffff0000) >> 16) ^ (id & 0xffff) ^ ((rnd & 0xffff0000) >> 16) ^ (rnd & 0xffff)) < 16);
}

void GetMonEvoData(struct PartyPokemon *poke, void* pst)
{
    int mons_no = GetMonData(poke, ID_PARA_monsno, NULL);
    u8 form = GetMonData(poke, ID_PARA_form_no, NULL);

    mons_no = PokeOtherFormMonsNoGet(mons_no,form);

    ArchiveDataLoad(pst,0x22,mons_no);
}

u16 GetPokemonOwNum(u16 species)
{
    return sSpeciesToOWGfx[species];
}
