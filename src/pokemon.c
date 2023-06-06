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
    [SPECIES_MAGIKARP           ] =  174,
    [SPECIES_GYARADOS           ] =  175,
    [SPECIES_LAPRAS             ] =  176,
    [SPECIES_DITTO              ] =  177,
    [SPECIES_EEVEE              ] =  178,
    [SPECIES_VAPOREON           ] =  179,
    [SPECIES_JOLTEON            ] =  180,
    [SPECIES_FLAREON            ] =  181,
    [SPECIES_PORYGON            ] =  182,
    [SPECIES_OMANYTE            ] =  183,
    [SPECIES_OMASTAR            ] =  184,
    [SPECIES_KABUTO             ] =  185,
    [SPECIES_KABUTOPS           ] =  186,
    [SPECIES_AERODACTYL         ] =  187,
    [SPECIES_SNORLAX            ] =  188,
    [SPECIES_ARTICUNO           ] =  189,
    [SPECIES_ZAPDOS             ] =  191,
    [SPECIES_MOLTRES            ] =  193,
    [SPECIES_DRATINI            ] =  195,
    [SPECIES_DRAGONAIR          ] =  196,
    [SPECIES_DRAGONITE          ] =  197,
    [SPECIES_MEWTWO             ] =  198,
    [SPECIES_MEW                ] =  199,
    [SPECIES_CHIKORITA          ] =  200,
    [SPECIES_BAYLEEF            ] =  201,
    [SPECIES_MEGANIUM           ] =  202,
    [SPECIES_CYNDAQUIL          ] =  204,
    [SPECIES_QUILAVA            ] =  205,
    [SPECIES_TYPHLOSION         ] =  206,
    [SPECIES_TOTODILE           ] =  208,
    [SPECIES_CROCONAW           ] =  209,
    [SPECIES_FERALIGATR         ] =  210,
    [SPECIES_SENTRET            ] =  211,
    [SPECIES_FURRET             ] =  212,
    [SPECIES_HOOTHOOT           ] =  213,
    [SPECIES_NOCTOWL            ] =  214,
    [SPECIES_LEDYBA             ] =  215,
    [SPECIES_LEDIAN             ] =  216,
    [SPECIES_SPINARAK           ] =  217,
    [SPECIES_ARIADOS            ] =  218,
    [SPECIES_CROBAT             ] =  219,
    [SPECIES_CHINCHOU           ] =  220,
    [SPECIES_LANTURN            ] =  221,
    [SPECIES_PICHU              ] =  222,
    [SPECIES_CLEFFA             ] =  224,
    [SPECIES_IGGLYBUFF          ] =  225,
    [SPECIES_TOGEPI             ] =  226,
    [SPECIES_TOGETIC            ] =  227,
    [SPECIES_NATU               ] =  228,
    [SPECIES_XATU               ] =  229,
    [SPECIES_MAREEP             ] =  230,
    [SPECIES_FLAAFFY            ] =  231,
    [SPECIES_AMPHAROS           ] =  232,
    [SPECIES_BELLOSSOM          ] =  233,
    [SPECIES_MARILL             ] =  234,
    [SPECIES_AZUMARILL          ] =  235,
    [SPECIES_SUDOWOODO          ] =  236,
    [SPECIES_POLITOED           ] =  237,
    [SPECIES_HOPPIP             ] =  238,
    [SPECIES_SKIPLOOM           ] =  239,
    [SPECIES_JUMPLUFF           ] =  240,
    [SPECIES_AIPOM              ] =  241,
    [SPECIES_SUNKERN            ] =  242,
    [SPECIES_SUNFLORA           ] =  243,
    [SPECIES_YANMA              ] =  244,
    [SPECIES_WOOPER             ] =  245,
    [SPECIES_QUAGSIRE           ] =  246,
    [SPECIES_ESPEON             ] =  247,
    [SPECIES_UMBREON            ] =  248,
    [SPECIES_MURKROW            ] =  249,
    [SPECIES_SLOWKING           ] =  250,
    [SPECIES_MISDREAVUS         ] =  252,
    [SPECIES_UNOWN              ] =  253,
    [SPECIES_WOBBUFFET          ] =  281,
    [SPECIES_GIRAFARIG          ] =  283,
    [SPECIES_PINECO             ] =  284,
    [SPECIES_FORRETRESS         ] =  285,
    [SPECIES_DUNSPARCE          ] =  286,
    [SPECIES_GLIGAR             ] =  287,
    [SPECIES_STEELIX            ] =  288,
    [SPECIES_SNUBBULL           ] =  290,
    [SPECIES_GRANBULL           ] =  291,
    [SPECIES_QWILFISH           ] =  292,
    [SPECIES_SCIZOR             ] =  294,
    [SPECIES_SHUCKLE            ] =  295,
    [SPECIES_HERACROSS          ] =  296,
    [SPECIES_SNEASEL            ] =  298,
    [SPECIES_TEDDIURSA          ] =  300,
    [SPECIES_URSARING           ] =  301,
    [SPECIES_SLUGMA             ] =  302,
    [SPECIES_MAGCARGO           ] =  303,
    [SPECIES_SWINUB             ] =  304,
    [SPECIES_PILOSWINE          ] =  305,
    [SPECIES_CORSOLA            ] =  306,
    [SPECIES_REMORAID           ] =  308,
    [SPECIES_OCTILLERY          ] =  309,
    [SPECIES_DELIBIRD           ] =  310,
    [SPECIES_MANTINE            ] =  311,
    [SPECIES_SKARMORY           ] =  312,
    [SPECIES_HOUNDOUR           ] =  313,
    [SPECIES_HOUNDOOM           ] =  314,
    [SPECIES_KINGDRA            ] =  315,
    [SPECIES_PHANPY             ] =  316,
    [SPECIES_DONPHAN            ] =  317,
    [SPECIES_PORYGON2           ] =  318,
    [SPECIES_STANTLER           ] =  319,
    [SPECIES_SMEARGLE           ] =  320,
    [SPECIES_TYROGUE            ] =  321,
    [SPECIES_HITMONTOP          ] =  322,
    [SPECIES_SMOOCHUM           ] =  323,
    [SPECIES_ELEKID             ] =  324,
    [SPECIES_MAGBY              ] =  325,
    [SPECIES_MILTANK            ] =  326,
    [SPECIES_BLISSEY            ] =  327,
    [SPECIES_RAIKOU             ] =  328,
    [SPECIES_ENTEI              ] =  329,
    [SPECIES_SUICUNE            ] =  330,
    [SPECIES_LARVITAR           ] =  331,
    [SPECIES_PUPITAR            ] =  332,
    [SPECIES_TYRANITAR          ] =  333,
    [SPECIES_LUGIA              ] =  334,
    [SPECIES_HO_OH              ] =  335,
    [SPECIES_CELEBI             ] =  336,
    [SPECIES_TREECKO            ] =  337,
    [SPECIES_GROVYLE            ] =  338,
    [SPECIES_SCEPTILE           ] =  339,
    [SPECIES_TORCHIC            ] =  340,
    [SPECIES_COMBUSKEN          ] =  341,
    [SPECIES_BLAZIKEN           ] =  342,
    [SPECIES_MUDKIP             ] =  343,
    [SPECIES_MARSHTOMP          ] =  344,
    [SPECIES_SWAMPERT           ] =  345,
    [SPECIES_POOCHYENA          ] =  346,
    [SPECIES_MIGHTYENA          ] =  347,
    [SPECIES_ZIGZAGOON          ] =  348,
    [SPECIES_LINOONE            ] =  350,
    [SPECIES_WURMPLE            ] =  352,
    [SPECIES_SILCOON            ] =  353,
    [SPECIES_BEAUTIFLY          ] =  354,
    [SPECIES_CASCOON            ] =  355,
    [SPECIES_DUSTOX             ] =  356,
    [SPECIES_LOTAD              ] =  357,
    [SPECIES_LOMBRE             ] =  358,
    [SPECIES_LUDICOLO           ] =  359,
    [SPECIES_SEEDOT             ] =  360,
    [SPECIES_NUZLEAF            ] =  361,
    [SPECIES_SHIFTRY            ] =  362,
    [SPECIES_TAILLOW            ] =  363,
    [SPECIES_SWELLOW            ] =  364,
    [SPECIES_WINGULL            ] =  365,
    [SPECIES_PELIPPER           ] =  366,
    [SPECIES_RALTS              ] =  367,
    [SPECIES_KIRLIA             ] =  368,
    [SPECIES_GARDEVOIR          ] =  369,
    [SPECIES_SURSKIT            ] =  370,
    [SPECIES_MASQUERAIN         ] =  371,
    [SPECIES_SHROOMISH          ] =  372,
    [SPECIES_BRELOOM            ] =  373,
    [SPECIES_SLAKOTH            ] =  374,
    [SPECIES_VIGOROTH           ] =  375,
    [SPECIES_SLAKING            ] =  376,
    [SPECIES_NINCADA            ] =  377,
    [SPECIES_NINJASK            ] =  378,
    [SPECIES_SHEDINJA           ] =  379,
    [SPECIES_WHISMUR            ] =  380,
    [SPECIES_LOUDRED            ] =  381,
    [SPECIES_EXPLOUD            ] =  382,
    [SPECIES_MAKUHITA           ] =  383,
    [SPECIES_HARIYAMA           ] =  384,
    [SPECIES_AZURILL            ] =  385,
    [SPECIES_NOSEPASS           ] =  386,
    [SPECIES_SKITTY             ] =  387,
    [SPECIES_DELCATTY           ] =  388,
    [SPECIES_SABLEYE            ] =  389,
    [SPECIES_MAWILE             ] =  390,
    [SPECIES_ARON               ] =  391,
    [SPECIES_LAIRON             ] =  392,
    [SPECIES_AGGRON             ] =  393,
    [SPECIES_MEDITITE           ] =  394,
    [SPECIES_MEDICHAM           ] =  395,
    [SPECIES_ELECTRIKE          ] =  396,
    [SPECIES_MANECTRIC          ] =  397,
    [SPECIES_PLUSLE             ] =  398,
    [SPECIES_MINUN              ] =  399,
    [SPECIES_VOLBEAT            ] =  400,
    [SPECIES_ILLUMISE           ] =  401,
    [SPECIES_ROSELIA            ] =  402,
    [SPECIES_GULPIN             ] =  403,
    [SPECIES_SWALOT             ] =  404,
    [SPECIES_CARVANHA           ] =  405,
    [SPECIES_SHARPEDO           ] =  406,
    [SPECIES_WAILMER            ] =  407,
    [SPECIES_WAILORD            ] =  408,
    [SPECIES_NUMEL              ] =  409,
    [SPECIES_CAMERUPT           ] =  410,
    [SPECIES_TORKOAL            ] =  411,
    [SPECIES_SPOINK             ] =  412,
    [SPECIES_GRUMPIG            ] =  413,
    [SPECIES_SPINDA             ] =  414,
    [SPECIES_TRAPINCH           ] =  415,
    [SPECIES_VIBRAVA            ] =  416,
    [SPECIES_FLYGON             ] =  417,
    [SPECIES_CACNEA             ] =  418,
    [SPECIES_CACTURNE           ] =  419,
    [SPECIES_SWABLU             ] =  420,
    [SPECIES_ALTARIA            ] =  421,
    [SPECIES_ZANGOOSE           ] =  422,
    [SPECIES_SEVIPER            ] =  423,
    [SPECIES_LUNATONE           ] =  424,
    [SPECIES_SOLROCK            ] =  425,
    [SPECIES_BARBOACH           ] =  426,
    [SPECIES_WHISCASH           ] =  427,
    [SPECIES_CORPHISH           ] =  428,
    [SPECIES_CRAWDAUNT          ] =  429,
    [SPECIES_BALTOY             ] =  430,
    [SPECIES_CLAYDOL            ] =  431,
    [SPECIES_LILEEP             ] =  432,
    [SPECIES_CRADILY            ] =  433,
    [SPECIES_ANORITH            ] =  434,
    [SPECIES_ARMALDO            ] =  435,
    [SPECIES_FEEBAS             ] =  436,
    [SPECIES_MILOTIC            ] =  437,
    [SPECIES_CASTFORM           ] =  438,
    [SPECIES_KECLEON            ] =  442,
    [SPECIES_SHUPPET            ] =  443,
    [SPECIES_BANETTE            ] =  444,
    [SPECIES_DUSKULL            ] =  445,
    [SPECIES_DUSCLOPS           ] =  446,
    [SPECIES_TROPIUS            ] =  447,
    [SPECIES_CHIMECHO           ] =  448,
    [SPECIES_ABSOL              ] =  449,
    [SPECIES_WYNAUT             ] =  450,
    [SPECIES_SNORUNT            ] =  451,
    [SPECIES_GLALIE             ] =  452,
    [SPECIES_SPHEAL             ] =  453,
    [SPECIES_SEALEO             ] =  454,
    [SPECIES_WALREIN            ] =  455,
    [SPECIES_CLAMPERL           ] =  456,
    [SPECIES_HUNTAIL            ] =  457,
    [SPECIES_GOREBYSS           ] =  458,
    [SPECIES_RELICANTH          ] =  459,
    [SPECIES_LUVDISC            ] =  460,
    [SPECIES_BAGON              ] =  461,
    [SPECIES_SHELGON            ] =  462,
    [SPECIES_SALAMENCE          ] =  463,
    [SPECIES_BELDUM             ] =  464,
    [SPECIES_METANG             ] =  465,
    [SPECIES_METAGROSS          ] =  466,
    [SPECIES_REGIROCK           ] =  467,
    [SPECIES_REGICE             ] =  468,
    [SPECIES_REGISTEEL          ] =  469,
    [SPECIES_LATIAS             ] =  470,
    [SPECIES_LATIOS             ] =  471,
    [SPECIES_KYOGRE             ] =  472,
    [SPECIES_GROUDON            ] =  473,
    [SPECIES_RAYQUAZA           ] =  474,
    [SPECIES_JIRACHI            ] =  475,
    [SPECIES_DEOXYS             ] =  476,
    [SPECIES_TURTWIG            ] =  480,
    [SPECIES_GROTLE             ] =  481,
    [SPECIES_TORTERRA           ] =  482,
    [SPECIES_CHIMCHAR           ] =  483,
    [SPECIES_MONFERNO           ] =  484,
    [SPECIES_INFERNAPE          ] =  485,
    [SPECIES_PIPLUP             ] =  486,
    [SPECIES_PRINPLUP           ] =  487,
    [SPECIES_EMPOLEON           ] =  488,
    [SPECIES_STARLY             ] =  489,
    [SPECIES_STARAVIA           ] =  490,
    [SPECIES_STARAPTOR          ] =  491,
    [SPECIES_BIDOOF             ] =  492,
    [SPECIES_BIBAREL            ] =  493,
    [SPECIES_KRICKETOT          ] =  494,
    [SPECIES_KRICKETUNE         ] =  495,
    [SPECIES_SHINX              ] =  496,
    [SPECIES_LUXIO              ] =  497,
    [SPECIES_LUXRAY             ] =  498,
    [SPECIES_BUDEW              ] =  499,
    [SPECIES_ROSERADE           ] =  500,
    [SPECIES_CRANIDOS           ] =  501,
    [SPECIES_RAMPARDOS          ] =  502,
    [SPECIES_SHIELDON           ] =  503,
    [SPECIES_BASTIODON          ] =  504,
    [SPECIES_BURMY              ] =  505,
    [SPECIES_WORMADAM           ] =  508,
    [SPECIES_MOTHIM             ] =  511,
    [SPECIES_COMBEE             ] =  512,
    [SPECIES_VESPIQUEN          ] =  514,
    [SPECIES_PACHIRISU          ] =  515,
    [SPECIES_BUIZEL             ] =  516,
    [SPECIES_FLOATZEL           ] =  517,
    [SPECIES_CHERUBI            ] =  518,
    [SPECIES_CHERRIM            ] =  519,
    [SPECIES_SHELLOS            ] =  520,
    [SPECIES_GASTRODON          ] =  522,
    [SPECIES_AMBIPOM            ] =  524,
    [SPECIES_DRIFLOON           ] =  525,
    [SPECIES_DRIFBLIM           ] =  526,
    [SPECIES_BUNEARY            ] =  527,
    [SPECIES_LOPUNNY            ] =  528,
    [SPECIES_MISMAGIUS          ] =  529,
    [SPECIES_HONCHKROW          ] =  530,
    [SPECIES_GLAMEOW            ] =  531,
    [SPECIES_PURUGLY            ] =  532,
    [SPECIES_CHINGLING          ] =  533,
    [SPECIES_STUNKY             ] =  534,
    [SPECIES_SKUNTANK           ] =  535,
    [SPECIES_BRONZOR            ] =  536,
    [SPECIES_BRONZONG           ] =  537,
    [SPECIES_BONSLY             ] =  538,
    [SPECIES_MIME_JR            ] =  539,
    [SPECIES_HAPPINY            ] =  540,
    [SPECIES_CHATOT             ] =  541,
    [SPECIES_SPIRITOMB          ] =  542,
    [SPECIES_GIBLE              ] =  543,
    [SPECIES_GABITE             ] =  544,
    [SPECIES_GARCHOMP           ] =  545,
    [SPECIES_MUNCHLAX           ] =  546,
    [SPECIES_RIOLU              ] =  547,
    [SPECIES_LUCARIO            ] =  548,
    [SPECIES_HIPPOPOTAS         ] =  549,
    [SPECIES_HIPPOWDON          ] =  551,
    [SPECIES_SKORUPI            ] =  553,
    [SPECIES_DRAPION            ] =  554,
    [SPECIES_CROAGUNK           ] =  555,
    [SPECIES_TOXICROAK          ] =  556,
    [SPECIES_CARNIVINE          ] =  557,
    [SPECIES_FINNEON            ] =  558,
    [SPECIES_LUMINEON           ] =  559,
    [SPECIES_MANTYKE            ] =  560,
    [SPECIES_SNOVER             ] =  561,
    [SPECIES_ABOMASNOW          ] =  562,
    [SPECIES_WEAVILE            ] =  563,
    [SPECIES_MAGNEZONE          ] =  564,
    [SPECIES_LICKILICKY         ] =  565,
    [SPECIES_RHYPERIOR          ] =  566,
    [SPECIES_TANGROWTH          ] =  567,
    [SPECIES_ELECTIVIRE         ] =  568,
    [SPECIES_MAGMORTAR          ] =  569,
    [SPECIES_TOGEKISS           ] =  570,
    [SPECIES_YANMEGA            ] =  571,
    [SPECIES_LEAFEON            ] =  572,
    [SPECIES_GLACEON            ] =  573,
    [SPECIES_GLISCOR            ] =  574,
    [SPECIES_MAMOSWINE          ] =  575,
    [SPECIES_PORYGON_Z          ] =  576,
    [SPECIES_GALLADE            ] =  577,
    [SPECIES_PROBOPASS          ] =  578,
    [SPECIES_DUSKNOIR           ] =  579,
    [SPECIES_FROSLASS           ] =  580,
    [SPECIES_ROTOM              ] =  581,
    [SPECIES_UXIE               ] =  587,
    [SPECIES_MESPRIT            ] =  588,
    [SPECIES_AZELF              ] =  589,
    [SPECIES_DIALGA             ] =  590,
    [SPECIES_PALKIA             ] =  592,
    [SPECIES_HEATRAN            ] =  594,
    [SPECIES_REGIGIGAS          ] =  595,
    [SPECIES_GIRATINA           ] =  596,
    [SPECIES_CRESSELIA          ] =  598,
    [SPECIES_PHIONE             ] =  599,
    [SPECIES_MANAPHY            ] =  600,
    [SPECIES_DARKRAI            ] =  601,
    [SPECIES_SHAYMIN            ] =  602,
    [SPECIES_ARCEUS             ] =  604,
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
    [SPECIES_VICTINI            ] =  622,
    [SPECIES_SNIVY              ] =  623,
    [SPECIES_SERVINE            ] =  624,
    [SPECIES_SERPERIOR          ] =  625,
    [SPECIES_TEPIG              ] =  626,
    [SPECIES_PIGNITE            ] =  627,
    [SPECIES_EMBOAR             ] =  628,
    [SPECIES_OSHAWOTT           ] =  629,
    [SPECIES_DEWOTT             ] =  630,
    [SPECIES_SAMUROTT           ] =  631,
    [SPECIES_PATRAT             ] =  633,
    [SPECIES_WATCHOG            ] =  634,
    [SPECIES_LILLIPUP           ] =  635,
    [SPECIES_HERDIER            ] =  636,
    [SPECIES_STOUTLAND          ] =  637,
    [SPECIES_PURRLOIN           ] =  638,
    [SPECIES_LIEPARD            ] =  639,
    [SPECIES_PANSAGE            ] =  640,
    [SPECIES_SIMISAGE           ] =  641,
    [SPECIES_PANSEAR            ] =  642,
    [SPECIES_SIMISEAR           ] =  643,
    [SPECIES_PANPOUR            ] =  644,
    [SPECIES_SIMIPOUR           ] =  645,
    [SPECIES_MUNNA              ] =  646,
    [SPECIES_MUSHARNA           ] =  647,
    [SPECIES_PIDOVE             ] =  648,
    [SPECIES_TRANQUILL          ] =  649,
    [SPECIES_UNFEZANT           ] =  650,
    [SPECIES_BLITZLE            ] =  652,
    [SPECIES_ZEBSTRIKA          ] =  653,
    [SPECIES_ROGGENROLA         ] =  654,
    [SPECIES_BOLDORE            ] =  655,
    [SPECIES_GIGALITH           ] =  656,
    [SPECIES_WOOBAT             ] =  657,
    [SPECIES_SWOOBAT            ] =  658,
    [SPECIES_DRILBUR            ] =  659,
    [SPECIES_EXCADRILL          ] =  660,
    [SPECIES_AUDINO             ] =  661,
    [SPECIES_TIMBURR            ] =  662,
    [SPECIES_GURDURR            ] =  663,
    [SPECIES_CONKELDURR         ] =  664,
    [SPECIES_TYMPOLE            ] =  665,
    [SPECIES_PALPITOAD          ] =  666,
    [SPECIES_SEISMITOAD         ] =  667,
    [SPECIES_THROH              ] =  668,
    [SPECIES_SAWK               ] =  669,
    [SPECIES_SEWADDLE           ] =  670,
    [SPECIES_SWADLOON           ] =  671,
    [SPECIES_LEAVANNY           ] =  672,
    [SPECIES_VENIPEDE           ] =  673,
    [SPECIES_WHIRLIPEDE         ] =  674,
    [SPECIES_SCOLIPEDE          ] =  675,
    [SPECIES_COTTONEE           ] =  676,
    [SPECIES_WHIMSICOTT         ] =  677,
    [SPECIES_PETILIL            ] =  678,
    [SPECIES_LILLIGANT          ] =  679,
    [SPECIES_BASCULIN           ] =  681,
    [SPECIES_SANDILE            ] =  684,
    [SPECIES_KROKOROK           ] =  685,
    [SPECIES_KROOKODILE         ] =  686,
    [SPECIES_DARUMAKA           ] =  687,
    [SPECIES_DARMANITAN         ] =  689,
    [SPECIES_MARACTUS           ] =  693,
    [SPECIES_DWEBBLE            ] =  694,
    [SPECIES_CRUSTLE            ] =  695,
    [SPECIES_SCRAGGY            ] =  696,
    [SPECIES_SCRAFTY            ] =  697,
    [SPECIES_SIGILYPH           ] =  698,
    [SPECIES_YAMASK             ] =  699,
    [SPECIES_COFAGRIGUS         ] =  701,
    [SPECIES_TIRTOUGA           ] =  702,
    [SPECIES_CARRACOSTA         ] =  703,
    [SPECIES_ARCHEN             ] =  704,
    [SPECIES_ARCHEOPS           ] =  705,
    [SPECIES_TRUBBISH           ] =  706,
    [SPECIES_GARBODOR           ] =  707,
    [SPECIES_ZORUA              ] =  708,
    [SPECIES_ZOROARK            ] =  710,
    [SPECIES_MINCCINO           ] =  712,
    [SPECIES_CINCCINO           ] =  713,
    [SPECIES_GOTHITA            ] =  714,
    [SPECIES_GOTHORITA          ] =  715,
    [SPECIES_GOTHITELLE         ] =  716,
    [SPECIES_SOLOSIS            ] =  717,
    [SPECIES_DUOSION            ] =  718,
    [SPECIES_REUNICLUS          ] =  719,
    [SPECIES_DUCKLETT           ] =  720,
    [SPECIES_SWANNA             ] =  721,
    [SPECIES_VANILLITE          ] =  722,
    [SPECIES_VANILLISH          ] =  723,
    [SPECIES_VANILLUXE          ] =  724,
    [SPECIES_DEERLING           ] =  725,
    [SPECIES_SAWSBUCK           ] =  729,
    [SPECIES_EMOLGA             ] =  733,
    [SPECIES_KARRABLAST         ] =  734,
    [SPECIES_ESCAVALIER         ] =  735,
    [SPECIES_FOONGUS            ] =  736,
    [SPECIES_AMOONGUSS          ] =  737,
    [SPECIES_FRILLISH           ] =  738,
    [SPECIES_JELLICENT          ] =  740,
    [SPECIES_ALOMOMOLA          ] =  742,
    [SPECIES_JOLTIK             ] =  743,
    [SPECIES_GALVANTULA         ] =  744,
    [SPECIES_FERROSEED          ] =  745,
    [SPECIES_FERROTHORN         ] =  746,
    [SPECIES_KLINK              ] =  747,
    [SPECIES_KLANG              ] =  748,
    [SPECIES_KLINKLANG          ] =  749,
    [SPECIES_TYNAMO             ] =  750,
    [SPECIES_EELEKTRIK          ] =  751,
    [SPECIES_EELEKTROSS         ] =  752,
    [SPECIES_ELGYEM             ] =  753,
    [SPECIES_BEHEEYEM           ] =  754,
    [SPECIES_LITWICK            ] =  755,
    [SPECIES_LAMPENT            ] =  756,
    [SPECIES_CHANDELURE         ] =  757,
    [SPECIES_AXEW               ] =  758,
    [SPECIES_FRAXURE            ] =  759,
    [SPECIES_HAXORUS            ] =  760,
    [SPECIES_CUBCHOO            ] =  761,
    [SPECIES_BEARTIC            ] =  762,
    [SPECIES_CRYOGONAL          ] =  763,
    [SPECIES_SHELMET            ] =  764,
    [SPECIES_ACCELGOR           ] =  765,
    [SPECIES_STUNFISK           ] =  766,
    [SPECIES_MIENFOO            ] =  768,
    [SPECIES_MIENSHAO           ] =  769,
    [SPECIES_DRUDDIGON          ] =  770,
    [SPECIES_GOLETT             ] =  771,
    [SPECIES_GOLURK             ] =  772,
    [SPECIES_PAWNIARD           ] =  773,
    [SPECIES_BISHARP            ] =  774,
    [SPECIES_BOUFFALANT         ] =  775,
    [SPECIES_RUFFLET            ] =  776,
    [SPECIES_BRAVIARY           ] =  777,
    [SPECIES_VULLABY            ] =  779,
    [SPECIES_MANDIBUZZ          ] =  780,
    [SPECIES_HEATMOR            ] =  781,
    [SPECIES_DURANT             ] =  782,
    [SPECIES_DEINO              ] =  783,
    [SPECIES_ZWEILOUS           ] =  784,
    [SPECIES_HYDREIGON          ] =  785,
    [SPECIES_LARVESTA           ] =  786,
    [SPECIES_VOLCARONA          ] =  787,
    [SPECIES_COBALION           ] =  788,
    [SPECIES_TERRAKION          ] =  789,
    [SPECIES_VIRIZION           ] =  790,
    [SPECIES_TORNADUS           ] =  791,
    [SPECIES_THUNDURUS          ] =  793,
    [SPECIES_RESHIRAM           ] =  795,
    [SPECIES_ZEKROM             ] =  796,
    [SPECIES_LANDORUS           ] =  797,
    [SPECIES_KYUREM             ] =  799,
    [SPECIES_KELDEO             ] =  802,
    [SPECIES_MELOETTA           ] =  804,
    [SPECIES_GENESECT           ] =  806,
    [SPECIES_CHESPIN            ] =  807,
    [SPECIES_QUILLADIN          ] =  808,
    [SPECIES_CHESNAUGHT         ] =  809,
    [SPECIES_FENNEKIN           ] =  810,
    [SPECIES_BRAIXEN            ] =  811,
    [SPECIES_DELPHOX            ] =  812,
    [SPECIES_FROAKIE            ] =  813,
    [SPECIES_FROGADIER          ] =  814,
    [SPECIES_GRENINJA           ] =  815,
    [SPECIES_BUNNELBY           ] =  816,
    [SPECIES_DIGGERSBY          ] =  817,
    [SPECIES_FLETCHLING         ] =  818,
    [SPECIES_FLETCHINDER        ] =  819,
    [SPECIES_TALONFLAME         ] =  820,
    [SPECIES_SCATTERBUG         ] =  821,
    [SPECIES_SPEWPA             ] =  822,
    [SPECIES_VIVILLON           ] =  823,
    [SPECIES_LITLEO             ] =  843,
    [SPECIES_PYROAR             ] =  844,
    [SPECIES_FLABEBE            ] =  846,
    [SPECIES_FLOETTE            ] =  851,
    [SPECIES_FLORGES            ] =  857,
    [SPECIES_SKIDDO             ] =  862,
    [SPECIES_GOGOAT             ] =  863,
    [SPECIES_PANCHAM            ] =  864,
    [SPECIES_PANGORO            ] =  865,
    [SPECIES_FURFROU            ] =  866,
    [SPECIES_ESPURR             ] =  876,
    [SPECIES_MEOWSTIC           ] =  877,
    [SPECIES_HONEDGE            ] =  879,
    [SPECIES_DOUBLADE           ] =  880,
    [SPECIES_AEGISLASH          ] =  881,
    [SPECIES_SPRITZEE           ] =  882,
    [SPECIES_AROMATISSE         ] =  883,
    [SPECIES_SWIRLIX            ] =  884,
    [SPECIES_SLURPUFF           ] =  885,
    [SPECIES_INKAY              ] =  886,
    [SPECIES_MALAMAR            ] =  887,
    [SPECIES_BINACLE            ] =  888,
    [SPECIES_BARBARACLE         ] =  889,
    [SPECIES_SKRELP             ] =  890,
    [SPECIES_DRAGALGE           ] =  891,
    [SPECIES_CLAUNCHER          ] =  892,
    [SPECIES_CLAWITZER          ] =  893,
    [SPECIES_HELIOPTILE         ] =  894,
    [SPECIES_HELIOLISK          ] =  895,
    [SPECIES_TYRUNT             ] =  896,
    [SPECIES_TYRANTRUM          ] =  897,
    [SPECIES_AMAURA             ] =  898,
    [SPECIES_AURORUS            ] =  899,
    [SPECIES_SYLVEON            ] =  900,
    [SPECIES_HAWLUCHA           ] =  901,
    [SPECIES_DEDENNE            ] =  902,
    [SPECIES_CARBINK            ] =  903,
    [SPECIES_GOOMY              ] =  904,
    [SPECIES_SLIGGOO            ] =  905,
    [SPECIES_GOODRA             ] =  907,
    [SPECIES_KLEFKI             ] =  909,
    [SPECIES_PHANTUMP           ] =  910,
    [SPECIES_TREVENANT          ] =  911,
    [SPECIES_PUMPKABOO          ] =  912,
    [SPECIES_GOURGEIST          ] =  916,
    [SPECIES_BERGMITE           ] =  920,
    [SPECIES_AVALUGG            ] =  921,
    [SPECIES_NOIBAT             ] =  923,
    [SPECIES_NOIVERN            ] =  924,
    [SPECIES_XERNEAS            ] =  925,
    [SPECIES_YVELTAL            ] =  926,
    [SPECIES_ZYGARDE            ] =  927,
    [SPECIES_DIANCIE            ] =  933,
    [SPECIES_HOOPA              ] =  934,
    [SPECIES_VOLCANION          ] =  936,
    [SPECIES_ROWLET             ] =  937,
    [SPECIES_DARTRIX            ] =  938,
    [SPECIES_DECIDUEYE          ] =  939,
    [SPECIES_LITTEN             ] =  941,
    [SPECIES_TORRACAT           ] =  942,
    [SPECIES_INCINEROAR         ] =  943,
    [SPECIES_POPPLIO            ] =  944,
    [SPECIES_BRIONNE            ] =  945,
    [SPECIES_PRIMARINA          ] =  946,
    [SPECIES_PIKIPEK            ] =  947,
    [SPECIES_TRUMBEAK           ] =  948,
    [SPECIES_TOUCANNON          ] =  949,
    [SPECIES_YUNGOOS            ] =  950,
    [SPECIES_GUMSHOOS           ] =  951,
    [SPECIES_GRUBBIN            ] =  952,
    [SPECIES_CHARJABUG          ] =  953,
    [SPECIES_VIKAVOLT           ] =  954,
    [SPECIES_CRABRAWLER         ] =  955,
    [SPECIES_CRABOMINABLE       ] =  956,
    [SPECIES_ORICORIO           ] =  957,
    [SPECIES_CUTIEFLY           ] =  961,
    [SPECIES_RIBOMBEE           ] =  962,
    [SPECIES_ROCKRUFF           ] =  963,
    [SPECIES_LYCANROC           ] =  965,
    [SPECIES_WISHIWASHI         ] =  968,
    [SPECIES_MAREANIE           ] =  969,
    [SPECIES_TOXAPEX            ] =  970,
    [SPECIES_MUDBRAY            ] =  971,
    [SPECIES_MUDSDALE           ] =  972,
    [SPECIES_DEWPIDER           ] =  973,
    [SPECIES_ARAQUANID          ] =  974,
    [SPECIES_FOMANTIS           ] =  975,
    [SPECIES_LURANTIS           ] =  976,
    [SPECIES_MORELULL           ] =  977,
    [SPECIES_SHIINOTIC          ] =  978,
    [SPECIES_SALANDIT           ] =  979,
    [SPECIES_SALAZZLE           ] =  980,
    [SPECIES_STUFFUL            ] =  981,
    [SPECIES_BEWEAR             ] =  982,
    [SPECIES_BOUNSWEET          ] =  983,
    [SPECIES_STEENEE            ] =  984,
    [SPECIES_TSAREENA           ] =  985,
    [SPECIES_COMFEY             ] =  986,
    [SPECIES_ORANGURU           ] =  987,
    [SPECIES_PASSIMIAN          ] =  988,
    [SPECIES_WIMPOD             ] =  989,
    [SPECIES_GOLISOPOD          ] =  990,
    [SPECIES_SANDYGAST          ] =  991,
    [SPECIES_PALOSSAND          ] =  992,
    [SPECIES_PYUKUMUKU          ] =  993,
    [SPECIES_TYPE_NULL          ] =  994,
    [SPECIES_SILVALLY           ] =  995,
    [SPECIES_MINIOR             ] = 1013,
    [SPECIES_KOMALA             ] = 1020,
    [SPECIES_TURTONATOR         ] = 1021,
    [SPECIES_TOGEDEMARU         ] = 1022,
    [SPECIES_MIMIKYU            ] = 1023,
    [SPECIES_BRUXISH            ] = 1024,
    [SPECIES_DRAMPA             ] = 1025,
    [SPECIES_DHELMISE           ] = 1026,
    [SPECIES_JANGMO_O           ] = 1027,
    [SPECIES_HAKAMO_O           ] = 1028,
    [SPECIES_KOMMO_O            ] = 1029,
    [SPECIES_TAPU_KOKO          ] = 1030,
    [SPECIES_TAPU_LELE          ] = 1031,
    [SPECIES_TAPU_BULU          ] = 1032,
    [SPECIES_TAPU_FINI          ] = 1033,
    [SPECIES_COSMOG             ] = 1034,
    [SPECIES_COSMOEM            ] = 1035,
    [SPECIES_SOLGALEO           ] = 1036,
    [SPECIES_LUNALA             ] = 1037,
    [SPECIES_NIHILEGO           ] = 1038,
    [SPECIES_BUZZWOLE           ] = 1039,
    [SPECIES_PHEROMOSA          ] = 1040,
    [SPECIES_XURKITREE          ] = 1041,
    [SPECIES_CELESTEELA         ] = 1042,
    [SPECIES_KARTANA            ] = 1043,
    [SPECIES_GUZZLORD           ] = 1044,
    [SPECIES_NECROZMA           ] = 1045,
    [SPECIES_MAGEARNA           ] = 1048,
    [SPECIES_MARSHADOW          ] = 1050,
    [SPECIES_POIPOLE            ] = 1051,
    [SPECIES_NAGANADEL          ] = 1052,
    [SPECIES_STAKATAKA          ] = 1053,
    [SPECIES_BLACEPHALON        ] = 1054,
    [SPECIES_ZERAORA            ] = 1055,
    [SPECIES_MELTAN             ] = 1056,
    [SPECIES_MELMETAL           ] = 1057,
    [SPECIES_GROOKEY            ] = 1058,
    [SPECIES_THWACKEY           ] = 1059,
    [SPECIES_RILLABOOM          ] = 1060,
    [SPECIES_SCORBUNNY          ] = 1061,
    [SPECIES_RABOOT             ] = 1062,
    [SPECIES_CINDERACE          ] = 1063,
    [SPECIES_SOBBLE             ] = 1064,
    [SPECIES_DRIZZILE           ] = 1065,
    [SPECIES_INTELEON           ] = 1066,
    [SPECIES_SKWOVET            ] = 1067,
    [SPECIES_GREEDENT           ] = 1068,
    [SPECIES_ROOKIDEE           ] = 1069,
    [SPECIES_CORVISQUIRE        ] = 1070,
    [SPECIES_CORVIKNIGHT        ] = 1071,
    [SPECIES_BLIPBUG            ] = 1072,
    [SPECIES_DOTTLER            ] = 1073,
    [SPECIES_ORBEETLE           ] = 1074,
    [SPECIES_NICKIT             ] = 1075,
    [SPECIES_THIEVUL            ] = 1076,
    [SPECIES_GOSSIFLEUR         ] = 1077,
    [SPECIES_ELDEGOSS           ] = 1078,
    [SPECIES_WOOLOO             ] = 1079,
    [SPECIES_DUBWOOL            ] = 1080,
    [SPECIES_CHEWTLE            ] = 1081,
    [SPECIES_DREDNAW            ] = 1082,
    [SPECIES_YAMPER             ] = 1083,
    [SPECIES_BOLTUND            ] = 1084,
    [SPECIES_ROLYCOLY           ] = 1085,
    [SPECIES_CARKOL             ] = 1086,
    [SPECIES_COALOSSAL          ] = 1087,
    [SPECIES_APPLIN             ] = 1088,
    [SPECIES_FLAPPLE            ] = 1089,
    [SPECIES_APPLETUN           ] = 1090,
    [SPECIES_SILICOBRA          ] = 1091,
    [SPECIES_SANDACONDA         ] = 1092,
    [SPECIES_CRAMORANT          ] = 1093,
    [SPECIES_ARROKUDA           ] = 1094,
    [SPECIES_BARRASKEWDA        ] = 1095,
    [SPECIES_TOXEL              ] = 1096,
    [SPECIES_TOXTRICITY         ] = 1097,
    [SPECIES_SIZZLIPEDE         ] = 1099,
    [SPECIES_CENTISKORCH        ] = 1100,
    [SPECIES_CLOBBOPUS          ] = 1101,
    [SPECIES_GRAPPLOCT          ] = 1102,
    [SPECIES_SINISTEA           ] = 1103,
    [SPECIES_POLTEAGEIST        ] = 1105,
    [SPECIES_HATENNA            ] = 1107,
    [SPECIES_HATTREM            ] = 1108,
    [SPECIES_HATTERENE          ] = 1109,
    [SPECIES_IMPIDIMP           ] = 1110,
    [SPECIES_MORGREM            ] = 1111,
    [SPECIES_GRIMMSNARL         ] = 1112,
    [SPECIES_OBSTAGOON          ] = 1113,
    [SPECIES_PERRSERKER         ] = 1114,
    [SPECIES_CURSOLA            ] = 1115,
    [SPECIES_SIRFETCHD          ] = 1116,
    [SPECIES_MR_RIME            ] = 1117,
    [SPECIES_RUNERIGUS          ] = 1118,
    [SPECIES_MILCERY            ] = 1119,
    [SPECIES_ALCREMIE           ] = 1120,
    [SPECIES_FALINKS            ] = 1127,
    [SPECIES_PINCURCHIN         ] = 1128,
    [SPECIES_SNOM               ] = 1129,
    [SPECIES_FROSMOTH           ] = 1130,
    [SPECIES_STONJOURNER        ] = 1131,
    [SPECIES_EISCUE             ] = 1132,
    [SPECIES_INDEEDEE           ] = 1133,
    [SPECIES_MORPEKO            ] = 1135,
    [SPECIES_CUFANT             ] = 1136,
    [SPECIES_COPPERAJAH         ] = 1137,
    [SPECIES_DRACOZOLT          ] = 1138,
    [SPECIES_ARCTOZOLT          ] = 1139,
    [SPECIES_DRACOVISH          ] = 1140,
    [SPECIES_ARCTOVISH          ] = 1141,
    [SPECIES_DURALUDON          ] = 1142,
    [SPECIES_DREEPY             ] = 1143,
    [SPECIES_DRAKLOAK           ] = 1144,
    [SPECIES_DRAGAPULT          ] = 1145,
    [SPECIES_ZACIAN             ] = 1146,
    [SPECIES_ZAMAZENTA          ] = 1147,
    [SPECIES_ETERNATUS          ] = 1148,
    [SPECIES_KUBFU              ] = 1149,
    [SPECIES_URSHIFU            ] = 1150,
    [SPECIES_ZARUDE             ] = 1152,
    [SPECIES_REGIELEKI          ] = 1154,
    [SPECIES_REGIDRAGO          ] = 1155,
    [SPECIES_GLASTRIER          ] = 1156,
    [SPECIES_SPECTRIER          ] = 1157,
    [SPECIES_CALYREX            ] = 1158,
    [SPECIES_WYRDEER            ] = 1161,
    [SPECIES_KLEAVOR            ] = 1162,
    [SPECIES_URSALUNA           ] = 1163,
    [SPECIES_BASCULEGION        ] = 1164,
    [SPECIES_SNEASLER           ] = 1166,
    [SPECIES_OVERQWIL           ] = 1167,
    [SPECIES_ENAMORUS           ] = 1168,
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
        .form_no = 1,
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

u32 __attribute__((long_call)) CanUseRevealMirror(struct PartyPokemon *pp)
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
    
    if (wk->dat->item == ITEM_REVEAL_MIRROR
     && CanUseRevealMirror(pp) == 1)
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
        case SPECIES_BASCULEGION:
            form = gf_rand() & 1; // 1/2 male
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
    if (species > SPECIES_LICKILICKY) // split between 0x1AC and 0x1E4
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

bool8 __attribute__((long_call)) RevertFormChange(void *pp, u16 species, u8 form_no)
{
    u32 i;
    int work = 0;

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
    SetMonData(togepi, ID_PARA_pp_count1 + i, &pp);

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

void WildEncSingle(FieldSystem *fsys, struct PartyPokemon *pp, void *bw, void *encData, void *encArea, void *encInfo)
{
    SetEncountData(pp, 255, encInfo, encArea, 0, 1, bw);
    
#ifdef IMPLEMENT_WILD_DOUBLE_BATTLES

    if (gTriggerDouble)
        SetEncountData(pp, 255, encInfo, encArea, 0, 1, bw); // add another mon to the enemy party

#endif

}
