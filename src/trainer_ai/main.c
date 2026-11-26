#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/mega.h"
#include "../../include/item.h"
#include "../../include/pokemon.h"
#include "../../include/trainer_ai.h"
#include "../../include/types.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/species.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/battle_message_constants.h"

typedef struct {
    u32 flag;
    int (*evaluator)(struct BattleSystem *battleSystem, int moveSlot, AIContext *ai);
} MoveEvaluator;

// Flag functions return a move score, given the slot of the current move.
int BasicFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai);
int EvaluateAttackFlag(struct BattleSystem *battleSystem, int moveSlot, AIContext *ai);
int ExpertFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai);
int SetupFirstTurnFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai);
int RiskyFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai);
int PrioritizeDamageFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai);
int BatonPassFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai);
int TagStrategyFlag(struct BattleSystem *battleSystem, int moveSlot, AIContext *ai);
int CheckHPFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai);
int WeatherFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai);
int HarassmentFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai);

// Add your own custom flags to this list.
static const MoveEvaluator moveEvaluators[] = {
    { AI_FLAG_BASIC,                BasicFlag },
    { AI_FLAG_EVAL_ATTACK,          EvaluateAttackFlag },
    { AI_FLAG_EXPERT,               ExpertFlag },
    { AI_FLAG_SETUP_FIRST_TURN,     SetupFirstTurnFlag },
    { AI_FLAG_RISKY,                RiskyFlag },
    { AI_FLAG_DAMAGE_PRIORITY,      PrioritizeDamageFlag },
    { AI_FLAG_BATON_PASS,           BatonPassFlag },
    { AI_FLAG_TAG_STRATEGY,         TagStrategyFlag },
    { AI_FLAG_CHECK_HP,             CheckHPFlag },
    { AI_FLAG_WEATHER,              WeatherFlag },
    { AI_FLAG_HARRASSMENT,          HarassmentFlag },
};

BOOL LONG_CALL MoveIsStrongest(int moveSlot, AIContext *ai);
static void SetupStateVariables(struct BattleSystem *battleSystem, u32 attacker, u32 target, AIContext *ai);

enum AIActionChoice __attribute__((section (".init"))) TrainerAI_Main(struct BattleSystem *battleSystem, int attacker) {
    struct BattleStruct *ctx = battleSystem->sp;

    AIContext aictx = {0};
    AIContext *ai = &aictx;

    enum AIActionChoice result = AI_ENEMY_ATTACK_1;

    u32 moveScores[4][4]; // Up to 4 different battlers (including self) scored against each of up to 4 moves.
    for (int battlerID = 0; battlerID < 4; battlerID++) {           
        for (int moveSlot = 0; moveSlot < 4; moveSlot++) {
            moveScores[battlerID][moveSlot] = 100; // We don't want to get negative (unsigned int) numbers and risk an underflow, so start high at 100.
        }
    }

    u32 highestMoveScore = 0; // Highest score over all potential targets.
    u32 maxScores[4] = {0}; // Highest score over all of the 4 moves the attacker has, measured against each mon on the field (self is always 0).

    int target = BATTLER_OPPONENT(attacker); // Default for singles -- updated in the doubles section.

#ifdef DEBUG_TRAINER_AI
    debug_printf("AI reached setup state!\n");
#endif

    SetupStateVariables(battleSystem, attacker, target, ai);

#ifdef DEBUG_TRAINER_AI
    debug_printf("AI finished setup state!\n");
#endif

    // For more than a 1v1 battle, loop over all battlers and compute the highest score for each.
    // The highest score among them determines the target.
    if (BattleTypeGet(battleSystem) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLES | BATTLE_TYPE_TAG)) {
        // ALWAYS turn on tag strategy in double battles. Prevents user errors. Otherwise targeting and scoring will be incorrect.
        battleSystem->trainers[ai->attacker.id].aibit |= AI_FLAG_TAG_STRATEGY; // TODO: Do we actually want to hardcode this?
        for (int battlerID = 0; battlerID < CLIENT_MAX; battlerID++) {
            ai->target.id = battlerID;
#ifdef DEBUG_TRAINER_AI
            debug_printf("\nfor Attacker: %d, Target: %d\n", ai->attacker.id, ai->target.id);
#endif
            SetupStateVariables(battleSystem, ai->attacker.id, ai->target.id, ai); // Reset the AI vars for each potential target. 

            if (battlerID == attacker || ctx->battlemon[ai->target.id].hp == 0) { // Edge case for doubles when only one mon remains alive. Not including this causes incorrect scoring.
                for (int moveSlot = 0; moveSlot < 4; moveSlot++) {
                    moveScores[battlerID][moveSlot] = 0;  // Prevent the AI from thinking it is also the target for calculations.
                }
            } else {
                // Main loop to select the best move.
                for (int moveSlot = 0; moveSlot < 4; moveSlot++) {  
                    // Move-relevant variables:
                    ai->move = ctx->battlemon[ai->attacker.id].move[moveSlot];
                    ai->moveEffect = ctx->moveTbl[ai->move].effect;
                    ai->moveEffectiveness = 0;       
                    ai->moveType = ctx->moveTbl[ai->move].type;
                    ai->movePP = ctx->battlemon[ai->attacker.id].pp[moveSlot];
                    // TODO: This ain't it, chief.
                    AITypeCalc(ctx, ai->move, ai->moveType, ai->attacker.ability, ai->target.ability, ai->target.itemHoldEffect, ctx->battlemon[target].type1, ctx->battlemon[target].type2, &ai->moveEffectiveness);
 
                    for (u32 evaluatorID = 0; evaluatorID < sizeof(moveEvaluators) / sizeof(moveEvaluators[0]); evaluatorID++) {
                        if ((BattleTypeGet(battleSystem) & BATTLE_TYPE_DOUBLES) && !(BattleTypeGet(battleSystem) & BATTLE_TYPE_TAG)) {
                            // We must hardcode double battles against a single trainer to ONLY read the first trainer's aibit, since a second trainer's does not exist.
                            // Not doing this will result in the left side using random moves. This also fixes the "left side ai problem".
                            if (battleSystem->trainers[1].aibit & moveEvaluators[evaluatorID].flag) {
#ifdef DEBUG_TRAINER_AI
                                debug_printf("for Move: %d, using Flag: %d\n", moveSlot, moveEvaluators[evaluatorID].flag);
#endif
                                moveScores[battlerID][moveSlot] += moveEvaluators[evaluatorID].evaluator(battleSystem, moveSlot, ai);
                            }
                        } else {
                            if (battleSystem->trainers[ai->attacker.id].aibit & moveEvaluators[evaluatorID].flag) { // Grab the associated ai bit for the attacker.
#ifdef DEBUG_TRAINER_AI
                                debug_printf("for Move: %d, using Flag: %d\n", moveSlot, moveEvaluators[evaluatorID].flag);
#endif
                                moveScores[battlerID][moveSlot] += moveEvaluators[evaluatorID].evaluator(battleSystem, moveSlot, ai);   
                            }
                        }
                    }
                    
                    if (moveScores[battlerID][moveSlot] > maxScores[battlerID]) {
                        maxScores[battlerID] = moveScores[battlerID][moveSlot]; // Track the highest score for this potential target.
                    }

                    if (maxScores[battlerID] > highestMoveScore) {
                        highestMoveScore = maxScores[battlerID]; // Track the absolute largest score over all potential targets.
                    }
#ifdef DEBUG_TRAINER_AI
                    debug_printf("Move: %d, Score: %d\n", moveSlot, moveScores[battlerID][moveSlot]);
#endif
                }
            }
#ifdef DEBUG_TRAINER_AI
            debug_printf("Max score for target %d: %d\n\n\n", battlerID, maxScores[battlerID]);
#endif
        }
#ifdef DEBUG_TRAINER_AI
        debug_printf("Highest move score: %d\n", highestMoveScore);
#endif
        // Find all targets that tied for the maximum score.
        int numTargetTies = 0;
        int tiedTargets[4] = {0};

        for (int battlerID = 0; battlerID < 4; battlerID++) {
            if (highestMoveScore == maxScores[battlerID]) {
                tiedTargets[numTargetTies] = battlerID;
                numTargetTies++;
            }
        }
        target = tiedTargets[BattleRand(battleSystem) % numTargetTies]; // Randomly pick a target from the tied targets.
        ctx->trainerAIData.selectedTarget[ai->attacker.id] = target; // Assign the correct target for this attacker.
#ifdef DEBUG_TRAINER_AI
        debug_printf("Target: %d\n", target);
#endif
    } else { // Single Battles
        // Main loop to select the best move.
        for (int moveSlot = 0; moveSlot < 4; moveSlot++) {   
            // Move-relevant variables:
            ai->move = ctx->battlemon[ai->attacker.id].move[moveSlot];
            ai->moveEffect = ctx->moveTbl[ai->move].effect;
            ai->moveEffectiveness = 0;       
            ai->moveType = ctx->moveTbl[ai->move].type;
            ai->movePP = ctx->battlemon[ai->attacker.id].pp[moveSlot];
            // TODO: Fix this
            AITypeCalc(ctx, ai->move, ai->moveType, ai->attacker.ability, ai->target.ability, ai->target.itemHoldEffect, ctx->battlemon[target].type1, ctx->battlemon[target].type2, &ai->moveEffectiveness);

            for (u32 evaluatorID = 0; evaluatorID < sizeof(moveEvaluators) / sizeof(moveEvaluators[0]); evaluatorID++) {
                if (battleSystem->trainers[ai->attacker.id].aibit & moveEvaluators[evaluatorID].flag) {
                    moveScores[target][moveSlot] += moveEvaluators[evaluatorID].evaluator(battleSystem, moveSlot, ai);
                }
            }
        }
        ctx->trainerAIData.selectedTarget[ai->attacker.id] = target; // Target is always 0 in single battles (the player).
    }

    for (int moveSlot = 0; moveSlot < 4; moveSlot++) {
        if (moveScores[target][moveSlot] > moveScores[target][result]) {
            result = moveSlot;
        }
    }

    highestMoveScore = moveScores[target][result];

    // Find all moves that tied for the highest score.
    int numMoveSlotTies = 0;
    int tiedMoveSlots[4] = {0};

    for (int moveSlot = 0; moveSlot < 4; moveSlot++) {
        if (moveScores[target][moveSlot] == highestMoveScore) {
            tiedMoveSlots[numMoveSlotTies] = moveSlot;
            numMoveSlotTies++;
        }
    }

    result = tiedMoveSlots[BattleRand(battleSystem) % numMoveSlotTies]; // Randomly pick a move among the tied moves.
#ifdef DEBUG_TRAINER_AI
    debug_printf("Move choice: %d\n", result);
#endif
    return result;
}

const u16 DropStatList[] = {
    MOVE_EFFECT_ATK_DOWN,
    MOVE_EFFECT_ATK_DOWN_2,
    MOVE_EFFECT_ATK_DOWN_3,
    MOVE_EFFECT_DEF_DOWN,
    MOVE_EFFECT_DEF_DOWN_2,
    MOVE_EFFECT_DEF_DOWN_3,
    MOVE_EFFECT_SPEED_DOWN,
    MOVE_EFFECT_SPEED_DOWN_2,
    MOVE_EFFECT_SPEED_DOWN_3,
    MOVE_EFFECT_SP_ATK_DOWN,
    MOVE_EFFECT_SP_ATK_DOWN_2,
    MOVE_EFFECT_SP_ATK_DOWN_3,
    MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER,
    MOVE_EFFECT_SP_DEF_DOWN,
    MOVE_EFFECT_SP_DEF_DOWN_2,
    MOVE_EFFECT_SP_DEF_DOWN_3,
    MOVE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2,
    MOVE_EFFECT_ATK_SP_ATK_DOWN,
    MOVE_EFFECT_VENOM_DRENCH,
    MOVE_EFFECT_ATK_DEF_DOWN,
    MOVE_EFFECT_EVA_DOWN,
    MOVE_EFFECT_EVA_DOWN_2,
    MOVE_EFFECT_EVA_DOWN_3,
    MOVE_EFFECT_ACC_DOWN,
    MOVE_EFFECT_ACC_DOWN_2,
    MOVE_EFFECT_ACC_DOWN_3
};

const u16 RaiseStatList[] = {
    MOVE_EFFECT_ATK_UP,
    MOVE_EFFECT_ATK_UP_2,
    MOVE_EFFECT_ATK_UP_3,
    MOVE_EFFECT_DEF_UP,
    MOVE_EFFECT_DEF_UP_2,
    MOVE_EFFECT_DEF_UP_3,
    MOVE_EFFECT_SPEED_UP,
    MOVE_EFFECT_SPEED_UP_2,
    MOVE_EFFECT_SPEED_UP_3,
    MOVE_EFFECT_SP_ATK_UP,
    MOVE_EFFECT_SP_ATK_UP_2,
    MOVE_EFFECT_SP_ATK_UP_3,
    MOVE_EFFECT_SP_DEF_UP,
    MOVE_EFFECT_SP_DEF_UP_2,
    MOVE_EFFECT_SP_DEF_UP_3,
    MOVE_EFFECT_ACC_UP,
    MOVE_EFFECT_ACC_UP_2,
    MOVE_EFFECT_ACC_UP_3,
    MOVE_EFFECT_EVA_UP,
    MOVE_EFFECT_EVA_UP_2,
    MOVE_EFFECT_EVA_UP_2_MINIMIZE,
    MOVE_EFFECT_EVA_UP_3,
    MOVE_EFFECT_ATK_SPEED_UP,
    MOVE_EFFECT_ATK_SP_ATK_UP,
    MOVE_EFFECT_DEF_UP_DOUBLE_ROLLOUT_POWER,
    MOVE_EFFECT_DEF_SP_DEF_UP,
    MOVE_EFFECT_SP_ATK_SP_DEF_UP
};

const u16 SetupFirstTurnList[] = {
    MOVE_EFFECT_CONVERSION,
    MOVE_EFFECT_SET_REFLECT,
    MOVE_EFFECT_SET_LIGHT_SCREEN,
    MOVE_EFFECT_STATUS_PARALYZE,
    MOVE_EFFECT_STATUS_POISON,
    MOVE_EFFECT_STATUS_BADLY_POISON,
    MOVE_EFFECT_STATUS_BURN,
    MOVE_EFFECT_STATUS_SLEEP,
    MOVE_EFFECT_STATUS_CONFUSE,
    MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION,
    MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION,
    MOVE_EFFECT_STATUS_LEECH_SEED,
    MOVE_EFFECT_SET_SUBSTITUTE,
    MOVE_EFFECT_EVA_UP_2_MINIMIZE,
    MOVE_EFFECT_TORMENT,
    MOVE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL,
    MOVE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE,
    MOVE_EFFECT_DOUBLE_SPEED_3_TURNS,
    MOVE_EFFECT_PREVENT_CRITS,
    MOVE_EFFECT_GIVE_GROUND_IMMUNITY,
    MOVE_EFFECT_REMOVE_HAZARDS_SCREENS_EVA_DOWN,
    MOVE_EFFECT_WHIRLPOOL,
    MOVE_EFFECT_BIND_HIT
};

const u16 RiskyFlagList[] = {
    MOVE_EFFECT_STATUS_SLEEP,
    MOVE_EFFECT_HALVE_DEFENSE,
    MOVE_EFFECT_COPY_MOVE,
    MOVE_EFFECT_ONE_HIT_KO,
    MOVE_EFFECT_HIGH_CRITICAL,
    MOVE_EFFECT_HIGH_CRITICAL_POISON_HIT,
    MOVE_EFFECT_SLEEP_POISON_PARALYZE_HIT,
    MOVE_EFFECT_HIGH_CRITICAL_RAISE_SPEED_HIT,
    MOVE_EFFECT_CALL_RANDOM_MOVE,
    MOVE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL,
    MOVE_EFFECT_COUNTER,
    MOVE_EFFECT_MIRROR_COAT,
    MOVE_EFFECT_METAL_BURST,
    MOVE_EFFECT_KO_MON_THAT_DEFEATED_USER,
    MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION,
    MOVE_EFFECT_INFATUATE,
    MOVE_EFFECT_RANDOM_POWER_MAYBE_HEAL,
    MOVE_EFFECT_RAISE_ALL_STATS_HIT,
    MOVE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP,
    MOVE_EFFECT_HIT_LAST_WHIFF_IF_HIT,
    MOVE_EFFECT_RANDOM_STAT_UP_2,
    MOVE_EFFECT_DOUBLE_POWER_IF_HIT,
    MOVE_EFFECT_USE_MOVE_FIRST,
    MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING
};

const u16 PrioritizeDamageFlagList[] = {
    MOVE_EFFECT_HALVE_DEFENSE,
    MOVE_EFFECT_RECOVER_DAMAGE_SLEEP,
    MOVE_EFFECT_CHARGE_TURN_HIGH_CRIT,
    MOVE_EFFECT_CHARGE_TURN_DEF_UP,
    MOVE_EFFECT_CHARGE_TURN_HIGH_CRIT_FLINCH,
    MOVE_EFFECT_CHARGE_TURN_SUN_SKIPS,
    MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP,
    MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP_RAIN_SKIPS,
    MOVE_EFFECT_RECHARGE_AFTER,
    MOVE_EFFECT_SPIT_UP,
    MOVE_EFFECT_HIT_LAST_WHIFF_IF_HIT,
    MOVE_EFFECT_USER_ATK_DEF_DOWN_HIT,
    MOVE_EFFECT_INCREASE_POWER_WITH_LESS_HP,
    MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING,
    MOVE_EFFECT_RECOIL_HALF,
    MOVE_EFFECT_RANDOM_TYPE_BASED_ON_IVS,
    MOVE_EFFECT_POWER_BASED_ON_LOW_SPEED,
    MOVE_EFFECT_NATURAL_GIFT,
    MOVE_EFFECT_JUDGMENT,
    MOVE_EFFECT_POWER_BASED_ON_FRIENDSHIP,
    MOVE_EFFECT_POWER_BASED_ON_LOW_FRIENDSHIP,
    MOVE_EFFECT_INCREASE_POWER_WITH_WEIGHT,
    MOVE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL,
    MOVE_EFFECT_LEVEL_DAMAGE_FLAT,
    MOVE_EFFECT_40_DAMAGE_FLAT,
    MOVE_EFFECT_20_DAMAGE_FLAT
};

const u16 BatonPassFlagList[] = {
    MOVE_EFFECT_ATK_UP_2,
    MOVE_EFFECT_ATK_SPEED_UP,
    MOVE_EFFECT_SP_ATK_SP_DEF_UP,
    MOVE_EFFECT_SP_ATK_UP_2
};

const u16 TagStrategyFlagList_FlatDamage[] = {
    MOVE_EFFECT_ONE_HIT_KO,
    MOVE_EFFECT_METAL_BURST,
    MOVE_EFFECT_COUNTER,
    MOVE_EFFECT_BIDE,
    MOVE_EFFECT_40_DAMAGE_FLAT,
    MOVE_EFFECT_SET_HP_EQUAL_TO_USER,
    MOVE_EFFECT_HALVE_HP,
    MOVE_EFFECT_MIRROR_COAT,
    MOVE_EFFECT_LEVEL_DAMAGE_FLAT,
    MOVE_EFFECT_20_DAMAGE_FLAT
};

const u16 CheckHPFlagList_WantsLowHP[] = {
    MOVE_EFFECT_RESTORE_HALF_HP,
    MOVE_EFFECT_HEAL_HALF_DIFFERENT_IN_WEATHER,
    MOVE_EFFECT_KO_MON_THAT_DEFEATED_USER,
    MOVE_EFFECT_INCREASE_POWER_WITH_LESS_HP,
    MOVE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2,
    MOVE_EFFECT_FAINT_AND_FULL_HEAL_NEXT_MON,
    MOVE_EFFECT_REMOVE_ALL_PP_ON_DEFEAT
};

const u16 CheckHPFlagList_WantsVeryHighHP[] = {
    MOVE_EFFECT_CRIT_UP_2,
    MOVE_EFFECT_BIDE,
    MOVE_EFFECT_CONVERSION,
    MOVE_EFFECT_CONVERSION2,
    MOVE_EFFECT_SET_LIGHT_SCREEN,
    MOVE_EFFECT_SET_REFLECT,
    MOVE_EFFECT_PREVENT_STAT_REDUCTION,
    MOVE_EFFECT_PREVENT_STATUS,
    MOVE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP
};

const u16 CheckHPFlagList_WantsLowOrHighHP[] = {
    MOVE_EFFECT_PREVENT_CRITS,
    MOVE_EFFECT_SWAP_ATK_SP_ATK_STAT_CHANGES,
    MOVE_EFFECT_SWAP_DEF_SP_DEF_STAT_CHANGES,
};

const u16 CheckHPFlagList_WantsHighHP[] = {
    MOVE_EFFECT_RAISE_ATK_WHEN_HIT,
    MOVE_EFFECT_NEXT_ATTACK_ALWAYS_HITS,
    MOVE_EFFECT_COPY_STAT_CHANGES,
    MOVE_EFFECT_MIRROR_COAT,
    MOVE_EFFECT_METAL_BURST,
    MOVE_EFFECT_DECREASE_POWER_WITH_LESS_USER_HP,
    MOVE_EFFECT_HALVE_ELECTRIC_DAMAGE,
    MOVE_EFFECT_HALVE_FIRE_DAMAGE,
    MOVE_EFFECT_RANDOM_STAT_UP_2
};

const u16 CheckHPFlagList_WantsVeryHighHP_Target[] = {
    MOVE_EFFECT_STATUS_POISON,
    MOVE_EFFECT_PREVENT_STAT_REDUCTION,
    MOVE_EFFECT_AVERAGE_HP,
    MOVE_EFFECT_PREVENT_STATUS,
    MOVE_EFFECT_RANDOM_STAT_UP_2,
    MOVE_EFFECT_INCREASE_POWER_WITH_MORE_HP,
    MOVE_EFFECT_ALL_FAINT_3_TURNS
};

const u16 CheckHPFlagList_WantsHighHP_Target[] = {
    MOVE_EFFECT_STATUS_PARALYZE,
    MOVE_EFFECT_STATUS_POISON,
    MOVE_EFFECT_STATUS_BADLY_POISON,
    MOVE_EFFECT_STATUS_BURN,
    MOVE_EFFECT_STATUS_SLEEP,
    MOVE_EFFECT_STATUS_CONFUSE,
    MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION,
    MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION,
    MOVE_EFFECT_BIDE,
    MOVE_EFFECT_CONVERSION,
    MOVE_EFFECT_CONVERSION2,
    MOVE_EFFECT_SET_LIGHT_SCREEN,
    MOVE_EFFECT_SET_REFLECT,
    MOVE_EFFECT_ONE_HIT_KO,
    MOVE_EFFECT_HALVE_HP,
    MOVE_EFFECT_NEXT_ATTACK_ALWAYS_HITS,
    MOVE_EFFECT_DECREASE_LAST_MOVE_PP,
    MOVE_EFFECT_DOUBLE_POWER_EACH_TURN_LOCK_INTO,
    MOVE_EFFECT_COPY_STAT_CHANGES,
    MOVE_EFFECT_MIRROR_COAT,
    MOVE_EFFECT_COUNTER,
    MOVE_EFFECT_HALVE_DEFENSE
};

const u16 HarassmentFlagList[] = {
    MOVE_EFFECT_STATUS_PARALYZE,
    MOVE_EFFECT_STATUS_POISON,
    MOVE_EFFECT_STATUS_BADLY_POISON,
    MOVE_EFFECT_STATUS_BURN,
    MOVE_EFFECT_STATUS_SLEEP,
    MOVE_EFFECT_STATUS_CONFUSE,
    MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION,
    MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION,
    MOVE_EFFECT_INFATUATE,
    MOVE_EFFECT_STATUS_LEECH_SEED,
    MOVE_EFFECT_ENCORE,
    MOVE_EFFECT_DECREASE_LAST_MOVE_PP,
    MOVE_EFFECT_SET_SPIKES,
    MOVE_EFFECT_TORMENT,
    MOVE_EFFECT_NATURE_POWER,
    MOVE_EFFECT_REMOVE_HELD_ITEM,
    MOVE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE,
    MOVE_EFFECT_SECRET_POWER,
    MOVE_EFFECT_ATK_DEF_DOWN,
    MOVE_EFFECT_CAMOUFLAGE,
    MOVE_EFFECT_PREVENT_ITEM_USE,
    MOVE_EFFECT_TRANSFER_STATUS,
    MOVE_EFFECT_TOXIC_SPIKES,
    MOVE_EFFECT_REMOVE_HAZARDS_SCREENS_EVA_DOWN,
    MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER
};

/*Flag Scoring:

This next section is the meat of the AI. Each of these flags individually modifies the score of a move,
given an attacker and a target. The scores start at 100, and are modified accordingly based on the 
the power, usefulness, or lackthereof of the move. If you want to add a flag, you can mirror the way
these are written, and add it to the list of moveEvaluators. The flags are all defined in trainer_ai.h,
so change those names there, too.
*/

// Heavily penalize decisions that would fail, do nothing, or objectively hurt the user.
int BasicFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai) {
    int moveScore = 0;
    struct BattleStruct *ctx = battleSystem->sp;

    // Never use moves that are out of PP.
    if (ai->movePP == 0) {
        moveScore -= 40;
    }

    // Target type immunities:
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT) {
        moveScore -= 10;
    }

    // Wonder Guard:
    if (ctx->moveTbl[ai->move].split != SPLIT_STATUS
    && ai->moveEffectiveness != MOVE_STATUS_SUPER_EFFECTIVE
    && ai->target.ability == ABILITY_WONDER_GUARD) {
        moveScore -= 10;
    }

    if (ai->target.id != ai->attacker.id) { // An attacker does not have immunity to its own moves.
        // Ability-based type/category immunities:
        switch (ai->target.ability) {
        case ABILITY_VOLT_ABSORB:
        case ABILITY_LIGHTNING_ROD:
        case ABILITY_MOTOR_DRIVE:
            if (ai->moveType == TYPE_ELECTRIC) {
                moveScore -= 10;
            }
            break;
        case ABILITY_STORM_DRAIN:
        case ABILITY_WATER_ABSORB:
        case ABILITY_DRY_SKIN:
            if (ai->moveType == TYPE_WATER) {
                moveScore -= 10;
            }
            break;
        case ABILITY_FLASH_FIRE:
        case ABILITY_WELL_BAKED_BODY:
        case ABILITY_THERMAL_EXCHANGE:
            if (ai->moveType == TYPE_FIRE) {
                moveScore -= 10;
            }
            break;
        case ABILITY_SAP_SIPPER:
            if (ai->moveType == TYPE_GRASS) {
                moveScore -= 10;
            }
            break;
        case ABILITY_LEVITATE:
        case ABILITY_EARTH_EATER:
            if (ai->moveType == TYPE_GROUND) {
                moveScore -= 10;
            }
            break;
        case ABILITY_SOUNDPROOF:
            if (IsMoveSoundBased(ai->move)) {
                moveScore -= 10;
            }
            break;
        case ABILITY_GOOD_AS_GOLD:
            if (ctx->moveTbl[ai->move].split == SPLIT_STATUS) {
                moveScore -= 10;
            }
            break;
        }

        // Type-based category immunities:
        // Grass-type immunity to powder and seeding:
        if (HasType(ctx, ai->target.id, TYPE_GRASS)
        && (IsPowderMove(ai->move) || ai->moveEffect == MOVE_EFFECT_STATUS_LEECH_SEED)) {
            moveScore -= 10;
        }

        // Dark-type immunity to opposing prankster + status moves:
        if (HasType(ctx, ai->target.id, TYPE_DARK)
        && ctx->moveTbl[ai->move].split == SPLIT_STATUS
        && ai->attacker.ability == ABILITY_PRANKSTER
        && ctx->moveTbl[ai->move].priority >= 0
        && ai->attacker.side != ai->target.side) {
            moveScore -= 10;
        }
    }

    // Weather-based type immunities:
    // TODO: Handle weather suppression.
    if (ai->moveType == TYPE_WATER
    && (ctx->field_condition & FIELD_CONDITION_EXTREMELY_HARSH_SUNLIGHT)) {
        moveScore -= 10;
    } else if (ai->moveType == TYPE_FIRE
    && (ctx->field_condition & FIELD_CONDITION_HEAVY_RAIN)) {
        moveScore -= 10;
    }

    // Handle all move-effect-specific basic evaluations.
    moveScore += MoveEffectEvaluator_EvaluateBasic(ai, battleSystem);

    // TODO: Contrary

    // DISCUSS: Does any ability-based weather decision-making belong in BasicFlag? I don't think so.

#ifdef DEBUG_TRAINER_AI
    debug_printf("Move score returned from Basic flag for move %d: %d\n", ai->move, moveScore);
#endif

    return moveScore;
}

int EvaluateAttackFlag(struct BattleSystem *battleSystem, int moveSlot, AIContext *ai) {
    int moveScore = 0;
    struct BattleStruct *ctx = battleSystem->sp;
    
    BOOL isCurrentMoveStrongest = TRUE;

    for (int moveSlotToCompare = 0; moveSlotToCompare < ai->attackerMovesKnown; moveSlotToCompare++) {
        if (moveSlotToCompare != moveSlot && ai->maxRollMoveDamages[moveSlotToCompare] > ai->maxRollMoveDamages[moveSlot]) {
            isCurrentMoveStrongest = FALSE;
        }
    }

#ifdef DEBUG_TRAINER_AI
    for (int slot = 0; slot < 4; slot++) {
        debug_printf("Move %d: Max damage roll %d\n", slot, ai->maxRollMoveDamages[slot]);
    }
#endif

    // Provide incentive if the current move KOs.
    if (ai->maxRollMoveDamages[moveSlot] >= ai->target.hp
    && ai->moveEffect != MOVE_EFFECT_HALVE_DEFENSE) { // Do not incentivize self-KO moves at all, even if they see a KO.
        if (ai->moveEffect == MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING // Only incentivize risky options 33% of the time.
        || ai->moveEffect == MOVE_EFFECT_HIT_IN_3_TURNS
        || ai->moveEffect == MOVE_EFFECT_HIT_LAST_WHIFF_IF_HIT) {
            if (BattleRand(battleSystem) % 3 < 1) {
                moveScore += 4; 
            }
        } else if (ctx->moveTbl[ai->move].priority > 0 // Incentivize priority moves that kill.
        && (ai->moveEffect != MOVE_EFFECT_ALWAYS_FLINCH_FIRST_TURN_ONLY
        || ctx->battlemon[ai->attacker.id].moveeffect.fakeOutCount == 0)) {
            moveScore += 6;
        } else { 
            moveScore += 4;
        }
    } else if (isCurrentMoveStrongest == FALSE) { // Slightly penalize weaker moves that do not see a KO.
        for (int moveSlotToCompare = 0; moveSlotToCompare < 4; moveSlotToCompare++) {
            if (ai->maxRollMoveDamages[moveSlotToCompare] > ai->maxRollMoveDamages[moveSlot]) { // For each move that is stronger than this one...
                moveScore--; // Avoids the use of a random move when highest power move cannot be used.
            }
        }
    } else if (ai->moveEffect == MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING // Penalize risky moves 80% of the time.
    || ai->moveEffect == MOVE_EFFECT_HALVE_DEFENSE
    || ai->moveEffect == MOVE_EFFECT_HIT_LAST_WHIFF_IF_HIT) {
        if (BattleRand(battleSystem) % 10 < 8) {
            moveScore -= 2;
        }
    }

#ifdef DEBUG_TRAINER_AI
    debug_printf("Move score returned from EvaluateAttack flag for move %d: %d\n", ai->move, moveScore);
#endif
    return moveScore;
}

int ExpertFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai) {
    int moveScore = MoveEffectEvaluator_EvaluateExpert(ai, battleSystem);

#ifdef DEBUG_TRAINER_AI
    debug_printf("Move score returned from Expert flag for move %d: %d\n", ai->move, moveScore);
#endif

    return MoveEffectEvaluator_EvaluateExpert(ai, battleSystem);
}

int SetupFirstTurnFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai) {
    int moveScore = 0;
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->total_turn == 0) {
        if (IsInList(ai->moveEffect, RaiseStatList, NELEMS(RaiseStatList))
        || IsInList(ai->moveEffect, DropStatList, NELEMS(DropStatList))
        || IsInList(ai->moveEffect, SetupFirstTurnList, NELEMS(SetupFirstTurnList))) {
            if (BattleRand(battleSystem) % 10 < 7) { // Slightly incentivize setup moves 70% of time.
                moveScore += 2;
            }
        }
    }

#ifdef DEBUG_TRAINER_AI
    debug_printf("Move score returned from SetupFirstTurn flag for move %d: %d\n", ai->move, moveScore);
#endif

    return moveScore;
}

int RiskyFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai) {
    int moveScore = 0;

    if (IsInList(ai->moveEffect, RiskyFlagList, NELEMS(RiskyFlagList))) { // Slightly incentivize risky moves 50% of time.
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore += 2;
        }
    }

#ifdef DEBUG_TRAINER_AI
    debug_printf("Move score returned from Risky flag for move %d: %d\n", ai->move, moveScore);
#endif

    return moveScore;
}

int PrioritizeDamageFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai) {
    int moveScore = 0;

    if (IsInList(ai->moveEffect, PrioritizeDamageFlagList, NELEMS(PrioritizeDamageFlagList))) {
        if (BattleRand(battleSystem) % 10 < 6) { // Slightly incentivize strong moves 60% of time.
            moveScore += 2;
        }
    }

#ifdef DEBUG_TRAINER_AI
    debug_printf("Move score returned from PrioritizeDamage flag for move %d: %d\n", ai->move, moveScore);
#endif

    return moveScore;
}

int BatonPassFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai) {
    int moveScore = 0;
    struct BattleStruct *ctx = battleSystem->sp;

    if (ai->attacker.livingPartySize > 1  // The attacker has an ally that they can switch to.
    && ctx->moveTbl[ai->move].split == SPLIT_STATUS // The current move is a status move.
    && BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_PASS_STATS_AND_STATUS) // The attacker has Baton Pass.
    && BattleRand(battleSystem) % 10 < 7) { // Only activate 70% of the time.
        if (IsInList(ai->moveEffect, BatonPassFlagList, NELEMS(BatonPassFlagList))) {
            if (ctx->total_turn == 0) { // Heavily incentivize using setup moves first turn.
                moveScore += 5;
            } else if (ai->attacker.percentHP >= 60) { // Slightly incentivize using setup moves on later turns if reasonably healthy.
                moveScore += 1;
            } else { // Severely disincentivize using setup moves if it is risky to do so.
                moveScore -= 10;
            }
        } else if (ai->moveEffect == MOVE_EFFECT_PROTECT) {
            if (ctx->battlemon[ai->attacker.id].moveeffect.protectSuccessTurns > 0) { // Slightly disincentivize using protection moves if there is a risk of failure.
                moveScore -= 2;
            } else { // Otherwise, slightly incentivize using Protect (probably for Speed Boost).
                moveScore += 2;
            }
        } else if (ai->moveEffect == MOVE_EFFECT_PASS_STATS_AND_STATUS) {
            if (ctx->total_turn == 0) { // Slightly disincentivize using Baton Pass on the first turn.
                moveScore -= 2;
            } else { // Incentivize passing on attack boosts.
                if (ctx->battlemon[ai->attacker.id].states[STAT_ATTACK] >= 9
                || ctx->battlemon[ai->attacker.id].states[STAT_SPECIAL_ATTACK] >= 9) {
                    moveScore += 3;
                } else if (ctx->battlemon[ai->attacker.id].states[STAT_ATTACK] >= 8
                || ctx->battlemon[ai->attacker.id].states[STAT_SPECIAL_ATTACK] >= 8) {
                    moveScore += 2;
                } else if (ctx->battlemon[ai->attacker.id].states[STAT_ATTACK] >= 7
                || ctx->battlemon[ai->attacker.id].states[STAT_SPECIAL_ATTACK] >= 7) {
                    moveScore += 1;
                }
            }
        } else if (BattleRand(battleSystem) % 10 < 9) { // Incentivize using any status move that doesn't fit into the above categories 90% of the time.
            moveScore += 3;
        }
    }

#ifdef DEBUG_TRAINER_AI
    debug_printf("Move score returned from BatonPass flag for move %d: %d\n", ai->move, moveScore);
#endif

    return moveScore;
}

int TagStrategyFlag(struct BattleSystem *battleSystem, int moveSlot, AIContext *ai) {
    int moveScore = 0;
    struct BattleStruct *ctx = battleSystem->sp;

    ai->partner = BATTLER_ALLY(ai->attacker.id);
    ai->partnerHP = ctx->battlemon[ai->partner].hp;
    ai->partnerPercentHP = ai->partnerHP * 100 / ctx->battlemon[ai->partner].maxhp;
    ai->partnerAbility = ctx->battlemon[ai->partner].ability;
    ai->partnerItem = ctx->battlemon[ai->partner].item;
    u32 effectivenessOnPartner;

    moveScore += MoveEffectEvaluator_EvaluateTag(ai, battleSystem);

    /*This section of the flag only contributes to move score if attacker has a living partner
    and they are the target of certain moves.*/
    if (ai->target.id == ai->partner) {
        if (ctx->battlemon[ai->partner].hp == 0) { // If the AI's partner has been KO'd, severely disincentivize any move that would target them.
            moveScore -= 30;
        } else {
            switch (ai->moveType) {
            case TYPE_ELECTRIC:
                if (ai->partnerAbility == ABILITY_MOTOR_DRIVE) {
                    if (BattleRand(battleSystem) % 10 < 4) { // 40% of the time.
                        if (ctx->battlemon[ai->partner].states[STAT_SPEED] == 12) {
                            moveScore -= 30;
                        } else {
                            moveScore += 3;
                        }
                    }
                } else if (ai->partnerAbility == ABILITY_VOLT_ABSORB) {
                    if (ai->partnerPercentHP == 100) {
                        moveScore -= 10;
                    } else if (ai->partnerPercentHP <= 90 && ai->partnerPercentHP > 75) {
                        if (BattleRand(battleSystem) % 4 < 1) { // 25% of the time.
                            moveScore += 3;
                        }
                    } else if (ai->partnerPercentHP > 50) {
                        if (BattleRand(battleSystem) % 2 < 1) { // 50% of the time.
                            moveScore += 3;
                        }
                    } else { // At or below 50% HP.
                        if (BattleRand(battleSystem) % 4 < 3) { // 75% of the time.
                            moveScore += 3;
                        }
                    }
                } else {
                    moveScore -= 30;
                }
                break;
            case TYPE_WATER:
                if (ai->partnerAbility == ABILITY_DRY_SKIN
                || ai->partnerAbility == ABILITY_WATER_ABSORB) {
                    if (ai->partnerPercentHP == 100) {
                        moveScore -= 10;
                    } else if (ai->partnerPercentHP <= 90 && ai->partnerPercentHP > 75) {
                        if (BattleRand(battleSystem) % 4 < 1) { // 25% of the time.
                            moveScore += 3;
                        }
                    } else if (ai->partnerPercentHP > 50) {
                        if (BattleRand(battleSystem) % 2 < 1) { // 50% of the time.
                            moveScore += 3;
                        }
                    } else { // At or below 50% HP.
                        if (BattleRand(battleSystem) % 4 < 3) { // 75% of the time.
                            moveScore += 3;
                        }
                    }
                } else {
                    moveScore -= 30;
                }
                break;
            case TYPE_FIRE: 
                if (ai->partnerAbility == ABILITY_WELL_BAKED_BODY) {
                    if (BattleRand(battleSystem) % 10 < 4) { // 40% of the time.
                        if (ctx->battlemon[ai->partner].moveeffect.flashFire) {
                            moveScore -= 30;
                        } else {
                            moveScore += 3;
                        }
                    }
                } else if (ai->partnerAbility == ABILITY_WELL_BAKED_BODY) {
                    if (BattleRand(battleSystem) % 10 < 4) { // 40% of the time.
                        if (ctx->battlemon[ai->partner].states[STAT_DEFENSE] == 12) {
                            moveScore -= 30;
                        } else {
                            moveScore += 3;
                        }
                    }
                } else if (ai->partnerAbility == ABILITY_THERMAL_EXCHANGE) {
                    if (BattleRand(battleSystem) % 10 < 4) { // 40% of the time.
                        if (ctx->battlemon[ai->partner].states[STAT_ATTACK] == 12) {
                            moveScore -= 30;
                        } else {
                            moveScore += 3;
                        }
                    }
                } else {
                    moveScore -= 30;
                }
                break;
            case TYPE_GRASS:
                if (ai->partnerAbility == ABILITY_SAP_SIPPER) {
                    if (BattleRand(battleSystem) % 10 < 4) { // 40% of the time.
                        if (ctx->battlemon[ai->partner].states[STAT_ATTACK] == 12) {
                            moveScore -= 30;
                        } else {
                            moveScore += 3;
                        }
                    }
                } else {
                    moveScore -= 30;
                }
                break;
            case TYPE_GROUND:
                if (ai->partnerAbility == ABILITY_EARTH_EATER) {
                    if (ai->partnerPercentHP == 100) {
                        moveScore -= 10;
                    } else if (ai->partnerPercentHP <= 90 && ai->partnerPercentHP > 75) {
                        if (BattleRand(battleSystem) % 4 < 1) { // 25% of the time.
                            moveScore += 3;
                        }
                    } else if (ai->partnerPercentHP > 50) {
                        if (BattleRand(battleSystem) % 2 < 1) { // 50% of the time.
                            moveScore += 3;
                        }
                    } else { // At or below 50% HP.
                        if (BattleRand(battleSystem) % 4 < 3) { // 75% of the time.
                            moveScore += 3;
                        }
                    }
                } else {
                    moveScore -= 30;
                }
                break;
            default: // DO NOT attack our partner otherwise!
                moveScore -= 30;
                break;
            }
        }
    } else { // Target is not explicitly partner:
        if (ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE
        && ai->maxRollMoveDamages[moveSlot] < ai->target.hp
        && !(ai->moveEffect == MOVE_EFFECT_LEVEL_DAMAGE_FLAT
        || ai->moveEffect == MOVE_EFFECT_ONE_HIT_KO
        || ai->moveEffect == MOVE_EFFECT_20_DAMAGE_FLAT
        || ai->moveEffect == MOVE_EFFECT_40_DAMAGE_FLAT
        || ai->moveEffect == MOVE_EFFECT_HALVE_HP)) {
            if (BattleRand(battleSystem) % 4 < 3) { // Slightly disincentivize resisted chip damage 75% of the time.
                moveScore -= 1;
            }
        }

        if (MoveIsStrongest(moveSlot, ai)) {
            if (ctx->moveTbl[ai->move].priority >= 1) {
                if (BattleRand(battleSystem) % 10 < 8) { // Slightly incentivize the strongest and fastest move 80% of the time.
                    moveScore += 1;
                } else if (ai->moveEffectiveness == MOVE_STATUS_SUPER_EFFECTIVE) {
                    if (BattleRand(battleSystem) % 10 < 6) { // Otherwise, slightly incentivize the strongest move 60% of the time if it is super-effective.
                        moveScore += 1;
                    }
                }
            } else {
                if (BattleRand(battleSystem) % 2 < 1) { // Slightly incentivize the strongest move 50% of the time.
                    moveScore += 1;
                } else if (ai->moveEffectiveness == MOVE_STATUS_SUPER_EFFECTIVE) {
                    if (BattleRand(battleSystem) % 10 < 6) { // Otherwise, slightly incentivize the strongest move 60% of the time if it is super-effective.
                        moveScore += 1;
                    }
                }
            }
        } else if (BattlerHasMoveEffect(battleSystem, ai->partner, MOVE_EFFECT_BOOST_ALLY_POWER_BY_50_PERCENT)) { // Slightly incentivize damaging moves if partner has Helping Hand.
            if (!IsInList(ai->moveEffect, TagStrategyFlagList_FlatDamage, NELEMS(TagStrategyFlagList_FlatDamage))) { // We exclude flat damaging moves for obvious reasons.
                moveScore += 1;
            }
        } else if (ai->moveType == TYPE_ELECTRIC && ctx->moveTbl[ai->move].target == RANGE_ALL_ADJACENT) { // Electric-type spread moves:
            // TODO: Investigate this function...
            AITypeCalc(ctx, ai->move, TYPE_ELECTRIC, ai->attacker.ability, ai->partnerAbility, BattleItemDataGet(ctx, ai->partnerItem, 1), ctx->battlemon[ai->partner].type1, ctx->battlemon[ai->partner].type2, & effectivenessOnPartner);

            if (ai->partnerAbility == ABILITY_MOTOR_DRIVE
            || ai->partnerAbility == ABILITY_VOLT_ABSORB
            || ai->partnerAbility == ABILITY_LIGHTNING_ROD) {
                    moveScore += 3;
            } else if (effectivenessOnPartner == MOVE_STATUS_NO_EFFECT) {
                moveScore += 3;
            }
            else if (effectivenessOnPartner == MOVE_STATUS_SUPER_EFFECTIVE) {
                moveScore -= 3;
            } else {
                moveScore -= 3;
            }
        } else if (ai->moveType == TYPE_ELECTRIC && ctx->moveTbl[ai->move].target == RANGE_SINGLE_TARGET) { // Electric-type single-target moves (for Lightning Rod):
            if (ctx->battlemon[ai->target.id].ability == ABILITY_LIGHTNING_ROD
            || (ctx->battlemon[BATTLER_ALLY(ai->target.id)].ability == ABILITY_LIGHTNING_ROD && ctx->battlemon[BATTLER_ALLY(ai->target.id)].hp != 0)) {
                moveScore -= 9;
            } else if (ctx->battlemon[ai->partner].ability == ABILITY_LIGHTNING_ROD) {
                moveScore -= 10;
            }
        } else if (ai->moveType == TYPE_FIRE && ctx->moveTbl[ai->move].target == RANGE_ALL_ADJACENT) { // Fire-type spread moves:
            AITypeCalc(ctx, ai->move, TYPE_FIRE, ai->attacker.ability, ai->partnerAbility, BattleItemDataGet(ctx, ai->partnerItem, 1), ctx->battlemon[ai->partner].type1, ctx->battlemon[ai->partner].type2, &effectivenessOnPartner);

            if (ctx->battlemon[ai->target.id].moveeffect.flashFire == TRUE) {
                moveScore += 1; //this is kinda weird to add this instead of subtracting
            }

            if (ai->partnerAbility == ABILITY_FLASH_FIRE) {
                moveScore += 3;
            } else if (ai->partnerAbility == ABILITY_DRY_SKIN || ai->partnerAbility == ABILITY_FLUFFY) {
                moveScore -= 3;
            } else if (effectivenessOnPartner == MOVE_STATUS_SUPER_EFFECTIVE) {
                moveScore -= 3;
            } else if (effectivenessOnPartner == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
                moveScore += 1;
            } else {
                moveScore -= 3; // TODO: this might want to be excluded...
            }
        } else if (ai->moveType == TYPE_WATER && ctx->moveTbl[ai->move].target == RANGE_ALL_ADJACENT) { // Water-type spread moves:
            AITypeCalc(ctx, MOVE_SURF, TYPE_WATER, ai->attacker.ability, ai->partnerAbility, BattleItemDataGet(ctx, ai->partnerItem, 1), ctx->battlemon[ai->partner].type1, ctx->battlemon[ai->partner].type2, &effectivenessOnPartner);
            
            if (ai->partnerAbility == ABILITY_DRY_SKIN || ai->partnerAbility == ABILITY_WATER_ABSORB) {
                moveScore += 3;
            } else if (effectivenessOnPartner == MOVE_STATUS_SUPER_EFFECTIVE) {
                moveScore -= 3;
            } else {
                moveScore -= 3; // TODO: this might want to be excluded...
            }
        } else if (ai->moveType == TYPE_WATER && ctx->moveTbl[ai->move].target == RANGE_SINGLE_TARGET) { // Water-type single-target moves (for Storm Drain):
            if (ctx->battlemon[ai->target.id].ability == ABILITY_STORM_DRAIN
            || (ctx->battlemon[BATTLER_ALLY(ai->target.id)].ability == ABILITY_STORM_DRAIN && ctx->battlemon[BATTLER_ALLY(ai->target.id)].hp != 0)) {
                    moveScore -= 10;
            } else if (ctx->battlemon[ai->partner].ability == ABILITY_STORM_DRAIN) {
                moveScore -= 10;
            }
        } else if (ai->moveType == TYPE_GRASS && ctx->moveTbl[ai->move].target == RANGE_ALL_ADJACENT) { // Grass-type spread moves:
            AITypeCalc(ctx, ai->move, TYPE_GRASS, ai->attacker.ability, ai->partnerAbility, BattleItemDataGet(ctx, ai->partnerItem, 1), ctx->battlemon[ai->partner].type1, ctx->battlemon[ai->partner].type2, &effectivenessOnPartner);
            
            if (ai->partnerAbility == ABILITY_SAP_SIPPER) {
                moveScore += 3;
            } else if (effectivenessOnPartner == MOVE_STATUS_SUPER_EFFECTIVE) {
                moveScore -= 3;
            } else {
                moveScore -= 3; // TODO: this might want to be excluded...
            }
        } 
        
        // TODO:
        // ...wait, is there seriously no handling by default for other spread moves?
        // ...did any exist?
    }

#ifdef DEBUG_TRAINER_AI
    debug_printf("Move score returned from TagStrategy flag for move %d: %d\n", ai->move, moveScore);
#endif

    return moveScore;
}

int CheckHPFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai) {
    int moveScore = 0;

    // Attacker HP:
    if (ai->moveEffect == MOVE_EFFECT_HALVE_DEFENSE) { // Disincentivize self-destruction... (WantsVeryLowHP)
        if (ai->attacker.percentHP >= 31) { // Above 30% HP.
            if (BattleRand(battleSystem) % 10 < 8) { // 80% of the time.
                moveScore -= 2;
            }
        }
    } else if (IsInList(ai->moveEffect, CheckHPFlagList_WantsLowHP, NELEMS(CheckHPFlagList_WantsLowHP))) {
        if (ai->attacker.percentHP >= 71) { // Above 70% HP.
            if (BattleRand(battleSystem) % 10 < 8) { // 80% of the time.
                moveScore -= 2;
            }
        }
    } else if (IsInList(ai->moveEffect, CheckHPFlagList_WantsVeryHighHP, NELEMS(CheckHPFlagList_WantsVeryHighHP))) {
        if (ai->attacker.percentHP < 70) { // Below 70% HP.
            if (BattleRand(battleSystem) % 10 < 8) { // 80% of the time.
                moveScore -= 2;
            }
        }
    } else if (IsInList(ai->moveEffect, CheckHPFlagList_WantsLowOrHighHP, NELEMS(CheckHPFlagList_WantsLowOrHighHP))) {
        if (ai->attacker.percentHP >= 31 && ai->attacker.percentHP <= 70) { // Between 31-70% HP.
            if (BattleRand(battleSystem) % 10 < 8) { // 80% of the time.
                moveScore -= 2;
            }
        }
    } else if (IsInList(ai->moveEffect, CheckHPFlagList_WantsHighHP, NELEMS(CheckHPFlagList_WantsHighHP))) {
        if (ai->attacker.percentHP < 31) { // Below 31% HP.
            if (BattleRand(battleSystem) % 10 < 8) { // 80% of the time.
                moveScore -= 2;
            }
        }
    }

    // Target HP:
    if (ai->target.percentHP <= 70) { // At or below 70% HP.
        if (IsInList(ai->moveEffect, CheckHPFlagList_WantsVeryHighHP_Target, NELEMS(CheckHPFlagList_WantsVeryHighHP_Target))) {
            if (BattleRand(battleSystem) % 10 < 8) { // 80% of the time.
                moveScore -= 2;
            }
        } else if (IsInList(ai->moveEffect, CheckHPFlagList_WantsHighHP_Target, NELEMS(CheckHPFlagList_WantsHighHP_Target))) {
            if (ai->attacker.percentHP <= 30) { // At or below 30% HP.
                if (BattleRand(battleSystem) % 10 < 8) { // 80% of the time.
                    moveScore -= 2;
                }
            }
        }
    }

#ifdef DEBUG_TRAINER_AI
    debug_printf("Move score returned from CheckHP flag for move %d: %d\n", ai->move, moveScore);
#endif

    return moveScore;
}

int WeatherFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai) {
    int moveScore = 0;
    struct BattleStruct *ctx = battleSystem->sp;
    
    if ((ai->moveEffect == MOVE_EFFECT_WEATHER_SANDSTORM
    && !(ctx->field_condition & FIELD_CONDITION_SANDSTORM_ALL))
    || (ai->moveEffect == MOVE_EFFECT_WEATHER_HAIL
    && !(ctx->field_condition & FIELD_CONDITION_HAIL_ALL))
    || (ai->moveEffect == MOVE_EFFECT_WEATHER_SNOW
    && !(ctx->field_condition & FIELD_CONDITION_SNOW_ALL))
    || (ai->moveEffect == MOVE_EFFECT_WEATHER_RAIN
    && !(ctx->field_condition & FIELD_CONDITION_RAIN_ALL))
    || (ai->moveEffect == MOVE_EFFECT_WEATHER_SUN
    && !(ctx->field_condition & FIELD_CONDITION_SUN_ALL))) {
        moveScore += 5;
    }

#ifdef DEBUG_TRAINER_AI
    debug_printf("Move score returned from Weather flag for move %d: %d\n", ai->move, moveScore);
#endif

    return moveScore;
}

int HarassmentFlag(struct BattleSystem *battleSystem, UNUSED int moveSlot_unused, AIContext *ai) {
    int moveScore = 0;

    if (IsInList(ai->moveEffect, HarassmentFlagList, NELEMS(HarassmentFlagList))
    || IsInList(ai->moveEffect, DropStatList, NELEMS(DropStatList))) {
        if (BattleRand(battleSystem) % 2 < 1) { // Slightly incentivize 50% of the time.
            moveScore += 2;
        }
    }

#ifdef DEBUG_TRAINER_AI
    debug_printf("Move score returned from Harassment flag for move %d: %d\n", ai->move, moveScore);
#endif

    return moveScore;
}

// Returns the index of the pokemon on the attacker's (ai's) team with the largest damage against the target.
int AttackerMonWithHighestDamage(struct BattleSystem *battleSystem, AIContext *ai) {
    struct BattleStruct *ctx = battleSystem->sp;
    int maxDamage = 0;
    int maxDamageIndex = 0;

    // Loop over attacker party Pokemon that aren't fainted.
    for (int partySlot = 0; partySlot < ai->attacker.partySize; partySlot++) {
        struct PartyPokemon *attackerMon = Battle_GetClientPartyMon(battleSystem, ai->attacker.id, partySlot);
        // Loop over each Pokemon's moves.
        if (GetMonData(attackerMon, MON_DATA_HP, 0) != 0) {
            for (int moveSlot = 0; moveSlot < 4; moveSlot++) {
                int move = GetMonData(attackerMon, MON_DATA_MOVE1 + moveSlot, NULL);
                int damage = CalcBaseDamage(battleSystem, ctx, move, ctx->side_condition[ai->target.side], ctx->field_condition, 0, 0, ai->attacker.id, ai->target.id, 0);
                if (damage > maxDamage) {
                    maxDamage = damage;
                    maxDamageIndex = partySlot;
                }
            }
        }
    }
    return maxDamageIndex;
}

// Returns the sum of all stat changes.
int BattlerStatStageChangeSum(struct BattleSystem *battleSystem, u32 battlerID) {
    struct BattleStruct *ctx = battleSystem->sp;
    int statSum = 0;

    for (int stat = STAT_ATTACK; stat < STAT_MAX; stat++) {
        statSum += ctx->battlemon[battlerID].states[stat] - 6;
    }

    return statSum;
}

// Returns TRUE if the battler has >= stages in any stat.
BOOL BattlerHasStatStageOrGreater(struct BattleSystem *battleSystem, u32 battlerID, s8 stages) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[battlerID].states[STAT_ATTACK] >= stages
    || ctx->battlemon[battlerID].states[STAT_DEFENSE] >= stages
    || ctx->battlemon[battlerID].states[STAT_SPECIAL_ATTACK] >= stages
    || ctx->battlemon[battlerID].states[STAT_SPECIAL_DEFENSE] >= stages
    || ctx->battlemon[battlerID].states[STAT_SPEED] >= stages
    || ctx->battlemon[battlerID].states[STAT_EVASION] >= stages
    || ctx->battlemon[battlerID].states[STAT_ACCURACY] >= stages) {
        return TRUE;
    }
    return FALSE;
}

// Returns TRUE if the battler has <= stages in any stat.
BOOL BattlerHasStatStageOrLess(struct BattleSystem *battleSystem, u32 battlerID, s8 stages) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[battlerID].states[STAT_ATTACK] <= stages
    || ctx->battlemon[battlerID].states[STAT_DEFENSE] <= stages
    || ctx->battlemon[battlerID].states[STAT_SPECIAL_ATTACK] <= stages
    || ctx->battlemon[battlerID].states[STAT_SPECIAL_DEFENSE] <= stages
    || ctx->battlemon[battlerID].states[STAT_SPEED] <= stages
    || ctx->battlemon[battlerID].states[STAT_EVASION] <= stages
    || ctx->battlemon[battlerID].states[STAT_ACCURACY] <= stages) {
        return TRUE;
    }
    return FALSE;
}

// Returns TRUE if user has a particular move split (physical, special, or status) in their 4 move slots.
BOOL BattlerHasMoveSplit(struct BattleSystem *battleSystem, u32 battlerID, u32 split) {
    struct BattleStruct *ctx = battleSystem->sp;

    for (int moveSlot = 0; moveSlot < 4; moveSlot++) {
        if (ctx->moveTbl[ctx->battlemon[battlerID].move[moveSlot]].split == split){
            return TRUE;
        }
    }
    return FALSE;
}

// Returns TRUE if user has a particular move effect in their 4 move slots.
BOOL BattlerHasMoveEffect(struct BattleSystem *battleSystem, u32 battlerID, u32 moveEffect) {
    struct BattleStruct *ctx = battleSystem->sp;

    for (int moveSlot = 0; moveSlot < 4; moveSlot++) {
        if (ctx->moveTbl[ctx->battlemon[battlerID].move[moveSlot]].effect == moveEffect) {
            return TRUE;
        }
    }
    return FALSE;
}

// Returns TRUE if user has a particular move effect in their 4 move slots.
BOOL BattlerHasMoveType(struct BattleSystem *battleSystem, u32 battlerID, u32 type) {
    struct BattleStruct *ctx = battleSystem->sp;

    for (int moveSlot = 0; moveSlot < 4; moveSlot++) {
        if (ctx->moveTbl[ctx->battlemon[battlerID].move[moveSlot]].type == type) {
            return TRUE;
        }
    }
    return FALSE;
}

// Returns TRUE if the item has some sort of negative effect on the holder.
// TODO: Change to item effects.
BOOL ItemIsBadToTrade(u32 item, AIContext *ai) {
    return (ItemIsDisruptive(item, ai)
    || item == ITEM_MACHO_BRACE
    || item == ITEM_LAGGING_TAIL
    || item == ITEM_TOXIC_ORB
    || item == ITEM_FLAME_ORB
    || item == ITEM_RING_TARGET
    || item == ITEM_BLACK_SLUDGE);
}

// Returns TRUE if the item has some sort of negative effect on the holder.
BOOL ItemIsDisruptive(u32 item, AIContext *ai) {
    return ((item == ITEM_IRON_BALL && !ai->trickRoomActive)
    || item == ITEM_CHOICE_SCARF
    || item == ITEM_CHOICE_SPECS
    || item == ITEM_CHOICE_BAND
    || item == ITEM_STICKY_BARB
    || item == ITEM_POWER_BRACER
    || item == ITEM_POWER_BAND
    || item == ITEM_POWER_ANKLET
    || item == ITEM_POWER_BELT
    || item == ITEM_POWER_LENS
    || item == ITEM_POWER_WEIGHT);
}

// Returns true if the ability passed is "good", which is pretty subjective.
BOOL IsDesirableAbility(u32 ability) {
    return (ability == ABILITY_SPEED_BOOST
    || ability == ABILITY_BATTLE_ARMOR
    || ability == ABILITY_SAND_VEIL
    || ability == ABILITY_STATIC
    || ability == ABILITY_FLASH_FIRE
    || ability == ABILITY_WONDER_GUARD
    || ability == ABILITY_SWIFT_SWIM
    || ability == ABILITY_HUGE_POWER
    || ability == ABILITY_RAIN_DISH
    || ability == ABILITY_CUTE_CHARM
    || ability == ABILITY_SHED_SKIN
    || ability == ABILITY_MARVEL_SCALE
    || ability == ABILITY_PURE_POWER
    || ability == ABILITY_CHLOROPHYLL
    || ability == ABILITY_SHIELD_DUST
    || ability == ABILITY_ADAPTABILITY
    || ability == ABILITY_MAGIC_GUARD
    || ability == ABILITY_MOLD_BREAKER
    || ability == ABILITY_SUPER_LUCK
    || ability == ABILITY_UNAWARE
    || ability == ABILITY_TINTED_LENS
    || ability == ABILITY_FILTER
    || ability == ABILITY_SOLID_ROCK
    || ability == ABILITY_RECKLESS
    || ability == ABILITY_SHELL_ARMOR); 
}

// Returns true if the battler moves first. 
// This function particularly accounts for 4 battlers, not just 2.
BOOL LONG_CALL BattlerMovesFirstDoubles(struct BattleSystem *battleSystem, struct BattleStruct *ctx, int mainBattler, int flag) {
    BOOL movesFirst = TRUE;
    for (int otherBattler = 0; otherBattler < 4; otherBattler++) {
        if (ctx->battlemon[otherBattler].hp != 0 && mainBattler != otherBattler) {
            if (CalcSpeed(battleSystem, ctx, otherBattler, mainBattler, flag) != 1) {
                return FALSE;
            }
        }
    }
    return movesFirst;
}

// Returns true if a given list has a certain value in it.
// DISCUSS: We could convert this to a binary search, but users will need to make sure any additions to the lists are ordered.
BOOL LONG_CALL IsInList(u32 value, const u16 list[], u16 length) {
    for (u16 i = 0; i < length; i++) {
        if (value == list[i]) {
            return TRUE;
        }
    }
    return FALSE;
}

BOOL LONG_CALL MoveIsStrongest(int moveSlot, AIContext *ai) {
    for (int slotToCompare = 0; slotToCompare < 4; slotToCompare++) {
        if (slotToCompare != moveSlot) {
            if (ai->maxRollMoveDamages[moveSlot] < ai->maxRollMoveDamages[slotToCompare]) {
                return FALSE;
            }
        }
    }
    return TRUE;
}

// Set up all of the AI variables, exlcuding the double battle related ones (which are setup explicitly in the TagStrategy flag).
static void SetupStateVariables(struct BattleSystem *battleSystem, u32 attacker, u32 target, AIContext *ai) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    u8 speedCalc;
    u32 temp = 0;

    ai->attacker.id = attacker;
    ai->target.id = target;

    ai->attacker.side = BATTLER_IS_ENEMY(ai->attacker.id);
    ai->target.side = BATTLER_IS_ENEMY(ai->target.id);
    
    ai->attacker.level = ctx->battlemon[attacker].level;
    ai->target.level = ctx->battlemon[target].level;

    ai->attacker.ability = ctx->battlemon[attacker].ability;
    ai->target.ability = ctx->battlemon[target].ability;
    
    ai->attacker.item = ctx->battlemon[attacker].item;
    ai->target.item = ctx->battlemon[target].item;
    ai->attacker.itemHoldEffect = BattleItemDataGet(ctx, ai->attacker.item, ITEM_PARAM_HOLD_EFFECT);
    ai->target.itemHoldEffect = BattleItemDataGet(ctx, ai->target.item, ITEM_PARAM_HOLD_EFFECT);

    ai->attacker.hp = ctx->battlemon[attacker].hp;
    ai->target.hp = ctx->battlemon[target].hp;
    ai->attacker.maxHP = ctx->battlemon[attacker].maxhp;
    ai->target.maxHP = ctx->battlemon[target].maxhp;
    ai->attacker.percentHP = ai->attacker.hp * 100 / ai->attacker.maxHP;
    ai->target.percentHP = ai->target.hp * 100 / ai->target.maxHP;

    ai->attacker.speed = ctx->battlemon[attacker].speed;
    ai->target.speed = ctx->battlemon[target].speed;

    ai->attacker.partyIndex = ctx->sel_mons_no[attacker];
    ai->target.partyIndex = ctx->sel_mons_no[target];

    ai->attacker.turnsOnField = ctx->total_turn - ctx->battlemon[attacker].moveeffect.fakeOutCount;
    ai->target.turnsOnField = ctx->total_turn - ctx->battlemon[target].moveeffect.fakeOutCount;

    ai->targetLastUsedMove = ctx->waza_no_old[target];
    ai->targetLastUsedMoveEffect = ctx->moveTbl[ai->targetLastUsedMove].effect;

    
    
    ai->flingPower = BattleItemDataGet(ctx, ai->attacker.item, ITEM_PARAM_FLING_POWER);
    ai->differenceInAttackStages = ctx->battlemon[attacker].states[STAT_ATTACK] - ctx->battlemon[target].states[STAT_ATTACK];
    ai->differenceInSpAtkStages = ctx->battlemon[attacker].states[STAT_SPECIAL_ATTACK] - ctx->battlemon[target].states[STAT_SPECIAL_ATTACK];
    ai->differenceInDefenseStages = ctx->battlemon[attacker].states[STAT_DEFENSE] - ctx->battlemon[target].states[STAT_DEFENSE];
    ai->differenceInSpDefStages = ctx->battlemon[attacker].states[STAT_SPECIAL_DEFENSE] - ctx->battlemon[target].states[STAT_SPECIAL_DEFENSE];
    ai->targetMovesFirst = 0;
    ai->attackerMovesFirst = 0;
    ai->isSpeedTie = 0;
    ai->trickRoomActive = 0;
    ai->targetHasBadItem = 0;

    speedCalc = CalcSpeed(battleSystem, ctx, ai->target.id, attacker, CALCSPEED_FLAG_NO_PRIORITY); // Checks actual turn order with field state considered.
    
    //evaluates to 0 if ai->target > attacker (false)
    //and 1 if ai->target < attacker (true)
    //if speed tie, then 2.
    if (speedCalc == 0) {
        ai->targetMovesFirst = TRUE;
    } else if (speedCalc == 1) {
        ai->attackerMovesFirst = TRUE;
    } else if (speedCalc == 2) {
        ai->isSpeedTie = TRUE;
    }

    if (ctx->field_condition & FIELD_CONDITION_TRICK_ROOM) {
        ai->trickRoomActive = TRUE;
    }

    if ((ai->target.item == ITEM_IRON_BALL && !ai->trickRoomActive)
    || ai->target.item == ITEM_LAGGING_TAIL
    || ai->target.item == ITEM_TOXIC_ORB
    || ai->target.item == ITEM_FLAME_ORB
    || ai->target.item == ITEM_RING_TARGET
    || ai->target.item == ITEM_STICKY_BARB
    || ai->target.item == ITEM_CHOICE_SCARF
    || ai->target.item == ITEM_CHOICE_SPECS
    || ai->target.item == ITEM_CHOICE_BAND) {
        ai->targetHasBadItem = TRUE;
    }

    /*Check if target or user has stat change*/
    ai->hasStatChange = 0;
    for (int i = 0; i < STAT_MAX; i++) {
        if (ctx->battlemon[attacker].states[i] != 0 ||
            ctx->battlemon[target].states[i] != 0) {
            ai->hasStatChange = TRUE;
        }
    }
    
    /*Check if ai->target has any IMPACTFUL hazards up (spikes at level 2 or higher)*/
    if (ctx->side_condition[ai->target.side] & SIDE_STATUS_STEALTH_ROCK ||
        ctx->scw[ai->target.side].spikesLayers >= 2 ||
        ctx->scw[ai->target.side].toxicSpikesLayers >= 1) {
        ai->targetHasHazards = TRUE;
    } else {
        ai->targetHasHazards = FALSE;
    }

    ai->targetImmuneToPoison = 
        (HasType(ctx, target, TYPE_POISON) || //TODO need to consider corrosion
        HasType(ctx, target, TYPE_STEEL) ||
        ctx->battlemon[target].condition & STATUS_ALL || 
        ctx->side_condition[ai->target.side] & SIDE_STATUS_SAFEGUARD ||
        ai->target.ability == ABILITY_MAGIC_GUARD ||
        ai->target.ability == ABILITY_IMMUNITY ||
        ai->target.ability == ABILITY_POISON_HEAL ||
        (ai->target.ability == ABILITY_LEAF_GUARD && ctx->field_condition & FIELD_CONDITION_SUN_ALL)|| 
        (ai->target.ability == ABILITY_HYDRATION && ctx->field_condition & FIELD_CONDITION_RAIN_ALL)) ||
        (IsClientGrounded(ctx, ai->target.id) && ctx->terrainOverlay.type == MISTY_TERRAIN);

    ai->targetImmuneToParalysis =
        (HasType(ctx, target, TYPE_ELECTRIC) ||
        ctx->battlemon[target].condition & STATUS_ALL || 
        ctx->side_condition[ai->target.side] & SIDE_STATUS_SAFEGUARD ||
        ai->target.ability == ABILITY_LIMBER ||
        (ai->target.ability == ABILITY_LEAF_GUARD && ctx->field_condition & FIELD_CONDITION_SUN_ALL)|| 
        (ai->target.ability == ABILITY_HYDRATION && ctx->field_condition & FIELD_CONDITION_RAIN_ALL) ||
        (ai->target.ability == ABILITY_MAGIC_GUARD && ctx->battlemon[attacker].speed > ctx->battlemon[target].speed)) ||
        (IsClientGrounded(ctx, target) && ctx->terrainOverlay.type == MISTY_TERRAIN);

    ai->targetImmuneToBurn =  
        (HasType(ctx, target, TYPE_FIRE) ||
        ctx->battlemon[target].condition & STATUS_ALL || 
        ctx->side_condition[ai->target.side] & SIDE_STATUS_SAFEGUARD ||
        ai->target.ability == ABILITY_MAGIC_GUARD ||
        ai->target.ability == ABILITY_WATER_VEIL ||
        ai->target.ability == ABILITY_THERMAL_EXCHANGE) ||
        (ai->target.ability == ABILITY_LEAF_GUARD && ctx->field_condition & FIELD_CONDITION_SUN_ALL)|| 
        (ai->target.ability == ABILITY_HYDRATION && ctx->field_condition & FIELD_CONDITION_RAIN_ALL) ||
        (IsClientGrounded(ctx, target) && ctx->terrainOverlay.type == MISTY_TERRAIN);

    ai->targetImmuneToSleep = (ctx->battlemon[target].condition & STATUS_ALL || 
        ctx->side_condition[ai->target.side] & SIDE_STATUS_SAFEGUARD ||
        ai->target.ability == ABILITY_VITAL_SPIRIT ||
        ai->target.ability == ABILITY_INSOMNIA || 
        (ai->target.ability == ABILITY_LEAF_GUARD && ctx->field_condition & FIELD_CONDITION_SUN_ALL)|| 
        (ai->target.ability == ABILITY_HYDRATION && ctx->field_condition & FIELD_CONDITION_RAIN_ALL) ||
        (ai->target.ability == ABILITY_MAGIC_GUARD && ctx->battlemon[attacker].speed > ctx->battlemon[target].speed)||
        (IsClientGrounded(ctx, target) && (ctx->terrainOverlay.type == ELECTRIC_TERRAIN || ctx->terrainOverlay.type == MISTY_TERRAIN)));

    ai->moveEffectiveness = 0;
    
    ai->attacker.partySize = Battle_GetClientPartySize(battleSystem, attacker);
    ai->attacker.livingPartySize = 0;

    ai->target.partySize = Battle_GetClientPartySize(battleSystem, target);
    ai->target.livingPartySize = 0;

    ai->attackerStatusedMons = 0;

    // Attacker team loop:
    for (int i = 0; i < ai->attacker.partySize; i++) {
        struct PartyPokemon *currentMon = Battle_GetClientPartyMon(battleSystem, attacker, i);

        if (!(GetMonData(currentMon, MON_DATA_HP, 0) == 0
        || GetMonData(currentMon, MON_DATA_SPECIES_OR_EGG, 0) == SPECIES_NONE
        || GetMonData(currentMon, MON_DATA_SPECIES_OR_EGG, 0) == SPECIES_EGG)) {
            ai->attacker.livingPartySize++;

            if (!(GetMonData(currentMon, MON_DATA_STATUS, NULL) & STATUS_NONE)) {
                ai->attackerStatusedMons++;
            }
        }
    }

    ai->targetDamagedMons = 0;

    // Target team loop:
    for (int i = 0; i < ai->target.partySize; i++) {
        struct PartyPokemon *currentMon = Battle_GetClientPartyMon(battleSystem, ai->target.id, i);
        if (!(GetMonData(currentMon, MON_DATA_HP, 0) == 0
        || GetMonData(currentMon, MON_DATA_SPECIES_OR_EGG, 0) == SPECIES_NONE
        || GetMonData(currentMon, MON_DATA_SPECIES_OR_EGG, 0) == SPECIES_EGG)) {
            ai->target.livingPartySize++;

            if (GetMonData(currentMon, MON_DATA_HP, 0) != GetMonData(currentMon, MON_DATA_MAXHP, 0)) {
                ai->targetDamagedMons++;
            }
        }
    }

    ai->attackerKnowsPsychUp = 0;
    ai->attackerMovesKnown = GetBattlerLearnedMoveCount(battleSystem, ctx, attacker);
    ai->attackerHasSupereffectiveMove = 0;
    ai->attackerHasDamagingMove = 0;

    /*Loop over all moves for checking certain conditions*/
    /*Set up max roll damage calculations for all known moves.
    Also check if user has a super-effective move*/

    for (int i = 0; i < ai->attackerMovesKnown; i++) {
        int move = ctx->battlemon[attacker].move[i];
        int moveEffect = ctx->moveTbl[move].effect;
        int moveType = ctx->moveTbl[move].type;

        u16 specialMovePower = 0;
        if (moveEffect == MOVE_EFFECT_RANDOM_POWER_10_CASES) { //average magnitude power
            specialMovePower = 71;
        }

        ai->maxRollMoveDamages[i] = CalcBaseDamage(battleSystem, ctx, move, ctx->side_condition[ai->target.side], ctx->field_condition, specialMovePower, 0, ai->attacker.id, ai->target.id, 0);
        ai->maxRollMoveDamages[i] = TypeCalc(battleSystem, ctx, move, 0, attacker, ai->target.id, ai->maxRollMoveDamages[i], &temp);

        /*Directly modify max roll damages for multihit moves by 3.0 (average damage is 3.1x)*/
        //serparately add in type calc after base damage. will need to add in consideration for multihit moves
        if (move == MOVE_EFFECT_MULTI_HIT) {
            ai->maxRollMoveDamages[i] = ai->maxRollMoveDamages[i] * 3;
        }
        //if flat damage moves, set to level (even for psywave)
        else if (moveEffect == MOVE_EFFECT_LEVEL_DAMAGE_FLAT || move == MOVE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL) {
            ai->maxRollMoveDamages[i] = ai->attacker.level;
        }
        else if (moveEffect == MOVE_EFFECT_20_DAMAGE_FLAT) {//this is misnamed in hg-engine (sonicboom)
            ai->maxRollMoveDamages[i] = 20;
        }
        else if (moveEffect == MOVE_EFFECT_40_DAMAGE_FLAT) {//dragon rage
            ai->maxRollMoveDamages[i] = 40;
        }
        else if (moveEffect == MOVE_EFFECT_POISON_MULTI_HIT ||
                moveEffect == MOVE_EFFECT_HIT_TWICE) {//twineedle
            ai->maxRollMoveDamages[i] = ai->maxRollMoveDamages[i] * 2;
        }

        if (ai->maxRollMoveDamages[i] > 0) {
            ai->attackerHasDamagingMove = 1;
        }
        if (move == MOVE_PSYCH_UP) {
            ai->attackerKnowsPsychUp = 1;
        }

        AITypeCalc(ctx, move, moveType, ai->attacker.ability, ai->target.ability, ai->target.itemHoldEffect, ctx->battlemon[target].type1, ctx->battlemon[target].type2, & ai->moveEffectiveness);
        if (ai->moveEffectiveness == MOVE_STATUS_SUPER_EFFECTIVE) {
            ai->attackerHasSupereffectiveMove = 1;
        }
    }
}
