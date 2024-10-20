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

/*
enum {
    TRY_MOVE_START = 0,

    TRY_MOVE_STATE_CHECK_VALID_TARGET = TRY_MOVE_START,
    TRY_MOVE_STATE_TRIGGER_REDIRECTION_ABILITIES,
    TRY_MOVE_STATE_CHECK_MOVE_HITS,
    TRY_MOVE_STATE_CHECK_MOVE_HIT_OVERRIDES,
    TRY_MOVE_STATE_CHECK_TYPE_CHART,
    TRY_MOVE_STATE_TRIGGER_IMMUNITY_ABILITIES,
    TRY_MOVE_STATE_TRIGGER_STRONG_WINDS,

    TRY_MOVE_END,
};
*/

static BOOL BattleController_CheckPrimalWeather(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    // Handle Extremely Harsh Sunlight and Heavy Rain
    if (!CheckSideAbility(bsys, ctx, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) && !CheckSideAbility(bsys, ctx, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK)) {
        if ((ctx->field_condition & WEATHER_EXTREMELY_HARSH_SUNLIGHT) && (ctx->move_type == TYPE_WATER)) {
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CANCEL_WATER_MOVE);
            ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
            return TRUE;
        }

        if ((ctx->field_condition & WEATHER_HEAVY_RAIN) && (ctx->move_type == TYPE_FIRE)) {
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CANCEL_FIRE_MOVE);
            ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
            return TRUE;
        }
    }
    return FALSE;
}

static BOOL BattleController_CheckBurnUpOrDoubleShock(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int typeToCheck = 0;
    switch (ctx->current_move_index) {
        case MOVE_BURN_UP:
            typeToCheck = TYPE_FIRE;
            break;
        case MOVE_DOUBLE_SHOCK:
            typeToCheck = TYPE_ELECTRIC;
            break;

        default:
            return FALSE;
            break;
    }

    if (!HasType(ctx, ctx->attack_client, typeToCheck)) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
        return TRUE;
    }
    return FALSE;
}

// TODO: Handle Smack Down, Ingrain
// static void BattleController_CheckTelekinesis(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     // TODO: this to my knowledge handle base species, and does not consider transformed species, which is correct. Requires verifying
//     int defenderSpecies = ctx->battlemon[ctx->defence_client].species;
//     int defenderForm = ctx->battlemon[ctx->defence_client].form_no;
//     if (((defenderSpecies == SPECIES_GENGAR && defenderForm == 1) || defenderSpecies == SPECIES_DIGLETT || defenderSpecies == SPECIES_DUGTRIO || defenderSpecies == SPECIES_SANDYGAST || defenderSpecies == SPECIES_PALOSSAND)
//     || ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) {
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BUT_IT_FAILED);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//         ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
//     }
// }

// TODO: Handle Pledge moves
static BOOL BattleController_CheckInterruptibleMoves(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int effect = ctx->moveTbl[ctx->current_move_index].effect;
    if (effect == MOVE_EFFECT_HIT_IN_3_TURNS) {
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        return TRUE;
    }
    return FALSE;
}

// TODO: Check edge cases
static BOOL BattleController_CheckChargeMoves(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_LOCKED_INTO_MOVE) {
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        return TRUE;
    }
    // need to BATTLE_SUBSCRIPT_CHARGE_MOVE_CLEANUP if fail below checks???
    return FALSE;
}

// TODO: Handle doubles
static BOOL BattleController_CheckSemiInvulnerability(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (!(ctx->waza_status_flag & MOVE_STATUS_FLAG_LOCK_ON)
        && ctx->moveTbl[ctx->current_move_index].target != MOVE_TARGET_OPPONENTS_FIELD
        && ((!(ctx->server_status_flag & BATTLE_STATUS_HIT_FLY) && ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_FLYING_IN_AIR)
            || (!(ctx->server_status_flag & BATTLE_STATUS_SHADOW_FORCE) && ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_SHADOW_FORCE)
            || (!(ctx->server_status_flag & BATTLE_STATUS_HIT_DIG) && ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_DIGGING)
            || (!(ctx->server_status_flag & BATTLE_STATUS_HIT_DIVE) && ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_IS_DIVING))) {
        ctx->waza_status_flag |= WAZA_STATUS_FLAG_KIE_NOHIT;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        return TRUE;
    }
    return FALSE;
}

// TODO: check message/subscript correctness, move damage out
// static void BattleController_CheckTypeImmunity(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     if (!(ctx->waza_out_check_on_off & 2) && ctx->defence_client != 0xFF && ov12_0224B498(bsys, ctx) == TRUE) {
//         return;
//     }
//     if (ctx->waza_status_flag & MOVE_STATUS_FLAG_NOT_EFFECTIVE) {
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAIL);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//     }
// }

// static void BattleController_CheckLevitate(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     if ((MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_LEVITATE) == TRUE) && (ctx->move_type == TYPE_GROUND)
//         // iron ball halves speed and grounds
//         && (HeldItemHoldEffectGet(ctx, ctx->defence_client) != HOLD_EFFECT_SPEED_DOWN_GROUNDED)) {
//         ctx->waza_status_flag |= MOVE_STATUS_FLAG_NOT_EFFECTIVE;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAIL);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//     }
// }

// static void BattleController_CheckAirBalloonMagnetRise(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     if (
//         (
//             (ctx->battlemon[ctx->defence_client].moveeffect.magnetRiseTurns)
//             && ((ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) == 0)
//             && ((ctx->field_condition & FIELD_STATUS_GRAVITY) == 0)
//             && (ctx->move_type == TYPE_GROUND)
//             && (HeldItemHoldEffectGet(ctx, ctx->defence_client) != HOLD_EFFECT_SPEED_DOWN_GROUNDED)
//         )
//         ||
//         (
//             (HeldItemHoldEffectGet(ctx, ctx->defence_client) == HOLD_EFFECT_UNGROUND_DESTROYED_ON_HIT) // has air balloon
//             && ((ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) == 0)
//             && ((ctx->field_condition & FIELD_STATUS_GRAVITY) == 0)
//             && (ctx->move_type == TYPE_GROUND)
//         )
//        ) {
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//         ctx->waza_status_flag |= MOVE_STATUS_FLAG_MAGNET_RISE_MISS;
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAIL);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//     }
// }

static BOOL BattleController_CheckProtect(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (ctx->oneTurnFlag[ctx->defence_client].mamoru_flag
        && ctx->moveTbl[ctx->current_move_index].flag & (1 << 1)
        && (ctx->current_move_index != MOVE_CURSE || CurseUserIsGhost(ctx, ctx->current_move_index, ctx->attack_client) == TRUE)
        && (!CheckMoveIsChargeMove(ctx, ctx->current_move_index) || ctx->server_status_flag & BATTLE_STATUS_CHARGE_MOVE_HIT)) {
        UnlockBattlerOutOfCurrentMove(bsys, ctx, ctx->attack_client);
        ctx->waza_status_flag |= WAZA_STATUS_FLAG_MAMORU_NOHIT;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        return TRUE;
    }
    return FALSE;
}

// static void BattleController_CheckSafetyGoggles(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     if (IsPowderMove(ctx->current_move_index) && HeldItemHoldEffectGet(ctx, ctx->defence_client) == HOLD_EFFECT_SPORE_POWDER_IMMUNITY) {
//         ctx->waza_status_flag |= MOVE_STATUS_FLAG_NOT_EFFECTIVE;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SAFETY_GOGGLES);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//         ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
//     }
// }

// static void BattleController_CheckWhirlwindFailures(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     if (ctx->moveTbl[ctx->current_move_index].effect == MOVE_EFFECT_FORCE_SWITCH) {
//         // 1. Handle Dynamax
//         if (ctx->battlemon[ctx->defence_client].is_currently_dynamaxed) {
//             ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//             ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//             LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FORCE_SWITCH_FAIL_DYNAMAX);
//             ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//             ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//             ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
//             return;
//         }

//         // 2. Handle Suction Cups
//         if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_SUCTION_CUPS)) {
//             ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//             ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//             LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FORCE_SWITCH_FAIL_SUCTION_CUPS);
//             ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//             ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//             ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
//             return;
//         }

//         // 3. Handle Ingrain
//         if (ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) {
//             ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//             ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//             LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FORCE_SWITCH_FAIL_INGRAIN);
//             ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//             ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//             ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
//         }
//     }
// }

static BOOL BattleController_CheckMoveFailures1(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int currentMoveIndex = ctx->current_move_index;
    int moveEffect = ctx->moveTbl[currentMoveIndex].effect;
    struct BattlePokemon attackClient = ctx->battlemon[ctx->attack_client];
    struct BattlePokemon defenceClient = ctx->battlemon[ctx->defence_client];
    int cnt = GetBattlerLearnedMoveCount(bsys, ctx, ctx->attack_client);
    int move;
    int attackerAbility = GetBattlerAbility(ctx, ctx->attack_client);

    // For Sucker Punch
    if (ctx->battlemon[ctx->defence_client].moveeffect.encoredMove && ctx->battlemon[ctx->defence_client].moveeffect.encoredMove == ctx->battlemon[ctx->defence_client].move[ctx->battlemon[ctx->defence_client].moveeffect.encoredMoveIndex]) {
        move = ctx->battlemon[ctx->defence_client].moveeffect.encoredMove;
    } else {
        move = GetBattlerSelectedMove(ctx, ctx->defence_client);
    }

    // TODO: client Transformed into the correct species can use the move as well
    // Dark Void when user isn't Darkrai
    if ((currentMoveIndex == MOVE_DARK_VOID && attackClient.species != SPECIES_DARKRAI)
    // Hyperspace Fury when user isn't Hoopa
    || (currentMoveIndex == MOVE_HYPERSPACE_FURY && attackClient.species != SPECIES_HOOPA)
    // Aura Wheel when user isn't Morpeko
    || (currentMoveIndex == MOVE_AURA_WHEEL && attackClient.species != SPECIES_MORPEKO)) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CANT_USE_MOVE);
        ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
        return TRUE;
    }
    // Hyperspace Fury when user is Hoopa Confined
    if (currentMoveIndex == MOVE_HYPERSPACE_FURY
    && attackClient.species == SPECIES_HOOPA
    && attackClient.form_no == 0) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CANT_USE_MOVE_HOOPA_CONFINED);
        ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
        return TRUE;
    }

    // Aurora Veil when it is not hailing
    if ((currentMoveIndex == MOVE_AURORA_VEIL && !(ctx->field_condition & WEATHER_HAIL_ANY || ctx->field_condition & WEATHER_SNOW_ANY))
    // Clangorous Soul when user lacks HP to execute the move
    || ((currentMoveIndex == MOVE_CLANGOROUS_SOUL) && (attackClient.hp < (attackClient.maxhp / 3)))
    // Fake Out / First Impression / Mat Block after user has already performed an action
    || ((currentMoveIndex == MOVE_FAKE_OUT || currentMoveIndex == MOVE_FIRST_IMPRESSION || currentMoveIndex == MOVE_MAT_BLOCK) && attackClient.moveeffect.fakeOutCount != ctx->total_turn)
    // Follow Me / Rage Powder in singles
    || ((currentMoveIndex == MOVE_FOLLOW_ME || currentMoveIndex == MOVE_RAGE_POWDER) && !(BattleTypeGet(bsys) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE)))
    // Future Sight / Doom Desire into target that already has future attack
    || (moveEffect == MOVE_EFFECT_HIT_IN_3_TURNS && (ctx->fcc.future_prediction_count[ctx->defence_client] != 0))
    // Poltergeist when the target does not have an item
    || (currentMoveIndex == MOVE_POLTERGEIST && defenceClient.item == ITEM_NONE)
    // Sleep Talk / Snore while not asleep
    || ((moveEffect == MOVE_EFFECT_USE_RANDOM_LEARNED_MOVE_SLEEP || moveEffect == MOVE_EFFECT_DAMAGE_WHILE_ASLEEP) && !(attackClient.condition & STATUS_SLEEP))
    // Rest while user is already asleep
    || (moveEffect == MOVE_EFFECT_RECOVER_HEALTH_AND_SLEEP && attackClient.condition & STATUS_SLEEP)
    // Steel Roller when there is no Terrain
    || (currentMoveIndex == MOVE_STEEL_ROLLER && ctx->terrainOverlay.type == TERRAIN_NONE)
    // Stuff Cheeks when user doesn't have a Berry
    || (currentMoveIndex == MOVE_STUFF_CHEEKS && !IS_ITEM_BERRY(attackClient.item))
    // Stockpile with 3 Stockpiles already
    || (moveEffect == MOVE_EFFECT_STOCKPILE && attackClient.moveeffect.stockpileCount == 3)
    // Swallow / Spit Up with 0 Stockpiles
    || ((moveEffect == MOVE_EFFECT_SWALLOW || moveEffect == MOVE_EFFECT_SPIT_UP) && attackClient.moveeffect.stockpileCount == 0)
    // Last Resort when user has not used all its other moves once or user does not have Last Resort in its moveslot
    || (moveEffect == MOVE_EFFECT_FAIL_IF_NOT_USED_ALL_OTHER_MOVES && (ctx->battlemon[ctx->attack_client].moveeffect.lastResortCount < cnt - 1 || cnt < 2))
    // Sucker Punch when target doesn't have an eligible move pending
    || (moveEffect == MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING && (ctx->playerActions[ctx->defence_client][3] == CONTROLLER_COMMAND_40 || (ctx->moveTbl[move].power == 0 && !ctx->oneTurnFlag[ctx->defence_client].struggle_flag)))
    // Teleport with nothing to switch to
    || (moveEffect == MOVE_EFFECT_FLEE_FROM_WILD_BATTLE && (BattleTypeGet(bsys) & BATTLE_TYPE_TRAINER) && !CanSwitchMon(bsys, ctx, ctx->attack_client))
    // TODO: Magic Room
    // Fling / Natural Gift: Embargo or Magic Room are in effect, or ineligible held item, or no item
    || ((moveEffect == MOVE_EFFECT_FLING || moveEffect == MOVE_EFFECT_NATURAL_GIFT) && attackClient.moveeffect.embargoFlag)
    ) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
        return TRUE;
    }

    // Counter / Mirror Coat / Metal Burst when user hasn't been damaged
    // TODO: Copied from BtlCmd_Counter, BtlCmd_TryMetalBurst, contradicts existing documentation
    int battlerId;
    BOOL flag = FALSE;

    int sideA = IsClientEnemy(bsys, ctx->attack_client);
    int sideB = 0;

    switch (ctx->current_move_index) {
        case MOVE_COUNTER:
            battlerId = ctx->oneTurnFlag[ctx->attack_client].physical_damager;
            sideB = IsClientEnemy(bsys, battlerId);
            if (!(ctx->oneTurnFlag[ctx->attack_client].physical_damage[battlerId] && sideA != sideB && ctx->battlemon[battlerId].hp)) {
                flag = TRUE;
                ctx->oneSelfFlag[ctx->attack_client].no_pressure_flag = 1;
            }
            break;
        case MOVE_MIRROR_COAT:
            battlerId = ctx->oneTurnFlag[ctx->attack_client].special_damager;
            sideB = IsClientEnemy(bsys, battlerId);
            if (!(ctx->oneTurnFlag[ctx->attack_client].special_damage[battlerId] && sideA != sideB && ctx->battlemon[battlerId].hp)) {
                ctx->oneSelfFlag[ctx->attack_client].no_pressure_flag = 1;
            }
            break;
        case MOVE_METAL_BURST:
            sideB = IsClientEnemy(bsys, ctx->oneTurnFlag[ctx->attack_client].last_damage);
            if (!(ctx->oneTurnFlag[ctx->attack_client].last_damage && sideA != sideB && ctx->battlemon[ctx->oneTurnFlag[ctx->attack_client].last_damager].hp)) {
                flag = TRUE;
            }
            break;
        default:
            break;
    }

    if (flag) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
        return TRUE;
    }
    // Weight moves into Dynamax
    if (IsWeightMove(currentMoveIndex) && defenceClient.is_currently_dynamaxed) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CANT_USE_MOVE_DYNAMAX_TARGET);
        ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
        return TRUE;
    }

    // TODO: Destiny Bond when user has "Destiny Bond" Y-info volatile
    // TODO: No Retreat when user has Can't Escape flag set by No Retreat
    // TODO: Refactor random roll location - Protecting move when user failed to repeat a successive protecting move
    // TODO: Protecting move when move is the last used in the turn

    // Following has to be in order

    if (moveEffect == MOVE_EFFECT_RECOVER_HEALTH_AND_SLEEP) {
        // Rest while user is at full HP
        if (attackClient.hp == attackClient.maxhp) {
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_RESTORE_HP_FULL_FAIL);
            ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
            return TRUE;
        }
        // Rest while user has Insomnia / Vital Spirit
        if (attackerAbility == ABILITY_INSOMNIA || attackerAbility == ABILITY_VITAL_SPIRIT) {
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
            // TODO: test
            ctx->battlerIdTemp = ctx->attack_client;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_STAYED_AWAKE);
            ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
            return TRUE;
        }
    }
    return FALSE;
}

// static void BattleController_CheckMoveFailures2(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;

//     // Attract into a target with same gender / genderless
//     if ((moveEffect == MOVE_EFFECT_INFATUATE && ctx->battlemon[ctx->attack_client].sex == ctx->battlemon[ctx->defence_client].sex)
//     // TODO: Check message correctness
//     // If move is Captivate, check for gender immunity
//     || (moveEffect == MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER
//     && ((ctx->battlemon[ctx->attack_client].sex == ctx->battlemon[ctx->defence_client].sex) || ctx->battlemon[ctx->attack_client].sex == POKEMON_GENDER_UNKNOWN || MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_OBLIVIOUS)))
//     // Torment into Dynamax
//     || (moveEffect == MOVE_EFFECT_TORMENT && ctx->battlemon[ctx->defence_client].is_currently_dynamaxed)) {
//         ctx->waza_status_flag |= MOVE_STATUS_FLAG_NOT_EFFECTIVE;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAIL);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//         return;
//     }

//     // TODO: Handle Venom Drench, Stat failure success check
//     /*
//     // Venom Drench when target is not poisoned
//     if (FALSE) {
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BUT_IT_FAILED);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//         ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
//         return;
//     }
//     */
// }

// static BOOL IfAllClientsHavePerishSong(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     int battlerId;

//     int maxBattlers = BattleWorkClientSetMaxGet(bsys);

//     int cnt = 0;

//     for (battlerId = 0; battlerId < maxBattlers; battlerId++) {
//         if (ctx->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG_ACTIVE || ctx->battlemon[battlerId].hp == 0 /* || MoldBreakerAbilityCheck(ctx, ctx->attack_client, battlerId, ABILITY_SOUNDPROOF) == TRUE */) {
//             cnt++;
//         }
//     }
//     if (cnt == maxBattlers) {
//         return TRUE;
//     }

//     return FALSE;
// }

// // TODO
// static void BattleController_CheckMoveFailures3(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;

//     // But it failed
//     // Attract into a target already infatuated
//     if ((moveEffect == MOVE_EFFECT_INFATUATE && ctx->battlemon[ctx->defence_client].condition2 & STATUS2_ATTRACT)
//     // Ingrain when user already has Ingrain
//     || (moveEffect == MOVE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL && ctx->battlemon[ctx->attack_client].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN)
//     // Leech Seed when target already has Leech Seed
//     || (moveEffect == MOVE_EFFECT_STATUS_LEECH_SEED && ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE)
//     // Perish Song when all targets have Perish Song
//     || IfAllClientsHavePerishSong(bsys, ctx)
//     // Status move into target that already has another major status condition (but not the same one)
//     || ((moveEffect == MOVE_EFFECT_STATUS_SLEEP || moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN || moveEffect == MOVE_EFFECT_STATUS_PARALYZE || moveEffect == MOVE_EFFECT_STATUS_POISON || moveEffect == MOVE_EFFECT_STATUS_BADLY_POISON || moveEffect == MOVE_EFFECT_STATUS_BURN) && ctx->battlemon[ctx->defence_client].condition)
//     // Torment when target already has Torment
//     || (moveEffect == MOVE_EFFECT_TORMENT && ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_EMBARGO)
//     // Yawn into target with status condition / already has Yawn
//     || (moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN && (ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_YAWN_COUNTER || ctx->battlemon[ctx->defence_client].condition))
//     // Worry Seed when target has Insomnia / Truant
//     || (!IfAbilityCanBeReplacedByWorrySeed(ctx, ctx->attack_client))
//     // TODO: Coaching in singles or when there is no ally target available in doubles
//     ) {
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BUT_IT_FAILED);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//         ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
//         return;
//     }
    

    

//     // It doesn't affect xxx
//     // Dream Eater when target is awake
//     if ((moveEffect == MOVE_EFFECT_RECOVER_DAMAGE_SLEEP && !((ctx->battlemon[ctx->defence_client].condition & STATUS_FLAG_ASLEEP) || GetBattlerAbility(ctx, ctx->defence_client)))
//     // Endeavor when target has equal or less HP than the user
//     || (moveEffect == MOVE_EFFECT_SET_HP_EQUAL_TO_USER && ctx->battlemon[ctx->attack_client].hp <= ctx->battlemon[ctx->defence_client].hp)) {
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//         ctx->waza_status_flag |= MOVE_STATUS_FLAG_NOT_EFFECTIVE;
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAIL);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//     }

    
//     // xxx is unaffected
//     // OHKO moves against a target with higher level than the user / target is Dynamaxed
//     if (moveEffect == MOVE_EFFECT_ONE_HIT_KO && (ctx->battlemon[ctx->attack_client].level < ctx->battlemon[ctx->defence_client].level || ctx->battlemon[ctx->defence_client].is_currently_dynamaxed)) {
//         ctx->waza_status_flag |= MOVE_STATUS_FLAG_OHKO_HIT_NOHIT;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAIL);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//     }

//     // xxx is already xxx
//     // Status move into target that already has that status
//     if ((moveEffect == MOVE_EFFECT_STATUS_SLEEP && ctx->battlemon[ctx->defence_client].condition & STATUS_SLEEP)
//     || (moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN && ctx->battlemon[ctx->defence_client].condition & MOVE_EFFECT_YAWN_COUNTER)
//     || (moveEffect == MOVE_EFFECT_STATUS_PARALYZE && ctx->battlemon[ctx->defence_client].condition & STATUS_PARALYSIS)
//     || ((moveEffect == MOVE_EFFECT_STATUS_POISON || moveEffect == MOVE_EFFECT_STATUS_BADLY_POISON) && ctx->battlemon[ctx->defence_client].condition & STATUS_POISON_ALL)
//     || (moveEffect == MOVE_EFFECT_STATUS_BURN && ctx->battlemon[ctx->defence_client].condition & STATUS_BURN)) {
//         ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ALREADY_HAS_SAME_STATUS);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//     }
    
    
    
    
    
//     // TODO: tbh can just jump to effect script
//     // Clangorous Soul / No Retreat with all stats maxed out
//     // Stat changing moves that can't go any higher
//     // Stat changing moves that can't go any lower
//     // Stuff Cheeks with Defense maxed out
//     // TODO: Check fail message in game
//     // Synchronoise: non-matching type

// }

// // TODO
// static void BattleController_CheckMoveFailures4(struct BattleSystem *bsys, struct BattleStruct *ctx) {

//     // Psycho Shift
//     if (ctx->battlemon[ctx->defence_client].condition || ctx->battlemon[ctx->defence_client].condition2 & STATUS2_SUBSTITUTE || !ctx->battlemon[ctx->attack_client].condition) {

//     }
// }

// static void BattleController_CheckMoveFailures5(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;

//     int attackerCondition = ctx->battlemon[ctx->attack_client].condition;

//     switch (moveEffect) {
//         // Psycho Shift
//         case MOVE_EFFECT_TRANSFER_STATUS:
//             // Electric-type paralysis immunity
//             if ((attackerCondition & STATUS_PARALYSIS && HasType(ctx, ctx->defence_client, TYPE_ELECTRIC))
//                 // Fire-type burn immunity
//                 || (attackerCondition & STATUS_PARALYSIS && HasType(ctx, ctx->defence_client, TYPE_ELECTRIC))
//                 // Poison / Steel-type poison / badly poison immunity
//                 || (attackerCondition & STATUS_POISON_ANY && (HasType(ctx, ctx->defence_client, TYPE_POISON) || HasType(ctx, ctx->defence_client, TYPE_STEEL)))) {
//                 ctx->waza_status_flag |= MOVE_STATUS_FLAG_NOT_EFFECTIVE;
//                 ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//                 ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//                 LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAIL);
//                 ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//                 ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                 return;
//             }
//             break;
//         // SUbstitute
//         case MOVE_EFFECT_SET_SUBSTITUTE:
//             if (ctx->battlemon[ctx->attack_client].hp <= BattleDamageDivide(ctx->battlemon[ctx->attack_client].maxhp, 4)) {
//                 ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//                 ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//                 LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SUBSTITUTE_FAIL);
//                 ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//                 ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                 ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
//                 return;
//             }
//             break;
//         default:
//             break;
//     }
// }

// static void BattleController_CheckTerrainBlock(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;
//     // TODO: Come back after terrain refactor
//     if (ctx->terrainOverlay.numberOfTurnsLeft > 0) {
//         switch (ctx->terrainOverlay.type) {
//             case ELECTRIC_TERRAIN:
//                 if ((moveEffect == MOVE_EFFECT_STATUS_SLEEP || moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN) && MoldBreakerIsClientGrounded(ctx, ctx->attack_client, ctx->defence_client)) {
//                     LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ELECTRIC_TERRAIN_PROTECTION);
//                     ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//                     ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                     ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
//                     return;
//                 }
//                 break;

//             case MISTY_TERRAIN:
//                 if ((moveEffect == MOVE_EFFECT_STATUS_SLEEP || moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN || moveEffect == MOVE_EFFECT_STATUS_PARALYZE || moveEffect == MOVE_EFFECT_STATUS_POISON || moveEffect == MOVE_EFFECT_STATUS_BADLY_POISON || moveEffect == MOVE_EFFECT_STATUS_BURN || moveEffect == MOVE_EFFECT_STATUS_CONFUSE) && MoldBreakerIsClientGrounded(ctx, ctx->attack_client, ctx->defence_client)) {
//                     LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MISTY_TERRAIN_PROTECTION);
//                     ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//                     ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                     ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
//                     return;
//                 }
//                 break;
//             default:
//                 break;
//         }
//     }
// }

// TODO: modernise message
// static void BattleController_CheckAbilityFailures3(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     // Handle Bulletproof
//     if ((MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_BULLETPROOF) && IsBallOrBombMove(ctx->current_move_index))
//     // Handle Sticky Hold
//     || (MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_STICKY_HOLD) && (ctx->current_move_index == MOVE_TRICK || ctx->current_move_index == MOVE_SWITCHEROO || ctx->current_move_index == MOVE_CORROSIVE_GAS))) {
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SOUNDPROOF);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//         ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
//     }
// }

// TODO: Handle Stat failure success check
// static void BattleController_CheckAbilityFailures4(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;
//     BOOL hasClearBodyOrFullMetalBodyOrWhiteSmoke = MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_CLEAR_BODY) || MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_FULL_METAL_BODY) || MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_WHITE_SMOKE);

//     // TODO: Check correctness
//     BOOL hasFlowerVeil = MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_FLOWER_VEIL) || MoldBreakerAbilityCheck(ctx, ctx->attack_client, BATTLER_ALLY(ctx->defence_client), ABILITY_FLOWER_VEIL);

//     int subscriptToRun = 0;

//     switch (moveEffect)
//     {
//     case MOVE_EFFECT_ATK_DOWN:
//     case MOVE_EFFECT_ATK_DOWN_2:
//         if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_HYPER_CUTTER)) {
//             subscriptToRun = SUB_SEQ_ATTACK_NOT_LOWERED;
//             break;
//         }
//         if (hasFlowerVeil) {
//             subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
//             break;
//         }
//         if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
//             subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
//             break;
//         }
//         break;
//     case MOVE_EFFECT_DEF_DOWN:
//     case MOVE_EFFECT_DEF_DOWN_2:
//         if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_BIG_PECKS)) {
//             subscriptToRun = SUB_SEQ_DEFENSE_NOT_LOWERED;
//             break;
//         }
//         if (hasFlowerVeil) {
//             subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
//             break;
//         }
//         if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
//             subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
//             break;
//         }
//         break;
//     case MOVE_EFFECT_ATK_DEF_DOWN:  // Tickle
//         // If the move is Tickle, first attack will drop, then Big Pecks will prevent the Defense drop.
//         // If the move is Tickle, first Hyper Cutter will block the Attack drop, then Defense will drop.

//         if (hasFlowerVeil) {
//             subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
//             break;
//         }
//         if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
//             subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
//             break;
//         }
//         break;
//     case MOVE_EFFECT_SPEED_DOWN:
//     case MOVE_EFFECT_SPEED_DOWN_2:
//         if (hasFlowerVeil) {
//             subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
//             break;
//         }
//         if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
//             subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
//             break;
//         }
//         break;
//     case MOVE_EFFECT_SP_ATK_DOWN:
//     case MOVE_EFFECT_SP_ATK_DOWN_2:
//     case MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER:
//         if (hasFlowerVeil) {
//             subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
//             break;
//         }
//         if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
//             subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
//             break;
//         }
//         break;
//     case MOVE_EFFECT_SP_DEF_DOWN:
//     case MOVE_EFFECT_SP_DEF_DOWN_2:
//         if (hasFlowerVeil) {
//             subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
//             break;
//         }
//         if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
//             subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
//             break;
//         }
//         break;
//     case MOVE_EFFECT_ACC_DOWN:
//     case MOVE_EFFECT_ACC_DOWN_2:
//         if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_KEEN_EYE)) {
//             subscriptToRun = SUB_SEQ_ACCURACY_NOT_LOWERED;
//             break;
//         }
//         if (hasFlowerVeil) {
//             subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
//             break;
//         }
//         if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
//             subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
//             break;
//         }
//         break;
//     case MOVE_EFFECT_EVA_DOWN:
//     case MOVE_EFFECT_EVA_DOWN_2:
//         if (hasFlowerVeil) {
//             subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
//             break;
//         }
//         if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
//             subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
//             break;
//         }
//         break;
//     default:
//         subscriptToRun = 0;
//         break;
//     }

//     // TODO: Status condition-based failures, Raw Speed with non-RNG speed tie

//     if (subscriptToRun) {
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, subscriptToRun);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//         ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
//     }
// }

// static void BattleController_CheckTypeBasedMoveConditionImmunities1(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;
//     int priority = GetClientActionPriority(bsys, ctx, ctx->attack_client);

//     // Dark-type Prankster immunity
//     if ((priority > 0 && GetBattlerAbility(ctx, ctx->attack_client) == ABILITY_PRANKSTER && HasType(ctx, ctx->defence_client, TYPE_DARK) && (ctx->attack_client & 1) != (ctx->defence_client & 1)) // used on an enemy)
//     // Ghost-type immunity to trapping moves
//     // TODO: handle Octolock
//     || (moveEffect == MOVE_EFFECT_PREVENT_ESCAPE && HasType(ctx, ctx->defence_client, TYPE_GHOST))
//     // Grass-type powder immunity
//     || (IsPowderMove(ctx->current_move_index) && HasType(ctx, ctx->defence_client, TYPE_GRASS))
//     // Ice-type immunity to Sheer Cold
//     || (ctx->current_move_index == MOVE_SHEER_COLD && HasType(ctx, ctx->defence_client, TYPE_ICE))) {
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//         ctx->waza_status_flag |= MOVE_STATUS_FLAG_NOT_EFFECTIVE;
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAIL);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//     }
// }

// static void BattleController_CheckTypeBasedMoveConditionImmunities2(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;

//     // Electric-type paralysis immunity
//     if ((moveEffect == MOVE_EFFECT_STATUS_PARALYZE && HasType(ctx, ctx->defence_client, TYPE_ELECTRIC))
//     // Fire-type burn immunity
//     || (moveEffect == MOVE_EFFECT_STATUS_BURN && HasType(ctx, ctx->defence_client, TYPE_FIRE))
//     // Grass-type Leech Seed immunity
//     || (moveEffect == MOVE_EFFECT_STATUS_LEECH_SEED && HasType(ctx, ctx->defence_client, TYPE_GRASS))
//     // Poison / Steel-type poison / badly poison immunity
//     || ((moveEffect == MOVE_EFFECT_STATUS_POISON || moveEffect == MOVE_EFFECT_STATUS_BADLY_POISON) && HasType(ctx, ctx->defence_client, TYPE_POISON) && GetBattlerAbility(ctx, ctx->attack_client) != ABILITY_CORROSION)) {
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//         ctx->waza_status_flag |= MOVE_STATUS_FLAG_NOT_EFFECTIVE;
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAIL);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//     }
// }

// static void BattleController_CheckUproarStoppingSleepMoves(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;

//     if (ctx->field_condition & FIELD_STATUS_UPROAR && moveEffect == MOVE_EFFECT_STATUS_SLEEP) {
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//         ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_UPROAR_STOPPING_SLEEP_MOVES);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//         return;
//     }

//     if (ctx->field_condition & FIELD_STATUS_UPROAR && moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN) {
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//         ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_UPROAR_STOPPING_REST);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//         return;
//     }
// }

static BOOL BattleController_CheckPsychicTerrain(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    // Handle Psychic Terrain
    // Block any natural priority move or a move made priority by an ability, if the terrain is Psychic Terrain
    // Courtesy of Dray (https://github.com/Drayano60)
    if (ctx->terrainOverlay.type == PSYCHIC_TERRAIN && ctx->terrainOverlay.numberOfTurnsLeft > 0 && MoldBreakerIsClientGrounded(ctx, ctx->attack_client, ctx->defence_client)) {
        if (adjustedMoveHasPositivePriority(ctx, ctx->attack_client) && CurrentMoveShouldNotBeExemptedFromPriorityBlocking(ctx, ctx->attack_client, ctx->defence_client) && ((ctx->attack_client & 1) != (ctx->defence_client & 1))) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_PSYCHIC_TERRAIN_PROTECTION);
        ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
        }
    }
    return FALSE;
}

// static void BattleController_CheckMoveAccuracy(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     // BATTLER_NONE
//     if (!(ctx->waza_out_check_on_off & 0x20) && ctx->defence_client != 0xFF && BattleSystem_CheckMoveHit(bsys, ctx, ctx->attack_client, ctx->defence_client, ctx->current_move_index) == TRUE) {
//         return;
//     }
//     if (!(ctx->waza_out_check_on_off & 0x40) && ctx->defence_client != 0xFF && BattleSystem_CheckMoveEffect(bsys, ctx, ctx->attack_client, ctx->defence_client, ctx->current_move_index) == TRUE) {
//         return;
//     }

//     if (ctx->waza_status_flag & MOVE_STATUS_FLAG_MISS) {
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
//         ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
//         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAIL);
//         ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
//         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//     }
// }

// TODO
// static void BattleController_CheckAromaVeil(struct BattleSystem *bsys, struct BattleStruct *ctx) {

// }

// enum {
//     TRY_MOVE_START = 0,

//     // TRY_MOVE_STATE_ANNOUNCE_MOVE,    // just handle in each fail
//     TRY_MOVE_STATE_MOVE_TYPE_CHANGES,
//     // TRY_MOVE_STATE_ASSIGN_TARGET,    // TODO: just handle in original function, add Curse modernisation
//     // TRY_MOVE_STATE_ABILITY_REDIRECT_TARGET,
//     TRY_MOVE_STATE_REDIRECT_TARGET,
//     TRY_MOVE_STATE_DECREMENT_PP,
//     TRY_MOVE_STATE_CHOICE_LOCK,
//     TRY_MOVE_STATE_BURN_UP_OR_DOUBLE_SHOCK,
//     TRY_MOVE_STATE_PRIMAL_WEATHER,
//     TRY_MOVE_STATE_CONSUME_MICLE_BERRY_FLAG,
//     TRY_MOVE_STATE_MOVE_FAILURES_1,
//     TRY_MOVE_STATE_ABILITY_FAILURES_1,
//     TRY_MOVE_STATE_INTERRUPTIBLE_MOVES,
//     TRY_MOVE_STATE_PROTEAN_OR_LIBERO,
//     TRY_MOVE_STATE_CHARGING_MOVE_MESSAGE,
//     TRY_MOVE_STATE_CHECK_STOLEN,
//     TRY_MOVE_STATE_SET_EXPLOSION_SELF_DESTRUCT_FLAG,
//     TRY_MOVE_STATE_CHECK_NO_TARGET_OR_SELF,
//     TRY_MOVE_STATE_SET_STEEL_BEAM_FLAG,
//     TRY_MOVE_STATE_CHECK_SKY_DROP_TARGET,
//     TRY_MOVE_STATE_SEMI_INVULNERABILITY,
//     TRY_MOVE_STATE_PSYCHIC_TERRAIN,
//     TRY_MOVE_STATE_TEAMMATE_PROTECTION,
//     TRY_MOVE_STATE_PROTECT_AND_FRIENDS,
//     TRY_MOVE_STATE_MAT_BLOCK,
//     TRY_MOVE_STATE_MAX_GUARD,
//     TRY_MOVE_STATE_MAGIC_COAT,
//     TRY_MOVE_STATE_TELEKINESIS_FAILURES,
//     TRY_MOVE_STATE_MAGIC_BOUNCE,
//     TRY_MOVE_STATE_ABILITY_FAILURES_2,
//     TRY_MOVE_STATE_TYPE_CHART_IMMUNITY,
//     TRY_MOVE_STATE_LEVITATE,
//     TRY_MOVE_STATE_AIR_BALLOON_TELEKINESIS_MAGNET_RISE,
//     TRY_MOVE_STATE_SAFETY_GOGGLES,
//     TRY_MOVE_STATE_ABILITY_FAILURES_3,
//     TRY_MOVE_STATE_TYPE_BASED_MOVE_CONDITION_IMMUNITIES_1,
//     TRY_MOVE_STATE_MOVE_FAILURES_2,
//     TRY_MOVE_STATE_MOVE_FAILURES_3,
//     TRY_MOVE_STATE_TYPE_BASED_MOVE_CONDITION_IMMUNITIES_2,
//     TRY_MOVE_STATE_UPROAR_STOPPING_MOVES,
//     TRY_MOVE_STATE_SAFEGUARD,
//     TRY_MOVE_STATE_TERRAIN_BLOCK,
//     TRY_MOVE_STATE_SUBSTITUTE_BLOCKING_STAT_DROPS_DECORATE,
//     TRY_MOVE_STATE_MIST,
//     TRY_MOVE_STATE_ABILITY_FAILURES_4,
//     TRY_MOVE_STATE_MOVE_ACCURACY,
//     TRY_MOVE_STATE_SUBSTITUTE_BLOCKING_OTHER_EFFECTS,
//     TRY_MOVE_STATE_MIRROR_ARMOR,
//     TRY_MOVE_STATE_ROAR_WHIRLWIND_INTO_DYNAMAXED_TARGET,
//     TRY_MOVE_STATE_MOVE_FAILURES_4,
//     TRY_MOVE_STATE_MOVE_FAILURES_5,
//     TRY_MOVE_STATE_AROMA_VEIL,

//     TRY_MOVE_END,
// };

void LONG_CALL BattleController_TryMove(struct BattleSystem *bsys, struct BattleStruct *ctx) {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
    debug_printf("In BattleController_TryMove\n")
#endif

    switch (ctx->woc_seq_no) {
        case TRY_MOVE_START: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_START\n");
#endif

            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_MOVE_TYPE_CHANGES: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_MOVE_TYPE_CHANGES\n");
#endif

            ctx->move_type = GetAdjustedMoveType(ctx, ctx->attack_client, ctx->current_move_index);
            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case TRY_MOVE_STATE_REDIRECT_TARGET: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_REDIRECT_TARGET\n");
#endif

            ctx->woc_seq_no++;
            if (ov12_02250BBC(bsys, ctx) == TRUE) {
                return;
            }
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_DECREMENT_PP: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_DECREMENT_PP\n");
#endif

            if ((ctx->waza_out_check_on_off & 0x8) == 0) {
                // pp检查
                if (ServerPPCheck(bsys, ctx) == TRUE)  // 801393Ch
                {
                    return;
                }
            }
            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case TRY_MOVE_STATE_CHOICE_LOCK: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_CHOICE_LOCK\n");
#endif

            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_BURN_UP_OR_DOUBLE_SHOCK: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_BURN_UP_OR_DOUBLE_SHOCK\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckBurnUpOrDoubleShock(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_PRIMAL_WEATHER: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_PRIMAL_WEATHER\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckPrimalWeather(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        // TODO: refactor CalcAccuracy because it sets the flag to 0 there
        case TRY_MOVE_STATE_CONSUME_MICLE_BERRY_FLAG: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_CONSUME_MICLE_BERRY_FLAG\n");
#endif

            ctx->battlemon[ctx->attack_client].moveeffect.boostedAccuracy = 0;

            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_MOVE_FAILURES_1: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_MOVE_FAILURES_1\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckMoveFailures1(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        // TODO
        case TRY_MOVE_STATE_ABILITY_FAILURES_1: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_ABILITY_FAILURES_1\n");
#endif
            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_INTERRUPTIBLE_MOVES: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_INTERRUPTIBLE_MOVES\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckInterruptibleMoves(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_PROTEAN_OR_LIBERO: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_PROTEAN_OR_LIBERO\n");
#endif

            if ((ctx->battlemon[ctx->attack_client].ability == ABILITY_PROTEAN || ctx->battlemon[ctx->attack_client].ability == ABILITY_LIBERO)
                // if either type is not the move's type
                && (ctx->battlemon[ctx->attack_client].type1 != ctx->moveTbl[ctx->current_move_index].type || ctx->battlemon[ctx->attack_client].type2 != ctx->moveTbl[ctx->current_move_index].type)
                // Protean should activate only once per switch-in if gen 9 behavior
                && (ctx->battlemon[ctx->attack_client].ability_activated_flag == 0 || PROTEAN_GENERATION < 9)
                // the move has to have power in order for it to change the type
                && ctx->moveTbl[ctx->current_move_index].power != 0) {
                ctx->battlemon[ctx->attack_client].type1 = ctx->moveTbl[ctx->current_move_index].type;
                ctx->battlemon[ctx->attack_client].type2 = ctx->moveTbl[ctx->current_move_index].type;
#if PROTEAN_GENERATION >= 9
                ctx->battlemon[ctx->attack_client].ability_activated_flag = 1;
#endif
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_PROTEAN_MESSAGE);
                ctx->msg_work = ctx->battlemon[ctx->attack_client].type1;
                ctx->battlerIdTemp = ctx->attack_client;
                ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return;
            } else {
                ctx->woc_seq_no++;
            }
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_CHARGING_MOVE_MESSAGE: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_CHARGING_MOVE_MESSAGE\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckChargeMoves(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        // TODO: split ServerWazaKoyuuCheck function, modernise
        case TRY_MOVE_STATE_CHECK_STOLEN: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_CHECK_STOLEN\n");
#endif

            if ((ctx->waza_out_check_on_off & 0x80) == 0) {
                if (ServerWazaKoyuuCheck(bsys, ctx) == TRUE)  // 8014944h
                {
                    return;
                }
            }
            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case TRY_MOVE_STATE_SET_EXPLOSION_SELF_DESTRUCT_FLAG: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_SET_EXPLOSION_SELF_DESTRUCT_FLAG\n");
#endif

            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        // 攻击对象检查，包括了蓄力技能
        case TRY_MOVE_STATE_CHECK_NO_TARGET_OR_SELF: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_CHECK_NO_TARGET_OR_SELF\n");
#endif

            if (ServerDefenceCheck(bsys, ctx) == TRUE)  // 8013AD8h
            {
                return;
            }
            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case TRY_MOVE_STATE_SET_STEEL_BEAM_FLAG: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_SET_STEEL_BEAM_FLAG\n");
#endif

            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case TRY_MOVE_STATE_CHECK_SKY_DROP_TARGET: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_CHECK_SKY_DROP_TARGET\n");
#endif

            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_SEMI_INVULNERABILITY: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_SEMI_INVULNERABILITY\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckSemiInvulnerability(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_PSYCHIC_TERRAIN: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_PSYCHIC_TERRAIN\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckPsychicTerrain(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        // TODO
        case TRY_MOVE_STATE_TEAMMATE_PROTECTION: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_TEAMMATE_PROTECTION\n");
#endif

            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_PROTECT_AND_FRIENDS: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_PROTECT_AND_FRIENDS\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckProtect(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        // TODO
        case TRY_MOVE_STATE_MAT_BLOCK: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_MAT_BLOCK\n");
#endif

            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case TRY_MOVE_STATE_MAX_GUARD: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_MAX_GUARD\n");
#endif

            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        // TODO: split ServerWazaKoyuuCheck function, modernise
        case TRY_MOVE_STATE_MAGIC_COAT: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_MAGIC_COAT\n");
#endif

            ctx->woc_seq_no++;
        }
    }
}
