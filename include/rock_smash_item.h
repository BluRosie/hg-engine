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

/*
This table can be expanded as you please.
Each vanilla header has a file in a253 that has 2 bytes for odds (out of 100) to receive an item from a rock and 2 bytes for the item table index.
Items are sorted in ascending order of quality, which affects their individual chance to be received.
*/
const u16 RockSmashItemTable[NUM_ROCK_SMASH_TABLES][MAX_ROCK_SMASH_ITEMS_PER_TABLE] =
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

// List of abilities that increase the odds (out of 100) to receive an item from a rock and their percentage increases.
const RockSmashAbilityOdds RockSmashAbilityOddsTable[] = {
    { ABILITY_SUCTION_CUPS, 5 },
    { ABILITY_MAGNET_PULL,  5 },
    { ABILITY_KEEN_EYE,     5 },
};

// List of abilities that increase the quality of items received from a rock and their increase amounts.
// Note: Having any of these abilities active will prevent items of the lowest quality from appearing at all!
// CURRENTLY DOES NOTHING. TODO: check this via bytereplacement.
const RockSmashAbilityQuality RockSmashAbilityQualityTable[] = {
    { ABILITY_SERENE_GRACE, 1 },
    { ABILITY_SUPER_LUCK,   1 },
};

// TODO: Move this somewhere better (filesystem.h does not exist).
void LONG_CALL ReadWholeNarcMemberByIdPair(void *dest, u32 narc_id, s32 file_id);

// TODO: Move this somewhere better (overlay_01_022001E4.h does not exist).
int LONG_CALL ov01_02200540(LocalMapObject *obj, int a0, int a1);
BOOL LONG_CALL ov01_022003F4(int a0);

// TODO: Move this somewhere better (unk_020689C8.h does not exist).
void LONG_CALL sub_02068B48(int a0);

#endif // ROCK_SMASH_ITEM_H