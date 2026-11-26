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

static int MoveEffectEvaluator_Tag_None(UNUSED AIContext *ai_unused, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Tag_Status_Poison(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Tag_Status_Paralyze(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Tag_Sandstorm(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Tag_Swagger(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Tag_Quake(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Tag_Rain(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Tag_Sun(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Tag_FutureSight(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Tag_Hail(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Tag_Status_Burn(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Tag_FollowMe(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Tag_HelpingHand(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Tag_SkillSwap(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Tag_Gravity(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Tag_StatUp_Random(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Tag_GastroAcid(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Tag_TrickRoom(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Tag_Snow(AIContext *ai, struct BattleSystem *battleSystem);

static MoveEffectEvaluator sTagMoveEffectEvaluators[MAX_BASE_MOVE_EFFECT_NUM + 1] = {
    [MOVE_EFFECT_HIT] = MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_STATUS_BADLY_POISON] = MoveEffectEvaluator_Tag_Status_Poison,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_STATUS_POISON] = MoveEffectEvaluator_Tag_Status_Poison,
    [MOVE_EFFECT_STATUS_PARALYZE] = MoveEffectEvaluator_Tag_Status_Paralyze,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_WEATHER_SANDSTORM] = MoveEffectEvaluator_Tag_Sandstorm,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION] = MoveEffectEvaluator_Tag_Swagger,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_RANDOM_POWER_10_CASES] = MoveEffectEvaluator_Tag_Quake,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_WEATHER_RAIN] = MoveEffectEvaluator_Tag_Rain,
    [MOVE_EFFECT_WEATHER_SUN] = MoveEffectEvaluator_Tag_Sun,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_DOUBLE_DAMAGE_DIG] = MoveEffectEvaluator_Tag_Quake,
    [MOVE_EFFECT_HIT_IN_3_TURNS] = MoveEffectEvaluator_Tag_FutureSight,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_WEATHER_HAIL] = MoveEffectEvaluator_Tag_Hail,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_STATUS_BURN] = MoveEffectEvaluator_Tag_Status_Burn,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_MAKE_GLOBAL_TARGET] = MoveEffectEvaluator_Tag_FollowMe,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_BOOST_ALLY_POWER_BY_50_PERCENT] = MoveEffectEvaluator_Tag_HelpingHand,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_SWITCH_ABILITIES] = MoveEffectEvaluator_Tag_SkillSwap,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_GRAVITY] = MoveEffectEvaluator_Tag_Gravity,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_RANDOM_STAT_UP_2] = MoveEffectEvaluator_Tag_StatUp_Random,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_SUPPRESS_ABILITY] = MoveEffectEvaluator_Tag_GastroAcid,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_TRICK_ROOM] = MoveEffectEvaluator_Tag_TrickRoom,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_WEATHER_SNOW] = MoveEffectEvaluator_Tag_Snow,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    MoveEffectEvaluator_Tag_None,
    [MOVE_EFFECT_STEEL_BEAM] = MoveEffectEvaluator_Tag_None,
};

int MoveEffectEvaluator_EvaluateTag(AIContext *ai, struct BattleSystem *battleSystem) {
    return sTagMoveEffectEvaluators[ai->moveEffect](ai, battleSystem);
}

static int MoveEffectEvaluator_Tag_None(UNUSED AIContext *ai_unused, UNUSED struct BattleSystem *battleSystem_unused) {
    return 0;
}

static int MoveEffectEvaluator_Tag_Status_Poison(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ai->target.id == ai->partner && ctx->battlemon[ai->partner].hp > 0) {
        if (ctx->battlemon[ai->partner].ability == ABILITY_POISON_HEAL
        && ctx->battlemon[ai->partner].condition & STATUS_NONE
        && ctx->battlemon[ai->partner].item != ITEM_TOXIC_ORB
        && !HasType(ctx, ai->partner, TYPE_POISON)
        && !HasType(ctx, ai->partner, TYPE_STEEL)
        && ai->partnerPercentHP >= 81) {
            return 5;
        } else {
            return -30;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Tag_Status_Paralyze(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ai->target.id == ai->partner && ctx->battlemon[ai->partner].hp > 0) {
        if (HasType(ctx, ai->partner, TYPE_GROUND)) { // TODO: What is even happening here.
            return -30;
        } else if (ai->partnerAbility == ABILITY_MOTOR_DRIVE
        || ai->partnerAbility == ABILITY_VOLT_ABSORB) {
            // TODO: handle like damaging electric move(?)
        } else {
            return -30;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Tag_Sandstorm(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    if (ai->attacker.ability == ABILITY_SAND_VEIL
    || ai->attacker.ability == ABILITY_SAND_RUSH
    || ai->attacker.ability == ABILITY_SAND_FORCE
    || HasType(ctx, ai->attacker.id, TYPE_ROCK)
    || HasType(ctx, ai->attacker.id, TYPE_GROUND)
    || HasType(ctx, ai->attacker.id, TYPE_STEEL)) {
        moveScore += 2;
    }

    if (ctx->battlemon[ai->partner].hp > 0) {
        if (ai->partnerAbility == ABILITY_SAND_VEIL
        || ai->attacker.ability == ABILITY_SAND_RUSH
        || ai->attacker.ability == ABILITY_SAND_FORCE
        || HasType(ctx, ai->partner, TYPE_ROCK)
        || HasType(ctx, ai->partner, TYPE_GROUND)
        || HasType(ctx, ai->partner, TYPE_STEEL)) {
            moveScore += 2;
        }
    }
            
    return moveScore;
}

static int MoveEffectEvaluator_Tag_Swagger(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ai->target.id == ai->partner && ctx->battlemon[ai->partner].hp > 0) {
        if (ai->partnerItem != ITEM_PERSIM_BERRY
        && ai->partnerItem != ITEM_LUM_BERRY) {
            return -30;
        } else if (ctx->battlemon[ai->partner].states[STAT_ATTACK] < 8) { //Less than +2.
            return 3;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Tag_Quake(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    u32 effectivenessOnPartner;

    if (ai->target.id != ai->partner && ctx->battlemon[ai->partner].hp > 0) {
        AITypeCalc(ctx, MOVE_EARTHQUAKE, TYPE_GROUND, ai->attacker.ability, ai->partnerAbility, BattleItemDataGet(ctx, ai->partnerItem, 1), ctx->battlemon[ai->partner].type1, ctx->battlemon[ai->partner].type2, &effectivenessOnPartner);
        if (ai->partnerAbility == ABILITY_LEVITATE || ai->partnerAbility == ABILITY_EARTH_EATER
        || HasType(ctx, ai->partner, TYPE_FLYING)
        || ctx->battlemon[ai->partner].effect_of_moves & MOVE_EFFECT_FLAG_MAGNET_RISE) {
            return 2;
        } else if (effectivenessOnPartner == MOVE_STATUS_SUPER_EFFECTIVE) {
            return -10;
        } else {
            return -3;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Tag_Rain(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    if ((ai->attacker.ability == ABILITY_HYDRATION && !(ctx->battlemon[ai->attacker.id].condition & STATUS_NONE))
    || ai->attacker.ability == ABILITY_DRY_SKIN
    || ai->attacker.ability == ABILITY_RAIN_DISH
    || (ai->attacker.ability == ABILITY_SWIFT_SWIM && !ai->trickRoomActive)) {
        moveScore += 2;
    }

    if (ctx->battlemon[ai->partner].hp > 0) {
        if ((ai->partnerAbility == ABILITY_HYDRATION && !(ctx->battlemon[ai->partner].condition & STATUS_NONE))
        || ai->partnerAbility == ABILITY_DRY_SKIN
        || ai->partnerAbility == ABILITY_RAIN_DISH
        || (ai->partnerAbility == ABILITY_SWIFT_SWIM && !ai->trickRoomActive)) {
            moveScore += 2;
        }
    }
            
    return moveScore;
}

static int MoveEffectEvaluator_Tag_Sun(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    if ((ai->attacker.ability == ABILITY_LEAF_GUARD && !(ctx->battlemon[ai->attacker.id].condition & STATUS_NONE) && ai->attacker.percentHP >= 30)
    || ai->attacker.ability == ABILITY_FLOWER_GIFT) {
        moveScore += 2;
    } else if (ai->attacker.ability == ABILITY_DRY_SKIN) {
        moveScore -= 2;
    } else if(ai->attacker.ability == ABILITY_SOLAR_POWER) {
        if (ai->attacker.percentHP >= 50) {
            moveScore += 1;
        } else if (BattleRand(battleSystem) % 2 < 1) {
            moveScore -= 2;
        }   
    }

    if (ctx->battlemon[ai->partner].hp > 0) {
        if ((ai->partnerAbility == ABILITY_LEAF_GUARD && !(ctx->battlemon[ai->partner].condition & STATUS_NONE) && ai->partnerPercentHP >= 30)
        || ai->partnerAbility == ABILITY_FLOWER_GIFT) {
            moveScore += 2;
        } else if (ai->partnerAbility == ABILITY_DRY_SKIN) {
            moveScore -= 2;
        } else if(ai->partnerAbility == ABILITY_SOLAR_POWER) {
            if (ai->partnerPercentHP >= 50) {
                moveScore += 1;
            } else if (BattleRand(battleSystem) % 2 < 1) {
                moveScore -= 2;
            }   
        }
    }
            
    return moveScore;
}

static int MoveEffectEvaluator_Tag_FutureSight(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ai->target.id != ai->partner && ctx->battlemon[ai->partner].hp > 0) {
        if (BattlerHasMoveEffect(battleSystem, ai->partner, MOVE_EFFECT_HIT_IN_3_TURNS)) {
            if (CalcSpeed(battleSystem, ctx, ai->attacker.id, ai->partner, 0) == 1) {
                return -3;
            } else if (CalcSpeed(battleSystem, ctx, ai->attacker.id, ai->partner, 0) == 2) {
                if (BattleRand(battleSystem) % 2 < 1) {
                    return -3;
                }
            }
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Tag_Hail(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    if (ai->attacker.ability == ABILITY_ICE_BODY
    || ai->attacker.ability == ABILITY_SNOW_CLOAK
    || BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_BLIZZARD)) {
        moveScore += 2;
    }

    if (ctx->battlemon[ai->partner].hp > 0) {
        if (ai->partnerAbility == ABILITY_ICE_BODY
        || ai->partnerAbility == ABILITY_SNOW_CLOAK
        || BattlerHasMoveEffect(battleSystem, ai->partner, MOVE_EFFECT_BLIZZARD)){
            moveScore += 2;
        }
    }
            
    return moveScore;
}

static int MoveEffectEvaluator_Tag_Status_Burn(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ai->target.id == ai->partner && ctx->battlemon[ai->partner].hp > 0) {
        if (ai->partnerAbility == ABILITY_FLASH_FIRE) {
            if (ctx->battlemon[ai->partner].moveeffect.flashFire == FALSE) {
                return 3;
            } else {
                return -30;
            }                    
        } else if (ctx->battlemon[ai->partner].ability == ABILITY_GUTS
        && ctx->battlemon[ai->partner].condition & STATUS_NONE
        && !HasType(ctx, ai->partner, TYPE_FIRE)
        && ai->partnerItem != ITEM_FLAME_ORB
        && ai->partnerItem != ITEM_TOXIC_ORB
        && ai->partnerPercentHP >= 81) {
            return 5;
        } else {
            return -30;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Tag_FollowMe(AIContext *ai, struct BattleSystem *battleSystem) {
    if (BattleRand(battleSystem) % 4 < 1) { // 25% of the time, do not evaluate.
        return 0;
    }

    if (ai->attacker.percentHP > 90) {
        if (ai->partnerPercentHP > 90) {
            return -1;
        } else if (ai->partnerPercentHP > 50) {
            return 1;
        } else if (ai->partnerPercentHP > 30) {
            return 2;
        } else {
            return 3;
        }
    } else if(ai->attacker.percentHP > 50) {
        if (ai->partnerPercentHP > 90) {
            return -2;
        } else if(ai->partnerPercentHP > 50) {
            return -1;
        } else if(ai->partnerPercentHP > 30) {
            return 1;
        } else {
            return 2;
        }
    } else if(ai->attacker.percentHP > 30) {
        if (ai->partnerPercentHP > 90) {
            return -2;
        } else if (ai->partnerPercentHP > 50) {
            return -2;
        } else if (ai->partnerPercentHP > 30) {
            return 1;
        } else {
            return 2;
        }
    } else {
        return -5;
    }
}

static int MoveEffectEvaluator_Tag_HelpingHand(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ai->target.id == ai->partner && ctx->battlemon[ai->partner].hp > 0) {
        if (ai->partnerPercentHP > 50
        || BattlerMovesFirstDoubles(battleSystem, ctx, ai->partner, 0)) {
            if (BattleRand(battleSystem) % 4 < 3) { // Slightly incentivize this 75% of the time.
                return 2;
            } else { // Slightly disincentivize it the other 25% of the time.
                return -1;
            }
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Tag_SkillSwap(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ai->target.id == ai->partner && ctx->battlemon[ai->partner].hp > 0) {
        if (ai->partnerAbility == ABILITY_TRUANT
        || ai->partnerAbility == ABILITY_SLOW_START) { // Extremely incentivize removing terrible abilities.
            return 10;
        } else if (ai->attacker.ability == ABILITY_LEVITATE) { // Slightly incentivize giving Levitate to Electric-types.
            if (HasType(ctx, ai->partner, TYPE_ELECTRIC)) {
                return 1;
                if (ctx->battlemon[ai->partner].type1 == TYPE_ELECTRIC
                && ctx->battlemon[ai->partner].type2 == TYPE_ELECTRIC) { // Slightly more if the ally is mono-Electric.
                    return 1;
                }
            }
        } else if (ai->attacker.ability == ABILITY_COMPOUND_EYES
        || ai->attacker.ability == ABILITY_NO_GUARD) { // Incentivize giving accuracy-boosting abilities when an ally has a low-accuracy move.
            if (ctx->moveTbl[ai->move].accuracy <= 70) {
                return 3;
            }
        } else {
            return -30;
        }
    } else {
        if (ai->attacker.ability == ABILITY_TRUANT
        || ai->attacker.ability == ABILITY_SLOW_START
        || ai->attacker.ability == ABILITY_KLUTZ
        || ai->attacker.ability == ABILITY_STALL) { // Heavily incentivize giving opponents bad abilities.
            return 5;
        } else if (ai->target.ability == ABILITY_SHADOW_TAG
        || ai->target.ability == ABILITY_PURE_POWER
        || ai->target.ability == ABILITY_HUGE_POWER
        || ai->target.ability == ABILITY_MOLD_BREAKER
        || ai->target.ability == ABILITY_SOLID_ROCK
        || ai->target.ability == ABILITY_FILTER
        || ai->target.ability == ABILITY_FLOWER_GIFT) { // Slightly incentivize taking good abilities from opponents.
            return 2;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Tag_Gravity(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    for (int battlerID = 0; battlerID < 4; battlerID++) {
        if (ctx->battlemon[battlerID].hp > 0) {
            if (BATTLER_IS_ENEMY(battlerID) == ai->attacker.side) {
                if (ctx->battlemon[battlerID].ability == ABILITY_LEVITATE
                || ctx->battlemon[battlerID].ability == ABILITY_EARTH_EATER
                || ctx->battlemon[battlerID].effect_of_moves & MOVE_EFFECT_FLAG_MAGNET_RISE
                || HasType(ctx, battlerID, TYPE_FLYING)) {
                    moveScore -= 5;
                }
            } else {
                if (ctx->battlemon[battlerID].ability == ABILITY_LEVITATE
                || ctx->battlemon[battlerID].ability == ABILITY_EARTH_EATER
                || ctx->battlemon[battlerID].effect_of_moves & MOVE_EFFECT_FLAG_MAGNET_RISE) {
                    if (BattleRand(battleSystem) % 4 < 3) {
                        moveScore += 3;
                    }         
                }
            }
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Tag_StatUp_Random(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ai->target.id == ai->partner && ctx->battlemon[ai->partner].hp > 0) {
        if (BattlerHasStatStageOrGreater(battleSystem, ai->partner, 12)) {
            return -30;
        } else if (ai->partnerPercentHP <= 50) { // Slightly disincentivize if the ally is at low HP.
            return -1;
        } else if (ai->partnerPercentHP > 90) { // Slightly incentivize if the ally is at very high HP.
            if (BattleRand(battleSystem) % 10 < 7) { // This appears to be pointless due to the behaviour below.
                return 2;
            }
        } else if (BattleRand(battleSystem) % 10 < 7) { // Slightly incentivize 70% of the time.
            return 2;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Tag_GastroAcid(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ai->target.id == ai->partner && ctx->battlemon[ai->partner].hp > 0) {
        if (ctx->battlemon[ai->partner].effect_of_moves & MOVE_EFFECT_FLAG_ABILITY_SUPPRESSED) {
            return -30;
        } else if (ai->partnerAbility == ABILITY_TRUANT
        || ai->partnerAbility == ABILITY_SLOW_START) {
            return 5;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Tag_TrickRoom(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ai->attacker.livingPartySize == 1 || ai->target.livingPartySize == 1) { // This seems like a poor decision criteria if the battle will go for more than 1 more turn.
        return -30;
    } else if (ctx->turnOrder[ai->attacker.id] <= 1) { // If attacker moves first or second,
        if (ctx->turnOrder[ai->partner] <= 1){ // ...and partner also moves first or second.
            return -30;
        } else { // and partner moves third or last.
            return -5;
        }
    } else { // If attacker moves third or last,
        if (ctx->turnOrder[ai->partner] <= 1) { // ...and partner moves first or second.
            return -5;
        } else { // ...and partner moves third or last.
            if (BattleRand(battleSystem) % 4 < 3) {
                return 5;
            } else {
                return -5;
            }
        }
    }
}

static int MoveEffectEvaluator_Tag_Snow(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    if (HasType(ctx, ai->attacker.id, TYPE_ICE)) {
        moveScore += 2;
    }

    if (ctx->battlemon[ai->partner].hp > 0) {
        if (HasType(ctx, ai->partner, TYPE_ICE)){
            moveScore += 2;
        }
    }

    return moveScore + MoveEffectEvaluator_Tag_Hail(ai, battleSystem);
}
