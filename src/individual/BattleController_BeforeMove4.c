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
        ctx->msg_work = defender;
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
        ctx->msg_work = defender;
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
        ctx->msg_work = defender;
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
        ctx->damageForSpreadMoves[defender] = ServerDoTypeCalcMod(bsys, ctx, ctx->current_move_index, ctx->move_type, ctx->attack_client, defender, ctx->damageForSpreadMoves[defender], &ctx->moveStatusFlagForSpreadMoves[defender]);
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
        ctx->msg_work = defender;
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
        ctx->msg_work = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_LEVITATE_FAIL);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }
    return FALSE;
}

// TODO: Handle Telekinesis
static BOOL BattleController_CheckAirBalloonTelekinesisMagnetRise(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    if (
        (
            (ctx->battlemon[defender].moveeffect.magnetRiseTurns)
            && ((ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) == 0)
            && ((ctx->field_condition & FIELD_STATUS_GRAVITY) == 0)
            && (ctx->move_type == TYPE_GROUND)
            && (HeldItemHoldEffectGet(ctx, defender) != HOLD_EFFECT_SPEED_DOWN_GROUNDED)
        )
        ||
        (
            (HeldItemHoldEffectGet(ctx, defender) == HOLD_EFFECT_UNGROUND_DESTROYED_ON_HIT) // has air balloon
            && ((ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) == 0)
            && ((ctx->field_condition & FIELD_STATUS_GRAVITY) == 0)
            && (ctx->move_type == TYPE_GROUND)
        )
       ) {
        // TODO: if in the future the AI somehow needs to read this flag, create a new flag for Air Balloon
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_MAGNET_RISE_MISS;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->msg_work = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_DOESNT_AFFECT);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }
    return FALSE;
}

static BOOL BattleController_CheckSafetyGoggles(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    if (IsPowderMove(ctx->current_move_index) && HeldItemHoldEffectGet(ctx, ctx->defence_client) == HOLD_EFFECT_SPORE_POWDER_IMMUNITY) {
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_NOT_EFFECTIVE;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->msg_work = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SAFETY_GOGGLES);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }
    return FALSE;
}

// TODO: modernise message
static BOOL BattleController_CheckAbilityFailures3(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    // Handle Bulletproof
    if ((MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_BULLETPROOF) && IsBallOrBombMove(ctx->current_move_index))
    // Handle Sticky Hold
    || (MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_STICKY_HOLD) && (ctx->current_move_index == MOVE_TRICK || ctx->current_move_index == MOVE_SWITCHEROO || ctx->current_move_index == MOVE_CORROSIVE_GAS))) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_FAILED;
        ctx->msg_work = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SOUNDPROOF);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }
    return FALSE;
}

static BOOL BattleController_CheckTypeBasedMoveConditionImmunities1(struct BattleSystem *bsys, struct BattleStruct *ctx, int defender) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;
    int priority = GetClientActionPriority(bsys, ctx, ctx->attack_client);

    // Dark-type Prankster immunity
    if ((priority > 0 && GetBattlerAbility(ctx, ctx->attack_client) == ABILITY_PRANKSTER && HasType(ctx, defender, TYPE_DARK) && (ctx->attack_client & 1) != (defender & 1)) // used on an enemy)
    // Ghost-type immunity to trapping moves
    // TODO: handle Octolock
    || (moveEffect == MOVE_EFFECT_PREVENT_ESCAPE && HasType(ctx, defender, TYPE_GHOST))
    // Grass-type powder immunity
    || (IsPowderMove(ctx->current_move_index) && HasType(ctx, defender, TYPE_GRASS))
    // Ice-type immunity to Sheer Cold
    || (ctx->current_move_index == MOVE_SHEER_COLD && HasType(ctx, defender, TYPE_ICE))) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_NOT_EFFECTIVE;
        ctx->msg_work = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_DOESNT_AFFECT);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }
    return FALSE;
}

// TODO
static BOOL BattleController_CheckMoveFailures2(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;

    // Attract into a target with same gender / genderless
    if ((moveEffect == MOVE_EFFECT_INFATUATE && ctx->battlemon[ctx->attack_client].sex == ctx->battlemon[defender].sex)
    // TODO: Check message correctness
    // If move is Captivate, check for gender immunity
    || (moveEffect == MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER
    && ((ctx->battlemon[ctx->attack_client].sex == ctx->battlemon[defender].sex) || ctx->battlemon[ctx->attack_client].sex == POKEMON_GENDER_UNKNOWN || MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_OBLIVIOUS)))
    // Torment into Dynamax
    || (moveEffect == MOVE_EFFECT_TORMENT && ctx->battlemon[defender].is_currently_dynamaxed)) {
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_NOT_EFFECTIVE;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        return TRUE;
    }

    // TODO: Handle Venom Drench, Stat failure success check
    /*
    // Venom Drench when target is not poisoned
    if (FALSE) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
        return TRUE;
    }
    */

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

static BOOL BattleController_CheckUproarStoppingSleepMoves(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;

    if (ctx->field_condition & FIELD_STATUS_UPROAR && moveEffect == MOVE_EFFECT_STATUS_SLEEP) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_FAILED;
        ctx->msg_work = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_UPROAR_STOPPING_SLEEP_MOVES);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }

    if (ctx->field_condition & FIELD_STATUS_UPROAR && moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_FAILED;
        ctx->msg_work = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_UPROAR_STOPPING_REST);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }
    return FALSE;
}

static BOOL BattleController_CheckTerrainBlock(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;
    // TODO: Come back after terrain refactor
    if (ctx->terrainOverlay.numberOfTurnsLeft > 0) {
        switch (ctx->terrainOverlay.type) {
            case ELECTRIC_TERRAIN:
                if ((moveEffect == MOVE_EFFECT_STATUS_SLEEP || moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN) && MoldBreakerIsClientGrounded(ctx, ctx->attack_client, defender)) {
                    ctx->msg_work = defender;
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ELECTRIC_TERRAIN_PROTECTION);
                    ctx->next_server_seq_no = ctx->server_seq_no;
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                    ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_FAILED;
                    return TRUE;
                }
                break;

            case MISTY_TERRAIN:
                if ((moveEffect == MOVE_EFFECT_STATUS_SLEEP || moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN || moveEffect == MOVE_EFFECT_STATUS_PARALYZE || moveEffect == MOVE_EFFECT_STATUS_POISON || moveEffect == MOVE_EFFECT_STATUS_BADLY_POISON || moveEffect == MOVE_EFFECT_STATUS_BURN || moveEffect == MOVE_EFFECT_STATUS_CONFUSE) && MoldBreakerIsClientGrounded(ctx, ctx->attack_client, defender)) {
                    ctx->msg_work = defender;
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MISTY_TERRAIN_PROTECTION);
                    ctx->next_server_seq_no = ctx->server_seq_no;
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                    ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_FAILED;
                    return TRUE;
                }
                break;
            default:
                break;
        }
    }
    return FALSE;
}

// TODO: Handle Stat failure success check
static BOOL BattleController_CheckAbilityFailures4(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;
    BOOL hasClearBodyOrFullMetalBodyOrWhiteSmoke = MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_CLEAR_BODY) || MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_FULL_METAL_BODY) || MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_WHITE_SMOKE);

    // TODO: Check correctness
    BOOL hasFlowerVeil = MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_FLOWER_VEIL) || MoldBreakerAbilityCheck(ctx, ctx->attack_client, BATTLER_ALLY(defender), ABILITY_FLOWER_VEIL);

    int subscriptToRun = 0;

    switch (moveEffect)
    {
    case MOVE_EFFECT_ATK_DOWN:
    case MOVE_EFFECT_ATK_DOWN_2:
        if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_HYPER_CUTTER)) {
            subscriptToRun = SUB_SEQ_ATTACK_NOT_LOWERED;
            break;
        }
        if (hasFlowerVeil) {
            subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
            break;
        }
        if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
            subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
            break;
        }
        break;
    case MOVE_EFFECT_DEF_DOWN:
    case MOVE_EFFECT_DEF_DOWN_2:
        if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_BIG_PECKS)) {
            subscriptToRun = SUB_SEQ_DEFENSE_NOT_LOWERED;
            break;
        }
        if (hasFlowerVeil) {
            subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
            break;
        }
        if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
            subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
            break;
        }
        break;
    case MOVE_EFFECT_ATK_DEF_DOWN:  // Tickle
        // If the move is Tickle, first attack will drop, then Big Pecks will prevent the Defense drop.
        // If the move is Tickle, first Hyper Cutter will block the Attack drop, then Defense will drop.

        if (hasFlowerVeil) {
            subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
            break;
        }
        if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
            subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
            break;
        }
        break;
    case MOVE_EFFECT_SPEED_DOWN:
    case MOVE_EFFECT_SPEED_DOWN_2:
        if (hasFlowerVeil) {
            subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
            break;
        }
        if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
            subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
            break;
        }
        break;
    case MOVE_EFFECT_SP_ATK_DOWN:
    case MOVE_EFFECT_SP_ATK_DOWN_2:
    case MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER:
        if (hasFlowerVeil) {
            subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
            break;
        }
        if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
            subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
            break;
        }
        break;
    case MOVE_EFFECT_SP_DEF_DOWN:
    case MOVE_EFFECT_SP_DEF_DOWN_2:
        if (hasFlowerVeil) {
            subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
            break;
        }
        if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
            subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
            break;
        }
        break;
    case MOVE_EFFECT_ACC_DOWN:
    case MOVE_EFFECT_ACC_DOWN_2:
        if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_KEEN_EYE)) {
            subscriptToRun = SUB_SEQ_ACCURACY_NOT_LOWERED;
            break;
        }
        if (hasFlowerVeil) {
            subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
            break;
        }
        if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
            subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
            break;
        }
        break;
    case MOVE_EFFECT_EVA_DOWN:
    case MOVE_EFFECT_EVA_DOWN_2:
        if (hasFlowerVeil) {
            subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
            break;
        }
        if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
            subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
            break;
        }
        break;
    default:
        subscriptToRun = 0;
        break;
    }

    // TODO: Status condition-based failures, Raw Speed with non-RNG speed tie

    if (subscriptToRun) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->msg_work = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, subscriptToRun);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_NO_MORE_WORK;
        return TRUE;
    }
    return FALSE;
}

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
                || (attackerCondition & STATUS_POISON_ANY && (HasType(ctx, defender, TYPE_POISON) || HasType(ctx, defender, TYPE_STEEL)))) {
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

void LONG_CALL __attribute__((optimize("O0"))) BattleController_BeforeMove4(struct BattleSystem *bsys, struct BattleStruct *ctx) {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
    debug_printf("In BattleController_BeforeMove4\n")
#endif
    
    switch (ctx->wb_seq_no) {
        case BEFORE_MOVE_STATE_AIR_BALLOON_TELEKINESIS_MAGNET_RISE: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_AIR_BALLOON_TELEKINESIS_MAGNET_RISE\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckAirBalloonTelekinesisMagnetRise);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_SAFETY_GOGGLES: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_SAFETY_GOGGLES\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckSafetyGoggles);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_ABILITY_FAILURES_3: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_ABILITY_FAILURES_3\n");
#endif
            
            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckAbilityFailures3);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_TYPE_BASED_MOVE_CONDITION_IMMUNITIES_1: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_TYPE_BASED_MOVE_CONDITION_IMMUNITIES_1\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckTypeBasedMoveConditionImmunities1);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }    
        case BEFORE_MOVE_STATE_MOVE_FAILURES_2: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_MOVE_FAILURES_2\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckMoveFailures2);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }  
    }
}
