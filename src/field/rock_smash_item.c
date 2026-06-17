#include "../../include/debug.h"
#include "../../include/map_events_internal.h"
#include "../../include/rock_smash_item.h"
#include "../../include/types.h"

#include "../../include/constants/ability.h"
#include "../../include/constants/maps.h"
#include "../../include/constants/item.h"

u32 DetermineRockSmashItem(u32 tableIndex, u32 index)
{
    if (tableIndex >= NELEMS(RockSmashItemTable) || index >= NUM_ROCK_SMASH_ITEMS_PER_TABLE)
    {
        return ITEM_NONE;
    }
    return RockSmashItemTable[tableIndex][index];
}

BOOL LONG_CALL CheckRockSmashItemDrop(FieldSystem *fieldSystem, RockSmashItemCheckWork *env);
BOOL LONG_CALL Task_GetRockSmashItem(TaskManager *taskman);
int LONG_CALL DrawRockSmashIdx(FieldSystem *fieldSystem);

BOOL LONG_CALL CheckRockSmashItemDrop(FieldSystem *fieldSystem, RockSmashItemCheckWork *env) {
    int ability;
    ROCK_SMASH data;

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
                data.odds = 0;
                data.table = ROCK_SMASH_TABLE_DEFAULT;
                break;
        }
    }

    int odds = data.odds;
    if (odds == 0) {
        return FALSE;
    }
    if (data.table >= NUM_ROCK_SMASH_TABLES) {
        GF_ASSERT(FALSE);
        return FALSE;
    }
    struct PartyPokemon *mon = Party_GetMonByIndex(SaveData_GetPlayerPartyPtr(fieldSystem->savedata), 0);
    if (GetMonData(mon, MON_DATA_IS_EGG, NULL) == 0) {
        ability = GetMonData(mon, MON_DATA_ABILITY, NULL);
    } else {
        ability = NUM_ABILITIES;
    }
    env->ability = ability;

    switch (ability) {
    case ABILITY_SUCTION_CUPS:
        odds += 5;
        break;
    case ABILITY_MAGNET_PULL:
        odds += 5;
        break;
    case ABILITY_KEEN_EYE:
        odds += 5;
        break;
    }
    if (env->followMonKnowsHM) {
        odds += 5;
    }
    if (odds > 100) {
        odds = 100;
    }

    if (gf_rand() % 100 < odds) {
        env->rockSmash = data;
        return TRUE;
    }
    return FALSE;
}

// Exposing this allows us to edit item quality abilities.
BOOL LONG_CALL Task_GetRockSmashItem(TaskManager *taskman) {
    LocalMapObject *obj;

    u32 *state = &taskman->state;
    RockSmashItemCheckWork *env = taskman->env;
    FieldSystem *fieldSystem = taskman->fieldSystem;

    switch (*state) {
        case 0:
            if (env->followMonKnowsHM) {
                obj = fieldSystem->followMon.mapObject;
            } else {
                obj = fieldSystem->playerAvatar->mapObject;
            }
            env->unk14 = ov01_02200540(obj, 0, 1);
            ++(*state);
            break;
        case 1:
            if (ov01_022003F4(env->unk14)) {
                sub_02068B48(env->unk14);
                ++(*state);
            }
            break;
        case 2: {
            u32 idx = DrawRockSmashIdx(fieldSystem);
            if ((env->ability == ABILITY_SERENE_GRACE || env->ability == ABILITY_SUPER_LUCK) && idx < 7) {
                idx = (u8)(idx + 1);
            }

            u16 item = DetermineRockSmashItem(env->rockSmash.table, idx);
            *env->itemFound = TRUE;
            *env->item = item;
            sys_FreeMemoryEz(env);
            return TRUE;
        }
    }
    return FALSE;
}

// Exposing this lets us mess with the odds and total number of items in the rock smash tables.
int LONG_CALL DrawRockSmashIdx(UNUSED FieldSystem *fieldSystem) {
    u8 rand = gf_rand() % 100;
    if (rand < 25) {
        return 0;
    }
    if (rand < 45) {
        return 1;
    }
    if (rand < 55) {
        return 2;
    }
    if (rand < 65) {
        return 3;
    }
    if (rand < 75) {
        return 4;
    }
    if (rand < 85) {
        return 5;
    }
    if (rand < 95) {
        return 6;
    }
    return 7;
}
