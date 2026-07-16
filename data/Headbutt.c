#include "../include/types.h"
#include "../include/constants/species.h"

typedef struct PACKED HeadbuttEncounterSlot {
    u16 species;
    u8 minLevel;
    u8 maxLevel;
} HeadbuttEncounterSlot;

typedef struct PACKED HeadbuttTreeCoord {
    s16 x;
    s16 y;
} HeadbuttTreeCoord;

typedef struct PACKED HeadbuttFile_000_EVERYWHERE {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_000_EVERYWHERE;

typedef struct PACKED HeadbuttFile_001_NOTHING {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_001_NOTHING;

typedef struct PACKED HeadbuttFile_002_Union_Room {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_002_Union_Room;

typedef struct PACKED HeadbuttFile_003_UG {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_003_UG;

typedef struct PACKED HeadbuttFile_004_DIRECT2 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_004_DIRECT2;

typedef struct PACKED HeadbuttFile_005_DIRECT4 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_005_DIRECT4;

typedef struct PACKED HeadbuttFile_006_Bellchime_Trail {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_006_Bellchime_Trail;

typedef struct PACKED HeadbuttFile_007_Burned_Tower_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_007_Burned_Tower_1F;

typedef struct PACKED HeadbuttFile_008_Ruins_Of_Alph_Inside {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_008_Ruins_Of_Alph_Inside;

typedef struct PACKED HeadbuttFile_009_Route_1 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[20][6];
} HeadbuttFile_009_Route_1;

typedef struct PACKED HeadbuttFile_010_Route_2 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[15][6];
} HeadbuttFile_010_Route_2;

typedef struct PACKED HeadbuttFile_011_Route_3 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[4][6];
} HeadbuttFile_011_Route_3;

typedef struct PACKED HeadbuttFile_012_Route_4 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[9][6];
} HeadbuttFile_012_Route_4;

typedef struct PACKED HeadbuttFile_013_Route_5 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[4][6];
} HeadbuttFile_013_Route_5;

typedef struct PACKED HeadbuttFile_014_Route_6 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[6][6];
} HeadbuttFile_014_Route_6;

typedef struct PACKED HeadbuttFile_015_Route_7 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[8][6];
} HeadbuttFile_015_Route_7;

typedef struct PACKED HeadbuttFile_016_Route_8 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[5][6];
} HeadbuttFile_016_Route_8;

typedef struct PACKED HeadbuttFile_017_Route_9 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_017_Route_9;

typedef struct PACKED HeadbuttFile_018_Route_10 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_018_Route_10;

typedef struct PACKED HeadbuttFile_019_Route_11 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[11][6];
} HeadbuttFile_019_Route_11;

typedef struct PACKED HeadbuttFile_020_Route_12 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[10][6];
} HeadbuttFile_020_Route_12;

typedef struct PACKED HeadbuttFile_021_Route_13 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[15][6];
} HeadbuttFile_021_Route_13;

typedef struct PACKED HeadbuttFile_022_Route_14 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[3][6];
} HeadbuttFile_022_Route_14;

typedef struct PACKED HeadbuttFile_023_Route_15 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[19][6];
} HeadbuttFile_023_Route_15;

typedef struct PACKED HeadbuttFile_024_Route_16 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[2][6];
} HeadbuttFile_024_Route_16;

typedef struct PACKED HeadbuttFile_025_Route_17 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_025_Route_17;

typedef struct PACKED HeadbuttFile_026_Route_18 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[3][6];
} HeadbuttFile_026_Route_18;

typedef struct PACKED HeadbuttFile_027_Route_22 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[7][6];
} HeadbuttFile_027_Route_22;

typedef struct PACKED HeadbuttFile_028_Route_24 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_028_Route_24;

typedef struct PACKED HeadbuttFile_029_Route_25 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[15][6];
} HeadbuttFile_029_Route_25;

typedef struct PACKED HeadbuttFile_030_Route_26 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[17][6];
} HeadbuttFile_030_Route_26;

typedef struct PACKED HeadbuttFile_031_Route_27 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[17][6];
} HeadbuttFile_031_Route_27;

typedef struct PACKED HeadbuttFile_032_Route_28 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[15][6];
} HeadbuttFile_032_Route_28;

typedef struct PACKED HeadbuttFile_033_Route_29 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[35][6];
} HeadbuttFile_033_Route_29;

typedef struct PACKED HeadbuttFile_034_Route_30 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[30][6];
} HeadbuttFile_034_Route_30;

typedef struct PACKED HeadbuttFile_035_Route_31 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[15][6];
} HeadbuttFile_035_Route_31;

typedef struct PACKED HeadbuttFile_036_Route_32 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[35][6];
} HeadbuttFile_036_Route_32;

typedef struct PACKED HeadbuttFile_037_Route_33 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[4][6];
} HeadbuttFile_037_Route_33;

typedef struct PACKED HeadbuttFile_038_Route_34 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[15][6];
} HeadbuttFile_038_Route_34;

typedef struct PACKED HeadbuttFile_039_Route_35 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[14][6];
} HeadbuttFile_039_Route_35;

typedef struct PACKED HeadbuttFile_040_Route_36 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[26][6];
} HeadbuttFile_040_Route_36;

typedef struct PACKED HeadbuttFile_041_Route_37 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[13][6];
} HeadbuttFile_041_Route_37;

typedef struct PACKED HeadbuttFile_042_Route_38 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[14][6];
} HeadbuttFile_042_Route_38;

typedef struct PACKED HeadbuttFile_043_Route_39 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[3][6];
} HeadbuttFile_043_Route_39;

typedef struct PACKED HeadbuttFile_044_Route_42 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[10][6];
} HeadbuttFile_044_Route_42;

typedef struct PACKED HeadbuttFile_045_Route_43 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[17][6];
} HeadbuttFile_045_Route_43;

typedef struct PACKED HeadbuttFile_046_Route_44 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[14][6];
} HeadbuttFile_046_Route_44;

typedef struct PACKED HeadbuttFile_047_Route_45 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[3][6];
} HeadbuttFile_047_Route_45;

typedef struct PACKED HeadbuttFile_048_Route_46 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[10][6];
} HeadbuttFile_048_Route_46;

typedef struct PACKED HeadbuttFile_049_Pallet_Town {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[17][6];
} HeadbuttFile_049_Pallet_Town;

typedef struct PACKED HeadbuttFile_050_Viridian_City {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[21][6];
} HeadbuttFile_050_Viridian_City;

typedef struct PACKED HeadbuttFile_051_Pewter_City {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[23][6];
} HeadbuttFile_051_Pewter_City;

typedef struct PACKED HeadbuttFile_052_Cerulean_City {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[11][6];
} HeadbuttFile_052_Cerulean_City;

typedef struct PACKED HeadbuttFile_053_Lavender_Town {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_053_Lavender_Town;

typedef struct PACKED HeadbuttFile_054_Vermilion_City {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[10][6];
} HeadbuttFile_054_Vermilion_City;

typedef struct PACKED HeadbuttFile_055_Celadon_City {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[32][6];
} HeadbuttFile_055_Celadon_City;

typedef struct PACKED HeadbuttFile_056_Fuchsia_City {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[18][6];
} HeadbuttFile_056_Fuchsia_City;

typedef struct PACKED HeadbuttFile_057_Cinnabar_Island {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_057_Cinnabar_Island;

typedef struct PACKED HeadbuttFile_058_Indigo_Plateau {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_058_Indigo_Plateau;

typedef struct PACKED HeadbuttFile_059_Saffron_City {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_059_Saffron_City;

typedef struct PACKED HeadbuttFile_060_New_Bark_Town {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[11][6];
} HeadbuttFile_060_New_Bark_Town;

typedef struct PACKED HeadbuttFile_061_Elms_Lab_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_061_Elms_Lab_1F;

typedef struct PACKED HeadbuttFile_062_Elms_Lab_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_062_Elms_Lab_2F;

typedef struct PACKED HeadbuttFile_063_Moms_House_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_063_Moms_House_1F;

typedef struct PACKED HeadbuttFile_064_Moms_House_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_064_Moms_House_2F;

typedef struct PACKED HeadbuttFile_065_New_Bark_Town_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_065_New_Bark_Town_House;

typedef struct PACKED HeadbuttFile_066_Ethan_Lyras_House_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_066_Ethan_Lyras_House_1F;

typedef struct PACKED HeadbuttFile_067_Cherrygrove_City {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[11][6];
} HeadbuttFile_067_Cherrygrove_City;

typedef struct PACKED HeadbuttFile_068_Cherrygrove_City_Pokmart {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_068_Cherrygrove_City_Pokmart;

typedef struct PACKED HeadbuttFile_069_Cherrygrove_City_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_069_Cherrygrove_City_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_070_Cherrygrove_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_070_Cherrygrove_City_House;

typedef struct PACKED HeadbuttFile_071_Cherrygrove_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_071_Cherrygrove_City_House;

typedef struct PACKED HeadbuttFile_072_Cherrygrove_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_072_Cherrygrove_City_House;

typedef struct PACKED HeadbuttFile_073_Violet_City {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[27][6];
} HeadbuttFile_073_Violet_City;

typedef struct PACKED HeadbuttFile_074_Azalea_Town {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[15][6];
} HeadbuttFile_074_Azalea_Town;

typedef struct PACKED HeadbuttFile_075_Cianwood_City {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_075_Cianwood_City;

typedef struct PACKED HeadbuttFile_076_Goldenrod_City {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_076_Goldenrod_City;

typedef struct PACKED HeadbuttFile_077_Olivine_City {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_077_Olivine_City;

typedef struct PACKED HeadbuttFile_078_Ecruteak_City {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[18][6];
} HeadbuttFile_078_Ecruteak_City;

typedef struct PACKED HeadbuttFile_079_Ecruteak_City_Pokmart {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_079_Ecruteak_City_Pokmart;

typedef struct PACKED HeadbuttFile_080_Ecruteak_City_Gym {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_080_Ecruteak_City_Gym;

typedef struct PACKED HeadbuttFile_081_Ecruteak_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_081_Ecruteak_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_082_Jubilife_City_Unused {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_082_Jubilife_City_Unused;

typedef struct PACKED HeadbuttFile_083_Barrier_Station_to_Bell_Tower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_083_Barrier_Station_to_Bell_Tower;

typedef struct PACKED HeadbuttFile_084_Ecruteak_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_084_Ecruteak_City_House;

typedef struct PACKED HeadbuttFile_085_Ecruteak_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_085_Ecruteak_City_House;

typedef struct PACKED HeadbuttFile_086_Ecruteak_Dance_Theatre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_086_Ecruteak_Dance_Theatre;

typedef struct PACKED HeadbuttFile_087_Mahogany_Town {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_087_Mahogany_Town;

typedef struct PACKED HeadbuttFile_088_Lake_of_Rage {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[22][6];
} HeadbuttFile_088_Lake_of_Rage;

typedef struct PACKED HeadbuttFile_089_Blackthorn_City {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_089_Blackthorn_City;

typedef struct PACKED HeadbuttFile_090_Mt_Silver {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[5][6];
} HeadbuttFile_090_Mt_Silver;

typedef struct PACKED HeadbuttFile_091_Route_19 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_091_Route_19;

typedef struct PACKED HeadbuttFile_092_Route_20 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_092_Route_20;

typedef struct PACKED HeadbuttFile_093_Route_21 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[3][6];
} HeadbuttFile_093_Route_21;

typedef struct PACKED HeadbuttFile_094_Route_40 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_094_Route_40;

typedef struct PACKED HeadbuttFile_095_Route_41 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_095_Route_41;

typedef struct PACKED HeadbuttFile_096_National_Park {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[27][6];
} HeadbuttFile_096_National_Park;

typedef struct PACKED HeadbuttFile_097_Route_31_And_Violet_City_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_097_Route_31_And_Violet_City_Gate;

typedef struct PACKED HeadbuttFile_098_Route_32_And_Ruins_Of_Alph_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_098_Route_32_And_Ruins_Of_Alph_Gate;

typedef struct PACKED HeadbuttFile_099_Union_Cave_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_099_Union_Cave_1F;

typedef struct PACKED HeadbuttFile_100_Azalea_Town_And_Ilex_Forest_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_100_Azalea_Town_And_Ilex_Forest_Gate;

typedef struct PACKED HeadbuttFile_101_Goldenrod_City_And_Route_35_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_101_Goldenrod_City_And_Route_35_Gate;

typedef struct PACKED HeadbuttFile_102_Route_35_And_National_Park_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_102_Route_35_And_National_Park_Gate;

typedef struct PACKED HeadbuttFile_103_Ruins_Of_Alph_And_Route_36_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_103_Ruins_Of_Alph_And_Route_36_Gate;

typedef struct PACKED HeadbuttFile_104_National_Park_And_Route_36_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_104_National_Park_And_Route_36_Gate;

typedef struct PACKED HeadbuttFile_105_Jubilife_City_Unused {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_105_Jubilife_City_Unused;

typedef struct PACKED HeadbuttFile_106_Digletts_Cave {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_106_Digletts_Cave;

typedef struct PACKED HeadbuttFile_107_Mt_Moon {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_107_Mt_Moon;

typedef struct PACKED HeadbuttFile_108_Rock_Tunnel_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_108_Rock_Tunnel_1F;

typedef struct PACKED HeadbuttFile_109_Pal_Park {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_109_Pal_Park;

typedef struct PACKED HeadbuttFile_110_Sprout_Tower_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_110_Sprout_Tower_1F;

typedef struct PACKED HeadbuttFile_111_Bell_Tower_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_111_Bell_Tower_1F;

typedef struct PACKED HeadbuttFile_112_Radio_Tower_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_112_Radio_Tower_1F;

typedef struct PACKED HeadbuttFile_113_Ruins_Of_Alph_Outside {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_113_Ruins_Of_Alph_Outside;

typedef struct PACKED HeadbuttFile_114_Slowpoke_Well_Entrance {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_114_Slowpoke_Well_Entrance;

typedef struct PACKED HeadbuttFile_115_Olivine_Lighthouse_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_115_Olivine_Lighthouse_1F;

typedef struct PACKED HeadbuttFile_116_Mahogany_Town_Souvenir_Shop {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_116_Mahogany_Town_Souvenir_Shop;

typedef struct PACKED HeadbuttFile_117_Ilex_Forest {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[56][6];
} HeadbuttFile_117_Ilex_Forest;

typedef struct PACKED HeadbuttFile_118_Goldenrod_Tunnel {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_118_Goldenrod_Tunnel;

typedef struct PACKED HeadbuttFile_119_Mt_Mortar_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_119_Mt_Mortar_1F;

typedef struct PACKED HeadbuttFile_120_Ice_Path_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_120_Ice_Path_1F;

typedef struct PACKED HeadbuttFile_121_Whirl_Islands {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_121_Whirl_Islands;

typedef struct PACKED HeadbuttFile_122_Mt_Silver_Cave {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_122_Mt_Silver_Cave;

typedef struct PACKED HeadbuttFile_123_Dark_Cave_Route_45_entrance {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_123_Dark_Cave_Route_45_entrance;

typedef struct PACKED HeadbuttFile_124_Victory_Road_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_124_Victory_Road_1F;

typedef struct PACKED HeadbuttFile_125_Dragons_Den_Entrance {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_125_Dragons_Den_Entrance;

typedef struct PACKED HeadbuttFile_126_Tohjo_Falls {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_126_Tohjo_Falls;

typedef struct PACKED HeadbuttFile_127_Route_30_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_127_Route_30_House;

typedef struct PACKED HeadbuttFile_128_Ecruteak_City_Union_Room {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_128_Ecruteak_City_Union_Room;

typedef struct PACKED HeadbuttFile_129_Ecruteak_City_Union_Room {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_129_Ecruteak_City_Union_Room;

typedef struct PACKED HeadbuttFile_130_Ecruteak_City_Union_Room {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_130_Ecruteak_City_Union_Room;

typedef struct PACKED HeadbuttFile_131_Ecruteak_City_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_131_Ecruteak_City_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_132_Ecruteak_City_And_Route_42_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_132_Ecruteak_City_And_Route_42_Gate;

typedef struct PACKED HeadbuttFile_133_Mahogany_Town_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_133_Mahogany_Town_House;

typedef struct PACKED HeadbuttFile_134_Route_29_And_Route_46_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_134_Route_29_And_Route_46_Gate;

typedef struct PACKED HeadbuttFile_135_Violet_City_Gym {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_135_Violet_City_Gym;

typedef struct PACKED HeadbuttFile_136_Azalea_Gym_Entrance {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_136_Azalea_Gym_Entrance;

typedef struct PACKED HeadbuttFile_137_Goldenrod_City_Gym {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_137_Goldenrod_City_Gym;

typedef struct PACKED HeadbuttFile_138_Olivine_City_Gym {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_138_Olivine_City_Gym;

typedef struct PACKED HeadbuttFile_139_Cianwood_City_Gym {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_139_Cianwood_City_Gym;

typedef struct PACKED HeadbuttFile_140_Mahogany_City_Gym_3rd_Room {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_140_Mahogany_City_Gym_3rd_Room;

typedef struct PACKED HeadbuttFile_141_Blackthorn_City_Gym {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_141_Blackthorn_City_Gym;

typedef struct PACKED HeadbuttFile_142_Route_43_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_142_Route_43_Gate;

typedef struct PACKED HeadbuttFile_143_Mr_Pokmons_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_143_Mr_Pokmons_House;

typedef struct PACKED HeadbuttFile_144_Cherrygrove_City_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_144_Cherrygrove_City_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_145_Cerulean_Cave_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_145_Cerulean_Cave_1F;

typedef struct PACKED HeadbuttFile_146_Seafoam_Islands_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_146_Seafoam_Islands_1F;

typedef struct PACKED HeadbuttFile_147_Viridian_Forest {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[24][6];
} HeadbuttFile_147_Viridian_Forest;

typedef struct PACKED HeadbuttFile_148_Power_Plant_Unused {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_148_Power_Plant_Unused;

typedef struct PACKED HeadbuttFile_149_Route_36_And_Violet_City_Inbetween {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_149_Route_36_And_Violet_City_Inbetween;

typedef struct PACKED HeadbuttFile_150_Route_35_And_Pokathlon_Dome_Inbetween {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_150_Route_35_And_Pokathlon_Dome_Inbetween;

typedef struct PACKED HeadbuttFile_151_Route_47 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[14][6];
} HeadbuttFile_151_Route_47;

typedef struct PACKED HeadbuttFile_152_Route_48 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[6][6];
} HeadbuttFile_152_Route_48;

typedef struct PACKED HeadbuttFile_153_Union_Cave_B1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_153_Union_Cave_B1F;

typedef struct PACKED HeadbuttFile_154_Union_Cave_B2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_154_Union_Cave_B2F;

typedef struct PACKED HeadbuttFile_155_Sprout_Tower_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_155_Sprout_Tower_2F;

typedef struct PACKED HeadbuttFile_156_Sprout_Tower_3F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_156_Sprout_Tower_3F;

typedef struct PACKED HeadbuttFile_157_Violet_City_Pokmart {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_157_Violet_City_Pokmart;

typedef struct PACKED HeadbuttFile_158_Violet_City_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_158_Violet_City_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_159_Violet_City_Pokmon_School {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_159_Violet_City_Pokmon_School;

typedef struct PACKED HeadbuttFile_160_Violet_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_160_Violet_City_House;

typedef struct PACKED HeadbuttFile_161_Jubilife_City_Unused {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_161_Jubilife_City_Unused;

typedef struct PACKED HeadbuttFile_162_Violet_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_162_Violet_City_House;

typedef struct PACKED HeadbuttFile_163_Azalea_Town_Charcoal_Kiln {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_163_Azalea_Town_Charcoal_Kiln;

typedef struct PACKED HeadbuttFile_164_Azalea_Town_Kurts_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_164_Azalea_Town_Kurts_House;

typedef struct PACKED HeadbuttFile_165_Azalea_Town_Pokmart {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_165_Azalea_Town_Pokmart;

typedef struct PACKED HeadbuttFile_166_Azalea_Town_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_166_Azalea_Town_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_167_Violet_City_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_167_Violet_City_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_168_Azalea_Town_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_168_Azalea_Town_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_169_Route_32_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_169_Route_32_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_170_Route_32_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_170_Route_32_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_171_Ilex_Forest_And_Route_34_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_171_Ilex_Forest_And_Route_34_Gate;

typedef struct PACKED HeadbuttFile_172_Ecruteak_And_Route_38_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_172_Ecruteak_And_Route_38_Gate;

typedef struct PACKED HeadbuttFile_173_Safari_Zone_Gate_Inside {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_173_Safari_Zone_Gate_Inside;

typedef struct PACKED HeadbuttFile_174_Safari_Zone_Gate_Outside {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[17][6];
} HeadbuttFile_174_Safari_Zone_Gate_Outside;

typedef struct PACKED HeadbuttFile_175_Jubilife_City_Unused {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_175_Jubilife_City_Unused;

typedef struct PACKED HeadbuttFile_176_Dark_Cave_Route_31_entrance {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_176_Dark_Cave_Route_31_entrance;

typedef struct PACKED HeadbuttFile_177_Slowpoke_Well_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_177_Slowpoke_Well_1F;

typedef struct PACKED HeadbuttFile_178_Victory_Road_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_178_Victory_Road_2F;

typedef struct PACKED HeadbuttFile_179_Victory_Road_3F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_179_Victory_Road_3F;

typedef struct PACKED HeadbuttFile_180_Azalea_Town_Gym {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_180_Azalea_Town_Gym;

typedef struct PACKED HeadbuttFile_181_Slowpoke_Well_B1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_181_Slowpoke_Well_B1F;

typedef struct PACKED HeadbuttFile_182_Goldenrod_City_Bike_Store {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_182_Goldenrod_City_Bike_Store;

typedef struct PACKED HeadbuttFile_183_Goldenrod_City_Game_Corner_JAP {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_183_Goldenrod_City_Game_Corner_JAP;

typedef struct PACKED HeadbuttFile_184_Goldenrod_City_Flower_Shop {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_184_Goldenrod_City_Flower_Shop;

typedef struct PACKED HeadbuttFile_185_Goldenrod_City_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_185_Goldenrod_City_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_186_Goldenrod_Radio_Tower_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_186_Goldenrod_Radio_Tower_2F;

typedef struct PACKED HeadbuttFile_187_Goldenrod_Radio_Tower_3F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_187_Goldenrod_Radio_Tower_3F;

typedef struct PACKED HeadbuttFile_188_Goldenrod_Radio_Tower_4F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_188_Goldenrod_Radio_Tower_4F;

typedef struct PACKED HeadbuttFile_189_Goldenrod_Radio_Tower_5F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_189_Goldenrod_Radio_Tower_5F;

typedef struct PACKED HeadbuttFile_190_Goldenrod_Radio_Tower_Observation_Deck {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_190_Goldenrod_Radio_Tower_Observation_Deck;

typedef struct PACKED HeadbuttFile_191_Goldenrod_Department_Store_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_191_Goldenrod_Department_Store_1F;

typedef struct PACKED HeadbuttFile_192_Goldenrod_Department_Store_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_192_Goldenrod_Department_Store_2F;

typedef struct PACKED HeadbuttFile_193_Goldenrod_Department_Store_3F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_193_Goldenrod_Department_Store_3F;

typedef struct PACKED HeadbuttFile_194_Goldenrod_Department_Store_4F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_194_Goldenrod_Department_Store_4F;

typedef struct PACKED HeadbuttFile_195_Goldenrod_Department_Store_5F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_195_Goldenrod_Department_Store_5F;

typedef struct PACKED HeadbuttFile_196_Goldenrod_Department_Store_6F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_196_Goldenrod_Department_Store_6F;

typedef struct PACKED HeadbuttFile_197_Goldenrod_City_Magnet_Train_Station {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_197_Goldenrod_City_Magnet_Train_Station;

typedef struct PACKED HeadbuttFile_198_Goldenrod_City_Magnet_Train_Station {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_198_Goldenrod_City_Magnet_Train_Station;

typedef struct PACKED HeadbuttFile_199_Goldenrod_Tunnel {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_199_Goldenrod_Tunnel;

typedef struct PACKED HeadbuttFile_200_Goldenrod_Department_Store_Basement {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_200_Goldenrod_Department_Store_Basement;

typedef struct PACKED HeadbuttFile_201_Goldenrod_Tunnel_B2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_201_Goldenrod_Tunnel_B2F;

typedef struct PACKED HeadbuttFile_202_Goldenrod_Tunnel_Warehouse {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_202_Goldenrod_Tunnel_Warehouse;

typedef struct PACKED HeadbuttFile_203_Goldenrod_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_203_Goldenrod_City_House;

typedef struct PACKED HeadbuttFile_204_Goldenrod_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_204_Goldenrod_City_House;

typedef struct PACKED HeadbuttFile_205_Goldenrod_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_205_Goldenrod_City_House;

typedef struct PACKED HeadbuttFile_206_Goldenrod_City_Name_Rater {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_206_Goldenrod_City_Name_Rater;

typedef struct PACKED HeadbuttFile_207_Global_Terminal {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_207_Global_Terminal;

typedef struct PACKED HeadbuttFile_208_Goldenrod_City_House_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_208_Goldenrod_City_House_1F;

typedef struct PACKED HeadbuttFile_209_Goldenrod_City_House_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_209_Goldenrod_City_House_2F;

typedef struct PACKED HeadbuttFile_210_Goldenrod_City_House_3F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_210_Goldenrod_City_House_3F;

typedef struct PACKED HeadbuttFile_211_Goldenrod_City_House_4F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_211_Goldenrod_City_House_4F;

typedef struct PACKED HeadbuttFile_212_Goldenrod_City_House_5F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_212_Goldenrod_City_House_5F;

typedef struct PACKED HeadbuttFile_213_Goldenrod_City_House_6F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_213_Goldenrod_City_House_6F;

typedef struct PACKED HeadbuttFile_214_Moomoo_Farm_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_214_Moomoo_Farm_House;

typedef struct PACKED HeadbuttFile_215_Moomoo_Farm_Barn {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_215_Moomoo_Farm_Barn;

typedef struct PACKED HeadbuttFile_216_Barrier_Station_to_Bell_Tower_And_Bellchime_Trail_Path {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_216_Barrier_Station_to_Bell_Tower_And_Bellchime_Trail_Path;

typedef struct PACKED HeadbuttFile_217_Burned_Tower_B1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_217_Burned_Tower_B1F;

typedef struct PACKED HeadbuttFile_218_Ruins_of_Alph_Inside {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_218_Ruins_of_Alph_Inside;

typedef struct PACKED HeadbuttFile_219_Goldenrod_City_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_219_Goldenrod_City_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_220_Glitter_Lighthouse_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_220_Glitter_Lighthouse_2F;

typedef struct PACKED HeadbuttFile_221_Glitter_Lighthouse_Exterior {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_221_Glitter_Lighthouse_Exterior;

typedef struct PACKED HeadbuttFile_222_Glitter_Lighthouse_3F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_222_Glitter_Lighthouse_3F;

typedef struct PACKED HeadbuttFile_223_Glitter_Lighthouse_4F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_223_Glitter_Lighthouse_4F;

typedef struct PACKED HeadbuttFile_224_Glitter_Lighthouse_5F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_224_Glitter_Lighthouse_5F;

typedef struct PACKED HeadbuttFile_225_Glitter_Lighthouse_Light_Room {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_225_Glitter_Lighthouse_Light_Room;

typedef struct PACKED HeadbuttFile_226_Olivine_City_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_226_Olivine_City_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_227_Olivine_City_Pokmart {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_227_Olivine_City_Pokmart;

typedef struct PACKED HeadbuttFile_228_Olivine_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_228_Olivine_City_House;

typedef struct PACKED HeadbuttFile_229_Olivine_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_229_Olivine_City_House;

typedef struct PACKED HeadbuttFile_230_Olivine_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_230_Olivine_City_House;

typedef struct PACKED HeadbuttFile_231_Olivine_City_Caf {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_231_Olivine_City_Caf;

typedef struct PACKED HeadbuttFile_232_Cianwood_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_232_Cianwood_City_House;

typedef struct PACKED HeadbuttFile_233_Cianwood_City_Pharmacy {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_233_Cianwood_City_Pharmacy;

typedef struct PACKED HeadbuttFile_234_Cianwood_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_234_Cianwood_City_House;

typedef struct PACKED HeadbuttFile_235_Cianwood_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_235_Cianwood_City_House;

typedef struct PACKED HeadbuttFile_236_Cianwood_City_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_236_Cianwood_City_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_237_Ice_Path_B1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_237_Ice_Path_B1F;

typedef struct PACKED HeadbuttFile_238_Ice_Path_B2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_238_Ice_Path_B2F;

typedef struct PACKED HeadbuttFile_239_Ice_Path_B3F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_239_Ice_Path_B3F;

typedef struct PACKED HeadbuttFile_240_Olivine_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_240_Olivine_City_House;

typedef struct PACKED HeadbuttFile_241_Cianwood_City_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_241_Cianwood_City_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_242_Whirl_Islands_B1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_242_Whirl_Islands_B1F;

typedef struct PACKED HeadbuttFile_243_Whirl_Islands_B2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_243_Whirl_Islands_B2F;

typedef struct PACKED HeadbuttFile_244_Whirl_Islands_B3F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_244_Whirl_Islands_B3F;

typedef struct PACKED HeadbuttFile_245_Route_43_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_245_Route_43_Gate;

typedef struct PACKED HeadbuttFile_246_Mahogany_Town_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_246_Mahogany_Town_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_247_Team_Rocket_HQ_B1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_247_Team_Rocket_HQ_B1F;

typedef struct PACKED HeadbuttFile_248_Team_Rocket_HQ_B2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_248_Team_Rocket_HQ_B2F;

typedef struct PACKED HeadbuttFile_249_Team_Rocket_HQ_B3F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_249_Team_Rocket_HQ_B3F;

typedef struct PACKED HeadbuttFile_250_Mt_Mortar_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_250_Mt_Mortar_1F;

typedef struct PACKED HeadbuttFile_251_Mt_Mortar_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_251_Mt_Mortar_2F;

typedef struct PACKED HeadbuttFile_252_Mt_Mortar_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_252_Mt_Mortar_1F;

typedef struct PACKED HeadbuttFile_253_Dragons_Den_Main {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_253_Dragons_Den_Main;

typedef struct PACKED HeadbuttFile_254_Fight_Area {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_254_Fight_Area;

typedef struct PACKED HeadbuttFile_255_Fight_Area {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_255_Fight_Area;

typedef struct PACKED HeadbuttFile_256_Fight_Area {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_256_Fight_Area;

typedef struct PACKED HeadbuttFile_257_Fight_Area {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_257_Fight_Area;

typedef struct PACKED HeadbuttFile_258_Fight_Area {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_258_Fight_Area;

typedef struct PACKED HeadbuttFile_259_Fight_Area {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_259_Fight_Area;

typedef struct PACKED HeadbuttFile_260_Fight_Area {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_260_Fight_Area;

typedef struct PACKED HeadbuttFile_261_Fight_Area {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_261_Fight_Area;

typedef struct PACKED HeadbuttFile_262_Fight_Area {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_262_Fight_Area;

typedef struct PACKED HeadbuttFile_263_Battle_Park {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_263_Battle_Park;

typedef struct PACKED HeadbuttFile_264_Battle_Park {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_264_Battle_Park;

typedef struct PACKED HeadbuttFile_265_Battle_Tower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_265_Battle_Tower;

typedef struct PACKED HeadbuttFile_266_Battle_Tower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_266_Battle_Tower;

typedef struct PACKED HeadbuttFile_267_Battle_Tower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_267_Battle_Tower;

typedef struct PACKED HeadbuttFile_268_Battle_Tower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_268_Battle_Tower;

typedef struct PACKED HeadbuttFile_269_Battle_Tower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_269_Battle_Tower;

typedef struct PACKED HeadbuttFile_270_Battle_Tower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_270_Battle_Tower;

typedef struct PACKED HeadbuttFile_271_Battle_Tower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_271_Battle_Tower;

typedef struct PACKED HeadbuttFile_272_Battle_Frontier {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_272_Battle_Frontier;

typedef struct PACKED HeadbuttFile_273_Battle_Frontier {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_273_Battle_Frontier;

typedef struct PACKED HeadbuttFile_274_Battle_Tower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_274_Battle_Tower;

typedef struct PACKED HeadbuttFile_275_Battle_Factory {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_275_Battle_Factory;

typedef struct PACKED HeadbuttFile_276_Battle_Hall {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_276_Battle_Hall;

typedef struct PACKED HeadbuttFile_277_Battle_Castle {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_277_Battle_Castle;

typedef struct PACKED HeadbuttFile_278_Battle_Arcade {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_278_Battle_Arcade;

typedef struct PACKED HeadbuttFile_279_Cliff_Edge_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_279_Cliff_Edge_Gate;

typedef struct PACKED HeadbuttFile_280_Pokathlon_Dome_Outside {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_280_Pokathlon_Dome_Outside;

typedef struct PACKED HeadbuttFile_281_Pokathlon_Dome_Inside {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_281_Pokathlon_Dome_Inside;

typedef struct PACKED HeadbuttFile_282_Pokathlon_Dome_Inside {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_282_Pokathlon_Dome_Inside;

typedef struct PACKED HeadbuttFile_283_Pokathlon_Dome_Inside {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_283_Pokathlon_Dome_Inside;

typedef struct PACKED HeadbuttFile_284_Pokathlon_Dome_Inside {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_284_Pokathlon_Dome_Inside;

typedef struct PACKED HeadbuttFile_285_Pokathlon_Dome_Inside {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_285_Pokathlon_Dome_Inside;

typedef struct PACKED HeadbuttFile_286_Pokathlon_Dome_Inside {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_286_Pokathlon_Dome_Inside;

typedef struct PACKED HeadbuttFile_287_Pokathlon_Dome_Inside {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_287_Pokathlon_Dome_Inside;

typedef struct PACKED HeadbuttFile_288_Dragons_Den_Shrine {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_288_Dragons_Den_Shrine;

typedef struct PACKED HeadbuttFile_289_Blackthorn_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_289_Blackthorn_City_House;

typedef struct PACKED HeadbuttFile_290_Blackthorn_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_290_Blackthorn_City_House;

typedef struct PACKED HeadbuttFile_291_Blackthorn_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_291_Blackthorn_City_House;

typedef struct PACKED HeadbuttFile_292_Blackthorn_City_Pokmart {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_292_Blackthorn_City_Pokmart;

typedef struct PACKED HeadbuttFile_293_Blackthorn_City_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_293_Blackthorn_City_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_294_Lake_of_Rage_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_294_Lake_of_Rage_House;

typedef struct PACKED HeadbuttFile_295_Lake_of_Rage_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_295_Lake_of_Rage_House;

typedef struct PACKED HeadbuttFile_296_Route_26_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_296_Route_26_House;

typedef struct PACKED HeadbuttFile_297_Route_26_Week_Siblings_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_297_Route_26_Week_Siblings_House;

typedef struct PACKED HeadbuttFile_298_Tohjo_Falls_Hidden_Room {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_298_Tohjo_Falls_Hidden_Room;

typedef struct PACKED HeadbuttFile_299_Pokmon_League_Reception_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_299_Pokmon_League_Reception_Gate;

typedef struct PACKED HeadbuttFile_300_Pokmon_League {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_300_Pokmon_League;

typedef struct PACKED HeadbuttFile_301_Pokmon_League_Wills_Room {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_301_Pokmon_League_Wills_Room;

typedef struct PACKED HeadbuttFile_302_Pokmon_League_Kogas_Room {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_302_Pokmon_League_Kogas_Room;

typedef struct PACKED HeadbuttFile_303_Pokmon_League_Brunos_Room {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_303_Pokmon_League_Brunos_Room;

typedef struct PACKED HeadbuttFile_304_Pokmon_League_Karens_Room {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_304_Pokmon_League_Karens_Room;

typedef struct PACKED HeadbuttFile_305_Pokmon_League_Lances_Room {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_305_Pokmon_League_Lances_Room;

typedef struct PACKED HeadbuttFile_306_Pokmon_League_Hall_of_Fame {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_306_Pokmon_League_Hall_of_Fame;

typedef struct PACKED HeadbuttFile_307_S_S_Aqua {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_307_S_S_Aqua;

typedef struct PACKED HeadbuttFile_308_S_S_Aqua {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_308_S_S_Aqua;

typedef struct PACKED HeadbuttFile_309_S_S_Aqua {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_309_S_S_Aqua;

typedef struct PACKED HeadbuttFile_310_S_S_Aqua {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_310_S_S_Aqua;

typedef struct PACKED HeadbuttFile_311_S_S_Aqua {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_311_S_S_Aqua;

typedef struct PACKED HeadbuttFile_312_Ruins_of_Alph_Entrance {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_312_Ruins_of_Alph_Entrance;

typedef struct PACKED HeadbuttFile_313_Ruins_of_Alph_Chamber_1 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_313_Ruins_of_Alph_Chamber_1;

typedef struct PACKED HeadbuttFile_314_Ruins_of_Alph_Entrance {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_314_Ruins_of_Alph_Entrance;

typedef struct PACKED HeadbuttFile_315_Ruins_of_Alph_Underground_Hall {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_315_Ruins_of_Alph_Underground_Hall;

typedef struct PACKED HeadbuttFile_316_Ruins_of_Alph_Entrance {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_316_Ruins_of_Alph_Entrance;

typedef struct PACKED HeadbuttFile_317_Ruins_of_Alph_Chamber_3 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_317_Ruins_of_Alph_Chamber_3;

typedef struct PACKED HeadbuttFile_318_Ruins_of_Alph_Entrance {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_318_Ruins_of_Alph_Entrance;

typedef struct PACKED HeadbuttFile_319_Ruins_of_Alph_Chamber_4 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_319_Ruins_of_Alph_Chamber_4;

typedef struct PACKED HeadbuttFile_320_Ruins_of_Alph_Chamber_2 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_320_Ruins_of_Alph_Chamber_2;

typedef struct PACKED HeadbuttFile_321_Ruins_of_Alph_Research_Center {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_321_Ruins_of_Alph_Research_Center;

typedef struct PACKED HeadbuttFile_322_Route_27_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_322_Route_27_House;

typedef struct PACKED HeadbuttFile_323_Ruins_of_Alph_Hall_Entrance {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_323_Ruins_of_Alph_Hall_Entrance;

typedef struct PACKED HeadbuttFile_324_Ruins_of_Alph_Entrance_2 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_324_Ruins_of_Alph_Entrance_2;

typedef struct PACKED HeadbuttFile_325_Ruins_of_Alph_Entrance_2 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_325_Ruins_of_Alph_Entrance_2;

typedef struct PACKED HeadbuttFile_326_Ruins_of_Alph_Entrance_2 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_326_Ruins_of_Alph_Entrance_2;

typedef struct PACKED HeadbuttFile_327_Ruins_of_Alph_Entrance_2 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_327_Ruins_of_Alph_Entrance_2;

typedef struct PACKED HeadbuttFile_328_S_S_Aqua {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_328_S_S_Aqua;

typedef struct PACKED HeadbuttFile_329_S_S_Aqua {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_329_S_S_Aqua;

typedef struct PACKED HeadbuttFile_330_Olivine_Port {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_330_Olivine_Port;

typedef struct PACKED HeadbuttFile_331_Pokmon_Daycare {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_331_Pokmon_Daycare;

typedef struct PACKED HeadbuttFile_332_Bell_Tower_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_332_Bell_Tower_2F;

typedef struct PACKED HeadbuttFile_333_Bell_Tower_3F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_333_Bell_Tower_3F;

typedef struct PACKED HeadbuttFile_334_Bell_Tower_4F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_334_Bell_Tower_4F;

typedef struct PACKED HeadbuttFile_335_Bell_Tower_5F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_335_Bell_Tower_5F;

typedef struct PACKED HeadbuttFile_336_Bell_Tower_6F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_336_Bell_Tower_6F;

typedef struct PACKED HeadbuttFile_337_Bell_Tower_7F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_337_Bell_Tower_7F;

typedef struct PACKED HeadbuttFile_338_Bell_Tower_8F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_338_Bell_Tower_8F;

typedef struct PACKED HeadbuttFile_339_Bell_Tower_9F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_339_Bell_Tower_9F;

typedef struct PACKED HeadbuttFile_340_Bell_Tower_Roof {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_340_Bell_Tower_Roof;

typedef struct PACKED HeadbuttFile_341_Bell_Tower_10F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_341_Bell_Tower_10F;

typedef struct PACKED HeadbuttFile_342_Cliff_Cave {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_342_Cliff_Cave;

typedef struct PACKED HeadbuttFile_343_Safari_Zone {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_343_Safari_Zone;

typedef struct PACKED HeadbuttFile_344_Safari_Zone {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_344_Safari_Zone;

typedef struct PACKED HeadbuttFile_345_Safari_Zone {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_345_Safari_Zone;

typedef struct PACKED HeadbuttFile_346_Safari_Zone {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_346_Safari_Zone;

typedef struct PACKED HeadbuttFile_347_Safari_Zone {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_347_Safari_Zone;

typedef struct PACKED HeadbuttFile_348_Safari_Zone {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_348_Safari_Zone;

typedef struct PACKED HeadbuttFile_349_Safari_Zone {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_349_Safari_Zone;

typedef struct PACKED HeadbuttFile_350_Safari_Zone {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_350_Safari_Zone;

typedef struct PACKED HeadbuttFile_351_Safari_Zone {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_351_Safari_Zone;

typedef struct PACKED HeadbuttFile_352_Safari_Zone {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_352_Safari_Zone;

typedef struct PACKED HeadbuttFile_353_Safari_Zone {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_353_Safari_Zone;

typedef struct PACKED HeadbuttFile_354_Safari_Zone {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_354_Safari_Zone;

typedef struct PACKED HeadbuttFile_355_Safari_Zone {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_355_Safari_Zone;

typedef struct PACKED HeadbuttFile_356_Safari_Zone {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_356_Safari_Zone;

typedef struct PACKED HeadbuttFile_357_Safari_Zone {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_357_Safari_Zone;

typedef struct PACKED HeadbuttFile_358_Vermilion_City_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_358_Vermilion_City_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_359_Vermilion_City_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_359_Vermilion_City_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_360_Vermilion_City_Pokmart {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_360_Vermilion_City_Pokmart;

typedef struct PACKED HeadbuttFile_361_Vermilion_City_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_361_Vermilion_City_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_362_Vermilion_City_Pokmon_Fan_Club {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_362_Vermilion_City_Pokmon_Fan_Club;

typedef struct PACKED HeadbuttFile_363_Vermilion_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_363_Vermilion_City_House;

typedef struct PACKED HeadbuttFile_364_Vermilion_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_364_Vermilion_City_House;

typedef struct PACKED HeadbuttFile_365_Vermilion_City_Gym {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_365_Vermilion_City_Gym;

typedef struct PACKED HeadbuttFile_366_Route_40_And_Frontier_Access_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_366_Route_40_And_Frontier_Access_Gate;

typedef struct PACKED HeadbuttFile_367_Olivine_City_Pokmon_Center_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_367_Olivine_City_Pokmon_Center_Lower;

typedef struct PACKED HeadbuttFile_368_Mahogany_Town_Pokmon_Center_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_368_Mahogany_Town_Pokmon_Center_Lower;

typedef struct PACKED HeadbuttFile_369_Blackthorn_Town_Pokmon_Center_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_369_Blackthorn_Town_Pokmon_Center_Lower;

typedef struct PACKED HeadbuttFile_370_Celadon_City_Department_Store_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_370_Celadon_City_Department_Store_1F;

typedef struct PACKED HeadbuttFile_371_Celadon_City_Department_Store_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_371_Celadon_City_Department_Store_2F;

typedef struct PACKED HeadbuttFile_372_Celadon_City_Department_Store_3F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_372_Celadon_City_Department_Store_3F;

typedef struct PACKED HeadbuttFile_373_Celadon_City_Department_Store_4F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_373_Celadon_City_Department_Store_4F;

typedef struct PACKED HeadbuttFile_374_Celadon_City_Department_Store_5F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_374_Celadon_City_Department_Store_5F;

typedef struct PACKED HeadbuttFile_375_Celadon_City_Department_Store_6F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_375_Celadon_City_Department_Store_6F;

typedef struct PACKED HeadbuttFile_376_Celadon_Condominiums_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_376_Celadon_Condominiums_1F;

typedef struct PACKED HeadbuttFile_377_Celadon_Condominiums_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_377_Celadon_Condominiums_2F;

typedef struct PACKED HeadbuttFile_378_Celadon_Condominiums_3F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_378_Celadon_Condominiums_3F;

typedef struct PACKED HeadbuttFile_379_Celadon_Condominiums_4F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_379_Celadon_Condominiums_4F;

typedef struct PACKED HeadbuttFile_380_Celadon_Condominiums_5F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_380_Celadon_Condominiums_5F;

typedef struct PACKED HeadbuttFile_381_Celadon_Game_Corner_Main_JP {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_381_Celadon_Game_Corner_Main_JP;

typedef struct PACKED HeadbuttFile_382_Celadon_Game_Corner_Prize_Building_JP {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_382_Celadon_Game_Corner_Prize_Building_JP;

typedef struct PACKED HeadbuttFile_383_Celadon_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_383_Celadon_City_House;

typedef struct PACKED HeadbuttFile_384_Ethan_Lyras_House_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_384_Ethan_Lyras_House_2F;

typedef struct PACKED HeadbuttFile_385_Cianwood_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_385_Cianwood_City_House;

typedef struct PACKED HeadbuttFile_386_Vermilion_Port {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_386_Vermilion_Port;

typedef struct PACKED HeadbuttFile_387_Vermilion_Port {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_387_Vermilion_Port;

typedef struct PACKED HeadbuttFile_388_Route_10 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_388_Route_10;

typedef struct PACKED HeadbuttFile_389_Route_6_And_Saffron_City_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_389_Route_6_And_Saffron_City_Gate;

typedef struct PACKED HeadbuttFile_390_Route_8_And_Saffron_City_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_390_Route_8_And_Saffron_City_Gate;

typedef struct PACKED HeadbuttFile_391_Route_5_And_Saffron_City_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_391_Route_5_And_Saffron_City_Gate;

typedef struct PACKED HeadbuttFile_392_Route_15_And_Fushsia_City_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_392_Route_15_And_Fushsia_City_Gate;

typedef struct PACKED HeadbuttFile_393_Celadon_City_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_393_Celadon_City_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_394_Celadon_City_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_394_Celadon_City_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_395_Celadon_City_Gym {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_395_Celadon_City_Gym;

typedef struct PACKED HeadbuttFile_396_Mahogany_Town_Gym_2nd_Room {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_396_Mahogany_Town_Gym_2nd_Room;

typedef struct PACKED HeadbuttFile_397_Mahogany_Town_Gym_1st_Room {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_397_Mahogany_Town_Gym_1st_Room;

typedef struct PACKED HeadbuttFile_398_Saffron_City_Fighting_Dojo {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_398_Saffron_City_Fighting_Dojo;

typedef struct PACKED HeadbuttFile_399_Saffron_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_399_Saffron_City_House;

typedef struct PACKED HeadbuttFile_400_Saffron_City_Magnet_Train_Station {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_400_Saffron_City_Magnet_Train_Station;

typedef struct PACKED HeadbuttFile_401_Saffron_City_Magnet_Train_Station {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_401_Saffron_City_Magnet_Train_Station;

typedef struct PACKED HeadbuttFile_402_Saffron_City_Magnet_Train_Station {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_402_Saffron_City_Magnet_Train_Station;

typedef struct PACKED HeadbuttFile_403_ROTOMs_Room {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_403_ROTOMs_Room;

typedef struct PACKED HeadbuttFile_404_Saffron_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_404_Saffron_City_House;

typedef struct PACKED HeadbuttFile_405_Saffron_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_405_Saffron_City_House;

typedef struct PACKED HeadbuttFile_406_Saffron_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_406_Saffron_City_House;

typedef struct PACKED HeadbuttFile_407_Saffron_City_Pokmon_Center {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_407_Saffron_City_Pokmon_Center;

typedef struct PACKED HeadbuttFile_408_Saffron_City_Pokmon_Center_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_408_Saffron_City_Pokmon_Center_Lower;

typedef struct PACKED HeadbuttFile_409_Saffron_City_Pokmart {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_409_Saffron_City_Pokmart;

typedef struct PACKED HeadbuttFile_410_Saffron_City_Gym {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_410_Saffron_City_Gym;

typedef struct PACKED HeadbuttFile_411_Frontier_Access {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_411_Frontier_Access;

typedef struct PACKED HeadbuttFile_412_Global_Terminal_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_412_Global_Terminal_2F;

typedef struct PACKED HeadbuttFile_413_Global_Terminal_3F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_413_Global_Terminal_3F;

typedef struct PACKED HeadbuttFile_414_Route_2 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[13][6];
} HeadbuttFile_414_Route_2;

typedef struct PACKED HeadbuttFile_415_Route_16_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_415_Route_16_House;

typedef struct PACKED HeadbuttFile_416_Route_20_Unused {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_416_Route_20_Unused;

typedef struct PACKED HeadbuttFile_417_Route_2 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_417_Route_2;

typedef struct PACKED HeadbuttFile_418_Route_2_And_Pewter_City_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_418_Route_2_And_Pewter_City_Gate;

typedef struct PACKED HeadbuttFile_419_Route_2_And_Viridian_City_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_419_Route_2_And_Viridian_City_Gate;

typedef struct PACKED HeadbuttFile_420_Route_2_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_420_Route_2_Gate;

typedef struct PACKED HeadbuttFile_421_Route_16_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_421_Route_16_Gate;

typedef struct PACKED HeadbuttFile_422_Route_16 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[5][6];
} HeadbuttFile_422_Route_16;

typedef struct PACKED HeadbuttFile_423_Route_18_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_423_Route_18_Gate;

typedef struct PACKED HeadbuttFile_424_Route_19_And_Fushsia_City_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_424_Route_19_And_Fushsia_City_Gate;

typedef struct PACKED HeadbuttFile_425_Route_11_And_Route_12_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_425_Route_11_And_Route_12_Gate;

typedef struct PACKED HeadbuttFile_426_Cerulean_City_Pokmart {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_426_Cerulean_City_Pokmart;

typedef struct PACKED HeadbuttFile_427_Cerulean_City_Gym {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_427_Cerulean_City_Gym;

typedef struct PACKED HeadbuttFile_428_Cerulean_City_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_428_Cerulean_City_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_429_Cerulean_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_429_Cerulean_City_House;

typedef struct PACKED HeadbuttFile_430_Cerulean_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_430_Cerulean_City_House;

typedef struct PACKED HeadbuttFile_431_Cerulean_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_431_Cerulean_City_House;

typedef struct PACKED HeadbuttFile_432_Cerulean_City_Bike_Shop {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_432_Cerulean_City_Bike_Shop;

typedef struct PACKED HeadbuttFile_433_Lavender_Town_Pokmart {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_433_Lavender_Town_Pokmart;

typedef struct PACKED HeadbuttFile_434_Lavender_Town_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_434_Lavender_Town_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_435_Lavender_Town_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_435_Lavender_Town_House;

typedef struct PACKED HeadbuttFile_436_Lavender_Town_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_436_Lavender_Town_House;

typedef struct PACKED HeadbuttFile_437_Lavender_Town_Name_Rater {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_437_Lavender_Town_Name_Rater;

typedef struct PACKED HeadbuttFile_438_House_of_Memories {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_438_House_of_Memories;

typedef struct PACKED HeadbuttFile_439_Lavender_Town_Radio_Tower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_439_Lavender_Town_Radio_Tower;

typedef struct PACKED HeadbuttFile_440_Sea_Cottage {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_440_Sea_Cottage;

typedef struct PACKED HeadbuttFile_441_Goldenrod_City_Elevator {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_441_Goldenrod_City_Elevator;

typedef struct PACKED HeadbuttFile_442_Celadon_City_Elevator {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_442_Celadon_City_Elevator;

typedef struct PACKED HeadbuttFile_443_Celadon_City_Elevator {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_443_Celadon_City_Elevator;

typedef struct PACKED HeadbuttFile_444_Celadon_City_Elevator {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_444_Celadon_City_Elevator;

typedef struct PACKED HeadbuttFile_445_Saffron_City_Elevator {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_445_Saffron_City_Elevator;

typedef struct PACKED HeadbuttFile_446_Lighthouse_Elevator {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_446_Lighthouse_Elevator;

typedef struct PACKED HeadbuttFile_447_Radio_Tower_Elevator {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_447_Radio_Tower_Elevator;

typedef struct PACKED HeadbuttFile_448_Mt_Moon_Entrance {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_448_Mt_Moon_Entrance;

typedef struct PACKED HeadbuttFile_449_Mt_Moon_Square {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_449_Mt_Moon_Square;

typedef struct PACKED HeadbuttFile_450_Cerulean_Cave_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_450_Cerulean_Cave_2F;

typedef struct PACKED HeadbuttFile_451_Cerulean_Cave_B1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_451_Cerulean_Cave_B1F;

typedef struct PACKED HeadbuttFile_452_Rock_Tunnel_B1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_452_Rock_Tunnel_B1F;

typedef struct PACKED HeadbuttFile_453_Seafoam_Islands_B1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_453_Seafoam_Islands_B1F;

typedef struct PACKED HeadbuttFile_454_Seafoam_Islands_B2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_454_Seafoam_Islands_B2F;

typedef struct PACKED HeadbuttFile_455_Seafoam_Islands_B3F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_455_Seafoam_Islands_B3F;

typedef struct PACKED HeadbuttFile_456_Seafoam_Islands_B4F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_456_Seafoam_Islands_B4F;

typedef struct PACKED HeadbuttFile_457_Cinnabar_Gym {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_457_Cinnabar_Gym;

typedef struct PACKED HeadbuttFile_458_Cinnabar_Gym {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_458_Cinnabar_Gym;

typedef struct PACKED HeadbuttFile_459_Mt_Silver_Cave_Upper_Mountainside {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_459_Mt_Silver_Cave_Upper_Mountainside;

typedef struct PACKED HeadbuttFile_460_Mt_Silver_Cave_Lower_Mountainside {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[3][6];
} HeadbuttFile_460_Mt_Silver_Cave_Lower_Mountainside;

typedef struct PACKED HeadbuttFile_461_Mt_Silver_Cave_Expert_Belt_Chamber {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_461_Mt_Silver_Cave_Expert_Belt_Chamber;

typedef struct PACKED HeadbuttFile_462_Mt_Silver_Cave_Moltres_Chamber {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_462_Mt_Silver_Cave_Moltres_Chamber;

typedef struct PACKED HeadbuttFile_463_Mt_Silver_Cave_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_463_Mt_Silver_Cave_2F;

typedef struct PACKED HeadbuttFile_464_Mt_Silver_Cave_3F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_464_Mt_Silver_Cave_3F;

typedef struct PACKED HeadbuttFile_465_Mt_Silver_Cave_Summit {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_465_Mt_Silver_Cave_Summit;

typedef struct PACKED HeadbuttFile_466_Route_10_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_466_Route_10_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_467_Power_Plant {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_467_Power_Plant;

typedef struct PACKED HeadbuttFile_468_Underground_Path {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_468_Underground_Path;

typedef struct PACKED HeadbuttFile_469_Route_5_Underground_Path_Entrance {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_469_Route_5_Underground_Path_Entrance;

typedef struct PACKED HeadbuttFile_470_Route_6_Underground_Path_Entrance {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_470_Route_6_Underground_Path_Entrance;

typedef struct PACKED HeadbuttFile_471_Pewter_Museum_of_Science {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_471_Pewter_Museum_of_Science;

typedef struct PACKED HeadbuttFile_472_Pewter_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_472_Pewter_City_House;

typedef struct PACKED HeadbuttFile_473_Pewter_City_Gym {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_473_Pewter_City_Gym;

typedef struct PACKED HeadbuttFile_474_Pewter_City_Pokmart {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_474_Pewter_City_Pokmart;

typedef struct PACKED HeadbuttFile_475_Pewter_City_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_475_Pewter_City_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_476_Pewter_City_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_476_Pewter_City_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_477_Pewter_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_477_Pewter_City_House;

typedef struct PACKED HeadbuttFile_478_Fushsia_City_Pokmart {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_478_Fushsia_City_Pokmart;

typedef struct PACKED HeadbuttFile_479_Pal_Park_Inside {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_479_Pal_Park_Inside;

typedef struct PACKED HeadbuttFile_480_Fushsia_City_Gym {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_480_Fushsia_City_Gym;

typedef struct PACKED HeadbuttFile_481_Fushsia_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_481_Fushsia_City_House;

typedef struct PACKED HeadbuttFile_482_Fushsia_City_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_482_Fushsia_City_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_483_Fushsia_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_483_Fushsia_City_House;

typedef struct PACKED HeadbuttFile_484_Route_10_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_484_Route_10_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_485_Fuchsia_City_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_485_Fuchsia_City_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_486_Whirl_Islands_Lugias_Room {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_486_Whirl_Islands_Lugias_Room;

typedef struct PACKED HeadbuttFile_487_National_Park_Bug_Catching_Contest {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_487_National_Park_Bug_Catching_Contest;

typedef struct PACKED HeadbuttFile_488_National_Park_Bug_Catching_Contest_National_Dex {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_488_National_Park_Bug_Catching_Contest_National_Dex;

typedef struct PACKED HeadbuttFile_489_Power_Plant {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_489_Power_Plant;

typedef struct PACKED HeadbuttFile_490_Ruins_of_Alph_Underground_Hall {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_490_Ruins_of_Alph_Underground_Hall;

typedef struct PACKED HeadbuttFile_491_Ruins_of_Alph_Hall_Entrance {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_491_Ruins_of_Alph_Hall_Entrance;

typedef struct PACKED HeadbuttFile_492_Ruins_of_Alph_Underground_Hall {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_492_Ruins_of_Alph_Underground_Hall;

typedef struct PACKED HeadbuttFile_493_Route_7_And_Saffron_City_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_493_Route_7_And_Saffron_City_Gate;

typedef struct PACKED HeadbuttFile_494_Lavender_Town_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_494_Lavender_Town_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_495_Cerulean_City_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_495_Cerulean_City_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_496_Viridian_City_Gym {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_496_Viridian_City_Gym;

typedef struct PACKED HeadbuttFile_497_Viridian_City_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_497_Viridian_City_House;

typedef struct PACKED HeadbuttFile_498_Viridian_City_Trainer_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_498_Viridian_City_Trainer_House;

typedef struct PACKED HeadbuttFile_499_Viridian_City_Trainer_House_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_499_Viridian_City_Trainer_House_2F;

typedef struct PACKED HeadbuttFile_500_Viridian_City_Pokmart {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_500_Viridian_City_Pokmart;

typedef struct PACKED HeadbuttFile_501_Viridian_City_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_501_Viridian_City_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_502_Viridian_City_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_502_Viridian_City_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_503_Pallet_Town_Reds_House_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_503_Pallet_Town_Reds_House_1F;

typedef struct PACKED HeadbuttFile_504_Pallet_Town_Blues_House_1F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_504_Pallet_Town_Blues_House_1F;

typedef struct PACKED HeadbuttFile_505_Oaks_Lab {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_505_Oaks_Lab;

typedef struct PACKED HeadbuttFile_506_Pallet_Town_Reds_House_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_506_Pallet_Town_Reds_House_2F;

typedef struct PACKED HeadbuttFile_507_Pallet_Town_Blues_House_2F {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_507_Pallet_Town_Blues_House_2F;

typedef struct PACKED HeadbuttFile_508_Cinnabar_Island_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_508_Cinnabar_Island_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_509_Cinnabar_Island_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_509_Cinnabar_Island_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_510_Route_28_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_510_Route_28_House;

typedef struct PACKED HeadbuttFile_511_Route_3_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_511_Route_3_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_512_Route_3_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_512_Route_3_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_513_Mt_Moon_Square {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_513_Mt_Moon_Square;

typedef struct PACKED HeadbuttFile_514_Mt_Silver_Pokmon_Centre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_514_Mt_Silver_Pokmon_Centre;

typedef struct PACKED HeadbuttFile_515_Mt_Silver_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_515_Mt_Silver_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_516_HIROBA {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_516_HIROBA;

typedef struct PACKED HeadbuttFile_517_Route_5_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_517_Route_5_House;

typedef struct PACKED HeadbuttFile_518_Mt_Moon_Square_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_518_Mt_Moon_Square_House;

typedef struct PACKED HeadbuttFile_519_Goldenrod_City_Magnet_Train_Station {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_519_Goldenrod_City_Magnet_Train_Station;

typedef struct PACKED HeadbuttFile_520_Saffron_City_Magnet_Train_Station {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_520_Saffron_City_Magnet_Train_Station;

typedef struct PACKED HeadbuttFile_521_Sinjoh_Ruins_Outside {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_521_Sinjoh_Ruins_Outside;

typedef struct PACKED HeadbuttFile_522_Sinjoh_Ruins_Mystri_Stage {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_522_Sinjoh_Ruins_Mystri_Stage;

typedef struct PACKED HeadbuttFile_523_Sinjoh_Ruins_Cabin {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_523_Sinjoh_Ruins_Cabin;

typedef struct PACKED HeadbuttFile_524_Embedded_Tower_Groudon {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_524_Embedded_Tower_Groudon;

typedef struct PACKED HeadbuttFile_525_Embedded_Tower_Kyogre {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_525_Embedded_Tower_Kyogre;

typedef struct PACKED HeadbuttFile_526_Embedded_Tower_Rayquaza {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_526_Embedded_Tower_Rayquaza;

typedef struct PACKED HeadbuttFile_527_Route_1_And_Viridian_City_Gate {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_527_Route_1_And_Viridian_City_Gate;

typedef struct PACKED HeadbuttFile_528_Frontier_Access_Pokmon_Center {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_528_Frontier_Access_Pokmon_Center;

typedef struct PACKED HeadbuttFile_529_Frontier_Access_Pokmon_Center_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_529_Frontier_Access_Pokmon_Center_Lower;

typedef struct PACKED HeadbuttFile_530_Frontier_Access_Pokmart {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_530_Frontier_Access_Pokmart;

typedef struct PACKED HeadbuttFile_531_Frontier_Access_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_531_Frontier_Access_House;

typedef struct PACKED HeadbuttFile_532_Underground_Path {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_532_Underground_Path;

typedef struct PACKED HeadbuttFile_533_Route_12_House {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_533_Route_12_House;

typedef struct PACKED HeadbuttFile_534_Safari_Zone_Gate_Pokmon_Center {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_534_Safari_Zone_Gate_Pokmon_Center;

typedef struct PACKED HeadbuttFile_535_Safari_Zone_Gate_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_535_Safari_Zone_Gate_Pokmon_Centre_Lower;

typedef struct PACKED HeadbuttFile_536_Goldenrod_City_Game_Corner {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_536_Goldenrod_City_Game_Corner;

typedef struct PACKED HeadbuttFile_537_Celadon_City_Game_Corner {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_537_Celadon_City_Game_Corner;

typedef struct PACKED HeadbuttFile_538_Mystery_Zone {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_538_Mystery_Zone;

typedef struct PACKED HeadbuttFile_539_Pokmon_League_Pokmon_Centre_Lower {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_539_Pokmon_League_Pokmon_Centre_Lower;


typedef struct PACKED HeadbuttArchiveData {
    HeadbuttFile_000_EVERYWHERE everywhere;
    HeadbuttFile_001_NOTHING nothing;
    HeadbuttFile_002_Union_Room unionRoom;
    HeadbuttFile_003_UG ug;
    HeadbuttFile_004_DIRECT2 direct2;
    HeadbuttFile_005_DIRECT4 direct4;
    HeadbuttFile_006_Bellchime_Trail bellchimeTrail;
    HeadbuttFile_007_Burned_Tower_1F burnedTower1F;
    HeadbuttFile_008_Ruins_Of_Alph_Inside ruinsOfAlphInside;
    HeadbuttFile_009_Route_1 route1;
    HeadbuttFile_010_Route_2 route2;
    HeadbuttFile_011_Route_3 route3;
    HeadbuttFile_012_Route_4 route4;
    HeadbuttFile_013_Route_5 route5;
    HeadbuttFile_014_Route_6 route6;
    HeadbuttFile_015_Route_7 route7;
    HeadbuttFile_016_Route_8 route8;
    HeadbuttFile_017_Route_9 route9;
    HeadbuttFile_018_Route_10 route10;
    HeadbuttFile_019_Route_11 route11;
    HeadbuttFile_020_Route_12 route12;
    HeadbuttFile_021_Route_13 route13;
    HeadbuttFile_022_Route_14 route14;
    HeadbuttFile_023_Route_15 route15;
    HeadbuttFile_024_Route_16 route16;
    HeadbuttFile_025_Route_17 route17;
    HeadbuttFile_026_Route_18 route18;
    HeadbuttFile_027_Route_22 route22;
    HeadbuttFile_028_Route_24 route24;
    HeadbuttFile_029_Route_25 route25;
    HeadbuttFile_030_Route_26 route26;
    HeadbuttFile_031_Route_27 route27;
    HeadbuttFile_032_Route_28 route28;
    HeadbuttFile_033_Route_29 route29;
    HeadbuttFile_034_Route_30 route30;
    HeadbuttFile_035_Route_31 route31;
    HeadbuttFile_036_Route_32 route32;
    HeadbuttFile_037_Route_33 route33;
    HeadbuttFile_038_Route_34 route34;
    HeadbuttFile_039_Route_35 route35;
    HeadbuttFile_040_Route_36 route36;
    HeadbuttFile_041_Route_37 route37;
    HeadbuttFile_042_Route_38 route38;
    HeadbuttFile_043_Route_39 route39;
    HeadbuttFile_044_Route_42 route42;
    HeadbuttFile_045_Route_43 route43;
    HeadbuttFile_046_Route_44 route44;
    HeadbuttFile_047_Route_45 route45;
    HeadbuttFile_048_Route_46 route46;
    HeadbuttFile_049_Pallet_Town palletTown;
    HeadbuttFile_050_Viridian_City viridianCity;
    HeadbuttFile_051_Pewter_City pewterCity;
    HeadbuttFile_052_Cerulean_City ceruleanCity;
    HeadbuttFile_053_Lavender_Town lavenderTown;
    HeadbuttFile_054_Vermilion_City vermilionCity;
    HeadbuttFile_055_Celadon_City celadonCity;
    HeadbuttFile_056_Fuchsia_City fuchsiaCity;
    HeadbuttFile_057_Cinnabar_Island cinnabarIsland;
    HeadbuttFile_058_Indigo_Plateau indigoPlateau;
    HeadbuttFile_059_Saffron_City saffronCity;
    HeadbuttFile_060_New_Bark_Town newBarkTown;
    HeadbuttFile_061_Elms_Lab_1F elmsLab1F;
    HeadbuttFile_062_Elms_Lab_2F elmsLab2F;
    HeadbuttFile_063_Moms_House_1F momsHouse1F;
    HeadbuttFile_064_Moms_House_2F momsHouse2F;
    HeadbuttFile_065_New_Bark_Town_House newBarkTownHouse;
    HeadbuttFile_066_Ethan_Lyras_House_1F ethanLyrasHouse1F;
    HeadbuttFile_067_Cherrygrove_City cherrygroveCity;
    HeadbuttFile_068_Cherrygrove_City_Pokmart cherrygroveCityPokmart;
    HeadbuttFile_069_Cherrygrove_City_Pokmon_Centre cherrygroveCityPokemonCentre;
    HeadbuttFile_070_Cherrygrove_City_House cherrygroveCityHouse;
    HeadbuttFile_071_Cherrygrove_City_House cherrygroveCityHouse071;
    HeadbuttFile_072_Cherrygrove_City_House cherrygroveCityHouse072;
    HeadbuttFile_073_Violet_City violetCity;
    HeadbuttFile_074_Azalea_Town azaleaTown;
    HeadbuttFile_075_Cianwood_City cianwoodCity;
    HeadbuttFile_076_Goldenrod_City goldenrodCity;
    HeadbuttFile_077_Olivine_City olivineCity;
    HeadbuttFile_078_Ecruteak_City ecruteakCity;
    HeadbuttFile_079_Ecruteak_City_Pokmart ecruteakCityPokmart;
    HeadbuttFile_080_Ecruteak_City_Gym ecruteakCityGym;
    HeadbuttFile_081_Ecruteak_Pokmon_Centre ecruteakPokemonCentre;
    HeadbuttFile_082_Jubilife_City_Unused jubilifeCityUnused;
    HeadbuttFile_083_Barrier_Station_to_Bell_Tower barrierStationToBellTower;
    HeadbuttFile_084_Ecruteak_City_House ecruteakCityHouse;
    HeadbuttFile_085_Ecruteak_City_House ecruteakCityHouse085;
    HeadbuttFile_086_Ecruteak_Dance_Theatre ecruteakDanceTheatre;
    HeadbuttFile_087_Mahogany_Town mahoganyTown;
    HeadbuttFile_088_Lake_of_Rage lakeOfRage;
    HeadbuttFile_089_Blackthorn_City blackthornCity;
    HeadbuttFile_090_Mt_Silver mtSilver;
    HeadbuttFile_091_Route_19 route19;
    HeadbuttFile_092_Route_20 route20;
    HeadbuttFile_093_Route_21 route21;
    HeadbuttFile_094_Route_40 route40;
    HeadbuttFile_095_Route_41 route41;
    HeadbuttFile_096_National_Park nationalPark;
    HeadbuttFile_097_Route_31_And_Violet_City_Gate route31AndVioletCityGate;
    HeadbuttFile_098_Route_32_And_Ruins_Of_Alph_Gate route32AndRuinsOfAlphGate;
    HeadbuttFile_099_Union_Cave_1F unionCave1F;
    HeadbuttFile_100_Azalea_Town_And_Ilex_Forest_Gate azaleaTownAndIlexForestGate;
    HeadbuttFile_101_Goldenrod_City_And_Route_35_Gate goldenrodCityAndRoute35Gate;
    HeadbuttFile_102_Route_35_And_National_Park_Gate route35AndNationalParkGate;
    HeadbuttFile_103_Ruins_Of_Alph_And_Route_36_Gate ruinsOfAlphAndRoute36Gate;
    HeadbuttFile_104_National_Park_And_Route_36_Gate nationalParkAndRoute36Gate;
    HeadbuttFile_105_Jubilife_City_Unused jubilifeCityUnused105;
    HeadbuttFile_106_Digletts_Cave diglettsCave;
    HeadbuttFile_107_Mt_Moon mtMoon;
    HeadbuttFile_108_Rock_Tunnel_1F rockTunnel1F;
    HeadbuttFile_109_Pal_Park palPark;
    HeadbuttFile_110_Sprout_Tower_1F sproutTower1F;
    HeadbuttFile_111_Bell_Tower_1F bellTower1F;
    HeadbuttFile_112_Radio_Tower_1F radioTower1F;
    HeadbuttFile_113_Ruins_Of_Alph_Outside ruinsOfAlphOutside;
    HeadbuttFile_114_Slowpoke_Well_Entrance slowpokeWellEntrance;
    HeadbuttFile_115_Olivine_Lighthouse_1F olivineLighthouse1F;
    HeadbuttFile_116_Mahogany_Town_Souvenir_Shop mahoganyTownSouvenirShop;
    HeadbuttFile_117_Ilex_Forest ilexForest;
    HeadbuttFile_118_Goldenrod_Tunnel goldenrodTunnel;
    HeadbuttFile_119_Mt_Mortar_1F mtMortar1F;
    HeadbuttFile_120_Ice_Path_1F icePath1F;
    HeadbuttFile_121_Whirl_Islands whirlIslands;
    HeadbuttFile_122_Mt_Silver_Cave mtSilverCave;
    HeadbuttFile_123_Dark_Cave_Route_45_entrance darkCaveRoute45Entrance;
    HeadbuttFile_124_Victory_Road_1F victoryRoad1F;
    HeadbuttFile_125_Dragons_Den_Entrance dragonsDenEntrance;
    HeadbuttFile_126_Tohjo_Falls tohjoFalls;
    HeadbuttFile_127_Route_30_House route30House;
    HeadbuttFile_128_Ecruteak_City_Union_Room ecruteakCityUnionRoom;
    HeadbuttFile_129_Ecruteak_City_Union_Room ecruteakCityUnionRoom129;
    HeadbuttFile_130_Ecruteak_City_Union_Room ecruteakCityUnionRoom130;
    HeadbuttFile_131_Ecruteak_City_Pokmon_Centre_Lower ecruteakCityPokemonCentreLower;
    HeadbuttFile_132_Ecruteak_City_And_Route_42_Gate ecruteakCityAndRoute42Gate;
    HeadbuttFile_133_Mahogany_Town_House mahoganyTownHouse;
    HeadbuttFile_134_Route_29_And_Route_46_Gate route29AndRoute46Gate;
    HeadbuttFile_135_Violet_City_Gym violetCityGym;
    HeadbuttFile_136_Azalea_Gym_Entrance azaleaGymEntrance;
    HeadbuttFile_137_Goldenrod_City_Gym goldenrodCityGym;
    HeadbuttFile_138_Olivine_City_Gym olivineCityGym;
    HeadbuttFile_139_Cianwood_City_Gym cianwoodCityGym;
    HeadbuttFile_140_Mahogany_City_Gym_3rd_Room mahoganyCityGym3rdRoom;
    HeadbuttFile_141_Blackthorn_City_Gym blackthornCityGym;
    HeadbuttFile_142_Route_43_Gate route43Gate;
    HeadbuttFile_143_Mr_Pokmons_House mrPokemonsHouse;
    HeadbuttFile_144_Cherrygrove_City_Pokmon_Centre_Lower cherrygroveCityPokemonCentreLower;
    HeadbuttFile_145_Cerulean_Cave_1F ceruleanCave1F;
    HeadbuttFile_146_Seafoam_Islands_1F seafoamIslands1F;
    HeadbuttFile_147_Viridian_Forest viridianForest;
    HeadbuttFile_148_Power_Plant_Unused powerPlantUnused;
    HeadbuttFile_149_Route_36_And_Violet_City_Inbetween route36AndVioletCityInbetween;
    HeadbuttFile_150_Route_35_And_Pokathlon_Dome_Inbetween route35AndPokathlonDomeInbetween;
    HeadbuttFile_151_Route_47 route47;
    HeadbuttFile_152_Route_48 route48;
    HeadbuttFile_153_Union_Cave_B1F unionCaveB1F;
    HeadbuttFile_154_Union_Cave_B2F unionCaveB2F;
    HeadbuttFile_155_Sprout_Tower_2F sproutTower2F;
    HeadbuttFile_156_Sprout_Tower_3F sproutTower3F;
    HeadbuttFile_157_Violet_City_Pokmart violetCityPokmart;
    HeadbuttFile_158_Violet_City_Pokmon_Centre violetCityPokemonCentre;
    HeadbuttFile_159_Violet_City_Pokmon_School violetCityPokemonSchool;
    HeadbuttFile_160_Violet_City_House violetCityHouse;
    HeadbuttFile_161_Jubilife_City_Unused jubilifeCityUnused161;
    HeadbuttFile_162_Violet_City_House violetCityHouse162;
    HeadbuttFile_163_Azalea_Town_Charcoal_Kiln azaleaTownCharcoalKiln;
    HeadbuttFile_164_Azalea_Town_Kurts_House azaleaTownKurtsHouse;
    HeadbuttFile_165_Azalea_Town_Pokmart azaleaTownPokmart;
    HeadbuttFile_166_Azalea_Town_Pokmon_Centre azaleaTownPokemonCentre;
    HeadbuttFile_167_Violet_City_Pokmon_Centre_Lower violetCityPokemonCentreLower;
    HeadbuttFile_168_Azalea_Town_Pokmon_Centre_Lower azaleaTownPokemonCentreLower;
    HeadbuttFile_169_Route_32_Pokmon_Centre route32PokemonCentre;
    HeadbuttFile_170_Route_32_Pokmon_Centre_Lower route32PokemonCentreLower;
    HeadbuttFile_171_Ilex_Forest_And_Route_34_Gate ilexForestAndRoute34Gate;
    HeadbuttFile_172_Ecruteak_And_Route_38_Gate ecruteakAndRoute38Gate;
    HeadbuttFile_173_Safari_Zone_Gate_Inside safariZoneGateInside;
    HeadbuttFile_174_Safari_Zone_Gate_Outside safariZoneGateOutside;
    HeadbuttFile_175_Jubilife_City_Unused jubilifeCityUnused175;
    HeadbuttFile_176_Dark_Cave_Route_31_entrance darkCaveRoute31Entrance;
    HeadbuttFile_177_Slowpoke_Well_1F slowpokeWell1F;
    HeadbuttFile_178_Victory_Road_2F victoryRoad2F;
    HeadbuttFile_179_Victory_Road_3F victoryRoad3F;
    HeadbuttFile_180_Azalea_Town_Gym azaleaTownGym;
    HeadbuttFile_181_Slowpoke_Well_B1F slowpokeWellB1F;
    HeadbuttFile_182_Goldenrod_City_Bike_Store goldenrodCityBikeStore;
    HeadbuttFile_183_Goldenrod_City_Game_Corner_JAP goldenrodCityGameCornerJAP;
    HeadbuttFile_184_Goldenrod_City_Flower_Shop goldenrodCityFlowerShop;
    HeadbuttFile_185_Goldenrod_City_Pokmon_Centre goldenrodCityPokemonCentre;
    HeadbuttFile_186_Goldenrod_Radio_Tower_2F goldenrodRadioTower2F;
    HeadbuttFile_187_Goldenrod_Radio_Tower_3F goldenrodRadioTower3F;
    HeadbuttFile_188_Goldenrod_Radio_Tower_4F goldenrodRadioTower4F;
    HeadbuttFile_189_Goldenrod_Radio_Tower_5F goldenrodRadioTower5F;
    HeadbuttFile_190_Goldenrod_Radio_Tower_Observation_Deck goldenrodRadioTowerObservationDeck;
    HeadbuttFile_191_Goldenrod_Department_Store_1F goldenrodDepartmentStore1F;
    HeadbuttFile_192_Goldenrod_Department_Store_2F goldenrodDepartmentStore2F;
    HeadbuttFile_193_Goldenrod_Department_Store_3F goldenrodDepartmentStore3F;
    HeadbuttFile_194_Goldenrod_Department_Store_4F goldenrodDepartmentStore4F;
    HeadbuttFile_195_Goldenrod_Department_Store_5F goldenrodDepartmentStore5F;
    HeadbuttFile_196_Goldenrod_Department_Store_6F goldenrodDepartmentStore6F;
    HeadbuttFile_197_Goldenrod_City_Magnet_Train_Station goldenrodCityMagnetTrainStation;
    HeadbuttFile_198_Goldenrod_City_Magnet_Train_Station goldenrodCityMagnetTrainStation198;
    HeadbuttFile_199_Goldenrod_Tunnel goldenrodTunnel199;
    HeadbuttFile_200_Goldenrod_Department_Store_Basement goldenrodDepartmentStoreBasement;
    HeadbuttFile_201_Goldenrod_Tunnel_B2F goldenrodTunnelB2F;
    HeadbuttFile_202_Goldenrod_Tunnel_Warehouse goldenrodTunnelWarehouse;
    HeadbuttFile_203_Goldenrod_City_House goldenrodCityHouse;
    HeadbuttFile_204_Goldenrod_City_House goldenrodCityHouse204;
    HeadbuttFile_205_Goldenrod_City_House goldenrodCityHouse205;
    HeadbuttFile_206_Goldenrod_City_Name_Rater goldenrodCityNameRater;
    HeadbuttFile_207_Global_Terminal globalTerminal;
    HeadbuttFile_208_Goldenrod_City_House_1F goldenrodCityHouse1F;
    HeadbuttFile_209_Goldenrod_City_House_2F goldenrodCityHouse2F;
    HeadbuttFile_210_Goldenrod_City_House_3F goldenrodCityHouse3F;
    HeadbuttFile_211_Goldenrod_City_House_4F goldenrodCityHouse4F;
    HeadbuttFile_212_Goldenrod_City_House_5F goldenrodCityHouse5F;
    HeadbuttFile_213_Goldenrod_City_House_6F goldenrodCityHouse6F;
    HeadbuttFile_214_Moomoo_Farm_House moomooFarmHouse;
    HeadbuttFile_215_Moomoo_Farm_Barn moomooFarmBarn;
    HeadbuttFile_216_Barrier_Station_to_Bell_Tower_And_Bellchime_Trail_Path barrierStationToBellTowerAndBellchimeTrailPath;
    HeadbuttFile_217_Burned_Tower_B1F burnedTowerB1F;
    HeadbuttFile_218_Ruins_of_Alph_Inside ruinsOfAlphInside218;
    HeadbuttFile_219_Goldenrod_City_Pokmon_Centre_Lower goldenrodCityPokemonCentreLower;
    HeadbuttFile_220_Glitter_Lighthouse_2F glitterLighthouse2F;
    HeadbuttFile_221_Glitter_Lighthouse_Exterior glitterLighthouseExterior;
    HeadbuttFile_222_Glitter_Lighthouse_3F glitterLighthouse3F;
    HeadbuttFile_223_Glitter_Lighthouse_4F glitterLighthouse4F;
    HeadbuttFile_224_Glitter_Lighthouse_5F glitterLighthouse5F;
    HeadbuttFile_225_Glitter_Lighthouse_Light_Room glitterLighthouseLightRoom;
    HeadbuttFile_226_Olivine_City_Pokmon_Centre olivineCityPokemonCentre;
    HeadbuttFile_227_Olivine_City_Pokmart olivineCityPokmart;
    HeadbuttFile_228_Olivine_City_House olivineCityHouse;
    HeadbuttFile_229_Olivine_City_House olivineCityHouse229;
    HeadbuttFile_230_Olivine_City_House olivineCityHouse230;
    HeadbuttFile_231_Olivine_City_Caf olivineCityCaf;
    HeadbuttFile_232_Cianwood_City_House cianwoodCityHouse;
    HeadbuttFile_233_Cianwood_City_Pharmacy cianwoodCityPharmacy;
    HeadbuttFile_234_Cianwood_City_House cianwoodCityHouse234;
    HeadbuttFile_235_Cianwood_City_House cianwoodCityHouse235;
    HeadbuttFile_236_Cianwood_City_Pokmon_Centre cianwoodCityPokemonCentre;
    HeadbuttFile_237_Ice_Path_B1F icePathB1F;
    HeadbuttFile_238_Ice_Path_B2F icePathB2F;
    HeadbuttFile_239_Ice_Path_B3F icePathB3F;
    HeadbuttFile_240_Olivine_City_House olivineCityHouse240;
    HeadbuttFile_241_Cianwood_City_Pokmon_Centre_Lower cianwoodCityPokemonCentreLower;
    HeadbuttFile_242_Whirl_Islands_B1F whirlIslandsB1F;
    HeadbuttFile_243_Whirl_Islands_B2F whirlIslandsB2F;
    HeadbuttFile_244_Whirl_Islands_B3F whirlIslandsB3F;
    HeadbuttFile_245_Route_43_Gate route43Gate245;
    HeadbuttFile_246_Mahogany_Town_Pokmon_Centre mahoganyTownPokemonCentre;
    HeadbuttFile_247_Team_Rocket_HQ_B1F teamRocketHQB1F;
    HeadbuttFile_248_Team_Rocket_HQ_B2F teamRocketHQB2F;
    HeadbuttFile_249_Team_Rocket_HQ_B3F teamRocketHQB3F;
    HeadbuttFile_250_Mt_Mortar_1F mtMortar1F250;
    HeadbuttFile_251_Mt_Mortar_2F mtMortar2F;
    HeadbuttFile_252_Mt_Mortar_1F mtMortar1F252;
    HeadbuttFile_253_Dragons_Den_Main dragonsDenMain;
    HeadbuttFile_254_Fight_Area fightArea;
    HeadbuttFile_255_Fight_Area fightArea255;
    HeadbuttFile_256_Fight_Area fightArea256;
    HeadbuttFile_257_Fight_Area fightArea257;
    HeadbuttFile_258_Fight_Area fightArea258;
    HeadbuttFile_259_Fight_Area fightArea259;
    HeadbuttFile_260_Fight_Area fightArea260;
    HeadbuttFile_261_Fight_Area fightArea261;
    HeadbuttFile_262_Fight_Area fightArea262;
    HeadbuttFile_263_Battle_Park battlePark;
    HeadbuttFile_264_Battle_Park battlePark264;
    HeadbuttFile_265_Battle_Tower battleTower;
    HeadbuttFile_266_Battle_Tower battleTower266;
    HeadbuttFile_267_Battle_Tower battleTower267;
    HeadbuttFile_268_Battle_Tower battleTower268;
    HeadbuttFile_269_Battle_Tower battleTower269;
    HeadbuttFile_270_Battle_Tower battleTower270;
    HeadbuttFile_271_Battle_Tower battleTower271;
    HeadbuttFile_272_Battle_Frontier battleFrontier;
    HeadbuttFile_273_Battle_Frontier battleFrontier273;
    HeadbuttFile_274_Battle_Tower battleTower274;
    HeadbuttFile_275_Battle_Factory battleFactory;
    HeadbuttFile_276_Battle_Hall battleHall;
    HeadbuttFile_277_Battle_Castle battleCastle;
    HeadbuttFile_278_Battle_Arcade battleArcade;
    HeadbuttFile_279_Cliff_Edge_Gate cliffEdgeGate;
    HeadbuttFile_280_Pokathlon_Dome_Outside pokathlonDomeOutside;
    HeadbuttFile_281_Pokathlon_Dome_Inside pokathlonDomeInside;
    HeadbuttFile_282_Pokathlon_Dome_Inside pokathlonDomeInside282;
    HeadbuttFile_283_Pokathlon_Dome_Inside pokathlonDomeInside283;
    HeadbuttFile_284_Pokathlon_Dome_Inside pokathlonDomeInside284;
    HeadbuttFile_285_Pokathlon_Dome_Inside pokathlonDomeInside285;
    HeadbuttFile_286_Pokathlon_Dome_Inside pokathlonDomeInside286;
    HeadbuttFile_287_Pokathlon_Dome_Inside pokathlonDomeInside287;
    HeadbuttFile_288_Dragons_Den_Shrine dragonsDenShrine;
    HeadbuttFile_289_Blackthorn_City_House blackthornCityHouse;
    HeadbuttFile_290_Blackthorn_City_House blackthornCityHouse290;
    HeadbuttFile_291_Blackthorn_City_House blackthornCityHouse291;
    HeadbuttFile_292_Blackthorn_City_Pokmart blackthornCityPokmart;
    HeadbuttFile_293_Blackthorn_City_Pokmon_Centre blackthornCityPokemonCentre;
    HeadbuttFile_294_Lake_of_Rage_House lakeOfRageHouse;
    HeadbuttFile_295_Lake_of_Rage_House lakeOfRageHouse295;
    HeadbuttFile_296_Route_26_House route26House;
    HeadbuttFile_297_Route_26_Week_Siblings_House route26WeekSiblingsHouse;
    HeadbuttFile_298_Tohjo_Falls_Hidden_Room tohjoFallsHiddenRoom;
    HeadbuttFile_299_Pokmon_League_Reception_Gate pokmonLeagueReceptionGate;
    HeadbuttFile_300_Pokmon_League pokmonLeague;
    HeadbuttFile_301_Pokmon_League_Wills_Room pokmonLeagueWillsRoom;
    HeadbuttFile_302_Pokmon_League_Kogas_Room pokmonLeagueKogasRoom;
    HeadbuttFile_303_Pokmon_League_Brunos_Room pokmonLeagueBrunosRoom;
    HeadbuttFile_304_Pokmon_League_Karens_Room pokmonLeagueKarensRoom;
    HeadbuttFile_305_Pokmon_League_Lances_Room pokmonLeagueLancesRoom;
    HeadbuttFile_306_Pokmon_League_Hall_of_Fame pokmonLeagueHallOfFame;
    HeadbuttFile_307_S_S_Aqua sSAqua;
    HeadbuttFile_308_S_S_Aqua sSAqua308;
    HeadbuttFile_309_S_S_Aqua sSAqua309;
    HeadbuttFile_310_S_S_Aqua sSAqua310;
    HeadbuttFile_311_S_S_Aqua sSAqua311;
    HeadbuttFile_312_Ruins_of_Alph_Entrance ruinsOfAlphEntrance;
    HeadbuttFile_313_Ruins_of_Alph_Chamber_1 ruinsOfAlphChamber1;
    HeadbuttFile_314_Ruins_of_Alph_Entrance ruinsOfAlphEntrance314;
    HeadbuttFile_315_Ruins_of_Alph_Underground_Hall ruinsOfAlphUndergroundHall;
    HeadbuttFile_316_Ruins_of_Alph_Entrance ruinsOfAlphEntrance316;
    HeadbuttFile_317_Ruins_of_Alph_Chamber_3 ruinsOfAlphChamber3;
    HeadbuttFile_318_Ruins_of_Alph_Entrance ruinsOfAlphEntrance318;
    HeadbuttFile_319_Ruins_of_Alph_Chamber_4 ruinsOfAlphChamber4;
    HeadbuttFile_320_Ruins_of_Alph_Chamber_2 ruinsOfAlphChamber2;
    HeadbuttFile_321_Ruins_of_Alph_Research_Center ruinsOfAlphResearchCenter;
    HeadbuttFile_322_Route_27_House route27House;
    HeadbuttFile_323_Ruins_of_Alph_Hall_Entrance ruinsOfAlphHallEntrance;
    HeadbuttFile_324_Ruins_of_Alph_Entrance_2 ruinsOfAlphEntrance2;
    HeadbuttFile_325_Ruins_of_Alph_Entrance_2 ruinsOfAlphEntrance2325;
    HeadbuttFile_326_Ruins_of_Alph_Entrance_2 ruinsOfAlphEntrance2326;
    HeadbuttFile_327_Ruins_of_Alph_Entrance_2 ruinsOfAlphEntrance2327;
    HeadbuttFile_328_S_S_Aqua sSAqua328;
    HeadbuttFile_329_S_S_Aqua sSAqua329;
    HeadbuttFile_330_Olivine_Port olivinePort;
    HeadbuttFile_331_Pokmon_Daycare pokmonDaycare;
    HeadbuttFile_332_Bell_Tower_2F bellTower2F;
    HeadbuttFile_333_Bell_Tower_3F bellTower3F;
    HeadbuttFile_334_Bell_Tower_4F bellTower4F;
    HeadbuttFile_335_Bell_Tower_5F bellTower5F;
    HeadbuttFile_336_Bell_Tower_6F bellTower6F;
    HeadbuttFile_337_Bell_Tower_7F bellTower7F;
    HeadbuttFile_338_Bell_Tower_8F bellTower8F;
    HeadbuttFile_339_Bell_Tower_9F bellTower9F;
    HeadbuttFile_340_Bell_Tower_Roof bellTowerRoof;
    HeadbuttFile_341_Bell_Tower_10F bellTower10F;
    HeadbuttFile_342_Cliff_Cave cliffCave;
    HeadbuttFile_343_Safari_Zone safariZone;
    HeadbuttFile_344_Safari_Zone safariZone344;
    HeadbuttFile_345_Safari_Zone safariZone345;
    HeadbuttFile_346_Safari_Zone safariZone346;
    HeadbuttFile_347_Safari_Zone safariZone347;
    HeadbuttFile_348_Safari_Zone safariZone348;
    HeadbuttFile_349_Safari_Zone safariZone349;
    HeadbuttFile_350_Safari_Zone safariZone350;
    HeadbuttFile_351_Safari_Zone safariZone351;
    HeadbuttFile_352_Safari_Zone safariZone352;
    HeadbuttFile_353_Safari_Zone safariZone353;
    HeadbuttFile_354_Safari_Zone safariZone354;
    HeadbuttFile_355_Safari_Zone safariZone355;
    HeadbuttFile_356_Safari_Zone safariZone356;
    HeadbuttFile_357_Safari_Zone safariZone357;
    HeadbuttFile_358_Vermilion_City_Pokmon_Centre vermilionCityPokemonCentre;
    HeadbuttFile_359_Vermilion_City_Pokmon_Centre_Lower vermilionCityPokemonCentreLower;
    HeadbuttFile_360_Vermilion_City_Pokmart vermilionCityPokmart;
    HeadbuttFile_361_Vermilion_City_Pokmon_Centre vermilionCityPokemonCentre361;
    HeadbuttFile_362_Vermilion_City_Pokmon_Fan_Club vermilionCityPokemonFanClub;
    HeadbuttFile_363_Vermilion_City_House vermilionCityHouse;
    HeadbuttFile_364_Vermilion_City_House vermilionCityHouse364;
    HeadbuttFile_365_Vermilion_City_Gym vermilionCityGym;
    HeadbuttFile_366_Route_40_And_Frontier_Access_Gate route40AndFrontierAccessGate;
    HeadbuttFile_367_Olivine_City_Pokmon_Center_Lower olivineCityPokemonCenterLower;
    HeadbuttFile_368_Mahogany_Town_Pokmon_Center_Lower mahoganyTownPokemonCenterLower;
    HeadbuttFile_369_Blackthorn_Town_Pokmon_Center_Lower blackthornTownPokemonCenterLower;
    HeadbuttFile_370_Celadon_City_Department_Store_1F celadonCityDepartmentStore1F;
    HeadbuttFile_371_Celadon_City_Department_Store_2F celadonCityDepartmentStore2F;
    HeadbuttFile_372_Celadon_City_Department_Store_3F celadonCityDepartmentStore3F;
    HeadbuttFile_373_Celadon_City_Department_Store_4F celadonCityDepartmentStore4F;
    HeadbuttFile_374_Celadon_City_Department_Store_5F celadonCityDepartmentStore5F;
    HeadbuttFile_375_Celadon_City_Department_Store_6F celadonCityDepartmentStore6F;
    HeadbuttFile_376_Celadon_Condominiums_1F celadonCondominiums1F;
    HeadbuttFile_377_Celadon_Condominiums_2F celadonCondominiums2F;
    HeadbuttFile_378_Celadon_Condominiums_3F celadonCondominiums3F;
    HeadbuttFile_379_Celadon_Condominiums_4F celadonCondominiums4F;
    HeadbuttFile_380_Celadon_Condominiums_5F celadonCondominiums5F;
    HeadbuttFile_381_Celadon_Game_Corner_Main_JP celadonGameCornerMainJP;
    HeadbuttFile_382_Celadon_Game_Corner_Prize_Building_JP celadonGameCornerPrizeBuildingJP;
    HeadbuttFile_383_Celadon_City_House celadonCityHouse;
    HeadbuttFile_384_Ethan_Lyras_House_2F ethanLyrasHouse2F;
    HeadbuttFile_385_Cianwood_City_House cianwoodCityHouse385;
    HeadbuttFile_386_Vermilion_Port vermilionPort;
    HeadbuttFile_387_Vermilion_Port vermilionPort387;
    HeadbuttFile_388_Route_10 route10388;
    HeadbuttFile_389_Route_6_And_Saffron_City_Gate route6AndSaffronCityGate;
    HeadbuttFile_390_Route_8_And_Saffron_City_Gate route8AndSaffronCityGate;
    HeadbuttFile_391_Route_5_And_Saffron_City_Gate route5AndSaffronCityGate;
    HeadbuttFile_392_Route_15_And_Fushsia_City_Gate route15AndFushsiaCityGate;
    HeadbuttFile_393_Celadon_City_Pokmon_Centre celadonCityPokemonCentre;
    HeadbuttFile_394_Celadon_City_Pokmon_Centre_Lower celadonCityPokemonCentreLower;
    HeadbuttFile_395_Celadon_City_Gym celadonCityGym;
    HeadbuttFile_396_Mahogany_Town_Gym_2nd_Room mahoganyTownGym2ndRoom;
    HeadbuttFile_397_Mahogany_Town_Gym_1st_Room mahoganyTownGym1stRoom;
    HeadbuttFile_398_Saffron_City_Fighting_Dojo saffronCityFightingDojo;
    HeadbuttFile_399_Saffron_City_House saffronCityHouse;
    HeadbuttFile_400_Saffron_City_Magnet_Train_Station saffronCityMagnetTrainStation;
    HeadbuttFile_401_Saffron_City_Magnet_Train_Station saffronCityMagnetTrainStation401;
    HeadbuttFile_402_Saffron_City_Magnet_Train_Station saffronCityMagnetTrainStation402;
    HeadbuttFile_403_ROTOMs_Room rotomsRoom;
    HeadbuttFile_404_Saffron_City_House saffronCityHouse404;
    HeadbuttFile_405_Saffron_City_House saffronCityHouse405;
    HeadbuttFile_406_Saffron_City_House saffronCityHouse406;
    HeadbuttFile_407_Saffron_City_Pokmon_Center saffronCityPokemonCenter;
    HeadbuttFile_408_Saffron_City_Pokmon_Center_Lower saffronCityPokemonCenterLower;
    HeadbuttFile_409_Saffron_City_Pokmart saffronCityPokmart;
    HeadbuttFile_410_Saffron_City_Gym saffronCityGym;
    HeadbuttFile_411_Frontier_Access frontierAccess;
    HeadbuttFile_412_Global_Terminal_2F globalTerminal2F;
    HeadbuttFile_413_Global_Terminal_3F globalTerminal3F;
    HeadbuttFile_414_Route_2 route2414;
    HeadbuttFile_415_Route_16_House route16House;
    HeadbuttFile_416_Route_20_Unused route20Unused;
    HeadbuttFile_417_Route_2 route2417;
    HeadbuttFile_418_Route_2_And_Pewter_City_Gate route2AndPewterCityGate;
    HeadbuttFile_419_Route_2_And_Viridian_City_Gate route2AndViridianCityGate;
    HeadbuttFile_420_Route_2_Gate route2Gate;
    HeadbuttFile_421_Route_16_Gate route16Gate;
    HeadbuttFile_422_Route_16 route16422;
    HeadbuttFile_423_Route_18_Gate route18Gate;
    HeadbuttFile_424_Route_19_And_Fushsia_City_Gate route19AndFushsiaCityGate;
    HeadbuttFile_425_Route_11_And_Route_12_Gate route11AndRoute12Gate;
    HeadbuttFile_426_Cerulean_City_Pokmart ceruleanCityPokmart;
    HeadbuttFile_427_Cerulean_City_Gym ceruleanCityGym;
    HeadbuttFile_428_Cerulean_City_Pokmon_Centre ceruleanCityPokemonCentre;
    HeadbuttFile_429_Cerulean_City_House ceruleanCityHouse;
    HeadbuttFile_430_Cerulean_City_House ceruleanCityHouse430;
    HeadbuttFile_431_Cerulean_City_House ceruleanCityHouse431;
    HeadbuttFile_432_Cerulean_City_Bike_Shop ceruleanCityBikeShop;
    HeadbuttFile_433_Lavender_Town_Pokmart lavenderTownPokmart;
    HeadbuttFile_434_Lavender_Town_Pokmon_Centre lavenderTownPokemonCentre;
    HeadbuttFile_435_Lavender_Town_House lavenderTownHouse;
    HeadbuttFile_436_Lavender_Town_House lavenderTownHouse436;
    HeadbuttFile_437_Lavender_Town_Name_Rater lavenderTownNameRater;
    HeadbuttFile_438_House_of_Memories houseOfMemories;
    HeadbuttFile_439_Lavender_Town_Radio_Tower lavenderTownRadioTower;
    HeadbuttFile_440_Sea_Cottage seaCottage;
    HeadbuttFile_441_Goldenrod_City_Elevator goldenrodCityElevator;
    HeadbuttFile_442_Celadon_City_Elevator celadonCityElevator;
    HeadbuttFile_443_Celadon_City_Elevator celadonCityElevator443;
    HeadbuttFile_444_Celadon_City_Elevator celadonCityElevator444;
    HeadbuttFile_445_Saffron_City_Elevator saffronCityElevator;
    HeadbuttFile_446_Lighthouse_Elevator lighthouseElevator;
    HeadbuttFile_447_Radio_Tower_Elevator radioTowerElevator;
    HeadbuttFile_448_Mt_Moon_Entrance mtMoonEntrance;
    HeadbuttFile_449_Mt_Moon_Square mtMoonSquare;
    HeadbuttFile_450_Cerulean_Cave_2F ceruleanCave2F;
    HeadbuttFile_451_Cerulean_Cave_B1F ceruleanCaveB1F;
    HeadbuttFile_452_Rock_Tunnel_B1F rockTunnelB1F;
    HeadbuttFile_453_Seafoam_Islands_B1F seafoamIslandsB1F;
    HeadbuttFile_454_Seafoam_Islands_B2F seafoamIslandsB2F;
    HeadbuttFile_455_Seafoam_Islands_B3F seafoamIslandsB3F;
    HeadbuttFile_456_Seafoam_Islands_B4F seafoamIslandsB4F;
    HeadbuttFile_457_Cinnabar_Gym cinnabarGym;
    HeadbuttFile_458_Cinnabar_Gym cinnabarGym458;
    HeadbuttFile_459_Mt_Silver_Cave_Upper_Mountainside mtSilverCaveUpperMountainside;
    HeadbuttFile_460_Mt_Silver_Cave_Lower_Mountainside mtSilverCaveLowerMountainside;
    HeadbuttFile_461_Mt_Silver_Cave_Expert_Belt_Chamber mtSilverCaveExpertBeltChamber;
    HeadbuttFile_462_Mt_Silver_Cave_Moltres_Chamber mtSilverCaveMoltresChamber;
    HeadbuttFile_463_Mt_Silver_Cave_2F mtSilverCave2F;
    HeadbuttFile_464_Mt_Silver_Cave_3F mtSilverCave3F;
    HeadbuttFile_465_Mt_Silver_Cave_Summit mtSilverCaveSummit;
    HeadbuttFile_466_Route_10_Pokmon_Centre route10PokemonCentre;
    HeadbuttFile_467_Power_Plant powerPlant;
    HeadbuttFile_468_Underground_Path undergroundPath;
    HeadbuttFile_469_Route_5_Underground_Path_Entrance route5UndergroundPathEntrance;
    HeadbuttFile_470_Route_6_Underground_Path_Entrance route6UndergroundPathEntrance;
    HeadbuttFile_471_Pewter_Museum_of_Science pewterMuseumOfScience;
    HeadbuttFile_472_Pewter_City_House pewterCityHouse;
    HeadbuttFile_473_Pewter_City_Gym pewterCityGym;
    HeadbuttFile_474_Pewter_City_Pokmart pewterCityPokmart;
    HeadbuttFile_475_Pewter_City_Pokmon_Centre pewterCityPokemonCentre;
    HeadbuttFile_476_Pewter_City_Pokmon_Centre_Lower pewterCityPokemonCentreLower;
    HeadbuttFile_477_Pewter_City_House pewterCityHouse477;
    HeadbuttFile_478_Fushsia_City_Pokmart fushsiaCityPokmart;
    HeadbuttFile_479_Pal_Park_Inside palParkInside;
    HeadbuttFile_480_Fushsia_City_Gym fushsiaCityGym;
    HeadbuttFile_481_Fushsia_City_House fushsiaCityHouse;
    HeadbuttFile_482_Fushsia_City_Pokmon_Centre fushsiaCityPokemonCentre;
    HeadbuttFile_483_Fushsia_City_House fushsiaCityHouse483;
    HeadbuttFile_484_Route_10_Pokmon_Centre_Lower route10PokemonCentreLower;
    HeadbuttFile_485_Fuchsia_City_Pokmon_Centre_Lower fuchsiaCityPokemonCentreLower;
    HeadbuttFile_486_Whirl_Islands_Lugias_Room whirlIslandsLugiasRoom;
    HeadbuttFile_487_National_Park_Bug_Catching_Contest nationalParkBugCatchingContest;
    HeadbuttFile_488_National_Park_Bug_Catching_Contest_National_Dex nationalParkBugCatchingContestNationalDex;
    HeadbuttFile_489_Power_Plant powerPlant489;
    HeadbuttFile_490_Ruins_of_Alph_Underground_Hall ruinsOfAlphUndergroundHall490;
    HeadbuttFile_491_Ruins_of_Alph_Hall_Entrance ruinsOfAlphHallEntrance491;
    HeadbuttFile_492_Ruins_of_Alph_Underground_Hall ruinsOfAlphUndergroundHall492;
    HeadbuttFile_493_Route_7_And_Saffron_City_Gate route7AndSaffronCityGate;
    HeadbuttFile_494_Lavender_Town_Pokmon_Centre_Lower lavenderTownPokemonCentreLower;
    HeadbuttFile_495_Cerulean_City_Pokmon_Centre_Lower ceruleanCityPokemonCentreLower;
    HeadbuttFile_496_Viridian_City_Gym viridianCityGym;
    HeadbuttFile_497_Viridian_City_House viridianCityHouse;
    HeadbuttFile_498_Viridian_City_Trainer_House viridianCityTrainerHouse;
    HeadbuttFile_499_Viridian_City_Trainer_House_2F viridianCityTrainerHouse2F;
    HeadbuttFile_500_Viridian_City_Pokmart viridianCityPokmart;
    HeadbuttFile_501_Viridian_City_Pokmon_Centre viridianCityPokemonCentre;
    HeadbuttFile_502_Viridian_City_Pokmon_Centre_Lower viridianCityPokemonCentreLower;
    HeadbuttFile_503_Pallet_Town_Reds_House_1F palletTownRedsHouse1F;
    HeadbuttFile_504_Pallet_Town_Blues_House_1F palletTownBluesHouse1F;
    HeadbuttFile_505_Oaks_Lab oaksLab;
    HeadbuttFile_506_Pallet_Town_Reds_House_2F palletTownRedsHouse2F;
    HeadbuttFile_507_Pallet_Town_Blues_House_2F palletTownBluesHouse2F;
    HeadbuttFile_508_Cinnabar_Island_Pokmon_Centre cinnabarIslandPokemonCentre;
    HeadbuttFile_509_Cinnabar_Island_Pokmon_Centre_Lower cinnabarIslandPokemonCentreLower;
    HeadbuttFile_510_Route_28_House route28House;
    HeadbuttFile_511_Route_3_Pokmon_Centre route3PokemonCentre;
    HeadbuttFile_512_Route_3_Pokmon_Centre_Lower route3PokemonCentreLower;
    HeadbuttFile_513_Mt_Moon_Square mtMoonSquare513;
    HeadbuttFile_514_Mt_Silver_Pokmon_Centre mtSilverPokemonCentre;
    HeadbuttFile_515_Mt_Silver_Pokmon_Centre_Lower mtSilverPokemonCentreLower;
    HeadbuttFile_516_HIROBA hiroba;
    HeadbuttFile_517_Route_5_House route5House;
    HeadbuttFile_518_Mt_Moon_Square_House mtMoonSquareHouse;
    HeadbuttFile_519_Goldenrod_City_Magnet_Train_Station goldenrodCityMagnetTrainStation519;
    HeadbuttFile_520_Saffron_City_Magnet_Train_Station saffronCityMagnetTrainStation520;
    HeadbuttFile_521_Sinjoh_Ruins_Outside sinjohRuinsOutside;
    HeadbuttFile_522_Sinjoh_Ruins_Mystri_Stage sinjohRuinsMystriStage;
    HeadbuttFile_523_Sinjoh_Ruins_Cabin sinjohRuinsCabin;
    HeadbuttFile_524_Embedded_Tower_Groudon embeddedTowerGroudon;
    HeadbuttFile_525_Embedded_Tower_Kyogre embeddedTowerKyogre;
    HeadbuttFile_526_Embedded_Tower_Rayquaza embeddedTowerRayquaza;
    HeadbuttFile_527_Route_1_And_Viridian_City_Gate route1AndViridianCityGate;
    HeadbuttFile_528_Frontier_Access_Pokmon_Center frontierAccessPokemonCenter;
    HeadbuttFile_529_Frontier_Access_Pokmon_Center_Lower frontierAccessPokemonCenterLower;
    HeadbuttFile_530_Frontier_Access_Pokmart frontierAccessPokmart;
    HeadbuttFile_531_Frontier_Access_House frontierAccessHouse;
    HeadbuttFile_532_Underground_Path undergroundPath532;
    HeadbuttFile_533_Route_12_House route12House;
    HeadbuttFile_534_Safari_Zone_Gate_Pokmon_Center safariZoneGatePokemonCenter;
    HeadbuttFile_535_Safari_Zone_Gate_Pokmon_Centre_Lower safariZoneGatePokemonCentreLower;
    HeadbuttFile_536_Goldenrod_City_Game_Corner goldenrodCityGameCorner;
    HeadbuttFile_537_Celadon_City_Game_Corner celadonCityGameCorner;
    HeadbuttFile_538_Mystery_Zone mysteryZone;
    HeadbuttFile_539_Pokmon_League_Pokmon_Centre_Lower pokmonLeaguePokemonCentreLower;
} HeadbuttArchiveData;


const u32 __size[] =
{
    sizeof(HeadbuttFile_000_EVERYWHERE),
    sizeof(HeadbuttFile_001_NOTHING),
    sizeof(HeadbuttFile_002_Union_Room),
    sizeof(HeadbuttFile_003_UG),
    sizeof(HeadbuttFile_004_DIRECT2),
    sizeof(HeadbuttFile_005_DIRECT4),
    sizeof(HeadbuttFile_006_Bellchime_Trail),
    sizeof(HeadbuttFile_007_Burned_Tower_1F),
    sizeof(HeadbuttFile_008_Ruins_Of_Alph_Inside),
    sizeof(HeadbuttFile_009_Route_1),
    sizeof(HeadbuttFile_010_Route_2),
    sizeof(HeadbuttFile_011_Route_3),
    sizeof(HeadbuttFile_012_Route_4),
    sizeof(HeadbuttFile_013_Route_5),
    sizeof(HeadbuttFile_014_Route_6),
    sizeof(HeadbuttFile_015_Route_7),
    sizeof(HeadbuttFile_016_Route_8),
    sizeof(HeadbuttFile_017_Route_9),
    sizeof(HeadbuttFile_018_Route_10),
    sizeof(HeadbuttFile_019_Route_11),
    sizeof(HeadbuttFile_020_Route_12),
    sizeof(HeadbuttFile_021_Route_13),
    sizeof(HeadbuttFile_022_Route_14),
    sizeof(HeadbuttFile_023_Route_15),
    sizeof(HeadbuttFile_024_Route_16),
    sizeof(HeadbuttFile_025_Route_17),
    sizeof(HeadbuttFile_026_Route_18),
    sizeof(HeadbuttFile_027_Route_22),
    sizeof(HeadbuttFile_028_Route_24),
    sizeof(HeadbuttFile_029_Route_25),
    sizeof(HeadbuttFile_030_Route_26),
    sizeof(HeadbuttFile_031_Route_27),
    sizeof(HeadbuttFile_032_Route_28),
    sizeof(HeadbuttFile_033_Route_29),
    sizeof(HeadbuttFile_034_Route_30),
    sizeof(HeadbuttFile_035_Route_31),
    sizeof(HeadbuttFile_036_Route_32),
    sizeof(HeadbuttFile_037_Route_33),
    sizeof(HeadbuttFile_038_Route_34),
    sizeof(HeadbuttFile_039_Route_35),
    sizeof(HeadbuttFile_040_Route_36),
    sizeof(HeadbuttFile_041_Route_37),
    sizeof(HeadbuttFile_042_Route_38),
    sizeof(HeadbuttFile_043_Route_39),
    sizeof(HeadbuttFile_044_Route_42),
    sizeof(HeadbuttFile_045_Route_43),
    sizeof(HeadbuttFile_046_Route_44),
    sizeof(HeadbuttFile_047_Route_45),
    sizeof(HeadbuttFile_048_Route_46),
    sizeof(HeadbuttFile_049_Pallet_Town),
    sizeof(HeadbuttFile_050_Viridian_City),
    sizeof(HeadbuttFile_051_Pewter_City),
    sizeof(HeadbuttFile_052_Cerulean_City),
    sizeof(HeadbuttFile_053_Lavender_Town),
    sizeof(HeadbuttFile_054_Vermilion_City),
    sizeof(HeadbuttFile_055_Celadon_City),
    sizeof(HeadbuttFile_056_Fuchsia_City),
    sizeof(HeadbuttFile_057_Cinnabar_Island),
    sizeof(HeadbuttFile_058_Indigo_Plateau),
    sizeof(HeadbuttFile_059_Saffron_City),
    sizeof(HeadbuttFile_060_New_Bark_Town),
    sizeof(HeadbuttFile_061_Elms_Lab_1F),
    sizeof(HeadbuttFile_062_Elms_Lab_2F),
    sizeof(HeadbuttFile_063_Moms_House_1F),
    sizeof(HeadbuttFile_064_Moms_House_2F),
    sizeof(HeadbuttFile_065_New_Bark_Town_House),
    sizeof(HeadbuttFile_066_Ethan_Lyras_House_1F),
    sizeof(HeadbuttFile_067_Cherrygrove_City),
    sizeof(HeadbuttFile_068_Cherrygrove_City_Pokmart),
    sizeof(HeadbuttFile_069_Cherrygrove_City_Pokmon_Centre),
    sizeof(HeadbuttFile_070_Cherrygrove_City_House),
    sizeof(HeadbuttFile_071_Cherrygrove_City_House),
    sizeof(HeadbuttFile_072_Cherrygrove_City_House),
    sizeof(HeadbuttFile_073_Violet_City),
    sizeof(HeadbuttFile_074_Azalea_Town),
    sizeof(HeadbuttFile_075_Cianwood_City),
    sizeof(HeadbuttFile_076_Goldenrod_City),
    sizeof(HeadbuttFile_077_Olivine_City),
    sizeof(HeadbuttFile_078_Ecruteak_City),
    sizeof(HeadbuttFile_079_Ecruteak_City_Pokmart),
    sizeof(HeadbuttFile_080_Ecruteak_City_Gym),
    sizeof(HeadbuttFile_081_Ecruteak_Pokmon_Centre),
    sizeof(HeadbuttFile_082_Jubilife_City_Unused),
    sizeof(HeadbuttFile_083_Barrier_Station_to_Bell_Tower),
    sizeof(HeadbuttFile_084_Ecruteak_City_House),
    sizeof(HeadbuttFile_085_Ecruteak_City_House),
    sizeof(HeadbuttFile_086_Ecruteak_Dance_Theatre),
    sizeof(HeadbuttFile_087_Mahogany_Town),
    sizeof(HeadbuttFile_088_Lake_of_Rage),
    sizeof(HeadbuttFile_089_Blackthorn_City),
    sizeof(HeadbuttFile_090_Mt_Silver),
    sizeof(HeadbuttFile_091_Route_19),
    sizeof(HeadbuttFile_092_Route_20),
    sizeof(HeadbuttFile_093_Route_21),
    sizeof(HeadbuttFile_094_Route_40),
    sizeof(HeadbuttFile_095_Route_41),
    sizeof(HeadbuttFile_096_National_Park),
    sizeof(HeadbuttFile_097_Route_31_And_Violet_City_Gate),
    sizeof(HeadbuttFile_098_Route_32_And_Ruins_Of_Alph_Gate),
    sizeof(HeadbuttFile_099_Union_Cave_1F),
    sizeof(HeadbuttFile_100_Azalea_Town_And_Ilex_Forest_Gate),
    sizeof(HeadbuttFile_101_Goldenrod_City_And_Route_35_Gate),
    sizeof(HeadbuttFile_102_Route_35_And_National_Park_Gate),
    sizeof(HeadbuttFile_103_Ruins_Of_Alph_And_Route_36_Gate),
    sizeof(HeadbuttFile_104_National_Park_And_Route_36_Gate),
    sizeof(HeadbuttFile_105_Jubilife_City_Unused),
    sizeof(HeadbuttFile_106_Digletts_Cave),
    sizeof(HeadbuttFile_107_Mt_Moon),
    sizeof(HeadbuttFile_108_Rock_Tunnel_1F),
    sizeof(HeadbuttFile_109_Pal_Park),
    sizeof(HeadbuttFile_110_Sprout_Tower_1F),
    sizeof(HeadbuttFile_111_Bell_Tower_1F),
    sizeof(HeadbuttFile_112_Radio_Tower_1F),
    sizeof(HeadbuttFile_113_Ruins_Of_Alph_Outside),
    sizeof(HeadbuttFile_114_Slowpoke_Well_Entrance),
    sizeof(HeadbuttFile_115_Olivine_Lighthouse_1F),
    sizeof(HeadbuttFile_116_Mahogany_Town_Souvenir_Shop),
    sizeof(HeadbuttFile_117_Ilex_Forest),
    sizeof(HeadbuttFile_118_Goldenrod_Tunnel),
    sizeof(HeadbuttFile_119_Mt_Mortar_1F),
    sizeof(HeadbuttFile_120_Ice_Path_1F),
    sizeof(HeadbuttFile_121_Whirl_Islands),
    sizeof(HeadbuttFile_122_Mt_Silver_Cave),
    sizeof(HeadbuttFile_123_Dark_Cave_Route_45_entrance),
    sizeof(HeadbuttFile_124_Victory_Road_1F),
    sizeof(HeadbuttFile_125_Dragons_Den_Entrance),
    sizeof(HeadbuttFile_126_Tohjo_Falls),
    sizeof(HeadbuttFile_127_Route_30_House),
    sizeof(HeadbuttFile_128_Ecruteak_City_Union_Room),
    sizeof(HeadbuttFile_129_Ecruteak_City_Union_Room),
    sizeof(HeadbuttFile_130_Ecruteak_City_Union_Room),
    sizeof(HeadbuttFile_131_Ecruteak_City_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_132_Ecruteak_City_And_Route_42_Gate),
    sizeof(HeadbuttFile_133_Mahogany_Town_House),
    sizeof(HeadbuttFile_134_Route_29_And_Route_46_Gate),
    sizeof(HeadbuttFile_135_Violet_City_Gym),
    sizeof(HeadbuttFile_136_Azalea_Gym_Entrance),
    sizeof(HeadbuttFile_137_Goldenrod_City_Gym),
    sizeof(HeadbuttFile_138_Olivine_City_Gym),
    sizeof(HeadbuttFile_139_Cianwood_City_Gym),
    sizeof(HeadbuttFile_140_Mahogany_City_Gym_3rd_Room),
    sizeof(HeadbuttFile_141_Blackthorn_City_Gym),
    sizeof(HeadbuttFile_142_Route_43_Gate),
    sizeof(HeadbuttFile_143_Mr_Pokmons_House),
    sizeof(HeadbuttFile_144_Cherrygrove_City_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_145_Cerulean_Cave_1F),
    sizeof(HeadbuttFile_146_Seafoam_Islands_1F),
    sizeof(HeadbuttFile_147_Viridian_Forest),
    sizeof(HeadbuttFile_148_Power_Plant_Unused),
    sizeof(HeadbuttFile_149_Route_36_And_Violet_City_Inbetween),
    sizeof(HeadbuttFile_150_Route_35_And_Pokathlon_Dome_Inbetween),
    sizeof(HeadbuttFile_151_Route_47),
    sizeof(HeadbuttFile_152_Route_48),
    sizeof(HeadbuttFile_153_Union_Cave_B1F),
    sizeof(HeadbuttFile_154_Union_Cave_B2F),
    sizeof(HeadbuttFile_155_Sprout_Tower_2F),
    sizeof(HeadbuttFile_156_Sprout_Tower_3F),
    sizeof(HeadbuttFile_157_Violet_City_Pokmart),
    sizeof(HeadbuttFile_158_Violet_City_Pokmon_Centre),
    sizeof(HeadbuttFile_159_Violet_City_Pokmon_School),
    sizeof(HeadbuttFile_160_Violet_City_House),
    sizeof(HeadbuttFile_161_Jubilife_City_Unused),
    sizeof(HeadbuttFile_162_Violet_City_House),
    sizeof(HeadbuttFile_163_Azalea_Town_Charcoal_Kiln),
    sizeof(HeadbuttFile_164_Azalea_Town_Kurts_House),
    sizeof(HeadbuttFile_165_Azalea_Town_Pokmart),
    sizeof(HeadbuttFile_166_Azalea_Town_Pokmon_Centre),
    sizeof(HeadbuttFile_167_Violet_City_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_168_Azalea_Town_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_169_Route_32_Pokmon_Centre),
    sizeof(HeadbuttFile_170_Route_32_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_171_Ilex_Forest_And_Route_34_Gate),
    sizeof(HeadbuttFile_172_Ecruteak_And_Route_38_Gate),
    sizeof(HeadbuttFile_173_Safari_Zone_Gate_Inside),
    sizeof(HeadbuttFile_174_Safari_Zone_Gate_Outside),
    sizeof(HeadbuttFile_175_Jubilife_City_Unused),
    sizeof(HeadbuttFile_176_Dark_Cave_Route_31_entrance),
    sizeof(HeadbuttFile_177_Slowpoke_Well_1F),
    sizeof(HeadbuttFile_178_Victory_Road_2F),
    sizeof(HeadbuttFile_179_Victory_Road_3F),
    sizeof(HeadbuttFile_180_Azalea_Town_Gym),
    sizeof(HeadbuttFile_181_Slowpoke_Well_B1F),
    sizeof(HeadbuttFile_182_Goldenrod_City_Bike_Store),
    sizeof(HeadbuttFile_183_Goldenrod_City_Game_Corner_JAP),
    sizeof(HeadbuttFile_184_Goldenrod_City_Flower_Shop),
    sizeof(HeadbuttFile_185_Goldenrod_City_Pokmon_Centre),
    sizeof(HeadbuttFile_186_Goldenrod_Radio_Tower_2F),
    sizeof(HeadbuttFile_187_Goldenrod_Radio_Tower_3F),
    sizeof(HeadbuttFile_188_Goldenrod_Radio_Tower_4F),
    sizeof(HeadbuttFile_189_Goldenrod_Radio_Tower_5F),
    sizeof(HeadbuttFile_190_Goldenrod_Radio_Tower_Observation_Deck),
    sizeof(HeadbuttFile_191_Goldenrod_Department_Store_1F),
    sizeof(HeadbuttFile_192_Goldenrod_Department_Store_2F),
    sizeof(HeadbuttFile_193_Goldenrod_Department_Store_3F),
    sizeof(HeadbuttFile_194_Goldenrod_Department_Store_4F),
    sizeof(HeadbuttFile_195_Goldenrod_Department_Store_5F),
    sizeof(HeadbuttFile_196_Goldenrod_Department_Store_6F),
    sizeof(HeadbuttFile_197_Goldenrod_City_Magnet_Train_Station),
    sizeof(HeadbuttFile_198_Goldenrod_City_Magnet_Train_Station),
    sizeof(HeadbuttFile_199_Goldenrod_Tunnel),
    sizeof(HeadbuttFile_200_Goldenrod_Department_Store_Basement),
    sizeof(HeadbuttFile_201_Goldenrod_Tunnel_B2F),
    sizeof(HeadbuttFile_202_Goldenrod_Tunnel_Warehouse),
    sizeof(HeadbuttFile_203_Goldenrod_City_House),
    sizeof(HeadbuttFile_204_Goldenrod_City_House),
    sizeof(HeadbuttFile_205_Goldenrod_City_House),
    sizeof(HeadbuttFile_206_Goldenrod_City_Name_Rater),
    sizeof(HeadbuttFile_207_Global_Terminal),
    sizeof(HeadbuttFile_208_Goldenrod_City_House_1F),
    sizeof(HeadbuttFile_209_Goldenrod_City_House_2F),
    sizeof(HeadbuttFile_210_Goldenrod_City_House_3F),
    sizeof(HeadbuttFile_211_Goldenrod_City_House_4F),
    sizeof(HeadbuttFile_212_Goldenrod_City_House_5F),
    sizeof(HeadbuttFile_213_Goldenrod_City_House_6F),
    sizeof(HeadbuttFile_214_Moomoo_Farm_House),
    sizeof(HeadbuttFile_215_Moomoo_Farm_Barn),
    sizeof(HeadbuttFile_216_Barrier_Station_to_Bell_Tower_And_Bellchime_Trail_Path),
    sizeof(HeadbuttFile_217_Burned_Tower_B1F),
    sizeof(HeadbuttFile_218_Ruins_of_Alph_Inside),
    sizeof(HeadbuttFile_219_Goldenrod_City_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_220_Glitter_Lighthouse_2F),
    sizeof(HeadbuttFile_221_Glitter_Lighthouse_Exterior),
    sizeof(HeadbuttFile_222_Glitter_Lighthouse_3F),
    sizeof(HeadbuttFile_223_Glitter_Lighthouse_4F),
    sizeof(HeadbuttFile_224_Glitter_Lighthouse_5F),
    sizeof(HeadbuttFile_225_Glitter_Lighthouse_Light_Room),
    sizeof(HeadbuttFile_226_Olivine_City_Pokmon_Centre),
    sizeof(HeadbuttFile_227_Olivine_City_Pokmart),
    sizeof(HeadbuttFile_228_Olivine_City_House),
    sizeof(HeadbuttFile_229_Olivine_City_House),
    sizeof(HeadbuttFile_230_Olivine_City_House),
    sizeof(HeadbuttFile_231_Olivine_City_Caf),
    sizeof(HeadbuttFile_232_Cianwood_City_House),
    sizeof(HeadbuttFile_233_Cianwood_City_Pharmacy),
    sizeof(HeadbuttFile_234_Cianwood_City_House),
    sizeof(HeadbuttFile_235_Cianwood_City_House),
    sizeof(HeadbuttFile_236_Cianwood_City_Pokmon_Centre),
    sizeof(HeadbuttFile_237_Ice_Path_B1F),
    sizeof(HeadbuttFile_238_Ice_Path_B2F),
    sizeof(HeadbuttFile_239_Ice_Path_B3F),
    sizeof(HeadbuttFile_240_Olivine_City_House),
    sizeof(HeadbuttFile_241_Cianwood_City_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_242_Whirl_Islands_B1F),
    sizeof(HeadbuttFile_243_Whirl_Islands_B2F),
    sizeof(HeadbuttFile_244_Whirl_Islands_B3F),
    sizeof(HeadbuttFile_245_Route_43_Gate),
    sizeof(HeadbuttFile_246_Mahogany_Town_Pokmon_Centre),
    sizeof(HeadbuttFile_247_Team_Rocket_HQ_B1F),
    sizeof(HeadbuttFile_248_Team_Rocket_HQ_B2F),
    sizeof(HeadbuttFile_249_Team_Rocket_HQ_B3F),
    sizeof(HeadbuttFile_250_Mt_Mortar_1F),
    sizeof(HeadbuttFile_251_Mt_Mortar_2F),
    sizeof(HeadbuttFile_252_Mt_Mortar_1F),
    sizeof(HeadbuttFile_253_Dragons_Den_Main),
    sizeof(HeadbuttFile_254_Fight_Area),
    sizeof(HeadbuttFile_255_Fight_Area),
    sizeof(HeadbuttFile_256_Fight_Area),
    sizeof(HeadbuttFile_257_Fight_Area),
    sizeof(HeadbuttFile_258_Fight_Area),
    sizeof(HeadbuttFile_259_Fight_Area),
    sizeof(HeadbuttFile_260_Fight_Area),
    sizeof(HeadbuttFile_261_Fight_Area),
    sizeof(HeadbuttFile_262_Fight_Area),
    sizeof(HeadbuttFile_263_Battle_Park),
    sizeof(HeadbuttFile_264_Battle_Park),
    sizeof(HeadbuttFile_265_Battle_Tower),
    sizeof(HeadbuttFile_266_Battle_Tower),
    sizeof(HeadbuttFile_267_Battle_Tower),
    sizeof(HeadbuttFile_268_Battle_Tower),
    sizeof(HeadbuttFile_269_Battle_Tower),
    sizeof(HeadbuttFile_270_Battle_Tower),
    sizeof(HeadbuttFile_271_Battle_Tower),
    sizeof(HeadbuttFile_272_Battle_Frontier),
    sizeof(HeadbuttFile_273_Battle_Frontier),
    sizeof(HeadbuttFile_274_Battle_Tower),
    sizeof(HeadbuttFile_275_Battle_Factory),
    sizeof(HeadbuttFile_276_Battle_Hall),
    sizeof(HeadbuttFile_277_Battle_Castle),
    sizeof(HeadbuttFile_278_Battle_Arcade),
    sizeof(HeadbuttFile_279_Cliff_Edge_Gate),
    sizeof(HeadbuttFile_280_Pokathlon_Dome_Outside),
    sizeof(HeadbuttFile_281_Pokathlon_Dome_Inside),
    sizeof(HeadbuttFile_282_Pokathlon_Dome_Inside),
    sizeof(HeadbuttFile_283_Pokathlon_Dome_Inside),
    sizeof(HeadbuttFile_284_Pokathlon_Dome_Inside),
    sizeof(HeadbuttFile_285_Pokathlon_Dome_Inside),
    sizeof(HeadbuttFile_286_Pokathlon_Dome_Inside),
    sizeof(HeadbuttFile_287_Pokathlon_Dome_Inside),
    sizeof(HeadbuttFile_288_Dragons_Den_Shrine),
    sizeof(HeadbuttFile_289_Blackthorn_City_House),
    sizeof(HeadbuttFile_290_Blackthorn_City_House),
    sizeof(HeadbuttFile_291_Blackthorn_City_House),
    sizeof(HeadbuttFile_292_Blackthorn_City_Pokmart),
    sizeof(HeadbuttFile_293_Blackthorn_City_Pokmon_Centre),
    sizeof(HeadbuttFile_294_Lake_of_Rage_House),
    sizeof(HeadbuttFile_295_Lake_of_Rage_House),
    sizeof(HeadbuttFile_296_Route_26_House),
    sizeof(HeadbuttFile_297_Route_26_Week_Siblings_House),
    sizeof(HeadbuttFile_298_Tohjo_Falls_Hidden_Room),
    sizeof(HeadbuttFile_299_Pokmon_League_Reception_Gate),
    sizeof(HeadbuttFile_300_Pokmon_League),
    sizeof(HeadbuttFile_301_Pokmon_League_Wills_Room),
    sizeof(HeadbuttFile_302_Pokmon_League_Kogas_Room),
    sizeof(HeadbuttFile_303_Pokmon_League_Brunos_Room),
    sizeof(HeadbuttFile_304_Pokmon_League_Karens_Room),
    sizeof(HeadbuttFile_305_Pokmon_League_Lances_Room),
    sizeof(HeadbuttFile_306_Pokmon_League_Hall_of_Fame),
    sizeof(HeadbuttFile_307_S_S_Aqua),
    sizeof(HeadbuttFile_308_S_S_Aqua),
    sizeof(HeadbuttFile_309_S_S_Aqua),
    sizeof(HeadbuttFile_310_S_S_Aqua),
    sizeof(HeadbuttFile_311_S_S_Aqua),
    sizeof(HeadbuttFile_312_Ruins_of_Alph_Entrance),
    sizeof(HeadbuttFile_313_Ruins_of_Alph_Chamber_1),
    sizeof(HeadbuttFile_314_Ruins_of_Alph_Entrance),
    sizeof(HeadbuttFile_315_Ruins_of_Alph_Underground_Hall),
    sizeof(HeadbuttFile_316_Ruins_of_Alph_Entrance),
    sizeof(HeadbuttFile_317_Ruins_of_Alph_Chamber_3),
    sizeof(HeadbuttFile_318_Ruins_of_Alph_Entrance),
    sizeof(HeadbuttFile_319_Ruins_of_Alph_Chamber_4),
    sizeof(HeadbuttFile_320_Ruins_of_Alph_Chamber_2),
    sizeof(HeadbuttFile_321_Ruins_of_Alph_Research_Center),
    sizeof(HeadbuttFile_322_Route_27_House),
    sizeof(HeadbuttFile_323_Ruins_of_Alph_Hall_Entrance),
    sizeof(HeadbuttFile_324_Ruins_of_Alph_Entrance_2),
    sizeof(HeadbuttFile_325_Ruins_of_Alph_Entrance_2),
    sizeof(HeadbuttFile_326_Ruins_of_Alph_Entrance_2),
    sizeof(HeadbuttFile_327_Ruins_of_Alph_Entrance_2),
    sizeof(HeadbuttFile_328_S_S_Aqua),
    sizeof(HeadbuttFile_329_S_S_Aqua),
    sizeof(HeadbuttFile_330_Olivine_Port),
    sizeof(HeadbuttFile_331_Pokmon_Daycare),
    sizeof(HeadbuttFile_332_Bell_Tower_2F),
    sizeof(HeadbuttFile_333_Bell_Tower_3F),
    sizeof(HeadbuttFile_334_Bell_Tower_4F),
    sizeof(HeadbuttFile_335_Bell_Tower_5F),
    sizeof(HeadbuttFile_336_Bell_Tower_6F),
    sizeof(HeadbuttFile_337_Bell_Tower_7F),
    sizeof(HeadbuttFile_338_Bell_Tower_8F),
    sizeof(HeadbuttFile_339_Bell_Tower_9F),
    sizeof(HeadbuttFile_340_Bell_Tower_Roof),
    sizeof(HeadbuttFile_341_Bell_Tower_10F),
    sizeof(HeadbuttFile_342_Cliff_Cave),
    sizeof(HeadbuttFile_343_Safari_Zone),
    sizeof(HeadbuttFile_344_Safari_Zone),
    sizeof(HeadbuttFile_345_Safari_Zone),
    sizeof(HeadbuttFile_346_Safari_Zone),
    sizeof(HeadbuttFile_347_Safari_Zone),
    sizeof(HeadbuttFile_348_Safari_Zone),
    sizeof(HeadbuttFile_349_Safari_Zone),
    sizeof(HeadbuttFile_350_Safari_Zone),
    sizeof(HeadbuttFile_351_Safari_Zone),
    sizeof(HeadbuttFile_352_Safari_Zone),
    sizeof(HeadbuttFile_353_Safari_Zone),
    sizeof(HeadbuttFile_354_Safari_Zone),
    sizeof(HeadbuttFile_355_Safari_Zone),
    sizeof(HeadbuttFile_356_Safari_Zone),
    sizeof(HeadbuttFile_357_Safari_Zone),
    sizeof(HeadbuttFile_358_Vermilion_City_Pokmon_Centre),
    sizeof(HeadbuttFile_359_Vermilion_City_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_360_Vermilion_City_Pokmart),
    sizeof(HeadbuttFile_361_Vermilion_City_Pokmon_Centre),
    sizeof(HeadbuttFile_362_Vermilion_City_Pokmon_Fan_Club),
    sizeof(HeadbuttFile_363_Vermilion_City_House),
    sizeof(HeadbuttFile_364_Vermilion_City_House),
    sizeof(HeadbuttFile_365_Vermilion_City_Gym),
    sizeof(HeadbuttFile_366_Route_40_And_Frontier_Access_Gate),
    sizeof(HeadbuttFile_367_Olivine_City_Pokmon_Center_Lower),
    sizeof(HeadbuttFile_368_Mahogany_Town_Pokmon_Center_Lower),
    sizeof(HeadbuttFile_369_Blackthorn_Town_Pokmon_Center_Lower),
    sizeof(HeadbuttFile_370_Celadon_City_Department_Store_1F),
    sizeof(HeadbuttFile_371_Celadon_City_Department_Store_2F),
    sizeof(HeadbuttFile_372_Celadon_City_Department_Store_3F),
    sizeof(HeadbuttFile_373_Celadon_City_Department_Store_4F),
    sizeof(HeadbuttFile_374_Celadon_City_Department_Store_5F),
    sizeof(HeadbuttFile_375_Celadon_City_Department_Store_6F),
    sizeof(HeadbuttFile_376_Celadon_Condominiums_1F),
    sizeof(HeadbuttFile_377_Celadon_Condominiums_2F),
    sizeof(HeadbuttFile_378_Celadon_Condominiums_3F),
    sizeof(HeadbuttFile_379_Celadon_Condominiums_4F),
    sizeof(HeadbuttFile_380_Celadon_Condominiums_5F),
    sizeof(HeadbuttFile_381_Celadon_Game_Corner_Main_JP),
    sizeof(HeadbuttFile_382_Celadon_Game_Corner_Prize_Building_JP),
    sizeof(HeadbuttFile_383_Celadon_City_House),
    sizeof(HeadbuttFile_384_Ethan_Lyras_House_2F),
    sizeof(HeadbuttFile_385_Cianwood_City_House),
    sizeof(HeadbuttFile_386_Vermilion_Port),
    sizeof(HeadbuttFile_387_Vermilion_Port),
    sizeof(HeadbuttFile_388_Route_10),
    sizeof(HeadbuttFile_389_Route_6_And_Saffron_City_Gate),
    sizeof(HeadbuttFile_390_Route_8_And_Saffron_City_Gate),
    sizeof(HeadbuttFile_391_Route_5_And_Saffron_City_Gate),
    sizeof(HeadbuttFile_392_Route_15_And_Fushsia_City_Gate),
    sizeof(HeadbuttFile_393_Celadon_City_Pokmon_Centre),
    sizeof(HeadbuttFile_394_Celadon_City_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_395_Celadon_City_Gym),
    sizeof(HeadbuttFile_396_Mahogany_Town_Gym_2nd_Room),
    sizeof(HeadbuttFile_397_Mahogany_Town_Gym_1st_Room),
    sizeof(HeadbuttFile_398_Saffron_City_Fighting_Dojo),
    sizeof(HeadbuttFile_399_Saffron_City_House),
    sizeof(HeadbuttFile_400_Saffron_City_Magnet_Train_Station),
    sizeof(HeadbuttFile_401_Saffron_City_Magnet_Train_Station),
    sizeof(HeadbuttFile_402_Saffron_City_Magnet_Train_Station),
    sizeof(HeadbuttFile_403_ROTOMs_Room),
    sizeof(HeadbuttFile_404_Saffron_City_House),
    sizeof(HeadbuttFile_405_Saffron_City_House),
    sizeof(HeadbuttFile_406_Saffron_City_House),
    sizeof(HeadbuttFile_407_Saffron_City_Pokmon_Center),
    sizeof(HeadbuttFile_408_Saffron_City_Pokmon_Center_Lower),
    sizeof(HeadbuttFile_409_Saffron_City_Pokmart),
    sizeof(HeadbuttFile_410_Saffron_City_Gym),
    sizeof(HeadbuttFile_411_Frontier_Access),
    sizeof(HeadbuttFile_412_Global_Terminal_2F),
    sizeof(HeadbuttFile_413_Global_Terminal_3F),
    sizeof(HeadbuttFile_414_Route_2),
    sizeof(HeadbuttFile_415_Route_16_House),
    sizeof(HeadbuttFile_416_Route_20_Unused),
    sizeof(HeadbuttFile_417_Route_2),
    sizeof(HeadbuttFile_418_Route_2_And_Pewter_City_Gate),
    sizeof(HeadbuttFile_419_Route_2_And_Viridian_City_Gate),
    sizeof(HeadbuttFile_420_Route_2_Gate),
    sizeof(HeadbuttFile_421_Route_16_Gate),
    sizeof(HeadbuttFile_422_Route_16),
    sizeof(HeadbuttFile_423_Route_18_Gate),
    sizeof(HeadbuttFile_424_Route_19_And_Fushsia_City_Gate),
    sizeof(HeadbuttFile_425_Route_11_And_Route_12_Gate),
    sizeof(HeadbuttFile_426_Cerulean_City_Pokmart),
    sizeof(HeadbuttFile_427_Cerulean_City_Gym),
    sizeof(HeadbuttFile_428_Cerulean_City_Pokmon_Centre),
    sizeof(HeadbuttFile_429_Cerulean_City_House),
    sizeof(HeadbuttFile_430_Cerulean_City_House),
    sizeof(HeadbuttFile_431_Cerulean_City_House),
    sizeof(HeadbuttFile_432_Cerulean_City_Bike_Shop),
    sizeof(HeadbuttFile_433_Lavender_Town_Pokmart),
    sizeof(HeadbuttFile_434_Lavender_Town_Pokmon_Centre),
    sizeof(HeadbuttFile_435_Lavender_Town_House),
    sizeof(HeadbuttFile_436_Lavender_Town_House),
    sizeof(HeadbuttFile_437_Lavender_Town_Name_Rater),
    sizeof(HeadbuttFile_438_House_of_Memories),
    sizeof(HeadbuttFile_439_Lavender_Town_Radio_Tower),
    sizeof(HeadbuttFile_440_Sea_Cottage),
    sizeof(HeadbuttFile_441_Goldenrod_City_Elevator),
    sizeof(HeadbuttFile_442_Celadon_City_Elevator),
    sizeof(HeadbuttFile_443_Celadon_City_Elevator),
    sizeof(HeadbuttFile_444_Celadon_City_Elevator),
    sizeof(HeadbuttFile_445_Saffron_City_Elevator),
    sizeof(HeadbuttFile_446_Lighthouse_Elevator),
    sizeof(HeadbuttFile_447_Radio_Tower_Elevator),
    sizeof(HeadbuttFile_448_Mt_Moon_Entrance),
    sizeof(HeadbuttFile_449_Mt_Moon_Square),
    sizeof(HeadbuttFile_450_Cerulean_Cave_2F),
    sizeof(HeadbuttFile_451_Cerulean_Cave_B1F),
    sizeof(HeadbuttFile_452_Rock_Tunnel_B1F),
    sizeof(HeadbuttFile_453_Seafoam_Islands_B1F),
    sizeof(HeadbuttFile_454_Seafoam_Islands_B2F),
    sizeof(HeadbuttFile_455_Seafoam_Islands_B3F),
    sizeof(HeadbuttFile_456_Seafoam_Islands_B4F),
    sizeof(HeadbuttFile_457_Cinnabar_Gym),
    sizeof(HeadbuttFile_458_Cinnabar_Gym),
    sizeof(HeadbuttFile_459_Mt_Silver_Cave_Upper_Mountainside),
    sizeof(HeadbuttFile_460_Mt_Silver_Cave_Lower_Mountainside),
    sizeof(HeadbuttFile_461_Mt_Silver_Cave_Expert_Belt_Chamber),
    sizeof(HeadbuttFile_462_Mt_Silver_Cave_Moltres_Chamber),
    sizeof(HeadbuttFile_463_Mt_Silver_Cave_2F),
    sizeof(HeadbuttFile_464_Mt_Silver_Cave_3F),
    sizeof(HeadbuttFile_465_Mt_Silver_Cave_Summit),
    sizeof(HeadbuttFile_466_Route_10_Pokmon_Centre),
    sizeof(HeadbuttFile_467_Power_Plant),
    sizeof(HeadbuttFile_468_Underground_Path),
    sizeof(HeadbuttFile_469_Route_5_Underground_Path_Entrance),
    sizeof(HeadbuttFile_470_Route_6_Underground_Path_Entrance),
    sizeof(HeadbuttFile_471_Pewter_Museum_of_Science),
    sizeof(HeadbuttFile_472_Pewter_City_House),
    sizeof(HeadbuttFile_473_Pewter_City_Gym),
    sizeof(HeadbuttFile_474_Pewter_City_Pokmart),
    sizeof(HeadbuttFile_475_Pewter_City_Pokmon_Centre),
    sizeof(HeadbuttFile_476_Pewter_City_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_477_Pewter_City_House),
    sizeof(HeadbuttFile_478_Fushsia_City_Pokmart),
    sizeof(HeadbuttFile_479_Pal_Park_Inside),
    sizeof(HeadbuttFile_480_Fushsia_City_Gym),
    sizeof(HeadbuttFile_481_Fushsia_City_House),
    sizeof(HeadbuttFile_482_Fushsia_City_Pokmon_Centre),
    sizeof(HeadbuttFile_483_Fushsia_City_House),
    sizeof(HeadbuttFile_484_Route_10_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_485_Fuchsia_City_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_486_Whirl_Islands_Lugias_Room),
    sizeof(HeadbuttFile_487_National_Park_Bug_Catching_Contest),
    sizeof(HeadbuttFile_488_National_Park_Bug_Catching_Contest_National_Dex),
    sizeof(HeadbuttFile_489_Power_Plant),
    sizeof(HeadbuttFile_490_Ruins_of_Alph_Underground_Hall),
    sizeof(HeadbuttFile_491_Ruins_of_Alph_Hall_Entrance),
    sizeof(HeadbuttFile_492_Ruins_of_Alph_Underground_Hall),
    sizeof(HeadbuttFile_493_Route_7_And_Saffron_City_Gate),
    sizeof(HeadbuttFile_494_Lavender_Town_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_495_Cerulean_City_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_496_Viridian_City_Gym),
    sizeof(HeadbuttFile_497_Viridian_City_House),
    sizeof(HeadbuttFile_498_Viridian_City_Trainer_House),
    sizeof(HeadbuttFile_499_Viridian_City_Trainer_House_2F),
    sizeof(HeadbuttFile_500_Viridian_City_Pokmart),
    sizeof(HeadbuttFile_501_Viridian_City_Pokmon_Centre),
    sizeof(HeadbuttFile_502_Viridian_City_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_503_Pallet_Town_Reds_House_1F),
    sizeof(HeadbuttFile_504_Pallet_Town_Blues_House_1F),
    sizeof(HeadbuttFile_505_Oaks_Lab),
    sizeof(HeadbuttFile_506_Pallet_Town_Reds_House_2F),
    sizeof(HeadbuttFile_507_Pallet_Town_Blues_House_2F),
    sizeof(HeadbuttFile_508_Cinnabar_Island_Pokmon_Centre),
    sizeof(HeadbuttFile_509_Cinnabar_Island_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_510_Route_28_House),
    sizeof(HeadbuttFile_511_Route_3_Pokmon_Centre),
    sizeof(HeadbuttFile_512_Route_3_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_513_Mt_Moon_Square),
    sizeof(HeadbuttFile_514_Mt_Silver_Pokmon_Centre),
    sizeof(HeadbuttFile_515_Mt_Silver_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_516_HIROBA),
    sizeof(HeadbuttFile_517_Route_5_House),
    sizeof(HeadbuttFile_518_Mt_Moon_Square_House),
    sizeof(HeadbuttFile_519_Goldenrod_City_Magnet_Train_Station),
    sizeof(HeadbuttFile_520_Saffron_City_Magnet_Train_Station),
    sizeof(HeadbuttFile_521_Sinjoh_Ruins_Outside),
    sizeof(HeadbuttFile_522_Sinjoh_Ruins_Mystri_Stage),
    sizeof(HeadbuttFile_523_Sinjoh_Ruins_Cabin),
    sizeof(HeadbuttFile_524_Embedded_Tower_Groudon),
    sizeof(HeadbuttFile_525_Embedded_Tower_Kyogre),
    sizeof(HeadbuttFile_526_Embedded_Tower_Rayquaza),
    sizeof(HeadbuttFile_527_Route_1_And_Viridian_City_Gate),
    sizeof(HeadbuttFile_528_Frontier_Access_Pokmon_Center),
    sizeof(HeadbuttFile_529_Frontier_Access_Pokmon_Center_Lower),
    sizeof(HeadbuttFile_530_Frontier_Access_Pokmart),
    sizeof(HeadbuttFile_531_Frontier_Access_House),
    sizeof(HeadbuttFile_532_Underground_Path),
    sizeof(HeadbuttFile_533_Route_12_House),
    sizeof(HeadbuttFile_534_Safari_Zone_Gate_Pokmon_Center),
    sizeof(HeadbuttFile_535_Safari_Zone_Gate_Pokmon_Centre_Lower),
    sizeof(HeadbuttFile_536_Goldenrod_City_Game_Corner),
    sizeof(HeadbuttFile_537_Celadon_City_Game_Corner),
    sizeof(HeadbuttFile_538_Mystery_Zone),
    sizeof(HeadbuttFile_539_Pokmon_League_Pokmon_Centre_Lower),
};

const HeadbuttArchiveData __data =
{
    .everywhere = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .nothing = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .unionRoom = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ug = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .direct2 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .direct4 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .bellchimeTrail = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .burnedTower1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphInside = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route1 = {
        .normalTreeCount = 20,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 2, 3 },
            { SPECIES_PINECO, 2, 3 },
            { SPECIES_PINECO, 2, 3 },
            { SPECIES_WURMPLE, 2, 3 },
            { SPECIES_WURMPLE, 2, 3 },
            { SPECIES_WURMPLE, 2, 3 },
            { SPECIES_HOOTHOOT, 5, 6 },
            { SPECIES_SPINARAK, 5, 6 },
            { SPECIES_SPINARAK, 5, 6 },
            { SPECIES_WURMPLE, 5, 6 },
            { SPECIES_WURMPLE, 5, 6 },
            { SPECIES_WURMPLE, 5, 6 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1033, 300 }, { 1033, 301 }, { 1034, 300 }, { 1034, 301 }, { -1, -1 }, { -1, -1 } },
            { { 1034, 307 }, { 1034, 308 }, { 1035, 308 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1037, 306 }, { 1037, 305 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1028, 312 }, { 1028, 311 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1040, 314 }, { 1041, 314 }, { 1040, 312 }, { 1041, 312 }, { -1, -1 }, { -1, -1 } },
            { { 1048, 291 }, { 1049, 291 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1050, 302 }, { 1050, 303 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1049, 315 }, { 1049, 316 }, { 1050, 316 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1046, 345 }, { 1047, 345 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1027, 340 }, { 1027, 341 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1036, 335 }, { 1037, 334 }, { 1037, 335 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1028, 327 }, { 1029, 327 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1030, 345 }, { 1031, 345 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 330 }, { 1052, 331 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 339 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1027, 322 }, { 1027, 323 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1049, 305 }, { 1049, 306 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1040, 329 }, { 1041, 329 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1037, 349 }, { 1037, 348 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1029, 292 }, { 1029, 293 }, { 1028, 293 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route2 = {
        .normalTreeCount = 15,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_HOOTHOOT, 5, 7 },
            { SPECIES_SPINARAK, 5, 7 },
            { SPECIES_SPINARAK, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1044, 197 }, { 1045, 197 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1027, 194 }, { 1027, 195 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1032, 203 }, { 1032, 202 }, { 1032, 201 }, { 1033, 201 }, { 1033, 203 }, { -1, -1 } },
            { { 1028, 207 }, { 1029, 207 }, { 1028, 209 }, { 1029, 209 }, { -1, -1 }, { -1, -1 } },
            { { 1032, 207 }, { 1033, 207 }, { 1032, 209 }, { 1033, 209 }, { -1, -1 }, { -1, -1 } },
            { { 1034, 221 }, { 1035, 221 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1040, 221 }, { 1041, 221 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1042, 211 }, { 1042, 212 }, { 1042, 213 }, { 1043, 211 }, { 1043, 212 }, { 1043, 213 } },
            { { 1052, 221 }, { 1053, 221 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 210 }, { 1054, 211 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 196 }, { 1054, 197 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1047, 194 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1043, 204 }, { 1043, 205 }, { 1042, 204 }, { 1042, 205 }, { -1, -1 }, { -1, -1 } },
            { { 1027, 200 }, { 1027, 201 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1042, 195 }, { 1042, 194 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route3 = {
        .normalTreeCount = 4,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 6, 7 },
            { SPECIES_PINECO, 6, 7 },
            { SPECIES_PINECO, 6, 7 },
            { SPECIES_WURMPLE, 6, 7 },
            { SPECIES_WURMPLE, 6, 7 },
            { SPECIES_WURMPLE, 6, 7 },
            { SPECIES_HOOTHOOT, 9, 10 },
            { SPECIES_HOOTHOOT, 9, 10 },
            { SPECIES_HOOTHOOT, 9, 10 },
            { SPECIES_WURMPLE, 9, 10 },
            { SPECIES_WURMPLE, 9, 10 },
            { SPECIES_WURMPLE, 9, 10 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1096, 98 }, { 1096, 99 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1105, 104 }, { 1105, 103 }, { 1104, 104 }, { 1104, 103 }, { -1, -1 }, { -1, -1 } },
            { { 1121, 117 }, { 1122, 117 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1113, 110 }, { 1113, 109 }, { 1114, 109 }, { 1114, 110 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route4 = {
        .normalTreeCount = 9,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 6, 7 },
            { SPECIES_PINECO, 6, 7 },
            { SPECIES_PINECO, 6, 7 },
            { SPECIES_WURMPLE, 6, 7 },
            { SPECIES_WURMPLE, 6, 7 },
            { SPECIES_WURMPLE, 6, 7 },
            { SPECIES_HOOTHOOT, 9, 10 },
            { SPECIES_HOOTHOOT, 9, 10 },
            { SPECIES_HOOTHOOT, 9, 10 },
            { SPECIES_WURMPLE, 9, 10 },
            { SPECIES_WURMPLE, 9, 10 },
            { SPECIES_WURMPLE, 9, 10 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1234, 115 }, { 1234, 114 }, { 1235, 115 }, { 1235, 114 }, { -1, -1 }, { -1, -1 } },
            { { 1244, 120 }, { 1245, 120 }, { 1245, 121 }, { 1245, 122 }, { 1244, 122 }, { -1, -1 } },
            { { 1264, 112 }, { 1265, 112 }, { 1264, 114 }, { 1265, 114 }, { -1, -1 }, { -1, -1 } },
            { { 1270, 110 }, { 1271, 110 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1266, 124 }, { 1267, 124 }, { 1267, 123 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1264, 120 }, { 1264, 119 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1255, 126 }, { 1255, 125 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1242, 124 }, { 1243, 124 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1256, 112 }, { 1257, 112 }, { 1256, 113 }, { 1256, 114 }, { 1257, 114 }, { -1, -1 } },
        },
    },

    .route5 = {
        .normalTreeCount = 4,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 11, 13 },
            { SPECIES_PINECO, 11, 13 },
            { SPECIES_PINECO, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1310, 185 }, { 1310, 184 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1296, 164 }, { 1296, 163 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1303, 161 }, { 1303, 162 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1304, 189 }, { 1305, 189 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route6 = {
        .normalTreeCount = 6,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 11, 13 },
            { SPECIES_PINECO, 11, 13 },
            { SPECIES_PINECO, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1308, 285 }, { 1308, 284 }, { 1308, 283 }, { 1309, 283 }, { -1, -1 }, { -1, -1 } },
            { { 1288, 283 }, { 1289, 283 }, { 1289, 284 }, { 1289, 285 }, { -1, -1 }, { -1, -1 } },
            { { 1287, 272 }, { 1287, 273 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1308, 259 }, { 1309, 259 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1294, 259 }, { 1295, 259 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1285, 260 }, { 1285, 261 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route7 = {
        .normalTreeCount = 8,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 15, 17 },
            { SPECIES_HERACROSS, 15, 17 },
            { SPECIES_HERACROSS, 15, 17 },
            { SPECIES_COMBEE, 15, 17 },
            { SPECIES_COMBEE, 15, 17 },
            { SPECIES_COMBEE, 15, 17 },
            { SPECIES_SPEAROW, 18, 20 },
            { SPECIES_SPEAROW, 18, 20 },
            { SPECIES_SPEAROW, 18, 20 },
            { SPECIES_COMBEE, 18, 20 },
            { SPECIES_COMBEE, 18, 20 },
            { SPECIES_COMBEE, 18, 20 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1272, 237 }, { 1273, 237 }, { 1272, 236 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1262, 228 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1257, 233 }, { 1258, 233 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1253, 237 }, { 1254, 237 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1259, 250 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1266, 251 }, { 1267, 251 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1272, 249 }, { 1272, 248 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1250, 243 }, { 1251, 243 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route8 = {
        .normalTreeCount = 5,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 16, 17 },
            { SPECIES_PINECO, 16, 17 },
            { SPECIES_PINECO, 16, 17 },
            { SPECIES_COMBEE, 16, 17 },
            { SPECIES_COMBEE, 16, 17 },
            { SPECIES_COMBEE, 16, 17 },
            { SPECIES_HOOTHOOT, 18, 19 },
            { SPECIES_HOOTHOOT, 18, 19 },
            { SPECIES_HOOTHOOT, 18, 19 },
            { SPECIES_COMBEE, 18, 19 },
            { SPECIES_COMBEE, 18, 19 },
            { SPECIES_COMBEE, 18, 19 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1376, 231 }, { 1376, 232 }, { 1377, 232 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1401, 234 }, { 1401, 233 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1397, 242 }, { 1397, 241 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1393, 233 }, { 1392, 233 }, { 1392, 234 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1392, 244 }, { 1392, 243 }, { 1393, 244 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route9 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route10 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route11 = {
        .normalTreeCount = 11,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 13, 14 },
            { SPECIES_HERACROSS, 13, 14 },
            { SPECIES_HERACROSS, 13, 14 },
            { SPECIES_COMBEE, 13, 14 },
            { SPECIES_COMBEE, 13, 14 },
            { SPECIES_COMBEE, 13, 14 },
            { SPECIES_SPEAROW, 15, 16 },
            { SPECIES_SPEAROW, 15, 16 },
            { SPECIES_SPEAROW, 15, 16 },
            { SPECIES_COMBEE, 15, 16 },
            { SPECIES_COMBEE, 15, 16 },
            { SPECIES_COMBEE, 15, 16 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1392, 291 }, { 1393, 291 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1378, 291 }, { 1379, 291 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1380, 291 }, { 1381, 291 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1382, 291 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1364, 291 }, { 1365, 291 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1370, 311 }, { 1371, 311 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1372, 311 }, { 1373, 311 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1374, 311 }, { 1375, 311 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1376, 311 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1379, 311 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1382, 311 }, { 1383, 311 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route12 = {
        .normalTreeCount = 10,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 22, 23 },
            { SPECIES_SPINARAK, 22, 23 },
            { SPECIES_SPINARAK, 22, 23 },
            { SPECIES_WURMPLE, 22, 23 },
            { SPECIES_WURMPLE, 22, 23 },
            { SPECIES_WURMPLE, 22, 23 },
            { SPECIES_HOOTHOOT, 24, 25 },
            { SPECIES_TANGELA, 24, 25 },
            { SPECIES_HOOTHOOT, 24, 25 },
            { SPECIES_WURMPLE, 24, 25 },
            { SPECIES_WURMPLE, 24, 25 },
            { SPECIES_WURMPLE, 24, 25 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1417, 281 }, { 1417, 280 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1417, 299 }, { 1417, 298 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1409, 334 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1409, 348 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1414, 337 }, { 1415, 337 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1414, 347 }, { 1415, 347 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1417, 311 }, { 1417, 310 }, { 1417, 309 }, { 1416, 309 }, { -1, -1 }, { -1, -1 } },
            { { 1417, 325 }, { 1417, 324 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1417, 327 }, { 1417, 326 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1417, 287 }, { 1417, 286 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route13 = {
        .normalTreeCount = 15,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 22, 23 },
            { SPECIES_SPINARAK, 22, 23 },
            { SPECIES_SPINARAK, 22, 23 },
            { SPECIES_WURMPLE, 22, 23 },
            { SPECIES_WURMPLE, 22, 23 },
            { SPECIES_WURMPLE, 22, 23 },
            { SPECIES_HOOTHOOT, 24, 25 },
            { SPECIES_TANGELA, 24, 25 },
            { SPECIES_HOOTHOOT, 24, 25 },
            { SPECIES_WURMPLE, 24, 25 },
            { SPECIES_WURMPLE, 24, 25 },
            { SPECIES_WURMPLE, 24, 25 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1346, 367 }, { 1347, 367 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1384, 367 }, { 1385, 367 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1366, 367 }, { 1367, 367 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1353, 381 }, { 1353, 380 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1365, 376 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1372, 376 }, { 1373, 376 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1387, 376 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1402, 367 }, { 1403, 367 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1429, 366 }, { 1428, 367 }, { 1428, 366 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1429, 360 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1414, 367 }, { 1415, 367 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1414, 373 }, { 1415, 373 }, { 1414, 372 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1420, 363 }, { 1421, 363 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1428, 373 }, { 1429, 373 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1376, 367 }, { 1377, 367 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route14 = {
        .normalTreeCount = 3,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 26, 27 },
            { SPECIES_SPINARAK, 26, 27 },
            { SPECIES_SPINARAK, 26, 27 },
            { SPECIES_WURMPLE, 26, 27 },
            { SPECIES_WURMPLE, 26, 27 },
            { SPECIES_WURMPLE, 26, 27 },
            { SPECIES_HOOTHOOT, 29, 30 },
            { SPECIES_TANGELA, 29, 30 },
            { SPECIES_HOOTHOOT, 29, 30 },
            { SPECIES_WURMPLE, 29, 30 },
            { SPECIES_WURMPLE, 29, 30 },
            { SPECIES_WURMPLE, 29, 30 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1353, 424 }, { 1353, 425 }, { 1353, 426 }, { 1352, 424 }, { -1, -1 }, { -1, -1 } },
            { { 1352, 406 }, { 1353, 406 }, { 1353, 405 }, { 1353, 404 }, { 1352, 404 }, { -1, -1 } },
            { { 1352, 388 }, { 1353, 388 }, { 1353, 389 }, { 1353, 390 }, { 1352, 390 }, { -1, -1 } },
        },
    },

    .route15 = {
        .normalTreeCount = 19,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 21, 23 },
            { SPECIES_SPINARAK, 21, 23 },
            { SPECIES_SPINARAK, 21, 23 },
            { SPECIES_WURMPLE, 21, 23 },
            { SPECIES_WURMPLE, 21, 23 },
            { SPECIES_WURMPLE, 21, 23 },
            { SPECIES_HOOTHOOT, 24, 26 },
            { SPECIES_TANGELA, 24, 26 },
            { SPECIES_HOOTHOOT, 24, 26 },
            { SPECIES_WURMPLE, 24, 26 },
            { SPECIES_WURMPLE, 24, 26 },
            { SPECIES_WURMPLE, 24, 26 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1248, 419 }, { 1249, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1262, 419 }, { 1263, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1274, 426 }, { 1275, 426 }, { 1274, 427 }, { 1274, 428 }, { -1, -1 }, { -1, -1 } },
            { { 1280, 430 }, { 1281, 430 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1282, 419 }, { 1283, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1296, 426 }, { 1297, 426 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1300, 419 }, { 1301, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1316, 419 }, { 1317, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1316, 426 }, { 1317, 426 }, { 1316, 427 }, { 1316, 428 }, { 1317, 428 }, { 1317, 427 } },
            { { 1329, 429 }, { 1329, 428 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1328, 419 }, { 1329, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1338, 419 }, { 1339, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1342, 425 }, { 1342, 424 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1309, 426 }, { 1310, 426 }, { 1309, 428 }, { 1310, 428 }, { -1, -1 }, { -1, -1 } },
            { { 1338, 429 }, { 1339, 429 }, { 1339, 428 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1286, 426 }, { 1287, 426 }, { 1287, 428 }, { 1287, 427 }, { -1, -1 }, { -1, -1 } },
            { { 1272, 419 }, { 1273, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1252, 425 }, { 1253, 425 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1290, 419 }, { 1291, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route16 = {
        .normalTreeCount = 2,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 26, 27 },
            { SPECIES_HERACROSS, 26, 27 },
            { SPECIES_HERACROSS, 26, 27 },
            { SPECIES_COMBEE, 26, 27 },
            { SPECIES_COMBEE, 26, 27 },
            { SPECIES_COMBEE, 26, 27 },
            { SPECIES_SPEAROW, 29, 30 },
            { SPECIES_SPEAROW, 29, 30 },
            { SPECIES_SPEAROW, 29, 30 },
            { SPECIES_COMBEE, 29, 30 },
            { SPECIES_COMBEE, 29, 30 },
            { SPECIES_COMBEE, 29, 30 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1141, 283 }, { 1142, 283 }, { 1141, 284 }, { 1141, 285 }, { -1, -1 }, { -1, -1 } },
            { { 1149, 279 }, { 1150, 279 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route17 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route18 = {
        .normalTreeCount = 3,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 26, 27 },
            { SPECIES_SPINARAK, 26, 27 },
            { SPECIES_SPINARAK, 26, 27 },
            { SPECIES_WURMPLE, 26, 27 },
            { SPECIES_WURMPLE, 26, 27 },
            { SPECIES_WURMPLE, 26, 27 },
            { SPECIES_HOOTHOOT, 29, 30 },
            { SPECIES_TANGELA, 29, 30 },
            { SPECIES_HOOTHOOT, 29, 30 },
            { SPECIES_WURMPLE, 29, 30 },
            { SPECIES_WURMPLE, 29, 30 },
            { SPECIES_WURMPLE, 29, 30 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1170, 435 }, { 1170, 434 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1178, 429 }, { 1179, 429 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1172, 429 }, { 1173, 429 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route22 = {
        .normalTreeCount = 7,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_HOOTHOOT, 5, 7 },
            { SPECIES_SPINARAK, 5, 7 },
            { SPECIES_SPINARAK, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 986, 269 }, { 986, 270 }, { 985, 269 }, { 985, 270 }, { -1, -1 }, { -1, -1 } },
            { { 986, 278 }, { 986, 277 }, { 985, 278 }, { 985, 277 }, { -1, -1 }, { -1, -1 } },
            { { 975, 269 }, { 976, 269 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 978, 279 }, { 978, 278 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 973, 272 }, { 973, 273 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 973, 281 }, { 973, 280 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 978, 273 }, { 978, 272 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route24 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route25 = {
        .normalTreeCount = 11,
        .specialTreeCount = 4,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 10, 11 },
            { SPECIES_PINECO, 10, 11 },
            { SPECIES_PINECO, 10, 11 },
            { SPECIES_COMBEE, 10, 11 },
            { SPECIES_COMBEE, 10, 11 },
            { SPECIES_COMBEE, 10, 11 },
            { SPECIES_HOOTHOOT, 13, 14 },
            { SPECIES_HOOTHOOT, 13, 14 },
            { SPECIES_HOOTHOOT, 13, 14 },
            { SPECIES_COMBEE, 13, 14 },
            { SPECIES_COMBEE, 13, 14 },
            { SPECIES_COMBEE, 13, 14 },
        },
        .specialSlots =
        {
            { SPECIES_COMBEE, 10, 14 },
            { SPECIES_COMBEE, 10, 14 },
            { SPECIES_SLAKOTH, 10, 14 },
            { SPECIES_SLAKOTH, 10, 14 },
            { SPECIES_SLAKOTH, 10, 14 },
            { SPECIES_SLAKOTH, 15, 18 },
        },
        .treeCoords =
        {
            { { 1388, 47 }, { 1388, 48 }, { 1388, 49 }, { 1387, 47 }, { -1, -1 }, { -1, -1 } },
            { { 1385, 43 }, { 1386, 43 }, { 1385, 42 }, { 1385, 41 }, { 1386, 41 }, { -1, -1 } },
            { { 1371, 37 }, { 1372, 37 }, { 1371, 36 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1368, 43 }, { 1369, 43 }, { 1368, 41 }, { 1369, 41 }, { 1369, 42 }, { 1368, 42 } },
            { { 1353, 45 }, { 1354, 45 }, { 1354, 44 }, { 1353, 43 }, { 1354, 43 }, { -1, -1 } },
            { { 1363, 45 }, { 1364, 45 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1370, 47 }, { 1370, 46 }, { 1371, 47 }, { 1371, 46 }, { -1, -1 }, { -1, -1 } },
            { { 1371, 41 }, { 1372, 41 }, { 1371, 40 }, { 1371, 39 }, { 1372, 39 }, { -1, -1 } },
            { { 1358, 49 }, { 1358, 48 }, { 1359, 49 }, { 1359, 48 }, { -1, -1 }, { -1, -1 } },
            { { 1377, 41 }, { 1377, 40 }, { 1378, 41 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1379, 47 }, { 1379, 48 }, { 1379, 49 }, { 1380, 47 }, { -1, -1 }, { -1, -1 } },
            { { 1315, 41 }, { 1316, 41 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1317, 41 }, { 1318, 41 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1319, 41 }, { 1320, 41 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1321, 41 }, { 1322, 41 }, { 1322, 40 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route26 = {
        .normalTreeCount = 17,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 28, 29 },
            { SPECIES_PINECO, 28, 29 },
            { SPECIES_PINECO, 28, 29 },
            { SPECIES_EXEGGCUTE, 28, 29 },
            { SPECIES_EXEGGCUTE, 28, 29 },
            { SPECIES_EXEGGCUTE, 28, 29 },
            { SPECIES_HOOTHOOT, 31, 32 },
            { SPECIES_SPINARAK, 31, 32 },
            { SPECIES_SPINARAK, 31, 32 },
            { SPECIES_EXEGGCUTE, 31, 32 },
            { SPECIES_EXEGGCUTE, 31, 32 },
            { SPECIES_EXEGGCUTE, 31, 32 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 926, 347 }, { 926, 346 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 926, 357 }, { 926, 356 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 926, 364 }, { 926, 365 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 921, 362 }, { 921, 361 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 924, 321 }, { 924, 320 }, { 924, 319 }, { 925, 319 }, { -1, -1 }, { -1, -1 } },
            { { 905, 390 }, { 906, 390 }, { 906, 389 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 922, 387 }, { 923, 387 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 920, 381 }, { 920, 380 }, { 919, 380 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 913, 383 }, { 914, 383 }, { 913, 381 }, { 914, 381 }, { -1, -1 }, { -1, -1 } },
            { { 918, 372 }, { 919, 372 }, { 919, 371 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 912, 374 }, { 913, 374 }, { 913, 373 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 918, 354 }, { 919, 354 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 912, 354 }, { 913, 354 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 914, 362 }, { 914, 361 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 919, 326 }, { 920, 326 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 917, 333 }, { 918, 333 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 925, 333 }, { 926, 333 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route27 = {
        .normalTreeCount = 17,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 28, 29 },
            { SPECIES_PINECO, 28, 29 },
            { SPECIES_PINECO, 28, 29 },
            { SPECIES_EXEGGCUTE, 28, 29 },
            { SPECIES_EXEGGCUTE, 28, 29 },
            { SPECIES_EXEGGCUTE, 28, 29 },
            { SPECIES_HOOTHOOT, 31, 32 },
            { SPECIES_SPINARAK, 31, 32 },
            { SPECIES_SPINARAK, 31, 32 },
            { SPECIES_EXEGGCUTE, 31, 32 },
            { SPECIES_EXEGGCUTE, 31, 32 },
            { SPECIES_EXEGGCUTE, 31, 32 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 788, 394 }, { 789, 394 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 782, 392 }, { 782, 391 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 782, 398 }, { 783, 398 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 765, 402 }, { 765, 401 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 756, 402 }, { 756, 401 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 748, 406 }, { 749, 406 }, { 748, 408 }, { 749, 408 }, { -1, -1 }, { -1, -1 } },
            { { 744, 400 }, { 745, 400 }, { 744, 399 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 736, 407 }, { 737, 407 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 708, 403 }, { 709, 403 }, { 709, 404 }, { 709, 405 }, { -1, -1 }, { -1, -1 } },
            { { 775, 397 }, { 775, 396 }, { 774, 397 }, { 774, 396 }, { -1, -1 }, { -1, -1 } },
            { { 790, 404 }, { 791, 404 }, { 790, 406 }, { 791, 406 }, { -1, -1 }, { -1, -1 } },
            { { 784, 410 }, { 784, 409 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 760, 408 }, { 761, 408 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 720, 391 }, { 721, 391 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 720, 409 }, { 720, 408 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 729, 404 }, { 729, 403 }, { 728, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 754, 408 }, { 755, 408 }, { 754, 406 }, { 755, 406 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route28 = {
        .normalTreeCount = 15,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HERACROSS, 39, 40 },
            { SPECIES_AIPOM, 39, 40 },
            { SPECIES_AIPOM, 39, 40 },
            { SPECIES_NATU, 39, 40 },
            { SPECIES_NATU, 39, 40 },
            { SPECIES_NATU, 39, 40 },
            { SPECIES_HERACROSS, 41, 43 },
            { SPECIES_AIPOM, 41, 43 },
            { SPECIES_AIPOM, 41, 43 },
            { SPECIES_NATU, 41, 43 },
            { SPECIES_NATU, 41, 43 },
            { SPECIES_NATU, 41, 43 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 834, 264 }, { 834, 265 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 839, 265 }, { 839, 264 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 843, 277 }, { 844, 277 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 886, 276 }, { 886, 275 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 882, 264 }, { 883, 264 }, { 883, 263 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 876, 270 }, { 877, 270 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 875, 262 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 865, 261 }, { 866, 261 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 857, 273 }, { 857, 274 }, { 856, 274 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 866, 278 }, { 866, 277 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 862, 280 }, { 863, 282 }, { 863, 281 }, { 863, 280 }, { -1, -1 }, { -1, -1 } },
            { { 851, 281 }, { 852, 281 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 843, 270 }, { 843, 269 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 833, 275 }, { 834, 275 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 848, 272 }, { 849, 272 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route29 = {
        .normalTreeCount = 35,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 2, 3 },
            { SPECIES_PINECO, 2, 3 },
            { SPECIES_PINECO, 2, 3 },
            { SPECIES_EXEGGCUTE, 2, 3 },
            { SPECIES_EXEGGCUTE, 2, 3 },
            { SPECIES_EXEGGCUTE, 2, 3 },
            { SPECIES_HOOTHOOT, 4, 5 },
            { SPECIES_SPINARAK, 4, 5 },
            { SPECIES_SPINARAK, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 588, 396 }, { 588, 397 }, { 589, 397 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 612, 395 }, { 612, 396 }, { 613, 395 }, { 613, 396 }, { -1, -1 }, { -1, -1 } },
            { { 616, 393 }, { 617, 393 }, { 616, 392 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 630, 395 }, { 631, 395 }, { 630, 394 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 648, 397 }, { 649, 397 }, { 648, 396 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 640, 397 }, { 640, 396 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 652, 411 }, { 653, 411 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 640, 410 }, { 641, 410 }, { 641, 409 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 605, 406 }, { 605, 405 }, { 604, 405 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 580, 393 }, { 581, 393 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 580, 403 }, { 581, 403 }, { 581, 405 }, { 581, 404 }, { -1, -1 }, { -1, -1 } },
            { { 588, 407 }, { 589, 407 }, { 588, 408 }, { 588, 409 }, { -1, -1 }, { -1, -1 } },
            { { 594, 389 }, { 595, 389 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 604, 389 }, { 605, 389 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 606, 399 }, { 607, 399 }, { 606, 400 }, { 606, 401 }, { 607, 401 }, { -1, -1 } },
            { { 658, 386 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 617, 407 }, { 618, 407 }, { 618, 406 }, { 618, 405 }, { 617, 405 }, { -1, -1 } },
            { { 622, 403 }, { 623, 403 }, { 623, 402 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 618, 413 }, { 619, 413 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 628, 413 }, { 629, 413 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 638, 413 }, { 639, 413 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 638, 389 }, { 639, 389 }, { 639, 388 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 640, 401 }, { 641, 401 }, { 640, 400 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 584, 413 }, { 585, 413 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 582, 393 }, { 583, 393 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 668, 395 }, { 669, 395 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 664, 407 }, { 665, 407 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 654, 397 }, { 655, 397 }, { 655, 396 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 658, 395 }, { 659, 395 }, { 659, 394 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 632, 401 }, { 633, 401 }, { 632, 399 }, { 633, 399 }, { -1, -1 }, { -1, -1 } },
            { { 596, 405 }, { 597, 405 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 606, 411 }, { 607, 411 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 622, 389 }, { 623, 389 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 658, 407 }, { 659, 407 }, { 658, 408 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 646, 385 }, { 647, 385 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route30 = {
        .normalTreeCount = 30,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 2, 3 },
            { SPECIES_PINECO, 2, 3 },
            { SPECIES_PINECO, 2, 3 },
            { SPECIES_EXEGGCUTE, 2, 3 },
            { SPECIES_EXEGGCUTE, 2, 3 },
            { SPECIES_EXEGGCUTE, 2, 3 },
            { SPECIES_HOOTHOOT, 4, 5 },
            { SPECIES_SPINARAK, 4, 5 },
            { SPECIES_SPINARAK, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 546, 297 }, { 547, 297 }, { 547, 296 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 571, 302 }, { 572, 302 }, { 571, 301 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 559, 294 }, { 560, 294 }, { 560, 293 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 557, 310 }, { 558, 310 }, { 558, 309 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 554, 305 }, { 554, 304 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 566, 375 }, { 566, 374 }, { 567, 375 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 560, 377 }, { 561, 377 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 566, 363 }, { 567, 363 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 546, 367 }, { 546, 366 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 558, 352 }, { 558, 351 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 565, 345 }, { 565, 344 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 546, 347 }, { 546, 346 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 559, 328 }, { 560, 328 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 569, 321 }, { 570, 321 }, { 569, 322 }, { 569, 323 }, { -1, -1 }, { -1, -1 } },
            { { 547, 321 }, { 547, 320 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 561, 318 }, { 561, 317 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 551, 346 }, { 551, 345 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 568, 356 }, { 568, 357 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 568, 354 }, { 568, 355 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 574, 378 }, { 574, 379 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 566, 312 }, { 566, 311 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 565, 382 }, { 565, 383 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 551, 352 }, { 551, 351 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 546, 311 }, { 547, 311 }, { 547, 312 }, { 547, 313 }, { -1, -1 }, { -1, -1 } },
            { { 554, 377 }, { 555, 377 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 561, 298 }, { 561, 297 }, { 561, 296 }, { 560, 297 }, { 560, 296 }, { -1, -1 } },
            { { 549, 291 }, { 549, 290 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 562, 367 }, { 562, 366 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 569, 333 }, { 569, 332 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 569, 308 }, { 570, 308 }, { 570, 309 }, { 570, 310 }, { 569, 310 }, { -1, -1 } },
        },
    },

    .route31 = {
        .normalTreeCount = 15,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_EXEGGCUTE, 3, 4 },
            { SPECIES_EXEGGCUTE, 3, 4 },
            { SPECIES_EXEGGCUTE, 3, 4 },
            { SPECIES_HOOTHOOT, 5, 6 },
            { SPECIES_SPINARAK, 5, 6 },
            { SPECIES_SPINARAK, 5, 6 },
            { SPECIES_EXEGGCUTE, 5, 6 },
            { SPECIES_EXEGGCUTE, 5, 6 },
            { SPECIES_EXEGGCUTE, 5, 6 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 566, 281 }, { 567, 281 }, { 566, 283 }, { 566, 282 }, { -1, -1 }, { -1, -1 } },
            { { 558, 267 }, { 559, 267 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 542, 283 }, { 543, 283 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 544, 259 }, { 545, 259 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 518, 265 }, { 519, 265 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 519, 276 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 534, 275 }, { 534, 276 }, { 535, 276 }, { 535, 275 }, { 535, 274 }, { 534, 274 } },
            { { 553, 279 }, { 554, 279 }, { 553, 278 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 549, 283 }, { 549, 282 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 559, 281 }, { 560, 281 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 568, 277 }, { 568, 276 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 548, 271 }, { 549, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 528, 281 }, { 529, 281 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 528, 265 }, { 529, 265 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 536, 281 }, { 537, 281 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route32 = {
        .normalTreeCount = 35,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 4, 5 },
            { SPECIES_PINECO, 4, 5 },
            { SPECIES_PINECO, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
            { SPECIES_HOOTHOOT, 6, 7 },
            { SPECIES_HOOTHOOT, 6, 7 },
            { SPECIES_HOOTHOOT, 6, 7 },
            { SPECIES_EXEGGCUTE, 6, 7 },
            { SPECIES_EXEGGCUTE, 6, 7 },
            { SPECIES_EXEGGCUTE, 6, 7 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 458, 289 }, { 459, 289 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 478, 291 }, { 478, 290 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 464, 299 }, { 465, 299 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 472, 302 }, { 473, 302 }, { 473, 303 }, { 473, 304 }, { -1, -1 }, { -1, -1 } },
            { { 478, 315 }, { 478, 314 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 474, 327 }, { 475, 327 }, { 474, 329 }, { 474, 328 }, { -1, -1 }, { -1, -1 } },
            { { 463, 318 }, { 464, 318 }, { 463, 320 }, { 464, 320 }, { 463, 319 }, { -1, -1 } },
            { { 464, 327 }, { 465, 327 }, { 465, 329 }, { 465, 328 }, { -1, -1 }, { -1, -1 } },
            { { 460, 331 }, { 461, 331 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 460, 311 }, { 461, 311 }, { 461, 313 }, { 461, 312 }, { -1, -1 }, { -1, -1 } },
            { { 454, 335 }, { 455, 335 }, { 455, 334 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 453, 353 }, { 453, 352 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 453, 351 }, { 453, 350 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 450, 359 }, { 451, 359 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 453, 375 }, { 454, 375 }, { 453, 377 }, { 453, 376 }, { -1, -1 }, { -1, -1 } },
            { { 456, 383 }, { 456, 382 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 449, 387 }, { 449, 386 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 465, 398 }, { 466, 398 }, { 466, 397 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 470, 402 }, { 471, 402 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 472, 409 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 476, 439 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 469, 430 }, { 469, 429 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 471, 440 }, { 472, 440 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 471, 421 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 462, 406 }, { 463, 406 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 455, 417 }, { 455, 416 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 450, 403 }, { 451, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 472, 394 }, { 472, 393 }, { 472, 392 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 458, 307 }, { 459, 307 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 449, 377 }, { 449, 376 }, { 449, 375 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 461, 323 }, { 461, 322 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 478, 316 }, { 478, 317 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 478, 319 }, { 478, 318 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 461, 419 }, { 462, 419 }, { 462, 420 }, { 462, 421 }, { -1, -1 }, { -1, -1 } },
            { { 455, 406 }, { 455, 407 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route33 = {
        .normalTreeCount = 4,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 3, 5 },
            { SPECIES_HERACROSS, 3, 5 },
            { SPECIES_HERACROSS, 3, 5 },
            { SPECIES_AIPOM, 3, 5 },
            { SPECIES_AIPOM, 3, 5 },
            { SPECIES_AIPOM, 3, 5 },
            { SPECIES_SPEAROW, 6, 8 },
            { SPECIES_SPEAROW, 6, 8 },
            { SPECIES_SPEAROW, 6, 8 },
            { SPECIES_AIPOM, 6, 8 },
            { SPECIES_AIPOM, 6, 8 },
            { SPECIES_AIPOM, 6, 8 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 450, 473 }, { 451, 473 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 460, 477 }, { 461, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 453, 465 }, { 453, 464 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 472, 477 }, { 473, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route34 = {
        .normalTreeCount = 15,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 9, 10 },
            { SPECIES_PINECO, 9, 10 },
            { SPECIES_PINECO, 9, 10 },
            { SPECIES_EXEGGCUTE, 9, 10 },
            { SPECIES_EXEGGCUTE, 9, 10 },
            { SPECIES_EXEGGCUTE, 9, 10 },
            { SPECIES_HOOTHOOT, 11, 12 },
            { SPECIES_SPINARAK, 11, 12 },
            { SPECIES_SPINARAK, 11, 12 },
            { SPECIES_EXEGGCUTE, 11, 12 },
            { SPECIES_EXEGGCUTE, 11, 12 },
            { SPECIES_EXEGGCUTE, 11, 12 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 355, 405 }, { 355, 404 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 355, 403 }, { 355, 402 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 355, 401 }, { 355, 400 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 372, 395 }, { 373, 395 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 365, 443 }, { 365, 442 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 382, 441 }, { 382, 440 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 382, 425 }, { 382, 424 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 378, 417 }, { 379, 417 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 370, 413 }, { 370, 412 }, { 370, 411 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 364, 401 }, { 364, 400 }, { 364, 399 }, { 365, 399 }, { -1, -1 }, { -1, -1 } },
            { { 374, 391 }, { 374, 390 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 372, 471 }, { 373, 471 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 361, 473 }, { 361, 472 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 368, 477 }, { 369, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 366, 465 }, { 367, 465 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route35 = {
        .normalTreeCount = 14,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 10, 11 },
            { SPECIES_PINECO, 10, 11 },
            { SPECIES_PINECO, 10, 11 },
            { SPECIES_EXEGGCUTE, 10, 11 },
            { SPECIES_EXEGGCUTE, 10, 11 },
            { SPECIES_EXEGGCUTE, 10, 11 },
            { SPECIES_HOOTHOOT, 13, 14 },
            { SPECIES_SPINARAK, 13, 14 },
            { SPECIES_SPINARAK, 13, 14 },
            { SPECIES_EXEGGCUTE, 13, 14 },
            { SPECIES_EXEGGCUTE, 13, 14 },
            { SPECIES_EXEGGCUTE, 13, 14 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 377, 258 }, { 377, 259 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 378, 266 }, { 379, 266 }, { 379, 264 }, { 379, 263 }, { 379, 262 }, { 378, 262 } },
            { { 370, 282 }, { 371, 282 }, { 370, 281 }, { 370, 280 }, { 371, 280 }, { -1, -1 } },
            { { 374, 276 }, { 375, 276 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 355, 276 }, { 355, 277 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 356, 295 }, { 357, 295 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 377, 319 }, { 377, 318 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 355, 315 }, { 355, 314 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 378, 313 }, { 379, 313 }, { 378, 311 }, { 379, 311 }, { -1, -1 }, { -1, -1 } },
            { { 366, 317 }, { 366, 316 }, { 366, 315 }, { 367, 315 }, { -1, -1 }, { -1, -1 } },
            { { 359, 301 }, { 359, 300 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 359, 269 }, { 359, 268 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 355, 287 }, { 355, 286 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 368, 265 }, { 369, 265 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route36 = {
        .normalTreeCount = 26,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 4, 5 },
            { SPECIES_PINECO, 4, 5 },
            { SPECIES_PINECO, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
            { SPECIES_HOOTHOOT, 6, 7 },
            { SPECIES_SPINARAK, 6, 7 },
            { SPECIES_SPINARAK, 6, 7 },
            { SPECIES_EXEGGCUTE, 6, 7 },
            { SPECIES_EXEGGCUTE, 6, 7 },
            { SPECIES_EXEGGCUTE, 6, 7 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 380, 231 }, { 381, 231 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 376, 241 }, { 377, 241 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 377, 253 }, { 377, 252 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 398, 245 }, { 398, 244 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 403, 234 }, { 404, 234 }, { 404, 233 }, { 404, 232 }, { 403, 232 }, { 403, 233 } },
            { { 392, 232 }, { 392, 231 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 414, 245 }, { 414, 244 }, { 414, 243 }, { 413, 243 }, { -1, -1 }, { -1, -1 } },
            { { 391, 251 }, { 392, 251 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 384, 245 }, { 384, 244 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 405, 253 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 422, 249 }, { 423, 249 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 428, 241 }, { 429, 241 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 402, 227 }, { 403, 227 }, { 402, 226 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 444, 249 }, { 445, 249 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 444, 241 }, { 445, 241 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 436, 241 }, { 437, 241 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 421, 243 }, { 421, 242 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 414, 251 }, { 415, 251 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 387, 243 }, { 388, 243 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 377, 249 }, { 377, 248 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 394, 238 }, { 395, 238 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 399, 251 }, { 400, 251 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 405, 247 }, { 406, 247 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 410, 241 }, { 411, 241 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 394, 228 }, { 395, 228 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 434, 252 }, { 434, 251 }, { 435, 251 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route37 = {
        .normalTreeCount = 13,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 12, 14 },
            { SPECIES_PINECO, 12, 14 },
            { SPECIES_PINECO, 12, 14 },
            { SPECIES_EXEGGCUTE, 12, 14 },
            { SPECIES_EXEGGCUTE, 12, 14 },
            { SPECIES_EXEGGCUTE, 12, 14 },
            { SPECIES_HOOTHOOT, 15, 17 },
            { SPECIES_SPINARAK, 15, 17 },
            { SPECIES_SPINARAK, 15, 17 },
            { SPECIES_EXEGGCUTE, 15, 17 },
            { SPECIES_EXEGGCUTE, 15, 17 },
            { SPECIES_EXEGGCUTE, 15, 17 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 390, 210 }, { 390, 209 }, { 390, 208 }, { 391, 208 }, { 391, 209 }, { 391, 210 } },
            { { 396, 217 }, { 397, 217 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 408, 215 }, { 408, 214 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 401, 207 }, { 401, 206 }, { 401, 205 }, { 400, 205 }, { -1, -1 }, { -1, -1 } },
            { { 400, 217 }, { 401, 217 }, { 401, 216 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 386, 213 }, { 387, 213 }, { 387, 214 }, { 387, 215 }, { -1, -1 }, { -1, -1 } },
            { { 385, 201 }, { 385, 200 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 396, 201 }, { 396, 200 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 400, 193 }, { 401, 193 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 406, 199 }, { 407, 199 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 388, 195 }, { 389, 195 }, { 389, 194 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 408, 207 }, { 408, 206 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 404, 221 }, { 405, 221 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route38 = {
        .normalTreeCount = 13,
        .specialTreeCount = 1,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 13, 14 },
            { SPECIES_PINECO, 13, 14 },
            { SPECIES_PINECO, 13, 14 },
            { SPECIES_EXEGGCUTE, 13, 14 },
            { SPECIES_EXEGGCUTE, 13, 14 },
            { SPECIES_EXEGGCUTE, 13, 14 },
            { SPECIES_HOOTHOOT, 15, 16 },
            { SPECIES_SPINARAK, 15, 16 },
            { SPECIES_SPINARAK, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
        },
        .specialSlots =
        {
            { SPECIES_EXEGGCUTE, 18, 25 },
            { SPECIES_EXEGGCUTE, 18, 25 },
            { SPECIES_BURMY, 18, 20 },
            { SPECIES_BURMY, 18, 20 },
            { SPECIES_BURMY, 18, 20 },
            { SPECIES_BURMY, 21, 25 },
        },
        .treeCoords =
        {
            { { 348, 164 }, { 349, 164 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 340, 165 }, { 341, 165 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 332, 161 }, { 333, 161 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 322, 161 }, { 323, 161 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 324, 163 }, { 325, 163 }, { 324, 164 }, { 324, 165 }, { -1, -1 }, { -1, -1 } },
            { { 330, 167 }, { 331, 167 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 342, 178 }, { 343, 178 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 336, 181 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 313, 174 }, { 313, 173 }, { 312, 174 }, { 312, 173 }, { -1, -1 }, { -1, -1 } },
            { { 307, 164 }, { 308, 164 }, { 307, 162 }, { 308, 162 }, { -1, -1 }, { -1, -1 } },
            { { 303, 170 }, { 303, 169 }, { 303, 168 }, { 304, 168 }, { -1, -1 }, { -1, -1 } },
            { { 305, 174 }, { 306, 174 }, { 306, 173 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 315, 164 }, { 316, 164 }, { 315, 162 }, { 316, 162 }, { -1, -1 }, { -1, -1 } },
            { { 302, 189 }, { 302, 190 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route39 = {
        .normalTreeCount = 3,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 14, 15 },
            { SPECIES_PINECO, 14, 15 },
            { SPECIES_PINECO, 14, 15 },
            { SPECIES_EXEGGCUTE, 14, 15 },
            { SPECIES_EXEGGCUTE, 14, 15 },
            { SPECIES_EXEGGCUTE, 14, 15 },
            { SPECIES_HOOTHOOT, 16, 17 },
            { SPECIES_SPINARAK, 16, 17 },
            { SPECIES_SPINARAK, 16, 17 },
            { SPECIES_EXEGGCUTE, 16, 17 },
            { SPECIES_EXEGGCUTE, 16, 17 },
            { SPECIES_EXEGGCUTE, 16, 17 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 269, 183 }, { 270, 183 }, { 270, 182 }, { 270, 181 }, { 269, 181 }, { -1, -1 } },
            { { 284, 193 }, { 285, 193 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 274, 216 }, { 275, 216 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route42 = {
        .normalTreeCount = 10,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 13, 14 },
            { SPECIES_HERACROSS, 13, 14 },
            { SPECIES_HERACROSS, 13, 14 },
            { SPECIES_AIPOM, 13, 14 },
            { SPECIES_AIPOM, 13, 14 },
            { SPECIES_AIPOM, 13, 14 },
            { SPECIES_SPEAROW, 15, 16 },
            { SPECIES_SPEAROW, 15, 16 },
            { SPECIES_SPEAROW, 15, 16 },
            { SPECIES_AIPOM, 15, 16 },
            { SPECIES_AIPOM, 15, 16 },
            { SPECIES_AIPOM, 15, 16 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 424, 173 }, { 425, 173 }, { 425, 172 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 426, 187 }, { 427, 187 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 448, 184 }, { 449, 184 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 470, 186 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 461, 186 }, { 461, 185 }, { 460, 185 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 442, 182 }, { 443, 182 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 432, 181 }, { 433, 181 }, { 432, 182 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 436, 177 }, { 437, 177 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 458, 181 }, { 458, 180 }, { 458, 179 }, { 459, 179 }, { 459, 180 }, { 459, 181 } },
            { { 469, 179 }, { 470, 179 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route43 = {
        .normalTreeCount = 17,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 15, 16 },
            { SPECIES_PINECO, 15, 16 },
            { SPECIES_PINECO, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
            { SPECIES_HOOTHOOT, 17, 18 },
            { SPECIES_VENONAT, 17, 18 },
            { SPECIES_HOOTHOOT, 17, 18 },
            { SPECIES_EXEGGCUTE, 17, 18 },
            { SPECIES_EXEGGCUTE, 17, 18 },
            { SPECIES_EXEGGCUTE, 17, 18 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 516, 99 }, { 516, 98 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 522, 107 }, { 523, 107 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 516, 127 }, { 517, 127 }, { 516, 126 }, { 517, 126 }, { -1, -1 }, { -1, -1 } },
            { { 528, 133 }, { 529, 133 }, { 528, 134 }, { 528, 135 }, { -1, -1 }, { -1, -1 } },
            { { 537, 103 }, { 538, 103 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 526, 103 }, { 527, 103 }, { 527, 102 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 530, 111 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 535, 125 }, { 535, 124 }, { 536, 125 }, { 536, 124 }, { -1, -1 }, { -1, -1 } },
            { { 528, 153 }, { 529, 153 }, { 528, 155 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 534, 151 }, { 535, 151 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 530, 129 }, { 530, 128 }, { 531, 129 }, { 531, 128 }, { -1, -1 }, { -1, -1 } },
            { { 512, 123 }, { 513, 123 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 514, 105 }, { 515, 105 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 517, 115 }, { 517, 114 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 518, 101 }, { 519, 101 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 539, 113 }, { 540, 113 }, { 539, 112 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 527, 122 }, { 527, 121 }, { 526, 122 }, { 526, 121 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route44 = {
        .normalTreeCount = 14,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 21, 22 },
            { SPECIES_HERACROSS, 21, 22 },
            { SPECIES_HERACROSS, 21, 22 },
            { SPECIES_AIPOM, 21, 22 },
            { SPECIES_AIPOM, 21, 22 },
            { SPECIES_AIPOM, 21, 22 },
            { SPECIES_SPEAROW, 23, 24 },
            { SPECIES_SPEAROW, 23, 24 },
            { SPECIES_SPEAROW, 23, 24 },
            { SPECIES_AIPOM, 23, 24 },
            { SPECIES_AIPOM, 23, 24 },
            { SPECIES_AIPOM, 23, 24 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 623, 171 }, { 624, 171 }, { 624, 172 }, { 624, 173 }, { 623, 173 }, { -1, -1 } },
            { { 614, 178 }, { 615, 178 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 606, 172 }, { 607, 172 }, { 607, 171 }, { 606, 171 }, { -1, -1 }, { -1, -1 } },
            { { 608, 164 }, { 608, 163 }, { 608, 162 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 604, 184 }, { 604, 183 }, { 603, 184 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 591, 184 }, { 592, 184 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 585, 176 }, { 586, 176 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 589, 172 }, { 590, 172 }, { 589, 170 }, { 590, 170 }, { -1, -1 }, { -1, -1 } },
            { { 586, 166 }, { 586, 164 }, { 585, 164 }, { 586, 165 }, { -1, -1 }, { -1, -1 } },
            { { 565, 170 }, { 566, 170 }, { 565, 171 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 550, 174 }, { 551, 174 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 557, 168 }, { 558, 168 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 597, 176 }, { 598, 176 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 567, 164 }, { 568, 164 }, { 568, 163 }, { 568, 162 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route45 = {
        .normalTreeCount = 3,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 23, 24 },
            { SPECIES_HERACROSS, 23, 24 },
            { SPECIES_HERACROSS, 23, 25 },
            { SPECIES_AIPOM, 23, 24 },
            { SPECIES_AIPOM, 23, 24 },
            { SPECIES_AIPOM, 23, 24 },
            { SPECIES_SPEAROW, 26, 27 },
            { SPECIES_SPEAROW, 26, 27 },
            { SPECIES_SPEAROW, 26, 27 },
            { SPECIES_AIPOM, 26, 27 },
            { SPECIES_AIPOM, 26, 27 },
            { SPECIES_AIPOM, 26, 27 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 648, 341 }, { 649, 341 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 662, 341 }, { 662, 340 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 657, 331 }, { 657, 330 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route46 = {
        .normalTreeCount = 10,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 2, 3 },
            { SPECIES_HERACROSS, 2, 3 },
            { SPECIES_HERACROSS, 2, 3 },
            { SPECIES_AIPOM, 2, 3 },
            { SPECIES_AIPOM, 2, 3 },
            { SPECIES_AIPOM, 2, 3 },
            { SPECIES_SPEAROW, 4, 5 },
            { SPECIES_SPEAROW, 4, 5 },
            { SPECIES_SPEAROW, 4, 5 },
            { SPECIES_AIPOM, 4, 5 },
            { SPECIES_AIPOM, 4, 5 },
            { SPECIES_AIPOM, 4, 5 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 614, 331 }, { 614, 330 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 628, 351 }, { 628, 352 }, { 629, 352 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 610, 351 }, { 610, 350 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 615, 376 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 630, 377 }, { 630, 376 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 623, 380 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 611, 361 }, { 611, 360 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 623, 335 }, { 624, 335 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 626, 331 }, { 626, 330 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 611, 368 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .palletTown = {
        .normalTreeCount = 17,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 2, 3 },
            { SPECIES_PINECO, 2, 3 },
            { SPECIES_PINECO, 2, 3 },
            { SPECIES_WURMPLE, 2, 3 },
            { SPECIES_WURMPLE, 2, 3 },
            { SPECIES_WURMPLE, 2, 3 },
            { SPECIES_HOOTHOOT, 5, 6 },
            { SPECIES_SPINARAK, 5, 6 },
            { SPECIES_SPINARAK, 5, 6 },
            { SPECIES_WURMPLE, 5, 6 },
            { SPECIES_WURMPLE, 5, 6 },
            { SPECIES_WURMPLE, 5, 6 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1028, 355 }, { 1029, 355 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1030, 355 }, { 1031, 355 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1034, 355 }, { 1035, 355 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1048, 355 }, { 1049, 355 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1030, 377 }, { 1031, 377 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1027, 375 }, { 1027, 374 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1027, 369 }, { 1027, 368 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1027, 365 }, { 1027, 364 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1027, 363 }, { 1027, 362 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1050, 355 }, { 1051, 355 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1048, 381 }, { 1049, 381 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1050, 381 }, { 1051, 381 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 377 }, { 1052, 376 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 371 }, { 1052, 370 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 367 }, { 1052, 366 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 365 }, { 1052, 364 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 361 }, { 1052, 369 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .viridianCity = {
        .normalTreeCount = 21,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_HOOTHOOT, 5, 7 },
            { SPECIES_SPINARAK, 5, 7 },
            { SPECIES_SPINARAK, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1032, 271 }, { 1033, 271 }, { 1033, 273 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1033, 274 }, { 1033, 275 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1028, 271 }, { 1029, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1014, 271 }, { 1015, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1013, 270 }, { 1013, 269 }, { 1012, 269 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1044, 271 }, { 1045, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 270 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 269 }, { 1054, 268 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 267 }, { 1053, 267 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1022, 271 }, { 1023, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1050, 263 }, { 1050, 262 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1050, 261 }, { 1050, 260 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1050, 251 }, { 1050, 250 }, { 1050, 249 }, { 1051, 249 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 248 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 243 }, { 1054, 242 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 247 }, { 1054, 246 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 239 }, { 1054, 238 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 231 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1048, 231 }, { 1049, 231 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1044, 231 }, { 1045, 231 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1040, 231 }, { 1041, 231 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .pewterCity = {
        .normalTreeCount = 21,
        .specialTreeCount = 2,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 3, 5 },
            { SPECIES_PINECO, 3, 5 },
            { SPECIES_PINECO, 3, 5 },
            { SPECIES_WURMPLE, 3, 5 },
            { SPECIES_WURMPLE, 3, 5 },
            { SPECIES_WURMPLE, 3, 5 },
            { SPECIES_HOOTHOOT, 7, 9 },
            { SPECIES_HOOTHOOT, 7, 9 },
            { SPECIES_HOOTHOOT, 7, 9 },
            { SPECIES_WURMPLE, 7, 9 },
            { SPECIES_WURMPLE, 7, 9 },
            { SPECIES_WURMPLE, 7, 9 },
        },
        .specialSlots =
        {
            { SPECIES_WURMPLE, 5, 9 },
            { SPECIES_WURMPLE, 5, 9 },
            { SPECIES_STARLY, 5, 9 },
            { SPECIES_STARLY, 5, 9 },
            { SPECIES_STARLY, 5, 9 },
            { SPECIES_STARLY, 8, 12 },
        },
        .treeCoords =
        {
            { { 1052, 117 }, { 1053, 117 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1060, 117 }, { 1061, 117 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1070, 117 }, { 1071, 117 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1040, 111 }, { 1041, 111 }, { 1040, 109 }, { 1041, 109 }, { -1, -1 }, { -1, -1 } },
            { { 1042, 111 }, { 1043, 111 }, { 1043, 110 }, { 1043, 109 }, { 1042, 109 }, { -1, -1 } },
            { { 1042, 99 }, { 1043, 99 }, { 1043, 101 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1044, 101 }, { 1045, 101 }, { 1044, 99 }, { 1045, 99 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 101 }, { 1053, 101 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1043, 93 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1051, 93 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1061, 87 }, { 1062, 87 }, { 1061, 85 }, { 1062, 85 }, { -1, -1 }, { -1, -1 } },
            { { 1065, 87 }, { 1066, 87 }, { 1065, 85 }, { 1066, 85 }, { -1, -1 }, { -1, -1 } },
            { { 1065, 81 }, { 1065, 80 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1066, 73 }, { 1067, 73 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1062, 73 }, { 1063, 73 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1060, 77 }, { 1061, 77 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1029, 75 }, { 1030, 75 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1031, 75 }, { 1032, 75 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1030, 85 }, { 1030, 84 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1030, 81 }, { 1030, 80 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1030, 79 }, { 1030, 78 }, { 1030, 77 }, { 1031, 77 }, { -1, -1 }, { -1, -1 } },
            { { 1037, 119 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1037, 120 }, { 1037, 121 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .ceruleanCity = {
        .normalTreeCount = 11,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 11, 13 },
            { SPECIES_PINECO, 11, 13 },
            { SPECIES_PINECO, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1295, 158 }, { 1295, 157 }, { 1296, 158 }, { 1296, 157 }, { -1, -1 }, { -1, -1 } },
            { { 1303, 158 }, { 1304, 158 }, { 1303, 157 }, { 1304, 157 }, { -1, -1 }, { -1, -1 } },
            { { 1303, 156 }, { 1304, 156 }, { 1303, 155 }, { 1304, 155 }, { 1303, 154 }, { 1304, 154 } },
            { { 1322, 134 }, { 1323, 134 }, { 1323, 133 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1323, 128 }, { 1323, 127 }, { 1322, 128 }, { 1322, 127 }, { -1, -1 }, { -1, -1 } },
            { { 1323, 126 }, { 1323, 125 }, { 1322, 126 }, { 1322, 125 }, { -1, -1 }, { -1, -1 } },
            { { 1323, 120 }, { 1323, 119 }, { 1323, 118 }, { 1322, 118 }, { -1, -1 }, { -1, -1 } },
            { { 1330, 112 }, { 1331, 112 }, { 1330, 111 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1332, 112 }, { 1333, 112 }, { 1333, 111 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1333, 110 }, { 1333, 109 }, { 1333, 108 }, { 1332, 108 }, { -1, -1 }, { -1, -1 } },
            { { 1330, 105 }, { 1331, 105 }, { 1330, 104 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .lavenderTown = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .vermilionCity = {
        .normalTreeCount = 10,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 11, 13 },
            { SPECIES_HERACROSS, 11, 13 },
            { SPECIES_HERACROSS, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_SPEAROW, 14, 16 },
            { SPECIES_SPEAROW, 14, 16 },
            { SPECIES_SPEAROW, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1341, 313 }, { 1342, 313 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1340, 315 }, { 1340, 314 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1340, 325 }, { 1341, 325 }, { 1341, 324 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1341, 323 }, { 1341, 322 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1338, 325 }, { 1339, 325 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1336, 325 }, { 1337, 325 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1336, 329 }, { 1337, 329 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1338, 328 }, { 1338, 327 }, { 1339, 327 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1340, 327 }, { 1341, 327 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1342, 327 }, { 1343, 327 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .celadonCity = {
        .normalTreeCount = 32,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 15, 17 },
            { SPECIES_HERACROSS, 15, 17 },
            { SPECIES_HERACROSS, 15, 17 },
            { SPECIES_COMBEE, 15, 17 },
            { SPECIES_COMBEE, 15, 17 },
            { SPECIES_COMBEE, 15, 17 },
            { SPECIES_SPEAROW, 18, 20 },
            { SPECIES_SPEAROW, 18, 20 },
            { SPECIES_SPEAROW, 18, 20 },
            { SPECIES_COMBEE, 18, 20 },
            { SPECIES_COMBEE, 18, 20 },
            { SPECIES_COMBEE, 18, 20 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1198, 225 }, { 1199, 225 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1200, 225 }, { 1201, 225 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1204, 225 }, { 1205, 225 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1210, 225 }, { 1211, 225 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1216, 225 }, { 1217, 225 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1220, 225 }, { 1221, 225 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1222, 225 }, { 1223, 225 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1234, 229 }, { 1235, 229 }, { 1234, 227 }, { 1235, 227 }, { -1, -1 }, { -1, -1 } },
            { { 1240, 237 }, { 1241, 237 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1188, 255 }, { 1189, 255 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1190, 255 }, { 1191, 255 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1193, 249 }, { 1193, 248 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1193, 247 }, { 1193, 246 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1193, 243 }, { 1193, 242 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1193, 269 }, { 1193, 268 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1198, 273 }, { 1199, 273 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1202, 273 }, { 1203, 273 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1210, 273 }, { 1211, 273 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1215, 271 }, { 1216, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1223, 271 }, { 1224, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1219, 267 }, { 1220, 267 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1221, 267 }, { 1222, 267 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1230, 271 }, { 1231, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1232, 271 }, { 1233, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1234, 271 }, { 1235, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1237, 269 }, { 1237, 268 }, { 1237, 267 }, { 1236, 267 }, { -1, -1 }, { -1, -1 } },
            { { 1240, 267 }, { 1240, 266 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1240, 265 }, { 1240, 264 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1240, 263 }, { 1240, 262 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1237, 257 }, { 1237, 256 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1238, 253 }, { 1239, 253 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1240, 255 }, { 1240, 254 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .fuchsiaCity = {
        .normalTreeCount = 18,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 21, 23 },
            { SPECIES_SPINARAK, 21, 23 },
            { SPECIES_SPINARAK, 21, 23 },
            { SPECIES_WURMPLE, 21, 23 },
            { SPECIES_WURMPLE, 21, 23 },
            { SPECIES_WURMPLE, 21, 23 },
            { SPECIES_HOOTHOOT, 26, 34 },
            { SPECIES_TANGELA, 26, 34 },
            { SPECIES_HOOTHOOT, 26, 34 },
            { SPECIES_WURMPLE, 26, 34 },
            { SPECIES_WURMPLE, 26, 34 },
            { SPECIES_WURMPLE, 26, 34 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1193, 417 }, { 1193, 416 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1193, 415 }, { 1193, 414 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1193, 409 }, { 1193, 408 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1193, 407 }, { 1193, 406 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1195, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1198, 403 }, { 1199, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1200, 403 }, { 1201, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1204, 403 }, { 1205, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1208, 403 }, { 1209, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1210, 403 }, { 1211, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1220, 403 }, { 1221, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1226, 403 }, { 1227, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1228, 403 }, { 1229, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1230, 403 }, { 1231, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1234, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1236, 405 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1236, 413 }, { 1236, 412 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1236, 409 }, { 1236, 408 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .cinnabarIsland = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .indigoPlateau = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .saffronCity = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .newBarkTown = {
        .normalTreeCount = 11,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 2, 3 },
            { SPECIES_PINECO, 2, 3 },
            { SPECIES_PINECO, 2, 3 },
            { SPECIES_EXEGGCUTE, 2, 3 },
            { SPECIES_EXEGGCUTE, 2, 3 },
            { SPECIES_EXEGGCUTE, 2, 3 },
            { SPECIES_HOOTHOOT, 4, 5 },
            { SPECIES_SPINARAK, 4, 5 },
            { SPECIES_SPINARAK, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 698, 403 }, { 698, 404 }, { 698, 405 }, { 699, 403 }, { -1, -1 }, { -1, -1 } },
            { { 698, 406 }, { 698, 407 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 698, 411 }, { 698, 412 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 692, 413 }, { 693, 413 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 690, 413 }, { 691, 413 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 686, 413 }, { 687, 413 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 680, 411 }, { 681, 411 }, { 681, 412 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 678, 411 }, { 679, 411 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 674, 407 }, { 675, 407 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 692, 390 }, { 692, 391 }, { 693, 391 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 676, 395 }, { 677, 395 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .elmsLab1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .elmsLab2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .momsHouse1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .momsHouse2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .newBarkTownHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ethanLyrasHouse1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cherrygroveCity = {
        .normalTreeCount = 7,
        .specialTreeCount = 4,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 2, 3 },
            { SPECIES_PINECO, 2, 3 },
            { SPECIES_PINECO, 2, 3 },
            { SPECIES_EXEGGCUTE, 2, 3 },
            { SPECIES_EXEGGCUTE, 2, 3 },
            { SPECIES_EXEGGCUTE, 2, 3 },
            { SPECIES_HOOTHOOT, 4, 5 },
            { SPECIES_SPINARAK, 4, 5 },
            { SPECIES_SPINARAK, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
            { SPECIES_EXEGGCUTE, 4, 5 },
        },
        .specialSlots =
        {
            { SPECIES_EXEGGCUTE, 18, 20 },
            { SPECIES_EXEGGCUTE, 18, 20 },
            { SPECIES_TAILLOW, 18, 20 },
            { SPECIES_TAILLOW, 18, 20 },
            { SPECIES_TAILLOW, 18, 20 },
            { SPECIES_TAILLOW, 21, 25 },
        },
        .treeCoords =
        {
            { { 570, 408 }, { 570, 409 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 564, 411 }, { 565, 411 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 562, 411 }, { 563, 411 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 552, 407 }, { 553, 407 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 548, 407 }, { 549, 407 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 560, 391 }, { 561, 391 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 552, 390 }, { 552, 391 }, { 553, 391 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 522, 387 }, { 523, 387 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 524, 387 }, { 525, 387 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 521, 389 }, { 521, 388 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 526, 389 }, { 526, 388 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .cherrygroveCityPokmart = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cherrygroveCityPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cherrygroveCityHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cherrygroveCityHouse071 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cherrygroveCityHouse072 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .violetCity = {
        .normalTreeCount = 27,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 2, 3 },
            { SPECIES_PINECO, 10, 10 },
            { SPECIES_PINECO, 10, 10 },
            { SPECIES_EXEGGCUTE, 10, 10 },
            { SPECIES_EXEGGCUTE, 10, 10 },
            { SPECIES_EXEGGCUTE, 10, 10 },
            { SPECIES_HOOTHOOT, 4, 5 },
            { SPECIES_HOOTHOOT, 10, 10 },
            { SPECIES_HOOTHOOT, 10, 10 },
            { SPECIES_EXEGGCUTE, 10, 10 },
            { SPECIES_EXEGGCUTE, 10, 10 },
            { SPECIES_EXEGGCUTE, 10, 10 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 510, 276 }, { 510, 277 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 506, 265 }, { 507, 265 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 504, 265 }, { 505, 265 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 500, 279 }, { 501, 279 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 496, 279 }, { 496, 280 }, { 496, 281 }, { 497, 279 }, { -1, -1 }, { -1, -1 } },
            { { 490, 283 }, { 491, 283 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 481, 281 }, { 481, 280 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 487, 273 }, { 487, 272 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 484, 265 }, { 485, 265 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 470, 272 }, { 470, 273 }, { 471, 273 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 468, 279 }, { 469, 279 }, { 469, 280 }, { 469, 281 }, { -1, -1 }, { -1, -1 } },
            { { 465, 274 }, { 465, 275 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 465, 272 }, { 465, 273 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 462, 265 }, { 463, 265 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 460, 261 }, { 461, 261 }, { 461, 262 }, { 461, 263 }, { -1, -1 }, { -1, -1 } },
            { { 468, 250 }, { 468, 251 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 468, 246 }, { 468, 247 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 466, 243 }, { 467, 243 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 504, 235 }, { 505, 235 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 506, 236 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 506, 237 }, { 506, 238 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 506, 239 }, { 506, 240 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 457, 230 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 457, 228 }, { 457, 229 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 458, 227 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 459, 227 }, { 460, 227 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 461, 227 }, { 462, 227 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .azaleaTown = {
        .normalTreeCount = 15,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 3, 5 },
            { SPECIES_HERACROSS, 3, 5 },
            { SPECIES_HERACROSS, 3, 5 },
            { SPECIES_AIPOM, 3, 5 },
            { SPECIES_AIPOM, 3, 5 },
            { SPECIES_AIPOM, 3, 5 },
            { SPECIES_SPEAROW, 6, 8 },
            { SPECIES_SPEAROW, 6, 8 },
            { SPECIES_SPEAROW, 6, 8 },
            { SPECIES_AIPOM, 6, 8 },
            { SPECIES_AIPOM, 6, 8 },
            { SPECIES_AIPOM, 6, 8 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 426, 465 }, { 427, 465 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 424, 459 }, { 425, 459 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 414, 455 }, { 415, 455 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 406, 455 }, { 407, 455 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 396, 449 }, { 397, 449 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 393, 452 }, { 393, 453 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 394, 467 }, { 395, 467 }, { 395, 468 }, { 395, 469 }, { -1, -1 }, { -1, -1 } },
            { { 395, 470 }, { 395, 471 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 395, 472 }, { 395, 473 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 398, 477 }, { 399, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 400, 477 }, { 401, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 402, 477 }, { 403, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 404, 477 }, { 405, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 410, 477 }, { 411, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 412, 477 }, { 413, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .cianwoodCity = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCity = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .olivineCity = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ecruteakCity = {
        .normalTreeCount = 18,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 12, 14 },
            { SPECIES_PINECO, 12, 14 },
            { SPECIES_PINECO, 12, 14 },
            { SPECIES_EXEGGCUTE, 12, 14 },
            { SPECIES_EXEGGCUTE, 12, 14 },
            { SPECIES_EXEGGCUTE, 12, 14 },
            { SPECIES_HOOTHOOT, 15, 17 },
            { SPECIES_SPINARAK, 15, 17 },
            { SPECIES_SPINARAK, 15, 17 },
            { SPECIES_EXEGGCUTE, 15, 17 },
            { SPECIES_EXEGGCUTE, 15, 17 },
            { SPECIES_EXEGGCUTE, 15, 17 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 414, 166 }, { 414, 167 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 414, 182 }, { 414, 183 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 414, 184 }, { 414, 185 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 410, 189 }, { 411, 189 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 404, 182 }, { 404, 183 }, { 405, 183 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 400, 189 }, { 401, 189 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 388, 164 }, { 389, 164 }, { 389, 163 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 380, 189 }, { 381, 189 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 374, 189 }, { 375, 189 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 369, 186 }, { 369, 187 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 369, 182 }, { 369, 183 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 369, 176 }, { 369, 177 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 369, 174 }, { 369, 175 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 364, 169 }, { 365, 169 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 360, 163 }, { 361, 163 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 362, 163 }, { 363, 163 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 369, 158 }, { 369, 159 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 378, 173 }, { 379, 173 }, { 379, 172 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .ecruteakCityPokmart = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ecruteakCityGym = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ecruteakPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .jubilifeCityUnused = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .barrierStationToBellTower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ecruteakCityHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ecruteakCityHouse085 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ecruteakDanceTheatre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mahoganyTown = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .lakeOfRage = {
        .normalTreeCount = 22,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_PINECO, 14, 16 },
            { SPECIES_PINECO, 14, 16 },
            { SPECIES_EXEGGCUTE, 14, 16 },
            { SPECIES_EXEGGCUTE, 14, 16 },
            { SPECIES_EXEGGCUTE, 14, 16 },
            { SPECIES_HOOTHOOT, 17, 19 },
            { SPECIES_VENONAT, 17, 19 },
            { SPECIES_HOOTHOOT, 17, 19 },
            { SPECIES_EXEGGCUTE, 17, 19 },
            { SPECIES_EXEGGCUTE, 17, 19 },
            { SPECIES_EXEGGCUTE, 17, 19 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 552, 52 }, { 552, 53 }, { 553, 53 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 552, 62 }, { 553, 62 }, { 553, 61 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 556, 63 }, { 556, 62 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 556, 61 }, { 556, 60 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 546, 68 }, { 547, 68 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 548, 68 }, { 549, 68 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 543, 80 }, { 543, 79 }, { 544, 79 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 523, 89 }, { 523, 88 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 512, 91 }, { 513, 91 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 508, 91 }, { 509, 91 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 506, 91 }, { 507, 91 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 500, 85 }, { 501, 85 }, { 501, 84 }, { 500, 83 }, { 501, 83 }, { -1, -1 } },
            { { 494, 81 }, { 495, 81 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 488, 75 }, { 489, 75 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 487, 74 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 487, 73 }, { 487, 72 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 488, 71 }, { 489, 71 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 504, 33 }, { 505, 33 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 506, 33 }, { 507, 33 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 538, 35 }, { 539, 35 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 540, 35 }, { 541, 35 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 542, 35 }, { 543, 35 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .blackthornCity = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtSilver = {
        .normalTreeCount = 5,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HERACROSS, 39, 40 },
            { SPECIES_AIPOM, 39, 40 },
            { SPECIES_AIPOM, 39, 40 },
            { SPECIES_NATU, 39, 40 },
            { SPECIES_NATU, 39, 40 },
            { SPECIES_NATU, 39, 40 },
            { SPECIES_HERACROSS, 41, 43 },
            { SPECIES_AIPOM, 41, 43 },
            { SPECIES_AIPOM, 41, 43 },
            { SPECIES_NATU, 41, 43 },
            { SPECIES_NATU, 41, 43 },
            { SPECIES_NATU, 41, 43 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 803, 277 }, { 804, 277 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 805, 277 }, { 806, 277 }, { 806, 276 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 811, 275 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 812, 275 }, { 813, 275 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 816, 262 }, { 816, 261 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route19 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route20 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route21 = {
        .normalTreeCount = 3,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 24, 26 },
            { SPECIES_SPINARAK, 24, 26 },
            { SPECIES_SPINARAK, 24, 26 },
            { SPECIES_WURMPLE, 24, 26 },
            { SPECIES_WURMPLE, 24, 26 },
            { SPECIES_WURMPLE, 24, 26 },
            { SPECIES_HOOTHOOT, 27, 30 },
            { SPECIES_TANGELA, 27, 30 },
            { SPECIES_HOOTHOOT, 27, 30 },
            { SPECIES_WURMPLE, 27, 30 },
            { SPECIES_WURMPLE, 27, 30 },
            { SPECIES_WURMPLE, 27, 30 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1046, 393 }, { 1046, 392 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1046, 391 }, { 1046, 390 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1046, 389 }, { 1046, 388 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route40 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route41 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .nationalPark = {
        .normalTreeCount = 22,
        .specialTreeCount = 5,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 10, 12 },
            { SPECIES_PINECO, 10, 12 },
            { SPECIES_PINECO, 10, 12 },
            { SPECIES_EXEGGCUTE, 10, 12 },
            { SPECIES_EXEGGCUTE, 10, 12 },
            { SPECIES_EXEGGCUTE, 10, 12 },
            { SPECIES_HOOTHOOT, 13, 15 },
            { SPECIES_SPINARAK, 13, 15 },
            { SPECIES_SPINARAK, 13, 15 },
            { SPECIES_EXEGGCUTE, 13, 15 },
            { SPECIES_EXEGGCUTE, 13, 15 },
            { SPECIES_EXEGGCUTE, 13, 15 },
        },
        .specialSlots =
        {
            { SPECIES_EXEGGCUTE, 18, 20 },
            { SPECIES_EXEGGCUTE, 18, 20 },
            { SPECIES_CHERUBI, 18, 20 },
            { SPECIES_CHERUBI, 18, 20 },
            { SPECIES_CHERUBI, 18, 20 },
            { SPECIES_CHERUBI, 21, 25 },
        },
        .treeCoords =
        {
            { { 34, 63 }, { 35, 63 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 32, 61 }, { 33, 61 }, { 33, 62 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 27, 56 }, { 27, 55 }, { 26, 55 }, { 26, 56 }, { 26, 57 }, { -1, -1 } },
            { { 23, 55 }, { 23, 54 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 23, 49 }, { 23, 48 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 23, 47 }, { 23, 46 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 23, 43 }, { 23, 42 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 23, 35 }, { 23, 34 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 23, 33 }, { 23, 32 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 27, 23 }, { 27, 22 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 30, 21 }, { 31, 21 }, { 31, 20 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 36, 15 }, { 37, 15 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 13 }, { 41, 13 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 46, 13 }, { 47, 13 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 48, 13 }, { 49, 13 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 54, 13 }, { 55, 13 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 56, 13 }, { 57, 13 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 60, 13 }, { 61, 13 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 64, 15 }, { 65, 15 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 68, 16 }, { 68, 17 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 68, 18 }, { 68, 19 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 76, 25 }, { 77, 25 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 80, 15 }, { 81, 15 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 80, 21 }, { 81, 21 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 82, 20 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 82, 19 }, { 82, 18 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 82, 17 }, { 82, 16 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route31AndVioletCityGate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route32AndRuinsOfAlphGate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .unionCave1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .azaleaTownAndIlexForestGate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityAndRoute35Gate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route35AndNationalParkGate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphAndRoute36Gate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .nationalParkAndRoute36Gate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .jubilifeCityUnused105 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .diglettsCave = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtMoon = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .rockTunnel1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .palPark = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .sproutTower1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .bellTower1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .radioTower1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphOutside = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .slowpokeWellEntrance = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .olivineLighthouse1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mahoganyTownSouvenirShop = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ilexForest = {
        .normalTreeCount = 56,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 3, 5 },
            { SPECIES_CATERPIE, 3, 5 },
            { SPECIES_CATERPIE, 3, 5 },
            { SPECIES_HOOTHOOT, 3, 5 },
            { SPECIES_METAPOD, 3, 5 },
            { SPECIES_METAPOD, 3, 5 },
            { SPECIES_HOOTHOOT, 6, 8 },
            { SPECIES_PINECO, 6, 8 },
            { SPECIES_PINECO, 6, 8 },
            { SPECIES_NOCTOWL, 6, 8 },
            { SPECIES_BUTTERFREE, 6, 8 },
            { SPECIES_BUTTERFREE, 6, 8 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 9, 81 }, { 9, 80 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 9, 79 }, { 9, 78 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 9, 77 }, { 9, 76 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 9, 71 }, { 9, 70 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 9, 69 }, { 9, 68 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 9, 67 }, { 9, 66 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 10, 63 }, { 11, 63 }, { 10, 61 }, { 11, 61 }, { -1, -1 }, { -1, -1 } },
            { { 12, 63 }, { 13, 63 }, { 12, 61 }, { 13, 61 }, { -1, -1 }, { -1, -1 } },
            { { 12, 75 }, { 13, 75 }, { 12, 74 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 16, 71 }, { 17, 71 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 18, 71 }, { 19, 71 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 22, 71 }, { 23, 71 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 21, 67 }, { 22, 67 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 37, 73 }, { 37, 72 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 42, 71 }, { 43, 71 }, { 42, 69 }, { 43, 69 }, { -1, -1 }, { -1, -1 } },
            { { 28, 51 }, { 29, 51 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 33, 61 }, { 33, 60 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 33, 59 }, { 33, 58 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 33, 55 }, { 33, 54 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 42, 63 }, { 43, 63 }, { 42, 62 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 59 }, { 40, 58 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 55 }, { 40, 54 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 50, 55 }, { 51, 55 }, { 50, 54 }, { 51, 54 }, { -1, -1 }, { -1, -1 } },
            { { 46, 49 }, { 47, 49 }, { 47, 48 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 48, 47 }, { 49, 47 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 9, 50 }, { 9, 51 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 10, 43 }, { 11, 43 }, { 11, 42 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 12, 39 }, { 13, 39 }, { 13, 38 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 22, 33 }, { 23, 33 }, { 23, 32 }, { 23, 31 }, { 22, 31 }, { -1, -1 } },
            { { 28, 33 }, { 29, 33 }, { 29, 34 }, { 29, 35 }, { -1, -1 }, { -1, -1 } },
            { { 30, 25 }, { 31, 25 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 34, 29 }, { 35, 29 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 36, 29 }, { 37, 29 }, { 37, 28 }, { 37, 27 }, { 36, 27 }, { -1, -1 } },
            { { 32, 19 }, { 33, 19 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 34, 19 }, { 35, 19 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 25 }, { 40, 24 }, { 40, 23 }, { 41, 23 }, { -1, -1 }, { -1, -1 } },
            { { 50, 25 }, { 51, 25 }, { 51, 26 }, { 51, 27 }, { -1, -1 }, { -1, -1 } },
            { { 54, 31 }, { 54, 30 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 42, 39 }, { 43, 39 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 48, 21 }, { 49, 21 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 16 }, { 41, 16 }, { 40, 15 }, { 41, 15 }, { 40, 14 }, { 41, 14 } },
            { { 32, 9 }, { 33, 9 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 36, 9 }, { 37, 9 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 38, 9 }, { 39, 9 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 24, 19 }, { 25, 19 }, { 24, 17 }, { 25, 17 }, { -1, -1 }, { -1, -1 } },
            { { 20, 21 }, { 21, 21 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 16, 21 }, { 17, 21 }, { 16, 20 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 9, 25 }, { 9, 24 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 9, 23 }, { 9, 22 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 34, 35 }, { 35, 35 }, { 34, 33 }, { 35, 33 }, { -1, -1 }, { -1, -1 } },
            { { 36, 35 }, { 37, 35 }, { 36, 33 }, { 37, 33 }, { -1, -1 }, { -1, -1 } },
            { { 38, 39 }, { 38, 38 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 38, 37 }, { 38, 36 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 50, 47 }, { 51, 47 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 52, 47 }, { 53, 47 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 46, 35 }, { 47, 35 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .goldenrodTunnel = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtMortar1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .icePath1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .whirlIslands = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtSilverCave = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .darkCaveRoute45Entrance = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .victoryRoad1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .dragonsDenEntrance = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .tohjoFalls = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route30House = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ecruteakCityUnionRoom = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ecruteakCityUnionRoom129 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ecruteakCityUnionRoom130 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ecruteakCityPokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ecruteakCityAndRoute42Gate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mahoganyTownHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route29AndRoute46Gate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .violetCityGym = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .azaleaGymEntrance = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityGym = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .olivineCityGym = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cianwoodCityGym = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mahoganyCityGym3rdRoom = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .blackthornCityGym = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route43Gate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mrPokemonsHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cherrygroveCityPokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ceruleanCave1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .seafoamIslands1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .viridianForest = {
        .normalTreeCount = 24,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 3, 4 },
            { SPECIES_SEEDOT, 3, 4 },
            { SPECIES_SEEDOT, 3, 4 },
            { SPECIES_SPINARAK, 3, 4 },
            { SPECIES_HOOTHOOT, 3, 4 },
            { SPECIES_SHROOMISH, 3, 4 },
            { SPECIES_HOOTHOOT, 5, 7 },
            { SPECIES_SEEDOT, 5, 7 },
            { SPECIES_SEEDOT, 5, 7 },
            { SPECIES_ARIADOS, 5, 7 },
            { SPECIES_NOCTOWL, 5, 7 },
            { SPECIES_SHROOMISH, 5, 7 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 51, 73 }, { 52, 73 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 49, 67 }, { 50, 67 }, { 50, 66 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 44, 62 }, { 44, 61 }, { 44, 60 }, { 43, 60 }, { 43, 61 }, { 43, 62 } },
            { { 40, 57 }, { 41, 57 }, { 41, 56 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 39, 58 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 39, 63 }, { 39, 62 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 36, 65 }, { 37, 65 }, { 36, 64 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 26, 65 }, { 27, 65 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 24, 65 }, { 25, 65 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 22, 63 }, { 22, 62 }, { 22, 61 }, { 23, 61 }, { -1, -1 }, { -1, -1 } },
            { { 24, 53 }, { 24, 52 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 10, 69 }, { 10, 68 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 48 }, { 40, 47 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 46 }, { 40, 45 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 44 }, { 40, 43 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 40 }, { 40, 39 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 45, 40 }, { 45, 39 }, { 45, 38 }, { 46, 40 }, { 46, 39 }, { 46, 38 } },
            { { 45, 46 }, { 45, 45 }, { 46, 46 }, { 46, 45 }, { -1, -1 }, { -1, -1 } },
            { { 37, 28 }, { 38, 28 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 29, 27 }, { 29, 26 }, { 28, 27 }, { 28, 26 }, { -1, -1 }, { -1, -1 } },
            { { 23, 27 }, { 23, 26 }, { 22, 27 }, { 22, 26 }, { -1, -1 }, { -1, -1 } },
            { { 23, 25 }, { 23, 24 }, { 22, 25 }, { 22, 24 }, { -1, -1 }, { -1, -1 } },
            { { 23, 23 }, { 23, 22 }, { 22, 23 }, { 22, 22 }, { -1, -1 }, { -1, -1 } },
            { { 17, 23 }, { 17, 22 }, { 16, 23 }, { 16, 22 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .powerPlantUnused = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route36AndVioletCityInbetween = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route35AndPokathlonDomeInbetween = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route47 = {
        .normalTreeCount = 10,
        .specialTreeCount = 4,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 15, 16 },
            { SPECIES_PINECO, 15, 16 },
            { SPECIES_PINECO, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
            { SPECIES_HOOTHOOT, 17, 18 },
            { SPECIES_SPINARAK, 17, 18 },
            { SPECIES_SPINARAK, 17, 18 },
            { SPECIES_EXEGGCUTE, 17, 18 },
            { SPECIES_EXEGGCUTE, 17, 18 },
            { SPECIES_EXEGGCUTE, 17, 18 },
        },
        .specialSlots =
        {
            { SPECIES_METAPOD, 25, 28 },
            { SPECIES_BUTTERFREE, 25, 28 },
            { SPECIES_BUTTERFREE, 25, 28 },
            { SPECIES_HERACROSS, 25, 28 },
            { SPECIES_HERACROSS, 25, 28 },
            { SPECIES_HERACROSS, 27, 30 },
        },
        .treeCoords =
        {
            { { 108, 383 }, { 109, 383 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 100, 361 }, { 100, 360 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 106, 373 }, { 106, 372 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 121, 366 }, { 121, 367 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 106, 383 }, { 107, 383 }, { 106, 382 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 106, 379 }, { 106, 378 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 104, 365 }, { 105, 365 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 102, 365 }, { 103, 365 }, { 102, 364 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 100, 359 }, { 100, 358 }, { 100, 357 }, { 101, 357 }, { -1, -1 }, { -1, -1 } },
            { { 104, 355 }, { 104, 354 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 82, 361 }, { 82, 360 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 82, 363 }, { 82, 362 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 121, 365 }, { 121, 364 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 132, 363 }, { 133, 363 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route48 = {
        .normalTreeCount = 6,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 15, 16 },
            { SPECIES_PINECO, 15, 16 },
            { SPECIES_PINECO, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
            { SPECIES_HOOTHOOT, 17, 18 },
            { SPECIES_SPINARAK, 17, 18 },
            { SPECIES_SPINARAK, 17, 18 },
            { SPECIES_EXEGGCUTE, 17, 18 },
            { SPECIES_EXEGGCUTE, 17, 18 },
            { SPECIES_EXEGGCUTE, 17, 18 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 82, 325 }, { 82, 324 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 75, 335 }, { 76, 335 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 82, 339 }, { 82, 338 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 106, 335 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 106, 347 }, { 106, 346 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 82, 335 }, { 82, 334 }, { 82, 333 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .unionCaveB1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .unionCaveB2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .sproutTower2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .sproutTower3F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .violetCityPokmart = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .violetCityPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .violetCityPokemonSchool = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .violetCityHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .jubilifeCityUnused161 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .violetCityHouse162 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .azaleaTownCharcoalKiln = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .azaleaTownKurtsHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .azaleaTownPokmart = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .azaleaTownPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .violetCityPokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .azaleaTownPokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route32PokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route32PokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ilexForestAndRoute34Gate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ecruteakAndRoute38Gate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZoneGateInside = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZoneGateOutside = {
        .normalTreeCount = 17,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_PINECO, 14, 16 },
            { SPECIES_PINECO, 14, 16 },
            { SPECIES_EXEGGCUTE, 14, 16 },
            { SPECIES_EXEGGCUTE, 14, 16 },
            { SPECIES_EXEGGCUTE, 14, 16 },
            { SPECIES_HOOTHOOT, 17, 19 },
            { SPECIES_SPINARAK, 17, 19 },
            { SPECIES_SPINARAK, 17, 19 },
            { SPECIES_EXEGGCUTE, 17, 19 },
            { SPECIES_EXEGGCUTE, 17, 19 },
            { SPECIES_EXEGGCUTE, 17, 19 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 77, 317 }, { 78, 317 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 76, 313 }, { 76, 312 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 76, 311 }, { 76, 310 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 76, 307 }, { 76, 306 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 76, 303 }, { 76, 302 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 76, 301 }, { 76, 300 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 76, 297 }, { 76, 296 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 77, 293 }, { 78, 293 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 79, 293 }, { 80, 293 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 97, 293 }, { 98, 293 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 99, 293 }, { 100, 293 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 99, 317 }, { 100, 317 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 101, 315 }, { 101, 314 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 101, 309 }, { 101, 308 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 101, 307 }, { 101, 306 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 101, 305 }, { 101, 304 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 101, 299 }, { 101, 298 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .jubilifeCityUnused175 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .darkCaveRoute31Entrance = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .slowpokeWell1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .victoryRoad2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .victoryRoad3F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .azaleaTownGym = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .slowpokeWellB1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityBikeStore = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityGameCornerJAP = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityFlowerShop = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodRadioTower2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodRadioTower3F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodRadioTower4F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodRadioTower5F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodRadioTowerObservationDeck = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodDepartmentStore1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodDepartmentStore2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodDepartmentStore3F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodDepartmentStore4F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodDepartmentStore5F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodDepartmentStore6F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityMagnetTrainStation = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityMagnetTrainStation198 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodTunnel199 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodDepartmentStoreBasement = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodTunnelB2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodTunnelWarehouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityHouse204 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityHouse205 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityNameRater = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .globalTerminal = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityHouse1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityHouse2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityHouse3F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityHouse4F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityHouse5F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityHouse6F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .moomooFarmHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .moomooFarmBarn = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .barrierStationToBellTowerAndBellchimeTrailPath = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .burnedTowerB1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphInside218 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityPokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .glitterLighthouse2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .glitterLighthouseExterior = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .glitterLighthouse3F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .glitterLighthouse4F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .glitterLighthouse5F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .glitterLighthouseLightRoom = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .olivineCityPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .olivineCityPokmart = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .olivineCityHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .olivineCityHouse229 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .olivineCityHouse230 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .olivineCityCaf = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cianwoodCityHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cianwoodCityPharmacy = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cianwoodCityHouse234 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cianwoodCityHouse235 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cianwoodCityPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .icePathB1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .icePathB2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .icePathB3F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .olivineCityHouse240 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cianwoodCityPokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .whirlIslandsB1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .whirlIslandsB2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .whirlIslandsB3F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route43Gate245 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mahoganyTownPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .teamRocketHQB1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .teamRocketHQB2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .teamRocketHQB3F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtMortar1F250 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtMortar2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtMortar1F252 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .dragonsDenMain = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .fightArea = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .fightArea255 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .fightArea256 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .fightArea257 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .fightArea258 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .fightArea259 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .fightArea260 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .fightArea261 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .fightArea262 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .battlePark = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .battlePark264 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .battleTower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .battleTower266 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .battleTower267 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .battleTower268 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .battleTower269 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .battleTower270 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .battleTower271 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .battleFrontier = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .battleFrontier273 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .battleTower274 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .battleFactory = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .battleHall = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .battleCastle = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .battleArcade = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cliffEdgeGate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokathlonDomeOutside = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokathlonDomeInside = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokathlonDomeInside282 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokathlonDomeInside283 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokathlonDomeInside284 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokathlonDomeInside285 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokathlonDomeInside286 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokathlonDomeInside287 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .dragonsDenShrine = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .blackthornCityHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .blackthornCityHouse290 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .blackthornCityHouse291 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .blackthornCityPokmart = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .blackthornCityPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .lakeOfRageHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .lakeOfRageHouse295 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route26House = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route26WeekSiblingsHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .tohjoFallsHiddenRoom = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokmonLeagueReceptionGate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokmonLeague = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokmonLeagueWillsRoom = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokmonLeagueKogasRoom = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokmonLeagueBrunosRoom = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokmonLeagueKarensRoom = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokmonLeagueLancesRoom = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokmonLeagueHallOfFame = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .sSAqua = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .sSAqua308 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .sSAqua309 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .sSAqua310 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .sSAqua311 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphEntrance = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphChamber1 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphEntrance314 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphUndergroundHall = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphEntrance316 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphChamber3 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphEntrance318 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphChamber4 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphChamber2 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphResearchCenter = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route27House = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphHallEntrance = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphEntrance2 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphEntrance2325 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphEntrance2326 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphEntrance2327 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .sSAqua328 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .sSAqua329 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .olivinePort = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokmonDaycare = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .bellTower2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .bellTower3F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .bellTower4F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .bellTower5F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .bellTower6F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .bellTower7F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .bellTower8F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .bellTower9F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .bellTowerRoof = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .bellTower10F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cliffCave = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZone = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZone344 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZone345 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZone346 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZone347 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZone348 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZone349 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZone350 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZone351 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZone352 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZone353 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZone354 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZone355 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZone356 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZone357 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .vermilionCityPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .vermilionCityPokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .vermilionCityPokmart = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .vermilionCityPokemonCentre361 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .vermilionCityPokemonFanClub = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .vermilionCityHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .vermilionCityHouse364 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .vermilionCityGym = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route40AndFrontierAccessGate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .olivineCityPokemonCenterLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mahoganyTownPokemonCenterLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .blackthornTownPokemonCenterLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCityDepartmentStore1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCityDepartmentStore2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCityDepartmentStore3F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCityDepartmentStore4F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCityDepartmentStore5F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCityDepartmentStore6F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCondominiums1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCondominiums2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCondominiums3F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCondominiums4F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCondominiums5F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonGameCornerMainJP = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonGameCornerPrizeBuildingJP = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCityHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ethanLyrasHouse2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cianwoodCityHouse385 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .vermilionPort = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .vermilionPort387 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route10388 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route6AndSaffronCityGate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route8AndSaffronCityGate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route5AndSaffronCityGate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route15AndFushsiaCityGate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCityPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCityPokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCityGym = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mahoganyTownGym2ndRoom = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mahoganyTownGym1stRoom = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .saffronCityFightingDojo = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .saffronCityHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .saffronCityMagnetTrainStation = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .saffronCityMagnetTrainStation401 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .saffronCityMagnetTrainStation402 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .rotomsRoom = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .saffronCityHouse404 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .saffronCityHouse405 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .saffronCityHouse406 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .saffronCityPokemonCenter = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .saffronCityPokemonCenterLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .saffronCityPokmart = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .saffronCityGym = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .frontierAccess = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .globalTerminal2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .globalTerminal3F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route2414 = {
        .normalTreeCount = 13,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_HOOTHOOT, 5, 7 },
            { SPECIES_SPINARAK, 5, 7 },
            { SPECIES_SPINARAK, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1032, 138 }, { 1032, 137 }, { 1033, 137 }, { 1033, 138 }, { 1033, 139 }, { -1, -1 } },
            { { 1054, 162 }, { 1054, 163 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1043, 137 }, { 1043, 139 }, { 1044, 138 }, { 1044, 139 }, { -1, -1 }, { -1, -1 } },
            { { 1040, 141 }, { 1041, 141 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1045, 158 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1047, 179 }, { 1047, 178 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 157 }, { 1054, 156 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 139 }, { 1054, 138 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 130 }, { 1054, 131 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 183 }, { 1054, 182 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1045, 164 }, { 1045, 165 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 167 }, { 1054, 166 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1047, 174 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route16House = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route20Unused = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route2417 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route2AndPewterCityGate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route2AndViridianCityGate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route2Gate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route16Gate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route16422 = {
        .normalTreeCount = 5,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 26, 27 },
            { SPECIES_HERACROSS, 26, 27 },
            { SPECIES_HERACROSS, 26, 27 },
            { SPECIES_COMBEE, 26, 27 },
            { SPECIES_COMBEE, 26, 27 },
            { SPECIES_COMBEE, 26, 27 },
            { SPECIES_SPEAROW, 29, 30 },
            { SPECIES_SPEAROW, 29, 30 },
            { SPECIES_SPEAROW, 29, 30 },
            { SPECIES_COMBEE, 29, 30 },
            { SPECIES_COMBEE, 29, 30 },
            { SPECIES_COMBEE, 29, 30 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1162, 263 }, { 1163, 263 }, { 1162, 262 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1167, 261 }, { 1167, 260 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1163, 280 }, { 1164, 280 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1174, 277 }, { 1174, 276 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1178, 261 }, { 1179, 261 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .route18Gate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route19AndFushsiaCityGate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route11AndRoute12Gate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ceruleanCityPokmart = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ceruleanCityGym = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ceruleanCityPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ceruleanCityHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ceruleanCityHouse430 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ceruleanCityHouse431 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ceruleanCityBikeShop = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .lavenderTownPokmart = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .lavenderTownPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .lavenderTownHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .lavenderTownHouse436 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .lavenderTownNameRater = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .houseOfMemories = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .lavenderTownRadioTower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .seaCottage = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityElevator = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCityElevator = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCityElevator443 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCityElevator444 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .saffronCityElevator = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .lighthouseElevator = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .radioTowerElevator = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtMoonEntrance = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtMoonSquare = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ceruleanCave2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ceruleanCaveB1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .rockTunnelB1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .seafoamIslandsB1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .seafoamIslandsB2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .seafoamIslandsB3F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .seafoamIslandsB4F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cinnabarGym = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cinnabarGym458 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtSilverCaveUpperMountainside = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtSilverCaveLowerMountainside = {
        .normalTreeCount = 3,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HERACROSS, 42, 44 },
            { SPECIES_AIPOM, 42, 44 },
            { SPECIES_AIPOM, 42, 44 },
            { SPECIES_NATU, 42, 44 },
            { SPECIES_NATU, 42, 44 },
            { SPECIES_NATU, 42, 44 },
            { SPECIES_HERACROSS, 45, 48 },
            { SPECIES_AIPOM, 45, 48 },
            { SPECIES_AIPOM, 45, 48 },
            { SPECIES_NATU, 45, 48 },
            { SPECIES_NATU, 45, 48 },
            { SPECIES_NATU, 45, 48 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 23, 32 }, { 24, 32 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 15, 47 }, { 16, 47 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 15, 13 }, { 16, 13 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .mtSilverCaveExpertBeltChamber = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtSilverCaveMoltresChamber = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtSilverCave2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtSilverCave3F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtSilverCaveSummit = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route10PokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .powerPlant = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .undergroundPath = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route5UndergroundPathEntrance = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route6UndergroundPathEntrance = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pewterMuseumOfScience = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pewterCityHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pewterCityGym = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pewterCityPokmart = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pewterCityPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pewterCityPokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pewterCityHouse477 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .fushsiaCityPokmart = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .palParkInside = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .fushsiaCityGym = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .fushsiaCityHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .fushsiaCityPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .fushsiaCityHouse483 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route10PokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .fuchsiaCityPokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .whirlIslandsLugiasRoom = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .nationalParkBugCatchingContest = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .nationalParkBugCatchingContestNationalDex = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .powerPlant489 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphUndergroundHall490 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphHallEntrance491 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ruinsOfAlphUndergroundHall492 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route7AndSaffronCityGate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .lavenderTownPokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .ceruleanCityPokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .viridianCityGym = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .viridianCityHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .viridianCityTrainerHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .viridianCityTrainerHouse2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .viridianCityPokmart = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .viridianCityPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .viridianCityPokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .palletTownRedsHouse1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .palletTownBluesHouse1F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .oaksLab = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .palletTownRedsHouse2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .palletTownBluesHouse2F = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cinnabarIslandPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .cinnabarIslandPokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route28House = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route3PokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route3PokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtMoonSquare513 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtSilverPokemonCentre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtSilverPokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .hiroba = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route5House = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mtMoonSquareHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityMagnetTrainStation519 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .saffronCityMagnetTrainStation520 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .sinjohRuinsOutside = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .sinjohRuinsMystriStage = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .sinjohRuinsCabin = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .embeddedTowerGroudon = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .embeddedTowerKyogre = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .embeddedTowerRayquaza = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route1AndViridianCityGate = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .frontierAccessPokemonCenter = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .frontierAccessPokemonCenterLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .frontierAccessPokmart = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .frontierAccessHouse = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .undergroundPath532 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .route12House = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZoneGatePokemonCenter = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .safariZoneGatePokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .goldenrodCityGameCorner = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .celadonCityGameCorner = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .mysteryZone = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .pokmonLeaguePokemonCentreLower = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

};
