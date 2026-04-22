#ifndef POKEHEARTGOLD_ROAMER_H
#define POKEHEARTGOLD_ROAMER_H

#include "constants/roamer.h"

#include "item.h"
#include "pokemon.h"
#include "save.h"
#include "sprite.h"
#include "task.h"
#include "types.h"

enum RoamerDataParam {
    ROAMER_DATA_MET_LOCATION = 1,
    ROAMER_DATA_IVS = 2,
    ROAMER_DATA_PERSONALITY = 3,
    ROAMER_DATA_SPECIES = 4,
    ROAMER_DATA_HP = 5,
    ROAMER_DATA_LEVEL = 6,
    ROAMER_DATA_STATUS = 7,
    ROAMER_DATA_ACTIVE = 8,
};

typedef struct Roamer { // todo: this appears to be used for swarms as well
    u32 met_location;
    u32 ivs;
    u32 personality;
    u16 species;
    u16 hp;
    u8 level;
    u8 status;
    u8 active;
    u8 dummy;
} Roamer;

/*
typedef struct RoamerSaveData { // todo: this appears to be used for swarms as well
    u32 rand[2];
    u32 playerLocationHistory[2];
    Roamer data[ROAMER_MAX];
    u8 locations[ROAMER_MAX];
    u8 outbreak;
    u8 repelSteps;
    u8 unk_66;
    u8 flutePlayed;
} RoamerSaveData;
*/

Roamer *LONG_CALL Roamers_GetRoamMonStats(void *roamerSave, u8 roamerId);
void LONG_CALL SetRoamerData(struct Roamer *roamer, int a1, int val);
void LONG_CALL ApplyRoamerLocation(void *roamerSave, u8 roamer_idx, u8 new_loc, u32 new_mapno);
u32 LONG_CALL PlayerLocationHistoryGetBack(void *roamerSave);
u8 LONG_CALL Roamer_GetLocation(void *roamerSave, u8 roamerId);

void LONG_CALL Save_CreateRoamerByID(SaveData *saveData, u8 idx);

#endif // POKEHEARTGOLD_ROAMER_H
