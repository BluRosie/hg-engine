#include "config.h"

#include "battle_controller_player.h"

#include "constants/battle_message_constants.h"
#include "constants/battle_script_constants.h"
#include "constants/file.h"
#include "constants/hold_item_effects.h"
#include "constants/item.h"
#include "constants/move_effects.h"

#include "battle.h"

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

void LONG_CALL BattleControllerPlayer_SelectionScreenInput(struct BattleSystem *bsys, struct BattleStruct *ctx)
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

void LONG_CALL BattleControllerPlayer_FightInput(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    int randomTarget = 0;
    int attacker = ctx->executionOrder[ctx->executionIndex];
    struct BattlePokemon *mon = &ctx->battlemon[attacker];

    ctx->attack_client = attacker;

    if (ctx->oneTurnFlag[attacker].struggle_flag) {
        ctx->moveNoTemp = MOVE_STRUGGLE;
        randomTarget = 1;
    } else if (mon->moveeffect.encoredMove && mon->moveeffect.encoredMove == mon->move[mon->moveeffect.encoredMoveIndex]) {
        ctx->moveNoTemp = mon->moveeffect.encoredMove;
        randomTarget = ctx->waza_no_select[attacker] != ctx->moveNoTemp
            && ctx->moveTbl[ctx->waza_no_select[attacker]].target != RANGE_SINGLE_TARGET;
    } else if (mon->moveeffect.encoredMove) {
        ctx->moveNoTemp = mon->move[mon->moveeffect.encoredMoveIndex];
        mon->moveeffect.encoredMove = MOVE_NONE;
        mon->moveeffect.encoredMoveIndex = 0;
        mon->moveeffect.encoredTurns = 0;
        randomTarget = 1;
    } else if (!Battler_CanSelectAction(ctx, attacker)) {
        ctx->moveNoTemp = ctx->waza_no_keep[attacker];
    } else {
        ctx->moveNoTemp = mon->move[ctx->waza_no_pos[attacker]];
        if (ctx->waza_no_select[attacker] != ctx->moveNoTemp) {
            randomTarget = 1;
        }
    }

    ctx->current_move_index = ctx->moveNoTemp;
    ctx->server_seq_no = CONTROLLER_COMMAND_23;
    ctx->defence_client = ov12_022506D4(bsys, ctx, attacker, ctx->moveNoTemp, randomTarget, 0);
    BattleController_EmitClearMessageBox(bsys);
}

BOOL LONG_CALL BattleContext_Main(struct BattleSystem *bsys, struct BattleStruct *ctx)
{

#ifdef DEBUG_BATTLE_SCENARIOS
    if (!ctx->hasLoadedTerrainOver && ctx->terrainOverlay.type != TERRAIN_NONE && ctx->server_seq_no >= CONTROLLER_COMMAND_SELECTION_SCREEN_INIT && bsys != NULL && bsys->bgConfig != NULL && bsys->bg_area != NULL && bsys->pal_area != NULL) {

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
    if (TestBattle_IsComplete() && !ctx->fight_end_flag) {
        BattleSystem_SetBattleOutcomeFlags(bsys, BATTLE_OUTCOME_PLAYER_FLED);
        ctx->fight_end_flag = 1;
        ctx->server_seq_no = CONTROLLER_COMMAND_44;
    }
#endif

    if (!ctx->fight_end_flag) {
        if (BattleSystem_GetBattleOutcomeFlags(bsys) && !(BattleSystem_GetBattleOutcomeFlags(bsys) & 0x40)) {
            ctx->server_seq_no = CONTROLLER_COMMAND_42;
        }
    }

    sPlayerBattleCommands[ctx->server_seq_no](bsys, ctx);
#ifdef DEBUG_BATTLE_SCENARIOS
    TestBattle_autoSelectPlayerMoves(bsys, ctx);
#endif

    if (ctx->server_seq_no == CONTROLLER_COMMAND_45) {
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
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
    }
    return ret;
}

void LONG_CALL ov12_0224D23C(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    u8 item = HeldItemHoldEffectGet(ctx, ctx->attack_client);
    if (ctx->server_status_flag & BATTLE_STATUS_CHARGE_TURN || ctx->server_status_flag2 & BATTLE_STATUS2_DISPLAY_ATTACK_MESSAGE) {
        if (item == HOLD_EFFECT_CHOICE_ATK || item == HOLD_EFFECT_CHOICE_SPEED || item == HOLD_EFFECT_CHOICE_SPATK) {
            if (!(ctx->moveNoTemp == MOVE_STRUGGLE || (ctx->moveNoTemp == MOVE_U_TURN && ctx->server_status_flag2 & BATTLE_STATUS2_UTURN) || (ctx->moveNoTemp == MOVE_BATON_PASS && ctx->server_status_flag2 & BATTLE_STATUS2_MOVE_SUCCEEDED))) {
                ctx->battlemon[ctx->attack_client].moveeffect.moveNoChoice = ctx->moveNoTemp;
            }
        } else {
            ctx->battlemon[ctx->attack_client].moveeffect.moveNoChoice = MOVE_NONE;
        }
    }

    if (!(ctx->server_status_flag & BATTLE_STATUS_NO_MOVE_SET)) {
        if (ctx->server_status_flag2 & BATTLE_STATUS2_DISPLAY_ATTACK_MESSAGE) {
            ctx->moveProtect[ctx->attack_client] = ctx->current_move_index;
            // ctx->lastSuccessfulMove = ctx->moveNoTemp; // we overwrite the previous move in MoveEnd only if successful (gen5+)
        } else {
            ctx->moveProtect[ctx->attack_client] = MOVE_NONE;
            // ctx->lastSuccessfulMove = MOVE_NONE;
        }
        if (ctx->server_status_flag2 & BATTLE_STATUS2_MOVE_SUCCEEDED) {
            ctx->waza_no_old[ctx->attack_client] = ctx->moveNoTemp;
        } else {
            ctx->waza_no_old[ctx->attack_client] = MOVE_NONE;
        }
    }

    if (ctx->server_status_flag2 & BATTLE_STATUS2_DISPLAY_ATTACK_MESSAGE) {
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
    if (ctx->moveTbl[ctx->moveNoTemp].flag & FLAG_MIRROR_MOVE
        && !(ctx->server_status_flag & BATTLE_STATUS_NO_MOVE_SET)
        && ctx->defence_client != BATTLER_NONE
        && ctx->server_status_flag2 & BATTLE_STATUS2_DISPLAY_ATTACK_MESSAGE) {
        ctx->waza_no_oumu[ctx->defence_client] = ctx->moveNoTemp;
        ctx->waza_no_oumu_hit[ctx->defence_client][ctx->attack_client] = ctx->moveNoTemp;
    }

    if (ctx->defence_client != BATTLER_NONE) {
        u8 item = HeldItemHoldEffectGet(ctx, ctx->defence_client);
        if (ctx->server_status_flag & BATTLE_STATUS_CHARGE_TURN || ctx->server_status_flag2 & BATTLE_STATUS2_DISPLAY_ATTACK_MESSAGE) {
            if (item != HOLD_EFFECT_CHOICE_ATK && item != HOLD_EFFECT_CHOICE_SPEED && item != HOLD_EFFECT_CHOICE_SPATK) {
                ctx->battlemon[ctx->defence_client].moveeffect.moveNoChoice = MOVE_NONE;
            }
        }

        if (!(ctx->server_status_flag & BATTLE_STATUS_NO_MOVE_SET)) {
            if (ctx->server_status_flag2 & BATTLE_STATUS2_DISPLAY_ATTACK_MESSAGE) {
                ctx->waza_no_hit[ctx->defence_client] = ctx->current_move_index;
                ctx->waza_no_hit_client[ctx->defence_client] = ctx->attack_client;
                ctx->waza_no_hit_type[ctx->defence_client] = moveType;
            } else {
                ctx->waza_no_hit[ctx->defence_client] = MOVE_NONE;
                ctx->waza_no_hit_client[ctx->defence_client] = BATTLER_NONE;
                ctx->waza_no_hit_type[ctx->defence_client] = 0; // Intended to be 'no type' but is technically TYPE_NORMAL.
            }

            if (ctx->server_status_flag2 & BATTLE_STATUS2_MOVE_SUCCEEDED && !(ctx->waza_status_flag & MOVE_STATUS_FAILED)) {
                switch (ctx->moveTbl[ctx->current_move_index].target) {
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
            } else {
                ctx->lastClientDamagingMove[ctx->defence_client] = MOVE_NONE;
                ctx->lastClientDamagedBy[ctx->defence_client] = BATTLER_NONE;
            }
        }
    }
}
