#include "../include/types.h"
#include "../include/battle.h"
#include "../include/config.h"
#include "../include/debug.h"
#include "../include/pokemon.h"
#include "../include/rtc.h"
#include "../include/save.h"
#include "../include/script.h"
#include "../include/constants/ability.h"
#include "../include/constants/file.h"
#include "../include/constants/game.h"
#include "../include/constants/hold_item_effects.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"
#include "../include/constants/weather_numbers.h"

static const u16 sSpeciesToOWGfx[] =
{
    [SPECIES_NONE               ] =    0,
    [SPECIES_BULBASAUR          ] =    0,
    [SPECIES_IVYSAUR            ] =    1,
    [SPECIES_VENUSAUR           ] =    2,
    [SPECIES_CHARMANDER         ] =    4,
    [SPECIES_CHARMELEON         ] =    5,
    [SPECIES_CHARIZARD          ] =    6,
    [SPECIES_SQUIRTLE           ] =    7,
    [SPECIES_WARTORTLE          ] =    8,
    [SPECIES_BLASTOISE          ] =    9,
    [SPECIES_CATERPIE           ] =   10,
    [SPECIES_METAPOD            ] =   11,
    [SPECIES_BUTTERFREE         ] =   12,
    [SPECIES_WEEDLE             ] =   13,
    [SPECIES_KAKUNA             ] =   14,
    [SPECIES_BEEDRILL           ] =   15,
    [SPECIES_PIDGEY             ] =   16,
    [SPECIES_PIDGEOTTO          ] =   17,
    [SPECIES_PIDGEOT            ] =   18,
    [SPECIES_RATTATA            ] =   19,
    [SPECIES_RATICATE           ] =   21,
    [SPECIES_SPEAROW            ] =   23,
    [SPECIES_FEAROW             ] =   24,
    [SPECIES_EKANS              ] =   25,
    [SPECIES_ARBOK              ] =   26,
    [SPECIES_PIKACHU            ] =   27,
    [SPECIES_RAICHU             ] =   43,
    [SPECIES_SANDSHREW          ] =   45,
    [SPECIES_SANDSLASH          ] =   47,
    [SPECIES_NIDORAN_F          ] =   49,
    [SPECIES_NIDORINA           ] =   50,
    [SPECIES_NIDOQUEEN          ] =   51,
    [SPECIES_NIDORAN_M          ] =   52,
    [SPECIES_NIDORINO           ] =   53,
    [SPECIES_NIDOKING           ] =   54,
    [SPECIES_CLEFAIRY           ] =   55,
    [SPECIES_CLEFABLE           ] =   56,
    [SPECIES_VULPIX             ] =   57,
    [SPECIES_NINETALES          ] =   59,
    [SPECIES_JIGGLYPUFF         ] =   61,
    [SPECIES_WIGGLYTUFF         ] =   62,
    [SPECIES_ZUBAT              ] =   63,
    [SPECIES_GOLBAT             ] =   64,
    [SPECIES_ODDISH             ] =   65,
    [SPECIES_GLOOM              ] =   66,
    [SPECIES_VILEPLUME          ] =   67,
    [SPECIES_PARAS              ] =   68,
    [SPECIES_PARASECT           ] =   69,
    [SPECIES_VENONAT            ] =   70,
    [SPECIES_VENOMOTH           ] =   71,
    [SPECIES_DIGLETT            ] =   72,
    [SPECIES_DUGTRIO            ] =   74,
    [SPECIES_MEOWTH             ] =   76,
    [SPECIES_PERSIAN            ] =   79,
    [SPECIES_PSYDUCK            ] =   81,
    [SPECIES_GOLDUCK            ] =   82,
    [SPECIES_MANKEY             ] =   83,
    [SPECIES_PRIMEAPE           ] =   84,
    [SPECIES_GROWLITHE          ] =   85,
    [SPECIES_ARCANINE           ] =   87,
    [SPECIES_POLIWAG            ] =   89,
    [SPECIES_POLIWHIRL          ] =   90,
    [SPECIES_POLIWRATH          ] =   91,
    [SPECIES_ABRA               ] =   92,
    [SPECIES_KADABRA            ] =   93,
    [SPECIES_ALAKAZAM           ] =   94,
    [SPECIES_MACHOP             ] =   95,
    [SPECIES_MACHOKE            ] =   96,
    [SPECIES_MACHAMP            ] =   97,
    [SPECIES_BELLSPROUT         ] =   98,
    [SPECIES_WEEPINBELL         ] =   99,
    [SPECIES_VICTREEBEL         ] =  100,
    [SPECIES_TENTACOOL          ] =  101,
    [SPECIES_TENTACRUEL         ] =  102,
    [SPECIES_GEODUDE            ] =  103,
    [SPECIES_GRAVELER           ] =  105,
    [SPECIES_GOLEM              ] =  107,
    [SPECIES_PONYTA             ] =  109,
    [SPECIES_RAPIDASH           ] =  111,
    [SPECIES_SLOWPOKE           ] =  113,
    [SPECIES_SLOWBRO            ] =  115,
    [SPECIES_MAGNEMITE          ] =  117,
    [SPECIES_MAGNETON           ] =  118,
    [SPECIES_FARFETCHD          ] =  119,
    [SPECIES_DODUO              ] =  121,
    [SPECIES_DODRIO             ] =  122,
    [SPECIES_SEEL               ] =  123,
    [SPECIES_DEWGONG            ] =  124,
    [SPECIES_GRIMER             ] =  125,
    [SPECIES_MUK                ] =  127,
    [SPECIES_SHELLDER           ] =  129,
    [SPECIES_CLOYSTER           ] =  130,
    [SPECIES_GASTLY             ] =  131,
    [SPECIES_HAUNTER            ] =  132,
    [SPECIES_GENGAR             ] =  133,
    [SPECIES_ONIX               ] =  134,
    [SPECIES_DROWZEE            ] =  135,
    [SPECIES_HYPNO              ] =  136,
    [SPECIES_KRABBY             ] =  137,
    [SPECIES_KINGLER            ] =  138,
    [SPECIES_VOLTORB            ] =  139,
    [SPECIES_ELECTRODE          ] =  141,
    [SPECIES_EXEGGCUTE          ] =  143,
    [SPECIES_EXEGGUTOR          ] =  144,
    [SPECIES_CUBONE             ] =  146,
    [SPECIES_MAROWAK            ] =  147,
    [SPECIES_HITMONLEE          ] =  149,
    [SPECIES_HITMONCHAN         ] =  150,
    [SPECIES_LICKITUNG          ] =  151,
    [SPECIES_KOFFING            ] =  152,
    [SPECIES_WEEZING            ] =  153,
    [SPECIES_RHYHORN            ] =  155,
    [SPECIES_RHYDON             ] =  156,
    [SPECIES_CHANSEY            ] =  157,
    [SPECIES_TANGELA            ] =  158,
    [SPECIES_KANGASKHAN         ] =  159,
    [SPECIES_HORSEA             ] =  160,
    [SPECIES_SEADRA             ] =  161,
    [SPECIES_GOLDEEN            ] =  162,
    [SPECIES_SEAKING            ] =  163,
    [SPECIES_STARYU             ] =  164,
    [SPECIES_STARMIE            ] =  165,
    [SPECIES_MR_MIME            ] =  166,
    [SPECIES_SCYTHER            ] =  168,
    [SPECIES_JYNX               ] =  169,
    [SPECIES_ELECTABUZZ         ] =  170,
    [SPECIES_MAGMAR             ] =  171,
    [SPECIES_PINSIR             ] =  172,
    [SPECIES_TAUROS             ] =  173,
    [SPECIES_MAGIKARP           ] =  177,
    [SPECIES_GYARADOS           ] =  178,
    [SPECIES_LAPRAS             ] =  179,
    [SPECIES_DITTO              ] =  180,
    [SPECIES_EEVEE              ] =  181,
    [SPECIES_VAPOREON           ] =  182,
    [SPECIES_JOLTEON            ] =  183,
    [SPECIES_FLAREON            ] =  184,
    [SPECIES_PORYGON            ] =  185,
    [SPECIES_OMANYTE            ] =  186,
    [SPECIES_OMASTAR            ] =  187,
    [SPECIES_KABUTO             ] =  188,
    [SPECIES_KABUTOPS           ] =  189,
    [SPECIES_AERODACTYL         ] =  190,
    [SPECIES_SNORLAX            ] =  191,
    [SPECIES_ARTICUNO           ] =  192,
    [SPECIES_ZAPDOS             ] =  194,
    [SPECIES_MOLTRES            ] =  196,
    [SPECIES_DRATINI            ] =  198,
    [SPECIES_DRAGONAIR          ] =  199,
    [SPECIES_DRAGONITE          ] =  200,
    [SPECIES_MEWTWO             ] =  201,
    [SPECIES_MEW                ] =  202,
    [SPECIES_CHIKORITA          ] =  203,
    [SPECIES_BAYLEEF            ] =  204,
    [SPECIES_MEGANIUM           ] =  205,
    [SPECIES_CYNDAQUIL          ] =  207,
    [SPECIES_QUILAVA            ] =  208,
    [SPECIES_TYPHLOSION         ] =  209,
    [SPECIES_TOTODILE           ] =  211,
    [SPECIES_CROCONAW           ] =  212,
    [SPECIES_FERALIGATR         ] =  213,
    [SPECIES_SENTRET            ] =  214,
    [SPECIES_FURRET             ] =  215,
    [SPECIES_HOOTHOOT           ] =  216,
    [SPECIES_NOCTOWL            ] =  217,
    [SPECIES_LEDYBA             ] =  218,
    [SPECIES_LEDIAN             ] =  219,
    [SPECIES_SPINARAK           ] =  220,
    [SPECIES_ARIADOS            ] =  221,
    [SPECIES_CROBAT             ] =  222,
    [SPECIES_CHINCHOU           ] =  223,
    [SPECIES_LANTURN            ] =  224,
    [SPECIES_PICHU              ] =  225,
    [SPECIES_CLEFFA             ] =  227,
    [SPECIES_IGGLYBUFF          ] =  228,
    [SPECIES_TOGEPI             ] =  229,
    [SPECIES_TOGETIC            ] =  230,
    [SPECIES_NATU               ] =  231,
    [SPECIES_XATU               ] =  232,
    [SPECIES_MAREEP             ] =  233,
    [SPECIES_FLAAFFY            ] =  234,
    [SPECIES_AMPHAROS           ] =  235,
    [SPECIES_BELLOSSOM          ] =  236,
    [SPECIES_MARILL             ] =  237,
    [SPECIES_AZUMARILL          ] =  238,
    [SPECIES_SUDOWOODO          ] =  239,
    [SPECIES_POLITOED           ] =  240,
    [SPECIES_HOPPIP             ] =  241,
    [SPECIES_SKIPLOOM           ] =  242,
    [SPECIES_JUMPLUFF           ] =  243,
    [SPECIES_AIPOM              ] =  244,
    [SPECIES_SUNKERN            ] =  245,
    [SPECIES_SUNFLORA           ] =  246,
    [SPECIES_YANMA              ] =  247,
    [SPECIES_WOOPER             ] =  248,
    [SPECIES_QUAGSIRE           ] =  250,
    [SPECIES_ESPEON             ] =  251,
    [SPECIES_UMBREON            ] =  252,
    [SPECIES_MURKROW            ] =  253,
    [SPECIES_SLOWKING           ] =  254,
    [SPECIES_MISDREAVUS         ] =  256,
    [SPECIES_UNOWN              ] =  257,
    [SPECIES_WOBBUFFET          ] =  285,
    [SPECIES_GIRAFARIG          ] =  287,
    [SPECIES_PINECO             ] =  288,
    [SPECIES_FORRETRESS         ] =  289,
    [SPECIES_DUNSPARCE          ] =  290,
    [SPECIES_GLIGAR             ] =  291,
    [SPECIES_STEELIX            ] =  292,
    [SPECIES_SNUBBULL           ] =  294,
    [SPECIES_GRANBULL           ] =  295,
    [SPECIES_QWILFISH           ] =  296,
    [SPECIES_SCIZOR             ] =  298,
    [SPECIES_SHUCKLE            ] =  299,
    [SPECIES_HERACROSS          ] =  300,
    [SPECIES_SNEASEL            ] =  302,
    [SPECIES_TEDDIURSA          ] =  304,
    [SPECIES_URSARING           ] =  305,
    [SPECIES_SLUGMA             ] =  306,
    [SPECIES_MAGCARGO           ] =  307,
    [SPECIES_SWINUB             ] =  308,
    [SPECIES_PILOSWINE          ] =  309,
    [SPECIES_CORSOLA            ] =  310,
    [SPECIES_REMORAID           ] =  312,
    [SPECIES_OCTILLERY          ] =  313,
    [SPECIES_DELIBIRD           ] =  314,
    [SPECIES_MANTINE            ] =  315,
    [SPECIES_SKARMORY           ] =  316,
    [SPECIES_HOUNDOUR           ] =  317,
    [SPECIES_HOUNDOOM           ] =  318,
    [SPECIES_KINGDRA            ] =  319,
    [SPECIES_PHANPY             ] =  320,
    [SPECIES_DONPHAN            ] =  321,
    [SPECIES_PORYGON2           ] =  322,
    [SPECIES_STANTLER           ] =  323,
    [SPECIES_SMEARGLE           ] =  324,
    [SPECIES_TYROGUE            ] =  325,
    [SPECIES_HITMONTOP          ] =  326,
    [SPECIES_SMOOCHUM           ] =  327,
    [SPECIES_ELEKID             ] =  328,
    [SPECIES_MAGBY              ] =  329,
    [SPECIES_MILTANK            ] =  330,
    [SPECIES_BLISSEY            ] =  331,
    [SPECIES_RAIKOU             ] =  332,
    [SPECIES_ENTEI              ] =  333,
    [SPECIES_SUICUNE            ] =  334,
    [SPECIES_LARVITAR           ] =  335,
    [SPECIES_PUPITAR            ] =  336,
    [SPECIES_TYRANITAR          ] =  337,
    [SPECIES_LUGIA              ] =  338,
    [SPECIES_HO_OH              ] =  339,
    [SPECIES_CELEBI             ] =  340,
    [SPECIES_TREECKO            ] =  341,
    [SPECIES_GROVYLE            ] =  342,
    [SPECIES_SCEPTILE           ] =  343,
    [SPECIES_TORCHIC            ] =  344,
    [SPECIES_COMBUSKEN          ] =  345,
    [SPECIES_BLAZIKEN           ] =  346,
    [SPECIES_MUDKIP             ] =  347,
    [SPECIES_MARSHTOMP          ] =  348,
    [SPECIES_SWAMPERT           ] =  349,
    [SPECIES_POOCHYENA          ] =  350,
    [SPECIES_MIGHTYENA          ] =  351,
    [SPECIES_ZIGZAGOON          ] =  352,
    [SPECIES_LINOONE            ] =  354,
    [SPECIES_WURMPLE            ] =  356,
    [SPECIES_SILCOON            ] =  357,
    [SPECIES_BEAUTIFLY          ] =  358,
    [SPECIES_CASCOON            ] =  359,
    [SPECIES_DUSTOX             ] =  360,
    [SPECIES_LOTAD              ] =  361,
    [SPECIES_LOMBRE             ] =  362,
    [SPECIES_LUDICOLO           ] =  363,
    [SPECIES_SEEDOT             ] =  364,
    [SPECIES_NUZLEAF            ] =  365,
    [SPECIES_SHIFTRY            ] =  366,
    [SPECIES_TAILLOW            ] =  367,
    [SPECIES_SWELLOW            ] =  368,
    [SPECIES_WINGULL            ] =  369,
    [SPECIES_PELIPPER           ] =  370,
    [SPECIES_RALTS              ] =  371,
    [SPECIES_KIRLIA             ] =  372,
    [SPECIES_GARDEVOIR          ] =  373,
    [SPECIES_SURSKIT            ] =  374,
    [SPECIES_MASQUERAIN         ] =  375,
    [SPECIES_SHROOMISH          ] =  376,
    [SPECIES_BRELOOM            ] =  377,
    [SPECIES_SLAKOTH            ] =  378,
    [SPECIES_VIGOROTH           ] =  379,
    [SPECIES_SLAKING            ] =  380,
    [SPECIES_NINCADA            ] =  381,
    [SPECIES_NINJASK            ] =  382,
    [SPECIES_SHEDINJA           ] =  383,
    [SPECIES_WHISMUR            ] =  384,
    [SPECIES_LOUDRED            ] =  385,
    [SPECIES_EXPLOUD            ] =  386,
    [SPECIES_MAKUHITA           ] =  387,
    [SPECIES_HARIYAMA           ] =  388,
    [SPECIES_AZURILL            ] =  389,
    [SPECIES_NOSEPASS           ] =  390,
    [SPECIES_SKITTY             ] =  391,
    [SPECIES_DELCATTY           ] =  392,
    [SPECIES_SABLEYE            ] =  393,
    [SPECIES_MAWILE             ] =  394,
    [SPECIES_ARON               ] =  395,
    [SPECIES_LAIRON             ] =  396,
    [SPECIES_AGGRON             ] =  397,
    [SPECIES_MEDITITE           ] =  398,
    [SPECIES_MEDICHAM           ] =  399,
    [SPECIES_ELECTRIKE          ] =  400,
    [SPECIES_MANECTRIC          ] =  401,
    [SPECIES_PLUSLE             ] =  402,
    [SPECIES_MINUN              ] =  403,
    [SPECIES_VOLBEAT            ] =  404,
    [SPECIES_ILLUMISE           ] =  405,
    [SPECIES_ROSELIA            ] =  406,
    [SPECIES_GULPIN             ] =  407,
    [SPECIES_SWALOT             ] =  408,
    [SPECIES_CARVANHA           ] =  409,
    [SPECIES_SHARPEDO           ] =  410,
    [SPECIES_WAILMER            ] =  411,
    [SPECIES_WAILORD            ] =  412,
    [SPECIES_NUMEL              ] =  413,
    [SPECIES_CAMERUPT           ] =  414,
    [SPECIES_TORKOAL            ] =  415,
    [SPECIES_SPOINK             ] =  416,
    [SPECIES_GRUMPIG            ] =  417,
    [SPECIES_SPINDA             ] =  418,
    [SPECIES_TRAPINCH           ] =  419,
    [SPECIES_VIBRAVA            ] =  420,
    [SPECIES_FLYGON             ] =  421,
    [SPECIES_CACNEA             ] =  422,
    [SPECIES_CACTURNE           ] =  423,
    [SPECIES_SWABLU             ] =  424,
    [SPECIES_ALTARIA            ] =  425,
    [SPECIES_ZANGOOSE           ] =  426,
    [SPECIES_SEVIPER            ] =  427,
    [SPECIES_LUNATONE           ] =  428,
    [SPECIES_SOLROCK            ] =  429,
    [SPECIES_BARBOACH           ] =  430,
    [SPECIES_WHISCASH           ] =  431,
    [SPECIES_CORPHISH           ] =  432,
    [SPECIES_CRAWDAUNT          ] =  433,
    [SPECIES_BALTOY             ] =  434,
    [SPECIES_CLAYDOL            ] =  435,
    [SPECIES_LILEEP             ] =  436,
    [SPECIES_CRADILY            ] =  437,
    [SPECIES_ANORITH            ] =  438,
    [SPECIES_ARMALDO            ] =  439,
    [SPECIES_FEEBAS             ] =  440,
    [SPECIES_MILOTIC            ] =  441,
    [SPECIES_CASTFORM           ] =  442,
    [SPECIES_KECLEON            ] =  446,
    [SPECIES_SHUPPET            ] =  447,
    [SPECIES_BANETTE            ] =  448,
    [SPECIES_DUSKULL            ] =  449,
    [SPECIES_DUSCLOPS           ] =  450,
    [SPECIES_TROPIUS            ] =  451,
    [SPECIES_CHIMECHO           ] =  452,
    [SPECIES_ABSOL              ] =  453,
    [SPECIES_WYNAUT             ] =  454,
    [SPECIES_SNORUNT            ] =  455,
    [SPECIES_GLALIE             ] =  456,
    [SPECIES_SPHEAL             ] =  457,
    [SPECIES_SEALEO             ] =  458,
    [SPECIES_WALREIN            ] =  459,
    [SPECIES_CLAMPERL           ] =  460,
    [SPECIES_HUNTAIL            ] =  461,
    [SPECIES_GOREBYSS           ] =  462,
    [SPECIES_RELICANTH          ] =  463,
    [SPECIES_LUVDISC            ] =  464,
    [SPECIES_BAGON              ] =  465,
    [SPECIES_SHELGON            ] =  466,
    [SPECIES_SALAMENCE          ] =  467,
    [SPECIES_BELDUM             ] =  468,
    [SPECIES_METANG             ] =  469,
    [SPECIES_METAGROSS          ] =  470,
    [SPECIES_REGIROCK           ] =  471,
    [SPECIES_REGICE             ] =  472,
    [SPECIES_REGISTEEL          ] =  473,
    [SPECIES_LATIAS             ] =  474,
    [SPECIES_LATIOS             ] =  475,
    [SPECIES_KYOGRE             ] =  476,
    [SPECIES_GROUDON            ] =  477,
    [SPECIES_RAYQUAZA           ] =  478,
    [SPECIES_JIRACHI            ] =  479,
    [SPECIES_DEOXYS             ] =  480,
    [SPECIES_TURTWIG            ] =  484,
    [SPECIES_GROTLE             ] =  485,
    [SPECIES_TORTERRA           ] =  486,
    [SPECIES_CHIMCHAR           ] =  487,
    [SPECIES_MONFERNO           ] =  488,
    [SPECIES_INFERNAPE          ] =  489,
    [SPECIES_PIPLUP             ] =  490,
    [SPECIES_PRINPLUP           ] =  491,
    [SPECIES_EMPOLEON           ] =  492,
    [SPECIES_STARLY             ] =  493,
    [SPECIES_STARAVIA           ] =  494,
    [SPECIES_STARAPTOR          ] =  495,
    [SPECIES_BIDOOF             ] =  496,
    [SPECIES_BIBAREL            ] =  497,
    [SPECIES_KRICKETOT          ] =  498,
    [SPECIES_KRICKETUNE         ] =  499,
    [SPECIES_SHINX              ] =  500,
    [SPECIES_LUXIO              ] =  501,
    [SPECIES_LUXRAY             ] =  502,
    [SPECIES_BUDEW              ] =  503,
    [SPECIES_ROSERADE           ] =  504,
    [SPECIES_CRANIDOS           ] =  505,
    [SPECIES_RAMPARDOS          ] =  506,
    [SPECIES_SHIELDON           ] =  507,
    [SPECIES_BASTIODON          ] =  508,
    [SPECIES_BURMY              ] =  509,
    [SPECIES_WORMADAM           ] =  512,
    [SPECIES_MOTHIM             ] =  515,
    [SPECIES_COMBEE             ] =  516,
    [SPECIES_VESPIQUEN          ] =  518,
    [SPECIES_PACHIRISU          ] =  519,
    [SPECIES_BUIZEL             ] =  520,
    [SPECIES_FLOATZEL           ] =  521,
    [SPECIES_CHERUBI            ] =  522,
    [SPECIES_CHERRIM            ] =  523,
    [SPECIES_SHELLOS            ] =  524,
    [SPECIES_GASTRODON          ] =  526,
    [SPECIES_AMBIPOM            ] =  528,
    [SPECIES_DRIFLOON           ] =  529,
    [SPECIES_DRIFBLIM           ] =  530,
    [SPECIES_BUNEARY            ] =  531,
    [SPECIES_LOPUNNY            ] =  532,
    [SPECIES_MISMAGIUS          ] =  533,
    [SPECIES_HONCHKROW          ] =  534,
    [SPECIES_GLAMEOW            ] =  535,
    [SPECIES_PURUGLY            ] =  536,
    [SPECIES_CHINGLING          ] =  537,
    [SPECIES_STUNKY             ] =  538,
    [SPECIES_SKUNTANK           ] =  539,
    [SPECIES_BRONZOR            ] =  540,
    [SPECIES_BRONZONG           ] =  541,
    [SPECIES_BONSLY             ] =  542,
    [SPECIES_MIME_JR            ] =  543,
    [SPECIES_HAPPINY            ] =  544,
    [SPECIES_CHATOT             ] =  545,
    [SPECIES_SPIRITOMB          ] =  546,
    [SPECIES_GIBLE              ] =  547,
    [SPECIES_GABITE             ] =  548,
    [SPECIES_GARCHOMP           ] =  549,
    [SPECIES_MUNCHLAX           ] =  550,
    [SPECIES_RIOLU              ] =  551,
    [SPECIES_LUCARIO            ] =  552,
    [SPECIES_HIPPOPOTAS         ] =  553,
    [SPECIES_HIPPOWDON          ] =  555,
    [SPECIES_SKORUPI            ] =  557,
    [SPECIES_DRAPION            ] =  558,
    [SPECIES_CROAGUNK           ] =  559,
    [SPECIES_TOXICROAK          ] =  560,
    [SPECIES_CARNIVINE          ] =  561,
    [SPECIES_FINNEON            ] =  562,
    [SPECIES_LUMINEON           ] =  563,
    [SPECIES_MANTYKE            ] =  564,
    [SPECIES_SNOVER             ] =  565,
    [SPECIES_ABOMASNOW          ] =  566,
    [SPECIES_WEAVILE            ] =  567,
    [SPECIES_MAGNEZONE          ] =  568,
    [SPECIES_LICKILICKY         ] =  569,
    [SPECIES_RHYPERIOR          ] =  570,
    [SPECIES_TANGROWTH          ] =  571,
    [SPECIES_ELECTIVIRE         ] =  572,
    [SPECIES_MAGMORTAR          ] =  573,
    [SPECIES_TOGEKISS           ] =  574,
    [SPECIES_YANMEGA            ] =  575,
    [SPECIES_LEAFEON            ] =  576,
    [SPECIES_GLACEON            ] =  577,
    [SPECIES_GLISCOR            ] =  578,
    [SPECIES_MAMOSWINE          ] =  579,
    [SPECIES_PORYGON_Z          ] =  580,
    [SPECIES_GALLADE            ] =  581,
    [SPECIES_PROBOPASS          ] =  582,
    [SPECIES_DUSKNOIR           ] =  583,
    [SPECIES_FROSLASS           ] =  584,
    [SPECIES_ROTOM              ] =  585,
    [SPECIES_UXIE               ] =  591,
    [SPECIES_MESPRIT            ] =  592,
    [SPECIES_AZELF              ] =  593,
    [SPECIES_DIALGA             ] =  594,
    [SPECIES_PALKIA             ] =  596,
    [SPECIES_HEATRAN            ] =  598,
    [SPECIES_REGIGIGAS          ] =  599,
    [SPECIES_GIRATINA           ] =  600,
    [SPECIES_CRESSELIA          ] =  602,
    [SPECIES_PHIONE             ] =  603,
    [SPECIES_MANAPHY            ] =  604,
    [SPECIES_DARKRAI            ] =  605,
    [SPECIES_SHAYMIN            ] =  606,
    [SPECIES_ARCEUS             ] =  608,
    [SPECIES_EGG                ] =    0,
    [SPECIES_BAD_EGG            ] =    0,
    [SPECIES_DEOXYS_ATTACK      ] =    0,
    [SPECIES_DEOXYS_DEFENSE     ] =    0,
    [SPECIES_DEOXYS_SPEED       ] =    0,
    [SPECIES_WORMADAM_SANDY     ] =    0,
    [SPECIES_WORMADAM_TRASHY    ] =    0,
    [SPECIES_GIRATINA_ORIGIN    ] =    0,
    [SPECIES_SHAYMIN_SKY        ] =    0,
    [SPECIES_ROTOM_HEAT         ] =    0,
    [SPECIES_ROTOM_WASH         ] =    0,
    [SPECIES_ROTOM_FROST        ] =    0,
    [SPECIES_ROTOM_FAN          ] =    0,
    [SPECIES_ROTOM_MOW          ] =    0,
    [SPECIES_508                ] =    0,
    [SPECIES_509                ] =    0,
    [SPECIES_510                ] =    0,
    [SPECIES_511                ] =    0,
    [SPECIES_512                ] =    0,
    [SPECIES_513                ] =    0,
    [SPECIES_514                ] =    0,
    [SPECIES_515                ] =    0,
    [SPECIES_516                ] =    0,
    [SPECIES_517                ] =    0,
    [SPECIES_518                ] =    0,
    [SPECIES_519                ] =    0,
    [SPECIES_520                ] =    0,
    [SPECIES_521                ] =    0,
    [SPECIES_522                ] =    0,
    [SPECIES_523                ] =    0,
    [SPECIES_524                ] =    0,
    [SPECIES_525                ] =    0,
    [SPECIES_526                ] =    0,
    [SPECIES_527                ] =    0,
    [SPECIES_528                ] =    0,
    [SPECIES_529                ] =    0,
    [SPECIES_530                ] =    0,
    [SPECIES_531                ] =    0,
    [SPECIES_532                ] =    0,
    [SPECIES_533                ] =    0,
    [SPECIES_534                ] =    0,
    [SPECIES_535                ] =    0,
    [SPECIES_536                ] =    0,
    [SPECIES_537                ] =    0,
    [SPECIES_538                ] =    0,
    [SPECIES_539                ] =    0,
    [SPECIES_540                ] =    0,
    [SPECIES_541                ] =    0,
    [SPECIES_542                ] =    0,
    [SPECIES_543                ] =    0,
    [SPECIES_VICTINI            ] =  626,
    [SPECIES_SNIVY              ] =  627,
    [SPECIES_SERVINE            ] =  628,
    [SPECIES_SERPERIOR          ] =  629,
    [SPECIES_TEPIG              ] =  630,
    [SPECIES_PIGNITE            ] =  631,
    [SPECIES_EMBOAR             ] =  632,
    [SPECIES_OSHAWOTT           ] =  633,
    [SPECIES_DEWOTT             ] =  634,
    [SPECIES_SAMUROTT           ] =  635,
    [SPECIES_PATRAT             ] =  637,
    [SPECIES_WATCHOG            ] =  638,
    [SPECIES_LILLIPUP           ] =  639,
    [SPECIES_HERDIER            ] =  640,
    [SPECIES_STOUTLAND          ] =  641,
    [SPECIES_PURRLOIN           ] =  642,
    [SPECIES_LIEPARD            ] =  643,
    [SPECIES_PANSAGE            ] =  644,
    [SPECIES_SIMISAGE           ] =  645,
    [SPECIES_PANSEAR            ] =  646,
    [SPECIES_SIMISEAR           ] =  647,
    [SPECIES_PANPOUR            ] =  648,
    [SPECIES_SIMIPOUR           ] =  649,
    [SPECIES_MUNNA              ] =  650,
    [SPECIES_MUSHARNA           ] =  651,
    [SPECIES_PIDOVE             ] =  652,
    [SPECIES_TRANQUILL          ] =  653,
    [SPECIES_UNFEZANT           ] =  654,
    [SPECIES_BLITZLE            ] =  656,
    [SPECIES_ZEBSTRIKA          ] =  657,
    [SPECIES_ROGGENROLA         ] =  658,
    [SPECIES_BOLDORE            ] =  659,
    [SPECIES_GIGALITH           ] =  660,
    [SPECIES_WOOBAT             ] =  661,
    [SPECIES_SWOOBAT            ] =  662,
    [SPECIES_DRILBUR            ] =  663,
    [SPECIES_EXCADRILL          ] =  664,
    [SPECIES_AUDINO             ] =  665,
    [SPECIES_TIMBURR            ] =  666,
    [SPECIES_GURDURR            ] =  667,
    [SPECIES_CONKELDURR         ] =  668,
    [SPECIES_TYMPOLE            ] =  669,
    [SPECIES_PALPITOAD          ] =  670,
    [SPECIES_SEISMITOAD         ] =  671,
    [SPECIES_THROH              ] =  672,
    [SPECIES_SAWK               ] =  673,
    [SPECIES_SEWADDLE           ] =  674,
    [SPECIES_SWADLOON           ] =  675,
    [SPECIES_LEAVANNY           ] =  676,
    [SPECIES_VENIPEDE           ] =  677,
    [SPECIES_WHIRLIPEDE         ] =  678,
    [SPECIES_SCOLIPEDE          ] =  679,
    [SPECIES_COTTONEE           ] =  680,
    [SPECIES_WHIMSICOTT         ] =  681,
    [SPECIES_PETILIL            ] =  682,
    [SPECIES_LILLIGANT          ] =  683,
    [SPECIES_BASCULIN           ] =  685,
    [SPECIES_SANDILE            ] =  688,
    [SPECIES_KROKOROK           ] =  689,
    [SPECIES_KROOKODILE         ] =  690,
    [SPECIES_DARUMAKA           ] =  691,
    [SPECIES_DARMANITAN         ] =  693,
    [SPECIES_MARACTUS           ] =  697,
    [SPECIES_DWEBBLE            ] =  698,
    [SPECIES_CRUSTLE            ] =  699,
    [SPECIES_SCRAGGY            ] =  700,
    [SPECIES_SCRAFTY            ] =  701,
    [SPECIES_SIGILYPH           ] =  702,
    [SPECIES_YAMASK             ] =  703,
    [SPECIES_COFAGRIGUS         ] =  705,
    [SPECIES_TIRTOUGA           ] =  706,
    [SPECIES_CARRACOSTA         ] =  707,
    [SPECIES_ARCHEN             ] =  708,
    [SPECIES_ARCHEOPS           ] =  709,
    [SPECIES_TRUBBISH           ] =  710,
    [SPECIES_GARBODOR           ] =  711,
    [SPECIES_ZORUA              ] =  712,
    [SPECIES_ZOROARK            ] =  714,
    [SPECIES_MINCCINO           ] =  716,
    [SPECIES_CINCCINO           ] =  717,
    [SPECIES_GOTHITA            ] =  718,
    [SPECIES_GOTHORITA          ] =  719,
    [SPECIES_GOTHITELLE         ] =  720,
    [SPECIES_SOLOSIS            ] =  721,
    [SPECIES_DUOSION            ] =  722,
    [SPECIES_REUNICLUS          ] =  723,
    [SPECIES_DUCKLETT           ] =  724,
    [SPECIES_SWANNA             ] =  725,
    [SPECIES_VANILLITE          ] =  726,
    [SPECIES_VANILLISH          ] =  727,
    [SPECIES_VANILLUXE          ] =  728,
    [SPECIES_DEERLING           ] =  729,
    [SPECIES_SAWSBUCK           ] =  733,
    [SPECIES_EMOLGA             ] =  737,
    [SPECIES_KARRABLAST         ] =  738,
    [SPECIES_ESCAVALIER         ] =  739,
    [SPECIES_FOONGUS            ] =  740,
    [SPECIES_AMOONGUSS          ] =  741,
    [SPECIES_FRILLISH           ] =  742,
    [SPECIES_JELLICENT          ] =  744,
    [SPECIES_ALOMOMOLA          ] =  746,
    [SPECIES_JOLTIK             ] =  747,
    [SPECIES_GALVANTULA         ] =  748,
    [SPECIES_FERROSEED          ] =  749,
    [SPECIES_FERROTHORN         ] =  750,
    [SPECIES_KLINK              ] =  751,
    [SPECIES_KLANG              ] =  752,
    [SPECIES_KLINKLANG          ] =  753,
    [SPECIES_TYNAMO             ] =  754,
    [SPECIES_EELEKTRIK          ] =  755,
    [SPECIES_EELEKTROSS         ] =  756,
    [SPECIES_ELGYEM             ] =  757,
    [SPECIES_BEHEEYEM           ] =  758,
    [SPECIES_LITWICK            ] =  759,
    [SPECIES_LAMPENT            ] =  760,
    [SPECIES_CHANDELURE         ] =  761,
    [SPECIES_AXEW               ] =  762,
    [SPECIES_FRAXURE            ] =  763,
    [SPECIES_HAXORUS            ] =  764,
    [SPECIES_CUBCHOO            ] =  765,
    [SPECIES_BEARTIC            ] =  766,
    [SPECIES_CRYOGONAL          ] =  767,
    [SPECIES_SHELMET            ] =  768,
    [SPECIES_ACCELGOR           ] =  769,
    [SPECIES_STUNFISK           ] =  770,
    [SPECIES_MIENFOO            ] =  772,
    [SPECIES_MIENSHAO           ] =  773,
    [SPECIES_DRUDDIGON          ] =  774,
    [SPECIES_GOLETT             ] =  775,
    [SPECIES_GOLURK             ] =  776,
    [SPECIES_PAWNIARD           ] =  777,
    [SPECIES_BISHARP            ] =  778,
    [SPECIES_BOUFFALANT         ] =  779,
    [SPECIES_RUFFLET            ] =  780,
    [SPECIES_BRAVIARY           ] =  781,
    [SPECIES_VULLABY            ] =  783,
    [SPECIES_MANDIBUZZ          ] =  784,
    [SPECIES_HEATMOR            ] =  785,
    [SPECIES_DURANT             ] =  786,
    [SPECIES_DEINO              ] =  787,
    [SPECIES_ZWEILOUS           ] =  788,
    [SPECIES_HYDREIGON          ] =  789,
    [SPECIES_LARVESTA           ] =  790,
    [SPECIES_VOLCARONA          ] =  791,
    [SPECIES_COBALION           ] =  792,
    [SPECIES_TERRAKION          ] =  793,
    [SPECIES_VIRIZION           ] =  794,
    [SPECIES_TORNADUS           ] =  795,
    [SPECIES_THUNDURUS          ] =  797,
    [SPECIES_RESHIRAM           ] =  799,
    [SPECIES_ZEKROM             ] =  800,
    [SPECIES_LANDORUS           ] =  801,
    [SPECIES_KYUREM             ] =  803,
    [SPECIES_KELDEO             ] =  806,
    [SPECIES_MELOETTA           ] =  808,
    [SPECIES_GENESECT           ] =  810,
    [SPECIES_CHESPIN            ] =  811,
    [SPECIES_QUILLADIN          ] =  812,
    [SPECIES_CHESNAUGHT         ] =  813,
    [SPECIES_FENNEKIN           ] =  814,
    [SPECIES_BRAIXEN            ] =  815,
    [SPECIES_DELPHOX            ] =  816,
    [SPECIES_FROAKIE            ] =  817,
    [SPECIES_FROGADIER          ] =  818,
    [SPECIES_GRENINJA           ] =  819,
    [SPECIES_BUNNELBY           ] =  820,
    [SPECIES_DIGGERSBY          ] =  821,
    [SPECIES_FLETCHLING         ] =  822,
    [SPECIES_FLETCHINDER        ] =  823,
    [SPECIES_TALONFLAME         ] =  824,
    [SPECIES_SCATTERBUG         ] =  825,
    [SPECIES_SPEWPA             ] =  826,
    [SPECIES_VIVILLON           ] =  827,
    [SPECIES_LITLEO             ] =  847,
    [SPECIES_PYROAR             ] =  848,
    [SPECIES_FLABEBE            ] =  850,
    [SPECIES_FLOETTE            ] =  855,
    [SPECIES_FLORGES            ] =  861,
    [SPECIES_SKIDDO             ] =  866,
    [SPECIES_GOGOAT             ] =  867,
    [SPECIES_PANCHAM            ] =  868,
    [SPECIES_PANGORO            ] =  869,
    [SPECIES_FURFROU            ] =  870,
    [SPECIES_ESPURR             ] =  880,
    [SPECIES_MEOWSTIC           ] =  881,
    [SPECIES_HONEDGE            ] =  883,
    [SPECIES_DOUBLADE           ] =  884,
    [SPECIES_AEGISLASH          ] =  885,
    [SPECIES_SPRITZEE           ] =  886,
    [SPECIES_AROMATISSE         ] =  887,
    [SPECIES_SWIRLIX            ] =  888,
    [SPECIES_SLURPUFF           ] =  889,
    [SPECIES_INKAY              ] =  890,
    [SPECIES_MALAMAR            ] =  891,
    [SPECIES_BINACLE            ] =  892,
    [SPECIES_BARBARACLE         ] =  893,
    [SPECIES_SKRELP             ] =  894,
    [SPECIES_DRAGALGE           ] =  895,
    [SPECIES_CLAUNCHER          ] =  896,
    [SPECIES_CLAWITZER          ] =  897,
    [SPECIES_HELIOPTILE         ] =  898,
    [SPECIES_HELIOLISK          ] =  899,
    [SPECIES_TYRUNT             ] =  900,
    [SPECIES_TYRANTRUM          ] =  901,
    [SPECIES_AMAURA             ] =  902,
    [SPECIES_AURORUS            ] =  903,
    [SPECIES_SYLVEON            ] =  904,
    [SPECIES_HAWLUCHA           ] =  905,
    [SPECIES_DEDENNE            ] =  906,
    [SPECIES_CARBINK            ] =  907,
    [SPECIES_GOOMY              ] =  908,
    [SPECIES_SLIGGOO            ] =  909,
    [SPECIES_GOODRA             ] =  911,
    [SPECIES_KLEFKI             ] =  913,
    [SPECIES_PHANTUMP           ] =  914,
    [SPECIES_TREVENANT          ] =  915,
    [SPECIES_PUMPKABOO          ] =  916,
    [SPECIES_GOURGEIST          ] =  920,
    [SPECIES_BERGMITE           ] =  924,
    [SPECIES_AVALUGG            ] =  925,
    [SPECIES_NOIBAT             ] =  927,
    [SPECIES_NOIVERN            ] =  928,
    [SPECIES_XERNEAS            ] =  929,
    [SPECIES_YVELTAL            ] =  930,
    [SPECIES_ZYGARDE            ] =  931,
    [SPECIES_DIANCIE            ] =  937,
    [SPECIES_HOOPA              ] =  938,
    [SPECIES_VOLCANION          ] =  940,
    [SPECIES_ROWLET             ] =  941,
    [SPECIES_DARTRIX            ] =  942,
    [SPECIES_DECIDUEYE          ] =  943,
    [SPECIES_LITTEN             ] =  945,
    [SPECIES_TORRACAT           ] =  946,
    [SPECIES_INCINEROAR         ] =  947,
    [SPECIES_POPPLIO            ] =  948,
    [SPECIES_BRIONNE            ] =  949,
    [SPECIES_PRIMARINA          ] =  950,
    [SPECIES_PIKIPEK            ] =  951,
    [SPECIES_TRUMBEAK           ] =  952,
    [SPECIES_TOUCANNON          ] =  953,
    [SPECIES_YUNGOOS            ] =  954,
    [SPECIES_GUMSHOOS           ] =  955,
    [SPECIES_GRUBBIN            ] =  956,
    [SPECIES_CHARJABUG          ] =  957,
    [SPECIES_VIKAVOLT           ] =  958,
    [SPECIES_CRABRAWLER         ] =  959,
    [SPECIES_CRABOMINABLE       ] =  960,
    [SPECIES_ORICORIO           ] =  961,
    [SPECIES_CUTIEFLY           ] =  965,
    [SPECIES_RIBOMBEE           ] =  966,
    [SPECIES_ROCKRUFF           ] =  967,
    [SPECIES_LYCANROC           ] =  969,
    [SPECIES_WISHIWASHI         ] =  972,
    [SPECIES_MAREANIE           ] =  973,
    [SPECIES_TOXAPEX            ] =  974,
    [SPECIES_MUDBRAY            ] =  975,
    [SPECIES_MUDSDALE           ] =  976,
    [SPECIES_DEWPIDER           ] =  977,
    [SPECIES_ARAQUANID          ] =  978,
    [SPECIES_FOMANTIS           ] =  979,
    [SPECIES_LURANTIS           ] =  980,
    [SPECIES_MORELULL           ] =  981,
    [SPECIES_SHIINOTIC          ] =  982,
    [SPECIES_SALANDIT           ] =  983,
    [SPECIES_SALAZZLE           ] =  984,
    [SPECIES_STUFFUL            ] =  985,
    [SPECIES_BEWEAR             ] =  986,
    [SPECIES_BOUNSWEET          ] =  987,
    [SPECIES_STEENEE            ] =  988,
    [SPECIES_TSAREENA           ] =  989,
    [SPECIES_COMFEY             ] =  990,
    [SPECIES_ORANGURU           ] =  991,
    [SPECIES_PASSIMIAN          ] =  992,
    [SPECIES_WIMPOD             ] =  993,
    [SPECIES_GOLISOPOD          ] =  994,
    [SPECIES_SANDYGAST          ] =  995,
    [SPECIES_PALOSSAND          ] =  996,
    [SPECIES_PYUKUMUKU          ] =  997,
    [SPECIES_TYPE_NULL          ] =  998,
    [SPECIES_SILVALLY           ] =  999,
    [SPECIES_MINIOR             ] = 1017,
    [SPECIES_KOMALA             ] = 1024,
    [SPECIES_TURTONATOR         ] = 1025,
    [SPECIES_TOGEDEMARU         ] = 1026,
    [SPECIES_MIMIKYU            ] = 1027,
    [SPECIES_BRUXISH            ] = 1028,
    [SPECIES_DRAMPA             ] = 1029,
    [SPECIES_DHELMISE           ] = 1030,
    [SPECIES_JANGMO_O           ] = 1031,
    [SPECIES_HAKAMO_O           ] = 1032,
    [SPECIES_KOMMO_O            ] = 1033,
    [SPECIES_TAPU_KOKO          ] = 1034,
    [SPECIES_TAPU_LELE          ] = 1035,
    [SPECIES_TAPU_BULU          ] = 1036,
    [SPECIES_TAPU_FINI          ] = 1037,
    [SPECIES_COSMOG             ] = 1038,
    [SPECIES_COSMOEM            ] = 1039,
    [SPECIES_SOLGALEO           ] = 1040,
    [SPECIES_LUNALA             ] = 1041,
    [SPECIES_NIHILEGO           ] = 1042,
    [SPECIES_BUZZWOLE           ] = 1043,
    [SPECIES_PHEROMOSA          ] = 1044,
    [SPECIES_XURKITREE          ] = 1045,
    [SPECIES_CELESTEELA         ] = 1046,
    [SPECIES_KARTANA            ] = 1047,
    [SPECIES_GUZZLORD           ] = 1048,
    [SPECIES_NECROZMA           ] = 1049,
    [SPECIES_MAGEARNA           ] = 1052,
    [SPECIES_MARSHADOW          ] = 1054,
    [SPECIES_POIPOLE            ] = 1055,
    [SPECIES_NAGANADEL          ] = 1056,
    [SPECIES_STAKATAKA          ] = 1057,
    [SPECIES_BLACEPHALON        ] = 1058,
    [SPECIES_ZERAORA            ] = 1059,
    [SPECIES_MELTAN             ] = 1060,
    [SPECIES_MELMETAL           ] = 1061,
    [SPECIES_GROOKEY            ] = 1062,
    [SPECIES_THWACKEY           ] = 1063,
    [SPECIES_RILLABOOM          ] = 1064,
    [SPECIES_SCORBUNNY          ] = 1065,
    [SPECIES_RABOOT             ] = 1066,
    [SPECIES_CINDERACE          ] = 1067,
    [SPECIES_SOBBLE             ] = 1068,
    [SPECIES_DRIZZILE           ] = 1069,
    [SPECIES_INTELEON           ] = 1070,
    [SPECIES_SKWOVET            ] = 1071,
    [SPECIES_GREEDENT           ] = 1072,
    [SPECIES_ROOKIDEE           ] = 1073,
    [SPECIES_CORVISQUIRE        ] = 1074,
    [SPECIES_CORVIKNIGHT        ] = 1075,
    [SPECIES_BLIPBUG            ] = 1076,
    [SPECIES_DOTTLER            ] = 1077,
    [SPECIES_ORBEETLE           ] = 1078,
    [SPECIES_NICKIT             ] = 1079,
    [SPECIES_THIEVUL            ] = 1080,
    [SPECIES_GOSSIFLEUR         ] = 1081,
    [SPECIES_ELDEGOSS           ] = 1082,
    [SPECIES_WOOLOO             ] = 1083,
    [SPECIES_DUBWOOL            ] = 1084,
    [SPECIES_CHEWTLE            ] = 1085,
    [SPECIES_DREDNAW            ] = 1086,
    [SPECIES_YAMPER             ] = 1087,
    [SPECIES_BOLTUND            ] = 1088,
    [SPECIES_ROLYCOLY           ] = 1089,
    [SPECIES_CARKOL             ] = 1090,
    [SPECIES_COALOSSAL          ] = 1091,
    [SPECIES_APPLIN             ] = 1092,
    [SPECIES_FLAPPLE            ] = 1093,
    [SPECIES_APPLETUN           ] = 1094,
    [SPECIES_SILICOBRA          ] = 1095,
    [SPECIES_SANDACONDA         ] = 1096,
    [SPECIES_CRAMORANT          ] = 1097,
    [SPECIES_ARROKUDA           ] = 1098,
    [SPECIES_BARRASKEWDA        ] = 1099,
    [SPECIES_TOXEL              ] = 1100,
    [SPECIES_TOXTRICITY         ] = 1101,
    [SPECIES_SIZZLIPEDE         ] = 1103,
    [SPECIES_CENTISKORCH        ] = 1104,
    [SPECIES_CLOBBOPUS          ] = 1105,
    [SPECIES_GRAPPLOCT          ] = 1106,
    [SPECIES_SINISTEA           ] = 1107,
    [SPECIES_POLTEAGEIST        ] = 1109,
    [SPECIES_HATENNA            ] = 1111,
    [SPECIES_HATTREM            ] = 1112,
    [SPECIES_HATTERENE          ] = 1113,
    [SPECIES_IMPIDIMP           ] = 1114,
    [SPECIES_MORGREM            ] = 1115,
    [SPECIES_GRIMMSNARL         ] = 1116,
    [SPECIES_OBSTAGOON          ] = 1117,
    [SPECIES_PERRSERKER         ] = 1118,
    [SPECIES_CURSOLA            ] = 1119,
    [SPECIES_SIRFETCHD          ] = 1120,
    [SPECIES_MR_RIME            ] = 1121,
    [SPECIES_RUNERIGUS          ] = 1122,
    [SPECIES_MILCERY            ] = 1123,
    [SPECIES_ALCREMIE           ] = 1124,
    [SPECIES_FALINKS            ] = 1131,
    [SPECIES_PINCURCHIN         ] = 1132,
    [SPECIES_SNOM               ] = 1133,
    [SPECIES_FROSMOTH           ] = 1134,
    [SPECIES_STONJOURNER        ] = 1135,
    [SPECIES_EISCUE             ] = 1136,
    [SPECIES_INDEEDEE           ] = 1137,
    [SPECIES_MORPEKO            ] = 1139,
    [SPECIES_CUFANT             ] = 1140,
    [SPECIES_COPPERAJAH         ] = 1141,
    [SPECIES_DRACOZOLT          ] = 1142,
    [SPECIES_ARCTOZOLT          ] = 1143,
    [SPECIES_DRACOVISH          ] = 1144,
    [SPECIES_ARCTOVISH          ] = 1145,
    [SPECIES_DURALUDON          ] = 1146,
    [SPECIES_DREEPY             ] = 1147,
    [SPECIES_DRAKLOAK           ] = 1148,
    [SPECIES_DRAGAPULT          ] = 1149,
    [SPECIES_ZACIAN             ] = 1150,
    [SPECIES_ZAMAZENTA          ] = 1151,
    [SPECIES_ETERNATUS          ] = 1152,
    [SPECIES_KUBFU              ] = 1153,
    [SPECIES_URSHIFU            ] = 1154,
    [SPECIES_ZARUDE             ] = 1156,
    [SPECIES_REGIELEKI          ] = 1158,
    [SPECIES_REGIDRAGO          ] = 1159,
    [SPECIES_GLASTRIER          ] = 1160,
    [SPECIES_SPECTRIER          ] = 1161,
    [SPECIES_CALYREX            ] = 1162,
    [SPECIES_WYRDEER            ] = 1165,
    [SPECIES_KLEAVOR            ] = 1166,
    [SPECIES_URSALUNA           ] = 1167,
    [SPECIES_BASCULEGION        ] = 1168,
    [SPECIES_SNEASLER           ] = 1170,
    [SPECIES_OVERQWIL           ] = 1171,
    [SPECIES_ENAMORUS           ] = 1172,
    [SPECIES_SPRIGATITO         ] = 1174,
    [SPECIES_FLORAGATO          ] = 1175,
    [SPECIES_MEOWSCARADA        ] = 1176,
    [SPECIES_FUECOCO            ] = 1177,
    [SPECIES_CROCALOR           ] = 1178,
    [SPECIES_SKELEDIRGE         ] = 1179,
    [SPECIES_QUAXLY             ] = 1180,
    [SPECIES_QUAXWELL           ] = 1181,
    [SPECIES_QUAQUAVAL          ] = 1182,
    [SPECIES_LECHONK            ] = 1183,
    [SPECIES_OINKOLOGNE         ] = 1184,
    [SPECIES_TAROUNTULA         ] = 1186,
    [SPECIES_SPIDOPS            ] = 1187,
    [SPECIES_NYMBLE             ] = 1188,
    [SPECIES_LOKIX              ] = 1189,
    [SPECIES_PAWMI              ] = 1190,
    [SPECIES_PAWMO              ] = 1191,
    [SPECIES_PAWMOT             ] = 1192,
    [SPECIES_TANDEMAUS          ] = 1193,
    [SPECIES_MAUSHOLD           ] = 1194,
    [SPECIES_FIDOUGH            ] = 1196,
    [SPECIES_DACHSBUN           ] = 1197,
    [SPECIES_SMOLIV             ] = 1198,
    [SPECIES_DOLLIV             ] = 1199,
    [SPECIES_ARBOLIVA           ] = 1200,
    [SPECIES_SQUAWKABILLY       ] = 1201,
    [SPECIES_NACLI              ] = 1205,
    [SPECIES_NACLSTACK          ] = 1206,
    [SPECIES_GARGANACL          ] = 1207,
    [SPECIES_CHARCADET          ] = 1208,
    [SPECIES_ARMAROUGE          ] = 1209,
    [SPECIES_CERULEDGE          ] = 1210,
    [SPECIES_TADBULB            ] = 1211,
    [SPECIES_BELLIBOLT          ] = 1212,
    [SPECIES_WATTREL            ] = 1213,
    [SPECIES_KILOWATTREL        ] = 1214,
    [SPECIES_MASCHIFF           ] = 1215,
    [SPECIES_MABOSSTIFF         ] = 1216,
    [SPECIES_SHROODLE           ] = 1217,
    [SPECIES_GRAFAIAI           ] = 1218,
    [SPECIES_BRAMBLIN           ] = 1219,
    [SPECIES_BRAMBLEGHAST       ] = 1220,
    [SPECIES_TOEDSCOOL          ] = 1221,
    [SPECIES_TOEDSCRUEL         ] = 1222,
    [SPECIES_KLAWF              ] = 1223,
    [SPECIES_CAPSAKID           ] = 1224,
    [SPECIES_SCOVILLAIN         ] = 1225,
    [SPECIES_RELLOR             ] = 1226,
    [SPECIES_RABSCA             ] = 1227,
    [SPECIES_FLITTLE            ] = 1228,
    [SPECIES_ESPATHRA           ] = 1229,
    [SPECIES_TINKATINK          ] = 1230,
    [SPECIES_TINKATUFF          ] = 1231,
    [SPECIES_TINKATON           ] = 1232,
    [SPECIES_WIGLETT            ] = 1233,
    [SPECIES_WUGTRIO            ] = 1234,
    [SPECIES_BOMBIRDIER         ] = 1235,
    [SPECIES_FINIZEN            ] = 1236,
    [SPECIES_PALAFIN            ] = 1237,
    [SPECIES_VAROOM             ] = 1238,
    [SPECIES_REVAVROOM          ] = 1239,
    [SPECIES_CYCLIZAR           ] = 1245,
    [SPECIES_ORTHWORM           ] = 1246,
    [SPECIES_GLIMMET            ] = 1247,
    [SPECIES_GLIMMORA           ] = 1248,
    [SPECIES_GREAVARD           ] = 1249,
    [SPECIES_HOUNDSTONE         ] = 1250,
    [SPECIES_FLAMIGO            ] = 1251,
    [SPECIES_CETODDLE           ] = 1252,
    [SPECIES_CETITAN            ] = 1253,
    [SPECIES_VELUZA             ] = 1254,
    [SPECIES_DONDOZO            ] = 1255,
    [SPECIES_TATSUGIRI          ] = 1256,
    [SPECIES_ANNIHILAPE         ] = 1259,
    [SPECIES_CLODSIRE           ] = 1260,
    [SPECIES_FARIGIRAF          ] = 1261,
    [SPECIES_DUDUNSPARCE        ] = 1262,
    [SPECIES_KINGAMBIT          ] = 1264,
    [SPECIES_GREAT_TUSK         ] = 1265,
    [SPECIES_SCREAM_TAIL        ] = 1266,
    [SPECIES_BRUTE_BONNET       ] = 1267,
    [SPECIES_FLUTTER_MANE       ] = 1268,
    [SPECIES_SLITHER_WING       ] = 1269,
    [SPECIES_SANDY_SHOCKS       ] = 1270,
    [SPECIES_IRON_TREADS        ] = 1271,
    [SPECIES_IRON_BUNDLE        ] = 1272,
    [SPECIES_IRON_HANDS         ] = 1273,
    [SPECIES_IRON_JUGULIS       ] = 1274,
    [SPECIES_IRON_MOTH          ] = 1275,
    [SPECIES_IRON_THORNS        ] = 1276,
    [SPECIES_FRIGIBAX           ] = 1277,
    [SPECIES_ARCTIBAX           ] = 1278,
    [SPECIES_BAXCALIBUR         ] = 1279,
    [SPECIES_GIMMIGHOUL         ] = 1280,
    [SPECIES_GHOLDENGO          ] = 1282,
    [SPECIES_WO_CHIEN           ] = 1283,
    [SPECIES_CHIEN_PAO          ] = 1284,
    [SPECIES_TING_LU            ] = 1285,
    [SPECIES_CHI_YU             ] = 1286,
    [SPECIES_ROARING_MOON       ] = 1287,
    [SPECIES_IRON_VALIANT       ] = 1288,
    [SPECIES_KORAIDON           ] = 1289,
    [SPECIES_MIRAIDON           ] = 1290,
    [SPECIES_WALKING_WAKE       ] = 1291,
    [SPECIES_IRON_LEAVES        ] = 1292,
    [SPECIES_DIPPLIN            ] = 1293,
    [SPECIES_ARCHALUDON         ] = 1294,
    [SPECIES_RAGING_BOLT        ] = 1295,
    [SPECIES_IRON_CROWN         ] = 1296,
    [SPECIES_OGERPON            ] = 1297,
    [SPECIES_OKIDOGI            ] = 1298,
    [SPECIES_MUNKIDORI          ] = 1299,
    [SPECIES_FEZANDIPITI        ] = 1300,
    [SPECIES_TERAPAGOS          ] = 1301,
};


const struct FormData PokeFormDataTbl[]=
{
#ifdef MEGA_EVOLUTIONS
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
    {
        .species = SPECIES_RAYQUAZA,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_RAYQUAZA,
    },
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
#endif // MEGA_EVOLUTIONS

#ifdef PRIMAL_REVERSION
    {
        .species = SPECIES_KYOGRE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_KYOGRE_PRIMAL,
    },
    {
        .species = SPECIES_GROUDON,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_GROUDON_PRIMAL,
    },
#endif // PRIMAL_REVERSION

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
    { // slowpoke is really fun because slowbro has two forms so we have this duplicate entry here to map it properly during the evolution sequence
        .species = SPECIES_SLOWPOKE,
        .form_no = 2,
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
        .file = SPECIES_BASCULIN_RED_STRIPED,
    },
    {
        .species = SPECIES_BASCULIN,
        .form_no = 2,
        .need_rev = 0,
        .file = SPECIES_BASCULIN_BLUE_STRIPED,
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
        .file = SPECIES_ALCREMIE_BERRY_SWEET,
    },
    {
        .species = SPECIES_ALCREMIE,
        .form_no = 2,
        .need_rev = 0,
        .file = SPECIES_ALCREMIE_LOVE_SWEET,
    },
    {
        .species = SPECIES_ALCREMIE,
        .form_no = 3,
        .need_rev = 0,
        .file = SPECIES_ALCREMIE_STAR_SWEET,
    },
    {
        .species = SPECIES_ALCREMIE,
        .form_no = 4,
        .need_rev = 0,
        .file = SPECIES_ALCREMIE_CLOVER_SWEET,
    },
    {
        .species = SPECIES_ALCREMIE,
        .form_no = 5,
        .need_rev = 0,
        .file = SPECIES_ALCREMIE_FLOWER_SWEET,
    },
    {
        .species = SPECIES_ALCREMIE,
        .form_no = 6,
        .need_rev = 0,
        .file = SPECIES_ALCREMIE_RIBBON_SWEET,
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
        .need_rev = 0,
        .file = SPECIES_SHELLOS_EAST_SEA,
    },
    {
        .species = SPECIES_GASTRODON,
        .form_no = 1,
        .need_rev = 0,
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
    
    /**significant gender differences**/
    {
        .species = SPECIES_UNFEZANT,
        .form_no = 1,
        .need_rev = 0,
        .file = SPECIES_UNFEZANT_FEMALE,
    },
    {
        .species = SPECIES_FRILLISH,
        .form_no = 1,
        .need_rev = 0,
        .file = SPECIES_FRILLISH_FEMALE,
    },
    {
        .species = SPECIES_JELLICENT,
        .form_no = 1,
        .need_rev = 0,
        .file = SPECIES_JELLICENT_FEMALE
    },
    {
        .species = SPECIES_PYROAR,
        .form_no = 1,
        .need_rev = 0,
        .file = SPECIES_PYROAR_FEMALE
    },
    {
        .species = SPECIES_MEOWSTIC,
        .form_no = 1,
        .need_rev = 0,
        .file = SPECIES_MEOWSTIC_FEMALE,
    },
    {
        .species = SPECIES_INDEEDEE,
        .form_no = 1,
        .need_rev = 0,
        .file = SPECIES_INDEEDEE_FEMALE,
    },
    {
        .species = SPECIES_BASCULEGION,
        .form_no = 3,
        .need_rev = 0,
        .file = SPECIES_BASCULEGION_FEMALE,
    },

};

extern u32 word_to_store_form_at;

u8 __attribute__((long_call)) GetOtherFormPic(MON_PIC *picdata, u16 mons_no, u8 dir, u8 col, u8 form_no)
{
    word_to_store_form_at = form_no;

    if (!form_no)
        return FALSE;

    for (u32 i = 0; i < NELEMS(PokeFormDataTbl); i++)
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

int __attribute__((long_call)) PokeOtherFormMonsNoGet(int mons_no, int form_no)
{
    u32 i;
    switch (mons_no)
    {
    case SPECIES_DEOXYS:
        if ((form_no) && (form_no <= 3))
        {
            mons_no = 495 + form_no;
        }
        break;
    case SPECIES_WORMADAM:
        if ((form_no) && (form_no <= 2))
        {
            mons_no = 498 + form_no;
        }
        break;

    case SPECIES_GIRATINA:
        if ((form_no) && (form_no <= 1))
        {
            mons_no = 500 + form_no;
        }
        break;
    case SPECIES_SHAYMIN:
        if ((form_no) && (form_no <= 1))
        {
            mons_no = 501 + form_no;
        }
        break;
    case SPECIES_ROTOM:
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
        {
            mons_no = PokeFormDataTbl[i].file;
            break;
        }
    }
    return mons_no;
}

u16 __attribute__((long_call)) GetSpeciesBasedOnForm(int mons_no, int form_no)
{
    for (u32 i = 0; i < NELEMS(PokeFormDataTbl); i++)
    {
        if (mons_no == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no)
        {
            mons_no = PokeFormDataTbl[i].file;
            break;
        }
    }
    return mons_no;
}

u16 __attribute__((long_call)) GetOriginalSpeciesBasedOnAdjustedForm(u32 mons_no)
{
    if (mons_no <= MAX_MON_NUM)
        return mons_no;

    for (u32 i = 0; i < NELEMS(PokeFormDataTbl); i++)
    {
        if (mons_no == PokeFormDataTbl[i].file)
        {
            mons_no = PokeFormDataTbl[i].species;
            break;
        }
    }
    return mons_no;
}

// icons handled here--no need to worry about fixing shellos, gastrodon, cherrim, castform
u32 __attribute__((long_call)) PokeIconIndexGetByMonsNumber(u32 mons, u32 egg, u32 form_no)
{
    u32 i;
    u32 pat = form_no;

    if (egg == 1)
    {
        if (mons == SPECIES_MANAPHY)
        {
            return 502; // manaphy egg icon
        }
        else
        {
            return 501; // normal egg icon
        }
    }

    pat = PokeFuseiFormNoCheck(mons, pat);//70438

    if (pat != 0)
    {
        if (mons == SPECIES_DEOXYS)
        {
            return (503 + pat - 1);
        }
        if (mons == SPECIES_UNOWN)
        {
            return (507 + pat - 1);
        }
        if (mons == SPECIES_BURMY)
        {
            return (534 + pat - 1);
        }
        if (mons == SPECIES_WORMADAM)
        {
            return (536 + pat - 1);
        }
        if (mons == SPECIES_SHELLOS)
        {
            return (538 + pat - 1);
        }
        if (mons == SPECIES_GASTRODON)
        {
            return (539 + pat - 1);
        }
        if (mons == SPECIES_GIRATINA)
        {
            return (540 + pat - 1);
        }
        if (mons == SPECIES_SHAYMIN)
        {
            return (541 + pat - 1);
        }
        if (mons == SPECIES_ROTOM)
        {
            return (542 + pat - 1);
        }
        else if (mons == SPECIES_CASTFORM)
        {
            return (547 + pat - 1);
        }
        else if (mons == SPECIES_CHERRIM)
        {
            return (550 + pat - 1);
        }
    }

    for (i = 0; i < NELEMS(PokeFormDataTbl); i++)
    {
        if (mons == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no)
            return PokeFormDataTbl[i].file + 7;
    }
    return (7 + mons);
}

u16 __attribute__((long_call)) PokeIconCgxPatternGet(const void *ppp)
{
    u32 monsno;
    u32 i;

    monsno = GetBoxMonData((void *)ppp, 0xae, NULL);

    switch (monsno)
    {
    case SPECIES_UNOWN:
    case SPECIES_DEOXYS:
    case SPECIES_BURMY:
    case SPECIES_WORMADAM:
    case SPECIES_SHELLOS:
    case SPECIES_GASTRODON:
    case SPECIES_GIRATINA:
    case SPECIES_SHAYMIN:
    case SPECIES_ROTOM:
        return GetBoxMonData((void *)ppp, 0x70, NULL);

    default:
        for (i = 0; i < NELEMS(PokeFormDataTbl); i++)
        {
            if (monsno == PokeFormDataTbl[i].species)
                return GetBoxMonData((void *)ppp, 0x70, NULL);
        }
        return 0;
    }
    return 0;
}

u32 __attribute__((long_call)) PokeIconPalNumGet(u32 mons, u32 form, u32 isegg)
{
    u32 i;
    
    if (isegg)
    {
        if (mons == SPECIES_MANAPHY)
            mons = 495;
        else
            mons = 494;
        return mons;
    }

    if (form != 0)
    {
        if (mons == SPECIES_DEOXYS)
        {
            mons = 496 + form - 1;
        }
        else if (mons == SPECIES_UNOWN)
        {
            mons = 499 + form - 1;
        }
        else if (mons == SPECIES_BURMY)
        {
            mons = 527 + form - 1;
        }
        else if (mons == SPECIES_WORMADAM)
        {
            mons = 529 + form - 1;
        }
        else if (mons == SPECIES_SHELLOS)
        {
            mons = 531 + form - 1;
        }
        else if (mons == SPECIES_GASTRODON)
        {
            mons = 532 + form - 1;
        }
        else if (mons == SPECIES_GIRATINA)
        {
            mons = 533 + form - 1;
        }
        else if (mons == SPECIES_SHAYMIN)
        {
            mons = 534 + form - 1;
        }
        else if (mons == SPECIES_ROTOM)
        {
            mons = 535 + form - 1;
        }
        else if (mons == SPECIES_CASTFORM)
        {
            mons = 540 + form - 1;
        }
        else if (mons == SPECIES_CHERRIM)
        {
            mons = 543 + form - 1;
        }
        for (i = 0; i < NELEMS(PokeFormDataTbl); i++)
        {
            if (mons == PokeFormDataTbl[i].species && form == PokeFormDataTbl[i].form_no)
                return PokeFormDataTbl[i].file;
        }
    }
    return mons;
}

u32 __attribute__((long_call)) GetMonIconPalette(u32 mons, u32 form, u32 isegg)
{
    u32 r0 = PokeIconPalNumGet(mons, form, isegg);
    return gIconPalTable[r0];
}

u16 __attribute__((long_call)) GetPokemonOwNum(u16 species)
{
    return sSpeciesToOWGfx[species];
}

u16 __attribute__((long_call)) GetMonHiddenAbility(u16 species, u32 form)
{
#ifdef HIDDEN_ABILITIES
    u16 ability = 0;
    u16* hiddenAbilityTable = sys_AllocMemory(0, sizeof(u16) * MAX_SPECIES_INCLUDING_FORMS);

    species = PokeOtherFormMonsNoGet(species, form);
    ArchiveDataLoad(hiddenAbilityTable, ARC_CODE_ADDONS, CODE_ADDON_HIDDEN_ABILITY_LIST);
    ability = hiddenAbilityTable[species];
    sys_FreeMemoryEz(hiddenAbilityTable);

    return ability;
#else
    return 0;
#endif // HIDDEN_ABILITIES
}

void __attribute__((long_call)) SetBoxMonAbility(void *boxmon) // actually takes boxmon struct as parameter, but that doesn't need to be properly defined yet
{
    BOOL fastMode;
    int mons_no, form;
    u32 ability1, ability2, hiddenability;
    u32 pid;
    u16 has_hidden_ability;

    fastMode = BoxMonSetFastModeOn(boxmon);

#ifdef DEBUG_HIDDEN_ABILITIES
    has_hidden_ability = *(u8 *)(0x023E0000);
    BoxMonDataSet(boxmon, ID_PARA_dummy_p2_1, (u8 *)&has_hidden_ability);
#endif // DEBUG_HIDDEN_ABILITIES

    mons_no = GetBoxMonData(boxmon, ID_PARA_monsno, NULL);
    pid = GetBoxMonData(boxmon, ID_PARA_personal_rnd, NULL);
    form = GetBoxMonData(boxmon, ID_PARA_form_no, NULL);

    if (CheckScriptFlag(HIDDEN_ABILITIES_FLAG) == 1)
    {
        SET_BOX_MON_HIDDEN_ABILITY_BIT(boxmon)
        has_hidden_ability = 1;
        // need to clear this script flag because this function is used for in-battle form change ability resets as well, which shouldn't happen normally
        ClearScriptFlag(HIDDEN_ABILITIES_FLAG);
    }
    else
    {
        has_hidden_ability = GetBoxMonData(boxmon, ID_PARA_dummy_p2_1, NULL) & DUMMY_P2_1_HIDDEN_ABILITY_MASK; // dummy_p2_1 & hidden ability mask
    }

    hiddenability = GetMonHiddenAbility(mons_no, form);
    mons_no = PokeOtherFormMonsNoGet(mons_no, form);

    ability1 = PokeFormNoPersonalParaGet(mons_no, form, PERSONAL_ABILITY_1);
    ability2 = PokeFormNoPersonalParaGet(mons_no, form, PERSONAL_ABILITY_2);

    if (has_hidden_ability && hiddenability != 0)
    {
        BoxMonDataSet(boxmon, ID_PARA_speabino, (u8 *)&hiddenability);
    }
    else if (ability2 != 0)
    {
        if (pid & 1)
        {
            BoxMonDataSet(boxmon, ID_PARA_speabino, (u8 *)&ability2);
        }
        else
        {
            BoxMonDataSet(boxmon, ID_PARA_speabino, (u8 *)&ability1);
        }
    }
    else
    {
        BoxMonDataSet(boxmon, ID_PARA_speabino, (u8 *)&ability1);
    }

    BoxMonSetFastModeOff(boxmon, fastMode);
}


u32 __attribute__((long_call)) GetSpeciesBaseExp(u32 species, u32 form)
{
    u16 *baseExpTable = sys_AllocMemory(0, sizeof(u16) * MAX_SPECIES_INCLUDING_FORMS);
    u16 baseExp;
    
    species = PokeOtherFormMonsNoGet(species, form); // for whatever reason alternate formes can have different base experiences

    ArchiveDataLoad(baseExpTable, ARC_CODE_ADDONS, CODE_ADDON_BASE_EXPERIENCE_LIST);
    baseExp = baseExpTable[species];
    sys_FreeMemoryEz(baseExpTable);

    return baseExp;
}


u32 __attribute__((long_call)) GetGenesectType(u16 item) // this may just go unused
{
    switch (item)
    {
        case ITEM_DOUSE_DRIVE: return TYPE_WATER;
        case ITEM_SHOCK_DRIVE: return TYPE_ELECTRIC;
        case ITEM_BURN_DRIVE:  return TYPE_FIRE;
        case ITEM_CHILL_DRIVE: return TYPE_ICE;
    }
    return TYPE_NORMAL;
}

u32 __attribute__((long_call)) GetGenesectForme(u16 item)
{
    switch (item)
    {
        case ITEM_DOUSE_DRIVE: return 1;
        case ITEM_SHOCK_DRIVE: return 2;
        case ITEM_BURN_DRIVE:  return 3;
        case ITEM_CHILL_DRIVE: return 4;
    }
    return 0;
}


// add genesect handling to this function that changes form in the party silently.  i think it's only supposed to handle arceus, but it works for the party
void __attribute__((long_call)) ArceusBoxPokemonFormeChange(struct BoxPokemon *bp)
{
    u32 species = GetMonData(bp, ID_PARA_monsno, NULL);
    u32 ability = GetMonData(bp, ID_PARA_speabino, NULL);
    u32 item = GetMonData(bp, ID_PARA_item, NULL);
    u32 form = 0;
    
    if (species == SPECIES_ARCEUS
     && ability == ABILITY_MULTITYPE)
    {
        u32 held_effect = GetItemData(item, ITEM_PARAM_HOLD_EFFECT, 0); // heap id 0 gang
        form = GetArceusType(held_effect);
        SetMonData(bp, ID_PARA_form_no, &form);
    }

    if (species == SPECIES_GENESECT)
    {
        form = GetGenesectForme(item);
        SetMonData(bp, ID_PARA_form_no, &form);
    }
}

// overlay 14 is responsible for pc
u32 __attribute__((long_call)) HandleBoxPokemonFormeChanges(struct BoxPokemon* bp)
{
    u32 species = GetBoxMonData(bp, ID_PARA_monsno, NULL);
    
    if (species == SPECIES_ARCEUS || species == SPECIES_GENESECT)
    {
        u32 form_no = GetBoxMonData(bp, ID_PARA_form_no, NULL);
        
        ArceusBoxPokemonFormeChange(bp);
        
        if (GetBoxMonData(bp, ID_PARA_form_no, NULL) != form_no)
            return 1;
    }
    else if (species == SPECIES_GIRATINA)
    {
        u32 form_no = GetBoxMonData(bp, ID_PARA_form_no, NULL);
        
        GiratinaBoxPokemonFormChange(bp);
        
        if (GetBoxMonData(bp, ID_PARA_form_no, NULL) != form_no)
            return 1;
    }
    
    return 0;
}

u32 __attribute__((long_call)) CanUseRevealGlass(struct PartyPokemon *pp)
{
    u32 species = GetMonData(pp, ID_PARA_monsno, NULL);
    
    if (species == SPECIES_TORNADUS || species == SPECIES_THUNDURUS || species == SPECIES_LANDORUS)
    {
        return 1;
    }
    return 0;
}


#define RESHIRAM_MASK (0x80)
#define JUST_SPLICER_POS_MASK (0x7F)

u32 __attribute__((long_call)) CanUseDNASplicersGrabSplicerPos(struct PartyPokemon *pp, struct Party *party)
{
    u32 species = GetMonData(pp, ID_PARA_monsno, NULL);
    u32 form_no = GetMonData(pp, ID_PARA_form_no, NULL);
    
    if (species != SPECIES_KYUREM) // return invalid party slot if species isn't kyurem
    {
        return 6;
    }
    
    for (u32 i = 0; i < ((form_no != 0) ? 6 : party->count); i++) // check all 6 party slots if looking to revert
    {
        struct PartyPokemon *currentmon = PokeParty_GetMemberPointer(party, i);
        u32 species2 = GetMonData(currentmon, ID_PARA_monsno, NULL);
        
        if (species2 == 0 && form_no != 0) // looking for empty slot to dump reshiram to from save
        {
            return i;
        }
        else if ((species2 == SPECIES_RESHIRAM || species2 == SPECIES_ZEKROM) && form_no == 0) // looking for a reshiram to store to the save
        {
            return ((species2 == SPECIES_RESHIRAM ? RESHIRAM_MASK : 0) | i);
        }
    }
    return 6;
}

u32 queueAddPokeCount = 0;

u32 __attribute__((long_call)) UseItemFormeChangeCheck(struct PLIST_WORK *wk, void *dat)
{
    struct PartyPokemon *pp = PokeParty_GetMemberPointer(wk->dat->pp, wk->pos);
    if (wk->dat->item == ITEM_GRACIDEA
     && GrashideaFeasibleCheck(pp) == 1)
    {
        wk->dat->after_mons = 1; // change to sky forme
        sys_FreeMemoryEz(dat);
        PokeList_FormDemoOverlayLoad(wk);
        return 1;
    }
    
    if (wk->dat->item == ITEM_REVEAL_GLASS
     && CanUseRevealGlass(pp) == 1)
    {
        if (GetMonData(pp, ID_PARA_form_no, NULL) == 1)
            wk->dat->after_mons = 0; // change to incarnate forme
        else
            wk->dat->after_mons = 1; // change to therian forme
        sys_FreeMemoryEz(dat);
        PokeList_FormDemoOverlayLoad(wk);
        ChangePartyPokemonToForm(pp, wk->dat->after_mons); // this works alright
        return 1;
    }
    
#ifdef ALLOW_SAVE_CHANGES
    u32 splicer_pos = CanUseDNASplicersGrabSplicerPos(pp, wk->dat->pp);
    u32 reshiramBool = splicer_pos & RESHIRAM_MASK;
    splicer_pos &= JUST_SPLICER_POS_MASK;
    
    if (wk->dat->item == ITEM_DNA_SPLICERS
     && (splicer_pos < 6))
    {
        void *saveData = SaveBlock2_get();
        struct SAVE_MISC_DATA *saveMiscData = Sav2_Misc_get(saveData);
        
        if (GetMonData(pp, ID_PARA_form_no, NULL) != 0 && saveMiscData->isMonStored[STORED_MONS_DNA_SPLICERS]) // revert forme and put reshiram back in party
        {
            u32 currForm = GetMonData(pp, ID_PARA_form_no, NULL);

            // grab reshiram from save
            // add reshiram to party--can't just use PokeParty_Add because icons freak out when you tell them to animate something that isn't there
            //PokeParty_Add(wk->dat->pp, &saveMiscData->storedMons[STORED_MONS_DNA_SPLICERS]);
            struct PartyPokemon *reshiram = PokeParty_GetMemberPointer(wk->dat->pp, splicer_pos);
            *reshiram = saveMiscData->storedMons[STORED_MONS_DNA_SPLICERS];
            queueAddPokeCount = 1;

            // delete reshiram from save--may just be able to leave the old data without having to deal with memset as long as we flag it as no mon there
            memset(&saveMiscData->storedMons[STORED_MONS_DNA_SPLICERS], 0, sizeof(struct PartyPokemon));
            saveMiscData->isMonStored[STORED_MONS_DNA_SPLICERS] = 0;
            
            wk->dat->after_mons = 0;

            ChangePartyPokemonToForm(pp, 0);
            SwapPartyPokemonMove(pp, currForm == 1 ? MOVE_ICE_BURN : MOVE_FREEZE_SHOCK, MOVE_GLACIATE);
            SwapPartyPokemonMove(pp, currForm == 1 ? MOVE_FUSION_FLARE : MOVE_FUSION_BOLT, MOVE_SCARY_FACE);
        }
        else if (saveMiscData->isMonStored[STORED_MONS_DNA_SPLICERS] == 0) // return nothing otherwise
        {
            // grab reshiram from party
            // store reshiram in save
            saveMiscData->storedMons[STORED_MONS_DNA_SPLICERS] = *PokeParty_GetMemberPointer(wk->dat->pp, splicer_pos); // may have to directly memcpy this but this is good for the moment
            // delete reshiram from party--splicer_pos has the position to delete
            PokeParty_Delete(wk->dat->pp, splicer_pos);
            saveMiscData->isMonStored[STORED_MONS_DNA_SPLICERS] = 1;
            
            if (splicer_pos < wk->pos) // adjust this position back so that the right pokemon's forme gets changed
            {
                wk->pos--;
                pp = PokeParty_GetMemberPointer(wk->dat->pp, wk->pos);
            }
            
            if (reshiramBool) // turn to white kyurem
                wk->dat->after_mons = 1;
            else              // turn to black kyurem
                wk->dat->after_mons = 2;

            ChangePartyPokemonToForm(pp, wk->dat->after_mons);
            SwapPartyPokemonMove(pp, MOVE_GLACIATE, wk->dat->after_mons == 1 ? MOVE_ICE_BURN : MOVE_FREEZE_SHOCK);
            SwapPartyPokemonMove(pp, MOVE_SCARY_FACE, wk->dat->after_mons == 1 ? MOVE_FUSION_FLARE : MOVE_FUSION_BOLT);
        }
        else { return 0; } // get out because no changes should be made
        sys_FreeMemoryEz(dat);
        PokeList_FormDemoOverlayLoad(wk);
        return 1;
    }
#endif
    
    return 0;
}

u32 __attribute__((long_call)) PokeListProc_End_Extend(void *proc, int *seq) // finally add to pokecount so that icons are fine
{
    struct PLIST_WORK *wk = PROC_GetWork(proc);
    
    if (queueAddPokeCount)
    {
        queueAddPokeCount = 0;
        wk->dat->pp->count++;
    }

    return PokeListProc_End(proc, seq);
}

void __attribute__((long_call)) ChangePartyPokemonToForm(struct PartyPokemon *pp, u32 form)
{
    if (form != GetMonData(pp, ID_PARA_form_no, NULL))
    {
        SetMonData(pp, ID_PARA_form_no, &form);
        RecalcPartyPokemonStats(pp);
        ResetPartyPokemonAbility(pp);
    }
}

void __attribute__((long_call)) SwapPartyPokemonMove(struct PartyPokemon *pp, u32 oldMove, u32 newMove)
{
    for (u32 i = 0; i < 4; i++)
    {
        if (GetMonData(pp, ID_PARA_waza1+i, NULL) == oldMove)
        {
            SetMonData(pp, ID_PARA_waza1+i, &newMove);
            u32 maxPP = GetMonData(pp, ID_PARA_pp_max1+i, NULL);
            if (GetMonData(pp, ID_PARA_pp1+i, NULL) > maxPP)
            {
                SetMonData(pp, ID_PARA_pp1+i, &maxPP);
            }
            break;
        }
    }
}

void __attribute__((long_call)) ChangePartyPokemonToFormSwapMove(struct PartyPokemon *pp, u32 form, u32 oldMove, u32 newMove)
{
    if (form != GetMonData(pp, ID_PARA_form_no, NULL))
    {
        ChangePartyPokemonToForm(pp, form);
        SwapPartyPokemonMove(pp, oldMove, newMove);
    }
}

u32 __attribute__((long_call)) GrabCurrentSeason(void)
{
    struct RTCDate date;
    GF_RTC_CopyDate(&date);
    
    return ((u8)(date.month-1)) % 4;
}

void __attribute__((long_call)) UpdatePassiveForms(struct PartyPokemon *pp)
{
    u32 species = GetMonData(pp, ID_PARA_monsno, NULL);
    u32 form = 0;
    BOOL shouldUpdate = TRUE;
    
    switch (species)
    {
        case SPECIES_DEERLING:
        case SPECIES_SAWSBUCK:
            form = GrabCurrentSeason(); // update to the current season
            break;
        case SPECIES_FRILLISH:
        case SPECIES_JELLICENT:
        case SPECIES_MEOWSTIC:
        case SPECIES_INDEEDEE:
            form = gf_rand() & 1; // 1/2 male
            break;
        case SPECIES_BASCULEGION:
            form = (gf_rand() & 1) ? 3 : 0; // 1/2 male
            break;
        case SPECIES_PYROAR:
            form = (gf_rand() % 8 != 0); // 1/8 male
            break;
        default:
            shouldUpdate = FALSE;
    }

    if (shouldUpdate) {
        SetMonData(pp, ID_PARA_form_no, &form);
    }
}

BOOL __attribute__((long_call)) Party_UpdateDeerlingSeasonForm(struct Party *party)
{
    u32 ret = FALSE;

    for (int i = 0; i < party->count; i++)
    {
        struct PartyPokemon *pp = PokeParty_GetMemberPointer(party, i);
        u32 species = GetMonData(pp, ID_PARA_monsno, NULL);
        u32 newForm = GrabCurrentSeason();
        if (newForm != GetMonData(pp, ID_PARA_form_no, NULL) && (species == SPECIES_DEERLING || species == SPECIES_SAWSBUCK))
        {
            SetMonData(pp, ID_PARA_form_no, &newForm);
            ret = TRUE;
        }
    }
    
    return ret;
}

// expand this to change deerling's form
BOOL __attribute__((long_call)) Party_TryResetShaymin(struct Party *party, int min_max, const struct RTCTime *time) 
{
    u32 ret = FALSE;
    // new:  deerling handling
    ret = Party_UpdateDeerlingSeasonForm(party);

    // shaymin handling from pokeheartgold
    int hour, minute;
    if (time->hour >= 20 || time->hour < 4) {
        hour = time->hour;
        if (hour < 4) {
            hour += 24;
        }
        minute = time->minute + 60 * (hour - 20);
        if (minute < min_max + 1) {
            Party_ResetAllShayminToLandForme(party);
            ret = TRUE;
        }/* else {
            return FALSE;
        }*/
    } else {
        hour = time->hour;
        minute = time->minute + 60 * (hour - 4);
        if (minute < min_max) {
            Party_ResetAllShayminToLandForme(party);
            ret = TRUE;
        }/* else {
            return FALSE;
        }*/
    }
    
    return ret;
}

// form egg moves + egg move expansion
u8 __attribute__((long_call)) LoadEggMoves(struct PartyPokemon *pokemon, u16 *dest)
{
    u16 n;
    u16 *kowaza_list;
    u16 offset;
    u16 species;
    u16 i;

    kowaza_list = sys_AllocMemory(0, NUM_EGG_MOVES_TOTAL*2);
    ArchiveDataLoad(kowaza_list, ARC_EGG_MOVES, 0);

    n = 0;
    offset = 0;

    species = PokeOtherFormMonsNoGet(GetMonData(pokemon, ID_PARA_monsno, NULL), GetMonData(pokemon, ID_PARA_form_no, NULL));
    for (i = 0; i < NUM_EGG_MOVES_TOTAL; i++) {
        if (species + 20000 == kowaza_list[i]) {
            offset = i + 1;
            break;
        }
    }
    for (i = 0; i < EGG_MOVES_PER_MON; i++) {
        if (kowaza_list[offset + i] > 20000) {
            break;
        }
        dest[i] = kowaza_list[offset + i];
        n++;
    }
    sys_FreeMemoryEz(kowaza_list);
    return n;
}


u32 __attribute__((long_call)) CheckIfMonsAreEqual(struct PartyPokemon *pokemon1, struct PartyPokemon *pokemon2)
{
    if ((int *)pokemon1 == (int *)pokemon2)
        return TRUE;

    if (GetMonData(pokemon1, ID_PARA_monsno, NULL) == GetMonData(pokemon2, ID_PARA_monsno, NULL)
     && GetMonData(pokemon1, ID_PARA_personal_rnd, NULL) == GetMonData(pokemon2, ID_PARA_personal_rnd, NULL)
     && GetMonData(pokemon1, ID_PARA_id_no, NULL) == GetMonData(pokemon2, ID_PARA_id_no, NULL))
    {
        for (int i = ID_PARA_condition; i <= ID_PARA_spedef; i++) // all the raw stats
        {
            if (GetMonData(pokemon1, i, NULL) != GetMonData(pokemon2, i, NULL))
                return FALSE;
        }
        for (int i = ID_PARA_waza1; i <= ID_PARA_spedef_rnd; i++) // moves, pp, iv's
        {
            if (GetMonData(pokemon1, i, NULL) != GetMonData(pokemon2, i, NULL))
                return FALSE;
        }
        
        return TRUE;
    }
    
    return FALSE;
}


// top 5 bits are now form bit
// if the form is nonzero, have to set it to that form.  most mons should keep their forms on evolution, but specifically significant gendered mons will need to not
#define GET_TARGET_AND_SET_FORM { \ 
    if (party != NULL) \
    { \
        for (j = 0; j < party->count; j++) \
        { \
            ppFromParty = PokeParty_GetMemberPointer(party, j); \
            if (CheckIfMonsAreEqual(pokemon, ppFromParty)) \
                break; \
        } \
        target = evoTable[i].target & 0x7FF; \
        form = evoTable[i].target >> 11; \
        if (form != 0) { \
            SetMonData(ppFromParty, ID_PARA_form_no, &form); \
        } \
    } \
    else { \
        target = evoTable[i].target & 0x7FF; \
        form = evoTable[i].target >> 11; \
        SetMonData(pokemon, ID_PARA_form_no, &form); \
    } \
}

u16 __attribute__((long_call)) GetMonEvolution(struct Party *party, struct PartyPokemon *pokemon, u8 context, u16 usedItem, int *method_ret) {
    u16 species;
    u16 heldItem;
    u8 level;
    int i, j;
    u16 target = SPECIES_NONE;
    u16 friendship;
    u32 pid;
    u8 holdEffect;
    u8 beauty; // for Feebas, but queried unconditionally.
    u16 pid_hi = 0;
    struct Evolution *evoTable;
    int method_local;
    u32 form = GetMonData(pokemon, ID_PARA_form_no, NULL);
    u32 lowkey = 0;
    
    struct PartyPokemon *ppFromParty = NULL;

    species = GetMonData(pokemon, ID_PARA_monsno, NULL);
    heldItem = GetMonData(pokemon, ID_PARA_item, NULL);
    pid = GetMonData(pokemon, ID_PARA_personal_rnd, NULL);
    beauty = GetMonData(pokemon, ID_PARA_beautiful, NULL);
    pid_hi = (u16)((pid & 0xFFFF0000) >> 16);
    holdEffect = GetItemData(heldItem, ITEM_PARAM_HOLD_EFFECT, 0);

    if (species != SPECIES_KADABRA && holdEffect == HOLD_EFFECT_NO_EVOLVE && context != EVOCTX_ITEM_USE) {
        return SPECIES_NONE;
    }

    // Spiky-ear Pichu cannot evolve
    if (species == SPECIES_PICHU && form == 1) {
        return SPECIES_NONE;
    }

    if (method_ret == NULL) {
        method_ret = &method_local;
    }
    
    species = PokeOtherFormMonsNoGet(species, form); // factor in form into species to cover shit like galarian corsola + cap pikachu that can't evolve

    evoTable = sys_AllocMemory(0, MAX_EVOS_PER_POKE * sizeof(struct Evolution));
    ArchiveDataLoad(evoTable, ARC_EVOLUTIONS, species);

    switch (context) {
    case EVOCTX_LEVELUP:
        level = (u8)GetMonData(pokemon, ID_PARA_level, NULL);
        friendship = (u16)GetMonData(pokemon, ID_PARA_friend, NULL);
        for (i = 0; i < MAX_EVOS_PER_POKE; i++) {
            switch (evoTable[i].method) {
            case EVO_NONE:
                break;
            case EVO_FRIENDSHIP:
                if (friendship >= 220) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_FRIENDSHIP;
                }
                break;
            case EVO_FRIENDSHIP_DAY:
                if (IsNighttime() == 0 && friendship >= 220) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_FRIENDSHIP_DAY;
                }
                break;
            case EVO_FRIENDSHIP_NIGHT:
                if (IsNighttime() == 1 && friendship >= 220) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_FRIENDSHIP_NIGHT;
                }
                break;
            case EVO_LEVEL:
                if (evoTable[i].param <= level) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL;
                }
                break;
            case EVO_TRADE:
                break;
            case EVO_TRADE_ITEM:
                break;
            case EVO_STONE:
                break;
            case EVO_LEVEL_ATK_GT_DEF:
                if (evoTable[i].param <= level && GetMonData(pokemon, ID_PARA_pow, NULL) > GetMonData(pokemon, ID_PARA_def, NULL)) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_ATK_GT_DEF;
                }
                break;
            case EVO_LEVEL_ATK_EQ_DEF:
                if (evoTable[i].param <= level && GetMonData(pokemon, ID_PARA_pow, NULL) == GetMonData(pokemon, ID_PARA_def, NULL)) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_ATK_EQ_DEF;
                }
                break;
            case EVO_LEVEL_ATK_LT_DEF:
                if (evoTable[i].param <= level && GetMonData(pokemon, ID_PARA_pow, NULL) < GetMonData(pokemon, ID_PARA_def, NULL)) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_ATK_LT_DEF;
                }
                break;
            case EVO_LEVEL_PID_LO:
                if (evoTable[i].param <= level && pid_hi % 10 < 5) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_PID_LO;
                }
                break;
            case EVO_LEVEL_PID_HI:
                if (evoTable[i].param <= level && pid_hi % 10 >= 5) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_PID_HI;
                }
                break;
            case EVO_LEVEL_NINJASK:
                if (evoTable[i].param <= level) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_NINJASK;
                }
                break;
            case EVO_LEVEL_SHEDINJA:
                *method_ret = EVO_LEVEL_SHEDINJA;
                break;
            case EVO_BEAUTY:
                if (evoTable[i].param <= beauty) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_BEAUTY;
                }
                break;
            case EVO_STONE_MALE:
                break;
            case EVO_STONE_FEMALE:
                break;
            case EVO_ITEM_DAY:
                if (IsNighttime() == 0 && evoTable[i].param == heldItem) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_ITEM_DAY;
                }
                break;
            case EVO_ITEM_NIGHT:
                if (IsNighttime() == 1 && evoTable[i].param == heldItem) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_ITEM_NIGHT;
                }
                break;
            case EVO_HAS_MOVE:
                if (MonHasMove(pokemon, evoTable[i].param) == TRUE) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_HAS_MOVE;
                }
                break;
            case EVO_OTHER_PARTY_MON:
                if (party != NULL && PartyHasMon(party, evoTable[i].param) == 1) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_OTHER_PARTY_MON;
                }
                break;
            case EVO_LEVEL_MALE:
                if (GetMonData(pokemon, ID_PARA_sex, NULL) == POKEMON_GENDER_MALE && evoTable[i].param <= level) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_MALE;
                }
                break;
            case EVO_LEVEL_FEMALE:
                if (GetMonData(pokemon, ID_PARA_sex, NULL) == POKEMON_GENDER_FEMALE && evoTable[i].param <= level) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_FEMALE;
                }
                break;
            case EVO_CORONET: // magnetic field at route 43+kanto power plant
                {
                    u32 location = gFieldSysPtr->location->mapId;

                    if (location == 45 || location == 18)
                    {
                        GET_TARGET_AND_SET_FORM;
                        *method_ret = EVO_CORONET;
                    }
                }
                break;
            case EVO_ETERNA: // mossy rock at ilex+viridian forests
                {
                    u32 location = gFieldSysPtr->location->mapId;

                    if (location == 117 || location == 147)
                    {
                        GET_TARGET_AND_SET_FORM;
                        *method_ret = EVO_ETERNA;
                    }
                }
                break;
            case EVO_ROUTE217: // icy rock at ice path+seafoam islands
                {
                    u32 location = gFieldSysPtr->location->mapId;

                    if (location == 239 || location == 456)
                    {
                        GET_TARGET_AND_SET_FORM;
                        *method_ret = EVO_ROUTE217;
                    }
                }
                break;

            case EVO_LEVEL_DAY:
                if (IsNighttime() == 0 && evoTable[i].param <= level) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_DAY;
                }
                break;
            case EVO_LEVEL_NIGHT:
                if (IsNighttime() == 1 && evoTable[i].param <= level) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_NIGHT;
                }
                break;
            case EVO_LEVEL_DUSK:
                {
                    struct RTCTime time;
                    GF_RTC_CopyTime(&time);

                    if (time.hour == 17 && evoTable[i].param <= level) {
                        GET_TARGET_AND_SET_FORM;
                        *method_ret = EVO_LEVEL_DUSK;
                    }
                }
                break;
            case EVO_LEVEL_RAIN:
                if (evoTable[i].param <= level)
                {
                    u32 weather = Fsys_GetWeather_HandleDiamondDust(gFieldSysPtr, gFieldSysPtr->location->mapId);

                    switch (weather)
                    {
                    case WEATHER_SYS_RAIN:
                    case WEATHER_SYS_HEAVY_RAIN:
                    case WEATHER_SYS_THUNDER:
                        GET_TARGET_AND_SET_FORM;
                        *method_ret = EVO_LEVEL_RAIN;
                    }
                }
                break;
            case EVO_HAS_MOVE_TYPE:
                {
                    int k;
                    
                    for (k = 0; k < 4; k++)
                    {
                        if (GetMoveData(GetMonData(pokemon, ID_PARA_waza1+k, NULL), MOVE_DATA_TYPE) == evoTable[i].param)
                        {
                            GET_TARGET_AND_SET_FORM;
                            *method_ret = EVO_HAS_MOVE_TYPE;
                            break;
                        }
                    }
                }
                break;
            case EVO_LEVEL_DARK_TYPE_MON_IN_PARTY:
                if (evoTable[i].param <= level && party != NULL)
                {
                    for (int k = 0; k < 6; k++)
                    {
                        if (!CheckIfMonsAreEqual(pokemon, PokeParty_GetMemberPointer(party, k)) // make sure that pancham doesn't satisfy its own requirement
                         && (GetMonData(PokeParty_GetMemberPointer(party, k), ID_PARA_type1, NULL) == TYPE_DARK || GetMonData(PokeParty_GetMemberPointer(party, k), ID_PARA_type2, NULL) == TYPE_DARK)) // if either type is dark then set evolution
                        {
                            GET_TARGET_AND_SET_FORM;
                            *method_ret = EVO_LEVEL_DARK_TYPE_MON_IN_PARTY;
                            break;
                        }
                    }
                }
                break;
            case EVO_LEVEL_NATURE_LOW_KEY:
                lowkey = 1;
            case EVO_LEVEL_NATURE_AMPED:
                if (evoTable[i].param <= level)
                {
                    u32 nature = GetMonData(pokemon, ID_PARA_personal_rnd, NULL) % 25;
                    switch (nature)
                    {
                    case NATURE_ADAMANT:
                    case NATURE_BRAVE:
                    case NATURE_DOCILE:
                    case NATURE_HARDY:
                    case NATURE_HASTY:
                    case NATURE_IMPISH:
                    case NATURE_JOLLY:
                    case NATURE_LAX:
                    case NATURE_NAIVE:
                    case NATURE_NAUGHTY:
                    case NATURE_QUIRKY:
                    case NATURE_RASH:
                    case NATURE_SASSY:
                        if (lowkey == 0) // for the amped evo method
                        {
                            GET_TARGET_AND_SET_FORM;
                            *method_ret = EVO_LEVEL_NATURE_AMPED;
                        }
                        break;
                    default:
                        if (lowkey == 1) // for the lowkey evo method
                        {
                            GET_TARGET_AND_SET_FORM;
                            *method_ret = EVO_LEVEL_NATURE_LOW_KEY;
                        }
                        break;
                    }
                }
                break;
            case EVO_AMOUNT_OF_CRITICAL_HITS: // needs to hit an amount of critical hits in a battle in one go.  need to log critical hits somewhere else
                if (GetMonData(pokemon, ID_PARA_dummy_p2_1, NULL) & DUMMY_P2_1_HAS_HIT_NECESSARY_CRITICAL_HITS)
                {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_AMOUNT_OF_CRITICAL_HITS;
                }
                break;
            case EVO_HURT_IN_BATTLE_AMOUNT:
                {
                    u32 hp = GetMonData(pokemon, ID_PARA_hp, NULL), maxhp = GetMonData(pokemon, ID_PARA_hpmax, NULL);
                    
                    if (hp && (maxhp - hp) >= evoTable[i].param) // if the mon has evoTable[i].param hp less than its max
                    {
                        GET_TARGET_AND_SET_FORM;
                        *method_ret = EVO_HURT_IN_BATTLE_AMOUNT;
                    }
                }
                break;
            }
            if (target != SPECIES_NONE) {
                break;
            }
        }
        break;
    case EVOCTX_TRADE:
        for (i = 0; i < MAX_EVOS_PER_POKE; i++) {
            switch (evoTable[i].method) {
            case EVO_TRADE:
                GET_TARGET_AND_SET_FORM;
                *method_ret = EVO_TRADE;
                break;
            case EVO_TRADE_ITEM:
                if (heldItem == evoTable[i].param) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_TRADE_ITEM;
                }
                break;
            //case EVO_TRADE_SPECIFIC_MON: // need to figure out how to deduce tradedSpecies
            //    if (tradedSpecies == evoTable[i].param) {
            //        GET_TARGET_AND_SET_FORM;
            //        *method_ret = EVO_TRADE_SPECIFIC_MON;
            //    }
            //    break; 
            }
            if (target != SPECIES_NONE) {
                break;
            }
        }
        break;
    case EVOCTX_ITEM_CHECK:
    case EVOCTX_ITEM_USE:
        for (i = 0; i < MAX_EVOS_PER_POKE; i++) {
            if (evoTable[i].method == EVO_STONE && usedItem == evoTable[i].param) {
                GET_TARGET_AND_SET_FORM;
                *method_ret = 0;
                break;
            }
            if (evoTable[i].method == EVO_STONE_MALE && GetMonData(pokemon, ID_PARA_sex, NULL) == POKEMON_GENDER_MALE && usedItem == evoTable[i].param) {
                GET_TARGET_AND_SET_FORM;
                *method_ret = 0;
                break;
            }
            if (evoTable[i].method == EVO_STONE_FEMALE && GetMonData(pokemon, ID_PARA_sex, NULL) == POKEMON_GENDER_FEMALE && usedItem == evoTable[i].param) {
                GET_TARGET_AND_SET_FORM;
                *method_ret = 0;
                break;
            }
        }
        break;
    }
    sys_FreeMemoryEz(evoTable);
    return target;
}


u32 __attribute__((long_call)) GrabSexFromSpeciesAndForm(u32 species, u32 pid, u32 form)
{
    u32 realSpecies = PokeOtherFormMonsNoGet(species, form);
    u32 genderRatio = PokeFormNoPersonalParaGet(realSpecies, form, PERSONAL_GENDER_RATIO);
    switch (genderRatio)
    {
        case 0:   // fully male
            return POKEMON_GENDER_MALE;
        case 254: // fully female
            return POKEMON_GENDER_FEMALE;
        case 255: // unknown
            return POKEMON_GENDER_UNKNOWN;
    }
    
    if (genderRatio > (pid & 0xFF))
        return POKEMON_GENDER_FEMALE;

    return POKEMON_GENDER_MALE;
}


u32 __attribute__((long_call)) GetBoxMonSex(struct BoxPokemon *bp)
{
    u32 species, pid, flag, form;
    
    flag = BoxMonSetFastModeOn(bp);
    species = GetBoxMonData(bp, ID_PARA_monsno, NULL);
    pid = GetBoxMonData(bp, ID_PARA_personal_rnd, NULL);
    form = GetBoxMonData(bp, ID_PARA_form_no, NULL);
    BoxMonSetFastModeOff(bp, flag);
    
    return GrabSexFromSpeciesAndForm(species, pid, form);
}


u16 __attribute__((long_call)) get_mon_ow_tag(u16 species, u32 form, u32 isFemale)
{
    u32 adjustment = 0, ret = 0;
    if (species > SPECIES_SNOVER) // split between 0x1AC and 0x1E4
    {
        adjustment = 0x1E4;
    }
    else
    {
        adjustment = 0x1AC;
    }

    ret = get_ow_data_file_num(species) + adjustment;

    u8 *form_table = sys_AllocMemory(0, MAX_MON_NUM);
    ArchiveDataLoad(form_table, ARC_CODE_ADDONS, CODE_ADDON_NUM_OF_OW_FORMS_PER_MON);

    if (species == SPECIES_PIKACHU) // pikachu forms take gender adjustment into account and are looser with restrictions
    {
        if (isFemale || form) // both female pikachu and those with forms will need this adjustment
            ret++;
        if (form < form_table[SPECIES_PIKACHU]) // invalid pikachu forms will show as female, but that's okay
            ret += form;
    }
    else if (form <= form_table[species])
        ret += form;
    else if (isFemale && gDimorphismTable[species-1])
        ret += isFemale;
    
    sys_FreeMemoryEz(form_table);

    return ret;
}


BOOL __attribute__((long_call)) GiveMon(int heapId, void *saveData, int species, int level, int forme, u8 ability, u16 heldItem, int ball, int encounterType) {
    struct Party *party;
    struct PartyPokemon *pokemon;
    void *profile;
    u32 sp1C;
    BOOL result;

    profile = Sav2_PlayerData_GetProfileAddr(saveData);
    party = SaveData_GetPlayerPartyPtr(saveData);
    
    pokemon = AllocMonZeroed(heapId);
    ZeroMonData(pokemon);
    PokeParaSet(pokemon, species, level, 32, FALSE, 0, 0, 0); // CreateMon
    sub_020720FC(pokemon, profile, ITEM_POKE_BALL, ball, encounterType, heapId);
    sp1C = heldItem;
    SetMonData(pokemon, ID_PARA_item, &sp1C);
    SetMonData(pokemon, ID_PARA_form_no, &forme);

    if (forme != 0) // reinitialize moves for different learnsets
    {
        InitBoxMonMoveset(&pokemon->box);
    }

    RecalcPartyPokemonStats(pokemon); // recalculate stats

    if (CheckScriptFlag(HIDDEN_ABILITIES_FLAG) == 1)
    {
        SET_MON_HIDDEN_ABILITY_BIT(pokemon)
        // need to clear this script flag because this function is used for in-battle form change ability resets as well, which shouldn't happen normally
        ClearScriptFlag(HIDDEN_ABILITIES_FLAG);
    }

    if (ability != 0) {
        SetMonData(pokemon, ID_PARA_speabino, &ability);
    } else {
        ResetPartyPokemonAbility(pokemon); // with the flag set, the hidden ability should be set
    }
    result = PokeParty_Add(party, pokemon);
    if (result) {
        UpdatePokedexWithReceivedSpecies(saveData, pokemon);
    }
    sys_FreeMemoryEz(pokemon);
    
    return result;
}


extern u32 space_for_setmondata;

BOOL __attribute__((long_call)) AddWildPartyPokemon(int inTarget, EncounterInfo *encounterInfo, struct PartyPokemon *encounterPartyPokemon, struct BATTLE_PARAM *encounterBattleParam)
{
    int range = 0;
    u8 change_form = 0;
    u8 form_no;
    u16 species;

    if (encounterInfo->isEgg == 0 && encounterInfo->ability == ABILITY_COMPOUND_EYES)
    {
        range = 1;
    }
    
    species = GetMonData(encounterPartyPokemon, ID_PARA_monsno, NULL);
    
    if (space_for_setmondata != 0)
    {
        change_form = 1;
        form_no = space_for_setmondata;//(species & 0xF800) >> 11;
        space_for_setmondata = 0;
    }
    
    WildMonSetRandomHeldItem(encounterPartyPokemon, encounterBattleParam->fight_type, range);

    if (species == SPECIES_UNOWN)
    {
        change_form = 1;
        form_no = GrabAndRegisterUnownForm(encounterInfo);
    }
    else if (species == SPECIES_DEERLING || species == SPECIES_SAWSBUCK)
    {
        UpdatePassiveForms(encounterPartyPokemon);
    }

    if (CheckScriptFlag(HIDDEN_ABILITIES_FLAG) == 1)
    {
        SET_MON_HIDDEN_ABILITY_BIT(encounterPartyPokemon)
        ClearScriptFlag(HIDDEN_ABILITIES_FLAG);
        ResetPartyPokemonAbility(encounterPartyPokemon);
    }

    if (change_form)
    {
        SetMonData(encounterPartyPokemon, ID_PARA_form_no, (u8 *)&form_no);
        RecalcPartyPokemonStats(encounterPartyPokemon);
        ResetPartyPokemonAbility(encounterPartyPokemon);
        InitBoxMonMoveset(&encounterPartyPokemon->box);
    }
    return PokeParty_Add(encounterBattleParam->poke_party[inTarget], encounterPartyPokemon);
}

void __attribute__((long_call)) CreateBoxMonData(struct BoxPokemon *boxmon, int species, int level, int pow, int rndflag, u32 rnd, int idflag, u32 id)
{
    u16 sum;
    u32 i, j;
    BOOL flag;

    u32 title, language;
    title = VERSION_GOLD;
    language = LANG_ENGLISH;

    BoxMonInit(boxmon);

    flag = BoxMonSetFastModeOn(boxmon);

    if(!rndflag){
        rnd = (gf_rand() | (gf_rand() << 16));
    }
    BoxMonDataSet(boxmon,ID_PARA_personal_rnd,(u8 *)&rnd);

    if(idflag==ID_NO_SHINY){
        do{
            id = (gf_rand() | (gf_rand() << 16));
        } while((((id & 0xffff0000) >> 16) ^ (id & 0xffff) ^ ((rnd & 0xffff0000) >> 16) ^ (rnd & 0xffff)) < 8);
    }
    else if(idflag!=ID_SET){
        id=0;
    }

    // this function or AddWildPartyPokemon could both get here first
    // and since both functions will initialize the moveset,
    // we need the form to be set correctly in either case
    if (space_for_setmondata != 0)
    {
        BoxMonDataSet(boxmon, ID_PARA_form_no, (u8 *)&space_for_setmondata);
    }

    BoxMonDataSet(boxmon,ID_PARA_id_no,(u8 *)&id);
    BoxMonDataSet(boxmon,ID_PARA_country_code,(u8 *)&language);
    BoxMonDataSet(boxmon,ID_PARA_monsno,(u8 *)&species);
    BoxMonDataSet(boxmon,ID_PARA_default_name,NULL);

    i=PokeLevelExpGet(species,level);
    BoxMonDataSet(boxmon,ID_PARA_exp,(u8 *)&i);

    i=PokePersonalParaGet(species,PERSONAL_BASE_FRIENDSHIP);
    BoxMonDataSet(boxmon,ID_PARA_friend,(u8 *)&i);

    BoxMonDataSet(boxmon,ID_PARA_get_level,(u8 *)&level);
    BoxMonDataSet(boxmon,ID_PARA_get_cassette,(u8 *)&title);
    i=ITEM_POKE_BALL;
    BoxMonDataSet(boxmon,ID_PARA_get_ball,(u8 *)&i);

    if(pow <= MAX_IVS){
        BoxMonDataSet(boxmon,ID_PARA_hp_rnd,(u8 *)&pow);
        BoxMonDataSet(boxmon,ID_PARA_pow_rnd,(u8 *)&pow);
        BoxMonDataSet(boxmon,ID_PARA_def_rnd,(u8 *)&pow);
        BoxMonDataSet(boxmon,ID_PARA_agi_rnd,(u8 *)&pow);
        BoxMonDataSet(boxmon,ID_PARA_spepow_rnd,(u8 *)&pow);
        BoxMonDataSet(boxmon,ID_PARA_spedef_rnd,(u8 *)&pow);
    }
    else{ // why the fuck is it done like this
        i=gf_rand();
        j=(i&(0x001f<< 0))>> 0;
        BoxMonDataSet(boxmon,ID_PARA_hp_rnd,(u8 *)&j);
        j=(i&(0x001f<< 5))>> 5;
        BoxMonDataSet(boxmon,ID_PARA_pow_rnd,(u8 *)&j);
        j=(i&(0x001f<<10))>>10;
        BoxMonDataSet(boxmon,ID_PARA_def_rnd,(u8 *)&j);
        i=gf_rand();
        j=(i&(0x001f<< 0))>> 0;
        BoxMonDataSet(boxmon,ID_PARA_agi_rnd,(u8 *)&j);
        j=(i&(0x001f<< 5))>> 5;
        BoxMonDataSet(boxmon,ID_PARA_spepow_rnd,(u8 *)&j);
        j=(i&(0x001f<<10))>>10;
        BoxMonDataSet(boxmon,ID_PARA_spedef_rnd,(u8 *)&j);
    }

    i = PokePersonalParaGet(species,PERSONAL_ABILITY_1);
    j = PokePersonalParaGet(species,PERSONAL_ABILITY_2);
    if(j!=0){
        if(rnd&1){
            BoxMonDataSet(boxmon,ID_PARA_speabino,(u8 *)&j);
        }
        else{
            BoxMonDataSet(boxmon,ID_PARA_speabino,(u8 *)&i);
        }
    }
    else{
        BoxMonDataSet(boxmon,ID_PARA_speabino,(u8 *)&i);
    }

    i=GetBoxMonGender(boxmon);
    BoxMonDataSet(boxmon,ID_PARA_sex,(u8 *)&i);
    FillInBoxMonLearnset(boxmon);
    BoxMonSetFastModeOff(boxmon,flag);
}

bool8 __attribute__((long_call)) RevertFormChange(struct PartyPokemon *pp, u16 species, u8 form_no)
{
    u32 i;
    int work = 0;

    // use this chance to make bad poisoning normal poison at the end of battle
    work = GetMonData(pp, ID_PARA_condition, NULL);
    if (work & STATUS_FLAG_BADLY_POISONED)
    {
        work &= ~(STATUS_FLAG_BADLY_POISONED);
        work |= STATUS_FLAG_POISONED;
        SetMonData(pp, ID_PARA_condition, &work);
    }

    for (i = 0; i < NELEMS(PokeFormDataTbl); i++)
    {
        if (species == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no && PokeFormDataTbl[i].need_rev)
        {
            if (species == SPECIES_DARMANITAN && form_no == 3)
                work = 1;
            else if (species == SPECIES_NECROZMA)
                work = form_no-2;
            else if (species == SPECIES_GRENINJA)
                work = 1;
            else if (species == SPECIES_MINIOR)
                work = form_no-7;
            else if (species == SPECIES_ZYGARDE)
                work = form_no-2;

            SetMonData(pp, ID_PARA_form_no, &work);
            return TRUE;
        }
    }
    return FALSE;
}


void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

void randomize(int arr[], int n) {
    int i;
    for(i = n-1; i > 0; i--) {
        int j = gf_rand() % (i+1);
        swap(&arr[i], &arr[j]);
    }
}

u32 gLastPokemonLevelForMoneyCalc;

void MakeTrainerPokemonParty(struct BATTLE_PARAM *bp, int num, int heapID)
{
    u8 *buf;
    int i, j;
    u32 rnd_tmp, rnd, seed_tmp;
    u8 pow;

    seed_tmp = gf_get_seed();

    PokeParty_Init(bp->poke_party[num], 6);

    buf = (u8 *)sys_AllocMemory(heapID, sizeof(struct FULL_TRAINER_MON_DATA_STRUCTURE) * 6);

    TT_TrainerPokeDataGet(bp->trainer_id[num], buf);

    if (TT_TrainerTypeSexGet(bp->trainer_data[num].tr_type) == 1) // if trainer is female
    {
        rnd_tmp = 120;
    }
    else
    {
        rnd_tmp = 136;
    }

    u8 pokecount = bp->trainer_data[num].poke_count;
    u8 randomorder_flag = pokecount & 0x80;
    pokecount &= 0x7f;

    // goal:  get rid of massive switch statement with each individual byte.  make the trainer type a bitfield
    u32 id;
    u16 species, item, ability, level, ball, hp, atk, def, speed, spatk, spdef;
    u16 offset = 0;
    u16 moves[4];
    u8 ivnums[6];
    u8 evnums[6];
    u8 types[2];
    u8 ppcounts[4];
    u16 *nickname = sys_AllocMemory(heapID, 11*sizeof(16));
    u8 form_no, abilityslot, nature, ballseal, shinylock, status, ab1, ab2;
    u32 additionalflags;

    int partyOrder[pokecount];
    if (randomorder_flag)
    {
        if(gf_rand() % 2 == 0)
        {
            for(i = 0; i < pokecount; i++)
            {
                partyOrder[i] = pokecount - 1 - i;
            }
        }
        else
        {
            for(i = 0; i < pokecount; i++)
            {
                partyOrder[i] = i;
            }
        }
    }
    else
    {
        for(i = 0; i < pokecount; i++)
        {
            partyOrder[i] = i;
        }
    }

    if (randomorder_flag && pokecount > 1)
    {
        int numtimes = gf_rand() % 6 + 1;
        for(i = 0; i < numtimes; i++)
        {
            randomize(partyOrder, pokecount);
        }
    }

    struct PartyPokemon * mons[pokecount];

    for (i = 0; i < pokecount; i++)
    {
        mons[i] = AllocMonZeroed(heapID);
        // ivs field
        pow = buf[offset];
        offset++;

        // abilityslot field
        abilityslot = buf[offset];
        offset++;

        // level field
        level = buf[offset] | (buf[offset+1] << 8);
        gLastPokemonLevelForMoneyCalc = level; // ends up being the last level at the end of the loop that we use for the money calc loop default case
        offset += 2;

        // species field
        species = buf[offset] | (buf[offset+1] << 8);
        offset += 2;
        form_no = (species & 0xF800) >> 11;
        species &= 0x07FF;

        // item field - conditional
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ITEMS)
        {
            item = buf[offset] | (buf[offset+1] << 8);
            offset += 2;
        }

        // moves field - conditional
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_MOVES)
        {
            for (j = 0; j < 4; j++)
            {
                moves[j] = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }
        }

        // ability field
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ABILITY)
        {
            ability = buf[offset] | (buf[offset+1] << 8);
            offset += 2;
        }

        // custom ball field
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_BALL)
        {
            ball = buf[offset] | (buf[offset+1] << 8);
            offset += 2;
        }

        // ivs and evs fields
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_IV_EV_SET)
        {
            for(j = 0; j < 6; j++)
            {
                ivnums[j] = buf[offset];
                if(ivnums[j] > 31)
                    ivnums[j] = 31;
                offset++;
            }

            for(j = 0; j < 6; j++)
            {
                evnums[j] = buf[offset];
                offset++;
            }
        }

        // nature field
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_NATURE_SET)
        {
            nature = buf[offset];
            offset++;
        }

        // shiny lock field
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_SHINY_LOCK)
        {
            shinylock = buf[offset];
            offset++;
        }

        // reads extra flags from the trainer pokemon file
        if(bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ADDITIONAL_FLAGS)
        {
            additionalflags = buf[offset] | (buf[offset+1] << 8) | (buf[offset+2] << 16) | (buf[offset+3] << 24);
            offset += 4;

            // status pre-set field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_STATUS)
            {
                status = buf[offset] | (buf[offset+1] << 8) | (buf[offset+2] << 16) | (buf[offset+3] << 24);
                offset += 4;
            }

            // custom hp stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_HP)
            {
                hp = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom atk stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_ATK)
            {
                atk = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom def stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_DEF)
            {
                def = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom speed stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_SPEED)
            {
                speed = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom spatk stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_SP_ATK)
            {
                spatk = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom spdef stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_SP_DEF)
            {
                spdef = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom types field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_TYPES)
            {
                for(j = 0; j < 2; j++)
                {
                    types[j] = buf[offset];
                    offset++;
                }
            }

            // move PP counts field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_PP_COUNTS)
            {
                for(j = 0; j < 4; j++)
                {
                    ppcounts[j] = buf[offset];
                    offset++;
                }
            }

            // nickname field
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_NICKNAME)
            {
                for(j = 0; j < 11; j++)
                {
                    nickname[j] = buf[offset] | (buf[offset+1] << 8);
                    offset += 2;
                }
            }
        }

        // ball seal field
        ballseal = buf[offset] | (buf[offset+1] << 8);
        offset += 2;

        // now set mon data
        try_force_gender_maybe(species, form_no, abilityslot, &rnd_tmp);
        rnd = pow + level + species + bp->trainer_id[num];
        gf_srand(rnd);
        for (j = 0; j < bp->trainer_data[num].tr_type; j++)
        {
            rnd = gf_rand();
        }
        rnd = (rnd << 8) + rnd_tmp;
        pow = pow * 31 / 255;
        PokeParaSet(mons[i], species, level, pow, 1, rnd, 2, 0);
        SetMonData(mons[i], ID_PARA_form_no, &form_no);

        //set default abilities
        species = PokeOtherFormMonsNoGet(species, form_no);
        ab1 = PokePersonalParaGet(species, PERSONAL_ABILITY_1);
        ab2 = PokePersonalParaGet(species, PERSONAL_ABILITY_2);
        if (ab2 != 0)
        {
            if (abilityslot & 1)
            {
                SetMonData(mons[i], ID_PARA_speabino, (u8 *)&ab1);
            }
            else{
                SetMonData(mons[i], ID_PARA_speabino, (u8 *)&ab2);
            }
        }
        else
        {
            SetMonData(mons[i], ID_PARA_speabino, (u8 *)&ab1);
        }
        
        // if abilityslot is 2 force hidden ability with the bit set.  this specifically to cover darmanitan with zen mode switching between forms and such.
        if (abilityslot == 2)
        {
            u16 hiddenability = GetMonHiddenAbility(species, form_no);
            SET_MON_HIDDEN_ABILITY_BIT(mons[i])
            SetMonData(mons[i], ID_PARA_speabino, (u8 *)&hiddenability);
        }

        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ITEMS)
        {
            SetMonData(mons[i], ID_PARA_item, &item);
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_MOVES)
        {
            for (j = 0; j < 4; j++)
            {
                SetPartyPokemonMoveAtPos(mons[i], moves[j], j);
            }
        }
        TrainerCBSet(ballseal, mons[i], heapID);
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ABILITY)
        {
            SetMonData(mons[i], ID_PARA_speabino, &ability);
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_BALL)
        {
            SetMonData(mons[i], ID_PARA_get_ball, &ball);
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_IV_EV_SET)
        {
            for(j = 0; j < 6; j++)
            {
                SetMonData(mons[i],ID_PARA_hp_rnd + j, &ivnums[j]);
            }

            for(j = 0; j < 6; j++)
            {
                SetMonData(mons[i],ID_PARA_hp_exp + j, &evnums[j]);
            }
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_NATURE_SET)
        {
            u32 pid = GetMonData(mons[i], ID_PARA_personal_rnd, NULL);
            u8 currentNature = pid % 25;
            pid = pid + nature - currentNature;
            SetMonData(mons[i], ID_PARA_personal_rnd, &pid);
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_SHINY_LOCK)
        {
            u32 pid = GetMonData(mons[i], ID_PARA_personal_rnd, NULL);
            if (shinylock != 0)
            {
                do{
                    id = (gf_rand() | (gf_rand() << 16));
                } while((((id & 0xffff0000) >> 16) ^ (id & 0xffff) ^ ((pid & 0xffff0000) >> 16) ^ (pid & 0xffff)) >= 8);
                SetMonData(mons[i], ID_PARA_id_no, &id);
            }
        }

        RecalcPartyPokemonStats(mons[i]); // recalculate stats here

        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ADDITIONAL_FLAGS)
        {
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_STATUS)
            {
                SetMonData(mons[i],ID_PARA_condition, &status);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_HP)
            {
                SetMonData(mons[i],ID_PARA_hpmax, &hp);
                SetMonData(mons[i],ID_PARA_hp, &hp);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_ATK)
            {
                SetMonData(mons[i],ID_PARA_pow, &atk);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_DEF)
            {
                SetMonData(mons[i],ID_PARA_def, &def);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_SPEED)
            {
                SetMonData(mons[i],ID_PARA_agi, &speed);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_SP_ATK)
            {
                SetMonData(mons[i],ID_PARA_spepow, &spatk);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_SP_DEF)
            {
                SetMonData(mons[i],ID_PARA_spedef, &spdef);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_TYPES)
            {
                for(j = 0; j < 2; j++)
                {
                    SetMonData(mons[i],ID_PARA_type1+j, &types[j]);
                }
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_PP_COUNTS)
            {
                for(j = 0; j < 4; j++)
                {
                    SetMonData(mons[i],ID_PARA_pp_count1+j, &ppcounts[j]);
                }
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_NICKNAME)
            {
                u32 one = 1;
                
                SetMonData(mons[i],ID_PARA_nickname_flag, &one);
                SetMonData(mons[i],ID_PARA_nickname, nickname);
            }
        }
        TrainerMonHandleFrustration(mons[i]);
    }

    for (i = 0; i < pokecount; i++)
    {
        PokeParty_Add(bp->poke_party[num], mons[partyOrder[i]]);
        sys_FreeMemoryEz(mons[i]);
    }

    sys_FreeMemoryEz(buf);
    sys_FreeMemoryEz(nickname);

    gf_srand(seed_tmp);
}


void set_starter_hidden_ability(struct PokeParty *party, struct PartyPokemon *pp)
{
    if (CheckScriptFlag(HIDDEN_ABILITIES_STARTERS_FLAG) == 1)
    {
        SET_MON_HIDDEN_ABILITY_BIT(pp)
        SetBoxMonAbility((void *)&pp->box);
    }
}


void __attribute__((long_call)) ClearMonMoves(struct PartyPokemon *pokemon)
{
    int null = 0;
    for (int i = 0; i < 4; i++)
    {
        SetMonData(pokemon, ID_PARA_waza1+i, &null);
    }
}


BOOL ScrCmd_GiveEgg(SCRIPTCONTEXT *ctx)
{
    FieldSystem *fsys = ctx->fsys;
    void *profile = Sav2_PlayerData_GetProfileAddr(fsys->savedata);

    u16 species = ScriptGetVar(ctx);
    
    u32 form = (species & 0xF800) >> 11; // extract form from egg
    species = species & 0x7FF;
    
    u16 offset = ScriptGetVar(ctx);

    struct Party *party = SaveData_GetPlayerPartyPtr(fsys->savedata);
    u8 partyCount = party->count;
    if (partyCount < 6)
    {
        struct PartyPokemon *pokemon = AllocMonZeroed(11);
        ZeroMonData(pokemon);
        int val = sub_02017FE4(1, offset);

        SetEggStats(pokemon, species, 1, profile, 3, val);

        SetMonData(pokemon, ID_PARA_form_no, &form); // add form capability

        ClearMonMoves(pokemon);
        InitBoxMonMoveset(&pokemon->box);

        if (CheckScriptFlag(HIDDEN_ABILITIES_FLAG) == 1) // add HA capability
        {
            SET_MON_HIDDEN_ABILITY_BIT(pokemon)
            ResetPartyPokemonAbility(pokemon);
            ClearScriptFlag(HIDDEN_ABILITIES_FLAG);
        }

        PokeParty_Add(party, pokemon);
        sys_FreeMemoryEz(pokemon);
    }

    return FALSE;
}


BOOL ScrCmd_GiveTogepiEgg(SCRIPTCONTEXT *ctx) {
    s32 i;
    u8 pp;
    u32 personality;
    u16 moveData;
    struct PartyPokemon *togepi;
    void *profile;
    struct Party *party;
    FieldSystem *fsys = ctx->fsys;

    profile = Sav2_PlayerData_GetProfileAddr(fsys->savedata);
    party = SaveData_GetPlayerPartyPtr(fsys->savedata);

    if (party->count >= 6) {
        return FALSE;
    }

    togepi = AllocMonZeroed(11);
    ZeroMonData(togepi);

    SetEggStats(togepi, SPECIES_TOGEPI, 1, profile, 3, sub_02017FE4(1, 13));

    //SetMonData(togepi, ID_PARA_form_no, &form); // add form capability

    //ClearMonMoves(pokemon);
    //InitBoxMonMoveset(&pokemon->box);

    for (i = 0; i < 4; i++) {
        if (!GetMonData(togepi, ID_PARA_waza1 + i, 0)) {
            break;
        }
    }

    if (i == 4) {
        i = 3;
    }

    moveData = MOVE_EXTRASENSORY; // add extrasensory to the togepi
    SetMonData(togepi, ID_PARA_waza1 + i, &moveData);

    pp = GetMonData(togepi, ID_PARA_pp_max1 + i, 0);
    SetMonData(togepi, ID_PARA_pp1 + i, &pp);

    if (CheckScriptFlag(HIDDEN_ABILITIES_FLAG) == 1) // add HA capability
    {
        SET_MON_HIDDEN_ABILITY_BIT(togepi)
        ResetPartyPokemonAbility(togepi);
        ClearScriptFlag(HIDDEN_ABILITIES_FLAG);
    }


    PokeParty_Add(party, togepi);

    sys_FreeMemoryEz(togepi);

    SaveMisc_SetTogepiPersonalityGender(Sav2_Misc_get(fsys->savedata), GetMonData(togepi, ID_PARA_personal_rnd, 0), GetMonData(togepi, ID_PARA_sex, 0));

    return FALSE;
}


// i think this is hatchPokemon
void sub_0206D328(struct PartyPokemon *pokemon, u32 heapId)
{
    u16 nickname[11 + 1];
    u8 isEgg = 70;
    u8 hasNickname = FALSE;
    u8 pokeball = 4; // poke ball
    u8 metLevel = 0;
    
    u16 dummy_p2_1 = GetBoxMonData(pokemon, ID_PARA_dummy_p2_1, NULL); // hidden ability field
    
    sub_0206D038(pokemon, heapId); // carries over egg values to a clean mon
    SetMonData(pokemon, ID_PARA_tamago_flag, &isEgg);
    GetSpeciesNameIntoArray(GetMonData(pokemon, ID_PARA_monsno, NULL), 0, nickname);
    SetMonData(pokemon, ID_PARA_nickname, nickname);
    SetMonData(pokemon, ID_PARA_nickname_flag, &hasNickname);
    SetMonData(pokemon, ID_PARA_get_ball, &pokeball);
    SetMonData(pokemon, ID_PARA_get_level, &metLevel);
    SetMonData(pokemon, ID_PARA_dummy_p2_1, &dummy_p2_1);
    RecalcPartyPokemonStats(pokemon);

    ResetPartyPokemonAbility(pokemon);
}


#define CRY_SPECIES_FORMS_BASE (MAX_MON_NUM+1)


#define CRY_SPECIES_SHAYMIN 0x1EE
#define CRY_SPECIES_BASE_TORNADUS CRY_SPECIES_FORMS_BASE
#define CRY_SPECIES_BASE_THUNDURUS CRY_SPECIES_FORMS_BASE+1
#define CRY_SPECIES_BASE_LANDORUS CRY_SPECIES_FORMS_BASE+2
#define CRY_SPECIES_BASE_KYUREM CRY_SPECIES_FORMS_BASE+3
#define CRY_SPECIES_BASE_PUMPKABOO CRY_SPECIES_FORMS_BASE+5
#define CRY_SPECIES_BASE_GOURGEIST CRY_SPECIES_FORMS_BASE+6
#define CRY_SPECIES_BASE_HOOPA CRY_SPECIES_FORMS_BASE+7
#define CRY_SPECIES_BASE_ORICORIO CRY_SPECIES_FORMS_BASE+8
#define CRY_SPECIES_BASE_LYCANROC CRY_SPECIES_FORMS_BASE+11
#define CRY_SPECIES_BASE_WISHIWASHI CRY_SPECIES_FORMS_BASE+13
#define CRY_SPECIES_BASE_NECROZMA CRY_SPECIES_FORMS_BASE+14
#define CRY_SPECIES_BASE_ZACIAN CRY_SPECIES_FORMS_BASE+18
#define CRY_SPECIES_BASE_ZAMAZENTA CRY_SPECIES_FORMS_BASE+19
#define CRY_SPECIES_BASE_URSHIFU CRY_SPECIES_FORMS_BASE+20
#define CRY_SPECIES_BASE_CALYREX CRY_SPECIES_FORMS_BASE+21
#define CRY_SPECIES_BASE_ENAMORUS CRY_SPECIES_FORMS_BASE+23
#define CRY_SPECIES_BASE_MAUSHOLD CRY_SPECIES_FORMS_BASE+24


u32 storeShayminForm = 0;


u32 GrabCryNumSpeciesForm(u32 species, u32 form)
{
    if (species > MAX_MON_NUM) // battles are fucking stupid and pass in species already adjusted for form.  need to revert to base species
    {
        species = GetOriginalSpeciesBasedOnAdjustedForm(species);
    }
    else if (species == SPECIES_SHAYMIN) // shaymin has to have some hacks to get this to work proper because of the same battle stuff above
    {
        register u32 retAddr asm("lr");
        if (retAddr == 0x020069BF)
            storeShayminForm = form;
        if (retAddr == 0x020063E5 || retAddr == 0x02006241)
            if (!storeShayminForm)
                return species;
    }
    else if (form == 0)
    {
        return species;
    }

    switch (species)
    {
    case SPECIES_SHAYMIN:
        return CRY_SPECIES_SHAYMIN; // form is already nonzero
    case SPECIES_TORNADUS:
        return CRY_SPECIES_BASE_TORNADUS;
    case SPECIES_THUNDURUS:
        return CRY_SPECIES_BASE_THUNDURUS;
    case SPECIES_LANDORUS:
        return CRY_SPECIES_BASE_LANDORUS;
    case SPECIES_ENAMORUS:
        return CRY_SPECIES_BASE_ENAMORUS;
    case SPECIES_KYUREM:
        return CRY_SPECIES_BASE_KYUREM + form-1;
    case SPECIES_PUMPKABOO:
        if (form == 3) return CRY_SPECIES_BASE_PUMPKABOO;
        break;
    case SPECIES_GOURGEIST:
        if (form == 3) return CRY_SPECIES_BASE_GOURGEIST;
        break;
    case SPECIES_HOOPA:
        return CRY_SPECIES_BASE_HOOPA;
    case SPECIES_ORICORIO:
        return CRY_SPECIES_BASE_ORICORIO + form-1;
    case SPECIES_LYCANROC:
        return CRY_SPECIES_BASE_LYCANROC + form-1;
    case SPECIES_WISHIWASHI:
        return CRY_SPECIES_BASE_WISHIWASHI;
    case SPECIES_NECROZMA:
        return CRY_SPECIES_BASE_NECROZMA + form-1;
    case SPECIES_ZACIAN:
        return CRY_SPECIES_BASE_ZACIAN;
    case SPECIES_ZAMAZENTA:
        return CRY_SPECIES_BASE_ZAMAZENTA;
    case SPECIES_URSHIFU:
        return CRY_SPECIES_BASE_URSHIFU;
    case SPECIES_CALYREX:
        return CRY_SPECIES_BASE_CALYREX + form-1;
    //case SPECIES_MAUSHOLD:
    //    return CRY_SPECIES_BASE_MAUSHOLD;
    }
    return species;
}


// double battles triggerable

extern u32 gTriggerDouble;

u32 WildEncSingle(FieldSystem *fsys, struct PartyPokemon *pp, void *bw, void *encData, void *encArea, void *encInfo)
{
    u32 ret;
    ret = SetEncountData(pp, 255, encInfo, encArea, 0, 1, bw);
    
#ifdef IMPLEMENT_WILD_DOUBLE_BATTLES

    if (gTriggerDouble)
    {
        ret = SetEncountData(pp, 255, encInfo, encArea, 0, 1, bw); // add another mon to the enemy party
    }

#endif

    return ret;
}


// variable names are fucked but that's just gotta be okay
u32 WildWaterEncSingle(FieldSystem *fsys, struct PartyPokemon *pp, void *bw, void *encArea, void *encInfo, BOOL smth)
{
    u32 ret;
    if (smth)
    {
        ret = SetEncountDataSwarm_maybe(fsys, pp, 255, encInfo, 1, 1, bw);
    
#ifdef IMPLEMENT_WILD_DOUBLE_BATTLES
    
        if (gTriggerDouble)
        {
            ret = SetEncountDataSwarm_maybe(fsys, pp, 255, encInfo, 1, 1, bw); // add another mon to the enemy party
        }

#endif
    }
    else
    {
        ret = SetEncountData(pp, 255, encInfo, encArea, 1, 1, bw);
    
#ifdef IMPLEMENT_WILD_DOUBLE_BATTLES

        if (gTriggerDouble)
        {
            ret = SetEncountData(pp, 255, encInfo, encArea, 1, 1, bw); // add another mon to the enemy party
        }

#endif
    }
    
    return ret;
}


u32 CheckCanUseBallOnDoublesFromBag(struct BattleStruct *sp)
{
    if (sp->battlemon[1].hp && sp->battlemon[3].hp)
    {
        return FALSE;
    }
    return TRUE;
}


// grab tutor entry based on species and forme
u32 SpeciesAndFormeToWazaOshieIndex(u32 species, u32 form)
{
    u32 ret = species;
    switch (species)
    {
    case SPECIES_DEOXYS:
        if (form)
            ret = 494 + form - 1;
        break;
    case SPECIES_WORMADAM:
        if (form)
            ret = 497 + form - 1;
        break;
    case SPECIES_GIRATINA:
        if (form)
            ret = 499 + form - 1;
        break;
    case SPECIES_SHAYMIN:
        if (form)
            ret = 500 + form - 1;
        break;
    case SPECIES_ROTOM:
        if (form)
            ret = 591 + form - 1;
        break;
    default:
        if (form)
            ret = PokeOtherFormMonsNoGet(species, form);
        break;
    }

    ret--;
    return ret;
}


u32 GetLevelCap(void)
{
    return GetScriptVar(LEVEL_CAP_VARIABLE);
}

u32 IsLevelAtLevelCap(u32 level)
{
    return (level >= GetLevelCap());
}


#ifdef IMPLEMENT_LEVEL_CAP

BOOL Pokemon_TryLevelUp(struct PartyPokemon *mon) {
    u16 species = (u16)GetMonData(mon, ID_PARA_monsno, NULL);
    u8 level = (u8)(GetMonData(mon, ID_PARA_level, NULL) + 1);
    u32 exp = GetMonData(mon, ID_PARA_exp, NULL);
    u32 growthrate = (u32)PokePersonalParaGet(species, PERSONAL_EXP_GROUP);
    u32 maxexp = GetExpByGrowthRateAndLevel((int)growthrate, GetLevelCap());
    if (exp > maxexp) {
        exp = maxexp;
        SetMonData(mon, ID_PARA_exp, &exp);
    }
    if (level > GetLevelCap())
        return FALSE;
    if (exp >= GetExpByGrowthRateAndLevel((int)growthrate, level)) {
        SetMonData(mon, ID_PARA_level, &level);
        return TRUE;
    }
    return FALSE;
}

#endif
