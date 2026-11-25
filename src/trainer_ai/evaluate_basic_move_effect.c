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

static int MoveEffectEvaluator_Basic_None(UNUSED AIContext *ai_unused, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_Status_Sleep(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_Selfdestruct(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_DreamEater(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatUp_Attack(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatUp_Defense(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatUp_Speed(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatUp_SpecialAttack(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatUp_SpecialDefense(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatUp_Accuracy(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatUp_Evasion(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatDown_Attack(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatDown_Defense(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatDown_Speed(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatDown_SpecialAttack(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatDown_SpecialDefense(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatDown_Accuracy(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatDown_Evasion(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_AnyStatChanges(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_ForceSwitch(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Conversion(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_HealTarget(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_Status_Poison(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_LightScreen(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_OHKO(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_FocusEnergy(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Status_Confuse(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Reflect(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Status_Paralyze(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_Substitute(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Status_LeechSeed(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Disable(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Encore(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Sleeping(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Conversion2(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_LockOn(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_IncreasedPriority(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_MeanLook(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Status_Nightmare(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Curse(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Spikes(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Foresight(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_PerishSong(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Sandstorm(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Status_Infatuate(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Safeguard(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_HasLivingAlly(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_Rain(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Sun(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_CutHP_50Percent(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_FutureSight(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_FirstTurnOnly(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Stockpile(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_NoStockpile(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Swallow(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Hail(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Torment(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Status_Burn(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_StatDown_Attack_SpecialAttack(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_DoublesOnly(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Taunt(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_SwitchItems(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_HasAlly(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Ingrain(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Endeavor(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_Imprison(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Refresh(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_MudSport(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatDown_Attack_Defense(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatUp_Defense_SpecialDefense(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatUp_Attack_Defense(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_WaterSport(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatUp_SpecialAttack_SpecialDefense(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatUp_Attack_Speed(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Camouflage(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Gravity(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_MiracleEye(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_NaturalGift(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_Tailwind(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StatUp_Random(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_TargetMovesFirst(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_Embargo(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Fling(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_TransferStatus(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_HealBlock(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_PowerTrick(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_GastroAcid(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_LuckyChant(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Copycat(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_PowerSwap(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_GuardSwap(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_LastResort(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_WorrySeed(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_ToxicSpikes(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_AquaRing(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_MagnetRise(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Defog(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_TrickRoom(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_Captivate(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_StealthRock(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_SelfSacrifice(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Basic_StatUp_Attack_SpecialAttack(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_ShedTail(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_Snow(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Basic_VenomDrench(AIContext *ai, struct BattleSystem *battleSystem);

static MoveEffectEvaluator sBasicMoveEffectEvaluators[] = { // MAX_BASE_MOVE_EFFECT_NUM + 1?
    [MOVE_EFFECT_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_STATUS_SLEEP] = MoveEffectEvaluator_Basic_Status_Sleep,
    [MOVE_EFFECT_POISON_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_BURN_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_FREEZE_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_PARALYZE_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_HALVE_DEFENSE] = MoveEffectEvaluator_Basic_Selfdestruct,
    [MOVE_EFFECT_RECOVER_DAMAGE_SLEEP] = MoveEffectEvaluator_Basic_DreamEater,
    [MOVE_EFFECT_COPY_MOVE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ATK_UP] = MoveEffectEvaluator_Basic_StatUp_Attack,
    [MOVE_EFFECT_DEF_UP] = MoveEffectEvaluator_Basic_StatUp_Defense,
    [MOVE_EFFECT_SPEED_UP] = MoveEffectEvaluator_Basic_StatUp_Speed,
    [MOVE_EFFECT_SP_ATK_UP] = MoveEffectEvaluator_Basic_StatUp_SpecialAttack,
    [MOVE_EFFECT_SP_DEF_UP] = MoveEffectEvaluator_Basic_StatUp_SpecialDefense,
    [MOVE_EFFECT_ACC_UP] = MoveEffectEvaluator_Basic_StatUp_Accuracy,
    [MOVE_EFFECT_EVA_UP] = MoveEffectEvaluator_Basic_StatUp_Evasion,
    [MOVE_EFFECT_BYPASS_ACCURACY] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ATK_DOWN] = MoveEffectEvaluator_Basic_StatDown_Attack,
    [MOVE_EFFECT_DEF_DOWN] = MoveEffectEvaluator_Basic_StatDown_Defense,
    [MOVE_EFFECT_SPEED_DOWN] = MoveEffectEvaluator_Basic_StatDown_Speed,
    [MOVE_EFFECT_SP_ATK_DOWN] = MoveEffectEvaluator_Basic_StatDown_SpecialAttack,
    [MOVE_EFFECT_SP_DEF_DOWN] = MoveEffectEvaluator_Basic_StatDown_SpecialDefense,
    [MOVE_EFFECT_ACC_DOWN] = MoveEffectEvaluator_Basic_StatDown_Accuracy,
    [MOVE_EFFECT_EVA_DOWN] = MoveEffectEvaluator_Basic_StatDown_Evasion,
    [MOVE_EFFECT_RESET_STAT_CHANGES] = MoveEffectEvaluator_Basic_AnyStatChanges,
    [MOVE_EFFECT_BIDE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CONTINUE_AND_CONFUSE_SELF] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_FORCE_SWITCH] = MoveEffectEvaluator_Basic_ForceSwitch,
    [MOVE_EFFECT_MULTI_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CONVERSION] = MoveEffectEvaluator_Basic_Conversion,
    [MOVE_EFFECT_FLINCH_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RESTORE_HALF_HP] = MoveEffectEvaluator_Basic_HealTarget,
    [MOVE_EFFECT_STATUS_BADLY_POISON] = MoveEffectEvaluator_Basic_Status_Poison,
    [MOVE_EFFECT_INCREASE_PRIZE_MONEY] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SET_LIGHT_SCREEN] = MoveEffectEvaluator_Basic_LightScreen,
    [MOVE_EFFECT_RANDOM_PRIMARY_STATUS_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RECOVER_HEALTH_AND_SLEEP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ONE_HIT_KO] = MoveEffectEvaluator_Basic_OHKO,
    [MOVE_EFFECT_CHARGE_TURN_HIGH_CRIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_HALVE_HP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_40_DAMAGE_FLAT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_BIND_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_HIGH_CRITICAL] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_HIT_TWICE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CRASH_ON_MISS] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_PREVENT_STAT_REDUCTION] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CRIT_UP_2] = MoveEffectEvaluator_Basic_FocusEnergy,
    [MOVE_EFFECT_RECOIL_QUARTER] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_STATUS_CONFUSE] = MoveEffectEvaluator_Basic_Status_Confuse,
    [MOVE_EFFECT_ATK_UP_2] = MoveEffectEvaluator_Basic_StatUp_Attack,
    [MOVE_EFFECT_DEF_UP_2] = MoveEffectEvaluator_Basic_StatUp_Defense,
    [MOVE_EFFECT_SPEED_UP_2] = MoveEffectEvaluator_Basic_StatUp_Speed,
    [MOVE_EFFECT_SP_ATK_UP_2] = MoveEffectEvaluator_Basic_StatUp_SpecialAttack,
    [MOVE_EFFECT_SP_DEF_UP_2] = MoveEffectEvaluator_Basic_StatUp_SpecialDefense,
    [MOVE_EFFECT_ACC_UP_2] = MoveEffectEvaluator_Basic_StatUp_Accuracy,
    [MOVE_EFFECT_EVA_UP_2] = MoveEffectEvaluator_Basic_StatUp_Evasion,
    [MOVE_EFFECT_TRANSFORM] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ATK_DOWN_2] = MoveEffectEvaluator_Basic_StatDown_Attack,
    [MOVE_EFFECT_DEF_DOWN_2] = MoveEffectEvaluator_Basic_StatDown_Defense,
    [MOVE_EFFECT_SPEED_DOWN_2] = MoveEffectEvaluator_Basic_StatDown_Speed,
    [MOVE_EFFECT_SP_ATK_DOWN_2] = MoveEffectEvaluator_Basic_StatDown_SpecialAttack,
    [MOVE_EFFECT_SP_DEF_DOWN_2] = MoveEffectEvaluator_Basic_StatDown_SpecialDefense,
    [MOVE_EFFECT_ACC_DOWN_2] = MoveEffectEvaluator_Basic_StatDown_Accuracy,
    [MOVE_EFFECT_EVA_DOWN_2] = MoveEffectEvaluator_Basic_StatDown_Evasion,
    [MOVE_EFFECT_SET_REFLECT] = MoveEffectEvaluator_Basic_Reflect,
    [MOVE_EFFECT_STATUS_POISON] = MoveEffectEvaluator_Basic_Status_Poison,
    [MOVE_EFFECT_STATUS_PARALYZE] = MoveEffectEvaluator_Basic_Status_Paralyze,
    [MOVE_EFFECT_LOWER_ATTACK_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_LOWER_DEFENSE_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_LOWER_SPEED_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_LOWER_SP_ATK_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_LOWER_SP_DEF_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_LOWER_ACCURACY_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_LOWER_EVASION_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CHARGE_TURN_HIGH_CRIT_FLINCH] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CONFUSE_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_POISON_MULTI_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_PRIORITY_NEG_1_BYPASS_ACCURACY] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SET_SUBSTITUTE] = MoveEffectEvaluator_Basic_Substitute,
    [MOVE_EFFECT_RECHARGE_AFTER] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RAISE_ATK_WHEN_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_COPY_MOVE_FOR_BATTLE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CALL_RANDOM_MOVE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_STATUS_LEECH_SEED] = MoveEffectEvaluator_Basic_Status_LeechSeed,
    [MOVE_EFFECT_DO_NOTHING] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DISABLE] = MoveEffectEvaluator_Basic_Disable,
    [MOVE_EFFECT_LEVEL_DAMAGE_FLAT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_COUNTER] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ENCORE] = MoveEffectEvaluator_Basic_Encore,
    [MOVE_EFFECT_AVERAGE_HP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DAMAGE_WHILE_ASLEEP] = MoveEffectEvaluator_Basic_Sleeping,
    [MOVE_EFFECT_CONVERSION2] = MoveEffectEvaluator_Basic_Conversion2,
    [MOVE_EFFECT_NEXT_ATTACK_ALWAYS_HITS] = MoveEffectEvaluator_Basic_LockOn,
    [MOVE_EFFECT_LEARN_MOVE_PERMANENT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_UNUSED_96] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_USE_RANDOM_LEARNED_MOVE_SLEEP] = MoveEffectEvaluator_Basic_Sleeping,
    [MOVE_EFFECT_KO_MON_THAT_DEFEATED_USER] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_INCREASE_POWER_WITH_LESS_HP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DECREASE_LAST_MOVE_PP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_LEAVE_WITH_1_HP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CURE_PARTY_STATUS] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_PRIORITY_1] = MoveEffectEvaluator_Basic_IncreasedPriority,
    [MOVE_EFFECT_HIT_THREE_TIMES_INCREMENT_BASE_POWER_10] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_STEAL_HELD_ITEM] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_PREVENT_ESCAPE] = MoveEffectEvaluator_Basic_MeanLook,
    [MOVE_EFFECT_STATUS_NIGHTMARE] = MoveEffectEvaluator_Basic_Status_Nightmare,
    [MOVE_EFFECT_EVA_UP_2_MINIMIZE] = MoveEffectEvaluator_Basic_StatUp_Evasion,
    [MOVE_EFFECT_CURSE] = MoveEffectEvaluator_Basic_Curse,
    [MOVE_EFFECT_UNUSED_110] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_PROTECT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SET_SPIKES] = MoveEffectEvaluator_Basic_Spikes,
    [MOVE_EFFECT_IGNORE_EVASION_REMOVE_GHOST_IMMUNE] = MoveEffectEvaluator_Basic_Foresight,
    [MOVE_EFFECT_ALL_FAINT_3_TURNS] = MoveEffectEvaluator_Basic_PerishSong,
    [MOVE_EFFECT_WEATHER_SANDSTORM] = MoveEffectEvaluator_Basic_Sandstorm,
    [MOVE_EFFECT_SURVIVE_WITH_1_HP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DOUBLE_POWER_EACH_TURN_LOCK_INTO] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION] = MoveEffectEvaluator_Basic_Status_Confuse,
    [MOVE_EFFECT_DOUBLE_POWER_EACH_TURN] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_INFATUATE] = MoveEffectEvaluator_Basic_Status_Infatuate,
    [MOVE_EFFECT_POWER_BASED_ON_FRIENDSHIP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RANDOM_POWER_MAYBE_HEAL] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_POWER_BASED_ON_LOW_FRIENDSHIP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_PREVENT_STATUS] = MoveEffectEvaluator_Basic_Safeguard,
    [MOVE_EFFECT_THAW_AND_BURN_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RANDOM_POWER_10_CASES] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_PASS_STATS_AND_STATUS] = MoveEffectEvaluator_Basic_HasLivingAlly,
    [MOVE_EFFECT_HIT_BEFORE_SWITCH] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_REMOVE_HAZARDS_AND_BINDING] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_20_DAMAGE_FLAT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_UNUSED_131] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_HEAL_HALF_DIFFERENT_IN_WEATHER] = MoveEffectEvaluator_Basic_HealTarget,
    [MOVE_EFFECT_UNUSED_133] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_UNUSED_134] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RANDOM_TYPE_BASED_ON_IVS] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_WEATHER_RAIN] = MoveEffectEvaluator_Basic_Rain,
    [MOVE_EFFECT_WEATHER_SUN] = MoveEffectEvaluator_Basic_Sun,
    [MOVE_EFFECT_RAISE_DEF_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RAISE_ATTACK_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RAISE_ALL_STATS_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_UNUSED_141] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP] = MoveEffectEvaluator_Basic_CutHP_50Percent,
    [MOVE_EFFECT_COPY_STAT_CHANGES] = MoveEffectEvaluator_Basic_AnyStatChanges,
    [MOVE_EFFECT_MIRROR_COAT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CHARGE_TURN_DEF_UP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_FLINCH_DOUBLE_DAMAGE_FLY_OR_BOUNCE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DOUBLE_DAMAGE_DIG] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_HIT_IN_3_TURNS] = MoveEffectEvaluator_Basic_FutureSight,
    [MOVE_EFFECT_DOUBLE_DAMAGE_FLY_OR_BOUNCE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_FLINCH_MINIMIZE_DOUBLE_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CHARGE_TURN_SUN_SKIPS] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_THUNDER] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_FLEE_FROM_WILD_BATTLE] = MoveEffectEvaluator_Basic_HasLivingAlly,
    [MOVE_EFFECT_BEAT_UP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_FLY] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DEF_UP_DOUBLE_ROLLOUT_POWER] = MoveEffectEvaluator_Basic_StatDown_Defense,
    [MOVE_EFFECT_UNUSED_157] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ALWAYS_FLINCH_FIRST_TURN_ONLY] = MoveEffectEvaluator_Basic_FirstTurnOnly,
    [MOVE_EFFECT_UPROAR] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_STOCKPILE] = MoveEffectEvaluator_Basic_Stockpile,
    [MOVE_EFFECT_SPIT_UP] = MoveEffectEvaluator_Basic_NoStockpile,
    [MOVE_EFFECT_SWALLOW] = MoveEffectEvaluator_Basic_Swallow,
    [MOVE_EFFECT_UNUSED_163] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_WEATHER_HAIL] = MoveEffectEvaluator_Basic_Hail,
    [MOVE_EFFECT_TORMENT] = MoveEffectEvaluator_Basic_Torment,
    [MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION] = MoveEffectEvaluator_Basic_Status_Confuse,
    [MOVE_EFFECT_STATUS_BURN] = MoveEffectEvaluator_Basic_Status_Burn,
    [MOVE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2] = MoveEffectEvaluator_Basic_StatDown_Attack_SpecialAttack,
    [MOVE_EFFECT_DOUBLE_POWER_WHEN_STATUSED] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_HIT_LAST_WHIFF_IF_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DOUBLE_POWER_AND_CURE_PARALYSIS] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_MAKE_GLOBAL_TARGET] = MoveEffectEvaluator_Basic_DoublesOnly,
    [MOVE_EFFECT_NATURE_POWER] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SP_DEF_UP_DOUBLE_ELECTRIC_POWER] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_TAUNT] = MoveEffectEvaluator_Basic_Taunt,
    [MOVE_EFFECT_BOOST_ALLY_POWER_BY_50_PERCENT] = MoveEffectEvaluator_Basic_DoublesOnly,
    [MOVE_EFFECT_SWITCH_HELD_ITEMS] = MoveEffectEvaluator_Basic_SwitchItems,
    [MOVE_EFFECT_COPY_ABILITY] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_HEAL_IN_3_TURNS] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_USE_RANDOM_ALLY_MOVE] = MoveEffectEvaluator_Basic_HasAlly,
    [MOVE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL] = MoveEffectEvaluator_Basic_Ingrain,
    [MOVE_EFFECT_USER_ATK_DEF_DOWN_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_MAGIC_COAT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RECYCLE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DOUBLE_DAMAGE_IF_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_REMOVE_SCREENS] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN] = MoveEffectEvaluator_Basic_Status_Sleep,
    [MOVE_EFFECT_REMOVE_HELD_ITEM] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SET_HP_EQUAL_TO_USER] = MoveEffectEvaluator_Basic_Endeavor,
    [MOVE_EFFECT_DECREASE_POWER_WITH_LESS_USER_HP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SWITCH_ABILITIES] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE] = MoveEffectEvaluator_Basic_Imprison,
    [MOVE_EFFECT_HEAL_STATUS] = MoveEffectEvaluator_Basic_Refresh,
    [MOVE_EFFECT_REMOVE_ALL_PP_ON_DEFEAT] = MoveEffectEvaluator_Basic_HasLivingAlly,
    [MOVE_EFFECT_STEAL_STATUS_MOVE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_INCREASE_POWER_WITH_WEIGHT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SECRET_POWER] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RECOIL_THIRD] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CONFUSE_ALL_ADJACENT] = MoveEffectEvaluator_Basic_Status_Confuse, // TODO: Change for doubles
    [MOVE_EFFECT_HIGH_CRITICAL_BURN_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_HALVE_ELECTRIC_DAMAGE] = MoveEffectEvaluator_Basic_MudSport,
    [MOVE_EFFECT_BADLY_POISON_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CHANGE_TYPE_WITH_WEATHER] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_USER_SP_ATK_DOWN_2] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ATK_DEF_DOWN] = MoveEffectEvaluator_Basic_StatDown_Attack_Defense,
    [MOVE_EFFECT_DEF_SP_DEF_UP] = MoveEffectEvaluator_Basic_StatUp_Defense_SpecialDefense,
    [MOVE_EFFECT_HIT_FLY] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ATK_DEF_UP] = MoveEffectEvaluator_Basic_StatUp_Attack_Defense,
    [MOVE_EFFECT_HIGH_CRITICAL_POISON_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_HALVE_FIRE_DAMAGE] = MoveEffectEvaluator_Basic_WaterSport,
    [MOVE_EFFECT_SP_ATK_SP_DEF_UP] = MoveEffectEvaluator_Basic_StatUp_SpecialAttack_SpecialDefense,
    [MOVE_EFFECT_ATK_SPEED_UP] = MoveEffectEvaluator_Basic_StatUp_Attack_Speed,
    [MOVE_EFFECT_CAMOUFLAGE] = MoveEffectEvaluator_Basic_Camouflage,
    [MOVE_EFFECT_HEAL_HALF_REMOVE_FLYING_TYPE] = MoveEffectEvaluator_Basic_HealTarget,
    [MOVE_EFFECT_GRAVITY] = MoveEffectEvaluator_Basic_Gravity,
    [MOVE_EFFECT_IGNORE_EVASION_REMOVE_DARK_IMMUNE] = MoveEffectEvaluator_Basic_MiracleEye,
    [MOVE_EFFECT_DOUBLE_POWER_HEAL_SLEEP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_USER_SPEED_DOWN_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_POWER_BASED_ON_LOW_SPEED] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_FAINT_AND_FULL_HEAL_NEXT_MON] = MoveEffectEvaluator_Basic_SelfSacrifice,
    [MOVE_EFFECT_DOUBLE_POWER_WHEN_BELOW_HALF] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_NATURAL_GIFT] = MoveEffectEvaluator_Basic_NaturalGift,
    [MOVE_EFFECT_REMOVE_PROTECT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_EAT_BERRY] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DOUBLE_SPEED_3_TURNS] = MoveEffectEvaluator_Basic_Tailwind,
    [MOVE_EFFECT_RANDOM_STAT_UP_2] = MoveEffectEvaluator_Basic_StatUp_Random,
    [MOVE_EFFECT_METAL_BURST] = MoveEffectEvaluator_Basic_TargetMovesFirst,
    [MOVE_EFFECT_SWITCH_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_USER_DEF_SP_DEF_DOWN_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DOUBLE_POWER_IF_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DOUBLE_POWER_IF_TARGET_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_PREVENT_ITEM_USE] = MoveEffectEvaluator_Basic_Embargo,
    [MOVE_EFFECT_FLING] = MoveEffectEvaluator_Basic_Fling,
    [MOVE_EFFECT_TRANSFER_STATUS] = MoveEffectEvaluator_Basic_TransferStatus,
    [MOVE_EFFECT_HIGHER_POWER_WHEN_LOW_PP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_PREVENT_HEALING] = MoveEffectEvaluator_Basic_HealBlock,
    [MOVE_EFFECT_INCREASE_POWER_WITH_MORE_HP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SWAP_ATK_DEF] = MoveEffectEvaluator_Basic_PowerTrick,
    [MOVE_EFFECT_SUPPRESS_ABILITY] = MoveEffectEvaluator_Basic_GastroAcid,
    [MOVE_EFFECT_PREVENT_CRITS] = MoveEffectEvaluator_Basic_LuckyChant,
    [MOVE_EFFECT_USE_MOVE_FIRST] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_USE_LAST_USED_MOVE] = MoveEffectEvaluator_Basic_Copycat,
    [MOVE_EFFECT_SWAP_ATK_SP_ATK_STAT_CHANGES] = MoveEffectEvaluator_Basic_PowerSwap,
    [MOVE_EFFECT_SWAP_DEF_SP_DEF_STAT_CHANGES] = MoveEffectEvaluator_Basic_GuardSwap,
    [MOVE_EFFECT_INCREASE_POWER_WITH_MORE_STAT_UP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_FAIL_IF_NOT_USED_ALL_OTHER_MOVES] = MoveEffectEvaluator_Basic_LastResort,
    [MOVE_EFFECT_SET_ABILITY_TO_INSOMNIA] = MoveEffectEvaluator_Basic_WorrySeed,
    [MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING] = MoveEffectEvaluator_Basic_IncreasedPriority,
    [MOVE_EFFECT_TOXIC_SPIKES] = MoveEffectEvaluator_Basic_ToxicSpikes,
    [MOVE_EFFECT_SWAP_STAT_CHANGES] = MoveEffectEvaluator_Basic_AnyStatChanges,
    [MOVE_EFFECT_RESTORE_HP_EVERY_TURN] = MoveEffectEvaluator_Basic_AquaRing,
    [MOVE_EFFECT_GIVE_GROUND_IMMUNITY] = MoveEffectEvaluator_Basic_MagnetRise,
    [MOVE_EFFECT_RECOIL_BURN_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_STRUGGLE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DIVE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DIG] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DOUBLE_DAMAGE_DIVE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_REMOVE_HAZARDS_SCREENS_EVA_DOWN] = MoveEffectEvaluator_Basic_Defog,
    [MOVE_EFFECT_TRICK_ROOM] = MoveEffectEvaluator_Basic_TrickRoom,
    [MOVE_EFFECT_BLIZZARD] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_WHIRLPOOL] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RECOIL_PARALYZE_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_BOUNCE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_UNUSED_264] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER] = MoveEffectEvaluator_Basic_Captivate,
    [MOVE_EFFECT_STEALTH_ROCK] = MoveEffectEvaluator_Basic_StealthRock,
    [MOVE_EFFECT_CHATTER] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_JUDGMENT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RECOIL_HALF] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON] = MoveEffectEvaluator_Basic_SelfSacrifice,
    [MOVE_EFFECT_LOWER_SP_DEF_2_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SHADOW_FORCE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_FLINCH_BURN_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_FLINCH_FREEZE_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_FLINCH_PARALYZE_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RAISE_SP_ATK_HIT] = MoveEffectEvaluator_Basic_None,
    // TODO: New effects
    [MOVE_EFFECT_ATK_ACC_UP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_GUARD_SPLIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_POWER_SPLIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DOUBLE_POWER_ON_POISONED] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_AUTOTOMIZE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ALWAYS_CRITICAL] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SP_ATK_SP_DEF_SPEED_UP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CHANGE_TO_WATER_TYPE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RAISE_SPEED_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ATK_DEF_ACC_UP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DOUBLE_DAMAGE_ON_STATUS] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SPEED_UP_2_ATK_UP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DOUBLE_POWER_WITHOUT_ITEM] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ATK_SP_ATK_SPEED_UP_2_DEF_SP_DEF_DOWN] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_USER_DEF_SP_DEF_SPEED_DOWN_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_HEAVY_SLAM] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CONFUSE_HIT_CRASH_ON_MISS] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_APPLY_TERRAINS] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ATK_SP_ATK_UP] = MoveEffectEvaluator_Basic_StatUp_Attack_SpecialAttack, // DISCUSS: Should we fully replicate code to cut down on clear body checks?
    [MOVE_EFFECT_HIT_TWICE_AND_FLINCH] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_UP_TO_10_HITS] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_HIT_THREE_TIMES_INCREMENT_BASE_POWER_20] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_HIT_THREE_TIMES] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_PSYBLADE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SLEEP_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SPICY_EXTRACT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ATK_SP_ATK_SPEED_UP_2] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SHED_TAIL] = MoveEffectEvaluator_Basic_ShedTail,
    [MOVE_EFFECT_AFTER_YOU] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_QUASH] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_TECHNO_BLAST] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_MULTI_ATTACK] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_IVY_CUDGEL] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_LEECH_SEED_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SET_LIGHT_SCREEN_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SET_REFLECT_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RESET_STAT_CHANGES_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CURE_PARTY_STATUS_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RECOVER_FULL_DAMAGE_DEALT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RAISE_EVA_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RAISE_DEF_2_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CHARGE_TURN_ATK_SP_ATK_SPEED_UP_2] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_WEATHER_SNOW] = MoveEffectEvaluator_Basic_Snow,
    [MOVE_EFFECT_PREVENT_HEALING_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_BURN_HIT_DOUBLE_POWER_ON_STATUS] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_POISON_HIT_DOUBLE_POWER_ON_POISONED] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SET_ABILITY_TO_SIMPLE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP_RAIN_SKIPS] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_STICKY_WEB] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ATK_UP_3] = MoveEffectEvaluator_Basic_StatUp_Attack,
    [MOVE_EFFECT_DEF_UP_3] = MoveEffectEvaluator_Basic_StatUp_Defense,
    [MOVE_EFFECT_SPEED_UP_3] = MoveEffectEvaluator_Basic_StatUp_Speed,
    [MOVE_EFFECT_SP_ATK_UP_3] = MoveEffectEvaluator_Basic_StatUp_SpecialAttack,
    [MOVE_EFFECT_SP_DEF_UP_3] = MoveEffectEvaluator_Basic_StatUp_SpecialDefense,
    [MOVE_EFFECT_ACC_UP_3] = MoveEffectEvaluator_Basic_StatUp_Accuracy,
    [MOVE_EFFECT_EVA_UP_3] = MoveEffectEvaluator_Basic_StatUp_Evasion,
    [MOVE_EFFECT_ATK_DOWN_3] = MoveEffectEvaluator_Basic_StatDown_Attack,
    [MOVE_EFFECT_DEF_DOWN_3] = MoveEffectEvaluator_Basic_StatDown_Defense,
    [MOVE_EFFECT_SPEED_DOWN_3] = MoveEffectEvaluator_Basic_StatDown_Speed,
    [MOVE_EFFECT_SP_ATK_DOWN_3] = MoveEffectEvaluator_Basic_StatDown_SpecialAttack,
    [MOVE_EFFECT_SP_DEF_DOWN_3] = MoveEffectEvaluator_Basic_StatDown_SpecialDefense,
    [MOVE_EFFECT_ACC_DOWN_3] = MoveEffectEvaluator_Basic_StatDown_Accuracy,
    [MOVE_EFFECT_EVA_DOWN_3] = MoveEffectEvaluator_Basic_StatDown_Evasion,
    [MOVE_EFFECT_HURRICANE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_USER_DEF_DOWN_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_USER_DEF_DOWN_HIT_REMOVE_PROTECT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ATK_DEF_SPEED_UP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_POLTERGEIST] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RAISE_ALL_STATS_LOSE_THIRD_MAX_HP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RECOVER_THREE_QUARTERS_DAMAGE_DEALT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT_BURN_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_FICKLE_BEAM] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SLEEP_POISON_PARALYZE_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_PREVENT_ESCAPE_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_PREVENT_ESCAPE_BOTH_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_STEALTH_ROCK_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SET_SPIKES_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_USER_SPEED_DOWN_2_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_BLEAKWIND_STORM] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_WILDBOLT_STORM] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SANDSEAR_STORM] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_TOXIC_THREAD] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_MAKE_IT_RAIN] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_VENOM_DRENCH] = MoveEffectEvaluator_Basic_VenomDrench,
    [MOVE_EFFECT_ATK_SP_ATK_DOWN] = MoveEffectEvaluator_Basic_StatDown_Attack_SpecialAttack,
    [MOVE_EFFECT_CHARGE_TURN_PARALYZE_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CHARGE_TURN_BURN_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_QUARTER_HP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_HIT_THREE_TIMES_ALWAYS_CRITICAL] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_TAKE_HEART] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_HIGH_CRITICAL_RAISE_SPEED_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_MORTAL_SPIN] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_TIDY_UP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_PROTECT_USER_SIDE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_INCINERATE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_FIRST_TURN_ONLY] = MoveEffectEvaluator_Basic_FirstTurnOnly,
    [MOVE_EFFECT_ADD_TYPE_GRASS] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ADD_TYPE_GHOST] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CHANGE_TO_PSYCHIC_TYPE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SET_AURORA_VEIL] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_STRENGTH_SAP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_HEAL_TARGET] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_POLLEN_PUFF] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_COACHING] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DOUBLE_POWER_IF_FASTER] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_LIFE_DEW] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ENTRAINMENT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_HOWL] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_DECORATE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_END_TERRAIN] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_FELL_STINGER] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_PARTING_SHOT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_CLEAR_SMOG] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ION_DELUGE] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_ION_DELUGE_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_REMOVE_USER_FIRE_TYPE_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_REMOVE_USER_ELECTRIC_TYPE_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_FORCE_SWITCH_HIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_BELCH] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_STUFF_CHEEKS] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_POWDER] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_LASER_FOCUS] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_GLAIVE_RUSH] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_THROAT_CHOP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_FINAL_GAMBIT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_RECOIL_HALF_MAX_HP] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_GIVE_HELD_ITEM] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_IGNORE_PROTECT] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_SMACK_DOWN] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_MAGIC_ROOM] = MoveEffectEvaluator_Basic_None,
    [MOVE_EFFECT_STEEL_BEAM] = MoveEffectEvaluator_Basic_None,
};

int MoveEffectEvaluator_EvaluateBasic(AIContext *ai, struct BattleSystem *battleSystem) {
    return sBasicMoveEffectEvaluators[ai->moveEffect](ai, battleSystem);
}

static int MoveEffectEvaluator_Basic_None(UNUSED AIContext *ai_unused, UNUSED struct BattleSystem *battleSystem_unused) {
    return 0;
}

static int MoveEffectEvaluator_Basic_Status_Sleep(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->targetImmuneToSleep) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Selfdestruct(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->target.ability == ABILITY_DAMP
    || (ai->attacker.livingPartySize == 1 && ai->target.livingPartySize > 1)) { // Prevents an automatic loss condition.
            return -10;
        } else if (ai->attacker.livingPartySize == 1 && ai->target.livingPartySize == 1) {
            return -1; // Considers exploding if both parties have exactly one Pokemon left.
        }
    return 0;
}

static int MoveEffectEvaluator_Basic_DreamEater(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (!(ctx->battlemon[ai->target.id].condition & STATUS_SLEEP)) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatUp_Attack(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].states[STAT_ATTACK] >= 12) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatUp_Defense(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].states[STAT_DEFENSE] >= 12) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatUp_Speed(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].states[STAT_SPEED] >= 12
    || ctx->field_condition & FIELD_CONDITION_TRICK_ROOM) { // TODO
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatUp_SpecialAttack(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].states[STAT_SPECIAL_ATTACK] >= 12) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatUp_SpecialDefense(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].states[STAT_SPECIAL_DEFENSE] >= 12) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatUp_Accuracy(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].states[STAT_ACCURACY] >= 12
    || ai->target.ability == ABILITY_NO_GUARD) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatUp_Evasion(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].states[STAT_EVASION] >= 12
    || ai->target.ability == ABILITY_NO_GUARD) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatDown_Attack(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].states[STAT_ATTACK] <= 0
    || ai->target.ability == ABILITY_HYPER_CUTTER
    || ai->target.ability == ABILITY_CLEAR_BODY
    || ai->target.ability == ABILITY_WHITE_SMOKE) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatDown_Defense(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].states[STAT_DEFENSE] <= 0
    || ai->target.ability == ABILITY_CLEAR_BODY
    || ai->target.ability == ABILITY_WHITE_SMOKE) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatDown_Speed(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].states[STAT_SPEED] <= 0
    || ai->target.ability == ABILITY_CLEAR_BODY
    || ai->target.ability == ABILITY_WHITE_SMOKE
    || (ctx->field_condition & FIELD_CONDITION_TRICK_ROOM)) { // TODO
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatDown_SpecialAttack(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].states[STAT_SPECIAL_ATTACK] <= 0
    || ai->target.ability == ABILITY_CLEAR_BODY
    || ai->target.ability == ABILITY_WHITE_SMOKE) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatDown_SpecialDefense(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].states[STAT_SPECIAL_DEFENSE] <= 0
    || ai->target.ability == ABILITY_CLEAR_BODY
    || ai->target.ability == ABILITY_WHITE_SMOKE) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatDown_Accuracy(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].states[STAT_ACCURACY] <= 0
    || ai->attacker.ability == ABILITY_NO_GUARD
    || ai->target.ability == ABILITY_NO_GUARD
    || ai->target.ability == ABILITY_KEEN_EYE
    || ai->target.ability == ABILITY_CLEAR_BODY
    || ai->target.ability == ABILITY_WHITE_SMOKE) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatDown_Evasion(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].states[STAT_EVASION] <= 0
    || ai->attacker.ability == ABILITY_NO_GUARD
    || ai->target.ability == ABILITY_NO_GUARD
    || ai->target.ability == ABILITY_CLEAR_BODY
    || ai->target.ability == ABILITY_WHITE_SMOKE) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_AnyStatChanges(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (!ai->hasStatChange) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_ForceSwitch(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ai->target.livingPartySize == 1
    || ai->target.ability == ABILITY_SUCTION_CUPS
    || (ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN)) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Conversion(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    u32 topSlotMove = ctx->battlemon[ai->attacker.id].move[0];

    if (HasType(ctx, ai->attacker.id, ctx->moveTbl[topSlotMove].type)) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_HealTarget(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->target.hp == ai->target.maxHP) {
        return -8;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Status_Poison(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->targetImmuneToPoison) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_LightScreen(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ctx->side_condition[ai->attacker.side] & SIDE_STATUS_LIGHT_SCREEN) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_OHKO(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->target.ability == ABILITY_STURDY
    || ai->attacker.level < ai->target.level) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_FocusEnergy(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].condition2 & STATUS2_FOCUS_ENERGY) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Status_Confuse(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if ((ctx->battlemon[ai->target.id].condition2 & STATUS2_CONFUSION) // TODO: Fold into status immunity flags.
    || ctx->side_condition[ai->target.side] & SIDE_STATUS_SAFEGUARD
    || ai->target.ability == ABILITY_OWN_TEMPO) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Reflect(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->side_condition[ai->attacker.side] & SIDE_STATUS_REFLECT) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Status_Paralyze(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->targetImmuneToParalysis) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Substitute(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->attacker.id].condition2 & STATUS2_SUBSTITUTE
    || ai->attacker.percentHP <= 25) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Status_LeechSeed(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED
    || ai->target.ability == ABILITY_MAGIC_GUARD) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Disable(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].moveeffect.disabledTurns != 0) {
        return -8;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Encore(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].moveeffect.encoredTurns != 0) {
        return -8;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Sleeping(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (!(ctx->battlemon[ai->attacker.id].condition & STATUS_SLEEP)) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Conversion2(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ai->attackerMovesFirst) {
        u8 typeToChangeTo = ctx->lastClientMoveType[ai->target.id];

        if (typeToChangeTo == TYPE_TYPELESS
        || ctx->waza_no_old[ai->target.id] == MOVE_STRUGGLE
        || ctx->battlemon[ai->attacker.id].is_currently_terastallized
        || HasType(ctx, ai->attacker.id, typeToChangeTo)) {
            return -10;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Basic_LockOn(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if ((ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_LOCK_ON)
    || ai->target.ability == ABILITY_NO_GUARD
    || ai->attacker.ability == ABILITY_NO_GUARD) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_IncreasedPriority(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->terrainOverlay.type == PSYCHIC_TERRAIN
    && IsClientGrounded(ctx, ai->target.id)) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_MeanLook(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].condition2 & STATUS2_MEAN_LOOK) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Status_Nightmare(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].condition2 & STATUS2_NIGHTMARE
    || ai->target.ability == ABILITY_MAGIC_GUARD) {
        return -10;
    } else if (!(ctx->battlemon[ai->target.id].condition & STATUS_SLEEP)) {
        return -8;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Curse(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if ((HasType(ctx, ai->attacker.id, TYPE_GHOST)
    && (ctx->battlemon[ai->target.id].condition2 & STATUS2_CURSE || ai->target.ability == ABILITY_MAGIC_GUARD))
    || (!HasType(ctx, ai->attacker.id, TYPE_GHOST)
    && (ctx->battlemon[ai->attacker.id].states[STAT_ATTACK] >= 12 || ctx->battlemon[ai->attacker.id].states[STAT_DEFENSE] >= 12))) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Spikes(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->scw[ai->target.side].spikesLayers >= 3
    || ai->target.livingPartySize == 1) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Foresight(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].condition2 & STATUS2_FORESIGHT) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_PerishSong(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Sandstorm(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->field_condition & FIELD_CONDITION_SANDSTORM_ALL) {
        return -8;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Status_Infatuate(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if ((ctx->battlemon[ai->target.id].condition2 & STATUS2_ATTRACT) // TODO: Fold into status immunity flags.
    || ctx->battlemon[ai->target.id].sex == ctx->battlemon[ai->attacker.id].sex
    || ctx->battlemon[ai->target.id].sex == POKEMON_GENDER_UNKNOWN
    || ai->target.ability == ABILITY_OBLIVIOUS) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Safeguard(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->side_condition[ai->attacker.side] & SIDE_STATUS_SAFEGUARD) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_HasLivingAlly(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->attacker.livingPartySize == 1) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Rain(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->field_condition & FIELD_CONDITION_RAIN_ALL) {
        return -8;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Sun(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->field_condition & FIELD_CONDITION_SUN_ALL) {
        return -8;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_CutHP_50Percent(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->attacker.percentHP <= 50) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_FutureSight(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->fcc.future_prediction_count[ai->target.id] != 0) {
        return -12;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_FirstTurnOnly(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->attacker.id].moveeffect.fakeOutCount != ctx->total_turn) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Stockpile(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->attacker.id].moveeffect.stockpileCount >= 3) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_NoStockpile(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->attacker.id].moveeffect.stockpileCount == 0) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Swallow(AIContext *ai, struct BattleSystem *battleSystem) {
    return MoveEffectEvaluator_Basic_NoStockpile(ai, battleSystem) + MoveEffectEvaluator_Basic_HealTarget(ai, battleSystem);
}

static int MoveEffectEvaluator_Basic_Hail(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->field_condition & FIELD_CONDITION_SNOW_ALL) {
        return -8;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Torment(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].condition2 & STATUS2_TORMENT) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Status_Burn(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->targetImmuneToBurn) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatDown_Attack_SpecialAttack(AIContext *ai, struct BattleSystem *battleSystem) {
    return MoveEffectEvaluator_Basic_StatDown_Attack(ai, battleSystem) + MoveEffectEvaluator_Basic_StatDown_SpecialAttack(ai, battleSystem);
}

static int MoveEffectEvaluator_Basic_DoublesOnly(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem) {
    if (!(BattleTypeGet(battleSystem) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLES | BATTLE_TYPE_TAG))) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Taunt(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].moveeffect.tauntTurns) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_SwitchItems(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->attacker.item == ITEM_NONE && ai->target.item == ITEM_NONE) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_HasAlly(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->target.partySize > 1) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Ingrain(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Endeavor(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->attackerMovesFirst
    && ai->attacker.hp >= ai->target.hp) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Imprison(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->attacker.id].effect_of_moves & MOVE_EFFECT_FLAG_IMPRISONED
    || ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_IMPRISONED) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Refresh(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (!((ctx->battlemon[ai->target.id].condition & STATUS_POISON_ALL)
    || (ctx->battlemon[ai->target.id].condition & STATUS_PARALYSIS)
    || (ctx->battlemon[ai->target.id].condition & STATUS_BURN))) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_MudSport(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_MUD_SPORT) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatDown_Attack_Defense(AIContext *ai, struct BattleSystem *battleSystem) {
    return MoveEffectEvaluator_Basic_StatDown_Attack(ai, battleSystem) + MoveEffectEvaluator_Basic_StatDown_Defense(ai, battleSystem);
}

static int MoveEffectEvaluator_Basic_StatUp_Defense_SpecialDefense(AIContext *ai, struct BattleSystem *battleSystem) {
    return MoveEffectEvaluator_Basic_StatUp_Defense(ai, battleSystem) + MoveEffectEvaluator_Basic_StatUp_SpecialDefense(ai, battleSystem);
}

static int MoveEffectEvaluator_Basic_StatUp_Attack_Defense(AIContext *ai, struct BattleSystem *battleSystem) {
    return MoveEffectEvaluator_Basic_StatUp_Attack(ai, battleSystem) + MoveEffectEvaluator_Basic_StatUp_Defense(ai, battleSystem);
}

static int MoveEffectEvaluator_Basic_WaterSport(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_WATER_SPORT) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatUp_SpecialAttack_SpecialDefense(AIContext *ai, struct BattleSystem *battleSystem) {
    return MoveEffectEvaluator_Basic_StatUp_SpecialAttack(ai, battleSystem) + MoveEffectEvaluator_Basic_StatUp_SpecialDefense(ai, battleSystem);
}

static int MoveEffectEvaluator_Basic_StatUp_Attack_Speed(AIContext *ai, struct BattleSystem *battleSystem) {
    return MoveEffectEvaluator_Basic_StatUp_Attack(ai, battleSystem) + MoveEffectEvaluator_Basic_StatUp_Speed(ai, battleSystem);
}

static int MoveEffectEvaluator_Basic_Camouflage(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_CAMOUFLAGE) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Gravity(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->field_condition & FIELD_CONDITION_GRAVITY) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_MiracleEye(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_MIRACLE_EYE) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_NaturalGift(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (!IS_ITEM_BERRY(ai->attacker.item)) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Tailwind(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->side_condition[ai->attacker.side] & SIDE_STATUS_TAILWIND
    || ctx->field_condition & FIELD_CONDITION_TRICK_ROOM) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StatUp_Random(AIContext *ai, struct BattleSystem *battleSystem) {
    if (BattlerHasStatStageOrGreater(battleSystem, ai->target.id, 12)) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_TargetMovesFirst(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->attackerMovesFirst) { // TODO: Account for ABILITY_STALL during setup.
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Embargo(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_EMBARGO) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Fling(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->attacker.item == ITEM_NONE 
    || ai->flingPower == 0) { // TODO: Item cannot be flung by specific circumstance.
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_TransferStatus(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->attacker.id].condition & STATUS_NONE
    || ctx->battlemon[ai->target.id].condition & STATUS_ALL
    || ctx->side_condition[ai->target.side] & SIDE_STATUS_SAFEGUARD
    || ((ctx->battlemon[ai->attacker.id].condition & STATUS_BURN) && ai->targetImmuneToBurn)
    || ((ctx->battlemon[ai->attacker.id].condition & STATUS_POISON_ALL) && ai->targetImmuneToPoison)
    || ((ctx->battlemon[ai->attacker.id].condition & STATUS_PARALYSIS) && ai->targetImmuneToParalysis)) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_HealBlock(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_HEAL_BLOCK) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_PowerTrick(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_POWER_TRICK) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_GastroAcid(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_ABILITY_SUPPRESSED) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_LuckyChant(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].condition2 & SIDE_STATUS_LUCKY_CHANT) { // TODO: Fix (side_condition[side])
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Copycat(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->total_turn == 0 && ai->attackerMovesFirst) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_PowerSwap(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->attacker.id].states[STAT_ATTACK] > ctx->battlemon[ai->target.id].states[STAT_ATTACK]
    && ctx->battlemon[ai->attacker.id].states[STAT_SPECIAL_ATTACK] > ctx->battlemon[ai->target.id].states[STAT_SPECIAL_ATTACK]) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_GuardSwap(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->attacker.id].states[STAT_DEFENSE] > ctx->battlemon[ai->target.id].states[STAT_DEFENSE]
    && ctx->battlemon[ai->attacker.id].states[STAT_SPECIAL_DEFENSE] > ctx->battlemon[ai->target.id].states[STAT_SPECIAL_DEFENSE]) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_LastResort(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->attacker.id].moveeffect.lastResortCount < (ai->attackerMovesKnown - 1)) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_WorrySeed(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ai->target.ability == ABILITY_INSOMNIA) {
        return -10;
    } else if (ctx->battlemon[ai->target.id].condition & STATUS_SLEEP) {
        for (int moveSlot = 0; moveSlot < 4; moveSlot++) {
            if (ctx->battlemon[ai->target.id].move[moveSlot] == MOVE_SLEEP_TALK
            || ctx->battlemon[ai->target.id].move[moveSlot] == MOVE_SNORE) {
                return 0;
            }
        }
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_ToxicSpikes(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->scw[ai->target.side].toxicSpikesLayers >= 2
    || ai->target.livingPartySize == 1) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_AquaRing(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_AQUA_RING) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_MagnetRise(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_MAGNET_RISE
    || HasType(ctx, ai->target.id, TYPE_FLYING)
    || ai->target.ability == ABILITY_LEVITATE
    || ai->target.ability == ABILITY_EARTH_EATER) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Defog(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if ((ai->target.livingPartySize == 1
    || (ctx->scw[ai->attacker.side].toxicSpikesLayers == 0
    && ctx->scw[ai->attacker.side].spikesLayers == 0
    && !(ctx->side_condition[ai->target.side] & SIDE_STATUS_STEALTH_ROCK)))) { // TODO: Account for screens and needleslly removing own hazards.
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_TrickRoom(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->attackerMovesFirst || ai->isSpeedTie) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_Captivate(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].states[STAT_SPECIAL_ATTACK] == 0
    || ctx->battlemon[ai->target.id].sex == ctx->battlemon[ai->attacker.id].sex
    || ctx->battlemon[ai->target.id].sex == POKEMON_GENDER_UNKNOWN
    || ai->target.ability == ABILITY_OBLIVIOUS) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_StealthRock(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if ((ctx->side_condition[ai->target.side] & SIDE_STATUS_STEALTH_ROCK
    || ai->target.livingPartySize == 1)) {
        return -10;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_SelfSacrifice(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->attacker.livingPartySize == 1) {
        return -30;
    }
    return -20;

    // TODO:
    // ai->defenderDamagedMons > 0 && ai->attackerStatusedMons > 0
}

static int MoveEffectEvaluator_Basic_StatUp_Attack_SpecialAttack(AIContext *ai, struct BattleSystem *battleSystem) {
    return MoveEffectEvaluator_Basic_StatUp_Attack(ai, battleSystem) + MoveEffectEvaluator_Basic_StatUp_SpecialAttack(ai, battleSystem);
}

static int MoveEffectEvaluator_Basic_ShedTail(AIContext *ai, struct BattleSystem *battleSystem) {
    return MoveEffectEvaluator_Basic_HasLivingAlly(ai, battleSystem) + MoveEffectEvaluator_Basic_CutHP_50Percent(ai, battleSystem);
}

static int MoveEffectEvaluator_Basic_Snow(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->field_condition & FIELD_CONDITION_SNOW_ALL) {
        return -8;
    }
    return 0;
}

static int MoveEffectEvaluator_Basic_VenomDrench(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    if (ctx->battlemon[ai->target.id].condition & STATUS_POISON_ALL) {
        moveScore -= 10;
    }

    moveScore += MoveEffectEvaluator_Basic_StatDown_Attack(ai, battleSystem) + MoveEffectEvaluator_Basic_StatDown_SpecialAttack(ai, battleSystem) + MoveEffectEvaluator_Basic_StatDown_Speed(ai, battleSystem);

    return moveScore;
}
