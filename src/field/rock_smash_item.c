#include "../../include/constants/item.h"
#include "../../include/debug.h"
#include "../../include/types.h"

/*
 * Each table is 8 slots with chances of 25/20/10/10/10/10/10/5 %.
 * In order to expand the tables or change probabilities we need to hook
 * DrawRockSmashIdx() and Task_GetRockSmashItem() (and CheckRockSmashItemDrop() for rate of item drop)
 * in https://github.com/pret/pokeheartgold/blob/master/src/field/overlay_01_rock_smash_item.c
 */


const u16 sRockSmashItems_Default[] = {
    ITEM_MAX_ETHER,
    ITEM_REVIVE,
    ITEM_HEART_SCALE,
    ITEM_RED_SHARD,
    ITEM_BLUE_SHARD,
    ITEM_GREEN_SHARD,
    ITEM_YELLOW_SHARD,
    ITEM_STAR_PIECE,
};

const u16 sRockSmashItems_RuinsOfAlph[] = {
    ITEM_RED_SHARD,
    ITEM_YELLOW_SHARD,
    ITEM_HELIX_FOSSIL,
    ITEM_MAX_ETHER,
    ITEM_BLUE_SHARD,
    ITEM_GREEN_SHARD,
    ITEM_OLD_AMBER,
    ITEM_MAX_REVIVE,
};

const u16 sRockSmashItems_CliffCave[] = {
    ITEM_MAX_ETHER,
    ITEM_PEARL,
    ITEM_BIG_PEARL,
    ITEM_RED_SHARD,
    ITEM_YELLOW_SHARD,
    ITEM_CLAW_FOSSIL,
    ITEM_CLAW_FOSSIL,
    ITEM_RARE_BONE,
};
