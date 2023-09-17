.nds
.thumb

.include "armips/include/macros.s"
.include "armips/include/monnums.s"
.include "armips/include/itemnums.s"
.include "armips/include/constants.s"
.include "armips/include/abilities.s"
.include "armips/include/config.s"
.include "armips/data/tmlearnset.s"

// all the mon personal data.  tm learnsets are specifically in tmlearnset.s
// basestats and evyields fields are formatted as such:  hp atk def speed spatk spdef


mondata SPECIES_NONE, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_NONE, ""
    mondexclassification SPECIES_NONE, "????? Pokémon"
    mondexheight SPECIES_NONE, "???’??”"
    mondexweight SPECIES_NONE, "????.? lbs."


mondata SPECIES_BULBASAUR, "Bulbasaur"
	basestats 45, 49, 49, 45, 65, 65
	types TYPE_GRASS, TYPE_POISON
	catchrate 195
	baseexp 64// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_OVERGROW
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_BULBASAUR_TM_DATA_0, SPECIES_BULBASAUR_TM_DATA_1, SPECIES_BULBASAUR_TM_DATA_2, SPECIES_BULBASAUR_TM_DATA_3
	mondexentry SPECIES_BULBASAUR, ""
	mondexclassification SPECIES_BULBASAUR, ""
	mondexheight SPECIES_BULBASAUR, ""
	mondexweight SPECIES_BULBASAUR, ""


mondata SPECIES_IVYSAUR, "Ivysaur"
	basestats 60, 62, 63, 60, 80, 80
	types TYPE_GRASS, TYPE_POISON
	catchrate 195
	baseexp 141// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_OVERGROW
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_IVYSAUR_TM_DATA_0, SPECIES_IVYSAUR_TM_DATA_1, SPECIES_IVYSAUR_TM_DATA_2, SPECIES_IVYSAUR_TM_DATA_3
	mondexentry SPECIES_IVYSAUR, ""
	mondexclassification SPECIES_IVYSAUR, ""
	mondexheight SPECIES_IVYSAUR, ""
	mondexweight SPECIES_IVYSAUR, ""


mondata SPECIES_VENUSAUR, "Venusaur"
	basestats 80, 82, 83, 80, 100, 100
	types TYPE_GRASS, TYPE_POISON
	catchrate 195
	baseexp 208// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_OVERGROW
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_VENUSAUR_TM_DATA_0, SPECIES_VENUSAUR_TM_DATA_1, SPECIES_VENUSAUR_TM_DATA_2, SPECIES_VENUSAUR_TM_DATA_3
	mondexentry SPECIES_VENUSAUR, ""
	mondexclassification SPECIES_VENUSAUR, ""
	mondexheight SPECIES_VENUSAUR, ""
	mondexweight SPECIES_VENUSAUR, ""


mondata SPECIES_CHARMANDER, "Charmander"
	basestats 39, 52, 43, 65, 60, 50
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 65// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
	abilities ABILITY_SOLAR_POWER, ABILITY_BLAZE
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_CHARMANDER_TM_DATA_0, SPECIES_CHARMANDER_TM_DATA_1, SPECIES_CHARMANDER_TM_DATA_2, SPECIES_CHARMANDER_TM_DATA_3
	mondexentry SPECIES_CHARMANDER, ""
	mondexclassification SPECIES_CHARMANDER, ""
	mondexheight SPECIES_CHARMANDER, ""
	mondexweight SPECIES_CHARMANDER, ""


mondata SPECIES_CHARMELEON, "Charmeleon"
	basestats 58, 64, 58, 80, 80, 65
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 142// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
	abilities ABILITY_SOLAR_POWER, ABILITY_BLAZE
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_CHARMELEON_TM_DATA_0, SPECIES_CHARMELEON_TM_DATA_1, SPECIES_CHARMELEON_TM_DATA_2, SPECIES_CHARMELEON_TM_DATA_3
	mondexentry SPECIES_CHARMELEON, ""
	mondexclassification SPECIES_CHARMELEON, ""
	mondexheight SPECIES_CHARMELEON, ""
	mondexweight SPECIES_CHARMELEON, ""


mondata SPECIES_CHARIZARD, "Charizard"
	basestats 78, 84, 78, 100, 109, 85
	types TYPE_FIRE, TYPE_FLYING
	catchrate 195
	baseexp 209// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
	abilities ABILITY_SOLAR_POWER, ABILITY_BLAZE
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_CHARIZARD_TM_DATA_0, SPECIES_CHARIZARD_TM_DATA_1, SPECIES_CHARIZARD_TM_DATA_2, SPECIES_CHARIZARD_TM_DATA_3
	mondexentry SPECIES_CHARIZARD, ""
	mondexclassification SPECIES_CHARIZARD, ""
	mondexheight SPECIES_CHARIZARD, ""
	mondexweight SPECIES_CHARIZARD, ""


mondata SPECIES_SQUIRTLE, "Squirtle"
	basestats 44, 48, 65, 43, 50, 64
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 66// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
	abilities ABILITY_SHELL_ARMOR, ABILITY_TORRENT
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_SQUIRTLE_TM_DATA_0, SPECIES_SQUIRTLE_TM_DATA_1, SPECIES_SQUIRTLE_TM_DATA_2, SPECIES_SQUIRTLE_TM_DATA_3
	mondexentry SPECIES_SQUIRTLE, ""
	mondexclassification SPECIES_SQUIRTLE, ""
	mondexheight SPECIES_SQUIRTLE, ""
	mondexweight SPECIES_SQUIRTLE, ""


mondata SPECIES_WARTORTLE, "Wartortle"
	basestats 59, 63, 80, 58, 65, 80
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 143// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
	abilities ABILITY_SHELL_ARMOR, ABILITY_TORRENT
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_WARTORTLE_TM_DATA_0, SPECIES_WARTORTLE_TM_DATA_1, SPECIES_WARTORTLE_TM_DATA_2, SPECIES_WARTORTLE_TM_DATA_3
	mondexentry SPECIES_WARTORTLE, ""
	mondexclassification SPECIES_WARTORTLE, ""
	mondexheight SPECIES_WARTORTLE, ""
	mondexweight SPECIES_WARTORTLE, ""


mondata SPECIES_BLASTOISE, "Blastoise"
	basestats 79, 83, 100, 78, 85, 105
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 210// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
	abilities ABILITY_SHELL_ARMOR, ABILITY_TORRENT
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_BLASTOISE_TM_DATA_0, SPECIES_BLASTOISE_TM_DATA_1, SPECIES_BLASTOISE_TM_DATA_2, SPECIES_BLASTOISE_TM_DATA_3
	mondexentry SPECIES_BLASTOISE, ""
	mondexclassification SPECIES_BLASTOISE, ""
	mondexheight SPECIES_BLASTOISE, ""
	mondexweight SPECIES_BLASTOISE, ""


mondata SPECIES_CATERPIE, "Caterpie"
	basestats 45, 30, 35, 45, 20, 20
	types TYPE_BUG, TYPE_BUG
	catchrate 195
	baseexp 53// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_PRESSURE, ABILITY_SHED_SKIN
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_CATERPIE_TM_DATA_0, SPECIES_CATERPIE_TM_DATA_1, SPECIES_CATERPIE_TM_DATA_2, SPECIES_CATERPIE_TM_DATA_3
	mondexentry SPECIES_CATERPIE, ""
	mondexclassification SPECIES_CATERPIE, ""
	mondexheight SPECIES_CATERPIE, ""
	mondexweight SPECIES_CATERPIE, ""


mondata SPECIES_METAPOD, "Metapod"
	basestats 50, 20, 55, 30, 25, 25
	types TYPE_BUG, TYPE_BUG
	catchrate 195
	baseexp 72// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_PRESSURE, ABILITY_SHED_SKIN
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_METAPOD_TM_DATA_0, SPECIES_METAPOD_TM_DATA_1, SPECIES_METAPOD_TM_DATA_2, SPECIES_METAPOD_TM_DATA_3
	mondexentry SPECIES_METAPOD, ""
	mondexclassification SPECIES_METAPOD, ""
	mondexheight SPECIES_METAPOD, ""
	mondexweight SPECIES_METAPOD, ""


mondata SPECIES_BUTTERFREE, "Butterfree"
	basestats 60, 45, 50, 70, 80, 80
	types TYPE_BUG, TYPE_FLYING
	catchrate 195
	baseexp 160// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_COMPOUND_EYES, ABILITY_COMPOUND_EYES
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_BUTTERFREE_TM_DATA_0, SPECIES_BUTTERFREE_TM_DATA_1, SPECIES_BUTTERFREE_TM_DATA_2, SPECIES_BUTTERFREE_TM_DATA_3
	mondexentry SPECIES_BUTTERFREE, ""
	mondexclassification SPECIES_BUTTERFREE, ""
	mondexheight SPECIES_BUTTERFREE, ""
	mondexweight SPECIES_BUTTERFREE, ""


mondata SPECIES_WEEDLE, "Weedle"
	basestats 40, 35, 30, 50, 20, 20
	types TYPE_BUG, TYPE_POISON
	catchrate 195
	baseexp 52// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_PRESSURE, ABILITY_SHED_SKIN
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_WEEDLE_TM_DATA_0, SPECIES_WEEDLE_TM_DATA_1, SPECIES_WEEDLE_TM_DATA_2, SPECIES_WEEDLE_TM_DATA_3
	mondexentry SPECIES_WEEDLE, ""
	mondexclassification SPECIES_WEEDLE, ""
	mondexheight SPECIES_WEEDLE, ""
	mondexweight SPECIES_WEEDLE, ""


mondata SPECIES_KAKUNA, "Kakuna"
	basestats 45, 25, 50, 35, 25, 25
	types TYPE_BUG, TYPE_POISON
	catchrate 195
	baseexp 71// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_PRESSURE, ABILITY_SHED_SKIN
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_KAKUNA_TM_DATA_0, SPECIES_KAKUNA_TM_DATA_1, SPECIES_KAKUNA_TM_DATA_2, SPECIES_KAKUNA_TM_DATA_3
	mondexentry SPECIES_KAKUNA, ""
	mondexclassification SPECIES_KAKUNA, ""
	mondexheight SPECIES_KAKUNA, ""
	mondexweight SPECIES_KAKUNA, ""


mondata SPECIES_BEEDRILL, "Beedrill"
	basestats 65, 80, 40, 75, 45, 80
	types TYPE_BUG, TYPE_POISON
	catchrate 195
	baseexp 159// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SWARM, ABILITY_SWARM
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_BEEDRILL_TM_DATA_0, SPECIES_BEEDRILL_TM_DATA_1, SPECIES_BEEDRILL_TM_DATA_2, SPECIES_BEEDRILL_TM_DATA_3
	mondexentry SPECIES_BEEDRILL, ""
	mondexclassification SPECIES_BEEDRILL, ""
	mondexheight SPECIES_BEEDRILL, ""
	mondexweight SPECIES_BEEDRILL, ""


mondata SPECIES_PIDGEY, "Pidgey"
	basestats 40, 45, 40, 56, 35, 35
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 55// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_KEEN_EYE, ABILITY_TANGLED_FEET
	runchance 90
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_PIDGEY_TM_DATA_0, SPECIES_PIDGEY_TM_DATA_1, SPECIES_PIDGEY_TM_DATA_2, SPECIES_PIDGEY_TM_DATA_3
	mondexentry SPECIES_PIDGEY, ""
	mondexclassification SPECIES_PIDGEY, ""
	mondexheight SPECIES_PIDGEY, ""
	mondexweight SPECIES_PIDGEY, ""


mondata SPECIES_PIDGEOTTO, "Pidgeotto"
	basestats 63, 60, 55, 71, 50, 50
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 113// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_KEEN_EYE, ABILITY_TANGLED_FEET
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_PIDGEOTTO_TM_DATA_0, SPECIES_PIDGEOTTO_TM_DATA_1, SPECIES_PIDGEOTTO_TM_DATA_2, SPECIES_PIDGEOTTO_TM_DATA_3
	mondexentry SPECIES_PIDGEOTTO, ""
	mondexclassification SPECIES_PIDGEOTTO, ""
	mondexheight SPECIES_PIDGEOTTO, ""
	mondexweight SPECIES_PIDGEOTTO, ""


mondata SPECIES_PIDGEOT, "Pidgeot"
	basestats 83, 80, 75, 91, 70, 70
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 172// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_KEEN_EYE, ABILITY_TANGLED_FEET
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_PIDGEOT_TM_DATA_0, SPECIES_PIDGEOT_TM_DATA_1, SPECIES_PIDGEOT_TM_DATA_2, SPECIES_PIDGEOT_TM_DATA_3
	mondexentry SPECIES_PIDGEOT, ""
	mondexclassification SPECIES_PIDGEOT, ""
	mondexheight SPECIES_PIDGEOT, ""
	mondexweight SPECIES_PIDGEOT, ""


mondata SPECIES_RATTATA, "Rattata"
	basestats 30, 56, 35, 72, 25, 35
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 57// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_GUTS, ABILITY_GLUTTONY
	runchance 120
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_RATTATA_TM_DATA_0, SPECIES_RATTATA_TM_DATA_1, SPECIES_RATTATA_TM_DATA_2, SPECIES_RATTATA_TM_DATA_3
	mondexentry SPECIES_RATTATA, ""
	mondexclassification SPECIES_RATTATA, ""
	mondexheight SPECIES_RATTATA, ""
	mondexweight SPECIES_RATTATA, ""


mondata SPECIES_RATICATE, "Raticate"
	basestats 55, 81, 60, 97, 50, 70
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 116// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_GUTS, ABILITY_GLUTTONY
	runchance 90
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_RATICATE_TM_DATA_0, SPECIES_RATICATE_TM_DATA_1, SPECIES_RATICATE_TM_DATA_2, SPECIES_RATICATE_TM_DATA_3
	mondexentry SPECIES_RATICATE, ""
	mondexclassification SPECIES_RATICATE, ""
	mondexheight SPECIES_RATICATE, ""
	mondexweight SPECIES_RATICATE, ""


mondata SPECIES_SPEAROW, "Spearow"
	basestats 40, 60, 30, 70, 31, 31
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 58// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_HUSTLE, ABILITY_KEEN_EYE
	runchance 90
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_SPEAROW_TM_DATA_0, SPECIES_SPEAROW_TM_DATA_1, SPECIES_SPEAROW_TM_DATA_2, SPECIES_SPEAROW_TM_DATA_3
	mondexentry SPECIES_SPEAROW, ""
	mondexclassification SPECIES_SPEAROW, ""
	mondexheight SPECIES_SPEAROW, ""
	mondexweight SPECIES_SPEAROW, ""


mondata SPECIES_FEAROW, "Fearow"
	basestats 65, 90, 65, 100, 61, 61
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 162// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_HUSTLE, ABILITY_KEEN_EYE
	runchance 60
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_FEAROW_TM_DATA_0, SPECIES_FEAROW_TM_DATA_1, SPECIES_FEAROW_TM_DATA_2, SPECIES_FEAROW_TM_DATA_3
	mondexentry SPECIES_FEAROW, ""
	mondexclassification SPECIES_FEAROW, ""
	mondexheight SPECIES_FEAROW, ""
	mondexweight SPECIES_FEAROW, ""


mondata SPECIES_EKANS, "Ekans"
	basestats 35, 60, 44, 55, 40, 54
	types TYPE_POISON, TYPE_POISON
	catchrate 195
	baseexp 62// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_DRAGON
	abilities ABILITY_INTIMIDATE, ABILITY_SHED_SKIN
	runchance 120
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_EKANS_TM_DATA_0, SPECIES_EKANS_TM_DATA_1, SPECIES_EKANS_TM_DATA_2, SPECIES_EKANS_TM_DATA_3
	mondexentry SPECIES_EKANS, ""
	mondexclassification SPECIES_EKANS, ""
	mondexheight SPECIES_EKANS, ""
	mondexweight SPECIES_EKANS, ""


mondata SPECIES_ARBOK, "Arbok"
	basestats 60, 85, 69, 80, 65, 79
	types TYPE_POISON, TYPE_POISON
	catchrate 195
	baseexp 147// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_DRAGON
	abilities ABILITY_INTIMIDATE, ABILITY_SHED_SKIN
	runchance 60
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_ARBOK_TM_DATA_0, SPECIES_ARBOK_TM_DATA_1, SPECIES_ARBOK_TM_DATA_2, SPECIES_ARBOK_TM_DATA_3
	mondexentry SPECIES_ARBOK, ""
	mondexclassification SPECIES_ARBOK, ""
	mondexheight SPECIES_ARBOK, ""
	mondexweight SPECIES_ARBOK, ""


mondata SPECIES_PIKACHU, "Pikachu"
	basestats 35, 55, 30, 90, 50, 40
	types TYPE_ELECTRIC, TYPE_FAIRY
	catchrate 195
	baseexp 82// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 10
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
	abilities ABILITY_STATIC, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_PIKACHU_TM_DATA_0, SPECIES_PIKACHU_TM_DATA_1, SPECIES_PIKACHU_TM_DATA_2, SPECIES_PIKACHU_TM_DATA_3
	mondexentry SPECIES_PIKACHU, ""
	mondexclassification SPECIES_PIKACHU, ""
	mondexheight SPECIES_PIKACHU, ""
	mondexweight SPECIES_PIKACHU, ""


mondata SPECIES_RAICHU, "Raichu"
	basestats 60, 90, 55, 100, 90, 80
	types TYPE_ELECTRIC, TYPE_FAIRY
	catchrate 195
	baseexp 122// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 10
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
	abilities ABILITY_STATIC, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_RAICHU_TM_DATA_0, SPECIES_RAICHU_TM_DATA_1, SPECIES_RAICHU_TM_DATA_2, SPECIES_RAICHU_TM_DATA_3
	mondexentry SPECIES_RAICHU, ""
	mondexclassification SPECIES_RAICHU, ""
	mondexheight SPECIES_RAICHU, ""
	mondexweight SPECIES_RAICHU, ""


mondata SPECIES_SANDSHREW, "Sandshrew"
	basestats 50, 75, 85, 40, 20, 30
	types TYPE_GROUND, TYPE_GROUND
	catchrate 195
	baseexp 93// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_SAND_VEIL, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_SANDSHREW_TM_DATA_0, SPECIES_SANDSHREW_TM_DATA_1, SPECIES_SANDSHREW_TM_DATA_2, SPECIES_SANDSHREW_TM_DATA_3
	mondexentry SPECIES_SANDSHREW, ""
	mondexclassification SPECIES_SANDSHREW, ""
	mondexheight SPECIES_SANDSHREW, ""
	mondexweight SPECIES_SANDSHREW, ""


mondata SPECIES_SANDSLASH, "Sandslash"
	basestats 75, 100, 110, 65, 45, 55
	types TYPE_GROUND, TYPE_GROUND
	catchrate 195
	baseexp 163// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_SAND_VEIL, ABILITY_NONE
	runchance 60
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_SANDSLASH_TM_DATA_0, SPECIES_SANDSLASH_TM_DATA_1, SPECIES_SANDSLASH_TM_DATA_2, SPECIES_SANDSLASH_TM_DATA_3
	mondexentry SPECIES_SANDSLASH, ""
	mondexclassification SPECIES_SANDSLASH, ""
	mondexheight SPECIES_SANDSLASH, ""
	mondexweight SPECIES_SANDSLASH, ""


mondata SPECIES_NIDORAN_F, "Nidoran♀"
	basestats 55, 47, 52, 41, 40, 40
	types TYPE_POISON, TYPE_POISON
	catchrate 195
	baseexp 59// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 254
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
	abilities ABILITY_POISON_POINT, ABILITY_RIVALRY
	runchance 90
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_NIDORAN_F_TM_DATA_0, SPECIES_NIDORAN_F_TM_DATA_1, SPECIES_NIDORAN_F_TM_DATA_2, SPECIES_NIDORAN_F_TM_DATA_3
	mondexentry SPECIES_NIDORAN_F, ""
	mondexclassification SPECIES_NIDORAN_F, ""
	mondexheight SPECIES_NIDORAN_F, ""
	mondexweight SPECIES_NIDORAN_F, ""


mondata SPECIES_NIDORINA, "Nidorina"
	basestats 70, 62, 67, 56, 55, 55
	types TYPE_POISON, TYPE_POISON
	catchrate 195
	baseexp 117// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 254
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_POISON_POINT, ABILITY_RIVALRY
	runchance 60
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_NIDORINA_TM_DATA_0, SPECIES_NIDORINA_TM_DATA_1, SPECIES_NIDORINA_TM_DATA_2, SPECIES_NIDORINA_TM_DATA_3
	mondexentry SPECIES_NIDORINA, ""
	mondexclassification SPECIES_NIDORINA, ""
	mondexheight SPECIES_NIDORINA, ""
	mondexweight SPECIES_NIDORINA, ""


mondata SPECIES_NIDOQUEEN, "Nidoqueen"
	basestats 90, 82, 87, 76, 75, 85
	types TYPE_POISON, TYPE_GROUND
	catchrate 195
	baseexp 194// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 254
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_GUTS, ABILITY_RIVALRY
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_NIDOQUEEN_TM_DATA_0, SPECIES_NIDOQUEEN_TM_DATA_1, SPECIES_NIDOQUEEN_TM_DATA_2, SPECIES_NIDOQUEEN_TM_DATA_3
	mondexentry SPECIES_NIDOQUEEN, ""
	mondexclassification SPECIES_NIDOQUEEN, ""
	mondexheight SPECIES_NIDOQUEEN, ""
	mondexweight SPECIES_NIDOQUEEN, ""


mondata SPECIES_NIDORAN_M, "Nidoran♂"
    basestats 46, 57, 40, 50, 40, 40
    types TYPE_POISON, TYPE_POISON
    catchrate 235
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_POISON_POINT, ABILITY_RIVALRY
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NIDORAN_M_TM_DATA_0, SPECIES_NIDORAN_M_TM_DATA_1, SPECIES_NIDORAN_M_TM_DATA_2, SPECIES_NIDORAN_M_TM_DATA_3
    mondexentry SPECIES_NIDORAN_M, "It is small, but its horn is filled\nwith poison. It charges then stabs\nwith the horn to inject poison."
    mondexclassification SPECIES_NIDORAN_M, "Poison Pin Pokémon"
    mondexheight SPECIES_NIDORAN_M, "1’08”"
    mondexweight SPECIES_NIDORAN_M, "19.8 lbs."


mondata SPECIES_NIDORINO, "Nidorino"
    basestats 61, 72, 57, 65, 55, 55
    types TYPE_POISON, TYPE_POISON
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_POISON_POINT, ABILITY_RIVALRY
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NIDORINO_TM_DATA_0, SPECIES_NIDORINO_TM_DATA_1, SPECIES_NIDORINO_TM_DATA_2, SPECIES_NIDORINO_TM_DATA_3
    mondexentry SPECIES_NIDORINO, "It raises its big ears to check its\nsurroundings. If it senses anything,\nit attacks immediately."
    mondexclassification SPECIES_NIDORINO, "Poison Pin Pokémon"
    mondexheight SPECIES_NIDORINO, "2’11”"
    mondexweight SPECIES_NIDORINO, "43.0 lbs."


mondata SPECIES_NIDOKING, "Nidoking"
    basestats 81, 102, 77, 85, 85, 75
    types TYPE_POISON, TYPE_GROUND
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_POISON_POINT, ABILITY_RIVALRY
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NIDOKING_TM_DATA_0, SPECIES_NIDOKING_TM_DATA_1, SPECIES_NIDOKING_TM_DATA_2, SPECIES_NIDOKING_TM_DATA_3
    mondexentry SPECIES_NIDOKING, "It swings its big tail around during\nbattle. If its foe flinches, it will\ncharge with its sturdy body."
    mondexclassification SPECIES_NIDOKING, "Drill Pokémon"
    mondexheight SPECIES_NIDOKING, "4’07”"
    mondexweight SPECIES_NIDOKING, "136.7 lbs."


mondata SPECIES_CLEFAIRY, "Clefairy"
	basestats 70, 45, 48, 35, 60, 65
	types TYPE_FAIRY, TYPE_FAIRY
	catchrate 195
	baseexp 68// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 191
	eggcycles 10
	basefriendship 140
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
	abilities ABILITY_CUTE_CHARM, ABILITY_MAGIC_GUARD
	runchance 120
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_CLEFAIRY_TM_DATA_0, SPECIES_CLEFAIRY_TM_DATA_1, SPECIES_CLEFAIRY_TM_DATA_2, SPECIES_CLEFAIRY_TM_DATA_3
	mondexentry SPECIES_CLEFAIRY, ""
	mondexclassification SPECIES_CLEFAIRY, ""
	mondexheight SPECIES_CLEFAIRY, ""
	mondexweight SPECIES_CLEFAIRY, ""


mondata SPECIES_CLEFABLE, "Clefable"
	basestats 95, 70, 73, 60, 85, 90
	types TYPE_FAIRY, TYPE_FAIRY
	catchrate 195
	baseexp 129// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 191
	eggcycles 10
	basefriendship 140
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
	abilities ABILITY_CUTE_CHARM, ABILITY_MAGIC_GUARD
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_CLEFABLE_TM_DATA_0, SPECIES_CLEFABLE_TM_DATA_1, SPECIES_CLEFABLE_TM_DATA_2, SPECIES_CLEFABLE_TM_DATA_3
	mondexentry SPECIES_CLEFABLE, ""
	mondexclassification SPECIES_CLEFABLE, ""
	mondexheight SPECIES_CLEFABLE, ""
	mondexweight SPECIES_CLEFABLE, ""


mondata SPECIES_VULPIX, "Vulpix"
	basestats 38, 41, 40, 65, 50, 65
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 63// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 191
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_FLASH_FIRE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_VULPIX_TM_DATA_0, SPECIES_VULPIX_TM_DATA_1, SPECIES_VULPIX_TM_DATA_2, SPECIES_VULPIX_TM_DATA_3
	mondexentry SPECIES_VULPIX, ""
	mondexclassification SPECIES_VULPIX, ""
	mondexheight SPECIES_VULPIX, ""
	mondexweight SPECIES_VULPIX, ""


mondata SPECIES_NINETALES, "Ninetales"
	basestats 73, 76, 75, 100, 81, 100
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 178// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 191
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_FLASH_FIRE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_NINETALES_TM_DATA_0, SPECIES_NINETALES_TM_DATA_1, SPECIES_NINETALES_TM_DATA_2, SPECIES_NINETALES_TM_DATA_3
	mondexentry SPECIES_NINETALES, ""
	mondexclassification SPECIES_NINETALES, ""
	mondexheight SPECIES_NINETALES, ""
	mondexweight SPECIES_NINETALES, ""


mondata SPECIES_JIGGLYPUFF, "Jigglypuff"
	basestats 115, 45, 20, 20, 45, 25
	types TYPE_FAIRY, TYPE_FAIRY
	catchrate 195
	baseexp 76// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 191
	eggcycles 10
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
	abilities ABILITY_CUTE_CHARM, ABILITY_NONE
	runchance 120
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_JIGGLYPUFF_TM_DATA_0, SPECIES_JIGGLYPUFF_TM_DATA_1, SPECIES_JIGGLYPUFF_TM_DATA_2, SPECIES_JIGGLYPUFF_TM_DATA_3
	mondexentry SPECIES_JIGGLYPUFF, ""
	mondexclassification SPECIES_JIGGLYPUFF, ""
	mondexheight SPECIES_JIGGLYPUFF, ""
	mondexweight SPECIES_JIGGLYPUFF, ""


mondata SPECIES_WIGGLYTUFF, "Wigglytuff"
	basestats 140, 70, 45, 45, 75, 50
	types TYPE_FAIRY, TYPE_FAIRY
	catchrate 195
	baseexp 109// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 191
	eggcycles 10
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
	abilities ABILITY_CUTE_CHARM, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_WIGGLYTUFF_TM_DATA_0, SPECIES_WIGGLYTUFF_TM_DATA_1, SPECIES_WIGGLYTUFF_TM_DATA_2, SPECIES_WIGGLYTUFF_TM_DATA_3
	mondexentry SPECIES_WIGGLYTUFF, ""
	mondexclassification SPECIES_WIGGLYTUFF, ""
	mondexheight SPECIES_WIGGLYTUFF, ""
	mondexweight SPECIES_WIGGLYTUFF, ""


mondata SPECIES_ZUBAT, "Zubat"
	basestats 40, 45, 35, 55, 30, 40
	types TYPE_POISON, TYPE_FLYING
	catchrate 195
	baseexp 54// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_SHADOW_TAG, ABILITY_INNER_FOCUS
	runchance 90
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_ZUBAT_TM_DATA_0, SPECIES_ZUBAT_TM_DATA_1, SPECIES_ZUBAT_TM_DATA_2, SPECIES_ZUBAT_TM_DATA_3
	mondexentry SPECIES_ZUBAT, ""
	mondexclassification SPECIES_ZUBAT, ""
	mondexheight SPECIES_ZUBAT, ""
	mondexweight SPECIES_ZUBAT, ""


mondata SPECIES_GOLBAT, "Golbat"
	basestats 75, 80, 70, 90, 65, 75
	types TYPE_POISON, TYPE_FLYING
	catchrate 195
	baseexp 171// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_SHADOW_TAG, ABILITY_INNER_FOCUS
	runchance 60
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_GOLBAT_TM_DATA_0, SPECIES_GOLBAT_TM_DATA_1, SPECIES_GOLBAT_TM_DATA_2, SPECIES_GOLBAT_TM_DATA_3
	mondexentry SPECIES_GOLBAT, ""
	mondexclassification SPECIES_GOLBAT, ""
	mondexheight SPECIES_GOLBAT, ""
	mondexweight SPECIES_GOLBAT, ""


mondata SPECIES_ODDISH, "Oddish"
	basestats 45, 50, 55, 30, 75, 65
	types TYPE_GRASS, TYPE_POISON
	catchrate 195
	baseexp 78// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_ODDISH_TM_DATA_0, SPECIES_ODDISH_TM_DATA_1, SPECIES_ODDISH_TM_DATA_2, SPECIES_ODDISH_TM_DATA_3
	mondexentry SPECIES_ODDISH, ""
	mondexclassification SPECIES_ODDISH, ""
	mondexheight SPECIES_ODDISH, ""
	mondexweight SPECIES_ODDISH, ""


mondata SPECIES_GLOOM, "Gloom"
	basestats 60, 65, 70, 40, 85, 75
	types TYPE_GRASS, TYPE_POISON
	catchrate 195
	baseexp 132// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
	runchance 60
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_GLOOM_TM_DATA_0, SPECIES_GLOOM_TM_DATA_1, SPECIES_GLOOM_TM_DATA_2, SPECIES_GLOOM_TM_DATA_3
	mondexentry SPECIES_GLOOM, ""
	mondexclassification SPECIES_GLOOM, ""
	mondexheight SPECIES_GLOOM, ""
	mondexweight SPECIES_GLOOM, ""


mondata SPECIES_VILEPLUME, "Vileplume"
	basestats 75, 80, 85, 50, 100, 90
	types TYPE_GRASS, TYPE_POISON
	catchrate 195
	baseexp 184// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_VILEPLUME_TM_DATA_0, SPECIES_VILEPLUME_TM_DATA_1, SPECIES_VILEPLUME_TM_DATA_2, SPECIES_VILEPLUME_TM_DATA_3
	mondexentry SPECIES_VILEPLUME, ""
	mondexclassification SPECIES_VILEPLUME, ""
	mondexheight SPECIES_VILEPLUME, ""
	mondexweight SPECIES_VILEPLUME, ""


mondata SPECIES_PARAS, "Paras"
	basestats 35, 70, 55, 25, 45, 55
	types TYPE_BUG, TYPE_GRASS
	catchrate 195
	baseexp 70// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_GRASS
	abilities ABILITY_EFFECT_SPORE, ABILITY_DRY_SKIN
	runchance 120
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_PARAS_TM_DATA_0, SPECIES_PARAS_TM_DATA_1, SPECIES_PARAS_TM_DATA_2, SPECIES_PARAS_TM_DATA_3
	mondexentry SPECIES_PARAS, ""
	mondexclassification SPECIES_PARAS, ""
	mondexheight SPECIES_PARAS, ""
	mondexweight SPECIES_PARAS, ""


mondata SPECIES_PARASECT, "Parasect"
	basestats 60, 95, 80, 30, 60, 80
	types TYPE_BUG, TYPE_GRASS
	catchrate 195
	baseexp 128// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_GRASS
	abilities ABILITY_EFFECT_SPORE, ABILITY_DRY_SKIN
	runchance 90
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_PARASECT_TM_DATA_0, SPECIES_PARASECT_TM_DATA_1, SPECIES_PARASECT_TM_DATA_2, SPECIES_PARASECT_TM_DATA_3
	mondexentry SPECIES_PARASECT, ""
	mondexclassification SPECIES_PARASECT, ""
	mondexheight SPECIES_PARASECT, ""
	mondexweight SPECIES_PARASECT, ""


mondata SPECIES_VENONAT, "Venonat"
	basestats 60, 55, 50, 45, 40, 55
	types TYPE_BUG, TYPE_POISON
	catchrate 195
	baseexp 75// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_COMPOUND_EYES, ABILITY_TINTED_LENS
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_VENONAT_TM_DATA_0, SPECIES_VENONAT_TM_DATA_1, SPECIES_VENONAT_TM_DATA_2, SPECIES_VENONAT_TM_DATA_3
	mondexentry SPECIES_VENONAT, ""
	mondexclassification SPECIES_VENONAT, ""
	mondexheight SPECIES_VENONAT, ""
	mondexweight SPECIES_VENONAT, ""


mondata SPECIES_VENOMOTH, "Venomoth"
	basestats 70, 65, 60, 90, 90, 75
	types TYPE_BUG, TYPE_POISON
	catchrate 195
	baseexp 138// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_COMPOUND_EYES, ABILITY_TINTED_LENS
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_VENOMOTH_TM_DATA_0, SPECIES_VENOMOTH_TM_DATA_1, SPECIES_VENOMOTH_TM_DATA_2, SPECIES_VENOMOTH_TM_DATA_3
	mondexentry SPECIES_VENOMOTH, ""
	mondexclassification SPECIES_VENOMOTH, ""
	mondexheight SPECIES_VENOMOTH, ""
	mondexweight SPECIES_VENOMOTH, ""


mondata SPECIES_DIGLETT, "Diglett"
	basestats 10, 55, 25, 95, 35, 45
	types TYPE_GROUND, TYPE_GROUND
	catchrate 195
	baseexp 81// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_SAND_VEIL, ABILITY_ARENA_TRAP
	runchance 120
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_DIGLETT_TM_DATA_0, SPECIES_DIGLETT_TM_DATA_1, SPECIES_DIGLETT_TM_DATA_2, SPECIES_DIGLETT_TM_DATA_3
	mondexentry SPECIES_DIGLETT, ""
	mondexclassification SPECIES_DIGLETT, ""
	mondexheight SPECIES_DIGLETT, ""
	mondexweight SPECIES_DIGLETT, ""


mondata SPECIES_DUGTRIO, "Dugtrio"
	basestats 35, 80, 50, 120, 50, 70
	types TYPE_GROUND, TYPE_GROUND
	catchrate 195
	baseexp 153// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_SAND_VEIL, ABILITY_ARENA_TRAP
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_DUGTRIO_TM_DATA_0, SPECIES_DUGTRIO_TM_DATA_1, SPECIES_DUGTRIO_TM_DATA_2, SPECIES_DUGTRIO_TM_DATA_3
	mondexentry SPECIES_DUGTRIO, ""
	mondexclassification SPECIES_DUGTRIO, ""
	mondexheight SPECIES_DUGTRIO, ""
	mondexweight SPECIES_DUGTRIO, ""


mondata SPECIES_MEOWTH, "Meowth"
	basestats 40, 45, 35, 90, 40, 40
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 69// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_LIMBER, ABILITY_TECHNICIAN
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_MEOWTH_TM_DATA_0, SPECIES_MEOWTH_TM_DATA_1, SPECIES_MEOWTH_TM_DATA_2, SPECIES_MEOWTH_TM_DATA_3
	mondexentry SPECIES_MEOWTH, ""
	mondexclassification SPECIES_MEOWTH, ""
	mondexheight SPECIES_MEOWTH, ""
	mondexweight SPECIES_MEOWTH, ""


mondata SPECIES_PERSIAN, "Persian"
	basestats 65, 70, 60, 115, 65, 65
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 148// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_LIMBER, ABILITY_TECHNICIAN
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_PERSIAN_TM_DATA_0, SPECIES_PERSIAN_TM_DATA_1, SPECIES_PERSIAN_TM_DATA_2, SPECIES_PERSIAN_TM_DATA_3
	mondexentry SPECIES_PERSIAN, ""
	mondexclassification SPECIES_PERSIAN, ""
	mondexheight SPECIES_PERSIAN, ""
	mondexweight SPECIES_PERSIAN, ""


mondata SPECIES_PSYDUCK, "Psyduck"
	basestats 50, 52, 48, 55, 65, 50
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 80// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
	abilities ABILITY_DAMP, ABILITY_CLOUD_NINE
	runchance 90
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_PSYDUCK_TM_DATA_0, SPECIES_PSYDUCK_TM_DATA_1, SPECIES_PSYDUCK_TM_DATA_2, SPECIES_PSYDUCK_TM_DATA_3
	mondexentry SPECIES_PSYDUCK, ""
	mondexclassification SPECIES_PSYDUCK, ""
	mondexheight SPECIES_PSYDUCK, ""
	mondexweight SPECIES_PSYDUCK, ""


mondata SPECIES_GOLDUCK, "Golduck"
	basestats 80, 82, 78, 85, 95, 80
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 174// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
	abilities ABILITY_DAMP, ABILITY_CLOUD_NINE
	runchance 60
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_GOLDUCK_TM_DATA_0, SPECIES_GOLDUCK_TM_DATA_1, SPECIES_GOLDUCK_TM_DATA_2, SPECIES_GOLDUCK_TM_DATA_3
	mondexentry SPECIES_GOLDUCK, ""
	mondexclassification SPECIES_GOLDUCK, ""
	mondexheight SPECIES_GOLDUCK, ""
	mondexweight SPECIES_GOLDUCK, ""


mondata SPECIES_MANKEY, "Mankey"
	basestats 40, 80, 35, 70, 35, 45
	types TYPE_FIGHTING, TYPE_FIGHTING
	catchrate 195
	baseexp 74// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_VITAL_SPIRIT, ABILITY_ANGER_POINT
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_MANKEY_TM_DATA_0, SPECIES_MANKEY_TM_DATA_1, SPECIES_MANKEY_TM_DATA_2, SPECIES_MANKEY_TM_DATA_3
	mondexentry SPECIES_MANKEY, ""
	mondexclassification SPECIES_MANKEY, ""
	mondexheight SPECIES_MANKEY, ""
	mondexweight SPECIES_MANKEY, ""


mondata SPECIES_PRIMEAPE, "Primeape"
	basestats 65, 105, 60, 95, 60, 70
	types TYPE_FIGHTING, TYPE_FIGHTING
	catchrate 195
	baseexp 149// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_VITAL_SPIRIT, ABILITY_ANGER_POINT
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_PRIMEAPE_TM_DATA_0, SPECIES_PRIMEAPE_TM_DATA_1, SPECIES_PRIMEAPE_TM_DATA_2, SPECIES_PRIMEAPE_TM_DATA_3
	mondexentry SPECIES_PRIMEAPE, ""
	mondexclassification SPECIES_PRIMEAPE, ""
	mondexheight SPECIES_PRIMEAPE, ""
	mondexweight SPECIES_PRIMEAPE, ""


mondata SPECIES_GROWLITHE, "Growlithe"
	basestats 55, 70, 45, 60, 70, 50
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 91// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 63
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_INTIMIDATE, ABILITY_FLASH_FIRE
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_GROWLITHE_TM_DATA_0, SPECIES_GROWLITHE_TM_DATA_1, SPECIES_GROWLITHE_TM_DATA_2, SPECIES_GROWLITHE_TM_DATA_3
	mondexentry SPECIES_GROWLITHE, ""
	mondexclassification SPECIES_GROWLITHE, ""
	mondexheight SPECIES_GROWLITHE, ""
	mondexweight SPECIES_GROWLITHE, ""


mondata SPECIES_ARCANINE, "Arcanine"
	basestats 90, 110, 80, 95, 100, 80
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 213// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 63
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_INTIMIDATE, ABILITY_FLASH_FIRE
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_ARCANINE_TM_DATA_0, SPECIES_ARCANINE_TM_DATA_1, SPECIES_ARCANINE_TM_DATA_2, SPECIES_ARCANINE_TM_DATA_3
	mondexentry SPECIES_ARCANINE, ""
	mondexclassification SPECIES_ARCANINE, ""
	mondexheight SPECIES_ARCANINE, ""
	mondexweight SPECIES_ARCANINE, ""


mondata SPECIES_POLIWAG, "Poliwag"
	basestats 40, 50, 40, 90, 40, 40
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 77// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
	abilities ABILITY_WATER_ABSORB, ABILITY_DAMP
	runchance 90
	colorflip BODY_COLOR_RED, 1
	tmdata SPECIES_POLIWAG_TM_DATA_0, SPECIES_POLIWAG_TM_DATA_1, SPECIES_POLIWAG_TM_DATA_2, SPECIES_POLIWAG_TM_DATA_3
	mondexentry SPECIES_POLIWAG, ""
	mondexclassification SPECIES_POLIWAG, ""
	mondexheight SPECIES_POLIWAG, ""
	mondexweight SPECIES_POLIWAG, ""


mondata SPECIES_POLIWHIRL, "Poliwhirl"
	basestats 65, 65, 65, 90, 50, 50
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 131// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
	abilities ABILITY_WATER_ABSORB, ABILITY_DAMP
	runchance 60
	colorflip BODY_COLOR_RED, 1
	tmdata SPECIES_POLIWHIRL_TM_DATA_0, SPECIES_POLIWHIRL_TM_DATA_1, SPECIES_POLIWHIRL_TM_DATA_2, SPECIES_POLIWHIRL_TM_DATA_3
	mondexentry SPECIES_POLIWHIRL, ""
	mondexclassification SPECIES_POLIWHIRL, ""
	mondexheight SPECIES_POLIWHIRL, ""
	mondexweight SPECIES_POLIWHIRL, ""


mondata SPECIES_POLIWRATH, "Poliwrath"
	basestats 90, 85, 95, 70, 70, 90
	types TYPE_WATER, TYPE_FIGHTING
	catchrate 195
	baseexp 185// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
	abilities ABILITY_WATER_ABSORB, ABILITY_DAMP
	runchance 0
	colorflip BODY_COLOR_RED, 1
	tmdata SPECIES_POLIWRATH_TM_DATA_0, SPECIES_POLIWRATH_TM_DATA_1, SPECIES_POLIWRATH_TM_DATA_2, SPECIES_POLIWRATH_TM_DATA_3
	mondexentry SPECIES_POLIWRATH, ""
	mondexclassification SPECIES_POLIWRATH, ""
	mondexheight SPECIES_POLIWRATH, ""
	mondexweight SPECIES_POLIWRATH, ""


mondata SPECIES_ABRA, "Abra"
	basestats 25, 20, 15, 90, 105, 55
	types TYPE_PSYCHIC, TYPE_PSYCHIC
	catchrate 195
	baseexp 75// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 63
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_PRESSURE, ABILITY_INNER_FOCUS
	runchance 120
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_ABRA_TM_DATA_0, SPECIES_ABRA_TM_DATA_1, SPECIES_ABRA_TM_DATA_2, SPECIES_ABRA_TM_DATA_3
	mondexentry SPECIES_ABRA, ""
	mondexclassification SPECIES_ABRA, ""
	mondexheight SPECIES_ABRA, ""
	mondexweight SPECIES_ABRA, ""


mondata SPECIES_KADABRA, "Kadabra"
	basestats 40, 35, 30, 105, 120, 70
	types TYPE_PSYCHIC, TYPE_PSYCHIC
	catchrate 195
	baseexp 145// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 63
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_SYNCHRONIZE, ABILITY_INNER_FOCUS
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_KADABRA_TM_DATA_0, SPECIES_KADABRA_TM_DATA_1, SPECIES_KADABRA_TM_DATA_2, SPECIES_KADABRA_TM_DATA_3
	mondexentry SPECIES_KADABRA, ""
	mondexclassification SPECIES_KADABRA, ""
	mondexheight SPECIES_KADABRA, ""
	mondexweight SPECIES_KADABRA, ""


mondata SPECIES_ALAKAZAM, "Alakazam"
	basestats 55, 50, 45, 120, 135, 85
	types TYPE_PSYCHIC, TYPE_PSYCHIC
	catchrate 195
	baseexp 186// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 63
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_SYNCHRONIZE, ABILITY_INNER_FOCUS
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_ALAKAZAM_TM_DATA_0, SPECIES_ALAKAZAM_TM_DATA_1, SPECIES_ALAKAZAM_TM_DATA_2, SPECIES_ALAKAZAM_TM_DATA_3
	mondexentry SPECIES_ALAKAZAM, ""
	mondexclassification SPECIES_ALAKAZAM, ""
	mondexheight SPECIES_ALAKAZAM, ""
	mondexweight SPECIES_ALAKAZAM, ""


mondata SPECIES_MACHOP, "Machop"
	basestats 70, 80, 50, 35, 35, 35
	types TYPE_FIGHTING, TYPE_FIGHTING
	catchrate 195
	baseexp 75// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 63
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_GUTS, ABILITY_NO_GUARD
	runchance 90
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_MACHOP_TM_DATA_0, SPECIES_MACHOP_TM_DATA_1, SPECIES_MACHOP_TM_DATA_2, SPECIES_MACHOP_TM_DATA_3
	mondexentry SPECIES_MACHOP, ""
	mondexclassification SPECIES_MACHOP, ""
	mondexheight SPECIES_MACHOP, ""
	mondexweight SPECIES_MACHOP, ""


mondata SPECIES_MACHOKE, "Machoke"
	basestats 80, 100, 70, 45, 50, 60
	types TYPE_FIGHTING, TYPE_FIGHTING
	catchrate 195
	baseexp 146// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 63
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_GUTS, ABILITY_NO_GUARD
	runchance 60
	colorflip BODY_COLOR_BROWN, 1
	tmdata SPECIES_MACHOKE_TM_DATA_0, SPECIES_MACHOKE_TM_DATA_1, SPECIES_MACHOKE_TM_DATA_2, SPECIES_MACHOKE_TM_DATA_3
	mondexentry SPECIES_MACHOKE, ""
	mondexclassification SPECIES_MACHOKE, ""
	mondexheight SPECIES_MACHOKE, ""
	mondexweight SPECIES_MACHOKE, ""


mondata SPECIES_MACHAMP, "Machamp"
	basestats 90, 130, 80, 55, 65, 85
	types TYPE_FIGHTING, TYPE_FIGHTING
	catchrate 195
	baseexp 193// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 63
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_GUTS, ABILITY_NO_GUARD
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_MACHAMP_TM_DATA_0, SPECIES_MACHAMP_TM_DATA_1, SPECIES_MACHAMP_TM_DATA_2, SPECIES_MACHAMP_TM_DATA_3
	mondexentry SPECIES_MACHAMP, ""
	mondexclassification SPECIES_MACHAMP, ""
	mondexheight SPECIES_MACHAMP, ""
	mondexweight SPECIES_MACHAMP, ""


mondata SPECIES_BELLSPROUT, "Bellsprout"
	basestats 50, 75, 35, 40, 70, 30
	types TYPE_GRASS, TYPE_POISON
	catchrate 195
	baseexp 84// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_BELLSPROUT_TM_DATA_0, SPECIES_BELLSPROUT_TM_DATA_1, SPECIES_BELLSPROUT_TM_DATA_2, SPECIES_BELLSPROUT_TM_DATA_3
	mondexentry SPECIES_BELLSPROUT, ""
	mondexclassification SPECIES_BELLSPROUT, ""
	mondexheight SPECIES_BELLSPROUT, ""
	mondexweight SPECIES_BELLSPROUT, ""


mondata SPECIES_WEEPINBELL, "Weepinbell"
	basestats 65, 90, 50, 55, 85, 45
	types TYPE_GRASS, TYPE_POISON
	catchrate 195
	baseexp 151// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
	runchance 60
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_WEEPINBELL_TM_DATA_0, SPECIES_WEEPINBELL_TM_DATA_1, SPECIES_WEEPINBELL_TM_DATA_2, SPECIES_WEEPINBELL_TM_DATA_3
	mondexentry SPECIES_WEEPINBELL, ""
	mondexclassification SPECIES_WEEPINBELL, ""
	mondexheight SPECIES_WEEPINBELL, ""
	mondexweight SPECIES_WEEPINBELL, ""


mondata SPECIES_VICTREEBEL, "Victreebel"
	basestats 80, 105, 65, 70, 100, 60
	types TYPE_GRASS, TYPE_POISON
	catchrate 195
	baseexp 191// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_VICTREEBEL_TM_DATA_0, SPECIES_VICTREEBEL_TM_DATA_1, SPECIES_VICTREEBEL_TM_DATA_2, SPECIES_VICTREEBEL_TM_DATA_3
	mondexentry SPECIES_VICTREEBEL, ""
	mondexclassification SPECIES_VICTREEBEL, ""
	mondexheight SPECIES_VICTREEBEL, ""
	mondexweight SPECIES_VICTREEBEL, ""


mondata SPECIES_TENTACOOL, "Tentacool"
	basestats 40, 40, 35, 70, 50, 100
	types TYPE_WATER, TYPE_POISON
	catchrate 195
	baseexp 105// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
	abilities ABILITY_CLEAR_BODY, ABILITY_LIQUID_OOZE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_TENTACOOL_TM_DATA_0, SPECIES_TENTACOOL_TM_DATA_1, SPECIES_TENTACOOL_TM_DATA_2, SPECIES_TENTACOOL_TM_DATA_3
	mondexentry SPECIES_TENTACOOL, ""
	mondexclassification SPECIES_TENTACOOL, ""
	mondexheight SPECIES_TENTACOOL, ""
	mondexweight SPECIES_TENTACOOL, ""


mondata SPECIES_TENTACRUEL, "Tentacruel"
	basestats 80, 70, 65, 100, 80, 120
	types TYPE_WATER, TYPE_POISON
	catchrate 195
	baseexp 205// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
	abilities ABILITY_CLEAR_BODY, ABILITY_LIQUID_OOZE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_TENTACRUEL_TM_DATA_0, SPECIES_TENTACRUEL_TM_DATA_1, SPECIES_TENTACRUEL_TM_DATA_2, SPECIES_TENTACRUEL_TM_DATA_3
	mondexentry SPECIES_TENTACRUEL, ""
	mondexclassification SPECIES_TENTACRUEL, ""
	mondexheight SPECIES_TENTACRUEL, ""
	mondexweight SPECIES_TENTACRUEL, ""


mondata SPECIES_GEODUDE, "Geodude"
	basestats 40, 80, 100, 20, 30, 30
	types TYPE_ROCK, TYPE_GROUND
	catchrate 195
	baseexp 73// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_ROCK_HEAD, ABILITY_PRESSURE
	runchance 90
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_GEODUDE_TM_DATA_0, SPECIES_GEODUDE_TM_DATA_1, SPECIES_GEODUDE_TM_DATA_2, SPECIES_GEODUDE_TM_DATA_3
	mondexentry SPECIES_GEODUDE, ""
	mondexclassification SPECIES_GEODUDE, ""
	mondexheight SPECIES_GEODUDE, ""
	mondexweight SPECIES_GEODUDE, ""


mondata SPECIES_GRAVELER, "Graveler"
	basestats 55, 95, 115, 35, 45, 45
	types TYPE_ROCK, TYPE_GROUND
	catchrate 195
	baseexp 134// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_ROCK_HEAD, ABILITY_PRESSURE
	runchance 60
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_GRAVELER_TM_DATA_0, SPECIES_GRAVELER_TM_DATA_1, SPECIES_GRAVELER_TM_DATA_2, SPECIES_GRAVELER_TM_DATA_3
	mondexentry SPECIES_GRAVELER, ""
	mondexclassification SPECIES_GRAVELER, ""
	mondexheight SPECIES_GRAVELER, ""
	mondexweight SPECIES_GRAVELER, ""


mondata SPECIES_GOLEM, "Golem"
	basestats 80, 110, 130, 45, 55, 65
	types TYPE_ROCK, TYPE_GROUND
	catchrate 195
	baseexp 177// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_ROCK_HEAD, ABILITY_PRESSURE
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_GOLEM_TM_DATA_0, SPECIES_GOLEM_TM_DATA_1, SPECIES_GOLEM_TM_DATA_2, SPECIES_GOLEM_TM_DATA_3
	mondexentry SPECIES_GOLEM, ""
	mondexclassification SPECIES_GOLEM, ""
	mondexheight SPECIES_GOLEM, ""
	mondexweight SPECIES_GOLEM, ""


mondata SPECIES_PONYTA, "Ponyta"
	basestats 50, 85, 55, 90, 65, 65
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 152// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_FLAME_BODY, ABILITY_FLASH_FIRE
	runchance 120
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_PONYTA_TM_DATA_0, SPECIES_PONYTA_TM_DATA_1, SPECIES_PONYTA_TM_DATA_2, SPECIES_PONYTA_TM_DATA_3
	mondexentry SPECIES_PONYTA, ""
	mondexclassification SPECIES_PONYTA, ""
	mondexheight SPECIES_PONYTA, ""
	mondexweight SPECIES_PONYTA, ""


mondata SPECIES_RAPIDASH, "Rapidash"
	basestats 65, 100, 70, 105, 80, 80
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 192// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_FLAME_BODY, ABILITY_FLASH_FIRE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_RAPIDASH_TM_DATA_0, SPECIES_RAPIDASH_TM_DATA_1, SPECIES_RAPIDASH_TM_DATA_2, SPECIES_RAPIDASH_TM_DATA_3
	mondexentry SPECIES_RAPIDASH, ""
	mondexclassification SPECIES_RAPIDASH, ""
	mondexheight SPECIES_RAPIDASH, ""
	mondexweight SPECIES_RAPIDASH, ""


mondata SPECIES_SLOWPOKE, "Slowpoke"
	basestats 90, 65, 65, 15, 40, 40
	types TYPE_WATER, TYPE_PSYCHIC
	catchrate 195
	baseexp 99// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
	abilities ABILITY_SHELL_ARMOR, ABILITY_OWN_TEMPO
	runchance 60
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_SLOWPOKE_TM_DATA_0, SPECIES_SLOWPOKE_TM_DATA_1, SPECIES_SLOWPOKE_TM_DATA_2, SPECIES_SLOWPOKE_TM_DATA_3
	mondexentry SPECIES_SLOWPOKE, ""
	mondexclassification SPECIES_SLOWPOKE, ""
	mondexheight SPECIES_SLOWPOKE, ""
	mondexweight SPECIES_SLOWPOKE, ""


mondata SPECIES_SLOWBRO, "Slowbro"
	basestats 95, 75, 110, 30, 100, 80
	types TYPE_WATER, TYPE_PSYCHIC
	catchrate 195
	baseexp 164// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
	abilities ABILITY_SHELL_ARMOR, ABILITY_OWN_TEMPO
	runchance 60
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_SLOWBRO_TM_DATA_0, SPECIES_SLOWBRO_TM_DATA_1, SPECIES_SLOWBRO_TM_DATA_2, SPECIES_SLOWBRO_TM_DATA_3
	mondexentry SPECIES_SLOWBRO, ""
	mondexclassification SPECIES_SLOWBRO, ""
	mondexheight SPECIES_SLOWBRO, ""
	mondexweight SPECIES_SLOWBRO, ""


mondata SPECIES_MAGNEMITE, "Magnemite"
	basestats 25, 35, 70, 45, 95, 55
	types TYPE_ELECTRIC, TYPE_STEEL
	catchrate 195
	baseexp 89// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_MAGNET_PULL, ABILITY_PRESSURE
	runchance 90
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_MAGNEMITE_TM_DATA_0, SPECIES_MAGNEMITE_TM_DATA_1, SPECIES_MAGNEMITE_TM_DATA_2, SPECIES_MAGNEMITE_TM_DATA_3
	mondexentry SPECIES_MAGNEMITE, ""
	mondexclassification SPECIES_MAGNEMITE, ""
	mondexheight SPECIES_MAGNEMITE, ""
	mondexweight SPECIES_MAGNEMITE, ""


mondata SPECIES_MAGNETON, "Magneton"
	basestats 50, 60, 95, 70, 120, 70
	types TYPE_ELECTRIC, TYPE_STEEL
	catchrate 195
	baseexp 161// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_MAGNET_PULL, ABILITY_PRESSURE
	runchance 60
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_MAGNETON_TM_DATA_0, SPECIES_MAGNETON_TM_DATA_1, SPECIES_MAGNETON_TM_DATA_2, SPECIES_MAGNETON_TM_DATA_3
	mondexentry SPECIES_MAGNETON, ""
	mondexclassification SPECIES_MAGNETON, ""
	mondexheight SPECIES_MAGNETON, ""
	mondexweight SPECIES_MAGNETON, ""


mondata SPECIES_FARFETCHD, "Farfetch’D"
	basestats 52, 65, 55, 60, 58, 62
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 94// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FIELD
	abilities ABILITY_SUPER_LUCK, ABILITY_INNER_FOCUS
	runchance 120
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_FARFETCHD_TM_DATA_0, SPECIES_FARFETCHD_TM_DATA_1, SPECIES_FARFETCHD_TM_DATA_2, SPECIES_FARFETCHD_TM_DATA_3
	mondexentry SPECIES_FARFETCHD, ""
	mondexclassification SPECIES_FARFETCHD, ""
	mondexheight SPECIES_FARFETCHD, ""
	mondexweight SPECIES_FARFETCHD, ""


mondata SPECIES_DODUO, "Doduo"
	basestats 35, 85, 45, 75, 35, 35
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 96// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_UNBURDEN, ABILITY_EARLY_BIRD
	runchance 90
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_DODUO_TM_DATA_0, SPECIES_DODUO_TM_DATA_1, SPECIES_DODUO_TM_DATA_2, SPECIES_DODUO_TM_DATA_3
	mondexentry SPECIES_DODUO, ""
	mondexclassification SPECIES_DODUO, ""
	mondexheight SPECIES_DODUO, ""
	mondexweight SPECIES_DODUO, ""


mondata SPECIES_DODRIO, "Dodrio"
	basestats 60, 110, 70, 100, 60, 60
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 158// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_UNBURDEN, ABILITY_EARLY_BIRD
	runchance 60
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_DODRIO_TM_DATA_0, SPECIES_DODRIO_TM_DATA_1, SPECIES_DODRIO_TM_DATA_2, SPECIES_DODRIO_TM_DATA_3
	mondexentry SPECIES_DODRIO, ""
	mondexclassification SPECIES_DODRIO, ""
	mondexheight SPECIES_DODRIO, ""
	mondexweight SPECIES_DODRIO, ""


mondata SPECIES_SEEL, "Seel"
	basestats 65, 45, 55, 45, 45, 70
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 100// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
	abilities ABILITY_THICK_FAT, ABILITY_HYDRATION
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_SEEL_TM_DATA_0, SPECIES_SEEL_TM_DATA_1, SPECIES_SEEL_TM_DATA_2, SPECIES_SEEL_TM_DATA_3
	mondexentry SPECIES_SEEL, ""
	mondexclassification SPECIES_SEEL, ""
	mondexheight SPECIES_SEEL, ""
	mondexweight SPECIES_SEEL, ""


mondata SPECIES_DEWGONG, "Dewgong"
	basestats 90, 70, 80, 70, 70, 95
	types TYPE_WATER, TYPE_ICE
	catchrate 195
	baseexp 176// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
	abilities ABILITY_THICK_FAT, ABILITY_HYDRATION
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_DEWGONG_TM_DATA_0, SPECIES_DEWGONG_TM_DATA_1, SPECIES_DEWGONG_TM_DATA_2, SPECIES_DEWGONG_TM_DATA_3
	mondexentry SPECIES_DEWGONG, ""
	mondexclassification SPECIES_DEWGONG, ""
	mondexheight SPECIES_DEWGONG, ""
	mondexweight SPECIES_DEWGONG, ""


mondata SPECIES_GRIMER, "Grimer"
	basestats 80, 80, 50, 25, 40, 50
	types TYPE_POISON, TYPE_POISON
	catchrate 195
	baseexp 90// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_STENCH, ABILITY_POISON_POINT
	runchance 60
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_GRIMER_TM_DATA_0, SPECIES_GRIMER_TM_DATA_1, SPECIES_GRIMER_TM_DATA_2, SPECIES_GRIMER_TM_DATA_3
	mondexentry SPECIES_GRIMER, ""
	mondexclassification SPECIES_GRIMER, ""
	mondexheight SPECIES_GRIMER, ""
	mondexweight SPECIES_GRIMER, ""


mondata SPECIES_MUK, "Muk"
	basestats 105, 105, 75, 50, 65, 100
	types TYPE_POISON, TYPE_POISON
	catchrate 195
	baseexp 157// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_STENCH, ABILITY_POISON_POINT
	runchance 60
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_MUK_TM_DATA_0, SPECIES_MUK_TM_DATA_1, SPECIES_MUK_TM_DATA_2, SPECIES_MUK_TM_DATA_3
	mondexentry SPECIES_MUK, ""
	mondexclassification SPECIES_MUK, ""
	mondexheight SPECIES_MUK, ""
	mondexweight SPECIES_MUK, ""


mondata SPECIES_SHELLDER, "Shellder"
	basestats 30, 65, 100, 40, 45, 25
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 97// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
	abilities ABILITY_SHELL_ARMOR, ABILITY_SKILL_LINK
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_SHELLDER_TM_DATA_0, SPECIES_SHELLDER_TM_DATA_1, SPECIES_SHELLDER_TM_DATA_2, SPECIES_SHELLDER_TM_DATA_3
	mondexentry SPECIES_SHELLDER, ""
	mondexclassification SPECIES_SHELLDER, ""
	mondexheight SPECIES_SHELLDER, ""
	mondexweight SPECIES_SHELLDER, ""


mondata SPECIES_CLOYSTER, "Cloyster"
	basestats 50, 95, 180, 70, 85, 45
	types TYPE_WATER, TYPE_ICE
	catchrate 195
	baseexp 203// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
	abilities ABILITY_SHELL_ARMOR, ABILITY_SKILL_LINK
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_CLOYSTER_TM_DATA_0, SPECIES_CLOYSTER_TM_DATA_1, SPECIES_CLOYSTER_TM_DATA_2, SPECIES_CLOYSTER_TM_DATA_3
	mondexentry SPECIES_CLOYSTER, ""
	mondexclassification SPECIES_CLOYSTER, ""
	mondexheight SPECIES_CLOYSTER, ""
	mondexweight SPECIES_CLOYSTER, ""


mondata SPECIES_GASTLY, "Gastly"
	basestats 30, 35, 30, 80, 100, 35
	types TYPE_GHOST, TYPE_POISON
	catchrate 195
	baseexp 95// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 120
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_GASTLY_TM_DATA_0, SPECIES_GASTLY_TM_DATA_1, SPECIES_GASTLY_TM_DATA_2, SPECIES_GASTLY_TM_DATA_3
	mondexentry SPECIES_GASTLY, ""
	mondexclassification SPECIES_GASTLY, ""
	mondexheight SPECIES_GASTLY, ""
	mondexweight SPECIES_GASTLY, ""


mondata SPECIES_HAUNTER, "Haunter"
	basestats 45, 50, 45, 95, 115, 55
	types TYPE_GHOST, TYPE_POISON
	catchrate 195
	baseexp 126// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_HAUNTER_TM_DATA_0, SPECIES_HAUNTER_TM_DATA_1, SPECIES_HAUNTER_TM_DATA_2, SPECIES_HAUNTER_TM_DATA_3
	mondexentry SPECIES_HAUNTER, ""
	mondexclassification SPECIES_HAUNTER, ""
	mondexheight SPECIES_HAUNTER, ""
	mondexweight SPECIES_HAUNTER, ""


mondata SPECIES_GENGAR, "Gengar"
	basestats 60, 65, 60, 110, 130, 75
	types TYPE_GHOST, TYPE_POISON
	catchrate 195
	baseexp 190// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_GENGAR_TM_DATA_0, SPECIES_GENGAR_TM_DATA_1, SPECIES_GENGAR_TM_DATA_2, SPECIES_GENGAR_TM_DATA_3
	mondexentry SPECIES_GENGAR, ""
	mondexclassification SPECIES_GENGAR, ""
	mondexheight SPECIES_GENGAR, ""
	mondexweight SPECIES_GENGAR, ""


mondata SPECIES_ONIX, "Onix"
	basestats 35, 45, 160, 70, 30, 45
	types TYPE_ROCK, TYPE_GROUND
	catchrate 195
	baseexp 108// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_ROCK_HEAD, ABILITY_PRESSURE
	runchance 60
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_ONIX_TM_DATA_0, SPECIES_ONIX_TM_DATA_1, SPECIES_ONIX_TM_DATA_2, SPECIES_ONIX_TM_DATA_3
	mondexentry SPECIES_ONIX, ""
	mondexclassification SPECIES_ONIX, ""
	mondexheight SPECIES_ONIX, ""
	mondexweight SPECIES_ONIX, ""


mondata SPECIES_DROWZEE, "Drowzee"
	basestats 60, 48, 45, 42, 43, 90
	types TYPE_PSYCHIC, TYPE_PSYCHIC
	catchrate 195
	baseexp 102// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_INSOMNIA, ABILITY_BAD_DREAMS
	runchance 90
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_DROWZEE_TM_DATA_0, SPECIES_DROWZEE_TM_DATA_1, SPECIES_DROWZEE_TM_DATA_2, SPECIES_DROWZEE_TM_DATA_3
	mondexentry SPECIES_DROWZEE, ""
	mondexclassification SPECIES_DROWZEE, ""
	mondexheight SPECIES_DROWZEE, ""
	mondexweight SPECIES_DROWZEE, ""


mondata SPECIES_HYPNO, "Hypno"
	basestats 85, 73, 70, 67, 73, 115
	types TYPE_PSYCHIC, TYPE_PSYCHIC
	catchrate 195
	baseexp 165// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_INSOMNIA, ABILITY_BAD_DREAMS
	runchance 60
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_HYPNO_TM_DATA_0, SPECIES_HYPNO_TM_DATA_1, SPECIES_HYPNO_TM_DATA_2, SPECIES_HYPNO_TM_DATA_3
	mondexentry SPECIES_HYPNO, ""
	mondexclassification SPECIES_HYPNO, ""
	mondexheight SPECIES_HYPNO, ""
	mondexweight SPECIES_HYPNO, ""


mondata SPECIES_KRABBY, "Krabby"
	basestats 30, 105, 90, 50, 25, 25
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 115// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
	abilities ABILITY_HYPER_CUTTER, ABILITY_SHELL_ARMOR
	runchance 90
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_KRABBY_TM_DATA_0, SPECIES_KRABBY_TM_DATA_1, SPECIES_KRABBY_TM_DATA_2, SPECIES_KRABBY_TM_DATA_3
	mondexentry SPECIES_KRABBY, ""
	mondexclassification SPECIES_KRABBY, ""
	mondexheight SPECIES_KRABBY, ""
	mondexweight SPECIES_KRABBY, ""


mondata SPECIES_KINGLER, "Kingler"
	basestats 55, 130, 115, 75, 50, 50
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 206// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
	abilities ABILITY_HYPER_CUTTER, ABILITY_SHELL_ARMOR
	runchance 60
	colorflip BODY_COLOR_RED, 1
	tmdata SPECIES_KINGLER_TM_DATA_0, SPECIES_KINGLER_TM_DATA_1, SPECIES_KINGLER_TM_DATA_2, SPECIES_KINGLER_TM_DATA_3
	mondexentry SPECIES_KINGLER, ""
	mondexclassification SPECIES_KINGLER, ""
	mondexheight SPECIES_KINGLER, ""
	mondexweight SPECIES_KINGLER, ""


mondata SPECIES_VOLTORB, "Voltorb"
	basestats 40, 30, 50, 100, 55, 55
	types TYPE_ELECTRIC, TYPE_ELECTRIC
	catchrate 195
	baseexp 103// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_SOUNDPROOF, ABILITY_STATIC
	runchance 120
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_VOLTORB_TM_DATA_0, SPECIES_VOLTORB_TM_DATA_1, SPECIES_VOLTORB_TM_DATA_2, SPECIES_VOLTORB_TM_DATA_3
	mondexentry SPECIES_VOLTORB, ""
	mondexclassification SPECIES_VOLTORB, ""
	mondexheight SPECIES_VOLTORB, ""
	mondexweight SPECIES_VOLTORB, ""


mondata SPECIES_ELECTRODE, "Electrode"
	basestats 60, 50, 70, 140, 80, 80
	types TYPE_ELECTRIC, TYPE_ELECTRIC
	catchrate 0
	baseexp 150// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_SOUNDPROOF, ABILITY_STATIC
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_ELECTRODE_TM_DATA_0, SPECIES_ELECTRODE_TM_DATA_1, SPECIES_ELECTRODE_TM_DATA_2, SPECIES_ELECTRODE_TM_DATA_3
	mondexentry SPECIES_ELECTRODE, ""
	mondexclassification SPECIES_ELECTRODE, ""
	mondexheight SPECIES_ELECTRODE, ""
	mondexweight SPECIES_ELECTRODE, ""


mondata SPECIES_EXEGGCUTE, "Exeggcute"
	basestats 60, 40, 80, 40, 60, 45
	types TYPE_GRASS, TYPE_PSYCHIC
	catchrate 195
	baseexp 98// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
	runchance 120
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_EXEGGCUTE_TM_DATA_0, SPECIES_EXEGGCUTE_TM_DATA_1, SPECIES_EXEGGCUTE_TM_DATA_2, SPECIES_EXEGGCUTE_TM_DATA_3
	mondexentry SPECIES_EXEGGCUTE, ""
	mondexclassification SPECIES_EXEGGCUTE, ""
	mondexheight SPECIES_EXEGGCUTE, ""
	mondexweight SPECIES_EXEGGCUTE, ""


mondata SPECIES_EXEGGUTOR, "Exeggutor"
	basestats 95, 95, 85, 55, 125, 65
	types TYPE_GRASS, TYPE_PSYCHIC
	catchrate 195
	baseexp 212// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_EXEGGUTOR_TM_DATA_0, SPECIES_EXEGGUTOR_TM_DATA_1, SPECIES_EXEGGUTOR_TM_DATA_2, SPECIES_EXEGGUTOR_TM_DATA_3
	mondexentry SPECIES_EXEGGUTOR, ""
	mondexclassification SPECIES_EXEGGUTOR, ""
	mondexheight SPECIES_EXEGGUTOR, ""
	mondexweight SPECIES_EXEGGUTOR, ""


mondata SPECIES_CUBONE, "Cubone"
	basestats 50, 50, 95, 35, 40, 50
	types TYPE_GROUND, TYPE_GROUND
	catchrate 195
	baseexp 87// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
	abilities ABILITY_ROCK_HEAD, ABILITY_STURDY
	runchance 90
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_CUBONE_TM_DATA_0, SPECIES_CUBONE_TM_DATA_1, SPECIES_CUBONE_TM_DATA_2, SPECIES_CUBONE_TM_DATA_3
	mondexentry SPECIES_CUBONE, ""
	mondexclassification SPECIES_CUBONE, ""
	mondexheight SPECIES_CUBONE, ""
	mondexweight SPECIES_CUBONE, ""


mondata SPECIES_MAROWAK, "Marowak"
	basestats 60, 80, 110, 45, 50, 80
	types TYPE_GROUND, TYPE_GROUND
	catchrate 195
	baseexp 124// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
	abilities ABILITY_ROCK_HEAD, ABILITY_LIGHTNING_ROD
	runchance 60
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_MAROWAK_TM_DATA_0, SPECIES_MAROWAK_TM_DATA_1, SPECIES_MAROWAK_TM_DATA_2, SPECIES_MAROWAK_TM_DATA_3
	mondexentry SPECIES_MAROWAK, ""
	mondexclassification SPECIES_MAROWAK, ""
	mondexheight SPECIES_MAROWAK, ""
	mondexweight SPECIES_MAROWAK, ""


mondata SPECIES_HITMONLEE, "Hitmonlee"
    basestats 50, 120, 53, 87, 35, 110
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_LIMBER, ABILITY_RECKLESS
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_HITMONLEE_TM_DATA_0, SPECIES_HITMONLEE_TM_DATA_1, SPECIES_HITMONLEE_TM_DATA_2, SPECIES_HITMONLEE_TM_DATA_3
    mondexentry SPECIES_HITMONLEE, "This amazing Pokémon has an awesome\nsense of balance. It can kick in\nsuccession from any position."
    mondexclassification SPECIES_HITMONLEE, "Kicking Pokémon"
    mondexheight SPECIES_HITMONLEE, "4’11”"
    mondexweight SPECIES_HITMONLEE, "109.8 lbs."


mondata SPECIES_HITMONCHAN, "Hitmonchan"
    basestats 50, 105, 79, 76, 35, 110
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_KEEN_EYE, ABILITY_IRON_FIST
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_HITMONCHAN_TM_DATA_0, SPECIES_HITMONCHAN_TM_DATA_1, SPECIES_HITMONCHAN_TM_DATA_2, SPECIES_HITMONCHAN_TM_DATA_3
    mondexentry SPECIES_HITMONCHAN, "Its punches slice the air. However,\nit seems to need a short break after\nfighting for three minutes."
    mondexclassification SPECIES_HITMONCHAN, "Punching Pokémon"
    mondexheight SPECIES_HITMONCHAN, "4’07”"
    mondexweight SPECIES_HITMONCHAN, "110.7 lbs."


mondata SPECIES_LICKITUNG, "Lickitung"
	basestats 90, 55, 75, 30, 60, 75
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 127// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
	abilities ABILITY_OWN_TEMPO, ABILITY_THICK_FAT
	runchance 60
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_LICKITUNG_TM_DATA_0, SPECIES_LICKITUNG_TM_DATA_1, SPECIES_LICKITUNG_TM_DATA_2, SPECIES_LICKITUNG_TM_DATA_3
	mondexentry SPECIES_LICKITUNG, ""
	mondexclassification SPECIES_LICKITUNG, ""
	mondexheight SPECIES_LICKITUNG, ""
	mondexweight SPECIES_LICKITUNG, ""


mondata SPECIES_KOFFING, "Koffing"
	basestats 40, 65, 95, 35, 60, 45
	types TYPE_POISON, TYPE_POISON
	catchrate 195
	baseexp 114// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_KOFFING_TM_DATA_0, SPECIES_KOFFING_TM_DATA_1, SPECIES_KOFFING_TM_DATA_2, SPECIES_KOFFING_TM_DATA_3
	mondexentry SPECIES_KOFFING, ""
	mondexclassification SPECIES_KOFFING, ""
	mondexheight SPECIES_KOFFING, ""
	mondexweight SPECIES_KOFFING, ""


mondata SPECIES_WEEZING, "Weezing"
	basestats 65, 90, 120, 60, 85, 70
	types TYPE_POISON, TYPE_POISON
	catchrate 195
	baseexp 173// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 60
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_WEEZING_TM_DATA_0, SPECIES_WEEZING_TM_DATA_1, SPECIES_WEEZING_TM_DATA_2, SPECIES_WEEZING_TM_DATA_3
	mondexentry SPECIES_WEEZING, ""
	mondexclassification SPECIES_WEEZING, ""
	mondexheight SPECIES_WEEZING, ""
	mondexweight SPECIES_WEEZING, ""


mondata SPECIES_RHYHORN, "Rhyhorn"
	basestats 80, 85, 95, 25, 30, 30
	types TYPE_GROUND, TYPE_ROCK
	catchrate 195
	baseexp 135// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
	abilities ABILITY_LIGHTNING_ROD, ABILITY_ROCK_HEAD
	runchance 90
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_RHYHORN_TM_DATA_0, SPECIES_RHYHORN_TM_DATA_1, SPECIES_RHYHORN_TM_DATA_2, SPECIES_RHYHORN_TM_DATA_3
	mondexentry SPECIES_RHYHORN, ""
	mondexclassification SPECIES_RHYHORN, ""
	mondexheight SPECIES_RHYHORN, ""
	mondexweight SPECIES_RHYHORN, ""


mondata SPECIES_RHYDON, "Rhydon"
	basestats 105, 130, 120, 40, 45, 45
	types TYPE_GROUND, TYPE_ROCK
	catchrate 195
	baseexp 204// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
	abilities ABILITY_LIGHTNING_ROD, ABILITY_ROCK_HEAD
	runchance 60
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_RHYDON_TM_DATA_0, SPECIES_RHYDON_TM_DATA_1, SPECIES_RHYDON_TM_DATA_2, SPECIES_RHYDON_TM_DATA_3
	mondexentry SPECIES_RHYDON, ""
	mondexclassification SPECIES_RHYDON, ""
	mondexheight SPECIES_RHYDON, ""
	mondexweight SPECIES_RHYDON, ""


mondata SPECIES_CHANSEY, "Chansey"
	basestats 250, 5, 5, 50, 35, 105
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 255// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 254
	eggcycles 40
	basefriendship 140
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
	abilities ABILITY_PRESSURE, ABILITY_SERENE_GRACE
	runchance 90
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_CHANSEY_TM_DATA_0, SPECIES_CHANSEY_TM_DATA_1, SPECIES_CHANSEY_TM_DATA_2, SPECIES_CHANSEY_TM_DATA_3
	mondexentry SPECIES_CHANSEY, ""
	mondexclassification SPECIES_CHANSEY, ""
	mondexheight SPECIES_CHANSEY, ""
	mondexweight SPECIES_CHANSEY, ""


mondata SPECIES_TANGELA, "Tangela"
	basestats 65, 55, 115, 60, 100, 40
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 166// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_LEAF_GUARD
	runchance 90
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_TANGELA_TM_DATA_0, SPECIES_TANGELA_TM_DATA_1, SPECIES_TANGELA_TM_DATA_2, SPECIES_TANGELA_TM_DATA_3
	mondexentry SPECIES_TANGELA, ""
	mondexclassification SPECIES_TANGELA, ""
	mondexheight SPECIES_TANGELA, ""
	mondexweight SPECIES_TANGELA, ""


mondata SPECIES_KANGASKHAN, "Kangaskhan"
	basestats 105, 95, 80, 90, 40, 80
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 175// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 254
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
	abilities ABILITY_EARLY_BIRD, ABILITY_SCRAPPY
	runchance 150
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_KANGASKHAN_TM_DATA_0, SPECIES_KANGASKHAN_TM_DATA_1, SPECIES_KANGASKHAN_TM_DATA_2, SPECIES_KANGASKHAN_TM_DATA_3
	mondexentry SPECIES_KANGASKHAN, ""
	mondexclassification SPECIES_KANGASKHAN, ""
	mondexheight SPECIES_KANGASKHAN, ""
	mondexweight SPECIES_KANGASKHAN, ""


mondata SPECIES_HORSEA, "Horsea"
	basestats 30, 40, 70, 60, 70, 25
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 83// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
	abilities ABILITY_SWIFT_SWIM, ABILITY_SNIPER
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_HORSEA_TM_DATA_0, SPECIES_HORSEA_TM_DATA_1, SPECIES_HORSEA_TM_DATA_2, SPECIES_HORSEA_TM_DATA_3
	mondexentry SPECIES_HORSEA, ""
	mondexclassification SPECIES_HORSEA, ""
	mondexheight SPECIES_HORSEA, ""
	mondexweight SPECIES_HORSEA, ""


mondata SPECIES_SEADRA, "Seadra"
	basestats 55, 65, 95, 85, 95, 45
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 155// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
	abilities ABILITY_POISON_POINT, ABILITY_SNIPER
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_SEADRA_TM_DATA_0, SPECIES_SEADRA_TM_DATA_1, SPECIES_SEADRA_TM_DATA_2, SPECIES_SEADRA_TM_DATA_3
	mondexentry SPECIES_SEADRA, ""
	mondexclassification SPECIES_SEADRA, ""
	mondexheight SPECIES_SEADRA, ""
	mondexweight SPECIES_SEADRA, ""


mondata SPECIES_GOLDEEN, "Goldeen"
	basestats 45, 67, 60, 63, 35, 50
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 111// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
	abilities ABILITY_SWIFT_SWIM, ABILITY_WATER_VEIL
	runchance 90
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_GOLDEEN_TM_DATA_0, SPECIES_GOLDEEN_TM_DATA_1, SPECIES_GOLDEEN_TM_DATA_2, SPECIES_GOLDEEN_TM_DATA_3
	mondexentry SPECIES_GOLDEEN, ""
	mondexclassification SPECIES_GOLDEEN, ""
	mondexheight SPECIES_GOLDEEN, ""
	mondexweight SPECIES_GOLDEEN, ""


mondata SPECIES_SEAKING, "Seaking"
	basestats 80, 92, 65, 68, 65, 80
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 170// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
	abilities ABILITY_SWIFT_SWIM, ABILITY_WATER_VEIL
	runchance 60
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_SEAKING_TM_DATA_0, SPECIES_SEAKING_TM_DATA_1, SPECIES_SEAKING_TM_DATA_2, SPECIES_SEAKING_TM_DATA_3
	mondexentry SPECIES_SEAKING, ""
	mondexclassification SPECIES_SEAKING, ""
	mondexheight SPECIES_SEAKING, ""
	mondexweight SPECIES_SEAKING, ""


mondata SPECIES_STARYU, "Staryu"
	basestats 30, 45, 55, 85, 70, 55
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 106// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
	abilities ABILITY_SWIFT_SWIM, ABILITY_NATURAL_CURE
	runchance 0
	colorflip BODY_COLOR_BLACK, 1
	tmdata SPECIES_STARYU_TM_DATA_0, SPECIES_STARYU_TM_DATA_1, SPECIES_STARYU_TM_DATA_2, SPECIES_STARYU_TM_DATA_3
	mondexentry SPECIES_STARYU, ""
	mondexclassification SPECIES_STARYU, ""
	mondexheight SPECIES_STARYU, ""
	mondexweight SPECIES_STARYU, ""


mondata SPECIES_STARMIE, "Starmie"
	basestats 60, 75, 85, 115, 100, 85
	types TYPE_WATER, TYPE_PSYCHIC
	catchrate 195
	baseexp 207// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
	abilities ABILITY_SWIFT_SWIM, ABILITY_NATURAL_CURE
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_STARMIE_TM_DATA_0, SPECIES_STARMIE_TM_DATA_1, SPECIES_STARMIE_TM_DATA_2, SPECIES_STARMIE_TM_DATA_3
	mondexentry SPECIES_STARMIE, ""
	mondexclassification SPECIES_STARMIE, ""
	mondexheight SPECIES_STARMIE, ""
	mondexweight SPECIES_STARMIE, ""


mondata SPECIES_MR_MIME, "Mr. Mime"
	basestats 40, 45, 65, 90, 100, 120
	types TYPE_PSYCHIC, TYPE_FAIRY
	catchrate 195
	baseexp 136// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_SOUNDPROOF, ABILITY_FILTER
	runchance 90
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_MR_MIME_TM_DATA_0, SPECIES_MR_MIME_TM_DATA_1, SPECIES_MR_MIME_TM_DATA_2, SPECIES_MR_MIME_TM_DATA_3
	mondexentry SPECIES_MR_MIME, ""
	mondexclassification SPECIES_MR_MIME, ""
	mondexheight SPECIES_MR_MIME, ""
	mondexweight SPECIES_MR_MIME, ""


mondata SPECIES_SCYTHER, "Scyther"
	basestats 70, 110, 80, 105, 55, 80
	types TYPE_BUG, TYPE_FLYING
	catchrate 195
	baseexp 187// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SWARM, ABILITY_TECHNICIAN
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_SCYTHER_TM_DATA_0, SPECIES_SCYTHER_TM_DATA_1, SPECIES_SCYTHER_TM_DATA_2, SPECIES_SCYTHER_TM_DATA_3
	mondexentry SPECIES_SCYTHER, ""
	mondexclassification SPECIES_SCYTHER, ""
	mondexheight SPECIES_SCYTHER, ""
	mondexweight SPECIES_SCYTHER, ""


mondata SPECIES_JYNX, "Jynx"
	basestats 65, 50, 35, 95, 115, 95
	types TYPE_ICE, TYPE_FAIRY
	catchrate 195
	baseexp 137// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 254
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_INNER_FOCUS, ABILITY_FOREWARN
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_JYNX_TM_DATA_0, SPECIES_JYNX_TM_DATA_1, SPECIES_JYNX_TM_DATA_2, SPECIES_JYNX_TM_DATA_3
	mondexentry SPECIES_JYNX, ""
	mondexclassification SPECIES_JYNX, ""
	mondexheight SPECIES_JYNX, ""
	mondexweight SPECIES_JYNX, ""


mondata SPECIES_ELECTABUZZ, "Electabuzz"
	basestats 65, 83, 57, 105, 95, 85
	types TYPE_ELECTRIC, TYPE_ELECTRIC
	catchrate 195
	baseexp 156// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 63
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_STATIC, ABILITY_NONE
	runchance 120
	colorflip BODY_COLOR_BLUE, 1
	tmdata SPECIES_ELECTABUZZ_TM_DATA_0, SPECIES_ELECTABUZZ_TM_DATA_1, SPECIES_ELECTABUZZ_TM_DATA_2, SPECIES_ELECTABUZZ_TM_DATA_3
	mondexentry SPECIES_ELECTABUZZ, ""
	mondexclassification SPECIES_ELECTABUZZ, ""
	mondexheight SPECIES_ELECTABUZZ, ""
	mondexweight SPECIES_ELECTABUZZ, ""


mondata SPECIES_MAGMAR, "Magmar"
	basestats 65, 95, 57, 93, 100, 85
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 167// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 63
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_FLAME_BODY, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_MAGMAR_TM_DATA_0, SPECIES_MAGMAR_TM_DATA_1, SPECIES_MAGMAR_TM_DATA_2, SPECIES_MAGMAR_TM_DATA_3
	mondexentry SPECIES_MAGMAR, ""
	mondexclassification SPECIES_MAGMAR, ""
	mondexheight SPECIES_MAGMAR, ""
	mondexweight SPECIES_MAGMAR, ""


mondata SPECIES_PINSIR, "Pinsir"
	basestats 65, 125, 100, 85, 55, 70
	types TYPE_BUG, TYPE_BUG
	catchrate 195
	baseexp 200// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_HYPER_CUTTER, ABILITY_MOLD_BREAKER
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_PINSIR_TM_DATA_0, SPECIES_PINSIR_TM_DATA_1, SPECIES_PINSIR_TM_DATA_2, SPECIES_PINSIR_TM_DATA_3
	mondexentry SPECIES_PINSIR, ""
	mondexclassification SPECIES_PINSIR, ""
	mondexheight SPECIES_PINSIR, ""
	mondexweight SPECIES_PINSIR, ""


mondata SPECIES_TAUROS, "Tauros"
    basestats 75, 100, 95, 110, 40, 70
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_ANGER_POINT
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_TAUROS_TM_DATA_0, SPECIES_TAUROS_TM_DATA_1, SPECIES_TAUROS_TM_DATA_2, SPECIES_TAUROS_TM_DATA_3
    mondexentry SPECIES_TAUROS, "They fight each other by locking\nhorns. The herd’s protector takes\npride in its battle-scarred horns."
    mondexclassification SPECIES_TAUROS, "Wild Bull Pokémon"
    mondexheight SPECIES_TAUROS, "4’07”"
    mondexweight SPECIES_TAUROS, "194.9 lbs."


mondata SPECIES_MAGIKARP, "Magikarp"
	basestats 20, 10, 55, 80, 15, 20
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 20// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 5
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_2, EGG_GROUP_DRAGON
	abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_MAGIKARP_TM_DATA_0, SPECIES_MAGIKARP_TM_DATA_1, SPECIES_MAGIKARP_TM_DATA_2, SPECIES_MAGIKARP_TM_DATA_3
	mondexentry SPECIES_MAGIKARP, ""
	mondexclassification SPECIES_MAGIKARP, ""
	mondexheight SPECIES_MAGIKARP, ""
	mondexweight SPECIES_MAGIKARP, ""


mondata SPECIES_GYARADOS, "Gyarados"
	basestats 95, 125, 79, 81, 60, 100
	types TYPE_WATER, TYPE_FLYING
	catchrate 0
	baseexp 214// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 5
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_2, EGG_GROUP_DRAGON
	abilities ABILITY_INTIMIDATE, ABILITY_NONE
	runchance 60
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_GYARADOS_TM_DATA_0, SPECIES_GYARADOS_TM_DATA_1, SPECIES_GYARADOS_TM_DATA_2, SPECIES_GYARADOS_TM_DATA_3
	mondexentry SPECIES_GYARADOS, ""
	mondexclassification SPECIES_GYARADOS, ""
	mondexheight SPECIES_GYARADOS, ""
	mondexweight SPECIES_GYARADOS, ""


mondata SPECIES_LAPRAS, "Lapras"
	basestats 130, 85, 80, 60, 85, 95
	types TYPE_WATER, TYPE_ICE
	catchrate 195
	baseexp 219// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 40
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
	abilities ABILITY_WATER_ABSORB, ABILITY_SHELL_ARMOR
	runchance 60
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_LAPRAS_TM_DATA_0, SPECIES_LAPRAS_TM_DATA_1, SPECIES_LAPRAS_TM_DATA_2, SPECIES_LAPRAS_TM_DATA_3
	mondexentry SPECIES_LAPRAS, ""
	mondexclassification SPECIES_LAPRAS, ""
	mondexheight SPECIES_LAPRAS, ""
	mondexweight SPECIES_LAPRAS, ""


mondata SPECIES_DITTO, "Ditto"
	basestats 48, 48, 48, 48, 48, 48
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 61// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_DITTO, EGG_GROUP_DITTO
	abilities ABILITY_PRESSURE, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_DITTO_TM_DATA_0, SPECIES_DITTO_TM_DATA_1, SPECIES_DITTO_TM_DATA_2, SPECIES_DITTO_TM_DATA_3
	mondexentry SPECIES_DITTO, ""
	mondexclassification SPECIES_DITTO, ""
	mondexheight SPECIES_DITTO, ""
	mondexweight SPECIES_DITTO, ""


mondata SPECIES_EEVEE, "Eevee"
	basestats 55, 55, 50, 55, 45, 65
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 92// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 35
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_NORMALIZE, ABILITY_ADAPTABILITY
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_EEVEE_TM_DATA_0, SPECIES_EEVEE_TM_DATA_1, SPECIES_EEVEE_TM_DATA_2, SPECIES_EEVEE_TM_DATA_3
	mondexentry SPECIES_EEVEE, ""
	mondexclassification SPECIES_EEVEE, ""
	mondexheight SPECIES_EEVEE, ""
	mondexweight SPECIES_EEVEE, ""


mondata SPECIES_VAPOREON, "Vaporeon"
	basestats 130, 65, 60, 65, 110, 95
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 196// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 35
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_WATER_ABSORB, ABILITY_WATER_ABSORB
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_VAPOREON_TM_DATA_0, SPECIES_VAPOREON_TM_DATA_1, SPECIES_VAPOREON_TM_DATA_2, SPECIES_VAPOREON_TM_DATA_3
	mondexentry SPECIES_VAPOREON, ""
	mondexclassification SPECIES_VAPOREON, ""
	mondexheight SPECIES_VAPOREON, ""
	mondexweight SPECIES_VAPOREON, ""


mondata SPECIES_JOLTEON, "Jolteon"
	basestats 65, 65, 60, 130, 110, 95
	types TYPE_ELECTRIC, TYPE_ELECTRIC
	catchrate 195
	baseexp 197// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 35
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_VOLT_ABSORB, ABILITY_VOLT_ABSORB
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_JOLTEON_TM_DATA_0, SPECIES_JOLTEON_TM_DATA_1, SPECIES_JOLTEON_TM_DATA_2, SPECIES_JOLTEON_TM_DATA_3
	mondexentry SPECIES_JOLTEON, ""
	mondexclassification SPECIES_JOLTEON, ""
	mondexheight SPECIES_JOLTEON, ""
	mondexweight SPECIES_JOLTEON, ""


mondata SPECIES_FLAREON, "Flareon"
	basestats 65, 130, 60, 65, 95, 110
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 198// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 35
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_FLASH_FIRE, ABILITY_FLASH_FIRE
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_FLAREON_TM_DATA_0, SPECIES_FLAREON_TM_DATA_1, SPECIES_FLAREON_TM_DATA_2, SPECIES_FLAREON_TM_DATA_3
	mondexentry SPECIES_FLAREON, ""
	mondexclassification SPECIES_FLAREON, ""
	mondexheight SPECIES_FLAREON, ""
	mondexweight SPECIES_FLAREON, ""


mondata SPECIES_PORYGON, "Porygon"
	basestats 65, 60, 70, 40, 85, 75
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 130// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_TRACE, ABILITY_DOWNLOAD
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_PORYGON_TM_DATA_0, SPECIES_PORYGON_TM_DATA_1, SPECIES_PORYGON_TM_DATA_2, SPECIES_PORYGON_TM_DATA_3
	mondexentry SPECIES_PORYGON, ""
	mondexclassification SPECIES_PORYGON, ""
	mondexheight SPECIES_PORYGON, ""
	mondexweight SPECIES_PORYGON, ""


mondata SPECIES_OMANYTE, "Omanyte"
	basestats 35, 40, 100, 35, 90, 55
	types TYPE_ROCK, TYPE_WATER
	catchrate 195
	baseexp 99// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 30
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
	abilities ABILITY_SWIFT_SWIM, ABILITY_SHELL_ARMOR
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_OMANYTE_TM_DATA_0, SPECIES_OMANYTE_TM_DATA_1, SPECIES_OMANYTE_TM_DATA_2, SPECIES_OMANYTE_TM_DATA_3
	mondexentry SPECIES_OMANYTE, ""
	mondexclassification SPECIES_OMANYTE, ""
	mondexheight SPECIES_OMANYTE, ""
	mondexweight SPECIES_OMANYTE, ""


mondata SPECIES_OMASTAR, "Omastar"
	basestats 70, 60, 125, 55, 115, 70
	types TYPE_ROCK, TYPE_WATER
	catchrate 0
	baseexp 199// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 30
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
	abilities ABILITY_SWIFT_SWIM, ABILITY_SWIFT_SWIM
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_OMASTAR_TM_DATA_0, SPECIES_OMASTAR_TM_DATA_1, SPECIES_OMASTAR_TM_DATA_2, SPECIES_OMASTAR_TM_DATA_3
	mondexentry SPECIES_OMASTAR, ""
	mondexclassification SPECIES_OMASTAR, ""
	mondexheight SPECIES_OMASTAR, ""
	mondexweight SPECIES_OMASTAR, ""


mondata SPECIES_KABUTO, "Kabuto"
	basestats 30, 80, 90, 55, 55, 45
	types TYPE_ROCK, TYPE_WATER
	catchrate 195
	baseexp 99// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 30
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
	abilities ABILITY_SWIFT_SWIM, ABILITY_BATTLE_ARMOR
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_KABUTO_TM_DATA_0, SPECIES_KABUTO_TM_DATA_1, SPECIES_KABUTO_TM_DATA_2, SPECIES_KABUTO_TM_DATA_3
	mondexentry SPECIES_KABUTO, ""
	mondexclassification SPECIES_KABUTO, ""
	mondexheight SPECIES_KABUTO, ""
	mondexweight SPECIES_KABUTO, ""


mondata SPECIES_KABUTOPS, "Kabutops"
	basestats 60, 115, 105, 80, 65, 70
	types TYPE_ROCK, TYPE_WATER
	catchrate 0
	baseexp 199// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 30
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
	abilities ABILITY_SWIFT_SWIM, ABILITY_SWIFT_SWIM
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_KABUTOPS_TM_DATA_0, SPECIES_KABUTOPS_TM_DATA_1, SPECIES_KABUTOPS_TM_DATA_2, SPECIES_KABUTOPS_TM_DATA_3
	mondexentry SPECIES_KABUTOPS, ""
	mondexclassification SPECIES_KABUTOPS, ""
	mondexheight SPECIES_KABUTOPS, ""
	mondexweight SPECIES_KABUTOPS, ""


mondata SPECIES_AERODACTYL, "Aerodactyl"
	basestats 80, 105, 65, 130, 60, 75
	types TYPE_ROCK, TYPE_FLYING
	catchrate 195
	baseexp 202// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 35
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_ROCK_HEAD, ABILITY_PRESSURE
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_AERODACTYL_TM_DATA_0, SPECIES_AERODACTYL_TM_DATA_1, SPECIES_AERODACTYL_TM_DATA_2, SPECIES_AERODACTYL_TM_DATA_3
	mondexentry SPECIES_AERODACTYL, ""
	mondexclassification SPECIES_AERODACTYL, ""
	mondexheight SPECIES_AERODACTYL, ""
	mondexweight SPECIES_AERODACTYL, ""


mondata SPECIES_SNORLAX, "Snorlax"
	basestats 160, 110, 65, 30, 65, 110
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 154// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 40
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
	abilities ABILITY_IMMUNITY, ABILITY_THICK_FAT
	runchance 0
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_SNORLAX_TM_DATA_0, SPECIES_SNORLAX_TM_DATA_1, SPECIES_SNORLAX_TM_DATA_2, SPECIES_SNORLAX_TM_DATA_3
	mondexentry SPECIES_SNORLAX, ""
	mondexclassification SPECIES_SNORLAX, ""
	mondexheight SPECIES_SNORLAX, ""
	mondexweight SPECIES_SNORLAX, ""


mondata SPECIES_ARTICUNO, "Articuno"
	basestats 90, 85, 100, 85, 95, 125
	types TYPE_ICE, TYPE_FLYING
	catchrate 195
	baseexp 215// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 80
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_ICE_BODY, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_ARTICUNO_TM_DATA_0, SPECIES_ARTICUNO_TM_DATA_1, SPECIES_ARTICUNO_TM_DATA_2, SPECIES_ARTICUNO_TM_DATA_3
	mondexentry SPECIES_ARTICUNO, ""
	mondexclassification SPECIES_ARTICUNO, ""
	mondexheight SPECIES_ARTICUNO, ""
	mondexweight SPECIES_ARTICUNO, ""


mondata SPECIES_ZAPDOS, "Zapdos"
	basestats 90, 90, 85, 100, 125, 90
	types TYPE_ELECTRIC, TYPE_FLYING
	catchrate 195
	baseexp 216// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 80
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_STATIC, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_ZAPDOS_TM_DATA_0, SPECIES_ZAPDOS_TM_DATA_1, SPECIES_ZAPDOS_TM_DATA_2, SPECIES_ZAPDOS_TM_DATA_3
	mondexentry SPECIES_ZAPDOS, ""
	mondexclassification SPECIES_ZAPDOS, ""
	mondexheight SPECIES_ZAPDOS, ""
	mondexweight SPECIES_ZAPDOS, ""


mondata SPECIES_MOLTRES, "Moltres"
	basestats 90, 100, 90, 90, 125, 85
	types TYPE_FIRE, TYPE_FLYING
	catchrate 195
	baseexp 217// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 80
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_FLAME_BODY, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_MOLTRES_TM_DATA_0, SPECIES_MOLTRES_TM_DATA_1, SPECIES_MOLTRES_TM_DATA_2, SPECIES_MOLTRES_TM_DATA_3
	mondexentry SPECIES_MOLTRES, ""
	mondexclassification SPECIES_MOLTRES, ""
	mondexheight SPECIES_MOLTRES, ""
	mondexweight SPECIES_MOLTRES, ""


mondata SPECIES_DRATINI, "Dratini"
	basestats 41, 64, 45, 50, 50, 50
	types TYPE_DRAGON, TYPE_DRAGON
	catchrate 195
	baseexp 67// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 40
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
	abilities ABILITY_SHED_SKIN, ABILITY_NONE
	runchance 120
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_DRATINI_TM_DATA_0, SPECIES_DRATINI_TM_DATA_1, SPECIES_DRATINI_TM_DATA_2, SPECIES_DRATINI_TM_DATA_3
	mondexentry SPECIES_DRATINI, ""
	mondexclassification SPECIES_DRATINI, ""
	mondexheight SPECIES_DRATINI, ""
	mondexweight SPECIES_DRATINI, ""


mondata SPECIES_DRAGONAIR, "Dragonair"
	basestats 61, 84, 65, 70, 70, 70
	types TYPE_DRAGON, TYPE_DRAGON
	catchrate 195
	baseexp 144// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 40
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
	abilities ABILITY_SHED_SKIN, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_DRAGONAIR_TM_DATA_0, SPECIES_DRAGONAIR_TM_DATA_1, SPECIES_DRAGONAIR_TM_DATA_2, SPECIES_DRAGONAIR_TM_DATA_3
	mondexentry SPECIES_DRAGONAIR, ""
	mondexclassification SPECIES_DRAGONAIR, ""
	mondexheight SPECIES_DRAGONAIR, ""
	mondexweight SPECIES_DRAGONAIR, ""


mondata SPECIES_DRAGONITE, "Dragonite"
	basestats 91, 134, 95, 80, 100, 100
	types TYPE_DRAGON, TYPE_FLYING
	catchrate 195
	baseexp 218// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 40
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
	abilities ABILITY_INNER_FOCUS, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_DRAGONITE_TM_DATA_0, SPECIES_DRAGONITE_TM_DATA_1, SPECIES_DRAGONITE_TM_DATA_2, SPECIES_DRAGONITE_TM_DATA_3
	mondexentry SPECIES_DRAGONITE, ""
	mondexclassification SPECIES_DRAGONITE, ""
	mondexheight SPECIES_DRAGONITE, ""
	mondexweight SPECIES_DRAGONITE, ""


mondata SPECIES_MEWTWO, "Mewtwo"
	basestats 106, 110, 90, 130, 154, 90
	types TYPE_PSYCHIC, TYPE_PSYCHIC
	catchrate 195
	baseexp 220// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 120
	basefriendship 0
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_SHADOW_TAG, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_MEWTWO_TM_DATA_0, SPECIES_MEWTWO_TM_DATA_1, SPECIES_MEWTWO_TM_DATA_2, SPECIES_MEWTWO_TM_DATA_3
	mondexentry SPECIES_MEWTWO, ""
	mondexclassification SPECIES_MEWTWO, ""
	mondexheight SPECIES_MEWTWO, ""
	mondexweight SPECIES_MEWTWO, ""


mondata SPECIES_MEW, "Mew"
	basestats 100, 100, 100, 100, 100, 100
	types TYPE_PSYCHIC, TYPE_PSYCHIC
	catchrate 195
	baseexp 64// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 120
	basefriendship 100
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_SYNCHRONIZE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_MEW_TM_DATA_0, SPECIES_MEW_TM_DATA_1, SPECIES_MEW_TM_DATA_2, SPECIES_MEW_TM_DATA_3
	mondexentry SPECIES_MEW, ""
	mondexclassification SPECIES_MEW, ""
	mondexheight SPECIES_MEW, ""
	mondexweight SPECIES_MEW, ""


mondata SPECIES_CHIKORITA, "Chikorita"
	basestats 45, 49, 65, 45, 49, 65
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 64// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
	abilities ABILITY_OVERGROW, ABILITY_LEAF_GUARD
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_CHIKORITA_TM_DATA_0, SPECIES_CHIKORITA_TM_DATA_1, SPECIES_CHIKORITA_TM_DATA_2, SPECIES_CHIKORITA_TM_DATA_3
	mondexentry SPECIES_CHIKORITA, ""
	mondexclassification SPECIES_CHIKORITA, ""
	mondexheight SPECIES_CHIKORITA, ""
	mondexweight SPECIES_CHIKORITA, ""


mondata SPECIES_BAYLEEF, "Bayleef"
	basestats 60, 62, 80, 60, 63, 80
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 141// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
	abilities ABILITY_OVERGROW, ABILITY_LEAF_GUARD
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_BAYLEEF_TM_DATA_0, SPECIES_BAYLEEF_TM_DATA_1, SPECIES_BAYLEEF_TM_DATA_2, SPECIES_BAYLEEF_TM_DATA_3
	mondexentry SPECIES_BAYLEEF, ""
	mondexclassification SPECIES_BAYLEEF, ""
	mondexheight SPECIES_BAYLEEF, ""
	mondexweight SPECIES_BAYLEEF, ""


mondata SPECIES_MEGANIUM, "Meganium"
	basestats 80, 82, 100, 80, 83, 100
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 208// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
	abilities ABILITY_OVERGROW, ABILITY_LEAF_GUARD
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_MEGANIUM_TM_DATA_0, SPECIES_MEGANIUM_TM_DATA_1, SPECIES_MEGANIUM_TM_DATA_2, SPECIES_MEGANIUM_TM_DATA_3
	mondexentry SPECIES_MEGANIUM, ""
	mondexclassification SPECIES_MEGANIUM, ""
	mondexheight SPECIES_MEGANIUM, ""
	mondexweight SPECIES_MEGANIUM, ""


mondata SPECIES_CYNDAQUIL, "Cyndaquil"
	basestats 39, 52, 43, 65, 60, 50
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 65// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_BLAZE, ABILITY_FLAME_BODY
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_CYNDAQUIL_TM_DATA_0, SPECIES_CYNDAQUIL_TM_DATA_1, SPECIES_CYNDAQUIL_TM_DATA_2, SPECIES_CYNDAQUIL_TM_DATA_3
	mondexentry SPECIES_CYNDAQUIL, ""
	mondexclassification SPECIES_CYNDAQUIL, ""
	mondexheight SPECIES_CYNDAQUIL, ""
	mondexweight SPECIES_CYNDAQUIL, ""


mondata SPECIES_QUILAVA, "Quilava"
	basestats 58, 64, 58, 80, 80, 65
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 142// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_BLAZE, ABILITY_FLAME_BODY
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_QUILAVA_TM_DATA_0, SPECIES_QUILAVA_TM_DATA_1, SPECIES_QUILAVA_TM_DATA_2, SPECIES_QUILAVA_TM_DATA_3
	mondexentry SPECIES_QUILAVA, ""
	mondexclassification SPECIES_QUILAVA, ""
	mondexheight SPECIES_QUILAVA, ""
	mondexweight SPECIES_QUILAVA, ""


mondata SPECIES_TYPHLOSION, "Typhlosion"
	basestats 78, 84, 78, 100, 109, 85
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 209// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_BLAZE, ABILITY_FLAME_BODY
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_TYPHLOSION_TM_DATA_0, SPECIES_TYPHLOSION_TM_DATA_1, SPECIES_TYPHLOSION_TM_DATA_2, SPECIES_TYPHLOSION_TM_DATA_3
	mondexentry SPECIES_TYPHLOSION, ""
	mondexclassification SPECIES_TYPHLOSION, ""
	mondexheight SPECIES_TYPHLOSION, ""
	mondexweight SPECIES_TYPHLOSION, ""


mondata SPECIES_TOTODILE, "Totodile"
	basestats 50, 65, 64, 43, 44, 48
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 66// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
	abilities ABILITY_TORRENT, ABILITY_ROUGH_SKIN
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_TOTODILE_TM_DATA_0, SPECIES_TOTODILE_TM_DATA_1, SPECIES_TOTODILE_TM_DATA_2, SPECIES_TOTODILE_TM_DATA_3
	mondexentry SPECIES_TOTODILE, ""
	mondexclassification SPECIES_TOTODILE, ""
	mondexheight SPECIES_TOTODILE, ""
	mondexweight SPECIES_TOTODILE, ""


mondata SPECIES_CROCONAW, "Croconaw"
	basestats 65, 80, 80, 58, 59, 63
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 143// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
	abilities ABILITY_TORRENT, ABILITY_ROUGH_SKIN
	runchance 0
	colorflip BODY_COLOR_RED, 1
	tmdata SPECIES_CROCONAW_TM_DATA_0, SPECIES_CROCONAW_TM_DATA_1, SPECIES_CROCONAW_TM_DATA_2, SPECIES_CROCONAW_TM_DATA_3
	mondexentry SPECIES_CROCONAW, ""
	mondexclassification SPECIES_CROCONAW, ""
	mondexheight SPECIES_CROCONAW, ""
	mondexweight SPECIES_CROCONAW, ""


mondata SPECIES_FERALIGATR, "Feraligatr"
	basestats 85, 105, 100, 78, 79, 83
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 210// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
	abilities ABILITY_TORRENT, ABILITY_ROUGH_SKIN
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_FERALIGATR_TM_DATA_0, SPECIES_FERALIGATR_TM_DATA_1, SPECIES_FERALIGATR_TM_DATA_2, SPECIES_FERALIGATR_TM_DATA_3
	mondexentry SPECIES_FERALIGATR, ""
	mondexclassification SPECIES_FERALIGATR, ""
	mondexheight SPECIES_FERALIGATR, ""
	mondexweight SPECIES_FERALIGATR, ""


mondata SPECIES_SENTRET, "Sentret"
	basestats 35, 46, 34, 20, 35, 45
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 57// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_TECHNICIAN, ABILITY_KEEN_EYE
	runchance 120
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_SENTRET_TM_DATA_0, SPECIES_SENTRET_TM_DATA_1, SPECIES_SENTRET_TM_DATA_2, SPECIES_SENTRET_TM_DATA_3
	mondexentry SPECIES_SENTRET, ""
	mondexclassification SPECIES_SENTRET, ""
	mondexheight SPECIES_SENTRET, ""
	mondexweight SPECIES_SENTRET, ""


mondata SPECIES_FURRET, "Furret"
	basestats 85, 76, 64, 90, 45, 55
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 116// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_TECHNICIAN, ABILITY_KEEN_EYE
	runchance 90
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_FURRET_TM_DATA_0, SPECIES_FURRET_TM_DATA_1, SPECIES_FURRET_TM_DATA_2, SPECIES_FURRET_TM_DATA_3
	mondexentry SPECIES_FURRET, ""
	mondexclassification SPECIES_FURRET, ""
	mondexheight SPECIES_FURRET, ""
	mondexweight SPECIES_FURRET, ""


mondata SPECIES_HOOTHOOT, "Hoothoot"
	basestats 60, 30, 30, 50, 36, 56
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 58// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_INSOMNIA, ABILITY_KEEN_EYE
	runchance 90
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_HOOTHOOT_TM_DATA_0, SPECIES_HOOTHOOT_TM_DATA_1, SPECIES_HOOTHOOT_TM_DATA_2, SPECIES_HOOTHOOT_TM_DATA_3
	mondexentry SPECIES_HOOTHOOT, ""
	mondexclassification SPECIES_HOOTHOOT, ""
	mondexheight SPECIES_HOOTHOOT, ""
	mondexweight SPECIES_HOOTHOOT, ""


mondata SPECIES_NOCTOWL, "Noctowl"
	basestats 100, 50, 50, 70, 76, 96
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 162// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_INSOMNIA, ABILITY_KEEN_EYE
	runchance 60
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_NOCTOWL_TM_DATA_0, SPECIES_NOCTOWL_TM_DATA_1, SPECIES_NOCTOWL_TM_DATA_2, SPECIES_NOCTOWL_TM_DATA_3
	mondexentry SPECIES_NOCTOWL, ""
	mondexclassification SPECIES_NOCTOWL, ""
	mondexheight SPECIES_NOCTOWL, ""
	mondexweight SPECIES_NOCTOWL, ""


mondata SPECIES_LEDYBA, "Ledyba"
	basestats 40, 20, 30, 55, 40, 80
	types TYPE_BUG, TYPE_FLYING
	catchrate 195
	baseexp 54// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SWARM, ABILITY_EARLY_BIRD
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_LEDYBA_TM_DATA_0, SPECIES_LEDYBA_TM_DATA_1, SPECIES_LEDYBA_TM_DATA_2, SPECIES_LEDYBA_TM_DATA_3
	mondexentry SPECIES_LEDYBA, ""
	mondexclassification SPECIES_LEDYBA, ""
	mondexheight SPECIES_LEDYBA, ""
	mondexweight SPECIES_LEDYBA, ""


mondata SPECIES_LEDIAN, "Ledian"
	basestats 55, 35, 50, 85, 55, 110
	types TYPE_BUG, TYPE_FLYING
	catchrate 195
	baseexp 134// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SWARM, ABILITY_EARLY_BIRD
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_LEDIAN_TM_DATA_0, SPECIES_LEDIAN_TM_DATA_1, SPECIES_LEDIAN_TM_DATA_2, SPECIES_LEDIAN_TM_DATA_3
	mondexentry SPECIES_LEDIAN, ""
	mondexclassification SPECIES_LEDIAN, ""
	mondexheight SPECIES_LEDIAN, ""
	mondexweight SPECIES_LEDIAN, ""


mondata SPECIES_SPINARAK, "Spinarak"
	basestats 40, 60, 40, 30, 40, 40
	types TYPE_BUG, TYPE_POISON
	catchrate 195
	baseexp 54// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SWARM, ABILITY_INSOMNIA
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_SPINARAK_TM_DATA_0, SPECIES_SPINARAK_TM_DATA_1, SPECIES_SPINARAK_TM_DATA_2, SPECIES_SPINARAK_TM_DATA_3
	mondexentry SPECIES_SPINARAK, ""
	mondexclassification SPECIES_SPINARAK, ""
	mondexheight SPECIES_SPINARAK, ""
	mondexweight SPECIES_SPINARAK, ""


mondata SPECIES_ARIADOS, "Ariados"
	basestats 70, 90, 70, 40, 60, 60
	types TYPE_BUG, TYPE_POISON
	catchrate 195
	baseexp 134// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SWARM, ABILITY_INSOMNIA
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_ARIADOS_TM_DATA_0, SPECIES_ARIADOS_TM_DATA_1, SPECIES_ARIADOS_TM_DATA_2, SPECIES_ARIADOS_TM_DATA_3
	mondexentry SPECIES_ARIADOS, ""
	mondexclassification SPECIES_ARIADOS, ""
	mondexheight SPECIES_ARIADOS, ""
	mondexweight SPECIES_ARIADOS, ""


mondata SPECIES_CROBAT, "Crobat"
	basestats 85, 90, 80, 130, 70, 80
	types TYPE_POISON, TYPE_FLYING
	catchrate 195
	baseexp 204// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_SHADOW_TAG, ABILITY_INNER_FOCUS
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_CROBAT_TM_DATA_0, SPECIES_CROBAT_TM_DATA_1, SPECIES_CROBAT_TM_DATA_2, SPECIES_CROBAT_TM_DATA_3
	mondexentry SPECIES_CROBAT, ""
	mondexclassification SPECIES_CROBAT, ""
	mondexheight SPECIES_CROBAT, ""
	mondexweight SPECIES_CROBAT, ""


mondata SPECIES_CHINCHOU, "Chinchou"
	basestats 75, 38, 38, 67, 56, 56
	types TYPE_WATER, TYPE_ELECTRIC
	catchrate 195
	baseexp 90// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
	abilities ABILITY_VOLT_ABSORB, ABILITY_DAMP
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_CHINCHOU_TM_DATA_0, SPECIES_CHINCHOU_TM_DATA_1, SPECIES_CHINCHOU_TM_DATA_2, SPECIES_CHINCHOU_TM_DATA_3
	mondexentry SPECIES_CHINCHOU, ""
	mondexclassification SPECIES_CHINCHOU, ""
	mondexheight SPECIES_CHINCHOU, ""
	mondexweight SPECIES_CHINCHOU, ""


mondata SPECIES_LANTURN, "Lanturn"
	basestats 125, 58, 58, 67, 76, 76
	types TYPE_WATER, TYPE_ELECTRIC
	catchrate 195
	baseexp 156// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
	abilities ABILITY_VOLT_ABSORB, ABILITY_VOLT_ABSORB
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_LANTURN_TM_DATA_0, SPECIES_LANTURN_TM_DATA_1, SPECIES_LANTURN_TM_DATA_2, SPECIES_LANTURN_TM_DATA_3
	mondexentry SPECIES_LANTURN, ""
	mondexclassification SPECIES_LANTURN, ""
	mondexheight SPECIES_LANTURN, ""
	mondexweight SPECIES_LANTURN, ""


mondata SPECIES_PICHU, "Pichu"
	basestats 20, 40, 15, 60, 35, 35
	types TYPE_ELECTRIC, TYPE_FAIRY
	catchrate 195
	baseexp 42// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 10
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_STATIC, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 1
	tmdata SPECIES_PICHU_TM_DATA_0, SPECIES_PICHU_TM_DATA_1, SPECIES_PICHU_TM_DATA_2, SPECIES_PICHU_TM_DATA_3
	mondexentry SPECIES_PICHU, ""
	mondexclassification SPECIES_PICHU, ""
	mondexheight SPECIES_PICHU, ""
	mondexweight SPECIES_PICHU, ""


mondata SPECIES_CLEFFA, "Cleffa"
	basestats 50, 25, 28, 15, 45, 55
	types TYPE_FAIRY, TYPE_FAIRY
	catchrate 195
	baseexp 37// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 191
	eggcycles 10
	basefriendship 140
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_CUTE_CHARM, ABILITY_MAGIC_GUARD
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_CLEFFA_TM_DATA_0, SPECIES_CLEFFA_TM_DATA_1, SPECIES_CLEFFA_TM_DATA_2, SPECIES_CLEFFA_TM_DATA_3
	mondexentry SPECIES_CLEFFA, ""
	mondexclassification SPECIES_CLEFFA, ""
	mondexheight SPECIES_CLEFFA, ""
	mondexweight SPECIES_CLEFFA, ""


mondata SPECIES_IGGLYBUFF, "Igglybuff"
	basestats 90, 30, 15, 15, 40, 20
	types TYPE_FAIRY, TYPE_FAIRY
	catchrate 195
	baseexp 39// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 191
	eggcycles 10
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_CUTE_CHARM, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_WHITE, 1
	tmdata SPECIES_IGGLYBUFF_TM_DATA_0, SPECIES_IGGLYBUFF_TM_DATA_1, SPECIES_IGGLYBUFF_TM_DATA_2, SPECIES_IGGLYBUFF_TM_DATA_3
	mondexentry SPECIES_IGGLYBUFF, ""
	mondexclassification SPECIES_IGGLYBUFF, ""
	mondexheight SPECIES_IGGLYBUFF, ""
	mondexweight SPECIES_IGGLYBUFF, ""


mondata SPECIES_TOGEPI, "Togepi"
	basestats 35, 20, 65, 20, 40, 65
	types TYPE_FAIRY, TYPE_FAIRY
	catchrate 195
	baseexp 74// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 10
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_HUSTLE, ABILITY_SERENE_GRACE
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_TOGEPI_TM_DATA_0, SPECIES_TOGEPI_TM_DATA_1, SPECIES_TOGEPI_TM_DATA_2, SPECIES_TOGEPI_TM_DATA_3
	mondexentry SPECIES_TOGEPI, ""
	mondexclassification SPECIES_TOGEPI, ""
	mondexheight SPECIES_TOGEPI, ""
	mondexweight SPECIES_TOGEPI, ""


mondata SPECIES_TOGETIC, "Togetic"
	basestats 55, 40, 85, 40, 80, 105
	types TYPE_FAIRY, TYPE_FLYING
	catchrate 195
	baseexp 114// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 10
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FAIRY
	abilities ABILITY_HUSTLE, ABILITY_SERENE_GRACE
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_TOGETIC_TM_DATA_0, SPECIES_TOGETIC_TM_DATA_1, SPECIES_TOGETIC_TM_DATA_2, SPECIES_TOGETIC_TM_DATA_3
	mondexentry SPECIES_TOGETIC, ""
	mondexclassification SPECIES_TOGETIC, ""
	mondexheight SPECIES_TOGETIC, ""
	mondexweight SPECIES_TOGETIC, ""


mondata SPECIES_NATU, "Natu"
	basestats 40, 50, 45, 70, 70, 45
	types TYPE_PSYCHIC, TYPE_FLYING
	catchrate 195
	baseexp 73// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_SYNCHRONIZE, ABILITY_MAGIC_GUARD
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_NATU_TM_DATA_0, SPECIES_NATU_TM_DATA_1, SPECIES_NATU_TM_DATA_2, SPECIES_NATU_TM_DATA_3
	mondexentry SPECIES_NATU, ""
	mondexclassification SPECIES_NATU, ""
	mondexheight SPECIES_NATU, ""
	mondexweight SPECIES_NATU, ""


mondata SPECIES_XATU, "Xatu"
	basestats 65, 75, 70, 95, 95, 70
	types TYPE_PSYCHIC, TYPE_FLYING
	catchrate 195
	baseexp 171// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_SYNCHRONIZE, ABILITY_MAGIC_GUARD
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_XATU_TM_DATA_0, SPECIES_XATU_TM_DATA_1, SPECIES_XATU_TM_DATA_2, SPECIES_XATU_TM_DATA_3
	mondexentry SPECIES_XATU, ""
	mondexclassification SPECIES_XATU, ""
	mondexheight SPECIES_XATU, ""
	mondexweight SPECIES_XATU, ""


mondata SPECIES_MAREEP, "Mareep"
	basestats 55, 40, 40, 35, 65, 45
	types TYPE_ELECTRIC, TYPE_ELECTRIC
	catchrate 195
	baseexp 59// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
	abilities ABILITY_STATIC, ABILITY_NONE
	runchance 60
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_MAREEP_TM_DATA_0, SPECIES_MAREEP_TM_DATA_1, SPECIES_MAREEP_TM_DATA_2, SPECIES_MAREEP_TM_DATA_3
	mondexentry SPECIES_MAREEP, ""
	mondexclassification SPECIES_MAREEP, ""
	mondexheight SPECIES_MAREEP, ""
	mondexweight SPECIES_MAREEP, ""


mondata SPECIES_FLAAFFY, "Flaaffy"
	basestats 70, 55, 55, 45, 80, 60
	types TYPE_ELECTRIC, TYPE_ELECTRIC
	catchrate 195
	baseexp 117// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
	abilities ABILITY_STATIC, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_FLAAFFY_TM_DATA_0, SPECIES_FLAAFFY_TM_DATA_1, SPECIES_FLAAFFY_TM_DATA_2, SPECIES_FLAAFFY_TM_DATA_3
	mondexentry SPECIES_FLAAFFY, ""
	mondexclassification SPECIES_FLAAFFY, ""
	mondexheight SPECIES_FLAAFFY, ""
	mondexweight SPECIES_FLAAFFY, ""


mondata SPECIES_AMPHAROS, "Ampharos"
	basestats 90, 75, 75, 55, 115, 90
	types TYPE_ELECTRIC, TYPE_DRAGON
	catchrate 0
	baseexp 194// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
	abilities ABILITY_STATIC, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_AMPHAROS_TM_DATA_0, SPECIES_AMPHAROS_TM_DATA_1, SPECIES_AMPHAROS_TM_DATA_2, SPECIES_AMPHAROS_TM_DATA_3
	mondexentry SPECIES_AMPHAROS, ""
	mondexclassification SPECIES_AMPHAROS, ""
	mondexheight SPECIES_AMPHAROS, ""
	mondexweight SPECIES_AMPHAROS, ""


mondata SPECIES_BELLOSSOM, "Bellossom"
	basestats 75, 80, 85, 50, 90, 100
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 184// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_BELLOSSOM_TM_DATA_0, SPECIES_BELLOSSOM_TM_DATA_1, SPECIES_BELLOSSOM_TM_DATA_2, SPECIES_BELLOSSOM_TM_DATA_3
	mondexentry SPECIES_BELLOSSOM, ""
	mondexclassification SPECIES_BELLOSSOM, ""
	mondexheight SPECIES_BELLOSSOM, ""
	mondexweight SPECIES_BELLOSSOM, ""


mondata SPECIES_MARILL, "Marill"
	basestats 70, 20, 50, 40, 20, 50
	types TYPE_WATER, TYPE_FAIRY
	catchrate 195
	baseexp 58// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 10
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FAIRY
	abilities ABILITY_THICK_FAT, ABILITY_HUGE_POWER
	runchance 60
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_MARILL_TM_DATA_0, SPECIES_MARILL_TM_DATA_1, SPECIES_MARILL_TM_DATA_2, SPECIES_MARILL_TM_DATA_3
	mondexentry SPECIES_MARILL, ""
	mondexclassification SPECIES_MARILL, ""
	mondexheight SPECIES_MARILL, ""
	mondexweight SPECIES_MARILL, ""


mondata SPECIES_AZUMARILL, "Azumarill"
	basestats 100, 50, 80, 50, 50, 80
	types TYPE_WATER, TYPE_FAIRY
	catchrate 195
	baseexp 153// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 10
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FAIRY
	abilities ABILITY_THICK_FAT, ABILITY_HUGE_POWER
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_AZUMARILL_TM_DATA_0, SPECIES_AZUMARILL_TM_DATA_1, SPECIES_AZUMARILL_TM_DATA_2, SPECIES_AZUMARILL_TM_DATA_3
	mondexentry SPECIES_AZUMARILL, ""
	mondexclassification SPECIES_AZUMARILL, ""
	mondexheight SPECIES_AZUMARILL, ""
	mondexweight SPECIES_AZUMARILL, ""


mondata SPECIES_SUDOWOODO, "Sudowoodo"
	basestats 70, 100, 115, 30, 30, 65
	types TYPE_ROCK, TYPE_ROCK
	catchrate 0
	baseexp 135// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_PRESSURE, ABILITY_ROCK_HEAD
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_SUDOWOODO_TM_DATA_0, SPECIES_SUDOWOODO_TM_DATA_1, SPECIES_SUDOWOODO_TM_DATA_2, SPECIES_SUDOWOODO_TM_DATA_3
	mondexentry SPECIES_SUDOWOODO, ""
	mondexclassification SPECIES_SUDOWOODO, ""
	mondexheight SPECIES_SUDOWOODO, ""
	mondexweight SPECIES_SUDOWOODO, ""


mondata SPECIES_POLITOED, "Politoed"
	basestats 90, 75, 75, 70, 90, 100
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 185// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
	abilities ABILITY_WATER_ABSORB, ABILITY_DAMP
	runchance 0
	colorflip BODY_COLOR_YELLOW, 1
	tmdata SPECIES_POLITOED_TM_DATA_0, SPECIES_POLITOED_TM_DATA_1, SPECIES_POLITOED_TM_DATA_2, SPECIES_POLITOED_TM_DATA_3
	mondexentry SPECIES_POLITOED, ""
	mondexclassification SPECIES_POLITOED, ""
	mondexheight SPECIES_POLITOED, ""
	mondexweight SPECIES_POLITOED, ""


mondata SPECIES_HOPPIP, "Hoppip"
	basestats 35, 35, 40, 50, 35, 55
	types TYPE_GRASS, TYPE_FLYING
	catchrate 195
	baseexp 74// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_LEAF_GUARD
	runchance 90
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_HOPPIP_TM_DATA_0, SPECIES_HOPPIP_TM_DATA_1, SPECIES_HOPPIP_TM_DATA_2, SPECIES_HOPPIP_TM_DATA_3
	mondexentry SPECIES_HOPPIP, ""
	mondexclassification SPECIES_HOPPIP, ""
	mondexheight SPECIES_HOPPIP, ""
	mondexweight SPECIES_HOPPIP, ""


mondata SPECIES_SKIPLOOM, "Skiploom"
	basestats 55, 45, 50, 80, 45, 65
	types TYPE_GRASS, TYPE_FLYING
	catchrate 195
	baseexp 136// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_LEAF_GUARD
	runchance 90
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_SKIPLOOM_TM_DATA_0, SPECIES_SKIPLOOM_TM_DATA_1, SPECIES_SKIPLOOM_TM_DATA_2, SPECIES_SKIPLOOM_TM_DATA_3
	mondexentry SPECIES_SKIPLOOM, ""
	mondexclassification SPECIES_SKIPLOOM, ""
	mondexheight SPECIES_SKIPLOOM, ""
	mondexweight SPECIES_SKIPLOOM, ""


mondata SPECIES_JUMPLUFF, "Jumpluff"
	basestats 75, 55, 70, 110, 55, 85
	types TYPE_GRASS, TYPE_FLYING
	catchrate 195
	baseexp 176// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_LEAF_GUARD
	runchance 120
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_JUMPLUFF_TM_DATA_0, SPECIES_JUMPLUFF_TM_DATA_1, SPECIES_JUMPLUFF_TM_DATA_2, SPECIES_JUMPLUFF_TM_DATA_3
	mondexentry SPECIES_JUMPLUFF, ""
	mondexclassification SPECIES_JUMPLUFF, ""
	mondexheight SPECIES_JUMPLUFF, ""
	mondexweight SPECIES_JUMPLUFF, ""


mondata SPECIES_AIPOM, "Aipom"
	basestats 55, 70, 55, 85, 40, 55
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 94// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_LIMBER, ABILITY_CUTE_CHARM
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_AIPOM_TM_DATA_0, SPECIES_AIPOM_TM_DATA_1, SPECIES_AIPOM_TM_DATA_2, SPECIES_AIPOM_TM_DATA_3
	mondexentry SPECIES_AIPOM, ""
	mondexclassification SPECIES_AIPOM, ""
	mondexheight SPECIES_AIPOM, ""
	mondexweight SPECIES_AIPOM, ""


mondata SPECIES_SUNKERN, "Sunkern"
	basestats 30, 30, 30, 30, 30, 30
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 52// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_SOLAR_POWER
	runchance 90
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_SUNKERN_TM_DATA_0, SPECIES_SUNKERN_TM_DATA_1, SPECIES_SUNKERN_TM_DATA_2, SPECIES_SUNKERN_TM_DATA_3
	mondexentry SPECIES_SUNKERN, ""
	mondexclassification SPECIES_SUNKERN, ""
	mondexheight SPECIES_SUNKERN, ""
	mondexweight SPECIES_SUNKERN, ""


mondata SPECIES_SUNFLORA, "Sunflora"
	basestats 75, 75, 55, 30, 105, 85
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 146// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_SOLAR_POWER
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_SUNFLORA_TM_DATA_0, SPECIES_SUNFLORA_TM_DATA_1, SPECIES_SUNFLORA_TM_DATA_2, SPECIES_SUNFLORA_TM_DATA_3
	mondexentry SPECIES_SUNFLORA, ""
	mondexclassification SPECIES_SUNFLORA, ""
	mondexheight SPECIES_SUNFLORA, ""
	mondexweight SPECIES_SUNFLORA, ""


mondata SPECIES_YANMA, "Yanma"
	basestats 65, 65, 45, 95, 75, 45
	types TYPE_BUG, TYPE_FLYING
	catchrate 195
	baseexp 147// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SPEED_BOOST, ABILITY_COMPOUND_EYES
	runchance 120
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_YANMA_TM_DATA_0, SPECIES_YANMA_TM_DATA_1, SPECIES_YANMA_TM_DATA_2, SPECIES_YANMA_TM_DATA_3
	mondexentry SPECIES_YANMA, ""
	mondexclassification SPECIES_YANMA, ""
	mondexheight SPECIES_YANMA, ""
	mondexweight SPECIES_YANMA, ""


mondata SPECIES_WOOPER, "Wooper"
	basestats 55, 45, 45, 15, 25, 25
	types TYPE_WATER, TYPE_GROUND
	catchrate 195
	baseexp 52// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
	abilities ABILITY_DAMP, ABILITY_WATER_ABSORB
	runchance 120
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_WOOPER_TM_DATA_0, SPECIES_WOOPER_TM_DATA_1, SPECIES_WOOPER_TM_DATA_2, SPECIES_WOOPER_TM_DATA_3
	mondexentry SPECIES_WOOPER, ""
	mondexclassification SPECIES_WOOPER, ""
	mondexheight SPECIES_WOOPER, ""
	mondexweight SPECIES_WOOPER, ""


mondata SPECIES_QUAGSIRE, "Quagsire"
	basestats 95, 85, 85, 35, 65, 65
	types TYPE_WATER, TYPE_GROUND
	catchrate 195
	baseexp 137// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
	abilities ABILITY_DAMP, ABILITY_WATER_ABSORB
	runchance 60
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_QUAGSIRE_TM_DATA_0, SPECIES_QUAGSIRE_TM_DATA_1, SPECIES_QUAGSIRE_TM_DATA_2, SPECIES_QUAGSIRE_TM_DATA_3
	mondexentry SPECIES_QUAGSIRE, ""
	mondexclassification SPECIES_QUAGSIRE, ""
	mondexheight SPECIES_QUAGSIRE, ""
	mondexweight SPECIES_QUAGSIRE, ""


mondata SPECIES_ESPEON, "Espeon"
	basestats 65, 65, 60, 110, 130, 95
	types TYPE_PSYCHIC, TYPE_PSYCHIC
	catchrate 195
	baseexp 197// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 35
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_SYNCHRONIZE, ABILITY_SYNCHRONIZE
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_ESPEON_TM_DATA_0, SPECIES_ESPEON_TM_DATA_1, SPECIES_ESPEON_TM_DATA_2, SPECIES_ESPEON_TM_DATA_3
	mondexentry SPECIES_ESPEON, ""
	mondexclassification SPECIES_ESPEON, ""
	mondexheight SPECIES_ESPEON, ""
	mondexweight SPECIES_ESPEON, ""


mondata SPECIES_UMBREON, "Umbreon"
	basestats 95, 65, 110, 65, 60, 130
	types TYPE_DARK, TYPE_DARK
	catchrate 195
	baseexp 197// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 35
	basefriendship 35
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_SYNCHRONIZE, ABILITY_SYNCHRONIZE
	runchance 0
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_UMBREON_TM_DATA_0, SPECIES_UMBREON_TM_DATA_1, SPECIES_UMBREON_TM_DATA_2, SPECIES_UMBREON_TM_DATA_3
	mondexentry SPECIES_UMBREON, ""
	mondexclassification SPECIES_UMBREON, ""
	mondexheight SPECIES_UMBREON, ""
	mondexweight SPECIES_UMBREON, ""


mondata SPECIES_MURKROW, "Murkrow"
	basestats 60, 85, 42, 91, 85, 42
	types TYPE_DARK, TYPE_FLYING
	catchrate 195
	baseexp 107// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 35
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_INSOMNIA, ABILITY_SUPER_LUCK
	runchance 120
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_MURKROW_TM_DATA_0, SPECIES_MURKROW_TM_DATA_1, SPECIES_MURKROW_TM_DATA_2, SPECIES_MURKROW_TM_DATA_3
	mondexentry SPECIES_MURKROW, ""
	mondexclassification SPECIES_MURKROW, ""
	mondexheight SPECIES_MURKROW, ""
	mondexweight SPECIES_MURKROW, ""


mondata SPECIES_SLOWKING, "Slowking"
	basestats 95, 75, 80, 30, 100, 110
	types TYPE_WATER, TYPE_PSYCHIC
	catchrate 0
	baseexp 164// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
	abilities ABILITY_SHELL_ARMOR, ABILITY_OWN_TEMPO
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_SLOWKING_TM_DATA_0, SPECIES_SLOWKING_TM_DATA_1, SPECIES_SLOWKING_TM_DATA_2, SPECIES_SLOWKING_TM_DATA_3
	mondexentry SPECIES_SLOWKING, ""
	mondexclassification SPECIES_SLOWKING, ""
	mondexheight SPECIES_SLOWKING, ""
	mondexweight SPECIES_SLOWKING, ""


mondata SPECIES_MISDREAVUS, "Misdreavus"
	basestats 60, 60, 60, 85, 85, 85
	types TYPE_GHOST, TYPE_GHOST
	catchrate 0
	baseexp 147// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 35
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 120
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_MISDREAVUS_TM_DATA_0, SPECIES_MISDREAVUS_TM_DATA_1, SPECIES_MISDREAVUS_TM_DATA_2, SPECIES_MISDREAVUS_TM_DATA_3
	mondexentry SPECIES_MISDREAVUS, ""
	mondexclassification SPECIES_MISDREAVUS, ""
	mondexheight SPECIES_MISDREAVUS, ""
	mondexweight SPECIES_MISDREAVUS, ""


mondata SPECIES_UNOWN, "Unown"
	basestats 48, 72, 48, 48, 72, 48
	types TYPE_PSYCHIC, TYPE_PSYCHIC
	catchrate 195
	baseexp 61// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 40
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GREEN, 1
	tmdata SPECIES_UNOWN_TM_DATA_0, SPECIES_UNOWN_TM_DATA_1, SPECIES_UNOWN_TM_DATA_2, SPECIES_UNOWN_TM_DATA_3
	mondexentry SPECIES_UNOWN, ""
	mondexclassification SPECIES_UNOWN, ""
	mondexheight SPECIES_UNOWN, ""
	mondexweight SPECIES_UNOWN, ""


mondata SPECIES_WOBBUFFET, "Wobbuffet"
	basestats 190, 33, 58, 33, 33, 58
	types TYPE_PSYCHIC, TYPE_PSYCHIC
	catchrate 195
	baseexp 177// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_SHADOW_TAG, ABILITY_NONE
	runchance 60
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_WOBBUFFET_TM_DATA_0, SPECIES_WOBBUFFET_TM_DATA_1, SPECIES_WOBBUFFET_TM_DATA_2, SPECIES_WOBBUFFET_TM_DATA_3
	mondexentry SPECIES_WOBBUFFET, ""
	mondexclassification SPECIES_WOBBUFFET, ""
	mondexheight SPECIES_WOBBUFFET, ""
	mondexweight SPECIES_WOBBUFFET, ""


mondata SPECIES_GIRAFARIG, "Girafarig"
	basestats 70, 80, 65, 85, 90, 65
	types TYPE_NORMAL, TYPE_PSYCHIC
	catchrate 195
	baseexp 149// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_INNER_FOCUS, ABILITY_EARLY_BIRD
	runchance 60
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_GIRAFARIG_TM_DATA_0, SPECIES_GIRAFARIG_TM_DATA_1, SPECIES_GIRAFARIG_TM_DATA_2, SPECIES_GIRAFARIG_TM_DATA_3
	mondexentry SPECIES_GIRAFARIG, ""
	mondexclassification SPECIES_GIRAFARIG, ""
	mondexheight SPECIES_GIRAFARIG, ""
	mondexweight SPECIES_GIRAFARIG, ""


mondata SPECIES_PINECO, "Pineco"
	basestats 50, 65, 90, 15, 35, 35
	types TYPE_BUG, TYPE_BUG
	catchrate 195
	baseexp 60// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_DRY_SKIN, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_PINECO_TM_DATA_0, SPECIES_PINECO_TM_DATA_1, SPECIES_PINECO_TM_DATA_2, SPECIES_PINECO_TM_DATA_3
	mondexentry SPECIES_PINECO, ""
	mondexclassification SPECIES_PINECO, ""
	mondexheight SPECIES_PINECO, ""
	mondexweight SPECIES_PINECO, ""


mondata SPECIES_FORRETRESS, "Forretress"
	basestats 75, 90, 140, 40, 60, 60
	types TYPE_BUG, TYPE_STEEL
	catchrate 195
	baseexp 118// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_DRY_SKIN, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_FORRETRESS_TM_DATA_0, SPECIES_FORRETRESS_TM_DATA_1, SPECIES_FORRETRESS_TM_DATA_2, SPECIES_FORRETRESS_TM_DATA_3
	mondexentry SPECIES_FORRETRESS, ""
	mondexclassification SPECIES_FORRETRESS, ""
	mondexheight SPECIES_FORRETRESS, ""
	mondexweight SPECIES_FORRETRESS, ""


mondata SPECIES_DUNSPARCE, "Dunsparce"
	basestats 100, 70, 70, 45, 65, 65
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 125// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_SERENE_GRACE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_DUNSPARCE_TM_DATA_0, SPECIES_DUNSPARCE_TM_DATA_1, SPECIES_DUNSPARCE_TM_DATA_2, SPECIES_DUNSPARCE_TM_DATA_3
	mondexentry SPECIES_DUNSPARCE, ""
	mondexclassification SPECIES_DUNSPARCE, ""
	mondexheight SPECIES_DUNSPARCE, ""
	mondexweight SPECIES_DUNSPARCE, ""


mondata SPECIES_GLIGAR, "Gligar"
	basestats 65, 75, 105, 85, 35, 65
	types TYPE_GROUND, TYPE_FLYING
	catchrate 195
	baseexp 108// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_HYPER_CUTTER, ABILITY_SAND_VEIL
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_GLIGAR_TM_DATA_0, SPECIES_GLIGAR_TM_DATA_1, SPECIES_GLIGAR_TM_DATA_2, SPECIES_GLIGAR_TM_DATA_3
	mondexentry SPECIES_GLIGAR, ""
	mondexclassification SPECIES_GLIGAR, ""
	mondexheight SPECIES_GLIGAR, ""
	mondexweight SPECIES_GLIGAR, ""


mondata SPECIES_STEELIX, "Steelix"
	basestats 75, 85, 200, 30, 55, 65
	types TYPE_STEEL, TYPE_GROUND
	catchrate 195
	baseexp 196// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_ROCK_HEAD, ABILITY_ROCK_HEAD
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_STEELIX_TM_DATA_0, SPECIES_STEELIX_TM_DATA_1, SPECIES_STEELIX_TM_DATA_2, SPECIES_STEELIX_TM_DATA_3
	mondexentry SPECIES_STEELIX, ""
	mondexclassification SPECIES_STEELIX, ""
	mondexheight SPECIES_STEELIX, ""
	mondexweight SPECIES_STEELIX, ""


mondata SPECIES_SNUBBULL, "Snubbull"
	basestats 60, 80, 50, 30, 40, 40
	types TYPE_FAIRY, TYPE_FAIRY
	catchrate 195
	baseexp 63// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 191
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
	abilities ABILITY_INTIMIDATE, ABILITY_QUICK_FEET
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_SNUBBULL_TM_DATA_0, SPECIES_SNUBBULL_TM_DATA_1, SPECIES_SNUBBULL_TM_DATA_2, SPECIES_SNUBBULL_TM_DATA_3
	mondexentry SPECIES_SNUBBULL, ""
	mondexclassification SPECIES_SNUBBULL, ""
	mondexheight SPECIES_SNUBBULL, ""
	mondexweight SPECIES_SNUBBULL, ""


mondata SPECIES_GRANBULL, "Granbull"
	basestats 90, 120, 75, 45, 60, 60
	types TYPE_FAIRY, TYPE_FAIRY
	catchrate 195
	baseexp 178// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 191
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
	abilities ABILITY_INTIMIDATE, ABILITY_QUICK_FEET
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_GRANBULL_TM_DATA_0, SPECIES_GRANBULL_TM_DATA_1, SPECIES_GRANBULL_TM_DATA_2, SPECIES_GRANBULL_TM_DATA_3
	mondexentry SPECIES_GRANBULL, ""
	mondexclassification SPECIES_GRANBULL, ""
	mondexheight SPECIES_GRANBULL, ""
	mondexweight SPECIES_GRANBULL, ""


mondata SPECIES_QWILFISH, "Qwilfish"
	basestats 65, 95, 75, 85, 55, 55
	types TYPE_WATER, TYPE_POISON
	catchrate 195
	baseexp 100// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
	abilities ABILITY_POISON_POINT, ABILITY_SWIFT_SWIM
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_QWILFISH_TM_DATA_0, SPECIES_QWILFISH_TM_DATA_1, SPECIES_QWILFISH_TM_DATA_2, SPECIES_QWILFISH_TM_DATA_3
	mondexentry SPECIES_QWILFISH, ""
	mondexclassification SPECIES_QWILFISH, ""
	mondexheight SPECIES_QWILFISH, ""
	mondexweight SPECIES_QWILFISH, ""


mondata SPECIES_SCIZOR, "Scizor"
	basestats 70, 130, 100, 65, 55, 80
	types TYPE_BUG, TYPE_STEEL
	catchrate 195
	baseexp 200// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SWARM, ABILITY_TECHNICIAN
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_SCIZOR_TM_DATA_0, SPECIES_SCIZOR_TM_DATA_1, SPECIES_SCIZOR_TM_DATA_2, SPECIES_SCIZOR_TM_DATA_3
	mondexentry SPECIES_SCIZOR, ""
	mondexclassification SPECIES_SCIZOR, ""
	mondexheight SPECIES_SCIZOR, ""
	mondexweight SPECIES_SCIZOR, ""


mondata SPECIES_SHUCKLE, "Shuckle"
	basestats 20, 10, 230, 5, 10, 230
	types TYPE_BUG, TYPE_ROCK
	catchrate 195
	baseexp 80// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_PRESSURE, ABILITY_GLUTTONY
	runchance 60
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_SHUCKLE_TM_DATA_0, SPECIES_SHUCKLE_TM_DATA_1, SPECIES_SHUCKLE_TM_DATA_2, SPECIES_SHUCKLE_TM_DATA_3
	mondexentry SPECIES_SHUCKLE, ""
	mondexclassification SPECIES_SHUCKLE, ""
	mondexheight SPECIES_SHUCKLE, ""
	mondexweight SPECIES_SHUCKLE, ""


mondata SPECIES_HERACROSS, "Heracross"
	basestats 80, 125, 75, 85, 40, 95
	types TYPE_BUG, TYPE_FIGHTING
	catchrate 195
	baseexp 200// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SWARM, ABILITY_GUTS
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_HERACROSS_TM_DATA_0, SPECIES_HERACROSS_TM_DATA_1, SPECIES_HERACROSS_TM_DATA_2, SPECIES_HERACROSS_TM_DATA_3
	mondexentry SPECIES_HERACROSS, ""
	mondexclassification SPECIES_HERACROSS, ""
	mondexheight SPECIES_HERACROSS, ""
	mondexweight SPECIES_HERACROSS, ""


mondata SPECIES_SNEASEL, "Sneasel"
	basestats 55, 95, 55, 115, 35, 75
	types TYPE_DARK, TYPE_ICE
	catchrate 195
	baseexp 132// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 35
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_INNER_FOCUS, ABILITY_KEEN_EYE
	runchance 0
	colorflip BODY_COLOR_GREEN, 1
	tmdata SPECIES_SNEASEL_TM_DATA_0, SPECIES_SNEASEL_TM_DATA_1, SPECIES_SNEASEL_TM_DATA_2, SPECIES_SNEASEL_TM_DATA_3
	mondexentry SPECIES_SNEASEL, ""
	mondexclassification SPECIES_SNEASEL, ""
	mondexheight SPECIES_SNEASEL, ""
	mondexweight SPECIES_SNEASEL, ""


mondata SPECIES_TEDDIURSA, "Teddiursa"
	basestats 60, 80, 50, 40, 50, 50
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 124// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_CUTE_CHARM, ABILITY_QUICK_FEET
	runchance 0
	colorflip BODY_COLOR_BLACK, 1
	tmdata SPECIES_TEDDIURSA_TM_DATA_0, SPECIES_TEDDIURSA_TM_DATA_1, SPECIES_TEDDIURSA_TM_DATA_2, SPECIES_TEDDIURSA_TM_DATA_3
	mondexentry SPECIES_TEDDIURSA, ""
	mondexclassification SPECIES_TEDDIURSA, ""
	mondexheight SPECIES_TEDDIURSA, ""
	mondexweight SPECIES_TEDDIURSA, ""


mondata SPECIES_URSARING, "Ursaring"
	basestats 90, 130, 75, 55, 75, 75
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 189// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_GUTS, ABILITY_QUICK_FEET
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_URSARING_TM_DATA_0, SPECIES_URSARING_TM_DATA_1, SPECIES_URSARING_TM_DATA_2, SPECIES_URSARING_TM_DATA_3
	mondexentry SPECIES_URSARING, ""
	mondexclassification SPECIES_URSARING, ""
	mondexheight SPECIES_URSARING, ""
	mondexweight SPECIES_URSARING, ""


mondata SPECIES_SLUGMA, "Slugma"
	basestats 40, 40, 40, 20, 70, 40
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 78// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_PRESSURE, ABILITY_FLAME_BODY
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_SLUGMA_TM_DATA_0, SPECIES_SLUGMA_TM_DATA_1, SPECIES_SLUGMA_TM_DATA_2, SPECIES_SLUGMA_TM_DATA_3
	mondexentry SPECIES_SLUGMA, ""
	mondexclassification SPECIES_SLUGMA, ""
	mondexheight SPECIES_SLUGMA, ""
	mondexweight SPECIES_SLUGMA, ""


mondata SPECIES_MAGCARGO, "Magcargo"
	basestats 50, 50, 120, 30, 80, 80
	types TYPE_FIRE, TYPE_ROCK
	catchrate 195
	baseexp 154// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_PRESSURE, ABILITY_FLAME_BODY
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_MAGCARGO_TM_DATA_0, SPECIES_MAGCARGO_TM_DATA_1, SPECIES_MAGCARGO_TM_DATA_2, SPECIES_MAGCARGO_TM_DATA_3
	mondexentry SPECIES_MAGCARGO, ""
	mondexclassification SPECIES_MAGCARGO, ""
	mondexheight SPECIES_MAGCARGO, ""
	mondexweight SPECIES_MAGCARGO, ""


mondata SPECIES_SWINUB, "Swinub"
	basestats 50, 50, 40, 50, 30, 30
	types TYPE_ICE, TYPE_GROUND
	catchrate 195
	baseexp 78// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_THICK_FAT, ABILITY_SNOW_CLOAK
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_SWINUB_TM_DATA_0, SPECIES_SWINUB_TM_DATA_1, SPECIES_SWINUB_TM_DATA_2, SPECIES_SWINUB_TM_DATA_3
	mondexentry SPECIES_SWINUB, ""
	mondexclassification SPECIES_SWINUB, ""
	mondexheight SPECIES_SWINUB, ""
	mondexweight SPECIES_SWINUB, ""


mondata SPECIES_PILOSWINE, "Piloswine"
	basestats 100, 100, 80, 50, 60, 60
	types TYPE_ICE, TYPE_GROUND
	catchrate 195
	baseexp 160// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_OBLIVIOUS, ABILITY_SNOW_CLOAK
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_PILOSWINE_TM_DATA_0, SPECIES_PILOSWINE_TM_DATA_1, SPECIES_PILOSWINE_TM_DATA_2, SPECIES_PILOSWINE_TM_DATA_3
	mondexentry SPECIES_PILOSWINE, ""
	mondexclassification SPECIES_PILOSWINE, ""
	mondexheight SPECIES_PILOSWINE, ""
	mondexweight SPECIES_PILOSWINE, ""


mondata SPECIES_CORSOLA, "Corsola"
	basestats 55, 55, 85, 35, 65, 85
	types TYPE_WATER, TYPE_ROCK
	catchrate 195
	baseexp 113// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 191
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
	abilities ABILITY_HUSTLE, ABILITY_NATURAL_CURE
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_CORSOLA_TM_DATA_0, SPECIES_CORSOLA_TM_DATA_1, SPECIES_CORSOLA_TM_DATA_2, SPECIES_CORSOLA_TM_DATA_3
	mondexentry SPECIES_CORSOLA, ""
	mondexclassification SPECIES_CORSOLA, ""
	mondexheight SPECIES_CORSOLA, ""
	mondexweight SPECIES_CORSOLA, ""


mondata SPECIES_REMORAID, "Remoraid"
	basestats 35, 65, 35, 65, 65, 35
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 78// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_2
	abilities ABILITY_HUSTLE, ABILITY_SNIPER
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_REMORAID_TM_DATA_0, SPECIES_REMORAID_TM_DATA_1, SPECIES_REMORAID_TM_DATA_2, SPECIES_REMORAID_TM_DATA_3
	mondexentry SPECIES_REMORAID, ""
	mondexclassification SPECIES_REMORAID, ""
	mondexheight SPECIES_REMORAID, ""
	mondexweight SPECIES_REMORAID, ""


mondata SPECIES_OCTILLERY, "Octillery"
	basestats 75, 105, 75, 45, 105, 75
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 164// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_2
	abilities ABILITY_SUCTION_CUPS, ABILITY_SNIPER
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_OCTILLERY_TM_DATA_0, SPECIES_OCTILLERY_TM_DATA_1, SPECIES_OCTILLERY_TM_DATA_2, SPECIES_OCTILLERY_TM_DATA_3
	mondexentry SPECIES_OCTILLERY, ""
	mondexclassification SPECIES_OCTILLERY, ""
	mondexheight SPECIES_OCTILLERY, ""
	mondexweight SPECIES_OCTILLERY, ""


mondata SPECIES_DELIBIRD, "Delibird"
	basestats 45, 55, 45, 75, 65, 45
	types TYPE_ICE, TYPE_FLYING
	catchrate 195
	baseexp 183// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
	abilities ABILITY_VITAL_SPIRIT, ABILITY_HUSTLE
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_DELIBIRD_TM_DATA_0, SPECIES_DELIBIRD_TM_DATA_1, SPECIES_DELIBIRD_TM_DATA_2, SPECIES_DELIBIRD_TM_DATA_3
	mondexentry SPECIES_DELIBIRD, ""
	mondexclassification SPECIES_DELIBIRD, ""
	mondexheight SPECIES_DELIBIRD, ""
	mondexweight SPECIES_DELIBIRD, ""


mondata SPECIES_MANTINE, "Mantine"
	basestats 65, 40, 70, 70, 80, 140
	types TYPE_WATER, TYPE_FLYING
	catchrate 195
	baseexp 168// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
	abilities ABILITY_SWIFT_SWIM, ABILITY_WATER_ABSORB
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_MANTINE_TM_DATA_0, SPECIES_MANTINE_TM_DATA_1, SPECIES_MANTINE_TM_DATA_2, SPECIES_MANTINE_TM_DATA_3
	mondexentry SPECIES_MANTINE, ""
	mondexclassification SPECIES_MANTINE, ""
	mondexheight SPECIES_MANTINE, ""
	mondexweight SPECIES_MANTINE, ""


mondata SPECIES_SKARMORY, "Skarmory"
	basestats 65, 80, 140, 70, 40, 70
	types TYPE_STEEL, TYPE_FLYING
	catchrate 195
	baseexp 168// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_KEEN_EYE, ABILITY_STURDY
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_SKARMORY_TM_DATA_0, SPECIES_SKARMORY_TM_DATA_1, SPECIES_SKARMORY_TM_DATA_2, SPECIES_SKARMORY_TM_DATA_3
	mondexentry SPECIES_SKARMORY, ""
	mondexclassification SPECIES_SKARMORY, ""
	mondexheight SPECIES_SKARMORY, ""
	mondexweight SPECIES_SKARMORY, ""


mondata SPECIES_HOUNDOUR, "Houndour"
	basestats 45, 60, 30, 65, 80, 50
	types TYPE_DARK, TYPE_FIRE
	catchrate 195
	baseexp 114// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_EARLY_BIRD, ABILITY_FLASH_FIRE
	runchance 120
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_HOUNDOUR_TM_DATA_0, SPECIES_HOUNDOUR_TM_DATA_1, SPECIES_HOUNDOUR_TM_DATA_2, SPECIES_HOUNDOUR_TM_DATA_3
	mondexentry SPECIES_HOUNDOUR, ""
	mondexclassification SPECIES_HOUNDOUR, ""
	mondexheight SPECIES_HOUNDOUR, ""
	mondexweight SPECIES_HOUNDOUR, ""


mondata SPECIES_HOUNDOOM, "Houndoom"
	basestats 75, 90, 50, 95, 110, 80
	types TYPE_DARK, TYPE_FIRE
	catchrate 195
	baseexp 204// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_EARLY_BIRD, ABILITY_FLASH_FIRE
	runchance 90
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_HOUNDOOM_TM_DATA_0, SPECIES_HOUNDOOM_TM_DATA_1, SPECIES_HOUNDOOM_TM_DATA_2, SPECIES_HOUNDOOM_TM_DATA_3
	mondexentry SPECIES_HOUNDOOM, ""
	mondexclassification SPECIES_HOUNDOOM, ""
	mondexheight SPECIES_HOUNDOOM, ""
	mondexweight SPECIES_HOUNDOOM, ""


mondata SPECIES_KINGDRA, "Kingdra"
	basestats 75, 95, 95, 85, 95, 95
	types TYPE_WATER, TYPE_DRAGON
	catchrate 195
	baseexp 207// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
	abilities ABILITY_SWIFT_SWIM, ABILITY_SNIPER
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_KINGDRA_TM_DATA_0, SPECIES_KINGDRA_TM_DATA_1, SPECIES_KINGDRA_TM_DATA_2, SPECIES_KINGDRA_TM_DATA_3
	mondexentry SPECIES_KINGDRA, ""
	mondexclassification SPECIES_KINGDRA, ""
	mondexheight SPECIES_KINGDRA, ""
	mondexweight SPECIES_KINGDRA, ""


mondata SPECIES_PHANPY, "Phanpy"
	basestats 90, 60, 60, 40, 40, 40
	types TYPE_GROUND, TYPE_GROUND
	catchrate 195
	baseexp 124// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_ROCK_HEAD, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_PHANPY_TM_DATA_0, SPECIES_PHANPY_TM_DATA_1, SPECIES_PHANPY_TM_DATA_2, SPECIES_PHANPY_TM_DATA_3
	mondexentry SPECIES_PHANPY, ""
	mondexclassification SPECIES_PHANPY, ""
	mondexheight SPECIES_PHANPY, ""
	mondexweight SPECIES_PHANPY, ""


mondata SPECIES_DONPHAN, "Donphan"
	basestats 90, 120, 120, 50, 60, 60
	types TYPE_GROUND, TYPE_GROUND
	catchrate 195
	baseexp 189// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_ROCK_HEAD, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_DONPHAN_TM_DATA_0, SPECIES_DONPHAN_TM_DATA_1, SPECIES_DONPHAN_TM_DATA_2, SPECIES_DONPHAN_TM_DATA_3
	mondexentry SPECIES_DONPHAN, ""
	mondexclassification SPECIES_DONPHAN, ""
	mondexheight SPECIES_DONPHAN, ""
	mondexweight SPECIES_DONPHAN, ""


mondata SPECIES_PORYGON2, "Porygon2"
	basestats 85, 80, 90, 60, 105, 95
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 180// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_TRACE, ABILITY_DOWNLOAD
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_PORYGON2_TM_DATA_0, SPECIES_PORYGON2_TM_DATA_1, SPECIES_PORYGON2_TM_DATA_2, SPECIES_PORYGON2_TM_DATA_3
	mondexentry SPECIES_PORYGON2, ""
	mondexclassification SPECIES_PORYGON2, ""
	mondexheight SPECIES_PORYGON2, ""
	mondexweight SPECIES_PORYGON2, ""


mondata SPECIES_STANTLER, "Stantler"
	basestats 73, 95, 62, 85, 85, 65
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 165// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_INTIMIDATE, ABILITY_FRISK
	runchance 60
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_STANTLER_TM_DATA_0, SPECIES_STANTLER_TM_DATA_1, SPECIES_STANTLER_TM_DATA_2, SPECIES_STANTLER_TM_DATA_3
	mondexentry SPECIES_STANTLER, ""
	mondexclassification SPECIES_STANTLER, ""
	mondexheight SPECIES_STANTLER, ""
	mondexweight SPECIES_STANTLER, ""


mondata SPECIES_SMEARGLE, "Smeargle"
	basestats 55, 20, 35, 75, 20, 45
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 106// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_OWN_TEMPO, ABILITY_TECHNICIAN
	runchance 60
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_SMEARGLE_TM_DATA_0, SPECIES_SMEARGLE_TM_DATA_1, SPECIES_SMEARGLE_TM_DATA_2, SPECIES_SMEARGLE_TM_DATA_3
	mondexentry SPECIES_SMEARGLE, ""
	mondexclassification SPECIES_SMEARGLE, ""
	mondexheight SPECIES_SMEARGLE, ""
	mondexweight SPECIES_SMEARGLE, ""


mondata SPECIES_TYROGUE, "Tyrogue"
    basestats 35, 35, 35, 35, 35, 35
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_GUTS, ABILITY_STEADFAST
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_TYROGUE_TM_DATA_0, SPECIES_TYROGUE_TM_DATA_1, SPECIES_TYROGUE_TM_DATA_2, SPECIES_TYROGUE_TM_DATA_3
    mondexentry SPECIES_TYROGUE, "It is always bursting with energy.\nTo make itself stronger, it\nkeeps on fighting even if it loses."
    mondexclassification SPECIES_TYROGUE, "Scuffle Pokémon"
    mondexheight SPECIES_TYROGUE, "2’04”"
    mondexweight SPECIES_TYROGUE, "46.3 lbs."


mondata SPECIES_HITMONTOP, "Hitmontop"
    basestats 50, 95, 95, 70, 35, 110
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_INTIMIDATE, ABILITY_TECHNICIAN
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_HITMONTOP_TM_DATA_0, SPECIES_HITMONTOP_TM_DATA_1, SPECIES_HITMONTOP_TM_DATA_2, SPECIES_HITMONTOP_TM_DATA_3
    mondexentry SPECIES_HITMONTOP, "If you are enchanted by its smooth,\ndance-like kicks, you may get a closer\nexperience with one than you’d like."
    mondexclassification SPECIES_HITMONTOP, "Handstand Pokémon"
    mondexheight SPECIES_HITMONTOP, "4’07”"
    mondexweight SPECIES_HITMONTOP, "105.8 lbs."


mondata SPECIES_SMOOCHUM, "Smoochum"
	basestats 45, 30, 15, 65, 85, 65
	types TYPE_ICE, TYPE_FAIRY
	catchrate 195
	baseexp 87// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 254
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_SNOW_CLOAK, ABILITY_FOREWARN
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_SMOOCHUM_TM_DATA_0, SPECIES_SMOOCHUM_TM_DATA_1, SPECIES_SMOOCHUM_TM_DATA_2, SPECIES_SMOOCHUM_TM_DATA_3
	mondexentry SPECIES_SMOOCHUM, ""
	mondexclassification SPECIES_SMOOCHUM, ""
	mondexheight SPECIES_SMOOCHUM, ""
	mondexweight SPECIES_SMOOCHUM, ""


mondata SPECIES_ELEKID, "Elekid"
	basestats 45, 63, 37, 95, 65, 55
	types TYPE_ELECTRIC, TYPE_ELECTRIC
	catchrate 195
	baseexp 106// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 63
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_STATIC, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 1
	tmdata SPECIES_ELEKID_TM_DATA_0, SPECIES_ELEKID_TM_DATA_1, SPECIES_ELEKID_TM_DATA_2, SPECIES_ELEKID_TM_DATA_3
	mondexentry SPECIES_ELEKID, ""
	mondexclassification SPECIES_ELEKID, ""
	mondexheight SPECIES_ELEKID, ""
	mondexweight SPECIES_ELEKID, ""


mondata SPECIES_MAGBY, "Magby"
	basestats 45, 75, 37, 83, 70, 55
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 117// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 63
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_FLAME_BODY, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_RED, 1
	tmdata SPECIES_MAGBY_TM_DATA_0, SPECIES_MAGBY_TM_DATA_1, SPECIES_MAGBY_TM_DATA_2, SPECIES_MAGBY_TM_DATA_3
	mondexentry SPECIES_MAGBY, ""
	mondexclassification SPECIES_MAGBY, ""
	mondexheight SPECIES_MAGBY, ""
	mondexweight SPECIES_MAGBY, ""


mondata SPECIES_MILTANK, "Miltank"
	basestats 95, 80, 105, 100, 40, 70
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 0
	baseexp 200// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 254
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_THICK_FAT, ABILITY_SCRAPPY
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_MILTANK_TM_DATA_0, SPECIES_MILTANK_TM_DATA_1, SPECIES_MILTANK_TM_DATA_2, SPECIES_MILTANK_TM_DATA_3
	mondexentry SPECIES_MILTANK, ""
	mondexclassification SPECIES_MILTANK, ""
	mondexheight SPECIES_MILTANK, ""
	mondexweight SPECIES_MILTANK, ""


mondata SPECIES_BLISSEY, "Blissey"
	basestats 255, 10, 10, 55, 75, 135
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 255// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 254
	eggcycles 40
	basefriendship 140
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
	abilities ABILITY_NATURAL_CURE, ABILITY_SERENE_GRACE
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_BLISSEY_TM_DATA_0, SPECIES_BLISSEY_TM_DATA_1, SPECIES_BLISSEY_TM_DATA_2, SPECIES_BLISSEY_TM_DATA_3
	mondexentry SPECIES_BLISSEY, ""
	mondexclassification SPECIES_BLISSEY, ""
	mondexheight SPECIES_BLISSEY, ""
	mondexweight SPECIES_BLISSEY, ""


mondata SPECIES_RAIKOU, "Raikou"
	basestats 90, 85, 75, 115, 115, 100
	types TYPE_ELECTRIC, TYPE_ELECTRIC
	catchrate 195
	baseexp 216// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 80
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_PRESSURE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_RAIKOU_TM_DATA_0, SPECIES_RAIKOU_TM_DATA_1, SPECIES_RAIKOU_TM_DATA_2, SPECIES_RAIKOU_TM_DATA_3
	mondexentry SPECIES_RAIKOU, ""
	mondexclassification SPECIES_RAIKOU, ""
	mondexheight SPECIES_RAIKOU, ""
	mondexweight SPECIES_RAIKOU, ""


mondata SPECIES_ENTEI, "Entei"
	basestats 115, 115, 85, 100, 90, 75
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 217// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 80
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_INTIMIDATE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_ENTEI_TM_DATA_0, SPECIES_ENTEI_TM_DATA_1, SPECIES_ENTEI_TM_DATA_2, SPECIES_ENTEI_TM_DATA_3
	mondexentry SPECIES_ENTEI, ""
	mondexclassification SPECIES_ENTEI, ""
	mondexheight SPECIES_ENTEI, ""
	mondexweight SPECIES_ENTEI, ""


mondata SPECIES_SUICUNE, "Suicune"
	basestats 100, 75, 115, 85, 90, 115
	types TYPE_WATER, TYPE_WATER
	catchrate 0
	baseexp 215// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 80
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_PRESSURE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_SUICUNE_TM_DATA_0, SPECIES_SUICUNE_TM_DATA_1, SPECIES_SUICUNE_TM_DATA_2, SPECIES_SUICUNE_TM_DATA_3
	mondexentry SPECIES_SUICUNE, ""
	mondexclassification SPECIES_SUICUNE, ""
	mondexheight SPECIES_SUICUNE, ""
	mondexweight SPECIES_SUICUNE, ""


mondata SPECIES_LARVITAR, "Larvitar"
	basestats 50, 64, 50, 41, 45, 50
	types TYPE_ROCK, TYPE_GROUND
	catchrate 195
	baseexp 67// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 40
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
	abilities ABILITY_GUTS, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_LARVITAR_TM_DATA_0, SPECIES_LARVITAR_TM_DATA_1, SPECIES_LARVITAR_TM_DATA_2, SPECIES_LARVITAR_TM_DATA_3
	mondexentry SPECIES_LARVITAR, ""
	mondexclassification SPECIES_LARVITAR, ""
	mondexheight SPECIES_LARVITAR, ""
	mondexweight SPECIES_LARVITAR, ""


mondata SPECIES_PUPITAR, "Pupitar"
	basestats 70, 84, 70, 51, 65, 70
	types TYPE_ROCK, TYPE_GROUND
	catchrate 195
	baseexp 144// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 40
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
	abilities ABILITY_SHED_SKIN, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_PUPITAR_TM_DATA_0, SPECIES_PUPITAR_TM_DATA_1, SPECIES_PUPITAR_TM_DATA_2, SPECIES_PUPITAR_TM_DATA_3
	mondexentry SPECIES_PUPITAR, ""
	mondexclassification SPECIES_PUPITAR, ""
	mondexheight SPECIES_PUPITAR, ""
	mondexweight SPECIES_PUPITAR, ""


mondata SPECIES_TYRANITAR, "Tyranitar"
	basestats 100, 134, 110, 61, 95, 100
	types TYPE_ROCK, TYPE_DARK
	catchrate 195
	baseexp 218// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 40
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
	abilities ABILITY_SAND_STREAM, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_TYRANITAR_TM_DATA_0, SPECIES_TYRANITAR_TM_DATA_1, SPECIES_TYRANITAR_TM_DATA_2, SPECIES_TYRANITAR_TM_DATA_3
	mondexentry SPECIES_TYRANITAR, ""
	mondexclassification SPECIES_TYRANITAR, ""
	mondexheight SPECIES_TYRANITAR, ""
	mondexweight SPECIES_TYRANITAR, ""


mondata SPECIES_LUGIA, "Lugia"
	basestats 106, 90, 130, 110, 90, 154
	types TYPE_PSYCHIC, TYPE_FLYING
	catchrate 195
	baseexp 220// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 120
	basefriendship 0
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_PRESSURE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_LUGIA_TM_DATA_0, SPECIES_LUGIA_TM_DATA_1, SPECIES_LUGIA_TM_DATA_2, SPECIES_LUGIA_TM_DATA_3
	mondexentry SPECIES_LUGIA, ""
	mondexclassification SPECIES_LUGIA, ""
	mondexheight SPECIES_LUGIA, ""
	mondexweight SPECIES_LUGIA, ""


mondata SPECIES_HO_OH, "Ho-Oh"
	basestats 106, 130, 90, 90, 110, 154
	types TYPE_FIRE, TYPE_FLYING
	catchrate 0
	baseexp 220// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 120
	basefriendship 0
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_BAD_DREAMS, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_HO_OH_TM_DATA_0, SPECIES_HO_OH_TM_DATA_1, SPECIES_HO_OH_TM_DATA_2, SPECIES_HO_OH_TM_DATA_3
	mondexentry SPECIES_HO_OH, ""
	mondexclassification SPECIES_HO_OH, ""
	mondexheight SPECIES_HO_OH, ""
	mondexweight SPECIES_HO_OH, ""


mondata SPECIES_CELEBI, "Celebi"
	basestats 100, 100, 100, 100, 100, 100
	types TYPE_PSYCHIC, TYPE_GRASS
	catchrate 195
	baseexp 64// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 120
	basefriendship 100
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_MAGIC_GUARD, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_CELEBI_TM_DATA_0, SPECIES_CELEBI_TM_DATA_1, SPECIES_CELEBI_TM_DATA_2, SPECIES_CELEBI_TM_DATA_3
	mondexentry SPECIES_CELEBI, ""
	mondexclassification SPECIES_CELEBI, ""
	mondexheight SPECIES_CELEBI, ""
	mondexweight SPECIES_CELEBI, ""


mondata SPECIES_TREECKO, "Treecko"
	basestats 40, 45, 35, 70, 65, 55
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 65// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
	abilities ABILITY_OVERGROW, ABILITY_UNBURDEN
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_TREECKO_TM_DATA_0, SPECIES_TREECKO_TM_DATA_1, SPECIES_TREECKO_TM_DATA_2, SPECIES_TREECKO_TM_DATA_3
	mondexentry SPECIES_TREECKO, ""
	mondexclassification SPECIES_TREECKO, ""
	mondexheight SPECIES_TREECKO, ""
	mondexweight SPECIES_TREECKO, ""


mondata SPECIES_GROVYLE, "Grovyle"
	basestats 50, 65, 45, 95, 85, 65
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 141// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
	abilities ABILITY_OVERGROW, ABILITY_UNBURDEN
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_GROVYLE_TM_DATA_0, SPECIES_GROVYLE_TM_DATA_1, SPECIES_GROVYLE_TM_DATA_2, SPECIES_GROVYLE_TM_DATA_3
	mondexentry SPECIES_GROVYLE, ""
	mondexclassification SPECIES_GROVYLE, ""
	mondexheight SPECIES_GROVYLE, ""
	mondexweight SPECIES_GROVYLE, ""


mondata SPECIES_SCEPTILE, "Sceptile"
	basestats 70, 85, 65, 120, 105, 85
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 208// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
	abilities ABILITY_OVERGROW, ABILITY_UNBURDEN
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_SCEPTILE_TM_DATA_0, SPECIES_SCEPTILE_TM_DATA_1, SPECIES_SCEPTILE_TM_DATA_2, SPECIES_SCEPTILE_TM_DATA_3
	mondexentry SPECIES_SCEPTILE, ""
	mondexclassification SPECIES_SCEPTILE, ""
	mondexheight SPECIES_SCEPTILE, ""
	mondexweight SPECIES_SCEPTILE, ""


mondata SPECIES_TORCHIC, "Torchic"
	basestats 45, 60, 40, 45, 70, 50
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 65// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_BLAZE, ABILITY_SPEED_BOOST
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_TORCHIC_TM_DATA_0, SPECIES_TORCHIC_TM_DATA_1, SPECIES_TORCHIC_TM_DATA_2, SPECIES_TORCHIC_TM_DATA_3
	mondexentry SPECIES_TORCHIC, ""
	mondexclassification SPECIES_TORCHIC, ""
	mondexheight SPECIES_TORCHIC, ""
	mondexweight SPECIES_TORCHIC, ""


mondata SPECIES_COMBUSKEN, "Combusken"
	basestats 60, 85, 60, 55, 85, 60
	types TYPE_FIRE, TYPE_FIGHTING
	catchrate 195
	baseexp 142// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_BLAZE, ABILITY_SPEED_BOOST
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_COMBUSKEN_TM_DATA_0, SPECIES_COMBUSKEN_TM_DATA_1, SPECIES_COMBUSKEN_TM_DATA_2, SPECIES_COMBUSKEN_TM_DATA_3
	mondexentry SPECIES_COMBUSKEN, ""
	mondexclassification SPECIES_COMBUSKEN, ""
	mondexheight SPECIES_COMBUSKEN, ""
	mondexweight SPECIES_COMBUSKEN, ""


mondata SPECIES_BLAZIKEN, "Blaziken"
	basestats 80, 120, 70, 80, 110, 70
	types TYPE_FIRE, TYPE_FIGHTING
	catchrate 195
	baseexp 209// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_BLAZE, ABILITY_SPEED_BOOST
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_BLAZIKEN_TM_DATA_0, SPECIES_BLAZIKEN_TM_DATA_1, SPECIES_BLAZIKEN_TM_DATA_2, SPECIES_BLAZIKEN_TM_DATA_3
	mondexentry SPECIES_BLAZIKEN, ""
	mondexclassification SPECIES_BLAZIKEN, ""
	mondexheight SPECIES_BLAZIKEN, ""
	mondexweight SPECIES_BLAZIKEN, ""


mondata SPECIES_MUDKIP, "Mudkip"
	basestats 50, 70, 50, 40, 50, 50
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 65// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
	abilities ABILITY_TORRENT, ABILITY_DAMP
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_MUDKIP_TM_DATA_0, SPECIES_MUDKIP_TM_DATA_1, SPECIES_MUDKIP_TM_DATA_2, SPECIES_MUDKIP_TM_DATA_3
	mondexentry SPECIES_MUDKIP, ""
	mondexclassification SPECIES_MUDKIP, ""
	mondexheight SPECIES_MUDKIP, ""
	mondexweight SPECIES_MUDKIP, ""


mondata SPECIES_MARSHTOMP, "Marshtomp"
	basestats 70, 85, 70, 50, 60, 70
	types TYPE_WATER, TYPE_GROUND
	catchrate 195
	baseexp 143// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
	abilities ABILITY_TORRENT, ABILITY_DAMP
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_MARSHTOMP_TM_DATA_0, SPECIES_MARSHTOMP_TM_DATA_1, SPECIES_MARSHTOMP_TM_DATA_2, SPECIES_MARSHTOMP_TM_DATA_3
	mondexentry SPECIES_MARSHTOMP, ""
	mondexclassification SPECIES_MARSHTOMP, ""
	mondexheight SPECIES_MARSHTOMP, ""
	mondexweight SPECIES_MARSHTOMP, ""


mondata SPECIES_SWAMPERT, "Swampert"
	basestats 100, 110, 90, 60, 85, 90
	types TYPE_WATER, TYPE_GROUND
	catchrate 195
	baseexp 210// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
	abilities ABILITY_TORRENT, ABILITY_DAMP
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_SWAMPERT_TM_DATA_0, SPECIES_SWAMPERT_TM_DATA_1, SPECIES_SWAMPERT_TM_DATA_2, SPECIES_SWAMPERT_TM_DATA_3
	mondexentry SPECIES_SWAMPERT, ""
	mondexclassification SPECIES_SWAMPERT, ""
	mondexheight SPECIES_SWAMPERT, ""
	mondexweight SPECIES_SWAMPERT, ""


mondata SPECIES_POOCHYENA, "Poochyena"
	basestats 35, 55, 35, 35, 30, 30
	types TYPE_DARK, TYPE_DARK
	catchrate 195
	baseexp 55// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_FOREWARN, ABILITY_QUICK_FEET
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_POOCHYENA_TM_DATA_0, SPECIES_POOCHYENA_TM_DATA_1, SPECIES_POOCHYENA_TM_DATA_2, SPECIES_POOCHYENA_TM_DATA_3
	mondexentry SPECIES_POOCHYENA, ""
	mondexclassification SPECIES_POOCHYENA, ""
	mondexheight SPECIES_POOCHYENA, ""
	mondexweight SPECIES_POOCHYENA, ""


mondata SPECIES_MIGHTYENA, "Mightyena"
	basestats 70, 90, 70, 70, 60, 60
	types TYPE_DARK, TYPE_DARK
	catchrate 195
	baseexp 128// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_INTIMIDATE, ABILITY_QUICK_FEET
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_MIGHTYENA_TM_DATA_0, SPECIES_MIGHTYENA_TM_DATA_1, SPECIES_MIGHTYENA_TM_DATA_2, SPECIES_MIGHTYENA_TM_DATA_3
	mondexentry SPECIES_MIGHTYENA, ""
	mondexclassification SPECIES_MIGHTYENA, ""
	mondexheight SPECIES_MIGHTYENA, ""
	mondexweight SPECIES_MIGHTYENA, ""


mondata SPECIES_ZIGZAGOON, "Zigzagoon"
	basestats 38, 30, 41, 60, 30, 41
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 60// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_SCRAPPY, ABILITY_GLUTTONY
	runchance 120
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_ZIGZAGOON_TM_DATA_0, SPECIES_ZIGZAGOON_TM_DATA_1, SPECIES_ZIGZAGOON_TM_DATA_2, SPECIES_ZIGZAGOON_TM_DATA_3
	mondexentry SPECIES_ZIGZAGOON, ""
	mondexclassification SPECIES_ZIGZAGOON, ""
	mondexheight SPECIES_ZIGZAGOON, ""
	mondexweight SPECIES_ZIGZAGOON, ""


mondata SPECIES_LINOONE, "Linoone"
	basestats 78, 70, 61, 100, 50, 61
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 128// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_SCRAPPY, ABILITY_GLUTTONY
	runchance 90
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_LINOONE_TM_DATA_0, SPECIES_LINOONE_TM_DATA_1, SPECIES_LINOONE_TM_DATA_2, SPECIES_LINOONE_TM_DATA_3
	mondexentry SPECIES_LINOONE, ""
	mondexclassification SPECIES_LINOONE, ""
	mondexheight SPECIES_LINOONE, ""
	mondexweight SPECIES_LINOONE, ""


mondata SPECIES_WURMPLE, "Wurmple"
	basestats 45, 45, 35, 20, 20, 30
	types TYPE_BUG, TYPE_BUG
	catchrate 195
	baseexp 54// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SHIELD_DUST, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_WURMPLE_TM_DATA_0, SPECIES_WURMPLE_TM_DATA_1, SPECIES_WURMPLE_TM_DATA_2, SPECIES_WURMPLE_TM_DATA_3
	mondexentry SPECIES_WURMPLE, ""
	mondexclassification SPECIES_WURMPLE, ""
	mondexheight SPECIES_WURMPLE, ""
	mondexweight SPECIES_WURMPLE, ""


mondata SPECIES_SILCOON, "Silcoon"
	basestats 50, 35, 55, 15, 25, 25
	types TYPE_BUG, TYPE_BUG
	catchrate 195
	baseexp 72// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SHED_SKIN, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_SILCOON_TM_DATA_0, SPECIES_SILCOON_TM_DATA_1, SPECIES_SILCOON_TM_DATA_2, SPECIES_SILCOON_TM_DATA_3
	mondexentry SPECIES_SILCOON, ""
	mondexclassification SPECIES_SILCOON, ""
	mondexheight SPECIES_SILCOON, ""
	mondexweight SPECIES_SILCOON, ""


mondata SPECIES_BEAUTIFLY, "Beautifly"
	basestats 60, 70, 50, 65, 90, 50
	types TYPE_BUG, TYPE_FLYING
	catchrate 195
	baseexp 161// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SWARM, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_BEAUTIFLY_TM_DATA_0, SPECIES_BEAUTIFLY_TM_DATA_1, SPECIES_BEAUTIFLY_TM_DATA_2, SPECIES_BEAUTIFLY_TM_DATA_3
	mondexentry SPECIES_BEAUTIFLY, ""
	mondexclassification SPECIES_BEAUTIFLY, ""
	mondexheight SPECIES_BEAUTIFLY, ""
	mondexweight SPECIES_BEAUTIFLY, ""


mondata SPECIES_CASCOON, "Cascoon"
	basestats 50, 35, 55, 15, 25, 25
	types TYPE_BUG, TYPE_BUG
	catchrate 195
	baseexp 72// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SHED_SKIN, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_CASCOON_TM_DATA_0, SPECIES_CASCOON_TM_DATA_1, SPECIES_CASCOON_TM_DATA_2, SPECIES_CASCOON_TM_DATA_3
	mondexentry SPECIES_CASCOON, ""
	mondexclassification SPECIES_CASCOON, ""
	mondexheight SPECIES_CASCOON, ""
	mondexweight SPECIES_CASCOON, ""


mondata SPECIES_DUSTOX, "Dustox"
	basestats 60, 50, 70, 65, 50, 90
	types TYPE_BUG, TYPE_POISON
	catchrate 195
	baseexp 161// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SHIELD_DUST, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_DUSTOX_TM_DATA_0, SPECIES_DUSTOX_TM_DATA_1, SPECIES_DUSTOX_TM_DATA_2, SPECIES_DUSTOX_TM_DATA_3
	mondexentry SPECIES_DUSTOX, ""
	mondexclassification SPECIES_DUSTOX, ""
	mondexheight SPECIES_DUSTOX, ""
	mondexweight SPECIES_DUSTOX, ""


mondata SPECIES_LOTAD, "Lotad"
	basestats 40, 30, 30, 30, 40, 50
	types TYPE_WATER, TYPE_GRASS
	catchrate 195
	baseexp 74// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_GRASS
	abilities ABILITY_SWIFT_SWIM, ABILITY_RAIN_DISH
	runchance 90
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_LOTAD_TM_DATA_0, SPECIES_LOTAD_TM_DATA_1, SPECIES_LOTAD_TM_DATA_2, SPECIES_LOTAD_TM_DATA_3
	mondexentry SPECIES_LOTAD, ""
	mondexclassification SPECIES_LOTAD, ""
	mondexheight SPECIES_LOTAD, ""
	mondexweight SPECIES_LOTAD, ""


mondata SPECIES_LOMBRE, "Lombre"
	basestats 60, 50, 50, 50, 60, 70
	types TYPE_WATER, TYPE_GRASS
	catchrate 195
	baseexp 141// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_GRASS
	abilities ABILITY_SWIFT_SWIM, ABILITY_RAIN_DISH
	runchance 60
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_LOMBRE_TM_DATA_0, SPECIES_LOMBRE_TM_DATA_1, SPECIES_LOMBRE_TM_DATA_2, SPECIES_LOMBRE_TM_DATA_3
	mondexentry SPECIES_LOMBRE, ""
	mondexclassification SPECIES_LOMBRE, ""
	mondexheight SPECIES_LOMBRE, ""
	mondexweight SPECIES_LOMBRE, ""


mondata SPECIES_LUDICOLO, "Ludicolo"
	basestats 80, 70, 70, 70, 90, 100
	types TYPE_WATER, TYPE_GRASS
	catchrate 195
	baseexp 181// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_GRASS
	abilities ABILITY_SWIFT_SWIM, ABILITY_RAIN_DISH
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_LUDICOLO_TM_DATA_0, SPECIES_LUDICOLO_TM_DATA_1, SPECIES_LUDICOLO_TM_DATA_2, SPECIES_LUDICOLO_TM_DATA_3
	mondexentry SPECIES_LUDICOLO, ""
	mondexclassification SPECIES_LUDICOLO, ""
	mondexheight SPECIES_LUDICOLO, ""
	mondexweight SPECIES_LUDICOLO, ""


mondata SPECIES_SEEDOT, "Seedot"
	basestats 40, 40, 50, 30, 30, 30
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 74// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_EARLY_BIRD
	runchance 90
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_SEEDOT_TM_DATA_0, SPECIES_SEEDOT_TM_DATA_1, SPECIES_SEEDOT_TM_DATA_2, SPECIES_SEEDOT_TM_DATA_3
	mondexentry SPECIES_SEEDOT, ""
	mondexclassification SPECIES_SEEDOT, ""
	mondexheight SPECIES_SEEDOT, ""
	mondexweight SPECIES_SEEDOT, ""


mondata SPECIES_NUZLEAF, "Nuzleaf"
	basestats 70, 70, 40, 60, 60, 40
	types TYPE_GRASS, TYPE_DARK
	catchrate 195
	baseexp 141// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_EARLY_BIRD
	runchance 60
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_NUZLEAF_TM_DATA_0, SPECIES_NUZLEAF_TM_DATA_1, SPECIES_NUZLEAF_TM_DATA_2, SPECIES_NUZLEAF_TM_DATA_3
	mondexentry SPECIES_NUZLEAF, ""
	mondexclassification SPECIES_NUZLEAF, ""
	mondexheight SPECIES_NUZLEAF, ""
	mondexweight SPECIES_NUZLEAF, ""


mondata SPECIES_SHIFTRY, "Shiftry"
	basestats 90, 100, 60, 80, 90, 60
	types TYPE_GRASS, TYPE_DARK
	catchrate 195
	baseexp 181// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_EARLY_BIRD
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_SHIFTRY_TM_DATA_0, SPECIES_SHIFTRY_TM_DATA_1, SPECIES_SHIFTRY_TM_DATA_2, SPECIES_SHIFTRY_TM_DATA_3
	mondexentry SPECIES_SHIFTRY, ""
	mondexclassification SPECIES_SHIFTRY, ""
	mondexheight SPECIES_SHIFTRY, ""
	mondexweight SPECIES_SHIFTRY, ""


mondata SPECIES_TAILLOW, "Taillow"
	basestats 40, 55, 30, 85, 30, 30
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 59// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_GUTS, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_TAILLOW_TM_DATA_0, SPECIES_TAILLOW_TM_DATA_1, SPECIES_TAILLOW_TM_DATA_2, SPECIES_TAILLOW_TM_DATA_3
	mondexentry SPECIES_TAILLOW, ""
	mondexclassification SPECIES_TAILLOW, ""
	mondexheight SPECIES_TAILLOW, ""
	mondexweight SPECIES_TAILLOW, ""


mondata SPECIES_SWELLOW, "Swellow"
	basestats 60, 85, 60, 125, 50, 50
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 162// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_GUTS, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_SWELLOW_TM_DATA_0, SPECIES_SWELLOW_TM_DATA_1, SPECIES_SWELLOW_TM_DATA_2, SPECIES_SWELLOW_TM_DATA_3
	mondexentry SPECIES_SWELLOW, ""
	mondexclassification SPECIES_SWELLOW, ""
	mondexheight SPECIES_SWELLOW, ""
	mondexweight SPECIES_SWELLOW, ""


mondata SPECIES_WINGULL, "Wingull"
	basestats 40, 30, 30, 85, 55, 30
	types TYPE_WATER, TYPE_FLYING
	catchrate 195
	baseexp 64// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FLYING
	abilities ABILITY_KEEN_EYE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_WINGULL_TM_DATA_0, SPECIES_WINGULL_TM_DATA_1, SPECIES_WINGULL_TM_DATA_2, SPECIES_WINGULL_TM_DATA_3
	mondexentry SPECIES_WINGULL, ""
	mondexclassification SPECIES_WINGULL, ""
	mondexheight SPECIES_WINGULL, ""
	mondexweight SPECIES_WINGULL, ""


mondata SPECIES_PELIPPER, "Pelipper"
	basestats 60, 50, 100, 65, 85, 70
	types TYPE_WATER, TYPE_FLYING
	catchrate 195
	baseexp 164// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FLYING
	abilities ABILITY_KEEN_EYE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_PELIPPER_TM_DATA_0, SPECIES_PELIPPER_TM_DATA_1, SPECIES_PELIPPER_TM_DATA_2, SPECIES_PELIPPER_TM_DATA_3
	mondexentry SPECIES_PELIPPER, ""
	mondexclassification SPECIES_PELIPPER, ""
	mondexheight SPECIES_PELIPPER, ""
	mondexweight SPECIES_PELIPPER, ""


mondata SPECIES_RALTS, "Ralts"
	basestats 28, 25, 25, 40, 45, 35
	types TYPE_PSYCHIC, TYPE_FAIRY
	catchrate 195
	baseexp 70// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_SYNCHRONIZE, ABILITY_TRACE
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_RALTS_TM_DATA_0, SPECIES_RALTS_TM_DATA_1, SPECIES_RALTS_TM_DATA_2, SPECIES_RALTS_TM_DATA_3
	mondexentry SPECIES_RALTS, ""
	mondexclassification SPECIES_RALTS, ""
	mondexheight SPECIES_RALTS, ""
	mondexweight SPECIES_RALTS, ""


mondata SPECIES_KIRLIA, "Kirlia"
	basestats 38, 35, 35, 50, 65, 55
	types TYPE_PSYCHIC, TYPE_FAIRY
	catchrate 195
	baseexp 140// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_SYNCHRONIZE, ABILITY_TRACE
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_KIRLIA_TM_DATA_0, SPECIES_KIRLIA_TM_DATA_1, SPECIES_KIRLIA_TM_DATA_2, SPECIES_KIRLIA_TM_DATA_3
	mondexentry SPECIES_KIRLIA, ""
	mondexclassification SPECIES_KIRLIA, ""
	mondexheight SPECIES_KIRLIA, ""
	mondexweight SPECIES_KIRLIA, ""


mondata SPECIES_GARDEVOIR, "Gardevoir"
	basestats 68, 65, 65, 80, 125, 115
	types TYPE_PSYCHIC, TYPE_FAIRY
	catchrate 195
	baseexp 208// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_SYNCHRONIZE, ABILITY_TRACE
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_GARDEVOIR_TM_DATA_0, SPECIES_GARDEVOIR_TM_DATA_1, SPECIES_GARDEVOIR_TM_DATA_2, SPECIES_GARDEVOIR_TM_DATA_3
	mondexentry SPECIES_GARDEVOIR, ""
	mondexclassification SPECIES_GARDEVOIR, ""
	mondexheight SPECIES_GARDEVOIR, ""
	mondexweight SPECIES_GARDEVOIR, ""


mondata SPECIES_SURSKIT, "Surskit"
	basestats 40, 30, 32, 65, 50, 52
	types TYPE_BUG, TYPE_WATER
	catchrate 195
	baseexp 63// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_BUG
	abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
	runchance 120
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_SURSKIT_TM_DATA_0, SPECIES_SURSKIT_TM_DATA_1, SPECIES_SURSKIT_TM_DATA_2, SPECIES_SURSKIT_TM_DATA_3
	mondexentry SPECIES_SURSKIT, ""
	mondexclassification SPECIES_SURSKIT, ""
	mondexheight SPECIES_SURSKIT, ""
	mondexweight SPECIES_SURSKIT, ""


mondata SPECIES_MASQUERAIN, "Masquerain"
	basestats 70, 60, 62, 60, 80, 82
	types TYPE_BUG, TYPE_FLYING
	catchrate 195
	baseexp 128// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_BUG
	abilities ABILITY_INTIMIDATE, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_MASQUERAIN_TM_DATA_0, SPECIES_MASQUERAIN_TM_DATA_1, SPECIES_MASQUERAIN_TM_DATA_2, SPECIES_MASQUERAIN_TM_DATA_3
	mondexentry SPECIES_MASQUERAIN, ""
	mondexclassification SPECIES_MASQUERAIN, ""
	mondexheight SPECIES_MASQUERAIN, ""
	mondexweight SPECIES_MASQUERAIN, ""


mondata SPECIES_SHROOMISH, "Shroomish"
	basestats 60, 40, 60, 35, 40, 60
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 65// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_FLUCTUATING
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
	abilities ABILITY_EFFECT_SPORE, ABILITY_POISON_HEAL
	runchance 120
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_SHROOMISH_TM_DATA_0, SPECIES_SHROOMISH_TM_DATA_1, SPECIES_SHROOMISH_TM_DATA_2, SPECIES_SHROOMISH_TM_DATA_3
	mondexentry SPECIES_SHROOMISH, ""
	mondexclassification SPECIES_SHROOMISH, ""
	mondexheight SPECIES_SHROOMISH, ""
	mondexweight SPECIES_SHROOMISH, ""


mondata SPECIES_BRELOOM, "Breloom"
	basestats 60, 130, 80, 70, 60, 60
	types TYPE_GRASS, TYPE_FIGHTING
	catchrate 195
	baseexp 165// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_FLUCTUATING
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
	abilities ABILITY_EFFECT_SPORE, ABILITY_POISON_HEAL
	runchance 90
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_BRELOOM_TM_DATA_0, SPECIES_BRELOOM_TM_DATA_1, SPECIES_BRELOOM_TM_DATA_2, SPECIES_BRELOOM_TM_DATA_3
	mondexentry SPECIES_BRELOOM, ""
	mondexclassification SPECIES_BRELOOM, ""
	mondexheight SPECIES_BRELOOM, ""
	mondexweight SPECIES_BRELOOM, ""


mondata SPECIES_SLAKOTH, "Slakoth"
	basestats 60, 60, 60, 30, 35, 35
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 83// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_TRUANT, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_SLAKOTH_TM_DATA_0, SPECIES_SLAKOTH_TM_DATA_1, SPECIES_SLAKOTH_TM_DATA_2, SPECIES_SLAKOTH_TM_DATA_3
	mondexentry SPECIES_SLAKOTH, ""
	mondexclassification SPECIES_SLAKOTH, ""
	mondexheight SPECIES_SLAKOTH, ""
	mondexweight SPECIES_SLAKOTH, ""


mondata SPECIES_VIGOROTH, "Vigoroth"
	basestats 80, 80, 80, 90, 55, 55
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 126// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_VITAL_SPIRIT, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_VIGOROTH_TM_DATA_0, SPECIES_VIGOROTH_TM_DATA_1, SPECIES_VIGOROTH_TM_DATA_2, SPECIES_VIGOROTH_TM_DATA_3
	mondexentry SPECIES_VIGOROTH, ""
	mondexclassification SPECIES_VIGOROTH, ""
	mondexheight SPECIES_VIGOROTH, ""
	mondexweight SPECIES_VIGOROTH, ""


mondata SPECIES_SLAKING, "Slaking"
	basestats 150, 160, 100, 100, 95, 65
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 210// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_TRUANT, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_SLAKING_TM_DATA_0, SPECIES_SLAKING_TM_DATA_1, SPECIES_SLAKING_TM_DATA_2, SPECIES_SLAKING_TM_DATA_3
	mondexentry SPECIES_SLAKING, ""
	mondexclassification SPECIES_SLAKING, ""
	mondexheight SPECIES_SLAKING, ""
	mondexweight SPECIES_SLAKING, ""


mondata SPECIES_NINCADA, "Nincada"
	basestats 31, 45, 90, 40, 30, 30
	types TYPE_BUG, TYPE_GROUND
	catchrate 195
	baseexp 65// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_COMPOUND_EYES, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_NINCADA_TM_DATA_0, SPECIES_NINCADA_TM_DATA_1, SPECIES_NINCADA_TM_DATA_2, SPECIES_NINCADA_TM_DATA_3
	mondexentry SPECIES_NINCADA, ""
	mondexclassification SPECIES_NINCADA, ""
	mondexheight SPECIES_NINCADA, ""
	mondexweight SPECIES_NINCADA, ""


mondata SPECIES_NINJASK, "Ninjask"
	basestats 61, 90, 45, 160, 50, 50
	types TYPE_BUG, TYPE_FLYING
	catchrate 195
	baseexp 155// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SPEED_BOOST, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_NINJASK_TM_DATA_0, SPECIES_NINJASK_TM_DATA_1, SPECIES_NINJASK_TM_DATA_2, SPECIES_NINJASK_TM_DATA_3
	mondexentry SPECIES_NINJASK, ""
	mondexclassification SPECIES_NINJASK, ""
	mondexheight SPECIES_NINJASK, ""
	mondexweight SPECIES_NINJASK, ""


mondata SPECIES_SHEDINJA, "Shedinja"
	basestats 1, 90, 45, 40, 30, 30
	types TYPE_BUG, TYPE_GHOST
	catchrate 195
	baseexp 95// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_WONDER_GUARD, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_SHEDINJA_TM_DATA_0, SPECIES_SHEDINJA_TM_DATA_1, SPECIES_SHEDINJA_TM_DATA_2, SPECIES_SHEDINJA_TM_DATA_3
	mondexentry SPECIES_SHEDINJA, ""
	mondexclassification SPECIES_SHEDINJA, ""
	mondexheight SPECIES_SHEDINJA, ""
	mondexweight SPECIES_SHEDINJA, ""


mondata SPECIES_WHISMUR, "Whismur"
	basestats 64, 51, 23, 28, 51, 23
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 68// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
	abilities ABILITY_SOUNDPROOF, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_WHISMUR_TM_DATA_0, SPECIES_WHISMUR_TM_DATA_1, SPECIES_WHISMUR_TM_DATA_2, SPECIES_WHISMUR_TM_DATA_3
	mondexentry SPECIES_WHISMUR, ""
	mondexclassification SPECIES_WHISMUR, ""
	mondexheight SPECIES_WHISMUR, ""
	mondexweight SPECIES_WHISMUR, ""


mondata SPECIES_LOUDRED, "Loudred"
	basestats 84, 71, 43, 48, 71, 43
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 126// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
	abilities ABILITY_SOUNDPROOF, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_LOUDRED_TM_DATA_0, SPECIES_LOUDRED_TM_DATA_1, SPECIES_LOUDRED_TM_DATA_2, SPECIES_LOUDRED_TM_DATA_3
	mondexentry SPECIES_LOUDRED, ""
	mondexclassification SPECIES_LOUDRED, ""
	mondexheight SPECIES_LOUDRED, ""
	mondexweight SPECIES_LOUDRED, ""


mondata SPECIES_EXPLOUD, "Exploud"
	basestats 104, 91, 63, 68, 91, 63
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 184// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
	abilities ABILITY_SOUNDPROOF, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_EXPLOUD_TM_DATA_0, SPECIES_EXPLOUD_TM_DATA_1, SPECIES_EXPLOUD_TM_DATA_2, SPECIES_EXPLOUD_TM_DATA_3
	mondexentry SPECIES_EXPLOUD, ""
	mondexclassification SPECIES_EXPLOUD, ""
	mondexheight SPECIES_EXPLOUD, ""
	mondexweight SPECIES_EXPLOUD, ""


mondata SPECIES_MAKUHITA, "Makuhita"
	basestats 72, 60, 30, 25, 20, 30
	types TYPE_FIGHTING, TYPE_FIGHTING
	catchrate 195
	baseexp 87// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 63
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_FLUCTUATING
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_THICK_FAT, ABILITY_GUTS
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_MAKUHITA_TM_DATA_0, SPECIES_MAKUHITA_TM_DATA_1, SPECIES_MAKUHITA_TM_DATA_2, SPECIES_MAKUHITA_TM_DATA_3
	mondexentry SPECIES_MAKUHITA, ""
	mondexclassification SPECIES_MAKUHITA, ""
	mondexheight SPECIES_MAKUHITA, ""
	mondexweight SPECIES_MAKUHITA, ""


mondata SPECIES_HARIYAMA, "Hariyama"
	basestats 144, 120, 60, 50, 40, 60
	types TYPE_FIGHTING, TYPE_FIGHTING
	catchrate 195
	baseexp 184// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 63
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_FLUCTUATING
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_THICK_FAT, ABILITY_GUTS
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_HARIYAMA_TM_DATA_0, SPECIES_HARIYAMA_TM_DATA_1, SPECIES_HARIYAMA_TM_DATA_2, SPECIES_HARIYAMA_TM_DATA_3
	mondexentry SPECIES_HARIYAMA, ""
	mondexclassification SPECIES_HARIYAMA, ""
	mondexheight SPECIES_HARIYAMA, ""
	mondexweight SPECIES_HARIYAMA, ""


mondata SPECIES_AZURILL, "Azurill"
	basestats 50, 20, 40, 20, 20, 40
	types TYPE_NORMAL, TYPE_FAIRY
	catchrate 195
	baseexp 33// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 191
	eggcycles 10
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_THICK_FAT, ABILITY_HUGE_POWER
	runchance 120
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_AZURILL_TM_DATA_0, SPECIES_AZURILL_TM_DATA_1, SPECIES_AZURILL_TM_DATA_2, SPECIES_AZURILL_TM_DATA_3
	mondexentry SPECIES_AZURILL, ""
	mondexclassification SPECIES_AZURILL, ""
	mondexheight SPECIES_AZURILL, ""
	mondexweight SPECIES_AZURILL, ""


mondata SPECIES_NOSEPASS, "Nosepass"
	basestats 30, 45, 135, 30, 45, 90
	types TYPE_ROCK, TYPE_ROCK
	catchrate 195
	baseexp 108// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_PRESSURE, ABILITY_MAGNET_PULL
	runchance 60
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_NOSEPASS_TM_DATA_0, SPECIES_NOSEPASS_TM_DATA_1, SPECIES_NOSEPASS_TM_DATA_2, SPECIES_NOSEPASS_TM_DATA_3
	mondexentry SPECIES_NOSEPASS, ""
	mondexclassification SPECIES_NOSEPASS, ""
	mondexheight SPECIES_NOSEPASS, ""
	mondexweight SPECIES_NOSEPASS, ""


mondata SPECIES_SKITTY, "Skitty"
	basestats 50, 45, 45, 50, 35, 35
	types TYPE_NORMAL, TYPE_FAIRY
	catchrate 195
	baseexp 65// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 191
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
	abilities ABILITY_CUTE_CHARM, ABILITY_NORMALIZE
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_SKITTY_TM_DATA_0, SPECIES_SKITTY_TM_DATA_1, SPECIES_SKITTY_TM_DATA_2, SPECIES_SKITTY_TM_DATA_3
	mondexentry SPECIES_SKITTY, ""
	mondexclassification SPECIES_SKITTY, ""
	mondexheight SPECIES_SKITTY, ""
	mondexweight SPECIES_SKITTY, ""


mondata SPECIES_DELCATTY, "Delcatty"
	basestats 70, 65, 65, 70, 55, 55
	types TYPE_NORMAL, TYPE_FAIRY
	catchrate 195
	baseexp 138// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 191
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
	abilities ABILITY_CUTE_CHARM, ABILITY_NORMALIZE
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_DELCATTY_TM_DATA_0, SPECIES_DELCATTY_TM_DATA_1, SPECIES_DELCATTY_TM_DATA_2, SPECIES_DELCATTY_TM_DATA_3
	mondexentry SPECIES_DELCATTY, ""
	mondexclassification SPECIES_DELCATTY, ""
	mondexheight SPECIES_DELCATTY, ""
	mondexweight SPECIES_DELCATTY, ""


mondata SPECIES_SABLEYE, "Sableye"
	basestats 50, 75, 75, 50, 65, 65
	types TYPE_DARK, TYPE_GHOST
	catchrate 195
	baseexp 98// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 35
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_KEEN_EYE, ABILITY_STALL
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_SABLEYE_TM_DATA_0, SPECIES_SABLEYE_TM_DATA_1, SPECIES_SABLEYE_TM_DATA_2, SPECIES_SABLEYE_TM_DATA_3
	mondexentry SPECIES_SABLEYE, ""
	mondexclassification SPECIES_SABLEYE, ""
	mondexheight SPECIES_SABLEYE, ""
	mondexweight SPECIES_SABLEYE, ""


mondata SPECIES_MAWILE, "Mawile"
	basestats 50, 85, 85, 50, 55, 55
	types TYPE_STEEL, TYPE_FAIRY
	catchrate 195
	baseexp 98// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
	abilities ABILITY_HYPER_CUTTER, ABILITY_INTIMIDATE
	runchance 0
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_MAWILE_TM_DATA_0, SPECIES_MAWILE_TM_DATA_1, SPECIES_MAWILE_TM_DATA_2, SPECIES_MAWILE_TM_DATA_3
	mondexentry SPECIES_MAWILE, ""
	mondexclassification SPECIES_MAWILE, ""
	mondexheight SPECIES_MAWILE, ""
	mondexweight SPECIES_MAWILE, ""


mondata SPECIES_ARON, "Aron"
	basestats 50, 70, 100, 30, 40, 40
	types TYPE_STEEL, TYPE_ROCK
	catchrate 195
	baseexp 96// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 35
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
	abilities ABILITY_PRESSURE, ABILITY_ROCK_HEAD
	runchance 90
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_ARON_TM_DATA_0, SPECIES_ARON_TM_DATA_1, SPECIES_ARON_TM_DATA_2, SPECIES_ARON_TM_DATA_3
	mondexentry SPECIES_ARON, ""
	mondexclassification SPECIES_ARON, ""
	mondexheight SPECIES_ARON, ""
	mondexweight SPECIES_ARON, ""


mondata SPECIES_LAIRON, "Lairon"
	basestats 60, 90, 140, 40, 50, 50
	types TYPE_STEEL, TYPE_ROCK
	catchrate 195
	baseexp 152// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 35
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
	abilities ABILITY_PRESSURE, ABILITY_ROCK_HEAD
	runchance 60
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_LAIRON_TM_DATA_0, SPECIES_LAIRON_TM_DATA_1, SPECIES_LAIRON_TM_DATA_2, SPECIES_LAIRON_TM_DATA_3
	mondexentry SPECIES_LAIRON, ""
	mondexclassification SPECIES_LAIRON, ""
	mondexheight SPECIES_LAIRON, ""
	mondexweight SPECIES_LAIRON, ""


mondata SPECIES_AGGRON, "Aggron"
	basestats 70, 110, 180, 50, 60, 60
	types TYPE_STEEL, TYPE_ROCK
	catchrate 195
	baseexp 205// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 35
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
	abilities ABILITY_PRESSURE, ABILITY_ROCK_HEAD
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_AGGRON_TM_DATA_0, SPECIES_AGGRON_TM_DATA_1, SPECIES_AGGRON_TM_DATA_2, SPECIES_AGGRON_TM_DATA_3
	mondexentry SPECIES_AGGRON, ""
	mondexclassification SPECIES_AGGRON, ""
	mondexheight SPECIES_AGGRON, ""
	mondexweight SPECIES_AGGRON, ""


mondata SPECIES_MEDITITE, "Meditite"
	basestats 30, 40, 55, 60, 40, 55
	types TYPE_FIGHTING, TYPE_PSYCHIC
	catchrate 195
	baseexp 91// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_PURE_POWER, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_MEDITITE_TM_DATA_0, SPECIES_MEDITITE_TM_DATA_1, SPECIES_MEDITITE_TM_DATA_2, SPECIES_MEDITITE_TM_DATA_3
	mondexentry SPECIES_MEDITITE, ""
	mondexclassification SPECIES_MEDITITE, ""
	mondexheight SPECIES_MEDITITE, ""
	mondexweight SPECIES_MEDITITE, ""


mondata SPECIES_MEDICHAM, "Medicham"
	basestats 60, 60, 75, 80, 60, 75
	types TYPE_FIGHTING, TYPE_PSYCHIC
	catchrate 195
	baseexp 153// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_PURE_POWER, ABILITY_NONE
	runchance 60
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_MEDICHAM_TM_DATA_0, SPECIES_MEDICHAM_TM_DATA_1, SPECIES_MEDICHAM_TM_DATA_2, SPECIES_MEDICHAM_TM_DATA_3
	mondexentry SPECIES_MEDICHAM, ""
	mondexclassification SPECIES_MEDICHAM, ""
	mondexheight SPECIES_MEDICHAM, ""
	mondexweight SPECIES_MEDICHAM, ""


mondata SPECIES_ELECTRIKE, "Electrike"
	basestats 40, 45, 40, 65, 65, 40
	types TYPE_ELECTRIC, TYPE_ELECTRIC
	catchrate 195
	baseexp 104// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_STATIC, ABILITY_LIGHTNING_ROD
	runchance 120
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_ELECTRIKE_TM_DATA_0, SPECIES_ELECTRIKE_TM_DATA_1, SPECIES_ELECTRIKE_TM_DATA_2, SPECIES_ELECTRIKE_TM_DATA_3
	mondexentry SPECIES_ELECTRIKE, ""
	mondexclassification SPECIES_ELECTRIKE, ""
	mondexheight SPECIES_ELECTRIKE, ""
	mondexweight SPECIES_ELECTRIKE, ""


mondata SPECIES_MANECTRIC, "Manectric"
	basestats 70, 75, 60, 105, 105, 60
	types TYPE_ELECTRIC, TYPE_ELECTRIC
	catchrate 195
	baseexp 168// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_STATIC, ABILITY_LIGHTNING_ROD
	runchance 90
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_MANECTRIC_TM_DATA_0, SPECIES_MANECTRIC_TM_DATA_1, SPECIES_MANECTRIC_TM_DATA_2, SPECIES_MANECTRIC_TM_DATA_3
	mondexentry SPECIES_MANECTRIC, ""
	mondexclassification SPECIES_MANECTRIC, ""
	mondexheight SPECIES_MANECTRIC, ""
	mondexweight SPECIES_MANECTRIC, ""


mondata SPECIES_PLUSLE, "Plusle"
	basestats 60, 50, 40, 95, 85, 75
	types TYPE_ELECTRIC, TYPE_FAIRY
	catchrate 195
	baseexp 120// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
	abilities ABILITY_PLUS, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_PLUSLE_TM_DATA_0, SPECIES_PLUSLE_TM_DATA_1, SPECIES_PLUSLE_TM_DATA_2, SPECIES_PLUSLE_TM_DATA_3
	mondexentry SPECIES_PLUSLE, ""
	mondexclassification SPECIES_PLUSLE, ""
	mondexheight SPECIES_PLUSLE, ""
	mondexweight SPECIES_PLUSLE, ""


mondata SPECIES_MINUN, "Minun"
	basestats 60, 40, 50, 95, 75, 85
	types TYPE_ELECTRIC, TYPE_FAIRY
	catchrate 195
	baseexp 120// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
	abilities ABILITY_MINUS, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_MINUN_TM_DATA_0, SPECIES_MINUN_TM_DATA_1, SPECIES_MINUN_TM_DATA_2, SPECIES_MINUN_TM_DATA_3
	mondexentry SPECIES_MINUN, ""
	mondexclassification SPECIES_MINUN, ""
	mondexheight SPECIES_MINUN, ""
	mondexweight SPECIES_MINUN, ""


mondata SPECIES_VOLBEAT, "Volbeat"
    basestats 65, 73, 75, 85, 47, 85
    types TYPE_BUG, TYPE_BUG
    catchrate 150
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_BRIGHT_POWDER
    genderratio 0
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_BUG, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_ILLUMINATE, ABILITY_SWARM
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_VOLBEAT_TM_DATA_0, SPECIES_VOLBEAT_TM_DATA_1, SPECIES_VOLBEAT_TM_DATA_2, SPECIES_VOLBEAT_TM_DATA_3
    mondexentry SPECIES_VOLBEAT, "It emits light from its tail to\ncommunicate. It loves the\nsweet aroma given off by ILLUMISE."
    mondexclassification SPECIES_VOLBEAT, "Firefly Pokémon"
    mondexheight SPECIES_VOLBEAT, "2’04”"
    mondexweight SPECIES_VOLBEAT, "39.0 lbs."


mondata SPECIES_ILLUMISE, "Illumise"
	basestats 65, 47, 55, 85, 73, 75
	types TYPE_BUG, TYPE_PSYCHIC
	catchrate 195
	baseexp 146// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 254
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_FLUCTUATING
	egggroups EGG_GROUP_BUG, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_OBLIVIOUS, ABILITY_TINTED_LENS
	runchance 90
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_ILLUMISE_TM_DATA_0, SPECIES_ILLUMISE_TM_DATA_1, SPECIES_ILLUMISE_TM_DATA_2, SPECIES_ILLUMISE_TM_DATA_3
	mondexentry SPECIES_ILLUMISE, ""
	mondexclassification SPECIES_ILLUMISE, ""
	mondexheight SPECIES_ILLUMISE, ""
	mondexweight SPECIES_ILLUMISE, ""


mondata SPECIES_ROSELIA, "Roselia"
	basestats 50, 60, 45, 65, 100, 80
	types TYPE_GRASS, TYPE_POISON
	catchrate 195
	baseexp 152// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
	abilities ABILITY_NATURAL_CURE, ABILITY_POISON_POINT
	runchance 60
	colorflip BODY_COLOR_YELLOW, 1
	tmdata SPECIES_ROSELIA_TM_DATA_0, SPECIES_ROSELIA_TM_DATA_1, SPECIES_ROSELIA_TM_DATA_2, SPECIES_ROSELIA_TM_DATA_3
	mondexentry SPECIES_ROSELIA, ""
	mondexclassification SPECIES_ROSELIA, ""
	mondexheight SPECIES_ROSELIA, ""
	mondexweight SPECIES_ROSELIA, ""


mondata SPECIES_GULPIN, "Gulpin"
	basestats 70, 43, 53, 40, 43, 53
	types TYPE_POISON, TYPE_POISON
	catchrate 195
	baseexp 75// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_FLUCTUATING
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_LIQUID_OOZE, ABILITY_STICKY_HOLD
	runchance 120
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_GULPIN_TM_DATA_0, SPECIES_GULPIN_TM_DATA_1, SPECIES_GULPIN_TM_DATA_2, SPECIES_GULPIN_TM_DATA_3
	mondexentry SPECIES_GULPIN, ""
	mondexclassification SPECIES_GULPIN, ""
	mondexheight SPECIES_GULPIN, ""
	mondexweight SPECIES_GULPIN, ""


mondata SPECIES_SWALOT, "Swalot"
	basestats 100, 73, 83, 55, 73, 83
	types TYPE_POISON, TYPE_POISON
	catchrate 195
	baseexp 168// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_FLUCTUATING
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_LIQUID_OOZE, ABILITY_STICKY_HOLD
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_SWALOT_TM_DATA_0, SPECIES_SWALOT_TM_DATA_1, SPECIES_SWALOT_TM_DATA_2, SPECIES_SWALOT_TM_DATA_3
	mondexentry SPECIES_SWALOT, ""
	mondexclassification SPECIES_SWALOT, ""
	mondexheight SPECIES_SWALOT, ""
	mondexweight SPECIES_SWALOT, ""


mondata SPECIES_CARVANHA, "Carvanha"
	basestats 45, 90, 20, 65, 65, 20
	types TYPE_WATER, TYPE_DARK
	catchrate 195
	baseexp 88// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
	abilities ABILITY_ROUGH_SKIN, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_CARVANHA_TM_DATA_0, SPECIES_CARVANHA_TM_DATA_1, SPECIES_CARVANHA_TM_DATA_2, SPECIES_CARVANHA_TM_DATA_3
	mondexentry SPECIES_CARVANHA, ""
	mondexclassification SPECIES_CARVANHA, ""
	mondexheight SPECIES_CARVANHA, ""
	mondexweight SPECIES_CARVANHA, ""


mondata SPECIES_SHARPEDO, "Sharpedo"
	basestats 70, 120, 40, 95, 95, 40
	types TYPE_WATER, TYPE_DARK
	catchrate 195
	baseexp 175// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
	abilities ABILITY_ROUGH_SKIN, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_SHARPEDO_TM_DATA_0, SPECIES_SHARPEDO_TM_DATA_1, SPECIES_SHARPEDO_TM_DATA_2, SPECIES_SHARPEDO_TM_DATA_3
	mondexentry SPECIES_SHARPEDO, ""
	mondexclassification SPECIES_SHARPEDO, ""
	mondexheight SPECIES_SHARPEDO, ""
	mondexweight SPECIES_SHARPEDO, ""


mondata SPECIES_WAILMER, "Wailmer"
	basestats 130, 70, 35, 60, 70, 35
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 137// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 40
	basefriendship 70
	growthrate GROWTH_FLUCTUATING
	egggroups EGG_GROUP_FIELD, EGG_GROUP_WATER_2
	abilities ABILITY_WATER_VEIL, ABILITY_OBLIVIOUS
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_WAILMER_TM_DATA_0, SPECIES_WAILMER_TM_DATA_1, SPECIES_WAILMER_TM_DATA_2, SPECIES_WAILMER_TM_DATA_3
	mondexentry SPECIES_WAILMER, ""
	mondexclassification SPECIES_WAILMER, ""
	mondexheight SPECIES_WAILMER, ""
	mondexweight SPECIES_WAILMER, ""


mondata SPECIES_WAILORD, "Wailord"
	basestats 170, 90, 45, 60, 90, 45
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 206// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 40
	basefriendship 70
	growthrate GROWTH_FLUCTUATING
	egggroups EGG_GROUP_FIELD, EGG_GROUP_WATER_2
	abilities ABILITY_WATER_VEIL, ABILITY_OBLIVIOUS
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_WAILORD_TM_DATA_0, SPECIES_WAILORD_TM_DATA_1, SPECIES_WAILORD_TM_DATA_2, SPECIES_WAILORD_TM_DATA_3
	mondexentry SPECIES_WAILORD, ""
	mondexclassification SPECIES_WAILORD, ""
	mondexheight SPECIES_WAILORD, ""
	mondexweight SPECIES_WAILORD, ""


mondata SPECIES_NUMEL, "Numel"
	basestats 60, 60, 40, 35, 65, 45
	types TYPE_FIRE, TYPE_GROUND
	catchrate 195
	baseexp 88// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_OBLIVIOUS, ABILITY_SIMPLE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_NUMEL_TM_DATA_0, SPECIES_NUMEL_TM_DATA_1, SPECIES_NUMEL_TM_DATA_2, SPECIES_NUMEL_TM_DATA_3
	mondexentry SPECIES_NUMEL, ""
	mondexclassification SPECIES_NUMEL, ""
	mondexheight SPECIES_NUMEL, ""
	mondexweight SPECIES_NUMEL, ""


mondata SPECIES_CAMERUPT, "Camerupt"
	basestats 70, 100, 70, 40, 105, 75
	types TYPE_FIRE, TYPE_GROUND
	catchrate 195
	baseexp 175// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_PRESSURE, ABILITY_SOLID_ROCK
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_CAMERUPT_TM_DATA_0, SPECIES_CAMERUPT_TM_DATA_1, SPECIES_CAMERUPT_TM_DATA_2, SPECIES_CAMERUPT_TM_DATA_3
	mondexentry SPECIES_CAMERUPT, ""
	mondexclassification SPECIES_CAMERUPT, ""
	mondexheight SPECIES_CAMERUPT, ""
	mondexweight SPECIES_CAMERUPT, ""


mondata SPECIES_TORKOAL, "Torkoal"
	basestats 70, 85, 140, 20, 85, 70
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 161// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_WHITE_SMOKE, ABILITY_NONE
	runchance 60
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_TORKOAL_TM_DATA_0, SPECIES_TORKOAL_TM_DATA_1, SPECIES_TORKOAL_TM_DATA_2, SPECIES_TORKOAL_TM_DATA_3
	mondexentry SPECIES_TORKOAL, ""
	mondexclassification SPECIES_TORKOAL, ""
	mondexheight SPECIES_TORKOAL, ""
	mondexweight SPECIES_TORKOAL, ""


mondata SPECIES_SPOINK, "Spoink"
	basestats 60, 25, 35, 60, 70, 80
	types TYPE_PSYCHIC, TYPE_PSYCHIC
	catchrate 195
	baseexp 89// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_THICK_FAT, ABILITY_OWN_TEMPO
	runchance 0
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_SPOINK_TM_DATA_0, SPECIES_SPOINK_TM_DATA_1, SPECIES_SPOINK_TM_DATA_2, SPECIES_SPOINK_TM_DATA_3
	mondexentry SPECIES_SPOINK, ""
	mondexclassification SPECIES_SPOINK, ""
	mondexheight SPECIES_SPOINK, ""
	mondexweight SPECIES_SPOINK, ""


mondata SPECIES_GRUMPIG, "Grumpig"
	basestats 80, 45, 65, 80, 90, 110
	types TYPE_PSYCHIC, TYPE_PSYCHIC
	catchrate 195
	baseexp 164// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_THICK_FAT, ABILITY_OWN_TEMPO
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_GRUMPIG_TM_DATA_0, SPECIES_GRUMPIG_TM_DATA_1, SPECIES_GRUMPIG_TM_DATA_2, SPECIES_GRUMPIG_TM_DATA_3
	mondexentry SPECIES_GRUMPIG, ""
	mondexclassification SPECIES_GRUMPIG, ""
	mondexheight SPECIES_GRUMPIG, ""
	mondexweight SPECIES_GRUMPIG, ""


mondata SPECIES_SPINDA, "Spinda"
	basestats 60, 60, 60, 60, 60, 60
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 85// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_OWN_TEMPO, ABILITY_TANGLED_FEET
	runchance 60
	colorflip BODY_COLOR_BLACK, 1
	tmdata SPECIES_SPINDA_TM_DATA_0, SPECIES_SPINDA_TM_DATA_1, SPECIES_SPINDA_TM_DATA_2, SPECIES_SPINDA_TM_DATA_3
	mondexentry SPECIES_SPINDA, ""
	mondexclassification SPECIES_SPINDA, ""
	mondexheight SPECIES_SPINDA, ""
	mondexweight SPECIES_SPINDA, ""


mondata SPECIES_TRAPINCH, "Trapinch"
	basestats 45, 100, 45, 10, 45, 45
	types TYPE_GROUND, TYPE_GROUND
	catchrate 195
	baseexp 73// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_HYPER_CUTTER, ABILITY_ARENA_TRAP
	runchance 120
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_TRAPINCH_TM_DATA_0, SPECIES_TRAPINCH_TM_DATA_1, SPECIES_TRAPINCH_TM_DATA_2, SPECIES_TRAPINCH_TM_DATA_3
	mondexentry SPECIES_TRAPINCH, ""
	mondexclassification SPECIES_TRAPINCH, ""
	mondexheight SPECIES_TRAPINCH, ""
	mondexweight SPECIES_TRAPINCH, ""


mondata SPECIES_VIBRAVA, "Vibrava"
	basestats 50, 70, 50, 70, 50, 50
	types TYPE_GROUND, TYPE_DRAGON
	catchrate 195
	baseexp 126// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_LEVITATE, ABILITY_LEVITATE
	runchance 90
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_VIBRAVA_TM_DATA_0, SPECIES_VIBRAVA_TM_DATA_1, SPECIES_VIBRAVA_TM_DATA_2, SPECIES_VIBRAVA_TM_DATA_3
	mondexentry SPECIES_VIBRAVA, ""
	mondexclassification SPECIES_VIBRAVA, ""
	mondexheight SPECIES_VIBRAVA, ""
	mondexweight SPECIES_VIBRAVA, ""


mondata SPECIES_FLYGON, "Flygon"
	basestats 80, 100, 80, 100, 80, 80
	types TYPE_GROUND, TYPE_DRAGON
	catchrate 195
	baseexp 197// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_LEVITATE, ABILITY_LEVITATE
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_FLYGON_TM_DATA_0, SPECIES_FLYGON_TM_DATA_1, SPECIES_FLYGON_TM_DATA_2, SPECIES_FLYGON_TM_DATA_3
	mondexentry SPECIES_FLYGON, ""
	mondexclassification SPECIES_FLYGON, ""
	mondexheight SPECIES_FLYGON, ""
	mondexweight SPECIES_FLYGON, ""


mondata SPECIES_CACNEA, "Cacnea"
	basestats 50, 85, 40, 35, 85, 40
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 97// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 35
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_GRASS, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_SAND_VEIL, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_CACNEA_TM_DATA_0, SPECIES_CACNEA_TM_DATA_1, SPECIES_CACNEA_TM_DATA_2, SPECIES_CACNEA_TM_DATA_3
	mondexentry SPECIES_CACNEA, ""
	mondexclassification SPECIES_CACNEA, ""
	mondexheight SPECIES_CACNEA, ""
	mondexweight SPECIES_CACNEA, ""


mondata SPECIES_CACTURNE, "Cacturne"
	basestats 70, 115, 60, 55, 115, 60
	types TYPE_GRASS, TYPE_DARK
	catchrate 195
	baseexp 177// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 35
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_GRASS, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_SAND_VEIL, ABILITY_NONE
	runchance 60
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_CACTURNE_TM_DATA_0, SPECIES_CACTURNE_TM_DATA_1, SPECIES_CACTURNE_TM_DATA_2, SPECIES_CACTURNE_TM_DATA_3
	mondexentry SPECIES_CACTURNE, ""
	mondexclassification SPECIES_CACTURNE, ""
	mondexheight SPECIES_CACTURNE, ""
	mondexweight SPECIES_CACTURNE, ""


mondata SPECIES_SWABLU, "Swablu"
	basestats 45, 40, 60, 50, 40, 75
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 74// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_FLYING, EGG_GROUP_DRAGON
	abilities ABILITY_NATURAL_CURE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_SWABLU_TM_DATA_0, SPECIES_SWABLU_TM_DATA_1, SPECIES_SWABLU_TM_DATA_2, SPECIES_SWABLU_TM_DATA_3
	mondexentry SPECIES_SWABLU, ""
	mondexclassification SPECIES_SWABLU, ""
	mondexheight SPECIES_SWABLU, ""
	mondexweight SPECIES_SWABLU, ""


mondata SPECIES_ALTARIA, "Altaria"
	basestats 75, 70, 90, 80, 70, 105
	types TYPE_DRAGON, TYPE_FLYING
	catchrate 195
	baseexp 188// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_FLYING, EGG_GROUP_DRAGON
	abilities ABILITY_NATURAL_CURE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_ALTARIA_TM_DATA_0, SPECIES_ALTARIA_TM_DATA_1, SPECIES_ALTARIA_TM_DATA_2, SPECIES_ALTARIA_TM_DATA_3
	mondexentry SPECIES_ALTARIA, ""
	mondexclassification SPECIES_ALTARIA, ""
	mondexheight SPECIES_ALTARIA, ""
	mondexweight SPECIES_ALTARIA, ""


mondata SPECIES_ZANGOOSE, "Zangoose"
	basestats 73, 115, 60, 90, 60, 60
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 0
	baseexp 165// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_IMMUNITY, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_GRAY, 1
	tmdata SPECIES_ZANGOOSE_TM_DATA_0, SPECIES_ZANGOOSE_TM_DATA_1, SPECIES_ZANGOOSE_TM_DATA_2, SPECIES_ZANGOOSE_TM_DATA_3
	mondexentry SPECIES_ZANGOOSE, ""
	mondexclassification SPECIES_ZANGOOSE, ""
	mondexheight SPECIES_ZANGOOSE, ""
	mondexweight SPECIES_ZANGOOSE, ""


mondata SPECIES_SEVIPER, "Seviper"
	basestats 73, 100, 60, 65, 100, 60
	types TYPE_POISON, TYPE_POISON
	catchrate 0
	baseexp 165// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_FLUCTUATING
	egggroups EGG_GROUP_FIELD, EGG_GROUP_DRAGON
	abilities ABILITY_SHED_SKIN, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_GREEN, 1
	tmdata SPECIES_SEVIPER_TM_DATA_0, SPECIES_SEVIPER_TM_DATA_1, SPECIES_SEVIPER_TM_DATA_2, SPECIES_SEVIPER_TM_DATA_3
	mondexentry SPECIES_SEVIPER, ""
	mondexclassification SPECIES_SEVIPER, ""
	mondexheight SPECIES_SEVIPER, ""
	mondexweight SPECIES_SEVIPER, ""


mondata SPECIES_LUNATONE, "Lunatone"
	basestats 70, 55, 65, 70, 95, 85
	types TYPE_ROCK, TYPE_GHOST
	catchrate 195
	baseexp 150// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 60
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_LUNATONE_TM_DATA_0, SPECIES_LUNATONE_TM_DATA_1, SPECIES_LUNATONE_TM_DATA_2, SPECIES_LUNATONE_TM_DATA_3
	mondexentry SPECIES_LUNATONE, ""
	mondexclassification SPECIES_LUNATONE, ""
	mondexheight SPECIES_LUNATONE, ""
	mondexweight SPECIES_LUNATONE, ""


mondata SPECIES_SOLROCK, "Solrock"
	basestats 70, 95, 85, 70, 55, 65
	types TYPE_ROCK, TYPE_FIRE
	catchrate 195
	baseexp 150// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 60
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_SOLROCK_TM_DATA_0, SPECIES_SOLROCK_TM_DATA_1, SPECIES_SOLROCK_TM_DATA_2, SPECIES_SOLROCK_TM_DATA_3
	mondexentry SPECIES_SOLROCK, ""
	mondexclassification SPECIES_SOLROCK, ""
	mondexheight SPECIES_SOLROCK, ""
	mondexweight SPECIES_SOLROCK, ""


mondata SPECIES_BARBOACH, "Barboach"
	basestats 50, 48, 43, 60, 46, 41
	types TYPE_WATER, TYPE_GROUND
	catchrate 195
	baseexp 92// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
	abilities ABILITY_OBLIVIOUS, ABILITY_ANTICIPATION
	runchance 120
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_BARBOACH_TM_DATA_0, SPECIES_BARBOACH_TM_DATA_1, SPECIES_BARBOACH_TM_DATA_2, SPECIES_BARBOACH_TM_DATA_3
	mondexentry SPECIES_BARBOACH, ""
	mondexclassification SPECIES_BARBOACH, ""
	mondexheight SPECIES_BARBOACH, ""
	mondexweight SPECIES_BARBOACH, ""


mondata SPECIES_WHISCASH, "Whiscash"
	basestats 110, 78, 73, 60, 76, 71
	types TYPE_WATER, TYPE_GROUND
	catchrate 195
	baseexp 158// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
	abilities ABILITY_OBLIVIOUS, ABILITY_ANTICIPATION
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_WHISCASH_TM_DATA_0, SPECIES_WHISCASH_TM_DATA_1, SPECIES_WHISCASH_TM_DATA_2, SPECIES_WHISCASH_TM_DATA_3
	mondexentry SPECIES_WHISCASH, ""
	mondexclassification SPECIES_WHISCASH, ""
	mondexheight SPECIES_WHISCASH, ""
	mondexweight SPECIES_WHISCASH, ""


mondata SPECIES_CORPHISH, "Corphish"
	basestats 43, 80, 65, 35, 50, 35
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 111// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_FLUCTUATING
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
	abilities ABILITY_HYPER_CUTTER, ABILITY_SHELL_ARMOR
	runchance 90
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_CORPHISH_TM_DATA_0, SPECIES_CORPHISH_TM_DATA_1, SPECIES_CORPHISH_TM_DATA_2, SPECIES_CORPHISH_TM_DATA_3
	mondexentry SPECIES_CORPHISH, ""
	mondexclassification SPECIES_CORPHISH, ""
	mondexheight SPECIES_CORPHISH, ""
	mondexweight SPECIES_CORPHISH, ""


mondata SPECIES_CRAWDAUNT, "Crawdaunt"
	basestats 63, 120, 85, 55, 90, 55
	types TYPE_WATER, TYPE_DARK
	catchrate 195
	baseexp 161// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_FLUCTUATING
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
	abilities ABILITY_HYPER_CUTTER, ABILITY_SHELL_ARMOR
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_CRAWDAUNT_TM_DATA_0, SPECIES_CRAWDAUNT_TM_DATA_1, SPECIES_CRAWDAUNT_TM_DATA_2, SPECIES_CRAWDAUNT_TM_DATA_3
	mondexentry SPECIES_CRAWDAUNT, ""
	mondexclassification SPECIES_CRAWDAUNT, ""
	mondexheight SPECIES_CRAWDAUNT, ""
	mondexweight SPECIES_CRAWDAUNT, ""


mondata SPECIES_BALTOY, "Baltoy"
	basestats 40, 40, 55, 55, 40, 70
	types TYPE_GROUND, TYPE_PSYCHIC
	catchrate 195
	baseexp 58// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_BALTOY_TM_DATA_0, SPECIES_BALTOY_TM_DATA_1, SPECIES_BALTOY_TM_DATA_2, SPECIES_BALTOY_TM_DATA_3
	mondexentry SPECIES_BALTOY, ""
	mondexclassification SPECIES_BALTOY, ""
	mondexheight SPECIES_BALTOY, ""
	mondexweight SPECIES_BALTOY, ""


mondata SPECIES_CLAYDOL, "Claydol"
	basestats 60, 70, 105, 75, 70, 120
	types TYPE_GROUND, TYPE_PSYCHIC
	catchrate 195
	baseexp 189// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_CLAYDOL_TM_DATA_0, SPECIES_CLAYDOL_TM_DATA_1, SPECIES_CLAYDOL_TM_DATA_2, SPECIES_CLAYDOL_TM_DATA_3
	mondexentry SPECIES_CLAYDOL, ""
	mondexclassification SPECIES_CLAYDOL, ""
	mondexheight SPECIES_CLAYDOL, ""
	mondexweight SPECIES_CLAYDOL, ""


mondata SPECIES_LILEEP, "Lileep"
	basestats 66, 41, 77, 23, 61, 87
	types TYPE_ROCK, TYPE_GRASS
	catchrate 195
	baseexp 99// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 30
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
	abilities ABILITY_SUCTION_CUPS, ABILITY_STORM_DRAIN
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_LILEEP_TM_DATA_0, SPECIES_LILEEP_TM_DATA_1, SPECIES_LILEEP_TM_DATA_2, SPECIES_LILEEP_TM_DATA_3
	mondexentry SPECIES_LILEEP, ""
	mondexclassification SPECIES_LILEEP, ""
	mondexheight SPECIES_LILEEP, ""
	mondexweight SPECIES_LILEEP, ""


mondata SPECIES_CRADILY, "Cradily"
	basestats 86, 81, 97, 43, 81, 107
	types TYPE_ROCK, TYPE_GRASS
	catchrate 195
	baseexp 199// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 30
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
	abilities ABILITY_SUCTION_CUPS, ABILITY_STORM_DRAIN
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_CRADILY_TM_DATA_0, SPECIES_CRADILY_TM_DATA_1, SPECIES_CRADILY_TM_DATA_2, SPECIES_CRADILY_TM_DATA_3
	mondexentry SPECIES_CRADILY, ""
	mondexclassification SPECIES_CRADILY, ""
	mondexheight SPECIES_CRADILY, ""
	mondexweight SPECIES_CRADILY, ""


mondata SPECIES_ANORITH, "Anorith"
	basestats 45, 95, 50, 75, 40, 50
	types TYPE_ROCK, TYPE_BUG
	catchrate 195
	baseexp 99// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 30
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
	abilities ABILITY_BATTLE_ARMOR, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_ANORITH_TM_DATA_0, SPECIES_ANORITH_TM_DATA_1, SPECIES_ANORITH_TM_DATA_2, SPECIES_ANORITH_TM_DATA_3
	mondexentry SPECIES_ANORITH, ""
	mondexclassification SPECIES_ANORITH, ""
	mondexheight SPECIES_ANORITH, ""
	mondexweight SPECIES_ANORITH, ""


mondata SPECIES_ARMALDO, "Armaldo"
	basestats 75, 125, 100, 45, 70, 80
	types TYPE_ROCK, TYPE_BUG
	catchrate 195
	baseexp 199// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 30
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
	abilities ABILITY_BATTLE_ARMOR, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_ARMALDO_TM_DATA_0, SPECIES_ARMALDO_TM_DATA_1, SPECIES_ARMALDO_TM_DATA_2, SPECIES_ARMALDO_TM_DATA_3
	mondexentry SPECIES_ARMALDO, ""
	mondexclassification SPECIES_ARMALDO, ""
	mondexheight SPECIES_ARMALDO, ""
	mondexweight SPECIES_ARMALDO, ""


mondata SPECIES_FEEBAS, "Feebas"
	basestats 20, 15, 20, 80, 10, 55
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 61// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
	abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_FEEBAS_TM_DATA_0, SPECIES_FEEBAS_TM_DATA_1, SPECIES_FEEBAS_TM_DATA_2, SPECIES_FEEBAS_TM_DATA_3
	mondexentry SPECIES_FEEBAS, ""
	mondexclassification SPECIES_FEEBAS, ""
	mondexheight SPECIES_FEEBAS, ""
	mondexweight SPECIES_FEEBAS, ""


mondata SPECIES_MILOTIC, "Milotic"
	basestats 95, 60, 79, 81, 100, 125
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 213// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
	abilities ABILITY_MARVEL_SCALE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_MILOTIC_TM_DATA_0, SPECIES_MILOTIC_TM_DATA_1, SPECIES_MILOTIC_TM_DATA_2, SPECIES_MILOTIC_TM_DATA_3
	mondexentry SPECIES_MILOTIC, ""
	mondexclassification SPECIES_MILOTIC, ""
	mondexheight SPECIES_MILOTIC, ""
	mondexweight SPECIES_MILOTIC, ""


mondata SPECIES_CASTFORM, "Castform"
	basestats 70, 70, 70, 70, 70, 70
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 145// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_AMORPHOUS
	abilities ABILITY_FORECAST, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_CASTFORM_TM_DATA_0, SPECIES_CASTFORM_TM_DATA_1, SPECIES_CASTFORM_TM_DATA_2, SPECIES_CASTFORM_TM_DATA_3
	mondexentry SPECIES_CASTFORM, ""
	mondexclassification SPECIES_CASTFORM, ""
	mondexheight SPECIES_CASTFORM, ""
	mondexweight SPECIES_CASTFORM, ""


mondata SPECIES_KECLEON, "Kecleon"
	basestats 60, 90, 70, 40, 60, 120
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 132// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_COLOR_CHANGE, ABILITY_NONE
	runchance 120
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_KECLEON_TM_DATA_0, SPECIES_KECLEON_TM_DATA_1, SPECIES_KECLEON_TM_DATA_2, SPECIES_KECLEON_TM_DATA_3
	mondexentry SPECIES_KECLEON, ""
	mondexclassification SPECIES_KECLEON, ""
	mondexheight SPECIES_KECLEON, ""
	mondexweight SPECIES_KECLEON, ""


mondata SPECIES_SHUPPET, "Shuppet"
	basestats 44, 75, 35, 45, 63, 33
	types TYPE_GHOST, TYPE_GHOST
	catchrate 195
	baseexp 97// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 35
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_INSOMNIA, ABILITY_FRISK
	runchance 150
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_SHUPPET_TM_DATA_0, SPECIES_SHUPPET_TM_DATA_1, SPECIES_SHUPPET_TM_DATA_2, SPECIES_SHUPPET_TM_DATA_3
	mondexentry SPECIES_SHUPPET, ""
	mondexclassification SPECIES_SHUPPET, ""
	mondexheight SPECIES_SHUPPET, ""
	mondexweight SPECIES_SHUPPET, ""


mondata SPECIES_BANETTE, "Banette"
	basestats 64, 115, 65, 65, 83, 63
	types TYPE_GHOST, TYPE_GHOST
	catchrate 0
	baseexp 179// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 35
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_INSOMNIA, ABILITY_FRISK
	runchance 90
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_BANETTE_TM_DATA_0, SPECIES_BANETTE_TM_DATA_1, SPECIES_BANETTE_TM_DATA_2, SPECIES_BANETTE_TM_DATA_3
	mondexentry SPECIES_BANETTE, ""
	mondexclassification SPECIES_BANETTE, ""
	mondexheight SPECIES_BANETTE, ""
	mondexweight SPECIES_BANETTE, ""


mondata SPECIES_DUSKULL, "Duskull"
	basestats 20, 40, 90, 25, 30, 90
	types TYPE_GHOST, TYPE_GHOST
	catchrate 195
	baseexp 97// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 35
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 120
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_DUSKULL_TM_DATA_0, SPECIES_DUSKULL_TM_DATA_1, SPECIES_DUSKULL_TM_DATA_2, SPECIES_DUSKULL_TM_DATA_3
	mondexentry SPECIES_DUSKULL, ""
	mondexclassification SPECIES_DUSKULL, ""
	mondexheight SPECIES_DUSKULL, ""
	mondexweight SPECIES_DUSKULL, ""


mondata SPECIES_DUSCLOPS, "Dusclops"
	basestats 40, 70, 130, 25, 60, 130
	types TYPE_GHOST, TYPE_GHOST
	catchrate 195
	baseexp 179// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 35
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_PRESSURE, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_DUSCLOPS_TM_DATA_0, SPECIES_DUSCLOPS_TM_DATA_1, SPECIES_DUSCLOPS_TM_DATA_2, SPECIES_DUSCLOPS_TM_DATA_3
	mondexentry SPECIES_DUSCLOPS, ""
	mondexclassification SPECIES_DUSCLOPS, ""
	mondexheight SPECIES_DUSCLOPS, ""
	mondexweight SPECIES_DUSCLOPS, ""


mondata SPECIES_TROPIUS, "Tropius"
	basestats 99, 68, 83, 51, 72, 87
	types TYPE_GRASS, TYPE_FLYING
	catchrate 195
	baseexp 169// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_SOLAR_POWER
	runchance 60
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_TROPIUS_TM_DATA_0, SPECIES_TROPIUS_TM_DATA_1, SPECIES_TROPIUS_TM_DATA_2, SPECIES_TROPIUS_TM_DATA_3
	mondexentry SPECIES_TROPIUS, ""
	mondexclassification SPECIES_TROPIUS, ""
	mondexheight SPECIES_TROPIUS, ""
	mondexweight SPECIES_TROPIUS, ""


mondata SPECIES_CHIMECHO, "Chimecho"
	basestats 65, 50, 70, 65, 95, 80
	types TYPE_PSYCHIC, TYPE_PSYCHIC
	catchrate 195
	baseexp 147// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_CHIMECHO_TM_DATA_0, SPECIES_CHIMECHO_TM_DATA_1, SPECIES_CHIMECHO_TM_DATA_2, SPECIES_CHIMECHO_TM_DATA_3
	mondexentry SPECIES_CHIMECHO, ""
	mondexclassification SPECIES_CHIMECHO, ""
	mondexheight SPECIES_CHIMECHO, ""
	mondexweight SPECIES_CHIMECHO, ""


mondata SPECIES_ABSOL, "Absol"
	basestats 65, 130, 60, 75, 75, 60
	types TYPE_DARK, TYPE_DARK
	catchrate 195
	baseexp 174// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 35
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_PRESSURE, ABILITY_SUPER_LUCK
	runchance 0
	colorflip BODY_COLOR_GRAY, 1
	tmdata SPECIES_ABSOL_TM_DATA_0, SPECIES_ABSOL_TM_DATA_1, SPECIES_ABSOL_TM_DATA_2, SPECIES_ABSOL_TM_DATA_3
	mondexentry SPECIES_ABSOL, ""
	mondexclassification SPECIES_ABSOL, ""
	mondexheight SPECIES_ABSOL, ""
	mondexweight SPECIES_ABSOL, ""


mondata SPECIES_WYNAUT, "Wynaut"
	basestats 95, 23, 48, 23, 23, 48
	types TYPE_PSYCHIC, TYPE_PSYCHIC
	catchrate 195
	baseexp 44// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_SHADOW_TAG, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_WYNAUT_TM_DATA_0, SPECIES_WYNAUT_TM_DATA_1, SPECIES_WYNAUT_TM_DATA_2, SPECIES_WYNAUT_TM_DATA_3
	mondexentry SPECIES_WYNAUT, ""
	mondexclassification SPECIES_WYNAUT, ""
	mondexheight SPECIES_WYNAUT, ""
	mondexweight SPECIES_WYNAUT, ""


mondata SPECIES_SNORUNT, "Snorunt"
	basestats 50, 50, 50, 50, 50, 50
	types TYPE_ICE, TYPE_ICE
	catchrate 195
	baseexp 74// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_MINERAL
	abilities ABILITY_INNER_FOCUS, ABILITY_ICE_BODY
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_SNORUNT_TM_DATA_0, SPECIES_SNORUNT_TM_DATA_1, SPECIES_SNORUNT_TM_DATA_2, SPECIES_SNORUNT_TM_DATA_3
	mondexentry SPECIES_SNORUNT, ""
	mondexclassification SPECIES_SNORUNT, ""
	mondexheight SPECIES_SNORUNT, ""
	mondexweight SPECIES_SNORUNT, ""


mondata SPECIES_GLALIE, "Glalie"
	basestats 80, 80, 80, 80, 80, 80
	types TYPE_ICE, TYPE_ICE
	catchrate 195
	baseexp 187// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_MINERAL
	abilities ABILITY_INNER_FOCUS, ABILITY_ICE_BODY
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_GLALIE_TM_DATA_0, SPECIES_GLALIE_TM_DATA_1, SPECIES_GLALIE_TM_DATA_2, SPECIES_GLALIE_TM_DATA_3
	mondexentry SPECIES_GLALIE, ""
	mondexclassification SPECIES_GLALIE, ""
	mondexheight SPECIES_GLALIE, ""
	mondexweight SPECIES_GLALIE, ""


mondata SPECIES_SPHEAL, "Spheal"
	basestats 70, 40, 50, 25, 55, 50
	types TYPE_ICE, TYPE_WATER
	catchrate 195
	baseexp 75// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
	abilities ABILITY_THICK_FAT, ABILITY_ICE_BODY
	runchance 90
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_SPHEAL_TM_DATA_0, SPECIES_SPHEAL_TM_DATA_1, SPECIES_SPHEAL_TM_DATA_2, SPECIES_SPHEAL_TM_DATA_3
	mondexentry SPECIES_SPHEAL, ""
	mondexclassification SPECIES_SPHEAL, ""
	mondexheight SPECIES_SPHEAL, ""
	mondexweight SPECIES_SPHEAL, ""


mondata SPECIES_SEALEO, "Sealeo"
	basestats 90, 60, 70, 45, 75, 70
	types TYPE_ICE, TYPE_WATER
	catchrate 195
	baseexp 128// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
	abilities ABILITY_THICK_FAT, ABILITY_ICE_BODY
	runchance 60
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_SEALEO_TM_DATA_0, SPECIES_SEALEO_TM_DATA_1, SPECIES_SEALEO_TM_DATA_2, SPECIES_SEALEO_TM_DATA_3
	mondexentry SPECIES_SEALEO, ""
	mondexclassification SPECIES_SEALEO, ""
	mondexheight SPECIES_SEALEO, ""
	mondexweight SPECIES_SEALEO, ""


mondata SPECIES_WALREIN, "Walrein"
	basestats 110, 80, 90, 65, 95, 90
	types TYPE_ICE, TYPE_WATER
	catchrate 195
	baseexp 192// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
	abilities ABILITY_THICK_FAT, ABILITY_ICE_BODY
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_WALREIN_TM_DATA_0, SPECIES_WALREIN_TM_DATA_1, SPECIES_WALREIN_TM_DATA_2, SPECIES_WALREIN_TM_DATA_3
	mondexentry SPECIES_WALREIN, ""
	mondexclassification SPECIES_WALREIN, ""
	mondexheight SPECIES_WALREIN, ""
	mondexweight SPECIES_WALREIN, ""


mondata SPECIES_CLAMPERL, "Clamperl"
	basestats 35, 64, 85, 32, 74, 55
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 142// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
	abilities ABILITY_SHELL_ARMOR, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_CLAMPERL_TM_DATA_0, SPECIES_CLAMPERL_TM_DATA_1, SPECIES_CLAMPERL_TM_DATA_2, SPECIES_CLAMPERL_TM_DATA_3
	mondexentry SPECIES_CLAMPERL, ""
	mondexclassification SPECIES_CLAMPERL, ""
	mondexheight SPECIES_CLAMPERL, ""
	mondexweight SPECIES_CLAMPERL, ""


mondata SPECIES_HUNTAIL, "Huntail"
	basestats 55, 104, 105, 52, 94, 75
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 178// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
	abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_HUNTAIL_TM_DATA_0, SPECIES_HUNTAIL_TM_DATA_1, SPECIES_HUNTAIL_TM_DATA_2, SPECIES_HUNTAIL_TM_DATA_3
	mondexentry SPECIES_HUNTAIL, ""
	mondexclassification SPECIES_HUNTAIL, ""
	mondexheight SPECIES_HUNTAIL, ""
	mondexweight SPECIES_HUNTAIL, ""


mondata SPECIES_GOREBYSS, "Gorebyss"
	basestats 55, 84, 105, 52, 114, 75
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 178// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
	abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_GOREBYSS_TM_DATA_0, SPECIES_GOREBYSS_TM_DATA_1, SPECIES_GOREBYSS_TM_DATA_2, SPECIES_GOREBYSS_TM_DATA_3
	mondexentry SPECIES_GOREBYSS, ""
	mondexclassification SPECIES_GOREBYSS, ""
	mondexheight SPECIES_GOREBYSS, ""
	mondexweight SPECIES_GOREBYSS, ""


mondata SPECIES_RELICANTH, "Relicanth"
	basestats 100, 90, 130, 55, 45, 65
	types TYPE_WATER, TYPE_ROCK
	catchrate 0
	baseexp 198// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 40
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_2
	abilities ABILITY_SWIFT_SWIM, ABILITY_SWIFT_SWIM
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_RELICANTH_TM_DATA_0, SPECIES_RELICANTH_TM_DATA_1, SPECIES_RELICANTH_TM_DATA_2, SPECIES_RELICANTH_TM_DATA_3
	mondexentry SPECIES_RELICANTH, ""
	mondexclassification SPECIES_RELICANTH, ""
	mondexheight SPECIES_RELICANTH, ""
	mondexweight SPECIES_RELICANTH, ""


mondata SPECIES_LUVDISC, "Luvdisc"
	basestats 43, 30, 55, 97, 40, 65
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 110// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 191
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
	abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_LUVDISC_TM_DATA_0, SPECIES_LUVDISC_TM_DATA_1, SPECIES_LUVDISC_TM_DATA_2, SPECIES_LUVDISC_TM_DATA_3
	mondexentry SPECIES_LUVDISC, ""
	mondexclassification SPECIES_LUVDISC, ""
	mondexheight SPECIES_LUVDISC, ""
	mondexweight SPECIES_LUVDISC, ""


mondata SPECIES_BAGON, "Bagon"
	basestats 45, 75, 60, 50, 40, 30
	types TYPE_DRAGON, TYPE_DRAGON
	catchrate 195
	baseexp 89// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 40
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
	abilities ABILITY_ROCK_HEAD, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_BAGON_TM_DATA_0, SPECIES_BAGON_TM_DATA_1, SPECIES_BAGON_TM_DATA_2, SPECIES_BAGON_TM_DATA_3
	mondexentry SPECIES_BAGON, ""
	mondexclassification SPECIES_BAGON, ""
	mondexheight SPECIES_BAGON, ""
	mondexweight SPECIES_BAGON, ""


mondata SPECIES_SHELGON, "Shelgon"
	basestats 65, 95, 100, 50, 60, 50
	types TYPE_DRAGON, TYPE_DRAGON
	catchrate 195
	baseexp 144// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 40
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
	abilities ABILITY_ROCK_HEAD, ABILITY_NONE
	runchance 120
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_SHELGON_TM_DATA_0, SPECIES_SHELGON_TM_DATA_1, SPECIES_SHELGON_TM_DATA_2, SPECIES_SHELGON_TM_DATA_3
	mondexentry SPECIES_SHELGON, ""
	mondexclassification SPECIES_SHELGON, ""
	mondexheight SPECIES_SHELGON, ""
	mondexweight SPECIES_SHELGON, ""


mondata SPECIES_SALAMENCE, "Salamence"
	basestats 95, 135, 80, 100, 110, 80
	types TYPE_DRAGON, TYPE_FLYING
	catchrate 195
	baseexp 218// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 40
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
	abilities ABILITY_INTIMIDATE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_SALAMENCE_TM_DATA_0, SPECIES_SALAMENCE_TM_DATA_1, SPECIES_SALAMENCE_TM_DATA_2, SPECIES_SALAMENCE_TM_DATA_3
	mondexentry SPECIES_SALAMENCE, ""
	mondexclassification SPECIES_SALAMENCE, ""
	mondexheight SPECIES_SALAMENCE, ""
	mondexweight SPECIES_SALAMENCE, ""


mondata SPECIES_BELDUM, "Beldum"
	basestats 40, 55, 80, 30, 35, 60
	types TYPE_STEEL, TYPE_PSYCHIC
	catchrate 195
	baseexp 103// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 40
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_CLEAR_BODY, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_BELDUM_TM_DATA_0, SPECIES_BELDUM_TM_DATA_1, SPECIES_BELDUM_TM_DATA_2, SPECIES_BELDUM_TM_DATA_3
	mondexentry SPECIES_BELDUM, ""
	mondexclassification SPECIES_BELDUM, ""
	mondexheight SPECIES_BELDUM, ""
	mondexweight SPECIES_BELDUM, ""


mondata SPECIES_METANG, "Metang"
	basestats 60, 75, 100, 50, 55, 80
	types TYPE_STEEL, TYPE_PSYCHIC
	catchrate 195
	baseexp 153// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 40
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_CLEAR_BODY, ABILITY_NONE
	runchance 60
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_METANG_TM_DATA_0, SPECIES_METANG_TM_DATA_1, SPECIES_METANG_TM_DATA_2, SPECIES_METANG_TM_DATA_3
	mondexentry SPECIES_METANG, ""
	mondexclassification SPECIES_METANG, ""
	mondexheight SPECIES_METANG, ""
	mondexweight SPECIES_METANG, ""


mondata SPECIES_METAGROSS, "Metagross"
	basestats 80, 135, 130, 70, 95, 90
	types TYPE_STEEL, TYPE_PSYCHIC
	catchrate 195
	baseexp 210// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 40
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_CLEAR_BODY, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_METAGROSS_TM_DATA_0, SPECIES_METAGROSS_TM_DATA_1, SPECIES_METAGROSS_TM_DATA_2, SPECIES_METAGROSS_TM_DATA_3
	mondexentry SPECIES_METAGROSS, ""
	mondexclassification SPECIES_METAGROSS, ""
	mondexheight SPECIES_METAGROSS, ""
	mondexweight SPECIES_METAGROSS, ""


mondata SPECIES_REGIROCK, "Regirock"
	basestats 80, 100, 200, 50, 50, 100
	types TYPE_ROCK, TYPE_ROCK
	catchrate 195
	baseexp 217// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 80
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_CLEAR_BODY, ABILITY_SOLID_ROCK
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_REGIROCK_TM_DATA_0, SPECIES_REGIROCK_TM_DATA_1, SPECIES_REGIROCK_TM_DATA_2, SPECIES_REGIROCK_TM_DATA_3
	mondexentry SPECIES_REGIROCK, ""
	mondexclassification SPECIES_REGIROCK, ""
	mondexheight SPECIES_REGIROCK, ""
	mondexweight SPECIES_REGIROCK, ""


mondata SPECIES_REGICE, "Regice"
	basestats 80, 50, 100, 50, 100, 200
	types TYPE_ICE, TYPE_ICE
	catchrate 195
	baseexp 216// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 80
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_CLEAR_BODY, ABILITY_FILTER
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_REGICE_TM_DATA_0, SPECIES_REGICE_TM_DATA_1, SPECIES_REGICE_TM_DATA_2, SPECIES_REGICE_TM_DATA_3
	mondexentry SPECIES_REGICE, ""
	mondexclassification SPECIES_REGICE, ""
	mondexheight SPECIES_REGICE, ""
	mondexweight SPECIES_REGICE, ""


mondata SPECIES_REGISTEEL, "Registeel"
	basestats 80, 75, 150, 50, 75, 150
	types TYPE_STEEL, TYPE_STEEL
	catchrate 195
	baseexp 215// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 80
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_CLEAR_BODY, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_REGISTEEL_TM_DATA_0, SPECIES_REGISTEEL_TM_DATA_1, SPECIES_REGISTEEL_TM_DATA_2, SPECIES_REGISTEEL_TM_DATA_3
	mondexentry SPECIES_REGISTEEL, ""
	mondexclassification SPECIES_REGISTEEL, ""
	mondexheight SPECIES_REGISTEEL, ""
	mondexweight SPECIES_REGISTEEL, ""


mondata SPECIES_LATIAS, "Latias"
	basestats 80, 80, 90, 110, 110, 130
	types TYPE_DRAGON, TYPE_PSYCHIC
	catchrate 195
	baseexp 211// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 254
	eggcycles 120
	basefriendship 90
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_LATIAS_TM_DATA_0, SPECIES_LATIAS_TM_DATA_1, SPECIES_LATIAS_TM_DATA_2, SPECIES_LATIAS_TM_DATA_3
	mondexentry SPECIES_LATIAS, ""
	mondexclassification SPECIES_LATIAS, ""
	mondexheight SPECIES_LATIAS, ""
	mondexweight SPECIES_LATIAS, ""


mondata SPECIES_LATIOS, "Latios"
    basestats 80, 90, 80, 110, 130, 110
    types TYPE_DRAGON, TYPE_PSYCHIC
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 120
    basefriendship 90
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_LATIOS_TM_DATA_0, SPECIES_LATIOS_TM_DATA_1, SPECIES_LATIOS_TM_DATA_2, SPECIES_LATIOS_TM_DATA_3
    mondexentry SPECIES_LATIOS, "It understands human speech and is\nhighly intelligent. It is a tender\nPokémon that dislikes fighting."
    mondexclassification SPECIES_LATIOS, "Eon Pokémon"
    mondexheight SPECIES_LATIOS, "6’07”"
    mondexweight SPECIES_LATIOS, "132.3 lbs."


mondata SPECIES_KYOGRE, "Kyogre"
	basestats 100, 100, 90, 90, 150, 140
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 218// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 120
	basefriendship 0
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_DRIZZLE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_KYOGRE_TM_DATA_0, SPECIES_KYOGRE_TM_DATA_1, SPECIES_KYOGRE_TM_DATA_2, SPECIES_KYOGRE_TM_DATA_3
	mondexentry SPECIES_KYOGRE, ""
	mondexclassification SPECIES_KYOGRE, ""
	mondexheight SPECIES_KYOGRE, ""
	mondexweight SPECIES_KYOGRE, ""


mondata SPECIES_GROUDON, "Groudon"
	basestats 100, 150, 140, 90, 100, 90
	types TYPE_GROUND, TYPE_GROUND
	catchrate 195
	baseexp 218// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 120
	basefriendship 0
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_DROUGHT, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_GROUDON_TM_DATA_0, SPECIES_GROUDON_TM_DATA_1, SPECIES_GROUDON_TM_DATA_2, SPECIES_GROUDON_TM_DATA_3
	mondexentry SPECIES_GROUDON, ""
	mondexclassification SPECIES_GROUDON, ""
	mondexheight SPECIES_GROUDON, ""
	mondexweight SPECIES_GROUDON, ""


mondata SPECIES_RAYQUAZA, "Rayquaza"
	basestats 105, 150, 90, 95, 150, 90
	types TYPE_DRAGON, TYPE_FLYING
	catchrate 195
	baseexp 220// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 120
	basefriendship 0
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_AIR_LOCK, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_RAYQUAZA_TM_DATA_0, SPECIES_RAYQUAZA_TM_DATA_1, SPECIES_RAYQUAZA_TM_DATA_2, SPECIES_RAYQUAZA_TM_DATA_3
	mondexentry SPECIES_RAYQUAZA, ""
	mondexclassification SPECIES_RAYQUAZA, ""
	mondexheight SPECIES_RAYQUAZA, ""
	mondexweight SPECIES_RAYQUAZA, ""


mondata SPECIES_JIRACHI, "Jirachi"
	basestats 100, 100, 100, 100, 100, 100
	types TYPE_STEEL, TYPE_PSYCHIC
	catchrate 195
	baseexp 215// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 120
	basefriendship 100
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_SERENE_GRACE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_JIRACHI_TM_DATA_0, SPECIES_JIRACHI_TM_DATA_1, SPECIES_JIRACHI_TM_DATA_2, SPECIES_JIRACHI_TM_DATA_3
	mondexentry SPECIES_JIRACHI, ""
	mondexclassification SPECIES_JIRACHI, ""
	mondexheight SPECIES_JIRACHI, ""
	mondexweight SPECIES_JIRACHI, ""


mondata SPECIES_DEOXYS, "Deoxys"
	basestats 50, 150, 50, 150, 150, 50
	types TYPE_PSYCHIC, TYPE_PSYCHIC
	catchrate 195
	baseexp 215// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 120
	basefriendship 0
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_PRESSURE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_DEOXYS_TM_DATA_0, SPECIES_DEOXYS_TM_DATA_1, SPECIES_DEOXYS_TM_DATA_2, SPECIES_DEOXYS_TM_DATA_3
	mondexentry SPECIES_DEOXYS, ""
	mondexclassification SPECIES_DEOXYS, ""
	mondexheight SPECIES_DEOXYS, ""
	mondexweight SPECIES_DEOXYS, ""


mondata SPECIES_TURTWIG, "Turtwig"
	basestats 55, 68, 64, 31, 45, 55
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 64// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
	abilities ABILITY_OVERGROW, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_TURTWIG_TM_DATA_0, SPECIES_TURTWIG_TM_DATA_1, SPECIES_TURTWIG_TM_DATA_2, SPECIES_TURTWIG_TM_DATA_3
	mondexentry SPECIES_TURTWIG, ""
	mondexclassification SPECIES_TURTWIG, ""
	mondexheight SPECIES_TURTWIG, ""
	mondexweight SPECIES_TURTWIG, ""


mondata SPECIES_GROTLE, "Grotle"
	basestats 75, 89, 85, 36, 55, 65
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 141// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
	abilities ABILITY_OVERGROW, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_GROTLE_TM_DATA_0, SPECIES_GROTLE_TM_DATA_1, SPECIES_GROTLE_TM_DATA_2, SPECIES_GROTLE_TM_DATA_3
	mondexentry SPECIES_GROTLE, ""
	mondexclassification SPECIES_GROTLE, ""
	mondexheight SPECIES_GROTLE, ""
	mondexweight SPECIES_GROTLE, ""


mondata SPECIES_TORTERRA, "Torterra"
	basestats 95, 109, 105, 56, 75, 85
	types TYPE_GRASS, TYPE_GROUND
	catchrate 195
	baseexp 208// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
	abilities ABILITY_OVERGROW, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 1
	tmdata SPECIES_TORTERRA_TM_DATA_0, SPECIES_TORTERRA_TM_DATA_1, SPECIES_TORTERRA_TM_DATA_2, SPECIES_TORTERRA_TM_DATA_3
	mondexentry SPECIES_TORTERRA, ""
	mondexclassification SPECIES_TORTERRA, ""
	mondexheight SPECIES_TORTERRA, ""
	mondexweight SPECIES_TORTERRA, ""


mondata SPECIES_CHIMCHAR, "Chimchar"
	basestats 44, 58, 44, 61, 58, 44
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 65// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_BLAZE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLACK, 1
	tmdata SPECIES_CHIMCHAR_TM_DATA_0, SPECIES_CHIMCHAR_TM_DATA_1, SPECIES_CHIMCHAR_TM_DATA_2, SPECIES_CHIMCHAR_TM_DATA_3
	mondexentry SPECIES_CHIMCHAR, ""
	mondexclassification SPECIES_CHIMCHAR, ""
	mondexheight SPECIES_CHIMCHAR, ""
	mondexweight SPECIES_CHIMCHAR, ""


mondata SPECIES_MONFERNO, "Monferno"
	basestats 64, 78, 52, 81, 78, 52
	types TYPE_FIRE, TYPE_FIGHTING
	catchrate 195
	baseexp 142// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_BLAZE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLACK, 1
	tmdata SPECIES_MONFERNO_TM_DATA_0, SPECIES_MONFERNO_TM_DATA_1, SPECIES_MONFERNO_TM_DATA_2, SPECIES_MONFERNO_TM_DATA_3
	mondexentry SPECIES_MONFERNO, ""
	mondexclassification SPECIES_MONFERNO, ""
	mondexheight SPECIES_MONFERNO, ""
	mondexweight SPECIES_MONFERNO, ""


mondata SPECIES_INFERNAPE, "Infernape"
	basestats 76, 104, 71, 108, 104, 71
	types TYPE_FIRE, TYPE_FIGHTING
	catchrate 195
	baseexp 209// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_BLAZE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_INFERNAPE_TM_DATA_0, SPECIES_INFERNAPE_TM_DATA_1, SPECIES_INFERNAPE_TM_DATA_2, SPECIES_INFERNAPE_TM_DATA_3
	mondexentry SPECIES_INFERNAPE, ""
	mondexclassification SPECIES_INFERNAPE, ""
	mondexheight SPECIES_INFERNAPE, ""
	mondexweight SPECIES_INFERNAPE, ""


mondata SPECIES_PIPLUP, "Piplup"
	basestats 53, 51, 53, 40, 61, 56
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 66// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
	abilities ABILITY_TORRENT, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_PIPLUP_TM_DATA_0, SPECIES_PIPLUP_TM_DATA_1, SPECIES_PIPLUP_TM_DATA_2, SPECIES_PIPLUP_TM_DATA_3
	mondexentry SPECIES_PIPLUP, ""
	mondexclassification SPECIES_PIPLUP, ""
	mondexheight SPECIES_PIPLUP, ""
	mondexweight SPECIES_PIPLUP, ""


mondata SPECIES_PRINPLUP, "Prinplup"
	basestats 64, 66, 68, 50, 81, 76
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 143// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
	abilities ABILITY_TORRENT, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_PRINPLUP_TM_DATA_0, SPECIES_PRINPLUP_TM_DATA_1, SPECIES_PRINPLUP_TM_DATA_2, SPECIES_PRINPLUP_TM_DATA_3
	mondexentry SPECIES_PRINPLUP, ""
	mondexclassification SPECIES_PRINPLUP, ""
	mondexheight SPECIES_PRINPLUP, ""
	mondexweight SPECIES_PRINPLUP, ""


mondata SPECIES_EMPOLEON, "Empoleon"
	basestats 84, 86, 88, 60, 111, 101
	types TYPE_WATER, TYPE_STEEL
	catchrate 195
	baseexp 210// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
	abilities ABILITY_TORRENT, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_EMPOLEON_TM_DATA_0, SPECIES_EMPOLEON_TM_DATA_1, SPECIES_EMPOLEON_TM_DATA_2, SPECIES_EMPOLEON_TM_DATA_3
	mondexentry SPECIES_EMPOLEON, ""
	mondexclassification SPECIES_EMPOLEON, ""
	mondexheight SPECIES_EMPOLEON, ""
	mondexweight SPECIES_EMPOLEON, ""


mondata SPECIES_STARLY, "Starly"
	basestats 40, 55, 30, 60, 30, 30
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 56// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_KEEN_EYE, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_STARLY_TM_DATA_0, SPECIES_STARLY_TM_DATA_1, SPECIES_STARLY_TM_DATA_2, SPECIES_STARLY_TM_DATA_3
	mondexentry SPECIES_STARLY, ""
	mondexclassification SPECIES_STARLY, ""
	mondexheight SPECIES_STARLY, ""
	mondexweight SPECIES_STARLY, ""


mondata SPECIES_STARAVIA, "Staravia"
	basestats 55, 75, 50, 80, 40, 40
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 113// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_INTIMIDATE, ABILITY_NONE
	runchance 60
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_STARAVIA_TM_DATA_0, SPECIES_STARAVIA_TM_DATA_1, SPECIES_STARAVIA_TM_DATA_2, SPECIES_STARAVIA_TM_DATA_3
	mondexentry SPECIES_STARAVIA, ""
	mondexclassification SPECIES_STARAVIA, ""
	mondexheight SPECIES_STARAVIA, ""
	mondexweight SPECIES_STARAVIA, ""


mondata SPECIES_STARAPTOR, "Staraptor"
	basestats 85, 120, 70, 100, 50, 50
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 172// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_INTIMIDATE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_STARAPTOR_TM_DATA_0, SPECIES_STARAPTOR_TM_DATA_1, SPECIES_STARAPTOR_TM_DATA_2, SPECIES_STARAPTOR_TM_DATA_3
	mondexentry SPECIES_STARAPTOR, ""
	mondexclassification SPECIES_STARAPTOR, ""
	mondexheight SPECIES_STARAPTOR, ""
	mondexweight SPECIES_STARAPTOR, ""


mondata SPECIES_BIDOOF, "Bidoof"
	basestats 59, 45, 40, 31, 35, 40
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 58// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
	abilities ABILITY_SIMPLE, ABILITY_UNAWARE
	runchance 90
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_BIDOOF_TM_DATA_0, SPECIES_BIDOOF_TM_DATA_1, SPECIES_BIDOOF_TM_DATA_2, SPECIES_BIDOOF_TM_DATA_3
	mondexentry SPECIES_BIDOOF, ""
	mondexclassification SPECIES_BIDOOF, ""
	mondexheight SPECIES_BIDOOF, ""
	mondexweight SPECIES_BIDOOF, ""


mondata SPECIES_BIBAREL, "Bibarel"
	basestats 79, 85, 60, 71, 55, 60
	types TYPE_NORMAL, TYPE_WATER
	catchrate 195
	baseexp 116// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
	abilities ABILITY_SIMPLE, ABILITY_UNAWARE
	runchance 60
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_BIBAREL_TM_DATA_0, SPECIES_BIBAREL_TM_DATA_1, SPECIES_BIBAREL_TM_DATA_2, SPECIES_BIBAREL_TM_DATA_3
	mondexentry SPECIES_BIBAREL, ""
	mondexclassification SPECIES_BIBAREL, ""
	mondexheight SPECIES_BIBAREL, ""
	mondexweight SPECIES_BIBAREL, ""


mondata SPECIES_KRICKETOT, "Kricketot"
	basestats 37, 25, 41, 25, 25, 41
	types TYPE_BUG, TYPE_BUG
	catchrate 195
	baseexp 54// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_PRESSURE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_KRICKETOT_TM_DATA_0, SPECIES_KRICKETOT_TM_DATA_1, SPECIES_KRICKETOT_TM_DATA_2, SPECIES_KRICKETOT_TM_DATA_3
	mondexentry SPECIES_KRICKETOT, ""
	mondexclassification SPECIES_KRICKETOT, ""
	mondexheight SPECIES_KRICKETOT, ""
	mondexweight SPECIES_KRICKETOT, ""


mondata SPECIES_KRICKETUNE, "Kricketune"
	basestats 77, 85, 51, 65, 55, 51
	types TYPE_BUG, TYPE_BUG
	catchrate 195
	baseexp 159// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SWARM, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_KRICKETUNE_TM_DATA_0, SPECIES_KRICKETUNE_TM_DATA_1, SPECIES_KRICKETUNE_TM_DATA_2, SPECIES_KRICKETUNE_TM_DATA_3
	mondexentry SPECIES_KRICKETUNE, ""
	mondexclassification SPECIES_KRICKETUNE, ""
	mondexheight SPECIES_KRICKETUNE, ""
	mondexweight SPECIES_KRICKETUNE, ""


mondata SPECIES_SHINX, "Shinx"
	basestats 45, 65, 34, 45, 40, 34
	types TYPE_ELECTRIC, TYPE_ELECTRIC
	catchrate 195
	baseexp 60// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_RUN_AWAY, ABILITY_INTIMIDATE
	runchance 120
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_SHINX_TM_DATA_0, SPECIES_SHINX_TM_DATA_1, SPECIES_SHINX_TM_DATA_2, SPECIES_SHINX_TM_DATA_3
	mondexentry SPECIES_SHINX, ""
	mondexclassification SPECIES_SHINX, ""
	mondexheight SPECIES_SHINX, ""
	mondexweight SPECIES_SHINX, ""


mondata SPECIES_LUXIO, "Luxio"
	basestats 60, 85, 49, 60, 60, 49
	types TYPE_ELECTRIC, TYPE_ELECTRIC
	catchrate 195
	baseexp 117// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 100
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_ANGER_POINT, ABILITY_INTIMIDATE
	runchance 90
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_LUXIO_TM_DATA_0, SPECIES_LUXIO_TM_DATA_1, SPECIES_LUXIO_TM_DATA_2, SPECIES_LUXIO_TM_DATA_3
	mondexentry SPECIES_LUXIO, ""
	mondexclassification SPECIES_LUXIO, ""
	mondexheight SPECIES_LUXIO, ""
	mondexweight SPECIES_LUXIO, ""


mondata SPECIES_LUXRAY, "Luxray"
	basestats 80, 120, 79, 70, 95, 79
	types TYPE_ELECTRIC, TYPE_DARK
	catchrate 195
	baseexp 194// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_ANGER_POINT, ABILITY_INTIMIDATE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_LUXRAY_TM_DATA_0, SPECIES_LUXRAY_TM_DATA_1, SPECIES_LUXRAY_TM_DATA_2, SPECIES_LUXRAY_TM_DATA_3
	mondexentry SPECIES_LUXRAY, ""
	mondexclassification SPECIES_LUXRAY, ""
	mondexheight SPECIES_LUXRAY, ""
	mondexweight SPECIES_LUXRAY, ""


mondata SPECIES_BUDEW, "Budew"
	basestats 40, 30, 35, 55, 50, 70
	types TYPE_GRASS, TYPE_POISON
	catchrate 195
	baseexp 68// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_NATURAL_CURE, ABILITY_POISON_POINT
	runchance 120
	colorflip BODY_COLOR_YELLOW, 1
	tmdata SPECIES_BUDEW_TM_DATA_0, SPECIES_BUDEW_TM_DATA_1, SPECIES_BUDEW_TM_DATA_2, SPECIES_BUDEW_TM_DATA_3
	mondexentry SPECIES_BUDEW, ""
	mondexclassification SPECIES_BUDEW, ""
	mondexheight SPECIES_BUDEW, ""
	mondexweight SPECIES_BUDEW, ""


mondata SPECIES_ROSERADE, "Roserade"
	basestats 60, 70, 55, 90, 125, 105
	types TYPE_GRASS, TYPE_POISON
	catchrate 195
	baseexp 204// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
	abilities ABILITY_NATURAL_CURE, ABILITY_POISON_POINT
	runchance 0
	colorflip BODY_COLOR_YELLOW, 1
	tmdata SPECIES_ROSERADE_TM_DATA_0, SPECIES_ROSERADE_TM_DATA_1, SPECIES_ROSERADE_TM_DATA_2, SPECIES_ROSERADE_TM_DATA_3
	mondexentry SPECIES_ROSERADE, ""
	mondexclassification SPECIES_ROSERADE, ""
	mondexheight SPECIES_ROSERADE, ""
	mondexweight SPECIES_ROSERADE, ""


mondata SPECIES_CRANIDOS, "Cranidos"
	basestats 67, 125, 40, 58, 30, 30
	types TYPE_ROCK, TYPE_ROCK
	catchrate 195
	baseexp 99// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 30
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
	abilities ABILITY_MOLD_BREAKER, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_CRANIDOS_TM_DATA_0, SPECIES_CRANIDOS_TM_DATA_1, SPECIES_CRANIDOS_TM_DATA_2, SPECIES_CRANIDOS_TM_DATA_3
	mondexentry SPECIES_CRANIDOS, ""
	mondexclassification SPECIES_CRANIDOS, ""
	mondexheight SPECIES_CRANIDOS, ""
	mondexweight SPECIES_CRANIDOS, ""


mondata SPECIES_RAMPARDOS, "Rampardos"
	basestats 97, 165, 60, 58, 65, 50
	types TYPE_ROCK, TYPE_ROCK
	catchrate 195
	baseexp 199// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 30
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
	abilities ABILITY_MOLD_BREAKER, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_RAMPARDOS_TM_DATA_0, SPECIES_RAMPARDOS_TM_DATA_1, SPECIES_RAMPARDOS_TM_DATA_2, SPECIES_RAMPARDOS_TM_DATA_3
	mondexentry SPECIES_RAMPARDOS, ""
	mondexclassification SPECIES_RAMPARDOS, ""
	mondexheight SPECIES_RAMPARDOS, ""
	mondexweight SPECIES_RAMPARDOS, ""


mondata SPECIES_SHIELDON, "Shieldon"
	basestats 30, 42, 118, 30, 42, 88
	types TYPE_ROCK, TYPE_STEEL
	catchrate 195
	baseexp 99// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 30
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
	abilities ABILITY_STURDY, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_SHIELDON_TM_DATA_0, SPECIES_SHIELDON_TM_DATA_1, SPECIES_SHIELDON_TM_DATA_2, SPECIES_SHIELDON_TM_DATA_3
	mondexentry SPECIES_SHIELDON, ""
	mondexclassification SPECIES_SHIELDON, ""
	mondexheight SPECIES_SHIELDON, ""
	mondexweight SPECIES_SHIELDON, ""


mondata SPECIES_BASTIODON, "Bastiodon"
	basestats 60, 52, 168, 30, 47, 138
	types TYPE_ROCK, TYPE_STEEL
	catchrate 195
	baseexp 199// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 30
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
	abilities ABILITY_STURDY, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_BASTIODON_TM_DATA_0, SPECIES_BASTIODON_TM_DATA_1, SPECIES_BASTIODON_TM_DATA_2, SPECIES_BASTIODON_TM_DATA_3
	mondexentry SPECIES_BASTIODON, ""
	mondexclassification SPECIES_BASTIODON, ""
	mondexheight SPECIES_BASTIODON, ""
	mondexweight SPECIES_BASTIODON, ""


mondata SPECIES_BURMY, "Burmy"
	basestats 40, 29, 45, 36, 29, 45
	types TYPE_BUG, TYPE_BUG
	catchrate 195
	baseexp 61// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SHED_SKIN, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_BURMY_TM_DATA_0, SPECIES_BURMY_TM_DATA_1, SPECIES_BURMY_TM_DATA_2, SPECIES_BURMY_TM_DATA_3
	mondexentry SPECIES_BURMY, ""
	mondexclassification SPECIES_BURMY, ""
	mondexheight SPECIES_BURMY, ""
	mondexweight SPECIES_BURMY, ""


mondata SPECIES_WORMADAM, "Wormadam"
	basestats 60, 59, 85, 36, 79, 105
	types TYPE_BUG, TYPE_GRASS
	catchrate 195
	baseexp 159// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 254
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_ANTICIPATION, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_WORMADAM_TM_DATA_0, SPECIES_WORMADAM_TM_DATA_1, SPECIES_WORMADAM_TM_DATA_2, SPECIES_WORMADAM_TM_DATA_3
	mondexentry SPECIES_WORMADAM, ""
	mondexclassification SPECIES_WORMADAM, ""
	mondexheight SPECIES_WORMADAM, ""
	mondexweight SPECIES_WORMADAM, ""


mondata SPECIES_MOTHIM, "Mothim"
	basestats 70, 94, 50, 66, 94, 50
	types TYPE_BUG, TYPE_FLYING
	catchrate 195
	baseexp 159// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 0
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SWARM, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_MOTHIM_TM_DATA_0, SPECIES_MOTHIM_TM_DATA_1, SPECIES_MOTHIM_TM_DATA_2, SPECIES_MOTHIM_TM_DATA_3
	mondexentry SPECIES_MOTHIM, ""
	mondexclassification SPECIES_MOTHIM, ""
	mondexheight SPECIES_MOTHIM, ""
	mondexweight SPECIES_MOTHIM, ""


mondata SPECIES_COMBEE, "Combee"
	basestats 30, 30, 42, 70, 30, 42
	types TYPE_BUG, TYPE_FLYING
	catchrate 195
	baseexp 63// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_HONEY_GATHER, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_COMBEE_TM_DATA_0, SPECIES_COMBEE_TM_DATA_1, SPECIES_COMBEE_TM_DATA_2, SPECIES_COMBEE_TM_DATA_3
	mondexentry SPECIES_COMBEE, ""
	mondexclassification SPECIES_COMBEE, ""
	mondexheight SPECIES_COMBEE, ""
	mondexweight SPECIES_COMBEE, ""


mondata SPECIES_VESPIQUEN, "Vespiquen"
	basestats 70, 80, 102, 40, 80, 102
	types TYPE_BUG, TYPE_FLYING
	catchrate 195
	baseexp 188// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 254
	eggcycles 15
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_PRESSURE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_VESPIQUEN_TM_DATA_0, SPECIES_VESPIQUEN_TM_DATA_1, SPECIES_VESPIQUEN_TM_DATA_2, SPECIES_VESPIQUEN_TM_DATA_3
	mondexentry SPECIES_VESPIQUEN, ""
	mondexclassification SPECIES_VESPIQUEN, ""
	mondexheight SPECIES_VESPIQUEN, ""
	mondexweight SPECIES_VESPIQUEN, ""


mondata SPECIES_PACHIRISU, "Pachirisu"
	basestats 60, 45, 70, 95, 45, 90
	types TYPE_ELECTRIC, TYPE_FAIRY
	catchrate 195
	baseexp 120// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 10
	basefriendship 100
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
	abilities ABILITY_RUN_AWAY, ABILITY_CUTE_CHARM
	runchance 120
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_PACHIRISU_TM_DATA_0, SPECIES_PACHIRISU_TM_DATA_1, SPECIES_PACHIRISU_TM_DATA_2, SPECIES_PACHIRISU_TM_DATA_3
	mondexentry SPECIES_PACHIRISU, ""
	mondexclassification SPECIES_PACHIRISU, ""
	mondexheight SPECIES_PACHIRISU, ""
	mondexweight SPECIES_PACHIRISU, ""


mondata SPECIES_BUIZEL, "Buizel"
	basestats 55, 65, 35, 85, 60, 30
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 75// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
	abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
	runchance 120
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_BUIZEL_TM_DATA_0, SPECIES_BUIZEL_TM_DATA_1, SPECIES_BUIZEL_TM_DATA_2, SPECIES_BUIZEL_TM_DATA_3
	mondexentry SPECIES_BUIZEL, ""
	mondexclassification SPECIES_BUIZEL, ""
	mondexheight SPECIES_BUIZEL, ""
	mondexweight SPECIES_BUIZEL, ""


mondata SPECIES_FLOATZEL, "Floatzel"
	basestats 85, 105, 55, 115, 85, 50
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 178// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
	abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_FLOATZEL_TM_DATA_0, SPECIES_FLOATZEL_TM_DATA_1, SPECIES_FLOATZEL_TM_DATA_2, SPECIES_FLOATZEL_TM_DATA_3
	mondexentry SPECIES_FLOATZEL, ""
	mondexclassification SPECIES_FLOATZEL, ""
	mondexheight SPECIES_FLOATZEL, ""
	mondexweight SPECIES_FLOATZEL, ""


mondata SPECIES_CHERUBI, "Cherubi"
	basestats 45, 35, 45, 35, 62, 53
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 68// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_CHERUBI_TM_DATA_0, SPECIES_CHERUBI_TM_DATA_1, SPECIES_CHERUBI_TM_DATA_2, SPECIES_CHERUBI_TM_DATA_3
	mondexentry SPECIES_CHERUBI, ""
	mondexclassification SPECIES_CHERUBI, ""
	mondexheight SPECIES_CHERUBI, ""
	mondexweight SPECIES_CHERUBI, ""


mondata SPECIES_CHERRIM, "Cherrim"
	basestats 70, 60, 70, 85, 87, 78
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 133// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
	abilities ABILITY_FLOWER_GIFT, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_CHERRIM_TM_DATA_0, SPECIES_CHERRIM_TM_DATA_1, SPECIES_CHERRIM_TM_DATA_2, SPECIES_CHERRIM_TM_DATA_3
	mondexentry SPECIES_CHERRIM, ""
	mondexclassification SPECIES_CHERRIM, ""
	mondexheight SPECIES_CHERRIM, ""
	mondexweight SPECIES_CHERRIM, ""


mondata SPECIES_SHELLOS, "Shellos"
	basestats 76, 48, 48, 34, 57, 62
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 73// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_AMORPHOUS
	abilities ABILITY_STICKY_HOLD, ABILITY_STORM_DRAIN
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_SHELLOS_TM_DATA_0, SPECIES_SHELLOS_TM_DATA_1, SPECIES_SHELLOS_TM_DATA_2, SPECIES_SHELLOS_TM_DATA_3
	mondexentry SPECIES_SHELLOS, ""
	mondexclassification SPECIES_SHELLOS, ""
	mondexheight SPECIES_SHELLOS, ""
	mondexweight SPECIES_SHELLOS, ""


mondata SPECIES_GASTRODON, "Gastrodon"
	basestats 111, 83, 68, 39, 92, 82
	types TYPE_WATER, TYPE_GROUND
	catchrate 195
	baseexp 176// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_AMORPHOUS
	abilities ABILITY_STICKY_HOLD, ABILITY_STORM_DRAIN
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_GASTRODON_TM_DATA_0, SPECIES_GASTRODON_TM_DATA_1, SPECIES_GASTRODON_TM_DATA_2, SPECIES_GASTRODON_TM_DATA_3
	mondexentry SPECIES_GASTRODON, ""
	mondexclassification SPECIES_GASTRODON, ""
	mondexheight SPECIES_GASTRODON, ""
	mondexweight SPECIES_GASTRODON, ""


mondata SPECIES_AMBIPOM, "Ambipom"
	basestats 75, 100, 66, 115, 60, 66
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 186// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 100
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_TECHNICIAN, ABILITY_CUTE_CHARM
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_AMBIPOM_TM_DATA_0, SPECIES_AMBIPOM_TM_DATA_1, SPECIES_AMBIPOM_TM_DATA_2, SPECIES_AMBIPOM_TM_DATA_3
	mondexentry SPECIES_AMBIPOM, ""
	mondexclassification SPECIES_AMBIPOM, ""
	mondexheight SPECIES_AMBIPOM, ""
	mondexweight SPECIES_AMBIPOM, ""


mondata SPECIES_DRIFLOON, "Drifloon"
	basestats 90, 50, 34, 70, 60, 44
	types TYPE_GHOST, TYPE_FLYING
	catchrate 195
	baseexp 127// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 30
	basefriendship 70
	growthrate GROWTH_FLUCTUATING
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_AFTERMATH, ABILITY_UNBURDEN
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_DRIFLOON_TM_DATA_0, SPECIES_DRIFLOON_TM_DATA_1, SPECIES_DRIFLOON_TM_DATA_2, SPECIES_DRIFLOON_TM_DATA_3
	mondexentry SPECIES_DRIFLOON, ""
	mondexclassification SPECIES_DRIFLOON, ""
	mondexheight SPECIES_DRIFLOON, ""
	mondexweight SPECIES_DRIFLOON, ""


mondata SPECIES_DRIFBLIM, "Drifblim"
	basestats 150, 80, 44, 80, 90, 54
	types TYPE_GHOST, TYPE_FLYING
	catchrate 195
	baseexp 204// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 30
	basefriendship 70
	growthrate GROWTH_FLUCTUATING
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_AFTERMATH, ABILITY_UNBURDEN
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_DRIFBLIM_TM_DATA_0, SPECIES_DRIFBLIM_TM_DATA_1, SPECIES_DRIFBLIM_TM_DATA_2, SPECIES_DRIFBLIM_TM_DATA_3
	mondexentry SPECIES_DRIFBLIM, ""
	mondexclassification SPECIES_DRIFBLIM, ""
	mondexheight SPECIES_DRIFBLIM, ""
	mondexweight SPECIES_DRIFBLIM, ""


mondata SPECIES_BUNEARY, "Buneary"
	basestats 55, 66, 44, 85, 44, 56
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 84// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 0
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_RUN_AWAY, ABILITY_KLUTZ
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_BUNEARY_TM_DATA_0, SPECIES_BUNEARY_TM_DATA_1, SPECIES_BUNEARY_TM_DATA_2, SPECIES_BUNEARY_TM_DATA_3
	mondexentry SPECIES_BUNEARY, ""
	mondexclassification SPECIES_BUNEARY, ""
	mondexheight SPECIES_BUNEARY, ""
	mondexweight SPECIES_BUNEARY, ""


mondata SPECIES_LOPUNNY, "Lopunny"
	basestats 65, 76, 84, 105, 54, 96
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 178// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 140
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_CUTE_CHARM, ABILITY_KLUTZ
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_LOPUNNY_TM_DATA_0, SPECIES_LOPUNNY_TM_DATA_1, SPECIES_LOPUNNY_TM_DATA_2, SPECIES_LOPUNNY_TM_DATA_3
	mondexentry SPECIES_LOPUNNY, ""
	mondexclassification SPECIES_LOPUNNY, ""
	mondexheight SPECIES_LOPUNNY, ""
	mondexweight SPECIES_LOPUNNY, ""


mondata SPECIES_MISMAGIUS, "Mismagius"
	basestats 60, 60, 60, 105, 105, 105
	types TYPE_GHOST, TYPE_GHOST
	catchrate 195
	baseexp 187// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 35
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_MISMAGIUS_TM_DATA_0, SPECIES_MISMAGIUS_TM_DATA_1, SPECIES_MISMAGIUS_TM_DATA_2, SPECIES_MISMAGIUS_TM_DATA_3
	mondexentry SPECIES_MISMAGIUS, ""
	mondexclassification SPECIES_MISMAGIUS, ""
	mondexheight SPECIES_MISMAGIUS, ""
	mondexweight SPECIES_MISMAGIUS, ""


mondata SPECIES_HONCHKROW, "Honchkrow"
	basestats 100, 125, 52, 71, 105, 52
	types TYPE_DARK, TYPE_FLYING
	catchrate 195
	baseexp 187// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 35
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_INSOMNIA, ABILITY_SUPER_LUCK
	runchance 0
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_HONCHKROW_TM_DATA_0, SPECIES_HONCHKROW_TM_DATA_1, SPECIES_HONCHKROW_TM_DATA_2, SPECIES_HONCHKROW_TM_DATA_3
	mondexentry SPECIES_HONCHKROW, ""
	mondexclassification SPECIES_HONCHKROW, ""
	mondexheight SPECIES_HONCHKROW, ""
	mondexweight SPECIES_HONCHKROW, ""


mondata SPECIES_GLAMEOW, "Glameow"
	basestats 49, 55, 42, 85, 42, 37
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 71// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 191
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_LIMBER, ABILITY_OWN_TEMPO
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_GLAMEOW_TM_DATA_0, SPECIES_GLAMEOW_TM_DATA_1, SPECIES_GLAMEOW_TM_DATA_2, SPECIES_GLAMEOW_TM_DATA_3
	mondexentry SPECIES_GLAMEOW, ""
	mondexclassification SPECIES_GLAMEOW, ""
	mondexheight SPECIES_GLAMEOW, ""
	mondexweight SPECIES_GLAMEOW, ""


mondata SPECIES_PURUGLY, "Purugly"
	basestats 71, 82, 64, 112, 64, 59
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 183// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 191
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_THICK_FAT, ABILITY_OWN_TEMPO
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_PURUGLY_TM_DATA_0, SPECIES_PURUGLY_TM_DATA_1, SPECIES_PURUGLY_TM_DATA_2, SPECIES_PURUGLY_TM_DATA_3
	mondexentry SPECIES_PURUGLY, ""
	mondexclassification SPECIES_PURUGLY, ""
	mondexheight SPECIES_PURUGLY, ""
	mondexweight SPECIES_PURUGLY, ""


mondata SPECIES_CHINGLING, "Chingling"
	basestats 45, 30, 50, 45, 65, 50
	types TYPE_PSYCHIC, TYPE_PSYCHIC
	catchrate 195
	baseexp 74// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 120
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_CHINGLING_TM_DATA_0, SPECIES_CHINGLING_TM_DATA_1, SPECIES_CHINGLING_TM_DATA_2, SPECIES_CHINGLING_TM_DATA_3
	mondexentry SPECIES_CHINGLING, ""
	mondexclassification SPECIES_CHINGLING, ""
	mondexheight SPECIES_CHINGLING, ""
	mondexweight SPECIES_CHINGLING, ""


mondata SPECIES_STUNKY, "Stunky"
	basestats 63, 63, 47, 74, 41, 41
	types TYPE_POISON, TYPE_DARK
	catchrate 195
	baseexp 79// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_STENCH, ABILITY_AFTERMATH
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_STUNKY_TM_DATA_0, SPECIES_STUNKY_TM_DATA_1, SPECIES_STUNKY_TM_DATA_2, SPECIES_STUNKY_TM_DATA_3
	mondexentry SPECIES_STUNKY, ""
	mondexclassification SPECIES_STUNKY, ""
	mondexheight SPECIES_STUNKY, ""
	mondexweight SPECIES_STUNKY, ""


mondata SPECIES_SKUNTANK, "Skuntank"
	basestats 103, 93, 67, 84, 71, 61
	types TYPE_POISON, TYPE_DARK
	catchrate 0
	baseexp 209// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_STENCH, ABILITY_AFTERMATH
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_SKUNTANK_TM_DATA_0, SPECIES_SKUNTANK_TM_DATA_1, SPECIES_SKUNTANK_TM_DATA_2, SPECIES_SKUNTANK_TM_DATA_3
	mondexentry SPECIES_SKUNTANK, ""
	mondexclassification SPECIES_SKUNTANK, ""
	mondexheight SPECIES_SKUNTANK, ""
	mondexweight SPECIES_SKUNTANK, ""


mondata SPECIES_BRONZOR, "Bronzor"
	basestats 57, 24, 86, 23, 24, 86
	types TYPE_STEEL, TYPE_PSYCHIC
	catchrate 195
	baseexp 72// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_LEVITATE, ABILITY_HEATPROOF
	runchance 90
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_BRONZOR_TM_DATA_0, SPECIES_BRONZOR_TM_DATA_1, SPECIES_BRONZOR_TM_DATA_2, SPECIES_BRONZOR_TM_DATA_3
	mondexentry SPECIES_BRONZOR, ""
	mondexclassification SPECIES_BRONZOR, ""
	mondexheight SPECIES_BRONZOR, ""
	mondexweight SPECIES_BRONZOR, ""


mondata SPECIES_BRONZONG, "Bronzong"
	basestats 67, 89, 116, 33, 79, 116
	types TYPE_STEEL, TYPE_PSYCHIC
	catchrate 195
	baseexp 188// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_LEVITATE, ABILITY_HEATPROOF
	runchance 60
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_BRONZONG_TM_DATA_0, SPECIES_BRONZONG_TM_DATA_1, SPECIES_BRONZONG_TM_DATA_2, SPECIES_BRONZONG_TM_DATA_3
	mondexentry SPECIES_BRONZONG, ""
	mondexclassification SPECIES_BRONZONG, ""
	mondexheight SPECIES_BRONZONG, ""
	mondexweight SPECIES_BRONZONG, ""


mondata SPECIES_BONSLY, "Bonsly"
	basestats 50, 80, 95, 10, 10, 45
	types TYPE_ROCK, TYPE_ROCK
	catchrate 195
	baseexp 68// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_STURDY, ABILITY_ROCK_HEAD
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_BONSLY_TM_DATA_0, SPECIES_BONSLY_TM_DATA_1, SPECIES_BONSLY_TM_DATA_2, SPECIES_BONSLY_TM_DATA_3
	mondexentry SPECIES_BONSLY, ""
	mondexclassification SPECIES_BONSLY, ""
	mondexheight SPECIES_BONSLY, ""
	mondexweight SPECIES_BONSLY, ""


mondata SPECIES_MIMEJR, "Mime Jr."
	basestats 20, 25, 45, 60, 70, 90
	types TYPE_PSYCHIC, TYPE_FAIRY
	catchrate 195
	baseexp 78// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_SOUNDPROOF, ABILITY_FILTER
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_MIMEJR_TM_DATA_0, SPECIES_MIMEJR_TM_DATA_1, SPECIES_MIMEJR_TM_DATA_2, SPECIES_MIMEJR_TM_DATA_3
	mondexentry SPECIES_MIMEJR, ""
	mondexclassification SPECIES_MIMEJR, ""
	mondexheight SPECIES_MIMEJR, ""
	mondexweight SPECIES_MIMEJR, ""


mondata SPECIES_HAPPINY, "Happiny"
	basestats 100, 5, 5, 30, 15, 65
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 255// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 254
	eggcycles 40
	basefriendship 140
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_NATURAL_CURE, ABILITY_SERENE_GRACE
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_HAPPINY_TM_DATA_0, SPECIES_HAPPINY_TM_DATA_1, SPECIES_HAPPINY_TM_DATA_2, SPECIES_HAPPINY_TM_DATA_3
	mondexentry SPECIES_HAPPINY, ""
	mondexclassification SPECIES_HAPPINY, ""
	mondexheight SPECIES_HAPPINY, ""
	mondexweight SPECIES_HAPPINY, ""


mondata SPECIES_CHATOT, "Chatot"
	basestats 76, 65, 45, 91, 92, 42
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 107// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 35
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
	abilities ABILITY_KEEN_EYE, ABILITY_TANGLED_FEET
	runchance 0
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_CHATOT_TM_DATA_0, SPECIES_CHATOT_TM_DATA_1, SPECIES_CHATOT_TM_DATA_2, SPECIES_CHATOT_TM_DATA_3
	mondexentry SPECIES_CHATOT, ""
	mondexclassification SPECIES_CHATOT, ""
	mondexheight SPECIES_CHATOT, ""
	mondexweight SPECIES_CHATOT, ""


mondata SPECIES_SPIRITOMB, "Spiritomb"
	basestats 50, 92, 108, 35, 92, 108
	types TYPE_GHOST, TYPE_DARK
	catchrate 0
	baseexp 168// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 30
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_PRESSURE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_SPIRITOMB_TM_DATA_0, SPECIES_SPIRITOMB_TM_DATA_1, SPECIES_SPIRITOMB_TM_DATA_2, SPECIES_SPIRITOMB_TM_DATA_3
	mondexentry SPECIES_SPIRITOMB, ""
	mondexclassification SPECIES_SPIRITOMB, ""
	mondexheight SPECIES_SPIRITOMB, ""
	mondexweight SPECIES_SPIRITOMB, ""


mondata SPECIES_GIBLE, "Gible"
	basestats 58, 70, 45, 42, 40, 45
	types TYPE_DRAGON, TYPE_GROUND
	catchrate 195
	baseexp 67// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 40
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
	abilities ABILITY_SAND_VEIL, ABILITY_NONE
	runchance 90
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_GIBLE_TM_DATA_0, SPECIES_GIBLE_TM_DATA_1, SPECIES_GIBLE_TM_DATA_2, SPECIES_GIBLE_TM_DATA_3
	mondexentry SPECIES_GIBLE, ""
	mondexclassification SPECIES_GIBLE, ""
	mondexheight SPECIES_GIBLE, ""
	mondexweight SPECIES_GIBLE, ""


mondata SPECIES_GABITE, "Gabite"
	basestats 68, 90, 65, 82, 50, 55
	types TYPE_DRAGON, TYPE_GROUND
	catchrate 195
	baseexp 144// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 40
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
	abilities ABILITY_SAND_VEIL, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_GABITE_TM_DATA_0, SPECIES_GABITE_TM_DATA_1, SPECIES_GABITE_TM_DATA_2, SPECIES_GABITE_TM_DATA_3
	mondexentry SPECIES_GABITE, ""
	mondexclassification SPECIES_GABITE, ""
	mondexheight SPECIES_GABITE, ""
	mondexweight SPECIES_GABITE, ""


mondata SPECIES_GARCHOMP, "Garchomp"
	basestats 108, 130, 95, 102, 80, 85
	types TYPE_DRAGON, TYPE_GROUND
	catchrate 1
	baseexp 218// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 40
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
	abilities ABILITY_SAND_VEIL, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_GARCHOMP_TM_DATA_0, SPECIES_GARCHOMP_TM_DATA_1, SPECIES_GARCHOMP_TM_DATA_2, SPECIES_GARCHOMP_TM_DATA_3
	mondexentry SPECIES_GARCHOMP, ""
	mondexclassification SPECIES_GARCHOMP, ""
	mondexheight SPECIES_GARCHOMP, ""
	mondexweight SPECIES_GARCHOMP, ""


mondata SPECIES_MUNCHLAX, "Munchlax"
	basestats 135, 85, 40, 5, 40, 85
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 94// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 40
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_CUTE_CHARM, ABILITY_THICK_FAT
	runchance 0
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_MUNCHLAX_TM_DATA_0, SPECIES_MUNCHLAX_TM_DATA_1, SPECIES_MUNCHLAX_TM_DATA_2, SPECIES_MUNCHLAX_TM_DATA_3
	mondexentry SPECIES_MUNCHLAX, ""
	mondexclassification SPECIES_MUNCHLAX, ""
	mondexheight SPECIES_MUNCHLAX, ""
	mondexweight SPECIES_MUNCHLAX, ""


mondata SPECIES_RIOLU, "Riolu"
	basestats 40, 70, 40, 60, 35, 40
	types TYPE_FIGHTING, TYPE_FIGHTING
	catchrate 195
	baseexp 72// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_STEADFAST, ABILITY_INNER_FOCUS
	runchance 120
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_RIOLU_TM_DATA_0, SPECIES_RIOLU_TM_DATA_1, SPECIES_RIOLU_TM_DATA_2, SPECIES_RIOLU_TM_DATA_3
	mondexentry SPECIES_RIOLU, ""
	mondexclassification SPECIES_RIOLU, ""
	mondexheight SPECIES_RIOLU, ""
	mondexweight SPECIES_RIOLU, ""


mondata SPECIES_LUCARIO, "Lucario"
	basestats 70, 110, 70, 90, 115, 70
	types TYPE_FIGHTING, TYPE_STEEL
	catchrate 195
	baseexp 204// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_STEADFAST, ABILITY_INNER_FOCUS
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_LUCARIO_TM_DATA_0, SPECIES_LUCARIO_TM_DATA_1, SPECIES_LUCARIO_TM_DATA_2, SPECIES_LUCARIO_TM_DATA_3
	mondexentry SPECIES_LUCARIO, ""
	mondexclassification SPECIES_LUCARIO, ""
	mondexheight SPECIES_LUCARIO, ""
	mondexweight SPECIES_LUCARIO, ""


mondata SPECIES_HIPPOPOTAS, "Hippopotas"
	basestats 68, 72, 78, 32, 38, 42
	types TYPE_GROUND, TYPE_GROUND
	catchrate 195
	baseexp 95// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 30
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_SAND_STREAM, ABILITY_NONE
	runchance 60
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_HIPPOPOTAS_TM_DATA_0, SPECIES_HIPPOPOTAS_TM_DATA_1, SPECIES_HIPPOPOTAS_TM_DATA_2, SPECIES_HIPPOPOTAS_TM_DATA_3
	mondexentry SPECIES_HIPPOPOTAS, ""
	mondexclassification SPECIES_HIPPOPOTAS, ""
	mondexheight SPECIES_HIPPOPOTAS, ""
	mondexweight SPECIES_HIPPOPOTAS, ""


mondata SPECIES_HIPPOWDON, "Hippowdon"
	basestats 108, 112, 118, 47, 68, 72
	types TYPE_GROUND, TYPE_GROUND
	catchrate 195
	baseexp 198// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 30
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_SAND_STREAM, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_HIPPOWDON_TM_DATA_0, SPECIES_HIPPOWDON_TM_DATA_1, SPECIES_HIPPOWDON_TM_DATA_2, SPECIES_HIPPOWDON_TM_DATA_3
	mondexentry SPECIES_HIPPOWDON, ""
	mondexclassification SPECIES_HIPPOWDON, ""
	mondexheight SPECIES_HIPPOWDON, ""
	mondexweight SPECIES_HIPPOWDON, ""


mondata SPECIES_SKORUPI, "Skorupi"
	basestats 40, 50, 90, 65, 30, 55
	types TYPE_POISON, TYPE_BUG
	catchrate 195
	baseexp 114// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_BUG, EGG_GROUP_WATER_3
	abilities ABILITY_BATTLE_ARMOR, ABILITY_SNIPER
	runchance 120
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_SKORUPI_TM_DATA_0, SPECIES_SKORUPI_TM_DATA_1, SPECIES_SKORUPI_TM_DATA_2, SPECIES_SKORUPI_TM_DATA_3
	mondexentry SPECIES_SKORUPI, ""
	mondexclassification SPECIES_SKORUPI, ""
	mondexheight SPECIES_SKORUPI, ""
	mondexweight SPECIES_SKORUPI, ""


mondata SPECIES_DRAPION, "Drapion"
	basestats 70, 90, 110, 95, 60, 75
	types TYPE_POISON, TYPE_DARK
	catchrate 195
	baseexp 204// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_BUG, EGG_GROUP_WATER_3
	abilities ABILITY_BATTLE_ARMOR, ABILITY_SNIPER
	runchance 60
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_DRAPION_TM_DATA_0, SPECIES_DRAPION_TM_DATA_1, SPECIES_DRAPION_TM_DATA_2, SPECIES_DRAPION_TM_DATA_3
	mondexentry SPECIES_DRAPION, ""
	mondexclassification SPECIES_DRAPION, ""
	mondexheight SPECIES_DRAPION, ""
	mondexweight SPECIES_DRAPION, ""


mondata SPECIES_CROAGUNK, "Croagunk"
	basestats 48, 61, 40, 50, 61, 40
	types TYPE_POISON, TYPE_FIGHTING
	catchrate 195
	baseexp 83// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 10
	basefriendship 100
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_ANTICIPATION, ABILITY_DRY_SKIN
	runchance 150
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_CROAGUNK_TM_DATA_0, SPECIES_CROAGUNK_TM_DATA_1, SPECIES_CROAGUNK_TM_DATA_2, SPECIES_CROAGUNK_TM_DATA_3
	mondexentry SPECIES_CROAGUNK, ""
	mondexclassification SPECIES_CROAGUNK, ""
	mondexheight SPECIES_CROAGUNK, ""
	mondexweight SPECIES_CROAGUNK, ""


mondata SPECIES_TOXICROAK, "Toxicroak"
	basestats 83, 106, 65, 85, 86, 65
	types TYPE_POISON, TYPE_FIGHTING
	catchrate 195
	baseexp 181// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_ANTICIPATION, ABILITY_DRY_SKIN
	runchance 120
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_TOXICROAK_TM_DATA_0, SPECIES_TOXICROAK_TM_DATA_1, SPECIES_TOXICROAK_TM_DATA_2, SPECIES_TOXICROAK_TM_DATA_3
	mondexentry SPECIES_TOXICROAK, ""
	mondexclassification SPECIES_TOXICROAK, ""
	mondexheight SPECIES_TOXICROAK, ""
	mondexweight SPECIES_TOXICROAK, ""


mondata SPECIES_CARNIVINE, "Carnivine"
	basestats 74, 100, 72, 46, 90, 72
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 164// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 60
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_CARNIVINE_TM_DATA_0, SPECIES_CARNIVINE_TM_DATA_1, SPECIES_CARNIVINE_TM_DATA_2, SPECIES_CARNIVINE_TM_DATA_3
	mondexentry SPECIES_CARNIVINE, ""
	mondexclassification SPECIES_CARNIVINE, ""
	mondexheight SPECIES_CARNIVINE, ""
	mondexweight SPECIES_CARNIVINE, ""


mondata SPECIES_FINNEON, "Finneon"
	basestats 49, 49, 56, 66, 49, 61
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 90// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
	abilities ABILITY_SWIFT_SWIM, ABILITY_STORM_DRAIN
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_FINNEON_TM_DATA_0, SPECIES_FINNEON_TM_DATA_1, SPECIES_FINNEON_TM_DATA_2, SPECIES_FINNEON_TM_DATA_3
	mondexentry SPECIES_FINNEON, ""
	mondexclassification SPECIES_FINNEON, ""
	mondexheight SPECIES_FINNEON, ""
	mondexweight SPECIES_FINNEON, ""


mondata SPECIES_LUMINEON, "Lumineon"
	basestats 69, 69, 76, 91, 69, 86
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 156// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_ERRATIC
	egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
	abilities ABILITY_SWIFT_SWIM, ABILITY_STORM_DRAIN
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_LUMINEON_TM_DATA_0, SPECIES_LUMINEON_TM_DATA_1, SPECIES_LUMINEON_TM_DATA_2, SPECIES_LUMINEON_TM_DATA_3
	mondexentry SPECIES_LUMINEON, ""
	mondexclassification SPECIES_LUMINEON, ""
	mondexheight SPECIES_LUMINEON, ""
	mondexweight SPECIES_LUMINEON, ""


mondata SPECIES_MANTYKE, "Mantyke"
	basestats 45, 20, 50, 50, 60, 120
	types TYPE_WATER, TYPE_FLYING
	catchrate 195
	baseexp 108// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_SWIFT_SWIM, ABILITY_WATER_ABSORB
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_MANTYKE_TM_DATA_0, SPECIES_MANTYKE_TM_DATA_1, SPECIES_MANTYKE_TM_DATA_2, SPECIES_MANTYKE_TM_DATA_3
	mondexentry SPECIES_MANTYKE, ""
	mondexclassification SPECIES_MANTYKE, ""
	mondexheight SPECIES_MANTYKE, ""
	mondexweight SPECIES_MANTYKE, ""


mondata SPECIES_SNOVER, "Snover"
	basestats 60, 62, 50, 40, 62, 60
	types TYPE_GRASS, TYPE_ICE
	catchrate 195
	baseexp 131// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
	abilities ABILITY_SNOW_WARNING, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_SNOVER_TM_DATA_0, SPECIES_SNOVER_TM_DATA_1, SPECIES_SNOVER_TM_DATA_2, SPECIES_SNOVER_TM_DATA_3
	mondexentry SPECIES_SNOVER, ""
	mondexclassification SPECIES_SNOVER, ""
	mondexheight SPECIES_SNOVER, ""
	mondexweight SPECIES_SNOVER, ""


mondata SPECIES_ABOMASNOW, "Abomasnow"
	basestats 90, 92, 75, 60, 92, 85
	types TYPE_GRASS, TYPE_ICE
	catchrate 195
	baseexp 214// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
	abilities ABILITY_SNOW_WARNING, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_ABOMASNOW_TM_DATA_0, SPECIES_ABOMASNOW_TM_DATA_1, SPECIES_ABOMASNOW_TM_DATA_2, SPECIES_ABOMASNOW_TM_DATA_3
	mondexentry SPECIES_ABOMASNOW, ""
	mondexclassification SPECIES_ABOMASNOW, ""
	mondexheight SPECIES_ABOMASNOW, ""
	mondexweight SPECIES_ABOMASNOW, ""


mondata SPECIES_WEAVILE, "Weavile"
	basestats 70, 120, 65, 125, 45, 85
	types TYPE_DARK, TYPE_ICE
	catchrate 195
	baseexp 199// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 35
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_PRESSURE, ABILITY_PRESSURE
	runchance 0
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_WEAVILE_TM_DATA_0, SPECIES_WEAVILE_TM_DATA_1, SPECIES_WEAVILE_TM_DATA_2, SPECIES_WEAVILE_TM_DATA_3
	mondexentry SPECIES_WEAVILE, ""
	mondexclassification SPECIES_WEAVILE, ""
	mondexheight SPECIES_WEAVILE, ""
	mondexweight SPECIES_WEAVILE, ""


mondata SPECIES_MAGNEZONE, "Magnezone"
	basestats 70, 70, 115, 60, 130, 90
	types TYPE_ELECTRIC, TYPE_STEEL
	catchrate 195
	baseexp 211// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_MAGNET_PULL, ABILITY_PRESSURE
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_MAGNEZONE_TM_DATA_0, SPECIES_MAGNEZONE_TM_DATA_1, SPECIES_MAGNEZONE_TM_DATA_2, SPECIES_MAGNEZONE_TM_DATA_3
	mondexentry SPECIES_MAGNEZONE, ""
	mondexclassification SPECIES_MAGNEZONE, ""
	mondexheight SPECIES_MAGNEZONE, ""
	mondexweight SPECIES_MAGNEZONE, ""


mondata SPECIES_LICKILICKY, "Lickilicky"
	basestats 110, 85, 95, 50, 80, 95
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 193// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
	abilities ABILITY_OWN_TEMPO, ABILITY_OBLIVIOUS
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_LICKILICKY_TM_DATA_0, SPECIES_LICKILICKY_TM_DATA_1, SPECIES_LICKILICKY_TM_DATA_2, SPECIES_LICKILICKY_TM_DATA_3
	mondexentry SPECIES_LICKILICKY, ""
	mondexclassification SPECIES_LICKILICKY, ""
	mondexheight SPECIES_LICKILICKY, ""
	mondexweight SPECIES_LICKILICKY, ""


mondata SPECIES_RHYPERIOR, "Rhyperior"
	basestats 115, 140, 130, 40, 55, 55
	types TYPE_GROUND, TYPE_ROCK
	catchrate 195
	baseexp 217// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
	abilities ABILITY_LIGHTNING_ROD, ABILITY_SOLID_ROCK
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_RHYPERIOR_TM_DATA_0, SPECIES_RHYPERIOR_TM_DATA_1, SPECIES_RHYPERIOR_TM_DATA_2, SPECIES_RHYPERIOR_TM_DATA_3
	mondexentry SPECIES_RHYPERIOR, ""
	mondexclassification SPECIES_RHYPERIOR, ""
	mondexheight SPECIES_RHYPERIOR, ""
	mondexweight SPECIES_RHYPERIOR, ""


mondata SPECIES_TANGROWTH, "Tangrowth"
	basestats 100, 100, 125, 50, 110, 50
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 211// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
	abilities ABILITY_CHLOROPHYLL, ABILITY_LEAF_GUARD
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_TANGROWTH_TM_DATA_0, SPECIES_TANGROWTH_TM_DATA_1, SPECIES_TANGROWTH_TM_DATA_2, SPECIES_TANGROWTH_TM_DATA_3
	mondexentry SPECIES_TANGROWTH, ""
	mondexclassification SPECIES_TANGROWTH, ""
	mondexheight SPECIES_TANGROWTH, ""
	mondexweight SPECIES_TANGROWTH, ""


mondata SPECIES_ELECTIVIRE, "Electivire"
	basestats 75, 123, 67, 95, 95, 85
	types TYPE_ELECTRIC, TYPE_ELECTRIC
	catchrate 195
	baseexp 199// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 63
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_MOTOR_DRIVE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_ELECTIVIRE_TM_DATA_0, SPECIES_ELECTIVIRE_TM_DATA_1, SPECIES_ELECTIVIRE_TM_DATA_2, SPECIES_ELECTIVIRE_TM_DATA_3
	mondexentry SPECIES_ELECTIVIRE, ""
	mondexclassification SPECIES_ELECTIVIRE, ""
	mondexheight SPECIES_ELECTIVIRE, ""
	mondexweight SPECIES_ELECTIVIRE, ""


mondata SPECIES_MAGMORTAR, "Magmortar"
	basestats 75, 95, 67, 83, 125, 95
	types TYPE_FIRE, TYPE_FIRE
	catchrate 195
	baseexp 199// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 63
	eggcycles 25
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
	abilities ABILITY_FLAME_BODY, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_RED, 1
	tmdata SPECIES_MAGMORTAR_TM_DATA_0, SPECIES_MAGMORTAR_TM_DATA_1, SPECIES_MAGMORTAR_TM_DATA_2, SPECIES_MAGMORTAR_TM_DATA_3
	mondexentry SPECIES_MAGMORTAR, ""
	mondexclassification SPECIES_MAGMORTAR, ""
	mondexheight SPECIES_MAGMORTAR, ""
	mondexweight SPECIES_MAGMORTAR, ""


mondata SPECIES_TOGEKISS, "Togekiss"
	basestats 85, 50, 95, 80, 120, 115
	types TYPE_NORMAL, TYPE_FLYING
	catchrate 195
	baseexp 220// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 10
	basefriendship 70
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_FLYING, EGG_GROUP_FAIRY
	abilities ABILITY_HUSTLE, ABILITY_SERENE_GRACE
	runchance 0
	colorflip BODY_COLOR_GRAY, 1
	tmdata SPECIES_TOGEKISS_TM_DATA_0, SPECIES_TOGEKISS_TM_DATA_1, SPECIES_TOGEKISS_TM_DATA_2, SPECIES_TOGEKISS_TM_DATA_3
	mondexentry SPECIES_TOGEKISS, ""
	mondexclassification SPECIES_TOGEKISS, ""
	mondexheight SPECIES_TOGEKISS, ""
	mondexweight SPECIES_TOGEKISS, ""


mondata SPECIES_YANMEGA, "Yanmega"
	basestats 86, 76, 86, 95, 116, 56
	types TYPE_BUG, TYPE_FLYING
	catchrate 195
	baseexp 198// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_SPEED_BOOST, ABILITY_TINTED_LENS
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_YANMEGA_TM_DATA_0, SPECIES_YANMEGA_TM_DATA_1, SPECIES_YANMEGA_TM_DATA_2, SPECIES_YANMEGA_TM_DATA_3
	mondexentry SPECIES_YANMEGA, ""
	mondexclassification SPECIES_YANMEGA, ""
	mondexheight SPECIES_YANMEGA, ""
	mondexweight SPECIES_YANMEGA, ""


mondata SPECIES_LEAFEON, "Leafeon"
	basestats 65, 110, 130, 95, 60, 65
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 196// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 35
	basefriendship 35
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_LEAF_GUARD, ABILITY_LEAF_GUARD
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_LEAFEON_TM_DATA_0, SPECIES_LEAFEON_TM_DATA_1, SPECIES_LEAFEON_TM_DATA_2, SPECIES_LEAFEON_TM_DATA_3
	mondexentry SPECIES_LEAFEON, ""
	mondexclassification SPECIES_LEAFEON, ""
	mondexheight SPECIES_LEAFEON, ""
	mondexweight SPECIES_LEAFEON, ""


mondata SPECIES_GLACEON, "Glaceon"
	basestats 65, 60, 110, 65, 130, 95
	types TYPE_ICE, TYPE_ICE
	catchrate 195
	baseexp 196// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 31
	eggcycles 35
	basefriendship 35
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_SNOW_CLOAK, ABILITY_SNOW_CLOAK
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_GLACEON_TM_DATA_0, SPECIES_GLACEON_TM_DATA_1, SPECIES_GLACEON_TM_DATA_2, SPECIES_GLACEON_TM_DATA_3
	mondexentry SPECIES_GLACEON, ""
	mondexclassification SPECIES_GLACEON, ""
	mondexheight SPECIES_GLACEON, ""
	mondexweight SPECIES_GLACEON, ""


mondata SPECIES_GLISCOR, "Gliscor"
	basestats 75, 95, 125, 95, 45, 75
	types TYPE_GROUND, TYPE_FLYING
	catchrate 195
	baseexp 192// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
	abilities ABILITY_HYPER_CUTTER, ABILITY_SAND_VEIL
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_GLISCOR_TM_DATA_0, SPECIES_GLISCOR_TM_DATA_1, SPECIES_GLISCOR_TM_DATA_2, SPECIES_GLISCOR_TM_DATA_3
	mondexentry SPECIES_GLISCOR, ""
	mondexclassification SPECIES_GLISCOR, ""
	mondexheight SPECIES_GLISCOR, ""
	mondexweight SPECIES_GLISCOR, ""


mondata SPECIES_MAMOSWINE, "Mamoswine"
	basestats 110, 130, 80, 80, 70, 60
	types TYPE_ICE, TYPE_GROUND
	catchrate 0
	baseexp 207// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
	abilities ABILITY_OBLIVIOUS, ABILITY_SNOW_CLOAK
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_MAMOSWINE_TM_DATA_0, SPECIES_MAMOSWINE_TM_DATA_1, SPECIES_MAMOSWINE_TM_DATA_2, SPECIES_MAMOSWINE_TM_DATA_3
	mondexentry SPECIES_MAMOSWINE, ""
	mondexclassification SPECIES_MAMOSWINE, ""
	mondexheight SPECIES_MAMOSWINE, ""
	mondexweight SPECIES_MAMOSWINE, ""


mondata SPECIES_PORYGON_Z, "Porygon_Z"
	basestats 85, 80, 70, 90, 135, 75
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 185// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_ADAPTABILITY, ABILITY_DOWNLOAD
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_PORYGON_Z_TM_DATA_0, SPECIES_PORYGON_Z_TM_DATA_1, SPECIES_PORYGON_Z_TM_DATA_2, SPECIES_PORYGON_Z_TM_DATA_3
	mondexentry SPECIES_PORYGON_Z, ""
	mondexclassification SPECIES_PORYGON_Z, ""
	mondexheight SPECIES_PORYGON_Z, ""
	mondexweight SPECIES_PORYGON_Z, ""


mondata SPECIES_GALLADE, "Gallade"
	basestats 68, 125, 65, 80, 65, 115
	types TYPE_PSYCHIC, TYPE_FIGHTING
	catchrate 195
	baseexp 208// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 0
	eggcycles 20
	basefriendship 35
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_STEADFAST, ABILITY_STEADFAST
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_GALLADE_TM_DATA_0, SPECIES_GALLADE_TM_DATA_1, SPECIES_GALLADE_TM_DATA_2, SPECIES_GALLADE_TM_DATA_3
	mondexentry SPECIES_GALLADE, ""
	mondexclassification SPECIES_GALLADE, ""
	mondexheight SPECIES_GALLADE, ""
	mondexweight SPECIES_GALLADE, ""


mondata SPECIES_PROBOPASS, "Probopass"
	basestats 60, 55, 145, 40, 75, 150
	types TYPE_ROCK, TYPE_STEEL
	catchrate 195
	baseexp 198// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
	abilities ABILITY_PRESSURE, ABILITY_MAGNET_PULL
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_PROBOPASS_TM_DATA_0, SPECIES_PROBOPASS_TM_DATA_1, SPECIES_PROBOPASS_TM_DATA_2, SPECIES_PROBOPASS_TM_DATA_3
	mondexentry SPECIES_PROBOPASS, ""
	mondexclassification SPECIES_PROBOPASS, ""
	mondexheight SPECIES_PROBOPASS, ""
	mondexweight SPECIES_PROBOPASS, ""


mondata SPECIES_DUSKNOIR, "Dusknoir"
	basestats 45, 100, 135, 45, 65, 135
	types TYPE_GHOST, TYPE_GHOST
	catchrate 195
	baseexp 210// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 25
	basefriendship 35
	growthrate GROWTH_FAST
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_PRESSURE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_DUSKNOIR_TM_DATA_0, SPECIES_DUSKNOIR_TM_DATA_1, SPECIES_DUSKNOIR_TM_DATA_2, SPECIES_DUSKNOIR_TM_DATA_3
	mondexentry SPECIES_DUSKNOIR, ""
	mondexclassification SPECIES_DUSKNOIR, ""
	mondexheight SPECIES_DUSKNOIR, ""
	mondexweight SPECIES_DUSKNOIR, ""


mondata SPECIES_FROSLASS, "Froslass"
	basestats 70, 80, 70, 110, 80, 70
	types TYPE_ICE, TYPE_GHOST
	catchrate 0
	baseexp 187// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 254
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_FAIRY, EGG_GROUP_MINERAL
	abilities ABILITY_SNOW_CLOAK, ABILITY_SNOW_CLOAK
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_FROSLASS_TM_DATA_0, SPECIES_FROSLASS_TM_DATA_1, SPECIES_FROSLASS_TM_DATA_2, SPECIES_FROSLASS_TM_DATA_3
	mondexentry SPECIES_FROSLASS, ""
	mondexclassification SPECIES_FROSLASS, ""
	mondexheight SPECIES_FROSLASS, ""
	mondexweight SPECIES_FROSLASS, ""


mondata SPECIES_ROTOM, "Rotom"
	basestats 50, 50, 77, 91, 95, 77
	types TYPE_ELECTRIC, TYPE_GHOST
	catchrate 0
	baseexp 132// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 20
	basefriendship 70
	growthrate GROWTH_MEDIUM_FAST
	egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_RED, 0
	tmdata SPECIES_ROTOM_TM_DATA_0, SPECIES_ROTOM_TM_DATA_1, SPECIES_ROTOM_TM_DATA_2, SPECIES_ROTOM_TM_DATA_3
	mondexentry SPECIES_ROTOM, ""
	mondexclassification SPECIES_ROTOM, ""
	mondexheight SPECIES_ROTOM, ""
	mondexweight SPECIES_ROTOM, ""


mondata SPECIES_UXIE, "Uxie"
	basestats 75, 75, 130, 95, 75, 130
	types TYPE_ELECTRIC, TYPE_FAIRY
	catchrate 195
	baseexp 210// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 80
	basefriendship 140
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_UXIE_TM_DATA_0, SPECIES_UXIE_TM_DATA_1, SPECIES_UXIE_TM_DATA_2, SPECIES_UXIE_TM_DATA_3
	mondexentry SPECIES_UXIE, ""
	mondexclassification SPECIES_UXIE, ""
	mondexheight SPECIES_UXIE, ""
	mondexweight SPECIES_UXIE, ""


mondata SPECIES_MESPRIT, "Mesprit"
	basestats 80, 105, 105, 80, 105, 105
	types TYPE_PSYCHIC, TYPE_FAIRY
	catchrate 195
	baseexp 210// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 80
	basefriendship 140
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_PINK, 0
	tmdata SPECIES_MESPRIT_TM_DATA_0, SPECIES_MESPRIT_TM_DATA_1, SPECIES_MESPRIT_TM_DATA_2, SPECIES_MESPRIT_TM_DATA_3
	mondexentry SPECIES_MESPRIT, ""
	mondexclassification SPECIES_MESPRIT, ""
	mondexheight SPECIES_MESPRIT, ""
	mondexweight SPECIES_MESPRIT, ""


mondata SPECIES_AZELF, "Azelf"
	basestats 75, 125, 70, 115, 125, 70
	types TYPE_WATER, TYPE_FAIRY
	catchrate 195
	baseexp 210// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 80
	basefriendship 140
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_AZELF_TM_DATA_0, SPECIES_AZELF_TM_DATA_1, SPECIES_AZELF_TM_DATA_2, SPECIES_AZELF_TM_DATA_3
	mondexentry SPECIES_AZELF, ""
	mondexclassification SPECIES_AZELF, ""
	mondexheight SPECIES_AZELF, ""
	mondexweight SPECIES_AZELF, ""


mondata SPECIES_DIALGA, "Dialga"
	basestats 100, 120, 120, 90, 150, 100
	types TYPE_STEEL, TYPE_DRAGON
	catchrate 195
	baseexp 220// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 120
	basefriendship 0
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_PRESSURE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_DIALGA_TM_DATA_0, SPECIES_DIALGA_TM_DATA_1, SPECIES_DIALGA_TM_DATA_2, SPECIES_DIALGA_TM_DATA_3
	mondexentry SPECIES_DIALGA, ""
	mondexclassification SPECIES_DIALGA, ""
	mondexheight SPECIES_DIALGA, ""
	mondexweight SPECIES_DIALGA, ""


mondata SPECIES_PALKIA, "Palkia"
	basestats 90, 120, 100, 100, 150, 120
	types TYPE_WATER, TYPE_DRAGON
	catchrate 195
	baseexp 220// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 120
	basefriendship 0
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_PRESSURE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_PURPLE, 0
	tmdata SPECIES_PALKIA_TM_DATA_0, SPECIES_PALKIA_TM_DATA_1, SPECIES_PALKIA_TM_DATA_2, SPECIES_PALKIA_TM_DATA_3
	mondexentry SPECIES_PALKIA, ""
	mondexclassification SPECIES_PALKIA, ""
	mondexheight SPECIES_PALKIA, ""
	mondexweight SPECIES_PALKIA, ""


mondata SPECIES_HEATRAN, "Heatran"
	basestats 91, 90, 106, 77, 130, 106
	types TYPE_FIRE, TYPE_STEEL
	catchrate 195
	baseexp 215// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 127
	eggcycles 10
	basefriendship 100
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_FLASH_FIRE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BROWN, 0
	tmdata SPECIES_HEATRAN_TM_DATA_0, SPECIES_HEATRAN_TM_DATA_1, SPECIES_HEATRAN_TM_DATA_2, SPECIES_HEATRAN_TM_DATA_3
	mondexentry SPECIES_HEATRAN, ""
	mondexclassification SPECIES_HEATRAN, ""
	mondexheight SPECIES_HEATRAN, ""
	mondexweight SPECIES_HEATRAN, ""


mondata SPECIES_REGIGIGAS, "Regigigas"
	basestats 110, 160, 110, 100, 80, 110
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 220// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 120
	basefriendship 0
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_SLOW_START, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_WHITE, 0
	tmdata SPECIES_REGIGIGAS_TM_DATA_0, SPECIES_REGIGIGAS_TM_DATA_1, SPECIES_REGIGIGAS_TM_DATA_2, SPECIES_REGIGIGAS_TM_DATA_3
	mondexentry SPECIES_REGIGIGAS, ""
	mondexclassification SPECIES_REGIGIGAS, ""
	mondexheight SPECIES_REGIGIGAS, ""
	mondexweight SPECIES_REGIGIGAS, ""


mondata SPECIES_GIRATINA, "Giratina"
	basestats 150, 100, 120, 90, 100, 120
	types TYPE_GHOST, TYPE_DRAGON
	catchrate 195
	baseexp 220// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 120
	basefriendship 0
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_PRESSURE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_GIRATINA_TM_DATA_0, SPECIES_GIRATINA_TM_DATA_1, SPECIES_GIRATINA_TM_DATA_2, SPECIES_GIRATINA_TM_DATA_3
	mondexentry SPECIES_GIRATINA, ""
	mondexclassification SPECIES_GIRATINA, ""
	mondexheight SPECIES_GIRATINA, ""
	mondexweight SPECIES_GIRATINA, ""


mondata SPECIES_CRESSELIA, "Cresselia"
	basestats 120, 70, 120, 85, 75, 130
	types TYPE_PSYCHIC, TYPE_PSYCHIC
	catchrate 195
	baseexp 210// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 254
	eggcycles 120
	basefriendship 100
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_LEVITATE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_YELLOW, 0
	tmdata SPECIES_CRESSELIA_TM_DATA_0, SPECIES_CRESSELIA_TM_DATA_1, SPECIES_CRESSELIA_TM_DATA_2, SPECIES_CRESSELIA_TM_DATA_3
	mondexentry SPECIES_CRESSELIA, ""
	mondexclassification SPECIES_CRESSELIA, ""
	mondexheight SPECIES_CRESSELIA, ""
	mondexweight SPECIES_CRESSELIA, ""


mondata SPECIES_PHIONE, "Phione"
	basestats 80, 80, 80, 80, 80, 80
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 165// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 40
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FAIRY
	abilities ABILITY_HYDRATION, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_PHIONE_TM_DATA_0, SPECIES_PHIONE_TM_DATA_1, SPECIES_PHIONE_TM_DATA_2, SPECIES_PHIONE_TM_DATA_3
	mondexentry SPECIES_PHIONE, ""
	mondexclassification SPECIES_PHIONE, ""
	mondexheight SPECIES_PHIONE, ""
	mondexweight SPECIES_PHIONE, ""


mondata SPECIES_MANAPHY, "Manaphy"
	basestats 100, 100, 100, 100, 100, 100
	types TYPE_WATER, TYPE_WATER
	catchrate 195
	baseexp 215// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 10
	basefriendship 70
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_WATER_1, EGG_GROUP_FAIRY
	abilities ABILITY_HYDRATION, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLUE, 0
	tmdata SPECIES_MANAPHY_TM_DATA_0, SPECIES_MANAPHY_TM_DATA_1, SPECIES_MANAPHY_TM_DATA_2, SPECIES_MANAPHY_TM_DATA_3
	mondexentry SPECIES_MANAPHY, ""
	mondexclassification SPECIES_MANAPHY, ""
	mondexheight SPECIES_MANAPHY, ""
	mondexweight SPECIES_MANAPHY, ""


mondata SPECIES_DARKRAI, "Darkrai"
	basestats 70, 90, 90, 125, 135, 90
	types TYPE_DARK, TYPE_DARK
	catchrate 195
	baseexp 210// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 120
	basefriendship 0
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_BAD_DREAMS, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_BLACK, 0
	tmdata SPECIES_DARKRAI_TM_DATA_0, SPECIES_DARKRAI_TM_DATA_1, SPECIES_DARKRAI_TM_DATA_2, SPECIES_DARKRAI_TM_DATA_3
	mondexentry SPECIES_DARKRAI, ""
	mondexclassification SPECIES_DARKRAI, ""
	mondexheight SPECIES_DARKRAI, ""
	mondexweight SPECIES_DARKRAI, ""


mondata SPECIES_SHAYMIN, "Shaymin"
	basestats 100, 100, 100, 100, 100, 100
	types TYPE_GRASS, TYPE_GRASS
	catchrate 195
	baseexp 64// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 120
	basefriendship 100
	growthrate GROWTH_MEDIUM_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_SAP_SIPPER, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GREEN, 0
	tmdata SPECIES_SHAYMIN_TM_DATA_0, SPECIES_SHAYMIN_TM_DATA_1, SPECIES_SHAYMIN_TM_DATA_2, SPECIES_SHAYMIN_TM_DATA_3
	mondexentry SPECIES_SHAYMIN, ""
	mondexclassification SPECIES_SHAYMIN, ""
	mondexheight SPECIES_SHAYMIN, ""
	mondexweight SPECIES_SHAYMIN, ""


mondata SPECIES_ARCEUS, "Arceus"
	basestats 120, 120, 120, 120, 120, 120
	types TYPE_NORMAL, TYPE_NORMAL
	catchrate 195
	baseexp 255// defined in baseexp.s
	evyields 0, 0, 0, 0, 0, 0
	items ITEM_NONE, ITEM_NONE
	genderratio 255
	eggcycles 120
	basefriendship 0
	growthrate GROWTH_SLOW
	egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
	abilities ABILITY_MULTITYPE, ABILITY_NONE
	runchance 0
	colorflip BODY_COLOR_GRAY, 0
	tmdata SPECIES_ARCEUS_TM_DATA_0, SPECIES_ARCEUS_TM_DATA_1, SPECIES_ARCEUS_TM_DATA_2, SPECIES_ARCEUS_TM_DATA_3
	mondexentry SPECIES_ARCEUS, ""
	mondexclassification SPECIES_ARCEUS, ""
	mondexheight SPECIES_ARCEUS, ""
	mondexweight SPECIES_ARCEUS, ""


mondata SPECIES_EGG, "Egg"
    basestats 10, 10, 10, 10, 10, 10
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 3
    baseexp 255
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_EGG_TM_DATA_0, SPECIES_EGG_TM_DATA_1, SPECIES_EGG_TM_DATA_2, SPECIES_EGG_TM_DATA_3
    mondexentry SPECIES_EGG, "-----"
    mondexclassification SPECIES_EGG, "-----"
    mondexheight SPECIES_EGG, ""
    mondexweight SPECIES_EGG, ""


mondata SPECIES_BAD_EGG, "Bad Egg"
    basestats 10, 10, 10, 10, 10, 10
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 3
    baseexp 255
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_BAD_EGG_TM_DATA_0, SPECIES_BAD_EGG_TM_DATA_1, SPECIES_BAD_EGG_TM_DATA_2, SPECIES_BAD_EGG_TM_DATA_3
    mondexentry SPECIES_BAD_EGG, "-----"
    mondexclassification SPECIES_BAD_EGG, "-----"
    mondexheight SPECIES_BAD_EGG, ""
    mondexweight SPECIES_BAD_EGG, ""


mondata SPECIES_DEOXYS_ATTACK, "-----"
    basestats 50, 180, 20, 150, 180, 20
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 3
    baseexp 215
    evyields 0, 2, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_DEOXYS_ATTACK_TM_DATA_0, SPECIES_DEOXYS_ATTACK_TM_DATA_1, SPECIES_DEOXYS_ATTACK_TM_DATA_2, SPECIES_DEOXYS_ATTACK_TM_DATA_3
    mondexentry SPECIES_DEOXYS_ATTACK, "-----"
    mondexclassification SPECIES_DEOXYS_ATTACK, "-----"
    mondexheight SPECIES_DEOXYS_ATTACK, ""
    mondexweight SPECIES_DEOXYS_ATTACK, ""


mondata SPECIES_DEOXYS_DEFENSE, "-----"
    basestats 50, 70, 160, 90, 70, 160
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 3
    baseexp 215
    evyields 0, 0, 2, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_DEOXYS_DEFENSE_TM_DATA_0, SPECIES_DEOXYS_DEFENSE_TM_DATA_1, SPECIES_DEOXYS_DEFENSE_TM_DATA_2, SPECIES_DEOXYS_DEFENSE_TM_DATA_3
    mondexentry SPECIES_DEOXYS_DEFENSE, "-----"
    mondexclassification SPECIES_DEOXYS_DEFENSE, "-----"
    mondexheight SPECIES_DEOXYS_DEFENSE, ""
    mondexweight SPECIES_DEOXYS_DEFENSE, ""


mondata SPECIES_DEOXYS_SPEED, "-----"
    basestats 50, 95, 90, 180, 95, 90
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 3
    baseexp 215
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_DEOXYS_SPEED_TM_DATA_0, SPECIES_DEOXYS_SPEED_TM_DATA_1, SPECIES_DEOXYS_SPEED_TM_DATA_2, SPECIES_DEOXYS_SPEED_TM_DATA_3
    mondexentry SPECIES_DEOXYS_SPEED, "-----"
    mondexclassification SPECIES_DEOXYS_SPEED, "-----"
    mondexheight SPECIES_DEOXYS_SPEED, ""
    mondexweight SPECIES_DEOXYS_SPEED, ""


mondata SPECIES_WORMADAM_SANDY, "-----"
    basestats 60, 79, 105, 36, 59, 85
    types TYPE_BUG, TYPE_GROUND
    catchrate 45
    baseexp 159
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_SILVER_POWDER
    genderratio 254
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_ANTICIPATION, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_WORMADAM_SANDY_TM_DATA_0, SPECIES_WORMADAM_SANDY_TM_DATA_1, SPECIES_WORMADAM_SANDY_TM_DATA_2, SPECIES_WORMADAM_SANDY_TM_DATA_3
    mondexentry SPECIES_WORMADAM_SANDY, "-----"
    mondexclassification SPECIES_WORMADAM_SANDY, "-----"
    mondexheight SPECIES_WORMADAM_SANDY, ""
    mondexweight SPECIES_WORMADAM_SANDY, ""


mondata SPECIES_WORMADAM_TRASHY, "-----"
    basestats 60, 69, 95, 36, 69, 95
    types TYPE_BUG, TYPE_STEEL
    catchrate 45
    baseexp 159
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_SILVER_POWDER
    genderratio 254
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_ANTICIPATION, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_WORMADAM_TRASHY_TM_DATA_0, SPECIES_WORMADAM_TRASHY_TM_DATA_1, SPECIES_WORMADAM_TRASHY_TM_DATA_2, SPECIES_WORMADAM_TRASHY_TM_DATA_3
    mondexentry SPECIES_WORMADAM_TRASHY, "-----"
    mondexclassification SPECIES_WORMADAM_TRASHY, "-----"
    mondexheight SPECIES_WORMADAM_TRASHY, ""
    mondexweight SPECIES_WORMADAM_TRASHY, ""


mondata SPECIES_GIRATINA_ORIGIN, "-----"
    basestats 150, 120, 100, 90, 120, 100
    types TYPE_GHOST, TYPE_DRAGON
    catchrate 3
    baseexp 220
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_GIRATINA_ORIGIN_TM_DATA_0, SPECIES_GIRATINA_ORIGIN_TM_DATA_1, SPECIES_GIRATINA_ORIGIN_TM_DATA_2, SPECIES_GIRATINA_ORIGIN_TM_DATA_3
    mondexentry SPECIES_GIRATINA_ORIGIN, "-----"
    mondexclassification SPECIES_GIRATINA_ORIGIN, "-----"
    mondexheight SPECIES_GIRATINA_ORIGIN, ""
    mondexweight SPECIES_GIRATINA_ORIGIN, ""


mondata SPECIES_SHAYMIN_SKY, "-----"
    basestats 100, 103, 75, 127, 120, 75
    types TYPE_GRASS, TYPE_FLYING
    catchrate 45
    baseexp 64
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_LUM_BERRY, ITEM_LUM_BERRY
    genderratio 255
    eggcycles 120
    basefriendship 100
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_SERENE_GRACE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 1
    tmdata SPECIES_SHAYMIN_SKY_TM_DATA_0, SPECIES_SHAYMIN_SKY_TM_DATA_1, SPECIES_SHAYMIN_SKY_TM_DATA_2, SPECIES_SHAYMIN_SKY_TM_DATA_3
    mondexentry SPECIES_SHAYMIN_SKY, "-----"
    mondexclassification SPECIES_SHAYMIN_SKY, "-----"
    mondexheight SPECIES_SHAYMIN_SKY, ""
    mondexweight SPECIES_SHAYMIN_SKY, ""


mondata SPECIES_ROTOM_HEAT, "-----"
    basestats 50, 65, 107, 86, 105, 107
    types TYPE_ELECTRIC, TYPE_FIRE
    catchrate 45
    baseexp 132
    evyields 0, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_ROTOM_HEAT_TM_DATA_0, SPECIES_ROTOM_HEAT_TM_DATA_1, SPECIES_ROTOM_HEAT_TM_DATA_2, SPECIES_ROTOM_HEAT_TM_DATA_3
    mondexentry SPECIES_ROTOM_HEAT, "-----"
    mondexclassification SPECIES_ROTOM_HEAT, "-----"
    mondexheight SPECIES_ROTOM_HEAT, ""
    mondexweight SPECIES_ROTOM_HEAT, ""


mondata SPECIES_ROTOM_WASH, "-----"
    basestats 50, 65, 107, 86, 105, 107
    types TYPE_ELECTRIC, TYPE_WATER
    catchrate 45
    baseexp 132
    evyields 0, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_ROTOM_WASH_TM_DATA_0, SPECIES_ROTOM_WASH_TM_DATA_1, SPECIES_ROTOM_WASH_TM_DATA_2, SPECIES_ROTOM_WASH_TM_DATA_3
    mondexentry SPECIES_ROTOM_WASH, "-----"
    mondexclassification SPECIES_ROTOM_WASH, "-----"
    mondexheight SPECIES_ROTOM_WASH, ""
    mondexweight SPECIES_ROTOM_WASH, ""


mondata SPECIES_ROTOM_FROST, "-----"
    basestats 50, 65, 107, 86, 105, 107
    types TYPE_ELECTRIC, TYPE_ICE
    catchrate 45
    baseexp 132
    evyields 0, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_ROTOM_FROST_TM_DATA_0, SPECIES_ROTOM_FROST_TM_DATA_1, SPECIES_ROTOM_FROST_TM_DATA_2, SPECIES_ROTOM_FROST_TM_DATA_3
    mondexentry SPECIES_ROTOM_FROST, "-----"
    mondexclassification SPECIES_ROTOM_FROST, "-----"
    mondexheight SPECIES_ROTOM_FROST, ""
    mondexweight SPECIES_ROTOM_FROST, ""


mondata SPECIES_ROTOM_FAN, "-----"
    basestats 50, 65, 107, 86, 105, 107
    types TYPE_ELECTRIC, TYPE_FLYING
    catchrate 45
    baseexp 132
    evyields 0, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_ROTOM_FAN_TM_DATA_0, SPECIES_ROTOM_FAN_TM_DATA_1, SPECIES_ROTOM_FAN_TM_DATA_2, SPECIES_ROTOM_FAN_TM_DATA_3
    mondexentry SPECIES_ROTOM_FAN, "-----"
    mondexclassification SPECIES_ROTOM_FAN, "-----"
    mondexheight SPECIES_ROTOM_FAN, ""
    mondexweight SPECIES_ROTOM_FAN, ""


mondata SPECIES_ROTOM_MOW, "-----"
    basestats 50, 65, 107, 86, 105, 107
    types TYPE_ELECTRIC, TYPE_GRASS
    catchrate 45
    baseexp 132
    evyields 0, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_ROTOM_MOW_TM_DATA_0, SPECIES_ROTOM_MOW_TM_DATA_1, SPECIES_ROTOM_MOW_TM_DATA_2, SPECIES_ROTOM_MOW_TM_DATA_3
    mondexentry SPECIES_ROTOM_MOW, "-----"
    mondexclassification SPECIES_ROTOM_MOW, "-----"
    mondexheight SPECIES_ROTOM_MOW, ""
    mondexweight SPECIES_ROTOM_MOW, ""


mondata SPECIES_508, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_508, "-----"
    mondexclassification SPECIES_508, "-----"
    mondexheight SPECIES_508, ""
    mondexweight SPECIES_508, ""


mondata SPECIES_509, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_509, "-----"
    mondexclassification SPECIES_509, "-----"
    mondexheight SPECIES_509, ""
    mondexweight SPECIES_509, ""


mondata SPECIES_510, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_510, "-----"
    mondexclassification SPECIES_510, "-----"
    mondexheight SPECIES_510, ""
    mondexweight SPECIES_510, ""


mondata SPECIES_511, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_511, "-----"
    mondexclassification SPECIES_511, "-----"
    mondexheight SPECIES_511, ""
    mondexweight SPECIES_511, ""


mondata SPECIES_512, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_512, "-----"
    mondexclassification SPECIES_512, "-----"
    mondexheight SPECIES_512, ""
    mondexweight SPECIES_512, ""


mondata SPECIES_513, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_513, "-----"
    mondexclassification SPECIES_513, "-----"
    mondexheight SPECIES_513, ""
    mondexweight SPECIES_513, ""


mondata SPECIES_514, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_514, "-----"
    mondexclassification SPECIES_514, "-----"
    mondexheight SPECIES_514, ""
    mondexweight SPECIES_514, ""


mondata SPECIES_515, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_515, "-----"
    mondexclassification SPECIES_515, "-----"
    mondexheight SPECIES_515, ""
    mondexweight SPECIES_515, ""


mondata SPECIES_516, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_516, "-----"
    mondexclassification SPECIES_516, "-----"
    mondexheight SPECIES_516, ""
    mondexweight SPECIES_516, ""


mondata SPECIES_517, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_517, "-----"
    mondexclassification SPECIES_517, "-----"
    mondexheight SPECIES_517, ""
    mondexweight SPECIES_517, ""


mondata SPECIES_518, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_518, "-----"
    mondexclassification SPECIES_518, "-----"
    mondexheight SPECIES_518, ""
    mondexweight SPECIES_518, ""


mondata SPECIES_519, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_519, "-----"
    mondexclassification SPECIES_519, "-----"
    mondexheight SPECIES_519, ""
    mondexweight SPECIES_519, ""


mondata SPECIES_520, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_520, "-----"
    mondexclassification SPECIES_520, "-----"
    mondexheight SPECIES_520, ""
    mondexweight SPECIES_520, ""


mondata SPECIES_521, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_521, "-----"
    mondexclassification SPECIES_521, "-----"
    mondexheight SPECIES_521, ""
    mondexweight SPECIES_521, ""


mondata SPECIES_522, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_522, "-----"
    mondexclassification SPECIES_522, "-----"
    mondexheight SPECIES_522, ""
    mondexweight SPECIES_522, ""


mondata SPECIES_523, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_523, "-----"
    mondexclassification SPECIES_523, "-----"
    mondexheight SPECIES_523, ""
    mondexweight SPECIES_523, ""


mondata SPECIES_524, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_524, "-----"
    mondexclassification SPECIES_524, "-----"
    mondexheight SPECIES_524, ""
    mondexweight SPECIES_524, ""


mondata SPECIES_525, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_525, "-----"
    mondexclassification SPECIES_525, "-----"
    mondexheight SPECIES_525, ""
    mondexweight SPECIES_525, ""


mondata SPECIES_526, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_526, "-----"
    mondexclassification SPECIES_526, "-----"
    mondexheight SPECIES_526, ""
    mondexweight SPECIES_526, ""


mondata SPECIES_527, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_527, "-----"
    mondexclassification SPECIES_527, "-----"
    mondexheight SPECIES_527, ""
    mondexweight SPECIES_527, ""


mondata SPECIES_528, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_528, "-----"
    mondexclassification SPECIES_528, "-----"
    mondexheight SPECIES_528, ""
    mondexweight SPECIES_528, ""


mondata SPECIES_529, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_529, "-----"
    mondexclassification SPECIES_529, "-----"
    mondexheight SPECIES_529, ""
    mondexweight SPECIES_529, ""


mondata SPECIES_530, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_530, "-----"
    mondexclassification SPECIES_530, "-----"
    mondexheight SPECIES_530, ""
    mondexweight SPECIES_530, ""


mondata SPECIES_531, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_531, "-----"
    mondexclassification SPECIES_531, "-----"
    mondexheight SPECIES_531, ""
    mondexweight SPECIES_531, ""


mondata SPECIES_532, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_532, "-----"
    mondexclassification SPECIES_532, "-----"
    mondexheight SPECIES_532, ""
    mondexweight SPECIES_532, ""


mondata SPECIES_533, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_533, "-----"
    mondexclassification SPECIES_533, "-----"
    mondexheight SPECIES_533, ""
    mondexweight SPECIES_533, ""


mondata SPECIES_534, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_534, "-----"
    mondexclassification SPECIES_534, "-----"
    mondexheight SPECIES_534, ""
    mondexweight SPECIES_534, ""


mondata SPECIES_535, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_535, "-----"
    mondexclassification SPECIES_535, "-----"
    mondexheight SPECIES_535, ""
    mondexweight SPECIES_535, ""


mondata SPECIES_536, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_536, "-----"
    mondexclassification SPECIES_536, "-----"
    mondexheight SPECIES_536, ""
    mondexweight SPECIES_536, ""


mondata SPECIES_537, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_537, "-----"
    mondexclassification SPECIES_537, "-----"
    mondexheight SPECIES_537, ""
    mondexweight SPECIES_537, ""


mondata SPECIES_538, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_538, "-----"
    mondexclassification SPECIES_538, "-----"
    mondexheight SPECIES_538, ""
    mondexweight SPECIES_538, ""


mondata SPECIES_539, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_539, "-----"
    mondexclassification SPECIES_539, "-----"
    mondexheight SPECIES_539, ""
    mondexweight SPECIES_539, ""


mondata SPECIES_540, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_540, "-----"
    mondexclassification SPECIES_540, "-----"
    mondexheight SPECIES_540, ""
    mondexweight SPECIES_540, ""


mondata SPECIES_541, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_541, "-----"
    mondexclassification SPECIES_541, "-----"
    mondexheight SPECIES_541, ""
    mondexweight SPECIES_541, ""


mondata SPECIES_542, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_542, "-----"
    mondexclassification SPECIES_542, "-----"
    mondexheight SPECIES_542, ""
    mondexweight SPECIES_542, ""


mondata SPECIES_543, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
    mondexentry SPECIES_543, "-----"
    mondexclassification SPECIES_543, "-----"
    mondexheight SPECIES_543, ""
    mondexweight SPECIES_543, ""


mondata SPECIES_VICTINI, "Victini"
    basestats 100, 100, 100, 100, 100, 100
    types TYPE_PSYCHIC, TYPE_FIRE
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 100
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_VICTORY_STAR, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_VICTINI_TM_DATA_0, SPECIES_VICTINI_TM_DATA_1, SPECIES_VICTINI_TM_DATA_2, SPECIES_VICTINI_TM_DATA_3
    mondexentry SPECIES_VICTINI, "When it shares the infinite energy it\ncreates, that being’s entire body\nwill be overflowing with power."
    mondexclassification SPECIES_VICTINI, "Victory Pokémon"
    mondexheight SPECIES_VICTINI, "1’04”"
    mondexweight SPECIES_VICTINI, "8.8 lbs."


mondata SPECIES_SNIVY, "Snivy"
    basestats 45, 45, 55, 63, 45, 55
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SNIVY_TM_DATA_0, SPECIES_SNIVY_TM_DATA_1, SPECIES_SNIVY_TM_DATA_2, SPECIES_SNIVY_TM_DATA_3
    mondexentry SPECIES_SNIVY, "It is very intelligent and calm.\nBeing exposed to lots of sunlight\nmakes its movements swifter."
    mondexclassification SPECIES_SNIVY, "Grass Snake Pokémon"
    mondexheight SPECIES_SNIVY, "2’00”"
    mondexweight SPECIES_SNIVY, "17.9 lbs."


mondata SPECIES_SERVINE, "Servine"
    basestats 60, 60, 75, 83, 60, 75
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SERVINE_TM_DATA_0, SPECIES_SERVINE_TM_DATA_1, SPECIES_SERVINE_TM_DATA_2, SPECIES_SERVINE_TM_DATA_3
    mondexentry SPECIES_SERVINE, "It moves along the ground as if sliding.\nIts swift movements befuddle its foes,\nand it then attacks with a vine whip."
    mondexclassification SPECIES_SERVINE, "Grass Snake Pokémon"
    mondexheight SPECIES_SERVINE, "2’07”"
    mondexweight SPECIES_SERVINE, "35.3 lbs."


mondata SPECIES_SERPERIOR, "Serperior"
    basestats 75, 75, 95, 113, 75, 95
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SERPERIOR_TM_DATA_0, SPECIES_SERPERIOR_TM_DATA_1, SPECIES_SERPERIOR_TM_DATA_2, SPECIES_SERPERIOR_TM_DATA_3
    mondexentry SPECIES_SERPERIOR, "It can stop its opponents’\nmovements with just a glare. It takes\nin solar energy and boosts it internally."
    mondexclassification SPECIES_SERPERIOR, "Regal Pokémon"
    mondexheight SPECIES_SERPERIOR, "10’10”"
    mondexweight SPECIES_SERPERIOR, "138.9 lbs."


mondata SPECIES_TEPIG, "Tepig"
    basestats 65, 63, 45, 45, 45, 45
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_TEPIG_TM_DATA_0, SPECIES_TEPIG_TM_DATA_1, SPECIES_TEPIG_TM_DATA_2, SPECIES_TEPIG_TM_DATA_3
    mondexentry SPECIES_TEPIG, "It can deftly dodge its foe’s attacks\nwhile shooting fireballs from its nose.\nIt roasts berries before it eats them."
    mondexclassification SPECIES_TEPIG, "Fire Pig Pokémon"
    mondexheight SPECIES_TEPIG, "1’08"
    mondexweight SPECIES_TEPIG, "21.8 lbs."


mondata SPECIES_PIGNITE, "Pignite"
    basestats 90, 93, 55, 55, 70, 55
    types TYPE_FIRE, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_PIGNITE_TM_DATA_0, SPECIES_PIGNITE_TM_DATA_1, SPECIES_PIGNITE_TM_DATA_2, SPECIES_PIGNITE_TM_DATA_3
    mondexentry SPECIES_PIGNITE, "When its internal fire flares up, its\nmovements grow sharper and faster.\nWhen in trouble, it emits smoke."
    mondexclassification SPECIES_PIGNITE, "Fire Pig Pokémon"
    mondexheight SPECIES_PIGNITE, "3’03”"
    mondexweight SPECIES_PIGNITE, "122.4 lbs."


mondata SPECIES_EMBOAR, "Emboar"
    basestats 110, 123, 65, 65, 100, 65
    types TYPE_FIRE, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_EMBOAR_TM_DATA_0, SPECIES_EMBOAR_TM_DATA_1, SPECIES_EMBOAR_TM_DATA_2, SPECIES_EMBOAR_TM_DATA_3
    mondexentry SPECIES_EMBOAR, "It can throw a fire punch by setting its\nfists on fire with its fiery chin. It cares\ndeeply about its friends."
    mondexclassification SPECIES_EMBOAR, "Mega Fire Pig Pokémon"
    mondexheight SPECIES_EMBOAR, "5’03”"
    mondexweight SPECIES_EMBOAR, "330.7 lbs."


mondata SPECIES_OSHAWOTT, "Oshawott"
    basestats 55, 55, 45, 45, 63, 45
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_OSHAWOTT_TM_DATA_0, SPECIES_OSHAWOTT_TM_DATA_1, SPECIES_OSHAWOTT_TM_DATA_2, SPECIES_OSHAWOTT_TM_DATA_3
    mondexentry SPECIES_OSHAWOTT, "It fights using the scalchop on its\nstomach. In response to an attack,\nit retaliates immediately by slashing."
    mondexclassification SPECIES_OSHAWOTT, "Sea Otter Pokémon"
    mondexheight SPECIES_OSHAWOTT, "1’08”"
    mondexweight SPECIES_OSHAWOTT, "13.0 lbs."


mondata SPECIES_DEWOTT, "Dewott"
    basestats 75, 75, 60, 60, 83, 60
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_DEWOTT_TM_DATA_0, SPECIES_DEWOTT_TM_DATA_1, SPECIES_DEWOTT_TM_DATA_2, SPECIES_DEWOTT_TM_DATA_3
    mondexentry SPECIES_DEWOTT, "Strict training is how it learns its\nflowing double-scalchop technique."
    mondexclassification SPECIES_DEWOTT, "Discipline Pokémon"
    mondexheight SPECIES_DEWOTT, "2’07”"
    mondexweight SPECIES_DEWOTT, "54.0 lbs."


mondata SPECIES_SAMUROTT, "Samurott"
    basestats 95, 100, 85, 70, 108, 70
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SAMUROTT_TM_DATA_0, SPECIES_SAMUROTT_TM_DATA_1, SPECIES_SAMUROTT_TM_DATA_2, SPECIES_SAMUROTT_TM_DATA_3
    mondexentry SPECIES_SAMUROTT, "One swing of the sword incorporated in\nits armor can fell an opponent. A simple\nglare from one of them quiets everybody."
    mondexclassification SPECIES_SAMUROTT, "Formidable Pokémon"
    mondexheight SPECIES_SAMUROTT, "4’11”"
    mondexweight SPECIES_SAMUROTT, "208.6 lbs."


mondata SPECIES_PATRAT, "Patrat"
    basestats 45, 55, 39, 42, 35, 39
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_KEEN_EYE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_PATRAT_TM_DATA_0, SPECIES_PATRAT_TM_DATA_1, SPECIES_PATRAT_TM_DATA_2, SPECIES_PATRAT_TM_DATA_3
    mondexentry SPECIES_PATRAT, "Using food stored in cheek pouches,\nthey can keep watch for days. They use\ntheir tails to communicate with others."
    mondexclassification SPECIES_PATRAT, "Scout Pokémon"
    mondexheight SPECIES_PATRAT, "1’08”"
    mondexweight SPECIES_PATRAT, "25.6 lbs."


mondata SPECIES_WATCHOG, "Watchog"
    basestats 60, 85, 69, 77, 60, 69
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_ILLUMINATE, ABILITY_KEEN_EYE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_WATCHOG_TM_DATA_0, SPECIES_WATCHOG_TM_DATA_1, SPECIES_WATCHOG_TM_DATA_2, SPECIES_WATCHOG_TM_DATA_3
    mondexentry SPECIES_WATCHOG, "When they see an enemy, their tails\nstand high, and they spit the seeds of\nberries stored in their cheek pouches."
    mondexclassification SPECIES_WATCHOG, "Lookout Pokémon"
    mondexheight SPECIES_WATCHOG, "3’07”"
    mondexweight SPECIES_WATCHOG, "59.5 lbs."


mondata SPECIES_LILLIPUP, "Lillipup"
    basestats 45, 60, 45, 55, 25, 45
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_VITAL_SPIRIT, ABILITY_CUTE_CHARM
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_LILLIPUP_TM_DATA_0, SPECIES_LILLIPUP_TM_DATA_1, SPECIES_LILLIPUP_TM_DATA_2, SPECIES_LILLIPUP_TM_DATA_3
    mondexentry SPECIES_LILLIPUP, "It faces strong opponents with great\ncourage. But, when at a disadvantage in\na fight, this intelligent Pokémon flees."
    mondexclassification SPECIES_LILLIPUP, "Puppy Pokémon"
    mondexheight SPECIES_LILLIPUP, "1’04”"
    mondexweight SPECIES_LILLIPUP, "9.0 lbs."


mondata SPECIES_HERDIER, "Herdier"
    basestats 65, 80, 65, 60, 35, 65
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_SAND_RUSH
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_HERDIER_TM_DATA_0, SPECIES_HERDIER_TM_DATA_1, SPECIES_HERDIER_TM_DATA_2, SPECIES_HERDIER_TM_DATA_3
    mondexentry SPECIES_HERDIER, "It has black, cape-like fur that is\nvery hard and decreases the amount\nof damage it receives."
    mondexclassification SPECIES_HERDIER, "Loyal Dog Pokémon"
    mondexheight SPECIES_HERDIER, "2’11”"
    mondexweight SPECIES_HERDIER, "32.4 lbs."


mondata SPECIES_STOUTLAND, "Stoutland"
    basestats 85, 110, 90, 80, 45, 90
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_SAND_RUSH
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_STOUTLAND_TM_DATA_0, SPECIES_STOUTLAND_TM_DATA_1, SPECIES_STOUTLAND_TM_DATA_2, SPECIES_STOUTLAND_TM_DATA_3
    mondexentry SPECIES_STOUTLAND, "It rescues people stranded by\nblizzards in the mountains. Its\nshaggy fur shields it from the cold."
    mondexclassification SPECIES_STOUTLAND, "Big-Hearted Pokémon"
    mondexheight SPECIES_STOUTLAND, "3’11”"
    mondexweight SPECIES_STOUTLAND, "134.5 lbs."


mondata SPECIES_PURRLOIN, "Purrloin"
    basestats 41, 50, 37, 66, 50, 37
    types TYPE_DARK, TYPE_DARK
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_LIMBER, ABILITY_UNBURDEN
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_PURRLOIN_TM_DATA_0, SPECIES_PURRLOIN_TM_DATA_1, SPECIES_PURRLOIN_TM_DATA_2, SPECIES_PURRLOIN_TM_DATA_3
    mondexentry SPECIES_PURRLOIN, "They steal from people for fun, but their\nvictims can’t help but forgive them.\nTheir deceptively cute act is perfect."
    mondexclassification SPECIES_PURRLOIN, "Devious Pokémon"
    mondexheight SPECIES_PURRLOIN, "1’04”"
    mondexweight SPECIES_PURRLOIN, "22.3 lbs."


mondata SPECIES_LIEPARD, "Liepard"
    basestats 64, 88, 50, 106, 88, 50
    types TYPE_DARK, TYPE_DARK
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_LIMBER, ABILITY_UNBURDEN
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_LIEPARD_TM_DATA_0, SPECIES_LIEPARD_TM_DATA_1, SPECIES_LIEPARD_TM_DATA_2, SPECIES_LIEPARD_TM_DATA_3
    mondexentry SPECIES_LIEPARD, "These Pokémon vanish and appear\nunexpectedly. Many Trainers are drawn\nto their beautiful form and fur."
    mondexclassification SPECIES_LIEPARD, "Cruel Pokémon"
    mondexheight SPECIES_LIEPARD, "3’07”"
    mondexweight SPECIES_LIEPARD, "82.7 lbs."


mondata SPECIES_PANSAGE, "Pansage"
    basestats 50, 53, 48, 64, 53, 48
    types TYPE_GRASS, TYPE_GRASS
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_ORAN_BERRY, ITEM_OCCA_BERRY
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_GLUTTONY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_PANSAGE_TM_DATA_0, SPECIES_PANSAGE_TM_DATA_1, SPECIES_PANSAGE_TM_DATA_2, SPECIES_PANSAGE_TM_DATA_3
    mondexentry SPECIES_PANSAGE, "This Pokémon dwells deep in the forest.\nEating a leaf from its head whisks\nweariness away as if by magic."
    mondexclassification SPECIES_PANSAGE, "Grass Monkey Pokémon"
    mondexheight SPECIES_PANSAGE, "2’00”"
    mondexweight SPECIES_PANSAGE, "23.1 lbs."


mondata SPECIES_SIMISAGE, "Simisage"
    basestats 75, 98, 63, 101, 98, 63
    types TYPE_GRASS, TYPE_GRASS
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_ORAN_BERRY, ITEM_OCCA_BERRY
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_GLUTTONY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SIMISAGE_TM_DATA_0, SPECIES_SIMISAGE_TM_DATA_1, SPECIES_SIMISAGE_TM_DATA_2, SPECIES_SIMISAGE_TM_DATA_3
    mondexentry SPECIES_SIMISAGE, "Ill tempered, it fights by swinging its\nbarbed tail around wildly. The leaf\ngrowing on its head is very bitter."
    mondexclassification SPECIES_SIMISAGE, "Thorn Monkey Pokémon"
    mondexheight SPECIES_SIMISAGE, "3’07”"
    mondexweight SPECIES_SIMISAGE, "67.2 lbs."


mondata SPECIES_PANSEAR, "Pansear"
    basestats 50, 53, 48, 64, 53, 48
    types TYPE_FIRE, TYPE_FIRE
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_ORAN_BERRY, ITEM_PASSHO_BERRY
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_GLUTTONY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_PANSEAR_TM_DATA_0, SPECIES_PANSEAR_TM_DATA_1, SPECIES_PANSEAR_TM_DATA_2, SPECIES_PANSEAR_TM_DATA_3
    mondexentry SPECIES_PANSEAR, "When it is angered, the temperature\nof its head tuft reaches 600° F.\nIt uses its tuft to roast berries."
    mondexclassification SPECIES_PANSEAR, "High Temp Pokémon"
    mondexheight SPECIES_PANSEAR, "2’00”"
    mondexweight SPECIES_PANSEAR, "24.3 lbs."


mondata SPECIES_SIMISEAR, "Simisear"
    basestats 75, 98, 63, 101, 98, 63
    types TYPE_FIRE, TYPE_FIRE
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_ORAN_BERRY, ITEM_PASSHO_BERRY
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_GLUTTONY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_SIMISEAR_TM_DATA_0, SPECIES_SIMISEAR_TM_DATA_1, SPECIES_SIMISEAR_TM_DATA_2, SPECIES_SIMISEAR_TM_DATA_3
    mondexentry SPECIES_SIMISEAR, "It loves sweets because they become\nenergy for the fire burning inside\nits body."
    mondexclassification SPECIES_SIMISEAR, "Ember Pokémon"
    mondexheight SPECIES_SIMISEAR, "3’03”"
    mondexweight SPECIES_SIMISEAR, "61.7 lbs."


mondata SPECIES_PANPOUR, "Panpour"
    basestats 50, 53, 48, 64, 53, 48
    types TYPE_WATER, TYPE_WATER
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_ORAN_BERRY, ITEM_RINDO_BERRY
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_GLUTTONY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_PANPOUR_TM_DATA_0, SPECIES_PANPOUR_TM_DATA_1, SPECIES_PANPOUR_TM_DATA_2, SPECIES_PANPOUR_TM_DATA_3
    mondexentry SPECIES_PANPOUR, "The water stored inside the tuft on\nits head is full of nutrients. Plants\nthat receive its water grow large."
    mondexclassification SPECIES_PANPOUR, "Spray Pokémon"
    mondexheight SPECIES_PANPOUR, "2’00”"
    mondexweight SPECIES_PANPOUR, "29.8 lbs."


mondata SPECIES_SIMIPOUR, "Simipour"
    basestats 75, 98, 63, 101, 98, 63
    types TYPE_WATER, TYPE_WATER
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_ORAN_BERRY, ITEM_RINDO_BERRY
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_GLUTTONY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SIMIPOUR_TM_DATA_0, SPECIES_SIMIPOUR_TM_DATA_1, SPECIES_SIMIPOUR_TM_DATA_2, SPECIES_SIMIPOUR_TM_DATA_3
    mondexentry SPECIES_SIMIPOUR, "The tuft on its head holds water. When\nthe level runs low, it replenishes the\ntuft by siphoning up water with its tail."
    mondexclassification SPECIES_SIMIPOUR, "Geyser Pokémon"
    mondexheight SPECIES_SIMIPOUR, "3’03”"
    mondexweight SPECIES_SIMIPOUR, "63.9 lbs."


mondata SPECIES_MUNNA, "Munna"
    basestats 76, 25, 45, 24, 67, 55
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FOREWARN, ABILITY_SYNCHRONIZE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_MUNNA_TM_DATA_0, SPECIES_MUNNA_TM_DATA_1, SPECIES_MUNNA_TM_DATA_2, SPECIES_MUNNA_TM_DATA_3
    mondexentry SPECIES_MUNNA, "Munna always float in the air. People\nwhose dreams are eaten by them\nforget what the dreams had been about."
    mondexclassification SPECIES_MUNNA, "Dream Eater Pokémon"
    mondexheight SPECIES_MUNNA, "2’00”"
    mondexweight SPECIES_MUNNA, "51.4 lbs."


mondata SPECIES_MUSHARNA, "Musharna"
    basestats 116, 55, 85, 29, 107, 95
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FOREWARN, ABILITY_SYNCHRONIZE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_MUSHARNA_TM_DATA_0, SPECIES_MUSHARNA_TM_DATA_1, SPECIES_MUSHARNA_TM_DATA_2, SPECIES_MUSHARNA_TM_DATA_3
    mondexentry SPECIES_MUSHARNA, "The mist emanating from their foreheads\nis packed with the dreams of people\nand Pokémon."
    mondexclassification SPECIES_MUSHARNA, "Drowsing Pokémon"
    mondexheight SPECIES_MUSHARNA, "3’07”"
    mondexweight SPECIES_MUSHARNA, "133.4 lbs."


mondata SPECIES_PIDOVE, "Pidove"
    basestats 50, 55, 50, 43, 36, 30
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_BIG_PECKS, ABILITY_SUPER_LUCK
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_PIDOVE_TM_DATA_0, SPECIES_PIDOVE_TM_DATA_1, SPECIES_PIDOVE_TM_DATA_2, SPECIES_PIDOVE_TM_DATA_3
    mondexentry SPECIES_PIDOVE, "Each follows its Trainer’s orders as\nbest it can, but they sometimes fail to\nunderstand complicated commands."
    mondexclassification SPECIES_PIDOVE, "Tiny Pigeon Pokémon"
    mondexheight SPECIES_PIDOVE, "1’00”"
    mondexweight SPECIES_PIDOVE, "4.6 lbs."


mondata SPECIES_TRANQUILL, "Tranquill"
    basestats 62, 77, 62, 65, 50, 42
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_BIG_PECKS, ABILITY_SUPER_LUCK
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_TRANQUILL_TM_DATA_0, SPECIES_TRANQUILL_TM_DATA_1, SPECIES_TRANQUILL_TM_DATA_2, SPECIES_TRANQUILL_TM_DATA_3
    mondexentry SPECIES_TRANQUILL, "It can return to its Trainer’s location\nregardless of the distance\nseparating them."
    mondexclassification SPECIES_TRANQUILL, "Wild Pigeon Pokémon"
    mondexheight SPECIES_TRANQUILL, "2’00”"
    mondexweight SPECIES_TRANQUILL, "33.1 lbs."


mondata SPECIES_UNFEZANT, "Unfezant"
    basestats 80, 115, 80, 93, 65, 55
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_BIG_PECKS, ABILITY_SUPER_LUCK
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_UNFEZANT_TM_DATA_0, SPECIES_UNFEZANT_TM_DATA_1, SPECIES_UNFEZANT_TM_DATA_2, SPECIES_UNFEZANT_TM_DATA_3
    mondexentry SPECIES_UNFEZANT, "Males swing their head plumage to\nthreaten opponents. The female’s flying\nabilities surpass those of the males."
    mondexclassification SPECIES_UNFEZANT, "Proud Pokémon"
    mondexheight SPECIES_UNFEZANT, "3’11”"
    mondexweight SPECIES_UNFEZANT, "63.9 lbs."


mondata SPECIES_BLITZLE, "Blitzle"
    basestats 45, 60, 32, 76, 50, 32
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_CHERI_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_LIGHTNING_ROD, ABILITY_MOTOR_DRIVE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_BLITZLE_TM_DATA_0, SPECIES_BLITZLE_TM_DATA_1, SPECIES_BLITZLE_TM_DATA_2, SPECIES_BLITZLE_TM_DATA_3
    mondexentry SPECIES_BLITZLE, "Its mane shines when it discharges\nelectricity. They use their flashing\nmanes to communicate with one another."
    mondexclassification SPECIES_BLITZLE, "Electrified Pokémon"
    mondexheight SPECIES_BLITZLE, "2’07”"
    mondexweight SPECIES_BLITZLE, "65.7 lbs."


mondata SPECIES_ZEBSTRIKA, "Zebstrika"
    basestats 75, 100, 63, 116, 80, 63
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_CHERI_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_LIGHTNING_ROD, ABILITY_MOTOR_DRIVE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_ZEBSTRIKA_TM_DATA_0, SPECIES_ZEBSTRIKA_TM_DATA_1, SPECIES_ZEBSTRIKA_TM_DATA_2, SPECIES_ZEBSTRIKA_TM_DATA_3
    mondexentry SPECIES_ZEBSTRIKA, "They have lightning-like movements.\nWhen Zebstrika run at full speed,\nthe sound of thunder reverberates."
    mondexclassification SPECIES_ZEBSTRIKA, "Thunderbolt Pokémon"
    mondexheight SPECIES_ZEBSTRIKA, "5’03”"
    mondexweight SPECIES_ZEBSTRIKA, "175.3 lbs."


mondata SPECIES_ROGGENROLA, "Roggenrola"
    basestats 55, 75, 85, 15, 25, 25
    types TYPE_ROCK, TYPE_ROCK
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_EVERSTONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STURDY, ABILITY_WEAK_ARMOR
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_ROGGENROLA_TM_DATA_0, SPECIES_ROGGENROLA_TM_DATA_1, SPECIES_ROGGENROLA_TM_DATA_2, SPECIES_ROGGENROLA_TM_DATA_3
    mondexentry SPECIES_ROGGENROLA, "Its ear is hexagonal in shape.\nCompressed underground,\nits body is as hard as steel."
    mondexclassification SPECIES_ROGGENROLA, "Mantle Pokémon"
    mondexheight SPECIES_ROGGENROLA, "1’04”"
    mondexweight SPECIES_ROGGENROLA, "39.7 lbs."


mondata SPECIES_BOLDORE, "Boldore"
    basestats 70, 105, 105, 20, 50, 40
    types TYPE_ROCK, TYPE_ROCK
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 1, 0, 0, 0
    items ITEM_EVERSTONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STURDY, ABILITY_WEAK_ARMOR
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_BOLDORE_TM_DATA_0, SPECIES_BOLDORE_TM_DATA_1, SPECIES_BOLDORE_TM_DATA_2, SPECIES_BOLDORE_TM_DATA_3
    mondexentry SPECIES_BOLDORE, "When it overflows with power,\nthe orange crystal on its body glows.\nIt looks for underground water in caves."
    mondexclassification SPECIES_BOLDORE, "Ore Pokémon"
    mondexheight SPECIES_BOLDORE, "2’11”"
    mondexweight SPECIES_BOLDORE, "224.9 lbs."


mondata SPECIES_GIGALITH, "Gigalith"
    basestats 85, 135, 130, 25, 60, 80
    types TYPE_ROCK, TYPE_ROCK
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_EVERSTONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STURDY, ABILITY_SAND_STREAM
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_GIGALITH_TM_DATA_0, SPECIES_GIGALITH_TM_DATA_1, SPECIES_GIGALITH_TM_DATA_2, SPECIES_GIGALITH_TM_DATA_3
    mondexentry SPECIES_GIGALITH, "Compressing the energy from its\ninternal core lets it fire off an attack\ncapable of blowing away a mountain."
    mondexclassification SPECIES_GIGALITH, "Compressed Pokémon"
    mondexheight SPECIES_GIGALITH, "5’07”"
    mondexweight SPECIES_GIGALITH, "573.2 lbs."


mondata SPECIES_WOOBAT, "Woobat"
    basestats 65, 45, 43, 72, 55, 43
    types TYPE_PSYCHIC, TYPE_FLYING
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FIELD
    abilities ABILITY_UNAWARE, ABILITY_KLUTZ
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_WOOBAT_TM_DATA_0, SPECIES_WOOBAT_TM_DATA_1, SPECIES_WOOBAT_TM_DATA_2, SPECIES_WOOBAT_TM_DATA_3
    mondexentry SPECIES_WOOBAT, "Its habitat is dark forests and caves.\nIt emits ultrasonic waves from its\nnose to learn about its surroundings."
    mondexclassification SPECIES_WOOBAT, "Bat Pokémon"
    mondexheight SPECIES_WOOBAT, "1’04”"
    mondexweight SPECIES_WOOBAT, "4.6 lbs."


mondata SPECIES_SWOOBAT, "Swoobat"
    basestats 67, 57, 55, 114, 77, 55
    types TYPE_PSYCHIC, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FIELD
    abilities ABILITY_UNAWARE, ABILITY_KLUTZ
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SWOOBAT_TM_DATA_0, SPECIES_SWOOBAT_TM_DATA_1, SPECIES_SWOOBAT_TM_DATA_2, SPECIES_SWOOBAT_TM_DATA_3
    mondexentry SPECIES_SWOOBAT, "It emits sound waves of various\nfrequencies from its nose, including\nsome powerful enough to destroy rocks."
    mondexclassification SPECIES_SWOOBAT, "Courting Pokémon"
    mondexheight SPECIES_SWOOBAT, "2’11”"
    mondexweight SPECIES_SWOOBAT, "23.1 lbs."


mondata SPECIES_DRILBUR, "Drilbur"
    basestats 60, 85, 40, 68, 30, 45
    types TYPE_GROUND, TYPE_GROUND
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAND_RUSH, ABILITY_SAND_FORCE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_DRILBUR_TM_DATA_0, SPECIES_DRILBUR_TM_DATA_1, SPECIES_DRILBUR_TM_DATA_2, SPECIES_DRILBUR_TM_DATA_3
    mondexentry SPECIES_DRILBUR, "It can dig through the ground\nat a speed of 30 mph. It could give\na car running aboveground a good race."
    mondexclassification SPECIES_DRILBUR, "Mole Pokémon"
    mondexheight SPECIES_DRILBUR, "1’00”"
    mondexweight SPECIES_DRILBUR, "18.7 lbs."


mondata SPECIES_EXCADRILL, "Excadrill"
    basestats 110, 135, 60, 88, 50, 65
    types TYPE_GROUND, TYPE_STEEL
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAND_RUSH, ABILITY_SAND_FORCE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_EXCADRILL_TM_DATA_0, SPECIES_EXCADRILL_TM_DATA_1, SPECIES_EXCADRILL_TM_DATA_2, SPECIES_EXCADRILL_TM_DATA_3
    mondexentry SPECIES_EXCADRILL, "It can help in tunnel construction.\nIts drill has evolved into steel strong\nenough to bore through iron plates."
    mondexclassification SPECIES_EXCADRILL, "Subterrene Pokémon"
    mondexheight SPECIES_EXCADRILL, "2’04”"
    mondexweight SPECIES_EXCADRILL, "89.1 lbs."


mondata SPECIES_AUDINO, "Audino"
    basestats 103, 60, 86, 50, 60, 86
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_ORAN_BERRY, ITEM_SITRUS_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_HEALER, ABILITY_REGENERATOR
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_AUDINO_TM_DATA_0, SPECIES_AUDINO_TM_DATA_1, SPECIES_AUDINO_TM_DATA_2, SPECIES_AUDINO_TM_DATA_3
    mondexentry SPECIES_AUDINO, "It touches others with the feelers on\nits ears, using the sound of their\nheartbeats to tell how they are feeling."
    mondexclassification SPECIES_AUDINO, "Hearing Pokémon"
    mondexheight SPECIES_AUDINO, "3’07”"
    mondexweight SPECIES_AUDINO, "68.3 lbs."


mondata SPECIES_TIMBURR, "Timburr"
    basestats 75, 80, 55, 35, 25, 35
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 180
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 63
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_GUTS, ABILITY_SHEER_FORCE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_TIMBURR_TM_DATA_0, SPECIES_TIMBURR_TM_DATA_1, SPECIES_TIMBURR_TM_DATA_2, SPECIES_TIMBURR_TM_DATA_3
    mondexentry SPECIES_TIMBURR, "It fights by swinging a piece of lumber\naround. It is close to evolving when it\ncan handle the lumber without difficulty."
    mondexclassification SPECIES_TIMBURR, "Muscular Pokémon"
    mondexheight SPECIES_TIMBURR, "2’00”"
    mondexweight SPECIES_TIMBURR, "27.6 lbs."


mondata SPECIES_GURDURR, "Gurdurr"
    basestats 85, 105, 85, 40, 40, 50
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 63
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_GUTS, ABILITY_SHEER_FORCE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_GURDURR_TM_DATA_0, SPECIES_GURDURR_TM_DATA_1, SPECIES_GURDURR_TM_DATA_2, SPECIES_GURDURR_TM_DATA_3
    mondexentry SPECIES_GURDURR, "This Pokémon is so muscular and strongly\nbuilt that even a group of wrestlers\ncould not make it budge an inch."
    mondexclassification SPECIES_GURDURR, "Muscular Pokémon"
    mondexheight SPECIES_GURDURR, "3’11”"
    mondexweight SPECIES_GURDURR, "88.2 lbs."


mondata SPECIES_CONKELDURR, "Conkeldurr"
    basestats 105, 140, 95, 45, 55, 65
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 63
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_GUTS, ABILITY_SHEER_FORCE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_CONKELDURR_TM_DATA_0, SPECIES_CONKELDURR_TM_DATA_1, SPECIES_CONKELDURR_TM_DATA_2, SPECIES_CONKELDURR_TM_DATA_3
    mondexentry SPECIES_CONKELDURR, "It is thought that Conkeldurr taught\nhumans how to make concrete more\nthan 2,000 years ago."
    mondexclassification SPECIES_CONKELDURR, "Muscular Pokémon"
    mondexheight SPECIES_CONKELDURR, "4’07”"
    mondexweight SPECIES_CONKELDURR, "191.8 lbs."


mondata SPECIES_TYMPOLE, "Tympole"
    basestats 50, 50, 40, 64, 50, 40
    types TYPE_WATER, TYPE_WATER
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_PECHA_BERRY, ITEM_PERSIM_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_SWIFT_SWIM, ABILITY_HYDRATION
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_TYMPOLE_TM_DATA_0, SPECIES_TYMPOLE_TM_DATA_1, SPECIES_TYMPOLE_TM_DATA_2, SPECIES_TYMPOLE_TM_DATA_3
    mondexentry SPECIES_TYMPOLE, "They warn others of danger by\nvibrating their cheeks to create\na high-pitched sound."
    mondexclassification SPECIES_TYMPOLE, "Tadpole Pokémon"
    mondexheight SPECIES_TYMPOLE, "1’08”"
    mondexweight SPECIES_TYMPOLE, "9.9 lbs."


mondata SPECIES_PALPITOAD, "Palpitoad"
    basestats 75, 65, 55, 69, 65, 55
    types TYPE_WATER, TYPE_GROUND
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_PECHA_BERRY, ITEM_PERSIM_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_SWIFT_SWIM, ABILITY_HYDRATION
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_PALPITOAD_TM_DATA_0, SPECIES_PALPITOAD_TM_DATA_1, SPECIES_PALPITOAD_TM_DATA_2, SPECIES_PALPITOAD_TM_DATA_3
    mondexentry SPECIES_PALPITOAD, "When they vibrate the bumps on their\nheads, they can make waves in water\nor earthquake-like vibrations on land."
    mondexclassification SPECIES_PALPITOAD, "Vibration Pokémon"
    mondexheight SPECIES_PALPITOAD, "2’07”"
    mondexweight SPECIES_PALPITOAD, "37.5 lbs."


mondata SPECIES_SEISMITOAD, "Seismitoad"
    basestats 105, 95, 75, 74, 85, 75
    types TYPE_WATER, TYPE_GROUND
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_PECHA_BERRY, ITEM_PERSIM_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_SWIFT_SWIM, ABILITY_POISON_TOUCH
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SEISMITOAD_TM_DATA_0, SPECIES_SEISMITOAD_TM_DATA_1, SPECIES_SEISMITOAD_TM_DATA_2, SPECIES_SEISMITOAD_TM_DATA_3
    mondexentry SPECIES_SEISMITOAD, "They shoot paralyzing liquid from their\nhead bumps. They use vibration to hurt\ntheir opponents."
    mondexclassification SPECIES_SEISMITOAD, "Vibration Pokémon"
    mondexheight SPECIES_SEISMITOAD, "4’11”"
    mondexweight SPECIES_SEISMITOAD, "136.7 lbs."


mondata SPECIES_THROH, "Throh"
    basestats 120, 100, 85, 45, 30, 85
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_EXPERT_BELT, ITEM_BLACK_BELT
    genderratio 0
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_GUTS, ABILITY_INNER_FOCUS
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_THROH_TM_DATA_0, SPECIES_THROH_TM_DATA_1, SPECIES_THROH_TM_DATA_2, SPECIES_THROH_TM_DATA_3
    mondexentry SPECIES_THROH, "When it tightens its belt, it becomes\nstronger. Wild Throh use vines to weave\ntheir own belts."
    mondexclassification SPECIES_THROH, "Judo Pokémon"
    mondexheight SPECIES_THROH, "4’03”"
    mondexweight SPECIES_THROH, "122.4 lbs."


mondata SPECIES_SAWK, "Sawk"
    basestats 75, 125, 75, 85, 30, 75
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_EXPERT_BELT, ITEM_BLACK_BELT
    genderratio 0
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_STURDY, ABILITY_INNER_FOCUS
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SAWK_TM_DATA_0, SPECIES_SAWK_TM_DATA_1, SPECIES_SAWK_TM_DATA_2, SPECIES_SAWK_TM_DATA_3
    mondexentry SPECIES_SAWK, "The sound of Sawk punching boulders\nand trees can be heard all the way from\nthe mountains where they train."
    mondexclassification SPECIES_SAWK, "Karate Pokémon"
    mondexheight SPECIES_SAWK, "4’07”"
    mondexweight SPECIES_SAWK, "112.4 lbs."


mondata SPECIES_SEWADDLE, "Sewaddle"
    basestats 45, 53, 70, 42, 40, 60
    types TYPE_BUG, TYPE_GRASS
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_MENTAL_HERB, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_CHLOROPHYLL
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_SEWADDLE_TM_DATA_0, SPECIES_SEWADDLE_TM_DATA_1, SPECIES_SEWADDLE_TM_DATA_2, SPECIES_SEWADDLE_TM_DATA_3
    mondexentry SPECIES_SEWADDLE, "Leavanny dress it in clothes they made\nfor it when it hatched. It hides its head\nin its hood while it is sleeping."
    mondexclassification SPECIES_SEWADDLE, "Sewing Pokémon"
    mondexheight SPECIES_SEWADDLE, "1’00”"
    mondexweight SPECIES_SEWADDLE, "5.5 lbs."


mondata SPECIES_SWADLOON, "Swadloon"
    basestats 55, 63, 90, 42, 50, 80
    types TYPE_BUG, TYPE_GRASS
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_MENTAL_HERB, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_LEAF_GUARD, ABILITY_CHLOROPHYLL
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SWADLOON_TM_DATA_0, SPECIES_SWADLOON_TM_DATA_1, SPECIES_SWADLOON_TM_DATA_2, SPECIES_SWADLOON_TM_DATA_3
    mondexentry SPECIES_SWADLOON, "Forests where Swadloon live have superb\nfoliage because the nutrients they make\nfrom fallen leaves nourish the plant life."
    mondexclassification SPECIES_SWADLOON, "Leaf-Wrapped Pokémon"
    mondexheight SPECIES_SWADLOON, "1’08”"
    mondexweight SPECIES_SWADLOON, "16.1 lbs."


mondata SPECIES_LEAVANNY, "Leavanny"
    basestats 75, 103, 80, 92, 70, 80
    types TYPE_BUG, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_MENTAL_HERB, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_CHLOROPHYLL
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_LEAVANNY_TM_DATA_0, SPECIES_LEAVANNY_TM_DATA_1, SPECIES_LEAVANNY_TM_DATA_2, SPECIES_LEAVANNY_TM_DATA_3
    mondexentry SPECIES_LEAVANNY, "Upon finding a small Pokémon, it weaves\nclothing for it from leaves, using the\ncutters on its arms and sticky silk."
    mondexclassification SPECIES_LEAVANNY, "Nurturing Pokémon"
    mondexheight SPECIES_LEAVANNY, "3’11”"
    mondexweight SPECIES_LEAVANNY, "45.2 lbs."


mondata SPECIES_VENIPEDE, "Venipede"
    basestats 30, 45, 59, 57, 30, 39
    types TYPE_BUG, TYPE_POISON
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_PECHA_BERRY, ITEM_POISON_BARB
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_POISON_POINT, ABILITY_SWARM
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_VENIPEDE_TM_DATA_0, SPECIES_VENIPEDE_TM_DATA_1, SPECIES_VENIPEDE_TM_DATA_2, SPECIES_VENIPEDE_TM_DATA_3
    mondexentry SPECIES_VENIPEDE, "Its bite injects a potent poison, enough\nto paralyze large bird Pokémon that try\nto prey on it."
    mondexclassification SPECIES_VENIPEDE, "Centipede Pokémon"
    mondexheight SPECIES_VENIPEDE, "1’04”"
    mondexweight SPECIES_VENIPEDE, "11.7 lbs."


mondata SPECIES_WHIRLIPEDE, "Whirlipede"
    basestats 40, 55, 99, 47, 40, 79
    types TYPE_BUG, TYPE_POISON
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_PECHA_BERRY, ITEM_POISON_BARB
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_POISON_POINT, ABILITY_SWARM
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_WHIRLIPEDE_TM_DATA_0, SPECIES_WHIRLIPEDE_TM_DATA_1, SPECIES_WHIRLIPEDE_TM_DATA_2, SPECIES_WHIRLIPEDE_TM_DATA_3
    mondexentry SPECIES_WHIRLIPEDE, "Protected by a hard shell, it spins\nits body like a wheel and crashes\nfuriously into its enemies."
    mondexclassification SPECIES_WHIRLIPEDE, "Curlipede Pokémon"
    mondexheight SPECIES_WHIRLIPEDE, "3’11”"
    mondexweight SPECIES_WHIRLIPEDE, "129.0 lbs."


mondata SPECIES_SCOLIPEDE, "Scolipede"
    basestats 60, 100, 89, 112, 55, 69
    types TYPE_BUG, TYPE_POISON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_PECHA_BERRY, ITEM_POISON_BARB
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_POISON_POINT, ABILITY_SWARM
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_SCOLIPEDE_TM_DATA_0, SPECIES_SCOLIPEDE_TM_DATA_1, SPECIES_SCOLIPEDE_TM_DATA_2, SPECIES_SCOLIPEDE_TM_DATA_3
    mondexentry SPECIES_SCOLIPEDE, "With quick movements, it chases down\nits foes, attacking relentlessly with\nits horns until it prevails."
    mondexclassification SPECIES_SCOLIPEDE, "Megapede Pokémon"
    mondexheight SPECIES_SCOLIPEDE, "8’02”"
    mondexweight SPECIES_SCOLIPEDE, "442.0 lbs."


mondata SPECIES_COTTONEE, "Cottonee"
    basestats 40, 27, 60, 66, 37, 50
    types TYPE_GRASS, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_GRASS
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_ABSORB_BULB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
    abilities ABILITY_PRANKSTER, ABILITY_INFILTRATOR
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_COTTONEE_TM_DATA_0, SPECIES_COTTONEE_TM_DATA_1, SPECIES_COTTONEE_TM_DATA_2, SPECIES_COTTONEE_TM_DATA_3
    mondexentry SPECIES_COTTONEE, "When attacked, it escapes by shooting\ncotton from its body. The cotton serves\nas a decoy to distract the attacker."
    mondexclassification SPECIES_COTTONEE, "Cotton Puff Pokémon"
    mondexheight SPECIES_COTTONEE, "1’00”"
    mondexweight SPECIES_COTTONEE, "1.3 lbs."


mondata SPECIES_WHIMSICOTT, "Whimsicott"
    basestats 60, 67, 85, 116, 77, 75
    types TYPE_GRASS, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_GRASS
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_ABSORB_BULB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
    abilities ABILITY_PRANKSTER, ABILITY_INFILTRATOR
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_WHIMSICOTT_TM_DATA_0, SPECIES_WHIMSICOTT_TM_DATA_1, SPECIES_WHIMSICOTT_TM_DATA_2, SPECIES_WHIMSICOTT_TM_DATA_3
    mondexentry SPECIES_WHIMSICOTT, "Like the wind, it can slip through any\ngap, no matter how small. It leaves\nballs of white fluff behind."
    mondexclassification SPECIES_WHIMSICOTT, "Windveiled Pokémon"
    mondexheight SPECIES_WHIMSICOTT, "2’04”"
    mondexweight SPECIES_WHIMSICOTT, "14.6 lbs."


mondata SPECIES_PETILIL, "Petilil"
    basestats 45, 35, 50, 30, 70, 50
    types TYPE_GRASS, TYPE_GRASS
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_ABSORB_BULB, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_PETILIL_TM_DATA_0, SPECIES_PETILIL_TM_DATA_1, SPECIES_PETILIL_TM_DATA_2, SPECIES_PETILIL_TM_DATA_3
    mondexentry SPECIES_PETILIL, "The leaves on its head are very bitter.\nEating one of these leaves is known\nto refresh a tired body."
    mondexclassification SPECIES_PETILIL, "Bulb Pokémon"
    mondexheight SPECIES_PETILIL, "1’08”"
    mondexweight SPECIES_PETILIL, "14.6 lbs."


mondata SPECIES_LILLIGANT, "Lilligant"
    basestats 70, 60, 75, 90, 110, 75
    types TYPE_GRASS, TYPE_GRASS
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_ABSORB_BULB, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_LILLIGANT_TM_DATA_0, SPECIES_LILLIGANT_TM_DATA_1, SPECIES_LILLIGANT_TM_DATA_2, SPECIES_LILLIGANT_TM_DATA_3
    mondexentry SPECIES_LILLIGANT, "Even veteran Trainers face a challenge\nin getting its beautiful flower to bloom.\nThis Pokémon is popular with celebrities."
    mondexclassification SPECIES_LILLIGANT, "Flowering Pokémon"
    mondexheight SPECIES_LILLIGANT, "3’07”"
    mondexweight SPECIES_LILLIGANT, "35.9 lbs."


mondata SPECIES_BASCULIN, "Basculin"
    basestats 70, 92, 65, 98, 80, 55
    types TYPE_WATER, TYPE_WATER
    catchrate 25
    baseexp 105
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_DEEP_SEA_TOOTH
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_RECKLESS, ABILITY_ADAPTABILITY
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BASCULIN_TM_DATA_0, SPECIES_BASCULIN_TM_DATA_1, SPECIES_BASCULIN_TM_DATA_2, SPECIES_BASCULIN_TM_DATA_3
    mondexentry SPECIES_BASCULIN, "Red and blue Basculin get along so\npoorly, they’ll start fighting instantly.\nThese Pokémon are very hostile."
    mondexclassification SPECIES_BASCULIN, "Hostile Pokémon"
    mondexheight SPECIES_BASCULIN, "3’03”"
    mondexweight SPECIES_BASCULIN, "39.7 lbs."


mondata SPECIES_SANDILE, "Sandile"
    basestats 50, 72, 35, 65, 35, 35
    types TYPE_GROUND, TYPE_DARK
    catchrate 180
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_BLACK_GLASSES, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_MOXIE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SANDILE_TM_DATA_0, SPECIES_SANDILE_TM_DATA_1, SPECIES_SANDILE_TM_DATA_2, SPECIES_SANDILE_TM_DATA_3
    mondexentry SPECIES_SANDILE, "They live buried in the sands of the\ndesert. The sun-warmed sands prevent\ntheir body temperature from dropping."
    mondexclassification SPECIES_SANDILE, "Desert Croc Pokémon"
    mondexheight SPECIES_SANDILE, "2’04”"
    mondexweight SPECIES_SANDILE, "33.5 lbs."


mondata SPECIES_KROKOROK, "Krokorok"
    basestats 60, 82, 45, 74, 45, 45
    types TYPE_GROUND, TYPE_DARK
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_BLACK_GLASSES, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_MOXIE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_KROKOROK_TM_DATA_0, SPECIES_KROKOROK_TM_DATA_1, SPECIES_KROKOROK_TM_DATA_2, SPECIES_KROKOROK_TM_DATA_3
    mondexentry SPECIES_KROKOROK, "They live in groups of a few individuals.\nProtective membranes shield their eyes\nfrom sandstorms."
    mondexclassification SPECIES_KROKOROK, "Desert Croc Pokémon"
    mondexheight SPECIES_KROKOROK, "3’03”"
    mondexweight SPECIES_KROKOROK, "73.6 lbs."


mondata SPECIES_KROOKODILE, "Krookodile"
    basestats 95, 117, 80, 92, 65, 70
    types TYPE_GROUND, TYPE_DARK
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_BLACK_GLASSES, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_MOXIE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_KROOKODILE_TM_DATA_0, SPECIES_KROOKODILE_TM_DATA_1, SPECIES_KROOKODILE_TM_DATA_2, SPECIES_KROOKODILE_TM_DATA_3
    mondexentry SPECIES_KROOKODILE, "They never allow prey to escape.\nTheir jaws are so powerful, they can\ncrush the body of an automobile."
    mondexclassification SPECIES_KROOKODILE, "Intimidation Pokémon"
    mondexheight SPECIES_KROOKODILE, "4’11”"
    mondexweight SPECIES_KROOKODILE, "212.3 lbs."


mondata SPECIES_DARUMAKA, "Darumaka"
    basestats 70, 90, 45, 50, 15, 45
    types TYPE_FIRE, TYPE_FIRE
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_RAWST_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_HUSTLE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_DARUMAKA_TM_DATA_0, SPECIES_DARUMAKA_TM_DATA_1, SPECIES_DARUMAKA_TM_DATA_2, SPECIES_DARUMAKA_TM_DATA_3
    mondexentry SPECIES_DARUMAKA, "When its internal fire is burning, it\ncannot calm down and it runs around.\nWhen the fire diminishes, it falls asleep."
    mondexclassification SPECIES_DARUMAKA, "Zen Charm Pokémon"
    mondexheight SPECIES_DARUMAKA, "2’00”"
    mondexweight SPECIES_DARUMAKA, "82.7 lbs."


mondata SPECIES_DARMANITAN, "Darmanitan"
    basestats 105, 140, 55, 95, 30, 55
    types TYPE_FIRE, TYPE_FIRE
    catchrate 60
    baseexp 109
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_RAWST_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SHEER_FORCE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_DARMANITAN_TM_DATA_0, SPECIES_DARMANITAN_TM_DATA_1, SPECIES_DARMANITAN_TM_DATA_2, SPECIES_DARMANITAN_TM_DATA_3
    mondexentry SPECIES_DARMANITAN, "Its internal fire burns at 2,500° F,\nmaking enough power that it can\ndestroy a dump truck with one punch."
    mondexclassification SPECIES_DARMANITAN, "Blazing Pokémon"
    mondexheight SPECIES_DARMANITAN, "4’03”"
    mondexweight SPECIES_DARMANITAN, "204.8 lbs."


mondata SPECIES_MARACTUS, "Maractus"
    basestats 75, 86, 67, 60, 106, 67
    types TYPE_GRASS, TYPE_GRASS
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_MIRACLE_SEED, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_WATER_ABSORB, ABILITY_CHLOROPHYLL
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_MARACTUS_TM_DATA_0, SPECIES_MARACTUS_TM_DATA_1, SPECIES_MARACTUS_TM_DATA_2, SPECIES_MARACTUS_TM_DATA_3
    mondexentry SPECIES_MARACTUS, "It uses an up-tempo song and dance\nto drive away the bird Pokémon that\nprey on its flower seeds."
    mondexclassification SPECIES_MARACTUS, "Cactus Pokémon"
    mondexheight SPECIES_MARACTUS, "3’03”"
    mondexweight SPECIES_MARACTUS, "61.7 lbs."


mondata SPECIES_DWEBBLE, "Dwebble"
    basestats 50, 65, 85, 55, 35, 35
    types TYPE_BUG, TYPE_ROCK
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_RARE_BONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_MINERAL
    abilities ABILITY_STURDY, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_DWEBBLE_TM_DATA_0, SPECIES_DWEBBLE_TM_DATA_1, SPECIES_DWEBBLE_TM_DATA_2, SPECIES_DWEBBLE_TM_DATA_3
    mondexentry SPECIES_DWEBBLE, "This Pokémon can easily melt holes in\nhard rocks with a liquid secreted from\nits mouth."
    mondexclassification SPECIES_DWEBBLE, "Rock Inn Pokémon"
    mondexheight SPECIES_DWEBBLE, "1’00”"
    mondexweight SPECIES_DWEBBLE, "32.0 lbs."


mondata SPECIES_CRUSTLE, "Crustle"
    basestats 70, 105, 125, 45, 65, 75
    types TYPE_BUG, TYPE_ROCK
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_RARE_BONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_MINERAL
    abilities ABILITY_STURDY, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CRUSTLE_TM_DATA_0, SPECIES_CRUSTLE_TM_DATA_1, SPECIES_CRUSTLE_TM_DATA_2, SPECIES_CRUSTLE_TM_DATA_3
    mondexentry SPECIES_CRUSTLE, "Competing for territory, Crustle\nfight viciously. The one whose boulder\nis broken is the loser of the battle."
    mondexclassification SPECIES_CRUSTLE, "Stone Home Pokémon"
    mondexheight SPECIES_CRUSTLE, "4’07”"
    mondexweight SPECIES_CRUSTLE, "440.9 lbs."


mondata SPECIES_SCRAGGY, "Scraggy"
    basestats 50, 75, 70, 48, 35, 70
    types TYPE_DARK, TYPE_FIGHTING
    catchrate 180
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_SHED_SHELL, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 35
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_DRAGON
    abilities ABILITY_SHED_SKIN, ABILITY_MOXIE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_SCRAGGY_TM_DATA_0, SPECIES_SCRAGGY_TM_DATA_1, SPECIES_SCRAGGY_TM_DATA_2, SPECIES_SCRAGGY_TM_DATA_3
    mondexentry SPECIES_SCRAGGY, "Its skin has a rubbery elasticity, so\nit can reduce damage by defensively\npulling its skin up to its neck."
    mondexclassification SPECIES_SCRAGGY, "Shedding Pokémon"
    mondexheight SPECIES_SCRAGGY, "2’00”"
    mondexweight SPECIES_SCRAGGY, "26.0 lbs."


mondata SPECIES_SCRAFTY, "Scrafty"
    basestats 65, 90, 115, 58, 45, 115
    types TYPE_DARK, TYPE_FIGHTING
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_SHED_SHELL, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_DRAGON
    abilities ABILITY_SHED_SKIN, ABILITY_MOXIE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_SCRAFTY_TM_DATA_0, SPECIES_SCRAFTY_TM_DATA_1, SPECIES_SCRAFTY_TM_DATA_2, SPECIES_SCRAFTY_TM_DATA_3
    mondexentry SPECIES_SCRAFTY, "Groups of them beat up anything\nthat enters their territory. Each can\nspit acidic liquid from its mouth."
    mondexclassification SPECIES_SCRAFTY, "Hoodlum Pokémon"
    mondexheight SPECIES_SCRAFTY, "3’07”"
    mondexweight SPECIES_SCRAFTY, "66.1 lbs."


mondata SPECIES_SIGILYPH, "Sigilyph"
    basestats 72, 58, 80, 97, 103, 80
    types TYPE_PSYCHIC, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_WONDER_SKIN, ABILITY_MAGIC_GUARD
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SIGILYPH_TM_DATA_0, SPECIES_SIGILYPH_TM_DATA_1, SPECIES_SIGILYPH_TM_DATA_2, SPECIES_SIGILYPH_TM_DATA_3
    mondexentry SPECIES_SIGILYPH, "They never vary the route they fly,\nbecause their memories of guarding\nan ancient city remain steadfast."
    mondexclassification SPECIES_SIGILYPH, "Avianoid Pokémon"
    mondexheight SPECIES_SIGILYPH, "4’07”"
    mondexweight SPECIES_SIGILYPH, "30.9 lbs."


mondata SPECIES_YAMASK, "Yamask"
    basestats 38, 30, 85, 30, 55, 65
    types TYPE_GHOST, TYPE_GHOST
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_SPELL_TAG, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_AMORPHOUS
    abilities ABILITY_MUMMY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_YAMASK_TM_DATA_0, SPECIES_YAMASK_TM_DATA_1, SPECIES_YAMASK_TM_DATA_2, SPECIES_YAMASK_TM_DATA_3
    mondexentry SPECIES_YAMASK, "Each of them carries a mask that used\nto be its face when it was human.\nSometimes they look at it and cry."
    mondexclassification SPECIES_YAMASK, "Spirit Pokémon"
    mondexheight SPECIES_YAMASK, "1’08”"
    mondexweight SPECIES_YAMASK, "3.3 lbs."


mondata SPECIES_COFAGRIGUS, "Cofagrigus"
    basestats 58, 50, 145, 30, 95, 105
    types TYPE_GHOST, TYPE_GHOST
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_SPELL_TAG, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_AMORPHOUS
    abilities ABILITY_MUMMY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_COFAGRIGUS_TM_DATA_0, SPECIES_COFAGRIGUS_TM_DATA_1, SPECIES_COFAGRIGUS_TM_DATA_2, SPECIES_COFAGRIGUS_TM_DATA_3
    mondexentry SPECIES_COFAGRIGUS, "It has been said that they swallow those\nwho get too close and turn them into\nmummies. They like to eat gold nuggets."
    mondexclassification SPECIES_COFAGRIGUS, "Coffin Pokémon"
    mondexheight SPECIES_COFAGRIGUS, "5’07”"
    mondexweight SPECIES_COFAGRIGUS, "168.7 lbs."


mondata SPECIES_TIRTOUGA, "Tirtouga"
    basestats 54, 78, 103, 22, 53, 45
    types TYPE_WATER, TYPE_ROCK
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_SOLID_ROCK, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_TIRTOUGA_TM_DATA_0, SPECIES_TIRTOUGA_TM_DATA_1, SPECIES_TIRTOUGA_TM_DATA_2, SPECIES_TIRTOUGA_TM_DATA_3
    mondexentry SPECIES_TIRTOUGA, "Restored from a fossil, this Pokémon\ncan dive to depths beyond half a mile."
    mondexclassification SPECIES_TIRTOUGA, "Prototurtle Pokémon"
    mondexheight SPECIES_TIRTOUGA, "2’04”"
    mondexweight SPECIES_TIRTOUGA, "36.4 lbs."


mondata SPECIES_CARRACOSTA, "Carracosta"
    basestats 74, 108, 133, 32, 83, 65
    types TYPE_WATER, TYPE_ROCK
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_SOLID_ROCK, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CARRACOSTA_TM_DATA_0, SPECIES_CARRACOSTA_TM_DATA_1, SPECIES_CARRACOSTA_TM_DATA_2, SPECIES_CARRACOSTA_TM_DATA_3
    mondexentry SPECIES_CARRACOSTA, "They can live both in the ocean and on\nland. A slap from one of them is enough\nto open a hole in the bottom of a tanker."
    mondexclassification SPECIES_CARRACOSTA, "Prototurtle Pokémon"
    mondexheight SPECIES_CARRACOSTA, "3’11”"
    mondexweight SPECIES_CARRACOSTA, "178.6 lbs."


mondata SPECIES_ARCHEN, "Archen"
    basestats 55, 112, 45, 70, 74, 45
    types TYPE_ROCK, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_WATER_3
    abilities ABILITY_DEFEATIST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_ARCHEN_TM_DATA_0, SPECIES_ARCHEN_TM_DATA_1, SPECIES_ARCHEN_TM_DATA_2, SPECIES_ARCHEN_TM_DATA_3
    mondexentry SPECIES_ARCHEN, "Said to be an ancestor of bird Pokémon,\nthey were unable to fly and moved about\nby hopping from one branch to another."
    mondexclassification SPECIES_ARCHEN, "First Bird Pokémon"
    mondexheight SPECIES_ARCHEN, "1’08”"
    mondexweight SPECIES_ARCHEN, "20.9 lbs."


mondata SPECIES_ARCHEOPS, "Archeops"
    basestats 75, 140, 65, 110, 112, 65
    types TYPE_ROCK, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_WATER_3
    abilities ABILITY_DEFEATIST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_ARCHEOPS_TM_DATA_0, SPECIES_ARCHEOPS_TM_DATA_1, SPECIES_ARCHEOPS_TM_DATA_2, SPECIES_ARCHEOPS_TM_DATA_3
    mondexentry SPECIES_ARCHEOPS, "They are intelligent and will cooperate\nto catch prey. From the ground, they\nuse a running start to take flight."
    mondexclassification SPECIES_ARCHEOPS, "First Bird Pokémon"
    mondexheight SPECIES_ARCHEOPS, "4’07”"
    mondexweight SPECIES_ARCHEOPS, "70.5 lbs."


mondata SPECIES_TRUBBISH, "Trubbish"
    basestats 50, 50, 62, 65, 40, 62
    types TYPE_POISON, TYPE_POISON
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NUGGET, ITEM_SILK_SCARF
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STENCH, ABILITY_STICKY_HOLD
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_TRUBBISH_TM_DATA_0, SPECIES_TRUBBISH_TM_DATA_1, SPECIES_TRUBBISH_TM_DATA_2, SPECIES_TRUBBISH_TM_DATA_3
    mondexentry SPECIES_TRUBBISH, "Inhaling the gas they belch will make\nyou sleep for a week. They prefer\nunsanitary places."
    mondexclassification SPECIES_TRUBBISH, "Trash Bag Pokémon"
    mondexheight SPECIES_TRUBBISH, "2’00”"
    mondexweight SPECIES_TRUBBISH, "68.3 lbs."


mondata SPECIES_GARBODOR, "Garbodor"
    basestats 80, 95, 82, 75, 60, 82
    types TYPE_POISON, TYPE_POISON
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NUGGET, ITEM_SILK_SCARF
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STENCH, ABILITY_WEAK_ARMOR
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_GARBODOR_TM_DATA_0, SPECIES_GARBODOR_TM_DATA_1, SPECIES_GARBODOR_TM_DATA_2, SPECIES_GARBODOR_TM_DATA_3
    mondexentry SPECIES_GARBODOR, "It clenches opponents with its left arm\nand finishes them off with foul-smelling\npoison gas belched from its mouth."
    mondexclassification SPECIES_GARBODOR, "Trash Heap Pokémon"
    mondexheight SPECIES_GARBODOR, "6’03”"
    mondexweight SPECIES_GARBODOR, "236.6 lbs."


mondata SPECIES_ZORUA, "Zorua"
    basestats 40, 65, 40, 65, 80, 40
    types TYPE_DARK, TYPE_DARK
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_ILLUSION, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_ZORUA_TM_DATA_0, SPECIES_ZORUA_TM_DATA_1, SPECIES_ZORUA_TM_DATA_2, SPECIES_ZORUA_TM_DATA_3
    mondexentry SPECIES_ZORUA, "It changes into the forms of others\nto surprise them. Apparently, it\noften transforms into a silent child."
    mondexclassification SPECIES_ZORUA, "Tricky Fox Pokémon"
    mondexheight SPECIES_ZORUA, "2’04”"
    mondexweight SPECIES_ZORUA, "27.6 lbs."


mondata SPECIES_ZOROARK, "Zoroark"
    basestats 60, 105, 60, 105, 120, 60
    types TYPE_DARK, TYPE_DARK
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_ILLUSION, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_ZOROARK_TM_DATA_0, SPECIES_ZOROARK_TM_DATA_1, SPECIES_ZOROARK_TM_DATA_2, SPECIES_ZOROARK_TM_DATA_3
    mondexentry SPECIES_ZOROARK, "Bonds between these Pokémon are very\nstrong. It protects the safety of its\npack by tricking its opponents."
    mondexclassification SPECIES_ZOROARK, "Illusion Fox Pokémon"
    mondexheight SPECIES_ZOROARK, "5’03”"
    mondexweight SPECIES_ZOROARK, "178.8 lbs."


mondata SPECIES_MINCCINO, "Minccino"
    basestats 55, 50, 40, 75, 40, 40
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_CHESTO_BERRY, ITEM_NONE
    genderratio 190
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CUTE_CHARM, ABILITY_TECHNICIAN
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MINCCINO_TM_DATA_0, SPECIES_MINCCINO_TM_DATA_1, SPECIES_MINCCINO_TM_DATA_2, SPECIES_MINCCINO_TM_DATA_3
    mondexentry SPECIES_MINCCINO, "They greet one another by rubbing each\nother with their tails, which are always\nkept well groomed and clean."
    mondexclassification SPECIES_MINCCINO, "Chinchilla Pokémon"
    mondexheight SPECIES_MINCCINO, "1’04”"
    mondexweight SPECIES_MINCCINO, "12.8 lbs."


mondata SPECIES_CINCCINO, "Cinccino"
    basestats 75, 95, 60, 115, 65, 60
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_CHESTO_BERRY, ITEM_NONE
    genderratio 190
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CUTE_CHARM, ABILITY_TECHNICIAN
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_CINCCINO_TM_DATA_0, SPECIES_CINCCINO_TM_DATA_1, SPECIES_CINCCINO_TM_DATA_2, SPECIES_CINCCINO_TM_DATA_3
    mondexentry SPECIES_CINCCINO, "Their white fur is coated in a special oil\nthat makes it easy for them to\ndeflect attacks."
    mondexclassification SPECIES_CINCCINO, "Scarf Pokémon"
    mondexheight SPECIES_CINCCINO, "1’08”"
    mondexweight SPECIES_CINCCINO, "16.5 lbs."


mondata SPECIES_GOTHITA, "Gothita"
    basestats 45, 30, 50, 45, 55, 65
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_PERSIM_BERRY, ITEM_NONE
    genderratio 190
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_FRISK, ABILITY_COMPETITIVE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GOTHITA_TM_DATA_0, SPECIES_GOTHITA_TM_DATA_1, SPECIES_GOTHITA_TM_DATA_2, SPECIES_GOTHITA_TM_DATA_3
    mondexentry SPECIES_GOTHITA, "Their ribbonlike feelers increase their\npsychic power. They are always staring\nat something."
    mondexclassification SPECIES_GOTHITA, "Fixation Pokémon"
    mondexheight SPECIES_GOTHITA, "1’04”"
    mondexweight SPECIES_GOTHITA, "12.8 lbs."


mondata SPECIES_GOTHORITA, "Gothorita"
    basestats 60, 45, 70, 55, 75, 85
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 100
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_PERSIM_BERRY, ITEM_NONE
    genderratio 190
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_FRISK, ABILITY_COMPETITIVE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GOTHORITA_TM_DATA_0, SPECIES_GOTHORITA_TM_DATA_1, SPECIES_GOTHORITA_TM_DATA_2, SPECIES_GOTHORITA_TM_DATA_3
    mondexentry SPECIES_GOTHORITA, "They use hypnosis to control people and\nPokémon. Tales of Gothorita leading\npeople astray are told in every corner."
    mondexclassification SPECIES_GOTHORITA, "Manipulate Pokémon"
    mondexheight SPECIES_GOTHORITA, "2’04”"
    mondexweight SPECIES_GOTHORITA, "39.7 lbs."


mondata SPECIES_GOTHITELLE, "Gothitelle"
    basestats 70, 55, 95, 65, 95, 110
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 50
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_PERSIM_BERRY, ITEM_NONE
    genderratio 190
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_FRISK, ABILITY_COMPETITIVE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GOTHITELLE_TM_DATA_0, SPECIES_GOTHITELLE_TM_DATA_1, SPECIES_GOTHITELLE_TM_DATA_2, SPECIES_GOTHITELLE_TM_DATA_3
    mondexentry SPECIES_GOTHITELLE, "Starry skies thousands of light-years\naway are visible in the space distorted\nby their intense psychic power."
    mondexclassification SPECIES_GOTHITELLE, "Astral Body Pokémon"
    mondexheight SPECIES_GOTHITELLE, "4’11”"
    mondexweight SPECIES_GOTHITELLE, "97.0 lbs."


mondata SPECIES_SOLOSIS, "Solosis"
    basestats 45, 30, 40, 20, 105, 50
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_PERSIM_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_OVERCOAT, ABILITY_MAGIC_GUARD
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SOLOSIS_TM_DATA_0, SPECIES_SOLOSIS_TM_DATA_1, SPECIES_SOLOSIS_TM_DATA_2, SPECIES_SOLOSIS_TM_DATA_3
    mondexentry SPECIES_SOLOSIS, "They drive away attackers by unleashing\npsychic power. They can use telepathy\nto talk with others."
    mondexclassification SPECIES_SOLOSIS, "Cell Pokémon"
    mondexheight SPECIES_SOLOSIS, "1’00”"
    mondexweight SPECIES_SOLOSIS, "2.2 lbs."


mondata SPECIES_DUOSION, "Duosion"
    basestats 65, 40, 50, 30, 125, 60
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 100
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_PERSIM_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_OVERCOAT, ABILITY_MAGIC_GUARD
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_DUOSION_TM_DATA_0, SPECIES_DUOSION_TM_DATA_1, SPECIES_DUOSION_TM_DATA_2, SPECIES_DUOSION_TM_DATA_3
    mondexentry SPECIES_DUOSION, "Since they have two divided brains,\nat times they suddenly try to take two\ndifferent actions at once."
    mondexclassification SPECIES_DUOSION, "Mitosis Pokémon"
    mondexheight SPECIES_DUOSION, "2’00”"
    mondexweight SPECIES_DUOSION, "17.6 lbs."


mondata SPECIES_REUNICLUS, "Reuniclus"
    basestats 110, 65, 75, 30, 125, 85
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 50
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_PERSIM_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_OVERCOAT, ABILITY_MAGIC_GUARD
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_REUNICLUS_TM_DATA_0, SPECIES_REUNICLUS_TM_DATA_1, SPECIES_REUNICLUS_TM_DATA_2, SPECIES_REUNICLUS_TM_DATA_3
    mondexentry SPECIES_REUNICLUS, "When Reuniclus shake hands, a network\nforms between their brains, increasing\ntheir psychic power."
    mondexclassification SPECIES_REUNICLUS, "Multiplying Pokémon"
    mondexheight SPECIES_REUNICLUS, "3’03”"
    mondexweight SPECIES_REUNICLUS, "44.3 lbs."


mondata SPECIES_DUCKLETT, "Ducklett"
    basestats 62, 44, 50, 55, 44, 50
    types TYPE_WATER, TYPE_FLYING
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_BIG_PECKS
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_DUCKLETT_TM_DATA_0, SPECIES_DUCKLETT_TM_DATA_1, SPECIES_DUCKLETT_TM_DATA_2, SPECIES_DUCKLETT_TM_DATA_3
    mondexentry SPECIES_DUCKLETT, "These bird Pokémon are excellent divers.\nThey swim around in the water eating\ntheir favorite food--peat moss."
    mondexclassification SPECIES_DUCKLETT, "Water Bird Pokémon"
    mondexheight SPECIES_DUCKLETT, "1’08”"
    mondexweight SPECIES_DUCKLETT, "12.1 lbs."


mondata SPECIES_SWANNA, "Swanna"
    basestats 75, 87, 63, 98, 87, 63
    types TYPE_WATER, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_BIG_PECKS
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SWANNA_TM_DATA_0, SPECIES_SWANNA_TM_DATA_1, SPECIES_SWANNA_TM_DATA_2, SPECIES_SWANNA_TM_DATA_3
    mondexentry SPECIES_SWANNA, "Swanna start to dance at dusk.\nThe one dancing in the middle is\nthe leader of the flock."
    mondexclassification SPECIES_SWANNA, "White Bird Pokémon"
    mondexheight SPECIES_SWANNA, "4’03”"
    mondexweight SPECIES_SWANNA, "53.4 lbs."


mondata SPECIES_VANILLITE, "Vanillite"
    basestats 36, 50, 50, 44, 65, 60
    types TYPE_ICE, TYPE_ICE
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NEVER_MELT_ICE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_ICE_BODY, ABILITY_SNOW_CLOAK
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_VANILLITE_TM_DATA_0, SPECIES_VANILLITE_TM_DATA_1, SPECIES_VANILLITE_TM_DATA_2, SPECIES_VANILLITE_TM_DATA_3
    mondexentry SPECIES_VANILLITE, "The temperature of their breath\nis -58° F. They create snow crystals and\nmake snow fall in the areas around them."
    mondexclassification SPECIES_VANILLITE, "Fresh Snow Pokémon"
    mondexheight SPECIES_VANILLITE, "1’04”"
    mondexweight SPECIES_VANILLITE, "12.6 lbs."


mondata SPECIES_VANILLISH, "Vanillish"
    basestats 51, 65, 65, 59, 80, 75
    types TYPE_ICE, TYPE_ICE
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NEVER_MELT_ICE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_ICE_BODY, ABILITY_SNOW_CLOAK
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_VANILLISH_TM_DATA_0, SPECIES_VANILLISH_TM_DATA_1, SPECIES_VANILLISH_TM_DATA_2, SPECIES_VANILLISH_TM_DATA_3
    mondexentry SPECIES_VANILLISH, "Snowy mountains are this Pokémon’s\nhabitat. During an ancient ice age, they\nmoved to southern areas."
    mondexclassification SPECIES_VANILLISH, "Icy Snow Pokémon"
    mondexheight SPECIES_VANILLISH, "3’07”"
    mondexweight SPECIES_VANILLISH, "90.4 lbs."


mondata SPECIES_VANILLUXE, "Vanilluxe"
    basestats 71, 95, 85, 79, 110, 95
    types TYPE_ICE, TYPE_ICE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NEVER_MELT_ICE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_ICE_BODY, ABILITY_SNOW_WARNING
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_VANILLUXE_TM_DATA_0, SPECIES_VANILLUXE_TM_DATA_1, SPECIES_VANILLUXE_TM_DATA_2, SPECIES_VANILLUXE_TM_DATA_3
    mondexentry SPECIES_VANILLUXE, "Swallowing large amounts of water, they\nmake snow clouds inside their bodies and\nattack their foes with violent blizzards."
    mondexclassification SPECIES_VANILLUXE, "Snowstorm Pokémon"
    mondexheight SPECIES_VANILLUXE, "4’03”"
    mondexweight SPECIES_VANILLUXE, "126.8 lbs."


mondata SPECIES_DEERLING, "Deerling"
    basestats 60, 60, 50, 75, 40, 50
    types TYPE_NORMAL, TYPE_GRASS
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CHLOROPHYLL, ABILITY_SAP_SIPPER
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_DEERLING_TM_DATA_0, SPECIES_DEERLING_TM_DATA_1, SPECIES_DEERLING_TM_DATA_2, SPECIES_DEERLING_TM_DATA_3
    mondexentry SPECIES_DEERLING, "The color and scent of their fur changes\nto match the mountain grass. When they\nsense hostility, they hide in the grass."
    mondexclassification SPECIES_DEERLING, "Season Pokémon"
    mondexheight SPECIES_DEERLING, "2’00”"
    mondexweight SPECIES_DEERLING, "43.0 lbs."


mondata SPECIES_SAWSBUCK, "Sawsbuck"
    basestats 80, 100, 70, 95, 60, 70
    types TYPE_NORMAL, TYPE_GRASS
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CHLOROPHYLL, ABILITY_SAP_SIPPER
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SAWSBUCK_TM_DATA_0, SPECIES_SAWSBUCK_TM_DATA_1, SPECIES_SAWSBUCK_TM_DATA_2, SPECIES_SAWSBUCK_TM_DATA_3
    mondexentry SPECIES_SAWSBUCK, "They migrate according to the seasons.\nPeople can tell the season by looking at\nSawsbuck’s horns."
    mondexclassification SPECIES_SAWSBUCK, "Season Pokémon"
    mondexheight SPECIES_SAWSBUCK, "6’03”"
    mondexweight SPECIES_SAWSBUCK, "203.9 lbs."


mondata SPECIES_EMOLGA, "Emolga"
    basestats 55, 75, 60, 103, 75, 60
    types TYPE_ELECTRIC, TYPE_FLYING
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_CHERI_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_STATIC, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_EMOLGA_TM_DATA_0, SPECIES_EMOLGA_TM_DATA_1, SPECIES_EMOLGA_TM_DATA_2, SPECIES_EMOLGA_TM_DATA_3
    mondexentry SPECIES_EMOLGA, "The energy made in its cheek’s electric\npouches is stored inside its membrane\nand released while it is gliding."
    mondexclassification SPECIES_EMOLGA, "Sky Squirrel Pokémon"
    mondexheight SPECIES_EMOLGA, "1’04”"
    mondexweight SPECIES_EMOLGA, "11.0 lbs."


mondata SPECIES_KARRABLAST, "Karrablast"
    basestats 50, 75, 45, 60, 40, 45
    types TYPE_BUG, TYPE_BUG
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_SHED_SKIN
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_KARRABLAST_TM_DATA_0, SPECIES_KARRABLAST_TM_DATA_1, SPECIES_KARRABLAST_TM_DATA_2, SPECIES_KARRABLAST_TM_DATA_3
    mondexentry SPECIES_KARRABLAST, "These mysterious Pokémon evolve when\nthey receive electrical stimulation while\nthey are in the same place as Shelmet."
    mondexclassification SPECIES_KARRABLAST, "Clamping Pokémon"
    mondexheight SPECIES_KARRABLAST, "1’08”"
    mondexweight SPECIES_KARRABLAST, "13.0 lbs."


mondata SPECIES_ESCAVALIER, "Escavalier"
    basestats 70, 135, 105, 20, 60, 105
    types TYPE_BUG, TYPE_STEEL
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_ESCAVALIER_TM_DATA_0, SPECIES_ESCAVALIER_TM_DATA_1, SPECIES_ESCAVALIER_TM_DATA_2, SPECIES_ESCAVALIER_TM_DATA_3
    mondexentry SPECIES_ESCAVALIER, "They fly around at high speed, striking\nwith their pointed spears. Even when in\ntrouble, they face opponents bravely."
    mondexclassification SPECIES_ESCAVALIER, "Cavalry Pokémon"
    mondexheight SPECIES_ESCAVALIER, "3’03”"
    mondexweight SPECIES_ESCAVALIER, "72.8 lbs."


mondata SPECIES_FOONGUS, "Foongus"
    basestats 69, 55, 45, 15, 55, 55
    types TYPE_GRASS, TYPE_POISON
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_TINY_MUSHROOM, ITEM_BIG_MUSHROOM
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_EFFECT_SPORE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_FOONGUS_TM_DATA_0, SPECIES_FOONGUS_TM_DATA_1, SPECIES_FOONGUS_TM_DATA_2, SPECIES_FOONGUS_TM_DATA_3
    mondexentry SPECIES_FOONGUS, "It lures people in with its Poké Ball\npattern, then releases poison spores.\nWhy it resembles a Poké Ball is unknown."
    mondexclassification SPECIES_FOONGUS, "Mushroom Pokémon"
    mondexheight SPECIES_FOONGUS, "0’08”"
    mondexweight SPECIES_FOONGUS, "2.2 lbs."


mondata SPECIES_AMOONGUSS, "Amoonguss"
    basestats 114, 85, 70, 30, 85, 80
    types TYPE_GRASS, TYPE_POISON
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_TINY_MUSHROOM, ITEM_BIG_MUSHROOM
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_EFFECT_SPORE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_AMOONGUSS_TM_DATA_0, SPECIES_AMOONGUSS_TM_DATA_1, SPECIES_AMOONGUSS_TM_DATA_2, SPECIES_AMOONGUSS_TM_DATA_3
    mondexentry SPECIES_AMOONGUSS, "It lures prey close by dancing and\nwaving its arm caps, which resemble\nPoké Balls, in a swaying motion."
    mondexclassification SPECIES_AMOONGUSS, "Mushroom Pokémon"
    mondexheight SPECIES_AMOONGUSS, "2’00”"
    mondexweight SPECIES_AMOONGUSS, "23.1 lbs."


mondata SPECIES_FRILLISH, "Frillish"
    basestats 55, 40, 50, 40, 65, 85
    types TYPE_WATER, TYPE_GHOST
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_WATER_ABSORB, ABILITY_CURSED_BODY
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_FRILLISH_TM_DATA_0, SPECIES_FRILLISH_TM_DATA_1, SPECIES_FRILLISH_TM_DATA_2, SPECIES_FRILLISH_TM_DATA_3
    mondexentry SPECIES_FRILLISH, "With its thin, veil-like arms wrapped\naround the body of its opponent,\nit sinks to the ocean floor."
    mondexclassification SPECIES_FRILLISH, "Floating Pokémon"
    mondexheight SPECIES_FRILLISH, "3’11”"
    mondexweight SPECIES_FRILLISH, "72.8 lbs."


mondata SPECIES_JELLICENT, "Jellicent"
    basestats 100, 60, 70, 60, 85, 105
    types TYPE_WATER, TYPE_GHOST
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_WATER_ABSORB, ABILITY_CURSED_BODY
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_JELLICENT_TM_DATA_0, SPECIES_JELLICENT_TM_DATA_1, SPECIES_JELLICENT_TM_DATA_2, SPECIES_JELLICENT_TM_DATA_3
    mondexentry SPECIES_JELLICENT, "The fate of the ships and crew that\nwander into Jellicent’s habitat:\nall sunken, all lost, all vanished."
    mondexclassification SPECIES_JELLICENT, "Floating Pokémon"
    mondexheight SPECIES_JELLICENT, "7’03”"
    mondexweight SPECIES_JELLICENT, "297.6 lbs."


mondata SPECIES_ALOMOMOLA, "Alomomola"
    basestats 165, 75, 80, 65, 40, 45
    types TYPE_WATER, TYPE_WATER
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_2
    abilities ABILITY_HEALER, ABILITY_HYDRATION
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_ALOMOMOLA_TM_DATA_0, SPECIES_ALOMOMOLA_TM_DATA_1, SPECIES_ALOMOMOLA_TM_DATA_2, SPECIES_ALOMOMOLA_TM_DATA_3
    mondexentry SPECIES_ALOMOMOLA, "The special membrane enveloping\nAlomomola has the ability to heal wounds."
    mondexclassification SPECIES_ALOMOMOLA, "Caring Pokémon"
    mondexheight SPECIES_ALOMOMOLA, "3’11”"
    mondexweight SPECIES_ALOMOMOLA, "69.7 lbs."


mondata SPECIES_JOLTIK, "Joltik"
    basestats 50, 47, 50, 65, 57, 50
    types TYPE_BUG, TYPE_ELECTRIC
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_COMPOUND_EYES, ABILITY_UNNERVE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_JOLTIK_TM_DATA_0, SPECIES_JOLTIK_TM_DATA_1, SPECIES_JOLTIK_TM_DATA_2, SPECIES_JOLTIK_TM_DATA_3
    mondexentry SPECIES_JOLTIK, "Joltik that live in cities have learned\na technique for sucking electricity\nfrom the outlets in houses."
    mondexclassification SPECIES_JOLTIK, "Attaching Pokémon"
    mondexheight SPECIES_JOLTIK, "0’04”"
    mondexweight SPECIES_JOLTIK, "1.3 lbs."


mondata SPECIES_GALVANTULA, "Galvantula"
    basestats 70, 77, 60, 108, 97, 60
    types TYPE_BUG, TYPE_ELECTRIC
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_COMPOUND_EYES, ABILITY_UNNERVE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_GALVANTULA_TM_DATA_0, SPECIES_GALVANTULA_TM_DATA_1, SPECIES_GALVANTULA_TM_DATA_2, SPECIES_GALVANTULA_TM_DATA_3
    mondexentry SPECIES_GALVANTULA, "When attacked, they create an\nelectric barrier by spitting out\nmany electrically charged threads."
    mondexclassification SPECIES_GALVANTULA, "EleSpider Pokémon"
    mondexheight SPECIES_GALVANTULA, "2’07”"
    mondexweight SPECIES_GALVANTULA, "31.5 lbs."


mondata SPECIES_FERROSEED, "Ferroseed"
    basestats 44, 50, 91, 10, 24, 86
    types TYPE_GRASS, TYPE_STEEL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_STICKY_BARB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_MINERAL
    abilities ABILITY_IRON_BARBS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_FERROSEED_TM_DATA_0, SPECIES_FERROSEED_TM_DATA_1, SPECIES_FERROSEED_TM_DATA_2, SPECIES_FERROSEED_TM_DATA_3
    mondexentry SPECIES_FERROSEED, "When threatened, it attacks by\nshooting a barrage of spikes, which gives\nit a chance to escape by rolling away."
    mondexclassification SPECIES_FERROSEED, "Thorn Seed Pokémon"
    mondexheight SPECIES_FERROSEED, "2’00”"
    mondexweight SPECIES_FERROSEED, "41.4 lbs."


mondata SPECIES_FERROTHORN, "Ferrothorn"
    basestats 74, 94, 131, 20, 54, 116
    types TYPE_GRASS, TYPE_STEEL
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_STICKY_BARB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_MINERAL
    abilities ABILITY_IRON_BARBS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_FERROTHORN_TM_DATA_0, SPECIES_FERROTHORN_TM_DATA_1, SPECIES_FERROTHORN_TM_DATA_2, SPECIES_FERROTHORN_TM_DATA_3
    mondexentry SPECIES_FERROTHORN, "It fights by swinging around its three\nspiky feelers. A hit from these steel\nspikes can reduce a boulder to rubble."
    mondexclassification SPECIES_FERROTHORN, "Thorn Seed Pokémon"
    mondexheight SPECIES_FERROTHORN, "3’03”"
    mondexweight SPECIES_FERROTHORN, "242.5 lbs."


mondata SPECIES_KLINK, "Klink"
    basestats 40, 55, 70, 30, 45, 60
    types TYPE_STEEL, TYPE_STEEL
    catchrate 130
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_PLUS, ABILITY_MINUS
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_KLINK_TM_DATA_0, SPECIES_KLINK_TM_DATA_1, SPECIES_KLINK_TM_DATA_2, SPECIES_KLINK_TM_DATA_3
    mondexentry SPECIES_KLINK, "The two minigears that mesh together\nare predetermined. Each will rebound\nfrom other minigears without meshing."
    mondexclassification SPECIES_KLINK, "Gear Pokémon"
    mondexheight SPECIES_KLINK, "1’00”"
    mondexweight SPECIES_KLINK, "46.3 lbs."


mondata SPECIES_KLANG, "Klang"
    basestats 60, 80, 95, 50, 70, 85
    types TYPE_STEEL, TYPE_STEEL
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_PLUS, ABILITY_MINUS
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_KLANG_TM_DATA_0, SPECIES_KLANG_TM_DATA_1, SPECIES_KLANG_TM_DATA_2, SPECIES_KLANG_TM_DATA_3
    mondexentry SPECIES_KLANG, "By changing the direction in which it\nrotates, it communicates its feelings to\nothers. When angry, it rotates faster."
    mondexclassification SPECIES_KLANG, "Gear Pokémon"
    mondexheight SPECIES_KLANG, "2’00”"
    mondexweight SPECIES_KLANG, "112.4 lbs."


mondata SPECIES_KLINKLANG, "Klinklang"
    basestats 60, 100, 115, 90, 70, 85
    types TYPE_STEEL, TYPE_STEEL
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_PLUS, ABILITY_MINUS
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_KLINKLANG_TM_DATA_0, SPECIES_KLINKLANG_TM_DATA_1, SPECIES_KLINKLANG_TM_DATA_2, SPECIES_KLINKLANG_TM_DATA_3
    mondexentry SPECIES_KLINKLANG, "Its red core functions as an energy\ntank. It fires the charged energy\nthrough its spikes into an area."
    mondexclassification SPECIES_KLINKLANG, "Gear Pokémon"
    mondexheight SPECIES_KLINKLANG, "2’00”"
    mondexweight SPECIES_KLINKLANG, "178.6 lbs."


mondata SPECIES_TYNAMO, "Tynamo"
    basestats 35, 55, 40, 60, 45, 40
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_TYNAMO_TM_DATA_0, SPECIES_TYNAMO_TM_DATA_1, SPECIES_TYNAMO_TM_DATA_2, SPECIES_TYNAMO_TM_DATA_3
    mondexentry SPECIES_TYNAMO, "While one alone doesn’t have much power,\na chain of many Tynamo can be as\npowerful as lightning."
    mondexclassification SPECIES_TYNAMO, "EleFish Pokémon"
    mondexheight SPECIES_TYNAMO, "0’08”"
    mondexweight SPECIES_TYNAMO, "0.7 lbs."


mondata SPECIES_EELEKTRIK, "Eelektrik"
    basestats 65, 85, 70, 40, 75, 70
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_EELEKTRIK_TM_DATA_0, SPECIES_EELEKTRIK_TM_DATA_1, SPECIES_EELEKTRIK_TM_DATA_2, SPECIES_EELEKTRIK_TM_DATA_3
    mondexentry SPECIES_EELEKTRIK, "They coil around foes and shock them\nwith electricity-generating organs that\nseem simply to be circular patterns."
    mondexclassification SPECIES_EELEKTRIK, "EleFish Pokémon"
    mondexheight SPECIES_EELEKTRIK, "3’11”"
    mondexweight SPECIES_EELEKTRIK, "48.5 lbs."


mondata SPECIES_EELEKTROSS, "Eelektross"
    basestats 85, 115, 80, 50, 105, 80
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_EELEKTROSS_TM_DATA_0, SPECIES_EELEKTROSS_TM_DATA_1, SPECIES_EELEKTROSS_TM_DATA_2, SPECIES_EELEKTROSS_TM_DATA_3
    mondexentry SPECIES_EELEKTROSS, "They crawl out of the ocean using their\narms. They will attack prey on shore and\nimmediately drag it into the ocean."
    mondexclassification SPECIES_EELEKTROSS, "EleFish Pokémon"
    mondexheight SPECIES_EELEKTROSS, "6’11”"
    mondexweight SPECIES_EELEKTROSS, "117.5 lbs."


mondata SPECIES_ELGYEM, "Elgyem"
    basestats 55, 55, 55, 30, 85, 55
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_TELEPATHY, ABILITY_SYNCHRONIZE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_ELGYEM_TM_DATA_0, SPECIES_ELGYEM_TM_DATA_1, SPECIES_ELGYEM_TM_DATA_2, SPECIES_ELGYEM_TM_DATA_3
    mondexentry SPECIES_ELGYEM, "It uses its strong psychic power\nto squeeze its opponent’s brain,\ncausing unendurable headaches."
    mondexclassification SPECIES_ELGYEM, "Cerebral Pokémon"
    mondexheight SPECIES_ELGYEM, "1’08”"
    mondexweight SPECIES_ELGYEM, "19.8 lbs."


mondata SPECIES_BEHEEYEM, "Beheeyem"
    basestats 75, 75, 75, 40, 125, 95
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_TELEPATHY, ABILITY_SYNCHRONIZE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BEHEEYEM_TM_DATA_0, SPECIES_BEHEEYEM_TM_DATA_1, SPECIES_BEHEEYEM_TM_DATA_2, SPECIES_BEHEEYEM_TM_DATA_3
    mondexentry SPECIES_BEHEEYEM, "It can manipulate an opponent’s memory.\nApparently, it communicates by flashing\nits three different-colored fingers."
    mondexclassification SPECIES_BEHEEYEM, "Cerebral Pokémon"
    mondexheight SPECIES_BEHEEYEM, "3’03”"
    mondexweight SPECIES_BEHEEYEM, "76.1 lbs."


mondata SPECIES_LITWICK, "Litwick"
    basestats 50, 30, 55, 20, 65, 55
    types TYPE_GHOST, TYPE_FIRE
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_FLASH_FIRE, ABILITY_FLAME_BODY
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_LITWICK_TM_DATA_0, SPECIES_LITWICK_TM_DATA_1, SPECIES_LITWICK_TM_DATA_2, SPECIES_LITWICK_TM_DATA_3
    mondexentry SPECIES_LITWICK, "Litwick shines a light that absorbs the\nlife energy of people and Pokémon,\nwhich becomes the fuel that it burns."
    mondexclassification SPECIES_LITWICK, "Candle Pokémon"
    mondexheight SPECIES_LITWICK, "1’00”"
    mondexweight SPECIES_LITWICK, "6.8 lbs."


mondata SPECIES_LAMPENT, "Lampent"
    basestats 60, 40, 60, 55, 95, 60
    types TYPE_GHOST, TYPE_FIRE
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_FLASH_FIRE, ABILITY_FLAME_BODY
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_LAMPENT_TM_DATA_0, SPECIES_LAMPENT_TM_DATA_1, SPECIES_LAMPENT_TM_DATA_2, SPECIES_LAMPENT_TM_DATA_3
    mondexentry SPECIES_LAMPENT, "This ominous Pokémon is feared.\nThrough cities it wanders, searching\nfor the spirits of the fallen."
    mondexclassification SPECIES_LAMPENT, "Lamp Pokémon"
    mondexheight SPECIES_LAMPENT, "2’00”"
    mondexweight SPECIES_LAMPENT, "28.7 lbs."


mondata SPECIES_CHANDELURE, "Chandelure"
    basestats 60, 55, 90, 80, 145, 90
    types TYPE_GHOST, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_FLASH_FIRE, ABILITY_FLAME_BODY
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_CHANDELURE_TM_DATA_0, SPECIES_CHANDELURE_TM_DATA_1, SPECIES_CHANDELURE_TM_DATA_2, SPECIES_CHANDELURE_TM_DATA_3
    mondexentry SPECIES_CHANDELURE, "It absorbs a spirit, which it then burns.\nBy waving the flames on its arms,\nit puts its foes into a hypnotic trance."
    mondexclassification SPECIES_CHANDELURE, "Luring Pokémon"
    mondexheight SPECIES_CHANDELURE, "3’03”"
    mondexweight SPECIES_CHANDELURE, "75.6 lbs."


mondata SPECIES_AXEW, "Axew"
    basestats 46, 87, 60, 57, 30, 40
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_RIVALRY, ABILITY_MOLD_BREAKER
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_AXEW_TM_DATA_0, SPECIES_AXEW_TM_DATA_1, SPECIES_AXEW_TM_DATA_2, SPECIES_AXEW_TM_DATA_3
    mondexentry SPECIES_AXEW, "They use their tusks to crush the\nberries they eat. Repeated regrowth\nmakes their tusks strong and sharp."
    mondexclassification SPECIES_AXEW, "Tusk Pokémon"
    mondexheight SPECIES_AXEW, "2’00”"
    mondexweight SPECIES_AXEW, "39.7 lbs."


mondata SPECIES_FRAXURE, "Fraxure"
    basestats 66, 117, 70, 67, 40, 50
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_RIVALRY, ABILITY_MOLD_BREAKER
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_FRAXURE_TM_DATA_0, SPECIES_FRAXURE_TM_DATA_1, SPECIES_FRAXURE_TM_DATA_2, SPECIES_FRAXURE_TM_DATA_3
    mondexentry SPECIES_FRAXURE, "Since a broken tusk will not grow back,\nthey diligently sharpen their tusks on\nriver rocks after they’ve been fighting."
    mondexclassification SPECIES_FRAXURE, "Axe Jaw Pokémon"
    mondexheight SPECIES_FRAXURE, "3’03”"
    mondexweight SPECIES_FRAXURE, "79.4 lbs."


mondata SPECIES_HAXORUS, "Haxorus"
    basestats 76, 147, 90, 97, 60, 70
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_RIVALRY, ABILITY_MOLD_BREAKER
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_HAXORUS_TM_DATA_0, SPECIES_HAXORUS_TM_DATA_1, SPECIES_HAXORUS_TM_DATA_2, SPECIES_HAXORUS_TM_DATA_3
    mondexentry SPECIES_HAXORUS, "They are kind but can be relentless\nwhen defending territory. They challenge\nfoes with tusks that can cut steel."
    mondexclassification SPECIES_HAXORUS, "Axe Jaw Pokémon"
    mondexheight SPECIES_HAXORUS, "5’11”"
    mondexweight SPECIES_HAXORUS, "232.6 lbs."


mondata SPECIES_CUBCHOO, "Cubchoo"
    basestats 55, 70, 40, 40, 60, 40
    types TYPE_ICE, TYPE_ICE
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_ASPEAR_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SNOW_CLOAK, ABILITY_SLUSH_RUSH
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_CUBCHOO_TM_DATA_0, SPECIES_CUBCHOO_TM_DATA_1, SPECIES_CUBCHOO_TM_DATA_2, SPECIES_CUBCHOO_TM_DATA_3
    mondexentry SPECIES_CUBCHOO, "When it is not feeling well, its mucus\ngets watery and the power of its\nIce-type moves decreases."
    mondexclassification SPECIES_CUBCHOO, "Chill Pokémon"
    mondexheight SPECIES_CUBCHOO, "1’08”"
    mondexweight SPECIES_CUBCHOO, "18.7 lbs."


mondata SPECIES_BEARTIC, "Beartic"
    basestats 95, 130, 80, 50, 70, 80
    types TYPE_ICE, TYPE_ICE
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_ASPEAR_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SNOW_CLOAK, ABILITY_SLUSH_RUSH
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_BEARTIC_TM_DATA_0, SPECIES_BEARTIC_TM_DATA_1, SPECIES_BEARTIC_TM_DATA_2, SPECIES_BEARTIC_TM_DATA_3
    mondexentry SPECIES_BEARTIC, "It can make its breath freeze at will.\nVery able in the water, it swims around\nin northern seas and catches prey."
    mondexclassification SPECIES_BEARTIC, "Freezing Pokémon"
    mondexheight SPECIES_BEARTIC, "8’06”"
    mondexweight SPECIES_BEARTIC, "573.2 lbs."


mondata SPECIES_CRYOGONAL, "Cryogonal"
    basestats 80, 50, 50, 105, 95, 135
    types TYPE_ICE, TYPE_ICE
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NEVER_MELT_ICE, ITEM_NONE
    genderratio 255
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CRYOGONAL_TM_DATA_0, SPECIES_CRYOGONAL_TM_DATA_1, SPECIES_CRYOGONAL_TM_DATA_2, SPECIES_CRYOGONAL_TM_DATA_3
    mondexentry SPECIES_CRYOGONAL, "When its body temperature goes up, it\nturns into steam and vanishes. When its\ntemperature lowers, it returns to ice."
    mondexclassification SPECIES_CRYOGONAL, "Crystallizing Pokémon"
    mondexheight SPECIES_CRYOGONAL, "3’07”"
    mondexweight SPECIES_CRYOGONAL, "326.3 lbs."


mondata SPECIES_SHELMET, "Shelmet"
    basestats 50, 40, 85, 25, 40, 65
    types TYPE_BUG, TYPE_BUG
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_HYDRATION, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_SHELMET_TM_DATA_0, SPECIES_SHELMET_TM_DATA_1, SPECIES_SHELMET_TM_DATA_2, SPECIES_SHELMET_TM_DATA_3
    mondexentry SPECIES_SHELMET, "When attacked, it defends itself by\nclosing the lid of its shell. It can spit\na sticky, poisonous liquid."
    mondexclassification SPECIES_SHELMET, "Snail Pokémon"
    mondexheight SPECIES_SHELMET, "1’04”"
    mondexweight SPECIES_SHELMET, "17.0 lbs."


mondata SPECIES_ACCELGOR, "Accelgor"
    basestats 80, 70, 40, 145, 100, 60
    types TYPE_BUG, TYPE_BUG
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_HYDRATION, ABILITY_STICKY_HOLD
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_ACCELGOR_TM_DATA_0, SPECIES_ACCELGOR_TM_DATA_1, SPECIES_ACCELGOR_TM_DATA_2, SPECIES_ACCELGOR_TM_DATA_3
    mondexentry SPECIES_ACCELGOR, "When its body dries out, it weakens.\nSo, to prevent dehydration, it wraps\nitself in many layers of thin membrane."
    mondexclassification SPECIES_ACCELGOR, "Shell Out Pokémon"
    mondexheight SPECIES_ACCELGOR, "2’07”"
    mondexweight SPECIES_ACCELGOR, "55.8 lbs."


mondata SPECIES_STUNFISK, "Stunfisk"
    basestats 109, 66, 84, 32, 81, 99
    types TYPE_GROUND, TYPE_ELECTRIC
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_SOFT_SAND, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_AMORPHOUS
    abilities ABILITY_STATIC, ABILITY_LIMBER
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_STUNFISK_TM_DATA_0, SPECIES_STUNFISK_TM_DATA_1, SPECIES_STUNFISK_TM_DATA_2, SPECIES_STUNFISK_TM_DATA_3
    mondexentry SPECIES_STUNFISK, "Its skin is very hard, so it is unhurt\neven if stepped on by sumo wrestlers.\nIt smiles when transmitting electricity."
    mondexclassification SPECIES_STUNFISK, "Trap Pokémon"
    mondexheight SPECIES_STUNFISK, "2’04”"
    mondexweight SPECIES_STUNFISK, "24.3 lbs."


mondata SPECIES_MIENFOO, "Mienfoo"
    basestats 45, 85, 50, 65, 55, 50
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 180
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_INNER_FOCUS, ABILITY_REGENERATOR
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_MIENFOO_TM_DATA_0, SPECIES_MIENFOO_TM_DATA_1, SPECIES_MIENFOO_TM_DATA_2, SPECIES_MIENFOO_TM_DATA_3
    mondexentry SPECIES_MIENFOO, "In fights, they dominate with onslaughts\nof flowing, continuous attacks. With\ntheir sharp claws, they cut enemies."
    mondexclassification SPECIES_MIENFOO, "Martial Arts Pokémon"
    mondexheight SPECIES_MIENFOO, "2’11”"
    mondexweight SPECIES_MIENFOO, "44.1 lbs."


mondata SPECIES_MIENSHAO, "Mienshao"
    basestats 65, 125, 60, 105, 95, 60
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_INNER_FOCUS, ABILITY_REGENERATOR
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_MIENSHAO_TM_DATA_0, SPECIES_MIENSHAO_TM_DATA_1, SPECIES_MIENSHAO_TM_DATA_2, SPECIES_MIENSHAO_TM_DATA_3
    mondexentry SPECIES_MIENSHAO, "It wields the fur on its arms like a whip.\nIts arm attacks come with such rapidity\nthat they cannot even be seen."
    mondexclassification SPECIES_MIENSHAO, "Martial Arts Pokémon"
    mondexheight SPECIES_MIENSHAO, "4’07”"
    mondexweight SPECIES_MIENSHAO, "78.3 lbs."


mondata SPECIES_DRUDDIGON, "Druddigon"
    basestats 77, 120, 90, 48, 60, 90
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_DRAGON_FANG, ITEM_NONE
    genderratio 127
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_ROUGH_SKIN, ABILITY_SHEER_FORCE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_DRUDDIGON_TM_DATA_0, SPECIES_DRUDDIGON_TM_DATA_1, SPECIES_DRUDDIGON_TM_DATA_2, SPECIES_DRUDDIGON_TM_DATA_3
    mondexentry SPECIES_DRUDDIGON, "It warms its body by absorbing sunlight\nwith its wings. When its body temperature\nfalls, it can no longer move."
    mondexclassification SPECIES_DRUDDIGON, "Cave Pokémon"
    mondexheight SPECIES_DRUDDIGON, "5’03”"
    mondexweight SPECIES_DRUDDIGON, "306.4 lbs."


mondata SPECIES_GOLETT, "Golett"
    basestats 59, 74, 50, 35, 35, 50
    types TYPE_GROUND, TYPE_GHOST
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_LIGHT_CLAY, ITEM_NONE
    genderratio 255
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_IRON_FIST, ABILITY_KLUTZ
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_GOLETT_TM_DATA_0, SPECIES_GOLETT_TM_DATA_1, SPECIES_GOLETT_TM_DATA_2, SPECIES_GOLETT_TM_DATA_3
    mondexentry SPECIES_GOLETT, "The energy that burns inside it\nenables it to move, but no one has yet\nbeen able to identify this energy."
    mondexclassification SPECIES_GOLETT, "Automaton Pokémon"
    mondexheight SPECIES_GOLETT, "3’03”"
    mondexweight SPECIES_GOLETT, "202.8 lbs."


mondata SPECIES_GOLURK, "Golurk"
    basestats 89, 124, 80, 55, 55, 80
    types TYPE_GROUND, TYPE_GHOST
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_LIGHT_CLAY, ITEM_NONE
    genderratio 255
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_IRON_FIST, ABILITY_KLUTZ
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_GOLURK_TM_DATA_0, SPECIES_GOLURK_TM_DATA_1, SPECIES_GOLURK_TM_DATA_2, SPECIES_GOLURK_TM_DATA_3
    mondexentry SPECIES_GOLURK, "It flies across the sky at Mach speeds.\nRemoving the seal on its chest makes\nits internal energy go out of control."
    mondexclassification SPECIES_GOLURK, "Automaton Pokémon"
    mondexheight SPECIES_GOLURK, "9’02”"
    mondexweight SPECIES_GOLURK, "727.5 lbs."


mondata SPECIES_PAWNIARD, "Pawniard"
    basestats 45, 85, 70, 60, 40, 40
    types TYPE_DARK, TYPE_STEEL
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_DEFIANT, ABILITY_INNER_FOCUS
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_PAWNIARD_TM_DATA_0, SPECIES_PAWNIARD_TM_DATA_1, SPECIES_PAWNIARD_TM_DATA_2, SPECIES_PAWNIARD_TM_DATA_3
    mondexentry SPECIES_PAWNIARD, "Blades comprise this Pokémon’s entire\nbody. If battling dulls the blades, it\nsharpens them on stones by the river."
    mondexclassification SPECIES_PAWNIARD, "Sharp Blade Pokémon"
    mondexheight SPECIES_PAWNIARD, "1’08”"
    mondexweight SPECIES_PAWNIARD, "22.5 lbs."


mondata SPECIES_BISHARP, "Bisharp"
    basestats 65, 125, 100, 70, 60, 70
    types TYPE_DARK, TYPE_STEEL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_DEFIANT, ABILITY_INNER_FOCUS
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_BISHARP_TM_DATA_0, SPECIES_BISHARP_TM_DATA_1, SPECIES_BISHARP_TM_DATA_2, SPECIES_BISHARP_TM_DATA_3
    mondexentry SPECIES_BISHARP, "It leads a group of Pawniard.\nIt battles to become the boss, but will\nbe driven from the group if it loses."
    mondexclassification SPECIES_BISHARP, "Sword Blade Pokémon"
    mondexheight SPECIES_BISHARP, "5’03”"
    mondexweight SPECIES_BISHARP, "154.3 lbs."


mondata SPECIES_BOUFFALANT, "Bouffalant"
    basestats 95, 110, 95, 55, 40, 95
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RECKLESS, ABILITY_SAP_SIPPER
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BOUFFALANT_TM_DATA_0, SPECIES_BOUFFALANT_TM_DATA_1, SPECIES_BOUFFALANT_TM_DATA_2, SPECIES_BOUFFALANT_TM_DATA_3
    mondexentry SPECIES_BOUFFALANT, "Their fluffy fur absorbs damage,\neven if they strike foes with a\nfierce headbutt."
    mondexclassification SPECIES_BOUFFALANT, "Bash Buffalo Pokémon"
    mondexheight SPECIES_BOUFFALANT, "5’03”"
    mondexweight SPECIES_BOUFFALANT, "208.6 lbs."


mondata SPECIES_RUFFLET, "Rufflet"
    basestats 70, 83, 50, 60, 37, 50
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_SHEER_FORCE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_RUFFLET_TM_DATA_0, SPECIES_RUFFLET_TM_DATA_1, SPECIES_RUFFLET_TM_DATA_2, SPECIES_RUFFLET_TM_DATA_3
    mondexentry SPECIES_RUFFLET, "They crush berries with their talons.\nThey bravely stand up to any opponent,\nno matter how strong it is."
    mondexclassification SPECIES_RUFFLET, "Eaglet Pokémon"
    mondexheight SPECIES_RUFFLET, "1’08”"
    mondexweight SPECIES_RUFFLET, "23.1 lbs."


mondata SPECIES_BRAVIARY, "Braviary"
    basestats 100, 123, 75, 80, 57, 75
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_SHEER_FORCE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_BRAVIARY_TM_DATA_0, SPECIES_BRAVIARY_TM_DATA_1, SPECIES_BRAVIARY_TM_DATA_2, SPECIES_BRAVIARY_TM_DATA_3
    mondexentry SPECIES_BRAVIARY, "They fight for their friends without any\nthought about danger to themselves.\nOne can carry a car while flying."
    mondexclassification SPECIES_BRAVIARY, "Valiant Pokémon"
    mondexheight SPECIES_BRAVIARY, "4’11”"
    mondexweight SPECIES_BRAVIARY, "90.4 lbs."


mondata SPECIES_VULLABY, "Vullaby"
    basestats 70, 55, 75, 60, 45, 65
    types TYPE_DARK, TYPE_FLYING
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_BIG_PECKS, ABILITY_OVERCOAT
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_VULLABY_TM_DATA_0, SPECIES_VULLABY_TM_DATA_1, SPECIES_VULLABY_TM_DATA_2, SPECIES_VULLABY_TM_DATA_3
    mondexentry SPECIES_VULLABY, "Its wings are too tiny to allow it to fly.\nAs the time approaches for it to evolve,\nit discards the bones it was wearing."
    mondexclassification SPECIES_VULLABY, "Diapered Pokémon"
    mondexheight SPECIES_VULLABY, "1’08”"
    mondexweight SPECIES_VULLABY, "19.8 lbs."


mondata SPECIES_MANDIBUZZ, "Mandibuzz"
    basestats 110, 65, 105, 80, 55, 95
    types TYPE_DARK, TYPE_FLYING
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_BIG_PECKS, ABILITY_OVERCOAT
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_MANDIBUZZ_TM_DATA_0, SPECIES_MANDIBUZZ_TM_DATA_1, SPECIES_MANDIBUZZ_TM_DATA_2, SPECIES_MANDIBUZZ_TM_DATA_3
    mondexentry SPECIES_MANDIBUZZ, "It makes a nest out of bones it finds.\nIt grabs weakened prey in its talons\nand hauls it to its nest of bones."
    mondexclassification SPECIES_MANDIBUZZ, "Bone Vulture Pokémon"
    mondexheight SPECIES_MANDIBUZZ, "3’11”"
    mondexweight SPECIES_MANDIBUZZ, "87.1 lbs."


mondata SPECIES_HEATMOR, "Heatmor"
    basestats 85, 97, 66, 65, 105, 66
    types TYPE_FIRE, TYPE_FIRE
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_FLAME_ORB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_GLUTTONY, ABILITY_FLASH_FIRE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_HEATMOR_TM_DATA_0, SPECIES_HEATMOR_TM_DATA_1, SPECIES_HEATMOR_TM_DATA_2, SPECIES_HEATMOR_TM_DATA_3
    mondexentry SPECIES_HEATMOR, "It breathes through a hole in its tail\nwhile it burns with an internal fire.\nDurant is its prey."
    mondexclassification SPECIES_HEATMOR, "Anteater Pokémon"
    mondexheight SPECIES_HEATMOR, "4’07”"
    mondexweight SPECIES_HEATMOR, "127.9 lbs."


mondata SPECIES_DURANT, "Durant"
    basestats 58, 109, 112, 109, 48, 48
    types TYPE_BUG, TYPE_STEEL
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_HUSTLE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_DURANT_TM_DATA_0, SPECIES_DURANT_TM_DATA_1, SPECIES_DURANT_TM_DATA_2, SPECIES_DURANT_TM_DATA_3
    mondexentry SPECIES_DURANT, "They attack in groups, covering\nthemselves in steel armor to\nprotect themselves from Heatmor."
    mondexclassification SPECIES_DURANT, "Iron Ant Pokémon"
    mondexheight SPECIES_DURANT, "1’00”"
    mondexweight SPECIES_DURANT, "72.8 lbs."


mondata SPECIES_DEINO, "Deino"
    basestats 52, 65, 50, 38, 45, 50
    types TYPE_DARK, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_HUSTLE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_DEINO_TM_DATA_0, SPECIES_DEINO_TM_DATA_1, SPECIES_DEINO_TM_DATA_2, SPECIES_DEINO_TM_DATA_3
    mondexentry SPECIES_DEINO, "It tends to bite everything, and it\nis not a picky eater. Approaching it\ncarelessly is dangerous."
    mondexclassification SPECIES_DEINO, "Irate Pokémon"
    mondexheight SPECIES_DEINO, "2’07”"
    mondexweight SPECIES_DEINO, "28.1 lbs."


mondata SPECIES_ZWEILOUS, "Zweilous"
    basestats 72, 85, 70, 58, 65, 70
    types TYPE_DARK, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_HUSTLE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_ZWEILOUS_TM_DATA_0, SPECIES_ZWEILOUS_TM_DATA_1, SPECIES_ZWEILOUS_TM_DATA_2, SPECIES_ZWEILOUS_TM_DATA_3
    mondexentry SPECIES_ZWEILOUS, "After it has eaten up all the food in\nits territory, it moves to another\narea. Its two heads do not get along."
    mondexclassification SPECIES_ZWEILOUS, "Hostile Pokémon"
    mondexheight SPECIES_ZWEILOUS, "4’07”"
    mondexweight SPECIES_ZWEILOUS, "110.2 lbs."


mondata SPECIES_HYDREIGON, "Hydreigon"
    basestats 92, 105, 90, 98, 125, 90
    types TYPE_DARK, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_HYDREIGON_TM_DATA_0, SPECIES_HYDREIGON_TM_DATA_1, SPECIES_HYDREIGON_TM_DATA_2, SPECIES_HYDREIGON_TM_DATA_3
    mondexentry SPECIES_HYDREIGON, "This brutal Pokémon travels the skies on\nits six wings. Anything that moves seems\nlike a foe to it, triggering its attack."
    mondexclassification SPECIES_HYDREIGON, "Brutal Pokémon"
    mondexheight SPECIES_HYDREIGON, "5’11”"
    mondexweight SPECIES_HYDREIGON, "352.7 lbs."


mondata SPECIES_LARVESTA, "Larvesta"
    basestats 55, 85, 55, 60, 50, 55
    types TYPE_BUG, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_FLAME_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_LARVESTA_TM_DATA_0, SPECIES_LARVESTA_TM_DATA_1, SPECIES_LARVESTA_TM_DATA_2, SPECIES_LARVESTA_TM_DATA_3
    mondexentry SPECIES_LARVESTA, "This Pokémon was believed to have\nbeen born from the sun. When it evolves,\nits entire body is engulfed in flames."
    mondexclassification SPECIES_LARVESTA, "Torch Pokémon"
    mondexheight SPECIES_LARVESTA, "3’07”"
    mondexweight SPECIES_LARVESTA, "63.5 lbs."


mondata SPECIES_VOLCARONA, "Volcarona"
    basestats 85, 60, 65, 100, 135, 105
    types TYPE_BUG, TYPE_FIRE
    catchrate 195
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_SILVER_POWDER, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_FLAME_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_VOLCARONA_TM_DATA_0, SPECIES_VOLCARONA_TM_DATA_1, SPECIES_VOLCARONA_TM_DATA_2, SPECIES_VOLCARONA_TM_DATA_3
    mondexentry SPECIES_VOLCARONA, "When volcanic ash darkened the\natmosphere, it is said that Volcarona’s\nfire provided a replacement for the sun."
    mondexclassification SPECIES_VOLCARONA, "Sun Pokémon"
    mondexheight SPECIES_VOLCARONA, "5’03”"
    mondexweight SPECIES_VOLCARONA, "101.4 lbs."


mondata SPECIES_COBALION, "Cobalion"
    basestats 91, 90, 129, 108, 90, 72
    types TYPE_STEEL, TYPE_FIGHTING
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 80
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_JUSTIFIED, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_COBALION_TM_DATA_0, SPECIES_COBALION_TM_DATA_1, SPECIES_COBALION_TM_DATA_2, SPECIES_COBALION_TM_DATA_3
    mondexentry SPECIES_COBALION, "This legendary Pokémon battled against\nhumans to protect Pokémon.\nIts personality is calm and composed."
    mondexclassification SPECIES_COBALION, "Iron Will Pokémon"
    mondexheight SPECIES_COBALION, "6’11”"
    mondexweight SPECIES_COBALION, "551.2 lbs."


mondata SPECIES_TERRAKION, "Terrakion"
    basestats 91, 129, 90, 108, 72, 90
    types TYPE_ROCK, TYPE_FIGHTING
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 80
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_JUSTIFIED, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_TERRAKION_TM_DATA_0, SPECIES_TERRAKION_TM_DATA_1, SPECIES_TERRAKION_TM_DATA_2, SPECIES_TERRAKION_TM_DATA_3
    mondexentry SPECIES_TERRAKION, "This Pokémon came to the defense of\nPokémon that had lost their homes in\na war among humans."
    mondexclassification SPECIES_TERRAKION, "Cavern Pokémon"
    mondexheight SPECIES_TERRAKION, "6’03”"
    mondexweight SPECIES_TERRAKION, "573.2 lbs."


mondata SPECIES_VIRIZION, "Virizion"
    basestats 91, 90, 72, 108, 90, 129
    types TYPE_GRASS, TYPE_FIGHTING
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 80
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_JUSTIFIED, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_VIRIZION_TM_DATA_0, SPECIES_VIRIZION_TM_DATA_1, SPECIES_VIRIZION_TM_DATA_2, SPECIES_VIRIZION_TM_DATA_3
    mondexentry SPECIES_VIRIZION, "This Pokémon fought humans in order\nto protect its friends. Legends about it\ncontinue to be passed down."
    mondexclassification SPECIES_VIRIZION, "Grassland Pokémon"
    mondexheight SPECIES_VIRIZION, "6’07”"
    mondexweight SPECIES_VIRIZION, "440.9 lbs."


mondata SPECIES_TORNADUS, "Tornadus"
    basestats 79, 115, 70, 111, 125, 80
    types TYPE_FLYING, TYPE_FLYING
    catchrate 3
    baseexp 170
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 120
    basefriendship 90
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRANKSTER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_TORNADUS_TM_DATA_0, SPECIES_TORNADUS_TM_DATA_1, SPECIES_TORNADUS_TM_DATA_2, SPECIES_TORNADUS_TM_DATA_3
    mondexentry SPECIES_TORNADUS, "The lower half of its body is wrapped in\na cloud of energy. It zooms through\nthe sky at 200 mph."
    mondexclassification SPECIES_TORNADUS, "Cyclone Pokémon"
    mondexheight SPECIES_TORNADUS, "4’11”"
    mondexweight SPECIES_TORNADUS, "138.9 lbs."


mondata SPECIES_THUNDURUS, "Thundurus"
    basestats 79, 115, 70, 111, 125, 80
    types TYPE_ELECTRIC, TYPE_FLYING
    catchrate 3
    baseexp 170
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 120
    basefriendship 90
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRANKSTER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_THUNDURUS_TM_DATA_0, SPECIES_THUNDURUS_TM_DATA_1, SPECIES_THUNDURUS_TM_DATA_2, SPECIES_THUNDURUS_TM_DATA_3
    mondexentry SPECIES_THUNDURUS, "Countless charred remains mar the\nlandscape of places through which\nThundurus has passed."
    mondexclassification SPECIES_THUNDURUS, "Bolt Strike Pokémon"
    mondexheight SPECIES_THUNDURUS, "4’11”"
    mondexweight SPECIES_THUNDURUS, "134.5 lbs."


mondata SPECIES_RESHIRAM, "Reshiram"
    basestats 100, 120, 100, 90, 150, 120
    types TYPE_DRAGON, TYPE_FIRE
    catchrate 45
    baseexp 200
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_TURBOBLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_RESHIRAM_TM_DATA_0, SPECIES_RESHIRAM_TM_DATA_1, SPECIES_RESHIRAM_TM_DATA_2, SPECIES_RESHIRAM_TM_DATA_3
    mondexentry SPECIES_RESHIRAM, "This Pokémon appears in legends.\nIt sends flames into the air from its\ntail, burning up everything around it."
    mondexclassification SPECIES_RESHIRAM, "Vast White Pokémon"
    mondexheight SPECIES_RESHIRAM, "10’06”"
    mondexweight SPECIES_RESHIRAM, "727.5 lbs."


mondata SPECIES_ZEKROM, "Zekrom"
    basestats 100, 150, 120, 90, 120, 100
    types TYPE_DRAGON, TYPE_ELECTRIC
    catchrate 45
    baseexp 200
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_TERAVOLT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_ZEKROM_TM_DATA_0, SPECIES_ZEKROM_TM_DATA_1, SPECIES_ZEKROM_TM_DATA_2, SPECIES_ZEKROM_TM_DATA_3
    mondexentry SPECIES_ZEKROM, "Concealing itself in lightning clouds,\nit flies throughout the Unova region.\nIt creates electricity in its tail."
    mondexclassification SPECIES_ZEKROM, "Deep Black Pokémon"
    mondexheight SPECIES_ZEKROM, "9’06”"
    mondexweight SPECIES_ZEKROM, "760.6 lbs."


mondata SPECIES_LANDORUS, "Landorus"
    basestats 89, 125, 90, 101, 115, 80
    types TYPE_GROUND, TYPE_FLYING
    catchrate 3
    baseexp 176
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 120
    basefriendship 90
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_SAND_FORCE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_LANDORUS_TM_DATA_0, SPECIES_LANDORUS_TM_DATA_1, SPECIES_LANDORUS_TM_DATA_2, SPECIES_LANDORUS_TM_DATA_3
    mondexentry SPECIES_LANDORUS, "Lands visited by Landorus grant such\nbountiful crops that it has been hailed\nas “The Guardian of the Fields.“"
    mondexclassification SPECIES_LANDORUS, "Abundance Pokémon"
    mondexheight SPECIES_LANDORUS, "4’11”"
    mondexweight SPECIES_LANDORUS, "149.9 lbs."


mondata SPECIES_KYUREM, "Kyurem"
    basestats 125, 130, 90, 95, 130, 90
    types TYPE_DRAGON, TYPE_ICE
    catchrate 3
    baseexp 194
    evyields 1, 1, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_SNOW_WARNING, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_KYUREM_TM_DATA_0, SPECIES_KYUREM_TM_DATA_1, SPECIES_KYUREM_TM_DATA_2, SPECIES_KYUREM_TM_DATA_3
    mondexentry SPECIES_KYUREM, "It generates a powerful, freezing\nenergy inside itself, but its body became\nfrozen when the energy leaked out."
    mondexclassification SPECIES_KYUREM, "Boundary Pokémon"
    mondexheight SPECIES_KYUREM, "9’10”"
    mondexweight SPECIES_KYUREM, "716.5 lbs."


mondata SPECIES_KELDEO, "Keldeo"
    basestats 91, 72, 90, 108, 129, 90
    types TYPE_WATER, TYPE_FIGHTING
    catchrate 3
    baseexp 170
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 80
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_JUSTIFIED, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_KELDEO_TM_DATA_0, SPECIES_KELDEO_TM_DATA_1, SPECIES_KELDEO_TM_DATA_2, SPECIES_KELDEO_TM_DATA_3
    mondexentry SPECIES_KELDEO, "By blasting water from its hooves, it can\nglide across water. It excels at using\nleg moves while battling."
    mondexclassification SPECIES_KELDEO, "Colt Pokémon"
    mondexheight SPECIES_KELDEO, "4’07”"
    mondexweight SPECIES_KELDEO, "106.9 lbs."


mondata SPECIES_MELOETTA, "Meloetta"
    basestats 100, 77, 77, 90, 128, 128
    types TYPE_NORMAL, TYPE_PSYCHIC
    catchrate 3
    baseexp 176
    evyields 0, 0, 0, 1, 1, 1
    items ITEM_STAR_PIECE, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 120
    basefriendship 100
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_SERENE_GRACE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_MELOETTA_TM_DATA_0, SPECIES_MELOETTA_TM_DATA_1, SPECIES_MELOETTA_TM_DATA_2, SPECIES_MELOETTA_TM_DATA_3
    mondexentry SPECIES_MELOETTA, "Its melodies are sung with a special\nvocalization method that can control\nthe feelings of those who hear it."
    mondexclassification SPECIES_MELOETTA, "Melody Pokémon"
    mondexheight SPECIES_MELOETTA, "2’00”"
    mondexweight SPECIES_MELOETTA, "14.3 lbs."


mondata SPECIES_GENESECT, "Genesect"
    basestats 71, 120, 95, 99, 120, 95
    types TYPE_BUG, TYPE_STEEL
    catchrate 195
    baseexp 176
    evyields 0, 1, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_DOWNLOAD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GENESECT_TM_DATA_0, SPECIES_GENESECT_TM_DATA_1, SPECIES_GENESECT_TM_DATA_2, SPECIES_GENESECT_TM_DATA_3
    mondexentry SPECIES_GENESECT, "Over 300 million years ago, it was feared\nas the strongest of hunters.\nIt has been modified by Team Plasma."
    mondexclassification SPECIES_GENESECT, "Paleozoic Pokémon"
    mondexheight SPECIES_GENESECT, "4’11”"
    mondexweight SPECIES_GENESECT, "181.9 lbs."


mondata SPECIES_CHESPIN, "Chespin"
    basestats 56, 61, 65, 38, 48, 45
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CHESPIN_TM_DATA_0, SPECIES_CHESPIN_TM_DATA_1, SPECIES_CHESPIN_TM_DATA_2, SPECIES_CHESPIN_TM_DATA_3
    mondexentry SPECIES_CHESPIN, "Such a thick shell of wood covers its\nhead and back that even a direct hit\nfrom a truck wouldn’t faze it."
    mondexclassification SPECIES_CHESPIN, "Spiny Nut Pokémon"
    mondexheight SPECIES_CHESPIN, "1’04”"
    mondexweight SPECIES_CHESPIN, "19.8 lbs."


mondata SPECIES_QUILLADIN, "Quilladin"
    basestats 61, 78, 95, 57, 56, 58
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_QUILLADIN_TM_DATA_0, SPECIES_QUILLADIN_TM_DATA_1, SPECIES_QUILLADIN_TM_DATA_2, SPECIES_QUILLADIN_TM_DATA_3
    mondexentry SPECIES_QUILLADIN, "It relies on its sturdy shell to\ndeflect predators’ attacks. It\ncounterattacks with its sharp quills."
    mondexclassification SPECIES_QUILLADIN, "Spiny Armor Pokémon"
    mondexheight SPECIES_QUILLADIN, "2’04”"
    mondexweight SPECIES_QUILLADIN, "63.9 lbs."


mondata SPECIES_CHESNAUGHT, "Chesnaught"
    basestats 88, 107, 122, 64, 74, 75
    types TYPE_GRASS, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CHESNAUGHT_TM_DATA_0, SPECIES_CHESNAUGHT_TM_DATA_1, SPECIES_CHESNAUGHT_TM_DATA_2, SPECIES_CHESNAUGHT_TM_DATA_3
    mondexentry SPECIES_CHESNAUGHT, "When it takes a defensive posture with\nits fists guarding its face, it could\nwithstand a bomb blast."
    mondexclassification SPECIES_CHESNAUGHT, "Spiny Armor Pokémon"
    mondexheight SPECIES_CHESNAUGHT, "5’03”"
    mondexweight SPECIES_CHESNAUGHT, "198.4 lbs."


mondata SPECIES_FENNEKIN, "Fennekin"
    basestats 40, 45, 40, 60, 62, 60
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_FENNEKIN_TM_DATA_0, SPECIES_FENNEKIN_TM_DATA_1, SPECIES_FENNEKIN_TM_DATA_2, SPECIES_FENNEKIN_TM_DATA_3
    mondexentry SPECIES_FENNEKIN, "Eating a twig fills it with energy, and\nits roomy ears give vent to very hot\nair."
    mondexclassification SPECIES_FENNEKIN, "Fox Pokémon"
    mondexheight SPECIES_FENNEKIN, "1’04”"
    mondexweight SPECIES_FENNEKIN, "20.7 lbs."


mondata SPECIES_BRAIXEN, "Braixen"
    basestats 59, 59, 58, 73, 90, 70
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_BRAIXEN_TM_DATA_0, SPECIES_BRAIXEN_TM_DATA_1, SPECIES_BRAIXEN_TM_DATA_2, SPECIES_BRAIXEN_TM_DATA_3
    mondexentry SPECIES_BRAIXEN, "With friction from its tail fur, it\nsets the twig on its tail on fire and\nlaunches into battle."
    mondexclassification SPECIES_BRAIXEN, "Fox Pokémon"
    mondexheight SPECIES_BRAIXEN, "3’03”"
    mondexweight SPECIES_BRAIXEN, "32.0 lbs."


mondata SPECIES_DELPHOX, "Delphox"
    basestats 75, 69, 72, 104, 114, 100
    types TYPE_FIRE, TYPE_PSYCHIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_DELPHOX_TM_DATA_0, SPECIES_DELPHOX_TM_DATA_1, SPECIES_DELPHOX_TM_DATA_2, SPECIES_DELPHOX_TM_DATA_3
    mondexentry SPECIES_DELPHOX, "It gazes into the flame at its branch\nto achieve a focused state, allowing it\nto see the future."
    mondexclassification SPECIES_DELPHOX, "Fox Pokémon"
    mondexheight SPECIES_DELPHOX, "4’11”"
    mondexweight SPECIES_DELPHOX, "86.0 lbs."


mondata SPECIES_FROAKIE, "Froakie"
    basestats 41, 56, 40, 71, 62, 44
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_FROAKIE_TM_DATA_0, SPECIES_FROAKIE_TM_DATA_1, SPECIES_FROAKIE_TM_DATA_2, SPECIES_FROAKIE_TM_DATA_3
    mondexentry SPECIES_FROAKIE, "It secretes bubbles from its chest and\nback. The bubbles reduce the damage it\nwould take when attacked."
    mondexclassification SPECIES_FROAKIE, "Bubble Frog Pokémon"
    mondexheight SPECIES_FROAKIE, "0’12”"
    mondexweight SPECIES_FROAKIE, "15.4 lbs."


mondata SPECIES_FROGADIER, "Frogadier"
    basestats 54, 63, 52, 97, 83, 56
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_FROGADIER_TM_DATA_0, SPECIES_FROGADIER_TM_DATA_1, SPECIES_FROGADIER_TM_DATA_2, SPECIES_FROGADIER_TM_DATA_3
    mondexentry SPECIES_FROGADIER, "Its swiftness is unparalleled. It can\nscale a tower of more than 2,000 feet in\na minute’s time."
    mondexclassification SPECIES_FROGADIER, "Bubble Frog Pokémon"
    mondexheight SPECIES_FROGADIER, "1’12”"
    mondexweight SPECIES_FROGADIER, "24.0 lbs."


mondata SPECIES_GRENINJA, "Greninja"
    basestats 72, 95, 67, 122, 103, 71
    types TYPE_WATER, TYPE_DARK
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_GRENINJA_TM_DATA_0, SPECIES_GRENINJA_TM_DATA_1, SPECIES_GRENINJA_TM_DATA_2, SPECIES_GRENINJA_TM_DATA_3
    mondexentry SPECIES_GRENINJA, "It creates throwing stars out of\ncompressed water, that can split metal\nin two."
    mondexclassification SPECIES_GRENINJA, "Ninja Pokémon"
    mondexheight SPECIES_GRENINJA, "4’11”"
    mondexweight SPECIES_GRENINJA, "88.2 lbs."


mondata SPECIES_BUNNELBY, "Bunnelby"
    basestats 38, 36, 38, 57, 32, 36
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CUTE_CHARM, ABILITY_CHEEK_POUCH
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BUNNELBY_TM_DATA_0, SPECIES_BUNNELBY_TM_DATA_1, SPECIES_BUNNELBY_TM_DATA_2, SPECIES_BUNNELBY_TM_DATA_3
    mondexentry SPECIES_BUNNELBY, "They use their large ears to dig\nburrows. They will dig the whole night\nthrough."
    mondexclassification SPECIES_BUNNELBY, "Digging Pokémon"
    mondexheight SPECIES_BUNNELBY, "1’04”"
    mondexweight SPECIES_BUNNELBY, "11.0 lbs."


mondata SPECIES_DIGGERSBY, "Diggersby"
    basestats 85, 56, 77, 78, 50, 77
    types TYPE_NORMAL, TYPE_GROUND
    catchrate 127
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CUTE_CHARM, ABILITY_CHEEK_POUCH
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DIGGERSBY_TM_DATA_0, SPECIES_DIGGERSBY_TM_DATA_1, SPECIES_DIGGERSBY_TM_DATA_2, SPECIES_DIGGERSBY_TM_DATA_3
    mondexentry SPECIES_DIGGERSBY, "As powerful as an excavator, its ears\ncan reduce dense bedrock to rubble."
    mondexclassification SPECIES_DIGGERSBY, "Digging Pokémon"
    mondexheight SPECIES_DIGGERSBY, "3’03”"
    mondexweight SPECIES_DIGGERSBY, "93.5 lbs."


mondata SPECIES_FLETCHLING, "Fletchling"
    basestats 45, 50, 43, 62, 40, 38
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_BIG_PECKS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_FLETCHLING_TM_DATA_0, SPECIES_FLETCHLING_TM_DATA_1, SPECIES_FLETCHLING_TM_DATA_2, SPECIES_FLETCHLING_TM_DATA_3
    mondexentry SPECIES_FLETCHLING, "When it’s excited, its temperature can\ndouble, spiking hormone production in\nits body."
    mondexclassification SPECIES_FLETCHLING, "Tiny Robin Pokémon"
    mondexheight SPECIES_FLETCHLING, "0’12”"
    mondexweight SPECIES_FLETCHLING, "3.7 lbs."


mondata SPECIES_FLETCHINDER, "Fletchinder"
    basestats 62, 73, 55, 84, 56, 52
    types TYPE_FIRE, TYPE_FLYING
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_FLAME_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_FLETCHINDER_TM_DATA_0, SPECIES_FLETCHINDER_TM_DATA_1, SPECIES_FLETCHINDER_TM_DATA_2, SPECIES_FLETCHINDER_TM_DATA_3
    mondexentry SPECIES_FLETCHINDER, "Its speed right after takeoff already\nputs it in the top speed class of all\nbird Pokémon."
    mondexclassification SPECIES_FLETCHINDER, "Ember Pokémon"
    mondexheight SPECIES_FLETCHINDER, "2’04”"
    mondexweight SPECIES_FLETCHINDER, "35.3 lbs."


mondata SPECIES_TALONFLAME, "Talonflame"
    basestats 78, 81, 71, 126, 74, 69
    types TYPE_FIRE, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_FLAME_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_TALONFLAME_TM_DATA_0, SPECIES_TALONFLAME_TM_DATA_1, SPECIES_TALONFLAME_TM_DATA_2, SPECIES_TALONFLAME_TM_DATA_3
    mondexentry SPECIES_TALONFLAME, "When attacking prey, it can reach\nspeeds of up to 310 mph. It finishes its\nprey off with a colossal kick."
    mondexclassification SPECIES_TALONFLAME, "Scorching Pokémon"
    mondexheight SPECIES_TALONFLAME, "3’11”"
    mondexweight SPECIES_TALONFLAME, "54.0 lbs."


mondata SPECIES_SCATTERBUG, "Scatterbug"
    basestats 38, 35, 40, 35, 27, 25
    types TYPE_BUG, TYPE_BUG
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST, ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SCATTERBUG_TM_DATA_0, SPECIES_SCATTERBUG_TM_DATA_1, SPECIES_SCATTERBUG_TM_DATA_2, SPECIES_SCATTERBUG_TM_DATA_3
    mondexentry SPECIES_SCATTERBUG, "The powder that covers its body\nregulates its temperature, so it can\nlive in any region or climate."
    mondexclassification SPECIES_SCATTERBUG, "Scatterdust Pokémon"
    mondexheight SPECIES_SCATTERBUG, "0’12”"
    mondexweight SPECIES_SCATTERBUG, "5.5 lbs."


mondata SPECIES_SPEWPA, "Spewpa"
    basestats 45, 22, 60, 29, 27, 30
    types TYPE_BUG, TYPE_BUG
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHED_SKIN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SPEWPA_TM_DATA_0, SPECIES_SPEWPA_TM_DATA_1, SPECIES_SPEWPA_TM_DATA_2, SPECIES_SPEWPA_TM_DATA_3
    mondexentry SPECIES_SPEWPA, "The beaks of birds can’t begin to\nscratch its stalwart body. To defend\nitself, it spews powder."
    mondexclassification SPECIES_SPEWPA, "Scatterdust Pokémon"
    mondexheight SPECIES_SPEWPA, "0’12”"
    mondexweight SPECIES_SPEWPA, "18.5 lbs."


mondata SPECIES_VIVILLON, "Vivillon"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST, ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_VIVILLON_TM_DATA_0, SPECIES_VIVILLON_TM_DATA_1, SPECIES_VIVILLON_TM_DATA_2, SPECIES_VIVILLON_TM_DATA_3
    mondexentry SPECIES_VIVILLON, "The colorful patterns on this Pokémon’s\nwings depend on the climate and\ntopography of its habitat."
    mondexclassification SPECIES_VIVILLON, "Scale Pokémon"
    mondexheight SPECIES_VIVILLON, "3’11”"
    mondexweight SPECIES_VIVILLON, "37.5 lbs."


mondata SPECIES_LITLEO, "Litleo"
    basestats 62, 50, 58, 72, 73, 54
    types TYPE_FIRE, TYPE_NORMAL
    catchrate 220
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 222
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RIVALRY, ABILITY_UNNERVE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_LITLEO_TM_DATA_0, SPECIES_LITLEO_TM_DATA_1, SPECIES_LITLEO_TM_DATA_2, SPECIES_LITLEO_TM_DATA_3
    mondexentry SPECIES_LITLEO, "The stronger the opponent it faces, the\nmore heat and power flow through its\nbody."
    mondexclassification SPECIES_LITLEO, "Lion Cub Pokémon"
    mondexheight SPECIES_LITLEO, "1’12”"
    mondexweight SPECIES_LITLEO, "29.8 lbs."


mondata SPECIES_PYROAR, "Pyroar"
    basestats 86, 68, 72, 106, 109, 66
    types TYPE_FIRE, TYPE_NORMAL
    catchrate 65
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 222
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RIVALRY, ABILITY_UNNERVE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_PYROAR_TM_DATA_0, SPECIES_PYROAR_TM_DATA_1, SPECIES_PYROAR_TM_DATA_2, SPECIES_PYROAR_TM_DATA_3
    mondexentry SPECIES_PYROAR, "The male with the largest mane of fire\nis the leader of the pride."
    mondexclassification SPECIES_PYROAR, "Royal Pokémon"
    mondexheight SPECIES_PYROAR, "4’11”"
    mondexweight SPECIES_PYROAR, "179.7 lbs."


mondata SPECIES_FLABEBE, "Flabébé"
    basestats 44, 38, 39, 42, 61, 79
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 225
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_FLOWER_VEIL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_FLABEBE_TM_DATA_0, SPECIES_FLABEBE_TM_DATA_1, SPECIES_FLABEBE_TM_DATA_2, SPECIES_FLABEBE_TM_DATA_3
    mondexentry SPECIES_FLABEBE, "It draws and controls the hidden power\nof flowers. The flower it holds is most\nlikely part of its body."
    mondexclassification SPECIES_FLABEBE, "Single Bloom Pokémon"
    mondexheight SPECIES_FLABEBE, "0’04”"
    mondexweight SPECIES_FLABEBE, "0.2 lbs."


mondata SPECIES_FLOETTE, "Floette"
    basestats 54, 45, 47, 52, 75, 98
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_FLOWER_VEIL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_FLOETTE_TM_DATA_0, SPECIES_FLOETTE_TM_DATA_1, SPECIES_FLOETTE_TM_DATA_2, SPECIES_FLOETTE_TM_DATA_3
    mondexentry SPECIES_FLOETTE, "When the flowers of a well-tended\nflower bed bloom, it appears and\ncelebrates with an elegant dance."
    mondexclassification SPECIES_FLOETTE, "Single Bloom Pokémon"
    mondexheight SPECIES_FLOETTE, "0’08”"
    mondexweight SPECIES_FLOETTE, "2.0 lbs."


mondata SPECIES_FLORGES, "Florges"
    basestats 78, 65, 68, 75, 112, 154
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_FLOWER_VEIL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_FLORGES_TM_DATA_0, SPECIES_FLORGES_TM_DATA_1, SPECIES_FLORGES_TM_DATA_2, SPECIES_FLORGES_TM_DATA_3
    mondexentry SPECIES_FLORGES, "Its life can span several hundred\nyears. It’s said to devote its entire\nlife to protecting gardens."
    mondexclassification SPECIES_FLORGES, "Garden Pokémon"
    mondexheight SPECIES_FLORGES, "3’07”"
    mondexweight SPECIES_FLORGES, "22.0 lbs."


mondata SPECIES_SKIDDO, "Skiddo"
    basestats 66, 65, 48, 52, 62, 57
    types TYPE_GRASS, TYPE_GRASS
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAP_SIPPER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SKIDDO_TM_DATA_0, SPECIES_SKIDDO_TM_DATA_1, SPECIES_SKIDDO_TM_DATA_2, SPECIES_SKIDDO_TM_DATA_3
    mondexentry SPECIES_SKIDDO, "Thought to be one of the first Pokémon\nto live in harmony with humans, it has\na placid disposition."
    mondexclassification SPECIES_SKIDDO, "Mount Pokémon"
    mondexheight SPECIES_SKIDDO, "2’11”"
    mondexweight SPECIES_SKIDDO, "68.3 lbs."


mondata SPECIES_GOGOAT, "Gogoat"
    basestats 123, 100, 62, 68, 97, 81
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAP_SIPPER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GOGOAT_TM_DATA_0, SPECIES_GOGOAT_TM_DATA_1, SPECIES_GOGOAT_TM_DATA_2, SPECIES_GOGOAT_TM_DATA_3
    mondexentry SPECIES_GOGOAT, "They inhabit mountainous regions. The\nleader of the herd is decided by a\nbattle of clashing horns."
    mondexclassification SPECIES_GOGOAT, "Mount Pokémon"
    mondexheight SPECIES_GOGOAT, "5’07”"
    mondexweight SPECIES_GOGOAT, "200.6 lbs."


mondata SPECIES_PANCHAM, "Pancham"
    basestats 67, 82, 62, 43, 46, 48
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 220
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_MENTAL_HERB, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_IRON_FIST, ABILITY_MOLD_BREAKER
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_PANCHAM_TM_DATA_0, SPECIES_PANCHAM_TM_DATA_1, SPECIES_PANCHAM_TM_DATA_2, SPECIES_PANCHAM_TM_DATA_3
    mondexentry SPECIES_PANCHAM, "It grows up imitating the behavior of\nPangoro, which it looks up to as a\nleader."
    mondexclassification SPECIES_PANCHAM, "Playful Pokémon"
    mondexheight SPECIES_PANCHAM, "1’12”"
    mondexweight SPECIES_PANCHAM, "17.6 lbs."


mondata SPECIES_PANGORO, "Pangoro"
    basestats 95, 124, 78, 58, 69, 71
    types TYPE_FIGHTING, TYPE_DARK
    catchrate 65
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_MENTAL_HERB, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_IRON_FIST, ABILITY_MOLD_BREAKER
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_PANGORO_TM_DATA_0, SPECIES_PANGORO_TM_DATA_1, SPECIES_PANGORO_TM_DATA_2, SPECIES_PANGORO_TM_DATA_3
    mondexentry SPECIES_PANGORO, "This Pokémon boasts great physical\nstrength. Many Trainers are also smitten\nby its lively character."
    mondexclassification SPECIES_PANGORO, "Daunting Pokémon"
    mondexheight SPECIES_PANGORO, "6’11”"
    mondexweight SPECIES_PANGORO, "299.8 lbs."


mondata SPECIES_FURFROU, "Furfrou"
    basestats 75, 80, 60, 102, 65, 90
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 160
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FUR_COAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_FURFROU_TM_DATA_0, SPECIES_FURFROU_TM_DATA_1, SPECIES_FURFROU_TM_DATA_2, SPECIES_FURFROU_TM_DATA_3
    mondexentry SPECIES_FURFROU, "Historically, in the Kalos region,\nthese Pokémon were the designated\nguardians of the king."
    mondexclassification SPECIES_FURFROU, "Poodle Pokémon"
    mondexheight SPECIES_FURFROU, "3’11”"
    mondexweight SPECIES_FURFROU, "61.7 lbs."


mondata SPECIES_ESPURR, "Espurr"
    basestats 62, 48, 54, 68, 63, 60
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_KEEN_EYE, ABILITY_INFILTRATOR
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_ESPURR_TM_DATA_0, SPECIES_ESPURR_TM_DATA_1, SPECIES_ESPURR_TM_DATA_2, SPECIES_ESPURR_TM_DATA_3
    mondexentry SPECIES_ESPURR, "The organ that emits its intense\npsychic power is sheltered by its ears\nto keep power from leaking out."
    mondexclassification SPECIES_ESPURR, "Restraint Pokémon"
    mondexheight SPECIES_ESPURR, "0’12”"
    mondexweight SPECIES_ESPURR, "7.7 lbs."


mondata SPECIES_MEOWSTIC, "Meowstic"
    basestats 74, 48, 76, 104, 83, 81
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 75
    baseexp 163
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_KEEN_EYE,  ABILITY_INFILTRATOR
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_MEOWSTIC_TM_DATA_0, SPECIES_MEOWSTIC_TM_DATA_1, SPECIES_MEOWSTIC_TM_DATA_2, SPECIES_MEOWSTIC_TM_DATA_3
    mondexentry SPECIES_MEOWSTIC, "When in danger, it raises its ears and\nreleases enough psychic power to grind\na 10-ton truck to dust."
    mondexclassification SPECIES_MEOWSTIC, "Constraint Pokémon"
    mondexheight SPECIES_MEOWSTIC, "1’12”"
    mondexweight SPECIES_MEOWSTIC, "18.7 lbs."


mondata SPECIES_HONEDGE, "Honedge"
    basestats 45, 80, 100, 28, 35, 37
    types TYPE_STEEL, TYPE_GHOST
    catchrate 180
    baseexp 65
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_NO_GUARD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_HONEDGE_TM_DATA_0, SPECIES_HONEDGE_TM_DATA_1, SPECIES_HONEDGE_TM_DATA_2, SPECIES_HONEDGE_TM_DATA_3
    mondexentry SPECIES_HONEDGE, "It is born when a departed spirit\ninhabits a sword. It attaches to people\nand drinks their life force."
    mondexclassification SPECIES_HONEDGE, "Sword Pokémon"
    mondexheight SPECIES_HONEDGE, "2’07”"
    mondexweight SPECIES_HONEDGE, "4.4 lbs."


mondata SPECIES_DOUBLADE, "Doublade"
    basestats 59, 110, 150, 35, 45, 49
    types TYPE_STEEL, TYPE_GHOST
    catchrate 90
    baseexp 157
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_NO_GUARD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DOUBLADE_TM_DATA_0, SPECIES_DOUBLADE_TM_DATA_1, SPECIES_DOUBLADE_TM_DATA_2, SPECIES_DOUBLADE_TM_DATA_3
    mondexentry SPECIES_DOUBLADE, "The complex attack patterns of its two\nswords are unstoppable, even for an\naccomplished opponent."
    mondexclassification SPECIES_DOUBLADE, "Sword Pokémon"
    mondexheight SPECIES_DOUBLADE, "2’07”"
    mondexweight SPECIES_DOUBLADE, "9.9 lbs."


mondata SPECIES_AEGISLASH, "Aegislash"
    basestats 60, 50, 140, 60, 50, 140
    types TYPE_STEEL, TYPE_GHOST
    catchrate 45
    baseexp 234
    evyields 0, 0, 2, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STANCE_CHANGE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_AEGISLASH_TM_DATA_0, SPECIES_AEGISLASH_TM_DATA_1, SPECIES_AEGISLASH_TM_DATA_2, SPECIES_AEGISLASH_TM_DATA_3
    mondexentry SPECIES_AEGISLASH, "It can detect the innate qualities of\nleadership. Whoever it recognizes is\ndestined to become king."
    mondexclassification SPECIES_AEGISLASH, "Royal Sword Pokémon"
    mondexheight SPECIES_AEGISLASH, "5’07”"
    mondexweight SPECIES_AEGISLASH, "116.8 lbs."


mondata SPECIES_SPRITZEE, "Spritzee"
    basestats 78, 52, 60, 23, 63, 65
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_HEALER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_SPRITZEE_TM_DATA_0, SPECIES_SPRITZEE_TM_DATA_1, SPECIES_SPRITZEE_TM_DATA_2, SPECIES_SPRITZEE_TM_DATA_3
    mondexentry SPECIES_SPRITZEE, "It emits a scent that delights those\nwho smell it. The fragrance changes\ndepending on what it has eaten."
    mondexclassification SPECIES_SPRITZEE, "Perfume Pokémon"
    mondexheight SPECIES_SPRITZEE, "0’08”"
    mondexweight SPECIES_SPRITZEE, "1.1 lbs."


mondata SPECIES_AROMATISSE, "Aromatisse"
    basestats 101, 72, 72, 29, 99, 89
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 140
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_HEALER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_AROMATISSE_TM_DATA_0, SPECIES_AROMATISSE_TM_DATA_1, SPECIES_AROMATISSE_TM_DATA_2, SPECIES_AROMATISSE_TM_DATA_3
    mondexentry SPECIES_AROMATISSE, "It devises various scents and emits\nscents that its enemies dislike in order\nto gain an edge in battle."
    mondexclassification SPECIES_AROMATISSE, "Fragrance Pokémon"
    mondexheight SPECIES_AROMATISSE, "2’07”"
    mondexweight SPECIES_AROMATISSE, "34.2 lbs."


mondata SPECIES_SWIRLIX, "Swirlix"
    basestats 62, 48, 66, 49, 59, 57
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_SWEET_VEIL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SWIRLIX_TM_DATA_0, SPECIES_SWIRLIX_TM_DATA_1, SPECIES_SWIRLIX_TM_DATA_2, SPECIES_SWIRLIX_TM_DATA_3
    mondexentry SPECIES_SWIRLIX, "Because it eats nothing but sweets, its\nfur is as sticky sweet as cotton\ncandy."
    mondexclassification SPECIES_SWIRLIX, "Cotton Candy Pokémon"
    mondexheight SPECIES_SWIRLIX, "1’04”"
    mondexweight SPECIES_SWIRLIX, "7.7 lbs."


mondata SPECIES_SLURPUFF, "Slurpuff"
    basestats 82, 80, 86, 72, 85, 75
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 140
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_SWEET_VEIL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SLURPUFF_TM_DATA_0, SPECIES_SLURPUFF_TM_DATA_1, SPECIES_SLURPUFF_TM_DATA_2, SPECIES_SLURPUFF_TM_DATA_3
    mondexentry SPECIES_SLURPUFF, "It can distinguish the faintest of\nscents. It puts its sense of smell to\nuse by helping pastry chefs."
    mondexclassification SPECIES_SLURPUFF, "Meringue Pokémon"
    mondexheight SPECIES_SLURPUFF, "2’07”"
    mondexweight SPECIES_SLURPUFF, "11.0 lbs."


mondata SPECIES_INKAY, "Inkay"
    basestats 53, 54, 53, 45, 37, 46
    types TYPE_DARK, TYPE_PSYCHIC
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_2
    abilities ABILITY_CONTRARY, ABILITY_SUCTION_CUPS
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_INKAY_TM_DATA_0, SPECIES_INKAY_TM_DATA_1, SPECIES_INKAY_TM_DATA_2, SPECIES_INKAY_TM_DATA_3
    mondexentry SPECIES_INKAY, "It draws prey near with its blinking\nlights and then wraps them up in its\nlong tentacles."
    mondexclassification SPECIES_INKAY, "Revolving Pokémon"
    mondexheight SPECIES_INKAY, "1’04”"
    mondexweight SPECIES_INKAY, "7.7 lbs."


mondata SPECIES_MALAMAR, "Malamar"
    basestats 86, 92, 88, 73, 68, 75
    types TYPE_DARK, TYPE_PSYCHIC
    catchrate 80
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_2
    abilities ABILITY_CONTRARY, ABILITY_SUCTION_CUPS
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_MALAMAR_TM_DATA_0, SPECIES_MALAMAR_TM_DATA_1, SPECIES_MALAMAR_TM_DATA_2, SPECIES_MALAMAR_TM_DATA_3
    mondexentry SPECIES_MALAMAR, "It wields the most compelling hypnotic\npowers of any Pokémon, and it forces\nothers to do anything."
    mondexclassification SPECIES_MALAMAR, "Overturning Pokémon"
    mondexheight SPECIES_MALAMAR, "4’11”"
    mondexweight SPECIES_MALAMAR, "103.6 lbs."


mondata SPECIES_BINACLE, "Binacle"
    basestats 42, 52, 67, 50, 39, 56
    types TYPE_ROCK, TYPE_WATER
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_TOUGH_CLAWS, ABILITY_SNIPER
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BINACLE_TM_DATA_0, SPECIES_BINACLE_TM_DATA_1, SPECIES_BINACLE_TM_DATA_2, SPECIES_BINACLE_TM_DATA_3
    mondexentry SPECIES_BINACLE, "ITwo Binacle live together on one rock.\nWhen they fight, one of them will move\nto a different rock."
    mondexclassification SPECIES_BINACLE, "Two-Handed Pokémon"
    mondexheight SPECIES_BINACLE, "1’08”"
    mondexweight SPECIES_BINACLE, "68.3 lbs."


mondata SPECIES_BARBARACLE, "Barbaracle"
    basestats 72, 105, 115, 68, 54, 86
    types TYPE_ROCK, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_TOUGH_CLAWS, ABILITY_SNIPER
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BARBARACLE_TM_DATA_0, SPECIES_BARBARACLE_TM_DATA_1, SPECIES_BARBARACLE_TM_DATA_2, SPECIES_BARBARACLE_TM_DATA_3
    mondexentry SPECIES_BARBARACLE, "When they evolve, two Binacle multiply\ninto seven. They fight with the power\nof seven Binacle."
    mondexclassification SPECIES_BARBARACLE, "Collective Pokémon"
    mondexheight SPECIES_BARBARACLE, "4’03”"
    mondexweight SPECIES_BARBARACLE, "211.6 lbs."


mondata SPECIES_SKRELP, "Skrelp"
    basestats 50, 60, 60, 30, 60, 60
    types TYPE_POISON, TYPE_WATER
    catchrate 225
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_POISON_POINT, ABILITY_POISON_TOUCH
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SKRELP_TM_DATA_0, SPECIES_SKRELP_TM_DATA_1, SPECIES_SKRELP_TM_DATA_2, SPECIES_SKRELP_TM_DATA_3
    mondexentry SPECIES_SKRELP, "It looks just like rotten kelp. It\nhides from foes while storing up power\nfor its evolution."
    mondexclassification SPECIES_SKRELP, "Mock Kelp Pokémon"
    mondexheight SPECIES_SKRELP, "1’08”"
    mondexweight SPECIES_SKRELP, "16.1 lbs."


mondata SPECIES_DRAGALGE, "Dragalge"
    basestats 65, 75, 90, 44, 97, 123
    types TYPE_POISON, TYPE_DRAGON
    catchrate 55
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_POISON_POINT, ABILITY_POISON_TOUCH
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DRAGALGE_TM_DATA_0, SPECIES_DRAGALGE_TM_DATA_1, SPECIES_DRAGALGE_TM_DATA_2, SPECIES_DRAGALGE_TM_DATA_3
    mondexentry SPECIES_DRAGALGE, "Tales are told of ships that wander\ninto seas where Dragalge live, never to\nreturn."
    mondexclassification SPECIES_DRAGALGE, "Mock Kelp Pokémon"
    mondexheight SPECIES_DRAGALGE, "5’11”"
    mondexweight SPECIES_DRAGALGE, "179.7 lbs."


mondata SPECIES_CLAUNCHER, "Clauncher"
    basestats 50, 53, 62, 44, 58, 63
    types TYPE_WATER, TYPE_WATER
    catchrate 225
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_MEGA_LAUNCHER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CLAUNCHER_TM_DATA_0, SPECIES_CLAUNCHER_TM_DATA_1, SPECIES_CLAUNCHER_TM_DATA_2, SPECIES_CLAUNCHER_TM_DATA_3
    mondexentry SPECIES_CLAUNCHER, "They knock down flying prey by firing\ncompressed water from their massive\nclaws like shooting a pistol."
    mondexclassification SPECIES_CLAUNCHER, "Water Gun Pokémon"
    mondexheight SPECIES_CLAUNCHER, "1’08”"
    mondexweight SPECIES_CLAUNCHER, "18.3 lbs."


mondata SPECIES_CLAWITZER, "Clawitzer"
    basestats 71, 73, 88, 59, 120, 89
    types TYPE_WATER, TYPE_WATER
    catchrate 55
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_MEGA_LAUNCHER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CLAWITZER_TM_DATA_0, SPECIES_CLAWITZER_TM_DATA_1, SPECIES_CLAWITZER_TM_DATA_2, SPECIES_CLAWITZER_TM_DATA_3
    mondexentry SPECIES_CLAWITZER, "Their enormous claws launch cannonballs\nof water powerful enough to pierce\ntanker hulls."
    mondexclassification SPECIES_CLAWITZER, "Howitzer Pokémon"
    mondexheight SPECIES_CLAWITZER, "4’03”"
    mondexweight SPECIES_CLAWITZER, "77.8 lbs."


mondata SPECIES_HELIOPTILE, "Helioptile"
    basestats 44, 38, 33, 70, 61, 43
    types TYPE_ELECTRIC, TYPE_NORMAL
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_DRY_SKIN, ABILITY_SAND_VEIL
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_HELIOPTILE_TM_DATA_0, SPECIES_HELIOPTILE_TM_DATA_1, SPECIES_HELIOPTILE_TM_DATA_2, SPECIES_HELIOPTILE_TM_DATA_3
    mondexentry SPECIES_HELIOPTILE, "The frills on either side of its head\nhave cells that generate electricity\nwhen exposed to sunlight."
    mondexclassification SPECIES_HELIOPTILE, "Generator Pokémon"
    mondexheight SPECIES_HELIOPTILE, "1’08”"
    mondexweight SPECIES_HELIOPTILE, "13.2 lbs."


mondata SPECIES_HELIOLISK, "Heliolisk"
    basestats 62, 55, 52, 109, 109, 94
    types TYPE_ELECTRIC, TYPE_NORMAL
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_DRY_SKIN, ABILITY_SAND_VEIL
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_HELIOLISK_TM_DATA_0, SPECIES_HELIOLISK_TM_DATA_1, SPECIES_HELIOLISK_TM_DATA_2, SPECIES_HELIOLISK_TM_DATA_3
    mondexentry SPECIES_HELIOLISK, "It flares its frill and generates\nenergy. It can generate sufficient\nelectricity to power a skyscraper."
    mondexclassification SPECIES_HELIOLISK, "Generator Pokémon"
    mondexheight SPECIES_HELIOLISK, "3’03”"
    mondexweight SPECIES_HELIOLISK, "46.3 lbs."


mondata SPECIES_TYRUNT, "Tyrunt"
    basestats 58, 89, 77, 48, 45, 45
    types TYPE_ROCK, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_STRONG_JAW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_TYRUNT_TM_DATA_0, SPECIES_TYRUNT_TM_DATA_1, SPECIES_TYRUNT_TM_DATA_2, SPECIES_TYRUNT_TM_DATA_3
    mondexentry SPECIES_TYRUNT, "Its immense jaws have enough destructive\nforce to chew up an automobile. It lived\n100 million years ago."
    mondexclassification SPECIES_TYRUNT, "Royal Heir Pokémon"
    mondexheight SPECIES_TYRUNT, "2’07”"
    mondexweight SPECIES_TYRUNT, "57.3 lbs."


mondata SPECIES_TYRANTRUM, "Tyrantrum"
    basestats 82, 121, 119, 71, 69, 59
    types TYPE_ROCK, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_STRONG_JAW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_TYRANTRUM_TM_DATA_0, SPECIES_TYRANTRUM_TM_DATA_1, SPECIES_TYRANTRUM_TM_DATA_2, SPECIES_TYRANTRUM_TM_DATA_3
    mondexentry SPECIES_TYRANTRUM, "Nothing could stop this Pokémon 100\nmillion years ago, so it behaved like a\nking."
    mondexclassification SPECIES_TYRANTRUM, "Despot Pokémon"
    mondexheight SPECIES_TYRANTRUM, "8’02”"
    mondexweight SPECIES_TYRANTRUM, "595.2 lbs."


mondata SPECIES_AMAURA, "Amaura"
    basestats 77, 59, 50, 46, 67, 63
    types TYPE_ROCK, TYPE_ICE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_REFRIGERATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_AMAURA_TM_DATA_0, SPECIES_AMAURA_TM_DATA_1, SPECIES_AMAURA_TM_DATA_2, SPECIES_AMAURA_TM_DATA_3
    mondexentry SPECIES_AMAURA, "This calm Pokémon lived in a cold land\nwhere there were no violent predators\nlike Tyrantrum."
    mondexclassification SPECIES_AMAURA, "Tundra Pokémon"
    mondexheight SPECIES_AMAURA, "4’03”"
    mondexweight SPECIES_AMAURA, "55.6 lbs."


mondata SPECIES_AURORUS, "Aurorus"
    basestats 123, 77, 72, 58, 99, 92
    types TYPE_ROCK, TYPE_ICE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_REFRIGERATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_AURORUS_TM_DATA_0, SPECIES_AURORUS_TM_DATA_1, SPECIES_AURORUS_TM_DATA_2, SPECIES_AURORUS_TM_DATA_3
    mondexentry SPECIES_AURORUS, "This usually quiet and kindly Pokémon\nhas a surface temperature of around -240\ndegrees Fahrenheit."
    mondexclassification SPECIES_AURORUS, "Tundra Pokémon"
    mondexheight SPECIES_AURORUS, "8’10”"
    mondexweight SPECIES_AURORUS, "496.0 lbs."


mondata SPECIES_SYLVEON, "Sylveon"
    basestats 95, 65, 65, 60, 110, 130
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 35
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CUTE_CHARM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_SYLVEON_TM_DATA_0, SPECIES_SYLVEON_TM_DATA_1, SPECIES_SYLVEON_TM_DATA_2, SPECIES_SYLVEON_TM_DATA_3
    mondexentry SPECIES_SYLVEON, "It sends a soothing aura from its\nribbonlike feelers to calm fights."
    mondexclassification SPECIES_SYLVEON, "Intertwining Pokémon"
    mondexheight SPECIES_SYLVEON, "3’03”"
    mondexweight SPECIES_SYLVEON, "51.8 lbs."


mondata SPECIES_HAWLUCHA, "Hawlucha"
    basestats 78, 92, 75, 118, 74, 63
    types TYPE_FIGHTING, TYPE_FLYING
    catchrate 100
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_KINGS_ROCK, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_LIMBER, ABILITY_UNBURDEN
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_HAWLUCHA_TM_DATA_0, SPECIES_HAWLUCHA_TM_DATA_1, SPECIES_HAWLUCHA_TM_DATA_2, SPECIES_HAWLUCHA_TM_DATA_3
    mondexentry SPECIES_HAWLUCHA, "Although its body is small, its\nproficient fighting skills enable it to\nkeep up with big bruisers."
    mondexclassification SPECIES_HAWLUCHA, "Wrestling Pokémon"
    mondexheight SPECIES_HAWLUCHA, "2’07”"
    mondexweight SPECIES_HAWLUCHA, "47.4 lbs."


mondata SPECIES_DEDENNE, "Dedenne"
    basestats 67, 58, 57, 101, 81, 67
    types TYPE_ELECTRIC, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_ELECTRIC
    catchrate 180
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_CHEEK_POUCH, ABILITY_CUTE_CHARM
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_DEDENNE_TM_DATA_0, SPECIES_DEDENNE_TM_DATA_1, SPECIES_DEDENNE_TM_DATA_2, SPECIES_DEDENNE_TM_DATA_3
    mondexentry SPECIES_DEDENNE, "Its upper whiskers are sensors that\nsurvey its surroundings. Its lower\nwhiskers shoot electricity."
    mondexclassification SPECIES_DEDENNE, "Antenna Pokémon"
    mondexheight SPECIES_DEDENNE, "0’08”"
    mondexweight SPECIES_DEDENNE, "4.9 lbs."


mondata SPECIES_CARBINK, "Carbink"
    basestats 50, 50, 150, 50, 50, 150
    types TYPE_ROCK, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_ROCK
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_MINERAL
    abilities ABILITY_CLEAR_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_CARBINK_TM_DATA_0, SPECIES_CARBINK_TM_DATA_1, SPECIES_CARBINK_TM_DATA_2, SPECIES_CARBINK_TM_DATA_3
    mondexentry SPECIES_CARBINK, "Born from temperatures and pressures\ndeep underground, it fires beams from\nthe stone in its head."
    mondexclassification SPECIES_CARBINK, "Jewel Pokémon"
    mondexheight SPECIES_CARBINK, "0’12”"
    mondexweight SPECIES_CARBINK, "12.6 lbs."


mondata SPECIES_GOOMY, "Goomy"
    basestats 45, 50, 35, 40, 55, 75
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_SHED_SHELL, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_SAP_SIPPER, ABILITY_HYDRATION
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GOOMY_TM_DATA_0, SPECIES_GOOMY_TM_DATA_1, SPECIES_GOOMY_TM_DATA_2, SPECIES_GOOMY_TM_DATA_3
    mondexentry SPECIES_GOOMY, "It’s covered in a slimy membrane that\nmakes any punches or kicks slide off it\nharmlessly."
    mondexclassification SPECIES_GOOMY, "Soft Tissue Pokémon"
    mondexheight SPECIES_GOOMY, "0’12”"
    mondexweight SPECIES_GOOMY, "6.2 lbs."


mondata SPECIES_SLIGGOO, "Sliggoo"
    basestats 68, 75, 53, 60, 83, 113
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_SHED_SHELL, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_SAP_SIPPER, ABILITY_HYDRATION
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SLIGGOO_TM_DATA_0, SPECIES_SLIGGOO_TM_DATA_1, SPECIES_SLIGGOO_TM_DATA_2, SPECIES_SLIGGOO_TM_DATA_3
    mondexentry SPECIES_SLIGGOO, "It crawls along sluggishly. The swirly\nprotrusion on its back is filled with\nits brain and other organs."
    mondexclassification SPECIES_SLIGGOO, "Soft Tissue Pokémon"
    mondexheight SPECIES_SLIGGOO, "2’07”"
    mondexweight SPECIES_SLIGGOO, "38.6 lbs."


mondata SPECIES_GOODRA, "Goodra"
    basestats 90, 100, 70, 80, 110, 150
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_SAP_SIPPER, ABILITY_HYDRATION
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GOODRA_TM_DATA_0, SPECIES_GOODRA_TM_DATA_1, SPECIES_GOODRA_TM_DATA_2, SPECIES_GOODRA_TM_DATA_3
    mondexentry SPECIES_GOODRA, "An amazingly friendly Pokémon, but if\nleft to itself, loneliness overcomes it,\nand it oozes gooey tears."
    mondexclassification SPECIES_GOODRA, "Dragon Pokémon"
    mondexheight SPECIES_GOODRA, "6’07”"
    mondexweight SPECIES_GOODRA, "331.8 lbs."


mondata SPECIES_KLEFKI, "Klefki"
    basestats 57, 80, 91, 75, 80, 87
    types TYPE_STEEL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_STEEL
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_PRANKSTER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_KLEFKI_TM_DATA_0, SPECIES_KLEFKI_TM_DATA_1, SPECIES_KLEFKI_TM_DATA_2, SPECIES_KLEFKI_TM_DATA_3
    mondexentry SPECIES_KLEFKI, "These key collectors threaten any\nattackers by fiercely jingling their\nkeys at them."
    mondexclassification SPECIES_KLEFKI, "Key Ring Pokémon"
    mondexheight SPECIES_KLEFKI, "0’08”"
    mondexweight SPECIES_KLEFKI, "6.6 lbs."


mondata SPECIES_PHANTUMP, "Phantump"
    basestats 43, 70, 48, 38, 50, 60
    types TYPE_GHOST, TYPE_GRASS
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_NATURAL_CURE, ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_PHANTUMP_TM_DATA_0, SPECIES_PHANTUMP_TM_DATA_1, SPECIES_PHANTUMP_TM_DATA_2, SPECIES_PHANTUMP_TM_DATA_3
    mondexentry SPECIES_PHANTUMP, "It is created when a spirit possesses\nrotten tree stumps. It prefers to live\nin abandoned forests."
    mondexclassification SPECIES_PHANTUMP, "Stump Pokémon"
    mondexheight SPECIES_PHANTUMP, "1’04”"
    mondexweight SPECIES_PHANTUMP, "15.4 lbs."


mondata SPECIES_TREVENANT, "Trevenant"
    basestats 85, 110, 76, 56, 65, 82
    types TYPE_GHOST, TYPE_GRASS
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_NATURAL_CURE, ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_TREVENANT_TM_DATA_0, SPECIES_TREVENANT_TM_DATA_1, SPECIES_TREVENANT_TM_DATA_2, SPECIES_TREVENANT_TM_DATA_3
    mondexentry SPECIES_TREVENANT, "It can control trees at will. It will\ntrap people who harm the forest, so they\ncan never leave."
    mondexclassification SPECIES_TREVENANT, "Elder Tree Pokémon"
    mondexheight SPECIES_TREVENANT, "4’11”"
    mondexweight SPECIES_TREVENANT, "156.5 lbs."


mondata SPECIES_PUMPKABOO, "Pumpkaboo"
    basestats 49, 66, 70, 51, 44, 55
    types TYPE_GHOST, TYPE_GRASS
    catchrate 120
    baseexp 67
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_CUTE_CHARM,  ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_PUMPKABOO_TM_DATA_0, SPECIES_PUMPKABOO_TM_DATA_1, SPECIES_PUMPKABOO_TM_DATA_2, SPECIES_PUMPKABOO_TM_DATA_3
    mondexentry SPECIES_PUMPKABOO, "It is said to carry wandering spirits\nto the place where they belong so they\ncan move on."
    mondexclassification SPECIES_PUMPKABOO, "Pumpkin Pokémon"
    mondexheight SPECIES_PUMPKABOO, "1’04”"
    mondexweight SPECIES_PUMPKABOO, "11.0 lbs."


mondata SPECIES_GOURGEIST, "Gourgeist"
    basestats 65, 90, 122, 84, 58, 75
    types TYPE_GHOST, TYPE_GRASS
    catchrate 60
    baseexp 173
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_CUTE_CHARM,  ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GOURGEIST_TM_DATA_0, SPECIES_GOURGEIST_TM_DATA_1, SPECIES_GOURGEIST_TM_DATA_2, SPECIES_GOURGEIST_TM_DATA_3
    mondexentry SPECIES_GOURGEIST, "It enwraps its prey in its hairlike\narms. It sings joyfully as it observes\nthe suffering of its prey."
    mondexclassification SPECIES_GOURGEIST, "Pumpkin Pokémon"
    mondexheight SPECIES_GOURGEIST, "2’11”"
    mondexweight SPECIES_GOURGEIST, "27.6 lbs."


mondata SPECIES_BERGMITE, "Bergmite"
    basestats 55, 69, 85, 28, 32, 35
    types TYPE_ICE, TYPE_ICE
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MINERAL
    abilities ABILITY_OWN_TEMPO, ABILITY_ICE_BODY
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_BERGMITE_TM_DATA_0, SPECIES_BERGMITE_TM_DATA_1, SPECIES_BERGMITE_TM_DATA_2, SPECIES_BERGMITE_TM_DATA_3
    mondexentry SPECIES_BERGMITE, "It blocks opponents’ attacks with the\nice that shields its body. It uses cold\nair to repair any crack."
    mondexclassification SPECIES_BERGMITE, "Ice Chunk Pokémon"
    mondexheight SPECIES_BERGMITE, "3’03”"
    mondexweight SPECIES_BERGMITE, "219.4 lbs."


mondata SPECIES_AVALUGG, "Avalugg"
    basestats 95, 117, 184, 28, 44, 46
    types TYPE_ICE, TYPE_ICE
    catchrate 55
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MINERAL
    abilities ABILITY_OWN_TEMPO, ABILITY_ICE_BODY
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_AVALUGG_TM_DATA_0, SPECIES_AVALUGG_TM_DATA_1, SPECIES_AVALUGG_TM_DATA_2, SPECIES_AVALUGG_TM_DATA_3
    mondexentry SPECIES_AVALUGG, "The way several Bergmite huddle on its\nback make it look like an aircraft\ncarrier made of ice."
    mondexclassification SPECIES_AVALUGG, "Iceberg Pokémon"
    mondexheight SPECIES_AVALUGG, "6’07”"
    mondexweight SPECIES_AVALUGG, "1113.3 lbs."


mondata SPECIES_NOIBAT, "Noibat"
    basestats 40, 30, 35, 55, 45, 40
    types TYPE_FLYING, TYPE_DRAGON
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_DRAGON
    abilities ABILITY_FRISK, ABILITY_INFILTRATOR
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NOIBAT_TM_DATA_0, SPECIES_NOIBAT_TM_DATA_1, SPECIES_NOIBAT_TM_DATA_2, SPECIES_NOIBAT_TM_DATA_3
    mondexentry SPECIES_NOIBAT, "They live in pitch black caves. Their\nenormous ears can emit ultrasonic waves\nof 200,000 Hertz."
    mondexclassification SPECIES_NOIBAT, "Sound Wave Pokémon"
    mondexheight SPECIES_NOIBAT, "1’08”"
    mondexweight SPECIES_NOIBAT, "17.6 lbs."


mondata SPECIES_NOIVERN, "Noivern"
    basestats 85, 70, 80, 123, 97, 80
    types TYPE_FLYING, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_DRAGON
    abilities ABILITY_FRISK, ABILITY_INFILTRATOR
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NOIVERN_TM_DATA_0, SPECIES_NOIVERN_TM_DATA_1, SPECIES_NOIVERN_TM_DATA_2, SPECIES_NOIVERN_TM_DATA_3
    mondexentry SPECIES_NOIVERN, "This hot-blooded Pokémon attacks\nanything it sees with ultrasonic waves\nthat can crush boulders."
    mondexclassification SPECIES_NOIVERN, "Sound Wave Pokémon"
    mondexheight SPECIES_NOIVERN, "4’11”"
    mondexweight SPECIES_NOIVERN, "187.4 lbs."


mondata SPECIES_XERNEAS, "Xerneas"
    basestats 126, 131, 95, 99, 131, 98
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_FAIRY_AURA, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_XERNEAS_TM_DATA_0, SPECIES_XERNEAS_TM_DATA_1, SPECIES_XERNEAS_TM_DATA_2, SPECIES_XERNEAS_TM_DATA_3
    mondexentry SPECIES_XERNEAS, "When the horns on its head shine in\nseven different colors, it is said to be\nsharing everlasting life."
    mondexclassification SPECIES_XERNEAS, "Life Pokémon"
    mondexheight SPECIES_XERNEAS, "9’10”"
    mondexweight SPECIES_XERNEAS, "474.0 lbs."


mondata SPECIES_YVELTAL, "Yveltal"
    basestats 126, 131, 95, 99, 131, 98
    types TYPE_DARK, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_DARK_AURA, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_YVELTAL_TM_DATA_0, SPECIES_YVELTAL_TM_DATA_1, SPECIES_YVELTAL_TM_DATA_2, SPECIES_YVELTAL_TM_DATA_3
    mondexentry SPECIES_YVELTAL, "When its life comes to an end, it\nabsorbs the life energy of every living\nthing and turns into a cocoon."
    mondexclassification SPECIES_YVELTAL, "Destruction Pokémon"
    mondexheight SPECIES_YVELTAL, "19’00”"
    mondexweight SPECIES_YVELTAL, "447.5 lbs."


mondata SPECIES_ZYGARDE, "Zygarde"
    basestats 108, 100, 121, 95, 81, 95
    types TYPE_DRAGON, TYPE_GROUND
    catchrate 3
    baseexp 270
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_AURA_BREAK, ABILITY_POWER_CONSTRUCT
    runchance 0
    colorflip BODY_COLOR_GREEN, 1
    tmdata SPECIES_ZYGARDE_TM_DATA_0, SPECIES_ZYGARDE_TM_DATA_1, SPECIES_ZYGARDE_TM_DATA_2, SPECIES_ZYGARDE_TM_DATA_3
    mondexentry SPECIES_ZYGARDE, "When the Kalos region’s ecosystem falls\ninto disarray, it appears and reveals\nits secret power."
    mondexclassification SPECIES_ZYGARDE, "Order Pokémon"
    mondexheight SPECIES_ZYGARDE, "16’05”"
    mondexweight SPECIES_ZYGARDE, "672.4 lbs."


mondata SPECIES_DIANCIE, "Diancie"
    basestats 50, 100, 150, 50, 100, 150
    types TYPE_ROCK, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_ROCK
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_CLEAR_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_DIANCIE_TM_DATA_0, SPECIES_DIANCIE_TM_DATA_1, SPECIES_DIANCIE_TM_DATA_2, SPECIES_DIANCIE_TM_DATA_3
    mondexentry SPECIES_DIANCIE, "It can instantly create many diamonds\nby compressing the carbon in the air\nbetween its hands."
    mondexclassification SPECIES_DIANCIE, "Jewel Pokémon"
    mondexheight SPECIES_DIANCIE, "2’04”"
    mondexweight SPECIES_DIANCIE, "19.4 lbs."


mondata SPECIES_HOOPA, "Hoopa"
    basestats 80, 110, 60, 70, 150, 130
    types TYPE_PSYCHIC, TYPE_GHOST
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 100
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_MAGICIAN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_HOOPA_TM_DATA_0, SPECIES_HOOPA_TM_DATA_1, SPECIES_HOOPA_TM_DATA_2, SPECIES_HOOPA_TM_DATA_3
    mondexentry SPECIES_HOOPA, "It gathers things it likes and passes\nthem through its loop to teleport them\nto a secret place."
    mondexclassification SPECIES_HOOPA, "Mischief Pokémon"
    mondexheight SPECIES_HOOPA, "1’08”"
    mondexweight SPECIES_HOOPA, "19.8 lbs."


mondata SPECIES_VOLCANION, "Volcanion"
    basestats 80, 110, 120, 70, 130, 90
    types TYPE_FIRE, TYPE_WATER
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 100
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_WATER_ABSORB, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_VOLCANION_TM_DATA_0, SPECIES_VOLCANION_TM_DATA_1, SPECIES_VOLCANION_TM_DATA_2, SPECIES_VOLCANION_TM_DATA_3
    mondexentry SPECIES_VOLCANION, "It expels its internal steam from the\narms on its back. It has enough power to\nblow away a mountain."
    mondexclassification SPECIES_VOLCANION, "Steam Pokémon"
    mondexheight SPECIES_VOLCANION, "5’07”"
    mondexweight SPECIES_VOLCANION, "429.9 lbs."


mondata SPECIES_ROWLET, "Rowlett"
    basestats 68, 55, 55, 42, 50, 50
    types TYPE_GRASS, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_ROWLET_TM_DATA_0, SPECIES_ROWLET_TM_DATA_1, SPECIES_ROWLET_TM_DATA_2, SPECIES_ROWLET_TM_DATA_3
    mondexentry SPECIES_ROWLET, "It feels relaxed in tight, dark places\nand has been known to use its Trainer’s\npocket or bag as a nest."
    mondexclassification SPECIES_ROWLET, "Grass Quill Pokémon"
    mondexheight SPECIES_ROWLET, "0’12”"
    mondexweight SPECIES_ROWLET, "3.3 lbs."


mondata SPECIES_DARTRIX, "Dartrix"
    basestats 78, 75, 75, 52, 70, 70
    types TYPE_GRASS, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DARTRIX_TM_DATA_0, SPECIES_DARTRIX_TM_DATA_1, SPECIES_DARTRIX_TM_DATA_2, SPECIES_DARTRIX_TM_DATA_3
    mondexentry SPECIES_DARTRIX, "It throws sharp feathers called blade\nquills at enemies or prey. It seldom\nmisses."
    mondexclassification SPECIES_DARTRIX, "Blade Quill Pokémon"
    mondexheight SPECIES_DARTRIX, "2’04”"
    mondexweight SPECIES_DARTRIX, "35.3 lbs."


mondata SPECIES_DECIDUEYE, "Decidueye"
    basestats 78, 107, 75, 70, 100, 100
    types TYPE_GRASS, TYPE_GHOST
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DECIDUEYE_TM_DATA_0, SPECIES_DECIDUEYE_TM_DATA_1, SPECIES_DECIDUEYE_TM_DATA_2, SPECIES_DECIDUEYE_TM_DATA_3
    mondexentry SPECIES_DECIDUEYE, "Although basically cool and cautious,\nwhen it’s caught by surprise, it’s\nseized by panic."
    mondexclassification SPECIES_DECIDUEYE, "Arrow Quill Pokémon"
    mondexheight SPECIES_DECIDUEYE, "5’03”"
    mondexweight SPECIES_DECIDUEYE, "80.7 lbs."


mondata SPECIES_LITTEN, "Litten"
    basestats 45, 65, 40, 70, 60, 40
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_LITTEN_TM_DATA_0, SPECIES_LITTEN_TM_DATA_1, SPECIES_LITTEN_TM_DATA_2, SPECIES_LITTEN_TM_DATA_3
    mondexentry SPECIES_LITTEN, "It doesn’t allow its emotions to be\neasily seen. Earning its trust takes\ntime. It prefers solitude."
    mondexclassification SPECIES_LITTEN, "Fire Cat Pokémon"
    mondexheight SPECIES_LITTEN, "1’04”"
    mondexweight SPECIES_LITTEN, "9.5 lbs."


mondata SPECIES_TORRACAT, "Torracat"
    basestats 65, 85, 50, 90, 80, 50
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_TORRACAT_TM_DATA_0, SPECIES_TORRACAT_TM_DATA_1, SPECIES_TORRACAT_TM_DATA_2, SPECIES_TORRACAT_TM_DATA_3
    mondexentry SPECIES_TORRACAT, "It boasts powerful front legs. With a\nsingle punch, it can bend an iron bar\nright over."
    mondexclassification SPECIES_TORRACAT, "Fire Cat Pokémon"
    mondexheight SPECIES_TORRACAT, "2’04”"
    mondexweight SPECIES_TORRACAT, "55.1 lbs."


mondata SPECIES_INCINEROAR, "Incineroar"
    basestats 95, 115, 90, 60, 80, 90
    types TYPE_FIRE, TYPE_DARK
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_INCINEROAR_TM_DATA_0, SPECIES_INCINEROAR_TM_DATA_1, SPECIES_INCINEROAR_TM_DATA_2, SPECIES_INCINEROAR_TM_DATA_3
    mondexentry SPECIES_INCINEROAR, "When its fighting spirit is set alight,\nthe flames around its waist become\nespecially intense."
    mondexclassification SPECIES_INCINEROAR, "Heel Pokémon"
    mondexheight SPECIES_INCINEROAR, "5’11”"
    mondexweight SPECIES_INCINEROAR, "183.0 lbs."


mondata SPECIES_POPPLIO, "Popplio"
    basestats 50, 54, 54, 40, 66, 56
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_POPPLIO_TM_DATA_0, SPECIES_POPPLIO_TM_DATA_1, SPECIES_POPPLIO_TM_DATA_2, SPECIES_POPPLIO_TM_DATA_3
    mondexentry SPECIES_POPPLIO, "The balloons it inflates with its nose\ngrow larger and larger as it practices\nday by day."
    mondexclassification SPECIES_POPPLIO, "Sea Lion Pokémon"
    mondexheight SPECIES_POPPLIO, "1’04”"
    mondexweight SPECIES_POPPLIO, "16.5 lbs."


mondata SPECIES_BRIONNE, "Brionne"
    basestats 60, 69, 69, 50, 91, 81
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_BRIONNE_TM_DATA_0, SPECIES_BRIONNE_TM_DATA_1, SPECIES_BRIONNE_TM_DATA_2, SPECIES_BRIONNE_TM_DATA_3
    mondexentry SPECIES_BRIONNE, "It attacks by smacking its enemies with\nthe exploding water balloons that it\ncreates."
    mondexclassification SPECIES_BRIONNE, "Pop Star Pokémon"
    mondexheight SPECIES_BRIONNE, "1’12”"
    mondexweight SPECIES_BRIONNE, "38.6 lbs."


mondata SPECIES_PRIMARINA, "Primarina"
    basestats 80, 74, 74, 60, 126, 116
    types TYPE_WATER, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_PRIMARINA_TM_DATA_0, SPECIES_PRIMARINA_TM_DATA_1, SPECIES_PRIMARINA_TM_DATA_2, SPECIES_PRIMARINA_TM_DATA_3
    mondexentry SPECIES_PRIMARINA, "Also known as a songstress, it has a fantastical\nlook on moonlit nights when it leads its colony\nin song."
    mondexclassification SPECIES_PRIMARINA, "Soloist Pokémon"
    mondexheight SPECIES_PRIMARINA, "5’11”"
    mondexweight SPECIES_PRIMARINA, "97.0 lbs."


mondata SPECIES_PIKIPEK, "Pikipek"
    basestats 35, 75, 30, 65, 30, 30
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_ORAN_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_SKILL_LINK
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_PIKIPEK_TM_DATA_0, SPECIES_PIKIPEK_TM_DATA_1, SPECIES_PIKIPEK_TM_DATA_2, SPECIES_PIKIPEK_TM_DATA_3
    mondexentry SPECIES_PIKIPEK, "It may look spindly, but its neck\nmuscles are heavy-duty. It can peck at a\ntree 16 times per second!"
    mondexclassification SPECIES_PIKIPEK, "Woodpecker Pokémon"
    mondexheight SPECIES_PIKIPEK, "0’12”"
    mondexweight SPECIES_PIKIPEK, "2.6 lbs."


mondata SPECIES_TRUMBEAK, "Trumbeak"
    basestats 55, 85, 50, 75, 40, 50
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_SITRUS_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_SKILL_LINK
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_TRUMBEAK_TM_DATA_0, SPECIES_TRUMBEAK_TM_DATA_1, SPECIES_TRUMBEAK_TM_DATA_2, SPECIES_TRUMBEAK_TM_DATA_3
    mondexentry SPECIES_TRUMBEAK, "It can bend the tip of its beak to\nproduce over a hundred different cries\nat will."
    mondexclassification SPECIES_TRUMBEAK, "Bugle Beak Pokémon"
    mondexheight SPECIES_TRUMBEAK, "1’12”"
    mondexweight SPECIES_TRUMBEAK, "32.6 lbs."


mondata SPECIES_TOUCANNON, "Toucannon"
    basestats 80, 120, 75, 60, 75, 75
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_RAWST_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_SKILL_LINK
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_TOUCANNON_TM_DATA_0, SPECIES_TOUCANNON_TM_DATA_1, SPECIES_TOUCANNON_TM_DATA_2, SPECIES_TOUCANNON_TM_DATA_3
    mondexentry SPECIES_TOUCANNON, "Known for forming harmonious couples,\nit is brought to wedding ceremonies as a\ngood luck charm."
    mondexclassification SPECIES_TOUCANNON, "Cannon Pokémon"
    mondexheight SPECIES_TOUCANNON, "3’07”"
    mondexweight SPECIES_TOUCANNON, "57.3 lbs."


mondata SPECIES_YUNGOOS, "Yungoos"
    basestats 48, 70, 30, 45, 30, 30
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_PECHA_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_STAKEOUT, ABILITY_STRONG_JAW
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_YUNGOOS_TM_DATA_0, SPECIES_YUNGOOS_TM_DATA_1, SPECIES_YUNGOOS_TM_DATA_2, SPECIES_YUNGOOS_TM_DATA_3
    mondexentry SPECIES_YUNGOOS, "It prefers to eat fresh living things\nso it marches down streets in search of\nprey."
    mondexclassification SPECIES_YUNGOOS, "Loitering Pokémon"
    mondexheight SPECIES_YUNGOOS, "1’04”"
    mondexweight SPECIES_YUNGOOS, "13.2 lbs."


mondata SPECIES_GUMSHOOS, "Gumshoos"
    basestats 88, 110, 60, 45, 55, 60
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 127
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_PECHA_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_STAKEOUT, ABILITY_STRONG_JAW
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GUMSHOOS_TM_DATA_0, SPECIES_GUMSHOOS_TM_DATA_1, SPECIES_GUMSHOOS_TM_DATA_2, SPECIES_GUMSHOOS_TM_DATA_3
    mondexentry SPECIES_GUMSHOOS, "Patient by nature, it loses control of\nitself and pounces when it spots its\nfavorite meal-Rattata!"
    mondexclassification SPECIES_GUMSHOOS, "Stakeout Pokémon"
    mondexheight SPECIES_GUMSHOOS, "2’04”"
    mondexweight SPECIES_GUMSHOOS, "31.3 lbs."


mondata SPECIES_GRUBBIN, "Grubbin"
    basestats 47, 62, 45, 46, 55, 45
    types TYPE_BUG, TYPE_BUG
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_GRUBBIN_TM_DATA_0, SPECIES_GRUBBIN_TM_DATA_1, SPECIES_GRUBBIN_TM_DATA_2, SPECIES_GRUBBIN_TM_DATA_3
    mondexentry SPECIES_GRUBBIN, "Its strong jaw enables it to scrape\ntrees and slurp out the sap. It normally\nlives underground."
    mondexclassification SPECIES_GRUBBIN, "Larva Pokémon"
    mondexheight SPECIES_GRUBBIN, "1’04”"
    mondexweight SPECIES_GRUBBIN, "9.7 lbs."


mondata SPECIES_CHARJABUG, "Charjabug"
    basestats 57, 82, 95, 36, 55, 75
    types TYPE_BUG, TYPE_ELECTRIC
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_CELL_BATTERY, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_BATTERY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CHARJABUG_TM_DATA_0, SPECIES_CHARJABUG_TM_DATA_1, SPECIES_CHARJABUG_TM_DATA_2, SPECIES_CHARJABUG_TM_DATA_3
    mondexentry SPECIES_CHARJABUG, "From the food it digests, it generates\nelectricity, and it stores this energy\nin its electric sac."
    mondexclassification SPECIES_CHARJABUG, "Battery Pokémon"
    mondexheight SPECIES_CHARJABUG, "1’08”"
    mondexweight SPECIES_CHARJABUG, "23.1 lbs."


mondata SPECIES_VIKAVOLT, "Vikavolt"
    basestats 77, 70, 90, 43, 145, 75
    types TYPE_BUG, TYPE_ELECTRIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_VIKAVOLT_TM_DATA_0, SPECIES_VIKAVOLT_TM_DATA_1, SPECIES_VIKAVOLT_TM_DATA_2, SPECIES_VIKAVOLT_TM_DATA_3
    mondexentry SPECIES_VIKAVOLT, "It flusters opponents with acrobatic\nflying maneuvers. This creates an\nopening for it to attack."
    mondexclassification SPECIES_VIKAVOLT, "Stag Beetle Pokémon"
    mondexheight SPECIES_VIKAVOLT, "4’11”"
    mondexweight SPECIES_VIKAVOLT, "99.2 lbs."


mondata SPECIES_CRABRAWLER, "Crabrawler"
    basestats 47, 82, 57, 63, 42, 47
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 225
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_ASPEAR_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_HYPER_CUTTER, ABILITY_IRON_FIST
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_CRABRAWLER_TM_DATA_0, SPECIES_CRABRAWLER_TM_DATA_1, SPECIES_CRABRAWLER_TM_DATA_2, SPECIES_CRABRAWLER_TM_DATA_3
    mondexentry SPECIES_CRABRAWLER, "Its hard pincers are well suited to\nboth offense and defense."
    mondexclassification SPECIES_CRABRAWLER, "Boxing Pokémon"
    mondexheight SPECIES_CRABRAWLER, "1’12”"
    mondexweight SPECIES_CRABRAWLER, "15.4 lbs."


mondata SPECIES_CRABOMINABLE, "Crabominable"
    basestats 97, 132, 77, 43, 62, 67
    types TYPE_FIGHTING, TYPE_ICE
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_CHERI_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_HYPER_CUTTER, ABILITY_IRON_FIST
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_CRABOMINABLE_TM_DATA_0, SPECIES_CRABOMINABLE_TM_DATA_1, SPECIES_CRABOMINABLE_TM_DATA_2, SPECIES_CRABOMINABLE_TM_DATA_3
    mondexentry SPECIES_CRABOMINABLE, "It stores coldness in its pincers and\npummels its foes. It can even smash\nthick walls of ice to bits!"
    mondexclassification SPECIES_CRABOMINABLE, "Woolly Crab Pokémon"
    mondexheight SPECIES_CRABOMINABLE, "5’07”"
    mondexweight SPECIES_CRABOMINABLE, "396.8 lbs."


mondata SPECIES_ORICORIO, "Oricorio"
    basestats 75, 70, 70, 93, 98, 70
    types TYPE_FIRE, TYPE_FLYING
    catchrate 45
    baseexp 167
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_HONEY
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_DANCER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_ORICORIO_TM_DATA_0, SPECIES_ORICORIO_TM_DATA_1, SPECIES_ORICORIO_TM_DATA_2, SPECIES_ORICORIO_TM_DATA_3
    mondexentry SPECIES_ORICORIO, "This Oricorio has sipped red nectar. Its\npassionate dance moves cause its enemies\nto combust in both body and mind."
    mondexclassification SPECIES_ORICORIO, "Dancing Pokémon"
    mondexheight SPECIES_ORICORIO, "1’12”"
    mondexweight SPECIES_ORICORIO, "7.5 lbs."


mondata SPECIES_CUTIEFLY, "Cutiefly"
    basestats 40, 45, 40, 84, 55, 40
    types TYPE_BUG, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_BUG
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_HONEY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_FAIRY
    abilities ABILITY_HONEY_GATHER, ABILITY_SHIELD_DUST
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_CUTIEFLY_TM_DATA_0, SPECIES_CUTIEFLY_TM_DATA_1, SPECIES_CUTIEFLY_TM_DATA_2, SPECIES_CUTIEFLY_TM_DATA_3
    mondexentry SPECIES_CUTIEFLY, "Myriads of Cutiefly flutter above the\nheads of people who have auras\nresembling those of flowers."
    mondexclassification SPECIES_CUTIEFLY, "Bee Fly Pokémon"
    mondexheight SPECIES_CUTIEFLY, "0’04”"
    mondexweight SPECIES_CUTIEFLY, "0.4 lbs."


mondata SPECIES_RIBOMBEE, "Ribombee"
    basestats 60, 55, 60, 124, 95, 70
    types TYPE_BUG, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_BUG
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_HONEY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_FAIRY
    abilities ABILITY_HONEY_GATHER, ABILITY_SHIELD_DUST
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_RIBOMBEE_TM_DATA_0, SPECIES_RIBOMBEE_TM_DATA_1, SPECIES_RIBOMBEE_TM_DATA_2, SPECIES_RIBOMBEE_TM_DATA_3
    mondexentry SPECIES_RIBOMBEE, "Some of Ribombee’s pollen puffs are\nhighly nutritious. They are sometimes\nsold as supplements."
    mondexclassification SPECIES_RIBOMBEE, "Bee Fly Pokémon"
    mondexheight SPECIES_RIBOMBEE, "0’08”"
    mondexweight SPECIES_RIBOMBEE, "1.1 lbs."


mondata SPECIES_ROCKRUFF, "Rockruff"
    basestats 45, 65, 40, 60, 30, 40
    types TYPE_ROCK, TYPE_ROCK
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_KEEN_EYE, ABILITY_VITAL_SPIRIT
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_ROCKRUFF_TM_DATA_0, SPECIES_ROCKRUFF_TM_DATA_1, SPECIES_ROCKRUFF_TM_DATA_2, SPECIES_ROCKRUFF_TM_DATA_3
    mondexentry SPECIES_ROCKRUFF, "When it rubs the rocks on its neck\nagainst you, that’s proof of its love\nfor you."
    mondexclassification SPECIES_ROCKRUFF, "Puppy Pokémon"
    mondexheight SPECIES_ROCKRUFF, "1’08”"
    mondexweight SPECIES_ROCKRUFF, "20.3 lbs."


mondata SPECIES_LYCANROC, "Lycanroc"
    basestats 75, 115, 65, 112, 55, 65
    types TYPE_ROCK, TYPE_ROCK
    catchrate 90
    baseexp 170
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_KEEN_EYE,  ABILITY_SAND_RUSH
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_LYCANROC_TM_DATA_0, SPECIES_LYCANROC_TM_DATA_1, SPECIES_LYCANROC_TM_DATA_2, SPECIES_LYCANROC_TM_DATA_3
    mondexentry SPECIES_LYCANROC, "Well equipped with claws and fangs, it\nuses the sharp rocks in its mane as\nweapons."
    mondexclassification SPECIES_LYCANROC, "Wolf Pokémon"
    mondexheight SPECIES_LYCANROC, "2’07”"
    mondexweight SPECIES_LYCANROC, "55.1 lbs."


mondata SPECIES_WISHIWASHI, "Wishiwashi"
    basestats 45, 20, 20, 40, 25, 25
    types TYPE_WATER, TYPE_WATER
    catchrate 60
    baseexp 61
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_SCHOOLING, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_WISHIWASHI_TM_DATA_0, SPECIES_WISHIWASHI_TM_DATA_1, SPECIES_WISHIWASHI_TM_DATA_2, SPECIES_WISHIWASHI_TM_DATA_3
    mondexentry SPECIES_WISHIWASHI, "They’re weak, so they move in schools.\nHowever, they can also often be seen all\nalone, having strayed from the school."
    mondexclassification SPECIES_WISHIWASHI, "Small Fry Pokémon"
    mondexheight SPECIES_WISHIWASHI, "0’08”"
    mondexweight SPECIES_WISHIWASHI, "0.7 lbs."


mondata SPECIES_MAREANIE, "Mareanie"
    basestats 50, 53, 62, 45, 43, 52
    types TYPE_POISON, TYPE_WATER
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_POISON_BARB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_MERCILESS, ABILITY_LIMBER
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_MAREANIE_TM_DATA_0, SPECIES_MAREANIE_TM_DATA_1, SPECIES_MAREANIE_TM_DATA_2, SPECIES_MAREANIE_TM_DATA_3
    mondexentry SPECIES_MAREANIE, "Aside from its head, its body parts\nregenerate quickly if they’re cut off."
    mondexclassification SPECIES_MAREANIE, "Brutal Star Pokémon"
    mondexheight SPECIES_MAREANIE, "1’04”"
    mondexweight SPECIES_MAREANIE, "17.6 lbs."


mondata SPECIES_TOXAPEX, "Toxapex"
    basestats 50, 63, 152, 35, 53, 142
    types TYPE_POISON, TYPE_WATER
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_POISON_BARB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_MERCILESS, ABILITY_LIMBER
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_TOXAPEX_TM_DATA_0, SPECIES_TOXAPEX_TM_DATA_1, SPECIES_TOXAPEX_TM_DATA_2, SPECIES_TOXAPEX_TM_DATA_3
    mondexentry SPECIES_TOXAPEX, "It crawls along the ocean floor on its\n12 legs. It leaves a trail of Corsola\nbits scattered in its wake."
    mondexclassification SPECIES_TOXAPEX, "Brutal Star Pokémon"
    mondexheight SPECIES_TOXAPEX, "2’04”"
    mondexweight SPECIES_TOXAPEX, "32.0 lbs."


mondata SPECIES_MUDBRAY, "Mudbray"
    basestats 70, 100, 70, 45, 45, 55
    types TYPE_GROUND, TYPE_GROUND
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_LIGHT_CLAY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OWN_TEMPO, ABILITY_STAMINA
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_MUDBRAY_TM_DATA_0, SPECIES_MUDBRAY_TM_DATA_1, SPECIES_MUDBRAY_TM_DATA_2, SPECIES_MUDBRAY_TM_DATA_3
    mondexentry SPECIES_MUDBRAY, "The mud stuck to Mudbray’s hooves\nenhances its grip and its powerful\nrunning gait."
    mondexclassification SPECIES_MUDBRAY, "Donkey Pokémon"
    mondexheight SPECIES_MUDBRAY, "3’03”"
    mondexweight SPECIES_MUDBRAY, "242.5 lbs."


mondata SPECIES_MUDSDALE, "Mudsdale"
    basestats 100, 125, 100, 35, 55, 85
    types TYPE_GROUND, TYPE_GROUND
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_LIGHT_CLAY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OWN_TEMPO, ABILITY_STAMINA
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_MUDSDALE_TM_DATA_0, SPECIES_MUDSDALE_TM_DATA_1, SPECIES_MUDSDALE_TM_DATA_2, SPECIES_MUDSDALE_TM_DATA_3
    mondexentry SPECIES_MUDSDALE, "It can trudge mountain roads without\nrest for three days, all the while\ndragging a 10-ton load."
    mondexclassification SPECIES_MUDSDALE, "Draft Horse Pokémon"
    mondexheight SPECIES_MUDSDALE, "8’02”"
    mondexweight SPECIES_MUDSDALE, "2028.2 lbs."


mondata SPECIES_DEWPIDER, "Dewpider"
    basestats 38, 40, 52, 27, 40, 72
    types TYPE_WATER, TYPE_BUG
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_MYSTIC_WATER, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_BUG
    abilities ABILITY_WATER_BUBBLE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_DEWPIDER_TM_DATA_0, SPECIES_DEWPIDER_TM_DATA_1, SPECIES_DEWPIDER_TM_DATA_2, SPECIES_DEWPIDER_TM_DATA_3
    mondexentry SPECIES_DEWPIDER, "It crawls onto the land in search of\nfood. Its water bubble allows it to\nbreathe and protects its head."
    mondexclassification SPECIES_DEWPIDER, "Water Bubble Pokémon"
    mondexheight SPECIES_DEWPIDER, "0’12”"
    mondexweight SPECIES_DEWPIDER, "8.8 lbs."


mondata SPECIES_ARAQUANID, "Araquanid"
    basestats 68, 70, 92, 42, 50, 132
    types TYPE_WATER, TYPE_BUG
    catchrate 100
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_MYSTIC_WATER, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_BUG
    abilities ABILITY_WATER_BUBBLE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_ARAQUANID_TM_DATA_0, SPECIES_ARAQUANID_TM_DATA_1, SPECIES_ARAQUANID_TM_DATA_2, SPECIES_ARAQUANID_TM_DATA_3
    mondexentry SPECIES_ARAQUANID, "It delivers headbutts with the bubble\non its head. Small Pokémon get sucked\ninto it, where they drown."
    mondexclassification SPECIES_ARAQUANID, "Water Bubble Pokémon"
    mondexheight SPECIES_ARAQUANID, "5’11”"
    mondexweight SPECIES_ARAQUANID, "180.8 lbs."


mondata SPECIES_FOMANTIS, "Fomantis"
    basestats 40, 55, 35, 35, 50, 35
    types TYPE_GRASS, TYPE_GRASS
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_MIRACLE_SEED, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_LEAF_GUARD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_FOMANTIS_TM_DATA_0, SPECIES_FOMANTIS_TM_DATA_1, SPECIES_FOMANTIS_TM_DATA_2, SPECIES_FOMANTIS_TM_DATA_3
    mondexentry SPECIES_FOMANTIS, "It loves the sunshine. When it basks in\nthe sunlight regularly, it grows up\nwith vivid coloration."
    mondexclassification SPECIES_FOMANTIS, "Sickle Grass Pokémon"
    mondexheight SPECIES_FOMANTIS, "0’12”"
    mondexweight SPECIES_FOMANTIS, "3.3 lbs."


mondata SPECIES_LURANTIS, "Lurantis"
    basestats 70, 105, 90, 45, 80, 90
    types TYPE_GRASS, TYPE_GRASS
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_MIRACLE_SEED, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_LEAF_GUARD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_LURANTIS_TM_DATA_0, SPECIES_LURANTIS_TM_DATA_1, SPECIES_LURANTIS_TM_DATA_2, SPECIES_LURANTIS_TM_DATA_3
    mondexentry SPECIES_LURANTIS, "For self-protection, it pretends to be\na bug Pokémon. Both of its arms bear\nkeen-edged petals."
    mondexclassification SPECIES_LURANTIS, "Bloom Sickle Pokémon"
    mondexheight SPECIES_LURANTIS, "2’11”"
    mondexweight SPECIES_LURANTIS, "40.8 lbs."


mondata SPECIES_MORELULL, "Morelull"
    basestats 40, 35, 55, 15, 65, 75
    types TYPE_GRASS, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_GRASS
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_TINY_MUSHROOM, ITEM_BIG_MUSHROOM
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_ILLUMINATE, ABILITY_EFFECT_SPORE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_MORELULL_TM_DATA_0, SPECIES_MORELULL_TM_DATA_1, SPECIES_MORELULL_TM_DATA_2, SPECIES_MORELULL_TM_DATA_3
    mondexentry SPECIES_MORELULL, "It scatters spores that flicker and\nglow. Anyone seeing these lights falls\ninto a deep slumber."
    mondexclassification SPECIES_MORELULL, "Illuminating Pokémon"
    mondexheight SPECIES_MORELULL, "0’08”"
    mondexweight SPECIES_MORELULL, "3.3 lbs."


mondata SPECIES_SHIINOTIC, "Shiinotic"
    basestats 60, 45, 80, 30, 90, 100
    types TYPE_GRASS, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_GRASS
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_TINY_MUSHROOM, ITEM_BIG_MUSHROOM
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_ILLUMINATE, ABILITY_EFFECT_SPORE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SHIINOTIC_TM_DATA_0, SPECIES_SHIINOTIC_TM_DATA_1, SPECIES_SHIINOTIC_TM_DATA_2, SPECIES_SHIINOTIC_TM_DATA_3
    mondexentry SPECIES_SHIINOTIC, "When it starts fighting for territory\nwith Parasect, the entire area gets\ncompletely coated in spores!"
    mondexclassification SPECIES_SHIINOTIC, "Illuminating Pokémon"
    mondexheight SPECIES_SHIINOTIC, "3’03”"
    mondexweight SPECIES_SHIINOTIC, "25.4 lbs."


mondata SPECIES_SALANDIT, "Salandit"
    basestats 48, 44, 40, 77, 71, 40
    types TYPE_POISON, TYPE_FIRE
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_SMOKE_BALL, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_CORROSION, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SALANDIT_TM_DATA_0, SPECIES_SALANDIT_TM_DATA_1, SPECIES_SALANDIT_TM_DATA_2, SPECIES_SALANDIT_TM_DATA_3
    mondexentry SPECIES_SALANDIT, "It burns its bodily fluids to create a\npoisonous gas. It weakens enemies and\nsends them reeling with it."
    mondexclassification SPECIES_SALANDIT, "Toxic Lizard Pokémon"
    mondexheight SPECIES_SALANDIT, "1’12”"
    mondexweight SPECIES_SALANDIT, "10.6 lbs."


mondata SPECIES_SALAZZLE, "Salazzle"
    basestats 68, 64, 60, 117, 111, 60
    types TYPE_POISON, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_SMOKE_BALL, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_CORROSION, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SALAZZLE_TM_DATA_0, SPECIES_SALAZZLE_TM_DATA_1, SPECIES_SALAZZLE_TM_DATA_2, SPECIES_SALAZZLE_TM_DATA_3
    mondexentry SPECIES_SALAZZLE, "that couldn’t\nbring it food with a fierce slap of its\nflame-spewing palm."
    mondexclassification SPECIES_SALAZZLE, "Toxic Lizard Pokémon"
    mondexheight SPECIES_SALAZZLE, "3’11”"
    mondexweight SPECIES_SALAZZLE, "48.9 lbs."


mondata SPECIES_STUFFUL, "Stufful"
    basestats 70, 75, 50, 50, 45, 50
    types TYPE_NORMAL, TYPE_FIGHTING
    catchrate 140
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FLUFFY, ABILITY_KLUTZ
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_STUFFUL_TM_DATA_0, SPECIES_STUFFUL_TM_DATA_1, SPECIES_STUFFUL_TM_DATA_2, SPECIES_STUFFUL_TM_DATA_3
    mondexentry SPECIES_STUFFUL, "Stufful hates to be hugged or touched\nin any way. It will squirm, thrash, and\nresist with amazing power."
    mondexclassification SPECIES_STUFFUL, "Flailing Pokémon"
    mondexheight SPECIES_STUFFUL, "1’08”"
    mondexweight SPECIES_STUFFUL, "15.0 lbs."


mondata SPECIES_BEWEAR, "Bewear"
    basestats 120, 125, 80, 60, 55, 60
    types TYPE_NORMAL, TYPE_FIGHTING
    catchrate 70
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FLUFFY, ABILITY_KLUTZ
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_BEWEAR_TM_DATA_0, SPECIES_BEWEAR_TM_DATA_1, SPECIES_BEWEAR_TM_DATA_2, SPECIES_BEWEAR_TM_DATA_3
    mondexentry SPECIES_BEWEAR, "It boasts tremendous physical strength.\nMany people call it the most dangerous\nPokémon in Alola region."
    mondexclassification SPECIES_BEWEAR, "Strong Arm Pokémon"
    mondexheight SPECIES_BEWEAR, "6’11”"
    mondexweight SPECIES_BEWEAR, "297.6 lbs."


mondata SPECIES_BOUNSWEET, "Bounsweet"
    basestats 42, 30, 38, 32, 30, 38
    types TYPE_GRASS, TYPE_GRASS
    catchrate 235
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_GRASSY_SEED, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_LEAF_GUARD, ABILITY_OBLIVIOUS
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_BOUNSWEET_TM_DATA_0, SPECIES_BOUNSWEET_TM_DATA_1, SPECIES_BOUNSWEET_TM_DATA_2, SPECIES_BOUNSWEET_TM_DATA_3
    mondexentry SPECIES_BOUNSWEET, "Because of its sweet, delicious aroma,\nbird Pokémon are always after it."
    mondexclassification SPECIES_BOUNSWEET, "Fruit Pokémon"
    mondexheight SPECIES_BOUNSWEET, "0’12”"
    mondexweight SPECIES_BOUNSWEET, "7.1 lbs."


mondata SPECIES_STEENEE, "Steenee"
    basestats 52, 40, 48, 62, 40, 48
    types TYPE_GRASS, TYPE_GRASS
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_GRASSY_SEED, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_LEAF_GUARD, ABILITY_OBLIVIOUS
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_STEENEE_TM_DATA_0, SPECIES_STEENEE_TM_DATA_1, SPECIES_STEENEE_TM_DATA_2, SPECIES_STEENEE_TM_DATA_3
    mondexentry SPECIES_STEENEE, "It bounces around, swinging the sepals\non its head with abandon. It’s quite\npainful when it smacks you!"
    mondexclassification SPECIES_STEENEE, "Fruit Pokémon"
    mondexheight SPECIES_STEENEE, "2’04”"
    mondexweight SPECIES_STEENEE, "18.1 lbs."


mondata SPECIES_TSAREENA, "Tsareena"
    basestats 72, 120, 98, 72, 50, 98
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_GRASSY_SEED, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_LEAF_GUARD, ABILITY_QUEENLY_MAJESTY
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_TSAREENA_TM_DATA_0, SPECIES_TSAREENA_TM_DATA_1, SPECIES_TSAREENA_TM_DATA_2, SPECIES_TSAREENA_TM_DATA_3
    mondexentry SPECIES_TSAREENA, "A master of grand and beautiful kicks,\nit can knock out even kickboxing\nchampions with a single blow."
    mondexclassification SPECIES_TSAREENA, "Fruit Pokémon"
    mondexheight SPECIES_TSAREENA, "3’11”"
    mondexweight SPECIES_TSAREENA, "47.2 lbs."


mondata SPECIES_COMFEY, "Comfey"
    basestats 51, 52, 90, 100, 82, 110
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_MISTY_SEED, ITEM_NONE
    genderratio 190
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_FLOWER_VEIL, ABILITY_TRIAGE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_COMFEY_TM_DATA_0, SPECIES_COMFEY_TM_DATA_1, SPECIES_COMFEY_TM_DATA_2, SPECIES_COMFEY_TM_DATA_3
    mondexentry SPECIES_COMFEY, "Baths prepared with the flowers from\nits vine have a relaxing effect so it is\na hit to many people."
    mondexclassification SPECIES_COMFEY, "Posy Picker Pokémon"
    mondexheight SPECIES_COMFEY, "0’04”"
    mondexweight SPECIES_COMFEY, "0.7 lbs."


mondata SPECIES_ORANGURU, "Oranguru"
    basestats 90, 60, 80, 60, 90, 110
    types TYPE_NORMAL, TYPE_PSYCHIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INNER_FOCUS, ABILITY_TELEPATHY
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_ORANGURU_TM_DATA_0, SPECIES_ORANGURU_TM_DATA_1, SPECIES_ORANGURU_TM_DATA_2, SPECIES_ORANGURU_TM_DATA_3
    mondexentry SPECIES_ORANGURU, "Known for its extreme intelligence, it\nwill look down on inexperienced\nTrainers."
    mondexclassification SPECIES_ORANGURU, "Sage Pokémon"
    mondexheight SPECIES_ORANGURU, "4’11”"
    mondexweight SPECIES_ORANGURU, "167.5 lbs."


mondata SPECIES_PASSIMIAN, "Passimian"
    basestats 100, 120, 90, 80, 40, 60
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RECEIVER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_PASSIMIAN_TM_DATA_0, SPECIES_PASSIMIAN_TM_DATA_1, SPECIES_PASSIMIAN_TM_DATA_2, SPECIES_PASSIMIAN_TM_DATA_3
    mondexentry SPECIES_PASSIMIAN, "They form groups of 20 individuals.\nTheir mutual bond is remarkable-they\nwill never let down a comrade."
    mondexclassification SPECIES_PASSIMIAN, "Teamwork Pokémon"
    mondexheight SPECIES_PASSIMIAN, "6’07”"
    mondexweight SPECIES_PASSIMIAN, "182.5 lbs."


mondata SPECIES_WIMPOD, "Wimpod"
    basestats 25, 35, 40, 80, 20, 30
    types TYPE_BUG, TYPE_WATER
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_WATER_3
    abilities ABILITY_WIMP_OUT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_WIMPOD_TM_DATA_0, SPECIES_WIMPOD_TM_DATA_1, SPECIES_WIMPOD_TM_DATA_2, SPECIES_WIMPOD_TM_DATA_3
    mondexentry SPECIES_WIMPOD, "An astonishingly coward Pokémon, it\nwhirs its legs at high speed to run away\nif anything comes near it."
    mondexclassification SPECIES_WIMPOD, "Turn Tail Pokémon"
    mondexheight SPECIES_WIMPOD, "1’08”"
    mondexweight SPECIES_WIMPOD, "26.5 lbs."


mondata SPECIES_GOLISOPOD, "Golisopod"
    basestats 75, 125, 140, 40, 60, 90
    types TYPE_BUG, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_WATER_3
    abilities ABILITY_EMERGENCY_EXIT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_GOLISOPOD_TM_DATA_0, SPECIES_GOLISOPOD_TM_DATA_1, SPECIES_GOLISOPOD_TM_DATA_2, SPECIES_GOLISOPOD_TM_DATA_3
    mondexentry SPECIES_GOLISOPOD, "With a flashing slash of its giant\nsharp claws, it cleaves seawater-or even\nair-right in two."
    mondexclassification SPECIES_GOLISOPOD, "Hard Scale Pokémon"
    mondexheight SPECIES_GOLISOPOD, "6’07”"
    mondexweight SPECIES_GOLISOPOD, "238.1 lbs."


mondata SPECIES_SANDYGAST, "Sandygast"
    basestats 55, 55, 80, 15, 70, 45
    types TYPE_GHOST, TYPE_GROUND
    catchrate 140
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_SPELL_TAG, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_WATER_COMPACTION, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SANDYGAST_TM_DATA_0, SPECIES_SANDYGAST_TM_DATA_1, SPECIES_SANDYGAST_TM_DATA_2, SPECIES_SANDYGAST_TM_DATA_3
    mondexentry SPECIES_SANDYGAST, "Born from a sand mound playfully built\nby a child, this Pokémon embodies the\ngrudges of the departed."
    mondexclassification SPECIES_SANDYGAST, "Sand Heap Pokémon"
    mondexheight SPECIES_SANDYGAST, "1’08”"
    mondexweight SPECIES_SANDYGAST, "154.3 lbs."


mondata SPECIES_PALOSSAND, "Palossand"
    basestats 85, 75, 110, 35, 100, 75
    types TYPE_GHOST, TYPE_GROUND
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_SPELL_TAG, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_WATER_COMPACTION, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_PALOSSAND_TM_DATA_0, SPECIES_PALOSSAND_TM_DATA_1, SPECIES_PALOSSAND_TM_DATA_2, SPECIES_PALOSSAND_TM_DATA_3
    mondexentry SPECIES_PALOSSAND, "Buried beneath the castle are masses of\ndried-up bones from those whose\nvitality it has drained."
    mondexclassification SPECIES_PALOSSAND, "Sand Castle Pokémon"
    mondexheight SPECIES_PALOSSAND, "4’03”"
    mondexweight SPECIES_PALOSSAND, "551.1 lbs."


mondata SPECIES_PYUKUMUKU, "Pyukumuku"
    basestats 55, 60, 130, 5, 30, 130
    types TYPE_WATER, TYPE_WATER
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_INNARDS_OUT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_PYUKUMUKU_TM_DATA_0, SPECIES_PYUKUMUKU_TM_DATA_1, SPECIES_PYUKUMUKU_TM_DATA_2, SPECIES_PYUKUMUKU_TM_DATA_3
    mondexentry SPECIES_PYUKUMUKU, "Its body is covered with slime. If you\naccidentally step on it, you’ll slip,\nand it will get mad at you!"
    mondexclassification SPECIES_PYUKUMUKU, "Sea Cucumber Pokémon"
    mondexheight SPECIES_PYUKUMUKU, "0’12”"
    mondexweight SPECIES_PYUKUMUKU, "2.6 lbs."


mondata SPECIES_TYPE_NULL, "Type: Null"
    basestats 95, 95, 95, 59, 95, 95
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BATTLE_ARMOR, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_TYPE_NULL_TM_DATA_0, SPECIES_TYPE_NULL_TM_DATA_1, SPECIES_TYPE_NULL_TM_DATA_2, SPECIES_TYPE_NULL_TM_DATA_3
    mondexentry SPECIES_TYPE_NULL, "There’s danger of its going on a\nrampage, so its true power is sealed\naway beneath its control mask."
    mondexclassification SPECIES_TYPE_NULL, "Synthetic Pokémon"
    mondexheight SPECIES_TYPE_NULL, "6’03”"
    mondexweight SPECIES_TYPE_NULL, "265.7 lbs."


mondata SPECIES_SILVALLY, "Silvally"
    basestats 95, 95, 95, 95, 95, 95
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_RKS_SYSTEM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_SILVALLY_TM_DATA_0, SPECIES_SILVALLY_TM_DATA_1, SPECIES_SILVALLY_TM_DATA_2, SPECIES_SILVALLY_TM_DATA_3
    mondexentry SPECIES_SILVALLY, "It destroyed its own control mask. It\nhas become capable of changing type by\nequipping special memories."
    mondexclassification SPECIES_SILVALLY, "Synthetic Pokémon"
    mondexheight SPECIES_SILVALLY, "7’07”"
    mondexweight SPECIES_SILVALLY, "221.6 lbs."


mondata SPECIES_MINIOR, "Minior"
    basestats 60, 60, 100, 60, 60, 100
    types TYPE_ROCK, TYPE_FLYING
    catchrate 30
    baseexp 154
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_SHIELDS_DOWN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 1
    tmdata SPECIES_MINIOR_TM_DATA_0, SPECIES_MINIOR_TM_DATA_1, SPECIES_MINIOR_TM_DATA_2, SPECIES_MINIOR_TM_DATA_3
    mondexentry SPECIES_MINIOR, "It eats dust in the atmosphere. The\ncomposition of the dust determines the\ncolor of its core."
    mondexclassification SPECIES_MINIOR, "Meteor Pokémon"
    mondexheight SPECIES_MINIOR, "0’12”"
    mondexweight SPECIES_MINIOR, "88.2 lbs."


mondata SPECIES_KOMALA, "Komala"
    basestats 65, 115, 65, 65, 75, 95
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_COMATOSE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_KOMALA_TM_DATA_0, SPECIES_KOMALA_TM_DATA_1, SPECIES_KOMALA_TM_DATA_2, SPECIES_KOMALA_TM_DATA_3
    mondexentry SPECIES_KOMALA, "It stays asleep from the moment it’s\nborn. When it falls into a deep sleep,\nit stops moving altogether."
    mondexclassification SPECIES_KOMALA, "Drowsing Pokémon"
    mondexheight SPECIES_KOMALA, "1’04”"
    mondexweight SPECIES_KOMALA, "43.9 lbs."


mondata SPECIES_TURTONATOR, "Turtonator"
    basestats 60, 78, 135, 36, 91, 85
    types TYPE_FIRE, TYPE_DRAGON
    catchrate 70
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_CHARCOAL, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_SHELL_ARMOR, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_TURTONATOR_TM_DATA_0, SPECIES_TURTONATOR_TM_DATA_1, SPECIES_TURTONATOR_TM_DATA_2, SPECIES_TURTONATOR_TM_DATA_3
    mondexentry SPECIES_TURTONATOR, "It gushes fire and poisonous gases from\nits nostrils. Its dung is an explosive\nsubstance."
    mondexclassification SPECIES_TURTONATOR, "Blast Turtle Pokémon"
    mondexheight SPECIES_TURTONATOR, "6’07”"
    mondexweight SPECIES_TURTONATOR, "467.4 lbs."


mondata SPECIES_TOGEDEMARU, "Togedemaru"
    basestats 65, 98, 63, 96, 40, 73
    types TYPE_ELECTRIC, TYPE_STEEL
    catchrate 180
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_ELECTRIC_SEED, ITEM_NONE
    genderratio 127
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_IRON_BARBS, ABILITY_LIGHTNING_ROD
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_TOGEDEMARU_TM_DATA_0, SPECIES_TOGEDEMARU_TM_DATA_1, SPECIES_TOGEDEMARU_TM_DATA_2, SPECIES_TOGEDEMARU_TM_DATA_3
    mondexentry SPECIES_TOGEDEMARU, "When it’s surprised or agitated, the 14\nfur spikes on its back will stand up\ninvoluntarily."
    mondexclassification SPECIES_TOGEDEMARU, "Roly-Poly Pokémon"
    mondexheight SPECIES_TOGEDEMARU, "0’12”"
    mondexweight SPECIES_TOGEDEMARU, "7.3 lbs."


mondata SPECIES_MIMIKYU, "Mimikyu"
    basestats 55, 90, 80, 96, 50, 105
    types TYPE_GHOST, TYPE_FAIRY
    catchrate 45
    baseexp 167
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_CHESTO_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_DISGUISE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_MIMIKYU_TM_DATA_0, SPECIES_MIMIKYU_TM_DATA_1, SPECIES_MIMIKYU_TM_DATA_2, SPECIES_MIMIKYU_TM_DATA_3
    mondexentry SPECIES_MIMIKYU, "It conceals its terrifying appearance\nbeneath an old rag so it can get closer\nto people and Pokémon."
    mondexclassification SPECIES_MIMIKYU, "Disguise Pokémon"
    mondexheight SPECIES_MIMIKYU, "0’08”"
    mondexweight SPECIES_MIMIKYU, "1.5 lbs."


mondata SPECIES_BRUXISH, "Bruxish"
    basestats 68, 105, 70, 92, 70, 70
    types TYPE_WATER, TYPE_PSYCHIC
    catchrate 80
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_RAZOR_FANG, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_DAZZLING, ABILITY_STRONG_JAW
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_BRUXISH_TM_DATA_0, SPECIES_BRUXISH_TM_DATA_1, SPECIES_BRUXISH_TM_DATA_2, SPECIES_BRUXISH_TM_DATA_3
    mondexentry SPECIES_BRUXISH, "Its skin is thick enough to fend off\nspikes. With its robust teeth, it\ncrunches up and eats the spikes."
    mondexclassification SPECIES_BRUXISH, "Gnash Teeth Pokémon"
    mondexheight SPECIES_BRUXISH, "2’11”"
    mondexweight SPECIES_BRUXISH, "41.9 lbs."


mondata SPECIES_DRAMPA, "Drampa"
    basestats 78, 60, 85, 36, 135, 91
    types TYPE_NORMAL, TYPE_DRAGON
    catchrate 70
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_PERSIM_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_BERSERK, ABILITY_SAP_SIPPER
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_DRAMPA_TM_DATA_0, SPECIES_DRAMPA_TM_DATA_1, SPECIES_DRAMPA_TM_DATA_2, SPECIES_DRAMPA_TM_DATA_3
    mondexentry SPECIES_DRAMPA, "It appears in towns and plays with the\nchildren. Drampa will protect kids when\nthey’re in danger."
    mondexclassification SPECIES_DRAMPA, "Placid Pokémon"
    mondexheight SPECIES_DRAMPA, "9’10”"
    mondexweight SPECIES_DRAMPA, "407.8 lbs."


mondata SPECIES_DHELMISE, "Dhelmise"
    basestats 70, 131, 100, 40, 86, 90
    types TYPE_GHOST, TYPE_GRASS
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STEELWORKER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_DHELMISE_TM_DATA_0, SPECIES_DHELMISE_TM_DATA_1, SPECIES_DHELMISE_TM_DATA_2, SPECIES_DHELMISE_TM_DATA_3
    mondexentry SPECIES_DHELMISE, "It wraps its prey in green seaweed and\nsucks away their vitality. It only\nlikes to go after big prey."
    mondexclassification SPECIES_DHELMISE, "Sea Creeper Pokémon"
    mondexheight SPECIES_DHELMISE, "12’10”"
    mondexweight SPECIES_DHELMISE, "463.0 lbs."


mondata SPECIES_JANGMO_O, "Jangmo-o"
    basestats 45, 55, 65, 45, 45, 45
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_RAZOR_CLAW, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_BULLETPROOF, ABILITY_SOUNDPROOF
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_JANGMO_O_TM_DATA_0, SPECIES_JANGMO_O_TM_DATA_1, SPECIES_JANGMO_O_TM_DATA_2, SPECIES_JANGMO_O_TM_DATA_3
    mondexentry SPECIES_JANGMO_O, "They live in mountains where no trace\nof humans can be detected. It grows as\nit battles others."
    mondexclassification SPECIES_JANGMO_O, "Scaly Pokémon"
    mondexheight SPECIES_JANGMO_O, "1’12”"
    mondexweight SPECIES_JANGMO_O, "65.5 lbs."


mondata SPECIES_HAKAMO_O, "Hakamo-o"
    basestats 55, 75, 90, 65, 65, 70
    types TYPE_DRAGON, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_RAZOR_CLAW, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_BULLETPROOF, ABILITY_SOUNDPROOF
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_HAKAMO_O_TM_DATA_0, SPECIES_HAKAMO_O_TM_DATA_1, SPECIES_HAKAMO_O_TM_DATA_2, SPECIES_HAKAMO_O_TM_DATA_3
    mondexentry SPECIES_HAKAMO_O, "It leaps at its prey with a courageous\nshout. Its scaly punches tear its\nopponents to shreds."
    mondexclassification SPECIES_HAKAMO_O, "Scaly Pokémon"
    mondexheight SPECIES_HAKAMO_O, "3’11”"
    mondexweight SPECIES_HAKAMO_O, "103.6 lbs."


mondata SPECIES_KOMMO_O, "Kommo-o"
    basestats 75, 110, 125, 85, 100, 105
    types TYPE_DRAGON, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_RAZOR_CLAW, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_BULLETPROOF, ABILITY_SOUNDPROOF
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_KOMMO_O_TM_DATA_0, SPECIES_KOMMO_O_TM_DATA_1, SPECIES_KOMMO_O_TM_DATA_2, SPECIES_KOMMO_O_TM_DATA_3
    mondexentry SPECIES_KOMMO_O, "It battles valiantly with its fists,\nwhich are armored in steel scales.\nKommo-o specializes in uppercuts."
    mondexclassification SPECIES_KOMMO_O, "Scaly Pokémon"
    mondexheight SPECIES_KOMMO_O, "5’03”"
    mondexweight SPECIES_KOMMO_O, "172.4 lbs."


mondata SPECIES_TAPU_KOKO, "Tapu Koko"
    basestats 70, 115, 85, 130, 95, 75
    types TYPE_ELECTRIC, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_ELECTRIC
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_ELECTRIC_SURGE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_TAPU_KOKO_TM_DATA_0, SPECIES_TAPU_KOKO_TM_DATA_1, SPECIES_TAPU_KOKO_TM_DATA_2, SPECIES_TAPU_KOKO_TM_DATA_3
    mondexentry SPECIES_TAPU_KOKO, "This guardian deity of Melemele summons\nthunderclouds and stores their\nlightning inside its body."
    mondexclassification SPECIES_TAPU_KOKO, "Land Spirit Pokémon"
    mondexheight SPECIES_TAPU_KOKO, "5’11”"
    mondexweight SPECIES_TAPU_KOKO, "45.2 lbs."


mondata SPECIES_TAPU_LELE, "Tapu Lele"
    basestats 70, 85, 75, 95, 130, 115
    types TYPE_PSYCHIC, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_PSYCHIC
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PSYCHIC_SURGE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_TAPU_LELE_TM_DATA_0, SPECIES_TAPU_LELE_TM_DATA_1, SPECIES_TAPU_LELE_TM_DATA_2, SPECIES_TAPU_LELE_TM_DATA_3
    mondexentry SPECIES_TAPU_LELE, "This guardian deity of Akala is\nguilelessly cruel. Its flowers’ fragrant\naroma is its source of energy."
    mondexclassification SPECIES_TAPU_LELE, "Land Spirit Pokémon"
    mondexheight SPECIES_TAPU_LELE, "3’11”"
    mondexweight SPECIES_TAPU_LELE, "41.0 lbs."


mondata SPECIES_TAPU_BULU, "Tapu Bulu"
    basestats 70, 130, 115, 75, 85, 95
    types TYPE_GRASS, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_GRASS
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_GRASSY_SURGE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_TAPU_BULU_TM_DATA_0, SPECIES_TAPU_BULU_TM_DATA_1, SPECIES_TAPU_BULU_TM_DATA_2, SPECIES_TAPU_BULU_TM_DATA_3
    mondexentry SPECIES_TAPU_BULU, "The guardian deity of Ula’ula is a lazy\nPokémon. It commands plants to\nimmobilize its foes."
    mondexclassification SPECIES_TAPU_BULU, "Land Spirit Pokémon"
    mondexheight SPECIES_TAPU_BULU, "6’03”"
    mondexweight SPECIES_TAPU_BULU, "100.3 lbs."


mondata SPECIES_TAPU_FINI, "Tapu Fini"
    basestats 70, 75, 115, 85, 95, 130
    types TYPE_WATER, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_WATER
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_MISTY_SURGE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_TAPU_FINI_TM_DATA_0, SPECIES_TAPU_FINI_TM_DATA_1, SPECIES_TAPU_FINI_TM_DATA_2, SPECIES_TAPU_FINI_TM_DATA_3
    mondexentry SPECIES_TAPU_FINI, "The guardian deity of Poni can control\nwater. It can create pure water that\nwill wash away any impurity."
    mondexclassification SPECIES_TAPU_FINI, "Land Spirit Pokémon"
    mondexheight SPECIES_TAPU_FINI, "4’03”"
    mondexweight SPECIES_TAPU_FINI, "46.7 lbs."


mondata SPECIES_COSMOG, "Cosmog"
    basestats 43, 29, 31, 37, 29, 31
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_UNAWARE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_COSMOG_TM_DATA_0, SPECIES_COSMOG_TM_DATA_1, SPECIES_COSMOG_TM_DATA_2, SPECIES_COSMOG_TM_DATA_3
    mondexentry SPECIES_COSMOG, "Its body is gaseous and frail. It\nslowly grows as it collects dust from\nthe atmosphere."
    mondexclassification SPECIES_COSMOG, "Nebula Pokémon"
    mondexheight SPECIES_COSMOG, "0’08”"
    mondexweight SPECIES_COSMOG, "0.2 lbs."


mondata SPECIES_COSMOEM, "Cosmoem"
    basestats 43, 29, 131, 37, 29, 131
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STURDY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_COSMOEM_TM_DATA_0, SPECIES_COSMOEM_TM_DATA_1, SPECIES_COSMOEM_TM_DATA_2, SPECIES_COSMOEM_TM_DATA_3
    mondexentry SPECIES_COSMOEM, "As it absorbs light, Cosmoem continues\nto grow. Its golden shell is\nsurprisingly solid."
    mondexclassification SPECIES_COSMOEM, "Protostar Pokémon"
    mondexheight SPECIES_COSMOEM, "0’04”"
    mondexweight SPECIES_COSMOEM, "2204.4 lbs."


mondata SPECIES_SOLGALEO, "Solgaleo"
    basestats 137, 137, 107, 97, 113, 89
    types TYPE_PSYCHIC, TYPE_STEEL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_FULL_METAL_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SOLGALEO_TM_DATA_0, SPECIES_SOLGALEO_TM_DATA_1, SPECIES_SOLGALEO_TM_DATA_2, SPECIES_SOLGALEO_TM_DATA_3
    mondexentry SPECIES_SOLGALEO, "In writings from the distant past, it’s\ncalled by the name ’the beast that\ndevours the sun.’."
    mondexclassification SPECIES_SOLGALEO, "Sunne Pokémon"
    mondexheight SPECIES_SOLGALEO, "11’02”"
    mondexweight SPECIES_SOLGALEO, "507.1 lbs."


mondata SPECIES_LUNALA, "Lunala"
    basestats 137, 113, 89, 97, 137, 107
    types TYPE_PSYCHIC, TYPE_GHOST
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_SHADOW_SHIELD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_LUNALA_TM_DATA_0, SPECIES_LUNALA_TM_DATA_1, SPECIES_LUNALA_TM_DATA_2, SPECIES_LUNALA_TM_DATA_3
    mondexentry SPECIES_LUNALA, "It sometimes summons unknown powers and\nlife-forms to this world from holes\nthat lead to other worlds."
    mondexclassification SPECIES_LUNALA, "Moone Pokémon"
    mondexheight SPECIES_LUNALA, "13’01”"
    mondexweight SPECIES_LUNALA, "264.6 lbs."


mondata SPECIES_NIHILEGO, "Nihilego"
    basestats 109, 53, 47, 103, 127, 131
    types TYPE_ROCK, TYPE_POISON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BEAST_BOOST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NIHILEGO_TM_DATA_0, SPECIES_NIHILEGO_TM_DATA_1, SPECIES_NIHILEGO_TM_DATA_2, SPECIES_NIHILEGO_TM_DATA_3
    mondexentry SPECIES_NIHILEGO, "A life-form from another world, it was\ndubbed a UB and is thought to produce a\nstrong neurotoxin."
    mondexclassification SPECIES_NIHILEGO, "Parasite Pokémon"
    mondexheight SPECIES_NIHILEGO, "3’11”"
    mondexweight SPECIES_NIHILEGO, "122.4 lbs."


mondata SPECIES_BUZZWOLE, "Buzzwole"
    basestats 107, 139, 139, 79, 53, 53
    types TYPE_BUG, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BEAST_BOOST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_BUZZWOLE_TM_DATA_0, SPECIES_BUZZWOLE_TM_DATA_1, SPECIES_BUZZWOLE_TM_DATA_2, SPECIES_BUZZWOLE_TM_DATA_3
    mondexentry SPECIES_BUZZWOLE, "Buzzwole goes around showing off its\nabnormally swollen muscles. It is one\nkind of Ultra Beast."
    mondexclassification SPECIES_BUZZWOLE, "Swollen Pokémon"
    mondexheight SPECIES_BUZZWOLE, "7’10”"
    mondexweight SPECIES_BUZZWOLE, "735.4 lbs."


mondata SPECIES_PHEROMOSA, "Pheromosa"
    basestats 71, 137, 37, 151, 137, 37
    types TYPE_BUG, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BEAST_BOOST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_PHEROMOSA_TM_DATA_0, SPECIES_PHEROMOSA_TM_DATA_1, SPECIES_PHEROMOSA_TM_DATA_2, SPECIES_PHEROMOSA_TM_DATA_3
    mondexentry SPECIES_PHEROMOSA, "One of the dangerous Ultra Beasts, it\nhas been spotted running across the land\nat terrific speeds."
    mondexclassification SPECIES_PHEROMOSA, "Lissome Pokémon"
    mondexheight SPECIES_PHEROMOSA, "5’11”"
    mondexweight SPECIES_PHEROMOSA, "55.1 lbs."


mondata SPECIES_XURKITREE, "Xurkitree"
    basestats 83, 89, 71, 83, 173, 71
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BEAST_BOOST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_XURKITREE_TM_DATA_0, SPECIES_XURKITREE_TM_DATA_1, SPECIES_XURKITREE_TM_DATA_2, SPECIES_XURKITREE_TM_DATA_3
    mondexentry SPECIES_XURKITREE, "It appeared from the Ultra Wormhole. It\nraided a power plant, so it energizes\nitself with electricity."
    mondexclassification SPECIES_XURKITREE, "Glowing Pokémon"
    mondexheight SPECIES_XURKITREE, "12’06”"
    mondexweight SPECIES_XURKITREE, "220.5 lbs."


mondata SPECIES_CELESTEELA, "Celesteela"
    basestats 97, 101, 103, 61, 107, 101
    types TYPE_STEEL, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 1, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BEAST_BOOST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CELESTEELA_TM_DATA_0, SPECIES_CELESTEELA_TM_DATA_1, SPECIES_CELESTEELA_TM_DATA_2, SPECIES_CELESTEELA_TM_DATA_3
    mondexentry SPECIES_CELESTEELA, "It appeared from the Ultra Wormhole.\nWitnesses observed it flying across the\nsky at high speed."
    mondexclassification SPECIES_CELESTEELA, "Launch Pokémon"
    mondexheight SPECIES_CELESTEELA, "30’02”"
    mondexweight SPECIES_CELESTEELA, "2204.4 lbs."


mondata SPECIES_KARTANA, "Kartana"
    basestats 59, 181, 131, 109, 59, 31
    types TYPE_GRASS, TYPE_STEEL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BEAST_BOOST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_KARTANA_TM_DATA_0, SPECIES_KARTANA_TM_DATA_1, SPECIES_KARTANA_TM_DATA_2, SPECIES_KARTANA_TM_DATA_3
    mondexentry SPECIES_KARTANA, "This Ultra Beast’s body, which is as\nthin as paper, is like a sharpened\nsword."
    mondexclassification SPECIES_KARTANA, "Drawn Sword Pokémon"
    mondexheight SPECIES_KARTANA, "0’12”"
    mondexweight SPECIES_KARTANA, "0.2 lbs."


mondata SPECIES_GUZZLORD, "Guzzlord"
    basestats 223, 101, 53, 43, 97, 53
    types TYPE_DARK, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BEAST_BOOST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_GUZZLORD_TM_DATA_0, SPECIES_GUZZLORD_TM_DATA_1, SPECIES_GUZZLORD_TM_DATA_2, SPECIES_GUZZLORD_TM_DATA_3
    mondexentry SPECIES_GUZZLORD, "An unknown life-form called a UB. It\nmay be constantly hungry-it is certainly\nalways devouring something."
    mondexclassification SPECIES_GUZZLORD, "Junkivore Pokémon"
    mondexheight SPECIES_GUZZLORD, "18’01”"
    mondexweight SPECIES_GUZZLORD, "1957.7 lbs."


mondata SPECIES_NECROZMA, "Necrozma"
    basestats 97, 107, 101, 79, 127, 89
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRISM_ARMOR, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_NECROZMA_TM_DATA_0, SPECIES_NECROZMA_TM_DATA_1, SPECIES_NECROZMA_TM_DATA_2, SPECIES_NECROZMA_TM_DATA_3
    mondexentry SPECIES_NECROZMA, "Light is the source of its energy. If\nit isn’t devouring light, impurities\nbuild up in it."
    mondexclassification SPECIES_NECROZMA, "Prism Pokémon"
    mondexheight SPECIES_NECROZMA, "7’10”"
    mondexweight SPECIES_NECROZMA, "507.1 lbs."


mondata SPECIES_MAGEARNA, "Magearna"
    basestats 80, 95, 115, 65, 130, 115
    types TYPE_STEEL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_STEEL
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_SOUL_HEART, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MAGEARNA_TM_DATA_0, SPECIES_MAGEARNA_TM_DATA_1, SPECIES_MAGEARNA_TM_DATA_2, SPECIES_MAGEARNA_TM_DATA_3
    mondexentry SPECIES_MAGEARNA, "Its mechanized body is merely a vessel.\nIts true self is its Soul-Heart, an\nartificial soul."
    mondexclassification SPECIES_MAGEARNA, "Artificial Pokémon"
    mondexheight SPECIES_MAGEARNA, "3’03”"
    mondexweight SPECIES_MAGEARNA, "177.5 lbs."


mondata SPECIES_MARSHADOW, "Marshadow"
    basestats 90, 125, 80, 125, 90, 90
    types TYPE_FIGHTING, TYPE_GHOST
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_TECHNICIAN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MARSHADOW_TM_DATA_0, SPECIES_MARSHADOW_TM_DATA_1, SPECIES_MARSHADOW_TM_DATA_2, SPECIES_MARSHADOW_TM_DATA_3
    mondexentry SPECIES_MARSHADOW, "It lurks in the shadows of others,\ncopying their movements and powers. It\nis craven and cowering."
    mondexclassification SPECIES_MARSHADOW, "Gloomdweller Pokémon"
    mondexheight SPECIES_MARSHADOW, "2’04”"
    mondexweight SPECIES_MARSHADOW, "48.9 lbs."


mondata SPECIES_POIPOLE, "Poipole"
    basestats 67, 73, 67, 73, 73, 67
    types TYPE_POISON, TYPE_POISON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BEAST_BOOST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_POIPOLE_TM_DATA_0, SPECIES_POIPOLE_TM_DATA_1, SPECIES_POIPOLE_TM_DATA_2, SPECIES_POIPOLE_TM_DATA_3
    mondexentry SPECIES_POIPOLE, "This Ultra Beast is well enough liked\nto be chosen as a first partner in its\nown world."
    mondexclassification SPECIES_POIPOLE, "Poison Pin Pokémon"
    mondexheight SPECIES_POIPOLE, "1’12”"
    mondexweight SPECIES_POIPOLE, "4.0 lbs."


mondata SPECIES_NAGANADEL, "Naganadel"
    basestats 73, 73, 73, 121, 127, 73
    types TYPE_POISON, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BEAST_BOOST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NAGANADEL_TM_DATA_0, SPECIES_NAGANADEL_TM_DATA_1, SPECIES_NAGANADEL_TM_DATA_2, SPECIES_NAGANADEL_TM_DATA_3
    mondexentry SPECIES_NAGANADEL, "It stores hundreds of liters of\npoisonous liquid in its body. It is one\nof the organisms known as UBs."
    mondexclassification SPECIES_NAGANADEL, "Poison Pin Pokémon"
    mondexheight SPECIES_NAGANADEL, "11’10”"
    mondexweight SPECIES_NAGANADEL, "330.7 lbs."


mondata SPECIES_STAKATAKA, "Stakataka"
    basestats 61, 131, 211, 13, 53, 101
    types TYPE_ROCK, TYPE_STEEL
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BEAST_BOOST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_STAKATAKA_TM_DATA_0, SPECIES_STAKATAKA_TM_DATA_1, SPECIES_STAKATAKA_TM_DATA_2, SPECIES_STAKATAKA_TM_DATA_3
    mondexentry SPECIES_STAKATAKA, "When stone walls started moving and\nattacking, the brute’s true identity was\nthis mysterious life-form."
    mondexclassification SPECIES_STAKATAKA, "Rampart Pokémon"
    mondexheight SPECIES_STAKATAKA, "18’01”"
    mondexweight SPECIES_STAKATAKA, "1807.8 lbs."


mondata SPECIES_BLACEPHALON, "Blacephalon"
    basestats 53, 127, 53, 107, 151, 79
    types TYPE_FIRE, TYPE_GHOST
    catchrate 195
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BEAST_BOOST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_BLACEPHALON_TM_DATA_0, SPECIES_BLACEPHALON_TM_DATA_1, SPECIES_BLACEPHALON_TM_DATA_2, SPECIES_BLACEPHALON_TM_DATA_3
    mondexentry SPECIES_BLACEPHALON, "It causes explosions, then takes\nadvantage of opponents’ surprise to rob\nthem of their vitality."
    mondexclassification SPECIES_BLACEPHALON, "Fireworks Pokémon"
    mondexheight SPECIES_BLACEPHALON, "5’11”"
    mondexweight SPECIES_BLACEPHALON, "28.7 lbs."


mondata SPECIES_ZERAORA, "Zeraora"
    basestats 88, 112, 75, 143, 102, 80
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 195
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_VOLT_ABSORB, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_ZERAORA_TM_DATA_0, SPECIES_ZERAORA_TM_DATA_1, SPECIES_ZERAORA_TM_DATA_2, SPECIES_ZERAORA_TM_DATA_3
    mondexentry SPECIES_ZERAORA, "It approaches its enemies at the speed\nof lightning, then tears them limb from\nlimb with its sharp claws."
    mondexclassification SPECIES_ZERAORA, "Thunderclap Pokémon"
    mondexheight SPECIES_ZERAORA, "4’11”"
    mondexweight SPECIES_ZERAORA, "98.1 lbs."


mondata SPECIES_MELTAN, "Meltan"
    basestats 46, 65, 65, 34, 55, 35
    types TYPE_STEEL, TYPE_STEEL
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_MAGNET_PULL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MELTAN_TM_DATA_0, SPECIES_MELTAN_TM_DATA_1, SPECIES_MELTAN_TM_DATA_2, SPECIES_MELTAN_TM_DATA_3
    mondexentry SPECIES_MELTAN, "It melts particles of iron and other\nmetals found in the subsoil, so it can\nabsorb them into its molten steel body."
    mondexclassification SPECIES_MELTAN, "Hex Nut Pokémon"
    mondexheight SPECIES_MELTAN, "0’08”"
    mondexweight SPECIES_MELTAN, "17.6 lbs."


mondata SPECIES_MELMETAL, "Melmetal"
    basestats 135, 143, 143, 34, 80, 65
    types TYPE_STEEL, TYPE_STEEL
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_IRON_FIST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MELMETAL_TM_DATA_0, SPECIES_MELMETAL_TM_DATA_1, SPECIES_MELMETAL_TM_DATA_2, SPECIES_MELMETAL_TM_DATA_3
    mondexentry SPECIES_MELMETAL, "Revered long ago for its capacity\nto create iron from nothing, it has\ncome back to life after 3000 years."
    mondexclassification SPECIES_MELMETAL, "Hex Nut Pokémon"
    mondexheight SPECIES_MELMETAL, "8’02”"
    mondexweight SPECIES_MELMETAL, "1763.7 lbs."


mondata SPECIES_GROOKEY, "Grookey"
    basestats 50, 65, 50, 65, 40, 40
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 62
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_GROOKEY_TM_DATA_0, SPECIES_GROOKEY_TM_DATA_1, SPECIES_GROOKEY_TM_DATA_2, SPECIES_GROOKEY_TM_DATA_3
    mondexentry SPECIES_GROOKEY, "It attacks with rapid beats of its\nstick. As it strikes with amazing speed,\nit gets more and more pumped."
    mondexclassification SPECIES_GROOKEY, "Chimp Pokémon"
    mondexheight SPECIES_GROOKEY, "0’12”"
    mondexweight SPECIES_GROOKEY, "11.0 lbs."


mondata SPECIES_THWACKEY, "Thwackey"
    basestats 70, 85, 70, 80, 55, 60
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 147
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_THWACKEY_TM_DATA_0, SPECIES_THWACKEY_TM_DATA_1, SPECIES_THWACKEY_TM_DATA_2, SPECIES_THWACKEY_TM_DATA_3
    mondexentry SPECIES_THWACKEY, "The faster a Thwackey can beat out a\nrhythm with its two sticks, the more respect\nit wins from its peers."
    mondexclassification SPECIES_THWACKEY, "Beat Pokémon"
    mondexheight SPECIES_THWACKEY, "2’04”"
    mondexweight SPECIES_THWACKEY, "30.9 lbs."


mondata SPECIES_RILLABOOM, "Rillaboom"
    basestats 100, 125, 90, 85, 60, 70
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 265
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_RILLABOOM_TM_DATA_0, SPECIES_RILLABOOM_TM_DATA_1, SPECIES_RILLABOOM_TM_DATA_2, SPECIES_RILLABOOM_TM_DATA_3
    mondexentry SPECIES_RILLABOOM, "By drumming, it taps into the power of\nits special tree stump. The roots of the\nstump follow its direction in battle."
    mondexclassification SPECIES_RILLABOOM, "Drummer Pokémon"
    mondexheight SPECIES_RILLABOOM, "6’11”"
    mondexweight SPECIES_RILLABOOM, "198.4 lbs."


mondata SPECIES_SCORBUNNY, "Scorbunny"
    basestats 50, 71, 40, 69, 40, 40
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 62
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_BLAZE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SCORBUNNY_TM_DATA_0, SPECIES_SCORBUNNY_TM_DATA_1, SPECIES_SCORBUNNY_TM_DATA_2, SPECIES_SCORBUNNY_TM_DATA_3
    mondexentry SPECIES_SCORBUNNY, "It has special pads on the backs of\nits feet, and one on its nose. Its\npads radiate tremendous heat."
    mondexclassification SPECIES_SCORBUNNY, "Rabbit Pokémon"
    mondexheight SPECIES_SCORBUNNY, "0’12”"
    mondexweight SPECIES_SCORBUNNY, "9.9 lbs."


mondata SPECIES_RABOOT, "Raboot"
    basestats 65, 86, 60, 94, 55, 60
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 147
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_BLAZE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_RABOOT_TM_DATA_0, SPECIES_RABOOT_TM_DATA_1, SPECIES_RABOOT_TM_DATA_2, SPECIES_RABOOT_TM_DATA_3
    mondexentry SPECIES_RABOOT, "Its thick and fluffy fur protects it\nfrom the cold and enables it to\nuse hotter fire moves."
    mondexclassification SPECIES_RABOOT, "Rabbit Pokémon"
    mondexheight SPECIES_RABOOT, "1’12”"
    mondexweight SPECIES_RABOOT, "19.8 lbs."


mondata SPECIES_CINDERACE, "Cinderace"
    basestats 80, 116, 75, 119, 65, 75
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 265
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_BLAZE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_CINDERACE_TM_DATA_0, SPECIES_CINDERACE_TM_DATA_1, SPECIES_CINDERACE_TM_DATA_2, SPECIES_CINDERACE_TM_DATA_3
    mondexentry SPECIES_CINDERACE, "It gets pumped up when cheered on.\nBut if it starts showboating, it could put\nitself in a tough spot."
    mondexclassification SPECIES_CINDERACE, "Striker Pokémon"
    mondexheight SPECIES_CINDERACE, "4’07”"
    mondexweight SPECIES_CINDERACE, "72.8 lbs."


mondata SPECIES_SOBBLE, "Sobble"
    basestats 50, 40, 40, 70, 70, 40
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 62
    evyields 0, 0, 0, 1, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_TORRENT,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SOBBLE_TM_DATA_0, SPECIES_SOBBLE_TM_DATA_1, SPECIES_SOBBLE_TM_DATA_2, SPECIES_SOBBLE_TM_DATA_3
    mondexentry SPECIES_SOBBLE, "When it gets wet, its skin changes\ncolor, and this Pokémon becomes\ninvisible as if it were camouflaged."
    mondexclassification SPECIES_SOBBLE, "Water Lizard Pokémon"
    mondexheight SPECIES_SOBBLE, "0’12”"
    mondexweight SPECIES_SOBBLE, "8.8 lbs."


mondata SPECIES_DRIZZILE, "Drizzile"
    basestats 65, 60, 55, 90, 95, 55
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 147
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_TORRENT,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_DRIZZILE_TM_DATA_0, SPECIES_DRIZZILE_TM_DATA_1, SPECIES_DRIZZILE_TM_DATA_2, SPECIES_DRIZZILE_TM_DATA_3
    mondexentry SPECIES_DRIZZILE, "Highly intelligent but also very lazy,\nit keeps enemies out of its territory\nby laying traps everywhere."
    mondexclassification SPECIES_DRIZZILE, "Water Lizard Pokémon"
    mondexheight SPECIES_DRIZZILE, "2’04”"
    mondexweight SPECIES_DRIZZILE, "25.4 lbs."


mondata SPECIES_INTELEON, "Inteleon"
    basestats 70, 85, 65, 120, 125, 65
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 265
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_TORRENT,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_INTELEON_TM_DATA_0, SPECIES_INTELEON_TM_DATA_1, SPECIES_INTELEON_TM_DATA_2, SPECIES_INTELEON_TM_DATA_3
    mondexentry SPECIES_INTELEON, "It picks out foes’ weak points so it\ncan precisely blast them with water\nthat shoots from its fingertips."
    mondexclassification SPECIES_INTELEON, "Secret Agent Pokémon"
    mondexheight SPECIES_INTELEON, "6’03”"
    mondexweight SPECIES_INTELEON, "99.6 lbs."


mondata SPECIES_SKWOVET, "Skwovet"
    basestats 70, 55, 55, 25, 35, 35
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 55
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_ORAN_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CHEEK_POUCH,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SKWOVET_TM_DATA_0, SPECIES_SKWOVET_TM_DATA_1, SPECIES_SKWOVET_TM_DATA_2, SPECIES_SKWOVET_TM_DATA_3
    mondexentry SPECIES_SKWOVET, "This Pokémon becomes uneasy if its\ncheeks are ever completely empty\nof berries."
    mondexclassification SPECIES_SKWOVET, "Cheeky Pokémon"
    mondexheight SPECIES_SKWOVET, "0’12”"
    mondexweight SPECIES_SKWOVET, "5.5 lbs."


mondata SPECIES_GREEDENT, "Greedent"
    basestats 120, 95, 95, 20, 55, 75
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 90
    baseexp 161
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_SITRUS_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CHEEK_POUCH,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GREEDENT_TM_DATA_0, SPECIES_GREEDENT_TM_DATA_1, SPECIES_GREEDENT_TM_DATA_2, SPECIES_GREEDENT_TM_DATA_3
    mondexentry SPECIES_GREEDENT, "This Pokémon has strong teeth and\ncan chew through the toughest of\nberry shells."
    mondexclassification SPECIES_GREEDENT, "Greedy Pokémon"
    mondexheight SPECIES_GREEDENT, "1’12”"
    mondexweight SPECIES_GREEDENT, "13.2 lbs."


mondata SPECIES_ROOKIDEE, "Rookidee"
    basestats 38, 47, 35, 57, 33, 35
    types TYPE_FLYING, TYPE_FLYING
    catchrate 255
    baseexp 49
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE,  ABILITY_UNNERVE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_ROOKIDEE_TM_DATA_0, SPECIES_ROOKIDEE_TM_DATA_1, SPECIES_ROOKIDEE_TM_DATA_2, SPECIES_ROOKIDEE_TM_DATA_3
    mondexentry SPECIES_ROOKIDEE, "It will bravely challenge any foe, no\nmatter how powerful. Even suffering\na defeat increases its strength a bit."
    mondexclassification SPECIES_ROOKIDEE, "Tiny Bird Pokémon"
    mondexheight SPECIES_ROOKIDEE, "0’08”"
    mondexweight SPECIES_ROOKIDEE, "4.0 lbs."


mondata SPECIES_CORVISQUIRE, "Corvisquire"
    basestats 68, 67, 55, 77, 43, 55
    types TYPE_FLYING, TYPE_FLYING
    catchrate 120
    baseexp 128
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE,  ABILITY_UNNERVE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CORVISQUIRE_TM_DATA_0, SPECIES_CORVISQUIRE_TM_DATA_1, SPECIES_CORVISQUIRE_TM_DATA_2, SPECIES_CORVISQUIRE_TM_DATA_3
    mondexentry SPECIES_CORVISQUIRE, "The lessons of many harsh battles\nhave taught it how to accurately judge\nan opponent’s strength."
    mondexclassification SPECIES_CORVISQUIRE, "Raven Pokémon"
    mondexheight SPECIES_CORVISQUIRE, "2’07”"
    mondexweight SPECIES_CORVISQUIRE, "35.3 lbs."


mondata SPECIES_CORVIKNIGHT, "Corviknight"
    basestats 98, 87, 105, 67, 53, 85
    types TYPE_FLYING, TYPE_STEEL
    catchrate 45
    baseexp 248
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_PRESSURE,  ABILITY_UNNERVE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_CORVIKNIGHT_TM_DATA_0, SPECIES_CORVIKNIGHT_TM_DATA_1, SPECIES_CORVIKNIGHT_TM_DATA_2, SPECIES_CORVIKNIGHT_TM_DATA_3
    mondexentry SPECIES_CORVIKNIGHT, "The black luster of its steel body\ncould drive terror into the heart of\nany foe."
    mondexclassification SPECIES_CORVIKNIGHT, "Raven Pokémon"
    mondexheight SPECIES_CORVIKNIGHT, "7’03”"
    mondexweight SPECIES_CORVIKNIGHT, "165.3 lbs."


mondata SPECIES_BLIPBUG, "Blipbug"
    basestats 25, 20, 20, 45, 25, 45
    types TYPE_BUG, TYPE_BUG
    catchrate 255
    baseexp 36
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_BLIPBUG_TM_DATA_0, SPECIES_BLIPBUG_TM_DATA_1, SPECIES_BLIPBUG_TM_DATA_2, SPECIES_BLIPBUG_TM_DATA_3
    mondexentry SPECIES_BLIPBUG, "A constant collector of information,\nthis Pokémon is very smart. Very\nstrong is what it isn’t."
    mondexclassification SPECIES_BLIPBUG, "Larva Pokémon"
    mondexheight SPECIES_BLIPBUG, "1’04”"
    mondexweight SPECIES_BLIPBUG, "17.6 lbs."


mondata SPECIES_DOTTLER, "Dottler"
    basestats 50, 35, 80, 30, 50, 90
    types TYPE_BUG, TYPE_PSYCHIC
    catchrate 120
    baseexp 117
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_PSYCHIC_SEED
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_DOTTLER_TM_DATA_0, SPECIES_DOTTLER_TM_DATA_1, SPECIES_DOTTLER_TM_DATA_2, SPECIES_DOTTLER_TM_DATA_3
    mondexentry SPECIES_DOTTLER, "As it grows inside its shell, it uses\nits psychic abilities to monitor its\nsurroundings and wait for evolution."
    mondexclassification SPECIES_DOTTLER, "Radome Pokémon"
    mondexheight SPECIES_DOTTLER, "1’04”"
    mondexweight SPECIES_DOTTLER, "43.0 lbs."


mondata SPECIES_ORBEETLE, "Orbeetle"
    basestats 60, 45, 110, 90, 80, 120
    types TYPE_BUG, TYPE_PSYCHIC
    catchrate 45
    baseexp 253
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_PSYCHIC_SEED
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM,  ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_ORBEETLE_TM_DATA_0, SPECIES_ORBEETLE_TM_DATA_1, SPECIES_ORBEETLE_TM_DATA_2, SPECIES_ORBEETLE_TM_DATA_3
    mondexentry SPECIES_ORBEETLE, "It’s famous for its high intelligence,\nand the large size of its brain is proof\nthat it has immense psychic power."
    mondexclassification SPECIES_ORBEETLE, "Seven Spot Pokémon"
    mondexheight SPECIES_ORBEETLE, "1’04”"
    mondexweight SPECIES_ORBEETLE, "89.9 lbs."


mondata SPECIES_NICKIT, "Nickit"
    basestats 40, 28, 28, 50, 47, 52
    types TYPE_DARK, TYPE_DARK
    catchrate 255
    baseexp 49
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY,  ABILITY_UNBURDEN
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NICKIT_TM_DATA_0, SPECIES_NICKIT_TM_DATA_1, SPECIES_NICKIT_TM_DATA_2, SPECIES_NICKIT_TM_DATA_3
    mondexentry SPECIES_NICKIT, "Aided by the soft pads on its feet, it\nsilently raids the food stores of others.\nIt survives off its ill-gotten gains."
    mondexclassification SPECIES_NICKIT, "Fox Pokémon"
    mondexheight SPECIES_NICKIT, "1’12”"
    mondexweight SPECIES_NICKIT, "19.6 lbs."


mondata SPECIES_THIEVUL, "Thievul"
    basestats 70, 58, 58, 90, 87, 92
    types TYPE_DARK, TYPE_DARK
    catchrate 127
    baseexp 159
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY,  ABILITY_UNBURDEN
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_THIEVUL_TM_DATA_0, SPECIES_THIEVUL_TM_DATA_1, SPECIES_THIEVUL_TM_DATA_2, SPECIES_THIEVUL_TM_DATA_3
    mondexentry SPECIES_THIEVUL, "With a lithe body and sharp claws, it\ngoes around stealing food and eggs.\nIt secretly marks its future targets."
    mondexclassification SPECIES_THIEVUL, "Fox Pokémon"
    mondexheight SPECIES_THIEVUL, "3’11”"
    mondexweight SPECIES_THIEVUL, "43.9 lbs."


mondata SPECIES_GOSSIFLEUR, "Gossifleur"
    basestats 40, 40, 60, 10, 40, 60
    types TYPE_GRASS, TYPE_GRASS
    catchrate 190
    baseexp 50
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_COTTON_DOWN,  ABILITY_REGENERATOR
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_GOSSIFLEUR_TM_DATA_0, SPECIES_GOSSIFLEUR_TM_DATA_1, SPECIES_GOSSIFLEUR_TM_DATA_2, SPECIES_GOSSIFLEUR_TM_DATA_3
    mondexentry SPECIES_GOSSIFLEUR, "It anchors itself in the ground and\nbasks in the sun. After absorbing\nenough sunlight, it blooms vividly."
    mondexclassification SPECIES_GOSSIFLEUR, "Flowering Pokémon"
    mondexheight SPECIES_GOSSIFLEUR, "1’04”"
    mondexweight SPECIES_GOSSIFLEUR, "4.9 lbs."


mondata SPECIES_ELDEGOSS, "Eldegoss"
    basestats 60, 50, 90, 60, 80, 120
    types TYPE_GRASS, TYPE_GRASS
    catchrate 75
    baseexp 161
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_COTTON_DOWN,  ABILITY_REGENERATOR
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_ELDEGOSS_TM_DATA_0, SPECIES_ELDEGOSS_TM_DATA_1, SPECIES_ELDEGOSS_TM_DATA_2, SPECIES_ELDEGOSS_TM_DATA_3
    mondexentry SPECIES_ELDEGOSS, "The seeds attached to its cotton fluff\nare full of nutrients. It spreads them on\nthe wind so that others can benefit."
    mondexclassification SPECIES_ELDEGOSS, "Cotton Bloom Pokémon"
    mondexheight SPECIES_ELDEGOSS, "1’08”"
    mondexweight SPECIES_ELDEGOSS, "5.5 lbs."


mondata SPECIES_WOOLOO, "Wooloo"
    basestats 42, 40, 55, 48, 40, 45
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 122
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FLUFFY,  ABILITY_RUN_AWAY
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_WOOLOO_TM_DATA_0, SPECIES_WOOLOO_TM_DATA_1, SPECIES_WOOLOO_TM_DATA_2, SPECIES_WOOLOO_TM_DATA_3
    mondexentry SPECIES_WOOLOO, "If its fleece grows too long, it won’t\nbe able to move. Cloth made with\nits wool is surprisingly durable."
    mondexclassification SPECIES_WOOLOO, "Sheep Pokémon"
    mondexheight SPECIES_WOOLOO, "1’12”"
    mondexweight SPECIES_WOOLOO, "13.2 lbs."


mondata SPECIES_DUBWOOL, "Dubwool"
    basestats 72, 80, 100, 88, 60, 90
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 127
    baseexp 172
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FLUFFY,  ABILITY_STEADFAST
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_DUBWOOL_TM_DATA_0, SPECIES_DUBWOOL_TM_DATA_1, SPECIES_DUBWOOL_TM_DATA_2, SPECIES_DUBWOOL_TM_DATA_3
    mondexentry SPECIES_DUBWOOL, "Its majestic horns are meant only to\nimpress the opposite gender. They\nnever see use in battle."
    mondexclassification SPECIES_DUBWOOL, "Sheep Pokémon"
    mondexheight SPECIES_DUBWOOL, "4’03”"
    mondexweight SPECIES_DUBWOOL, "94.8 lbs."


mondata SPECIES_CHEWTLE, "Chewtle"
    basestats 50, 64, 50, 44, 38, 38
    types TYPE_WATER, TYPE_WATER
    catchrate 255
    baseexp 57
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_STRONG_JAW,  ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CHEWTLE_TM_DATA_0, SPECIES_CHEWTLE_TM_DATA_1, SPECIES_CHEWTLE_TM_DATA_2, SPECIES_CHEWTLE_TM_DATA_3
    mondexentry SPECIES_CHEWTLE, "Apparently the itch of its teething\nimpels it to snap its jaws at anything\nin front of it."
    mondexclassification SPECIES_CHEWTLE, "Snapping Pokémon"
    mondexheight SPECIES_CHEWTLE, "0’12”"
    mondexweight SPECIES_CHEWTLE, "18.7 lbs."


mondata SPECIES_DREDNAW, "Drednaw"
    basestats 90, 115, 90, 74, 48, 68
    types TYPE_WATER, TYPE_ROCK
    catchrate 75
    baseexp 170
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_STRONG_JAW,  ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_DREDNAW_TM_DATA_0, SPECIES_DREDNAW_TM_DATA_1, SPECIES_DREDNAW_TM_DATA_2, SPECIES_DREDNAW_TM_DATA_3
    mondexentry SPECIES_DREDNAW, "With jaws that can shear through steel\nrods, this highly aggressive Pokémon\nchomps down on its unfortunate prey."
    mondexclassification SPECIES_DREDNAW, "Bite Pokémon"
    mondexheight SPECIES_DREDNAW, "3’03”"
    mondexweight SPECIES_DREDNAW, "254.6 lbs."


mondata SPECIES_YAMPER, "Yamper"
    basestats 59, 45, 50, 26, 40, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 255
    baseexp 54
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BALL_FETCH,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_YAMPER_TM_DATA_0, SPECIES_YAMPER_TM_DATA_1, SPECIES_YAMPER_TM_DATA_2, SPECIES_YAMPER_TM_DATA_3
    mondexentry SPECIES_YAMPER, "This greedy Pokémon only helps people\nwith their work because it wants treats.\nAs it runs, it crackles with electricity."
    mondexclassification SPECIES_YAMPER, "Puppy Pokémon"
    mondexheight SPECIES_YAMPER, "0’12”"
    mondexweight SPECIES_YAMPER, "29.8 lbs."


mondata SPECIES_BOLTUND, "Boltund"
    basestats 69, 90, 60, 121, 90, 60
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 45
    baseexp 172
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_STRONG_JAW,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_BOLTUND_TM_DATA_0, SPECIES_BOLTUND_TM_DATA_1, SPECIES_BOLTUND_TM_DATA_2, SPECIES_BOLTUND_TM_DATA_3
    mondexentry SPECIES_BOLTUND, "It sends electricity through its legs\nto boost their strength. Running at\ntop speed, it easily breaks 50 mph."
    mondexclassification SPECIES_BOLTUND, "Dog Pokémon"
    mondexheight SPECIES_BOLTUND, "3’03”"
    mondexweight SPECIES_BOLTUND, "75.0 lbs."


mondata SPECIES_ROLYCOLY, "Rolycoly"
    basestats 30, 40, 50, 30, 40, 50
    types TYPE_ROCK, TYPE_ROCK
    catchrate 255
    baseexp 48
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STEAM_ENGINE,  ABILITY_HEATPROOF
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_ROLYCOLY_TM_DATA_0, SPECIES_ROLYCOLY_TM_DATA_1, SPECIES_ROLYCOLY_TM_DATA_2, SPECIES_ROLYCOLY_TM_DATA_3
    mondexentry SPECIES_ROLYCOLY, "It can race around like a unicycle,\neven on rough, rocky terrain. Burning\ncoal sustains it."
    mondexclassification SPECIES_ROLYCOLY, "Coal Pokémon"
    mondexheight SPECIES_ROLYCOLY, "0’12”"
    mondexweight SPECIES_ROLYCOLY, "26.5 lbs."


mondata SPECIES_CARKOL, "Carkol"
    basestats 80, 60, 90, 50, 60, 70
    types TYPE_ROCK, TYPE_FIRE
    catchrate 120
    baseexp 144
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STEAM_ENGINE,  ABILITY_FLAME_BODY
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_CARKOL_TM_DATA_0, SPECIES_CARKOL_TM_DATA_1, SPECIES_CARKOL_TM_DATA_2, SPECIES_CARKOL_TM_DATA_3
    mondexentry SPECIES_CARKOL, "By rapidly rolling its legs, it can\neasily travel at over 18 mph. It\nforms coal inside its body."
    mondexclassification SPECIES_CARKOL, "Coal Pokémon"
    mondexheight SPECIES_CARKOL, "3’07”"
    mondexweight SPECIES_CARKOL, "172.0 lbs."


mondata SPECIES_COALOSSAL, "Coalossal"
    basestats 110, 80, 120, 30, 80, 90
    types TYPE_ROCK, TYPE_FIRE
    catchrate 45
    baseexp 255
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STEAM_ENGINE,  ABILITY_FLAME_BODY
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_COALOSSAL_TM_DATA_0, SPECIES_COALOSSAL_TM_DATA_1, SPECIES_COALOSSAL_TM_DATA_2, SPECIES_COALOSSAL_TM_DATA_3
    mondexentry SPECIES_COALOSSAL, "While engaged in battle, its mountain\nof coal will burn bright red, scorching\nthe surrounding area with sparks."
    mondexclassification SPECIES_COALOSSAL, "Coal Pokémon"
    mondexheight SPECIES_COALOSSAL, "9’02”"
    mondexweight SPECIES_COALOSSAL, "684.5 lbs."


mondata SPECIES_APPLIN, "Applin"
    basestats 40, 40, 80, 20, 40, 40
    types TYPE_GRASS, TYPE_DRAGON
    catchrate 255
    baseexp 52
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_GRASS, EGG_GROUP_DRAGON
    abilities ABILITY_RIPEN,  ABILITY_GLUTTONY
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_APPLIN_TM_DATA_0, SPECIES_APPLIN_TM_DATA_1, SPECIES_APPLIN_TM_DATA_2, SPECIES_APPLIN_TM_DATA_3
    mondexentry SPECIES_APPLIN, "As soon as it’s born, it burrows into\nan apple. the flavor of the apple is\nwhat determines its evolution."
    mondexclassification SPECIES_APPLIN, "Apple Core Pokémon"
    mondexheight SPECIES_APPLIN, "0’08”"
    mondexweight SPECIES_APPLIN, "1.1 lbs."


mondata SPECIES_FLAPPLE, "Flapple"
    basestats 70, 110, 80, 70, 95, 60
    types TYPE_GRASS, TYPE_DRAGON
    catchrate 45
    baseexp 170
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_GRASS, EGG_GROUP_DRAGON
    abilities ABILITY_RIPEN,  ABILITY_GLUTTONY
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_FLAPPLE_TM_DATA_0, SPECIES_FLAPPLE_TM_DATA_1, SPECIES_FLAPPLE_TM_DATA_2, SPECIES_FLAPPLE_TM_DATA_3
    mondexentry SPECIES_FLAPPLE, "It ate a sour apple, which induced its\nevolution. It stores an acid capable of\ncausing chemical burns in its cheeks."
    mondexclassification SPECIES_FLAPPLE, "Apple Wing Pokémon"
    mondexheight SPECIES_FLAPPLE, "0’12”"
    mondexweight SPECIES_FLAPPLE, "2.2 lbs."


mondata SPECIES_APPLETUN, "Appletun"
    basestats 110, 85, 80, 30, 100, 80
    types TYPE_GRASS, TYPE_DRAGON
    catchrate 45
    baseexp 170
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_GRASS, EGG_GROUP_DRAGON
    abilities ABILITY_RIPEN,  ABILITY_GLUTTONY
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_APPLETUN_TM_DATA_0, SPECIES_APPLETUN_TM_DATA_1, SPECIES_APPLETUN_TM_DATA_2, SPECIES_APPLETUN_TM_DATA_3
    mondexentry SPECIES_APPLETUN, "It ate a sweet apple, which induced\nits evolution. Back in the day, children\nused to have it as a snack."
    mondexclassification SPECIES_APPLETUN, "Apple Nectar Pokémon"
    mondexheight SPECIES_APPLETUN, "1’04”"
    mondexweight SPECIES_APPLETUN, "28.7 lbs."


mondata SPECIES_SILICOBRA, "Silicobra"
    basestats 52, 57, 75, 46, 35, 50
    types TYPE_GROUND, TYPE_GROUND
    catchrate 255
    baseexp 63
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_DRAGON
    abilities ABILITY_SAND_SPIT,  ABILITY_SHED_SKIN
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SILICOBRA_TM_DATA_0, SPECIES_SILICOBRA_TM_DATA_1, SPECIES_SILICOBRA_TM_DATA_2, SPECIES_SILICOBRA_TM_DATA_3
    mondexentry SPECIES_SILICOBRA, "It spews sand from its nostrils. While\nthe enemy is blinded, it burrows into\nthe ground to hide."
    mondexclassification SPECIES_SILICOBRA, "Sand Snake Pokémon"
    mondexheight SPECIES_SILICOBRA, "7’03”"
    mondexweight SPECIES_SILICOBRA, "16.8 lbs."


mondata SPECIES_SANDACONDA, "Sandaconda"
    basestats 72, 107, 125, 71, 65, 70
    types TYPE_GROUND, TYPE_GROUND
    catchrate 120
    baseexp 179
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_DRAGON
    abilities ABILITY_SAND_SPIT,  ABILITY_SHED_SKIN
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SANDACONDA_TM_DATA_0, SPECIES_SANDACONDA_TM_DATA_1, SPECIES_SANDACONDA_TM_DATA_2, SPECIES_SANDACONDA_TM_DATA_3
    mondexentry SPECIES_SANDACONDA, "When it contracts its body, over 220\npounds of sand sprays from its nose.\nIt becomes disheartened if it runs out."
    mondexclassification SPECIES_SANDACONDA, "Sand Snake Pokémon"
    mondexheight SPECIES_SANDACONDA, "12’06”"
    mondexweight SPECIES_SANDACONDA, "144.4 lbs."


mondata SPECIES_CRAMORANT, "Cramorant"
    basestats 70, 85, 55, 85, 85, 95
    types TYPE_FLYING, TYPE_WATER
    catchrate 45
    baseexp 166
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FLYING
    abilities ABILITY_GULP_MISSILE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CRAMORANT_TM_DATA_0, SPECIES_CRAMORANT_TM_DATA_1, SPECIES_CRAMORANT_TM_DATA_2, SPECIES_CRAMORANT_TM_DATA_3
    mondexentry SPECIES_CRAMORANT, "It’s so strong that it can knock out some\nopponents in a single hit, but it also may\nforget what it’s battling midfight."
    mondexclassification SPECIES_CRAMORANT, "Gulp Pokémon"
    mondexheight SPECIES_CRAMORANT, "2’07”"
    mondexweight SPECIES_CRAMORANT, "39.7 lbs."


mondata SPECIES_ARROKUDA, "Arrokuda"
    basestats 41, 63, 40, 66, 40, 30
    types TYPE_WATER, TYPE_WATER
    catchrate 255
    baseexp 56
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_SWIFT_SWIM,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_ARROKUDA_TM_DATA_0, SPECIES_ARROKUDA_TM_DATA_1, SPECIES_ARROKUDA_TM_DATA_2, SPECIES_ARROKUDA_TM_DATA_3
    mondexentry SPECIES_ARROKUDA, "It becomes extremely sluggish after\neating its fill. That’s when Cramorant\nswallows it up."
    mondexclassification SPECIES_ARROKUDA, "Rush Pokémon"
    mondexheight SPECIES_ARROKUDA, "1’08”"
    mondexweight SPECIES_ARROKUDA, "2.2 lbs."


mondata SPECIES_BARRASKEWDA, "Barraskewda"
    basestats 61, 123, 60, 136, 60, 50
    types TYPE_WATER, TYPE_WATER
    catchrate 60
    baseexp 172
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_SWIFT_SWIM,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BARRASKEWDA_TM_DATA_0, SPECIES_BARRASKEWDA_TM_DATA_1, SPECIES_BARRASKEWDA_TM_DATA_2, SPECIES_BARRASKEWDA_TM_DATA_3
    mondexentry SPECIES_BARRASKEWDA, "Its jaw that’s as sharp as a spear and\nas strong as steel. It spins its tail fins\nto surge forward at over 100 knots."
    mondexclassification SPECIES_BARRASKEWDA, "Skewer Pokémon"
    mondexheight SPECIES_BARRASKEWDA, "4’03”"
    mondexweight SPECIES_BARRASKEWDA, "66.1 lbs."


mondata SPECIES_TOXEL, "Toxel"
    basestats 40, 38, 35, 40, 54, 35
    types TYPE_ELECTRIC, TYPE_POISON
    catchrate 75
    baseexp 48
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_RATTLED,  ABILITY_STATIC
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_TOXEL_TM_DATA_0, SPECIES_TOXEL_TM_DATA_1, SPECIES_TOXEL_TM_DATA_2, SPECIES_TOXEL_TM_DATA_3
    mondexentry SPECIES_TOXEL, "It manipulates the chemical makeup of\nits poison to produce electricity. Despite\na weak voltage, it can cause paralysis."
    mondexclassification SPECIES_TOXEL, "Baby Pokémon"
    mondexheight SPECIES_TOXEL, "1’04”"
    mondexweight SPECIES_TOXEL, "24.3 lbs."


mondata SPECIES_TOXTRICITY, "Toxtricity"
    basestats 75, 98, 70, 75, 114, 70
    types TYPE_ELECTRIC, TYPE_POISON
    catchrate 45
    baseexp 176
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_PUNK_ROCK,  ABILITY_PLUS
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_TOXTRICITY_TM_DATA_0, SPECIES_TOXTRICITY_TM_DATA_1, SPECIES_TOXTRICITY_TM_DATA_2, SPECIES_TOXTRICITY_TM_DATA_3
    mondexentry SPECIES_TOXTRICITY, "This short-tempered and aggressive\nPokémon chugs stagnant water to\nabsorb any toxins it might contain."
    mondexclassification SPECIES_TOXTRICITY, "Punk Pokémon"
    mondexheight SPECIES_TOXTRICITY, "5’03”"
    mondexweight SPECIES_TOXTRICITY, "88.2 lbs."


mondata SPECIES_SIZZLIPEDE, "Sizzlipede"
    basestats 50, 65, 45, 45, 50, 50
    types TYPE_FIRE, TYPE_BUG
    catchrate 190
    baseexp 61
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_FLASH_FIRE,  ABILITY_WHITE_SMOKE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_SIZZLIPEDE_TM_DATA_0, SPECIES_SIZZLIPEDE_TM_DATA_1, SPECIES_SIZZLIPEDE_TM_DATA_2, SPECIES_SIZZLIPEDE_TM_DATA_3
    mondexentry SPECIES_SIZZLIPEDE, "It stores flammable gas in its body\nand uses it to generate heat. It then\ncoils around its prey and cooks it."
    mondexclassification SPECIES_SIZZLIPEDE, "Radiator Pokémon"
    mondexheight SPECIES_SIZZLIPEDE, "2’04”"
    mondexweight SPECIES_SIZZLIPEDE, "2.2 lbs."


mondata SPECIES_CENTISKORCH, "Centiskorch"
    basestats 100, 115, 65, 65, 90, 90
    types TYPE_FIRE, TYPE_BUG
    catchrate 75
    baseexp 184
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_FLASH_FIRE,  ABILITY_WHITE_SMOKE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CENTISKORCH_TM_DATA_0, SPECIES_CENTISKORCH_TM_DATA_1, SPECIES_CENTISKORCH_TM_DATA_2, SPECIES_CENTISKORCH_TM_DATA_3
    mondexentry SPECIES_CENTISKORCH, "This excessively hostile Pokémon has\nlarge and very sharp fangs in addition\nto its dangerous burning body. "
    mondexclassification SPECIES_CENTISKORCH, "Radiator Pokémon"
    mondexheight SPECIES_CENTISKORCH, "9’10”"
    mondexweight SPECIES_CENTISKORCH, "264.6 lbs."


mondata SPECIES_CLOBBOPUS, "Clobbopus"
    basestats 50, 68, 60, 32, 50, 50
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 180
    baseexp 62
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_LIMBER,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_CLOBBOPUS_TM_DATA_0, SPECIES_CLOBBOPUS_TM_DATA_1, SPECIES_CLOBBOPUS_TM_DATA_2, SPECIES_CLOBBOPUS_TM_DATA_3
    mondexentry SPECIES_CLOBBOPUS, "It’s very curious, but its means of\ninvestigating things is to try to punch\nthem with its tentacles."
    mondexclassification SPECIES_CLOBBOPUS, "Tantrum Pokémon"
    mondexheight SPECIES_CLOBBOPUS, "1’12”"
    mondexweight SPECIES_CLOBBOPUS, "8.8 lbs."


mondata SPECIES_GRAPPLOCT, "Grapploct"
    basestats 80, 118, 90, 42, 70, 80
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 168
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_LIMBER,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_GRAPPLOCT_TM_DATA_0, SPECIES_GRAPPLOCT_TM_DATA_1, SPECIES_GRAPPLOCT_TM_DATA_2, SPECIES_GRAPPLOCT_TM_DATA_3
    mondexentry SPECIES_GRAPPLOCT, "Searching for an opponent to test its\nskills against, it emerges onto land. Once\nthe battle is over, it returns to the sea."
    mondexclassification SPECIES_GRAPPLOCT, "Jujitsu Pokémon"
    mondexheight SPECIES_GRAPPLOCT, "5’03”"
    mondexweight SPECIES_GRAPPLOCT, "86.0 lbs."


mondata SPECIES_SINISTEA, "Sinistea"
    basestats 40, 45, 45, 50, 74, 54
    types TYPE_GHOST, TYPE_GHOST
    catchrate 120
    baseexp 62
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_AMORPHOUS
    abilities ABILITY_WEAK_ARMOR,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SINISTEA_TM_DATA_0, SPECIES_SINISTEA_TM_DATA_1, SPECIES_SINISTEA_TM_DATA_2, SPECIES_SINISTEA_TM_DATA_3
    mondexentry SPECIES_SINISTEA, "This Pokémon is said to have been\nborn when a lonely spirit possessed\na cold, leftover cup of tea."
    mondexclassification SPECIES_SINISTEA, "Black Tea Pokémon"
    mondexheight SPECIES_SINISTEA, "0’04”"
    mondexweight SPECIES_SINISTEA, "0.4 lbs."


mondata SPECIES_POLTEAGEIST, "Polteageist"
    basestats 60, 65, 65, 70, 134, 114
    types TYPE_GHOST, TYPE_GHOST
    catchrate 60
    baseexp 178
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_AMORPHOUS
    abilities ABILITY_WEAK_ARMOR,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_POLTEAGEIST_TM_DATA_0, SPECIES_POLTEAGEIST_TM_DATA_1, SPECIES_POLTEAGEIST_TM_DATA_2, SPECIES_POLTEAGEIST_TM_DATA_3
    mondexentry SPECIES_POLTEAGEIST, "This species lives in antique teapots.\nMost pots are forgeries, but on rare\noccasions, an authentic work is found."
    mondexclassification SPECIES_POLTEAGEIST, "Black Tea Pokémon"
    mondexheight SPECIES_POLTEAGEIST, "0’08”"
    mondexweight SPECIES_POLTEAGEIST, "0.9 lbs."


mondata SPECIES_HATENNA, "Hatenna"
    basestats 42, 30, 45, 39, 56, 53
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 235
    baseexp 53
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_HEALER,  ABILITY_ANTICIPATION
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_HATENNA_TM_DATA_0, SPECIES_HATENNA_TM_DATA_1, SPECIES_HATENNA_TM_DATA_2, SPECIES_HATENNA_TM_DATA_3
    mondexentry SPECIES_HATENNA, "Via the protrusion on its head, it\nsenses other creatures’ emotions.\nIt prefers areas without people."
    mondexclassification SPECIES_HATENNA, "Calm Pokémon"
    mondexheight SPECIES_HATENNA, "1’04”"
    mondexweight SPECIES_HATENNA, "7.5 lbs."


mondata SPECIES_HATTREM, "Hattrem"
    basestats 57, 40, 65, 49, 86, 73
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 120
    baseexp 130
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_HEALER,  ABILITY_ANTICIPATION
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_HATTREM_TM_DATA_0, SPECIES_HATTREM_TM_DATA_1, SPECIES_HATTREM_TM_DATA_2, SPECIES_HATTREM_TM_DATA_3
    mondexentry SPECIES_HATTREM, "No matter who you are, if you bring\nstrong emotions near this Pokémon,\nit will silence you violently."
    mondexclassification SPECIES_HATTREM, "Serene Pokémon"
    mondexheight SPECIES_HATTREM, "1’12”"
    mondexweight SPECIES_HATTREM, "10.6 lbs."


mondata SPECIES_HATTERENE, "Hatterene"
    basestats 57, 90, 95, 29, 136, 103
    types TYPE_PSYCHIC, TYPE_FAIRY
    catchrate 45
    baseexp 255
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_HEALER,  ABILITY_ANTICIPATION
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_HATTERENE_TM_DATA_0, SPECIES_HATTERENE_TM_DATA_1, SPECIES_HATTERENE_TM_DATA_2, SPECIES_HATTERENE_TM_DATA_3
    mondexentry SPECIES_HATTERENE, "Known as the Forest Witch, if you are\ntoo loud around it, you risk being torn\napart by the claws on its tentacle."
    mondexclassification SPECIES_HATTERENE, "Silent Pokémon"
    mondexheight SPECIES_HATTERENE, "6’11”"
    mondexweight SPECIES_HATTERENE, "11.2 lbs."


mondata SPECIES_IMPIDIMP, "Impidimp"
    basestats 45, 45, 30, 50, 55, 40
    types TYPE_DARK, TYPE_FAIRY
    catchrate 255
    baseexp 53
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_PRANKSTER,  ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_IMPIDIMP_TM_DATA_0, SPECIES_IMPIDIMP_TM_DATA_1, SPECIES_IMPIDIMP_TM_DATA_2, SPECIES_IMPIDIMP_TM_DATA_3
    mondexentry SPECIES_IMPIDIMP, "It sneaks into people’s homes, taking\nand feasting on the negative energy\nof the frustrated occupants."
    mondexclassification SPECIES_IMPIDIMP, "Wily Pokémon"
    mondexheight SPECIES_IMPIDIMP, "1’04”"
    mondexweight SPECIES_IMPIDIMP, "12.1 lbs."


mondata SPECIES_MORGREM, "Morgrem"
    basestats 65, 60, 45, 70, 75, 55
    types TYPE_DARK, TYPE_FAIRY
    catchrate 120
    baseexp 130
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_PRANKSTER,  ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_MORGREM_TM_DATA_0, SPECIES_MORGREM_TM_DATA_1, SPECIES_MORGREM_TM_DATA_2, SPECIES_MORGREM_TM_DATA_3
    mondexentry SPECIES_MORGREM, "With sly cunning, it lures people into\nthe woods. Some believe it to have\nthe power to make crops grow."
    mondexclassification SPECIES_MORGREM, "Devious Pokémon"
    mondexheight SPECIES_MORGREM, "2’07”"
    mondexweight SPECIES_MORGREM, "27.6 lbs."


mondata SPECIES_GRIMMSNARL, "Grimmsnarl"
    basestats 95, 120, 65, 60, 95, 75
    types TYPE_DARK, TYPE_FAIRY
    catchrate 45
    baseexp 255
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_PRANKSTER,  ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GRIMMSNARL_TM_DATA_0, SPECIES_GRIMMSNARL_TM_DATA_1, SPECIES_GRIMMSNARL_TM_DATA_2, SPECIES_GRIMMSNARL_TM_DATA_3
    mondexentry SPECIES_GRIMMSNARL, "Its hairs work like muscle fibers.\nWhen its hairs unfurl, they latch on to\nfoes, ensnaring them like tentacles."
    mondexclassification SPECIES_GRIMMSNARL, "Bulk Up Pokémon"
    mondexheight SPECIES_GRIMMSNARL, "4’11”"
    mondexweight SPECIES_GRIMMSNARL, "134.5 lbs."


mondata SPECIES_OBSTAGOON, "Obstagoon"
    basestats 93, 90, 101, 95, 60, 81
    types TYPE_DARK, TYPE_NORMAL
    catchrate 45
    baseexp 260
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RECKLESS,  ABILITY_GUTS
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_OBSTAGOON_TM_DATA_0, SPECIES_OBSTAGOON_TM_DATA_1, SPECIES_OBSTAGOON_TM_DATA_2, SPECIES_OBSTAGOON_TM_DATA_3
    mondexentry SPECIES_OBSTAGOON, "It evolved after experiencing numerous\nfights. While crossing its arms, it lets out a\nshout that would make anyone flinch."
    mondexclassification SPECIES_OBSTAGOON, "Blocking Pokémon"
    mondexheight SPECIES_OBSTAGOON, "5’03”"
    mondexweight SPECIES_OBSTAGOON, "101.4 lbs."


mondata SPECIES_PERRSERKER, "Perrserker"
    basestats 70, 110, 100, 50, 50, 60
    types TYPE_STEEL, TYPE_STEEL
    catchrate 90
    baseexp 154
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BATTLE_ARMOR,  ABILITY_TOUGH_CLAWS
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_PERRSERKER_TM_DATA_0, SPECIES_PERRSERKER_TM_DATA_1, SPECIES_PERRSERKER_TM_DATA_2, SPECIES_PERRSERKER_TM_DATA_3
    mondexentry SPECIES_PERRSERKER, "What appears to be an iron helmet is\nactually hardened hair. This Pokémon\nlives for the thrill of battle."
    mondexclassification SPECIES_PERRSERKER, "Viking Pokémon"
    mondexheight SPECIES_PERRSERKER, "2’07”"
    mondexweight SPECIES_PERRSERKER, "61.7 lbs."


mondata SPECIES_CURSOLA, "Cursola"
    basestats 60, 95, 50, 30, 145, 130
    types TYPE_GHOST, TYPE_GHOST
    catchrate 30
    baseexp 179
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_WEAK_ARMOR,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_CURSOLA_TM_DATA_0, SPECIES_CURSOLA_TM_DATA_1, SPECIES_CURSOLA_TM_DATA_2, SPECIES_CURSOLA_TM_DATA_3
    mondexentry SPECIES_CURSOLA, "Be cautious of the ectoplasmic body\nsurrounding its soul. You’ll become stiff\nas stone if you touch it."
    mondexclassification SPECIES_CURSOLA, "Coral Pokémon"
    mondexheight SPECIES_CURSOLA, "3’03”"
    mondexweight SPECIES_CURSOLA, "0.9 lbs."


mondata SPECIES_SIRFETCHD, "Sirfetch’d"
    basestats 62, 135, 95, 65, 68, 82
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 177
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FIELD
    abilities ABILITY_STEADFAST,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SIRFETCHD_TM_DATA_0, SPECIES_SIRFETCHD_TM_DATA_1, SPECIES_SIRFETCHD_TM_DATA_2, SPECIES_SIRFETCHD_TM_DATA_3
    mondexentry SPECIES_SIRFETCHD, "After deflecting attacks with its hard\nleaf shield, it strikes back with its sharp\nleek stalk."
    mondexclassification SPECIES_SIRFETCHD, "Wild Duck Pokémon"
    mondexheight SPECIES_SIRFETCHD, "2’07”"
    mondexweight SPECIES_SIRFETCHD, "257.9 lbs."


mondata SPECIES_MR_RIME, "Mr. Rime"
    basestats 80, 85, 75, 70, 110, 100
    types TYPE_ICE, TYPE_PSYCHIC
    catchrate 45
    baseexp 182
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_TANGLED_FEET,  ABILITY_SCREEN_CLEANER
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_MR_RIME_TM_DATA_0, SPECIES_MR_RIME_TM_DATA_1, SPECIES_MR_RIME_TM_DATA_2, SPECIES_MR_RIME_TM_DATA_3
    mondexentry SPECIES_MR_RIME, "Its amusing movements make it very\npopular. It releases its psychic power\nfrom the pattern on its belly."
    mondexclassification SPECIES_MR_RIME, "Comedian Pokémon"
    mondexheight SPECIES_MR_RIME, "4’11”"
    mondexweight SPECIES_MR_RIME, "128.3 lbs."


mondata SPECIES_RUNERIGUS, "Runerigus"
    basestats 58, 95, 145, 30, 50, 105
    types TYPE_GROUND, TYPE_GHOST
    catchrate 90
    baseexp 169
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_AMORPHOUS
    abilities ABILITY_WANDERING_SPIRIT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_RUNERIGUS_TM_DATA_0, SPECIES_RUNERIGUS_TM_DATA_1, SPECIES_RUNERIGUS_TM_DATA_2, SPECIES_RUNERIGUS_TM_DATA_3
    mondexentry SPECIES_RUNERIGUS, "Never touch its shadowlike body, or\nyou’ll be shown the horrific memories\nbehind the picture carved into it."
    mondexclassification SPECIES_RUNERIGUS, "Grudge Pokémon"
    mondexheight SPECIES_RUNERIGUS, "5’03”"
    mondexweight SPECIES_RUNERIGUS, "146.8 lbs."


mondata SPECIES_MILCERY, "Milcery"
    basestats 45, 40, 40, 34, 50, 61
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 200
    baseexp 54
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_AMORPHOUS
    abilities ABILITY_SWEET_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_MILCERY_TM_DATA_0, SPECIES_MILCERY_TM_DATA_1, SPECIES_MILCERY_TM_DATA_2, SPECIES_MILCERY_TM_DATA_3
    mondexentry SPECIES_MILCERY, "They say that any patisserie visited\nby Milcery is guaranteed success and\ngood fortune."
    mondexclassification SPECIES_MILCERY, "Cream Pokémon"
    mondexheight SPECIES_MILCERY, "0’08”"
    mondexweight SPECIES_MILCERY, "0.7 lbs."


mondata SPECIES_ALCREMIE, "Alcremie"
    basestats 65, 60, 75, 64, 110, 121
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 100
    baseexp 173
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_AMORPHOUS
    abilities ABILITY_SWEET_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_ALCREMIE_TM_DATA_0, SPECIES_ALCREMIE_TM_DATA_1, SPECIES_ALCREMIE_TM_DATA_2, SPECIES_ALCREMIE_TM_DATA_3
    mondexentry SPECIES_ALCREMIE, "It evolved from a Milcery that held\nonto a Strawberry Sweet. Its flavor\ndepends on how it was mixed."
    mondexclassification SPECIES_ALCREMIE, "Cream Pokémon"
    mondexheight SPECIES_ALCREMIE, "0’12”"
    mondexweight SPECIES_ALCREMIE, "1.1 lbs."


mondata SPECIES_FALINKS, "Falinks"
    basestats 65, 100, 100, 75, 70, 60
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 165
    evyields 0, 2, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_MINERAL
    abilities ABILITY_BATTLE_ARMOR,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_FALINKS_TM_DATA_0, SPECIES_FALINKS_TM_DATA_1, SPECIES_FALINKS_TM_DATA_2, SPECIES_FALINKS_TM_DATA_3
    mondexentry SPECIES_FALINKS, "The six of them work together as one.\nTeamwork is also their battle strategy, and\nthey constantly change their formation."
    mondexclassification SPECIES_FALINKS, "Formation Pokémon"
    mondexheight SPECIES_FALINKS, "9’10”"
    mondexweight SPECIES_FALINKS, "136.7 lbs."


mondata SPECIES_PINCURCHIN, "Pincurchin"
    basestats 48, 101, 95, 15, 91, 85
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 75
    baseexp 152
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LIGHTNING_ROD,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_PINCURCHIN_TM_DATA_0, SPECIES_PINCURCHIN_TM_DATA_1, SPECIES_PINCURCHIN_TM_DATA_2, SPECIES_PINCURCHIN_TM_DATA_3
    mondexentry SPECIES_PINCURCHIN, "It feeds on seaweed, using its teeth\nto scrape it off rocks. Electric current\nflows from the tips of its spines."
    mondexclassification SPECIES_PINCURCHIN, "Sea Urchin Pokémon"
    mondexheight SPECIES_PINCURCHIN, "0’12”"
    mondexweight SPECIES_PINCURCHIN, "2.2 lbs."


mondata SPECIES_SNOM, "Snom"
    basestats 30, 25, 35, 20, 45, 30
    types TYPE_ICE, TYPE_BUG
    catchrate 190
    baseexp 37
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_SNOWBALL
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SNOM_TM_DATA_0, SPECIES_SNOM_TM_DATA_1, SPECIES_SNOM_TM_DATA_2, SPECIES_SNOM_TM_DATA_3
    mondexentry SPECIES_SNOM, "It eats snow that piles up on the\nground. The more snow it eats, the\nbigger its spikes grow."
    mondexclassification SPECIES_SNOM, "Worm Pokémon"
    mondexheight SPECIES_SNOM, "0’12”"
    mondexweight SPECIES_SNOM, "8.4 lbs."


mondata SPECIES_FROSMOTH, "Frosmoth"
    basestats 70, 65, 60, 65, 125, 90
    types TYPE_ICE, TYPE_BUG
    catchrate 75
    baseexp 166
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_FROSMOTH_TM_DATA_0, SPECIES_FROSMOTH_TM_DATA_1, SPECIES_FROSMOTH_TM_DATA_2, SPECIES_FROSMOTH_TM_DATA_3
    mondexentry SPECIES_FROSMOTH, "Icy scales fall from its wings\nlike snow as it flies over fields\nand mountains."
    mondexclassification SPECIES_FROSMOTH, "Frost Moth Pokémon"
    mondexheight SPECIES_FROSMOTH, "4’03”"
    mondexweight SPECIES_FROSMOTH, "92.6 lbs."


mondata SPECIES_STONJOURNER, "Stonjourner"
    basestats 100, 125, 135, 70, 20, 20
    types TYPE_ROCK, TYPE_ROCK
    catchrate 60
    baseexp 165
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_POWER_SPOT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_STONJOURNER_TM_DATA_0, SPECIES_STONJOURNER_TM_DATA_1, SPECIES_STONJOURNER_TM_DATA_2, SPECIES_STONJOURNER_TM_DATA_3
    mondexentry SPECIES_STONJOURNER, "Once a year, on a specific date and\nat a specific time, they gather out of\nnowhere and form up in a circle."
    mondexclassification SPECIES_STONJOURNER, "Big Rock Pokémon"
    mondexheight SPECIES_STONJOURNER, "8’02”"
    mondexweight SPECIES_STONJOURNER, "1146.4 lbs."


mondata SPECIES_EISCUE, "Eiscue"
    basestats 75, 80, 110, 50, 65, 90
    types TYPE_ICE, TYPE_ICE
    catchrate 60
    baseexp 165
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_ICE_FACE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_EISCUE_TM_DATA_0, SPECIES_EISCUE_TM_DATA_1, SPECIES_EISCUE_TM_DATA_2, SPECIES_EISCUE_TM_DATA_3
    mondexentry SPECIES_EISCUE, "It drifted in on the flow of ocean\nwaters from a frigid place. It keeps its\nhead iced constantly to stay cold."
    mondexclassification SPECIES_EISCUE, "Penguin Pokémon"
    mondexheight SPECIES_EISCUE, "4’07”"
    mondexweight SPECIES_EISCUE, "196.2 lbs."


mondata SPECIES_INDEEDEE, "Indeedee"
    basestats 60, 65, 55, 95, 105, 95
    types TYPE_PSYCHIC, TYPE_NORMAL
    catchrate 30
    baseexp 166
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 40
    basefriendship 140
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_INNER_FOCUS,  ABILITY_SYNCHRONIZE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_INDEEDEE_TM_DATA_0, SPECIES_INDEEDEE_TM_DATA_1, SPECIES_INDEEDEE_TM_DATA_2, SPECIES_INDEEDEE_TM_DATA_3
    mondexentry SPECIES_INDEEDEE, "Through its horns, it can pick up on\nthe emotions of creatures around it. Males\nwill act as valets for those they serve."
    mondexclassification SPECIES_INDEEDEE, "Emotion Pokémon"
    mondexheight SPECIES_INDEEDEE, "2’11”"
    mondexweight SPECIES_INDEEDEE, "61.7 lbs."


mondata SPECIES_MORPEKO, "Morpeko"
    basestats 58, 95, 58, 97, 70, 58
    types TYPE_ELECTRIC, TYPE_DARK
    catchrate 180
    baseexp 153
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_HUNGER_SWITCH, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_MORPEKO_TM_DATA_0, SPECIES_MORPEKO_TM_DATA_1, SPECIES_MORPEKO_TM_DATA_2, SPECIES_MORPEKO_TM_DATA_3
    mondexentry SPECIES_MORPEKO, "As it eats the seeds stored up in its\npouches, it generates electricity while\nsatisfying its constant hunger."
    mondexclassification SPECIES_MORPEKO, "Two-Sided Pokémon"
    mondexheight SPECIES_MORPEKO, "0’12”"
    mondexweight SPECIES_MORPEKO, "6.6 lbs."


mondata SPECIES_CUFANT, "Cufant"
    basestats 72, 80, 49, 40, 40, 49
    types TYPE_STEEL, TYPE_STEEL
    catchrate 190
    baseexp 66
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_LAGGING_TAIL
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_MINERAL
    abilities ABILITY_SHEER_FORCE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_CUFANT_TM_DATA_0, SPECIES_CUFANT_TM_DATA_1, SPECIES_CUFANT_TM_DATA_2, SPECIES_CUFANT_TM_DATA_3
    mondexentry SPECIES_CUFANT, "If a job requires serious strength,\nCufant will excel at it. Its copper body\ntarnishes in the rain, turning green."
    mondexclassification SPECIES_CUFANT, "Copperderm Pokémon"
    mondexheight SPECIES_CUFANT, "3’11”"
    mondexweight SPECIES_CUFANT, "220.5 lbs."


mondata SPECIES_COPPERAJAH, "Copperajah"
    basestats 122, 130, 69, 30, 80, 69
    types TYPE_STEEL, TYPE_STEEL
    catchrate 90
    baseexp 175
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_LAGGING_TAIL
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_MINERAL
    abilities ABILITY_SHEER_FORCE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_COPPERAJAH_TM_DATA_0, SPECIES_COPPERAJAH_TM_DATA_1, SPECIES_COPPERAJAH_TM_DATA_2, SPECIES_COPPERAJAH_TM_DATA_3
    mondexentry SPECIES_COPPERAJAH, "These Pokémon live in herds. Their\ntrunks have incredible grip strength,\nstrong enough to crush giant rocks."
    mondexclassification SPECIES_COPPERAJAH, "Copperderm Pokémon"
    mondexheight SPECIES_COPPERAJAH, "9’10”"
    mondexweight SPECIES_COPPERAJAH, "1433.0 lbs."


mondata SPECIES_DRACOZOLT, "Dracozolt"
    basestats 90, 100, 90, 75, 80, 70
    types TYPE_ELECTRIC, TYPE_DRAGON
    catchrate 45
    baseexp 177
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 35
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_VOLT_ABSORB,  ABILITY_HUSTLE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_DRACOZOLT_TM_DATA_0, SPECIES_DRACOZOLT_TM_DATA_1, SPECIES_DRACOZOLT_TM_DATA_2, SPECIES_DRACOZOLT_TM_DATA_3
    mondexentry SPECIES_DRACOZOLT, "The powerful muscles in its tail\ngenerate its electricity. Its upper half\nis entirely too small. "
    mondexclassification SPECIES_DRACOZOLT, "Fossil Pokémon"
    mondexheight SPECIES_DRACOZOLT, "5’11”"
    mondexweight SPECIES_DRACOZOLT, "418.9 lbs."


mondata SPECIES_ARCTOZOLT, "Arctozolt"
    basestats 90, 100, 90, 55, 90, 80
    types TYPE_ELECTRIC, TYPE_ICE
    catchrate 45
    baseexp 177
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 35
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_VOLT_ABSORB,  ABILITY_STATIC
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_ARCTOZOLT_TM_DATA_0, SPECIES_ARCTOZOLT_TM_DATA_1, SPECIES_ARCTOZOLT_TM_DATA_2, SPECIES_ARCTOZOLT_TM_DATA_3
    mondexentry SPECIES_ARCTOZOLT, "The shaking of its freezing upper half\nis what generates its electricity. It has\na hard time walking around."
    mondexclassification SPECIES_ARCTOZOLT, "Fossil Pokémon"
    mondexheight SPECIES_ARCTOZOLT, "7’07”"
    mondexweight SPECIES_ARCTOZOLT, "330.7 lbs."


mondata SPECIES_DRACOVISH, "Dracovish"
    basestats 90, 90, 100, 75, 70, 80
    types TYPE_WATER, TYPE_DRAGON
    catchrate 45
    baseexp 177
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 35
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_WATER_ABSORB,  ABILITY_STRONG_JAW
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_DRACOVISH_TM_DATA_0, SPECIES_DRACOVISH_TM_DATA_1, SPECIES_DRACOVISH_TM_DATA_2, SPECIES_DRACOVISH_TM_DATA_3
    mondexentry SPECIES_DRACOVISH, "Its mighty legs are capable of running\nat speeds exceeding 40 mph, but it can’t\nbreathe unless it’s underwater."
    mondexclassification SPECIES_DRACOVISH, "Fossil Pokémon"
    mondexheight SPECIES_DRACOVISH, "7’07”"
    mondexweight SPECIES_DRACOVISH, "474.0 lbs."


mondata SPECIES_ARCTOVISH, "Arctovish"
    basestats 90, 90, 100, 55, 80, 90
    types TYPE_WATER, TYPE_ICE
    catchrate 45
    baseexp 177
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 35
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_WATER_ABSORB,  ABILITY_ICE_BODY
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_ARCTOVISH_TM_DATA_0, SPECIES_ARCTOVISH_TM_DATA_1, SPECIES_ARCTOVISH_TM_DATA_2, SPECIES_ARCTOVISH_TM_DATA_3
    mondexentry SPECIES_ARCTOVISH, "The skin on its face is impervious\nto attack, but breathing difficulties\nmade it go extinct anyway."
    mondexclassification SPECIES_ARCTOVISH, "Fossil Pokémon"
    mondexheight SPECIES_ARCTOVISH, "6’07”"
    mondexweight SPECIES_ARCTOVISH, "385.8 lbs."


mondata SPECIES_DURALUDON, "Duraludon"
    basestats 70, 95, 115, 85, 120, 50
    types TYPE_STEEL, TYPE_DRAGON
    catchrate 45
    baseexp 187
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 30
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_DRAGON
    abilities ABILITY_LIGHT_METAL,  ABILITY_HEAVY_METAL
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_DURALUDON_TM_DATA_0, SPECIES_DURALUDON_TM_DATA_1, SPECIES_DURALUDON_TM_DATA_2, SPECIES_DURALUDON_TM_DATA_3
    mondexentry SPECIES_DURALUDON, "Its body resembles polished metal,\nand it’s both lightweight and strong.\nHowever, its body rusts easily."
    mondexclassification SPECIES_DURALUDON, "Alloy Pokémon"
    mondexheight SPECIES_DURALUDON, "5’11”"
    mondexweight SPECIES_DURALUDON, "88.2 lbs."


mondata SPECIES_DREEPY, "Dreepy"
    basestats 28, 60, 30, 82, 40, 30
    types TYPE_DRAGON, TYPE_GHOST
    catchrate 45
    baseexp 54
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_DRAGON
    abilities ABILITY_CLEAR_BODY,  ABILITY_INFILTRATOR
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_DREEPY_TM_DATA_0, SPECIES_DREEPY_TM_DATA_1, SPECIES_DREEPY_TM_DATA_2, SPECIES_DREEPY_TM_DATA_3
    mondexentry SPECIES_DREEPY, "After being reborn as a ghost, Dreepy\nwanders the areas it used to inhabit back\nwhen it was alive in prehistoric seas."
    mondexclassification SPECIES_DREEPY, "Lingering Pokémon"
    mondexheight SPECIES_DREEPY, "1’08”"
    mondexweight SPECIES_DREEPY, "4.4 lbs."


mondata SPECIES_DRAKLOAK, "Drakloak"
    basestats 68, 80, 50, 102, 60, 50
    types TYPE_DRAGON, TYPE_GHOST
    catchrate 45
    baseexp 144
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_DRAGON
    abilities ABILITY_CLEAR_BODY,  ABILITY_INFILTRATOR
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_DRAKLOAK_TM_DATA_0, SPECIES_DRAKLOAK_TM_DATA_1, SPECIES_DRAKLOAK_TM_DATA_2, SPECIES_DRAKLOAK_TM_DATA_3
    mondexentry SPECIES_DRAKLOAK, "It’s capable of flying faster than 120\nmph. It battles alongside Dreepy and\ndotes on them until they evolve."
    mondexclassification SPECIES_DRAKLOAK, "Caretaker Pokémon"
    mondexheight SPECIES_DRAKLOAK, "4’07”"
    mondexweight SPECIES_DRAKLOAK, "24.3 lbs."


mondata SPECIES_DRAGAPULT, "Dragapult"
    basestats 88, 120, 75, 142, 100, 75
    types TYPE_DRAGON, TYPE_GHOST
    catchrate 45
    baseexp 300
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_DRAGON
    abilities ABILITY_CLEAR_BODY,  ABILITY_INFILTRATOR
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_DRAGAPULT_TM_DATA_0, SPECIES_DRAGAPULT_TM_DATA_1, SPECIES_DRAGAPULT_TM_DATA_2, SPECIES_DRAGAPULT_TM_DATA_3
    mondexentry SPECIES_DRAGAPULT, "Apparently the Dreepy inside its horns\neagerly look forward to being launched\nout at Mach speeds."
    mondexclassification SPECIES_DRAGAPULT, "Stealth Pokémon"
    mondexheight SPECIES_DRAGAPULT, "9’10”"
    mondexweight SPECIES_DRAGAPULT, "110.2 lbs."


mondata SPECIES_ZACIAN, "Zacian"
    basestats 92, 130, 115, 138, 80, 115
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 10
    baseexp 335
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_INTREPID_SWORD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_ZACIAN_TM_DATA_0, SPECIES_ZACIAN_TM_DATA_1, SPECIES_ZACIAN_TM_DATA_2, SPECIES_ZACIAN_TM_DATA_3
    mondexentry SPECIES_ZACIAN, "It has slumbered for many years. Some\nsay it is Zamazenta’s elder sister,\nothers say the two are rivals."
    mondexclassification SPECIES_ZACIAN, "Warrior Pokémon"
    mondexheight SPECIES_ZACIAN, "9’02”"
    mondexweight SPECIES_ZACIAN, "242.5 lbs."


mondata SPECIES_ZAMAZENTA, "Zamazenta"
    basestats 92, 130, 115, 138, 80, 115
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 10
    baseexp 335
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_DAUNTLESS_SHIELD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_ZAMAZENTA_TM_DATA_0, SPECIES_ZAMAZENTA_TM_DATA_1, SPECIES_ZAMAZENTA_TM_DATA_2, SPECIES_ZAMAZENTA_TM_DATA_3
    mondexentry SPECIES_ZAMAZENTA, "It slept for aeons while in the form\nof a statue. It was asleep for so long,\npeople forgot that it ever existed."
    mondexclassification SPECIES_ZAMAZENTA, "Warrior Pokémon"
    mondexheight SPECIES_ZAMAZENTA, "9’06”"
    mondexweight SPECIES_ZAMAZENTA, "463.0 lbs."


mondata SPECIES_ETERNATUS, "Eternatus"
    basestats 140, 85, 95, 130, 145, 95
    types TYPE_POISON, TYPE_DRAGON
    catchrate 255
    baseexp 345
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_ETERNATUS_TM_DATA_0, SPECIES_ETERNATUS_TM_DATA_1, SPECIES_ETERNATUS_TM_DATA_2, SPECIES_ETERNATUS_TM_DATA_3
    mondexentry SPECIES_ETERNATUS, "It was inside a meteorite that fell\n20,000 years ago. The energy that\nits core absorbs allows it to live."
    mondexclassification SPECIES_ETERNATUS, "Gigantic Pokémon"
    mondexheight SPECIES_ETERNATUS, "65’07”"
    mondexweight SPECIES_ETERNATUS, "2094.4 lbs."


mondata SPECIES_KUBFU, "Kubfu"
    basestats 60, 90, 60, 72, 53, 50
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 3
    baseexp 77
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 120
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_INNER_FOCUS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_KUBFU_TM_DATA_0, SPECIES_KUBFU_TM_DATA_1, SPECIES_KUBFU_TM_DATA_2, SPECIES_KUBFU_TM_DATA_3
    mondexentry SPECIES_KUBFU, "If it pulls the long white hair on\nits head, its fighting spirit heightens and\npower wells up from deep in its belly."
    mondexclassification SPECIES_KUBFU, "Wushu Pokémon"
    mondexheight SPECIES_KUBFU, "1’12”"
    mondexweight SPECIES_KUBFU, "26.5 lbs."


mondata SPECIES_URSHIFU, "Urshifu"
    basestats 100, 130, 100, 97, 63, 60
    types TYPE_FIGHTING, TYPE_DARK
    catchrate 3
    baseexp 275
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 120
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_UNSEEN_FIST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_URSHIFU_TM_DATA_0, SPECIES_URSHIFU_TM_DATA_1, SPECIES_URSHIFU_TM_DATA_2, SPECIES_URSHIFU_TM_DATA_3
    mondexentry SPECIES_URSHIFU, "Inhabiting the mountains of a distant\nregion, it races across sheer cliffs, training\nits legs and refining its moves."
    mondexclassification SPECIES_URSHIFU, "Wushu Pokémon"
    mondexheight SPECIES_URSHIFU, "6’03”"
    mondexweight SPECIES_URSHIFU, "231.5 lbs."


mondata SPECIES_ZARUDE, "Zarude"
    basestats 105, 120, 105, 105, 70, 95
    types TYPE_DARK, TYPE_GRASS
    catchrate 3
    baseexp 300
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_LEAF_GUARD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_ZARUDE_TM_DATA_0, SPECIES_ZARUDE_TM_DATA_1, SPECIES_ZARUDE_TM_DATA_2, SPECIES_ZARUDE_TM_DATA_3
    mondexentry SPECIES_ZARUDE, "Once the vines on its body tear off,\nthey become nutrients in the soil. This helps\nthe plants of the forest grow."
    mondexclassification SPECIES_ZARUDE, "Rogue Monkey Pokémon"
    mondexheight SPECIES_ZARUDE, "5’11”"
    mondexweight SPECIES_ZARUDE, "154.3 lbs."


mondata SPECIES_REGIELEKI, "Regieleki"
    basestats 80, 100, 50, 200, 100, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 3
    baseexp 290
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_TRANSISTOR, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_REGIELEKI_TM_DATA_0, SPECIES_REGIELEKI_TM_DATA_1, SPECIES_REGIELEKI_TM_DATA_2, SPECIES_REGIELEKI_TM_DATA_3
    mondexentry SPECIES_REGIELEKI, "Its entire body is made of an organ\nthat generates electricity. It is capable of\ngenerating a region’s worth of electricity."
    mondexclassification SPECIES_REGIELEKI, "Electron Pokémon"
    mondexheight SPECIES_REGIELEKI, "3’11”"
    mondexweight SPECIES_REGIELEKI, "319.7 lbs."


mondata SPECIES_REGIDRAGO, "Regidrago"
    basestats 200, 100, 50, 80, 100, 50
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 3
    baseexp 290
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_DRAGONS_MAW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_REGIDRAGO_TM_DATA_0, SPECIES_REGIDRAGO_TM_DATA_1, SPECIES_REGIDRAGO_TM_DATA_2, SPECIES_REGIDRAGO_TM_DATA_3
    mondexentry SPECIES_REGIDRAGO, "Its body is composed of crystallized\ndragon energy. It is said to contain the\npower of every Dragon Pokémon."
    mondexclassification SPECIES_REGIDRAGO, "Dragon Orb Pokémon"
    mondexheight SPECIES_REGIDRAGO, "6’11”"
    mondexweight SPECIES_REGIDRAGO, "440.9 lbs."


mondata SPECIES_GLASTRIER, "Glastrier"
    basestats 100, 145, 130, 30, 65, 110
    types TYPE_ICE, TYPE_ICE
    catchrate 3
    baseexp 290
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_CHILLING_NEIGH, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_GLASTRIER_TM_DATA_0, SPECIES_GLASTRIER_TM_DATA_1, SPECIES_GLASTRIER_TM_DATA_2, SPECIES_GLASTRIER_TM_DATA_3
    mondexentry SPECIES_GLASTRIER, "Glastrier has tremendous physical\nstrength. The mask covering its face is\n100 times stronger than diamond."
    mondexclassification SPECIES_GLASTRIER, "Wild Horse Pokémon"
    mondexheight SPECIES_GLASTRIER, "7’03”"
    mondexweight SPECIES_GLASTRIER, "1763.7 lbs."


mondata SPECIES_SPECTRIER, "Spectrier"
    basestats 100, 65, 60, 130, 145, 80
    types TYPE_GHOST, TYPE_GHOST
    catchrate 3
    baseexp 290
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_GRIM_NEIGH, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SPECTRIER_TM_DATA_0, SPECIES_SPECTRIER_TM_DATA_1, SPECIES_SPECTRIER_TM_DATA_2, SPECIES_SPECTRIER_TM_DATA_3
    mondexentry SPECIES_SPECTRIER, "As it dashes through the night, it\nabsorbs the life energy of sleeping Pokémon. It\ncraves silence and solitude."
    mondexclassification SPECIES_SPECTRIER, "Swift Horse Pokémon"
    mondexheight SPECIES_SPECTRIER, "6’07”"
    mondexweight SPECIES_SPECTRIER, "98.1 lbs."


mondata SPECIES_CALYREX, "Calyrex"
    basestats 100, 80, 80, 80, 80, 80
    types TYPE_PSYCHIC, TYPE_GRASS
    catchrate 3
    baseexp 250
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 100
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_UNNERVE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CALYREX_TM_DATA_0, SPECIES_CALYREX_TM_DATA_1, SPECIES_CALYREX_TM_DATA_2, SPECIES_CALYREX_TM_DATA_3
    mondexentry SPECIES_CALYREX, "Its every move is filled with grace\nand dignity. Extremely intelligent, it is said\nto see past, present, and future events."
    mondexclassification SPECIES_CALYREX, "King Pokémon"
    mondexheight SPECIES_CALYREX, "3’07”"
    mondexweight SPECIES_CALYREX, "17.0 lbs."


mondata SPECIES_WYRDEER, "Wyrdeer"
    basestats 103, 105, 72, 65, 105, 75
    types TYPE_NORMAL, TYPE_PSYCHIC
    catchrate 195
    baseexp 165 // stantler
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 0
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_WYRDEER_TM_DATA_0, SPECIES_WYRDEER_TM_DATA_1, SPECIES_WYRDEER_TM_DATA_2, SPECIES_WYRDEER_TM_DATA_3
    mondexentry SPECIES_WYRDEER, "The black orbs shine with uncanny light\nwhen it erects invisible barriers. The\nfur shed from its beard retains heat."
    mondexclassification SPECIES_WYRDEER, "Big Horn Pokémon"
    mondexheight SPECIES_WYRDEER, "5’11”"
    mondexweight SPECIES_WYRDEER, "209.7 lbs."


mondata SPECIES_KLEAVOR, "Kleavor"
    basestats 70, 135, 95, 85, 45, 70
    types TYPE_BUG, TYPE_ROCK
    catchrate 195
    baseexp 0
    evyields 0,2,0,0,0,0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 0
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_SHEER_FORCE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_KLEAVOR_TM_DATA_0, SPECIES_KLEAVOR_TM_DATA_1, SPECIES_KLEAVOR_TM_DATA_2, SPECIES_KLEAVOR_TM_DATA_3
    mondexentry SPECIES_KLEAVOR, "A violent creature that fells trees\nwith crude axes and shields itself with\nhard stone."
    mondexclassification SPECIES_KLEAVOR, "Axe Pokémon"
    mondexheight SPECIES_KLEAVOR, "5’11”"
    mondexweight SPECIES_KLEAVOR, "196.2 lbs."


mondata SPECIES_URSALUNA, "Ursaluna"
    basestats 130, 140, 105, 50, 45, 80
    types TYPE_GROUND, TYPE_NORMAL
    catchrate 195
    baseexp 208
    evyields 0,3,0,0,0,0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 0
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_GUTS, ABILITY_BULLETPROOF
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_URSALUNA_TM_DATA_0, SPECIES_URSALUNA_TM_DATA_1, SPECIES_URSALUNA_TM_DATA_2, SPECIES_URSALUNA_TM_DATA_3
    mondexentry SPECIES_URSALUNA, "Hisui’s swampy terrain gave Ursaluna its burly\nphysique and newfound capacity to manipulate\npeat at will."
    mondexclassification SPECIES_URSALUNA, "Peat Pokémon"
    mondexheight SPECIES_URSALUNA, "7’10”"
    mondexweight SPECIES_URSALUNA, "639.3 lbs."


mondata SPECIES_BASCULEGION, "Basclegion"
    basestats 120, 112, 65, 78, 80, 75
    types TYPE_WATER, TYPE_GHOST
    catchrate 195
    baseexp 208
    evyields 2,0,0,0,0,0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_RATTLED, ABILITY_ADAPTABILITY
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BASCULEGION_TM_DATA_0, SPECIES_BASCULEGION_TM_DATA_1, SPECIES_BASCULEGION_TM_DATA_2, SPECIES_BASCULEGION_TM_DATA_3
    mondexentry SPECIES_BASCULEGION, "Clads itself in souls of comrades\nthat died before journeying\nupstream."
    mondexclassification SPECIES_BASCULEGION, "Big Fish Pokémon"
    mondexheight SPECIES_BASCULEGION, "9’10”"
    mondexweight SPECIES_BASCULEGION, "242.5 lbs."


mondata SPECIES_SNEASLER, "Sneasler"
    basestats 80, 130, 60, 120, 40, 80
    types TYPE_FIGHTING, TYPE_POISON
    catchrate 135
    baseexp 208
    evyields 0,1,0,1,0,0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 0
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PRESSURE, ABILITY_PRESSURE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_SNEASLER_TM_DATA_0, SPECIES_SNEASLER_TM_DATA_1, SPECIES_SNEASLER_TM_DATA_2, SPECIES_SNEASLER_TM_DATA_3
    mondexentry SPECIES_SNEASLER, "Because of its virulent poison and\nphysical prowess, no other Pokémon\nbests it on the frozen highlands."
    mondexclassification SPECIES_SNEASLER, "Free Climb Pokémon"
    mondexheight SPECIES_SNEASLER, "4’03”"
    mondexweight SPECIES_SNEASLER, "94.8 lbs."


mondata SPECIES_OVERQWIL, "Overqwil"
    basestats 85, 115, 95, 85, 65, 65
    types TYPE_DARK, TYPE_POISON
    catchrate 135
    baseexp 208
    evyields 0,1,0,0,0,0
    items ITEM_NONE, ITEM_POISON_BARB
    genderratio 127
    eggcycles 0
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_POISON_POINT, ABILITY_SWIFT_SWIM
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_OVERQWIL_TM_DATA_0, SPECIES_OVERQWIL_TM_DATA_1, SPECIES_OVERQWIL_TM_DATA_2, SPECIES_OVERQWIL_TM_DATA_3
    mondexentry SPECIES_OVERQWIL, "Its lancelike spikes and anger have\nearned it the nickname “Sea Fiend.”\nIt slurps up poison to eat."
    mondexclassification SPECIES_OVERQWIL, "Pin Cluster Pokémon"
    mondexheight SPECIES_OVERQWIL, "8’02”"
    mondexweight SPECIES_OVERQWIL, "133.4 lbs."


mondata SPECIES_ENAMORUS, "Enamorus"
    basestats 74, 115, 70, 106, 135, 80
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, TYPE_FLYING
    catchrate 3
    baseexp 208
    evyields 0,0,0,0,3,0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 0
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_HEALER, ABILITY_HEALER
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_ENAMORUS_TM_DATA_0, SPECIES_ENAMORUS_TM_DATA_1, SPECIES_ENAMORUS_TM_DATA_2, SPECIES_ENAMORUS_TM_DATA_3
    mondexentry SPECIES_ENAMORUS, "Its arrival ends the winter.\nAccording to legend, this Pokémon’s love\ngives rise to fresh life."
    mondexclassification SPECIES_ENAMORUS, "Love-Hate Pokémon"
    mondexheight SPECIES_ENAMORUS, "5’03”"
    mondexweight SPECIES_ENAMORUS, "105.8 lbs."


mondata SPECIES_SPRIGATITO, "Sprigatito"
    basestats 40, 61, 54, 65, 45, 45
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SPRIGATITO_TM_DATA_0, SPECIES_SPRIGATITO_TM_DATA_1, SPECIES_SPRIGATITO_TM_DATA_2, SPECIES_SPRIGATITO_TM_DATA_3
    mondexentry SPECIES_SPRIGATITO, "The sweet scent its body gives off mesmerizes those around it. The scent grows stronger when this Pokémon is in the sun."
    mondexclassification SPECIES_SPRIGATITO, "Grass Cat Pokémon"
    mondexheight SPECIES_SPRIGATITO, "1’04”"
    mondexweight SPECIES_SPRIGATITO, "9.0 lbs."


mondata SPECIES_FLORAGATO, "Floragato"
    basestats 61, 80, 63, 83, 60, 63
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_FLORAGATO_TM_DATA_0, SPECIES_FLORAGATO_TM_DATA_1, SPECIES_FLORAGATO_TM_DATA_2, SPECIES_FLORAGATO_TM_DATA_3
    mondexentry SPECIES_FLORAGATO, "The hardness of Floragato’s fur depends on the Pokémon’s mood. When Floragato is prepared to battle, its fur becomes pointed and needle sharp."
    mondexclassification SPECIES_FLORAGATO, "Grass Cat Pokémon"
    mondexheight SPECIES_FLORAGATO, "2’11”"
    mondexweight SPECIES_FLORAGATO, "26.9 lbs."


mondata SPECIES_MEOWSCARADA, "Mewscarada"
    basestats 76, 110, 70, 123, 81, 70
    types TYPE_GRASS, TYPE_DARK
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_MEOWSCARADA_TM_DATA_0, SPECIES_MEOWSCARADA_TM_DATA_1, SPECIES_MEOWSCARADA_TM_DATA_2, SPECIES_MEOWSCARADA_TM_DATA_3
    mondexentry SPECIES_MEOWSCARADA, "With skillful misdirection, it rigs foes with pollen-packed flower bombs. Meowscarada sets off the bombs before its foes realize what’s going on."
    mondexclassification SPECIES_MEOWSCARADA, "Magician Pokémon"
    mondexheight SPECIES_MEOWSCARADA, "4’11”"
    mondexweight SPECIES_MEOWSCARADA, "68.8 lbs."


mondata SPECIES_FUECOCO, "Fuecoco"
    basestats 67, 45, 59, 36, 63, 40
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_FUECOCO_TM_DATA_0, SPECIES_FUECOCO_TM_DATA_1, SPECIES_FUECOCO_TM_DATA_2, SPECIES_FUECOCO_TM_DATA_3
    mondexentry SPECIES_FUECOCO, "Its flame sac is small, so energy is always leaking out. This energy is released from the dent atop Fuecoco’s head and flickers to and fro."
    mondexclassification SPECIES_FUECOCO, "Fire Croc Pokémon"
    mondexheight SPECIES_FUECOCO, "1’04”"
    mondexweight SPECIES_FUECOCO, "21.6 lbs."


mondata SPECIES_CROCALOR, "Crocalor"
    basestats 81, 55, 78, 49, 90, 58
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CROCALOR_TM_DATA_0, SPECIES_CROCALOR_TM_DATA_1, SPECIES_CROCALOR_TM_DATA_2, SPECIES_CROCALOR_TM_DATA_3
    mondexentry SPECIES_CROCALOR, "The valve in Crocalor’s flame sac is closely connected to its vocal cords. This Pokémon utters a guttural cry as it spews flames every which way."
    mondexclassification SPECIES_CROCALOR, "Fire Croc Pokémon"
    mondexheight SPECIES_CROCALOR, "3’03”"
    mondexweight SPECIES_CROCALOR, "67.7 lbs."


mondata SPECIES_SKELEDIRGE, "Skeledirge"
    basestats 104, 75, 100, 66, 110, 75
    types TYPE_FIRE, TYPE_GHOST
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_SKELEDIRGE_TM_DATA_0, SPECIES_SKELEDIRGE_TM_DATA_1, SPECIES_SKELEDIRGE_TM_DATA_2, SPECIES_SKELEDIRGE_TM_DATA_3
    mondexentry SPECIES_SKELEDIRGE, "Skeledirge’s gentle singing soothes the souls of all that hear it. It burns its enemies to a crisp with flames of over 5,400 degrees Fahrenheit."
    mondexclassification SPECIES_SKELEDIRGE, "Singer Pokémon"
    mondexheight SPECIES_SKELEDIRGE, "5’03”"
    mondexweight SPECIES_SKELEDIRGE, "719.8 lbs."


mondata SPECIES_QUAXLY, "Quaxly"
    basestats 55, 65, 45, 50, 50, 45
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_QUAXLY_TM_DATA_0, SPECIES_QUAXLY_TM_DATA_1, SPECIES_QUAXLY_TM_DATA_2, SPECIES_QUAXLY_TM_DATA_3
    mondexentry SPECIES_QUAXLY, "Its strong legs let it easily swim around in even fast-flowing rivers. It likes to keep things tidy and is prone to overthinking things."
    mondexclassification SPECIES_QUAXLY, "Duckling Pokémon"
    mondexheight SPECIES_QUAXLY, "1’08”"
    mondexweight SPECIES_QUAXLY, "13.4 lbs."


mondata SPECIES_QUAXWELL, "Quaxwell"
    basestats 70, 85, 65, 65, 65, 60
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_QUAXWELL_TM_DATA_0, SPECIES_QUAXWELL_TM_DATA_1, SPECIES_QUAXWELL_TM_DATA_2, SPECIES_QUAXWELL_TM_DATA_3
    mondexentry SPECIES_QUAXWELL, "The hardworking Quaxwell observes people and Pokémon from various regions and incorporates their movements into its own dance routines."
    mondexclassification SPECIES_QUAXWELL, "Practicing Pokémon"
    mondexheight SPECIES_QUAXWELL, "3’11”"
    mondexweight SPECIES_QUAXWELL, "47.4 lbs."


mondata SPECIES_QUAQUAVAL, "Quaquaval"
    basestats 85, 120, 80, 85, 85, 75
    types TYPE_WATER, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_QUAQUAVAL_TM_DATA_0, SPECIES_QUAQUAVAL_TM_DATA_1, SPECIES_QUAQUAVAL_TM_DATA_2, SPECIES_QUAQUAVAL_TM_DATA_3
    mondexentry SPECIES_QUAQUAVAL, "Dancing in ways that evoke far-away places, this Pokémon mesmerizes all that see it. Flourishes of its decorative water feathers slice into its foes."
    mondexclassification SPECIES_QUAQUAVAL, "Dancer Pokémon"
    mondexheight SPECIES_QUAQUAVAL, "5’11”"
    mondexweight SPECIES_QUAQUAVAL, "136.5 lbs."


mondata SPECIES_LECHONK, "Lechonk"
    basestats 54, 45, 40, 35, 35, 45
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_AROMA_VEIL, ABILITY_GLUTTONY
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_LECHONK_TM_DATA_0, SPECIES_LECHONK_TM_DATA_1, SPECIES_LECHONK_TM_DATA_2, SPECIES_LECHONK_TM_DATA_3
    mondexentry SPECIES_LECHONK, "This Pokémon spurns all but the finest of foods. Its body gives off an herblike scent that bug Pokémon detest."
    mondexclassification SPECIES_LECHONK, "Hog Pokémon"
    mondexheight SPECIES_LECHONK, "1’08”"
    mondexweight SPECIES_LECHONK, "22.5 lbs."


mondata SPECIES_OINKOLOGNE, "Oinkologne"
    basestats 110, 100, 75, 65, 59, 80
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 100
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_LINGERING_AROMA, ABILITY_GLUTTONY
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_OINKOLOGNE_TM_DATA_0, SPECIES_OINKOLOGNE_TM_DATA_1, SPECIES_OINKOLOGNE_TM_DATA_2, SPECIES_OINKOLOGNE_TM_DATA_3
    mondexentry SPECIES_OINKOLOGNE, "It entrances female Pokémon with the sweet, alluring scent that wafts from all over its body."
    mondexclassification SPECIES_OINKOLOGNE, "Hog Pokémon"
    mondexheight SPECIES_OINKOLOGNE, "3’03”"
    mondexweight SPECIES_OINKOLOGNE, "264.6 lbs."


mondata SPECIES_TAROUNTULA, "Tarountula"
    basestats 35, 41, 45, 20, 29, 40
    types TYPE_BUG, TYPE_BUG
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_INSOMNIA, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_TAROUNTULA_TM_DATA_0, SPECIES_TAROUNTULA_TM_DATA_1, SPECIES_TAROUNTULA_TM_DATA_2, SPECIES_TAROUNTULA_TM_DATA_3
    mondexentry SPECIES_TAROUNTULA, "The thread it secretes from its rear is as strong as wire. The secret behind the thread’s strength is the topic of ongoing research."
    mondexclassification SPECIES_TAROUNTULA, "String Ball Pokémon"
    mondexheight SPECIES_TAROUNTULA, "1’00”"
    mondexweight SPECIES_TAROUNTULA, "8.8 lbs."


mondata SPECIES_SPIDOPS, "Spidops"
    basestats 60, 79, 92, 35, 52, 86
    types TYPE_BUG, TYPE_BUG
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_INSOMNIA, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SPIDOPS_TM_DATA_0, SPECIES_SPIDOPS_TM_DATA_1, SPECIES_SPIDOPS_TM_DATA_2, SPECIES_SPIDOPS_TM_DATA_3
    mondexentry SPECIES_SPIDOPS, "Spidops covers its territory in tough, sticky threads to set up traps for intruders."
    mondexclassification SPECIES_SPIDOPS, "Trap Pokémon"
    mondexheight SPECIES_SPIDOPS, "3’03”"
    mondexweight SPECIES_SPIDOPS, "36.4 lbs."


mondata SPECIES_NYMBLE, "Nymble"
    basestats 33, 46, 40, 45, 21, 25
    types TYPE_BUG, TYPE_BUG
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 20
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_NYMBLE_TM_DATA_0, SPECIES_NYMBLE_TM_DATA_1, SPECIES_NYMBLE_TM_DATA_2, SPECIES_NYMBLE_TM_DATA_3
    mondexentry SPECIES_NYMBLE, "It’s highly skilled at a fighting style in which it uses its jumping capabilities to dodge incoming attacks while also dealing damage to opponents."
    mondexclassification SPECIES_NYMBLE, "Grasshopper Pokémon"
    mondexheight SPECIES_NYMBLE, "0’08”"
    mondexweight SPECIES_NYMBLE, "2.2 lbs."


mondata SPECIES_LOKIX, "Lokix"
    basestats 71, 102, 78, 92, 52, 55
    types TYPE_BUG, TYPE_DARK
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_LOKIX_TM_DATA_0, SPECIES_LOKIX_TM_DATA_1, SPECIES_LOKIX_TM_DATA_2, SPECIES_LOKIX_TM_DATA_3
    mondexentry SPECIES_LOKIX, "It uses its normally folded third set of legs when in Showdown Mode. This places a huge burden on its body, so it can’t stay in this mode for long."
    mondexclassification SPECIES_LOKIX, "Grasshopper Pokémon"
    mondexheight SPECIES_LOKIX, "3’03”"
    mondexweight SPECIES_LOKIX, "38.6 lbs."


mondata SPECIES_PAWMI, "Pawmi"
    basestats 45, 50, 20, 60, 40, 25
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_STATIC, ABILITY_NATURAL_CURE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_PAWMI_TM_DATA_0, SPECIES_PAWMI_TM_DATA_1, SPECIES_PAWMI_TM_DATA_2, SPECIES_PAWMI_TM_DATA_3
    mondexentry SPECIES_PAWMI, "The pads of its paws are electricity-discharging organs. Pawmi fires electricity from its forepaws while standing unsteadily on its hind legs."
    mondexclassification SPECIES_PAWMI, "Mouse Pokémon"
    mondexheight SPECIES_PAWMI, "1’00”"
    mondexweight SPECIES_PAWMI, "5.5 lbs."


mondata SPECIES_PAWMO, "Pawmo"
    basestats 60, 75, 40, 85, 50, 40
    types TYPE_ELECTRIC, TYPE_FIGHTING
    catchrate 80
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_VOLT_ABSORB, ABILITY_NATURAL_CURE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_PAWMO_TM_DATA_0, SPECIES_PAWMO_TM_DATA_1, SPECIES_PAWMO_TM_DATA_2, SPECIES_PAWMO_TM_DATA_3
    mondexentry SPECIES_PAWMO, "Pawmo uses a unique fighting technique in which it uses its forepaws to strike foes and zap them with electricity from its paw pads simultaneously."
    mondexclassification SPECIES_PAWMO, "Mouse Pokémon"
    mondexheight SPECIES_PAWMO, "1’04”"
    mondexweight SPECIES_PAWMO, "14.3 lbs."


mondata SPECIES_PAWMOT, "Pawmot"
    basestats 70, 115, 70, 105, 70, 60
    types TYPE_ELECTRIC, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_VOLT_ABSORB, ABILITY_NATURAL_CURE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_PAWMOT_TM_DATA_0, SPECIES_PAWMOT_TM_DATA_1, SPECIES_PAWMOT_TM_DATA_2, SPECIES_PAWMOT_TM_DATA_3
    mondexentry SPECIES_PAWMOT, "Pawmot’s fluffy fur acts as a battery. It can store the same amount of electricity as an electric car."
    mondexclassification SPECIES_PAWMOT, "Hands-On Pokémon"
    mondexheight SPECIES_PAWMOT, "2’11”"
    mondexweight SPECIES_PAWMOT, "90.4 lbs."


mondata SPECIES_TANDEMAUS, "Tandemaus"
    basestats 50, 50, 45, 75, 40, 45
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 150
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_RUN_AWAY, ABILITY_PICKUP
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_TANDEMAUS_TM_DATA_0, SPECIES_TANDEMAUS_TM_DATA_1, SPECIES_TANDEMAUS_TM_DATA_2, SPECIES_TANDEMAUS_TM_DATA_3
    mondexentry SPECIES_TANDEMAUS, "The pair sticks together no matter what. They split any food they find exactly in half and then eat it together."
    mondexclassification SPECIES_TANDEMAUS, "Couple Pokémon"
    mondexheight SPECIES_TANDEMAUS, "1’00”"
    mondexweight SPECIES_TANDEMAUS, "4.0 lbs."


mondata SPECIES_MAUSHOLD, "Maushold"
    basestats 74, 75, 70, 111, 65, 75
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_FRIEND_GUARD, ABILITY_CHEEK_POUCH
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_MAUSHOLD_TM_DATA_0, SPECIES_MAUSHOLD_TM_DATA_1, SPECIES_MAUSHOLD_TM_DATA_2, SPECIES_MAUSHOLD_TM_DATA_3
    mondexentry SPECIES_MAUSHOLD, "The larger pair protects the little ones during battles. When facing strong opponents, the whole group will join the fight."
    mondexclassification SPECIES_MAUSHOLD, "Family Pokémon"
    mondexheight SPECIES_MAUSHOLD, "1’00”"
    mondexweight SPECIES_MAUSHOLD, "5.1 lbs."


mondata SPECIES_FIDOUGH, "Fidough"
    basestats 37, 55, 70, 65, 30, 55
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_MINERAL
    abilities ABILITY_OWN_TEMPO, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_FIDOUGH_TM_DATA_0, SPECIES_FIDOUGH_TM_DATA_1, SPECIES_FIDOUGH_TM_DATA_2, SPECIES_FIDOUGH_TM_DATA_3
    mondexentry SPECIES_FIDOUGH, "The yeast in Fidough’s breath is useful for cooking, so this Pokémon has been protected by people since long ago."
    mondexclassification SPECIES_FIDOUGH, "Puppy Pokémon"
    mondexheight SPECIES_FIDOUGH, "1’00”"
    mondexweight SPECIES_FIDOUGH, "24.0 lbs."


mondata SPECIES_DACHSBUN, "Dachsbun"
    basestats 57, 80, 115, 95, 50, 80
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_MINERAL
    abilities ABILITY_WELL_BAKED_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DACHSBUN_TM_DATA_0, SPECIES_DACHSBUN_TM_DATA_1, SPECIES_DACHSBUN_TM_DATA_2, SPECIES_DACHSBUN_TM_DATA_3
    mondexentry SPECIES_DACHSBUN, "The surface of this Pokémon’s skin hardens when exposed to intense heat, and its body has an appetizing aroma."
    mondexclassification SPECIES_DACHSBUN, "Dog Pokémon"
    mondexheight SPECIES_DACHSBUN, "1’08”"
    mondexweight SPECIES_DACHSBUN, "32.8 lbs."


mondata SPECIES_SMOLIV, "Smoliv"
    basestats 41, 35, 45, 30, 58, 51
    types TYPE_GRASS, TYPE_NORMAL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_EARLY_BIRD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SMOLIV_TM_DATA_0, SPECIES_SMOLIV_TM_DATA_1, SPECIES_SMOLIV_TM_DATA_2, SPECIES_SMOLIV_TM_DATA_3
    mondexentry SPECIES_SMOLIV, "This Pokémon converts nutrients into oil, which it stores in the fruit on its head. It can easily go a whole week without eating or drinking."
    mondexclassification SPECIES_SMOLIV, "Olive Pokémon"
    mondexheight SPECIES_SMOLIV, "1’00”"
    mondexweight SPECIES_SMOLIV, "14.3 lbs."


mondata SPECIES_DOLLIV, "Dolliv"
    basestats 52, 53, 60, 33, 78, 78
    types TYPE_GRASS, TYPE_NORMAL
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_EARLY_BIRD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_DOLLIV_TM_DATA_0, SPECIES_DOLLIV_TM_DATA_1, SPECIES_DOLLIV_TM_DATA_2, SPECIES_DOLLIV_TM_DATA_3
    mondexentry SPECIES_DOLLIV, "It basks in the sun to its heart’s content until the fruits on its head ripen. After that, Dolliv departs from human settlements and goes on a journey."
    mondexclassification SPECIES_DOLLIV, "Olive Pokémon"
    mondexheight SPECIES_DOLLIV, "2’00”"
    mondexweight SPECIES_DOLLIV, "26.2 lbs."


mondata SPECIES_ARBOLIVA, "Arboliva"
    basestats 78, 69, 90, 39, 125, 109
    types TYPE_GRASS, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_SEED_SOWER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_ARBOLIVA_TM_DATA_0, SPECIES_ARBOLIVA_TM_DATA_1, SPECIES_ARBOLIVA_TM_DATA_2, SPECIES_ARBOLIVA_TM_DATA_3
    mondexentry SPECIES_ARBOLIVA, "This Pokémon drives back enemies by launching its rich, aromatic oil at them with enough force to smash a boulder."
    mondexclassification SPECIES_ARBOLIVA, "Olive Pokémon"
    mondexheight SPECIES_ARBOLIVA, "4’07”"
    mondexweight SPECIES_ARBOLIVA, "106.3 lbs."


mondata SPECIES_SQUAWKABILLY, "Squawkbily"
    basestats 82, 96, 51, 92, 45, 51
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_INTIMIDATE, ABILITY_HUSTLE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SQUAWKABILLY_TM_DATA_0, SPECIES_SQUAWKABILLY_TM_DATA_1, SPECIES_SQUAWKABILLY_TM_DATA_2, SPECIES_SQUAWKABILLY_TM_DATA_3
    mondexentry SPECIES_SQUAWKABILLY, "Green-feathered flocks hold the most sway. When they’re out searching for food in the mornings and evenings, it gets very noisy."
    mondexclassification SPECIES_SQUAWKABILLY, "Parrot Pokémon"
    mondexheight SPECIES_SQUAWKABILLY, "2’00”"
    mondexweight SPECIES_SQUAWKABILLY, "5.3 lbs."


mondata SPECIES_NACLI, "Nacli"
    basestats 55, 55, 75, 25, 35, 35
    types TYPE_ROCK, TYPE_ROCK
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_PURIFYING_SALT, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NACLI_TM_DATA_0, SPECIES_NACLI_TM_DATA_1, SPECIES_NACLI_TM_DATA_2, SPECIES_NACLI_TM_DATA_3
    mondexentry SPECIES_NACLI, "The ground scrapes its body as it travels, causing it to leave salt behind. Salt is constantly being created and replenished inside Nacli’s body."
    mondexclassification SPECIES_NACLI, "Rock Salt Pokémon"
    mondexheight SPECIES_NACLI, "1’04”"
    mondexweight SPECIES_NACLI, "35.3 lbs."


mondata SPECIES_NACLSTACK, "Naclstack"
    basestats 60, 60, 100, 35, 35, 65
    types TYPE_ROCK, TYPE_ROCK
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_PURIFYING_SALT, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NACLSTACK_TM_DATA_0, SPECIES_NACLSTACK_TM_DATA_1, SPECIES_NACLSTACK_TM_DATA_2, SPECIES_NACLSTACK_TM_DATA_3
    mondexentry SPECIES_NACLSTACK, "It compresses rock salt inside its body and shoots out hardened salt pellets with enough force to perforate an iron sheet."
    mondexclassification SPECIES_NACLSTACK, "Rock Salt Pokémon"
    mondexheight SPECIES_NACLSTACK, "2’00”"
    mondexweight SPECIES_NACLSTACK, "231.5 lbs."


mondata SPECIES_GARGANACL, "Garganacl"
    basestats 100, 100, 130, 35, 45, 90
    types TYPE_ROCK, TYPE_ROCK
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_PURIFYING_SALT, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GARGANACL_TM_DATA_0, SPECIES_GARGANACL_TM_DATA_1, SPECIES_GARGANACL_TM_DATA_2, SPECIES_GARGANACL_TM_DATA_3
    mondexentry SPECIES_GARGANACL, "Many Pokémon gather around Garganacl, hoping to lick at its mineral-rich salt."
    mondexclassification SPECIES_GARGANACL, "Rock Salt Pokémon"
    mondexheight SPECIES_GARGANACL, "7’07”"
    mondexweight SPECIES_GARGANACL, "529.1 lbs."


mondata SPECIES_CHARCADET, "Charcadet"
    basestats 40, 50, 40, 35, 50, 40
    types TYPE_FIRE, TYPE_FIRE
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 35
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_FLASH_FIRE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CHARCADET_TM_DATA_0, SPECIES_CHARCADET_TM_DATA_1, SPECIES_CHARCADET_TM_DATA_2, SPECIES_CHARCADET_TM_DATA_3
    mondexentry SPECIES_CHARCADET, "Its firepower increases when it fights, reaching over 1,800 degrees Fahrenheit. It likes berries that are rich in fat."
    mondexclassification SPECIES_CHARCADET, "Fire Child Pokémon"
    mondexheight SPECIES_CHARCADET, "2’00”"
    mondexweight SPECIES_CHARCADET, "23.1 lbs."


mondata SPECIES_ARMAROUGE, "Armarouge"
    basestats 85, 60, 100, 75, 125, 80
    types TYPE_FIRE, TYPE_PSYCHIC
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 35
    basefriendship 20
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_FLASH_FIRE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_ARMAROUGE_TM_DATA_0, SPECIES_ARMAROUGE_TM_DATA_1, SPECIES_ARMAROUGE_TM_DATA_2, SPECIES_ARMAROUGE_TM_DATA_3
    mondexentry SPECIES_ARMAROUGE, "This Pokémon clads itself in armor that has been fortified by psychic and fire energy, and it shoots blazing fireballs."
    mondexclassification SPECIES_ARMAROUGE, "Fire Warrior Pokémon"
    mondexheight SPECIES_ARMAROUGE, "4’11”"
    mondexweight SPECIES_ARMAROUGE, "187.4 lbs."


mondata SPECIES_CERULEDGE, "Ceruledge"
    basestats 75, 125, 80, 85, 60, 100
    types TYPE_FIRE, TYPE_GHOST
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 35
    basefriendship 20
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_FLASH_FIRE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CERULEDGE_TM_DATA_0, SPECIES_CERULEDGE_TM_DATA_1, SPECIES_CERULEDGE_TM_DATA_2, SPECIES_CERULEDGE_TM_DATA_3
    mondexentry SPECIES_CERULEDGE, "An old set of armor steeped in grudges caused this Pokémon’s evolution. Ceruledge cuts its enemies to pieces without mercy."
    mondexclassification SPECIES_CERULEDGE, "Fire Blades Pokémon"
    mondexheight SPECIES_CERULEDGE, "5’03”"
    mondexweight SPECIES_CERULEDGE, "136.7 lbs."


mondata SPECIES_TADBULB, "Tadbulb"
    basestats 61, 31, 41, 45, 59, 35
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_OWN_TEMPO, ABILITY_STATIC
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_TADBULB_TM_DATA_0, SPECIES_TADBULB_TM_DATA_1, SPECIES_TADBULB_TM_DATA_2, SPECIES_TADBULB_TM_DATA_3
    mondexentry SPECIES_TADBULB, "It floats using the electricity stored in its body. When thunderclouds are around, Tadbulb will float higher off the ground."
    mondexclassification SPECIES_TADBULB, "EleTadpole Pokémon"
    mondexheight SPECIES_TADBULB, "1’00”"
    mondexweight SPECIES_TADBULB, "0.9 lbs."


mondata SPECIES_BELLIBOLT, "Bellibolt"
    basestats 109, 64, 91, 45, 103, 83
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 50
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_ELECTROMORPHOSIS, ABILITY_STATIC
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BELLIBOLT_TM_DATA_0, SPECIES_BELLIBOLT_TM_DATA_1, SPECIES_BELLIBOLT_TM_DATA_2, SPECIES_BELLIBOLT_TM_DATA_3
    mondexentry SPECIES_BELLIBOLT, "What appear to be eyeballs are actually organs for discharging the electricity generated by Bellibolt’s belly-button dynamo."
    mondexclassification SPECIES_BELLIBOLT, "EleFrog Pokémon"
    mondexheight SPECIES_BELLIBOLT, "3’11”"
    mondexweight SPECIES_BELLIBOLT, "249.1 lbs."


mondata SPECIES_WATTREL, "Wattrel"
    basestats 40, 40, 35, 70, 55, 40
    types TYPE_ELECTRIC, TYPE_FLYING
    catchrate 180
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FLYING
    abilities ABILITY_WIND_POWER, ABILITY_VOLT_ABSORB
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_WATTREL_TM_DATA_0, SPECIES_WATTREL_TM_DATA_1, SPECIES_WATTREL_TM_DATA_2, SPECIES_WATTREL_TM_DATA_3
    mondexentry SPECIES_WATTREL, "These Pokémon make their nests on coastal cliffs. The nests have a strange, crackling texture, and they’re a popular delicacy."
    mondexclassification SPECIES_WATTREL, "Storm Petrel Pokémon"
    mondexheight SPECIES_WATTREL, "1’04”"
    mondexweight SPECIES_WATTREL, "7.9 lbs."


mondata SPECIES_KILOWATTREL, "Kilowatrel"
    basestats 70, 70, 60, 125, 105, 60
    types TYPE_ELECTRIC, TYPE_FLYING
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FLYING
    abilities ABILITY_WIND_POWER, ABILITY_VOLT_ABSORB
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_KILOWATTREL_TM_DATA_0, SPECIES_KILOWATTREL_TM_DATA_1, SPECIES_KILOWATTREL_TM_DATA_2, SPECIES_KILOWATTREL_TM_DATA_3
    mondexentry SPECIES_KILOWATTREL, "It uses its throat sac to store electricity generated by its wings. There’s hardly any oil in its feathers, so it is a poor swimmer."
    mondexclassification SPECIES_KILOWATTREL, "Frigatebird Pokémon"
    mondexheight SPECIES_KILOWATTREL, "4’07”"
    mondexweight SPECIES_KILOWATTREL, "85.1 lbs."


mondata SPECIES_MASCHIFF, "Maschiff"
    basestats 60, 78, 60, 51, 40, 51
    types TYPE_DARK, TYPE_DARK
    catchrate 150
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_RUN_AWAY
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_MASCHIFF_TM_DATA_0, SPECIES_MASCHIFF_TM_DATA_1, SPECIES_MASCHIFF_TM_DATA_2, SPECIES_MASCHIFF_TM_DATA_3
    mondexentry SPECIES_MASCHIFF, "Its well-developed jaw and fangs are strong enough to crunch through boulders, and its thick fat makes for an excellent defense."
    mondexclassification SPECIES_MASCHIFF, "Rascal Pokémon"
    mondexheight SPECIES_MASCHIFF, "1’08”"
    mondexweight SPECIES_MASCHIFF, "35.3 lbs."


mondata SPECIES_MABOSSTIFF, "Mabosstiff"
    basestats 80, 120, 90, 85, 60, 70
    types TYPE_DARK, TYPE_DARK
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_GUARD_DOG
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MABOSSTIFF_TM_DATA_0, SPECIES_MABOSSTIFF_TM_DATA_1, SPECIES_MABOSSTIFF_TM_DATA_2, SPECIES_MABOSSTIFF_TM_DATA_3
    mondexentry SPECIES_MABOSSTIFF, "Mabosstiff loves playing with children. Though usually gentle, it takes on an intimidating look when protecting its family."
    mondexclassification SPECIES_MABOSSTIFF, "Boss Pokémon"
    mondexheight SPECIES_MABOSSTIFF, "3’07”"
    mondexweight SPECIES_MABOSSTIFF, "134.5 lbs."


mondata SPECIES_SHROODLE, "Shroodle"
    basestats 40, 65, 35, 75, 40, 35
    types TYPE_POISON, TYPE_NORMAL
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_UNBURDEN, ABILITY_PICKPOCKET
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_SHROODLE_TM_DATA_0, SPECIES_SHROODLE_TM_DATA_1, SPECIES_SHROODLE_TM_DATA_2, SPECIES_SHROODLE_TM_DATA_3
    mondexentry SPECIES_SHROODLE, "To keep enemies away from its territory, it paints markings around its nest using a poisonous liquid that has an acrid odor."
    mondexclassification SPECIES_SHROODLE, "Toxic Mouse Pokémon"
    mondexheight SPECIES_SHROODLE, "0’08”"
    mondexweight SPECIES_SHROODLE, "1.5 lbs."


mondata SPECIES_GRAFAIAI, "Grafaiai"
    basestats 63, 95, 65, 110, 80, 72
    types TYPE_POISON, TYPE_NORMAL
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_UNBURDEN, ABILITY_POISON_TOUCH
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_GRAFAIAI_TM_DATA_0, SPECIES_GRAFAIAI_TM_DATA_1, SPECIES_GRAFAIAI_TM_DATA_2, SPECIES_GRAFAIAI_TM_DATA_3
    mondexentry SPECIES_GRAFAIAI, "Each Grafaiai paints its own individual pattern, and it will paint that same pattern over and over again throughout its life."
    mondexclassification SPECIES_GRAFAIAI, "Toxic Monkey Pokémon"
    mondexheight SPECIES_GRAFAIAI, "2’04”"
    mondexweight SPECIES_GRAFAIAI, "60.0 lbs."


mondata SPECIES_BRAMBLIN, "Bramblin"
    basestats 40, 65, 30, 60, 45, 35
    types TYPE_GRASS, TYPE_GHOST
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_WIND_RIDER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BRAMBLIN_TM_DATA_0, SPECIES_BRAMBLIN_TM_DATA_1, SPECIES_BRAMBLIN_TM_DATA_2, SPECIES_BRAMBLIN_TM_DATA_3
    mondexentry SPECIES_BRAMBLIN, "Not even Bramblin knows where it is headed as it tumbles across the wilderness, blown by the wind. It loathes getting wet."
    mondexclassification SPECIES_BRAMBLIN, "Tumbleweed Pokémon"
    mondexheight SPECIES_BRAMBLIN, "2’00”"
    mondexweight SPECIES_BRAMBLIN, "1.3 lbs."


mondata SPECIES_BRAMBLEGHAST, "Bramblgast"
    basestats 55, 115, 70, 90, 80, 70
    types TYPE_GRASS, TYPE_GHOST
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_WIND_RIDER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BRAMBLEGHAST_TM_DATA_0, SPECIES_BRAMBLEGHAST_TM_DATA_1, SPECIES_BRAMBLEGHAST_TM_DATA_2, SPECIES_BRAMBLEGHAST_TM_DATA_3
    mondexentry SPECIES_BRAMBLEGHAST, "Brambleghast wanders around arid regions. On rare occasions, mass outbreaks of these Pokémon will bury an entire town."
    mondexclassification SPECIES_BRAMBLEGHAST, "Tumbleweed Pokémon"
    mondexheight SPECIES_BRAMBLEGHAST, "3’11”"
    mondexweight SPECIES_BRAMBLEGHAST, "13.2 lbs."


mondata SPECIES_TOEDSCOOL, "Toedscool"
    basestats 40, 40, 35, 70, 50, 100
    types TYPE_GROUND, TYPE_GRASS
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_MYCELIUM_MIGHT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_TOEDSCOOL_TM_DATA_0, SPECIES_TOEDSCOOL_TM_DATA_1, SPECIES_TOEDSCOOL_TM_DATA_2, SPECIES_TOEDSCOOL_TM_DATA_3
    mondexentry SPECIES_TOEDSCOOL, "Though it looks like Tentacool, Toedscool is a completely different species. Its legs may be thin, but it can run at a speed of 30 mph."
    mondexclassification SPECIES_TOEDSCOOL, "Woodear Pokémon"
    mondexheight SPECIES_TOEDSCOOL, "2’11”"
    mondexweight SPECIES_TOEDSCOOL, "72.8 lbs."


mondata SPECIES_TOEDSCRUEL, "Toedscruel"
    basestats 80, 70, 65, 100, 80, 120
    types TYPE_GROUND, TYPE_GRASS
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_MYCELIUM_MIGHT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_TOEDSCRUEL_TM_DATA_0, SPECIES_TOEDSCRUEL_TM_DATA_1, SPECIES_TOEDSCRUEL_TM_DATA_2, SPECIES_TOEDSCRUEL_TM_DATA_3
    mondexentry SPECIES_TOEDSCRUEL, "It coils its 10 tentacles around prey and sucks out their nutrients, causing the prey pain. The folds along the rim of its head are a popular delicacy."
    mondexclassification SPECIES_TOEDSCRUEL, "Woodear Pokémon"
    mondexheight SPECIES_TOEDSCRUEL, "6’03”"
    mondexweight SPECIES_TOEDSCRUEL, "127.9 lbs."


mondata SPECIES_KLAWF, "Klawf"
    basestats 70, 100, 115, 75, 35, 55
    types TYPE_ROCK, TYPE_ROCK
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 35
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_ANGER_SHELL, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_KLAWF_TM_DATA_0, SPECIES_KLAWF_TM_DATA_1, SPECIES_KLAWF_TM_DATA_2, SPECIES_KLAWF_TM_DATA_3
    mondexentry SPECIES_KLAWF, "This Pokémon lives on sheer cliffs. It sidesteps opponents’ attacks, then lunges for their weak spots with its claws."
    mondexclassification SPECIES_KLAWF, "Ambush Pokémon"
    mondexheight SPECIES_KLAWF, "4’03”"
    mondexweight SPECIES_KLAWF, "174.2 lbs."


mondata SPECIES_CAPSAKID, "Capsakid"
    basestats 50, 62, 40, 50, 62, 40
    types TYPE_GRASS, TYPE_GRASS
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_INSOMNIA
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CAPSAKID_TM_DATA_0, SPECIES_CAPSAKID_TM_DATA_1, SPECIES_CAPSAKID_TM_DATA_2, SPECIES_CAPSAKID_TM_DATA_3
    mondexentry SPECIES_CAPSAKID, "Traditional Paldean dishes can be extremely spicy because they include the shed front teeth of Capsakid among their ingredients."
    mondexclassification SPECIES_CAPSAKID, "Spicy Pepper Pokémon"
    mondexheight SPECIES_CAPSAKID, "1’00”"
    mondexweight SPECIES_CAPSAKID, "6.6 lbs."


mondata SPECIES_SCOVILLAIN, "Scovillain"
    basestats 65, 108, 65, 75, 108, 65
    types TYPE_GRASS, TYPE_FIRE
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_INSOMNIA
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SCOVILLAIN_TM_DATA_0, SPECIES_SCOVILLAIN_TM_DATA_1, SPECIES_SCOVILLAIN_TM_DATA_2, SPECIES_SCOVILLAIN_TM_DATA_3
    mondexentry SPECIES_SCOVILLAIN, "The green head has turned vicious due to the spicy chemicals stimulating its brain. Once it goes on a rampage, there is no stopping it."
    mondexclassification SPECIES_SCOVILLAIN, "Spicy Pepper Pokémon"
    mondexheight SPECIES_SCOVILLAIN, "2’11”"
    mondexweight SPECIES_SCOVILLAIN, "33.1 lbs."


mondata SPECIES_RELLOR, "Rellor"
    basestats 41, 50, 60, 30, 31, 58
    types TYPE_BUG, TYPE_BUG
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_COMPOUND_EYES, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_RELLOR_TM_DATA_0, SPECIES_RELLOR_TM_DATA_1, SPECIES_RELLOR_TM_DATA_2, SPECIES_RELLOR_TM_DATA_3
    mondexentry SPECIES_RELLOR, "It rolls its mud ball around while the energy it needs for evolution matures. Eventually the time comes for it to evolve."
    mondexclassification SPECIES_RELLOR, "Rolling Pokémon"
    mondexheight SPECIES_RELLOR, "0’08”"
    mondexweight SPECIES_RELLOR, "2.2 lbs."


mondata SPECIES_RABSCA, "Rabsca"
    basestats 75, 50, 85, 45, 115, 100
    types TYPE_BUG, TYPE_PSYCHIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SYNCHRONIZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_RABSCA_TM_DATA_0, SPECIES_RABSCA_TM_DATA_1, SPECIES_RABSCA_TM_DATA_2, SPECIES_RABSCA_TM_DATA_3
    mondexentry SPECIES_RABSCA, "An infant sleeps inside the ball. Rabsca rolls the ball soothingly with its legs to ensure the infant sleeps comfortably."
    mondexclassification SPECIES_RABSCA, "Rolling Pokémon"
    mondexheight SPECIES_RABSCA, "1’00”"
    mondexweight SPECIES_RABSCA, "7.7 lbs."


mondata SPECIES_FLITTLE, "Flittle"
    basestats 30, 35, 30, 75, 55, 30
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_ANTICIPATION, ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_FLITTLE_TM_DATA_0, SPECIES_FLITTLE_TM_DATA_1, SPECIES_FLITTLE_TM_DATA_2, SPECIES_FLITTLE_TM_DATA_3
    mondexentry SPECIES_FLITTLE, "It spends its time running around wastelands. If anyone steals its beloved berries, it will chase them down and exact its revenge."
    mondexclassification SPECIES_FLITTLE, "Frill Pokémon"
    mondexheight SPECIES_FLITTLE, "0’08”"
    mondexweight SPECIES_FLITTLE, "3.3 lbs."


mondata SPECIES_ESPATHRA, "Espathra"
    basestats 95, 60, 60, 105, 101, 60
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_OPPORTUNIST, ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_ESPATHRA_TM_DATA_0, SPECIES_ESPATHRA_TM_DATA_1, SPECIES_ESPATHRA_TM_DATA_2, SPECIES_ESPATHRA_TM_DATA_3
    mondexentry SPECIES_ESPATHRA, "It emits psychic power from the gaps between its multicolored frills and sprints at speeds greater than 120 mph."
    mondexclassification SPECIES_ESPATHRA, "Ostrich Pokémon"
    mondexheight SPECIES_ESPATHRA, "6’03”"
    mondexweight SPECIES_ESPATHRA, "198.4 lbs."


mondata SPECIES_TINKATINK, "Tinkatink"
    basestats 50, 45, 45, 58, 35, 64
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, TYPE_STEEL
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_MOLD_BREAKER, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_TINKATINK_TM_DATA_0, SPECIES_TINKATINK_TM_DATA_1, SPECIES_TINKATINK_TM_DATA_2, SPECIES_TINKATINK_TM_DATA_3
    mondexentry SPECIES_TINKATINK, "This Pokémon pounds iron scraps together to make a hammer. It will remake the hammer again and again until it’s satisfied with the result."
    mondexclassification SPECIES_TINKATINK, "Metalsmith Pokémon"
    mondexheight SPECIES_TINKATINK, "1’04”"
    mondexweight SPECIES_TINKATINK, "19.6 lbs."


mondata SPECIES_TINKATUFF, "Tinkatuff"
    basestats 65, 55, 55, 78, 45, 82
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, TYPE_STEEL
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_MOLD_BREAKER, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_TINKATUFF_TM_DATA_0, SPECIES_TINKATUFF_TM_DATA_1, SPECIES_TINKATUFF_TM_DATA_2, SPECIES_TINKATUFF_TM_DATA_3
    mondexentry SPECIES_TINKATUFF, "These Pokémon make their homes in piles of scrap metal. They test the strength of each other’s hammers by smashing them together."
    mondexclassification SPECIES_TINKATUFF, "Hammer Pokémon"
    mondexheight SPECIES_TINKATUFF, "2’04”"
    mondexweight SPECIES_TINKATUFF, "130.3 lbs."


mondata SPECIES_TINKATON, "Tinkaton"
    basestats 85, 75, 77, 94, 70, 105
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, TYPE_STEEL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_MOLD_BREAKER, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_TINKATON_TM_DATA_0, SPECIES_TINKATON_TM_DATA_1, SPECIES_TINKATON_TM_DATA_2, SPECIES_TINKATON_TM_DATA_3
    mondexentry SPECIES_TINKATON, "The hammer tops 220 pounds, yet it gets swung around easily by Tinkaton as it steals whatever it pleases and carries its plunder back home."
    mondexclassification SPECIES_TINKATON, "Hammer Pokémon"
    mondexheight SPECIES_TINKATON, "2’04”"
    mondexweight SPECIES_TINKATON, "248.7 lbs."


mondata SPECIES_WIGLETT, "Wiglett"
    basestats 10, 55, 25, 95, 35, 25
    types TYPE_WATER, TYPE_WATER
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_GOOEY, ABILITY_RATTLED
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_WIGLETT_TM_DATA_0, SPECIES_WIGLETT_TM_DATA_1, SPECIES_WIGLETT_TM_DATA_2, SPECIES_WIGLETT_TM_DATA_3
    mondexentry SPECIES_WIGLETT, "Though it looks like Diglett, Wiglett is an entirely different species. The resemblance seems to be a coincidental result of environmental adaptation."
    mondexclassification SPECIES_WIGLETT, "Garden Eel Pokémon"
    mondexheight SPECIES_WIGLETT, "3’11”"
    mondexweight SPECIES_WIGLETT, "4.0 lbs."


mondata SPECIES_WUGTRIO, "Wugtrio"
    basestats 35, 100, 50, 120, 50, 70
    types TYPE_WATER, TYPE_WATER
    catchrate 50
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_GOOEY, ABILITY_RATTLED
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_WUGTRIO_TM_DATA_0, SPECIES_WUGTRIO_TM_DATA_1, SPECIES_WUGTRIO_TM_DATA_2, SPECIES_WUGTRIO_TM_DATA_3
    mondexentry SPECIES_WUGTRIO, "A variety of fish Pokémon, Wugtrio was once considered to be a regional form of Dugtrio."
    mondexclassification SPECIES_WUGTRIO, "Garden Eel Pokémon"
    mondexheight SPECIES_WUGTRIO, "3’11”"
    mondexweight SPECIES_WUGTRIO, "11.9 lbs."


mondata SPECIES_BOMBIRDIER, "Bombirdier"
    basestats 70, 103, 85, 82, 60, 85
    types TYPE_FLYING, TYPE_DARK
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 35
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_BIG_PECKS, ABILITY_KEEN_EYE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_BOMBIRDIER_TM_DATA_0, SPECIES_BOMBIRDIER_TM_DATA_1, SPECIES_BOMBIRDIER_TM_DATA_2, SPECIES_BOMBIRDIER_TM_DATA_3
    mondexentry SPECIES_BOMBIRDIER, "Bombirdier uses the apron on its chest to bundle up food, which it carries back to its nest. It enjoys dropping things that make loud noises."
    mondexclassification SPECIES_BOMBIRDIER, "Item Drop Pokémon"
    mondexheight SPECIES_BOMBIRDIER, "4’11”"
    mondexweight SPECIES_BOMBIRDIER, "94.6 lbs."


mondata SPECIES_FINIZEN, "Finizen"
    basestats 70, 45, 40, 75, 45, 40
    types TYPE_WATER, TYPE_WATER
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_WATER_2
    abilities ABILITY_WATER_VEIL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_FINIZEN_TM_DATA_0, SPECIES_FINIZEN_TM_DATA_1, SPECIES_FINIZEN_TM_DATA_2, SPECIES_FINIZEN_TM_DATA_3
    mondexentry SPECIES_FINIZEN, "Its water ring is made from seawater mixed with a sticky fluid that Finizen secretes from its blowhole."
    mondexclassification SPECIES_FINIZEN, "Dolphin Pokémon"
    mondexheight SPECIES_FINIZEN, "4’03”"
    mondexweight SPECIES_FINIZEN, "132.7 lbs."


mondata SPECIES_PALAFIN, "Palafin"
    basestats 100, 70, 72, 100, 53, 62
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_WATER_2
    abilities ABILITY_ZERO_TO_HERO, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_PALAFIN_TM_DATA_0, SPECIES_PALAFIN_TM_DATA_1, SPECIES_PALAFIN_TM_DATA_2, SPECIES_PALAFIN_TM_DATA_3
    mondexentry SPECIES_PALAFIN, "Its physical capabilities are no different than a Finizen’s, but when its allies are in danger, it transforms and powers itself up."
    mondexclassification SPECIES_PALAFIN, "Dolphin Pokémon"
    mondexheight SPECIES_PALAFIN, "4’03”"
    mondexweight SPECIES_PALAFIN, "132.7 lbs."


mondata SPECIES_VAROOM, "Varoom"
    basestats 45, 70, 63, 47, 30, 45
    types TYPE_STEEL, TYPE_POISON
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_OVERCOAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_VAROOM_TM_DATA_0, SPECIES_VAROOM_TM_DATA_1, SPECIES_VAROOM_TM_DATA_2, SPECIES_VAROOM_TM_DATA_3
    mondexentry SPECIES_VAROOM, "The steel section is Varoom’s actual body. This Pokémon clings to rocks and converts the minerals within into energy to fuel its activities."
    mondexclassification SPECIES_VAROOM, "Single-Cyl Pokémon"
    mondexheight SPECIES_VAROOM, "3’03”"
    mondexweight SPECIES_VAROOM, "77.2 lbs."


mondata SPECIES_REVAVROOM, "Revavroom"
    basestats 80, 119, 90, 90, 54, 67
    types TYPE_STEEL, TYPE_POISON
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_OVERCOAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_REVAVROOM_TM_DATA_0, SPECIES_REVAVROOM_TM_DATA_1, SPECIES_REVAVROOM_TM_DATA_2, SPECIES_REVAVROOM_TM_DATA_3
    mondexentry SPECIES_REVAVROOM, "Revavroom viciously threatens others with the sound of its exhaust. It sticks its tongue out from its cylindrical mouth and sprays toxic fluids."
    mondexclassification SPECIES_REVAVROOM, "Multi-Cyl Pokémon"
    mondexheight SPECIES_REVAVROOM, "5’11”"
    mondexweight SPECIES_REVAVROOM, "264.6 lbs."


mondata SPECIES_CYCLIZAR, "Cyclizar"
    basestats 70, 95, 65, 121, 85, 65
    types TYPE_DRAGON, TYPE_NORMAL
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SHED_SKIN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CYCLIZAR_TM_DATA_0, SPECIES_CYCLIZAR_TM_DATA_1, SPECIES_CYCLIZAR_TM_DATA_2, SPECIES_CYCLIZAR_TM_DATA_3
    mondexentry SPECIES_CYCLIZAR, "It can sprint at over 70 mph while carrying a human. The rider’s body heat warms Cyclizar’s back and lifts the Pokémon’s spirit."
    mondexclassification SPECIES_CYCLIZAR, "Mount Pokémon"
    mondexheight SPECIES_CYCLIZAR, "5’03”"
    mondexweight SPECIES_CYCLIZAR, "138.9 lbs."


mondata SPECIES_ORTHWORM, "Orthworm"
    basestats 70, 85, 145, 65, 60, 55
    types TYPE_STEEL, TYPE_STEEL
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 35
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_EARTH_EATER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_ORTHWORM_TM_DATA_0, SPECIES_ORTHWORM_TM_DATA_1, SPECIES_ORTHWORM_TM_DATA_2, SPECIES_ORTHWORM_TM_DATA_3
    mondexentry SPECIES_ORTHWORM, "This Pokémon lives in arid deserts. It maintains its metal body by consuming iron from the soil."
    mondexclassification SPECIES_ORTHWORM, "Earthworm Pokémon"
    mondexheight SPECIES_ORTHWORM, "8’02”"
    mondexweight SPECIES_ORTHWORM, "683.4 lbs."


mondata SPECIES_GLIMMET, "Glimmet"
    basestats 48, 35, 42, 60, 105, 60
    types TYPE_ROCK, TYPE_POISON
    catchrate 70
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_TOXIC_DEBRIS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_GLIMMET_TM_DATA_0, SPECIES_GLIMMET_TM_DATA_1, SPECIES_GLIMMET_TM_DATA_2, SPECIES_GLIMMET_TM_DATA_3
    mondexentry SPECIES_GLIMMET, "Glimmet’s toxic mineral crystals look just like flower petals. This Pokémon scatters poisonous powder like pollen to protect itself."
    mondexclassification SPECIES_GLIMMET, "Ore Pokémon"
    mondexheight SPECIES_GLIMMET, "2’04”"
    mondexweight SPECIES_GLIMMET, "17.6 lbs."


mondata SPECIES_GLIMMORA, "Glimmora"
    basestats 83, 55, 90, 86, 130, 81
    types TYPE_ROCK, TYPE_POISON
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_TOXIC_DEBRIS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_GLIMMORA_TM_DATA_0, SPECIES_GLIMMORA_TM_DATA_1, SPECIES_GLIMMORA_TM_DATA_2, SPECIES_GLIMMORA_TM_DATA_3
    mondexentry SPECIES_GLIMMORA, "Glimmora’s petals are made of crystallized poison energy. It has recently become evident that these petals resemble Tera Jewels."
    mondexclassification SPECIES_GLIMMORA, "Ore Pokémon"
    mondexheight SPECIES_GLIMMORA, "4’11”"
    mondexweight SPECIES_GLIMMORA, "99.2 lbs."


mondata SPECIES_GREAVARD, "Greavard"
    basestats 50, 61, 60, 34, 30, 55
    types TYPE_GHOST, TYPE_GHOST
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PICKUP, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_GREAVARD_TM_DATA_0, SPECIES_GREAVARD_TM_DATA_1, SPECIES_GREAVARD_TM_DATA_2, SPECIES_GREAVARD_TM_DATA_3
    mondexentry SPECIES_GREAVARD, "This friendly Pokémon doesn’t like being alone. Pay it even the slightest bit of attention, and it will follow you forever."
    mondexclassification SPECIES_GREAVARD, "Ghost Dog Pokémon"
    mondexheight SPECIES_GREAVARD, "2’00”"
    mondexweight SPECIES_GREAVARD, "77.2 lbs."


mondata SPECIES_HOUNDSTONE, "Houndstone"
    basestats 72, 101, 100, 68, 50, 97
    types TYPE_GHOST, TYPE_GHOST
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAND_RUSH, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_HOUNDSTONE_TM_DATA_0, SPECIES_HOUNDSTONE_TM_DATA_1, SPECIES_HOUNDSTONE_TM_DATA_2, SPECIES_HOUNDSTONE_TM_DATA_3
    mondexentry SPECIES_HOUNDSTONE, "A lovingly mourned Pokémon was reborn as Houndstone. It doesn’t like anyone touching the protuberance atop its head."
    mondexclassification SPECIES_HOUNDSTONE, "Ghost Dog Pokémon"
    mondexheight SPECIES_HOUNDSTONE, "6’07”"
    mondexweight SPECIES_HOUNDSTONE, "33.1 lbs."


mondata SPECIES_FLAMIGO, "Flamigo"
    basestats 82, 115, 74, 90, 75, 64
    types TYPE_FLYING, TYPE_FIGHTING
    catchrate 100
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_SCRAPPY, ABILITY_TANGLED_FEET
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_FLAMIGO_TM_DATA_0, SPECIES_FLAMIGO_TM_DATA_1, SPECIES_FLAMIGO_TM_DATA_2, SPECIES_FLAMIGO_TM_DATA_3
    mondexentry SPECIES_FLAMIGO, "Thanks to a behavior of theirs known as “synchronizing,” an entire flock of these Pokémon can attack simultaneously in perfect harmony."
    mondexclassification SPECIES_FLAMIGO, "Synchronize Pokémon"
    mondexheight SPECIES_FLAMIGO, "5’03”"
    mondexweight SPECIES_FLAMIGO, "81.6 lbs."


mondata SPECIES_CETODDLE, "Cetoddle"
    basestats 108, 68, 45, 43, 30, 40
    types TYPE_ICE, TYPE_ICE
    catchrate 150
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_THICK_FAT, ABILITY_SNOW_CLOAK
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_CETODDLE_TM_DATA_0, SPECIES_CETODDLE_TM_DATA_1, SPECIES_CETODDLE_TM_DATA_2, SPECIES_CETODDLE_TM_DATA_3
    mondexentry SPECIES_CETODDLE, "It lives in frigid regions in pods of five or so individuals. It loves the minerals found in snow and ice."
    mondexclassification SPECIES_CETODDLE, "Terra Whale Pokémon"
    mondexheight SPECIES_CETODDLE, "3’11”"
    mondexweight SPECIES_CETODDLE, "99.2 lbs."


mondata SPECIES_CETITAN, "Cetitan"
    basestats 170, 113, 65, 73, 45, 55
    types TYPE_ICE, TYPE_ICE
    catchrate 50
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_THICK_FAT, ABILITY_SLUSH_RUSH
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_CETITAN_TM_DATA_0, SPECIES_CETITAN_TM_DATA_1, SPECIES_CETITAN_TM_DATA_2, SPECIES_CETITAN_TM_DATA_3
    mondexentry SPECIES_CETITAN, "Ice energy builds up in the horn on its upper jaw, causing the horn to reach cryogenic temperatures that freeze its surroundings."
    mondexclassification SPECIES_CETITAN, "Terra Whale Pokémon"
    mondexheight SPECIES_CETITAN, "14’09”"
    mondexweight SPECIES_CETITAN, "1543.2 lbs."


mondata SPECIES_VELUZA, "Veluza"
    basestats 90, 102, 73, 70, 78, 65
    types TYPE_WATER, TYPE_PSYCHIC
    catchrate 100
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_MOLD_BREAKER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_VELUZA_TM_DATA_0, SPECIES_VELUZA_TM_DATA_1, SPECIES_VELUZA_TM_DATA_2, SPECIES_VELUZA_TM_DATA_3
    mondexentry SPECIES_VELUZA, "Veluza has excellent regenerative capabilities. It sheds spare flesh from its body to boost its agility, then charges at its prey."
    mondexclassification SPECIES_VELUZA, "Jettison Pokémon"
    mondexheight SPECIES_VELUZA, "8’02”"
    mondexweight SPECIES_VELUZA, "198.4 lbs."


mondata SPECIES_DONDOZO, "Dondozo"
    basestats 150, 100, 115, 35, 65, 65
    types TYPE_WATER, TYPE_WATER
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_UNAWARE, ABILITY_OBLIVIOUS
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_DONDOZO_TM_DATA_0, SPECIES_DONDOZO_TM_DATA_1, SPECIES_DONDOZO_TM_DATA_2, SPECIES_DONDOZO_TM_DATA_3
    mondexentry SPECIES_DONDOZO, "It treats Tatsugiri like its boss and follows it loyally. Though powerful, Dondozo is apparently not very smart."
    mondexclassification SPECIES_DONDOZO, "Big Catfish Pokémon"
    mondexheight SPECIES_DONDOZO, "39’04”"
    mondexweight SPECIES_DONDOZO, "485.0 lbs."


mondata SPECIES_TATSUGIRI, "Tatsugiri"
    basestats 68, 50, 60, 82, 120, 95
    types TYPE_DRAGON, TYPE_WATER
    catchrate 100
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 35
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_COMMANDER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_TATSUGIRI_TM_DATA_0, SPECIES_TATSUGIRI_TM_DATA_1, SPECIES_TATSUGIRI_TM_DATA_2, SPECIES_TATSUGIRI_TM_DATA_3
    mondexentry SPECIES_TATSUGIRI, "Tatsugiri is an extremely cunning Pokémon. It feigns weakness to lure in prey, then orders its partner to attack."
    mondexclassification SPECIES_TATSUGIRI, "Mimicry Pokémon"
    mondexheight SPECIES_TATSUGIRI, "1’00”"
    mondexweight SPECIES_TATSUGIRI, "17.6 lbs."


mondata SPECIES_ANNIHILAPE, "Annihilape"
    basestats 110, 115, 80, 90, 50, 90
    types TYPE_FIGHTING, TYPE_GHOST
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_VITAL_SPIRIT, ABILITY_INNER_FOCUS
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_ANNIHILAPE_TM_DATA_0, SPECIES_ANNIHILAPE_TM_DATA_1, SPECIES_ANNIHILAPE_TM_DATA_2, SPECIES_ANNIHILAPE_TM_DATA_3
    mondexentry SPECIES_ANNIHILAPE, "It imbues its fists with the power of the rage that it kept hidden in its heart. Opponents struck by these imbued fists will be shattered to their core."
    mondexclassification SPECIES_ANNIHILAPE, "Rage Monkey Pokémon"
    mondexheight SPECIES_ANNIHILAPE, "3’11”"
    mondexweight SPECIES_ANNIHILAPE, "123.5 lbs."


mondata SPECIES_CLODSIRE, "Clodsire"
    basestats 130, 75, 60, 20, 45, 100
    types TYPE_POISON, TYPE_GROUND
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_POISON_POINT, ABILITY_WATER_ABSORB
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_CLODSIRE_TM_DATA_0, SPECIES_CLODSIRE_TM_DATA_1, SPECIES_CLODSIRE_TM_DATA_2, SPECIES_CLODSIRE_TM_DATA_3
    mondexentry SPECIES_CLODSIRE, "It lives at the bottom of ponds and swamps. It will carry Wooper on its back and ferry them across water from one shore to the other."
    mondexclassification SPECIES_CLODSIRE, "Spiny Fish Pokémon"
    mondexheight SPECIES_CLODSIRE, "5’11”"
    mondexweight SPECIES_CLODSIRE, "491.6 lbs."


mondata SPECIES_FARIGIRAF, "Farigiraf"
    basestats 120, 90, 70, 60, 110, 70
    types TYPE_NORMAL, TYPE_PSYCHIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CUD_CHEW, ABILITY_ARMOR_TAIL
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_FARIGIRAF_TM_DATA_0, SPECIES_FARIGIRAF_TM_DATA_1, SPECIES_FARIGIRAF_TM_DATA_2, SPECIES_FARIGIRAF_TM_DATA_3
    mondexentry SPECIES_FARIGIRAF, "The hardened head from the tail protects the head of the main body as Farigiraf whips its long neck around to headbutt enemies."
    mondexclassification SPECIES_FARIGIRAF, "Long Neck Pokémon"
    mondexheight SPECIES_FARIGIRAF, "10’06”"
    mondexweight SPECIES_FARIGIRAF, "352.7 lbs."


mondata SPECIES_DUDUNSPARCE, "Dudunspars"
    basestats 125, 100, 80, 55, 85, 75
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SERENE_GRACE, ABILITY_RUN_AWAY
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_DUDUNSPARCE_TM_DATA_0, SPECIES_DUDUNSPARCE_TM_DATA_1, SPECIES_DUDUNSPARCE_TM_DATA_2, SPECIES_DUDUNSPARCE_TM_DATA_3
    mondexentry SPECIES_DUDUNSPARCE, "It drives enemies out of its nest by sucking in enough air to fill its long, narrow lungs, then releasing the air in an intense blast."
    mondexclassification SPECIES_DUDUNSPARCE, "Land Snake Pokémon"
    mondexheight SPECIES_DUDUNSPARCE, "11’10”"
    mondexweight SPECIES_DUDUNSPARCE, "86.4 lbs."


mondata SPECIES_KINGAMBIT, "Kingambit"
    basestats 100, 135, 120, 50, 60, 85
    types TYPE_DARK, TYPE_STEEL
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_DEFIANT, ABILITY_SUPREME_OVERLORD
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_KINGAMBIT_TM_DATA_0, SPECIES_KINGAMBIT_TM_DATA_1, SPECIES_KINGAMBIT_TM_DATA_2, SPECIES_KINGAMBIT_TM_DATA_3
    mondexentry SPECIES_KINGAMBIT, "Though it commands a massive army in battle, it’s not skilled at devising complex strategies. It just uses brute strength to keep pushing."
    mondexclassification SPECIES_KINGAMBIT, "Big Blade Pokémon"
    mondexheight SPECIES_KINGAMBIT, "6’07”"
    mondexweight SPECIES_KINGAMBIT, "264.6 lbs."


mondata SPECIES_GREAT_TUSK, "Great Tusk"
    basestats 115, 131, 131, 87, 53, 53
    types TYPE_GROUND, TYPE_FIGHTING
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PROTOSYNTHESIS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GREAT_TUSK_TM_DATA_0, SPECIES_GREAT_TUSK_TM_DATA_1, SPECIES_GREAT_TUSK_TM_DATA_2, SPECIES_GREAT_TUSK_TM_DATA_3
    mondexentry SPECIES_GREAT_TUSK, "This creature resembles a mysterious Pokémon that, according to a paranormal magazine, has lived since ancient times."
    mondexclassification SPECIES_GREAT_TUSK, "Paradox Pokémon"
    mondexheight SPECIES_GREAT_TUSK, "7’03”"
    mondexweight SPECIES_GREAT_TUSK, "705.5 lbs."


mondata SPECIES_SCREAM_TAIL, "ScreamTail"
    basestats 115, 65, 99, 111, 65, 115
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, TYPE_PSYCHIC
    catchrate 50
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PROTOSYNTHESIS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_SCREAM_TAIL_TM_DATA_0, SPECIES_SCREAM_TAIL_TM_DATA_1, SPECIES_SCREAM_TAIL_TM_DATA_2, SPECIES_SCREAM_TAIL_TM_DATA_3
    mondexentry SPECIES_SCREAM_TAIL, "It resembles a mysterious Pokémon described in a paranormal magazine as a Jigglypuff from one billion years ago."
    mondexclassification SPECIES_SCREAM_TAIL, "Paradox Pokémon"
    mondexheight SPECIES_SCREAM_TAIL, "3’11”"
    mondexweight SPECIES_SCREAM_TAIL, "17.6 lbs."


mondata SPECIES_BRUTE_BONNET, "BruteBonet"
    basestats 111, 127, 99, 55, 79, 99
    types TYPE_GRASS, TYPE_DARK
    catchrate 50
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PROTOSYNTHESIS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_BRUTE_BONNET_TM_DATA_0, SPECIES_BRUTE_BONNET_TM_DATA_1, SPECIES_BRUTE_BONNET_TM_DATA_2, SPECIES_BRUTE_BONNET_TM_DATA_3
    mondexentry SPECIES_BRUTE_BONNET, "It bears a slight resemblance to a Pokémon described in a dubious magazine as a cross between a dinosaur and a mushroom."
    mondexclassification SPECIES_BRUTE_BONNET, "Paradox Pokémon"
    mondexheight SPECIES_BRUTE_BONNET, "3’11”"
    mondexweight SPECIES_BRUTE_BONNET, "46.3 lbs."


mondata SPECIES_FLUTTER_MANE, "FluttrMane"
    basestats 55, 55, 55, 135, 135, 135
    types TYPE_GHOST, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_GHOST
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 1, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PROTOSYNTHESIS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_FLUTTER_MANE_TM_DATA_0, SPECIES_FLUTTER_MANE_TM_DATA_1, SPECIES_FLUTTER_MANE_TM_DATA_2, SPECIES_FLUTTER_MANE_TM_DATA_3
    mondexentry SPECIES_FLUTTER_MANE, "It has similar features to a ghostly pterosaur that was covered in a paranormal magazine, but the two have little else in common."
    mondexclassification SPECIES_FLUTTER_MANE, "Paradox Pokémon"
    mondexheight SPECIES_FLUTTER_MANE, "4’07”"
    mondexweight SPECIES_FLUTTER_MANE, "8.8 lbs."


mondata SPECIES_SLITHER_WING, "SlithrWing"
    basestats 85, 135, 79, 81, 85, 105
    types TYPE_BUG, TYPE_FIGHTING
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PROTOSYNTHESIS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_SLITHER_WING_TM_DATA_0, SPECIES_SLITHER_WING_TM_DATA_1, SPECIES_SLITHER_WING_TM_DATA_2, SPECIES_SLITHER_WING_TM_DATA_3
    mondexentry SPECIES_SLITHER_WING, "This Pokémon somewhat resembles an ancient form of Volcarona that was introduced in a dubious magazine."
    mondexclassification SPECIES_SLITHER_WING, "Paradox Pokémon"
    mondexheight SPECIES_SLITHER_WING, "10’06”"
    mondexweight SPECIES_SLITHER_WING, "202.8 lbs."


mondata SPECIES_SANDY_SHOCKS, "SandyShock"
    basestats 85, 81, 97, 101, 121, 85
    types TYPE_ELECTRIC, TYPE_GROUND
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PROTOSYNTHESIS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_SANDY_SHOCKS_TM_DATA_0, SPECIES_SANDY_SHOCKS_TM_DATA_1, SPECIES_SANDY_SHOCKS_TM_DATA_2, SPECIES_SANDY_SHOCKS_TM_DATA_3
    mondexentry SPECIES_SANDY_SHOCKS, "It slightly resembles a Magneton that lived for 10,000 years and was featured in an article in a paranormal magazine."
    mondexclassification SPECIES_SANDY_SHOCKS, "Paradox Pokémon"
    mondexheight SPECIES_SANDY_SHOCKS, "7’07”"
    mondexweight SPECIES_SANDY_SHOCKS, "132.3 lbs."


mondata SPECIES_IRON_TREADS, "IronTreads"
    basestats 90, 112, 120, 106, 72, 70
    types TYPE_GROUND, TYPE_STEEL
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_QUARK_DRIVE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_IRON_TREADS_TM_DATA_0, SPECIES_IRON_TREADS_TM_DATA_1, SPECIES_IRON_TREADS_TM_DATA_2, SPECIES_IRON_TREADS_TM_DATA_3
    mondexentry SPECIES_IRON_TREADS, "Sightings of this Pokémon have occurred in recent years. It resembles a mysterious object described in an old expedition journal."
    mondexclassification SPECIES_IRON_TREADS, "Paradox Pokémon"
    mondexheight SPECIES_IRON_TREADS, "2’11”"
    mondexweight SPECIES_IRON_TREADS, "529.1 lbs."


mondata SPECIES_IRON_BUNDLE, "IronBundle"
    basestats 56, 80, 114, 136, 124, 60
    types TYPE_ICE, TYPE_WATER
    catchrate 50
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_QUARK_DRIVE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_IRON_BUNDLE_TM_DATA_0, SPECIES_IRON_BUNDLE_TM_DATA_1, SPECIES_IRON_BUNDLE_TM_DATA_2, SPECIES_IRON_BUNDLE_TM_DATA_3
    mondexentry SPECIES_IRON_BUNDLE, "It resembles a mysterious object mentioned in an old book. There are only two reported sightings of this Pokémon."
    mondexclassification SPECIES_IRON_BUNDLE, "Paradox Pokémon"
    mondexheight SPECIES_IRON_BUNDLE, "2’00”"
    mondexweight SPECIES_IRON_BUNDLE, "24.3 lbs."


mondata SPECIES_IRON_HANDS, "Iron Hands"
    basestats 154, 140, 108, 50, 50, 68
    types TYPE_FIGHTING, TYPE_ELECTRIC
    catchrate 50
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_QUARK_DRIVE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_IRON_HANDS_TM_DATA_0, SPECIES_IRON_HANDS_TM_DATA_1, SPECIES_IRON_HANDS_TM_DATA_2, SPECIES_IRON_HANDS_TM_DATA_3
    mondexentry SPECIES_IRON_HANDS, "This Pokémon shares many similarities with Iron Hands, an object mentioned in a certain expedition journal."
    mondexclassification SPECIES_IRON_HANDS, "Paradox Pokémon"
    mondexheight SPECIES_IRON_HANDS, "5’11”"
    mondexweight SPECIES_IRON_HANDS, "839.3 lbs."


mondata SPECIES_IRON_JUGULIS, "Iron Neck"
    basestats 94, 80, 86, 108, 122, 80
    types TYPE_DARK, TYPE_FLYING
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_QUARK_DRIVE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_IRON_JUGULIS_TM_DATA_0, SPECIES_IRON_JUGULIS_TM_DATA_1, SPECIES_IRON_JUGULIS_TM_DATA_2, SPECIES_IRON_JUGULIS_TM_DATA_3
    mondexentry SPECIES_IRON_JUGULIS, "It’s possible that Iron Jugulis, an object described in an old book, may actually be this Pokémon."
    mondexclassification SPECIES_IRON_JUGULIS, "Paradox Pokémon"
    mondexheight SPECIES_IRON_JUGULIS, "4’03”"
    mondexweight SPECIES_IRON_JUGULIS, "244.7 lbs."


mondata SPECIES_IRON_MOTH, "Iron Moth"
    basestats 80, 70, 60, 110, 140, 110
    types TYPE_FIRE, TYPE_POISON
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_QUARK_DRIVE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_IRON_MOTH_TM_DATA_0, SPECIES_IRON_MOTH_TM_DATA_1, SPECIES_IRON_MOTH_TM_DATA_2, SPECIES_IRON_MOTH_TM_DATA_3
    mondexentry SPECIES_IRON_MOTH, "No records exist of this species being caught. Data is lacking, but the Pokémon’s traits match up with an object described in an old book."
    mondexclassification SPECIES_IRON_MOTH, "Paradox Pokémon"
    mondexheight SPECIES_IRON_MOTH, "3’11”"
    mondexweight SPECIES_IRON_MOTH, "79.4 lbs."


mondata SPECIES_IRON_THORNS, "Iron Thorn"
    basestats 100, 134, 110, 72, 70, 84
    types TYPE_ROCK, TYPE_ELECTRIC
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_QUARK_DRIVE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_IRON_THORNS_TM_DATA_0, SPECIES_IRON_THORNS_TM_DATA_1, SPECIES_IRON_THORNS_TM_DATA_2, SPECIES_IRON_THORNS_TM_DATA_3
    mondexentry SPECIES_IRON_THORNS, "Some of its notable features match those of an object named within a certain expedition journal as Iron Thorns."
    mondexclassification SPECIES_IRON_THORNS, "Paradox Pokémon"
    mondexheight SPECIES_IRON_THORNS, "5’03”"
    mondexweight SPECIES_IRON_THORNS, "668.0 lbs."


mondata SPECIES_FRIGIBAX, "Frigibax"
    basestats 65, 75, 45, 55, 35, 45
    types TYPE_DRAGON, TYPE_ICE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_MINERAL
    abilities ABILITY_THERMAL_EXCHANGE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_FRIGIBAX_TM_DATA_0, SPECIES_FRIGIBAX_TM_DATA_1, SPECIES_FRIGIBAX_TM_DATA_2, SPECIES_FRIGIBAX_TM_DATA_3
    mondexentry SPECIES_FRIGIBAX, "This Pokémon lives in forests and craggy areas. Using the power of its dorsal fin, it cools the inside of its nest like a refrigerator."
    mondexclassification SPECIES_FRIGIBAX, "Ice Fin Pokémon"
    mondexheight SPECIES_FRIGIBAX, "1’08”"
    mondexweight SPECIES_FRIGIBAX, "37.5 lbs."


mondata SPECIES_ARCTIBAX, "Arctibax"
    basestats 90, 95, 66, 62, 45, 65
    types TYPE_DRAGON, TYPE_ICE
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_MINERAL
    abilities ABILITY_THERMAL_EXCHANGE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_ARCTIBAX_TM_DATA_0, SPECIES_ARCTIBAX_TM_DATA_1, SPECIES_ARCTIBAX_TM_DATA_2, SPECIES_ARCTIBAX_TM_DATA_3
    mondexentry SPECIES_ARCTIBAX, "It attacks with the blade of its frozen dorsal fin by doing a front flip in the air. Arctibax’s strong back and legs allow it to pull off this technique."
    mondexclassification SPECIES_ARCTIBAX, "Ice Fin Pokémon"
    mondexheight SPECIES_ARCTIBAX, "2’07”"
    mondexweight SPECIES_ARCTIBAX, "66.1 lbs."


mondata SPECIES_BAXCALIBUR, "Baxcalibur"
    basestats 115, 145, 92, 87, 75, 86
    types TYPE_DRAGON, TYPE_ICE
    catchrate 10
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_MINERAL
    abilities ABILITY_THERMAL_EXCHANGE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_BAXCALIBUR_TM_DATA_0, SPECIES_BAXCALIBUR_TM_DATA_1, SPECIES_BAXCALIBUR_TM_DATA_2, SPECIES_BAXCALIBUR_TM_DATA_3
    mondexentry SPECIES_BAXCALIBUR, "It launches itself into battle by flipping upside down and spewing frigid air from its mouth. It finishes opponents off with its dorsal blade."
    mondexclassification SPECIES_BAXCALIBUR, "Ice Dragon Pokémon"
    mondexheight SPECIES_BAXCALIBUR, "6’11”"
    mondexweight SPECIES_BAXCALIBUR, "463.0 lbs."


mondata SPECIES_GIMMIGHOUL, "Gimmighoul"
    basestats 45, 30, 70, 10, 75, 70
    types TYPE_GHOST, TYPE_GHOST
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_RATTLED, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GIMMIGHOUL_TM_DATA_0, SPECIES_GIMMIGHOUL_TM_DATA_1, SPECIES_GIMMIGHOUL_TM_DATA_2, SPECIES_GIMMIGHOUL_TM_DATA_3
    mondexentry SPECIES_GIMMIGHOUL, "It lives inside an old treasure chest. Sometimes it gets left in shop corners since no one realizes it’s actually a Pokémon."
    mondexclassification SPECIES_GIMMIGHOUL, "Coin Chest Pokémon"
    mondexheight SPECIES_GIMMIGHOUL, "1’00”"
    mondexweight SPECIES_GIMMIGHOUL, "11.0 lbs."


mondata SPECIES_GHOLDENGO, "Gholdengo"
    basestats 87, 60, 95, 84, 133, 91
    types TYPE_STEEL, TYPE_GHOST
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_GOOD_AS_GOLD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_GHOLDENGO_TM_DATA_0, SPECIES_GHOLDENGO_TM_DATA_1, SPECIES_GHOLDENGO_TM_DATA_2, SPECIES_GHOLDENGO_TM_DATA_3
    mondexentry SPECIES_GHOLDENGO, "It has a sturdy body made up of stacked coins. Gholdengo overwhelms its enemies by firing coin after coin at them in quick succession."
    mondexclassification SPECIES_GHOLDENGO, "Coin Entity Pokémon"
    mondexheight SPECIES_GHOLDENGO, "3’11”"
    mondexweight SPECIES_GHOLDENGO, "66.1 lbs."


mondata SPECIES_WO_CHIEN, "Wo-Chien"
    basestats 85, 85, 100, 70, 95, 135
    types TYPE_DARK, TYPE_GRASS
    catchrate 6
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_TABLETS_OF_RUIN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_WO_CHIEN_TM_DATA_0, SPECIES_WO_CHIEN_TM_DATA_1, SPECIES_WO_CHIEN_TM_DATA_2, SPECIES_WO_CHIEN_TM_DATA_3
    mondexentry SPECIES_WO_CHIEN, "It drains the life-force from vegetation, causing nearby forests to instantly wither and fields to turn barren."
    mondexclassification SPECIES_WO_CHIEN, "Ruinous Pokémon"
    mondexheight SPECIES_WO_CHIEN, "4’11”"
    mondexweight SPECIES_WO_CHIEN, "163.6 lbs."


mondata SPECIES_CHIEN_PAO, "Chien-Pao"
    basestats 80, 120, 80, 135, 90, 65
    types TYPE_DARK, TYPE_ICE
    catchrate 6
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_SWORD_OF_RUIN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_CHIEN_PAO_TM_DATA_0, SPECIES_CHIEN_PAO_TM_DATA_1, SPECIES_CHIEN_PAO_TM_DATA_2, SPECIES_CHIEN_PAO_TM_DATA_3
    mondexentry SPECIES_CHIEN_PAO, "The hatred of those who perished by the sword long ago has clad itself in snow and become a Pokémon."
    mondexclassification SPECIES_CHIEN_PAO, "Ruinous Pokémon"
    mondexheight SPECIES_CHIEN_PAO, "6’03”"
    mondexweight SPECIES_CHIEN_PAO, "335.5 lbs."


mondata SPECIES_TING_LU, "Ting-Lu"
    basestats 155, 110, 125, 45, 55, 80
    types TYPE_DARK, TYPE_GROUND
    catchrate 6
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_VESSEL_OF_RUIN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_TING_LU_TM_DATA_0, SPECIES_TING_LU_TM_DATA_1, SPECIES_TING_LU_TM_DATA_2, SPECIES_TING_LU_TM_DATA_3
    mondexentry SPECIES_TING_LU, "It slowly brings its exceedingly heavy head down upon the ground, splitting the earth open with huge fissures that run over 160 feet deep."
    mondexclassification SPECIES_TING_LU, "Ruinous Pokémon"
    mondexheight SPECIES_TING_LU, "8’10”"
    mondexweight SPECIES_TING_LU, "1542.6 lbs."


mondata SPECIES_CHI_YU, "Chi-Yu"
    basestats 55, 80, 80, 100, 135, 120
    types TYPE_DARK, TYPE_FIRE
    catchrate 6
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BEADS_OF_RUIN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CHI_YU_TM_DATA_0, SPECIES_CHI_YU_TM_DATA_1, SPECIES_CHI_YU_TM_DATA_2, SPECIES_CHI_YU_TM_DATA_3
    mondexentry SPECIES_CHI_YU, "The envy accumulated within curved beads that sparked multiple conflicts has clad itself in fire and become a Pokémon."
    mondexclassification SPECIES_CHI_YU, "Ruinous Pokémon"
    mondexheight SPECIES_CHI_YU, "1’04”"
    mondexweight SPECIES_CHI_YU, "10.8 lbs."


mondata SPECIES_ROARING_MOON, "Roar Moon"
    basestats 105, 139, 71, 119, 55, 101
    types TYPE_DRAGON, TYPE_DARK
    catchrate 10
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PROTOSYNTHESIS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_ROARING_MOON_TM_DATA_0, SPECIES_ROARING_MOON_TM_DATA_1, SPECIES_ROARING_MOON_TM_DATA_2, SPECIES_ROARING_MOON_TM_DATA_3
    mondexentry SPECIES_ROARING_MOON, "According to an article in a dubious magazine, this Pokémon has some connection to a phenomenon that occurs in a certain region."
    mondexclassification SPECIES_ROARING_MOON, "Paradox Pokémon"
    mondexheight SPECIES_ROARING_MOON, "6’07”"
    mondexweight SPECIES_ROARING_MOON, "837.8 lbs."


mondata SPECIES_IRON_VALIANT, "Iron Valor"
    basestats 74, 130, 90, 116, 120, 60
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, TYPE_FIGHTING
    catchrate 10
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_QUARK_DRIVE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_IRON_VALIANT_TM_DATA_0, SPECIES_IRON_VALIANT_TM_DATA_1, SPECIES_IRON_VALIANT_TM_DATA_2, SPECIES_IRON_VALIANT_TM_DATA_3
    mondexentry SPECIES_IRON_VALIANT, "It’s possible that this is the object listed as Iron Valiant in a certain expedition journal."
    mondexclassification SPECIES_IRON_VALIANT, "Paradox Pokémon"
    mondexheight SPECIES_IRON_VALIANT, "4’07”"
    mondexweight SPECIES_IRON_VALIANT, "77.2 lbs."


mondata SPECIES_KORAIDON, "Koraidon"
    basestats 100, 135, 115, 135, 85, 100
    types TYPE_FIGHTING, TYPE_DRAGON
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_ORICHALCUM_PULSE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_KORAIDON_TM_DATA_0, SPECIES_KORAIDON_TM_DATA_1, SPECIES_KORAIDON_TM_DATA_2, SPECIES_KORAIDON_TM_DATA_3
    mondexentry SPECIES_KORAIDON, "This Pokémon resembles Cyclizar, but it is far burlier and more ferocious. Nothing is known about its ecology or other features."
    mondexclassification SPECIES_KORAIDON, "Paradox Pokémon"
    mondexheight SPECIES_KORAIDON, "8’02”"
    mondexweight SPECIES_KORAIDON, "668.0 lbs."


mondata SPECIES_MIRAIDON, "Miraidon"
    basestats 100, 85, 100, 135, 135, 115
    types TYPE_ELECTRIC, TYPE_DRAGON
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_HADRON_ENGINE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_MIRAIDON_TM_DATA_0, SPECIES_MIRAIDON_TM_DATA_1, SPECIES_MIRAIDON_TM_DATA_2, SPECIES_MIRAIDON_TM_DATA_3
    mondexentry SPECIES_MIRAIDON, "This seems to be the Iron Serpent mentioned in an old book. The Iron Serpent is said to have turned the land to ash with its lightning."
    mondexclassification SPECIES_MIRAIDON, "Paradox Pokémon"
    mondexheight SPECIES_MIRAIDON, "11’06”"
    mondexweight SPECIES_MIRAIDON, "529.1 lbs."


mondata SPECIES_WALKING_WAKE, "Walk Wake"
    basestats 99, 83, 91, 109, 125, 83
    types TYPE_WATER, TYPE_DRAGON
    catchrate 5
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PROTOSYNTHESIS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_WALKING_WAKE_TM_DATA_0, SPECIES_WALKING_WAKE_TM_DATA_1, SPECIES_WALKING_WAKE_TM_DATA_2, SPECIES_WALKING_WAKE_TM_DATA_3
    mondexentry SPECIES_WALKING_WAKE, "This seems to be the Iron Serpent mentioned in an old book. The Iron Serpent is said to have turned the land to ash with its lightning."
    mondexclassification SPECIES_WALKING_WAKE, "Paradox Pokémon"
    mondexheight SPECIES_WALKING_WAKE, "11’06”"
    mondexweight SPECIES_WALKING_WAKE, "617.3 lbs."


mondata SPECIES_IRON_LEAVES, "Iron Leaf"
    basestats 90, 130, 88, 104, 70, 108
    types TYPE_GRASS, TYPE_PSYCHIC
    catchrate 5
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_QUARK_DRIVE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_IRON_LEAVES_TM_DATA_0, SPECIES_IRON_LEAVES_TM_DATA_1, SPECIES_IRON_LEAVES_TM_DATA_2, SPECIES_IRON_LEAVES_TM_DATA_3
    mondexentry SPECIES_IRON_LEAVES, "This seems to be the Iron Serpent mentioned in an old book. The Iron Serpent is said to have turned the land to ash with its lightning."
    mondexclassification SPECIES_IRON_LEAVES, "Paradox Pokémon"
    mondexheight SPECIES_IRON_LEAVES, "4’11”"
    mondexweight SPECIES_IRON_LEAVES, "275.6 lbs."


mondata SPECIES_DIPPLIN, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_DIPPLIN_TM_DATA_0, SPECIES_DIPPLIN_TM_DATA_1, SPECIES_DIPPLIN_TM_DATA_2, SPECIES_DIPPLIN_TM_DATA_3
    mondexentry SPECIES_DIPPLIN, ""
    mondexclassification SPECIES_DIPPLIN, "????? Pokémon"
    mondexheight SPECIES_DIPPLIN, "???’??”"
    mondexweight SPECIES_DIPPLIN, "????.? lbs."


mondata SPECIES_ARCHALUDON, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_ARCHALUDON_TM_DATA_0, SPECIES_ARCHALUDON_TM_DATA_1, SPECIES_ARCHALUDON_TM_DATA_2, SPECIES_ARCHALUDON_TM_DATA_3
    mondexentry SPECIES_ARCHALUDON, ""
    mondexclassification SPECIES_ARCHALUDON, "????? Pokémon"
    mondexheight SPECIES_ARCHALUDON, "???’??”"
    mondexweight SPECIES_ARCHALUDON, "????.? lbs."


mondata SPECIES_RAGING_BOLT, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_RAGING_BOLT_TM_DATA_0, SPECIES_RAGING_BOLT_TM_DATA_1, SPECIES_RAGING_BOLT_TM_DATA_2, SPECIES_RAGING_BOLT_TM_DATA_3
    mondexentry SPECIES_RAGING_BOLT, ""
    mondexclassification SPECIES_RAGING_BOLT, "????? Pokémon"
    mondexheight SPECIES_RAGING_BOLT, "???’??”"
    mondexweight SPECIES_RAGING_BOLT, "????.? lbs."


mondata SPECIES_IRON_CROWN, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_IRON_CROWN_TM_DATA_0, SPECIES_IRON_CROWN_TM_DATA_1, SPECIES_IRON_CROWN_TM_DATA_2, SPECIES_IRON_CROWN_TM_DATA_3
    mondexentry SPECIES_IRON_CROWN, ""
    mondexclassification SPECIES_IRON_CROWN, "????? Pokémon"
    mondexheight SPECIES_IRON_CROWN, "???’??”"
    mondexweight SPECIES_IRON_CROWN, "????.? lbs."


mondata SPECIES_OGERPON, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_OGERPON_TM_DATA_0, SPECIES_OGERPON_TM_DATA_1, SPECIES_OGERPON_TM_DATA_2, SPECIES_OGERPON_TM_DATA_3
    mondexentry SPECIES_OGERPON, ""
    mondexclassification SPECIES_OGERPON, "????? Pokémon"
    mondexheight SPECIES_OGERPON, "???’??”"
    mondexweight SPECIES_OGERPON, "????.? lbs."


mondata SPECIES_OKIDOGI, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_OKIDOGI_TM_DATA_0, SPECIES_OKIDOGI_TM_DATA_1, SPECIES_OKIDOGI_TM_DATA_2, SPECIES_OKIDOGI_TM_DATA_3
    mondexentry SPECIES_OKIDOGI, ""
    mondexclassification SPECIES_OKIDOGI, "????? Pokémon"
    mondexheight SPECIES_OKIDOGI, "???’??”"
    mondexweight SPECIES_OKIDOGI, "????.? lbs."


mondata SPECIES_MUNKIDORI, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_MUNKIDORI_TM_DATA_0, SPECIES_MUNKIDORI_TM_DATA_1, SPECIES_MUNKIDORI_TM_DATA_2, SPECIES_MUNKIDORI_TM_DATA_3
    mondexentry SPECIES_MUNKIDORI, ""
    mondexclassification SPECIES_MUNKIDORI, "????? Pokémon"
    mondexheight SPECIES_MUNKIDORI, "???’??”"
    mondexweight SPECIES_MUNKIDORI, "????.? lbs."


mondata SPECIES_FEZANDIPITI, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_FEZANDIPITI_TM_DATA_0, SPECIES_FEZANDIPITI_TM_DATA_1, SPECIES_FEZANDIPITI_TM_DATA_2, SPECIES_FEZANDIPITI_TM_DATA_3
    mondexentry SPECIES_FEZANDIPITI, ""
    mondexclassification SPECIES_FEZANDIPITI, "????? Pokémon"
    mondexheight SPECIES_FEZANDIPITI, "???’??”"
    mondexweight SPECIES_FEZANDIPITI, "????.? lbs."


mondata SPECIES_TERAPAGOS, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_TERAPAGOS_TM_DATA_0, SPECIES_TERAPAGOS_TM_DATA_1, SPECIES_TERAPAGOS_TM_DATA_2, SPECIES_TERAPAGOS_TM_DATA_3
    mondexentry SPECIES_TERAPAGOS, ""
    mondexclassification SPECIES_TERAPAGOS, "????? Pokémon"
    mondexheight SPECIES_TERAPAGOS, "???’??”"
    mondexweight SPECIES_TERAPAGOS, "????.? lbs."


mondata SPECIES_MEGA_VENUSAUR, "Venusaur"
    basestats 80,100,123,80,122,120
    types TYPE_GRASS, TYPE_POISON
    catchrate 195
    baseexp 208
    evyields 0,0,0,0,2,1
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_THICK_FAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
	mondexentry SPECIES_VENUSAUR, ""
	mondexclassification SPECIES_VENUSAUR, ""
	mondexheight SPECIES_VENUSAUR, ""
	mondexweight SPECIES_VENUSAUR, ""

mondata SPECIES_MEGA_CHARIZARD_X, "Charizard"
    basestats 78, 130, 111, 100, 130, 85
    types TYPE_FIRE, TYPE_DRAGON
    catchrate 195
    baseexp 209
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
	mondexentry SPECIES_CHARIZARD, ""
	mondexclassification SPECIES_CHARIZARD, ""
	mondexheight SPECIES_CHARIZARD, ""
	mondexweight SPECIES_CHARIZARD, ""

mondata SPECIES_MEGA_CHARIZARD_Y, "Charizard"
    basestats 78, 104, 78, 100, 159, 115
    types TYPE_FIRE, TYPE_FLYING
    catchrate 195
    baseexp 209
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_DROUGHT, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
	mondexentry SPECIES_CHARIZARD, ""
	mondexclassification SPECIES_CHARIZARD, ""
	mondexheight SPECIES_CHARIZARD, ""
	mondexweight SPECIES_CHARIZARD, ""

mondata SPECIES_MEGA_BLASTOISE, "Blastoise"
    basestats 79, 103, 120, 78, 135, 115
    types TYPE_WATER, TYPE_WATER
    catchrate 195
    baseexp 210
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_SWIFT_SWIM, ABILITY_NONE //ABILITY_MEGALAUNCHER, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_BEEDRILL, "Beedrill"
    basestats 65, 150, 40, 145, 15, 80
    types TYPE_BUG, TYPE_POISON
    catchrate 195
    baseexp 159
    evyields 0, 2, 0, 0, 0, 1
    items ITEM_NONE, ITEM_POISON_BARB
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_ADAPTABILITY, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_PIDGEOT, "Pidgeot"
    basestats 83, 80, 80, 121, 135, 80
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 195
    baseexp 172
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_NO_GUARD, ABILITY_NO_GUARD
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_ALAKAZAM, "Alakazam"
    basestats 55, 50, 65, 150, 175, 105
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 195
    baseexp 186
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_TWISTED_SPOON
    genderratio 63
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_TRACE, ABILITY_TRACE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_SLOWBRO, "Slowbro"
    basestats 95, 75, 180, 30, 130, 80
    types TYPE_WATER, TYPE_PSYCHIC
    catchrate 195
    baseexp 164
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_SHELL_ARMOR, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_GENGAR, "Gengar"
    basestats 60, 65, 80, 130, 170, 95
    types TYPE_GHOST, TYPE_POISON
    catchrate 195
    baseexp 190
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_SPELL_TAG
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_SHADOW_TAG, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_KANGASKHAN, "Kangaskhan"
    basestats 105, 125, 100, 100, 60, 100
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 195
    baseexp 175
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_PURE_POWER, ABILITY_PURE_POWER //ABILITY_PARENTAL_BOND, ABILITY_PARENTAL_BOND
    runchance 125
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_PINSIR, "Pinsir"
    basestats 65, 155, 120, 105, 65, 90
    types TYPE_BUG, TYPE_FLYING
    catchrate 195
    baseexp 200
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_AERILATE, ABILITY_AERILATE
    runchance 125
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
	mondexentry SPECIES_PINSIR, ""
	mondexclassification SPECIES_PINSIR, ""
	mondexheight SPECIES_PINSIR, ""
	mondexweight SPECIES_PINSIR, ""

mondata SPECIES_MEGA_GYARADOS, "Gyarados"
    basestats 95, 155, 109, 81, 70, 130
    types TYPE_WATER, TYPE_DARK
    catchrate 195
    baseexp 214
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 5
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_DRAGON
    abilities ABILITY_MOLD_BREAKER, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_AERODACTYL, "Aerodactyl"
    basestats 80, 135, 85, 150, 70, 95
    types TYPE_ROCK, TYPE_FLYING
    catchrate 195
    baseexp 202
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 35
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_TOUGH_CLAWS, ABILITY_TOUGH_CLAWS
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_MEWTWO_X, "Mewtwo-X"
    basestats 106, 190, 100, 130, 154, 100
    types TYPE_PSYCHIC, TYPE_FIGHTING
    catchrate 195
    baseexp 220
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STEADFAST, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_MEWTWO_Y, "Mewtwo-Y"
    basestats 106, 150, 70, 140, 194, 120
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 195
    baseexp 220
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_INSOMNIA, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_AMPHAROS, "Ampharos"
    basestats 90, 95, 105, 45, 165, 110
    types TYPE_ELECTRIC, TYPE_DRAGON
    catchrate 195
    baseexp 194
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_MOLD_BREAKER, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_STEELIX, "Steelix"
    basestats 75, 125, 230, 30, 55, 95
    types TYPE_STEEL, TYPE_GROUND
    catchrate 195
    baseexp 196
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_METAL_COAT
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_SHEER_FORCE, ABILITY_SHEER_FORCE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_SCIZOR, "Scizor"
    basestats 70, 150, 140, 75, 65, 100
    types TYPE_BUG, TYPE_STEEL
    catchrate 195
    baseexp 200
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_TECHNICIAN, ABILITY_TECHNICIAN
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
	mondexentry SPECIES_SCIZOR, ""
	mondexclassification SPECIES_SCIZOR, ""
	mondexheight SPECIES_SCIZOR, ""
	mondexweight SPECIES_SCIZOR, ""


mondata SPECIES_MEGA_HERACROSS, "Heracross"
    basestats 80, 185, 115, 75, 40, 105
    types TYPE_BUG, TYPE_FIGHTING
    catchrate 195
    baseexp 200
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SKILL_LINK, ABILITY_SKILL_LINK
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
	mondexentry SPECIES_HERACROSS, ""
	mondexclassification SPECIES_HERACROSS, ""
	mondexheight SPECIES_HERACROSS, ""
	mondexweight SPECIES_HERACROSS, ""

mondata SPECIES_MEGA_HOUNDOOM, "Houndoom"
    basestats 75, 90, 90, 115, 140, 90
    types TYPE_DARK, TYPE_FIRE
    catchrate 195
    baseexp 204
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SOLAR_POWER, ABILITY_SOLAR_POWER
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
	mondexentry SPECIES_HOUNDOOM, ""
	mondexclassification SPECIES_HOUNDOOM, ""
	mondexheight SPECIES_HOUNDOOM, ""
	mondexweight SPECIES_HOUNDOOM, ""

mondata SPECIES_MEGA_TYRANITAR, "Tyranitar"
    basestats 100, 164, 150, 71, 95, 120
    types TYPE_ROCK, TYPE_DARK
    catchrate 195
    baseexp 218
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_SAND_STREAM, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_SCEPTILE, "Sceptile"
    basestats 70, 110, 75, 145, 145, 85
    types TYPE_GRASS, TYPE_DRAGON
    catchrate 195
    baseexp 208
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_LIGHTNING_ROD, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_BLAZIKEN, "Blaziken"
    basestats 80, 160, 80, 100, 130, 80
    types TYPE_FIRE, TYPE_FIGHTING
    catchrate 195
    baseexp 209
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SPEED_BOOST, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
	mondexentry SPECIES_BLAZIKEN, ""
	mondexclassification SPECIES_BLAZIKEN, ""
	mondexheight SPECIES_BLAZIKEN, ""
	mondexweight SPECIES_BLAZIKEN, ""

mondata SPECIES_MEGA_SWAMPERT, "Swampert"
    basestats 100, 150, 110, 70, 95, 110
    types TYPE_WATER, TYPE_GROUND
    catchrate 195
    baseexp 210
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_GARDEVOIR, "Gardevoir"
    basestats 68, 85, 65, 100, 165, 135
    types TYPE_PSYCHIC, FAIRY_TYPE_IMPLEMENTED ? TYPE_FAIRY : TYPE_PSYCHIC
    catchrate 195
    baseexp 208
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_SYNCHRONIZE, ABILITY_TRACE //ABILITY_PIXILATE, ABILITY_PIXILATE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_SABLEYE, "Sableye"
    basestats 50, 85, 125, 20, 85, 115
    types TYPE_DARK, TYPE_GHOST
    catchrate 195
    baseexp 98
    evyields 0, 1, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 35
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_PRESSURE, ABILITY_FRISK //ABILITY_MAGIC_BOUNCE, ABILITY_MAGIC_BOUNCE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_MAWILE, "Mawile"
    basestats 50, 105, 125, 50, 55, 95
    types TYPE_STEEL, TYPE_FAIRY
    catchrate 195
    baseexp 98
    evyields 0, 1, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_HUGE_POWER, ABILITY_HUGE_POWER
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_AGGRON, "Aggron"
    basestats 70, 140, 230, 50, 60, 80
    types TYPE_STEEL, TYPE_STEEL
    catchrate 195
    baseexp 205
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 35
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_FILTER, ABILITY_FILTER
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_MEDICHAM, "Medicham"
    basestats 60, 100, 85, 100, 80, 85
    types TYPE_FIGHTING, TYPE_PSYCHIC
    catchrate 195
    baseexp 153
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_PURE_POWER, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_MANECTRIC, "Manectric"
    basestats 70, 75, 80, 135, 135, 80
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 195
    baseexp 168
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_INTIMIDATE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_SHARPEDO, "Sharpedo"
    basestats 70, 140, 70, 105, 110, 65
    types TYPE_WATER, TYPE_DARK
    catchrate 195
    baseexp 175
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_SPEED_BOOST, ABILITY_NONE //ABILITY_STRONG_JAW, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_CAMERUPT, "Camerupt"
    basestats 70, 120, 100, 20, 145, 105
    types TYPE_FIRE, TYPE_GROUND
    catchrate 195
    baseexp 175
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_RAWST_BERRY, ITEM_RAWST_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_MAGMA_ARMOR, ABILITY_SOLID_ROCK //ABILITY_SHEER_FORCE, ABILITY_SHEER_FORCE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_ALTARIA, "Altaria"
    basestats 75, 110, 110, 80, 110, 105
    types TYPE_DRAGON, FAIRY_TYPE_IMPLEMENTED ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 195
    baseexp 188
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_FLYING, EGG_GROUP_DRAGON
    abilities ABILITY_PRESSURE, ABILITY_NONE //ABILITY_PIXILATE, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_BANETTE, "Banette"
    basestats 64, 165, 75, 75, 93, 83
    types TYPE_GHOST, TYPE_GHOST
    catchrate 195
    baseexp 179
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_SPELL_TAG
    genderratio 127
    eggcycles 25
    basefriendship 35
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_PRANKSTER, ABILITY_PRANKSTER
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
	mondexentry SPECIES_BANETTE, ""
	mondexclassification SPECIES_BANETTE, ""
	mondexheight SPECIES_BANETTE, ""
	mondexweight SPECIES_BANETTE, ""

mondata SPECIES_MEGA_ABSOL, "Absol"
    basestats 65, 150, 60, 115, 115, 60
    types TYPE_DARK, TYPE_DARK
    catchrate 195
    baseexp 174
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 35
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_MAGIC_BOUNCE, ABILITY_MAGIC_BOUNCE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
	mondexentry SPECIES_ABSOL, ""
	mondexclassification SPECIES_ABSOL, ""
	mondexheight SPECIES_ABSOL, ""
	mondexweight SPECIES_ABSOL, ""

mondata SPECIES_MEGA_GLALIE, "Glalie"
    basestats 80, 120, 80, 100, 120, 80
    types TYPE_ICE, TYPE_ICE
    catchrate 195
    baseexp 187
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NEVER_MELT_ICE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_MINERAL
    abilities ABILITY_INNER_FOCUS, ABILITY_ICE_BODY //ABILITY_REFRIGERATE, ABILITY_REFRIGERATE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
	mondexentry SPECIES_GLALIE, ""
	mondexclassification SPECIES_GLALIE, ""
	mondexheight SPECIES_GLALIE, ""
	mondexweight SPECIES_GLALIE, ""

mondata SPECIES_MEGA_SALAMENCE, "Salamence"
    basestats 95, 145, 130, 120, 120, 90
    types TYPE_DRAGON, TYPE_FLYING
    catchrate 195
    baseexp 218
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_PRESSURE, ABILITY_NONE //ABILITY_AERILATE, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_METAGROSS, "Metagross"
    basestats 80, 145, 150, 110, 105, 110
    types TYPE_STEEL, TYPE_PSYCHIC
    catchrate 195
    baseexp 210
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_METAL_COAT
    genderratio 255
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_LATIAS, "Latias"
    basestats 80, 100, 120, 110, 140, 150
    types TYPE_DRAGON, TYPE_PSYCHIC
    catchrate 195
    baseexp 211
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 120
    basefriendship 90
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_LATIOS, "Latios"
    basestats 80, 130, 100, 110, 160, 120
    types TYPE_DRAGON, TYPE_PSYCHIC
    catchrate 195
    baseexp 211
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 120
    basefriendship 90
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_RAYQUAZA, "Rayquaza"
    basestats 105, 180, 100, 115, 180, 100
    types TYPE_DRAGON, TYPE_FLYING
    catchrate 195
    baseexp 230
    evyields 0, 2, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_CLOUD_NINE /*ABILITY_DELTA_STREAM*/, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_LOPUNNY, "Lopunny-M"
    basestats 65, 136, 94, 135, 54, 96
    types TYPE_NORMAL, TYPE_FIGHTING
    catchrate 195
    baseexp 168
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_SCRAPPY, ABILITY_SCRAPPY
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_GARCHOMP, "Garchomp"
    basestats 108, 170, 115, 92, 120, 95
    types TYPE_DRAGON, TYPE_GROUND
    catchrate 195
    baseexp 218
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_MONSTER
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_LUCARIO, "Lucario"
    basestats 70, 145, 88, 112, 140, 70
    types TYPE_FIGHTING, TYPE_STEEL
    catchrate 195
    baseexp 204
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_ADAPTABILITY, ABILITY_ADAPTABILITY
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_ABOMASNOW, "Abomasnow"
    basestats 90, 132, 105, 30, 132, 105
    types TYPE_GRASS, TYPE_ICE
    catchrate 195
    baseexp 214
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_SNOW_WARNING, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3
	mondexentry SPECIES_ABOMASNOW, ""
	mondexclassification SPECIES_ABOMASNOW, ""
	mondexheight SPECIES_ABOMASNOW, ""
	mondexweight SPECIES_ABOMASNOW, ""

mondata SPECIES_MEGA_GALLADE, "Gallade"
    basestats 68, 165, 95, 110, 65, 115
    types TYPE_PSYCHIC, TYPE_FIGHTING
    catchrate 195
    baseexp 233
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_INNER_FOCUS, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_AUDINO, "Audino"
    basestats 103, 60, 126, 50, 80, 126
    types TYPE_NORMAL, FAIRY_TYPE_IMPLEMENTED ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 255
    baseexp 245
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_HEALER, ABILITY_HEALER
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_DIANCIE, "Diance"
    basestats 50, 160, 110, 110, 160, 110
    types TYPE_ROCK, FAIRY_TYPE_IMPLEMENTED ? TYPE_FAIRY : TYPE_PSYCHIC
    catchrate 195
    baseexp 255
    evyields 0, 0, 1, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_MAGIC_BOUNCE, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_GROUDON_PRIMAL, "Groudon"
    basestats 100, 180, 160, 90, 150, 90
    types TYPE_GROUND, TYPE_FIRE
    catchrate 195
    baseexp 230
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_DESOLATE_LAND, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_KYOGRE_PRIMAL, "Kyogre"
    basestats 100, 150, 90, 90, 180, 160
    types TYPE_WATER, TYPE_WATER
    catchrate 195
    baseexp 230
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRIMORDIAL_SEA, ABILITY_NONE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_RATTATA_ALOLAN, "-----"
    basestats 30, 56, 35, 72, 25, 35
    types TYPE_DARK, TYPE_NORMAL
    catchrate 255
    baseexp 51
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_PECHA_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_GLUTTONY,  ABILITY_HUSTLE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_RATICATE_ALOLAN, "-----"
    basestats 75, 71, 70, 77, 40, 80
    types TYPE_DARK, TYPE_NORMAL
    catchrate 127
    baseexp 145
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_PECHA_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_GLUTTONY,  ABILITY_HUSTLE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_RAICHU_ALOLAN, "-----"
    basestats 60, 85, 50, 110, 95, 85
    types TYPE_ELECTRIC, TYPE_PSYCHIC
    catchrate 75
    baseexp 218
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_SURGE_SURFER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_SANDSHREW_ALOLAN, "-----"
    basestats 50, 75, 90, 40, 10, 35
    types TYPE_ICE, TYPE_STEEL
    catchrate 255
    baseexp 60
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_GRIP_CLAW
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SNOW_CLOAK,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_SANDSLASH_ALOLAN, "-----"
    basestats 75, 100, 120, 65, 25, 65
    types TYPE_ICE, TYPE_STEEL
    catchrate 90
    baseexp 158
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SNOW_CLOAK,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VULPIX_ALOLAN, "-----"
    basestats 38, 41, 40, 65, 50, 65
    types TYPE_ICE, TYPE_ICE
    catchrate 190
    baseexp 60
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_SNOWBALL
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SNOW_CLOAK,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_NINETALES_ALOLAN, "-----"
    basestats 73, 67, 75, 109, 81, 100
    types TYPE_ICE, TYPE_FAIRY
    catchrate 75
    baseexp 177
    evyields 0, 0, 0, 1, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SNOW_CLOAK,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_DIGLETT_ALOLAN, "-----"
    basestats 10, 55, 30, 90, 35, 45
    types TYPE_GROUND, TYPE_STEEL
    catchrate 255
    baseexp 53
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_SOFT_SAND
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAND_VEIL,  ABILITY_TANGLING_HAIR
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_DUGTRIO_ALOLAN, "-----"
    basestats 35, 100, 60, 110, 50, 70
    types TYPE_GROUND, TYPE_STEEL
    catchrate 50
    baseexp 149
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_SOFT_SAND
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAND_VEIL,  ABILITY_TANGLING_HAIR
    runchance 0
    colorflip BODY_COLOR_BROWN, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MEOWTH_ALOLAN, "-----"
    basestats 40, 35, 35, 90, 50, 40
    types TYPE_DARK, TYPE_DARK
    catchrate 255
    baseexp 58
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_QUICK_CLAW
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PICKUP,  ABILITY_TECHNICIAN
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PERSIAN_ALOLAN, "-----"
    basestats 65, 60, 60, 115, 75, 65
    types TYPE_DARK, TYPE_DARK
    catchrate 90
    baseexp 154
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_QUICK_CLAW
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FUR_COAT,  ABILITY_TECHNICIAN
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_GEODUDE_ALOLAN, "-----"
    basestats 40, 80, 100, 20, 30, 30
    types TYPE_ROCK, TYPE_ELECTRIC
    catchrate 255
    baseexp 60
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_CELL_BATTERY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_MAGNET_PULL,  ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_GRAVELER_ALOLAN, "-----"
    basestats 55, 95, 115, 35, 45, 45
    types TYPE_ROCK, TYPE_ELECTRIC
    catchrate 120
    baseexp 137
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_CELL_BATTERY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_MAGNET_PULL,  ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_GOLEM_ALOLAN, "-----"
    basestats 80, 120, 130, 45, 55, 65
    types TYPE_ROCK, TYPE_ELECTRIC
    catchrate 45
    baseexp 223
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_MAGNET_PULL,  ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_GRIMER_ALOLAN, "-----"
    basestats 80, 80, 50, 25, 40, 50
    types TYPE_POISON, TYPE_DARK
    catchrate 190
    baseexp 65
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_BLACK_SLUDGE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_POISON_TOUCH,  ABILITY_GLUTTONY
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MUK_ALOLAN, "-----"
    basestats 105, 105, 75, 50, 65, 100
    types TYPE_POISON, TYPE_DARK
    catchrate 75
    baseexp 175
    evyields 1, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_POISON_TOUCH,  ABILITY_GLUTTONY
    runchance 0
    colorflip BODY_COLOR_GREEN, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_EXEGGUTOR_ALOLAN, "-----"
    basestats 95, 105, 85, 45, 125, 75
    types TYPE_GRASS, TYPE_DRAGON
    catchrate 45
    baseexp 186
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_FRISK,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MAROWAK_ALOLAN, "-----"
    basestats 60, 80, 110, 45, 50, 80
    types TYPE_FIRE, TYPE_GHOST
    catchrate 75
    baseexp 149
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_CURSED_BODY,  ABILITY_LIGHTNING_ROD
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MEOWTH_GALARIAN, "-----"
    basestats 50, 65, 55, 40, 40, 40
    types TYPE_STEEL, TYPE_STEEL
    catchrate 255
    baseexp 58
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PICKUP,  ABILITY_TOUGH_CLAWS
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PONYTA_GALARIAN, "-----"
    basestats 50, 85, 55, 90, 65, 65
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 190
    baseexp 82
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY,  ABILITY_PASTEL_VEIL
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_RAPIDASH_GALARIAN, "-----"
    basestats 65, 100, 70, 105, 80, 80
    types TYPE_PSYCHIC, TYPE_FAIRY
    catchrate 60
    baseexp 175
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY,  ABILITY_PASTEL_VEIL
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_SLOWPOKE_GALARIAN, "-----"
    basestats 90, 65, 65, 15, 40, 40
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 190
    baseexp 63
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_GLUTTONY,  ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_SLOWBRO_GALARIAN, "-----"
    basestats 95, 100, 95, 30, 100, 70
    types TYPE_POISON, TYPE_PSYCHIC
    catchrate 75
    baseexp 172
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_QUICK_DRAW,  ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FARFETCHD_GALARIAN, "-----"
    basestats 52, 95, 55, 55, 58, 62
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 132
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_LEEK
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FIELD
    abilities ABILITY_STEADFAST,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_WEEZING_GALARIAN, "-----"
    basestats 65, 90, 120, 60, 85, 70
    types TYPE_POISON, TYPE_FAIRY
    catchrate 60
    baseexp 172
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_MISTY_SEED
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE,  ABILITY_NEUTRALIZING_GAS
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MR_MIME_GALARIAN, "-----"
    basestats 50, 65, 65, 100, 90, 90
    types TYPE_ICE, TYPE_PSYCHIC
    catchrate 45
    baseexp 161
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_VITAL_SPIRIT,  ABILITY_SCREEN_CLEANER
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ARTICUNO_GALARIAN, "-----"
    basestats 90, 85, 85, 95, 125, 100
    types TYPE_PSYCHIC, TYPE_FLYING
    catchrate 3
    baseexp 290
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_COMPETITIVE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ZAPDOS_GALARIAN, "-----"
    basestats 90, 125, 90, 100, 85, 90
    types TYPE_FIGHTING, TYPE_FLYING
    catchrate 3
    baseexp 290
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_DEFIANT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MOLTRES_GALARIAN, "-----"
    basestats 90, 85, 90, 90, 100, 125
    types TYPE_DARK, TYPE_FLYING
    catchrate 3
    baseexp 290
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BERSERK, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_SLOWKING_GALARIAN, "-----"
    basestats 95, 65, 80, 30, 110, 110
    types TYPE_POISON, TYPE_PSYCHIC
    catchrate 70
    baseexp 172
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_CURIOUS_MEDICINE,  ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_CORSOLA_GALARIAN, "-----"
    basestats 60, 55, 100, 30, 65, 100
    types TYPE_GHOST, TYPE_GHOST
    catchrate 60
    baseexp 144
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_WEAK_ARMOR,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ZIGZAGOON_GALARIAN, "-----"
    basestats 38, 30, 41, 60, 30, 41
    types TYPE_DARK, TYPE_NORMAL
    catchrate 255
    baseexp 56
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PICKUP,  ABILITY_GLUTTONY
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_LINOONE_GALARIAN, "-----"
    basestats 78, 70, 61, 100, 50, 61
    types TYPE_DARK, TYPE_NORMAL
    catchrate 90
    baseexp 147
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PICKUP,  ABILITY_GLUTTONY
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_DARUMAKA_GALARIAN, "-----"
    basestats 70, 90, 45, 50, 15, 45
    types TYPE_ICE, TYPE_ICE
    catchrate 120
    baseexp 63
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_HUSTLE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_DARMANITAN_GALARIAN, "-----"
    basestats 105, 140, 55, 95, 30, 55
    types TYPE_ICE, TYPE_ICE
    catchrate 60
    baseexp 168
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_GORILLA_TACTICS,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_YAMASK_GALARIAN, "-----"
    basestats 38, 55, 85, 30, 30, 65
    types TYPE_GROUND, TYPE_GHOST
    catchrate 190
    baseexp 61
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_AMORPHOUS
    abilities ABILITY_WANDERING_SPIRIT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_STUNFISK_GALARIAN, "-----"
    basestats 109, 81, 99, 32, 66, 84
    types TYPE_GROUND, TYPE_STEEL
    catchrate 75
    baseexp 165
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_AMORPHOUS
    abilities ABILITY_MIMICRY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PIKACHU_COSPLAY, "-----"
    basestats 35, 55, 40, 90, 50, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 112
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_LIGHT_BALL
    genderratio 127
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PIKACHU_ROCK_STAR, "-----"
    basestats 35, 55, 40, 90, 50, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 112
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_LIGHT_BALL
    genderratio 127
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PIKACHU_BELLE, "-----"
    basestats 35, 55, 40, 90, 50, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 112
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_LIGHT_BALL
    genderratio 127
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PIKACHU_POP_STAR, "-----"
    basestats 35, 55, 40, 90, 50, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 112
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_LIGHT_BALL
    genderratio 127
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PIKACHU_PH_D, "-----"
    basestats 35, 55, 40, 90, 50, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 112
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_LIGHT_BALL
    genderratio 127
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PIKACHU_LIBRE, "-----"
    basestats 35, 55, 40, 90, 50, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 112
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_LIGHT_BALL
    genderratio 127
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PIKACHU_ORIGINAL_CAP, "-----"
    basestats 35, 55, 40, 90, 50, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 112
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_LIGHT_BALL
    genderratio 0
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PIKACHU_HOENN_CAP, "-----"
    basestats 35, 55, 40, 90, 50, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 112
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_LIGHT_BALL
    genderratio 0
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PIKACHU_SINNOH_CAP, "-----"
    basestats 35, 55, 40, 90, 50, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 112
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_LIGHT_BALL
    genderratio 0
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PIKACHU_UNOVA_CAP, "-----"
    basestats 35, 55, 40, 90, 50, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 112
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_LIGHT_BALL
    genderratio 0
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PIKACHU_KALOS_CAP, "-----"
    basestats 35, 55, 40, 90, 50, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 112
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_LIGHT_BALL
    genderratio 0
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PIKACHU_ALOLA_CAP, "-----"
    basestats 35, 55, 40, 90, 50, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 112
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_LIGHT_BALL
    genderratio 0
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PIKACHU_PARTNER_CAP, "-----"
    basestats 35, 55, 40, 90, 50, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 112
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_LIGHT_BALL
    genderratio 0
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PIKACHU_WORLD_CAP, "-----"
    basestats 35, 55, 40, 90, 50, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 112
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_LIGHT_BALL
    genderratio 0
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_CASTFORM_SUNNY, "-----"
    basestats 70, 70, 70, 70, 70, 70
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 147
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_MYSTIC_WATER, ITEM_MYSTIC_WATER
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_AMORPHOUS
    abilities ABILITY_FORECAST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_CASTFORM_RAINY, "-----"
    basestats 70, 70, 70, 70, 70, 70
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 147
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_MYSTIC_WATER, ITEM_MYSTIC_WATER
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_AMORPHOUS
    abilities ABILITY_FORECAST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_CASTFORM_SNOWY, "-----"
    basestats 70, 70, 70, 70, 70, 70
    types TYPE_ICE, TYPE_ICE
    catchrate 45
    baseexp 147
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_MYSTIC_WATER, ITEM_MYSTIC_WATER
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_AMORPHOUS
    abilities ABILITY_FORECAST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_CHERRIM_SUNSHINE, "-----"
    basestats 70, 90, 70, 85, 87, 117
    types TYPE_GRASS, TYPE_GRASS
    catchrate 75
    baseexp 158
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_MIRACLE_SEED
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
    abilities ABILITY_FLOWER_GIFT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_SHELLOS_EAST_SEA, "-----"
    basestats 76, 48, 48, 34, 57, 62
    types TYPE_WATER, TYPE_WATER
    catchrate 190
    baseexp 65
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_AMORPHOUS
    abilities ABILITY_STICKY_HOLD,  ABILITY_STORM_DRAIN
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_GASTRODON_EAST_SEA, "-----"
    basestats 111, 83, 68, 39, 92, 82
    types TYPE_WATER, TYPE_GROUND
    catchrate 75
    baseexp 166
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_AMORPHOUS
    abilities ABILITY_STICKY_HOLD,  ABILITY_STORM_DRAIN
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_DIALGA_ORIGIN, "-----"
    basestats 100, 100, 120, 90, 150, 120
    types TYPE_STEEL, TYPE_DRAGON
    catchrate 30
    baseexp 220
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PALKIA_ORIGIN, "-----"
    basestats 90, 100, 100, 120, 150, 120
    types TYPE_WATER, TYPE_DRAGON
    catchrate 45
    baseexp 220
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_BASCULIN_RED_STRIPED, "-----"
    basestats 70, 92, 65, 98, 80, 55
    types TYPE_WATER, TYPE_WATER
    catchrate 25
    baseexp 161
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_DEEP_SEA_SCALE
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_RECKLESS,  ABILITY_ADAPTABILITY
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_BASCULIN_BLUE_STRIPED, "-----"
    basestats 70, 92, 65, 98, 80, 55
    types TYPE_WATER, TYPE_WATER
    catchrate 25
    baseexp 161
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_DEEP_SEA_SCALE
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_ROCK_HEAD,  ABILITY_ADAPTABILITY
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_DARMANITAN_ZEN_MODE, "-----"
    basestats 105, 30, 105, 55, 140, 105
    types TYPE_FIRE, TYPE_PSYCHIC
    catchrate 60
    baseexp 189
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SHEER_FORCE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_DARMANITAN_ZEN_MODE_GALARIAN, "-----"
    basestats 105, 160, 55, 135, 30, 55
    types TYPE_ICE, TYPE_FIRE
    catchrate 60
    baseexp 189
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_GORILLA_TACTICS,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_DEERLING_SUMMER, "-----"
    basestats 60, 60, 50, 75, 40, 50
    types TYPE_NORMAL, TYPE_GRASS
    catchrate 190
    baseexp 67
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CHLOROPHYLL,  ABILITY_SAP_SIPPER
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_DEERLING_AUTUMN, "-----"
    basestats 60, 60, 50, 75, 40, 50
    types TYPE_NORMAL, TYPE_GRASS
    catchrate 190
    baseexp 67
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CHLOROPHYLL,  ABILITY_SAP_SIPPER
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_DEERLING_WINTER, "-----"
    basestats 60, 60, 50, 75, 40, 50
    types TYPE_NORMAL, TYPE_GRASS
    catchrate 190
    baseexp 67
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CHLOROPHYLL,  ABILITY_SAP_SIPPER
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_SAWSBUCK_SUMMER, "-----"
    basestats 80, 100, 70, 95, 60, 70
    types TYPE_NORMAL, TYPE_GRASS
    catchrate 75
    baseexp 166
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CHLOROPHYLL,  ABILITY_SAP_SIPPER
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_SAWSBUCK_AUTUMN, "-----"
    basestats 80, 100, 70, 95, 60, 70
    types TYPE_NORMAL, TYPE_GRASS
    catchrate 75
    baseexp 166
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CHLOROPHYLL,  ABILITY_SAP_SIPPER
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_SAWSBUCK_WINTER, "-----"
    basestats 80, 100, 70, 95, 60, 70
    types TYPE_NORMAL, TYPE_GRASS
    catchrate 75
    baseexp 166
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CHLOROPHYLL,  ABILITY_SAP_SIPPER
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_TORNADUS_THERIAN, "-----"
    basestats 79, 100, 80, 121, 110, 90
    types TYPE_FLYING, TYPE_FLYING
    catchrate 3
    baseexp 261
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 120
    basefriendship 90
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_REGENERATOR, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_THUNDURUS_THERIAN, "-----"
    basestats 79, 105, 70, 101, 145, 80
    types TYPE_ELECTRIC, TYPE_FLYING
    catchrate 3
    baseexp 261
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 120
    basefriendship 90
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_VOLT_ABSORB, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_LANDORUS_THERIAN, "-----"
    basestats 89, 145, 90, 91, 105, 80
    types TYPE_GROUND, TYPE_FLYING
    catchrate 3
    baseexp 270
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 120
    basefriendship 90
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_INTIMIDATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_KYUREM_WHITE, "-----"
    basestats 125, 120, 90, 95, 170, 100
    types TYPE_DRAGON, TYPE_ICE
    catchrate 3
    baseexp 315
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_TURBOBLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_KYUREM_BLACK, "-----"
    basestats 125, 170, 100, 95, 120, 90
    types TYPE_DRAGON, TYPE_ICE
    catchrate 3
    baseexp 315
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_TERAVOLT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_KELDEO_RESOLUTE, "-----"
    basestats 91, 72, 90, 108, 129, 90
    types TYPE_WATER, TYPE_FIGHTING
    catchrate 3
    baseexp 261
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 80
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_JUSTIFIED, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MELOETTA_PIROUETTE, "-----"
    basestats 100, 128, 90, 128, 77, 77
    types TYPE_NORMAL, TYPE_FIGHTING
    catchrate 3
    baseexp 270
    evyields 0, 1, 1, 1, 0, 0
    items ITEM_STAR_PIECE, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 120
    basefriendship 100
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_SERENE_GRACE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_GENESECT_DOUSE_DRIVE, "-----"
    basestats 71, 120, 95, 99, 120, 95
    types TYPE_BUG, TYPE_STEEL
    catchrate 3
    baseexp 270
    evyields 0, 1, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_DOWNLOAD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_GENESECT_SHOCK_DRIVE, "-----"
    basestats 71, 120, 95, 99, 120, 95
    types TYPE_BUG, TYPE_STEEL
    catchrate 3
    baseexp 270
    evyields 0, 1, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_DOWNLOAD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_GENESECT_BURN_DRIVE, "-----"
    basestats 71, 120, 95, 99, 120, 95
    types TYPE_BUG, TYPE_STEEL
    catchrate 3
    baseexp 270
    evyields 0, 1, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_DOWNLOAD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_GENESECT_CHILL_DRIVE, "-----"
    basestats 71, 120, 95, 99, 120, 95
    types TYPE_BUG, TYPE_STEEL
    catchrate 3
    baseexp 270
    evyields 0, 1, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_DOWNLOAD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_GRENINJA_BATTLE_BOND, "-----"
    basestats 72, 95, 67, 122, 103, 71
    types TYPE_WATER, TYPE_DARK
    catchrate 45
    baseexp 239
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BATTLE_BOND, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_GRENINJA_ASH, "-----"
    basestats 72, 145, 67, 132, 153, 71
    types TYPE_WATER, TYPE_DARK
    catchrate 45
    baseexp 288
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BATTLE_BOND, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_POLAR, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_TUNDRA, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_CONTINENTAL, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_GARDEN, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_ELEGANT, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_MEADOW, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_MODERN, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_MARINE, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_ARCHIPELAGO, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_HIGH_PLAINS, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_SANDSTORM, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_RIVER, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_MONSOON, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_SAVANNA, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_SUN, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_OCEAN, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_JUNGLE, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_FANCY, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VIVILLON_POKE_BALL, "-----"
    basestats 80, 52, 50, 89, 90, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 185
    evyields 1, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FLABEBE_YELLOW_FLOWER, "-----"
    basestats 44, 38, 39, 42, 61, 79
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 225
    baseexp 61
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_FLOWER_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FLABEBE_ORANGE_FLOWER, "-----"
    basestats 44, 38, 39, 42, 61, 79
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 225
    baseexp 61
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_FLOWER_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FLABEBE_BLUE_FLOWER, "-----"
    basestats 44, 38, 39, 42, 61, 79
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 225
    baseexp 61
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_FLOWER_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FLABEBE_WHITE_FLOWER, "-----"
    basestats 44, 38, 39, 42, 61, 79
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 225
    baseexp 61
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_FLOWER_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FLOETTE_YELLOW_FLOWER, "-----"
    basestats 54, 45, 47, 52, 75, 98
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 120
    baseexp 130
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_FLOWER_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FLOETTE_ORANGE_FLOWER, "-----"
    basestats 54, 45, 47, 52, 75, 98
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 120
    baseexp 130
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_FLOWER_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FLOETTE_BLUE_FLOWER, "-----"
    basestats 54, 45, 47, 52, 75, 98
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 120
    baseexp 130
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_FLOWER_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FLOETTE_WHITE_FLOWER, "-----"
    basestats 54, 45, 47, 52, 75, 98
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 120
    baseexp 130
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_FLOWER_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FLOETTE_ETERNAL_FLOWER, "-----"
    basestats 74, 65, 67, 92, 125, 128
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 120
    baseexp 243
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_FLOWER_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FLORGES_YELLOW_FLOWER, "-----"
    basestats 78, 65, 68, 75, 112, 154
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 45
    baseexp 248
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_FLOWER_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FLORGES_ORANGE_FLOWER, "-----"
    basestats 78, 65, 68, 75, 112, 154
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 45
    baseexp 248
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_FLOWER_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FLORGES_BLUE_FLOWER, "-----"
    basestats 78, 65, 68, 75, 112, 154
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 45
    baseexp 248
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_FLOWER_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FLORGES_WHITE_FLOWER, "-----"
    basestats 78, 65, 68, 75, 112, 154
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 45
    baseexp 248
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_FLOWER_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FURFROU_HEART, "-----"
    basestats 75, 80, 60, 102, 65, 90
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 160
    baseexp 165
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FUR_COAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FURFROU_STAR, "-----"
    basestats 75, 80, 60, 102, 65, 90
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 160
    baseexp 165
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FUR_COAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FURFROU_DIAMOND, "-----"
    basestats 75, 80, 60, 102, 65, 90
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 160
    baseexp 165
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FUR_COAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FURFROU_DEBUTANTE, "-----"
    basestats 75, 80, 60, 102, 65, 90
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 160
    baseexp 165
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FUR_COAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FURFROU_MATRON, "-----"
    basestats 75, 80, 60, 102, 65, 90
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 160
    baseexp 165
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FUR_COAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FURFROU_DANDY, "-----"
    basestats 75, 80, 60, 102, 65, 90
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 160
    baseexp 165
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FUR_COAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FURFROU_LA_REINE, "-----"
    basestats 75, 80, 60, 102, 65, 90
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 160
    baseexp 165
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FUR_COAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FURFROU_KABUKI, "-----"
    basestats 75, 80, 60, 102, 65, 90
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 160
    baseexp 165
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FUR_COAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_FURFROU_PHARAOH, "-----"
    basestats 75, 80, 60, 102, 65, 90
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 160
    baseexp 165
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FUR_COAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_AEGISLASH_BLADE, "-----"
    basestats 60, 140, 50, 60, 140, 50
    types TYPE_STEEL, TYPE_GHOST
    catchrate 45
    baseexp 234
    evyields 0, 0, 2, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STANCE_CHANGE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PUMPKABOO_SMALL, "-----"
    basestats 44, 66, 70, 56, 44, 55
    types TYPE_GHOST, TYPE_GRASS
    catchrate 120
    baseexp 67
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_PICKUP,  ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PUMPKABOO_LARGE, "-----"
    basestats 54, 66, 70, 46, 44, 55
    types TYPE_GHOST, TYPE_GRASS
    catchrate 120
    baseexp 67
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_PICKUP,  ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_PUMPKABOO_SUPER, "-----"
    basestats 59, 66, 70, 41, 44, 55
    types TYPE_GHOST, TYPE_GRASS
    catchrate 120
    baseexp 67
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_PICKUP,  ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_GOURGEIST_SMALL, "-----"
    basestats 55, 85, 122, 99, 58, 75
    types TYPE_GHOST, TYPE_GRASS
    catchrate 60
    baseexp 173
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_PICKUP,  ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_GOURGEIST_LARGE, "-----"
    basestats 75, 95, 122, 69, 58, 75
    types TYPE_GHOST, TYPE_GRASS
    catchrate 60
    baseexp 173
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_PICKUP,  ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_GOURGEIST_SUPER, "-----"
    basestats 85, 100, 122, 54, 58, 75
    types TYPE_GHOST, TYPE_GRASS
    catchrate 60
    baseexp 173
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_PICKUP,  ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_XERNEAS_ACTIVE, "-----"
    basestats 126, 131, 95, 99, 131, 98
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 45
    baseexp 306
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_FAIRY_AURA, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ZYGARDE_10, "-----"
    basestats 54, 100, 71, 115, 61, 85
    types TYPE_DRAGON, TYPE_GROUND
    catchrate 3
    baseexp 219
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_AURA_BREAK, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ZYGARDE_10_POWER_CONSTRUCT, "-----"
    basestats 54, 100, 71, 115, 61, 85
    types TYPE_DRAGON, TYPE_GROUND
    catchrate 3
    baseexp 219
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_POWER_CONSTRUCT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ZYGARDE_50_POWER_CONSTRUCT, "-----"
    basestats 108, 100, 121, 95, 81, 95
    types TYPE_DRAGON, TYPE_GROUND
    catchrate 3
    baseexp 270
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_POWER_CONSTRUCT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ZYGARDE_10_COMPLETE, "-----"
    basestats 216, 100, 121, 85, 91, 95
    types TYPE_DRAGON, TYPE_GROUND
    catchrate 3
    baseexp 319
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_POWER_CONSTRUCT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ZYGARDE_50_COMPLETE, "-----"
    basestats 216, 100, 121, 85, 91, 95
    types TYPE_DRAGON, TYPE_GROUND
    catchrate 3
    baseexp 319
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_POWER_CONSTRUCT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_HOOPA_UNBOUND, "-----"
    basestats 80, 160, 60, 80, 170, 130
    types TYPE_PSYCHIC, TYPE_DARK
    catchrate 3
    baseexp 270
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 100
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_MAGICIAN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ORICORIO_POM_POM, "-----"
    basestats 75, 70, 70, 93, 98, 70
    types TYPE_ELECTRIC, TYPE_FLYING
    catchrate 45
    baseexp 167
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_HONEY
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_DANCER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ORICORIO_PAU, "-----"
    basestats 75, 70, 70, 93, 98, 70
    types TYPE_PSYCHIC, TYPE_FLYING
    catchrate 45
    baseexp 167
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_HONEY
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_DANCER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ORICORIO_SENSU, "-----"
    basestats 75, 70, 70, 93, 98, 70
    types TYPE_GHOST, TYPE_FLYING
    catchrate 45
    baseexp 167
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_HONEY
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_DANCER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ROCKRUFF_OWN_TEMPO, "-----"
    basestats 45, 65, 40, 60, 30, 40
    types TYPE_ROCK, TYPE_ROCK
    catchrate 190
    baseexp 56
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OWN_TEMPO, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_LYCANROC_MIDNIGHT, "-----"
    basestats 85, 115, 75, 82, 55, 75
    types TYPE_ROCK, TYPE_ROCK
    catchrate 90
    baseexp 170
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_KEEN_EYE,  ABILITY_VITAL_SPIRIT
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_LYCANROC_DUSK, "-----"
    basestats 75, 117, 65, 110, 55, 65
    types TYPE_ROCK, TYPE_ROCK
    catchrate 90
    baseexp 170
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_TOUGH_CLAWS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_WISHIWASHI_SCHOOL, "-----"
    basestats 45, 140, 130, 30, 140, 135
    types TYPE_WATER, TYPE_WATER
    catchrate 60
    baseexp 61
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_SCHOOLING, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MINIOR_METEOR_ORANGE, "-----"
    basestats 60, 60, 100, 60, 60, 100
    types TYPE_ROCK, TYPE_FLYING
    catchrate 30
    baseexp 154
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_SHIELDS_DOWN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MINIOR_METEOR_YELLOW, "-----"
    basestats 60, 60, 100, 60, 60, 100
    types TYPE_ROCK, TYPE_FLYING
    catchrate 30
    baseexp 154
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_SHIELDS_DOWN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MINIOR_METEOR_GREEN, "-----"
    basestats 60, 60, 100, 60, 60, 100
    types TYPE_ROCK, TYPE_FLYING
    catchrate 30
    baseexp 154
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_SHIELDS_DOWN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MINIOR_METEOR_BLUE, "-----"
    basestats 60, 60, 100, 60, 60, 100
    types TYPE_ROCK, TYPE_FLYING
    catchrate 30
    baseexp 154
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_SHIELDS_DOWN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MINIOR_METEOR_INDIGO, "-----"
    basestats 60, 60, 100, 60, 60, 100
    types TYPE_ROCK, TYPE_FLYING
    catchrate 30
    baseexp 154
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_SHIELDS_DOWN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MINIOR_METEOR_VIOLET, "-----"
    basestats 60, 60, 100, 60, 60, 100
    types TYPE_ROCK, TYPE_FLYING
    catchrate 30
    baseexp 154
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_SHIELDS_DOWN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MINIOR_CORE_RED, "-----"
    basestats 60, 100, 60, 120, 100, 60
    types TYPE_ROCK, TYPE_FLYING
    catchrate 30
    baseexp 154
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_SHIELDS_DOWN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MINIOR_CORE_ORANGE, "-----"
    basestats 60, 100, 60, 120, 100, 60
    types TYPE_ROCK, TYPE_FLYING
    catchrate 30
    baseexp 154
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_SHIELDS_DOWN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MINIOR_CORE_YELLOW, "-----"
    basestats 60, 100, 60, 120, 100, 60
    types TYPE_ROCK, TYPE_FLYING
    catchrate 30
    baseexp 154
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_SHIELDS_DOWN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MINIOR_CORE_GREEN, "-----"
    basestats 60, 100, 60, 120, 100, 60
    types TYPE_ROCK, TYPE_FLYING
    catchrate 30
    baseexp 154
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_SHIELDS_DOWN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MINIOR_CORE_BLUE, "-----"
    basestats 60, 100, 60, 120, 100, 60
    types TYPE_ROCK, TYPE_FLYING
    catchrate 30
    baseexp 154
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_SHIELDS_DOWN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MINIOR_CORE_INDIGO, "-----"
    basestats 60, 100, 60, 120, 100, 60
    types TYPE_ROCK, TYPE_FLYING
    catchrate 30
    baseexp 154
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_SHIELDS_DOWN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MINIOR_CORE_VIOLET, "-----"
    basestats 60, 100, 60, 120, 100, 60
    types TYPE_ROCK, TYPE_FLYING
    catchrate 30
    baseexp 154
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_SHIELDS_DOWN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MIMIKYU_BUSTED, "-----"
    basestats 55, 90, 80, 96, 50, 105
    types TYPE_GHOST, TYPE_FAIRY
    catchrate 45
    baseexp 167
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_DISGUISE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_NECROZMA_DUSK_MANE, "-----"
    basestats 97, 157, 127, 77, 113, 109
    types TYPE_PSYCHIC, TYPE_STEEL
    catchrate 255
    baseexp 306
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRISM_ARMOR, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_NECROZMA_DAWN_WINGS, "-----"
    basestats 97, 113, 109, 77, 157, 127
    types TYPE_PSYCHIC, TYPE_GHOST
    catchrate 255
    baseexp 306
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRISM_ARMOR, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_NECROZMA_ULTRA_DUSK_MANE, "-----"
    basestats 97, 167, 97, 129, 167, 97
    types TYPE_PSYCHIC, TYPE_DRAGON
    catchrate 255
    baseexp 339
    evyields 0, 1, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_NEUROFORCE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_NECROZMA_ULTRA_DAWN_WINGS, "-----"
    basestats 97, 167, 97, 129, 167, 97
    types TYPE_PSYCHIC, TYPE_DRAGON
    catchrate 255
    baseexp 339
    evyields 0, 1, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_NEUROFORCE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MAGEARNA_ORIGINAL, "-----"
    basestats 80, 95, 115, 65, 130, 115
    types TYPE_STEEL, TYPE_FAIRY
    catchrate 3
    baseexp 270
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_SOUL_HEART, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_CRAMORANT_GULPING, "-----"
    basestats 70, 85, 55, 85, 85, 95
    types TYPE_FLYING, TYPE_WATER
    catchrate 45
    baseexp 166
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FLYING
    abilities ABILITY_GULP_MISSILE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_CRAMORANT_GORGING, "-----"
    basestats 70, 85, 55, 85, 85, 95
    types TYPE_FLYING, TYPE_WATER
    catchrate 45
    baseexp 166
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FLYING
    abilities ABILITY_GULP_MISSILE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_TOXTRICITY_LOW_KEY, "-----"
    basestats 75, 98, 70, 75, 114, 70
    types TYPE_ELECTRIC, TYPE_POISON
    catchrate 45
    baseexp 176
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_PUNK_ROCK,  ABILITY_MINUS
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_SINISTEA_ANTIQUE, "-----"
    basestats 40, 45, 45, 50, 74, 54
    types TYPE_GHOST, TYPE_GHOST
    catchrate 120
    baseexp 62
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_AMORPHOUS
    abilities ABILITY_WEAK_ARMOR,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_POLTEAGEIST_ANTIQUE, "-----"
    basestats 60, 65, 65, 70, 134, 114
    types TYPE_GHOST, TYPE_GHOST
    catchrate 60
    baseexp 178
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_AMORPHOUS
    abilities ABILITY_WEAK_ARMOR,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ALCREMIE_BERRY_SWEET, "-----"
    basestats 65, 60, 75, 64, 110, 121
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 100
    baseexp 173
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_AMORPHOUS
    abilities ABILITY_SWEET_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ALCREMIE_LOVE_SWEET, "-----"
    basestats 65, 60, 75, 64, 110, 121
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 100
    baseexp 173
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_AMORPHOUS
    abilities ABILITY_SWEET_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ALCREMIE_STAR_SWEET, "-----"
    basestats 65, 60, 75, 64, 110, 121
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 100
    baseexp 173
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_AMORPHOUS
    abilities ABILITY_SWEET_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ALCREMIE_CLOVER_SWEET, "-----"
    basestats 65, 60, 75, 64, 110, 121
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 100
    baseexp 173
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_AMORPHOUS
    abilities ABILITY_SWEET_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ALCREMIE_FLOWER_SWEET, "-----"
    basestats 65, 60, 75, 64, 110, 121
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 100
    baseexp 173
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_AMORPHOUS
    abilities ABILITY_SWEET_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ALCREMIE_RIBBON_SWEET, "-----"
    basestats 65, 60, 75, 64, 110, 121
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 100
    baseexp 173
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_AMORPHOUS
    abilities ABILITY_SWEET_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ALCREMIE_FILLER_1, "-----"
    basestats 65, 60, 75, 64, 110, 121
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 100
    baseexp 173
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_AMORPHOUS
    abilities ABILITY_SWEET_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ALCREMIE_FILLER_2, "-----"
    basestats 65, 60, 75, 64, 110, 121
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 100
    baseexp 173
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_AMORPHOUS
    abilities ABILITY_SWEET_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_EISCUE_NOICE_FACE, "-----"
    basestats 75, 80, 70, 130, 65, 50
    types TYPE_ICE, TYPE_ICE
    catchrate 60
    baseexp 165
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_ICE_FACE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MORPEKO_HANGRY, "-----"
    basestats 58, 95, 58, 97, 70, 58
    types TYPE_ELECTRIC, TYPE_DARK
    catchrate 180
    baseexp 153
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_HUNGER_SWITCH, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ZACIAN_CROWNED, "-----"
    basestats 92, 170, 115, 148, 80, 115
    types TYPE_FAIRY, TYPE_STEEL
    catchrate 10
    baseexp 360
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_INTREPID_SWORD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ZAMAZENTA_CROWNED, "-----"
    basestats 92, 130, 145, 128, 80, 145
    types TYPE_FIGHTING, TYPE_STEEL
    catchrate 10
    baseexp 360
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_DAUNTLESS_SHIELD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ETERNATUS_ETERNAMAX, "-----"
    basestats 255, 115, 250, 130, 125, 250
    types TYPE_POISON, TYPE_DRAGON
    catchrate 255
    baseexp 563
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_URSHIFU_RAPID_STRIKE, "-----"
    basestats 100, 130, 100, 97, 63, 60
    types TYPE_FIGHTING, TYPE_WATER
    catchrate 3
    baseexp 275
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 120
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_UNSEEN_FIST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ZARUDE_DADA, "-----"
    basestats 105, 120, 105, 105, 70, 95
    types TYPE_DARK, TYPE_GRASS
    catchrate 3
    baseexp 300
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_LEAF_GUARD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_CALYREX_ICE_RIDER, "-----"
    basestats 100, 165, 150, 50, 85, 130
    types TYPE_PSYCHIC, TYPE_ICE
    catchrate 3
    baseexp 340
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 100
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_AS_ONE_GLASTRIER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_CALYREX_SHADOW_RIDER, "-----"
    basestats 100, 85, 80, 150, 165, 100
    types TYPE_PSYCHIC, TYPE_GHOST
    catchrate 3
    baseexp 340
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 100
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_AS_ONE_SPECTRIER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ENAMORUS_THERIAN, "-----"
    basestats 74, 115, 110, 46, 135, 100
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, TYPE_FLYING
    catchrate 3
    baseexp 0
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 0
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_OVERCOAT, ABILITY_OVERCOAT
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_GROWLITHE_HISUIAN, "-----"
    basestats 60, 75, 45, 55, 65, 50
    types TYPE_FIRE, TYPE_ROCK
    catchrate 235
    baseexp 91
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 63
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_FLASH_FIRE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ARCANINE_HISUIAN, "-----"
    basestats 95, 115, 80, 90, 95, 80
    types TYPE_FIRE, TYPE_ROCK
    catchrate 0
    baseexp 213
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 63
    eggcycles 0
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_INTIMIDATE, ABILITY_FLASH_FIRE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_VOLTORB_HISUIAN, "-----"
    basestats 40, 30, 50, 100, 55, 55
    types TYPE_ELECTRIC, TYPE_GRASS
    catchrate 235
    baseexp 103
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_SOUNDPROOF, ABILITY_STATIC
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ELECTRODE_HISUIAN, "-----"
    basestats 60, 50, 70, 150, 80, 80
    types TYPE_ELECTRIC, TYPE_GRASS
    catchrate 135
    baseexp 150
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_SOUNDPROOF, ABILITY_STATIC
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_TYPHLOSION_HISUIAN, "-----"
    basestats 73, 84, 78, 95, 119, 85
    types TYPE_FIRE, TYPE_GHOST
    catchrate 45
    baseexp 209
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_QWILFISH_HISUIAN, "-----"
    basestats 65, 95, 85, 85, 55, 55
    types TYPE_DARK, TYPE_POISON
    catchrate 235
    baseexp 100
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_POISON_BARB
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_POISON_POINT, ABILITY_SWIFT_SWIM
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_SNEASEL_HISUIAN, "-----"
    basestats 55, 95, 55, 115, 35, 75
    types TYPE_FIGHTING, TYPE_POISON
    catchrate 235
    baseexp 132
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_GRIP_CLAW, ITEM_QUICK_CLAW
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INNER_FOCUS, ABILITY_KEEN_EYE
    runchance 0
    colorflip BODY_COLOR_BLACK, 1
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_SAMUROTT_HISUIAN, "-----"
    basestats 90, 108, 80, 85, 100, 65
    types TYPE_WATER, TYPE_DARK
    catchrate 55
    baseexp 155
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_TORRENT, ABILITY_TORRENT
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_LILLIGANT_HISUIAN, "-----"
    basestats 70, 105, 75, 105, 50, 75
    types TYPE_GRASS, TYPE_FIGHTING
    catchrate 195
    baseexp 109
    evyields 0, 1, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_HUSTLE
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ZORUA_HISUIAN, "-----"
    basestats 35, 60, 40, 70, 85, 40
    types TYPE_NORMAL, TYPE_GHOST
    catchrate 215
    baseexp 43
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_ILLUSION, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_ZOROARK_HISUIAN, "-----"
    basestats 55, 100, 60, 110, 125, 60
    types TYPE_NORMAL, TYPE_GHOST
    catchrate 115
    baseexp 117
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_ILLUSION, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_BRAVIARY_HISUIAN, "-----"
    basestats 110, 83, 70, 65, 112, 70
    types TYPE_PSYCHIC, TYPE_FLYING
    catchrate 135
    baseexp 117
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_SHEER_FORCE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_SLIGGOO_HISUIAN, "-----"
    basestats 58, 75, 83, 40, 83, 113
    types TYPE_STEEL, TYPE_DRAGON
    catchrate 55
    baseexp 270
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_SAP_SIPPER,  ABILITY_OVERCOAT
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_GOODRA_HISUIAN, "-----"
    basestats 80, 100, 100, 60, 110, 150
    types TYPE_STEEL, TYPE_DRAGON
    catchrate 55
    baseexp 270
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_SAP_SIPPER,  ABILITY_OVERCOAT
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_AVALUGG_HISUIAN, "-----"
    basestats 95, 127, 184, 38, 34, 36
    types TYPE_ICE, TYPE_ROCK
    catchrate 55
    baseexp 180
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MINERAL
    abilities ABILITY_STRONG_JAW,  ABILITY_ICE_BODY
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_DECIDUEYE_HISUIAN, "-----"
    basestats 88, 112, 80, 60, 95, 95
    types TYPE_GRASS, TYPE_FIGHTING
    catchrate 55
    baseexp 239
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_OVERGROW,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_UNFEZANT_FEMALE, "-----"
    basestats 80, 115, 80, 93, 65, 55
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 45
    baseexp 140
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_BIG_PECKS, ABILITY_SUPER_LUCK
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_UNFEZANT_TM_DATA_0, SPECIES_UNFEZANT_TM_DATA_1, SPECIES_UNFEZANT_TM_DATA_2, SPECIES_UNFEZANT_TM_DATA_3


mondata SPECIES_FRILLISH_FEMALE, "-----"
    basestats 55, 40, 50, 40, 65, 85
    types TYPE_WATER, TYPE_GHOST
    catchrate 190
    baseexp 43
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_WATER_ABSORB, ABILITY_CURSED_BODY
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_FRILLISH_TM_DATA_0, SPECIES_FRILLISH_TM_DATA_1, SPECIES_FRILLISH_TM_DATA_2, SPECIES_FRILLISH_TM_DATA_3


mondata SPECIES_JELLICENT_FEMALE, "-----"
    basestats 100, 60, 70, 60, 85, 105
    types TYPE_WATER, TYPE_GHOST
    catchrate 60
    baseexp 109
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_WATER_ABSORB, ABILITY_CURSED_BODY
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_JELLICENT_TM_DATA_0, SPECIES_JELLICENT_TM_DATA_1, SPECIES_JELLICENT_TM_DATA_2, SPECIES_JELLICENT_TM_DATA_3


mondata SPECIES_PYROAR_FEMALE, "-----"
    basestats 86, 68, 72, 106, 109, 66
    types TYPE_FIRE, TYPE_NORMAL
    catchrate 65
    baseexp 177
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RIVALRY,  ABILITY_UNNERVE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_PYROAR_TM_DATA_0, SPECIES_PYROAR_TM_DATA_1, SPECIES_PYROAR_TM_DATA_2, SPECIES_PYROAR_TM_DATA_3


mondata SPECIES_MEOWSTIC_FEMALE, "-----"
    basestats 74, 48, 76, 104, 83, 81
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 75
    baseexp 163
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_KEEN_EYE,  ABILITY_INFILTRATOR
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_MEOWSTIC_TM_DATA_0, SPECIES_MEOWSTIC_TM_DATA_1, SPECIES_MEOWSTIC_TM_DATA_2, SPECIES_MEOWSTIC_TM_DATA_3


mondata SPECIES_INDEEDEE_FEMALE, "-----"
    basestats 60, 65, 55, 95, 105, 95
    types TYPE_PSYCHIC, TYPE_NORMAL
    catchrate 30
    baseexp 166
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 40
    basefriendship 140
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_INNER_FOCUS,  ABILITY_SYNCHRONIZE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_INDEEDEE_TM_DATA_0, SPECIES_INDEEDEE_TM_DATA_1, SPECIES_INDEEDEE_TM_DATA_2, SPECIES_INDEEDEE_TM_DATA_3


mondata SPECIES_BASCULEGION_FEMALE, "-----"
    basestats 120, 112, 65, 78, 80, 75
    types TYPE_WATER, TYPE_GHOST
    catchrate 195
    baseexp 208
    evyields 2,0,0,0,0,0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 0
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_RATTLED, ABILITY_ADAPTABILITY
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BASCULEGION_TM_DATA_0, SPECIES_BASCULEGION_TM_DATA_1, SPECIES_BASCULEGION_TM_DATA_2, SPECIES_BASCULEGION_TM_DATA_3


mondata SPECIES_MAUSHOLD_FAMILY_OF_THREE, "-----"
    basestats 74, 75, 70, 111, 65, 75
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_FRIEND_GUARD, ABILITY_CHEEK_POUCH
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_MAUSHOLD_TM_DATA_0, SPECIES_MAUSHOLD_TM_DATA_1, SPECIES_MAUSHOLD_TM_DATA_2, SPECIES_MAUSHOLD_TM_DATA_3


mondata SPECIES_SQUAWKABILLY_BLUE_PLUMAGE, "-----"
    basestats 82, 96, 51, 92, 45, 51
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_INTIMIDATE, ABILITY_HUSTLE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SQUAWKABILLY_TM_DATA_0, SPECIES_SQUAWKABILLY_TM_DATA_1, SPECIES_SQUAWKABILLY_TM_DATA_2, SPECIES_SQUAWKABILLY_TM_DATA_3


mondata SPECIES_SQUAWKABILLY_YELLOW_PLUMAGE, "-----"
    basestats 82, 96, 51, 92, 45, 51
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_INTIMIDATE, ABILITY_HUSTLE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SQUAWKABILLY_TM_DATA_0, SPECIES_SQUAWKABILLY_TM_DATA_1, SPECIES_SQUAWKABILLY_TM_DATA_2, SPECIES_SQUAWKABILLY_TM_DATA_3


mondata SPECIES_SQUAWKABILLY_WHITE_PLUMAGE, "-----"
    basestats 82, 96, 51, 92, 45, 51
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_INTIMIDATE, ABILITY_HUSTLE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SQUAWKABILLY_TM_DATA_0, SPECIES_SQUAWKABILLY_TM_DATA_1, SPECIES_SQUAWKABILLY_TM_DATA_2, SPECIES_SQUAWKABILLY_TM_DATA_3


mondata SPECIES_PALAFIN_HERO, "-----"
    basestats 100, 160, 97, 100, 106, 87
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_WATER_2
    abilities ABILITY_ZERO_TO_HERO, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_PALAFIN_TM_DATA_0, SPECIES_PALAFIN_TM_DATA_1, SPECIES_PALAFIN_TM_DATA_2, SPECIES_PALAFIN_TM_DATA_3


mondata SPECIES_TATSUGIRI_DROOPY, "-----"
    basestats 68, 50, 60, 82, 120, 95
    types TYPE_DRAGON, TYPE_WATER
    catchrate 100
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 35
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_COMMANDER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_TATSUGIRI_TM_DATA_0, SPECIES_TATSUGIRI_TM_DATA_1, SPECIES_TATSUGIRI_TM_DATA_2, SPECIES_TATSUGIRI_TM_DATA_3


mondata SPECIES_TATSUGIRI_STRETCHY, "-----"
    basestats 68, 50, 60, 82, 120, 95
    types TYPE_DRAGON, TYPE_WATER
    catchrate 100
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 35
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_COMMANDER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_TATSUGIRI_TM_DATA_0, SPECIES_TATSUGIRI_TM_DATA_1, SPECIES_TATSUGIRI_TM_DATA_2, SPECIES_TATSUGIRI_TM_DATA_3


mondata SPECIES_DUDUNSPARCE_THREE_SEGMENT, "-----"
    basestats 125, 100, 80, 55, 85, 75
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SERENE_GRACE, ABILITY_RUN_AWAY
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_DUDUNSPARCE_TM_DATA_0, SPECIES_DUDUNSPARCE_TM_DATA_1, SPECIES_DUDUNSPARCE_TM_DATA_2, SPECIES_DUDUNSPARCE_TM_DATA_3


mondata SPECIES_GIMMIGHOUL_ROAMING, "-----"
    basestats 45, 30, 25, 80, 75, 45
    types TYPE_GHOST, TYPE_GHOST
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 50
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_RATTLED, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GIMMIGHOUL_TM_DATA_0, SPECIES_GIMMIGHOUL_TM_DATA_1, SPECIES_GIMMIGHOUL_TM_DATA_2, SPECIES_GIMMIGHOUL_TM_DATA_3


mondata SPECIES_TERAPAGOS_TERASTAL, "-----"
    basestats 0, 0, 0, 0, 0, 0
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 0
    baseexp 0
    evyields 0, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 0
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_NONE, EGG_GROUP_NONE
    abilities ABILITY_NONE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_TERAPAGOS_TM_DATA_0, SPECIES_TERAPAGOS_TM_DATA_1, SPECIES_TERAPAGOS_TM_DATA_2, SPECIES_TERAPAGOS_TM_DATA_3


mondata SPECIES_WOOPER_PALDEAN, "-----"
    basestats 55, 45, 45, 15, 25, 25
    types TYPE_POISON, TYPE_GROUND
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_DAMP, ABILITY_WATER_ABSORB
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_WOOPER_TM_DATA_0, SPECIES_WOOPER_TM_DATA_1, SPECIES_WOOPER_TM_DATA_2, SPECIES_WOOPER_TM_DATA_3


mondata SPECIES_TAUROS_COMBAT, "-----"
    basestats 75, 110, 105, 100, 30, 70
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_ANGER_POINT
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_TAUROS_TM_DATA_0, SPECIES_TAUROS_TM_DATA_1, SPECIES_TAUROS_TM_DATA_2, SPECIES_TAUROS_TM_DATA_3


mondata SPECIES_TAUROS_BLAZE, "-----"
    basestats 75, 110, 105, 100, 30, 70
    types TYPE_FIGHTING, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_ANGER_POINT
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_TAUROS_TM_DATA_0, SPECIES_TAUROS_TM_DATA_1, SPECIES_TAUROS_TM_DATA_2, SPECIES_TAUROS_TM_DATA_3


mondata SPECIES_TAUROS_AQUA, "-----"
    basestats 75, 110, 105, 100, 30, 70
    types TYPE_FIGHTING, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_ANGER_POINT
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_TAUROS_TM_DATA_0, SPECIES_TAUROS_TM_DATA_1, SPECIES_TAUROS_TM_DATA_2, SPECIES_TAUROS_TM_DATA_3


mondata SPECIES_OINKOLOGNE_FEMALE, "-----"
    basestats 110, 100, 75, 65, 59, 80
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 100
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_LINGERING_AROMA, ABILITY_GLUTTONY
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_OINKOLOGNE_TM_DATA_0, SPECIES_OINKOLOGNE_TM_DATA_1, SPECIES_OINKOLOGNE_TM_DATA_2, SPECIES_OINKOLOGNE_TM_DATA_3


mondata SPECIES_REVAVROOM_SEGIN, "-----"
    basestats 80, 119, 90, 90, 54, 67
    types TYPE_STEEL, TYPE_POISON
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_OVERCOAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_REVAVROOM_TM_DATA_0, SPECIES_REVAVROOM_TM_DATA_1, SPECIES_REVAVROOM_TM_DATA_2, SPECIES_REVAVROOM_TM_DATA_3


mondata SPECIES_REVAVROOM_SCHEDAR, "-----"
    basestats 80, 119, 90, 90, 54, 67
    types TYPE_STEEL, TYPE_POISON
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_OVERCOAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_REVAVROOM_TM_DATA_0, SPECIES_REVAVROOM_TM_DATA_1, SPECIES_REVAVROOM_TM_DATA_2, SPECIES_REVAVROOM_TM_DATA_3


mondata SPECIES_REVAVROOM_NAVI, "-----"
    basestats 80, 119, 90, 90, 54, 67
    types TYPE_STEEL, TYPE_POISON
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_OVERCOAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_REVAVROOM_TM_DATA_0, SPECIES_REVAVROOM_TM_DATA_1, SPECIES_REVAVROOM_TM_DATA_2, SPECIES_REVAVROOM_TM_DATA_3


mondata SPECIES_REVAVROOM_RUCHBAH, "-----"
    basestats 80, 119, 90, 90, 54, 67
    types TYPE_STEEL, TYPE_POISON
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_OVERCOAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_REVAVROOM_TM_DATA_0, SPECIES_REVAVROOM_TM_DATA_1, SPECIES_REVAVROOM_TM_DATA_2, SPECIES_REVAVROOM_TM_DATA_3


mondata SPECIES_REVAVROOM_CAPH , "-----"
    basestats 80, 119, 90, 90, 54, 67
    types TYPE_STEEL, TYPE_POISON
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_OVERCOAT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_REVAVROOM_TM_DATA_0, SPECIES_REVAVROOM_TM_DATA_1, SPECIES_REVAVROOM_TM_DATA_2, SPECIES_REVAVROOM_TM_DATA_3
