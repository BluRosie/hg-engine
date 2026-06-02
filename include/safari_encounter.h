#ifndef SAFARI_ENCOUNTER_H
#define SAFARI_ENCOUNTER_H

#include "types.h"

#define SAFARI_ZONE_AREA_PLAINS      0
#define SAFARI_ZONE_AREA_MEADOW      1
#define SAFARI_ZONE_AREA_SAVANNAH    2
#define SAFARI_ZONE_AREA_PEAK        3
#define SAFARI_ZONE_AREA_ROCKY_BEACH 4
#define SAFARI_ZONE_AREA_WETLAND     5
#define SAFARI_ZONE_AREA_FOREST      6
#define SAFARI_ZONE_AREA_SWAMP       7
#define SAFARI_ZONE_AREA_MARSHLAND   8
#define SAFARI_ZONE_AREA_WASTELAND   9
#define SAFARI_ZONE_AREA_MOUNTAIN    10
#define SAFARI_ZONE_AREA_DESERT      11
#define NUM_SAFARI_ZONE_AREAS        12

#define SAFARI_ZONE_OBJECT_TYPE_NONE   0
#define SAFARI_ZONE_OBJECT_TYPE_PLAINS 1
#define SAFARI_ZONE_OBJECT_TYPE_FOREST 2
#define SAFARI_ZONE_OBJECT_TYPE_PEAK   3
#define SAFARI_ZONE_OBJECT_TYPE_WATER  4

#define SAFARI_ENCOUNTER_SLOTS_LAND      0
#define SAFARI_ENCOUNTER_SLOTS_SURF      1
#define SAFARI_ENCOUNTER_SLOTS_OLD_ROD   2
#define SAFARI_ENCOUNTER_SLOTS_GOOD_ROD  3
#define SAFARI_ENCOUNTER_SLOTS_SUPER_ROD 4
#define NUM_SAFARI_ENCOUNTER_TYPES       5

#define NUM_ENCOUNTERS_SAFARI   10
#define NUM_SAFARI_TIMES_OF_DAY 3

#define NUM_SAFARI_LAND_BONUS_ENCOUNTERS      10
#define NUM_SAFARI_SURF_BONUS_ENCOUNTERS      3
#define NUM_SAFARI_OLD_ROD_BONUS_ENCOUNTERS   2
#define NUM_SAFARI_GOOD_ROD_BONUS_ENCOUNTERS  2
#define NUM_SAFARI_SUPER_ROD_BONUS_ENCOUNTERS 2

// standard safari bonus counts
#define SAFARI_BONUS_COUNTS                                                                                                                                                                           \
    {                                                                                                                                                                                                 \
        NUM_SAFARI_LAND_BONUS_ENCOUNTERS, NUM_SAFARI_SURF_BONUS_ENCOUNTERS, NUM_SAFARI_OLD_ROD_BONUS_ENCOUNTERS, NUM_SAFARI_GOOD_ROD_BONUS_ENCOUNTERS, NUM_SAFARI_SUPER_ROD_BONUS_ENCOUNTERS, 0, 0, 0 \
    }

typedef struct SafariZoneAreaEncounterSlot {
    u16 species;
    u16 level;
} SafariZoneAreaEncounterSlot;

typedef struct SafariZoneObjectRequirement {
    u8 type;
    u8 count;
} SafariZoneObjectRequirement;

typedef struct SafariZoneAreaBonusSlotUnlockConditions {
    SafariZoneObjectRequirement objects[2];
} SafariZoneAreaBonusSlotUnlockConditions;

typedef struct SafariZoneLandEncounterData {
    SafariZoneAreaEncounterSlot speciesMorning[NUM_ENCOUNTERS_SAFARI];
    SafariZoneAreaEncounterSlot speciesDay[NUM_ENCOUNTERS_SAFARI];
    SafariZoneAreaEncounterSlot speciesNight[NUM_ENCOUNTERS_SAFARI];
    SafariZoneAreaEncounterSlot bonusSpeciesMorning[NUM_SAFARI_LAND_BONUS_ENCOUNTERS];
    SafariZoneAreaEncounterSlot bonusSpeciesDay[NUM_SAFARI_LAND_BONUS_ENCOUNTERS];
    SafariZoneAreaEncounterSlot bonusSpeciesNight[NUM_SAFARI_LAND_BONUS_ENCOUNTERS];
    SafariZoneAreaBonusSlotUnlockConditions bonusUnlockConditions[NUM_SAFARI_LAND_BONUS_ENCOUNTERS];
} SafariZoneLandEncounterData;

typedef struct SafariZoneSurfEncounterData {
    SafariZoneAreaEncounterSlot speciesMorning[NUM_ENCOUNTERS_SAFARI];
    SafariZoneAreaEncounterSlot speciesDay[NUM_ENCOUNTERS_SAFARI];
    SafariZoneAreaEncounterSlot speciesNight[NUM_ENCOUNTERS_SAFARI];
    SafariZoneAreaEncounterSlot bonusSpeciesMorning[NUM_SAFARI_SURF_BONUS_ENCOUNTERS];
    SafariZoneAreaEncounterSlot bonusSpeciesDay[NUM_SAFARI_SURF_BONUS_ENCOUNTERS];
    SafariZoneAreaEncounterSlot bonusSpeciesNight[NUM_SAFARI_SURF_BONUS_ENCOUNTERS];
    SafariZoneAreaBonusSlotUnlockConditions bonusUnlockConditions[NUM_SAFARI_SURF_BONUS_ENCOUNTERS];
} SafariZoneSurfEncounterData;

typedef struct SafariZoneOldRodEncounterData {
    SafariZoneAreaEncounterSlot speciesMorning[NUM_ENCOUNTERS_SAFARI];
    SafariZoneAreaEncounterSlot speciesDay[NUM_ENCOUNTERS_SAFARI];
    SafariZoneAreaEncounterSlot speciesNight[NUM_ENCOUNTERS_SAFARI];
    SafariZoneAreaEncounterSlot bonusSpeciesMorning[NUM_SAFARI_OLD_ROD_BONUS_ENCOUNTERS];
    SafariZoneAreaEncounterSlot bonusSpeciesDay[NUM_SAFARI_OLD_ROD_BONUS_ENCOUNTERS];
    SafariZoneAreaEncounterSlot bonusSpeciesNight[NUM_SAFARI_OLD_ROD_BONUS_ENCOUNTERS];
    SafariZoneAreaBonusSlotUnlockConditions bonusUnlockConditions[NUM_SAFARI_OLD_ROD_BONUS_ENCOUNTERS];
} SafariZoneOldRodEncounterData;

typedef struct SafariZoneGoodRodEncounterData {
    SafariZoneAreaEncounterSlot speciesMorning[NUM_ENCOUNTERS_SAFARI];
    SafariZoneAreaEncounterSlot speciesDay[NUM_ENCOUNTERS_SAFARI];
    SafariZoneAreaEncounterSlot speciesNight[NUM_ENCOUNTERS_SAFARI];
    SafariZoneAreaEncounterSlot bonusSpeciesMorning[NUM_SAFARI_GOOD_ROD_BONUS_ENCOUNTERS];
    SafariZoneAreaEncounterSlot bonusSpeciesDay[NUM_SAFARI_GOOD_ROD_BONUS_ENCOUNTERS];
    SafariZoneAreaEncounterSlot bonusSpeciesNight[NUM_SAFARI_GOOD_ROD_BONUS_ENCOUNTERS];
    SafariZoneAreaBonusSlotUnlockConditions bonusUnlockConditions[NUM_SAFARI_GOOD_ROD_BONUS_ENCOUNTERS];
} SafariZoneGoodRodEncounterData;

typedef struct SafariZoneSuperRodEncounterData {
    SafariZoneAreaEncounterSlot speciesMorning[NUM_ENCOUNTERS_SAFARI];
    SafariZoneAreaEncounterSlot speciesDay[NUM_ENCOUNTERS_SAFARI];
    SafariZoneAreaEncounterSlot speciesNight[NUM_ENCOUNTERS_SAFARI];
    SafariZoneAreaEncounterSlot bonusSpeciesMorning[NUM_SAFARI_SUPER_ROD_BONUS_ENCOUNTERS];
    SafariZoneAreaEncounterSlot bonusSpeciesDay[NUM_SAFARI_SUPER_ROD_BONUS_ENCOUNTERS];
    SafariZoneAreaEncounterSlot bonusSpeciesNight[NUM_SAFARI_SUPER_ROD_BONUS_ENCOUNTERS];
    SafariZoneAreaBonusSlotUnlockConditions bonusUnlockConditions[NUM_SAFARI_SUPER_ROD_BONUS_ENCOUNTERS];
} SafariZoneSuperRodEncounterData;

typedef struct SafariZoneAreaEncounterFile {
    u8 bonusCounts[8];
    SafariZoneLandEncounterData land;
    SafariZoneSurfEncounterData surf;
    SafariZoneOldRodEncounterData oldRod;
    SafariZoneGoodRodEncounterData goodRod;
    SafariZoneSuperRodEncounterData superRod;
} SafariZoneAreaEncounterFile;

#endif
