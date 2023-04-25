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
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BULBASAUR_TM_DATA_0, SPECIES_BULBASAUR_TM_DATA_1, SPECIES_BULBASAUR_TM_DATA_2, SPECIES_BULBASAUR_TM_DATA_3
    mondexentry SPECIES_BULBASAUR, "The seed on its back is filled\nwith nutrients. The seed grows\nsteadily larger as its body grows."
    mondexclassification SPECIES_BULBASAUR, "Seed Pokémon"
    mondexheight SPECIES_BULBASAUR, "2’04”"
    mondexweight SPECIES_BULBASAUR, "15.2 lbs."


mondata SPECIES_IVYSAUR, "Ivysaur"
    basestats 60, 62, 63, 60, 80, 80
    types TYPE_GRASS, TYPE_POISON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_IVYSAUR_TM_DATA_0, SPECIES_IVYSAUR_TM_DATA_1, SPECIES_IVYSAUR_TM_DATA_2, SPECIES_IVYSAUR_TM_DATA_3
    mondexentry SPECIES_IVYSAUR, "Exposure to sunlight adds to its\nstrength. Sunlight also makes the\nbud on its back grow larger."
    mondexclassification SPECIES_IVYSAUR, "Seed Pokémon"
    mondexheight SPECIES_IVYSAUR, "3’03”"
    mondexweight SPECIES_IVYSAUR, "28.7 lbs."


mondata SPECIES_VENUSAUR, "Venusaur"
    basestats 80, 82, 83, 80, 100, 100
    types TYPE_GRASS, TYPE_POISON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_VENUSAUR_TM_DATA_0, SPECIES_VENUSAUR_TM_DATA_1, SPECIES_VENUSAUR_TM_DATA_2, SPECIES_VENUSAUR_TM_DATA_3
    mondexentry SPECIES_VENUSAUR, "By spreading the broad petals of\nits flower and catching the sun’s\nrays, it fills its body with power."
    mondexclassification SPECIES_VENUSAUR, "Seed Pokémon"
    mondexheight SPECIES_VENUSAUR, "6’07”"
    mondexweight SPECIES_VENUSAUR, "220.5 lbs."


mondata SPECIES_CHARMANDER, "Charmander"
    basestats 39, 52, 43, 65, 60, 50
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CHARMANDER_TM_DATA_0, SPECIES_CHARMANDER_TM_DATA_1, SPECIES_CHARMANDER_TM_DATA_2, SPECIES_CHARMANDER_TM_DATA_3
    mondexentry SPECIES_CHARMANDER, "The flame on its tail shows the\nstrength of its life force. If it is weak,\nthe flame also burns weakly."
    mondexclassification SPECIES_CHARMANDER, "Lizard Pokémon"
    mondexheight SPECIES_CHARMANDER, "2’00”"
    mondexweight SPECIES_CHARMANDER, "18.7 lbs."


mondata SPECIES_CHARMELEON, "Charmeleon"
    basestats 58, 64, 58, 80, 80, 65
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CHARMELEON_TM_DATA_0, SPECIES_CHARMELEON_TM_DATA_1, SPECIES_CHARMELEON_TM_DATA_2, SPECIES_CHARMELEON_TM_DATA_3
    mondexentry SPECIES_CHARMELEON, "It is very hotheaded by nature,\nso it constantly seeks opponents.\nIt calms down only when it wins."
    mondexclassification SPECIES_CHARMELEON, "Flame Pokémon"
    mondexheight SPECIES_CHARMELEON, "3’07”"
    mondexweight SPECIES_CHARMELEON, "41.9 lbs."


mondata SPECIES_CHARIZARD, "Charizard"
    basestats 78, 84, 78, 100, 109, 85
    types TYPE_FIRE, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CHARIZARD_TM_DATA_0, SPECIES_CHARIZARD_TM_DATA_1, SPECIES_CHARIZARD_TM_DATA_2, SPECIES_CHARIZARD_TM_DATA_3
    mondexentry SPECIES_CHARIZARD, "If CHARIZARD becomes furious,\nthe flame at the tip of its tail flares\nup in a light blue shade."
    mondexclassification SPECIES_CHARIZARD, "Flame Pokémon"
    mondexheight SPECIES_CHARIZARD, "5’07”"
    mondexweight SPECIES_CHARIZARD, "199.5 lbs."


mondata SPECIES_SQUIRTLE, "Squirtle"
    basestats 44, 48, 65, 43, 50, 64
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SQUIRTLE_TM_DATA_0, SPECIES_SQUIRTLE_TM_DATA_1, SPECIES_SQUIRTLE_TM_DATA_2, SPECIES_SQUIRTLE_TM_DATA_3
    mondexentry SPECIES_SQUIRTLE, "The shell is soft when it is born.\nIt soon becomes so resilient,\nprodding fingers will bounce off it."
    mondexclassification SPECIES_SQUIRTLE, "Tiny Turtle Pokémon"
    mondexheight SPECIES_SQUIRTLE, "1’08”"
    mondexweight SPECIES_SQUIRTLE, "19.8 lbs."


mondata SPECIES_WARTORTLE, "Wartortle"
    basestats 59, 63, 80, 58, 65, 80
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_WARTORTLE_TM_DATA_0, SPECIES_WARTORTLE_TM_DATA_1, SPECIES_WARTORTLE_TM_DATA_2, SPECIES_WARTORTLE_TM_DATA_3
    mondexentry SPECIES_WARTORTLE, "It is a well-established symbol of\nlongevity. If its shell has algae on it,\nthat WARTORTLE is very old."
    mondexclassification SPECIES_WARTORTLE, "Turtle Pokémon"
    mondexheight SPECIES_WARTORTLE, "3’03”"
    mondexweight SPECIES_WARTORTLE, "49.6 lbs."


mondata SPECIES_BLASTOISE, "Blastoise"
    basestats 79, 83, 100, 78, 85, 105
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_BLASTOISE_TM_DATA_0, SPECIES_BLASTOISE_TM_DATA_1, SPECIES_BLASTOISE_TM_DATA_2, SPECIES_BLASTOISE_TM_DATA_3
    mondexentry SPECIES_BLASTOISE, "It deliberately makes itself heavy\nso it can withstand the recoil\nof the water jets it fires."
    mondexclassification SPECIES_BLASTOISE, "Shellfish Pokémon"
    mondexheight SPECIES_BLASTOISE, "5’03”"
    mondexweight SPECIES_BLASTOISE, "188.5 lbs."


mondata SPECIES_CATERPIE, "Caterpie"
    basestats 45, 30, 35, 45, 20, 20
    types TYPE_BUG, TYPE_BUG
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CATERPIE_TM_DATA_0, SPECIES_CATERPIE_TM_DATA_1, SPECIES_CATERPIE_TM_DATA_2, SPECIES_CATERPIE_TM_DATA_3
    mondexentry SPECIES_CATERPIE, "For protection, it releases a horrible\nstench from the antennae on its\nhead to drive away enemies."
    mondexclassification SPECIES_CATERPIE, "Worm Pokémon"
    mondexheight SPECIES_CATERPIE, "1’00”"
    mondexweight SPECIES_CATERPIE, "6.4 lbs."


mondata SPECIES_METAPOD, "Metapod"
    basestats 50, 20, 55, 30, 25, 25
    types TYPE_BUG, TYPE_BUG
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHED_SKIN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_METAPOD_TM_DATA_0, SPECIES_METAPOD_TM_DATA_1, SPECIES_METAPOD_TM_DATA_2, SPECIES_METAPOD_TM_DATA_3
    mondexentry SPECIES_METAPOD, "Inside the shell, it is soft and\nweak as it prepares to evolve.\nIt stays motionless in the shell."
    mondexclassification SPECIES_METAPOD, "Cocoon Pokémon"
    mondexheight SPECIES_METAPOD, "2’04”"
    mondexweight SPECIES_METAPOD, "21.8 lbs."


mondata SPECIES_BUTTERFREE, "Butterfree"
    basestats 60, 45, 50, 70, 90, 80
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 1
    items ITEM_SILVERPOWDER, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_COMPOUND_EYES, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_BUTTERFREE_TM_DATA_0, SPECIES_BUTTERFREE_TM_DATA_1, SPECIES_BUTTERFREE_TM_DATA_2, SPECIES_BUTTERFREE_TM_DATA_3
    mondexentry SPECIES_BUTTERFREE, "It collects honey every day. It rubs\nhoney onto the hairs on its legs\nto carry it back to its nest."
    mondexclassification SPECIES_BUTTERFREE, "Butterfly Pokémon"
    mondexheight SPECIES_BUTTERFREE, "3’07”"
    mondexweight SPECIES_BUTTERFREE, "70.5 lbs."


mondata SPECIES_WEEDLE, "Weedle"
    basestats 40, 35, 30, 50, 20, 20
    types TYPE_BUG, TYPE_POISON
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_WEEDLE_TM_DATA_0, SPECIES_WEEDLE_TM_DATA_1, SPECIES_WEEDLE_TM_DATA_2, SPECIES_WEEDLE_TM_DATA_3
    mondexentry SPECIES_WEEDLE, "Its poison stinger is very powerful.\nIts bright-colored body is intended\nto warn off its enemies."
    mondexclassification SPECIES_WEEDLE, "Hairy Bug Pokémon"
    mondexheight SPECIES_WEEDLE, "1’00”"
    mondexweight SPECIES_WEEDLE, "7.1 lbs."


mondata SPECIES_KAKUNA, "Kakuna"
    basestats 45, 25, 50, 35, 25, 25
    types TYPE_BUG, TYPE_POISON
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
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_KAKUNA_TM_DATA_0, SPECIES_KAKUNA_TM_DATA_1, SPECIES_KAKUNA_TM_DATA_2, SPECIES_KAKUNA_TM_DATA_3
    mondexentry SPECIES_KAKUNA, "Although it is a cocoon, it can\nmove a little. It can extend its\npoison barb if it is attacked."
    mondexclassification SPECIES_KAKUNA, "Cocoon Pokémon"
    mondexheight SPECIES_KAKUNA, "2’00”"
    mondexweight SPECIES_KAKUNA, "22.0 lbs."


mondata SPECIES_BEEDRILL, "Beedrill"
    basestats 65, 90, 40, 75, 45, 80
    types TYPE_BUG, TYPE_POISON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 1
    items ITEM_POISON_BARB, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_BEEDRILL_TM_DATA_0, SPECIES_BEEDRILL_TM_DATA_1, SPECIES_BEEDRILL_TM_DATA_2, SPECIES_BEEDRILL_TM_DATA_3
    mondexentry SPECIES_BEEDRILL, "It can take down any opponent with\nits powerful poison stingers.\nIt sometimes attacks in swarms."
    mondexclassification SPECIES_BEEDRILL, "Poison Bee Pokémon"
    mondexheight SPECIES_BEEDRILL, "3’03”"
    mondexweight SPECIES_BEEDRILL, "65.0 lbs."


mondata SPECIES_PIDGEY, "Pidgey"
    basestats 40, 45, 40, 56, 35, 35
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_TANGLED_FEET
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_PIDGEY_TM_DATA_0, SPECIES_PIDGEY_TM_DATA_1, SPECIES_PIDGEY_TM_DATA_2, SPECIES_PIDGEY_TM_DATA_3
    mondexentry SPECIES_PIDGEY, "It usually hides in tall grass.\nBecause it dislikes fighting,\nit protects itself by kicking up sand."
    mondexclassification SPECIES_PIDGEY, "Tiny Bird Pokémon"
    mondexheight SPECIES_PIDGEY, "1’00”"
    mondexweight SPECIES_PIDGEY, "4.0 lbs."


mondata SPECIES_PIDGEOTTO, "Pidgeotto"
    basestats 63, 60, 55, 71, 50, 50
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
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
    mondexentry SPECIES_PIDGEOTTO, "It has outstanding vision. However\nhigh it flies, it is able to distinguish\nthe movements of its prey."
    mondexclassification SPECIES_PIDGEOTTO, "Bird Pokémon"
    mondexheight SPECIES_PIDGEOTTO, "3’07”"
    mondexweight SPECIES_PIDGEOTTO, "66.1 lbs."


mondata SPECIES_PIDGEOT, "Pidgeot"
    basestats 83, 80, 75, 101, 70, 70
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 3, 0, 0
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
    mondexentry SPECIES_PIDGEOT, "Its well-developed chest muscles make\nit strong enough to whip up a gusty\nwindstorm with just a few flaps."
    mondexclassification SPECIES_PIDGEOT, "Bird Pokémon"
    mondexheight SPECIES_PIDGEOT, "4’11”"
    mondexweight SPECIES_PIDGEOT, "87.1 lbs."


mondata SPECIES_RATTATA, "Rattata"
    basestats 30, 56, 35, 72, 25, 35
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_CHILAN_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_GUTS
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_RATTATA_TM_DATA_0, SPECIES_RATTATA_TM_DATA_1, SPECIES_RATTATA_TM_DATA_2, SPECIES_RATTATA_TM_DATA_3
    mondexentry SPECIES_RATTATA, "It eats anything. Wherever food is\navailable, it will settle down and\nproduce offspring continuously."
    mondexclassification SPECIES_RATTATA, "Mouse Pokémon"
    mondexheight SPECIES_RATTATA, "1’00”"
    mondexweight SPECIES_RATTATA, "7.7 lbs."


mondata SPECIES_RATICATE, "Raticate"
    basestats 55, 81, 60, 97, 50, 70
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 127
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_ORAN_BERRY, ITEM_SITRUS_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_GUTS
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_RATICATE_TM_DATA_0, SPECIES_RATICATE_TM_DATA_1, SPECIES_RATICATE_TM_DATA_2, SPECIES_RATICATE_TM_DATA_3
    mondexentry SPECIES_RATICATE, "Gnaws on anything with its tough\nfangs. It can even topple concrete\nbuildings by gnawing on them."
    mondexclassification SPECIES_RATICATE, "Mouse Pokémon"
    mondexheight SPECIES_RATICATE, "2’04”"
    mondexweight SPECIES_RATICATE, "40.8 lbs."


mondata SPECIES_SPEAROW, "Spearow"
    basestats 40, 60, 30, 70, 31, 31
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_SHARP_BEAK, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SPEAROW_TM_DATA_0, SPECIES_SPEAROW_TM_DATA_1, SPECIES_SPEAROW_TM_DATA_2, SPECIES_SPEAROW_TM_DATA_3
    mondexentry SPECIES_SPEAROW, "It flaps its short wings to flush out\ninsects from tall grass. It then\nplucks them with its stubby beak."
    mondexclassification SPECIES_SPEAROW, "Tiny Bird Pokémon"
    mondexheight SPECIES_SPEAROW, "1’00”"
    mondexweight SPECIES_SPEAROW, "4.4 lbs."


mondata SPECIES_FEAROW, "Fearow"
    basestats 65, 90, 65, 100, 61, 61
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_SHARP_BEAK, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_FEAROW_TM_DATA_0, SPECIES_FEAROW_TM_DATA_1, SPECIES_FEAROW_TM_DATA_2, SPECIES_FEAROW_TM_DATA_3
    mondexentry SPECIES_FEAROW, "It shoots itself suddenly high into\nthe sky, then plummets down in\none fell swoop to strike its prey."
    mondexclassification SPECIES_FEAROW, "Beak Pokémon"
    mondexheight SPECIES_FEAROW, "3’11”"
    mondexweight SPECIES_FEAROW, "83.8 lbs."


mondata SPECIES_EKANS, "Ekans"
    basestats 35, 60, 44, 55, 40, 54
    types TYPE_POISON, TYPE_POISON
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_DRAGON
    abilities ABILITY_INTIMIDATE, ABILITY_SHED_SKIN
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_EKANS_TM_DATA_0, SPECIES_EKANS_TM_DATA_1, SPECIES_EKANS_TM_DATA_2, SPECIES_EKANS_TM_DATA_3
    mondexentry SPECIES_EKANS, "It can freely detach its jaw to\nswallow large prey whole. It can\nbecome too heavy to move, however."
    mondexclassification SPECIES_EKANS, "Snake Pokémon"
    mondexheight SPECIES_EKANS, "6’07”"
    mondexweight SPECIES_EKANS, "15.2 lbs."


mondata SPECIES_ARBOK, "Arbok"
    basestats 60, 95, 69, 80, 65, 79
    types TYPE_POISON, TYPE_POISON
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_POISON_BARB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_DRAGON
    abilities ABILITY_INTIMIDATE, ABILITY_SHED_SKIN
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_ARBOK_TM_DATA_0, SPECIES_ARBOK_TM_DATA_1, SPECIES_ARBOK_TM_DATA_2, SPECIES_ARBOK_TM_DATA_3
    mondexentry SPECIES_ARBOK, "Transfixing prey with the face-like\npattern on its belly, it binds\nand poisons the frightened victim."
    mondexclassification SPECIES_ARBOK, "Cobra Pokémon"
    mondexheight SPECIES_ARBOK, "11’06”"
    mondexweight SPECIES_ARBOK, "143.3 lbs."


mondata SPECIES_PIKACHU, "Pikachu"
    basestats 35, 55, 40, 90, 50, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_ORAN_BERRY, ITEM_LIGHT_BALL
    genderratio 127
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_STATIC, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_PIKACHU_TM_DATA_0, SPECIES_PIKACHU_TM_DATA_1, SPECIES_PIKACHU_TM_DATA_2, SPECIES_PIKACHU_TM_DATA_3
    mondexentry SPECIES_PIKACHU, "This intelligent Pokémon roasts\nhard berries with electricity to\nmake them tender enough to eat."
    mondexclassification SPECIES_PIKACHU, "Mouse Pokémon"
    mondexheight SPECIES_PIKACHU, "1’04”"
    mondexweight SPECIES_PIKACHU, "13.2 lbs."


mondata SPECIES_RAICHU, "Raichu"
    basestats 60, 90, 55, 110, 90, 80
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_ORAN_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_STATIC, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_RAICHU_TM_DATA_0, SPECIES_RAICHU_TM_DATA_1, SPECIES_RAICHU_TM_DATA_2, SPECIES_RAICHU_TM_DATA_3
    mondexentry SPECIES_RAICHU, "When its electricity builds, its\nmuscles are stimulated, and it becomes\nmore aggressive than usual."
    mondexclassification SPECIES_RAICHU, "Mouse Pokémon"
    mondexheight SPECIES_RAICHU, "2’07”"
    mondexweight SPECIES_RAICHU, "66.1 lbs."


mondata SPECIES_SANDSHREW, "Sandshrew"
    basestats 50, 75, 85, 40, 20, 30
    types TYPE_GROUND, TYPE_GROUND
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_QUICK_CLAW, ITEM_GRIP_CLAW
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAND_VEIL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_SANDSHREW_TM_DATA_0, SPECIES_SANDSHREW_TM_DATA_1, SPECIES_SANDSHREW_TM_DATA_2, SPECIES_SANDSHREW_TM_DATA_3
    mondexentry SPECIES_SANDSHREW, "If it fell from a great height, this\nPokémon could save itself by rolling\ninto a ball and bouncing."
    mondexclassification SPECIES_SANDSHREW, "Mouse Pokémon"
    mondexheight SPECIES_SANDSHREW, "2’00”"
    mondexweight SPECIES_SANDSHREW, "26.5 lbs."


mondata SPECIES_SANDSLASH, "Sandslash"
    basestats 75, 100, 110, 65, 45, 55
    types TYPE_GROUND, TYPE_GROUND
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_QUICK_CLAW, ITEM_SOFT_SAND
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAND_VEIL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_SANDSLASH_TM_DATA_0, SPECIES_SANDSLASH_TM_DATA_1, SPECIES_SANDSLASH_TM_DATA_2, SPECIES_SANDSLASH_TM_DATA_3
    mondexentry SPECIES_SANDSLASH, "In an attempt to hide itself,\nit will run around at top speed to\nkick up a blinding dust storm."
    mondexclassification SPECIES_SANDSLASH, "Mouse Pokémon"
    mondexheight SPECIES_SANDSLASH, "3’03”"
    mondexweight SPECIES_SANDSLASH, "65.0 lbs."


mondata SPECIES_NIDORAN_F, "Nidoran♀"
    basestats 55, 47, 52, 41, 40, 40
    types TYPE_POISON, TYPE_POISON
    catchrate 235
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_POISON_POINT, ABILITY_RIVALRY
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NIDORAN_F_TM_DATA_0, SPECIES_NIDORAN_F_TM_DATA_1, SPECIES_NIDORAN_F_TM_DATA_2, SPECIES_NIDORAN_F_TM_DATA_3
    mondexentry SPECIES_NIDORAN_F, "The poison hidden in its small horn\nis extremely potent. Even a tiny\nscratch can have fatal results."
    mondexclassification SPECIES_NIDORAN_F, "Poison Pin Pokémon"
    mondexheight SPECIES_NIDORAN_F, "1’04”"
    mondexweight SPECIES_NIDORAN_F, "15.4 lbs."


mondata SPECIES_NIDORINA, "Nidorina"
    basestats 70, 62, 67, 56, 55, 55
    types TYPE_POISON, TYPE_POISON
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_POISON_POINT, ABILITY_RIVALRY
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NIDORINA_TM_DATA_0, SPECIES_NIDORINA_TM_DATA_1, SPECIES_NIDORINA_TM_DATA_2, SPECIES_NIDORINA_TM_DATA_3
    mondexentry SPECIES_NIDORINA, "When feeding its young, it first\nchews the food into a paste, then\nspits it out for the offspring."
    mondexclassification SPECIES_NIDORINA, "Poison Pin Pokémon"
    mondexheight SPECIES_NIDORINA, "2’07”"
    mondexweight SPECIES_NIDORINA, "44.1 lbs."


mondata SPECIES_NIDOQUEEN, "Nidoqueen"
    basestats 90, 92, 87, 76, 75, 85
    types TYPE_POISON, TYPE_GROUND
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_POISON_POINT, ABILITY_RIVALRY
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NIDOQUEEN_TM_DATA_0, SPECIES_NIDOQUEEN_TM_DATA_1, SPECIES_NIDOQUEEN_TM_DATA_2, SPECIES_NIDOQUEEN_TM_DATA_3
    mondexentry SPECIES_NIDOQUEEN, "Its body is covered with needle-like\nscales. It never shows signs\nof shrinking from any attack."
    mondexclassification SPECIES_NIDOQUEEN, "Drill Pokémon"
    mondexheight SPECIES_NIDOQUEEN, "4’03”"
    mondexweight SPECIES_NIDOQUEEN, "132.3 lbs."


mondata SPECIES_NIDORAN_M, "Nidoran♂"
    basestats 46, 57, 40, 50, 40, 40
    types TYPE_POISON, TYPE_POISON
    catchrate 235
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
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
    genderratio 255
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
    genderratio 255
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
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 150
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_MOON_STONE, ITEM_LEPPA_BERRY
    genderratio 190
    eggcycles 10
    basefriendship 140
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_CUTE_CHARM, ABILITY_MAGIC_GUARD
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_CLEFAIRY_TM_DATA_0, SPECIES_CLEFAIRY_TM_DATA_1, SPECIES_CLEFAIRY_TM_DATA_2, SPECIES_CLEFAIRY_TM_DATA_3
    mondexentry SPECIES_CLEFAIRY, "The moonlight that it stores in the\nwings on its back apparently gives\nit the ability to float in midair."
    mondexclassification SPECIES_CLEFAIRY, "Fairy Pokémon"
    mondexheight SPECIES_CLEFAIRY, "2’00”"
    mondexweight SPECIES_CLEFAIRY, "16.5 lbs."


mondata SPECIES_CLEFABLE, "Clefable"
    basestats 95, 70, 73, 60, 95, 90
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_MOON_STONE, ITEM_LEPPA_BERRY
    genderratio 190
    eggcycles 10
    basefriendship 140
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_CUTE_CHARM, ABILITY_MAGIC_GUARD
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_CLEFABLE_TM_DATA_0, SPECIES_CLEFABLE_TM_DATA_1, SPECIES_CLEFABLE_TM_DATA_2, SPECIES_CLEFABLE_TM_DATA_3
    mondexentry SPECIES_CLEFABLE, "With its acute hearing, it can\npick up sounds from far away.\nIt usually hides in quiet places."
    mondexclassification SPECIES_CLEFABLE, "Fairy Pokémon"
    mondexheight SPECIES_CLEFABLE, "4’03”"
    mondexweight SPECIES_CLEFABLE, "88.2 lbs."


mondata SPECIES_VULPIX, "Vulpix"
    basestats 38, 41, 40, 65, 50, 65
    types TYPE_FIRE, TYPE_FIRE
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_RAWST_BERRY, ITEM_CHARCOAL
    genderratio 190
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FLASH_FIRE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_VULPIX_TM_DATA_0, SPECIES_VULPIX_TM_DATA_1, SPECIES_VULPIX_TM_DATA_2, SPECIES_VULPIX_TM_DATA_3
    mondexentry SPECIES_VULPIX, "As it develops, its single white\ntail gains color and splits into six.\nIt is quite warm and cuddly."
    mondexclassification SPECIES_VULPIX, "Fox Pokémon"
    mondexheight SPECIES_VULPIX, "2’00”"
    mondexweight SPECIES_VULPIX, "21.8 lbs."


mondata SPECIES_NINETALES, "Ninetales"
    basestats 73, 76, 75, 100, 81, 100
    types TYPE_FIRE, TYPE_FIRE
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 1
    items ITEM_RAWST_BERRY, ITEM_CHARCOAL
    genderratio 190
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FLASH_FIRE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NINETALES_TM_DATA_0, SPECIES_NINETALES_TM_DATA_1, SPECIES_NINETALES_TM_DATA_2, SPECIES_NINETALES_TM_DATA_3
    mondexentry SPECIES_NINETALES, "Some legends claim that each of its\nnine tails has its own unique type\nof special mystical power."
    mondexclassification SPECIES_NINETALES, "Fox Pokémon"
    mondexheight SPECIES_NINETALES, "3’07”"
    mondexweight SPECIES_NINETALES, "43.9 lbs."


mondata SPECIES_JIGGLYPUFF, "Jigglypuff"
    basestats 115, 45, 20, 20, 45, 25
    types TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 170
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_MOON_STONE, ITEM_ORAN_BERRY
    genderratio 190
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_CUTE_CHARM, ABILITY_COMPETITIVE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_JIGGLYPUFF_TM_DATA_0, SPECIES_JIGGLYPUFF_TM_DATA_1, SPECIES_JIGGLYPUFF_TM_DATA_2, SPECIES_JIGGLYPUFF_TM_DATA_3
    mondexentry SPECIES_JIGGLYPUFF, "If it inflates to sing a lullaby,\nit can perform longer and cause\nsure drowsiness in its audience."
    mondexclassification SPECIES_JIGGLYPUFF, "Balloon Pokémon"
    mondexheight SPECIES_JIGGLYPUFF, "1’08”"
    mondexweight SPECIES_JIGGLYPUFF, "12.1 lbs."


mondata SPECIES_WIGGLYTUFF, "Wigglytuff"
    basestats 140, 70, 45, 45, 85, 50
    types TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 50
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_MOON_STONE, ITEM_ORAN_BERRY
    genderratio 190
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_CUTE_CHARM, ABILITY_COMPETITIVE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_WIGGLYTUFF_TM_DATA_0, SPECIES_WIGGLYTUFF_TM_DATA_1, SPECIES_WIGGLYTUFF_TM_DATA_2, SPECIES_WIGGLYTUFF_TM_DATA_3
    mondexentry SPECIES_WIGGLYTUFF, "Their fur feels so good that if two\nof them snuggle together,\nthey won’t want to be separated."
    mondexclassification SPECIES_WIGGLYTUFF, "Balloon Pokémon"
    mondexheight SPECIES_WIGGLYTUFF, "3’03”"
    mondexweight SPECIES_WIGGLYTUFF, "26.5 lbs."


mondata SPECIES_ZUBAT, "Zubat"
    basestats 40, 45, 35, 55, 30, 40
    types TYPE_POISON, TYPE_FLYING
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_INNER_FOCUS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_ZUBAT_TM_DATA_0, SPECIES_ZUBAT_TM_DATA_1, SPECIES_ZUBAT_TM_DATA_2, SPECIES_ZUBAT_TM_DATA_3
    mondexentry SPECIES_ZUBAT, "While flying, it constantly emits\nultrasonic waves from its mouth to\ncheck its surroundings."
    mondexclassification SPECIES_ZUBAT, "Bat Pokémon"
    mondexheight SPECIES_ZUBAT, "2’07”"
    mondexweight SPECIES_ZUBAT, "16.5 lbs."


mondata SPECIES_GOLBAT, "Golbat"
    basestats 75, 80, 70, 90, 65, 75
    types TYPE_POISON, TYPE_FLYING
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_INNER_FOCUS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GOLBAT_TM_DATA_0, SPECIES_GOLBAT_TM_DATA_1, SPECIES_GOLBAT_TM_DATA_2, SPECIES_GOLBAT_TM_DATA_3
    mondexentry SPECIES_GOLBAT, "However hard its victim’s hide may be,\nit punctures with sharp fangs\nand gorges itself with blood."
    mondexclassification SPECIES_GOLBAT, "Bat Pokémon"
    mondexheight SPECIES_GOLBAT, "5’03”"
    mondexweight SPECIES_GOLBAT, "121.3 lbs."


mondata SPECIES_ODDISH, "Oddish"
    basestats 45, 50, 55, 30, 75, 65
    types TYPE_GRASS, TYPE_POISON
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_ABSORB_BULB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_ODDISH_TM_DATA_0, SPECIES_ODDISH_TM_DATA_1, SPECIES_ODDISH_TM_DATA_2, SPECIES_ODDISH_TM_DATA_3
    mondexentry SPECIES_ODDISH, "Awakened by moonlight, it roams\nactively at night. In the day, it stays\nquietly underground."
    mondexclassification SPECIES_ODDISH, "Weed Pokémon"
    mondexheight SPECIES_ODDISH, "1’08”"
    mondexweight SPECIES_ODDISH, "11.9 lbs."


mondata SPECIES_GLOOM, "Gloom"
    basestats 60, 65, 70, 40, 85, 75
    types TYPE_GRASS, TYPE_POISON
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_ABSORB_BULB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_GLOOM_TM_DATA_0, SPECIES_GLOOM_TM_DATA_1, SPECIES_GLOOM_TM_DATA_2, SPECIES_GLOOM_TM_DATA_3
    mondexentry SPECIES_GLOOM, "What appears to be drool is actually\nsweet honey. It is very sticky and\nclings stubbornly if touched."
    mondexclassification SPECIES_GLOOM, "Weed Pokémon"
    mondexheight SPECIES_GLOOM, "2’07”"
    mondexweight SPECIES_GLOOM, "19.0 lbs."


mondata SPECIES_VILEPLUME, "Vileplume"
    basestats 75, 80, 85, 50, 110, 90
    types TYPE_GRASS, TYPE_POISON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_ABSORB_BULB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_VILEPLUME_TM_DATA_0, SPECIES_VILEPLUME_TM_DATA_1, SPECIES_VILEPLUME_TM_DATA_2, SPECIES_VILEPLUME_TM_DATA_3
    mondexentry SPECIES_VILEPLUME, "It has the world’s largest petals.\nWith every step, the petals shake\nout heavy clouds of toxic pollen."
    mondexclassification SPECIES_VILEPLUME, "Flower Pokémon"
    mondexheight SPECIES_VILEPLUME, "3’11”"
    mondexweight SPECIES_VILEPLUME, "41.0 lbs."


mondata SPECIES_PARAS, "Paras"
    basestats 35, 70, 55, 25, 45, 55
    types TYPE_BUG, TYPE_GRASS
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_TINYMUSHROOM, ITEM_BIG_MUSHROOM
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_GRASS
    abilities ABILITY_EFFECT_SPORE, ABILITY_DRY_SKIN
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_PARAS_TM_DATA_0, SPECIES_PARAS_TM_DATA_1, SPECIES_PARAS_TM_DATA_2, SPECIES_PARAS_TM_DATA_3
    mondexentry SPECIES_PARAS, "It is doused with mushroom spores\nwhen it is born. As its body grows,\nmushrooms sprout from its back."
    mondexclassification SPECIES_PARAS, "Mushroom Pokémon"
    mondexheight SPECIES_PARAS, "1’00”"
    mondexweight SPECIES_PARAS, "11.9 lbs."


mondata SPECIES_PARASECT, "Parasect"
    basestats 60, 95, 80, 30, 60, 80
    types TYPE_BUG, TYPE_GRASS
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 1, 0, 0, 0
    items ITEM_TINYMUSHROOM, ITEM_BIG_MUSHROOM
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_GRASS
    abilities ABILITY_EFFECT_SPORE, ABILITY_DRY_SKIN
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_PARASECT_TM_DATA_0, SPECIES_PARASECT_TM_DATA_1, SPECIES_PARASECT_TM_DATA_2, SPECIES_PARASECT_TM_DATA_3
    mondexentry SPECIES_PARASECT, "It stays mostly in dark, damp places,\nthe preference not of the bug, but\nof the big mushroom on its back."
    mondexclassification SPECIES_PARASECT, "Mushroom Pokémon"
    mondexheight SPECIES_PARASECT, "3’03”"
    mondexweight SPECIES_PARASECT, "65.0 lbs."


mondata SPECIES_VENONAT, "Venonat"
    basestats 60, 55, 50, 45, 40, 55
    types TYPE_BUG, TYPE_POISON
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
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
    mondexentry SPECIES_VENONAT, "Its eyes also function as radar\nunits. It catches and eats small\nbugs that hide in darkness."
    mondexclassification SPECIES_VENONAT, "Insect Pokémon"
    mondexheight SPECIES_VENONAT, "3’03”"
    mondexweight SPECIES_VENONAT, "66.1 lbs."


mondata SPECIES_VENOMOTH, "Venomoth"
    basestats 70, 65, 60, 90, 90, 75
    types TYPE_BUG, TYPE_POISON
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 1, 0
    items ITEM_SILVERPOWDER, ITEM_SHED_SHELL
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST, ABILITY_TINTED_LENS
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_VENOMOTH_TM_DATA_0, SPECIES_VENOMOTH_TM_DATA_1, SPECIES_VENOMOTH_TM_DATA_2, SPECIES_VENOMOTH_TM_DATA_3
    mondexentry SPECIES_VENOMOTH, "When it attacks, it flaps its large\nwings violently to scatter its\npoisonous powder all around."
    mondexclassification SPECIES_VENOMOTH, "Poison Moth Pokémon"
    mondexheight SPECIES_VENOMOTH, "4’11”"
    mondexweight SPECIES_VENOMOTH, "27.6 lbs."


mondata SPECIES_DIGLETT, "Diglett"
    basestats 10, 55, 25, 95, 35, 45
    types TYPE_GROUND, TYPE_GROUND
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_SOFT_SAND, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAND_VEIL, ABILITY_ARENA_TRAP
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DIGLETT_TM_DATA_0, SPECIES_DIGLETT_TM_DATA_1, SPECIES_DIGLETT_TM_DATA_2, SPECIES_DIGLETT_TM_DATA_3
    mondexentry SPECIES_DIGLETT, "Its skin is very thin. If it is exposed\nto light, its blood heats up,\ncausing it to grow weak."
    mondexclassification SPECIES_DIGLETT, "Mole Pokémon"
    mondexheight SPECIES_DIGLETT, "0’08”"
    mondexweight SPECIES_DIGLETT, "1.8 lbs."


mondata SPECIES_DUGTRIO, "Dugtrio"
    basestats 35, 100, 50, 120, 50, 70
    types TYPE_GROUND, TYPE_GROUND
    catchrate 50
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_SOFT_SAND, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAND_VEIL, ABILITY_ARENA_TRAP
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DUGTRIO_TM_DATA_0, SPECIES_DUGTRIO_TM_DATA_1, SPECIES_DUGTRIO_TM_DATA_2, SPECIES_DUGTRIO_TM_DATA_3
    mondexentry SPECIES_DUGTRIO, "Its three heads bob separately up\nand down to loosen the soil nearby,\nmaking it easier for it to burrow."
    mondexclassification SPECIES_DUGTRIO, "Mole Pokémon"
    mondexheight SPECIES_DUGTRIO, "2’04”"
    mondexweight SPECIES_DUGTRIO, "73.4 lbs."


mondata SPECIES_MEOWTH, "Meowth"
    basestats 40, 45, 35, 90, 40, 40
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NUGGET, ITEM_QUICK_CLAW
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PICKUP, ABILITY_TECHNICIAN
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_MEOWTH_TM_DATA_0, SPECIES_MEOWTH_TM_DATA_1, SPECIES_MEOWTH_TM_DATA_2, SPECIES_MEOWTH_TM_DATA_3
    mondexentry SPECIES_MEOWTH, "It is fascinated by round objects.\nIt can’t stop playing with them\nuntil it tires and falls asleep."
    mondexclassification SPECIES_MEOWTH, "Scratch Cat Pokémon"
    mondexheight SPECIES_MEOWTH, "1’04”"
    mondexweight SPECIES_MEOWTH, "9.3 lbs."


mondata SPECIES_PERSIAN, "Persian"
    basestats 65, 70, 60, 115, 65, 65
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_QUICK_CLAW, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_LIMBER, ABILITY_TECHNICIAN
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_PERSIAN_TM_DATA_0, SPECIES_PERSIAN_TM_DATA_1, SPECIES_PERSIAN_TM_DATA_2, SPECIES_PERSIAN_TM_DATA_3
    mondexentry SPECIES_PERSIAN, "Many adore it for its sophisticated air.\nHowever, it will lash out and\nscratch for little reason."
    mondexclassification SPECIES_PERSIAN, "Classy Cat Pokémon"
    mondexheight SPECIES_PERSIAN, "3’03”"
    mondexweight SPECIES_PERSIAN, "70.5 lbs."


mondata SPECIES_PSYDUCK, "Psyduck"
    basestats 50, 52, 48, 55, 65, 50
    types TYPE_WATER, TYPE_WATER
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_DAMP, ABILITY_CLOUD_NINE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_PSYDUCK_TM_DATA_0, SPECIES_PSYDUCK_TM_DATA_1, SPECIES_PSYDUCK_TM_DATA_2, SPECIES_PSYDUCK_TM_DATA_3
    mondexentry SPECIES_PSYDUCK, "It has mystical powers but doesn’t\nrecall that it has used them.\nThat is why it always looks puzzled."
    mondexclassification SPECIES_PSYDUCK, "Duck Pokémon"
    mondexheight SPECIES_PSYDUCK, "2’07”"
    mondexweight SPECIES_PSYDUCK, "43.2 lbs."


mondata SPECIES_GOLDUCK, "Golduck"
    basestats 80, 82, 78, 85, 95, 80
    types TYPE_WATER, TYPE_WATER
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_DAMP, ABILITY_CLOUD_NINE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_GOLDUCK_TM_DATA_0, SPECIES_GOLDUCK_TM_DATA_1, SPECIES_GOLDUCK_TM_DATA_2, SPECIES_GOLDUCK_TM_DATA_3
    mondexentry SPECIES_GOLDUCK, "When it swims at full speed using\nits long, webbed limbs, its forehead\nsomehow begins to glow."
    mondexclassification SPECIES_GOLDUCK, "Duck Pokémon"
    mondexheight SPECIES_GOLDUCK, "5’07”"
    mondexweight SPECIES_GOLDUCK, "168.9 lbs."


mondata SPECIES_MANKEY, "Mankey"
    basestats 40, 80, 35, 70, 35, 45
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_PAYAPA_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_VITAL_SPIRIT, ABILITY_ANGER_POINT
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_MANKEY_TM_DATA_0, SPECIES_MANKEY_TM_DATA_1, SPECIES_MANKEY_TM_DATA_2, SPECIES_MANKEY_TM_DATA_3
    mondexentry SPECIES_MANKEY, "It is extremely ill-tempered.\nGroups of them will attack any\nhandy target for no reason."
    mondexclassification SPECIES_MANKEY, "Pig Monkey Pokémon"
    mondexheight SPECIES_MANKEY, "1’08”"
    mondexweight SPECIES_MANKEY, "61.7 lbs."


mondata SPECIES_PRIMEAPE, "Primeape"
    basestats 65, 105, 60, 95, 60, 70
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_PAYAPA_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_VITAL_SPIRIT, ABILITY_ANGER_POINT
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_PRIMEAPE_TM_DATA_0, SPECIES_PRIMEAPE_TM_DATA_1, SPECIES_PRIMEAPE_TM_DATA_2, SPECIES_PRIMEAPE_TM_DATA_3
    mondexentry SPECIES_PRIMEAPE, "If approached while asleep,\nit may awaken and angrily give chase\nin a groggy state of semi-sleep."
    mondexclassification SPECIES_PRIMEAPE, "Pig Monkey Pokémon"
    mondexheight SPECIES_PRIMEAPE, "3’03”"
    mondexweight SPECIES_PRIMEAPE, "70.5 lbs."


mondata SPECIES_GROWLITHE, "Growlithe"
    basestats 55, 70, 45, 60, 70, 50
    types TYPE_FIRE, TYPE_FIRE
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_RAWST_BERRY, ITEM_NONE
    genderratio 63
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_FLASH_FIRE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GROWLITHE_TM_DATA_0, SPECIES_GROWLITHE_TM_DATA_1, SPECIES_GROWLITHE_TM_DATA_2, SPECIES_GROWLITHE_TM_DATA_3
    mondexentry SPECIES_GROWLITHE, "It has a brave and trustworthy\nnature. It fearlessly stands up\nto bigger and stronger foes."
    mondexclassification SPECIES_GROWLITHE, "Puppy Pokémon"
    mondexheight SPECIES_GROWLITHE, "2’04”"
    mondexweight SPECIES_GROWLITHE, "41.9 lbs."


mondata SPECIES_ARCANINE, "Arcanine"
    basestats 90, 110, 80, 95, 100, 80
    types TYPE_FIRE, TYPE_FIRE
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_RAWST_BERRY, ITEM_NONE
    genderratio 63
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_FLASH_FIRE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_ARCANINE_TM_DATA_0, SPECIES_ARCANINE_TM_DATA_1, SPECIES_ARCANINE_TM_DATA_2, SPECIES_ARCANINE_TM_DATA_3
    mondexentry SPECIES_ARCANINE, "This legendary Chinese Pokémon is\nconsidered magnificent. Many people\nare enchanted by its grand mane."
    mondexclassification SPECIES_ARCANINE, "Legendary Pokémon"
    mondexheight SPECIES_ARCANINE, "6’03”"
    mondexweight SPECIES_ARCANINE, "341.7 lbs."


mondata SPECIES_POLIWAG, "Poliwag"
    basestats 40, 50, 40, 90, 40, 40
    types TYPE_WATER, TYPE_WATER
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_WATER_ABSORB, ABILITY_DAMP
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_POLIWAG_TM_DATA_0, SPECIES_POLIWAG_TM_DATA_1, SPECIES_POLIWAG_TM_DATA_2, SPECIES_POLIWAG_TM_DATA_3
    mondexentry SPECIES_POLIWAG, "Because it is inept at walking on\nits newly grown legs, it always \nswims around in water."
    mondexclassification SPECIES_POLIWAG, "Tadpole Pokémon"
    mondexheight SPECIES_POLIWAG, "2’00”"
    mondexweight SPECIES_POLIWAG, "27.3 lbs."


mondata SPECIES_POLIWHIRL, "Poliwhirl"
    basestats 65, 65, 65, 90, 50, 50
    types TYPE_WATER, TYPE_WATER
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_KINGS_ROCK, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_WATER_ABSORB, ABILITY_DAMP
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_POLIWHIRL_TM_DATA_0, SPECIES_POLIWHIRL_TM_DATA_1, SPECIES_POLIWHIRL_TM_DATA_2, SPECIES_POLIWHIRL_TM_DATA_3
    mondexentry SPECIES_POLIWHIRL, "The swirl on its belly subtly undulates.\nStaring at it may gradually\ncause drowsiness."
    mondexclassification SPECIES_POLIWHIRL, "Tadpole Pokémon"
    mondexheight SPECIES_POLIWHIRL, "3’03”"
    mondexweight SPECIES_POLIWHIRL, "44.1 lbs."


mondata SPECIES_POLIWRATH, "Poliwrath"
    basestats 90, 95, 95, 70, 70, 90
    types TYPE_WATER, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_KINGS_ROCK, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_WATER_ABSORB, ABILITY_DAMP
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_POLIWRATH_TM_DATA_0, SPECIES_POLIWRATH_TM_DATA_1, SPECIES_POLIWRATH_TM_DATA_2, SPECIES_POLIWRATH_TM_DATA_3
    mondexentry SPECIES_POLIWRATH, "This strong and skilled swimmer is\neven capable of crossing the\nPacific Ocean just by kicking."
    mondexclassification SPECIES_POLIWRATH, "Tadpole Pokémon"
    mondexheight SPECIES_POLIWRATH, "4’03”"
    mondexweight SPECIES_POLIWRATH, "119.0 lbs."


mondata SPECIES_ABRA, "Abra"
    basestats 25, 20, 15, 90, 105, 55
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_TWISTEDSPOON, ITEM_NONE
    genderratio 63
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_SYNCHRONIZE, ABILITY_INNER_FOCUS
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_ABRA_TM_DATA_0, SPECIES_ABRA_TM_DATA_1, SPECIES_ABRA_TM_DATA_2, SPECIES_ABRA_TM_DATA_3
    mondexentry SPECIES_ABRA, "It senses impending attacks and\nteleports away to safety before the\nactual attacks can strike."
    mondexclassification SPECIES_ABRA, "Psi Pokémon"
    mondexheight SPECIES_ABRA, "2’11”"
    mondexweight SPECIES_ABRA, "43.0 lbs."


mondata SPECIES_KADABRA, "Kadabra"
    basestats 40, 35, 30, 105, 120, 70
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 100
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_TWISTEDSPOON, ITEM_NONE
    genderratio 63
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_SYNCHRONIZE, ABILITY_INNER_FOCUS
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_KADABRA_TM_DATA_0, SPECIES_KADABRA_TM_DATA_1, SPECIES_KADABRA_TM_DATA_2, SPECIES_KADABRA_TM_DATA_3
    mondexentry SPECIES_KADABRA, "It possesses strong spiritual power.\nThe more danger it faces,\nthe stronger its psychic power."
    mondexclassification SPECIES_KADABRA, "Psi Pokémon"
    mondexheight SPECIES_KADABRA, "4’03”"
    mondexweight SPECIES_KADABRA, "124.6 lbs."


mondata SPECIES_ALAKAZAM, "Alakazam"
    basestats 55, 50, 45, 120, 135, 95
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 50
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_TWISTEDSPOON, ITEM_NONE
    genderratio 63
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_SYNCHRONIZE, ABILITY_INNER_FOCUS
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_ALAKAZAM_TM_DATA_0, SPECIES_ALAKAZAM_TM_DATA_1, SPECIES_ALAKAZAM_TM_DATA_2, SPECIES_ALAKAZAM_TM_DATA_3
    mondexentry SPECIES_ALAKAZAM, "Closing both its eyes heightens all\nits other senses. This enables it to\nuse its abilities to their extremes."
    mondexclassification SPECIES_ALAKAZAM, "Psi Pokémon"
    mondexheight SPECIES_ALAKAZAM, "4’11”"
    mondexweight SPECIES_ALAKAZAM, "105.8 lbs."


mondata SPECIES_MACHOP, "Machop"
    basestats 70, 80, 50, 35, 35, 35
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 180
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_FOCUS_BAND, ITEM_NONE
    genderratio 63
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_GUTS, ABILITY_NO_GUARD
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MACHOP_TM_DATA_0, SPECIES_MACHOP_TM_DATA_1, SPECIES_MACHOP_TM_DATA_2, SPECIES_MACHOP_TM_DATA_3
    mondexentry SPECIES_MACHOP, "Always brimming with power,\nit passes time by lifting boulders.\nDoing so makes it even stronger."
    mondexclassification SPECIES_MACHOP, "Superpower Pokémon"
    mondexheight SPECIES_MACHOP, "2’07”"
    mondexweight SPECIES_MACHOP, "43.0 lbs."


mondata SPECIES_MACHOKE, "Machoke"
    basestats 80, 100, 70, 45, 50, 60
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_FOCUS_BAND, ITEM_NONE
    genderratio 63
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_GUTS, ABILITY_NO_GUARD
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MACHOKE_TM_DATA_0, SPECIES_MACHOKE_TM_DATA_1, SPECIES_MACHOKE_TM_DATA_2, SPECIES_MACHOKE_TM_DATA_3
    mondexentry SPECIES_MACHOKE, "It always goes at its full power,\nbut this very tough and durable\nPokémon never gets tired."
    mondexclassification SPECIES_MACHOKE, "Superpower Pokémon"
    mondexheight SPECIES_MACHOKE, "4’11”"
    mondexweight SPECIES_MACHOKE, "155.4 lbs."


mondata SPECIES_MACHAMP, "Machamp"
    basestats 90, 130, 80, 55, 65, 85
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_FOCUS_BAND, ITEM_NONE
    genderratio 63
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_GUTS, ABILITY_NO_GUARD
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MACHAMP_TM_DATA_0, SPECIES_MACHAMP_TM_DATA_1, SPECIES_MACHAMP_TM_DATA_2, SPECIES_MACHAMP_TM_DATA_3
    mondexentry SPECIES_MACHAMP, "It quickly swings its four arms to\nrock its opponents with ceaseless\npunches and chops from all angles."
    mondexclassification SPECIES_MACHAMP, "Superpower Pokémon"
    mondexheight SPECIES_MACHAMP, "5’03”"
    mondexweight SPECIES_MACHAMP, "286.6 lbs."


mondata SPECIES_BELLSPROUT, "Bellsprout"
    basestats 50, 75, 35, 40, 70, 30
    types TYPE_GRASS, TYPE_POISON
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BELLSPROUT_TM_DATA_0, SPECIES_BELLSPROUT_TM_DATA_1, SPECIES_BELLSPROUT_TM_DATA_2, SPECIES_BELLSPROUT_TM_DATA_3
    mondexentry SPECIES_BELLSPROUT, "Even though its body is extremely\nskinny, it is blindingly fast\nwhen catching its prey."
    mondexclassification SPECIES_BELLSPROUT, "Flower Pokémon"
    mondexheight SPECIES_BELLSPROUT, "2’04”"
    mondexweight SPECIES_BELLSPROUT, "8.8 lbs."


mondata SPECIES_WEEPINBELL, "Weepinbell"
    basestats 65, 90, 50, 55, 85, 45
    types TYPE_GRASS, TYPE_POISON
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_WEEPINBELL_TM_DATA_0, SPECIES_WEEPINBELL_TM_DATA_1, SPECIES_WEEPINBELL_TM_DATA_2, SPECIES_WEEPINBELL_TM_DATA_3
    mondexentry SPECIES_WEEPINBELL, "Even though it is filled with acid,\nit does not melt because it also\noozes a protective fluid."
    mondexclassification SPECIES_WEEPINBELL, "Flycatcher Pokémon"
    mondexheight SPECIES_WEEPINBELL, "3’03”"
    mondexweight SPECIES_WEEPINBELL, "14.1 lbs."


mondata SPECIES_VICTREEBEL, "Victreebel"
    basestats 80, 105, 65, 70, 100, 70
    types TYPE_GRASS, TYPE_POISON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
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
    mondexentry SPECIES_VICTREEBEL, "Acid that has dissolved many prey\nbecomes sweeter, making it even\nmore effective at attracting prey."
    mondexclassification SPECIES_VICTREEBEL, "Flycatcher Pokémon"
    mondexheight SPECIES_VICTREEBEL, "5’07”"
    mondexweight SPECIES_VICTREEBEL, "34.2 lbs."


mondata SPECIES_TENTACOOL, "Tentacool"
    basestats 40, 40, 35, 70, 50, 100
    types TYPE_WATER, TYPE_POISON
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_POISON_BARB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_CLEAR_BODY, ABILITY_LIQUID_OOZE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_TENTACOOL_TM_DATA_0, SPECIES_TENTACOOL_TM_DATA_1, SPECIES_TENTACOOL_TM_DATA_2, SPECIES_TENTACOOL_TM_DATA_3
    mondexentry SPECIES_TENTACOOL, "When the tide goes out, dehydrated\nTENTACOOL remains can be found\nwashed up on the shore."
    mondexclassification SPECIES_TENTACOOL, "Jellyfish Pokémon"
    mondexheight SPECIES_TENTACOOL, "2’11”"
    mondexweight SPECIES_TENTACOOL, "100.3 lbs."


mondata SPECIES_TENTACRUEL, "Tentacruel"
    basestats 80, 70, 65, 100, 80, 120
    types TYPE_WATER, TYPE_POISON
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_POISON_BARB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_CLEAR_BODY, ABILITY_LIQUID_OOZE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_TENTACRUEL_TM_DATA_0, SPECIES_TENTACRUEL_TM_DATA_1, SPECIES_TENTACRUEL_TM_DATA_2, SPECIES_TENTACRUEL_TM_DATA_3
    mondexentry SPECIES_TENTACRUEL, "Its 80 tentacles absorb water and\nstretch almost endlessly to\nconstrict its prey and enemies."
    mondexclassification SPECIES_TENTACRUEL, "Jellyfish Pokémon"
    mondexheight SPECIES_TENTACRUEL, "5’03”"
    mondexweight SPECIES_TENTACRUEL, "121.3 lbs."


mondata SPECIES_GEODUDE, "Geodude"
    basestats 40, 80, 100, 20, 30, 30
    types TYPE_ROCK, TYPE_GROUND
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_EVERSTONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_ROCK_HEAD, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GEODUDE_TM_DATA_0, SPECIES_GEODUDE_TM_DATA_1, SPECIES_GEODUDE_TM_DATA_2, SPECIES_GEODUDE_TM_DATA_3
    mondexentry SPECIES_GEODUDE, "Most people may not notice,\nbut a closer look should reveal that\nthere are many GEODUDE around."
    mondexclassification SPECIES_GEODUDE, "Rock Pokémon"
    mondexheight SPECIES_GEODUDE, "1’04”"
    mondexweight SPECIES_GEODUDE, "44.1 lbs."


mondata SPECIES_GRAVELER, "Graveler"
    basestats 55, 95, 115, 35, 45, 45
    types TYPE_ROCK, TYPE_GROUND
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_EVERSTONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_ROCK_HEAD, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GRAVELER_TM_DATA_0, SPECIES_GRAVELER_TM_DATA_1, SPECIES_GRAVELER_TM_DATA_2, SPECIES_GRAVELER_TM_DATA_3
    mondexentry SPECIES_GRAVELER, "With a free and uncaring nature,\nit doesn’t mind if pieces break off\nwhile it rolls down mountains."
    mondexclassification SPECIES_GRAVELER, "Rock Pokémon"
    mondexheight SPECIES_GRAVELER, "3’03”"
    mondexweight SPECIES_GRAVELER, "231.5 lbs."


mondata SPECIES_GOLEM, "Golem"
    basestats 80, 120, 130, 45, 55, 65
    types TYPE_ROCK, TYPE_GROUND
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_EVERSTONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_ROCK_HEAD, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GOLEM_TM_DATA_0, SPECIES_GOLEM_TM_DATA_1, SPECIES_GOLEM_TM_DATA_2, SPECIES_GOLEM_TM_DATA_3
    mondexentry SPECIES_GOLEM, "It sheds its skin once a year.\nThe discarded shell immediately\nhardens and crumbles away."
    mondexclassification SPECIES_GOLEM, "Megaton Pokémon"
    mondexheight SPECIES_GOLEM, "4’07”"
    mondexweight SPECIES_GOLEM, "661.4 lbs."


mondata SPECIES_PONYTA, "Ponyta"
    basestats 50, 85, 55, 90, 65, 65
    types TYPE_FIRE, TYPE_FIRE
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_SHUCA_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_FLASH_FIRE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_PONYTA_TM_DATA_0, SPECIES_PONYTA_TM_DATA_1, SPECIES_PONYTA_TM_DATA_2, SPECIES_PONYTA_TM_DATA_3
    mondexentry SPECIES_PONYTA, "It is a weak runner immediately\nafter birth. It gradually becomes\nfaster by chasing after its parents."
    mondexclassification SPECIES_PONYTA, "Fire Horse Pokémon"
    mondexheight SPECIES_PONYTA, "3’03”"
    mondexweight SPECIES_PONYTA, "66.1 lbs."


mondata SPECIES_RAPIDASH, "Rapidash"
    basestats 65, 100, 70, 105, 80, 80
    types TYPE_FIRE, TYPE_FIRE
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_SHUCA_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_FLASH_FIRE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_RAPIDASH_TM_DATA_0, SPECIES_RAPIDASH_TM_DATA_1, SPECIES_RAPIDASH_TM_DATA_2, SPECIES_RAPIDASH_TM_DATA_3
    mondexentry SPECIES_RAPIDASH, "At full gallop, its four hooves\nbarely touch the ground because\nit moves so incredibly fast."
    mondexclassification SPECIES_RAPIDASH, "Fire Horse Pokémon"
    mondexheight SPECIES_RAPIDASH, "5’07”"
    mondexweight SPECIES_RAPIDASH, "209.4 lbs."


mondata SPECIES_SLOWPOKE, "Slowpoke"
    basestats 90, 65, 65, 15, 40, 40
    types TYPE_WATER, TYPE_PSYCHIC
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_KINGS_ROCK, ITEM_LAGGING_TAIL
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_OBLIVIOUS, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_SLOWPOKE_TM_DATA_0, SPECIES_SLOWPOKE_TM_DATA_1, SPECIES_SLOWPOKE_TM_DATA_2, SPECIES_SLOWPOKE_TM_DATA_3
    mondexentry SPECIES_SLOWPOKE, "It lazes vacantly near water.\nIf something bites its tail, it won’t\neven notice for a whole day."
    mondexclassification SPECIES_SLOWPOKE, "Dopey Pokémon"
    mondexheight SPECIES_SLOWPOKE, "3’11”"
    mondexweight SPECIES_SLOWPOKE, "79.4 lbs."


mondata SPECIES_SLOWBRO, "Slowbro"
    basestats 95, 75, 110, 30, 100, 80
    types TYPE_WATER, TYPE_PSYCHIC
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_KINGS_ROCK, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_OBLIVIOUS, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_SLOWBRO_TM_DATA_0, SPECIES_SLOWBRO_TM_DATA_1, SPECIES_SLOWBRO_TM_DATA_2, SPECIES_SLOWBRO_TM_DATA_3
    mondexentry SPECIES_SLOWBRO, "If the tail-biting SHELLDER is thrown\noff in a harsh battle, it reverts to\nbeing an ordinary SLOWPOKE."
    mondexclassification SPECIES_SLOWBRO, "Hermit Crab Pokémon"
    mondexheight SPECIES_SLOWBRO, "5’03”"
    mondexweight SPECIES_SLOWBRO, "173.1 lbs."


mondata SPECIES_MAGNEMITE, "Magnemite"
    basestats 25, 35, 70, 45, 95, 55
    types TYPE_ELECTRIC, TYPE_STEEL
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_METAL_COAT, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_MAGNET_PULL, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MAGNEMITE_TM_DATA_0, SPECIES_MAGNEMITE_TM_DATA_1, SPECIES_MAGNEMITE_TM_DATA_2, SPECIES_MAGNEMITE_TM_DATA_3
    mondexentry SPECIES_MAGNEMITE, "It is attracted by electromagnetic\nwaves. It may approach Trainers\nif they are using their Pokégear."
    mondexclassification SPECIES_MAGNEMITE, "Magnet Pokémon"
    mondexheight SPECIES_MAGNEMITE, "1’00”"
    mondexweight SPECIES_MAGNEMITE, "13.2 lbs."


mondata SPECIES_MAGNETON, "Magneton"
    basestats 50, 60, 95, 70, 120, 70
    types TYPE_ELECTRIC, TYPE_STEEL
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_METAL_COAT, ITEM_MAGNET
    genderratio 255
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_MAGNET_PULL, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MAGNETON_TM_DATA_0, SPECIES_MAGNETON_TM_DATA_1, SPECIES_MAGNETON_TM_DATA_2, SPECIES_MAGNETON_TM_DATA_3
    mondexentry SPECIES_MAGNETON, "Three MAGNEMITE are linked by a\nstrong magnetic force. Earaches\nwill occur if you get too close."
    mondexclassification SPECIES_MAGNETON, "Magnet Pokémon"
    mondexheight SPECIES_MAGNETON, "3’03”"
    mondexweight SPECIES_MAGNETON, "132.3 lbs."


mondata SPECIES_FARFETCHD, "Farfetch’d"
    basestats 52, 90, 55, 60, 58, 62
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_STICK, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FIELD
    abilities ABILITY_KEEN_EYE, ABILITY_INNER_FOCUS
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_FARFETCHD_TM_DATA_0, SPECIES_FARFETCHD_TM_DATA_1, SPECIES_FARFETCHD_TM_DATA_2, SPECIES_FARFETCHD_TM_DATA_3
    mondexentry SPECIES_FARFETCHD, "If anyone tries to disturb where the\nessential plant stalks grow, it uses its\nown stalk to thwart them."
    mondexclassification SPECIES_FARFETCHD, "Wild Duck Pokémon"
    mondexheight SPECIES_FARFETCHD, "2’07”"
    mondexweight SPECIES_FARFETCHD, "33.1 lbs."


mondata SPECIES_DODUO, "Doduo"
    basestats 35, 85, 45, 75, 35, 35
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_SHARP_BEAK, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_RUN_AWAY, ABILITY_EARLY_BIRD
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DODUO_TM_DATA_0, SPECIES_DODUO_TM_DATA_1, SPECIES_DODUO_TM_DATA_2, SPECIES_DODUO_TM_DATA_3
    mondexentry SPECIES_DODUO, "By alternately raising and lowering\nits two heads, it balances itself\nto be more stable while running."
    mondexclassification SPECIES_DODUO, "Twin Bird Pokémon"
    mondexheight SPECIES_DODUO, "4’07”"
    mondexweight SPECIES_DODUO, "86.4 lbs."


mondata SPECIES_DODRIO, "Dodrio"
    basestats 60, 110, 70, 110, 60, 60
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_SHARP_BEAK, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_RUN_AWAY, ABILITY_EARLY_BIRD
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DODRIO_TM_DATA_0, SPECIES_DODRIO_TM_DATA_1, SPECIES_DODRIO_TM_DATA_2, SPECIES_DODRIO_TM_DATA_3
    mondexentry SPECIES_DODRIO, "It collects data and plans three times\nas wisely, but it may think too much\nand fall into a state of immobility."
    mondexclassification SPECIES_DODRIO, "Triple Bird Pokémon"
    mondexheight SPECIES_DODRIO, "5’11”"
    mondexweight SPECIES_DODRIO, "187.8 lbs."


mondata SPECIES_SEEL, "Seel"
    basestats 65, 45, 55, 45, 45, 70
    types TYPE_WATER, TYPE_WATER
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_ASPEAR_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_THICK_FAT, ABILITY_HYDRATION
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SEEL_TM_DATA_0, SPECIES_SEEL_TM_DATA_1, SPECIES_SEEL_TM_DATA_2, SPECIES_SEEL_TM_DATA_3
    mondexentry SPECIES_SEEL, "Although it can’t walk well on land,\nit is a graceful swimmer. It especially\nloves being in frigid seas."
    mondexclassification SPECIES_SEEL, "Sea Lion Pokémon"
    mondexheight SPECIES_SEEL, "3’07”"
    mondexweight SPECIES_SEEL, "198.4 lbs."


mondata SPECIES_DEWGONG, "Dewgong"
    basestats 90, 70, 80, 70, 70, 95
    types TYPE_WATER, TYPE_ICE
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_ASPEAR_BERRY, ITEM_NEVERMELTICE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_THICK_FAT, ABILITY_HYDRATION
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_DEWGONG_TM_DATA_0, SPECIES_DEWGONG_TM_DATA_1, SPECIES_DEWGONG_TM_DATA_2, SPECIES_DEWGONG_TM_DATA_3
    mondexentry SPECIES_DEWGONG, "Its streamlined body has little\ndrag in water. The colder the\ntemperature, the friskier it gets."
    mondexclassification SPECIES_DEWGONG, "Sea Lion Pokémon"
    mondexheight SPECIES_DEWGONG, "5’07”"
    mondexweight SPECIES_DEWGONG, "264.6 lbs."


mondata SPECIES_GRIMER, "Grimer"
    basestats 80, 80, 50, 25, 40, 50
    types TYPE_POISON, TYPE_POISON
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NUGGET, ITEM_BLACK_SLUDGE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_STENCH, ABILITY_STICKY_HOLD
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GRIMER_TM_DATA_0, SPECIES_GRIMER_TM_DATA_1, SPECIES_GRIMER_TM_DATA_2, SPECIES_GRIMER_TM_DATA_3
    mondexentry SPECIES_GRIMER, "As it moves, it loses bits of its body,\nfrom which new GRIMER emerge.\nThis worsens the stench around it."
    mondexclassification SPECIES_GRIMER, "Sludge Pokémon"
    mondexheight SPECIES_GRIMER, "2’11”"
    mondexweight SPECIES_GRIMER, "66.1 lbs."


mondata SPECIES_MUK, "Muk"
    basestats 105, 105, 75, 50, 65, 100
    types TYPE_POISON, TYPE_POISON
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 1, 1, 0, 0, 0, 0
    items ITEM_NUGGET, ITEM_TOXIC_ORB
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_STENCH, ABILITY_STICKY_HOLD
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_MUK_TM_DATA_0, SPECIES_MUK_TM_DATA_1, SPECIES_MUK_TM_DATA_2, SPECIES_MUK_TM_DATA_3
    mondexentry SPECIES_MUK, "They love to gather in smelly areas\nwhere sludge accumulates, making\nthe stench around them worse."
    mondexclassification SPECIES_MUK, "Sludge Pokémon"
    mondexheight SPECIES_MUK, "3’11”"
    mondexweight SPECIES_MUK, "66.1 lbs."


mondata SPECIES_SHELLDER, "Shellder"
    basestats 30, 65, 100, 40, 45, 25
    types TYPE_WATER, TYPE_WATER
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_PEARL, ITEM_BIG_PEARL
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_SHELL_ARMOR, ABILITY_SKILL_LINK
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SHELLDER_TM_DATA_0, SPECIES_SHELLDER_TM_DATA_1, SPECIES_SHELLDER_TM_DATA_2, SPECIES_SHELLDER_TM_DATA_3
    mondexentry SPECIES_SHELLDER, "It swims facing backward by opening\nand closing its two-piece shell.\nIt is surprisingly fast."
    mondexclassification SPECIES_SHELLDER, "Bivalve Pokémon"
    mondexheight SPECIES_SHELLDER, "1’00”"
    mondexweight SPECIES_SHELLDER, "8.8 lbs."


mondata SPECIES_CLOYSTER, "Cloyster"
    basestats 50, 95, 180, 70, 85, 45
    types TYPE_WATER, TYPE_ICE
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_PEARL, ITEM_BIG_PEARL
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_SHELL_ARMOR, ABILITY_SKILL_LINK
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_CLOYSTER_TM_DATA_0, SPECIES_CLOYSTER_TM_DATA_1, SPECIES_CLOYSTER_TM_DATA_2, SPECIES_CLOYSTER_TM_DATA_3
    mondexentry SPECIES_CLOYSTER, "Once it slams its shell shut,\nit is impossible to open, even by\nthose with superior strength."
    mondexclassification SPECIES_CLOYSTER, "Bivalve Pokémon"
    mondexheight SPECIES_CLOYSTER, "4’11”"
    mondexweight SPECIES_CLOYSTER, "292.1 lbs."


mondata SPECIES_GASTLY, "Gastly"
    basestats 30, 35, 30, 80, 100, 35
    types TYPE_GHOST, TYPE_POISON
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GASTLY_TM_DATA_0, SPECIES_GASTLY_TM_DATA_1, SPECIES_GASTLY_TM_DATA_2, SPECIES_GASTLY_TM_DATA_3
    mondexentry SPECIES_GASTLY, "With its gas-like body, it can sneak\ninto any place it desires. However,\nit can be blown away by wind."
    mondexclassification SPECIES_GASTLY, "Gas Pokémon"
    mondexheight SPECIES_GASTLY, "4’03”"
    mondexweight SPECIES_GASTLY, "0.2 lbs."


mondata SPECIES_HAUNTER, "Haunter"
    basestats 45, 50, 45, 95, 115, 55
    types TYPE_GHOST, TYPE_POISON
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_SPELL_TAG, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_HAUNTER_TM_DATA_0, SPECIES_HAUNTER_TM_DATA_1, SPECIES_HAUNTER_TM_DATA_2, SPECIES_HAUNTER_TM_DATA_3
    mondexentry SPECIES_HAUNTER, "In total darkness, where nothing is\nvisible, HAUNTER lurks, silently\nstalking its next victim."
    mondexclassification SPECIES_HAUNTER, "Gas Pokémon"
    mondexheight SPECIES_HAUNTER, "5’03”"
    mondexweight SPECIES_HAUNTER, "0.2 lbs."


mondata SPECIES_GENGAR, "Gengar"
    basestats 60, 65, 60, 110, 130, 75
    types TYPE_GHOST, TYPE_POISON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_SPELL_TAG, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_CURSED_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GENGAR_TM_DATA_0, SPECIES_GENGAR_TM_DATA_1, SPECIES_GENGAR_TM_DATA_2, SPECIES_GENGAR_TM_DATA_3
    mondexentry SPECIES_GENGAR, "It steals heat from its surroundings.\nIf you feel a sudden chill,\nit is certain that a GENGAR appeared."
    mondexclassification SPECIES_GENGAR, "Shadow Pokémon"
    mondexheight SPECIES_GENGAR, "4’11”"
    mondexweight SPECIES_GENGAR, "89.3 lbs."


mondata SPECIES_ONIX, "Onix"
    basestats 35, 45, 160, 70, 30, 45
    types TYPE_ROCK, TYPE_GROUND
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_HARD_STONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_ROCK_HEAD, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_ONIX_TM_DATA_0, SPECIES_ONIX_TM_DATA_1, SPECIES_ONIX_TM_DATA_2, SPECIES_ONIX_TM_DATA_3
    mondexentry SPECIES_ONIX, "It twists and squirms through\nthe ground. The thunderous roar of\nits tunneling echoes a long way."
    mondexclassification SPECIES_ONIX, "Rock Snake Pokémon"
    mondexheight SPECIES_ONIX, "28’10”"
    mondexweight SPECIES_ONIX, "463.0 lbs."


mondata SPECIES_DROWZEE, "Drowzee"
    basestats 60, 48, 45, 42, 43, 90
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_INSOMNIA, ABILITY_FOREWARN
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_DROWZEE_TM_DATA_0, SPECIES_DROWZEE_TM_DATA_1, SPECIES_DROWZEE_TM_DATA_2, SPECIES_DROWZEE_TM_DATA_3
    mondexentry SPECIES_DROWZEE, "If you think that you had a good dream\nbut you can’t remember it,\na DROWZEE has probably eaten it."
    mondexclassification SPECIES_DROWZEE, "Hypnosis Pokémon"
    mondexheight SPECIES_DROWZEE, "3’03”"
    mondexweight SPECIES_DROWZEE, "71.4 lbs."


mondata SPECIES_HYPNO, "Hypno"
    basestats 85, 73, 70, 67, 73, 115
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_INSOMNIA, ABILITY_FOREWARN
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_HYPNO_TM_DATA_0, SPECIES_HYPNO_TM_DATA_1, SPECIES_HYPNO_TM_DATA_2, SPECIES_HYPNO_TM_DATA_3
    mondexentry SPECIES_HYPNO, "When it is very hungry, it puts\nhumans it meets to sleep,\nthen it feasts on their dreams."
    mondexclassification SPECIES_HYPNO, "Hypnosis Pokémon"
    mondexheight SPECIES_HYPNO, "5’03”"
    mondexweight SPECIES_HYPNO, "166.7 lbs."


mondata SPECIES_KRABBY, "Krabby"
    basestats 30, 105, 90, 50, 25, 25
    types TYPE_WATER, TYPE_WATER
    catchrate 225
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_HYPER_CUTTER, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_KRABBY_TM_DATA_0, SPECIES_KRABBY_TM_DATA_1, SPECIES_KRABBY_TM_DATA_2, SPECIES_KRABBY_TM_DATA_3
    mondexentry SPECIES_KRABBY, "If it senses danger approaching,\nit cloaks itself with bubbles from\nits mouth so it will look bigger."
    mondexclassification SPECIES_KRABBY, "River Crab Pokémon"
    mondexheight SPECIES_KRABBY, "1’04”"
    mondexweight SPECIES_KRABBY, "14.3 lbs."


mondata SPECIES_KINGLER, "Kingler"
    basestats 55, 130, 115, 75, 50, 50
    types TYPE_WATER, TYPE_WATER
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_HYPER_CUTTER, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_KINGLER_TM_DATA_0, SPECIES_KINGLER_TM_DATA_1, SPECIES_KINGLER_TM_DATA_2, SPECIES_KINGLER_TM_DATA_3
    mondexentry SPECIES_KINGLER, "It can hardly lift its massive,\novergrown pincer. The pincer’s size\nmakes it difficult to aim properly."
    mondexclassification SPECIES_KINGLER, "Pincer Pokémon"
    mondexheight SPECIES_KINGLER, "4’03”"
    mondexweight SPECIES_KINGLER, "132.3 lbs."


mondata SPECIES_VOLTORB, "Voltorb"
    basestats 40, 30, 50, 100, 55, 55
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 0 // defined in baseexp.s
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
    tmdata SPECIES_VOLTORB_TM_DATA_0, SPECIES_VOLTORB_TM_DATA_1, SPECIES_VOLTORB_TM_DATA_2, SPECIES_VOLTORB_TM_DATA_3
    mondexentry SPECIES_VOLTORB, "It rolls to move. If the ground is\nuneven, a sudden jolt from hitting\na bump can cause it to explode."
    mondexclassification SPECIES_VOLTORB, "Ball Pokémon"
    mondexheight SPECIES_VOLTORB, "1’08”"
    mondexweight SPECIES_VOLTORB, "22.9 lbs."


mondata SPECIES_ELECTRODE, "Electrode"
    basestats 60, 50, 70, 150, 80, 80
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 60
    baseexp 0 // defined in baseexp.s
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
    tmdata SPECIES_ELECTRODE_TM_DATA_0, SPECIES_ELECTRODE_TM_DATA_1, SPECIES_ELECTRODE_TM_DATA_2, SPECIES_ELECTRODE_TM_DATA_3
    mondexentry SPECIES_ELECTRODE, "It is dangerous. If it has too much\nelectricity and has nothing to do,\nit amuses itself by exploding."
    mondexclassification SPECIES_ELECTRODE, "Ball Pokémon"
    mondexheight SPECIES_ELECTRODE, "3’11”"
    mondexweight SPECIES_ELECTRODE, "146.8 lbs."


mondata SPECIES_EXEGGCUTE, "Exeggcute"
    basestats 60, 40, 80, 40, 60, 45
    types TYPE_GRASS, TYPE_PSYCHIC
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_PSYCHIC_SEED, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_EXEGGCUTE_TM_DATA_0, SPECIES_EXEGGCUTE_TM_DATA_1, SPECIES_EXEGGCUTE_TM_DATA_2, SPECIES_EXEGGCUTE_TM_DATA_3
    mondexentry SPECIES_EXEGGCUTE, "Their shells are very durable. Even if\nthey crack, they can survive without\nspilling their contents."
    mondexclassification SPECIES_EXEGGCUTE, "Egg Pokémon"
    mondexheight SPECIES_EXEGGCUTE, "1’04”"
    mondexweight SPECIES_EXEGGCUTE, "5.5 lbs."


mondata SPECIES_EXEGGUTOR, "Exeggutor"
    basestats 95, 95, 85, 55, 125, 75
    types TYPE_GRASS, TYPE_PSYCHIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_EXEGGUTOR_TM_DATA_0, SPECIES_EXEGGUTOR_TM_DATA_1, SPECIES_EXEGGUTOR_TM_DATA_2, SPECIES_EXEGGUTOR_TM_DATA_3
    mondexentry SPECIES_EXEGGUTOR, "Its three heads think independently.\nHowever, they are friendly and\nnever appear to squabble."
    mondexclassification SPECIES_EXEGGUTOR, "Coconut Pokémon"
    mondexheight SPECIES_EXEGGUTOR, "6’07”"
    mondexweight SPECIES_EXEGGUTOR, "264.6 lbs."


mondata SPECIES_CUBONE, "Cubone"
    basestats 50, 50, 95, 35, 40, 50
    types TYPE_GROUND, TYPE_GROUND
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_THICK_CLUB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_ROCK_HEAD, ABILITY_LIGHTNING_ROD
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_CUBONE_TM_DATA_0, SPECIES_CUBONE_TM_DATA_1, SPECIES_CUBONE_TM_DATA_2, SPECIES_CUBONE_TM_DATA_3
    mondexentry SPECIES_CUBONE, "If it is sad or lonely, the skull\nit wears shakes and emits a plaintive\nand mournful sound."
    mondexclassification SPECIES_CUBONE, "Lonely Pokémon"
    mondexheight SPECIES_CUBONE, "1’04”"
    mondexweight SPECIES_CUBONE, "14.3 lbs."


mondata SPECIES_MAROWAK, "Marowak"
    basestats 60, 80, 110, 45, 50, 80
    types TYPE_GROUND, TYPE_GROUND
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_THICK_CLUB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_ROCK_HEAD, ABILITY_LIGHTNING_ROD
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_MAROWAK_TM_DATA_0, SPECIES_MAROWAK_TM_DATA_1, SPECIES_MAROWAK_TM_DATA_2, SPECIES_MAROWAK_TM_DATA_3
    mondexentry SPECIES_MAROWAK, "It has been seen pounding boulders\nwith the bone it carries in order\nto tap out messages to others."
    mondexclassification SPECIES_MAROWAK, "Bone Keeper Pokémon"
    mondexheight SPECIES_MAROWAK, "3’03”"
    mondexweight SPECIES_MAROWAK, "99.2 lbs."


mondata SPECIES_HITMONLEE, "Hitmonlee"
    basestats 50, 120, 53, 87, 35, 110
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
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
    genderratio 255
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
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_LAGGING_TAIL, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_OWN_TEMPO, ABILITY_OBLIVIOUS
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_LICKITUNG_TM_DATA_0, SPECIES_LICKITUNG_TM_DATA_1, SPECIES_LICKITUNG_TM_DATA_2, SPECIES_LICKITUNG_TM_DATA_3
    mondexentry SPECIES_LICKITUNG, "Its tongue has well-developed\nnerves that run to the very tip,\nso it can be deftly manipulated."
    mondexclassification SPECIES_LICKITUNG, "Licking Pokémon"
    mondexheight SPECIES_LICKITUNG, "3’11”"
    mondexweight SPECIES_LICKITUNG, "144.4 lbs."


mondata SPECIES_KOFFING, "Koffing"
    basestats 40, 65, 95, 35, 60, 45
    types TYPE_POISON, TYPE_POISON
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_SMOKE_BALL, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NEUTRALIZING_GAS
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_KOFFING_TM_DATA_0, SPECIES_KOFFING_TM_DATA_1, SPECIES_KOFFING_TM_DATA_2, SPECIES_KOFFING_TM_DATA_3
    mondexentry SPECIES_KOFFING, "Its thin, filmy body is filled\nwith gases that cause constant\nsniffles, coughs and teary eyes."
    mondexclassification SPECIES_KOFFING, "Poison Gas Pokémon"
    mondexheight SPECIES_KOFFING, "2’00”"
    mondexweight SPECIES_KOFFING, "2.2 lbs."


mondata SPECIES_WEEZING, "Weezing"
    basestats 65, 90, 120, 60, 85, 70
    types TYPE_POISON, TYPE_POISON
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_SMOKE_BALL, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NEUTRALIZING_GAS
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_WEEZING_TM_DATA_0, SPECIES_WEEZING_TM_DATA_1, SPECIES_WEEZING_TM_DATA_2, SPECIES_WEEZING_TM_DATA_3
    mondexentry SPECIES_WEEZING, "If one of the twin KOFFING inflates,\nthe other one deflates. It constantly\nmixes its poisonous gases."
    mondexclassification SPECIES_WEEZING, "Poison Gas Pokémon"
    mondexheight SPECIES_WEEZING, "3’11”"
    mondexweight SPECIES_WEEZING, "20.9 lbs."


mondata SPECIES_RHYHORN, "Rhyhorn"
    basestats 80, 85, 95, 25, 30, 30
    types TYPE_GROUND, TYPE_ROCK
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_LIGHTNING_ROD, ABILITY_ROCK_HEAD
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_RHYHORN_TM_DATA_0, SPECIES_RHYHORN_TM_DATA_1, SPECIES_RHYHORN_TM_DATA_2, SPECIES_RHYHORN_TM_DATA_3
    mondexentry SPECIES_RHYHORN, "It is inept at turning because of\nits four short legs. It can only\ncharge and run in one direction."
    mondexclassification SPECIES_RHYHORN, "Spikes Pokémon"
    mondexheight SPECIES_RHYHORN, "3’03”"
    mondexweight SPECIES_RHYHORN, "253.5 lbs."


mondata SPECIES_RHYDON, "Rhydon"
    basestats 105, 130, 120, 40, 45, 45
    types TYPE_GROUND, TYPE_ROCK
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_LIGHTNING_ROD, ABILITY_ROCK_HEAD
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_RHYDON_TM_DATA_0, SPECIES_RHYDON_TM_DATA_1, SPECIES_RHYDON_TM_DATA_2, SPECIES_RHYDON_TM_DATA_3
    mondexentry SPECIES_RHYDON, "Its rugged hide protects it from\neven the heat of lava. However,\nthe hide also makes it insensitive."
    mondexclassification SPECIES_RHYDON, "Drill Pokémon"
    mondexheight SPECIES_RHYDON, "6’03”"
    mondexweight SPECIES_RHYDON, "264.6 lbs."


mondata SPECIES_CHANSEY, "Chansey"
    basestats 250, 5, 5, 50, 35, 105
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_OVAL_STONE, ITEM_LUCKY_EGG
    genderratio 254
    eggcycles 40
    basefriendship 140
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_NATURAL_CURE, ABILITY_SERENE_GRACE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_CHANSEY_TM_DATA_0, SPECIES_CHANSEY_TM_DATA_1, SPECIES_CHANSEY_TM_DATA_2, SPECIES_CHANSEY_TM_DATA_3
    mondexentry SPECIES_CHANSEY, "It walks carefully to prevent its\negg from breaking. However,\nit is extremely fast at running away."
    mondexclassification SPECIES_CHANSEY, "Egg Pokémon"
    mondexheight SPECIES_CHANSEY, "3’07”"
    mondexweight SPECIES_CHANSEY, "76.3 lbs."


mondata SPECIES_TANGELA, "Tangela"
    basestats 65, 55, 115, 60, 100, 40
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_LEAF_GUARD
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_TANGELA_TM_DATA_0, SPECIES_TANGELA_TM_DATA_1, SPECIES_TANGELA_TM_DATA_2, SPECIES_TANGELA_TM_DATA_3
    mondexentry SPECIES_TANGELA, "The vines that cloak its entire\nbody are always jiggling.\nThey effectively unnerve its foes."
    mondexclassification SPECIES_TANGELA, "Vine Pokémon"
    mondexheight SPECIES_TANGELA, "3’03”"
    mondexweight SPECIES_TANGELA, "77.2 lbs."


mondata SPECIES_KANGASKHAN, "Kangaskhan"
    basestats 105, 95, 80, 90, 40, 80
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_EARLY_BIRD, ABILITY_SCRAPPY
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_KANGASKHAN_TM_DATA_0, SPECIES_KANGASKHAN_TM_DATA_1, SPECIES_KANGASKHAN_TM_DATA_2, SPECIES_KANGASKHAN_TM_DATA_3
    mondexentry SPECIES_KANGASKHAN, "If it is safe, the young gets out of\nthe belly pouch to play. The adult\nkeeps a close eye on the youngster."
    mondexclassification SPECIES_KANGASKHAN, "Parent Pokémon"
    mondexheight SPECIES_KANGASKHAN, "7’03”"
    mondexweight SPECIES_KANGASKHAN, "176.4 lbs."


mondata SPECIES_HORSEA, "Horsea"
    basestats 30, 40, 70, 60, 70, 25
    types TYPE_WATER, TYPE_WATER
    catchrate 225
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_DRAGON_SCALE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_SWIFT_SWIM, ABILITY_SNIPER
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_HORSEA_TM_DATA_0, SPECIES_HORSEA_TM_DATA_1, SPECIES_HORSEA_TM_DATA_2, SPECIES_HORSEA_TM_DATA_3
    mondexentry SPECIES_HORSEA, "If attacked by a larger enemy,\nit quickly swims to safety by adeptly\ncontrolling its well-developed dorsal fin."
    mondexclassification SPECIES_HORSEA, "Dragon Pokémon"
    mondexheight SPECIES_HORSEA, "1’04”"
    mondexweight SPECIES_HORSEA, "17.6 lbs."


mondata SPECIES_SEADRA, "Seadra"
    basestats 55, 65, 95, 85, 95, 45
    types TYPE_WATER, TYPE_WATER
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 1, 0
    items ITEM_DRAGON_SCALE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_POISON_POINT, ABILITY_SNIPER
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SEADRA_TM_DATA_0, SPECIES_SEADRA_TM_DATA_1, SPECIES_SEADRA_TM_DATA_2, SPECIES_SEADRA_TM_DATA_3
    mondexentry SPECIES_SEADRA, "An examination of its cells revealed\nthe presence of a gene not found in\nHORSEA. It became a hot topic."
    mondexclassification SPECIES_SEADRA, "Dragon Pokémon"
    mondexheight SPECIES_SEADRA, "3’11”"
    mondexweight SPECIES_SEADRA, "55.1 lbs."


mondata SPECIES_GOLDEEN, "Goldeen"
    basestats 45, 67, 60, 63, 35, 50
    types TYPE_WATER, TYPE_WATER
    catchrate 225
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_MYSTIC_WATER, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_SWIFT_SWIM, ABILITY_WATER_VEIL
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_GOLDEEN_TM_DATA_0, SPECIES_GOLDEEN_TM_DATA_1, SPECIES_GOLDEEN_TM_DATA_2, SPECIES_GOLDEEN_TM_DATA_3
    mondexentry SPECIES_GOLDEEN, "Its dorsal, pectoral and tail fins\nwave elegantly in water. That is why\nit is known as the water dancer."
    mondexclassification SPECIES_GOLDEEN, "Goldfish Pokémon"
    mondexheight SPECIES_GOLDEEN, "2’00”"
    mondexweight SPECIES_GOLDEEN, "33.1 lbs."


mondata SPECIES_SEAKING, "Seaking"
    basestats 80, 92, 65, 68, 65, 80
    types TYPE_WATER, TYPE_WATER
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_MYSTIC_WATER, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_SWIFT_SWIM, ABILITY_WATER_VEIL
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_SEAKING_TM_DATA_0, SPECIES_SEAKING_TM_DATA_1, SPECIES_SEAKING_TM_DATA_2, SPECIES_SEAKING_TM_DATA_3
    mondexentry SPECIES_SEAKING, "During spawning season, SEAKING\ngather from all over, causing rivers to\nappear a brilliant red."
    mondexclassification SPECIES_SEAKING, "Goldfish Pokémon"
    mondexheight SPECIES_SEAKING, "4’03”"
    mondexweight SPECIES_SEAKING, "86.0 lbs."


mondata SPECIES_STARYU, "Staryu"
    basestats 30, 45, 55, 85, 70, 55
    types TYPE_WATER, TYPE_WATER
    catchrate 225
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_STARDUST, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_ILLUMINATE, ABILITY_NATURAL_CURE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_STARYU_TM_DATA_0, SPECIES_STARYU_TM_DATA_1, SPECIES_STARYU_TM_DATA_2, SPECIES_STARYU_TM_DATA_3
    mondexentry SPECIES_STARYU, "At night, the middle of its body\nslowly flickers with the same\nrhythm as a human heartbeat."
    mondexclassification SPECIES_STARYU, "Star Shape Pokémon"
    mondexheight SPECIES_STARYU, "2’07”"
    mondexweight SPECIES_STARYU, "76.1 lbs."


mondata SPECIES_STARMIE, "Starmie"
    basestats 60, 75, 85, 115, 100, 85
    types TYPE_WATER, TYPE_PSYCHIC
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_STARDUST, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_ILLUMINATE, ABILITY_NATURAL_CURE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_STARMIE_TM_DATA_0, SPECIES_STARMIE_TM_DATA_1, SPECIES_STARMIE_TM_DATA_2, SPECIES_STARMIE_TM_DATA_3
    mondexentry SPECIES_STARMIE, "The middle section of its body is\ncalled the core. It glows in a\ndifferent color each time it is seen."
    mondexclassification SPECIES_STARMIE, "Mysterious Pokémon"
    mondexheight SPECIES_STARMIE, "3’07”"
    mondexweight SPECIES_STARMIE, "176.4 lbs."


mondata SPECIES_MR_MIME, "Mr. Mime"
    basestats 40, 45, 65, 90, 100, 120
    types TYPE_PSYCHIC, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_PSYCHIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_LEPPA_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_SOUNDPROOF, ABILITY_FILTER
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_MR_MIME_TM_DATA_0, SPECIES_MR_MIME_TM_DATA_1, SPECIES_MR_MIME_TM_DATA_2, SPECIES_MR_MIME_TM_DATA_3
    mondexentry SPECIES_MR_MIME, "A skilled mime from birth,\nit gains the ability to create\ninvisible objects as it matures."
    mondexclassification SPECIES_MR_MIME, "Barrier Pokémon"
    mondexheight SPECIES_MR_MIME, "4’03”"
    mondexweight SPECIES_MR_MIME, "120.1 lbs."


mondata SPECIES_SCYTHER, "Scyther"
    basestats 70, 110, 80, 105, 55, 80
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_TECHNICIAN
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SCYTHER_TM_DATA_0, SPECIES_SCYTHER_TM_DATA_1, SPECIES_SCYTHER_TM_DATA_2, SPECIES_SCYTHER_TM_DATA_3
    mondexentry SPECIES_SCYTHER, "It slashes through grass with its\nsharp scythes, moving too fast\nfor the human eye to track."
    mondexclassification SPECIES_SCYTHER, "Mantis Pokémon"
    mondexheight SPECIES_SCYTHER, "4’11”"
    mondexweight SPECIES_SCYTHER, "123.5 lbs."


mondata SPECIES_JYNX, "Jynx"
    basestats 65, 50, 35, 95, 115, 95
    types TYPE_ICE, TYPE_PSYCHIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_ASPEAR_BERRY, ITEM_NONE
    genderratio 254
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_OBLIVIOUS, ABILITY_FOREWARN
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_JYNX_TM_DATA_0, SPECIES_JYNX_TM_DATA_1, SPECIES_JYNX_TM_DATA_2, SPECIES_JYNX_TM_DATA_3
    mondexentry SPECIES_JYNX, "It rocks its body rhythmically.\nIt appears to alter the rhythm\ndepending on how it is feeling."
    mondexclassification SPECIES_JYNX, "Human Shape Pokémon"
    mondexheight SPECIES_JYNX, "4’07”"
    mondexweight SPECIES_JYNX, "89.5 lbs."


mondata SPECIES_ELECTABUZZ, "Electabuzz"
    basestats 65, 83, 57, 105, 95, 85
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_ELECTIRIZER, ITEM_NONE
    genderratio 63
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_STATIC, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_ELECTABUZZ_TM_DATA_0, SPECIES_ELECTABUZZ_TM_DATA_1, SPECIES_ELECTABUZZ_TM_DATA_2, SPECIES_ELECTABUZZ_TM_DATA_3
    mondexentry SPECIES_ELECTABUZZ, "Electricity runs across the surface\nof its body. In darkness, its entire\nbody glows a whitish-blue."
    mondexclassification SPECIES_ELECTABUZZ, "Electric Pokémon"
    mondexheight SPECIES_ELECTABUZZ, "3’07”"
    mondexweight SPECIES_ELECTABUZZ, "66.1 lbs."


mondata SPECIES_MAGMAR, "Magmar"
    basestats 65, 95, 57, 93, 100, 85
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_RAWST_BERRY, ITEM_MAGMARIZER
    genderratio 63
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_FLAME_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_MAGMAR_TM_DATA_0, SPECIES_MAGMAR_TM_DATA_1, SPECIES_MAGMAR_TM_DATA_2, SPECIES_MAGMAR_TM_DATA_3
    mondexentry SPECIES_MAGMAR, "It dislikes cold places, so it blows\nscorching flames to make the\nenvironment suitable for itself."
    mondexclassification SPECIES_MAGMAR, "Spitfire Pokémon"
    mondexheight SPECIES_MAGMAR, "4’03”"
    mondexweight SPECIES_MAGMAR, "98.1 lbs."


mondata SPECIES_PINSIR, "Pinsir"
    basestats 65, 125, 100, 85, 55, 70
    types TYPE_BUG, TYPE_BUG
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_HYPER_CUTTER, ABILITY_MOLD_BREAKER
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_PINSIR_TM_DATA_0, SPECIES_PINSIR_TM_DATA_1, SPECIES_PINSIR_TM_DATA_2, SPECIES_PINSIR_TM_DATA_3
    mondexentry SPECIES_PINSIR, "With its pincer horns, it digs burrows\nto sleep in at night. In the morning,\ndamp soil clings to its body."
    mondexclassification SPECIES_PINSIR, "Stag Beetle Pokémon"
    mondexheight SPECIES_PINSIR, "4’11”"
    mondexweight SPECIES_PINSIR, "121.3 lbs."


mondata SPECIES_TAUROS, "Tauros"
    basestats 75, 100, 95, 110, 40, 70
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
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
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 5
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_DRAGON
    abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_MAGIKARP_TM_DATA_0, SPECIES_MAGIKARP_TM_DATA_1, SPECIES_MAGIKARP_TM_DATA_2, SPECIES_MAGIKARP_TM_DATA_3
    mondexentry SPECIES_MAGIKARP, "An underpowered, pathetic Pokémon.\nIt may jump high on rare occasions,\nbut usually not more than seven feet."
    mondexclassification SPECIES_MAGIKARP, "Fish Pokémon"
    mondexheight SPECIES_MAGIKARP, "2’11”"
    mondexweight SPECIES_MAGIKARP, "22.0 lbs."


mondata SPECIES_GYARADOS, "Gyarados"
    basestats 95, 125, 79, 81, 60, 100
    types TYPE_WATER, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 5
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_DRAGON
    abilities ABILITY_INTIMIDATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_GYARADOS_TM_DATA_0, SPECIES_GYARADOS_TM_DATA_1, SPECIES_GYARADOS_TM_DATA_2, SPECIES_GYARADOS_TM_DATA_3
    mondexentry SPECIES_GYARADOS, "They say that during past strife,\nGYARADOS would appear and leave\nblazing ruins in its wake."
    mondexclassification SPECIES_GYARADOS, "Atrocious Pokémon"
    mondexheight SPECIES_GYARADOS, "21’04”"
    mondexweight SPECIES_GYARADOS, "518.1 lbs."


mondata SPECIES_LAPRAS, "Lapras"
    basestats 130, 85, 80, 60, 85, 95
    types TYPE_WATER, TYPE_ICE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_MYSTIC_WATER, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_WATER_ABSORB, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_LAPRAS_TM_DATA_0, SPECIES_LAPRAS_TM_DATA_1, SPECIES_LAPRAS_TM_DATA_2, SPECIES_LAPRAS_TM_DATA_3
    mondexentry SPECIES_LAPRAS, "They have gentle hearts. Because\nthey rarely fight, many have been\ncaught. Their number has dwindled."
    mondexclassification SPECIES_LAPRAS, "Transport Pokémon"
    mondexheight SPECIES_LAPRAS, "8’02”"
    mondexweight SPECIES_LAPRAS, "485.0 lbs."


mondata SPECIES_DITTO, "Ditto"
    basestats 48, 48, 48, 48, 48, 48
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 35
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_METAL_POWDER, ITEM_QUICK_POWDER
    genderratio 255
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_DITTO, EGG_GROUP_DITTO
    abilities ABILITY_LIMBER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_DITTO_TM_DATA_0, SPECIES_DITTO_TM_DATA_1, SPECIES_DITTO_TM_DATA_2, SPECIES_DITTO_TM_DATA_3
    mondexentry SPECIES_DITTO, "It can transform into anything.\nWhen it sleeps, it changes into a\nstone to avoid being attacked."
    mondexclassification SPECIES_DITTO, "Transform Pokémon"
    mondexheight SPECIES_DITTO, "1’00”"
    mondexweight SPECIES_DITTO, "8.8 lbs."


mondata SPECIES_EEVEE, "Eevee"
    basestats 55, 55, 50, 55, 45, 65
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 35
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_ADAPTABILITY
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_EEVEE_TM_DATA_0, SPECIES_EEVEE_TM_DATA_1, SPECIES_EEVEE_TM_DATA_2, SPECIES_EEVEE_TM_DATA_3
    mondexentry SPECIES_EEVEE, "It has the ability to alter the\ncomposition of its body to suit its\nsurrounding environment."
    mondexclassification SPECIES_EEVEE, "Evolution Pokémon"
    mondexheight SPECIES_EEVEE, "1’00”"
    mondexweight SPECIES_EEVEE, "14.3 lbs."


mondata SPECIES_VAPOREON, "Vaporeon"
    basestats 130, 65, 60, 65, 110, 95
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 35
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_WATER_ABSORB, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_VAPOREON_TM_DATA_0, SPECIES_VAPOREON_TM_DATA_1, SPECIES_VAPOREON_TM_DATA_2, SPECIES_VAPOREON_TM_DATA_3
    mondexentry SPECIES_VAPOREON, "When VAPOREON’s fins begin to\nvibrate, it is a sign that rain\nwill come within a few hours."
    mondexclassification SPECIES_VAPOREON, "Bubble Jet Pokémon"
    mondexheight SPECIES_VAPOREON, "3’03”"
    mondexweight SPECIES_VAPOREON, "63.9 lbs."


mondata SPECIES_JOLTEON, "Jolteon"
    basestats 65, 65, 60, 130, 110, 95
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 35
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_VOLT_ABSORB, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_JOLTEON_TM_DATA_0, SPECIES_JOLTEON_TM_DATA_1, SPECIES_JOLTEON_TM_DATA_2, SPECIES_JOLTEON_TM_DATA_3
    mondexentry SPECIES_JOLTEON, "It concentrates the weak electric\ncharges emitted by its cells and\nlaunches wicked lightning bolts."
    mondexclassification SPECIES_JOLTEON, "Lightning Pokémon"
    mondexheight SPECIES_JOLTEON, "2’07”"
    mondexweight SPECIES_JOLTEON, "54.0 lbs."


mondata SPECIES_FLAREON, "Flareon"
    basestats 65, 130, 60, 65, 95, 110
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 35
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FLASH_FIRE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_FLAREON_TM_DATA_0, SPECIES_FLAREON_TM_DATA_1, SPECIES_FLAREON_TM_DATA_2, SPECIES_FLAREON_TM_DATA_3
    mondexentry SPECIES_FLAREON, "It stores some of the air it inhales in\nits internal flame pouch, which heats it\nto over 3,000 degrees Fahrenheit."
    mondexclassification SPECIES_FLAREON, "Flame Pokémon"
    mondexheight SPECIES_FLAREON, "2’11”"
    mondexweight SPECIES_FLAREON, "55.1 lbs."


mondata SPECIES_PORYGON, "Porygon"
    basestats 65, 60, 70, 40, 85, 75
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_TRACE, ABILITY_DOWNLOAD
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_PORYGON_TM_DATA_0, SPECIES_PORYGON_TM_DATA_1, SPECIES_PORYGON_TM_DATA_2, SPECIES_PORYGON_TM_DATA_3
    mondexentry SPECIES_PORYGON, "It is a manmade Pokémon. Since it\ndoesn’t breathe, people are eager\nto try it in any environment."
    mondexclassification SPECIES_PORYGON, "Virtual Pokémon"
    mondexheight SPECIES_PORYGON, "2’07”"
    mondexweight SPECIES_PORYGON, "80.5 lbs."


mondata SPECIES_OMANYTE, "Omanyte"
    basestats 35, 40, 100, 35, 90, 55
    types TYPE_ROCK, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_SWIFT_SWIM, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_OMANYTE_TM_DATA_0, SPECIES_OMANYTE_TM_DATA_1, SPECIES_OMANYTE_TM_DATA_2, SPECIES_OMANYTE_TM_DATA_3
    mondexentry SPECIES_OMANYTE, "Revived from an ancient fossil,\nthis Pokémon uses air stored in its\nshell to sink and rise in water."
    mondexclassification SPECIES_OMANYTE, "Spiral Pokémon"
    mondexheight SPECIES_OMANYTE, "1’04”"
    mondexweight SPECIES_OMANYTE, "16.5 lbs."


mondata SPECIES_OMASTAR, "Omastar"
    basestats 70, 60, 125, 55, 115, 70
    types TYPE_ROCK, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_SWIFT_SWIM, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_OMASTAR_TM_DATA_0, SPECIES_OMASTAR_TM_DATA_1, SPECIES_OMASTAR_TM_DATA_2, SPECIES_OMASTAR_TM_DATA_3
    mondexentry SPECIES_OMASTAR, "Apparently, it cracked SHELLDER’s\nshell with its sharp fangs and\nsucked out the insides."
    mondexclassification SPECIES_OMASTAR, "Spiral Pokémon"
    mondexheight SPECIES_OMASTAR, "3’03”"
    mondexweight SPECIES_OMASTAR, "77.2 lbs."


mondata SPECIES_KABUTO, "Kabuto"
    basestats 30, 80, 90, 55, 55, 45
    types TYPE_ROCK, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_SWIFT_SWIM, ABILITY_BATTLE_ARMOR
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_KABUTO_TM_DATA_0, SPECIES_KABUTO_TM_DATA_1, SPECIES_KABUTO_TM_DATA_2, SPECIES_KABUTO_TM_DATA_3
    mondexentry SPECIES_KABUTO, "On rare occasions, some have been\nfound as fossils which they became\nwhile hiding on the ocean floor."
    mondexclassification SPECIES_KABUTO, "Shellfish Pokémon"
    mondexheight SPECIES_KABUTO, "1’08”"
    mondexweight SPECIES_KABUTO, "25.4 lbs."


mondata SPECIES_KABUTOPS, "Kabutops"
    basestats 60, 115, 105, 80, 65, 70
    types TYPE_ROCK, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_SWIFT_SWIM, ABILITY_BATTLE_ARMOR
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_KABUTOPS_TM_DATA_0, SPECIES_KABUTOPS_TM_DATA_1, SPECIES_KABUTOPS_TM_DATA_2, SPECIES_KABUTOPS_TM_DATA_3
    mondexentry SPECIES_KABUTOPS, "In the water, it tucks in its limbs\nto become more compact, then it\nwiggles its shell to swim fast."
    mondexclassification SPECIES_KABUTOPS, "Shellfish Pokémon"
    mondexheight SPECIES_KABUTOPS, "4’03”"
    mondexweight SPECIES_KABUTOPS, "89.3 lbs."


mondata SPECIES_AERODACTYL, "Aerodactyl"
    basestats 80, 105, 65, 130, 60, 75
    types TYPE_ROCK, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 35
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_ROCK_HEAD, ABILITY_PRESSURE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_AERODACTYL_TM_DATA_0, SPECIES_AERODACTYL_TM_DATA_1, SPECIES_AERODACTYL_TM_DATA_2, SPECIES_AERODACTYL_TM_DATA_3
    mondexentry SPECIES_AERODACTYL, "A vicious Pokémon from the distant\npast, it appears to have flown by\nspreading its wings and gliding."
    mondexclassification SPECIES_AERODACTYL, "Fossil Pokémon"
    mondexheight SPECIES_AERODACTYL, "5’11”"
    mondexweight SPECIES_AERODACTYL, "130.1 lbs."


mondata SPECIES_SNORLAX, "Snorlax"
    basestats 160, 110, 65, 30, 65, 110
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_CHESTO_BERRY, ITEM_LEFTOVERS
    genderratio 31
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_IMMUNITY, ABILITY_THICK_FAT
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SNORLAX_TM_DATA_0, SPECIES_SNORLAX_TM_DATA_1, SPECIES_SNORLAX_TM_DATA_2, SPECIES_SNORLAX_TM_DATA_3
    mondexentry SPECIES_SNORLAX, "What sounds like its cry may\nactually be its snores or the\nrumblings of its hungry belly."
    mondexclassification SPECIES_SNORLAX, "Sleeping Pokémon"
    mondexheight SPECIES_SNORLAX, "6’11”"
    mondexweight SPECIES_SNORLAX, "1014.1 lbs."


mondata SPECIES_ARTICUNO, "Articuno"
    basestats 90, 85, 100, 85, 95, 125
    types TYPE_ICE, TYPE_FLYING
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 80
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_ARTICUNO_TM_DATA_0, SPECIES_ARTICUNO_TM_DATA_1, SPECIES_ARTICUNO_TM_DATA_2, SPECIES_ARTICUNO_TM_DATA_3
    mondexentry SPECIES_ARTICUNO, "The magnificent, seemingly translucent\nwings of this legendary bird Pokémon\nare said to be made of ice."
    mondexclassification SPECIES_ARTICUNO, "Freeze Pokémon"
    mondexheight SPECIES_ARTICUNO, "5’07”"
    mondexweight SPECIES_ARTICUNO, "122.1 lbs."


mondata SPECIES_ZAPDOS, "Zapdos"
    basestats 90, 90, 85, 100, 125, 90
    types TYPE_ELECTRIC, TYPE_FLYING
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 80
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_ZAPDOS_TM_DATA_0, SPECIES_ZAPDOS_TM_DATA_1, SPECIES_ZAPDOS_TM_DATA_2, SPECIES_ZAPDOS_TM_DATA_3
    mondexentry SPECIES_ZAPDOS, "This legendary bird Pokémon\ncauses savage thunderstorms by\nflapping its glittering wings."
    mondexclassification SPECIES_ZAPDOS, "Electric Pokémon"
    mondexheight SPECIES_ZAPDOS, "5’03”"
    mondexweight SPECIES_ZAPDOS, "116.0 lbs."


mondata SPECIES_MOLTRES, "Moltres"
    basestats 90, 100, 90, 90, 125, 85
    types TYPE_FIRE, TYPE_FLYING
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 80
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_MOLTRES_TM_DATA_0, SPECIES_MOLTRES_TM_DATA_1, SPECIES_MOLTRES_TM_DATA_2, SPECIES_MOLTRES_TM_DATA_3
    mondexentry SPECIES_MOLTRES, "This legendary Pokémon scatters\nembers with every flap of its wings.\nIt is a thrilling sight to behold."
    mondexclassification SPECIES_MOLTRES, "Flame Pokémon"
    mondexheight SPECIES_MOLTRES, "6’07”"
    mondexweight SPECIES_MOLTRES, "132.3 lbs."


mondata SPECIES_DRATINI, "Dratini"
    basestats 41, 64, 45, 50, 50, 50
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_DRAGON_SCALE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_SHED_SKIN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_DRATINI_TM_DATA_0, SPECIES_DRATINI_TM_DATA_1, SPECIES_DRATINI_TM_DATA_2, SPECIES_DRATINI_TM_DATA_3
    mondexentry SPECIES_DRATINI, "It is born large to start with.\nIt repeatedly sheds its skin as it\nsteadily grows longer."
    mondexclassification SPECIES_DRATINI, "Dragon Pokémon"
    mondexheight SPECIES_DRATINI, "5’11”"
    mondexweight SPECIES_DRATINI, "7.3 lbs."


mondata SPECIES_DRAGONAIR, "Dragonair"
    basestats 61, 84, 65, 70, 70, 70
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_DRAGON_SCALE, ITEM_DRAGON_FANG
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_SHED_SKIN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_DRAGONAIR_TM_DATA_0, SPECIES_DRAGONAIR_TM_DATA_1, SPECIES_DRAGONAIR_TM_DATA_2, SPECIES_DRAGONAIR_TM_DATA_3
    mondexentry SPECIES_DRAGONAIR, "They say that if it emits an aura\nfrom its whole body, the weather\nwill begin to change instantly."
    mondexclassification SPECIES_DRAGONAIR, "Dragon Pokémon"
    mondexheight SPECIES_DRAGONAIR, "13’01”"
    mondexweight SPECIES_DRAGONAIR, "36.4 lbs."


mondata SPECIES_DRAGONITE, "Dragonite"
    basestats 91, 134, 95, 80, 100, 100
    types TYPE_DRAGON, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_DRAGON_SCALE, ITEM_DRAGON_FANG
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_INNER_FOCUS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DRAGONITE_TM_DATA_0, SPECIES_DRAGONITE_TM_DATA_1, SPECIES_DRAGONITE_TM_DATA_2, SPECIES_DRAGONITE_TM_DATA_3
    mondexentry SPECIES_DRAGONITE, "It is said that this Pokémon constantly\nflies over the immense seas\nand rescues drowning people."
    mondexclassification SPECIES_DRAGONITE, "Dragon Pokémon"
    mondexheight SPECIES_DRAGONITE, "7’03”"
    mondexweight SPECIES_DRAGONITE, "463.0 lbs."


mondata SPECIES_MEWTWO, "Mewtwo"
    basestats 106, 110, 90, 130, 154, 90
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 3
    baseexp 0 // defined in baseexp.s
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
    tmdata SPECIES_MEWTWO_TM_DATA_0, SPECIES_MEWTWO_TM_DATA_1, SPECIES_MEWTWO_TM_DATA_2, SPECIES_MEWTWO_TM_DATA_3
    mondexentry SPECIES_MEWTWO, "Because its battle abilities were\nraised to the ultimate level,\nit thinks only of defeating its foes."
    mondexclassification SPECIES_MEWTWO, "Genetic Pokémon"
    mondexheight SPECIES_MEWTWO, "6’07”"
    mondexweight SPECIES_MEWTWO, "269.0 lbs."


mondata SPECIES_MEW, "Mew"
    basestats 100, 100, 100, 100, 100, 100
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_LUM_BERRY, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 100
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_SYNCHRONIZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_MEW_TM_DATA_0, SPECIES_MEW_TM_DATA_1, SPECIES_MEW_TM_DATA_2, SPECIES_MEW_TM_DATA_3
    mondexentry SPECIES_MEW, "Apparently, it appears only to\nthose people who are pure of heart\nand have a strong desire to see it."
    mondexclassification SPECIES_MEW, "New Species Pokémon"
    mondexheight SPECIES_MEW, "1’04”"
    mondexweight SPECIES_MEW, "8.8 lbs."


mondata SPECIES_CHIKORITA, "Chikorita"
    basestats 45, 49, 65, 45, 49, 65
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_LUM_BERRY, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CHIKORITA_TM_DATA_0, SPECIES_CHIKORITA_TM_DATA_1, SPECIES_CHIKORITA_TM_DATA_2, SPECIES_CHIKORITA_TM_DATA_3
    mondexentry SPECIES_CHIKORITA, "A sweet aroma gently wafts from\nthe leaf on its head. It is docile\nand loves to soak up sunrays."
    mondexclassification SPECIES_CHIKORITA, "Leaf Pokémon"
    mondexheight SPECIES_CHIKORITA, "2’11”"
    mondexweight SPECIES_CHIKORITA, "14.1 lbs."


mondata SPECIES_BAYLEEF, "Bayleef"
    basestats 60, 62, 80, 60, 63, 80
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BAYLEEF_TM_DATA_0, SPECIES_BAYLEEF_TM_DATA_1, SPECIES_BAYLEEF_TM_DATA_2, SPECIES_BAYLEEF_TM_DATA_3
    mondexentry SPECIES_BAYLEEF, "The scent of spices comes from\naround its neck. Somehow,\nsniffing it makes you want to fight."
    mondexclassification SPECIES_BAYLEEF, "Leaf Pokémon"
    mondexheight SPECIES_BAYLEEF, "3’11”"
    mondexweight SPECIES_BAYLEEF, "34.8 lbs."


mondata SPECIES_MEGANIUM, "Meganium"
    basestats 80, 82, 100, 80, 83, 100
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_MEGANIUM_TM_DATA_0, SPECIES_MEGANIUM_TM_DATA_1, SPECIES_MEGANIUM_TM_DATA_2, SPECIES_MEGANIUM_TM_DATA_3
    mondexentry SPECIES_MEGANIUM, "The aroma that rises from its\npetals contains a substance that\ncalms aggressive feelings."
    mondexclassification SPECIES_MEGANIUM, "Herb Pokémon"
    mondexheight SPECIES_MEGANIUM, "5’11”"
    mondexweight SPECIES_MEGANIUM, "221.6 lbs."


mondata SPECIES_CYNDAQUIL, "Cyndaquil"
    basestats 39, 52, 43, 65, 60, 50
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_CYNDAQUIL_TM_DATA_0, SPECIES_CYNDAQUIL_TM_DATA_1, SPECIES_CYNDAQUIL_TM_DATA_2, SPECIES_CYNDAQUIL_TM_DATA_3
    mondexentry SPECIES_CYNDAQUIL, "It is timid, and always curls itself\nup in a ball. If attacked, it\nflares up its back for protection."
    mondexclassification SPECIES_CYNDAQUIL, "Fire Mouse Pokémon"
    mondexheight SPECIES_CYNDAQUIL, "1’08”"
    mondexweight SPECIES_CYNDAQUIL, "17.4 lbs."


mondata SPECIES_QUILAVA, "Quilava"
    basestats 58, 64, 58, 80, 80, 65
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_QUILAVA_TM_DATA_0, SPECIES_QUILAVA_TM_DATA_1, SPECIES_QUILAVA_TM_DATA_2, SPECIES_QUILAVA_TM_DATA_3
    mondexentry SPECIES_QUILAVA, "Be careful if it turns its back\nduring battle. It means that it will\nattack with the fire on its back."
    mondexclassification SPECIES_QUILAVA, "Volcano Pokémon"
    mondexheight SPECIES_QUILAVA, "2’11”"
    mondexweight SPECIES_QUILAVA, "41.9 lbs."


mondata SPECIES_TYPHLOSION, "Typhlosion"
    basestats 78, 84, 78, 100, 109, 85
    types TYPE_FIRE, TYPE_FIRE
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
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_TYPHLOSION_TM_DATA_0, SPECIES_TYPHLOSION_TM_DATA_1, SPECIES_TYPHLOSION_TM_DATA_2, SPECIES_TYPHLOSION_TM_DATA_3
    mondexentry SPECIES_TYPHLOSION, "If its rage peaks, it becomes so\nhot that anything that touches it\nwill instantly go up in flames."
    mondexclassification SPECIES_TYPHLOSION, "Volcano Pokémon"
    mondexheight SPECIES_TYPHLOSION, "5’07”"
    mondexweight SPECIES_TYPHLOSION, "175.3 lbs."


mondata SPECIES_TOTODILE, "Totodile"
    basestats 50, 65, 64, 43, 44, 48
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_TOTODILE_TM_DATA_0, SPECIES_TOTODILE_TM_DATA_1, SPECIES_TOTODILE_TM_DATA_2, SPECIES_TOTODILE_TM_DATA_3
    mondexentry SPECIES_TOTODILE, "Its powerful, well-developed jaws\nare capable of crushing anything.\nEven its Trainer must be careful."
    mondexclassification SPECIES_TOTODILE, "Big Jaw Pokémon"
    mondexheight SPECIES_TOTODILE, "2’00”"
    mondexweight SPECIES_TOTODILE, "20.9 lbs."


mondata SPECIES_CROCONAW, "Croconaw"
    basestats 65, 80, 80, 58, 59, 63
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CROCONAW_TM_DATA_0, SPECIES_CROCONAW_TM_DATA_1, SPECIES_CROCONAW_TM_DATA_2, SPECIES_CROCONAW_TM_DATA_3
    mondexentry SPECIES_CROCONAW, "If it loses a fang, a new one\ngrows back in its place. There are\nalways 48 fangs lining its mouth."
    mondexclassification SPECIES_CROCONAW, "Big Jaw Pokémon"
    mondexheight SPECIES_CROCONAW, "3’07”"
    mondexweight SPECIES_CROCONAW, "55.1 lbs."


mondata SPECIES_FERALIGATR, "Feraligatr"
    basestats 85, 105, 100, 78, 79, 83
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_FERALIGATR_TM_DATA_0, SPECIES_FERALIGATR_TM_DATA_1, SPECIES_FERALIGATR_TM_DATA_2, SPECIES_FERALIGATR_TM_DATA_3
    mondexentry SPECIES_FERALIGATR, "When it bites with its massive and\npowerful jaws, it shakes its head\nand savagely tears its victim up."
    mondexclassification SPECIES_FERALIGATR, "Big Jaw Pokémon"
    mondexheight SPECIES_FERALIGATR, "7’07”"
    mondexweight SPECIES_FERALIGATR, "195.8 lbs."


mondata SPECIES_SENTRET, "Sentret"
    basestats 35, 46, 34, 20, 35, 45
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_ORAN_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_KEEN_EYE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SENTRET_TM_DATA_0, SPECIES_SENTRET_TM_DATA_1, SPECIES_SENTRET_TM_DATA_2, SPECIES_SENTRET_TM_DATA_3
    mondexentry SPECIES_SENTRET, "A very cautious Pokémon, it raises\nitself up using its tail to get a\nbetter view of its surroundings."
    mondexclassification SPECIES_SENTRET, "Scout Pokémon"
    mondexheight SPECIES_SENTRET, "2’07”"
    mondexweight SPECIES_SENTRET, "13.2 lbs."


mondata SPECIES_FURRET, "Furret"
    basestats 85, 76, 64, 90, 45, 55
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_ORAN_BERRY, ITEM_SITRUS_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_KEEN_EYE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_FURRET_TM_DATA_0, SPECIES_FURRET_TM_DATA_1, SPECIES_FURRET_TM_DATA_2, SPECIES_FURRET_TM_DATA_3
    mondexentry SPECIES_FURRET, "It makes a nest to suit its long and\nskinny body. The nest is impossible\nfor other Pokémon to enter."
    mondexclassification SPECIES_FURRET, "Long Body Pokémon"
    mondexheight SPECIES_FURRET, "5’11”"
    mondexweight SPECIES_FURRET, "71.6 lbs."


mondata SPECIES_HOOTHOOT, "Hoothoot"
    basestats 60, 30, 30, 50, 36, 56
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_INSOMNIA, ABILITY_KEEN_EYE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_HOOTHOOT_TM_DATA_0, SPECIES_HOOTHOOT_TM_DATA_1, SPECIES_HOOTHOOT_TM_DATA_2, SPECIES_HOOTHOOT_TM_DATA_3
    mondexentry SPECIES_HOOTHOOT, "It always stands on one foot.\nIt changes feet so fast,\nthe movement can rarely be seen."
    mondexclassification SPECIES_HOOTHOOT, "Owl Pokémon"
    mondexheight SPECIES_HOOTHOOT, "2’04”"
    mondexweight SPECIES_HOOTHOOT, "46.7 lbs."


mondata SPECIES_NOCTOWL, "Noctowl"
    basestats 100, 50, 50, 70, 86, 96
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_INSOMNIA, ABILITY_KEEN_EYE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NOCTOWL_TM_DATA_0, SPECIES_NOCTOWL_TM_DATA_1, SPECIES_NOCTOWL_TM_DATA_2, SPECIES_NOCTOWL_TM_DATA_3
    mondexentry SPECIES_NOCTOWL, "Its eyes are specially adapted.\nThey concentrate even faint light\nand enable it to see in the dark."
    mondexclassification SPECIES_NOCTOWL, "Owl Pokémon"
    mondexheight SPECIES_NOCTOWL, "5’03”"
    mondexweight SPECIES_NOCTOWL, "89.9 lbs."


mondata SPECIES_LEDYBA, "Ledyba"
    basestats 40, 20, 30, 55, 40, 80
    types TYPE_BUG, TYPE_FLYING
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
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
    mondexentry SPECIES_LEDYBA, "It is very timid. It will be afraid\nto move if it is alone. But it will\nbe active if it is in a group."
    mondexclassification SPECIES_LEDYBA, "Five Star Pokémon"
    mondexheight SPECIES_LEDYBA, "3’03”"
    mondexweight SPECIES_LEDYBA, "23.8 lbs."


mondata SPECIES_LEDIAN, "Ledian"
    basestats 55, 35, 50, 85, 55, 110
    types TYPE_BUG, TYPE_FLYING
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
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
    mondexentry SPECIES_LEDIAN, "When the stars flicker in the\nnight sky, it flutters about,\nscattering a glowing powder."
    mondexclassification SPECIES_LEDIAN, "Five Star Pokémon"
    mondexheight SPECIES_LEDIAN, "4’07”"
    mondexweight SPECIES_LEDIAN, "78.5 lbs."


mondata SPECIES_SPINARAK, "Spinarak"
    basestats 40, 60, 40, 30, 40, 40
    types TYPE_BUG, TYPE_POISON
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
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
    mondexentry SPECIES_SPINARAK, "It lies still in the same pose for\ndays in its web, waiting for its\nunsuspecting prey to wander close."
    mondexclassification SPECIES_SPINARAK, "String Spit Pokémon"
    mondexheight SPECIES_SPINARAK, "1’08”"
    mondexweight SPECIES_SPINARAK, "18.7 lbs."


mondata SPECIES_ARIADOS, "Ariados"
    basestats 70, 90, 70, 40, 60, 70
    types TYPE_BUG, TYPE_POISON
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
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
    mondexentry SPECIES_ARIADOS, "It spins string not only from its\nrear but also from its mouth. It’s\nhard to tell which end is which."
    mondexclassification SPECIES_ARIADOS, "Long Leg Pokémon"
    mondexheight SPECIES_ARIADOS, "3’07”"
    mondexweight SPECIES_ARIADOS, "73.9 lbs."


mondata SPECIES_CROBAT, "Crobat"
    basestats 85, 90, 80, 130, 70, 80
    types TYPE_POISON, TYPE_FLYING
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_INNER_FOCUS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_CROBAT_TM_DATA_0, SPECIES_CROBAT_TM_DATA_1, SPECIES_CROBAT_TM_DATA_2, SPECIES_CROBAT_TM_DATA_3
    mondexentry SPECIES_CROBAT, "It flies so silently through the\ndark on its four wings that it may\nnot be noticed even when nearby."
    mondexclassification SPECIES_CROBAT, "Bat Pokémon"
    mondexheight SPECIES_CROBAT, "5’11”"
    mondexweight SPECIES_CROBAT, "165.3 lbs."


mondata SPECIES_CHINCHOU, "Chinchou"
    basestats 75, 38, 38, 67, 56, 56
    types TYPE_WATER, TYPE_ELECTRIC
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_YELLOW_SHARD, ITEM_DEEPSEASCALE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_VOLT_ABSORB, ABILITY_ILLUMINATE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CHINCHOU_TM_DATA_0, SPECIES_CHINCHOU_TM_DATA_1, SPECIES_CHINCHOU_TM_DATA_2, SPECIES_CHINCHOU_TM_DATA_3
    mondexentry SPECIES_CHINCHOU, "It shoots positive and negative\nelectricity between the tips of its\ntwo antennae and zaps its enemies."
    mondexclassification SPECIES_CHINCHOU, "Angler Pokémon"
    mondexheight SPECIES_CHINCHOU, "1’08”"
    mondexweight SPECIES_CHINCHOU, "26.5 lbs."


mondata SPECIES_LANTURN, "Lanturn"
    basestats 125, 58, 58, 67, 76, 76
    types TYPE_WATER, TYPE_ELECTRIC
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_YELLOW_SHARD, ITEM_DEEPSEASCALE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_VOLT_ABSORB, ABILITY_ILLUMINATE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_LANTURN_TM_DATA_0, SPECIES_LANTURN_TM_DATA_1, SPECIES_LANTURN_TM_DATA_2, SPECIES_LANTURN_TM_DATA_3
    mondexentry SPECIES_LANTURN, "The light it emits is so bright that\nit can illuminate the sea’s surface\nfrom a depth of over three miles."
    mondexclassification SPECIES_LANTURN, "Light Pokémon"
    mondexheight SPECIES_LANTURN, "3’11”"
    mondexweight SPECIES_LANTURN, "49.6 lbs."


mondata SPECIES_PICHU, "Pichu"
    basestats 20, 40, 15, 60, 35, 35
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_ORAN_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_PICHU_TM_DATA_0, SPECIES_PICHU_TM_DATA_1, SPECIES_PICHU_TM_DATA_2, SPECIES_PICHU_TM_DATA_3
    mondexentry SPECIES_PICHU, "It is not yet skilled at storing\nelectricity. It may send out a\njolt if amused or startled."
    mondexclassification SPECIES_PICHU, "Tiny Mouse Pokémon"
    mondexheight SPECIES_PICHU, "1’00”"
    mondexweight SPECIES_PICHU, "4.4 lbs."


mondata SPECIES_CLEFFA, "Cleffa"
    basestats 50, 25, 28, 15, 45, 55
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 150
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_MOON_STONE, ITEM_LEPPA_BERRY
    genderratio 190
    eggcycles 10
    basefriendship 140
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_CUTE_CHARM, ABILITY_MAGIC_GUARD
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_CLEFFA_TM_DATA_0, SPECIES_CLEFFA_TM_DATA_1, SPECIES_CLEFFA_TM_DATA_2, SPECIES_CLEFFA_TM_DATA_3
    mondexentry SPECIES_CLEFFA, "Because of its unusual, starlike\nsilhouette, people believe that\nit came here on a meteor."
    mondexclassification SPECIES_CLEFFA, "Star Shape Pokémon"
    mondexheight SPECIES_CLEFFA, "1’00”"
    mondexweight SPECIES_CLEFFA, "6.6 lbs."


mondata SPECIES_IGGLYBUFF, "Igglybuff"
    basestats 90, 30, 15, 15, 40, 20
    types TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 170
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_ORAN_BERRY, ITEM_NONE
    genderratio 190
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_CUTE_CHARM, ABILITY_COMPETITIVE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_IGGLYBUFF_TM_DATA_0, SPECIES_IGGLYBUFF_TM_DATA_1, SPECIES_IGGLYBUFF_TM_DATA_2, SPECIES_IGGLYBUFF_TM_DATA_3
    mondexentry SPECIES_IGGLYBUFF, "It has a very soft body. If it\nstarts to roll, it will bounce all\nover and be impossible to stop."
    mondexclassification SPECIES_IGGLYBUFF, "Balloon Pokémon"
    mondexheight SPECIES_IGGLYBUFF, "1’00”"
    mondexweight SPECIES_IGGLYBUFF, "2.2 lbs."


mondata SPECIES_TOGEPI, "Togepi"
    basestats 35, 20, 65, 20, 40, 65
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_HUSTLE, ABILITY_SERENE_GRACE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_TOGEPI_TM_DATA_0, SPECIES_TOGEPI_TM_DATA_1, SPECIES_TOGEPI_TM_DATA_2, SPECIES_TOGEPI_TM_DATA_3
    mondexentry SPECIES_TOGEPI, "The shell seems to be filled with\njoy. It is said that it will share\ngood luck when treated kindly."
    mondexclassification SPECIES_TOGEPI, "Spike Ball Pokémon"
    mondexheight SPECIES_TOGEPI, "1’00”"
    mondexweight SPECIES_TOGEPI, "3.3 lbs."


mondata SPECIES_TOGETIC, "Togetic"
    basestats 55, 40, 85, 40, 80, 105
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, TYPE_FLYING
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FAIRY
    abilities ABILITY_HUSTLE, ABILITY_SERENE_GRACE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_TOGETIC_TM_DATA_0, SPECIES_TOGETIC_TM_DATA_1, SPECIES_TOGETIC_TM_DATA_2, SPECIES_TOGETIC_TM_DATA_3
    mondexentry SPECIES_TOGETIC, "They say that it will appear before\nkindhearted, caring people and\nshower them with happiness."
    mondexclassification SPECIES_TOGETIC, "Happiness Pokémon"
    mondexheight SPECIES_TOGETIC, "2’00”"
    mondexweight SPECIES_TOGETIC, "7.1 lbs."


mondata SPECIES_NATU, "Natu"
    basestats 40, 50, 45, 70, 70, 45
    types TYPE_PSYCHIC, TYPE_FLYING
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_SYNCHRONIZE, ABILITY_EARLY_BIRD
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_NATU_TM_DATA_0, SPECIES_NATU_TM_DATA_1, SPECIES_NATU_TM_DATA_2, SPECIES_NATU_TM_DATA_3
    mondexentry SPECIES_NATU, "Because its wings aren’t yet fully\ngrown, it has to hop to get around.\nIt is always staring at something."
    mondexclassification SPECIES_NATU, "Tiny Bird Pokémon"
    mondexheight SPECIES_NATU, "0’08”"
    mondexweight SPECIES_NATU, "4.4 lbs."


mondata SPECIES_XATU, "Xatu"
    basestats 65, 75, 70, 95, 95, 70
    types TYPE_PSYCHIC, TYPE_FLYING
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_SYNCHRONIZE, ABILITY_EARLY_BIRD
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_XATU_TM_DATA_0, SPECIES_XATU_TM_DATA_1, SPECIES_XATU_TM_DATA_2, SPECIES_XATU_TM_DATA_3
    mondexentry SPECIES_XATU, "They say that it stays still and\nquiet because it is seeing both the\npast and future at the same time."
    mondexclassification SPECIES_XATU, "Mystic Pokémon"
    mondexheight SPECIES_XATU, "4’11”"
    mondexweight SPECIES_XATU, "33.1 lbs."


mondata SPECIES_MAREEP, "Mareep"
    basestats 55, 40, 40, 35, 65, 45
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 235
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_STATIC, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_MAREEP_TM_DATA_0, SPECIES_MAREEP_TM_DATA_1, SPECIES_MAREEP_TM_DATA_2, SPECIES_MAREEP_TM_DATA_3
    mondexentry SPECIES_MAREEP, "If static electricity builds in its\nbody, its fleece doubles in volume.\nTouching it will shock you."
    mondexclassification SPECIES_MAREEP, "Wool Pokémon"
    mondexheight SPECIES_MAREEP, "2’00”"
    mondexweight SPECIES_MAREEP, "17.2 lbs."


mondata SPECIES_FLAAFFY, "Flaaffy"
    basestats 70, 55, 55, 45, 80, 60
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
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
    mondexentry SPECIES_FLAAFFY, "As a result of storing too much\nelectricity, it developed patches\nwhere even downy wool won’t grow."
    mondexclassification SPECIES_FLAAFFY, "Wool Pokémon"
    mondexheight SPECIES_FLAAFFY, "2’07”"
    mondexweight SPECIES_FLAAFFY, "29.3 lbs."


mondata SPECIES_AMPHAROS, "Ampharos"
    basestats 90, 75, 85, 55, 115, 90
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
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
    mondexentry SPECIES_AMPHAROS, "The tail’s tip shines brightly and\ncan be seen from far away. It acts\nas a beacon for lost people."
    mondexclassification SPECIES_AMPHAROS, "Light Pokémon"
    mondexheight SPECIES_AMPHAROS, "4’07”"
    mondexweight SPECIES_AMPHAROS, "135.6 lbs."


mondata SPECIES_BELLOSSOM, "Bellossom"
    basestats 75, 80, 95, 50, 90, 100
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_ABSORB_BULB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BELLOSSOM_TM_DATA_0, SPECIES_BELLOSSOM_TM_DATA_1, SPECIES_BELLOSSOM_TM_DATA_2, SPECIES_BELLOSSOM_TM_DATA_3
    mondexentry SPECIES_BELLOSSOM, "BELLOSSOM gather at times and seem\nto dance. They say that the dance\nis a ritual to summon the sun."
    mondexclassification SPECIES_BELLOSSOM, "Flower Pokémon"
    mondexheight SPECIES_BELLOSSOM, "1’04”"
    mondexweight SPECIES_BELLOSSOM, "12.8 lbs."


mondata SPECIES_MARILL, "Marill"
    basestats 70, 20, 50, 40, 20, 50
    types TYPE_WATER, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_WATER
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FAIRY
    abilities ABILITY_THICK_FAT, ABILITY_HUGE_POWER
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_MARILL_TM_DATA_0, SPECIES_MARILL_TM_DATA_1, SPECIES_MARILL_TM_DATA_2, SPECIES_MARILL_TM_DATA_3
    mondexentry SPECIES_MARILL, "The tip of its tail, which contains\noil that is lighter than water,\nlets it swim without drowning."
    mondexclassification SPECIES_MARILL, "Aqua Mouse Pokémon"
    mondexheight SPECIES_MARILL, "1’04”"
    mondexweight SPECIES_MARILL, "18.7 lbs."


mondata SPECIES_AZUMARILL, "Azumarill"
    basestats 100, 50, 80, 50, 60, 80
    types TYPE_WATER, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_WATER
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FAIRY
    abilities ABILITY_THICK_FAT, ABILITY_HUGE_POWER
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_AZUMARILL_TM_DATA_0, SPECIES_AZUMARILL_TM_DATA_1, SPECIES_AZUMARILL_TM_DATA_2, SPECIES_AZUMARILL_TM_DATA_3
    mondexentry SPECIES_AZUMARILL, "By keeping still and listening\nintently, it can tell what is in even\nwild, fast-moving rivers."
    mondexclassification SPECIES_AZUMARILL, "Aqua Rabbit Pokémon"
    mondexheight SPECIES_AZUMARILL, "2’07”"
    mondexweight SPECIES_AZUMARILL, "62.8 lbs."


mondata SPECIES_SUDOWOODO, "Sudowoodo"
    basestats 70, 100, 115, 30, 30, 65
    types TYPE_ROCK, TYPE_ROCK
    catchrate 65
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STURDY, ABILITY_ROCK_HEAD
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SUDOWOODO_TM_DATA_0, SPECIES_SUDOWOODO_TM_DATA_1, SPECIES_SUDOWOODO_TM_DATA_2, SPECIES_SUDOWOODO_TM_DATA_3
    mondexentry SPECIES_SUDOWOODO, "Although it always pretends to be a\ntree, its composition appears more\nsimilar to rock than to vegetation."
    mondexclassification SPECIES_SUDOWOODO, "Imitation Pokémon"
    mondexheight SPECIES_SUDOWOODO, "3’11”"
    mondexweight SPECIES_SUDOWOODO, "83.8 lbs."


mondata SPECIES_POLITOED, "Politoed"
    basestats 90, 75, 75, 70, 90, 100
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_KINGS_ROCK, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_WATER_ABSORB, ABILITY_DAMP
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_POLITOED_TM_DATA_0, SPECIES_POLITOED_TM_DATA_1, SPECIES_POLITOED_TM_DATA_2, SPECIES_POLITOED_TM_DATA_3
    mondexentry SPECIES_POLITOED, "If POLIWAG and POLIWHIRL hear its\nechoing cry, they respond by\ngathering from far and wide."
    mondexclassification SPECIES_POLITOED, "Frog Pokémon"
    mondexheight SPECIES_POLITOED, "3’07”"
    mondexweight SPECIES_POLITOED, "74.7 lbs."


mondata SPECIES_HOPPIP, "Hoppip"
    basestats 35, 35, 40, 50, 35, 55
    types TYPE_GRASS, TYPE_FLYING
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_LEAF_GUARD
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_HOPPIP_TM_DATA_0, SPECIES_HOPPIP_TM_DATA_1, SPECIES_HOPPIP_TM_DATA_2, SPECIES_HOPPIP_TM_DATA_3
    mondexentry SPECIES_HOPPIP, "To keep from being blown away by\nthe wind, they gather in clusters.\nBut they do enjoy gentle breezes."
    mondexclassification SPECIES_HOPPIP, "Cottonweed Pokémon"
    mondexheight SPECIES_HOPPIP, "1’04”"
    mondexweight SPECIES_HOPPIP, "1.1 lbs."


mondata SPECIES_SKIPLOOM, "Skiploom"
    basestats 55, 45, 50, 80, 45, 65
    types TYPE_GRASS, TYPE_FLYING
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_LEAF_GUARD
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SKIPLOOM_TM_DATA_0, SPECIES_SKIPLOOM_TM_DATA_1, SPECIES_SKIPLOOM_TM_DATA_2, SPECIES_SKIPLOOM_TM_DATA_3
    mondexentry SPECIES_SKIPLOOM, "The bloom on top of its head opens\nand closes as the temperature\nfluctuates up and down."
    mondexclassification SPECIES_SKIPLOOM, "Cottonweed Pokémon"
    mondexheight SPECIES_SKIPLOOM, "2’00”"
    mondexweight SPECIES_SKIPLOOM, "2.2 lbs."


mondata SPECIES_JUMPLUFF, "Jumpluff"
    basestats 75, 55, 70, 110, 55, 95
    types TYPE_GRASS, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_LEAF_GUARD
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_JUMPLUFF_TM_DATA_0, SPECIES_JUMPLUFF_TM_DATA_1, SPECIES_JUMPLUFF_TM_DATA_2, SPECIES_JUMPLUFF_TM_DATA_3
    mondexentry SPECIES_JUMPLUFF, "Once it catches the wind, it deftly\ncontrols its cotton-puff spores--\nit can even float around the world."
    mondexclassification SPECIES_JUMPLUFF, "Cottonweed Pokémon"
    mondexheight SPECIES_JUMPLUFF, "2’07”"
    mondexweight SPECIES_JUMPLUFF, "6.6 lbs."


mondata SPECIES_AIPOM, "Aipom"
    basestats 55, 70, 55, 85, 40, 55
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_PICKUP
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_AIPOM_TM_DATA_0, SPECIES_AIPOM_TM_DATA_1, SPECIES_AIPOM_TM_DATA_2, SPECIES_AIPOM_TM_DATA_3
    mondexentry SPECIES_AIPOM, "Its tail is so powerful that it can\nuse it to grab a tree branch and\nhold itself up in the air."
    mondexclassification SPECIES_AIPOM, "Long Tail Pokémon"
    mondexheight SPECIES_AIPOM, "2’07”"
    mondexweight SPECIES_AIPOM, "25.4 lbs."


mondata SPECIES_SUNKERN, "Sunkern"
    basestats 30, 30, 30, 30, 30, 30
    types TYPE_GRASS, TYPE_GRASS
    catchrate 235
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_COBA_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_SOLAR_POWER
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_SUNKERN_TM_DATA_0, SPECIES_SUNKERN_TM_DATA_1, SPECIES_SUNKERN_TM_DATA_2, SPECIES_SUNKERN_TM_DATA_3
    mondexentry SPECIES_SUNKERN, "It may plummet from the sky.\nIf attacked by a SPEAROW,\nit will violently shake its leaves."
    mondexclassification SPECIES_SUNKERN, "Seed Pokémon"
    mondexheight SPECIES_SUNKERN, "1’00”"
    mondexweight SPECIES_SUNKERN, "4.0 lbs."


mondata SPECIES_SUNFLORA, "Sunflora"
    basestats 75, 75, 55, 30, 105, 85
    types TYPE_GRASS, TYPE_GRASS
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
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
    mondexentry SPECIES_SUNFLORA, "It converts sunlight into energy.\nIn the darkness after sunset, it\ncloses its petals and becomes still."
    mondexclassification SPECIES_SUNFLORA, "Sun Pokémon"
    mondexheight SPECIES_SUNFLORA, "2’07”"
    mondexweight SPECIES_SUNFLORA, "18.7 lbs."


mondata SPECIES_YANMA, "Yanma"
    basestats 65, 65, 45, 95, 75, 45
    types TYPE_BUG, TYPE_FLYING
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_WIDE_LENS, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SPEED_BOOST, ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_YANMA_TM_DATA_0, SPECIES_YANMA_TM_DATA_1, SPECIES_YANMA_TM_DATA_2, SPECIES_YANMA_TM_DATA_3
    mondexentry SPECIES_YANMA, "If it flaps its wings really fast,\nit can generate shock waves that\nwill shatter windows in the area."
    mondexclassification SPECIES_YANMA, "Clear Wing Pokémon"
    mondexheight SPECIES_YANMA, "3’11”"
    mondexweight SPECIES_YANMA, "83.8 lbs."


mondata SPECIES_WOOPER, "Wooper"
    basestats 55, 45, 45, 15, 25, 25
    types TYPE_WATER, TYPE_GROUND
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
    mondexentry SPECIES_WOOPER, "This Pokémon lives in cold water.\nIt will leave the water to search\nfor food when it gets cold outside."
    mondexclassification SPECIES_WOOPER, "Water Fish Pokémon"
    mondexheight SPECIES_WOOPER, "1’04”"
    mondexweight SPECIES_WOOPER, "18.7 lbs."


mondata SPECIES_QUAGSIRE, "Quagsire"
    basestats 95, 85, 85, 35, 65, 65
    types TYPE_WATER, TYPE_GROUND
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_DAMP, ABILITY_WATER_ABSORB
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_QUAGSIRE_TM_DATA_0, SPECIES_QUAGSIRE_TM_DATA_1, SPECIES_QUAGSIRE_TM_DATA_2, SPECIES_QUAGSIRE_TM_DATA_3
    mondexentry SPECIES_QUAGSIRE, "This carefree Pokémon has an\neasy-going nature. While swimming,\nit always bumps into boat hulls."
    mondexclassification SPECIES_QUAGSIRE, "Water Fish Pokémon"
    mondexheight SPECIES_QUAGSIRE, "4’07”"
    mondexweight SPECIES_QUAGSIRE, "165.3 lbs."


mondata SPECIES_ESPEON, "Espeon"
    basestats 65, 65, 60, 110, 130, 95
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 35
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SYNCHRONIZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_ESPEON_TM_DATA_0, SPECIES_ESPEON_TM_DATA_1, SPECIES_ESPEON_TM_DATA_2, SPECIES_ESPEON_TM_DATA_3
    mondexentry SPECIES_ESPEON, "It uses the fine hair that covers\nits body to sense air currents and\npredict its enemy’s actions."
    mondexclassification SPECIES_ESPEON, "Sun Pokémon"
    mondexheight SPECIES_ESPEON, "2’11”"
    mondexweight SPECIES_ESPEON, "58.4 lbs."


mondata SPECIES_UMBREON, "Umbreon"
    basestats 95, 65, 110, 65, 60, 130
    types TYPE_DARK, TYPE_DARK
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 35
    basefriendship 35
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SYNCHRONIZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_UMBREON_TM_DATA_0, SPECIES_UMBREON_TM_DATA_1, SPECIES_UMBREON_TM_DATA_2, SPECIES_UMBREON_TM_DATA_3
    mondexentry SPECIES_UMBREON, "When agitated, this Pokémon\nprotects itself by spraying\npoisonous sweat from its pores."
    mondexclassification SPECIES_UMBREON, "Moonlight Pokémon"
    mondexheight SPECIES_UMBREON, "3’03”"
    mondexweight SPECIES_UMBREON, "59.5 lbs."


mondata SPECIES_MURKROW, "Murkrow"
    basestats 60, 85, 42, 91, 85, 42
    types TYPE_DARK, TYPE_FLYING
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_INSOMNIA, ABILITY_SUPER_LUCK
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_MURKROW_TM_DATA_0, SPECIES_MURKROW_TM_DATA_1, SPECIES_MURKROW_TM_DATA_2, SPECIES_MURKROW_TM_DATA_3
    mondexentry SPECIES_MURKROW, "Feared and loathed by many,\nit is believed to bring misfortune to\nall those who see it at night."
    mondexclassification SPECIES_MURKROW, "Darkness Pokémon"
    mondexheight SPECIES_MURKROW, "1’08”"
    mondexweight SPECIES_MURKROW, "4.6 lbs."


mondata SPECIES_SLOWKING, "Slowking"
    basestats 95, 75, 80, 30, 100, 110
    types TYPE_WATER, TYPE_PSYCHIC
    catchrate 70
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_KINGS_ROCK, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_OBLIVIOUS, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_SLOWKING_TM_DATA_0, SPECIES_SLOWKING_TM_DATA_1, SPECIES_SLOWKING_TM_DATA_2, SPECIES_SLOWKING_TM_DATA_3
    mondexentry SPECIES_SLOWKING, "It has incredible intellect and\nintuition. Whatever the situation,\nit remains calm and collected."
    mondexclassification SPECIES_SLOWKING, "Royal Pokémon"
    mondexheight SPECIES_SLOWKING, "6’07”"
    mondexweight SPECIES_SLOWKING, "175.3 lbs."


mondata SPECIES_MISDREAVUS, "Misdreavus"
    basestats 60, 60, 60, 85, 85, 85
    types TYPE_GHOST, TYPE_GHOST
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_SPELL_TAG, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 35
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MISDREAVUS_TM_DATA_0, SPECIES_MISDREAVUS_TM_DATA_1, SPECIES_MISDREAVUS_TM_DATA_2, SPECIES_MISDREAVUS_TM_DATA_3
    mondexentry SPECIES_MISDREAVUS, "It likes playing mischievous tricks,\nsuch as screaming and wailing to\nstartle people at night."
    mondexclassification SPECIES_MISDREAVUS, "Screech Pokémon"
    mondexheight SPECIES_MISDREAVUS, "2’04”"
    mondexweight SPECIES_MISDREAVUS, "2.2 lbs."


mondata SPECIES_UNOWN, "Unown"
    basestats 48, 72, 48, 48, 72, 48
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 225
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_UNOWN_TM_DATA_0, SPECIES_UNOWN_TM_DATA_1, SPECIES_UNOWN_TM_DATA_2, SPECIES_UNOWN_TM_DATA_3
    mondexentry SPECIES_UNOWN, "Their shapes look like hieroglyphs\non ancient tablets. It is said\nthat the two are somehow related."
    mondexclassification SPECIES_UNOWN, "Symbol Pokémon"
    mondexheight SPECIES_UNOWN, "1’08”"
    mondexweight SPECIES_UNOWN, "11.0 lbs."


mondata SPECIES_WOBBUFFET, "Wobbuffet"
    basestats 190, 33, 58, 33, 33, 58
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_SHADOW_TAG, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_WOBBUFFET_TM_DATA_0, SPECIES_WOBBUFFET_TM_DATA_1, SPECIES_WOBBUFFET_TM_DATA_2, SPECIES_WOBBUFFET_TM_DATA_3
    mondexentry SPECIES_WOBBUFFET, "It hates light and shock. If\nattacked, it inflates its body to\nbuild up its counterstrike."
    mondexclassification SPECIES_WOBBUFFET, "Patient Pokémon"
    mondexheight SPECIES_WOBBUFFET, "4’03”"
    mondexweight SPECIES_WOBBUFFET, "62.8 lbs."


mondata SPECIES_GIRAFARIG, "Girafarig"
    basestats 70, 80, 65, 85, 90, 65
    types TYPE_NORMAL, TYPE_PSYCHIC
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_PERSIM_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INNER_FOCUS, ABILITY_EARLY_BIRD
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_GIRAFARIG_TM_DATA_0, SPECIES_GIRAFARIG_TM_DATA_1, SPECIES_GIRAFARIG_TM_DATA_2, SPECIES_GIRAFARIG_TM_DATA_3
    mondexentry SPECIES_GIRAFARIG, "Its tail has a small brain of its\nown. Beware! If you get close, it\nmay react to your scent by biting."
    mondexclassification SPECIES_GIRAFARIG, "Long Neck Pokémon"
    mondexheight SPECIES_GIRAFARIG, "4’11”"
    mondexweight SPECIES_GIRAFARIG, "91.5 lbs."


mondata SPECIES_PINECO, "Pineco"
    basestats 50, 65, 90, 15, 35, 35
    types TYPE_BUG, TYPE_BUG
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_STURDY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_PINECO_TM_DATA_0, SPECIES_PINECO_TM_DATA_1, SPECIES_PINECO_TM_DATA_2, SPECIES_PINECO_TM_DATA_3
    mondexentry SPECIES_PINECO, "It likes to make its shell thicker\nby adding layers of tree bark. The\nadditional weight doesn’t bother it."
    mondexclassification SPECIES_PINECO, "Bagworm Pokémon"
    mondexheight SPECIES_PINECO, "2’00”"
    mondexweight SPECIES_PINECO, "15.9 lbs."


mondata SPECIES_FORRETRESS, "Forretress"
    basestats 75, 90, 140, 40, 60, 60
    types TYPE_BUG, TYPE_STEEL
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_STURDY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_FORRETRESS_TM_DATA_0, SPECIES_FORRETRESS_TM_DATA_1, SPECIES_FORRETRESS_TM_DATA_2, SPECIES_FORRETRESS_TM_DATA_3
    mondexentry SPECIES_FORRETRESS, "Its entire body is shielded by a\nsteel-hard shell. What lurks inside\nthis shell is a total mystery."
    mondexclassification SPECIES_FORRETRESS, "Bagworm Pokémon"
    mondexheight SPECIES_FORRETRESS, "3’11”"
    mondexweight SPECIES_FORRETRESS, "277.3 lbs."


mondata SPECIES_DUNSPARCE, "Dunsparce"
    basestats 100, 70, 70, 45, 65, 65
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SERENE_GRACE, ABILITY_RUN_AWAY
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_DUNSPARCE_TM_DATA_0, SPECIES_DUNSPARCE_TM_DATA_1, SPECIES_DUNSPARCE_TM_DATA_2, SPECIES_DUNSPARCE_TM_DATA_3
    mondexentry SPECIES_DUNSPARCE, "When spotted, this Pokémon escapes\nbackward by furiously boring into\nthe ground with its tail."
    mondexclassification SPECIES_DUNSPARCE, "Land Snake Pokémon"
    mondexheight SPECIES_DUNSPARCE, "4’11”"
    mondexweight SPECIES_DUNSPARCE, "30.9 lbs."


mondata SPECIES_GLIGAR, "Gligar"
    basestats 65, 75, 105, 85, 35, 65
    types TYPE_GROUND, TYPE_FLYING
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
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
    mondexentry SPECIES_GLIGAR, "It flies straight at its target’s\nface, then clamps down on the\nstartled victim to inject poison."
    mondexclassification SPECIES_GLIGAR, "FlyScorpion Pokémon"
    mondexheight SPECIES_GLIGAR, "3’07”"
    mondexweight SPECIES_GLIGAR, "142.9 lbs."


mondata SPECIES_STEELIX, "Steelix"
    basestats 75, 85, 200, 30, 55, 65
    types TYPE_STEEL, TYPE_GROUND
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_METAL_COAT, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_ROCK_HEAD, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_STEELIX_TM_DATA_0, SPECIES_STEELIX_TM_DATA_1, SPECIES_STEELIX_TM_DATA_2, SPECIES_STEELIX_TM_DATA_3
    mondexentry SPECIES_STEELIX, "Its body has been compressed deep\nunder the ground. As a result,\nit is even harder than a diamond."
    mondexclassification SPECIES_STEELIX, "Iron Snake Pokémon"
    mondexheight SPECIES_STEELIX, "30’02”"
    mondexweight SPECIES_STEELIX, "881.8 lbs."


mondata SPECIES_SNUBBULL, "Snubbull"
    basestats 60, 80, 50, 30, 40, 40
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 190
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_INTIMIDATE, ABILITY_RUN_AWAY
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_SNUBBULL_TM_DATA_0, SPECIES_SNUBBULL_TM_DATA_1, SPECIES_SNUBBULL_TM_DATA_2, SPECIES_SNUBBULL_TM_DATA_3
    mondexentry SPECIES_SNUBBULL, "Although it looks frightening, it\nis actually kind and affectionate.\nIt is very popular among women."
    mondexclassification SPECIES_SNUBBULL, "Fairy Pokémon"
    mondexheight SPECIES_SNUBBULL, "2’00”"
    mondexweight SPECIES_SNUBBULL, "17.2 lbs."


mondata SPECIES_GRANBULL, "Granbull"
    basestats 90, 120, 75, 45, 60, 60
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 190
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_INTIMIDATE, ABILITY_QUICK_FEET
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GRANBULL_TM_DATA_0, SPECIES_GRANBULL_TM_DATA_1, SPECIES_GRANBULL_TM_DATA_2, SPECIES_GRANBULL_TM_DATA_3
    mondexentry SPECIES_GRANBULL, "It is actually timid and easily\nspooked. If attacked, it flails\nabout to fend off its attacker."
    mondexclassification SPECIES_GRANBULL, "Fairy Pokémon"
    mondexheight SPECIES_GRANBULL, "4’07”"
    mondexweight SPECIES_GRANBULL, "107.4 lbs."


mondata SPECIES_QWILFISH, "Qwilfish"
    basestats 65, 95, 85, 85, 55, 55
    types TYPE_WATER, TYPE_POISON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_POISON_BARB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_POISON_POINT, ABILITY_SWIFT_SWIM
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_QWILFISH_TM_DATA_0, SPECIES_QWILFISH_TM_DATA_1, SPECIES_QWILFISH_TM_DATA_2, SPECIES_QWILFISH_TM_DATA_3
    mondexentry SPECIES_QWILFISH, "To fire its poison spikes, it must\ninflate its body by drinking over\n2.6 gallons of water all at once."
    mondexclassification SPECIES_QWILFISH, "Balloon Pokémon"
    mondexheight SPECIES_QWILFISH, "1’08”"
    mondexweight SPECIES_QWILFISH, "8.6 lbs."


mondata SPECIES_SCIZOR, "Scizor"
    basestats 70, 130, 100, 65, 55, 80
    types TYPE_BUG, TYPE_STEEL
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_TECHNICIAN
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_SCIZOR_TM_DATA_0, SPECIES_SCIZOR_TM_DATA_1, SPECIES_SCIZOR_TM_DATA_2, SPECIES_SCIZOR_TM_DATA_3
    mondexentry SPECIES_SCIZOR, "It swings its eye-patterned pincers\nup to scare its foes. This makes\nit look like it has three heads."
    mondexclassification SPECIES_SCIZOR, "Pincer Pokémon"
    mondexheight SPECIES_SCIZOR, "5’11”"
    mondexweight SPECIES_SCIZOR, "260.1 lbs."


mondata SPECIES_SHUCKLE, "Shuckle"
    basestats 20, 10, 230, 5, 10, 230
    types TYPE_BUG, TYPE_ROCK
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_BERRY_JUICE, ITEM_ORAN_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_STURDY, ABILITY_GLUTTONY
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_SHUCKLE_TM_DATA_0, SPECIES_SHUCKLE_TM_DATA_1, SPECIES_SHUCKLE_TM_DATA_2, SPECIES_SHUCKLE_TM_DATA_3
    mondexentry SPECIES_SHUCKLE, "The berries it stores in its\nvase-like shell decompose and\nbecome a gooey liquid."
    mondexclassification SPECIES_SHUCKLE, "Mold Pokémon"
    mondexheight SPECIES_SHUCKLE, "2’00”"
    mondexweight SPECIES_SHUCKLE, "45.2 lbs."


mondata SPECIES_HERACROSS, "Heracross"
    basestats 80, 125, 75, 85, 40, 95
    types TYPE_BUG, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_GUTS
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_HERACROSS_TM_DATA_0, SPECIES_HERACROSS_TM_DATA_1, SPECIES_HERACROSS_TM_DATA_2, SPECIES_HERACROSS_TM_DATA_3
    mondexentry SPECIES_HERACROSS, "This powerful Pokémon thrusts\nits prized horn under its enemies’\nbellies, then lifts and throws them."
    mondexclassification SPECIES_HERACROSS, "Single Horn Pokémon"
    mondexheight SPECIES_HERACROSS, "4’11”"
    mondexweight SPECIES_HERACROSS, "119.0 lbs."


mondata SPECIES_SNEASEL, "Sneasel"
    basestats 55, 95, 55, 115, 35, 75
    types TYPE_DARK, TYPE_ICE
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_QUICK_CLAW, ITEM_GRIP_CLAW
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INNER_FOCUS, ABILITY_KEEN_EYE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SNEASEL_TM_DATA_0, SPECIES_SNEASEL_TM_DATA_1, SPECIES_SNEASEL_TM_DATA_2, SPECIES_SNEASEL_TM_DATA_3
    mondexentry SPECIES_SNEASEL, "Its paws conceal sharp claws. If\nattacked, it suddenly extends the\nclaws and startles its enemy."
    mondexclassification SPECIES_SNEASEL, "Sharp Claw Pokémon"
    mondexheight SPECIES_SNEASEL, "2’11”"
    mondexweight SPECIES_SNEASEL, "61.7 lbs."


mondata SPECIES_TEDDIURSA, "Teddiursa"
    basestats 60, 80, 50, 40, 50, 50
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_ORAN_BERRY, ITEM_SITRUS_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PICKUP, ABILITY_QUICK_FEET
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_TEDDIURSA_TM_DATA_0, SPECIES_TEDDIURSA_TM_DATA_1, SPECIES_TEDDIURSA_TM_DATA_2, SPECIES_TEDDIURSA_TM_DATA_3
    mondexentry SPECIES_TEDDIURSA, "If it finds honey, its crescent mark\nglows. It always licks its paws\nbecause they’re soaked with honey."
    mondexclassification SPECIES_TEDDIURSA, "Little Bear Pokémon"
    mondexheight SPECIES_TEDDIURSA, "2’00”"
    mondexweight SPECIES_TEDDIURSA, "19.4 lbs."


mondata SPECIES_URSARING, "Ursaring"
    basestats 90, 130, 75, 55, 75, 75
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_ORAN_BERRY, ITEM_SITRUS_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_GUTS, ABILITY_QUICK_FEET
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_URSARING_TM_DATA_0, SPECIES_URSARING_TM_DATA_1, SPECIES_URSARING_TM_DATA_2, SPECIES_URSARING_TM_DATA_3
    mondexentry SPECIES_URSARING, "Although it is a good climber,\nit prefers to snap trees with its\nforelegs and eat fallen berries."
    mondexclassification SPECIES_URSARING, "Hibernator Pokémon"
    mondexheight SPECIES_URSARING, "5’11”"
    mondexweight SPECIES_URSARING, "277.3 lbs."


mondata SPECIES_SLUGMA, "Slugma"
    basestats 40, 40, 40, 20, 70, 40
    types TYPE_FIRE, TYPE_FIRE
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_MAGMA_ARMOR, ABILITY_FLAME_BODY
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_SLUGMA_TM_DATA_0, SPECIES_SLUGMA_TM_DATA_1, SPECIES_SLUGMA_TM_DATA_2, SPECIES_SLUGMA_TM_DATA_3
    mondexentry SPECIES_SLUGMA, "It never sleeps. It has to keep\nmoving because if it stopped, its\nmagma body would cool and harden."
    mondexclassification SPECIES_SLUGMA, "Lava Pokémon"
    mondexheight SPECIES_SLUGMA, "2’04”"
    mondexweight SPECIES_SLUGMA, "77.2 lbs."


mondata SPECIES_MAGCARGO, "Magcargo"
    basestats 60, 50, 120, 30, 90, 80
    types TYPE_FIRE, TYPE_ROCK
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_MAGMA_ARMOR, ABILITY_FLAME_BODY
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_MAGCARGO_TM_DATA_0, SPECIES_MAGCARGO_TM_DATA_1, SPECIES_MAGCARGO_TM_DATA_2, SPECIES_MAGCARGO_TM_DATA_3
    mondexentry SPECIES_MAGCARGO, "The shell on its back is just skin\nthat has cooled and hardened. It\nbreaks easily with a slight touch."
    mondexclassification SPECIES_MAGCARGO, "Lava Pokémon"
    mondexheight SPECIES_MAGCARGO, "2’07”"
    mondexweight SPECIES_MAGCARGO, "121.3 lbs."


mondata SPECIES_SWINUB, "Swinub"
    basestats 50, 50, 40, 50, 30, 30
    types TYPE_ICE, TYPE_GROUND
    catchrate 225
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_ASPEAR_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OBLIVIOUS, ABILITY_SNOW_CLOAK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SWINUB_TM_DATA_0, SPECIES_SWINUB_TM_DATA_1, SPECIES_SWINUB_TM_DATA_2, SPECIES_SWINUB_TM_DATA_3
    mondexentry SPECIES_SWINUB, "It rubs its snout on the ground to\nfind and dig up food. It sometimes\ndiscovers hot springs."
    mondexclassification SPECIES_SWINUB, "Pig Pokémon"
    mondexheight SPECIES_SWINUB, "1’04”"
    mondexweight SPECIES_SWINUB, "14.3 lbs."


mondata SPECIES_PILOSWINE, "Piloswine"
    basestats 100, 100, 80, 50, 60, 60
    types TYPE_ICE, TYPE_GROUND
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 1, 1, 0, 0, 0, 0
    items ITEM_ASPEAR_BERRY, ITEM_NEVERMELTICE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OBLIVIOUS, ABILITY_SNOW_CLOAK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_PILOSWINE_TM_DATA_0, SPECIES_PILOSWINE_TM_DATA_1, SPECIES_PILOSWINE_TM_DATA_2, SPECIES_PILOSWINE_TM_DATA_3
    mondexentry SPECIES_PILOSWINE, "Because the long hair all over its\nbody obscures its sight, it just\nkeeps charging repeatedly."
    mondexclassification SPECIES_PILOSWINE, "Swine Pokémon"
    mondexheight SPECIES_PILOSWINE, "3’07”"
    mondexweight SPECIES_PILOSWINE, "123.0 lbs."


mondata SPECIES_CORSOLA, "Corsola"
    basestats 65, 55, 95, 35, 65, 95
    types TYPE_WATER, TYPE_ROCK
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_RED_SHARD, ITEM_HARD_STONE
    genderratio 190
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_HUSTLE, ABILITY_NATURAL_CURE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_CORSOLA_TM_DATA_0, SPECIES_CORSOLA_TM_DATA_1, SPECIES_CORSOLA_TM_DATA_2, SPECIES_CORSOLA_TM_DATA_3
    mondexentry SPECIES_CORSOLA, "It continuously sheds and grows.\nThe tip of its head is prized as\na treasure because of its beauty."
    mondexclassification SPECIES_CORSOLA, "Coral Pokémon"
    mondexheight SPECIES_CORSOLA, "2’00”"
    mondexweight SPECIES_CORSOLA, "11.0 lbs."


mondata SPECIES_REMORAID, "Remoraid"
    basestats 35, 65, 35, 65, 65, 35
    types TYPE_WATER, TYPE_WATER
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_2
    abilities ABILITY_HUSTLE, ABILITY_SNIPER
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_REMORAID_TM_DATA_0, SPECIES_REMORAID_TM_DATA_1, SPECIES_REMORAID_TM_DATA_2, SPECIES_REMORAID_TM_DATA_3
    mondexentry SPECIES_REMORAID, "It has superb accuracy. The water\nit shoots out can strike moving\nprey from more than 300 feet away."
    mondexclassification SPECIES_REMORAID, "Jet Pokémon"
    mondexheight SPECIES_REMORAID, "2’00”"
    mondexweight SPECIES_REMORAID, "26.5 lbs."


mondata SPECIES_OCTILLERY, "Octillery"
    basestats 75, 105, 75, 45, 105, 75
    types TYPE_WATER, TYPE_WATER
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_2
    abilities ABILITY_SUCTION_CUPS, ABILITY_SNIPER
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_OCTILLERY_TM_DATA_0, SPECIES_OCTILLERY_TM_DATA_1, SPECIES_OCTILLERY_TM_DATA_2, SPECIES_OCTILLERY_TM_DATA_3
    mondexentry SPECIES_OCTILLERY, "It traps foes with the suction cups\non its tentacles, then smashes\nthem with its rock-hard head."
    mondexclassification SPECIES_OCTILLERY, "Jet Pokémon"
    mondexheight SPECIES_OCTILLERY, "2’11”"
    mondexweight SPECIES_OCTILLERY, "62.8 lbs."


mondata SPECIES_DELIBIRD, "Delibird"
    basestats 45, 55, 45, 75, 65, 45
    types TYPE_ICE, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_VITAL_SPIRIT, ABILITY_HUSTLE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_DELIBIRD_TM_DATA_0, SPECIES_DELIBIRD_TM_DATA_1, SPECIES_DELIBIRD_TM_DATA_2, SPECIES_DELIBIRD_TM_DATA_3
    mondexentry SPECIES_DELIBIRD, "It carries food all day long.\nThere are tales about lost people\nwho were saved by its stored food."
    mondexclassification SPECIES_DELIBIRD, "Delivery Pokémon"
    mondexheight SPECIES_DELIBIRD, "2’11”"
    mondexweight SPECIES_DELIBIRD, "35.3 lbs."


mondata SPECIES_MANTINE, "Mantine"
    basestats 85, 40, 70, 70, 80, 140
    types TYPE_WATER, TYPE_FLYING
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_SWIFT_SWIM, ABILITY_WATER_ABSORB
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_MANTINE_TM_DATA_0, SPECIES_MANTINE_TM_DATA_1, SPECIES_MANTINE_TM_DATA_2, SPECIES_MANTINE_TM_DATA_3
    mondexentry SPECIES_MANTINE, "As it majestically swims, it doesn’t\ncare if REMORAID attach to it for\nscavenging its leftovers."
    mondexclassification SPECIES_MANTINE, "Kite Pokémon"
    mondexheight SPECIES_MANTINE, "6’11”"
    mondexweight SPECIES_MANTINE, "485.0 lbs."


mondata SPECIES_SKARMORY, "Skarmory"
    basestats 65, 80, 140, 70, 40, 70
    types TYPE_STEEL, TYPE_FLYING
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_METAL_COAT, ITEM_SHARP_BEAK
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_SKARMORY_TM_DATA_0, SPECIES_SKARMORY_TM_DATA_1, SPECIES_SKARMORY_TM_DATA_2, SPECIES_SKARMORY_TM_DATA_3
    mondexentry SPECIES_SKARMORY, "Its sturdy wings look heavy, but\nthey are actually hollow and light,\nallowing it to fly freely in the sky."
    mondexclassification SPECIES_SKARMORY, "Armor Bird Pokémon"
    mondexheight SPECIES_SKARMORY, "5’07”"
    mondexweight SPECIES_SKARMORY, "111.3 lbs."


mondata SPECIES_HOUNDOUR, "Houndour"
    basestats 45, 60, 30, 65, 80, 50
    types TYPE_DARK, TYPE_FIRE
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_EARLY_BIRD, ABILITY_FLASH_FIRE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_HOUNDOUR_TM_DATA_0, SPECIES_HOUNDOUR_TM_DATA_1, SPECIES_HOUNDOUR_TM_DATA_2, SPECIES_HOUNDOUR_TM_DATA_3
    mondexentry SPECIES_HOUNDOUR, "It uses different kinds of cries for\ncommunicating with others of its\nkind and for pursuing its prey."
    mondexclassification SPECIES_HOUNDOUR, "Dark Pokémon"
    mondexheight SPECIES_HOUNDOUR, "2’00”"
    mondexweight SPECIES_HOUNDOUR, "23.8 lbs."


mondata SPECIES_HOUNDOOM, "Houndoom"
    basestats 75, 90, 50, 95, 110, 80
    types TYPE_DARK, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_EARLY_BIRD, ABILITY_FLASH_FIRE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_HOUNDOOM_TM_DATA_0, SPECIES_HOUNDOOM_TM_DATA_1, SPECIES_HOUNDOOM_TM_DATA_2, SPECIES_HOUNDOOM_TM_DATA_3
    mondexentry SPECIES_HOUNDOOM, "If you are burned by the flames\nit shoots from its mouth,\nthe pain will never go away."
    mondexclassification SPECIES_HOUNDOOM, "Dark Pokémon"
    mondexheight SPECIES_HOUNDOOM, "4’07”"
    mondexweight SPECIES_HOUNDOOM, "77.2 lbs."


mondata SPECIES_KINGDRA, "Kingdra"
    basestats 75, 95, 95, 85, 95, 95
    types TYPE_WATER, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 1, 1
    items ITEM_DRAGON_SCALE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_SWIFT_SWIM, ABILITY_SNIPER
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_KINGDRA_TM_DATA_0, SPECIES_KINGDRA_TM_DATA_1, SPECIES_KINGDRA_TM_DATA_2, SPECIES_KINGDRA_TM_DATA_3
    mondexentry SPECIES_KINGDRA, "It is said that it usually hides in\nunderwater caves. It can create\nwhirlpools by yawning."
    mondexclassification SPECIES_KINGDRA, "Dragon Pokémon"
    mondexheight SPECIES_KINGDRA, "5’11”"
    mondexweight SPECIES_KINGDRA, "335.1 lbs."


mondata SPECIES_PHANPY, "Phanpy"
    basestats 90, 60, 60, 40, 40, 40
    types TYPE_GROUND, TYPE_GROUND
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_PASSHO_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PICKUP, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_PHANPY_TM_DATA_0, SPECIES_PHANPY_TM_DATA_1, SPECIES_PHANPY_TM_DATA_2, SPECIES_PHANPY_TM_DATA_3
    mondexentry SPECIES_PHANPY, "It swings its long snout around\nplayfully, but because it is so\nstrong, that can be dangerous."
    mondexclassification SPECIES_PHANPY, "Long Nose Pokémon"
    mondexheight SPECIES_PHANPY, "1’08”"
    mondexweight SPECIES_PHANPY, "73.9 lbs."


mondata SPECIES_DONPHAN, "Donphan"
    basestats 90, 120, 120, 50, 60, 60
    types TYPE_GROUND, TYPE_GROUND
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 1, 0, 0, 0
    items ITEM_PASSHO_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_STURDY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_DONPHAN_TM_DATA_0, SPECIES_DONPHAN_TM_DATA_1, SPECIES_DONPHAN_TM_DATA_2, SPECIES_DONPHAN_TM_DATA_3
    mondexentry SPECIES_DONPHAN, "It has sharp, hard tusks and a\nrugged hide. Its tackle is strong\nenough to knock down a house."
    mondexclassification SPECIES_DONPHAN, "Armor Pokémon"
    mondexheight SPECIES_DONPHAN, "3’07”"
    mondexweight SPECIES_DONPHAN, "264.6 lbs."


mondata SPECIES_PORYGON2, "Porygon2"
    basestats 85, 80, 90, 60, 105, 95
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_UP_GRADE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_TRACE, ABILITY_DOWNLOAD
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_PORYGON2_TM_DATA_0, SPECIES_PORYGON2_TM_DATA_1, SPECIES_PORYGON2_TM_DATA_2, SPECIES_PORYGON2_TM_DATA_3
    mondexentry SPECIES_PORYGON2, "This upgraded version of PORYGON\nis designed for space exploration.\nIt can’t fly, however."
    mondexclassification SPECIES_PORYGON2, "Virtual Pokémon"
    mondexheight SPECIES_PORYGON2, "2’00”"
    mondexweight SPECIES_PORYGON2, "71.6 lbs."


mondata SPECIES_STANTLER, "Stantler"
    basestats 73, 95, 62, 85, 85, 65
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_STANTLER_TM_DATA_0, SPECIES_STANTLER_TM_DATA_1, SPECIES_STANTLER_TM_DATA_2, SPECIES_STANTLER_TM_DATA_3
    mondexentry SPECIES_STANTLER, "The curved antlers subtly change\nthe flow of air to create a strange\nspace where reality is distorted."
    mondexclassification SPECIES_STANTLER, "Big Horn Pokémon"
    mondexheight SPECIES_STANTLER, "4’07”"
    mondexweight SPECIES_STANTLER, "157.0 lbs."


mondata SPECIES_SMEARGLE, "Smeargle"
    basestats 55, 20, 35, 75, 20, 45
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OWN_TEMPO, ABILITY_TECHNICIAN
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SMEARGLE_TM_DATA_0, SPECIES_SMEARGLE_TM_DATA_1, SPECIES_SMEARGLE_TM_DATA_2, SPECIES_SMEARGLE_TM_DATA_3
    mondexentry SPECIES_SMEARGLE, "A special fluid oozes from the tip\nof its tail. It paints the fluid\neverywhere to mark its territory."
    mondexclassification SPECIES_SMEARGLE, "Painter Pokémon"
    mondexheight SPECIES_SMEARGLE, "3’11”"
    mondexweight SPECIES_SMEARGLE, "127.9 lbs."


mondata SPECIES_TYROGUE, "Tyrogue"
    basestats 35, 35, 35, 35, 35, 35
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
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
    genderratio 255
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
    types TYPE_ICE, TYPE_PSYCHIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_ASPEAR_BERRY, ITEM_NONE
    genderratio 254
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_OBLIVIOUS, ABILITY_FOREWARN
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_SMOOCHUM_TM_DATA_0, SPECIES_SMOOCHUM_TM_DATA_1, SPECIES_SMOOCHUM_TM_DATA_2, SPECIES_SMOOCHUM_TM_DATA_3
    mondexentry SPECIES_SMOOCHUM, "Its lips are the most sensitive\npart of its body. It always uses\nits lips first to examine things."
    mondexclassification SPECIES_SMOOCHUM, "Kiss Pokémon"
    mondexheight SPECIES_SMOOCHUM, "1’04”"
    mondexweight SPECIES_SMOOCHUM, "13.2 lbs."


mondata SPECIES_ELEKID, "Elekid"
    basestats 45, 63, 37, 95, 65, 55
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_ELECTIRIZER, ITEM_NONE
    genderratio 63
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_ELEKID_TM_DATA_0, SPECIES_ELEKID_TM_DATA_1, SPECIES_ELEKID_TM_DATA_2, SPECIES_ELEKID_TM_DATA_3
    mondexentry SPECIES_ELEKID, "It rotates its arms to generate\nelectricity, but it tires easily,\nso it only charges up a little bit."
    mondexclassification SPECIES_ELEKID, "Electric Pokémon"
    mondexheight SPECIES_ELEKID, "2’00”"
    mondexweight SPECIES_ELEKID, "51.8 lbs."


mondata SPECIES_MAGBY, "Magby"
    basestats 45, 75, 37, 83, 70, 55
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_RAWST_BERRY, ITEM_MAGMARIZER
    genderratio 63
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_FLAME_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_MAGBY_TM_DATA_0, SPECIES_MAGBY_TM_DATA_1, SPECIES_MAGBY_TM_DATA_2, SPECIES_MAGBY_TM_DATA_3
    mondexentry SPECIES_MAGBY, "Each and every time it inhales\nand exhales, hot embers dribble\nfrom its mouth and nostrils."
    mondexclassification SPECIES_MAGBY, "Live Coal Pokémon"
    mondexheight SPECIES_MAGBY, "2’04”"
    mondexweight SPECIES_MAGBY, "47.2 lbs."


mondata SPECIES_MILTANK, "Miltank"
    basestats 95, 80, 105, 100, 40, 70
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_MOOMOO_MILK, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_THICK_FAT, ABILITY_SCRAPPY
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_MILTANK_TM_DATA_0, SPECIES_MILTANK_TM_DATA_1, SPECIES_MILTANK_TM_DATA_2, SPECIES_MILTANK_TM_DATA_3
    mondexentry SPECIES_MILTANK, "Its milk is packed with nutrition,\nmaking it the ultimate beverage\nfor the sick or weary."
    mondexclassification SPECIES_MILTANK, "Milk Cow Pokémon"
    mondexheight SPECIES_MILTANK, "3’11”"
    mondexweight SPECIES_MILTANK, "166.4 lbs."


mondata SPECIES_BLISSEY, "Blissey"
    basestats 255, 10, 10, 55, 75, 135
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_OVAL_STONE, ITEM_LUCKY_EGG
    genderratio 254
    eggcycles 40
    basefriendship 140
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_NATURAL_CURE, ABILITY_SERENE_GRACE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_BLISSEY_TM_DATA_0, SPECIES_BLISSEY_TM_DATA_1, SPECIES_BLISSEY_TM_DATA_2, SPECIES_BLISSEY_TM_DATA_3
    mondexentry SPECIES_BLISSEY, "Anyone who takes even one taste of\nBLISSEY’s egg becomes unfailingly\ncaring and pleasant to everyone."
    mondexclassification SPECIES_BLISSEY, "Happiness Pokémon"
    mondexheight SPECIES_BLISSEY, "4’11”"
    mondexweight SPECIES_BLISSEY, "103.2 lbs."


mondata SPECIES_RAIKOU, "Raikou"
    basestats 90, 85, 75, 115, 115, 100
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 1, 0
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
    mondexentry SPECIES_RAIKOU, "The rain clouds it carries let it\nfire thunderbolts at will. They say\nthat it descended with lightning."
    mondexclassification SPECIES_RAIKOU, "Thunder Pokémon"
    mondexheight SPECIES_RAIKOU, "6’03”"
    mondexweight SPECIES_RAIKOU, "392.4 lbs."


mondata SPECIES_ENTEI, "Entei"
    basestats 115, 115, 85, 100, 90, 75
    types TYPE_FIRE, TYPE_FIRE
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 1, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 80
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_ENTEI_TM_DATA_0, SPECIES_ENTEI_TM_DATA_1, SPECIES_ENTEI_TM_DATA_2, SPECIES_ENTEI_TM_DATA_3
    mondexentry SPECIES_ENTEI, "Volcanoes erupt when it barks.\nUnable to contain its sheer power,\nit races headlong around the land."
    mondexclassification SPECIES_ENTEI, "Volcano Pokémon"
    mondexheight SPECIES_ENTEI, "6’11”"
    mondexweight SPECIES_ENTEI, "436.5 lbs."


mondata SPECIES_SUICUNE, "Suicune"
    basestats 100, 75, 115, 85, 90, 115
    types TYPE_WATER, TYPE_WATER
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 2
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
    mondexentry SPECIES_SUICUNE, "Said to be the embodiment of\nnorth winds, it can instantly\npurify filthy, murky water."
    mondexclassification SPECIES_SUICUNE, "Aurora Pokémon"
    mondexheight SPECIES_SUICUNE, "6’07”"
    mondexweight SPECIES_SUICUNE, "412.3 lbs."


mondata SPECIES_LARVITAR, "Larvitar"
    basestats 50, 64, 50, 41, 45, 50
    types TYPE_ROCK, TYPE_GROUND
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_GUTS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_LARVITAR_TM_DATA_0, SPECIES_LARVITAR_TM_DATA_1, SPECIES_LARVITAR_TM_DATA_2, SPECIES_LARVITAR_TM_DATA_3
    mondexentry SPECIES_LARVITAR, "It feeds on soil. After it has eaten\na large mountain, it falls asleep\nso it can grow."
    mondexclassification SPECIES_LARVITAR, "Rock Skin Pokémon"
    mondexheight SPECIES_LARVITAR, "2’00”"
    mondexweight SPECIES_LARVITAR, "158.7 lbs."


mondata SPECIES_PUPITAR, "Pupitar"
    basestats 70, 84, 70, 51, 65, 70
    types TYPE_ROCK, TYPE_GROUND
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
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
    mondexentry SPECIES_PUPITAR, "Its shell is as hard as sheet rock,\nand it is also very strong. Its\nthrashing can topple a mountain."
    mondexclassification SPECIES_PUPITAR, "Hard Shell Pokémon"
    mondexheight SPECIES_PUPITAR, "3’11”"
    mondexweight SPECIES_PUPITAR, "335.1 lbs."


mondata SPECIES_TYRANITAR, "Tyranitar"
    basestats 100, 134, 110, 61, 95, 100
    types TYPE_ROCK, TYPE_DARK
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
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
    mondexentry SPECIES_TYRANITAR, "Its body can’t be harmed by any\nsort of attack, so it is very eager\nto make challenges against enemies."
    mondexclassification SPECIES_TYRANITAR, "Armor Pokémon"
    mondexheight SPECIES_TYRANITAR, "6’07”"
    mondexweight SPECIES_TYRANITAR, "445.3 lbs."


mondata SPECIES_LUGIA, "Lugia"
    basestats 106, 90, 130, 110, 90, 154
    types TYPE_PSYCHIC, TYPE_FLYING
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
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
    mondexentry SPECIES_LUGIA, "It is said that it quietly spends its\ntime deep at the bottom of the sea\nbecause its powers are too strong."
    mondexclassification SPECIES_LUGIA, "Diving Pokémon"
    mondexheight SPECIES_LUGIA, "17’01”"
    mondexweight SPECIES_LUGIA, "476.2 lbs."


mondata SPECIES_HO_OH, "Ho-oh"
    basestats 106, 130, 90, 90, 110, 154
    types TYPE_FIRE, TYPE_FLYING
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_SACRED_ASH, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_HO_OH_TM_DATA_0, SPECIES_HO_OH_TM_DATA_1, SPECIES_HO_OH_TM_DATA_2, SPECIES_HO_OH_TM_DATA_3
    mondexentry SPECIES_HO_OH, "Legends claim this Pokémon flies the\nworld’s skies continuously on its\nmagnificent, seven-colored wings."
    mondexclassification SPECIES_HO_OH, "Rainbow Pokémon"
    mondexheight SPECIES_HO_OH, "12’06”"
    mondexweight SPECIES_HO_OH, "438.7 lbs."


mondata SPECIES_CELEBI, "Celebi"
    basestats 100, 100, 100, 100, 100, 100
    types TYPE_PSYCHIC, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_LUM_BERRY, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 100
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_NATURAL_CURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CELEBI_TM_DATA_0, SPECIES_CELEBI_TM_DATA_1, SPECIES_CELEBI_TM_DATA_2, SPECIES_CELEBI_TM_DATA_3
    mondexentry SPECIES_CELEBI, "This Pokémon wanders across time.\nGrass and trees flourish in the\nforests in which it has appeared."
    mondexclassification SPECIES_CELEBI, "Time Travel Pokémon"
    mondexheight SPECIES_CELEBI, "2’00”"
    mondexweight SPECIES_CELEBI, "11.0 lbs."


mondata SPECIES_TREECKO, "Treecko"
    basestats 40, 45, 35, 70, 65, 55
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_TREECKO_TM_DATA_0, SPECIES_TREECKO_TM_DATA_1, SPECIES_TREECKO_TM_DATA_2, SPECIES_TREECKO_TM_DATA_3
    mondexentry SPECIES_TREECKO, "Small hooks on the bottom of its\nfeet catch on walls and ceilings.\nThat is how it can hang from above."
    mondexclassification SPECIES_TREECKO, "Wood Gecko Pokémon"
    mondexheight SPECIES_TREECKO, "1’08”"
    mondexweight SPECIES_TREECKO, "11.0 lbs."


mondata SPECIES_GROVYLE, "Grovyle"
    basestats 50, 65, 45, 95, 85, 65
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_GROVYLE_TM_DATA_0, SPECIES_GROVYLE_TM_DATA_1, SPECIES_GROVYLE_TM_DATA_2, SPECIES_GROVYLE_TM_DATA_3
    mondexentry SPECIES_GROVYLE, "It leaps from tree branch to tree\nbranch quite swiftly. It shows\nastounding agility."
    mondexclassification SPECIES_GROVYLE, "Wood Gecko Pokémon"
    mondexheight SPECIES_GROVYLE, "2’11”"
    mondexweight SPECIES_GROVYLE, "47.6 lbs."


mondata SPECIES_SCEPTILE, "Sceptile"
    basestats 70, 85, 65, 120, 105, 85
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SCEPTILE_TM_DATA_0, SPECIES_SCEPTILE_TM_DATA_1, SPECIES_SCEPTILE_TM_DATA_2, SPECIES_SCEPTILE_TM_DATA_3
    mondexentry SPECIES_SCEPTILE, "It agilely leaps about the jungle\nand uses the sharp leaves on its\narms to strike its prey."
    mondexclassification SPECIES_SCEPTILE, "Forest Pokémon"
    mondexheight SPECIES_SCEPTILE, "5’07”"
    mondexweight SPECIES_SCEPTILE, "115.1 lbs."


mondata SPECIES_TORCHIC, "Torchic"
    basestats 45, 60, 40, 45, 70, 50
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_TORCHIC_TM_DATA_0, SPECIES_TORCHIC_TM_DATA_1, SPECIES_TORCHIC_TM_DATA_2, SPECIES_TORCHIC_TM_DATA_3
    mondexentry SPECIES_TORCHIC, "Inside its body is a place where it\nkeeps a small flame. Hug it! It will\nbe as warm as a hot-water bottle."
    mondexclassification SPECIES_TORCHIC, "Chick Pokémon"
    mondexheight SPECIES_TORCHIC, "1’04”"
    mondexweight SPECIES_TORCHIC, "5.5 lbs."


mondata SPECIES_COMBUSKEN, "Combusken"
    basestats 60, 85, 60, 55, 85, 60
    types TYPE_FIRE, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_COMBUSKEN_TM_DATA_0, SPECIES_COMBUSKEN_TM_DATA_1, SPECIES_COMBUSKEN_TM_DATA_2, SPECIES_COMBUSKEN_TM_DATA_3
    mondexentry SPECIES_COMBUSKEN, "During a battle, the hot flame in\nits body increases. Its kicks have\noutstanding destructive power."
    mondexclassification SPECIES_COMBUSKEN, "Young Fowl Pokémon"
    mondexheight SPECIES_COMBUSKEN, "2’11”"
    mondexweight SPECIES_COMBUSKEN, "43.0 lbs."


mondata SPECIES_BLAZIKEN, "Blaziken"
    basestats 80, 120, 70, 80, 110, 70
    types TYPE_FIRE, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_BLAZIKEN_TM_DATA_0, SPECIES_BLAZIKEN_TM_DATA_1, SPECIES_BLAZIKEN_TM_DATA_2, SPECIES_BLAZIKEN_TM_DATA_3
    mondexentry SPECIES_BLAZIKEN, "It can clear a 30-story building\nin a leap. Its fiery punches scorch\nits foes."
    mondexclassification SPECIES_BLAZIKEN, "Blaze Pokémon"
    mondexheight SPECIES_BLAZIKEN, "6’03”"
    mondexweight SPECIES_BLAZIKEN, "114.6 lbs."


mondata SPECIES_MUDKIP, "Mudkip"
    basestats 50, 70, 50, 40, 50, 50
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_MUDKIP_TM_DATA_0, SPECIES_MUDKIP_TM_DATA_1, SPECIES_MUDKIP_TM_DATA_2, SPECIES_MUDKIP_TM_DATA_3
    mondexentry SPECIES_MUDKIP, "Its power can crush boulders.\nIt rests by covering itself with mud\nat the bottom of a river."
    mondexclassification SPECIES_MUDKIP, "Mud Fish Pokémon"
    mondexheight SPECIES_MUDKIP, "1’04”"
    mondexweight SPECIES_MUDKIP, "16.8 lbs."


mondata SPECIES_MARSHTOMP, "Marshtomp"
    basestats 70, 85, 70, 50, 60, 70
    types TYPE_WATER, TYPE_GROUND
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_MARSHTOMP_TM_DATA_0, SPECIES_MARSHTOMP_TM_DATA_1, SPECIES_MARSHTOMP_TM_DATA_2, SPECIES_MARSHTOMP_TM_DATA_3
    mondexentry SPECIES_MARSHTOMP, "Living on muddy ground that\nprovides poor footing has made\nits legs sturdy."
    mondexclassification SPECIES_MARSHTOMP, "Mud Fish Pokémon"
    mondexheight SPECIES_MARSHTOMP, "2’04”"
    mondexweight SPECIES_MARSHTOMP, "61.7 lbs."


mondata SPECIES_SWAMPERT, "Swampert"
    basestats 100, 110, 90, 60, 85, 90
    types TYPE_WATER, TYPE_GROUND
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SWAMPERT_TM_DATA_0, SPECIES_SWAMPERT_TM_DATA_1, SPECIES_SWAMPERT_TM_DATA_2, SPECIES_SWAMPERT_TM_DATA_3
    mondexentry SPECIES_SWAMPERT, "Its arms are hard as rock.\nWith one swing, it can\nbreak a boulder into pieces."
    mondexclassification SPECIES_SWAMPERT, "Mud Fish Pokémon"
    mondexheight SPECIES_SWAMPERT, "4’11”"
    mondexweight SPECIES_SWAMPERT, "180.6 lbs."


mondata SPECIES_POOCHYENA, "Poochyena"
    basestats 35, 55, 35, 35, 30, 30
    types TYPE_DARK, TYPE_DARK
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_PECHA_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_QUICK_FEET
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_POOCHYENA_TM_DATA_0, SPECIES_POOCHYENA_TM_DATA_1, SPECIES_POOCHYENA_TM_DATA_2, SPECIES_POOCHYENA_TM_DATA_3
    mondexentry SPECIES_POOCHYENA, "It chases its prey until the victim\nbecomes exhausted. However, it\nturns tail if the prey strikes back."
    mondexclassification SPECIES_POOCHYENA, "Bite Pokémon"
    mondexheight SPECIES_POOCHYENA, "1’08”"
    mondexweight SPECIES_POOCHYENA, "30.0 lbs."


mondata SPECIES_MIGHTYENA, "Mightyena"
    basestats 70, 90, 70, 70, 60, 60
    types TYPE_DARK, TYPE_DARK
    catchrate 127
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_PECHA_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_QUICK_FEET
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MIGHTYENA_TM_DATA_0, SPECIES_MIGHTYENA_TM_DATA_1, SPECIES_MIGHTYENA_TM_DATA_2, SPECIES_MIGHTYENA_TM_DATA_3
    mondexentry SPECIES_MIGHTYENA, "It chases down prey in a pack of\naround ten. They defeat foes with\nperfectly coordinated teamwork."
    mondexclassification SPECIES_MIGHTYENA, "Bite Pokémon"
    mondexheight SPECIES_MIGHTYENA, "3’03”"
    mondexweight SPECIES_MIGHTYENA, "81.6 lbs."


mondata SPECIES_ZIGZAGOON, "Zigzagoon"
    basestats 38, 30, 41, 60, 30, 41
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_POTION, ITEM_REVIVE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PICKUP, ABILITY_GLUTTONY
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_ZIGZAGOON_TM_DATA_0, SPECIES_ZIGZAGOON_TM_DATA_1, SPECIES_ZIGZAGOON_TM_DATA_2, SPECIES_ZIGZAGOON_TM_DATA_3
    mondexentry SPECIES_ZIGZAGOON, "It gets interested in everything,\nwhich is why it zigs and zags.\nIt is good at finding items."
    mondexclassification SPECIES_ZIGZAGOON, "TinyRaccoon Pokémon"
    mondexheight SPECIES_ZIGZAGOON, "1’04”"
    mondexweight SPECIES_ZIGZAGOON, "38.6 lbs."


mondata SPECIES_LINOONE, "Linoone"
    basestats 78, 70, 61, 100, 50, 61
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_POTION, ITEM_MAX_REVIVE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PICKUP, ABILITY_GLUTTONY
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_LINOONE_TM_DATA_0, SPECIES_LINOONE_TM_DATA_1, SPECIES_LINOONE_TM_DATA_2, SPECIES_LINOONE_TM_DATA_3
    mondexentry SPECIES_LINOONE, "When running in a straight line, it\ncan easily top 60 miles an hour. It\nhas a tough time with curved roads."
    mondexclassification SPECIES_LINOONE, "Rushing Pokémon"
    mondexheight SPECIES_LINOONE, "1’08”"
    mondexweight SPECIES_LINOONE, "71.6 lbs."


mondata SPECIES_WURMPLE, "Wurmple"
    basestats 45, 45, 35, 20, 20, 30
    types TYPE_BUG, TYPE_BUG
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_PECHA_BERRY, ITEM_BRIGHTPOWDER
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_WURMPLE_TM_DATA_0, SPECIES_WURMPLE_TM_DATA_1, SPECIES_WURMPLE_TM_DATA_2, SPECIES_WURMPLE_TM_DATA_3
    mondexentry SPECIES_WURMPLE, "It lives among the tall grass and in\nforests. It repels attacks by \nraising up the spikes on its rear."
    mondexclassification SPECIES_WURMPLE, "Worm Pokémon"
    mondexheight SPECIES_WURMPLE, "1’00”"
    mondexweight SPECIES_WURMPLE, "7.9 lbs."


mondata SPECIES_SILCOON, "Silcoon"
    basestats 50, 35, 55, 15, 25, 25
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
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SILCOON_TM_DATA_0, SPECIES_SILCOON_TM_DATA_1, SPECIES_SILCOON_TM_DATA_2, SPECIES_SILCOON_TM_DATA_3
    mondexentry SPECIES_SILCOON, "Having wrapped silk around the\nbranches of a tree, it quiescently\nawaits evolution."
    mondexclassification SPECIES_SILCOON, "Cocoon Pokémon"
    mondexheight SPECIES_SILCOON, "2’00”"
    mondexweight SPECIES_SILCOON, "22.0 lbs."


mondata SPECIES_BEAUTIFLY, "Beautifly"
    basestats 60, 70, 50, 65, 100, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_SILVERPOWDER, ITEM_SHED_SHELL
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_BEAUTIFLY_TM_DATA_0, SPECIES_BEAUTIFLY_TM_DATA_1, SPECIES_BEAUTIFLY_TM_DATA_2, SPECIES_BEAUTIFLY_TM_DATA_3
    mondexentry SPECIES_BEAUTIFLY, "Vibrantly patterned wings are its\nprominent feature. It sucks sweet\nflower nectar with its long mouth."
    mondexclassification SPECIES_BEAUTIFLY, "Butterfly Pokémon"
    mondexheight SPECIES_BEAUTIFLY, "3’03”"
    mondexweight SPECIES_BEAUTIFLY, "62.6 lbs."


mondata SPECIES_CASCOON, "Cascoon"
    basestats 50, 35, 55, 15, 25, 25
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
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_CASCOON_TM_DATA_0, SPECIES_CASCOON_TM_DATA_1, SPECIES_CASCOON_TM_DATA_2, SPECIES_CASCOON_TM_DATA_3
    mondexentry SPECIES_CASCOON, "It endures attacks with patience,\nbecause the more pain before\nevolution, the sturdier it becomes."
    mondexclassification SPECIES_CASCOON, "Cocoon Pokémon"
    mondexheight SPECIES_CASCOON, "2’04”"
    mondexweight SPECIES_CASCOON, "25.4 lbs."


mondata SPECIES_DUSTOX, "Dustox"
    basestats 60, 50, 70, 65, 50, 90
    types TYPE_BUG, TYPE_POISON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_SILVERPOWDER, ITEM_SHED_SHELL
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_DUSTOX_TM_DATA_0, SPECIES_DUSTOX_TM_DATA_1, SPECIES_DUSTOX_TM_DATA_2, SPECIES_DUSTOX_TM_DATA_3
    mondexentry SPECIES_DUSTOX, "It scatters its fine dust all over\nwhen it is attacked. It is a\nnocturnal Pokémon."
    mondexclassification SPECIES_DUSTOX, "Poison Moth Pokémon"
    mondexheight SPECIES_DUSTOX, "3’11”"
    mondexweight SPECIES_DUSTOX, "69.7 lbs."


mondata SPECIES_LOTAD, "Lotad"
    basestats 40, 30, 30, 30, 40, 50
    types TYPE_WATER, TYPE_GRASS
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_MENTAL_HERB, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_GRASS
    abilities ABILITY_SWIFT_SWIM, ABILITY_RAIN_DISH
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_LOTAD_TM_DATA_0, SPECIES_LOTAD_TM_DATA_1, SPECIES_LOTAD_TM_DATA_2, SPECIES_LOTAD_TM_DATA_3
    mondexentry SPECIES_LOTAD, "Its leaf grew too large for it to\nlive on land. That is how it began\nto live floating in the water."
    mondexclassification SPECIES_LOTAD, "Water Weed Pokémon"
    mondexheight SPECIES_LOTAD, "1’08”"
    mondexweight SPECIES_LOTAD, "5.7 lbs."


mondata SPECIES_LOMBRE, "Lombre"
    basestats 60, 50, 50, 50, 60, 70
    types TYPE_WATER, TYPE_GRASS
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_MENTAL_HERB, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_GRASS
    abilities ABILITY_SWIFT_SWIM, ABILITY_RAIN_DISH
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_LOMBRE_TM_DATA_0, SPECIES_LOMBRE_TM_DATA_1, SPECIES_LOMBRE_TM_DATA_2, SPECIES_LOMBRE_TM_DATA_3
    mondexentry SPECIES_LOMBRE, "It is nocturnal and becomes active\nat nightfall. It feeds on aquatic\nmosses that grow in the riverbed."
    mondexclassification SPECIES_LOMBRE, "Jolly Pokémon"
    mondexheight SPECIES_LOMBRE, "3’11”"
    mondexweight SPECIES_LOMBRE, "71.6 lbs."


mondata SPECIES_LUDICOLO, "Ludicolo"
    basestats 80, 70, 70, 70, 90, 100
    types TYPE_WATER, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_MENTAL_HERB, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_GRASS
    abilities ABILITY_SWIFT_SWIM, ABILITY_RAIN_DISH
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_LUDICOLO_TM_DATA_0, SPECIES_LUDICOLO_TM_DATA_1, SPECIES_LUDICOLO_TM_DATA_2, SPECIES_LUDICOLO_TM_DATA_3
    mondexentry SPECIES_LUDICOLO, "If it hears festive music, it begins\nmoving in rhythm in order to\namplify its power."
    mondexclassification SPECIES_LUDICOLO, "Carefree Pokémon"
    mondexheight SPECIES_LUDICOLO, "4’11”"
    mondexweight SPECIES_LUDICOLO, "121.3 lbs."


mondata SPECIES_SEEDOT, "Seedot"
    basestats 40, 40, 50, 30, 30, 30
    types TYPE_GRASS, TYPE_GRASS
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_POWER_HERB, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_EARLY_BIRD
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SEEDOT_TM_DATA_0, SPECIES_SEEDOT_TM_DATA_1, SPECIES_SEEDOT_TM_DATA_2, SPECIES_SEEDOT_TM_DATA_3
    mondexentry SPECIES_SEEDOT, "It attaches itself to a tree branch\nusing the top of its head. Strong\nwinds can sometimes make it fall."
    mondexclassification SPECIES_SEEDOT, "Acorn Pokémon"
    mondexheight SPECIES_SEEDOT, "1’08”"
    mondexweight SPECIES_SEEDOT, "8.8 lbs."


mondata SPECIES_NUZLEAF, "Nuzleaf"
    basestats 70, 70, 40, 60, 60, 40
    types TYPE_GRASS, TYPE_DARK
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_POWER_HERB, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_EARLY_BIRD
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NUZLEAF_TM_DATA_0, SPECIES_NUZLEAF_TM_DATA_1, SPECIES_NUZLEAF_TM_DATA_2, SPECIES_NUZLEAF_TM_DATA_3
    mondexentry SPECIES_NUZLEAF, "It lives deep in forests. With the\nleaf on its head, it makes a flute\nwhose song makes listeners uneasy."
    mondexclassification SPECIES_NUZLEAF, "Wily Pokémon"
    mondexheight SPECIES_NUZLEAF, "3’03”"
    mondexweight SPECIES_NUZLEAF, "61.7 lbs."


mondata SPECIES_SHIFTRY, "Shiftry"
    basestats 90, 100, 60, 80, 90, 60
    types TYPE_GRASS, TYPE_DARK
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_POWER_HERB, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_EARLY_BIRD
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SHIFTRY_TM_DATA_0, SPECIES_SHIFTRY_TM_DATA_1, SPECIES_SHIFTRY_TM_DATA_2, SPECIES_SHIFTRY_TM_DATA_3
    mondexentry SPECIES_SHIFTRY, "It lives quietly in the deep forest.\nIt is said to create chilly winter\nwinds with the fans it holds."
    mondexclassification SPECIES_SHIFTRY, "Wicked Pokémon"
    mondexheight SPECIES_SHIFTRY, "4’03”"
    mondexweight SPECIES_SHIFTRY, "131.4 lbs."


mondata SPECIES_TAILLOW, "Taillow"
    basestats 40, 55, 30, 85, 30, 30
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_CHARTI_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_GUTS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_TAILLOW_TM_DATA_0, SPECIES_TAILLOW_TM_DATA_1, SPECIES_TAILLOW_TM_DATA_2, SPECIES_TAILLOW_TM_DATA_3
    mondexentry SPECIES_TAILLOW, "When it gets cold, they migrate,\nflying over 180 miles a day.\nIt hunts for tasty prey."
    mondexclassification SPECIES_TAILLOW, "TinySwallow Pokémon"
    mondexheight SPECIES_TAILLOW, "1’00”"
    mondexweight SPECIES_TAILLOW, "5.1 lbs."


mondata SPECIES_SWELLOW, "Swellow"
    basestats 60, 85, 60, 125, 75, 50
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_CHARTI_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_GUTS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SWELLOW_TM_DATA_0, SPECIES_SWELLOW_TM_DATA_1, SPECIES_SWELLOW_TM_DATA_2, SPECIES_SWELLOW_TM_DATA_3
    mondexentry SPECIES_SWELLOW, "It dives at a steep angle as soon\nas it spots its prey. It catches\nits prey with sharp claws."
    mondexclassification SPECIES_SWELLOW, "Swallow Pokémon"
    mondexheight SPECIES_SWELLOW, "2’04”"
    mondexweight SPECIES_SWELLOW, "43.7 lbs."


mondata SPECIES_WINGULL, "Wingull"
    basestats 40, 30, 30, 85, 55, 30
    types TYPE_WATER, TYPE_FLYING
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_PRETTY_WING, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_HYDRATION
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_WINGULL_TM_DATA_0, SPECIES_WINGULL_TM_DATA_1, SPECIES_WINGULL_TM_DATA_2, SPECIES_WINGULL_TM_DATA_3
    mondexentry SPECIES_WINGULL, "It soars on updrafts without\nflapping its wings. It makes a nest\non sheer cliffs at the sea’s edge."
    mondexclassification SPECIES_WINGULL, "Seagull Pokémon"
    mondexheight SPECIES_WINGULL, "2’00”"
    mondexweight SPECIES_WINGULL, "20.9 lbs."


mondata SPECIES_PELIPPER, "Pelipper"
    basestats 60, 50, 100, 65, 95, 70
    types TYPE_WATER, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_LUCKY_EGG, ITEM_PRETTY_WING
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_DRIZZLE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_PELIPPER_TM_DATA_0, SPECIES_PELIPPER_TM_DATA_1, SPECIES_PELIPPER_TM_DATA_2, SPECIES_PELIPPER_TM_DATA_3
    mondexentry SPECIES_PELIPPER, "It protects its young in its beak.\nIt bobs on waves, resting on them\non days when the waters are calm."
    mondexclassification SPECIES_PELIPPER, "Water Bird Pokémon"
    mondexheight SPECIES_PELIPPER, "3’11”"
    mondexweight SPECIES_PELIPPER, "61.7 lbs."


mondata SPECIES_RALTS, "Ralts"
    basestats 28, 25, 25, 40, 45, 35
    types TYPE_PSYCHIC, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_PSYCHIC
    catchrate 235
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_AMORPHOUS
    abilities ABILITY_SYNCHRONIZE, ABILITY_TRACE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_RALTS_TM_DATA_0, SPECIES_RALTS_TM_DATA_1, SPECIES_RALTS_TM_DATA_2, SPECIES_RALTS_TM_DATA_3
    mondexentry SPECIES_RALTS, "The horns on its head provide a\nstrong power that enables\nit to sense people’s emotions."
    mondexclassification SPECIES_RALTS, "Feeling Pokémon"
    mondexheight SPECIES_RALTS, "1’04”"
    mondexweight SPECIES_RALTS, "14.6 lbs."


mondata SPECIES_KIRLIA, "Kirlia"
    basestats 38, 35, 35, 50, 65, 55
    types TYPE_PSYCHIC, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_PSYCHIC
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_AMORPHOUS
    abilities ABILITY_SYNCHRONIZE, ABILITY_TRACE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_KIRLIA_TM_DATA_0, SPECIES_KIRLIA_TM_DATA_1, SPECIES_KIRLIA_TM_DATA_2, SPECIES_KIRLIA_TM_DATA_3
    mondexentry SPECIES_KIRLIA, "It has a psychic power that\nenables it to distort the space\naround it and see into the future."
    mondexclassification SPECIES_KIRLIA, "Emotion Pokémon"
    mondexheight SPECIES_KIRLIA, "2’07”"
    mondexweight SPECIES_KIRLIA, "44.5 lbs."


mondata SPECIES_GARDEVOIR, "Gardevoir"
    basestats 68, 65, 65, 80, 125, 115
    types TYPE_PSYCHIC, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_PSYCHIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_AMORPHOUS
    abilities ABILITY_SYNCHRONIZE, ABILITY_TRACE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_GARDEVOIR_TM_DATA_0, SPECIES_GARDEVOIR_TM_DATA_1, SPECIES_GARDEVOIR_TM_DATA_2, SPECIES_GARDEVOIR_TM_DATA_3
    mondexentry SPECIES_GARDEVOIR, "It unleashes psychokinetic energy\nat full power when protecting a\nTrainer it has bonded closely with."
    mondexclassification SPECIES_GARDEVOIR, "Embrace Pokémon"
    mondexheight SPECIES_GARDEVOIR, "5’03”"
    mondexweight SPECIES_GARDEVOIR, "106.7 lbs."


mondata SPECIES_SURSKIT, "Surskit"
    basestats 40, 30, 32, 65, 50, 52
    types TYPE_BUG, TYPE_WATER
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_HONEY, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_BUG
    abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SURSKIT_TM_DATA_0, SPECIES_SURSKIT_TM_DATA_1, SPECIES_SURSKIT_TM_DATA_2, SPECIES_SURSKIT_TM_DATA_3
    mondexentry SPECIES_SURSKIT, "It secretes a thick, sweet-scented\nsyrup from the tip of its head.\nIt lives on weed-choked ponds."
    mondexclassification SPECIES_SURSKIT, "Pond Skater Pokémon"
    mondexheight SPECIES_SURSKIT, "1’08”"
    mondexweight SPECIES_SURSKIT, "3.7 lbs."


mondata SPECIES_MASQUERAIN, "Masquerain"
    basestats 70, 60, 62, 80, 100, 82
    types TYPE_BUG, TYPE_FLYING
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 1
    items ITEM_SILVERPOWDER, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_BUG
    abilities ABILITY_INTIMIDATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_MASQUERAIN_TM_DATA_0, SPECIES_MASQUERAIN_TM_DATA_1, SPECIES_MASQUERAIN_TM_DATA_2, SPECIES_MASQUERAIN_TM_DATA_3
    mondexentry SPECIES_MASQUERAIN, "It flaps its four wings to hover and\nfly freely in any direction--\nto and fro and sideways."
    mondexclassification SPECIES_MASQUERAIN, "Eyeball Pokémon"
    mondexheight SPECIES_MASQUERAIN, "2’07”"
    mondexweight SPECIES_MASQUERAIN, "7.9 lbs."


mondata SPECIES_SHROOMISH, "Shroomish"
    basestats 60, 40, 60, 35, 40, 60
    types TYPE_GRASS, TYPE_GRASS
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_TINYMUSHROOM, ITEM_BIG_MUSHROOM
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
    abilities ABILITY_EFFECT_SPORE, ABILITY_POISON_HEAL
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SHROOMISH_TM_DATA_0, SPECIES_SHROOMISH_TM_DATA_1, SPECIES_SHROOMISH_TM_DATA_2, SPECIES_SHROOMISH_TM_DATA_3
    mondexentry SPECIES_SHROOMISH, "If it senses danger, it scatters\nspores from the top of its head to\nprotect itself."
    mondexclassification SPECIES_SHROOMISH, "Mushroom Pokémon"
    mondexheight SPECIES_SHROOMISH, "1’04”"
    mondexweight SPECIES_SHROOMISH, "9.9 lbs."


mondata SPECIES_BRELOOM, "Breloom"
    basestats 60, 130, 80, 70, 60, 60
    types TYPE_GRASS, TYPE_FIGHTING
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_TINYMUSHROOM, ITEM_BIG_MUSHROOM
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
    abilities ABILITY_EFFECT_SPORE, ABILITY_POISON_HEAL
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BRELOOM_TM_DATA_0, SPECIES_BRELOOM_TM_DATA_1, SPECIES_BRELOOM_TM_DATA_2, SPECIES_BRELOOM_TM_DATA_3
    mondexentry SPECIES_BRELOOM, "It scatters poisonous spores and\nthrows powerful punches while its\nfoe is hampered by inhaled spores."
    mondexclassification SPECIES_BRELOOM, "Mushroom Pokémon"
    mondexheight SPECIES_BRELOOM, "3’11”"
    mondexweight SPECIES_BRELOOM, "86.4 lbs."


mondata SPECIES_SLAKOTH, "Slakoth"
    basestats 60, 60, 60, 30, 35, 35
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
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
    mondexentry SPECIES_SLAKOTH, "The way SLAKOTH lolls around makes\nanyone who watches it feel like\ndoing the same."
    mondexclassification SPECIES_SLAKOTH, "Slacker Pokémon"
    mondexheight SPECIES_SLAKOTH, "2’07”"
    mondexweight SPECIES_SLAKOTH, "52.9 lbs."


mondata SPECIES_VIGOROTH, "Vigoroth"
    basestats 80, 80, 80, 90, 55, 55
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_VITAL_SPIRIT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_VIGOROTH_TM_DATA_0, SPECIES_VIGOROTH_TM_DATA_1, SPECIES_VIGOROTH_TM_DATA_2, SPECIES_VIGOROTH_TM_DATA_3
    mondexentry SPECIES_VIGOROTH, "Its stress level rises if it\ncannot keep moving constantly.\nToo much stress makes it feel sick."
    mondexclassification SPECIES_VIGOROTH, "Wild Monkey Pokémon"
    mondexheight SPECIES_VIGOROTH, "4’07”"
    mondexweight SPECIES_VIGOROTH, "102.5 lbs."


mondata SPECIES_SLAKING, "Slaking"
    basestats 150, 160, 100, 100, 95, 65
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
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
    mondexentry SPECIES_SLAKING, "The world’s laziest Pokémon.\nIt moves to another spot when there’s\nno food left within its reach."
    mondexclassification SPECIES_SLAKING, "Lazy Pokémon"
    mondexheight SPECIES_SLAKING, "6’07”"
    mondexweight SPECIES_SLAKING, "287.7 lbs."


mondata SPECIES_NINCADA, "Nincada"
    basestats 31, 45, 90, 40, 30, 30
    types TYPE_BUG, TYPE_GROUND
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_SOFT_SAND, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_COMPOUND_EYES, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_NINCADA_TM_DATA_0, SPECIES_NINCADA_TM_DATA_1, SPECIES_NINCADA_TM_DATA_2, SPECIES_NINCADA_TM_DATA_3
    mondexentry SPECIES_NINCADA, "It can sometimes live underground for\nmore than 10 years. It absorbs\nnutrients from the roots of trees."
    mondexclassification SPECIES_NINCADA, "Trainee Pokémon"
    mondexheight SPECIES_NINCADA, "1’08”"
    mondexweight SPECIES_NINCADA, "12.1 lbs."


mondata SPECIES_NINJASK, "Ninjask"
    basestats 61, 90, 45, 160, 50, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SPEED_BOOST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NINJASK_TM_DATA_0, SPECIES_NINJASK_TM_DATA_1, SPECIES_NINJASK_TM_DATA_2, SPECIES_NINJASK_TM_DATA_3
    mondexentry SPECIES_NINJASK, "Its cry leaves a lasting headache\nif heard for too long. It moves so\nquickly that it is almost invisible."
    mondexclassification SPECIES_NINJASK, "Ninja Pokémon"
    mondexheight SPECIES_NINJASK, "2’07”"
    mondexweight SPECIES_NINJASK, "26.5 lbs."


mondata SPECIES_SHEDINJA, "Shedinja"
    basestats 1, 90, 45, 40, 30, 30
    types TYPE_BUG, TYPE_GHOST
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_WONDER_GUARD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SHEDINJA_TM_DATA_0, SPECIES_SHEDINJA_TM_DATA_1, SPECIES_SHEDINJA_TM_DATA_2, SPECIES_SHEDINJA_TM_DATA_3
    mondexentry SPECIES_SHEDINJA, "A strange Pokémon--it flies without\nmoving its wings, has a hollow shell\nfor a body, and does not breathe."
    mondexclassification SPECIES_SHEDINJA, "Shed Pokémon"
    mondexheight SPECIES_SHEDINJA, "2’07”"
    mondexweight SPECIES_SHEDINJA, "2.6 lbs."


mondata SPECIES_WHISMUR, "Whismur"
    basestats 64, 51, 23, 28, 51, 23
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_CHESTO_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_SOUNDPROOF, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_WHISMUR_TM_DATA_0, SPECIES_WHISMUR_TM_DATA_1, SPECIES_WHISMUR_TM_DATA_2, SPECIES_WHISMUR_TM_DATA_3
    mondexentry SPECIES_WHISMUR, "If it senses danger, it scares\nthe foe by crying out with the\nvolume of a jet-plane engine."
    mondexclassification SPECIES_WHISMUR, "Whisper Pokémon"
    mondexheight SPECIES_WHISMUR, "2’00”"
    mondexweight SPECIES_WHISMUR, "35.9 lbs."


mondata SPECIES_LOUDRED, "Loudred"
    basestats 84, 71, 43, 48, 71, 43
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_CHESTO_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_SOUNDPROOF, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_LOUDRED_TM_DATA_0, SPECIES_LOUDRED_TM_DATA_1, SPECIES_LOUDRED_TM_DATA_2, SPECIES_LOUDRED_TM_DATA_3
    mondexentry SPECIES_LOUDRED, "It shouts loudly by inhaling air, and\nthen uses its well-developed\nstomach muscles to exhale."
    mondexclassification SPECIES_LOUDRED, "Big Voice Pokémon"
    mondexheight SPECIES_LOUDRED, "3’03”"
    mondexweight SPECIES_LOUDRED, "89.3 lbs."


mondata SPECIES_EXPLOUD, "Exploud"
    basestats 104, 91, 63, 68, 91, 73
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_CHESTO_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_SOUNDPROOF, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_EXPLOUD_TM_DATA_0, SPECIES_EXPLOUD_TM_DATA_1, SPECIES_EXPLOUD_TM_DATA_2, SPECIES_EXPLOUD_TM_DATA_3
    mondexentry SPECIES_EXPLOUD, "Its roar in battle shakes the\nground like a tremor--or like\nan earthquake has struck."
    mondexclassification SPECIES_EXPLOUD, "Loud Noise Pokémon"
    mondexheight SPECIES_EXPLOUD, "4’11”"
    mondexweight SPECIES_EXPLOUD, "185.2 lbs."


mondata SPECIES_MAKUHITA, "Makuhita"
    basestats 72, 60, 30, 25, 20, 30
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 180
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_BLACK_BELT, ITEM_NONE
    genderratio 63
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_THICK_FAT, ABILITY_GUTS
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_MAKUHITA_TM_DATA_0, SPECIES_MAKUHITA_TM_DATA_1, SPECIES_MAKUHITA_TM_DATA_2, SPECIES_MAKUHITA_TM_DATA_3
    mondexentry SPECIES_MAKUHITA, "It toughens up by slamming into\nthick trees over and over. It gains\na sturdy body and dauntless spirit."
    mondexclassification SPECIES_MAKUHITA, "Guts Pokémon"
    mondexheight SPECIES_MAKUHITA, "3’03”"
    mondexweight SPECIES_MAKUHITA, "190.5 lbs."


mondata SPECIES_HARIYAMA, "Hariyama"
    basestats 144, 120, 60, 50, 40, 60
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_KINGS_ROCK, ITEM_NONE
    genderratio 63
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_THICK_FAT, ABILITY_GUTS
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_HARIYAMA_TM_DATA_0, SPECIES_HARIYAMA_TM_DATA_1, SPECIES_HARIYAMA_TM_DATA_2, SPECIES_HARIYAMA_TM_DATA_3
    mondexentry SPECIES_HARIYAMA, "It loves challenging others to\ntests of strength. It has the\npower to stop a train with a slap."
    mondexclassification SPECIES_HARIYAMA, "Arm Thrust Pokémon"
    mondexheight SPECIES_HARIYAMA, "7’07”"
    mondexweight SPECIES_HARIYAMA, "559.5 lbs."


mondata SPECIES_AZURILL, "Azurill"
    basestats 50, 20, 40, 20, 20, 40
    types TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 150
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 190
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_THICK_FAT, ABILITY_HUGE_POWER
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_AZURILL_TM_DATA_0, SPECIES_AZURILL_TM_DATA_1, SPECIES_AZURILL_TM_DATA_2, SPECIES_AZURILL_TM_DATA_3
    mondexentry SPECIES_AZURILL, "Its tail is packed full of the\nnutrients it needs to grow."
    mondexclassification SPECIES_AZURILL, "Polka Dot Pokémon"
    mondexheight SPECIES_AZURILL, "0’08”"
    mondexweight SPECIES_AZURILL, "4.4 lbs."


mondata SPECIES_NOSEPASS, "Nosepass"
    basestats 30, 45, 135, 30, 45, 90
    types TYPE_ROCK, TYPE_ROCK
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_HARD_STONE, ITEM_MAGNET
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STURDY, ABILITY_MAGNET_PULL
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_NOSEPASS_TM_DATA_0, SPECIES_NOSEPASS_TM_DATA_1, SPECIES_NOSEPASS_TM_DATA_2, SPECIES_NOSEPASS_TM_DATA_3
    mondexentry SPECIES_NOSEPASS, "If two of these meet, they cannot\nget too close because their noses\nrepel each other."
    mondexclassification SPECIES_NOSEPASS, "Compass Pokémon"
    mondexheight SPECIES_NOSEPASS, "3’03”"
    mondexweight SPECIES_NOSEPASS, "213.8 lbs."


mondata SPECIES_SKITTY, "Skitty"
    basestats 50, 45, 45, 50, 35, 35
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_PECHA_BERRY, ITEM_LEPPA_BERRY
    genderratio 190
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_CUTE_CHARM, ABILITY_NORMALIZE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_SKITTY_TM_DATA_0, SPECIES_SKITTY_TM_DATA_1, SPECIES_SKITTY_TM_DATA_2, SPECIES_SKITTY_TM_DATA_3
    mondexentry SPECIES_SKITTY, "It’s adorable when it chases its own\ntail. It’s difficult to earn its trust."
    mondexclassification SPECIES_SKITTY, "Kitten Pokémon"
    mondexheight SPECIES_SKITTY, "2’00”"
    mondexweight SPECIES_SKITTY, "24.3 lbs."


mondata SPECIES_DELCATTY, "Delcatty"
    basestats 70, 65, 65, 90, 55, 55
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 1, 0, 0
    items ITEM_PECHA_BERRY, ITEM_LEPPA_BERRY
    genderratio 190
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_CUTE_CHARM, ABILITY_NORMALIZE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_DELCATTY_TM_DATA_0, SPECIES_DELCATTY_TM_DATA_1, SPECIES_DELCATTY_TM_DATA_2, SPECIES_DELCATTY_TM_DATA_3
    mondexentry SPECIES_DELCATTY, "It dislikes dirty places. It often\nsearches for a comfortable place\nin which to groom itself."
    mondexclassification SPECIES_DELCATTY, "Prim Pokémon"
    mondexheight SPECIES_DELCATTY, "3’07”"
    mondexweight SPECIES_DELCATTY, "71.9 lbs."


mondata SPECIES_SABLEYE, "Sableye"
    basestats 50, 75, 75, 50, 65, 65
    types TYPE_DARK, TYPE_GHOST
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 1, 0, 0, 0
    items ITEM_WIDE_LENS, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 35
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_KEEN_EYE, ABILITY_STALL
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SABLEYE_TM_DATA_0, SPECIES_SABLEYE_TM_DATA_1, SPECIES_SABLEYE_TM_DATA_2, SPECIES_SABLEYE_TM_DATA_3
    mondexentry SPECIES_SABLEYE, "It dwells in the darkness of caves.\nIt uses its sharp claws to dig up\ngems to nourish itself."
    mondexclassification SPECIES_SABLEYE, "Darkness Pokémon"
    mondexheight SPECIES_SABLEYE, "1’08”"
    mondexweight SPECIES_SABLEYE, "24.3 lbs."


mondata SPECIES_MAWILE, "Mawile"
    basestats 50, 85, 85, 50, 55, 55
    types TYPE_STEEL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_STEEL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 1, 0, 0, 0
    items ITEM_OCCA_BERRY, ITEM_IRON_BALL
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_HYPER_CUTTER, ABILITY_INTIMIDATE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_MAWILE_TM_DATA_0, SPECIES_MAWILE_TM_DATA_1, SPECIES_MAWILE_TM_DATA_2, SPECIES_MAWILE_TM_DATA_3
    mondexentry SPECIES_MAWILE, "It chomps with its gaping mouth.\nIts huge jaws are actually steel\nhorns that have been transformed."
    mondexclassification SPECIES_MAWILE, "Deceiver Pokémon"
    mondexheight SPECIES_MAWILE, "2’00”"
    mondexweight SPECIES_MAWILE, "25.4 lbs."


mondata SPECIES_ARON, "Aron"
    basestats 50, 70, 100, 30, 40, 40
    types TYPE_STEEL, TYPE_ROCK
    catchrate 180
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_HARD_STONE, ITEM_NONE
    genderratio 127
    eggcycles 35
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_STURDY, ABILITY_ROCK_HEAD
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_ARON_TM_DATA_0, SPECIES_ARON_TM_DATA_1, SPECIES_ARON_TM_DATA_2, SPECIES_ARON_TM_DATA_3
    mondexentry SPECIES_ARON, "When it evolves, it sheds the steel\ncarapace that covered its whole body\nand develops a new one."
    mondexclassification SPECIES_ARON, "Iron Armor Pokémon"
    mondexheight SPECIES_ARON, "1’04”"
    mondexweight SPECIES_ARON, "132.3 lbs."


mondata SPECIES_LAIRON, "Lairon"
    basestats 60, 90, 140, 40, 50, 50
    types TYPE_STEEL, TYPE_ROCK
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_HARD_STONE, ITEM_NONE
    genderratio 127
    eggcycles 35
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_STURDY, ABILITY_ROCK_HEAD
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_LAIRON_TM_DATA_0, SPECIES_LAIRON_TM_DATA_1, SPECIES_LAIRON_TM_DATA_2, SPECIES_LAIRON_TM_DATA_3
    mondexentry SPECIES_LAIRON, "It loves iron ore. Groups of them\nfight for territory by bashing one\nanother with their steel bodies."
    mondexclassification SPECIES_LAIRON, "Iron Armor Pokémon"
    mondexheight SPECIES_LAIRON, "2’11”"
    mondexweight SPECIES_LAIRON, "264.6 lbs."


mondata SPECIES_AGGRON, "Aggron"
    basestats 70, 110, 180, 50, 60, 60
    types TYPE_STEEL, TYPE_ROCK
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_HARD_STONE, ITEM_NONE
    genderratio 127
    eggcycles 35
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_STURDY, ABILITY_ROCK_HEAD
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_AGGRON_TM_DATA_0, SPECIES_AGGRON_TM_DATA_1, SPECIES_AGGRON_TM_DATA_2, SPECIES_AGGRON_TM_DATA_3
    mondexentry SPECIES_AGGRON, "You can tell its age by the length\nof its iron horns. It claims an\nentire mountain as its territory."
    mondexclassification SPECIES_AGGRON, "Iron Armor Pokémon"
    mondexheight SPECIES_AGGRON, "6’11”"
    mondexweight SPECIES_AGGRON, "793.7 lbs."


mondata SPECIES_MEDITITE, "Meditite"
    basestats 30, 40, 55, 60, 40, 55
    types TYPE_FIGHTING, TYPE_PSYCHIC
    catchrate 180
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_PURE_POWER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_MEDITITE_TM_DATA_0, SPECIES_MEDITITE_TM_DATA_1, SPECIES_MEDITITE_TM_DATA_2, SPECIES_MEDITITE_TM_DATA_3
    mondexentry SPECIES_MEDITITE, "It meditates to heighten its inner\nenergy and to float in the air.\nIt eats one berry a day."
    mondexclassification SPECIES_MEDITITE, "Meditate Pokémon"
    mondexheight SPECIES_MEDITITE, "2’00”"
    mondexweight SPECIES_MEDITITE, "24.7 lbs."


mondata SPECIES_MEDICHAM, "Medicham"
    basestats 60, 60, 75, 80, 60, 75
    types TYPE_FIGHTING, TYPE_PSYCHIC
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_PURE_POWER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_MEDICHAM_TM_DATA_0, SPECIES_MEDICHAM_TM_DATA_1, SPECIES_MEDICHAM_TM_DATA_2, SPECIES_MEDICHAM_TM_DATA_3
    mondexentry SPECIES_MEDICHAM, "Through yoga training, it gained\nthe psychic power to predict\nits foe’s next move."
    mondexclassification SPECIES_MEDICHAM, "Meditate Pokémon"
    mondexheight SPECIES_MEDICHAM, "4’03”"
    mondexweight SPECIES_MEDICHAM, "69.4 lbs."


mondata SPECIES_ELECTRIKE, "Electrike"
    basestats 40, 45, 40, 65, 65, 40
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_STATIC, ABILITY_LIGHTNING_ROD
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_ELECTRIKE_TM_DATA_0, SPECIES_ELECTRIKE_TM_DATA_1, SPECIES_ELECTRIKE_TM_DATA_2, SPECIES_ELECTRIKE_TM_DATA_3
    mondexentry SPECIES_ELECTRIKE, "It stores electricity in its fur. It\ngives off sparks from all over its\nbody in seasons when the air is dry."
    mondexclassification SPECIES_ELECTRIKE, "Lightning Pokémon"
    mondexheight SPECIES_ELECTRIKE, "2’00”"
    mondexweight SPECIES_ELECTRIKE, "33.5 lbs."


mondata SPECIES_MANECTRIC, "Manectric"
    basestats 70, 75, 60, 105, 105, 60
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_STATIC, ABILITY_LIGHTNING_ROD
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_MANECTRIC_TM_DATA_0, SPECIES_MANECTRIC_TM_DATA_1, SPECIES_MANECTRIC_TM_DATA_2, SPECIES_MANECTRIC_TM_DATA_3
    mondexentry SPECIES_MANECTRIC, "Its nest can be found where a\nthunderbolt hits. It is discharging\nelectricity from its mane."
    mondexclassification SPECIES_MANECTRIC, "Discharge Pokémon"
    mondexheight SPECIES_MANECTRIC, "4’11”"
    mondexweight SPECIES_MANECTRIC, "88.6 lbs."


mondata SPECIES_PLUSLE, "Plusle"
    basestats 60, 50, 40, 95, 85, 75
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_CELL_BATTERY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_PLUS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_PLUSLE_TM_DATA_0, SPECIES_PLUSLE_TM_DATA_1, SPECIES_PLUSLE_TM_DATA_2, SPECIES_PLUSLE_TM_DATA_3
    mondexentry SPECIES_PLUSLE, "It absorbs electricity from\ntelephone poles. It shorts out its\nbody to create crackling noises."
    mondexclassification SPECIES_PLUSLE, "Cheering Pokémon"
    mondexheight SPECIES_PLUSLE, "1’04”"
    mondexweight SPECIES_PLUSLE, "9.3 lbs."


mondata SPECIES_MINUN, "Minun"
    basestats 60, 40, 50, 95, 75, 85
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_CELL_BATTERY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_MINUS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_MINUN_TM_DATA_0, SPECIES_MINUN_TM_DATA_1, SPECIES_MINUN_TM_DATA_2, SPECIES_MINUN_TM_DATA_3
    mondexentry SPECIES_MINUN, "Exposure to electricity from MINUN\nand PLUSLE promotes blood\ncirculation and relaxes muscles."
    mondexclassification SPECIES_MINUN, "Cheering Pokémon"
    mondexheight SPECIES_MINUN, "1’04”"
    mondexweight SPECIES_MINUN, "9.3 lbs."


mondata SPECIES_VOLBEAT, "Volbeat"
    basestats 65, 73, 75, 85, 47, 85
    types TYPE_BUG, TYPE_BUG
    catchrate 150
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_BRIGHTPOWDER, ITEM_NONE
    genderratio 255
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
    basestats 65, 47, 75, 85, 73, 85
    types TYPE_BUG, TYPE_BUG
    catchrate 150
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_BRIGHTPOWDER, ITEM_NONE
    genderratio 254
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_BUG, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_OBLIVIOUS, ABILITY_TINTED_LENS
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_ILLUMISE_TM_DATA_0, SPECIES_ILLUMISE_TM_DATA_1, SPECIES_ILLUMISE_TM_DATA_2, SPECIES_ILLUMISE_TM_DATA_3
    mondexentry SPECIES_ILLUMISE, "Its fragrance attracts a swarm of\nVOLBEAT, so they draw over 200\npatterns in the night sky."
    mondexclassification SPECIES_ILLUMISE, "Firefly Pokémon"
    mondexheight SPECIES_ILLUMISE, "2’00”"
    mondexweight SPECIES_ILLUMISE, "39.0 lbs."


mondata SPECIES_ROSELIA, "Roselia"
    basestats 50, 60, 45, 65, 100, 80
    types TYPE_GRASS, TYPE_POISON
    catchrate 150
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_POISON_BARB, ITEM_ABSORB_BULB
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
    abilities ABILITY_NATURAL_CURE, ABILITY_POISON_POINT
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_ROSELIA_TM_DATA_0, SPECIES_ROSELIA_TM_DATA_1, SPECIES_ROSELIA_TM_DATA_2, SPECIES_ROSELIA_TM_DATA_3
    mondexentry SPECIES_ROSELIA, "ROSELIA that drink nutritionally\nrich springwater are said to reveal\nrare coloration when they bloom."
    mondexclassification SPECIES_ROSELIA, "Thorn Pokémon"
    mondexheight SPECIES_ROSELIA, "1’00”"
    mondexweight SPECIES_ROSELIA, "4.4 lbs."


mondata SPECIES_GULPIN, "Gulpin"
    basestats 70, 43, 53, 40, 43, 53
    types TYPE_POISON, TYPE_POISON
    catchrate 225
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_BIG_PEARL, ITEM_ORAN_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LIQUID_OOZE, ABILITY_STICKY_HOLD
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_GULPIN_TM_DATA_0, SPECIES_GULPIN_TM_DATA_1, SPECIES_GULPIN_TM_DATA_2, SPECIES_GULPIN_TM_DATA_3
    mondexentry SPECIES_GULPIN, "It has a small heart and brain. Its\nstomach comprises most of its body,\nwith enzymes to dissolve anything."
    mondexclassification SPECIES_GULPIN, "Stomach Pokémon"
    mondexheight SPECIES_GULPIN, "1’04”"
    mondexweight SPECIES_GULPIN, "22.7 lbs."


mondata SPECIES_SWALOT, "Swalot"
    basestats 100, 73, 83, 55, 73, 83
    types TYPE_POISON, TYPE_POISON
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_BIG_PEARL, ITEM_ORAN_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LIQUID_OOZE, ABILITY_STICKY_HOLD
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SWALOT_TM_DATA_0, SPECIES_SWALOT_TM_DATA_1, SPECIES_SWALOT_TM_DATA_2, SPECIES_SWALOT_TM_DATA_3
    mondexentry SPECIES_SWALOT, "It gulps anything that fits in its\nmouth. Its special enzymes can\ndissolve anything."
    mondexclassification SPECIES_SWALOT, "Poison Bag Pokémon"
    mondexheight SPECIES_SWALOT, "5’07”"
    mondexweight SPECIES_SWALOT, "176.4 lbs."


mondata SPECIES_CARVANHA, "Carvanha"
    basestats 45, 90, 20, 65, 65, 20
    types TYPE_WATER, TYPE_DARK
    catchrate 225
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_DEEPSEATOOTH, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_ROUGH_SKIN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CARVANHA_TM_DATA_0, SPECIES_CARVANHA_TM_DATA_1, SPECIES_CARVANHA_TM_DATA_2, SPECIES_CARVANHA_TM_DATA_3
    mondexentry SPECIES_CARVANHA, "They form packs to attack boats\nand rip out their hulls to sink them.\nThey live in rivers in the jungle."
    mondexclassification SPECIES_CARVANHA, "Savage Pokémon"
    mondexheight SPECIES_CARVANHA, "2’07”"
    mondexweight SPECIES_CARVANHA, "45.9 lbs."


mondata SPECIES_SHARPEDO, "Sharpedo"
    basestats 70, 120, 40, 95, 95, 40
    types TYPE_WATER, TYPE_DARK
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_DEEPSEATOOTH, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_ROUGH_SKIN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SHARPEDO_TM_DATA_0, SPECIES_SHARPEDO_TM_DATA_1, SPECIES_SHARPEDO_TM_DATA_2, SPECIES_SHARPEDO_TM_DATA_3
    mondexentry SPECIES_SHARPEDO, "It can swim at speeds of 75 mph by\njetting seawater through its body.\nIt is the bandit of the sea."
    mondexclassification SPECIES_SHARPEDO, "Brutal Pokémon"
    mondexheight SPECIES_SHARPEDO, "5’11”"
    mondexweight SPECIES_SHARPEDO, "195.8 lbs."


mondata SPECIES_WAILMER, "Wailmer"
    basestats 130, 70, 35, 60, 70, 35
    types TYPE_WATER, TYPE_WATER
    catchrate 125
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_FIELD, EGG_GROUP_WATER_2
    abilities ABILITY_WATER_VEIL, ABILITY_OBLIVIOUS
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_WAILMER_TM_DATA_0, SPECIES_WAILMER_TM_DATA_1, SPECIES_WAILMER_TM_DATA_2, SPECIES_WAILMER_TM_DATA_3
    mondexentry SPECIES_WAILMER, "It bounces playfully like a ball.\nThe more seawater it swallows,\nthe higher it bounces."
    mondexclassification SPECIES_WAILMER, "Ball Whale Pokémon"
    mondexheight SPECIES_WAILMER, "6’07”"
    mondexweight SPECIES_WAILMER, "286.6 lbs."


mondata SPECIES_WAILORD, "Wailord"
    basestats 170, 90, 45, 60, 90, 45
    types TYPE_WATER, TYPE_WATER
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_FIELD, EGG_GROUP_WATER_2
    abilities ABILITY_WATER_VEIL, ABILITY_OBLIVIOUS
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_WAILORD_TM_DATA_0, SPECIES_WAILORD_TM_DATA_1, SPECIES_WAILORD_TM_DATA_2, SPECIES_WAILORD_TM_DATA_3
    mondexentry SPECIES_WAILORD, "It is the largest of all identified\nPokémon. They jump as a pack\nto herd their prey."
    mondexclassification SPECIES_WAILORD, "Float Whale Pokémon"
    mondexheight SPECIES_WAILORD, "47’07”"
    mondexweight SPECIES_WAILORD, "877.4 lbs."


mondata SPECIES_NUMEL, "Numel"
    basestats 60, 60, 40, 35, 65, 45
    types TYPE_FIRE, TYPE_GROUND
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_RAWST_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OBLIVIOUS, ABILITY_SIMPLE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NUMEL_TM_DATA_0, SPECIES_NUMEL_TM_DATA_1, SPECIES_NUMEL_TM_DATA_2, SPECIES_NUMEL_TM_DATA_3
    mondexentry SPECIES_NUMEL, "The flaming magma it stores in the\nhump on its back is the source of\nits tremendous power."
    mondexclassification SPECIES_NUMEL, "Numb Pokémon"
    mondexheight SPECIES_NUMEL, "2’04”"
    mondexweight SPECIES_NUMEL, "52.9 lbs."


mondata SPECIES_CAMERUPT, "Camerupt"
    basestats 70, 100, 70, 40, 105, 75
    types TYPE_FIRE, TYPE_GROUND
    catchrate 150
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_RAWST_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_MAGMA_ARMOR, ABILITY_SOLID_ROCK
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CAMERUPT_TM_DATA_0, SPECIES_CAMERUPT_TM_DATA_1, SPECIES_CAMERUPT_TM_DATA_2, SPECIES_CAMERUPT_TM_DATA_3
    mondexentry SPECIES_CAMERUPT, "It lives in the crater of a volcano.\nIt is well known that the humps on\nits back erupt every 10 years."
    mondexclassification SPECIES_CAMERUPT, "Eruption Pokémon"
    mondexheight SPECIES_CAMERUPT, "6’03”"
    mondexweight SPECIES_CAMERUPT, "485.0 lbs."


mondata SPECIES_TORKOAL, "Torkoal"
    basestats 70, 85, 140, 20, 85, 70
    types TYPE_FIRE, TYPE_FIRE
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_CHARCOAL, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_WHITE_SMOKE, ABILITY_DROUGHT
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_TORKOAL_TM_DATA_0, SPECIES_TORKOAL_TM_DATA_1, SPECIES_TORKOAL_TM_DATA_2, SPECIES_TORKOAL_TM_DATA_3
    mondexentry SPECIES_TORKOAL, "You find abandoned coal mines full\nof them. They dig tirelessly in\nsearch of coal."
    mondexclassification SPECIES_TORKOAL, "Coal Pokémon"
    mondexheight SPECIES_TORKOAL, "1’08”"
    mondexweight SPECIES_TORKOAL, "177.2 lbs."


mondata SPECIES_SPOINK, "Spoink"
    basestats 60, 25, 35, 60, 70, 80
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_PERSIM_BERRY, ITEM_TANGA_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_THICK_FAT, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SPOINK_TM_DATA_0, SPECIES_SPOINK_TM_DATA_1, SPECIES_SPOINK_TM_DATA_2, SPECIES_SPOINK_TM_DATA_3
    mondexentry SPECIES_SPOINK, "It bounces around on its tail to\nkeep its heart pumping. It carries\na pearl from CLAMPERL on its head."
    mondexclassification SPECIES_SPOINK, "Bounce Pokémon"
    mondexheight SPECIES_SPOINK, "2’04”"
    mondexweight SPECIES_SPOINK, "67.5 lbs."


mondata SPECIES_GRUMPIG, "Grumpig"
    basestats 80, 45, 65, 80, 90, 110
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_PERSIM_BERRY, ITEM_TANGA_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_THICK_FAT, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GRUMPIG_TM_DATA_0, SPECIES_GRUMPIG_TM_DATA_1, SPECIES_GRUMPIG_TM_DATA_2, SPECIES_GRUMPIG_TM_DATA_3
    mondexentry SPECIES_GRUMPIG, "It can perform odd dance steps to\ninfluence foes. Its style of dancing\nbecame hugely popular overseas."
    mondexclassification SPECIES_GRUMPIG, "Manipulate Pokémon"
    mondexheight SPECIES_GRUMPIG, "2’11”"
    mondexweight SPECIES_GRUMPIG, "157.6 lbs."


mondata SPECIES_SPINDA, "Spinda"
    basestats 60, 60, 60, 60, 60, 60
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_CHESTO_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_OWN_TEMPO, ABILITY_TANGLED_FEET
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SPINDA_TM_DATA_0, SPECIES_SPINDA_TM_DATA_1, SPECIES_SPINDA_TM_DATA_2, SPECIES_SPINDA_TM_DATA_3
    mondexentry SPECIES_SPINDA, "The chances of two SPINDA having\nidentical spot patterns is less\nthan one in four billion."
    mondexclassification SPECIES_SPINDA, "Spot Panda Pokémon"
    mondexheight SPECIES_SPINDA, "3’07”"
    mondexweight SPECIES_SPINDA, "11.0 lbs."


mondata SPECIES_TRAPINCH, "Trapinch"
    basestats 45, 100, 45, 10, 45, 45
    types TYPE_GROUND, TYPE_GROUND
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_SOFT_SAND, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_DRAGON
    abilities ABILITY_HYPER_CUTTER, ABILITY_ARENA_TRAP
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_TRAPINCH_TM_DATA_0, SPECIES_TRAPINCH_TM_DATA_1, SPECIES_TRAPINCH_TM_DATA_2, SPECIES_TRAPINCH_TM_DATA_3
    mondexentry SPECIES_TRAPINCH, "Its nest is a sloped, bowl-like pit\nin the desert. Once something has\nfallen in, there is no escape."
    mondexclassification SPECIES_TRAPINCH, "Ant Pit Pokémon"
    mondexheight SPECIES_TRAPINCH, "2’04”"
    mondexweight SPECIES_TRAPINCH, "33.1 lbs."


mondata SPECIES_VIBRAVA, "Vibrava"
    basestats 50, 70, 50, 70, 50, 50
    types TYPE_GROUND, TYPE_DRAGON
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_DRAGON
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_VIBRAVA_TM_DATA_0, SPECIES_VIBRAVA_TM_DATA_1, SPECIES_VIBRAVA_TM_DATA_2, SPECIES_VIBRAVA_TM_DATA_3
    mondexentry SPECIES_VIBRAVA, "It vibrates its wings vigorously,\ncreating ultrasonic waves that\ncause serious headaches."
    mondexclassification SPECIES_VIBRAVA, "Vibration Pokémon"
    mondexheight SPECIES_VIBRAVA, "3’07”"
    mondexweight SPECIES_VIBRAVA, "33.7 lbs."


mondata SPECIES_FLYGON, "Flygon"
    basestats 80, 100, 80, 100, 80, 80
    types TYPE_GROUND, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_DRAGON
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_FLYGON_TM_DATA_0, SPECIES_FLYGON_TM_DATA_1, SPECIES_FLYGON_TM_DATA_2, SPECIES_FLYGON_TM_DATA_3
    mondexentry SPECIES_FLYGON, "It is nicknamed “The Desert\nSpirit” because the flapping of its\nwings sounds like a woman singing."
    mondexclassification SPECIES_FLYGON, "Mystic Pokémon"
    mondexheight SPECIES_FLYGON, "6’07”"
    mondexweight SPECIES_FLYGON, "180.8 lbs."


mondata SPECIES_CACNEA, "Cacnea"
    basestats 50, 85, 40, 35, 85, 40
    types TYPE_GRASS, TYPE_GRASS
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_POISON_BARB, ITEM_STICKY_BARB
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_SAND_VEIL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CACNEA_TM_DATA_0, SPECIES_CACNEA_TM_DATA_1, SPECIES_CACNEA_TM_DATA_2, SPECIES_CACNEA_TM_DATA_3
    mondexentry SPECIES_CACNEA, "It lives in arid locations. Its\nyellow flowers bloom once a year."
    mondexclassification SPECIES_CACNEA, "Cactus Pokémon"
    mondexheight SPECIES_CACNEA, "1’04”"
    mondexweight SPECIES_CACNEA, "113.1 lbs."


mondata SPECIES_CACTURNE, "Cacturne"
    basestats 70, 115, 60, 55, 115, 60
    types TYPE_GRASS, TYPE_DARK
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_POISON_BARB, ITEM_STICKY_BARB
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_SAND_VEIL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CACTURNE_TM_DATA_0, SPECIES_CACTURNE_TM_DATA_1, SPECIES_CACTURNE_TM_DATA_2, SPECIES_CACTURNE_TM_DATA_3
    mondexentry SPECIES_CACTURNE, "Packs of them follow travelers\nthrough the desert until\nthe travelers can no longer move."
    mondexclassification SPECIES_CACTURNE, "Scarecrow Pokémon"
    mondexheight SPECIES_CACTURNE, "4’03”"
    mondexweight SPECIES_CACTURNE, "170.6 lbs."


mondata SPECIES_SWABLU, "Swablu"
    basestats 45, 40, 60, 50, 40, 75
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_FLYING, EGG_GROUP_DRAGON
    abilities ABILITY_NATURAL_CURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SWABLU_TM_DATA_0, SPECIES_SWABLU_TM_DATA_1, SPECIES_SWABLU_TM_DATA_2, SPECIES_SWABLU_TM_DATA_3
    mondexentry SPECIES_SWABLU, "Its wings bring cottony clouds to\nmind. It grooms with springwater\nand loves to sit on heads."
    mondexclassification SPECIES_SWABLU, "Cotton Bird Pokémon"
    mondexheight SPECIES_SWABLU, "1’04”"
    mondexweight SPECIES_SWABLU, "2.6 lbs."


mondata SPECIES_ALTARIA, "Altaria"
    basestats 75, 70, 90, 80, 70, 105
    types TYPE_DRAGON, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_FLYING, EGG_GROUP_DRAGON
    abilities ABILITY_NATURAL_CURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_ALTARIA_TM_DATA_0, SPECIES_ALTARIA_TM_DATA_1, SPECIES_ALTARIA_TM_DATA_2, SPECIES_ALTARIA_TM_DATA_3
    mondexentry SPECIES_ALTARIA, "It flies gracefully through the\nsky. Its melodic humming makes\nyou feel like you’re in a dream."
    mondexclassification SPECIES_ALTARIA, "Humming Pokémon"
    mondexheight SPECIES_ALTARIA, "3’07”"
    mondexweight SPECIES_ALTARIA, "45.4 lbs."


mondata SPECIES_ZANGOOSE, "Zangoose"
    basestats 73, 115, 60, 90, 60, 60
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_QUICK_CLAW, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_IMMUNITY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_ZANGOOSE_TM_DATA_0, SPECIES_ZANGOOSE_TM_DATA_1, SPECIES_ZANGOOSE_TM_DATA_2, SPECIES_ZANGOOSE_TM_DATA_3
    mondexentry SPECIES_ZANGOOSE, "Its fur would all stand on end if\nit smelled a SEVIPER nearby.\nIts sharp claws tear up its foes."
    mondexclassification SPECIES_ZANGOOSE, "Cat Ferret Pokémon"
    mondexheight SPECIES_ZANGOOSE, "4’03”"
    mondexweight SPECIES_ZANGOOSE, "88.8 lbs."


mondata SPECIES_SEVIPER, "Seviper"
    basestats 73, 100, 60, 65, 100, 60
    types TYPE_POISON, TYPE_POISON
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_PERSIM_BERRY, ITEM_SHED_SHELL
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_FIELD, EGG_GROUP_DRAGON
    abilities ABILITY_SHED_SKIN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SEVIPER_TM_DATA_0, SPECIES_SEVIPER_TM_DATA_1, SPECIES_SEVIPER_TM_DATA_2, SPECIES_SEVIPER_TM_DATA_3
    mondexentry SPECIES_SEVIPER, "In battle, it uses its bladed tail to\ncounter any ZANGOOSE. It secretes\na deadly venom in its tail."
    mondexclassification SPECIES_SEVIPER, "Fang Snake Pokémon"
    mondexheight SPECIES_SEVIPER, "8’10”"
    mondexweight SPECIES_SEVIPER, "115.7 lbs."


mondata SPECIES_LUNATONE, "Lunatone"
    basestats 90, 55, 65, 70, 95, 85
    types TYPE_ROCK, TYPE_PSYCHIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_MOON_STONE, ITEM_STARDUST
    genderratio 255
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_LUNATONE_TM_DATA_0, SPECIES_LUNATONE_TM_DATA_1, SPECIES_LUNATONE_TM_DATA_2, SPECIES_LUNATONE_TM_DATA_3
    mondexentry SPECIES_LUNATONE, "It was discovered at the site of a\nmeteor strike 40 years ago. Its\nstare can lull its foes to sleep."
    mondexclassification SPECIES_LUNATONE, "Meteorite Pokémon"
    mondexheight SPECIES_LUNATONE, "3’03”"
    mondexweight SPECIES_LUNATONE, "370.4 lbs."


mondata SPECIES_SOLROCK, "Solrock"
    basestats 90, 95, 85, 70, 55, 65
    types TYPE_ROCK, TYPE_PSYCHIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_SUN_STONE, ITEM_STARDUST
    genderratio 255
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_SOLROCK_TM_DATA_0, SPECIES_SOLROCK_TM_DATA_1, SPECIES_SOLROCK_TM_DATA_2, SPECIES_SOLROCK_TM_DATA_3
    mondexentry SPECIES_SOLROCK, "When it rotates itself, it gives off\nlight similar to the sun, thus\nblinding its foes."
    mondexclassification SPECIES_SOLROCK, "Meteorite Pokémon"
    mondexheight SPECIES_SOLROCK, "3’11”"
    mondexweight SPECIES_SOLROCK, "339.5 lbs."


mondata SPECIES_BARBOACH, "Barboach"
    basestats 50, 48, 43, 60, 46, 41
    types TYPE_WATER, TYPE_GROUND
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_OBLIVIOUS, ABILITY_ANTICIPATION
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_BARBOACH_TM_DATA_0, SPECIES_BARBOACH_TM_DATA_1, SPECIES_BARBOACH_TM_DATA_2, SPECIES_BARBOACH_TM_DATA_3
    mondexentry SPECIES_BARBOACH, "BARBOACH uses its whiskers to\ntaste things just as a person uses\nhis or her tongue to taste things."
    mondexclassification SPECIES_BARBOACH, "Whiskers Pokémon"
    mondexheight SPECIES_BARBOACH, "1’04”"
    mondexweight SPECIES_BARBOACH, "4.2 lbs."


mondata SPECIES_WHISCASH, "Whiscash"
    basestats 110, 78, 73, 60, 76, 71
    types TYPE_WATER, TYPE_GROUND
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_OBLIVIOUS, ABILITY_ANTICIPATION
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_WHISCASH_TM_DATA_0, SPECIES_WHISCASH_TM_DATA_1, SPECIES_WHISCASH_TM_DATA_2, SPECIES_WHISCASH_TM_DATA_3
    mondexentry SPECIES_WHISCASH, "It claims a large swamp to itself.\nIf a foe comes near it, it sets off\ntremors by thrashing around."
    mondexclassification SPECIES_WHISCASH, "Whiskers Pokémon"
    mondexheight SPECIES_WHISCASH, "2’11”"
    mondexweight SPECIES_WHISCASH, "52.0 lbs."


mondata SPECIES_CORPHISH, "Corphish"
    basestats 43, 80, 65, 35, 50, 35
    types TYPE_WATER, TYPE_WATER
    catchrate 205
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_HYPER_CUTTER, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CORPHISH_TM_DATA_0, SPECIES_CORPHISH_TM_DATA_1, SPECIES_CORPHISH_TM_DATA_2, SPECIES_CORPHISH_TM_DATA_3
    mondexentry SPECIES_CORPHISH, "It was originally a Pokémon from\nafar that escaped to the wild. It\ncan adapt to the dirtiest river."
    mondexclassification SPECIES_CORPHISH, "Ruffian Pokémon"
    mondexheight SPECIES_CORPHISH, "2’00”"
    mondexweight SPECIES_CORPHISH, "25.4 lbs."


mondata SPECIES_CRAWDAUNT, "Crawdaunt"
    basestats 63, 120, 85, 55, 90, 55
    types TYPE_WATER, TYPE_DARK
    catchrate 155
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_HYPER_CUTTER, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CRAWDAUNT_TM_DATA_0, SPECIES_CRAWDAUNT_TM_DATA_1, SPECIES_CRAWDAUNT_TM_DATA_2, SPECIES_CRAWDAUNT_TM_DATA_3
    mondexentry SPECIES_CRAWDAUNT, "A brutish Pokémon that loves to\nbattle. It will crash itself into any\nfoe that approaches its nest."
    mondexclassification SPECIES_CRAWDAUNT, "Rogue Pokémon"
    mondexheight SPECIES_CRAWDAUNT, "3’07”"
    mondexweight SPECIES_CRAWDAUNT, "72.3 lbs."


mondata SPECIES_BALTOY, "Baltoy"
    basestats 40, 40, 55, 55, 40, 70
    types TYPE_GROUND, TYPE_PSYCHIC
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_LIGHT_CLAY, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BALTOY_TM_DATA_0, SPECIES_BALTOY_TM_DATA_1, SPECIES_BALTOY_TM_DATA_2, SPECIES_BALTOY_TM_DATA_3
    mondexentry SPECIES_BALTOY, "It moves while spinning around on\nits single foot. Some BALTOY have\nbeen seen spinning on their heads."
    mondexclassification SPECIES_BALTOY, "Clay Doll Pokémon"
    mondexheight SPECIES_BALTOY, "1’08”"
    mondexweight SPECIES_BALTOY, "47.4 lbs."


mondata SPECIES_CLAYDOL, "Claydol"
    basestats 60, 70, 105, 75, 70, 120
    types TYPE_GROUND, TYPE_PSYCHIC
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_LIGHT_CLAY, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_CLAYDOL_TM_DATA_0, SPECIES_CLAYDOL_TM_DATA_1, SPECIES_CLAYDOL_TM_DATA_2, SPECIES_CLAYDOL_TM_DATA_3
    mondexentry SPECIES_CLAYDOL, "It is said that it originates from clay\ndolls made by an ancient civilization."
    mondexclassification SPECIES_CLAYDOL, "Clay Doll Pokémon"
    mondexheight SPECIES_CLAYDOL, "4’11”"
    mondexweight SPECIES_CLAYDOL, "238.1 lbs."


mondata SPECIES_LILEEP, "Lileep"
    basestats 66, 41, 77, 23, 61, 87
    types TYPE_ROCK, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_BIG_ROOT, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_SUCTION_CUPS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_LILEEP_TM_DATA_0, SPECIES_LILEEP_TM_DATA_1, SPECIES_LILEEP_TM_DATA_2, SPECIES_LILEEP_TM_DATA_3
    mondexentry SPECIES_LILEEP, "It disguises its tentacles as\nflowers to attract and catch prey.\nIt became extinct in ancient times."
    mondexclassification SPECIES_LILEEP, "Sea Lily Pokémon"
    mondexheight SPECIES_LILEEP, "3’03”"
    mondexweight SPECIES_LILEEP, "52.5 lbs."


mondata SPECIES_CRADILY, "Cradily"
    basestats 86, 81, 97, 43, 81, 107
    types TYPE_ROCK, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_BIG_ROOT, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_SUCTION_CUPS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CRADILY_TM_DATA_0, SPECIES_CRADILY_TM_DATA_1, SPECIES_CRADILY_TM_DATA_2, SPECIES_CRADILY_TM_DATA_3
    mondexentry SPECIES_CRADILY, "It lives in warm seas. Its heavy\nbody weighs it down so it won’t\nget washed away in rough weather."
    mondexclassification SPECIES_CRADILY, "Barnacle Pokémon"
    mondexheight SPECIES_CRADILY, "4’11”"
    mondexweight SPECIES_CRADILY, "133.2 lbs."


mondata SPECIES_ANORITH, "Anorith"
    basestats 45, 95, 50, 75, 40, 50
    types TYPE_ROCK, TYPE_BUG
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_BATTLE_ARMOR, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_ANORITH_TM_DATA_0, SPECIES_ANORITH_TM_DATA_1, SPECIES_ANORITH_TM_DATA_2, SPECIES_ANORITH_TM_DATA_3
    mondexentry SPECIES_ANORITH, "An ancestral Pokémon that lived in\nthe ocean. Over time, its eight feet\ntransformed into wings."
    mondexclassification SPECIES_ANORITH, "Old Shrimp Pokémon"
    mondexheight SPECIES_ANORITH, "2’04”"
    mondexweight SPECIES_ANORITH, "27.6 lbs."


mondata SPECIES_ARMALDO, "Armaldo"
    basestats 75, 125, 100, 45, 70, 80
    types TYPE_ROCK, TYPE_BUG
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_BATTLE_ARMOR, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_ARMALDO_TM_DATA_0, SPECIES_ARMALDO_TM_DATA_1, SPECIES_ARMALDO_TM_DATA_2, SPECIES_ARMALDO_TM_DATA_3
    mondexentry SPECIES_ARMALDO, "Its enormous, retractable claws\ncan cut through most anything. Its\nentire body is clad in sturdy plates."
    mondexclassification SPECIES_ARMALDO, "Plate Pokémon"
    mondexheight SPECIES_ARMALDO, "4’11”"
    mondexweight SPECIES_ARMALDO, "150.4 lbs."


mondata SPECIES_FEEBAS, "Feebas"
    basestats 20, 15, 20, 80, 10, 55
    types TYPE_WATER, TYPE_WATER
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_SWIFT_SWIM, ABILITY_OBLIVIOUS
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_FEEBAS_TM_DATA_0, SPECIES_FEEBAS_TM_DATA_1, SPECIES_FEEBAS_TM_DATA_2, SPECIES_FEEBAS_TM_DATA_3
    mondexentry SPECIES_FEEBAS, "It is the shabbiest Pokémon of all.\nIt forms in schools and lives at the\nbottom of rivers."
    mondexclassification SPECIES_FEEBAS, "Fish Pokémon"
    mondexheight SPECIES_FEEBAS, "2’00”"
    mondexweight SPECIES_FEEBAS, "16.3 lbs."


mondata SPECIES_MILOTIC, "Milotic"
    basestats 95, 60, 79, 81, 100, 125
    types TYPE_WATER, TYPE_WATER
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_MARVEL_SCALE, ABILITY_COMPETITIVE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_MILOTIC_TM_DATA_0, SPECIES_MILOTIC_TM_DATA_1, SPECIES_MILOTIC_TM_DATA_2, SPECIES_MILOTIC_TM_DATA_3
    mondexentry SPECIES_MILOTIC, "It’s said that a glimpse of a\nMILOTIC and its beauty will calm any\nhostile emotions you’re feeling."
    mondexclassification SPECIES_MILOTIC, "Tender Pokémon"
    mondexheight SPECIES_MILOTIC, "20’04”"
    mondexweight SPECIES_MILOTIC, "357.1 lbs."


mondata SPECIES_CASTFORM, "Castform"
    basestats 70, 70, 70, 70, 70, 70
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_MYSTIC_WATER, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_AMORPHOUS
    abilities ABILITY_FORECAST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_CASTFORM_TM_DATA_0, SPECIES_CASTFORM_TM_DATA_1, SPECIES_CASTFORM_TM_DATA_2, SPECIES_CASTFORM_TM_DATA_3
    mondexentry SPECIES_CASTFORM, "This Pokémon can change its cells,\ntaking different forms based on\nthe temperature and humidity."
    mondexclassification SPECIES_CASTFORM, "Weather Pokémon"
    mondexheight SPECIES_CASTFORM, "1’00”"
    mondexweight SPECIES_CASTFORM, "1.8 lbs."


mondata SPECIES_KECLEON, "Kecleon"
    basestats 60, 90, 70, 40, 60, 120
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_PERSIM_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_COLOR_CHANGE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_KECLEON_TM_DATA_0, SPECIES_KECLEON_TM_DATA_1, SPECIES_KECLEON_TM_DATA_2, SPECIES_KECLEON_TM_DATA_3
    mondexentry SPECIES_KECLEON, "It changes its shading to match its\nsurroundings so it can sneak up on prey.\nOnly its belly patterns stay fixed."
    mondexclassification SPECIES_KECLEON, "Color Swap Pokémon"
    mondexheight SPECIES_KECLEON, "3’03”"
    mondexweight SPECIES_KECLEON, "48.5 lbs."


mondata SPECIES_SHUPPET, "Shuppet"
    basestats 44, 75, 35, 45, 63, 33
    types TYPE_GHOST, TYPE_GHOST
    catchrate 225
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_SPELL_TAG, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 35
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_INSOMNIA, ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SHUPPET_TM_DATA_0, SPECIES_SHUPPET_TM_DATA_1, SPECIES_SHUPPET_TM_DATA_2, SPECIES_SHUPPET_TM_DATA_3
    mondexentry SPECIES_SHUPPET, "It uses its horn to feed on envy\nand malice, or so it’s said.\nIt’s very active at night."
    mondexclassification SPECIES_SHUPPET, "Puppet Pokémon"
    mondexheight SPECIES_SHUPPET, "2’00”"
    mondexweight SPECIES_SHUPPET, "5.1 lbs."


mondata SPECIES_BANETTE, "Banette"
    basestats 64, 115, 65, 65, 83, 63
    types TYPE_GHOST, TYPE_GHOST
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_SPELL_TAG, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 35
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_INSOMNIA, ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_BANETTE_TM_DATA_0, SPECIES_BANETTE_TM_DATA_1, SPECIES_BANETTE_TM_DATA_2, SPECIES_BANETTE_TM_DATA_3
    mondexentry SPECIES_BANETTE, "This Pokémon developed from an\nabandoned doll that amassed a\ngrudge. It is seen in dark alleys."
    mondexclassification SPECIES_BANETTE, "Marionette Pokémon"
    mondexheight SPECIES_BANETTE, "3’07”"
    mondexweight SPECIES_BANETTE, "27.6 lbs."


mondata SPECIES_DUSKULL, "Duskull"
    basestats 20, 40, 90, 25, 30, 90
    types TYPE_GHOST, TYPE_GHOST
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_KASIB_BERRY, ITEM_SPELL_TAG
    genderratio 127
    eggcycles 25
    basefriendship 35
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_DUSKULL_TM_DATA_0, SPECIES_DUSKULL_TM_DATA_1, SPECIES_DUSKULL_TM_DATA_2, SPECIES_DUSKULL_TM_DATA_3
    mondexentry SPECIES_DUSKULL, "If it finds bad children who won’t\nlisten to their parents, it will\nspirit them away--or so it’s said."
    mondexclassification SPECIES_DUSKULL, "Requiem Pokémon"
    mondexheight SPECIES_DUSKULL, "2’07”"
    mondexweight SPECIES_DUSKULL, "33.1 lbs."


mondata SPECIES_DUSCLOPS, "Dusclops"
    basestats 40, 70, 130, 25, 60, 130
    types TYPE_GHOST, TYPE_GHOST
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_KASIB_BERRY, ITEM_SPELL_TAG
    genderratio 127
    eggcycles 25
    basefriendship 35
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_DUSCLOPS_TM_DATA_0, SPECIES_DUSCLOPS_TM_DATA_1, SPECIES_DUSCLOPS_TM_DATA_2, SPECIES_DUSCLOPS_TM_DATA_3
    mondexentry SPECIES_DUSCLOPS, "Anyone who dares peer into its body\nto see its spectral ball of fire\nwill have their spirit stolen away."
    mondexclassification SPECIES_DUSCLOPS, "Beckon Pokémon"
    mondexheight SPECIES_DUSCLOPS, "5’03”"
    mondexweight SPECIES_DUSCLOPS, "67.5 lbs."


mondata SPECIES_TROPIUS, "Tropius"
    basestats 99, 68, 83, 51, 72, 87
    types TYPE_GRASS, TYPE_FLYING
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_SOLAR_POWER
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_TROPIUS_TM_DATA_0, SPECIES_TROPIUS_TM_DATA_1, SPECIES_TROPIUS_TM_DATA_2, SPECIES_TROPIUS_TM_DATA_3
    mondexentry SPECIES_TROPIUS, "The bunch of fruit around its neck\nripens twice a year and is delicious.\nIt’s a highly favored tropical snack."
    mondexclassification SPECIES_TROPIUS, "Fruit Pokémon"
    mondexheight SPECIES_TROPIUS, "6’07”"
    mondexweight SPECIES_TROPIUS, "220.5 lbs."


mondata SPECIES_CHIMECHO, "Chimecho"
    basestats 75, 50, 80, 65, 95, 90
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 1
    items ITEM_COLBUR_BERRY, ITEM_CLEANSE_TAG
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CHIMECHO_TM_DATA_0, SPECIES_CHIMECHO_TM_DATA_1, SPECIES_CHIMECHO_TM_DATA_2, SPECIES_CHIMECHO_TM_DATA_3
    mondexentry SPECIES_CHIMECHO, "It uses the sucker on its head to\nhang from a tree or from eaves. It\ncan produce seven different tones."
    mondexclassification SPECIES_CHIMECHO, "Wind Chime Pokémon"
    mondexheight SPECIES_CHIMECHO, "2’00”"
    mondexweight SPECIES_CHIMECHO, "2.2 lbs."


mondata SPECIES_ABSOL, "Absol"
    basestats 65, 130, 60, 75, 75, 60
    types TYPE_DARK, TYPE_DARK
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_LIFE_ORB, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 35
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PRESSURE, ABILITY_SUPER_LUCK
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_ABSOL_TM_DATA_0, SPECIES_ABSOL_TM_DATA_1, SPECIES_ABSOL_TM_DATA_2, SPECIES_ABSOL_TM_DATA_3
    mondexentry SPECIES_ABSOL, "It has the ability to foretell\nnatural disasters. Its life span is\nover a hundred years."
    mondexclassification SPECIES_ABSOL, "Disaster Pokémon"
    mondexheight SPECIES_ABSOL, "3’11”"
    mondexweight SPECIES_ABSOL, "103.6 lbs."


mondata SPECIES_WYNAUT, "Wynaut"
    basestats 95, 23, 48, 23, 23, 48
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 125
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_SHADOW_TAG, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_WYNAUT_TM_DATA_0, SPECIES_WYNAUT_TM_DATA_1, SPECIES_WYNAUT_TM_DATA_2, SPECIES_WYNAUT_TM_DATA_3
    mondexentry SPECIES_WYNAUT, "It tends to move in a pack.\nIndividuals squash against one\nanother to toughen their spirits."
    mondexclassification SPECIES_WYNAUT, "Bright Pokémon"
    mondexheight SPECIES_WYNAUT, "2’00”"
    mondexweight SPECIES_WYNAUT, "30.9 lbs."


mondata SPECIES_SNORUNT, "Snorunt"
    basestats 50, 50, 50, 50, 50, 50
    types TYPE_ICE, TYPE_ICE
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_BABIRI_BERRY, ITEM_SNOWBALL
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_MINERAL
    abilities ABILITY_INNER_FOCUS, ABILITY_ICE_BODY
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_SNORUNT_TM_DATA_0, SPECIES_SNORUNT_TM_DATA_1, SPECIES_SNORUNT_TM_DATA_2, SPECIES_SNORUNT_TM_DATA_3
    mondexentry SPECIES_SNORUNT, "It’s said that if they are seen at\nmidnight, they’ll cause heavy snow.\nThey eat snow and ice to survive."
    mondexclassification SPECIES_SNORUNT, "Snow Hat Pokémon"
    mondexheight SPECIES_SNORUNT, "2’04”"
    mondexweight SPECIES_SNORUNT, "37.0 lbs."


mondata SPECIES_GLALIE, "Glalie"
    basestats 80, 80, 80, 80, 80, 80
    types TYPE_ICE, TYPE_ICE
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_BABIRI_BERRY, ITEM_NEVERMELTICE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_MINERAL
    abilities ABILITY_INNER_FOCUS, ABILITY_ICE_BODY
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_GLALIE_TM_DATA_0, SPECIES_GLALIE_TM_DATA_1, SPECIES_GLALIE_TM_DATA_2, SPECIES_GLALIE_TM_DATA_3
    mondexentry SPECIES_GLALIE, "It can instantly freeze moisture in\nthe atmosphere. It uses this power\nto freeze its foes."
    mondexclassification SPECIES_GLALIE, "Face Pokémon"
    mondexheight SPECIES_GLALIE, "4’11”"
    mondexweight SPECIES_GLALIE, "565.5 lbs."


mondata SPECIES_SPHEAL, "Spheal"
    basestats 70, 40, 50, 25, 55, 50
    types TYPE_ICE, TYPE_WATER
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_THICK_FAT, ABILITY_ICE_BODY
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SPHEAL_TM_DATA_0, SPECIES_SPHEAL_TM_DATA_1, SPECIES_SPHEAL_TM_DATA_2, SPECIES_SPHEAL_TM_DATA_3
    mondexentry SPECIES_SPHEAL, "It crosses the oceans by rolling itself\non drifting ice. Fluffy fur keeps it warm\nwhen the temperature is below freezing."
    mondexclassification SPECIES_SPHEAL, "Clap Pokémon"
    mondexheight SPECIES_SPHEAL, "2’07”"
    mondexweight SPECIES_SPHEAL, "87.1 lbs."


mondata SPECIES_SEALEO, "Sealeo"
    basestats 90, 60, 70, 45, 75, 70
    types TYPE_ICE, TYPE_WATER
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_THICK_FAT, ABILITY_ICE_BODY
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SEALEO_TM_DATA_0, SPECIES_SEALEO_TM_DATA_1, SPECIES_SEALEO_TM_DATA_2, SPECIES_SEALEO_TM_DATA_3
    mondexentry SPECIES_SEALEO, "It has a very sensitive nose.\nIt touches new things with its nose\nto examine them."
    mondexclassification SPECIES_SEALEO, "Ball Roll Pokémon"
    mondexheight SPECIES_SEALEO, "3’07”"
    mondexweight SPECIES_SEALEO, "193.1 lbs."


mondata SPECIES_WALREIN, "Walrein"
    basestats 110, 80, 90, 65, 95, 90
    types TYPE_ICE, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_THICK_FAT, ABILITY_ICE_BODY
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_WALREIN_TM_DATA_0, SPECIES_WALREIN_TM_DATA_1, SPECIES_WALREIN_TM_DATA_2, SPECIES_WALREIN_TM_DATA_3
    mondexentry SPECIES_WALREIN, "It shatters drift ice with its\nstrong tusks. Its thick layer of\nblubber repels enemy attacks."
    mondexclassification SPECIES_WALREIN, "Ice Break Pokémon"
    mondexheight SPECIES_WALREIN, "4’07”"
    mondexweight SPECIES_WALREIN, "332.0 lbs."


mondata SPECIES_CLAMPERL, "Clamperl"
    basestats 35, 64, 85, 32, 74, 55
    types TYPE_WATER, TYPE_WATER
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_BLUE_SHARD, ITEM_PEARL
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_SHELL_ARMOR, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CLAMPERL_TM_DATA_0, SPECIES_CLAMPERL_TM_DATA_1, SPECIES_CLAMPERL_TM_DATA_2, SPECIES_CLAMPERL_TM_DATA_3
    mondexentry SPECIES_CLAMPERL, "When it evolves, it makes a\nmysterious pearl that amplifies\npsychic powers when it’s held."
    mondexclassification SPECIES_CLAMPERL, "Bivalve Pokémon"
    mondexheight SPECIES_CLAMPERL, "1’04”"
    mondexweight SPECIES_CLAMPERL, "115.7 lbs."


mondata SPECIES_HUNTAIL, "Huntail"
    basestats 55, 104, 105, 52, 94, 75
    types TYPE_WATER, TYPE_WATER
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 1, 0, 0, 0
    items ITEM_DEEPSEATOOTH, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_HUNTAIL_TM_DATA_0, SPECIES_HUNTAIL_TM_DATA_1, SPECIES_HUNTAIL_TM_DATA_2, SPECIES_HUNTAIL_TM_DATA_3
    mondexentry SPECIES_HUNTAIL, "It lives deep in the pitch-dark sea.\nIt attracts prey by moving its tail\nin mimicry of a small animal."
    mondexclassification SPECIES_HUNTAIL, "Deep Sea Pokémon"
    mondexheight SPECIES_HUNTAIL, "5’07”"
    mondexweight SPECIES_HUNTAIL, "59.5 lbs."


mondata SPECIES_GOREBYSS, "Gorebyss"
    basestats 55, 84, 105, 52, 114, 75
    types TYPE_WATER, TYPE_WATER
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_DEEPSEASCALE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_GOREBYSS_TM_DATA_0, SPECIES_GOREBYSS_TM_DATA_1, SPECIES_GOREBYSS_TM_DATA_2, SPECIES_GOREBYSS_TM_DATA_3
    mondexentry SPECIES_GOREBYSS, "Its pink body becomes more vivid\nwith the rise of water\ntemperatures in the springtime."
    mondexclassification SPECIES_GOREBYSS, "South Sea Pokémon"
    mondexheight SPECIES_GOREBYSS, "5’11”"
    mondexweight SPECIES_GOREBYSS, "49.8 lbs."


mondata SPECIES_RELICANTH, "Relicanth"
    basestats 100, 90, 130, 55, 45, 65
    types TYPE_WATER, TYPE_ROCK
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 1, 0, 0, 0
    items ITEM_GREEN_SHARD, ITEM_DEEPSEASCALE
    genderratio 31
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_2
    abilities ABILITY_SWIFT_SWIM, ABILITY_ROCK_HEAD
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_RELICANTH_TM_DATA_0, SPECIES_RELICANTH_TM_DATA_1, SPECIES_RELICANTH_TM_DATA_2, SPECIES_RELICANTH_TM_DATA_3
    mondexentry SPECIES_RELICANTH, "Discovered by chance during\ndeep-sea explorations, it has not\nchanged since ancient times."
    mondexclassification SPECIES_RELICANTH, "Longevity Pokémon"
    mondexheight SPECIES_RELICANTH, "3’03”"
    mondexweight SPECIES_RELICANTH, "51.6 lbs."


mondata SPECIES_LUVDISC, "Luvdisc"
    basestats 43, 30, 55, 97, 40, 65
    types TYPE_WATER, TYPE_WATER
    catchrate 225
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_HEART_SCALE, ITEM_NONE
    genderratio 190
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_LUVDISC_TM_DATA_0, SPECIES_LUVDISC_TM_DATA_1, SPECIES_LUVDISC_TM_DATA_2, SPECIES_LUVDISC_TM_DATA_3
    mondexentry SPECIES_LUVDISC, "Its heart-shaped body makes it\npopular. In some places, you would\ngive a LUVDISC to someone you love."
    mondexclassification SPECIES_LUVDISC, "Rendezvous Pokémon"
    mondexheight SPECIES_LUVDISC, "2’00”"
    mondexweight SPECIES_LUVDISC, "19.2 lbs."


mondata SPECIES_BAGON, "Bagon"
    basestats 45, 75, 60, 50, 40, 30
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_DRAGON_SCALE, ITEM_DRAGON_FANG
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_ROCK_HEAD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_BAGON_TM_DATA_0, SPECIES_BAGON_TM_DATA_1, SPECIES_BAGON_TM_DATA_2, SPECIES_BAGON_TM_DATA_3
    mondexentry SPECIES_BAGON, "Its well-developed neck muscles\nand ironlike head can smash\nboulders into pieces."
    mondexclassification SPECIES_BAGON, "Rock Head Pokémon"
    mondexheight SPECIES_BAGON, "2’00”"
    mondexweight SPECIES_BAGON, "92.8 lbs."


mondata SPECIES_SHELGON, "Shelgon"
    basestats 65, 95, 100, 50, 60, 50
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_DRAGON_SCALE, ITEM_DRAGON_FANG
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_ROCK_HEAD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SHELGON_TM_DATA_0, SPECIES_SHELGON_TM_DATA_1, SPECIES_SHELGON_TM_DATA_2, SPECIES_SHELGON_TM_DATA_3
    mondexentry SPECIES_SHELGON, "It surrounds its body in an\niron-hard shell to accumulate\nenough power to evolve."
    mondexclassification SPECIES_SHELGON, "Endurance Pokémon"
    mondexheight SPECIES_SHELGON, "3’07”"
    mondexweight SPECIES_SHELGON, "243.6 lbs."


mondata SPECIES_SALAMENCE, "Salamence"
    basestats 95, 135, 80, 100, 110, 80
    types TYPE_DRAGON, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_DRAGON_SCALE, ITEM_DRAGON_FANG
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_INTIMIDATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SALAMENCE_TM_DATA_0, SPECIES_SALAMENCE_TM_DATA_1, SPECIES_SALAMENCE_TM_DATA_2, SPECIES_SALAMENCE_TM_DATA_3
    mondexentry SPECIES_SALAMENCE, "It’s uncontrollable if enraged.\nIt flies around spouting flames and\nscorching fields and mountains."
    mondexclassification SPECIES_SALAMENCE, "Dragon Pokémon"
    mondexheight SPECIES_SALAMENCE, "4’11”"
    mondexweight SPECIES_SALAMENCE, "226.2 lbs."


mondata SPECIES_BELDUM, "Beldum"
    basestats 40, 55, 80, 30, 35, 60
    types TYPE_STEEL, TYPE_PSYCHIC
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_METAL_COAT, ITEM_NONE
    genderratio 255
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_CLEAR_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_BELDUM_TM_DATA_0, SPECIES_BELDUM_TM_DATA_1, SPECIES_BELDUM_TM_DATA_2, SPECIES_BELDUM_TM_DATA_3
    mondexentry SPECIES_BELDUM, "The magnetic force generated by\nits body repels the ground’s\nnatural magnetism, letting it float."
    mondexclassification SPECIES_BELDUM, "Iron Ball Pokémon"
    mondexheight SPECIES_BELDUM, "2’00”"
    mondexweight SPECIES_BELDUM, "209.9 lbs."


mondata SPECIES_METANG, "Metang"
    basestats 60, 75, 100, 50, 55, 80
    types TYPE_STEEL, TYPE_PSYCHIC
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_METAL_COAT, ITEM_NONE
    genderratio 255
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_CLEAR_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_METANG_TM_DATA_0, SPECIES_METANG_TM_DATA_1, SPECIES_METANG_TM_DATA_2, SPECIES_METANG_TM_DATA_3
    mondexentry SPECIES_METANG, "When two BELDUM fuse together, a\nmagnetic nervous system places\ntheir brains in union."
    mondexclassification SPECIES_METANG, "Iron Claw Pokémon"
    mondexheight SPECIES_METANG, "3’11”"
    mondexweight SPECIES_METANG, "446.4 lbs."


mondata SPECIES_METAGROSS, "Metagross"
    basestats 80, 135, 130, 70, 95, 90
    types TYPE_STEEL, TYPE_PSYCHIC
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_METAL_COAT, ITEM_NONE
    genderratio 255
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_CLEAR_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_METAGROSS_TM_DATA_0, SPECIES_METAGROSS_TM_DATA_1, SPECIES_METAGROSS_TM_DATA_2, SPECIES_METAGROSS_TM_DATA_3
    mondexentry SPECIES_METAGROSS, "It folds its four legs when flying.\nIts four brains are said to be\nsuperior to a supercomputer."
    mondexclassification SPECIES_METAGROSS, "Iron Leg Pokémon"
    mondexheight SPECIES_METAGROSS, "5’03”"
    mondexweight SPECIES_METAGROSS, "1212.5 lbs."


mondata SPECIES_REGIROCK, "Regirock"
    basestats 80, 100, 200, 50, 50, 100
    types TYPE_ROCK, TYPE_ROCK
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 80
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_CLEAR_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_REGIROCK_TM_DATA_0, SPECIES_REGIROCK_TM_DATA_1, SPECIES_REGIROCK_TM_DATA_2, SPECIES_REGIROCK_TM_DATA_3
    mondexentry SPECIES_REGIROCK, "The same rocks that form its body\nhave been found in ground layers\naround the world."
    mondexclassification SPECIES_REGIROCK, "Rock Peak Pokémon"
    mondexheight SPECIES_REGIROCK, "5’07”"
    mondexweight SPECIES_REGIROCK, "507.1 lbs."


mondata SPECIES_REGICE, "Regice"
    basestats 80, 50, 100, 50, 100, 200
    types TYPE_ICE, TYPE_ICE
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 80
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_CLEAR_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_REGICE_TM_DATA_0, SPECIES_REGICE_TM_DATA_1, SPECIES_REGICE_TM_DATA_2, SPECIES_REGICE_TM_DATA_3
    mondexentry SPECIES_REGICE, "It is said to have slept in a glacier\nfor thousands of years. Its body\ncan’t be melted, even by magma."
    mondexclassification SPECIES_REGICE, "Iceberg Pokémon"
    mondexheight SPECIES_REGICE, "5’11”"
    mondexweight SPECIES_REGICE, "385.8 lbs."


mondata SPECIES_REGISTEEL, "Registeel"
    basestats 80, 75, 150, 50, 75, 150
    types TYPE_STEEL, TYPE_STEEL
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 1
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
    mondexentry SPECIES_REGISTEEL, "Its body is said to be harder than\nany kind of metal. A study has\nrevealed that its body is hollow."
    mondexclassification SPECIES_REGISTEEL, "Iron Pokémon"
    mondexheight SPECIES_REGISTEEL, "6’03”"
    mondexweight SPECIES_REGISTEEL, "451.9 lbs."


mondata SPECIES_LATIAS, "Latias"
    basestats 80, 80, 90, 110, 110, 130
    types TYPE_DRAGON, TYPE_PSYCHIC
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 3
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
    mondexentry SPECIES_LATIAS, "It communicates using telepathy.\nIts body is covered in down that\nrefracts light to make it invisible."
    mondexclassification SPECIES_LATIAS, "Eon Pokémon"
    mondexheight SPECIES_LATIAS, "4’07”"
    mondexweight SPECIES_LATIAS, "88.2 lbs."


mondata SPECIES_LATIOS, "Latios"
    basestats 80, 90, 80, 110, 130, 110
    types TYPE_DRAGON, TYPE_PSYCHIC
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
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
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
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
    mondexentry SPECIES_KYOGRE, "A mythical Pokémon said to have\nswelled the seas with rain and tidal\nwaves. It battled with GROUDON."
    mondexclassification SPECIES_KYOGRE, "Sea Basin Pokémon"
    mondexheight SPECIES_KYOGRE, "14’09”"
    mondexweight SPECIES_KYOGRE, "776.0 lbs."


mondata SPECIES_GROUDON, "Groudon"
    basestats 100, 150, 140, 90, 100, 90
    types TYPE_GROUND, TYPE_GROUND
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
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
    mondexentry SPECIES_GROUDON, "Said to have expanded the lands by\nevaporating water with raging heat.\nIt battled titanically with KYOGRE."
    mondexclassification SPECIES_GROUDON, "Continent Pokémon"
    mondexheight SPECIES_GROUDON, "11’06”"
    mondexweight SPECIES_GROUDON, "2094.4 lbs."


mondata SPECIES_RAYQUAZA, "Rayquaza"
    basestats 105, 150, 90, 95, 150, 90
    types TYPE_DRAGON, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 1, 0
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
    mondexentry SPECIES_RAYQUAZA, "It flies in the ozone layer, way up\nhigh in the sky. Until recently,\nno one had ever seen it."
    mondexclassification SPECIES_RAYQUAZA, "Sky High Pokémon"
    mondexheight SPECIES_RAYQUAZA, "23’00”"
    mondexweight SPECIES_RAYQUAZA, "455.2 lbs."


mondata SPECIES_JIRACHI, "Jirachi"
    basestats 100, 100, 100, 100, 100, 100
    types TYPE_STEEL, TYPE_PSYCHIC
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_STAR_PIECE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 100
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_SERENE_GRACE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_JIRACHI_TM_DATA_0, SPECIES_JIRACHI_TM_DATA_1, SPECIES_JIRACHI_TM_DATA_2, SPECIES_JIRACHI_TM_DATA_3
    mondexentry SPECIES_JIRACHI, "Generations have believed that any\nwish written on a note on its head\nwill come true when it awakens."
    mondexclassification SPECIES_JIRACHI, "Wish Pokémon"
    mondexheight SPECIES_JIRACHI, "1’00”"
    mondexweight SPECIES_JIRACHI, "2.4 lbs."


mondata SPECIES_DEOXYS, "Deoxys"
    basestats 50, 150, 50, 150, 150, 50
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 3
    baseexp 215
    evyields 0, 1, 0, 1, 1, 0
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
    mondexentry SPECIES_DEOXYS, "DNA from a space virus mutated and\nbecame a Pokémon. It appears\nwhere auroras are seen."
    mondexclassification SPECIES_DEOXYS, "DNA Pokémon"
    mondexheight SPECIES_DEOXYS, "5’07”"
    mondexweight SPECIES_DEOXYS, "134.0 lbs."


mondata SPECIES_TURTWIG, "Turtwig"
    basestats 55, 68, 64, 31, 45, 55
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
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
    mondexentry SPECIES_TURTWIG, "Photosynthesis occurs across its\nbody under the sun. The shell on\nits back is actually hardened soil."
    mondexclassification SPECIES_TURTWIG, "Tiny Leaf Pokémon"
    mondexheight SPECIES_TURTWIG, "1’04”"
    mondexweight SPECIES_TURTWIG, "22.5 lbs."


mondata SPECIES_GROTLE, "Grotle"
    basestats 75, 89, 85, 36, 55, 65
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 1, 0, 0, 0
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
    mondexentry SPECIES_GROTLE, "A GROTLE that lives in the forest\nis said to have its own secret\nspringwater."
    mondexclassification SPECIES_GROTLE, "Grove Pokémon"
    mondexheight SPECIES_GROTLE, "3’07”"
    mondexweight SPECIES_GROTLE, "213.8 lbs."


mondata SPECIES_TORTERRA, "Torterra"
    basestats 95, 109, 105, 56, 75, 85
    types TYPE_GRASS, TYPE_GROUND
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_TORTERRA_TM_DATA_0, SPECIES_TORTERRA_TM_DATA_1, SPECIES_TORTERRA_TM_DATA_2, SPECIES_TORTERRA_TM_DATA_3
    mondexentry SPECIES_TORTERRA, "Ancient people imagined that\nbeneath the ground, a gigantic\nTORTERRA dwelled."
    mondexclassification SPECIES_TORTERRA, "Continent Pokémon"
    mondexheight SPECIES_TORTERRA, "7’03”"
    mondexweight SPECIES_TORTERRA, "683.4 lbs."


mondata SPECIES_CHIMCHAR, "Chimchar"
    basestats 44, 58, 44, 61, 58, 44
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_CHIMCHAR_TM_DATA_0, SPECIES_CHIMCHAR_TM_DATA_1, SPECIES_CHIMCHAR_TM_DATA_2, SPECIES_CHIMCHAR_TM_DATA_3
    mondexentry SPECIES_CHIMCHAR, "The gas made in its belly burns from\nits rear end. The fire burns weakly\nwhen it feels sick."
    mondexclassification SPECIES_CHIMCHAR, "Chimp Pokémon"
    mondexheight SPECIES_CHIMCHAR, "1’08”"
    mondexweight SPECIES_CHIMCHAR, "13.7 lbs."


mondata SPECIES_MONFERNO, "Monferno"
    basestats 64, 78, 52, 81, 78, 52
    types TYPE_FIRE, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_MONFERNO_TM_DATA_0, SPECIES_MONFERNO_TM_DATA_1, SPECIES_MONFERNO_TM_DATA_2, SPECIES_MONFERNO_TM_DATA_3
    mondexentry SPECIES_MONFERNO, "A bigger fire on its tail and a\nbrighter blue pattern on its face\nmeans its rank in its pack is higher."
    mondexclassification SPECIES_MONFERNO, "Playful Pokémon"
    mondexheight SPECIES_MONFERNO, "2’11”"
    mondexweight SPECIES_MONFERNO, "48.5 lbs."


mondata SPECIES_INFERNAPE, "Infernape"
    basestats 76, 104, 71, 108, 104, 71
    types TYPE_FIRE, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 1, 1, 0
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
    mondexentry SPECIES_INFERNAPE, "It tosses its enemies around with\nagility. It uses all its limbs to\nfight in its own unique style."
    mondexclassification SPECIES_INFERNAPE, "Flame Pokémon"
    mondexheight SPECIES_INFERNAPE, "3’11”"
    mondexweight SPECIES_INFERNAPE, "121.3 lbs."


mondata SPECIES_PIPLUP, "Piplup"
    basestats 53, 51, 53, 40, 61, 56
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
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
    mondexentry SPECIES_PIPLUP, "It doesn’t like to be taken care\nof. It’s difficult to bond with since\nit won’t listen to its Trainer."
    mondexclassification SPECIES_PIPLUP, "Penguin Pokémon"
    mondexheight SPECIES_PIPLUP, "1’04”"
    mondexweight SPECIES_PIPLUP, "11.5 lbs."


mondata SPECIES_PRINPLUP, "Prinplup"
    basestats 64, 66, 68, 50, 81, 76
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
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
    mondexentry SPECIES_PRINPLUP, "It lives a solitary life. Its wings\ndeliver wicked blows that can\nsnap even the thickest of trees."
    mondexclassification SPECIES_PRINPLUP, "Penguin Pokémon"
    mondexheight SPECIES_PRINPLUP, "2’07”"
    mondexweight SPECIES_PRINPLUP, "50.7 lbs."


mondata SPECIES_EMPOLEON, "Empoleon"
    basestats 84, 86, 88, 60, 111, 101
    types TYPE_WATER, TYPE_STEEL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
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
    mondexentry SPECIES_EMPOLEON, "It avoids unnecessary disputes,\nbut it will decimate anything that\nthreatens its pride."
    mondexclassification SPECIES_EMPOLEON, "Emperor Pokémon"
    mondexheight SPECIES_EMPOLEON, "5’07”"
    mondexweight SPECIES_EMPOLEON, "186.3 lbs."


mondata SPECIES_STARLY, "Starly"
    basestats 40, 55, 30, 60, 30, 30
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_YACHE_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_STARLY_TM_DATA_0, SPECIES_STARLY_TM_DATA_1, SPECIES_STARLY_TM_DATA_2, SPECIES_STARLY_TM_DATA_3
    mondexentry SPECIES_STARLY, "They flock around mountains and\nfields, chasing after bug Pokémon.\nTheir singing is noisy and annoying."
    mondexclassification SPECIES_STARLY, "Starling Pokémon"
    mondexheight SPECIES_STARLY, "1’00”"
    mondexweight SPECIES_STARLY, "4.4 lbs."


mondata SPECIES_STARAVIA, "Staravia"
    basestats 55, 75, 50, 80, 40, 40
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_YACHE_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_INTIMIDATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_STARAVIA_TM_DATA_0, SPECIES_STARAVIA_TM_DATA_1, SPECIES_STARAVIA_TM_DATA_2, SPECIES_STARAVIA_TM_DATA_3
    mondexentry SPECIES_STARAVIA, "They maintain huge flocks, although\nfierce scuffles break out between\nvarious flocks."
    mondexclassification SPECIES_STARAVIA, "Starling Pokémon"
    mondexheight SPECIES_STARAVIA, "2’00”"
    mondexweight SPECIES_STARAVIA, "34.2 lbs."


mondata SPECIES_STARAPTOR, "Staraptor"
    basestats 85, 120, 70, 100, 50, 60
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_YACHE_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_INTIMIDATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_STARAPTOR_TM_DATA_0, SPECIES_STARAPTOR_TM_DATA_1, SPECIES_STARAPTOR_TM_DATA_2, SPECIES_STARAPTOR_TM_DATA_3
    mondexentry SPECIES_STARAPTOR, "When STARAVIA evolve into\nSTARAPTOR, they leave the flock to\nlive alone. They have sturdy wings."
    mondexclassification SPECIES_STARAPTOR, "Predator Pokémon"
    mondexheight SPECIES_STARAPTOR, "3’11”"
    mondexweight SPECIES_STARAPTOR, "54.9 lbs."


mondata SPECIES_BIDOOF, "Bidoof"
    basestats 59, 45, 40, 31, 35, 40
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_SIMPLE, ABILITY_UNAWARE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BIDOOF_TM_DATA_0, SPECIES_BIDOOF_TM_DATA_1, SPECIES_BIDOOF_TM_DATA_2, SPECIES_BIDOOF_TM_DATA_3
    mondexentry SPECIES_BIDOOF, "It lives in groups by the water. \nIt chews up boulders and trees\naround its nest with its incisors."
    mondexclassification SPECIES_BIDOOF, "Plump Mouse Pokémon"
    mondexheight SPECIES_BIDOOF, "1’08”"
    mondexweight SPECIES_BIDOOF, "44.1 lbs."


mondata SPECIES_BIBAREL, "Bibarel"
    basestats 79, 85, 60, 71, 55, 60
    types TYPE_NORMAL, TYPE_WATER
    catchrate 127
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_ORAN_BERRY, ITEM_SITRUS_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_SIMPLE, ABILITY_UNAWARE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BIBAREL_TM_DATA_0, SPECIES_BIBAREL_TM_DATA_1, SPECIES_BIBAREL_TM_DATA_2, SPECIES_BIBAREL_TM_DATA_3
    mondexentry SPECIES_BIBAREL, "It busily makes its nest with\nstacks of branches and roots it\nhas cut up with its sharp incisors."
    mondexclassification SPECIES_BIBAREL, "Beaver Pokémon"
    mondexheight SPECIES_BIBAREL, "3’03”"
    mondexweight SPECIES_BIBAREL, "69.4 lbs."


mondata SPECIES_KRICKETOT, "Kricketot"
    basestats 37, 25, 41, 25, 25, 41
    types TYPE_BUG, TYPE_BUG
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_METRONOME, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHED_SKIN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_KRICKETOT_TM_DATA_0, SPECIES_KRICKETOT_TM_DATA_1, SPECIES_KRICKETOT_TM_DATA_2, SPECIES_KRICKETOT_TM_DATA_3
    mondexentry SPECIES_KRICKETOT, "When its antennae hit each other,\nit sounds like the music of\na xylophone."
    mondexclassification SPECIES_KRICKETOT, "Cricket Pokémon"
    mondexheight SPECIES_KRICKETOT, "1’00”"
    mondexweight SPECIES_KRICKETOT, "4.9 lbs."


mondata SPECIES_KRICKETUNE, "Kricketune"
    basestats 77, 85, 51, 65, 55, 51
    types TYPE_BUG, TYPE_BUG
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_METRONOME, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_KRICKETUNE_TM_DATA_0, SPECIES_KRICKETUNE_TM_DATA_1, SPECIES_KRICKETUNE_TM_DATA_2, SPECIES_KRICKETUNE_TM_DATA_3
    mondexentry SPECIES_KRICKETUNE, "By allowing its cry to resonate in\nthe hollow of its belly, it produces\na captivating sound."
    mondexclassification SPECIES_KRICKETUNE, "Cricket Pokémon"
    mondexheight SPECIES_KRICKETUNE, "3’03”"
    mondexweight SPECIES_KRICKETUNE, "56.2 lbs."


mondata SPECIES_SHINX, "Shinx"
    basestats 45, 65, 34, 45, 40, 34
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 235
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RIVALRY, ABILITY_INTIMIDATE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SHINX_TM_DATA_0, SPECIES_SHINX_TM_DATA_1, SPECIES_SHINX_TM_DATA_2, SPECIES_SHINX_TM_DATA_3
    mondexentry SPECIES_SHINX, "The extension and contraction of\nits muscles generates electricity.\nIts fur glows when it’s in trouble."
    mondexclassification SPECIES_SHINX, "Flash Pokémon"
    mondexheight SPECIES_SHINX, "1’08”"
    mondexweight SPECIES_SHINX, "20.9 lbs."


mondata SPECIES_LUXIO, "Luxio"
    basestats 60, 85, 49, 60, 60, 49
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 100
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RIVALRY, ABILITY_INTIMIDATE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_LUXIO_TM_DATA_0, SPECIES_LUXIO_TM_DATA_1, SPECIES_LUXIO_TM_DATA_2, SPECIES_LUXIO_TM_DATA_3
    mondexentry SPECIES_LUXIO, "By gathering their tails together,\nthey collectively generate powerful\nelectricity from their claws."
    mondexclassification SPECIES_LUXIO, "Spark Pokémon"
    mondexheight SPECIES_LUXIO, "2’11”"
    mondexweight SPECIES_LUXIO, "67.2 lbs."


mondata SPECIES_LUXRAY, "Luxray"
    basestats 80, 120, 79, 70, 95, 79
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RIVALRY, ABILITY_INTIMIDATE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_LUXRAY_TM_DATA_0, SPECIES_LUXRAY_TM_DATA_1, SPECIES_LUXRAY_TM_DATA_2, SPECIES_LUXRAY_TM_DATA_3
    mondexentry SPECIES_LUXRAY, "LUXRAY’s ability to see through\nobjects comes in handy when it’s\nscouting for danger."
    mondexclassification SPECIES_LUXRAY, "Gleam Eyes Pokémon"
    mondexheight SPECIES_LUXRAY, "4’07”"
    mondexweight SPECIES_LUXRAY, "92.6 lbs."


mondata SPECIES_BUDEW, "Budew"
    basestats 40, 30, 35, 55, 50, 70
    types TYPE_GRASS, TYPE_POISON
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_POISON_BARB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_NATURAL_CURE, ABILITY_POISON_POINT
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BUDEW_TM_DATA_0, SPECIES_BUDEW_TM_DATA_1, SPECIES_BUDEW_TM_DATA_2, SPECIES_BUDEW_TM_DATA_3
    mondexentry SPECIES_BUDEW, "When it feels the sun’s warm touch,\nit opens its bud to release pollen.\nIt lives alongside clear pools."
    mondexclassification SPECIES_BUDEW, "Bud Pokémon"
    mondexheight SPECIES_BUDEW, "0’08”"
    mondexweight SPECIES_BUDEW, "2.6 lbs."


mondata SPECIES_ROSERADE, "Roserade"
    basestats 60, 70, 65, 90, 125, 105
    types TYPE_GRASS, TYPE_POISON
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_POISON_BARB, ITEM_ABSORB_BULB
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
    abilities ABILITY_NATURAL_CURE, ABILITY_POISON_POINT
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_ROSERADE_TM_DATA_0, SPECIES_ROSERADE_TM_DATA_1, SPECIES_ROSERADE_TM_DATA_2, SPECIES_ROSERADE_TM_DATA_3
    mondexentry SPECIES_ROSERADE, "Its sweet aroma attracts prey.\nThen it spews poison. The more\ntoxic it is, the sweeter its aroma."
    mondexclassification SPECIES_ROSERADE, "Bouquet Pokémon"
    mondexheight SPECIES_ROSERADE, "2’11”"
    mondexweight SPECIES_ROSERADE, "32.0 lbs."


mondata SPECIES_CRANIDOS, "Cranidos"
    basestats 67, 125, 40, 58, 30, 30
    types TYPE_ROCK, TYPE_ROCK
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
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
    mondexentry SPECIES_CRANIDOS, "CRANIDOS toughen up their already\nrock-hard heads by headbutting\none another."
    mondexclassification SPECIES_CRANIDOS, "Head Butt Pokémon"
    mondexheight SPECIES_CRANIDOS, "2’11”"
    mondexweight SPECIES_CRANIDOS, "69.4 lbs."


mondata SPECIES_RAMPARDOS, "Rampardos"
    basestats 97, 165, 60, 58, 65, 50
    types TYPE_ROCK, TYPE_ROCK
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
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
    mondexentry SPECIES_RAMPARDOS, "Its skull withstands impacts of any\nmagnitude. As a result, its brain\nnever gets the chance to grow."
    mondexclassification SPECIES_RAMPARDOS, "Head Butt Pokémon"
    mondexheight SPECIES_RAMPARDOS, "5’03”"
    mondexweight SPECIES_RAMPARDOS, "226.0 lbs."


mondata SPECIES_SHIELDON, "Shieldon"
    basestats 30, 42, 118, 30, 42, 88
    types TYPE_ROCK, TYPE_STEEL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
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
    mondexentry SPECIES_SHIELDON, "It was generated from a fossil dug out\nof a layer of clay that was older than\nanyone knows. It has a sturdy face."
    mondexclassification SPECIES_SHIELDON, "Shield Pokémon"
    mondexheight SPECIES_SHIELDON, "1’08”"
    mondexweight SPECIES_SHIELDON, "125.7 lbs."


mondata SPECIES_BASTIODON, "Bastiodon"
    basestats 60, 52, 168, 30, 47, 138
    types TYPE_ROCK, TYPE_STEEL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
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
    mondexentry SPECIES_BASTIODON, "When attacked, they form a wall.\nTheir rock-hard faces serve to\nprotect them from the attacks."
    mondexclassification SPECIES_BASTIODON, "Shield Pokémon"
    mondexheight SPECIES_BASTIODON, "4’03”"
    mondexweight SPECIES_BASTIODON, "329.6 lbs."


mondata SPECIES_BURMY, "Burmy"
    basestats 40, 29, 45, 36, 29, 45
    types TYPE_BUG, TYPE_BUG
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHED_SKIN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BURMY_TM_DATA_0, SPECIES_BURMY_TM_DATA_1, SPECIES_BURMY_TM_DATA_2, SPECIES_BURMY_TM_DATA_3
    mondexentry SPECIES_BURMY, "It covers itself with a cloak to\nshelter from the cold. When it’s\nhot, its cloak is thinner."
    mondexclassification SPECIES_BURMY, "Bagworm Pokémon"
    mondexheight SPECIES_BURMY, "0’08”"
    mondexweight SPECIES_BURMY, "7.5 lbs."


mondata SPECIES_WORMADAM, "Wormadam"
    basestats 60, 59, 85, 36, 79, 105
    types TYPE_BUG, TYPE_GRASS
    catchrate 45
    baseexp 159
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_SILVERPOWDER
    genderratio 254
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_ANTICIPATION, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_WORMADAM_TM_DATA_0, SPECIES_WORMADAM_TM_DATA_1, SPECIES_WORMADAM_TM_DATA_2, SPECIES_WORMADAM_TM_DATA_3
    mondexentry SPECIES_WORMADAM, "It is said that a WORMADAM that\nevolves on a cold day will have a\nthicker cloak."
    mondexclassification SPECIES_WORMADAM, "Bagworm Pokémon"
    mondexheight SPECIES_WORMADAM, "1’08”"
    mondexweight SPECIES_WORMADAM, "14.3 lbs."


mondata SPECIES_MOTHIM, "Mothim"
    basestats 70, 94, 50, 66, 94, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_SILVERPOWDER, ITEM_NONE
    genderratio 255
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_MOTHIM_TM_DATA_0, SPECIES_MOTHIM_TM_DATA_1, SPECIES_MOTHIM_TM_DATA_2, SPECIES_MOTHIM_TM_DATA_3
    mondexentry SPECIES_MOTHIM, "It flutters around at night and\nsteals honey from the COMBEE hive."
    mondexclassification SPECIES_MOTHIM, "Moth Pokémon"
    mondexheight SPECIES_MOTHIM, "2’11”"
    mondexweight SPECIES_MOTHIM, "51.4 lbs."


mondata SPECIES_COMBEE, "Combee"
    basestats 30, 30, 42, 70, 30, 42
    types TYPE_BUG, TYPE_FLYING
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_HONEY, ITEM_NONE
    genderratio 31
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_HONEY_GATHER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_COMBEE_TM_DATA_0, SPECIES_COMBEE_TM_DATA_1, SPECIES_COMBEE_TM_DATA_2, SPECIES_COMBEE_TM_DATA_3
    mondexentry SPECIES_COMBEE, "At night, COMBEE sleep in a group of\nabout a thousand, packed closely\ntogether in a lump."
    mondexclassification SPECIES_COMBEE, "Tiny Bee Pokémon"
    mondexheight SPECIES_COMBEE, "1’00”"
    mondexweight SPECIES_COMBEE, "12.1 lbs."


mondata SPECIES_VESPIQUEN, "Vespiquen"
    basestats 70, 80, 102, 40, 80, 102
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_POISON_BARB, ITEM_NONE
    genderratio 254
    eggcycles 15
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_VESPIQUEN_TM_DATA_0, SPECIES_VESPIQUEN_TM_DATA_1, SPECIES_VESPIQUEN_TM_DATA_2, SPECIES_VESPIQUEN_TM_DATA_3
    mondexentry SPECIES_VESPIQUEN, "It raises grubs in the holes in its\nbody. It secretes pheromones to\ncontrol COMBEE."
    mondexclassification SPECIES_VESPIQUEN, "Beehive Pokémon"
    mondexheight SPECIES_VESPIQUEN, "3’11”"
    mondexweight SPECIES_VESPIQUEN, "84.9 lbs."


mondata SPECIES_PACHIRISU, "Pachirisu"
    basestats 60, 45, 70, 95, 45, 90
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 10
    basefriendship 100
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_RUN_AWAY, ABILITY_PICKUP
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_PACHIRISU_TM_DATA_0, SPECIES_PACHIRISU_TM_DATA_1, SPECIES_PACHIRISU_TM_DATA_2, SPECIES_PACHIRISU_TM_DATA_3
    mondexentry SPECIES_PACHIRISU, "It’s one of the kinds of Pokémon \nwith electric cheek pouches.\nIt shoots charges from its tail."
    mondexclassification SPECIES_PACHIRISU, "EleSquirrel Pokémon"
    mondexheight SPECIES_PACHIRISU, "1’04”"
    mondexweight SPECIES_PACHIRISU, "8.6 lbs."


mondata SPECIES_BUIZEL, "Buizel"
    basestats 55, 65, 35, 85, 60, 30
    types TYPE_WATER, TYPE_WATER
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_WACAN_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BUIZEL_TM_DATA_0, SPECIES_BUIZEL_TM_DATA_1, SPECIES_BUIZEL_TM_DATA_2, SPECIES_BUIZEL_TM_DATA_3
    mondexentry SPECIES_BUIZEL, "It inflates its flotation sac,\nkeeping its face above water in\norder to watch for prey movement."
    mondexclassification SPECIES_BUIZEL, "Sea Weasel Pokémon"
    mondexheight SPECIES_BUIZEL, "2’04”"
    mondexweight SPECIES_BUIZEL, "65.0 lbs."


mondata SPECIES_FLOATZEL, "Floatzel"
    basestats 85, 105, 55, 115, 85, 50
    types TYPE_WATER, TYPE_WATER
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_WACAN_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_FLOATZEL_TM_DATA_0, SPECIES_FLOATZEL_TM_DATA_1, SPECIES_FLOATZEL_TM_DATA_2, SPECIES_FLOATZEL_TM_DATA_3
    mondexentry SPECIES_FLOATZEL, "With its flotation sac inflated, it\ncan carry people on its back. It\ndeflates the sac before it dives."
    mondexclassification SPECIES_FLOATZEL, "Sea Weasel Pokémon"
    mondexheight SPECIES_FLOATZEL, "3’07”"
    mondexweight SPECIES_FLOATZEL, "73.9 lbs."


mondata SPECIES_CHERUBI, "Cherubi"
    basestats 45, 35, 45, 35, 62, 53
    types TYPE_GRASS, TYPE_GRASS
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_MIRACLE_SEED, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_CHERUBI_TM_DATA_0, SPECIES_CHERUBI_TM_DATA_1, SPECIES_CHERUBI_TM_DATA_2, SPECIES_CHERUBI_TM_DATA_3
    mondexentry SPECIES_CHERUBI, "It evolves by sucking the energy\nout of the small ball where it had\nbeen storing nutrients."
    mondexclassification SPECIES_CHERUBI, "Cherry Pokémon"
    mondexheight SPECIES_CHERUBI, "1’04”"
    mondexweight SPECIES_CHERUBI, "7.3 lbs."


mondata SPECIES_CHERRIM, "Cherrim"
    basestats 70, 60, 70, 85, 87, 78
    types TYPE_GRASS, TYPE_GRASS
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_MIRACLE_SEED, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
    abilities ABILITY_FLOWER_GIFT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_CHERRIM_TM_DATA_0, SPECIES_CHERRIM_TM_DATA_1, SPECIES_CHERRIM_TM_DATA_2, SPECIES_CHERRIM_TM_DATA_3
    mondexentry SPECIES_CHERRIM, "During times of strong sunlight,\nits bud blooms, its petals open\nfully, and it becomes very active."
    mondexclassification SPECIES_CHERRIM, "Blossom Pokémon"
    mondexheight SPECIES_CHERRIM, "1’08”"
    mondexweight SPECIES_CHERRIM, "20.5 lbs."


mondata SPECIES_SHELLOS, "Shellos"
    basestats 76, 48, 48, 34, 57, 62
    types TYPE_WATER, TYPE_WATER
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_AMORPHOUS
    abilities ABILITY_STICKY_HOLD, ABILITY_STORM_DRAIN
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SHELLOS_TM_DATA_0, SPECIES_SHELLOS_TM_DATA_1, SPECIES_SHELLOS_TM_DATA_2, SPECIES_SHELLOS_TM_DATA_3
    mondexentry SPECIES_SHELLOS, "Its shape and coloration vary,\ndepending on its habitat."
    mondexclassification SPECIES_SHELLOS, "Sea Slug Pokémon"
    mondexheight SPECIES_SHELLOS, "1’00”"
    mondexweight SPECIES_SHELLOS, "13.9 lbs."


mondata SPECIES_GASTRODON, "Gastrodon"
    basestats 111, 83, 68, 39, 92, 82
    types TYPE_WATER, TYPE_GROUND
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_AMORPHOUS
    abilities ABILITY_STICKY_HOLD, ABILITY_STORM_DRAIN
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GASTRODON_TM_DATA_0, SPECIES_GASTRODON_TM_DATA_1, SPECIES_GASTRODON_TM_DATA_2, SPECIES_GASTRODON_TM_DATA_3
    mondexentry SPECIES_GASTRODON, "When its natural enemy attacks,\nit oozes purple fluid and escapes."
    mondexclassification SPECIES_GASTRODON, "Sea Slug Pokémon"
    mondexheight SPECIES_GASTRODON, "2’11”"
    mondexweight SPECIES_GASTRODON, "65.9 lbs."


mondata SPECIES_AMBIPOM, "Ambipom"
    basestats 75, 100, 66, 115, 60, 66
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 100
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_TECHNICIAN, ABILITY_PICKUP
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_AMBIPOM_TM_DATA_0, SPECIES_AMBIPOM_TM_DATA_1, SPECIES_AMBIPOM_TM_DATA_2, SPECIES_AMBIPOM_TM_DATA_3
    mondexentry SPECIES_AMBIPOM, "They live on large trees. They are\nsaid to communicate by connecting\ntheir tails to those of others."
    mondexclassification SPECIES_AMBIPOM, "Long Tail Pokémon"
    mondexheight SPECIES_AMBIPOM, "3’11”"
    mondexweight SPECIES_AMBIPOM, "44.8 lbs."


mondata SPECIES_DRIFLOON, "Drifloon"
    basestats 90, 50, 34, 70, 60, 44
    types TYPE_GHOST, TYPE_FLYING
    catchrate 125
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_AFTERMATH, ABILITY_UNBURDEN
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_DRIFLOON_TM_DATA_0, SPECIES_DRIFLOON_TM_DATA_1, SPECIES_DRIFLOON_TM_DATA_2, SPECIES_DRIFLOON_TM_DATA_3
    mondexentry SPECIES_DRIFLOON, "It is whispered that any child who\nmistakes DRIFLOON for a balloon and\nholds on to it could wind up missing."
    mondexclassification SPECIES_DRIFLOON, "Balloon Pokémon"
    mondexheight SPECIES_DRIFLOON, "1’04”"
    mondexweight SPECIES_DRIFLOON, "2.6 lbs."


mondata SPECIES_DRIFBLIM, "Drifblim"
    basestats 150, 80, 44, 80, 90, 54
    types TYPE_GHOST, TYPE_FLYING
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_AIR_BALLOON, ITEM_NONE
    genderratio 127
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_AFTERMATH, ABILITY_UNBURDEN
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_DRIFBLIM_TM_DATA_0, SPECIES_DRIFBLIM_TM_DATA_1, SPECIES_DRIFBLIM_TM_DATA_2, SPECIES_DRIFBLIM_TM_DATA_3
    mondexentry SPECIES_DRIFBLIM, "It can generate and release gas\nwithin its body. That’s how it can\ncontrol the altitude of its drift."
    mondexclassification SPECIES_DRIFBLIM, "Blimp Pokémon"
    mondexheight SPECIES_DRIFBLIM, "3’11”"
    mondexweight SPECIES_DRIFBLIM, "33.1 lbs."


mondata SPECIES_BUNEARY, "Buneary"
    basestats 55, 66, 44, 85, 44, 56
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_PECHA_BERRY, ITEM_CHOPLE_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_RUN_AWAY, ABILITY_KLUTZ
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BUNEARY_TM_DATA_0, SPECIES_BUNEARY_TM_DATA_1, SPECIES_BUNEARY_TM_DATA_2, SPECIES_BUNEARY_TM_DATA_3
    mondexentry SPECIES_BUNEARY, "You can tell how it feels by the way\nit rolls its ears. When it’s scared,\nboth ears are rolled up."
    mondexclassification SPECIES_BUNEARY, "Rabbit Pokémon"
    mondexheight SPECIES_BUNEARY, "1’04”"
    mondexweight SPECIES_BUNEARY, "12.1 lbs."


mondata SPECIES_LOPUNNY, "Lopunny"
    basestats 65, 76, 84, 105, 54, 96
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_PECHA_BERRY, ITEM_CHOPLE_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 140
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_CUTE_CHARM, ABILITY_KLUTZ
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_LOPUNNY_TM_DATA_0, SPECIES_LOPUNNY_TM_DATA_1, SPECIES_LOPUNNY_TM_DATA_2, SPECIES_LOPUNNY_TM_DATA_3
    mondexentry SPECIES_LOPUNNY, "It sheds its fur twice a year.\nIts winter fur is soft and fluffy."
    mondexclassification SPECIES_LOPUNNY, "Rabbit Pokémon"
    mondexheight SPECIES_LOPUNNY, "3’11”"
    mondexweight SPECIES_LOPUNNY, "73.4 lbs."


mondata SPECIES_MISMAGIUS, "Mismagius"
    basestats 60, 60, 60, 105, 105, 105
    types TYPE_GHOST, TYPE_GHOST
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 1
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
    mondexentry SPECIES_MISMAGIUS, "Its cries sound like incantations\nto torment the foe. It appears\nwhere you least expect it."
    mondexclassification SPECIES_MISMAGIUS, "Magical Pokémon"
    mondexheight SPECIES_MISMAGIUS, "2’11”"
    mondexweight SPECIES_MISMAGIUS, "9.7 lbs."


mondata SPECIES_HONCHKROW, "Honchkrow"
    basestats 100, 125, 52, 71, 105, 52
    types TYPE_DARK, TYPE_FLYING
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
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
    mondexentry SPECIES_HONCHKROW, "It is merciless by nature. It is said\nthat it never forgives the mistakes\nof its MURKROW followers."
    mondexclassification SPECIES_HONCHKROW, "Big Boss Pokémon"
    mondexheight SPECIES_HONCHKROW, "2’11”"
    mondexweight SPECIES_HONCHKROW, "60.2 lbs."


mondata SPECIES_GLAMEOW, "Glameow"
    basestats 49, 55, 42, 85, 42, 37
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_CHERI_BERRY, ITEM_NONE
    genderratio 190
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_LIMBER, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_GLAMEOW_TM_DATA_0, SPECIES_GLAMEOW_TM_DATA_1, SPECIES_GLAMEOW_TM_DATA_2, SPECIES_GLAMEOW_TM_DATA_3
    mondexentry SPECIES_GLAMEOW, "When it’s happy, GLAMEOW\ndemonstrates beautiful movements\nof its tail, like a dancing ribbon."
    mondexclassification SPECIES_GLAMEOW, "Catty Pokémon"
    mondexheight SPECIES_GLAMEOW, "1’08”"
    mondexweight SPECIES_GLAMEOW, "8.6 lbs."


mondata SPECIES_PURUGLY, "Purugly"
    basestats 71, 82, 64, 112, 64, 59
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_CHERI_BERRY, ITEM_NONE
    genderratio 190
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_THICK_FAT, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_PURUGLY_TM_DATA_0, SPECIES_PURUGLY_TM_DATA_1, SPECIES_PURUGLY_TM_DATA_2, SPECIES_PURUGLY_TM_DATA_3
    mondexentry SPECIES_PURUGLY, "It would claim another Pokémon’s\nnest as its own if it finds a nest\nsufficiently comfortable."
    mondexclassification SPECIES_PURUGLY, "Tiger Cat Pokémon"
    mondexheight SPECIES_PURUGLY, "3’03”"
    mondexweight SPECIES_PURUGLY, "96.6 lbs."


mondata SPECIES_CHINGLING, "Chingling"
    basestats 45, 30, 50, 45, 65, 50
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_COLBUR_BERRY, ITEM_CLEANSE_TAG
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_CHINGLING_TM_DATA_0, SPECIES_CHINGLING_TM_DATA_1, SPECIES_CHINGLING_TM_DATA_2, SPECIES_CHINGLING_TM_DATA_3
    mondexentry SPECIES_CHINGLING, "It emits high-frequency cries that \npeople can’t hear. Once it starts,\nit can cry for an awfully long time."
    mondexclassification SPECIES_CHINGLING, "Bell Pokémon"
    mondexheight SPECIES_CHINGLING, "0’08”"
    mondexweight SPECIES_CHINGLING, "1.3 lbs."


mondata SPECIES_STUNKY, "Stunky"
    basestats 63, 63, 47, 74, 41, 41
    types TYPE_POISON, TYPE_DARK
    catchrate 225
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_PECHA_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_STENCH, ABILITY_AFTERMATH
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_STUNKY_TM_DATA_0, SPECIES_STUNKY_TM_DATA_1, SPECIES_STUNKY_TM_DATA_2, SPECIES_STUNKY_TM_DATA_3
    mondexentry SPECIES_STUNKY, "The foul fluid from its rear is so\nrevolting that it can make people feel\nqueasy up to a mile and a quarter away."
    mondexclassification SPECIES_STUNKY, "Skunk Pokémon"
    mondexheight SPECIES_STUNKY, "1’04”"
    mondexweight SPECIES_STUNKY, "42.3 lbs."


mondata SPECIES_SKUNTANK, "Skuntank"
    basestats 103, 93, 67, 84, 71, 61
    types TYPE_POISON, TYPE_DARK
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_PECHA_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_STENCH, ABILITY_AFTERMATH
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SKUNTANK_TM_DATA_0, SPECIES_SKUNTANK_TM_DATA_1, SPECIES_SKUNTANK_TM_DATA_2, SPECIES_SKUNTANK_TM_DATA_3
    mondexentry SPECIES_SKUNTANK, "It attacks by spraying a repugnant\nfluid from its tail, but the stench\ndulls after a few squirts."
    mondexclassification SPECIES_SKUNTANK, "Skunk Pokémon"
    mondexheight SPECIES_SKUNTANK, "3’03”"
    mondexweight SPECIES_SKUNTANK, "83.8 lbs."


mondata SPECIES_BRONZOR, "Bronzor"
    basestats 57, 24, 86, 23, 24, 86
    types TYPE_STEEL, TYPE_PSYCHIC
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_METAL_COAT, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_LEVITATE, ABILITY_HEATPROOF
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BRONZOR_TM_DATA_0, SPECIES_BRONZOR_TM_DATA_1, SPECIES_BRONZOR_TM_DATA_2, SPECIES_BRONZOR_TM_DATA_3
    mondexentry SPECIES_BRONZOR, "Ancient people believed that the\npattern on BRONZOR’s back\ncontained a mysterious power."
    mondexclassification SPECIES_BRONZOR, "Bronze Pokémon"
    mondexheight SPECIES_BRONZOR, "1’08”"
    mondexweight SPECIES_BRONZOR, "133.4 lbs."


mondata SPECIES_BRONZONG, "Bronzong"
    basestats 67, 89, 116, 33, 79, 116
    types TYPE_STEEL, TYPE_PSYCHIC
    catchrate 90
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_METAL_COAT, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_LEVITATE, ABILITY_HEATPROOF
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BRONZONG_TM_DATA_0, SPECIES_BRONZONG_TM_DATA_1, SPECIES_BRONZONG_TM_DATA_2, SPECIES_BRONZONG_TM_DATA_3
    mondexentry SPECIES_BRONZONG, "Ancient people believed that\npetitioning BRONZONG for rain\nwas the way to make crops grow."
    mondexclassification SPECIES_BRONZONG, "Bronze Bell Pokémon"
    mondexheight SPECIES_BRONZONG, "4’03”"
    mondexweight SPECIES_BRONZONG, "412.3 lbs."


mondata SPECIES_BONSLY, "Bonsly"
    basestats 50, 80, 95, 10, 10, 45
    types TYPE_ROCK, TYPE_ROCK
    catchrate 255
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STURDY, ABILITY_ROCK_HEAD
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BONSLY_TM_DATA_0, SPECIES_BONSLY_TM_DATA_1, SPECIES_BONSLY_TM_DATA_2, SPECIES_BONSLY_TM_DATA_3
    mondexentry SPECIES_BONSLY, "In order to adjust the level of fluids in\nits body, it exudes water from its eyes.\nThis makes it appear to be crying."
    mondexclassification SPECIES_BONSLY, "Bonsai Pokémon"
    mondexheight SPECIES_BONSLY, "1’08”"
    mondexweight SPECIES_BONSLY, "33.1 lbs."


mondata SPECIES_MIMEJR, "Mime Jr."
    basestats 20, 25, 45, 60, 70, 90
    types TYPE_PSYCHIC, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_PSYCHIC
    catchrate 145
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_LEPPA_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_SOUNDPROOF, ABILITY_FILTER
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_MIMEJR_TM_DATA_0, SPECIES_MIMEJR_TM_DATA_1, SPECIES_MIMEJR_TM_DATA_2, SPECIES_MIMEJR_TM_DATA_3
    mondexentry SPECIES_MIMEJR, "In an attempt to confuse its enemy,\nit mimics the enemy’s movements. Then\nit wastes no time in making itself scarce!"
    mondexclassification SPECIES_MIMEJR, "Mime Pokémon"
    mondexheight SPECIES_MIMEJR, "2’00”"
    mondexweight SPECIES_MIMEJR, "28.7 lbs."


mondata SPECIES_HAPPINY, "Happiny"
    basestats 100, 5, 5, 30, 15, 65
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 130
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_OVAL_STONE, ITEM_LUCKY_EGG
    genderratio 254
    eggcycles 40
    basefriendship 140
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_NATURAL_CURE, ABILITY_SERENE_GRACE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_HAPPINY_TM_DATA_0, SPECIES_HAPPINY_TM_DATA_1, SPECIES_HAPPINY_TM_DATA_2, SPECIES_HAPPINY_TM_DATA_3
    mondexentry SPECIES_HAPPINY, "It carefully carries a round, white rock\nthat it thinks is an egg. It’s bothered\nby how curly its hair looks."
    mondexclassification SPECIES_HAPPINY, "Playhouse Pokémon"
    mondexheight SPECIES_HAPPINY, "2’00”"
    mondexweight SPECIES_HAPPINY, "53.8 lbs."


mondata SPECIES_CHATOT, "Chatot"
    basestats 76, 65, 45, 91, 92, 42
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_METRONOME, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_TANGLED_FEET
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_CHATOT_TM_DATA_0, SPECIES_CHATOT_TM_DATA_1, SPECIES_CHATOT_TM_DATA_2, SPECIES_CHATOT_TM_DATA_3
    mondexentry SPECIES_CHATOT, "It mimics the cries of other Pokémon to\ntrick them into thinking it’s one of them.\nThis way they won’t attack it."
    mondexclassification SPECIES_CHATOT, "Music Note Pokémon"
    mondexheight SPECIES_CHATOT, "1’08”"
    mondexweight SPECIES_CHATOT, "4.2 lbs."


mondata SPECIES_SPIRITOMB, "Spiritomb"
    basestats 50, 92, 108, 35, 92, 108
    types TYPE_GHOST, TYPE_DARK
    catchrate 100
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SPIRITOMB_TM_DATA_0, SPECIES_SPIRITOMB_TM_DATA_1, SPECIES_SPIRITOMB_TM_DATA_2, SPECIES_SPIRITOMB_TM_DATA_3
    mondexentry SPECIES_SPIRITOMB, "It was formed by uniting 108 spirits.\nIt has been bound to the Odd Keystone\nto keep it from doing any mischief."
    mondexclassification SPECIES_SPIRITOMB, "Forbidden Pokémon"
    mondexheight SPECIES_SPIRITOMB, "3’03”"
    mondexweight SPECIES_SPIRITOMB, "238.1 lbs."


mondata SPECIES_GIBLE, "Gible"
    basestats 58, 70, 45, 42, 40, 45
    types TYPE_DRAGON, TYPE_GROUND
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_HABAN_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_SAND_VEIL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_GIBLE_TM_DATA_0, SPECIES_GIBLE_TM_DATA_1, SPECIES_GIBLE_TM_DATA_2, SPECIES_GIBLE_TM_DATA_3
    mondexentry SPECIES_GIBLE, "It nests in horizontal holes warmed by\ngeothermal heat. Foes who get too close\ncan expect to be pounced on and bitten."
    mondexclassification SPECIES_GIBLE, "Land Shark Pokémon"
    mondexheight SPECIES_GIBLE, "2’04”"
    mondexweight SPECIES_GIBLE, "45.2 lbs."


mondata SPECIES_GABITE, "Gabite"
    basestats 68, 90, 65, 82, 50, 55
    types TYPE_DRAGON, TYPE_GROUND
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_HABAN_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_SAND_VEIL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_GABITE_TM_DATA_0, SPECIES_GABITE_TM_DATA_1, SPECIES_GABITE_TM_DATA_2, SPECIES_GABITE_TM_DATA_3
    mondexentry SPECIES_GABITE, "As it digs to expand its nest, it\nhabitually digs up gems that it\nthen hoards in its nest."
    mondexclassification SPECIES_GABITE, "Cave Pokémon"
    mondexheight SPECIES_GABITE, "4’07”"
    mondexweight SPECIES_GABITE, "123.5 lbs."


mondata SPECIES_GARCHOMP, "Garchomp"
    basestats 108, 130, 95, 102, 80, 85
    types TYPE_DRAGON, TYPE_GROUND
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_HABAN_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_SAND_VEIL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_GARCHOMP_TM_DATA_0, SPECIES_GARCHOMP_TM_DATA_1, SPECIES_GARCHOMP_TM_DATA_2, SPECIES_GARCHOMP_TM_DATA_3
    mondexentry SPECIES_GARCHOMP, "Its body is covered in fine scales that\nreduce drag, enabling it to fly at\nhigh speeds."
    mondexclassification SPECIES_GARCHOMP, "Mach Pokémon"
    mondexheight SPECIES_GARCHOMP, "6’03”"
    mondexweight SPECIES_GARCHOMP, "209.4 lbs."


mondata SPECIES_MUNCHLAX, "Munchlax"
    basestats 135, 85, 40, 5, 40, 85
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 50
    baseexp 0 // defined in baseexp.s
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_LEFTOVERS, ITEM_NONE
    genderratio 31
    eggcycles 40
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PICKUP, ABILITY_THICK_FAT
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_MUNCHLAX_TM_DATA_0, SPECIES_MUNCHLAX_TM_DATA_1, SPECIES_MUNCHLAX_TM_DATA_2, SPECIES_MUNCHLAX_TM_DATA_3
    mondexentry SPECIES_MUNCHLAX, "It conceals food under the long fur on\nits body. It carts around this food\nstash and swallows it without chewing."
    mondexclassification SPECIES_MUNCHLAX, "Big Eater Pokémon"
    mondexheight SPECIES_MUNCHLAX, "2’00”"
    mondexweight SPECIES_MUNCHLAX, "231.5 lbs."


mondata SPECIES_RIOLU, "Riolu"
    basestats 40, 70, 40, 60, 35, 40
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STEADFAST, ABILITY_INNER_FOCUS
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_RIOLU_TM_DATA_0, SPECIES_RIOLU_TM_DATA_1, SPECIES_RIOLU_TM_DATA_2, SPECIES_RIOLU_TM_DATA_3
    mondexentry SPECIES_RIOLU, "They communicate with one another\nusing their auras. They are able to run\nall through the night."
    mondexclassification SPECIES_RIOLU, "Emanation Pokémon"
    mondexheight SPECIES_RIOLU, "2’04”"
    mondexweight SPECIES_RIOLU, "44.5 lbs."


mondata SPECIES_LUCARIO, "Lucario"
    basestats 70, 110, 70, 90, 115, 70
    types TYPE_FIGHTING, TYPE_STEEL
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_STEADFAST, ABILITY_INNER_FOCUS
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_LUCARIO_TM_DATA_0, SPECIES_LUCARIO_TM_DATA_1, SPECIES_LUCARIO_TM_DATA_2, SPECIES_LUCARIO_TM_DATA_3
    mondexentry SPECIES_LUCARIO, "It’s said that no foe can remain invisible\nto LUCARIO, since it can detect auras.\nEven foes it could not otherwise see."
    mondexclassification SPECIES_LUCARIO, "Aura Pokémon"
    mondexheight SPECIES_LUCARIO, "3’11”"
    mondexweight SPECIES_LUCARIO, "119.0 lbs."


mondata SPECIES_HIPPOPOTAS, "Hippopotas"
    basestats 68, 72, 78, 32, 38, 42
    types TYPE_GROUND, TYPE_GROUND
    catchrate 140
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAND_STREAM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_HIPPOPOTAS_TM_DATA_0, SPECIES_HIPPOPOTAS_TM_DATA_1, SPECIES_HIPPOPOTAS_TM_DATA_2, SPECIES_HIPPOPOTAS_TM_DATA_3
    mondexentry SPECIES_HIPPOPOTAS, "It shrouds itself in sand to ward off\ngerms. It travels easily through the\nsands of the desert."
    mondexclassification SPECIES_HIPPOPOTAS, "Hippo Pokémon"
    mondexheight SPECIES_HIPPOPOTAS, "2’07”"
    mondexweight SPECIES_HIPPOPOTAS, "109.1 lbs."


mondata SPECIES_HIPPOWDON, "Hippowdon"
    basestats 108, 112, 118, 47, 68, 72
    types TYPE_GROUND, TYPE_GROUND
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 30
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAND_STREAM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_HIPPOWDON_TM_DATA_0, SPECIES_HIPPOWDON_TM_DATA_1, SPECIES_HIPPOWDON_TM_DATA_2, SPECIES_HIPPOWDON_TM_DATA_3
    mondexentry SPECIES_HIPPOWDON, "It brandishes its gaping mouth in a\ndisplay of fearsome strength. It raises\nvast quantities of sand while attacking."
    mondexclassification SPECIES_HIPPOWDON, "Heavyweight Pokémon"
    mondexheight SPECIES_HIPPOWDON, "6’07”"
    mondexweight SPECIES_HIPPOWDON, "661.4 lbs."


mondata SPECIES_SKORUPI, "Skorupi"
    basestats 40, 50, 90, 65, 30, 55
    types TYPE_POISON, TYPE_BUG
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_POISON_BARB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_WATER_3
    abilities ABILITY_BATTLE_ARMOR, ABILITY_SNIPER
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SKORUPI_TM_DATA_0, SPECIES_SKORUPI_TM_DATA_1, SPECIES_SKORUPI_TM_DATA_2, SPECIES_SKORUPI_TM_DATA_3
    mondexentry SPECIES_SKORUPI, "It burrows under the sand to lie in\nwait for prey. Its tail claws can inject\nits prey with a savage poison."
    mondexclassification SPECIES_SKORUPI, "Scorpion Pokémon"
    mondexheight SPECIES_SKORUPI, "2’07”"
    mondexweight SPECIES_SKORUPI, "26.5 lbs."


mondata SPECIES_DRAPION, "Drapion"
    basestats 70, 90, 110, 95, 60, 75
    types TYPE_POISON, TYPE_DARK
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_POISON_BARB, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_WATER_3
    abilities ABILITY_BATTLE_ARMOR, ABILITY_SNIPER
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_DRAPION_TM_DATA_0, SPECIES_DRAPION_TM_DATA_1, SPECIES_DRAPION_TM_DATA_2, SPECIES_DRAPION_TM_DATA_3
    mondexentry SPECIES_DRAPION, "It attacks people and Pokémon that\ncross the desert. This has only\nfurthered its bad reputation."
    mondexclassification SPECIES_DRAPION, "Ogre Scorp Pokémon"
    mondexheight SPECIES_DRAPION, "4’03”"
    mondexweight SPECIES_DRAPION, "135.6 lbs."


mondata SPECIES_CROAGUNK, "Croagunk"
    basestats 48, 61, 40, 50, 61, 40
    types TYPE_POISON, TYPE_FIGHTING
    catchrate 140
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_BLACK_SLUDGE, ITEM_NONE
    genderratio 127
    eggcycles 10
    basefriendship 100
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_ANTICIPATION, ABILITY_DRY_SKIN
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CROAGUNK_TM_DATA_0, SPECIES_CROAGUNK_TM_DATA_1, SPECIES_CROAGUNK_TM_DATA_2, SPECIES_CROAGUNK_TM_DATA_3
    mondexentry SPECIES_CROAGUNK, "Fluid squeezed from its finger, albeit\npoisonous, is a significant ingredient in\nremedies for lower-back pain."
    mondexclassification SPECIES_CROAGUNK, "Toxic Mouth Pokémon"
    mondexheight SPECIES_CROAGUNK, "2’04”"
    mondexweight SPECIES_CROAGUNK, "50.7 lbs."


mondata SPECIES_TOXICROAK, "Toxicroak"
    basestats 83, 106, 65, 85, 86, 65
    types TYPE_POISON, TYPE_FIGHTING
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_BLACK_SLUDGE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_ANTICIPATION, ABILITY_DRY_SKIN
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_TOXICROAK_TM_DATA_0, SPECIES_TOXICROAK_TM_DATA_1, SPECIES_TOXICROAK_TM_DATA_2, SPECIES_TOXICROAK_TM_DATA_3
    mondexentry SPECIES_TOXICROAK, "Swaying and dodging the attacks of its\nfoes, it weaves its flexible body in close,\nthen lunges out with its poisonous claws."
    mondexclassification SPECIES_TOXICROAK, "Toxic Mouth Pokémon"
    mondexheight SPECIES_TOXICROAK, "4’03”"
    mondexweight SPECIES_TOXICROAK, "97.9 lbs."


mondata SPECIES_CARNIVINE, "Carnivine"
    basestats 74, 100, 72, 46, 90, 72
    types TYPE_GRASS, TYPE_GRASS
    catchrate 200
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CARNIVINE_TM_DATA_0, SPECIES_CARNIVINE_TM_DATA_1, SPECIES_CARNIVINE_TM_DATA_2, SPECIES_CARNIVINE_TM_DATA_3
    mondexentry SPECIES_CARNIVINE, "It walks around on its tentacles in\nsearch of a tree branch where it\ncan dangle down and ambush prey."
    mondexclassification SPECIES_CARNIVINE, "Bug Catcher Pokémon"
    mondexheight SPECIES_CARNIVINE, "4’07”"
    mondexweight SPECIES_CARNIVINE, "59.5 lbs."


mondata SPECIES_FINNEON, "Finneon"
    basestats 49, 49, 56, 66, 49, 61
    types TYPE_WATER, TYPE_WATER
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_RINDO_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_SWIFT_SWIM, ABILITY_STORM_DRAIN
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_FINNEON_TM_DATA_0, SPECIES_FINNEON_TM_DATA_1, SPECIES_FINNEON_TM_DATA_2, SPECIES_FINNEON_TM_DATA_3
    mondexentry SPECIES_FINNEON, "Swimming and fluttering its two tail fins,\nit looks like a BEAUTIFLY. At night, the\npatterns on its tail fins softly shine."
    mondexclassification SPECIES_FINNEON, "Wing Fish Pokémon"
    mondexheight SPECIES_FINNEON, "1’04”"
    mondexweight SPECIES_FINNEON, "15.4 lbs."


mondata SPECIES_LUMINEON, "Lumineon"
    basestats 69, 69, 76, 91, 69, 86
    types TYPE_WATER, TYPE_WATER
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_RINDO_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_SWIFT_SWIM, ABILITY_STORM_DRAIN
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_LUMINEON_TM_DATA_0, SPECIES_LUMINEON_TM_DATA_1, SPECIES_LUMINEON_TM_DATA_2, SPECIES_LUMINEON_TM_DATA_3
    mondexentry SPECIES_LUMINEON, "LUMINEON swimming in the darkness\nof the deep sea look like stars shining\nin the night sky."
    mondexclassification SPECIES_LUMINEON, "Neon Pokémon"
    mondexheight SPECIES_LUMINEON, "3’11”"
    mondexweight SPECIES_LUMINEON, "52.9 lbs."


mondata SPECIES_MANTYKE, "Mantyke"
    basestats 45, 20, 50, 50, 60, 120
    types TYPE_WATER, TYPE_FLYING
    catchrate 25
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_SWIFT_SWIM, ABILITY_WATER_ABSORB
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_MANTYKE_TM_DATA_0, SPECIES_MANTYKE_TM_DATA_1, SPECIES_MANTYKE_TM_DATA_2, SPECIES_MANTYKE_TM_DATA_3
    mondexentry SPECIES_MANTYKE, "When it swims close to the surface of the\nocean, people aboard ships are able to\nobserve the pattern on its back."
    mondexclassification SPECIES_MANTYKE, "Kite Pokémon"
    mondexheight SPECIES_MANTYKE, "3’03”"
    mondexweight SPECIES_MANTYKE, "143.3 lbs."


mondata SPECIES_SNOVER, "Snover"
    basestats 60, 62, 50, 40, 62, 60
    types TYPE_GRASS, TYPE_ICE
    catchrate 120
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NEVERMELTICE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_SNOW_WARNING, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SNOVER_TM_DATA_0, SPECIES_SNOVER_TM_DATA_1, SPECIES_SNOVER_TM_DATA_2, SPECIES_SNOVER_TM_DATA_3
    mondexentry SPECIES_SNOVER, "During cold seasons, it migrates to the\nmountain’s lower reaches. It returns to\nthe snow-covered summit in the spring."
    mondexclassification SPECIES_SNOVER, "Frost Tree Pokémon"
    mondexheight SPECIES_SNOVER, "3’03”"
    mondexweight SPECIES_SNOVER, "111.3 lbs."


mondata SPECIES_ABOMASNOW, "Abomasnow"
    basestats 90, 92, 75, 60, 92, 85
    types TYPE_GRASS, TYPE_ICE
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_NEVERMELTICE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_SNOW_WARNING, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_ABOMASNOW_TM_DATA_0, SPECIES_ABOMASNOW_TM_DATA_1, SPECIES_ABOMASNOW_TM_DATA_2, SPECIES_ABOMASNOW_TM_DATA_3
    mondexentry SPECIES_ABOMASNOW, "It lives a quiet life on mountains that\nare perpetually covered in snow.\nIt hides itself by whipping up blizzards."
    mondexclassification SPECIES_ABOMASNOW, "Frost Tree Pokémon"
    mondexheight SPECIES_ABOMASNOW, "7’03”"
    mondexweight SPECIES_ABOMASNOW, "298.7 lbs."


mondata SPECIES_WEAVILE, "Weavile"
    basestats 70, 120, 65, 125, 45, 85
    types TYPE_DARK, TYPE_ICE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 1, 0, 0
    items ITEM_QUICK_CLAW, ITEM_GRIP_CLAW
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_WEAVILE_TM_DATA_0, SPECIES_WEAVILE_TM_DATA_1, SPECIES_WEAVILE_TM_DATA_2, SPECIES_WEAVILE_TM_DATA_3
    mondexentry SPECIES_WEAVILE, "It lives in snowy regions. It carves\npatterns in trees with its claws as\na signal to others."
    mondexclassification SPECIES_WEAVILE, "Sharp Claw Pokémon"
    mondexheight SPECIES_WEAVILE, "3’07”"
    mondexweight SPECIES_WEAVILE, "75.0 lbs."


mondata SPECIES_MAGNEZONE, "Magnezone"
    basestats 70, 70, 115, 60, 130, 90
    types TYPE_ELECTRIC, TYPE_STEEL
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_METAL_COAT, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_MAGNET_PULL, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MAGNEZONE_TM_DATA_0, SPECIES_MAGNEZONE_TM_DATA_1, SPECIES_MAGNEZONE_TM_DATA_2, SPECIES_MAGNEZONE_TM_DATA_3
    mondexentry SPECIES_MAGNEZONE, "Exposure to a special magnetic field\nchanged MAGNETON’s molecular\nstructure, turning it into MAGNEZONE."
    mondexclassification SPECIES_MAGNEZONE, "Magnet Area Pokémon"
    mondexheight SPECIES_MAGNEZONE, "3’11”"
    mondexweight SPECIES_MAGNEZONE, "396.8 lbs."


mondata SPECIES_LICKILICKY, "Lickilicky"
    basestats 110, 85, 95, 50, 80, 95
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_LAGGING_TAIL, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_OWN_TEMPO, ABILITY_OBLIVIOUS
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_LICKILICKY_TM_DATA_0, SPECIES_LICKILICKY_TM_DATA_1, SPECIES_LICKILICKY_TM_DATA_2, SPECIES_LICKILICKY_TM_DATA_3
    mondexentry SPECIES_LICKILICKY, "Its saliva can decompose anything.\nIt wraps its long tongue around things\nto coat them with its sticky saliva."
    mondexclassification SPECIES_LICKILICKY, "Licking Pokémon"
    mondexheight SPECIES_LICKILICKY, "5’07”"
    mondexweight SPECIES_LICKILICKY, "308.6 lbs."


mondata SPECIES_RHYPERIOR, "Rhyperior"
    basestats 115, 140, 130, 40, 55, 55
    types TYPE_GROUND, TYPE_ROCK
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_LIGHTNING_ROD, ABILITY_SOLID_ROCK
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_RHYPERIOR_TM_DATA_0, SPECIES_RHYPERIOR_TM_DATA_1, SPECIES_RHYPERIOR_TM_DATA_2, SPECIES_RHYPERIOR_TM_DATA_3
    mondexentry SPECIES_RHYPERIOR, "From holes in its palms, it fires out\nGEODUDE. Its carapace \ncan withstand volcanic eruptions."
    mondexclassification SPECIES_RHYPERIOR, "Drill Pokémon"
    mondexheight SPECIES_RHYPERIOR, "7’10”"
    mondexweight SPECIES_RHYPERIOR, "623.5 lbs."


mondata SPECIES_TANGROWTH, "Tangrowth"
    basestats 100, 100, 125, 50, 110, 50
    types TYPE_GRASS, TYPE_GRASS
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_LEAF_GUARD
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_TANGROWTH_TM_DATA_0, SPECIES_TANGROWTH_TM_DATA_1, SPECIES_TANGROWTH_TM_DATA_2, SPECIES_TANGROWTH_TM_DATA_3
    mondexentry SPECIES_TANGROWTH, "When it remains still, it appears to be a\nlarge shrub. Unsuspecting prey that\nwander near get ensnared by its vines."
    mondexclassification SPECIES_TANGROWTH, "Vine Pokémon"
    mondexheight SPECIES_TANGROWTH, "6’07”"
    mondexweight SPECIES_TANGROWTH, "283.5 lbs."


mondata SPECIES_ELECTIVIRE, "Electivire"
    basestats 75, 123, 67, 95, 95, 85
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_ELECTIRIZER, ITEM_NONE
    genderratio 63
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_MOTOR_DRIVE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_ELECTIVIRE_TM_DATA_0, SPECIES_ELECTIVIRE_TM_DATA_1, SPECIES_ELECTIVIRE_TM_DATA_2, SPECIES_ELECTIVIRE_TM_DATA_3
    mondexentry SPECIES_ELECTIVIRE, "As its electric charge amplifies,\nblue sparks begin to crackle between\nits horns."
    mondexclassification SPECIES_ELECTIVIRE, "Thunderbolt Pokémon"
    mondexheight SPECIES_ELECTIVIRE, "5’11”"
    mondexweight SPECIES_ELECTIVIRE, "305.6 lbs."


mondata SPECIES_MAGMORTAR, "Magmortar"
    basestats 75, 95, 67, 83, 125, 95
    types TYPE_FIRE, TYPE_FIRE
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_MAGMARIZER, ITEM_NONE
    genderratio 63
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_FLAME_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_MAGMORTAR_TM_DATA_0, SPECIES_MAGMORTAR_TM_DATA_1, SPECIES_MAGMORTAR_TM_DATA_2, SPECIES_MAGMORTAR_TM_DATA_3
    mondexentry SPECIES_MAGMORTAR, "It blasts fireballs of over\n3,600 degrees Fahrenheit out of its\narms. Its breath also sears and sizzles."
    mondexclassification SPECIES_MAGMORTAR, "Blast Pokémon"
    mondexheight SPECIES_MAGMORTAR, "5’03”"
    mondexweight SPECIES_MAGMORTAR, "149.9 lbs."


mondata SPECIES_TOGEKISS, "Togekiss"
    basestats 85, 50, 95, 80, 120, 115
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, TYPE_FLYING
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 10
    basefriendship 50
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FAIRY
    abilities ABILITY_HUSTLE, ABILITY_SERENE_GRACE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_TOGEKISS_TM_DATA_0, SPECIES_TOGEKISS_TM_DATA_1, SPECIES_TOGEKISS_TM_DATA_2, SPECIES_TOGEKISS_TM_DATA_3
    mondexentry SPECIES_TOGEKISS, "As everyone knows, it visits peaceful\nregions, bringing them gifts of kindness\nand sweet blessings."
    mondexclassification SPECIES_TOGEKISS, "Jubilee Pokémon"
    mondexheight SPECIES_TOGEKISS, "4’11”"
    mondexweight SPECIES_TOGEKISS, "83.8 lbs."


mondata SPECIES_YANMEGA, "Yanmega"
    basestats 86, 76, 86, 95, 116, 56
    types TYPE_BUG, TYPE_FLYING
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_WIDE_LENS, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SPEED_BOOST, ABILITY_TINTED_LENS
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_YANMEGA_TM_DATA_0, SPECIES_YANMEGA_TM_DATA_1, SPECIES_YANMEGA_TM_DATA_2, SPECIES_YANMEGA_TM_DATA_3
    mondexentry SPECIES_YANMEGA, "This six-legged Pokémon is easily capable\nof transporting an adult in flight. The\nwings on its tail help it stay balanced."
    mondexclassification SPECIES_YANMEGA, "Ogre Darner Pokémon"
    mondexheight SPECIES_YANMEGA, "6’03”"
    mondexweight SPECIES_YANMEGA, "113.5 lbs."


mondata SPECIES_LEAFEON, "Leafeon"
    basestats 65, 110, 130, 95, 60, 65
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 35
    basefriendship 35
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_LEAF_GUARD, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_LEAFEON_TM_DATA_0, SPECIES_LEAFEON_TM_DATA_1, SPECIES_LEAFEON_TM_DATA_2, SPECIES_LEAFEON_TM_DATA_3
    mondexentry SPECIES_LEAFEON, "When you see LEAFEON asleep in a patch\nof sunshine, you’ll know it is using\nphotosynthesis to produce clean air."
    mondexclassification SPECIES_LEAFEON, "Verdant Pokémon"
    mondexheight SPECIES_LEAFEON, "3’03”"
    mondexweight SPECIES_LEAFEON, "56.2 lbs."


mondata SPECIES_GLACEON, "Glaceon"
    basestats 65, 60, 110, 65, 130, 95
    types TYPE_ICE, TYPE_ICE
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 35
    basefriendship 35
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SNOW_CLOAK, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_GLACEON_TM_DATA_0, SPECIES_GLACEON_TM_DATA_1, SPECIES_GLACEON_TM_DATA_2, SPECIES_GLACEON_TM_DATA_3
    mondexentry SPECIES_GLACEON, "It causes small ice crystals to form by\nlowering the temperature of the\nsurrounding atmosphere."
    mondexclassification SPECIES_GLACEON, "Fresh Snow Pokémon"
    mondexheight SPECIES_GLACEON, "2’07”"
    mondexweight SPECIES_GLACEON, "57.1 lbs."


mondata SPECIES_GLISCOR, "Gliscor"
    basestats 75, 95, 125, 95, 45, 75
    types TYPE_GROUND, TYPE_FLYING
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 0
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
    mondexentry SPECIES_GLISCOR, "Its flight is soundless. It uses its\nlengthy tail to carry off its prey...\nThen its elongated fangs do the rest."
    mondexclassification SPECIES_GLISCOR, "Fang Scorp Pokémon"
    mondexheight SPECIES_GLISCOR, "6’07”"
    mondexweight SPECIES_GLISCOR, "93.7 lbs."


mondata SPECIES_MAMOSWINE, "Mamoswine"
    basestats 110, 130, 80, 80, 70, 60
    types TYPE_ICE, TYPE_GROUND
    catchrate 50
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OBLIVIOUS, ABILITY_SNOW_CLOAK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_MAMOSWINE_TM_DATA_0, SPECIES_MAMOSWINE_TM_DATA_1, SPECIES_MAMOSWINE_TM_DATA_2, SPECIES_MAMOSWINE_TM_DATA_3
    mondexentry SPECIES_MAMOSWINE, "A frozen MAMOSWINE was dug from ice\ndating back 10,000 years. This Pokémon\nhas been around a long, long, long time."
    mondexclassification SPECIES_MAMOSWINE, "Twin Tusk Pokémon"
    mondexheight SPECIES_MAMOSWINE, "8’02”"
    mondexweight SPECIES_MAMOSWINE, "641.5 lbs."


mondata SPECIES_PORYGON_Z, "Porygon-Z"
    basestats 85, 80, 70, 90, 135, 75
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 30
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_ADAPTABILITY, ABILITY_DOWNLOAD
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_PORYGON_Z_TM_DATA_0, SPECIES_PORYGON_Z_TM_DATA_1, SPECIES_PORYGON_Z_TM_DATA_2, SPECIES_PORYGON_Z_TM_DATA_3
    mondexentry SPECIES_PORYGON_Z, "Its programming was modified to enable\nit to travel through alien dimensions.\nSeems there might have been an error..."
    mondexclassification SPECIES_PORYGON_Z, "Virtual Pokémon"
    mondexheight SPECIES_PORYGON_Z, "2’11”"
    mondexweight SPECIES_PORYGON_Z, "75.0 lbs."


mondata SPECIES_GALLADE, "Gallade"
    basestats 68, 125, 65, 80, 65, 115
    types TYPE_PSYCHIC, TYPE_FIGHTING
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_AMORPHOUS
    abilities ABILITY_STEADFAST, ABILITY_SHARPNESS
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_GALLADE_TM_DATA_0, SPECIES_GALLADE_TM_DATA_1, SPECIES_GALLADE_TM_DATA_2, SPECIES_GALLADE_TM_DATA_3
    mondexentry SPECIES_GALLADE, "Because it can sense what its foe\nis thinking, its attacks burst out\nfirst, fast, and fierce."
    mondexclassification SPECIES_GALLADE, "Blade Pokémon"
    mondexheight SPECIES_GALLADE, "5’03”"
    mondexweight SPECIES_GALLADE, "114.6 lbs."


mondata SPECIES_PROBOPASS, "Probopass"
    basestats 60, 55, 145, 40, 75, 150
    types TYPE_ROCK, TYPE_STEEL
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 2
    items ITEM_HARD_STONE, ITEM_MAGNET
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STURDY, ABILITY_MAGNET_PULL
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_PROBOPASS_TM_DATA_0, SPECIES_PROBOPASS_TM_DATA_1, SPECIES_PROBOPASS_TM_DATA_2, SPECIES_PROBOPASS_TM_DATA_3
    mondexentry SPECIES_PROBOPASS, "It controls three units called Mini-Noses\nusing magnetic force. With them, it can\nattack the foe from three directions."
    mondexclassification SPECIES_PROBOPASS, "Compass Pokémon"
    mondexheight SPECIES_PROBOPASS, "4’07”"
    mondexweight SPECIES_PROBOPASS, "749.6 lbs."


mondata SPECIES_DUSKNOIR, "Dusknoir"
    basestats 45, 100, 135, 45, 65, 135
    types TYPE_GHOST, TYPE_GHOST
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 2
    items ITEM_KASIB_BERRY, ITEM_SPELL_TAG
    genderratio 127
    eggcycles 25
    basefriendship 35
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_DUSKNOIR_TM_DATA_0, SPECIES_DUSKNOIR_TM_DATA_1, SPECIES_DUSKNOIR_TM_DATA_2, SPECIES_DUSKNOIR_TM_DATA_3
    mondexentry SPECIES_DUSKNOIR, "This feared Pokémon is said to travel to\nworlds unknown. Some even believe that\nit takes lost spirits along with it."
    mondexclassification SPECIES_DUSKNOIR, "Gripper Pokémon"
    mondexheight SPECIES_DUSKNOIR, "7’03”"
    mondexweight SPECIES_DUSKNOIR, "235.0 lbs."


mondata SPECIES_FROSLASS, "Froslass"
    basestats 70, 80, 70, 110, 80, 70
    types TYPE_ICE, TYPE_GHOST
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_BABIRI_BERRY, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_MINERAL
    abilities ABILITY_SNOW_CLOAK, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_FROSLASS_TM_DATA_0, SPECIES_FROSLASS_TM_DATA_1, SPECIES_FROSLASS_TM_DATA_2, SPECIES_FROSLASS_TM_DATA_3
    mondexentry SPECIES_FROSLASS, "Legends in snowy regions say that\na woman who was lost on an icy\nmountain was reborn as FROSLASS."
    mondexclassification SPECIES_FROSLASS, "Snow Land Pokémon"
    mondexheight SPECIES_FROSLASS, "4’03”"
    mondexweight SPECIES_FROSLASS, "58.6 lbs."


mondata SPECIES_ROTOM, "Rotom"
    basestats 50, 50, 77, 91, 95, 77
    types TYPE_ELECTRIC, TYPE_GHOST
    catchrate 45
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_ROTOM_TM_DATA_0, SPECIES_ROTOM_TM_DATA_1, SPECIES_ROTOM_TM_DATA_2, SPECIES_ROTOM_TM_DATA_3
    mondexentry SPECIES_ROTOM, "Research continues on this Pokémon,\nwhich could be the power source of a\nunique motor."
    mondexclassification SPECIES_ROTOM, "Plasma Pokémon"
    mondexheight SPECIES_ROTOM, "1’00”"
    mondexweight SPECIES_ROTOM, "0.7 lbs."


mondata SPECIES_UXIE, "Uxie"
    basestats 75, 75, 130, 95, 75, 130
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 2, 0, 0, 1
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
    mondexentry SPECIES_UXIE, "According to some sources, this Pokémon\nprovided people with the intelligence\nnecessary to solve various problems."
    mondexclassification SPECIES_UXIE, "Knowledge Pokémon"
    mondexheight SPECIES_UXIE, "1’00”"
    mondexweight SPECIES_UXIE, "0.7 lbs."


mondata SPECIES_MESPRIT, "Mesprit"
    basestats 80, 105, 105, 80, 105, 105
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 1, 0, 0, 1, 1
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
    mondexentry SPECIES_MESPRIT, "This Pokémon is said to have endowed\nthe human heart with emotions, such as\nsorrow and joy."
    mondexclassification SPECIES_MESPRIT, "Emotion Pokémon"
    mondexheight SPECIES_MESPRIT, "1’00”"
    mondexweight SPECIES_MESPRIT, "0.7 lbs."


mondata SPECIES_AZELF, "Azelf"
    basestats 75, 125, 70, 115, 125, 70
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 2, 0, 0, 1, 0
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
    mondexentry SPECIES_AZELF, "This Pokémon is said to have endowed\nhumans with the determination needed\nto face any of life’s difficulties."
    mondexclassification SPECIES_AZELF, "Willpower Pokémon"
    mondexheight SPECIES_AZELF, "1’00”"
    mondexweight SPECIES_AZELF, "0.7 lbs."


mondata SPECIES_DIALGA, "Dialga"
    basestats 100, 120, 120, 90, 150, 100
    types TYPE_STEEL, TYPE_DRAGON
    catchrate 3
    baseexp 0 // defined in baseexp.s
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
    tmdata SPECIES_DIALGA_TM_DATA_0, SPECIES_DIALGA_TM_DATA_1, SPECIES_DIALGA_TM_DATA_2, SPECIES_DIALGA_TM_DATA_3
    mondexentry SPECIES_DIALGA, "This Pokémon completely controls the\nflow of time. It uses its power to travel\nat will through the past and future."
    mondexclassification SPECIES_DIALGA, "Temporal Pokémon"
    mondexheight SPECIES_DIALGA, "17’09”"
    mondexweight SPECIES_DIALGA, "1505.8 lbs."


mondata SPECIES_PALKIA, "Palkia"
    basestats 90, 120, 100, 100, 150, 120
    types TYPE_WATER, TYPE_DRAGON
    catchrate 3
    baseexp 0 // defined in baseexp.s
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
    tmdata SPECIES_PALKIA_TM_DATA_0, SPECIES_PALKIA_TM_DATA_1, SPECIES_PALKIA_TM_DATA_2, SPECIES_PALKIA_TM_DATA_3
    mondexentry SPECIES_PALKIA, "Its total control over the boundaries\nof space enable it to transport itself to\nfaraway places or even other dimensions."
    mondexclassification SPECIES_PALKIA, "Spatial Pokémon"
    mondexheight SPECIES_PALKIA, "13’09”"
    mondexweight SPECIES_PALKIA, "740.8 lbs."


mondata SPECIES_HEATRAN, "Heatran"
    basestats 91, 90, 106, 77, 130, 106
    types TYPE_FIRE, TYPE_STEEL
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
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
    mondexentry SPECIES_HEATRAN, "Boiling blood, like magma, circulates\nthrough its body. It makes its dwelling\nplace in volcanic caves."
    mondexclassification SPECIES_HEATRAN, "Lava Dome Pokémon"
    mondexheight SPECIES_HEATRAN, "5’07”"
    mondexweight SPECIES_HEATRAN, "948.0 lbs."


mondata SPECIES_REGIGIGAS, "Regigigas"
    basestats 110, 160, 110, 100, 80, 110
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 3
    baseexp 0 // defined in baseexp.s
    evyields 0, 3, 0, 0, 0, 0
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
    mondexentry SPECIES_REGIGIGAS, "It is believed to have shaped\nREGIROCK, REGICE, and REGISTEEL\nout of clay, ice, and magma."
    mondexclassification SPECIES_REGIGIGAS, "Colossal Pokémon"
    mondexheight SPECIES_REGIGIGAS, "12’02”"
    mondexweight SPECIES_REGIGIGAS, "925.9 lbs."


mondata SPECIES_GIRATINA, "Giratina"
    basestats 150, 100, 120, 90, 100, 120
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
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_GIRATINA_TM_DATA_0, SPECIES_GIRATINA_TM_DATA_1, SPECIES_GIRATINA_TM_DATA_2, SPECIES_GIRATINA_TM_DATA_3
    mondexentry SPECIES_GIRATINA, "This Pokémon is said to live in a world on\nthe reverse side of ours, where common\nknowledge is distorted and strange."
    mondexclassification SPECIES_GIRATINA, "Renegade Pokémon"
    mondexheight SPECIES_GIRATINA, "22’08”"
    mondexweight SPECIES_GIRATINA, "1433.0 lbs."


mondata SPECIES_CRESSELIA, "Cresselia"
    basestats 120, 70, 120, 85, 75, 130
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 3
    baseexp 210
    evyields 0, 0, 0, 0, 0, 3
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
    mondexentry SPECIES_CRESSELIA, "Those who sleep holding CRESSELIA’s\nfeather are assured of joyful dreams. It\nis said to represent the crescent moon."
    mondexclassification SPECIES_CRESSELIA, "Lunar Pokémon"
    mondexheight SPECIES_CRESSELIA, "4’11”"
    mondexweight SPECIES_CRESSELIA, "188.7 lbs."


mondata SPECIES_PHIONE, "Phione"
    basestats 80, 80, 80, 80, 80, 80
    types TYPE_WATER, TYPE_WATER
    catchrate 30
    baseexp 165
    evyields 1, 0, 0, 0, 0, 0
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
    mondexentry SPECIES_PHIONE, "When the water warms, they inflate the\nflotation sac on their heads and drift\nlanguidly on the sea in packs."
    mondexclassification SPECIES_PHIONE, "Sea Drifter Pokémon"
    mondexheight SPECIES_PHIONE, "1’04”"
    mondexweight SPECIES_PHIONE, "6.8 lbs."


mondata SPECIES_MANAPHY, "Manaphy"
    basestats 100, 100, 100, 100, 100, 100
    types TYPE_WATER, TYPE_WATER
    catchrate 3
    baseexp 215
    evyields 3, 0, 0, 0, 0, 0
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
    mondexentry SPECIES_MANAPHY, "It starts its life with a wondrous power\nthat permits it to bond with any kind\nof Pokémon."
    mondexclassification SPECIES_MANAPHY, "Seafaring Pokémon"
    mondexheight SPECIES_MANAPHY, "1’00”"
    mondexweight SPECIES_MANAPHY, "3.1 lbs."


mondata SPECIES_DARKRAI, "Darkrai"
    basestats 70, 90, 90, 125, 135, 90
    types TYPE_DARK, TYPE_DARK
    catchrate 3
    baseexp 210
    evyields 0, 0, 0, 1, 2, 0
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
    mondexentry SPECIES_DARKRAI, "It chases people and Pokémon from its\nterritory by causing them to experience\ndeep, nightmarish slumbers."
    mondexclassification SPECIES_DARKRAI, "Pitch-Black Pokémon"
    mondexheight SPECIES_DARKRAI, "4’11”"
    mondexweight SPECIES_DARKRAI, "111.3 lbs."


mondata SPECIES_SHAYMIN, "Shaymin"
    basestats 100, 100, 100, 100, 100, 100
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 64
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_LUM_BERRY, ITEM_LUM_BERRY
    genderratio 255
    eggcycles 120
    basefriendship 100
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_NATURAL_CURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SHAYMIN_TM_DATA_0, SPECIES_SHAYMIN_TM_DATA_1, SPECIES_SHAYMIN_TM_DATA_2, SPECIES_SHAYMIN_TM_DATA_3
    mondexentry SPECIES_SHAYMIN, "The blooming of Gracidea flowers confers\nthe power of flight upon it. Feelings \nof gratitude are the message it delivers."
    mondexclassification SPECIES_SHAYMIN, "Gratitude Pokémon"
    mondexheight SPECIES_SHAYMIN, "0’08”"
    mondexweight SPECIES_SHAYMIN, "4.6 lbs."


mondata SPECIES_ARCEUS, "Arceus"
    basestats 120, 120, 120, 120, 120, 120
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 3
    baseexp 255
    evyields 3, 0, 0, 0, 0, 0
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
    mondexentry SPECIES_ARCEUS, "According to the legends of Sinnoh, this\nPokémon emerged from an egg and\nshaped all there is in this world."
    mondexclassification SPECIES_ARCEUS, "Alpha Pokémon"
    mondexheight SPECIES_ARCEUS, "10’06”"
    mondexweight SPECIES_ARCEUS, "705.5 lbs."


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
    items ITEM_NONE, ITEM_SILVERPOWDER
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
    items ITEM_NONE, ITEM_SILVERPOWDER
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
    abilities ABILITY_VITAL_SPIRIT, ABILITY_PICKUP
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
    items ITEM_BLACK_BELT, ITEM_EXPERT_BELT
    genderratio 255
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
    items ITEM_BLACK_BELT, ITEM_EXPERT_BELT
    genderratio 255
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
    items ITEM_NONE, ITEM_DEEPSEATOOTH
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
    items ITEM_BLACKGLASSES, ITEM_NONE
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
    items ITEM_BLACKGLASSES, ITEM_NONE
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
    items ITEM_BLACKGLASSES, ITEM_NONE
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
    items ITEM_NEVERMELTICE, ITEM_NONE
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
    items ITEM_NEVERMELTICE, ITEM_NONE
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
    items ITEM_NEVERMELTICE, ITEM_NONE
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
    items ITEM_TINYMUSHROOM, ITEM_BIG_MUSHROOM
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
    items ITEM_TINYMUSHROOM, ITEM_BIG_MUSHROOM
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
    items ITEM_NEVERMELTICE, ITEM_NONE
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
    genderratio 255
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
    genderratio 255
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
    catchrate 15
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_SILVERPOWDER, ITEM_NONE
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
    abilities ABILITY_PRESSURE, ABILITY_NONE
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
    catchrate 3
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
    mondexentry SPECIES_CHESPIN, "Such a thick shell of wood covers its head and back\nthat even a direct hit from a truck wouldn’t faze it."
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
    mondexentry SPECIES_QUILLADIN, "They strengthen their lower bodies by\nrunning into one another. They are very\nkind and won’t start fights."
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
    mondexentry SPECIES_CHESNAUGHT, "When it takes a defensive posture with its fists\nguarding its face, it could withstand a bomb blast."
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
    mondexentry SPECIES_FENNEKIN, "As it walks, it munches on a twig in place\nof a snack. It intimidates opponents\nby puffing hot air out of its ears."
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
    mondexentry SPECIES_BRAIXEN, "It has a twig stuck in its tail. With\nfriction from its tail fur, it sets the\ntwig on fire and launches into battle."
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
    mondexentry SPECIES_DELPHOX, "Using psychic power, it generates a\nfiery vortex of 5,400 degrees Fahrenheit,\nincinerating foes swept into this whirl of flame."
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
    mondexentry SPECIES_FROAKIE, "It secretes flexible bubbles from its chest and back.\nThe bubbles reduce the damage it would otherwise\ntake when attacked."
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
    mondexentry SPECIES_FROGADIER, "It can throw bubble-covered pebbles with precise\ncontrol, hitting empty cans up to a hundred feet away."
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
    mondexentry SPECIES_GRENINJA, "It appears and vanishes with a ninja’s grace.\nIt toys with its enemies using swift movements, while\nslicing them with throwing stars of sharpest water."
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
    abilities ABILITY_PICKUP, ABILITY_CHEEK_POUCH
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BUNNELBY_TM_DATA_0, SPECIES_BUNNELBY_TM_DATA_1, SPECIES_BUNNELBY_TM_DATA_2, SPECIES_BUNNELBY_TM_DATA_3
    mondexentry SPECIES_BUNNELBY, "They use their large ears to dig burrows.\nThey will dig the whole night through."
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
    abilities ABILITY_PICKUP, ABILITY_CHEEK_POUCH
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DIGGERSBY_TM_DATA_0, SPECIES_DIGGERSBY_TM_DATA_1, SPECIES_DIGGERSBY_TM_DATA_2, SPECIES_DIGGERSBY_TM_DATA_3
    mondexentry SPECIES_DIGGERSBY, "With their powerful ears, they can heft\nboulders of a ton or more with ease.\nThey can be a big help at construction sites."
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
    mondexentry SPECIES_FLETCHLING, "While it’s an amiable Pokémon, if you touch it\nunexpectedly, it will heat up its body in an\ninstant, and you’ll be burned."
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
    mondexentry SPECIES_FLETCHINDER, "The hotter the flame sac on its belly,\nthe faster it can fly, but it takes some\ntime to get the fire going."
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
    mondexentry SPECIES_TALONFLAME, "When attacking prey, it can reach speeds\nof up to 310 mph. It finishes its prey off\nwith a colossal kick."
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
    mondexentry SPECIES_SCATTERBUG, "The powder that covers its body\nregulates its temperature, so it\ncan live in any region or climate."
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
    mondexentry SPECIES_SPEWPA, "The beaks of bird Pokémon can’t begin\nto scratch its stalwart body.\nTo defend itself, it spews powder."
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
    mondexentry SPECIES_VIVILLON, "The patterns on this Pokémon’s wings\ndepend on the climate and topography\nof its habitat. It scatters colorful scales."
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
    mondexentry SPECIES_LITLEO, "The stronger the opponent it faces,\nthe more heat surges from its mane\nand the more power flows through its body."
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
    mondexentry SPECIES_PYROAR, "The temperature of its breath is over 10,000\ndegrees Fahrenheit, but Pyroar doesn’t use it on\nits prey. This Pokémon prefers to eat raw meat."
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
    mondexentry SPECIES_FLABEBE, "When it finds a flower it likes, it dwells on\nthat flower its whole life long. It floats in the\nwind’s embrace with an untroubled heart."
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
    mondexentry SPECIES_FLOETTE, "It raises flowers and uses them as weapons.\nThe more gorgeous the blossom, the more\npower it contains."
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
    mondexentry SPECIES_FLORGES, "It claims exquisite flower gardens as its territory,\nand it obtains power from basking in the energy\nemitted by flowering plants."
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
    mondexentry SPECIES_SKIDDO, "Thought to be one of the first Pokémon to live in\nharmony with humans, it has a placid disposition."
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
    mondexentry SPECIES_GOGOAT, "It can tell how its Trainer is feeling by\nsubtle shifts in the grip on its horns.\nThis empathic sense lets them run as if one being."
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
    mondexentry SPECIES_PANCHAM, "It does its best to be taken seriously by its enemies,\nbut its glare is not sufficiently intimidating.\nChewing on a leaf is its trademark."
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
    mondexentry SPECIES_PANGORO, "Although it possesses a violent temperament,\nit won’t put up with bullying. It uses the leaf in\nits mouth to sense the movements of its enemies."
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
    mondexentry SPECIES_FURFROU, "Left alone, its fur will grow longer and longer,\nbut it will only allow someone it trusts to cut it."
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
    mondexentry SPECIES_ESPURR, "There’s enough psychic power in Espurr to send a\nwrestler flying, but because this power can’t be\ncontrolled, Espurr finds it troublesome."
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
    mondexentry SPECIES_MEOWSTIC, "The eyeball patterns on the interior of its ears\nemit psychic energy. It keeps the patterns tightly\ncovered because that power is too immense."
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
    mondexentry SPECIES_HONEDGE, "Honedge’s soul once belonged to a person who\nwas killed a long time ago by the sword that\nmakes up Honedge’s body."
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
    mondexentry SPECIES_DOUBLADE, "The complex attack patterns of its two swords\nare unstoppable, even for an opponent\ngreatly accomplished at swordplay."
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
    mondexentry SPECIES_AEGISLASH, "In this defensive stance, Aegislash uses its steel\nbody and a force field of spectral power to\nreduce the damage of any attack."
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
    mondexentry SPECIES_SPRITZEE, "The scent its body gives off enraptures those\nwho smell it. Noble ladies had no shortage of\nlove for Spritzee."
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
    mondexentry SPECIES_AROMATISSE, "It devises various scents, pleasant and unpleasant,\nand emits scents that its enemies dislike in order\nto gain an edge in battle."
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
    mondexentry SPECIES_SWIRLIX, "The sweet smell of cotton candy perfumes\nSwirlix’s fluffy fur. This Pokémon spits out\nsticky string to tangle up its enemies."
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
    mondexentry SPECIES_SLURPUFF, "Its sense of smell is 100 million times better than\na human’s, so even the faintest scent tells it about\neverything in the area. It’s like it can see with its nose!"
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
    mondexentry SPECIES_INKAY, "It draws prey near with its blinking lights and\nthen wraps them up in its long tentacles and\nholds them in place."
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
    mondexentry SPECIES_MALAMAR, "It flashes the pattern on its torso to control its\nprey and draw them in. The edges of its fins are\nsupremely sharp."
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
    mondexentry SPECIES_BINACLE, "If the two don’t work well together, both their\noffense and defense fall apart. Without good\nteamwork, they won’t survive."
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
    mondexentry SPECIES_BARBARACLE, "Having an eye on each palm allows it to keep\nwatch in all directions. In a pinch, its limbs start\nto act on their own to ensure the enemy’s defeat."
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
    mondexentry SPECIES_SKRELP, "Camouflaged as rotten kelp, they spray\nliquid poison on prey that approaches\nunawares and then finish it off."
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
    mondexentry SPECIES_DRAGALGE, "Dragalge generates dragon energy by sticking\nthe plume on its head out above the ocean’s\nsurface and bathing it in sunlight."
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
    mondexentry SPECIES_CLAUNCHER, "By detonating gas that accumulates in its right\nclaw, this Pokémon launches water like a bullet.\nThis is how Clauncher defeats its enemies."
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
    mondexentry SPECIES_CLAWITZER, "By expelling water from the nozzle in the back\nof its claw, it can move at a speed of 60 knots."
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
    mondexentry SPECIES_HELIOPTILE, "When spread, the frills on its head act like solar\npanels, generating the power behind this\nPokémon’s electric moves."
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
    mondexentry SPECIES_HELIOLISK, "A now-vanished desert culture treasured these\nPokémon. Appropriately, when Heliolisk came to\nthe Galar region, treasure came with them."
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
    mondexentry SPECIES_TYRUNT, "Its immense jaws have enough destructive\nforce that it can chew up an automobile.\nIt lived 100 million years ago."
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
    mondexentry SPECIES_TYRANTRUM, "Complete restoration is impossible, allowing\nroom for theories that its entire body was\nonce covered in a feather-like coat."
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
    mondexentry SPECIES_AMAURA, "This Pokémon was successfully restored from a\nfossil. In the past, it lived with others of its kind\nin cold lands where there were fewer predators."
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
    mondexentry SPECIES_AURORUS, "The diamond-shaped crystals on its body\nexpel air as cold as -240 degrees Fahrenheit,\nsurrounding its enemies and encasing them in ice."
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
    mondexentry SPECIES_SYLVEON, "When this Pokémon sights its prey, it swirls its\nribbonlike feelers as a distraction. A moment\nlater, it pounces."
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
    mondexentry SPECIES_HAWLUCHA, "It drives its opponents to exhaustion with its agile\nmaneuvers, then ends the fight with a flashy\nfinishing move."
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
    abilities ABILITY_CHEEK_POUCH, ABILITY_PICKUP
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_DEDENNE_TM_DATA_0, SPECIES_DEDENNE_TM_DATA_1, SPECIES_DEDENNE_TM_DATA_2, SPECIES_DEDENNE_TM_DATA_3
    mondexentry SPECIES_DEDENNE, "Since Dedenne can’t generate much electricity on\nits own, it steals electricity from outlets or other\nelectric Pokémon."
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
    mondexentry SPECIES_CARBINK, "Born from the temperatures and pressures\ndeep underground, it fires beams from the\nstone in its head."
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
    mondexentry SPECIES_GOOMY, "It uses its horns to check out its surroundings.\nThey’re very sensitive, so if you grab them, it\nwill feel a strong shock and be unable to move."
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
    mondexentry SPECIES_SLIGGOO, "It crawls along sluggishly. The swirly protrusion\non its back is filled with its brain and\nother organs."
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
    mondexentry SPECIES_GOODRA, "It’s very friendly toward people. If you grow\nclose to it, Goodra will hug you with its sticky,\nslime-covered body. Don’t get mad."
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
    mondexentry SPECIES_KLEFKI, "Long ago it lived in mines, but once the minerals\nthat make up its diet became scarcer, Klefki\nbegan appearing in human settlements."
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
    mondexentry SPECIES_PHANTUMP, "These Pokémon are stumps possessed by the\nspirits of children who died in the forest.\nTheir cries sound like eerie screams."
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
    mondexentry SPECIES_TREVENANT, "Using its roots as a nervous system,\nit controls the trees in the forest.\nIt’s kind to the Pokémon that reside in its body."
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
    abilities ABILITY_PICKUP,  ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_PUMPKABOO_TM_DATA_0, SPECIES_PUMPKABOO_TM_DATA_1, SPECIES_PUMPKABOO_TM_DATA_2, SPECIES_PUMPKABOO_TM_DATA_3
    mondexentry SPECIES_PUMPKABOO, "The light that streams out from the holes in the\npumpkin can hypnotize and control the people\nand Pokémon that see it."
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
    abilities ABILITY_PICKUP,  ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GOURGEIST_TM_DATA_0, SPECIES_GOURGEIST_TM_DATA_1, SPECIES_GOURGEIST_TM_DATA_2, SPECIES_GOURGEIST_TM_DATA_3
    mondexentry SPECIES_GOURGEIST, "In the darkness of a new-moon night, Gourgeist\nwill come knocking. Whoever answers the door\nwill be swept off to the afterlife."
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
    mondexentry SPECIES_BERGMITE, "They chill the air around them to -150 degrees\nFahrenheit, freezing the water in the air into ice\nthat they use as armor."
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
    mondexentry SPECIES_AVALUGG, "At high latitudes, this Pokémon can be found\nwith clusters of Bergmite on its back as it swims\namong the icebergs."
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
    mondexentry SPECIES_NOIBAT, "After nightfall, they emerge from the caves they\nnest in during the day. Using their ultrasonic\nwaves, they go on the hunt for ripened fruit."
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
    mondexentry SPECIES_NOIVERN, "This hot-blooded Pokémon attacks anything it\nsees with ultrasonic waves that can\ncrush boulders."
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
    mondexentry SPECIES_XERNEAS, "Legends say it can share eternal life.\nIt slept for a thousand years in the form\nof a tree before its revival."
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
    mondexentry SPECIES_YVELTAL, "When this legendary Pokémon’s wings and\ntail feathers spread wide and glow red,\nit absorbs the life force of living creatures."
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
    mondexentry SPECIES_ZYGARDE, "Some say it can change to an even more\npowerful form when battling those who threaten\nthe ecosystem."
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
    mondexentry SPECIES_HOOPA, "It gathers things it likes and passes them through\nits loop to teleport them to a secret place."
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
    mondexentry SPECIES_VOLCANION, "It expels its internal steam from the\narms on its back. It has enough\npower to blow away a mountain."
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
    mondexentry SPECIES_ROWLET, "At a distance, it launches its sharp feathers while\nflying about. If the enemy gets too close, Rowlet\nswitches tactics and delivers vicious kicks."
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
    mondexentry SPECIES_DARTRIX, "This narcissistic Pokémon is a clean freak.\nIf you don’t groom it diligently, it will stop\nlistening to you."
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
    mondexentry SPECIES_DECIDUEYE, "It fires arrow quills from its wings with such\nprecision, they can pierce a pebble at distances\nover a hundred yards."
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
    mondexentry SPECIES_LITTEN, "Trying to pet Litten before it trusts you will\nresult in a nasty scratch from its sharp claws.\nBe careful."
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
    mondexentry SPECIES_TORRACAT, "When its mane is standing on end, you can tell\nit’s feeling good. When it isn’t feeling well, its fur\nwill lie down flat."
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
    mondexentry SPECIES_INCINEROAR, "It excels at violent, no-holds-barred battles.\nThe temperature of the flames that issue from its\nnavel exceeds 3,600 degrees Fahrenheit."
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
    mondexentry SPECIES_POPPLIO, "The balloons it inflates with its nose grow\nlarger and larger as it practices day by day."
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
    mondexentry SPECIES_BRIONNE, "It cares deeply for its companions. When its\nTrainer is feeling down, it performs a cheery\ndance to try and help."
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
    mondexentry SPECIES_PIKIPEK, "This Pokémon feeds on berries, whose leftover\nseeds become the ammunition for the attacks it\nfires off from its mouth."
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
    mondexentry SPECIES_TRUMBEAK, "From its mouth, it fires the seeds of berries\nit has eaten. The scattered seeds give rise\nto new plants."
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
    mondexentry SPECIES_TOUCANNON, "Within its beak, its internal gas ignites,\nexplosively launching seeds with enough power\nto pulverize boulders."
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
    mondexentry SPECIES_YUNGOOS, "With its sharp fangs, it will bite anything.\nIt did not originally live in Alola but was\nimported from another region."
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
    mondexentry SPECIES_GUMSHOOS, "Patient by nature, this Pokémon loses control of\nitself and pounces when it spots its favorite\nmeal-Rattata!"
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
    mondexentry SPECIES_GRUBBIN, "Its strong jaw enables it to scrape trees and\nslurp out the sap. It normally lives underground."
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
    mondexentry SPECIES_CHARJABUG, "Its body is capable of storing electricity. On\ncamping trips, people are grateful to have\none around."
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
    mondexentry SPECIES_VIKAVOLT, "It zips around, on sharp lookout for an opening.\nIt concentrates electrical energy within its large\njaws and uses it to zap its enemies."
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
    mondexentry SPECIES_CRABRAWLER, "While guarding its weak points with its pincers,\nit looks for an opening and unleashes punches.\nWhen it loses, it foams at the mouth and faints."
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
    mondexentry SPECIES_CRABOMINABLE, "It just throws punches indiscriminately. In times\nof desperation, it can lop off its own pincers\nand fire them like rockets."
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
    mondexentry SPECIES_ORICORIO, "It wins the hearts of its enemies with its\npassionate dancing and then uses the opening\nit creates to burn them up with blazing flames."
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
    mondexentry SPECIES_CUTIEFLY, "An opponent’s aura can tell Cutiefly what that\nopponent’s next move will be. Then Cutiefly can\nglide around the attack and strike back."
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
    mondexentry SPECIES_RIBOMBEE, "Rain makes pollen damp, so Ribombee hates\nrain. When it sees ominous clouds, it finds a\nhollow in a tree, where it waits stock-still."
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
    mondexentry SPECIES_ROCKRUFF, "When it rubs the rocks on its neck against you,\nthat’s proof of its love for you. However, the\nrocks are sharp, so the gesture is quite painful!"
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
    mondexentry SPECIES_LYCANROC, "When properly raised from a young age, it will\nbecome a trustworthy partner that will\nabsolutely never betray its Trainer."
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
    mondexentry SPECIES_WISHIWASHI, "When it’s in trouble, its eyes moisten and begin\nto shine. The shining light attracts its comrades,\nand they stand together against their enemies."
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
    mondexentry SPECIES_MAREANIE, "They eat Corsola branches, so Mareanie are\nhated by craftsmen who work with Corsola\nbranches that have naturally fallen off."
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
    mondexentry SPECIES_TOXAPEX, "To survive in the cold waters of Galar, this\nPokémon forms a dome with its legs, enclosing\nits body so it can capture its own body heat."
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
    mondexentry SPECIES_MUDBRAY, "It eats dirt to create mud and smears this mud all\nover its feet, giving them the grip needed to walk\non rough terrain without slipping."
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
    mondexentry SPECIES_MUDSDALE, "Mudsdale has so much stamina that it could carry\nover 10 tons across the Galar region without rest\nor sleep."
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
    mondexentry SPECIES_DEWPIDER, "When it comes across enemies or potential prey,\nthis Pokémon smashes its\nwater-bubble-covered head into them."
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
    mondexentry SPECIES_ARAQUANID, "It delivers headbutts with the water bubble\non its head. Small Pokémon get sucked into\nthe bubble, where they drown."
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
    mondexentry SPECIES_FOMANTIS, "During the day, Fomantis basks in sunlight and\nsleeps peacefully. It wakes and moves around\nat night."
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
    mondexentry SPECIES_LURANTIS, "The petals on this Pokémon’s arms are thin and\nsuper sharp, and they can fire laser beams if\nLurantis gathers light first."
    mondexclassification SPECIES_LURANTIS, "Bloom Sickle Pokémon"
    mondexheight SPECIES_LURANTIS, "2’11”"
    mondexweight SPECIES_LURANTIS, "40.8 lbs."


mondata SPECIES_MORELULL, "Morelull"
    basestats 40, 35, 55, 15, 65, 75
    types TYPE_GRASS, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_GRASS
    catchrate 190
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_TINYMUSHROOM, ITEM_BIG_MUSHROOM
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_ILLUMINATE, ABILITY_EFFECT_SPORE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_MORELULL_TM_DATA_0, SPECIES_MORELULL_TM_DATA_1, SPECIES_MORELULL_TM_DATA_2, SPECIES_MORELULL_TM_DATA_3
    mondexentry SPECIES_MORELULL, "It scatters its shining spores around itself.\nEven though they’re dangerous, nighttime tours\nof forests where Morelull live are popular."
    mondexclassification SPECIES_MORELULL, "Illuminating Pokémon"
    mondexheight SPECIES_MORELULL, "0’08”"
    mondexweight SPECIES_MORELULL, "3.3 lbs."


mondata SPECIES_SHIINOTIC, "Shiinotic"
    basestats 60, 45, 80, 30, 90, 100
    types TYPE_GRASS, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_GRASS
    catchrate 75
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_TINYMUSHROOM, ITEM_BIG_MUSHROOM
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_ILLUMINATE, ABILITY_EFFECT_SPORE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SHIINOTIC_TM_DATA_0, SPECIES_SHIINOTIC_TM_DATA_1, SPECIES_SHIINOTIC_TM_DATA_2, SPECIES_SHIINOTIC_TM_DATA_3
    mondexentry SPECIES_SHIINOTIC, "It puts its prey to sleep and siphons off their\nvitality through the tip of its arms. If one of its\nkind is weakened, it helps by sending it vitality."
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
    mondexentry SPECIES_SALANDIT, "This sneaky Pokémon will slink behind its prey\nand immobilize it with poisonous gas before the\nprey even realizes Salandit is there."
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
    mondexentry SPECIES_SALAZZLE, "Salazzle lives deep in caves and forces the\nSalandit it has attracted with its pheromones\nto serve it."
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
    mondexentry SPECIES_STUFFUL, "Its fluffy fur is a delight to pet, but carelessly\nreaching out to touch this Pokémon could result\nin painful retaliation."
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
    mondexentry SPECIES_BEWEAR, "This Pokémon has the habit of hugging its\ncompanions. Many Trainers have left this world\nafter their spines were squashed by its hug."
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
    mondexentry SPECIES_BOUNSWEET, "It tries to resist being swallowed by a bird\nPokémon by spinning the sepals on its head.\nIt’s usually a fruitless attempt."
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
    mondexentry SPECIES_STEENEE, "This Pokémon is always bouncing around\nenergetically. Other Pokémon are attracted by\nits lively appearance and pleasant aroma."
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
    mondexentry SPECIES_TSAREENA, "A Pokémon with an aggressive personality and\na mastery of kicking, it cackles every time it\nkicks an opponent."
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
    mondexentry SPECIES_COMFEY, "Comfey picks flowers with its vine and decorates\nitself with them. For some reason, flowers won’t\nwither once they’re attached to a Comfey."
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
    mondexentry SPECIES_ORANGURU, "Known for its extreme intelligence, this Pokémon\nwill look down on inexperienced Trainers, so it’s\nbest suited to veteran Trainers."
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
    mondexentry SPECIES_PASSIMIAN, "They use their saliva to stick leaves to their\nshoulders. You can tell what troop they belong\nto from the position of the leaves."
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
    mondexentry SPECIES_WIMPOD, "It will pick up anything it finds on the ground.\nSometimes it finds coins, so Murkrow and\nMeowth will go after it."
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
    mondexentry SPECIES_GOLISOPOD, "It will do anything to win, taking advantage of\nevery opening and finishing opponents off with\nthe small claws on its front legs."
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
    mondexentry SPECIES_SANDYGAST, "It takes control of anyone who puts a hand in its\nmouth. And so it adds to the accumulation of\nits sand-mound body."
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
    mondexentry SPECIES_PALOSSAND, "Palossand is known as the Beach Nightmare. It\npulls its prey down into the sand by controlling\nthe sand itself, and then it sucks out their souls."
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
    mondexentry SPECIES_PYUKUMUKU, "It lives in warm, shallow waters. If it encounters a\nfoe, it will spit out its internal organs as a means\nto punch them."
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
    mondexentry SPECIES_TYPE_NULL, "A Pokémon weapon developed for a specific\nmission, it went berserk during an experiment,\nso it was cryogenically frozen."
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
    mondexentry SPECIES_SILVALLY, "Through the bond it formed with its Trainer, its\nwill was strengthened, and it was able to\ndestroy its control mask."
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
    mondexentry SPECIES_MINIOR, "It lives in the ozone layer, where it becomes\nfood for stronger Pokémon. When it tries to run\naway, it falls to the ground."
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
    mondexentry SPECIES_KOMALA, "It is born asleep, and it dies asleep. All its\nmovements are apparently no more than the\nresults of it tossing and turning in its dreams."
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
    mondexentry SPECIES_TURTONATOR, "Explosive substances coat the shell on its back.\nEnemies that dare attack it will be blown away\nby an immense detonation."
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
    mondexentry SPECIES_TOGEDEMARU, "With the long hairs on its back, this Pokémon\ntakes in electricity from other electric Pokémon.\nIt stores what it absorbs in an electric sac."
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
    mondexentry SPECIES_MIMIKYU, "Its actual appearance is unknown. A scholar\nwho saw what was under its rag was\noverwhelmed by terror and died from the shock."
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
    mondexentry SPECIES_BRUXISH, "Its skin is thick enough to fend off Mareanie’s\nspikes. With its robust teeth, Bruxish crunches\nup the spikes and eats them."
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
    mondexentry SPECIES_DRAMPA, "It appears in towns and plays with the children.\nDrampa will protect kids when they’re in danger,\nso their moms don’t have to worry."
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
    mondexentry SPECIES_DHELMISE, "After lowering its anchor, it waits for its prey. It\ncatches large Wailord and drains their life-force."
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
    mondexentry SPECIES_JANGMO_O, "It smacks the scales on its head against rocks\nor against the ground to frighten its opponents.\nIt can also contact its friends with these noises."
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
    mondexentry SPECIES_HAKAMO_O, "It makes noise by clanging its scales together.\nWhen the rhythm has reached its peak,\nHakamo-o attacks."
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
    mondexentry SPECIES_KOMMO_O, "It clatters its tail scales to unnerve opponents.\nThis Pokémon will battle only those who stand\nsteadfast in the face of this display."
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
    mondexentry SPECIES_TAPU_KOKO, "Although it’s called a guardian deity, if a person\nor Pokémon puts it in a bad mood, it will become\na malevolent deity and attack."
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
    mondexentry SPECIES_TAPU_LELE, "Although called a guardian deity, Tapu Lele is\ndevoid of guilt about its cruel disposition and\ncan be described as nature incarnate."
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
    mondexentry SPECIES_TAPU_BULU, "It makes ringing sounds with its tail to let others\nknow where it is, avoiding unneeded conflicts.\nThis guardian deity of Ula’ula controls plants."
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
    mondexentry SPECIES_TAPU_FINI, "The dense fog it creates brings the downfall\nand destruction of its confused enemies.\nOcean currents are the source of its energy."
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
    mondexentry SPECIES_COSMOG, "Even though its helpless, gaseous body can be\nblown away by the slightest breeze, it doesn’t\nseem to care."
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
    mondexentry SPECIES_COSMOEM, "There’s something accumulating around the\nblack core within its hard shell. People think\nthis Pokémon may come from another world."
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
    mondexentry SPECIES_SOLGALEO, "It is said to live in another world. The intense\nlight it radiates from the surface of its body can\nmake the darkest of nights light up like midday."
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
    mondexentry SPECIES_LUNALA, "Said to live in another world, this Pokémon\ndevours light, drawing the moonless dark veil of\nnight over the brightness of day."
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
    mondexentry SPECIES_NIHILEGO, "One of the Ultra Beasts. It’s unclear whether or\nnot this Pokémon is sentient, but sometimes it\ncan be observed behaving like a young girl."
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
    mondexentry SPECIES_BUZZWOLE, "This Ultra Beast appeared from another world.\nIt shows off its body, but whether that display\nis a boast or a threat remains unclear."
    mondexclassification SPECIES_BUZZWOLE, "Swollen Pokémon"
    mondexheight SPECIES_BUZZWOLE, "7’10”"
    mondexweight SPECIES_BUZZWOLE, "735.4 lbs."


mondata SPECIES_PHEROMOSA, "Phermosa"
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
    mondexentry SPECIES_PHEROMOSA, "One of the dangerous Ultra Beasts, it has been\nspotted running across the land at\nterrific speeds."
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
    mondexentry SPECIES_XURKITREE, "It appeared from the Ultra Wormhole. It raided a\npower plant, so people think it energizes itself\nwith electricity."
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
    mondexentry SPECIES_CELESTEELA, "Although it’s alien to this world and a danger\nhere, it’s apparently a common organism in the\nworld where it normally lives."
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
    mondexentry SPECIES_KARTANA, "One of the Ultra Beast life-forms, it was\nobserved cutting down a gigantic steel tower\nwith one stroke of its blade."
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
    mondexentry SPECIES_GUZZLORD, "Although it’s alien to this world and a danger\nhere, it’s apparently a common organism in the\nworld where it normally lives."
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
    mondexentry SPECIES_NECROZMA, "It looks somehow pained as it rages around in\nsearch of light, which serves as its energy.\nIt’s apparently from another world."
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
    mondexentry SPECIES_MAGEARNA, "This artificial Pokémon, constructed more than\n500 years ago, can understand human speech\nbut cannot itself speak."
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
    mondexentry SPECIES_MARSHADOW, "This Pokémon can conceal itself in any shadow,\nso it went undiscovered for a long time."
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
    mondexentry SPECIES_POIPOLE, "An Ultra Beast that lives in a different world, it\ncackles wildly as it sprays its opponents with\npoison from the needles on its head."
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
    mondexentry SPECIES_NAGANADEL, "It stores hundreds of liters of poisonous liquid\ninside its body. It is one of the organisms known\nas UBs."
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
    mondexentry SPECIES_STAKATAKA, "It appeared from an Ultra Wormhole. Each one\nappears to be made up of many life-forms\nstacked one on top of each other."
    mondexclassification SPECIES_STAKATAKA, "Rampart Pokémon"
    mondexheight SPECIES_STAKATAKA, "18’01”"
    mondexweight SPECIES_STAKATAKA, "1807.8 lbs."


mondata SPECIES_BLACEPHALON, "Blacephalon"
    basestats 53, 127, 53, 107, 151, 79
    types TYPE_FIRE, TYPE_GHOST
    catchrate 30
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
    mondexentry SPECIES_BLACEPHALON, "A UB that appeared from an Ultra Wormhole, it\ncauses explosions, then takes advantage of\nopponents’ surprise to rob them of their vitality."
    mondexclassification SPECIES_BLACEPHALON, "Fireworks Pokémon"
    mondexheight SPECIES_BLACEPHALON, "5’11”"
    mondexweight SPECIES_BLACEPHALON, "28.7 lbs."


mondata SPECIES_ZERAORA, "Zeraora"
    basestats 88, 112, 75, 143, 102, 80
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 3
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
    mondexentry SPECIES_ZERAORA, "It runs as fast as lightning strikes, shredding its\nopponents with its high-voltage claws."
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
    mondexentry SPECIES_MELTAN, "It dissolves and eats metal. Circulating liquid\nmetal within its body is how it generates energy."
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
    mondexentry SPECIES_MELMETAL, "Revered long ago for its capacity to create iron\nfrom nothing, for some reason it has come back\nto life after 3,000 years."
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
    mondexentry SPECIES_GROOKEY, "It attacks with rapid beats of its stick.\nAs it strikes with amazing speed, it gets\nmore and more pumped."
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
    mondexentry SPECIES_THWACKEY, "When it’s drumming out rapid beats in battle, it\ngets so caught up in the rhythm that it won’t even\nnotice that it’s already knocked out its opponent."
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
    mondexentry SPECIES_RILLABOOM, "The one with the best drumming techniques\nbecomes the boss of the troop. It has a gentle\ndisposition and values harmony among its group."
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
    mondexentry SPECIES_SCORBUNNY, "A warm-up of running around gets fire energy\ncoursing through this Pokémon’s body. Once that\nhappens, it’s ready to fight at full power."
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
    mondexentry SPECIES_RABOOT, "It kicks berries right off the branches of trees\nand then juggles them with its feet, practicing\nits footwork."
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
    mondexentry SPECIES_CINDERACE, "It’s skilled at both offense and defense, and it\ngets pumped up when cheered on. But if it starts\nshowboating, it could put itself in a tough spot."
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
    mondexentry SPECIES_SOBBLE, "When it gets wet, its skin changes color,\nand this Pokémon becomes invisible as if\nit were camouflaged."
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
    mondexentry SPECIES_DRIZZILE, "A clever combatant, this Pokémon battles using\nwater balloons created with moisture secreted\nfrom its palms."
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
    mondexentry SPECIES_INTELEON, "Its nictitating membranes let it pick out foes’\nweak points so it can precisely blast them with\nwater that shoots from its fingertips at Mach 3."
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
    mondexentry SPECIES_SKWOVET, "It eats berries nonstop-a habit that has made\nit more resilient than it looks. It’ll show up on\nfarms, searching for yet more berries."
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
    mondexentry SPECIES_GREEDENT, "Common throughout the Galar region, this\nPokémon has strong teeth and can chew\nthrough the toughest of berry shells."
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
    mondexentry SPECIES_ROOKIDEE, "It will bravely challenge any opponent, no matter\nhow powerful. This Pokémon benefits from every\nbattle-even a defeat increases its strength a bit."
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
    mondexentry SPECIES_CORVISQUIRE, "The lessons of many harsh battles have taught it\nhow to accurately judge an opponent’s strength."
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
    mondexentry SPECIES_CORVIKNIGHT, "This Pokémon reigns supreme in the skies of the\nGalar region. The black luster of its steel body\ncould drive terror into the heart of any foe."
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
    mondexentry SPECIES_BLIPBUG, "Often found in gardens, this Pokémon has hairs\non its body that it uses to assess its surroundings."
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
    mondexentry SPECIES_DOTTLER, "As it grows inside its shell, it uses its psychic\nabilities to monitor the outside world and\nprepare for evolution."
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
    mondexentry SPECIES_ORBEETLE, "It emits psychic energy to observe and study\nwhat’s around it-and what’s around it can\ninclude things over six miles away."
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
    mondexentry SPECIES_NICKIT, "Aided by the soft pads on its feet, it silently raids\nthe food stores of other Pokémon. It survives off\nits ill-gotten gains."
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
    mondexentry SPECIES_THIEVUL, "It secretly marks potential targets with a scent.\nBy following the scent, it stalks its targets\nand steals from them when they least expect it."
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
    mondexentry SPECIES_GOSSIFLEUR, "It whirls around in the wind while singing a joyous\nsong. This delightful display has charmed many\ninto raising this Pokémon."
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
    mondexentry SPECIES_ELDEGOSS, "The seeds attached to its cotton fluff are full of\nnutrients. It spreads them on the wind so that\nplants and other Pokémon can benefit from them."
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
    mondexentry SPECIES_WOOLOO, "Its curly fleece is such an effective cushion that\nthis Pokémon could fall off a cliff and stand right\nback up at the bottom, unharmed."
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
    mondexentry SPECIES_DUBWOOL, "Weave a carpet from its springy wool, and you end\nup with something closer to a trampoline. You’ll\nstart to bounce the moment you set foot on it."
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
    mondexentry SPECIES_CHEWTLE, "Apparently the itch of its teething impels it to\nsnap its jaws at anything in front of it."
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
    mondexentry SPECIES_DREDNAW, "With jaws that can shear through steel rods,\nthis highly aggressive Pokémon chomps down\non its unfortunate prey."
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
    mondexentry SPECIES_YAMPER, "This Pokémon is very popular as a herding dog\nin the Galar region. As it runs, it generates\nelectricity from the base of its tail."
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
    mondexentry SPECIES_BOLTUND, "It sends electricity through its legs to boost their\nstrength. Running at top speed, it easily breaks\n50 mph."
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
    mondexentry SPECIES_ROLYCOLY, "Most of its body has the same composition as\ncoal. Fittingly, this Pokémon was first discovered\nin coal mines about 400 years ago."
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
    mondexentry SPECIES_CARKOL, "It forms coal inside its body. Coal dropped by\nthis Pokémon once helped fuel the lives of\npeople in the Galar region."
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
    mondexentry SPECIES_COALOSSAL, "While it’s engaged in battle, its mountain of coal\nwill burn bright red, sending off sparks that\nscorch the surrounding area."
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
    mondexentry SPECIES_APPLIN, "It spends its entire life inside an apple. It hides\nfrom its natural enemies, bird Pokémon, by\npretending it’s just an apple and nothing more."
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
    mondexentry SPECIES_FLAPPLE, "It flies on wings of apple skin and spits a\npowerful acid. It can also change its shape\ninto that of an apple."
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
    mondexentry SPECIES_APPLETUN, "Its body is covered in sweet nectar, and the\nskin on its back is especially yummy. Children\nused to have it as a snack."
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
    mondexentry SPECIES_SILICOBRA, "As it digs, it swallows sand and stores it in its\nneck pouch. The pouch can hold more than\n17 pounds of sand."
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
    mondexentry SPECIES_SANDACONDA, "Its unique style of coiling allows it to blast sand\nout of its sand sac more efficiently."
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
    mondexentry SPECIES_ARROKUDA, "After it’s eaten its fill, its movements become\nextremely sluggish. That’s when Cramorant\nswallows it up."
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
    mondexentry SPECIES_BARRASKEWDA, "This Pokémon has a jaw that’s as sharp as a spear\nand as strong as steel. Apparently Barraskewda’s\nflesh is surprisingly tasty, too."
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
    mondexentry SPECIES_TOXEL, "It stores poison in an internal poison sac and\nsecretes that poison through its skin. If you touch\nthis Pokémon, a tingling sensation follows."
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
    mondexentry SPECIES_TOXTRICITY, "When this Pokémon sounds as if it’s strumming a\nguitar, it’s actually clawing at the protrusions on\nits chest to generate electricity."
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
    mondexentry SPECIES_SIZZLIPEDE, "It stores flammable gas in its body and uses it to\ngenerate heat. The yellow sections on its belly\nget particularly hot."
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
    mondexentry SPECIES_CENTISKORCH, "While its burning body is already dangerous on\nits own, this excessively hostile Pokémon also has\nlarge and very sharp fangs."
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
    mondexentry SPECIES_CLOBBOPUS, "Its tentacles tear off easily, but it isn’t alarmed\nwhen that happens-it knows they’ll grow back.\nIt’s about as smart as a three-year-old."
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
    mondexentry SPECIES_GRAPPLOCT, "Searching for an opponent to test its skills\nagainst, it emerges onto land. Once the battle\nis over, it returns to the sea."
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
    mondexentry SPECIES_SINISTEA, "This Pokémon is said to have been born when\na lonely spirit possessed a cold, leftover cup\nof tea."
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
    mondexentry SPECIES_POLTEAGEIST, "Leaving leftover black tea unattended is asking\nfor this Pokémon to come along and pour itself\ninto it, turning the tea into a new Polteageist."
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
    mondexentry SPECIES_HATENNA, "Via the protrusion on its head, it senses other\ncreatures’ emotions. If you don’t have a calm\ndisposition, it will never warm up to you."
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
    mondexentry SPECIES_HATTREM, "Using the braids on its head, it pummels foes to\nget them to quiet down. One blow from those\nbraids would knock out a professional boxer."
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
    mondexentry SPECIES_HATTERENE, "It emits psychic power strong enough to cause\nheadaches as a deterrent to the approach\nof others."
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
    mondexentry SPECIES_IMPIDIMP, "Through its nose, it sucks in the emanations\nproduced by people and Pokémon when they\nfeel annoyed. It thrives off this negative energy."
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
    mondexentry SPECIES_MORGREM, "With sly cunning, it tries to lure people into the\nwoods. Some believe it to have the power to\nmake crops grow."
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
    mondexentry SPECIES_GRIMMSNARL, "With the hair wrapped around its body helping to\nenhance its muscles, this Pokémon can overwhelm\neven Machamp."
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
    mondexentry SPECIES_OBSTAGOON, "It evolved after experiencing numerous fights.\nWhile crossing its arms, it lets out a shout that\nwould make any opponent flinch."
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
    mondexentry SPECIES_PERRSERKER, "What appears to be an iron helmet is actually\nhardened hair. This Pokémon lives for the thrill\nof battle."
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
    mondexentry SPECIES_CURSOLA, "Be cautious of the ectoplasmic body\nsurrounding its soul. You’ll become\nstiff as stone if you touch it."
    mondexclassification SPECIES_CURSOLA, "Coral Pokémon"
    mondexheight SPECIES_CURSOLA, "3’03”"
    mondexweight SPECIES_CURSOLA, "0.9 lbs."


mondata SPECIES_SIRFETCHD, "Sirfetch’d"
    basestats 62, 135, 95, 65, 68, 82
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 177
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_STICK
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FIELD
    abilities ABILITY_STEADFAST,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SIRFETCHD_TM_DATA_0, SPECIES_SIRFETCHD_TM_DATA_1, SPECIES_SIRFETCHD_TM_DATA_2, SPECIES_SIRFETCHD_TM_DATA_3
    mondexentry SPECIES_SIRFETCHD, "Only Farfetch’d that have survived many battles\ncan attain this evolution. When this Pokémon’s\nleek withers, it will retire from combat."
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
    mondexentry SPECIES_MR_RIME, "It’s highly skilled at tap-dancing. It waves its cane\nof ice in time with its graceful movements."
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
    mondexentry SPECIES_RUNERIGUS, "A powerful curse was woven into an ancient\npainting. After absorbing the spirit of a Yamask,\nthe painting began to move."
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
    mondexentry SPECIES_MILCERY, "They say that any patisserie visited by Milcery\nis guaranteed success and good fortune."
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
    mondexentry SPECIES_ALCREMIE, "When Alcremie is content, the cream it\nsecretes from its hands becomes sweeter\nand richer."
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
    mondexentry SPECIES_FALINKS, "The six of them work together as one Pokémon.\nTeamwork is also their battle strategy, and they\nconstantly change their formation as they fight."
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
    mondexentry SPECIES_PINCURCHIN, "It stores electricity in each spine. Even if one gets\nbroken off, it still continues to emit electricity for\nat least three hours."
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
    mondexentry SPECIES_SNOM, "It spits out thread imbued with a frigid sort of\nenergy and uses it to tie its body to branches,\ndisguising itself as an icicle while it sleeps."
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
    mondexentry SPECIES_FROSMOTH, "It shows no mercy to any who desecrate fields\nand mountains. It will fly around on its icy wings,\ncausing a blizzard to chase offenders away."
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
    mondexentry SPECIES_STONJOURNER, "Once a year, on a specific date and at a specific\ntime, they gather out of nowhere and form up in\na circle."
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
    mondexentry SPECIES_EISCUE, "This Pokémon keeps its heat-sensitive head cool\nwith ice. It fishes for its food, dangling its single\nhair into the sea to lure in prey."
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
    mondexentry SPECIES_INDEEDEE, "Through its horns, it can pick up on the emotions\nof creatures around it. Positive emotions are the\nsource of its strength."
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
    mondexentry SPECIES_MORPEKO, "As it eats the seeds stored up in its pocket-like\npouches, this Pokémon is not just satisfying its\nconstant hunger. It’s also generating electricity."
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
    mondexentry SPECIES_CUFANT, "It digs up the ground with its trunk. It’s also very\nstrong, being able to carry loads of over\nfive tons without any problem at all."
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
    mondexentry SPECIES_COPPERAJAH, "These Pokémon live in herds. Their trunks have\nincredible grip strength, strong enough to crush\ngiant rocks into powder."
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
    mondexentry SPECIES_DRACOZOLT, "The powerful muscles in its tail generate its\nelectricity. Compared to its lower body,\nits upper half is entirely too small."
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
    mondexentry SPECIES_ARCTOZOLT, "This Pokémon lived on prehistoric seashores and\nwas able to preserve food with the ice on its\nbody. It went extinct because it moved so slowly."
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
    mondexentry SPECIES_DRACOVISH, "Its mighty legs are capable of running at\nspeeds exceeding 40 mph, but this Pokémon\ncan’t breathe unless it’s underwater."
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
    mondexentry SPECIES_ARCTOVISH, "Though it’s able to capture prey by freezing its\nsurroundings, it has trouble eating the prey\nafterward because its mouth is on top of its head."
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
    mondexentry SPECIES_DURALUDON, "The special metal that composes its body is very\nlight, so this Pokémon has considerable agility.\nIt lives in caves because it dislikes the rain."
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
    mondexentry SPECIES_DREEPY, "After being reborn as a ghost Pokémon,\nDreepy wanders the areas it used to inhabit\nback when it was alive in prehistoric seas."
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
    mondexentry SPECIES_DRAKLOAK, "Without a Dreepy to place on its head and\ncare for, it gets so uneasy it’ll try to substitute\nany Pokémon it finds for the missing Dreepy."
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
    mondexentry SPECIES_DRAGAPULT, "When it isn’t battling, it keeps Dreepy in the\nholes on its horns. Once a fight starts, it launches\nthe Dreepy like supersonic missiles."
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
    mondexentry SPECIES_ZACIAN, "This Pokémon has slumbered for many years.\nSome say it’s Zamazenta’s elder sister-others\nsay the two Pokémon are rivals."
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
    mondexentry SPECIES_ZAMAZENTA, "In times past, it worked together with a king of\nthe people to save the Galar region. It absorbs\nmetal that it then uses in battle."
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
    mondexentry SPECIES_ETERNATUS, "It was inside a meteorite that fell 20,000 years\nago. There seems to be a connection between\nthis Pokémon and the Dynamax phenomenon."
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
    mondexentry SPECIES_KUBFU, "If Kubfu pulls the long white hair on its head,\nits fighting spirit heightens and power wells up\nfrom the depths of its belly."
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
    mondexentry SPECIES_URSHIFU, "Inhabiting the mountains of a distant region, this\nPokémon races across sheer cliffs, training its legs\nand refining its moves."
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
    mondexentry SPECIES_ZARUDE, "Within dense forests, this Pokémon lives in a pack\nwith others of its kind. It’s incredibly aggressive,\nand the other Pokémon of the forest fear it."
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
    mondexentry SPECIES_REGIELEKI, "Its entire body is made up of a single organ that\ngenerates electrical energy. Regieleki is capable\nof creating all Galar’s electricity."
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
    mondexentry SPECIES_REGIDRAGO, "An academic theory proposes that Regidrago’s\narms were once the head of an ancient dragon\nPokémon. The theory remains unproven."
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
    mondexentry SPECIES_GLASTRIER, "Glastrier emits intense cold from its hooves.\nIt’s also a belligerent Pokémon-anything it\nwants, it takes by force."
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
    mondexentry SPECIES_SPECTRIER, "It probes its surroundings with all its senses save\none-it doesn’t use its sense of sight. Spectrier’s\nkicks are said to separate soul from body."
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
    mondexentry SPECIES_CALYREX, "Calyrex is a merciful Pokémon, capable of\nproviding healing and blessings. It reigned over\nthe Galar region in times of yore."
    mondexclassification SPECIES_CALYREX, "King Pokémon"
    mondexheight SPECIES_CALYREX, "3’07”"
    mondexweight SPECIES_CALYREX, "17.0 lbs."


mondata SPECIES_WYRDEER, "Wyrdeer"
    basestats 103, 105, 72, 65, 105, 75
    types TYPE_NORMAL, TYPE_PSYCHIC
    catchrate 135
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
    mondexentry SPECIES_WYRDEER, "The black orbs shine with an uncanny light\nwhen the Pokémon is erecting invisible barriers. The\nfur shed from its beard retains heat well."
    mondexclassification SPECIES_WYRDEER, "Big Horn Pokémon"
    mondexheight SPECIES_WYRDEER, "5’11”"
    mondexweight SPECIES_WYRDEER, "209.7 lbs."


mondata SPECIES_KLEAVOR, "Kleavor"
    basestats 70, 135, 95, 85, 45, 70
    types TYPE_BUG, TYPE_ROCK
    catchrate 115
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
    mondexentry SPECIES_KLEAVOR, "A violent creature that fells towering trees\nwith its crude axes and shields itself with\nhard stone."
    mondexclassification SPECIES_KLEAVOR, "Axe Pokémon"
    mondexheight SPECIES_KLEAVOR, "5’11”"
    mondexweight SPECIES_KLEAVOR, "196.2 lbs."


mondata SPECIES_URSALUNA, "Ursaluna"
    basestats 130, 140, 105, 50, 45, 80
    types TYPE_GROUND, TYPE_NORMAL
    catchrate 75
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


mondata SPECIES_BASCULEGION, "Basculegion"
    basestats 120, 112, 65, 78, 80, 75
    types TYPE_WATER, TYPE_GHOST
    catchrate 135
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
    mondexentry SPECIES_BASCULEGION, "Clads itself in the souls of comrades that perished\nbefore fulfilling their goals of journeying\nupstream."
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
    mondexentry SPECIES_SNEASLER, "Because of Sneasler’s virulent poison and daunting\nphysical prowess, no other species could hope\nto best it on the frozen highlands."
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
    mondexentry SPECIES_OVERQWIL, "Its lancelike spikes and savage temperament have\nearned it the nickname \"sea fiend.\" It\nslurps up poison to nourish itself."
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
    mondexentry SPECIES_ENAMORUS, "When it flies to this land from across the sea,\nthe bitter winter comes to an end. This Pokémon’s\nlove gives rise to the budding of fresh life."
    mondexclassification SPECIES_ENAMORUS, "Love-Hate Pokémon"
    mondexheight SPECIES_ENAMORUS, "5’03”"
    mondexweight SPECIES_ENAMORUS, "105.8 lbs."


mondata SPECIES_MEGA_VENUSAUR, "-----"
    basestats 80,100,123,80,122,120
    types TYPE_GRASS, TYPE_POISON
    catchrate 45
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

mondata SPECIES_MEGA_CHARIZARD_X, "-----"
    basestats 78, 130, 111, 100, 130, 85
    types TYPE_FIRE, TYPE_DRAGON
    catchrate 45
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

mondata SPECIES_MEGA_CHARIZARD_Y, "-----"
    basestats 78, 104, 78, 100, 159, 115
    types TYPE_FIRE, TYPE_FLYING
    catchrate 45
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

mondata SPECIES_MEGA_BLASTOISE, "-----"
    basestats 79, 103, 120, 78, 135, 115
    types TYPE_WATER, TYPE_WATER
    catchrate 45
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

mondata SPECIES_MEGA_BEEDRILL, "-----"
    basestats 65, 150, 40, 145, 15, 80
    types TYPE_BUG, TYPE_POISON
    catchrate 45
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

mondata SPECIES_MEGA_PIDGEOT, "-----"
    basestats 83, 80, 80, 121, 135, 80
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 45
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

mondata SPECIES_MEGA_ALAKAZAM, "-----"
    basestats 55, 50, 65, 150, 175, 105
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 50
    baseexp 186
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_TWISTEDSPOON
    genderratio 63
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_TRACE, ABILITY_TRACE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_SLOWBRO, "-----"
    basestats 95, 75, 180, 30, 130, 80
    types TYPE_WATER, TYPE_PSYCHIC
    catchrate 75
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

mondata SPECIES_MEGA_GENGAR, "-----"
    basestats 60, 65, 80, 130, 170, 95
    types TYPE_GHOST, TYPE_POISON
    catchrate 45
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

mondata SPECIES_MEGA_KANGASKHAN, "-----"
    basestats 105, 125, 100, 100, 60, 100
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
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

mondata SPECIES_MEGA_PINSIR, "-----"
    basestats 65, 155, 120, 105, 65, 90
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 200
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_PURE_POWER, ABILITY_PURE_POWER //ABILITY_AERILATE, ABILITY_AERILATE
    runchance 125
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_GYARADOS, "-----"
    basestats 95, 155, 109, 81, 70, 130
    types TYPE_WATER, TYPE_DARK
    catchrate 45
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

mondata SPECIES_MEGA_AERODACTYL, "-----"
    basestats 80, 135, 85, 150, 70, 95
    types TYPE_ROCK, TYPE_FLYING
    catchrate 45
    baseexp 202
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 35
    basefriendship 50
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_PRESSURE, ABILITY_PRESSURE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_MEWTWO_X, "-----"
    basestats 106, 190, 100, 130, 154, 100
    types TYPE_PSYCHIC, TYPE_FIGHTING
    catchrate 3
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

mondata SPECIES_MEGA_MEWTWO_Y, "-----"
    basestats 106, 150, 70, 140, 194, 120
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 3
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

mondata SPECIES_MEGA_AMPHAROS, "-----"
    basestats 90, 95, 105, 45, 165, 110
    types TYPE_ELECTRIC, TYPE_DRAGON
    catchrate 45
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

mondata SPECIES_MEGA_STEELIX, "-----"
    basestats 75, 125, 230, 30, 55, 95
    types TYPE_STEEL, TYPE_GROUND
    catchrate 25
    baseexp 196
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_METAL_COAT
    genderratio 127
    eggcycles 25
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_PRESSURE, ABILITY_PRESSURE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_SCIZOR, "-----"
    basestats 70, 150, 140, 75, 65, 100
    types TYPE_BUG, TYPE_STEEL
    catchrate 25
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

mondata SPECIES_MEGA_HERACROSS, "-----"
    basestats 80, 185, 115, 75, 40, 105
    types TYPE_BUG, TYPE_FIGHTING
    catchrate 45
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

mondata SPECIES_MEGA_HOUNDOOM, "-----"
    basestats 75, 90, 90, 115, 140, 90
    types TYPE_DARK, TYPE_FIRE
    catchrate 45
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

mondata SPECIES_MEGA_TYRANITAR, "-----"
    basestats 100, 164, 150, 71, 95, 120
    types TYPE_ROCK, TYPE_DARK
    catchrate 45
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

mondata SPECIES_MEGA_SCEPTILE, "-----"
    basestats 70, 110, 75, 145, 145, 85
    types TYPE_GRASS, TYPE_DRAGON
    catchrate 45
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

mondata SPECIES_MEGA_BLAZIKEN, "-----"
    basestats 80, 160, 80, 100, 130, 80
    types TYPE_FIRE, TYPE_FIGHTING
    catchrate 45
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

mondata SPECIES_MEGA_SWAMPERT, "-----"
    basestats 100, 150, 110, 70, 95, 110
    types TYPE_WATER, TYPE_GROUND
    catchrate 45
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

mondata SPECIES_MEGA_GARDEVOIR, "-----"
    basestats 68, 85, 65, 100, 165, 135
    types TYPE_PSYCHIC, FAIRY_TYPE_IMPLEMENTED ? TYPE_FAIRY : TYPE_PSYCHIC
    catchrate 45
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

mondata SPECIES_MEGA_SABLEYE, "-----"
    basestats 50, 85, 125, 20, 85, 115
    types TYPE_DARK, TYPE_GHOST
    catchrate 45
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

mondata SPECIES_MEGA_MAWILE, "-----"
    basestats 50, 105, 125, 50, 55, 95
    types TYPE_STEEL, FAIRY_TYPE_IMPLEMENTED ? TYPE_FAIRY : TYPE_STEEL
    catchrate 45
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

mondata SPECIES_MEGA_AGGRON, "-----"
    basestats 70, 140, 230, 50, 60, 80
    types TYPE_STEEL, TYPE_STEEL
    catchrate 45
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

mondata SPECIES_MEGA_MEDICHAM, "-----"
    basestats 60, 100, 85, 100, 80, 85
    types TYPE_FIGHTING, TYPE_PSYCHIC
    catchrate 90
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

mondata SPECIES_MEGA_MANECTRIC, "-----"
    basestats 70, 75, 80, 135, 135, 80
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 45
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

mondata SPECIES_MEGA_SHARPEDO, "-----"
    basestats 70, 140, 70, 105, 110, 65
    types TYPE_WATER, TYPE_DARK
    catchrate 60
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

mondata SPECIES_MEGA_CAMERUPT, "-----"
    basestats 70, 120, 100, 20, 145, 105
    types TYPE_FIRE, TYPE_GROUND
    catchrate 150
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

mondata SPECIES_MEGA_ALTARIA, "-----"
    basestats 75, 110, 110, 80, 110, 105
    types TYPE_DRAGON, FAIRY_TYPE_IMPLEMENTED ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 45
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

mondata SPECIES_MEGA_BANETTE, "-----"
    basestats 64, 165, 75, 75, 93, 83
    types TYPE_GHOST, TYPE_GHOST
    catchrate 45
    baseexp 179
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_SPELL_TAG
    genderratio 127
    eggcycles 25
    basefriendship 35
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_FRISK, ABILITY_FRISK //ABILITY_PRANKSTER, ABILITY_PRANKSTER
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_ABSOL, "-----"
    basestats 65, 150, 60, 115, 115, 60
    types TYPE_DARK, TYPE_DARK
    catchrate 30
    baseexp 174
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 35
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PRESSURE, ABILITY_PRESSURE //ABILITY_MAGIC_BOUNCE, ABILITY_MAGIC_BOUNCE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_GLALIE, "-----"
    basestats 80, 120, 80, 100, 120, 80
    types TYPE_ICE, TYPE_ICE
    catchrate 75
    baseexp 187
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NEVERMELTICE
    genderratio 127
    eggcycles 20
    basefriendship 50
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_MINERAL
    abilities ABILITY_INNER_FOCUS, ABILITY_ICE_BODY //ABILITY_REFRIGERATE, ABILITY_REFRIGERATE
    runchance 0
    colorflip 0, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3

mondata SPECIES_MEGA_SALAMENCE, "-----"
    basestats 95, 145, 130, 120, 120, 90
    types TYPE_DRAGON, TYPE_FLYING
    catchrate 45
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

mondata SPECIES_MEGA_METAGROSS, "-----"
    basestats 80, 145, 150, 110, 105, 110
    types TYPE_STEEL, TYPE_PSYCHIC
    catchrate 3
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

mondata SPECIES_MEGA_LATIAS, "-----"
    basestats 80, 100, 120, 110, 140, 150
    types TYPE_DRAGON, TYPE_PSYCHIC
    catchrate 3
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

mondata SPECIES_MEGA_LATIOS, "-----"
    basestats 80, 130, 100, 110, 160, 120
    types TYPE_DRAGON, TYPE_PSYCHIC
    catchrate 3
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

mondata SPECIES_MEGA_RAYQUAZA, "-----"
    basestats 105, 180, 100, 115, 180, 100
    types TYPE_DRAGON, TYPE_FLYING
    catchrate 3
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

mondata SPECIES_MEGA_LOPUNNY, "-----"
    basestats 65, 136, 94, 135, 54, 96
    types TYPE_NORMAL, TYPE_FIGHTING
    catchrate 60
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

mondata SPECIES_MEGA_GARCHOMP, "-----"
    basestats 108, 170, 115, 92, 120, 95
    types TYPE_DRAGON, TYPE_GROUND
    catchrate 45
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

mondata SPECIES_MEGA_LUCARIO, "-----"
    basestats 70, 145, 88, 112, 140, 70
    types TYPE_FIGHTING, TYPE_STEEL
    catchrate 45
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

mondata SPECIES_MEGA_ABOMASNOW, "-----"
    basestats 90, 132, 105, 30, 132, 105
    types TYPE_GRASS, TYPE_ICE
    catchrate 60
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

mondata SPECIES_MEGA_GALLADE, "-----"
    basestats 68, 165, 95, 110, 65, 115
    types TYPE_PSYCHIC, TYPE_FIGHTING
    catchrate 45
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

mondata SPECIES_MEGA_AUDINO, "-----"
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

mondata SPECIES_MEGA_DIANCIE, "-----"
    basestats 50, 160, 110, 110, 160, 110
    types TYPE_ROCK, FAIRY_TYPE_IMPLEMENTED ? TYPE_FAIRY : TYPE_PSYCHIC
    catchrate 3
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

mondata SPECIES_GROUDON_PRIMAL, "-----"
    basestats 100, 180, 160, 90, 150, 90
    types TYPE_GROUND, TYPE_FIRE
    catchrate 5
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

mondata SPECIES_KYOGRE_PRIMAL, "-----"
    basestats 100, 150, 90, 90, 180, 160
    types TYPE_WATER, TYPE_WATER
    catchrate 5
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
    items ITEM_NONE, ITEM_STICK
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


mondata SPECIES_BASCULIN_BLUE_STRIPED, "-----"
    basestats 70, 92, 65, 98, 80, 55
    types TYPE_WATER, TYPE_WATER
    catchrate 25
    baseexp 161
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_DEEPSEASCALE
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_ROCK_HEAD,  ABILITY_ADAPTABILITY
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_BASCULIN_WHITE_STRIPED, "-----"
    basestats 70, 92, 65, 98, 80, 55
    types TYPE_WATER, TYPE_WATER
    catchrate 25
    baseexp 161
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_DEEPSEASCALE
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
    abilities ABILITY_CONTRARY, ABILITY_CONTRARY
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
    catchrate 135
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
    catchrate 135
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
