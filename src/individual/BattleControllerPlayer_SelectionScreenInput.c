#include "config.h"

#include "constants/battle_message_constants.h"
#include "constants/battle_script_constants.h"
#include "constants/file.h"
#include "constants/hold_item_effects.h"
#include "constants/item.h"
#include "constants/move_effects.h"

#include "battle.h"
#include "battle_controller_player.h"

#ifdef DEBUG_BATTLE_SCENARIOS
#include "test_battle.h"
#endif // DEBUG_BATTLE_SCENARIOS

#define BATTLE_INPUT_FIGHT   1
#define BATTLE_INPUT_BAG     2
#define BATTLE_INPUT_POKEMON 3
#define BATTLE_INPUT_RUN     4
#define BATTLE_INPUT_CANCEL  0xFF

#if defined(DISABLE_ITEMS_IN_TRAINER_BATTLE)
#define BATTLE_TYPES_WITHOUT_ITEMS (BATTLE_TYPE_LINK | BATTLE_TYPE_FRONTIER | BATTLE_TYPE_TRAINER)
#else
#define BATTLE_TYPES_WITHOUT_ITEMS (BATTLE_TYPE_LINK | BATTLE_TYPE_FRONTIER)
#endif

void BattleControllerPlayer_SelectionScreenInputInternal(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    int battlerId;
    int battlersMax;
    int var;
    u32 battleType;
    BattleMessage msg;

    battlersMax = BattleWorkClientSetMaxGet(bsys);
    battleType = BattleTypeGet(bsys);

    var = 0;

    for (battlerId = 0; battlerId < battlersMax; battlerId++) {
        switch (ctx->com_seq_no[battlerId]) {
        case SSI_STATE_SELECT_COMMAND_INIT:
            if ((battleType & BATTLE_TYPE_DOUBLES) && !(battleType & BATTLE_TYPE_MULTI) && (((battlerId == BATTLER_PLAYER2) && (ctx->com_seq_no[0] != SSI_STATE_14)) || ((battlerId == BATTLER_ENEMY2) && (ctx->com_seq_no[1] != SSI_STATE_14)))) {
                break;
            }
            if (ctx->no_reshuffle_client & MaskOfFlagNo(battlerId)) {
                ctx->com_seq_no[battlerId] = SSI_STATE_13;
                ctx->playerActions[battlerId][0] = CONTROLLER_COMMAND_40;
                break;
            } else if (Battler_CanSelectAction(ctx, battlerId) == 0) {
                ctx->oneTurnFlag[battlerId].pp_dec_flag = 1;
                ctx->com_seq_no[battlerId] = SSI_STATE_13;
                ctx->playerActions[battlerId][0] = CONTROLLER_COMMAND_FIGHT_INPUT;
                break;
            }

            if ((ov12_02261264(bsys->opponentData[battlerId]) == 1) || (ctx->total_turn)) {
                BattleController_EmitSetCommandSelectionMenu(bsys, ctx, battlerId, ctx->sel_mons_no[battlerId]);
                ctx->com_seq_no[battlerId] = SSI_STATE_1;
            } else {
                ctx->com_seq_no[battlerId] = SSI_STATE_2;
            }
            break;
        case SSI_STATE_2: {
            int battlerIdCheck;

            for (battlerIdCheck = 0; battlerIdCheck < battlersMax; battlerIdCheck++) {
                if (battlerIdCheck == battlerId) {
                    continue;
                }

                if (ov12_02261264(bsys->opponentData[battlerIdCheck]) != 0x1) {
                    continue;
                }

                if (ctx->com_seq_no[battlerIdCheck] != SSI_STATE_14) {
                    break;
                }
            }

            if (battlerIdCheck == battlersMax) {
                BattleController_EmitSetCommandSelectionMenu(bsys, ctx, battlerId, ctx->sel_mons_no[battlerId]);
                ctx->com_seq_no[battlerId] = SSI_STATE_1;
            } else {
                break;
            }
        }
        // fallthrough
        case SSI_STATE_1:
            if (BattleBuffer_GetNext(ctx, battlerId)) {
                ctx->playerActions[battlerId][3] = ctx->server_buffer[battlerId][0];

                if (battleType & BATTLE_TYPE_PAL_PARK) {
                    switch (BattleBuffer_GetNext(ctx, battlerId)) {
                    case 1:
                        ctx->com_seq_no[battlerId] = SSI_STATE_END;
                        ctx->ret_seq_no[battlerId] = SSI_STATE_13;
                        ctx->playerActions[battlerId][0] = CONTROLLER_COMMAND_SAFARI_THROW_BALL;
                        break;
                    case 4:
                        ctx->com_seq_no[battlerId] = SSI_STATE_END;
                        ctx->ret_seq_no[battlerId] = SSI_STATE_13;
                        ctx->playerActions[battlerId][0] = CONTROLLER_COMMAND_RUN_INPUT;
                        break;
                    }
                } else if (battleType & BATTLE_TYPE_SAFARI) {
                    switch (BattleBuffer_GetNext(ctx, battlerId)) {
                    case 1:
                        ctx->com_seq_no[battlerId] = SSI_STATE_END;
                        ctx->ret_seq_no[battlerId] = SSI_STATE_13;
                        ctx->playerActions[battlerId][0] = CONTROLLER_COMMAND_SAFARI_THROW_BALL;
                        break;
                    case 2:
                        ctx->com_seq_no[battlerId] = SSI_STATE_END;
                        ctx->ret_seq_no[battlerId] = SSI_STATE_13;
                        ctx->playerActions[battlerId][0] = CONTROLLER_COMMAND_SAFARI_THROW_BAIT;
                        break;
                    case 3:
                        ctx->com_seq_no[battlerId] = SSI_STATE_END;
                        ctx->ret_seq_no[battlerId] = SSI_STATE_13;
                        ctx->playerActions[battlerId][0] = CONTROLLER_COMMAND_SAFARI_THROW_MUD;
                        break;
                    case 4:
                        ctx->com_seq_no[battlerId] = SSI_STATE_END;
                        ctx->ret_seq_no[battlerId] = SSI_STATE_13;
                        ctx->playerActions[battlerId][0] = CONTROLLER_COMMAND_RUN_INPUT;
                        break;
                    case 5:
                        ctx->com_seq_no[battlerId] = SSI_STATE_END;
                        ctx->com_seq_no[battlerId] = SSI_STATE_13;
                        ctx->playerActions[battlerId][0] = CONTROLLER_COMMAND_SAFARI_WATCHING;
                        break;
                    }
                } else {
                    if (BattleBuffer_GetNext(ctx, battlerId) != 0xff) {
                        ctx->rec_select_flag[battlerId] |= 0x1;
                    }

                    switch (BattleBuffer_GetNext(ctx, battlerId)) {
                    case BATTLE_INPUT_FIGHT:
                        if (StruggleCheck(bsys, ctx, battlerId, 0, 0xffffffff) == 15) {
                            ctx->oneTurnFlag[battlerId].struggle_flag = 1;

                            if (BattleWorkBattleStatusFlagGet(bsys) & BATTLE_SPECIAL_RECORDING) {
                                ctx->com_seq_no[battlerId] = SSI_STATE_13;
                            } else {
                                ctx->com_seq_no[battlerId] = SSI_STATE_END;
                                ctx->ret_seq_no[battlerId] = SSI_STATE_NO_MOVES;
                            }
                        } else {
                            ctx->com_seq_no[battlerId] = SSI_STATE_3;
                        }

                        ctx->playerActions[battlerId][0] = CONTROLLER_COMMAND_FIGHT_INPUT;
                        break;
                    case BATTLE_INPUT_BAG:
                        if (BattleTypeGet(bsys) & BATTLE_TYPE_BUG_CONTEST) {
                            ctx->com_seq_no[battlerId] = SSI_STATE_END;
                            ctx->ret_seq_no[battlerId] = SSI_STATE_13;
                            ctx->playerActions[battlerId][0] = CONTROLLER_COMMAND_CATCHING_CONSTEST_THROW_BALL;
                        } else if (BattleTypeGet(bsys) & BATTLE_TYPES_WITHOUT_ITEMS) {
                            msg.id = BATTLE_MSG_ITEMS_CANT_BE_USED_HERE; // Items can't be used here
                            msg.tag = TAG_NONE;
                            ov12_022639B8(bsys, battlerId, msg);
                            ctx->com_seq_no[battlerId] = SSI_STATE_15;
                            ctx->ret_seq_no[battlerId] = SSI_STATE_SELECT_COMMAND_INIT;
                        } else {
                            ctx->playerActions[battlerId][0] = CONTROLLER_COMMAND_ITEM_INPUT;
                            ctx->com_seq_no[battlerId] = 7;
                        }
                        break;
                    case BATTLE_INPUT_POKEMON:
                        ctx->playerActions[battlerId][0] = CONTROLLER_COMMAND_POKEMON_INPUT;
                        ctx->com_seq_no[battlerId] = SSI_STATE_9;
                        break;
                    case BATTLE_INPUT_RUN:
                        ctx->playerActions[battlerId][0] = CONTROLLER_COMMAND_RUN_INPUT;
                        ctx->com_seq_no[battlerId] = SSI_STATE_11;
                        break;
                    case BATTLE_INPUT_CANCEL:
                        if (battleType & BATTLE_TYPE_LINK) {
                            BattleController_EmitStopGaugeAnimation(bsys, battlerId);
                            ctx->com_seq_no[battlerId] = SSI_STATE_SELECT_COMMAND_INIT;
                            ctx->com_seq_no[BattleWorkPartnerClientNoGet(bsys, battlerId)] = 0;
                        } else if ((battleType & BATTLE_TYPE_DOUBLES) && (battlerId == BATTLER_PLAYER2)) {
                            BattleController_EmitStopGaugeAnimation(bsys, battlerId);
                            ctx->com_seq_no[0] = SSI_STATE_SELECT_COMMAND_INIT;
                            ctx->com_seq_no[2] = SSI_STATE_SELECT_COMMAND_INIT;
                        }
                        break;
                    }
                }
            }
            break;
        case SSI_STATE_3:
            BattleController_EmitShowMoveSelectMenu(bsys, ctx, battlerId);
            ctx->com_seq_no[battlerId] = SSI_STATE_4;
            // fallthrough
        case SSI_STATE_4:
            if (BattleBuffer_GetNext(ctx, battlerId) == 0xff) {
                ctx->com_seq_no[battlerId] = SSI_STATE_SELECT_COMMAND_INIT;
            } else if (BattleBuffer_GetNext(ctx, battlerId)) {
                if ((ctx->server_buffer[battlerId][0] - 1) == BATTLE_INPUT_RUN) {
                    ctx->playerActions[battlerId][0] = CONTROLLER_COMMAND_RUN_INPUT;
                    ctx->com_seq_no[battlerId] = SSI_STATE_11;
                    break;
                } else if (ov12_02251A28(bsys, ctx, battlerId, ctx->server_buffer[battlerId][0] - 1, &msg) == 0) {
                    if (BattleWorkBattleStatusFlagGet(bsys) & BATTLE_SPECIAL_RECORDING) {
                        ov12_0223BFFC(bsys, 1);
                        BattleController_TryEmitExitRecording(bsys, ctx);
                    } else {
                        ov12_022639B8(bsys, battlerId, msg);
                        ctx->com_seq_no[battlerId] = SSI_STATE_15;
                        ctx->ret_seq_no[battlerId] = SSI_STATE_3;
                    }
                } else {
                    ctx->playerActions[battlerId][2] = ctx->server_buffer[battlerId][0];
                    ctx->waza_no_pos[battlerId] = ctx->server_buffer[battlerId][0] - 1;
                    ctx->waza_no_select[battlerId] = ctx->battlemon[battlerId].move[ctx->waza_no_pos[battlerId]];
                    ctx->com_seq_no[battlerId] = SSI_STATE_5;
                    ctx->rec_select_flag[battlerId] |= 0x2;
                }
            }
            break;
        case SSI_STATE_5: {
            int out;

            if (ov12_0224DB64(bsys, ctx, battlerId, battleType, &out, ctx->waza_no_pos[battlerId], &ctx->playerActions[battlerId][1])) {
                BattleCommand_EmitShowTargetSelectMenu(bsys, ctx, out, battlerId);
                ctx->com_seq_no[battlerId] = SSI_STATE_6;
            } else {
                ctx->com_seq_no[battlerId] = SSI_STATE_13;
            }
            break;
        }
        case SSI_STATE_6:
            if (BattleBuffer_GetNext(ctx, battlerId) == 0xff) {
                ctx->com_seq_no[battlerId] = SSI_STATE_3;
            } else if (BattleBuffer_GetNext(ctx, battlerId)) {
                ctx->playerActions[battlerId][1] = ctx->server_buffer[battlerId][0] - 1;
                ctx->com_seq_no[battlerId] = SSI_STATE_13;

                ctx->rec_select_flag[battlerId] |= 0x4;
            }
            break;
        case SSI_STATE_7:
            BattleController_EmitShowBagMenu(bsys, ctx, battlerId);
            ctx->com_seq_no[battlerId] = SSI_STATE_8;
            FALLTHROUGH;
        case SSI_STATE_8:
            if (BattleBuffer_GetNext(ctx, battlerId) == 0xff) {
                ctx->com_seq_no[battlerId] = SSI_STATE_SELECT_COMMAND_INIT;
            } else if (BattleBuffer_GetNext(ctx, battlerId)) {
                u32 *unkPtr;

                unkPtr = (u32 *)&ctx->server_buffer[battlerId][0];
                ctx->playerActions[battlerId][2] = unkPtr[0];
                ctx->com_seq_no[battlerId] = SSI_STATE_13;
            }
            break;
        case SSI_STATE_9: // switching..?
        {
            int v8;
            int v9 = 6;
            int partnerId;

            v8 = BattlerCanSwitch(bsys, ctx, battlerId);

            if (((ov12_0223AB0C(bsys, battlerId) == 4) || (ov12_0223AB0C(bsys, battlerId) == 5)) && ((battleType == (BATTLE_TYPE_TRAINER | BATTLE_TYPE_DOUBLES)) || (battleType == (BATTLE_TYPE_TRAINER | BATTLE_TYPE_DOUBLES | BATTLE_TYPE_LINK)) || (battleType == (BATTLE_TYPE_TRAINER | BATTLE_TYPE_DOUBLES | BATTLE_TYPE_FRONTIER)) || ((battleType == (BATTLE_TYPE_TRAINER | BATTLE_TYPE_DOUBLES | BATTLE_TYPE_TAG)) && (ov12_0223AB0C(bsys, battlerId) == 4)))) {
                partnerId = BattleWorkPartnerClientNoGet(bsys, battlerId);

                if (ctx->playerActions[partnerId][0] == CONTROLLER_COMMAND_POKEMON_INPUT) {
                    v9 = ctx->playerActions[partnerId][2];
                }
            }

            BattleController_EmitShowMonList(bsys, ctx, battlerId, 0, v8, v9);
            ctx->com_seq_no[battlerId] = SSI_STATE_10;
        }
        // fallthrough
        case SSI_STATE_10:
            if (BattleBuffer_GetNext(ctx, battlerId) == 0xff) {
                ctx->com_seq_no[battlerId] = SSI_STATE_SELECT_COMMAND_INIT;
            } else if (BattleBuffer_GetNext(ctx, battlerId)) {
                ctx->playerActions[battlerId][2] = ctx->server_buffer[battlerId][0] - 1;
                ctx->reshuffle_sel_mons_no[battlerId] = ctx->server_buffer[battlerId][0] - 1;
                ctx->com_seq_no[battlerId] = SSI_STATE_13;
            }
            break;
        case SSI_STATE_11: // Flee after a mon fainted..?
            if (battleType & BATTLE_TYPE_TOTEM) {
                msg.tag = TAG_NONE;
                msg.id = BATTLE_MSG_CANT_FLEE_THIS_FIGHT; // Can't flee this fight!
                ov12_022639B8(bsys, battlerId, msg);
                ctx->com_seq_no[battlerId] = SSI_STATE_15;
                ctx->ret_seq_no[battlerId] = SSI_STATE_SELECT_COMMAND_INIT;
            } else if (battleType & BATTLE_TYPE_FRONTIER) {
                BattleController_EmitShowYesNoMenu(bsys, ctx, battlerId, 955, 0, 0, 0);
                ctx->com_seq_no[battlerId] = SSI_STATE_12;
            } else if ((battleType & BATTLE_TYPE_TRAINER) && !(battleType & BATTLE_TYPE_LINK)) {
                if (BattleWorkBattleStatusFlagGet(bsys) & BATTLE_SPECIAL_RECORDING) {
                    ov12_0223BFFC(bsys, 1);
                    BattleController_TryEmitExitRecording(bsys, ctx);
                } else {
                    msg.tag = TAG_NONE;
                    msg.id = BATTLE_MSG_NO_RUNNING_FROM_TRAINER; // There's no running from a Trainer battle!
                    ov12_022639B8(bsys, battlerId, msg);
                    ctx->com_seq_no[battlerId] = SSI_STATE_15;
                    ctx->ret_seq_no[battlerId] = SSI_STATE_SELECT_COMMAND_INIT;
                }
            } else if (CantEscape(bsys, ctx, battlerId, &msg)) {
                if (BattleWorkBattleStatusFlagGet(bsys) & BATTLE_SPECIAL_RECORDING) {
                    ov12_0223BFFC(bsys, 1);
                    BattleController_TryEmitExitRecording(bsys, ctx);
                } else {
                    ov12_022639B8(bsys, battlerId, msg);
                    ctx->com_seq_no[battlerId] = SSI_STATE_15;
                    ctx->ret_seq_no[battlerId] = SSI_STATE_SELECT_COMMAND_INIT;
                }
            } else {
                ctx->com_seq_no[battlerId] = SSI_STATE_12;
            }
            break;
        case SSI_STATE_12:
            if (battleType & BATTLE_TYPE_FRONTIER) {
                if (BattleBuffer_GetNext(ctx, battlerId)) {
                    if (BattleBuffer_GetNext(ctx, battlerId) == 0xff) {
                        ctx->com_seq_no[battlerId] = SSI_STATE_SELECT_COMMAND_INIT;
                    } else {
                        ctx->com_seq_no[battlerId] = SSI_STATE_13;
                    }
                }
            } else {
                ctx->com_seq_no[battlerId] = SSI_STATE_13;
            }

            if ((battleType & BATTLE_TYPE_DOUBLES) && !(battleType & BATTLE_TYPE_MULTI) && (ctx->com_seq_no[battlerId] == 13)) {
                ctx->com_seq_no[BattleWorkPartnerClientNoGet(bsys, battlerId)] = SSI_STATE_13;
            }
            break;
        case SSI_STATE_13: // WIFI wait for partner to make a move..?
            BattleController_EmitStopGaugeAnimation(bsys, battlerId);

            if (battleType == (BATTLE_TYPE_TRAINER | BATTLE_TYPE_DOUBLES | BATTLE_TYPE_LINK)) {
                int partnerId;

                partnerId = BattleWorkPartnerClientNoGet(bsys, battlerId);

                if (ctx->com_seq_no[partnerId] == SSI_STATE_14) {
                    BattleController_EmitShowWaitMessage(bsys, battlerId);
                }
            } else {
                BattleController_EmitShowWaitMessage(bsys, battlerId);
            }

            ctx->com_seq_no[battlerId] = SSI_STATE_14;
            FALLTHROUGH;
        case SSI_STATE_14:
            var++; // this might be counting the number of players who have selected their final action?
            break;
        case SSI_STATE_15:
            if (BattleBuffer_GetNext(ctx, battlerId)) {
                BattleBuffer_Clear(ctx, battlerId);
                ctx->com_seq_no[battlerId] = ctx->ret_seq_no[battlerId];
            }
            break;
        case SSI_STATE_NO_MOVES:
            msg.tag = TAG_NICKNAME;
            msg.id = BATTLE_MSG_NO_MOVES_LEFT; // Spheal has no moves left!
            msg.param[0] = CreateNicknameTag(ctx, battlerId);
            ov12_022639B8(bsys, battlerId, msg);
            ctx->com_seq_no[battlerId] = SSI_STATE_15;
            ctx->ret_seq_no[battlerId] = SSI_STATE_13;
            break;
        case SSI_STATE_END:
            BattleController_EmitClearTouchScreen(bsys, battlerId);
            ctx->com_seq_no[battlerId] = ctx->ret_seq_no[battlerId];
            break;
        }
    }

    if (var == battlersMax) {
        ov12_0224E414(bsys, ctx);
        ov12_02237ED0(bsys, 0);

        ctx->server_seq_no = CONTROLLER_COMMAND_CALC_EXECUTION_ORDER;

        for (battlerId = 0; battlerId < battlersMax; battlerId++) {
            if (ctx->playerActions[battlerId][0] == CONTROLLER_COMMAND_POKEMON_INPUT) {
                ov12_02256F78(bsys, ctx, battlerId, ctx->reshuffle_sel_mons_no[battlerId]);
            }
        }
    }
}
