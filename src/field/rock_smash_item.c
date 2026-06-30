#include "../../include/debug.h"
#include "../../include/map_events_internal.h"
#include "../../include/rock_smash_item.h"
#include "../../include/types.h"

#include "../../include/constants/maps.h"

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

u32 DetermineRockSmashItem(u32 tableIndex, u32 index)
{
    if (tableIndex >= NELEMS(RockSmashItemTable) || index >= MAX_ROCK_SMASH_ITEMS_PER_TABLE)
    {
        return ITEM_NONE;
    }
    return RockSmashItemTable[tableIndex][index];
}

BOOL LONG_CALL CheckRockSmashItemDrop(FieldSystem *fieldSystem, RockSmashItemCheckWork *env);
int LONG_CALL DrawRockSmashIdx(FieldSystem *fieldSystem);

BOOL LONG_CALL CheckRockSmashItemDrop(FieldSystem *fieldSystem, RockSmashItemCheckWork *env) {
    int ability;
    RockSmashMapData data;

    int mapID = fieldSystem->location->mapId;
    if (mapID < MAP_ID_MAX)
    {
        // Fills data with base odds and table ID.
        ReadWholeNarcMemberByIdPair(&data, 255, mapID); // NARC_a_2_5_3
    }
    else
    {   
        // It's definitely easier to store that here for now with custom maps.
        switch (mapID)
        {
            default:
                data.odds = 50;
                data.table = ROCK_SMASH_TABLE_DEFAULT;
                break;
        }
    }

    int odds = data.odds;
    if (odds == 0 || data.table >= NUM_ROCK_SMASH_TABLES) {
        return FALSE;
    }

    int partySlot = 0;
    struct Party *party = SaveData_GetPlayerPartyPtr(fieldSystem->savedata);
#ifdef ENTIRE_PARTY_AFFECTS_ROCK_SMASH
    for (; partySlot < party->count; partySlot++) {
#endif
        struct PartyPokemon *mon = Party_GetMonByIndex(party, partySlot);
        if (GetMonData(mon, MON_DATA_IS_EGG, NULL) == FALSE) {
            ability = GetMonData(mon, MON_DATA_ABILITY, NULL);
        } else {
            ability = NUM_ABILITIES;
        }
        env->ability = ability;

        for (u32 i = 0; i < NELEMS(RockSmashAbilityOddsTable); i++) {
            if (ability == RockSmashAbilityOddsTable[i].ability) {
                odds += RockSmashAbilityOddsTable[i].odds;
                break;
            }
        }
#ifdef ENTIRE_PARTY_AFFECTS_ROCK_SMASH
    }
#endif

    if (env->followMonKnowsHM) { // TODO: Check interactability with free field moves.
        odds += 5;
    }

    if (odds > 100) {
        odds = 100;
    } else if (odds <= 0) {
        return FALSE;
    }

    if (gf_rand() % 100 < odds) {
        env->rockSmash = data;
        return TRUE;
    }
    return FALSE;
}

// Exposing this lets us mess with the odds and total number of items in the rock smash tables.
int LONG_CALL DrawRockSmashIdx(UNUSED FieldSystem *fieldSystem) {
    u8 rand = gf_rand() % 100;
    if (rand < 25) {        // 25%
        return 0;
    } else if (rand < 45) { // 20%
        return 1;
    } else if (rand < 55) { // 10%
        return 2;
    } else if (rand < 65) { // 10%
        return 3;
    } else if (rand < 75) { // 10%
        return 4;
    } else if (rand < 85) { // 10%
        return 5;
    } else if (rand < 95) { // 10%
        return 6;
    }
    return 7;               // 5%
}
