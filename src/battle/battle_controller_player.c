#include "../../include/battle.h"
#include "../../include/battle_controller_player.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/config.h"

#ifdef DEBUG_BATTLE_SCENARIOS
void autoSelectPlayerMove(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    int moveSlot = 0;
    u16 scriptedMove;

    // Hook at SELECTION_SCREEN_INPUT (during input phase)
    if (ctx->server_seq_no != CONTROLLER_COMMAND_SELECTION_SCREEN_INPUT)
    {
        return;  // Not in input phase
    }

    // Only run once per turn - check if com_seq_no is at the start
    if (ctx->com_seq_no[0] != SSI_STATE_SELECT_COMMAND_INIT)
    {
        return;  // Already processed or not ready
    }

    // Try to get a scripted move for player (battler 0)
    scriptedMove = TestBattle_GetAIScriptedMove(0, &moveSlot);

    if (scriptedMove == 0)
    {
        return;  // No scripted move available
    }

    // We have a scripted move! Set the player's action
    ctx->playerActions[0][0] = CONTROLLER_COMMAND_FIGHT_INPUT;
    ctx->playerActions[0][1] = moveSlot;
    ctx->playerActions[0][3] = SELECT_FIGHT_COMMAND;
    ctx->waza_no_pos[0] = moveSlot;

    // Signal that input is complete (mimics what the UI does)
    ctx->com_seq_no[0] = SSI_STATE_END;
    ctx->ret_seq_no[0] = SSI_STATE_13;
}
#endif

#if defined (DISABLE_ITEMS_IN_TRAINER_BATTLE)
void overrideItemUsage(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    MESSAGE_PARAM mp;
    int battlerId;
    u32 fight_type = BattleTypeGet(bsys);

    for (battlerId = 0; battlerId < bsys->maxBattlers; battlerId++)
    {
        if (ctx->playerActions[battlerId][0] == CONTROLLER_COMMAND_ITEM_INPUT && ctx->com_seq_no[battlerId] == 7)
        {
            if (fight_type & BATTLE_TYPE_TRAINER)
            {
                mp.msg_id = BATTLE_MSG_ITEMS_CANT_BE_USED_HERE; //msg.id  = msg_0197_00593; // Items can't be used here
                mp.msg_tag = TAG_NONE;
                ov12_022639B8(bsys, battlerId, mp);
                ctx->com_seq_no[battlerId] = SSI_STATE_15;
                ctx->ret_seq_no[battlerId] = SSI_STATE_SELECT_COMMAND_INIT;
            }
        }
    }
}
#endif

BOOL LONG_CALL BattleContext_Main(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    if (!ctx->fight_end_flag)
    {
        if (BattleSystem_GetBattleOutcomeFlags(bsys) && !(BattleSystem_GetBattleOutcomeFlags(bsys) & 0x40))
        {
            ctx->server_seq_no = CONTROLLER_COMMAND_42;
        }
    }

    sPlayerBattleCommands[ctx->server_seq_no](bsys, ctx);
#ifdef DEBUG_BATTLE_SCENARIOS
    autoSelectPlayerMove(bsys, ctx);
#endif
#if defined (DISABLE_ITEMS_IN_TRAINER_BATTLE)
    overrideItemUsage(bsys, ctx);
#endif

    if (ctx->server_seq_no == CONTROLLER_COMMAND_45)
    {
        return TRUE;
    }
    return FALSE;
}
