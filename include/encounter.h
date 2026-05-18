#ifndef ENCOUNTER_H
#define ENCOUNTER_H

#include "types.h"

#define NUM_ENCOUNTERS_LAND      12
#define NUM_ENCOUNTERS_SOUNDS    2
#define NUM_ENCOUNTERS_SURF      5
#define NUM_ENCOUNTERS_ROCKSMASH 2
#define NUM_ENCOUNTERS_FISH      5
#define NUM_ENCOUNTERS_SWARM     4

typedef struct EncounterSlot {
    u32 species;
    u16 maxLevel;
    u16 minLevel;
} EncounterSlot;

typedef struct PACKED LandEncounterData {
    u8 levels[NUM_ENCOUNTERS_LAND];
    u16 species_morn[NUM_ENCOUNTERS_LAND];
    u16 species_day[NUM_ENCOUNTERS_LAND];
    u16 species_nite[NUM_ENCOUNTERS_LAND];
} LandEncounterData;

typedef struct PACKED EncounterDataSlot {
    u8 level_min;
    u8 level_max;
    u16 species;
} EncounterDataSlot;

typedef struct PACKED EncounterData {
    u8 encounterRate_walking;
    u8 encounterRate_surfing;
    u8 encounterRate_rockSmash;
    u8 encounterRate_oldRod;
    u8 encounterRate_goodRod;
    u8 encounterRate_superRod;
    u8 dummy[2];
    LandEncounterData landSlots;
    u16 hoennSoundsSpecies[NUM_ENCOUNTERS_SOUNDS];
    u16 sinnohSoundsSpecies[NUM_ENCOUNTERS_SOUNDS];
    EncounterDataSlot surfSlots[NUM_ENCOUNTERS_SURF];
    EncounterDataSlot rockSmashSlots[NUM_ENCOUNTERS_ROCKSMASH];
    EncounterDataSlot oldRodSlots[NUM_ENCOUNTERS_FISH];
    EncounterDataSlot goodRodSlots[NUM_ENCOUNTERS_FISH];
    EncounterDataSlot superRodSlots[NUM_ENCOUNTERS_FISH];
    u16 landSwarm;
    u16 surfSwarm;
    u16 nightFish;
    u16 fishSwarm;
} EncounterData;

#endif
