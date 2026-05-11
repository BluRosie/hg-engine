.nds
.thumb

.include "armips/include/config.s"
.include "armips/include/constants.s"
.include "armips/include/macros.s"

.include "asm/include/species.inc"
//.include "armips/asm/overworlds.s"

.open "base/arm9.bin", 0x02000000

.org 0x020FECAE

.area (SPECIES_ARCEUS)*2, 0xFF // if this overflows then the routine will need a rewrite

// this was rewritten to make it a byte per pokémon.  the routine subtracts one, so it starts with bulbasaur
gDimorphismTable:
/* SPECIES_BULBASAUR       */ .byte 0
/* SPECIES_IVYSAUR         */ .byte 0
/* SPECIES_VENUSAUR        */ .byte 1
/* SPECIES_CHARMANDER      */ .byte 0
/* SPECIES_CHARMELEON      */ .byte 0
/* SPECIES_CHARIZARD       */ .byte 0
/* SPECIES_SQUIRTLE        */ .byte 0
/* SPECIES_WARTORTLE       */ .byte 0
/* SPECIES_BLASTOISE       */ .byte 0
/* SPECIES_CATERPIE        */ .byte 0
/* SPECIES_METAPOD         */ .byte 0
/* SPECIES_BUTTERFREE      */ .byte 0
/* SPECIES_WEEDLE          */ .byte 0
/* SPECIES_KAKUNA          */ .byte 0
/* SPECIES_BEEDRILL        */ .byte 0
/* SPECIES_PIDGEY          */ .byte 0
/* SPECIES_PIDGEOTTO       */ .byte 0
/* SPECIES_PIDGEOT         */ .byte 0
/* SPECIES_RATTATA         */ .byte 0
/* SPECIES_RATICATE        */ .byte 0
/* SPECIES_SPEAROW         */ .byte 0
/* SPECIES_FEAROW          */ .byte 0
/* SPECIES_EKANS           */ .byte 0
/* SPECIES_ARBOK           */ .byte 0
/* SPECIES_PIKACHU         */ .byte 1
/* SPECIES_RAICHU          */ .byte 0
/* SPECIES_SANDSHREW       */ .byte 0
/* SPECIES_SANDSLASH       */ .byte 0
/* SPECIES_NIDORAN_F       */ .byte 0
/* SPECIES_NIDORINA        */ .byte 0
/* SPECIES_NIDOQUEEN       */ .byte 0
/* SPECIES_NIDORAN_M       */ .byte 0
/* SPECIES_NIDORINO        */ .byte 0
/* SPECIES_NIDOKING        */ .byte 0
/* SPECIES_CLEFAIRY        */ .byte 0
/* SPECIES_CLEFABLE        */ .byte 0
/* SPECIES_VULPIX          */ .byte 0
/* SPECIES_NINETALES       */ .byte 0
/* SPECIES_JIGGLYPUFF      */ .byte 0
/* SPECIES_WIGGLYTUFF      */ .byte 0
/* SPECIES_ZUBAT           */ .byte 0
/* SPECIES_GOLBAT          */ .byte 0
/* SPECIES_ODDISH          */ .byte 0
/* SPECIES_GLOOM           */ .byte 0
/* SPECIES_VILEPLUME       */ .byte 0
/* SPECIES_PARAS           */ .byte 0
/* SPECIES_PARASECT        */ .byte 0
/* SPECIES_VENONAT         */ .byte 0
/* SPECIES_VENOMOTH        */ .byte 0
/* SPECIES_DIGLETT         */ .byte 0
/* SPECIES_DUGTRIO         */ .byte 0
/* SPECIES_MEOWTH          */ .byte 0
/* SPECIES_PERSIAN         */ .byte 0
/* SPECIES_PSYDUCK         */ .byte 0
/* SPECIES_GOLDUCK         */ .byte 0
/* SPECIES_MANKEY          */ .byte 0
/* SPECIES_PRIMEAPE        */ .byte 0
/* SPECIES_GROWLITHE       */ .byte 0
/* SPECIES_ARCANINE        */ .byte 0
/* SPECIES_POLIWAG         */ .byte 0
/* SPECIES_POLIWHIRL       */ .byte 0
/* SPECIES_POLIWRATH       */ .byte 0
/* SPECIES_ABRA            */ .byte 0
/* SPECIES_KADABRA         */ .byte 0
/* SPECIES_ALAKAZAM        */ .byte 0
/* SPECIES_MACHOP          */ .byte 0
/* SPECIES_MACHOKE         */ .byte 0
/* SPECIES_MACHAMP         */ .byte 0
/* SPECIES_BELLSPROUT      */ .byte 0
/* SPECIES_WEEPINBELL      */ .byte 0
/* SPECIES_VICTREEBEL      */ .byte 0
/* SPECIES_TENTACOOL       */ .byte 0
/* SPECIES_TENTACRUEL      */ .byte 0
/* SPECIES_GEODUDE         */ .byte 0
/* SPECIES_GRAVELER        */ .byte 0
/* SPECIES_GOLEM           */ .byte 0
/* SPECIES_PONYTA          */ .byte 0
/* SPECIES_RAPIDASH        */ .byte 0
/* SPECIES_SLOWPOKE        */ .byte 0
/* SPECIES_SLOWBRO         */ .byte 0
/* SPECIES_MAGNEMITE       */ .byte 0
/* SPECIES_MAGNETON        */ .byte 0
/* SPECIES_FARFETCHD       */ .byte 0
/* SPECIES_DODUO           */ .byte 0
/* SPECIES_DODRIO          */ .byte 0
/* SPECIES_SEEL            */ .byte 0
/* SPECIES_DEWGONG         */ .byte 0
/* SPECIES_GRIMER          */ .byte 0
/* SPECIES_MUK             */ .byte 0
/* SPECIES_SHELLDER        */ .byte 0
/* SPECIES_CLOYSTER        */ .byte 0
/* SPECIES_GASTLY          */ .byte 0
/* SPECIES_HAUNTER         */ .byte 0
/* SPECIES_GENGAR          */ .byte 0
/* SPECIES_ONIX            */ .byte 0
/* SPECIES_DROWZEE         */ .byte 0
/* SPECIES_HYPNO           */ .byte 0
/* SPECIES_KRABBY          */ .byte 0
/* SPECIES_KINGLER         */ .byte 0
/* SPECIES_VOLTORB         */ .byte 0
/* SPECIES_ELECTRODE       */ .byte 0
/* SPECIES_EXEGGCUTE       */ .byte 0
/* SPECIES_EXEGGUTOR       */ .byte 0
/* SPECIES_CUBONE          */ .byte 0
/* SPECIES_MAROWAK         */ .byte 0
/* SPECIES_HITMONLEE       */ .byte 0
/* SPECIES_HITMONCHAN      */ .byte 0
/* SPECIES_LICKITUNG       */ .byte 0
/* SPECIES_KOFFING         */ .byte 0
/* SPECIES_WEEZING         */ .byte 0
/* SPECIES_RHYHORN         */ .byte 0
/* SPECIES_RHYDON          */ .byte 0
/* SPECIES_CHANSEY         */ .byte 0
/* SPECIES_TANGELA         */ .byte 0
/* SPECIES_KANGASKHAN      */ .byte 0
/* SPECIES_HORSEA          */ .byte 0
/* SPECIES_SEADRA          */ .byte 0
/* SPECIES_GOLDEEN         */ .byte 0
/* SPECIES_SEAKING         */ .byte 0
/* SPECIES_STARYU          */ .byte 0
/* SPECIES_STARMIE         */ .byte 0
/* SPECIES_MR_MIME         */ .byte 0
/* SPECIES_SCYTHER         */ .byte 0
/* SPECIES_JYNX            */ .byte 0
/* SPECIES_ELECTABUZZ      */ .byte 0
/* SPECIES_MAGMAR          */ .byte 0
/* SPECIES_PINSIR          */ .byte 0
/* SPECIES_TAUROS          */ .byte 0
/* SPECIES_MAGIKARP        */ .byte 0
/* SPECIES_GYARADOS        */ .byte 0
/* SPECIES_LAPRAS          */ .byte 0
/* SPECIES_DITTO           */ .byte 0
/* SPECIES_EEVEE           */ .byte 1
/* SPECIES_VAPOREON        */ .byte 0
/* SPECIES_JOLTEON         */ .byte 0
/* SPECIES_FLAREON         */ .byte 0
/* SPECIES_PORYGON         */ .byte 0
/* SPECIES_OMANYTE         */ .byte 0
/* SPECIES_OMASTAR         */ .byte 0
/* SPECIES_KABUTO          */ .byte 0
/* SPECIES_KABUTOPS        */ .byte 0
/* SPECIES_AERODACTYL      */ .byte 0
/* SPECIES_SNORLAX         */ .byte 0
/* SPECIES_ARTICUNO        */ .byte 0
/* SPECIES_ZAPDOS          */ .byte 0
/* SPECIES_MOLTRES         */ .byte 0
/* SPECIES_DRATINI         */ .byte 0
/* SPECIES_DRAGONAIR       */ .byte 0
/* SPECIES_DRAGONITE       */ .byte 0
/* SPECIES_MEWTWO          */ .byte 0
/* SPECIES_MEW             */ .byte 0
/* SPECIES_CHIKORITA       */ .byte 0
/* SPECIES_BAYLEEF         */ .byte 0
/* SPECIES_MEGANIUM        */ .byte 1
/* SPECIES_CYNDAQUIL       */ .byte 0
/* SPECIES_QUILAVA         */ .byte 0
/* SPECIES_TYPHLOSION      */ .byte 0
/* SPECIES_TOTODILE        */ .byte 0
/* SPECIES_CROCONAW        */ .byte 0
/* SPECIES_FERALIGATR      */ .byte 0
/* SPECIES_SENTRET         */ .byte 0
/* SPECIES_FURRET          */ .byte 0
/* SPECIES_HOOTHOOT        */ .byte 0
/* SPECIES_NOCTOWL         */ .byte 0
/* SPECIES_LEDYBA          */ .byte 0
/* SPECIES_LEDIAN          */ .byte 0
/* SPECIES_SPINARAK        */ .byte 0
/* SPECIES_ARIADOS         */ .byte 0
/* SPECIES_CROBAT          */ .byte 0
/* SPECIES_CHINCHOU        */ .byte 0
/* SPECIES_LANTURN         */ .byte 0
/* SPECIES_PICHU           */ .byte 0
/* SPECIES_CLEFFA          */ .byte 0
/* SPECIES_IGGLYBUFF       */ .byte 0
/* SPECIES_TOGEPI          */ .byte 0
/* SPECIES_TOGETIC         */ .byte 0
/* SPECIES_NATU            */ .byte 0
/* SPECIES_XATU            */ .byte 0
/* SPECIES_MAREEP          */ .byte 0
/* SPECIES_FLAAFFY         */ .byte 0
/* SPECIES_AMPHAROS        */ .byte 0
/* SPECIES_BELLOSSOM       */ .byte 0
/* SPECIES_MARILL          */ .byte 0
/* SPECIES_AZUMARILL       */ .byte 0
/* SPECIES_SUDOWOODO       */ .byte 0
/* SPECIES_POLITOED        */ .byte 0
/* SPECIES_HOPPIP          */ .byte 0
/* SPECIES_SKIPLOOM        */ .byte 0
/* SPECIES_JUMPLUFF        */ .byte 0
/* SPECIES_AIPOM           */ .byte 0
/* SPECIES_SUNKERN         */ .byte 0
/* SPECIES_SUNFLORA        */ .byte 0
/* SPECIES_YANMA           */ .byte 0
/* SPECIES_WOOPER          */ .byte 0
/* SPECIES_QUAGSIRE        */ .byte 0
/* SPECIES_ESPEON          */ .byte 0
/* SPECIES_UMBREON         */ .byte 0
/* SPECIES_MURKROW         */ .byte 0
/* SPECIES_SLOWKING        */ .byte 0
/* SPECIES_MISDREAVUS      */ .byte 0
/* SPECIES_UNOWN           */ .byte 0
/* SPECIES_WOBBUFFET       */ .byte 1
/* SPECIES_GIRAFARIG       */ .byte 0
/* SPECIES_PINECO          */ .byte 0
/* SPECIES_FORRETRESS      */ .byte 0
/* SPECIES_DUNSPARCE       */ .byte 0
/* SPECIES_GLIGAR          */ .byte 0
/* SPECIES_STEELIX         */ .byte 1
/* SPECIES_SNUBBULL        */ .byte 0
/* SPECIES_GRANBULL        */ .byte 0
/* SPECIES_QWILFISH        */ .byte 0
/* SPECIES_SCIZOR          */ .byte 0
/* SPECIES_SHUCKLE         */ .byte 0
/* SPECIES_HERACROSS       */ .byte 1
/* SPECIES_SNEASEL         */ .byte 0
/* SPECIES_TEDDIURSA       */ .byte 0
/* SPECIES_URSARING        */ .byte 0
/* SPECIES_SLUGMA          */ .byte 0
/* SPECIES_MAGCARGO        */ .byte 0
/* SPECIES_SWINUB          */ .byte 0
/* SPECIES_PILOSWINE       */ .byte 0
/* SPECIES_CORSOLA         */ .byte 0
/* SPECIES_REMORAID        */ .byte 0
/* SPECIES_OCTILLERY       */ .byte 0
/* SPECIES_DELIBIRD        */ .byte 0
/* SPECIES_MANTINE         */ .byte 0
/* SPECIES_SKARMORY        */ .byte 0
/* SPECIES_HOUNDOUR        */ .byte 0
/* SPECIES_HOUNDOOM        */ .byte 0
/* SPECIES_KINGDRA         */ .byte 0
/* SPECIES_PHANPY          */ .byte 0
/* SPECIES_DONPHAN         */ .byte 0
/* SPECIES_PORYGON2        */ .byte 0
/* SPECIES_STANTLER        */ .byte 0
/* SPECIES_SMEARGLE        */ .byte 0
/* SPECIES_TYROGUE         */ .byte 0
/* SPECIES_HITMONTOP       */ .byte 0
/* SPECIES_SMOOCHUM        */ .byte 0
/* SPECIES_ELEKID          */ .byte 0
/* SPECIES_MAGBY           */ .byte 0
/* SPECIES_MILTANK         */ .byte 0
/* SPECIES_BLISSEY         */ .byte 0
/* SPECIES_RAIKOU          */ .byte 0
/* SPECIES_ENTEI           */ .byte 0
/* SPECIES_SUICUNE         */ .byte 0
/* SPECIES_LARVITAR        */ .byte 0
/* SPECIES_PUPITAR         */ .byte 0
/* SPECIES_TYRANITAR       */ .byte 0
/* SPECIES_LUGIA           */ .byte 0
/* SPECIES_HO_OH           */ .byte 0
/* SPECIES_CELEBI          */ .byte 0
/* SPECIES_TREECKO         */ .byte 0
/* SPECIES_GROVYLE         */ .byte 0
/* SPECIES_SCEPTILE        */ .byte 0
/* SPECIES_TORCHIC         */ .byte 0
/* SPECIES_COMBUSKEN       */ .byte 0
/* SPECIES_BLAZIKEN        */ .byte 0
/* SPECIES_MUDKIP          */ .byte 0
/* SPECIES_MARSHTOMP       */ .byte 0
/* SPECIES_SWAMPERT        */ .byte 0
/* SPECIES_POOCHYENA       */ .byte 0
/* SPECIES_MIGHTYENA       */ .byte 0
/* SPECIES_ZIGZAGOON       */ .byte 0
/* SPECIES_LINOONE         */ .byte 0
/* SPECIES_WURMPLE         */ .byte 0
/* SPECIES_SILCOON         */ .byte 0
/* SPECIES_BEAUTIFLY       */ .byte 0
/* SPECIES_CASCOON         */ .byte 0
/* SPECIES_DUSTOX          */ .byte 0
/* SPECIES_LOTAD           */ .byte 0
/* SPECIES_LOMBRE          */ .byte 0
/* SPECIES_LUDICOLO        */ .byte 0
/* SPECIES_SEEDOT          */ .byte 0
/* SPECIES_NUZLEAF         */ .byte 0
/* SPECIES_SHIFTRY         */ .byte 0
/* SPECIES_TAILLOW         */ .byte 0
/* SPECIES_SWELLOW         */ .byte 0
/* SPECIES_WINGULL         */ .byte 0
/* SPECIES_PELIPPER        */ .byte 0
/* SPECIES_RALTS           */ .byte 0
/* SPECIES_KIRLIA          */ .byte 0
/* SPECIES_GARDEVOIR       */ .byte 0
/* SPECIES_SURSKIT         */ .byte 0
/* SPECIES_MASQUERAIN      */ .byte 0
/* SPECIES_SHROOMISH       */ .byte 0
/* SPECIES_BRELOOM         */ .byte 0
/* SPECIES_SLAKOTH         */ .byte 0
/* SPECIES_VIGOROTH        */ .byte 0
/* SPECIES_SLAKING         */ .byte 0
/* SPECIES_NINCADA         */ .byte 0
/* SPECIES_NINJASK         */ .byte 0
/* SPECIES_SHEDINJA        */ .byte 0
/* SPECIES_WHISMUR         */ .byte 0
/* SPECIES_LOUDRED         */ .byte 0
/* SPECIES_EXPLOUD         */ .byte 0
/* SPECIES_MAKUHITA        */ .byte 0
/* SPECIES_HARIYAMA        */ .byte 0
/* SPECIES_AZURILL         */ .byte 0
/* SPECIES_NOSEPASS        */ .byte 0
/* SPECIES_SKITTY          */ .byte 0
/* SPECIES_DELCATTY        */ .byte 0
/* SPECIES_SABLEYE         */ .byte 0
/* SPECIES_MAWILE          */ .byte 0
/* SPECIES_ARON            */ .byte 0
/* SPECIES_LAIRON          */ .byte 0
/* SPECIES_AGGRON          */ .byte 0
/* SPECIES_MEDITITE        */ .byte 0
/* SPECIES_MEDICHAM        */ .byte 0
/* SPECIES_ELECTRIKE       */ .byte 0
/* SPECIES_MANECTRIC       */ .byte 0
/* SPECIES_PLUSLE          */ .byte 0
/* SPECIES_MINUN           */ .byte 0
/* SPECIES_VOLBEAT         */ .byte 0
/* SPECIES_ILLUMISE        */ .byte 0
/* SPECIES_ROSELIA         */ .byte 0
/* SPECIES_GULPIN          */ .byte 0
/* SPECIES_SWALOT          */ .byte 0
/* SPECIES_CARVANHA        */ .byte 0
/* SPECIES_SHARPEDO        */ .byte 0
/* SPECIES_WAILMER         */ .byte 0
/* SPECIES_WAILORD         */ .byte 0
/* SPECIES_NUMEL           */ .byte 0
/* SPECIES_CAMERUPT        */ .byte 0
/* SPECIES_TORKOAL         */ .byte 0
/* SPECIES_SPOINK          */ .byte 0
/* SPECIES_GRUMPIG         */ .byte 0
/* SPECIES_SPINDA          */ .byte 0
/* SPECIES_TRAPINCH        */ .byte 0
/* SPECIES_VIBRAVA         */ .byte 0
/* SPECIES_FLYGON          */ .byte 0
/* SPECIES_CACNEA          */ .byte 0
/* SPECIES_CACTURNE        */ .byte 0
/* SPECIES_SWABLU          */ .byte 0
/* SPECIES_ALTARIA         */ .byte 0
/* SPECIES_ZANGOOSE        */ .byte 0
/* SPECIES_SEVIPER         */ .byte 0
/* SPECIES_LUNATONE        */ .byte 0
/* SPECIES_SOLROCK         */ .byte 0
/* SPECIES_BARBOACH        */ .byte 0
/* SPECIES_WHISCASH        */ .byte 0
/* SPECIES_CORPHISH        */ .byte 0
/* SPECIES_CRAWDAUNT       */ .byte 0
/* SPECIES_BALTOY          */ .byte 0
/* SPECIES_CLAYDOL         */ .byte 0
/* SPECIES_LILEEP          */ .byte 0
/* SPECIES_CRADILY         */ .byte 0
/* SPECIES_ANORITH         */ .byte 0
/* SPECIES_ARMALDO         */ .byte 0
/* SPECIES_FEEBAS          */ .byte 0
/* SPECIES_MILOTIC         */ .byte 0
/* SPECIES_CASTFORM        */ .byte 0
/* SPECIES_KECLEON         */ .byte 0
/* SPECIES_SHUPPET         */ .byte 0
/* SPECIES_BANETTE         */ .byte 0
/* SPECIES_DUSKULL         */ .byte 0
/* SPECIES_DUSCLOPS        */ .byte 0
/* SPECIES_TROPIUS         */ .byte 0
/* SPECIES_CHIMECHO        */ .byte 0
/* SPECIES_ABSOL           */ .byte 0
/* SPECIES_WYNAUT          */ .byte 0
/* SPECIES_SNORUNT         */ .byte 0
/* SPECIES_GLALIE          */ .byte 0
/* SPECIES_SPHEAL          */ .byte 0
/* SPECIES_SEALEO          */ .byte 0
/* SPECIES_WALREIN         */ .byte 0
/* SPECIES_CLAMPERL        */ .byte 0
/* SPECIES_HUNTAIL         */ .byte 0
/* SPECIES_GOREBYSS        */ .byte 0
/* SPECIES_RELICANTH       */ .byte 0
/* SPECIES_LUVDISC         */ .byte 0
/* SPECIES_BAGON           */ .byte 0
/* SPECIES_SHELGON         */ .byte 0
/* SPECIES_SALAMENCE       */ .byte 0
/* SPECIES_BELDUM          */ .byte 0
/* SPECIES_METANG          */ .byte 0
/* SPECIES_METAGROSS       */ .byte 0
/* SPECIES_REGIROCK        */ .byte 0
/* SPECIES_REGICE          */ .byte 0
/* SPECIES_REGISTEEL       */ .byte 0
/* SPECIES_LATIAS          */ .byte 0
/* SPECIES_LATIOS          */ .byte 0
/* SPECIES_KYOGRE          */ .byte 0
/* SPECIES_GROUDON         */ .byte 0
/* SPECIES_RAYQUAZA        */ .byte 0
/* SPECIES_JIRACHI         */ .byte 0
/* SPECIES_DEOXYS          */ .byte 0
/* SPECIES_TURTWIG         */ .byte 0
/* SPECIES_GROTLE          */ .byte 0
/* SPECIES_TORTERRA        */ .byte 0
/* SPECIES_CHIMCHAR        */ .byte 0
/* SPECIES_MONFERNO        */ .byte 0
/* SPECIES_INFERNAPE       */ .byte 0
/* SPECIES_PIPLUP          */ .byte 0
/* SPECIES_PRINPLUP        */ .byte 0
/* SPECIES_EMPOLEON        */ .byte 0
/* SPECIES_STARLY          */ .byte 0
/* SPECIES_STARAVIA        */ .byte 0
/* SPECIES_STARAPTOR       */ .byte 0
/* SPECIES_BIDOOF          */ .byte 0
/* SPECIES_BIBAREL         */ .byte 0
/* SPECIES_KRICKETOT       */ .byte 0
/* SPECIES_KRICKETUNE      */ .byte 0
/* SPECIES_SHINX           */ .byte 0
/* SPECIES_LUXIO           */ .byte 0
/* SPECIES_LUXRAY          */ .byte 0
/* SPECIES_BUDEW           */ .byte 0
/* SPECIES_ROSERADE        */ .byte 0
/* SPECIES_CRANIDOS        */ .byte 0
/* SPECIES_RAMPARDOS       */ .byte 0
/* SPECIES_SHIELDON        */ .byte 0
/* SPECIES_BASTIODON       */ .byte 0
/* SPECIES_BURMY           */ .byte 0
/* SPECIES_WORMADAM        */ .byte 0
/* SPECIES_MOTHIM          */ .byte 0
/* SPECIES_COMBEE          */ .byte 1
/* SPECIES_VESPIQUEN       */ .byte 0
/* SPECIES_PACHIRISU       */ .byte 0
/* SPECIES_BUIZEL          */ .byte 0
/* SPECIES_FLOATZEL        */ .byte 0
/* SPECIES_CHERUBI         */ .byte 0
/* SPECIES_CHERRIM         */ .byte 0
/* SPECIES_SHELLOS         */ .byte 0
/* SPECIES_GASTRODON       */ .byte 0
/* SPECIES_AMBIPOM         */ .byte 0
/* SPECIES_DRIFLOON        */ .byte 0
/* SPECIES_DRIFBLIM        */ .byte 0
/* SPECIES_BUNEARY         */ .byte 0
/* SPECIES_LOPUNNY         */ .byte 0
/* SPECIES_MISMAGIUS       */ .byte 0
/* SPECIES_HONCHKROW       */ .byte 0
/* SPECIES_GLAMEOW         */ .byte 0
/* SPECIES_PURUGLY         */ .byte 0
/* SPECIES_CHINGLING       */ .byte 0
/* SPECIES_STUNKY          */ .byte 0
/* SPECIES_SKUNTANK        */ .byte 0
/* SPECIES_BRONZOR         */ .byte 0
/* SPECIES_BRONZONG        */ .byte 0
/* SPECIES_BONSLY          */ .byte 0
/* SPECIES_MIME_JR          */ .byte 0
/* SPECIES_HAPPINY         */ .byte 0
/* SPECIES_CHATOT          */ .byte 0
/* SPECIES_SPIRITOMB       */ .byte 0
/* SPECIES_GIBLE           */ .byte 0
/* SPECIES_GABITE          */ .byte 0
/* SPECIES_GARCHOMP        */ .byte 0
/* SPECIES_MUNCHLAX        */ .byte 0
/* SPECIES_RIOLU           */ .byte 0
/* SPECIES_LUCARIO         */ .byte 0
/* SPECIES_HIPPOPOTAS      */ .byte 1
/* SPECIES_HIPPOWDON       */ .byte 1
/* SPECIES_SKORUPI         */ .byte 0
/* SPECIES_DRAPION         */ .byte 0
/* SPECIES_CROAGUNK        */ .byte 0
/* SPECIES_TOXICROAK       */ .byte 0
/* SPECIES_CARNIVINE       */ .byte 0
/* SPECIES_FINNEON         */ .byte 0
/* SPECIES_LUMINEON        */ .byte 0
/* SPECIES_MANTYKE         */ .byte 0
/* SPECIES_SNOVER          */ .byte 0
/* SPECIES_ABOMASNOW       */ .byte 0
/* SPECIES_WEAVILE         */ .byte 0
/* SPECIES_MAGNEZONE       */ .byte 0
/* SPECIES_LICKILICKY      */ .byte 0
/* SPECIES_RHYPERIOR       */ .byte 0
/* SPECIES_TANGROWTH       */ .byte 0
/* SPECIES_ELECTIVIRE      */ .byte 0
/* SPECIES_MAGMORTAR       */ .byte 0
/* SPECIES_TOGEKISS        */ .byte 0
/* SPECIES_YANMEGA         */ .byte 0
/* SPECIES_LEAFEON         */ .byte 0
/* SPECIES_GLACEON         */ .byte 0
/* SPECIES_GLISCOR         */ .byte 0
/* SPECIES_MAMOSWINE       */ .byte 0
/* SPECIES_PORYGON_Z       */ .byte 0
/* SPECIES_GALLADE         */ .byte 0
/* SPECIES_PROBOPASS       */ .byte 0
/* SPECIES_DUSKNOIR        */ .byte 0
/* SPECIES_FROSLASS        */ .byte 0
/* SPECIES_ROTOM           */ .byte 0
/* SPECIES_UXIE            */ .byte 0
/* SPECIES_MESPRIT         */ .byte 0
/* SPECIES_AZELF           */ .byte 0
/* SPECIES_DIALGA          */ .byte 0
/* SPECIES_PALKIA          */ .byte 0
/* SPECIES_HEATRAN         */ .byte 0
/* SPECIES_REGIGIGAS       */ .byte 0
/* SPECIES_GIRATINA        */ .byte 0
/* SPECIES_CRESSELIA       */ .byte 0
/* SPECIES_PHIONE          */ .byte 0
/* SPECIES_MANAPHY         */ .byte 0
/* SPECIES_DARKRAI         */ .byte 0
/* SPECIES_SHAYMIN         */ .byte 0
/* SPECIES_ARCEUS          */ .byte 0
/* SPECIES_EGG             */ .byte 0
/* SPECIES_BAD_EGG         */ .byte 0
/* SPECIES_496   */ .byte 0
/* SPECIES_497  */ .byte 0
/* SPECIES_498    */ .byte 0
/* SPECIES_499  */ .byte 0
/* SPECIES_500 */ .byte 0
/* SPECIES_501 */ .byte 0
/* SPECIES_502     */ .byte 0
/* SPECIES_503      */ .byte 0
/* SPECIES_504      */ .byte 0
/* SPECIES_505     */ .byte 0
/* SPECIES_506       */ .byte 0
/* SPECIES_507       */ .byte 0
/* SPECIES_508             */ .byte 0
/* SPECIES_509             */ .byte 0
/* SPECIES_510             */ .byte 0
/* SPECIES_511             */ .byte 0
/* SPECIES_512             */ .byte 0
/* SPECIES_513             */ .byte 0
/* SPECIES_514             */ .byte 0
/* SPECIES_515             */ .byte 0
/* SPECIES_516             */ .byte 0
/* SPECIES_517             */ .byte 0
/* SPECIES_518             */ .byte 0
/* SPECIES_519             */ .byte 0
/* SPECIES_520             */ .byte 0
/* SPECIES_521             */ .byte 0
/* SPECIES_522             */ .byte 0
/* SPECIES_523             */ .byte 0
/* SPECIES_524             */ .byte 0
/* SPECIES_525             */ .byte 0
/* SPECIES_526             */ .byte 0
/* SPECIES_527             */ .byte 0
/* SPECIES_528             */ .byte 0
/* SPECIES_529             */ .byte 0
/* SPECIES_530             */ .byte 0
/* SPECIES_531             */ .byte 0
/* SPECIES_532             */ .byte 0
/* SPECIES_533             */ .byte 0
/* SPECIES_534             */ .byte 0
/* SPECIES_535             */ .byte 0
/* SPECIES_536             */ .byte 0
/* SPECIES_537             */ .byte 0
/* SPECIES_538             */ .byte 0
/* SPECIES_539             */ .byte 0
/* SPECIES_540             */ .byte 0
/* SPECIES_541             */ .byte 0
/* SPECIES_542             */ .byte 0
/* SPECIES_543             */ .byte 0
/* SPECIES_VICTINI         */ .byte 0
/* SPECIES_SNIVY           */ .byte 0
/* SPECIES_SERVINE         */ .byte 0
/* SPECIES_SERPERIOR       */ .byte 0
/* SPECIES_TEPIG           */ .byte 0
/* SPECIES_PIGNITE         */ .byte 0
/* SPECIES_EMBOAR          */ .byte 0
/* SPECIES_OSHAWOTT        */ .byte 0
/* SPECIES_DEWOTT          */ .byte 0
/* SPECIES_SAMUROTT        */ .byte 0
/* SPECIES_PATRAT          */ .byte 0
/* SPECIES_WATCHOG         */ .byte 0
/* SPECIES_LILLIPUP        */ .byte 0
/* SPECIES_HERDIER         */ .byte 0
/* SPECIES_STOUTLAND       */ .byte 0
/* SPECIES_PURRLOIN        */ .byte 0
/* SPECIES_LIEPARD         */ .byte 0
/* SPECIES_PANSAGE         */ .byte 0
/* SPECIES_SIMISAGE        */ .byte 0
/* SPECIES_PANSEAR         */ .byte 0
/* SPECIES_SIMISEAR        */ .byte 0
/* SPECIES_PANPOUR         */ .byte 0
/* SPECIES_SIMIPOUR        */ .byte 0
/* SPECIES_MUNNA           */ .byte 0
/* SPECIES_MUSHARNA        */ .byte 0
/* SPECIES_PIDOVE          */ .byte 0
/* SPECIES_TRANQUILL       */ .byte 0
/* SPECIES_UNFEZANT        */ .byte 1
/* SPECIES_BLITZLE         */ .byte 0
/* SPECIES_ZEBSTRIKA       */ .byte 0
/* SPECIES_ROGGENROLA      */ .byte 0
/* SPECIES_BOLDORE         */ .byte 0
/* SPECIES_GIGALITH        */ .byte 0
/* SPECIES_WOOBAT          */ .byte 0
/* SPECIES_SWOOBAT         */ .byte 0
/* SPECIES_DRILBUR         */ .byte 0
/* SPECIES_EXCADRILL       */ .byte 0
/* SPECIES_AUDINO          */ .byte 0
/* SPECIES_TIMBURR         */ .byte 0
/* SPECIES_GURDURR         */ .byte 0
/* SPECIES_CONKELDURR      */ .byte 0
/* SPECIES_TYMPOLE         */ .byte 0
/* SPECIES_PALPITOAD       */ .byte 0
/* SPECIES_SEISMITOAD      */ .byte 0
/* SPECIES_THROH           */ .byte 0
/* SPECIES_SAWK            */ .byte 0
/* SPECIES_SEWADDLE        */ .byte 0
/* SPECIES_SWADLOON        */ .byte 0
/* SPECIES_LEAVANNY        */ .byte 0
/* SPECIES_VENIPEDE        */ .byte 0
/* SPECIES_WHIRLIPEDE      */ .byte 0
/* SPECIES_SCOLIPEDE       */ .byte 0
/* SPECIES_COTTONEE        */ .byte 0
/* SPECIES_WHIMSICOTT      */ .byte 0
/* SPECIES_PETILIL         */ .byte 0
/* SPECIES_LILLIGANT       */ .byte 0
/* SPECIES_BASCULIN        */ .byte 0
/* SPECIES_SANDILE         */ .byte 0
/* SPECIES_KROKOROK        */ .byte 0
/* SPECIES_KROOKODILE      */ .byte 0
/* SPECIES_DARUMAKA        */ .byte 0
/* SPECIES_DARMANITAN      */ .byte 0
/* SPECIES_MARACTUS        */ .byte 0
/* SPECIES_DWEBBLE         */ .byte 0
/* SPECIES_CRUSTLE         */ .byte 0
/* SPECIES_SCRAGGY         */ .byte 0
/* SPECIES_SCRAFTY         */ .byte 0
/* SPECIES_SIGILYPH        */ .byte 0
/* SPECIES_YAMASK          */ .byte 0
/* SPECIES_COFAGRIGUS      */ .byte 0
/* SPECIES_TIRTOUGA        */ .byte 0
/* SPECIES_CARRACOSTA      */ .byte 0
/* SPECIES_ARCHEN          */ .byte 0
/* SPECIES_ARCHEOPS        */ .byte 0
/* SPECIES_TRUBBISH        */ .byte 0
/* SPECIES_GARBODOR        */ .byte 0
/* SPECIES_ZORUA           */ .byte 0
/* SPECIES_ZOROARK         */ .byte 0
/* SPECIES_MINCCINO        */ .byte 0
/* SPECIES_CINCCINO        */ .byte 0
/* SPECIES_GOTHITA         */ .byte 0
/* SPECIES_GOTHORITA       */ .byte 0
/* SPECIES_GOTHITELLE      */ .byte 0
/* SPECIES_SOLOSIS         */ .byte 0
/* SPECIES_DUOSION         */ .byte 0
/* SPECIES_REUNICLUS       */ .byte 0
/* SPECIES_DUCKLETT        */ .byte 0
/* SPECIES_SWANNA          */ .byte 0
/* SPECIES_VANILLITE       */ .byte 0
/* SPECIES_VANILLISH       */ .byte 0
/* SPECIES_VANILLUXE       */ .byte 0
/* SPECIES_DEERLING        */ .byte 0
/* SPECIES_SAWSBUCK        */ .byte 0
/* SPECIES_EMOLGA          */ .byte 0
/* SPECIES_KARRABLAST      */ .byte 0
/* SPECIES_ESCAVALIER      */ .byte 0
/* SPECIES_FOONGUS         */ .byte 0
/* SPECIES_AMOONGUSS       */ .byte 0
/* SPECIES_FRILLISH        */ .byte 1
/* SPECIES_JELLICENT       */ .byte 1
/* SPECIES_ALOMOMOLA       */ .byte 0
/* SPECIES_JOLTIK          */ .byte 0
/* SPECIES_GALVANTULA      */ .byte 0
/* SPECIES_FERROSEED       */ .byte 0
/* SPECIES_FERROTHORN      */ .byte 0
/* SPECIES_KLINK           */ .byte 0
/* SPECIES_KLANG           */ .byte 0
/* SPECIES_KLINKLANG       */ .byte 0
/* SPECIES_TYNAMO          */ .byte 0
/* SPECIES_EELEKTRIK       */ .byte 0
/* SPECIES_EELEKTROSS      */ .byte 0
/* SPECIES_ELGYEM          */ .byte 0
/* SPECIES_BEHEEYEM        */ .byte 0
/* SPECIES_LITWICK         */ .byte 0
/* SPECIES_LAMPENT         */ .byte 0
/* SPECIES_CHANDELURE      */ .byte 0
/* SPECIES_AXEW            */ .byte 0
/* SPECIES_FRAXURE         */ .byte 0
/* SPECIES_HAXORUS         */ .byte 0
/* SPECIES_CUBCHOO         */ .byte 0
/* SPECIES_BEARTIC         */ .byte 0
/* SPECIES_CRYOGONAL       */ .byte 0
/* SPECIES_SHELMET         */ .byte 0
/* SPECIES_ACCELGOR        */ .byte 0
/* SPECIES_STUNFISK        */ .byte 0
/* SPECIES_MIENFOO         */ .byte 0
/* SPECIES_MIENSHAO        */ .byte 0
/* SPECIES_DRUDDIGON       */ .byte 0
/* SPECIES_GOLETT          */ .byte 0
/* SPECIES_GOLURK          */ .byte 0
/* SPECIES_PAWNIARD        */ .byte 0
/* SPECIES_BISHARP         */ .byte 0
/* SPECIES_BOUFFALANT      */ .byte 0
/* SPECIES_RUFFLET         */ .byte 0
/* SPECIES_BRAVIARY        */ .byte 0
/* SPECIES_VULLABY         */ .byte 0
/* SPECIES_MANDIBUZZ       */ .byte 0
/* SPECIES_HEATMOR         */ .byte 0
/* SPECIES_DURANT          */ .byte 0
/* SPECIES_DEINO           */ .byte 0
/* SPECIES_ZWEILOUS        */ .byte 0
/* SPECIES_HYDREIGON       */ .byte 0
/* SPECIES_LARVESTA        */ .byte 0
/* SPECIES_VOLCARONA       */ .byte 0
/* SPECIES_COBALION        */ .byte 0
/* SPECIES_TERRAKION       */ .byte 0
/* SPECIES_VIRIZION        */ .byte 0
/* SPECIES_TORNADUS        */ .byte 0
/* SPECIES_THUNDURUS       */ .byte 0
/* SPECIES_RESHIRAM        */ .byte 0
/* SPECIES_ZEKROM          */ .byte 0
/* SPECIES_LANDORUS        */ .byte 0
/* SPECIES_KYUREM          */ .byte 0
/* SPECIES_KELDEO          */ .byte 0
/* SPECIES_MELOETTA        */ .byte 0
/* SPECIES_GENESECT        */ .byte 0
/* SPECIES_CHESPIN         */ .byte 0
/* SPECIES_QUILLADIN       */ .byte 0
/* SPECIES_CHESNAUGHT      */ .byte 0
/* SPECIES_FENNEKIN        */ .byte 0
/* SPECIES_BRAIXEN         */ .byte 0
/* SPECIES_DELPHOX         */ .byte 0
/* SPECIES_FROAKIE         */ .byte 0
/* SPECIES_FROGADIER       */ .byte 0
/* SPECIES_GRENINJA        */ .byte 0
/* SPECIES_BUNNELBY        */ .byte 0
/* SPECIES_DIGGERSBY       */ .byte 0
/* SPECIES_FLETCHLING      */ .byte 0
/* SPECIES_FLETCHINDER     */ .byte 0
/* SPECIES_TALONFLAME      */ .byte 0
/* SPECIES_SCATTERBUG      */ .byte 0
/* SPECIES_SPEWPA          */ .byte 0
/* SPECIES_VIVILLON        */ .byte 0
/* SPECIES_LITLEO          */ .byte 0
/* SPECIES_PYROAR          */ .byte 1
/* SPECIES_FLABEBE         */ .byte 0
/* SPECIES_FLOETTE         */ .byte 0
/* SPECIES_FLORGES         */ .byte 0
/* SPECIES_SKIDDO          */ .byte 0
/* SPECIES_GOGOAT          */ .byte 0
/* SPECIES_PANCHAM         */ .byte 0
/* SPECIES_PANGORO         */ .byte 0
/* SPECIES_FURFROU         */ .byte 0
/* SPECIES_ESPURR          */ .byte 0
/* SPECIES_MEOWSTIC        */ .byte 1
/* SPECIES_HONEDGE         */ .byte 0
/* SPECIES_DOUBLADE        */ .byte 0
/* SPECIES_AEGISLASH       */ .byte 0
/* SPECIES_SPRITZEE        */ .byte 0
/* SPECIES_AROMATISSE      */ .byte 0
/* SPECIES_SWIRLIX         */ .byte 0
/* SPECIES_SLURPUFF        */ .byte 0
/* SPECIES_INKAY           */ .byte 0
/* SPECIES_MALAMAR         */ .byte 0
/* SPECIES_BINACLE         */ .byte 0
/* SPECIES_BARBARACLE      */ .byte 0
/* SPECIES_SKRELP          */ .byte 0
/* SPECIES_DRAGALGE        */ .byte 0
/* SPECIES_CLAUNCHER       */ .byte 0
/* SPECIES_CLAWITZER       */ .byte 0
/* SPECIES_HELIOPTILE      */ .byte 0
/* SPECIES_HELIOLISK       */ .byte 0
/* SPECIES_TYRUNT          */ .byte 0
/* SPECIES_TYRANTRUM       */ .byte 0
/* SPECIES_AMAURA          */ .byte 0
/* SPECIES_AURORUS         */ .byte 0
/* SPECIES_SYLVEON         */ .byte 0
/* SPECIES_HAWLUCHA        */ .byte 0
/* SPECIES_DEDENNE         */ .byte 0
/* SPECIES_CARBINK         */ .byte 0
/* SPECIES_GOOMY           */ .byte 0
/* SPECIES_SLIGGOO         */ .byte 0
/* SPECIES_GOODRA          */ .byte 0
/* SPECIES_KLEFKI          */ .byte 0
/* SPECIES_PHANTUMP        */ .byte 0
/* SPECIES_TREVENANT       */ .byte 0
/* SPECIES_PUMPKABOO       */ .byte 0
/* SPECIES_GOURGEIST       */ .byte 0
/* SPECIES_BERGMITE        */ .byte 0
/* SPECIES_AVALUGG         */ .byte 0
/* SPECIES_NOIBAT          */ .byte 0
/* SPECIES_NOIVERN         */ .byte 0
/* SPECIES_XERNEAS         */ .byte 0
/* SPECIES_YVELTAL         */ .byte 0
/* SPECIES_ZYGARDE         */ .byte 0
/* SPECIES_DIANCIE         */ .byte 0
/* SPECIES_HOOPA           */ .byte 0
/* SPECIES_VOLCANION       */ .byte 0
/* SPECIES_ROWLET          */ .byte 0
/* SPECIES_DARTRIX         */ .byte 0
/* SPECIES_DECIDUEYE       */ .byte 0
/* SPECIES_LITTEN          */ .byte 0
/* SPECIES_TORRACAT        */ .byte 0
/* SPECIES_INCINEROAR      */ .byte 0
/* SPECIES_POPPLIO         */ .byte 0
/* SPECIES_BRIONNE         */ .byte 0
/* SPECIES_PRIMARINA       */ .byte 0
/* SPECIES_PIKIPEK         */ .byte 0
/* SPECIES_TRUMBEAK        */ .byte 0
/* SPECIES_TOUCANNON       */ .byte 0
/* SPECIES_YUNGOOS         */ .byte 0
/* SPECIES_GUMSHOOS        */ .byte 0
/* SPECIES_GRUBBIN         */ .byte 0
/* SPECIES_CHARJABUG       */ .byte 0
/* SPECIES_VIKAVOLT        */ .byte 0
/* SPECIES_CRABRAWLER      */ .byte 0
/* SPECIES_CRABOMINABLE    */ .byte 0
/* SPECIES_ORICORIO        */ .byte 0
/* SPECIES_CUTIEFLY        */ .byte 0
/* SPECIES_RIBOMBEE        */ .byte 0
/* SPECIES_ROCKRUFF        */ .byte 0
/* SPECIES_LYCANROC        */ .byte 0
/* SPECIES_WISHIWASHI      */ .byte 0
/* SPECIES_MAREANIE        */ .byte 0
/* SPECIES_TOXAPEX         */ .byte 0
/* SPECIES_MUDBRAY         */ .byte 0
/* SPECIES_MUDSDALE        */ .byte 0
/* SPECIES_DEWPIDER        */ .byte 0
/* SPECIES_ARAQUANID       */ .byte 0
/* SPECIES_FOMANTIS        */ .byte 0
/* SPECIES_LURANTIS        */ .byte 0
/* SPECIES_MORELULL        */ .byte 0
/* SPECIES_SHIINOTIC       */ .byte 0
/* SPECIES_SALANDIT        */ .byte 0
/* SPECIES_SALAZZLE        */ .byte 0
/* SPECIES_STUFFUL         */ .byte 0
/* SPECIES_BEWEAR          */ .byte 0
/* SPECIES_BOUNSWEET       */ .byte 0
/* SPECIES_STEENEE         */ .byte 0
/* SPECIES_TSAREENA        */ .byte 0
/* SPECIES_COMFEY          */ .byte 0
/* SPECIES_ORANGURU        */ .byte 0
/* SPECIES_PASSIMIAN       */ .byte 0
/* SPECIES_WIMPOD          */ .byte 0
/* SPECIES_GOLISOPOD       */ .byte 0
/* SPECIES_SANDYGAST       */ .byte 0
/* SPECIES_PALOSSAND       */ .byte 0
/* SPECIES_PYUKUMUKU       */ .byte 0
/* SPECIES_TYPE_NULL       */ .byte 0
/* SPECIES_SILVALLY        */ .byte 0
/* SPECIES_MINIOR          */ .byte 0
/* SPECIES_KOMALA          */ .byte 0
/* SPECIES_TURTONATOR      */ .byte 0
/* SPECIES_TOGEDEMARU      */ .byte 0
/* SPECIES_MIMIKYU         */ .byte 0
/* SPECIES_BRUXISH         */ .byte 0
/* SPECIES_DRAMPA          */ .byte 0
/* SPECIES_DHELMISE        */ .byte 0
/* SPECIES_JANGMO_O        */ .byte 0
/* SPECIES_HAKAMO_O        */ .byte 0
/* SPECIES_KOMMO_O         */ .byte 0
/* SPECIES_TAPU_KOKO       */ .byte 0
/* SPECIES_TAPU_LELE       */ .byte 0
/* SPECIES_TAPU_BULU       */ .byte 0
/* SPECIES_TAPU_FINI       */ .byte 0
/* SPECIES_COSMOG          */ .byte 0
/* SPECIES_COSMOEM         */ .byte 0
/* SPECIES_SOLGALEO        */ .byte 0
/* SPECIES_LUNALA          */ .byte 0
/* SPECIES_NIHILEGO        */ .byte 0
/* SPECIES_BUZZWOLE        */ .byte 0
/* SPECIES_PHEROMOSA       */ .byte 0
/* SPECIES_XURKITREE       */ .byte 0
/* SPECIES_CELESTEELA      */ .byte 0
/* SPECIES_KARTANA         */ .byte 0
/* SPECIES_GUZZLORD        */ .byte 0
/* SPECIES_NECROZMA        */ .byte 0
/* SPECIES_MAGEARNA        */ .byte 0
/* SPECIES_MARSHADOW       */ .byte 0
/* SPECIES_POIPOLE         */ .byte 0
/* SPECIES_NAGANADEL       */ .byte 0
/* SPECIES_STAKATAKA       */ .byte 0
/* SPECIES_BLACEPHALON     */ .byte 0
/* SPECIES_ZERAORA         */ .byte 0
/* SPECIES_MELTAN          */ .byte 0
/* SPECIES_MELMETAL        */ .byte 0
/* SPECIES_GROOKEY         */ .byte 0
/* SPECIES_THWACKEY        */ .byte 0
/* SPECIES_RILLABOOM       */ .byte 0
/* SPECIES_SCORBUNNY       */ .byte 0
/* SPECIES_RABOOT          */ .byte 0
/* SPECIES_CINDERACE       */ .byte 0
/* SPECIES_SOBBLE          */ .byte 0
/* SPECIES_DRIZZILE        */ .byte 0
/* SPECIES_INTELEON        */ .byte 0
/* SPECIES_SKWOVET         */ .byte 0
/* SPECIES_GREEDENT        */ .byte 0
/* SPECIES_ROOKIDEE        */ .byte 0
/* SPECIES_CORVISQUIRE     */ .byte 0
/* SPECIES_CORVIKNIGHT     */ .byte 0
/* SPECIES_BLIPBUG         */ .byte 0
/* SPECIES_DOTTLER         */ .byte 0
/* SPECIES_ORBEETLE        */ .byte 0
/* SPECIES_NICKIT          */ .byte 0
/* SPECIES_THIEVUL         */ .byte 0
/* SPECIES_GOSSIFLEUR      */ .byte 0
/* SPECIES_ELDEGOSS        */ .byte 0
/* SPECIES_WOOLOO          */ .byte 0
/* SPECIES_DUBWOOL         */ .byte 0
/* SPECIES_CHEWTLE         */ .byte 0
/* SPECIES_DREDNAW         */ .byte 0
/* SPECIES_YAMPER          */ .byte 0
/* SPECIES_BOLTUND         */ .byte 0
/* SPECIES_ROLYCOLY        */ .byte 0
/* SPECIES_CARKOL          */ .byte 0
/* SPECIES_COALOSSAL       */ .byte 0
/* SPECIES_APPLIN          */ .byte 0
/* SPECIES_FLAPPLE         */ .byte 0
/* SPECIES_APPLETUN        */ .byte 0
/* SPECIES_SILICOBRA       */ .byte 0
/* SPECIES_SANDACONDA      */ .byte 0
/* SPECIES_CRAMORANT       */ .byte 0
/* SPECIES_ARROKUDA        */ .byte 0
/* SPECIES_BARRASKEWDA     */ .byte 0
/* SPECIES_TOXEL           */ .byte 0
/* SPECIES_TOXTRICITY      */ .byte 0
/* SPECIES_SIZZLIPEDE      */ .byte 0
/* SPECIES_CENTISKORCH     */ .byte 0
/* SPECIES_CLOBBOPUS       */ .byte 0
/* SPECIES_GRAPPLOCT       */ .byte 0
/* SPECIES_SINISTEA        */ .byte 0
/* SPECIES_POLTEAGEIST     */ .byte 0
/* SPECIES_HATENNA         */ .byte 0
/* SPECIES_HATTREM         */ .byte 0
/* SPECIES_HATTERENE       */ .byte 0
/* SPECIES_IMPIDIMP        */ .byte 0
/* SPECIES_MORGREM         */ .byte 0
/* SPECIES_GRIMMSNARL      */ .byte 0
/* SPECIES_OBSTAGOON       */ .byte 0
/* SPECIES_PERRSERKER      */ .byte 0
/* SPECIES_CURSOLA         */ .byte 0
/* SPECIES_SIRFETCHD       */ .byte 0
/* SPECIES_MR_RIME         */ .byte 0
/* SPECIES_RUNERIGUS       */ .byte 0
/* SPECIES_MILCERY         */ .byte 0
/* SPECIES_ALCREMIE        */ .byte 0
/* SPECIES_FALINKS         */ .byte 0
/* SPECIES_PINCURCHIN      */ .byte 0
/* SPECIES_SNOM            */ .byte 0
/* SPECIES_FROSMOTH        */ .byte 0
/* SPECIES_STONJOURNER     */ .byte 0
/* SPECIES_EISCUE          */ .byte 0
/* SPECIES_INDEEDEE        */ .byte 1
/* SPECIES_MORPEKO         */ .byte 0
/* SPECIES_CUFANT          */ .byte 0
/* SPECIES_COPPERAJAH      */ .byte 0
/* SPECIES_DRACOZOLT       */ .byte 0
/* SPECIES_ARCTOZOLT       */ .byte 0
/* SPECIES_DRACOVISH       */ .byte 0
/* SPECIES_ARCTOVISH       */ .byte 0
/* SPECIES_DURALUDON       */ .byte 0
/* SPECIES_DREEPY          */ .byte 0
/* SPECIES_DRAKLOAK        */ .byte 0
/* SPECIES_DRAGAPULT       */ .byte 0
/* SPECIES_ZACIAN          */ .byte 0
/* SPECIES_ZAMAZENTA       */ .byte 0
/* SPECIES_ETERNATUS       */ .byte 0
/* SPECIES_KUBFU           */ .byte 0
/* SPECIES_URSHIFU         */ .byte 0
/* SPECIES_ZARUDE          */ .byte 0
/* SPECIES_REGIELEKI       */ .byte 0
/* SPECIES_REGIDRAGO       */ .byte 0
/* SPECIES_GLASTRIER       */ .byte 0
/* SPECIES_SPECTRIER       */ .byte 0
/* SPECIES_CALYREX         */ .byte 0
/* SPECIES_WYRDEER         */ .byte 0
/* SPECIES_KLEAVOR         */ .byte 0
/* SPECIES_URSALUNA        */ .byte 0
/* SPECIES_BASCULEGION     */ .byte 1
/* SPECIES_SNEASLER        */ .byte 0
/* SPECIES_OVERQWIL        */ .byte 0
/* SPECIES_ENAMORUS        */ .byte 0
/* SPECIES_SPRIGATITO      */ .byte 0
/* SPECIES_FLORAGATO       */ .byte 0
/* SPECIES_MEOWSCARADA     */ .byte 0
/* SPECIES_FUECOCO         */ .byte 0
/* SPECIES_CROCALOR        */ .byte 0
/* SPECIES_SKELEDIRGE      */ .byte 0
/* SPECIES_QUAXLY          */ .byte 0
/* SPECIES_QUAXWELL        */ .byte 0
/* SPECIES_QUAQUAVAL       */ .byte 0
/* SPECIES_LECHONK         */ .byte 0
/* SPECIES_OINKOLOGNE      */ .byte 1
/* SPECIES_TAROUNTULA      */ .byte 0
/* SPECIES_SPIDOPS         */ .byte 0
/* SPECIES_NYMBLE          */ .byte 0
/* SPECIES_LOKIX           */ .byte 0
/* SPECIES_PAWMI           */ .byte 0
/* SPECIES_PAWMO           */ .byte 0
/* SPECIES_PAWMOT          */ .byte 0
/* SPECIES_TANDEMAUS       */ .byte 0
/* SPECIES_MAUSHOLD        */ .byte 0
/* SPECIES_FIDOUGH         */ .byte 0
/* SPECIES_DACHSBUN        */ .byte 0
/* SPECIES_SMOLIV          */ .byte 0
/* SPECIES_DOLLIV          */ .byte 0
/* SPECIES_ARBOLIVA        */ .byte 0
/* SPECIES_SQUAWKABILLY    */ .byte 0
/* SPECIES_NACLI           */ .byte 0
/* SPECIES_NACLSTACK       */ .byte 0
/* SPECIES_GARGANACL       */ .byte 0
/* SPECIES_CHARCADET       */ .byte 0
/* SPECIES_ARMAROUGE       */ .byte 0
// area cutoff:  if a pokemon higher than this needs gender differences, the routine will need a rewrite
/* SPECIES_CERULEDGE       */ //.byte 0
/* SPECIES_TADBULB         */ //.byte 0
/* SPECIES_BELLIBOLT       */ //.byte 0
/* SPECIES_WATTREL         */ //.byte 0
/* SPECIES_KILOWATTREL     */ //.byte 0
/* SPECIES_MASCHIFF        */ //.byte 0
/* SPECIES_MABOSSTIFF      */ //.byte 0
/* SPECIES_SHROODLE        */ //.byte 0
/* SPECIES_GRAFAIAI        */ //.byte 0
/* SPECIES_BRAMBLIN        */ //.byte 0
/* SPECIES_BRAMBLEGHAST    */ //.byte 0
/* SPECIES_TOEDSCOOL       */ //.byte 0
/* SPECIES_TOEDSCRUEL      */ //.byte 0
/* SPECIES_KLAWF           */ //.byte 0
/* SPECIES_CAPSAKID        */ //.byte 0
/* SPECIES_SCOVILLAIN      */ //.byte 0
/* SPECIES_RELLOR          */ //.byte 0
/* SPECIES_RABSCA          */ //.byte 0
/* SPECIES_FLITTLE         */ //.byte 0
/* SPECIES_ESPATHRA        */ //.byte 0
/* SPECIES_TINKATINK       */ //.byte 0
/* SPECIES_TINKATUFF       */ //.byte 0
/* SPECIES_TINKATON        */ //.byte 0
/* SPECIES_WIGLETT         */ //.byte 0
/* SPECIES_WUGTRIO         */ //.byte 0
/* SPECIES_BOMBIRDIER      */ //.byte 0
/* SPECIES_FINIZEN         */ //.byte 0
/* SPECIES_PALAFIN         */ //.byte 0
/* SPECIES_VAROOM          */ //.byte 0
/* SPECIES_REVAVROOM       */ //.byte 0
/* SPECIES_CYCLIZAR        */ //.byte 0
/* SPECIES_ORTHWORM        */ //.byte 0
/* SPECIES_GLIMMET         */ //.byte 0
/* SPECIES_GLIMMORA        */ //.byte 0
/* SPECIES_GREAVARD        */ //.byte 0
/* SPECIES_HOUNDSTONE      */ //.byte 0
/* SPECIES_FLAMIGO         */ //.byte 0
/* SPECIES_CETODDLE        */ //.byte 0
/* SPECIES_CETITAN         */ //.byte 0
/* SPECIES_VELUZA          */ //.byte 0
/* SPECIES_DONDOZO         */ //.byte 0
/* SPECIES_TATSUGIRI       */ //.byte 0
/* SPECIES_ANNIHILAPE      */ //.byte 0
/* SPECIES_CLODSIRE        */ //.byte 0
/* SPECIES_FARIGIRAF       */ //.byte 0
/* SPECIES_DUDUNSPARCE     */ //.byte 0
/* SPECIES_KINGAMBIT       */ //.byte 0
/* SPECIES_GREAT_TUSK      */ //.byte 0
/* SPECIES_SCREAM_TAIL     */ //.byte 0
/* SPECIES_BRUTE_BONNET    */ //.byte 0
/* SPECIES_FLUTTER_MANE    */ //.byte 0
/* SPECIES_SLITHER_WING    */ //.byte 0
/* SPECIES_SANDY_SHOCKS    */ //.byte 0
/* SPECIES_IRON_TREADS     */ //.byte 0
/* SPECIES_IRON_BUNDLE     */ //.byte 0
/* SPECIES_IRON_HANDS      */ //.byte 0
/* SPECIES_IRON_JUGULIS    */ //.byte 0
/* SPECIES_IRON_MOTH       */ //.byte 0
/* SPECIES_IRON_THORNS     */ //.byte 0
/* SPECIES_FRIGIBAX        */ //.byte 0
/* SPECIES_ARCTIBAX        */ //.byte 0
/* SPECIES_BAXCALIBUR      */ //.byte 0
/* SPECIES_GIMMIGHOUL      */ //.byte 0
/* SPECIES_GHOLDENGO       */ //.byte 0
/* SPECIES_WO_CHIEN        */ //.byte 0
/* SPECIES_CHIEN_PAO       */ //.byte 0
/* SPECIES_TING_LU         */ //.byte 0
/* SPECIES_CHI_YU          */ //.byte 0
/* SPECIES_ROARING_MOON    */ //.byte 0
/* SPECIES_IRON_VALIANT    */ //.byte 0
/* SPECIES_KORAIDON        */ //.byte 0
/* SPECIES_MIRAIDON        */ //.byte 0
/* SPECIES_WALKING_WAKE    */ //.byte 0
/* SPECIES_IRON_LEAVES     */ //.byte 0
/* SPECIES_DIPPLIN         */ //.byte 0
/* SPECIES_POLTCHAGEIST    */ //.byte 0
/* SPECIES_SINISTCHA       */ //.byte 0
/* SPECIES_OKIDOGI         */ //.byte 0
/* SPECIES_MUNKIDORI       */ //.byte 0
/* SPECIES_FEZANDIPITI     */ //.byte 0
/* SPECIES_OGERPON         */ //.byte 0
/* SPECIES_ARCHALUDON      */ //.byte 0
/* SPECIES_HYDRAPPLE       */ //.byte 0
/* SPECIES_GOUGING_FIRE    */ //.byte 0
/* SPECIES_RAGING_BOLT     */ //.byte 0
/* SPECIES_IRON_BOULDER    */ //.byte 0
/* SPECIES_IRON_CROWN      */ //.byte 0
/* SPECIES_TERAPAGOS       */ //.byte 0
/* SPECIES_PECHARUNT       */ //.byte 0

.endarea

.close


.create "build/a028/9_09", 0


NumOfOWFormsPerMon:
/* SPECIES_NONE            */ .byte 0
/* SPECIES_BULBASAUR       */ .byte 0
/* SPECIES_IVYSAUR         */ .byte 0
/* SPECIES_VENUSAUR        */ .byte 0
/* SPECIES_CHARMANDER      */ .byte 0
/* SPECIES_CHARMELEON      */ .byte 0
/* SPECIES_CHARIZARD       */ .byte 0
/* SPECIES_SQUIRTLE        */ .byte 0
/* SPECIES_WARTORTLE       */ .byte 0
/* SPECIES_BLASTOISE       */ .byte 0
/* SPECIES_CATERPIE        */ .byte 0
/* SPECIES_METAPOD         */ .byte 0
/* SPECIES_BUTTERFREE      */ .byte 0
/* SPECIES_WEEDLE          */ .byte 0
/* SPECIES_KAKUNA          */ .byte 0
/* SPECIES_BEEDRILL        */ .byte 0
/* SPECIES_PIDGEY          */ .byte 0
/* SPECIES_PIDGEOTTO       */ .byte 0
/* SPECIES_PIDGEOT         */ .byte 0
/* SPECIES_RATTATA         */ .byte 1
/* SPECIES_RATICATE        */ .byte 1
/* SPECIES_SPEAROW         */ .byte 0
/* SPECIES_FEAROW          */ .byte 0
/* SPECIES_EKANS           */ .byte 0
/* SPECIES_ARBOK           */ .byte 0
/* SPECIES_PIKACHU         */ .byte 15
/* SPECIES_RAICHU          */ .byte 1
/* SPECIES_SANDSHREW       */ .byte 1
/* SPECIES_SANDSLASH       */ .byte 1
/* SPECIES_NIDORAN_F       */ .byte 0
/* SPECIES_NIDORINA        */ .byte 0
/* SPECIES_NIDOQUEEN       */ .byte 0
/* SPECIES_NIDORAN_M       */ .byte 0
/* SPECIES_NIDORINO        */ .byte 0
/* SPECIES_NIDOKING        */ .byte 0
/* SPECIES_CLEFAIRY        */ .byte 0
/* SPECIES_CLEFABLE        */ .byte 0
/* SPECIES_VULPIX          */ .byte 1
/* SPECIES_NINETALES       */ .byte 1
/* SPECIES_JIGGLYPUFF      */ .byte 0
/* SPECIES_WIGGLYTUFF      */ .byte 0
/* SPECIES_ZUBAT           */ .byte 0
/* SPECIES_GOLBAT          */ .byte 0
/* SPECIES_ODDISH          */ .byte 0
/* SPECIES_GLOOM           */ .byte 0
/* SPECIES_VILEPLUME       */ .byte 0
/* SPECIES_PARAS           */ .byte 0
/* SPECIES_PARASECT        */ .byte 0
/* SPECIES_VENONAT         */ .byte 0
/* SPECIES_VENOMOTH        */ .byte 0
/* SPECIES_DIGLETT         */ .byte 1
/* SPECIES_DUGTRIO         */ .byte 1
/* SPECIES_MEOWTH          */ .byte 2
/* SPECIES_PERSIAN         */ .byte 1
/* SPECIES_PSYDUCK         */ .byte 0
/* SPECIES_GOLDUCK         */ .byte 0
/* SPECIES_MANKEY          */ .byte 0
/* SPECIES_PRIMEAPE        */ .byte 0
/* SPECIES_GROWLITHE       */ .byte 1
/* SPECIES_ARCANINE        */ .byte 1
/* SPECIES_POLIWAG         */ .byte 0
/* SPECIES_POLIWHIRL       */ .byte 0
/* SPECIES_POLIWRATH       */ .byte 0
/* SPECIES_ABRA            */ .byte 0
/* SPECIES_KADABRA         */ .byte 0
/* SPECIES_ALAKAZAM        */ .byte 0
/* SPECIES_MACHOP          */ .byte 0
/* SPECIES_MACHOKE         */ .byte 0
/* SPECIES_MACHAMP         */ .byte 0
/* SPECIES_BELLSPROUT      */ .byte 0
/* SPECIES_WEEPINBELL      */ .byte 0
/* SPECIES_VICTREEBEL      */ .byte 0
/* SPECIES_TENTACOOL       */ .byte 0
/* SPECIES_TENTACRUEL      */ .byte 0
/* SPECIES_GEODUDE         */ .byte 1
/* SPECIES_GRAVELER        */ .byte 1
/* SPECIES_GOLEM           */ .byte 1
/* SPECIES_PONYTA          */ .byte 1
/* SPECIES_RAPIDASH        */ .byte 1
/* SPECIES_SLOWPOKE        */ .byte 1
/* SPECIES_SLOWBRO         */ .byte 1
/* SPECIES_MAGNEMITE       */ .byte 0
/* SPECIES_MAGNETON        */ .byte 0
/* SPECIES_FARFETCHD       */ .byte 1
/* SPECIES_DODUO           */ .byte 0
/* SPECIES_DODRIO          */ .byte 0
/* SPECIES_SEEL            */ .byte 0
/* SPECIES_DEWGONG         */ .byte 0
/* SPECIES_GRIMER          */ .byte 1
/* SPECIES_MUK             */ .byte 1
/* SPECIES_SHELLDER        */ .byte 0
/* SPECIES_CLOYSTER        */ .byte 0
/* SPECIES_GASTLY          */ .byte 0
/* SPECIES_HAUNTER         */ .byte 0
/* SPECIES_GENGAR          */ .byte 0
/* SPECIES_ONIX            */ .byte 0
/* SPECIES_DROWZEE         */ .byte 0
/* SPECIES_HYPNO           */ .byte 0
/* SPECIES_KRABBY          */ .byte 0
/* SPECIES_KINGLER         */ .byte 0
/* SPECIES_VOLTORB         */ .byte 1
/* SPECIES_ELECTRODE       */ .byte 1
/* SPECIES_EXEGGCUTE       */ .byte 0
/* SPECIES_EXEGGUTOR       */ .byte 1
/* SPECIES_CUBONE          */ .byte 0
/* SPECIES_MAROWAK         */ .byte 1
/* SPECIES_HITMONLEE       */ .byte 0
/* SPECIES_HITMONCHAN      */ .byte 0
/* SPECIES_LICKITUNG       */ .byte 0
/* SPECIES_KOFFING         */ .byte 0
/* SPECIES_WEEZING         */ .byte 1
/* SPECIES_RHYHORN         */ .byte 0
/* SPECIES_RHYDON          */ .byte 0
/* SPECIES_CHANSEY         */ .byte 0
/* SPECIES_TANGELA         */ .byte 0
/* SPECIES_KANGASKHAN      */ .byte 0
/* SPECIES_HORSEA          */ .byte 0
/* SPECIES_SEADRA          */ .byte 0
/* SPECIES_GOLDEEN         */ .byte 0
/* SPECIES_SEAKING         */ .byte 0
/* SPECIES_STARYU          */ .byte 0
/* SPECIES_STARMIE         */ .byte 0
/* SPECIES_MR_MIME         */ .byte 1
/* SPECIES_SCYTHER         */ .byte 0
/* SPECIES_JYNX            */ .byte 0
/* SPECIES_ELECTABUZZ      */ .byte 0
/* SPECIES_MAGMAR          */ .byte 0
/* SPECIES_PINSIR          */ .byte 0
/* SPECIES_TAUROS          */ .byte 3
/* SPECIES_MAGIKARP        */ .byte 0
/* SPECIES_GYARADOS        */ .byte 0
/* SPECIES_LAPRAS          */ .byte 0
/* SPECIES_DITTO           */ .byte 0
/* SPECIES_EEVEE           */ .byte 1
/* SPECIES_VAPOREON        */ .byte 0
/* SPECIES_JOLTEON         */ .byte 0
/* SPECIES_FLAREON         */ .byte 0
/* SPECIES_PORYGON         */ .byte 0
/* SPECIES_OMANYTE         */ .byte 0
/* SPECIES_OMASTAR         */ .byte 0
/* SPECIES_KABUTO          */ .byte 0
/* SPECIES_KABUTOPS        */ .byte 0
/* SPECIES_AERODACTYL      */ .byte 0
/* SPECIES_SNORLAX         */ .byte 0
/* SPECIES_ARTICUNO        */ .byte 1
/* SPECIES_ZAPDOS          */ .byte 1
/* SPECIES_MOLTRES         */ .byte 1
/* SPECIES_DRATINI         */ .byte 0
/* SPECIES_DRAGONAIR       */ .byte 0
/* SPECIES_DRAGONITE       */ .byte 0
/* SPECIES_MEWTWO          */ .byte 0
/* SPECIES_MEW             */ .byte 0
/* SPECIES_CHIKORITA       */ .byte 0
/* SPECIES_BAYLEEF         */ .byte 0
/* SPECIES_MEGANIUM        */ .byte 0
/* SPECIES_CYNDAQUIL       */ .byte 0
/* SPECIES_QUILAVA         */ .byte 0
/* SPECIES_TYPHLOSION      */ .byte 1
/* SPECIES_TOTODILE        */ .byte 0
/* SPECIES_CROCONAW        */ .byte 0
/* SPECIES_FERALIGATR      */ .byte 0
/* SPECIES_SENTRET         */ .byte 0
/* SPECIES_FURRET          */ .byte 0
/* SPECIES_HOOTHOOT        */ .byte 0
/* SPECIES_NOCTOWL         */ .byte 0
/* SPECIES_LEDYBA          */ .byte 0
/* SPECIES_LEDIAN          */ .byte 0
/* SPECIES_SPINARAK        */ .byte 0
/* SPECIES_ARIADOS         */ .byte 0
/* SPECIES_CROBAT          */ .byte 0
/* SPECIES_CHINCHOU        */ .byte 0
/* SPECIES_LANTURN         */ .byte 0
/* SPECIES_PICHU           */ .byte 1
/* SPECIES_CLEFFA          */ .byte 0
/* SPECIES_IGGLYBUFF       */ .byte 0
/* SPECIES_TOGEPI          */ .byte 0
/* SPECIES_TOGETIC         */ .byte 0
/* SPECIES_NATU            */ .byte 0
/* SPECIES_XATU            */ .byte 0
/* SPECIES_MAREEP          */ .byte 0
/* SPECIES_FLAAFFY         */ .byte 0
/* SPECIES_AMPHAROS        */ .byte 0
/* SPECIES_BELLOSSOM       */ .byte 0
/* SPECIES_MARILL          */ .byte 0
/* SPECIES_AZUMARILL       */ .byte 0
/* SPECIES_SUDOWOODO       */ .byte 0
/* SPECIES_POLITOED        */ .byte 0
/* SPECIES_HOPPIP          */ .byte 0
/* SPECIES_SKIPLOOM        */ .byte 0
/* SPECIES_JUMPLUFF        */ .byte 0
/* SPECIES_AIPOM           */ .byte 0
/* SPECIES_SUNKERN         */ .byte 0
/* SPECIES_SUNFLORA        */ .byte 0
/* SPECIES_YANMA           */ .byte 0
/* SPECIES_WOOPER          */ .byte 1
/* SPECIES_QUAGSIRE        */ .byte 0
/* SPECIES_ESPEON          */ .byte 0
/* SPECIES_UMBREON         */ .byte 0
/* SPECIES_MURKROW         */ .byte 0
/* SPECIES_SLOWKING        */ .byte 1
/* SPECIES_MISDREAVUS      */ .byte 0
/* SPECIES_UNOWN           */ .byte 27
/* SPECIES_WOBBUFFET       */ .byte 0
/* SPECIES_GIRAFARIG       */ .byte 0
/* SPECIES_PINECO          */ .byte 0
/* SPECIES_FORRETRESS      */ .byte 0
/* SPECIES_DUNSPARCE       */ .byte 0
/* SPECIES_GLIGAR          */ .byte 0
/* SPECIES_STEELIX         */ .byte 0
/* SPECIES_SNUBBULL        */ .byte 0
/* SPECIES_GRANBULL        */ .byte 0
/* SPECIES_QWILFISH        */ .byte 1
/* SPECIES_SCIZOR          */ .byte 0
/* SPECIES_SHUCKLE         */ .byte 0
/* SPECIES_HERACROSS       */ .byte 0
/* SPECIES_SNEASEL         */ .byte 1
/* SPECIES_TEDDIURSA       */ .byte 0
/* SPECIES_URSARING        */ .byte 0
/* SPECIES_SLUGMA          */ .byte 0
/* SPECIES_MAGCARGO        */ .byte 0
/* SPECIES_SWINUB          */ .byte 0
/* SPECIES_PILOSWINE       */ .byte 0
/* SPECIES_CORSOLA         */ .byte 1
/* SPECIES_REMORAID        */ .byte 0
/* SPECIES_OCTILLERY       */ .byte 0
/* SPECIES_DELIBIRD        */ .byte 0
/* SPECIES_MANTINE         */ .byte 0
/* SPECIES_SKARMORY        */ .byte 0
/* SPECIES_HOUNDOUR        */ .byte 0
/* SPECIES_HOUNDOOM        */ .byte 0
/* SPECIES_KINGDRA         */ .byte 0
/* SPECIES_PHANPY          */ .byte 0
/* SPECIES_DONPHAN         */ .byte 0
/* SPECIES_PORYGON2        */ .byte 0
/* SPECIES_STANTLER        */ .byte 0
/* SPECIES_SMEARGLE        */ .byte 0
/* SPECIES_TYROGUE         */ .byte 0
/* SPECIES_HITMONTOP       */ .byte 0
/* SPECIES_SMOOCHUM        */ .byte 0
/* SPECIES_ELEKID          */ .byte 0
/* SPECIES_MAGBY           */ .byte 0
/* SPECIES_MILTANK         */ .byte 0
/* SPECIES_BLISSEY         */ .byte 0
/* SPECIES_RAIKOU          */ .byte 0
/* SPECIES_ENTEI           */ .byte 0
/* SPECIES_SUICUNE         */ .byte 0
/* SPECIES_LARVITAR        */ .byte 0
/* SPECIES_PUPITAR         */ .byte 0
/* SPECIES_TYRANITAR       */ .byte 0
/* SPECIES_LUGIA           */ .byte 0
/* SPECIES_HO_OH           */ .byte 0
/* SPECIES_CELEBI          */ .byte 0
/* SPECIES_TREECKO         */ .byte 0
/* SPECIES_GROVYLE         */ .byte 0
/* SPECIES_SCEPTILE        */ .byte 0
/* SPECIES_TORCHIC         */ .byte 0
/* SPECIES_COMBUSKEN       */ .byte 0
/* SPECIES_BLAZIKEN        */ .byte 0
/* SPECIES_MUDKIP          */ .byte 0
/* SPECIES_MARSHTOMP       */ .byte 0
/* SPECIES_SWAMPERT        */ .byte 0
/* SPECIES_POOCHYENA       */ .byte 0
/* SPECIES_MIGHTYENA       */ .byte 0
/* SPECIES_ZIGZAGOON       */ .byte 1
/* SPECIES_LINOONE         */ .byte 1
/* SPECIES_WURMPLE         */ .byte 0
/* SPECIES_SILCOON         */ .byte 0
/* SPECIES_BEAUTIFLY       */ .byte 0
/* SPECIES_CASCOON         */ .byte 0
/* SPECIES_DUSTOX          */ .byte 0
/* SPECIES_LOTAD           */ .byte 0
/* SPECIES_LOMBRE          */ .byte 0
/* SPECIES_LUDICOLO        */ .byte 0
/* SPECIES_SEEDOT          */ .byte 0
/* SPECIES_NUZLEAF         */ .byte 0
/* SPECIES_SHIFTRY         */ .byte 0
/* SPECIES_TAILLOW         */ .byte 0
/* SPECIES_SWELLOW         */ .byte 0
/* SPECIES_WINGULL         */ .byte 0
/* SPECIES_PELIPPER        */ .byte 0
/* SPECIES_RALTS           */ .byte 0
/* SPECIES_KIRLIA          */ .byte 0
/* SPECIES_GARDEVOIR       */ .byte 0
/* SPECIES_SURSKIT         */ .byte 0
/* SPECIES_MASQUERAIN      */ .byte 0
/* SPECIES_SHROOMISH       */ .byte 0
/* SPECIES_BRELOOM         */ .byte 0
/* SPECIES_SLAKOTH         */ .byte 0
/* SPECIES_VIGOROTH        */ .byte 0
/* SPECIES_SLAKING         */ .byte 0
/* SPECIES_NINCADA         */ .byte 0
/* SPECIES_NINJASK         */ .byte 0
/* SPECIES_SHEDINJA        */ .byte 0
/* SPECIES_WHISMUR         */ .byte 0
/* SPECIES_LOUDRED         */ .byte 0
/* SPECIES_EXPLOUD         */ .byte 0
/* SPECIES_MAKUHITA        */ .byte 0
/* SPECIES_HARIYAMA        */ .byte 0
/* SPECIES_AZURILL         */ .byte 0
/* SPECIES_NOSEPASS        */ .byte 0
/* SPECIES_SKITTY          */ .byte 0
/* SPECIES_DELCATTY        */ .byte 0
/* SPECIES_SABLEYE         */ .byte 0
/* SPECIES_MAWILE          */ .byte 0
/* SPECIES_ARON            */ .byte 0
/* SPECIES_LAIRON          */ .byte 0
/* SPECIES_AGGRON          */ .byte 0
/* SPECIES_MEDITITE        */ .byte 0
/* SPECIES_MEDICHAM        */ .byte 0
/* SPECIES_ELECTRIKE       */ .byte 0
/* SPECIES_MANECTRIC       */ .byte 0
/* SPECIES_PLUSLE          */ .byte 0
/* SPECIES_MINUN           */ .byte 0
/* SPECIES_VOLBEAT         */ .byte 0
/* SPECIES_ILLUMISE        */ .byte 0
/* SPECIES_ROSELIA         */ .byte 0
/* SPECIES_GULPIN          */ .byte 0
/* SPECIES_SWALOT          */ .byte 0
/* SPECIES_CARVANHA        */ .byte 0
/* SPECIES_SHARPEDO        */ .byte 0
/* SPECIES_WAILMER         */ .byte 0
/* SPECIES_WAILORD         */ .byte 0
/* SPECIES_NUMEL           */ .byte 0
/* SPECIES_CAMERUPT        */ .byte 0
/* SPECIES_TORKOAL         */ .byte 0
/* SPECIES_SPOINK          */ .byte 0
/* SPECIES_GRUMPIG         */ .byte 0
/* SPECIES_SPINDA          */ .byte 0
/* SPECIES_TRAPINCH        */ .byte 0
/* SPECIES_VIBRAVA         */ .byte 0
/* SPECIES_FLYGON          */ .byte 0
/* SPECIES_CACNEA          */ .byte 0
/* SPECIES_CACTURNE        */ .byte 0
/* SPECIES_SWABLU          */ .byte 0
/* SPECIES_ALTARIA         */ .byte 0
/* SPECIES_ZANGOOSE        */ .byte 0
/* SPECIES_SEVIPER         */ .byte 0
/* SPECIES_LUNATONE        */ .byte 0
/* SPECIES_SOLROCK         */ .byte 0
/* SPECIES_BARBOACH        */ .byte 0
/* SPECIES_WHISCASH        */ .byte 0
/* SPECIES_CORPHISH        */ .byte 0
/* SPECIES_CRAWDAUNT       */ .byte 0
/* SPECIES_BALTOY          */ .byte 0
/* SPECIES_CLAYDOL         */ .byte 0
/* SPECIES_LILEEP          */ .byte 0
/* SPECIES_CRADILY         */ .byte 0
/* SPECIES_ANORITH         */ .byte 0
/* SPECIES_ARMALDO         */ .byte 0
/* SPECIES_FEEBAS          */ .byte 0
/* SPECIES_MILOTIC         */ .byte 0
/* SPECIES_CASTFORM        */ .byte 3
/* SPECIES_KECLEON         */ .byte 0
/* SPECIES_SHUPPET         */ .byte 0
/* SPECIES_BANETTE         */ .byte 0
/* SPECIES_DUSKULL         */ .byte 0
/* SPECIES_DUSCLOPS        */ .byte 0
/* SPECIES_TROPIUS         */ .byte 0
/* SPECIES_CHIMECHO        */ .byte 0
/* SPECIES_ABSOL           */ .byte 0
/* SPECIES_WYNAUT          */ .byte 0
/* SPECIES_SNORUNT         */ .byte 0
/* SPECIES_GLALIE          */ .byte 0
/* SPECIES_SPHEAL          */ .byte 0
/* SPECIES_SEALEO          */ .byte 0
/* SPECIES_WALREIN         */ .byte 0
/* SPECIES_CLAMPERL        */ .byte 0
/* SPECIES_HUNTAIL         */ .byte 0
/* SPECIES_GOREBYSS        */ .byte 0
/* SPECIES_RELICANTH       */ .byte 0
/* SPECIES_LUVDISC         */ .byte 0
/* SPECIES_BAGON           */ .byte 0
/* SPECIES_SHELGON         */ .byte 0
/* SPECIES_SALAMENCE       */ .byte 0
/* SPECIES_BELDUM          */ .byte 0
/* SPECIES_METANG          */ .byte 0
/* SPECIES_METAGROSS       */ .byte 0
/* SPECIES_REGIROCK        */ .byte 0
/* SPECIES_REGICE          */ .byte 0
/* SPECIES_REGISTEEL       */ .byte 0
/* SPECIES_LATIAS          */ .byte 0
/* SPECIES_LATIOS          */ .byte 0
/* SPECIES_KYOGRE          */ .byte 0
/* SPECIES_GROUDON         */ .byte 0
/* SPECIES_RAYQUAZA        */ .byte 0
/* SPECIES_JIRACHI         */ .byte 0
/* SPECIES_DEOXYS          */ .byte 3
/* SPECIES_TURTWIG         */ .byte 0
/* SPECIES_GROTLE          */ .byte 0
/* SPECIES_TORTERRA        */ .byte 0
/* SPECIES_CHIMCHAR        */ .byte 0
/* SPECIES_MONFERNO        */ .byte 0
/* SPECIES_INFERNAPE       */ .byte 0
/* SPECIES_PIPLUP          */ .byte 0
/* SPECIES_PRINPLUP        */ .byte 0
/* SPECIES_EMPOLEON        */ .byte 0
/* SPECIES_STARLY          */ .byte 0
/* SPECIES_STARAVIA        */ .byte 0
/* SPECIES_STARAPTOR       */ .byte 0
/* SPECIES_BIDOOF          */ .byte 0
/* SPECIES_BIBAREL         */ .byte 0
/* SPECIES_KRICKETOT       */ .byte 0
/* SPECIES_KRICKETUNE      */ .byte 0
/* SPECIES_SHINX           */ .byte 0
/* SPECIES_LUXIO           */ .byte 0
/* SPECIES_LUXRAY          */ .byte 0
/* SPECIES_BUDEW           */ .byte 0
/* SPECIES_ROSERADE        */ .byte 0
/* SPECIES_CRANIDOS        */ .byte 0
/* SPECIES_RAMPARDOS       */ .byte 0
/* SPECIES_SHIELDON        */ .byte 0
/* SPECIES_BASTIODON       */ .byte 0
/* SPECIES_BURMY           */ .byte 2
/* SPECIES_WORMADAM        */ .byte 2
/* SPECIES_MOTHIM          */ .byte 0
/* SPECIES_COMBEE          */ .byte 0
/* SPECIES_VESPIQUEN       */ .byte 0
/* SPECIES_PACHIRISU       */ .byte 0
/* SPECIES_BUIZEL          */ .byte 0
/* SPECIES_FLOATZEL        */ .byte 0
/* SPECIES_CHERUBI         */ .byte 0
/* SPECIES_CHERRIM         */ .byte 0
/* SPECIES_SHELLOS         */ .byte 1
/* SPECIES_GASTRODON       */ .byte 1
/* SPECIES_AMBIPOM         */ .byte 0
/* SPECIES_DRIFLOON        */ .byte 0
/* SPECIES_DRIFBLIM        */ .byte 0
/* SPECIES_BUNEARY         */ .byte 0
/* SPECIES_LOPUNNY         */ .byte 0
/* SPECIES_MISMAGIUS       */ .byte 0
/* SPECIES_HONCHKROW       */ .byte 0
/* SPECIES_GLAMEOW         */ .byte 0
/* SPECIES_PURUGLY         */ .byte 0
/* SPECIES_CHINGLING       */ .byte 0
/* SPECIES_STUNKY          */ .byte 0
/* SPECIES_SKUNTANK        */ .byte 0
/* SPECIES_BRONZOR         */ .byte 0
/* SPECIES_BRONZONG        */ .byte 0
/* SPECIES_BONSLY          */ .byte 0
/* SPECIES_MIME_JR          */ .byte 0
/* SPECIES_HAPPINY         */ .byte 0
/* SPECIES_CHATOT          */ .byte 0
/* SPECIES_SPIRITOMB       */ .byte 0
/* SPECIES_GIBLE           */ .byte 0
/* SPECIES_GABITE          */ .byte 0
/* SPECIES_GARCHOMP        */ .byte 0
/* SPECIES_MUNCHLAX        */ .byte 0
/* SPECIES_RIOLU           */ .byte 0
/* SPECIES_LUCARIO         */ .byte 0
/* SPECIES_HIPPOPOTAS      */ .byte 0
/* SPECIES_HIPPOWDON       */ .byte 0
/* SPECIES_SKORUPI         */ .byte 0
/* SPECIES_DRAPION         */ .byte 0
/* SPECIES_CROAGUNK        */ .byte 0
/* SPECIES_TOXICROAK       */ .byte 0
/* SPECIES_CARNIVINE       */ .byte 0
/* SPECIES_FINNEON         */ .byte 0
/* SPECIES_LUMINEON        */ .byte 0
/* SPECIES_MANTYKE         */ .byte 0
/* SPECIES_SNOVER          */ .byte 0
/* SPECIES_ABOMASNOW       */ .byte 0
/* SPECIES_WEAVILE         */ .byte 0
/* SPECIES_MAGNEZONE       */ .byte 0
/* SPECIES_LICKILICKY      */ .byte 0
/* SPECIES_RHYPERIOR       */ .byte 0
/* SPECIES_TANGROWTH       */ .byte 0
/* SPECIES_ELECTIVIRE      */ .byte 0
/* SPECIES_MAGMORTAR       */ .byte 0
/* SPECIES_TOGEKISS        */ .byte 0
/* SPECIES_YANMEGA         */ .byte 0
/* SPECIES_LEAFEON         */ .byte 0
/* SPECIES_GLACEON         */ .byte 0
/* SPECIES_GLISCOR         */ .byte 0
/* SPECIES_MAMOSWINE       */ .byte 0
/* SPECIES_PORYGON_Z       */ .byte 0
/* SPECIES_GALLADE         */ .byte 0
/* SPECIES_PROBOPASS       */ .byte 0
/* SPECIES_DUSKNOIR        */ .byte 0
/* SPECIES_FROSLASS        */ .byte 0
/* SPECIES_ROTOM           */ .byte 5
/* SPECIES_UXIE            */ .byte 0
/* SPECIES_MESPRIT         */ .byte 0
/* SPECIES_AZELF           */ .byte 0
/* SPECIES_DIALGA          */ .byte 1
/* SPECIES_PALKIA          */ .byte 1
/* SPECIES_HEATRAN         */ .byte 0
/* SPECIES_REGIGIGAS       */ .byte 0
/* SPECIES_GIRATINA        */ .byte 1
/* SPECIES_CRESSELIA       */ .byte 0
/* SPECIES_PHIONE          */ .byte 0
/* SPECIES_MANAPHY         */ .byte 0
/* SPECIES_DARKRAI         */ .byte 0
/* SPECIES_SHAYMIN         */ .byte 1
/* SPECIES_ARCEUS          */ .byte 17
/* SPECIES_EGG             */ .byte 0
/* SPECIES_BAD_EGG         */ .byte 0
/* SPECIES_496   */ .byte 0
/* SPECIES_497  */ .byte 0
/* SPECIES_498    */ .byte 0
/* SPECIES_499  */ .byte 0
/* SPECIES_500 */ .byte 0
/* SPECIES_501 */ .byte 0
/* SPECIES_502     */ .byte 0
/* SPECIES_503      */ .byte 0
/* SPECIES_504      */ .byte 0
/* SPECIES_505     */ .byte 0
/* SPECIES_506       */ .byte 0
/* SPECIES_507       */ .byte 0
/* SPECIES_508             */ .byte 0
/* SPECIES_509             */ .byte 0
/* SPECIES_510             */ .byte 0
/* SPECIES_511             */ .byte 0
/* SPECIES_512             */ .byte 0
/* SPECIES_513             */ .byte 0
/* SPECIES_514             */ .byte 0
/* SPECIES_515             */ .byte 0
/* SPECIES_516             */ .byte 0
/* SPECIES_517             */ .byte 0
/* SPECIES_518             */ .byte 0
/* SPECIES_519             */ .byte 0
/* SPECIES_520             */ .byte 0
/* SPECIES_521             */ .byte 0
/* SPECIES_522             */ .byte 0
/* SPECIES_523             */ .byte 0
/* SPECIES_524             */ .byte 0
/* SPECIES_525             */ .byte 0
/* SPECIES_526             */ .byte 0
/* SPECIES_527             */ .byte 0
/* SPECIES_528             */ .byte 0
/* SPECIES_529             */ .byte 0
/* SPECIES_530             */ .byte 0
/* SPECIES_531             */ .byte 0
/* SPECIES_532             */ .byte 0
/* SPECIES_533             */ .byte 0
/* SPECIES_534             */ .byte 0
/* SPECIES_535             */ .byte 0
/* SPECIES_536             */ .byte 0
/* SPECIES_537             */ .byte 0
/* SPECIES_538             */ .byte 0
/* SPECIES_539             */ .byte 0
/* SPECIES_540             */ .byte 0
/* SPECIES_541             */ .byte 0
/* SPECIES_542             */ .byte 0
/* SPECIES_543             */ .byte 0
/* SPECIES_VICTINI         */ .byte 0
/* SPECIES_SNIVY           */ .byte 0
/* SPECIES_SERVINE         */ .byte 0
/* SPECIES_SERPERIOR       */ .byte 0
/* SPECIES_TEPIG           */ .byte 0
/* SPECIES_PIGNITE         */ .byte 0
/* SPECIES_EMBOAR          */ .byte 0
/* SPECIES_OSHAWOTT        */ .byte 0
/* SPECIES_DEWOTT          */ .byte 0
/* SPECIES_SAMUROTT        */ .byte 1
/* SPECIES_PATRAT          */ .byte 0
/* SPECIES_WATCHOG         */ .byte 0
/* SPECIES_LILLIPUP        */ .byte 0
/* SPECIES_HERDIER         */ .byte 0
/* SPECIES_STOUTLAND       */ .byte 0
/* SPECIES_PURRLOIN        */ .byte 0
/* SPECIES_LIEPARD         */ .byte 0
/* SPECIES_PANSAGE         */ .byte 0
/* SPECIES_SIMISAGE        */ .byte 0
/* SPECIES_PANSEAR         */ .byte 0
/* SPECIES_SIMISEAR        */ .byte 0
/* SPECIES_PANPOUR         */ .byte 0
/* SPECIES_SIMIPOUR        */ .byte 0
/* SPECIES_MUNNA           */ .byte 0
/* SPECIES_MUSHARNA        */ .byte 0
/* SPECIES_PIDOVE          */ .byte 0
/* SPECIES_TRANQUILL       */ .byte 0
/* SPECIES_UNFEZANT        */ .byte 0
/* SPECIES_BLITZLE         */ .byte 0
/* SPECIES_ZEBSTRIKA       */ .byte 0
/* SPECIES_ROGGENROLA      */ .byte 0
/* SPECIES_BOLDORE         */ .byte 0
/* SPECIES_GIGALITH        */ .byte 0
/* SPECIES_WOOBAT          */ .byte 0
/* SPECIES_SWOOBAT         */ .byte 0
/* SPECIES_DRILBUR         */ .byte 0
/* SPECIES_EXCADRILL       */ .byte 0
/* SPECIES_AUDINO          */ .byte 0
/* SPECIES_TIMBURR         */ .byte 0
/* SPECIES_GURDURR         */ .byte 0
/* SPECIES_CONKELDURR      */ .byte 0
/* SPECIES_TYMPOLE         */ .byte 0
/* SPECIES_PALPITOAD       */ .byte 0
/* SPECIES_SEISMITOAD      */ .byte 0
/* SPECIES_THROH           */ .byte 0
/* SPECIES_SAWK            */ .byte 0
/* SPECIES_SEWADDLE        */ .byte 0
/* SPECIES_SWADLOON        */ .byte 0
/* SPECIES_LEAVANNY        */ .byte 0
/* SPECIES_VENIPEDE        */ .byte 0
/* SPECIES_WHIRLIPEDE      */ .byte 0
/* SPECIES_SCOLIPEDE       */ .byte 0
/* SPECIES_COTTONEE        */ .byte 0
/* SPECIES_WHIMSICOTT      */ .byte 0
/* SPECIES_PETILIL         */ .byte 0
/* SPECIES_LILLIGANT       */ .byte 1
/* SPECIES_BASCULIN        */ .byte 2
/* SPECIES_SANDILE         */ .byte 0
/* SPECIES_KROKOROK        */ .byte 0
/* SPECIES_KROOKODILE      */ .byte 0
/* SPECIES_DARUMAKA        */ .byte 1
/* SPECIES_DARMANITAN      */ .byte 3
/* SPECIES_MARACTUS        */ .byte 0
/* SPECIES_DWEBBLE         */ .byte 0
/* SPECIES_CRUSTLE         */ .byte 0
/* SPECIES_SCRAGGY         */ .byte 0
/* SPECIES_SCRAFTY         */ .byte 0
/* SPECIES_SIGILYPH        */ .byte 0
/* SPECIES_YAMASK          */ .byte 1
/* SPECIES_COFAGRIGUS      */ .byte 0
/* SPECIES_TIRTOUGA        */ .byte 0
/* SPECIES_CARRACOSTA      */ .byte 0
/* SPECIES_ARCHEN          */ .byte 0
/* SPECIES_ARCHEOPS        */ .byte 0
/* SPECIES_TRUBBISH        */ .byte 0
/* SPECIES_GARBODOR        */ .byte 0
/* SPECIES_ZORUA           */ .byte 1
/* SPECIES_ZOROARK         */ .byte 1
/* SPECIES_MINCCINO        */ .byte 0
/* SPECIES_CINCCINO        */ .byte 0
/* SPECIES_GOTHITA         */ .byte 0
/* SPECIES_GOTHORITA       */ .byte 0
/* SPECIES_GOTHITELLE      */ .byte 0
/* SPECIES_SOLOSIS         */ .byte 0
/* SPECIES_DUOSION         */ .byte 0
/* SPECIES_REUNICLUS       */ .byte 0
/* SPECIES_DUCKLETT        */ .byte 0
/* SPECIES_SWANNA          */ .byte 0
/* SPECIES_VANILLITE       */ .byte 0
/* SPECIES_VANILLISH       */ .byte 0
/* SPECIES_VANILLUXE       */ .byte 0
/* SPECIES_DEERLING        */ .byte 3
/* SPECIES_SAWSBUCK        */ .byte 3
/* SPECIES_EMOLGA          */ .byte 0
/* SPECIES_KARRABLAST      */ .byte 0
/* SPECIES_ESCAVALIER      */ .byte 0
/* SPECIES_FOONGUS         */ .byte 0
/* SPECIES_AMOONGUSS       */ .byte 0
/* SPECIES_FRILLISH        */ .byte 0
/* SPECIES_JELLICENT       */ .byte 0
/* SPECIES_ALOMOMOLA       */ .byte 0
/* SPECIES_JOLTIK          */ .byte 0
/* SPECIES_GALVANTULA      */ .byte 0
/* SPECIES_FERROSEED       */ .byte 0
/* SPECIES_FERROTHORN      */ .byte 0
/* SPECIES_KLINK           */ .byte 0
/* SPECIES_KLANG           */ .byte 0
/* SPECIES_KLINKLANG       */ .byte 0
/* SPECIES_TYNAMO          */ .byte 0
/* SPECIES_EELEKTRIK       */ .byte 0
/* SPECIES_EELEKTROSS      */ .byte 0
/* SPECIES_ELGYEM          */ .byte 0
/* SPECIES_BEHEEYEM        */ .byte 0
/* SPECIES_LITWICK         */ .byte 0
/* SPECIES_LAMPENT         */ .byte 0
/* SPECIES_CHANDELURE      */ .byte 0
/* SPECIES_AXEW            */ .byte 0
/* SPECIES_FRAXURE         */ .byte 0
/* SPECIES_HAXORUS         */ .byte 0
/* SPECIES_CUBCHOO         */ .byte 0
/* SPECIES_BEARTIC         */ .byte 0
/* SPECIES_CRYOGONAL       */ .byte 0
/* SPECIES_SHELMET         */ .byte 0
/* SPECIES_ACCELGOR        */ .byte 0
/* SPECIES_STUNFISK        */ .byte 1
/* SPECIES_MIENFOO         */ .byte 0
/* SPECIES_MIENSHAO        */ .byte 0
/* SPECIES_DRUDDIGON       */ .byte 0
/* SPECIES_GOLETT          */ .byte 0
/* SPECIES_GOLURK          */ .byte 0
/* SPECIES_PAWNIARD        */ .byte 0
/* SPECIES_BISHARP         */ .byte 0
/* SPECIES_BOUFFALANT      */ .byte 0
/* SPECIES_RUFFLET         */ .byte 0
/* SPECIES_BRAVIARY        */ .byte 1
/* SPECIES_VULLABY         */ .byte 0
/* SPECIES_MANDIBUZZ       */ .byte 0
/* SPECIES_HEATMOR         */ .byte 0
/* SPECIES_DURANT          */ .byte 0
/* SPECIES_DEINO           */ .byte 0
/* SPECIES_ZWEILOUS        */ .byte 0
/* SPECIES_HYDREIGON       */ .byte 0
/* SPECIES_LARVESTA        */ .byte 0
/* SPECIES_VOLCARONA       */ .byte 0
/* SPECIES_COBALION        */ .byte 0
/* SPECIES_TERRAKION       */ .byte 0
/* SPECIES_VIRIZION        */ .byte 0
/* SPECIES_TORNADUS        */ .byte 1
/* SPECIES_THUNDURUS       */ .byte 1
/* SPECIES_RESHIRAM        */ .byte 0
/* SPECIES_ZEKROM          */ .byte 0
/* SPECIES_LANDORUS        */ .byte 1
/* SPECIES_KYUREM          */ .byte 2
/* SPECIES_KELDEO          */ .byte 1
/* SPECIES_MELOETTA        */ .byte 1
/* SPECIES_GENESECT        */ .byte 0
/* SPECIES_CHESPIN         */ .byte 0
/* SPECIES_QUILLADIN       */ .byte 0
/* SPECIES_CHESNAUGHT      */ .byte 0
/* SPECIES_FENNEKIN        */ .byte 0
/* SPECIES_BRAIXEN         */ .byte 0
/* SPECIES_DELPHOX         */ .byte 0
/* SPECIES_FROAKIE         */ .byte 0
/* SPECIES_FROGADIER       */ .byte 0
/* SPECIES_GRENINJA        */ .byte 0
/* SPECIES_BUNNELBY        */ .byte 0
/* SPECIES_DIGGERSBY       */ .byte 0
/* SPECIES_FLETCHLING      */ .byte 0
/* SPECIES_FLETCHINDER     */ .byte 0
/* SPECIES_TALONFLAME      */ .byte 0
/* SPECIES_SCATTERBUG      */ .byte 0
/* SPECIES_SPEWPA          */ .byte 0
/* SPECIES_VIVILLON        */ .byte 19
/* SPECIES_LITLEO          */ .byte 0
/* SPECIES_PYROAR          */ .byte 0
/* SPECIES_FLABEBE         */ .byte 4
/* SPECIES_FLOETTE         */ .byte 5
/* SPECIES_FLORGES         */ .byte 4
/* SPECIES_SKIDDO          */ .byte 0
/* SPECIES_GOGOAT          */ .byte 0
/* SPECIES_PANCHAM         */ .byte 0
/* SPECIES_PANGORO         */ .byte 0
/* SPECIES_FURFROU         */ .byte 9
/* SPECIES_ESPURR          */ .byte 0
/* SPECIES_MEOWSTIC        */ .byte 0
/* SPECIES_HONEDGE         */ .byte 0
/* SPECIES_DOUBLADE        */ .byte 0
/* SPECIES_AEGISLASH       */ .byte 0
/* SPECIES_SPRITZEE        */ .byte 0
/* SPECIES_AROMATISSE      */ .byte 0
/* SPECIES_SWIRLIX         */ .byte 0
/* SPECIES_SLURPUFF        */ .byte 0
/* SPECIES_INKAY           */ .byte 0
/* SPECIES_MALAMAR         */ .byte 0
/* SPECIES_BINACLE         */ .byte 0
/* SPECIES_BARBARACLE      */ .byte 0
/* SPECIES_SKRELP          */ .byte 0
/* SPECIES_DRAGALGE        */ .byte 0
/* SPECIES_CLAUNCHER       */ .byte 0
/* SPECIES_CLAWITZER       */ .byte 0
/* SPECIES_HELIOPTILE      */ .byte 0
/* SPECIES_HELIOLISK       */ .byte 0
/* SPECIES_TYRUNT          */ .byte 0
/* SPECIES_TYRANTRUM       */ .byte 0
/* SPECIES_AMAURA          */ .byte 0
/* SPECIES_AURORUS         */ .byte 0
/* SPECIES_SYLVEON         */ .byte 0
/* SPECIES_HAWLUCHA        */ .byte 0
/* SPECIES_DEDENNE         */ .byte 0
/* SPECIES_CARBINK         */ .byte 0
/* SPECIES_GOOMY           */ .byte 0
/* SPECIES_SLIGGOO         */ .byte 1
/* SPECIES_GOODRA          */ .byte 1
/* SPECIES_KLEFKI          */ .byte 0
/* SPECIES_PHANTUMP        */ .byte 0
/* SPECIES_TREVENANT       */ .byte 0
/* SPECIES_PUMPKABOO       */ .byte 3
/* SPECIES_GOURGEIST       */ .byte 3
/* SPECIES_BERGMITE        */ .byte 0
/* SPECIES_AVALUGG         */ .byte 1
/* SPECIES_NOIBAT          */ .byte 0
/* SPECIES_NOIVERN         */ .byte 0
/* SPECIES_XERNEAS         */ .byte 0
/* SPECIES_YVELTAL         */ .byte 0
/* SPECIES_ZYGARDE         */ .byte 5
/* SPECIES_DIANCIE         */ .byte 0
/* SPECIES_HOOPA           */ .byte 1
/* SPECIES_VOLCANION       */ .byte 0
/* SPECIES_ROWLET          */ .byte 0
/* SPECIES_DARTRIX         */ .byte 0
/* SPECIES_DECIDUEYE       */ .byte 1
/* SPECIES_LITTEN          */ .byte 0
/* SPECIES_TORRACAT        */ .byte 0
/* SPECIES_INCINEROAR      */ .byte 0
/* SPECIES_POPPLIO         */ .byte 0
/* SPECIES_BRIONNE         */ .byte 0
/* SPECIES_PRIMARINA       */ .byte 0
/* SPECIES_PIKIPEK         */ .byte 0
/* SPECIES_TRUMBEAK        */ .byte 0
/* SPECIES_TOUCANNON       */ .byte 0
/* SPECIES_YUNGOOS         */ .byte 0
/* SPECIES_GUMSHOOS        */ .byte 0
/* SPECIES_GRUBBIN         */ .byte 0
/* SPECIES_CHARJABUG       */ .byte 0
/* SPECIES_VIKAVOLT        */ .byte 0
/* SPECIES_CRABRAWLER      */ .byte 0
/* SPECIES_CRABOMINABLE    */ .byte 0
/* SPECIES_ORICORIO        */ .byte 3
/* SPECIES_CUTIEFLY        */ .byte 0
/* SPECIES_RIBOMBEE        */ .byte 0
/* SPECIES_ROCKRUFF        */ .byte 1
/* SPECIES_LYCANROC        */ .byte 2
/* SPECIES_WISHIWASHI      */ .byte 0
/* SPECIES_MAREANIE        */ .byte 0
/* SPECIES_TOXAPEX         */ .byte 0
/* SPECIES_MUDBRAY         */ .byte 0
/* SPECIES_MUDSDALE        */ .byte 0
/* SPECIES_DEWPIDER        */ .byte 0
/* SPECIES_ARAQUANID       */ .byte 0
/* SPECIES_FOMANTIS        */ .byte 0
/* SPECIES_LURANTIS        */ .byte 0
/* SPECIES_MORELULL        */ .byte 0
/* SPECIES_SHIINOTIC       */ .byte 0
/* SPECIES_SALANDIT        */ .byte 0
/* SPECIES_SALAZZLE        */ .byte 0
/* SPECIES_STUFFUL         */ .byte 0
/* SPECIES_BEWEAR          */ .byte 0
/* SPECIES_BOUNSWEET       */ .byte 0
/* SPECIES_STEENEE         */ .byte 0
/* SPECIES_TSAREENA        */ .byte 0
/* SPECIES_COMFEY          */ .byte 0
/* SPECIES_ORANGURU        */ .byte 0
/* SPECIES_PASSIMIAN       */ .byte 0
/* SPECIES_WIMPOD          */ .byte 0
/* SPECIES_GOLISOPOD       */ .byte 0
/* SPECIES_SANDYGAST       */ .byte 0
/* SPECIES_PALOSSAND       */ .byte 0
/* SPECIES_PYUKUMUKU       */ .byte 0
/* SPECIES_TYPE_NULL       */ .byte 0
/* SPECIES_SILVALLY        */ .byte 17
/* SPECIES_MINIOR          */ .byte 6
/* SPECIES_KOMALA          */ .byte 0
/* SPECIES_TURTONATOR      */ .byte 0
/* SPECIES_TOGEDEMARU      */ .byte 0
/* SPECIES_MIMIKYU         */ .byte 0
/* SPECIES_BRUXISH         */ .byte 0
/* SPECIES_DRAMPA          */ .byte 0
/* SPECIES_DHELMISE        */ .byte 0
/* SPECIES_JANGMO_O        */ .byte 0
/* SPECIES_HAKAMO_O        */ .byte 0
/* SPECIES_KOMMO_O         */ .byte 0
/* SPECIES_TAPU_KOKO       */ .byte 0
/* SPECIES_TAPU_LELE       */ .byte 0
/* SPECIES_TAPU_BULU       */ .byte 0
/* SPECIES_TAPU_FINI       */ .byte 0
/* SPECIES_COSMOG          */ .byte 0
/* SPECIES_COSMOEM         */ .byte 0
/* SPECIES_SOLGALEO        */ .byte 0
/* SPECIES_LUNALA          */ .byte 0
/* SPECIES_NIHILEGO        */ .byte 0
/* SPECIES_BUZZWOLE        */ .byte 0
/* SPECIES_PHEROMOSA       */ .byte 0
/* SPECIES_XURKITREE       */ .byte 0
/* SPECIES_CELESTEELA      */ .byte 0
/* SPECIES_KARTANA         */ .byte 0
/* SPECIES_GUZZLORD        */ .byte 0
/* SPECIES_NECROZMA        */ .byte 2
/* SPECIES_MAGEARNA        */ .byte 1
/* SPECIES_MARSHADOW       */ .byte 0
/* SPECIES_POIPOLE         */ .byte 0
/* SPECIES_NAGANADEL       */ .byte 0
/* SPECIES_STAKATAKA       */ .byte 0
/* SPECIES_BLACEPHALON     */ .byte 0
/* SPECIES_ZERAORA         */ .byte 0
/* SPECIES_MELTAN          */ .byte 0
/* SPECIES_MELMETAL        */ .byte 0
/* SPECIES_GROOKEY         */ .byte 0
/* SPECIES_THWACKEY        */ .byte 0
/* SPECIES_RILLABOOM       */ .byte 0
/* SPECIES_SCORBUNNY       */ .byte 0
/* SPECIES_RABOOT          */ .byte 0
/* SPECIES_CINDERACE       */ .byte 0
/* SPECIES_SOBBLE          */ .byte 0
/* SPECIES_DRIZZILE        */ .byte 0
/* SPECIES_INTELEON        */ .byte 0
/* SPECIES_SKWOVET         */ .byte 0
/* SPECIES_GREEDENT        */ .byte 0
/* SPECIES_ROOKIDEE        */ .byte 0
/* SPECIES_CORVISQUIRE     */ .byte 0
/* SPECIES_CORVIKNIGHT     */ .byte 0
/* SPECIES_BLIPBUG         */ .byte 0
/* SPECIES_DOTTLER         */ .byte 0
/* SPECIES_ORBEETLE        */ .byte 0
/* SPECIES_NICKIT          */ .byte 0
/* SPECIES_THIEVUL         */ .byte 0
/* SPECIES_GOSSIFLEUR      */ .byte 0
/* SPECIES_ELDEGOSS        */ .byte 0
/* SPECIES_WOOLOO          */ .byte 0
/* SPECIES_DUBWOOL         */ .byte 0
/* SPECIES_CHEWTLE         */ .byte 0
/* SPECIES_DREDNAW         */ .byte 0
/* SPECIES_YAMPER          */ .byte 0
/* SPECIES_BOLTUND         */ .byte 0
/* SPECIES_ROLYCOLY        */ .byte 0
/* SPECIES_CARKOL          */ .byte 0
/* SPECIES_COALOSSAL       */ .byte 0
/* SPECIES_APPLIN          */ .byte 0
/* SPECIES_FLAPPLE         */ .byte 0
/* SPECIES_APPLETUN        */ .byte 0
/* SPECIES_SILICOBRA       */ .byte 0
/* SPECIES_SANDACONDA      */ .byte 0
/* SPECIES_CRAMORANT       */ .byte 0
/* SPECIES_ARROKUDA        */ .byte 0
/* SPECIES_BARRASKEWDA     */ .byte 0
/* SPECIES_TOXEL           */ .byte 0
/* SPECIES_TOXTRICITY      */ .byte 1
/* SPECIES_SIZZLIPEDE      */ .byte 0
/* SPECIES_CENTISKORCH     */ .byte 0
/* SPECIES_CLOBBOPUS       */ .byte 0
/* SPECIES_GRAPPLOCT       */ .byte 0
/* SPECIES_SINISTEA        */ .byte 1
/* SPECIES_POLTEAGEIST     */ .byte 1
/* SPECIES_HATENNA         */ .byte 0
/* SPECIES_HATTREM         */ .byte 0
/* SPECIES_HATTERENE       */ .byte 0
/* SPECIES_IMPIDIMP        */ .byte 0
/* SPECIES_MORGREM         */ .byte 0
/* SPECIES_GRIMMSNARL      */ .byte 0
/* SPECIES_OBSTAGOON       */ .byte 0
/* SPECIES_PERRSERKER      */ .byte 0
/* SPECIES_CURSOLA         */ .byte 0
/* SPECIES_SIRFETCHD       */ .byte 0
/* SPECIES_MR_RIME         */ .byte 0
/* SPECIES_RUNERIGUS       */ .byte 0
/* SPECIES_MILCERY         */ .byte 0
/* SPECIES_ALCREMIE        */ .byte 6
/* SPECIES_FALINKS         */ .byte 0
/* SPECIES_PINCURCHIN      */ .byte 0
/* SPECIES_SNOM            */ .byte 0
/* SPECIES_FROSMOTH        */ .byte 0
/* SPECIES_STONJOURNER     */ .byte 0
/* SPECIES_EISCUE          */ .byte 0
/* SPECIES_INDEEDEE        */ .byte 0
/* SPECIES_MORPEKO         */ .byte 0
/* SPECIES_CUFANT          */ .byte 0
/* SPECIES_COPPERAJAH      */ .byte 0
/* SPECIES_DRACOZOLT       */ .byte 0
/* SPECIES_ARCTOZOLT       */ .byte 0
/* SPECIES_DRACOVISH       */ .byte 0
/* SPECIES_ARCTOVISH       */ .byte 0
/* SPECIES_DURALUDON       */ .byte 0
/* SPECIES_DREEPY          */ .byte 0
/* SPECIES_DRAKLOAK        */ .byte 0
/* SPECIES_DRAGAPULT       */ .byte 0
/* SPECIES_ZACIAN          */ .byte 0
/* SPECIES_ZAMAZENTA       */ .byte 0
/* SPECIES_ETERNATUS       */ .byte 0
/* SPECIES_KUBFU           */ .byte 0
/* SPECIES_URSHIFU         */ .byte 1
/* SPECIES_ZARUDE          */ .byte 1
/* SPECIES_REGIELEKI       */ .byte 0
/* SPECIES_REGIDRAGO       */ .byte 0
/* SPECIES_GLASTRIER       */ .byte 0
/* SPECIES_SPECTRIER       */ .byte 0
/* SPECIES_CALYREX         */ .byte 2
/* SPECIES_WYRDEER         */ .byte 0
/* SPECIES_KLEAVOR         */ .byte 0
/* SPECIES_URSALUNA        */ .byte 1
/* SPECIES_BASCULEGION     */ .byte 1
/* SPECIES_SNEASLER        */ .byte 0
/* SPECIES_OVERQWIL        */ .byte 0
/* SPECIES_ENAMORUS        */ .byte 1
/* SPECIES_SPRIGATITO      */ .byte 0
/* SPECIES_FLORAGATO       */ .byte 0
/* SPECIES_MEOWSCARADA     */ .byte 0
/* SPECIES_FUECOCO         */ .byte 0
/* SPECIES_CROCALOR        */ .byte 0
/* SPECIES_SKELEDIRGE      */ .byte 0
/* SPECIES_QUAXLY          */ .byte 0
/* SPECIES_QUAXWELL        */ .byte 0
/* SPECIES_QUAQUAVAL       */ .byte 0
/* SPECIES_LECHONK         */ .byte 0
/* SPECIES_OINKOLOGNE      */ .byte 0
/* SPECIES_TAROUNTULA      */ .byte 0
/* SPECIES_SPIDOPS         */ .byte 0
/* SPECIES_NYMBLE          */ .byte 0
/* SPECIES_LOKIX           */ .byte 0
/* SPECIES_PAWMI           */ .byte 0
/* SPECIES_PAWMO           */ .byte 0
/* SPECIES_PAWMOT          */ .byte 0
/* SPECIES_TANDEMAUS       */ .byte 0
/* SPECIES_MAUSHOLD        */ .byte 1
/* SPECIES_FIDOUGH         */ .byte 0
/* SPECIES_DACHSBUN        */ .byte 0
/* SPECIES_SMOLIV          */ .byte 0
/* SPECIES_DOLLIV          */ .byte 0
/* SPECIES_ARBOLIVA        */ .byte 0
/* SPECIES_SQUAWKABILLY    */ .byte 3
/* SPECIES_NACLI           */ .byte 0
/* SPECIES_NACLSTACK       */ .byte 0
/* SPECIES_GARGANACL       */ .byte 0
/* SPECIES_CHARCADET       */ .byte 0
/* SPECIES_ARMAROUGE       */ .byte 0
/* SPECIES_CERULEDGE       */ .byte 0
/* SPECIES_TADBULB         */ .byte 0
/* SPECIES_BELLIBOLT       */ .byte 0
/* SPECIES_WATTREL         */ .byte 0
/* SPECIES_KILOWATTREL     */ .byte 0
/* SPECIES_MASCHIFF        */ .byte 0
/* SPECIES_MABOSSTIFF      */ .byte 0
/* SPECIES_SHROODLE        */ .byte 0
/* SPECIES_GRAFAIAI        */ .byte 0
/* SPECIES_BRAMBLIN        */ .byte 0
/* SPECIES_BRAMBLEGHAST    */ .byte 0
/* SPECIES_TOEDSCOOL       */ .byte 0
/* SPECIES_TOEDSCRUEL      */ .byte 0
/* SPECIES_KLAWF           */ .byte 0
/* SPECIES_CAPSAKID        */ .byte 0
/* SPECIES_SCOVILLAIN      */ .byte 0
/* SPECIES_RELLOR          */ .byte 0
/* SPECIES_RABSCA          */ .byte 0
/* SPECIES_FLITTLE         */ .byte 0
/* SPECIES_ESPATHRA        */ .byte 0
/* SPECIES_TINKATINK       */ .byte 0
/* SPECIES_TINKATUFF       */ .byte 0
/* SPECIES_TINKATON        */ .byte 0
/* SPECIES_WIGLETT         */ .byte 0
/* SPECIES_WUGTRIO         */ .byte 0
/* SPECIES_BOMBIRDIER      */ .byte 0
/* SPECIES_FINIZEN         */ .byte 0
/* SPECIES_PALAFIN         */ .byte 0
/* SPECIES_VAROOM          */ .byte 0
/* SPECIES_REVAVROOM       */ .byte 5
/* SPECIES_CYCLIZAR        */ .byte 0
/* SPECIES_ORTHWORM        */ .byte 0
/* SPECIES_GLIMMET         */ .byte 0
/* SPECIES_GLIMMORA        */ .byte 0
/* SPECIES_GREAVARD        */ .byte 0
/* SPECIES_HOUNDSTONE      */ .byte 0
/* SPECIES_FLAMIGO         */ .byte 0
/* SPECIES_CETODDLE        */ .byte 0
/* SPECIES_CETITAN         */ .byte 0
/* SPECIES_VELUZA          */ .byte 0
/* SPECIES_DONDOZO         */ .byte 0
/* SPECIES_TATSUGIRI       */ .byte 2
/* SPECIES_ANNIHILAPE      */ .byte 0
/* SPECIES_CLODSIRE        */ .byte 0
/* SPECIES_FARIGIRAF       */ .byte 0
/* SPECIES_DUDUNSPARCE     */ .byte 1
/* SPECIES_KINGAMBIT       */ .byte 0
/* SPECIES_GREAT_TUSK      */ .byte 0
/* SPECIES_SCREAM_TAIL     */ .byte 0
/* SPECIES_BRUTE_BONNET    */ .byte 0
/* SPECIES_FLUTTER_MANE    */ .byte 0
/* SPECIES_SLITHER_WING    */ .byte 0
/* SPECIES_SANDY_SHOCKS    */ .byte 0
/* SPECIES_IRON_TREADS     */ .byte 0
/* SPECIES_IRON_BUNDLE     */ .byte 0
/* SPECIES_IRON_HANDS      */ .byte 0
/* SPECIES_IRON_JUGULIS    */ .byte 0
/* SPECIES_IRON_MOTH       */ .byte 0
/* SPECIES_IRON_THORNS     */ .byte 0
/* SPECIES_FRIGIBAX        */ .byte 0
/* SPECIES_ARCTIBAX        */ .byte 0
/* SPECIES_BAXCALIBUR      */ .byte 0
/* SPECIES_GIMMIGHOUL      */ .byte 1
/* SPECIES_GHOLDENGO       */ .byte 0
/* SPECIES_WO_CHIEN        */ .byte 0
/* SPECIES_CHIEN_PAO       */ .byte 0
/* SPECIES_TING_LU         */ .byte 0
/* SPECIES_CHI_YU          */ .byte 0
/* SPECIES_ROARING_MOON    */ .byte 0
/* SPECIES_IRON_VALIANT    */ .byte 0
/* SPECIES_KORAIDON        */ .byte 0
/* SPECIES_MIRAIDON        */ .byte 0
/* SPECIES_WALKING_WAKE    */ .byte 0
/* SPECIES_IRON_LEAVES     */ .byte 0
/* SPECIES_DIPPLIN         */ .byte 0
/* SPECIES_POLTCHAGEIST    */ .byte 0
/* SPECIES_SINISTCHA       */ .byte 0
/* SPECIES_OKIDOGI         */ .byte 0
/* SPECIES_MUNKIDORI       */ .byte 0
/* SPECIES_FEZANDIPITI     */ .byte 0
/* SPECIES_OGERPON         */ .byte 3
/* SPECIES_ARCHALUDON      */ .byte 0
/* SPECIES_HYDRAPPLE       */ .byte 0
/* SPECIES_GOUGING_FIRE    */ .byte 0
/* SPECIES_RAGING_BOLT     */ .byte 0
/* SPECIES_IRON_BOULDER    */ .byte 0
/* SPECIES_IRON_CROWN      */ .byte 0
/* SPECIES_TERAPAGOS       */ .byte 0
/* SPECIES_PECHARUNT       */ .byte 0













.close


// now there is one final thing to take care of:  narc a141.
// personal suspicion is that the OVERWORLD_BOUNCE field does not purely handle overworld bounce

overworlddata SPECIES_BULBASAUR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_IVYSAUR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VENUSAUR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VENUSAUR_OVERWORLD_FEMALE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CHARMANDER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CHARMELEON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CHARIZARD, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SQUIRTLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WARTORTLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BLASTOISE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CATERPIE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_METAPOD, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BUTTERFREE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_WEEDLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KAKUNA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BEEDRILL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_PIDGEY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIDGEOTTO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_PIDGEOT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_RATTATA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RATTATA_ALOLAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RATICATE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RATICATE_ALOLAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SPEAROW, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FEAROW, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_EKANS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ARBOK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKACHU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKACHU_OVERWORLD_FEMALE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKACHU_COSPLAY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKACHU_ROCK_STAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKACHU_BELLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKACHU_POP_STAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKACHU_PH_D, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKACHU_LIBRE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKACHU_ORIGINAL_CAP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKACHU_HOENN_CAP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKACHU_SINNOH_CAP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKACHU_UNOVA_CAP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKACHU_KALOS_CAP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKACHU_ALOLA_CAP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKACHU_PARTNER_CAP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKACHU_WORLD_CAP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKACHU_PARTNER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RAICHU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RAICHU_ALOLAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SANDSHREW, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SANDSHREW_ALOLAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SANDSLASH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SANDSLASH_ALOLAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NIDORAN_F, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NIDORINA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NIDOQUEEN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NIDORAN_M, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NIDORINO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NIDOKING, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CLEFAIRY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CLEFABLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VULPIX, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VULPIX_ALOLAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NINETALES, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NINETALES_ALOLAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_JIGGLYPUFF, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WIGGLYTUFF, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZUBAT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_GOLBAT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ODDISH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GLOOM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VILEPLUME, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PARAS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PARASECT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VENONAT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VENOMOTH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_DIGLETT, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_DIGLETT_ALOLAN, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_DUGTRIO, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_DUGTRIO_ALOLAN, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_MEOWTH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MEOWTH_ALOLAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MEOWTH_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PERSIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PERSIAN_ALOLAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PSYDUCK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOLDUCK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MANKEY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PRIMEAPE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GROWLITHE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GROWLITHE_HISUIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ARCANINE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ARCANINE_HISUIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_POLIWAG, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_POLIWHIRL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_POLIWRATH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ABRA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_KADABRA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ALAKAZAM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MACHOP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MACHOKE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MACHAMP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BELLSPROUT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WEEPINBELL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VICTREEBEL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TENTACOOL, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_TENTACRUEL, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_GEODUDE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GEODUDE_ALOLAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GRAVELER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GRAVELER_ALOLAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOLEM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOLEM_ALOLAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PONYTA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PONYTA_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RAPIDASH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RAPIDASH_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SLOWPOKE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SLOWPOKE_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SLOWBRO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SLOWBRO_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MAGNEMITE, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_MAGNETON, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_FARFETCHD, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FARFETCHD_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DODUO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DODRIO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SEEL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DEWGONG, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GRIMER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GRIMER_ALOLAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MUK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MUK_ALOLAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SHELLDER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CLOYSTER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GASTLY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_HAUNTER, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_GENGAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ONIX, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DROWZEE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HYPNO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KRABBY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KINGLER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VOLTORB, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VOLTORB_HISUIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ELECTRODE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ELECTRODE_HISUIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_EXEGGCUTE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_EXEGGUTOR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_EXEGGUTOR_ALOLAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CUBONE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MAROWAK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MAROWAK_ALOLAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HITMONLEE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HITMONCHAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LICKITUNG, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KOFFING, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_WEEZING, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_WEEZING_GALARIAN, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_RHYHORN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RHYDON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CHANSEY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TANGELA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KANGASKHAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HORSEA, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_SEADRA, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_GOLDEEN, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_SEAKING, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_STARYU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_STARMIE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MR_MIME, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MR_MIME_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SCYTHER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_JYNX, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ELECTABUZZ, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MAGMAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PINSIR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TAUROS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TAUROS_COMBAT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TAUROS_BLAZE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TAUROS_AQUA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MAGIKARP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GYARADOS, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_LAPRAS, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_DITTO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_EEVEE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_EEVEE_PARTNER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VAPOREON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_JOLTEON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLAREON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PORYGON, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_OMANYTE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_OMASTAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KABUTO, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_KABUTOPS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_AERODACTYL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_SNORLAX, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ARTICUNO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARTICUNO_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ZAPDOS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ZAPDOS_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_MOLTRES, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_MOLTRES_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_DRATINI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DRAGONAIR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DRAGONITE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_MEWTWO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MEW, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_CHIKORITA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BAYLEEF, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MEGANIUM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MEGANIUM_OVERWORLD_FEMALE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CYNDAQUIL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_QUILAVA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TYPHLOSION, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TYPHLOSION_HISUIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TOTODILE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CROCONAW, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FERALIGATR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SENTRET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FURRET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HOOTHOOT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NOCTOWL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_LEDYBA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_LEDIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_SPINARAK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ARIADOS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CROBAT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_CHINCHOU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_LANTURN, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_PICHU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PICHU_OVERWORLD_SPIKY_EARED, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CLEFFA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_IGGLYBUFF, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TOGEPI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TOGETIC, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_NATU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_XATU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MAREEP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLAAFFY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_AMPHAROS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BELLOSSOM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MARILL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_AZUMARILL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SUDOWOODO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_POLITOED, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HOPPIP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_SKIPLOOM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_JUMPLUFF, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_AIPOM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SUNKERN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SUNFLORA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_YANMA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_WOOPER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WOOPER_PALDEAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_QUAGSIRE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ESPEON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_UMBREON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MURKROW, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SLOWKING, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SLOWKING_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MISDREAVUS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_UNOWN, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_B, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_C, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_D, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_E, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_F, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_G, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_H, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_I, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_J, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_K, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_L, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_M, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_N, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_O, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_P, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_Q, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_R, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_S, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_T, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_U, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_V, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_W, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_X, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_Y, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_Z, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_EXCLAMATION, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNOWN_OVERWORLD_QUESTION, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_WOBBUFFET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WOBBUFFET_OVERWORLD_FEMALE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GIRAFARIG, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PINECO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FORRETRESS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DUNSPARCE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GLIGAR, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_STEELIX,  OVERWORLD_NO_ENTRY,                    01
overworlddata SPECIES_STEELIX_OVERWORLD_FEMALE,  OVERWORLD_NO_ENTRY,                    01
overworlddata SPECIES_SNUBBULL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GRANBULL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_QWILFISH, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_QWILFISH_HISUIAN, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_SCIZOR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SHUCKLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HERACROSS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HERACROSS_OVERWORLD_FEMALE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SNEASEL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SNEASEL_HISUIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TEDDIURSA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_URSARING, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SLUGMA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MAGCARGO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SWINUB, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PILOSWINE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CORSOLA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CORSOLA_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_REMORAID, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_OCTILLERY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DELIBIRD, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MANTINE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_SKARMORY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_HOUNDOUR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HOUNDOOM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KINGDRA, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_PHANPY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DONPHAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PORYGON2, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_STANTLER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SMEARGLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TYROGUE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HITMONTOP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SMOOCHUM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ELEKID, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MAGBY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MILTANK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BLISSEY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RAIKOU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ENTEI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SUICUNE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LARVITAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PUPITAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TYRANITAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LUGIA,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_HO_OH,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_CELEBI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_TREECKO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GROVYLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SCEPTILE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TORCHIC, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_COMBUSKEN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BLAZIKEN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MUDKIP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MARSHTOMP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SWAMPERT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_POOCHYENA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MIGHTYENA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZIGZAGOON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZIGZAGOON_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LINOONE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LINOONE_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WURMPLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILCOON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BEAUTIFLY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_CASCOON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DUSTOX, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_LOTAD, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LOMBRE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LUDICOLO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SEEDOT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NUZLEAF, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SHIFTRY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TAILLOW, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SWELLOW, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_WINGULL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_PELIPPER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_RALTS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KIRLIA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GARDEVOIR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SURSKIT, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_MASQUERAIN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_SHROOMISH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BRELOOM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SLAKOTH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIGOROTH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SLAKING, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NINCADA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NINJASK, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_SHEDINJA, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_WHISMUR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LOUDRED, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_EXPLOUD, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MAKUHITA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HARIYAMA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_AZURILL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NOSEPASS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SKITTY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DELCATTY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SABLEYE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MAWILE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ARON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LAIRON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_AGGRON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MEDITITE, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_MEDICHAM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ELECTRIKE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MANECTRIC, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PLUSLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MINUN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VOLBEAT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ILLUMISE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ROSELIA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GULPIN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SWALOT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CARVANHA, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_SHARPEDO, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_WAILMER, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_WAILORD,  OVERWORLD_NO_ENTRY,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_NUMEL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CAMERUPT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TORKOAL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SPOINK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GRUMPIG, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SPINDA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TRAPINCH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIBRAVA, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_FLYGON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_CACNEA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CACTURNE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SWABLU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ALTARIA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ZANGOOSE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SEVIPER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LUNATONE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_SOLROCK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_BARBOACH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WHISCASH, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_CORPHISH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CRAWDAUNT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BALTOY, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_CLAYDOL, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_LILEEP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CRADILY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ANORITH, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_ARMALDO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FEEBAS, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_MILOTIC, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_CASTFORM, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_CASTFORM_SUNNY, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_CASTFORM_RAINY, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_CASTFORM_SNOWY, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_KECLEON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SHUPPET, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_BANETTE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DUSKULL, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_DUSCLOPS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TROPIUS, OVERWORLD_CAN_ENTER,                    01
overworlddata SPECIES_CHIMECHO, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_ABSOL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WYNAUT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SNORUNT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GLALIE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SPHEAL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SEALEO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WALREIN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CLAMPERL, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_HUNTAIL, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_GOREBYSS, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_RELICANTH, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_LUVDISC, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_BAGON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SHELGON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SALAMENCE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BELDUM, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_METANG, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_METAGROSS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_REGIROCK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_REGICE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_REGISTEEL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LATIAS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_LATIOS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_KYOGRE,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_GROUDON,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RAYQUAZA,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_JIRACHI, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_DEOXYS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_DEOXYS_OVERWORLD_ATTACK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_DEOXYS_OVERWORLD_DEFENSE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_DEOXYS_OVERWORLD_SPEED, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_TURTWIG, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GROTLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TORTERRA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CHIMCHAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MONFERNO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_INFERNAPE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIPLUP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PRINPLUP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_EMPOLEON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_STARLY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_STARAVIA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_STARAPTOR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_BIDOOF, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BIBAREL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KRICKETOT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KRICKETUNE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SHINX, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LUXIO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LUXRAY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BUDEW, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ROSERADE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CRANIDOS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RAMPARDOS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SHIELDON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BASTIODON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BURMY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BURMY_OVERWORLD_SANDY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BURMY_OVERWORLD_TRASHY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WORMADAM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WORMADAM_OVERWORLD_SANDY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WORMADAM_OVERWORLD_TRASHY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MOTHIM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_COMBEE, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_COMBEE_OVERWORLD_FEMALE, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_VESPIQUEN, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_PACHIRISU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BUIZEL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLOATZEL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CHERUBI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CHERRIM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SHELLOS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SHELLOS_EAST_SEA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GASTRODON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GASTRODON_EAST_SEA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_AMBIPOM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DRIFLOON, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_DRIFBLIM, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_BUNEARY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LOPUNNY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MISMAGIUS, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_HONCHKROW, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GLAMEOW, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PURUGLY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CHINGLING, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_STUNKY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SKUNTANK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BRONZOR, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_BRONZONG, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_BONSLY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MIME_JR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HAPPINY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CHATOT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SPIRITOMB, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_GIBLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GABITE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GARCHOMP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MUNCHLAX, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RIOLU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LUCARIO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HIPPOPOTAS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HIPPOPOTAS_OVERWORLD_FEMALE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HIPPOWDON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HIPPOWDON_OVERWORLD_FEMALE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SKORUPI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DRAPION, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CROAGUNK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TOXICROAK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CARNIVINE, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_FINNEON, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_LUMINEON, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_MANTYKE, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_SNOVER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ABOMASNOW, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WEAVILE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MAGNEZONE, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_LICKILICKY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RHYPERIOR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TANGROWTH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ELECTIVIRE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MAGMORTAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TOGEKISS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_YANMEGA, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_LEAFEON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GLACEON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GLISCOR, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_MAMOSWINE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PORYGON_Z, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_GALLADE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PROBOPASS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DUSKNOIR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FROSLASS, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_ROTOM, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_ROTOM_OVERWORLD_HEAT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ROTOM_OVERWORLD_WASH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ROTOM_OVERWORLD_FROST, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ROTOM_OVERWORLD_FAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ROTOM_OVERWORLD_MOW, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_UXIE, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_MESPRIT, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_AZELF, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_DIALGA,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DIALGA_ORIGIN,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PALKIA,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PALKIA_ORIGIN,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HEATRAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_REGIGIGAS,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GIRATINA,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GIRATINA_OVERWORLD_ORIGIN,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_CRESSELIA, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_PHIONE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MANAPHY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DARKRAI, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_SHAYMIN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SHAYMIN_OVERWORLD_SKY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS_OVERWORLD_FIGHT,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS_OVERWORLD_FLY,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS_OVERWORLD_POISON,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS_OVERWORLD_GROUND,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS_OVERWORLD_ROCK,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS_OVERWORLD_BUG,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS_OVERWORLD_GHOST,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS_OVERWORLD_STEEL,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS_OVERWORLD_FAIRY,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS_OVERWORLD_FIRE,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS_OVERWORLD_WATER,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS_OVERWORLD_GRASS,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS_OVERWORLD_ELECTRIC,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS_OVERWORLD_PSYCHIC,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS_OVERWORLD_ICE,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS_OVERWORLD_DRAGON,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ARCEUS_OVERWORLD_DARK,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_VICTINI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SNIVY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SERVINE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SERPERIOR, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_TEPIG, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIGNITE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_EMBOAR, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_OSHAWOTT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DEWOTT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SAMUROTT, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_SAMUROTT_HISUIAN, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_PATRAT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WATCHOG, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LILLIPUP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HERDIER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_STOUTLAND, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_PURRLOIN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LIEPARD, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PANSAGE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SIMISAGE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PANSEAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SIMISEAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PANPOUR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SIMIPOUR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MUNNA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MUSHARNA, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_PIDOVE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TRANQUILL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_UNFEZANT, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_UNFEZANT_FEMALE, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_BLITZLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZEBSTRIKA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ROGGENROLA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BOLDORE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GIGALITH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_WOOBAT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SWOOBAT, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_DRILBUR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_EXCADRILL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_AUDINO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TIMBURR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GURDURR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CONKELDURR, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_TYMPOLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PALPITOAD, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SEISMITOAD, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_THROH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SAWK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SEWADDLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SWADLOON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LEAVANNY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VENIPEDE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WHIRLIPEDE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SCOLIPEDE, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_COTTONEE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WHIMSICOTT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PETILIL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LILLIGANT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LILLIGANT_HISUIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BASCULIN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BASCULIN_BLUE_STRIPED, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BASCULIN_WHITE_STRIPED, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SANDILE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KROKOROK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KROOKODILE, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_DARUMAKA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DARUMAKA_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DARMANITAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DARMANITAN_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DARMANITAN_ZEN_MODE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DARMANITAN_ZEN_MODE_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MARACTUS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DWEBBLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CRUSTLE, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_SCRAGGY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SCRAFTY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SIGILYPH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_YAMASK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_YAMASK_GALARIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_COFAGRIGUS, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_TIRTOUGA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CARRACOSTA, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_ARCHEN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ARCHEOPS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TRUBBISH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GARBODOR, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_ZORUA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZORUA_HISUIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZOROARK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZOROARK_HISUIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MINCCINO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CINCCINO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOTHITA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOTHORITA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOTHITELLE, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_SOLOSIS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DUOSION, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_REUNICLUS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DUCKLETT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SWANNA, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_VANILLITE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VANILLISH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VANILLUXE, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_DEERLING, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DEERLING_SUMMER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DEERLING_AUTUMN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DEERLING_WINTER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SAWSBUCK, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_SAWSBUCK_SUMMER, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_SAWSBUCK_AUTUMN, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_SAWSBUCK_WINTER, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_EMOLGA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KARRABLAST, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ESCAVALIER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_FOONGUS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_AMOONGUSS, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_FRILLISH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FRILLISH_FEMALE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_JELLICENT, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_JELLICENT_FEMALE, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_ALOMOMOLA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_JOLTIK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GALVANTULA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FERROSEED, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FERROTHORN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_KLINK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KLANG, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KLINKLANG, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_TYNAMO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_EELEKTRIK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_EELEKTROSS, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_ELGYEM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BEHEEYEM, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_LITWICK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LAMPENT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CHANDELURE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_AXEW, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FRAXURE, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_HAXORUS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_CUBCHOO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BEARTIC, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_CRYOGONAL, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_SHELMET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ACCELGOR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_STUNFISK, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_STUNFISK_GALARIAN, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_MIENFOO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MIENSHAO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DRUDDIGON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_GOLETT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOLURK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_PAWNIARD, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BISHARP, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_BOUFFALANT, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_RUFFLET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BRAVIARY, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_BRAVIARY_HISUIAN, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_VULLABY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MANDIBUZZ, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_HEATMOR, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_DURANT, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_DEINO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZWEILOUS, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_HYDREIGON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_LARVESTA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VOLCARONA, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_COBALION, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_TERRAKION, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_VIRIZION, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_TORNADUS,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_TORNADUS_THERIAN,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_THUNDURUS,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_THUNDURUS_THERIAN,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_RESHIRAM,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ZEKROM,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_LANDORUS,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_LANDORUS_THERIAN,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_KYUREM,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_KYUREM_WHITE,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_KYUREM_BLACK,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_KELDEO, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_KELDEO_RESOLUTE, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata SPECIES_MELOETTA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MELOETTA_PIROUETTE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GENESECT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GENESECT_DOUSE_DRIVE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GENESECT_SHOCK_DRIVE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GENESECT_BURN_DRIVE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GENESECT_CHILL_DRIVE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CHESPIN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_QUILLADIN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CHESNAUGHT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FENNEKIN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BRAIXEN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DELPHOX, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FROAKIE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FROGADIER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GRENINJA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BUNNELBY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DIGGERSBY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLETCHLING, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLETCHINDER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TALONFLAME, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SCATTERBUG, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SPEWPA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_POLAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_TUNDRA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_CONTINENTAL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_GARDEN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_ELEGANT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_MEADOW, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_MODERN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_MARINE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_ARCHIPELAGO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_HIGH_PLAINS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_SANDSTORM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_RIVER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_MONSOON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_SAVANNA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_SUN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_OCEAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_JUNGLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_FANCY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIVILLON_POKE_BALL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LITLEO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PYROAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PYROAR_FEMALE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLABEBE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLABEBE_YELLOW_FLOWER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLABEBE_ORANGE_FLOWER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLABEBE_BLUE_FLOWER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLABEBE_WHITE_FLOWER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLOETTE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLOETTE_YELLOW_FLOWER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLOETTE_ORANGE_FLOWER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLOETTE_BLUE_FLOWER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLOETTE_WHITE_FLOWER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLOETTE_ETERNAL_FLOWER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLORGES, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLORGES_YELLOW_FLOWER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLORGES_ORANGE_FLOWER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLORGES_BLUE_FLOWER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLORGES_WHITE_FLOWER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_SKIDDO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOGOAT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PANCHAM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PANGORO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FURFROU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FURFROU_HEART, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FURFROU_STAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FURFROU_DIAMOND, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FURFROU_DEBUTANTE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FURFROU_MATRON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FURFROU_DANDY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FURFROU_LA_REINE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FURFROU_KABUKI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FURFROU_PHARAOH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ESPURR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MEOWSTIC, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MEOWSTIC_FEMALE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HONEDGE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DOUBLADE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_AEGISLASH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SPRITZEE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_AROMATISSE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SWIRLIX, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SLURPUFF, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_INKAY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MALAMAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BINACLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BARBARACLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SKRELP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DRAGALGE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CLAUNCHER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CLAWITZER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HELIOPTILE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HELIOLISK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TYRUNT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TYRANTRUM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_AMAURA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_AURORUS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SYLVEON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HAWLUCHA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DEDENNE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CARBINK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOOMY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SLIGGOO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SLIGGOO_HISUIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOODRA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOODRA_HISUIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KLEFKI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PHANTUMP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TREVENANT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PUMPKABOO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PUMPKABOO_SMALL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PUMPKABOO_LARGE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PUMPKABOO_SUPER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOURGEIST, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOURGEIST_SMALL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOURGEIST_LARGE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOURGEIST_SUPER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BERGMITE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_AVALUGG, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_AVALUGG_HISUIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NOIBAT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NOIVERN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_XERNEAS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_YVELTAL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZYGARDE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZYGARDE_10, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZYGARDE_10_POWER_CONSTRUCT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZYGARDE_50_POWER_CONSTRUCT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZYGARDE_10_COMPLETE,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_ZYGARDE_50_COMPLETE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DIANCIE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HOOPA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HOOPA_UNBOUND, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VOLCANION, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ROWLET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DARTRIX, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DECIDUEYE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DECIDUEYE_HISUIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LITTEN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TORRACAT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_INCINEROAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_POPPLIO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BRIONNE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PRIMARINA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PIKIPEK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TRUMBEAK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TOUCANNON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_YUNGOOS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GUMSHOOS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GRUBBIN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CHARJABUG, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VIKAVOLT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CRABRAWLER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CRABOMINABLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ORICORIO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ORICORIO_POM_POM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ORICORIO_PAU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ORICORIO_SENSU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CUTIEFLY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RIBOMBEE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ROCKRUFF, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ROCKRUFF_OWN_TEMPO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LYCANROC, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LYCANROC_MIDNIGHT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LYCANROC_DUSK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WISHIWASHI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WISHIWASHI_SCHOOL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MAREANIE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TOXAPEX, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MUDBRAY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MUDSDALE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DEWPIDER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ARAQUANID, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FOMANTIS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LURANTIS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MORELULL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SHIINOTIC, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SALANDIT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SALAZZLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_STUFFUL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BEWEAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BOUNSWEET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_STEENEE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TSAREENA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_COMFEY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ORANGURU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PASSIMIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WIMPOD, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOLISOPOD, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SANDYGAST, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PALOSSAND, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PYUKUMUKU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TYPE_NULL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY_OVERWORLD_FIGHT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY_OVERWORLD_FLY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY_OVERWORLD_POISON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY_OVERWORLD_GROUND, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY_OVERWORLD_ROCK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY_OVERWORLD_BUG, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY_OVERWORLD_GHOST, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY_OVERWORLD_STEEL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY_OVERWORLD_FAIRY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY_OVERWORLD_FIRE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY_OVERWORLD_WATER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY_OVERWORLD_GRASS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY_OVERWORLD_ELECTRIC, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY_OVERWORLD_PSYCHIC, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY_OVERWORLD_ICE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY_OVERWORLD_DRAGON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILVALLY_OVERWORLD_DARK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MINIOR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MINIOR_METEOR_ORANGE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MINIOR_METEOR_YELLOW, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MINIOR_METEOR_GREEN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MINIOR_METEOR_BLUE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MINIOR_METEOR_INDIGO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MINIOR_METEOR_VIOLET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KOMALA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TURTONATOR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TOGEDEMARU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MIMIKYU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BRUXISH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DRAMPA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DHELMISE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_JANGMO_O, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HAKAMO_O, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KOMMO_O, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TAPU_KOKO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TAPU_LELE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TAPU_BULU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TAPU_FINI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_COSMOG, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_COSMOEM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SOLGALEO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LUNALA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NIHILEGO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BUZZWOLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PHEROMOSA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_XURKITREE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CELESTEELA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KARTANA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GUZZLORD, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NECROZMA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NECROZMA_DUSK_MANE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NECROZMA_DAWN_WINGS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MAGEARNA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MAGEARNA_ORIGINAL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MARSHADOW, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_POIPOLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NAGANADEL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_STAKATAKA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BLACEPHALON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZERAORA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MELTAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MELMETAL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GROOKEY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_THWACKEY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RILLABOOM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SCORBUNNY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RABOOT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CINDERACE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SOBBLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DRIZZILE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_INTELEON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SKWOVET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GREEDENT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ROOKIDEE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CORVISQUIRE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CORVIKNIGHT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BLIPBUG, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DOTTLER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ORBEETLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NICKIT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_THIEVUL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOSSIFLEUR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ELDEGOSS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WOOLOO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DUBWOOL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CHEWTLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DREDNAW, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_YAMPER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BOLTUND, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ROLYCOLY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CARKOL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_COALOSSAL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_APPLIN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLAPPLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_APPLETUN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SILICOBRA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SANDACONDA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CRAMORANT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ARROKUDA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BARRASKEWDA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TOXEL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TOXTRICITY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TOXTRICITY_LOW_KEY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SIZZLIPEDE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CENTISKORCH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CLOBBOPUS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GRAPPLOCT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SINISTEA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SINISTEA_ANTIQUE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_POLTEAGEIST, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_POLTEAGEIST_ANTIQUE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HATENNA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HATTREM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HATTERENE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_IMPIDIMP, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MORGREM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GRIMMSNARL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_OBSTAGOON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PERRSERKER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CURSOLA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SIRFETCHD, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MR_RIME, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RUNERIGUS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MILCERY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ALCREMIE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ALCREMIE_BERRY_SWEET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ALCREMIE_LOVE_SWEET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ALCREMIE_STAR_SWEET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ALCREMIE_CLOVER_SWEET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ALCREMIE_FLOWER_SWEET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ALCREMIE_RIBBON_SWEET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ALCREMIE_FILLER_1, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ALCREMIE_FILLER_2, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FALINKS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PINCURCHIN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SNOM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FROSMOTH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_STONJOURNER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_EISCUE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_INDEEDEE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_INDEEDEE_FEMALE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MORPEKO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CUFANT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_COPPERAJAH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DRACOZOLT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ARCTOZOLT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DRACOVISH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ARCTOVISH,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_DURALUDON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DREEPY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DRAKLOAK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DRAGAPULT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZACIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZAMAZENTA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ETERNATUS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KUBFU,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_URSHIFU,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_URSHIFU_RAPID_STRIKE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZARUDE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ZARUDE_DADA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_REGIELEKI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_REGIDRAGO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GLASTRIER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SPECTRIER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CALYREX, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CALYREX_ICE_RIDER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CALYREX_SHADOW_RIDER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WYRDEER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KLEAVOR,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_URSALUNA,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata SPECIES_URSALUNA_BLOODMOON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BASCULEGION, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BASCULEGION_FEMALE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SNEASLER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_OVERQWIL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ENAMORUS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ENAMORUS_THERIAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SPRIGATITO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLORAGATO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MEOWSCARADA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FUECOCO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CROCALOR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SKELEDIRGE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_QUAXLY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_QUAXWELL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_QUAQUAVAL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LECHONK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_OINKOLOGNE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_OINKOLOGNE_FEMALE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TAROUNTULA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SPIDOPS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NYMBLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_LOKIX, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PAWMI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PAWMO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PAWMOT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TANDEMAUS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MAUSHOLD, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MAUSHOLD_FAMILY_OF_THREE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FIDOUGH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DACHSBUN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SMOLIV, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DOLLIV, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ARBOLIVA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SQUAWKABILLY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SQUAWKABILLY_BLUE_PLUMAGE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SQUAWKABILLY_YELLOW_PLUMAGE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SQUAWKABILLY_WHITE_PLUMAGE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NACLI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_NACLSTACK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GARGANACL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CHARCADET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ARMAROUGE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CERULEDGE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TADBULB, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BELLIBOLT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WATTREL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KILOWATTREL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MASCHIFF, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MABOSSTIFF, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SHROODLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GRAFAIAI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BRAMBLIN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BRAMBLEGHAST, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TOEDSCOOL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TOEDSCRUEL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KLAWF, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CAPSAKID, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SCOVILLAIN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RELLOR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RABSCA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLITTLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ESPATHRA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TINKATINK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TINKATUFF, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TINKATON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WIGLETT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WUGTRIO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BOMBIRDIER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FINIZEN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PALAFIN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VAROOM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_REVAVROOM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_REVAVROOM_SEGIN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_REVAVROOM_SCHEDAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_REVAVROOM_NAVI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_REVAVROOM_RUCHBAH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_REVAVROOM_CAPH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CYCLIZAR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ORTHWORM, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GLIMMET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GLIMMORA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GREAVARD, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HOUNDSTONE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLAMIGO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CETODDLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CETITAN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_VELUZA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DONDOZO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TATSUGIRI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TATSUGIRI_DROOPY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TATSUGIRI_STRETCHY, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ANNIHILAPE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CLODSIRE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FARIGIRAF, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DUDUNSPARCE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DUDUNSPARCE_THREE_SEGMENT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KINGAMBIT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GREAT_TUSK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SCREAM_TAIL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BRUTE_BONNET, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FLUTTER_MANE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SLITHER_WING, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SANDY_SHOCKS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_IRON_TREADS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_IRON_BUNDLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_IRON_HANDS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_IRON_JUGULIS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_IRON_MOTH, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_IRON_THORNS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FRIGIBAX, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ARCTIBAX, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_BAXCALIBUR, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GIMMIGHOUL, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GIMMIGHOUL_ROAMING, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GHOLDENGO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WO_CHIEN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CHIEN_PAO, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TING_LU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_CHI_YU, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ROARING_MOON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_IRON_VALIANT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_KORAIDON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MIRAIDON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_WALKING_WAKE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_IRON_LEAVES, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_DIPPLIN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_POLTCHAGEIST, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_SINISTCHA, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_OKIDOGI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_MUNKIDORI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_FEZANDIPITI, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_OGERPON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_OGERPON_WELLSPRING_MASK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_OGERPON_HEARTHFLAME_MASK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_OGERPON_CORNERSTONE_MASK, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_ARCHALUDON, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_HYDRAPPLE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_GOUGING_FIRE, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_RAGING_BOLT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_IRON_BOULDER, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_IRON_CROWN, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_TERAPAGOS, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata SPECIES_PECHARUNT, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
