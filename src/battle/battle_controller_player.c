#include "../../include/battle.h"
#include "../../include/battle_controller_player.h"
#include "../../include/config.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/file.h"

#ifdef DEBUG_BATTLE_SCENARIOS
#include "../../include/test_battle.h"
#endif // DEBUG_BATTLE_SCENARIOS

#if defined (DISABLE_ITEMS_IN_TRAINER_BATTLE)
void overrideItemUsage(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    BattleMessage mp;
    int battlerId;
    u32 fight_type = BattleTypeGet(bsys);

    for (battlerId = 0; battlerId < bsys->maxBattlers; battlerId++)
    {
        if (ctx->playerActions[battlerId][0] == CONTROLLER_COMMAND_ITEM_INPUT && ctx->com_seq_no[battlerId] == 7)
        {
            if (fight_type & BATTLE_TYPE_TRAINER)
            {
                mp.id = BATTLE_MSG_ITEMS_CANT_BE_USED_HERE; //msg.id  = msg_0197_00593; // Items can't be used here
                mp.tag = TAG_NONE;
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
#ifdef DEBUG_BATTLE_SCENARIOS
    if (!ctx->hasLoadedTerrainOver && ctx->terrainOverlay.type != TERRAIN_NONE && ctx->server_seq_no >= CONTROLLER_COMMAND_SELECTION_SCREEN_INIT &&
        bsys != NULL && bsys->bgConfig != NULL && bsys->bg_area != NULL && bsys->pal_area != NULL) {

        u32 bg, terrain;
        switch (ctx->terrainOverlay.type) {
            case GRASSY_TERRAIN:
                bg = BATTLE_BG_GRASSY_TERRAIN;
                terrain = TERRAIN_GRASSY_TERRAIN;
                break;
            case MISTY_TERRAIN:
                bg = BATTLE_BG_MISTY_TERRAIN;
                terrain = TERRAIN_MISTY_TERRAIN;
                break;
            case ELECTRIC_TERRAIN:
                bg = BATTLE_BG_ELECTRIC_TERRAIN;
                terrain = TERRAIN_ELECTRIC_TERRAIN;
                break;
            case PSYCHIC_TERRAIN:
                bg = BATTLE_BG_PSYCHIC_TERRAIN;
                terrain = TERRAIN_PSYCHIC_TERRAIN;
                break;
            default:
                bg = BATTLE_BG_GRASSY_TERRAIN;
                terrain = TERRAIN_GRASSY_TERRAIN;
                break;
        }
        LoadDifferentBattleBackground(bsys, bg, terrain);
        ctx->hasLoadedTerrainOver = 1;
    }
#endif

#ifdef DEBUG_BATTLE_SCENARIOS
    if (TestBattle_IsComplete() && !ctx->fight_end_flag)
    {
        BattleSystem_SetBattleOutcomeFlags(bsys, BATTLE_OUTCOME_PLAYER_FLED);
        ctx->server_seq_no = CONTROLLER_COMMAND_42;
    }
#endif

    if (!ctx->fight_end_flag)
    {
        if (BattleSystem_GetBattleOutcomeFlags(bsys) && !(BattleSystem_GetBattleOutcomeFlags(bsys) & 0x40))
        {
            ctx->server_seq_no = CONTROLLER_COMMAND_42;
        }
    }

    sPlayerBattleCommands[ctx->server_seq_no](bsys, ctx);
#ifdef DEBUG_BATTLE_SCENARIOS
    TestBattle_autoSelectPlayerMoves(bsys, ctx);
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

void LONG_CALL BattleControllerPlayer_GetBattleMon(struct BattleSystem *battleSystem, struct BattleStruct *ctx)
{
    int battlerId;
    int maxBattlers = BattleWorkClientSetMaxGet(battleSystem);

    for (battlerId = 0; battlerId < maxBattlers; battlerId++) {
        BattleSystem_GetBattleMon(battleSystem, ctx, battlerId, ctx->sel_mons_no[battlerId]);
        // TODO remove partySize check when we implement new battle types in IsBattlerSlotValid
        if (!IsBattlerSlotValid(battleSystem, battlerId) || ctx->sel_mons_no[battlerId] >= BattleWorkPokeCountGet(battleSystem, battlerId)) {
            ctx->battlemon[battlerId].species = 0; // SPECIES_NONE
            ctx->battlemon[battlerId].hp = 0;
            ctx->battlemon[battlerId].rare = 0;
            ctx->no_reshuffle_client |= No2Bit(battlerId);
        } else {
            BattleSystem_GetBattleMon(battleSystem, ctx, battlerId, ctx->sel_mons_no[battlerId]);
        }
    }

    ctx->hp_temp = ctx->battlemon[1].hp;
    ctx->server_seq_no = CONTROLLER_COMMAND_START_ENCOUNTER;
}

BOOL LONG_CALL BattleContext_ShouldPrintFollowupMessage(struct BattleSystem *battleSystem UNUSED, struct BattleStruct *ctx)
{
    BOOL ret = FALSE;

    if (ctx->waza_status_flag) {
        if (ctx->multiHitCountTemp != 0) {
            if (ctx->fainting_client != BATTLER_NONE || ctx->multiHitCount == 1 || ctx->waza_status_flag & 0x4000) {
                ret = TRUE;
            }
        } else {
            ret = TRUE;
        }
    }

    if (ret == TRUE && !(ctx->server_status_flag & SERVER_STATUS_FLAG_SIMULTANEOUS_DAMAGE)) {
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FOLLOWUP_MESSAGE);
        ctx->next_server_seq_no  = ctx->server_seq_no;
        ctx->server_seq_no  = CONTROLLER_COMMAND_RUN_SCRIPT;
    }
    return ret;
}

void LONG_CALL ov12_0224D23C(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    u8 item = HeldItemHoldEffectGet(ctx, ctx->attack_client);
    if (ctx->server_status_flag & BATTLE_STATUS_CHARGE_TURN || ctx->server_status_flag2 & BATTLE_STATUS2_DISPLAY_ATTACK_MESSAGE)
    {
        if (item == HOLD_EFFECT_CHOICE_ATK || item == HOLD_EFFECT_CHOICE_SPEED || item == HOLD_EFFECT_CHOICE_SPATK)
        {
            if (!(ctx->moveNoTemp == MOVE_STRUGGLE || (ctx->moveNoTemp == MOVE_U_TURN && ctx->server_status_flag2 & BATTLE_STATUS2_UTURN) || (ctx->moveNoTemp == MOVE_BATON_PASS && ctx->server_status_flag2 & BATTLE_STATUS2_MOVE_SUCCEEDED)))
            {
                ctx->battlemon[ctx->attack_client].moveeffect.moveNoChoice = ctx->moveNoTemp;
            }
        }
        else
        {
            ctx->battlemon[ctx->attack_client].moveeffect.moveNoChoice = MOVE_NONE;
        }
    }

    if (!(ctx->server_status_flag & BATTLE_STATUS_NO_MOVE_SET))
    {
        if (ctx->server_status_flag2 & BATTLE_STATUS2_DISPLAY_ATTACK_MESSAGE)
        {
            ctx->moveProtect[ctx->attack_client] = ctx->current_move_index;
            ctx->waza_no_last = ctx->moveNoTemp;
        }
        else
        {
            ctx->moveProtect[ctx->attack_client] = MOVE_NONE;
            ctx->waza_no_last = MOVE_NONE;
        }
        if (ctx->server_status_flag2 & BATTLE_STATUS2_MOVE_SUCCEEDED)
        {
            ctx->waza_no_old[ctx->attack_client] = ctx->moveNoTemp;
        }
        else
        {
            ctx->waza_no_old[ctx->attack_client] = MOVE_NONE;
        }
    }

    if (ctx->server_status_flag2 & BATTLE_STATUS2_DISPLAY_ATTACK_MESSAGE)
    {
        ctx->waza_no_sketch[ctx->attack_client] = ctx->moveNoTemp;
        ctx->lastClientMoveType[ctx->attack_client] = GetAdjustedMoveType(ctx, ctx->attack_client, ctx->moveNoTemp);
    }

    ov12_0224DD74(bsys, ctx);
    ov12_02256694(bsys, ctx);
    ctx->server_seq_no = CONTROLLER_COMMAND_40;
}

void LONG_CALL ov12_0224DD74(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx)
{
    int moveType = GetAdjustedMoveType(ctx, ctx->attack_client, ctx->current_move_index);

    // Update Mirror Move vars.
    if (ctx->aiWorkTable.old_moveTbl[ctx->moveNoTemp].flag & FLAG_MIRROR_MOVE
    && !(ctx->server_status_flag & BATTLE_STATUS_NO_MOVE_SET)
    && ctx->defence_client != BATTLER_NONE
    && ctx->server_status_flag2 & BATTLE_STATUS2_DISPLAY_ATTACK_MESSAGE)
    {
        ctx->waza_no_oumu[ctx->defence_client] = ctx->moveNoTemp;
        ctx->waza_no_oumu_hit[ctx->defence_client][ctx->attack_client] = ctx->moveNoTemp;
    }

    if (ctx->defence_client != BATTLER_NONE)
    {
        u8 item = HeldItemHoldEffectGet(ctx, ctx->defence_client);
        if (ctx->server_status_flag & BATTLE_STATUS_CHARGE_TURN || ctx->server_status_flag2 & BATTLE_STATUS2_DISPLAY_ATTACK_MESSAGE)
        {
            if (item != HOLD_EFFECT_CHOICE_ATK && item != HOLD_EFFECT_CHOICE_SPEED && item != HOLD_EFFECT_CHOICE_SPATK)
            {
                ctx->battlemon[ctx->defence_client].moveeffect.moveNoChoice = MOVE_NONE;
            }
        }

        if (!(ctx->server_status_flag & BATTLE_STATUS_NO_MOVE_SET))
        {
            if (ctx->server_status_flag2 & BATTLE_STATUS2_DISPLAY_ATTACK_MESSAGE)
            {
                ctx->waza_no_hit[ctx->defence_client] = ctx->current_move_index;
                ctx->waza_no_hit_client[ctx->defence_client] = ctx->attack_client;
                ctx->waza_no_hit_type[ctx->defence_client] = moveType;
                ctx->waza_no_last = ctx->moveNoTemp;
            }
            else
            {
                ctx->waza_no_hit[ctx->defence_client] = MOVE_NONE;
                ctx->waza_no_hit_client[ctx->defence_client] = BATTLER_NONE;
                ctx->waza_no_hit_type[ctx->defence_client] = 0; // Intended to be 'no type' but is technically TYPE_NORMAL.
                ctx->waza_no_last = MOVE_NONE;
            }

            if (ctx->server_status_flag2 & BATTLE_STATUS2_MOVE_SUCCEEDED && !(ctx->waza_status_flag & MOVE_STATUS_FLAG_FAILED))
            {
                switch (ctx->aiWorkTable.old_moveTbl[ctx->current_move_index].target)
                {
                    case RANGE_USER:
                    case RANGE_USER_SIDE:
                    case RANGE_FIELD:
                    case RANGE_OPPONENT_SIDE:
                    case RANGE_ALLY:
                    case RANGE_SINGLE_TARGET_USER_SIDE:
                        ctx->lastClientDamagingMove[ctx->defence_client] = MOVE_NONE;
                        ctx->lastClientDamagedBy[ctx->defence_client] = BATTLER_NONE;
                        break;
                    default:
                        ctx->lastClientDamagingMove[ctx->defence_client] = ctx->current_move_index;
                        ctx->lastClientDamagedBy[ctx->defence_client] = ctx->attack_client;
                        break;
                }
            }
            else
            {
                ctx->lastClientDamagingMove[ctx->defence_client] = MOVE_NONE;
                ctx->lastClientDamagedBy[ctx->defence_client] = BATTLER_NONE;
            }
        }
    }
}
