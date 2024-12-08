#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/file.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/types.h"

// TODO: https://bulbapedia.bulbagarden.net/wiki/Ignoring_Abilities#Ignorable_Abilities
/*

Abilities are only ignored while the move is being executed. They take effect again immediately after its execution.

    Abilities that prevent status conditions (such as Immunity and Oblivious) will not protect the Pokémon from receiving the status condition. However, many of these Abilities also have effects to cure the Pokémon of the status condition if afflicted, which will activate immediately after being inflicted with the status condition, even if it was inflicted while the Ability was being ignored.
    If a Pokémon with Own Tempo consumes a held Berry that may cause confusion in response to the move that ignores Abilities, it will become confused if it dislikes the flavor. However, Own Tempo will then activate and cure it of confusion.

*/

/**
 *  @brief checks if the given move should be weakened or not (only prints message)
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param defender client that is getting targeted
 *  @return TRUE/FALSE
 */
static BOOL CheckStrongWindsWeaken(struct BattleSystem *bw, struct BattleStruct *sp, int defender);

static BOOL BattleController_CheckMoveAccuracy(struct BattleSystem *bsys, struct BattleStruct *ctx, int defender) {
    if (!(ctx->waza_out_check_on_off & 0x20) && defender != BATTLER_NONE && BattleSystem_CheckMoveHit(bsys, ctx, ctx->attack_client, defender, ctx->current_move_index) == TRUE) {
        return FALSE;
    }
    if (!(ctx->waza_out_check_on_off & 0x40) && defender != BATTLER_NONE && BattleSystem_CheckMoveEffect(bsys, ctx, ctx->attack_client, defender, ctx->current_move_index) == TRUE) {
        return FALSE;
    }

    if (ctx->waza_status_flag & MOVE_STATUS_FLAG_MISS) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->waza_status_flag = 0;
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_MISS;
        ctx->msg_work = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ATTACK_MISSED);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }
    return FALSE;
}

static BOOL BattleController_CheckWhirlwindFailures(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    if (ctx->moveTbl[ctx->current_move_index].effect == MOVE_EFFECT_FORCE_SWITCH) {
        // 1. Handle Dynamax
        if (ctx->battlemon[defender].is_currently_dynamaxed) {
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
            ctx->msg_work = defender;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FORCE_SWITCH_FAIL_DYNAMAX);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->moveStatusFlagForSpreadMoves[defender]= MOVE_STATUS_NO_MORE_WORK;
            return TRUE;
        }

        // 2. Handle Suction Cups
        if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_SUCTION_CUPS)) {
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
            ctx->msg_work = defender;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FORCE_SWITCH_FAIL_SUCTION_CUPS);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_NO_MORE_WORK;
            return TRUE;
        }

        // 3. Handle Ingrain
        if (ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) {
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
            ctx->msg_work = defender;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FORCE_SWITCH_FAIL_INGRAIN);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_NO_MORE_WORK;
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL BattleController_CheckMoveFailures5(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;

    int attackerCondition = ctx->battlemon[ctx->attack_client].condition;

    switch (moveEffect) {
        // Psycho Shift
        case MOVE_EFFECT_TRANSFER_STATUS:
            // Electric-type paralysis immunity
            if ((attackerCondition & STATUS_PARALYSIS && HasType(ctx, defender, TYPE_ELECTRIC))
                // Fire-type burn immunity
                || (attackerCondition & STATUS_PARALYSIS && HasType(ctx, defender, TYPE_ELECTRIC))
                // Poison / Steel-type poison / badly poison immunity
                || (attackerCondition & STATUS_POISON_ALL && (HasType(ctx, defender, TYPE_POISON) || HasType(ctx, defender, TYPE_STEEL)))) {
                ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_NOT_EFFECTIVE;
                ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
                ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
                ctx->msg_work = defender;
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_DOESNT_AFFECT);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return TRUE;
            }
            break;
        // Substitute
        case MOVE_EFFECT_SET_SUBSTITUTE:
            if (ctx->battlemon[ctx->attack_client].hp <= BattleDamageDivide(ctx->battlemon[ctx->attack_client].maxhp, 4)) {
                ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
                ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
                ctx->msg_work = defender;
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SUBSTITUTE_FAIL);
                ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
                return TRUE;
            }
            break;
        default:
            break;
    }
    return FALSE;
}

// TODO
static BOOL BattleController_CheckAromaVeil(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx UNUSED, int defender UNUSED) {
    return FALSE;
}

/**
 *  @brief checks if the given move should be weakened or not (only prints message)
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return TRUE/FALSE
 */
static BOOL CheckStrongWindsWeaken(struct BattleSystem *bw, struct BattleStruct *sp, int defender) {
    debug_printf("In CheckStrongWindsWeaken\n");
    debug_printf("defender: %d\n", defender);
    int defender_type_1 = BattlePokemonParamGet(sp, defender, BATTLE_MON_DATA_TYPE1, NULL);
    int defender_type_2 = BattlePokemonParamGet(sp, defender, BATTLE_MON_DATA_TYPE2, NULL);
    u32 move_type = GetAdjustedMoveType(sp, sp->attack_client, sp->current_move_index);
    int i = 0;

    // TODO: Check type3
    while (TypeEffectivenessTable[i][0] != 0xff) {
        if (TypeEffectivenessTable[i][0] == move_type) {
            if ((TypeEffectivenessTable[i][1] == defender_type_1) || (TypeEffectivenessTable[i][1] == defender_type_2)) {
                if ((!CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) && !CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK)
                && sp->field_condition & WEATHER_STRONG_WINDS
                && (TypeEffectivenessTable[i][2] == 20)
                && ((defender_type_1 == TYPE_FLYING) || (defender_type_2 == TYPE_FLYING)))) {
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEAKEN_MOVES_STRONG_WINDS);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                    return TRUE;
                }
            }
        }
        i++;
    }

    return FALSE;
}

void LONG_CALL __attribute__((optimize("O0"))) BattleController_BeforeMove6(struct BattleSystem *bsys, struct BattleStruct *ctx) {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
    debug_printf("In BattleController_BeforeMove6\n")
#endif

    switch (ctx->wb_seq_no) {
        case BEFORE_MOVE_STATE_MOVE_ACCURACY: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_MOVE_ACCURACY\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckMoveAccuracy);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case BEFORE_MOVE_STATE_SUBSTITUTE_BLOCKING_OTHER_EFFECTS: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_SUBSTITUTE_BLOCKING_OTHER_EFFECTS\n");
#endif

            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case BEFORE_MOVE_STATE_MIRROR_ARMOR: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_MIRROR_ARMOR\n");
#endif

            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_ROAR_WHIRLWIND_INTO_DYNAMAXED_TARGET: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_ROAR_WHIRLWIND_INTO_DYNAMAXED_TARGET\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckWhirlwindFailures);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case BEFORE_MOVE_STATE_MOVE_FAILURES_4: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_MOVE_FAILURES_4\n");
#endif

            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_MOVE_FAILURES_5: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_MOVE_FAILURES_5\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckMoveFailures5);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_AROMA_VEIL: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_AROMA_VEIL\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckAromaVeil);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_TRIGGER_STRONG_WINDS: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_TRIGGER_STRONG_WINDS\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, CheckStrongWindsWeaken);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_CONSUME_DAMAGE_REDUCING_BERRY: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_CONSUME_DAMAGE_REDUCING_BERRY\n");
#endif

            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_END: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_END\n");
#endif

            // TODO: move it to the end of TryMove after the entire overhaul, but this works perfectly fine here
            if (IsValidParentalBondMove(bsys, ctx, FALSE) &&
                ctx->loop_hit_check != 0xFD) {
                ctx->multi_hit_count = 2;
                ctx->multi_hit_count_temp = 2;
                ctx->loop_hit_check = 0xFD;
                ctx->oneTurnFlag[ctx->battlerIdTemp].parental_bond_is_active = TRUE;
            } else {
                ctx->oneTurnFlag[ctx->battlerIdTemp].parental_bond_is_active = FALSE;
                ctx->wb_seq_no = 0;
            }

            ctx->wb_seq_no = BEFORE_MOVE_START;
            break;
        }
    }

    // TODO: Redirect to original TryMove
    // ctx->server_seq_no = CONTROLLER_COMMAND_25;
    ctx->server_seq_no = CONTROLLER_COMMAND_24;
    if (ctx->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) {
        ctx->server_seq_no = CONTROLLER_COMMAND_26;
    } else {
        ctx->server_status_flag2 |= BATTLE_STATUS2_MOVE_SUCCEEDED;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;  // execute the move
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_MOVE_SEQ, ctx->current_move_index);
        ctx->next_server_seq_no = CONTROLLER_COMMAND_24;  // after that
        ST_ServerTotteokiCountCalc(bsys, ctx);              // 801B570h
    }
    ST_ServerMetronomeBeforeCheck(bsys, ctx);  // 801ED20h
}
