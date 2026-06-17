#ifndef ROCK_SMASH_ITEM_H
#define ROCK_SMASH_ITEM_H

#include "battle.h"

enum {
    ROCK_SMASH_TABLE_DEFAULT = 0,
    ROCK_SMASH_TABLE_RUINS_OF_ALPH,
    ROCK_SMASH_TABLE_CLIFF_CAVE,
    NUM_ROCK_SMASH_TABLES
};

#define NUM_ROCK_SMASH_ITEMS_PER_TABLE 8

/*
This table can be expanded as you please.
Each vanilla header has a file in a253 that has 2 bytes for odds (out of 100) and 2 bytes for the item table below to use.
*/
const u16 RockSmashItemTable[NUM_ROCK_SMASH_TABLES][NUM_ROCK_SMASH_ITEMS_PER_TABLE] =
{
    { // Default:
        ITEM_MAX_ETHER,
        ITEM_REVIVE,
        ITEM_HEART_SCALE,
        ITEM_RED_SHARD,
        ITEM_BLUE_SHARD,
        ITEM_GREEN_SHARD,
        ITEM_YELLOW_SHARD,
        ITEM_STAR_PIECE,
    },
    { // Ruins of Alph:
        ITEM_RED_SHARD,
        ITEM_YELLOW_SHARD,
        ITEM_HELIX_FOSSIL,
        ITEM_MAX_ETHER,
        ITEM_BLUE_SHARD,
        ITEM_GREEN_SHARD,
        ITEM_OLD_AMBER,
        ITEM_MAX_REVIVE,
    },
    { // Cliff Cave:
        ITEM_MAX_ETHER,
        ITEM_PEARL,
        ITEM_BIG_PEARL,
        ITEM_RED_SHARD,
        ITEM_YELLOW_SHARD,
        ITEM_CLAW_FOSSIL,
        ITEM_CLAW_FOSSIL,
        ITEM_RARE_BONE,
    },
};

typedef struct {
    u16 odds;
    u16 table;
} ROCK_SMASH;

typedef struct {
    BOOL followMonKnowsHM;
    int ability;
    u16 *itemFound; // TODO: bool16
    u16 *item;
    ROCK_SMASH rockSmash;
    u32 unk14;
} RockSmashItemCheckWork;

// TODO: Move this somewhere better (filesystem.h does not exist).
void LONG_CALL ReadWholeNarcMemberByIdPair(void *dest, u32 narc_id, s32 file_id);

// TODO: Move this somewhere better (overlay_01_022001E4.h does not exist).
int LONG_CALL ov01_02200540(LocalMapObject *obj, int a0, int a1);
BOOL LONG_CALL ov01_022003F4(int a0);

// TODO: Move this somewhere better (unk_020689C8.h does not exist).
void LONG_CALL sub_02068B48(int a0);

#endif // ROCK_SMASH_ITEM_H