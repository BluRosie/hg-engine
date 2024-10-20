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

// TODO: Handle Smack Down, Ingrain
static BOOL BattleController_CheckTelekinesis(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    // TODO: this to my knowledge handle base species, and does not consider transformed species, which is correct. Requires verifying
    int defenderSpecies = ctx->battlemon[ctx->defence_client].species;
    int defenderForm = ctx->battlemon[ctx->defence_client].form_no;
    if (((defenderSpecies == SPECIES_GENGAR && defenderForm == 1) || defenderSpecies == SPECIES_DIGLETT || defenderSpecies == SPECIES_DUGTRIO || defenderSpecies == SPECIES_SANDYGAST || defenderSpecies == SPECIES_PALOSSAND)
    || ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
        return TRUE;
    }
    return FALSE;
}

// TODO: check message/subscript correctness, move damage out
static BOOL BattleController_CheckTypeImmunity(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (!(ctx->waza_out_check_on_off & 2) && ctx->defence_client != 0xFF && ov12_0224B498(bsys, ctx) == TRUE) {
        return FALSE;
    }
    if (ctx->waza_status_flag & MOVE_STATUS_FLAG_NOT_EFFECTIVE) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        return TRUE;
    }
    return FALSE;
}

static BOOL BattleController_CheckLevitate(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if ((MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_LEVITATE) == TRUE) && (ctx->move_type == TYPE_GROUND)
        // iron ball halves speed and grounds
        && (HeldItemHoldEffectGet(ctx, ctx->defence_client) != HOLD_EFFECT_SPEED_DOWN_GROUNDED)) {
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_LEVITATE_MISS;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        return TRUE;
    }
    return FALSE;
}

// TODO: Handle Telekinesis
static BOOL BattleController_CheckAirBalloonTelekinesisMagnetRise(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (
        (
            (ctx->battlemon[ctx->defence_client].moveeffect.magnetRiseTurns)
            && ((ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) == 0)
            && ((ctx->field_condition & FIELD_STATUS_GRAVITY) == 0)
            && (ctx->move_type == TYPE_GROUND)
            && (HeldItemHoldEffectGet(ctx, ctx->defence_client) != HOLD_EFFECT_SPEED_DOWN_GROUNDED)
        )
        ||
        (
            (HeldItemHoldEffectGet(ctx, ctx->defence_client) == HOLD_EFFECT_UNGROUND_DESTROYED_ON_HIT) // has air balloon
            && ((ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) == 0)
            && ((ctx->field_condition & FIELD_STATUS_GRAVITY) == 0)
            && (ctx->move_type == TYPE_GROUND)
        )
       ) {
        // TODO: if in the future the AI somehow needs to read this flag, create a new flag for Air Balloon
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_MAGNET_RISE_MISS;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        return TRUE;
    }
    return FALSE;
}

static BOOL BattleController_CheckSafetyGoggles(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (IsPowderMove(ctx->current_move_index) && HeldItemHoldEffectGet(ctx, ctx->defence_client) == HOLD_EFFECT_SPORE_POWDER_IMMUNITY) {
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_NOT_EFFECTIVE;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SAFETY_GOGGLES);
        ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
        return TRUE;
    }
    return FALSE;
}

// TODO: modernise message
static BOOL BattleController_CheckAbilityFailures3(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    // Handle Bulletproof
    if ((MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_BULLETPROOF) && IsBallOrBombMove(ctx->current_move_index))
    // Handle Sticky Hold
    || (MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_STICKY_HOLD) && (ctx->current_move_index == MOVE_TRICK || ctx->current_move_index == MOVE_SWITCHEROO || ctx->current_move_index == MOVE_CORROSIVE_GAS))) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SOUNDPROOF);
        ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
        return TRUE;
    }
    return FALSE;
}

static BOOL BattleController_CheckTypeBasedMoveConditionImmunities1(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;
    int priority = GetClientActionPriority(bsys, ctx, ctx->attack_client);

    // Dark-type Prankster immunity
    if ((priority > 0 && GetBattlerAbility(ctx, ctx->attack_client) == ABILITY_PRANKSTER && HasType(ctx, ctx->defence_client, TYPE_DARK) && (ctx->attack_client & 1) != (ctx->defence_client & 1)) // used on an enemy)
    // Ghost-type immunity to trapping moves
    // TODO: handle Octolock
    || (moveEffect == MOVE_EFFECT_PREVENT_ESCAPE && HasType(ctx, ctx->defence_client, TYPE_GHOST))
    // Grass-type powder immunity
    || (IsPowderMove(ctx->current_move_index) && HasType(ctx, ctx->defence_client, TYPE_GRASS))
    // Ice-type immunity to Sheer Cold
    || (ctx->current_move_index == MOVE_SHEER_COLD && HasType(ctx, ctx->defence_client, TYPE_ICE))) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_NOT_EFFECTIVE;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        return TRUE;
    }
    return FALSE;
}

// TODO
static BOOL BattleController_CheckMoveFailures2(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;

    // Attract into a target with same gender / genderless
    if ((moveEffect == MOVE_EFFECT_INFATUATE && ctx->battlemon[ctx->attack_client].sex == ctx->battlemon[ctx->defence_client].sex)
    // TODO: Check message correctness
    // If move is Captivate, check for gender immunity
    || (moveEffect == MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER
    && ((ctx->battlemon[ctx->attack_client].sex == ctx->battlemon[ctx->defence_client].sex) || ctx->battlemon[ctx->attack_client].sex == POKEMON_GENDER_UNKNOWN || MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_OBLIVIOUS)))
    // Torment into Dynamax
    || (moveEffect == MOVE_EFFECT_TORMENT && ctx->battlemon[ctx->defence_client].is_currently_dynamaxed)) {
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

static BOOL BattleController_CheckWhirlwindFailures(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (ctx->moveTbl[ctx->current_move_index].effect == MOVE_EFFECT_FORCE_SWITCH) {
        // 1. Handle Dynamax
        if (ctx->battlemon[ctx->defence_client].is_currently_dynamaxed) {
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FORCE_SWITCH_FAIL_DYNAMAX);
            ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
            return TRUE;
        }

        // 2. Handle Suction Cups
        if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_SUCTION_CUPS)) {
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FORCE_SWITCH_FAIL_SUCTION_CUPS);
            ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
            return TRUE;
        }

        // 3. Handle Ingrain
        if (ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) {
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FORCE_SWITCH_FAIL_INGRAIN);
            ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL IfAllClientsHavePerishSong(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int battlerId;

    int maxBattlers = BattleWorkClientSetMaxGet(bsys);

    int cnt = 0;

    for (battlerId = 0; battlerId < maxBattlers; battlerId++) {
        if (ctx->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG_ACTIVE || ctx->battlemon[battlerId].hp == 0 /* || MoldBreakerAbilityCheck(ctx, ctx->attack_client, battlerId, ABILITY_SOUNDPROOF) == TRUE */) {
            cnt++;
        }
    }
    if (cnt == maxBattlers) {
        return TRUE;
    }

    return FALSE;
}

// TODO
static BOOL BattleController_CheckMoveFailures3(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;

    // But it failed
    // Attract into a target already infatuated
    if ((moveEffect == MOVE_EFFECT_INFATUATE && ctx->battlemon[ctx->defence_client].condition2 & STATUS2_ATTRACT)
    // Ingrain when user already has Ingrain
    || (moveEffect == MOVE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL && ctx->battlemon[ctx->attack_client].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN)
    // Leech Seed when target already has Leech Seed
    || (moveEffect == MOVE_EFFECT_STATUS_LEECH_SEED && ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE)
    // Perish Song when all targets have Perish Song
    || IfAllClientsHavePerishSong(bsys, ctx)
    // Status move into target that already has another major status condition (but not the same one)
    || ((moveEffect == MOVE_EFFECT_STATUS_SLEEP || moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN || moveEffect == MOVE_EFFECT_STATUS_PARALYZE || moveEffect == MOVE_EFFECT_STATUS_POISON || moveEffect == MOVE_EFFECT_STATUS_BADLY_POISON || moveEffect == MOVE_EFFECT_STATUS_BURN) && ctx->battlemon[ctx->defence_client].condition)
    // Torment when target already has Torment
    || (moveEffect == MOVE_EFFECT_TORMENT && ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_EMBARGO)
    // Yawn into target with status condition / already has Yawn
    || (moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN && (ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_YAWN_COUNTER || ctx->battlemon[ctx->defence_client].condition))
    // Worry Seed when target has Insomnia / Truant
    || (!IfAbilityCanBeReplacedByWorrySeed(ctx, ctx->attack_client))
    // TODO: Coaching in singles or when there is no ally target available in doubles
    ) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
        return TRUE;
    }

    // It doesn't affect xxx
    // Dream Eater when target is awake
    if ((moveEffect == MOVE_EFFECT_RECOVER_DAMAGE_SLEEP && !((ctx->battlemon[ctx->defence_client].condition & STATUS_FLAG_ASLEEP) || GetBattlerAbility(ctx, ctx->defence_client)))
    // Endeavor when target has equal or less HP than the user
    || (moveEffect == MOVE_EFFECT_SET_HP_EQUAL_TO_USER && ctx->battlemon[ctx->attack_client].hp <= ctx->battlemon[ctx->defence_client].hp)) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_NOT_EFFECTIVE;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        return TRUE;
    }

    // xxx is unaffected
    // OHKO moves against a target with higher level than the user / target is Dynamaxed
    if (moveEffect == MOVE_EFFECT_ONE_HIT_KO && (ctx->battlemon[ctx->attack_client].level < ctx->battlemon[ctx->defence_client].level || ctx->battlemon[ctx->defence_client].is_currently_dynamaxed)) {
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_OHKO_HIT_NOHIT;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        return TRUE;
    }

    // xxx is already xxx
    // Status move into target that already has that status
    if ((moveEffect == MOVE_EFFECT_STATUS_SLEEP && ctx->battlemon[ctx->defence_client].condition & STATUS_SLEEP)
    || (moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN && ctx->battlemon[ctx->defence_client].condition & MOVE_EFFECT_YAWN_COUNTER)
    || (moveEffect == MOVE_EFFECT_STATUS_PARALYZE && ctx->battlemon[ctx->defence_client].condition & STATUS_PARALYSIS)
    || ((moveEffect == MOVE_EFFECT_STATUS_POISON || moveEffect == MOVE_EFFECT_STATUS_BADLY_POISON) && ctx->battlemon[ctx->defence_client].condition & STATUS_POISON_ALL)
    || (moveEffect == MOVE_EFFECT_STATUS_BURN && ctx->battlemon[ctx->defence_client].condition & STATUS_BURN)) {
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ALREADY_HAS_SAME_STATUS);
        ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }

    // TODO: tbh can just jump to effect script
    // Clangorous Soul / No Retreat with all stats maxed out
    // Stat changing moves that can't go any higher
    // Stat changing moves that can't go any lower
    // Stuff Cheeks with Defense maxed out
    // TODO: Check fail message in game
    // Synchronoise: non-matching type

    return FALSE;
}

static BOOL BattleController_CheckTypeBasedMoveConditionImmunities2(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;

    // Electric-type paralysis immunity
    if ((moveEffect == MOVE_EFFECT_STATUS_PARALYZE && HasType(ctx, ctx->defence_client, TYPE_ELECTRIC))
    // Fire-type burn immunity
    || (moveEffect == MOVE_EFFECT_STATUS_BURN && HasType(ctx, ctx->defence_client, TYPE_FIRE))
    // Grass-type Leech Seed immunity
    || (moveEffect == MOVE_EFFECT_STATUS_LEECH_SEED && HasType(ctx, ctx->defence_client, TYPE_GRASS))
    // Poison / Steel-type poison / badly poison immunity
    || ((moveEffect == MOVE_EFFECT_STATUS_POISON || moveEffect == MOVE_EFFECT_STATUS_BADLY_POISON) && HasType(ctx, ctx->defence_client, TYPE_POISON) && GetBattlerAbility(ctx, ctx->attack_client) != ABILITY_CORROSION)) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_NOT_EFFECTIVE;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        return TRUE;
    }
    return FALSE;
}

static BOOL BattleController_CheckUproarStoppingSleepMoves(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;

    if (ctx->field_condition & FIELD_STATUS_UPROAR && moveEffect == MOVE_EFFECT_STATUS_SLEEP) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_UPROAR_STOPPING_SLEEP_MOVES);
        ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }

    if (ctx->field_condition & FIELD_STATUS_UPROAR && moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_UPROAR_STOPPING_REST);
        ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }
    return FALSE;
}

static BOOL BattleController_CheckTerrainBlock(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;
    // TODO: Come back after terrain refactor
    if (ctx->terrainOverlay.numberOfTurnsLeft > 0) {
        switch (ctx->terrainOverlay.type) {
            case ELECTRIC_TERRAIN:
                if ((moveEffect == MOVE_EFFECT_STATUS_SLEEP || moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN) && MoldBreakerIsClientGrounded(ctx, ctx->attack_client, ctx->defence_client)) {
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ELECTRIC_TERRAIN_PROTECTION);
                    ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                    ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
                    return TRUE;
                }
                break;

            case MISTY_TERRAIN:
                if ((moveEffect == MOVE_EFFECT_STATUS_SLEEP || moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN || moveEffect == MOVE_EFFECT_STATUS_PARALYZE || moveEffect == MOVE_EFFECT_STATUS_POISON || moveEffect == MOVE_EFFECT_STATUS_BADLY_POISON || moveEffect == MOVE_EFFECT_STATUS_BURN || moveEffect == MOVE_EFFECT_STATUS_CONFUSE) && MoldBreakerIsClientGrounded(ctx, ctx->attack_client, ctx->defence_client)) {
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MISTY_TERRAIN_PROTECTION);
                    ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                    ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
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
static BOOL BattleController_CheckAbilityFailures4(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;
    BOOL hasClearBodyOrFullMetalBodyOrWhiteSmoke = MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_CLEAR_BODY) || MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_FULL_METAL_BODY) || MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_WHITE_SMOKE);

    // TODO: Check correctness
    BOOL hasFlowerVeil = MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_FLOWER_VEIL) || MoldBreakerAbilityCheck(ctx, ctx->attack_client, BATTLER_ALLY(ctx->defence_client), ABILITY_FLOWER_VEIL);

    int subscriptToRun = 0;

    switch (moveEffect)
    {
    case MOVE_EFFECT_ATK_DOWN:
    case MOVE_EFFECT_ATK_DOWN_2:
        if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_HYPER_CUTTER)) {
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
        if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_BIG_PECKS)) {
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
        if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_KEEN_EYE)) {
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
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, subscriptToRun);
        ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
        return TRUE;
    }
    return FALSE;
}

static BOOL BattleController_CheckMoveAccuracy(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (!(ctx->waza_out_check_on_off & 0x20) && ctx->defence_client != BATTLER_NONE && BattleSystem_CheckMoveHit(bsys, ctx, ctx->attack_client, ctx->defence_client, ctx->current_move_index) == TRUE) {
        return FALSE;
    }
    if (!(ctx->waza_out_check_on_off & 0x40) && ctx->defence_client != BATTLER_NONE && BattleSystem_CheckMoveEffect(bsys, ctx, ctx->attack_client, ctx->defence_client, ctx->current_move_index) == TRUE) {
        return FALSE;
    }

    if (ctx->waza_status_flag & MOVE_STATUS_FLAG_MISS) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        return TRUE;
    }
    return FALSE;
}

static BOOL BattleController_CheckMoveFailures5(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;

    int attackerCondition = ctx->battlemon[ctx->attack_client].condition;

    switch (moveEffect) {
        // Psycho Shift
        case MOVE_EFFECT_TRANSFER_STATUS:
            // Electric-type paralysis immunity
            if ((attackerCondition & STATUS_PARALYSIS && HasType(ctx, ctx->defence_client, TYPE_ELECTRIC))
                // Fire-type burn immunity
                || (attackerCondition & STATUS_PARALYSIS && HasType(ctx, ctx->defence_client, TYPE_ELECTRIC))
                // Poison / Steel-type poison / badly poison immunity
                || (attackerCondition & STATUS_POISON_ANY && (HasType(ctx, ctx->defence_client, TYPE_POISON) || HasType(ctx, ctx->defence_client, TYPE_STEEL)))) {
                ctx->waza_status_flag |= MOVE_STATUS_FLAG_NOT_EFFECTIVE;
                ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
                ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
                ctx->server_seq_no = CONTROLLER_COMMAND_25;
                return TRUE;
            }
            break;
        // SUbstitute
        case MOVE_EFFECT_SET_SUBSTITUTE:
            if (ctx->battlemon[ctx->attack_client].hp <= BattleDamageDivide(ctx->battlemon[ctx->attack_client].maxhp, 4)) {
                ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
                ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
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
static BOOL BattleController_CheckAromaVeil(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    return FALSE;
}

void LONG_CALL BattleController_TryMove2(struct BattleSystem *bsys, struct BattleStruct *ctx) {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
    debug_printf("In BattleController_TryMove2\n")
#endif
    
    switch (ctx->woc_seq_no) {
        case TRY_MOVE_STATE_TELEKINESIS_FAILURES: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_TELEKINESIS_FAILURES\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckTelekinesis(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        // TODO: split ServerWazaKoyuuCheck function, modernise
        case TRY_MOVE_STATE_MAGIC_BOUNCE: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_MAGIC_BOUNCE\n");
#endif

            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        // TODO: check correctness, handle Wonder Guard here
        case TRY_MOVE_STATE_ABILITY_FAILURES_2: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_ABILITY_FAILURES_2\n");
#endif
            if (!(ctx->waza_out_check_on_off & 0x10) && ctx->defence_client != 0xFF && ov12_0224BC2C(bsys, ctx) == TRUE) {
                return;
            }
            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        // TODO: check correctness
        case TRY_MOVE_STATE_TYPE_CHART_IMMUNITY: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_TYPE_CHART_IMMUNITY\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckTypeImmunity(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_LEVITATE: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_LEVITATE\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckLevitate(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_AIR_BALLOON_TELEKINESIS_MAGNET_RISE: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_AIR_BALLOON_TELEKINESIS_MAGNET_RISE\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckAirBalloonTelekinesisMagnetRise(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_SAFETY_GOGGLES: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_SAFETY_GOGGLES\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckSafetyGoggles(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_ABILITY_FAILURES_3: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_ABILITY_FAILURES_3\n");
#endif
            ;
            ctx->woc_seq_no++;
            if (BattleController_CheckAbilityFailures3(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_TYPE_BASED_MOVE_CONDITION_IMMUNITIES_1: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_TYPE_BASED_MOVE_CONDITION_IMMUNITIES_1\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckTypeBasedMoveConditionImmunities1(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_MOVE_FAILURES_2: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_MOVE_FAILURES_2\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckMoveFailures2(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_MOVE_FAILURES_3: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_MOVE_FAILURES_3\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckMoveFailures3(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_TYPE_BASED_MOVE_CONDITION_IMMUNITIES_2: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_TYPE_BASED_MOVE_CONDITION_IMMUNITIES_2\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckTypeBasedMoveConditionImmunities2(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_UPROAR_STOPPING_MOVES: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_UPROAR_STOPPING_MOVES\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckUproarStoppingSleepMoves(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        // TODO
        case TRY_MOVE_STATE_SAFEGUARD: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_SAFEGUARD\n");
#endif
            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_TERRAIN_BLOCK: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_TERRAIN_BLOCK\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckTerrainBlock(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        // TODO
        case TRY_MOVE_STATE_SUBSTITUTE_BLOCKING_STAT_DROPS_DECORATE: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_SUBSTITUTE_BLOCKING_STAT_DROPS_DECORATE\n");
#endif

            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case TRY_MOVE_STATE_MIST: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_MIST\n");
#endif

            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_ABILITY_FAILURES_4: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_ABILITY_FAILURES_4\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckAbilityFailures4(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_MOVE_ACCURACY: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_MOVE_ACCURACY\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckMoveAccuracy(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        // TODO
        case TRY_MOVE_STATE_SUBSTITUTE_BLOCKING_OTHER_EFFECTS: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_SUBSTITUTE_BLOCKING_OTHER_EFFECTS\n");
#endif

            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case TRY_MOVE_STATE_MIRROR_ARMOR: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_MIRROR_ARMOR\n");
#endif

            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_ROAR_WHIRLWIND_INTO_DYNAMAXED_TARGET: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_ROAR_WHIRLWIND_INTO_DYNAMAXED_TARGET\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckWhirlwindFailures(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        // TODO
        case TRY_MOVE_STATE_MOVE_FAILURES_4: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_MOVE_FAILURES_4\n");
#endif

            ctx->woc_seq_no++;
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_MOVE_FAILURES_5: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_MOVE_FAILURES_5\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckMoveFailures5(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case TRY_MOVE_STATE_AROMA_VEIL: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_STATE_AROMA_VEIL\n");
#endif

            ctx->woc_seq_no++;
            if (BattleController_CheckAromaVeil(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case TRY_MOVE_END: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In TRY_MOVE_END\n");
#endif
            ctx->woc_seq_no = TRY_MOVE_START;
        }
    }

    ctx->server_seq_no = CONTROLLER_COMMAND_25;
}


// /**
//  * Platinum version as reference
//  * BattleController_TryMove
//  * https://github.com/pret/pokeplatinum/blob/04d9ea4cfad3963feafecf3eb0f4adcbc7aa5063/src/battle/battle_controller.c#L3240
//  */
// void LONG_CALL ov12_0224C4D8(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     // u8 buf[64];
//     // sprintf(buf, "In BattleController_TryMove\n");
//     // debugsyscall(buf);

//     switch (ctx->woc_seq_no) {
//         case TRY_MOVE_STATE_CHECK_VALID_TARGET: {
//             ctx->woc_seq_no++;
//             if (ov12_0224B398(bsys, ctx) == TRUE) {
//                 return;
//             }
//             FALLTHROUGH;
//         }
//         case TRY_MOVE_STATE_TRIGGER_REDIRECTION_ABILITIES: {
//             ctx->woc_seq_no++;
//             if (ov12_02250BBC(bsys, ctx) == TRUE) {
//                 return;
//             }
//             FALLTHROUGH;
//         }
//         case TRY_MOVE_STATE_CHECK_MOVE_HITS: {
//             // BATTLER_NONE
//             if (!(ctx->waza_out_check_on_off & 0x20) && ctx->defence_client != 0xFF && BattleSystem_CheckMoveHit(bsys, ctx, ctx->attack_client, ctx->defence_client, ctx->current_move_index) == TRUE) {
//                 return;
//             }
//             ctx->woc_seq_no++;
//             FALLTHROUGH;
//         }
//         // TODO: shove this somewhere
//         case TRY_MOVE_STATE_CHECK_MOVE_HIT_OVERRIDES: {
//             if (!(ctx->waza_out_check_on_off & 0x40) && ctx->defence_client != 0xFF && BattleSystem_CheckMoveEffect(bsys, ctx, ctx->attack_client, ctx->defence_client, ctx->current_move_index) == TRUE) {
//                 return;
//             }
//             ctx->woc_seq_no++;
//             FALLTHROUGH;
//         }
//         case TRY_MOVE_STATE_CHECK_TYPE_CHART: {
//             if (!(ctx->waza_out_check_on_off & 2) && ctx->defence_client != 0xFF && ov12_0224B498(bsys, ctx) == TRUE) {
//                 return;
//             }
//             ctx->woc_seq_no++;
//             FALLTHROUGH;
//         }
//         case TRY_MOVE_STATE_TRIGGER_IMMUNITY_ABILITIES: {
//             if (!(ctx->waza_out_check_on_off & 0x10) && ctx->defence_client != 0xFF && ov12_0224BC2C(bsys, ctx) == TRUE) {
//                 return;
//             }
//             ctx->woc_seq_no++;
//             FALLTHROUGH;
//         }
//         case TRY_MOVE_STATE_TRIGGER_STRONG_WINDS: {
//             ctx->woc_seq_no++;
//             if (CheckStrongWindsWeaken(bsys, ctx)) {
//                 return;
//             }
//             FALLTHROUGH;
//         }
//         case TRY_MOVE_END:
//             ctx->woc_seq_no = 0;
//             break;
//     }
//     ctx->server_seq_no = CONTROLLER_COMMAND_25;
// }