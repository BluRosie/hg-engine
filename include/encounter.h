#ifndef ENCOUNTER_H
#define ENCOUNTER_H

#include "types.h"

#define NUM_ENCOUNTERS_LAND      12
#define NUM_ENCOUNTERS_SOUNDS    2
#define NUM_ENCOUNTERS_SURF      5
#define NUM_ENCOUNTERS_ROCKSMASH 2
#define NUM_ENCOUNTERS_FISH      5
#define NUM_ENCOUNTERS_SWARM     4

typedef struct PACKED LandEncounterData {
    u8 levels[NUM_ENCOUNTERS_LAND];
    u16 speciesMorning[NUM_ENCOUNTERS_LAND];
    u16 speciesDay[NUM_ENCOUNTERS_LAND];
    u16 speciesNight[NUM_ENCOUNTERS_LAND];
} LandEncounterData;

typedef struct PACKED EncounterDataSlot {
    u8 levelMin;
    u8 levelMax;
    u16 species;
} EncounterDataSlot;

typedef struct PACKED EncounterData {
    u8 rateWalk;
    u8 rateSurf;
    u8 rateRockSmash;
    u8 rateOldRod;
    u8 rateGoodRod;
    u8 rateSuperRod;
    u8 dummy[2];
    LandEncounterData landSlots;
    u16 hoennSoundSpecies[NUM_ENCOUNTERS_SOUNDS];
    u16 sinnohSoundSpecies[NUM_ENCOUNTERS_SOUNDS];
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
