#include "../../include/types.h"
#include "../../include/config.h"
#include "../../include/battle.h"
#include "../../include/mega.h"
#include "../../include/pokemon.h"
#include "../../include/trainer_ai.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/species.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/battle_message_constants.h"

BOOL TrainerAI_ShouldSwitch(struct BattleSystem *battleSys, int battler);

int TrainerAI_PickCommand(struct BattleSystem *battleSys, int battler)
{
    if (TrainerAI_ShouldSwitch(battleSys, battler))
        return PLAYER_INPUT_PARTY;
    return PLAYER_INPUT_FIGHT;
}

BOOL TrainerAI_ShouldSwitch(struct BattleSystem *battleSys, int battler)
{
    int i;
    u32 battler1, battler2, maxHP = 0;
    u32 battleType;
    int end;
    struct PartyPokemon *mon;
    struct BattleStruct *battleCtx = battleSys->sp;
    battleType = BattleTypeGet(battleSys);

    if ((battleType & BATTLE_TYPE_TRAINER) || IsClientEnemy(battleSys, battler) == 0) {
        // 50% of the time switch to mon with next highest hp
        if (BattleRand(battleSys) & 1)
        {
            battler1 = battler;
            if (battleType & BATTLE_TYPE_TAG
                || battleType & BATTLE_TYPE_MULTI)
            {
                battler2 = battler1;
            } else {
                battler2 = BATTLER_ALLY(battler1);
            }
            end = Battle_GetClientPartySize(battleSys, battler);
            for (i = 0; i < end; i++)
            {
                u32 currHP = 0;
                mon = Battle_GetClientPartyMon(battleSys, battler, i);
                currHP = GetMonData(mon, MON_DATA_HP, NULL);
                if (currHP != 0 && currHP > maxHP
                    && i != battleCtx->sel_mons_no[battler1]
                    && i != battleCtx->sel_mons_no[battler2]
                    && i != battleCtx->aiSwitchedPartySlot[battler1]
                    && i != battleCtx->aiSwitchedPartySlot[battler2])
                {
                    maxHP = currHP;
                    battleCtx->aiSwitchedPartySlot[battler] = i;
                }
            }
            if (battleCtx->aiSwitchedPartySlot[battler] != 6)
                return TRUE;
        }
    }
    return FALSE;
}

