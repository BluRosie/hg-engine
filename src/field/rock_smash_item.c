#include "../../include/constants/item.h"
#include "../../include/debug.h"
#include "../../include/types.h"

/*
 * Each table is 8 slots with chances of 25/20/10/10/10/10/10/5 %.
 * In order to expand the tables or change probabilities we need to hook
 * DrawRockSmashIdx() and Task_GetRockSmashItem() (and CheckRockSmashItemDrop() for rate of item drop)
 * in https://github.com/pret/pokeheartgold/blob/master/src/field/overlay_01_rock_smash_item.c
 */

// can't change this at this time
#define NUM_ROCK_SMASH_ITEMS_PER_TABLE 8


/*
this table can be expanded as you please.
each header has a file in a253 that has 2 bytes for odds (out of 100) and 2 bytes for the item table below to use
*/
const u16 RockSmashItemTable[][NUM_ROCK_SMASH_ITEMS_PER_TABLE] =
{
    { // default
        ITEM_MAX_ETHER,
        ITEM_REVIVE,
        ITEM_HEART_SCALE,
        ITEM_RED_SHARD,
        ITEM_BLUE_SHARD,
        ITEM_GREEN_SHARD,
        ITEM_YELLOW_SHARD,
        ITEM_STAR_PIECE,
    },
    { // ruins of alph
        ITEM_RED_SHARD,
        ITEM_YELLOW_SHARD,
        ITEM_HELIX_FOSSIL,
        ITEM_MAX_ETHER,
        ITEM_BLUE_SHARD,
        ITEM_GREEN_SHARD,
        ITEM_OLD_AMBER,
        ITEM_MAX_REVIVE,
    },
    { // cliff cave
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

u32 DetermineRockSmashItem(u32 tableIndex, u32 index)
{
    if (tableIndex >= NELEMS(RockSmashItemTable) || index >= NUM_ROCK_SMASH_ITEMS_PER_TABLE)
    {
        return ITEM_NONE;
    }
    return RockSmashItemTable[tableIndex][index];
}
