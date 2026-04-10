#include "../include/constants/maps.h"
#include "../include/constants/species.h"
#include "../include/types.h"

#define SWARM_MAP_COUNT 20

#define SWARM_GRASS   0
#define SWARM_SURFING 1
#define SWARM_FISHING 2

typedef struct ENC_DATA_LAND {
    u8 levels[12];
    u16 species_morn[12];
    u16 species_day[12];
    u16 species_nite[12];
} ENC_DATA_LAND;

typedef struct ENC_DATA_SLOT {
    u8 level_min;
    u8 level_max;
    u16 species;
} ENC_DATA_SLOT;

typedef struct ENC_DATA {
    u8 encounterRate_walking;
    u8 encounterRate_surfing;
    u8 encounterRate_rockSmash;
    u8 encounterRate_oldRod;
    u8 encounterRate_goodRod;
    u8 encounterRate_superRod;
    u8 dummy[2];
    ENC_DATA_LAND landSlots;
    u16 hoennSoundsSpecies[2];
    u16 sinnohSoundsSpecies[2];
    ENC_DATA_SLOT surfSlots[5];
    ENC_DATA_SLOT rockSmashSlots[2];
    ENC_DATA_SLOT oldRodSlots[5];
    ENC_DATA_SLOT goodRodSlots[5];
    ENC_DATA_SLOT superRodSlots[5];
    u16 swarmSpecies[4];
} ENC_DATA;

void LONG_CALL WildEncounters_ReadFromNarc(ENC_DATA *encData, u32 mapno);

const u16 sSwarmMapLUT[SWARM_MAP_COUNT][2] = {
    { MAP_R01, SWARM_GRASS },
    { MAP_R03, SWARM_GRASS },
    { MAP_R09, SWARM_GRASS },
    { MAP_R12, SWARM_FISHING },
    { MAP_R13, SWARM_GRASS },
    { MAP_W19, SWARM_SURFING },
    { MAP_R32, SWARM_FISHING },
    { MAP_R25, SWARM_GRASS },
    { MAP_R27, SWARM_SURFING },
    { MAP_R34, SWARM_GRASS },
    { MAP_R35, SWARM_GRASS },
    { MAP_R38, SWARM_GRASS },
    { MAP_R44, SWARM_FISHING },
    { MAP_R45, SWARM_GRASS },
    { MAP_R47, SWARM_GRASS },
    { MAP_D38R0101, SWARM_GRASS },
    { MAP_D42R0102, SWARM_GRASS },
    { MAP_D46R0101, SWARM_GRASS },
    { MAP_T06, SWARM_SURFING },
    { MAP_T22, SWARM_FISHING },
};

BOOL LONG_CALL sub_02097F6C(u32 rand, u16 mapno, u16 swarmValue)
{
    u8 offset = rand % SWARM_MAP_COUNT;

    if (mapno == sSwarmMapLUT[offset][0]) {
        if (swarmValue == sSwarmMapLUT[offset][1]) {
            return TRUE;
        }
    }

    return FALSE;
}

void LONG_CALL GetSwarmInfoFromRand(u32 rand, u16 *mapno, u16 *species)
{
    ENC_DATA encData;
    const u16 *swarmMap = sSwarmMapLUT[rand % SWARM_MAP_COUNT];

    WildEncounters_ReadFromNarc(&encData, swarmMap[0]);

    switch (swarmMap[1]) {
    case SWARM_SURFING:
        *species = encData.swarmSpecies[1];
        break;
    case SWARM_FISHING:
        *species = encData.swarmSpecies[3];
        break;
    default:
        *species = encData.swarmSpecies[0];
        break;
    }

    GF_ASSERT(*species != SPECIES_NONE);
    *mapno = swarmMap[0];
}
