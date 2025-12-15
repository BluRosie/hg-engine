#include "../../include/bag.h"
#include "../../include/bag_cursor.h"
#include "../../include/battle.h"
#include "../../include/battle_controller_player.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/file.h"
#include "../../include/constants/item.h"

#if defined (DISABLE_ITEMS_IN_TRAINER_BATTLE)
void overrideItemUsage(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    MESSAGE_PARAM mp;
    int battlerId;
    u32 fight_type = BattleTypeGet(bsys);

    for (battlerId = 0; battlerId < bsys->maxBattlers; battlerId++)
    {
        if (ctx->playerActions[battlerId][0] == CONTROLLER_COMMAND_ITEM_INPUT && ctx->com_seq_no[battlerId] == SSI_STATE_7)
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

void overrideRunButton(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    MESSAGE_PARAM mp;
    int battlerId;
    u32 fight_type = BattleTypeGet(bsys);

    for (battlerId = 0; battlerId < bsys->maxBattlers; battlerId++)
    {
        if (ctx->playerActions[battlerId][0] == CONTROLLER_COMMAND_RUN_INPUT)
        {
            if (ctx->com_seq_no[battlerId] == SSI_STATE_11)
            {
                if (fight_type & BATTLE_TYPE_TOTEM)
                {
                    mp.msg_id = 1607; // Can't flee this fight!
                    mp.msg_tag = TAG_NONE;
                    ov12_022639B8(bsys, battlerId, mp);
                    ctx->com_seq_no[battlerId] = SSI_STATE_15;
                    ctx->ret_seq_no[battlerId] = SSI_STATE_SELECT_COMMAND_INIT;
                }
            }
        }
    }
}

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
#if defined (DISABLE_ITEMS_IN_TRAINER_BATTLE)
    overrideItemUsage(bsys, ctx);
#endif
    overrideRunButton(bsys, ctx);

    if (ctx->server_seq_no == CONTROLLER_COMMAND_45)
    {
        return TRUE;
    }
    return FALSE;
}

void LONG_CALL BattleControllerPlayer_ItemInput(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    BattleItem *item;
    int script;
    ctx->attack_client = ctx->executionOrder[ctx->executionIndex];
    ctx->defence_client = Battler_GetRandomOpposingBattlerId(bsys, ctx, ctx->attack_client);
    item = (BattleItem *)&ctx->playerActions[ctx->attack_client][2];

    MESSAGE_PARAM mp;

    if (IsClientEnemy(bsys, ctx->attack_client)) {
        switch (ctx->aiWorkTable.ai_item_type[ctx->attack_client >> 1]) {
        case 0:
            script = SUB_SEQ_FULL_RESTORE;
            break;
        case 1:
            script = SUB_SEQ_BAG_HP_RESTORE;
            break;
        case 2:
            if ((ctx->aiWorkTable.ai_item_condition[ctx->attack_client >> 1] & 1) && (ctx->aiWorkTable.ai_item_condition[ctx->attack_client >> 1] & 0x3e)) {
                ctx->msg_work = 6;
            } else {
                ctx->msg_work = LowestFlagNo(ctx->aiWorkTable.ai_item_condition[ctx->attack_client >> 1]);
            }
            script = SUB_SEQ_BAG_STATUS_HEAL;
            break;
        case 3:
            ctx->msg_work = ctx->aiWorkTable.ai_item_condition[ctx->attack_client >> 1];
            script = SUB_SEQ_BAG_STAT_BOOST;
            break;
        case 4:
            script = SUB_SEQ_BAG_GUARD_SPEC;
            break;
        }
        ctx->item_work = ctx->aiWorkTable.ai_item_no[ctx->attack_client >> 1];
    } else {
        switch (item->page) {
        case 0: // BTLPOCKETLIST_HP_PP_RESTORE
        case 1: // BTLPOCKETLIST_STATUS_RESTORE
        case 3: // BTLPOCKETLIST_BATTLE_ITEMS
            if (item->id == ITEM_POKE_DOLL || item->id == ITEM_FLUFFY_TAIL) {
                script = SUB_SEQ_ITEM_ESCAPE;
            } else {
                script = SUB_SEQ_BATTLE_ONLY_ITEM;
            }
            break;
        case 2: // BTLPOCKETLIST_BALLS
            script = SUB_SEQ_THROW_POKEBALL;
            if (!(BattleTypeGet(bsys) & BATTLE_TYPE_TRAINER || BattleTypeGet(bsys) & BATTLE_TYPE_TOTEM) && !(BattleTypeGet(bsys) & BATTLE_TYPE_CATCHING_DEMO)) {
                Bag_TakeItem(bsys->bag, item->id, 1, HEAPID_BATTLE_HEAP);
                bsys->bagCursor->battle.lastUsedItem = item->id;
                bsys->bagCursor->battle.lastUsedPocket = item->page;
            }
            break;
        }
        ctx->item_work = item->id;
    }

    if (BattleTypeGet(bsys) & BATTLE_TYPE_TOTEM && script == SUB_SEQ_THROW_POKEBALL)
    {
        // TODO: Replace with proper message.
        mp.msg_id = 1607; // Can't flee this fight!
        mp.msg_tag = TAG_NONE;
        ov12_022639B8(bsys, ctx->attack_client, mp);
        ctx->com_seq_no[ctx->attack_client] = SSI_STATE_15;
        ctx->ret_seq_no[ctx->attack_client] = SSI_STATE_SELECT_COMMAND_INIT;
    }
    else
    {
        ReadBattleScriptFromNarc(ctx, 1, script);
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->next_server_seq_no = CONTROLLER_COMMAND_40;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
    }
}
