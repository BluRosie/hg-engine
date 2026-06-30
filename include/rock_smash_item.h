#ifndef ROCK_SMASH_ITEM_H
#define ROCK_SMASH_ITEM_H

#include "battle.h"

#include "constants/ability.h"
#include "constants/item.h"

typedef struct {
    u16 odds;
    u16 table;
} RockSmashMapData;

typedef struct {
    int ability;
    s16 odds;
} RockSmashAbilityOdds;

typedef struct {
    int ability;
    s8 quality;
} RockSmashAbilityQuality;

typedef struct {
    BOOL followMonKnowsHM;
    int ability;
    u16 *itemFound; // TODO: bool16
    u16 *item;
    RockSmashMapData rockSmash;
    u32 unk14;
} RockSmashItemCheckWork;

enum {
    ROCK_SMASH_TABLE_DEFAULT = 0,
    ROCK_SMASH_TABLE_RUINS_OF_ALPH,
    ROCK_SMASH_TABLE_CLIFF_CAVE,
    NUM_ROCK_SMASH_TABLES
};

#define MAX_ROCK_SMASH_ITEMS_PER_TABLE 8

// TODO: Move this somewhere better (filesystem.h does not exist).
void LONG_CALL ReadWholeNarcMemberByIdPair(void *dest, u32 narc_id, s32 file_id);

// TODO: Move this somewhere better (overlay_01_022001E4.h does not exist).
int LONG_CALL ov01_02200540(LocalMapObject *obj, int a0, int a1);
BOOL LONG_CALL ov01_022003F4(int a0);

// TODO: Move this somewhere better (unk_020689C8.h does not exist).
void LONG_CALL sub_02068B48(int a0);

#endif // ROCK_SMASH_ITEM_H