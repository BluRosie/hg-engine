#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/types.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/constants/file.h"
#include "../../include/overlay.h"

/**
 * Platinum version as reference
 * BattleController_MoveEnd
 * https://github.com/pret/pokeplatinum/blob/447c17a0f12b4a7656dded8aaa6e41ae9694cd09/src/battle/battle_controller.c#L3965
 */
void LONG_CALL BattleController_MoveEndInternal(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    // debug_printf("In BattleController_MoveEnd\n");
    int script;
    u32 battleType = BattleTypeGet(bsys);

    if (!(battleType & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK))) {
        if (AbilityStatusRecoverCheck(bsys, ctx, ctx->attack_client, 0) == TRUE) {
            return;
        }
        // BATTLER_NONE
        if (ctx->defence_client != 0xFF && AbilityStatusRecoverCheck(bsys, ctx, ctx->defence_client, 0) == TRUE) {
            return;
        }
        if (ov12_0224DD18(ctx, ctx->server_seq_no, ctx->server_seq_no) == TRUE) {
            return;
        }
        if (ov12_0224D7EC(bsys, ctx) == TRUE) {
            return;
        }

        // Handle Sparkling Aria
        if (ctx->current_move_index == MOVE_SPARKLING_ARIA && ctx->battlemon[ctx->attack_client].sheer_force_flag == 0) {
            int i;
            int numberOfClientsHitBySparklingAria = 0;
            int client_no = 0;  // initialize
            int client_set_max = BattleWorkClientSetMaxGet(bsys);

            // Count how many mons were hit by Sparkling Aria
            for (i = 0; i < client_set_max; i++) {
                client_no = ctx->turnOrder[i];
                if (ctx->oneSelfFlag[client_no].special_damager == ctx->attack_client) {
                    numberOfClientsHitBySparklingAria++;
                }
            }

            // Heal Burn loop
            for (i = 0; i < client_set_max; i++) {
                client_no = ctx->turnOrder[i];
                if ((ctx->oneSelfFlag[client_no].special_damager == ctx->attack_client)
                && (ctx->battlemon[client_no].condition & STATUS_BURN)
                && (ctx->battlemon[client_no].hp)) {
                    if (numberOfClientsHitBySparklingAria > 1 || GetBattlerAbility(ctx, client_no) != ABILITY_SHIELD_DUST) {
                        ctx->battlerIdTemp = client_no;
                        LoadBattleSubSeqScript(ctx, 1, SUB_SEQ_HEAL_TARGET_BURN);
                        ctx->next_server_seq_no = ctx->server_seq_no;
                        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                        return;
                    }
                }
            }
        }

        // TODO: A rampage move that fails (Thrash, Outrage etc) will cancel except on the last turn
        if (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_RAMPAGE_TURNS && !ctx->oneTurnFlag[ctx->attack_client].rampageProcessedFlag) {
                ctx->oneTurnFlag[ctx->attack_client].rampageProcessedFlag = 1;
                ctx->battlemon[ctx->attack_client].condition2 -= 1 << 10;
                if (ov12_02252218(ctx, ctx->attack_client)) { // come back to this
                    ctx->battlemon[ctx->attack_client].condition2 &= ~STATUS2_RAMPAGE_TURNS;
                } else if (!(ctx->battlemon[ctx->attack_client].condition2 & STATUS2_RAMPAGE_TURNS) && !(ctx->battlemon[ctx->attack_client].condition2 & STATUS2_CONFUSION)) {
                    ctx->state_client = ctx->attack_client;
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_THRASH_END);
                    ctx->next_server_seq_no = ctx->server_seq_no;
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                    return;
                }
            }

        // If the user's next move is not Electric-type, Charge no longer wears off, and instead remains active for the next move that is.
        // However, if the user attempted to use an Electric-type move,
        // Charge will still wear off even if a condition prevented the move from being used, such as being asleep or flinching.
        // TODO: Refactor this
        int move_type = GetAdjustedMoveType(ctx, ctx->attack_client, ctx->current_move_index);
        if (ctx->battlemon[ctx->attack_client].moveeffect.isCharged && move_type == TYPE_ELECTRIC && !ctx->oneTurnFlag[ctx->attack_client].chargeProcessedFlag) {
            if (--ctx->battlemon[ctx->attack_client].moveeffect.isCharged == 0) {
                    ctx->battlemon[ctx->attack_client].effect_of_moves &= ~MOVE_EFFECT_FLAG_CHARGE;
                }
                ctx->oneTurnFlag[ctx->attack_client].chargeProcessedFlag = 1;
        }

        switch (GetBattlerAbility(ctx, ctx->attack_client)) {
            case ABILITY_BEAST_BOOST:
                if (ctx->oneTurnFlag[ctx->attack_client].numberOfKOs) {
                    u8 stat = BeastBoostGreatestStatHelper(ctx, ctx->attack_client);

                    if ((ctx->battlemon[ctx->attack_client].states[STAT_ATTACK + stat] < 12) && (ctx->battlemon[ctx->attack_client].moveeffect.fakeOutCount != (ctx->total_turn + 1))) {
                        switch (ctx->oneTurnFlag[ctx->attack_client].numberOfKOs) {
                        case 1:
                            ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP + stat;
                            break;
                        case 2:
                            ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_2 + stat;
                            break;
                        case 3:
                            ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_3 + stat;
                            break;

                        default:
                            break;
                        }
                        ctx->addeffect_type = ADD_EFFECT_ABILITY;
                        ctx->state_client = ctx->attack_client;
                        LoadBattleSubSeqScript(ctx, 1, SUB_SEQ_BOOST_STATS);
                        ctx->next_server_seq_no = ctx->server_seq_no;
                        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                        ctx->oneTurnFlag[ctx->attack_client].numberOfKOs = 0;
                        return;
                    }
                }
                break;
            case ABILITY_CHILLING_NEIGH:
            case ABILITY_AS_ONE_GLASTRIER:
            case ABILITY_MOXIE:
                if (ctx->oneTurnFlag[ctx->attack_client].numberOfKOs) {
                    if (ctx->battlemon[ctx->attack_client].states[STAT_ATTACK] < 12) {
                        switch (ctx->oneTurnFlag[ctx->attack_client].numberOfKOs) {
                            case 1:
                                ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP;
                                break;
                            case 2:
                                ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_2;
                                break;
                            case 3:
                                ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_3;
                                break;

                            default:
                                break;
                        }
                        ctx->addeffect_type = ADD_EFFECT_ABILITY;
                        ctx->state_client = ctx->attack_client;
                        LoadBattleSubSeqScript(ctx, 1, SUB_SEQ_BOOST_STATS);
                        ctx->next_server_seq_no = ctx->server_seq_no;
                        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                        ctx->oneTurnFlag[ctx->attack_client].numberOfKOs = 0;
                        return;
                    }
                }
                break;
            case ABILITY_GRIM_NEIGH:
            case ABILITY_AS_ONE_SPECTRIER:
                if (ctx->oneTurnFlag[ctx->attack_client].numberOfKOs) {
                    if (ctx->battlemon[ctx->attack_client].states[STAT_SPATK] < 12) {
                        switch (ctx->oneTurnFlag[ctx->attack_client].numberOfKOs) {
                            case 1:
                                ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_SP_ATK_UP;
                                break;
                            case 2:
                                ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_SP_ATK_UP_2;
                                break;
                            case 3:
                                ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_SP_ATK_UP_3;
                                break;

                            default:
                                break;
                        }
                        ctx->addeffect_type = ADD_EFFECT_ABILITY;
                        ctx->state_client = ctx->attack_client;
                        LoadBattleSubSeqScript(ctx, 1, SUB_SEQ_BOOST_STATS);
                        ctx->next_server_seq_no = ctx->server_seq_no;
                        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                        ctx->oneTurnFlag[ctx->attack_client].numberOfKOs = 0;
                        return;
                    }
                }
                break;
            case ABILITY_BATTLE_BOND:
                if (ctx->oneTurnFlag[ctx->attack_client].numberOfKOs) {
                    if (ctx->battlemon[ctx->attack_client].species == SPECIES_GRENINJA
                    && ctx->battlemon[ctx->attack_client].form_no == 1
                    && ctx->onceOnlyAbilityFlags[SanitizeClientForTeamAccess(bsys, ctx->attack_client)][ctx->sel_mons_no[ctx->attack_client]].battleBondFlag == FALSE) {
                        ctx->onceOnlyAbilityFlags[SanitizeClientForTeamAccess(bsys, ctx->attack_client)][ctx->sel_mons_no[ctx->attack_client]].battleBondFlag = TRUE;
                        ctx->state_client = ctx->attack_client;
                        ctx->battlerIdTemp = ctx->attack_client;
                        ctx->battlemon[ctx->attack_client].form_no = 2;
                        BattleFormChange(ctx->battlerIdTemp, ctx->battlemon[ctx->battlerIdTemp].form_no, bsys, ctx, 0);
                        LoadBattleSubSeqScript(ctx, 1, SUB_SEQ_FORM_CHANGE);
                        ctx->next_server_seq_no = ctx->server_seq_no;
                        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                        ctx->oneTurnFlag[ctx->attack_client].numberOfKOs = 0;
                        return;
                    }
                }
                break;
            default:
                ctx->oneTurnFlag[ctx->attack_client].numberOfKOs = 0;
                break;
        }

        // Reset Focus Punch flag
        ctx->oneTurnFlag[ctx->attack_client].pendingFocusPunchFlag = FALSE;

        script = SwitchInAbilityCheck(bsys, ctx);
        if (script) {
            LoadBattleSubSeqScript(ctx, 1, script);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return;
        }
        if (ov12_0224E130(bsys, ctx) == TRUE) {
            return;
        }
        ov12_0224DC0C(bsys, ctx);
    }

    ctx->oneTurnFlag[ctx->attack_client].chargeProcessedFlag = 0;
    ctx->oneTurnFlag[ctx->attack_client].rampageProcessedFlag = 0;
    // debug_printf("locked into move: %d\n", (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_LOCKED_INTO_MOVE));
    // debug_printf("BATTLE_STATUS_CHARGE_MOVE_HIT %d\n", ctx->server_status_flag & BATTLE_STATUS_CHARGE_MOVE_HIT);

    // Handle Razor Wind. Why? Beats me
    if (ctx->server_status_flag & BATTLE_STATUS_CHARGE_MOVE_HIT || (ctx->moveStatusFlagForSpreadMoves[ctx->attack_client] & MOVE_STATUS_FLAG_FAILURE_ANY)) {
        ctx->battlemon[ctx->attack_client].condition2 &= ~STATUS2_LOCKED_INTO_MOVE;
    }

    int client_set_max = BattleWorkClientSetMaxGet(bsys);

    for (int i = 0; i < client_set_max; i++) {
        ctx->moveStatusFlagForSpreadMoves[i] = 0;
        ctx->damageForSpreadMoves[i] = 0;
    }
    ctx->clientLoopForSpreadMoves = 0;
    ctx->boostedAccuracy = FALSE;
    ctx->gemBoostingMove = FALSE;

    ctx->playerActions[ctx->executionOrder[ctx->executionIndex]][0] = CONTROLLER_COMMAND_40;

    if (ctx->oneSelfFlag[ctx->attack_client].trickRoomFlag) {
        SortExecutionOrderBySpeed(bsys, ctx);
        SortMonsBySpeed(bsys, ctx);
        ctx->executionIndex = 0;
    } else {
        ctx->executionIndex++;
    }

    BattleStructureInit(ctx);

    ctx->server_seq_no = CONTROLLER_COMMAND_8;
    // debug_printf("End of BattleController_MoveEnd\n");
}
