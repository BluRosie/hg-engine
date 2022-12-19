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


mondata SPECIES_NONE
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


mondata SPECIES_BULBASAUR
    basestats 45, 49, 49, 45, 65, 65
    types TYPE_GRASS, TYPE_POISON
    catchrate 45
    baseexp 64
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BULBASAUR_TM_DATA_0, SPECIES_BULBASAUR_TM_DATA_1, SPECIES_BULBASAUR_TM_DATA_2, SPECIES_BULBASAUR_TM_DATA_3


mondata SPECIES_IVYSAUR
    basestats 60, 62, 63, 60, 80, 80
    types TYPE_GRASS, TYPE_POISON
    catchrate 45
    baseexp 141
    evyields 0, 0, 0, 0, 1, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_IVYSAUR_TM_DATA_0, SPECIES_IVYSAUR_TM_DATA_1, SPECIES_IVYSAUR_TM_DATA_2, SPECIES_IVYSAUR_TM_DATA_3


mondata SPECIES_VENUSAUR
    basestats 80, 82, 83, 80, 100, 100
    types TYPE_GRASS, TYPE_POISON
    catchrate 45
    baseexp 208
    evyields 0, 0, 0, 0, 2, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_VENUSAUR_TM_DATA_0, SPECIES_VENUSAUR_TM_DATA_1, SPECIES_VENUSAUR_TM_DATA_2, SPECIES_VENUSAUR_TM_DATA_3


mondata SPECIES_CHARMANDER
    basestats 39, 52, 43, 65, 60, 50
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 65
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CHARMANDER_TM_DATA_0, SPECIES_CHARMANDER_TM_DATA_1, SPECIES_CHARMANDER_TM_DATA_2, SPECIES_CHARMANDER_TM_DATA_3


mondata SPECIES_CHARMELEON
    basestats 58, 64, 58, 80, 80, 65
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 142
    evyields 0, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CHARMELEON_TM_DATA_0, SPECIES_CHARMELEON_TM_DATA_1, SPECIES_CHARMELEON_TM_DATA_2, SPECIES_CHARMELEON_TM_DATA_3


mondata SPECIES_CHARIZARD
    basestats 78, 84, 78, 100, 109, 85
    types TYPE_FIRE, TYPE_FLYING
    catchrate 45
    baseexp 209
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CHARIZARD_TM_DATA_0, SPECIES_CHARIZARD_TM_DATA_1, SPECIES_CHARIZARD_TM_DATA_2, SPECIES_CHARIZARD_TM_DATA_3


mondata SPECIES_SQUIRTLE
    basestats 44, 48, 65, 43, 50, 64
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 66
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SQUIRTLE_TM_DATA_0, SPECIES_SQUIRTLE_TM_DATA_1, SPECIES_SQUIRTLE_TM_DATA_2, SPECIES_SQUIRTLE_TM_DATA_3


mondata SPECIES_WARTORTLE
    basestats 59, 63, 80, 58, 65, 80
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 143
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_WARTORTLE_TM_DATA_0, SPECIES_WARTORTLE_TM_DATA_1, SPECIES_WARTORTLE_TM_DATA_2, SPECIES_WARTORTLE_TM_DATA_3


mondata SPECIES_BLASTOISE
    basestats 79, 83, 100, 78, 85, 105
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 210
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_BLASTOISE_TM_DATA_0, SPECIES_BLASTOISE_TM_DATA_1, SPECIES_BLASTOISE_TM_DATA_2, SPECIES_BLASTOISE_TM_DATA_3


mondata SPECIES_CATERPIE
    basestats 45, 30, 35, 45, 20, 20
    types TYPE_BUG, TYPE_BUG
    catchrate 255
    baseexp 53
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CATERPIE_TM_DATA_0, SPECIES_CATERPIE_TM_DATA_1, SPECIES_CATERPIE_TM_DATA_2, SPECIES_CATERPIE_TM_DATA_3


mondata SPECIES_METAPOD
    basestats 50, 20, 55, 30, 25, 25
    types TYPE_BUG, TYPE_BUG
    catchrate 120
    baseexp 72
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHED_SKIN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_METAPOD_TM_DATA_0, SPECIES_METAPOD_TM_DATA_1, SPECIES_METAPOD_TM_DATA_2, SPECIES_METAPOD_TM_DATA_3


mondata SPECIES_BUTTERFREE
    basestats 60, 45, 50, 70, 90, 80
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 160
    evyields 0, 0, 0, 0, 2, 1
    items ITEM_NONE, ITEM_SILVERPOWDER
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_COMPOUND_EYES, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_BUTTERFREE_TM_DATA_0, SPECIES_BUTTERFREE_TM_DATA_1, SPECIES_BUTTERFREE_TM_DATA_2, SPECIES_BUTTERFREE_TM_DATA_3


mondata SPECIES_WEEDLE
    basestats 40, 35, 30, 50, 20, 20
    types TYPE_BUG, TYPE_POISON
    catchrate 255
    baseexp 52
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


mondata SPECIES_KAKUNA
    basestats 45, 25, 50, 35, 25, 25
    types TYPE_BUG, TYPE_POISON
    catchrate 120
    baseexp 71
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


mondata SPECIES_BEEDRILL
    basestats 65, 90, 40, 75, 45, 80
    types TYPE_BUG, TYPE_POISON
    catchrate 45
    baseexp 159
    evyields 0, 2, 0, 0, 0, 1
    items ITEM_NONE, ITEM_POISON_BARB
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_BEEDRILL_TM_DATA_0, SPECIES_BEEDRILL_TM_DATA_1, SPECIES_BEEDRILL_TM_DATA_2, SPECIES_BEEDRILL_TM_DATA_3


mondata SPECIES_PIDGEY
    basestats 40, 45, 40, 56, 35, 35
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 255
    baseexp 55
    evyields 0, 0, 0, 1, 0, 0
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


mondata SPECIES_PIDGEOTTO
    basestats 63, 60, 55, 71, 50, 50
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 120
    baseexp 113
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


mondata SPECIES_PIDGEOT
    basestats 83, 80, 75, 101, 70, 70
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 45
    baseexp 172
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


mondata SPECIES_RATTATA
    basestats 30, 56, 35, 72, 25, 35
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 57
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_CHILAN_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_GUTS
    runchance 120
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_RATTATA_TM_DATA_0, SPECIES_RATTATA_TM_DATA_1, SPECIES_RATTATA_TM_DATA_2, SPECIES_RATTATA_TM_DATA_3


mondata SPECIES_RATICATE
    basestats 55, 81, 60, 97, 50, 70
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 127
    baseexp 116
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_CHILAN_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_GUTS
    runchance 90
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_RATICATE_TM_DATA_0, SPECIES_RATICATE_TM_DATA_1, SPECIES_RATICATE_TM_DATA_2, SPECIES_RATICATE_TM_DATA_3


mondata SPECIES_SPEAROW
    basestats 40, 60, 30, 70, 31, 31
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 255
    baseexp 58
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SPEAROW_TM_DATA_0, SPECIES_SPEAROW_TM_DATA_1, SPECIES_SPEAROW_TM_DATA_2, SPECIES_SPEAROW_TM_DATA_3


mondata SPECIES_FEAROW
    basestats 65, 90, 65, 100, 61, 61
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 90
    baseexp 162
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_SHARP_BEAK
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_NONE
    runchance 60
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_FEAROW_TM_DATA_0, SPECIES_FEAROW_TM_DATA_1, SPECIES_FEAROW_TM_DATA_2, SPECIES_FEAROW_TM_DATA_3


mondata SPECIES_EKANS
    basestats 35, 60, 44, 55, 40, 54
    types TYPE_POISON, TYPE_POISON
    catchrate 255
    baseexp 62
    evyields 0, 1, 0, 0, 0, 0
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


mondata SPECIES_ARBOK
    basestats 60, 95, 69, 80, 65, 79
    types TYPE_POISON, TYPE_POISON
    catchrate 90
    baseexp 147
    evyields 0, 2, 0, 0, 0, 0
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


mondata SPECIES_PIKACHU
    basestats 35, 55, 40, 90, 50, 50
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 82
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_ORAN_BERRY, ITEM_LIGHT_BALL
    genderratio 127
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_STATIC, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_PIKACHU_TM_DATA_0, SPECIES_PIKACHU_TM_DATA_1, SPECIES_PIKACHU_TM_DATA_2, SPECIES_PIKACHU_TM_DATA_3


mondata SPECIES_RAICHU
    basestats 60, 90, 55, 110, 90, 80
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 75
    baseexp 122
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_ORAN_BERRY
    genderratio 127
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_STATIC, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_RAICHU_TM_DATA_0, SPECIES_RAICHU_TM_DATA_1, SPECIES_RAICHU_TM_DATA_2, SPECIES_RAICHU_TM_DATA_3


mondata SPECIES_SANDSHREW
    basestats 50, 75, 85, 40, 20, 30
    types TYPE_GROUND, TYPE_GROUND
    catchrate 255
    baseexp 93
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_QUICK_CLAW
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAND_VEIL, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_SANDSHREW_TM_DATA_0, SPECIES_SANDSHREW_TM_DATA_1, SPECIES_SANDSHREW_TM_DATA_2, SPECIES_SANDSHREW_TM_DATA_3


mondata SPECIES_SANDSLASH
    basestats 75, 100, 110, 65, 45, 55
    types TYPE_GROUND, TYPE_GROUND
    catchrate 90
    baseexp 163
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_QUICK_CLAW
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAND_VEIL, ABILITY_NONE
    runchance 60
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_SANDSLASH_TM_DATA_0, SPECIES_SANDSLASH_TM_DATA_1, SPECIES_SANDSLASH_TM_DATA_2, SPECIES_SANDSLASH_TM_DATA_3


mondata SPECIES_NIDORAN_F
    basestats 55, 47, 52, 41, 40, 40
    types TYPE_POISON, TYPE_POISON
    catchrate 235
    baseexp 59
    evyields 1, 0, 0, 0, 0, 0
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


mondata SPECIES_NIDORINA
    basestats 70, 62, 67, 56, 55, 55
    types TYPE_POISON, TYPE_POISON
    catchrate 120
    baseexp 117
    evyields 2, 0, 0, 0, 0, 0
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


mondata SPECIES_NIDOQUEEN
    basestats 90, 92, 87, 76, 75, 85
    types TYPE_POISON, TYPE_GROUND
    catchrate 45
    baseexp 194
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_POISON_POINT, ABILITY_RIVALRY
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_NIDOQUEEN_TM_DATA_0, SPECIES_NIDOQUEEN_TM_DATA_1, SPECIES_NIDOQUEEN_TM_DATA_2, SPECIES_NIDOQUEEN_TM_DATA_3


mondata SPECIES_NIDORAN_M
    basestats 46, 57, 40, 50, 40, 40
    types TYPE_POISON, TYPE_POISON
    catchrate 235
    baseexp 60
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_POISON_POINT, ABILITY_RIVALRY
    runchance 90
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NIDORAN_M_TM_DATA_0, SPECIES_NIDORAN_M_TM_DATA_1, SPECIES_NIDORAN_M_TM_DATA_2, SPECIES_NIDORAN_M_TM_DATA_3


mondata SPECIES_NIDORINO
    basestats 61, 72, 57, 65, 55, 55
    types TYPE_POISON, TYPE_POISON
    catchrate 120
    baseexp 118
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_POISON_POINT, ABILITY_RIVALRY
    runchance 60
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NIDORINO_TM_DATA_0, SPECIES_NIDORINO_TM_DATA_1, SPECIES_NIDORINO_TM_DATA_2, SPECIES_NIDORINO_TM_DATA_3


mondata SPECIES_NIDOKING
    basestats 81, 102, 77, 85, 85, 75
    types TYPE_POISON, TYPE_GROUND
    catchrate 45
    baseexp 195
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_POISON_POINT, ABILITY_RIVALRY
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NIDOKING_TM_DATA_0, SPECIES_NIDOKING_TM_DATA_1, SPECIES_NIDOKING_TM_DATA_2, SPECIES_NIDOKING_TM_DATA_3


mondata SPECIES_CLEFAIRY
    basestats 70, 45, 48, 35, 60, 65
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 150
    baseexp 68
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_LEPPA_BERRY, ITEM_MOON_STONE
    genderratio 191
    eggcycles 10
    basefriendship 140
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_CUTE_CHARM, ABILITY_MAGIC_GUARD
    runchance 120
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_CLEFAIRY_TM_DATA_0, SPECIES_CLEFAIRY_TM_DATA_1, SPECIES_CLEFAIRY_TM_DATA_2, SPECIES_CLEFAIRY_TM_DATA_3


mondata SPECIES_CLEFABLE
    basestats 95, 70, 73, 60, 95, 90
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 25
    baseexp 129
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_LEPPA_BERRY, ITEM_MOON_STONE
    genderratio 191
    eggcycles 10
    basefriendship 140
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_CUTE_CHARM, ABILITY_MAGIC_GUARD
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_CLEFABLE_TM_DATA_0, SPECIES_CLEFABLE_TM_DATA_1, SPECIES_CLEFABLE_TM_DATA_2, SPECIES_CLEFABLE_TM_DATA_3


mondata SPECIES_VULPIX
    basestats 38, 41, 40, 65, 50, 65
    types TYPE_FIRE, TYPE_FIRE
    catchrate 190
    baseexp 63
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_RAWST_BERRY, ITEM_RAWST_BERRY
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FLASH_FIRE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_VULPIX_TM_DATA_0, SPECIES_VULPIX_TM_DATA_1, SPECIES_VULPIX_TM_DATA_2, SPECIES_VULPIX_TM_DATA_3


mondata SPECIES_NINETALES
    basestats 73, 76, 75, 100, 81, 100
    types TYPE_FIRE, TYPE_FIRE
    catchrate 75
    baseexp 178
    evyields 0, 0, 0, 1, 0, 1
    items ITEM_RAWST_BERRY, ITEM_RAWST_BERRY
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FLASH_FIRE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NINETALES_TM_DATA_0, SPECIES_NINETALES_TM_DATA_1, SPECIES_NINETALES_TM_DATA_2, SPECIES_NINETALES_TM_DATA_3


mondata SPECIES_JIGGLYPUFF
    basestats 115, 45, 20, 20, 45, 25
    types TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 170
    baseexp 76
    evyields 2, 0, 0, 0, 0, 0
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


mondata SPECIES_WIGGLYTUFF
    basestats 140, 70, 45, 45, 85, 50
    types TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 50
    baseexp 109
    evyields 3, 0, 0, 0, 0, 0
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


mondata SPECIES_ZUBAT
    basestats 40, 45, 35, 55, 30, 40
    types TYPE_POISON, TYPE_FLYING
    catchrate 255
    baseexp 54
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_INNER_FOCUS, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_ZUBAT_TM_DATA_0, SPECIES_ZUBAT_TM_DATA_1, SPECIES_ZUBAT_TM_DATA_2, SPECIES_ZUBAT_TM_DATA_3


mondata SPECIES_GOLBAT
    basestats 75, 80, 70, 90, 65, 75
    types TYPE_POISON, TYPE_FLYING
    catchrate 90
    baseexp 171
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_INNER_FOCUS, ABILITY_NONE
    runchance 60
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GOLBAT_TM_DATA_0, SPECIES_GOLBAT_TM_DATA_1, SPECIES_GOLBAT_TM_DATA_2, SPECIES_GOLBAT_TM_DATA_3


mondata SPECIES_ODDISH
    basestats 45, 50, 55, 30, 75, 65
    types TYPE_GRASS, TYPE_POISON
    catchrate 255
    baseexp 78
    evyields 0, 0, 0, 0, 1, 0
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


mondata SPECIES_GLOOM
    basestats 60, 65, 70, 40, 85, 75
    types TYPE_GRASS, TYPE_POISON
    catchrate 120
    baseexp 132
    evyields 0, 0, 0, 0, 2, 0
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


mondata SPECIES_VILEPLUME
    basestats 75, 80, 85, 50, 110, 90
    types TYPE_GRASS, TYPE_POISON
    catchrate 45
    baseexp 184
    evyields 0, 0, 0, 0, 3, 0
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


mondata SPECIES_PARAS
    basestats 35, 70, 55, 25, 45, 55
    types TYPE_BUG, TYPE_GRASS
    catchrate 190
    baseexp 70
    evyields 0, 1, 0, 0, 0, 0
//    items ITEM_TINYMUSHROOM, ITEM_BIG_MUSHROOM
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


mondata SPECIES_PARASECT
    basestats 60, 95, 80, 30, 60, 80
    types TYPE_BUG, TYPE_GRASS
    catchrate 75
    baseexp 128
    evyields 0, 2, 1, 0, 0, 0
//    items ITEM_TINYMUSHROOM, ITEM_BIG_MUSHROOM
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


mondata SPECIES_VENONAT
    basestats 60, 55, 50, 45, 40, 55
    types TYPE_BUG, TYPE_POISON
    catchrate 190
    baseexp 75
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


mondata SPECIES_VENOMOTH
    basestats 70, 65, 60, 90, 90, 75
    types TYPE_BUG, TYPE_POISON
    catchrate 75
    baseexp 138
    evyields 0, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_SHED_SHELL
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST, ABILITY_TINTED_LENS
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_VENOMOTH_TM_DATA_0, SPECIES_VENOMOTH_TM_DATA_1, SPECIES_VENOMOTH_TM_DATA_2, SPECIES_VENOMOTH_TM_DATA_3


mondata SPECIES_DIGLETT
    basestats 10, 55, 25, 95, 35, 45
    types TYPE_GROUND, TYPE_GROUND
    catchrate 255
    baseexp 81
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_SOFT_SAND
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAND_VEIL, ABILITY_ARENA_TRAP
    runchance 120
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DIGLETT_TM_DATA_0, SPECIES_DIGLETT_TM_DATA_1, SPECIES_DIGLETT_TM_DATA_2, SPECIES_DIGLETT_TM_DATA_3


mondata SPECIES_DUGTRIO
    basestats 35, 100, 50, 120, 50, 70
    types TYPE_GROUND, TYPE_GROUND
    catchrate 50
    baseexp 153
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_SOFT_SAND
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAND_VEIL, ABILITY_ARENA_TRAP
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DUGTRIO_TM_DATA_0, SPECIES_DUGTRIO_TM_DATA_1, SPECIES_DUGTRIO_TM_DATA_2, SPECIES_DUGTRIO_TM_DATA_3


mondata SPECIES_MEOWTH
    basestats 40, 45, 35, 90, 40, 40
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 69
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_QUICK_CLAW
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PICKUP, ABILITY_TECHNICIAN
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_MEOWTH_TM_DATA_0, SPECIES_MEOWTH_TM_DATA_1, SPECIES_MEOWTH_TM_DATA_2, SPECIES_MEOWTH_TM_DATA_3


mondata SPECIES_PERSIAN
    basestats 65, 70, 60, 115, 65, 65
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 90
    baseexp 148
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_QUICK_CLAW
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_LIMBER, ABILITY_TECHNICIAN
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_PERSIAN_TM_DATA_0, SPECIES_PERSIAN_TM_DATA_1, SPECIES_PERSIAN_TM_DATA_2, SPECIES_PERSIAN_TM_DATA_3


mondata SPECIES_PSYDUCK
    basestats 50, 52, 48, 55, 65, 50
    types TYPE_WATER, TYPE_WATER
    catchrate 190
    baseexp 80
    evyields 0, 0, 0, 0, 1, 0
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


mondata SPECIES_GOLDUCK
    basestats 80, 82, 78, 85, 95, 80
    types TYPE_WATER, TYPE_WATER
    catchrate 75
    baseexp 174
    evyields 0, 0, 0, 0, 2, 0
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


mondata SPECIES_MANKEY
    basestats 40, 80, 35, 70, 35, 45
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 190
    baseexp 74
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_PAYAPA_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_VITAL_SPIRIT, ABILITY_ANGER_POINT
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_MANKEY_TM_DATA_0, SPECIES_MANKEY_TM_DATA_1, SPECIES_MANKEY_TM_DATA_2, SPECIES_MANKEY_TM_DATA_3


mondata SPECIES_PRIMEAPE
    basestats 65, 105, 60, 95, 60, 70
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 75
    baseexp 149
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_PAYAPA_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_VITAL_SPIRIT, ABILITY_ANGER_POINT
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_PRIMEAPE_TM_DATA_0, SPECIES_PRIMEAPE_TM_DATA_1, SPECIES_PRIMEAPE_TM_DATA_2, SPECIES_PRIMEAPE_TM_DATA_3


mondata SPECIES_GROWLITHE
    basestats 55, 70, 45, 60, 70, 50
    types TYPE_FIRE, TYPE_FIRE
    catchrate 190
    baseexp 91
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_RAWST_BERRY, ITEM_RAWST_BERRY
    genderratio 63
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_FLASH_FIRE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GROWLITHE_TM_DATA_0, SPECIES_GROWLITHE_TM_DATA_1, SPECIES_GROWLITHE_TM_DATA_2, SPECIES_GROWLITHE_TM_DATA_3


mondata SPECIES_ARCANINE
    basestats 90, 110, 80, 95, 100, 80
    types TYPE_FIRE, TYPE_FIRE
    catchrate 75
    baseexp 213
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_RAWST_BERRY, ITEM_RAWST_BERRY
    genderratio 63
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_FLASH_FIRE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_ARCANINE_TM_DATA_0, SPECIES_ARCANINE_TM_DATA_1, SPECIES_ARCANINE_TM_DATA_2, SPECIES_ARCANINE_TM_DATA_3


mondata SPECIES_POLIWAG
    basestats 40, 50, 40, 90, 40, 40
    types TYPE_WATER, TYPE_WATER
    catchrate 255
    baseexp 77
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_WATER_ABSORB, ABILITY_DAMP
    runchance 90
    colorflip BODY_COLOR_BLUE, 1
    tmdata SPECIES_POLIWAG_TM_DATA_0, SPECIES_POLIWAG_TM_DATA_1, SPECIES_POLIWAG_TM_DATA_2, SPECIES_POLIWAG_TM_DATA_3


mondata SPECIES_POLIWHIRL
    basestats 65, 65, 65, 90, 50, 50
    types TYPE_WATER, TYPE_WATER
    catchrate 120
    baseexp 131
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_KINGS_ROCK
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_WATER_ABSORB, ABILITY_DAMP
    runchance 60
    colorflip BODY_COLOR_BLUE, 1
    tmdata SPECIES_POLIWHIRL_TM_DATA_0, SPECIES_POLIWHIRL_TM_DATA_1, SPECIES_POLIWHIRL_TM_DATA_2, SPECIES_POLIWHIRL_TM_DATA_3


mondata SPECIES_POLIWRATH
    basestats 90, 95, 95, 70, 70, 90
    types TYPE_WATER, TYPE_FIGHTING
    catchrate 45
    baseexp 185
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_KINGS_ROCK
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_WATER_ABSORB, ABILITY_DAMP
    runchance 0
    colorflip BODY_COLOR_BLUE, 1
    tmdata SPECIES_POLIWRATH_TM_DATA_0, SPECIES_POLIWRATH_TM_DATA_1, SPECIES_POLIWRATH_TM_DATA_2, SPECIES_POLIWRATH_TM_DATA_3


mondata SPECIES_ABRA
    basestats 25, 20, 15, 90, 105, 55
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 200
    baseexp 75
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_TWISTEDSPOON
    genderratio 63
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_SYNCHRONIZE, ABILITY_INNER_FOCUS
    runchance 120
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_ABRA_TM_DATA_0, SPECIES_ABRA_TM_DATA_1, SPECIES_ABRA_TM_DATA_2, SPECIES_ABRA_TM_DATA_3


mondata SPECIES_KADABRA
    basestats 40, 35, 30, 105, 120, 70
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 100
    baseexp 145
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_TWISTEDSPOON
    genderratio 63
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_SYNCHRONIZE, ABILITY_INNER_FOCUS
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_KADABRA_TM_DATA_0, SPECIES_KADABRA_TM_DATA_1, SPECIES_KADABRA_TM_DATA_2, SPECIES_KADABRA_TM_DATA_3


mondata SPECIES_ALAKAZAM
    basestats 55, 50, 45, 120, 135, 95
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 50
    baseexp 186
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_TWISTEDSPOON
    genderratio 63
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_SYNCHRONIZE, ABILITY_INNER_FOCUS
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_ALAKAZAM_TM_DATA_0, SPECIES_ALAKAZAM_TM_DATA_1, SPECIES_ALAKAZAM_TM_DATA_2, SPECIES_ALAKAZAM_TM_DATA_3


mondata SPECIES_MACHOP
    basestats 70, 80, 50, 35, 35, 35
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 180
    baseexp 75
    evyields 0, 1, 0, 0, 0, 0
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


mondata SPECIES_MACHOKE
    basestats 80, 100, 70, 45, 50, 60
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 90
    baseexp 146
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 63
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_GUTS, ABILITY_NO_GUARD
    runchance 60
    colorflip BODY_COLOR_GRAY, 1
    tmdata SPECIES_MACHOKE_TM_DATA_0, SPECIES_MACHOKE_TM_DATA_1, SPECIES_MACHOKE_TM_DATA_2, SPECIES_MACHOKE_TM_DATA_3


mondata SPECIES_MACHAMP
    basestats 90, 130, 80, 55, 65, 85
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 193
    evyields 0, 3, 0, 0, 0, 0
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


mondata SPECIES_BELLSPROUT
    basestats 50, 75, 35, 40, 70, 30
    types TYPE_GRASS, TYPE_POISON
    catchrate 255
    baseexp 84
    evyields 0, 1, 0, 0, 0, 0
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


mondata SPECIES_WEEPINBELL
    basestats 65, 90, 50, 55, 85, 45
    types TYPE_GRASS, TYPE_POISON
    catchrate 120
    baseexp 151
    evyields 0, 2, 0, 0, 0, 0
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


mondata SPECIES_VICTREEBEL
    basestats 80, 105, 65, 70, 100, 70
    types TYPE_GRASS, TYPE_POISON
    catchrate 45
    baseexp 191
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


mondata SPECIES_TENTACOOL
    basestats 40, 40, 35, 70, 50, 100
    types TYPE_WATER, TYPE_POISON
    catchrate 190
    baseexp 105
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_POISON_BARB
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_CLEAR_BODY, ABILITY_LIQUID_OOZE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_TENTACOOL_TM_DATA_0, SPECIES_TENTACOOL_TM_DATA_1, SPECIES_TENTACOOL_TM_DATA_2, SPECIES_TENTACOOL_TM_DATA_3


mondata SPECIES_TENTACRUEL
    basestats 80, 70, 65, 100, 80, 120
    types TYPE_WATER, TYPE_POISON
    catchrate 60
    baseexp 205
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_POISON_BARB
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_CLEAR_BODY, ABILITY_LIQUID_OOZE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_TENTACRUEL_TM_DATA_0, SPECIES_TENTACRUEL_TM_DATA_1, SPECIES_TENTACRUEL_TM_DATA_2, SPECIES_TENTACRUEL_TM_DATA_3


mondata SPECIES_GEODUDE
    basestats 40, 80, 100, 20, 30, 30
    types TYPE_ROCK, TYPE_GROUND
    catchrate 255
    baseexp 73
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_EVERSTONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_ROCK_HEAD, ABILITY_STURDY
    runchance 90
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GEODUDE_TM_DATA_0, SPECIES_GEODUDE_TM_DATA_1, SPECIES_GEODUDE_TM_DATA_2, SPECIES_GEODUDE_TM_DATA_3


mondata SPECIES_GRAVELER
    basestats 55, 95, 115, 35, 45, 45
    types TYPE_ROCK, TYPE_GROUND
    catchrate 120
    baseexp 134
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_EVERSTONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_ROCK_HEAD, ABILITY_STURDY
    runchance 60
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GRAVELER_TM_DATA_0, SPECIES_GRAVELER_TM_DATA_1, SPECIES_GRAVELER_TM_DATA_2, SPECIES_GRAVELER_TM_DATA_3


mondata SPECIES_GOLEM
    basestats 80, 120, 130, 45, 55, 65
    types TYPE_ROCK, TYPE_GROUND
    catchrate 45
    baseexp 177
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_EVERSTONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_ROCK_HEAD, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GOLEM_TM_DATA_0, SPECIES_GOLEM_TM_DATA_1, SPECIES_GOLEM_TM_DATA_2, SPECIES_GOLEM_TM_DATA_3


mondata SPECIES_PONYTA
    basestats 50, 85, 55, 90, 65, 65
    types TYPE_FIRE, TYPE_FIRE
    catchrate 190
    baseexp 152
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_SHUCA_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_FLASH_FIRE
    runchance 120
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_PONYTA_TM_DATA_0, SPECIES_PONYTA_TM_DATA_1, SPECIES_PONYTA_TM_DATA_2, SPECIES_PONYTA_TM_DATA_3


mondata SPECIES_RAPIDASH
    basestats 65, 100, 70, 105, 80, 80
    types TYPE_FIRE, TYPE_FIRE
    catchrate 60
    baseexp 192
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_SHUCA_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_FLASH_FIRE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_RAPIDASH_TM_DATA_0, SPECIES_RAPIDASH_TM_DATA_1, SPECIES_RAPIDASH_TM_DATA_2, SPECIES_RAPIDASH_TM_DATA_3


mondata SPECIES_SLOWPOKE
    basestats 90, 65, 65, 15, 40, 40
    types TYPE_WATER, TYPE_PSYCHIC
    catchrate 190
    baseexp 99
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_LAGGING_TAIL
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_OBLIVIOUS, ABILITY_OWN_TEMPO
    runchance 60
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_SLOWPOKE_TM_DATA_0, SPECIES_SLOWPOKE_TM_DATA_1, SPECIES_SLOWPOKE_TM_DATA_2, SPECIES_SLOWPOKE_TM_DATA_3


mondata SPECIES_SLOWBRO
    basestats 95, 75, 110, 30, 100, 80
    types TYPE_WATER, TYPE_PSYCHIC
    catchrate 75
    baseexp 164
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_KINGS_ROCK
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_OBLIVIOUS, ABILITY_OWN_TEMPO
    runchance 60
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_SLOWBRO_TM_DATA_0, SPECIES_SLOWBRO_TM_DATA_1, SPECIES_SLOWBRO_TM_DATA_2, SPECIES_SLOWBRO_TM_DATA_3


mondata SPECIES_MAGNEMITE
    basestats 25, 35, 70, 45, 95, 55
    types TYPE_ELECTRIC, TYPE_STEEL
    catchrate 190
    baseexp 89
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_METAL_COAT
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_MAGNET_PULL, ABILITY_STURDY
    runchance 90
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MAGNEMITE_TM_DATA_0, SPECIES_MAGNEMITE_TM_DATA_1, SPECIES_MAGNEMITE_TM_DATA_2, SPECIES_MAGNEMITE_TM_DATA_3


mondata SPECIES_MAGNETON
    basestats 50, 60, 95, 70, 120, 70
    types TYPE_ELECTRIC, TYPE_STEEL
    catchrate 60
    baseexp 161
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_METAL_COAT
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_MAGNET_PULL, ABILITY_STURDY
    runchance 60
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MAGNETON_TM_DATA_0, SPECIES_MAGNETON_TM_DATA_1, SPECIES_MAGNETON_TM_DATA_2, SPECIES_MAGNETON_TM_DATA_3


mondata SPECIES_FARFETCHD
    basestats 52, 90, 55, 60, 58, 62
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 45
    baseexp 94
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_STICK
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FIELD
    abilities ABILITY_KEEN_EYE, ABILITY_INNER_FOCUS
    runchance 120
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_FARFETCHD_TM_DATA_0, SPECIES_FARFETCHD_TM_DATA_1, SPECIES_FARFETCHD_TM_DATA_2, SPECIES_FARFETCHD_TM_DATA_3


mondata SPECIES_DODUO
    basestats 35, 85, 45, 75, 35, 35
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 190
    baseexp 96
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_SHARP_BEAK
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_RUN_AWAY, ABILITY_EARLY_BIRD
    runchance 90
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DODUO_TM_DATA_0, SPECIES_DODUO_TM_DATA_1, SPECIES_DODUO_TM_DATA_2, SPECIES_DODUO_TM_DATA_3


mondata SPECIES_DODRIO
    basestats 60, 110, 70, 110, 60, 60
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 45
    baseexp 158
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_SHARP_BEAK
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_RUN_AWAY, ABILITY_EARLY_BIRD
    runchance 60
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DODRIO_TM_DATA_0, SPECIES_DODRIO_TM_DATA_1, SPECIES_DODRIO_TM_DATA_2, SPECIES_DODRIO_TM_DATA_3


mondata SPECIES_SEEL
    basestats 65, 45, 55, 45, 45, 70
    types TYPE_WATER, TYPE_WATER
    catchrate 190
    baseexp 100
    evyields 0, 0, 0, 0, 0, 1
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


mondata SPECIES_DEWGONG
    basestats 90, 70, 80, 70, 70, 95
    types TYPE_WATER, TYPE_ICE
    catchrate 75
    baseexp 176
    evyields 0, 0, 0, 0, 0, 2
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


mondata SPECIES_GRIMER
    basestats 80, 80, 50, 25, 40, 50
    types TYPE_POISON, TYPE_POISON
    catchrate 190
    baseexp 90
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NUGGET
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_STENCH, ABILITY_STICKY_HOLD
    runchance 60
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GRIMER_TM_DATA_0, SPECIES_GRIMER_TM_DATA_1, SPECIES_GRIMER_TM_DATA_2, SPECIES_GRIMER_TM_DATA_3


mondata SPECIES_MUK
    basestats 105, 105, 75, 50, 65, 100
    types TYPE_POISON, TYPE_POISON
    catchrate 75
    baseexp 157
    evyields 1, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NUGGET
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_STENCH, ABILITY_STICKY_HOLD
    runchance 60
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_MUK_TM_DATA_0, SPECIES_MUK_TM_DATA_1, SPECIES_MUK_TM_DATA_2, SPECIES_MUK_TM_DATA_3


mondata SPECIES_SHELLDER
    basestats 30, 65, 100, 40, 45, 25
    types TYPE_WATER, TYPE_WATER
    catchrate 190
    baseexp 97
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_PEARL, ITEM_BIG_PEARL
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_SHELL_ARMOR, ABILITY_SKILL_LINK
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SHELLDER_TM_DATA_0, SPECIES_SHELLDER_TM_DATA_1, SPECIES_SHELLDER_TM_DATA_2, SPECIES_SHELLDER_TM_DATA_3


mondata SPECIES_CLOYSTER
    basestats 50, 95, 180, 70, 85, 45
    types TYPE_WATER, TYPE_ICE
    catchrate 60
    baseexp 203
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_PEARL, ITEM_BIG_PEARL
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_SHELL_ARMOR, ABILITY_SKILL_LINK
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_CLOYSTER_TM_DATA_0, SPECIES_CLOYSTER_TM_DATA_1, SPECIES_CLOYSTER_TM_DATA_2, SPECIES_CLOYSTER_TM_DATA_3


mondata SPECIES_GASTLY
    basestats 30, 35, 30, 80, 100, 35
    types TYPE_GHOST, TYPE_POISON
    catchrate 190
    baseexp 95
    evyields 0, 0, 0, 0, 1, 0
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


mondata SPECIES_HAUNTER
    basestats 45, 50, 45, 95, 115, 55
    types TYPE_GHOST, TYPE_POISON
    catchrate 90
    baseexp 126
    evyields 0, 0, 0, 0, 2, 0
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


mondata SPECIES_GENGAR
    basestats 60, 65, 60, 110, 130, 75
    types TYPE_GHOST, TYPE_POISON
    catchrate 45
    baseexp 190
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_CURSED_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GENGAR_TM_DATA_0, SPECIES_GENGAR_TM_DATA_1, SPECIES_GENGAR_TM_DATA_2, SPECIES_GENGAR_TM_DATA_3


mondata SPECIES_ONIX
    basestats 35, 45, 160, 70, 30, 45
    types TYPE_ROCK, TYPE_GROUND
    catchrate 45
    baseexp 108
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_ROCK_HEAD, ABILITY_STURDY
    runchance 60
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_ONIX_TM_DATA_0, SPECIES_ONIX_TM_DATA_1, SPECIES_ONIX_TM_DATA_2, SPECIES_ONIX_TM_DATA_3


mondata SPECIES_DROWZEE
    basestats 60, 48, 45, 42, 43, 90
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 190
    baseexp 102
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_INSOMNIA, ABILITY_FOREWARN
    runchance 90
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_DROWZEE_TM_DATA_0, SPECIES_DROWZEE_TM_DATA_1, SPECIES_DROWZEE_TM_DATA_2, SPECIES_DROWZEE_TM_DATA_3


mondata SPECIES_HYPNO
    basestats 85, 73, 70, 67, 73, 115
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 75
    baseexp 165
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_INSOMNIA, ABILITY_FOREWARN
    runchance 60
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_HYPNO_TM_DATA_0, SPECIES_HYPNO_TM_DATA_1, SPECIES_HYPNO_TM_DATA_2, SPECIES_HYPNO_TM_DATA_3


mondata SPECIES_KRABBY
    basestats 30, 105, 90, 50, 25, 25
    types TYPE_WATER, TYPE_WATER
    catchrate 225
    baseexp 115
    evyields 0, 1, 0, 0, 0, 0
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


mondata SPECIES_KINGLER
    basestats 55, 130, 115, 75, 50, 50
    types TYPE_WATER, TYPE_WATER
    catchrate 60
    baseexp 206
    evyields 0, 2, 0, 0, 0, 0
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


mondata SPECIES_VOLTORB
    basestats 40, 30, 50, 100, 55, 55
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 103
    evyields 0, 0, 0, 1, 0, 0
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


mondata SPECIES_ELECTRODE
    basestats 60, 50, 70, 150, 80, 80
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 60
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
    tmdata SPECIES_ELECTRODE_TM_DATA_0, SPECIES_ELECTRODE_TM_DATA_1, SPECIES_ELECTRODE_TM_DATA_2, SPECIES_ELECTRODE_TM_DATA_3


mondata SPECIES_EXEGGCUTE
    basestats 60, 40, 80, 40, 60, 45
    types TYPE_GRASS, TYPE_PSYCHIC
    catchrate 90
    baseexp 98
    evyields 0, 0, 1, 0, 0, 0
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


mondata SPECIES_EXEGGUTOR
    basestats 95, 95, 85, 55, 125, 75
    types TYPE_GRASS, TYPE_PSYCHIC
    catchrate 45
    baseexp 212
    evyields 0, 0, 0, 0, 2, 0
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


mondata SPECIES_CUBONE
    basestats 50, 50, 95, 35, 40, 50
    types TYPE_GROUND, TYPE_GROUND
    catchrate 190
    baseexp 87
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_THICK_CLUB
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_ROCK_HEAD, ABILITY_LIGHTNING_ROD
    runchance 90
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_CUBONE_TM_DATA_0, SPECIES_CUBONE_TM_DATA_1, SPECIES_CUBONE_TM_DATA_2, SPECIES_CUBONE_TM_DATA_3


mondata SPECIES_MAROWAK
    basestats 60, 80, 110, 45, 50, 80
    types TYPE_GROUND, TYPE_GROUND
    catchrate 75
    baseexp 124
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_THICK_CLUB
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_ROCK_HEAD, ABILITY_LIGHTNING_ROD
    runchance 60
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_MAROWAK_TM_DATA_0, SPECIES_MAROWAK_TM_DATA_1, SPECIES_MAROWAK_TM_DATA_2, SPECIES_MAROWAK_TM_DATA_3


mondata SPECIES_HITMONLEE
    basestats 50, 120, 53, 87, 35, 110
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 139
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_LIMBER, ABILITY_RECKLESS
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_HITMONLEE_TM_DATA_0, SPECIES_HITMONLEE_TM_DATA_1, SPECIES_HITMONLEE_TM_DATA_2, SPECIES_HITMONLEE_TM_DATA_3


mondata SPECIES_HITMONCHAN
    basestats 50, 105, 79, 76, 35, 110
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 140
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_KEEN_EYE, ABILITY_IRON_FIST
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_HITMONCHAN_TM_DATA_0, SPECIES_HITMONCHAN_TM_DATA_1, SPECIES_HITMONCHAN_TM_DATA_2, SPECIES_HITMONCHAN_TM_DATA_3


mondata SPECIES_LICKITUNG
    basestats 90, 55, 75, 30, 60, 75
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 127
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_LAGGING_TAIL
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_OWN_TEMPO, ABILITY_OBLIVIOUS
    runchance 60
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_LICKITUNG_TM_DATA_0, SPECIES_LICKITUNG_TM_DATA_1, SPECIES_LICKITUNG_TM_DATA_2, SPECIES_LICKITUNG_TM_DATA_3


mondata SPECIES_KOFFING
    basestats 40, 65, 95, 35, 60, 45
    types TYPE_POISON, TYPE_POISON
    catchrate 190
    baseexp 114
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_SMOKE_BALL
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_KOFFING_TM_DATA_0, SPECIES_KOFFING_TM_DATA_1, SPECIES_KOFFING_TM_DATA_2, SPECIES_KOFFING_TM_DATA_3


mondata SPECIES_WEEZING
    basestats 65, 90, 120, 60, 85, 70
    types TYPE_POISON, TYPE_POISON
    catchrate 60
    baseexp 173
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_SMOKE_BALL
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 60
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_WEEZING_TM_DATA_0, SPECIES_WEEZING_TM_DATA_1, SPECIES_WEEZING_TM_DATA_2, SPECIES_WEEZING_TM_DATA_3


mondata SPECIES_RHYHORN
    basestats 80, 85, 95, 25, 30, 30
    types TYPE_GROUND, TYPE_ROCK
    catchrate 120
    baseexp 135
    evyields 0, 0, 1, 0, 0, 0
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


mondata SPECIES_RHYDON
    basestats 105, 130, 120, 40, 45, 45
    types TYPE_GROUND, TYPE_ROCK
    catchrate 60
    baseexp 204
    evyields 0, 2, 0, 0, 0, 0
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


mondata SPECIES_CHANSEY
    basestats 250, 5, 5, 50, 35, 105
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 30
    baseexp 255
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_OVAL_STONE, ITEM_LUCKY_EGG
    genderratio 254
    eggcycles 40
    basefriendship 140
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_NATURAL_CURE, ABILITY_SERENE_GRACE
    runchance 90
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_CHANSEY_TM_DATA_0, SPECIES_CHANSEY_TM_DATA_1, SPECIES_CHANSEY_TM_DATA_2, SPECIES_CHANSEY_TM_DATA_3


mondata SPECIES_TANGELA
    basestats 65, 55, 115, 60, 100, 40
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 166
    evyields 0, 0, 1, 0, 0, 0
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


mondata SPECIES_KANGASKHAN
    basestats 105, 95, 80, 90, 40, 80
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 175
    evyields 2, 0, 0, 0, 0, 0
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


mondata SPECIES_HORSEA
    basestats 30, 40, 70, 60, 70, 25
    types TYPE_WATER, TYPE_WATER
    catchrate 225
    baseexp 83
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_DRAGON_SCALE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_SWIFT_SWIM, ABILITY_SNIPER
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_HORSEA_TM_DATA_0, SPECIES_HORSEA_TM_DATA_1, SPECIES_HORSEA_TM_DATA_2, SPECIES_HORSEA_TM_DATA_3


mondata SPECIES_SEADRA
    basestats 55, 65, 95, 85, 95, 45
    types TYPE_WATER, TYPE_WATER
    catchrate 75
    baseexp 155
    evyields 0, 0, 1, 0, 1, 0
    items ITEM_NONE, ITEM_DRAGON_SCALE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_POISON_POINT, ABILITY_SNIPER
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SEADRA_TM_DATA_0, SPECIES_SEADRA_TM_DATA_1, SPECIES_SEADRA_TM_DATA_2, SPECIES_SEADRA_TM_DATA_3


mondata SPECIES_GOLDEEN
    basestats 45, 67, 60, 63, 35, 50
    types TYPE_WATER, TYPE_WATER
    catchrate 225
    baseexp 111
    evyields 0, 1, 0, 0, 0, 0
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


mondata SPECIES_SEAKING
    basestats 80, 92, 65, 68, 65, 80
    types TYPE_WATER, TYPE_WATER
    catchrate 60
    baseexp 170
    evyields 0, 2, 0, 0, 0, 0
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


mondata SPECIES_STARYU
    basestats 30, 45, 55, 85, 70, 55
    types TYPE_WATER, TYPE_WATER
    catchrate 225
    baseexp 106
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_STARDUST, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_ILLUMINATE, ABILITY_NATURAL_CURE
    runchance 0
    colorflip BODY_COLOR_BROWN, 1
    tmdata SPECIES_STARYU_TM_DATA_0, SPECIES_STARYU_TM_DATA_1, SPECIES_STARYU_TM_DATA_2, SPECIES_STARYU_TM_DATA_3


mondata SPECIES_STARMIE
    basestats 60, 75, 85, 115, 100, 85
    types TYPE_WATER, TYPE_PSYCHIC
    catchrate 60
    baseexp 207
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_STARDUST, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_ILLUMINATE, ABILITY_NATURAL_CURE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_STARMIE_TM_DATA_0, SPECIES_STARMIE_TM_DATA_1, SPECIES_STARMIE_TM_DATA_2, SPECIES_STARMIE_TM_DATA_3


mondata SPECIES_MR_MIME
    basestats 40, 45, 65, 90, 100, 120
    types TYPE_PSYCHIC, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_PSYCHIC
    catchrate 45
    baseexp 136
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_LEPPA_BERRY
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_SOUNDPROOF, ABILITY_FILTER
    runchance 90
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_MR_MIME_TM_DATA_0, SPECIES_MR_MIME_TM_DATA_1, SPECIES_MR_MIME_TM_DATA_2, SPECIES_MR_MIME_TM_DATA_3


mondata SPECIES_SCYTHER
    basestats 70, 110, 80, 105, 55, 80
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 187
    evyields 0, 1, 0, 0, 0, 0
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


mondata SPECIES_JYNX
    basestats 65, 50, 35, 95, 115, 95
    types TYPE_ICE, TYPE_PSYCHIC
    catchrate 45
    baseexp 137
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_ASPEAR_BERRY, ITEM_ASPEAR_BERRY
    genderratio 254
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_OBLIVIOUS, ABILITY_FOREWARN
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_JYNX_TM_DATA_0, SPECIES_JYNX_TM_DATA_1, SPECIES_JYNX_TM_DATA_2, SPECIES_JYNX_TM_DATA_3


mondata SPECIES_ELECTABUZZ
    basestats 65, 83, 57, 105, 95, 85
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 45
    baseexp 156
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 63
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_STATIC, ABILITY_NONE
    runchance 120
    colorflip BODY_COLOR_YELLOW, 1
    tmdata SPECIES_ELECTABUZZ_TM_DATA_0, SPECIES_ELECTABUZZ_TM_DATA_1, SPECIES_ELECTABUZZ_TM_DATA_2, SPECIES_ELECTABUZZ_TM_DATA_3


mondata SPECIES_MAGMAR
    basestats 65, 95, 57, 93, 100, 85
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 167
    evyields 0, 0, 0, 0, 2, 0
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


mondata SPECIES_PINSIR
    basestats 65, 125, 100, 85, 55, 70
    types TYPE_BUG, TYPE_BUG
    catchrate 45
    baseexp 200
    evyields 0, 2, 0, 0, 0, 0
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


mondata SPECIES_TAUROS
    basestats 75, 100, 95, 110, 40, 70
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 211
    evyields 0, 1, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_ANGER_POINT
    runchance 90
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_TAUROS_TM_DATA_0, SPECIES_TAUROS_TM_DATA_1, SPECIES_TAUROS_TM_DATA_2, SPECIES_TAUROS_TM_DATA_3


mondata SPECIES_MAGIKARP
    basestats 20, 10, 55, 80, 15, 20
    types TYPE_WATER, TYPE_WATER
    catchrate 255
    baseexp 20
    evyields 0, 0, 0, 1, 0, 0
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


mondata SPECIES_GYARADOS
    basestats 95, 125, 79, 81, 60, 100
    types TYPE_WATER, TYPE_FLYING
    catchrate 45
    baseexp 214
    evyields 0, 2, 0, 0, 0, 0
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


mondata SPECIES_LAPRAS
    basestats 130, 85, 80, 60, 85, 95
    types TYPE_WATER, TYPE_ICE
    catchrate 45
    baseexp 219
    evyields 2, 0, 0, 0, 0, 0
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


mondata SPECIES_DITTO
    basestats 48, 48, 48, 48, 48, 48
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 35
    baseexp 61
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_QUICK_POWDER, ITEM_METAL_POWDER
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_DITTO, EGG_GROUP_DITTO
    abilities ABILITY_LIMBER, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_DITTO_TM_DATA_0, SPECIES_DITTO_TM_DATA_1, SPECIES_DITTO_TM_DATA_2, SPECIES_DITTO_TM_DATA_3


mondata SPECIES_EEVEE
    basestats 55, 55, 50, 55, 45, 65
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 92
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 35
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_ADAPTABILITY
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_EEVEE_TM_DATA_0, SPECIES_EEVEE_TM_DATA_1, SPECIES_EEVEE_TM_DATA_2, SPECIES_EEVEE_TM_DATA_3


mondata SPECIES_VAPOREON
    basestats 130, 65, 60, 65, 110, 95
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 196
    evyields 2, 0, 0, 0, 0, 0
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


mondata SPECIES_JOLTEON
    basestats 65, 65, 60, 130, 110, 95
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 45
    baseexp 197
    evyields 0, 0, 0, 2, 0, 0
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


mondata SPECIES_FLAREON
    basestats 65, 130, 60, 65, 95, 110
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 198
    evyields 0, 2, 0, 0, 0, 0
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


mondata SPECIES_PORYGON
    basestats 65, 60, 70, 40, 85, 75
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 130
    evyields 0, 0, 0, 0, 1, 0
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


mondata SPECIES_OMANYTE
    basestats 35, 40, 100, 35, 90, 55
    types TYPE_ROCK, TYPE_WATER
    catchrate 45
    baseexp 99
    evyields 0, 0, 1, 0, 0, 0
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


mondata SPECIES_OMASTAR
    basestats 70, 60, 125, 55, 115, 70
    types TYPE_ROCK, TYPE_WATER
    catchrate 45
    baseexp 199
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_SWIFT_SWIM, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_OMASTAR_TM_DATA_0, SPECIES_OMASTAR_TM_DATA_1, SPECIES_OMASTAR_TM_DATA_2, SPECIES_OMASTAR_TM_DATA_3


mondata SPECIES_KABUTO
    basestats 30, 80, 90, 55, 55, 45
    types TYPE_ROCK, TYPE_WATER
    catchrate 45
    baseexp 99
    evyields 0, 0, 1, 0, 0, 0
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


mondata SPECIES_KABUTOPS
    basestats 60, 115, 105, 80, 65, 70
    types TYPE_ROCK, TYPE_WATER
    catchrate 45
    baseexp 199
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_SWIFT_SWIM, ABILITY_BATTLE_ARMOR
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_KABUTOPS_TM_DATA_0, SPECIES_KABUTOPS_TM_DATA_1, SPECIES_KABUTOPS_TM_DATA_2, SPECIES_KABUTOPS_TM_DATA_3


mondata SPECIES_AERODACTYL
    basestats 80, 105, 65, 130, 60, 75
    types TYPE_ROCK, TYPE_FLYING
    catchrate 45
    baseexp 202
    evyields 0, 0, 0, 2, 0, 0
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


mondata SPECIES_SNORLAX
    basestats 160, 110, 65, 30, 65, 110
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 25
    baseexp 154
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_LEFTOVERS, ITEM_LEFTOVERS
    genderratio 31
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_IMMUNITY, ABILITY_THICK_FAT
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SNORLAX_TM_DATA_0, SPECIES_SNORLAX_TM_DATA_1, SPECIES_SNORLAX_TM_DATA_2, SPECIES_SNORLAX_TM_DATA_3


mondata SPECIES_ARTICUNO
    basestats 90, 85, 100, 85, 95, 125
    types TYPE_ICE, TYPE_FLYING
    catchrate 3
    baseexp 215
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


mondata SPECIES_ZAPDOS
    basestats 90, 90, 85, 100, 125, 90
    types TYPE_ELECTRIC, TYPE_FLYING
    catchrate 3
    baseexp 216
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


mondata SPECIES_MOLTRES
    basestats 90, 100, 90, 90, 125, 85
    types TYPE_FIRE, TYPE_FLYING
    catchrate 3
    baseexp 217
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


mondata SPECIES_DRATINI
    basestats 41, 64, 45, 50, 50, 50
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 67
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_DRAGON_SCALE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_SHED_SKIN, ABILITY_NONE
    runchance 120
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_DRATINI_TM_DATA_0, SPECIES_DRATINI_TM_DATA_1, SPECIES_DRATINI_TM_DATA_2, SPECIES_DRATINI_TM_DATA_3


mondata SPECIES_DRAGONAIR
    basestats 61, 84, 65, 70, 70, 70
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 144
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_DRAGON_SCALE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_SHED_SKIN, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_DRAGONAIR_TM_DATA_0, SPECIES_DRAGONAIR_TM_DATA_1, SPECIES_DRAGONAIR_TM_DATA_2, SPECIES_DRAGONAIR_TM_DATA_3


mondata SPECIES_DRAGONITE
    basestats 91, 134, 95, 80, 100, 100
    types TYPE_DRAGON, TYPE_FLYING
    catchrate 45
    baseexp 218
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_DRAGON_SCALE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_INNER_FOCUS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DRAGONITE_TM_DATA_0, SPECIES_DRAGONITE_TM_DATA_1, SPECIES_DRAGONITE_TM_DATA_2, SPECIES_DRAGONITE_TM_DATA_3


mondata SPECIES_MEWTWO
    basestats 106, 110, 90, 130, 154, 90
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
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_MEWTWO_TM_DATA_0, SPECIES_MEWTWO_TM_DATA_1, SPECIES_MEWTWO_TM_DATA_2, SPECIES_MEWTWO_TM_DATA_3


mondata SPECIES_MEW
    basestats 100, 100, 100, 100, 100, 100
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 45
    baseexp 64
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_LUM_BERRY, ITEM_LUM_BERRY
    genderratio 255
    eggcycles 120
    basefriendship 100
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_SYNCHRONIZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_MEW_TM_DATA_0, SPECIES_MEW_TM_DATA_1, SPECIES_MEW_TM_DATA_2, SPECIES_MEW_TM_DATA_3


mondata SPECIES_CHIKORITA
    basestats 45, 49, 65, 45, 49, 65
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 64
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CHIKORITA_TM_DATA_0, SPECIES_CHIKORITA_TM_DATA_1, SPECIES_CHIKORITA_TM_DATA_2, SPECIES_CHIKORITA_TM_DATA_3


mondata SPECIES_BAYLEEF
    basestats 60, 62, 80, 60, 63, 80
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 141
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


mondata SPECIES_MEGANIUM
    basestats 80, 82, 100, 80, 83, 100
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 208
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


mondata SPECIES_CYNDAQUIL
    basestats 39, 52, 43, 65, 60, 50
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 65
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


mondata SPECIES_QUILAVA
    basestats 58, 64, 58, 80, 80, 65
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 142
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


mondata SPECIES_TYPHLOSION
    basestats 78, 84, 78, 100, 109, 85
    types TYPE_FIRE, TYPE_FIRE
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
    tmdata SPECIES_TYPHLOSION_TM_DATA_0, SPECIES_TYPHLOSION_TM_DATA_1, SPECIES_TYPHLOSION_TM_DATA_2, SPECIES_TYPHLOSION_TM_DATA_3


mondata SPECIES_TOTODILE
    basestats 50, 65, 64, 43, 44, 48
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 66
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


mondata SPECIES_CROCONAW
    basestats 65, 80, 80, 58, 59, 63
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 143
    evyields 0, 1, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 1
    tmdata SPECIES_CROCONAW_TM_DATA_0, SPECIES_CROCONAW_TM_DATA_1, SPECIES_CROCONAW_TM_DATA_2, SPECIES_CROCONAW_TM_DATA_3


mondata SPECIES_FERALIGATR
    basestats 85, 105, 100, 78, 79, 83
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 210
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


mondata SPECIES_SENTRET
    basestats 35, 46, 34, 20, 35, 45
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 57
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_ORAN_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_KEEN_EYE
    runchance 120
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SENTRET_TM_DATA_0, SPECIES_SENTRET_TM_DATA_1, SPECIES_SENTRET_TM_DATA_2, SPECIES_SENTRET_TM_DATA_3


mondata SPECIES_FURRET
    basestats 85, 76, 64, 90, 45, 55
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 90
    baseexp 116
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_ORAN_BERRY, ITEM_SITRUS_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_KEEN_EYE
    runchance 90
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_FURRET_TM_DATA_0, SPECIES_FURRET_TM_DATA_1, SPECIES_FURRET_TM_DATA_2, SPECIES_FURRET_TM_DATA_3


mondata SPECIES_HOOTHOOT
    basestats 60, 30, 30, 50, 36, 56
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 255
    baseexp 58
    evyields 1, 0, 0, 0, 0, 0
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


mondata SPECIES_NOCTOWL
    basestats 100, 50, 50, 70, 86, 96
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 90
    baseexp 162
    evyields 2, 0, 0, 0, 0, 0
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


mondata SPECIES_LEDYBA
    basestats 40, 20, 30, 55, 40, 80
    types TYPE_BUG, TYPE_FLYING
    catchrate 255
    baseexp 54
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


mondata SPECIES_LEDIAN
    basestats 55, 35, 50, 85, 55, 110
    types TYPE_BUG, TYPE_FLYING
    catchrate 90
    baseexp 134
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


mondata SPECIES_SPINARAK
    basestats 40, 60, 40, 30, 40, 40
    types TYPE_BUG, TYPE_POISON
    catchrate 255
    baseexp 54
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


mondata SPECIES_ARIADOS
    basestats 70, 90, 70, 40, 60, 70
    types TYPE_BUG, TYPE_POISON
    catchrate 90
    baseexp 134
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


mondata SPECIES_CROBAT
    basestats 85, 90, 80, 130, 70, 80
    types TYPE_POISON, TYPE_FLYING
    catchrate 90
    baseexp 204
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_INNER_FOCUS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_CROBAT_TM_DATA_0, SPECIES_CROBAT_TM_DATA_1, SPECIES_CROBAT_TM_DATA_2, SPECIES_CROBAT_TM_DATA_3


mondata SPECIES_CHINCHOU
    basestats 75, 38, 38, 67, 56, 56
    types TYPE_WATER, TYPE_ELECTRIC
    catchrate 190
    baseexp 90
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_DEEPSEASCALE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_VOLT_ABSORB, ABILITY_ILLUMINATE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CHINCHOU_TM_DATA_0, SPECIES_CHINCHOU_TM_DATA_1, SPECIES_CHINCHOU_TM_DATA_2, SPECIES_CHINCHOU_TM_DATA_3


mondata SPECIES_LANTURN
    basestats 125, 58, 58, 67, 76, 76
    types TYPE_WATER, TYPE_ELECTRIC
    catchrate 75
    baseexp 156
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_DEEPSEASCALE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_VOLT_ABSORB, ABILITY_ILLUMINATE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_LANTURN_TM_DATA_0, SPECIES_LANTURN_TM_DATA_1, SPECIES_LANTURN_TM_DATA_2, SPECIES_LANTURN_TM_DATA_3


mondata SPECIES_PICHU
    basestats 20, 40, 15, 60, 35, 35
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 42
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_ORAN_BERRY
    genderratio 127
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 1
    tmdata SPECIES_PICHU_TM_DATA_0, SPECIES_PICHU_TM_DATA_1, SPECIES_PICHU_TM_DATA_2, SPECIES_PICHU_TM_DATA_3


mondata SPECIES_CLEFFA
    basestats 50, 25, 28, 15, 45, 55
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 150
    baseexp 37
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_LEPPA_BERRY, ITEM_MOON_STONE
    genderratio 191
    eggcycles 10
    basefriendship 140
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_CUTE_CHARM, ABILITY_MAGIC_GUARD
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_CLEFFA_TM_DATA_0, SPECIES_CLEFFA_TM_DATA_1, SPECIES_CLEFFA_TM_DATA_2, SPECIES_CLEFFA_TM_DATA_3


mondata SPECIES_IGGLYBUFF
    basestats 90, 30, 15, 15, 40, 20
    types TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 170
    baseexp 39
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 191
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_CUTE_CHARM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 1
    tmdata SPECIES_IGGLYBUFF_TM_DATA_0, SPECIES_IGGLYBUFF_TM_DATA_1, SPECIES_IGGLYBUFF_TM_DATA_2, SPECIES_IGGLYBUFF_TM_DATA_3


mondata SPECIES_TOGEPI
    basestats 35, 20, 65, 20, 40, 65
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 190
    baseexp 74
    evyields 0, 0, 0, 0, 0, 1
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


mondata SPECIES_TOGETIC
    basestats 55, 40, 85, 40, 80, 105
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, TYPE_FLYING
    catchrate 75
    baseexp 114
    evyields 0, 0, 0, 0, 0, 2
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


mondata SPECIES_NATU
    basestats 40, 50, 45, 70, 70, 45
    types TYPE_PSYCHIC, TYPE_FLYING
    catchrate 190
    baseexp 73
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_SYNCHRONIZE, ABILITY_EARLY_BIRD
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_NATU_TM_DATA_0, SPECIES_NATU_TM_DATA_1, SPECIES_NATU_TM_DATA_2, SPECIES_NATU_TM_DATA_3


mondata SPECIES_XATU
    basestats 65, 75, 70, 95, 95, 70
    types TYPE_PSYCHIC, TYPE_FLYING
    catchrate 75
    baseexp 171
    evyields 0, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_SYNCHRONIZE, ABILITY_EARLY_BIRD
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_XATU_TM_DATA_0, SPECIES_XATU_TM_DATA_1, SPECIES_XATU_TM_DATA_2, SPECIES_XATU_TM_DATA_3


mondata SPECIES_MAREEP
    basestats 55, 40, 40, 35, 65, 45
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 235
    baseexp 59
    evyields 0, 0, 0, 0, 1, 0
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


mondata SPECIES_FLAAFFY
    basestats 70, 55, 55, 45, 80, 60
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 120
    baseexp 117
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


mondata SPECIES_AMPHAROS
    basestats 90, 75, 85, 55, 115, 90
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 45
    baseexp 194
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


mondata SPECIES_BELLOSSOM
    basestats 75, 80, 95, 50, 90, 100
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 184
    evyields 0, 0, 0, 0, 0, 3
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


mondata SPECIES_MARILL
    basestats 70, 20, 50, 40, 20, 50
    types TYPE_WATER, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_WATER
    catchrate 190
    baseexp 58
    evyields 2, 0, 0, 0, 0, 0
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


mondata SPECIES_AZUMARILL
    basestats 100, 50, 80, 50, 60, 80
    types TYPE_WATER, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_WATER
    catchrate 75
    baseexp 153
    evyields 3, 0, 0, 0, 0, 0
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


mondata SPECIES_SUDOWOODO
    basestats 70, 100, 115, 30, 30, 65
    types TYPE_ROCK, TYPE_ROCK
    catchrate 65
    baseexp 135
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STURDY, ABILITY_ROCK_HEAD
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SUDOWOODO_TM_DATA_0, SPECIES_SUDOWOODO_TM_DATA_1, SPECIES_SUDOWOODO_TM_DATA_2, SPECIES_SUDOWOODO_TM_DATA_3


mondata SPECIES_POLITOED
    basestats 90, 75, 75, 70, 90, 100
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 185
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_KINGS_ROCK
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_WATER_ABSORB, ABILITY_DAMP
    runchance 0
    colorflip BODY_COLOR_GREEN, 1
    tmdata SPECIES_POLITOED_TM_DATA_0, SPECIES_POLITOED_TM_DATA_1, SPECIES_POLITOED_TM_DATA_2, SPECIES_POLITOED_TM_DATA_3


mondata SPECIES_HOPPIP
    basestats 35, 35, 40, 50, 35, 55
    types TYPE_GRASS, TYPE_FLYING
    catchrate 255
    baseexp 74
    evyields 0, 0, 0, 0, 0, 1
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


mondata SPECIES_SKIPLOOM
    basestats 55, 45, 50, 80, 45, 65
    types TYPE_GRASS, TYPE_FLYING
    catchrate 120
    baseexp 136
    evyields 0, 0, 0, 2, 0, 0
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


mondata SPECIES_JUMPLUFF
    basestats 75, 55, 70, 110, 55, 95
    types TYPE_GRASS, TYPE_FLYING
    catchrate 45
    baseexp 176
    evyields 0, 0, 0, 3, 0, 0
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


mondata SPECIES_AIPOM
    basestats 55, 70, 55, 85, 40, 55
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 94
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


mondata SPECIES_SUNKERN
    basestats 30, 30, 30, 30, 30, 30
    types TYPE_GRASS, TYPE_GRASS
    catchrate 235
    baseexp 52
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_COBA_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_SOLAR_POWER
    runchance 90
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_SUNKERN_TM_DATA_0, SPECIES_SUNKERN_TM_DATA_1, SPECIES_SUNKERN_TM_DATA_2, SPECIES_SUNKERN_TM_DATA_3


mondata SPECIES_SUNFLORA
    basestats 75, 75, 55, 30, 105, 85
    types TYPE_GRASS, TYPE_GRASS
    catchrate 120
    baseexp 146
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


mondata SPECIES_YANMA
    basestats 65, 65, 45, 95, 75, 45
    types TYPE_BUG, TYPE_FLYING
    catchrate 75
    baseexp 147
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_WIDE_LENS
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SPEED_BOOST, ABILITY_COMPOUND_EYES
    runchance 120
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_YANMA_TM_DATA_0, SPECIES_YANMA_TM_DATA_1, SPECIES_YANMA_TM_DATA_2, SPECIES_YANMA_TM_DATA_3


mondata SPECIES_WOOPER
    basestats 55, 45, 45, 15, 25, 25
    types TYPE_WATER, TYPE_GROUND
    catchrate 255
    baseexp 52
    evyields 1, 0, 0, 0, 0, 0
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


mondata SPECIES_QUAGSIRE
    basestats 95, 85, 85, 35, 65, 65
    types TYPE_WATER, TYPE_GROUND
    catchrate 90
    baseexp 137
    evyields 2, 0, 0, 0, 0, 0
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


mondata SPECIES_ESPEON
    basestats 65, 65, 60, 110, 130, 95
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 45
    baseexp 197
    evyields 0, 0, 0, 0, 2, 0
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


mondata SPECIES_UMBREON
    basestats 95, 65, 110, 65, 60, 130
    types TYPE_DARK, TYPE_DARK
    catchrate 45
    baseexp 197
    evyields 0, 0, 0, 0, 0, 2
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


mondata SPECIES_MURKROW
    basestats 60, 85, 42, 91, 85, 42
    types TYPE_DARK, TYPE_FLYING
    catchrate 30
    baseexp 107
    evyields 0, 0, 0, 1, 0, 0
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


mondata SPECIES_SLOWKING
    basestats 95, 75, 80, 30, 100, 110
    types TYPE_WATER, TYPE_PSYCHIC
    catchrate 70
    baseexp 164
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_KINGS_ROCK
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_OBLIVIOUS, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_SLOWKING_TM_DATA_0, SPECIES_SLOWKING_TM_DATA_1, SPECIES_SLOWKING_TM_DATA_2, SPECIES_SLOWKING_TM_DATA_3


mondata SPECIES_MISDREAVUS
    basestats 60, 60, 60, 85, 85, 85
    types TYPE_GHOST, TYPE_GHOST
    catchrate 45
    baseexp 147
    evyields 0, 0, 0, 0, 0, 1
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


mondata SPECIES_UNOWN
    basestats 48, 72, 48, 48, 72, 48
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 225
    baseexp 61
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 1
    tmdata SPECIES_UNOWN_TM_DATA_0, SPECIES_UNOWN_TM_DATA_1, SPECIES_UNOWN_TM_DATA_2, SPECIES_UNOWN_TM_DATA_3


mondata SPECIES_WOBBUFFET
    basestats 190, 33, 58, 33, 33, 58
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 45
    baseexp 177
    evyields 2, 0, 0, 0, 0, 0
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


mondata SPECIES_GIRAFARIG
    basestats 70, 80, 65, 85, 90, 65
    types TYPE_NORMAL, TYPE_PSYCHIC
    catchrate 60
    baseexp 149
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_PERSIM_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INNER_FOCUS, ABILITY_EARLY_BIRD
    runchance 60
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_GIRAFARIG_TM_DATA_0, SPECIES_GIRAFARIG_TM_DATA_1, SPECIES_GIRAFARIG_TM_DATA_2, SPECIES_GIRAFARIG_TM_DATA_3


mondata SPECIES_PINECO
    basestats 50, 65, 90, 15, 35, 35
    types TYPE_BUG, TYPE_BUG
    catchrate 190
    baseexp 60
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


mondata SPECIES_FORRETRESS
    basestats 75, 90, 140, 40, 60, 60
    types TYPE_BUG, TYPE_STEEL
    catchrate 75
    baseexp 118
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


mondata SPECIES_DUNSPARCE
    basestats 100, 70, 70, 45, 65, 65
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 190
    baseexp 125
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SERENE_GRACE, ABILITY_RUN_AWAY
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_DUNSPARCE_TM_DATA_0, SPECIES_DUNSPARCE_TM_DATA_1, SPECIES_DUNSPARCE_TM_DATA_2, SPECIES_DUNSPARCE_TM_DATA_3


mondata SPECIES_GLIGAR
    basestats 65, 75, 105, 85, 35, 65
    types TYPE_GROUND, TYPE_FLYING
    catchrate 60
    baseexp 108
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


mondata SPECIES_STEELIX
    basestats 75, 85, 200, 30, 55, 65
    types TYPE_STEEL, TYPE_GROUND
    catchrate 25
    baseexp 196
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_METAL_COAT
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_ROCK_HEAD, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_STEELIX_TM_DATA_0, SPECIES_STEELIX_TM_DATA_1, SPECIES_STEELIX_TM_DATA_2, SPECIES_STEELIX_TM_DATA_3


mondata SPECIES_SNUBBULL
    basestats 60, 80, 50, 30, 40, 40
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 190
    baseexp 63
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_INTIMIDATE, ABILITY_RUN_AWAY
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_SNUBBULL_TM_DATA_0, SPECIES_SNUBBULL_TM_DATA_1, SPECIES_SNUBBULL_TM_DATA_2, SPECIES_SNUBBULL_TM_DATA_3


mondata SPECIES_GRANBULL
    basestats 90, 120, 75, 45, 60, 60
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 75
    baseexp 178
    evyields 0, 2, 0, 0, 0, 0
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


mondata SPECIES_QWILFISH
    basestats 65, 95, 85, 85, 55, 55
    types TYPE_WATER, TYPE_POISON
    catchrate 45
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
    tmdata SPECIES_QWILFISH_TM_DATA_0, SPECIES_QWILFISH_TM_DATA_1, SPECIES_QWILFISH_TM_DATA_2, SPECIES_QWILFISH_TM_DATA_3


mondata SPECIES_SCIZOR
    basestats 70, 130, 100, 65, 55, 80
    types TYPE_BUG, TYPE_STEEL
    catchrate 25
    baseexp 200
    evyields 0, 2, 0, 0, 0, 0
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


mondata SPECIES_SHUCKLE
    basestats 20, 10, 230, 5, 10, 230
    types TYPE_BUG, TYPE_ROCK
    catchrate 190
    baseexp 80
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_BERRY_JUICE, ITEM_BERRY_JUICE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_STURDY, ABILITY_GLUTTONY
    runchance 60
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_SHUCKLE_TM_DATA_0, SPECIES_SHUCKLE_TM_DATA_1, SPECIES_SHUCKLE_TM_DATA_2, SPECIES_SHUCKLE_TM_DATA_3


mondata SPECIES_HERACROSS
    basestats 80, 125, 75, 85, 40, 95
    types TYPE_BUG, TYPE_FIGHTING
    catchrate 45
    baseexp 200
    evyields 0, 2, 0, 0, 0, 0
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


mondata SPECIES_SNEASEL
    basestats 55, 95, 55, 115, 35, 75
    types TYPE_DARK, TYPE_ICE
    catchrate 60
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
    tmdata SPECIES_SNEASEL_TM_DATA_0, SPECIES_SNEASEL_TM_DATA_1, SPECIES_SNEASEL_TM_DATA_2, SPECIES_SNEASEL_TM_DATA_3


mondata SPECIES_TEDDIURSA
    basestats 60, 80, 50, 40, 50, 50
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 120
    baseexp 124
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PICKUP, ABILITY_QUICK_FEET
    runchance 0
    colorflip BODY_COLOR_BROWN, 1
    tmdata SPECIES_TEDDIURSA_TM_DATA_0, SPECIES_TEDDIURSA_TM_DATA_1, SPECIES_TEDDIURSA_TM_DATA_2, SPECIES_TEDDIURSA_TM_DATA_3


mondata SPECIES_URSARING
    basestats 90, 130, 75, 55, 75, 75
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 60
    baseexp 189
    evyields 0, 2, 0, 0, 0, 0
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


mondata SPECIES_SLUGMA
    basestats 40, 40, 40, 20, 70, 40
    types TYPE_FIRE, TYPE_FIRE
    catchrate 190
    baseexp 78
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


mondata SPECIES_MAGCARGO
    basestats 60, 50, 120, 30, 90, 80
    types TYPE_FIRE, TYPE_ROCK
    catchrate 75
    baseexp 154
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


mondata SPECIES_SWINUB
    basestats 50, 50, 40, 50, 30, 30
    types TYPE_ICE, TYPE_GROUND
    catchrate 225
    baseexp 78
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OBLIVIOUS, ABILITY_SNOW_CLOAK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SWINUB_TM_DATA_0, SPECIES_SWINUB_TM_DATA_1, SPECIES_SWINUB_TM_DATA_2, SPECIES_SWINUB_TM_DATA_3


mondata SPECIES_PILOSWINE
    basestats 100, 100, 80, 50, 60, 60
    types TYPE_ICE, TYPE_GROUND
    catchrate 75
    baseexp 160
    evyields 1, 1, 0, 0, 0, 0
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


mondata SPECIES_CORSOLA
    basestats 65, 55, 95, 35, 65, 95
    types TYPE_WATER, TYPE_ROCK
    catchrate 60
    baseexp 113
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_HARD_STONE
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_HUSTLE, ABILITY_NATURAL_CURE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_CORSOLA_TM_DATA_0, SPECIES_CORSOLA_TM_DATA_1, SPECIES_CORSOLA_TM_DATA_2, SPECIES_CORSOLA_TM_DATA_3


mondata SPECIES_REMORAID
    basestats 35, 65, 35, 65, 65, 35
    types TYPE_WATER, TYPE_WATER
    catchrate 190
    baseexp 78
    evyields 0, 0, 0, 0, 1, 0
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


mondata SPECIES_OCTILLERY
    basestats 75, 105, 75, 45, 105, 75
    types TYPE_WATER, TYPE_WATER
    catchrate 75
    baseexp 164
    evyields 0, 1, 0, 0, 1, 0
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


mondata SPECIES_DELIBIRD
    basestats 45, 55, 45, 75, 65, 45
    types TYPE_ICE, TYPE_FLYING
    catchrate 45
    baseexp 183
    evyields 0, 0, 0, 1, 0, 0
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


mondata SPECIES_MANTINE
    basestats 85, 40, 70, 70, 80, 140
    types TYPE_WATER, TYPE_FLYING
    catchrate 25
    baseexp 168
    evyields 0, 0, 0, 0, 0, 2
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


mondata SPECIES_SKARMORY
    basestats 65, 80, 140, 70, 40, 70
    types TYPE_STEEL, TYPE_FLYING
    catchrate 25
    baseexp 168
    evyields 0, 0, 2, 0, 0, 0
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


mondata SPECIES_HOUNDOUR
    basestats 45, 60, 30, 65, 80, 50
    types TYPE_DARK, TYPE_FIRE
    catchrate 120
    baseexp 114
    evyields 0, 0, 0, 0, 1, 0
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


mondata SPECIES_HOUNDOOM
    basestats 75, 90, 50, 95, 110, 80
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
    abilities ABILITY_EARLY_BIRD, ABILITY_FLASH_FIRE
    runchance 90
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_HOUNDOOM_TM_DATA_0, SPECIES_HOUNDOOM_TM_DATA_1, SPECIES_HOUNDOOM_TM_DATA_2, SPECIES_HOUNDOOM_TM_DATA_3


mondata SPECIES_KINGDRA
    basestats 75, 95, 95, 85, 95, 95
    types TYPE_WATER, TYPE_DRAGON
    catchrate 45
    baseexp 207
    evyields 0, 1, 0, 0, 1, 1
    items ITEM_NONE, ITEM_DRAGON_SCALE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_SWIFT_SWIM, ABILITY_SNIPER
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_KINGDRA_TM_DATA_0, SPECIES_KINGDRA_TM_DATA_1, SPECIES_KINGDRA_TM_DATA_2, SPECIES_KINGDRA_TM_DATA_3


mondata SPECIES_PHANPY
    basestats 90, 60, 60, 40, 40, 40
    types TYPE_GROUND, TYPE_GROUND
    catchrate 120
    baseexp 124
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_PASSHO_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PICKUP, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_PHANPY_TM_DATA_0, SPECIES_PHANPY_TM_DATA_1, SPECIES_PHANPY_TM_DATA_2, SPECIES_PHANPY_TM_DATA_3


mondata SPECIES_DONPHAN
    basestats 90, 120, 120, 50, 60, 60
    types TYPE_GROUND, TYPE_GROUND
    catchrate 60
    baseexp 189
    evyields 0, 1, 1, 0, 0, 0
    items ITEM_NONE, ITEM_PASSHO_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_STURDY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_DONPHAN_TM_DATA_0, SPECIES_DONPHAN_TM_DATA_1, SPECIES_DONPHAN_TM_DATA_2, SPECIES_DONPHAN_TM_DATA_3


mondata SPECIES_PORYGON2
    basestats 85, 80, 90, 60, 105, 95
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 180
    evyields 0, 0, 0, 0, 2, 0
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


mondata SPECIES_STANTLER
    basestats 73, 95, 62, 85, 85, 65
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 165
    evyields 0, 1, 0, 0, 0, 0
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


mondata SPECIES_SMEARGLE
    basestats 55, 20, 35, 75, 20, 45
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 106
    evyields 0, 0, 0, 1, 0, 0
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


mondata SPECIES_TYROGUE
    basestats 35, 35, 35, 35, 35, 35
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 75
    baseexp 91
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_GUTS, ABILITY_STEADFAST
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_TYROGUE_TM_DATA_0, SPECIES_TYROGUE_TM_DATA_1, SPECIES_TYROGUE_TM_DATA_2, SPECIES_TYROGUE_TM_DATA_3


mondata SPECIES_HITMONTOP
    basestats 50, 95, 95, 70, 35, 110
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 138
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_INTIMIDATE, ABILITY_TECHNICIAN
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_HITMONTOP_TM_DATA_0, SPECIES_HITMONTOP_TM_DATA_1, SPECIES_HITMONTOP_TM_DATA_2, SPECIES_HITMONTOP_TM_DATA_3


mondata SPECIES_SMOOCHUM
    basestats 45, 30, 15, 65, 85, 65
    types TYPE_ICE, TYPE_PSYCHIC
    catchrate 45
    baseexp 87
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_ASPEAR_BERRY, ITEM_ASPEAR_BERRY
    genderratio 254
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_OBLIVIOUS, ABILITY_FOREWARN
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_SMOOCHUM_TM_DATA_0, SPECIES_SMOOCHUM_TM_DATA_1, SPECIES_SMOOCHUM_TM_DATA_2, SPECIES_SMOOCHUM_TM_DATA_3


mondata SPECIES_ELEKID
    basestats 45, 63, 37, 95, 65, 55
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 45
    baseexp 106
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 63
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_STATIC, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 1
    tmdata SPECIES_ELEKID_TM_DATA_0, SPECIES_ELEKID_TM_DATA_1, SPECIES_ELEKID_TM_DATA_2, SPECIES_ELEKID_TM_DATA_3


mondata SPECIES_MAGBY
    basestats 45, 75, 37, 83, 70, 55
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 117
    evyields 0, 0, 0, 1, 0, 0
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


mondata SPECIES_MILTANK
    basestats 95, 80, 105, 100, 40, 70
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 200
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_MOOMOO_MILK, ITEM_MOOMOO_MILK
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_THICK_FAT, ABILITY_SCRAPPY
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_MILTANK_TM_DATA_0, SPECIES_MILTANK_TM_DATA_1, SPECIES_MILTANK_TM_DATA_2, SPECIES_MILTANK_TM_DATA_3


mondata SPECIES_BLISSEY
    basestats 255, 10, 10, 55, 75, 135
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 30
    baseexp 255
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


mondata SPECIES_RAIKOU
    basestats 90, 85, 75, 115, 115, 100
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 3
    baseexp 216
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


mondata SPECIES_ENTEI
    basestats 115, 115, 85, 100, 90, 75
    types TYPE_FIRE, TYPE_FIRE
    catchrate 3
    baseexp 217
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


mondata SPECIES_SUICUNE
    basestats 100, 75, 115, 85, 90, 115
    types TYPE_WATER, TYPE_WATER
    catchrate 3
    baseexp 215
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


mondata SPECIES_LARVITAR
    basestats 50, 64, 50, 41, 45, 50
    types TYPE_ROCK, TYPE_GROUND
    catchrate 45
    baseexp 67
    evyields 0, 1, 0, 0, 0, 0
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


mondata SPECIES_PUPITAR
    basestats 70, 84, 70, 51, 65, 70
    types TYPE_ROCK, TYPE_GROUND
    catchrate 45
    baseexp 144
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


mondata SPECIES_TYRANITAR
    basestats 100, 134, 110, 61, 95, 100
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
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_TYRANITAR_TM_DATA_0, SPECIES_TYRANITAR_TM_DATA_1, SPECIES_TYRANITAR_TM_DATA_2, SPECIES_TYRANITAR_TM_DATA_3


mondata SPECIES_LUGIA
    basestats 106, 90, 130, 110, 90, 154
    types TYPE_PSYCHIC, TYPE_FLYING
    catchrate 3
    baseexp 220
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


mondata SPECIES_HO_OH
    basestats 106, 130, 90, 90, 110, 154
    types TYPE_FIRE, TYPE_FLYING
    catchrate 3
    baseexp 220
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_SACRED_ASH, ITEM_SACRED_ASH
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_HO_OH_TM_DATA_0, SPECIES_HO_OH_TM_DATA_1, SPECIES_HO_OH_TM_DATA_2, SPECIES_HO_OH_TM_DATA_3


mondata SPECIES_CELEBI
    basestats 100, 100, 100, 100, 100, 100
    types TYPE_PSYCHIC, TYPE_GRASS
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
    tmdata SPECIES_CELEBI_TM_DATA_0, SPECIES_CELEBI_TM_DATA_1, SPECIES_CELEBI_TM_DATA_2, SPECIES_CELEBI_TM_DATA_3


mondata SPECIES_TREECKO
    basestats 40, 45, 35, 70, 65, 55
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 65
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_TREECKO_TM_DATA_0, SPECIES_TREECKO_TM_DATA_1, SPECIES_TREECKO_TM_DATA_2, SPECIES_TREECKO_TM_DATA_3


mondata SPECIES_GROVYLE
    basestats 50, 65, 45, 95, 85, 65
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 141
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_GROVYLE_TM_DATA_0, SPECIES_GROVYLE_TM_DATA_1, SPECIES_GROVYLE_TM_DATA_2, SPECIES_GROVYLE_TM_DATA_3


mondata SPECIES_SCEPTILE
    basestats 70, 85, 65, 120, 105, 85
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 208
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SCEPTILE_TM_DATA_0, SPECIES_SCEPTILE_TM_DATA_1, SPECIES_SCEPTILE_TM_DATA_2, SPECIES_SCEPTILE_TM_DATA_3


mondata SPECIES_TORCHIC
    basestats 45, 60, 40, 45, 70, 50
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 65
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
    tmdata SPECIES_TORCHIC_TM_DATA_0, SPECIES_TORCHIC_TM_DATA_1, SPECIES_TORCHIC_TM_DATA_2, SPECIES_TORCHIC_TM_DATA_3


mondata SPECIES_COMBUSKEN
    basestats 60, 85, 60, 55, 85, 60
    types TYPE_FIRE, TYPE_FIGHTING
    catchrate 45
    baseexp 142
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_COMBUSKEN_TM_DATA_0, SPECIES_COMBUSKEN_TM_DATA_1, SPECIES_COMBUSKEN_TM_DATA_2, SPECIES_COMBUSKEN_TM_DATA_3


mondata SPECIES_BLAZIKEN
    basestats 80, 120, 70, 80, 110, 70
    types TYPE_FIRE, TYPE_FIGHTING
    catchrate 45
    baseexp 209
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
    tmdata SPECIES_BLAZIKEN_TM_DATA_0, SPECIES_BLAZIKEN_TM_DATA_1, SPECIES_BLAZIKEN_TM_DATA_2, SPECIES_BLAZIKEN_TM_DATA_3


mondata SPECIES_MUDKIP
    basestats 50, 70, 50, 40, 50, 50
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 65
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
    tmdata SPECIES_MUDKIP_TM_DATA_0, SPECIES_MUDKIP_TM_DATA_1, SPECIES_MUDKIP_TM_DATA_2, SPECIES_MUDKIP_TM_DATA_3


mondata SPECIES_MARSHTOMP
    basestats 70, 85, 70, 50, 60, 70
    types TYPE_WATER, TYPE_GROUND
    catchrate 45
    baseexp 143
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_MARSHTOMP_TM_DATA_0, SPECIES_MARSHTOMP_TM_DATA_1, SPECIES_MARSHTOMP_TM_DATA_2, SPECIES_MARSHTOMP_TM_DATA_3


mondata SPECIES_SWAMPERT
    basestats 100, 110, 90, 60, 85, 90
    types TYPE_WATER, TYPE_GROUND
    catchrate 45
    baseexp 210
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SWAMPERT_TM_DATA_0, SPECIES_SWAMPERT_TM_DATA_1, SPECIES_SWAMPERT_TM_DATA_2, SPECIES_SWAMPERT_TM_DATA_3


mondata SPECIES_POOCHYENA
    basestats 35, 55, 35, 35, 30, 30
    types TYPE_DARK, TYPE_DARK
    catchrate 255
    baseexp 55
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_PECHA_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RUN_AWAY, ABILITY_QUICK_FEET
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_POOCHYENA_TM_DATA_0, SPECIES_POOCHYENA_TM_DATA_1, SPECIES_POOCHYENA_TM_DATA_2, SPECIES_POOCHYENA_TM_DATA_3


mondata SPECIES_MIGHTYENA
    basestats 70, 90, 70, 70, 60, 60
    types TYPE_DARK, TYPE_DARK
    catchrate 127
    baseexp 128
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_PECHA_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_QUICK_FEET
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MIGHTYENA_TM_DATA_0, SPECIES_MIGHTYENA_TM_DATA_1, SPECIES_MIGHTYENA_TM_DATA_2, SPECIES_MIGHTYENA_TM_DATA_3


mondata SPECIES_ZIGZAGOON
    basestats 38, 30, 41, 60, 30, 41
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 60
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_ORAN_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PICKUP, ABILITY_GLUTTONY
    runchance 120
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_ZIGZAGOON_TM_DATA_0, SPECIES_ZIGZAGOON_TM_DATA_1, SPECIES_ZIGZAGOON_TM_DATA_2, SPECIES_ZIGZAGOON_TM_DATA_3


mondata SPECIES_LINOONE
    basestats 78, 70, 61, 100, 50, 61
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 90
    baseexp 128
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_ORAN_BERRY, ITEM_SITRUS_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PICKUP, ABILITY_GLUTTONY
    runchance 90
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_LINOONE_TM_DATA_0, SPECIES_LINOONE_TM_DATA_1, SPECIES_LINOONE_TM_DATA_2, SPECIES_LINOONE_TM_DATA_3


mondata SPECIES_WURMPLE
    basestats 45, 45, 35, 20, 20, 30
    types TYPE_BUG, TYPE_BUG
    catchrate 255
    baseexp 54
    evyields 1, 0, 0, 0, 0, 0
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


mondata SPECIES_SILCOON
    basestats 50, 35, 55, 15, 25, 25
    types TYPE_BUG, TYPE_BUG
    catchrate 120
    baseexp 72
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


mondata SPECIES_BEAUTIFLY
    basestats 60, 70, 50, 65, 100, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 161
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_SHED_SHELL
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_BEAUTIFLY_TM_DATA_0, SPECIES_BEAUTIFLY_TM_DATA_1, SPECIES_BEAUTIFLY_TM_DATA_2, SPECIES_BEAUTIFLY_TM_DATA_3


mondata SPECIES_CASCOON
    basestats 50, 35, 55, 15, 25, 25
    types TYPE_BUG, TYPE_BUG
    catchrate 120
    baseexp 72
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


mondata SPECIES_DUSTOX
    basestats 60, 50, 70, 65, 50, 90
    types TYPE_BUG, TYPE_POISON
    catchrate 45
    baseexp 161
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_SHED_SHELL
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_DUSTOX_TM_DATA_0, SPECIES_DUSTOX_TM_DATA_1, SPECIES_DUSTOX_TM_DATA_2, SPECIES_DUSTOX_TM_DATA_3


mondata SPECIES_LOTAD
    basestats 40, 30, 30, 30, 40, 50
    types TYPE_WATER, TYPE_GRASS
    catchrate 255
    baseexp 74
    evyields 0, 0, 0, 0, 0, 1
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


mondata SPECIES_LOMBRE
    basestats 60, 50, 50, 50, 60, 70
    types TYPE_WATER, TYPE_GRASS
    catchrate 120
    baseexp 141
    evyields 0, 0, 0, 0, 0, 2
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


mondata SPECIES_LUDICOLO
    basestats 80, 70, 70, 70, 90, 100
    types TYPE_WATER, TYPE_GRASS
    catchrate 45
    baseexp 181
    evyields 0, 0, 0, 0, 0, 3
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


mondata SPECIES_SEEDOT
    basestats 40, 40, 50, 30, 30, 30
    types TYPE_GRASS, TYPE_GRASS
    catchrate 255
    baseexp 74
    evyields 0, 0, 1, 0, 0, 0
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


mondata SPECIES_NUZLEAF
    basestats 70, 70, 40, 60, 60, 40
    types TYPE_GRASS, TYPE_DARK
    catchrate 120
    baseexp 141
    evyields 0, 2, 0, 0, 0, 0
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


mondata SPECIES_SHIFTRY
    basestats 90, 100, 60, 80, 90, 60
    types TYPE_GRASS, TYPE_DARK
    catchrate 45
    baseexp 181
    evyields 0, 3, 0, 0, 0, 0
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


mondata SPECIES_TAILLOW
    basestats 40, 55, 30, 85, 30, 30
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 200
    baseexp 59
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_CHARTI_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_GUTS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_TAILLOW_TM_DATA_0, SPECIES_TAILLOW_TM_DATA_1, SPECIES_TAILLOW_TM_DATA_2, SPECIES_TAILLOW_TM_DATA_3


mondata SPECIES_SWELLOW
    basestats 60, 85, 60, 125, 75, 50
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 45
    baseexp 162
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_CHARTI_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_GUTS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SWELLOW_TM_DATA_0, SPECIES_SWELLOW_TM_DATA_1, SPECIES_SWELLOW_TM_DATA_2, SPECIES_SWELLOW_TM_DATA_3


mondata SPECIES_WINGULL
    basestats 40, 30, 30, 85, 55, 30
    types TYPE_WATER, TYPE_FLYING
    catchrate 190
    baseexp 64
    evyields 0, 0, 0, 1, 0, 0
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


mondata SPECIES_PELIPPER
    basestats 60, 50, 100, 65, 95, 70
    types TYPE_WATER, TYPE_FLYING
    catchrate 45
    baseexp 164
    evyields 0, 0, 2, 0, 0, 0
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


mondata SPECIES_RALTS
    basestats 28, 25, 25, 40, 45, 35
    types TYPE_PSYCHIC, FAIRY_TYPE_IMPLEMENTED ? TYPE_FAIRY : TYPE_PSYCHIC
    catchrate 235
    baseexp 70
    evyields 0, 0, 0, 0, 1, 0
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


mondata SPECIES_KIRLIA
    basestats 38, 35, 35, 50, 65, 55
    types TYPE_PSYCHIC, FAIRY_TYPE_IMPLEMENTED ? TYPE_FAIRY : TYPE_PSYCHIC
    catchrate 120
    baseexp 140
    evyields 0, 0, 0, 0, 2, 0
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


mondata SPECIES_GARDEVOIR
    basestats 68, 65, 65, 80, 125, 115
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
    abilities ABILITY_SYNCHRONIZE, ABILITY_TRACE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_GARDEVOIR_TM_DATA_0, SPECIES_GARDEVOIR_TM_DATA_1, SPECIES_GARDEVOIR_TM_DATA_2, SPECIES_GARDEVOIR_TM_DATA_3


mondata SPECIES_SURSKIT
    basestats 40, 30, 32, 65, 50, 52
    types TYPE_BUG, TYPE_WATER
    catchrate 200
    baseexp 63
    evyields 0, 0, 0, 1, 0, 0
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


mondata SPECIES_MASQUERAIN
    basestats 70, 60, 62, 80, 100, 82
    types TYPE_BUG, TYPE_FLYING
    catchrate 75
    baseexp 128
    evyields 0, 0, 0, 0, 1, 1
    items ITEM_NONE, ITEM_SILVERPOWDER
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_BUG
    abilities ABILITY_INTIMIDATE, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_MASQUERAIN_TM_DATA_0, SPECIES_MASQUERAIN_TM_DATA_1, SPECIES_MASQUERAIN_TM_DATA_2, SPECIES_MASQUERAIN_TM_DATA_3


mondata SPECIES_SHROOMISH
    basestats 60, 40, 60, 35, 40, 60
    types TYPE_GRASS, TYPE_GRASS
    catchrate 255
    baseexp 65
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_KEBIA_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
    abilities ABILITY_EFFECT_SPORE, ABILITY_POISON_HEAL
    runchance 120
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SHROOMISH_TM_DATA_0, SPECIES_SHROOMISH_TM_DATA_1, SPECIES_SHROOMISH_TM_DATA_2, SPECIES_SHROOMISH_TM_DATA_3


mondata SPECIES_BRELOOM
    basestats 60, 130, 80, 70, 60, 60
    types TYPE_GRASS, TYPE_FIGHTING
    catchrate 90
    baseexp 165
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_KEBIA_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
    abilities ABILITY_EFFECT_SPORE, ABILITY_POISON_HEAL
    runchance 90
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BRELOOM_TM_DATA_0, SPECIES_BRELOOM_TM_DATA_1, SPECIES_BRELOOM_TM_DATA_2, SPECIES_BRELOOM_TM_DATA_3


mondata SPECIES_SLAKOTH
    basestats 60, 60, 60, 30, 35, 35
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 83
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


mondata SPECIES_VIGOROTH
    basestats 80, 80, 80, 90, 55, 55
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 120
    baseexp 126
    evyields 0, 0, 0, 2, 0, 0
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


mondata SPECIES_SLAKING
    basestats 150, 160, 100, 100, 95, 65
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 210
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


mondata SPECIES_NINCADA
    basestats 31, 45, 90, 40, 30, 30
    types TYPE_BUG, TYPE_GROUND
    catchrate 255
    baseexp 65
    evyields 0, 0, 1, 0, 0, 0
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


mondata SPECIES_NINJASK
    basestats 61, 90, 45, 160, 50, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 120
    baseexp 155
    evyields 0, 0, 0, 2, 0, 0
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


mondata SPECIES_SHEDINJA
    basestats 1, 90, 45, 40, 30, 30
    types TYPE_BUG, TYPE_GHOST
    catchrate 45
    baseexp 95
    evyields 2, 0, 0, 0, 0, 0
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


mondata SPECIES_WHISMUR
    basestats 64, 51, 23, 28, 51, 23
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 190
    baseexp 68
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_CHESTO_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_SOUNDPROOF, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_WHISMUR_TM_DATA_0, SPECIES_WHISMUR_TM_DATA_1, SPECIES_WHISMUR_TM_DATA_2, SPECIES_WHISMUR_TM_DATA_3


mondata SPECIES_LOUDRED
    basestats 84, 71, 43, 48, 71, 43
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 120
    baseexp 126
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_CHESTO_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_SOUNDPROOF, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_LOUDRED_TM_DATA_0, SPECIES_LOUDRED_TM_DATA_1, SPECIES_LOUDRED_TM_DATA_2, SPECIES_LOUDRED_TM_DATA_3


mondata SPECIES_EXPLOUD
    basestats 104, 91, 63, 68, 91, 73
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 184
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_CHESTO_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_FIELD
    abilities ABILITY_SOUNDPROOF, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_EXPLOUD_TM_DATA_0, SPECIES_EXPLOUD_TM_DATA_1, SPECIES_EXPLOUD_TM_DATA_2, SPECIES_EXPLOUD_TM_DATA_3


mondata SPECIES_MAKUHITA
    basestats 72, 60, 30, 25, 20, 30
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 180
    baseexp 87
    evyields 1, 0, 0, 0, 0, 0
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


mondata SPECIES_HARIYAMA
    basestats 144, 120, 60, 50, 40, 60
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 200
    baseexp 184
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_KINGS_ROCK
    genderratio 63
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_THICK_FAT, ABILITY_GUTS
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_HARIYAMA_TM_DATA_0, SPECIES_HARIYAMA_TM_DATA_1, SPECIES_HARIYAMA_TM_DATA_2, SPECIES_HARIYAMA_TM_DATA_3


mondata SPECIES_AZURILL
    basestats 50, 20, 40, 20, 20, 40
    types TYPE_NORMAL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    catchrate 150
    baseexp 33
    evyields 1, 0, 0, 0, 0, 0
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


mondata SPECIES_NOSEPASS
    basestats 30, 45, 135, 30, 45, 90
    types TYPE_ROCK, TYPE_ROCK
    catchrate 255
    baseexp 108
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STURDY, ABILITY_MAGNET_PULL
    runchance 60
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_NOSEPASS_TM_DATA_0, SPECIES_NOSEPASS_TM_DATA_1, SPECIES_NOSEPASS_TM_DATA_2, SPECIES_NOSEPASS_TM_DATA_3


mondata SPECIES_SKITTY
    basestats 50, 45, 45, 50, 35, 35
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 65
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_LEPPA_BERRY
    genderratio 191
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_CUTE_CHARM, ABILITY_NORMALIZE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_SKITTY_TM_DATA_0, SPECIES_SKITTY_TM_DATA_1, SPECIES_SKITTY_TM_DATA_2, SPECIES_SKITTY_TM_DATA_3


mondata SPECIES_DELCATTY
    basestats 70, 65, 65, 90, 55, 55
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 60
    baseexp 138
    evyields 1, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_LEPPA_BERRY
    genderratio 191
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_CUTE_CHARM, ABILITY_NORMALIZE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_DELCATTY_TM_DATA_0, SPECIES_DELCATTY_TM_DATA_1, SPECIES_DELCATTY_TM_DATA_2, SPECIES_DELCATTY_TM_DATA_3


mondata SPECIES_SABLEYE
    basestats 50, 75, 75, 50, 65, 65
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
    abilities ABILITY_KEEN_EYE, ABILITY_STALL
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SABLEYE_TM_DATA_0, SPECIES_SABLEYE_TM_DATA_1, SPECIES_SABLEYE_TM_DATA_2, SPECIES_SABLEYE_TM_DATA_3


mondata SPECIES_MAWILE
    basestats 50, 85, 85, 50, 55, 55
    types TYPE_STEEL, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_STEEL
    catchrate 45
    baseexp 98
    evyields 0, 1, 1, 0, 0, 0
    items ITEM_NONE, ITEM_OCCA_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_HYPER_CUTTER, ABILITY_INTIMIDATE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_MAWILE_TM_DATA_0, SPECIES_MAWILE_TM_DATA_1, SPECIES_MAWILE_TM_DATA_2, SPECIES_MAWILE_TM_DATA_3


mondata SPECIES_ARON
    basestats 50, 70, 100, 30, 40, 40
    types TYPE_STEEL, TYPE_ROCK
    catchrate 180
    baseexp 96
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 35
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_STURDY, ABILITY_ROCK_HEAD
    runchance 90
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_ARON_TM_DATA_0, SPECIES_ARON_TM_DATA_1, SPECIES_ARON_TM_DATA_2, SPECIES_ARON_TM_DATA_3


mondata SPECIES_LAIRON
    basestats 60, 90, 140, 40, 50, 50
    types TYPE_STEEL, TYPE_ROCK
    catchrate 90
    baseexp 152
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 35
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_STURDY, ABILITY_ROCK_HEAD
    runchance 60
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_LAIRON_TM_DATA_0, SPECIES_LAIRON_TM_DATA_1, SPECIES_LAIRON_TM_DATA_2, SPECIES_LAIRON_TM_DATA_3


mondata SPECIES_AGGRON
    basestats 70, 110, 180, 50, 60, 60
    types TYPE_STEEL, TYPE_ROCK
    catchrate 45
    baseexp 205
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 35
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_STURDY, ABILITY_ROCK_HEAD
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_AGGRON_TM_DATA_0, SPECIES_AGGRON_TM_DATA_1, SPECIES_AGGRON_TM_DATA_2, SPECIES_AGGRON_TM_DATA_3


mondata SPECIES_MEDITITE
    basestats 30, 40, 55, 60, 40, 55
    types TYPE_FIGHTING, TYPE_PSYCHIC
    catchrate 180
    baseexp 91
    evyields 0, 0, 0, 1, 0, 0
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


mondata SPECIES_MEDICHAM
    basestats 60, 60, 75, 80, 60, 75
    types TYPE_FIGHTING, TYPE_PSYCHIC
    catchrate 90
    baseexp 153
    evyields 0, 0, 0, 2, 0, 0
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


mondata SPECIES_ELECTRIKE
    basestats 40, 45, 40, 65, 65, 40
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 120
    baseexp 104
    evyields 0, 0, 0, 1, 0, 0
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


mondata SPECIES_MANECTRIC
    basestats 70, 75, 60, 105, 105, 60
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 45
    baseexp 168
    evyields 0, 0, 0, 2, 0, 0
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


mondata SPECIES_PLUSLE
    basestats 60, 50, 40, 95, 85, 75
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 200
    baseexp 120
    evyields 0, 0, 0, 1, 0, 0
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


mondata SPECIES_MINUN
    basestats 60, 40, 50, 95, 75, 85
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 200
    baseexp 120
    evyields 0, 0, 0, 1, 0, 0
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


mondata SPECIES_VOLBEAT
    basestats 65, 73, 75, 85, 47, 85
    types TYPE_BUG, TYPE_BUG
    catchrate 150
    baseexp 146
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_BUG, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_ILLUMINATE, ABILITY_SWARM
    runchance 90
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_VOLBEAT_TM_DATA_0, SPECIES_VOLBEAT_TM_DATA_1, SPECIES_VOLBEAT_TM_DATA_2, SPECIES_VOLBEAT_TM_DATA_3


mondata SPECIES_ILLUMISE
    basestats 65, 47, 75, 85, 73, 85
    types TYPE_BUG, TYPE_BUG
    catchrate 150
    baseexp 146
    evyields 0, 0, 0, 1, 0, 0
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


mondata SPECIES_ROSELIA
    basestats 50, 60, 45, 65, 100, 80
    types TYPE_GRASS, TYPE_POISON
    catchrate 150
    baseexp 152
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_POISON_BARB
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
    abilities ABILITY_NATURAL_CURE, ABILITY_POISON_POINT
    runchance 60
    colorflip BODY_COLOR_GREEN, 1
    tmdata SPECIES_ROSELIA_TM_DATA_0, SPECIES_ROSELIA_TM_DATA_1, SPECIES_ROSELIA_TM_DATA_2, SPECIES_ROSELIA_TM_DATA_3


mondata SPECIES_GULPIN
    basestats 70, 43, 53, 40, 43, 53
    types TYPE_POISON, TYPE_POISON
    catchrate 225
    baseexp 75
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_BIG_PEARL
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LIQUID_OOZE, ABILITY_STICKY_HOLD
    runchance 120
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_GULPIN_TM_DATA_0, SPECIES_GULPIN_TM_DATA_1, SPECIES_GULPIN_TM_DATA_2, SPECIES_GULPIN_TM_DATA_3


mondata SPECIES_SWALOT
    basestats 100, 73, 83, 55, 73, 83
    types TYPE_POISON, TYPE_POISON
    catchrate 75
    baseexp 168
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_BIG_PEARL
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LIQUID_OOZE, ABILITY_STICKY_HOLD
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SWALOT_TM_DATA_0, SPECIES_SWALOT_TM_DATA_1, SPECIES_SWALOT_TM_DATA_2, SPECIES_SWALOT_TM_DATA_3


mondata SPECIES_CARVANHA
    basestats 45, 90, 20, 65, 65, 20
    types TYPE_WATER, TYPE_DARK
    catchrate 225
    baseexp 88
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_DEEPSEATOOTH
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_ROUGH_SKIN, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CARVANHA_TM_DATA_0, SPECIES_CARVANHA_TM_DATA_1, SPECIES_CARVANHA_TM_DATA_2, SPECIES_CARVANHA_TM_DATA_3


mondata SPECIES_SHARPEDO
    basestats 70, 120, 40, 95, 95, 40
    types TYPE_WATER, TYPE_DARK
    catchrate 60
    baseexp 175
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_DEEPSEATOOTH
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_ROUGH_SKIN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SHARPEDO_TM_DATA_0, SPECIES_SHARPEDO_TM_DATA_1, SPECIES_SHARPEDO_TM_DATA_2, SPECIES_SHARPEDO_TM_DATA_3


mondata SPECIES_WAILMER
    basestats 130, 70, 35, 60, 70, 35
    types TYPE_WATER, TYPE_WATER
    catchrate 125
    baseexp 137
    evyields 1, 0, 0, 0, 0, 0
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


mondata SPECIES_WAILORD
    basestats 170, 90, 45, 60, 90, 45
    types TYPE_WATER, TYPE_WATER
    catchrate 60
    baseexp 206
    evyields 2, 0, 0, 0, 0, 0
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


mondata SPECIES_NUMEL
    basestats 60, 60, 40, 35, 65, 45
    types TYPE_FIRE, TYPE_GROUND
    catchrate 255
    baseexp 88
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_RAWST_BERRY, ITEM_RAWST_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OBLIVIOUS, ABILITY_SIMPLE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_NUMEL_TM_DATA_0, SPECIES_NUMEL_TM_DATA_1, SPECIES_NUMEL_TM_DATA_2, SPECIES_NUMEL_TM_DATA_3


mondata SPECIES_CAMERUPT
    basestats 70, 100, 70, 40, 105, 75
    types TYPE_FIRE, TYPE_GROUND
    catchrate 150
    baseexp 175
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_RAWST_BERRY, ITEM_RAWST_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_MAGMA_ARMOR, ABILITY_SOLID_ROCK
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CAMERUPT_TM_DATA_0, SPECIES_CAMERUPT_TM_DATA_1, SPECIES_CAMERUPT_TM_DATA_2, SPECIES_CAMERUPT_TM_DATA_3


mondata SPECIES_TORKOAL
    basestats 70, 85, 140, 20, 85, 70
    types TYPE_FIRE, TYPE_FIRE
    catchrate 90
    baseexp 161
    evyields 0, 0, 2, 0, 0, 0
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


mondata SPECIES_SPOINK
    basestats 60, 25, 35, 60, 70, 80
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 255
    baseexp 89
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_TANGA_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_THICK_FAT, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SPOINK_TM_DATA_0, SPECIES_SPOINK_TM_DATA_1, SPECIES_SPOINK_TM_DATA_2, SPECIES_SPOINK_TM_DATA_3


mondata SPECIES_GRUMPIG
    basestats 80, 45, 65, 80, 90, 110
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 60
    baseexp 164
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_TANGA_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_THICK_FAT, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GRUMPIG_TM_DATA_0, SPECIES_GRUMPIG_TM_DATA_1, SPECIES_GRUMPIG_TM_DATA_2, SPECIES_GRUMPIG_TM_DATA_3


mondata SPECIES_SPINDA
    basestats 60, 60, 60, 60, 60, 60
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 85
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_CHESTO_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_OWN_TEMPO, ABILITY_TANGLED_FEET
    runchance 60
    colorflip BODY_COLOR_BROWN, 1
    tmdata SPECIES_SPINDA_TM_DATA_0, SPECIES_SPINDA_TM_DATA_1, SPECIES_SPINDA_TM_DATA_2, SPECIES_SPINDA_TM_DATA_3


mondata SPECIES_TRAPINCH
    basestats 45, 100, 45, 10, 45, 45
    types TYPE_GROUND, TYPE_GROUND
    catchrate 255
    baseexp 73
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_SOFT_SAND
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_HYPER_CUTTER, ABILITY_ARENA_TRAP
    runchance 120
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_TRAPINCH_TM_DATA_0, SPECIES_TRAPINCH_TM_DATA_1, SPECIES_TRAPINCH_TM_DATA_2, SPECIES_TRAPINCH_TM_DATA_3


mondata SPECIES_VIBRAVA
    basestats 50, 70, 50, 70, 50, 50
    types TYPE_GROUND, TYPE_DRAGON
    catchrate 120
    baseexp 126
    evyields 0, 1, 0, 1, 0, 0
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


mondata SPECIES_FLYGON
    basestats 80, 100, 80, 100, 80, 80
    types TYPE_GROUND, TYPE_DRAGON
    catchrate 45
    baseexp 197
    evyields 0, 1, 0, 2, 0, 0
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


mondata SPECIES_CACNEA
    basestats 50, 85, 40, 35, 85, 40
    types TYPE_GRASS, TYPE_GRASS
    catchrate 190
    baseexp 97
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_STICKY_BARB
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_SAND_VEIL, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CACNEA_TM_DATA_0, SPECIES_CACNEA_TM_DATA_1, SPECIES_CACNEA_TM_DATA_2, SPECIES_CACNEA_TM_DATA_3


mondata SPECIES_CACTURNE
    basestats 70, 115, 60, 55, 115, 60
    types TYPE_GRASS, TYPE_DARK
    catchrate 60
    baseexp 177
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_NONE, ITEM_STICKY_BARB
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_SAND_VEIL, ABILITY_NONE
    runchance 60
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CACTURNE_TM_DATA_0, SPECIES_CACTURNE_TM_DATA_1, SPECIES_CACTURNE_TM_DATA_2, SPECIES_CACTURNE_TM_DATA_3


mondata SPECIES_SWABLU
    basestats 45, 40, 60, 50, 40, 75
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 255
    baseexp 74
    evyields 0, 0, 0, 0, 0, 1
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


mondata SPECIES_ALTARIA
    basestats 75, 70, 90, 80, 70, 105
    types TYPE_DRAGON, TYPE_FLYING
    catchrate 45
    baseexp 188
    evyields 0, 0, 0, 0, 0, 2
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


mondata SPECIES_ZANGOOSE
    basestats 73, 115, 60, 90, 60, 60
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 90
    baseexp 165
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_QUICK_CLAW
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_IMMUNITY, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_WHITE, 1
    tmdata SPECIES_ZANGOOSE_TM_DATA_0, SPECIES_ZANGOOSE_TM_DATA_1, SPECIES_ZANGOOSE_TM_DATA_2, SPECIES_ZANGOOSE_TM_DATA_3


mondata SPECIES_SEVIPER
    basestats 73, 100, 60, 65, 100, 60
    types TYPE_POISON, TYPE_POISON
    catchrate 90
    baseexp 165
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FLUCTUATING
    egggroups EGG_GROUP_FIELD, EGG_GROUP_DRAGON
    abilities ABILITY_SHED_SKIN, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_BLACK, 1
    tmdata SPECIES_SEVIPER_TM_DATA_0, SPECIES_SEVIPER_TM_DATA_1, SPECIES_SEVIPER_TM_DATA_2, SPECIES_SEVIPER_TM_DATA_3


mondata SPECIES_LUNATONE
    basestats 90, 55, 65, 70, 95, 85
    types TYPE_ROCK, TYPE_PSYCHIC
    catchrate 45
    baseexp 150
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_MOON_STONE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 60
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_LUNATONE_TM_DATA_0, SPECIES_LUNATONE_TM_DATA_1, SPECIES_LUNATONE_TM_DATA_2, SPECIES_LUNATONE_TM_DATA_3


mondata SPECIES_SOLROCK
    basestats 90, 95, 85, 70, 55, 65
    types TYPE_ROCK, TYPE_PSYCHIC
    catchrate 45
    baseexp 150
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_SUN_STONE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 60
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_SOLROCK_TM_DATA_0, SPECIES_SOLROCK_TM_DATA_1, SPECIES_SOLROCK_TM_DATA_2, SPECIES_SOLROCK_TM_DATA_3


mondata SPECIES_BARBOACH
    basestats 50, 48, 43, 60, 46, 41
    types TYPE_WATER, TYPE_GROUND
    catchrate 190
    baseexp 92
    evyields 1, 0, 0, 0, 0, 0
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


mondata SPECIES_WHISCASH
    basestats 110, 78, 73, 60, 76, 71
    types TYPE_WATER, TYPE_GROUND
    catchrate 75
    baseexp 158
    evyields 2, 0, 0, 0, 0, 0
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


mondata SPECIES_CORPHISH
    basestats 43, 80, 65, 35, 50, 35
    types TYPE_WATER, TYPE_WATER
    catchrate 205
    baseexp 111
    evyields 0, 1, 0, 0, 0, 0
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


mondata SPECIES_CRAWDAUNT
    basestats 63, 120, 85, 55, 90, 55
    types TYPE_WATER, TYPE_DARK
    catchrate 155
    baseexp 161
    evyields 0, 2, 0, 0, 0, 0
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


mondata SPECIES_BALTOY
    basestats 40, 40, 55, 55, 40, 70
    types TYPE_GROUND, TYPE_PSYCHIC
    catchrate 255
    baseexp 58
    evyields 0, 0, 0, 0, 0, 1
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


mondata SPECIES_CLAYDOL
    basestats 60, 70, 105, 75, 70, 120
    types TYPE_GROUND, TYPE_PSYCHIC
    catchrate 90
    baseexp 189
    evyields 0, 0, 0, 0, 0, 2
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


mondata SPECIES_LILEEP
    basestats 66, 41, 77, 23, 61, 87
    types TYPE_ROCK, TYPE_GRASS
    catchrate 45
    baseexp 99
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_BIG_ROOT
    genderratio 31
    eggcycles 30
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_SUCTION_CUPS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_LILEEP_TM_DATA_0, SPECIES_LILEEP_TM_DATA_1, SPECIES_LILEEP_TM_DATA_2, SPECIES_LILEEP_TM_DATA_3


mondata SPECIES_CRADILY
    basestats 86, 81, 97, 43, 81, 107
    types TYPE_ROCK, TYPE_GRASS
    catchrate 45
    baseexp 199
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_BIG_ROOT
    genderratio 31
    eggcycles 30
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_SUCTION_CUPS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CRADILY_TM_DATA_0, SPECIES_CRADILY_TM_DATA_1, SPECIES_CRADILY_TM_DATA_2, SPECIES_CRADILY_TM_DATA_3


mondata SPECIES_ANORITH
    basestats 45, 95, 50, 75, 40, 50
    types TYPE_ROCK, TYPE_BUG
    catchrate 45
    baseexp 99
    evyields 0, 1, 0, 0, 0, 0
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


mondata SPECIES_ARMALDO
    basestats 75, 125, 100, 45, 70, 80
    types TYPE_ROCK, TYPE_BUG
    catchrate 45
    baseexp 199
    evyields 0, 2, 0, 0, 0, 0
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


mondata SPECIES_FEEBAS
    basestats 20, 15, 20, 80, 10, 55
    types TYPE_WATER, TYPE_WATER
    catchrate 255
    baseexp 61
    evyields 0, 0, 0, 1, 0, 0
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


mondata SPECIES_MILOTIC
    basestats 95, 60, 79, 81, 100, 125
    types TYPE_WATER, TYPE_WATER
    catchrate 60
    baseexp 213
    evyields 0, 0, 0, 0, 0, 2
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


mondata SPECIES_CASTFORM
    basestats 70, 70, 70, 70, 70, 70
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 145
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
    tmdata SPECIES_CASTFORM_TM_DATA_0, SPECIES_CASTFORM_TM_DATA_1, SPECIES_CASTFORM_TM_DATA_2, SPECIES_CASTFORM_TM_DATA_3


mondata SPECIES_KECLEON
    basestats 60, 90, 70, 40, 60, 120
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 200
    baseexp 132
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_PERSIM_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_COLOR_CHANGE, ABILITY_NONE
    runchance 120
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_KECLEON_TM_DATA_0, SPECIES_KECLEON_TM_DATA_1, SPECIES_KECLEON_TM_DATA_2, SPECIES_KECLEON_TM_DATA_3


mondata SPECIES_SHUPPET
    basestats 44, 75, 35, 45, 63, 33
    types TYPE_GHOST, TYPE_GHOST
    catchrate 225
    baseexp 97
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_SPELL_TAG
    genderratio 127
    eggcycles 25
    basefriendship 35
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_INSOMNIA, ABILITY_FRISK
    runchance 150
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SHUPPET_TM_DATA_0, SPECIES_SHUPPET_TM_DATA_1, SPECIES_SHUPPET_TM_DATA_2, SPECIES_SHUPPET_TM_DATA_3


mondata SPECIES_BANETTE
    basestats 64, 115, 65, 65, 83, 63
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
    abilities ABILITY_INSOMNIA, ABILITY_FRISK
    runchance 90
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_BANETTE_TM_DATA_0, SPECIES_BANETTE_TM_DATA_1, SPECIES_BANETTE_TM_DATA_2, SPECIES_BANETTE_TM_DATA_3


mondata SPECIES_DUSKULL
    basestats 20, 40, 90, 25, 30, 90
    types TYPE_GHOST, TYPE_GHOST
    catchrate 190
    baseexp 97
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_KASIB_BERRY
    genderratio 127
    eggcycles 25
    basefriendship 35
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 120
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_DUSKULL_TM_DATA_0, SPECIES_DUSKULL_TM_DATA_1, SPECIES_DUSKULL_TM_DATA_2, SPECIES_DUSKULL_TM_DATA_3


mondata SPECIES_DUSCLOPS
    basestats 40, 70, 130, 25, 60, 130
    types TYPE_GHOST, TYPE_GHOST
    catchrate 90
    baseexp 179
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_KASIB_BERRY
    genderratio 127
    eggcycles 25
    basefriendship 35
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_DUSCLOPS_TM_DATA_0, SPECIES_DUSCLOPS_TM_DATA_1, SPECIES_DUSCLOPS_TM_DATA_2, SPECIES_DUSCLOPS_TM_DATA_3


mondata SPECIES_TROPIUS
    basestats 99, 68, 83, 51, 72, 87
    types TYPE_GRASS, TYPE_FLYING
    catchrate 200
    baseexp 169
    evyields 2, 0, 0, 0, 0, 0
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


mondata SPECIES_CHIMECHO
    basestats 75, 50, 80, 65, 95, 90
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 45
    baseexp 147
    evyields 0, 0, 0, 0, 1, 1
    items ITEM_NONE, ITEM_COLBUR_BERRY
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CHIMECHO_TM_DATA_0, SPECIES_CHIMECHO_TM_DATA_1, SPECIES_CHIMECHO_TM_DATA_2, SPECIES_CHIMECHO_TM_DATA_3


mondata SPECIES_ABSOL
    basestats 65, 130, 60, 75, 75, 60
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
    abilities ABILITY_PRESSURE, ABILITY_SUPER_LUCK
    runchance 0
    colorflip BODY_COLOR_WHITE, 1
    tmdata SPECIES_ABSOL_TM_DATA_0, SPECIES_ABSOL_TM_DATA_1, SPECIES_ABSOL_TM_DATA_2, SPECIES_ABSOL_TM_DATA_3


mondata SPECIES_WYNAUT
    basestats 95, 23, 48, 23, 23, 48
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 125
    baseexp 44
    evyields 1, 0, 0, 0, 0, 0
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


mondata SPECIES_SNORUNT
    basestats 50, 50, 50, 50, 50, 50
    types TYPE_ICE, TYPE_ICE
    catchrate 190
    baseexp 74
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_BABIRI_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_MINERAL
    abilities ABILITY_INNER_FOCUS, ABILITY_ICE_BODY
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_SNORUNT_TM_DATA_0, SPECIES_SNORUNT_TM_DATA_1, SPECIES_SNORUNT_TM_DATA_2, SPECIES_SNORUNT_TM_DATA_3


mondata SPECIES_GLALIE
    basestats 80, 80, 80, 80, 80, 80
    types TYPE_ICE, TYPE_ICE
    catchrate 75
    baseexp 187
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_BABIRI_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_MINERAL
    abilities ABILITY_INNER_FOCUS, ABILITY_ICE_BODY
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_GLALIE_TM_DATA_0, SPECIES_GLALIE_TM_DATA_1, SPECIES_GLALIE_TM_DATA_2, SPECIES_GLALIE_TM_DATA_3


mondata SPECIES_SPHEAL
    basestats 70, 40, 50, 25, 55, 50
    types TYPE_ICE, TYPE_WATER
    catchrate 255
    baseexp 75
    evyields 1, 0, 0, 0, 0, 0
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


mondata SPECIES_SEALEO
    basestats 90, 60, 70, 45, 75, 70
    types TYPE_ICE, TYPE_WATER
    catchrate 120
    baseexp 128
    evyields 2, 0, 0, 0, 0, 0
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


mondata SPECIES_WALREIN
    basestats 110, 80, 90, 65, 95, 90
    types TYPE_ICE, TYPE_WATER
    catchrate 45
    baseexp 192
    evyields 3, 0, 0, 0, 0, 0
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


mondata SPECIES_CLAMPERL
    basestats 35, 64, 85, 32, 74, 55
    types TYPE_WATER, TYPE_WATER
    catchrate 255
    baseexp 142
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_BIG_PEARL
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_SHELL_ARMOR, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CLAMPERL_TM_DATA_0, SPECIES_CLAMPERL_TM_DATA_1, SPECIES_CLAMPERL_TM_DATA_2, SPECIES_CLAMPERL_TM_DATA_3


mondata SPECIES_HUNTAIL
    basestats 55, 104, 105, 52, 94, 75
    types TYPE_WATER, TYPE_WATER
    catchrate 60
    baseexp 178
    evyields 0, 1, 1, 0, 0, 0
    items ITEM_NONE, ITEM_DEEPSEATOOTH
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_HUNTAIL_TM_DATA_0, SPECIES_HUNTAIL_TM_DATA_1, SPECIES_HUNTAIL_TM_DATA_2, SPECIES_HUNTAIL_TM_DATA_3


mondata SPECIES_GOREBYSS
    basestats 55, 84, 105, 52, 114, 75
    types TYPE_WATER, TYPE_WATER
    catchrate 60
    baseexp 178
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_DEEPSEASCALE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_GOREBYSS_TM_DATA_0, SPECIES_GOREBYSS_TM_DATA_1, SPECIES_GOREBYSS_TM_DATA_2, SPECIES_GOREBYSS_TM_DATA_3


mondata SPECIES_RELICANTH
    basestats 100, 90, 130, 55, 45, 65
    types TYPE_WATER, TYPE_ROCK
    catchrate 25
    baseexp 198
    evyields 1, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_DEEPSEASCALE
    genderratio 31
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_2
    abilities ABILITY_SWIFT_SWIM, ABILITY_ROCK_HEAD
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_RELICANTH_TM_DATA_0, SPECIES_RELICANTH_TM_DATA_1, SPECIES_RELICANTH_TM_DATA_2, SPECIES_RELICANTH_TM_DATA_3


mondata SPECIES_LUVDISC
    basestats 43, 30, 55, 97, 40, 65
    types TYPE_WATER, TYPE_WATER
    catchrate 225
    baseexp 110
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_HEART_SCALE, ITEM_NONE
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_LUVDISC_TM_DATA_0, SPECIES_LUVDISC_TM_DATA_1, SPECIES_LUVDISC_TM_DATA_2, SPECIES_LUVDISC_TM_DATA_3


mondata SPECIES_BAGON
    basestats 45, 75, 60, 50, 40, 30
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 89
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_DRAGON_FANG
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_ROCK_HEAD, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_BAGON_TM_DATA_0, SPECIES_BAGON_TM_DATA_1, SPECIES_BAGON_TM_DATA_2, SPECIES_BAGON_TM_DATA_3


mondata SPECIES_SHELGON
    basestats 65, 95, 100, 50, 60, 50
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 144
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_DRAGON_FANG
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_ROCK_HEAD, ABILITY_NONE
    runchance 120
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SHELGON_TM_DATA_0, SPECIES_SHELGON_TM_DATA_1, SPECIES_SHELGON_TM_DATA_2, SPECIES_SHELGON_TM_DATA_3


mondata SPECIES_SALAMENCE
    basestats 95, 135, 80, 100, 110, 80
    types TYPE_DRAGON, TYPE_FLYING
    catchrate 45
    baseexp 218
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_DRAGON_FANG
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_INTIMIDATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SALAMENCE_TM_DATA_0, SPECIES_SALAMENCE_TM_DATA_1, SPECIES_SALAMENCE_TM_DATA_2, SPECIES_SALAMENCE_TM_DATA_3


mondata SPECIES_BELDUM
    basestats 40, 55, 80, 30, 35, 60
    types TYPE_STEEL, TYPE_PSYCHIC
    catchrate 3
    baseexp 103
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_METAL_COAT
    genderratio 255
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_CLEAR_BODY, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_BELDUM_TM_DATA_0, SPECIES_BELDUM_TM_DATA_1, SPECIES_BELDUM_TM_DATA_2, SPECIES_BELDUM_TM_DATA_3


mondata SPECIES_METANG
    basestats 60, 75, 100, 50, 55, 80
    types TYPE_STEEL, TYPE_PSYCHIC
    catchrate 3
    baseexp 153
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_METAL_COAT
    genderratio 255
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_CLEAR_BODY, ABILITY_NONE
    runchance 60
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_METANG_TM_DATA_0, SPECIES_METANG_TM_DATA_1, SPECIES_METANG_TM_DATA_2, SPECIES_METANG_TM_DATA_3


mondata SPECIES_METAGROSS
    basestats 80, 135, 130, 70, 95, 90
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
    abilities ABILITY_CLEAR_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_METAGROSS_TM_DATA_0, SPECIES_METAGROSS_TM_DATA_1, SPECIES_METAGROSS_TM_DATA_2, SPECIES_METAGROSS_TM_DATA_3


mondata SPECIES_REGIROCK
    basestats 80, 100, 200, 50, 50, 100
    types TYPE_ROCK, TYPE_ROCK
    catchrate 3
    baseexp 217
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


mondata SPECIES_REGICE
    basestats 80, 50, 100, 50, 100, 200
    types TYPE_ICE, TYPE_ICE
    catchrate 3
    baseexp 216
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


mondata SPECIES_REGISTEEL
    basestats 80, 75, 150, 50, 75, 150
    types TYPE_STEEL, TYPE_STEEL
    catchrate 3
    baseexp 215
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


mondata SPECIES_LATIAS
    basestats 80, 80, 90, 110, 110, 130
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
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_LATIAS_TM_DATA_0, SPECIES_LATIAS_TM_DATA_1, SPECIES_LATIAS_TM_DATA_2, SPECIES_LATIAS_TM_DATA_3


mondata SPECIES_LATIOS
    basestats 80, 90, 80, 110, 130, 110
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
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_LATIOS_TM_DATA_0, SPECIES_LATIOS_TM_DATA_1, SPECIES_LATIOS_TM_DATA_2, SPECIES_LATIOS_TM_DATA_3


mondata SPECIES_KYOGRE
    basestats 100, 100, 90, 90, 150, 140
    types TYPE_WATER, TYPE_WATER
    catchrate 5
    baseexp 218
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


mondata SPECIES_GROUDON
    basestats 100, 150, 140, 90, 100, 90
    types TYPE_GROUND, TYPE_GROUND
    catchrate 5
    baseexp 218
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


mondata SPECIES_RAYQUAZA
    basestats 105, 150, 90, 95, 150, 90
    types TYPE_DRAGON, TYPE_FLYING
    catchrate 3
    baseexp 220
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


mondata SPECIES_JIRACHI
    basestats 100, 100, 100, 100, 100, 100
    types TYPE_STEEL, TYPE_PSYCHIC
    catchrate 3
    baseexp 215
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_STAR_PIECE, ITEM_STAR_PIECE
    genderratio 255
    eggcycles 120
    basefriendship 100
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_SERENE_GRACE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_JIRACHI_TM_DATA_0, SPECIES_JIRACHI_TM_DATA_1, SPECIES_JIRACHI_TM_DATA_2, SPECIES_JIRACHI_TM_DATA_3


mondata SPECIES_DEOXYS
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


mondata SPECIES_TURTWIG
    basestats 55, 68, 64, 31, 45, 55
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 64
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


mondata SPECIES_GROTLE
    basestats 75, 89, 85, 36, 55, 65
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 141
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


mondata SPECIES_TORTERRA
    basestats 95, 109, 105, 56, 75, 85
    types TYPE_GRASS, TYPE_GROUND
    catchrate 45
    baseexp 208
    evyields 0, 2, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_OVERGROW, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 1
    tmdata SPECIES_TORTERRA_TM_DATA_0, SPECIES_TORTERRA_TM_DATA_1, SPECIES_TORTERRA_TM_DATA_2, SPECIES_TORTERRA_TM_DATA_3


mondata SPECIES_CHIMCHAR
    basestats 44, 58, 44, 61, 58, 44
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 65
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 1
    tmdata SPECIES_CHIMCHAR_TM_DATA_0, SPECIES_CHIMCHAR_TM_DATA_1, SPECIES_CHIMCHAR_TM_DATA_2, SPECIES_CHIMCHAR_TM_DATA_3


mondata SPECIES_MONFERNO
    basestats 64, 78, 52, 81, 78, 52
    types TYPE_FIRE, TYPE_FIGHTING
    catchrate 45
    baseexp 142
    evyields 0, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_BLAZE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 1
    tmdata SPECIES_MONFERNO_TM_DATA_0, SPECIES_MONFERNO_TM_DATA_1, SPECIES_MONFERNO_TM_DATA_2, SPECIES_MONFERNO_TM_DATA_3


mondata SPECIES_INFERNAPE
    basestats 76, 104, 71, 108, 104, 71
    types TYPE_FIRE, TYPE_FIGHTING
    catchrate 45
    baseexp 209
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


mondata SPECIES_PIPLUP
    basestats 53, 51, 53, 40, 61, 56
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 66
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


mondata SPECIES_PRINPLUP
    basestats 64, 66, 68, 50, 81, 76
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 143
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


mondata SPECIES_EMPOLEON
    basestats 84, 86, 88, 60, 111, 101
    types TYPE_WATER, TYPE_STEEL
    catchrate 45
    baseexp 210
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


mondata SPECIES_STARLY
    basestats 40, 55, 30, 60, 30, 30
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 255
    baseexp 56
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_YACHE_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_STARLY_TM_DATA_0, SPECIES_STARLY_TM_DATA_1, SPECIES_STARLY_TM_DATA_2, SPECIES_STARLY_TM_DATA_3


mondata SPECIES_STARAVIA
    basestats 55, 75, 50, 80, 40, 40
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 120
    baseexp 113
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_YACHE_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_INTIMIDATE, ABILITY_NONE
    runchance 60
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_STARAVIA_TM_DATA_0, SPECIES_STARAVIA_TM_DATA_1, SPECIES_STARAVIA_TM_DATA_2, SPECIES_STARAVIA_TM_DATA_3


mondata SPECIES_STARAPTOR
    basestats 85, 120, 70, 100, 50, 60
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 45
    baseexp 172
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_YACHE_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_INTIMIDATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_STARAPTOR_TM_DATA_0, SPECIES_STARAPTOR_TM_DATA_1, SPECIES_STARAPTOR_TM_DATA_2, SPECIES_STARAPTOR_TM_DATA_3


mondata SPECIES_BIDOOF
    basestats 59, 45, 40, 31, 35, 40
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 58
    evyields 1, 0, 0, 0, 0, 0
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


mondata SPECIES_BIBAREL
    basestats 79, 85, 60, 71, 55, 60
    types TYPE_NORMAL, TYPE_WATER
    catchrate 127
    baseexp 116
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_ORAN_BERRY, ITEM_SITRUS_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_SIMPLE, ABILITY_UNAWARE
    runchance 60
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BIBAREL_TM_DATA_0, SPECIES_BIBAREL_TM_DATA_1, SPECIES_BIBAREL_TM_DATA_2, SPECIES_BIBAREL_TM_DATA_3


mondata SPECIES_KRICKETOT
    basestats 37, 25, 41, 25, 25, 41
    types TYPE_BUG, TYPE_BUG
    catchrate 255
    baseexp 54
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_METRONOME
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHED_SKIN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_KRICKETOT_TM_DATA_0, SPECIES_KRICKETOT_TM_DATA_1, SPECIES_KRICKETOT_TM_DATA_2, SPECIES_KRICKETOT_TM_DATA_3


mondata SPECIES_KRICKETUNE
    basestats 77, 85, 51, 65, 55, 51
    types TYPE_BUG, TYPE_BUG
    catchrate 45
    baseexp 159
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_METRONOME
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_KRICKETUNE_TM_DATA_0, SPECIES_KRICKETUNE_TM_DATA_1, SPECIES_KRICKETUNE_TM_DATA_2, SPECIES_KRICKETUNE_TM_DATA_3


mondata SPECIES_SHINX
    basestats 45, 65, 34, 45, 40, 34
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 235
    baseexp 60
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RIVALRY, ABILITY_INTIMIDATE
    runchance 120
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SHINX_TM_DATA_0, SPECIES_SHINX_TM_DATA_1, SPECIES_SHINX_TM_DATA_2, SPECIES_SHINX_TM_DATA_3


mondata SPECIES_LUXIO
    basestats 60, 85, 49, 60, 60, 49
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 120
    baseexp 117
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 100
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RIVALRY, ABILITY_INTIMIDATE
    runchance 90
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_LUXIO_TM_DATA_0, SPECIES_LUXIO_TM_DATA_1, SPECIES_LUXIO_TM_DATA_2, SPECIES_LUXIO_TM_DATA_3


mondata SPECIES_LUXRAY
    basestats 80, 120, 79, 70, 95, 79
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 45
    baseexp 194
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RIVALRY, ABILITY_INTIMIDATE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_LUXRAY_TM_DATA_0, SPECIES_LUXRAY_TM_DATA_1, SPECIES_LUXRAY_TM_DATA_2, SPECIES_LUXRAY_TM_DATA_3


mondata SPECIES_BUDEW
    basestats 40, 30, 35, 55, 50, 70
    types TYPE_GRASS, TYPE_POISON
    catchrate 255
    baseexp 68
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_POISON_BARB
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_NATURAL_CURE, ABILITY_POISON_POINT
    runchance 120
    colorflip BODY_COLOR_GREEN, 1
    tmdata SPECIES_BUDEW_TM_DATA_0, SPECIES_BUDEW_TM_DATA_1, SPECIES_BUDEW_TM_DATA_2, SPECIES_BUDEW_TM_DATA_3


mondata SPECIES_ROSERADE
    basestats 60, 70, 65, 90, 125, 105
    types TYPE_GRASS, TYPE_POISON
    catchrate 75
    baseexp 204
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_POISON_BARB
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
    abilities ABILITY_NATURAL_CURE, ABILITY_POISON_POINT
    runchance 0
    colorflip BODY_COLOR_GREEN, 1
    tmdata SPECIES_ROSERADE_TM_DATA_0, SPECIES_ROSERADE_TM_DATA_1, SPECIES_ROSERADE_TM_DATA_2, SPECIES_ROSERADE_TM_DATA_3


mondata SPECIES_CRANIDOS
    basestats 67, 125, 40, 58, 30, 30
    types TYPE_ROCK, TYPE_ROCK
    catchrate 45
    baseexp 99
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


mondata SPECIES_RAMPARDOS
    basestats 97, 165, 60, 58, 65, 50
    types TYPE_ROCK, TYPE_ROCK
    catchrate 45
    baseexp 199
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


mondata SPECIES_SHIELDON
    basestats 30, 42, 118, 30, 42, 88
    types TYPE_ROCK, TYPE_STEEL
    catchrate 45
    baseexp 99
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


mondata SPECIES_BASTIODON
    basestats 60, 52, 168, 30, 47, 138
    types TYPE_ROCK, TYPE_STEEL
    catchrate 45
    baseexp 199
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


mondata SPECIES_BURMY
    basestats 40, 29, 45, 36, 29, 45
    types TYPE_BUG, TYPE_BUG
    catchrate 120
    baseexp 61
    evyields 0, 0, 0, 0, 0, 1
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


mondata SPECIES_WORMADAM
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


mondata SPECIES_MOTHIM
    basestats 70, 94, 50, 66, 94, 50
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 159
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_NONE, ITEM_SILVERPOWDER
    genderratio 0
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_MOTHIM_TM_DATA_0, SPECIES_MOTHIM_TM_DATA_1, SPECIES_MOTHIM_TM_DATA_2, SPECIES_MOTHIM_TM_DATA_3


mondata SPECIES_COMBEE
    basestats 30, 30, 42, 70, 30, 42
    types TYPE_BUG, TYPE_FLYING
    catchrate 120
    baseexp 63
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_HONEY, ITEM_HONEY
    genderratio 31
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_HONEY_GATHER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_COMBEE_TM_DATA_0, SPECIES_COMBEE_TM_DATA_1, SPECIES_COMBEE_TM_DATA_2, SPECIES_COMBEE_TM_DATA_3


mondata SPECIES_VESPIQUEN
    basestats 70, 80, 102, 40, 80, 102
    types TYPE_BUG, TYPE_FLYING
    catchrate 45
    baseexp 188
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_POISON_BARB
    genderratio 254
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_VESPIQUEN_TM_DATA_0, SPECIES_VESPIQUEN_TM_DATA_1, SPECIES_VESPIQUEN_TM_DATA_2, SPECIES_VESPIQUEN_TM_DATA_3


mondata SPECIES_PACHIRISU
    basestats 60, 45, 70, 95, 45, 90
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 200
    baseexp 120
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 10
    basefriendship 100
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_RUN_AWAY, ABILITY_PICKUP
    runchance 120
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_PACHIRISU_TM_DATA_0, SPECIES_PACHIRISU_TM_DATA_1, SPECIES_PACHIRISU_TM_DATA_2, SPECIES_PACHIRISU_TM_DATA_3


mondata SPECIES_BUIZEL
    basestats 55, 65, 35, 85, 60, 30
    types TYPE_WATER, TYPE_WATER
    catchrate 190
    baseexp 75
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_WACAN_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
    runchance 120
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BUIZEL_TM_DATA_0, SPECIES_BUIZEL_TM_DATA_1, SPECIES_BUIZEL_TM_DATA_2, SPECIES_BUIZEL_TM_DATA_3


mondata SPECIES_FLOATZEL
    basestats 85, 105, 55, 115, 85, 50
    types TYPE_WATER, TYPE_WATER
    catchrate 75
    baseexp 178
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_WACAN_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_SWIFT_SWIM, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_FLOATZEL_TM_DATA_0, SPECIES_FLOATZEL_TM_DATA_1, SPECIES_FLOATZEL_TM_DATA_2, SPECIES_FLOATZEL_TM_DATA_3


mondata SPECIES_CHERUBI
    basestats 45, 35, 45, 35, 62, 53
    types TYPE_GRASS, TYPE_GRASS
    catchrate 190
    baseexp 68
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_MIRACLE_SEED
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_CHERUBI_TM_DATA_0, SPECIES_CHERUBI_TM_DATA_1, SPECIES_CHERUBI_TM_DATA_2, SPECIES_CHERUBI_TM_DATA_3


mondata SPECIES_CHERRIM
    basestats 70, 60, 70, 85, 87, 78
    types TYPE_GRASS, TYPE_GRASS
    catchrate 75
    baseexp 133
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
    tmdata SPECIES_CHERRIM_TM_DATA_0, SPECIES_CHERRIM_TM_DATA_1, SPECIES_CHERRIM_TM_DATA_2, SPECIES_CHERRIM_TM_DATA_3


mondata SPECIES_SHELLOS
    basestats 76, 48, 48, 34, 57, 62
    types TYPE_WATER, TYPE_WATER
    catchrate 190
    baseexp 73
    evyields 1, 0, 0, 0, 0, 0
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


mondata SPECIES_GASTRODON
    basestats 111, 83, 68, 39, 92, 82
    types TYPE_WATER, TYPE_GROUND
    catchrate 75
    baseexp 176
    evyields 2, 0, 0, 0, 0, 0
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


mondata SPECIES_AMBIPOM
    basestats 75, 100, 66, 115, 60, 66
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 186
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


mondata SPECIES_DRIFLOON
    basestats 90, 50, 34, 70, 60, 44
    types TYPE_GHOST, TYPE_FLYING
    catchrate 125
    baseexp 127
    evyields 1, 0, 0, 0, 0, 0
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


mondata SPECIES_DRIFBLIM
    basestats 150, 80, 44, 80, 90, 54
    types TYPE_GHOST, TYPE_FLYING
    catchrate 60
    baseexp 204
    evyields 2, 0, 0, 0, 0, 0
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


mondata SPECIES_BUNEARY
    basestats 55, 66, 44, 85, 44, 56
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 190
    baseexp 84
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_CHOPLE_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 0
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_RUN_AWAY, ABILITY_KLUTZ
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BUNEARY_TM_DATA_0, SPECIES_BUNEARY_TM_DATA_1, SPECIES_BUNEARY_TM_DATA_2, SPECIES_BUNEARY_TM_DATA_3


mondata SPECIES_LOPUNNY
    basestats 65, 76, 84, 105, 54, 96
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 60
    baseexp 178
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_CHOPLE_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 140
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_CUTE_CHARM, ABILITY_KLUTZ
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_LOPUNNY_TM_DATA_0, SPECIES_LOPUNNY_TM_DATA_1, SPECIES_LOPUNNY_TM_DATA_2, SPECIES_LOPUNNY_TM_DATA_3


mondata SPECIES_MISMAGIUS
    basestats 60, 60, 60, 105, 105, 105
    types TYPE_GHOST, TYPE_GHOST
    catchrate 45
    baseexp 187
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


mondata SPECIES_HONCHKROW
    basestats 100, 125, 52, 71, 105, 52
    types TYPE_DARK, TYPE_FLYING
    catchrate 30
    baseexp 187
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


mondata SPECIES_GLAMEOW
    basestats 49, 55, 42, 85, 42, 37
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 190
    baseexp 71
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_CHERI_BERRY
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_LIMBER, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_GLAMEOW_TM_DATA_0, SPECIES_GLAMEOW_TM_DATA_1, SPECIES_GLAMEOW_TM_DATA_2, SPECIES_GLAMEOW_TM_DATA_3


mondata SPECIES_PURUGLY
    basestats 71, 82, 64, 112, 64, 59
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 75
    baseexp 183
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_CHERI_BERRY
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_THICK_FAT, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_PURUGLY_TM_DATA_0, SPECIES_PURUGLY_TM_DATA_1, SPECIES_PURUGLY_TM_DATA_2, SPECIES_PURUGLY_TM_DATA_3


mondata SPECIES_CHINGLING
    basestats 45, 30, 50, 45, 65, 50
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 120
    baseexp 74
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_COLBUR_BERRY
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 120
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_CHINGLING_TM_DATA_0, SPECIES_CHINGLING_TM_DATA_1, SPECIES_CHINGLING_TM_DATA_2, SPECIES_CHINGLING_TM_DATA_3


mondata SPECIES_STUNKY
    basestats 63, 63, 47, 74, 41, 41
    types TYPE_POISON, TYPE_DARK
    catchrate 225
    baseexp 79
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_PECHA_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_STENCH, ABILITY_AFTERMATH
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_STUNKY_TM_DATA_0, SPECIES_STUNKY_TM_DATA_1, SPECIES_STUNKY_TM_DATA_2, SPECIES_STUNKY_TM_DATA_3


mondata SPECIES_SKUNTANK
    basestats 103, 93, 67, 84, 71, 61
    types TYPE_POISON, TYPE_DARK
    catchrate 60
    baseexp 209
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_PECHA_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_STENCH, ABILITY_AFTERMATH
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SKUNTANK_TM_DATA_0, SPECIES_SKUNTANK_TM_DATA_1, SPECIES_SKUNTANK_TM_DATA_2, SPECIES_SKUNTANK_TM_DATA_3


mondata SPECIES_BRONZOR
    basestats 57, 24, 86, 23, 24, 86
    types TYPE_STEEL, TYPE_PSYCHIC
    catchrate 255
    baseexp 72
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_METAL_COAT
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_LEVITATE, ABILITY_HEATPROOF
    runchance 90
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BRONZOR_TM_DATA_0, SPECIES_BRONZOR_TM_DATA_1, SPECIES_BRONZOR_TM_DATA_2, SPECIES_BRONZOR_TM_DATA_3


mondata SPECIES_BRONZONG
    basestats 67, 89, 116, 33, 79, 116
    types TYPE_STEEL, TYPE_PSYCHIC
    catchrate 90
    baseexp 188
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_METAL_COAT
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_LEVITATE, ABILITY_HEATPROOF
    runchance 60
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BRONZONG_TM_DATA_0, SPECIES_BRONZONG_TM_DATA_1, SPECIES_BRONZONG_TM_DATA_2, SPECIES_BRONZONG_TM_DATA_3


mondata SPECIES_BONSLY
    basestats 50, 80, 95, 10, 10, 45
    types TYPE_ROCK, TYPE_ROCK
    catchrate 255
    baseexp 68
    evyields 0, 0, 1, 0, 0, 0
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


mondata SPECIES_MIMEJR
    basestats 20, 25, 45, 60, 70, 90
    types TYPE_PSYCHIC, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_PSYCHIC
    catchrate 145
    baseexp 78
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_LEPPA_BERRY
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_SOUNDPROOF, ABILITY_FILTER
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_MIMEJR_TM_DATA_0, SPECIES_MIMEJR_TM_DATA_1, SPECIES_MIMEJR_TM_DATA_2, SPECIES_MIMEJR_TM_DATA_3


mondata SPECIES_HAPPINY
    basestats 100, 5, 5, 30, 15, 65
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 130
    baseexp 255
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_OVAL_STONE, ITEM_LUCKY_PUNCH
    genderratio 254
    eggcycles 40
    basefriendship 140
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_NATURAL_CURE, ABILITY_SERENE_GRACE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_HAPPINY_TM_DATA_0, SPECIES_HAPPINY_TM_DATA_1, SPECIES_HAPPINY_TM_DATA_2, SPECIES_HAPPINY_TM_DATA_3


mondata SPECIES_CHATOT
    basestats 76, 65, 45, 91, 92, 42
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 30
    baseexp 107
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_METRONOME
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_TANGLED_FEET
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_CHATOT_TM_DATA_0, SPECIES_CHATOT_TM_DATA_1, SPECIES_CHATOT_TM_DATA_2, SPECIES_CHATOT_TM_DATA_3


mondata SPECIES_SPIRITOMB
    basestats 50, 92, 108, 35, 92, 108
    types TYPE_GHOST, TYPE_DARK
    catchrate 100
    baseexp 168
    evyields 0, 0, 1, 0, 0, 1
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


mondata SPECIES_GIBLE
    basestats 58, 70, 45, 42, 40, 45
    types TYPE_DRAGON, TYPE_GROUND
    catchrate 45
    baseexp 67
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_HABAN_BERRY
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_SAND_VEIL, ABILITY_NONE
    runchance 90
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_GIBLE_TM_DATA_0, SPECIES_GIBLE_TM_DATA_1, SPECIES_GIBLE_TM_DATA_2, SPECIES_GIBLE_TM_DATA_3


mondata SPECIES_GABITE
    basestats 68, 90, 65, 82, 50, 55
    types TYPE_DRAGON, TYPE_GROUND
    catchrate 45
    baseexp 144
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_HABAN_BERRY
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_SAND_VEIL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_GABITE_TM_DATA_0, SPECIES_GABITE_TM_DATA_1, SPECIES_GABITE_TM_DATA_2, SPECIES_GABITE_TM_DATA_3


mondata SPECIES_GARCHOMP
    basestats 108, 130, 95, 102, 80, 85
    types TYPE_DRAGON, TYPE_GROUND
    catchrate 45
    baseexp 218
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_HABAN_BERRY
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_SAND_VEIL, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_GARCHOMP_TM_DATA_0, SPECIES_GARCHOMP_TM_DATA_1, SPECIES_GARCHOMP_TM_DATA_2, SPECIES_GARCHOMP_TM_DATA_3


mondata SPECIES_MUNCHLAX
    basestats 135, 85, 40, 5, 40, 85
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 50
    baseexp 94
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_LEFTOVERS, ITEM_LEFTOVERS
    genderratio 31
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PICKUP, ABILITY_THICK_FAT
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_MUNCHLAX_TM_DATA_0, SPECIES_MUNCHLAX_TM_DATA_1, SPECIES_MUNCHLAX_TM_DATA_2, SPECIES_MUNCHLAX_TM_DATA_3


mondata SPECIES_RIOLU
    basestats 40, 70, 40, 60, 35, 40
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 75
    baseexp 72
    evyields 0, 1, 0, 0, 0, 0
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


mondata SPECIES_LUCARIO
    basestats 70, 110, 70, 90, 115, 70
    types TYPE_FIGHTING, TYPE_STEEL
    catchrate 45
    baseexp 204
    evyields 0, 1, 0, 0, 1, 0
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


mondata SPECIES_HIPPOPOTAS
    basestats 68, 72, 78, 32, 38, 42
    types TYPE_GROUND, TYPE_GROUND
    catchrate 140
    baseexp 95
    evyields 0, 0, 1, 0, 0, 0
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


mondata SPECIES_HIPPOWDON
    basestats 108, 112, 118, 47, 68, 72
    types TYPE_GROUND, TYPE_GROUND
    catchrate 60
    baseexp 198
    evyields 0, 0, 2, 0, 0, 0
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


mondata SPECIES_SKORUPI
    basestats 40, 50, 90, 65, 30, 55
    types TYPE_POISON, TYPE_BUG
    catchrate 120
    baseexp 114
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_POISON_BARB
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_WATER_3
    abilities ABILITY_BATTLE_ARMOR, ABILITY_SNIPER
    runchance 120
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SKORUPI_TM_DATA_0, SPECIES_SKORUPI_TM_DATA_1, SPECIES_SKORUPI_TM_DATA_2, SPECIES_SKORUPI_TM_DATA_3


mondata SPECIES_DRAPION
    basestats 70, 90, 110, 95, 60, 75
    types TYPE_POISON, TYPE_DARK
    catchrate 45
    baseexp 204
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_POISON_BARB
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_WATER_3
    abilities ABILITY_BATTLE_ARMOR, ABILITY_SNIPER
    runchance 60
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_DRAPION_TM_DATA_0, SPECIES_DRAPION_TM_DATA_1, SPECIES_DRAPION_TM_DATA_2, SPECIES_DRAPION_TM_DATA_3


mondata SPECIES_CROAGUNK
    basestats 48, 61, 40, 50, 61, 40
    types TYPE_POISON, TYPE_FIGHTING
    catchrate 140
    baseexp 83
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_BLACK_SLUDGE
    genderratio 127
    eggcycles 10
    basefriendship 100
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_ANTICIPATION, ABILITY_DRY_SKIN
    runchance 150
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CROAGUNK_TM_DATA_0, SPECIES_CROAGUNK_TM_DATA_1, SPECIES_CROAGUNK_TM_DATA_2, SPECIES_CROAGUNK_TM_DATA_3


mondata SPECIES_TOXICROAK
    basestats 83, 106, 65, 85, 86, 65
    types TYPE_POISON, TYPE_FIGHTING
    catchrate 75
    baseexp 181
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_BLACK_SLUDGE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_ANTICIPATION, ABILITY_DRY_SKIN
    runchance 120
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_TOXICROAK_TM_DATA_0, SPECIES_TOXICROAK_TM_DATA_1, SPECIES_TOXICROAK_TM_DATA_2, SPECIES_TOXICROAK_TM_DATA_3


mondata SPECIES_CARNIVINE
    basestats 74, 100, 72, 46, 90, 72
    types TYPE_GRASS, TYPE_GRASS
    catchrate 200
    baseexp 164
    evyields 0, 2, 0, 0, 0, 0
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


mondata SPECIES_FINNEON
    basestats 49, 49, 56, 66, 49, 61
    types TYPE_WATER, TYPE_WATER
    catchrate 190
    baseexp 90
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_RINDO_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_SWIFT_SWIM, ABILITY_STORM_DRAIN
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_FINNEON_TM_DATA_0, SPECIES_FINNEON_TM_DATA_1, SPECIES_FINNEON_TM_DATA_2, SPECIES_FINNEON_TM_DATA_3


mondata SPECIES_LUMINEON
    basestats 69, 69, 76, 91, 69, 86
    types TYPE_WATER, TYPE_WATER
    catchrate 75
    baseexp 156
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_RINDO_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_ERRATIC
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_SWIFT_SWIM, ABILITY_STORM_DRAIN
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_LUMINEON_TM_DATA_0, SPECIES_LUMINEON_TM_DATA_1, SPECIES_LUMINEON_TM_DATA_2, SPECIES_LUMINEON_TM_DATA_3


mondata SPECIES_MANTYKE
    basestats 45, 20, 50, 50, 60, 120
    types TYPE_WATER, TYPE_FLYING
    catchrate 25
    baseexp 108
    evyields 0, 0, 0, 0, 0, 1
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


mondata SPECIES_SNOVER
    basestats 60, 62, 50, 40, 62, 60
    types TYPE_GRASS, TYPE_ICE
    catchrate 120
    baseexp 131
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NEVERMELTICE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_SNOW_WARNING, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SNOVER_TM_DATA_0, SPECIES_SNOVER_TM_DATA_1, SPECIES_SNOVER_TM_DATA_2, SPECIES_SNOVER_TM_DATA_3


mondata SPECIES_ABOMASNOW
    basestats 90, 92, 75, 60, 92, 85
    types TYPE_GRASS, TYPE_ICE
    catchrate 60
    baseexp 214
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NEVERMELTICE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_GRASS
    abilities ABILITY_SNOW_WARNING, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_ABOMASNOW_TM_DATA_0, SPECIES_ABOMASNOW_TM_DATA_1, SPECIES_ABOMASNOW_TM_DATA_2, SPECIES_ABOMASNOW_TM_DATA_3


mondata SPECIES_WEAVILE
    basestats 70, 120, 65, 125, 45, 85
    types TYPE_DARK, TYPE_ICE
    catchrate 45
    baseexp 199
    evyields 0, 1, 0, 1, 0, 0
    items ITEM_GRIP_CLAW, ITEM_QUICK_CLAW
    genderratio 127
    eggcycles 20
    basefriendship 35
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PRESSURE, ABILITY_PRESSURE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_WEAVILE_TM_DATA_0, SPECIES_WEAVILE_TM_DATA_1, SPECIES_WEAVILE_TM_DATA_2, SPECIES_WEAVILE_TM_DATA_3


mondata SPECIES_MAGNEZONE
    basestats 70, 70, 115, 60, 130, 90
    types TYPE_ELECTRIC, TYPE_STEEL
    catchrate 30
    baseexp 211
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_METAL_COAT
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_MAGNET_PULL, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MAGNEZONE_TM_DATA_0, SPECIES_MAGNEZONE_TM_DATA_1, SPECIES_MAGNEZONE_TM_DATA_2, SPECIES_MAGNEZONE_TM_DATA_3


mondata SPECIES_LICKILICKY
    basestats 110, 85, 95, 50, 80, 95
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 30
    baseexp 193
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_LAGGING_TAIL
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_OWN_TEMPO, ABILITY_OBLIVIOUS
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_LICKILICKY_TM_DATA_0, SPECIES_LICKILICKY_TM_DATA_1, SPECIES_LICKILICKY_TM_DATA_2, SPECIES_LICKILICKY_TM_DATA_3


mondata SPECIES_RHYPERIOR
    basestats 115, 140, 130, 40, 55, 55
    types TYPE_GROUND, TYPE_ROCK
    catchrate 30
    baseexp 217
    evyields 0, 3, 0, 0, 0, 0
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


mondata SPECIES_TANGROWTH
    basestats 100, 100, 125, 50, 110, 50
    types TYPE_GRASS, TYPE_GRASS
    catchrate 30
    baseexp 211
    evyields 0, 0, 2, 0, 0, 0
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


mondata SPECIES_ELECTIVIRE
    basestats 75, 123, 67, 95, 95, 85
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 30
    baseexp 199
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_ELECTIRIZER
    genderratio 63
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_MOTOR_DRIVE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_ELECTIVIRE_TM_DATA_0, SPECIES_ELECTIVIRE_TM_DATA_1, SPECIES_ELECTIVIRE_TM_DATA_2, SPECIES_ELECTIVIRE_TM_DATA_3


mondata SPECIES_MAGMORTAR
    basestats 75, 95, 67, 83, 125, 95
    types TYPE_FIRE, TYPE_FIRE
    catchrate 30
    baseexp 199
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_MAGMARIZER
    genderratio 63
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_FLAME_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 1
    tmdata SPECIES_MAGMORTAR_TM_DATA_0, SPECIES_MAGMORTAR_TM_DATA_1, SPECIES_MAGMORTAR_TM_DATA_2, SPECIES_MAGMORTAR_TM_DATA_3


mondata SPECIES_TOGEKISS
    basestats 85, 50, 95, 80, 120, 115
    types (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL, TYPE_FLYING
    catchrate 30
    baseexp 220
    evyields 0, 0, 0, 0, 2, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FAIRY
    abilities ABILITY_HUSTLE, ABILITY_SERENE_GRACE
    runchance 0
    colorflip BODY_COLOR_WHITE, 1
    tmdata SPECIES_TOGEKISS_TM_DATA_0, SPECIES_TOGEKISS_TM_DATA_1, SPECIES_TOGEKISS_TM_DATA_2, SPECIES_TOGEKISS_TM_DATA_3


mondata SPECIES_YANMEGA
    basestats 86, 76, 86, 95, 116, 56
    types TYPE_BUG, TYPE_FLYING
    catchrate 30
    baseexp 198
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_WIDE_LENS
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SPEED_BOOST, ABILITY_TINTED_LENS
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_YANMEGA_TM_DATA_0, SPECIES_YANMEGA_TM_DATA_1, SPECIES_YANMEGA_TM_DATA_2, SPECIES_YANMEGA_TM_DATA_3


mondata SPECIES_LEAFEON
    basestats 65, 110, 130, 95, 60, 65
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 196
    evyields 0, 0, 2, 0, 0, 0
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


mondata SPECIES_GLACEON
    basestats 65, 60, 110, 65, 130, 95
    types TYPE_ICE, TYPE_ICE
    catchrate 45
    baseexp 196
    evyields 0, 0, 0, 0, 2, 0
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


mondata SPECIES_GLISCOR
    basestats 75, 95, 125, 95, 45, 75
    types TYPE_GROUND, TYPE_FLYING
    catchrate 30
    baseexp 192
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


mondata SPECIES_MAMOSWINE
    basestats 110, 130, 80, 80, 70, 60
    types TYPE_ICE, TYPE_GROUND
    catchrate 50
    baseexp 207
    evyields 0, 3, 0, 0, 0, 0
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


mondata SPECIES_PORYGON_Z
    basestats 85, 80, 70, 90, 135, 75
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 30
    baseexp 185
    evyields 0, 0, 0, 0, 3, 0
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


mondata SPECIES_GALLADE
    basestats 68, 125, 65, 80, 65, 115
    types TYPE_PSYCHIC, TYPE_FIGHTING
    catchrate 45
    baseexp 208
    evyields 0, 3, 0, 0, 0, 0
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


mondata SPECIES_PROBOPASS
    basestats 60, 55, 145, 40, 75, 150
    types TYPE_ROCK, TYPE_STEEL
    catchrate 60
    baseexp 198
    evyields 0, 0, 1, 0, 0, 2
    items ITEM_NONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STURDY, ABILITY_MAGNET_PULL
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_PROBOPASS_TM_DATA_0, SPECIES_PROBOPASS_TM_DATA_1, SPECIES_PROBOPASS_TM_DATA_2, SPECIES_PROBOPASS_TM_DATA_3


mondata SPECIES_DUSKNOIR
    basestats 45, 100, 135, 45, 65, 135
    types TYPE_GHOST, TYPE_GHOST
    catchrate 45
    baseexp 210
    evyields 0, 0, 1, 0, 0, 2
    items ITEM_NONE, ITEM_KASIB_BERRY
    genderratio 127
    eggcycles 25
    basefriendship 35
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_PRESSURE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_DUSKNOIR_TM_DATA_0, SPECIES_DUSKNOIR_TM_DATA_1, SPECIES_DUSKNOIR_TM_DATA_2, SPECIES_DUSKNOIR_TM_DATA_3


mondata SPECIES_FROSLASS
    basestats 70, 80, 70, 110, 80, 70
    types TYPE_ICE, TYPE_GHOST
    catchrate 75
    baseexp 187
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_BABIRI_BERRY
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_MINERAL
    abilities ABILITY_SNOW_CLOAK, ABILITY_SNOW_CLOAK
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_FROSLASS_TM_DATA_0, SPECIES_FROSLASS_TM_DATA_1, SPECIES_FROSLASS_TM_DATA_2, SPECIES_FROSLASS_TM_DATA_3


mondata SPECIES_ROTOM
    basestats 50, 50, 77, 91, 95, 77
    types TYPE_ELECTRIC, TYPE_GHOST
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
    tmdata SPECIES_ROTOM_TM_DATA_0, SPECIES_ROTOM_TM_DATA_1, SPECIES_ROTOM_TM_DATA_2, SPECIES_ROTOM_TM_DATA_3


mondata SPECIES_UXIE
    basestats 75, 75, 130, 95, 75, 130
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 3
    baseexp 210
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


mondata SPECIES_MESPRIT
    basestats 80, 105, 105, 80, 105, 105
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 3
    baseexp 210
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


mondata SPECIES_AZELF
    basestats 75, 125, 70, 115, 125, 70
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 3
    baseexp 210
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


mondata SPECIES_DIALGA
    basestats 100, 120, 120, 90, 150, 100
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
    tmdata SPECIES_DIALGA_TM_DATA_0, SPECIES_DIALGA_TM_DATA_1, SPECIES_DIALGA_TM_DATA_2, SPECIES_DIALGA_TM_DATA_3


mondata SPECIES_PALKIA
    basestats 90, 120, 100, 100, 150, 120
    types TYPE_WATER, TYPE_DRAGON
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
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_PALKIA_TM_DATA_0, SPECIES_PALKIA_TM_DATA_1, SPECIES_PALKIA_TM_DATA_2, SPECIES_PALKIA_TM_DATA_3


mondata SPECIES_HEATRAN
    basestats 91, 90, 106, 77, 130, 106
    types TYPE_FIRE, TYPE_STEEL
    catchrate 3
    baseexp 215
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


mondata SPECIES_REGIGIGAS
    basestats 110, 160, 110, 100, 80, 110
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 3
    baseexp 220
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


mondata SPECIES_GIRATINA
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


mondata SPECIES_CRESSELIA
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


mondata SPECIES_PHIONE
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


mondata SPECIES_MANAPHY
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


mondata SPECIES_DARKRAI
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


mondata SPECIES_SHAYMIN
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


mondata SPECIES_ARCEUS
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


mondata SPECIES_EGG
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


mondata SPECIES_BAD_EGG
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


mondata SPECIES_DEOXYS_ATTACK
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


mondata SPECIES_DEOXYS_DEFENSE
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


mondata SPECIES_DEOXYS_SPEED
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


mondata SPECIES_WORMADAM_SANDY
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


mondata SPECIES_WORMADAM_TRASHY
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


mondata SPECIES_GIRATINA_ORIGIN
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


mondata SPECIES_SHAYMIN_SKY
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


mondata SPECIES_ROTOM_HEAT
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


mondata SPECIES_ROTOM_WASH
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


mondata SPECIES_ROTOM_FROST
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


mondata SPECIES_ROTOM_FAN
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


mondata SPECIES_ROTOM_MOW
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



mondata SPECIES_508
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


mondata SPECIES_509
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


mondata SPECIES_510
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


mondata SPECIES_511
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


mondata SPECIES_512
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


mondata SPECIES_513
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


mondata SPECIES_514
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


mondata SPECIES_515
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


mondata SPECIES_516
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


mondata SPECIES_517
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


mondata SPECIES_518
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


mondata SPECIES_519
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


mondata SPECIES_520
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


mondata SPECIES_521
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


mondata SPECIES_522
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


mondata SPECIES_523
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


mondata SPECIES_524
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


mondata SPECIES_525
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


mondata SPECIES_526
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


mondata SPECIES_527
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


mondata SPECIES_528
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


mondata SPECIES_529
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


mondata SPECIES_530
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


mondata SPECIES_531
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


mondata SPECIES_532
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


mondata SPECIES_533
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


mondata SPECIES_534
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


mondata SPECIES_535
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


mondata SPECIES_536
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


mondata SPECIES_537
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


mondata SPECIES_538
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


mondata SPECIES_539
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


mondata SPECIES_540
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


mondata SPECIES_541
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


mondata SPECIES_542
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


mondata SPECIES_543
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


mondata SPECIES_SYLVEON
    basestats 95, 65, 65, 60, 110, 130
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 45
    baseexp 184
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 35
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CUTE_CHARM, ABILITY_CUTE_CHARM
    runchance 0
    colorflip BODY_COLOR_PINK, 1
    tmdata SPECIES_SYLVEON_TM_DATA_0, SPECIES_SYLVEON_TM_DATA_1, SPECIES_SYLVEON_TM_DATA_2, SPECIES_SYLVEON_TM_DATA_3


mondata SPECIES_WYRDEER
    basestats 103, 105, 72, 65, 105, 75
    types TYPE_NORMAL, TYPE_PSYCHIC
    catchrate 45
    baseexp 165 // Stantler
    evyields 0, 1, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_WYRDEER_TM_DATA_0, SPECIES_WYRDEER_TM_DATA_1, SPECIES_WYRDEER_TM_DATA_2, SPECIES_WYRDEER_TM_DATA_3


mondata SPECIES_KLEAVOR
    basestats 70, 130, 95, 85, 45, 75
    types TYPE_BUG, TYPE_ROCK
    catchrate 15
    baseexp 200 // Scizor
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_SHEER_FORCE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_KLEAVOR_TM_DATA_0, SPECIES_KLEAVOR_TM_DATA_1, SPECIES_KLEAVOR_TM_DATA_2, SPECIES_KLEAVOR_TM_DATA_3


mondata SPECIES_URSALUNA
    basestats 130, 140, 105, 50, 45, 80
    types TYPE_GROUND, TYPE_NORMAL
    catchrate 45
    baseexp 189 // Ursaring
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_GUTS, ABILITY_BULLETPROOF
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_URSALUNA_TM_DATA_0, SPECIES_URSALUNA_TM_DATA_1, SPECIES_URSALUNA_TM_DATA_2, SPECIES_URSALUNA_TM_DATA_3


mondata SPECIES_ANNIHILAPE
    basestats 110, 115, 80, 90, 50, 90
    types TYPE_FIGHTING, TYPE_GHOST
    catchrate 45
    baseexp 149 // Primeape
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_VITAL_SPIRIT, ABILITY_INNER_FOCUS
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_ANNIHILAPE_TM_DATA_0, SPECIES_ANNIHILAPE_TM_DATA_1, SPECIES_ANNIHILAPE_TM_DATA_2, SPECIES_ANNIHILAPE_TM_DATA_3


mondata SPECIES_FARIGIRAF
    basestats 120, 90, 70, 60, 110, 70
    types TYPE_NORMAL, TYPE_PSYCHIC
    catchrate 45
    baseexp 149 // Girafarig
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INNER_FOCUS, ABILITY_EARLY_BIRD // Actual abilities not implemented
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_FARIGIRAF_TM_DATA_0, SPECIES_FARIGIRAF_TM_DATA_1, SPECIES_FARIGIRAF_TM_DATA_2, SPECIES_FARIGIRAF_TM_DATA_3


mondata SPECIES_DUDUNSPARCE
    basestats 125, 100, 80, 55, 85, 75
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 125 // Dunsparce
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SERENE_GRACE, ABILITY_RUN_AWAY
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_DUDUNSPARCE_TM_DATA_0, SPECIES_DUDUNSPARCE_TM_DATA_1, SPECIES_DUDUNSPARCE_TM_DATA_2, SPECIES_DUDUNSPARCE_TM_DATA_3


mondata SPECIES_OSHAWOTT
    basestats 55, 55, 45, 45, 63, 45
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 40
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_TORRENT, ABILITY_TORRENT
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_OSHAWOTT_TM_DATA_0, SPECIES_OSHAWOTT_TM_DATA_1, SPECIES_OSHAWOTT_TM_DATA_2, SPECIES_OSHAWOTT_TM_DATA_3


mondata SPECIES_DEWOTT
    basestats 75, 75, 60, 60, 83, 60
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 94
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_TORRENT, ABILITY_TORRENT
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_DEWOTT_TM_DATA_0, SPECIES_DEWOTT_TM_DATA_1, SPECIES_DEWOTT_TM_DATA_2, SPECIES_DEWOTT_TM_DATA_3


mondata SPECIES_SAMUROTT
    basestats 95, 100, 85, 70, 108, 70
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 155
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_TORRENT, ABILITY_TORRENT
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SAMUROTT_TM_DATA_0, SPECIES_SAMUROTT_TM_DATA_1, SPECIES_SAMUROTT_TM_DATA_2, SPECIES_SAMUROTT_TM_DATA_3


mondata SPECIES_PATRAT
    basestats 45, 55, 39, 42, 35, 39
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 33
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


mondata SPECIES_WATCHOG
    basestats 60, 85, 69, 77, 60, 69
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 96
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


mondata SPECIES_LILLIPUP
    basestats 45, 60, 45, 55, 25, 45
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 35
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_VITAL_SPIRIT, ABILITY_PICKUP
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_LILLIPUP_TM_DATA_0, SPECIES_LILLIPUP_TM_DATA_1, SPECIES_LILLIPUP_TM_DATA_2, SPECIES_LILLIPUP_TM_DATA_3


mondata SPECIES_HERDIER
    basestats 65, 80, 65, 60, 35, 65
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 120
    baseexp 85
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_SAND_RUSH
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_HERDIER_TM_DATA_0, SPECIES_HERDIER_TM_DATA_1, SPECIES_HERDIER_TM_DATA_2, SPECIES_HERDIER_TM_DATA_3


mondata SPECIES_STOUTLAND
    basestats 85, 110, 90, 80, 45, 90
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 144
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_SAND_RUSH
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_STOUTLAND_TM_DATA_0, SPECIES_STOUTLAND_TM_DATA_1, SPECIES_STOUTLAND_TM_DATA_2, SPECIES_STOUTLAND_TM_DATA_3


mondata SPECIES_PURRLOIN
    basestats 41, 50, 37, 66, 50, 37
    types TYPE_DARK, TYPE_DARK
    catchrate 255
    baseexp 36
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_LIMBER, ABILITY_UNBURDEN
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_PURRLOIN_TM_DATA_0, SPECIES_PURRLOIN_TM_DATA_1, SPECIES_PURRLOIN_TM_DATA_2, SPECIES_PURRLOIN_TM_DATA_3


mondata SPECIES_LIEPARD
    basestats 64, 88, 50, 106, 88, 50
    types TYPE_DARK, TYPE_DARK
    catchrate 90
    baseexp 102
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_LIMBER, ABILITY_UNBURDEN
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_LIEPARD_TM_DATA_0, SPECIES_LIEPARD_TM_DATA_1, SPECIES_LIEPARD_TM_DATA_2, SPECIES_LIEPARD_TM_DATA_3


mondata SPECIES_PANSAGE
    basestats 50, 53, 48, 64, 53, 48
    types TYPE_GRASS, TYPE_GRASS
    catchrate 190
    baseexp 41
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


mondata SPECIES_SIMISAGE
    basestats 75, 98, 63, 101, 98, 63
    types TYPE_GRASS, TYPE_GRASS
    catchrate 75
    baseexp 113
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


mondata SPECIES_PANSEAR
    basestats 50, 53, 48, 64, 53, 48
    types TYPE_FIRE, TYPE_FIRE
    catchrate 190
    baseexp 41
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_ORAN_BERRY, ITEM_PASSHO_BERRY
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_GLUTTONY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_PANSEAR_TM_DATA_0, SPECIES_PANSEAR_TM_DATA_1, SPECIES_PANSEAR_TM_DATA_2, SPECIES_PANSEAR_TM_DATA_3


mondata SPECIES_SIMISEAR
    basestats 75, 98, 63, 101, 98, 63
    types TYPE_FIRE, TYPE_FIRE
    catchrate 75
    baseexp 113
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_ORAN_BERRY, ITEM_PASSHO_BERRY
    genderratio 31
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_GLUTTONY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_SIMISEAR_TM_DATA_0, SPECIES_SIMISEAR_TM_DATA_1, SPECIES_SIMISEAR_TM_DATA_2, SPECIES_SIMISEAR_TM_DATA_3


mondata SPECIES_PANPOUR
    basestats 50, 53, 48, 64, 53, 48
    types TYPE_WATER, TYPE_WATER
    catchrate 190
    baseexp 41
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


mondata SPECIES_SIMIPOUR
    basestats 75, 98, 63, 101, 98, 63
    types TYPE_WATER, TYPE_WATER
    catchrate 75
    baseexp 113
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


mondata SPECIES_MUNNA
    basestats 76, 25, 45, 24, 67, 55
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 190
    baseexp 37
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FOREWARN, ABILITY_SYNCHRONIZE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_MUNNA_TM_DATA_0, SPECIES_MUNNA_TM_DATA_1, SPECIES_MUNNA_TM_DATA_2, SPECIES_MUNNA_TM_DATA_3


mondata SPECIES_MUSHARNA
    basestats 116, 55, 85, 29, 107, 95
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 75
    baseexp 111
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FOREWARN, ABILITY_SYNCHRONIZE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_MUSHARNA_TM_DATA_0, SPECIES_MUSHARNA_TM_DATA_1, SPECIES_MUSHARNA_TM_DATA_2, SPECIES_MUSHARNA_TM_DATA_3


mondata SPECIES_PIDOVE
    basestats 50, 55, 50, 43, 36, 30
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 255
    baseexp 34
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_BIG_PECKS, ABILITY_SUPER_LUCK
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_PIDOVE_TM_DATA_0, SPECIES_PIDOVE_TM_DATA_1, SPECIES_PIDOVE_TM_DATA_2, SPECIES_PIDOVE_TM_DATA_3


mondata SPECIES_TRANQUILL
    basestats 62, 77, 62, 65, 50, 42
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 120
    baseexp 81
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_BIG_PECKS, ABILITY_SUPER_LUCK
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_TRANQUILL_TM_DATA_0, SPECIES_TRANQUILL_TM_DATA_1, SPECIES_TRANQUILL_TM_DATA_2, SPECIES_TRANQUILL_TM_DATA_3


mondata SPECIES_UNFEZANT
    basestats 80, 115, 80, 93, 65, 55
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 45
    baseexp 140
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_BIG_PECKS, ABILITY_SUPER_LUCK
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_UNFEZANT_TM_DATA_0, SPECIES_UNFEZANT_TM_DATA_1, SPECIES_UNFEZANT_TM_DATA_2, SPECIES_UNFEZANT_TM_DATA_3


mondata SPECIES_BLITZLE
    basestats 45, 60, 32, 76, 50, 32
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 38
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


mondata SPECIES_ZEBSTRIKA
    basestats 75, 100, 63, 116, 80, 63
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 75
    baseexp 113
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


mondata SPECIES_ROGGENROLA
    basestats 55, 75, 85, 15, 25, 25
    types TYPE_ROCK, TYPE_ROCK
    catchrate 255
    baseexp 36
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_EVERSTONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STURDY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_ROGGENROLA_TM_DATA_0, SPECIES_ROGGENROLA_TM_DATA_1, SPECIES_ROGGENROLA_TM_DATA_2, SPECIES_ROGGENROLA_TM_DATA_3


mondata SPECIES_BOLDORE
    basestats 70, 105, 105, 20, 50, 40
    types TYPE_ROCK, TYPE_ROCK
    catchrate 120
    baseexp 89
    evyields 0, 1, 1, 0, 0, 0
    items ITEM_EVERSTONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STURDY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_BOLDORE_TM_DATA_0, SPECIES_BOLDORE_TM_DATA_1, SPECIES_BOLDORE_TM_DATA_2, SPECIES_BOLDORE_TM_DATA_3


mondata SPECIES_GIGALITH
    basestats 85, 135, 130, 25, 60, 80
    types TYPE_ROCK, TYPE_ROCK
    catchrate 45
    baseexp 148
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_EVERSTONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STURDY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_GIGALITH_TM_DATA_0, SPECIES_GIGALITH_TM_DATA_1, SPECIES_GIGALITH_TM_DATA_2, SPECIES_GIGALITH_TM_DATA_3


mondata SPECIES_WOOBAT
    basestats 65, 45, 43, 72, 55, 43
    types TYPE_PSYCHIC, TYPE_FLYING
    catchrate 190
    baseexp 41
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FLYING
    abilities ABILITY_UNAWARE, ABILITY_KLUTZ
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_WOOBAT_TM_DATA_0, SPECIES_WOOBAT_TM_DATA_1, SPECIES_WOOBAT_TM_DATA_2, SPECIES_WOOBAT_TM_DATA_3


mondata SPECIES_SWOOBAT
    basestats 67, 57, 55, 114, 77, 55
    types TYPE_PSYCHIC, TYPE_FLYING
    catchrate 45
    baseexp 97
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FLYING
    abilities ABILITY_UNAWARE, ABILITY_KLUTZ
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SWOOBAT_TM_DATA_0, SPECIES_SWOOBAT_TM_DATA_1, SPECIES_SWOOBAT_TM_DATA_2, SPECIES_SWOOBAT_TM_DATA_3


mondata SPECIES_DRILBUR
    basestats 60, 85, 40, 68, 30, 45
    types TYPE_GROUND, TYPE_GROUND
    catchrate 120
    baseexp 43
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAND_RUSH, ABILITY_SAND_FORCE
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_DRILBUR_TM_DATA_0, SPECIES_DRILBUR_TM_DATA_1, SPECIES_DRILBUR_TM_DATA_2, SPECIES_DRILBUR_TM_DATA_3


mondata SPECIES_EXCADRILL
    basestats 110, 135, 60, 88, 50, 65
    types TYPE_GROUND, TYPE_STEEL
    catchrate 60
    baseexp 116
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAND_RUSH, ABILITY_SAND_FORCE
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_EXCADRILL_TM_DATA_0, SPECIES_EXCADRILL_TM_DATA_1, SPECIES_EXCADRILL_TM_DATA_2, SPECIES_EXCADRILL_TM_DATA_3


mondata SPECIES_AUDINO
    basestats 103, 60, 86, 50, 60, 86
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 255
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_ORAN_BERRY, ITEM_SITRUS_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_HEALER, ABILITY_REGENERATOR
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_AUDINO_TM_DATA_0, SPECIES_AUDINO_TM_DATA_1, SPECIES_AUDINO_TM_DATA_2, SPECIES_AUDINO_TM_DATA_3


mondata SPECIES_TIMBURR
    basestats 75, 80, 55, 35, 25, 35
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 180
    baseexp 39
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


mondata SPECIES_GURDURR
    basestats 85, 105, 85, 40, 40, 50
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 90
    baseexp 92
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 63
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_GUTS, ABILITY_SHEER_FORCE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_GURDURR_TM_DATA_0, SPECIES_GURDURR_TM_DATA_1, SPECIES_GURDURR_TM_DATA_2, SPECIES_GURDURR_TM_DATA_3


mondata SPECIES_CONKELDURR
    basestats 105, 140, 95, 45, 55, 65
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 148
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 63
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_GUTS, ABILITY_SHEER_FORCE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_CONKELDURR_TM_DATA_0, SPECIES_CONKELDURR_TM_DATA_1, SPECIES_CONKELDURR_TM_DATA_2, SPECIES_CONKELDURR_TM_DATA_3


mondata SPECIES_TYMPOLE
    basestats 50, 50, 40, 64, 50, 40
    types TYPE_WATER, TYPE_WATER
    catchrate 255
    baseexp 38
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_PECHA_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_SWIFT_SWIM, ABILITY_HYDRATION
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_TYMPOLE_TM_DATA_0, SPECIES_TYMPOLE_TM_DATA_1, SPECIES_TYMPOLE_TM_DATA_2, SPECIES_TYMPOLE_TM_DATA_3


mondata SPECIES_PALPITOAD
    basestats 75, 65, 55, 69, 65, 55
    types TYPE_WATER, TYPE_GROUND
    catchrate 120
    baseexp 87
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_PECHA_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_SWIFT_SWIM, ABILITY_HYDRATION
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_PALPITOAD_TM_DATA_0, SPECIES_PALPITOAD_TM_DATA_1, SPECIES_PALPITOAD_TM_DATA_2, SPECIES_PALPITOAD_TM_DATA_3


mondata SPECIES_SEISMITOAD
    basestats 105, 95, 75, 74, 85, 75
    types TYPE_WATER, TYPE_GROUND
    catchrate 45
    baseexp 147
    evyields 3, 0, 0, 0, 0, 0
    items ITEM_PECHA_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_SWIFT_SWIM, ABILITY_POISON_TOUCH
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_SEISMITOAD_TM_DATA_0, SPECIES_SEISMITOAD_TM_DATA_1, SPECIES_SEISMITOAD_TM_DATA_2, SPECIES_SEISMITOAD_TM_DATA_3


mondata SPECIES_THROH
    basestats 120, 100, 85, 45, 30, 85
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 106
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_BLACK_BELT
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_GUTS, ABILITY_INNER_FOCUS
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_THROH_TM_DATA_0, SPECIES_THROH_TM_DATA_1, SPECIES_THROH_TM_DATA_2, SPECIES_THROH_TM_DATA_3


mondata SPECIES_SAWK
    basestats 75, 125, 75, 85, 30, 75
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 106
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_BLACK_BELT
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_STURDY, ABILITY_INNER_FOCUS
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_SAWK_TM_DATA_0, SPECIES_SAWK_TM_DATA_1, SPECIES_SAWK_TM_DATA_2, SPECIES_SAWK_TM_DATA_3


mondata SPECIES_SEWADDLE
    basestats 45, 53, 70, 42, 40, 60
    types TYPE_BUG, TYPE_GRASS
    catchrate 255
    baseexp 40
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_MENTAL_HERB
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_CHLOROPHYLL
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_SEWADDLE_TM_DATA_0, SPECIES_SEWADDLE_TM_DATA_1, SPECIES_SEWADDLE_TM_DATA_2, SPECIES_SEWADDLE_TM_DATA_3


mondata SPECIES_SWADLOON
    basestats 55, 63, 90, 42, 50, 80
    types TYPE_BUG, TYPE_GRASS
    catchrate 120
    baseexp 86
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_MENTAL_HERB
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_LEAF_GUARD, ABILITY_CHLOROPHYLL
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_SWADLOON_TM_DATA_0, SPECIES_SWADLOON_TM_DATA_1, SPECIES_SWADLOON_TM_DATA_2, SPECIES_SWADLOON_TM_DATA_3


mondata SPECIES_LEAVANNY
    basestats 75, 103, 80, 92, 70, 80
    types TYPE_BUG, TYPE_GRASS
    catchrate 45
    baseexp 144
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_MENTAL_HERB
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_CHLOROPHYLL
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_LEAVANNY_TM_DATA_0, SPECIES_LEAVANNY_TM_DATA_1, SPECIES_LEAVANNY_TM_DATA_2, SPECIES_LEAVANNY_TM_DATA_3


mondata SPECIES_VENIPEDE
    basestats 30, 45, 59, 57, 30, 39
    types TYPE_BUG, TYPE_POISON
    catchrate 255
    baseexp 34
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_POISON_BARB
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_POISON_POINT, ABILITY_SWARM
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_VENIPEDE_TM_DATA_0, SPECIES_VENIPEDE_TM_DATA_1, SPECIES_VENIPEDE_TM_DATA_2, SPECIES_VENIPEDE_TM_DATA_3


mondata SPECIES_WHIRLIPEDE
    basestats 40, 55, 99, 47, 40, 79
    types TYPE_BUG, TYPE_POISON
    catchrate 120
    baseexp 82
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_POISON_BARB
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_POISON_POINT, ABILITY_SWARM
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_WHIRLIPEDE_TM_DATA_0, SPECIES_WHIRLIPEDE_TM_DATA_1, SPECIES_WHIRLIPEDE_TM_DATA_2, SPECIES_WHIRLIPEDE_TM_DATA_3


mondata SPECIES_SCOLIPEDE
    basestats 60, 100, 89, 112, 55, 69
    types TYPE_BUG, TYPE_POISON
    catchrate 45
    baseexp 139
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_POISON_BARB
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_POISON_POINT, ABILITY_SWARM
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_SCOLIPEDE_TM_DATA_0, SPECIES_SCOLIPEDE_TM_DATA_1, SPECIES_SCOLIPEDE_TM_DATA_2, SPECIES_SCOLIPEDE_TM_DATA_3


mondata SPECIES_COTTONEE
    basestats 40, 27, 60, 66, 37, 50
    types TYPE_GRASS, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_GRASS
    catchrate 190
    baseexp 36
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_FAIRY
    abilities ABILITY_PRANKSTER, ABILITY_INFILTRATOR
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_COTTONEE_TM_DATA_0, SPECIES_COTTONEE_TM_DATA_1, SPECIES_COTTONEE_TM_DATA_2, SPECIES_COTTONEE_TM_DATA_3


mondata SPECIES_WHIMSICOTT
    basestats 60, 67, 85, 116, 77, 75
    types TYPE_GRASS, (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_GRASS
    catchrate 75
    baseexp 109
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_FAIRY
    abilities ABILITY_PRANKSTER, ABILITY_INFILTRATOR
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_WHIMSICOTT_TM_DATA_0, SPECIES_WHIMSICOTT_TM_DATA_1, SPECIES_WHIMSICOTT_TM_DATA_2, SPECIES_WHIMSICOTT_TM_DATA_3


mondata SPECIES_PETILIL
    basestats 45, 35, 50, 30, 70, 50
    types TYPE_GRASS, TYPE_GRASS
    catchrate 190
    baseexp 36
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_PETILIL_TM_DATA_0, SPECIES_PETILIL_TM_DATA_1, SPECIES_PETILIL_TM_DATA_2, SPECIES_PETILIL_TM_DATA_3


mondata SPECIES_LILLIGANT
    basestats 70, 60, 75, 90, 110, 75
    types TYPE_GRASS, TYPE_GRASS
    catchrate 75
    baseexp 109
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_CHLOROPHYLL, ABILITY_OWN_TEMPO
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_LILLIGANT_TM_DATA_0, SPECIES_LILLIGANT_TM_DATA_1, SPECIES_LILLIGANT_TM_DATA_2, SPECIES_LILLIGANT_TM_DATA_3


mondata SPECIES_BASCULIN
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


mondata SPECIES_SANDILE
    basestats 50, 72, 35, 65, 35, 35
    types TYPE_GROUND, TYPE_DARK
    catchrate 180
    baseexp 37
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_MOXIE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SANDILE_TM_DATA_0, SPECIES_SANDILE_TM_DATA_1, SPECIES_SANDILE_TM_DATA_2, SPECIES_SANDILE_TM_DATA_3


mondata SPECIES_KROKOROK
    basestats 60, 82, 45, 74, 45, 45
    types TYPE_GROUND, TYPE_DARK
    catchrate 90
    baseexp 80
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_MOXIE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_KROKOROK_TM_DATA_0, SPECIES_KROKOROK_TM_DATA_1, SPECIES_KROKOROK_TM_DATA_2, SPECIES_KROKOROK_TM_DATA_3


mondata SPECIES_KROOKODILE
    basestats 95, 117, 80, 92, 65, 70
    types TYPE_GROUND, TYPE_DARK
    catchrate 45
    baseexp 149
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INTIMIDATE, ABILITY_MOXIE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_KROOKODILE_TM_DATA_0, SPECIES_KROOKODILE_TM_DATA_1, SPECIES_KROOKODILE_TM_DATA_2, SPECIES_KROOKODILE_TM_DATA_3


mondata SPECIES_DARUMAKA
    basestats 70, 90, 45, 50, 15, 45
    types TYPE_FIRE, TYPE_FIRE
    catchrate 120
    baseexp 41
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_RAWST_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_HUSTLE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_DARUMAKA_TM_DATA_0, SPECIES_DARUMAKA_TM_DATA_1, SPECIES_DARUMAKA_TM_DATA_2, SPECIES_DARUMAKA_TM_DATA_3


mondata SPECIES_DARMANITAN
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


mondata SPECIES_MARACTUS
    basestats 75, 86, 67, 60, 106, 67
    types TYPE_GRASS, TYPE_GRASS
    catchrate 255
    baseexp 105
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_MIRACLE_SEED
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_WATER_ABSORB, ABILITY_CHLOROPHYLL
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_MARACTUS_TM_DATA_0, SPECIES_MARACTUS_TM_DATA_1, SPECIES_MARACTUS_TM_DATA_2, SPECIES_MARACTUS_TM_DATA_3


mondata SPECIES_DWEBBLE
    basestats 50, 65, 85, 55, 35, 35
    types TYPE_BUG, TYPE_ROCK
    catchrate 190
    baseexp 42
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_MINERAL
    abilities ABILITY_STURDY, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_DWEBBLE_TM_DATA_0, SPECIES_DWEBBLE_TM_DATA_1, SPECIES_DWEBBLE_TM_DATA_2, SPECIES_DWEBBLE_TM_DATA_3


mondata SPECIES_CRUSTLE
    basestats 70, 105, 125, 45, 65, 75
    types TYPE_BUG, TYPE_ROCK
    catchrate 75
    baseexp 108
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_HARD_STONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_MINERAL
    abilities ABILITY_STURDY, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_CRUSTLE_TM_DATA_0, SPECIES_CRUSTLE_TM_DATA_1, SPECIES_CRUSTLE_TM_DATA_2, SPECIES_CRUSTLE_TM_DATA_3


mondata SPECIES_SCRAGGY
    basestats 50, 75, 70, 48, 35, 70
    types TYPE_DARK, TYPE_FIGHTING
    catchrate 180
    baseexp 45
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_SHED_SHELL
    genderratio 127
    eggcycles 15
    basefriendship 35
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_DRAGON
    abilities ABILITY_SHED_SKIN, ABILITY_MOXIE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_SCRAGGY_TM_DATA_0, SPECIES_SCRAGGY_TM_DATA_1, SPECIES_SCRAGGY_TM_DATA_2, SPECIES_SCRAGGY_TM_DATA_3


mondata SPECIES_SCRAFTY
    basestats 65, 90, 115, 58, 45, 115
    types TYPE_DARK, TYPE_FIGHTING
    catchrate 90
    baseexp 111
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_SHED_SHELL
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_DRAGON
    abilities ABILITY_SHED_SKIN, ABILITY_MOXIE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_SCRAFTY_TM_DATA_0, SPECIES_SCRAFTY_TM_DATA_1, SPECIES_SCRAFTY_TM_DATA_2, SPECIES_SCRAFTY_TM_DATA_3


mondata SPECIES_SIGILYPH
    basestats 72, 58, 80, 97, 103, 80
    types TYPE_PSYCHIC, TYPE_FLYING
    catchrate 45
    baseexp 112
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_WONDER_SKIN, ABILITY_MAGIC_GUARD
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SIGILYPH_TM_DATA_0, SPECIES_SIGILYPH_TM_DATA_1, SPECIES_SIGILYPH_TM_DATA_2, SPECIES_SIGILYPH_TM_DATA_3


mondata SPECIES_YAMASK
    basestats 38, 30, 85, 30, 55, 65
    types TYPE_GHOST, TYPE_GHOST
    catchrate 190
    baseexp 39
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_SPELL_TAG
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_AMORPHOUS
    abilities ABILITY_MUMMY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_YAMASK_TM_DATA_0, SPECIES_YAMASK_TM_DATA_1, SPECIES_YAMASK_TM_DATA_2, SPECIES_YAMASK_TM_DATA_3


mondata SPECIES_COFAGRIGUS
    basestats 58, 50, 145, 30, 95, 105
    types TYPE_GHOST, TYPE_GHOST
    catchrate 90
    baseexp 110
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_SPELL_TAG
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_AMORPHOUS
    abilities ABILITY_MUMMY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_COFAGRIGUS_TM_DATA_0, SPECIES_COFAGRIGUS_TM_DATA_1, SPECIES_COFAGRIGUS_TM_DATA_2, SPECIES_COFAGRIGUS_TM_DATA_3


mondata SPECIES_TIRTOUGA
    basestats 54, 78, 103, 22, 53, 45
    types TYPE_WATER, TYPE_ROCK
    catchrate 45
    baseexp 46
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_SOLID_ROCK, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_TIRTOUGA_TM_DATA_0, SPECIES_TIRTOUGA_TM_DATA_1, SPECIES_TIRTOUGA_TM_DATA_2, SPECIES_TIRTOUGA_TM_DATA_3


mondata SPECIES_CARRACOSTA
    basestats 74, 108, 133, 32, 83, 65
    types TYPE_WATER, TYPE_ROCK
    catchrate 45
    baseexp 113
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_SOLID_ROCK, ABILITY_STURDY
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CARRACOSTA_TM_DATA_0, SPECIES_CARRACOSTA_TM_DATA_1, SPECIES_CARRACOSTA_TM_DATA_2, SPECIES_CARRACOSTA_TM_DATA_3


mondata SPECIES_ARCHEN
    basestats 55, 112, 45, 70, 74, 45
    types TYPE_ROCK, TYPE_FLYING
    catchrate 45
    baseexp 46
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_WATER_3
    abilities ABILITY_DEFEATIST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_ARCHEN_TM_DATA_0, SPECIES_ARCHEN_TM_DATA_1, SPECIES_ARCHEN_TM_DATA_2, SPECIES_ARCHEN_TM_DATA_3


mondata SPECIES_ARCHEOPS
    basestats 75, 140, 65, 110, 112, 65
    types TYPE_ROCK, TYPE_FLYING
    catchrate 45
    baseexp 115
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 30
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_WATER_3
    abilities ABILITY_DEFEATIST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_ARCHEOPS_TM_DATA_0, SPECIES_ARCHEOPS_TM_DATA_1, SPECIES_ARCHEOPS_TM_DATA_2, SPECIES_ARCHEOPS_TM_DATA_3


mondata SPECIES_TRUBBISH
    basestats 50, 50, 62, 65, 40, 62
    types TYPE_POISON, TYPE_POISON
    catchrate 190
    baseexp 43
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_BLACK_SLUDGE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STENCH, ABILITY_STICKY_HOLD
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_TRUBBISH_TM_DATA_0, SPECIES_TRUBBISH_TM_DATA_1, SPECIES_TRUBBISH_TM_DATA_2, SPECIES_TRUBBISH_TM_DATA_3


mondata SPECIES_GARBODOR
    basestats 80, 95, 82, 75, 60, 82
    types TYPE_POISON, TYPE_POISON
    catchrate 60
    baseexp 108
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_BLACK_SLUDGE, ITEM_NUGGET
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STENCH, ABILITY_WEAK_ARMOR
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_GARBODOR_TM_DATA_0, SPECIES_GARBODOR_TM_DATA_1, SPECIES_GARBODOR_TM_DATA_2, SPECIES_GARBODOR_TM_DATA_3


mondata SPECIES_ZORUA
    basestats 40, 65, 40, 65, 80, 40
    types TYPE_DARK, TYPE_DARK
    catchrate 75
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
    tmdata SPECIES_ZORUA_TM_DATA_0, SPECIES_ZORUA_TM_DATA_1, SPECIES_ZORUA_TM_DATA_2, SPECIES_ZORUA_TM_DATA_3


mondata SPECIES_ZOROARK
    basestats 60, 105, 60, 105, 120, 60
    types TYPE_DARK, TYPE_DARK
    catchrate 45
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
    tmdata SPECIES_ZOROARK_TM_DATA_0, SPECIES_ZOROARK_TM_DATA_1, SPECIES_ZOROARK_TM_DATA_2, SPECIES_ZOROARK_TM_DATA_3


mondata SPECIES_MINCCINO
    basestats 55, 50, 40, 75, 40, 40
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 39
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_CHESTO_BERRY, ITEM_NONE
    genderratio 191
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CUTE_CHARM, ABILITY_TECHNICIAN
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MINCCINO_TM_DATA_0, SPECIES_MINCCINO_TM_DATA_1, SPECIES_MINCCINO_TM_DATA_2, SPECIES_MINCCINO_TM_DATA_3


mondata SPECIES_CINCCINO
    basestats 75, 95, 60, 115, 65, 60
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 60
    baseexp 107
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_CHESTO_BERRY, ITEM_NONE
    genderratio 191
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CUTE_CHARM, ABILITY_TECHNICIAN
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_CINCCINO_TM_DATA_0, SPECIES_CINCCINO_TM_DATA_1, SPECIES_CINCCINO_TM_DATA_2, SPECIES_CINCCINO_TM_DATA_3


mondata SPECIES_GOTHITA
    basestats 45, 30, 50, 45, 55, 65
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 200
    baseexp 37
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_PERSIM_BERRY, ITEM_NONE
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_FRISK, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GOTHITA_TM_DATA_0, SPECIES_GOTHITA_TM_DATA_1, SPECIES_GOTHITA_TM_DATA_2, SPECIES_GOTHITA_TM_DATA_3


mondata SPECIES_GOTHORITA
    basestats 60, 45, 70, 55, 75, 85
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 100
    baseexp 89
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_PERSIM_BERRY, ITEM_NONE
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_FRISK, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GOTHORITA_TM_DATA_0, SPECIES_GOTHORITA_TM_DATA_1, SPECIES_GOTHORITA_TM_DATA_2, SPECIES_GOTHORITA_TM_DATA_3


mondata SPECIES_GOTHITELLE
    basestats 70, 55, 95, 65, 95, 110
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 50
    baseexp 144
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_PERSIM_BERRY, ITEM_NONE
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_FRISK, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GOTHITELLE_TM_DATA_0, SPECIES_GOTHITELLE_TM_DATA_1, SPECIES_GOTHITELLE_TM_DATA_2, SPECIES_GOTHITELLE_TM_DATA_3


mondata SPECIES_SOLOSIS
    basestats 45, 30, 40, 20, 105, 50
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 200
    baseexp 37
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_PERSIM_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_OVERCOAT, ABILITY_MAGIC_GUARD
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_SOLOSIS_TM_DATA_0, SPECIES_SOLOSIS_TM_DATA_1, SPECIES_SOLOSIS_TM_DATA_2, SPECIES_SOLOSIS_TM_DATA_3


mondata SPECIES_DUOSION
    basestats 65, 40, 50, 30, 125, 60
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 100
    baseexp 85
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_PERSIM_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_OVERCOAT, ABILITY_MAGIC_GUARD
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_DUOSION_TM_DATA_0, SPECIES_DUOSION_TM_DATA_1, SPECIES_DUOSION_TM_DATA_2, SPECIES_DUOSION_TM_DATA_3


mondata SPECIES_REUNICLUS
    basestats 110, 65, 75, 30, 125, 85
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 50
    baseexp 144
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_PERSIM_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_OVERCOAT, ABILITY_MAGIC_GUARD
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_REUNICLUS_TM_DATA_0, SPECIES_REUNICLUS_TM_DATA_1, SPECIES_REUNICLUS_TM_DATA_2, SPECIES_REUNICLUS_TM_DATA_3


mondata SPECIES_DUCKLETT
    basestats 62, 44, 50, 55, 44, 50
    types TYPE_WATER, TYPE_FLYING
    catchrate 190
    baseexp 39
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


mondata SPECIES_SWANNA
    basestats 75, 87, 63, 98, 87, 63
    types TYPE_WATER, TYPE_FLYING
    catchrate 45
    baseexp 108
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


mondata SPECIES_VANILLITE
    basestats 36, 50, 50, 44, 65, 60
    types TYPE_ICE, TYPE_ICE
    catchrate 255
    baseexp 39
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_ICE_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_VANILLITE_TM_DATA_0, SPECIES_VANILLITE_TM_DATA_1, SPECIES_VANILLITE_TM_DATA_2, SPECIES_VANILLITE_TM_DATA_3


mondata SPECIES_VANILLISH
    basestats 51, 65, 65, 59, 80, 75
    types TYPE_ICE, TYPE_ICE
    catchrate 120
    baseexp 90
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_ICE_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_VANILLISH_TM_DATA_0, SPECIES_VANILLISH_TM_DATA_1, SPECIES_VANILLISH_TM_DATA_2, SPECIES_VANILLISH_TM_DATA_3


mondata SPECIES_VANILLUXE
    basestats 71, 95, 85, 79, 110, 95
    types TYPE_ICE, TYPE_ICE
    catchrate 45
    baseexp 157
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_ICE_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_VANILLUXE_TM_DATA_0, SPECIES_VANILLUXE_TM_DATA_1, SPECIES_VANILLUXE_TM_DATA_2, SPECIES_VANILLUXE_TM_DATA_3


mondata SPECIES_DEERLING
    basestats 60, 60, 50, 75, 40, 50
    types TYPE_NORMAL, TYPE_GRASS
    catchrate 190
    baseexp 43
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CHLOROPHYLL, ABILITY_SAP_SIPPER
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_DEERLING_TM_DATA_0, SPECIES_DEERLING_TM_DATA_1, SPECIES_DEERLING_TM_DATA_2, SPECIES_DEERLING_TM_DATA_3


mondata SPECIES_SAWSBUCK
    basestats 80, 100, 70, 95, 60, 70
    types TYPE_NORMAL, TYPE_GRASS
    catchrate 75
    baseexp 108
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


mondata SPECIES_EMOLGA
    basestats 55, 75, 60, 103, 75, 60
    types TYPE_ELECTRIC, TYPE_FLYING
    catchrate 200
    baseexp 98
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_CHERI_BERRY, ITEM_CHERI_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_STATIC, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_EMOLGA_TM_DATA_0, SPECIES_EMOLGA_TM_DATA_1, SPECIES_EMOLGA_TM_DATA_2, SPECIES_EMOLGA_TM_DATA_3


mondata SPECIES_KARRABLAST
    basestats 50, 75, 45, 60, 40, 45
    types TYPE_BUG, TYPE_BUG
    catchrate 200
    baseexp 41
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_SHED_SKIN
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_KARRABLAST_TM_DATA_0, SPECIES_KARRABLAST_TM_DATA_1, SPECIES_KARRABLAST_TM_DATA_2, SPECIES_KARRABLAST_TM_DATA_3


mondata SPECIES_ESCAVALIER
    basestats 70, 135, 105, 20, 60, 105
    types TYPE_BUG, TYPE_STEEL
    catchrate 75
    baseexp 113
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_ESCAVALIER_TM_DATA_0, SPECIES_ESCAVALIER_TM_DATA_1, SPECIES_ESCAVALIER_TM_DATA_2, SPECIES_ESCAVALIER_TM_DATA_3


mondata SPECIES_FOONGUS
    basestats 69, 55, 45, 15, 55, 55
    types TYPE_GRASS, TYPE_POISON
    catchrate 190
    baseexp 38
    evyields 1, 0, 0, 0, 0, 0
//    items ITEM_TINYMUSHROOM, ITEM_BIG_MUSHROOM
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_EFFECT_SPORE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_FOONGUS_TM_DATA_0, SPECIES_FOONGUS_TM_DATA_1, SPECIES_FOONGUS_TM_DATA_2, SPECIES_FOONGUS_TM_DATA_3


mondata SPECIES_AMOONGUSS
    basestats 114, 85, 70, 30, 85, 80
    types TYPE_GRASS, TYPE_POISON
    catchrate 75
    baseexp 105
    evyields 2, 0, 0, 0, 0, 0
//    items ITEM_TINYMUSHROOM, ITEM_BIG_MUSHROOM
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_EFFECT_SPORE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_AMOONGUSS_TM_DATA_0, SPECIES_AMOONGUSS_TM_DATA_1, SPECIES_AMOONGUSS_TM_DATA_2, SPECIES_AMOONGUSS_TM_DATA_3


mondata SPECIES_FRILLISH
    basestats 55, 40, 50, 40, 65, 85
    types TYPE_WATER, TYPE_GHOST
    catchrate 190
    baseexp 43
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_WATER_ABSORB, ABILITY_CURSED_BODY
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_FRILLISH_TM_DATA_0, SPECIES_FRILLISH_TM_DATA_1, SPECIES_FRILLISH_TM_DATA_2, SPECIES_FRILLISH_TM_DATA_3


mondata SPECIES_JELLICENT
    basestats 100, 60, 70, 60, 85, 105
    types TYPE_WATER, TYPE_GHOST
    catchrate 60
    baseexp 109
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_WATER_ABSORB, ABILITY_CURSED_BODY
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_JELLICENT_TM_DATA_0, SPECIES_JELLICENT_TM_DATA_1, SPECIES_JELLICENT_TM_DATA_2, SPECIES_JELLICENT_TM_DATA_3


mondata SPECIES_ALOMOMOLA
    basestats 165, 75, 80, 65, 40, 45
    types TYPE_WATER, TYPE_WATER
    catchrate 75
    baseexp 107
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


mondata SPECIES_JOLTIK
    basestats 50, 47, 50, 65, 57, 50
    types TYPE_BUG, TYPE_ELECTRIC
    catchrate 190
    baseexp 41
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_COMPOUND_EYES, ABILITY_UNNERVE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_JOLTIK_TM_DATA_0, SPECIES_JOLTIK_TM_DATA_1, SPECIES_JOLTIK_TM_DATA_2, SPECIES_JOLTIK_TM_DATA_3


mondata SPECIES_GALVANTULA
    basestats 70, 77, 60, 108, 97, 60
    types TYPE_BUG, TYPE_ELECTRIC
    catchrate 75
    baseexp 107
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_COMPOUND_EYES, ABILITY_UNNERVE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_GALVANTULA_TM_DATA_0, SPECIES_GALVANTULA_TM_DATA_1, SPECIES_GALVANTULA_TM_DATA_2, SPECIES_GALVANTULA_TM_DATA_3


mondata SPECIES_FERROSEED
    basestats 44, 50, 91, 10, 24, 86
    types TYPE_GRASS, TYPE_STEEL
    catchrate 255
    baseexp 39
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_STICKY_BARB
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_MINERAL
    abilities ABILITY_IRON_BARBS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_FERROSEED_TM_DATA_0, SPECIES_FERROSEED_TM_DATA_1, SPECIES_FERROSEED_TM_DATA_2, SPECIES_FERROSEED_TM_DATA_3


mondata SPECIES_FERROTHORN
    basestats 74, 94, 131, 20, 54, 116
    types TYPE_GRASS, TYPE_STEEL
    catchrate 90
    baseexp 111
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_STICKY_BARB
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_MINERAL
    abilities ABILITY_IRON_BARBS, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_FERROTHORN_TM_DATA_0, SPECIES_FERROTHORN_TM_DATA_1, SPECIES_FERROTHORN_TM_DATA_2, SPECIES_FERROTHORN_TM_DATA_3


mondata SPECIES_KLINK
    basestats 40, 55, 70, 30, 45, 60
    types TYPE_STEEL, TYPE_STEEL
    catchrate 130
    baseexp 39
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_PLUS, ABILITY_MINUS
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_KLINK_TM_DATA_0, SPECIES_KLINK_TM_DATA_1, SPECIES_KLINK_TM_DATA_2, SPECIES_KLINK_TM_DATA_3


mondata SPECIES_KLANG
    basestats 60, 80, 95, 50, 70, 85
    types TYPE_STEEL, TYPE_STEEL
    catchrate 60
    baseexp 100
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_PLUS, ABILITY_MINUS
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_KLANG_TM_DATA_0, SPECIES_KLANG_TM_DATA_1, SPECIES_KLANG_TM_DATA_2, SPECIES_KLANG_TM_DATA_3


mondata SPECIES_KLINKLANG
    basestats 60, 100, 115, 90, 70, 85
    types TYPE_STEEL, TYPE_STEEL
    catchrate 30
    baseexp 153
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_PLUS, ABILITY_MINUS
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_KLINKLANG_TM_DATA_0, SPECIES_KLINKLANG_TM_DATA_1, SPECIES_KLINKLANG_TM_DATA_2, SPECIES_KLINKLANG_TM_DATA_3


mondata SPECIES_TYNAMO
    basestats 35, 55, 40, 60, 45, 40
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 190
    baseexp 35
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


mondata SPECIES_EELEKTRIK
    basestats 65, 85, 70, 40, 75, 70
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 60
    baseexp 92
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


mondata SPECIES_EELEKTROSS
    basestats 85, 115, 80, 50, 105, 80
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 30
    baseexp 151
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


mondata SPECIES_ELGYEM
    basestats 55, 55, 55, 30, 85, 55
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 255
    baseexp 43
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_TELEPATHY, ABILITY_SYNCHRONIZE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_ELGYEM_TM_DATA_0, SPECIES_ELGYEM_TM_DATA_1, SPECIES_ELGYEM_TM_DATA_2, SPECIES_ELGYEM_TM_DATA_3


mondata SPECIES_BEHEEYEM
    basestats 75, 75, 75, 40, 125, 95
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 90
    baseexp 111
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_HUMAN_LIKE, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_TELEPATHY, ABILITY_SYNCHRONIZE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BEHEEYEM_TM_DATA_0, SPECIES_BEHEEYEM_TM_DATA_1, SPECIES_BEHEEYEM_TM_DATA_2, SPECIES_BEHEEYEM_TM_DATA_3


mondata SPECIES_LITWICK
    basestats 50, 30, 55, 20, 65, 55
    types TYPE_GHOST, TYPE_FIRE
    catchrate 190
    baseexp 35
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_FLASH_FIRE, ABILITY_FLAME_BODY
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_LITWICK_TM_DATA_0, SPECIES_LITWICK_TM_DATA_1, SPECIES_LITWICK_TM_DATA_2, SPECIES_LITWICK_TM_DATA_3


mondata SPECIES_LAMPENT
    basestats 60, 40, 60, 55, 95, 60
    types TYPE_GHOST, TYPE_FIRE
    catchrate 90
    baseexp 85
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_FLASH_FIRE, ABILITY_FLAME_BODY
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_LAMPENT_TM_DATA_0, SPECIES_LAMPENT_TM_DATA_1, SPECIES_LAMPENT_TM_DATA_2, SPECIES_LAMPENT_TM_DATA_3


mondata SPECIES_CHANDELURE
    basestats 60, 55, 90, 80, 145, 90
    types TYPE_GHOST, TYPE_FIRE
    catchrate 45
    baseexp 153
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_FLASH_FIRE, ABILITY_FLAME_BODY
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_CHANDELURE_TM_DATA_0, SPECIES_CHANDELURE_TM_DATA_1, SPECIES_CHANDELURE_TM_DATA_2, SPECIES_CHANDELURE_TM_DATA_3


mondata SPECIES_AXEW
    basestats 46, 87, 60, 57, 30, 40
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 75
    baseexp 41
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


mondata SPECIES_FRAXURE
    basestats 66, 117, 70, 67, 40, 50
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 60
    baseexp 94
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


mondata SPECIES_HAXORUS
    basestats 76, 147, 90, 97, 60, 70
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 158
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


mondata SPECIES_CUBCHOO
    basestats 55, 70, 40, 40, 60, 40
    types TYPE_ICE, TYPE_ICE
    catchrate 120
    baseexp 39
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_ASPEAR_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SNOW_CLOAK, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_CUBCHOO_TM_DATA_0, SPECIES_CUBCHOO_TM_DATA_1, SPECIES_CUBCHOO_TM_DATA_2, SPECIES_CUBCHOO_TM_DATA_3


mondata SPECIES_BEARTIC
    basestats 95, 130, 80, 50, 70, 80
    types TYPE_ICE, TYPE_ICE
    catchrate 60
    baseexp 111
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_ASPEAR_BERRY, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SNOW_CLOAK, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_BEARTIC_TM_DATA_0, SPECIES_BEARTIC_TM_DATA_1, SPECIES_BEARTIC_TM_DATA_2, SPECIES_BEARTIC_TM_DATA_3


mondata SPECIES_CRYOGONAL
    basestats 80, 50, 50, 105, 95, 135
    types TYPE_ICE, TYPE_ICE
    catchrate 25
    baseexp 111
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NEVERMELTICE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_CRYOGONAL_TM_DATA_0, SPECIES_CRYOGONAL_TM_DATA_1, SPECIES_CRYOGONAL_TM_DATA_2, SPECIES_CRYOGONAL_TM_DATA_3


mondata SPECIES_SHELMET
    basestats 50, 40, 85, 25, 40, 65
    types TYPE_BUG, TYPE_BUG
    catchrate 200
    baseexp 39
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_HYDRATION, ABILITY_SHELL_ARMOR
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_SHELMET_TM_DATA_0, SPECIES_SHELMET_TM_DATA_1, SPECIES_SHELMET_TM_DATA_2, SPECIES_SHELMET_TM_DATA_3


mondata SPECIES_ACCELGOR
    basestats 80, 70, 40, 145, 100, 60
    types TYPE_BUG, TYPE_BUG
    catchrate 75
    baseexp 113
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_HYDRATION, ABILITY_STICKY_HOLD
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_ACCELGOR_TM_DATA_0, SPECIES_ACCELGOR_TM_DATA_1, SPECIES_ACCELGOR_TM_DATA_2, SPECIES_ACCELGOR_TM_DATA_3


mondata SPECIES_STUNFISK
    basestats 109, 66, 84, 32, 81, 99
    types TYPE_GROUND, TYPE_ELECTRIC
    catchrate 75
    baseexp 107
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_SOFT_SAND
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_AMORPHOUS
    abilities ABILITY_STATIC, ABILITY_LIMBER
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_STUNFISK_TM_DATA_0, SPECIES_STUNFISK_TM_DATA_1, SPECIES_STUNFISK_TM_DATA_2, SPECIES_STUNFISK_TM_DATA_3


mondata SPECIES_MIENFOO
    basestats 45, 85, 50, 65, 55, 50
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 180
    baseexp 45
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_INNER_FOCUS, ABILITY_REGENERATOR
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_MIENFOO_TM_DATA_0, SPECIES_MIENFOO_TM_DATA_1, SPECIES_MIENFOO_TM_DATA_2, SPECIES_MIENFOO_TM_DATA_3


mondata SPECIES_MIENSHAO
    basestats 65, 125, 60, 105, 95, 60
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 117
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_INNER_FOCUS, ABILITY_REGENERATOR
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_MIENSHAO_TM_DATA_0, SPECIES_MIENSHAO_TM_DATA_1, SPECIES_MIENSHAO_TM_DATA_2, SPECIES_MIENSHAO_TM_DATA_3


mondata SPECIES_DRUDDIGON
    basestats 77, 120, 90, 48, 60, 90
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 111
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_DRAGON_FANG
    genderratio 127
    eggcycles 30
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_MONSTER
    abilities ABILITY_ROUGH_SKIN, ABILITY_SHEER_FORCE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_DRUDDIGON_TM_DATA_0, SPECIES_DRUDDIGON_TM_DATA_1, SPECIES_DRUDDIGON_TM_DATA_2, SPECIES_DRUDDIGON_TM_DATA_3


mondata SPECIES_GOLETT
    basestats 59, 74, 50, 35, 35, 50
    types TYPE_GROUND, TYPE_GHOST
    catchrate 190
    baseexp 39
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_LIGHT_CLAY
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_IRON_FIST, ABILITY_KLUTZ
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_GOLETT_TM_DATA_0, SPECIES_GOLETT_TM_DATA_1, SPECIES_GOLETT_TM_DATA_2, SPECIES_GOLETT_TM_DATA_3


mondata SPECIES_GOLURK
    basestats 89, 124, 80, 55, 55, 80
    types TYPE_GROUND, TYPE_GHOST
    catchrate 90
    baseexp 110
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_LIGHT_CLAY
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_IRON_FIST, ABILITY_KLUTZ
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_GOLURK_TM_DATA_0, SPECIES_GOLURK_TM_DATA_1, SPECIES_GOLURK_TM_DATA_2, SPECIES_GOLURK_TM_DATA_3


mondata SPECIES_PAWNIARD
    basestats 45, 85, 70, 60, 40, 40
    types TYPE_DARK, TYPE_STEEL
    catchrate 120
    baseexp 44
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


mondata SPECIES_BISHARP
    basestats 65, 125, 100, 70, 60, 70
    types TYPE_DARK, TYPE_STEEL
    catchrate 45
    baseexp 112
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


mondata SPECIES_BOUFFALANT
    basestats 95, 110, 95, 55, 40, 95
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 112
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RECKLESS, ABILITY_SAP_SIPPER
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BOUFFALANT_TM_DATA_0, SPECIES_BOUFFALANT_TM_DATA_1, SPECIES_BOUFFALANT_TM_DATA_2, SPECIES_BOUFFALANT_TM_DATA_3


mondata SPECIES_RUFFLET
    basestats 70, 83, 50, 60, 37, 50
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 190
    baseexp 45
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_SHEER_FORCE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_RUFFLET_TM_DATA_0, SPECIES_RUFFLET_TM_DATA_1, SPECIES_RUFFLET_TM_DATA_2, SPECIES_RUFFLET_TM_DATA_3


mondata SPECIES_BRAVIARY
    basestats 100, 123, 75, 80, 57, 75
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 60
    baseexp 117
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE, ABILITY_SHEER_FORCE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_BRAVIARY_TM_DATA_0, SPECIES_BRAVIARY_TM_DATA_1, SPECIES_BRAVIARY_TM_DATA_2, SPECIES_BRAVIARY_TM_DATA_3


mondata SPECIES_VULLABY
    basestats 70, 55, 75, 60, 45, 65
    types TYPE_DARK, TYPE_FLYING
    catchrate 190
    baseexp 48
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


mondata SPECIES_MANDIBUZZ
    basestats 110, 65, 105, 80, 55, 95
    types TYPE_DARK, TYPE_FLYING
    catchrate 60
    baseexp 117
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


mondata SPECIES_HEATMOR
    basestats 85, 97, 66, 65, 105, 66
    types TYPE_FIRE, TYPE_FIRE
    catchrate 90
    baseexp 110
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_GLUTTONY, ABILITY_FLASH_FIRE
    runchance 0
    colorflip BODY_COLOR_EGG, 0
    tmdata SPECIES_HEATMOR_TM_DATA_0, SPECIES_HEATMOR_TM_DATA_1, SPECIES_HEATMOR_TM_DATA_2, SPECIES_HEATMOR_TM_DATA_3


mondata SPECIES_DURANT
    basestats 58, 109, 112, 109, 48, 48
    types TYPE_BUG, TYPE_STEEL
    catchrate 90
    baseexp 110
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_HUSTLE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_DURANT_TM_DATA_0, SPECIES_DURANT_TM_DATA_1, SPECIES_DURANT_TM_DATA_2, SPECIES_DURANT_TM_DATA_3


mondata SPECIES_DEINO
    basestats 52, 65, 50, 38, 45, 50
    types TYPE_DARK, TYPE_DRAGON
    catchrate 45
    baseexp 39
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


mondata SPECIES_ZWEILOUS
    basestats 72, 85, 70, 58, 65, 70
    types TYPE_DARK, TYPE_DRAGON
    catchrate 45
    baseexp 96
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


mondata SPECIES_HYDREIGON
    basestats 92, 105, 90, 98, 125, 90
    types TYPE_DARK, TYPE_DRAGON
    catchrate 45
    baseexp 176
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


mondata SPECIES_LARVESTA
    basestats 55, 85, 55, 60, 50, 55
    types TYPE_BUG, TYPE_FIRE
    catchrate 45
    baseexp 47
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_FLAME_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_LARVESTA_TM_DATA_0, SPECIES_LARVESTA_TM_DATA_1, SPECIES_LARVESTA_TM_DATA_2, SPECIES_LARVESTA_TM_DATA_3


mondata SPECIES_VOLCARONA
    basestats 85, 60, 65, 100, 135, 105
    types TYPE_BUG, TYPE_FIRE
    catchrate 15
    baseexp 162
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_SILVERPOWDER, ITEM_SILVERPOWDER
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_FLAME_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_VOLCARONA_TM_DATA_0, SPECIES_VOLCARONA_TM_DATA_1, SPECIES_VOLCARONA_TM_DATA_2, SPECIES_VOLCARONA_TM_DATA_3


mondata SPECIES_COBALION
    basestats 91, 90, 129, 108, 90, 72
    types TYPE_STEEL, TYPE_FIGHTING
    catchrate 3
    baseexp 170
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


mondata SPECIES_TERRAKION
    basestats 91, 129, 90, 108, 72, 90
    types TYPE_ROCK, TYPE_FIGHTING
    catchrate 3
    baseexp 170
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


mondata SPECIES_VIRIZION
    basestats 91, 90, 72, 108, 90, 129
    types TYPE_GRASS, TYPE_FIGHTING
    catchrate 3
    baseexp 170
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


mondata SPECIES_TORNADUS
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


mondata SPECIES_THUNDURUS
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


mondata SPECIES_RESHIRAM
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


mondata SPECIES_ZEKROM
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


mondata SPECIES_LANDORUS
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


mondata SPECIES_KYUREM
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


mondata SPECIES_KELDEO
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


mondata SPECIES_MELOETTA
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


mondata SPECIES_GENESECT
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


mondata SPECIES_CHESPIN
    basestats 56, 61, 65, 38, 48, 45
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 63
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OVERGROW,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CHESPIN_TM_DATA_0, SPECIES_CHESPIN_TM_DATA_1, SPECIES_CHESPIN_TM_DATA_2, SPECIES_CHESPIN_TM_DATA_3


mondata SPECIES_QUILLADIN
    basestats 61, 78, 95, 57, 56, 58
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 142
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OVERGROW,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_QUILLADIN_TM_DATA_0, SPECIES_QUILLADIN_TM_DATA_1, SPECIES_QUILLADIN_TM_DATA_2, SPECIES_QUILLADIN_TM_DATA_3


mondata SPECIES_CHESNAUGHT
    basestats 88, 107, 122, 64, 74, 75
    types TYPE_GRASS, TYPE_FIGHTING
    catchrate 45
    baseexp 239
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OVERGROW,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CHESNAUGHT_TM_DATA_0, SPECIES_CHESNAUGHT_TM_DATA_1, SPECIES_CHESNAUGHT_TM_DATA_2, SPECIES_CHESNAUGHT_TM_DATA_3


mondata SPECIES_FENNEKIN
    basestats 40, 45, 40, 60, 62, 60
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 61
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_FENNEKIN_TM_DATA_0, SPECIES_FENNEKIN_TM_DATA_1, SPECIES_FENNEKIN_TM_DATA_2, SPECIES_FENNEKIN_TM_DATA_3


mondata SPECIES_BRAIXEN
    basestats 59, 59, 58, 73, 90, 70
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 143
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_BRAIXEN_TM_DATA_0, SPECIES_BRAIXEN_TM_DATA_1, SPECIES_BRAIXEN_TM_DATA_2, SPECIES_BRAIXEN_TM_DATA_3


mondata SPECIES_DELPHOX
    basestats 75, 69, 72, 104, 114, 100
    types TYPE_FIRE, TYPE_PSYCHIC
    catchrate 45
    baseexp 240
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_DELPHOX_TM_DATA_0, SPECIES_DELPHOX_TM_DATA_1, SPECIES_DELPHOX_TM_DATA_2, SPECIES_DELPHOX_TM_DATA_3


mondata SPECIES_FROAKIE
    basestats 41, 56, 40, 71, 62, 44
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 63
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_FROAKIE_TM_DATA_0, SPECIES_FROAKIE_TM_DATA_1, SPECIES_FROAKIE_TM_DATA_2, SPECIES_FROAKIE_TM_DATA_3


mondata SPECIES_FROGADIER
    basestats 54, 63, 52, 97, 83, 56
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 142
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_FROGADIER_TM_DATA_0, SPECIES_FROGADIER_TM_DATA_1, SPECIES_FROGADIER_TM_DATA_2, SPECIES_FROGADIER_TM_DATA_3


mondata SPECIES_GRENINJA
    basestats 72, 95, 67, 122, 103, 71
    types TYPE_WATER, TYPE_DARK
    catchrate 45
    baseexp 239
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_TORRENT,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 1
    tmdata SPECIES_GRENINJA_TM_DATA_0, SPECIES_GRENINJA_TM_DATA_1, SPECIES_GRENINJA_TM_DATA_2, SPECIES_GRENINJA_TM_DATA_3


mondata SPECIES_BUNNELBY
    basestats 38, 36, 38, 57, 32, 36
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 47
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PICKUP,  ABILITY_CHEEK_POUCH
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BUNNELBY_TM_DATA_0, SPECIES_BUNNELBY_TM_DATA_1, SPECIES_BUNNELBY_TM_DATA_2, SPECIES_BUNNELBY_TM_DATA_3


mondata SPECIES_DIGGERSBY
    basestats 85, 56, 77, 78, 50, 77
    types TYPE_NORMAL, TYPE_GROUND
    catchrate 127
    baseexp 148
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_PICKUP,  ABILITY_CHEEK_POUCH
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DIGGERSBY_TM_DATA_0, SPECIES_DIGGERSBY_TM_DATA_1, SPECIES_DIGGERSBY_TM_DATA_2, SPECIES_DIGGERSBY_TM_DATA_3


mondata SPECIES_FLETCHLING
    basestats 45, 50, 43, 62, 40, 38
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 255
    baseexp 56
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_BIG_PECKS,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_FLETCHLING_TM_DATA_0, SPECIES_FLETCHLING_TM_DATA_1, SPECIES_FLETCHLING_TM_DATA_2, SPECIES_FLETCHLING_TM_DATA_3


mondata SPECIES_FLETCHINDER
    basestats 62, 73, 55, 84, 56, 52
    types TYPE_FIRE, TYPE_FLYING
    catchrate 120
    baseexp 134
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_FLAME_BODY,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_FLETCHINDER_TM_DATA_0, SPECIES_FLETCHINDER_TM_DATA_1, SPECIES_FLETCHINDER_TM_DATA_2, SPECIES_FLETCHINDER_TM_DATA_3


mondata SPECIES_TALONFLAME
    basestats 78, 81, 71, 126, 74, 69
    types TYPE_FIRE, TYPE_FLYING
    catchrate 45
    baseexp 175
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_FLAME_BODY,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_TALONFLAME_TM_DATA_0, SPECIES_TALONFLAME_TM_DATA_1, SPECIES_TALONFLAME_TM_DATA_2, SPECIES_TALONFLAME_TM_DATA_3


mondata SPECIES_SCATTERBUG
    basestats 38, 35, 40, 35, 27, 25
    types TYPE_BUG, TYPE_BUG
    catchrate 255
    baseexp 40
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SCATTERBUG_TM_DATA_0, SPECIES_SCATTERBUG_TM_DATA_1, SPECIES_SCATTERBUG_TM_DATA_2, SPECIES_SCATTERBUG_TM_DATA_3


mondata SPECIES_SPEWPA
    basestats 45, 22, 60, 29, 27, 30
    types TYPE_BUG, TYPE_BUG
    catchrate 120
    baseexp 75
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHED_SKIN,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SPEWPA_TM_DATA_0, SPECIES_SPEWPA_TM_DATA_1, SPECIES_SPEWPA_TM_DATA_2, SPECIES_SPEWPA_TM_DATA_3


mondata SPECIES_VIVILLON
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
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_VIVILLON_TM_DATA_0, SPECIES_VIVILLON_TM_DATA_1, SPECIES_VIVILLON_TM_DATA_2, SPECIES_VIVILLON_TM_DATA_3


mondata SPECIES_LITLEO
    basestats 62, 50, 58, 72, 73, 54
    types TYPE_FIRE, TYPE_NORMAL
    catchrate 220
    baseexp 74
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RIVALRY,  ABILITY_UNNERVE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_LITLEO_TM_DATA_0, SPECIES_LITLEO_TM_DATA_1, SPECIES_LITLEO_TM_DATA_2, SPECIES_LITLEO_TM_DATA_3


mondata SPECIES_PYROAR
    basestats 86, 68, 72, 106, 109, 66
    types TYPE_FIRE, TYPE_NORMAL
    catchrate 65
    baseexp 177
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 0
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RIVALRY,  ABILITY_UNNERVE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_PYROAR_TM_DATA_0, SPECIES_PYROAR_TM_DATA_1, SPECIES_PYROAR_TM_DATA_2, SPECIES_PYROAR_TM_DATA_3


mondata SPECIES_FLABEBE
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
    tmdata SPECIES_FLABEBE_TM_DATA_0, SPECIES_FLABEBE_TM_DATA_1, SPECIES_FLABEBE_TM_DATA_2, SPECIES_FLABEBE_TM_DATA_3


mondata SPECIES_FLOETTE
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
    tmdata SPECIES_FLOETTE_TM_DATA_0, SPECIES_FLOETTE_TM_DATA_1, SPECIES_FLOETTE_TM_DATA_2, SPECIES_FLOETTE_TM_DATA_3


mondata SPECIES_FLORGES
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
    tmdata SPECIES_FLORGES_TM_DATA_0, SPECIES_FLORGES_TM_DATA_1, SPECIES_FLORGES_TM_DATA_2, SPECIES_FLORGES_TM_DATA_3


mondata SPECIES_SKIDDO
    basestats 66, 65, 48, 52, 62, 57
    types TYPE_GRASS, TYPE_GRASS
    catchrate 200
    baseexp 70
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAP_SIPPER,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SKIDDO_TM_DATA_0, SPECIES_SKIDDO_TM_DATA_1, SPECIES_SKIDDO_TM_DATA_2, SPECIES_SKIDDO_TM_DATA_3


mondata SPECIES_GOGOAT
    basestats 123, 100, 62, 68, 97, 81
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 186
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_SAP_SIPPER,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GOGOAT_TM_DATA_0, SPECIES_GOGOAT_TM_DATA_1, SPECIES_GOGOAT_TM_DATA_2, SPECIES_GOGOAT_TM_DATA_3


mondata SPECIES_PANCHAM
    basestats 67, 82, 62, 43, 46, 48
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 220
    baseexp 70
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_MENTAL_HERB
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_IRON_FIST,  ABILITY_MOLD_BREAKER
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_PANCHAM_TM_DATA_0, SPECIES_PANCHAM_TM_DATA_1, SPECIES_PANCHAM_TM_DATA_2, SPECIES_PANCHAM_TM_DATA_3


mondata SPECIES_PANGORO
    basestats 95, 124, 78, 58, 69, 71
    types TYPE_FIGHTING, TYPE_DARK
    catchrate 65
    baseexp 173
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_MENTAL_HERB
    genderratio 127
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_IRON_FIST,  ABILITY_MOLD_BREAKER
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_PANGORO_TM_DATA_0, SPECIES_PANGORO_TM_DATA_1, SPECIES_PANGORO_TM_DATA_2, SPECIES_PANGORO_TM_DATA_3


mondata SPECIES_FURFROU
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
    tmdata SPECIES_FURFROU_TM_DATA_0, SPECIES_FURFROU_TM_DATA_1, SPECIES_FURFROU_TM_DATA_2, SPECIES_FURFROU_TM_DATA_3


mondata SPECIES_ESPURR
    basestats 62, 48, 54, 68, 63, 60
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 190
    baseexp 71
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_KEEN_EYE,  ABILITY_INFILTRATOR
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_ESPURR_TM_DATA_0, SPECIES_ESPURR_TM_DATA_1, SPECIES_ESPURR_TM_DATA_2, SPECIES_ESPURR_TM_DATA_3


mondata SPECIES_MEOWSTIC
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


mondata SPECIES_HONEDGE
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


mondata SPECIES_DOUBLADE
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


mondata SPECIES_AEGISLASH
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


mondata SPECIES_SPRITZEE
    basestats 78, 52, 60, 23, 63, 65
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 200
    baseexp 68
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_HEALER,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_SPRITZEE_TM_DATA_0, SPECIES_SPRITZEE_TM_DATA_1, SPECIES_SPRITZEE_TM_DATA_2, SPECIES_SPRITZEE_TM_DATA_3


mondata SPECIES_AROMATISSE
    basestats 101, 72, 72, 29, 99, 89
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 140
    baseexp 162
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_HEALER,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_AROMATISSE_TM_DATA_0, SPECIES_AROMATISSE_TM_DATA_1, SPECIES_AROMATISSE_TM_DATA_2, SPECIES_AROMATISSE_TM_DATA_3


mondata SPECIES_SWIRLIX
    basestats 62, 48, 66, 49, 59, 57
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 200
    baseexp 68
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_SWEET_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SWIRLIX_TM_DATA_0, SPECIES_SWIRLIX_TM_DATA_1, SPECIES_SWIRLIX_TM_DATA_2, SPECIES_SWIRLIX_TM_DATA_3


mondata SPECIES_SLURPUFF
    basestats 82, 80, 86, 72, 85, 75
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 140
    baseexp 168
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_FAIRY
    abilities ABILITY_SWEET_VEIL,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SLURPUFF_TM_DATA_0, SPECIES_SLURPUFF_TM_DATA_1, SPECIES_SLURPUFF_TM_DATA_2, SPECIES_SLURPUFF_TM_DATA_3


mondata SPECIES_INKAY
    basestats 53, 54, 53, 45, 37, 46
    types TYPE_DARK, TYPE_PSYCHIC
    catchrate 190
    baseexp 58
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_2
    abilities ABILITY_CONTRARY,  ABILITY_SUCTION_CUPS
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_INKAY_TM_DATA_0, SPECIES_INKAY_TM_DATA_1, SPECIES_INKAY_TM_DATA_2, SPECIES_INKAY_TM_DATA_3


mondata SPECIES_MALAMAR
    basestats 86, 92, 88, 73, 68, 75
    types TYPE_DARK, TYPE_PSYCHIC
    catchrate 80
    baseexp 169
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_2
    abilities ABILITY_CONTRARY,  ABILITY_SUCTION_CUPS
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_MALAMAR_TM_DATA_0, SPECIES_MALAMAR_TM_DATA_1, SPECIES_MALAMAR_TM_DATA_2, SPECIES_MALAMAR_TM_DATA_3


mondata SPECIES_BINACLE
    basestats 42, 52, 67, 50, 39, 56
    types TYPE_ROCK, TYPE_WATER
    catchrate 120
    baseexp 61
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_TOUGH_CLAWS,  ABILITY_SNIPER
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_BINACLE_TM_DATA_0, SPECIES_BINACLE_TM_DATA_1, SPECIES_BINACLE_TM_DATA_2, SPECIES_BINACLE_TM_DATA_3


mondata SPECIES_BARBARACLE
    basestats 72, 105, 115, 68, 54, 86
    types TYPE_ROCK, TYPE_WATER
    catchrate 45
    baseexp 175
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_TOUGH_CLAWS,  ABILITY_SNIPER
    runchance 0
    colorflip BODY_COLOR_BROWN, 1
    tmdata SPECIES_BARBARACLE_TM_DATA_0, SPECIES_BARBARACLE_TM_DATA_1, SPECIES_BARBARACLE_TM_DATA_2, SPECIES_BARBARACLE_TM_DATA_3


mondata SPECIES_SKRELP
    basestats 50, 60, 60, 30, 60, 60
    types TYPE_POISON, TYPE_WATER
    catchrate 225
    baseexp 64
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_POISON_POINT,  ABILITY_POISON_TOUCH
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SKRELP_TM_DATA_0, SPECIES_SKRELP_TM_DATA_1, SPECIES_SKRELP_TM_DATA_2, SPECIES_SKRELP_TM_DATA_3


mondata SPECIES_DRAGALGE
    basestats 65, 75, 90, 44, 97, 123
    types TYPE_POISON, TYPE_DRAGON
    catchrate 55
    baseexp 173
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_DRAGON
    abilities ABILITY_POISON_POINT,  ABILITY_POISON_TOUCH
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DRAGALGE_TM_DATA_0, SPECIES_DRAGALGE_TM_DATA_1, SPECIES_DRAGALGE_TM_DATA_2, SPECIES_DRAGALGE_TM_DATA_3


mondata SPECIES_CLAUNCHER
    basestats 50, 53, 62, 44, 58, 63
    types TYPE_WATER, TYPE_WATER
    catchrate 225
    baseexp 66
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_MEGA_LAUNCHER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 1
    tmdata SPECIES_CLAUNCHER_TM_DATA_0, SPECIES_CLAUNCHER_TM_DATA_1, SPECIES_CLAUNCHER_TM_DATA_2, SPECIES_CLAUNCHER_TM_DATA_3


mondata SPECIES_CLAWITZER
    basestats 71, 73, 88, 59, 120, 89
    types TYPE_WATER, TYPE_WATER
    catchrate 55
    baseexp 100
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_3
    abilities ABILITY_MEGA_LAUNCHER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 1
    tmdata SPECIES_CLAWITZER_TM_DATA_0, SPECIES_CLAWITZER_TM_DATA_1, SPECIES_CLAWITZER_TM_DATA_2, SPECIES_CLAWITZER_TM_DATA_3


mondata SPECIES_HELIOPTILE
    basestats 44, 38, 33, 70, 61, 43
    types TYPE_ELECTRIC, TYPE_NORMAL
    catchrate 190
    baseexp 58
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_DRY_SKIN,  ABILITY_SAND_VEIL
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_HELIOPTILE_TM_DATA_0, SPECIES_HELIOPTILE_TM_DATA_1, SPECIES_HELIOPTILE_TM_DATA_2, SPECIES_HELIOPTILE_TM_DATA_3


mondata SPECIES_HELIOLISK
    basestats 62, 55, 52, 109, 109, 94
    types TYPE_ELECTRIC, TYPE_NORMAL
    catchrate 75
    baseexp 168
    evyields 0, 0, 0, 1, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_DRY_SKIN,  ABILITY_SAND_VEIL
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_HELIOLISK_TM_DATA_0, SPECIES_HELIOLISK_TM_DATA_1, SPECIES_HELIOLISK_TM_DATA_2, SPECIES_HELIOLISK_TM_DATA_3


mondata SPECIES_TYRUNT
    basestats 58, 89, 77, 48, 45, 45
    types TYPE_ROCK, TYPE_DRAGON
    catchrate 45
    baseexp 72
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 30
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_STRONG_JAW,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_TYRUNT_TM_DATA_0, SPECIES_TYRUNT_TM_DATA_1, SPECIES_TYRUNT_TM_DATA_2, SPECIES_TYRUNT_TM_DATA_3


mondata SPECIES_TYRANTRUM
    basestats 82, 121, 119, 71, 69, 59
    types TYPE_ROCK, TYPE_DRAGON
    catchrate 45
    baseexp 182
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 30
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_STRONG_JAW,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_TYRANTRUM_TM_DATA_0, SPECIES_TYRANTRUM_TM_DATA_1, SPECIES_TYRANTRUM_TM_DATA_2, SPECIES_TYRANTRUM_TM_DATA_3


mondata SPECIES_AMAURA
    basestats 77, 59, 50, 46, 67, 63
    types TYPE_ROCK, TYPE_ICE
    catchrate 45
    baseexp 72
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 30
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_REFRIGERATE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_AMAURA_TM_DATA_0, SPECIES_AMAURA_TM_DATA_1, SPECIES_AMAURA_TM_DATA_2, SPECIES_AMAURA_TM_DATA_3


mondata SPECIES_AURORUS
    basestats 123, 77, 72, 58, 99, 92
    types TYPE_ROCK, TYPE_ICE
    catchrate 45
    baseexp 104
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 30
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MONSTER
    abilities ABILITY_REFRIGERATE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_AURORUS_TM_DATA_0, SPECIES_AURORUS_TM_DATA_1, SPECIES_AURORUS_TM_DATA_2, SPECIES_AURORUS_TM_DATA_3


mondata SPECIES_X_SYLVEON
    basestats 95, 65, 65, 60, 110, 130
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 45
    baseexp 184
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 35
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_CUTE_CHARM,  ABILITY_CUTE_CHARM
    runchance 0
    colorflip BODY_COLOR_PINK, 1
    tmdata SPECIES_X_SYLVEON_TM_DATA_0, SPECIES_X_SYLVEON_TM_DATA_1, SPECIES_X_SYLVEON_TM_DATA_2, SPECIES_X_SYLVEON_TM_DATA_3


mondata SPECIES_HAWLUCHA
    basestats 78, 92, 75, 118, 74, 63
    types TYPE_FIGHTING, TYPE_FLYING
    catchrate 100
    baseexp 175
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_KINGS_ROCK
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_HUMAN_LIKE
    abilities ABILITY_LIMBER,  ABILITY_UNBURDEN
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_HAWLUCHA_TM_DATA_0, SPECIES_HAWLUCHA_TM_DATA_1, SPECIES_HAWLUCHA_TM_DATA_2, SPECIES_HAWLUCHA_TM_DATA_3


mondata SPECIES_DEDENNE
    basestats 67, 58, 57, 101, 81, 67
    types TYPE_ELECTRIC, TYPE_FAIRY
    catchrate 180
    baseexp 151
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_CHEEK_POUCH,  ABILITY_PICKUP
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_DEDENNE_TM_DATA_0, SPECIES_DEDENNE_TM_DATA_1, SPECIES_DEDENNE_TM_DATA_2, SPECIES_DEDENNE_TM_DATA_3


mondata SPECIES_CARBINK
    basestats 50, 50, 150, 50, 50, 150
    types TYPE_ROCK, TYPE_FAIRY
    catchrate 60
    baseexp 100
    evyields 0, 0, 1, 0, 0, 1
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FAIRY, EGG_GROUP_MINERAL
    abilities ABILITY_CLEAR_BODY,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_CARBINK_TM_DATA_0, SPECIES_CARBINK_TM_DATA_1, SPECIES_CARBINK_TM_DATA_2, SPECIES_CARBINK_TM_DATA_3


mondata SPECIES_GOOMY
    basestats 45, 50, 35, 40, 55, 75
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 60
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_SHED_SHELL
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_SAP_SIPPER,  ABILITY_HYDRATION
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GOOMY_TM_DATA_0, SPECIES_GOOMY_TM_DATA_1, SPECIES_GOOMY_TM_DATA_2, SPECIES_GOOMY_TM_DATA_3


mondata SPECIES_SLIGGOO
    basestats 68, 75, 53, 60, 83, 113
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 158
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_SHED_SHELL
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_SAP_SIPPER,  ABILITY_HYDRATION
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SLIGGOO_TM_DATA_0, SPECIES_SLIGGOO_TM_DATA_1, SPECIES_SLIGGOO_TM_DATA_2, SPECIES_SLIGGOO_TM_DATA_3


mondata SPECIES_GOODRA
    basestats 90, 100, 70, 80, 110, 150
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 270
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 35
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_SAP_SIPPER,  ABILITY_HYDRATION
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GOODRA_TM_DATA_0, SPECIES_GOODRA_TM_DATA_1, SPECIES_GOODRA_TM_DATA_2, SPECIES_GOODRA_TM_DATA_3


mondata SPECIES_KLEFKI
    basestats 57, 80, 91, 75, 80, 87
    types TYPE_STEEL, TYPE_FAIRY
    catchrate 75
    baseexp 165
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_PRANKSTER,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 1
    tmdata SPECIES_KLEFKI_TM_DATA_0, SPECIES_KLEFKI_TM_DATA_1, SPECIES_KLEFKI_TM_DATA_2, SPECIES_KLEFKI_TM_DATA_3


mondata SPECIES_PHANTUMP
    basestats 43, 70, 48, 38, 50, 60
    types TYPE_GHOST, TYPE_GRASS
    catchrate 120
    baseexp 62
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_NATURAL_CURE,  ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_PHANTUMP_TM_DATA_0, SPECIES_PHANTUMP_TM_DATA_1, SPECIES_PHANTUMP_TM_DATA_2, SPECIES_PHANTUMP_TM_DATA_3


mondata SPECIES_TREVENANT
    basestats 85, 110, 76, 56, 65, 82
    types TYPE_GHOST, TYPE_GRASS
    catchrate 60
    baseexp 166
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_NATURAL_CURE,  ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_TREVENANT_TM_DATA_0, SPECIES_TREVENANT_TM_DATA_1, SPECIES_TREVENANT_TM_DATA_2, SPECIES_TREVENANT_TM_DATA_3


mondata SPECIES_PUMPKABOO
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


mondata SPECIES_GOURGEIST
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


mondata SPECIES_BERGMITE
    basestats 55, 69, 85, 28, 32, 35
    types TYPE_ICE, TYPE_ICE
    catchrate 190
    baseexp 61
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MINERAL
    abilities ABILITY_OWN_TEMPO,  ABILITY_ICE_BODY
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_BERGMITE_TM_DATA_0, SPECIES_BERGMITE_TM_DATA_1, SPECIES_BERGMITE_TM_DATA_2, SPECIES_BERGMITE_TM_DATA_3


mondata SPECIES_AVALUGG
    basestats 95, 117, 184, 28, 44, 46
    types TYPE_ICE, TYPE_ICE
    catchrate 55
    baseexp 180
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_MINERAL
    abilities ABILITY_OWN_TEMPO,  ABILITY_ICE_BODY
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_AVALUGG_TM_DATA_0, SPECIES_AVALUGG_TM_DATA_1, SPECIES_AVALUGG_TM_DATA_2, SPECIES_AVALUGG_TM_DATA_3


mondata SPECIES_NOIBAT
    basestats 40, 30, 35, 55, 45, 40
    types TYPE_FLYING, TYPE_DRAGON
    catchrate 190
    baseexp 49
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_DRAGON
    abilities ABILITY_FRISK,  ABILITY_INFILTRATOR
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NOIBAT_TM_DATA_0, SPECIES_NOIBAT_TM_DATA_1, SPECIES_NOIBAT_TM_DATA_2, SPECIES_NOIBAT_TM_DATA_3


mondata SPECIES_NOIVERN
    basestats 85, 70, 80, 123, 97, 80
    types TYPE_FLYING, TYPE_DRAGON
    catchrate 45
    baseexp 187
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_DRAGON
    abilities ABILITY_FRISK,  ABILITY_INFILTRATOR
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_NOIVERN_TM_DATA_0, SPECIES_NOIVERN_TM_DATA_1, SPECIES_NOIVERN_TM_DATA_2, SPECIES_NOIVERN_TM_DATA_3


mondata SPECIES_XERNEAS
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
    tmdata SPECIES_XERNEAS_TM_DATA_0, SPECIES_XERNEAS_TM_DATA_1, SPECIES_XERNEAS_TM_DATA_2, SPECIES_XERNEAS_TM_DATA_3


mondata SPECIES_YVELTAL
    basestats 126, 131, 95, 99, 131, 98
    types TYPE_DARK, TYPE_FLYING
    catchrate 45
    baseexp 306
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


mondata SPECIES_ZYGARDE
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


mondata SPECIES_DIANCIE
    basestats 50, 100, 150, 50, 100, 150
    types TYPE_ROCK, TYPE_FAIRY
    catchrate 3
    baseexp 270
    evyields 0, 0, 1, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_CLEAR_BODY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_DIANCIE_TM_DATA_0, SPECIES_DIANCIE_TM_DATA_1, SPECIES_DIANCIE_TM_DATA_2, SPECIES_DIANCIE_TM_DATA_3


mondata SPECIES_HOOPA
    basestats 80, 110, 60, 70, 150, 130
    types TYPE_PSYCHIC, TYPE_GHOST
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
    tmdata SPECIES_HOOPA_TM_DATA_0, SPECIES_HOOPA_TM_DATA_1, SPECIES_HOOPA_TM_DATA_2, SPECIES_HOOPA_TM_DATA_3


mondata SPECIES_VOLCANION
    basestats 80, 110, 120, 70, 130, 90
    types TYPE_FIRE, TYPE_WATER
    catchrate 3
    baseexp 270
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


mondata SPECIES_ROWLET
    basestats 68, 55, 55, 42, 50, 50
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 64
    evyields 1, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_OVERGROW,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_ROWLET_TM_DATA_0, SPECIES_ROWLET_TM_DATA_1, SPECIES_ROWLET_TM_DATA_2, SPECIES_ROWLET_TM_DATA_3


mondata SPECIES_DARTRIX
    basestats 78, 75, 75, 52, 70, 70
    types TYPE_GRASS, TYPE_FLYING
    catchrate 45
    baseexp 147
    evyields 2, 0, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_OVERGROW,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 1
    tmdata SPECIES_DARTRIX_TM_DATA_0, SPECIES_DARTRIX_TM_DATA_1, SPECIES_DARTRIX_TM_DATA_2, SPECIES_DARTRIX_TM_DATA_3


mondata SPECIES_DECIDUEYE
    basestats 78, 107, 75, 70, 100, 100
    types TYPE_GRASS, TYPE_GHOST
    catchrate 45
    baseexp 239
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 254
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_OVERGROW,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_DECIDUEYE_TM_DATA_0, SPECIES_DECIDUEYE_TM_DATA_1, SPECIES_DECIDUEYE_TM_DATA_2, SPECIES_DECIDUEYE_TM_DATA_3


mondata SPECIES_LITTEN
    basestats 45, 65, 40, 70, 60, 40
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 64
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_LITTEN_TM_DATA_0, SPECIES_LITTEN_TM_DATA_1, SPECIES_LITTEN_TM_DATA_2, SPECIES_LITTEN_TM_DATA_3


mondata SPECIES_TORRACAT
    basestats 65, 85, 50, 90, 80, 50
    types TYPE_FIRE, TYPE_FIRE
    catchrate 45
    baseexp 147
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_TORRACAT_TM_DATA_0, SPECIES_TORRACAT_TM_DATA_1, SPECIES_TORRACAT_TM_DATA_2, SPECIES_TORRACAT_TM_DATA_3


mondata SPECIES_INCINEROAR
    basestats 95, 115, 90, 60, 80, 90
    types TYPE_FIRE, TYPE_DARK
    catchrate 45
    baseexp 239
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_BLAZE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_INCINEROAR_TM_DATA_0, SPECIES_INCINEROAR_TM_DATA_1, SPECIES_INCINEROAR_TM_DATA_2, SPECIES_INCINEROAR_TM_DATA_3


mondata SPECIES_POPPLIO
    basestats 50, 54, 54, 40, 66, 56
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 64
    evyields 0, 0, 0, 0, 1, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_TORRENT,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_POPPLIO_TM_DATA_0, SPECIES_POPPLIO_TM_DATA_1, SPECIES_POPPLIO_TM_DATA_2, SPECIES_POPPLIO_TM_DATA_3


mondata SPECIES_BRIONNE
    basestats 60, 69, 69, 50, 91, 81
    types TYPE_WATER, TYPE_WATER
    catchrate 45
    baseexp 147
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_TORRENT,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_BRIONNE_TM_DATA_0, SPECIES_BRIONNE_TM_DATA_1, SPECIES_BRIONNE_TM_DATA_2, SPECIES_BRIONNE_TM_DATA_3


mondata SPECIES_PRIMARINA
    basestats 80, 74, 74, 60, 126, 116
    types TYPE_WATER, TYPE_FAIRY
    catchrate 45
    baseexp 239
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 31
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_FIELD
    abilities ABILITY_TORRENT,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_PRIMARINA_TM_DATA_0, SPECIES_PRIMARINA_TM_DATA_1, SPECIES_PRIMARINA_TM_DATA_2, SPECIES_PRIMARINA_TM_DATA_3


mondata SPECIES_PIKIPEK
    basestats 35, 75, 30, 65, 30, 30
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 255
    baseexp 53
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_ORAN_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE,  ABILITY_SKILL_LINK
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_PIKIPEK_TM_DATA_0, SPECIES_PIKIPEK_TM_DATA_1, SPECIES_PIKIPEK_TM_DATA_2, SPECIES_PIKIPEK_TM_DATA_3


mondata SPECIES_TRUMBEAK
    basestats 55, 85, 50, 75, 40, 50
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 120
    baseexp 124
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_SITRUS_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE,  ABILITY_SKILL_LINK
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_TRUMBEAK_TM_DATA_0, SPECIES_TRUMBEAK_TM_DATA_1, SPECIES_TRUMBEAK_TM_DATA_2, SPECIES_TRUMBEAK_TM_DATA_3


mondata SPECIES_TOUCANNON
    basestats 80, 120, 75, 60, 75, 75
    types TYPE_NORMAL, TYPE_FLYING
    catchrate 45
    baseexp 218
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_RAWST_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FLYING
    abilities ABILITY_KEEN_EYE,  ABILITY_SKILL_LINK
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_TOUCANNON_TM_DATA_0, SPECIES_TOUCANNON_TM_DATA_1, SPECIES_TOUCANNON_TM_DATA_2, SPECIES_TOUCANNON_TM_DATA_3


mondata SPECIES_YUNGOOS
    basestats 48, 70, 30, 45, 30, 30
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 255
    baseexp 51
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_PECHA_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_STAKEOUT,  ABILITY_STRONG_JAW
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_YUNGOOS_TM_DATA_0, SPECIES_YUNGOOS_TM_DATA_1, SPECIES_YUNGOOS_TM_DATA_2, SPECIES_YUNGOOS_TM_DATA_3


mondata SPECIES_GUMSHOOS
    basestats 88, 110, 60, 45, 55, 60
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 127
    baseexp 146
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_PECHA_BERRY
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_STAKEOUT,  ABILITY_STRONG_JAW
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_GUMSHOOS_TM_DATA_0, SPECIES_GUMSHOOS_TM_DATA_1, SPECIES_GUMSHOOS_TM_DATA_2, SPECIES_GUMSHOOS_TM_DATA_3


mondata SPECIES_GRUBBIN
    basestats 47, 62, 45, 46, 55, 45
    types TYPE_BUG, TYPE_BUG
    catchrate 255
    baseexp 60
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_GRUBBIN_TM_DATA_0, SPECIES_GRUBBIN_TM_DATA_1, SPECIES_GRUBBIN_TM_DATA_2, SPECIES_GRUBBIN_TM_DATA_3


mondata SPECIES_CHARJABUG
    basestats 57, 82, 95, 36, 55, 75
    types TYPE_BUG, TYPE_ELECTRIC
    catchrate 120
    baseexp 140
    evyields 0, 0, 2, 0, 0, 0
//    items ITEM_NONE, ITEM_CELL_BATTERY
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_BATTERY, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_CHARJABUG_TM_DATA_0, SPECIES_CHARJABUG_TM_DATA_1, SPECIES_CHARJABUG_TM_DATA_2, SPECIES_CHARJABUG_TM_DATA_3


mondata SPECIES_VIKAVOLT
    basestats 77, 70, 90, 43, 145, 75
    types TYPE_BUG, TYPE_ELECTRIC
    catchrate 45
    baseexp 225
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_LEVITATE, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_VIKAVOLT_TM_DATA_0, SPECIES_VIKAVOLT_TM_DATA_1, SPECIES_VIKAVOLT_TM_DATA_2, SPECIES_VIKAVOLT_TM_DATA_3


mondata SPECIES_CRABRAWLER
    basestats 47, 82, 57, 63, 42, 47
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 225
    baseexp 68
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_ASPEAR_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_HYPER_CUTTER,  ABILITY_IRON_FIST
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_CRABRAWLER_TM_DATA_0, SPECIES_CRABRAWLER_TM_DATA_1, SPECIES_CRABRAWLER_TM_DATA_2, SPECIES_CRABRAWLER_TM_DATA_3


mondata SPECIES_CRABOMINABLE
    basestats 97, 132, 77, 43, 62, 67
    types TYPE_FIGHTING, TYPE_ICE
    catchrate 60
    baseexp 167
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_CHERI_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_3, EGG_GROUP_WATER_3
    abilities ABILITY_HYPER_CUTTER,  ABILITY_IRON_FIST
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_CRABOMINABLE_TM_DATA_0, SPECIES_CRABOMINABLE_TM_DATA_1, SPECIES_CRABOMINABLE_TM_DATA_2, SPECIES_CRABOMINABLE_TM_DATA_3


mondata SPECIES_ORICORIO
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


mondata SPECIES_CUTIEFLY
    basestats 40, 45, 40, 84, 55, 40
    types TYPE_BUG, TYPE_FAIRY
    catchrate 190
    baseexp 61
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_HONEY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_FAIRY
    abilities ABILITY_HONEY_GATHER,  ABILITY_SHIELD_DUST
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_CUTIEFLY_TM_DATA_0, SPECIES_CUTIEFLY_TM_DATA_1, SPECIES_CUTIEFLY_TM_DATA_2, SPECIES_CUTIEFLY_TM_DATA_3


mondata SPECIES_RIBOMBEE
    basestats 60, 55, 60, 124, 95, 70
    types TYPE_BUG, TYPE_FAIRY
    catchrate 75
    baseexp 162
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_HONEY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_FAIRY
    abilities ABILITY_HONEY_GATHER,  ABILITY_SHIELD_DUST
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_RIBOMBEE_TM_DATA_0, SPECIES_RIBOMBEE_TM_DATA_1, SPECIES_RIBOMBEE_TM_DATA_2, SPECIES_RIBOMBEE_TM_DATA_3


mondata SPECIES_ROCKRUFF
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
    abilities ABILITY_KEEN_EYE,  ABILITY_VITAL_SPIRIT
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_ROCKRUFF_TM_DATA_0, SPECIES_ROCKRUFF_TM_DATA_1, SPECIES_ROCKRUFF_TM_DATA_2, SPECIES_ROCKRUFF_TM_DATA_3


mondata SPECIES_LYCANROC
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


mondata SPECIES_WISHIWASHI
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


mondata SPECIES_MAREANIE
    basestats 50, 53, 62, 45, 43, 52
    types TYPE_POISON, TYPE_WATER
    catchrate 190
    baseexp 61
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_POISON_BARB
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_MERCILESS,  ABILITY_LIMBER
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_MAREANIE_TM_DATA_0, SPECIES_MAREANIE_TM_DATA_1, SPECIES_MAREANIE_TM_DATA_2, SPECIES_MAREANIE_TM_DATA_3


mondata SPECIES_TOXAPEX
    basestats 50, 63, 152, 35, 53, 142
    types TYPE_POISON, TYPE_WATER
    catchrate 75
    baseexp 173
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_POISON_BARB
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_MERCILESS,  ABILITY_LIMBER
    runchance 0
    colorflip BODY_COLOR_BLUE, 0
    tmdata SPECIES_TOXAPEX_TM_DATA_0, SPECIES_TOXAPEX_TM_DATA_1, SPECIES_TOXAPEX_TM_DATA_2, SPECIES_TOXAPEX_TM_DATA_3


mondata SPECIES_MUDBRAY
    basestats 70, 100, 70, 45, 45, 55
    types TYPE_GROUND, TYPE_GROUND
    catchrate 190
    baseexp 77
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_LIGHT_CLAY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OWN_TEMPO,  ABILITY_STAMINA
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_MUDBRAY_TM_DATA_0, SPECIES_MUDBRAY_TM_DATA_1, SPECIES_MUDBRAY_TM_DATA_2, SPECIES_MUDBRAY_TM_DATA_3


mondata SPECIES_MUDSDALE
    basestats 100, 125, 100, 35, 55, 85
    types TYPE_GROUND, TYPE_GROUND
    catchrate 60
    baseexp 175
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_LIGHT_CLAY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_OWN_TEMPO,  ABILITY_STAMINA
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_MUDSDALE_TM_DATA_0, SPECIES_MUDSDALE_TM_DATA_1, SPECIES_MUDSDALE_TM_DATA_2, SPECIES_MUDSDALE_TM_DATA_3


mondata SPECIES_DEWPIDER
    basestats 38, 40, 52, 27, 40, 72
    types TYPE_WATER, TYPE_BUG
    catchrate 200
    baseexp 54
    evyields 0, 0, 0, 0, 0, 1
    items ITEM_NONE, ITEM_MYSTIC_WATER
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_BUG
    abilities ABILITY_WATER_BUBBLE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_DEWPIDER_TM_DATA_0, SPECIES_DEWPIDER_TM_DATA_1, SPECIES_DEWPIDER_TM_DATA_2, SPECIES_DEWPIDER_TM_DATA_3


mondata SPECIES_ARAQUANID
    basestats 68, 70, 92, 42, 50, 132
    types TYPE_WATER, TYPE_BUG
    catchrate 100
    baseexp 159
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_MYSTIC_WATER
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_BUG
    abilities ABILITY_WATER_BUBBLE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_ARAQUANID_TM_DATA_0, SPECIES_ARAQUANID_TM_DATA_1, SPECIES_ARAQUANID_TM_DATA_2, SPECIES_ARAQUANID_TM_DATA_3


mondata SPECIES_FOMANTIS
    basestats 40, 55, 35, 35, 50, 35
    types TYPE_GRASS, TYPE_GRASS
    catchrate 190
    baseexp 50
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_MIRACLE_SEED
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_LEAF_GUARD,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_FOMANTIS_TM_DATA_0, SPECIES_FOMANTIS_TM_DATA_1, SPECIES_FOMANTIS_TM_DATA_2, SPECIES_FOMANTIS_TM_DATA_3


mondata SPECIES_LURANTIS
    basestats 70, 105, 90, 45, 80, 90
    types TYPE_GRASS, TYPE_GRASS
    catchrate 75
    baseexp 168
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_MIRACLE_SEED
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_LEAF_GUARD,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_LURANTIS_TM_DATA_0, SPECIES_LURANTIS_TM_DATA_1, SPECIES_LURANTIS_TM_DATA_2, SPECIES_LURANTIS_TM_DATA_3


mondata SPECIES_MORELULL
    basestats 40, 35, 55, 15, 65, 75
    types TYPE_GRASS, TYPE_FAIRY
    catchrate 190
    baseexp 57
    evyields 0, 0, 0, 0, 0, 1
//    items ITEM_TINYMUSHROOM, ITEM_BIG_MUSHROOM
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_ILLUMINATE,  ABILITY_EFFECT_SPORE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_MORELULL_TM_DATA_0, SPECIES_MORELULL_TM_DATA_1, SPECIES_MORELULL_TM_DATA_2, SPECIES_MORELULL_TM_DATA_3


mondata SPECIES_SHIINOTIC
    basestats 60, 45, 80, 30, 90, 100
    types TYPE_GRASS, TYPE_FAIRY
    catchrate 75
    baseexp 142
    evyields 0, 0, 0, 0, 0, 2
//    items ITEM_TINYMUSHROOM, ITEM_BIG_MUSHROOM
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_ILLUMINATE,  ABILITY_EFFECT_SPORE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_SHIINOTIC_TM_DATA_0, SPECIES_SHIINOTIC_TM_DATA_1, SPECIES_SHIINOTIC_TM_DATA_2, SPECIES_SHIINOTIC_TM_DATA_3


mondata SPECIES_SALANDIT
    basestats 48, 44, 40, 77, 71, 40
    types TYPE_POISON, TYPE_FIRE
    catchrate 120
    baseexp 64
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_SMOKE_BALL
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_CORROSION,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SALANDIT_TM_DATA_0, SPECIES_SALANDIT_TM_DATA_1, SPECIES_SALANDIT_TM_DATA_2, SPECIES_SALANDIT_TM_DATA_3


mondata SPECIES_SALAZZLE
    basestats 68, 64, 60, 117, 111, 60
    types TYPE_POISON, TYPE_FIRE
    catchrate 45
    baseexp 168
    evyields 0, 0, 0, 2, 0, 0
    items ITEM_NONE, ITEM_SMOKE_BALL
    genderratio 254
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_CORROSION,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_SALAZZLE_TM_DATA_0, SPECIES_SALAZZLE_TM_DATA_1, SPECIES_SALAZZLE_TM_DATA_2, SPECIES_SALAZZLE_TM_DATA_3


mondata SPECIES_STUFFUL
    basestats 70, 75, 50, 50, 45, 50
    types TYPE_NORMAL, TYPE_FIGHTING
    catchrate 140
    baseexp 68
    evyields 0, 1, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FLUFFY,  ABILITY_KLUTZ
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_STUFFUL_TM_DATA_0, SPECIES_STUFFUL_TM_DATA_1, SPECIES_STUFFUL_TM_DATA_2, SPECIES_STUFFUL_TM_DATA_3


mondata SPECIES_BEWEAR
    basestats 120, 125, 80, 60, 55, 60
    types TYPE_NORMAL, TYPE_FIGHTING
    catchrate 70
    baseexp 175
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_FLUFFY,  ABILITY_KLUTZ
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_BEWEAR_TM_DATA_0, SPECIES_BEWEAR_TM_DATA_1, SPECIES_BEWEAR_TM_DATA_2, SPECIES_BEWEAR_TM_DATA_3


mondata SPECIES_BOUNSWEET
    basestats 42, 30, 38, 32, 30, 38
    types TYPE_GRASS, TYPE_GRASS
    catchrate 235
    baseexp 42
    evyields 1, 0, 0, 0, 0, 0
//    items ITEM_NONE, ITEM_GRASSY_SEED
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_LEAF_GUARD,  ABILITY_OBLIVIOUS
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_BOUNSWEET_TM_DATA_0, SPECIES_BOUNSWEET_TM_DATA_1, SPECIES_BOUNSWEET_TM_DATA_2, SPECIES_BOUNSWEET_TM_DATA_3


mondata SPECIES_STEENEE
    basestats 52, 40, 48, 62, 40, 48
    types TYPE_GRASS, TYPE_GRASS
    catchrate 120
    baseexp 102
    evyields 0, 0, 0, 2, 0, 0
//    items ITEM_NONE, ITEM_GRASSY_SEED
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_LEAF_GUARD,  ABILITY_OBLIVIOUS
    runchance 0
    colorflip BODY_COLOR_PURPLE, 1
    tmdata SPECIES_STEENEE_TM_DATA_0, SPECIES_STEENEE_TM_DATA_1, SPECIES_STEENEE_TM_DATA_2, SPECIES_STEENEE_TM_DATA_3


mondata SPECIES_TSAREENA
    basestats 72, 120, 98, 72, 50, 98
    types TYPE_GRASS, TYPE_GRASS
    catchrate 45
    baseexp 230
    evyields 0, 3, 0, 0, 0, 0
//    items ITEM_NONE, ITEM_GRASSY_SEED
    items ITEM_NONE, ITEM_NONE
    genderratio 244
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_LEAF_GUARD,  ABILITY_QUEENLY_MAJESTY
    runchance 0
    colorflip BODY_COLOR_PURPLE, 1
    tmdata SPECIES_TSAREENA_TM_DATA_0, SPECIES_TSAREENA_TM_DATA_1, SPECIES_TSAREENA_TM_DATA_2, SPECIES_TSAREENA_TM_DATA_3


mondata SPECIES_COMFEY
    basestats 51, 52, 90, 100, 82, 110
    types TYPE_FAIRY, TYPE_FAIRY
    catchrate 60
    baseexp 170
    evyields 0, 0, 0, 0, 0, 2
//    items ITEM_NONE, ITEM_MISTY_SEED
    items ITEM_NONE, ITEM_NONE
    genderratio 191
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_GRASS, EGG_GROUP_GRASS
    abilities ABILITY_FLOWER_VEIL,  ABILITY_TRIAGE
    runchance 0
    colorflip BODY_COLOR_GREEN, 1
    tmdata SPECIES_COMFEY_TM_DATA_0, SPECIES_COMFEY_TM_DATA_1, SPECIES_COMFEY_TM_DATA_2, SPECIES_COMFEY_TM_DATA_3


mondata SPECIES_ORANGURU
    basestats 90, 60, 80, 60, 90, 110
    types TYPE_NORMAL, TYPE_PSYCHIC
    catchrate 45
    baseexp 172
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_INNER_FOCUS,  ABILITY_TELEPATHY
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_ORANGURU_TM_DATA_0, SPECIES_ORANGURU_TM_DATA_1, SPECIES_ORANGURU_TM_DATA_2, SPECIES_ORANGURU_TM_DATA_3


mondata SPECIES_PASSIMIAN
    basestats 100, 120, 90, 80, 40, 60
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 172
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FIELD
    abilities ABILITY_RECEIVER,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_PASSIMIAN_TM_DATA_0, SPECIES_PASSIMIAN_TM_DATA_1, SPECIES_PASSIMIAN_TM_DATA_2, SPECIES_PASSIMIAN_TM_DATA_3


mondata SPECIES_WIMPOD
    basestats 25, 35, 40, 80, 20, 30
    types TYPE_BUG, TYPE_WATER
    catchrate 90
    baseexp 46
    evyields 0, 0, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_WATER_3
    abilities ABILITY_WIMP_OUT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_WIMPOD_TM_DATA_0, SPECIES_WIMPOD_TM_DATA_1, SPECIES_WIMPOD_TM_DATA_2, SPECIES_WIMPOD_TM_DATA_3


mondata SPECIES_GOLISOPOD
    basestats 75, 125, 140, 40, 60, 90
    types TYPE_BUG, TYPE_WATER
    catchrate 45
    baseexp 186
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_WATER_3
    abilities ABILITY_EMERGENCY_EXIT, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_GOLISOPOD_TM_DATA_0, SPECIES_GOLISOPOD_TM_DATA_1, SPECIES_GOLISOPOD_TM_DATA_2, SPECIES_GOLISOPOD_TM_DATA_3


mondata SPECIES_SANDYGAST
    basestats 55, 55, 80, 15, 70, 45
    types TYPE_GHOST, TYPE_GROUND
    catchrate 140
    baseexp 64
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_SPELL_TAG
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_WATER_COMPACTION,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_SANDYGAST_TM_DATA_0, SPECIES_SANDYGAST_TM_DATA_1, SPECIES_SANDYGAST_TM_DATA_2, SPECIES_SANDYGAST_TM_DATA_3


mondata SPECIES_PALOSSAND
    basestats 85, 75, 110, 35, 100, 75
    types TYPE_GHOST, TYPE_GROUND
    catchrate 60
    baseexp 168
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_SPELL_TAG
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_WATER_COMPACTION,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_PALOSSAND_TM_DATA_0, SPECIES_PALOSSAND_TM_DATA_1, SPECIES_PALOSSAND_TM_DATA_2, SPECIES_PALOSSAND_TM_DATA_3


mondata SPECIES_PYUKUMUKU
    basestats 55, 60, 130, 5, 30, 130
    types TYPE_WATER, TYPE_WATER
    catchrate 60
    baseexp 144
    evyields 0, 0, 0, 0, 0, 2
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_FAST
    egggroups EGG_GROUP_WATER_1, EGG_GROUP_WATER_1
    abilities ABILITY_INNARDS_OUT,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 0
    tmdata SPECIES_PYUKUMUKU_TM_DATA_0, SPECIES_PYUKUMUKU_TM_DATA_1, SPECIES_PYUKUMUKU_TM_DATA_2, SPECIES_PYUKUMUKU_TM_DATA_3


mondata SPECIES_TYPE_NULL
    basestats 95, 95, 95, 59, 95, 95
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 3
    baseexp 107
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


mondata SPECIES_SILVALLY
    basestats 95, 95, 95, 95, 95, 95
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 3
    baseexp 257
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


mondata SPECIES_MINIOR
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


mondata SPECIES_KOMALA
    basestats 65, 115, 65, 65, 75, 95
    types TYPE_NORMAL, TYPE_NORMAL
    catchrate 45
    baseexp 168
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


mondata SPECIES_TURTONATOR
    basestats 60, 78, 135, 36, 91, 85
    types TYPE_FIRE, TYPE_DRAGON
    catchrate 70
    baseexp 170
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_CHARCOAL
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_SHELL_ARMOR, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_TURTONATOR_TM_DATA_0, SPECIES_TURTONATOR_TM_DATA_1, SPECIES_TURTONATOR_TM_DATA_2, SPECIES_TURTONATOR_TM_DATA_3


mondata SPECIES_TOGEDEMARU
    basestats 65, 98, 63, 96, 40, 73
    types TYPE_ELECTRIC, TYPE_STEEL
    catchrate 180
    baseexp 152
    evyields 0, 2, 0, 0, 0, 0
//    items ITEM_NONE, ITEM_ELECTRIC_SEED
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 10
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FIELD, EGG_GROUP_FAIRY
    abilities ABILITY_IRON_BARBS,  ABILITY_LIGHTNING_ROD
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_TOGEDEMARU_TM_DATA_0, SPECIES_TOGEDEMARU_TM_DATA_1, SPECIES_TOGEDEMARU_TM_DATA_2, SPECIES_TOGEDEMARU_TM_DATA_3


mondata SPECIES_MIMIKYU
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


mondata SPECIES_BRUXISH
    basestats 68, 105, 70, 92, 70, 70
    types TYPE_WATER, TYPE_PSYCHIC
    catchrate 80
    baseexp 166
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_RAZOR_FANG
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_DAZZLING,  ABILITY_STRONG_JAW
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_BRUXISH_TM_DATA_0, SPECIES_BRUXISH_TM_DATA_1, SPECIES_BRUXISH_TM_DATA_2, SPECIES_BRUXISH_TM_DATA_3


mondata SPECIES_DRAMPA
    basestats 78, 60, 85, 36, 135, 91
    types TYPE_NORMAL, TYPE_DRAGON
    catchrate 70
    baseexp 170
    evyields 0, 0, 0, 0, 2, 0
    items ITEM_NONE, ITEM_PERSIM_BERRY
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MONSTER, EGG_GROUP_DRAGON
    abilities ABILITY_BERSERK,  ABILITY_SAP_SIPPER
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_DRAMPA_TM_DATA_0, SPECIES_DRAMPA_TM_DATA_1, SPECIES_DRAMPA_TM_DATA_2, SPECIES_DRAMPA_TM_DATA_3


mondata SPECIES_DHELMISE
    basestats 70, 131, 100, 40, 86, 90
    types TYPE_GHOST, TYPE_GRASS
    catchrate 25
    baseexp 181
    evyields 0, 2, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 25
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_MINERAL, EGG_GROUP_MINERAL
    abilities ABILITY_STEELWORKER, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GREEN, 1
    tmdata SPECIES_DHELMISE_TM_DATA_0, SPECIES_DHELMISE_TM_DATA_1, SPECIES_DHELMISE_TM_DATA_2, SPECIES_DHELMISE_TM_DATA_3


mondata SPECIES_JANGMO_O
    basestats 45, 55, 65, 45, 45, 45
    types TYPE_DRAGON, TYPE_DRAGON
    catchrate 45
    baseexp 60
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_RAZOR_CLAW
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_BULLETPROOF,  ABILITY_SOUNDPROOF
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_JANGMO_O_TM_DATA_0, SPECIES_JANGMO_O_TM_DATA_1, SPECIES_JANGMO_O_TM_DATA_2, SPECIES_JANGMO_O_TM_DATA_3


mondata SPECIES_HAKAMO_O
    basestats 55, 75, 90, 65, 65, 70
    types TYPE_DRAGON, TYPE_FIGHTING
    catchrate 45
    baseexp 147
    evyields 0, 0, 2, 0, 0, 0
    items ITEM_NONE, ITEM_RAZOR_CLAW
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_BULLETPROOF,  ABILITY_SOUNDPROOF
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_HAKAMO_O_TM_DATA_0, SPECIES_HAKAMO_O_TM_DATA_1, SPECIES_HAKAMO_O_TM_DATA_2, SPECIES_HAKAMO_O_TM_DATA_3


mondata SPECIES_KOMMO_O
    basestats 75, 110, 125, 85, 100, 105
    types TYPE_DRAGON, TYPE_FIGHTING
    catchrate 45
    baseexp 270
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_RAZOR_CLAW, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_DRAGON, EGG_GROUP_DRAGON
    abilities ABILITY_BULLETPROOF,  ABILITY_SOUNDPROOF
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_KOMMO_O_TM_DATA_0, SPECIES_KOMMO_O_TM_DATA_1, SPECIES_KOMMO_O_TM_DATA_2, SPECIES_KOMMO_O_TM_DATA_3


mondata SPECIES_TAPU_KOKO
    basestats 70, 115, 85, 130, 95, 75
    types TYPE_ELECTRIC, TYPE_FAIRY
    catchrate 3
    baseexp 257
    evyields 0, 0, 0, 3, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_ELECTRIC_SURGE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_TAPU_KOKO_TM_DATA_0, SPECIES_TAPU_KOKO_TM_DATA_1, SPECIES_TAPU_KOKO_TM_DATA_2, SPECIES_TAPU_KOKO_TM_DATA_3


mondata SPECIES_TAPU_LELE
    basestats 70, 85, 75, 95, 130, 115
    types TYPE_PSYCHIC, TYPE_FAIRY
    catchrate 3
    baseexp 257
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PSYCHIC_SURGE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PINK, 0
    tmdata SPECIES_TAPU_LELE_TM_DATA_0, SPECIES_TAPU_LELE_TM_DATA_1, SPECIES_TAPU_LELE_TM_DATA_2, SPECIES_TAPU_LELE_TM_DATA_3


mondata SPECIES_TAPU_BULU
    basestats 70, 130, 115, 75, 85, 95
    types TYPE_GRASS, TYPE_FAIRY
    catchrate 3
    baseexp 257
    evyields 0, 3, 0, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_GRASSY_SURGE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_TAPU_BULU_TM_DATA_0, SPECIES_TAPU_BULU_TM_DATA_1, SPECIES_TAPU_BULU_TM_DATA_2, SPECIES_TAPU_BULU_TM_DATA_3


mondata SPECIES_TAPU_FINI
    basestats 70, 75, 115, 85, 95, 130
    types TYPE_WATER, TYPE_FAIRY
    catchrate 3
    baseexp 257
    evyields 0, 0, 0, 0, 0, 3
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_MISTY_SURGE,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_TAPU_FINI_TM_DATA_0, SPECIES_TAPU_FINI_TM_DATA_1, SPECIES_TAPU_FINI_TM_DATA_2, SPECIES_TAPU_FINI_TM_DATA_3


mondata SPECIES_COSMOG
    basestats 43, 29, 31, 37, 29, 31
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 45
    baseexp 40
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


mondata SPECIES_COSMOEM
    basestats 43, 29, 131, 37, 29, 131
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 45
    baseexp 140
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


mondata SPECIES_SOLGALEO
    basestats 137, 137, 107, 97, 113, 89
    types TYPE_PSYCHIC, TYPE_STEEL
    catchrate 45
    baseexp 306
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


mondata SPECIES_LUNALA
    basestats 137, 113, 89, 97, 137, 107
    types TYPE_PSYCHIC, TYPE_GHOST
    catchrate 45
    baseexp 306
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


mondata SPECIES_NIHILEGO
    basestats 109, 53, 47, 103, 127, 131
    types TYPE_ROCK, TYPE_POISON
    catchrate 45
    baseexp 257
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


mondata SPECIES_BUZZWOLE
    basestats 107, 139, 139, 79, 53, 53
    types TYPE_BUG, TYPE_FIGHTING
    catchrate 45
    baseexp 257
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


mondata SPECIES_PHEROMOSA
    basestats 71, 137, 37, 151, 137, 37
    types TYPE_BUG, TYPE_FIGHTING
    catchrate 45
    baseexp 257
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


mondata SPECIES_XURKITREE
    basestats 83, 89, 71, 83, 173, 71
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 45
    baseexp 257
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


mondata SPECIES_CELESTEELA
    basestats 97, 101, 103, 61, 107, 101
    types TYPE_STEEL, TYPE_FLYING
    catchrate 45
    baseexp 257
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


mondata SPECIES_KARTANA
    basestats 59, 181, 131, 109, 59, 31
    types TYPE_GRASS, TYPE_STEEL
    catchrate 45
    baseexp 257
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


mondata SPECIES_GUZZLORD
    basestats 223, 101, 53, 43, 97, 53
    types TYPE_DARK, TYPE_DRAGON
    catchrate 45
    baseexp 257
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


mondata SPECIES_NECROZMA
    basestats 97, 107, 101, 79, 127, 89
    types TYPE_PSYCHIC, TYPE_PSYCHIC
    catchrate 255
    baseexp 270
    evyields 0, 1, 0, 0, 2, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_PRISM_ARMOR, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BLACK, 1
    tmdata SPECIES_NECROZMA_TM_DATA_0, SPECIES_NECROZMA_TM_DATA_1, SPECIES_NECROZMA_TM_DATA_2, SPECIES_NECROZMA_TM_DATA_3


mondata SPECIES_MAGEARNA
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
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_MAGEARNA_TM_DATA_0, SPECIES_MAGEARNA_TM_DATA_1, SPECIES_MAGEARNA_TM_DATA_2, SPECIES_MAGEARNA_TM_DATA_3


mondata SPECIES_MARSHADOW
    basestats 90, 125, 80, 125, 90, 90
    types TYPE_FIGHTING, TYPE_GHOST
    catchrate 3
    baseexp 270
    evyields 0, 2, 0, 1, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_TECHNICIAN, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 1
    tmdata SPECIES_MARSHADOW_TM_DATA_0, SPECIES_MARSHADOW_TM_DATA_1, SPECIES_MARSHADOW_TM_DATA_2, SPECIES_MARSHADOW_TM_DATA_3


mondata SPECIES_POIPOLE
    basestats 67, 73, 67, 73, 73, 67
    types TYPE_POISON, TYPE_POISON
    catchrate 45
    baseexp 189
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


mondata SPECIES_NAGANADEL
    basestats 73, 73, 73, 121, 127, 73
    types TYPE_POISON, TYPE_DRAGON
    catchrate 45
    baseexp 243
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


mondata SPECIES_STAKATAKA
    basestats 61, 131, 211, 13, 53, 101
    types TYPE_ROCK, TYPE_STEEL
    catchrate 30
    baseexp 257
    evyields 0, 0, 3, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BEAST_BOOST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_GRAY, 1
    tmdata SPECIES_STAKATAKA_TM_DATA_0, SPECIES_STAKATAKA_TM_DATA_1, SPECIES_STAKATAKA_TM_DATA_2, SPECIES_STAKATAKA_TM_DATA_3


mondata SPECIES_BLACEPHALON
    basestats 53, 127, 53, 107, 151, 79
    types TYPE_FIRE, TYPE_GHOST
    catchrate 30
    baseexp 257
    evyields 0, 0, 0, 0, 3, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 255
    eggcycles 120
    basefriendship 0
    growthrate GROWTH_SLOW
    egggroups EGG_GROUP_UNDISCOVERED, EGG_GROUP_UNDISCOVERED
    abilities ABILITY_BEAST_BOOST, ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 1
    tmdata SPECIES_BLACEPHALON_TM_DATA_0, SPECIES_BLACEPHALON_TM_DATA_1, SPECIES_BLACEPHALON_TM_DATA_2, SPECIES_BLACEPHALON_TM_DATA_3


mondata SPECIES_ZERAORA
    basestats 88, 112, 75, 143, 102, 80
    types TYPE_ELECTRIC, TYPE_ELECTRIC
    catchrate 3
    baseexp 270
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


mondata SPECIES_MELTAN
    basestats 46, 65, 65, 34, 55, 35
    types TYPE_STEEL, TYPE_STEEL
    catchrate 3
    baseexp 135
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


mondata SPECIES_MELMETAL
    basestats 135, 143, 143, 34, 80, 65
    types TYPE_STEEL, TYPE_STEEL
    catchrate 3
    baseexp 270
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


mondata SPECIES_GROOKEY
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


mondata SPECIES_THWACKEY
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


mondata SPECIES_RILLABOOM
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


mondata SPECIES_SCORBUNNY
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


mondata SPECIES_RABOOT
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


mondata SPECIES_CINDERACE
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


mondata SPECIES_SOBBLE
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


mondata SPECIES_DRIZZILE
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


mondata SPECIES_INTELEON
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


mondata SPECIES_SKWOVET
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


mondata SPECIES_GREEDENT
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


mondata SPECIES_ROOKIDEE
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


mondata SPECIES_CORVISQUIRE
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


mondata SPECIES_CORVIKNIGHT
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


mondata SPECIES_BLIPBUG
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


mondata SPECIES_DOTTLER
    basestats 50, 35, 80, 30, 50, 90
    types TYPE_BUG, TYPE_PSYCHIC
    catchrate 120
    baseexp 117
    evyields 0, 0, 0, 0, 0, 2
//    items ITEM_NONE, ITEM_PSYCHIC_SEED
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM,  ABILITY_COMPOUND_EYES
    runchance 0
    colorflip BODY_COLOR_YELLOW, 0
    tmdata SPECIES_DOTTLER_TM_DATA_0, SPECIES_DOTTLER_TM_DATA_1, SPECIES_DOTTLER_TM_DATA_2, SPECIES_DOTTLER_TM_DATA_3


mondata SPECIES_ORBEETLE
    basestats 60, 45, 110, 90, 80, 120
    types TYPE_BUG, TYPE_PSYCHIC
    catchrate 45
    baseexp 253
    evyields 0, 0, 0, 0, 0, 3
//    items ITEM_NONE, ITEM_PSYCHIC_SEED
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 15
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SWARM,  ABILITY_FRISK
    runchance 0
    colorflip BODY_COLOR_RED, 0
    tmdata SPECIES_ORBEETLE_TM_DATA_0, SPECIES_ORBEETLE_TM_DATA_1, SPECIES_ORBEETLE_TM_DATA_2, SPECIES_ORBEETLE_TM_DATA_3


mondata SPECIES_NICKIT
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


mondata SPECIES_THIEVUL
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


mondata SPECIES_GOSSIFLEUR
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


mondata SPECIES_ELDEGOSS
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


mondata SPECIES_WOOLOO
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


mondata SPECIES_DUBWOOL
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


mondata SPECIES_CHEWTLE
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


mondata SPECIES_DREDNAW
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


mondata SPECIES_YAMPER
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


mondata SPECIES_BOLTUND
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


mondata SPECIES_ROLYCOLY
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


mondata SPECIES_CARKOL
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


mondata SPECIES_COALOSSAL
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


mondata SPECIES_APPLIN
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


mondata SPECIES_FLAPPLE
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


mondata SPECIES_APPLETUN
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


mondata SPECIES_SILICOBRA
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


mondata SPECIES_SANDACONDA
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


mondata SPECIES_CRAMORANT
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


mondata SPECIES_ARROKUDA
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


mondata SPECIES_BARRASKEWDA
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


mondata SPECIES_TOXEL
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


mondata SPECIES_TOXTRICITY
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


mondata SPECIES_SIZZLIPEDE
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


mondata SPECIES_CENTISKORCH
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


mondata SPECIES_CLOBBOPUS
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


mondata SPECIES_GRAPPLOCT
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


mondata SPECIES_SINISTEA
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


mondata SPECIES_POLTEAGEIST
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


mondata SPECIES_HATENNA
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


mondata SPECIES_HATTREM
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


mondata SPECIES_HATTERENE
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


mondata SPECIES_IMPIDIMP
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


mondata SPECIES_MORGREM
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


mondata SPECIES_GRIMMSNARL
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


mondata SPECIES_OBSTAGOON
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


mondata SPECIES_PERRSERKER
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


mondata SPECIES_CURSOLA
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


mondata SPECIES_SIRFETCHD
    basestats 62, 135, 95, 65, 68, 82
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 177
    evyields 0, 2, 0, 0, 0, 0
//    items ITEM_NONE, ITEM_LEEK
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


mondata SPECIES_MR_RIME
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


mondata SPECIES_RUNERIGUS
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


mondata SPECIES_MILCERY
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


mondata SPECIES_ALCREMIE
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


mondata SPECIES_FALINKS
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


mondata SPECIES_PINCURCHIN
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


mondata SPECIES_SNOM
    basestats 30, 25, 35, 20, 45, 30
    types TYPE_ICE, TYPE_BUG
    catchrate 190
    baseexp 37
    evyields 0, 0, 0, 0, 1, 0
//    items ITEM_NONE, ITEM_SNOWBALL
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_SHIELD_DUST,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_WHITE, 0
    tmdata SPECIES_SNOM_TM_DATA_0, SPECIES_SNOM_TM_DATA_1, SPECIES_SNOM_TM_DATA_2, SPECIES_SNOM_TM_DATA_3


mondata SPECIES_FROSMOTH
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


mondata SPECIES_STONJOURNER
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


mondata SPECIES_EISCUE
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


mondata SPECIES_INDEEDEE
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


mondata SPECIES_MORPEKO
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


mondata SPECIES_CUFANT
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


mondata SPECIES_COPPERAJAH
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


mondata SPECIES_DRACOZOLT
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


mondata SPECIES_ARCTOZOLT
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


mondata SPECIES_DRACOVISH
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


mondata SPECIES_ARCTOVISH
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


mondata SPECIES_DURALUDON
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


mondata SPECIES_DREEPY
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


mondata SPECIES_DRAKLOAK
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


mondata SPECIES_DRAGAPULT
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


mondata SPECIES_ZACIAN
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


mondata SPECIES_ZAMAZENTA
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


mondata SPECIES_ETERNATUS
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


mondata SPECIES_KUBFU
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


mondata SPECIES_URSHIFU
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


mondata SPECIES_ZARUDE
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


mondata SPECIES_REGIELEKI
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


mondata SPECIES_REGIDRAGO
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


mondata SPECIES_GLASTRIER
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


mondata SPECIES_SPECTRIER
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


mondata SPECIES_CALYREX
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


mondata SPECIES_X_WYRDEER
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
    tmdata SPECIES_X_WYRDEER_TM_DATA_0, SPECIES_X_WYRDEER_TM_DATA_1, SPECIES_X_WYRDEER_TM_DATA_2, SPECIES_X_WYRDEER_TM_DATA_3


mondata SPECIES_X_KLEAVOR
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
    tmdata SPECIES_X_KLEAVOR_TM_DATA_0, SPECIES_X_KLEAVOR_TM_DATA_1, SPECIES_X_KLEAVOR_TM_DATA_2, SPECIES_X_KLEAVOR_TM_DATA_3


mondata SPECIES_X_URSALUNA
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
    tmdata SPECIES_X_URSALUNA_TM_DATA_0, SPECIES_X_URSALUNA_TM_DATA_1, SPECIES_X_URSALUNA_TM_DATA_2, SPECIES_X_URSALUNA_TM_DATA_3


mondata SPECIES_BASCULEGION
    basestats 120, 112, 65, 78, 80, 75
    types TYPE_WATER, TYPE_GHOST
    catchrate 135
    baseexp 208
    evyields 2,0,0,0,0,0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 0
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_RATTLED, ABILITY_ADAPTABILITY
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_BASCULEGION_TM_DATA_0, SPECIES_BASCULEGION_TM_DATA_1, SPECIES_BASCULEGION_TM_DATA_2, SPECIES_BASCULEGION_TM_DATA_3


mondata SPECIES_SNEASLER
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


mondata SPECIES_OVERQWIL
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


mondata SPECIES_ENAMORUS
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


mondata SPECIES_MEGA_VENUSAUR
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

mondata SPECIES_MEGA_CHARIZARD_X
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

mondata SPECIES_MEGA_CHARIZARD_Y
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

mondata SPECIES_MEGA_BLASTOISE
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

mondata SPECIES_MEGA_BEEDRILL
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

mondata SPECIES_MEGA_PIDGEOT
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

mondata SPECIES_MEGA_ALAKAZAM
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

mondata SPECIES_MEGA_SLOWBRO
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

mondata SPECIES_MEGA_GENGAR
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

mondata SPECIES_MEGA_KANGASKHAN
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

mondata SPECIES_MEGA_PINSIR
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

mondata SPECIES_MEGA_GYARADOS
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

mondata SPECIES_MEGA_AERODACTYL
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

mondata SPECIES_MEGA_MEWTWO_X
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

mondata SPECIES_MEGA_MEWTWO_Y
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

mondata SPECIES_MEGA_AMPHAROS
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

mondata SPECIES_MEGA_STEELIX
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

mondata SPECIES_MEGA_SCIZOR
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

mondata SPECIES_MEGA_HERACROSS
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

mondata SPECIES_MEGA_HOUNDOOM
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

mondata SPECIES_MEGA_TYRANITAR
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

mondata SPECIES_MEGA_SCEPTILE
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

mondata SPECIES_MEGA_BLAZIKEN
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

mondata SPECIES_MEGA_SWAMPERT
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

mondata SPECIES_MEGA_GARDEVOIR
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

mondata SPECIES_MEGA_SABLEYE
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

mondata SPECIES_MEGA_MAWILE
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

mondata SPECIES_MEGA_AGGRON
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

mondata SPECIES_MEGA_MEDICHAM
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

mondata SPECIES_MEGA_MANECTRIC
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

mondata SPECIES_MEGA_SHARPEDO
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

mondata SPECIES_MEGA_CAMERUPT
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

mondata SPECIES_MEGA_ALTARIA
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

mondata SPECIES_MEGA_BANETTE
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

mondata SPECIES_MEGA_ABSOL
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

mondata SPECIES_MEGA_GLALIE
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

mondata SPECIES_MEGA_SALAMENCE
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

mondata SPECIES_MEGA_METAGROSS
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

mondata SPECIES_MEGA_LATIAS
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

mondata SPECIES_MEGA_LATIOS
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

mondata SPECIES_MEGA_RAYQUAZA
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

mondata SPECIES_MEGA_LOPUNNY
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

mondata SPECIES_MEGA_GARCHOMP
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

mondata SPECIES_MEGA_LUCARIO
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

mondata SPECIES_MEGA_ABOMASNOW
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

mondata SPECIES_MEGA_GALLADE
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

mondata SPECIES_MEGA_AUDINO
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

mondata SPECIES_MEGA_DIANCIE
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

mondata SPECIES_GROUDON_PRIMAL
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

mondata SPECIES_KYOGRE_PRIMAL
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
    
mondata SPECIES_RATTATA_ALOLAN
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


mondata SPECIES_RATICATE_ALOLAN
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


mondata SPECIES_RAICHU_ALOLAN
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


mondata SPECIES_SANDSHREW_ALOLAN
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


mondata SPECIES_SANDSLASH_ALOLAN
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


mondata SPECIES_VULPIX_ALOLAN
    basestats 38, 41, 40, 65, 50, 65
    types TYPE_ICE, TYPE_ICE
    catchrate 190
    baseexp 60
    evyields 0, 0, 0, 1, 0, 0
//    items ITEM_NONE, ITEM_SNOWBALL
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


mondata SPECIES_NINETALES_ALOLAN
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


mondata SPECIES_DIGLETT_ALOLAN
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


mondata SPECIES_DUGTRIO_ALOLAN
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


mondata SPECIES_MEOWTH_ALOLAN
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


mondata SPECIES_PERSIAN_ALOLAN
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


mondata SPECIES_GEODUDE_ALOLAN
    basestats 40, 80, 100, 20, 30, 30
    types TYPE_ROCK, TYPE_ELECTRIC
    catchrate 255
    baseexp 60
    evyields 0, 0, 1, 0, 0, 0
//    items ITEM_NONE, ITEM_CELL_BATTERY
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


mondata SPECIES_GRAVELER_ALOLAN
    basestats 55, 95, 115, 35, 45, 45
    types TYPE_ROCK, TYPE_ELECTRIC
    catchrate 120
    baseexp 137
    evyields 0, 0, 2, 0, 0, 0
//    items ITEM_NONE, ITEM_CELL_BATTERY
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


mondata SPECIES_GOLEM_ALOLAN
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


mondata SPECIES_GRIMER_ALOLAN
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


mondata SPECIES_MUK_ALOLAN
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


mondata SPECIES_EXEGGUTOR_ALOLAN
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


mondata SPECIES_MAROWAK_ALOLAN
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


mondata SPECIES_MEOWTH_GALARIAN
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


mondata SPECIES_PONYTA_GALARIAN
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


mondata SPECIES_RAPIDASH_GALARIAN
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


mondata SPECIES_SLOWPOKE_GALARIAN
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


mondata SPECIES_SLOWBRO_GALARIAN
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


mondata SPECIES_FARFETCHD_GALARIAN
    basestats 52, 95, 55, 55, 58, 62
    types TYPE_FIGHTING, TYPE_FIGHTING
    catchrate 45
    baseexp 132
    evyields 0, 1, 0, 0, 0, 0
//    items ITEM_NONE, ITEM_LEEK
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_FLYING, EGG_GROUP_FIELD
    abilities ABILITY_STEADFAST,  ABILITY_NONE
    runchance 0
    colorflip BODY_COLOR_BROWN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_WEEZING_GALARIAN
    basestats 65, 90, 120, 60, 85, 70
    types TYPE_POISON, TYPE_FAIRY
    catchrate 60
    baseexp 172
    evyields 0, 0, 2, 0, 0, 0
//    items ITEM_NONE, ITEM_MISTY_SEED
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_AMORPHOUS, EGG_GROUP_AMORPHOUS
    abilities ABILITY_LEVITATE,  ABILITY_NEUTRALIZING_GAS
    runchance 0
    colorflip BODY_COLOR_GRAY, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_MR_MIME_GALARIAN
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


mondata SPECIES_ARTICUNO_GALARIAN
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


mondata SPECIES_ZAPDOS_GALARIAN
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


mondata SPECIES_MOLTRES_GALARIAN
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


mondata SPECIES_SLOWKING_GALARIAN
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


mondata SPECIES_CORSOLA_GALARIAN
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


mondata SPECIES_ZIGZAGOON_GALARIAN
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


mondata SPECIES_LINOONE_GALARIAN
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


mondata SPECIES_DARUMAKA_GALARIAN
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


mondata SPECIES_DARMANITAN_GALARIAN
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


mondata SPECIES_YAMASK_GALARIAN
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


mondata SPECIES_STUNFISK_GALARIAN
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


mondata SPECIES_PIKACHU_COSPLAY
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


mondata SPECIES_PIKACHU_ROCK_STAR
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


mondata SPECIES_PIKACHU_BELLE
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


mondata SPECIES_PIKACHU_POP_STAR
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


mondata SPECIES_PIKACHU_PH_D
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


mondata SPECIES_PIKACHU_LIBRE
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


mondata SPECIES_PIKACHU_ORIGINAL_CAP
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


mondata SPECIES_PIKACHU_HOENN_CAP
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


mondata SPECIES_PIKACHU_SINNOH_CAP
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


mondata SPECIES_PIKACHU_UNOVA_CAP
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


mondata SPECIES_PIKACHU_KALOS_CAP
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


mondata SPECIES_PIKACHU_ALOLA_CAP
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


mondata SPECIES_PIKACHU_PARTNER_CAP
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


mondata SPECIES_PIKACHU_WORLD_CAP
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


mondata SPECIES_CASTFORM_SUNNY
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


mondata SPECIES_CASTFORM_RAINY
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


mondata SPECIES_CASTFORM_SNOWY
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


mondata SPECIES_CHERRIM_SUNSHINE
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


mondata SPECIES_SHELLOS_EAST_SEA
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


mondata SPECIES_GASTRODON_EAST_SEA
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


mondata SPECIES_DIALGA_ORIGIN
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


mondata SPECIES_PALKIA_ORIGIN
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


mondata SPECIES_BASCULIN_BLUE_STRIPED
    basestats 70, 92, 65, 98, 80, 55
    types TYPE_WATER, TYPE_WATER
    catchrate 25
    baseexp 161
    evyields 0, 0, 0, 2, 0, 0
//    items ITEM_NONE, ITEM_DEEP_SEA_SCALE
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_ROCK_HEAD,  ABILITY_ADAPTABILITY
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_BASCULIN_WHITE_STRIPED
    basestats 70, 92, 65, 98, 80, 55
    types TYPE_WATER, TYPE_WATER
    catchrate 25
    baseexp 161
    evyields 0, 0, 0, 2, 0, 0
//    items ITEM_NONE, ITEM_DEEP_SEA_SCALE
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 40
    basefriendship 70
    growthrate GROWTH_MEDIUM_FAST
    egggroups EGG_GROUP_WATER_2, EGG_GROUP_WATER_2
    abilities ABILITY_ROCK_HEAD,  ABILITY_ADAPTABILITY
    runchance 0
    colorflip BODY_COLOR_GREEN, 0
    tmdata SPECIES_NONE_TM_DATA_0, SPECIES_NONE_TM_DATA_1, SPECIES_NONE_TM_DATA_2, SPECIES_NONE_TM_DATA_3


mondata SPECIES_DARMANITAN_ZEN_MODE
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


mondata SPECIES_DARMANITAN_ZEN_MODE_GALARIAN
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


mondata SPECIES_DEERLING_SUMMER
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


mondata SPECIES_DEERLING_AUTUMN
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


mondata SPECIES_DEERLING_WINTER
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


mondata SPECIES_SAWSBUCK_SUMMER
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


mondata SPECIES_SAWSBUCK_AUTUMN
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


mondata SPECIES_SAWSBUCK_WINTER
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


mondata SPECIES_TORNADUS_THERIAN
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


mondata SPECIES_THUNDURUS_THERIAN
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


mondata SPECIES_LANDORUS_THERIAN
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


mondata SPECIES_KYUREM_WHITE
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


mondata SPECIES_KYUREM_BLACK
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


mondata SPECIES_KELDEO_RESOLUTE
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


mondata SPECIES_MELOETTA_PIROUETTE
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


mondata SPECIES_GENESECT_DOUSE_DRIVE
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


mondata SPECIES_GENESECT_SHOCK_DRIVE
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


mondata SPECIES_GENESECT_BURN_DRIVE
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


mondata SPECIES_GENESECT_CHILL_DRIVE
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


mondata SPECIES_GRENINJA_BATTLE_BOND
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


mondata SPECIES_GRENINJA_ASH
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


mondata SPECIES_VIVILLON_POLAR
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


mondata SPECIES_VIVILLON_TUNDRA
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


mondata SPECIES_VIVILLON_CONTINENTAL
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


mondata SPECIES_VIVILLON_GARDEN
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


mondata SPECIES_VIVILLON_ELEGANT
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


mondata SPECIES_VIVILLON_MEADOW
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


mondata SPECIES_VIVILLON_MODERN
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


mondata SPECIES_VIVILLON_MARINE
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


mondata SPECIES_VIVILLON_ARCHIPELAGO
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


mondata SPECIES_VIVILLON_HIGH_PLAINS
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


mondata SPECIES_VIVILLON_SANDSTORM
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


mondata SPECIES_VIVILLON_RIVER
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


mondata SPECIES_VIVILLON_MONSOON
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


mondata SPECIES_VIVILLON_SAVANNA
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


mondata SPECIES_VIVILLON_SUN
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


mondata SPECIES_VIVILLON_OCEAN
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


mondata SPECIES_VIVILLON_JUNGLE
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


mondata SPECIES_VIVILLON_FANCY
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


mondata SPECIES_VIVILLON_POKE_BALL
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


mondata SPECIES_FLABEBE_YELLOW_FLOWER
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


mondata SPECIES_FLABEBE_ORANGE_FLOWER
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


mondata SPECIES_FLABEBE_BLUE_FLOWER
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


mondata SPECIES_FLABEBE_WHITE_FLOWER
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


mondata SPECIES_FLOETTE_YELLOW_FLOWER
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


mondata SPECIES_FLOETTE_ORANGE_FLOWER
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


mondata SPECIES_FLOETTE_BLUE_FLOWER
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


mondata SPECIES_FLOETTE_WHITE_FLOWER
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


mondata SPECIES_FLOETTE_ETERNAL_FLOWER
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


mondata SPECIES_FLORGES_YELLOW_FLOWER
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


mondata SPECIES_FLORGES_ORANGE_FLOWER
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


mondata SPECIES_FLORGES_BLUE_FLOWER
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


mondata SPECIES_FLORGES_WHITE_FLOWER
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


mondata SPECIES_FURFROU_HEART
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


mondata SPECIES_FURFROU_STAR
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


mondata SPECIES_FURFROU_DIAMOND
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


mondata SPECIES_FURFROU_DEBUTANTE
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


mondata SPECIES_FURFROU_MATRON
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


mondata SPECIES_FURFROU_DANDY
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


mondata SPECIES_FURFROU_LA_REINE
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


mondata SPECIES_FURFROU_KABUKI
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


mondata SPECIES_FURFROU_PHARAOH
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


mondata SPECIES_AEGISLASH_BLADE
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


mondata SPECIES_PUMPKABOO_SMALL
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


mondata SPECIES_PUMPKABOO_LARGE
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


mondata SPECIES_PUMPKABOO_SUPER
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


mondata SPECIES_GOURGEIST_SMALL
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


mondata SPECIES_GOURGEIST_LARGE
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


mondata SPECIES_GOURGEIST_SUPER
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


mondata SPECIES_XERNEAS_ACTIVE
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


mondata SPECIES_ZYGARDE_10
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


mondata SPECIES_ZYGARDE_10_POWER_CONSTRUCT
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


mondata SPECIES_ZYGARDE_50_POWER_CONSTRUCT
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


mondata SPECIES_ZYGARDE_10_COMPLETE
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


mondata SPECIES_ZYGARDE_50_COMPLETE
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


mondata SPECIES_HOOPA_UNBOUND
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


mondata SPECIES_ORICORIO_POM_POM
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


mondata SPECIES_ORICORIO_PAU
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


mondata SPECIES_ORICORIO_SENSU
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


mondata SPECIES_ROCKRUFF_OWN_TEMPO
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


mondata SPECIES_LYCANROC_MIDNIGHT
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


mondata SPECIES_LYCANROC_DUSK
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


mondata SPECIES_WISHIWASHI_SCHOOL
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


mondata SPECIES_MINIOR_METEOR_ORANGE
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


mondata SPECIES_MINIOR_METEOR_YELLOW
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


mondata SPECIES_MINIOR_METEOR_GREEN
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


mondata SPECIES_MINIOR_METEOR_BLUE
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


mondata SPECIES_MINIOR_METEOR_INDIGO
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


mondata SPECIES_MINIOR_METEOR_VIOLET
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


mondata SPECIES_MINIOR_CORE_RED
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


mondata SPECIES_MINIOR_CORE_ORANGE
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


mondata SPECIES_MINIOR_CORE_YELLOW
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


mondata SPECIES_MINIOR_CORE_GREEN
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


mondata SPECIES_MINIOR_CORE_BLUE
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


mondata SPECIES_MINIOR_CORE_INDIGO
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


mondata SPECIES_MINIOR_CORE_VIOLET
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


mondata SPECIES_MIMIKYU_BUSTED
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


mondata SPECIES_NECROZMA_DUSK_MANE
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


mondata SPECIES_NECROZMA_DAWN_WINGS
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


mondata SPECIES_NECROZMA_ULTRA_DUSK_MANE
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


mondata SPECIES_NECROZMA_ULTRA_DAWN_WINGS
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


mondata SPECIES_MAGEARNA_ORIGINAL
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


mondata SPECIES_CRAMORANT_GULPING
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


mondata SPECIES_CRAMORANT_GORGING
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


mondata SPECIES_TOXTRICITY_LOW_KEY
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


mondata SPECIES_SINISTEA_ANTIQUE
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


mondata SPECIES_POLTEAGEIST_ANTIQUE
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


mondata SPECIES_ALCREMIE_BERRY_SWEET
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


mondata SPECIES_ALCREMIE_LOVE_SWEET
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


mondata SPECIES_ALCREMIE_STAR_SWEET
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


mondata SPECIES_ALCREMIE_CLOVER_SWEET
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


mondata SPECIES_ALCREMIE_FLOWER_SWEET
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


mondata SPECIES_ALCREMIE_RIBBON_SWEET
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


mondata SPECIES_ALCREMIE_FILLER_1
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


mondata SPECIES_ALCREMIE_FILLER_2
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


mondata SPECIES_EISCUE_NOICE_FACE
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


mondata SPECIES_MORPEKO_HANGRY
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


mondata SPECIES_ZACIAN_CROWNED
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


mondata SPECIES_ZAMAZENTA_CROWNED
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


mondata SPECIES_ETERNATUS_ETERNAMAX
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


mondata SPECIES_URSHIFU_RAPID_STRIKE
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


mondata SPECIES_ZARUDE_DADA
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


mondata SPECIES_CALYREX_ICE_RIDER
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


mondata SPECIES_CALYREX_SHADOW_RIDER
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


mondata SPECIES_ENAMORUS_THERIAN
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


mondata SPECIES_GROWLITHE_HISUIAN
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


mondata SPECIES_ARCANINE_HISUIAN
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


mondata SPECIES_VOLTORB_HISUIAN
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


mondata SPECIES_ELECTRODE_HISUIAN
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


mondata SPECIES_TYPHLOSION_HISUIAN
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


mondata SPECIES_QWILFISH_HISUIAN
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


mondata SPECIES_SNEASEL_HISUIAN
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


mondata SPECIES_SAMUROTT_HISUIAN
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


mondata SPECIES_LILLIGANT_HISUIAN
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


mondata SPECIES_ZORUA_HISUIAN
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


mondata SPECIES_ZOROARK_HISUIAN
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


mondata SPECIES_BRAVIARY_HISUIAN
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


mondata SPECIES_SLIGGOO_HISUIAN
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


mondata SPECIES_GOODRA_HISUIAN
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


mondata SPECIES_AVALUGG_HISUIAN
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


mondata SPECIES_DECIDUEYE_HISUIAN
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


mondata SPECIES_UNFEZANT_FEMALE
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


mondata SPECIES_FRILLISH_FEMALE
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


mondata SPECIES_JELLICENT_FEMALE
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


mondata SPECIES_PYROAR_FEMALE
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


mondata SPECIES_MEOWSTIC_FEMALE
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


mondata SPECIES_INDEEDEE_FEMALE
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
