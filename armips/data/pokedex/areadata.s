.nds
.thumb

.include "armips/include/constants.s"
.include "armips/include/macros.s"

.include "asm/include/species.inc"

/*

deep teardown of sub_21E8698 here.  the jumptable specifically:

0 - +2   (2)
1 - +1F1 (497)
2 - +3E0 (992)
3 - +B9C (2972)
4 - +5CF (1487)
5 - +7BE (1982)
6 - +9AD (2477)
7 - +D8B (3467)


open:
4, 7, 0, 3

switch to kanto:
4, 7, 0, 3

switch to daytime:
5, 7, 1, 3

switch to night time:
6, 7, 2, 3


0 is special areas morning
1 is special areas daytime
2 is special areas night
3 is special areas special data (i.e. headbutt trees) - blinks red
4 is routes/stuff morning
5 is routes/stuff daytime
6 is routes/stuff night time
7 is routes/stuff special data (i.e. headbutt trees) - blinks red


output of genmonareadexdata was split using
csplit --digits=2  --quiet --suffix=%04d.txt areadata.txt "/// ///+1" "{*}"
and then reconcatenated using sortmonareadexdata with a checkitout directory.  it is here

*/

specialareas SPECIES_NONE, DEX_MORNING
    .word DEX_SPROUT_TOWER
    .word DEX_RUINS_OF_ALPH
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_ILEX_FOREST
    .word DEX_NATIONAL_PARK
    .word DEX_BURNED_TOWER
    .word DEX_BELL_TOWER
    .word DEX_WHIRL_ISLANDS
    .word DEX_MT_MORTAR
    .word DEX_ICE_PATH
    .word DEX_DRAGONS_DEN
    .word DEX_DARK_CAVE
    .word DEX_MT_MOON
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_EDGE_GATE
    .word DEX_CLIFF_CAVE
    .word DEX_OLIVINE_CITY_SPECIAL
    .word DEX_ROCK_TUNNEL
    .word DEX_VICTORY_ROAD
    .word DEX_TOHJO_FALLS
    .word DEX_DIGLETTS_CAVE
    .word DEX_VIRIDIAN_FOREST
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_NONE, DEX_DAY
    .word DEX_SPROUT_TOWER
    .word DEX_RUINS_OF_ALPH
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_ILEX_FOREST
    .word DEX_NATIONAL_PARK
    .word DEX_BURNED_TOWER
    .word DEX_BELL_TOWER
    .word DEX_WHIRL_ISLANDS
    .word DEX_MT_MORTAR
    .word DEX_ICE_PATH
    .word DEX_DRAGONS_DEN
    .word DEX_DARK_CAVE
    .word DEX_MT_MOON
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_EDGE_GATE
    .word DEX_CLIFF_CAVE
    .word DEX_OLIVINE_CITY_SPECIAL
    .word DEX_ROCK_TUNNEL
    .word DEX_VICTORY_ROAD
    .word DEX_TOHJO_FALLS
    .word DEX_DIGLETTS_CAVE
    .word DEX_VIRIDIAN_FOREST
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_NONE, DEX_NIGHT
    .word DEX_SPROUT_TOWER
    .word DEX_RUINS_OF_ALPH
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_ILEX_FOREST
    .word DEX_NATIONAL_PARK
    .word DEX_BURNED_TOWER
    .word DEX_BELL_TOWER
    .word DEX_WHIRL_ISLANDS
    .word DEX_MT_MORTAR
    .word DEX_ICE_PATH
    .word DEX_DRAGONS_DEN
    .word DEX_DARK_CAVE
    .word DEX_MT_MOON
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_EDGE_GATE
    .word DEX_CLIFF_CAVE
    .word DEX_OLIVINE_CITY_SPECIAL
    .word DEX_ROCK_TUNNEL
    .word DEX_VICTORY_ROAD
    .word DEX_TOHJO_FALLS
    .word DEX_DIGLETTS_CAVE
    .word DEX_VIRIDIAN_FOREST
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_NONE, DEX_MORNING
    .word DEX_NEW_BARK_TOWN
    .word DEX_ROUTE_29
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_VIOLET_CITY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_33
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    .word DEX_ECRUTEAK_CITY
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_ROUTE_41
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_42
    .word DEX_ROUTE_43
    .word DEX_LAKE_OF_RAGE
    .word DEX_ROUTE_44
    .word DEX_BLACKTHORN_CITY
    .word DEX_ROUTE_45
    .word DEX_ROUTE_46
    .word DEX_ROUTE_47
    .word DEX_MT_SILVER
    .word DEX_ROUTE_12
    .word DEX_ROUTE_19
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VIRIDIAN_CITY
    .word DEX_CERULEAN_CITY
    .word DEX_VERMILION_CITY
    .word DEX_CELADON_CITY
    .word DEX_FUCHSIA_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_48
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_28
    .word DEX_ROUTE_1
    .word DEX_ROUTE_2
    .word DEX_ROUTE_3
    .word DEX_ROUTE_4
    .word DEX_ROUTE_5
    .word DEX_ROUTE_6
    .word DEX_ROUTE_7
    .word DEX_ROUTE_8
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_11
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    .word DEX_ROUTE_16
    .word DEX_ROUTE_17
    .word DEX_ROUTE_18
    .word DEX_ROUTE_21
    .word DEX_ROUTE_22
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    .word DEX_ROUTE_2_2
    dexendareadata


routesandcities SPECIES_NONE, DEX_DAY
    .word DEX_NEW_BARK_TOWN
    .word DEX_ROUTE_29
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_VIOLET_CITY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_33
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    .word DEX_ECRUTEAK_CITY
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_ROUTE_41
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_42
    .word DEX_ROUTE_43
    .word DEX_LAKE_OF_RAGE
    .word DEX_ROUTE_44
    .word DEX_BLACKTHORN_CITY
    .word DEX_ROUTE_45
    .word DEX_ROUTE_46
    .word DEX_ROUTE_47
    .word DEX_MT_SILVER
    .word DEX_ROUTE_12
    .word DEX_ROUTE_19
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VIRIDIAN_CITY
    .word DEX_CERULEAN_CITY
    .word DEX_VERMILION_CITY
    .word DEX_CELADON_CITY
    .word DEX_FUCHSIA_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_48
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_28
    .word DEX_ROUTE_1
    .word DEX_ROUTE_2
    .word DEX_ROUTE_3
    .word DEX_ROUTE_4
    .word DEX_ROUTE_5
    .word DEX_ROUTE_6
    .word DEX_ROUTE_7
    .word DEX_ROUTE_8
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_11
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    .word DEX_ROUTE_16
    .word DEX_ROUTE_17
    .word DEX_ROUTE_18
    .word DEX_ROUTE_21
    .word DEX_ROUTE_22
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    .word DEX_ROUTE_2_2
    dexendareadata


routesandcities SPECIES_NONE, DEX_NIGHT
    .word DEX_NEW_BARK_TOWN
    .word DEX_ROUTE_29
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_VIOLET_CITY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_33
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    .word DEX_ECRUTEAK_CITY
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_ROUTE_41
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_42
    .word DEX_ROUTE_43
    .word DEX_LAKE_OF_RAGE
    .word DEX_ROUTE_44
    .word DEX_BLACKTHORN_CITY
    .word DEX_ROUTE_45
    .word DEX_ROUTE_46
    .word DEX_ROUTE_47
    .word DEX_MT_SILVER
    .word DEX_ROUTE_12
    .word DEX_ROUTE_19
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VIRIDIAN_CITY
    .word DEX_CERULEAN_CITY
    .word DEX_VERMILION_CITY
    .word DEX_CELADON_CITY
    .word DEX_FUCHSIA_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_48
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_28
    .word DEX_ROUTE_1
    .word DEX_ROUTE_2
    .word DEX_ROUTE_3
    .word DEX_ROUTE_4
    .word DEX_ROUTE_5
    .word DEX_ROUTE_6
    .word DEX_ROUTE_7
    .word DEX_ROUTE_8
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_11
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    .word DEX_ROUTE_16
    .word DEX_ROUTE_17
    .word DEX_ROUTE_18
    .word DEX_ROUTE_21
    .word DEX_ROUTE_22
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    .word DEX_ROUTE_2_2
    dexendareadata


routesandcities SPECIES_NONE, DEX_SPECIAL
    .word DEX_WHIRL_ISLANDS
    .word DEX_DRAGONS_DEN
    .word DEX_MT_MOON
    .word DEX_CLIFF_EDGE_GATE
    .word DEX_OLIVINE_CITY_SPECIAL
    .word DEX_TOHJO_FALLS
    dexendareadata


specialareas SPECIES_NONE, DEX_SPECIAL
    .word DEX_NEW_BARK_TOWN
    .word DEX_CHERRYGROVE_CITY
    .word DEX_VIOLET_CITY
    .word DEX_ECRUTEAK_CITY
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_ROUTE_41
    .word DEX_CIANWOOD_CITY
    .word DEX_LAKE_OF_RAGE
    .word DEX_BLACKTHORN_CITY
    .word DEX_ROUTE_12
    .word DEX_ROUTE_19
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VIRIDIAN_CITY
    .word DEX_CERULEAN_CITY
    .word DEX_VERMILION_CITY
    .word DEX_CELADON_CITY
    .word DEX_FUCHSIA_CITY
    .word DEX_CINNABAR_CITY
    dexendareadata


specialareas SPECIES_BULBASAUR, DEX_MORNING
    dexendareadata


specialareas SPECIES_BULBASAUR, DEX_DAY
    dexendareadata


specialareas SPECIES_BULBASAUR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BULBASAUR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BULBASAUR, DEX_DAY
    dexendareadata


routesandcities SPECIES_BULBASAUR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BULBASAUR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BULBASAUR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_IVYSAUR, DEX_MORNING
    dexendareadata


specialareas SPECIES_IVYSAUR, DEX_DAY
    dexendareadata


specialareas SPECIES_IVYSAUR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_IVYSAUR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_IVYSAUR, DEX_DAY
    dexendareadata


routesandcities SPECIES_IVYSAUR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_IVYSAUR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_IVYSAUR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VENUSAUR, DEX_MORNING
    dexendareadata


specialareas SPECIES_VENUSAUR, DEX_DAY
    dexendareadata


specialareas SPECIES_VENUSAUR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VENUSAUR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VENUSAUR, DEX_DAY
    dexendareadata


routesandcities SPECIES_VENUSAUR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VENUSAUR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VENUSAUR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHARMANDER, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHARMANDER, DEX_DAY
    dexendareadata


specialareas SPECIES_CHARMANDER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHARMANDER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHARMANDER, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHARMANDER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHARMANDER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CHARMANDER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHARMELEON, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHARMELEON, DEX_DAY
    dexendareadata


specialareas SPECIES_CHARMELEON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHARMELEON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHARMELEON, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHARMELEON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHARMELEON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CHARMELEON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHARIZARD, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHARIZARD, DEX_DAY
    dexendareadata


specialareas SPECIES_CHARIZARD, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHARIZARD, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHARIZARD, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHARIZARD, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHARIZARD, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CHARIZARD, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SQUIRTLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_SQUIRTLE, DEX_DAY
    dexendareadata


specialareas SPECIES_SQUIRTLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SQUIRTLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SQUIRTLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SQUIRTLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SQUIRTLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SQUIRTLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WARTORTLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_WARTORTLE, DEX_DAY
    dexendareadata


specialareas SPECIES_WARTORTLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WARTORTLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WARTORTLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_WARTORTLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WARTORTLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WARTORTLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BLASTOISE, DEX_MORNING
    dexendareadata


specialareas SPECIES_BLASTOISE, DEX_DAY
    dexendareadata


specialareas SPECIES_BLASTOISE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BLASTOISE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BLASTOISE, DEX_DAY
    dexendareadata


routesandcities SPECIES_BLASTOISE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BLASTOISE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BLASTOISE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CATERPIE, DEX_MORNING
    .word DEX_ILEX_FOREST
    .word DEX_NATIONAL_PARK
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


specialareas SPECIES_CATERPIE, DEX_DAY
    .word DEX_ILEX_FOREST
    .word DEX_NATIONAL_PARK
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


specialareas SPECIES_CATERPIE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CATERPIE, DEX_MORNING
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_ROUTE_2
    .word DEX_ROUTE_2_2
    dexendareadata


routesandcities SPECIES_CATERPIE, DEX_DAY
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_ROUTE_2
    .word DEX_ROUTE_2_2
    dexendareadata


routesandcities SPECIES_CATERPIE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CATERPIE, DEX_SPECIAL
    .word DEX_ILEX_FOREST
    dexendareadata


routesandcities SPECIES_CATERPIE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_METAPOD, DEX_MORNING
    .word DEX_ILEX_FOREST
    .word DEX_NATIONAL_PARK
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


specialareas SPECIES_METAPOD, DEX_DAY
    .word DEX_ILEX_FOREST
    .word DEX_NATIONAL_PARK
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


specialareas SPECIES_METAPOD, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_METAPOD, DEX_MORNING
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_ROUTE_2
    .word DEX_ROUTE_2_2
    dexendareadata


routesandcities SPECIES_METAPOD, DEX_DAY
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_ROUTE_2
    dexendareadata


routesandcities SPECIES_METAPOD, DEX_NIGHT
    dexendareadata


specialareas SPECIES_METAPOD, DEX_SPECIAL
    .word DEX_ILEX_FOREST
    dexendareadata


routesandcities SPECIES_METAPOD, DEX_SPECIAL
    .word DEX_ROUTE_47
    dexendareadata


specialareas SPECIES_BUTTERFREE, DEX_MORNING
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


specialareas SPECIES_BUTTERFREE, DEX_DAY
    dexendareadata


specialareas SPECIES_BUTTERFREE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BUTTERFREE, DEX_MORNING
    .word DEX_ROUTE_2
    .word DEX_ROUTE_2_2
    dexendareadata


routesandcities SPECIES_BUTTERFREE, DEX_DAY
    .word DEX_ROUTE_2_2
    dexendareadata


routesandcities SPECIES_BUTTERFREE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BUTTERFREE, DEX_SPECIAL
    .word DEX_ILEX_FOREST
    dexendareadata


routesandcities SPECIES_BUTTERFREE, DEX_SPECIAL
    .word DEX_ROUTE_47
    dexendareadata


specialareas SPECIES_WEEDLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_WEEDLE, DEX_DAY
    dexendareadata


specialareas SPECIES_WEEDLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WEEDLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WEEDLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_WEEDLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WEEDLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WEEDLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KAKUNA, DEX_MORNING
    dexendareadata


specialareas SPECIES_KAKUNA, DEX_DAY
    dexendareadata


specialareas SPECIES_KAKUNA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KAKUNA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KAKUNA, DEX_DAY
    dexendareadata


routesandcities SPECIES_KAKUNA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KAKUNA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KAKUNA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BEEDRILL, DEX_MORNING
    dexendareadata


specialareas SPECIES_BEEDRILL, DEX_DAY
    dexendareadata


specialareas SPECIES_BEEDRILL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BEEDRILL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BEEDRILL, DEX_DAY
    dexendareadata


routesandcities SPECIES_BEEDRILL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BEEDRILL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BEEDRILL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PIDGEY, DEX_MORNING
    .word DEX_NATIONAL_PARK
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


specialareas SPECIES_PIDGEY, DEX_DAY
    .word DEX_NATIONAL_PARK
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


specialareas SPECIES_PIDGEY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PIDGEY, DEX_MORNING
    .word DEX_ROUTE_29
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_ROUTE_35
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    .word DEX_ROUTE_1
    .word DEX_ROUTE_2
    .word DEX_ROUTE_5
    .word DEX_ROUTE_6
    .word DEX_ROUTE_25
    .word DEX_ROUTE_2_2
    dexendareadata


routesandcities SPECIES_PIDGEY, DEX_DAY
    .word DEX_ROUTE_29
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_ROUTE_35
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    .word DEX_ROUTE_1
    .word DEX_ROUTE_2
    .word DEX_ROUTE_5
    .word DEX_ROUTE_6
    .word DEX_ROUTE_25
    .word DEX_ROUTE_2_2
    dexendareadata


routesandcities SPECIES_PIDGEY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PIDGEY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PIDGEY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PIDGEOTTO, DEX_MORNING
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


specialareas SPECIES_PIDGEOTTO, DEX_DAY
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


specialareas SPECIES_PIDGEOTTO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PIDGEOTTO, DEX_MORNING
    .word DEX_ROUTE_43
    .word DEX_ROUTE_2
    .word DEX_ROUTE_8
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    .word DEX_ROUTE_25
    .word DEX_ROUTE_2_2
    dexendareadata


routesandcities SPECIES_PIDGEOTTO, DEX_DAY
    .word DEX_ROUTE_37
    .word DEX_ROUTE_43
    .word DEX_ROUTE_2
    .word DEX_ROUTE_8
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    .word DEX_ROUTE_25
    .word DEX_ROUTE_2_2
    dexendareadata


routesandcities SPECIES_PIDGEOTTO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PIDGEOTTO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PIDGEOTTO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PIDGEOT, DEX_MORNING
    dexendareadata


specialareas SPECIES_PIDGEOT, DEX_DAY
    dexendareadata


specialareas SPECIES_PIDGEOT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PIDGEOT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PIDGEOT, DEX_DAY
    dexendareadata


routesandcities SPECIES_PIDGEOT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PIDGEOT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PIDGEOT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RATTATA, DEX_MORNING
    .word DEX_SPROUT_TOWER
    .word DEX_UNION_CAVE
    .word DEX_BURNED_TOWER
    .word DEX_BELL_TOWER
    .word DEX_MT_MORTAR
    .word DEX_TOHJO_FALLS
    dexendareadata


specialareas SPECIES_RATTATA, DEX_DAY
    .word DEX_SPROUT_TOWER
    .word DEX_UNION_CAVE
    .word DEX_BURNED_TOWER
    .word DEX_BELL_TOWER
    .word DEX_MT_MORTAR
    .word DEX_TOHJO_FALLS
    dexendareadata


specialareas SPECIES_RATTATA, DEX_NIGHT
    .word DEX_SPROUT_TOWER
    .word DEX_UNION_CAVE
    .word DEX_BURNED_TOWER
    .word DEX_BELL_TOWER
    .word DEX_MT_MORTAR
    .word DEX_TOHJO_FALLS
    dexendareadata


routesandcities SPECIES_RATTATA, DEX_MORNING
    .word DEX_ROUTE_29
    .word DEX_ROUTE_32
    .word DEX_ROUTE_33
    .word DEX_ROUTE_34
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_46
    .word DEX_ROUTE_1
    .word DEX_ROUTE_3
    .word DEX_ROUTE_4
    .word DEX_ROUTE_7
    .word DEX_ROUTE_9
    .word DEX_ROUTE_11
    .word DEX_ROUTE_22
    dexendareadata


routesandcities SPECIES_RATTATA, DEX_DAY
    .word DEX_ROUTE_29
    .word DEX_ROUTE_32
    .word DEX_ROUTE_33
    .word DEX_ROUTE_34
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_46
    .word DEX_ROUTE_1
    .word DEX_ROUTE_3
    .word DEX_ROUTE_4
    .word DEX_ROUTE_7
    .word DEX_ROUTE_9
    .word DEX_ROUTE_11
    .word DEX_ROUTE_22
    dexendareadata


routesandcities SPECIES_RATTATA, DEX_NIGHT
    .word DEX_ROUTE_29
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_ROUTE_32
    .word DEX_ROUTE_33
    .word DEX_ROUTE_34
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_46
    .word DEX_ROUTE_1
    .word DEX_ROUTE_3
    .word DEX_ROUTE_4
    .word DEX_ROUTE_7
    .word DEX_ROUTE_9
    .word DEX_ROUTE_11
    .word DEX_ROUTE_22
    dexendareadata


specialareas SPECIES_RATTATA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RATTATA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RATICATE, DEX_MORNING
    .word DEX_UNION_CAVE
    .word DEX_BURNED_TOWER
    .word DEX_MT_MORTAR
    .word DEX_TOHJO_FALLS
    dexendareadata


specialareas SPECIES_RATICATE, DEX_DAY
    .word DEX_UNION_CAVE
    .word DEX_BURNED_TOWER
    .word DEX_MT_MORTAR
    .word DEX_TOHJO_FALLS
    dexendareadata


specialareas SPECIES_RATICATE, DEX_NIGHT
    .word DEX_UNION_CAVE
    .word DEX_BURNED_TOWER
    .word DEX_MT_MORTAR
    .word DEX_TOHJO_FALLS
    dexendareadata


routesandcities SPECIES_RATICATE, DEX_MORNING
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_47
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_7
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    dexendareadata


routesandcities SPECIES_RATICATE, DEX_DAY
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_47
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_7
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    dexendareadata


routesandcities SPECIES_RATICATE, DEX_NIGHT
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_47
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_7
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    dexendareadata


specialareas SPECIES_RATICATE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RATICATE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SPEAROW, DEX_MORNING
    dexendareadata


specialareas SPECIES_SPEAROW, DEX_DAY
    dexendareadata


specialareas SPECIES_SPEAROW, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SPEAROW, DEX_MORNING
    .word DEX_ROUTE_33
    .word DEX_ROUTE_42
    .word DEX_ROUTE_46
    .word DEX_ROUTE_47
    .word DEX_ROUTE_3
    .word DEX_ROUTE_4
    .word DEX_ROUTE_7
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_22
    dexendareadata


routesandcities SPECIES_SPEAROW, DEX_DAY
    .word DEX_ROUTE_33
    .word DEX_ROUTE_42
    .word DEX_ROUTE_46
    .word DEX_ROUTE_47
    .word DEX_ROUTE_3
    .word DEX_ROUTE_4
    .word DEX_ROUTE_7
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_22
    dexendareadata


routesandcities SPECIES_SPEAROW, DEX_NIGHT
    .word DEX_ROUTE_47
    .word DEX_ROUTE_4
    dexendareadata


specialareas SPECIES_SPEAROW, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SPEAROW, DEX_SPECIAL
    .word DEX_ROUTE_33
    .word DEX_ROUTE_42
    .word DEX_ROUTE_44
    .word DEX_ROUTE_45
    .word DEX_ROUTE_46
    .word DEX_VERMILION_CITY
    .word DEX_CELADON_CITY
    .word DEX_ROUTE_7
    .word DEX_ROUTE_11
    .word DEX_ROUTE_16
    .word DEX_AZALEA_TOWN
    .word DEX_ROUTE_16_2
    dexendareadata


specialareas SPECIES_FEAROW, DEX_MORNING
    dexendareadata


specialareas SPECIES_FEAROW, DEX_DAY
    dexendareadata


specialareas SPECIES_FEAROW, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FEAROW, DEX_MORNING
    .word DEX_ROUTE_47
    .word DEX_ROUTE_48
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_16
    .word DEX_ROUTE_17
    .word DEX_ROUTE_18
    .word DEX_ROUTE_22
    dexendareadata


routesandcities SPECIES_FEAROW, DEX_DAY
    .word DEX_ROUTE_47
    .word DEX_ROUTE_48
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_16
    .word DEX_ROUTE_17
    .word DEX_ROUTE_18
    .word DEX_ROUTE_22
    dexendareadata


routesandcities SPECIES_FEAROW, DEX_NIGHT
    .word DEX_ROUTE_47
    .word DEX_ROUTE_48
    dexendareadata


specialareas SPECIES_FEAROW, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FEAROW, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_EKANS, DEX_MORNING
    dexendareadata


specialareas SPECIES_EKANS, DEX_DAY
    dexendareadata


specialareas SPECIES_EKANS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_EKANS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_EKANS, DEX_DAY
    dexendareadata


routesandcities SPECIES_EKANS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_EKANS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_EKANS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ARBOK, DEX_MORNING
    dexendareadata


specialareas SPECIES_ARBOK, DEX_DAY
    dexendareadata


specialareas SPECIES_ARBOK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ARBOK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ARBOK, DEX_DAY
    dexendareadata


routesandcities SPECIES_ARBOK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ARBOK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ARBOK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PIKACHU, DEX_MORNING
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


specialareas SPECIES_PIKACHU, DEX_DAY
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


specialareas SPECIES_PIKACHU, DEX_NIGHT
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


routesandcities SPECIES_PIKACHU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PIKACHU, DEX_DAY
    dexendareadata


routesandcities SPECIES_PIKACHU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PIKACHU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PIKACHU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RAICHU, DEX_MORNING
    dexendareadata


specialareas SPECIES_RAICHU, DEX_DAY
    dexendareadata


specialareas SPECIES_RAICHU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RAICHU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RAICHU, DEX_DAY
    dexendareadata


routesandcities SPECIES_RAICHU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RAICHU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RAICHU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SANDSHREW, DEX_MORNING
    .word DEX_UNION_CAVE
    .word DEX_MT_MOON
    dexendareadata


specialareas SPECIES_SANDSHREW, DEX_DAY
    .word DEX_UNION_CAVE
    .word DEX_MT_MOON
    dexendareadata


specialareas SPECIES_SANDSHREW, DEX_NIGHT
    .word DEX_UNION_CAVE
    .word DEX_MT_MOON
    dexendareadata


routesandcities SPECIES_SANDSHREW, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SANDSHREW, DEX_DAY
    dexendareadata


routesandcities SPECIES_SANDSHREW, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SANDSHREW, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SANDSHREW, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SANDSLASH, DEX_MORNING
    .word DEX_MT_MOON
    dexendareadata


specialareas SPECIES_SANDSLASH, DEX_DAY
    .word DEX_MT_MOON
    dexendareadata


specialareas SPECIES_SANDSLASH, DEX_NIGHT
    .word DEX_MT_MOON
    dexendareadata


routesandcities SPECIES_SANDSLASH, DEX_MORNING
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    dexendareadata


routesandcities SPECIES_SANDSLASH, DEX_DAY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    dexendareadata


routesandcities SPECIES_SANDSLASH, DEX_NIGHT
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    dexendareadata


specialareas SPECIES_SANDSLASH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SANDSLASH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NIDORAN_F, DEX_MORNING
    dexendareadata


specialareas SPECIES_NIDORAN_F, DEX_DAY
    dexendareadata


specialareas SPECIES_NIDORAN_F, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NIDORAN_F, DEX_MORNING
    .word DEX_ROUTE_35
    .word DEX_ROUTE_36
    dexendareadata


routesandcities SPECIES_NIDORAN_F, DEX_DAY
    .word DEX_ROUTE_35
    .word DEX_ROUTE_36
    dexendareadata


routesandcities SPECIES_NIDORAN_F, DEX_NIGHT
    .word DEX_ROUTE_35
    .word DEX_ROUTE_36
    dexendareadata


specialareas SPECIES_NIDORAN_F, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NIDORAN_F, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NIDORINA, DEX_MORNING
    dexendareadata


specialareas SPECIES_NIDORINA, DEX_DAY
    dexendareadata


specialareas SPECIES_NIDORINA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NIDORINA, DEX_MORNING
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    dexendareadata


routesandcities SPECIES_NIDORINA, DEX_DAY
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    dexendareadata


routesandcities SPECIES_NIDORINA, DEX_NIGHT
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    dexendareadata


specialareas SPECIES_NIDORINA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NIDORINA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NIDOQUEEN, DEX_MORNING
    dexendareadata


specialareas SPECIES_NIDOQUEEN, DEX_DAY
    dexendareadata


specialareas SPECIES_NIDOQUEEN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NIDOQUEEN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NIDOQUEEN, DEX_DAY
    dexendareadata


routesandcities SPECIES_NIDOQUEEN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NIDOQUEEN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NIDOQUEEN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NIDORAN_M, DEX_MORNING
    dexendareadata


specialareas SPECIES_NIDORAN_M, DEX_DAY
    dexendareadata


specialareas SPECIES_NIDORAN_M, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NIDORAN_M, DEX_MORNING
    .word DEX_ROUTE_35
    .word DEX_ROUTE_36
    dexendareadata


routesandcities SPECIES_NIDORAN_M, DEX_DAY
    .word DEX_ROUTE_35
    .word DEX_ROUTE_36
    dexendareadata


routesandcities SPECIES_NIDORAN_M, DEX_NIGHT
    .word DEX_ROUTE_35
    .word DEX_ROUTE_36
    dexendareadata


specialareas SPECIES_NIDORAN_M, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NIDORAN_M, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NIDORINO, DEX_MORNING
    dexendareadata


specialareas SPECIES_NIDORINO, DEX_DAY
    dexendareadata


specialareas SPECIES_NIDORINO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NIDORINO, DEX_MORNING
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    dexendareadata


routesandcities SPECIES_NIDORINO, DEX_DAY
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    dexendareadata


routesandcities SPECIES_NIDORINO, DEX_NIGHT
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    dexendareadata


specialareas SPECIES_NIDORINO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NIDORINO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NIDOKING, DEX_MORNING
    dexendareadata


specialareas SPECIES_NIDOKING, DEX_DAY
    dexendareadata


specialareas SPECIES_NIDOKING, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NIDOKING, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NIDOKING, DEX_DAY
    dexendareadata


routesandcities SPECIES_NIDOKING, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NIDOKING, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NIDOKING, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CLEFAIRY, DEX_MORNING
    .word DEX_MT_MOON
    dexendareadata


specialareas SPECIES_CLEFAIRY, DEX_DAY
    .word DEX_MT_MOON
    dexendareadata


specialareas SPECIES_CLEFAIRY, DEX_NIGHT
    .word DEX_MT_MOON
    dexendareadata


routesandcities SPECIES_CLEFAIRY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CLEFAIRY, DEX_DAY
    dexendareadata


routesandcities SPECIES_CLEFAIRY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CLEFAIRY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CLEFAIRY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CLEFABLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_CLEFABLE, DEX_DAY
    dexendareadata


specialareas SPECIES_CLEFABLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CLEFABLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CLEFABLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_CLEFABLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CLEFABLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CLEFABLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VULPIX, DEX_MORNING
    dexendareadata


specialareas SPECIES_VULPIX, DEX_DAY
    dexendareadata


specialareas SPECIES_VULPIX, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VULPIX, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VULPIX, DEX_DAY
    dexendareadata


routesandcities SPECIES_VULPIX, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VULPIX, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VULPIX, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NINETALES, DEX_MORNING
    dexendareadata


specialareas SPECIES_NINETALES, DEX_DAY
    dexendareadata


specialareas SPECIES_NINETALES, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NINETALES, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NINETALES, DEX_DAY
    dexendareadata


routesandcities SPECIES_NINETALES, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NINETALES, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NINETALES, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_JIGGLYPUFF, DEX_MORNING
    dexendareadata


specialareas SPECIES_JIGGLYPUFF, DEX_DAY
    dexendareadata


specialareas SPECIES_JIGGLYPUFF, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_JIGGLYPUFF, DEX_MORNING
    .word DEX_ROUTE_3
    .word DEX_ROUTE_4
    dexendareadata


routesandcities SPECIES_JIGGLYPUFF, DEX_DAY
    .word DEX_ROUTE_3
    .word DEX_ROUTE_4
    dexendareadata


routesandcities SPECIES_JIGGLYPUFF, DEX_NIGHT
    .word DEX_ROUTE_3
    .word DEX_ROUTE_4
    dexendareadata


specialareas SPECIES_JIGGLYPUFF, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_JIGGLYPUFF, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WIGGLYTUFF, DEX_MORNING
    dexendareadata


specialareas SPECIES_WIGGLYTUFF, DEX_DAY
    dexendareadata


specialareas SPECIES_WIGGLYTUFF, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WIGGLYTUFF, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WIGGLYTUFF, DEX_DAY
    dexendareadata


routesandcities SPECIES_WIGGLYTUFF, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WIGGLYTUFF, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WIGGLYTUFF, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ZUBAT, DEX_MORNING
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_ILEX_FOREST
    .word DEX_BURNED_TOWER
    .word DEX_WHIRL_ISLANDS
    .word DEX_MT_MORTAR
    .word DEX_ICE_PATH
    .word DEX_DARK_CAVE
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_MOON
    .word DEX_ROCK_TUNNEL
    .word DEX_TOHJO_FALLS
    dexendareadata


specialareas SPECIES_ZUBAT, DEX_DAY
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_ILEX_FOREST
    .word DEX_BURNED_TOWER
    .word DEX_WHIRL_ISLANDS
    .word DEX_MT_MORTAR
    .word DEX_ICE_PATH
    .word DEX_DARK_CAVE
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_MOON
    .word DEX_ROCK_TUNNEL
    .word DEX_TOHJO_FALLS
    dexendareadata


specialareas SPECIES_ZUBAT, DEX_NIGHT
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_ILEX_FOREST
    .word DEX_BURNED_TOWER
    .word DEX_WHIRL_ISLANDS
    .word DEX_MT_MORTAR
    .word DEX_ICE_PATH
    .word DEX_DARK_CAVE
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_CLIFF_CAVE
    .word DEX_MT_MOON
    .word DEX_ROCK_TUNNEL
    .word DEX_TOHJO_FALLS
    dexendareadata


routesandcities SPECIES_ZUBAT, DEX_MORNING
    .word DEX_ROUTE_32
    .word DEX_ROUTE_33
    dexendareadata


routesandcities SPECIES_ZUBAT, DEX_DAY
    dexendareadata


routesandcities SPECIES_ZUBAT, DEX_NIGHT
    .word DEX_ROUTE_32
    .word DEX_ROUTE_33
    .word DEX_ROUTE_42
    .word DEX_ROUTE_3
    .word DEX_ROUTE_4
    dexendareadata


specialareas SPECIES_ZUBAT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ZUBAT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GOLBAT, DEX_MORNING
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_WHIRL_ISLANDS
    .word DEX_MT_MORTAR
    .word DEX_ICE_PATH
    .word DEX_DARK_CAVE
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_CAVE
    .word DEX_VICTORY_ROAD
    .word DEX_TOHJO_FALLS
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_GOLBAT, DEX_DAY
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_WHIRL_ISLANDS
    .word DEX_MT_MORTAR
    .word DEX_ICE_PATH
    .word DEX_DARK_CAVE
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_CAVE
    .word DEX_VICTORY_ROAD
    .word DEX_TOHJO_FALLS
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_GOLBAT, DEX_NIGHT
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_WHIRL_ISLANDS
    .word DEX_MT_MORTAR
    .word DEX_ICE_PATH
    .word DEX_DARK_CAVE
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_CAVE
    .word DEX_VICTORY_ROAD
    .word DEX_TOHJO_FALLS
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_GOLBAT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GOLBAT, DEX_DAY
    dexendareadata


routesandcities SPECIES_GOLBAT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GOLBAT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GOLBAT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ODDISH, DEX_MORNING
    dexendareadata


specialareas SPECIES_ODDISH, DEX_DAY
    dexendareadata


specialareas SPECIES_ODDISH, DEX_NIGHT
    .word DEX_ILEX_FOREST
    dexendareadata


routesandcities SPECIES_ODDISH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ODDISH, DEX_DAY
    dexendareadata


routesandcities SPECIES_ODDISH, DEX_NIGHT
    .word DEX_ROUTE_5
    .word DEX_ROUTE_6
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


specialareas SPECIES_ODDISH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ODDISH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GLOOM, DEX_MORNING
    dexendareadata


specialareas SPECIES_GLOOM, DEX_DAY
    dexendareadata


specialareas SPECIES_GLOOM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GLOOM, DEX_MORNING
    .word DEX_ROUTE_47
    .word DEX_ROUTE_48
    dexendareadata


routesandcities SPECIES_GLOOM, DEX_DAY
    .word DEX_ROUTE_47
    .word DEX_ROUTE_48
    dexendareadata


routesandcities SPECIES_GLOOM, DEX_NIGHT
    .word DEX_ROUTE_47
    .word DEX_ROUTE_48
    .word DEX_ROUTE_5
    dexendareadata


specialareas SPECIES_GLOOM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GLOOM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VILEPLUME, DEX_MORNING
    dexendareadata


specialareas SPECIES_VILEPLUME, DEX_DAY
    dexendareadata


specialareas SPECIES_VILEPLUME, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VILEPLUME, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VILEPLUME, DEX_DAY
    dexendareadata


routesandcities SPECIES_VILEPLUME, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VILEPLUME, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VILEPLUME, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PARAS, DEX_MORNING
    .word DEX_ILEX_FOREST
    .word DEX_MT_MOON
    dexendareadata


specialareas SPECIES_PARAS, DEX_DAY
    .word DEX_ILEX_FOREST
    .word DEX_MT_MOON
    dexendareadata


specialareas SPECIES_PARAS, DEX_NIGHT
    .word DEX_ILEX_FOREST
    .word DEX_MT_MOON
    dexendareadata


routesandcities SPECIES_PARAS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PARAS, DEX_DAY
    dexendareadata


routesandcities SPECIES_PARAS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PARAS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PARAS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PARASECT, DEX_MORNING
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_PARASECT, DEX_DAY
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_PARASECT, DEX_NIGHT
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_PARASECT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PARASECT, DEX_DAY
    dexendareadata


routesandcities SPECIES_PARASECT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PARASECT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PARASECT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VENONAT, DEX_MORNING
    dexendareadata


specialareas SPECIES_VENONAT, DEX_DAY
    dexendareadata


specialareas SPECIES_VENONAT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VENONAT, DEX_MORNING
    .word DEX_ROUTE_43
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


routesandcities SPECIES_VENONAT, DEX_DAY
    dexendareadata


routesandcities SPECIES_VENONAT, DEX_NIGHT
    .word DEX_ROUTE_43
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


specialareas SPECIES_VENONAT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VENONAT, DEX_SPECIAL
    .word DEX_ROUTE_43
    .word DEX_LAKE_OF_RAGE
    dexendareadata


specialareas SPECIES_VENOMOTH, DEX_MORNING
    dexendareadata


specialareas SPECIES_VENOMOTH, DEX_DAY
    dexendareadata


specialareas SPECIES_VENOMOTH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VENOMOTH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VENOMOTH, DEX_DAY
    dexendareadata


routesandcities SPECIES_VENOMOTH, DEX_NIGHT
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


specialareas SPECIES_VENOMOTH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VENOMOTH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DIGLETT, DEX_MORNING
    .word DEX_DIGLETTS_CAVE
    dexendareadata


specialareas SPECIES_DIGLETT, DEX_DAY
    .word DEX_DIGLETTS_CAVE
    dexendareadata


specialareas SPECIES_DIGLETT, DEX_NIGHT
    .word DEX_DIGLETTS_CAVE
    dexendareadata


routesandcities SPECIES_DIGLETT, DEX_MORNING
    .word DEX_VERMILION_CITY
    .word DEX_ROUTE_48
    dexendareadata


routesandcities SPECIES_DIGLETT, DEX_DAY
    .word DEX_VERMILION_CITY
    .word DEX_ROUTE_48
    dexendareadata


routesandcities SPECIES_DIGLETT, DEX_NIGHT
    .word DEX_VERMILION_CITY
    .word DEX_ROUTE_48
    dexendareadata


specialareas SPECIES_DIGLETT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DIGLETT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DUGTRIO, DEX_MORNING
    .word DEX_DIGLETTS_CAVE
    dexendareadata


specialareas SPECIES_DUGTRIO, DEX_DAY
    .word DEX_DIGLETTS_CAVE
    dexendareadata


specialareas SPECIES_DUGTRIO, DEX_NIGHT
    .word DEX_DIGLETTS_CAVE
    dexendareadata


routesandcities SPECIES_DUGTRIO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DUGTRIO, DEX_DAY
    dexendareadata


routesandcities SPECIES_DUGTRIO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DUGTRIO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DUGTRIO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MEOWTH, DEX_MORNING
    dexendareadata


specialareas SPECIES_MEOWTH, DEX_DAY
    dexendareadata


specialareas SPECIES_MEOWTH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MEOWTH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MEOWTH, DEX_DAY
    dexendareadata


routesandcities SPECIES_MEOWTH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MEOWTH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MEOWTH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PERSIAN, DEX_MORNING
    dexendareadata


specialareas SPECIES_PERSIAN, DEX_DAY
    dexendareadata


specialareas SPECIES_PERSIAN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PERSIAN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PERSIAN, DEX_DAY
    dexendareadata


routesandcities SPECIES_PERSIAN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PERSIAN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PERSIAN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PSYDUCK, DEX_MORNING
    .word DEX_ILEX_FOREST
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_PSYDUCK, DEX_DAY
    .word DEX_ILEX_FOREST
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_PSYDUCK, DEX_NIGHT
    .word DEX_ILEX_FOREST
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_PSYDUCK, DEX_MORNING
    .word DEX_ROUTE_35
    .word DEX_ROUTE_6
    dexendareadata


routesandcities SPECIES_PSYDUCK, DEX_DAY
    .word DEX_ROUTE_35
    .word DEX_ROUTE_6
    dexendareadata


routesandcities SPECIES_PSYDUCK, DEX_NIGHT
    .word DEX_ROUTE_35
    .word DEX_ROUTE_6
    dexendareadata


specialareas SPECIES_PSYDUCK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PSYDUCK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GOLDUCK, DEX_MORNING
    .word DEX_ILEX_FOREST
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_GOLDUCK, DEX_DAY
    .word DEX_ILEX_FOREST
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_GOLDUCK, DEX_NIGHT
    .word DEX_ILEX_FOREST
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_GOLDUCK, DEX_MORNING
    .word DEX_ROUTE_35
    .word DEX_ROUTE_6
    dexendareadata


routesandcities SPECIES_GOLDUCK, DEX_DAY
    .word DEX_ROUTE_35
    .word DEX_ROUTE_6
    dexendareadata


routesandcities SPECIES_GOLDUCK, DEX_NIGHT
    .word DEX_ROUTE_35
    .word DEX_ROUTE_6
    dexendareadata


specialareas SPECIES_GOLDUCK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GOLDUCK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MANKEY, DEX_MORNING
    dexendareadata


specialareas SPECIES_MANKEY, DEX_DAY
    dexendareadata


specialareas SPECIES_MANKEY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MANKEY, DEX_MORNING
    .word DEX_ROUTE_42
    .word DEX_ROUTE_9
    dexendareadata


routesandcities SPECIES_MANKEY, DEX_DAY
    .word DEX_ROUTE_42
    .word DEX_ROUTE_9
    dexendareadata


routesandcities SPECIES_MANKEY, DEX_NIGHT
    .word DEX_ROUTE_42
    .word DEX_ROUTE_9
    dexendareadata


specialareas SPECIES_MANKEY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MANKEY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PRIMEAPE, DEX_MORNING
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_PRIMEAPE, DEX_DAY
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_PRIMEAPE, DEX_NIGHT
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_PRIMEAPE, DEX_MORNING
    .word DEX_ROUTE_9
    dexendareadata


routesandcities SPECIES_PRIMEAPE, DEX_DAY
    .word DEX_ROUTE_9
    dexendareadata


routesandcities SPECIES_PRIMEAPE, DEX_NIGHT
    .word DEX_ROUTE_9
    dexendareadata


specialareas SPECIES_PRIMEAPE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PRIMEAPE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GROWLITHE, DEX_MORNING
    dexendareadata


specialareas SPECIES_GROWLITHE, DEX_DAY
    dexendareadata


specialareas SPECIES_GROWLITHE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GROWLITHE, DEX_MORNING
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    .word DEX_ROUTE_48
    .word DEX_ROUTE_7
    .word DEX_ROUTE_8
    dexendareadata


routesandcities SPECIES_GROWLITHE, DEX_DAY
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    .word DEX_ROUTE_48
    .word DEX_ROUTE_7
    .word DEX_ROUTE_8
    dexendareadata


routesandcities SPECIES_GROWLITHE, DEX_NIGHT
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    .word DEX_ROUTE_48
    .word DEX_ROUTE_7
    .word DEX_ROUTE_8
    dexendareadata


specialareas SPECIES_GROWLITHE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GROWLITHE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ARCANINE, DEX_MORNING
    dexendareadata


specialareas SPECIES_ARCANINE, DEX_DAY
    dexendareadata


specialareas SPECIES_ARCANINE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ARCANINE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ARCANINE, DEX_DAY
    dexendareadata


routesandcities SPECIES_ARCANINE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ARCANINE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ARCANINE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_POLIWAG, DEX_MORNING
    .word DEX_RUINS_OF_ALPH
    .word DEX_ILEX_FOREST
    .word DEX_MT_MOON
    .word DEX_CLIFF_EDGE_GATE
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_POLIWAG, DEX_DAY
    .word DEX_RUINS_OF_ALPH
    .word DEX_ILEX_FOREST
    .word DEX_MT_MOON
    .word DEX_CLIFF_EDGE_GATE
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_POLIWAG, DEX_NIGHT
    .word DEX_RUINS_OF_ALPH
    .word DEX_ILEX_FOREST
    .word DEX_MT_MOON
    .word DEX_CLIFF_EDGE_GATE
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_POLIWAG, DEX_MORNING
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_VIOLET_CITY
    .word DEX_ROUTE_35
    .word DEX_ECRUTEAK_CITY
    .word DEX_ROUTE_43
    .word DEX_ROUTE_44
    .word DEX_BLACKTHORN_CITY
    .word DEX_ROUTE_45
    .word DEX_MT_SILVER
    .word DEX_VIRIDIAN_CITY
    .word DEX_ROUTE_28
    .word DEX_ROUTE_6
    .word DEX_ROUTE_22
    dexendareadata


routesandcities SPECIES_POLIWAG, DEX_DAY
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_VIOLET_CITY
    .word DEX_ROUTE_35
    .word DEX_ECRUTEAK_CITY
    .word DEX_ROUTE_43
    .word DEX_ROUTE_44
    .word DEX_BLACKTHORN_CITY
    .word DEX_ROUTE_45
    .word DEX_MT_SILVER
    .word DEX_VIRIDIAN_CITY
    .word DEX_ROUTE_28
    .word DEX_ROUTE_6
    .word DEX_ROUTE_22
    dexendareadata


routesandcities SPECIES_POLIWAG, DEX_NIGHT
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_VIOLET_CITY
    .word DEX_ROUTE_35
    .word DEX_ECRUTEAK_CITY
    .word DEX_ROUTE_43
    .word DEX_ROUTE_44
    .word DEX_BLACKTHORN_CITY
    .word DEX_ROUTE_45
    .word DEX_MT_SILVER
    .word DEX_VIRIDIAN_CITY
    .word DEX_ROUTE_28
    .word DEX_ROUTE_6
    .word DEX_ROUTE_22
    dexendareadata


specialareas SPECIES_POLIWAG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_POLIWAG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_POLIWHIRL, DEX_MORNING
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_POLIWHIRL, DEX_DAY
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_POLIWHIRL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_POLIWHIRL, DEX_MORNING
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_VIOLET_CITY
    .word DEX_ECRUTEAK_CITY
    .word DEX_ROUTE_44
    .word DEX_MT_SILVER
    .word DEX_VIRIDIAN_CITY
    .word DEX_ROUTE_28
    .word DEX_ROUTE_22
    dexendareadata


routesandcities SPECIES_POLIWHIRL, DEX_DAY
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_VIOLET_CITY
    .word DEX_ECRUTEAK_CITY
    .word DEX_ROUTE_44
    .word DEX_MT_SILVER
    .word DEX_VIRIDIAN_CITY
    .word DEX_ROUTE_28
    .word DEX_ROUTE_22
    dexendareadata


routesandcities SPECIES_POLIWHIRL, DEX_NIGHT
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_VIOLET_CITY
    .word DEX_ECRUTEAK_CITY
    .word DEX_ROUTE_44
    .word DEX_MT_SILVER
    .word DEX_VIRIDIAN_CITY
    .word DEX_ROUTE_28
    .word DEX_ROUTE_22
    dexendareadata


specialareas SPECIES_POLIWHIRL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_POLIWHIRL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_POLIWRATH, DEX_MORNING
    dexendareadata


specialareas SPECIES_POLIWRATH, DEX_DAY
    dexendareadata


specialareas SPECIES_POLIWRATH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_POLIWRATH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_POLIWRATH, DEX_DAY
    dexendareadata


routesandcities SPECIES_POLIWRATH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_POLIWRATH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_POLIWRATH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ABRA, DEX_MORNING
    dexendareadata


specialareas SPECIES_ABRA, DEX_DAY
    dexendareadata


specialareas SPECIES_ABRA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ABRA, DEX_MORNING
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_5
    .word DEX_ROUTE_6
    .word DEX_ROUTE_8
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


routesandcities SPECIES_ABRA, DEX_DAY
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_5
    .word DEX_ROUTE_6
    .word DEX_ROUTE_8
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


routesandcities SPECIES_ABRA, DEX_NIGHT
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_5
    .word DEX_ROUTE_6
    .word DEX_ROUTE_8
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


specialareas SPECIES_ABRA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ABRA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KADABRA, DEX_MORNING
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_KADABRA, DEX_DAY
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_KADABRA, DEX_NIGHT
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_KADABRA, DEX_MORNING
    .word DEX_ROUTE_8
    dexendareadata


routesandcities SPECIES_KADABRA, DEX_DAY
    .word DEX_ROUTE_8
    dexendareadata


routesandcities SPECIES_KADABRA, DEX_NIGHT
    .word DEX_ROUTE_8
    dexendareadata


specialareas SPECIES_KADABRA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KADABRA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ALAKAZAM, DEX_MORNING
    dexendareadata


specialareas SPECIES_ALAKAZAM, DEX_DAY
    dexendareadata


specialareas SPECIES_ALAKAZAM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ALAKAZAM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ALAKAZAM, DEX_DAY
    dexendareadata


routesandcities SPECIES_ALAKAZAM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ALAKAZAM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ALAKAZAM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MACHOP, DEX_MORNING
    .word DEX_MT_MORTAR
    .word DEX_CLIFF_CAVE
    .word DEX_ROCK_TUNNEL
    dexendareadata


specialareas SPECIES_MACHOP, DEX_DAY
    .word DEX_MT_MORTAR
    .word DEX_CLIFF_CAVE
    .word DEX_ROCK_TUNNEL
    dexendareadata


specialareas SPECIES_MACHOP, DEX_NIGHT
    .word DEX_MT_MORTAR
    .word DEX_CLIFF_CAVE
    .word DEX_ROCK_TUNNEL
    dexendareadata


routesandcities SPECIES_MACHOP, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MACHOP, DEX_DAY
    dexendareadata


routesandcities SPECIES_MACHOP, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MACHOP, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MACHOP, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MACHOKE, DEX_MORNING
    .word DEX_MT_MORTAR
    .word DEX_CLIFF_CAVE
    .word DEX_ROCK_TUNNEL
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_MACHOKE, DEX_DAY
    .word DEX_MT_MORTAR
    .word DEX_CLIFF_CAVE
    .word DEX_ROCK_TUNNEL
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_MACHOKE, DEX_NIGHT
    .word DEX_MT_MORTAR
    .word DEX_CLIFF_CAVE
    .word DEX_ROCK_TUNNEL
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_MACHOKE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MACHOKE, DEX_DAY
    dexendareadata


routesandcities SPECIES_MACHOKE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MACHOKE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MACHOKE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MACHAMP, DEX_MORNING
    dexendareadata


specialareas SPECIES_MACHAMP, DEX_DAY
    dexendareadata


specialareas SPECIES_MACHAMP, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MACHAMP, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MACHAMP, DEX_DAY
    dexendareadata


routesandcities SPECIES_MACHAMP, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MACHAMP, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MACHAMP, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BELLSPROUT, DEX_MORNING
    dexendareadata


specialareas SPECIES_BELLSPROUT, DEX_DAY
    dexendareadata


specialareas SPECIES_BELLSPROUT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BELLSPROUT, DEX_MORNING
    .word DEX_ROUTE_31
    .word DEX_ROUTE_32
    .word DEX_ROUTE_44
    .word DEX_ROUTE_5
    .word DEX_ROUTE_6
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


routesandcities SPECIES_BELLSPROUT, DEX_DAY
    .word DEX_ROUTE_31
    .word DEX_ROUTE_32
    .word DEX_ROUTE_44
    .word DEX_ROUTE_5
    .word DEX_ROUTE_6
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


routesandcities SPECIES_BELLSPROUT, DEX_NIGHT
    .word DEX_ROUTE_31
    .word DEX_ROUTE_32
    .word DEX_ROUTE_44
    .word DEX_ROUTE_5
    .word DEX_ROUTE_6
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


specialareas SPECIES_BELLSPROUT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BELLSPROUT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WEEPINBELL, DEX_MORNING
    dexendareadata


specialareas SPECIES_WEEPINBELL, DEX_DAY
    dexendareadata


specialareas SPECIES_WEEPINBELL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WEEPINBELL, DEX_MORNING
    .word DEX_ROUTE_44
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


routesandcities SPECIES_WEEPINBELL, DEX_DAY
    .word DEX_ROUTE_44
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


routesandcities SPECIES_WEEPINBELL, DEX_NIGHT
    .word DEX_ROUTE_44
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


specialareas SPECIES_WEEPINBELL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WEEPINBELL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VICTREEBEL, DEX_MORNING
    dexendareadata


specialareas SPECIES_VICTREEBEL, DEX_DAY
    dexendareadata


specialareas SPECIES_VICTREEBEL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VICTREEBEL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VICTREEBEL, DEX_DAY
    dexendareadata


routesandcities SPECIES_VICTREEBEL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VICTREEBEL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VICTREEBEL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TENTACOOL, DEX_MORNING
    .word DEX_UNION_CAVE
    .word DEX_WHIRL_ISLANDS
    dexendareadata


specialareas SPECIES_TENTACOOL, DEX_DAY
    .word DEX_UNION_CAVE
    .word DEX_WHIRL_ISLANDS
    dexendareadata


specialareas SPECIES_TENTACOOL, DEX_NIGHT
    .word DEX_UNION_CAVE
    .word DEX_WHIRL_ISLANDS
    dexendareadata


routesandcities SPECIES_TENTACOOL, DEX_MORNING
    .word DEX_NEW_BARK_TOWN
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_34
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_ROUTE_41
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_47
    .word DEX_ROUTE_12
    .word DEX_ROUTE_19
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VERMILION_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_13
    .word DEX_ROUTE_21
    dexendareadata


routesandcities SPECIES_TENTACOOL, DEX_DAY
    .word DEX_NEW_BARK_TOWN
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_34
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_ROUTE_41
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_47
    .word DEX_ROUTE_12
    .word DEX_ROUTE_19
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VERMILION_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_13
    .word DEX_ROUTE_21
    dexendareadata


routesandcities SPECIES_TENTACOOL, DEX_NIGHT
    .word DEX_NEW_BARK_TOWN
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_34
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_ROUTE_41
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_47
    .word DEX_ROUTE_12
    .word DEX_ROUTE_19
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VERMILION_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_13
    .word DEX_ROUTE_21
    dexendareadata


specialareas SPECIES_TENTACOOL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TENTACOOL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TENTACRUEL, DEX_MORNING
    .word DEX_UNION_CAVE
    .word DEX_WHIRL_ISLANDS
    dexendareadata


specialareas SPECIES_TENTACRUEL, DEX_DAY
    .word DEX_UNION_CAVE
    .word DEX_WHIRL_ISLANDS
    dexendareadata


specialareas SPECIES_TENTACRUEL, DEX_NIGHT
    .word DEX_UNION_CAVE
    .word DEX_WHIRL_ISLANDS
    dexendareadata


routesandcities SPECIES_TENTACRUEL, DEX_MORNING
    .word DEX_NEW_BARK_TOWN
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_34
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_ROUTE_41
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_47
    .word DEX_ROUTE_12
    .word DEX_ROUTE_19
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VERMILION_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_13
    .word DEX_ROUTE_21
    dexendareadata


routesandcities SPECIES_TENTACRUEL, DEX_DAY
    .word DEX_NEW_BARK_TOWN
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_34
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_ROUTE_41
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_47
    .word DEX_ROUTE_12
    .word DEX_ROUTE_19
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VERMILION_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_13
    .word DEX_ROUTE_21
    dexendareadata


routesandcities SPECIES_TENTACRUEL, DEX_NIGHT
    .word DEX_NEW_BARK_TOWN
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_34
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_ROUTE_41
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_47
    .word DEX_ROUTE_12
    .word DEX_ROUTE_19
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VERMILION_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_13
    .word DEX_ROUTE_21
    dexendareadata


specialareas SPECIES_TENTACRUEL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TENTACRUEL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GEODUDE, DEX_MORNING
    .word DEX_RUINS_OF_ALPH
    .word DEX_UNION_CAVE
    .word DEX_MT_MORTAR
    .word DEX_DARK_CAVE
    .word DEX_CLIFF_CAVE
    .word DEX_MT_MOON
    .word DEX_ROCK_TUNNEL
    .word DEX_VICTORY_ROAD
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_GEODUDE, DEX_DAY
    .word DEX_RUINS_OF_ALPH
    .word DEX_UNION_CAVE
    .word DEX_MT_MORTAR
    .word DEX_DARK_CAVE
    .word DEX_CLIFF_CAVE
    .word DEX_MT_MOON
    .word DEX_ROCK_TUNNEL
    .word DEX_VICTORY_ROAD
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_GEODUDE, DEX_NIGHT
    .word DEX_RUINS_OF_ALPH
    .word DEX_UNION_CAVE
    .word DEX_MT_MORTAR
    .word DEX_DARK_CAVE
    .word DEX_CLIFF_CAVE
    .word DEX_MT_MOON
    .word DEX_ROCK_TUNNEL
    .word DEX_VICTORY_ROAD
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_GEODUDE, DEX_MORNING
    .word DEX_ROUTE_45
    .word DEX_ROUTE_46
    dexendareadata


routesandcities SPECIES_GEODUDE, DEX_DAY
    .word DEX_ROUTE_45
    .word DEX_ROUTE_46
    dexendareadata


routesandcities SPECIES_GEODUDE, DEX_NIGHT
    .word DEX_ROUTE_45
    .word DEX_ROUTE_46
    dexendareadata


specialareas SPECIES_GEODUDE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GEODUDE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GRAVELER, DEX_MORNING
    .word DEX_MT_MORTAR
    .word DEX_DARK_CAVE
    .word DEX_CLIFF_CAVE
    .word DEX_MT_SILVER_CAVE
    .word DEX_VICTORY_ROAD
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_GRAVELER, DEX_DAY
    .word DEX_MT_MORTAR
    .word DEX_DARK_CAVE
    .word DEX_CLIFF_CAVE
    .word DEX_MT_SILVER_CAVE
    .word DEX_VICTORY_ROAD
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_GRAVELER, DEX_NIGHT
    .word DEX_MT_MORTAR
    .word DEX_DARK_CAVE
    .word DEX_MT_SILVER_CAVE
    .word DEX_VICTORY_ROAD
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_GRAVELER, DEX_MORNING
    .word DEX_ROUTE_45
    dexendareadata


routesandcities SPECIES_GRAVELER, DEX_DAY
    .word DEX_ROUTE_45
    dexendareadata


routesandcities SPECIES_GRAVELER, DEX_NIGHT
    .word DEX_ROUTE_45
    dexendareadata


specialareas SPECIES_GRAVELER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GRAVELER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GOLEM, DEX_MORNING
    dexendareadata


specialareas SPECIES_GOLEM, DEX_DAY
    dexendareadata


specialareas SPECIES_GOLEM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GOLEM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GOLEM, DEX_DAY
    dexendareadata


routesandcities SPECIES_GOLEM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GOLEM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GOLEM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PONYTA, DEX_MORNING
    dexendareadata


specialareas SPECIES_PONYTA, DEX_DAY
    dexendareadata


specialareas SPECIES_PONYTA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PONYTA, DEX_MORNING
    .word DEX_MT_SILVER
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_28
    .word DEX_ROUTE_22
    dexendareadata


routesandcities SPECIES_PONYTA, DEX_DAY
    .word DEX_MT_SILVER
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_28
    .word DEX_ROUTE_22
    dexendareadata


routesandcities SPECIES_PONYTA, DEX_NIGHT
    .word DEX_MT_SILVER
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_28
    .word DEX_ROUTE_22
    dexendareadata


specialareas SPECIES_PONYTA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PONYTA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RAPIDASH, DEX_MORNING
    dexendareadata


specialareas SPECIES_RAPIDASH, DEX_DAY
    dexendareadata


specialareas SPECIES_RAPIDASH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RAPIDASH, DEX_MORNING
    .word DEX_MT_SILVER
    .word DEX_ROUTE_28
    dexendareadata


routesandcities SPECIES_RAPIDASH, DEX_DAY
    .word DEX_MT_SILVER
    .word DEX_ROUTE_28
    dexendareadata


routesandcities SPECIES_RAPIDASH, DEX_NIGHT
    .word DEX_MT_SILVER
    .word DEX_ROUTE_28
    dexendareadata


specialareas SPECIES_RAPIDASH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RAPIDASH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SLOWPOKE, DEX_MORNING
    .word DEX_SLOWPOKE_WELL
    .word DEX_TOHJO_FALLS
    dexendareadata


specialareas SPECIES_SLOWPOKE, DEX_DAY
    .word DEX_SLOWPOKE_WELL
    .word DEX_TOHJO_FALLS
    dexendareadata


specialareas SPECIES_SLOWPOKE, DEX_NIGHT
    .word DEX_SLOWPOKE_WELL
    .word DEX_TOHJO_FALLS
    dexendareadata


routesandcities SPECIES_SLOWPOKE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SLOWPOKE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SLOWPOKE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SLOWPOKE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SLOWPOKE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SLOWBRO, DEX_MORNING
    .word DEX_SLOWPOKE_WELL
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


specialareas SPECIES_SLOWBRO, DEX_DAY
    .word DEX_SLOWPOKE_WELL
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


specialareas SPECIES_SLOWBRO, DEX_NIGHT
    .word DEX_SLOWPOKE_WELL
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


routesandcities SPECIES_SLOWBRO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SLOWBRO, DEX_DAY
    dexendareadata


routesandcities SPECIES_SLOWBRO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SLOWBRO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SLOWBRO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MAGNEMITE, DEX_MORNING
    dexendareadata


specialareas SPECIES_MAGNEMITE, DEX_DAY
    dexendareadata


specialareas SPECIES_MAGNEMITE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MAGNEMITE, DEX_MORNING
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_6
    .word DEX_ROUTE_11
    dexendareadata


routesandcities SPECIES_MAGNEMITE, DEX_DAY
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_6
    .word DEX_ROUTE_11
    dexendareadata


routesandcities SPECIES_MAGNEMITE, DEX_NIGHT
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_6
    .word DEX_ROUTE_11
    dexendareadata


specialareas SPECIES_MAGNEMITE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MAGNEMITE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MAGNETON, DEX_MORNING
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_MAGNETON, DEX_DAY
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_MAGNETON, DEX_NIGHT
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_MAGNETON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MAGNETON, DEX_DAY
    dexendareadata


routesandcities SPECIES_MAGNETON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MAGNETON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MAGNETON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FARFETCHD, DEX_MORNING
    dexendareadata


specialareas SPECIES_FARFETCHD, DEX_DAY
    dexendareadata


specialareas SPECIES_FARFETCHD, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FARFETCHD, DEX_MORNING
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_47
    .word DEX_ROUTE_48
    dexendareadata


routesandcities SPECIES_FARFETCHD, DEX_DAY
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_47
    .word DEX_ROUTE_48
    dexendareadata


routesandcities SPECIES_FARFETCHD, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FARFETCHD, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FARFETCHD, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DODUO, DEX_MORNING
    dexendareadata


specialareas SPECIES_DODUO, DEX_DAY
    dexendareadata


specialareas SPECIES_DODUO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DODUO, DEX_MORNING
    .word DEX_MT_SILVER
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_28
    .word DEX_ROUTE_22
    dexendareadata


routesandcities SPECIES_DODUO, DEX_DAY
    .word DEX_MT_SILVER
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_28
    .word DEX_ROUTE_22
    dexendareadata


routesandcities SPECIES_DODUO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DODUO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DODUO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DODRIO, DEX_MORNING
    dexendareadata


specialareas SPECIES_DODRIO, DEX_DAY
    dexendareadata


specialareas SPECIES_DODRIO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DODRIO, DEX_MORNING
    .word DEX_MT_SILVER
    .word DEX_ROUTE_26
    .word DEX_ROUTE_28
    dexendareadata


routesandcities SPECIES_DODRIO, DEX_DAY
    .word DEX_MT_SILVER
    .word DEX_ROUTE_26
    .word DEX_ROUTE_28
    dexendareadata


routesandcities SPECIES_DODRIO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DODRIO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DODRIO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SEEL, DEX_MORNING
    .word DEX_WHIRL_ISLANDS
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


specialareas SPECIES_SEEL, DEX_DAY
    .word DEX_WHIRL_ISLANDS
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


specialareas SPECIES_SEEL, DEX_NIGHT
    .word DEX_WHIRL_ISLANDS
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


routesandcities SPECIES_SEEL, DEX_MORNING
    .word DEX_ROUTE_47
    dexendareadata


routesandcities SPECIES_SEEL, DEX_DAY
    .word DEX_ROUTE_47
    dexendareadata


routesandcities SPECIES_SEEL, DEX_NIGHT
    .word DEX_ROUTE_47
    dexendareadata


specialareas SPECIES_SEEL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SEEL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DEWGONG, DEX_MORNING
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


specialareas SPECIES_DEWGONG, DEX_DAY
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


specialareas SPECIES_DEWGONG, DEX_NIGHT
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


routesandcities SPECIES_DEWGONG, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DEWGONG, DEX_DAY
    dexendareadata


routesandcities SPECIES_DEWGONG, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DEWGONG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DEWGONG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GRIMER, DEX_MORNING
    dexendareadata


specialareas SPECIES_GRIMER, DEX_DAY
    dexendareadata


specialareas SPECIES_GRIMER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GRIMER, DEX_MORNING
    .word DEX_CELADON_CITY
    .word DEX_ROUTE_16
    .word DEX_ROUTE_17
    .word DEX_ROUTE_18
    dexendareadata


routesandcities SPECIES_GRIMER, DEX_DAY
    .word DEX_CELADON_CITY
    .word DEX_ROUTE_16
    .word DEX_ROUTE_17
    .word DEX_ROUTE_18
    dexendareadata


routesandcities SPECIES_GRIMER, DEX_NIGHT
    .word DEX_CELADON_CITY
    .word DEX_ROUTE_16
    .word DEX_ROUTE_17
    .word DEX_ROUTE_18
    dexendareadata


specialareas SPECIES_GRIMER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GRIMER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MUK, DEX_MORNING
    dexendareadata


specialareas SPECIES_MUK, DEX_DAY
    dexendareadata


specialareas SPECIES_MUK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MUK, DEX_MORNING
    .word DEX_CELADON_CITY
    .word DEX_ROUTE_16
    .word DEX_ROUTE_17
    .word DEX_ROUTE_18
    dexendareadata


routesandcities SPECIES_MUK, DEX_DAY
    .word DEX_CELADON_CITY
    .word DEX_ROUTE_16
    .word DEX_ROUTE_17
    .word DEX_ROUTE_18
    dexendareadata


routesandcities SPECIES_MUK, DEX_NIGHT
    .word DEX_CELADON_CITY
    .word DEX_ROUTE_16
    .word DEX_ROUTE_17
    .word DEX_ROUTE_18
    dexendareadata


specialareas SPECIES_MUK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MUK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SHELLDER, DEX_MORNING
    dexendareadata


specialareas SPECIES_SHELLDER, DEX_DAY
    dexendareadata


specialareas SPECIES_SHELLDER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SHELLDER, DEX_MORNING
    .word DEX_NEW_BARK_TOWN
    .word DEX_ROUTE_41
    .word DEX_ROUTE_47
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VERMILION_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_21
    dexendareadata


routesandcities SPECIES_SHELLDER, DEX_DAY
    .word DEX_NEW_BARK_TOWN
    .word DEX_ROUTE_41
    .word DEX_ROUTE_47
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VERMILION_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_21
    dexendareadata


routesandcities SPECIES_SHELLDER, DEX_NIGHT
    .word DEX_NEW_BARK_TOWN
    .word DEX_ROUTE_41
    .word DEX_ROUTE_47
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VERMILION_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_21
    dexendareadata


specialareas SPECIES_SHELLDER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SHELLDER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CLOYSTER, DEX_MORNING
    dexendareadata


specialareas SPECIES_CLOYSTER, DEX_DAY
    dexendareadata


specialareas SPECIES_CLOYSTER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CLOYSTER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CLOYSTER, DEX_DAY
    dexendareadata


routesandcities SPECIES_CLOYSTER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CLOYSTER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CLOYSTER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GASTLY, DEX_MORNING
    dexendareadata


specialareas SPECIES_GASTLY, DEX_DAY
    dexendareadata


specialareas SPECIES_GASTLY, DEX_NIGHT
    .word DEX_SPROUT_TOWER
    .word DEX_BELL_TOWER
    dexendareadata


routesandcities SPECIES_GASTLY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GASTLY, DEX_DAY
    dexendareadata


routesandcities SPECIES_GASTLY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GASTLY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GASTLY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HAUNTER, DEX_MORNING
    dexendareadata


specialareas SPECIES_HAUNTER, DEX_DAY
    dexendareadata


specialareas SPECIES_HAUNTER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HAUNTER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HAUNTER, DEX_DAY
    dexendareadata


routesandcities SPECIES_HAUNTER, DEX_NIGHT
    .word DEX_ROUTE_8
    dexendareadata


specialareas SPECIES_HAUNTER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HAUNTER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GENGAR, DEX_MORNING
    dexendareadata


specialareas SPECIES_GENGAR, DEX_DAY
    dexendareadata


specialareas SPECIES_GENGAR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GENGAR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GENGAR, DEX_DAY
    dexendareadata


routesandcities SPECIES_GENGAR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GENGAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GENGAR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ONIX, DEX_MORNING
    .word DEX_UNION_CAVE
    .word DEX_CLIFF_CAVE
    .word DEX_MT_SILVER_CAVE
    .word DEX_ROCK_TUNNEL
    .word DEX_VICTORY_ROAD
    dexendareadata


specialareas SPECIES_ONIX, DEX_DAY
    .word DEX_UNION_CAVE
    .word DEX_CLIFF_CAVE
    .word DEX_MT_SILVER_CAVE
    .word DEX_ROCK_TUNNEL
    .word DEX_VICTORY_ROAD
    dexendareadata


specialareas SPECIES_ONIX, DEX_NIGHT
    .word DEX_UNION_CAVE
    .word DEX_CLIFF_CAVE
    .word DEX_MT_SILVER_CAVE
    .word DEX_ROCK_TUNNEL
    .word DEX_VICTORY_ROAD
    dexendareadata


routesandcities SPECIES_ONIX, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ONIX, DEX_DAY
    dexendareadata


routesandcities SPECIES_ONIX, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ONIX, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ONIX, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DROWZEE, DEX_MORNING
    dexendareadata


specialareas SPECIES_DROWZEE, DEX_DAY
    dexendareadata


specialareas SPECIES_DROWZEE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DROWZEE, DEX_MORNING
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_11
    dexendareadata


routesandcities SPECIES_DROWZEE, DEX_DAY
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_11
    dexendareadata


routesandcities SPECIES_DROWZEE, DEX_NIGHT
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_11
    dexendareadata


specialareas SPECIES_DROWZEE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DROWZEE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HYPNO, DEX_MORNING
    dexendareadata


specialareas SPECIES_HYPNO, DEX_DAY
    dexendareadata


specialareas SPECIES_HYPNO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HYPNO, DEX_MORNING
    .word DEX_ROUTE_11
    dexendareadata


routesandcities SPECIES_HYPNO, DEX_DAY
    .word DEX_ROUTE_11
    dexendareadata


routesandcities SPECIES_HYPNO, DEX_NIGHT
    .word DEX_ROUTE_11
    dexendareadata


specialareas SPECIES_HYPNO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HYPNO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KRABBY, DEX_MORNING
    .word DEX_UNION_CAVE
    .word DEX_WHIRL_ISLANDS
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_CLIFF_CAVE
    dexendareadata


specialareas SPECIES_KRABBY, DEX_DAY
    .word DEX_UNION_CAVE
    .word DEX_WHIRL_ISLANDS
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_CLIFF_CAVE
    dexendareadata


specialareas SPECIES_KRABBY, DEX_NIGHT
    .word DEX_UNION_CAVE
    .word DEX_WHIRL_ISLANDS
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_CLIFF_CAVE
    dexendareadata


routesandcities SPECIES_KRABBY, DEX_MORNING
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_34
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_19
    dexendareadata


routesandcities SPECIES_KRABBY, DEX_DAY
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_34
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_19
    dexendareadata


routesandcities SPECIES_KRABBY, DEX_NIGHT
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_34
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_19
    dexendareadata


specialareas SPECIES_KRABBY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KRABBY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KINGLER, DEX_MORNING
    .word DEX_UNION_CAVE
    .word DEX_WHIRL_ISLANDS
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_CLIFF_CAVE
    dexendareadata


specialareas SPECIES_KINGLER, DEX_DAY
    .word DEX_UNION_CAVE
    .word DEX_WHIRL_ISLANDS
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_CLIFF_CAVE
    dexendareadata


specialareas SPECIES_KINGLER, DEX_NIGHT
    .word DEX_UNION_CAVE
    .word DEX_WHIRL_ISLANDS
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_CLIFF_CAVE
    dexendareadata


routesandcities SPECIES_KINGLER, DEX_MORNING
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_34
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_19
    dexendareadata


routesandcities SPECIES_KINGLER, DEX_DAY
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_34
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_19
    dexendareadata


routesandcities SPECIES_KINGLER, DEX_NIGHT
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_34
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_19
    dexendareadata


specialareas SPECIES_KINGLER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KINGLER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VOLTORB, DEX_MORNING
    dexendareadata


specialareas SPECIES_VOLTORB, DEX_DAY
    dexendareadata


specialareas SPECIES_VOLTORB, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VOLTORB, DEX_MORNING
    .word DEX_ROUTE_10
    dexendareadata


routesandcities SPECIES_VOLTORB, DEX_DAY
    .word DEX_ROUTE_10
    dexendareadata


routesandcities SPECIES_VOLTORB, DEX_NIGHT
    .word DEX_ROUTE_10
    dexendareadata


specialareas SPECIES_VOLTORB, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VOLTORB, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ELECTRODE, DEX_MORNING
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_ELECTRODE, DEX_DAY
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_ELECTRODE, DEX_NIGHT
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_ELECTRODE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ELECTRODE, DEX_DAY
    dexendareadata


routesandcities SPECIES_ELECTRODE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ELECTRODE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ELECTRODE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_EXEGGCUTE, DEX_MORNING
    dexendareadata


specialareas SPECIES_EXEGGCUTE, DEX_DAY
    dexendareadata


specialareas SPECIES_EXEGGCUTE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_EXEGGCUTE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_EXEGGCUTE, DEX_DAY
    dexendareadata


routesandcities SPECIES_EXEGGCUTE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_EXEGGCUTE, DEX_SPECIAL
    .word DEX_NATIONAL_PARK
    dexendareadata


routesandcities SPECIES_EXEGGCUTE, DEX_SPECIAL
    .word DEX_NEW_BARK_TOWN
    .word DEX_ROUTE_29
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_VIOLET_CITY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    .word DEX_ECRUTEAK_CITY
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_43
    .word DEX_LAKE_OF_RAGE
    .word DEX_ROUTE_47
    .word DEX_ROUTE_48
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_SAFARI_ZONE_GATE
    dexendareadata


specialareas SPECIES_EXEGGUTOR, DEX_MORNING
    dexendareadata


specialareas SPECIES_EXEGGUTOR, DEX_DAY
    dexendareadata


specialareas SPECIES_EXEGGUTOR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_EXEGGUTOR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_EXEGGUTOR, DEX_DAY
    dexendareadata


routesandcities SPECIES_EXEGGUTOR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_EXEGGUTOR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_EXEGGUTOR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CUBONE, DEX_MORNING
    .word DEX_ROCK_TUNNEL
    dexendareadata


specialareas SPECIES_CUBONE, DEX_DAY
    .word DEX_ROCK_TUNNEL
    dexendareadata


specialareas SPECIES_CUBONE, DEX_NIGHT
    .word DEX_ROCK_TUNNEL
    dexendareadata


routesandcities SPECIES_CUBONE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CUBONE, DEX_DAY
    dexendareadata


routesandcities SPECIES_CUBONE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CUBONE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CUBONE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MAROWAK, DEX_MORNING
    .word DEX_ROCK_TUNNEL
    dexendareadata


specialareas SPECIES_MAROWAK, DEX_DAY
    .word DEX_ROCK_TUNNEL
    dexendareadata


specialareas SPECIES_MAROWAK, DEX_NIGHT
    .word DEX_ROCK_TUNNEL
    dexendareadata


routesandcities SPECIES_MAROWAK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MAROWAK, DEX_DAY
    dexendareadata


routesandcities SPECIES_MAROWAK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MAROWAK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MAROWAK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HITMONLEE, DEX_MORNING
    dexendareadata


specialareas SPECIES_HITMONLEE, DEX_DAY
    dexendareadata


specialareas SPECIES_HITMONLEE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HITMONLEE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HITMONLEE, DEX_DAY
    dexendareadata


routesandcities SPECIES_HITMONLEE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HITMONLEE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HITMONLEE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HITMONCHAN, DEX_MORNING
    dexendareadata


specialareas SPECIES_HITMONCHAN, DEX_DAY
    dexendareadata


specialareas SPECIES_HITMONCHAN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HITMONCHAN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HITMONCHAN, DEX_DAY
    dexendareadata


routesandcities SPECIES_HITMONCHAN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HITMONCHAN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HITMONCHAN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LICKITUNG, DEX_MORNING
    dexendareadata


specialareas SPECIES_LICKITUNG, DEX_DAY
    dexendareadata


specialareas SPECIES_LICKITUNG, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LICKITUNG, DEX_MORNING
    .word DEX_ROUTE_44
    dexendareadata


routesandcities SPECIES_LICKITUNG, DEX_DAY
    .word DEX_ROUTE_44
    dexendareadata


routesandcities SPECIES_LICKITUNG, DEX_NIGHT
    .word DEX_ROUTE_44
    dexendareadata


specialareas SPECIES_LICKITUNG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LICKITUNG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KOFFING, DEX_MORNING
    .word DEX_BURNED_TOWER
    dexendareadata


specialareas SPECIES_KOFFING, DEX_DAY
    .word DEX_BURNED_TOWER
    dexendareadata


specialareas SPECIES_KOFFING, DEX_NIGHT
    .word DEX_BURNED_TOWER
    dexendareadata


routesandcities SPECIES_KOFFING, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KOFFING, DEX_DAY
    dexendareadata


routesandcities SPECIES_KOFFING, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KOFFING, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KOFFING, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WEEZING, DEX_MORNING
    dexendareadata


specialareas SPECIES_WEEZING, DEX_DAY
    dexendareadata


specialareas SPECIES_WEEZING, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WEEZING, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WEEZING, DEX_DAY
    dexendareadata


routesandcities SPECIES_WEEZING, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WEEZING, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WEEZING, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RHYHORN, DEX_MORNING
    .word DEX_VICTORY_ROAD
    dexendareadata


specialareas SPECIES_RHYHORN, DEX_DAY
    .word DEX_VICTORY_ROAD
    dexendareadata


specialareas SPECIES_RHYHORN, DEX_NIGHT
    .word DEX_VICTORY_ROAD
    dexendareadata


routesandcities SPECIES_RHYHORN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RHYHORN, DEX_DAY
    dexendareadata


routesandcities SPECIES_RHYHORN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RHYHORN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RHYHORN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RHYDON, DEX_MORNING
    dexendareadata


specialareas SPECIES_RHYDON, DEX_DAY
    dexendareadata


specialareas SPECIES_RHYDON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RHYDON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RHYDON, DEX_DAY
    dexendareadata


routesandcities SPECIES_RHYDON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RHYDON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RHYDON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHANSEY, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHANSEY, DEX_DAY
    dexendareadata


specialareas SPECIES_CHANSEY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHANSEY, DEX_MORNING
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    dexendareadata


routesandcities SPECIES_CHANSEY, DEX_DAY
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    dexendareadata


routesandcities SPECIES_CHANSEY, DEX_NIGHT
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    dexendareadata


specialareas SPECIES_CHANSEY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CHANSEY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TANGELA, DEX_MORNING
    dexendareadata


specialareas SPECIES_TANGELA, DEX_DAY
    dexendareadata


specialareas SPECIES_TANGELA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TANGELA, DEX_MORNING
    .word DEX_ROUTE_44
    .word DEX_MT_SILVER
    .word DEX_ROUTE_28
    .word DEX_ROUTE_21
    dexendareadata


routesandcities SPECIES_TANGELA, DEX_DAY
    .word DEX_ROUTE_44
    .word DEX_MT_SILVER
    .word DEX_ROUTE_28
    .word DEX_ROUTE_21
    dexendareadata


routesandcities SPECIES_TANGELA, DEX_NIGHT
    .word DEX_ROUTE_44
    .word DEX_MT_SILVER
    .word DEX_ROUTE_28
    .word DEX_ROUTE_21
    dexendareadata


specialareas SPECIES_TANGELA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TANGELA, DEX_SPECIAL
    .word DEX_ROUTE_12
    .word DEX_FUCHSIA_CITY
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    .word DEX_ROUTE_18
    .word DEX_ROUTE_21
    dexendareadata


specialareas SPECIES_KANGASKHAN, DEX_MORNING
    .word DEX_ROCK_TUNNEL
    dexendareadata


specialareas SPECIES_KANGASKHAN, DEX_DAY
    .word DEX_ROCK_TUNNEL
    dexendareadata


specialareas SPECIES_KANGASKHAN, DEX_NIGHT
    .word DEX_ROCK_TUNNEL
    dexendareadata


routesandcities SPECIES_KANGASKHAN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KANGASKHAN, DEX_DAY
    dexendareadata


routesandcities SPECIES_KANGASKHAN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KANGASKHAN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KANGASKHAN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HORSEA, DEX_MORNING
    .word DEX_WHIRL_ISLANDS
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


specialareas SPECIES_HORSEA, DEX_DAY
    .word DEX_WHIRL_ISLANDS
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


specialareas SPECIES_HORSEA, DEX_NIGHT
    .word DEX_WHIRL_ISLANDS
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


routesandcities SPECIES_HORSEA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HORSEA, DEX_DAY
    dexendareadata


routesandcities SPECIES_HORSEA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HORSEA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HORSEA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SEADRA, DEX_MORNING
    .word DEX_WHIRL_ISLANDS
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


specialareas SPECIES_SEADRA, DEX_DAY
    .word DEX_WHIRL_ISLANDS
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


specialareas SPECIES_SEADRA, DEX_NIGHT
    .word DEX_WHIRL_ISLANDS
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


routesandcities SPECIES_SEADRA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SEADRA, DEX_DAY
    dexendareadata


routesandcities SPECIES_SEADRA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SEADRA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SEADRA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GOLDEEN, DEX_MORNING
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_MT_MORTAR
    .word DEX_DARK_CAVE
    .word DEX_MT_SILVER_CAVE
    .word DEX_TOHJO_FALLS
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_GOLDEEN, DEX_DAY
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_MT_MORTAR
    .word DEX_DARK_CAVE
    .word DEX_MT_SILVER_CAVE
    .word DEX_TOHJO_FALLS
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_GOLDEEN, DEX_NIGHT
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_MT_MORTAR
    .word DEX_DARK_CAVE
    .word DEX_MT_SILVER_CAVE
    .word DEX_TOHJO_FALLS
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_GOLDEEN, DEX_MORNING
    .word DEX_ROUTE_42
    .word DEX_CERULEAN_CITY
    .word DEX_ROUTE_4
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


routesandcities SPECIES_GOLDEEN, DEX_DAY
    .word DEX_ROUTE_42
    .word DEX_CERULEAN_CITY
    .word DEX_ROUTE_4
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


routesandcities SPECIES_GOLDEEN, DEX_NIGHT
    .word DEX_ROUTE_42
    .word DEX_CERULEAN_CITY
    .word DEX_ROUTE_4
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


specialareas SPECIES_GOLDEEN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GOLDEEN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SEAKING, DEX_MORNING
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_MT_MORTAR
    .word DEX_DARK_CAVE
    .word DEX_MT_SILVER_CAVE
    .word DEX_TOHJO_FALLS
    dexendareadata


specialareas SPECIES_SEAKING, DEX_DAY
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_MT_MORTAR
    .word DEX_DARK_CAVE
    .word DEX_MT_SILVER_CAVE
    .word DEX_TOHJO_FALLS
    dexendareadata


specialareas SPECIES_SEAKING, DEX_NIGHT
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_MT_MORTAR
    .word DEX_DARK_CAVE
    .word DEX_MT_SILVER_CAVE
    .word DEX_TOHJO_FALLS
    dexendareadata


routesandcities SPECIES_SEAKING, DEX_MORNING
    .word DEX_ROUTE_42
    .word DEX_CERULEAN_CITY
    .word DEX_ROUTE_4
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


routesandcities SPECIES_SEAKING, DEX_DAY
    .word DEX_ROUTE_42
    .word DEX_CERULEAN_CITY
    .word DEX_ROUTE_4
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


routesandcities SPECIES_SEAKING, DEX_NIGHT
    .word DEX_ROUTE_42
    .word DEX_CERULEAN_CITY
    .word DEX_ROUTE_4
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


specialareas SPECIES_SEAKING, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SEAKING, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_STARYU, DEX_MORNING
    dexendareadata


specialareas SPECIES_STARYU, DEX_DAY
    dexendareadata


specialareas SPECIES_STARYU, DEX_NIGHT
    .word DEX_UNION_CAVE
    dexendareadata


routesandcities SPECIES_STARYU, DEX_MORNING
    .word DEX_ROUTE_47
    dexendareadata


routesandcities SPECIES_STARYU, DEX_DAY
    .word DEX_ROUTE_47
    dexendareadata


routesandcities SPECIES_STARYU, DEX_NIGHT
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_34
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_47
    .word DEX_ROUTE_19
    dexendareadata


specialareas SPECIES_STARYU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_STARYU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_STARMIE, DEX_MORNING
    dexendareadata


specialareas SPECIES_STARMIE, DEX_DAY
    dexendareadata


specialareas SPECIES_STARMIE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_STARMIE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_STARMIE, DEX_DAY
    dexendareadata


routesandcities SPECIES_STARMIE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_STARMIE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_STARMIE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MR_MIME, DEX_MORNING
    dexendareadata


specialareas SPECIES_MR_MIME, DEX_DAY
    dexendareadata


specialareas SPECIES_MR_MIME, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MR_MIME, DEX_MORNING
    .word DEX_ROUTE_21
    dexendareadata


routesandcities SPECIES_MR_MIME, DEX_DAY
    .word DEX_ROUTE_21
    dexendareadata


routesandcities SPECIES_MR_MIME, DEX_NIGHT
    .word DEX_ROUTE_21
    dexendareadata


specialareas SPECIES_MR_MIME, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MR_MIME, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SCYTHER, DEX_MORNING
    dexendareadata


specialareas SPECIES_SCYTHER, DEX_DAY
    dexendareadata


specialareas SPECIES_SCYTHER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SCYTHER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SCYTHER, DEX_DAY
    dexendareadata


routesandcities SPECIES_SCYTHER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SCYTHER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SCYTHER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_JYNX, DEX_MORNING
    .word DEX_ICE_PATH
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


specialareas SPECIES_JYNX, DEX_DAY
    .word DEX_ICE_PATH
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


specialareas SPECIES_JYNX, DEX_NIGHT
    .word DEX_ICE_PATH
    .word DEX_SEAFOAM_ISLANDS
    dexendareadata


routesandcities SPECIES_JYNX, DEX_MORNING
    dexendareadata


routesandcities SPECIES_JYNX, DEX_DAY
    dexendareadata


routesandcities SPECIES_JYNX, DEX_NIGHT
    dexendareadata


specialareas SPECIES_JYNX, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_JYNX, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ELECTABUZZ, DEX_MORNING
    dexendareadata


specialareas SPECIES_ELECTABUZZ, DEX_DAY
    dexendareadata


specialareas SPECIES_ELECTABUZZ, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ELECTABUZZ, DEX_MORNING
    .word DEX_ROUTE_10
    dexendareadata


routesandcities SPECIES_ELECTABUZZ, DEX_DAY
    .word DEX_ROUTE_10
    dexendareadata


routesandcities SPECIES_ELECTABUZZ, DEX_NIGHT
    .word DEX_ROUTE_10
    dexendareadata


specialareas SPECIES_ELECTABUZZ, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ELECTABUZZ, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MAGMAR, DEX_MORNING
    .word DEX_BURNED_TOWER
    dexendareadata


specialareas SPECIES_MAGMAR, DEX_DAY
    .word DEX_BURNED_TOWER
    dexendareadata


specialareas SPECIES_MAGMAR, DEX_NIGHT
    .word DEX_BURNED_TOWER
    dexendareadata


routesandcities SPECIES_MAGMAR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MAGMAR, DEX_DAY
    dexendareadata


routesandcities SPECIES_MAGMAR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MAGMAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MAGMAR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PINSIR, DEX_MORNING
    dexendareadata


specialareas SPECIES_PINSIR, DEX_DAY
    dexendareadata


specialareas SPECIES_PINSIR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PINSIR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PINSIR, DEX_DAY
    dexendareadata


routesandcities SPECIES_PINSIR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PINSIR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PINSIR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TAUROS, DEX_MORNING
    dexendareadata


specialareas SPECIES_TAUROS, DEX_DAY
    dexendareadata


specialareas SPECIES_TAUROS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TAUROS, DEX_MORNING
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_48
    dexendareadata


routesandcities SPECIES_TAUROS, DEX_DAY
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_48
    dexendareadata


routesandcities SPECIES_TAUROS, DEX_NIGHT
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_48
    dexendareadata


specialareas SPECIES_TAUROS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TAUROS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MAGIKARP, DEX_MORNING
    .word DEX_RUINS_OF_ALPH
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_ILEX_FOREST
    .word DEX_WHIRL_ISLANDS
    .word DEX_MT_MORTAR
    .word DEX_DRAGONS_DEN
    .word DEX_DARK_CAVE
    .word DEX_MT_MOON
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_EDGE_GATE
    .word DEX_TOHJO_FALLS
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_MAGIKARP, DEX_DAY
    .word DEX_RUINS_OF_ALPH
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_ILEX_FOREST
    .word DEX_WHIRL_ISLANDS
    .word DEX_MT_MORTAR
    .word DEX_DRAGONS_DEN
    .word DEX_DARK_CAVE
    .word DEX_MT_MOON
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_EDGE_GATE
    .word DEX_TOHJO_FALLS
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_MAGIKARP, DEX_NIGHT
    .word DEX_RUINS_OF_ALPH
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_ILEX_FOREST
    .word DEX_WHIRL_ISLANDS
    .word DEX_MT_MORTAR
    .word DEX_DRAGONS_DEN
    .word DEX_DARK_CAVE
    .word DEX_MT_MOON
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_EDGE_GATE
    .word DEX_TOHJO_FALLS
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_MAGIKARP, DEX_MORNING
    .word DEX_NEW_BARK_TOWN
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_VIOLET_CITY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ECRUTEAK_CITY
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_ROUTE_41
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_42
    .word DEX_ROUTE_43
    .word DEX_LAKE_OF_RAGE
    .word DEX_ROUTE_44
    .word DEX_BLACKTHORN_CITY
    .word DEX_ROUTE_45
    .word DEX_ROUTE_47
    .word DEX_MT_SILVER
    .word DEX_ROUTE_12
    .word DEX_ROUTE_19
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VIRIDIAN_CITY
    .word DEX_CERULEAN_CITY
    .word DEX_VERMILION_CITY
    .word DEX_FUCHSIA_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_28
    .word DEX_ROUTE_4
    .word DEX_ROUTE_6
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_13
    .word DEX_ROUTE_21
    .word DEX_ROUTE_22
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


routesandcities SPECIES_MAGIKARP, DEX_DAY
    .word DEX_NEW_BARK_TOWN
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_VIOLET_CITY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ECRUTEAK_CITY
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_ROUTE_41
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_42
    .word DEX_ROUTE_43
    .word DEX_LAKE_OF_RAGE
    .word DEX_ROUTE_44
    .word DEX_BLACKTHORN_CITY
    .word DEX_ROUTE_45
    .word DEX_ROUTE_47
    .word DEX_MT_SILVER
    .word DEX_ROUTE_12
    .word DEX_ROUTE_19
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VIRIDIAN_CITY
    .word DEX_CERULEAN_CITY
    .word DEX_VERMILION_CITY
    .word DEX_FUCHSIA_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_28
    .word DEX_ROUTE_4
    .word DEX_ROUTE_6
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_13
    .word DEX_ROUTE_21
    .word DEX_ROUTE_22
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


routesandcities SPECIES_MAGIKARP, DEX_NIGHT
    .word DEX_NEW_BARK_TOWN
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_VIOLET_CITY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ECRUTEAK_CITY
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_ROUTE_41
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_42
    .word DEX_ROUTE_43
    .word DEX_LAKE_OF_RAGE
    .word DEX_ROUTE_44
    .word DEX_BLACKTHORN_CITY
    .word DEX_ROUTE_45
    .word DEX_ROUTE_47
    .word DEX_MT_SILVER
    .word DEX_ROUTE_12
    .word DEX_ROUTE_19
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VIRIDIAN_CITY
    .word DEX_CERULEAN_CITY
    .word DEX_VERMILION_CITY
    .word DEX_FUCHSIA_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_28
    .word DEX_ROUTE_4
    .word DEX_ROUTE_6
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_13
    .word DEX_ROUTE_21
    .word DEX_ROUTE_22
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


specialareas SPECIES_MAGIKARP, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MAGIKARP, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GYARADOS, DEX_MORNING
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_GYARADOS, DEX_DAY
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_GYARADOS, DEX_NIGHT
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_GYARADOS, DEX_MORNING
    .word DEX_LAKE_OF_RAGE
    .word DEX_FUCHSIA_CITY
    dexendareadata


routesandcities SPECIES_GYARADOS, DEX_DAY
    .word DEX_LAKE_OF_RAGE
    .word DEX_FUCHSIA_CITY
    dexendareadata


routesandcities SPECIES_GYARADOS, DEX_NIGHT
    .word DEX_LAKE_OF_RAGE
    .word DEX_FUCHSIA_CITY
    dexendareadata


specialareas SPECIES_GYARADOS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GYARADOS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LAPRAS, DEX_MORNING
    dexendareadata


specialareas SPECIES_LAPRAS, DEX_DAY
    dexendareadata


specialareas SPECIES_LAPRAS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LAPRAS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LAPRAS, DEX_DAY
    dexendareadata


routesandcities SPECIES_LAPRAS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LAPRAS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LAPRAS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DITTO, DEX_MORNING
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_DITTO, DEX_DAY
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_DITTO, DEX_NIGHT
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_DITTO, DEX_MORNING
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_47
    dexendareadata


routesandcities SPECIES_DITTO, DEX_DAY
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_47
    dexendareadata


routesandcities SPECIES_DITTO, DEX_NIGHT
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_47
    dexendareadata


specialareas SPECIES_DITTO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DITTO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_EEVEE, DEX_MORNING
    dexendareadata


specialareas SPECIES_EEVEE, DEX_DAY
    dexendareadata


specialareas SPECIES_EEVEE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_EEVEE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_EEVEE, DEX_DAY
    dexendareadata


routesandcities SPECIES_EEVEE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_EEVEE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_EEVEE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VAPOREON, DEX_MORNING
    dexendareadata


specialareas SPECIES_VAPOREON, DEX_DAY
    dexendareadata


specialareas SPECIES_VAPOREON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VAPOREON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VAPOREON, DEX_DAY
    dexendareadata


routesandcities SPECIES_VAPOREON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VAPOREON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VAPOREON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_JOLTEON, DEX_MORNING
    dexendareadata


specialareas SPECIES_JOLTEON, DEX_DAY
    dexendareadata


specialareas SPECIES_JOLTEON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_JOLTEON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_JOLTEON, DEX_DAY
    dexendareadata


routesandcities SPECIES_JOLTEON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_JOLTEON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_JOLTEON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FLAREON, DEX_MORNING
    dexendareadata


specialareas SPECIES_FLAREON, DEX_DAY
    dexendareadata


specialareas SPECIES_FLAREON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FLAREON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FLAREON, DEX_DAY
    dexendareadata


routesandcities SPECIES_FLAREON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FLAREON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FLAREON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PORYGON, DEX_MORNING
    dexendareadata


specialareas SPECIES_PORYGON, DEX_DAY
    dexendareadata


specialareas SPECIES_PORYGON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PORYGON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PORYGON, DEX_DAY
    dexendareadata


routesandcities SPECIES_PORYGON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PORYGON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PORYGON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_OMANYTE, DEX_MORNING
    dexendareadata


specialareas SPECIES_OMANYTE, DEX_DAY
    dexendareadata


specialareas SPECIES_OMANYTE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_OMANYTE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_OMANYTE, DEX_DAY
    dexendareadata


routesandcities SPECIES_OMANYTE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_OMANYTE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_OMANYTE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_OMASTAR, DEX_MORNING
    dexendareadata


specialareas SPECIES_OMASTAR, DEX_DAY
    dexendareadata


specialareas SPECIES_OMASTAR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_OMASTAR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_OMASTAR, DEX_DAY
    dexendareadata


routesandcities SPECIES_OMASTAR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_OMASTAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_OMASTAR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KABUTO, DEX_MORNING
    dexendareadata


specialareas SPECIES_KABUTO, DEX_DAY
    dexendareadata


specialareas SPECIES_KABUTO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KABUTO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KABUTO, DEX_DAY
    dexendareadata


routesandcities SPECIES_KABUTO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KABUTO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KABUTO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KABUTOPS, DEX_MORNING
    dexendareadata


specialareas SPECIES_KABUTOPS, DEX_DAY
    dexendareadata


specialareas SPECIES_KABUTOPS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KABUTOPS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KABUTOPS, DEX_DAY
    dexendareadata


routesandcities SPECIES_KABUTOPS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KABUTOPS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KABUTOPS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_AERODACTYL, DEX_MORNING
    dexendareadata


specialareas SPECIES_AERODACTYL, DEX_DAY
    dexendareadata


specialareas SPECIES_AERODACTYL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_AERODACTYL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_AERODACTYL, DEX_DAY
    dexendareadata


routesandcities SPECIES_AERODACTYL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_AERODACTYL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_AERODACTYL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SNORLAX, DEX_MORNING
    dexendareadata


specialareas SPECIES_SNORLAX, DEX_DAY
    dexendareadata


specialareas SPECIES_SNORLAX, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SNORLAX, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SNORLAX, DEX_DAY
    dexendareadata


routesandcities SPECIES_SNORLAX, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SNORLAX, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SNORLAX, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ARTICUNO, DEX_MORNING
    dexendareadata


specialareas SPECIES_ARTICUNO, DEX_DAY
    dexendareadata


specialareas SPECIES_ARTICUNO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ARTICUNO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ARTICUNO, DEX_DAY
    dexendareadata


routesandcities SPECIES_ARTICUNO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ARTICUNO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ARTICUNO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ZAPDOS, DEX_MORNING
    dexendareadata


specialareas SPECIES_ZAPDOS, DEX_DAY
    dexendareadata


specialareas SPECIES_ZAPDOS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ZAPDOS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ZAPDOS, DEX_DAY
    dexendareadata


routesandcities SPECIES_ZAPDOS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ZAPDOS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ZAPDOS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MOLTRES, DEX_MORNING
    dexendareadata


specialareas SPECIES_MOLTRES, DEX_DAY
    dexendareadata


specialareas SPECIES_MOLTRES, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MOLTRES, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MOLTRES, DEX_DAY
    dexendareadata


routesandcities SPECIES_MOLTRES, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MOLTRES, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MOLTRES, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DRATINI, DEX_MORNING
    .word DEX_DRAGONS_DEN
    dexendareadata


specialareas SPECIES_DRATINI, DEX_DAY
    .word DEX_DRAGONS_DEN
    dexendareadata


specialareas SPECIES_DRATINI, DEX_NIGHT
    .word DEX_DRAGONS_DEN
    dexendareadata


routesandcities SPECIES_DRATINI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DRATINI, DEX_DAY
    dexendareadata


routesandcities SPECIES_DRATINI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DRATINI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DRATINI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DRAGONAIR, DEX_MORNING
    .word DEX_DRAGONS_DEN
    dexendareadata


specialareas SPECIES_DRAGONAIR, DEX_DAY
    .word DEX_DRAGONS_DEN
    dexendareadata


specialareas SPECIES_DRAGONAIR, DEX_NIGHT
    .word DEX_DRAGONS_DEN
    dexendareadata


routesandcities SPECIES_DRAGONAIR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DRAGONAIR, DEX_DAY
    dexendareadata


routesandcities SPECIES_DRAGONAIR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DRAGONAIR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DRAGONAIR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DRAGONITE, DEX_MORNING
    dexendareadata


specialareas SPECIES_DRAGONITE, DEX_DAY
    dexendareadata


specialareas SPECIES_DRAGONITE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DRAGONITE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DRAGONITE, DEX_DAY
    dexendareadata


routesandcities SPECIES_DRAGONITE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DRAGONITE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DRAGONITE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MEWTWO, DEX_MORNING
    dexendareadata


specialareas SPECIES_MEWTWO, DEX_DAY
    dexendareadata


specialareas SPECIES_MEWTWO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MEWTWO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MEWTWO, DEX_DAY
    dexendareadata


routesandcities SPECIES_MEWTWO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MEWTWO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MEWTWO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MEW, DEX_MORNING
    dexendareadata


specialareas SPECIES_MEW, DEX_DAY
    dexendareadata


specialareas SPECIES_MEW, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MEW, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MEW, DEX_DAY
    dexendareadata


routesandcities SPECIES_MEW, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MEW, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MEW, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHIKORITA, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHIKORITA, DEX_DAY
    dexendareadata


specialareas SPECIES_CHIKORITA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHIKORITA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHIKORITA, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHIKORITA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHIKORITA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CHIKORITA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BAYLEEF, DEX_MORNING
    dexendareadata


specialareas SPECIES_BAYLEEF, DEX_DAY
    dexendareadata


specialareas SPECIES_BAYLEEF, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BAYLEEF, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BAYLEEF, DEX_DAY
    dexendareadata


routesandcities SPECIES_BAYLEEF, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BAYLEEF, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BAYLEEF, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MEGANIUM, DEX_MORNING
    dexendareadata


specialareas SPECIES_MEGANIUM, DEX_DAY
    dexendareadata


specialareas SPECIES_MEGANIUM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MEGANIUM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MEGANIUM, DEX_DAY
    dexendareadata


routesandcities SPECIES_MEGANIUM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MEGANIUM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MEGANIUM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CYNDAQUIL, DEX_MORNING
    dexendareadata


specialareas SPECIES_CYNDAQUIL, DEX_DAY
    dexendareadata


specialareas SPECIES_CYNDAQUIL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CYNDAQUIL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CYNDAQUIL, DEX_DAY
    dexendareadata


routesandcities SPECIES_CYNDAQUIL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CYNDAQUIL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CYNDAQUIL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_QUILAVA, DEX_MORNING
    dexendareadata


specialareas SPECIES_QUILAVA, DEX_DAY
    dexendareadata


specialareas SPECIES_QUILAVA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_QUILAVA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_QUILAVA, DEX_DAY
    dexendareadata


routesandcities SPECIES_QUILAVA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_QUILAVA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_QUILAVA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TYPHLOSION, DEX_MORNING
    dexendareadata


specialareas SPECIES_TYPHLOSION, DEX_DAY
    dexendareadata


specialareas SPECIES_TYPHLOSION, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TYPHLOSION, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TYPHLOSION, DEX_DAY
    dexendareadata


routesandcities SPECIES_TYPHLOSION, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TYPHLOSION, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TYPHLOSION, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TOTODILE, DEX_MORNING
    dexendareadata


specialareas SPECIES_TOTODILE, DEX_DAY
    dexendareadata


specialareas SPECIES_TOTODILE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TOTODILE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TOTODILE, DEX_DAY
    dexendareadata


routesandcities SPECIES_TOTODILE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TOTODILE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TOTODILE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CROCONAW, DEX_MORNING
    dexendareadata


specialareas SPECIES_CROCONAW, DEX_DAY
    dexendareadata


specialareas SPECIES_CROCONAW, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CROCONAW, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CROCONAW, DEX_DAY
    dexendareadata


routesandcities SPECIES_CROCONAW, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CROCONAW, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CROCONAW, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FERALIGATR, DEX_MORNING
    dexendareadata


specialareas SPECIES_FERALIGATR, DEX_DAY
    dexendareadata


specialareas SPECIES_FERALIGATR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FERALIGATR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FERALIGATR, DEX_DAY
    dexendareadata


routesandcities SPECIES_FERALIGATR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FERALIGATR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FERALIGATR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SENTRET, DEX_MORNING
    dexendareadata


specialareas SPECIES_SENTRET, DEX_DAY
    dexendareadata


specialareas SPECIES_SENTRET, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SENTRET, DEX_MORNING
    .word DEX_ROUTE_29
    .word DEX_ROUTE_1
    dexendareadata


routesandcities SPECIES_SENTRET, DEX_DAY
    .word DEX_ROUTE_29
    .word DEX_ROUTE_1
    dexendareadata


routesandcities SPECIES_SENTRET, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SENTRET, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SENTRET, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FURRET, DEX_MORNING
    dexendareadata


specialareas SPECIES_FURRET, DEX_DAY
    dexendareadata


specialareas SPECIES_FURRET, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FURRET, DEX_MORNING
    .word DEX_ROUTE_1
    dexendareadata


routesandcities SPECIES_FURRET, DEX_DAY
    .word DEX_ROUTE_1
    dexendareadata


routesandcities SPECIES_FURRET, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FURRET, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FURRET, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HOOTHOOT, DEX_MORNING
    dexendareadata


specialareas SPECIES_HOOTHOOT, DEX_DAY
    dexendareadata


specialareas SPECIES_HOOTHOOT, DEX_NIGHT
    .word DEX_NATIONAL_PARK
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


routesandcities SPECIES_HOOTHOOT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HOOTHOOT, DEX_DAY
    dexendareadata


routesandcities SPECIES_HOOTHOOT, DEX_NIGHT
    .word DEX_ROUTE_29
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_ROUTE_35
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    .word DEX_ROUTE_1
    .word DEX_ROUTE_2
    .word DEX_ROUTE_2_2
    dexendareadata


specialareas SPECIES_HOOTHOOT, DEX_SPECIAL
    .word DEX_ILEX_FOREST
    .word DEX_NATIONAL_PARK
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


routesandcities SPECIES_HOOTHOOT, DEX_SPECIAL
    .word DEX_NEW_BARK_TOWN
    .word DEX_ROUTE_29
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_VIOLET_CITY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    .word DEX_ECRUTEAK_CITY
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_43
    .word DEX_LAKE_OF_RAGE
    .word DEX_ROUTE_47
    .word DEX_ROUTE_12
    .word DEX_PALLET_TOWN
    .word DEX_VIRIDIAN_CITY
    .word DEX_CERULEAN_CITY
    .word DEX_FUCHSIA_CITY
    .word DEX_ROUTE_48
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_1
    .word DEX_ROUTE_2
    .word DEX_ROUTE_3
    .word DEX_ROUTE_4
    .word DEX_ROUTE_5
    .word DEX_ROUTE_6
    .word DEX_ROUTE_8
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    .word DEX_ROUTE_18
    .word DEX_ROUTE_21
    .word DEX_ROUTE_22
    .word DEX_ROUTE_25
    .word DEX_ROUTE_2_2
    .word DEX_PEWTER_CITY
    .word DEX_SAFARI_ZONE_GATE
    dexendareadata


specialareas SPECIES_NOCTOWL, DEX_MORNING
    dexendareadata


specialareas SPECIES_NOCTOWL, DEX_DAY
    dexendareadata


specialareas SPECIES_NOCTOWL, DEX_NIGHT
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


routesandcities SPECIES_NOCTOWL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NOCTOWL, DEX_DAY
    dexendareadata


routesandcities SPECIES_NOCTOWL, DEX_NIGHT
    .word DEX_ROUTE_43
    .word DEX_ROUTE_47
    .word DEX_ROUTE_2
    .word DEX_ROUTE_8
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    .word DEX_ROUTE_2_2
    dexendareadata


specialareas SPECIES_NOCTOWL, DEX_SPECIAL
    .word DEX_ILEX_FOREST
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


routesandcities SPECIES_NOCTOWL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LEDYBA, DEX_MORNING
    dexendareadata


specialareas SPECIES_LEDYBA, DEX_DAY
    dexendareadata


specialareas SPECIES_LEDYBA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LEDYBA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LEDYBA, DEX_DAY
    dexendareadata


routesandcities SPECIES_LEDYBA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LEDYBA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LEDYBA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LEDIAN, DEX_MORNING
    dexendareadata


specialareas SPECIES_LEDIAN, DEX_DAY
    dexendareadata


specialareas SPECIES_LEDIAN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LEDIAN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LEDIAN, DEX_DAY
    dexendareadata


routesandcities SPECIES_LEDIAN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LEDIAN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LEDIAN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SPINARAK, DEX_MORNING
    dexendareadata


specialareas SPECIES_SPINARAK, DEX_DAY
    dexendareadata


specialareas SPECIES_SPINARAK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SPINARAK, DEX_MORNING
    .word DEX_ROUTE_2
    .word DEX_ROUTE_2_2
    dexendareadata


routesandcities SPECIES_SPINARAK, DEX_DAY
    dexendareadata


routesandcities SPECIES_SPINARAK, DEX_NIGHT
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_ROUTE_37
    .word DEX_ROUTE_2
    .word DEX_ROUTE_2_2
    dexendareadata


specialareas SPECIES_SPINARAK, DEX_SPECIAL
    .word DEX_NATIONAL_PARK
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


routesandcities SPECIES_SPINARAK, DEX_SPECIAL
    .word DEX_NEW_BARK_TOWN
    .word DEX_ROUTE_29
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    .word DEX_ECRUTEAK_CITY
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_47
    .word DEX_ROUTE_12
    .word DEX_PALLET_TOWN
    .word DEX_VIRIDIAN_CITY
    .word DEX_FUCHSIA_CITY
    .word DEX_ROUTE_48
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_1
    .word DEX_ROUTE_2
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    .word DEX_ROUTE_18
    .word DEX_ROUTE_21
    .word DEX_ROUTE_22
    .word DEX_ROUTE_2_2
    .word DEX_SAFARI_ZONE_GATE
    dexendareadata


specialareas SPECIES_ARIADOS, DEX_MORNING
    dexendareadata


specialareas SPECIES_ARIADOS, DEX_DAY
    dexendareadata


specialareas SPECIES_ARIADOS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ARIADOS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ARIADOS, DEX_DAY
    dexendareadata


routesandcities SPECIES_ARIADOS, DEX_NIGHT
    .word DEX_ROUTE_2
    .word DEX_ROUTE_2_2
    dexendareadata


specialareas SPECIES_ARIADOS, DEX_SPECIAL
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


routesandcities SPECIES_ARIADOS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CROBAT, DEX_MORNING
    dexendareadata


specialareas SPECIES_CROBAT, DEX_DAY
    dexendareadata


specialareas SPECIES_CROBAT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CROBAT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CROBAT, DEX_DAY
    dexendareadata


routesandcities SPECIES_CROBAT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CROBAT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CROBAT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHINCHOU, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHINCHOU, DEX_DAY
    dexendareadata


specialareas SPECIES_CHINCHOU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHINCHOU, DEX_MORNING
    .word DEX_NEW_BARK_TOWN
    .word DEX_ROUTE_41
    .word DEX_ROUTE_47
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VERMILION_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_21
    dexendareadata


routesandcities SPECIES_CHINCHOU, DEX_DAY
    .word DEX_NEW_BARK_TOWN
    .word DEX_ROUTE_41
    .word DEX_ROUTE_47
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VERMILION_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_21
    dexendareadata


routesandcities SPECIES_CHINCHOU, DEX_NIGHT
    .word DEX_NEW_BARK_TOWN
    .word DEX_ROUTE_41
    .word DEX_ROUTE_47
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VERMILION_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_21
    dexendareadata


specialareas SPECIES_CHINCHOU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CHINCHOU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LANTURN, DEX_MORNING
    dexendareadata


specialareas SPECIES_LANTURN, DEX_DAY
    dexendareadata


specialareas SPECIES_LANTURN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LANTURN, DEX_MORNING
    .word DEX_NEW_BARK_TOWN
    .word DEX_ROUTE_41
    .word DEX_ROUTE_47
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VERMILION_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_21
    dexendareadata


routesandcities SPECIES_LANTURN, DEX_DAY
    .word DEX_NEW_BARK_TOWN
    .word DEX_ROUTE_41
    .word DEX_ROUTE_47
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VERMILION_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_21
    dexendareadata


routesandcities SPECIES_LANTURN, DEX_NIGHT
    .word DEX_NEW_BARK_TOWN
    .word DEX_ROUTE_41
    .word DEX_ROUTE_47
    .word DEX_ROUTE_20
    .word DEX_PALLET_TOWN
    .word DEX_VERMILION_CITY
    .word DEX_CINNABAR_CITY
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_21
    dexendareadata


specialareas SPECIES_LANTURN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LANTURN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PICHU, DEX_MORNING
    dexendareadata


specialareas SPECIES_PICHU, DEX_DAY
    dexendareadata


specialareas SPECIES_PICHU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PICHU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PICHU, DEX_DAY
    dexendareadata


routesandcities SPECIES_PICHU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PICHU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PICHU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CLEFFA, DEX_MORNING
    dexendareadata


specialareas SPECIES_CLEFFA, DEX_DAY
    dexendareadata


specialareas SPECIES_CLEFFA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CLEFFA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CLEFFA, DEX_DAY
    dexendareadata


routesandcities SPECIES_CLEFFA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CLEFFA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CLEFFA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_IGGLYBUFF, DEX_MORNING
    dexendareadata


specialareas SPECIES_IGGLYBUFF, DEX_DAY
    dexendareadata


specialareas SPECIES_IGGLYBUFF, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_IGGLYBUFF, DEX_MORNING
    dexendareadata


routesandcities SPECIES_IGGLYBUFF, DEX_DAY
    dexendareadata


routesandcities SPECIES_IGGLYBUFF, DEX_NIGHT
    dexendareadata


specialareas SPECIES_IGGLYBUFF, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_IGGLYBUFF, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TOGEPI, DEX_MORNING
    dexendareadata


specialareas SPECIES_TOGEPI, DEX_DAY
    dexendareadata


specialareas SPECIES_TOGEPI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TOGEPI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TOGEPI, DEX_DAY
    dexendareadata


routesandcities SPECIES_TOGEPI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TOGEPI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TOGEPI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TOGETIC, DEX_MORNING
    dexendareadata


specialareas SPECIES_TOGETIC, DEX_DAY
    dexendareadata


specialareas SPECIES_TOGETIC, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TOGETIC, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TOGETIC, DEX_DAY
    dexendareadata


routesandcities SPECIES_TOGETIC, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TOGETIC, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TOGETIC, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NATU, DEX_MORNING
    .word DEX_RUINS_OF_ALPH
    dexendareadata


specialareas SPECIES_NATU, DEX_DAY
    .word DEX_RUINS_OF_ALPH
    dexendareadata


specialareas SPECIES_NATU, DEX_NIGHT
    .word DEX_RUINS_OF_ALPH
    dexendareadata


routesandcities SPECIES_NATU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NATU, DEX_DAY
    dexendareadata


routesandcities SPECIES_NATU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NATU, DEX_SPECIAL
    .word DEX_MT_SILVER_CAVE
    dexendareadata


routesandcities SPECIES_NATU, DEX_SPECIAL
    .word DEX_MT_SILVER
    .word DEX_ROUTE_28
    dexendareadata


specialareas SPECIES_XATU, DEX_MORNING
    dexendareadata


specialareas SPECIES_XATU, DEX_DAY
    dexendareadata


specialareas SPECIES_XATU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_XATU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_XATU, DEX_DAY
    dexendareadata


routesandcities SPECIES_XATU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_XATU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_XATU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MAREEP, DEX_MORNING
    dexendareadata


specialareas SPECIES_MAREEP, DEX_DAY
    dexendareadata


specialareas SPECIES_MAREEP, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MAREEP, DEX_MORNING
    .word DEX_ROUTE_32
    .word DEX_ROUTE_42
    .word DEX_ROUTE_43
    dexendareadata


routesandcities SPECIES_MAREEP, DEX_DAY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_42
    .word DEX_ROUTE_43
    dexendareadata


routesandcities SPECIES_MAREEP, DEX_NIGHT
    .word DEX_ROUTE_32
    .word DEX_ROUTE_42
    .word DEX_ROUTE_43
    dexendareadata


specialareas SPECIES_MAREEP, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MAREEP, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FLAAFFY, DEX_MORNING
    dexendareadata


specialareas SPECIES_FLAAFFY, DEX_DAY
    dexendareadata


specialareas SPECIES_FLAAFFY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FLAAFFY, DEX_MORNING
    .word DEX_ROUTE_42
    .word DEX_ROUTE_43
    dexendareadata


routesandcities SPECIES_FLAAFFY, DEX_DAY
    .word DEX_ROUTE_42
    .word DEX_ROUTE_43
    dexendareadata


routesandcities SPECIES_FLAAFFY, DEX_NIGHT
    .word DEX_ROUTE_42
    .word DEX_ROUTE_43
    dexendareadata


specialareas SPECIES_FLAAFFY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FLAAFFY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_AMPHAROS, DEX_MORNING
    dexendareadata


specialareas SPECIES_AMPHAROS, DEX_DAY
    dexendareadata


specialareas SPECIES_AMPHAROS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_AMPHAROS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_AMPHAROS, DEX_DAY
    dexendareadata


routesandcities SPECIES_AMPHAROS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_AMPHAROS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_AMPHAROS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BELLOSSOM, DEX_MORNING
    dexendareadata


specialareas SPECIES_BELLOSSOM, DEX_DAY
    dexendareadata


specialareas SPECIES_BELLOSSOM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BELLOSSOM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BELLOSSOM, DEX_DAY
    dexendareadata


routesandcities SPECIES_BELLOSSOM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BELLOSSOM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BELLOSSOM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MARILL, DEX_MORNING
    .word DEX_MT_MORTAR
    dexendareadata


specialareas SPECIES_MARILL, DEX_DAY
    .word DEX_MT_MORTAR
    dexendareadata


specialareas SPECIES_MARILL, DEX_NIGHT
    .word DEX_MT_MORTAR
    dexendareadata


routesandcities SPECIES_MARILL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MARILL, DEX_DAY
    dexendareadata


routesandcities SPECIES_MARILL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MARILL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MARILL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_AZUMARILL, DEX_MORNING
    dexendareadata


specialareas SPECIES_AZUMARILL, DEX_DAY
    dexendareadata


specialareas SPECIES_AZUMARILL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_AZUMARILL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_AZUMARILL, DEX_DAY
    dexendareadata


routesandcities SPECIES_AZUMARILL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_AZUMARILL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_AZUMARILL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SUDOWOODO, DEX_MORNING
    dexendareadata


specialareas SPECIES_SUDOWOODO, DEX_DAY
    dexendareadata


specialareas SPECIES_SUDOWOODO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SUDOWOODO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SUDOWOODO, DEX_DAY
    dexendareadata


routesandcities SPECIES_SUDOWOODO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SUDOWOODO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SUDOWOODO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_POLITOED, DEX_MORNING
    dexendareadata


specialareas SPECIES_POLITOED, DEX_DAY
    dexendareadata


specialareas SPECIES_POLITOED, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_POLITOED, DEX_MORNING
    dexendareadata


routesandcities SPECIES_POLITOED, DEX_DAY
    dexendareadata


routesandcities SPECIES_POLITOED, DEX_NIGHT
    dexendareadata


specialareas SPECIES_POLITOED, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_POLITOED, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HOPPIP, DEX_MORNING
    dexendareadata


specialareas SPECIES_HOPPIP, DEX_DAY
    dexendareadata


specialareas SPECIES_HOPPIP, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HOPPIP, DEX_MORNING
    .word DEX_ROUTE_32
    .word DEX_ROUTE_33
    .word DEX_ROUTE_48
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    dexendareadata


routesandcities SPECIES_HOPPIP, DEX_DAY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_33
    .word DEX_ROUTE_48
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    dexendareadata


routesandcities SPECIES_HOPPIP, DEX_NIGHT
    .word DEX_ROUTE_48
    dexendareadata


specialareas SPECIES_HOPPIP, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HOPPIP, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SKIPLOOM, DEX_MORNING
    dexendareadata


specialareas SPECIES_SKIPLOOM, DEX_DAY
    dexendareadata


specialareas SPECIES_SKIPLOOM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SKIPLOOM, DEX_MORNING
    .word DEX_ROUTE_14
    dexendareadata


routesandcities SPECIES_SKIPLOOM, DEX_DAY
    .word DEX_ROUTE_14
    dexendareadata


routesandcities SPECIES_SKIPLOOM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SKIPLOOM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SKIPLOOM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_JUMPLUFF, DEX_MORNING
    dexendareadata


specialareas SPECIES_JUMPLUFF, DEX_DAY
    dexendareadata


specialareas SPECIES_JUMPLUFF, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_JUMPLUFF, DEX_MORNING
    dexendareadata


routesandcities SPECIES_JUMPLUFF, DEX_DAY
    dexendareadata


routesandcities SPECIES_JUMPLUFF, DEX_NIGHT
    dexendareadata


specialareas SPECIES_JUMPLUFF, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_JUMPLUFF, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_AIPOM, DEX_MORNING
    dexendareadata


specialareas SPECIES_AIPOM, DEX_DAY
    dexendareadata


specialareas SPECIES_AIPOM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_AIPOM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_AIPOM, DEX_DAY
    dexendareadata


routesandcities SPECIES_AIPOM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_AIPOM, DEX_SPECIAL
    .word DEX_MT_SILVER_CAVE
    dexendareadata


routesandcities SPECIES_AIPOM, DEX_SPECIAL
    .word DEX_ROUTE_33
    .word DEX_ROUTE_42
    .word DEX_ROUTE_44
    .word DEX_ROUTE_45
    .word DEX_ROUTE_46
    .word DEX_MT_SILVER
    .word DEX_ROUTE_28
    .word DEX_AZALEA_TOWN
    dexendareadata


specialareas SPECIES_SUNKERN, DEX_MORNING
    dexendareadata


specialareas SPECIES_SUNKERN, DEX_DAY
    .word DEX_NATIONAL_PARK
    dexendareadata


specialareas SPECIES_SUNKERN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SUNKERN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SUNKERN, DEX_DAY
    .word DEX_ROUTE_24
    dexendareadata


routesandcities SPECIES_SUNKERN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SUNKERN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SUNKERN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SUNFLORA, DEX_MORNING
    dexendareadata


specialareas SPECIES_SUNFLORA, DEX_DAY
    dexendareadata


specialareas SPECIES_SUNFLORA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SUNFLORA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SUNFLORA, DEX_DAY
    dexendareadata


routesandcities SPECIES_SUNFLORA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SUNFLORA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SUNFLORA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_YANMA, DEX_MORNING
    dexendareadata


specialareas SPECIES_YANMA, DEX_DAY
    dexendareadata


specialareas SPECIES_YANMA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_YANMA, DEX_MORNING
    .word DEX_ROUTE_35
    dexendareadata


routesandcities SPECIES_YANMA, DEX_DAY
    .word DEX_ROUTE_35
    dexendareadata


routesandcities SPECIES_YANMA, DEX_NIGHT
    .word DEX_ROUTE_35
    dexendareadata


specialareas SPECIES_YANMA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_YANMA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WOOPER, DEX_MORNING
    .word DEX_RUINS_OF_ALPH
    .word DEX_UNION_CAVE
    .word DEX_CLIFF_EDGE_GATE
    .word DEX_CLIFF_CAVE
    dexendareadata


specialareas SPECIES_WOOPER, DEX_DAY
    .word DEX_RUINS_OF_ALPH
    .word DEX_UNION_CAVE
    .word DEX_CLIFF_EDGE_GATE
    .word DEX_CLIFF_CAVE
    dexendareadata


specialareas SPECIES_WOOPER, DEX_NIGHT
    .word DEX_RUINS_OF_ALPH
    .word DEX_UNION_CAVE
    .word DEX_CLIFF_EDGE_GATE
    dexendareadata


routesandcities SPECIES_WOOPER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WOOPER, DEX_DAY
    dexendareadata


routesandcities SPECIES_WOOPER, DEX_NIGHT
    .word DEX_ROUTE_32
    dexendareadata


specialareas SPECIES_WOOPER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WOOPER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_QUAGSIRE, DEX_MORNING
    .word DEX_RUINS_OF_ALPH
    .word DEX_UNION_CAVE
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_EDGE_GATE
    .word DEX_CLIFF_CAVE
    dexendareadata


specialareas SPECIES_QUAGSIRE, DEX_DAY
    .word DEX_RUINS_OF_ALPH
    .word DEX_UNION_CAVE
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_EDGE_GATE
    .word DEX_CLIFF_CAVE
    dexendareadata


specialareas SPECIES_QUAGSIRE, DEX_NIGHT
    .word DEX_RUINS_OF_ALPH
    .word DEX_UNION_CAVE
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_EDGE_GATE
    dexendareadata


routesandcities SPECIES_QUAGSIRE, DEX_MORNING
    .word DEX_ROUTE_32
    .word DEX_ROUTE_12
    .word DEX_ROUTE_13
    dexendareadata


routesandcities SPECIES_QUAGSIRE, DEX_DAY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_12
    .word DEX_ROUTE_13
    dexendareadata


routesandcities SPECIES_QUAGSIRE, DEX_NIGHT
    .word DEX_ROUTE_32
    .word DEX_ROUTE_12
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_10
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    dexendareadata


specialareas SPECIES_QUAGSIRE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_QUAGSIRE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ESPEON, DEX_MORNING
    dexendareadata


specialareas SPECIES_ESPEON, DEX_DAY
    dexendareadata


specialareas SPECIES_ESPEON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ESPEON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ESPEON, DEX_DAY
    dexendareadata


routesandcities SPECIES_ESPEON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ESPEON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ESPEON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_UMBREON, DEX_MORNING
    dexendareadata


specialareas SPECIES_UMBREON, DEX_DAY
    dexendareadata


specialareas SPECIES_UMBREON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_UMBREON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_UMBREON, DEX_DAY
    dexendareadata


routesandcities SPECIES_UMBREON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_UMBREON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_UMBREON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MURKROW, DEX_MORNING
    dexendareadata


specialareas SPECIES_MURKROW, DEX_DAY
    dexendareadata


specialareas SPECIES_MURKROW, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MURKROW, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MURKROW, DEX_DAY
    dexendareadata


routesandcities SPECIES_MURKROW, DEX_NIGHT
    .word DEX_ROUTE_7
    .word DEX_ROUTE_16
    dexendareadata


specialareas SPECIES_MURKROW, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MURKROW, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SLOWKING, DEX_MORNING
    dexendareadata


specialareas SPECIES_SLOWKING, DEX_DAY
    dexendareadata


specialareas SPECIES_SLOWKING, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SLOWKING, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SLOWKING, DEX_DAY
    dexendareadata


routesandcities SPECIES_SLOWKING, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SLOWKING, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SLOWKING, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MISDREAVUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_MISDREAVUS, DEX_DAY
    dexendareadata


specialareas SPECIES_MISDREAVUS, DEX_NIGHT
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_CAVE
    dexendareadata


routesandcities SPECIES_MISDREAVUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MISDREAVUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_MISDREAVUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MISDREAVUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MISDREAVUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_UNOWN, DEX_MORNING
    .word DEX_RUINS_OF_ALPH
    dexendareadata


specialareas SPECIES_UNOWN, DEX_DAY
    .word DEX_RUINS_OF_ALPH
    dexendareadata


specialareas SPECIES_UNOWN, DEX_NIGHT
    .word DEX_RUINS_OF_ALPH
    dexendareadata


routesandcities SPECIES_UNOWN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_UNOWN, DEX_DAY
    dexendareadata


routesandcities SPECIES_UNOWN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_UNOWN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_UNOWN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WOBBUFFET, DEX_MORNING
    .word DEX_DARK_CAVE
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_WOBBUFFET, DEX_DAY
    .word DEX_DARK_CAVE
    .word DEX_CERULEAN_CAVE
    dexendareadata


specialareas SPECIES_WOBBUFFET, DEX_NIGHT
    .word DEX_DARK_CAVE
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_WOBBUFFET, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WOBBUFFET, DEX_DAY
    dexendareadata


routesandcities SPECIES_WOBBUFFET, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WOBBUFFET, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WOBBUFFET, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GIRAFARIG, DEX_MORNING
    dexendareadata


specialareas SPECIES_GIRAFARIG, DEX_DAY
    dexendareadata


specialareas SPECIES_GIRAFARIG, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GIRAFARIG, DEX_MORNING
    .word DEX_ROUTE_43
    .word DEX_ROUTE_48
    dexendareadata


routesandcities SPECIES_GIRAFARIG, DEX_DAY
    .word DEX_ROUTE_43
    .word DEX_ROUTE_48
    dexendareadata


routesandcities SPECIES_GIRAFARIG, DEX_NIGHT
    .word DEX_ROUTE_43
    .word DEX_ROUTE_48
    dexendareadata


specialareas SPECIES_GIRAFARIG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GIRAFARIG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PINECO, DEX_MORNING
    dexendareadata


specialareas SPECIES_PINECO, DEX_DAY
    dexendareadata


specialareas SPECIES_PINECO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PINECO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PINECO, DEX_DAY
    dexendareadata


routesandcities SPECIES_PINECO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PINECO, DEX_SPECIAL
    .word DEX_ILEX_FOREST
    .word DEX_NATIONAL_PARK
    dexendareadata


routesandcities SPECIES_PINECO, DEX_SPECIAL
    .word DEX_NEW_BARK_TOWN
    .word DEX_ROUTE_29
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_VIOLET_CITY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    .word DEX_ECRUTEAK_CITY
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_43
    .word DEX_LAKE_OF_RAGE
    .word DEX_ROUTE_47
    .word DEX_PALLET_TOWN
    .word DEX_VIRIDIAN_CITY
    .word DEX_CERULEAN_CITY
    .word DEX_ROUTE_48
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_1
    .word DEX_ROUTE_2
    .word DEX_ROUTE_3
    .word DEX_ROUTE_4
    .word DEX_ROUTE_5
    .word DEX_ROUTE_6
    .word DEX_ROUTE_8
    .word DEX_ROUTE_22
    .word DEX_ROUTE_25
    .word DEX_ROUTE_2_2
    .word DEX_PEWTER_CITY
    .word DEX_SAFARI_ZONE_GATE
    dexendareadata


specialareas SPECIES_FORRETRESS, DEX_MORNING
    dexendareadata


specialareas SPECIES_FORRETRESS, DEX_DAY
    dexendareadata


specialareas SPECIES_FORRETRESS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FORRETRESS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FORRETRESS, DEX_DAY
    dexendareadata


routesandcities SPECIES_FORRETRESS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FORRETRESS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FORRETRESS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DUNSPARCE, DEX_MORNING
    .word DEX_DARK_CAVE
    dexendareadata


specialareas SPECIES_DUNSPARCE, DEX_DAY
    .word DEX_DARK_CAVE
    dexendareadata


specialareas SPECIES_DUNSPARCE, DEX_NIGHT
    .word DEX_DARK_CAVE
    dexendareadata


routesandcities SPECIES_DUNSPARCE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DUNSPARCE, DEX_DAY
    dexendareadata


routesandcities SPECIES_DUNSPARCE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DUNSPARCE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DUNSPARCE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GLIGAR, DEX_MORNING
    dexendareadata


specialareas SPECIES_GLIGAR, DEX_DAY
    dexendareadata


specialareas SPECIES_GLIGAR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GLIGAR, DEX_MORNING
    .word DEX_ROUTE_45
    dexendareadata


routesandcities SPECIES_GLIGAR, DEX_DAY
    .word DEX_ROUTE_45
    dexendareadata


routesandcities SPECIES_GLIGAR, DEX_NIGHT
    .word DEX_ROUTE_45
    dexendareadata


specialareas SPECIES_GLIGAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GLIGAR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_STEELIX, DEX_MORNING
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_CAVE
    dexendareadata


specialareas SPECIES_STEELIX, DEX_DAY
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_CAVE
    dexendareadata


specialareas SPECIES_STEELIX, DEX_NIGHT
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_CAVE
    dexendareadata


routesandcities SPECIES_STEELIX, DEX_MORNING
    dexendareadata


routesandcities SPECIES_STEELIX, DEX_DAY
    dexendareadata


routesandcities SPECIES_STEELIX, DEX_NIGHT
    dexendareadata


specialareas SPECIES_STEELIX, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_STEELIX, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SNUBBULL, DEX_MORNING
    dexendareadata


specialareas SPECIES_SNUBBULL, DEX_DAY
    dexendareadata


specialareas SPECIES_SNUBBULL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SNUBBULL, DEX_MORNING
    .word DEX_ROUTE_38
    dexendareadata


routesandcities SPECIES_SNUBBULL, DEX_DAY
    .word DEX_ROUTE_38
    dexendareadata


routesandcities SPECIES_SNUBBULL, DEX_NIGHT
    .word DEX_ROUTE_38
    dexendareadata


specialareas SPECIES_SNUBBULL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SNUBBULL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GRANBULL, DEX_MORNING
    dexendareadata


specialareas SPECIES_GRANBULL, DEX_DAY
    dexendareadata


specialareas SPECIES_GRANBULL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GRANBULL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GRANBULL, DEX_DAY
    dexendareadata


routesandcities SPECIES_GRANBULL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GRANBULL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GRANBULL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_QWILFISH, DEX_MORNING
    dexendareadata


specialareas SPECIES_QWILFISH, DEX_DAY
    dexendareadata


specialareas SPECIES_QWILFISH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_QWILFISH, DEX_MORNING
    .word DEX_ROUTE_32
    .word DEX_ROUTE_12
    .word DEX_ROUTE_13
    dexendareadata


routesandcities SPECIES_QWILFISH, DEX_DAY
    .word DEX_ROUTE_32
    .word DEX_ROUTE_12
    .word DEX_ROUTE_13
    dexendareadata


routesandcities SPECIES_QWILFISH, DEX_NIGHT
    .word DEX_ROUTE_32
    .word DEX_ROUTE_12
    .word DEX_ROUTE_13
    dexendareadata


specialareas SPECIES_QWILFISH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_QWILFISH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SCIZOR, DEX_MORNING
    dexendareadata


specialareas SPECIES_SCIZOR, DEX_DAY
    dexendareadata


specialareas SPECIES_SCIZOR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SCIZOR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SCIZOR, DEX_DAY
    dexendareadata


routesandcities SPECIES_SCIZOR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SCIZOR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SCIZOR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SHUCKLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_SHUCKLE, DEX_DAY
    dexendareadata


specialareas SPECIES_SHUCKLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SHUCKLE, DEX_MORNING
    .word DEX_CIANWOOD_CITY
    .word DEX_VERMILION_CITY
    dexendareadata


routesandcities SPECIES_SHUCKLE, DEX_DAY
    .word DEX_CIANWOOD_CITY
    .word DEX_VERMILION_CITY
    dexendareadata


routesandcities SPECIES_SHUCKLE, DEX_NIGHT
    .word DEX_CIANWOOD_CITY
    .word DEX_VERMILION_CITY
    dexendareadata


specialareas SPECIES_SHUCKLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SHUCKLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HERACROSS, DEX_MORNING
    dexendareadata


specialareas SPECIES_HERACROSS, DEX_DAY
    dexendareadata


specialareas SPECIES_HERACROSS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HERACROSS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HERACROSS, DEX_DAY
    dexendareadata


routesandcities SPECIES_HERACROSS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HERACROSS, DEX_SPECIAL
    .word DEX_MT_SILVER_CAVE
    dexendareadata


routesandcities SPECIES_HERACROSS, DEX_SPECIAL
    .word DEX_ROUTE_33
    .word DEX_ROUTE_42
    .word DEX_ROUTE_44
    .word DEX_ROUTE_45
    .word DEX_ROUTE_46
    .word DEX_ROUTE_47
    .word DEX_MT_SILVER
    .word DEX_VERMILION_CITY
    .word DEX_CELADON_CITY
    .word DEX_ROUTE_28
    .word DEX_ROUTE_7
    .word DEX_ROUTE_11
    .word DEX_ROUTE_16
    .word DEX_AZALEA_TOWN
    .word DEX_ROUTE_16_2
    dexendareadata


specialareas SPECIES_SNEASEL, DEX_MORNING
    .word DEX_MT_SILVER_CAVE
    dexendareadata


specialareas SPECIES_SNEASEL, DEX_DAY
    .word DEX_MT_SILVER_CAVE
    dexendareadata


specialareas SPECIES_SNEASEL, DEX_NIGHT
    .word DEX_MT_SILVER_CAVE
    dexendareadata


routesandcities SPECIES_SNEASEL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SNEASEL, DEX_DAY
    dexendareadata


routesandcities SPECIES_SNEASEL, DEX_NIGHT
    .word DEX_MT_SILVER
    .word DEX_ROUTE_28
    dexendareadata


specialareas SPECIES_SNEASEL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SNEASEL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TEDDIURSA, DEX_MORNING
    dexendareadata


specialareas SPECIES_TEDDIURSA, DEX_DAY
    dexendareadata


specialareas SPECIES_TEDDIURSA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TEDDIURSA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TEDDIURSA, DEX_DAY
    dexendareadata


routesandcities SPECIES_TEDDIURSA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TEDDIURSA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TEDDIURSA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_URSARING, DEX_MORNING
    dexendareadata


specialareas SPECIES_URSARING, DEX_DAY
    dexendareadata


specialareas SPECIES_URSARING, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_URSARING, DEX_MORNING
    dexendareadata


routesandcities SPECIES_URSARING, DEX_DAY
    dexendareadata


routesandcities SPECIES_URSARING, DEX_NIGHT
    dexendareadata


specialareas SPECIES_URSARING, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_URSARING, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SLUGMA, DEX_MORNING
    dexendareadata


specialareas SPECIES_SLUGMA, DEX_DAY
    dexendareadata


specialareas SPECIES_SLUGMA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SLUGMA, DEX_MORNING
    .word DEX_ROUTE_16
    .word DEX_ROUTE_17
    .word DEX_ROUTE_18
    dexendareadata


routesandcities SPECIES_SLUGMA, DEX_DAY
    .word DEX_ROUTE_16
    .word DEX_ROUTE_17
    .word DEX_ROUTE_18
    dexendareadata


routesandcities SPECIES_SLUGMA, DEX_NIGHT
    .word DEX_ROUTE_16
    .word DEX_ROUTE_17
    .word DEX_ROUTE_18
    dexendareadata


specialareas SPECIES_SLUGMA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SLUGMA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MAGCARGO, DEX_MORNING
    dexendareadata


specialareas SPECIES_MAGCARGO, DEX_DAY
    dexendareadata


specialareas SPECIES_MAGCARGO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MAGCARGO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MAGCARGO, DEX_DAY
    dexendareadata


routesandcities SPECIES_MAGCARGO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MAGCARGO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MAGCARGO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SWINUB, DEX_MORNING
    .word DEX_ICE_PATH
    dexendareadata


specialareas SPECIES_SWINUB, DEX_DAY
    .word DEX_ICE_PATH
    dexendareadata


specialareas SPECIES_SWINUB, DEX_NIGHT
    .word DEX_ICE_PATH
    dexendareadata


routesandcities SPECIES_SWINUB, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SWINUB, DEX_DAY
    dexendareadata


routesandcities SPECIES_SWINUB, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SWINUB, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SWINUB, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PILOSWINE, DEX_MORNING
    dexendareadata


specialareas SPECIES_PILOSWINE, DEX_DAY
    dexendareadata


specialareas SPECIES_PILOSWINE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PILOSWINE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PILOSWINE, DEX_DAY
    dexendareadata


routesandcities SPECIES_PILOSWINE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PILOSWINE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PILOSWINE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CORSOLA, DEX_MORNING
    .word DEX_UNION_CAVE
    dexendareadata


specialareas SPECIES_CORSOLA, DEX_DAY
    .word DEX_UNION_CAVE
    dexendareadata


specialareas SPECIES_CORSOLA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CORSOLA, DEX_MORNING
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_34
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_19
    dexendareadata


routesandcities SPECIES_CORSOLA, DEX_DAY
    .word DEX_CHERRYGROVE_CITY
    .word DEX_ROUTE_34
    .word DEX_OLIVINE_CITY
    .word DEX_ROUTE_40
    .word DEX_CIANWOOD_CITY
    .word DEX_ROUTE_19
    dexendareadata


routesandcities SPECIES_CORSOLA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CORSOLA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CORSOLA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_REMORAID, DEX_MORNING
    dexendareadata


specialareas SPECIES_REMORAID, DEX_DAY
    dexendareadata


specialareas SPECIES_REMORAID, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_REMORAID, DEX_MORNING
    .word DEX_ROUTE_44
    dexendareadata


routesandcities SPECIES_REMORAID, DEX_DAY
    .word DEX_ROUTE_44
    dexendareadata


routesandcities SPECIES_REMORAID, DEX_NIGHT
    .word DEX_ROUTE_44
    dexendareadata


specialareas SPECIES_REMORAID, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_REMORAID, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_OCTILLERY, DEX_MORNING
    dexendareadata


specialareas SPECIES_OCTILLERY, DEX_DAY
    dexendareadata


specialareas SPECIES_OCTILLERY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_OCTILLERY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_OCTILLERY, DEX_DAY
    dexendareadata


routesandcities SPECIES_OCTILLERY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_OCTILLERY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_OCTILLERY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DELIBIRD, DEX_MORNING
    dexendareadata


specialareas SPECIES_DELIBIRD, DEX_DAY
    dexendareadata


specialareas SPECIES_DELIBIRD, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DELIBIRD, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DELIBIRD, DEX_DAY
    dexendareadata


routesandcities SPECIES_DELIBIRD, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DELIBIRD, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DELIBIRD, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MANTINE, DEX_MORNING
    dexendareadata


specialareas SPECIES_MANTINE, DEX_DAY
    dexendareadata


specialareas SPECIES_MANTINE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MANTINE, DEX_MORNING
    .word DEX_ROUTE_41
    dexendareadata


routesandcities SPECIES_MANTINE, DEX_DAY
    .word DEX_ROUTE_41
    dexendareadata


routesandcities SPECIES_MANTINE, DEX_NIGHT
    .word DEX_ROUTE_41
    dexendareadata


specialareas SPECIES_MANTINE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MANTINE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SKARMORY, DEX_MORNING
    dexendareadata


specialareas SPECIES_SKARMORY, DEX_DAY
    dexendareadata


specialareas SPECIES_SKARMORY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SKARMORY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SKARMORY, DEX_DAY
    dexendareadata


routesandcities SPECIES_SKARMORY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SKARMORY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SKARMORY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HOUNDOUR, DEX_MORNING
    dexendareadata


specialareas SPECIES_HOUNDOUR, DEX_DAY
    dexendareadata


specialareas SPECIES_HOUNDOUR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HOUNDOUR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HOUNDOUR, DEX_DAY
    dexendareadata


routesandcities SPECIES_HOUNDOUR, DEX_NIGHT
    .word DEX_ROUTE_7
    dexendareadata


specialareas SPECIES_HOUNDOUR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HOUNDOUR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HOUNDOOM, DEX_MORNING
    dexendareadata


specialareas SPECIES_HOUNDOOM, DEX_DAY
    dexendareadata


specialareas SPECIES_HOUNDOOM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HOUNDOOM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HOUNDOOM, DEX_DAY
    dexendareadata


routesandcities SPECIES_HOUNDOOM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HOUNDOOM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HOUNDOOM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KINGDRA, DEX_MORNING
    dexendareadata


specialareas SPECIES_KINGDRA, DEX_DAY
    dexendareadata


specialareas SPECIES_KINGDRA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KINGDRA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KINGDRA, DEX_DAY
    dexendareadata


routesandcities SPECIES_KINGDRA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KINGDRA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KINGDRA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PHANPY, DEX_MORNING
    .word DEX_MT_SILVER_CAVE
    dexendareadata


specialareas SPECIES_PHANPY, DEX_DAY
    .word DEX_MT_SILVER_CAVE
    dexendareadata


specialareas SPECIES_PHANPY, DEX_NIGHT
    .word DEX_MT_SILVER_CAVE
    dexendareadata


routesandcities SPECIES_PHANPY, DEX_MORNING
    .word DEX_ROUTE_45
    dexendareadata


routesandcities SPECIES_PHANPY, DEX_DAY
    .word DEX_ROUTE_45
    dexendareadata


routesandcities SPECIES_PHANPY, DEX_NIGHT
    .word DEX_ROUTE_45
    dexendareadata


specialareas SPECIES_PHANPY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PHANPY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DONPHAN, DEX_MORNING
    .word DEX_MT_SILVER_CAVE
    .word DEX_VICTORY_ROAD
    dexendareadata


specialareas SPECIES_DONPHAN, DEX_DAY
    .word DEX_MT_SILVER_CAVE
    .word DEX_VICTORY_ROAD
    dexendareadata


specialareas SPECIES_DONPHAN, DEX_NIGHT
    .word DEX_MT_SILVER_CAVE
    .word DEX_VICTORY_ROAD
    dexendareadata


routesandcities SPECIES_DONPHAN, DEX_MORNING
    .word DEX_MT_SILVER
    .word DEX_ROUTE_28
    dexendareadata


routesandcities SPECIES_DONPHAN, DEX_DAY
    .word DEX_MT_SILVER
    .word DEX_ROUTE_28
    dexendareadata


routesandcities SPECIES_DONPHAN, DEX_NIGHT
    .word DEX_MT_SILVER
    .word DEX_ROUTE_28
    dexendareadata


specialareas SPECIES_DONPHAN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DONPHAN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PORYGON2, DEX_MORNING
    dexendareadata


specialareas SPECIES_PORYGON2, DEX_DAY
    dexendareadata


specialareas SPECIES_PORYGON2, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PORYGON2, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PORYGON2, DEX_DAY
    dexendareadata


routesandcities SPECIES_PORYGON2, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PORYGON2, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PORYGON2, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_STANTLER, DEX_MORNING
    dexendareadata


specialareas SPECIES_STANTLER, DEX_DAY
    dexendareadata


specialareas SPECIES_STANTLER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_STANTLER, DEX_MORNING
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    dexendareadata


routesandcities SPECIES_STANTLER, DEX_DAY
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    dexendareadata


routesandcities SPECIES_STANTLER, DEX_NIGHT
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    dexendareadata


specialareas SPECIES_STANTLER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_STANTLER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SMEARGLE, DEX_MORNING
    .word DEX_RUINS_OF_ALPH
    dexendareadata


specialareas SPECIES_SMEARGLE, DEX_DAY
    .word DEX_RUINS_OF_ALPH
    dexendareadata


specialareas SPECIES_SMEARGLE, DEX_NIGHT
    .word DEX_RUINS_OF_ALPH
    dexendareadata


routesandcities SPECIES_SMEARGLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SMEARGLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SMEARGLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SMEARGLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SMEARGLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TYROGUE, DEX_MORNING
    dexendareadata


specialareas SPECIES_TYROGUE, DEX_DAY
    dexendareadata


specialareas SPECIES_TYROGUE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TYROGUE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TYROGUE, DEX_DAY
    dexendareadata


routesandcities SPECIES_TYROGUE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TYROGUE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TYROGUE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HITMONTOP, DEX_MORNING
    dexendareadata


specialareas SPECIES_HITMONTOP, DEX_DAY
    dexendareadata


specialareas SPECIES_HITMONTOP, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HITMONTOP, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HITMONTOP, DEX_DAY
    dexendareadata


routesandcities SPECIES_HITMONTOP, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HITMONTOP, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HITMONTOP, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SMOOCHUM, DEX_MORNING
    dexendareadata


specialareas SPECIES_SMOOCHUM, DEX_DAY
    dexendareadata


specialareas SPECIES_SMOOCHUM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SMOOCHUM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SMOOCHUM, DEX_DAY
    dexendareadata


routesandcities SPECIES_SMOOCHUM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SMOOCHUM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SMOOCHUM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ELEKID, DEX_MORNING
    dexendareadata


specialareas SPECIES_ELEKID, DEX_DAY
    dexendareadata


specialareas SPECIES_ELEKID, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ELEKID, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ELEKID, DEX_DAY
    dexendareadata


routesandcities SPECIES_ELEKID, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ELEKID, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ELEKID, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MAGBY, DEX_MORNING
    dexendareadata


specialareas SPECIES_MAGBY, DEX_DAY
    dexendareadata


specialareas SPECIES_MAGBY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MAGBY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MAGBY, DEX_DAY
    dexendareadata


routesandcities SPECIES_MAGBY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MAGBY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MAGBY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MILTANK, DEX_MORNING
    dexendareadata


specialareas SPECIES_MILTANK, DEX_DAY
    dexendareadata


specialareas SPECIES_MILTANK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MILTANK, DEX_MORNING
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_47
    dexendareadata


routesandcities SPECIES_MILTANK, DEX_DAY
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_47
    dexendareadata


routesandcities SPECIES_MILTANK, DEX_NIGHT
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_47
    dexendareadata


specialareas SPECIES_MILTANK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MILTANK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BLISSEY, DEX_MORNING
    dexendareadata


specialareas SPECIES_BLISSEY, DEX_DAY
    dexendareadata


specialareas SPECIES_BLISSEY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BLISSEY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BLISSEY, DEX_DAY
    dexendareadata


routesandcities SPECIES_BLISSEY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BLISSEY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BLISSEY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RAIKOU, DEX_MORNING
    dexendareadata


specialareas SPECIES_RAIKOU, DEX_DAY
    dexendareadata


specialareas SPECIES_RAIKOU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RAIKOU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RAIKOU, DEX_DAY
    dexendareadata


routesandcities SPECIES_RAIKOU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RAIKOU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RAIKOU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ENTEI, DEX_MORNING
    dexendareadata


specialareas SPECIES_ENTEI, DEX_DAY
    dexendareadata


specialareas SPECIES_ENTEI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ENTEI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ENTEI, DEX_DAY
    dexendareadata


routesandcities SPECIES_ENTEI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ENTEI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ENTEI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SUICUNE, DEX_MORNING
    dexendareadata


specialareas SPECIES_SUICUNE, DEX_DAY
    dexendareadata


specialareas SPECIES_SUICUNE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SUICUNE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SUICUNE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SUICUNE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SUICUNE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SUICUNE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LARVITAR, DEX_MORNING
    .word DEX_MT_SILVER_CAVE
    dexendareadata


specialareas SPECIES_LARVITAR, DEX_DAY
    .word DEX_MT_SILVER_CAVE
    dexendareadata


specialareas SPECIES_LARVITAR, DEX_NIGHT
    .word DEX_MT_SILVER_CAVE
    dexendareadata


routesandcities SPECIES_LARVITAR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LARVITAR, DEX_DAY
    dexendareadata


routesandcities SPECIES_LARVITAR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LARVITAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LARVITAR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PUPITAR, DEX_MORNING
    .word DEX_MT_SILVER_CAVE
    dexendareadata


specialareas SPECIES_PUPITAR, DEX_DAY
    .word DEX_MT_SILVER_CAVE
    dexendareadata


specialareas SPECIES_PUPITAR, DEX_NIGHT
    .word DEX_MT_SILVER_CAVE
    dexendareadata


routesandcities SPECIES_PUPITAR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PUPITAR, DEX_DAY
    dexendareadata


routesandcities SPECIES_PUPITAR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PUPITAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PUPITAR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TYRANITAR, DEX_MORNING
    dexendareadata


specialareas SPECIES_TYRANITAR, DEX_DAY
    dexendareadata


specialareas SPECIES_TYRANITAR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TYRANITAR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TYRANITAR, DEX_DAY
    dexendareadata


routesandcities SPECIES_TYRANITAR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TYRANITAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TYRANITAR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LUGIA, DEX_MORNING
    dexendareadata


specialareas SPECIES_LUGIA, DEX_DAY
    dexendareadata


specialareas SPECIES_LUGIA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LUGIA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LUGIA, DEX_DAY
    dexendareadata


routesandcities SPECIES_LUGIA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LUGIA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LUGIA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HO_OH, DEX_MORNING
    dexendareadata


specialareas SPECIES_HO_OH, DEX_DAY
    dexendareadata


specialareas SPECIES_HO_OH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HO_OH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HO_OH, DEX_DAY
    dexendareadata


routesandcities SPECIES_HO_OH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HO_OH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HO_OH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CELEBI, DEX_MORNING
    dexendareadata


specialareas SPECIES_CELEBI, DEX_DAY
    dexendareadata


specialareas SPECIES_CELEBI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CELEBI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CELEBI, DEX_DAY
    dexendareadata


routesandcities SPECIES_CELEBI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CELEBI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CELEBI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TREECKO, DEX_MORNING
    dexendareadata


specialareas SPECIES_TREECKO, DEX_DAY
    dexendareadata


specialareas SPECIES_TREECKO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TREECKO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TREECKO, DEX_DAY
    dexendareadata


routesandcities SPECIES_TREECKO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TREECKO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TREECKO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GROVYLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_GROVYLE, DEX_DAY
    dexendareadata


specialareas SPECIES_GROVYLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GROVYLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GROVYLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_GROVYLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GROVYLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GROVYLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SCEPTILE, DEX_MORNING
    dexendareadata


specialareas SPECIES_SCEPTILE, DEX_DAY
    dexendareadata


specialareas SPECIES_SCEPTILE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SCEPTILE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SCEPTILE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SCEPTILE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SCEPTILE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SCEPTILE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TORCHIC, DEX_MORNING
    dexendareadata


specialareas SPECIES_TORCHIC, DEX_DAY
    dexendareadata


specialareas SPECIES_TORCHIC, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TORCHIC, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TORCHIC, DEX_DAY
    dexendareadata


routesandcities SPECIES_TORCHIC, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TORCHIC, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TORCHIC, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_COMBUSKEN, DEX_MORNING
    dexendareadata


specialareas SPECIES_COMBUSKEN, DEX_DAY
    dexendareadata


specialareas SPECIES_COMBUSKEN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_COMBUSKEN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_COMBUSKEN, DEX_DAY
    dexendareadata


routesandcities SPECIES_COMBUSKEN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_COMBUSKEN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_COMBUSKEN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BLAZIKEN, DEX_MORNING
    dexendareadata


specialareas SPECIES_BLAZIKEN, DEX_DAY
    dexendareadata


specialareas SPECIES_BLAZIKEN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BLAZIKEN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BLAZIKEN, DEX_DAY
    dexendareadata


routesandcities SPECIES_BLAZIKEN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BLAZIKEN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BLAZIKEN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MUDKIP, DEX_MORNING
    dexendareadata


specialareas SPECIES_MUDKIP, DEX_DAY
    dexendareadata


specialareas SPECIES_MUDKIP, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MUDKIP, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MUDKIP, DEX_DAY
    dexendareadata


routesandcities SPECIES_MUDKIP, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MUDKIP, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MUDKIP, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MARSHTOMP, DEX_MORNING
    dexendareadata


specialareas SPECIES_MARSHTOMP, DEX_DAY
    dexendareadata


specialareas SPECIES_MARSHTOMP, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MARSHTOMP, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MARSHTOMP, DEX_DAY
    dexendareadata


routesandcities SPECIES_MARSHTOMP, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MARSHTOMP, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MARSHTOMP, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SWAMPERT, DEX_MORNING
    dexendareadata


specialareas SPECIES_SWAMPERT, DEX_DAY
    dexendareadata


specialareas SPECIES_SWAMPERT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SWAMPERT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SWAMPERT, DEX_DAY
    dexendareadata


routesandcities SPECIES_SWAMPERT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SWAMPERT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SWAMPERT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_POOCHYENA, DEX_MORNING
    dexendareadata


specialareas SPECIES_POOCHYENA, DEX_DAY
    dexendareadata


specialareas SPECIES_POOCHYENA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_POOCHYENA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_POOCHYENA, DEX_DAY
    dexendareadata


routesandcities SPECIES_POOCHYENA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_POOCHYENA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_POOCHYENA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MIGHTYENA, DEX_MORNING
    dexendareadata


specialareas SPECIES_MIGHTYENA, DEX_DAY
    dexendareadata


specialareas SPECIES_MIGHTYENA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MIGHTYENA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MIGHTYENA, DEX_DAY
    dexendareadata


routesandcities SPECIES_MIGHTYENA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MIGHTYENA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MIGHTYENA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ZIGZAGOON, DEX_MORNING
    dexendareadata


specialareas SPECIES_ZIGZAGOON, DEX_DAY
    dexendareadata


specialareas SPECIES_ZIGZAGOON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ZIGZAGOON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ZIGZAGOON, DEX_DAY
    dexendareadata


routesandcities SPECIES_ZIGZAGOON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ZIGZAGOON, DEX_SPECIAL
    .word DEX_SPROUT_TOWER
    .word DEX_BURNED_TOWER
    .word DEX_BELL_TOWER
    dexendareadata


routesandcities SPECIES_ZIGZAGOON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LINOONE, DEX_MORNING
    dexendareadata


specialareas SPECIES_LINOONE, DEX_DAY
    dexendareadata


specialareas SPECIES_LINOONE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LINOONE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LINOONE, DEX_DAY
    dexendareadata


routesandcities SPECIES_LINOONE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LINOONE, DEX_SPECIAL
    .word DEX_RUINS_OF_ALPH
    dexendareadata


routesandcities SPECIES_LINOONE, DEX_SPECIAL
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_ROUTE_32
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_42
    .word DEX_ROUTE_43
    .word DEX_ROUTE_44
    .word DEX_ROUTE_45
    .word DEX_ROUTE_47
    .word DEX_MT_SILVER
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_28
    .word DEX_ROUTE_4
    .word DEX_ROUTE_6
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_13
    .word DEX_ROUTE_21
    .word DEX_ROUTE_22
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


specialareas SPECIES_WURMPLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_WURMPLE, DEX_DAY
    dexendareadata


specialareas SPECIES_WURMPLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WURMPLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WURMPLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_WURMPLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WURMPLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WURMPLE, DEX_SPECIAL
    .word DEX_ROUTE_12
    .word DEX_PALLET_TOWN
    .word DEX_VIRIDIAN_CITY
    .word DEX_FUCHSIA_CITY
    .word DEX_ROUTE_1
    .word DEX_ROUTE_2
    .word DEX_ROUTE_3
    .word DEX_ROUTE_4
    .word DEX_ROUTE_13
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    .word DEX_ROUTE_18
    .word DEX_ROUTE_21
    .word DEX_ROUTE_22
    .word DEX_ROUTE_2_2
    .word DEX_PEWTER_CITY
    dexendareadata


specialareas SPECIES_SILCOON, DEX_MORNING
    dexendareadata


specialareas SPECIES_SILCOON, DEX_DAY
    dexendareadata


specialareas SPECIES_SILCOON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SILCOON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SILCOON, DEX_DAY
    dexendareadata


routesandcities SPECIES_SILCOON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SILCOON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SILCOON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BEAUTIFLY, DEX_MORNING
    dexendareadata


specialareas SPECIES_BEAUTIFLY, DEX_DAY
    dexendareadata


specialareas SPECIES_BEAUTIFLY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BEAUTIFLY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BEAUTIFLY, DEX_DAY
    dexendareadata


routesandcities SPECIES_BEAUTIFLY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BEAUTIFLY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BEAUTIFLY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CASCOON, DEX_MORNING
    dexendareadata


specialareas SPECIES_CASCOON, DEX_DAY
    dexendareadata


specialareas SPECIES_CASCOON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CASCOON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CASCOON, DEX_DAY
    dexendareadata


routesandcities SPECIES_CASCOON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CASCOON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CASCOON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DUSTOX, DEX_MORNING
    dexendareadata


specialareas SPECIES_DUSTOX, DEX_DAY
    dexendareadata


specialareas SPECIES_DUSTOX, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DUSTOX, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DUSTOX, DEX_DAY
    dexendareadata


routesandcities SPECIES_DUSTOX, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DUSTOX, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DUSTOX, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LOTAD, DEX_MORNING
    dexendareadata


specialareas SPECIES_LOTAD, DEX_DAY
    dexendareadata


specialareas SPECIES_LOTAD, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LOTAD, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LOTAD, DEX_DAY
    dexendareadata


routesandcities SPECIES_LOTAD, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LOTAD, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LOTAD, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LOMBRE, DEX_MORNING
    dexendareadata


specialareas SPECIES_LOMBRE, DEX_DAY
    dexendareadata


specialareas SPECIES_LOMBRE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LOMBRE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LOMBRE, DEX_DAY
    dexendareadata


routesandcities SPECIES_LOMBRE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LOMBRE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LOMBRE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LUDICOLO, DEX_MORNING
    dexendareadata


specialareas SPECIES_LUDICOLO, DEX_DAY
    dexendareadata


specialareas SPECIES_LUDICOLO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LUDICOLO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LUDICOLO, DEX_DAY
    dexendareadata


routesandcities SPECIES_LUDICOLO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LUDICOLO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LUDICOLO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SEEDOT, DEX_MORNING
    dexendareadata


specialareas SPECIES_SEEDOT, DEX_DAY
    dexendareadata


specialareas SPECIES_SEEDOT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SEEDOT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SEEDOT, DEX_DAY
    dexendareadata


routesandcities SPECIES_SEEDOT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SEEDOT, DEX_SPECIAL
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


routesandcities SPECIES_SEEDOT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NUZLEAF, DEX_MORNING
    dexendareadata


specialareas SPECIES_NUZLEAF, DEX_DAY
    dexendareadata


specialareas SPECIES_NUZLEAF, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NUZLEAF, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NUZLEAF, DEX_DAY
    dexendareadata


routesandcities SPECIES_NUZLEAF, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NUZLEAF, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NUZLEAF, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SHIFTRY, DEX_MORNING
    dexendareadata


specialareas SPECIES_SHIFTRY, DEX_DAY
    dexendareadata


specialareas SPECIES_SHIFTRY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SHIFTRY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SHIFTRY, DEX_DAY
    dexendareadata


routesandcities SPECIES_SHIFTRY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SHIFTRY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SHIFTRY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TAILLOW, DEX_MORNING
    dexendareadata


specialareas SPECIES_TAILLOW, DEX_DAY
    dexendareadata


specialareas SPECIES_TAILLOW, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TAILLOW, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TAILLOW, DEX_DAY
    dexendareadata


routesandcities SPECIES_TAILLOW, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TAILLOW, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TAILLOW, DEX_SPECIAL
    .word DEX_CHERRYGROVE_CITY
    dexendareadata


specialareas SPECIES_SWELLOW, DEX_MORNING
    dexendareadata


specialareas SPECIES_SWELLOW, DEX_DAY
    dexendareadata


specialareas SPECIES_SWELLOW, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SWELLOW, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SWELLOW, DEX_DAY
    dexendareadata


routesandcities SPECIES_SWELLOW, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SWELLOW, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SWELLOW, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WINGULL, DEX_MORNING
    dexendareadata


specialareas SPECIES_WINGULL, DEX_DAY
    dexendareadata


specialareas SPECIES_WINGULL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WINGULL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WINGULL, DEX_DAY
    dexendareadata


routesandcities SPECIES_WINGULL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WINGULL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WINGULL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PELIPPER, DEX_MORNING
    dexendareadata


specialareas SPECIES_PELIPPER, DEX_DAY
    dexendareadata


specialareas SPECIES_PELIPPER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PELIPPER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PELIPPER, DEX_DAY
    dexendareadata


routesandcities SPECIES_PELIPPER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PELIPPER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PELIPPER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RALTS, DEX_MORNING
    dexendareadata


specialareas SPECIES_RALTS, DEX_DAY
    dexendareadata


specialareas SPECIES_RALTS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RALTS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RALTS, DEX_DAY
    dexendareadata


routesandcities SPECIES_RALTS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RALTS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RALTS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KIRLIA, DEX_MORNING
    dexendareadata


specialareas SPECIES_KIRLIA, DEX_DAY
    dexendareadata


specialareas SPECIES_KIRLIA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KIRLIA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KIRLIA, DEX_DAY
    dexendareadata


routesandcities SPECIES_KIRLIA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KIRLIA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KIRLIA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GARDEVOIR, DEX_MORNING
    dexendareadata


specialareas SPECIES_GARDEVOIR, DEX_DAY
    dexendareadata


specialareas SPECIES_GARDEVOIR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GARDEVOIR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GARDEVOIR, DEX_DAY
    dexendareadata


routesandcities SPECIES_GARDEVOIR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GARDEVOIR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GARDEVOIR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SURSKIT, DEX_MORNING
    dexendareadata


specialareas SPECIES_SURSKIT, DEX_DAY
    dexendareadata


specialareas SPECIES_SURSKIT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SURSKIT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SURSKIT, DEX_DAY
    dexendareadata


routesandcities SPECIES_SURSKIT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SURSKIT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SURSKIT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MASQUERAIN, DEX_MORNING
    dexendareadata


specialareas SPECIES_MASQUERAIN, DEX_DAY
    dexendareadata


specialareas SPECIES_MASQUERAIN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MASQUERAIN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MASQUERAIN, DEX_DAY
    dexendareadata


routesandcities SPECIES_MASQUERAIN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MASQUERAIN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MASQUERAIN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SHROOMISH, DEX_MORNING
    dexendareadata


specialareas SPECIES_SHROOMISH, DEX_DAY
    dexendareadata


specialareas SPECIES_SHROOMISH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SHROOMISH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SHROOMISH, DEX_DAY
    dexendareadata


routesandcities SPECIES_SHROOMISH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SHROOMISH, DEX_SPECIAL
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


routesandcities SPECIES_SHROOMISH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BRELOOM, DEX_MORNING
    dexendareadata


specialareas SPECIES_BRELOOM, DEX_DAY
    dexendareadata


specialareas SPECIES_BRELOOM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BRELOOM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BRELOOM, DEX_DAY
    dexendareadata


routesandcities SPECIES_BRELOOM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BRELOOM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BRELOOM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SLAKOTH, DEX_MORNING
    dexendareadata


specialareas SPECIES_SLAKOTH, DEX_DAY
    dexendareadata


specialareas SPECIES_SLAKOTH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SLAKOTH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SLAKOTH, DEX_DAY
    dexendareadata


routesandcities SPECIES_SLAKOTH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SLAKOTH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SLAKOTH, DEX_SPECIAL
    .word DEX_ROUTE_25
    dexendareadata


specialareas SPECIES_VIGOROTH, DEX_MORNING
    dexendareadata


specialareas SPECIES_VIGOROTH, DEX_DAY
    dexendareadata


specialareas SPECIES_VIGOROTH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VIGOROTH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VIGOROTH, DEX_DAY
    dexendareadata


routesandcities SPECIES_VIGOROTH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VIGOROTH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VIGOROTH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SLAKING, DEX_MORNING
    dexendareadata


specialareas SPECIES_SLAKING, DEX_DAY
    dexendareadata


specialareas SPECIES_SLAKING, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SLAKING, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SLAKING, DEX_DAY
    dexendareadata


routesandcities SPECIES_SLAKING, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SLAKING, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SLAKING, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NINCADA, DEX_MORNING
    dexendareadata


specialareas SPECIES_NINCADA, DEX_DAY
    dexendareadata


specialareas SPECIES_NINCADA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NINCADA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NINCADA, DEX_DAY
    dexendareadata


routesandcities SPECIES_NINCADA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NINCADA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NINCADA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NINJASK, DEX_MORNING
    dexendareadata


specialareas SPECIES_NINJASK, DEX_DAY
    dexendareadata


specialareas SPECIES_NINJASK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NINJASK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NINJASK, DEX_DAY
    dexendareadata


routesandcities SPECIES_NINJASK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NINJASK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NINJASK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SHEDINJA, DEX_MORNING
    dexendareadata


specialareas SPECIES_SHEDINJA, DEX_DAY
    dexendareadata


specialareas SPECIES_SHEDINJA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SHEDINJA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SHEDINJA, DEX_DAY
    dexendareadata


routesandcities SPECIES_SHEDINJA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SHEDINJA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SHEDINJA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WHISMUR, DEX_MORNING
    dexendareadata


specialareas SPECIES_WHISMUR, DEX_DAY
    dexendareadata


specialareas SPECIES_WHISMUR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WHISMUR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WHISMUR, DEX_DAY
    dexendareadata


routesandcities SPECIES_WHISMUR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WHISMUR, DEX_SPECIAL
    .word DEX_RUINS_OF_ALPH
    dexendareadata


routesandcities SPECIES_WHISMUR, DEX_SPECIAL
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_ROUTE_32
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_42
    .word DEX_ROUTE_43
    .word DEX_ROUTE_44
    .word DEX_ROUTE_45
    .word DEX_ROUTE_47
    .word DEX_MT_SILVER
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_28
    .word DEX_ROUTE_4
    .word DEX_ROUTE_6
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_13
    .word DEX_ROUTE_21
    .word DEX_ROUTE_22
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


specialareas SPECIES_LOUDRED, DEX_MORNING
    dexendareadata


specialareas SPECIES_LOUDRED, DEX_DAY
    dexendareadata


specialareas SPECIES_LOUDRED, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LOUDRED, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LOUDRED, DEX_DAY
    dexendareadata


routesandcities SPECIES_LOUDRED, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LOUDRED, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LOUDRED, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_EXPLOUD, DEX_MORNING
    dexendareadata


specialareas SPECIES_EXPLOUD, DEX_DAY
    dexendareadata


specialareas SPECIES_EXPLOUD, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_EXPLOUD, DEX_MORNING
    dexendareadata


routesandcities SPECIES_EXPLOUD, DEX_DAY
    dexendareadata


routesandcities SPECIES_EXPLOUD, DEX_NIGHT
    dexendareadata


specialareas SPECIES_EXPLOUD, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_EXPLOUD, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MAKUHITA, DEX_MORNING
    dexendareadata


specialareas SPECIES_MAKUHITA, DEX_DAY
    dexendareadata


specialareas SPECIES_MAKUHITA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MAKUHITA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MAKUHITA, DEX_DAY
    dexendareadata


routesandcities SPECIES_MAKUHITA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MAKUHITA, DEX_SPECIAL
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_WHIRL_ISLANDS
    .word DEX_MT_MORTAR
    .word DEX_ICE_PATH
    .word DEX_DARK_CAVE
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_CAVE
    .word DEX_MT_MOON
    .word DEX_ROCK_TUNNEL
    .word DEX_VICTORY_ROAD
    .word DEX_TOHJO_FALLS
    .word DEX_DIGLETTS_CAVE
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_MAKUHITA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HARIYAMA, DEX_MORNING
    dexendareadata


specialareas SPECIES_HARIYAMA, DEX_DAY
    dexendareadata


specialareas SPECIES_HARIYAMA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HARIYAMA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HARIYAMA, DEX_DAY
    dexendareadata


routesandcities SPECIES_HARIYAMA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HARIYAMA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HARIYAMA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_AZURILL, DEX_MORNING
    dexendareadata


specialareas SPECIES_AZURILL, DEX_DAY
    dexendareadata


specialareas SPECIES_AZURILL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_AZURILL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_AZURILL, DEX_DAY
    dexendareadata


routesandcities SPECIES_AZURILL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_AZURILL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_AZURILL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NOSEPASS, DEX_MORNING
    dexendareadata


specialareas SPECIES_NOSEPASS, DEX_DAY
    dexendareadata


specialareas SPECIES_NOSEPASS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NOSEPASS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NOSEPASS, DEX_DAY
    dexendareadata


routesandcities SPECIES_NOSEPASS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NOSEPASS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NOSEPASS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SKITTY, DEX_MORNING
    dexendareadata


specialareas SPECIES_SKITTY, DEX_DAY
    dexendareadata


specialareas SPECIES_SKITTY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SKITTY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SKITTY, DEX_DAY
    dexendareadata


routesandcities SPECIES_SKITTY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SKITTY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SKITTY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DELCATTY, DEX_MORNING
    dexendareadata


specialareas SPECIES_DELCATTY, DEX_DAY
    dexendareadata


specialareas SPECIES_DELCATTY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DELCATTY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DELCATTY, DEX_DAY
    dexendareadata


routesandcities SPECIES_DELCATTY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DELCATTY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DELCATTY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SABLEYE, DEX_MORNING
    dexendareadata


specialareas SPECIES_SABLEYE, DEX_DAY
    dexendareadata


specialareas SPECIES_SABLEYE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SABLEYE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SABLEYE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SABLEYE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SABLEYE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SABLEYE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MAWILE, DEX_MORNING
    dexendareadata


specialareas SPECIES_MAWILE, DEX_DAY
    dexendareadata


specialareas SPECIES_MAWILE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MAWILE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MAWILE, DEX_DAY
    dexendareadata


routesandcities SPECIES_MAWILE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MAWILE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MAWILE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ARON, DEX_MORNING
    dexendareadata


specialareas SPECIES_ARON, DEX_DAY
    dexendareadata


specialareas SPECIES_ARON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ARON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ARON, DEX_DAY
    dexendareadata


routesandcities SPECIES_ARON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ARON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ARON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LAIRON, DEX_MORNING
    dexendareadata


specialareas SPECIES_LAIRON, DEX_DAY
    dexendareadata


specialareas SPECIES_LAIRON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LAIRON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LAIRON, DEX_DAY
    dexendareadata


routesandcities SPECIES_LAIRON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LAIRON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LAIRON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_AGGRON, DEX_MORNING
    dexendareadata


specialareas SPECIES_AGGRON, DEX_DAY
    dexendareadata


specialareas SPECIES_AGGRON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_AGGRON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_AGGRON, DEX_DAY
    dexendareadata


routesandcities SPECIES_AGGRON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_AGGRON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_AGGRON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MEDITITE, DEX_MORNING
    dexendareadata


specialareas SPECIES_MEDITITE, DEX_DAY
    dexendareadata


specialareas SPECIES_MEDITITE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MEDITITE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MEDITITE, DEX_DAY
    dexendareadata


routesandcities SPECIES_MEDITITE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MEDITITE, DEX_SPECIAL
    .word DEX_SPROUT_TOWER
    .word DEX_BURNED_TOWER
    .word DEX_BELL_TOWER
    dexendareadata


routesandcities SPECIES_MEDITITE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MEDICHAM, DEX_MORNING
    dexendareadata


specialareas SPECIES_MEDICHAM, DEX_DAY
    dexendareadata


specialareas SPECIES_MEDICHAM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MEDICHAM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MEDICHAM, DEX_DAY
    dexendareadata


routesandcities SPECIES_MEDICHAM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MEDICHAM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MEDICHAM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ELECTRIKE, DEX_MORNING
    dexendareadata


specialareas SPECIES_ELECTRIKE, DEX_DAY
    dexendareadata


specialareas SPECIES_ELECTRIKE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ELECTRIKE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ELECTRIKE, DEX_DAY
    dexendareadata


routesandcities SPECIES_ELECTRIKE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ELECTRIKE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ELECTRIKE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MANECTRIC, DEX_MORNING
    dexendareadata


specialareas SPECIES_MANECTRIC, DEX_DAY
    dexendareadata


specialareas SPECIES_MANECTRIC, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MANECTRIC, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MANECTRIC, DEX_DAY
    dexendareadata


routesandcities SPECIES_MANECTRIC, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MANECTRIC, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MANECTRIC, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PLUSLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_PLUSLE, DEX_DAY
    dexendareadata


specialareas SPECIES_PLUSLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PLUSLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PLUSLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_PLUSLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PLUSLE, DEX_SPECIAL
    .word DEX_NATIONAL_PARK
    dexendareadata


routesandcities SPECIES_PLUSLE, DEX_SPECIAL
    .word DEX_ROUTE_29
    .word DEX_ROUTE_33
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_46
    .word DEX_ROUTE_48
    .word DEX_ROUTE_1
    .word DEX_ROUTE_2
    .word DEX_ROUTE_3
    .word DEX_ROUTE_5
    .word DEX_ROUTE_7
    .word DEX_ROUTE_8
    .word DEX_ROUTE_11
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    .word DEX_ROUTE_16
    .word DEX_ROUTE_17
    .word DEX_ROUTE_18
    .word DEX_ROUTE_2_2
    dexendareadata


specialareas SPECIES_MINUN, DEX_MORNING
    dexendareadata


specialareas SPECIES_MINUN, DEX_DAY
    dexendareadata


specialareas SPECIES_MINUN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MINUN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MINUN, DEX_DAY
    dexendareadata


routesandcities SPECIES_MINUN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MINUN, DEX_SPECIAL
    .word DEX_NATIONAL_PARK
    dexendareadata


routesandcities SPECIES_MINUN, DEX_SPECIAL
    .word DEX_ROUTE_29
    .word DEX_ROUTE_33
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_46
    .word DEX_ROUTE_48
    .word DEX_ROUTE_1
    .word DEX_ROUTE_2
    .word DEX_ROUTE_3
    .word DEX_ROUTE_5
    .word DEX_ROUTE_7
    .word DEX_ROUTE_8
    .word DEX_ROUTE_11
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    .word DEX_ROUTE_16
    .word DEX_ROUTE_17
    .word DEX_ROUTE_18
    .word DEX_ROUTE_2_2
    dexendareadata


specialareas SPECIES_VOLBEAT, DEX_MORNING
    dexendareadata


specialareas SPECIES_VOLBEAT, DEX_DAY
    dexendareadata


specialareas SPECIES_VOLBEAT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VOLBEAT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VOLBEAT, DEX_DAY
    dexendareadata


routesandcities SPECIES_VOLBEAT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VOLBEAT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VOLBEAT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ILLUMISE, DEX_MORNING
    dexendareadata


specialareas SPECIES_ILLUMISE, DEX_DAY
    dexendareadata


specialareas SPECIES_ILLUMISE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ILLUMISE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ILLUMISE, DEX_DAY
    dexendareadata


routesandcities SPECIES_ILLUMISE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ILLUMISE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ILLUMISE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ROSELIA, DEX_MORNING
    dexendareadata


specialareas SPECIES_ROSELIA, DEX_DAY
    dexendareadata


specialareas SPECIES_ROSELIA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ROSELIA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ROSELIA, DEX_DAY
    dexendareadata


routesandcities SPECIES_ROSELIA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ROSELIA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ROSELIA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GULPIN, DEX_MORNING
    dexendareadata


specialareas SPECIES_GULPIN, DEX_DAY
    dexendareadata


specialareas SPECIES_GULPIN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GULPIN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GULPIN, DEX_DAY
    dexendareadata


routesandcities SPECIES_GULPIN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GULPIN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GULPIN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SWALOT, DEX_MORNING
    dexendareadata


specialareas SPECIES_SWALOT, DEX_DAY
    dexendareadata


specialareas SPECIES_SWALOT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SWALOT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SWALOT, DEX_DAY
    dexendareadata


routesandcities SPECIES_SWALOT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SWALOT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SWALOT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CARVANHA, DEX_MORNING
    dexendareadata


specialareas SPECIES_CARVANHA, DEX_DAY
    dexendareadata


specialareas SPECIES_CARVANHA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CARVANHA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CARVANHA, DEX_DAY
    dexendareadata


routesandcities SPECIES_CARVANHA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CARVANHA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CARVANHA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SHARPEDO, DEX_MORNING
    dexendareadata


specialareas SPECIES_SHARPEDO, DEX_DAY
    dexendareadata


specialareas SPECIES_SHARPEDO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SHARPEDO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SHARPEDO, DEX_DAY
    dexendareadata


routesandcities SPECIES_SHARPEDO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SHARPEDO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SHARPEDO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WAILMER, DEX_MORNING
    dexendareadata


specialareas SPECIES_WAILMER, DEX_DAY
    dexendareadata


specialareas SPECIES_WAILMER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WAILMER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WAILMER, DEX_DAY
    dexendareadata


routesandcities SPECIES_WAILMER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WAILMER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WAILMER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WAILORD, DEX_MORNING
    dexendareadata


specialareas SPECIES_WAILORD, DEX_DAY
    dexendareadata


specialareas SPECIES_WAILORD, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WAILORD, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WAILORD, DEX_DAY
    dexendareadata


routesandcities SPECIES_WAILORD, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WAILORD, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WAILORD, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NUMEL, DEX_MORNING
    dexendareadata


specialareas SPECIES_NUMEL, DEX_DAY
    dexendareadata


specialareas SPECIES_NUMEL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NUMEL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NUMEL, DEX_DAY
    dexendareadata


routesandcities SPECIES_NUMEL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NUMEL, DEX_SPECIAL
    .word DEX_ILEX_FOREST
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


routesandcities SPECIES_NUMEL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CAMERUPT, DEX_MORNING
    dexendareadata


specialareas SPECIES_CAMERUPT, DEX_DAY
    dexendareadata


specialareas SPECIES_CAMERUPT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CAMERUPT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CAMERUPT, DEX_DAY
    dexendareadata


routesandcities SPECIES_CAMERUPT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CAMERUPT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CAMERUPT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TORKOAL, DEX_MORNING
    dexendareadata


specialareas SPECIES_TORKOAL, DEX_DAY
    dexendareadata


specialareas SPECIES_TORKOAL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TORKOAL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TORKOAL, DEX_DAY
    dexendareadata


routesandcities SPECIES_TORKOAL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TORKOAL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TORKOAL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SPOINK, DEX_MORNING
    dexendareadata


specialareas SPECIES_SPOINK, DEX_DAY
    dexendareadata


specialareas SPECIES_SPOINK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SPOINK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SPOINK, DEX_DAY
    dexendareadata


routesandcities SPECIES_SPOINK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SPOINK, DEX_SPECIAL
    .word DEX_ILEX_FOREST
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


routesandcities SPECIES_SPOINK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GRUMPIG, DEX_MORNING
    dexendareadata


specialareas SPECIES_GRUMPIG, DEX_DAY
    dexendareadata


specialareas SPECIES_GRUMPIG, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GRUMPIG, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GRUMPIG, DEX_DAY
    dexendareadata


routesandcities SPECIES_GRUMPIG, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GRUMPIG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GRUMPIG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SPINDA, DEX_MORNING
    dexendareadata


specialareas SPECIES_SPINDA, DEX_DAY
    dexendareadata


specialareas SPECIES_SPINDA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SPINDA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SPINDA, DEX_DAY
    dexendareadata


routesandcities SPECIES_SPINDA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SPINDA, DEX_SPECIAL
    .word DEX_SPROUT_TOWER
    .word DEX_BURNED_TOWER
    .word DEX_BELL_TOWER
    dexendareadata


routesandcities SPECIES_SPINDA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TRAPINCH, DEX_MORNING
    dexendareadata


specialareas SPECIES_TRAPINCH, DEX_DAY
    dexendareadata


specialareas SPECIES_TRAPINCH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TRAPINCH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TRAPINCH, DEX_DAY
    dexendareadata


routesandcities SPECIES_TRAPINCH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TRAPINCH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TRAPINCH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VIBRAVA, DEX_MORNING
    dexendareadata


specialareas SPECIES_VIBRAVA, DEX_DAY
    dexendareadata


specialareas SPECIES_VIBRAVA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VIBRAVA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VIBRAVA, DEX_DAY
    dexendareadata


routesandcities SPECIES_VIBRAVA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VIBRAVA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VIBRAVA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FLYGON, DEX_MORNING
    dexendareadata


specialareas SPECIES_FLYGON, DEX_DAY
    dexendareadata


specialareas SPECIES_FLYGON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FLYGON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FLYGON, DEX_DAY
    dexendareadata


routesandcities SPECIES_FLYGON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FLYGON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FLYGON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CACNEA, DEX_MORNING
    dexendareadata


specialareas SPECIES_CACNEA, DEX_DAY
    dexendareadata


specialareas SPECIES_CACNEA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CACNEA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CACNEA, DEX_DAY
    dexendareadata


routesandcities SPECIES_CACNEA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CACNEA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CACNEA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CACTURNE, DEX_MORNING
    dexendareadata


specialareas SPECIES_CACTURNE, DEX_DAY
    dexendareadata


specialareas SPECIES_CACTURNE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CACTURNE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CACTURNE, DEX_DAY
    dexendareadata


routesandcities SPECIES_CACTURNE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CACTURNE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CACTURNE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SWABLU, DEX_MORNING
    dexendareadata


specialareas SPECIES_SWABLU, DEX_DAY
    dexendareadata


specialareas SPECIES_SWABLU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SWABLU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SWABLU, DEX_DAY
    dexendareadata


routesandcities SPECIES_SWABLU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SWABLU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SWABLU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ALTARIA, DEX_MORNING
    dexendareadata


specialareas SPECIES_ALTARIA, DEX_DAY
    dexendareadata


specialareas SPECIES_ALTARIA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ALTARIA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ALTARIA, DEX_DAY
    dexendareadata


routesandcities SPECIES_ALTARIA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ALTARIA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ALTARIA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ZANGOOSE, DEX_MORNING
    dexendareadata


specialareas SPECIES_ZANGOOSE, DEX_DAY
    dexendareadata


specialareas SPECIES_ZANGOOSE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ZANGOOSE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ZANGOOSE, DEX_DAY
    dexendareadata


routesandcities SPECIES_ZANGOOSE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ZANGOOSE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ZANGOOSE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SEVIPER, DEX_MORNING
    dexendareadata


specialareas SPECIES_SEVIPER, DEX_DAY
    dexendareadata


specialareas SPECIES_SEVIPER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SEVIPER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SEVIPER, DEX_DAY
    dexendareadata


routesandcities SPECIES_SEVIPER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SEVIPER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SEVIPER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LUNATONE, DEX_MORNING
    dexendareadata


specialareas SPECIES_LUNATONE, DEX_DAY
    dexendareadata


specialareas SPECIES_LUNATONE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LUNATONE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LUNATONE, DEX_DAY
    dexendareadata


routesandcities SPECIES_LUNATONE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LUNATONE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LUNATONE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SOLROCK, DEX_MORNING
    dexendareadata


specialareas SPECIES_SOLROCK, DEX_DAY
    dexendareadata


specialareas SPECIES_SOLROCK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SOLROCK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SOLROCK, DEX_DAY
    dexendareadata


routesandcities SPECIES_SOLROCK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SOLROCK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SOLROCK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BARBOACH, DEX_MORNING
    dexendareadata


specialareas SPECIES_BARBOACH, DEX_DAY
    dexendareadata


specialareas SPECIES_BARBOACH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BARBOACH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BARBOACH, DEX_DAY
    dexendareadata


routesandcities SPECIES_BARBOACH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BARBOACH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BARBOACH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WHISCASH, DEX_MORNING
    dexendareadata


specialareas SPECIES_WHISCASH, DEX_DAY
    dexendareadata


specialareas SPECIES_WHISCASH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WHISCASH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WHISCASH, DEX_DAY
    dexendareadata


routesandcities SPECIES_WHISCASH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WHISCASH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WHISCASH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CORPHISH, DEX_MORNING
    dexendareadata


specialareas SPECIES_CORPHISH, DEX_DAY
    dexendareadata


specialareas SPECIES_CORPHISH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CORPHISH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CORPHISH, DEX_DAY
    dexendareadata


routesandcities SPECIES_CORPHISH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CORPHISH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CORPHISH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CRAWDAUNT, DEX_MORNING
    dexendareadata


specialareas SPECIES_CRAWDAUNT, DEX_DAY
    dexendareadata


specialareas SPECIES_CRAWDAUNT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CRAWDAUNT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CRAWDAUNT, DEX_DAY
    dexendareadata


routesandcities SPECIES_CRAWDAUNT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CRAWDAUNT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CRAWDAUNT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BALTOY, DEX_MORNING
    dexendareadata


specialareas SPECIES_BALTOY, DEX_DAY
    dexendareadata


specialareas SPECIES_BALTOY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BALTOY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BALTOY, DEX_DAY
    dexendareadata


routesandcities SPECIES_BALTOY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BALTOY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BALTOY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CLAYDOL, DEX_MORNING
    dexendareadata


specialareas SPECIES_CLAYDOL, DEX_DAY
    dexendareadata


specialareas SPECIES_CLAYDOL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CLAYDOL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CLAYDOL, DEX_DAY
    dexendareadata


routesandcities SPECIES_CLAYDOL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CLAYDOL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CLAYDOL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LILEEP, DEX_MORNING
    dexendareadata


specialareas SPECIES_LILEEP, DEX_DAY
    dexendareadata


specialareas SPECIES_LILEEP, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LILEEP, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LILEEP, DEX_DAY
    dexendareadata


routesandcities SPECIES_LILEEP, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LILEEP, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LILEEP, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CRADILY, DEX_MORNING
    dexendareadata


specialareas SPECIES_CRADILY, DEX_DAY
    dexendareadata


specialareas SPECIES_CRADILY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CRADILY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CRADILY, DEX_DAY
    dexendareadata


routesandcities SPECIES_CRADILY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CRADILY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CRADILY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ANORITH, DEX_MORNING
    dexendareadata


specialareas SPECIES_ANORITH, DEX_DAY
    dexendareadata


specialareas SPECIES_ANORITH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ANORITH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ANORITH, DEX_DAY
    dexendareadata


routesandcities SPECIES_ANORITH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ANORITH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ANORITH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ARMALDO, DEX_MORNING
    dexendareadata


specialareas SPECIES_ARMALDO, DEX_DAY
    dexendareadata


specialareas SPECIES_ARMALDO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ARMALDO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ARMALDO, DEX_DAY
    dexendareadata


routesandcities SPECIES_ARMALDO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ARMALDO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ARMALDO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FEEBAS, DEX_MORNING
    dexendareadata


specialareas SPECIES_FEEBAS, DEX_DAY
    dexendareadata


specialareas SPECIES_FEEBAS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FEEBAS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FEEBAS, DEX_DAY
    dexendareadata


routesandcities SPECIES_FEEBAS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FEEBAS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FEEBAS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MILOTIC, DEX_MORNING
    dexendareadata


specialareas SPECIES_MILOTIC, DEX_DAY
    dexendareadata


specialareas SPECIES_MILOTIC, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MILOTIC, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MILOTIC, DEX_DAY
    dexendareadata


routesandcities SPECIES_MILOTIC, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MILOTIC, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MILOTIC, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CASTFORM, DEX_MORNING
    dexendareadata


specialareas SPECIES_CASTFORM, DEX_DAY
    dexendareadata


specialareas SPECIES_CASTFORM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CASTFORM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CASTFORM, DEX_DAY
    dexendareadata


routesandcities SPECIES_CASTFORM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CASTFORM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CASTFORM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KECLEON, DEX_MORNING
    dexendareadata


specialareas SPECIES_KECLEON, DEX_DAY
    dexendareadata


specialareas SPECIES_KECLEON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KECLEON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KECLEON, DEX_DAY
    dexendareadata


routesandcities SPECIES_KECLEON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KECLEON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KECLEON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SHUPPET, DEX_MORNING
    dexendareadata


specialareas SPECIES_SHUPPET, DEX_DAY
    dexendareadata


specialareas SPECIES_SHUPPET, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SHUPPET, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SHUPPET, DEX_DAY
    dexendareadata


routesandcities SPECIES_SHUPPET, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SHUPPET, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SHUPPET, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BANETTE, DEX_MORNING
    dexendareadata


specialareas SPECIES_BANETTE, DEX_DAY
    dexendareadata


specialareas SPECIES_BANETTE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BANETTE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BANETTE, DEX_DAY
    dexendareadata


routesandcities SPECIES_BANETTE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BANETTE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BANETTE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DUSKULL, DEX_MORNING
    dexendareadata


specialareas SPECIES_DUSKULL, DEX_DAY
    dexendareadata


specialareas SPECIES_DUSKULL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DUSKULL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DUSKULL, DEX_DAY
    dexendareadata


routesandcities SPECIES_DUSKULL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DUSKULL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DUSKULL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DUSCLOPS, DEX_MORNING
    dexendareadata


specialareas SPECIES_DUSCLOPS, DEX_DAY
    dexendareadata


specialareas SPECIES_DUSCLOPS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DUSCLOPS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DUSCLOPS, DEX_DAY
    dexendareadata


routesandcities SPECIES_DUSCLOPS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DUSCLOPS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DUSCLOPS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TROPIUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_TROPIUS, DEX_DAY
    dexendareadata


specialareas SPECIES_TROPIUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TROPIUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TROPIUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_TROPIUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TROPIUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TROPIUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHIMECHO, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHIMECHO, DEX_DAY
    dexendareadata


specialareas SPECIES_CHIMECHO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHIMECHO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHIMECHO, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHIMECHO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHIMECHO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CHIMECHO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ABSOL, DEX_MORNING
    dexendareadata


specialareas SPECIES_ABSOL, DEX_DAY
    dexendareadata


specialareas SPECIES_ABSOL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ABSOL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ABSOL, DEX_DAY
    dexendareadata


routesandcities SPECIES_ABSOL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ABSOL, DEX_SPECIAL
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_WHIRL_ISLANDS
    .word DEX_MT_MORTAR
    .word DEX_ICE_PATH
    .word DEX_DARK_CAVE
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_CAVE
    .word DEX_MT_MOON
    .word DEX_ROCK_TUNNEL
    .word DEX_VICTORY_ROAD
    .word DEX_TOHJO_FALLS
    .word DEX_DIGLETTS_CAVE
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_ABSOL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WYNAUT, DEX_MORNING
    dexendareadata


specialareas SPECIES_WYNAUT, DEX_DAY
    dexendareadata


specialareas SPECIES_WYNAUT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WYNAUT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WYNAUT, DEX_DAY
    dexendareadata


routesandcities SPECIES_WYNAUT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WYNAUT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WYNAUT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SNORUNT, DEX_MORNING
    dexendareadata


specialareas SPECIES_SNORUNT, DEX_DAY
    dexendareadata


specialareas SPECIES_SNORUNT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SNORUNT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SNORUNT, DEX_DAY
    dexendareadata


routesandcities SPECIES_SNORUNT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SNORUNT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SNORUNT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GLALIE, DEX_MORNING
    dexendareadata


specialareas SPECIES_GLALIE, DEX_DAY
    dexendareadata


specialareas SPECIES_GLALIE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GLALIE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GLALIE, DEX_DAY
    dexendareadata


routesandcities SPECIES_GLALIE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GLALIE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GLALIE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SPHEAL, DEX_MORNING
    dexendareadata


specialareas SPECIES_SPHEAL, DEX_DAY
    dexendareadata


specialareas SPECIES_SPHEAL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SPHEAL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SPHEAL, DEX_DAY
    dexendareadata


routesandcities SPECIES_SPHEAL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SPHEAL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SPHEAL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SEALEO, DEX_MORNING
    dexendareadata


specialareas SPECIES_SEALEO, DEX_DAY
    dexendareadata


specialareas SPECIES_SEALEO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SEALEO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SEALEO, DEX_DAY
    dexendareadata


routesandcities SPECIES_SEALEO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SEALEO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SEALEO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WALREIN, DEX_MORNING
    dexendareadata


specialareas SPECIES_WALREIN, DEX_DAY
    dexendareadata


specialareas SPECIES_WALREIN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WALREIN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WALREIN, DEX_DAY
    dexendareadata


routesandcities SPECIES_WALREIN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WALREIN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WALREIN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CLAMPERL, DEX_MORNING
    dexendareadata


specialareas SPECIES_CLAMPERL, DEX_DAY
    dexendareadata


specialareas SPECIES_CLAMPERL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CLAMPERL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CLAMPERL, DEX_DAY
    dexendareadata


routesandcities SPECIES_CLAMPERL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CLAMPERL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CLAMPERL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HUNTAIL, DEX_MORNING
    dexendareadata


specialareas SPECIES_HUNTAIL, DEX_DAY
    dexendareadata


specialareas SPECIES_HUNTAIL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HUNTAIL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HUNTAIL, DEX_DAY
    dexendareadata


routesandcities SPECIES_HUNTAIL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HUNTAIL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HUNTAIL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GOREBYSS, DEX_MORNING
    dexendareadata


specialareas SPECIES_GOREBYSS, DEX_DAY
    dexendareadata


specialareas SPECIES_GOREBYSS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GOREBYSS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GOREBYSS, DEX_DAY
    dexendareadata


routesandcities SPECIES_GOREBYSS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GOREBYSS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GOREBYSS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RELICANTH, DEX_MORNING
    dexendareadata


specialareas SPECIES_RELICANTH, DEX_DAY
    dexendareadata


specialareas SPECIES_RELICANTH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RELICANTH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RELICANTH, DEX_DAY
    dexendareadata


routesandcities SPECIES_RELICANTH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RELICANTH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RELICANTH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LUVDISC, DEX_MORNING
    dexendareadata


specialareas SPECIES_LUVDISC, DEX_DAY
    dexendareadata


specialareas SPECIES_LUVDISC, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LUVDISC, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LUVDISC, DEX_DAY
    dexendareadata


routesandcities SPECIES_LUVDISC, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LUVDISC, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LUVDISC, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BAGON, DEX_MORNING
    dexendareadata


specialareas SPECIES_BAGON, DEX_DAY
    dexendareadata


specialareas SPECIES_BAGON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BAGON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BAGON, DEX_DAY
    dexendareadata


routesandcities SPECIES_BAGON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BAGON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BAGON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SHELGON, DEX_MORNING
    dexendareadata


specialareas SPECIES_SHELGON, DEX_DAY
    dexendareadata


specialareas SPECIES_SHELGON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SHELGON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SHELGON, DEX_DAY
    dexendareadata


routesandcities SPECIES_SHELGON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SHELGON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SHELGON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SALAMENCE, DEX_MORNING
    dexendareadata


specialareas SPECIES_SALAMENCE, DEX_DAY
    dexendareadata


specialareas SPECIES_SALAMENCE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SALAMENCE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SALAMENCE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SALAMENCE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SALAMENCE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SALAMENCE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BELDUM, DEX_MORNING
    dexendareadata


specialareas SPECIES_BELDUM, DEX_DAY
    dexendareadata


specialareas SPECIES_BELDUM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BELDUM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BELDUM, DEX_DAY
    dexendareadata


routesandcities SPECIES_BELDUM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BELDUM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BELDUM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_METANG, DEX_MORNING
    dexendareadata


specialareas SPECIES_METANG, DEX_DAY
    dexendareadata


specialareas SPECIES_METANG, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_METANG, DEX_MORNING
    dexendareadata


routesandcities SPECIES_METANG, DEX_DAY
    dexendareadata


routesandcities SPECIES_METANG, DEX_NIGHT
    dexendareadata


specialareas SPECIES_METANG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_METANG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_METAGROSS, DEX_MORNING
    dexendareadata


specialareas SPECIES_METAGROSS, DEX_DAY
    dexendareadata


specialareas SPECIES_METAGROSS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_METAGROSS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_METAGROSS, DEX_DAY
    dexendareadata


routesandcities SPECIES_METAGROSS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_METAGROSS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_METAGROSS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_REGIROCK, DEX_MORNING
    dexendareadata


specialareas SPECIES_REGIROCK, DEX_DAY
    dexendareadata


specialareas SPECIES_REGIROCK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_REGIROCK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_REGIROCK, DEX_DAY
    dexendareadata


routesandcities SPECIES_REGIROCK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_REGIROCK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_REGIROCK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_REGICE, DEX_MORNING
    dexendareadata


specialareas SPECIES_REGICE, DEX_DAY
    dexendareadata


specialareas SPECIES_REGICE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_REGICE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_REGICE, DEX_DAY
    dexendareadata


routesandcities SPECIES_REGICE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_REGICE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_REGICE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_REGISTEEL, DEX_MORNING
    dexendareadata


specialareas SPECIES_REGISTEEL, DEX_DAY
    dexendareadata


specialareas SPECIES_REGISTEEL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_REGISTEEL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_REGISTEEL, DEX_DAY
    dexendareadata


routesandcities SPECIES_REGISTEEL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_REGISTEEL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_REGISTEEL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LATIAS, DEX_MORNING
    dexendareadata


specialareas SPECIES_LATIAS, DEX_DAY
    dexendareadata


specialareas SPECIES_LATIAS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LATIAS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LATIAS, DEX_DAY
    dexendareadata


routesandcities SPECIES_LATIAS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LATIAS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LATIAS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LATIOS, DEX_MORNING
    dexendareadata


specialareas SPECIES_LATIOS, DEX_DAY
    dexendareadata


specialareas SPECIES_LATIOS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LATIOS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LATIOS, DEX_DAY
    dexendareadata


routesandcities SPECIES_LATIOS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LATIOS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LATIOS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KYOGRE, DEX_MORNING
    dexendareadata


specialareas SPECIES_KYOGRE, DEX_DAY
    dexendareadata


specialareas SPECIES_KYOGRE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KYOGRE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KYOGRE, DEX_DAY
    dexendareadata


routesandcities SPECIES_KYOGRE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KYOGRE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KYOGRE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GROUDON, DEX_MORNING
    dexendareadata


specialareas SPECIES_GROUDON, DEX_DAY
    dexendareadata


specialareas SPECIES_GROUDON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GROUDON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GROUDON, DEX_DAY
    dexendareadata


routesandcities SPECIES_GROUDON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GROUDON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GROUDON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RAYQUAZA, DEX_MORNING
    dexendareadata


specialareas SPECIES_RAYQUAZA, DEX_DAY
    dexendareadata


specialareas SPECIES_RAYQUAZA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RAYQUAZA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RAYQUAZA, DEX_DAY
    dexendareadata


routesandcities SPECIES_RAYQUAZA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RAYQUAZA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RAYQUAZA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_JIRACHI, DEX_MORNING
    dexendareadata


specialareas SPECIES_JIRACHI, DEX_DAY
    dexendareadata


specialareas SPECIES_JIRACHI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_JIRACHI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_JIRACHI, DEX_DAY
    dexendareadata


routesandcities SPECIES_JIRACHI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_JIRACHI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_JIRACHI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DEOXYS, DEX_MORNING
    dexendareadata


specialareas SPECIES_DEOXYS, DEX_DAY
    dexendareadata


specialareas SPECIES_DEOXYS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DEOXYS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DEOXYS, DEX_DAY
    dexendareadata


routesandcities SPECIES_DEOXYS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DEOXYS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DEOXYS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TURTWIG, DEX_MORNING
    dexendareadata


specialareas SPECIES_TURTWIG, DEX_DAY
    dexendareadata


specialareas SPECIES_TURTWIG, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TURTWIG, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TURTWIG, DEX_DAY
    dexendareadata


routesandcities SPECIES_TURTWIG, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TURTWIG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TURTWIG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GROTLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_GROTLE, DEX_DAY
    dexendareadata


specialareas SPECIES_GROTLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GROTLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GROTLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_GROTLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GROTLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GROTLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TORTERRA, DEX_MORNING
    dexendareadata


specialareas SPECIES_TORTERRA, DEX_DAY
    dexendareadata


specialareas SPECIES_TORTERRA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TORTERRA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TORTERRA, DEX_DAY
    dexendareadata


routesandcities SPECIES_TORTERRA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TORTERRA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TORTERRA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHIMCHAR, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHIMCHAR, DEX_DAY
    dexendareadata


specialareas SPECIES_CHIMCHAR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHIMCHAR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHIMCHAR, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHIMCHAR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHIMCHAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CHIMCHAR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MONFERNO, DEX_MORNING
    dexendareadata


specialareas SPECIES_MONFERNO, DEX_DAY
    dexendareadata


specialareas SPECIES_MONFERNO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MONFERNO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MONFERNO, DEX_DAY
    dexendareadata


routesandcities SPECIES_MONFERNO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MONFERNO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MONFERNO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_INFERNAPE, DEX_MORNING
    dexendareadata


specialareas SPECIES_INFERNAPE, DEX_DAY
    dexendareadata


specialareas SPECIES_INFERNAPE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_INFERNAPE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_INFERNAPE, DEX_DAY
    dexendareadata


routesandcities SPECIES_INFERNAPE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_INFERNAPE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_INFERNAPE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PIPLUP, DEX_MORNING
    dexendareadata


specialareas SPECIES_PIPLUP, DEX_DAY
    dexendareadata


specialareas SPECIES_PIPLUP, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PIPLUP, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PIPLUP, DEX_DAY
    dexendareadata


routesandcities SPECIES_PIPLUP, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PIPLUP, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PIPLUP, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PRINPLUP, DEX_MORNING
    dexendareadata


specialareas SPECIES_PRINPLUP, DEX_DAY
    dexendareadata


specialareas SPECIES_PRINPLUP, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PRINPLUP, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PRINPLUP, DEX_DAY
    dexendareadata


routesandcities SPECIES_PRINPLUP, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PRINPLUP, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PRINPLUP, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_EMPOLEON, DEX_MORNING
    dexendareadata


specialareas SPECIES_EMPOLEON, DEX_DAY
    dexendareadata


specialareas SPECIES_EMPOLEON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_EMPOLEON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_EMPOLEON, DEX_DAY
    dexendareadata


routesandcities SPECIES_EMPOLEON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_EMPOLEON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_EMPOLEON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_STARLY, DEX_MORNING
    dexendareadata


specialareas SPECIES_STARLY, DEX_DAY
    dexendareadata


specialareas SPECIES_STARLY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_STARLY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_STARLY, DEX_DAY
    dexendareadata


routesandcities SPECIES_STARLY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_STARLY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_STARLY, DEX_SPECIAL
    .word DEX_PEWTER_CITY
    dexendareadata


specialareas SPECIES_STARAVIA, DEX_MORNING
    dexendareadata


specialareas SPECIES_STARAVIA, DEX_DAY
    dexendareadata


specialareas SPECIES_STARAVIA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_STARAVIA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_STARAVIA, DEX_DAY
    dexendareadata


routesandcities SPECIES_STARAVIA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_STARAVIA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_STARAVIA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_STARAPTOR, DEX_MORNING
    dexendareadata


specialareas SPECIES_STARAPTOR, DEX_DAY
    dexendareadata


specialareas SPECIES_STARAPTOR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_STARAPTOR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_STARAPTOR, DEX_DAY
    dexendareadata


routesandcities SPECIES_STARAPTOR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_STARAPTOR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_STARAPTOR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BIDOOF, DEX_MORNING
    dexendareadata


specialareas SPECIES_BIDOOF, DEX_DAY
    dexendareadata


specialareas SPECIES_BIDOOF, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BIDOOF, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BIDOOF, DEX_DAY
    dexendareadata


routesandcities SPECIES_BIDOOF, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BIDOOF, DEX_SPECIAL
    .word DEX_RUINS_OF_ALPH
    dexendareadata


routesandcities SPECIES_BIDOOF, DEX_SPECIAL
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_ROUTE_32
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_42
    .word DEX_ROUTE_43
    .word DEX_ROUTE_44
    .word DEX_ROUTE_45
    .word DEX_ROUTE_47
    .word DEX_MT_SILVER
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_28
    .word DEX_ROUTE_4
    .word DEX_ROUTE_6
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_13
    .word DEX_ROUTE_21
    .word DEX_ROUTE_22
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


specialareas SPECIES_BIBAREL, DEX_MORNING
    dexendareadata


specialareas SPECIES_BIBAREL, DEX_DAY
    dexendareadata


specialareas SPECIES_BIBAREL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BIBAREL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BIBAREL, DEX_DAY
    dexendareadata


routesandcities SPECIES_BIBAREL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BIBAREL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BIBAREL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KRICKETOT, DEX_MORNING
    dexendareadata


specialareas SPECIES_KRICKETOT, DEX_DAY
    dexendareadata


specialareas SPECIES_KRICKETOT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KRICKETOT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KRICKETOT, DEX_DAY
    dexendareadata


routesandcities SPECIES_KRICKETOT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KRICKETOT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KRICKETOT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KRICKETUNE, DEX_MORNING
    dexendareadata


specialareas SPECIES_KRICKETUNE, DEX_DAY
    dexendareadata


specialareas SPECIES_KRICKETUNE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KRICKETUNE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KRICKETUNE, DEX_DAY
    dexendareadata


routesandcities SPECIES_KRICKETUNE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KRICKETUNE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KRICKETUNE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SHINX, DEX_MORNING
    dexendareadata


specialareas SPECIES_SHINX, DEX_DAY
    dexendareadata


specialareas SPECIES_SHINX, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SHINX, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SHINX, DEX_DAY
    dexendareadata


routesandcities SPECIES_SHINX, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SHINX, DEX_SPECIAL
    .word DEX_NATIONAL_PARK
    dexendareadata


routesandcities SPECIES_SHINX, DEX_SPECIAL
    .word DEX_ROUTE_29
    .word DEX_ROUTE_33
    .word DEX_ROUTE_36
    .word DEX_ROUTE_37
    .word DEX_ROUTE_38
    .word DEX_ROUTE_39
    .word DEX_ROUTE_46
    .word DEX_ROUTE_48
    .word DEX_ROUTE_1
    .word DEX_ROUTE_2
    .word DEX_ROUTE_3
    .word DEX_ROUTE_5
    .word DEX_ROUTE_7
    .word DEX_ROUTE_8
    .word DEX_ROUTE_11
    .word DEX_ROUTE_14
    .word DEX_ROUTE_15
    .word DEX_ROUTE_16
    .word DEX_ROUTE_17
    .word DEX_ROUTE_18
    .word DEX_ROUTE_2_2
    dexendareadata


specialareas SPECIES_LUXIO, DEX_MORNING
    dexendareadata


specialareas SPECIES_LUXIO, DEX_DAY
    dexendareadata


specialareas SPECIES_LUXIO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LUXIO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LUXIO, DEX_DAY
    dexendareadata


routesandcities SPECIES_LUXIO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LUXIO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LUXIO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LUXRAY, DEX_MORNING
    dexendareadata


specialareas SPECIES_LUXRAY, DEX_DAY
    dexendareadata


specialareas SPECIES_LUXRAY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LUXRAY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LUXRAY, DEX_DAY
    dexendareadata


routesandcities SPECIES_LUXRAY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LUXRAY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LUXRAY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BUDEW, DEX_MORNING
    dexendareadata


specialareas SPECIES_BUDEW, DEX_DAY
    dexendareadata


specialareas SPECIES_BUDEW, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BUDEW, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BUDEW, DEX_DAY
    dexendareadata


routesandcities SPECIES_BUDEW, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BUDEW, DEX_SPECIAL
    .word DEX_ILEX_FOREST
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


routesandcities SPECIES_BUDEW, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ROSERADE, DEX_MORNING
    dexendareadata


specialareas SPECIES_ROSERADE, DEX_DAY
    dexendareadata


specialareas SPECIES_ROSERADE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ROSERADE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ROSERADE, DEX_DAY
    dexendareadata


routesandcities SPECIES_ROSERADE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ROSERADE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ROSERADE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CRANIDOS, DEX_MORNING
    dexendareadata


specialareas SPECIES_CRANIDOS, DEX_DAY
    dexendareadata


specialareas SPECIES_CRANIDOS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CRANIDOS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CRANIDOS, DEX_DAY
    dexendareadata


routesandcities SPECIES_CRANIDOS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CRANIDOS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CRANIDOS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RAMPARDOS, DEX_MORNING
    dexendareadata


specialareas SPECIES_RAMPARDOS, DEX_DAY
    dexendareadata


specialareas SPECIES_RAMPARDOS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RAMPARDOS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RAMPARDOS, DEX_DAY
    dexendareadata


routesandcities SPECIES_RAMPARDOS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RAMPARDOS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RAMPARDOS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SHIELDON, DEX_MORNING
    dexendareadata


specialareas SPECIES_SHIELDON, DEX_DAY
    dexendareadata


specialareas SPECIES_SHIELDON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SHIELDON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SHIELDON, DEX_DAY
    dexendareadata


routesandcities SPECIES_SHIELDON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SHIELDON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SHIELDON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BASTIODON, DEX_MORNING
    dexendareadata


specialareas SPECIES_BASTIODON, DEX_DAY
    dexendareadata


specialareas SPECIES_BASTIODON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BASTIODON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BASTIODON, DEX_DAY
    dexendareadata


routesandcities SPECIES_BASTIODON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BASTIODON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BASTIODON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BURMY, DEX_MORNING
    dexendareadata


specialareas SPECIES_BURMY, DEX_DAY
    dexendareadata


specialareas SPECIES_BURMY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BURMY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BURMY, DEX_DAY
    dexendareadata


routesandcities SPECIES_BURMY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BURMY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BURMY, DEX_SPECIAL
    .word DEX_ROUTE_38
    dexendareadata


specialareas SPECIES_WORMADAM, DEX_MORNING
    dexendareadata


specialareas SPECIES_WORMADAM, DEX_DAY
    dexendareadata


specialareas SPECIES_WORMADAM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WORMADAM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WORMADAM, DEX_DAY
    dexendareadata


routesandcities SPECIES_WORMADAM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WORMADAM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WORMADAM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MOTHIM, DEX_MORNING
    dexendareadata


specialareas SPECIES_MOTHIM, DEX_DAY
    dexendareadata


specialareas SPECIES_MOTHIM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MOTHIM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MOTHIM, DEX_DAY
    dexendareadata


routesandcities SPECIES_MOTHIM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MOTHIM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MOTHIM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_COMBEE, DEX_MORNING
    dexendareadata


specialareas SPECIES_COMBEE, DEX_DAY
    dexendareadata


specialareas SPECIES_COMBEE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_COMBEE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_COMBEE, DEX_DAY
    dexendareadata


routesandcities SPECIES_COMBEE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_COMBEE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_COMBEE, DEX_SPECIAL
    .word DEX_CERULEAN_CITY
    .word DEX_VERMILION_CITY
    .word DEX_CELADON_CITY
    .word DEX_ROUTE_5
    .word DEX_ROUTE_6
    .word DEX_ROUTE_7
    .word DEX_ROUTE_8
    .word DEX_ROUTE_11
    .word DEX_ROUTE_16
    .word DEX_ROUTE_25
    .word DEX_ROUTE_16_2
    dexendareadata


specialareas SPECIES_VESPIQUEN, DEX_MORNING
    dexendareadata


specialareas SPECIES_VESPIQUEN, DEX_DAY
    dexendareadata


specialareas SPECIES_VESPIQUEN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VESPIQUEN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VESPIQUEN, DEX_DAY
    dexendareadata


routesandcities SPECIES_VESPIQUEN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VESPIQUEN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VESPIQUEN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PACHIRISU, DEX_MORNING
    dexendareadata


specialareas SPECIES_PACHIRISU, DEX_DAY
    dexendareadata


specialareas SPECIES_PACHIRISU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PACHIRISU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PACHIRISU, DEX_DAY
    dexendareadata


routesandcities SPECIES_PACHIRISU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PACHIRISU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PACHIRISU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BUIZEL, DEX_MORNING
    dexendareadata


specialareas SPECIES_BUIZEL, DEX_DAY
    dexendareadata


specialareas SPECIES_BUIZEL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BUIZEL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BUIZEL, DEX_DAY
    dexendareadata


routesandcities SPECIES_BUIZEL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BUIZEL, DEX_SPECIAL
    .word DEX_RUINS_OF_ALPH
    dexendareadata


routesandcities SPECIES_BUIZEL, DEX_SPECIAL
    .word DEX_ROUTE_30
    .word DEX_ROUTE_31
    .word DEX_ROUTE_32
    .word DEX_ROUTE_34
    .word DEX_ROUTE_35
    .word DEX_ROUTE_42
    .word DEX_ROUTE_43
    .word DEX_ROUTE_44
    .word DEX_ROUTE_45
    .word DEX_ROUTE_47
    .word DEX_MT_SILVER
    .word DEX_ROUTE_26
    .word DEX_ROUTE_27
    .word DEX_ROUTE_28
    .word DEX_ROUTE_4
    .word DEX_ROUTE_6
    .word DEX_ROUTE_9
    .word DEX_ROUTE_10
    .word DEX_ROUTE_13
    .word DEX_ROUTE_21
    .word DEX_ROUTE_22
    .word DEX_ROUTE_24
    .word DEX_ROUTE_25
    dexendareadata


specialareas SPECIES_FLOATZEL, DEX_MORNING
    dexendareadata


specialareas SPECIES_FLOATZEL, DEX_DAY
    dexendareadata


specialareas SPECIES_FLOATZEL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FLOATZEL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FLOATZEL, DEX_DAY
    dexendareadata


routesandcities SPECIES_FLOATZEL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FLOATZEL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FLOATZEL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHERUBI, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHERUBI, DEX_DAY
    dexendareadata


specialareas SPECIES_CHERUBI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHERUBI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHERUBI, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHERUBI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHERUBI, DEX_SPECIAL
    .word DEX_NATIONAL_PARK
    dexendareadata


routesandcities SPECIES_CHERUBI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHERRIM, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHERRIM, DEX_DAY
    dexendareadata


specialareas SPECIES_CHERRIM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHERRIM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHERRIM, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHERRIM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHERRIM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CHERRIM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SHELLOS, DEX_MORNING
    dexendareadata


specialareas SPECIES_SHELLOS, DEX_DAY
    dexendareadata


specialareas SPECIES_SHELLOS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SHELLOS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SHELLOS, DEX_DAY
    dexendareadata


routesandcities SPECIES_SHELLOS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SHELLOS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SHELLOS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GASTRODON, DEX_MORNING
    dexendareadata


specialareas SPECIES_GASTRODON, DEX_DAY
    dexendareadata


specialareas SPECIES_GASTRODON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GASTRODON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GASTRODON, DEX_DAY
    dexendareadata


routesandcities SPECIES_GASTRODON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GASTRODON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GASTRODON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_AMBIPOM, DEX_MORNING
    dexendareadata


specialareas SPECIES_AMBIPOM, DEX_DAY
    dexendareadata


specialareas SPECIES_AMBIPOM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_AMBIPOM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_AMBIPOM, DEX_DAY
    dexendareadata


routesandcities SPECIES_AMBIPOM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_AMBIPOM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_AMBIPOM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DRIFLOON, DEX_MORNING
    dexendareadata


specialareas SPECIES_DRIFLOON, DEX_DAY
    dexendareadata


specialareas SPECIES_DRIFLOON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DRIFLOON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DRIFLOON, DEX_DAY
    dexendareadata


routesandcities SPECIES_DRIFLOON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DRIFLOON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DRIFLOON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DRIFBLIM, DEX_MORNING
    dexendareadata


specialareas SPECIES_DRIFBLIM, DEX_DAY
    dexendareadata


specialareas SPECIES_DRIFBLIM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DRIFBLIM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DRIFBLIM, DEX_DAY
    dexendareadata


routesandcities SPECIES_DRIFBLIM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DRIFBLIM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DRIFBLIM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BUNEARY, DEX_MORNING
    dexendareadata


specialareas SPECIES_BUNEARY, DEX_DAY
    dexendareadata


specialareas SPECIES_BUNEARY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BUNEARY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BUNEARY, DEX_DAY
    dexendareadata


routesandcities SPECIES_BUNEARY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BUNEARY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BUNEARY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LOPUNNY, DEX_MORNING
    dexendareadata


specialareas SPECIES_LOPUNNY, DEX_DAY
    dexendareadata


specialareas SPECIES_LOPUNNY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LOPUNNY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LOPUNNY, DEX_DAY
    dexendareadata


routesandcities SPECIES_LOPUNNY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LOPUNNY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LOPUNNY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MISMAGIUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_MISMAGIUS, DEX_DAY
    dexendareadata


specialareas SPECIES_MISMAGIUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MISMAGIUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MISMAGIUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_MISMAGIUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MISMAGIUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MISMAGIUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HONCHKROW, DEX_MORNING
    dexendareadata


specialareas SPECIES_HONCHKROW, DEX_DAY
    dexendareadata


specialareas SPECIES_HONCHKROW, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HONCHKROW, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HONCHKROW, DEX_DAY
    dexendareadata


routesandcities SPECIES_HONCHKROW, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HONCHKROW, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HONCHKROW, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GLAMEOW, DEX_MORNING
    dexendareadata


specialareas SPECIES_GLAMEOW, DEX_DAY
    dexendareadata


specialareas SPECIES_GLAMEOW, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GLAMEOW, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GLAMEOW, DEX_DAY
    dexendareadata


routesandcities SPECIES_GLAMEOW, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GLAMEOW, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GLAMEOW, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PURUGLY, DEX_MORNING
    dexendareadata


specialareas SPECIES_PURUGLY, DEX_DAY
    dexendareadata


specialareas SPECIES_PURUGLY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PURUGLY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PURUGLY, DEX_DAY
    dexendareadata


routesandcities SPECIES_PURUGLY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PURUGLY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PURUGLY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHINGLING, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHINGLING, DEX_DAY
    dexendareadata


specialareas SPECIES_CHINGLING, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHINGLING, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHINGLING, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHINGLING, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHINGLING, DEX_SPECIAL
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_WHIRL_ISLANDS
    .word DEX_MT_MORTAR
    .word DEX_ICE_PATH
    .word DEX_DARK_CAVE
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_CAVE
    .word DEX_MT_MOON
    .word DEX_ROCK_TUNNEL
    .word DEX_VICTORY_ROAD
    .word DEX_TOHJO_FALLS
    .word DEX_DIGLETTS_CAVE
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_CHINGLING, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_STUNKY, DEX_MORNING
    dexendareadata


specialareas SPECIES_STUNKY, DEX_DAY
    dexendareadata


specialareas SPECIES_STUNKY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_STUNKY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_STUNKY, DEX_DAY
    dexendareadata


routesandcities SPECIES_STUNKY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_STUNKY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_STUNKY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SKUNTANK, DEX_MORNING
    dexendareadata


specialareas SPECIES_SKUNTANK, DEX_DAY
    dexendareadata


specialareas SPECIES_SKUNTANK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SKUNTANK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SKUNTANK, DEX_DAY
    dexendareadata


routesandcities SPECIES_SKUNTANK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SKUNTANK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SKUNTANK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BRONZOR, DEX_MORNING
    dexendareadata


specialareas SPECIES_BRONZOR, DEX_DAY
    dexendareadata


specialareas SPECIES_BRONZOR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BRONZOR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BRONZOR, DEX_DAY
    dexendareadata


routesandcities SPECIES_BRONZOR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BRONZOR, DEX_SPECIAL
    .word DEX_UNION_CAVE
    .word DEX_SLOWPOKE_WELL
    .word DEX_WHIRL_ISLANDS
    .word DEX_MT_MORTAR
    .word DEX_ICE_PATH
    .word DEX_DARK_CAVE
    .word DEX_SEAFOAM_ISLANDS
    .word DEX_MT_SILVER_CAVE
    .word DEX_CLIFF_CAVE
    .word DEX_MT_MOON
    .word DEX_ROCK_TUNNEL
    .word DEX_VICTORY_ROAD
    .word DEX_TOHJO_FALLS
    .word DEX_DIGLETTS_CAVE
    .word DEX_CERULEAN_CAVE
    dexendareadata


routesandcities SPECIES_BRONZOR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BRONZONG, DEX_MORNING
    dexendareadata


specialareas SPECIES_BRONZONG, DEX_DAY
    dexendareadata


specialareas SPECIES_BRONZONG, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BRONZONG, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BRONZONG, DEX_DAY
    dexendareadata


routesandcities SPECIES_BRONZONG, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BRONZONG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BRONZONG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BONSLY, DEX_MORNING
    dexendareadata


specialareas SPECIES_BONSLY, DEX_DAY
    dexendareadata


specialareas SPECIES_BONSLY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BONSLY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BONSLY, DEX_DAY
    dexendareadata


routesandcities SPECIES_BONSLY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BONSLY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BONSLY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MIMEJR, DEX_MORNING
    dexendareadata


specialareas SPECIES_MIMEJR, DEX_DAY
    dexendareadata


specialareas SPECIES_MIMEJR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MIMEJR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MIMEJR, DEX_DAY
    dexendareadata


routesandcities SPECIES_MIMEJR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MIMEJR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MIMEJR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HAPPINY, DEX_MORNING
    dexendareadata


specialareas SPECIES_HAPPINY, DEX_DAY
    dexendareadata


specialareas SPECIES_HAPPINY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HAPPINY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HAPPINY, DEX_DAY
    dexendareadata


routesandcities SPECIES_HAPPINY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HAPPINY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HAPPINY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHATOT, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHATOT, DEX_DAY
    dexendareadata


specialareas SPECIES_CHATOT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHATOT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHATOT, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHATOT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHATOT, DEX_SPECIAL
    .word DEX_SPROUT_TOWER
    .word DEX_BURNED_TOWER
    .word DEX_BELL_TOWER
    dexendareadata


routesandcities SPECIES_CHATOT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SPIRITOMB, DEX_MORNING
    dexendareadata


specialareas SPECIES_SPIRITOMB, DEX_DAY
    dexendareadata


specialareas SPECIES_SPIRITOMB, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SPIRITOMB, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SPIRITOMB, DEX_DAY
    dexendareadata


routesandcities SPECIES_SPIRITOMB, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SPIRITOMB, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SPIRITOMB, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GIBLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_GIBLE, DEX_DAY
    dexendareadata


specialareas SPECIES_GIBLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GIBLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GIBLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_GIBLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GIBLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GIBLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GABITE, DEX_MORNING
    dexendareadata


specialareas SPECIES_GABITE, DEX_DAY
    dexendareadata


specialareas SPECIES_GABITE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GABITE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GABITE, DEX_DAY
    dexendareadata


routesandcities SPECIES_GABITE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GABITE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GABITE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GARCHOMP, DEX_MORNING
    dexendareadata


specialareas SPECIES_GARCHOMP, DEX_DAY
    dexendareadata


specialareas SPECIES_GARCHOMP, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GARCHOMP, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GARCHOMP, DEX_DAY
    dexendareadata


routesandcities SPECIES_GARCHOMP, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GARCHOMP, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GARCHOMP, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MUNCHLAX, DEX_MORNING
    dexendareadata


specialareas SPECIES_MUNCHLAX, DEX_DAY
    dexendareadata


specialareas SPECIES_MUNCHLAX, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MUNCHLAX, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MUNCHLAX, DEX_DAY
    dexendareadata


routesandcities SPECIES_MUNCHLAX, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MUNCHLAX, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MUNCHLAX, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RIOLU, DEX_MORNING
    dexendareadata


specialareas SPECIES_RIOLU, DEX_DAY
    dexendareadata


specialareas SPECIES_RIOLU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RIOLU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RIOLU, DEX_DAY
    dexendareadata


routesandcities SPECIES_RIOLU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RIOLU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RIOLU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LUCARIO, DEX_MORNING
    dexendareadata


specialareas SPECIES_LUCARIO, DEX_DAY
    dexendareadata


specialareas SPECIES_LUCARIO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LUCARIO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LUCARIO, DEX_DAY
    dexendareadata


routesandcities SPECIES_LUCARIO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LUCARIO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LUCARIO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HIPPOPOTAS, DEX_MORNING
    dexendareadata


specialareas SPECIES_HIPPOPOTAS, DEX_DAY
    dexendareadata


specialareas SPECIES_HIPPOPOTAS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HIPPOPOTAS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HIPPOPOTAS, DEX_DAY
    dexendareadata


routesandcities SPECIES_HIPPOPOTAS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HIPPOPOTAS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HIPPOPOTAS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HIPPOWDON, DEX_MORNING
    dexendareadata


specialareas SPECIES_HIPPOWDON, DEX_DAY
    dexendareadata


specialareas SPECIES_HIPPOWDON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HIPPOWDON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HIPPOWDON, DEX_DAY
    dexendareadata


routesandcities SPECIES_HIPPOWDON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HIPPOWDON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HIPPOWDON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SKORUPI, DEX_MORNING
    dexendareadata


specialareas SPECIES_SKORUPI, DEX_DAY
    dexendareadata


specialareas SPECIES_SKORUPI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SKORUPI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SKORUPI, DEX_DAY
    dexendareadata


routesandcities SPECIES_SKORUPI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SKORUPI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SKORUPI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DRAPION, DEX_MORNING
    dexendareadata


specialareas SPECIES_DRAPION, DEX_DAY
    dexendareadata


specialareas SPECIES_DRAPION, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DRAPION, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DRAPION, DEX_DAY
    dexendareadata


routesandcities SPECIES_DRAPION, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DRAPION, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DRAPION, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CROAGUNK, DEX_MORNING
    dexendareadata


specialareas SPECIES_CROAGUNK, DEX_DAY
    dexendareadata


specialareas SPECIES_CROAGUNK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CROAGUNK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CROAGUNK, DEX_DAY
    dexendareadata


routesandcities SPECIES_CROAGUNK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CROAGUNK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CROAGUNK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TOXICROAK, DEX_MORNING
    dexendareadata


specialareas SPECIES_TOXICROAK, DEX_DAY
    dexendareadata


specialareas SPECIES_TOXICROAK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TOXICROAK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TOXICROAK, DEX_DAY
    dexendareadata


routesandcities SPECIES_TOXICROAK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TOXICROAK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TOXICROAK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CARNIVINE, DEX_MORNING
    dexendareadata


specialareas SPECIES_CARNIVINE, DEX_DAY
    dexendareadata


specialareas SPECIES_CARNIVINE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CARNIVINE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CARNIVINE, DEX_DAY
    dexendareadata


routesandcities SPECIES_CARNIVINE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CARNIVINE, DEX_SPECIAL
    .word DEX_ILEX_FOREST
    .word DEX_VIRIDIAN_FOREST
    dexendareadata


routesandcities SPECIES_CARNIVINE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FINNEON, DEX_MORNING
    dexendareadata


specialareas SPECIES_FINNEON, DEX_DAY
    dexendareadata


specialareas SPECIES_FINNEON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FINNEON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FINNEON, DEX_DAY
    dexendareadata


routesandcities SPECIES_FINNEON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FINNEON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FINNEON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LUMINEON, DEX_MORNING
    dexendareadata


specialareas SPECIES_LUMINEON, DEX_DAY
    dexendareadata


specialareas SPECIES_LUMINEON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LUMINEON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LUMINEON, DEX_DAY
    dexendareadata


routesandcities SPECIES_LUMINEON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LUMINEON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LUMINEON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MANTYKE, DEX_MORNING
    dexendareadata


specialareas SPECIES_MANTYKE, DEX_DAY
    dexendareadata


specialareas SPECIES_MANTYKE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MANTYKE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MANTYKE, DEX_DAY
    dexendareadata


routesandcities SPECIES_MANTYKE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MANTYKE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MANTYKE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SNOVER, DEX_MORNING
    dexendareadata


specialareas SPECIES_SNOVER, DEX_DAY
    dexendareadata


specialareas SPECIES_SNOVER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SNOVER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SNOVER, DEX_DAY
    dexendareadata


routesandcities SPECIES_SNOVER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SNOVER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SNOVER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ABOMASNOW, DEX_MORNING
    dexendareadata


specialareas SPECIES_ABOMASNOW, DEX_DAY
    dexendareadata


specialareas SPECIES_ABOMASNOW, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ABOMASNOW, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ABOMASNOW, DEX_DAY
    dexendareadata


routesandcities SPECIES_ABOMASNOW, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ABOMASNOW, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ABOMASNOW, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WEAVILE, DEX_MORNING
    dexendareadata


specialareas SPECIES_WEAVILE, DEX_DAY
    dexendareadata


specialareas SPECIES_WEAVILE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WEAVILE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WEAVILE, DEX_DAY
    dexendareadata


routesandcities SPECIES_WEAVILE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WEAVILE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WEAVILE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MAGNEZONE, DEX_MORNING
    dexendareadata


specialareas SPECIES_MAGNEZONE, DEX_DAY
    dexendareadata


specialareas SPECIES_MAGNEZONE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MAGNEZONE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MAGNEZONE, DEX_DAY
    dexendareadata


routesandcities SPECIES_MAGNEZONE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MAGNEZONE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MAGNEZONE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LICKILICKY, DEX_MORNING
    dexendareadata


specialareas SPECIES_LICKILICKY, DEX_DAY
    dexendareadata


specialareas SPECIES_LICKILICKY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LICKILICKY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LICKILICKY, DEX_DAY
    dexendareadata


routesandcities SPECIES_LICKILICKY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LICKILICKY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LICKILICKY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RHYPERIOR, DEX_MORNING
    dexendareadata


specialareas SPECIES_RHYPERIOR, DEX_DAY
    dexendareadata


specialareas SPECIES_RHYPERIOR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RHYPERIOR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RHYPERIOR, DEX_DAY
    dexendareadata


routesandcities SPECIES_RHYPERIOR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RHYPERIOR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RHYPERIOR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TANGROWTH, DEX_MORNING
    dexendareadata


specialareas SPECIES_TANGROWTH, DEX_DAY
    dexendareadata


specialareas SPECIES_TANGROWTH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TANGROWTH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TANGROWTH, DEX_DAY
    dexendareadata


routesandcities SPECIES_TANGROWTH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TANGROWTH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TANGROWTH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ELECTIVIRE, DEX_MORNING
    dexendareadata


specialareas SPECIES_ELECTIVIRE, DEX_DAY
    dexendareadata


specialareas SPECIES_ELECTIVIRE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ELECTIVIRE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ELECTIVIRE, DEX_DAY
    dexendareadata


routesandcities SPECIES_ELECTIVIRE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ELECTIVIRE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ELECTIVIRE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MAGMORTAR, DEX_MORNING
    dexendareadata


specialareas SPECIES_MAGMORTAR, DEX_DAY
    dexendareadata


specialareas SPECIES_MAGMORTAR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MAGMORTAR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MAGMORTAR, DEX_DAY
    dexendareadata


routesandcities SPECIES_MAGMORTAR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MAGMORTAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MAGMORTAR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TOGEKISS, DEX_MORNING
    dexendareadata


specialareas SPECIES_TOGEKISS, DEX_DAY
    dexendareadata


specialareas SPECIES_TOGEKISS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TOGEKISS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TOGEKISS, DEX_DAY
    dexendareadata


routesandcities SPECIES_TOGEKISS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TOGEKISS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TOGEKISS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_YANMEGA, DEX_MORNING
    dexendareadata


specialareas SPECIES_YANMEGA, DEX_DAY
    dexendareadata


specialareas SPECIES_YANMEGA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_YANMEGA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_YANMEGA, DEX_DAY
    dexendareadata


routesandcities SPECIES_YANMEGA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_YANMEGA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_YANMEGA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LEAFEON, DEX_MORNING
    dexendareadata


specialareas SPECIES_LEAFEON, DEX_DAY
    dexendareadata


specialareas SPECIES_LEAFEON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LEAFEON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LEAFEON, DEX_DAY
    dexendareadata


routesandcities SPECIES_LEAFEON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LEAFEON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LEAFEON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GLACEON, DEX_MORNING
    dexendareadata


specialareas SPECIES_GLACEON, DEX_DAY
    dexendareadata


specialareas SPECIES_GLACEON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GLACEON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GLACEON, DEX_DAY
    dexendareadata


routesandcities SPECIES_GLACEON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GLACEON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GLACEON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GLISCOR, DEX_MORNING
    dexendareadata


specialareas SPECIES_GLISCOR, DEX_DAY
    dexendareadata


specialareas SPECIES_GLISCOR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GLISCOR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GLISCOR, DEX_DAY
    dexendareadata


routesandcities SPECIES_GLISCOR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GLISCOR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GLISCOR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MAMOSWINE, DEX_MORNING
    dexendareadata


specialareas SPECIES_MAMOSWINE, DEX_DAY
    dexendareadata


specialareas SPECIES_MAMOSWINE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MAMOSWINE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MAMOSWINE, DEX_DAY
    dexendareadata


routesandcities SPECIES_MAMOSWINE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MAMOSWINE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MAMOSWINE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PORYGON_Z, DEX_MORNING
    dexendareadata


specialareas SPECIES_PORYGON_Z, DEX_DAY
    dexendareadata


specialareas SPECIES_PORYGON_Z, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PORYGON_Z, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PORYGON_Z, DEX_DAY
    dexendareadata


routesandcities SPECIES_PORYGON_Z, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PORYGON_Z, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PORYGON_Z, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GALLADE, DEX_MORNING
    dexendareadata


specialareas SPECIES_GALLADE, DEX_DAY
    dexendareadata


specialareas SPECIES_GALLADE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GALLADE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GALLADE, DEX_DAY
    dexendareadata


routesandcities SPECIES_GALLADE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GALLADE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GALLADE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PROBOPASS, DEX_MORNING
    dexendareadata


specialareas SPECIES_PROBOPASS, DEX_DAY
    dexendareadata


specialareas SPECIES_PROBOPASS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PROBOPASS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PROBOPASS, DEX_DAY
    dexendareadata


routesandcities SPECIES_PROBOPASS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PROBOPASS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PROBOPASS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DUSKNOIR, DEX_MORNING
    dexendareadata


specialareas SPECIES_DUSKNOIR, DEX_DAY
    dexendareadata


specialareas SPECIES_DUSKNOIR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DUSKNOIR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DUSKNOIR, DEX_DAY
    dexendareadata


routesandcities SPECIES_DUSKNOIR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DUSKNOIR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DUSKNOIR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FROSLASS, DEX_MORNING
    dexendareadata


specialareas SPECIES_FROSLASS, DEX_DAY
    dexendareadata


specialareas SPECIES_FROSLASS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FROSLASS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FROSLASS, DEX_DAY
    dexendareadata


routesandcities SPECIES_FROSLASS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FROSLASS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FROSLASS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ROTOM, DEX_MORNING
    dexendareadata


specialareas SPECIES_ROTOM, DEX_DAY
    dexendareadata


specialareas SPECIES_ROTOM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ROTOM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ROTOM, DEX_DAY
    dexendareadata


routesandcities SPECIES_ROTOM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ROTOM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ROTOM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_UXIE, DEX_MORNING
    dexendareadata


specialareas SPECIES_UXIE, DEX_DAY
    dexendareadata


specialareas SPECIES_UXIE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_UXIE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_UXIE, DEX_DAY
    dexendareadata


routesandcities SPECIES_UXIE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_UXIE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_UXIE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MESPRIT, DEX_MORNING
    dexendareadata


specialareas SPECIES_MESPRIT, DEX_DAY
    dexendareadata


specialareas SPECIES_MESPRIT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MESPRIT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MESPRIT, DEX_DAY
    dexendareadata


routesandcities SPECIES_MESPRIT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MESPRIT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MESPRIT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_AZELF, DEX_MORNING
    dexendareadata


specialareas SPECIES_AZELF, DEX_DAY
    dexendareadata


specialareas SPECIES_AZELF, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_AZELF, DEX_MORNING
    dexendareadata


routesandcities SPECIES_AZELF, DEX_DAY
    dexendareadata


routesandcities SPECIES_AZELF, DEX_NIGHT
    dexendareadata


specialareas SPECIES_AZELF, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_AZELF, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DIALGA, DEX_MORNING
    dexendareadata


specialareas SPECIES_DIALGA, DEX_DAY
    dexendareadata


specialareas SPECIES_DIALGA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DIALGA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DIALGA, DEX_DAY
    dexendareadata


routesandcities SPECIES_DIALGA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DIALGA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DIALGA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PALKIA, DEX_MORNING
    dexendareadata


specialareas SPECIES_PALKIA, DEX_DAY
    dexendareadata


specialareas SPECIES_PALKIA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PALKIA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PALKIA, DEX_DAY
    dexendareadata


routesandcities SPECIES_PALKIA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PALKIA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PALKIA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HEATRAN, DEX_MORNING
    dexendareadata


specialareas SPECIES_HEATRAN, DEX_DAY
    dexendareadata


specialareas SPECIES_HEATRAN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HEATRAN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HEATRAN, DEX_DAY
    dexendareadata


routesandcities SPECIES_HEATRAN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HEATRAN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HEATRAN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_REGIGIGAS, DEX_MORNING
    dexendareadata


specialareas SPECIES_REGIGIGAS, DEX_DAY
    dexendareadata


specialareas SPECIES_REGIGIGAS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_REGIGIGAS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_REGIGIGAS, DEX_DAY
    dexendareadata


routesandcities SPECIES_REGIGIGAS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_REGIGIGAS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_REGIGIGAS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GIRATINA, DEX_MORNING
    dexendareadata


specialareas SPECIES_GIRATINA, DEX_DAY
    dexendareadata


specialareas SPECIES_GIRATINA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GIRATINA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GIRATINA, DEX_DAY
    dexendareadata


routesandcities SPECIES_GIRATINA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GIRATINA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GIRATINA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CRESSELIA, DEX_MORNING
    dexendareadata


specialareas SPECIES_CRESSELIA, DEX_DAY
    dexendareadata


specialareas SPECIES_CRESSELIA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CRESSELIA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CRESSELIA, DEX_DAY
    dexendareadata


routesandcities SPECIES_CRESSELIA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CRESSELIA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CRESSELIA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PHIONE, DEX_MORNING
    dexendareadata


specialareas SPECIES_PHIONE, DEX_DAY
    dexendareadata


specialareas SPECIES_PHIONE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PHIONE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PHIONE, DEX_DAY
    dexendareadata


routesandcities SPECIES_PHIONE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PHIONE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PHIONE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MANAPHY, DEX_MORNING
    dexendareadata


specialareas SPECIES_MANAPHY, DEX_DAY
    dexendareadata


specialareas SPECIES_MANAPHY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MANAPHY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MANAPHY, DEX_DAY
    dexendareadata


routesandcities SPECIES_MANAPHY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MANAPHY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MANAPHY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DARKRAI, DEX_MORNING
    dexendareadata


specialareas SPECIES_DARKRAI, DEX_DAY
    dexendareadata


specialareas SPECIES_DARKRAI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DARKRAI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DARKRAI, DEX_DAY
    dexendareadata


routesandcities SPECIES_DARKRAI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DARKRAI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DARKRAI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SHAYMIN, DEX_MORNING
    dexendareadata


specialareas SPECIES_SHAYMIN, DEX_DAY
    dexendareadata


specialareas SPECIES_SHAYMIN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SHAYMIN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SHAYMIN, DEX_DAY
    dexendareadata


routesandcities SPECIES_SHAYMIN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SHAYMIN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SHAYMIN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ARCEUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_ARCEUS, DEX_DAY
    dexendareadata


specialareas SPECIES_ARCEUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ARCEUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ARCEUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_ARCEUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ARCEUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ARCEUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_EGG, DEX_MORNING
    dexendareadata


specialareas SPECIES_EGG, DEX_DAY
    dexendareadata


specialareas SPECIES_EGG, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_EGG, DEX_MORNING
    dexendareadata


routesandcities SPECIES_EGG, DEX_DAY
    dexendareadata


routesandcities SPECIES_EGG, DEX_NIGHT
    dexendareadata


specialareas SPECIES_EGG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_EGG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BAD_EGG, DEX_MORNING
    dexendareadata


specialareas SPECIES_BAD_EGG, DEX_DAY
    dexendareadata


specialareas SPECIES_BAD_EGG, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BAD_EGG, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BAD_EGG, DEX_DAY
    dexendareadata


routesandcities SPECIES_BAD_EGG, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BAD_EGG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BAD_EGG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DEOXYS_ATTACK, DEX_MORNING
    dexendareadata


specialareas SPECIES_DEOXYS_ATTACK, DEX_DAY
    dexendareadata


specialareas SPECIES_DEOXYS_ATTACK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DEOXYS_ATTACK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DEOXYS_ATTACK, DEX_DAY
    dexendareadata


routesandcities SPECIES_DEOXYS_ATTACK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DEOXYS_ATTACK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DEOXYS_ATTACK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DEOXYS_DEFENSE, DEX_MORNING
    dexendareadata


specialareas SPECIES_DEOXYS_DEFENSE, DEX_DAY
    dexendareadata


specialareas SPECIES_DEOXYS_DEFENSE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DEOXYS_DEFENSE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DEOXYS_DEFENSE, DEX_DAY
    dexendareadata


routesandcities SPECIES_DEOXYS_DEFENSE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DEOXYS_DEFENSE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DEOXYS_DEFENSE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DEOXYS_SPEED, DEX_MORNING
    dexendareadata


specialareas SPECIES_DEOXYS_SPEED, DEX_DAY
    dexendareadata


specialareas SPECIES_DEOXYS_SPEED, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DEOXYS_SPEED, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DEOXYS_SPEED, DEX_DAY
    dexendareadata


routesandcities SPECIES_DEOXYS_SPEED, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DEOXYS_SPEED, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DEOXYS_SPEED, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WORMADAM_SANDY, DEX_MORNING
    dexendareadata


specialareas SPECIES_WORMADAM_SANDY, DEX_DAY
    dexendareadata


specialareas SPECIES_WORMADAM_SANDY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WORMADAM_SANDY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WORMADAM_SANDY, DEX_DAY
    dexendareadata


routesandcities SPECIES_WORMADAM_SANDY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WORMADAM_SANDY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WORMADAM_SANDY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WORMADAM_TRASHY, DEX_MORNING
    dexendareadata


specialareas SPECIES_WORMADAM_TRASHY, DEX_DAY
    dexendareadata


specialareas SPECIES_WORMADAM_TRASHY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WORMADAM_TRASHY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WORMADAM_TRASHY, DEX_DAY
    dexendareadata


routesandcities SPECIES_WORMADAM_TRASHY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WORMADAM_TRASHY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WORMADAM_TRASHY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GIRATINA_ORIGIN, DEX_MORNING
    dexendareadata


specialareas SPECIES_GIRATINA_ORIGIN, DEX_DAY
    dexendareadata


specialareas SPECIES_GIRATINA_ORIGIN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GIRATINA_ORIGIN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GIRATINA_ORIGIN, DEX_DAY
    dexendareadata


routesandcities SPECIES_GIRATINA_ORIGIN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GIRATINA_ORIGIN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GIRATINA_ORIGIN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SHAYMIN_SKY, DEX_MORNING
    dexendareadata


specialareas SPECIES_SHAYMIN_SKY, DEX_DAY
    dexendareadata


specialareas SPECIES_SHAYMIN_SKY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SHAYMIN_SKY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SHAYMIN_SKY, DEX_DAY
    dexendareadata


routesandcities SPECIES_SHAYMIN_SKY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SHAYMIN_SKY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SHAYMIN_SKY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ROTOM_HEAT, DEX_MORNING
    dexendareadata


specialareas SPECIES_ROTOM_HEAT, DEX_DAY
    dexendareadata


specialareas SPECIES_ROTOM_HEAT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ROTOM_HEAT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ROTOM_HEAT, DEX_DAY
    dexendareadata


routesandcities SPECIES_ROTOM_HEAT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ROTOM_HEAT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ROTOM_HEAT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ROTOM_WASH, DEX_MORNING
    dexendareadata


specialareas SPECIES_ROTOM_WASH, DEX_DAY
    dexendareadata


specialareas SPECIES_ROTOM_WASH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ROTOM_WASH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ROTOM_WASH, DEX_DAY
    dexendareadata


routesandcities SPECIES_ROTOM_WASH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ROTOM_WASH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ROTOM_WASH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ROTOM_FROST, DEX_MORNING
    dexendareadata


specialareas SPECIES_ROTOM_FROST, DEX_DAY
    dexendareadata


specialareas SPECIES_ROTOM_FROST, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ROTOM_FROST, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ROTOM_FROST, DEX_DAY
    dexendareadata


routesandcities SPECIES_ROTOM_FROST, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ROTOM_FROST, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ROTOM_FROST, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ROTOM_FAN, DEX_MORNING
    dexendareadata


specialareas SPECIES_ROTOM_FAN, DEX_DAY
    dexendareadata


specialareas SPECIES_ROTOM_FAN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ROTOM_FAN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ROTOM_FAN, DEX_DAY
    dexendareadata


routesandcities SPECIES_ROTOM_FAN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ROTOM_FAN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ROTOM_FAN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ROTOM_MOW, DEX_MORNING
    dexendareadata


specialareas SPECIES_ROTOM_MOW, DEX_DAY
    dexendareadata


specialareas SPECIES_ROTOM_MOW, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ROTOM_MOW, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ROTOM_MOW, DEX_DAY
    dexendareadata


routesandcities SPECIES_ROTOM_MOW, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ROTOM_MOW, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ROTOM_MOW, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_508, DEX_MORNING
    dexendareadata


specialareas SPECIES_508, DEX_DAY
    dexendareadata


specialareas SPECIES_508, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_508, DEX_MORNING
    dexendareadata


routesandcities SPECIES_508, DEX_DAY
    dexendareadata


routesandcities SPECIES_508, DEX_NIGHT
    dexendareadata


specialareas SPECIES_508, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_508, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_509, DEX_MORNING
    dexendareadata


specialareas SPECIES_509, DEX_DAY
    dexendareadata


specialareas SPECIES_509, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_509, DEX_MORNING
    dexendareadata


routesandcities SPECIES_509, DEX_DAY
    dexendareadata


routesandcities SPECIES_509, DEX_NIGHT
    dexendareadata


specialareas SPECIES_509, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_509, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_510, DEX_MORNING
    dexendareadata


specialareas SPECIES_510, DEX_DAY
    dexendareadata


specialareas SPECIES_510, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_510, DEX_MORNING
    dexendareadata


routesandcities SPECIES_510, DEX_DAY
    dexendareadata


routesandcities SPECIES_510, DEX_NIGHT
    dexendareadata


specialareas SPECIES_510, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_510, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_511, DEX_MORNING
    dexendareadata


specialareas SPECIES_511, DEX_DAY
    dexendareadata


specialareas SPECIES_511, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_511, DEX_MORNING
    dexendareadata


routesandcities SPECIES_511, DEX_DAY
    dexendareadata


routesandcities SPECIES_511, DEX_NIGHT
    dexendareadata


specialareas SPECIES_511, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_511, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_512, DEX_MORNING
    dexendareadata


specialareas SPECIES_512, DEX_DAY
    dexendareadata


specialareas SPECIES_512, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_512, DEX_MORNING
    dexendareadata


routesandcities SPECIES_512, DEX_DAY
    dexendareadata


routesandcities SPECIES_512, DEX_NIGHT
    dexendareadata


specialareas SPECIES_512, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_512, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_513, DEX_MORNING
    dexendareadata


specialareas SPECIES_513, DEX_DAY
    dexendareadata


specialareas SPECIES_513, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_513, DEX_MORNING
    dexendareadata


routesandcities SPECIES_513, DEX_DAY
    dexendareadata


routesandcities SPECIES_513, DEX_NIGHT
    dexendareadata


specialareas SPECIES_513, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_513, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_514, DEX_MORNING
    dexendareadata


specialareas SPECIES_514, DEX_DAY
    dexendareadata


specialareas SPECIES_514, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_514, DEX_MORNING
    dexendareadata


routesandcities SPECIES_514, DEX_DAY
    dexendareadata


routesandcities SPECIES_514, DEX_NIGHT
    dexendareadata


specialareas SPECIES_514, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_514, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_515, DEX_MORNING
    dexendareadata


specialareas SPECIES_515, DEX_DAY
    dexendareadata


specialareas SPECIES_515, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_515, DEX_MORNING
    dexendareadata


routesandcities SPECIES_515, DEX_DAY
    dexendareadata


routesandcities SPECIES_515, DEX_NIGHT
    dexendareadata


specialareas SPECIES_515, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_515, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_516, DEX_MORNING
    dexendareadata


specialareas SPECIES_516, DEX_DAY
    dexendareadata


specialareas SPECIES_516, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_516, DEX_MORNING
    dexendareadata


routesandcities SPECIES_516, DEX_DAY
    dexendareadata


routesandcities SPECIES_516, DEX_NIGHT
    dexendareadata


specialareas SPECIES_516, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_516, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_517, DEX_MORNING
    dexendareadata


specialareas SPECIES_517, DEX_DAY
    dexendareadata


specialareas SPECIES_517, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_517, DEX_MORNING
    dexendareadata


routesandcities SPECIES_517, DEX_DAY
    dexendareadata


routesandcities SPECIES_517, DEX_NIGHT
    dexendareadata


specialareas SPECIES_517, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_517, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_518, DEX_MORNING
    dexendareadata


specialareas SPECIES_518, DEX_DAY
    dexendareadata


specialareas SPECIES_518, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_518, DEX_MORNING
    dexendareadata


routesandcities SPECIES_518, DEX_DAY
    dexendareadata


routesandcities SPECIES_518, DEX_NIGHT
    dexendareadata


specialareas SPECIES_518, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_518, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_519, DEX_MORNING
    dexendareadata


specialareas SPECIES_519, DEX_DAY
    dexendareadata


specialareas SPECIES_519, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_519, DEX_MORNING
    dexendareadata


routesandcities SPECIES_519, DEX_DAY
    dexendareadata


routesandcities SPECIES_519, DEX_NIGHT
    dexendareadata


specialareas SPECIES_519, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_519, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_520, DEX_MORNING
    dexendareadata


specialareas SPECIES_520, DEX_DAY
    dexendareadata


specialareas SPECIES_520, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_520, DEX_MORNING
    dexendareadata


routesandcities SPECIES_520, DEX_DAY
    dexendareadata


routesandcities SPECIES_520, DEX_NIGHT
    dexendareadata


specialareas SPECIES_520, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_520, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_521, DEX_MORNING
    dexendareadata


specialareas SPECIES_521, DEX_DAY
    dexendareadata


specialareas SPECIES_521, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_521, DEX_MORNING
    dexendareadata


routesandcities SPECIES_521, DEX_DAY
    dexendareadata


routesandcities SPECIES_521, DEX_NIGHT
    dexendareadata


specialareas SPECIES_521, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_521, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_522, DEX_MORNING
    dexendareadata


specialareas SPECIES_522, DEX_DAY
    dexendareadata


specialareas SPECIES_522, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_522, DEX_MORNING
    dexendareadata


routesandcities SPECIES_522, DEX_DAY
    dexendareadata


routesandcities SPECIES_522, DEX_NIGHT
    dexendareadata


specialareas SPECIES_522, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_522, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_523, DEX_MORNING
    dexendareadata


specialareas SPECIES_523, DEX_DAY
    dexendareadata


specialareas SPECIES_523, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_523, DEX_MORNING
    dexendareadata


routesandcities SPECIES_523, DEX_DAY
    dexendareadata


routesandcities SPECIES_523, DEX_NIGHT
    dexendareadata


specialareas SPECIES_523, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_523, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_524, DEX_MORNING
    dexendareadata


specialareas SPECIES_524, DEX_DAY
    dexendareadata


specialareas SPECIES_524, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_524, DEX_MORNING
    dexendareadata


routesandcities SPECIES_524, DEX_DAY
    dexendareadata


routesandcities SPECIES_524, DEX_NIGHT
    dexendareadata


specialareas SPECIES_524, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_524, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_525, DEX_MORNING
    dexendareadata


specialareas SPECIES_525, DEX_DAY
    dexendareadata


specialareas SPECIES_525, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_525, DEX_MORNING
    dexendareadata


routesandcities SPECIES_525, DEX_DAY
    dexendareadata


routesandcities SPECIES_525, DEX_NIGHT
    dexendareadata


specialareas SPECIES_525, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_525, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_526, DEX_MORNING
    dexendareadata


specialareas SPECIES_526, DEX_DAY
    dexendareadata


specialareas SPECIES_526, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_526, DEX_MORNING
    dexendareadata


routesandcities SPECIES_526, DEX_DAY
    dexendareadata


routesandcities SPECIES_526, DEX_NIGHT
    dexendareadata


specialareas SPECIES_526, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_526, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_527, DEX_MORNING
    dexendareadata


specialareas SPECIES_527, DEX_DAY
    dexendareadata


specialareas SPECIES_527, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_527, DEX_MORNING
    dexendareadata


routesandcities SPECIES_527, DEX_DAY
    dexendareadata


routesandcities SPECIES_527, DEX_NIGHT
    dexendareadata


specialareas SPECIES_527, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_527, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_528, DEX_MORNING
    dexendareadata


specialareas SPECIES_528, DEX_DAY
    dexendareadata


specialareas SPECIES_528, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_528, DEX_MORNING
    dexendareadata


routesandcities SPECIES_528, DEX_DAY
    dexendareadata


routesandcities SPECIES_528, DEX_NIGHT
    dexendareadata


specialareas SPECIES_528, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_528, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_529, DEX_MORNING
    dexendareadata


specialareas SPECIES_529, DEX_DAY
    dexendareadata


specialareas SPECIES_529, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_529, DEX_MORNING
    dexendareadata


routesandcities SPECIES_529, DEX_DAY
    dexendareadata


routesandcities SPECIES_529, DEX_NIGHT
    dexendareadata


specialareas SPECIES_529, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_529, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_530, DEX_MORNING
    dexendareadata


specialareas SPECIES_530, DEX_DAY
    dexendareadata


specialareas SPECIES_530, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_530, DEX_MORNING
    dexendareadata


routesandcities SPECIES_530, DEX_DAY
    dexendareadata


routesandcities SPECIES_530, DEX_NIGHT
    dexendareadata


specialareas SPECIES_530, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_530, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_531, DEX_MORNING
    dexendareadata


specialareas SPECIES_531, DEX_DAY
    dexendareadata


specialareas SPECIES_531, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_531, DEX_MORNING
    dexendareadata


routesandcities SPECIES_531, DEX_DAY
    dexendareadata


routesandcities SPECIES_531, DEX_NIGHT
    dexendareadata


specialareas SPECIES_531, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_531, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_532, DEX_MORNING
    dexendareadata


specialareas SPECIES_532, DEX_DAY
    dexendareadata


specialareas SPECIES_532, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_532, DEX_MORNING
    dexendareadata


routesandcities SPECIES_532, DEX_DAY
    dexendareadata


routesandcities SPECIES_532, DEX_NIGHT
    dexendareadata


specialareas SPECIES_532, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_532, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_533, DEX_MORNING
    dexendareadata


specialareas SPECIES_533, DEX_DAY
    dexendareadata


specialareas SPECIES_533, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_533, DEX_MORNING
    dexendareadata


routesandcities SPECIES_533, DEX_DAY
    dexendareadata


routesandcities SPECIES_533, DEX_NIGHT
    dexendareadata


specialareas SPECIES_533, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_533, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_534, DEX_MORNING
    dexendareadata


specialareas SPECIES_534, DEX_DAY
    dexendareadata


specialareas SPECIES_534, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_534, DEX_MORNING
    dexendareadata


routesandcities SPECIES_534, DEX_DAY
    dexendareadata


routesandcities SPECIES_534, DEX_NIGHT
    dexendareadata


specialareas SPECIES_534, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_534, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_535, DEX_MORNING
    dexendareadata


specialareas SPECIES_535, DEX_DAY
    dexendareadata


specialareas SPECIES_535, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_535, DEX_MORNING
    dexendareadata


routesandcities SPECIES_535, DEX_DAY
    dexendareadata


routesandcities SPECIES_535, DEX_NIGHT
    dexendareadata


specialareas SPECIES_535, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_535, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_536, DEX_MORNING
    dexendareadata


specialareas SPECIES_536, DEX_DAY
    dexendareadata


specialareas SPECIES_536, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_536, DEX_MORNING
    dexendareadata


routesandcities SPECIES_536, DEX_DAY
    dexendareadata


routesandcities SPECIES_536, DEX_NIGHT
    dexendareadata


specialareas SPECIES_536, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_536, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_537, DEX_MORNING
    dexendareadata


specialareas SPECIES_537, DEX_DAY
    dexendareadata


specialareas SPECIES_537, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_537, DEX_MORNING
    dexendareadata


routesandcities SPECIES_537, DEX_DAY
    dexendareadata


routesandcities SPECIES_537, DEX_NIGHT
    dexendareadata


specialareas SPECIES_537, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_537, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_538, DEX_MORNING
    dexendareadata


specialareas SPECIES_538, DEX_DAY
    dexendareadata


specialareas SPECIES_538, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_538, DEX_MORNING
    dexendareadata


routesandcities SPECIES_538, DEX_DAY
    dexendareadata


routesandcities SPECIES_538, DEX_NIGHT
    dexendareadata


specialareas SPECIES_538, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_538, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_539, DEX_MORNING
    dexendareadata


specialareas SPECIES_539, DEX_DAY
    dexendareadata


specialareas SPECIES_539, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_539, DEX_MORNING
    dexendareadata


routesandcities SPECIES_539, DEX_DAY
    dexendareadata


routesandcities SPECIES_539, DEX_NIGHT
    dexendareadata


specialareas SPECIES_539, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_539, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_540, DEX_MORNING
    dexendareadata


specialareas SPECIES_540, DEX_DAY
    dexendareadata


specialareas SPECIES_540, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_540, DEX_MORNING
    dexendareadata


routesandcities SPECIES_540, DEX_DAY
    dexendareadata


routesandcities SPECIES_540, DEX_NIGHT
    dexendareadata


specialareas SPECIES_540, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_540, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_541, DEX_MORNING
    dexendareadata


specialareas SPECIES_541, DEX_DAY
    dexendareadata


specialareas SPECIES_541, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_541, DEX_MORNING
    dexendareadata


routesandcities SPECIES_541, DEX_DAY
    dexendareadata


routesandcities SPECIES_541, DEX_NIGHT
    dexendareadata


specialareas SPECIES_541, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_541, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_542, DEX_MORNING
    dexendareadata


specialareas SPECIES_542, DEX_DAY
    dexendareadata


specialareas SPECIES_542, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_542, DEX_MORNING
    dexendareadata


routesandcities SPECIES_542, DEX_DAY
    dexendareadata


routesandcities SPECIES_542, DEX_NIGHT
    dexendareadata


specialareas SPECIES_542, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_542, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_543, DEX_MORNING
    dexendareadata


specialareas SPECIES_543, DEX_DAY
    dexendareadata


specialareas SPECIES_543, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_543, DEX_MORNING
    dexendareadata


routesandcities SPECIES_543, DEX_DAY
    dexendareadata


routesandcities SPECIES_543, DEX_NIGHT
    dexendareadata


specialareas SPECIES_543, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_543, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VICTINI, DEX_MORNING
    dexendareadata


specialareas SPECIES_VICTINI, DEX_DAY
    dexendareadata


specialareas SPECIES_VICTINI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VICTINI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VICTINI, DEX_DAY
    dexendareadata


routesandcities SPECIES_VICTINI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VICTINI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VICTINI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SNIVY, DEX_MORNING
    dexendareadata


specialareas SPECIES_SNIVY, DEX_DAY
    dexendareadata


specialareas SPECIES_SNIVY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SNIVY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SNIVY, DEX_DAY
    dexendareadata


routesandcities SPECIES_SNIVY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SNIVY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SNIVY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SERVINE, DEX_MORNING
    dexendareadata


specialareas SPECIES_SERVINE, DEX_DAY
    dexendareadata


specialareas SPECIES_SERVINE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SERVINE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SERVINE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SERVINE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SERVINE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SERVINE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SERPERIOR, DEX_MORNING
    dexendareadata


specialareas SPECIES_SERPERIOR, DEX_DAY
    dexendareadata


specialareas SPECIES_SERPERIOR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SERPERIOR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SERPERIOR, DEX_DAY
    dexendareadata


routesandcities SPECIES_SERPERIOR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SERPERIOR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SERPERIOR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TEPIG, DEX_MORNING
    dexendareadata


specialareas SPECIES_TEPIG, DEX_DAY
    dexendareadata


specialareas SPECIES_TEPIG, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TEPIG, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TEPIG, DEX_DAY
    dexendareadata


routesandcities SPECIES_TEPIG, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TEPIG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TEPIG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PIGNITE, DEX_MORNING
    dexendareadata


specialareas SPECIES_PIGNITE, DEX_DAY
    dexendareadata


specialareas SPECIES_PIGNITE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PIGNITE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PIGNITE, DEX_DAY
    dexendareadata


routesandcities SPECIES_PIGNITE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PIGNITE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PIGNITE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_EMBOAR, DEX_MORNING
    dexendareadata


specialareas SPECIES_EMBOAR, DEX_DAY
    dexendareadata


specialareas SPECIES_EMBOAR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_EMBOAR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_EMBOAR, DEX_DAY
    dexendareadata


routesandcities SPECIES_EMBOAR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_EMBOAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_EMBOAR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_OSHAWOTT, DEX_MORNING
    dexendareadata


specialareas SPECIES_OSHAWOTT, DEX_DAY
    dexendareadata


specialareas SPECIES_OSHAWOTT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_OSHAWOTT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_OSHAWOTT, DEX_DAY
    dexendareadata


routesandcities SPECIES_OSHAWOTT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_OSHAWOTT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_OSHAWOTT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DEWOTT, DEX_MORNING
    dexendareadata


specialareas SPECIES_DEWOTT, DEX_DAY
    dexendareadata


specialareas SPECIES_DEWOTT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DEWOTT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DEWOTT, DEX_DAY
    dexendareadata


routesandcities SPECIES_DEWOTT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DEWOTT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DEWOTT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SAMUROTT, DEX_MORNING
    dexendareadata


specialareas SPECIES_SAMUROTT, DEX_DAY
    dexendareadata


specialareas SPECIES_SAMUROTT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SAMUROTT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SAMUROTT, DEX_DAY
    dexendareadata


routesandcities SPECIES_SAMUROTT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SAMUROTT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SAMUROTT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PATRAT, DEX_MORNING
    dexendareadata


specialareas SPECIES_PATRAT, DEX_DAY
    dexendareadata


specialareas SPECIES_PATRAT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PATRAT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PATRAT, DEX_DAY
    dexendareadata


routesandcities SPECIES_PATRAT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PATRAT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PATRAT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WATCHOG, DEX_MORNING
    dexendareadata


specialareas SPECIES_WATCHOG, DEX_DAY
    dexendareadata


specialareas SPECIES_WATCHOG, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WATCHOG, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WATCHOG, DEX_DAY
    dexendareadata


routesandcities SPECIES_WATCHOG, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WATCHOG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WATCHOG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LILLIPUP, DEX_MORNING
    dexendareadata


specialareas SPECIES_LILLIPUP, DEX_DAY
    dexendareadata


specialareas SPECIES_LILLIPUP, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LILLIPUP, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LILLIPUP, DEX_DAY
    dexendareadata


routesandcities SPECIES_LILLIPUP, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LILLIPUP, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LILLIPUP, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HERDIER, DEX_MORNING
    dexendareadata


specialareas SPECIES_HERDIER, DEX_DAY
    dexendareadata


specialareas SPECIES_HERDIER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HERDIER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HERDIER, DEX_DAY
    dexendareadata


routesandcities SPECIES_HERDIER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HERDIER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HERDIER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_STOUTLAND, DEX_MORNING
    dexendareadata


specialareas SPECIES_STOUTLAND, DEX_DAY
    dexendareadata


specialareas SPECIES_STOUTLAND, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_STOUTLAND, DEX_MORNING
    dexendareadata


routesandcities SPECIES_STOUTLAND, DEX_DAY
    dexendareadata


routesandcities SPECIES_STOUTLAND, DEX_NIGHT
    dexendareadata


specialareas SPECIES_STOUTLAND, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_STOUTLAND, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PURRLOIN, DEX_MORNING
    dexendareadata


specialareas SPECIES_PURRLOIN, DEX_DAY
    dexendareadata


specialareas SPECIES_PURRLOIN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PURRLOIN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PURRLOIN, DEX_DAY
    dexendareadata


routesandcities SPECIES_PURRLOIN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PURRLOIN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PURRLOIN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LIEPARD, DEX_MORNING
    dexendareadata


specialareas SPECIES_LIEPARD, DEX_DAY
    dexendareadata


specialareas SPECIES_LIEPARD, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LIEPARD, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LIEPARD, DEX_DAY
    dexendareadata


routesandcities SPECIES_LIEPARD, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LIEPARD, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LIEPARD, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PANSAGE, DEX_MORNING
    dexendareadata


specialareas SPECIES_PANSAGE, DEX_DAY
    dexendareadata


specialareas SPECIES_PANSAGE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PANSAGE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PANSAGE, DEX_DAY
    dexendareadata


routesandcities SPECIES_PANSAGE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PANSAGE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PANSAGE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SIMISAGE, DEX_MORNING
    dexendareadata


specialareas SPECIES_SIMISAGE, DEX_DAY
    dexendareadata


specialareas SPECIES_SIMISAGE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SIMISAGE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SIMISAGE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SIMISAGE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SIMISAGE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SIMISAGE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PANSEAR, DEX_MORNING
    dexendareadata


specialareas SPECIES_PANSEAR, DEX_DAY
    dexendareadata


specialareas SPECIES_PANSEAR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PANSEAR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PANSEAR, DEX_DAY
    dexendareadata


routesandcities SPECIES_PANSEAR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PANSEAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PANSEAR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SIMISEAR, DEX_MORNING
    dexendareadata


specialareas SPECIES_SIMISEAR, DEX_DAY
    dexendareadata


specialareas SPECIES_SIMISEAR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SIMISEAR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SIMISEAR, DEX_DAY
    dexendareadata


routesandcities SPECIES_SIMISEAR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SIMISEAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SIMISEAR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PANPOUR, DEX_MORNING
    dexendareadata


specialareas SPECIES_PANPOUR, DEX_DAY
    dexendareadata


specialareas SPECIES_PANPOUR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PANPOUR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PANPOUR, DEX_DAY
    dexendareadata


routesandcities SPECIES_PANPOUR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PANPOUR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PANPOUR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SIMIPOUR, DEX_MORNING
    dexendareadata


specialareas SPECIES_SIMIPOUR, DEX_DAY
    dexendareadata


specialareas SPECIES_SIMIPOUR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SIMIPOUR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SIMIPOUR, DEX_DAY
    dexendareadata


routesandcities SPECIES_SIMIPOUR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SIMIPOUR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SIMIPOUR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MUNNA, DEX_MORNING
    dexendareadata


specialareas SPECIES_MUNNA, DEX_DAY
    dexendareadata


specialareas SPECIES_MUNNA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MUNNA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MUNNA, DEX_DAY
    dexendareadata


routesandcities SPECIES_MUNNA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MUNNA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MUNNA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MUSHARNA, DEX_MORNING
    dexendareadata


specialareas SPECIES_MUSHARNA, DEX_DAY
    dexendareadata


specialareas SPECIES_MUSHARNA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MUSHARNA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MUSHARNA, DEX_DAY
    dexendareadata


routesandcities SPECIES_MUSHARNA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MUSHARNA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MUSHARNA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PIDOVE, DEX_MORNING
    dexendareadata


specialareas SPECIES_PIDOVE, DEX_DAY
    dexendareadata


specialareas SPECIES_PIDOVE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PIDOVE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PIDOVE, DEX_DAY
    dexendareadata


routesandcities SPECIES_PIDOVE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PIDOVE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PIDOVE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TRANQUILL, DEX_MORNING
    dexendareadata


specialareas SPECIES_TRANQUILL, DEX_DAY
    dexendareadata


specialareas SPECIES_TRANQUILL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TRANQUILL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TRANQUILL, DEX_DAY
    dexendareadata


routesandcities SPECIES_TRANQUILL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TRANQUILL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TRANQUILL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_UNFEZANT, DEX_MORNING
    dexendareadata


specialareas SPECIES_UNFEZANT, DEX_DAY
    dexendareadata


specialareas SPECIES_UNFEZANT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_UNFEZANT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_UNFEZANT, DEX_DAY
    dexendareadata


routesandcities SPECIES_UNFEZANT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_UNFEZANT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_UNFEZANT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BLITZLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_BLITZLE, DEX_DAY
    dexendareadata


specialareas SPECIES_BLITZLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BLITZLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BLITZLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_BLITZLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BLITZLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BLITZLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ZEBSTRIKA, DEX_MORNING
    dexendareadata


specialareas SPECIES_ZEBSTRIKA, DEX_DAY
    dexendareadata


specialareas SPECIES_ZEBSTRIKA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ZEBSTRIKA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ZEBSTRIKA, DEX_DAY
    dexendareadata


routesandcities SPECIES_ZEBSTRIKA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ZEBSTRIKA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ZEBSTRIKA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ROGGENROLA, DEX_MORNING
    dexendareadata


specialareas SPECIES_ROGGENROLA, DEX_DAY
    dexendareadata


specialareas SPECIES_ROGGENROLA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ROGGENROLA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ROGGENROLA, DEX_DAY
    dexendareadata


routesandcities SPECIES_ROGGENROLA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ROGGENROLA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ROGGENROLA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BOLDORE, DEX_MORNING
    dexendareadata


specialareas SPECIES_BOLDORE, DEX_DAY
    dexendareadata


specialareas SPECIES_BOLDORE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BOLDORE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BOLDORE, DEX_DAY
    dexendareadata


routesandcities SPECIES_BOLDORE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BOLDORE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BOLDORE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GIGALITH, DEX_MORNING
    dexendareadata


specialareas SPECIES_GIGALITH, DEX_DAY
    dexendareadata


specialareas SPECIES_GIGALITH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GIGALITH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GIGALITH, DEX_DAY
    dexendareadata


routesandcities SPECIES_GIGALITH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GIGALITH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GIGALITH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WOOBAT, DEX_MORNING
    dexendareadata


specialareas SPECIES_WOOBAT, DEX_DAY
    dexendareadata


specialareas SPECIES_WOOBAT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WOOBAT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WOOBAT, DEX_DAY
    dexendareadata


routesandcities SPECIES_WOOBAT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WOOBAT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WOOBAT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SWOOBAT, DEX_MORNING
    dexendareadata


specialareas SPECIES_SWOOBAT, DEX_DAY
    dexendareadata


specialareas SPECIES_SWOOBAT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SWOOBAT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SWOOBAT, DEX_DAY
    dexendareadata


routesandcities SPECIES_SWOOBAT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SWOOBAT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SWOOBAT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DRILBUR, DEX_MORNING
    dexendareadata


specialareas SPECIES_DRILBUR, DEX_DAY
    dexendareadata


specialareas SPECIES_DRILBUR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DRILBUR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DRILBUR, DEX_DAY
    dexendareadata


routesandcities SPECIES_DRILBUR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DRILBUR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DRILBUR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_EXCADRILL, DEX_MORNING
    dexendareadata


specialareas SPECIES_EXCADRILL, DEX_DAY
    dexendareadata


specialareas SPECIES_EXCADRILL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_EXCADRILL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_EXCADRILL, DEX_DAY
    dexendareadata


routesandcities SPECIES_EXCADRILL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_EXCADRILL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_EXCADRILL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_AUDINO, DEX_MORNING
    dexendareadata


specialareas SPECIES_AUDINO, DEX_DAY
    dexendareadata


specialareas SPECIES_AUDINO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_AUDINO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_AUDINO, DEX_DAY
    dexendareadata


routesandcities SPECIES_AUDINO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_AUDINO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_AUDINO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TIMBURR, DEX_MORNING
    dexendareadata


specialareas SPECIES_TIMBURR, DEX_DAY
    dexendareadata


specialareas SPECIES_TIMBURR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TIMBURR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TIMBURR, DEX_DAY
    dexendareadata


routesandcities SPECIES_TIMBURR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TIMBURR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TIMBURR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GURDURR, DEX_MORNING
    dexendareadata


specialareas SPECIES_GURDURR, DEX_DAY
    dexendareadata


specialareas SPECIES_GURDURR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GURDURR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GURDURR, DEX_DAY
    dexendareadata


routesandcities SPECIES_GURDURR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GURDURR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GURDURR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CONKELDURR, DEX_MORNING
    dexendareadata


specialareas SPECIES_CONKELDURR, DEX_DAY
    dexendareadata


specialareas SPECIES_CONKELDURR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CONKELDURR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CONKELDURR, DEX_DAY
    dexendareadata


routesandcities SPECIES_CONKELDURR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CONKELDURR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CONKELDURR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TYMPOLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_TYMPOLE, DEX_DAY
    dexendareadata


specialareas SPECIES_TYMPOLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TYMPOLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TYMPOLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_TYMPOLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TYMPOLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TYMPOLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PALPITOAD, DEX_MORNING
    dexendareadata


specialareas SPECIES_PALPITOAD, DEX_DAY
    dexendareadata


specialareas SPECIES_PALPITOAD, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PALPITOAD, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PALPITOAD, DEX_DAY
    dexendareadata


routesandcities SPECIES_PALPITOAD, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PALPITOAD, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PALPITOAD, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SEISMITOAD, DEX_MORNING
    dexendareadata


specialareas SPECIES_SEISMITOAD, DEX_DAY
    dexendareadata


specialareas SPECIES_SEISMITOAD, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SEISMITOAD, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SEISMITOAD, DEX_DAY
    dexendareadata


routesandcities SPECIES_SEISMITOAD, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SEISMITOAD, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SEISMITOAD, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_THROH, DEX_MORNING
    dexendareadata


specialareas SPECIES_THROH, DEX_DAY
    dexendareadata


specialareas SPECIES_THROH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_THROH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_THROH, DEX_DAY
    dexendareadata


routesandcities SPECIES_THROH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_THROH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_THROH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SAWK, DEX_MORNING
    dexendareadata


specialareas SPECIES_SAWK, DEX_DAY
    dexendareadata


specialareas SPECIES_SAWK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SAWK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SAWK, DEX_DAY
    dexendareadata


routesandcities SPECIES_SAWK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SAWK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SAWK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SEWADDLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_SEWADDLE, DEX_DAY
    dexendareadata


specialareas SPECIES_SEWADDLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SEWADDLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SEWADDLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SEWADDLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SEWADDLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SEWADDLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SWADLOON, DEX_MORNING
    dexendareadata


specialareas SPECIES_SWADLOON, DEX_DAY
    dexendareadata


specialareas SPECIES_SWADLOON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SWADLOON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SWADLOON, DEX_DAY
    dexendareadata


routesandcities SPECIES_SWADLOON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SWADLOON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SWADLOON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LEAVANNY, DEX_MORNING
    dexendareadata


specialareas SPECIES_LEAVANNY, DEX_DAY
    dexendareadata


specialareas SPECIES_LEAVANNY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LEAVANNY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LEAVANNY, DEX_DAY
    dexendareadata


routesandcities SPECIES_LEAVANNY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LEAVANNY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LEAVANNY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VENIPEDE, DEX_MORNING
    dexendareadata


specialareas SPECIES_VENIPEDE, DEX_DAY
    dexendareadata


specialareas SPECIES_VENIPEDE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VENIPEDE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VENIPEDE, DEX_DAY
    dexendareadata


routesandcities SPECIES_VENIPEDE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VENIPEDE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VENIPEDE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WHIRLIPEDE, DEX_MORNING
    dexendareadata


specialareas SPECIES_WHIRLIPEDE, DEX_DAY
    dexendareadata


specialareas SPECIES_WHIRLIPEDE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WHIRLIPEDE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WHIRLIPEDE, DEX_DAY
    dexendareadata


routesandcities SPECIES_WHIRLIPEDE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WHIRLIPEDE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WHIRLIPEDE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SCOLIPEDE, DEX_MORNING
    dexendareadata


specialareas SPECIES_SCOLIPEDE, DEX_DAY
    dexendareadata


specialareas SPECIES_SCOLIPEDE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SCOLIPEDE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SCOLIPEDE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SCOLIPEDE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SCOLIPEDE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SCOLIPEDE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_COTTONEE, DEX_MORNING
    dexendareadata


specialareas SPECIES_COTTONEE, DEX_DAY
    dexendareadata


specialareas SPECIES_COTTONEE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_COTTONEE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_COTTONEE, DEX_DAY
    dexendareadata


routesandcities SPECIES_COTTONEE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_COTTONEE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_COTTONEE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WHIMSICOTT, DEX_MORNING
    dexendareadata


specialareas SPECIES_WHIMSICOTT, DEX_DAY
    dexendareadata


specialareas SPECIES_WHIMSICOTT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WHIMSICOTT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WHIMSICOTT, DEX_DAY
    dexendareadata


routesandcities SPECIES_WHIMSICOTT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WHIMSICOTT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WHIMSICOTT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PETILIL, DEX_MORNING
    dexendareadata


specialareas SPECIES_PETILIL, DEX_DAY
    dexendareadata


specialareas SPECIES_PETILIL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PETILIL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PETILIL, DEX_DAY
    dexendareadata


routesandcities SPECIES_PETILIL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PETILIL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PETILIL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LILLIGANT, DEX_MORNING
    dexendareadata


specialareas SPECIES_LILLIGANT, DEX_DAY
    dexendareadata


specialareas SPECIES_LILLIGANT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LILLIGANT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LILLIGANT, DEX_DAY
    dexendareadata


routesandcities SPECIES_LILLIGANT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LILLIGANT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LILLIGANT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BASCULIN, DEX_MORNING
    dexendareadata


specialareas SPECIES_BASCULIN, DEX_DAY
    dexendareadata


specialareas SPECIES_BASCULIN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BASCULIN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BASCULIN, DEX_DAY
    dexendareadata


routesandcities SPECIES_BASCULIN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BASCULIN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BASCULIN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SANDILE, DEX_MORNING
    dexendareadata


specialareas SPECIES_SANDILE, DEX_DAY
    dexendareadata


specialareas SPECIES_SANDILE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SANDILE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SANDILE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SANDILE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SANDILE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SANDILE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KROKOROK, DEX_MORNING
    dexendareadata


specialareas SPECIES_KROKOROK, DEX_DAY
    dexendareadata


specialareas SPECIES_KROKOROK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KROKOROK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KROKOROK, DEX_DAY
    dexendareadata


routesandcities SPECIES_KROKOROK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KROKOROK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KROKOROK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KROOKODILE, DEX_MORNING
    dexendareadata


specialareas SPECIES_KROOKODILE, DEX_DAY
    dexendareadata


specialareas SPECIES_KROOKODILE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KROOKODILE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KROOKODILE, DEX_DAY
    dexendareadata


routesandcities SPECIES_KROOKODILE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KROOKODILE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KROOKODILE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DARUMAKA, DEX_MORNING
    dexendareadata


specialareas SPECIES_DARUMAKA, DEX_DAY
    dexendareadata


specialareas SPECIES_DARUMAKA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DARUMAKA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DARUMAKA, DEX_DAY
    dexendareadata


routesandcities SPECIES_DARUMAKA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DARUMAKA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DARUMAKA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DARMANITAN, DEX_MORNING
    dexendareadata


specialareas SPECIES_DARMANITAN, DEX_DAY
    dexendareadata


specialareas SPECIES_DARMANITAN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DARMANITAN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DARMANITAN, DEX_DAY
    dexendareadata


routesandcities SPECIES_DARMANITAN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DARMANITAN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DARMANITAN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MARACTUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_MARACTUS, DEX_DAY
    dexendareadata


specialareas SPECIES_MARACTUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MARACTUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MARACTUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_MARACTUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MARACTUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MARACTUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DWEBBLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_DWEBBLE, DEX_DAY
    dexendareadata


specialareas SPECIES_DWEBBLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DWEBBLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DWEBBLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_DWEBBLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DWEBBLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DWEBBLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CRUSTLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_CRUSTLE, DEX_DAY
    dexendareadata


specialareas SPECIES_CRUSTLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CRUSTLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CRUSTLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_CRUSTLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CRUSTLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CRUSTLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SCRAGGY, DEX_MORNING
    dexendareadata


specialareas SPECIES_SCRAGGY, DEX_DAY
    dexendareadata


specialareas SPECIES_SCRAGGY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SCRAGGY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SCRAGGY, DEX_DAY
    dexendareadata


routesandcities SPECIES_SCRAGGY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SCRAGGY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SCRAGGY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SCRAFTY, DEX_MORNING
    dexendareadata


specialareas SPECIES_SCRAFTY, DEX_DAY
    dexendareadata


specialareas SPECIES_SCRAFTY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SCRAFTY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SCRAFTY, DEX_DAY
    dexendareadata


routesandcities SPECIES_SCRAFTY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SCRAFTY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SCRAFTY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SIGILYPH, DEX_MORNING
    dexendareadata


specialareas SPECIES_SIGILYPH, DEX_DAY
    dexendareadata


specialareas SPECIES_SIGILYPH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SIGILYPH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SIGILYPH, DEX_DAY
    dexendareadata


routesandcities SPECIES_SIGILYPH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SIGILYPH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SIGILYPH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_YAMASK, DEX_MORNING
    dexendareadata


specialareas SPECIES_YAMASK, DEX_DAY
    dexendareadata


specialareas SPECIES_YAMASK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_YAMASK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_YAMASK, DEX_DAY
    dexendareadata


routesandcities SPECIES_YAMASK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_YAMASK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_YAMASK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_COFAGRIGUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_COFAGRIGUS, DEX_DAY
    dexendareadata


specialareas SPECIES_COFAGRIGUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_COFAGRIGUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_COFAGRIGUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_COFAGRIGUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_COFAGRIGUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_COFAGRIGUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TIRTOUGA, DEX_MORNING
    dexendareadata


specialareas SPECIES_TIRTOUGA, DEX_DAY
    dexendareadata


specialareas SPECIES_TIRTOUGA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TIRTOUGA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TIRTOUGA, DEX_DAY
    dexendareadata


routesandcities SPECIES_TIRTOUGA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TIRTOUGA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TIRTOUGA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CARRACOSTA, DEX_MORNING
    dexendareadata


specialareas SPECIES_CARRACOSTA, DEX_DAY
    dexendareadata


specialareas SPECIES_CARRACOSTA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CARRACOSTA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CARRACOSTA, DEX_DAY
    dexendareadata


routesandcities SPECIES_CARRACOSTA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CARRACOSTA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CARRACOSTA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ARCHEN, DEX_MORNING
    dexendareadata


specialareas SPECIES_ARCHEN, DEX_DAY
    dexendareadata


specialareas SPECIES_ARCHEN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ARCHEN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ARCHEN, DEX_DAY
    dexendareadata


routesandcities SPECIES_ARCHEN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ARCHEN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ARCHEN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ARCHEOPS, DEX_MORNING
    dexendareadata


specialareas SPECIES_ARCHEOPS, DEX_DAY
    dexendareadata


specialareas SPECIES_ARCHEOPS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ARCHEOPS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ARCHEOPS, DEX_DAY
    dexendareadata


routesandcities SPECIES_ARCHEOPS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ARCHEOPS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ARCHEOPS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TRUBBISH, DEX_MORNING
    dexendareadata


specialareas SPECIES_TRUBBISH, DEX_DAY
    dexendareadata


specialareas SPECIES_TRUBBISH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TRUBBISH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TRUBBISH, DEX_DAY
    dexendareadata


routesandcities SPECIES_TRUBBISH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TRUBBISH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TRUBBISH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GARBODOR, DEX_MORNING
    dexendareadata


specialareas SPECIES_GARBODOR, DEX_DAY
    dexendareadata


specialareas SPECIES_GARBODOR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GARBODOR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GARBODOR, DEX_DAY
    dexendareadata


routesandcities SPECIES_GARBODOR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GARBODOR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GARBODOR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ZORUA, DEX_MORNING
    dexendareadata


specialareas SPECIES_ZORUA, DEX_DAY
    dexendareadata


specialareas SPECIES_ZORUA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ZORUA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ZORUA, DEX_DAY
    dexendareadata


routesandcities SPECIES_ZORUA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ZORUA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ZORUA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ZOROARK, DEX_MORNING
    dexendareadata


specialareas SPECIES_ZOROARK, DEX_DAY
    dexendareadata


specialareas SPECIES_ZOROARK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ZOROARK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ZOROARK, DEX_DAY
    dexendareadata


routesandcities SPECIES_ZOROARK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ZOROARK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ZOROARK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MINCCINO, DEX_MORNING
    dexendareadata


specialareas SPECIES_MINCCINO, DEX_DAY
    dexendareadata


specialareas SPECIES_MINCCINO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MINCCINO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MINCCINO, DEX_DAY
    dexendareadata


routesandcities SPECIES_MINCCINO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MINCCINO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MINCCINO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CINCCINO, DEX_MORNING
    dexendareadata


specialareas SPECIES_CINCCINO, DEX_DAY
    dexendareadata


specialareas SPECIES_CINCCINO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CINCCINO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CINCCINO, DEX_DAY
    dexendareadata


routesandcities SPECIES_CINCCINO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CINCCINO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CINCCINO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GOTHITA, DEX_MORNING
    dexendareadata


specialareas SPECIES_GOTHITA, DEX_DAY
    dexendareadata


specialareas SPECIES_GOTHITA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GOTHITA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GOTHITA, DEX_DAY
    dexendareadata


routesandcities SPECIES_GOTHITA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GOTHITA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GOTHITA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GOTHORITA, DEX_MORNING
    dexendareadata


specialareas SPECIES_GOTHORITA, DEX_DAY
    dexendareadata


specialareas SPECIES_GOTHORITA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GOTHORITA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GOTHORITA, DEX_DAY
    dexendareadata


routesandcities SPECIES_GOTHORITA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GOTHORITA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GOTHORITA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GOTHITELLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_GOTHITELLE, DEX_DAY
    dexendareadata


specialareas SPECIES_GOTHITELLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GOTHITELLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GOTHITELLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_GOTHITELLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GOTHITELLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GOTHITELLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SOLOSIS, DEX_MORNING
    dexendareadata


specialareas SPECIES_SOLOSIS, DEX_DAY
    dexendareadata


specialareas SPECIES_SOLOSIS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SOLOSIS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SOLOSIS, DEX_DAY
    dexendareadata


routesandcities SPECIES_SOLOSIS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SOLOSIS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SOLOSIS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DUOSION, DEX_MORNING
    dexendareadata


specialareas SPECIES_DUOSION, DEX_DAY
    dexendareadata


specialareas SPECIES_DUOSION, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DUOSION, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DUOSION, DEX_DAY
    dexendareadata


routesandcities SPECIES_DUOSION, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DUOSION, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DUOSION, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_REUNICLUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_REUNICLUS, DEX_DAY
    dexendareadata


specialareas SPECIES_REUNICLUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_REUNICLUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_REUNICLUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_REUNICLUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_REUNICLUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_REUNICLUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DUCKLETT, DEX_MORNING
    dexendareadata


specialareas SPECIES_DUCKLETT, DEX_DAY
    dexendareadata


specialareas SPECIES_DUCKLETT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DUCKLETT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DUCKLETT, DEX_DAY
    dexendareadata


routesandcities SPECIES_DUCKLETT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DUCKLETT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DUCKLETT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SWANNA, DEX_MORNING
    dexendareadata


specialareas SPECIES_SWANNA, DEX_DAY
    dexendareadata


specialareas SPECIES_SWANNA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SWANNA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SWANNA, DEX_DAY
    dexendareadata


routesandcities SPECIES_SWANNA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SWANNA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SWANNA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VANILLITE, DEX_MORNING
    dexendareadata


specialareas SPECIES_VANILLITE, DEX_DAY
    dexendareadata


specialareas SPECIES_VANILLITE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VANILLITE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VANILLITE, DEX_DAY
    dexendareadata


routesandcities SPECIES_VANILLITE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VANILLITE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VANILLITE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VANILLISH, DEX_MORNING
    dexendareadata


specialareas SPECIES_VANILLISH, DEX_DAY
    dexendareadata


specialareas SPECIES_VANILLISH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VANILLISH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VANILLISH, DEX_DAY
    dexendareadata


routesandcities SPECIES_VANILLISH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VANILLISH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VANILLISH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VANILLUXE, DEX_MORNING
    dexendareadata


specialareas SPECIES_VANILLUXE, DEX_DAY
    dexendareadata


specialareas SPECIES_VANILLUXE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VANILLUXE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VANILLUXE, DEX_DAY
    dexendareadata


routesandcities SPECIES_VANILLUXE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VANILLUXE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VANILLUXE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DEERLING, DEX_MORNING
    dexendareadata


specialareas SPECIES_DEERLING, DEX_DAY
    dexendareadata


specialareas SPECIES_DEERLING, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DEERLING, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DEERLING, DEX_DAY
    dexendareadata


routesandcities SPECIES_DEERLING, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DEERLING, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DEERLING, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SAWSBUCK, DEX_MORNING
    dexendareadata


specialareas SPECIES_SAWSBUCK, DEX_DAY
    dexendareadata


specialareas SPECIES_SAWSBUCK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SAWSBUCK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SAWSBUCK, DEX_DAY
    dexendareadata


routesandcities SPECIES_SAWSBUCK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SAWSBUCK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SAWSBUCK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_EMOLGA, DEX_MORNING
    dexendareadata


specialareas SPECIES_EMOLGA, DEX_DAY
    dexendareadata


specialareas SPECIES_EMOLGA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_EMOLGA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_EMOLGA, DEX_DAY
    dexendareadata


routesandcities SPECIES_EMOLGA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_EMOLGA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_EMOLGA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KARRABLAST, DEX_MORNING
    dexendareadata


specialareas SPECIES_KARRABLAST, DEX_DAY
    dexendareadata


specialareas SPECIES_KARRABLAST, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KARRABLAST, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KARRABLAST, DEX_DAY
    dexendareadata


routesandcities SPECIES_KARRABLAST, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KARRABLAST, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KARRABLAST, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ESCAVALIER, DEX_MORNING
    dexendareadata


specialareas SPECIES_ESCAVALIER, DEX_DAY
    dexendareadata


specialareas SPECIES_ESCAVALIER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ESCAVALIER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ESCAVALIER, DEX_DAY
    dexendareadata


routesandcities SPECIES_ESCAVALIER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ESCAVALIER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ESCAVALIER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FOONGUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_FOONGUS, DEX_DAY
    dexendareadata


specialareas SPECIES_FOONGUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FOONGUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FOONGUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_FOONGUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FOONGUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FOONGUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_AMOONGUSS, DEX_MORNING
    dexendareadata


specialareas SPECIES_AMOONGUSS, DEX_DAY
    dexendareadata


specialareas SPECIES_AMOONGUSS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_AMOONGUSS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_AMOONGUSS, DEX_DAY
    dexendareadata


routesandcities SPECIES_AMOONGUSS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_AMOONGUSS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_AMOONGUSS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FRILLISH, DEX_MORNING
    dexendareadata


specialareas SPECIES_FRILLISH, DEX_DAY
    dexendareadata


specialareas SPECIES_FRILLISH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FRILLISH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FRILLISH, DEX_DAY
    dexendareadata


routesandcities SPECIES_FRILLISH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FRILLISH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FRILLISH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_JELLICENT, DEX_MORNING
    dexendareadata


specialareas SPECIES_JELLICENT, DEX_DAY
    dexendareadata


specialareas SPECIES_JELLICENT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_JELLICENT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_JELLICENT, DEX_DAY
    dexendareadata


routesandcities SPECIES_JELLICENT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_JELLICENT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_JELLICENT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ALOMOMOLA, DEX_MORNING
    dexendareadata


specialareas SPECIES_ALOMOMOLA, DEX_DAY
    dexendareadata


specialareas SPECIES_ALOMOMOLA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ALOMOMOLA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ALOMOMOLA, DEX_DAY
    dexendareadata


routesandcities SPECIES_ALOMOMOLA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ALOMOMOLA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ALOMOMOLA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_JOLTIK, DEX_MORNING
    dexendareadata


specialareas SPECIES_JOLTIK, DEX_DAY
    dexendareadata


specialareas SPECIES_JOLTIK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_JOLTIK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_JOLTIK, DEX_DAY
    dexendareadata


routesandcities SPECIES_JOLTIK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_JOLTIK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_JOLTIK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GALVANTULA, DEX_MORNING
    dexendareadata


specialareas SPECIES_GALVANTULA, DEX_DAY
    dexendareadata


specialareas SPECIES_GALVANTULA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GALVANTULA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GALVANTULA, DEX_DAY
    dexendareadata


routesandcities SPECIES_GALVANTULA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GALVANTULA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GALVANTULA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FERROSEED, DEX_MORNING
    dexendareadata


specialareas SPECIES_FERROSEED, DEX_DAY
    dexendareadata


specialareas SPECIES_FERROSEED, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FERROSEED, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FERROSEED, DEX_DAY
    dexendareadata


routesandcities SPECIES_FERROSEED, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FERROSEED, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FERROSEED, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FERROTHORN, DEX_MORNING
    dexendareadata


specialareas SPECIES_FERROTHORN, DEX_DAY
    dexendareadata


specialareas SPECIES_FERROTHORN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FERROTHORN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FERROTHORN, DEX_DAY
    dexendareadata


routesandcities SPECIES_FERROTHORN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FERROTHORN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FERROTHORN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KLINK, DEX_MORNING
    dexendareadata


specialareas SPECIES_KLINK, DEX_DAY
    dexendareadata


specialareas SPECIES_KLINK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KLINK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KLINK, DEX_DAY
    dexendareadata


routesandcities SPECIES_KLINK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KLINK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KLINK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KLANG, DEX_MORNING
    dexendareadata


specialareas SPECIES_KLANG, DEX_DAY
    dexendareadata


specialareas SPECIES_KLANG, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KLANG, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KLANG, DEX_DAY
    dexendareadata


routesandcities SPECIES_KLANG, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KLANG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KLANG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KLINKLANG, DEX_MORNING
    dexendareadata


specialareas SPECIES_KLINKLANG, DEX_DAY
    dexendareadata


specialareas SPECIES_KLINKLANG, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KLINKLANG, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KLINKLANG, DEX_DAY
    dexendareadata


routesandcities SPECIES_KLINKLANG, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KLINKLANG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KLINKLANG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TYNAMO, DEX_MORNING
    dexendareadata


specialareas SPECIES_TYNAMO, DEX_DAY
    dexendareadata


specialareas SPECIES_TYNAMO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TYNAMO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TYNAMO, DEX_DAY
    dexendareadata


routesandcities SPECIES_TYNAMO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TYNAMO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TYNAMO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_EELEKTRIK, DEX_MORNING
    dexendareadata


specialareas SPECIES_EELEKTRIK, DEX_DAY
    dexendareadata


specialareas SPECIES_EELEKTRIK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_EELEKTRIK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_EELEKTRIK, DEX_DAY
    dexendareadata


routesandcities SPECIES_EELEKTRIK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_EELEKTRIK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_EELEKTRIK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_EELEKTROSS, DEX_MORNING
    dexendareadata


specialareas SPECIES_EELEKTROSS, DEX_DAY
    dexendareadata


specialareas SPECIES_EELEKTROSS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_EELEKTROSS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_EELEKTROSS, DEX_DAY
    dexendareadata


routesandcities SPECIES_EELEKTROSS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_EELEKTROSS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_EELEKTROSS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ELGYEM, DEX_MORNING
    dexendareadata


specialareas SPECIES_ELGYEM, DEX_DAY
    dexendareadata


specialareas SPECIES_ELGYEM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ELGYEM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ELGYEM, DEX_DAY
    dexendareadata


routesandcities SPECIES_ELGYEM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ELGYEM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ELGYEM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BEHEEYEM, DEX_MORNING
    dexendareadata


specialareas SPECIES_BEHEEYEM, DEX_DAY
    dexendareadata


specialareas SPECIES_BEHEEYEM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BEHEEYEM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BEHEEYEM, DEX_DAY
    dexendareadata


routesandcities SPECIES_BEHEEYEM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BEHEEYEM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BEHEEYEM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LITWICK, DEX_MORNING
    dexendareadata


specialareas SPECIES_LITWICK, DEX_DAY
    dexendareadata


specialareas SPECIES_LITWICK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LITWICK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LITWICK, DEX_DAY
    dexendareadata


routesandcities SPECIES_LITWICK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LITWICK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LITWICK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LAMPENT, DEX_MORNING
    dexendareadata


specialareas SPECIES_LAMPENT, DEX_DAY
    dexendareadata


specialareas SPECIES_LAMPENT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LAMPENT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LAMPENT, DEX_DAY
    dexendareadata


routesandcities SPECIES_LAMPENT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LAMPENT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LAMPENT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHANDELURE, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHANDELURE, DEX_DAY
    dexendareadata


specialareas SPECIES_CHANDELURE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHANDELURE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHANDELURE, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHANDELURE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHANDELURE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CHANDELURE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_AXEW, DEX_MORNING
    dexendareadata


specialareas SPECIES_AXEW, DEX_DAY
    dexendareadata


specialareas SPECIES_AXEW, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_AXEW, DEX_MORNING
    dexendareadata


routesandcities SPECIES_AXEW, DEX_DAY
    dexendareadata


routesandcities SPECIES_AXEW, DEX_NIGHT
    dexendareadata


specialareas SPECIES_AXEW, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_AXEW, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FRAXURE, DEX_MORNING
    dexendareadata


specialareas SPECIES_FRAXURE, DEX_DAY
    dexendareadata


specialareas SPECIES_FRAXURE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FRAXURE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FRAXURE, DEX_DAY
    dexendareadata


routesandcities SPECIES_FRAXURE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FRAXURE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FRAXURE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HAXORUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_HAXORUS, DEX_DAY
    dexendareadata


specialareas SPECIES_HAXORUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HAXORUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HAXORUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_HAXORUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HAXORUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HAXORUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CUBCHOO, DEX_MORNING
    dexendareadata


specialareas SPECIES_CUBCHOO, DEX_DAY
    dexendareadata


specialareas SPECIES_CUBCHOO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CUBCHOO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CUBCHOO, DEX_DAY
    dexendareadata


routesandcities SPECIES_CUBCHOO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CUBCHOO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CUBCHOO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BEARTIC, DEX_MORNING
    dexendareadata


specialareas SPECIES_BEARTIC, DEX_DAY
    dexendareadata


specialareas SPECIES_BEARTIC, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BEARTIC, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BEARTIC, DEX_DAY
    dexendareadata


routesandcities SPECIES_BEARTIC, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BEARTIC, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BEARTIC, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CRYOGONAL, DEX_MORNING
    dexendareadata


specialareas SPECIES_CRYOGONAL, DEX_DAY
    dexendareadata


specialareas SPECIES_CRYOGONAL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CRYOGONAL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CRYOGONAL, DEX_DAY
    dexendareadata


routesandcities SPECIES_CRYOGONAL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CRYOGONAL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CRYOGONAL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SHELMET, DEX_MORNING
    dexendareadata


specialareas SPECIES_SHELMET, DEX_DAY
    dexendareadata


specialareas SPECIES_SHELMET, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SHELMET, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SHELMET, DEX_DAY
    dexendareadata


routesandcities SPECIES_SHELMET, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SHELMET, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SHELMET, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ACCELGOR, DEX_MORNING
    dexendareadata


specialareas SPECIES_ACCELGOR, DEX_DAY
    dexendareadata


specialareas SPECIES_ACCELGOR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ACCELGOR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ACCELGOR, DEX_DAY
    dexendareadata


routesandcities SPECIES_ACCELGOR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ACCELGOR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ACCELGOR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_STUNFISK, DEX_MORNING
    dexendareadata


specialareas SPECIES_STUNFISK, DEX_DAY
    dexendareadata


specialareas SPECIES_STUNFISK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_STUNFISK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_STUNFISK, DEX_DAY
    dexendareadata


routesandcities SPECIES_STUNFISK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_STUNFISK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_STUNFISK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MIENFOO, DEX_MORNING
    dexendareadata


specialareas SPECIES_MIENFOO, DEX_DAY
    dexendareadata


specialareas SPECIES_MIENFOO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MIENFOO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MIENFOO, DEX_DAY
    dexendareadata


routesandcities SPECIES_MIENFOO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MIENFOO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MIENFOO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MIENSHAO, DEX_MORNING
    dexendareadata


specialareas SPECIES_MIENSHAO, DEX_DAY
    dexendareadata


specialareas SPECIES_MIENSHAO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MIENSHAO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MIENSHAO, DEX_DAY
    dexendareadata


routesandcities SPECIES_MIENSHAO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MIENSHAO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MIENSHAO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DRUDDIGON, DEX_MORNING
    dexendareadata


specialareas SPECIES_DRUDDIGON, DEX_DAY
    dexendareadata


specialareas SPECIES_DRUDDIGON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DRUDDIGON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DRUDDIGON, DEX_DAY
    dexendareadata


routesandcities SPECIES_DRUDDIGON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DRUDDIGON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DRUDDIGON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GOLETT, DEX_MORNING
    dexendareadata


specialareas SPECIES_GOLETT, DEX_DAY
    dexendareadata


specialareas SPECIES_GOLETT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GOLETT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GOLETT, DEX_DAY
    dexendareadata


routesandcities SPECIES_GOLETT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GOLETT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GOLETT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GOLURK, DEX_MORNING
    dexendareadata


specialareas SPECIES_GOLURK, DEX_DAY
    dexendareadata


specialareas SPECIES_GOLURK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GOLURK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GOLURK, DEX_DAY
    dexendareadata


routesandcities SPECIES_GOLURK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GOLURK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GOLURK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PAWNIARD, DEX_MORNING
    dexendareadata


specialareas SPECIES_PAWNIARD, DEX_DAY
    dexendareadata


specialareas SPECIES_PAWNIARD, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PAWNIARD, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PAWNIARD, DEX_DAY
    dexendareadata


routesandcities SPECIES_PAWNIARD, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PAWNIARD, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PAWNIARD, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BISHARP, DEX_MORNING
    dexendareadata


specialareas SPECIES_BISHARP, DEX_DAY
    dexendareadata


specialareas SPECIES_BISHARP, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BISHARP, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BISHARP, DEX_DAY
    dexendareadata


routesandcities SPECIES_BISHARP, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BISHARP, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BISHARP, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BOUFFALANT, DEX_MORNING
    dexendareadata


specialareas SPECIES_BOUFFALANT, DEX_DAY
    dexendareadata


specialareas SPECIES_BOUFFALANT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BOUFFALANT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BOUFFALANT, DEX_DAY
    dexendareadata


routesandcities SPECIES_BOUFFALANT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BOUFFALANT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BOUFFALANT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RUFFLET, DEX_MORNING
    dexendareadata


specialareas SPECIES_RUFFLET, DEX_DAY
    dexendareadata


specialareas SPECIES_RUFFLET, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RUFFLET, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RUFFLET, DEX_DAY
    dexendareadata


routesandcities SPECIES_RUFFLET, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RUFFLET, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RUFFLET, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BRAVIARY, DEX_MORNING
    dexendareadata


specialareas SPECIES_BRAVIARY, DEX_DAY
    dexendareadata


specialareas SPECIES_BRAVIARY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BRAVIARY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BRAVIARY, DEX_DAY
    dexendareadata


routesandcities SPECIES_BRAVIARY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BRAVIARY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BRAVIARY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VULLABY, DEX_MORNING
    dexendareadata


specialareas SPECIES_VULLABY, DEX_DAY
    dexendareadata


specialareas SPECIES_VULLABY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VULLABY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VULLABY, DEX_DAY
    dexendareadata


routesandcities SPECIES_VULLABY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VULLABY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VULLABY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MANDIBUZZ, DEX_MORNING
    dexendareadata


specialareas SPECIES_MANDIBUZZ, DEX_DAY
    dexendareadata


specialareas SPECIES_MANDIBUZZ, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MANDIBUZZ, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MANDIBUZZ, DEX_DAY
    dexendareadata


routesandcities SPECIES_MANDIBUZZ, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MANDIBUZZ, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MANDIBUZZ, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HEATMOR, DEX_MORNING
    dexendareadata


specialareas SPECIES_HEATMOR, DEX_DAY
    dexendareadata


specialareas SPECIES_HEATMOR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HEATMOR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HEATMOR, DEX_DAY
    dexendareadata


routesandcities SPECIES_HEATMOR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HEATMOR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HEATMOR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DURANT, DEX_MORNING
    dexendareadata


specialareas SPECIES_DURANT, DEX_DAY
    dexendareadata


specialareas SPECIES_DURANT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DURANT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DURANT, DEX_DAY
    dexendareadata


routesandcities SPECIES_DURANT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DURANT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DURANT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DEINO, DEX_MORNING
    dexendareadata


specialareas SPECIES_DEINO, DEX_DAY
    dexendareadata


specialareas SPECIES_DEINO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DEINO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DEINO, DEX_DAY
    dexendareadata


routesandcities SPECIES_DEINO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DEINO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DEINO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ZWEILOUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_ZWEILOUS, DEX_DAY
    dexendareadata


specialareas SPECIES_ZWEILOUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ZWEILOUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ZWEILOUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_ZWEILOUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ZWEILOUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ZWEILOUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HYDREIGON, DEX_MORNING
    dexendareadata


specialareas SPECIES_HYDREIGON, DEX_DAY
    dexendareadata


specialareas SPECIES_HYDREIGON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HYDREIGON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HYDREIGON, DEX_DAY
    dexendareadata


routesandcities SPECIES_HYDREIGON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HYDREIGON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HYDREIGON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LARVESTA, DEX_MORNING
    dexendareadata


specialareas SPECIES_LARVESTA, DEX_DAY
    dexendareadata


specialareas SPECIES_LARVESTA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LARVESTA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LARVESTA, DEX_DAY
    dexendareadata


routesandcities SPECIES_LARVESTA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LARVESTA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LARVESTA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VOLCARONA, DEX_MORNING
    dexendareadata


specialareas SPECIES_VOLCARONA, DEX_DAY
    dexendareadata


specialareas SPECIES_VOLCARONA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VOLCARONA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VOLCARONA, DEX_DAY
    dexendareadata


routesandcities SPECIES_VOLCARONA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VOLCARONA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VOLCARONA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_COBALION, DEX_MORNING
    dexendareadata


specialareas SPECIES_COBALION, DEX_DAY
    dexendareadata


specialareas SPECIES_COBALION, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_COBALION, DEX_MORNING
    dexendareadata


routesandcities SPECIES_COBALION, DEX_DAY
    dexendareadata


routesandcities SPECIES_COBALION, DEX_NIGHT
    dexendareadata


specialareas SPECIES_COBALION, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_COBALION, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TERRAKION, DEX_MORNING
    dexendareadata


specialareas SPECIES_TERRAKION, DEX_DAY
    dexendareadata


specialareas SPECIES_TERRAKION, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TERRAKION, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TERRAKION, DEX_DAY
    dexendareadata


routesandcities SPECIES_TERRAKION, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TERRAKION, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TERRAKION, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VIRIZION, DEX_MORNING
    dexendareadata


specialareas SPECIES_VIRIZION, DEX_DAY
    dexendareadata


specialareas SPECIES_VIRIZION, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VIRIZION, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VIRIZION, DEX_DAY
    dexendareadata


routesandcities SPECIES_VIRIZION, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VIRIZION, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VIRIZION, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TORNADUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_TORNADUS, DEX_DAY
    dexendareadata


specialareas SPECIES_TORNADUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TORNADUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TORNADUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_TORNADUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TORNADUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TORNADUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_THUNDURUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_THUNDURUS, DEX_DAY
    dexendareadata


specialareas SPECIES_THUNDURUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_THUNDURUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_THUNDURUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_THUNDURUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_THUNDURUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_THUNDURUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RESHIRAM, DEX_MORNING
    dexendareadata


specialareas SPECIES_RESHIRAM, DEX_DAY
    dexendareadata


specialareas SPECIES_RESHIRAM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RESHIRAM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RESHIRAM, DEX_DAY
    dexendareadata


routesandcities SPECIES_RESHIRAM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RESHIRAM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RESHIRAM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ZEKROM, DEX_MORNING
    dexendareadata


specialareas SPECIES_ZEKROM, DEX_DAY
    dexendareadata


specialareas SPECIES_ZEKROM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ZEKROM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ZEKROM, DEX_DAY
    dexendareadata


routesandcities SPECIES_ZEKROM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ZEKROM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ZEKROM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LANDORUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_LANDORUS, DEX_DAY
    dexendareadata


specialareas SPECIES_LANDORUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LANDORUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LANDORUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_LANDORUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LANDORUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LANDORUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KYUREM, DEX_MORNING
    dexendareadata


specialareas SPECIES_KYUREM, DEX_DAY
    dexendareadata


specialareas SPECIES_KYUREM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KYUREM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KYUREM, DEX_DAY
    dexendareadata


routesandcities SPECIES_KYUREM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KYUREM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KYUREM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KELDEO, DEX_MORNING
    dexendareadata


specialareas SPECIES_KELDEO, DEX_DAY
    dexendareadata


specialareas SPECIES_KELDEO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KELDEO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KELDEO, DEX_DAY
    dexendareadata


routesandcities SPECIES_KELDEO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KELDEO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KELDEO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MELOETTA, DEX_MORNING
    dexendareadata


specialareas SPECIES_MELOETTA, DEX_DAY
    dexendareadata


specialareas SPECIES_MELOETTA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MELOETTA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MELOETTA, DEX_DAY
    dexendareadata


routesandcities SPECIES_MELOETTA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MELOETTA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MELOETTA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GENESECT, DEX_MORNING
    dexendareadata


specialareas SPECIES_GENESECT, DEX_DAY
    dexendareadata


specialareas SPECIES_GENESECT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GENESECT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GENESECT, DEX_DAY
    dexendareadata


routesandcities SPECIES_GENESECT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GENESECT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GENESECT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHESPIN, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHESPIN, DEX_DAY
    dexendareadata


specialareas SPECIES_CHESPIN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHESPIN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHESPIN, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHESPIN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHESPIN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CHESPIN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_QUILLADIN, DEX_MORNING
    dexendareadata


specialareas SPECIES_QUILLADIN, DEX_DAY
    dexendareadata


specialareas SPECIES_QUILLADIN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_QUILLADIN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_QUILLADIN, DEX_DAY
    dexendareadata


routesandcities SPECIES_QUILLADIN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_QUILLADIN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_QUILLADIN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHESNAUGHT, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHESNAUGHT, DEX_DAY
    dexendareadata


specialareas SPECIES_CHESNAUGHT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHESNAUGHT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHESNAUGHT, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHESNAUGHT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHESNAUGHT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CHESNAUGHT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FENNEKIN, DEX_MORNING
    dexendareadata


specialareas SPECIES_FENNEKIN, DEX_DAY
    dexendareadata


specialareas SPECIES_FENNEKIN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FENNEKIN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FENNEKIN, DEX_DAY
    dexendareadata


routesandcities SPECIES_FENNEKIN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FENNEKIN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FENNEKIN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BRAIXEN, DEX_MORNING
    dexendareadata


specialareas SPECIES_BRAIXEN, DEX_DAY
    dexendareadata


specialareas SPECIES_BRAIXEN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BRAIXEN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BRAIXEN, DEX_DAY
    dexendareadata


routesandcities SPECIES_BRAIXEN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BRAIXEN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BRAIXEN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DELPHOX, DEX_MORNING
    dexendareadata


specialareas SPECIES_DELPHOX, DEX_DAY
    dexendareadata


specialareas SPECIES_DELPHOX, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DELPHOX, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DELPHOX, DEX_DAY
    dexendareadata


routesandcities SPECIES_DELPHOX, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DELPHOX, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DELPHOX, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FROAKIE, DEX_MORNING
    dexendareadata


specialareas SPECIES_FROAKIE, DEX_DAY
    dexendareadata


specialareas SPECIES_FROAKIE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FROAKIE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FROAKIE, DEX_DAY
    dexendareadata


routesandcities SPECIES_FROAKIE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FROAKIE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FROAKIE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FROGADIER, DEX_MORNING
    dexendareadata


specialareas SPECIES_FROGADIER, DEX_DAY
    dexendareadata


specialareas SPECIES_FROGADIER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FROGADIER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FROGADIER, DEX_DAY
    dexendareadata


routesandcities SPECIES_FROGADIER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FROGADIER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FROGADIER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GRENINJA, DEX_MORNING
    dexendareadata


specialareas SPECIES_GRENINJA, DEX_DAY
    dexendareadata


specialareas SPECIES_GRENINJA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GRENINJA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GRENINJA, DEX_DAY
    dexendareadata


routesandcities SPECIES_GRENINJA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GRENINJA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GRENINJA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BUNNELBY, DEX_MORNING
    dexendareadata


specialareas SPECIES_BUNNELBY, DEX_DAY
    dexendareadata


specialareas SPECIES_BUNNELBY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BUNNELBY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BUNNELBY, DEX_DAY
    dexendareadata


routesandcities SPECIES_BUNNELBY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BUNNELBY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BUNNELBY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DIGGERSBY, DEX_MORNING
    dexendareadata


specialareas SPECIES_DIGGERSBY, DEX_DAY
    dexendareadata


specialareas SPECIES_DIGGERSBY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DIGGERSBY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DIGGERSBY, DEX_DAY
    dexendareadata


routesandcities SPECIES_DIGGERSBY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DIGGERSBY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DIGGERSBY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FLETCHLING, DEX_MORNING
    dexendareadata


specialareas SPECIES_FLETCHLING, DEX_DAY
    dexendareadata


specialareas SPECIES_FLETCHLING, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FLETCHLING, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FLETCHLING, DEX_DAY
    dexendareadata


routesandcities SPECIES_FLETCHLING, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FLETCHLING, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FLETCHLING, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FLETCHINDER, DEX_MORNING
    dexendareadata


specialareas SPECIES_FLETCHINDER, DEX_DAY
    dexendareadata


specialareas SPECIES_FLETCHINDER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FLETCHINDER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FLETCHINDER, DEX_DAY
    dexendareadata


routesandcities SPECIES_FLETCHINDER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FLETCHINDER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FLETCHINDER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TALONFLAME, DEX_MORNING
    dexendareadata


specialareas SPECIES_TALONFLAME, DEX_DAY
    dexendareadata


specialareas SPECIES_TALONFLAME, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TALONFLAME, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TALONFLAME, DEX_DAY
    dexendareadata


routesandcities SPECIES_TALONFLAME, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TALONFLAME, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TALONFLAME, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SCATTERBUG, DEX_MORNING
    dexendareadata


specialareas SPECIES_SCATTERBUG, DEX_DAY
    dexendareadata


specialareas SPECIES_SCATTERBUG, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SCATTERBUG, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SCATTERBUG, DEX_DAY
    dexendareadata


routesandcities SPECIES_SCATTERBUG, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SCATTERBUG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SCATTERBUG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SPEWPA, DEX_MORNING
    dexendareadata


specialareas SPECIES_SPEWPA, DEX_DAY
    dexendareadata


specialareas SPECIES_SPEWPA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SPEWPA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SPEWPA, DEX_DAY
    dexendareadata


routesandcities SPECIES_SPEWPA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SPEWPA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SPEWPA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VIVILLON, DEX_MORNING
    dexendareadata


specialareas SPECIES_VIVILLON, DEX_DAY
    dexendareadata


specialareas SPECIES_VIVILLON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VIVILLON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VIVILLON, DEX_DAY
    dexendareadata


routesandcities SPECIES_VIVILLON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VIVILLON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VIVILLON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LITLEO, DEX_MORNING
    dexendareadata


specialareas SPECIES_LITLEO, DEX_DAY
    dexendareadata


specialareas SPECIES_LITLEO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LITLEO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LITLEO, DEX_DAY
    dexendareadata


routesandcities SPECIES_LITLEO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LITLEO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LITLEO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PYROAR, DEX_MORNING
    dexendareadata


specialareas SPECIES_PYROAR, DEX_DAY
    dexendareadata


specialareas SPECIES_PYROAR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PYROAR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PYROAR, DEX_DAY
    dexendareadata


routesandcities SPECIES_PYROAR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PYROAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PYROAR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FLABEBE, DEX_MORNING
    dexendareadata


specialareas SPECIES_FLABEBE, DEX_DAY
    dexendareadata


specialareas SPECIES_FLABEBE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FLABEBE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FLABEBE, DEX_DAY
    dexendareadata


routesandcities SPECIES_FLABEBE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FLABEBE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FLABEBE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FLOETTE, DEX_MORNING
    dexendareadata


specialareas SPECIES_FLOETTE, DEX_DAY
    dexendareadata


specialareas SPECIES_FLOETTE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FLOETTE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FLOETTE, DEX_DAY
    dexendareadata


routesandcities SPECIES_FLOETTE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FLOETTE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FLOETTE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FLORGES, DEX_MORNING
    dexendareadata


specialareas SPECIES_FLORGES, DEX_DAY
    dexendareadata


specialareas SPECIES_FLORGES, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FLORGES, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FLORGES, DEX_DAY
    dexendareadata


routesandcities SPECIES_FLORGES, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FLORGES, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FLORGES, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SKIDDO, DEX_MORNING
    dexendareadata


specialareas SPECIES_SKIDDO, DEX_DAY
    dexendareadata


specialareas SPECIES_SKIDDO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SKIDDO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SKIDDO, DEX_DAY
    dexendareadata


routesandcities SPECIES_SKIDDO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SKIDDO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SKIDDO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GOGOAT, DEX_MORNING
    dexendareadata


specialareas SPECIES_GOGOAT, DEX_DAY
    dexendareadata


specialareas SPECIES_GOGOAT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GOGOAT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GOGOAT, DEX_DAY
    dexendareadata


routesandcities SPECIES_GOGOAT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GOGOAT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GOGOAT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PANCHAM, DEX_MORNING
    dexendareadata


specialareas SPECIES_PANCHAM, DEX_DAY
    dexendareadata


specialareas SPECIES_PANCHAM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PANCHAM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PANCHAM, DEX_DAY
    dexendareadata


routesandcities SPECIES_PANCHAM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PANCHAM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PANCHAM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PANGORO, DEX_MORNING
    dexendareadata


specialareas SPECIES_PANGORO, DEX_DAY
    dexendareadata


specialareas SPECIES_PANGORO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PANGORO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PANGORO, DEX_DAY
    dexendareadata


routesandcities SPECIES_PANGORO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PANGORO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PANGORO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FURFROU, DEX_MORNING
    dexendareadata


specialareas SPECIES_FURFROU, DEX_DAY
    dexendareadata


specialareas SPECIES_FURFROU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FURFROU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FURFROU, DEX_DAY
    dexendareadata


routesandcities SPECIES_FURFROU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FURFROU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FURFROU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ESPURR, DEX_MORNING
    dexendareadata


specialareas SPECIES_ESPURR, DEX_DAY
    dexendareadata


specialareas SPECIES_ESPURR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ESPURR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ESPURR, DEX_DAY
    dexendareadata


routesandcities SPECIES_ESPURR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ESPURR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ESPURR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MEOWSTIC, DEX_MORNING
    dexendareadata


specialareas SPECIES_MEOWSTIC, DEX_DAY
    dexendareadata


specialareas SPECIES_MEOWSTIC, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MEOWSTIC, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MEOWSTIC, DEX_DAY
    dexendareadata


routesandcities SPECIES_MEOWSTIC, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MEOWSTIC, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MEOWSTIC, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HONEDGE, DEX_MORNING
    dexendareadata


specialareas SPECIES_HONEDGE, DEX_DAY
    dexendareadata


specialareas SPECIES_HONEDGE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HONEDGE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HONEDGE, DEX_DAY
    dexendareadata


routesandcities SPECIES_HONEDGE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HONEDGE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HONEDGE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DOUBLADE, DEX_MORNING
    dexendareadata


specialareas SPECIES_DOUBLADE, DEX_DAY
    dexendareadata


specialareas SPECIES_DOUBLADE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DOUBLADE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DOUBLADE, DEX_DAY
    dexendareadata


routesandcities SPECIES_DOUBLADE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DOUBLADE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DOUBLADE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_AEGISLASH, DEX_MORNING
    dexendareadata


specialareas SPECIES_AEGISLASH, DEX_DAY
    dexendareadata


specialareas SPECIES_AEGISLASH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_AEGISLASH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_AEGISLASH, DEX_DAY
    dexendareadata


routesandcities SPECIES_AEGISLASH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_AEGISLASH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_AEGISLASH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SPRITZEE, DEX_MORNING
    dexendareadata


specialareas SPECIES_SPRITZEE, DEX_DAY
    dexendareadata


specialareas SPECIES_SPRITZEE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SPRITZEE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SPRITZEE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SPRITZEE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SPRITZEE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SPRITZEE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_AROMATISSE, DEX_MORNING
    dexendareadata


specialareas SPECIES_AROMATISSE, DEX_DAY
    dexendareadata


specialareas SPECIES_AROMATISSE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_AROMATISSE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_AROMATISSE, DEX_DAY
    dexendareadata


routesandcities SPECIES_AROMATISSE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_AROMATISSE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_AROMATISSE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SWIRLIX, DEX_MORNING
    dexendareadata


specialareas SPECIES_SWIRLIX, DEX_DAY
    dexendareadata


specialareas SPECIES_SWIRLIX, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SWIRLIX, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SWIRLIX, DEX_DAY
    dexendareadata


routesandcities SPECIES_SWIRLIX, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SWIRLIX, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SWIRLIX, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SLURPUFF, DEX_MORNING
    dexendareadata


specialareas SPECIES_SLURPUFF, DEX_DAY
    dexendareadata


specialareas SPECIES_SLURPUFF, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SLURPUFF, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SLURPUFF, DEX_DAY
    dexendareadata


routesandcities SPECIES_SLURPUFF, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SLURPUFF, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SLURPUFF, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_INKAY, DEX_MORNING
    dexendareadata


specialareas SPECIES_INKAY, DEX_DAY
    dexendareadata


specialareas SPECIES_INKAY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_INKAY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_INKAY, DEX_DAY
    dexendareadata


routesandcities SPECIES_INKAY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_INKAY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_INKAY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MALAMAR, DEX_MORNING
    dexendareadata


specialareas SPECIES_MALAMAR, DEX_DAY
    dexendareadata


specialareas SPECIES_MALAMAR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MALAMAR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MALAMAR, DEX_DAY
    dexendareadata


routesandcities SPECIES_MALAMAR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MALAMAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MALAMAR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BINACLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_BINACLE, DEX_DAY
    dexendareadata


specialareas SPECIES_BINACLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BINACLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BINACLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_BINACLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BINACLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BINACLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BARBARACLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_BARBARACLE, DEX_DAY
    dexendareadata


specialareas SPECIES_BARBARACLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BARBARACLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BARBARACLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_BARBARACLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BARBARACLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BARBARACLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SKRELP, DEX_MORNING
    dexendareadata


specialareas SPECIES_SKRELP, DEX_DAY
    dexendareadata


specialareas SPECIES_SKRELP, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SKRELP, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SKRELP, DEX_DAY
    dexendareadata


routesandcities SPECIES_SKRELP, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SKRELP, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SKRELP, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DRAGALGE, DEX_MORNING
    dexendareadata


specialareas SPECIES_DRAGALGE, DEX_DAY
    dexendareadata


specialareas SPECIES_DRAGALGE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DRAGALGE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DRAGALGE, DEX_DAY
    dexendareadata


routesandcities SPECIES_DRAGALGE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DRAGALGE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DRAGALGE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CLAUNCHER, DEX_MORNING
    dexendareadata


specialareas SPECIES_CLAUNCHER, DEX_DAY
    dexendareadata


specialareas SPECIES_CLAUNCHER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CLAUNCHER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CLAUNCHER, DEX_DAY
    dexendareadata


routesandcities SPECIES_CLAUNCHER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CLAUNCHER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CLAUNCHER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CLAWITZER, DEX_MORNING
    dexendareadata


specialareas SPECIES_CLAWITZER, DEX_DAY
    dexendareadata


specialareas SPECIES_CLAWITZER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CLAWITZER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CLAWITZER, DEX_DAY
    dexendareadata


routesandcities SPECIES_CLAWITZER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CLAWITZER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CLAWITZER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HELIOPTILE, DEX_MORNING
    dexendareadata


specialareas SPECIES_HELIOPTILE, DEX_DAY
    dexendareadata


specialareas SPECIES_HELIOPTILE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HELIOPTILE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HELIOPTILE, DEX_DAY
    dexendareadata


routesandcities SPECIES_HELIOPTILE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HELIOPTILE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HELIOPTILE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HELIOLISK, DEX_MORNING
    dexendareadata


specialareas SPECIES_HELIOLISK, DEX_DAY
    dexendareadata


specialareas SPECIES_HELIOLISK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HELIOLISK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HELIOLISK, DEX_DAY
    dexendareadata


routesandcities SPECIES_HELIOLISK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HELIOLISK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HELIOLISK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TYRUNT, DEX_MORNING
    dexendareadata


specialareas SPECIES_TYRUNT, DEX_DAY
    dexendareadata


specialareas SPECIES_TYRUNT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TYRUNT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TYRUNT, DEX_DAY
    dexendareadata


routesandcities SPECIES_TYRUNT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TYRUNT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TYRUNT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TYRANTRUM, DEX_MORNING
    dexendareadata


specialareas SPECIES_TYRANTRUM, DEX_DAY
    dexendareadata


specialareas SPECIES_TYRANTRUM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TYRANTRUM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TYRANTRUM, DEX_DAY
    dexendareadata


routesandcities SPECIES_TYRANTRUM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TYRANTRUM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TYRANTRUM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_AMAURA, DEX_MORNING
    dexendareadata


specialareas SPECIES_AMAURA, DEX_DAY
    dexendareadata


specialareas SPECIES_AMAURA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_AMAURA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_AMAURA, DEX_DAY
    dexendareadata


routesandcities SPECIES_AMAURA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_AMAURA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_AMAURA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_AURORUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_AURORUS, DEX_DAY
    dexendareadata


specialareas SPECIES_AURORUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_AURORUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_AURORUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_AURORUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_AURORUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_AURORUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SYLVEON, DEX_MORNING
    dexendareadata


specialareas SPECIES_SYLVEON, DEX_DAY
    dexendareadata


specialareas SPECIES_SYLVEON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SYLVEON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SYLVEON, DEX_DAY
    dexendareadata


routesandcities SPECIES_SYLVEON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SYLVEON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SYLVEON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HAWLUCHA, DEX_MORNING
    dexendareadata


specialareas SPECIES_HAWLUCHA, DEX_DAY
    dexendareadata


specialareas SPECIES_HAWLUCHA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HAWLUCHA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HAWLUCHA, DEX_DAY
    dexendareadata


routesandcities SPECIES_HAWLUCHA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HAWLUCHA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HAWLUCHA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DEDENNE, DEX_MORNING
    dexendareadata


specialareas SPECIES_DEDENNE, DEX_DAY
    dexendareadata


specialareas SPECIES_DEDENNE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DEDENNE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DEDENNE, DEX_DAY
    dexendareadata


routesandcities SPECIES_DEDENNE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DEDENNE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DEDENNE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CARBINK, DEX_MORNING
    dexendareadata


specialareas SPECIES_CARBINK, DEX_DAY
    dexendareadata


specialareas SPECIES_CARBINK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CARBINK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CARBINK, DEX_DAY
    dexendareadata


routesandcities SPECIES_CARBINK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CARBINK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CARBINK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GOOMY, DEX_MORNING
    dexendareadata


specialareas SPECIES_GOOMY, DEX_DAY
    dexendareadata


specialareas SPECIES_GOOMY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GOOMY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GOOMY, DEX_DAY
    dexendareadata


routesandcities SPECIES_GOOMY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GOOMY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GOOMY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SLIGGOO, DEX_MORNING
    dexendareadata


specialareas SPECIES_SLIGGOO, DEX_DAY
    dexendareadata


specialareas SPECIES_SLIGGOO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SLIGGOO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SLIGGOO, DEX_DAY
    dexendareadata


routesandcities SPECIES_SLIGGOO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SLIGGOO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SLIGGOO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GOODRA, DEX_MORNING
    dexendareadata


specialareas SPECIES_GOODRA, DEX_DAY
    dexendareadata


specialareas SPECIES_GOODRA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GOODRA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GOODRA, DEX_DAY
    dexendareadata


routesandcities SPECIES_GOODRA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GOODRA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GOODRA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KLEFKI, DEX_MORNING
    dexendareadata


specialareas SPECIES_KLEFKI, DEX_DAY
    dexendareadata


specialareas SPECIES_KLEFKI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KLEFKI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KLEFKI, DEX_DAY
    dexendareadata


routesandcities SPECIES_KLEFKI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KLEFKI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KLEFKI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PHANTUMP, DEX_MORNING
    dexendareadata


specialareas SPECIES_PHANTUMP, DEX_DAY
    dexendareadata


specialareas SPECIES_PHANTUMP, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PHANTUMP, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PHANTUMP, DEX_DAY
    dexendareadata


routesandcities SPECIES_PHANTUMP, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PHANTUMP, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PHANTUMP, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TREVENANT, DEX_MORNING
    dexendareadata


specialareas SPECIES_TREVENANT, DEX_DAY
    dexendareadata


specialareas SPECIES_TREVENANT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TREVENANT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TREVENANT, DEX_DAY
    dexendareadata


routesandcities SPECIES_TREVENANT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TREVENANT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TREVENANT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PUMPKABOO, DEX_MORNING
    dexendareadata


specialareas SPECIES_PUMPKABOO, DEX_DAY
    dexendareadata


specialareas SPECIES_PUMPKABOO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PUMPKABOO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PUMPKABOO, DEX_DAY
    dexendareadata


routesandcities SPECIES_PUMPKABOO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PUMPKABOO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PUMPKABOO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GOURGEIST, DEX_MORNING
    dexendareadata


specialareas SPECIES_GOURGEIST, DEX_DAY
    dexendareadata


specialareas SPECIES_GOURGEIST, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GOURGEIST, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GOURGEIST, DEX_DAY
    dexendareadata


routesandcities SPECIES_GOURGEIST, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GOURGEIST, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GOURGEIST, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BERGMITE, DEX_MORNING
    dexendareadata


specialareas SPECIES_BERGMITE, DEX_DAY
    dexendareadata


specialareas SPECIES_BERGMITE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BERGMITE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BERGMITE, DEX_DAY
    dexendareadata


routesandcities SPECIES_BERGMITE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BERGMITE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BERGMITE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_AVALUGG, DEX_MORNING
    dexendareadata


specialareas SPECIES_AVALUGG, DEX_DAY
    dexendareadata


specialareas SPECIES_AVALUGG, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_AVALUGG, DEX_MORNING
    dexendareadata


routesandcities SPECIES_AVALUGG, DEX_DAY
    dexendareadata


routesandcities SPECIES_AVALUGG, DEX_NIGHT
    dexendareadata


specialareas SPECIES_AVALUGG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_AVALUGG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NOIBAT, DEX_MORNING
    dexendareadata


specialareas SPECIES_NOIBAT, DEX_DAY
    dexendareadata


specialareas SPECIES_NOIBAT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NOIBAT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NOIBAT, DEX_DAY
    dexendareadata


routesandcities SPECIES_NOIBAT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NOIBAT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NOIBAT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NOIVERN, DEX_MORNING
    dexendareadata


specialareas SPECIES_NOIVERN, DEX_DAY
    dexendareadata


specialareas SPECIES_NOIVERN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NOIVERN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NOIVERN, DEX_DAY
    dexendareadata


routesandcities SPECIES_NOIVERN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NOIVERN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NOIVERN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_XERNEAS, DEX_MORNING
    dexendareadata


specialareas SPECIES_XERNEAS, DEX_DAY
    dexendareadata


specialareas SPECIES_XERNEAS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_XERNEAS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_XERNEAS, DEX_DAY
    dexendareadata


routesandcities SPECIES_XERNEAS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_XERNEAS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_XERNEAS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_YVELTAL, DEX_MORNING
    dexendareadata


specialareas SPECIES_YVELTAL, DEX_DAY
    dexendareadata


specialareas SPECIES_YVELTAL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_YVELTAL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_YVELTAL, DEX_DAY
    dexendareadata


routesandcities SPECIES_YVELTAL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_YVELTAL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_YVELTAL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ZYGARDE, DEX_MORNING
    dexendareadata


specialareas SPECIES_ZYGARDE, DEX_DAY
    dexendareadata


specialareas SPECIES_ZYGARDE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ZYGARDE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ZYGARDE, DEX_DAY
    dexendareadata


routesandcities SPECIES_ZYGARDE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ZYGARDE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ZYGARDE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DIANCIE, DEX_MORNING
    dexendareadata


specialareas SPECIES_DIANCIE, DEX_DAY
    dexendareadata


specialareas SPECIES_DIANCIE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DIANCIE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DIANCIE, DEX_DAY
    dexendareadata


routesandcities SPECIES_DIANCIE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DIANCIE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DIANCIE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HOOPA, DEX_MORNING
    dexendareadata


specialareas SPECIES_HOOPA, DEX_DAY
    dexendareadata


specialareas SPECIES_HOOPA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HOOPA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HOOPA, DEX_DAY
    dexendareadata


routesandcities SPECIES_HOOPA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HOOPA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HOOPA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VOLCANION, DEX_MORNING
    dexendareadata


specialareas SPECIES_VOLCANION, DEX_DAY
    dexendareadata


specialareas SPECIES_VOLCANION, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VOLCANION, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VOLCANION, DEX_DAY
    dexendareadata


routesandcities SPECIES_VOLCANION, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VOLCANION, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VOLCANION, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ROWLET, DEX_MORNING
    dexendareadata


specialareas SPECIES_ROWLET, DEX_DAY
    dexendareadata


specialareas SPECIES_ROWLET, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ROWLET, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ROWLET, DEX_DAY
    dexendareadata


routesandcities SPECIES_ROWLET, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ROWLET, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ROWLET, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DARTRIX, DEX_MORNING
    dexendareadata


specialareas SPECIES_DARTRIX, DEX_DAY
    dexendareadata


specialareas SPECIES_DARTRIX, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DARTRIX, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DARTRIX, DEX_DAY
    dexendareadata


routesandcities SPECIES_DARTRIX, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DARTRIX, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DARTRIX, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DECIDUEYE, DEX_MORNING
    dexendareadata


specialareas SPECIES_DECIDUEYE, DEX_DAY
    dexendareadata


specialareas SPECIES_DECIDUEYE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DECIDUEYE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DECIDUEYE, DEX_DAY
    dexendareadata


routesandcities SPECIES_DECIDUEYE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DECIDUEYE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DECIDUEYE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LITTEN, DEX_MORNING
    dexendareadata


specialareas SPECIES_LITTEN, DEX_DAY
    dexendareadata


specialareas SPECIES_LITTEN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LITTEN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LITTEN, DEX_DAY
    dexendareadata


routesandcities SPECIES_LITTEN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LITTEN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LITTEN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TORRACAT, DEX_MORNING
    dexendareadata


specialareas SPECIES_TORRACAT, DEX_DAY
    dexendareadata


specialareas SPECIES_TORRACAT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TORRACAT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TORRACAT, DEX_DAY
    dexendareadata


routesandcities SPECIES_TORRACAT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TORRACAT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TORRACAT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_INCINEROAR, DEX_MORNING
    dexendareadata


specialareas SPECIES_INCINEROAR, DEX_DAY
    dexendareadata


specialareas SPECIES_INCINEROAR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_INCINEROAR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_INCINEROAR, DEX_DAY
    dexendareadata


routesandcities SPECIES_INCINEROAR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_INCINEROAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_INCINEROAR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_POPPLIO, DEX_MORNING
    dexendareadata


specialareas SPECIES_POPPLIO, DEX_DAY
    dexendareadata


specialareas SPECIES_POPPLIO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_POPPLIO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_POPPLIO, DEX_DAY
    dexendareadata


routesandcities SPECIES_POPPLIO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_POPPLIO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_POPPLIO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BRIONNE, DEX_MORNING
    dexendareadata


specialareas SPECIES_BRIONNE, DEX_DAY
    dexendareadata


specialareas SPECIES_BRIONNE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BRIONNE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BRIONNE, DEX_DAY
    dexendareadata


routesandcities SPECIES_BRIONNE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BRIONNE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BRIONNE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PRIMARINA, DEX_MORNING
    dexendareadata


specialareas SPECIES_PRIMARINA, DEX_DAY
    dexendareadata


specialareas SPECIES_PRIMARINA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PRIMARINA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PRIMARINA, DEX_DAY
    dexendareadata


routesandcities SPECIES_PRIMARINA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PRIMARINA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PRIMARINA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PIKIPEK, DEX_MORNING
    dexendareadata


specialareas SPECIES_PIKIPEK, DEX_DAY
    dexendareadata


specialareas SPECIES_PIKIPEK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PIKIPEK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PIKIPEK, DEX_DAY
    dexendareadata


routesandcities SPECIES_PIKIPEK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PIKIPEK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PIKIPEK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TRUMBEAK, DEX_MORNING
    dexendareadata


specialareas SPECIES_TRUMBEAK, DEX_DAY
    dexendareadata


specialareas SPECIES_TRUMBEAK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TRUMBEAK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TRUMBEAK, DEX_DAY
    dexendareadata


routesandcities SPECIES_TRUMBEAK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TRUMBEAK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TRUMBEAK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TOUCANNON, DEX_MORNING
    dexendareadata


specialareas SPECIES_TOUCANNON, DEX_DAY
    dexendareadata


specialareas SPECIES_TOUCANNON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TOUCANNON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TOUCANNON, DEX_DAY
    dexendareadata


routesandcities SPECIES_TOUCANNON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TOUCANNON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TOUCANNON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_YUNGOOS, DEX_MORNING
    dexendareadata


specialareas SPECIES_YUNGOOS, DEX_DAY
    dexendareadata


specialareas SPECIES_YUNGOOS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_YUNGOOS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_YUNGOOS, DEX_DAY
    dexendareadata


routesandcities SPECIES_YUNGOOS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_YUNGOOS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_YUNGOOS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GUMSHOOS, DEX_MORNING
    dexendareadata


specialareas SPECIES_GUMSHOOS, DEX_DAY
    dexendareadata


specialareas SPECIES_GUMSHOOS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GUMSHOOS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GUMSHOOS, DEX_DAY
    dexendareadata


routesandcities SPECIES_GUMSHOOS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GUMSHOOS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GUMSHOOS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GRUBBIN, DEX_MORNING
    dexendareadata


specialareas SPECIES_GRUBBIN, DEX_DAY
    dexendareadata


specialareas SPECIES_GRUBBIN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GRUBBIN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GRUBBIN, DEX_DAY
    dexendareadata


routesandcities SPECIES_GRUBBIN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GRUBBIN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GRUBBIN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHARJABUG, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHARJABUG, DEX_DAY
    dexendareadata


specialareas SPECIES_CHARJABUG, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHARJABUG, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHARJABUG, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHARJABUG, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHARJABUG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CHARJABUG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VIKAVOLT, DEX_MORNING
    dexendareadata


specialareas SPECIES_VIKAVOLT, DEX_DAY
    dexendareadata


specialareas SPECIES_VIKAVOLT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VIKAVOLT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VIKAVOLT, DEX_DAY
    dexendareadata


routesandcities SPECIES_VIKAVOLT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VIKAVOLT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VIKAVOLT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CRABRAWLER, DEX_MORNING
    dexendareadata


specialareas SPECIES_CRABRAWLER, DEX_DAY
    dexendareadata


specialareas SPECIES_CRABRAWLER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CRABRAWLER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CRABRAWLER, DEX_DAY
    dexendareadata


routesandcities SPECIES_CRABRAWLER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CRABRAWLER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CRABRAWLER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CRABOMINABLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_CRABOMINABLE, DEX_DAY
    dexendareadata


specialareas SPECIES_CRABOMINABLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CRABOMINABLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CRABOMINABLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_CRABOMINABLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CRABOMINABLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CRABOMINABLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ORICORIO, DEX_MORNING
    dexendareadata


specialareas SPECIES_ORICORIO, DEX_DAY
    dexendareadata


specialareas SPECIES_ORICORIO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ORICORIO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ORICORIO, DEX_DAY
    dexendareadata


routesandcities SPECIES_ORICORIO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ORICORIO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ORICORIO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CUTIEFLY, DEX_MORNING
    dexendareadata


specialareas SPECIES_CUTIEFLY, DEX_DAY
    dexendareadata


specialareas SPECIES_CUTIEFLY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CUTIEFLY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CUTIEFLY, DEX_DAY
    dexendareadata


routesandcities SPECIES_CUTIEFLY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CUTIEFLY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CUTIEFLY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RIBOMBEE, DEX_MORNING
    dexendareadata


specialareas SPECIES_RIBOMBEE, DEX_DAY
    dexendareadata


specialareas SPECIES_RIBOMBEE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RIBOMBEE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RIBOMBEE, DEX_DAY
    dexendareadata


routesandcities SPECIES_RIBOMBEE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RIBOMBEE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RIBOMBEE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ROCKRUFF, DEX_MORNING
    dexendareadata


specialareas SPECIES_ROCKRUFF, DEX_DAY
    dexendareadata


specialareas SPECIES_ROCKRUFF, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ROCKRUFF, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ROCKRUFF, DEX_DAY
    dexendareadata


routesandcities SPECIES_ROCKRUFF, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ROCKRUFF, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ROCKRUFF, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LYCANROC, DEX_MORNING
    dexendareadata


specialareas SPECIES_LYCANROC, DEX_DAY
    dexendareadata


specialareas SPECIES_LYCANROC, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LYCANROC, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LYCANROC, DEX_DAY
    dexendareadata


routesandcities SPECIES_LYCANROC, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LYCANROC, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LYCANROC, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WISHIWASHI, DEX_MORNING
    dexendareadata


specialareas SPECIES_WISHIWASHI, DEX_DAY
    dexendareadata


specialareas SPECIES_WISHIWASHI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WISHIWASHI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WISHIWASHI, DEX_DAY
    dexendareadata


routesandcities SPECIES_WISHIWASHI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WISHIWASHI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WISHIWASHI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MAREANIE, DEX_MORNING
    dexendareadata


specialareas SPECIES_MAREANIE, DEX_DAY
    dexendareadata


specialareas SPECIES_MAREANIE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MAREANIE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MAREANIE, DEX_DAY
    dexendareadata


routesandcities SPECIES_MAREANIE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MAREANIE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MAREANIE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TOXAPEX, DEX_MORNING
    dexendareadata


specialareas SPECIES_TOXAPEX, DEX_DAY
    dexendareadata


specialareas SPECIES_TOXAPEX, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TOXAPEX, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TOXAPEX, DEX_DAY
    dexendareadata


routesandcities SPECIES_TOXAPEX, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TOXAPEX, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TOXAPEX, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MUDBRAY, DEX_MORNING
    dexendareadata


specialareas SPECIES_MUDBRAY, DEX_DAY
    dexendareadata


specialareas SPECIES_MUDBRAY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MUDBRAY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MUDBRAY, DEX_DAY
    dexendareadata


routesandcities SPECIES_MUDBRAY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MUDBRAY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MUDBRAY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MUDSDALE, DEX_MORNING
    dexendareadata


specialareas SPECIES_MUDSDALE, DEX_DAY
    dexendareadata


specialareas SPECIES_MUDSDALE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MUDSDALE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MUDSDALE, DEX_DAY
    dexendareadata


routesandcities SPECIES_MUDSDALE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MUDSDALE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MUDSDALE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DEWPIDER, DEX_MORNING
    dexendareadata


specialareas SPECIES_DEWPIDER, DEX_DAY
    dexendareadata


specialareas SPECIES_DEWPIDER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DEWPIDER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DEWPIDER, DEX_DAY
    dexendareadata


routesandcities SPECIES_DEWPIDER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DEWPIDER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DEWPIDER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ARAQUANID, DEX_MORNING
    dexendareadata


specialareas SPECIES_ARAQUANID, DEX_DAY
    dexendareadata


specialareas SPECIES_ARAQUANID, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ARAQUANID, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ARAQUANID, DEX_DAY
    dexendareadata


routesandcities SPECIES_ARAQUANID, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ARAQUANID, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ARAQUANID, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FOMANTIS, DEX_MORNING
    dexendareadata


specialareas SPECIES_FOMANTIS, DEX_DAY
    dexendareadata


specialareas SPECIES_FOMANTIS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FOMANTIS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FOMANTIS, DEX_DAY
    dexendareadata


routesandcities SPECIES_FOMANTIS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FOMANTIS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FOMANTIS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LURANTIS, DEX_MORNING
    dexendareadata


specialareas SPECIES_LURANTIS, DEX_DAY
    dexendareadata


specialareas SPECIES_LURANTIS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LURANTIS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LURANTIS, DEX_DAY
    dexendareadata


routesandcities SPECIES_LURANTIS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LURANTIS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LURANTIS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MORELULL, DEX_MORNING
    dexendareadata


specialareas SPECIES_MORELULL, DEX_DAY
    dexendareadata


specialareas SPECIES_MORELULL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MORELULL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MORELULL, DEX_DAY
    dexendareadata


routesandcities SPECIES_MORELULL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MORELULL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MORELULL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SHIINOTIC, DEX_MORNING
    dexendareadata


specialareas SPECIES_SHIINOTIC, DEX_DAY
    dexendareadata


specialareas SPECIES_SHIINOTIC, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SHIINOTIC, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SHIINOTIC, DEX_DAY
    dexendareadata


routesandcities SPECIES_SHIINOTIC, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SHIINOTIC, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SHIINOTIC, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SALANDIT, DEX_MORNING
    dexendareadata


specialareas SPECIES_SALANDIT, DEX_DAY
    dexendareadata


specialareas SPECIES_SALANDIT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SALANDIT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SALANDIT, DEX_DAY
    dexendareadata


routesandcities SPECIES_SALANDIT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SALANDIT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SALANDIT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SALAZZLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_SALAZZLE, DEX_DAY
    dexendareadata


specialareas SPECIES_SALAZZLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SALAZZLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SALAZZLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SALAZZLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SALAZZLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SALAZZLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_STUFFUL, DEX_MORNING
    dexendareadata


specialareas SPECIES_STUFFUL, DEX_DAY
    dexendareadata


specialareas SPECIES_STUFFUL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_STUFFUL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_STUFFUL, DEX_DAY
    dexendareadata


routesandcities SPECIES_STUFFUL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_STUFFUL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_STUFFUL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BEWEAR, DEX_MORNING
    dexendareadata


specialareas SPECIES_BEWEAR, DEX_DAY
    dexendareadata


specialareas SPECIES_BEWEAR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BEWEAR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BEWEAR, DEX_DAY
    dexendareadata


routesandcities SPECIES_BEWEAR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BEWEAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BEWEAR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BOUNSWEET, DEX_MORNING
    dexendareadata


specialareas SPECIES_BOUNSWEET, DEX_DAY
    dexendareadata


specialareas SPECIES_BOUNSWEET, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BOUNSWEET, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BOUNSWEET, DEX_DAY
    dexendareadata


routesandcities SPECIES_BOUNSWEET, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BOUNSWEET, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BOUNSWEET, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_STEENEE, DEX_MORNING
    dexendareadata


specialareas SPECIES_STEENEE, DEX_DAY
    dexendareadata


specialareas SPECIES_STEENEE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_STEENEE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_STEENEE, DEX_DAY
    dexendareadata


routesandcities SPECIES_STEENEE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_STEENEE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_STEENEE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TSAREENA, DEX_MORNING
    dexendareadata


specialareas SPECIES_TSAREENA, DEX_DAY
    dexendareadata


specialareas SPECIES_TSAREENA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TSAREENA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TSAREENA, DEX_DAY
    dexendareadata


routesandcities SPECIES_TSAREENA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TSAREENA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TSAREENA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_COMFEY, DEX_MORNING
    dexendareadata


specialareas SPECIES_COMFEY, DEX_DAY
    dexendareadata


specialareas SPECIES_COMFEY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_COMFEY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_COMFEY, DEX_DAY
    dexendareadata


routesandcities SPECIES_COMFEY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_COMFEY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_COMFEY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ORANGURU, DEX_MORNING
    dexendareadata


specialareas SPECIES_ORANGURU, DEX_DAY
    dexendareadata


specialareas SPECIES_ORANGURU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ORANGURU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ORANGURU, DEX_DAY
    dexendareadata


routesandcities SPECIES_ORANGURU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ORANGURU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ORANGURU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PASSIMIAN, DEX_MORNING
    dexendareadata


specialareas SPECIES_PASSIMIAN, DEX_DAY
    dexendareadata


specialareas SPECIES_PASSIMIAN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PASSIMIAN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PASSIMIAN, DEX_DAY
    dexendareadata


routesandcities SPECIES_PASSIMIAN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PASSIMIAN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PASSIMIAN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WIMPOD, DEX_MORNING
    dexendareadata


specialareas SPECIES_WIMPOD, DEX_DAY
    dexendareadata


specialareas SPECIES_WIMPOD, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WIMPOD, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WIMPOD, DEX_DAY
    dexendareadata


routesandcities SPECIES_WIMPOD, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WIMPOD, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WIMPOD, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GOLISOPOD, DEX_MORNING
    dexendareadata


specialareas SPECIES_GOLISOPOD, DEX_DAY
    dexendareadata


specialareas SPECIES_GOLISOPOD, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GOLISOPOD, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GOLISOPOD, DEX_DAY
    dexendareadata


routesandcities SPECIES_GOLISOPOD, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GOLISOPOD, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GOLISOPOD, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SANDYGAST, DEX_MORNING
    dexendareadata


specialareas SPECIES_SANDYGAST, DEX_DAY
    dexendareadata


specialareas SPECIES_SANDYGAST, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SANDYGAST, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SANDYGAST, DEX_DAY
    dexendareadata


routesandcities SPECIES_SANDYGAST, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SANDYGAST, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SANDYGAST, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PALOSSAND, DEX_MORNING
    dexendareadata


specialareas SPECIES_PALOSSAND, DEX_DAY
    dexendareadata


specialareas SPECIES_PALOSSAND, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PALOSSAND, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PALOSSAND, DEX_DAY
    dexendareadata


routesandcities SPECIES_PALOSSAND, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PALOSSAND, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PALOSSAND, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PYUKUMUKU, DEX_MORNING
    dexendareadata


specialareas SPECIES_PYUKUMUKU, DEX_DAY
    dexendareadata


specialareas SPECIES_PYUKUMUKU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PYUKUMUKU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PYUKUMUKU, DEX_DAY
    dexendareadata


routesandcities SPECIES_PYUKUMUKU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PYUKUMUKU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PYUKUMUKU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TYPE_NULL, DEX_MORNING
    dexendareadata


specialareas SPECIES_TYPE_NULL, DEX_DAY
    dexendareadata


specialareas SPECIES_TYPE_NULL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TYPE_NULL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TYPE_NULL, DEX_DAY
    dexendareadata


routesandcities SPECIES_TYPE_NULL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TYPE_NULL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TYPE_NULL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SILVALLY, DEX_MORNING
    dexendareadata


specialareas SPECIES_SILVALLY, DEX_DAY
    dexendareadata


specialareas SPECIES_SILVALLY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SILVALLY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SILVALLY, DEX_DAY
    dexendareadata


routesandcities SPECIES_SILVALLY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SILVALLY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SILVALLY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MINIOR, DEX_MORNING
    dexendareadata


specialareas SPECIES_MINIOR, DEX_DAY
    dexendareadata


specialareas SPECIES_MINIOR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MINIOR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MINIOR, DEX_DAY
    dexendareadata


routesandcities SPECIES_MINIOR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MINIOR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MINIOR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KOMALA, DEX_MORNING
    dexendareadata


specialareas SPECIES_KOMALA, DEX_DAY
    dexendareadata


specialareas SPECIES_KOMALA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KOMALA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KOMALA, DEX_DAY
    dexendareadata


routesandcities SPECIES_KOMALA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KOMALA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KOMALA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TURTONATOR, DEX_MORNING
    dexendareadata


specialareas SPECIES_TURTONATOR, DEX_DAY
    dexendareadata


specialareas SPECIES_TURTONATOR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TURTONATOR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TURTONATOR, DEX_DAY
    dexendareadata


routesandcities SPECIES_TURTONATOR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TURTONATOR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TURTONATOR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TOGEDEMARU, DEX_MORNING
    dexendareadata


specialareas SPECIES_TOGEDEMARU, DEX_DAY
    dexendareadata


specialareas SPECIES_TOGEDEMARU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TOGEDEMARU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TOGEDEMARU, DEX_DAY
    dexendareadata


routesandcities SPECIES_TOGEDEMARU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TOGEDEMARU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TOGEDEMARU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MIMIKYU, DEX_MORNING
    dexendareadata


specialareas SPECIES_MIMIKYU, DEX_DAY
    dexendareadata


specialareas SPECIES_MIMIKYU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MIMIKYU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MIMIKYU, DEX_DAY
    dexendareadata


routesandcities SPECIES_MIMIKYU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MIMIKYU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MIMIKYU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BRUXISH, DEX_MORNING
    dexendareadata


specialareas SPECIES_BRUXISH, DEX_DAY
    dexendareadata


specialareas SPECIES_BRUXISH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BRUXISH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BRUXISH, DEX_DAY
    dexendareadata


routesandcities SPECIES_BRUXISH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BRUXISH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BRUXISH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DRAMPA, DEX_MORNING
    dexendareadata


specialareas SPECIES_DRAMPA, DEX_DAY
    dexendareadata


specialareas SPECIES_DRAMPA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DRAMPA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DRAMPA, DEX_DAY
    dexendareadata


routesandcities SPECIES_DRAMPA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DRAMPA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DRAMPA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DHELMISE, DEX_MORNING
    dexendareadata


specialareas SPECIES_DHELMISE, DEX_DAY
    dexendareadata


specialareas SPECIES_DHELMISE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DHELMISE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DHELMISE, DEX_DAY
    dexendareadata


routesandcities SPECIES_DHELMISE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DHELMISE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DHELMISE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_JANGMO_O, DEX_MORNING
    dexendareadata


specialareas SPECIES_JANGMO_O, DEX_DAY
    dexendareadata


specialareas SPECIES_JANGMO_O, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_JANGMO_O, DEX_MORNING
    dexendareadata


routesandcities SPECIES_JANGMO_O, DEX_DAY
    dexendareadata


routesandcities SPECIES_JANGMO_O, DEX_NIGHT
    dexendareadata


specialareas SPECIES_JANGMO_O, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_JANGMO_O, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HAKAMO_O, DEX_MORNING
    dexendareadata


specialareas SPECIES_HAKAMO_O, DEX_DAY
    dexendareadata


specialareas SPECIES_HAKAMO_O, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HAKAMO_O, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HAKAMO_O, DEX_DAY
    dexendareadata


routesandcities SPECIES_HAKAMO_O, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HAKAMO_O, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HAKAMO_O, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KOMMO_O, DEX_MORNING
    dexendareadata


specialareas SPECIES_KOMMO_O, DEX_DAY
    dexendareadata


specialareas SPECIES_KOMMO_O, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KOMMO_O, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KOMMO_O, DEX_DAY
    dexendareadata


routesandcities SPECIES_KOMMO_O, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KOMMO_O, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KOMMO_O, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TAPU_KOKO, DEX_MORNING
    dexendareadata


specialareas SPECIES_TAPU_KOKO, DEX_DAY
    dexendareadata


specialareas SPECIES_TAPU_KOKO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TAPU_KOKO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TAPU_KOKO, DEX_DAY
    dexendareadata


routesandcities SPECIES_TAPU_KOKO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TAPU_KOKO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TAPU_KOKO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TAPU_LELE, DEX_MORNING
    dexendareadata


specialareas SPECIES_TAPU_LELE, DEX_DAY
    dexendareadata


specialareas SPECIES_TAPU_LELE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TAPU_LELE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TAPU_LELE, DEX_DAY
    dexendareadata


routesandcities SPECIES_TAPU_LELE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TAPU_LELE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TAPU_LELE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TAPU_BULU, DEX_MORNING
    dexendareadata


specialareas SPECIES_TAPU_BULU, DEX_DAY
    dexendareadata


specialareas SPECIES_TAPU_BULU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TAPU_BULU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TAPU_BULU, DEX_DAY
    dexendareadata


routesandcities SPECIES_TAPU_BULU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TAPU_BULU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TAPU_BULU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TAPU_FINI, DEX_MORNING
    dexendareadata


specialareas SPECIES_TAPU_FINI, DEX_DAY
    dexendareadata


specialareas SPECIES_TAPU_FINI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TAPU_FINI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TAPU_FINI, DEX_DAY
    dexendareadata


routesandcities SPECIES_TAPU_FINI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TAPU_FINI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TAPU_FINI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_COSMOG, DEX_MORNING
    dexendareadata


specialareas SPECIES_COSMOG, DEX_DAY
    dexendareadata


specialareas SPECIES_COSMOG, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_COSMOG, DEX_MORNING
    dexendareadata


routesandcities SPECIES_COSMOG, DEX_DAY
    dexendareadata


routesandcities SPECIES_COSMOG, DEX_NIGHT
    dexendareadata


specialareas SPECIES_COSMOG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_COSMOG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_COSMOEM, DEX_MORNING
    dexendareadata


specialareas SPECIES_COSMOEM, DEX_DAY
    dexendareadata


specialareas SPECIES_COSMOEM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_COSMOEM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_COSMOEM, DEX_DAY
    dexendareadata


routesandcities SPECIES_COSMOEM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_COSMOEM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_COSMOEM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SOLGALEO, DEX_MORNING
    dexendareadata


specialareas SPECIES_SOLGALEO, DEX_DAY
    dexendareadata


specialareas SPECIES_SOLGALEO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SOLGALEO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SOLGALEO, DEX_DAY
    dexendareadata


routesandcities SPECIES_SOLGALEO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SOLGALEO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SOLGALEO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LUNALA, DEX_MORNING
    dexendareadata


specialareas SPECIES_LUNALA, DEX_DAY
    dexendareadata


specialareas SPECIES_LUNALA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LUNALA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LUNALA, DEX_DAY
    dexendareadata


routesandcities SPECIES_LUNALA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LUNALA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LUNALA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NIHILEGO, DEX_MORNING
    dexendareadata


specialareas SPECIES_NIHILEGO, DEX_DAY
    dexendareadata


specialareas SPECIES_NIHILEGO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NIHILEGO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NIHILEGO, DEX_DAY
    dexendareadata


routesandcities SPECIES_NIHILEGO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NIHILEGO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NIHILEGO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BUZZWOLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_BUZZWOLE, DEX_DAY
    dexendareadata


specialareas SPECIES_BUZZWOLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BUZZWOLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BUZZWOLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_BUZZWOLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BUZZWOLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BUZZWOLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PHEROMOSA, DEX_MORNING
    dexendareadata


specialareas SPECIES_PHEROMOSA, DEX_DAY
    dexendareadata


specialareas SPECIES_PHEROMOSA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PHEROMOSA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PHEROMOSA, DEX_DAY
    dexendareadata


routesandcities SPECIES_PHEROMOSA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PHEROMOSA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PHEROMOSA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_XURKITREE, DEX_MORNING
    dexendareadata


specialareas SPECIES_XURKITREE, DEX_DAY
    dexendareadata


specialareas SPECIES_XURKITREE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_XURKITREE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_XURKITREE, DEX_DAY
    dexendareadata


routesandcities SPECIES_XURKITREE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_XURKITREE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_XURKITREE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CELESTEELA, DEX_MORNING
    dexendareadata


specialareas SPECIES_CELESTEELA, DEX_DAY
    dexendareadata


specialareas SPECIES_CELESTEELA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CELESTEELA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CELESTEELA, DEX_DAY
    dexendareadata


routesandcities SPECIES_CELESTEELA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CELESTEELA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CELESTEELA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KARTANA, DEX_MORNING
    dexendareadata


specialareas SPECIES_KARTANA, DEX_DAY
    dexendareadata


specialareas SPECIES_KARTANA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KARTANA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KARTANA, DEX_DAY
    dexendareadata


routesandcities SPECIES_KARTANA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KARTANA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KARTANA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GUZZLORD, DEX_MORNING
    dexendareadata


specialareas SPECIES_GUZZLORD, DEX_DAY
    dexendareadata


specialareas SPECIES_GUZZLORD, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GUZZLORD, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GUZZLORD, DEX_DAY
    dexendareadata


routesandcities SPECIES_GUZZLORD, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GUZZLORD, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GUZZLORD, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NECROZMA, DEX_MORNING
    dexendareadata


specialareas SPECIES_NECROZMA, DEX_DAY
    dexendareadata


specialareas SPECIES_NECROZMA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NECROZMA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NECROZMA, DEX_DAY
    dexendareadata


routesandcities SPECIES_NECROZMA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NECROZMA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NECROZMA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MAGEARNA, DEX_MORNING
    dexendareadata


specialareas SPECIES_MAGEARNA, DEX_DAY
    dexendareadata


specialareas SPECIES_MAGEARNA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MAGEARNA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MAGEARNA, DEX_DAY
    dexendareadata


routesandcities SPECIES_MAGEARNA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MAGEARNA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MAGEARNA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MARSHADOW, DEX_MORNING
    dexendareadata


specialareas SPECIES_MARSHADOW, DEX_DAY
    dexendareadata


specialareas SPECIES_MARSHADOW, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MARSHADOW, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MARSHADOW, DEX_DAY
    dexendareadata


routesandcities SPECIES_MARSHADOW, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MARSHADOW, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MARSHADOW, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_POIPOLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_POIPOLE, DEX_DAY
    dexendareadata


specialareas SPECIES_POIPOLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_POIPOLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_POIPOLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_POIPOLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_POIPOLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_POIPOLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NAGANADEL, DEX_MORNING
    dexendareadata


specialareas SPECIES_NAGANADEL, DEX_DAY
    dexendareadata


specialareas SPECIES_NAGANADEL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NAGANADEL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NAGANADEL, DEX_DAY
    dexendareadata


routesandcities SPECIES_NAGANADEL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NAGANADEL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NAGANADEL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_STAKATAKA, DEX_MORNING
    dexendareadata


specialareas SPECIES_STAKATAKA, DEX_DAY
    dexendareadata


specialareas SPECIES_STAKATAKA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_STAKATAKA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_STAKATAKA, DEX_DAY
    dexendareadata


routesandcities SPECIES_STAKATAKA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_STAKATAKA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_STAKATAKA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BLACEPHALON, DEX_MORNING
    dexendareadata


specialareas SPECIES_BLACEPHALON, DEX_DAY
    dexendareadata


specialareas SPECIES_BLACEPHALON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BLACEPHALON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BLACEPHALON, DEX_DAY
    dexendareadata


routesandcities SPECIES_BLACEPHALON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BLACEPHALON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BLACEPHALON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ZERAORA, DEX_MORNING
    dexendareadata


specialareas SPECIES_ZERAORA, DEX_DAY
    dexendareadata


specialareas SPECIES_ZERAORA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ZERAORA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ZERAORA, DEX_DAY
    dexendareadata


routesandcities SPECIES_ZERAORA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ZERAORA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ZERAORA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MELTAN, DEX_MORNING
    dexendareadata


specialareas SPECIES_MELTAN, DEX_DAY
    dexendareadata


specialareas SPECIES_MELTAN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MELTAN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MELTAN, DEX_DAY
    dexendareadata


routesandcities SPECIES_MELTAN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MELTAN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MELTAN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MELMETAL, DEX_MORNING
    dexendareadata


specialareas SPECIES_MELMETAL, DEX_DAY
    dexendareadata


specialareas SPECIES_MELMETAL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MELMETAL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MELMETAL, DEX_DAY
    dexendareadata


routesandcities SPECIES_MELMETAL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MELMETAL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MELMETAL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GROOKEY, DEX_MORNING
    dexendareadata


specialareas SPECIES_GROOKEY, DEX_DAY
    dexendareadata


specialareas SPECIES_GROOKEY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GROOKEY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GROOKEY, DEX_DAY
    dexendareadata


routesandcities SPECIES_GROOKEY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GROOKEY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GROOKEY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_THWACKEY, DEX_MORNING
    dexendareadata


specialareas SPECIES_THWACKEY, DEX_DAY
    dexendareadata


specialareas SPECIES_THWACKEY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_THWACKEY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_THWACKEY, DEX_DAY
    dexendareadata


routesandcities SPECIES_THWACKEY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_THWACKEY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_THWACKEY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RILLABOOM, DEX_MORNING
    dexendareadata


specialareas SPECIES_RILLABOOM, DEX_DAY
    dexendareadata


specialareas SPECIES_RILLABOOM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RILLABOOM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RILLABOOM, DEX_DAY
    dexendareadata


routesandcities SPECIES_RILLABOOM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RILLABOOM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RILLABOOM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SCORBUNNY, DEX_MORNING
    dexendareadata


specialareas SPECIES_SCORBUNNY, DEX_DAY
    dexendareadata


specialareas SPECIES_SCORBUNNY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SCORBUNNY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SCORBUNNY, DEX_DAY
    dexendareadata


routesandcities SPECIES_SCORBUNNY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SCORBUNNY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SCORBUNNY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RABOOT, DEX_MORNING
    dexendareadata


specialareas SPECIES_RABOOT, DEX_DAY
    dexendareadata


specialareas SPECIES_RABOOT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RABOOT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RABOOT, DEX_DAY
    dexendareadata


routesandcities SPECIES_RABOOT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RABOOT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RABOOT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CINDERACE, DEX_MORNING
    dexendareadata


specialareas SPECIES_CINDERACE, DEX_DAY
    dexendareadata


specialareas SPECIES_CINDERACE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CINDERACE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CINDERACE, DEX_DAY
    dexendareadata


routesandcities SPECIES_CINDERACE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CINDERACE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CINDERACE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SOBBLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_SOBBLE, DEX_DAY
    dexendareadata


specialareas SPECIES_SOBBLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SOBBLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SOBBLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SOBBLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SOBBLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SOBBLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DRIZZILE, DEX_MORNING
    dexendareadata


specialareas SPECIES_DRIZZILE, DEX_DAY
    dexendareadata


specialareas SPECIES_DRIZZILE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DRIZZILE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DRIZZILE, DEX_DAY
    dexendareadata


routesandcities SPECIES_DRIZZILE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DRIZZILE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DRIZZILE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_INTELEON, DEX_MORNING
    dexendareadata


specialareas SPECIES_INTELEON, DEX_DAY
    dexendareadata


specialareas SPECIES_INTELEON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_INTELEON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_INTELEON, DEX_DAY
    dexendareadata


routesandcities SPECIES_INTELEON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_INTELEON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_INTELEON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SKWOVET, DEX_MORNING
    dexendareadata


specialareas SPECIES_SKWOVET, DEX_DAY
    dexendareadata


specialareas SPECIES_SKWOVET, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SKWOVET, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SKWOVET, DEX_DAY
    dexendareadata


routesandcities SPECIES_SKWOVET, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SKWOVET, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SKWOVET, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GREEDENT, DEX_MORNING
    dexendareadata


specialareas SPECIES_GREEDENT, DEX_DAY
    dexendareadata


specialareas SPECIES_GREEDENT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GREEDENT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GREEDENT, DEX_DAY
    dexendareadata


routesandcities SPECIES_GREEDENT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GREEDENT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GREEDENT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ROOKIDEE, DEX_MORNING
    dexendareadata


specialareas SPECIES_ROOKIDEE, DEX_DAY
    dexendareadata


specialareas SPECIES_ROOKIDEE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ROOKIDEE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ROOKIDEE, DEX_DAY
    dexendareadata


routesandcities SPECIES_ROOKIDEE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ROOKIDEE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ROOKIDEE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CORVISQUIRE, DEX_MORNING
    dexendareadata


specialareas SPECIES_CORVISQUIRE, DEX_DAY
    dexendareadata


specialareas SPECIES_CORVISQUIRE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CORVISQUIRE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CORVISQUIRE, DEX_DAY
    dexendareadata


routesandcities SPECIES_CORVISQUIRE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CORVISQUIRE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CORVISQUIRE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CORVIKNIGHT, DEX_MORNING
    dexendareadata


specialareas SPECIES_CORVIKNIGHT, DEX_DAY
    dexendareadata


specialareas SPECIES_CORVIKNIGHT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CORVIKNIGHT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CORVIKNIGHT, DEX_DAY
    dexendareadata


routesandcities SPECIES_CORVIKNIGHT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CORVIKNIGHT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CORVIKNIGHT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BLIPBUG, DEX_MORNING
    dexendareadata


specialareas SPECIES_BLIPBUG, DEX_DAY
    dexendareadata


specialareas SPECIES_BLIPBUG, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BLIPBUG, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BLIPBUG, DEX_DAY
    dexendareadata


routesandcities SPECIES_BLIPBUG, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BLIPBUG, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BLIPBUG, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DOTTLER, DEX_MORNING
    dexendareadata


specialareas SPECIES_DOTTLER, DEX_DAY
    dexendareadata


specialareas SPECIES_DOTTLER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DOTTLER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DOTTLER, DEX_DAY
    dexendareadata


routesandcities SPECIES_DOTTLER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DOTTLER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DOTTLER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ORBEETLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_ORBEETLE, DEX_DAY
    dexendareadata


specialareas SPECIES_ORBEETLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ORBEETLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ORBEETLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_ORBEETLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ORBEETLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ORBEETLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NICKIT, DEX_MORNING
    dexendareadata


specialareas SPECIES_NICKIT, DEX_DAY
    dexendareadata


specialareas SPECIES_NICKIT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NICKIT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NICKIT, DEX_DAY
    dexendareadata


routesandcities SPECIES_NICKIT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NICKIT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NICKIT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_THIEVUL, DEX_MORNING
    dexendareadata


specialareas SPECIES_THIEVUL, DEX_DAY
    dexendareadata


specialareas SPECIES_THIEVUL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_THIEVUL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_THIEVUL, DEX_DAY
    dexendareadata


routesandcities SPECIES_THIEVUL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_THIEVUL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_THIEVUL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GOSSIFLEUR, DEX_MORNING
    dexendareadata


specialareas SPECIES_GOSSIFLEUR, DEX_DAY
    dexendareadata


specialareas SPECIES_GOSSIFLEUR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GOSSIFLEUR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GOSSIFLEUR, DEX_DAY
    dexendareadata


routesandcities SPECIES_GOSSIFLEUR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GOSSIFLEUR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GOSSIFLEUR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ELDEGOSS, DEX_MORNING
    dexendareadata


specialareas SPECIES_ELDEGOSS, DEX_DAY
    dexendareadata


specialareas SPECIES_ELDEGOSS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ELDEGOSS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ELDEGOSS, DEX_DAY
    dexendareadata


routesandcities SPECIES_ELDEGOSS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ELDEGOSS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ELDEGOSS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WOOLOO, DEX_MORNING
    dexendareadata


specialareas SPECIES_WOOLOO, DEX_DAY
    dexendareadata


specialareas SPECIES_WOOLOO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WOOLOO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WOOLOO, DEX_DAY
    dexendareadata


routesandcities SPECIES_WOOLOO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WOOLOO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WOOLOO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DUBWOOL, DEX_MORNING
    dexendareadata


specialareas SPECIES_DUBWOOL, DEX_DAY
    dexendareadata


specialareas SPECIES_DUBWOOL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DUBWOOL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DUBWOOL, DEX_DAY
    dexendareadata


routesandcities SPECIES_DUBWOOL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DUBWOOL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DUBWOOL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHEWTLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHEWTLE, DEX_DAY
    dexendareadata


specialareas SPECIES_CHEWTLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHEWTLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHEWTLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHEWTLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHEWTLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CHEWTLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DREDNAW, DEX_MORNING
    dexendareadata


specialareas SPECIES_DREDNAW, DEX_DAY
    dexendareadata


specialareas SPECIES_DREDNAW, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DREDNAW, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DREDNAW, DEX_DAY
    dexendareadata


routesandcities SPECIES_DREDNAW, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DREDNAW, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DREDNAW, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_YAMPER, DEX_MORNING
    dexendareadata


specialareas SPECIES_YAMPER, DEX_DAY
    dexendareadata


specialareas SPECIES_YAMPER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_YAMPER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_YAMPER, DEX_DAY
    dexendareadata


routesandcities SPECIES_YAMPER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_YAMPER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_YAMPER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BOLTUND, DEX_MORNING
    dexendareadata


specialareas SPECIES_BOLTUND, DEX_DAY
    dexendareadata


specialareas SPECIES_BOLTUND, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BOLTUND, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BOLTUND, DEX_DAY
    dexendareadata


routesandcities SPECIES_BOLTUND, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BOLTUND, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BOLTUND, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ROLYCOLY, DEX_MORNING
    dexendareadata


specialareas SPECIES_ROLYCOLY, DEX_DAY
    dexendareadata


specialareas SPECIES_ROLYCOLY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ROLYCOLY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ROLYCOLY, DEX_DAY
    dexendareadata


routesandcities SPECIES_ROLYCOLY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ROLYCOLY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ROLYCOLY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CARKOL, DEX_MORNING
    dexendareadata


specialareas SPECIES_CARKOL, DEX_DAY
    dexendareadata


specialareas SPECIES_CARKOL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CARKOL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CARKOL, DEX_DAY
    dexendareadata


routesandcities SPECIES_CARKOL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CARKOL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CARKOL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_COALOSSAL, DEX_MORNING
    dexendareadata


specialareas SPECIES_COALOSSAL, DEX_DAY
    dexendareadata


specialareas SPECIES_COALOSSAL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_COALOSSAL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_COALOSSAL, DEX_DAY
    dexendareadata


routesandcities SPECIES_COALOSSAL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_COALOSSAL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_COALOSSAL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_APPLIN, DEX_MORNING
    dexendareadata


specialareas SPECIES_APPLIN, DEX_DAY
    dexendareadata


specialareas SPECIES_APPLIN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_APPLIN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_APPLIN, DEX_DAY
    dexendareadata


routesandcities SPECIES_APPLIN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_APPLIN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_APPLIN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FLAPPLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_FLAPPLE, DEX_DAY
    dexendareadata


specialareas SPECIES_FLAPPLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FLAPPLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FLAPPLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_FLAPPLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FLAPPLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FLAPPLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_APPLETUN, DEX_MORNING
    dexendareadata


specialareas SPECIES_APPLETUN, DEX_DAY
    dexendareadata


specialareas SPECIES_APPLETUN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_APPLETUN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_APPLETUN, DEX_DAY
    dexendareadata


routesandcities SPECIES_APPLETUN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_APPLETUN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_APPLETUN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SILICOBRA, DEX_MORNING
    dexendareadata


specialareas SPECIES_SILICOBRA, DEX_DAY
    dexendareadata


specialareas SPECIES_SILICOBRA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SILICOBRA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SILICOBRA, DEX_DAY
    dexendareadata


routesandcities SPECIES_SILICOBRA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SILICOBRA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SILICOBRA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SANDACONDA, DEX_MORNING
    dexendareadata


specialareas SPECIES_SANDACONDA, DEX_DAY
    dexendareadata


specialareas SPECIES_SANDACONDA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SANDACONDA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SANDACONDA, DEX_DAY
    dexendareadata


routesandcities SPECIES_SANDACONDA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SANDACONDA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SANDACONDA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CRAMORANT, DEX_MORNING
    dexendareadata


specialareas SPECIES_CRAMORANT, DEX_DAY
    dexendareadata


specialareas SPECIES_CRAMORANT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CRAMORANT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CRAMORANT, DEX_DAY
    dexendareadata


routesandcities SPECIES_CRAMORANT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CRAMORANT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CRAMORANT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ARROKUDA, DEX_MORNING
    dexendareadata


specialareas SPECIES_ARROKUDA, DEX_DAY
    dexendareadata


specialareas SPECIES_ARROKUDA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ARROKUDA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ARROKUDA, DEX_DAY
    dexendareadata


routesandcities SPECIES_ARROKUDA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ARROKUDA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ARROKUDA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BARRASKEWDA, DEX_MORNING
    dexendareadata


specialareas SPECIES_BARRASKEWDA, DEX_DAY
    dexendareadata


specialareas SPECIES_BARRASKEWDA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BARRASKEWDA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BARRASKEWDA, DEX_DAY
    dexendareadata


routesandcities SPECIES_BARRASKEWDA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BARRASKEWDA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BARRASKEWDA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TOXEL, DEX_MORNING
    dexendareadata


specialareas SPECIES_TOXEL, DEX_DAY
    dexendareadata


specialareas SPECIES_TOXEL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TOXEL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TOXEL, DEX_DAY
    dexendareadata


routesandcities SPECIES_TOXEL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TOXEL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TOXEL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TOXTRICITY, DEX_MORNING
    dexendareadata


specialareas SPECIES_TOXTRICITY, DEX_DAY
    dexendareadata


specialareas SPECIES_TOXTRICITY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TOXTRICITY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TOXTRICITY, DEX_DAY
    dexendareadata


routesandcities SPECIES_TOXTRICITY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TOXTRICITY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TOXTRICITY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SIZZLIPEDE, DEX_MORNING
    dexendareadata


specialareas SPECIES_SIZZLIPEDE, DEX_DAY
    dexendareadata


specialareas SPECIES_SIZZLIPEDE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SIZZLIPEDE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SIZZLIPEDE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SIZZLIPEDE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SIZZLIPEDE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SIZZLIPEDE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CENTISKORCH, DEX_MORNING
    dexendareadata


specialareas SPECIES_CENTISKORCH, DEX_DAY
    dexendareadata


specialareas SPECIES_CENTISKORCH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CENTISKORCH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CENTISKORCH, DEX_DAY
    dexendareadata


routesandcities SPECIES_CENTISKORCH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CENTISKORCH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CENTISKORCH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CLOBBOPUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_CLOBBOPUS, DEX_DAY
    dexendareadata


specialareas SPECIES_CLOBBOPUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CLOBBOPUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CLOBBOPUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_CLOBBOPUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CLOBBOPUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CLOBBOPUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GRAPPLOCT, DEX_MORNING
    dexendareadata


specialareas SPECIES_GRAPPLOCT, DEX_DAY
    dexendareadata


specialareas SPECIES_GRAPPLOCT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GRAPPLOCT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GRAPPLOCT, DEX_DAY
    dexendareadata


routesandcities SPECIES_GRAPPLOCT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GRAPPLOCT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GRAPPLOCT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SINISTEA, DEX_MORNING
    dexendareadata


specialareas SPECIES_SINISTEA, DEX_DAY
    dexendareadata


specialareas SPECIES_SINISTEA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SINISTEA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SINISTEA, DEX_DAY
    dexendareadata


routesandcities SPECIES_SINISTEA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SINISTEA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SINISTEA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_POLTEAGEIST, DEX_MORNING
    dexendareadata


specialareas SPECIES_POLTEAGEIST, DEX_DAY
    dexendareadata


specialareas SPECIES_POLTEAGEIST, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_POLTEAGEIST, DEX_MORNING
    dexendareadata


routesandcities SPECIES_POLTEAGEIST, DEX_DAY
    dexendareadata


routesandcities SPECIES_POLTEAGEIST, DEX_NIGHT
    dexendareadata


specialareas SPECIES_POLTEAGEIST, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_POLTEAGEIST, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HATENNA, DEX_MORNING
    dexendareadata


specialareas SPECIES_HATENNA, DEX_DAY
    dexendareadata


specialareas SPECIES_HATENNA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HATENNA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HATENNA, DEX_DAY
    dexendareadata


routesandcities SPECIES_HATENNA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HATENNA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HATENNA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HATTREM, DEX_MORNING
    dexendareadata


specialareas SPECIES_HATTREM, DEX_DAY
    dexendareadata


specialareas SPECIES_HATTREM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HATTREM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HATTREM, DEX_DAY
    dexendareadata


routesandcities SPECIES_HATTREM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HATTREM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HATTREM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HATTERENE, DEX_MORNING
    dexendareadata


specialareas SPECIES_HATTERENE, DEX_DAY
    dexendareadata


specialareas SPECIES_HATTERENE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HATTERENE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HATTERENE, DEX_DAY
    dexendareadata


routesandcities SPECIES_HATTERENE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HATTERENE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HATTERENE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_IMPIDIMP, DEX_MORNING
    dexendareadata


specialareas SPECIES_IMPIDIMP, DEX_DAY
    dexendareadata


specialareas SPECIES_IMPIDIMP, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_IMPIDIMP, DEX_MORNING
    dexendareadata


routesandcities SPECIES_IMPIDIMP, DEX_DAY
    dexendareadata


routesandcities SPECIES_IMPIDIMP, DEX_NIGHT
    dexendareadata


specialareas SPECIES_IMPIDIMP, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_IMPIDIMP, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MORGREM, DEX_MORNING
    dexendareadata


specialareas SPECIES_MORGREM, DEX_DAY
    dexendareadata


specialareas SPECIES_MORGREM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MORGREM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MORGREM, DEX_DAY
    dexendareadata


routesandcities SPECIES_MORGREM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MORGREM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MORGREM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GRIMMSNARL, DEX_MORNING
    dexendareadata


specialareas SPECIES_GRIMMSNARL, DEX_DAY
    dexendareadata


specialareas SPECIES_GRIMMSNARL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GRIMMSNARL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GRIMMSNARL, DEX_DAY
    dexendareadata


routesandcities SPECIES_GRIMMSNARL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GRIMMSNARL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GRIMMSNARL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_OBSTAGOON, DEX_MORNING
    dexendareadata


specialareas SPECIES_OBSTAGOON, DEX_DAY
    dexendareadata


specialareas SPECIES_OBSTAGOON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_OBSTAGOON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_OBSTAGOON, DEX_DAY
    dexendareadata


routesandcities SPECIES_OBSTAGOON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_OBSTAGOON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_OBSTAGOON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PERRSERKER, DEX_MORNING
    dexendareadata


specialareas SPECIES_PERRSERKER, DEX_DAY
    dexendareadata


specialareas SPECIES_PERRSERKER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PERRSERKER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PERRSERKER, DEX_DAY
    dexendareadata


routesandcities SPECIES_PERRSERKER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PERRSERKER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PERRSERKER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CURSOLA, DEX_MORNING
    dexendareadata


specialareas SPECIES_CURSOLA, DEX_DAY
    dexendareadata


specialareas SPECIES_CURSOLA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CURSOLA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CURSOLA, DEX_DAY
    dexendareadata


routesandcities SPECIES_CURSOLA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CURSOLA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CURSOLA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SIRFETCHD, DEX_MORNING
    dexendareadata


specialareas SPECIES_SIRFETCHD, DEX_DAY
    dexendareadata


specialareas SPECIES_SIRFETCHD, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SIRFETCHD, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SIRFETCHD, DEX_DAY
    dexendareadata


routesandcities SPECIES_SIRFETCHD, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SIRFETCHD, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SIRFETCHD, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MR_RIME, DEX_MORNING
    dexendareadata


specialareas SPECIES_MR_RIME, DEX_DAY
    dexendareadata


specialareas SPECIES_MR_RIME, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MR_RIME, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MR_RIME, DEX_DAY
    dexendareadata


routesandcities SPECIES_MR_RIME, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MR_RIME, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MR_RIME, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RUNERIGUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_RUNERIGUS, DEX_DAY
    dexendareadata


specialareas SPECIES_RUNERIGUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RUNERIGUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RUNERIGUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_RUNERIGUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RUNERIGUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RUNERIGUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MILCERY, DEX_MORNING
    dexendareadata


specialareas SPECIES_MILCERY, DEX_DAY
    dexendareadata


specialareas SPECIES_MILCERY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MILCERY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MILCERY, DEX_DAY
    dexendareadata


routesandcities SPECIES_MILCERY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MILCERY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MILCERY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ALCREMIE, DEX_MORNING
    dexendareadata


specialareas SPECIES_ALCREMIE, DEX_DAY
    dexendareadata


specialareas SPECIES_ALCREMIE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ALCREMIE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ALCREMIE, DEX_DAY
    dexendareadata


routesandcities SPECIES_ALCREMIE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ALCREMIE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ALCREMIE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FALINKS, DEX_MORNING
    dexendareadata


specialareas SPECIES_FALINKS, DEX_DAY
    dexendareadata


specialareas SPECIES_FALINKS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FALINKS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FALINKS, DEX_DAY
    dexendareadata


routesandcities SPECIES_FALINKS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FALINKS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FALINKS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PINCURCHIN, DEX_MORNING
    dexendareadata


specialareas SPECIES_PINCURCHIN, DEX_DAY
    dexendareadata


specialareas SPECIES_PINCURCHIN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PINCURCHIN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PINCURCHIN, DEX_DAY
    dexendareadata


routesandcities SPECIES_PINCURCHIN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PINCURCHIN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PINCURCHIN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SNOM, DEX_MORNING
    dexendareadata


specialareas SPECIES_SNOM, DEX_DAY
    dexendareadata


specialareas SPECIES_SNOM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SNOM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SNOM, DEX_DAY
    dexendareadata


routesandcities SPECIES_SNOM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SNOM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SNOM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FROSMOTH, DEX_MORNING
    dexendareadata


specialareas SPECIES_FROSMOTH, DEX_DAY
    dexendareadata


specialareas SPECIES_FROSMOTH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FROSMOTH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FROSMOTH, DEX_DAY
    dexendareadata


routesandcities SPECIES_FROSMOTH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FROSMOTH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FROSMOTH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_STONJOURNER, DEX_MORNING
    dexendareadata


specialareas SPECIES_STONJOURNER, DEX_DAY
    dexendareadata


specialareas SPECIES_STONJOURNER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_STONJOURNER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_STONJOURNER, DEX_DAY
    dexendareadata


routesandcities SPECIES_STONJOURNER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_STONJOURNER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_STONJOURNER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_EISCUE, DEX_MORNING
    dexendareadata


specialareas SPECIES_EISCUE, DEX_DAY
    dexendareadata


specialareas SPECIES_EISCUE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_EISCUE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_EISCUE, DEX_DAY
    dexendareadata


routesandcities SPECIES_EISCUE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_EISCUE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_EISCUE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_INDEEDEE, DEX_MORNING
    dexendareadata


specialareas SPECIES_INDEEDEE, DEX_DAY
    dexendareadata


specialareas SPECIES_INDEEDEE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_INDEEDEE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_INDEEDEE, DEX_DAY
    dexendareadata


routesandcities SPECIES_INDEEDEE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_INDEEDEE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_INDEEDEE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MORPEKO, DEX_MORNING
    dexendareadata


specialareas SPECIES_MORPEKO, DEX_DAY
    dexendareadata


specialareas SPECIES_MORPEKO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MORPEKO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MORPEKO, DEX_DAY
    dexendareadata


routesandcities SPECIES_MORPEKO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MORPEKO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MORPEKO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CUFANT, DEX_MORNING
    dexendareadata


specialareas SPECIES_CUFANT, DEX_DAY
    dexendareadata


specialareas SPECIES_CUFANT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CUFANT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CUFANT, DEX_DAY
    dexendareadata


routesandcities SPECIES_CUFANT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CUFANT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CUFANT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_COPPERAJAH, DEX_MORNING
    dexendareadata


specialareas SPECIES_COPPERAJAH, DEX_DAY
    dexendareadata


specialareas SPECIES_COPPERAJAH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_COPPERAJAH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_COPPERAJAH, DEX_DAY
    dexendareadata


routesandcities SPECIES_COPPERAJAH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_COPPERAJAH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_COPPERAJAH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DRACOZOLT, DEX_MORNING
    dexendareadata


specialareas SPECIES_DRACOZOLT, DEX_DAY
    dexendareadata


specialareas SPECIES_DRACOZOLT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DRACOZOLT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DRACOZOLT, DEX_DAY
    dexendareadata


routesandcities SPECIES_DRACOZOLT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DRACOZOLT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DRACOZOLT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ARCTOZOLT, DEX_MORNING
    dexendareadata


specialareas SPECIES_ARCTOZOLT, DEX_DAY
    dexendareadata


specialareas SPECIES_ARCTOZOLT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ARCTOZOLT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ARCTOZOLT, DEX_DAY
    dexendareadata


routesandcities SPECIES_ARCTOZOLT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ARCTOZOLT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ARCTOZOLT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DRACOVISH, DEX_MORNING
    dexendareadata


specialareas SPECIES_DRACOVISH, DEX_DAY
    dexendareadata


specialareas SPECIES_DRACOVISH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DRACOVISH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DRACOVISH, DEX_DAY
    dexendareadata


routesandcities SPECIES_DRACOVISH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DRACOVISH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DRACOVISH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ARCTOVISH, DEX_MORNING
    dexendareadata


specialareas SPECIES_ARCTOVISH, DEX_DAY
    dexendareadata


specialareas SPECIES_ARCTOVISH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ARCTOVISH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ARCTOVISH, DEX_DAY
    dexendareadata


routesandcities SPECIES_ARCTOVISH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ARCTOVISH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ARCTOVISH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DURALUDON, DEX_MORNING
    dexendareadata


specialareas SPECIES_DURALUDON, DEX_DAY
    dexendareadata


specialareas SPECIES_DURALUDON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DURALUDON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DURALUDON, DEX_DAY
    dexendareadata


routesandcities SPECIES_DURALUDON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DURALUDON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DURALUDON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DREEPY, DEX_MORNING
    dexendareadata


specialareas SPECIES_DREEPY, DEX_DAY
    dexendareadata


specialareas SPECIES_DREEPY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DREEPY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DREEPY, DEX_DAY
    dexendareadata


routesandcities SPECIES_DREEPY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DREEPY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DREEPY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DRAKLOAK, DEX_MORNING
    dexendareadata


specialareas SPECIES_DRAKLOAK, DEX_DAY
    dexendareadata


specialareas SPECIES_DRAKLOAK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DRAKLOAK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DRAKLOAK, DEX_DAY
    dexendareadata


routesandcities SPECIES_DRAKLOAK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DRAKLOAK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DRAKLOAK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DRAGAPULT, DEX_MORNING
    dexendareadata


specialareas SPECIES_DRAGAPULT, DEX_DAY
    dexendareadata


specialareas SPECIES_DRAGAPULT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DRAGAPULT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DRAGAPULT, DEX_DAY
    dexendareadata


routesandcities SPECIES_DRAGAPULT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DRAGAPULT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DRAGAPULT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ZACIAN, DEX_MORNING
    dexendareadata


specialareas SPECIES_ZACIAN, DEX_DAY
    dexendareadata


specialareas SPECIES_ZACIAN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ZACIAN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ZACIAN, DEX_DAY
    dexendareadata


routesandcities SPECIES_ZACIAN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ZACIAN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ZACIAN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ZAMAZENTA, DEX_MORNING
    dexendareadata


specialareas SPECIES_ZAMAZENTA, DEX_DAY
    dexendareadata


specialareas SPECIES_ZAMAZENTA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ZAMAZENTA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ZAMAZENTA, DEX_DAY
    dexendareadata


routesandcities SPECIES_ZAMAZENTA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ZAMAZENTA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ZAMAZENTA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ETERNATUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_ETERNATUS, DEX_DAY
    dexendareadata


specialareas SPECIES_ETERNATUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ETERNATUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ETERNATUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_ETERNATUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ETERNATUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ETERNATUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KUBFU, DEX_MORNING
    dexendareadata


specialareas SPECIES_KUBFU, DEX_DAY
    dexendareadata


specialareas SPECIES_KUBFU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KUBFU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KUBFU, DEX_DAY
    dexendareadata


routesandcities SPECIES_KUBFU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KUBFU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KUBFU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_URSHIFU, DEX_MORNING
    dexendareadata


specialareas SPECIES_URSHIFU, DEX_DAY
    dexendareadata


specialareas SPECIES_URSHIFU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_URSHIFU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_URSHIFU, DEX_DAY
    dexendareadata


routesandcities SPECIES_URSHIFU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_URSHIFU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_URSHIFU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ZARUDE, DEX_MORNING
    dexendareadata


specialareas SPECIES_ZARUDE, DEX_DAY
    dexendareadata


specialareas SPECIES_ZARUDE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ZARUDE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ZARUDE, DEX_DAY
    dexendareadata


routesandcities SPECIES_ZARUDE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ZARUDE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ZARUDE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_REGIELEKI, DEX_MORNING
    dexendareadata


specialareas SPECIES_REGIELEKI, DEX_DAY
    dexendareadata


specialareas SPECIES_REGIELEKI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_REGIELEKI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_REGIELEKI, DEX_DAY
    dexendareadata


routesandcities SPECIES_REGIELEKI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_REGIELEKI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_REGIELEKI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_REGIDRAGO, DEX_MORNING
    dexendareadata


specialareas SPECIES_REGIDRAGO, DEX_DAY
    dexendareadata


specialareas SPECIES_REGIDRAGO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_REGIDRAGO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_REGIDRAGO, DEX_DAY
    dexendareadata


routesandcities SPECIES_REGIDRAGO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_REGIDRAGO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_REGIDRAGO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GLASTRIER, DEX_MORNING
    dexendareadata


specialareas SPECIES_GLASTRIER, DEX_DAY
    dexendareadata


specialareas SPECIES_GLASTRIER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GLASTRIER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GLASTRIER, DEX_DAY
    dexendareadata


routesandcities SPECIES_GLASTRIER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GLASTRIER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GLASTRIER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SPECTRIER, DEX_MORNING
    dexendareadata


specialareas SPECIES_SPECTRIER, DEX_DAY
    dexendareadata


specialareas SPECIES_SPECTRIER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SPECTRIER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SPECTRIER, DEX_DAY
    dexendareadata


routesandcities SPECIES_SPECTRIER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SPECTRIER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SPECTRIER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CALYREX, DEX_MORNING
    dexendareadata


specialareas SPECIES_CALYREX, DEX_DAY
    dexendareadata


specialareas SPECIES_CALYREX, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CALYREX, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CALYREX, DEX_DAY
    dexendareadata


routesandcities SPECIES_CALYREX, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CALYREX, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CALYREX, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WYRDEER, DEX_MORNING
    dexendareadata


specialareas SPECIES_WYRDEER, DEX_DAY
    dexendareadata


specialareas SPECIES_WYRDEER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WYRDEER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WYRDEER, DEX_DAY
    dexendareadata


routesandcities SPECIES_WYRDEER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WYRDEER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WYRDEER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KLEAVOR, DEX_MORNING
    dexendareadata


specialareas SPECIES_KLEAVOR, DEX_DAY
    dexendareadata


specialareas SPECIES_KLEAVOR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KLEAVOR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KLEAVOR, DEX_DAY
    dexendareadata


routesandcities SPECIES_KLEAVOR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KLEAVOR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KLEAVOR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_URSALUNA, DEX_MORNING
    dexendareadata


specialareas SPECIES_URSALUNA, DEX_DAY
    dexendareadata


specialareas SPECIES_URSALUNA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_URSALUNA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_URSALUNA, DEX_DAY
    dexendareadata


routesandcities SPECIES_URSALUNA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_URSALUNA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_URSALUNA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BASCULEGION, DEX_MORNING
    dexendareadata


specialareas SPECIES_BASCULEGION, DEX_DAY
    dexendareadata


specialareas SPECIES_BASCULEGION, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BASCULEGION, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BASCULEGION, DEX_DAY
    dexendareadata


routesandcities SPECIES_BASCULEGION, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BASCULEGION, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BASCULEGION, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SNEASLER, DEX_MORNING
    dexendareadata


specialareas SPECIES_SNEASLER, DEX_DAY
    dexendareadata


specialareas SPECIES_SNEASLER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SNEASLER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SNEASLER, DEX_DAY
    dexendareadata


routesandcities SPECIES_SNEASLER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SNEASLER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SNEASLER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_OVERQWIL, DEX_MORNING
    dexendareadata


specialareas SPECIES_OVERQWIL, DEX_DAY
    dexendareadata


specialareas SPECIES_OVERQWIL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_OVERQWIL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_OVERQWIL, DEX_DAY
    dexendareadata


routesandcities SPECIES_OVERQWIL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_OVERQWIL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_OVERQWIL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ENAMORUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_ENAMORUS, DEX_DAY
    dexendareadata


specialareas SPECIES_ENAMORUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ENAMORUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ENAMORUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_ENAMORUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ENAMORUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ENAMORUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SPRIGATITO, DEX_MORNING
    dexendareadata


specialareas SPECIES_SPRIGATITO, DEX_DAY
    dexendareadata


specialareas SPECIES_SPRIGATITO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SPRIGATITO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SPRIGATITO, DEX_DAY
    dexendareadata


routesandcities SPECIES_SPRIGATITO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SPRIGATITO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SPRIGATITO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FLORAGATO, DEX_MORNING
    dexendareadata


specialareas SPECIES_FLORAGATO, DEX_DAY
    dexendareadata


specialareas SPECIES_FLORAGATO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FLORAGATO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FLORAGATO, DEX_DAY
    dexendareadata


routesandcities SPECIES_FLORAGATO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FLORAGATO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FLORAGATO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MEOWSCARADA, DEX_MORNING
    dexendareadata


specialareas SPECIES_MEOWSCARADA, DEX_DAY
    dexendareadata


specialareas SPECIES_MEOWSCARADA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MEOWSCARADA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MEOWSCARADA, DEX_DAY
    dexendareadata


routesandcities SPECIES_MEOWSCARADA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MEOWSCARADA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MEOWSCARADA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FUECOCO, DEX_MORNING
    dexendareadata


specialareas SPECIES_FUECOCO, DEX_DAY
    dexendareadata


specialareas SPECIES_FUECOCO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FUECOCO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FUECOCO, DEX_DAY
    dexendareadata


routesandcities SPECIES_FUECOCO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FUECOCO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FUECOCO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CROCALOR, DEX_MORNING
    dexendareadata


specialareas SPECIES_CROCALOR, DEX_DAY
    dexendareadata


specialareas SPECIES_CROCALOR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CROCALOR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CROCALOR, DEX_DAY
    dexendareadata


routesandcities SPECIES_CROCALOR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CROCALOR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CROCALOR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SKELEDIRGE, DEX_MORNING
    dexendareadata


specialareas SPECIES_SKELEDIRGE, DEX_DAY
    dexendareadata


specialareas SPECIES_SKELEDIRGE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SKELEDIRGE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SKELEDIRGE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SKELEDIRGE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SKELEDIRGE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SKELEDIRGE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_QUAXLY, DEX_MORNING
    dexendareadata


specialareas SPECIES_QUAXLY, DEX_DAY
    dexendareadata


specialareas SPECIES_QUAXLY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_QUAXLY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_QUAXLY, DEX_DAY
    dexendareadata


routesandcities SPECIES_QUAXLY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_QUAXLY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_QUAXLY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_QUAXWELL, DEX_MORNING
    dexendareadata


specialareas SPECIES_QUAXWELL, DEX_DAY
    dexendareadata


specialareas SPECIES_QUAXWELL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_QUAXWELL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_QUAXWELL, DEX_DAY
    dexendareadata


routesandcities SPECIES_QUAXWELL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_QUAXWELL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_QUAXWELL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_QUAQUAVAL, DEX_MORNING
    dexendareadata


specialareas SPECIES_QUAQUAVAL, DEX_DAY
    dexendareadata


specialareas SPECIES_QUAQUAVAL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_QUAQUAVAL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_QUAQUAVAL, DEX_DAY
    dexendareadata


routesandcities SPECIES_QUAQUAVAL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_QUAQUAVAL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_QUAQUAVAL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LECHONK, DEX_MORNING
    dexendareadata


specialareas SPECIES_LECHONK, DEX_DAY
    dexendareadata


specialareas SPECIES_LECHONK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LECHONK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LECHONK, DEX_DAY
    dexendareadata


routesandcities SPECIES_LECHONK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LECHONK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LECHONK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_OINKOLOGNE, DEX_MORNING
    dexendareadata


specialareas SPECIES_OINKOLOGNE, DEX_DAY
    dexendareadata


specialareas SPECIES_OINKOLOGNE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_OINKOLOGNE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_OINKOLOGNE, DEX_DAY
    dexendareadata


routesandcities SPECIES_OINKOLOGNE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_OINKOLOGNE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_OINKOLOGNE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TAROUNTULA, DEX_MORNING
    dexendareadata


specialareas SPECIES_TAROUNTULA, DEX_DAY
    dexendareadata


specialareas SPECIES_TAROUNTULA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TAROUNTULA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TAROUNTULA, DEX_DAY
    dexendareadata


routesandcities SPECIES_TAROUNTULA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TAROUNTULA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TAROUNTULA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SPIDOPS, DEX_MORNING
    dexendareadata


specialareas SPECIES_SPIDOPS, DEX_DAY
    dexendareadata


specialareas SPECIES_SPIDOPS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SPIDOPS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SPIDOPS, DEX_DAY
    dexendareadata


routesandcities SPECIES_SPIDOPS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SPIDOPS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SPIDOPS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NYMBLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_NYMBLE, DEX_DAY
    dexendareadata


specialareas SPECIES_NYMBLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NYMBLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NYMBLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_NYMBLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NYMBLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NYMBLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_LOKIX, DEX_MORNING
    dexendareadata


specialareas SPECIES_LOKIX, DEX_DAY
    dexendareadata


specialareas SPECIES_LOKIX, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_LOKIX, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LOKIX, DEX_DAY
    dexendareadata


routesandcities SPECIES_LOKIX, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LOKIX, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LOKIX, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PAWMI, DEX_MORNING
    dexendareadata


specialareas SPECIES_PAWMI, DEX_DAY
    dexendareadata


specialareas SPECIES_PAWMI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PAWMI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PAWMI, DEX_DAY
    dexendareadata


routesandcities SPECIES_PAWMI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PAWMI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PAWMI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PAWMO, DEX_MORNING
    dexendareadata


specialareas SPECIES_PAWMO, DEX_DAY
    dexendareadata


specialareas SPECIES_PAWMO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PAWMO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PAWMO, DEX_DAY
    dexendareadata


routesandcities SPECIES_PAWMO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PAWMO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PAWMO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PAWMOT, DEX_MORNING
    dexendareadata


specialareas SPECIES_PAWMOT, DEX_DAY
    dexendareadata


specialareas SPECIES_PAWMOT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PAWMOT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PAWMOT, DEX_DAY
    dexendareadata


routesandcities SPECIES_PAWMOT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PAWMOT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PAWMOT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TANDEMAUS, DEX_MORNING
    dexendareadata


specialareas SPECIES_TANDEMAUS, DEX_DAY
    dexendareadata


specialareas SPECIES_TANDEMAUS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TANDEMAUS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TANDEMAUS, DEX_DAY
    dexendareadata


routesandcities SPECIES_TANDEMAUS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TANDEMAUS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TANDEMAUS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MAUSHOLD, DEX_MORNING
    dexendareadata


specialareas SPECIES_MAUSHOLD, DEX_DAY
    dexendareadata


specialareas SPECIES_MAUSHOLD, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MAUSHOLD, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MAUSHOLD, DEX_DAY
    dexendareadata


routesandcities SPECIES_MAUSHOLD, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MAUSHOLD, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MAUSHOLD, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FIDOUGH, DEX_MORNING
    dexendareadata


specialareas SPECIES_FIDOUGH, DEX_DAY
    dexendareadata


specialareas SPECIES_FIDOUGH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FIDOUGH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FIDOUGH, DEX_DAY
    dexendareadata


routesandcities SPECIES_FIDOUGH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FIDOUGH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FIDOUGH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DACHSBUN, DEX_MORNING
    dexendareadata


specialareas SPECIES_DACHSBUN, DEX_DAY
    dexendareadata


specialareas SPECIES_DACHSBUN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DACHSBUN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DACHSBUN, DEX_DAY
    dexendareadata


routesandcities SPECIES_DACHSBUN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DACHSBUN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DACHSBUN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SMOLIV, DEX_MORNING
    dexendareadata


specialareas SPECIES_SMOLIV, DEX_DAY
    dexendareadata


specialareas SPECIES_SMOLIV, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SMOLIV, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SMOLIV, DEX_DAY
    dexendareadata


routesandcities SPECIES_SMOLIV, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SMOLIV, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SMOLIV, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DOLLIV, DEX_MORNING
    dexendareadata


specialareas SPECIES_DOLLIV, DEX_DAY
    dexendareadata


specialareas SPECIES_DOLLIV, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DOLLIV, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DOLLIV, DEX_DAY
    dexendareadata


routesandcities SPECIES_DOLLIV, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DOLLIV, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DOLLIV, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ARBOLIVA, DEX_MORNING
    dexendareadata


specialareas SPECIES_ARBOLIVA, DEX_DAY
    dexendareadata


specialareas SPECIES_ARBOLIVA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ARBOLIVA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ARBOLIVA, DEX_DAY
    dexendareadata


routesandcities SPECIES_ARBOLIVA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ARBOLIVA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ARBOLIVA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SQUAWKABILLY, DEX_MORNING
    dexendareadata


specialareas SPECIES_SQUAWKABILLY, DEX_DAY
    dexendareadata


specialareas SPECIES_SQUAWKABILLY, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SQUAWKABILLY, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SQUAWKABILLY, DEX_DAY
    dexendareadata


routesandcities SPECIES_SQUAWKABILLY, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SQUAWKABILLY, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SQUAWKABILLY, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NACLI, DEX_MORNING
    dexendareadata


specialareas SPECIES_NACLI, DEX_DAY
    dexendareadata


specialareas SPECIES_NACLI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NACLI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NACLI, DEX_DAY
    dexendareadata


routesandcities SPECIES_NACLI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NACLI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NACLI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_NACLSTACK, DEX_MORNING
    dexendareadata


specialareas SPECIES_NACLSTACK, DEX_DAY
    dexendareadata


specialareas SPECIES_NACLSTACK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_NACLSTACK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_NACLSTACK, DEX_DAY
    dexendareadata


routesandcities SPECIES_NACLSTACK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_NACLSTACK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_NACLSTACK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GARGANACL, DEX_MORNING
    dexendareadata


specialareas SPECIES_GARGANACL, DEX_DAY
    dexendareadata


specialareas SPECIES_GARGANACL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GARGANACL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GARGANACL, DEX_DAY
    dexendareadata


routesandcities SPECIES_GARGANACL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GARGANACL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GARGANACL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHARCADET, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHARCADET, DEX_DAY
    dexendareadata


specialareas SPECIES_CHARCADET, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHARCADET, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHARCADET, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHARCADET, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHARCADET, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CHARCADET, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ARMAROUGE, DEX_MORNING
    dexendareadata


specialareas SPECIES_ARMAROUGE, DEX_DAY
    dexendareadata


specialareas SPECIES_ARMAROUGE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ARMAROUGE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ARMAROUGE, DEX_DAY
    dexendareadata


routesandcities SPECIES_ARMAROUGE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ARMAROUGE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ARMAROUGE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CERULEDGE, DEX_MORNING
    dexendareadata


specialareas SPECIES_CERULEDGE, DEX_DAY
    dexendareadata


specialareas SPECIES_CERULEDGE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CERULEDGE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CERULEDGE, DEX_DAY
    dexendareadata


routesandcities SPECIES_CERULEDGE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CERULEDGE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CERULEDGE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TADBULB, DEX_MORNING
    dexendareadata


specialareas SPECIES_TADBULB, DEX_DAY
    dexendareadata


specialareas SPECIES_TADBULB, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TADBULB, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TADBULB, DEX_DAY
    dexendareadata


routesandcities SPECIES_TADBULB, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TADBULB, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TADBULB, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BELLIBOLT, DEX_MORNING
    dexendareadata


specialareas SPECIES_BELLIBOLT, DEX_DAY
    dexendareadata


specialareas SPECIES_BELLIBOLT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BELLIBOLT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BELLIBOLT, DEX_DAY
    dexendareadata


routesandcities SPECIES_BELLIBOLT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BELLIBOLT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BELLIBOLT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WATTREL, DEX_MORNING
    dexendareadata


specialareas SPECIES_WATTREL, DEX_DAY
    dexendareadata


specialareas SPECIES_WATTREL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WATTREL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WATTREL, DEX_DAY
    dexendareadata


routesandcities SPECIES_WATTREL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WATTREL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WATTREL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KILOWATTREL, DEX_MORNING
    dexendareadata


specialareas SPECIES_KILOWATTREL, DEX_DAY
    dexendareadata


specialareas SPECIES_KILOWATTREL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KILOWATTREL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KILOWATTREL, DEX_DAY
    dexendareadata


routesandcities SPECIES_KILOWATTREL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KILOWATTREL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KILOWATTREL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MASCHIFF, DEX_MORNING
    dexendareadata


specialareas SPECIES_MASCHIFF, DEX_DAY
    dexendareadata


specialareas SPECIES_MASCHIFF, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MASCHIFF, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MASCHIFF, DEX_DAY
    dexendareadata


routesandcities SPECIES_MASCHIFF, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MASCHIFF, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MASCHIFF, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MABOSSTIFF, DEX_MORNING
    dexendareadata


specialareas SPECIES_MABOSSTIFF, DEX_DAY
    dexendareadata


specialareas SPECIES_MABOSSTIFF, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MABOSSTIFF, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MABOSSTIFF, DEX_DAY
    dexendareadata


routesandcities SPECIES_MABOSSTIFF, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MABOSSTIFF, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MABOSSTIFF, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SHROODLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_SHROODLE, DEX_DAY
    dexendareadata


specialareas SPECIES_SHROODLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SHROODLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SHROODLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_SHROODLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SHROODLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SHROODLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GRAFAIAI, DEX_MORNING
    dexendareadata


specialareas SPECIES_GRAFAIAI, DEX_DAY
    dexendareadata


specialareas SPECIES_GRAFAIAI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GRAFAIAI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GRAFAIAI, DEX_DAY
    dexendareadata


routesandcities SPECIES_GRAFAIAI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GRAFAIAI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GRAFAIAI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BRAMBLIN, DEX_MORNING
    dexendareadata


specialareas SPECIES_BRAMBLIN, DEX_DAY
    dexendareadata


specialareas SPECIES_BRAMBLIN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BRAMBLIN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BRAMBLIN, DEX_DAY
    dexendareadata


routesandcities SPECIES_BRAMBLIN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BRAMBLIN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BRAMBLIN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BRAMBLEGHAST, DEX_MORNING
    dexendareadata


specialareas SPECIES_BRAMBLEGHAST, DEX_DAY
    dexendareadata


specialareas SPECIES_BRAMBLEGHAST, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BRAMBLEGHAST, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BRAMBLEGHAST, DEX_DAY
    dexendareadata


routesandcities SPECIES_BRAMBLEGHAST, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BRAMBLEGHAST, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BRAMBLEGHAST, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TOEDSCOOL, DEX_MORNING
    dexendareadata


specialareas SPECIES_TOEDSCOOL, DEX_DAY
    dexendareadata


specialareas SPECIES_TOEDSCOOL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TOEDSCOOL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TOEDSCOOL, DEX_DAY
    dexendareadata


routesandcities SPECIES_TOEDSCOOL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TOEDSCOOL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TOEDSCOOL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TOEDSCRUEL, DEX_MORNING
    dexendareadata


specialareas SPECIES_TOEDSCRUEL, DEX_DAY
    dexendareadata


specialareas SPECIES_TOEDSCRUEL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TOEDSCRUEL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TOEDSCRUEL, DEX_DAY
    dexendareadata


routesandcities SPECIES_TOEDSCRUEL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TOEDSCRUEL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TOEDSCRUEL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KLAWF, DEX_MORNING
    dexendareadata


specialareas SPECIES_KLAWF, DEX_DAY
    dexendareadata


specialareas SPECIES_KLAWF, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KLAWF, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KLAWF, DEX_DAY
    dexendareadata


routesandcities SPECIES_KLAWF, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KLAWF, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KLAWF, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CAPSAKID, DEX_MORNING
    dexendareadata


specialareas SPECIES_CAPSAKID, DEX_DAY
    dexendareadata


specialareas SPECIES_CAPSAKID, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CAPSAKID, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CAPSAKID, DEX_DAY
    dexendareadata


routesandcities SPECIES_CAPSAKID, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CAPSAKID, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CAPSAKID, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SCOVILLAIN, DEX_MORNING
    dexendareadata


specialareas SPECIES_SCOVILLAIN, DEX_DAY
    dexendareadata


specialareas SPECIES_SCOVILLAIN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SCOVILLAIN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SCOVILLAIN, DEX_DAY
    dexendareadata


routesandcities SPECIES_SCOVILLAIN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SCOVILLAIN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SCOVILLAIN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RELLOR, DEX_MORNING
    dexendareadata


specialareas SPECIES_RELLOR, DEX_DAY
    dexendareadata


specialareas SPECIES_RELLOR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RELLOR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RELLOR, DEX_DAY
    dexendareadata


routesandcities SPECIES_RELLOR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RELLOR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RELLOR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RABSCA, DEX_MORNING
    dexendareadata


specialareas SPECIES_RABSCA, DEX_DAY
    dexendareadata


specialareas SPECIES_RABSCA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RABSCA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RABSCA, DEX_DAY
    dexendareadata


routesandcities SPECIES_RABSCA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RABSCA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RABSCA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FLITTLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_FLITTLE, DEX_DAY
    dexendareadata


specialareas SPECIES_FLITTLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FLITTLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FLITTLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_FLITTLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FLITTLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FLITTLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ESPATHRA, DEX_MORNING
    dexendareadata


specialareas SPECIES_ESPATHRA, DEX_DAY
    dexendareadata


specialareas SPECIES_ESPATHRA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ESPATHRA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ESPATHRA, DEX_DAY
    dexendareadata


routesandcities SPECIES_ESPATHRA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ESPATHRA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ESPATHRA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TINKATINK, DEX_MORNING
    dexendareadata


specialareas SPECIES_TINKATINK, DEX_DAY
    dexendareadata


specialareas SPECIES_TINKATINK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TINKATINK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TINKATINK, DEX_DAY
    dexendareadata


routesandcities SPECIES_TINKATINK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TINKATINK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TINKATINK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TINKATUFF, DEX_MORNING
    dexendareadata


specialareas SPECIES_TINKATUFF, DEX_DAY
    dexendareadata


specialareas SPECIES_TINKATUFF, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TINKATUFF, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TINKATUFF, DEX_DAY
    dexendareadata


routesandcities SPECIES_TINKATUFF, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TINKATUFF, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TINKATUFF, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TINKATON, DEX_MORNING
    dexendareadata


specialareas SPECIES_TINKATON, DEX_DAY
    dexendareadata


specialareas SPECIES_TINKATON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TINKATON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TINKATON, DEX_DAY
    dexendareadata


routesandcities SPECIES_TINKATON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TINKATON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TINKATON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WIGLETT, DEX_MORNING
    dexendareadata


specialareas SPECIES_WIGLETT, DEX_DAY
    dexendareadata


specialareas SPECIES_WIGLETT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WIGLETT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WIGLETT, DEX_DAY
    dexendareadata


routesandcities SPECIES_WIGLETT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WIGLETT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WIGLETT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WUGTRIO, DEX_MORNING
    dexendareadata


specialareas SPECIES_WUGTRIO, DEX_DAY
    dexendareadata


specialareas SPECIES_WUGTRIO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WUGTRIO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WUGTRIO, DEX_DAY
    dexendareadata


routesandcities SPECIES_WUGTRIO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WUGTRIO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WUGTRIO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BOMBIRDIER, DEX_MORNING
    dexendareadata


specialareas SPECIES_BOMBIRDIER, DEX_DAY
    dexendareadata


specialareas SPECIES_BOMBIRDIER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BOMBIRDIER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BOMBIRDIER, DEX_DAY
    dexendareadata


routesandcities SPECIES_BOMBIRDIER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BOMBIRDIER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BOMBIRDIER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FINIZEN, DEX_MORNING
    dexendareadata


specialareas SPECIES_FINIZEN, DEX_DAY
    dexendareadata


specialareas SPECIES_FINIZEN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FINIZEN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FINIZEN, DEX_DAY
    dexendareadata


routesandcities SPECIES_FINIZEN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FINIZEN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FINIZEN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PALAFIN, DEX_MORNING
    dexendareadata


specialareas SPECIES_PALAFIN, DEX_DAY
    dexendareadata


specialareas SPECIES_PALAFIN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PALAFIN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PALAFIN, DEX_DAY
    dexendareadata


routesandcities SPECIES_PALAFIN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PALAFIN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PALAFIN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VAROOM, DEX_MORNING
    dexendareadata


specialareas SPECIES_VAROOM, DEX_DAY
    dexendareadata


specialareas SPECIES_VAROOM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VAROOM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VAROOM, DEX_DAY
    dexendareadata


routesandcities SPECIES_VAROOM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VAROOM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VAROOM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_REVAVROOM, DEX_MORNING
    dexendareadata


specialareas SPECIES_REVAVROOM, DEX_DAY
    dexendareadata


specialareas SPECIES_REVAVROOM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_REVAVROOM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_REVAVROOM, DEX_DAY
    dexendareadata


routesandcities SPECIES_REVAVROOM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_REVAVROOM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_REVAVROOM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CYCLIZAR, DEX_MORNING
    dexendareadata


specialareas SPECIES_CYCLIZAR, DEX_DAY
    dexendareadata


specialareas SPECIES_CYCLIZAR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CYCLIZAR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CYCLIZAR, DEX_DAY
    dexendareadata


routesandcities SPECIES_CYCLIZAR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CYCLIZAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CYCLIZAR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ORTHWORM, DEX_MORNING
    dexendareadata


specialareas SPECIES_ORTHWORM, DEX_DAY
    dexendareadata


specialareas SPECIES_ORTHWORM, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ORTHWORM, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ORTHWORM, DEX_DAY
    dexendareadata


routesandcities SPECIES_ORTHWORM, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ORTHWORM, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ORTHWORM, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GLIMMET, DEX_MORNING
    dexendareadata


specialareas SPECIES_GLIMMET, DEX_DAY
    dexendareadata


specialareas SPECIES_GLIMMET, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GLIMMET, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GLIMMET, DEX_DAY
    dexendareadata


routesandcities SPECIES_GLIMMET, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GLIMMET, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GLIMMET, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GLIMMORA, DEX_MORNING
    dexendareadata


specialareas SPECIES_GLIMMORA, DEX_DAY
    dexendareadata


specialareas SPECIES_GLIMMORA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GLIMMORA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GLIMMORA, DEX_DAY
    dexendareadata


routesandcities SPECIES_GLIMMORA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GLIMMORA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GLIMMORA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GREAVARD, DEX_MORNING
    dexendareadata


specialareas SPECIES_GREAVARD, DEX_DAY
    dexendareadata


specialareas SPECIES_GREAVARD, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GREAVARD, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GREAVARD, DEX_DAY
    dexendareadata


routesandcities SPECIES_GREAVARD, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GREAVARD, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GREAVARD, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HOUNDSTONE, DEX_MORNING
    dexendareadata


specialareas SPECIES_HOUNDSTONE, DEX_DAY
    dexendareadata


specialareas SPECIES_HOUNDSTONE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HOUNDSTONE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HOUNDSTONE, DEX_DAY
    dexendareadata


routesandcities SPECIES_HOUNDSTONE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HOUNDSTONE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HOUNDSTONE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FLAMIGO, DEX_MORNING
    dexendareadata


specialareas SPECIES_FLAMIGO, DEX_DAY
    dexendareadata


specialareas SPECIES_FLAMIGO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FLAMIGO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FLAMIGO, DEX_DAY
    dexendareadata


routesandcities SPECIES_FLAMIGO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FLAMIGO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FLAMIGO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CETODDLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_CETODDLE, DEX_DAY
    dexendareadata


specialareas SPECIES_CETODDLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CETODDLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CETODDLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_CETODDLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CETODDLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CETODDLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CETITAN, DEX_MORNING
    dexendareadata


specialareas SPECIES_CETITAN, DEX_DAY
    dexendareadata


specialareas SPECIES_CETITAN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CETITAN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CETITAN, DEX_DAY
    dexendareadata


routesandcities SPECIES_CETITAN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CETITAN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CETITAN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_VELUZA, DEX_MORNING
    dexendareadata


specialareas SPECIES_VELUZA, DEX_DAY
    dexendareadata


specialareas SPECIES_VELUZA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_VELUZA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_VELUZA, DEX_DAY
    dexendareadata


routesandcities SPECIES_VELUZA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_VELUZA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_VELUZA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DONDOZO, DEX_MORNING
    dexendareadata


specialareas SPECIES_DONDOZO, DEX_DAY
    dexendareadata


specialareas SPECIES_DONDOZO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DONDOZO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DONDOZO, DEX_DAY
    dexendareadata


routesandcities SPECIES_DONDOZO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DONDOZO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DONDOZO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TATSUGIRI, DEX_MORNING
    dexendareadata


specialareas SPECIES_TATSUGIRI, DEX_DAY
    dexendareadata


specialareas SPECIES_TATSUGIRI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TATSUGIRI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TATSUGIRI, DEX_DAY
    dexendareadata


routesandcities SPECIES_TATSUGIRI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TATSUGIRI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TATSUGIRI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ANNIHILAPE, DEX_MORNING
    dexendareadata


specialareas SPECIES_ANNIHILAPE, DEX_DAY
    dexendareadata


specialareas SPECIES_ANNIHILAPE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ANNIHILAPE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ANNIHILAPE, DEX_DAY
    dexendareadata


routesandcities SPECIES_ANNIHILAPE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ANNIHILAPE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ANNIHILAPE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CLODSIRE, DEX_MORNING
    dexendareadata


specialareas SPECIES_CLODSIRE, DEX_DAY
    dexendareadata


specialareas SPECIES_CLODSIRE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CLODSIRE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CLODSIRE, DEX_DAY
    dexendareadata


routesandcities SPECIES_CLODSIRE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CLODSIRE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CLODSIRE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FARIGIRAF, DEX_MORNING
    dexendareadata


specialareas SPECIES_FARIGIRAF, DEX_DAY
    dexendareadata


specialareas SPECIES_FARIGIRAF, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FARIGIRAF, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FARIGIRAF, DEX_DAY
    dexendareadata


routesandcities SPECIES_FARIGIRAF, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FARIGIRAF, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FARIGIRAF, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DUDUNSPARCE, DEX_MORNING
    dexendareadata


specialareas SPECIES_DUDUNSPARCE, DEX_DAY
    dexendareadata


specialareas SPECIES_DUDUNSPARCE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DUDUNSPARCE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DUDUNSPARCE, DEX_DAY
    dexendareadata


routesandcities SPECIES_DUDUNSPARCE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DUDUNSPARCE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DUDUNSPARCE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KINGAMBIT, DEX_MORNING
    dexendareadata


specialareas SPECIES_KINGAMBIT, DEX_DAY
    dexendareadata


specialareas SPECIES_KINGAMBIT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KINGAMBIT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KINGAMBIT, DEX_DAY
    dexendareadata


routesandcities SPECIES_KINGAMBIT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KINGAMBIT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KINGAMBIT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GREAT_TUSK, DEX_MORNING
    dexendareadata


specialareas SPECIES_GREAT_TUSK, DEX_DAY
    dexendareadata


specialareas SPECIES_GREAT_TUSK, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GREAT_TUSK, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GREAT_TUSK, DEX_DAY
    dexendareadata


routesandcities SPECIES_GREAT_TUSK, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GREAT_TUSK, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GREAT_TUSK, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SCREAM_TAIL, DEX_MORNING
    dexendareadata


specialareas SPECIES_SCREAM_TAIL, DEX_DAY
    dexendareadata


specialareas SPECIES_SCREAM_TAIL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SCREAM_TAIL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SCREAM_TAIL, DEX_DAY
    dexendareadata


routesandcities SPECIES_SCREAM_TAIL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SCREAM_TAIL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SCREAM_TAIL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BRUTE_BONNET, DEX_MORNING
    dexendareadata


specialareas SPECIES_BRUTE_BONNET, DEX_DAY
    dexendareadata


specialareas SPECIES_BRUTE_BONNET, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BRUTE_BONNET, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BRUTE_BONNET, DEX_DAY
    dexendareadata


routesandcities SPECIES_BRUTE_BONNET, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BRUTE_BONNET, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BRUTE_BONNET, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FLUTTER_MANE, DEX_MORNING
    dexendareadata


specialareas SPECIES_FLUTTER_MANE, DEX_DAY
    dexendareadata


specialareas SPECIES_FLUTTER_MANE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FLUTTER_MANE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FLUTTER_MANE, DEX_DAY
    dexendareadata


routesandcities SPECIES_FLUTTER_MANE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FLUTTER_MANE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FLUTTER_MANE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SLITHER_WING, DEX_MORNING
    dexendareadata


specialareas SPECIES_SLITHER_WING, DEX_DAY
    dexendareadata


specialareas SPECIES_SLITHER_WING, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SLITHER_WING, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SLITHER_WING, DEX_DAY
    dexendareadata


routesandcities SPECIES_SLITHER_WING, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SLITHER_WING, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SLITHER_WING, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SANDY_SHOCKS, DEX_MORNING
    dexendareadata


specialareas SPECIES_SANDY_SHOCKS, DEX_DAY
    dexendareadata


specialareas SPECIES_SANDY_SHOCKS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SANDY_SHOCKS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SANDY_SHOCKS, DEX_DAY
    dexendareadata


routesandcities SPECIES_SANDY_SHOCKS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SANDY_SHOCKS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SANDY_SHOCKS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_IRON_TREADS, DEX_MORNING
    dexendareadata


specialareas SPECIES_IRON_TREADS, DEX_DAY
    dexendareadata


specialareas SPECIES_IRON_TREADS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_IRON_TREADS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_IRON_TREADS, DEX_DAY
    dexendareadata


routesandcities SPECIES_IRON_TREADS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_IRON_TREADS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_IRON_TREADS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_IRON_BUNDLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_IRON_BUNDLE, DEX_DAY
    dexendareadata


specialareas SPECIES_IRON_BUNDLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_IRON_BUNDLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_IRON_BUNDLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_IRON_BUNDLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_IRON_BUNDLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_IRON_BUNDLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_IRON_HANDS, DEX_MORNING
    dexendareadata


specialareas SPECIES_IRON_HANDS, DEX_DAY
    dexendareadata


specialareas SPECIES_IRON_HANDS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_IRON_HANDS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_IRON_HANDS, DEX_DAY
    dexendareadata


routesandcities SPECIES_IRON_HANDS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_IRON_HANDS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_IRON_HANDS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_IRON_JUGULIS, DEX_MORNING
    dexendareadata


specialareas SPECIES_IRON_JUGULIS, DEX_DAY
    dexendareadata


specialareas SPECIES_IRON_JUGULIS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_IRON_JUGULIS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_IRON_JUGULIS, DEX_DAY
    dexendareadata


routesandcities SPECIES_IRON_JUGULIS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_IRON_JUGULIS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_IRON_JUGULIS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_IRON_MOTH, DEX_MORNING
    dexendareadata


specialareas SPECIES_IRON_MOTH, DEX_DAY
    dexendareadata


specialareas SPECIES_IRON_MOTH, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_IRON_MOTH, DEX_MORNING
    dexendareadata


routesandcities SPECIES_IRON_MOTH, DEX_DAY
    dexendareadata


routesandcities SPECIES_IRON_MOTH, DEX_NIGHT
    dexendareadata


specialareas SPECIES_IRON_MOTH, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_IRON_MOTH, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_IRON_THORNS, DEX_MORNING
    dexendareadata


specialareas SPECIES_IRON_THORNS, DEX_DAY
    dexendareadata


specialareas SPECIES_IRON_THORNS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_IRON_THORNS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_IRON_THORNS, DEX_DAY
    dexendareadata


routesandcities SPECIES_IRON_THORNS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_IRON_THORNS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_IRON_THORNS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FRIGIBAX, DEX_MORNING
    dexendareadata


specialareas SPECIES_FRIGIBAX, DEX_DAY
    dexendareadata


specialareas SPECIES_FRIGIBAX, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FRIGIBAX, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FRIGIBAX, DEX_DAY
    dexendareadata


routesandcities SPECIES_FRIGIBAX, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FRIGIBAX, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FRIGIBAX, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ARCTIBAX, DEX_MORNING
    dexendareadata


specialareas SPECIES_ARCTIBAX, DEX_DAY
    dexendareadata


specialareas SPECIES_ARCTIBAX, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ARCTIBAX, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ARCTIBAX, DEX_DAY
    dexendareadata


routesandcities SPECIES_ARCTIBAX, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ARCTIBAX, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ARCTIBAX, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_BAXCALIBUR, DEX_MORNING
    dexendareadata


specialareas SPECIES_BAXCALIBUR, DEX_DAY
    dexendareadata


specialareas SPECIES_BAXCALIBUR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_BAXCALIBUR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_BAXCALIBUR, DEX_DAY
    dexendareadata


routesandcities SPECIES_BAXCALIBUR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_BAXCALIBUR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_BAXCALIBUR, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GIMMIGHOUL, DEX_MORNING
    dexendareadata


specialareas SPECIES_GIMMIGHOUL, DEX_DAY
    dexendareadata


specialareas SPECIES_GIMMIGHOUL, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GIMMIGHOUL, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GIMMIGHOUL, DEX_DAY
    dexendareadata


routesandcities SPECIES_GIMMIGHOUL, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GIMMIGHOUL, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GIMMIGHOUL, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GHOLDENGO, DEX_MORNING
    dexendareadata


specialareas SPECIES_GHOLDENGO, DEX_DAY
    dexendareadata


specialareas SPECIES_GHOLDENGO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GHOLDENGO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GHOLDENGO, DEX_DAY
    dexendareadata


routesandcities SPECIES_GHOLDENGO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GHOLDENGO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GHOLDENGO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WO_CHIEN, DEX_MORNING
    dexendareadata


specialareas SPECIES_WO_CHIEN, DEX_DAY
    dexendareadata


specialareas SPECIES_WO_CHIEN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WO_CHIEN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WO_CHIEN, DEX_DAY
    dexendareadata


routesandcities SPECIES_WO_CHIEN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WO_CHIEN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WO_CHIEN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHIEN_PAO, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHIEN_PAO, DEX_DAY
    dexendareadata


specialareas SPECIES_CHIEN_PAO, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHIEN_PAO, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHIEN_PAO, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHIEN_PAO, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHIEN_PAO, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CHIEN_PAO, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TING_LU, DEX_MORNING
    dexendareadata


specialareas SPECIES_TING_LU, DEX_DAY
    dexendareadata


specialareas SPECIES_TING_LU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TING_LU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TING_LU, DEX_DAY
    dexendareadata


routesandcities SPECIES_TING_LU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TING_LU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TING_LU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_CHI_YU, DEX_MORNING
    dexendareadata


specialareas SPECIES_CHI_YU, DEX_DAY
    dexendareadata


specialareas SPECIES_CHI_YU, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CHI_YU, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CHI_YU, DEX_DAY
    dexendareadata


routesandcities SPECIES_CHI_YU, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CHI_YU, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CHI_YU, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ROARING_MOON, DEX_MORNING
    dexendareadata


specialareas SPECIES_ROARING_MOON, DEX_DAY
    dexendareadata


specialareas SPECIES_ROARING_MOON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ROARING_MOON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ROARING_MOON, DEX_DAY
    dexendareadata


routesandcities SPECIES_ROARING_MOON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ROARING_MOON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ROARING_MOON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_IRON_VALIANT, DEX_MORNING
    dexendareadata


specialareas SPECIES_IRON_VALIANT, DEX_DAY
    dexendareadata


specialareas SPECIES_IRON_VALIANT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_IRON_VALIANT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_IRON_VALIANT, DEX_DAY
    dexendareadata


routesandcities SPECIES_IRON_VALIANT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_IRON_VALIANT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_IRON_VALIANT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_KORAIDON, DEX_MORNING
    dexendareadata


specialareas SPECIES_KORAIDON, DEX_DAY
    dexendareadata


specialareas SPECIES_KORAIDON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_KORAIDON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_KORAIDON, DEX_DAY
    dexendareadata


routesandcities SPECIES_KORAIDON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_KORAIDON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_KORAIDON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MIRAIDON, DEX_MORNING
    dexendareadata


specialareas SPECIES_MIRAIDON, DEX_DAY
    dexendareadata


specialareas SPECIES_MIRAIDON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MIRAIDON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MIRAIDON, DEX_DAY
    dexendareadata


routesandcities SPECIES_MIRAIDON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MIRAIDON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MIRAIDON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_WALKING_WAKE, DEX_MORNING
    dexendareadata


specialareas SPECIES_WALKING_WAKE, DEX_DAY
    dexendareadata


specialareas SPECIES_WALKING_WAKE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_WALKING_WAKE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_WALKING_WAKE, DEX_DAY
    dexendareadata


routesandcities SPECIES_WALKING_WAKE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_WALKING_WAKE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_WALKING_WAKE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_IRON_LEAVES, DEX_MORNING
    dexendareadata


specialareas SPECIES_IRON_LEAVES, DEX_DAY
    dexendareadata


specialareas SPECIES_IRON_LEAVES, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_IRON_LEAVES, DEX_MORNING
    dexendareadata


routesandcities SPECIES_IRON_LEAVES, DEX_DAY
    dexendareadata


routesandcities SPECIES_IRON_LEAVES, DEX_NIGHT
    dexendareadata


specialareas SPECIES_IRON_LEAVES, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_IRON_LEAVES, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_DIPPLIN, DEX_MORNING
    dexendareadata


specialareas SPECIES_DIPPLIN, DEX_DAY
    dexendareadata


specialareas SPECIES_DIPPLIN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_DIPPLIN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_DIPPLIN, DEX_DAY
    dexendareadata


routesandcities SPECIES_DIPPLIN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_DIPPLIN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_DIPPLIN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_POLTCHAGEIST, DEX_MORNING
    dexendareadata


specialareas SPECIES_POLTCHAGEIST, DEX_DAY
    dexendareadata


specialareas SPECIES_POLTCHAGEIST, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_POLTCHAGEIST, DEX_MORNING
    dexendareadata


routesandcities SPECIES_POLTCHAGEIST, DEX_DAY
    dexendareadata


routesandcities SPECIES_POLTCHAGEIST, DEX_NIGHT
    dexendareadata


specialareas SPECIES_POLTCHAGEIST, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_POLTCHAGEIST, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_SINISTCHA, DEX_MORNING
    dexendareadata


specialareas SPECIES_SINISTCHA, DEX_DAY
    dexendareadata


specialareas SPECIES_SINISTCHA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_SINISTCHA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_SINISTCHA, DEX_DAY
    dexendareadata


routesandcities SPECIES_SINISTCHA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_SINISTCHA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_SINISTCHA, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_OKIDOGI, DEX_MORNING
    dexendareadata


specialareas SPECIES_OKIDOGI, DEX_DAY
    dexendareadata


specialareas SPECIES_OKIDOGI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_OKIDOGI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_OKIDOGI, DEX_DAY
    dexendareadata


routesandcities SPECIES_OKIDOGI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_OKIDOGI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_OKIDOGI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_MUNKIDORI, DEX_MORNING
    dexendareadata


specialareas SPECIES_MUNKIDORI, DEX_DAY
    dexendareadata


specialareas SPECIES_MUNKIDORI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_MUNKIDORI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_MUNKIDORI, DEX_DAY
    dexendareadata


routesandcities SPECIES_MUNKIDORI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_MUNKIDORI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_MUNKIDORI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_FEZANDIPITI, DEX_MORNING
    dexendareadata


specialareas SPECIES_FEZANDIPITI, DEX_DAY
    dexendareadata


specialareas SPECIES_FEZANDIPITI, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_FEZANDIPITI, DEX_MORNING
    dexendareadata


routesandcities SPECIES_FEZANDIPITI, DEX_DAY
    dexendareadata


routesandcities SPECIES_FEZANDIPITI, DEX_NIGHT
    dexendareadata


specialareas SPECIES_FEZANDIPITI, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FEZANDIPITI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_OGERPON, DEX_MORNING
    dexendareadata


specialareas SPECIES_OGERPON, DEX_DAY
    dexendareadata


specialareas SPECIES_OGERPON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_OGERPON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_OGERPON, DEX_DAY
    dexendareadata


routesandcities SPECIES_OGERPON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_OGERPON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_OGERPON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_FEZANDIPITI, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_ARCHALUDON, DEX_MORNING
    dexendareadata


specialareas SPECIES_ARCHALUDON, DEX_DAY
    dexendareadata


specialareas SPECIES_ARCHALUDON, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_ARCHALUDON, DEX_MORNING
    dexendareadata


routesandcities SPECIES_ARCHALUDON, DEX_DAY
    dexendareadata


routesandcities SPECIES_ARCHALUDON, DEX_NIGHT
    dexendareadata


specialareas SPECIES_ARCHALUDON, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_ARCHALUDON, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_HYDRAPPLE, DEX_MORNING
    dexendareadata


specialareas SPECIES_HYDRAPPLE, DEX_DAY
    dexendareadata


specialareas SPECIES_HYDRAPPLE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HYDRAPPLE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HYDRAPPLE, DEX_DAY
    dexendareadata


routesandcities SPECIES_HYDRAPPLE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_HYDRAPPLE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HYDRAPPLE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_GOUGING_FIRE, DEX_MORNING
    dexendareadata


specialareas SPECIES_GOUGING_FIRE, DEX_DAY
    dexendareadata


specialareas SPECIES_GOUGING_FIRE, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_GOUGING_FIRE, DEX_MORNING
    dexendareadata


routesandcities SPECIES_GOUGING_FIRE, DEX_DAY
    dexendareadata


routesandcities SPECIES_GOUGING_FIRE, DEX_NIGHT
    dexendareadata


specialareas SPECIES_GOUGING_FIRE, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_GOUGING_FIRE, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_RAGING_BOLT, DEX_MORNING
    dexendareadata


specialareas SPECIES_RAGING_BOLT, DEX_DAY
    dexendareadata


specialareas SPECIES_RAGING_BOLT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_RAGING_BOLT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_RAGING_BOLT, DEX_DAY
    dexendareadata


routesandcities SPECIES_RAGING_BOLT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_RAGING_BOLT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_RAGING_BOLT, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_IRON_BOULDER, DEX_MORNING
    dexendareadata


specialareas SPECIES_IRON_BOULDER, DEX_DAY
    dexendareadata


specialareas SPECIES_IRON_BOULDER, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_IRON_BOULDER, DEX_MORNING
    dexendareadata


routesandcities SPECIES_IRON_BOULDER, DEX_DAY
    dexendareadata


routesandcities SPECIES_IRON_BOULDER, DEX_NIGHT
    dexendareadata


specialareas SPECIES_IRON_BOULDER, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_IRON_BOULDER, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_IRON_CROWN, DEX_MORNING
    dexendareadata


specialareas SPECIES_IRON_CROWN, DEX_DAY
    dexendareadata


specialareas SPECIES_IRON_CROWN, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_IRON_CROWN, DEX_MORNING
    dexendareadata


routesandcities SPECIES_IRON_CROWN, DEX_DAY
    dexendareadata


routesandcities SPECIES_IRON_CROWN, DEX_NIGHT
    dexendareadata


specialareas SPECIES_IRON_CROWN, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_IRON_CROWN, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_TERAPAGOS, DEX_MORNING
    dexendareadata


specialareas SPECIES_TERAPAGOS, DEX_DAY
    dexendareadata


specialareas SPECIES_TERAPAGOS, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_TERAPAGOS, DEX_MORNING
    dexendareadata


routesandcities SPECIES_TERAPAGOS, DEX_DAY
    dexendareadata


routesandcities SPECIES_TERAPAGOS, DEX_NIGHT
    dexendareadata


specialareas SPECIES_TERAPAGOS, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_TERAPAGOS, DEX_SPECIAL
    dexendareadata


specialareas SPECIES_PECHARUNT, DEX_MORNING
    dexendareadata


specialareas SPECIES_PECHARUNT, DEX_DAY
    dexendareadata


specialareas SPECIES_PECHARUNT, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_PECHARUNT, DEX_MORNING
    dexendareadata


routesandcities SPECIES_PECHARUNT, DEX_DAY
    dexendareadata


routesandcities SPECIES_PECHARUNT, DEX_NIGHT
    dexendareadata


specialareas SPECIES_PECHARUNT, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_PECHARUNT, DEX_SPECIAL
    dexendareadata
