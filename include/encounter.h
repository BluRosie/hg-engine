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
    u16 species_morning[NUM_ENCOUNTERS_LAND];
    u16 species_day[NUM_ENCOUNTERS_LAND];
    u16 species_night[NUM_ENCOUNTERS_LAND];
} LandEncounterData;

typedef struct PACKED EncounterDataSlot {
    u8 level_min;
    u8 level_max;
    u16 species;
} EncounterDataSlot;

typedef struct PACKED EncounterData {
    u8 rate_walk;
    u8 rate_surf;
    u8 rate_rock_smash;
    u8 rate_old_rod;
    u8 rate_good_rod;
    u8 rate_super_rod;
    u8 dummy[2];
    LandEncounterData land_slots;
    u16 hoenn_sound_species[NUM_ENCOUNTERS_SOUNDS];
    u16 sinnoh_sound_species[NUM_ENCOUNTERS_SOUNDS];
    EncounterDataSlot surf_slots[NUM_ENCOUNTERS_SURF];
    EncounterDataSlot rock_smash_slots[NUM_ENCOUNTERS_ROCKSMASH];
    EncounterDataSlot old_rod_slots[NUM_ENCOUNTERS_FISH];
    EncounterDataSlot good_rod_slots[NUM_ENCOUNTERS_FISH];
    EncounterDataSlot super_rod_slots[NUM_ENCOUNTERS_FISH];
    u16 land_swarm;
    u16 surf_swarm;
    u16 night_fish;
    u16 fish_swarm;
} EncounterData;

#endif
