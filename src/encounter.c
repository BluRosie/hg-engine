#include "../include/battle.h"
#include "../include/script.h"
#include "../include/constants/file.h"
#include "../include/constants/game.h"

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

    // Increment Game Stat here if necessary.

    CallTask_StartEncounter(taskManager, setup, BattleSetup_GetWildTransitionEffect(setup), BattleSetup_GetWildBattleMusic(setup), winFlag);
}