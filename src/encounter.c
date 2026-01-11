#include "../include/battle.h"
#include "../include/script.h"
#include "../include/constants/ability.h"
#include "../include/constants/file.h"
#include "../include/constants/item.h"
#include "../include/constants/game.h"
#include "../include/constants/game_stats.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"

struct BattleSetup LONG_CALL *BattleSetup_New(u32 heapID, u32 battleFlags);
void LONG_CALL BattleSetup_InitFromFieldSystem(BattleSetup *setup, FieldSystem *fieldSystem);
void LONG_CALL ov02_02247F30(FieldSystem *fieldSystem, u16 mon, u8 level, BOOL shiny, BattleSetup *setup);
int LONG_CALL BattleSetup_GetWildTransitionEffect(struct BattleSetup *setup);
int LONG_CALL BattleSetup_GetWildBattleMusic(struct BattleSetup *setup);

void SetupAndStartTotemBattle(TaskManager *taskManager, u16 species, u8 level, u32 *winFlag, BOOL shiny) {
    FieldSystem *fieldSystem = taskManager->fieldSystem;
    struct BattleSetup *setup = BattleSetup_New(HEAPID_WORLD, BATTLE_TYPE_TOTEM);
    BattleSetup_InitFromFieldSystem(setup, fieldSystem);
    ov02_02247F30(fieldSystem, species, level, shiny, setup);

    struct PartyPokemon *totem = Party_GetMonByIndex(setup->party[BATTLER_ENEMY], 0);
    // Perform generic Totem adjustments.
    // Height & weight cannot be increased until battle start as they are per-species.
    // In theory we would need to hook BattleMon creation to apply those changes on battle start.

    // Manually adjust specific elements according to Totem Species.
    switch (species)
    {
        case SPECIES_WINGULL:
            // Ability:
            u16 data_1 = ABILITY_HYDRATION;
            SetMonData(totem, MON_DATA_ABILITY, &data_1);

            // Item:
            data_1 = ITEM_WACAN_BERRY;
            SetMonData(totem, MON_DATA_HELD_ITEM, &data_1);

            // Move slot 1:
            data_1 = MOVE_ICE_BEAM;
            SetMonData(totem, MON_DATA_MOVE1, &data_1);
            data_1 = GetMoveMaxPP(data_1, 0);
            SetMonData(totem, MON_DATA_MOVE1PP, &data_1);
            data_1 = 0;
            SetMonData(totem, MON_DATA_MOVE1PPUP, &data_1);

            // Move slot 2:
            data_1 = MOVE_ROOST;
            SetMonData(totem, MON_DATA_MOVE2, &data_1);
            data_1 = GetMoveMaxPP(data_1, 0);
            SetMonData(totem, MON_DATA_MOVE2PP, &data_1);
            data_1 = 0;
            SetMonData(totem, MON_DATA_MOVE2PPUP, &data_1);

            // Move slot 3:
            data_1 = MOVE_BRINE;
            SetMonData(totem, MON_DATA_MOVE3, &data_1);
            data_1 = GetMoveMaxPP(data_1, 0);
            SetMonData(totem, MON_DATA_MOVE3PP, &data_1);
            data_1 = 0;
            SetMonData(totem, MON_DATA_MOVE3PPUP, &data_1);

            // Move slot 4:
            data_1 = MOVE_PURSUIT;
            SetMonData(totem, MON_DATA_MOVE4, &data_1);
            data_1 = 1;
            SetMonData(totem, MON_DATA_MOVE4PP, &data_1);
            data_1 = 0;
            SetMonData(totem, MON_DATA_MOVE4PPUP, &data_1);
            break;

            // IVs:
            data_1 = 31;
            SetMonData(totem, MON_DATA_HP_IV, &data_1);
            SetMonData(totem, MON_DATA_ATK_IV, &data_1);
            SetMonData(totem, MON_DATA_DEF_IV, &data_1);
            SetMonData(totem, MON_DATA_SPEED_IV, &data_1);
            SetMonData(totem, MON_DATA_SPATK_IV, &data_1);
            SetMonData(totem, MON_DATA_SPDEF_IV, &data_1);

            // Nature:
            data_1 = NATURE_MODEST;
            u32 pid_1 = GetMonData(totem, MON_DATA_PERSONALITY, NULL);
            u8 currentNature_1 = pid_1 % 25;
            pid_1 = pid_1 + data_1 - currentNature_1;
            SetMonData(totem, MON_DATA_PERSONALITY, &pid_1);
            break;
        case SPECIES_AMBIPOM:
            // Ability:
            u16 data_2 = ABILITY_TECHNICIAN;
            SetMonData(totem, MON_DATA_ABILITY, &data_2);

            // Item:
            data_2 = ITEM_HARD_STONE;
            SetMonData(totem, MON_DATA_HELD_ITEM, &data_2);

            // Move slot 1:
            data_2 = MOVE_FLING;
            SetMonData(totem, MON_DATA_MOVE1, &data_2);
            data_2 = 99; // GetMoveMaxPP(data_2, 0);
            SetMonData(totem, MON_DATA_MOVE1PP, &data_2);
            data_2 = 0;
            SetMonData(totem, MON_DATA_MOVE1PPUP, &data_2);

            // Move slot 2:
            data_2 = MOVE_DOUBLE_HIT;
            SetMonData(totem, MON_DATA_MOVE2, &data_2);
            data_2 = 0; // GetMoveMaxPP(data_2, 0);
            SetMonData(totem, MON_DATA_MOVE2PP, &data_2);
            data_2 = 0;
            SetMonData(totem, MON_DATA_MOVE2PPUP, &data_2);

            // Move slot 3:
            data_2 = MOVE_SWIFT;
            SetMonData(totem, MON_DATA_MOVE3, &data_2);
            data_2 = 0; // GetMoveMaxPP(data_2, 0);
            SetMonData(totem, MON_DATA_MOVE3PP, &data_2);
            data_2 = 0;
            SetMonData(totem, MON_DATA_MOVE3PPUP, &data_2);

            // Move slot 4:
            data_2 = MOVE_DUAL_CHOP;
            SetMonData(totem, MON_DATA_MOVE4, &data_2);
            data_2 = 0; // GetMoveMaxPP(data_2, 0);
            SetMonData(totem, MON_DATA_MOVE4PP, &data_2);
            data_2 = 0;
            SetMonData(totem, MON_DATA_MOVE4PPUP, &data_2);
            break;

            // IVs:
            data_2 = 15;
            SetMonData(totem, MON_DATA_HP_IV, &data_2);
            SetMonData(totem, MON_DATA_ATK_IV, &data_2);
            SetMonData(totem, MON_DATA_DEF_IV, &data_2);
            SetMonData(totem, MON_DATA_SPEED_IV, &data_2);
            SetMonData(totem, MON_DATA_SPATK_IV, &data_2);
            SetMonData(totem, MON_DATA_SPDEF_IV, &data_2);

            // Nature:
            data_2 = NATURE_IMPISH;
            u32 pid_2 = GetMonData(totem, MON_DATA_PERSONALITY, NULL);
            u8 currentNature_2 = pid_2 % 25;
            pid_2 = pid_2 + data_2 - currentNature_2;
            SetMonData(totem, MON_DATA_PERSONALITY, &pid_2);
            break;
        case SPECIES_NIHILEGO:
            // Ability:
            u16 data_3 = ABILITY_BEAST_BOOST;
            SetMonData(totem, MON_DATA_ABILITY, &data_3);

            // Item:
            data_3 = ITEM_HARD_STONE;
            SetMonData(totem, MON_DATA_HELD_ITEM, &data_3);

            // Move slot 1:
            data_3 = MOVE_TOXIC;
            SetMonData(totem, MON_DATA_MOVE1, &data_3);
            data_3 = 99; // GetMoveMaxPP(data_3, 0);
            SetMonData(totem, MON_DATA_MOVE1PP, &data_3);
            data_3 = 0;
            SetMonData(totem, MON_DATA_MOVE1PPUP, &data_3);

            // Move slot 2:
            data_3 = MOVE_DOUBLE_HIT;
            SetMonData(totem, MON_DATA_MOVE2, &data_3);
            data_3 = 0; // GetMoveMaxPP(data_3, 0);
            SetMonData(totem, MON_DATA_MOVE2PP, &data_3);
            data_3 = 0;
            SetMonData(totem, MON_DATA_MOVE2PPUP, &data_3);

            // Move slot 3:
            data_3 = MOVE_SWIFT;
            SetMonData(totem, MON_DATA_MOVE3, &data_3);
            data_3 = 0; // GetMoveMaxPP(data_3, 0);
            SetMonData(totem, MON_DATA_MOVE3PP, &data_3);
            data_3 = 0;
            SetMonData(totem, MON_DATA_MOVE3PPUP, &data_3);

            // Move slot 4:
            data_3 = MOVE_DUAL_CHOP;
            SetMonData(totem, MON_DATA_MOVE4, &data_3);
            data_3 = 0; // GetMoveMaxPP(data_3, 0);
            SetMonData(totem, MON_DATA_MOVE4PP, &data_3);
            data_3 = 0;
            SetMonData(totem, MON_DATA_MOVE4PPUP, &data_3);
            break;

            // IVs:
            data_3 = 15;
            SetMonData(totem, MON_DATA_HP_IV, &data_3);
            SetMonData(totem, MON_DATA_ATK_IV, &data_3);
            SetMonData(totem, MON_DATA_DEF_IV, &data_3);
            SetMonData(totem, MON_DATA_SPEED_IV, &data_3);
            SetMonData(totem, MON_DATA_SPATK_IV, &data_3);
            SetMonData(totem, MON_DATA_SPDEF_IV, &data_3);

            // Nature:
            data_3 = NATURE_IMPISH;
            u32 pid_3 = GetMonData(totem, MON_DATA_PERSONALITY, NULL);
            u8 currentNature_3 = pid_3 % 25;
            pid_3 = pid_3 + data_3 - currentNature_3;
            SetMonData(totem, MON_DATA_PERSONALITY, &pid_3);
            break;

        default: break;
    }

    GameStats_Inc(Save_GameStats_Get(fieldSystem->savedata), GAME_STAT_WILD_ENCOUNTERS);

    CallTask_StartEncounter(taskManager, setup, BattleSetup_GetWildTransitionEffect(setup), BattleSetup_GetWildBattleMusic(setup), winFlag);
}