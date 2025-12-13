#include "../include/battle.h"
#include "../include/script.h"
#include "../include/constants/ability.h"
#include "../include/constants/file.h"
#include "../include/constants/item.h"
#include "../include/constants/game.h"
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
    // TODO: Double height & weight.

    // Manually adjust specific elements according to Totem Species.
    switch (species)
    {
        case SPECIES_GYARADOS:
            // Ability:
            u16 data = ABILITY_MOXIE;
            SetMonData(totem, MON_DATA_ABILITY, &data);

            // Item:
            data = ITEM_WACAN_BERRY;
            SetMonData(totem, MON_DATA_HELD_ITEM, &data);

            // Move slot 1:
            data = MOVE_WATERFALL;
            SetMonData(totem, MON_DATA_MOVE1, &data);
            data = GetMoveMaxPP(data, 0);
            SetMonData(totem, MON_DATA_MOVE1PP, &data);
            data = 0;
            SetMonData(totem, MON_DATA_MOVE1PPUP, &data);

            // Move slot 2:
            data = MOVE_ICE_FANG;
            SetMonData(totem, MON_DATA_MOVE2, &data);
            data = GetMoveMaxPP(data, 0);
            SetMonData(totem, MON_DATA_MOVE2PP, &data);
            data = 0;
            SetMonData(totem, MON_DATA_MOVE2PPUP, &data);

            // Move slot 3:
            data = MOVE_CRUNCH;
            SetMonData(totem, MON_DATA_MOVE3, &data);
            data = GetMoveMaxPP(data, 0);
            SetMonData(totem, MON_DATA_MOVE3PP, &data);
            data = 0;
            SetMonData(totem, MON_DATA_MOVE3PPUP, &data);
            break;

            // Move slot 4:
            data = MOVE_SCARY_FACE;
            SetMonData(totem, MON_DATA_MOVE4, &data);
            data = GetMoveMaxPP(data, 0);
            SetMonData(totem, MON_DATA_MOVE4PP, &data);
            data = 0;
            SetMonData(totem, MON_DATA_MOVE4PPUP, &data);
            break;
        default: break;
    }

    // Increment Game Stat here if necessary.

    CallTask_StartEncounter(taskManager, setup, BattleSetup_GetWildTransitionEffect(setup), BattleSetup_GetWildBattleMusic(setup), winFlag);
}