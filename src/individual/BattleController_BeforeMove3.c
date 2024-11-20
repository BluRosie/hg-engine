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

static BOOL BattleController_CheckProtect(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    if (ctx->oneTurnFlag[defender].mamoru_flag
        && ctx->moveTbl[ctx->current_move_index].flag & (1 << 1)
        && (ctx->current_move_index != MOVE_CURSE || CurseUserIsGhost(ctx, ctx->current_move_index, ctx->attack_client) == TRUE)
        && (!CheckMoveIsChargeMove(ctx, ctx->current_move_index) || ctx->server_status_flag & BATTLE_STATUS_CHARGE_MOVE_HIT)) {
        UnlockBattlerOutOfCurrentMove(bsys, ctx, ctx->attack_client);
        ctx->battlerIdTemp = defender;
        ctx->moveStatusFlagForSpreadMoves[defender] = WAZA_STATUS_FLAG_MAMORU_NOHIT;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_PROTECTED);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }
    return FALSE;
}

static BOOL BattleController_CheckPsychicTerrain(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    // Handle Psychic Terrain
    // Block any natural priority move or a move made priority by an ability, if the terrain is Psychic Terrain
    // Courtesy of Dray (https://github.com/Drayano60)
    if (ctx->terrainOverlay.type == PSYCHIC_TERRAIN && ctx->terrainOverlay.numberOfTurnsLeft > 0 && MoldBreakerIsClientGrounded(ctx, ctx->attack_client, defender)) {
        if (adjustedMoveHasPositivePriority(ctx, ctx->attack_client) && CurrentMoveShouldNotBeExemptedFromPriorityBlocking(ctx, ctx->attack_client, defender) && ((ctx->attack_client & 1) != (defender & 1))) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->battlerIdTemp = defender;
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_NO_MORE_WORK;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_PSYCHIC_TERRAIN_PROTECTION);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
        }
    }
    return FALSE;
}


// TODO: Handle Smack Down, Ingrain
static BOOL BattleController_CheckTelekinesis(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    // TODO: this to my knowledge handle base species, and does not consider transformed species, which is correct. Requires verifying
    int defenderSpecies = ctx->battlemon[defender].species;
    int defenderForm = ctx->battlemon[defender].form_no;
    if (((defenderSpecies == SPECIES_GENGAR && defenderForm == 1) || defenderSpecies == SPECIES_DIGLETT || defenderSpecies == SPECIES_DUGTRIO || defenderSpecies == SPECIES_SANDYGAST || defenderSpecies == SPECIES_PALOSSAND)
    || ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_FAILED;
        ctx->battlerIdTemp = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BUT_IT_FAILED_SPREAD);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }
    return FALSE;
}

static BOOL CalcDamageAndSetMoveStatusFlags(struct BattleSystem *bsys, struct BattleStruct *ctx, int defender) {
    if ((ctx->moveTbl[ctx->current_move_index].target != MOVE_TARGET_USER && ctx->moveTbl[ctx->current_move_index].target != MOVE_TARGET_USER_SIDE && ctx->moveTbl[ctx->current_move_index].power != 0 && !(ctx->server_status_flag & BATTLE_STATUS_IGNORE_TYPE_IMMUNITY) && !(ctx->server_status_flag & BATTLE_STATUS_CHARGE_TURN)) || ctx->current_move_index == MOVE_THUNDER_WAVE) {
        // TODO: Probably wrong?
        u32 temp = ctx->moveStatusFlagForSpreadMoves[defender];
        ServerDoTypeCalcMod(bsys, ctx, ctx->current_move_index, ctx->move_type, ctx->attack_client, defender, ctx->damageForSpreadMoves[defender], &temp);
        ctx->moveStatusFlagForSpreadMoves[defender] = temp;
        if (ctx->moveStatusFlagForSpreadMoves[defender] & MOVE_STATUS_FLAG_NOT_EFFECTIVE) {
            ctx->moveOutCheck[ctx->attack_client].stoppedFromIneffective = TRUE;
        }
    }
    return FALSE;
}

// TODO: check message/subscript correctness, move damage out
static BOOL BattleController_CheckTypeImmunity(struct BattleSystem *bsys, struct BattleStruct *ctx, int defender) {
    if (!(ctx->waza_out_check_on_off & 2) && ctx->defence_client != 0xFF && CalcDamageAndSetMoveStatusFlags(bsys, ctx, defender) == TRUE) {
        return FALSE;
    }
    if (ctx->moveStatusFlagForSpreadMoves[defender] & MOVE_STATUS_FLAG_NOT_EFFECTIVE) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->battlerIdTemp = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_DOESNT_AFFECT);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }
    return FALSE;
}

static BOOL BattleController_CheckLevitate(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    if ((MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_LEVITATE) == TRUE) && (ctx->move_type == TYPE_GROUND)
        // iron ball halves speed and grounds
        && (HeldItemHoldEffectGet(ctx, defender) != HOLD_EFFECT_SPEED_DOWN_GROUNDED)) {
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_LEVITATE_MISS;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->battlerIdTemp = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_LEVITATE_FAIL);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }
    return FALSE;
}

void LONG_CALL __attribute__((optimize("O0"))) BattleController_BeforeMove3(struct BattleSystem *bsys, struct BattleStruct *ctx) {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
    debug_printf("In BattleController_BeforeMove3\n")
#endif
    
    switch (ctx->wb_seq_no) {
        case BEFORE_MOVE_STATE_PSYCHIC_TERRAIN: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_PSYCHIC_TERRAIN\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckPsychicTerrain);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case BEFORE_MOVE_STATE_TEAMMATE_PROTECTION: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_TEAMMATE_PROTECTION\n");
#endif

            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_PROTECT_AND_FRIENDS: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_PROTECT_AND_FRIENDS\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckProtect);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case BEFORE_MOVE_STATE_MAT_BLOCK: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_MAT_BLOCK\n");
#endif

            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case BEFORE_MOVE_STATE_MAX_GUARD: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_MAX_GUARD\n");
#endif

            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO: split ServerWazaKoyuuCheck function, modernise
        case BEFORE_MOVE_STATE_MAGIC_COAT: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_MAGIC_COAT\n");
#endif

            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_TELEKINESIS_FAILURES: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_TELEKINESIS_FAILURES\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckTelekinesis);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO: split ServerWazaKoyuuCheck function, modernise
        case BEFORE_MOVE_STATE_MAGIC_BOUNCE: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_MAGIC_BOUNCE\n");
#endif

            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO: check correctness, handle Wonder Guard here, rewrite it ourselves
        case BEFORE_MOVE_STATE_ABILITY_FAILURES_2: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_ABILITY_FAILURES_2\n");
#endif
            if (!(ctx->waza_out_check_on_off & 0x10) && ctx->defence_client != 0xFF && ov12_0224BC2C(bsys, ctx) == TRUE) {
                return;
            }
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO: check correctness, rewrite it ourselves
        case BEFORE_MOVE_STATE_TYPE_CHART_IMMUNITY: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_TYPE_CHART_IMMUNITY\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckTypeImmunity);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_LEVITATE: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_LEVITATE\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckLevitate);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
    }
}
