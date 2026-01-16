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
        // You can use the case below as a template:
        /*case SPECIES_GYARADOS:
            // Ability:
            u16 data_1 = ABILITY_MOXIE;
            SetMonData(totem, MON_DATA_ABILITY, &data_1);

            // Item:
            data_1 = ITEM_WACAN_BERRY;
            SetMonData(totem, MON_DATA_HELD_ITEM, &data_1);

            // Move slot 1:
            data_1 = MOVE_AQUA_TAIL;
            SetMonData(totem, MON_DATA_MOVE1, &data_1);
            data_1 = GetMoveMaxPP(data_1, 0);
            SetMonData(totem, MON_DATA_MOVE1PP, &data_1);
            data_1 = 0;
            SetMonData(totem, MON_DATA_MOVE1PPUP, &data_1);

            // Move slot 2:
            data_1 = MOVE_ICE_FANG;
            SetMonData(totem, MON_DATA_MOVE2, &data_1);
            data_1 = GetMoveMaxPP(data_1, 0);
            SetMonData(totem, MON_DATA_MOVE2PP, &data_1);
            data_1 = 0;
            SetMonData(totem, MON_DATA_MOVE2PPUP, &data_1);

            // Move slot 3:
            data_1 = MOVE_CRUNCH;
            SetMonData(totem, MON_DATA_MOVE3, &data_1);
            data_1 = GetMoveMaxPP(data_1, 0);
            SetMonData(totem, MON_DATA_MOVE3PP, &data_1);
            data_1 = 0;
            SetMonData(totem, MON_DATA_MOVE3PPUP, &data_1);

            // Move slot 4:
            data_1 = MOVE_DRAGON_DANCE;
            SetMonData(totem, MON_DATA_MOVE4, &data_1);
            data_1 = GetMoveMaxPP(data_1, 0);
            SetMonData(totem, MON_DATA_MOVE4PP, &data_1);
            data_1 = 0;
            SetMonData(totem, MON_DATA_MOVE4PPUP, &data_1);
            break;

            // IVs:
            data_1 = 20;
            SetMonData(totem, MON_DATA_HP_IV, &data_1);
            SetMonData(totem, MON_DATA_ATK_IV, &data_1);
            SetMonData(totem, MON_DATA_DEF_IV, &data_1);
            SetMonData(totem, MON_DATA_SPEED_IV, &data_1);
            SetMonData(totem, MON_DATA_SPATK_IV, &data_1);
            SetMonData(totem, MON_DATA_SPDEF_IV, &data_1);

            // Nature:
            data_1 = NATURE_ADAMANT;
            u32 pid_1 = GetMonData(totem, MON_DATA_PERSONALITY, NULL);
            u8 currentNature_1 = pid_1 % 25;
            pid_1 = pid_1 + data_1 - currentNature_1;
            SetMonData(totem, MON_DATA_PERSONALITY, &pid_1);
            break;*/

        default: break;
    }

    GameStats_Inc(Save_GameStats_Get(fieldSystem->savedata), GAME_STAT_WILD_ENCOUNTERS);

    CallTask_StartEncounter(taskManager, setup, BattleSetup_GetWildTransitionEffect(setup), BattleSetup_GetWildBattleMusic(setup), winFlag);
}