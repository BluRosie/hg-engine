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

static int MoveEffectEvaluator_Expert_None(UNUSED AIContext *ai_unused, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Expert_Status_Sleep(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_DrainDamage(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_SelfSacrifice_Hit(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_DreamEater(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_MirrorMove(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_StatUp_Attack(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_StatUp_Defense(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_StatUp_Speed(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_StatUp_SpecialAttack(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_StatUp_SpecialDefense(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_StatUp_Accuracy(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_StatUp_Evasion_StatDown_Accuracy(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_BypassAccuracy(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_StatDown_Attack(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_StatDown_Defense(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_StatDown_Speed(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_StatDown_SpecialAttack(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_StatDown_SpecialDefense(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_StatDown_Evasion(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_ResetStatChanges(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Bide(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Expert_ForceSwitch(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Conversion(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_HealTarget(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Status_Toxic(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_LightScreen(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Rest(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_OHKO(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_ChargeMove(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_HalveHP(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Expert_Trap(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_HighCrit(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Recoil(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Expert_Status_Confuse(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Status_Paralyze(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Expert_Reflect(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Status_Poison(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Expert_StatDown_Speed_Hit(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_VitalThrow(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Substitute(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Recharge(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_PassiveDrain(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Disable(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Counter(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Encore(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_PainSplit(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Expert_LockOn(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_SleepTalk(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_PowerFromLessHP(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_CurePartyStatus(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Expert_StealItem(UNUSED AIContext *ai_unused, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Expert_Status_Nightmare(UNUSED AIContext *ai_unused, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Expert_Curse(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Protect(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Spikes(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Foresight(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Endure(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_BatonPass(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Swagger(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Pursuit(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_HealTarget_Weather(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Rain(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Sun(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_CutHP_50Percent(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Expert_CopyStatStages(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_MirrorCoat(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_ChargeMove_Sun(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_ChargeMove_Invulnerable(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_FirstTurnOnly(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_SpitUp(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Hail(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Flatter(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Facade(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_FocusPunch(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_SmellingSalts(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_SwitchItems(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_CopyAbility(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_UserStatDown_AttackDefense(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_MagicCoat(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Recycle(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_BoostDamage_UserHit_LowPriority(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_RemoveScreens(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_RemoveItem(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Endeavor(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Expert_PowerFromMoreHP(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Expert_Imprison(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_HealStatus(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Expert_Snatch(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_HalveElectricDamage(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_UserStatDown_Offense(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Expert_HalveFireDamage(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_StatUp_OffenseSpeed(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Gravity(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_MiracleEye(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_WakeUpSlap(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_UserStatDown_Speed(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Expert_SelfSacrifice_Heal(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_BoostDamage_TargetBelowHalfHP(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_RemoveProtect(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_EatTargetBerry(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Tailwind(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_StatUp_Random(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_MetalBurst(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_SwitchOnHit(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_UserStatDown_Defense(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused);
static int MoveEffectEvaluator_Expert_BoostDamage_UserHit(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_BoostDamage_TargetHit(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Embargo(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Fling(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_TransferStatus(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_BoostDamage_LowerPP(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_PreventHealing(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_BoostDamage_HigherTargetHP(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_SwapAttackDefense(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_SuppressAbility(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_LuckyChant(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_MeFirst(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Copycat(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_PowerSwap(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_GuardSwap(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_BoostDamage_HigherTargetStatStages(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_LastResort(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_WorrySeed(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_SuckerPunch(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_ToxicSpikes(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_SwapStatChanges(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_AquaRing(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_MagnetRise(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Defog(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_TrickRoom(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Blizzard(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Captivate(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_StealthRock(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_ChargeMove_Invulnerable_NoProtect(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_Venoshock(AIContext *ai, struct BattleSystem *battleSystem);
static int MoveEffectEvaluator_Expert_ChargeMove_Rain(AIContext *ai, struct BattleSystem *battleSystem);

static MoveEffectEvaluator sExpertMoveEffectEvaluators[MAX_BASE_MOVE_EFFECT_NUM + 1] = {
    [MOVE_EFFECT_HIT] = MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_STATUS_SLEEP] = MoveEffectEvaluator_Expert_Status_Sleep,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT] = MoveEffectEvaluator_Expert_DrainDamage,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_HALVE_DEFENSE] = MoveEffectEvaluator_Expert_SelfSacrifice_Hit,
    [MOVE_EFFECT_RECOVER_DAMAGE_SLEEP] = MoveEffectEvaluator_Expert_DreamEater,
    [MOVE_EFFECT_COPY_MOVE] = MoveEffectEvaluator_Expert_MirrorMove,
    [MOVE_EFFECT_ATK_UP] = MoveEffectEvaluator_Expert_StatUp_Attack,
    [MOVE_EFFECT_DEF_UP] = MoveEffectEvaluator_Expert_StatUp_Defense,
    [MOVE_EFFECT_SPEED_UP] = MoveEffectEvaluator_Expert_StatUp_Speed,
    [MOVE_EFFECT_SP_ATK_UP] = MoveEffectEvaluator_Expert_StatUp_SpecialAttack,
    [MOVE_EFFECT_SP_DEF_UP] = MoveEffectEvaluator_Expert_StatUp_SpecialDefense,
    [MOVE_EFFECT_ACC_UP] = MoveEffectEvaluator_Expert_StatUp_Accuracy,
    [MOVE_EFFECT_EVA_UP] = MoveEffectEvaluator_Expert_StatUp_Evasion_StatDown_Accuracy,
    [MOVE_EFFECT_BYPASS_ACCURACY] = MoveEffectEvaluator_Expert_BypassAccuracy,
    [MOVE_EFFECT_ATK_DOWN] = MoveEffectEvaluator_Expert_StatDown_Attack,
    [MOVE_EFFECT_DEF_DOWN] = MoveEffectEvaluator_Expert_StatDown_Defense,
    [MOVE_EFFECT_SPEED_DOWN] = MoveEffectEvaluator_Expert_StatDown_Speed,
    [MOVE_EFFECT_SP_ATK_DOWN] = MoveEffectEvaluator_Expert_StatDown_SpecialAttack,
    [MOVE_EFFECT_SP_DEF_DOWN] = MoveEffectEvaluator_Expert_StatDown_SpecialDefense,
    [MOVE_EFFECT_ACC_DOWN] = MoveEffectEvaluator_Expert_StatUp_Evasion_StatDown_Accuracy,
    [MOVE_EFFECT_EVA_DOWN] = MoveEffectEvaluator_Expert_StatDown_Evasion,
    [MOVE_EFFECT_RESET_STAT_CHANGES] = MoveEffectEvaluator_Expert_ResetStatChanges,
    [MOVE_EFFECT_BIDE] = MoveEffectEvaluator_Expert_Bide,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_FORCE_SWITCH] = MoveEffectEvaluator_Expert_ForceSwitch,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_CONVERSION] = MoveEffectEvaluator_Expert_Conversion,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_RESTORE_HALF_HP] = MoveEffectEvaluator_Expert_HealTarget,
    [MOVE_EFFECT_STATUS_BADLY_POISON] = MoveEffectEvaluator_Expert_Status_Toxic,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_SET_LIGHT_SCREEN] = MoveEffectEvaluator_Expert_LightScreen,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_RECOVER_HEALTH_AND_SLEEP] = MoveEffectEvaluator_Expert_Rest,
    [MOVE_EFFECT_ONE_HIT_KO] = MoveEffectEvaluator_Expert_OHKO,
    [MOVE_EFFECT_CHARGE_TURN_HIGH_CRIT] = MoveEffectEvaluator_Expert_ChargeMove,
    [MOVE_EFFECT_HALVE_HP] = MoveEffectEvaluator_Expert_HalveHP,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_BIND_HIT] = MoveEffectEvaluator_Expert_Trap,
    [MOVE_EFFECT_HIGH_CRITICAL] = MoveEffectEvaluator_Expert_HighCrit,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_RECOIL_QUARTER] = MoveEffectEvaluator_Expert_Recoil,
    [MOVE_EFFECT_STATUS_CONFUSE] = MoveEffectEvaluator_Expert_Status_Confuse,
    [MOVE_EFFECT_ATK_UP_2] = MoveEffectEvaluator_Expert_StatUp_Attack,
    [MOVE_EFFECT_DEF_UP_2] = MoveEffectEvaluator_Expert_StatUp_Defense,
    [MOVE_EFFECT_SPEED_UP_2] = MoveEffectEvaluator_Expert_StatUp_Speed,
    [MOVE_EFFECT_SP_ATK_UP_2] = MoveEffectEvaluator_Expert_StatUp_SpecialAttack,
    [MOVE_EFFECT_SP_DEF_UP_2] = MoveEffectEvaluator_Expert_StatUp_SpecialDefense,
    [MOVE_EFFECT_ACC_UP_2] = MoveEffectEvaluator_Expert_StatUp_Accuracy,
    [MOVE_EFFECT_EVA_UP_2] = MoveEffectEvaluator_Expert_StatUp_Evasion_StatDown_Accuracy,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_ATK_DOWN_2] = MoveEffectEvaluator_Expert_StatDown_Attack,
    [MOVE_EFFECT_DEF_DOWN_2] = MoveEffectEvaluator_Expert_StatDown_Defense,
    [MOVE_EFFECT_SPEED_DOWN_2] = MoveEffectEvaluator_Expert_StatDown_Speed,
    [MOVE_EFFECT_SP_ATK_DOWN_2] = MoveEffectEvaluator_Expert_StatDown_SpecialAttack,
    [MOVE_EFFECT_SP_DEF_DOWN_2] = MoveEffectEvaluator_Expert_StatDown_SpecialDefense,
    [MOVE_EFFECT_ACC_DOWN_2] = MoveEffectEvaluator_Expert_StatUp_Evasion_StatDown_Accuracy,
    [MOVE_EFFECT_EVA_DOWN_2] = MoveEffectEvaluator_Expert_StatDown_Evasion,
    [MOVE_EFFECT_SET_REFLECT] = MoveEffectEvaluator_Expert_Reflect,
    [MOVE_EFFECT_STATUS_POISON] = MoveEffectEvaluator_Expert_Status_Poison,
    [MOVE_EFFECT_STATUS_PARALYZE] = MoveEffectEvaluator_Expert_Status_Paralyze,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_LOWER_SPEED_HIT] = MoveEffectEvaluator_Expert_StatDown_Speed_Hit,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_CHARGE_TURN_HIGH_CRIT_FLINCH] = MoveEffectEvaluator_Expert_ChargeMove,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_PRIORITY_NEG_1_BYPASS_ACCURACY] = MoveEffectEvaluator_Expert_VitalThrow,
    [MOVE_EFFECT_SET_SUBSTITUTE] = MoveEffectEvaluator_Expert_Substitute,
    [MOVE_EFFECT_RECHARGE_AFTER] = MoveEffectEvaluator_Expert_Recharge,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_STATUS_LEECH_SEED] = MoveEffectEvaluator_Expert_PassiveDrain,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_DISABLE] = MoveEffectEvaluator_Expert_Disable,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_COUNTER] = MoveEffectEvaluator_Expert_Counter,
    [MOVE_EFFECT_ENCORE] = MoveEffectEvaluator_Expert_Encore,
    [MOVE_EFFECT_AVERAGE_HP] = MoveEffectEvaluator_Expert_PainSplit,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_NEXT_ATTACK_ALWAYS_HITS] = MoveEffectEvaluator_Expert_LockOn,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_USE_RANDOM_LEARNED_MOVE_SLEEP] = MoveEffectEvaluator_Expert_SleepTalk,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_INCREASE_POWER_WITH_LESS_HP] = MoveEffectEvaluator_Expert_PowerFromLessHP,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_CURE_PARTY_STATUS] = MoveEffectEvaluator_Expert_CurePartyStatus,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_STEAL_HELD_ITEM] = MoveEffectEvaluator_Expert_StealItem,
    [MOVE_EFFECT_PREVENT_ESCAPE] = MoveEffectEvaluator_Expert_Trap,
    [MOVE_EFFECT_STATUS_NIGHTMARE] = MoveEffectEvaluator_Expert_Status_Nightmare,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_CURSE] = MoveEffectEvaluator_Expert_Curse,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_PROTECT] = MoveEffectEvaluator_Expert_Protect,
    [MOVE_EFFECT_SET_SPIKES] = MoveEffectEvaluator_Expert_Spikes,
    [MOVE_EFFECT_IGNORE_EVASION_REMOVE_GHOST_IMMUNE] = MoveEffectEvaluator_Expert_Foresight,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_SURVIVE_WITH_1_HP] = MoveEffectEvaluator_Expert_Endure,
    [MOVE_EFFECT_DOUBLE_POWER_EACH_TURN_LOCK_INTO] = MoveEffectEvaluator_Expert_BatonPass,
    [MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION] = MoveEffectEvaluator_Expert_Swagger,
    [MOVE_EFFECT_DOUBLE_POWER_EACH_TURN] = MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_INFATUATE] = MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_POWER_BASED_ON_FRIENDSHIP] = MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_RANDOM_POWER_MAYBE_HEAL] = MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_POWER_BASED_ON_LOW_FRIENDSHIP] = MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_PREVENT_STATUS] = MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_THAW_AND_BURN_HIT] = MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_RANDOM_POWER_10_CASES] = MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_PASS_STATS_AND_STATUS] = MoveEffectEvaluator_Expert_BatonPass,
    [MOVE_EFFECT_HIT_BEFORE_SWITCH] = MoveEffectEvaluator_Expert_Pursuit,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_HEAL_HALF_DIFFERENT_IN_WEATHER] = MoveEffectEvaluator_Expert_HealTarget_Weather,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_WEATHER_RAIN] = MoveEffectEvaluator_Expert_Rain,
    [MOVE_EFFECT_WEATHER_SUN] = MoveEffectEvaluator_Expert_Sun,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP] = MoveEffectEvaluator_Expert_CutHP_50Percent,
    [MOVE_EFFECT_COPY_STAT_CHANGES] = MoveEffectEvaluator_Expert_CopyStatStages,
    [MOVE_EFFECT_MIRROR_COAT] = MoveEffectEvaluator_Expert_MirrorCoat,
    [MOVE_EFFECT_CHARGE_TURN_DEF_UP] = MoveEffectEvaluator_Expert_ChargeMove,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_CHARGE_TURN_SUN_SKIPS] = MoveEffectEvaluator_Expert_ChargeMove_Sun,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_FLY] = MoveEffectEvaluator_Expert_ChargeMove_Invulnerable,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_ALWAYS_FLINCH_FIRST_TURN_ONLY] = MoveEffectEvaluator_Expert_FirstTurnOnly,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_SPIT_UP] = MoveEffectEvaluator_Expert_SpitUp,
    [MOVE_EFFECT_SWALLOW] = MoveEffectEvaluator_Expert_HealTarget,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_WEATHER_HAIL] = MoveEffectEvaluator_Expert_Hail,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION] = MoveEffectEvaluator_Expert_Flatter,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_DOUBLE_POWER_WHEN_STATUSED] = MoveEffectEvaluator_Expert_Facade,
    [MOVE_EFFECT_HIT_LAST_WHIFF_IF_HIT] = MoveEffectEvaluator_Expert_FocusPunch,
    [MOVE_EFFECT_DOUBLE_POWER_AND_CURE_PARALYSIS] = MoveEffectEvaluator_Expert_SmellingSalts,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_SWITCH_HELD_ITEMS] = MoveEffectEvaluator_Expert_SwitchItems,
    [MOVE_EFFECT_COPY_ABILITY] = MoveEffectEvaluator_Expert_CopyAbility,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_USER_ATK_DEF_DOWN_HIT] = MoveEffectEvaluator_Expert_UserStatDown_AttackDefense,
    [MOVE_EFFECT_MAGIC_COAT] = MoveEffectEvaluator_Expert_MagicCoat,
    [MOVE_EFFECT_RECYCLE] = MoveEffectEvaluator_Expert_Recycle,
    [MOVE_EFFECT_DOUBLE_DAMAGE_IF_HIT] = MoveEffectEvaluator_Expert_BoostDamage_UserHit_LowPriority,
    [MOVE_EFFECT_REMOVE_SCREENS] = MoveEffectEvaluator_Expert_RemoveScreens,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_REMOVE_HELD_ITEM] = MoveEffectEvaluator_Expert_RemoveItem,
    [MOVE_EFFECT_SET_HP_EQUAL_TO_USER] = MoveEffectEvaluator_Expert_Endeavor,
    [MOVE_EFFECT_DECREASE_POWER_WITH_LESS_USER_HP] = MoveEffectEvaluator_Expert_PowerFromMoreHP,
    [MOVE_EFFECT_SWITCH_ABILITIES] = MoveEffectEvaluator_Expert_CopyAbility,
    [MOVE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE] = MoveEffectEvaluator_Expert_Imprison,
    [MOVE_EFFECT_HEAL_STATUS] = MoveEffectEvaluator_Expert_HealStatus,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_STEAL_STATUS_MOVE] = MoveEffectEvaluator_Expert_Snatch,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_RECOIL_THIRD] = MoveEffectEvaluator_Expert_Recoil,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_HALVE_ELECTRIC_DAMAGE] = MoveEffectEvaluator_Expert_HalveElectricDamage,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_USER_SP_ATK_DOWN_2] = MoveEffectEvaluator_Expert_UserStatDown_Offense,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_HIGH_CRITICAL_POISON_HIT] = MoveEffectEvaluator_Expert_HighCrit,
    [MOVE_EFFECT_HALVE_FIRE_DAMAGE] = MoveEffectEvaluator_Expert_HalveFireDamage,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_ATK_SPEED_UP] = MoveEffectEvaluator_Expert_StatUp_OffenseSpeed,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_HEAL_HALF_REMOVE_FLYING_TYPE] = MoveEffectEvaluator_Expert_HealTarget,
    [MOVE_EFFECT_GRAVITY] = MoveEffectEvaluator_Expert_Gravity,
    [MOVE_EFFECT_IGNORE_EVASION_REMOVE_DARK_IMMUNE] = MoveEffectEvaluator_Expert_MiracleEye,
    [MOVE_EFFECT_DOUBLE_POWER_HEAL_SLEEP] = MoveEffectEvaluator_Expert_WakeUpSlap,
    [MOVE_EFFECT_USER_SPEED_DOWN_HIT] = MoveEffectEvaluator_Expert_UserStatDown_Speed,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_FAINT_AND_FULL_HEAL_NEXT_MON] = MoveEffectEvaluator_Expert_SelfSacrifice_Heal,
    [MOVE_EFFECT_DOUBLE_POWER_WHEN_BELOW_HALF] = MoveEffectEvaluator_Expert_BoostDamage_TargetBelowHalfHP,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_REMOVE_PROTECT] = MoveEffectEvaluator_Expert_RemoveProtect,
    [MOVE_EFFECT_EAT_BERRY] = MoveEffectEvaluator_Expert_EatTargetBerry,
    [MOVE_EFFECT_DOUBLE_SPEED_3_TURNS] = MoveEffectEvaluator_Expert_Tailwind,
    [MOVE_EFFECT_RANDOM_STAT_UP_2] = MoveEffectEvaluator_Expert_StatUp_Random,
    [MOVE_EFFECT_METAL_BURST] = MoveEffectEvaluator_Expert_MetalBurst,
    [MOVE_EFFECT_SWITCH_HIT] = MoveEffectEvaluator_Expert_SwitchOnHit,
    [MOVE_EFFECT_USER_DEF_SP_DEF_DOWN_HIT] = MoveEffectEvaluator_Expert_UserStatDown_Defense,
    [MOVE_EFFECT_DOUBLE_POWER_IF_HIT] = MoveEffectEvaluator_Expert_BoostDamage_UserHit,
    [MOVE_EFFECT_DOUBLE_POWER_IF_TARGET_HIT] = MoveEffectEvaluator_Expert_BoostDamage_TargetHit,
    [MOVE_EFFECT_PREVENT_ITEM_USE] = MoveEffectEvaluator_Expert_Embargo,
    [MOVE_EFFECT_FLING] = MoveEffectEvaluator_Expert_Fling,
    [MOVE_EFFECT_TRANSFER_STATUS] = MoveEffectEvaluator_Expert_TransferStatus,
    [MOVE_EFFECT_HIGHER_POWER_WHEN_LOW_PP] = MoveEffectEvaluator_Expert_BoostDamage_LowerPP,
    [MOVE_EFFECT_PREVENT_HEALING] = MoveEffectEvaluator_Expert_PreventHealing,
    [MOVE_EFFECT_INCREASE_POWER_WITH_MORE_HP] = MoveEffectEvaluator_Expert_BoostDamage_HigherTargetHP,
    [MOVE_EFFECT_SWAP_ATK_DEF] = MoveEffectEvaluator_Expert_SwapAttackDefense,
    [MOVE_EFFECT_SUPPRESS_ABILITY] = MoveEffectEvaluator_Expert_SuppressAbility,
    [MOVE_EFFECT_PREVENT_CRITS] = MoveEffectEvaluator_Expert_LuckyChant,
    [MOVE_EFFECT_USE_MOVE_FIRST] = MoveEffectEvaluator_Expert_MeFirst,
    [MOVE_EFFECT_USE_LAST_USED_MOVE] = MoveEffectEvaluator_Expert_Copycat,
    [MOVE_EFFECT_SWAP_ATK_SP_ATK_STAT_CHANGES] = MoveEffectEvaluator_Expert_PowerSwap,
    [MOVE_EFFECT_SWAP_DEF_SP_DEF_STAT_CHANGES] = MoveEffectEvaluator_Expert_GuardSwap,
    [MOVE_EFFECT_INCREASE_POWER_WITH_MORE_STAT_UP] = MoveEffectEvaluator_Expert_BoostDamage_HigherTargetStatStages,
    [MOVE_EFFECT_FAIL_IF_NOT_USED_ALL_OTHER_MOVES] = MoveEffectEvaluator_Expert_LastResort,
    [MOVE_EFFECT_SET_ABILITY_TO_INSOMNIA] = MoveEffectEvaluator_Expert_WorrySeed,
    [MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING] = MoveEffectEvaluator_Expert_SuckerPunch,
    [MOVE_EFFECT_TOXIC_SPIKES] = MoveEffectEvaluator_Expert_ToxicSpikes,
    [MOVE_EFFECT_SWAP_STAT_CHANGES] = MoveEffectEvaluator_Expert_SwapStatChanges,
    [MOVE_EFFECT_RESTORE_HP_EVERY_TURN] = MoveEffectEvaluator_Expert_AquaRing,
    [MOVE_EFFECT_GIVE_GROUND_IMMUNITY] = MoveEffectEvaluator_Expert_MagnetRise,
    [MOVE_EFFECT_RECOIL_BURN_HIT] = MoveEffectEvaluator_Expert_Recoil,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_DIVE] = MoveEffectEvaluator_Expert_ChargeMove_Invulnerable,
    [MOVE_EFFECT_DIG] = MoveEffectEvaluator_Expert_ChargeMove_Invulnerable,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_REMOVE_HAZARDS_SCREENS_EVA_DOWN] = MoveEffectEvaluator_Expert_Defog,
    [MOVE_EFFECT_TRICK_ROOM] = MoveEffectEvaluator_Expert_TrickRoom,
    [MOVE_EFFECT_BLIZZARD] = MoveEffectEvaluator_Expert_Blizzard,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_RECOIL_PARALYZE_HIT] = MoveEffectEvaluator_Expert_Recoil,
    [MOVE_EFFECT_BOUNCE] = MoveEffectEvaluator_Expert_ChargeMove_Invulnerable,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER] = MoveEffectEvaluator_Expert_Captivate,
    [MOVE_EFFECT_STEALTH_ROCK] = MoveEffectEvaluator_Expert_StealthRock,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_RECOIL_HALF] = MoveEffectEvaluator_Expert_Recoil,
    [MOVE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON] = MoveEffectEvaluator_Expert_SelfSacrifice_Heal,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_SHADOW_FORCE] = MoveEffectEvaluator_Expert_ChargeMove_Invulnerable_NoProtect,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_DOUBLE_POWER_ON_POISONED] = MoveEffectEvaluator_Expert_Venoshock,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_PREVENT_HEALING_HIT] = MoveEffectEvaluator_Expert_PreventHealing,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP] = MoveEffectEvaluator_Expert_ChargeMove,
    [MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP_RAIN_SKIPS] = MoveEffectEvaluator_Expert_ChargeMove_Rain,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_ATK_UP_3] = MoveEffectEvaluator_Expert_StatUp_Attack,
    [MOVE_EFFECT_DEF_UP_3] = MoveEffectEvaluator_Expert_StatUp_Defense,
    [MOVE_EFFECT_SPEED_UP_3] = MoveEffectEvaluator_Expert_StatUp_Speed,
    [MOVE_EFFECT_SP_ATK_UP_3] = MoveEffectEvaluator_Expert_StatUp_SpecialAttack,
    [MOVE_EFFECT_SP_DEF_UP_3] = MoveEffectEvaluator_Expert_StatUp_SpecialDefense,
    [MOVE_EFFECT_ACC_UP_3] = MoveEffectEvaluator_Expert_StatUp_Accuracy,
    [MOVE_EFFECT_EVA_UP_3] = MoveEffectEvaluator_Expert_StatUp_Evasion_StatDown_Accuracy,
    [MOVE_EFFECT_ATK_DOWN_3] = MoveEffectEvaluator_Expert_StatDown_Attack,
    [MOVE_EFFECT_DEF_DOWN_3] = MoveEffectEvaluator_Expert_StatDown_Defense,
    [MOVE_EFFECT_SPEED_DOWN_3] = MoveEffectEvaluator_Expert_StatDown_Speed,
    [MOVE_EFFECT_SP_ATK_DOWN_3] = MoveEffectEvaluator_Expert_StatDown_SpecialAttack,
    [MOVE_EFFECT_SP_DEF_DOWN_3] = MoveEffectEvaluator_Expert_StatDown_SpecialDefense,
    [MOVE_EFFECT_ACC_DOWN_3] = MoveEffectEvaluator_Expert_StatUp_Evasion_StatDown_Accuracy,
    [MOVE_EFFECT_EVA_DOWN_3] = MoveEffectEvaluator_Expert_StatDown_Evasion,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_RECOVER_THREE_QUARTERS_DAMAGE_DEALT] = MoveEffectEvaluator_Expert_DrainDamage,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_SLEEP_POISON_PARALYZE_HIT] = MoveEffectEvaluator_Expert_HighCrit, // TODO: PLA-only...
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_SET_SPIKES_HIT] = MoveEffectEvaluator_Expert_Spikes,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_HIGH_CRITICAL_RAISE_SPEED_HIT] = MoveEffectEvaluator_Expert_HighCrit,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_FIRST_TURN_ONLY] = MoveEffectEvaluator_Expert_FirstTurnOnly,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    MoveEffectEvaluator_Expert_None,
    [MOVE_EFFECT_STEEL_BEAM] = MoveEffectEvaluator_Expert_None,
};

const u16 MirrorMoveList[] = {
    MOVE_EFFECT_STATUS_SLEEP,
    MOVE_EFFECT_ACC_DOWN,
    MOVE_EFFECT_ONE_HIT_KO,
    MOVE_EFFECT_STATUS_BADLY_POISON,
    MOVE_EFFECT_HIGH_CRITICAL,
    MOVE_EFFECT_STATUS_CONFUSE,
    MOVE_EFFECT_DEF_DOWN_2,
    MOVE_EFFECT_SPEED_DOWN_2,
    MOVE_EFFECT_SP_DEF_DOWN_2,
    MOVE_EFFECT_STATUS_PARALYZE,
    MOVE_EFFECT_STATUS_POISON,
    MOVE_EFFECT_CONFUSE_HIT,
    MOVE_EFFECT_ONE_HIT_KO,
    MOVE_EFFECT_STEAL_HELD_ITEM,
    MOVE_EFFECT_INFATUATE,
    MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION,
    MOVE_EFFECT_TORMENT,
    MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION,
    MOVE_EFFECT_SWITCH_HELD_ITEMS,
    MOVE_EFFECT_USER_ATK_DEF_DOWN_HIT,
    MOVE_EFFECT_SWITCH_ABILITIES,
    MOVE_EFFECT_TRANSFER_STATUS,
    MOVE_EFFECT_SWAP_ATK_SP_ATK_STAT_CHANGES,
    MOVE_EFFECT_SWAP_DEF_SP_DEF_STAT_CHANGES,
    MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING,
    MOVE_EFFECT_PRIORITY_1,
    MOVE_EFFECT_SWAP_STAT_CHANGES,
    MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER
};

int MoveEffectEvaluator_EvaluateExpert(AIContext *ai, struct BattleSystem *battleSystem) {
    return sExpertMoveEffectEvaluators[ai->moveEffect](ai, battleSystem);
}

static int MoveEffectEvaluator_Expert_None(UNUSED AIContext *ai_unused, UNUSED struct BattleSystem *battleSystem_unused) {
    return 0;
}

static int MoveEffectEvaluator_Expert_Status_Sleep(AIContext *ai, struct BattleSystem *battleSystem) {
    if (BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_STATUS_NIGHTMARE)
    || BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_RECOVER_DAMAGE_SLEEP)) {
        if (BattleRand(battleSystem) % 2 < 1) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_DrainDamage(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        if (BattleRand(battleSystem) % 10 < 8) {
            return -3;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_SelfSacrifice_Hit(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (ctx->battlemon[ai->target.id].states[STAT_EVASION] >= 7) {
        moveScore -= 1;
    }
    
    if (ctx->battlemon[ai->target.id].states[STAT_EVASION] >= 9) {
        if (BattleRand(battleSystem) % 10 < 8) {
            moveScore -= 1;
        }
    }
    
    if (ai->attacker.percentHP >= 80 && (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST || ai->speedCalc == SPEEDCALC_TIE)) {
        if (BattleRand(battleSystem) % 10 < 8) {
            moveScore -= 3;
        }
    } else if (ai->attacker.percentHP >= 80 && (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST || ai->speedCalc == SPEEDCALC_TIE)) {
        if (BattleRand(battleSystem) % 10 < 8) {
            moveScore -= 1;
        }
    } else if (ai->attacker.percentHP > 50 ) {
        if (BattleRand(battleSystem) % 10 < 8) {
            moveScore -= 1;
        }
    } else if (ai->attacker.percentHP <= 50 && ai->attacker.percentHP > 30 ) {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore -= 1;
        }
    } else if (ai->attacker.percentHP <= 30) {
        if (BattleRand(battleSystem) % 10 < 8) {
            moveScore -= 1;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_DreamEater(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        return -1;
    } else if (ctx->battlemon[ai->target.id].condition & STATUS_SLEEP) {
        if (BattleRand(battleSystem) % 10 < 8) {
            return 3;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_MirrorMove(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST) {
        if (IsInList(ai->moveEffect, MirrorMoveList, NELEMS(MirrorMoveList))) {
            if (BattleRand(battleSystem) % 2 < 1) {
                return 2;
            }
        } else {
            if (BattleRand(battleSystem) % 3 < 1) {
                return -1;
            }
        }            
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_StatUp_Attack(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (ctx->battlemon[ai->attacker.id].states[STAT_ATTACK] >= 9) {
        if (BattleRand(battleSystem) % 10 < 6) {
            moveScore -= 1;
        }
    }

    if (ai->attacker.percentHP == 100) {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore += 2;
        }
    }

    if (ai->attacker.percentHP <= 70) {
        if (ai->attacker.percentHP < 40) {
            moveScore -= 2;
        } else {
            if (BattleRand(battleSystem) % 10 < 8) {
                moveScore -= 2;
            }
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_StatUp_Defense(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (ctx->battlemon[ai->attacker.id].states[STAT_DEFENSE] >= 9) {
        if (BattleRand(battleSystem) % 10 < 6) {
            moveScore -= 1;
        }
    }

    if (ai->attacker.percentHP == 100) {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore += 2;
        }
    }
    
    if (ai->attacker.percentHP <= 70 || BattleRand(battleSystem) % 10 < 2) {
        if (ai->attacker.percentHP < 40) {
            moveScore -= 2;
        } else {
            if (ctx->moveTbl[ai->targetLastUsedMove].split == SPLIT_STATUS) {
                if (BattleRand(battleSystem) % 4 < 3) {
                    moveScore -= 2;
                }
            } else if (ctx->moveTbl[ai->targetLastUsedMove].split == SPLIT_PHYSICAL) {
                if (BattleRand(battleSystem) % 2 < 1) {
                    moveScore += 2; // Gamefreak has this at -2, which makes zero sense.
                }
            } else {
                moveScore -= 2;
            }
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_StatUp_Speed(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;
    
    if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST) {
        moveScore -= 3;
    }
    
    if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST && !ai->trickRoomActive) {
        if (BattleRand(battleSystem) % 10 < 7) {
            moveScore += 3;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_StatUp_SpecialAttack(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (ctx->battlemon[ai->attacker.id].states[STAT_SPECIAL_ATTACK] >= 9) {
        if (BattleRand(battleSystem) % 10 < 6) {
            moveScore -= 1;
        }
    }

    if (ai->attacker.percentHP == 100) {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore += 2;
        }
    }

    if (ai->attacker.percentHP <= 70) {
        if (ai->attacker.percentHP < 40) {
            moveScore -= 2;
        } else {
            if (BattleRand(battleSystem) % 10 < 8) {
                moveScore -= 2;
            }
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_StatUp_SpecialDefense(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (ctx->battlemon[ai->attacker.id].states[STAT_SPECIAL_DEFENSE] >= 9) {
        if (BattleRand(battleSystem) % 10 < 6) {
            moveScore -= 1;
        }
    }

    if (ai->attacker.percentHP == 100) {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore += 2;
        }
    }
    
    if (ai->attacker.percentHP <= 70 || BattleRand(battleSystem) % 10 < 2) {
        if (ai->attacker.percentHP < 40) {
            moveScore -= 2;
        } else {
            if (ctx->moveTbl[ai->targetLastUsedMove].split == SPLIT_STATUS) {
                if (BattleRand(battleSystem) % 4 < 3) {
                    moveScore -= 2;
                }
            } else if (ctx->moveTbl[ai->targetLastUsedMove].split == SPLIT_SPECIAL) {
                if (BattleRand(battleSystem) % 2 < 1) {
                    moveScore += 2; // Gamefreak has this at -2, which makes zero sense.
                }
            } else {
                moveScore -= 2;
            }
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_StatUp_Accuracy(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (ctx->battlemon[ai->attacker.id].states[STAT_ACCURACY] >= 9) {
        if (BattleRand(battleSystem) % 10 < 8) {
            moveScore -= 2;
        }
    }
    
    if (ai->attacker.percentHP < 70) {
        moveScore -= 2;
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_StatUp_Evasion_StatDown_Accuracy(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    if (ai->attacker.percentHP >= 90) {
        if (BattleRand(battleSystem) % 10 < 6) {
            moveScore += 3;
        }
    }

    if (ctx->battlemon[ai->attacker.id].states[STAT_ACCURACY] >= 9) {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore -= 1;
        }
    }

    if (ctx->battlemon[ai->target.id].condition & STATUS_BAD_POISON) {
        if (ai->target.percentHP > 50) {
            if (BattleRand(battleSystem) % 10 < 8) {
                moveScore += 3;
            }
        } else {
            if (BattleRand(battleSystem) % 2 < 1) {
                moveScore += 3;
            }
        }
    }
        
    if (ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED) {
        if (BattleRand(battleSystem) % 10 < 7) {
            moveScore += 3;
        }
    }

    if (ctx->battlemon[ai->attacker.id].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN
    || ctx->battlemon[ai->attacker.id].effect_of_moves & MOVE_EFFECT_FLAG_AQUA_RING) {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore += 2;
        }
    }

    if (ctx->battlemon[ai->target.id].condition2 == STATUS2_CURSE) {
        if (BattleRand(battleSystem) % 10 < 7) {
            moveScore += 3;
        }
    }

    if (ai->attacker.percentHP <= 70) {
        if (ai->attacker.percentHP < 40 || ai->target.percentHP < 40) {
            moveScore -= 2;
        } else {
            if (BattleRand(battleSystem) % 10 < 7) {
                moveScore -= 2;
            }
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_BypassAccuracy(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (ctx->battlemon[ai->target.id].states[STAT_EVASION] >= 11
    || ctx->battlemon[ai->attacker.id].states[STAT_ACCURACY] <= 1) {
        if (BattleRand(battleSystem) % 10 < 6) {
            moveScore += 2;
        }
        
        if (BattleRand(battleSystem) % 10 < 4) {
            moveScore += 1;
        } 
    }
    
    if (ctx->battlemon[ai->target.id].states[STAT_EVASION] >= 9
    || ctx->battlemon[ai->attacker.id].states[STAT_ACCURACY] <= 3) {
        moveScore += 1;
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_StatDown_Attack(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (ctx->battlemon[ai->target.id].states[STAT_ATTACK] != 6) {
        moveScore -= 1;
    }

    if (ai->attacker.percentHP <= 90) {
        moveScore -= 1;
    }
    
    if (ctx->battlemon[ai->target.id].states[STAT_ATTACK] <= 3) {
        if (BattleRand(battleSystem) % 10 < 8) {
            moveScore -= 2;
        }
    }

    if (ai->target.percentHP <= 70) {
        moveScore -= 2;
    }
    
    if (ctx->moveTbl[ai->targetLastUsedMove].split != SPLIT_PHYSICAL) {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore -= 2;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_StatDown_Defense(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (ai->attacker.percentHP <= 70) {
        if (BattleRand(battleSystem) % 10 < 8) {
            moveScore -= 2;
        }
    }
    
    if (ctx->battlemon[ai->target.id].states[STAT_DEFENSE] <= 3) {
        if (BattleRand(battleSystem) % 10 < 8) {
            moveScore -= 2;
        }
    }
    
    if (ai->target.percentHP < 70) {
        moveScore -= 2;
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_StatDown_Speed(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;

    if ((ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST || ai->speedCalc == SPEEDCALC_TIE)
    && !ai->trickRoomActive) {
        if (BattleRand(battleSystem) % 10 < 7) {
            moveScore += 2;
        }
    }

    if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST) {
        moveScore -= 3;
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_StatDown_SpecialAttack(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (ctx->battlemon[ai->target.id].states[STAT_SPECIAL_ATTACK] != 6) {
        moveScore -= 1;
    }

    if (ai->attacker.percentHP <= 90) {
        moveScore -= 1;
    }
    
    if (ctx->battlemon[ai->target.id].states[STAT_SPECIAL_ATTACK] <= 3) {
        if (BattleRand(battleSystem) % 10 < 8) {
            moveScore -= 2;
        }
    }

    if (ai->target.percentHP <= 70) {
        moveScore -= 2;
    }
    
    if (ctx->moveTbl[ai->targetLastUsedMove].split != SPLIT_SPECIAL) {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore -= 2;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_StatDown_SpecialDefense(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    if (ai->attacker.percentHP <= 70) {
        if (BattleRand(battleSystem) % 10 < 8) {
            moveScore -= 2;
        }
    }
    
    if (ctx->battlemon[ai->target.id].states[STAT_SPECIAL_DEFENSE] <= 3) {
        if (BattleRand(battleSystem) % 10 < 8) {
            moveScore -= 2;
        }
    }
    
    if (ai->target.percentHP < 70) {
        moveScore -= 2;
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_StatDown_Evasion(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    if (ai->attacker.percentHP < 70) {
        if (BattleRand(battleSystem) % 10 < 8) {
            moveScore -= 2;
        }
    } else if (ctx->battlemon[ai->target.id].states[STAT_EVASION] <= 3) {
        if (BattleRand(battleSystem) % 10 < 8) {
            moveScore -= 2;
        }
    }
        
    if (ai->target.percentHP < 70) {
        moveScore -= 2;
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_ResetStatChanges(AIContext *ai, struct BattleSystem *battleSystem) {
    if (BattlerHasStatStageOrGreater(battleSystem, ai->attacker.id, 9)
    || BattlerHasStatStageOrLess(battleSystem, ai->target.id, 3)) {
        if (BattleRand(battleSystem) % 10 < 8) {
            return -3;
        }
    } else if (BattlerHasStatStageOrLess(battleSystem, ai->attacker.id, 3)
    || BattlerHasStatStageOrGreater(battleSystem, ai->target.id, 9)) {
        if (BattleRand(battleSystem) % 10 < 8) {
            return 3;
        }
    } else {
        return -1;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Bide(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->attacker.percentHP <= 90) {
        return -2;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_ForceSwitch(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->target.turnsOnField > 3) {
        if (BattleRand(battleSystem) % 4 < 3) {
            return 2;
        }
    } else if (ai->targetHasHazards == TRUE) {
        if (BattleRand(battleSystem) % 2 < 1) {
            return 2;
        }
    } else if (BattlerHasStatStageOrGreater(battleSystem, ai->target.id, 9)) {
        if (BattleRand(battleSystem) % 2 < 1) {
            return 2;
        }
    } else {
        return -3;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Conversion(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    if (ai->attacker.percentHP <= 90) {
        moveScore -= 2;
    }
    
    if (ctx->total_turn > 0) { // If the battle is no longer on its first turn...
        if (BattleRand(battleSystem) % 4 < 3) {
            moveScore -= 2;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_HealTarget(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;

    if (ai->target.percentHP == 100) {
        moveScore -= 3;
    } else if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST && ai->target.id == ai->attacker.id) {
        moveScore -= 8;
    } else if (ai->target.percentHP > 70) {
        if (BattleRand(battleSystem) % 10 < 9) {
            moveScore -= 3;
        }
    }

    if (!BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_STEAL_STATUS_MOVE)) { // TODO: ???
        if (BattleRand(battleSystem) % 10 < 9) {
            moveScore += 2;
        }
    } else {
        if (BattleRand(battleSystem) % 10 < 5) {
            moveScore += 2;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_Status_Toxic(AIContext *ai, struct BattleSystem *battleSystem) {
    return MoveEffectEvaluator_Expert_Status_Poison(ai, battleSystem) + MoveEffectEvaluator_Expert_PassiveDrain(ai, battleSystem);
}

static int MoveEffectEvaluator_Expert_LightScreen(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    // TODO: maybe change this logic.
    if (ai->attacker.percentHP < 50) {
        moveScore -= 2;
    }

    if (ai->attacker.percentHP >= 90) {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore += 1;
        }
    }
    
    if (ctx->moveTbl[ai->targetLastUsedMove].split == SPLIT_SPECIAL) {
        if (BattleRand(battleSystem) % 4 < 3) {
            moveScore += 1;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_Rest(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;
    
    if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST) {
        if (ai->attacker.percentHP == 100) {
            if (BattleRand(battleSystem) % 10 < 6) {
                moveScore -= 8;
            }
        } else if (ai->attacker.percentHP > 50) {
            moveScore -= 3;
        } else if (ai->attacker.percentHP >= 40) {
            if (BattleRand(battleSystem) % 10 < 7) {
                moveScore -= 3;
            }
        }
    } else if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST) {
        if (ai->attacker.percentHP > 70) {
            moveScore -= 3;
        } else if (ai->attacker.percentHP >= 60) {
            if (BattleRand(battleSystem) % 10 < 8) {
                moveScore -= 3;
            }
        }
    }

    if (!BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_STEAL_STATUS_MOVE)) {
        if (BattleRand(battleSystem) % 10 < 9) {
            moveScore += 3;
        }
    } else {
        if (BattleRand(battleSystem) % 10 < 8) {
            moveScore += 3;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_OHKO(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem) {
    if (BattleRand(battleSystem) % 4 < 1) {
        return 1;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_ChargeMove(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;

    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        moveScore -= 2;
    } else if (ai->attacker.item == ITEM_POWER_HERB) {
        moveScore += 2;
    }
    
    if (BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_PROTECT)) {
        moveScore -= 2;
    }

    if (ai->attacker.percentHP <= 38) {
        moveScore -= 1;
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_HalveHP(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->target.percentHP <= 50) {
        return -1;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Trap(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ctx->battlemon[ai->target.id].condition & STATUS_BAD_POISON
    || ctx->battlemon[ai->target.id].condition2 == STATUS2_CURSE
    || ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG
    || ctx->battlemon[ai->target.id].condition2 & STATUS2_ATTRACT) {
        if (BattleRand(battleSystem) % 2 < 1) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_HighCrit(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->moveEffectiveness == MOVE_STATUS_SUPER_EFFECTIVE) {
        if (BattleRand(battleSystem) % 2 < 1) {
            return 1;
        }
    } else if (ai->moveEffectiveness != MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness != MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        if (BattleRand(battleSystem) % 4 < 1) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Recoil(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->moveEffectiveness != MOVE_STATUS_NO_EFFECT
    && ai->moveEffectiveness != MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        if (ai->attacker.ability == ABILITY_ROCK_HEAD
        || ai->attacker.ability == ABILITY_MAGIC_GUARD) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Status_Confuse(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;
    
    if (ai->attacker.percentHP <= 70) {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore -= 1;
        }
    }
    
    if (ai->target.percentHP <= 50) {
        moveScore -= 1;
    }
    
    if (ai->target.percentHP <= 30) {
        moveScore -= 1;
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_Reflect(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    if (ai->attacker.percentHP < 50) {
        moveScore -= 2;
    }
    
    if (ai->attacker.percentHP >= 90) {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore += 1;
        }
    }
    
    if (ctx->moveTbl[ai->targetLastUsedMove].split == SPLIT_PHYSICAL) {
        if (BattleRand(battleSystem) % 4 < 3) {
            moveScore += 1;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_Status_Poison(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->target.percentHP < 50 || ai->attacker.percentHP < 50) {
        return -1;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Status_Paralyze(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    int moveScore = 0;
    
    if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST && !ai->trickRoomActive) {
        moveScore += 3;
    }
    
    if (ai->attacker.percentHP <= 70) {
        moveScore -= 1;
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_StatDown_Speed_Hit(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->moveEffectiveness != MOVE_STATUS_NO_EFFECT
    && ai->moveEffectiveness != MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        return MoveEffectEvaluator_Expert_StatDown_Speed(ai, battleSystem);
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_VitalThrow(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->attacker.percentHP <= 60) {
        if (ai->attacker.percentHP < 40) {
            if (BattleRand(battleSystem) % 10 < 8) {
                return -1;
            } 
        } else {
            if (BattleRand(battleSystem) % 10 < 2) {
                return -1;
            }
        }
    }
    return 0;
}

static int MoveEffectEvaluator_Expert_Substitute(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_HIT_LAST_WHIFF_IF_HIT)) {
        if (BattleRand(battleSystem) % 10 < 6) {
            moveScore += 1;
        }   
    }

    // This logic seems to create a discrete distribution of probability depending on the user's HP.
    if (ai->attacker.percentHP <= 90) {
        if (ai->attacker.percentHP <= 50) {
            for (int i = 0; i < 3; i++) {
                if (BattleRand(battleSystem) % 10 < 6) {
                    moveScore -= 1;
                } 
            }
        } else if (ai->attacker.percentHP > 50) {
            if (BattleRand(battleSystem) % 10 < 6) {
                moveScore -= 1;
            } 
            
            if (ai->attacker.percentHP > 70) {
                if (BattleRand(battleSystem) % 10 < 6) {
                    moveScore -= 1;
                } 
            }
        }
    }
    
    // TODO: This logic that gamefreak wrote sucks, so I (sauceyaTTa) am modifying it. Check it in game later.
    if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST) {
        if (ctx->moveTbl[ai->targetLastUsedMove].split == SPLIT_STATUS) {
            if (ai->targetLastUsedMoveEffect == MOVE_EFFECT_STATUS_PARALYZE
            || ai->targetLastUsedMoveEffect == MOVE_EFFECT_STATUS_POISON
            || ai->targetLastUsedMoveEffect == MOVE_EFFECT_STATUS_BADLY_POISON
            || ai->targetLastUsedMoveEffect == MOVE_EFFECT_STATUS_SLEEP
            || ai->targetLastUsedMoveEffect == MOVE_EFFECT_STATUS_BURN) {
                if (BattleRand(battleSystem) % 10 < 6) {
                    moveScore += 1;
                } 
            } else if (ai->targetLastUsedMoveEffect == MOVE_EFFECT_STATUS_CONFUSE
            || ai->targetLastUsedMoveEffect == MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION
            || ai->targetLastUsedMoveEffect == MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION ) {
                if (BattleRand(battleSystem) % 10 < 6) {
                    moveScore += 1;
                } 
            } else if (ai->targetLastUsedMoveEffect == MOVE_EFFECT_STATUS_LEECH_SEED) {
                if (BattleRand(battleSystem) % 10 < 6) {
                    moveScore += 1;
                } 
            }
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_Recharge(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;

    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        moveScore -= 1;
    }

    if (ai->attacker.ability == ABILITY_TRUANT) {
        if (BattleRand(battleSystem) % 10 < 7) {
            moveScore += 1;
        }
    }

    if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST && ai->attacker.percentHP >= 60) {
        moveScore -= 1;
    }

    if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST && ai->attacker.percentHP > 40) {
        moveScore -= 1;
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_PassiveDrain(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;
    
    if (ai->attackerHasDamagingMove) {
        if (ai->attacker.percentHP <= 50) {
            if (BattleRand(battleSystem) % 10 < 8) {
                moveScore -= 3;
            }
        }
        
        if (ai->target.percentHP <= 50) {
            if (BattleRand(battleSystem) % 10 < 8) {
                moveScore -= 3;
            }
        }
    }
    
    if (BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_SP_DEF_UP)
    || BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_SP_DEF_UP_2)
    || BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_SP_DEF_UP_3)
    || BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_DEF_UP)
    || BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_DEF_UP_2)
    || BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_DEF_UP_3)
    || BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_DEF_SP_DEF_UP)
    || BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_ATK_DEF_UP)
    || BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_SP_ATK_SP_DEF_SPEED_UP)
    || BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_PROTECT)) {
        if (BattleRand(battleSystem) % 4 < 3) {
            moveScore += 2;
        }
    }
    return moveScore;
}

static int MoveEffectEvaluator_Expert_Disable(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    if (ctx->battlemon[ai->target.id].moveeffect.disabledTurns != 0) {
        if (BattleRand(battleSystem) % 10 < 9) {
            moveScore += 3;
        }
    }

    if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST) {
        moveScore -= 2;
    }

    /*TODO: there's more unknown logic in the ai doc*/
    
    return moveScore;
}

static int MoveEffectEvaluator_Expert_Counter(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    if (ctx->battlemon[ai->target.id].condition & STATUS_SLEEP
    || ctx->battlemon[ai->target.id].condition2 & STATUS2_ATTRACT
    || ctx->battlemon[ai->target.id].condition2 & STATUS2_CONFUSION) {
            moveScore -= 1;
    } else {
        if (ai->attacker.percentHP <= 30) {
            if (BattleRand(battleSystem) % 20 < 19) {
                moveScore -= 1;
            }
        }

        if (ai->attacker.percentHP <= 50) {
            if (BattleRand(battleSystem) % 10 < 6) {
                moveScore -= 1;
            }
        }

        if (BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_MIRROR_COAT)
        && BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_COUNTER)) {
            moveScore += 4; // TODO: decide if this is actually good to have...
        }

        if (ctx->moveTbl[ai->targetLastUsedMove].split == SPLIT_STATUS) {
            if (ctx->battlemon[ai->target.id].moveeffect.tauntTurns != 0) {
                if (BattleRand(battleSystem) % 10 < 6) {
                    moveScore += 1;
                }
            }
            if (!BattlerHasMoveSplit(battleSystem, ai->target.id, SPLIT_SPECIAL)) {
                if (BattleRand(battleSystem) % 2 < 1) {
                    moveScore += 4;
                }
            }
        }

        if (ctx->moveTbl[ai->targetLastUsedMove].split != SPLIT_STATUS) {
            if (ctx->battlemon[ai->target.id].moveeffect.tauntTurns != 0) {
                if (BattleRand(battleSystem) % 10 < 6) {
                    moveScore += 1;
                }
            }

            if (ctx->moveTbl[ai->targetLastUsedMove].split == SPLIT_SPECIAL) {
                moveScore -= 1;
            } else if (ctx->moveTbl[ai->targetLastUsedMove].split == SPLIT_PHYSICAL) {
                if (BattleRand(battleSystem) % 10 < 6) {
                    moveScore += 1;
                }
            }
        }
    }
    
    return moveScore;
}

static int MoveEffectEvaluator_Expert_Encore(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (!ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST) {
        if (ctx->moveTbl[ai->targetLastUsedMove].split == SPLIT_STATUS) {
            if (BattleRand(battleSystem) % 10 < 6) {
                return -1;
            }
        } else if (ctx->moveTbl[ai->targetLastUsedMove].split != SPLIT_STATUS) {
            return 1;
        }
    }
    
    return 0;
}

static int MoveEffectEvaluator_Expert_PainSplit(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->target.percentHP < 80) {
        return -1;
    } else if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST) {
        if (ai->attacker.percentHP > 60) {
            return -1;
        } else {
            return 1;
        }
    } else if (ai->attacker.percentHP > 40) {
        return -1;
    }

    return -1;
}

static int MoveEffectEvaluator_Expert_LockOn(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ctx->battlemon[ai->attacker.id].condition & STATUS_SLEEP) {
        return 10;
    }

    return -5;
}

static int MoveEffectEvaluator_Expert_SleepTalk(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem) {
    if (BattleRand(battleSystem) % 2 < 1) {
        return 2;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_PowerFromLessHP(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST) {
        if (ai->attacker.percentHP > 60) {
            return -1;
        } else if (ai->attacker.percentHP <= 40) {
            if (BattleRand(battleSystem) % 10 < 6) {
                return 1;
            }
        }
    } else if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST) {
        if (ai->attacker.percentHP > 33) {
            return -1;
        } else if (ai->attacker.percentHP <= 20) {
            if (ai->attacker.percentHP >= 8) {
                if (BattleRand(battleSystem) % 10 < 6) {
                    return 1;
                }
            } else {
                if (BattleRand(battleSystem) % 10 < 6) {
                    return 2;
                } else {
                    return 1;
                }
            }
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_CurePartyStatus(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->attackerStatusedMons == 0) {
        return -5;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_StealItem(UNUSED AIContext *ai_unused, UNUSED struct BattleSystem *battleSystem_unused) {
    // TODO: Need list of encouraged effects.

    return 0;
}

static int MoveEffectEvaluator_Expert_Status_Nightmare(UNUSED AIContext *ai_unused, UNUSED struct BattleSystem *battleSystem_unused) {
    return 2;
}

static int MoveEffectEvaluator_Expert_Curse(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (HasType(ctx, ai->attacker.id, TYPE_GHOST)) {
        if (ai->attacker.percentHP <= 80) {
            moveScore -= 1; 
        }
    } else {
        if (ctx->battlemon[ai->attacker.id].states[STAT_DEFENSE] < 9) {
            if (BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_POWER_BASED_ON_LOW_SPEED)
            || BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_TRICK_ROOM)) {
                if (BattleRand(battleSystem) % 10 < 9) {
                    moveScore += 1;
                }
            }
            
            if (BattleRand(battleSystem) % 2 < 1) {
                moveScore += 1;
            }

            if (ctx->battlemon[ai->attacker.id].states[STAT_DEFENSE] <= 7) {
                if (BattleRand(battleSystem) % 2 < 1) {
                    moveScore += 1;
                }
            }

            if (ctx->battlemon[ai->attacker.id].states[STAT_DEFENSE] <= 6) {
                if (BattleRand(battleSystem) % 2 < 1) {
                    moveScore += 1;
                }
            }
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_Protect(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_SHADOW_FORCE)
    || BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_REMOVE_PROTECT)) {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore -= 2;
        }
    }

    if (ctx->battlemon[ai->attacker.id].moveeffect.protectSuccessTurns > 1) {
        moveScore -= 2;
    } else {
        if (ctx->battlemon[ai->attacker.id].condition & STATUS_BAD_POISON
        || ctx->battlemon[ai->attacker.id].condition2 == STATUS2_CURSE
        || ctx->battlemon[ai->attacker.id].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED
        || ctx->battlemon[ai->attacker.id].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG
        || ctx->battlemon[ai->attacker.id].condition2 & STATUS2_ATTRACT
        || ctx->battlemon[ai->attacker.id].effect_of_moves & MOVE_EFFECT_FLAG_YAWN) {
            if (!(ctx->battlemon[ai->attacker.id].effect_of_moves & MOVE_EFFECT_FLAG_LOCK_ON)) {
                moveScore -= 2;
            }
        } else if (ctx->battlemon[ai->target.id].condition & STATUS_BAD_POISON
        || ctx->battlemon[ai->target.id].condition2 == STATUS2_CURSE
        || ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED
        || ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG
        || ctx->battlemon[ai->target.id].condition2 & STATUS2_ATTRACT
        || ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_YAWN) {
                moveScore += 2;
        } else if (BattleTypeGet(battleSystem) & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)) {
            moveScore += 2;
        } else if (ctx->battlemon[ai->attacker.id].effect_of_moves & MOVE_EFFECT_FLAG_LOCK_ON) {
            moveScore += 2; 
        } else {
            if (BattleRand(battleSystem) % 3 < 1) {
                moveScore += 2;
            }
        }

        if (ctx->battlemon[ai->attacker.id].moveeffect.protectSuccessTurns == 1) {
            moveScore -= 1;
            if (BattleRand(battleSystem) % 2 < 1) {
                moveScore -= 1;
            }
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_Spikes(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;
    
    if (BattleRand(battleSystem) % 2 < 1) {
        moveScore += 1;
    }

    if (BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_FORCE_SWITCH)) {
        if (BattleRand(battleSystem) % 4 < 3) {
            moveScore += 1;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_Foresight(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (HasType(ctx, ai->target.id, TYPE_GHOST)) {
        if (BattleRand(battleSystem) % 2 < 1) {
            return 2;
        }
    } else if (ctx->battlemon[ai->target.id].states[STAT_EVASION] >= 9) {
        if (BattleRand(battleSystem) % 10 < 7) {
            return 2;
        }
    } else {
        return -2;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Endure(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->attacker.percentHP < 4) {
        return -1;
    } else if (ai->attacker.percentHP < 35) {
        if (BattleRand(battleSystem) % 10 < 7) {
            return 1;
        }   
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_BatonPass(AIContext *ai, struct BattleSystem *battleSystem) {
    if (BattlerHasStatStageOrGreater(battleSystem, ai->attacker.id, 9)) {
        if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST && ai->attacker.percentHP <= 70) {
            if (BattleRand(battleSystem) % 10 < 7) {
                return 2;
            } 
        } else if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST && ai->attacker.percentHP <= 60) {
            if (BattleRand(battleSystem) % 10 < 7) {
                return 2;
            } 
        }
    } else if (BattlerHasStatStageOrLess(battleSystem, ai->attacker.id, 8)) {
        if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST && ai->attacker.percentHP <= 70) {
            return -2;
        } else if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST && ai->attacker.percentHP <= 60) {
            return -2;
        }
    } else {
        return -2;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Swagger(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (!ai->attackerKnowsPsychUp) {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore += 1;
        }
    } else {
        if (ctx->battlemon[ai->target.id].states[STAT_ATTACK] >= 3) {
            moveScore -= 5;
        } else if (ctx->total_turn == 0) {
            moveScore += 5;
        } else {
            moveScore += 3;
        }
    }

    return moveScore + MoveEffectEvaluator_Expert_Status_Confuse(ai, battleSystem);
}

// TODO: once again, really weird ai logic from gamefreak
static int MoveEffectEvaluator_Expert_Pursuit(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->attacker.turnsOnField == 0) {
        if (BattleRand(battleSystem) % 2 < 1) {
            return 1;
        } 
    } else if (ai->moveEffectiveness == MOVE_STATUS_SUPER_EFFECTIVE) {
        if (BattleRand(battleSystem) % 2 < 1) {
            return 1;
        } 
    }

    if (BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_SWITCH_HIT)) {
        if (BattleRand(battleSystem) % 2 < 1) {
            return 1;
        } 
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_HealTarget_Weather(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (ctx->field_condition & FIELD_CONDITION_SANDSTORM_ALL // TODO: Shore Up
    || ctx->field_condition & FIELD_CONDITION_RAIN_ALL
    || ctx->field_condition & FIELD_CONDITION_HAIL_ALL
    || ctx->field_condition & FIELD_CONDITION_SNOW_ALL) {
        moveScore -= 2;
    }

    return moveScore + MoveEffectEvaluator_Expert_HealTarget(ai, battleSystem);
}

static int MoveEffectEvaluator_Expert_Rain(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST && ai->attacker.ability == ABILITY_SWIFT_SWIM && !ai->trickRoomActive) {
        return 1;
    } else {
        if (ai->attacker.percentHP < 40) {
            return -1;
        } else if (ctx->field_condition & FIELD_CONDITION_HAIL_ALL
        || ctx->field_condition & FIELD_CONDITION_SNOW_ALL
        || ctx->field_condition & FIELD_CONDITION_SANDSTORM_ALL
        || ctx->field_condition & FIELD_CONDITION_SUN_ALL) {
            return 1;
        } else if (ai->attacker.ability == ABILITY_RAIN_DISH
        || ai->attacker.ability == ABILITY_DRY_SKIN
        || (ai->attacker.ability == ABILITY_HYDRATION && !(ctx->battlemon[ai->attacker.id].condition & STATUS_NONE))) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Sun(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST && ai->attacker.ability == ABILITY_CHLOROPHYLL && !ai->trickRoomActive) {
        return 1;
    } else {
        if (ai->attacker.percentHP < 40) {
            return -1;
        } else if (ctx->field_condition & FIELD_CONDITION_HAIL_ALL
        || ctx->field_condition & FIELD_CONDITION_SNOW_ALL
        || ctx->field_condition & FIELD_CONDITION_SANDSTORM_ALL
        || ctx->field_condition & FIELD_CONDITION_RAIN_ALL) {
            return 1;
        } else if (ai->attacker.ability == ABILITY_FLOWER_GIFT
        || (ai->attacker.ability == ABILITY_LEAF_GUARD && (ctx->battlemon[ai->attacker.id].condition & STATUS_NONE))) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_CutHP_50Percent(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->attacker.percentHP < 90) {
        return -2;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_CopyStatStages(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (BattlerHasStatStageOrGreater(battleSystem, ai->target.id, 9)) {
        if (ctx->battlemon[ai->attacker.id].states[STAT_EVASION] <= 6) {
            return 2;
        } else if (ctx->battlemon[ai->attacker.id].states[STAT_ATTACK] <= 6
        || ctx->battlemon[ai->attacker.id].states[STAT_DEFENSE] <= 6
        || ctx->battlemon[ai->attacker.id].states[STAT_SPEED] <= 6
        || ctx->battlemon[ai->attacker.id].states[STAT_SPECIAL_ATTACK] <= 6
        || ctx->battlemon[ai->attacker.id].states[STAT_SPECIAL_DEFENSE] <= 6) {
            return 1;
        } else {
            if (BattleRand(battleSystem) % 10 < 8) {
                return -2;
            }
        }
    } else {
        return -2;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_MirrorCoat(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    if (ctx->battlemon[ai->target.id].condition & STATUS_SLEEP
    || ctx->battlemon[ai->target.id].condition2 & STATUS2_ATTRACT
    || ctx->battlemon[ai->target.id].condition2 & STATUS2_CONFUSION) {
            moveScore -= 1;
    } else {
        if (ai->attacker.percentHP <= 30) {
            if (BattleRand(battleSystem) % 20 < 19) {
                moveScore -= 1;
            }
        }

        if (ai->attacker.percentHP <= 50) {
            if (BattleRand(battleSystem) % 10 < 6) {
                moveScore -= 1;
            }
        }

        if (BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_MIRROR_COAT)
        && BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_COUNTER)) {
            moveScore += 4; // TODO: decide if this is actually good to have...
        }

        if (ctx->moveTbl[ai->targetLastUsedMove].split == SPLIT_STATUS) {
            if (ctx->battlemon[ai->target.id].moveeffect.tauntTurns != 0) {
                if (BattleRand(battleSystem) % 10 < 6) {
                    moveScore += 1;
                }
            }
            if (!BattlerHasMoveSplit(battleSystem, ai->target.id, SPLIT_PHYSICAL)) {
                if (BattleRand(battleSystem) % 2 < 1) {
                    moveScore += 4;
                }
            }
        }

        if (ctx->moveTbl[ai->targetLastUsedMove].split != SPLIT_STATUS) {
            if (ctx->battlemon[ai->target.id].moveeffect.tauntTurns != 0) {
                if (BattleRand(battleSystem) % 10 < 6) {
                    moveScore += 1;
                }
            }

            if (ctx->moveTbl[ai->targetLastUsedMove].split == SPLIT_PHYSICAL) {
                moveScore -= 1;
            } else if (ctx->moveTbl[ai->targetLastUsedMove].split == SPLIT_SPECIAL) {
                if (BattleRand(battleSystem) % 10 < 6) {
                    moveScore += 1;
                }
            }
        }
    }
    
    return moveScore;
}

static int MoveEffectEvaluator_Expert_ChargeMove_Sun(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        moveScore -= 2;
    } else if (ai->moveEffect == MOVE_EFFECT_CHARGE_TURN_SUN_SKIPS
    && (ctx->field_condition & FIELD_CONDITION_SUN_ALL)) {
        moveScore += 2;
    } else if (ai->attacker.item == ITEM_POWER_HERB) {
        moveScore += 2;
    }
    
    if (BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_PROTECT)) {
        moveScore -= 2;
    }

    if (ai->attacker.percentHP <= 38) {
        moveScore -= 1;
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_ChargeMove_Invulnerable(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;
    
    if (BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_PROTECT)) {
        moveScore -= 1;
    }

    return moveScore + MoveEffectEvaluator_Expert_ChargeMove_Invulnerable_NoProtect(ai, battleSystem);
}

static int MoveEffectEvaluator_Expert_FirstTurnOnly(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->attacker.id].moveeffect.fakeOutCount == 0) {
        return 2;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_SpitUp(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->attacker.id].moveeffect.stockpileCount >= 2) {
        if (BattleRand(battleSystem) % 10 < 7) {
            return 2;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Hail(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST && ai->attacker.ability == ABILITY_SLUSH_RUSH && !ai->trickRoomActive) {
        return 1;
    } else {
        if (ai->attacker.percentHP < 40) {
            return -1;
        } else if (BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_BLIZZARD)) {
            return 2;
        } else if (ctx->field_condition & FIELD_CONDITION_RAIN_ALL ||
            ctx->field_condition & FIELD_CONDITION_SANDSTORM_ALL ||
            ctx->field_condition & FIELD_CONDITION_SUN_ALL) {
            return 1;
        } else if (ai->attacker.ability == ABILITY_ICE_BODY) {
            return 2;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Flatter(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;
    
    if (BattleRand(battleSystem) % 2 < 1) {
        moveScore -= 1;
    }

    return moveScore + MoveEffectEvaluator_Expert_Status_Confuse(ai, battleSystem);
}

static int MoveEffectEvaluator_Expert_Facade(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ctx->battlemon[ai->attacker.id].condition & STATUS_PARALYSIS
    || ctx->battlemon[ai->attacker.id].condition & STATUS_BURN
    || ctx->battlemon[ai->attacker.id].condition & STATUS_POISON_ALL) {
        return 1;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_FocusPunch(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        return -1;
    } else if (ctx->battlemon[ai->attacker.id].condition2 & STATUS2_SUBSTITUTE) {
        return 5;
    } else if (ctx->battlemon[ai->target.id].condition & STATUS_SLEEP) {
        return 1;
    } else if (ctx->battlemon[ai->target.id].condition2 & STATUS2_CONFUSION
    || ctx->battlemon[ai->target.id].condition2 & STATUS2_ATTRACT) {
        if (BattleRand(battleSystem) % 10 < 6) {
            return 1;
        }
    } else if (ai->attacker.turnsOnField > 0) {
        if (BattleRand(battleSystem) % 5 < 1) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_SmellingSalts(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ctx->battlemon[ai->target.id].condition & STATUS_PARALYSIS) {
        return 2;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_SwitchItems(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ItemIsDisruptive(ai->attacker.item, ai)) {
        if (ItemIsBadToTrade(ai->target.item, ai)) {
            return -3;
        } else {
            return 5;
        }
    } else if (ai->attacker.item == ITEM_TOXIC_ORB) {
        if (ItemIsBadToTrade(ai->target.item, ai)) {
            return -3;
        } else {
            if (!(ctx->battlemon[ai->target.id].condition & STATUS_NONE)
            || ctx->side_condition[ai->target.side] & SIDE_STATUS_SAFEGUARD
            || ai->targetImmuneToPoison
            || ai->target.ability == ABILITY_KLUTZ) {
                return -3;
            } else {
                return 5;
            }
        }
    } else if (ai->attacker.item == ITEM_FLAME_ORB) {
        if (ItemIsBadToTrade(ai->target.item, ai)) {
            return -3;
        } else {
            if (!(ctx->battlemon[ai->target.id].condition & STATUS_NONE)
            || ctx->side_condition[ai->target.side] & SIDE_STATUS_SAFEGUARD
            || ai->targetImmuneToBurn
            || ai->target.ability == ABILITY_KLUTZ) {
                return -3;
            } else {
                return 5;
            }
        }
    } else if (ai->attacker.item == ITEM_BLACK_SLUDGE) {
        if (ItemIsBadToTrade(ai->target.item, ai)) {
            return -3;
        } else {
            if (HasType(ctx, ai->target.id, TYPE_POISON)
            || ai->target.ability == ABILITY_MAGIC_GUARD
            || ai->target.ability == ABILITY_KLUTZ) {
                return -3;
            } else {
                return 5;
            }
        }
    }

    //TODO: add a check for flavor berries?

    return 0;
}

static int MoveEffectEvaluator_Expert_CopyAbility(AIContext *ai, struct BattleSystem *battleSystem) {
    if (IsDesirableAbility(ai->attacker.id)) {
        return -1;
    } else if (IsDesirableAbility(ai->target.id)) {
        if (BattleRand(battleSystem) % 10 < 8) {
            return 2;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_UserStatDown_AttackDefense(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        return -1;
    } else if (ctx->battlemon[ai->attacker.id].states[STAT_ATTACK] <= 5) {
        return -1;
    } else if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST && ai->attacker.percentHP <= 60) {
        return -1;
    } else if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST && ai->attacker.percentHP > 60) {
        return -1;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_MagicCoat(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;
    
    if (ai->target.percentHP <= 30) {
        if (BattleRand(battleSystem) % 10 < 6) {
            moveScore -= 1;
        }
    }

    if (ai->attacker.turnsOnField == 0) {
        if (BattleRand(battleSystem) % 10 < 4) {
            moveScore += 1;
        }
    } else {
        if (BattleRand(battleSystem) % 10 < 9) {
            moveScore -= 1;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_Recycle(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->recycle_item[ai->attacker.id] != ITEM_CHESTO_BERRY
    && ctx->recycle_item[ai->attacker.id] != ITEM_CHESTO_BERRY
    && ctx->recycle_item[ai->attacker.id] != ITEM_STARF_BERRY) {
        return -2;
    } else {
        if (BattleRand(battleSystem) % 10 < 8) {
            return -1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_BoostDamage_UserHit_LowPriority(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->battlemon[ai->target.id].condition2 & STATUS2_ATTRACT
    || ctx->battlemon[ai->target.id].condition & STATUS_SLEEP) {
        return -2;
    } else {
        if (BattleRand(battleSystem) % 10 < 7) {
            return -2;
        }
    }

    return 2;
}

static int MoveEffectEvaluator_Expert_RemoveScreens(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ctx->side_condition[ai->target.side] & SIDE_STATUS_REFLECT
    || ctx->side_condition[ai->target.side] & SIDE_STATUS_LIGHT_SCREEN
    || ctx->side_condition[ai->target.side] & SIDE_STATUS_AURORA_VEIL) {
        return 1;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_RemoveItem(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->target.percentHP >= 30 && ai->attacker.turnsOnField > 0) {
        if (BattleRand(battleSystem) % 10 < 3) {
            return 3;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Endeavor(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->target.percentHP < 70) {
        return -1;
    } else {
        if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST) {
            if (ai->attacker.percentHP > 50) {
                return -1;
            } else {
                return 1;
            }
        } else if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST) {
            if (ai->attacker.percentHP > 40) {
                return -1;
            } else {
                return 1;
            }
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_PowerFromMoreHP(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        return -1;
    } else if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST && ai->attacker.percentHP <= 70) {
        return -1;
    } else if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST && ai->attacker.percentHP <= 50) {
        return -1;
    }

    return 0;
}

// TODO: Improve this vanilla logic to just check if the target shares a move with us.
static int MoveEffectEvaluator_Expert_Imprison(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->attacker.turnsOnField > 0) {
        if (BattleRand(battleSystem) % 10 < 6) {
            return 2;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_HealStatus(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->target.percentHP < 50) {
        return -1;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Snatch(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;
    
    if (ai->attacker.turnsOnField == 0) {
        if (BattleRand(battleSystem) % 10 < 4) {
            moveScore += 2;
        }
    }

    if (BattleRand(battleSystem) % 10 < 9) {
        if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST) {
            if (ai->target.percentHP > 25) {
                if (BattleRand(battleSystem) % 10 < 9) {
                    moveScore -= 2;
                } 
            } else if (BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_RESTORE_HALF_HP)) { // TODO: Variants
                if (BattleRand(battleSystem) % 10 < 4) {
                    moveScore += 2;
                }  
            } else {
                if (BattleRand(battleSystem) % 10 < 1) {
                    moveScore += 1;
                }    
            }
        } else if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST) {
            if (ai->attacker.percentHP < 100) {
                if (BattleRand(battleSystem) % 10 < 9) {
                    moveScore -= 2;
                } 
            } else if (ai->target.percentHP < 70) {
                if (BattleRand(battleSystem) % 10 < 9) {
                    moveScore -= 2;
                } 
            } else {
                if (BattleRand(battleSystem) % 10 < 7) {
                    moveScore -= 2;
                } 
            }
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_HalveElectricDamage(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ai->attacker.percentHP < 50) {
        return -1;
    } else if (HasType(ctx, ai->target.id, TYPE_ELECTRIC)) {
        return 1;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_UserStatDown_Offense(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        return -1;
    } else if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST && ai->attacker.percentHP <= 60) {
        return -1;
    } else if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST && ai->attacker.percentHP <= 80) {
        return -1;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_HalveFireDamage(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ai->attacker.percentHP < 50) {
        return -1;
    } else if (HasType(ctx, ai->target.id, TYPE_FIRE)) {
        return 1;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_StatUp_OffenseSpeed(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;
    
    if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST && !ai->trickRoomActive) {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore += 1;
        }
    }
    
    if (ai->attacker.percentHP <= 50) {
        if (BattleRand(battleSystem) % 10 < 7) {
            moveScore -= 1;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_Gravity(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ai->target.ability == ABILITY_LEVITATE
    || ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_MAGNET_RISE
    || HasType(ctx, ai->target.id, TYPE_FLYING)) {
        if (BattleRand(battleSystem) % 4 < 3) {
            return 1;
        }
    } else if (ai->attacker.percentHP >= 60) {
        if (BattleRand(battleSystem) % 10 < 4) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_MiracleEye(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (HasType(ctx, ai->target.id, TYPE_DARK)) {
        if (BattleRand(battleSystem) % 2 < 1) {
            return 2;
        }
    } else if (ctx->battlemon[ai->target.id].states[STAT_EVASION] >= 9) {
        if (BattleRand(battleSystem) % 10 < 7) {
            return 2;
        }
    } else {
        return -2;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_WakeUpSlap(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        return -1;
    } else if (ctx->battlemon[ai->target.id].condition & STATUS_SLEEP) {
        return 2;
    }

    return 0;
}

// TODO: Incentivize in trick room.
static int MoveEffectEvaluator_Expert_UserStatDown_Speed(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        return -1;
    } else if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST) {
        return 1;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_SelfSacrifice_Heal(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;
    
    if (ai->attacker.percentHP >= 80 && ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST) {
        if (BattleRand(battleSystem) % 4 < 1) {
            moveScore -= 5;
        }
    }
    
    if (ai->attacker.percentHP >= 50) {
        if (BattleRand(battleSystem) % 10 < 8) {
            moveScore -= 1;
        }
    }
    
    if (BattleRand(battleSystem) % 4 < 1) {
        moveScore = 1; // TODO: Investigate. Was this a typo?
        if (ai->attackerHasSupereffectiveMove != TRUE) {
            if (BattleRand(battleSystem) % 4 < 1) {
                moveScore += 1;
            }
        }
        // If the current attacker doesn't have the move with the highest damage,
        // It's apparently more reasonable to sack oneself to restore that mon.
        if (AttackerMonWithHighestDamage(battleSystem, ai) != ai->attacker.partyIndex) {
            if (BattleRand(battleSystem) % 2 < 1) {
                moveScore += 1;
            }
        }
    }
    
    if (ai->attacker.percentHP <= 30) {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore += 1;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_BoostDamage_TargetBelowHalfHP(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;
    
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        moveScore -= 1;
    }

    if (ai->target.percentHP <= 50) {
        if (BattleRand(battleSystem) % 10 < 5) {
            moveScore += 1;
        } else {
            moveScore += 2;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_RemoveProtect(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_PROTECT)) {
        if (BattleRand(battleSystem) % 4 < 3) {
            return 0;
        }
    } else { // TODO: What even is the purpose of running any code explicitly if we know the target DOES NOT have Protect??
        if (ctx->battlemon[ai->attacker.id].condition & STATUS_BAD_POISON
        || ctx->battlemon[ai->attacker.id].condition2 == STATUS2_CURSE
        || ctx->battlemon[ai->attacker.id].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED
        || ctx->battlemon[ai->attacker.id].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG
        || ctx->battlemon[ai->attacker.id].condition2 & STATUS2_ATTRACT
        || ctx->battlemon[ai->attacker.id].effect_of_moves & MOVE_EFFECT_FLAG_YAWN) {
            if (BattleRand(battleSystem) % 2 < 1) {
                return 1;
            }
        } else if (ai->target.percentHP < 100 && (ai->target.item == ITEM_LEFTOVERS ||ai->target.item == ITEM_BLACK_SLUDGE)) {
            if (BattleRand(battleSystem) % 2 < 1) {
                return 1;
            }
        } else if (ctx->battlemon[ai->target.id].moveeffect.protectSuccessTurns == 0) {
            if (BattleRand(battleSystem) % 2 < 1) {
                return 1;
            }
        } else if (ctx->battlemon[ai->target.id].moveeffect.protectSuccessTurns == 1) {
            if (BattleRand(battleSystem) % 4 < 1) {
                return 1;
            }
        } else {
            return -2;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_EatTargetBerry(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        return -1;
    } else if (ai->attacker.turnsOnField == 0) {
        if (BattleRand(battleSystem) % 4 < 3) {
            return 1;
        }
    } else {
        if (BattleRand(battleSystem) % 2 < 1) {
            return 1;
        }
    }

    return 0;
}

// TODO: This logic sucks.
static int MoveEffectEvaluator_Expert_Tailwind(AIContext *ai, struct BattleSystem *battleSystem) {
    if (BattleRand(battleSystem) % 4 < 3) {
        if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST) {
            return -1;
        } else if (ai->attacker.percentHP <= 30) {
            return -1;
        } else if (ai->attacker.percentHP > 75) {
            return 1;
        } else {
            if (BattleRand(battleSystem) % 4 < 3) {
                return 1;
            }
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_StatUp_Random(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->attacker.percentHP <= 50) {
        return -1;
    } else if (ai->attacker.percentHP > 90) {
        if (BattleRand(battleSystem) % 4 < 1) {
            return 1;
        }
    } else {
        if (BattleRand(battleSystem) % 8 < 3) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_MetalBurst(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    // TODO: this logic can definitely be improved.
    if (ctx->battlemon[ai->target.id].condition & STATUS_SLEEP
    || ctx->battlemon[ai->target.id].condition2 & STATUS2_ATTRACT
    || ctx->battlemon[ai->target.id].condition2 & STATUS2_CONFUSION
    || BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_PRIORITY_NEG_1_BYPASS_ACCURACY)
    || BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_HIT_LAST_WHIFF_IF_HIT)) {
            moveScore -= 1;
    } else {
        if (ai->attacker.percentHP <= 30) {
            if (BattleRand(battleSystem) % 20 < 19) {
                moveScore -= 1;
            }
        }
        
        if (ai->attacker.percentHP <= 50) {
            if (BattleRand(battleSystem) % 10 < 6) {
                moveScore -= 1;
            }
        } else if (ai->attacker.percentHP > 50) {
            if (BattleRand(battleSystem) % 4 < 1) {
                moveScore += 1;
            }
        }

        if (ctx->moveTbl[ai->targetLastUsedMove].split != SPLIT_STATUS) {
            if (ctx->battlemon[ai->target.id].moveeffect.tauntTurns == 0) {
                if (BattleRand(battleSystem) % 10 < 6) {
                    moveScore += 1;
                }
            }
        }

        if (ctx->battlemon[ai->target.id].moveeffect.tauntTurns == 0) {
            if (BattleRand(battleSystem) % 10 < 6) {
                moveScore += 1;
            }
        }
    }

    return moveScore;
}

// TODO: change this logic.
static int MoveEffectEvaluator_Expert_SwitchOnHit(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;
    
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        moveScore -= 1;
    } else if (ai->attacker.livingPartySize == 1) {
        moveScore -= 2;
    } else if (ai->attackerHasSupereffectiveMove) {
        if (BattleRand(battleSystem) % 4 < 3) {
            moveScore -= 2;
        }
    } else if (AttackerMonWithHighestDamage (battleSystem, ai) == ai->attacker.partyIndex) {
        if (BattleRand(battleSystem) % 4 < 3) {
            moveScore -= 2;
        }
    } else if (ai->target.percentHP > 70) {
        if (BattleRand(battleSystem) % 4 < 3) {
            moveScore += 1;
        }

        if (ai->target.percentHP > 30) {
            if (BattleRand(battleSystem) % 2 < 1) {
                moveScore += 1;
            }
        }
    } else {
        if (BattleRand(battleSystem) % 4 < 1) {
            moveScore += 1;
        }
    }
    
    if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST) {
        moveScore += 1;
    } else {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore += 1;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_UserStatDown_Defense(AIContext *ai, UNUSED struct BattleSystem *battleSystem_unused) {
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        return -1;
    } else if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST && ai->attacker.percentHP <= 80) {
        return -1;
    } else if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST  && ai->attacker.percentHP <= 60) {
        return -1;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_BoostDamage_UserHit(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;
    
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        moveScore -= 1;
    }

    if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST && ai->attacker.percentHP >= 30) {
        if (BattleRand(battleSystem) % 4 < 3) {
            moveScore += 1;
        }
    }

    return moveScore;
}

// TODO: Check for doubles.
static int MoveEffectEvaluator_Expert_BoostDamage_TargetHit(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        return -1;
    } else if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST) {
        if (ai->attacker.ability == ABILITY_ROUGH_SKIN) {
            if (BattleRand(battleSystem) % 2 < 1) {
                return 1;
            }
        } else if (ai->attacker.item == ITEM_JABOCA_BERRY || ai->attacker.item == ITEM_ROWAP_BERRY) {
            if (BattleRand(battleSystem) % 2 < 1) {
                return 1;
            }
        } else {
            if (BattleRand(battleSystem) % 4 < 1) {
                return 1;
            }
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Embargo(UNUSED AIContext *ai_unused, struct BattleSystem *battleSystem) {
    if (BattleRand(battleSystem) % 2 < 1) {
        return 1;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Fling(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE
    || BattleItemDataGet(ctx, ai->attacker.item, ITEM_PARAM_FLING_EFFECT) < 26) { // All fling effects above 25 are the detrimental ones. TODO: Make this a bit more robust.
        moveScore -= 1;
    }
    
    if (ai->flingPower < 30) {
        moveScore -= 2;
    } else if (ai->flingPower > 90) { 
        if (BattleRand(battleSystem) % 4 < 3) {
            moveScore += 1;
        }

        if (ai->moveEffectiveness == MOVE_STATUS_SUPER_EFFECTIVE) {
            moveScore += 4;
        } else {
            if (BattleRand(battleSystem) % 2 < 1) {
                moveScore += 1;
            }
        }
    } else if (ai->flingPower > 60) {
        if (BattleRand(battleSystem) % 4 < 3) {
            moveScore += 1;
        }
    } else {
        if (BattleRand(battleSystem) % 2 < 1) {
            moveScore += 1;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_TransferStatus(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->target.percentHP >= 30) {
        if (BattleRand(battleSystem) % 2 < 1) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_BoostDamage_LowerPP(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        return -1;
    } else if (ai->movePP == 1) {
        return 3;
    } else if (ai->movePP == 2) {
        if (BattleRand(battleSystem) % 10 < 6) {
            return 2;
        } else {
            return 1;
        }
    } else if (ai->movePP == 3) {
        if (BattleRand(battleSystem) % 10 < 6) {
           return 1;
        }
    } else if (ai->target.ability == ABILITY_PRESSURE) {
        if (BattleRand(battleSystem) % 10 < 9) {
            return 1;
        }
    } else if (ctx->battlemon[ai->target.id].states[STAT_EVASION] >= 11
    || ctx->battlemon[ai->attacker.id].states[STAT_ACCURACY] <= 1) {
        if (BattleRand(battleSystem) % 10 < 6) {
            return 2;
        } else {
            return 1;
        }
    } else if (ctx->battlemon[ai->target.id].states[STAT_EVASION] >= 9
    || ctx->battlemon[ai->attacker.id].states[STAT_ACCURACY] <= 3) {
        if (BattleRand(battleSystem) % 10 < 6) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_PreventHealing(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_RECOVER_DAMAGE_SLEEP)
    || BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_RESTORE_HALF_HP)
    || BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_HEAL_HALF_REMOVE_FLYING_TYPE)
    || BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_HEAL_HALF_DIFFERENT_IN_WEATHER)
    || BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_RECOVER_HEALTH_AND_SLEEP)
    || BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_SWALLOW)
    || BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT)
    || BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL)
    || BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_RESTORE_HP_EVERY_TURN)
    || BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_STATUS_LEECH_SEED)
    || BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON)
    || BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_RECOVER_THREE_QUARTERS_DAMAGE_DEALT)) {
        if (BattleRand(battleSystem) % 10 < 9) {
            return 1;
        }
    } else if (ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED
    || ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN
    || ctx->battlemon[ai->attacker.id].effect_of_moves & MOVE_EFFECT_FLAG_AQUA_RING) {
        if (BattleRand(battleSystem) % 10 < 9) {
            return 1;
        }
    } else {
        if (BattleRand(battleSystem) % 2 < 1) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_BoostDamage_HigherTargetHP(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;

    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        moveScore -= 1;
    } else if (ai->target.percentHP < 50) {
        moveScore -= 1;
    } else if (ai->target.percentHP == 100) {
        if (BattleRand(battleSystem) % 10 < 9) {
            moveScore += 1;
        }

        if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST) {
            moveScore += 2;
        }

        if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST) {
            moveScore += 1;
        }
    } else if (ai->target.percentHP > 85) {
        if (BattleRand(battleSystem) % 10 < 9) {
            moveScore += 1;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_SwapAttackDefense(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->attacker.percentHP > 90) {
        if (BattleRand(battleSystem) % 10 < 6) {
            return 1;
        }
    } else if (ai->attacker.percentHP > 60) {
        if (BattleRand(battleSystem) % 2 < 1) {
            return 1;
        }
    } else if (ai->attacker.percentHP > 30) {
        if (BattleRand(battleSystem) % 3 < 1) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_SuppressAbility(AIContext *ai, struct BattleSystem *battleSystem) {
    if (BattleRand(battleSystem) % 4 < 3) {
        if (ai->target.percentHP > 70) {
            return 1;
        } else if (ai->target.percentHP <= 70) {
            if (BattleRand(battleSystem) % 2 < 1) {
                return 1;
            }
        } else if (ai->target.percentHP <= 50) {
            if (BattleRand(battleSystem) % 2 < 1) {
                return -1;
            } else {
                return -2;
            }
        } else if (ai->target.percentHP <= 30) {
            if (BattleRand(battleSystem) % 2 < 1) {
                return -2;
            } else {
                return -3;
            }
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_LuckyChant(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->attacker.percentHP < 70) {
        return -1;
    } else if (BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_HIGH_CRITICAL_POISON_HIT)
    || BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_HIGH_CRITICAL)
    || BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_SLEEP_POISON_PARALYZE_HIT)
    || BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_HIGH_CRITICAL_RAISE_SPEED_HIT)) {
        return 1;
    } else {
        if (BattleRand(battleSystem) % 4 < 1) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_MeFirst(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST) {
        return -2;
    }
    //TODO: if attacker deals more damage, kinda vague in ai doc.
    else if (ctx->moveTbl[ai->targetLastUsedMove].split != SPLIT_STATUS) {
        if (BattleRand(battleSystem) % 2 < 1) {
            return 1;
        }
    } else {
        if (BattleRand(battleSystem) % 4 < 3) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Copycat(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST) {
        if (IsInList(ai->moveEffect, MirrorMoveList, NELEMS(MirrorMoveList))) {
            if (BattleRand(battleSystem) % 2 < 1) {
                return 2;
            }
        } else {
            if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST) {
                if (BattleRand(battleSystem) % 10 < 7) {
                    return -1;
                }
            }
        }            
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_PowerSwap(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->differenceInAttackStages > 3 || ai->differenceInSpAtkStages > 3) {
        int roll = BattleRand(battleSystem) % 32;
        if (roll == 0) {
            return 0;
        } else if (roll < 2) {
            return 1;
        } else if (roll < 4) {
            return 2;
        } else if (roll < 8) {
            return 3;
        } else if (roll < 16) {
            return 4;
        } else if (roll < 32) {
            return 5;
        }
    } else if (ai->differenceInAttackStages > 1 || ai->differenceInSpAtkStages > 1) {
        int roll = BattleRand(battleSystem) % 32;
        if (roll == 0) {
            return 0;
        } else if (roll < 2) {
            return 0;
        } else if (roll < 4) {
            return 0;
        } else if (roll < 8) {
            return 1;
        } else if (roll < 16) {
            return 2;
        } else if (roll < 32) {
            return 3;
        }
    } else if (ai->differenceInAttackStages > 0 || ai->differenceInSpAtkStages > 0) {
        int roll = BattleRand(battleSystem) % 32;
        if (roll == 0) {
            return 0;
        } else if (roll < 2) {
            return 0;
        } else if (roll < 4) {
            return 0;
        } else if (roll < 8) {
            return 0;
        } else if (roll < 16) {
            return 1;
        } else if (roll < 32) {
            return 2;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_GuardSwap(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->differenceInDefenseStages > 3 || ai->differenceInSpDefStages > 3) {
        int roll = BattleRand(battleSystem) % 32;
        if (roll == 0) {
            return 0;
        } else if (roll < 2) {
            return 1;
        } else if (roll < 4) {
            return 2;
        } else if (roll < 8) {
            return 3;
        } else if (roll < 16) {
            return 4;
        } else if (roll < 32) {
            return 5;
        }
    } else if (ai->differenceInDefenseStages > 1 || ai->differenceInSpDefStages > 1) {
        int roll = BattleRand(battleSystem) % 32;
        if (roll == 0) {
            return 0;
        } else if (roll < 2) {
            return 0;
        } else if (roll < 4) {
            return 0;
        } else if (roll < 8) {
            return 1;
        } else if (roll < 16) {
            return 2;
        } else if (roll < 32) {
            return 3;
        }
    } else if (ai->differenceInDefenseStages > 0 || ai->differenceInSpDefStages > 0) {
        int roll = BattleRand(battleSystem) % 32;
        if (roll == 0) {
            return 0;
        } else if (roll < 2) {
            return 0;
        } else if (roll < 4) {
            return 0;
        } else if (roll < 8) {
            return 0;
        } else if (roll < 16) {
            return 1;
        } else if (roll < 32) {
            return 2;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_BoostDamage_HigherTargetStatStages(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->moveEffectiveness != MOVE_STATUS_NO_EFFECT
    && ai->moveEffectiveness != MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        int chance_roll = BattleRand(battleSystem) % 32;
        if (BattlerStatStageChangeSum(battleSystem, ai->target.id) > 6) {
            if (chance_roll < 2) {
                return 0;
            } else if (chance_roll < 4) {
                return 1;
            } else if (chance_roll < 8) {
                return 2;
            } else if (chance_roll < 16) {
                return 3;
            } else if (chance_roll < 32) {
                return 4;
            }
        } else if (BattlerStatStageChangeSum(battleSystem, ai->target.id) == 6) {
            if (chance_roll < 4) {
                return 0;
            } else if (chance_roll < 8) {
                return 1;
            } else if (chance_roll < 16) {
                return 2;
            } else if (chance_roll < 32) {
                return 3;
            }
        } else if (BattlerStatStageChangeSum(battleSystem, ai->target.id) == 5) {
            if (chance_roll < 8) {
                return 0;
            } else if (chance_roll < 16) {
                return 1;
            } else if (chance_roll < 32) {
                return 2;
            }
        } else if (BattlerStatStageChangeSum(battleSystem, ai->target.id) > 2) {
            if (chance_roll < 16) {
                return 0;
            } else if (chance_roll < 32) {
                return 1;
            }
        }
    }
    
    return 0;
}

static int MoveEffectEvaluator_Expert_LastResort(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        return -1;
    } else if (ctx->battlemon[ai->attacker.id].moveeffect.lastResortCount == ai->attackerMovesKnown - 1) {
        return 1;
    }
    
    return 0;
}

static int MoveEffectEvaluator_Expert_WorrySeed(AIContext *ai, struct BattleSystem *battleSystem) {
    if (BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_RECOVER_HEALTH_AND_SLEEP)) {
        return 1;
    } else if (ai->attacker.percentHP >= 50) {
        if (BattleRand(battleSystem) % 2 < 1) {
            return 1;
        }
    } else {
        if (BattleRand(battleSystem) % 4 < 3) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_SuckerPunch(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        return -1;
    } else if (BattleRand(battleSystem) % 4 < 3) {
        return 1;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_ToxicSpikes(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;
    
    if (BattleRand(battleSystem) % 2 < 1) {
        moveScore += 1;
        if (BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_FORCE_SWITCH)) { // TODO: Dragon Tail, etc.
            if (BattleRand(battleSystem) % 4 < 3) {
                moveScore += 1;
            }
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_SwapStatChanges(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (!BattlerHasStatStageOrGreater(battleSystem, ai->target.id, 8)
    && !(ctx->battlemon[ai->target.id].condition2 & STATUS2_FOCUS_ENERGY)) {
        return -2;
    } else if (BattlerHasStatStageOrLess(battleSystem, ai->attacker.id, 6)
    && !(ctx->battlemon[ai->attacker.id].condition2 & STATUS2_FOCUS_ENERGY)) {
        return 1;
    } else if (ctx->battlemon[ai->attacker.id].states[STAT_EVASION] <= 6) {
        return 2;
    } else {
        if (BattleRand(battleSystem) % 10 < 8) {
            return -2;
        }
    }

    return 0;
}

// TODO: This vanilla logic isn't great.
static int MoveEffectEvaluator_Expert_AquaRing(AIContext *ai, struct BattleSystem *battleSystem) {
    if (ai->attacker.percentHP >= 30) {
        if (BattleRand(battleSystem) % 2 < 1) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_MagnetRise(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ai->attacker.percentHP >= 50) {
        if (BattlerHasMoveType(battleSystem, ai->target.id, TYPE_GROUND)) {
            return 1;
        } else if (HasType(ctx, ai->target.id, TYPE_GROUND)) {
            return 1;
        } else {
            if (BattleRand(battleSystem) % 2 < 1) {
                return 1;
            }
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Defog(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (ctx->side_condition[ai->target.side] & SIDE_STATUS_REFLECT
    || ctx->side_condition[ai->target.side] & SIDE_STATUS_LIGHT_SCREEN
    || ctx->side_condition[ai->target.side] & SIDE_STATUS_AURORA_VEIL) {
        if (ai->attacker.percentHP < 30 && ai->attacker.livingPartySize == 1) {
            if (BattleRand(battleSystem) % 10 < 8) {
                moveScore -= 2;
            } else if (ai->target.percentHP > 70) {
                moveScore -= 2;
            }
        } else {
            moveScore += 1;

            if (ai->target.livingPartySize > 1 && ai->targetHasHazards) {
                if (BattleRand(battleSystem) % 2 < 1) {
                    moveScore -= 1;
                }
            } else if (ai->targetHasHazards) {
                moveScore -= 2;
            } else if (ai->attacker.percentHP >= 70 && ctx->battlemon[ai->target.id].states[STAT_EVASION] >= 4 && ai->target.percentHP <= 70) {
                moveScore -= 2;
            } else {
                if (BattleRand(battleSystem) % 10 < 8) {
                    moveScore -= 2;
                } else if (ai->target.percentHP <= 70) {
                    moveScore -= 2;
                }
            }
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_TrickRoom(AIContext *ai, struct BattleSystem *battleSystem) {
    // Trick Room for doubles is handled in TagStrategy.
    if (!(BattleTypeGet(battleSystem) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLES | BATTLE_TYPE_TAG))) {
        if (ai->attacker.percentHP > 30 || ai->attacker.livingPartySize > 1) {
            if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST) {
                return -1;
            } else if (ai->speedCalc == SPEEDCALC_TARGET_MOVES_FIRST) {
                if (BattleRand(battleSystem) % 4 < 3) {
                    return 3;
                }
            }
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Blizzard(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;

    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        if (BattleRand(battleSystem) % 10 < 8) {
            return -3;
        } else if (ctx->field_condition & FIELD_CONDITION_HAIL_ALL
        || ctx->field_condition & FIELD_CONDITION_SNOW_ALL) {
            return 1;
        }
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_Captivate(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (ctx->battlemon[ai->target.id].states[STAT_SPECIAL_ATTACK] != 6) {
        moveScore -= 1;

        if (ai->attacker.percentHP <= 90) {
            moveScore -= 1;
        } else if (ctx->battlemon[ai->target.id].states[STAT_SPECIAL_ATTACK] <= 3) {
            if (BattleRand(battleSystem) % 10 < 8) {
                moveScore -= 2;
            }
        }
    }

    if (ai->target.percentHP <= 70) {
        moveScore -= 2;
    } else if (ctx->moveTbl[ai->targetLastUsedMove].split == SPLIT_PHYSICAL) {
        if (BattleRand(battleSystem) % 4 < 3) {
            moveScore -= 1;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_StealthRock(AIContext *ai, struct BattleSystem *battleSystem) {
    int moveScore = 0;

    if (BattleRand(battleSystem) % 2 < 1) {
        moveScore += 1;
        
        if (BattlerHasMoveEffect(battleSystem, ai->attacker.id, MOVE_EFFECT_FORCE_SWITCH)) {
            if (BattleRand(battleSystem) % 4 < 3) {
                moveScore += 1;
            }
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_ChargeMove_Invulnerable_NoProtect(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;
    
    if (ai->attacker.item == ITEM_POWER_HERB) {
        moveScore += 2;
    }
    
    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        moveScore -= 1;
    }
    
    if (ctx->battlemon[ai->target.id].condition & STATUS_BAD_POISON
    || ctx->battlemon[ai->target.id].condition2 == STATUS2_CURSE
    || ctx->battlemon[ai->target.id].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED) {
        moveScore += 1;
    }

    // TODO: What...?
    if (((ctx->field_condition & FIELD_CONDITION_HAIL_ALL)
    && (ai->attacker.ability == ABILITY_SNOW_CLOAK || ai->attacker.ability == ABILITY_OVERCOAT || ai->attacker.ability == ABILITY_MAGIC_GUARD || HasType(ctx, ai->attacker.id, TYPE_ICE)))
    || ((ctx->field_condition & FIELD_CONDITION_SANDSTORM_ALL)
    && (ai->attacker.ability == ABILITY_SAND_VEIL || ai->attacker.ability == ABILITY_SAND_RUSH || ai->target.ability == ABILITY_SAND_FORCE || ai->target.ability == ABILITY_OVERCOAT || ai->target.ability == ABILITY_MAGIC_GUARD || HasType(ctx, ai->attacker.id, TYPE_GROUND) || HasType(ctx, ai->attacker.id, TYPE_ROCK) || HasType(ctx, ai->attacker.id, TYPE_STEEL)))) {
        if (BattleRand(battleSystem) % 10 < 7) {
            moveScore += 1;
        }
    }

    if (ai->speedCalc == SPEEDCALC_ATTACKER_MOVES_FIRST 
    && ai->targetLastUsedMoveEffect != MOVE_EFFECT_BYPASS_ACCURACY) {
        if (BattleRand(battleSystem) % 10 < 7) {
            moveScore += 1;
        }
    }

    return moveScore;
}

static int MoveEffectEvaluator_Expert_Venoshock(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    
    if (ctx->battlemon[ai->target.id].condition & STATUS_POISON_ALL) {
        return 2;
    }

    return 0;
}

static int MoveEffectEvaluator_Expert_ChargeMove_Rain(AIContext *ai, struct BattleSystem *battleSystem) {
    struct BattleStruct *ctx = battleSystem->sp;
    int moveScore = 0;

    if (ai->moveEffectiveness == MOVE_STATUS_NO_EFFECT
    || ai->moveEffectiveness == MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        moveScore -= 2;
    } else if (ai->moveEffect == MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP_RAIN_SKIPS
    && (ctx->field_condition & FIELD_CONDITION_RAIN_ALL)) {
        moveScore += 2;
    } else if (ai->attacker.item == ITEM_POWER_HERB) {
        moveScore += 2;
    }
    
    if (BattlerHasMoveEffect(battleSystem, ai->target.id, MOVE_EFFECT_PROTECT)) {
        moveScore -= 2;
    }

    if (ai->attacker.percentHP <= 38) {
        moveScore -= 1;
    }

    return moveScore;
}
