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
/* SPECIES_MIMEJR          */ .byte 0
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
/* SPECIES_DEOXYS_ATTACK   */ .byte 0
/* SPECIES_DEOXYS_DEFENSE  */ .byte 0
/* SPECIES_DEOXYS_SPEED    */ .byte 0
/* SPECIES_WORMADAM_SANDY  */ .byte 0
/* SPECIES_WORMADAM_TRASHY */ .byte 0
/* SPECIES_GIRATINA_ORIGIN */ .byte 0
/* SPECIES_SHAYMIN_SKY     */ .byte 0
/* SPECIES_ROTOM_HEAT      */ .byte 0
/* SPECIES_ROTOM_WASH      */ .byte 0
/* SPECIES_ROTOM_FROST     */ .byte 0
/* SPECIES_ROTOM_FAN       */ .byte 0
/* SPECIES_ROTOM_MOW       */ .byte 0
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
/* SPECIES_MIMEJR          */ .byte 0
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
/* SPECIES_DEOXYS_ATTACK   */ .byte 0
/* SPECIES_DEOXYS_DEFENSE  */ .byte 0
/* SPECIES_DEOXYS_SPEED    */ .byte 0
/* SPECIES_WORMADAM_SANDY  */ .byte 0
/* SPECIES_WORMADAM_TRASHY */ .byte 0
/* SPECIES_GIRATINA_ORIGIN */ .byte 0
/* SPECIES_SHAYMIN_SKY     */ .byte 0
/* SPECIES_ROTOM_HEAT      */ .byte 0
/* SPECIES_ROTOM_WASH      */ .byte 0
/* SPECIES_ROTOM_FROST     */ .byte 0
/* SPECIES_ROTOM_FAN       */ .byte 0
/* SPECIES_ROTOM_MOW       */ .byte 0
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

overworlddata    0, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BULBASAUR
overworlddata    1, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_IVYSAUR
overworlddata    2, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VENUSAUR
overworlddata    3, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // female
overworlddata    4, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CHARMANDER
overworlddata    5, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CHARMELEON
overworlddata    6, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CHARIZARD
overworlddata    7, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SQUIRTLE
overworlddata    8, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WARTORTLE
overworlddata    9, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BLASTOISE
overworlddata   10, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CATERPIE
overworlddata   11, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_METAPOD
overworlddata   12, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_BUTTERFREE
overworlddata   13, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WEEDLE
overworlddata   14, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KAKUNA
overworlddata   15, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_BEEDRILL
overworlddata   16, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PIDGEY
overworlddata   17, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_PIDGEOTTO
overworlddata   18, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_PIDGEOT
overworlddata   19, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RATTATA
overworlddata   20, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // alola
overworlddata   21, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RATICATE
overworlddata   22, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // alola
overworlddata   23, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SPEAROW
overworlddata   24, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_FEAROW
overworlddata   25, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_EKANS
overworlddata   26, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ARBOK
overworlddata   27, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PIKACHU
overworlddata   28, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // female
overworlddata   29, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // cosplay
overworlddata   30, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // rock star
overworlddata   31, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // belle
overworlddata   32, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // pop star
overworlddata   33, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // ph. d
overworlddata   34, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // libre
overworlddata   35, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // original cap
overworlddata   36, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // hoenn cap
overworlddata   37, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // sinnoh cap
overworlddata   38, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // unova cap
overworlddata   39, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // kalos cap
overworlddata   40, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // alola cap
overworlddata   41, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // partner cap
overworlddata   42, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // world cap
overworlddata   43, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // partner pikachu
overworlddata   44, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RAICHU
overworlddata   45, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // alola
overworlddata   46, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SANDSHREW
overworlddata   47, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // alola
overworlddata   48, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SANDSLASH
overworlddata   49, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // alola
overworlddata   50, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NIDORAN_F
overworlddata   51, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NIDORINA
overworlddata   52, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NIDOQUEEN
overworlddata   53, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NIDORAN_M
overworlddata   54, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NIDORINO
overworlddata   55, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NIDOKING
overworlddata   56, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CLEFAIRY
overworlddata   57, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CLEFABLE
overworlddata   58, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VULPIX
overworlddata   59, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // alola
overworlddata   60, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NINETALES
overworlddata   61, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // alola
overworlddata   62, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_JIGGLYPUFF
overworlddata   63, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WIGGLYTUFF
overworlddata   64, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_ZUBAT
overworlddata   65, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_GOLBAT
overworlddata   66, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ODDISH
overworlddata   67, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GLOOM
overworlddata   68, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VILEPLUME
overworlddata   69, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PARAS
overworlddata   70, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PARASECT
overworlddata   71, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VENONAT
overworlddata   72, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_VENOMOTH
overworlddata   73, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_DIGLETT
overworlddata   74, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // alola
overworlddata   75, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_DUGTRIO
overworlddata   76, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // alola
overworlddata   77, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MEOWTH
overworlddata   78, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // alola
overworlddata   79, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // galar
overworlddata   80, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PERSIAN
overworlddata   81, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // alola
overworlddata   82, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PSYDUCK
overworlddata   83, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GOLDUCK
overworlddata   84, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MANKEY
overworlddata   85, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PRIMEAPE
overworlddata   86, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GROWLITHE
overworlddata   87, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // hisui
overworlddata   88, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ARCANINE
overworlddata   89, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // hisui
overworlddata   90, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_POLIWAG
overworlddata   91, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_POLIWHIRL
overworlddata   92, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_POLIWRATH
overworlddata   93, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_ABRA
overworlddata   94, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KADABRA
overworlddata   95, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ALAKAZAM
overworlddata   96, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MACHOP
overworlddata   97, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MACHOKE
overworlddata   98, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MACHAMP
overworlddata   99, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BELLSPROUT
overworlddata  100, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WEEPINBELL
overworlddata  101, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VICTREEBEL
overworlddata  102, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_TENTACOOL
overworlddata  103, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_TENTACRUEL
overworlddata  104, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GEODUDE
overworlddata  105, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // alola
overworlddata  106, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GRAVELER
overworlddata  107, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // alola
overworlddata  108, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GOLEM
overworlddata  109, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // alola
overworlddata  110, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PONYTA
overworlddata  111, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // galar
overworlddata  112, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RAPIDASH
overworlddata  113, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // galar
overworlddata  114, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SLOWPOKE
overworlddata  115, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // galar
overworlddata  116, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SLOWBRO
overworlddata  117, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // galar
overworlddata  118, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_MAGNEMITE
overworlddata  119, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_MAGNETON
overworlddata  120, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FARFETCHD
overworlddata  121, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // galar
overworlddata  122, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DODUO
overworlddata  123, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DODRIO
overworlddata  124, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SEEL
overworlddata  125, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DEWGONG
overworlddata  126, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GRIMER
overworlddata  127, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // alola
overworlddata  128, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MUK
overworlddata  129, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // alola
overworlddata  130, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SHELLDER
overworlddata  131, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CLOYSTER
overworlddata  132, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_GASTLY
overworlddata  133, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_HAUNTER
overworlddata  134, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GENGAR
overworlddata  135, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ONIX
overworlddata  136, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DROWZEE
overworlddata  137, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HYPNO
overworlddata  138, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KRABBY
overworlddata  139, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KINGLER
overworlddata  140, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VOLTORB
overworlddata  141, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // hisui
overworlddata  142, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ELECTRODE
overworlddata  143, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // hisui
overworlddata  144, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_EXEGGCUTE
overworlddata  145, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_EXEGGUTOR
overworlddata  146, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // alola
overworlddata  147, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CUBONE
overworlddata  148, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MAROWAK
overworlddata  149, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // alola
overworlddata  150, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HITMONLEE
overworlddata  151, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HITMONCHAN
overworlddata  152, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LICKITUNG
overworlddata  153, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_KOFFING
overworlddata  154, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_WEEZING
overworlddata  155, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // galar
overworlddata  156, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RHYHORN
overworlddata  157, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RHYDON
overworlddata  158, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CHANSEY
overworlddata  159, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TANGELA
overworlddata  160, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KANGASKHAN
overworlddata  161, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_HORSEA
overworlddata  162, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_SEADRA
overworlddata  163, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_GOLDEEN
overworlddata  164, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_SEAKING
overworlddata  165, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_STARYU
overworlddata  166, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_STARMIE
overworlddata  167, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MR_MIME
overworlddata  168, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // galar
overworlddata  169, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SCYTHER
overworlddata  170, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_JYNX
overworlddata  171, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ELECTABUZZ
overworlddata  172, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MAGMAR
overworlddata  173, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PINSIR
overworlddata  174, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TAUROS
overworlddata  175, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // combat
overworlddata  176, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // blaze
overworlddata  177, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // aqua
overworlddata  178, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MAGIKARP
overworlddata  179, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_GYARADOS
overworlddata  180, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_LAPRAS
overworlddata  181, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DITTO
overworlddata  182, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_EEVEE
overworlddata  183, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // partner
overworlddata  184, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VAPOREON
overworlddata  185, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_JOLTEON
overworlddata  186, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FLAREON
overworlddata  187, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_PORYGON
overworlddata  188, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_OMANYTE
overworlddata  189, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_OMASTAR
overworlddata  190, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_KABUTO
overworlddata  191, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KABUTOPS
overworlddata  192, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_AERODACTYL
overworlddata  193, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SNORLAX
overworlddata  194, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_ARTICUNO
overworlddata  195, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // galar
overworlddata  196, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_ZAPDOS
overworlddata  197, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // galar
overworlddata  198, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_MOLTRES
overworlddata  199, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // galar
overworlddata  200, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DRATINI
overworlddata  201, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DRAGONAIR
overworlddata  202, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_DRAGONITE
overworlddata  203, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MEWTWO
overworlddata  204, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_MEW
overworlddata  205, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CHIKORITA
overworlddata  206, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BAYLEEF
overworlddata  207, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MEGANIUM
overworlddata  208, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // female
overworlddata  209, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CYNDAQUIL
overworlddata  210, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_QUILAVA
overworlddata  211, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TYPHLOSION
overworlddata  212, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // hisui
overworlddata  213, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TOTODILE
overworlddata  214, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CROCONAW
overworlddata  215, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FERALIGATR
overworlddata  216, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SENTRET
overworlddata  217, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FURRET
overworlddata  218, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HOOTHOOT
overworlddata  219, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_NOCTOWL
overworlddata  220, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_LEDYBA
overworlddata  221, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_LEDIAN
overworlddata  222, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SPINARAK
overworlddata  223, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ARIADOS
overworlddata  224, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_CROBAT
overworlddata  225, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_CHINCHOU
overworlddata  226, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_LANTURN
overworlddata  227, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PICHU
overworlddata  228, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // spiky-eared
overworlddata  229, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CLEFFA
overworlddata  230, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_IGGLYBUFF
overworlddata  231, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TOGEPI
overworlddata  232, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_TOGETIC
overworlddata  233, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NATU
overworlddata  234, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_XATU
overworlddata  235, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MAREEP
overworlddata  236, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FLAAFFY
overworlddata  237, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_AMPHAROS
overworlddata  238, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BELLOSSOM
overworlddata  239, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MARILL
overworlddata  240, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_AZUMARILL
overworlddata  241, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SUDOWOODO
overworlddata  242, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_POLITOED
overworlddata  243, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_HOPPIP
overworlddata  244, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_SKIPLOOM
overworlddata  245, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_JUMPLUFF
overworlddata  246, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_AIPOM
overworlddata  247, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SUNKERN
overworlddata  248, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SUNFLORA
overworlddata  249, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_YANMA
overworlddata  250, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WOOPER
overworlddata  251, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // paldean
overworlddata  252, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_QUAGSIRE
overworlddata  253, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ESPEON
overworlddata  254, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_UMBREON
overworlddata  255, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MURKROW
overworlddata  256, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SLOWKING
overworlddata  257, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // galar
overworlddata  258, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_MISDREAVUS
overworlddata  259, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_UNOWN
overworlddata  260, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // b
overworlddata  261, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // c
overworlddata  262, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // d
overworlddata  263, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // e
overworlddata  264, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // f
overworlddata  265, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // g
overworlddata  266, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // h
overworlddata  267, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // i
overworlddata  268, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // j
overworlddata  269, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // k
overworlddata  270, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // l
overworlddata  271, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // m
overworlddata  272, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // n
overworlddata  273, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // o
overworlddata  274, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // p
overworlddata  275, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // q
overworlddata  276, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // r
overworlddata  277, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // s
overworlddata  278, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // t
overworlddata  279, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // u
overworlddata  280, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // v
overworlddata  281, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // w
overworlddata  282, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // x
overworlddata  283, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // y
overworlddata  284, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // z
overworlddata  285, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // !
overworlddata  286, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // ?
overworlddata  287, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WOBBUFFET
overworlddata  288, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // female
overworlddata  289, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GIRAFARIG
overworlddata  290, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PINECO
overworlddata  291, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FORRETRESS
overworlddata  292, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DUNSPARCE
overworlddata  293, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_GLIGAR
overworlddata  294,  OVERWORLD_NO_ENTRY,                    01 // SPECIES_STEELIX
overworlddata  295,  OVERWORLD_NO_ENTRY,                    01 // female
overworlddata  296, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SNUBBULL
overworlddata  297, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GRANBULL
overworlddata  298, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_QWILFISH
overworlddata  299, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // hisui
overworlddata  300, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SCIZOR
overworlddata  301, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SHUCKLE
overworlddata  302, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HERACROSS
overworlddata  303, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // female
overworlddata  304, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SNEASEL
overworlddata  305, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // hisui
overworlddata  306, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TEDDIURSA
overworlddata  307, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_URSARING
overworlddata  308, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SLUGMA
overworlddata  309, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MAGCARGO
overworlddata  310, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SWINUB
overworlddata  311, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PILOSWINE
overworlddata  312, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CORSOLA
overworlddata  313, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // galar
overworlddata  314, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_REMORAID
overworlddata  315, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_OCTILLERY
overworlddata  316, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DELIBIRD
overworlddata  317, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_MANTINE
overworlddata  318, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_SKARMORY
overworlddata  319, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HOUNDOUR
overworlddata  320, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HOUNDOOM
overworlddata  321, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_KINGDRA
overworlddata  322, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PHANPY
overworlddata  323, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DONPHAN
overworlddata  324, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_PORYGON2
overworlddata  325, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_STANTLER
overworlddata  326, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SMEARGLE
overworlddata  327, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TYROGUE
overworlddata  328, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HITMONTOP
overworlddata  329, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SMOOCHUM
overworlddata  330, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ELEKID
overworlddata  331, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MAGBY
overworlddata  332, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MILTANK
overworlddata  333, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BLISSEY
overworlddata  334, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RAIKOU
overworlddata  335, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ENTEI
overworlddata  336, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SUICUNE
overworlddata  337, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LARVITAR
overworlddata  338, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PUPITAR
overworlddata  339, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TYRANITAR
overworlddata  340,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // SPECIES_LUGIA
overworlddata  341,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // SPECIES_HO_OH
overworlddata  342, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_CELEBI
overworlddata  343, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TREECKO
overworlddata  344, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GROVYLE
overworlddata  345, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SCEPTILE
overworlddata  346, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TORCHIC
overworlddata  347, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_COMBUSKEN
overworlddata  348, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BLAZIKEN
overworlddata  349, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MUDKIP
overworlddata  350, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MARSHTOMP
overworlddata  351, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SWAMPERT
overworlddata  352, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_POOCHYENA
overworlddata  353, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MIGHTYENA
overworlddata  354, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ZIGZAGOON
overworlddata  355, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // galar
overworlddata  356, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LINOONE
overworlddata  357, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // galar
overworlddata  358, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WURMPLE
overworlddata  359, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SILCOON
overworlddata  360, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_BEAUTIFLY
overworlddata  361, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CASCOON
overworlddata  362, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_DUSTOX
overworlddata  363, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LOTAD
overworlddata  364, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LOMBRE
overworlddata  365, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LUDICOLO
overworlddata  366, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SEEDOT
overworlddata  367, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NUZLEAF
overworlddata  368, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SHIFTRY
overworlddata  369, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TAILLOW
overworlddata  370, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_SWELLOW
overworlddata  371, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_WINGULL
overworlddata  372, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_PELIPPER
overworlddata  373, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RALTS
overworlddata  374, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KIRLIA
overworlddata  375, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GARDEVOIR
overworlddata  376, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_SURSKIT
overworlddata  377, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_MASQUERAIN
overworlddata  378, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SHROOMISH
overworlddata  379, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BRELOOM
overworlddata  380, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SLAKOTH
overworlddata  381, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VIGOROTH
overworlddata  382, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SLAKING
overworlddata  383, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NINCADA
overworlddata  384, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_NINJASK
overworlddata  385, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_SHEDINJA
overworlddata  386, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WHISMUR
overworlddata  387, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LOUDRED
overworlddata  388, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_EXPLOUD
overworlddata  389, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MAKUHITA
overworlddata  390, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HARIYAMA
overworlddata  391, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_AZURILL
overworlddata  392, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NOSEPASS
overworlddata  393, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SKITTY
overworlddata  394, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DELCATTY
overworlddata  395, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SABLEYE
overworlddata  396, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MAWILE
overworlddata  397, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ARON
overworlddata  398, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LAIRON
overworlddata  399, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_AGGRON
overworlddata  400, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_MEDITITE
overworlddata  401, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MEDICHAM
overworlddata  402, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ELECTRIKE
overworlddata  403, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MANECTRIC
overworlddata  404, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PLUSLE
overworlddata  405, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MINUN
overworlddata  406, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_VOLBEAT
overworlddata  407, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_ILLUMISE
overworlddata  408, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ROSELIA
overworlddata  409, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GULPIN
overworlddata  410, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SWALOT
overworlddata  411, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_CARVANHA
overworlddata  412, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_SHARPEDO
overworlddata  413, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_WAILMER
overworlddata  414,  OVERWORLD_NO_ENTRY,  OVERWORLD_BOUNCE_MED // SPECIES_WAILORD
overworlddata  415, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NUMEL
overworlddata  416, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CAMERUPT
overworlddata  417, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TORKOAL
overworlddata  418, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SPOINK
overworlddata  419, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GRUMPIG
overworlddata  420, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SPINDA
overworlddata  421, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TRAPINCH
overworlddata  422, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_VIBRAVA
overworlddata  423, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_FLYGON
overworlddata  424, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CACNEA
overworlddata  425, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CACTURNE
overworlddata  426, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_SWABLU
overworlddata  427, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_ALTARIA
overworlddata  428, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ZANGOOSE
overworlddata  429, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SEVIPER
overworlddata  430, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_LUNATONE
overworlddata  431, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_SOLROCK
overworlddata  432, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BARBOACH
overworlddata  433, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_WHISCASH
overworlddata  434, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CORPHISH
overworlddata  435, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CRAWDAUNT
overworlddata  436, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_BALTOY
overworlddata  437, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_CLAYDOL
overworlddata  438, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LILEEP
overworlddata  439, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CRADILY
overworlddata  440, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_ANORITH
overworlddata  441, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ARMALDO
overworlddata  442, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_FEEBAS
overworlddata  443, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_MILOTIC
overworlddata  444, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_CASTFORM
overworlddata  445, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // sunny
overworlddata  446, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // rainy
overworlddata  447, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // snowy
overworlddata  448, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KECLEON
overworlddata  449, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_SHUPPET
overworlddata  450, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BANETTE
overworlddata  451, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_DUSKULL
overworlddata  452, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DUSCLOPS
overworlddata  453, OVERWORLD_CAN_ENTER,                    01 // SPECIES_TROPIUS
overworlddata  454, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_CHIMECHO
overworlddata  455, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ABSOL
overworlddata  456, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WYNAUT
overworlddata  457, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SNORUNT
overworlddata  458, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GLALIE
overworlddata  459, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SPHEAL
overworlddata  460, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SEALEO
overworlddata  461, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WALREIN
overworlddata  462, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_CLAMPERL
overworlddata  463, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_HUNTAIL
overworlddata  464, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_GOREBYSS
overworlddata  465, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_RELICANTH
overworlddata  466, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_LUVDISC
overworlddata  467, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BAGON
overworlddata  468, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SHELGON
overworlddata  469, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SALAMENCE
overworlddata  470, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_BELDUM
overworlddata  471, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_METANG
overworlddata  472, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_METAGROSS
overworlddata  473, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_REGIROCK
overworlddata  474, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_REGICE
overworlddata  475, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_REGISTEEL
overworlddata  476, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_LATIAS
overworlddata  477, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_LATIOS
overworlddata  478,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // SPECIES_KYOGRE
overworlddata  479,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST // SPECIES_GROUDON
overworlddata  480,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // SPECIES_RAYQUAZA
overworlddata  481, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_JIRACHI
overworlddata  482, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_DEOXYS
overworlddata  483, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // attack
overworlddata  484, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // defense
overworlddata  485, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // speed
overworlddata  486, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TURTWIG
overworlddata  487, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GROTLE
overworlddata  488, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TORTERRA
overworlddata  489, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CHIMCHAR
overworlddata  490, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MONFERNO
overworlddata  491, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_INFERNAPE
overworlddata  492, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PIPLUP
overworlddata  493, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PRINPLUP
overworlddata  494, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_EMPOLEON
overworlddata  495, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_STARLY
overworlddata  496, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_STARAVIA
overworlddata  497, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_STARAPTOR
overworlddata  498, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BIDOOF
overworlddata  499, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BIBAREL
overworlddata  500, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KRICKETOT
overworlddata  501, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KRICKETUNE
overworlddata  502, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SHINX
overworlddata  503, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LUXIO
overworlddata  504, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LUXRAY
overworlddata  505, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BUDEW
overworlddata  506, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ROSERADE
overworlddata  507, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CRANIDOS
overworlddata  508, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RAMPARDOS
overworlddata  509, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SHIELDON
overworlddata  510, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BASTIODON
overworlddata  511, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BURMY
overworlddata  512, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // sandy
overworlddata  513, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // trash
overworlddata  514, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WORMADAM
overworlddata  515, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // sandy
overworlddata  516, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // trash
overworlddata  517, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_MOTHIM
overworlddata  518, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_COMBEE
overworlddata  519, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // female
overworlddata  520, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_VESPIQUEN
overworlddata  521, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PACHIRISU
overworlddata  522, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BUIZEL
overworlddata  523, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FLOATZEL
overworlddata  524, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CHERUBI
overworlddata  525, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CHERRIM
overworlddata  526, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SHELLOS
overworlddata  527, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // east sea
overworlddata  528, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GASTRODON
overworlddata  529, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // east sea
overworlddata  530, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_AMBIPOM
overworlddata  531, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_DRIFLOON
overworlddata  532, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_DRIFBLIM
overworlddata  533, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BUNEARY
overworlddata  534, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LOPUNNY
overworlddata  535, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_MISMAGIUS
overworlddata  536, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HONCHKROW
overworlddata  537, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GLAMEOW
overworlddata  538, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PURUGLY
overworlddata  539, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CHINGLING
overworlddata  540, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_STUNKY
overworlddata  541, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SKUNTANK
overworlddata  542, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_BRONZOR
overworlddata  543, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_BRONZONG
overworlddata  544, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BONSLY
overworlddata  545, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MIMEJR
overworlddata  546, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HAPPINY
overworlddata  547, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CHATOT
overworlddata  548, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_SPIRITOMB
overworlddata  549, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GIBLE
overworlddata  550, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GABITE
overworlddata  551, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GARCHOMP
overworlddata  552, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MUNCHLAX
overworlddata  553, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RIOLU
overworlddata  554, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LUCARIO
overworlddata  555, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HIPPOPOTAS
overworlddata  556, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // female
overworlddata  557, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HIPPOWDON
overworlddata  558, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // female
overworlddata  559, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SKORUPI
overworlddata  560, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DRAPION
overworlddata  561, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CROAGUNK
overworlddata  562, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TOXICROAK
overworlddata  563, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_CARNIVINE
overworlddata  564, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_FINNEON
overworlddata  565, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_LUMINEON
overworlddata  566, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_MANTYKE
overworlddata  567, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SNOVER
overworlddata  568, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ABOMASNOW
overworlddata  569, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WEAVILE
overworlddata  570, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_MAGNEZONE
overworlddata  571, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LICKILICKY
overworlddata  572, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RHYPERIOR
overworlddata  573, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TANGROWTH
overworlddata  574, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ELECTIVIRE
overworlddata  575, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MAGMORTAR
overworlddata  576, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_TOGEKISS
overworlddata  577, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_YANMEGA
overworlddata  578, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LEAFEON
overworlddata  579, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GLACEON
overworlddata  580, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_GLISCOR
overworlddata  581, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MAMOSWINE
overworlddata  582, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_PORYGON_Z
overworlddata  583, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GALLADE
overworlddata  584, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PROBOPASS
overworlddata  585, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DUSKNOIR
overworlddata  586, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_FROSLASS
overworlddata  587, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_ROTOM
overworlddata  588, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // heat
overworlddata  589, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // wash
overworlddata  590, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // fridge
overworlddata  591, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // fan
overworlddata  592, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // lawn mower
overworlddata  593, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_UXIE
overworlddata  594, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_MESPRIT
overworlddata  595, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_AZELF
overworlddata  596,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST // SPECIES_DIALGA
overworlddata  597,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST // origin
overworlddata  598,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST // SPECIES_PALKIA
overworlddata  599,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST // origin
overworlddata  600, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HEATRAN
overworlddata  601,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST // SPECIES_REGIGIGAS
overworlddata  602,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST // SPECIES_GIRATINA
overworlddata  603,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // origin
overworlddata  604, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_CRESSELIA
overworlddata  605, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PHIONE
overworlddata  606, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MANAPHY
overworlddata  607, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_DARKRAI
overworlddata  608, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SHAYMIN
overworlddata  609, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // sky
overworlddata  610,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // SPECIES_ARCEUS
overworlddata  611,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // fight
overworlddata  612,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // fly
overworlddata  613,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // poison
overworlddata  614,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // ground
overworlddata  615,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // rock
overworlddata  616,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // bug
overworlddata  617,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // ghost
overworlddata  618,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // steel
overworlddata  619,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // fairy
overworlddata  620,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // fire
overworlddata  621,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // water
overworlddata  622,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // grass
overworlddata  623,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // electric
overworlddata  624,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // psychic
overworlddata  625,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // ice
overworlddata  626,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // dragon
overworlddata  627,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // dark
overworlddata  628, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VICTINI
overworlddata  629, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SNIVY
overworlddata  630, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SERVINE
overworlddata  631, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_SERPERIOR
overworlddata  632, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TEPIG
overworlddata  633, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PIGNITE
overworlddata  634, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_EMBOAR
overworlddata  635, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_OSHAWOTT
overworlddata  636, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DEWOTT
overworlddata  637, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_SAMUROTT
overworlddata  638, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // hisui
overworlddata  639, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PATRAT
overworlddata  640, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WATCHOG
overworlddata  641, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LILLIPUP
overworlddata  642, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HERDIER
overworlddata  643, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_STOUTLAND
overworlddata  644, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PURRLOIN
overworlddata  645, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LIEPARD
overworlddata  646, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PANSAGE
overworlddata  647, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SIMISAGE
overworlddata  648, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PANSEAR
overworlddata  649, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SIMISEAR
overworlddata  650, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PANPOUR
overworlddata  651, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SIMIPOUR
overworlddata  652, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MUNNA
overworlddata  653, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_MUSHARNA
overworlddata  654, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PIDOVE
overworlddata  655, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TRANQUILL
overworlddata  656, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_UNFEZANT
overworlddata  657, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // female
overworlddata  658, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BLITZLE
overworlddata  659, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ZEBSTRIKA
overworlddata  660, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ROGGENROLA
overworlddata  661, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BOLDORE
overworlddata  662, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_GIGALITH
overworlddata  663, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WOOBAT
overworlddata  664, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_SWOOBAT
overworlddata  665, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DRILBUR
overworlddata  666, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_EXCADRILL
overworlddata  667, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_AUDINO
overworlddata  668, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TIMBURR
overworlddata  669, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GURDURR
overworlddata  670, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_CONKELDURR
overworlddata  671, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TYMPOLE
overworlddata  672, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PALPITOAD
overworlddata  673, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SEISMITOAD
overworlddata  674, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_THROH
overworlddata  675, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SAWK
overworlddata  676, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SEWADDLE
overworlddata  677, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SWADLOON
overworlddata  678, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LEAVANNY
overworlddata  679, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VENIPEDE
overworlddata  680, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WHIRLIPEDE
overworlddata  681, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_SCOLIPEDE
overworlddata  682, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_COTTONEE
overworlddata  683, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WHIMSICOTT
overworlddata  684, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PETILIL
overworlddata  685, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LILLIGANT
overworlddata  686, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // hisui
overworlddata  687, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BASCULIN
overworlddata  688, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // blue stripe
overworlddata  689, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // white stripe
overworlddata  690, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SANDILE
overworlddata  691, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KROKOROK
overworlddata  692, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_KROOKODILE
overworlddata  693, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DARUMAKA
overworlddata  694, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // galar
overworlddata  695, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DARMANITAN
overworlddata  696, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // galar
overworlddata  697, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // zen mode
overworlddata  698, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // galar zen mode
overworlddata  699, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MARACTUS
overworlddata  700, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DWEBBLE
overworlddata  701, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_CRUSTLE
overworlddata  702, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SCRAGGY
overworlddata  703, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SCRAFTY
overworlddata  704, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SIGILYPH
overworlddata  705, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_YAMASK
overworlddata  706, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // galar
overworlddata  707, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_COFAGRIGUS
overworlddata  708, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TIRTOUGA
overworlddata  709, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_CARRACOSTA
overworlddata  710, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ARCHEN
overworlddata  711, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ARCHEOPS
overworlddata  712, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TRUBBISH
overworlddata  713, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_GARBODOR
overworlddata  714, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ZORUA
overworlddata  715, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // hisui
overworlddata  716, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ZOROARK
overworlddata  717, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // hisui
overworlddata  718, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MINCCINO
overworlddata  719, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CINCCINO
overworlddata  720, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GOTHITA
overworlddata  721, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GOTHORITA
overworlddata  722, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_GOTHITELLE
overworlddata  723, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SOLOSIS
overworlddata  724, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_DUOSION
overworlddata  725, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_REUNICLUS
overworlddata  726, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DUCKLETT
overworlddata  727, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_SWANNA
overworlddata  728, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VANILLITE
overworlddata  729, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VANILLISH
overworlddata  730, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_VANILLUXE
overworlddata  731, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DEERLING
overworlddata  732, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // summer
overworlddata  733, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // fall
overworlddata  734, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // winter
overworlddata  735, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_SAWSBUCK
overworlddata  736, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // summer
overworlddata  737, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // fall
overworlddata  738, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // winter
overworlddata  739, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_EMOLGA
overworlddata  740, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KARRABLAST
overworlddata  741, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_ESCAVALIER
overworlddata  742, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FOONGUS
overworlddata  743, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_AMOONGUSS
overworlddata  744, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FRILLISH
overworlddata  745, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // female
overworlddata  746, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_JELLICENT
overworlddata  747, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // female
overworlddata  748, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ALOMOMOLA
overworlddata  749, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_JOLTIK
overworlddata  750, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GALVANTULA
overworlddata  751, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FERROSEED
overworlddata  752, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_FERROTHORN
overworlddata  753, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KLINK
overworlddata  754, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KLANG
overworlddata  755, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_KLINKLANG
overworlddata  756, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TYNAMO
overworlddata  757, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_EELEKTRIK
overworlddata  758, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_EELEKTROSS
overworlddata  759, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ELGYEM
overworlddata  760, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_BEHEEYEM
overworlddata  761, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LITWICK
overworlddata  762, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LAMPENT
overworlddata  763, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_CHANDELURE
overworlddata  764, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_AXEW
overworlddata  765, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_FRAXURE
overworlddata  766, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_HAXORUS
overworlddata  767, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CUBCHOO
overworlddata  768, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_BEARTIC
overworlddata  769, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_CRYOGONAL
overworlddata  770, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SHELMET
overworlddata  771, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ACCELGOR
overworlddata  772, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_STUNFISK
overworlddata  773, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // galar
overworlddata  774, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MIENFOO
overworlddata  775, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MIENSHAO
overworlddata  776, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_DRUDDIGON
overworlddata  777, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GOLETT
overworlddata  778, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_GOLURK
overworlddata  779, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PAWNIARD
overworlddata  780, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_BISHARP
overworlddata  781, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_BOUFFALANT
overworlddata  782, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RUFFLET
overworlddata  783, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_BRAVIARY
overworlddata  784, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // hisui
overworlddata  785, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VULLABY
overworlddata  786, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_MANDIBUZZ
overworlddata  787, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_HEATMOR
overworlddata  788, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_DURANT
overworlddata  789, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DEINO
overworlddata  790, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_ZWEILOUS
overworlddata  791, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_HYDREIGON
overworlddata  792, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LARVESTA
overworlddata  793, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_VOLCARONA
overworlddata  794, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_COBALION
overworlddata  795, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_TERRAKION
overworlddata  796, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_VIRIZION
overworlddata  797,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // SPECIES_TORNADUS
overworlddata  798,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // therian
overworlddata  799,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // SPECIES_THUNDURUS
overworlddata  800,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // therian
overworlddata  801,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // SPECIES_RESHIRAM
overworlddata  802,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // SPECIES_ZEKROM
overworlddata  803,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // SPECIES_LANDORUS
overworlddata  804,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // therian
overworlddata  805,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // SPECIES_KYUREM
overworlddata  806,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // white
overworlddata  807,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // black
overworlddata  808, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // SPECIES_KELDEO
overworlddata  809, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED // resolute
overworlddata  810, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MELOETTA
overworlddata  811, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // pirouette
overworlddata  812, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GENESECT
overworlddata  813, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CHESPIN
overworlddata  814, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_QUILLADIN
overworlddata  815, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CHESNAUGHT
overworlddata  816, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FENNEKIN
overworlddata  817, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BRAIXEN
overworlddata  818, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DELPHOX
overworlddata  819, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FROAKIE
overworlddata  820, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FROGADIER
overworlddata  821, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GRENINJA
overworlddata  822, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BUNNELBY
overworlddata  823, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DIGGERSBY
overworlddata  824, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FLETCHLING
overworlddata  825, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FLETCHINDER
overworlddata  826, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TALONFLAME
overworlddata  827, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SCATTERBUG
overworlddata  828, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SPEWPA
overworlddata  829, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VIVILLON
overworlddata  830, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // polar
overworlddata  831, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // tundra
overworlddata  832, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // continental
overworlddata  833, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // garden
overworlddata  834, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // elegant
overworlddata  835, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // meadow
overworlddata  836, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // modern
overworlddata  837, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // marine
overworlddata  838, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // archipelago
overworlddata  839, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // high plains
overworlddata  840, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // sandstorm
overworlddata  841, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // river
overworlddata  842, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // monsoon
overworlddata  843, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // savanna
overworlddata  844, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // sun
overworlddata  845, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // ocean
overworlddata  846, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // jungle
overworlddata  847, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // fancy
overworlddata  848, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // poké ball
overworlddata  849, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LITLEO
overworlddata  850, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PYROAR
overworlddata  851, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // female
overworlddata  852, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FLABEBE
overworlddata  853, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // yellow
overworlddata  854, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // orange
overworlddata  855, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // blue
overworlddata  856, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // white
overworlddata  857, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FLOETTE
overworlddata  858, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // yellow
overworlddata  859, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // orange
overworlddata  860, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // blue
overworlddata  861, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // white
overworlddata  862, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // eternal
overworlddata  863, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FLORGES
overworlddata  864, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // yellow
overworlddata  865, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // orange
overworlddata  866, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // blue
overworlddata  867, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // white
overworlddata  868, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SKIDDO
overworlddata  869, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GOGOAT
overworlddata  870, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PANCHAM
overworlddata  871, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW // SPECIES_PANGORO
overworlddata  872, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FURFROU
overworlddata  873, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // heart
overworlddata  874, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // star
overworlddata  875, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // diamond
overworlddata  876, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // debutante
overworlddata  877, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // matron
overworlddata  878, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // dandy
overworlddata  879, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // la reine
overworlddata  880, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // kabuki
overworlddata  881, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // pharaoh
overworlddata  882, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ESPURR
overworlddata  883, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MEOWSTIC
overworlddata  884, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // female
overworlddata  885, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HONEDGE
overworlddata  886, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DOUBLADE
overworlddata  887, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_AEGISLASH
overworlddata  888, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SPRITZEE
overworlddata  889, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_AROMATISSE
overworlddata  890, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SWIRLIX
overworlddata  891, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SLURPUFF
overworlddata  892, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_INKAY
overworlddata  893, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MALAMAR
overworlddata  894, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BINACLE
overworlddata  895, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BARBARACLE
overworlddata  896, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SKRELP
overworlddata  897, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DRAGALGE
overworlddata  898, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CLAUNCHER
overworlddata  899, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CLAWITZER
overworlddata  900, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HELIOPTILE
overworlddata  901, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HELIOLISK
overworlddata  902, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TYRUNT
overworlddata  903, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TYRANTRUM
overworlddata  904, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_AMAURA
overworlddata  905, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_AURORUS
overworlddata  906, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SYLVEON
overworlddata  907, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HAWLUCHA
overworlddata  908, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DEDENNE
overworlddata  909, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CARBINK
overworlddata  910, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GOOMY
overworlddata  911, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SLIGGOO
overworlddata  912, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // hisui
overworlddata  913, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GOODRA
overworlddata  914, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // hisui
overworlddata  915, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KLEFKI
overworlddata  916, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PHANTUMP
overworlddata  917, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TREVENANT
overworlddata  918, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PUMPKABOO
overworlddata  919, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // small
overworlddata  920, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // large
overworlddata  921, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // super
overworlddata  922, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GOURGEIST
overworlddata  923, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // small
overworlddata  924, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // large
overworlddata  925, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // super
overworlddata  926, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BERGMITE
overworlddata  927, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_AVALUGG
overworlddata  928, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // hisui
overworlddata  929, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NOIBAT
overworlddata  930, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NOIVERN
overworlddata  931, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_XERNEAS
overworlddata  932, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_YVELTAL
overworlddata  933, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ZYGARDE
overworlddata  934, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // 10
overworlddata  935, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // 10 power construct?
overworlddata  936, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // 50 power construct?
overworlddata  937, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // 10 complete?
overworlddata  938, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // 50 complete?
overworlddata  939, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DIANCIE
overworlddata  940, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HOOPA
overworlddata  941,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // unbound
overworlddata  942, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VOLCANION
overworlddata  943, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ROWLET
overworlddata  944, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DARTRIX
overworlddata  945, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DECIDUEYE
overworlddata  946, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // hisui
overworlddata  947, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LITTEN
overworlddata  948, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TORRACAT
overworlddata  949, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_INCINEROAR
overworlddata  950, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_POPPLIO
overworlddata  951, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BRIONNE
overworlddata  952, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PRIMARINA
overworlddata  953, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PIKIPEK
overworlddata  954, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TRUMBEAK
overworlddata  955, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TOUCANNON
overworlddata  956, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_YUNGOOS
overworlddata  957, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GUMSHOOS
overworlddata  958, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GRUBBIN
overworlddata  959, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CHARJABUG
overworlddata  960, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VIKAVOLT
overworlddata  961, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CRABRAWLER
overworlddata  962, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CRABOMINABLE
overworlddata  963, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ORICORIO
overworlddata  964, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // pom pom
overworlddata  965, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // psu
overworlddata  966, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // sensu
overworlddata  967, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CUTIEFLY
overworlddata  968, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RIBOMBEE
overworlddata  969, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ROCKRUFF
overworlddata  970, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // own tempo
overworlddata  971, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LYCANROC
overworlddata  972, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // midnight
overworlddata  973, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // dusk
overworlddata  974, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WISHIWASHI
overworlddata  975, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MAREANIE
overworlddata  976, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TOXAPEX
overworlddata  977, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MUDBRAY
overworlddata  978, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MUDSDALE
overworlddata  979, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DEWPIDER
overworlddata  980, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ARAQUANID
overworlddata  981, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FOMANTIS
overworlddata  982, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LURANTIS
overworlddata  983, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MORELULL
overworlddata  984, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SHIINOTIC
overworlddata  985, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SALANDIT
overworlddata  986, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SALAZZLE
overworlddata  987, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_STUFFUL
overworlddata  988, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BEWEAR
overworlddata  989, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BOUNSWEET
overworlddata  990, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_STEENEE
overworlddata  991, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TSAREENA
overworlddata  992, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_COMFEY
overworlddata  993, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ORANGURU
overworlddata  994, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PASSIMIAN
overworlddata  995, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WIMPOD
overworlddata  996, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GOLISOPOD
overworlddata  997, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SANDYGAST
overworlddata  998, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PALOSSAND
overworlddata  999, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PYUKUMUKU
overworlddata 1000, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TYPE_NULL
overworlddata 1001, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SILVALLY
overworlddata 1002, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // fighting
overworlddata 1003, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // flying
overworlddata 1004, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // poison
overworlddata 1005, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // ground
overworlddata 1006, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // rock
overworlddata 1007, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // bug
overworlddata 1008, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // ghost
overworlddata 1009, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // steel
overworlddata 1010, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // fairy
overworlddata 1011, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // fire
overworlddata 1012, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // water
overworlddata 1013, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // grass
overworlddata 1014, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // electric
overworlddata 1015, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // psychic
overworlddata 1016, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // ice
overworlddata 1017, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // dragon
overworlddata 1018, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // dark
overworlddata 1019, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MINIOR
overworlddata 1020, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // orange
overworlddata 1021, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // yellow
overworlddata 1022, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // green
overworlddata 1023, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // blue
overworlddata 1024, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // indigo
overworlddata 1025, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // violet
overworlddata 1026, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KOMALA
overworlddata 1027, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TURTONATOR
overworlddata 1028, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TOGEDEMARU
overworlddata 1029, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MIMIKYU
overworlddata 1030, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BRUXISH
overworlddata 1031, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DRAMPA
overworlddata 1032, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DHELMISE
overworlddata 1033, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_JANGMO_O
overworlddata 1034, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HAKAMO_O
overworlddata 1035, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KOMMO_O
overworlddata 1036, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TAPU_KOKO
overworlddata 1037, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TAPU_LELE
overworlddata 1038, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TAPU_BULU
overworlddata 1039, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TAPU_FINI
overworlddata 1040, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_COSMOG
overworlddata 1041, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_COSMOEM
overworlddata 1042, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SOLGALEO
overworlddata 1043, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LUNALA
overworlddata 1044, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NIHILEGO
overworlddata 1045, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BUZZWOLE
overworlddata 1046, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PHEROMOSA
overworlddata 1047, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_XURKITREE
overworlddata 1048, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CELESTEELA
overworlddata 1049, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KARTANA
overworlddata 1050, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GUZZLORD
overworlddata 1051, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NECROZMA
overworlddata 1052, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // dusk mane
overworlddata 1053, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // dawn wings
overworlddata 1054, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MAGEARNA
overworlddata 1055, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // original color
overworlddata 1056, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MARSHADOW
overworlddata 1057, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_POIPOLE
overworlddata 1058, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NAGANADEL
overworlddata 1059, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_STAKATAKA
overworlddata 1060, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BLACEPHALON
overworlddata 1061, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ZERAORA
overworlddata 1062, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MELTAN
overworlddata 1063, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MELMETAL
overworlddata 1064, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GROOKEY
overworlddata 1065, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_THWACKEY
overworlddata 1066, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RILLABOOM
overworlddata 1067, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SCORBUNNY
overworlddata 1068, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RABOOT
overworlddata 1069, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CINDERACE
overworlddata 1070, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SOBBLE
overworlddata 1071, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DRIZZILE
overworlddata 1072, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_INTELEON
overworlddata 1073, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SKWOVET
overworlddata 1074, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GREEDENT
overworlddata 1075, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ROOKIDEE
overworlddata 1076, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CORVISQUIRE
overworlddata 1077, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CORVIKNIGHT
overworlddata 1078, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BLIPBUG
overworlddata 1079, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DOTTLER
overworlddata 1080, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ORBEETLE
overworlddata 1081, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NICKIT
overworlddata 1082, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_THIEVUL
overworlddata 1083, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GOSSIFLEUR
overworlddata 1084, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ELDEGOSS
overworlddata 1085, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WOOLOO
overworlddata 1086, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DUBWOOL
overworlddata 1087, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CHEWTLE
overworlddata 1088, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DREDNAW
overworlddata 1089, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_YAMPER
overworlddata 1090, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BOLTUND
overworlddata 1091, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ROLYCOLY
overworlddata 1092, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CARKOL
overworlddata 1093, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_COALOSSAL
overworlddata 1094, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_APPLIN
overworlddata 1095, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FLAPPLE
overworlddata 1096, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_APPLETUN
overworlddata 1097, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SILICOBRA
overworlddata 1098, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SANDACONDA
overworlddata 1099, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CRAMORANT
overworlddata 1100, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ARROKUDA
overworlddata 1101, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BARRASKEWDA
overworlddata 1102, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TOXEL
overworlddata 1103, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TOXTRICITY
overworlddata 1104, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // low key
overworlddata 1105, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SIZZLIPEDE
overworlddata 1106, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CENTISKORCH
overworlddata 1107, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CLOBBOPUS
overworlddata 1108, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GRAPPLOCT
overworlddata 1109, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SINISTEA
overworlddata 1110, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // antique
overworlddata 1111, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_POLTEAGEIST
overworlddata 1112, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // antique
overworlddata 1113, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HATENNA
overworlddata 1114, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HATTREM
overworlddata 1115, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HATTERENE
overworlddata 1116, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_IMPIDIMP
overworlddata 1117, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MORGREM
overworlddata 1118, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GRIMMSNARL
overworlddata 1119, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_OBSTAGOON
overworlddata 1120, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PERRSERKER
overworlddata 1121, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CURSOLA
overworlddata 1122, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SIRFETCHD
overworlddata 1123, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MR_RIME
overworlddata 1124, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RUNERIGUS
overworlddata 1125, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MILCERY
overworlddata 1126, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ALCREMIE
overworlddata 1127, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // berry sweet
overworlddata 1128, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // love sweet
overworlddata 1129, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // star sweet
overworlddata 1130, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // clover sweet
overworlddata 1131, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // flower sweet
overworlddata 1132, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // ribbon sweet
overworlddata 1133, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FALINKS
overworlddata 1134, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PINCURCHIN
overworlddata 1135, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SNOM
overworlddata 1136, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FROSMOTH
overworlddata 1137, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_STONJOURNER
overworlddata 1138, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_EISCUE
overworlddata 1139, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_INDEEDEE
overworlddata 1140, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // female
overworlddata 1141, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MORPEKO
overworlddata 1142, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CUFANT
overworlddata 1143, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_COPPERAJAH
overworlddata 1144, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DRACOZOLT
overworlddata 1145, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ARCTOZOLT
overworlddata 1146, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DRACOVISH
overworlddata 1147, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ARCTOVISH
overworlddata 1148, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DURALUDON
overworlddata 1149, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DREEPY
overworlddata 1150, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DRAKLOAK
overworlddata 1151, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DRAGAPULT
overworlddata 1152, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ZACIAN
overworlddata 1153, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ZAMAZENTA
overworlddata 1154,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // SPECIES_ETERNATUS
overworlddata 1155, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KUBFU
overworlddata 1156, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_URSHIFU
overworlddata 1157, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // rapid strike
overworlddata 1158, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ZARUDE
overworlddata 1159, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // dada
overworlddata 1160, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_REGIELEKI
overworlddata 1161, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_REGIDRAGO
overworlddata 1162,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // SPECIES_GLASTRIER
overworlddata 1163,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // SPECIES_SPECTRIER
overworlddata 1164, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CALYREX
overworlddata 1165, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // ice rider
overworlddata 1166, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // shadow rider
overworlddata 1167, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WYRDEER
overworlddata 1168, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KLEAVOR
overworlddata 1169, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_URSALUNA
overworlddata 1170, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // bloodmoon
overworlddata 1171, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BASCULEGION
overworlddata 1172, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // female
overworlddata 1173, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SNEASLER
overworlddata 1174, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_OVERQWIL
overworlddata 1175,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // SPECIES_ENAMORUS
overworlddata 1176,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW // therian
overworlddata 1177, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SPRIGATITO
overworlddata 1178, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FLORAGATO
overworlddata 1179, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MEOWSCARADA
overworlddata 1180, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FUECOCO
overworlddata 1181, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CROCALOR
overworlddata 1182, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SKELEDIRGE
overworlddata 1183, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_QUAXLY
overworlddata 1184, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_QUAXWELL
overworlddata 1185, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_QUAQUAVAL
overworlddata 1186, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LECHONK
overworlddata 1187, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_OINKOLOGNE
overworlddata 1188, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // female
overworlddata 1189, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TAROUNTULA
overworlddata 1190, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SPIDOPS
overworlddata 1191, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NYMBLE
overworlddata 1192, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_LOKIX
overworlddata 1193, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PAWMI
overworlddata 1194, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PAWMO
overworlddata 1195, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PAWMOT
overworlddata 1196, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TANDEMAUS
overworlddata 1197, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MAUSHOLD
overworlddata 1198, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // family of three
overworlddata 1199, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FIDOUGH
overworlddata 1200, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DACHSBUN
overworlddata 1201, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SMOLIV
overworlddata 1202, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DOLLIV
overworlddata 1203, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ARBOLIVA
overworlddata 1204, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SQUAWKABILLY
overworlddata 1205, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // blue
overworlddata 1206, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // yellow
overworlddata 1207, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // white
overworlddata 1208, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NACLI
overworlddata 1209, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_NACLSTACK
overworlddata 1210, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GARGANACL
overworlddata 1211, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CHARCADET
overworlddata 1212, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ARMAROUGE
overworlddata 1213, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CERULEDGE
overworlddata 1214, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TADBULB
overworlddata 1215, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BELLIBOLT
overworlddata 1216, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WATTREL
overworlddata 1217, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KILOWATTREL
overworlddata 1218, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MASCHIFF
overworlddata 1219, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MABOSSTIFF
overworlddata 1220, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SHROODLE
overworlddata 1221, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GRAFAIAI
overworlddata 1222, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BRAMBLIN
overworlddata 1223, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BRAMBLEGHAST
overworlddata 1224, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TOEDSCOOL
overworlddata 1225, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TOEDSCRUEL
overworlddata 1226, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KLAWF
overworlddata 1227, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CAPSAKID
overworlddata 1228, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SCOVILLAIN
overworlddata 1229, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RELLOR
overworlddata 1230, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RABSCA
overworlddata 1231, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FLITTLE
overworlddata 1232, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ESPATHRA
overworlddata 1233, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TINKATINK
overworlddata 1234, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TINKATUFF
overworlddata 1235, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TINKATON
overworlddata 1236, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WIGLETT
overworlddata 1237, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WUGTRIO
overworlddata 1238, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BOMBIRDIER
overworlddata 1239, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FINIZEN
overworlddata 1240, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PALAFIN
overworlddata 1241, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VAROOM
overworlddata 1242, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_REVAVROOM
overworlddata 1243, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // segin
overworlddata 1244, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // schedar
overworlddata 1245, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // navi
overworlddata 1246, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // ruchbah
overworlddata 1247, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // caph
overworlddata 1248, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CYCLIZAR
overworlddata 1249, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ORTHWORM
overworlddata 1250, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GLIMMET
overworlddata 1251, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GLIMMORA
overworlddata 1252, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GREAVARD
overworlddata 1253, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HOUNDSTONE
overworlddata 1254, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FLAMIGO
overworlddata 1255, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CETODDLE
overworlddata 1256, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CETITAN
overworlddata 1257, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_VELUZA
overworlddata 1258, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DONDOZO
overworlddata 1259, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TATSUGIRI
overworlddata 1260, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // droopy
overworlddata 1261, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // stretchy
overworlddata 1262, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ANNIHILAPE
overworlddata 1263, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CLODSIRE
overworlddata 1264, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FARIGIRAF
overworlddata 1265, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DUDUNSPARCE
overworlddata 1266, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // three segment
overworlddata 1267, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KINGAMBIT
overworlddata 1268, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GREAT_TUSK
overworlddata 1269, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SCREAM_TAIL
overworlddata 1270, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BRUTE_BONNET
overworlddata 1271, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FLUTTER_MANE
overworlddata 1272, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SLITHER_WING
overworlddata 1273, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SANDY_SHOCKS
overworlddata 1274, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_IRON_TREADS
overworlddata 1275, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_IRON_BUNDLE
overworlddata 1276, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_IRON_HANDS
overworlddata 1277, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_IRON_JUGULIS
overworlddata 1278, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_IRON_MOTH
overworlddata 1279, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_IRON_THORNS
overworlddata 1280, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FRIGIBAX
overworlddata 1281, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ARCTIBAX
overworlddata 1282, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_BAXCALIBUR
overworlddata 1283, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GIMMIGHOUL
overworlddata 1284, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // roaming
overworlddata 1285, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GHOLDENGO
overworlddata 1286, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WO_CHIEN
overworlddata 1287, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CHIEN_PAO
overworlddata 1288, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TING_LU
overworlddata 1289, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_CHI_YU
overworlddata 1290, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ROARING_MOON
overworlddata 1291, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_IRON_VALIANT
overworlddata 1292, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_KORAIDON
overworlddata 1293, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MIRAIDON
overworlddata 1294, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_WALKING_WAKE
overworlddata 1295, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_IRON_LEAVES
overworlddata 1296, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_DIPPLIN
overworlddata 1297, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_POLTCHAGEIST
overworlddata 1298, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_SINISTCHA
overworlddata 1299, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_OKIDOGI
overworlddata 1300, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_MUNKIDORI
overworlddata 1301, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_FEZANDIPITI
overworlddata 1302, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_OGERPON
overworlddata 1303, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // cornerstone
overworlddata 1304, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // hearthflame
overworlddata 1305, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // wellspring
overworlddata 1306, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_ARCHALUDON
overworlddata 1307, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_HYDRAPPLE
overworlddata 1308, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_GOUGING_FIRE
overworlddata 1309, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_RAGING_BOLT
overworlddata 1310, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_IRON_BOULDER
overworlddata 1311, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_IRON_CROWN
overworlddata 1312, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_TERAPAGOS
overworlddata 1313, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // SPECIES_PECHARUNT