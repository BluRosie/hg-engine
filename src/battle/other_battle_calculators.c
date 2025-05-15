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


extern const u8 StatBoostModifiers[][2];

typedef struct
{
    u8  numerator;
    u8  denominator;
} AccuracyStatChangeRatio;

// https://www.smogon.com/forums/threads/sword-shield-battle-mechanics-research.3655528/post-8684263
const AccuracyStatChangeRatio sAccStatChanges[] =
{
    {  6, 18 },
    {  6, 16 },
    {  6, 14 },
    {  6, 12 },
    {  6, 10 },
    {  6,  8 },
    {  6,  6 },
    {  8,  6 },
    { 10,  6 },
    { 12,  6 },
    { 14,  6 },
    { 16,  6 },
    { 18,  6 },
};

const u16 PowderMovesList[] = {
    MOVE_COTTON_SPORE,
    MOVE_POISON_POWDER,
    MOVE_SLEEP_POWDER,
    MOVE_STUN_SPORE,
    MOVE_SPORE,
    MOVE_POWDER,
    MOVE_RAGE_POWDER,
    MOVE_MAGIC_POWDER,
};

// Moves that Triage boosts the priority of.
// Move effects might be a tidier way to do it, but we don't have those defined for some of these moves yet.
const u16 TriageMovesList[] = {
    MOVE_ABSORB,
    MOVE_DRAIN_PUNCH,
    MOVE_DRAINING_KISS,
    MOVE_DREAM_EATER,
    MOVE_FLORAL_HEALING,
    MOVE_GIGA_DRAIN,
    MOVE_HEAL_ORDER,
    MOVE_HEAL_PULSE,
    MOVE_HEALING_WISH,
    MOVE_HORN_LEECH,
    MOVE_LEECH_LIFE,
    MOVE_LUNAR_DANCE,
    MOVE_MEGA_DRAIN,
    MOVE_MILK_DRINK,
    MOVE_MOONLIGHT,
    MOVE_MORNING_SUN,
    MOVE_OBLIVION_WING,
    MOVE_PARABOLIC_CHARGE,
    MOVE_PURIFY,
    MOVE_RECOVER,
    MOVE_REST,
    MOVE_ROOST,
    MOVE_SHORE_UP,
    MOVE_SLACK_OFF,
    MOVE_SOFT_BOILED,
    MOVE_STRENGTH_SAP,
    MOVE_SWALLOW,
    MOVE_SYNTHESIS,
    MOVE_WISH,
};

const u16 BulletproofMoveList[] =
{
    MOVE_ACID_SPRAY,
    MOVE_AURA_SPHERE,
    MOVE_BARRAGE,
    MOVE_BEAK_BLAST,
    MOVE_BULLET_SEED,
    MOVE_EGG_BOMB,
    MOVE_ELECTRO_BALL,
    MOVE_ENERGY_BALL,
    MOVE_FOCUS_BLAST,
    MOVE_GYRO_BALL,
    MOVE_ICE_BALL,
    MOVE_MAGNET_BOMB,
    MOVE_MIST_BALL,
    MOVE_MUD_BOMB,
    MOVE_OCTAZOOKA,
    MOVE_POLLEN_PUFF,
    MOVE_PYRO_BALL,
    MOVE_ROCK_BLAST,
    MOVE_ROCK_WRECKER,
    MOVE_SEARING_SHOT,
    MOVE_SEED_BOMB,
    MOVE_SHADOW_BALL,
    MOVE_SLUDGE_BOMB,
    MOVE_WEATHER_BALL,
    MOVE_ZAP_CANNON,
};

// List of multi-strike moves
// (https://bulbapedia.bulbagarden.net/wiki/Multi-strike_move)
const u16 MultiHitMovesList[] = {
    // Variable number of strikes
    MOVE_ARM_THRUST,
    MOVE_BARRAGE,
    MOVE_BONE_RUSH,
    MOVE_BULLET_SEED,
    MOVE_COMET_PUNCH,
    MOVE_DOUBLE_SLAP,
    MOVE_FURY_ATTACK,
    MOVE_FURY_SWIPES,
    MOVE_ICICLE_SPEAR,
    MOVE_PIN_MISSILE,
    MOVE_ROCK_BLAST,
    MOVE_SCALE_SHOT,
    MOVE_SPIKE_CANNON,
    MOVE_TAIL_SLAP,
    MOVE_WATER_SHURIKEN,
    // Fixed number of multiple strikes
    MOVE_BONEMERANG,
    MOVE_DOUBLE_HIT,
    MOVE_DOUBLE_IRON_BASH,
    MOVE_DOUBLE_KICK,
    MOVE_DRAGON_DARTS,
    MOVE_DUAL_CHOP,
    MOVE_DUAL_WINGBEAT,
    MOVE_GEAR_GRIND,
    MOVE_SURGING_STRIKES,
    MOVE_TRIPLE_DIVE,
    MOVE_TWIN_BEAM,
    MOVE_TWINEEDLE,
    // Accuracy-dependent multiple strikes
    MOVE_TRIPLE_AXEL,
    MOVE_TRIPLE_KICK,
    MOVE_POPULATION_BOMB,
    // Party-dependent multiple strikes
    MOVE_BEAT_UP,
};

// List of moves that should not hit twice when user has Parental Bond
// (https://bulbapedia.bulbagarden.net/wiki/Parental_Bond_(Ability))
const u16 ParentalBondSingleStrikeMovesList[] = {
    // One-hit knockout moves
    MOVE_FISSURE,
    MOVE_GUILLOTINE,
    MOVE_HORN_DRILL,
    MOVE_SHEER_COLD,
    // No category
    MOVE_FLING,
    MOVE_SELF_DESTRUCT,
    MOVE_EXPLOSION,
    MOVE_FINAL_GAMBIT,
    MOVE_UPROAR,
    MOVE_ROLLOUT,
    MOVE_ICE_BALL,
    MOVE_ENDEAVOR,
    // Moves with a charging turn
    MOVE_BOUNCE,
    MOVE_DIG,
    MOVE_DIVE,
    MOVE_ELECTRO_SHOT,
    MOVE_FLY,
    MOVE_FREEZE_SHOCK,
    MOVE_GEOMANCY,
    MOVE_ICE_BURN,
    MOVE_METEOR_BEAM,
    MOVE_PHANTOM_FORCE,
    MOVE_RAZOR_WIND,
    MOVE_SHADOW_FORCE,
    MOVE_SKULL_BASH,
    MOVE_SKY_ATTACK,
    MOVE_SKY_DROP,
    MOVE_SOLAR_BEAM,
    MOVE_SOLAR_BLADE,
    // Z-Moves
    MOVE_BREAKNECK_BLITZ_PHYSICAL,
    MOVE_BREAKNECK_BLITZ_SPECIAL,
    MOVE_ALL_OUT_PUMMELING_PHYSICAL,
    MOVE_ALL_OUT_PUMMELING_SPECIAL,
    MOVE_SUPERSONIC_SKYSTRIKE_PHYSICAL,
    MOVE_SUPERSONIC_SKYSTRIKE_SPECIAL,
    MOVE_ACID_DOWNPOUR_PHYSICAL,
    MOVE_ACID_DOWNPOUR_SPECIAL,
    MOVE_TECTONIC_RAGE_PHYSICAL,
    MOVE_TECTONIC_RAGE_SPECIAL,
    MOVE_CONTINENTAL_CRUSH_PHYSICAL,
    MOVE_CONTINENTAL_CRUSH_SPECIAL,
    MOVE_SAVAGE_SPIN_OUT_PHYSICAL,
    MOVE_SAVAGE_SPIN_OUT_SPECIAL,
    MOVE_NEVER_ENDING_NIGHTMARE_PHYSICAL,
    MOVE_NEVER_ENDING_NIGHTMARE_SPECIAL,
    MOVE_CORKSCREW_CRASH_PHYSICAL,
    MOVE_CORKSCREW_CRASH_SPECIAL,
    MOVE_INFERNO_OVERDRIVE_PHYSICAL,
    MOVE_INFERNO_OVERDRIVE_SPECIAL,
    MOVE_HYDRO_VORTEX_PHYSICAL,
    MOVE_HYDRO_VORTEX_SPECIAL,
    MOVE_BLOOM_DOOM_PHYSICAL,
    MOVE_BLOOM_DOOM_SPECIAL,
    MOVE_GIGAVOLT_HAVOC_PHYSICAL,
    MOVE_GIGAVOLT_HAVOC_SPECIAL,
    MOVE_SHATTERED_PSYCHE_PHYSICAL,
    MOVE_SHATTERED_PSYCHE_SPECIAL,
    MOVE_SUBZERO_SLAMMER_PHYSICAL,
    MOVE_SUBZERO_SLAMMER_SPECIAL,
    MOVE_DEVASTATING_DRAKE_PHYSICAL,
    MOVE_DEVASTATING_DRAKE_SPECIAL,
    MOVE_BLACK_HOLE_ECLIPSE_PHYSICAL,
    MOVE_BLACK_HOLE_ECLIPSE_SPECIAL,
    MOVE_TWINKLE_TACKLE_PHYSICAL,
    MOVE_TWINKLE_TACKLE_SPECIAL,
    MOVE_CATASTROPIKA,
    MOVE_10_000_000_VOLT_THUNDERBOLT,
    MOVE_STOKED_SPARKSURFER,
    MOVE_EXTREME_EVOBOOST,
    MOVE_PULVERIZING_PANCAKE,
    MOVE_GENESIS_SUPERNOVA,
    MOVE_SINISTER_ARROW_RAID,
    MOVE_MALICIOUS_MOONSAULT,
    MOVE_OCEANIC_OPERETTA,
    MOVE_SPLINTERED_STORMSHARDS,
    MOVE_LETS_SNUGGLE_FOREVER,
    MOVE_CLANGOROUS_SOULBLAZE,
    MOVE_GUARDIAN_OF_ALOLA,
    MOVE_SEARING_SUNRAZE_SMASH,
    MOVE_MENACING_MOONRAZE_MAELSTROM,
    MOVE_LIGHT_THAT_BURNS_THE_SKY,
    MOVE_SOUL_STEALING_7_STAR_STRIKE,
    // Max Moves
    MOVE_MAX_GUARD,
    MOVE_DYNAMAX_CANNON,
    MOVE_MAX_FLARE,
    MOVE_MAX_FLUTTERBY,
    MOVE_MAX_LIGHTNING,
    MOVE_MAX_STRIKE,
    MOVE_MAX_KNUCKLE,
    MOVE_MAX_PHANTASM,
    MOVE_MAX_HAILSTORM,
    MOVE_MAX_OOZE,
    MOVE_MAX_GEYSER,
    MOVE_MAX_AIRSTREAM,
    MOVE_MAX_STARFALL,
    MOVE_MAX_WYRMWIND,
    MOVE_MAX_MINDSTORM,
    MOVE_MAX_ROCKFALL,
    MOVE_MAX_QUAKE,
    MOVE_MAX_DARKNESS,
    MOVE_MAX_OVERGROWTH,
    MOVE_MAX_STEELSPIKE,
    // Special case handled inside effect script for hg-engine
    MOVE_PRESENT,
};

const u16 ZMoveList[] = {
    MOVE_BREAKNECK_BLITZ_PHYSICAL,
    MOVE_BREAKNECK_BLITZ_SPECIAL,
    MOVE_ALL_OUT_PUMMELING_PHYSICAL,
    MOVE_ALL_OUT_PUMMELING_SPECIAL,
    MOVE_SUPERSONIC_SKYSTRIKE_PHYSICAL,
    MOVE_SUPERSONIC_SKYSTRIKE_SPECIAL,
    MOVE_ACID_DOWNPOUR_PHYSICAL,
    MOVE_ACID_DOWNPOUR_SPECIAL,
    MOVE_TECTONIC_RAGE_PHYSICAL,
    MOVE_TECTONIC_RAGE_SPECIAL,
    MOVE_CONTINENTAL_CRUSH_PHYSICAL,
    MOVE_CONTINENTAL_CRUSH_SPECIAL,
    MOVE_SAVAGE_SPIN_OUT_PHYSICAL,
    MOVE_SAVAGE_SPIN_OUT_SPECIAL,
    MOVE_NEVER_ENDING_NIGHTMARE_PHYSICAL,
    MOVE_NEVER_ENDING_NIGHTMARE_SPECIAL,
    MOVE_CORKSCREW_CRASH_PHYSICAL,
    MOVE_CORKSCREW_CRASH_SPECIAL,
    MOVE_INFERNO_OVERDRIVE_PHYSICAL,
    MOVE_INFERNO_OVERDRIVE_SPECIAL,
    MOVE_HYDRO_VORTEX_PHYSICAL,
    MOVE_HYDRO_VORTEX_SPECIAL,
    MOVE_BLOOM_DOOM_PHYSICAL,
    MOVE_BLOOM_DOOM_SPECIAL,
    MOVE_GIGAVOLT_HAVOC_PHYSICAL,
    MOVE_GIGAVOLT_HAVOC_SPECIAL,
    MOVE_SHATTERED_PSYCHE_PHYSICAL,
    MOVE_SHATTERED_PSYCHE_SPECIAL,
    MOVE_SUBZERO_SLAMMER_PHYSICAL,
    MOVE_SUBZERO_SLAMMER_SPECIAL,
    MOVE_DEVASTATING_DRAKE_PHYSICAL,
    MOVE_DEVASTATING_DRAKE_SPECIAL,
    MOVE_BLACK_HOLE_ECLIPSE_PHYSICAL,
    MOVE_BLACK_HOLE_ECLIPSE_SPECIAL,
    MOVE_TWINKLE_TACKLE_PHYSICAL,
    MOVE_TWINKLE_TACKLE_SPECIAL,
    MOVE_CATASTROPIKA,
    MOVE_10_000_000_VOLT_THUNDERBOLT,
    MOVE_STOKED_SPARKSURFER,
    MOVE_EXTREME_EVOBOOST,
    MOVE_PULVERIZING_PANCAKE,
    MOVE_GENESIS_SUPERNOVA,
    MOVE_SINISTER_ARROW_RAID,
    MOVE_MALICIOUS_MOONSAULT,
    MOVE_OCEANIC_OPERETTA,
    MOVE_SPLINTERED_STORMSHARDS,
    MOVE_LETS_SNUGGLE_FOREVER,
    MOVE_CLANGOROUS_SOULBLAZE,
    MOVE_GUARDIAN_OF_ALOLA,
    MOVE_SEARING_SUNRAZE_SMASH,
    MOVE_MENACING_MOONRAZE_MAELSTROM,
    MOVE_LIGHT_THAT_BURNS_THE_SKY,
    MOVE_SOUL_STEALING_7_STAR_STRIKE,
};

const u16 MaxMoveList[] = {
    MOVE_MAX_GUARD,
    MOVE_DYNAMAX_CANNON,
    MOVE_MAX_FLARE,
    MOVE_MAX_FLUTTERBY,
    MOVE_MAX_LIGHTNING,
    MOVE_MAX_STRIKE,
    MOVE_MAX_KNUCKLE,
    MOVE_MAX_PHANTASM,
    MOVE_MAX_HAILSTORM,
    MOVE_MAX_OOZE,
    MOVE_MAX_GEYSER,
    MOVE_MAX_AIRSTREAM,
    MOVE_MAX_STARFALL,
    MOVE_MAX_WYRMWIND,
    MOVE_MAX_MINDSTORM,
    MOVE_MAX_ROCKFALL,
    MOVE_MAX_QUAKE,
    MOVE_MAX_DARKNESS,
    MOVE_MAX_OVERGROWTH,
    MOVE_MAX_STEELSPIKE,
};

const u16 WeightMoveList[] = {
    MOVE_LOW_KICK,
    MOVE_GRASS_KNOT,
    MOVE_AUTOTOMIZE,
    MOVE_HEAVY_SLAM,
    MOVE_SKY_DROP,
    MOVE_HEAT_CRASH,
};

const u16 PunchingMovesTable[] = {
    MOVE_BULLET_PUNCH,
    MOVE_COMET_PUNCH,
    MOVE_DIZZY_PUNCH,
    MOVE_DOUBLE_IRON_BASH,
    MOVE_DRAIN_PUNCH,
    MOVE_DYNAMIC_PUNCH,
    MOVE_FIRE_PUNCH,
    MOVE_FOCUS_PUNCH,
    MOVE_HAMMER_ARM,
    MOVE_HEADLONG_RUSH,
    MOVE_ICE_HAMMER,
    MOVE_ICE_PUNCH,
    MOVE_JET_PUNCH,
    MOVE_MACH_PUNCH,
    MOVE_MEGA_PUNCH,
    MOVE_METEOR_MASH,
    MOVE_PLASMA_FISTS,
    MOVE_POWER_UP_PUNCH,
    MOVE_RAGE_FIST,
    MOVE_SHADOW_PUNCH,
    MOVE_SKY_UPPERCUT,
    MOVE_SURGING_STRIKES,
    MOVE_THUNDER_PUNCH,
    MOVE_WICKED_BLOW,
};

// TODO: Tidy up this
// set sp->waza_status_flag |= MOVE_STATUS_FLAG_MISS if a miss
BOOL CalcAccuracy(void *bw, struct BattleStruct *sp, int attacker, int defender, int move_no)
{
    u16 accuracy;
    s8 temp;
    s8 stat_stage_acc, stat_stage_evasion;
    int hold_effect = HeldItemHoldEffectGet(sp, defender);
    int hold_effect_atk;
    u8 move_type UNUSED; // unused but will be needed
    u8 move_split;
    u16 atk_ability = GetBattlerAbility(sp, attacker);

    if (BattleTypeGet(bw) & BATTLE_TYPE_CATCHING_DEMO)
    {
        return FALSE;
    }

    // should take precedent over a move using an alternate accuracy calc, as this will still be called for those.
    if (GetBattlerAbility(sp, defender) == ABILITY_TELEPATHY // defender has telepathy ability
     && (attacker & 1) == (defender & 1) // attacker and defender are on the same side
     && sp->moveTbl[move_no].power != 0) // move actually damages
    {
        sp->waza_status_flag |= MOVE_STATUS_FLAG_MISS;
        sp->oneTurnFlag[attacker].parental_bond_flag = 0;
        sp->oneTurnFlag[attacker].parental_bond_is_active = FALSE;
        return FALSE;
    }

    if (atk_ability == ABILITY_PRANKSTER // prankster ability
     && (sp->battlemon[defender].type1 == TYPE_DARK || sp->battlemon[defender].type2 == TYPE_DARK) // used on a dark type
     && GetMoveSplit(sp, move_no) == SPLIT_STATUS // move is actually status
     && (attacker & 1) != (defender & 1)) // used on an enemy
    {
        sp->waza_status_flag |= MOVE_STATUS_FLAG_NOT_EFFECTIVE;
        sp->oneTurnFlag[attacker].parental_bond_flag = 0;
        sp->oneTurnFlag[attacker].parental_bond_is_active = FALSE;
        return FALSE;
    }

    int i;

    for (i = 0; i < (s32)NELEMS(PowderMovesList); i++) {
        if (sp->current_move_index == PowderMovesList[i]) {
            if
            (
                (BattlePokemonParamGet(sp, sp->defence_client, BATTLE_MON_DATA_TYPE1, NULL) == TYPE_GRASS) ||
                (BattlePokemonParamGet(sp, sp->defence_client, BATTLE_MON_DATA_TYPE2, NULL) == TYPE_GRASS) ||
                (hold_effect == HOLD_EFFECT_SPORE_POWDER_IMMUNITY)
            )
            {
                sp->waza_status_flag |= MOVE_STATUS_FLAG_NOT_EFFECTIVE;
                sp->oneTurnFlag[attacker].parental_bond_flag = 0;
                sp->oneTurnFlag[attacker].parental_bond_is_active = FALSE;
                return FALSE;
            }
        }
    }

    move_type = GetAdjustedMoveType(sp, attacker, move_no);
    move_split = GetMoveSplit(sp, move_no);

    stat_stage_acc = sp->battlemon[attacker].states[STAT_ACCURACY] - 6;
    stat_stage_evasion = 6 - sp->battlemon[defender].states[STAT_EVASION];

    // if (atk_ability == ABILITY_SIMPLE)
    // {
    //     stat_stage_acc *= 2;
    // }

    // if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_SIMPLE) == TRUE)
    // {
    //     stat_stage_evasion *= 2;
    // }

    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_UNAWARE) == TRUE)
    {
        stat_stage_acc = 0;
    }

    if (atk_ability == ABILITY_UNAWARE || atk_ability == ABILITY_MINDS_EYE || atk_ability == ABILITY_KEEN_EYE || atk_ability == ABILITY_ILLUMINATE)
    {
        stat_stage_evasion = 0;
    }

    if (((sp->battlemon[defender].condition2 & STATUS2_FORESIGHT) || (sp->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_MIRACLE_EYE))
     && (stat_stage_evasion < 0))
    {
        stat_stage_evasion = 0;
    }

    temp = 6 + stat_stage_evasion + stat_stage_acc;

    if (temp < 0)
    {
        temp = 0;
    }
    if (temp > 12)
    {
        temp = 12;
    }

    accuracy = sp->moveTbl[move_no].accuracy;

    if (accuracy == 0)
    {
        return FALSE;
    }

    if (sp->server_status_flag & SERVER_STATUS_FLAG_x20)
    {
        return FALSE;
    }

    if (sp->server_status_flag & SERVER_STATUS_FLAG_OTHER_ACCURACY_CALC)
    {
        return FALSE;
    }

    if ((CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0)
     && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0))
    {
        if ((sp->field_condition & WEATHER_SUNNY_ANY)
         && ((sp->moveTbl[move_no].effect == MOVE_EFFECT_THUNDER) // thunder sucks in the sun
          || (sp->moveTbl[move_no].effect == MOVE_EFFECT_HURRICANE))) // so does hurricane
        {
            accuracy = 50;
        }
    }

    accuracy *= sAccStatChanges[temp].numerator;
    accuracy /= sAccStatChanges[temp].denominator;

    if (atk_ability == ABILITY_COMPOUND_EYES)
    {
        accuracy = accuracy * 130 / 100;
    }

    // handle wonder skin
    if ((MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_WONDER_SKIN) == TRUE) && (GetMoveSplit(sp, move_no) == SPLIT_STATUS))
    {
        accuracy = accuracy * 50 / 100;
    }

    // handle victory star
    if ((GetBattlerAbility(sp, BATTLER_ALLY(attacker)) == ABILITY_VICTORY_STAR && sp->battlemon[BATTLER_ALLY(attacker)].hp != 0)
     || (atk_ability == ABILITY_VICTORY_STAR))
    {
        accuracy = accuracy * 110 / 100;
    }

    if ((CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0)
     && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0))
    {
        if (sp->field_condition & WEATHER_SANDSTORM_ANY){
            if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_SAND_VEIL) == TRUE)
            {
                accuracy = accuracy * 80 / 100;
            }
        }
        if (sp->field_condition & (WEATHER_HAIL_ANY | WEATHER_SNOW_ANY))
        {
            if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_SNOW_CLOAK) == TRUE)
            {
                accuracy = accuracy * 80 / 100;
            }
        }
        if (sp->field_condition & FIELD_STATUS_FOG)
        {
            accuracy = accuracy * 6 / 10;
        }
    }

    if ((atk_ability == ABILITY_HUSTLE) && (move_split == SPLIT_PHYSICAL))
    {
        accuracy = accuracy * 80 / 100;
    }

    if ((MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_TANGLED_FEET) == TRUE)
     && (sp->battlemon[defender].condition2 & STATUS2_CONFUSION))
    {
        accuracy = accuracy * 50 / 100;
    }

    hold_effect = HeldItemHoldEffectGet(sp, defender);
    hold_effect_atk = HeldItemAtkGet(sp, defender, 0);

    if (hold_effect == HOLD_EFFECT_ACC_REDUCE)
    {
        accuracy = accuracy * (100 - hold_effect_atk) / 100;
    }

    hold_effect = HeldItemHoldEffectGet(sp, attacker);
    hold_effect_atk = HeldItemAtkGet(sp, attacker, 0);

    if (hold_effect == HOLD_EFFECT_ACCURACY_UP)
    {
        accuracy = accuracy * (100 + hold_effect_atk) / 100;
    }

    if ((hold_effect == HOLD_EFFECT_ACCURACY_UP_SLOWER) && (IsMovingAfterClient(sp, defender) == TRUE))
    {
        accuracy = accuracy * (100 + hold_effect_atk) / 100;
    }

    if (sp->boostedAccuracy)
    {
        accuracy = accuracy * 120 / 100;
    }

    if (sp->field_condition & FIELD_STATUS_GRAVITY)
    {
        accuracy = accuracy * 10 / 6;
    }

    // toxic when used by a poison type
    if (move_no == MOVE_TOXIC
     && (BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_TYPE1, NULL) == TYPE_POISON
      || BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_TYPE2, NULL) == TYPE_POISON))
    {
        return FALSE;
    }

    if (((BattleRand(bw) % 100) + 1) > accuracy)
    {
        sp->waza_status_flag |= MOVE_STATUS_FLAG_MISS;
        sp->oneTurnFlag[attacker].parental_bond_flag = 0;
        sp->oneTurnFlag[attacker].parental_bond_is_active = FALSE;
    }

    return FALSE;
}


const u8 DecreaseSpeedHoldEffects[] =
{
    HOLD_EFFECT_EVS_UP_SPEED_DOWN,
    HOLD_EFFECT_SPEED_DOWN_GROUNDED,
    HOLD_EFFECT_LVLUP_HP_EV_UP,
    HOLD_EFFECT_LVLUP_ATK_EV_UP,
    HOLD_EFFECT_LVLUP_DEF_EV_UP,
    HOLD_EFFECT_LVLUP_SPEED_EV_UP,
    HOLD_EFFECT_LVLUP_SPATK_EV_UP,
    HOLD_EFFECT_LVLUP_SPDEF_EV_UP,
};

// return 0 if client1 moves first, 1 if client2 moves first, 2 if random roll between the two.
u8 LONG_CALL CalcSpeed(void *bw, struct BattleStruct *sp, int client1, int client2, int flag)
{
    u8 ret = 0;
    u32 speed1, speed2;
    //u16 move1 = 0, move2 = 0;
    u8 hold_effect1;
    //u8 hold_atk1;
    u8 hold_effect2;
    //u8 hold_atk2;
    s8 priority1 = sp->clientPriority[client1];
    s8 priority2 = sp->clientPriority[client2];
    u8 quick_claw1 = sp->battlemon[client1].moveeffect.quickClawFlag || sp->battlemon[client1].moveeffect.custapBerryFlag;
    u8 quick_claw2 = sp->battlemon[client2].moveeffect.quickClawFlag || sp->battlemon[client2].moveeffect.custapBerryFlag;
    u8 move_last1 = 0, move_last2 = 0;
    //int command1;
    //int command2;
    //int move_pos1;
    //int move_pos2;
    int ability1;
    int ability2;
    int stat_stage_spd1;
    int stat_stage_spd2;
    u32 i;

    // if one mon is fainted and the other isn't, then the alive one obviously goes first
    if ((sp->battlemon[client1].hp == 0) && (sp->battlemon[client2].hp))
    {
        return 1;
    }
    if ((sp->battlemon[client1].hp) && (sp->battlemon[client2].hp == 0))
    {
        return 0;
    }

    // Potential After You or Quash present
    if (sp->oneTurnFlag[client1].force_execution_order_flag != sp->oneTurnFlag[client2].force_execution_order_flag) {
        switch (sp->oneTurnFlag[client1].force_execution_order_flag) {
            case EXECUTION_ORDER_AFTER_YOU:
                return 0;
                break;
            case EXECUTION_ORDER_QUASH:
                return 1;
                break;
            default:
                break;
        }
        switch (sp->oneTurnFlag[client2].force_execution_order_flag) {
            case EXECUTION_ORDER_AFTER_YOU:
                return 1;
                break;
            case EXECUTION_ORDER_QUASH:
                return 0;
                break;
            default:
                break;
        }
    }

    ability1 = GetBattlerAbility(sp, client1);
    ability2 = GetBattlerAbility(sp, client2);

    hold_effect1 = HeldItemHoldEffectGet(sp, client1);
    //hold_atk1 = HeldItemAtkGet(sp, client1, 0);
    hold_effect2 = HeldItemHoldEffectGet(sp, client2);
    //hold_atk2 = HeldItemAtkGet(sp, client2, 0);

    stat_stage_spd1 = sp->battlemon[client1].states[STAT_SPEED];
    stat_stage_spd2 = sp->battlemon[client2].states[STAT_SPEED];

    // if (GetBattlerAbility(sp, client1) == ABILITY_SIMPLE)
    // {
    //     stat_stage_spd1 = 6 + ((stat_stage_spd1 - 6) * 2);
    //     if (stat_stage_spd1 > 12)
    //     {
    //         stat_stage_spd1 = 12;
    //     }
    //     if (stat_stage_spd1 < 0)
    //     {
    //         stat_stage_spd1 = 0;
    //     }
    // }
    // if (GetBattlerAbility(sp, client2) == ABILITY_SIMPLE)
    // {
    //     stat_stage_spd2 = 6 + ((stat_stage_spd2 - 6) * 2);
    //     if (stat_stage_spd2 > 12)
    //     {
    //         stat_stage_spd2 = 12;
    //     }
    //     if (stat_stage_spd2 < 0)
    //     {
    //         stat_stage_spd2 = 0;
    //     }
    // }

    speed1 = sp->battlemon[client1].speed * StatBoostModifiers[stat_stage_spd1][0] / StatBoostModifiers[stat_stage_spd1][1];
    speed2 = sp->battlemon[client2].speed * StatBoostModifiers[stat_stage_spd2][0] / StatBoostModifiers[stat_stage_spd2][1];

    if ((CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE)==0)
     && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK)==0))
    {
        if (((ability1 == ABILITY_SWIFT_SWIM) && (sp->field_condition & WEATHER_RAIN_ANY))
         || ((ability1 == ABILITY_CHLOROPHYLL) && (sp->field_condition & WEATHER_SUNNY_ANY))
         || ((ability1 == ABILITY_SAND_RUSH) && (sp->field_condition & WEATHER_SANDSTORM_ANY))
         || ((ability1 == ABILITY_SLUSH_RUSH) && (sp->field_condition & (WEATHER_HAIL_ANY | WEATHER_SNOW_ANY))))
        {
            speed1 *= 2;
        }
        if (((ability2 == ABILITY_SWIFT_SWIM) && (sp->field_condition & WEATHER_RAIN_ANY))
         || ((ability2 == ABILITY_CHLOROPHYLL) && (sp->field_condition & WEATHER_SUNNY_ANY))
         || ((ability2 == ABILITY_SAND_RUSH) && (sp->field_condition & WEATHER_SANDSTORM_ANY))
         || ((ability2 == ABILITY_SLUSH_RUSH) && (sp->field_condition & (WEATHER_HAIL_ANY | WEATHER_SNOW_ANY))))
        {
            speed2 *= 2;
        }
    }

    for (i = 0; i < NELEMS(DecreaseSpeedHoldEffects); i++)
    {
        if (BattleItemDataGet(sp, sp->battlemon[client1].item, 1) == DecreaseSpeedHoldEffects[i]) {
            if (!(GetBattlerAbility(sp, client1) == ABILITY_KLUTZ && DecreaseSpeedHoldEffects[i] == HOLD_EFFECT_SPEED_DOWN_GROUNDED)) {
            speed1 /= 2;
            break;
            }
        }
    }

    if ((ability1 == ABILITY_SURGE_SURFER) && (sp->terrainOverlay.type == ELECTRIC_TERRAIN && sp->terrainOverlay.numberOfTurnsLeft > 0))
    {
        speed1 *= 2;
    }

    if ((ability2 == ABILITY_SURGE_SURFER) && (sp->terrainOverlay.type == ELECTRIC_TERRAIN && sp->terrainOverlay.numberOfTurnsLeft > 0))
    {
        speed2 *= 2;
    }

    if (hold_effect1 == HOLD_EFFECT_CHOICE_SPEED)
    {
        speed1 = speed1 * 15 / 10;
    }

    if ((hold_effect1 == HOLD_EFFECT_DITTO_SPEED_UP) && (sp->battlemon[client1].species == SPECIES_DITTO))
    {
        speed1 *= 2;
    }

    if ((ability1 == ABILITY_QUICK_FEET) && (sp->battlemon[client1].condition & STATUS_ANY_PERSISTENT))
    {
        speed1 = speed1 * 15 / 10;
    }
    else
    {
        if (sp->battlemon[client1].condition & STATUS_PARALYSIS)
        {
            speed1 /= 2; // gen 7 on only halves speed for paralysis
        }
    }

    if ((ability1 == ABILITY_SLOW_START)
     && ((sp->total_turn - sp->battlemon[client1].moveeffect.slowStartTurns) < 5))
    {
        speed1 /= 2;
    }

    if ((ability1 == ABILITY_UNBURDEN)
     && (sp->battlemon[client1].moveeffect.knockOffFlag)
     && (sp->battlemon[client1].item == 0))
    {
        speed1 *= 2;
    }

    if (sp->tailwindCount[IsClientEnemy(bw, client1)]) // new tailwind handling
    {
        speed1 *= 2;
    }

    if (hold_effect1 == HOLD_EFFECT_PRIORITY_DOWN)
    {
        move_last1 = 1;
    }

    for (i = 0; i < NELEMS(DecreaseSpeedHoldEffects); i++)
    {
        if (BattleItemDataGet(sp, sp->battlemon[client2].item, 1) == DecreaseSpeedHoldEffects[i]) {
            if (!(GetBattlerAbility(sp, client2) == ABILITY_KLUTZ && DecreaseSpeedHoldEffects[i] == HOLD_EFFECT_SPEED_DOWN_GROUNDED)) {
                speed2 /= 2;
            break;
            }
        }
    }

    if (hold_effect2 == HOLD_EFFECT_CHOICE_SPEED)
    {
        speed2 = speed2 * 15 / 10;
    }

    if ((hold_effect2 == HOLD_EFFECT_DITTO_SPEED_UP) && (sp->battlemon[client2].species == SPECIES_DITTO))
    {
        speed2 *= 2;
    }

    if ((ability2 == ABILITY_QUICK_FEET) && (sp->battlemon[client2].condition & STATUS_ANY_PERSISTENT))
    {
        speed2 = speed2 * 15 / 10;
    }
    else
    {
        if (sp->battlemon[client2].condition & STATUS_PARALYSIS)
        {
            speed2 /= 2; // gen 7 on only halves speed for paralysis
        }
    }

    if ((ability2 == ABILITY_SLOW_START)
     && ((sp->total_turn - sp->battlemon[client2].moveeffect.slowStartTurns) < 5))
    {
        speed2 /= 2;
    }

    if ((ability2 == ABILITY_UNBURDEN)
     && (sp->battlemon[client2].moveeffect.knockOffFlag)
     && (sp->battlemon[client2].item == 0))
    {
        speed2 *= 2;
    }

    if (sp->tailwindCount[IsClientEnemy(bw, client2)]) // new tailwind handling
    {
        speed2 *= 2;
    }

    if (hold_effect2 == HOLD_EFFECT_PRIORITY_DOWN)
    {
        move_last2 = 1;
    }

    sp->effectiveSpeed[client1]=speed1;
    sp->effectiveSpeed[client2]=speed2;

    // if (flag == 0)
    // {
    //     command1 = sp->playerActions[client1][3];
    //     command2 = sp->playerActions[client2][3];
    //     move_pos1 = sp->waza_no_pos[client1];
    //     move_pos2 = sp->waza_no_pos[client2];
    //
    //     if(command1 == SELECT_FIGHT_COMMAND)
    //     {
    //         if(sp->oneTurnFlag[client1].struggle_flag)
    //         {
    //             move1 = MOVE_STRUGGLE;
    //         }
    //         else
    //         {
    //             move1 = BattlePokemonParamGet(sp, client1, BATTLE_MON_DATA_MOVE_1 + move_pos1, NULL);
    //         }
    //     }
    //     if (command2 == SELECT_FIGHT_COMMAND)
    //     {
    //         if (sp->oneTurnFlag[client2].struggle_flag)
    //         {
    //             move2 = MOVE_STRUGGLE;
    //         }
    //         else
    //         {
    //             move2 = BattlePokemonParamGet(sp, client2, BATTLE_MON_DATA_MOVE_1 + move_pos2, NULL);
    //         }
    //     }
    // }

    if (sp->field_condition & FIELD_STATUS_TRICK_ROOM) {
        speed1 = (10000 - speed1) % 8192;
        speed2 = (10000 - speed2) % 8192;
    }

    if (flag & CALCSPEED_FLAG_NO_PRIORITY)
    {
        priority1 = 0;
        priority2 = 0;
    }

    if (priority1 == priority2)
    {
        if ((quick_claw1) && (quick_claw2)) // both mons quick claws activates/items that put them first
        {
            if (speed1 < speed2)
            {
                ret = 1; // client 2 goes
            }
            else if ((speed1 == speed2) && (BattleRand(bw) & 1))
            {
                ret = 2; // random roll
            }
        }
        else if ((quick_claw1 == 0) && (quick_claw2)) // client2 quick claw activate
        {
            ret = 1;
        }
        else if ((quick_claw1) && (quick_claw2 == 0)) // client1 quick claw activate
        {
            ret = 0;
        }
        else if ((move_last1) && (move_last2)) // both clients have lagging tail
        {
            if (speed1 > speed2) // if client1 is faster with lagging tail, it moves last
            {
                ret = 1; // client 2 moves first
            }
            else if ((speed1 == speed2) && (BattleRand(bw) & 1)) // random roll
            {
                ret = 2;
            }
        }
        else if ((move_last1) && (move_last2 == 0)) // client1 has lagging tail
        {
            ret = 1;
        }
        else if ((move_last1==0) && (move_last2)) // client2 has lagging tail
        {
            ret = 0;
        }
        else if ((ability1 == ABILITY_STALL) && (ability2 == ABILITY_STALL))
        {
            if (speed1 > speed2)
            {
                ret = 1;
            }
            else if ((speed1 == speed2) && (BattleRand(bw) & 1))
            {
                ret = 2;
            }
        }
        else if ((ability1 == ABILITY_STALL) && (ability2 != ABILITY_STALL))
        {
            ret = 1;
        }
        else if ((ability1 != ABILITY_STALL) && (ability2 == ABILITY_STALL))
        {
            ret = 0;
        }
        else
        {
            if (speed1 < speed2)
            {
                ret = 1;
            }
            if ((speed1 == speed2) && (BattleRand(bw) & 1))
            {
                ret = 2;
            }
        }
    }
    else if (priority1 < priority2)
    {
        ret = 1;
    }

    return ret;
}

/**
 *  @brief Sorts clients' execution order factoring in who has already performed their action
 *  @param bw battle work structure; void * because we haven't defined the battle work structure. Apparently we have but we don't use it here so
 *  @param sp global battle structure
 *  @param sortTurnOrder whether to sort `turn_order` or not
 */
void LONG_CALL DynamicSortClientExecutionOrder(void *bw, struct BattleStruct *sp, BOOL sortTurnOrder) {
    int maxBattlers;
    int i, j;
    int temp1, temp2;
    int currentAttackerId = sp->executionIndex;

    maxBattlers = BattleWorkClientSetMaxGet(bw);

    // for (i = 0; i < maxBattlers; i++) {
    //     if (sp->attack_client == sp->executionOrder[i]) {
    //         currentAttackerId = i;
    //     }
    // }

    // u8 buf[64];
    // sprintf(buf, "Current attacker: %d\n", sp->attack_client);
    // debugsyscall(buf);
    // sprintf(buf, "\tBefore turnOrder: ");
    // debugsyscall(buf);

    // for (i = 0; i < maxBattlers; i++) {
    //     sprintf(buf, "%d ", sp->executionOrder[i]);
    //     debugsyscall(buf);
    // }

    // sprintf(buf, "\n\n");
    // debugsyscall(buf);

    for (i = currentAttackerId + 1; i < maxBattlers - 1; i++) {
        // sprintf(buf, "i: %d\n", i);
        // debugsyscall(buf);
        for (j = i + 1; j < maxBattlers; j++) {
            // sprintf(buf, "j: %d\n", j);
            // debugsyscall(buf);
            temp1 = sp->executionOrder[i];
            temp2 = sp->executionOrder[j];

            u32 command1 = sp->playerActions[temp1][3];
            u32 command2 = sp->playerActions[temp2][3];

            // sprintf(buf, "temp1: %d\ntemp2: %d\n", temp1, temp2);
            // debugsyscall(buf);

            u8 flag;

            if (command1 == command2) {
                if (command1 == SELECT_FIGHT_COMMAND) {
                    flag = 0;
                } else {
                    flag = 1;
                }
                // sprintf(buf, "Comparing client %d and %d\n", temp1, temp2);
                // debugsyscall(buf);
                if (CalcSpeed(bw, sp, temp1, temp2, flag)) {
                    // sprintf(buf, "Swapping %d and %d\n", temp1, temp2);
                    // debugsyscall(buf);
                    sp->executionOrder[i] = temp2;
                    sp->executionOrder[j] = temp1;
                }
            }
        }
    }

    if (sortTurnOrder) {
        // also sort turnOrder, i.e. weather application + turn end things
        for (i = 0; i < maxBattlers - 1; i++) {
            for (j = i + 1; j < maxBattlers; j++) {
                temp1 = sp->turnOrder[i];
                temp2 = sp->turnOrder[j];

                if (CalcSpeed(bw, sp, temp1, temp2, CALCSPEED_FLAG_NO_PRIORITY)) {
                    sp->turnOrder[i] = temp2;
                    sp->turnOrder[j] = temp1;
                }
            }
        }
    }

    // sprintf(buf, "\tAfter turnOrder: ");
    // debugsyscall(buf);

    // for (i = 0; i < maxBattlers; i++) {
    //     sprintf(buf, "%d ", sp->executionOrder[i]);
    //     debugsyscall(buf);
    // }

    // sprintf(buf, "\n\n");
    // debugsyscall(buf);
}

void LONG_CALL CalcPriorityAndQuickClawCustapBerry(void *bsys, struct BattleStruct *ctx) {
    int move = 0;
    int priority = 0;
    int command;
    int move_pos;
    u32 i;
    int hold_effect;
    int hold_atk;

    int maxBattlers = BattleWorkClientSetMaxGet(bsys);

    for (int client = 0; client < maxBattlers; client++) {

        command = ctx->playerActions[client][3];
        move_pos = ctx->waza_no_pos[client];

        if (command == SELECT_FIGHT_COMMAND) {
            if (ctx->oneTurnFlag[client].struggle_flag) {
                move = MOVE_STRUGGLE;
            } else {
                move = BattlePokemonParamGet(ctx, client, BATTLE_MON_DATA_MOVE_1 + move_pos, NULL);
            }
        }
        priority = ctx->moveTbl[move].priority;

        // Handle Grassy Glide
        if (move == MOVE_GRASSY_GLIDE && ctx->terrainOverlay.type == GRASSY_TERRAIN) {
            priority++;
        }

        // Handle Prankster
        if (GetBattlerAbility(ctx, client) == ABILITY_PRANKSTER && GetMoveSplit(ctx, move) == SPLIT_STATUS) {
            priority++;
        }

        // Handle Gale Wings
        if (
            GetBattlerAbility(ctx, client) == ABILITY_GALE_WINGS && ctx->moveTbl[move].type == TYPE_FLYING && ctx->battlemon[client].hp == (s32)ctx->battlemon[client].maxhp) {
            priority++;
        }

        // handle Triage
        if (GetBattlerAbility(ctx, client) == ABILITY_TRIAGE) {
            for (i = 0; i < NELEMS(TriageMovesList); i++) {
                if (TriageMovesList[i] == move) {
                    priority = priority + 3;
                    break;
                }
            }
        }

        hold_effect = HeldItemHoldEffectGet(ctx, client);
        hold_atk = HeldItemAtkGet(ctx, client, 0);

        if (hold_effect == HOLD_EFFECT_SOMETIMES_PRIORITY) {
            if ((ctx->agi_rand[client] % (100 / hold_atk)) == 0) {
                ctx->battlemon[client].moveeffect.quickClawFlag = 1;
            }
        }

        if (hold_effect == HOLD_EFFECT_PINCH_PRIORITY) {
            if (GetBattlerAbility(ctx, client) == ABILITY_GLUTTONY) {
                hold_atk /= 2;
            }
            if (ctx->battlemon[client].hp <= (s32)(ctx->battlemon[client].maxhp / hold_atk)) {
                ctx->battlemon[client].moveeffect.custapBerryFlag = 1;
            }
        }

        ctx->clientPriority[client] = priority;
    }
}

const u8 CriticalRateTable[] =
{
     24,
     8,
     2,
     1,
     1
};

// calculates the critical hit multiplier
int CalcCritical(void *bw, struct BattleStruct *sp, int attacker, int defender, int critical_count, u32 side_condition)
{
    u16 temp;
    u16 item;
    int hold_effect;
    u16 species;
    u32 defender_condition;
    u32 condition2;
    u32 move_effect;
    int multiplier = 1;
    int ability;

    item = GetBattleMonItem(sp, attacker);
    hold_effect = BattleItemDataGet(sp, item, 1);

    species = sp->battlemon[attacker].species;
    defender_condition = sp->battlemon[defender].condition;
    condition2 = sp->battlemon[attacker].condition2;
    move_effect = sp->battlemon[defender].effect_of_moves;
    ability = sp->battlemon[attacker].ability;

    temp = (((condition2 & STATUS2_FOCUS_ENERGY) != 0) * 2) + (hold_effect == HOLD_EFFECT_CRITRATE_UP) + critical_count + (ability == ABILITY_SUPER_LUCK)
         + (2 * ((hold_effect == HOLD_EFFECT_CHANSEY_CRITRATE_UP) && (species == SPECIES_CHANSEY)))
         + (2 * ((hold_effect == HOLD_EFFECT_FARFETCHD_CRITRATE_UP) && (species == SPECIES_FARFETCHD)));

    if (temp > 4)
    {
        temp = 4;
    }

    if
    (
        BattleRand(bw) % CriticalRateTable[temp] == 0
        || (ability == ABILITY_MERCILESS && (defender_condition & STATUS_POISON_ALL))
        || (sp->moveTbl[sp->current_move_index].effect == MOVE_EFFECT_ALWAYS_CRITICAL)
        || (sp->moveTbl[sp->current_move_index].effect == MOVE_EFFECT_HIT_THREE_TIMES_ALWAYS_CRITICAL)
    )
    {
        if ((MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_BATTLE_ARMOR) == FALSE)
         && (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_SHELL_ARMOR) == FALSE)
         && ((side_condition & SIDE_STATUS_LUCKY_CHANT) == 0)
         && ((move_effect & MOVE_EFFECT_NO_CRITICAL_HITS) == 0))
        {
            multiplier = 2;
        }
    }

    if ((multiplier == 2) && (GetBattlerAbility(sp, attacker) == ABILITY_SNIPER))
    {
        multiplier = 3;
    }

    if (multiplier > 1) // log critical hits for current pokemon
    {
        sp->battlemon[attacker].critical_hits++;
        if (sp->battlemon[attacker].critical_hits == 3)
        {
            SET_MON_CRITICAL_HIT_EVOLUTION_BIT(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, attacker), sp->sel_mons_no[attacker]));
        }
    }

    return multiplier;
}


void ServerHPCalc(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    u32 ovyId, offset;

    void (*internalFunc)(struct BattleSystem *bsys, struct BattleStruct *ctx);

    ovyId = OVERLAY_SERVERHPCALC;
    offset = 0x023C0400 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (void (*)(struct BattleSystem *bsys, struct BattleStruct *ctx))(offset);
    internalFunc(bsys, ctx);
    UnloadOverlayByID(ovyId);
}


u16 gf_p_rand(const u16 denominator)
{
    if (denominator <= 1)
    {
        return 0;
    }
    else
    {
        u16 per;
        u16 val;
        per = (0xffff / denominator) + 1;
        val = gf_rand() / per;
        return val;
    }
}

// TODO: Refactor this function
int LONG_CALL GetTypeEffectiveness(struct BattleSystem *bw, struct BattleStruct *sp, int attack_client, int defence_client, int move_type) {
    int i = 0;
    u8 attacker_type_1 UNUSED = BattlePokemonParamGet(sp, attack_client, BATTLE_MON_DATA_TYPE1, NULL);
    u8 attacker_type_2 UNUSED = BattlePokemonParamGet(sp, attack_client, BATTLE_MON_DATA_TYPE2, NULL);
    u8 defender_type_1 = BattlePokemonParamGet(sp, defence_client, BATTLE_MON_DATA_TYPE1, NULL);
    u8 defender_type_2 = BattlePokemonParamGet(sp, defence_client, BATTLE_MON_DATA_TYPE2, NULL);

    u32 type1Effectiveness = 0;
    u32 type2Effectiveness = 0;

    while (TypeEffectivenessTable[i][0] != TYPE_ENDTABLE) {
        if (TypeEffectivenessTable[i][0] == TYPE_FORESIGHT)  // handle foresight
        {
            if ((sp->battlemon[defence_client].condition2 & STATUS2_FORESIGHT) || (GetBattlerAbility(sp, attack_client) == ABILITY_SCRAPPY) || (GetBattlerAbility(sp, attack_client) == ABILITY_MINDS_EYE)) {
                break;
            } else {
                i++;
                continue;
            }
        }
        if (TypeEffectivenessTable[i][0] == move_type) {
            if (TypeEffectivenessTable[i][1] == defender_type_1) {
                if (ShouldUseNormalTypeEffCalc(sp, attack_client, defence_client, i) == TRUE && !(!CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) && !CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) && sp->field_condition & WEATHER_STRONG_WINDS && (TypeEffectivenessTable[i][2] == 20) && defender_type_1 == TYPE_FLYING)) {
                    type1Effectiveness = TypeEffectivenessTable[i][2];
                }
            }
            if ((TypeEffectivenessTable[i][1] == defender_type_2) && (defender_type_1 != defender_type_2)) {
                if (ShouldUseNormalTypeEffCalc(sp, attack_client, defence_client, i) == TRUE && !(!CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) && !CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) && sp->field_condition & WEATHER_STRONG_WINDS && (TypeEffectivenessTable[i][2] == 20) && defender_type_2 == TYPE_FLYING)) {
                    type2Effectiveness = TypeEffectivenessTable[i][2];
                }
            }
            // TODO: Handle type3, Tera Type
        }
        i++;
    }

    // TODO: Refactor!!!
    if (type1Effectiveness == TYPE_MUL_NO_EFFECT || type2Effectiveness == TYPE_MUL_NO_EFFECT) {
        return TYPE_MUL_NO_EFFECT;
    }
    if ((type1Effectiveness == TYPE_MUL_SUPER_EFFECTIVE && type2Effectiveness == TYPE_MUL_NOT_EFFECTIVE)
    || (type2Effectiveness == TYPE_MUL_SUPER_EFFECTIVE && type1Effectiveness == TYPE_MUL_NOT_EFFECTIVE)) {
        return TYPE_MUL_NORMAL;
    }
    if (type1Effectiveness == TYPE_MUL_NORMAL) {
        return type2Effectiveness;
    }
    if (type2Effectiveness == TYPE_MUL_NORMAL) {
        return type1Effectiveness;
    }
    return TYPE_MUL_NO_EFFECT;
}

/**
 *  @brief set move status effects for super effective and calculate modified damage
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param move_no move index
 *  @param move_type move type
 *  @param attack_client attacker
 *  @param defence_client defender
 *  @param damage current damage
 *  @param flag move status flags to mess around with
 *  @return modified damage
 */
int LONG_CALL ServerDoTypeCalcMod(void *bw UNUSED, struct BattleStruct *sp, int move_no, int move_type, int attack_client, int defence_client, int damage, u32 *flag)
{
    int i;
    int modifier;
    u32 base_power;
    u8  eqp_a;
    u8  eqp_d UNUSED;
    u8  atk_a;
    u8  atk_d UNUSED; // not currently used but will be

    modifier = 1;

    if (move_no == MOVE_STRUGGLE)
        return damage;

    eqp_a = HeldItemHoldEffectGet(sp, attack_client);
    atk_a = HeldItemAtkGet(sp, attack_client, ATK_CHECK_NORMAL);
    eqp_d = HeldItemHoldEffectGet(sp, defence_client);
    atk_d = HeldItemAtkGet(sp, defence_client, ATK_CHECK_NORMAL);

    move_type = GetAdjustedMoveType(sp, attack_client, move_no); // new normalize checks
    base_power = sp->moveTbl[move_no].power;

    u8 attacker_type_1 = BattlePokemonParamGet(sp, attack_client, BATTLE_MON_DATA_TYPE1, NULL);
    u8 attacker_type_2 = BattlePokemonParamGet(sp, attack_client, BATTLE_MON_DATA_TYPE2, NULL);
    u8 defender_type_1 = BattlePokemonParamGet(sp, defence_client, BATTLE_MON_DATA_TYPE1, NULL);
    u8 defender_type_2 = BattlePokemonParamGet(sp, defence_client, BATTLE_MON_DATA_TYPE2, NULL);

    if (((sp->server_status_flag & SERVER_STATUS_FLAG_TYPE_FLAT) == 0) && ((attacker_type_1 == move_type) || (attacker_type_2 == move_type)))
    {
        if (GetBattlerAbility(sp,attack_client) == ABILITY_ADAPTABILITY)
        {
            damage *= 2;
        }
        else
        {
            damage = damage * 15 / 10;
        }
    }

    // if ((MoldBreakerAbilityCheck(sp, attack_client, defence_client, ABILITY_LEVITATE) == TRUE)
    //  && (move_type == TYPE_GROUND)
    //  && (eqp_d != HOLD_EFFECT_SPEED_DOWN_GROUNDED)) // iron ball halves speed and grounds
    // {
    //     flag[0] |= MOVE_STATUS_FLAG_LEVITATE_MISS;
    //     sp->oneTurnFlag[attack_client].parental_bond_flag = 0;
    //     sp->oneTurnFlag[attack_client].parental_bond_is_active = FALSE;
    // }
    // else if ((sp->battlemon[defence_client].moveeffect.magnetRiseTurns)
    //       && ((sp->battlemon[defence_client].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) == 0)
    //       && ((sp->field_condition & FIELD_STATUS_GRAVITY) == 0)
    //       && (move_type == TYPE_GROUND)
    //       && (eqp_d != HOLD_EFFECT_SPEED_DOWN_GROUNDED))
    // {
    //     flag[0] |= MOVE_STATUS_FLAG_MAGNET_RISE_MISS;
    //     sp->oneTurnFlag[attack_client].parental_bond_flag = 0;
    //     sp->oneTurnFlag[attack_client].parental_bond_is_active = FALSE;
    // }
    // else if ((eqp_d == HOLD_EFFECT_UNGROUND_DESTROYED_ON_HIT) // has air balloon
    //       && ((sp->battlemon[defence_client].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) == 0)
    //       && ((sp->field_condition & FIELD_STATUS_GRAVITY) == 0)
    //       && (move_type == TYPE_GROUND)
    //       && (eqp_d != HOLD_EFFECT_SPEED_DOWN_GROUNDED))
    // {
    //     flag[0] |= MOVE_STATUS_FLAG_MAGNET_RISE_MISS; // reuse Magnet Rise message since they are the same
    //     sp->oneTurnFlag[attack_client].parental_bond_flag = 0;
    //     sp->oneTurnFlag[attack_client].parental_bond_is_active = FALSE;
    // }
    // else if ((move_no == MOVE_SHEER_COLD) && (defender_type_1 == TYPE_ICE || defender_type_2 == TYPE_ICE))
    // {
    //     flag[0] |= MOVE_STATUS_FLAG_NOT_EFFECTIVE;
    // }
    // else
    {
        i = 0;
        while (TypeEffectivenessTable[i][0] != TYPE_ENDTABLE)
        {
            if (TypeEffectivenessTable[i][0] == TYPE_FORESIGHT) // handle foresight
            {
                if ((sp->battlemon[defence_client].condition2 & STATUS2_FORESIGHT) || (GetBattlerAbility(sp, attack_client) == ABILITY_SCRAPPY) || (GetBattlerAbility(sp, attack_client) == ABILITY_MINDS_EYE))
                {
                    break;
                }
                else
                {
                    i++;
                    continue;
                }
            }
            if (TypeEffectivenessTable[i][0] == move_type)
            {
                if (TypeEffectivenessTable[i][1] == defender_type_1)
                {
                    if (ShouldUseNormalTypeEffCalc(sp, attack_client, defence_client, i) == TRUE
                    && !(!CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE)
                        && !CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK)
                        && sp->field_condition & WEATHER_STRONG_WINDS
                        && (TypeEffectivenessTable[i][2] == 20)
                        && defender_type_1 == TYPE_FLYING))
                    {
                        damage = TypeCheckCalc(sp, attack_client, TypeEffectivenessTable[i][2], damage, base_power, flag);
                        if (TypeEffectivenessTable[i][2] == 20) // seems to be useless, modifier isn't used elsewhere
                        {
                            modifier *= 2;
                        }
                    }
                }
                if ((TypeEffectivenessTable[i][1] == defender_type_2) && (defender_type_1 != defender_type_2))
                {
                    if (ShouldUseNormalTypeEffCalc(sp, attack_client, defence_client, i) == TRUE
                    && !(!CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE)
                        && !CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK)
                        && sp->field_condition & WEATHER_STRONG_WINDS
                        && (TypeEffectivenessTable[i][2] == 20)
                        && defender_type_2 == TYPE_FLYING))
                    {
                        damage = TypeCheckCalc(sp, attack_client, TypeEffectivenessTable[i][2], damage, base_power, flag);
                        if (TypeEffectivenessTable[i][2] == 20) // seems to be useless, modifier isn't used elsewhere
                        {
                            modifier *= 2;
                        }
                    }
                }
            }
            i++;
        }
    }

    if ((MoldBreakerAbilityCheck(sp, attack_client, defence_client, ABILITY_WONDER_GUARD) == TRUE)
     && (ShouldDelayTurnEffectivenessChecking(sp, move_no)) // check supereffectiveness later, 2-turn move
     && (((flag[0] & MOVE_STATUS_FLAG_SUPER_EFFECTIVE) == 0) || ((flag[0] & (MOVE_STATUS_FLAG_SUPER_EFFECTIVE | MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE)) == (MOVE_STATUS_FLAG_SUPER_EFFECTIVE | MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE)))
     && (base_power))
    {
        flag[0] |= MOVE_STATUS_FLAG_MISS_WONDER_GUARD;
        sp->oneTurnFlag[attack_client].parental_bond_flag = 0;
        sp->oneTurnFlag[attack_client].parental_bond_is_active = FALSE;
    }
    else
    {
        if (((sp->server_status_flag & SERVER_STATUS_FLAG_TYPE_FLAT) == 0)
         && ((sp->server_status_flag & SERVER_STATUS_FLAG_TYPE_NONE) == 0))
        {
            if ((flag[0] & MOVE_STATUS_FLAG_SUPER_EFFECTIVE) && (base_power))
            {
                if ((MoldBreakerAbilityCheck(sp, attack_client, defence_client, ABILITY_FILTER) == TRUE) || (MoldBreakerAbilityCheck(sp, attack_client, defence_client, ABILITY_SOLID_ROCK) == TRUE))
                {
                    damage = BattleDamageDivide(damage * 3, 4);
                }
                if (GetBattlerAbility(sp, defence_client) == ABILITY_PRISM_ARMOR)
                {
                    damage = BattleDamageDivide(damage * 3, 4);
                }
                if (GetBattlerAbility(sp, attack_client) == ABILITY_NEUROFORCE)
                {
                    damage = BattleDamageDivide(damage * 5, 4);
                }
                if (eqp_a == HOLD_EFFECT_POWER_UP_SE)
                {
                    damage = damage * (100 + atk_a) / 100;
                }
            }
            if ((flag[0] & MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE) && (base_power))
            {
                if (GetBattlerAbility(sp, attack_client) == ABILITY_TINTED_LENS)
                {
                    damage *= 2;
                }
            }
        }
        else
        {
            flag[0] &= ~(MOVE_STATUS_FLAG_SUPER_EFFECTIVE);
            flag[0] &= ~(MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE);
        }
    }

    return damage;
}


/**
 *  @brief tries to see if the player can even try to run.  queues up the proper message if not
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param battlerId client to check for running
 *  @param msg msg param to fill with values for printing a message that results from running
 *  @return TRUE if the battler can not escape; FALSE if the battler can escape
 */
BOOL CantEscape(void *bw, struct BattleStruct *sp, int battlerId, MESSAGE_PARAM *msg) {
    int battlerIdAbility;
    int maxBattlers UNUSED;
    u8 side UNUSED;
    int item;
    u32 battleType;

    battleType = BattleTypeGet(bw);
    item = HeldItemHoldEffectGet(sp, battlerId);

    // if shed shell or no experience or has run away or has ghost type then there is nothing stopping the battler from escaping
    if (item == HOLD_EFFECT_FLEE || (battleType & BATTLE_TYPE_NO_EXPERIENCE) || GetBattlerAbility(sp, battlerId) == ABILITY_RUN_AWAY || BATTLE_MON_HAS_TYPE(sp, battlerId, TYPE_GHOST)) {
        return FALSE;
    }

    side = IsClientEnemy(bw, battlerId);
    maxBattlers = BattleWorkClientSetMaxGet(bw);

    battlerIdAbility = CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP_NOT_USER, battlerId, ABILITY_SHADOW_TAG);
    if (battlerIdAbility && GetBattlerAbility(sp, battlerId) != ABILITY_SHADOW_TAG) {
        if (msg == NULL) {
            return TRUE;
        }
        msg->msg_tag = TAG_NICKNAME_ABILITY;
        msg->msg_id = BATTLE_MSG_BATTLER_PREVENTS_ESCAPE_WITH;
        msg->msg_para[0] = CreateNicknameTag(sp, battlerIdAbility);
        msg->msg_para[1] = ABILITY_SHADOW_TAG;
        return TRUE;
    }

    battlerIdAbility = CheckSideAbility(bw, sp, CHECK_ABILITY_OPPOSING_SIDE_HP, battlerId, ABILITY_ARENA_TRAP);
    if (battlerIdAbility) {
        if (!(sp->field_condition & FIELD_STATUS_GRAVITY) && item != HOLD_EFFECT_SPEED_DOWN_GROUNDED) {
            if (GetBattlerAbility(sp, battlerId) != ABILITY_LEVITATE && !sp->battlemon[battlerId].moveeffect.magnetRiseTurns && !BATTLE_MON_HAS_TYPE(sp, battlerId, TYPE_FLYING)) {
               if (msg == NULL) {
                    return TRUE;
                }
                msg->msg_tag = TAG_NICKNAME_ABILITY;
                msg->msg_id = BATTLE_MSG_BATTLER_PREVENTS_ESCAPE_WITH;
                msg->msg_para[0] = CreateNicknameTag(sp, battlerIdAbility);
                msg->msg_para[1] = ABILITY_ARENA_TRAP;
                return TRUE;
            }
        } else {
            if (msg == NULL) {
                return TRUE;
            }
            msg->msg_tag = TAG_NICKNAME_ABILITY;
            msg->msg_id = BATTLE_MSG_BATTLER_PREVENTS_ESCAPE_WITH;
            msg->msg_para[0] = CreateNicknameTag(sp, battlerIdAbility);
            msg->msg_para[1] = ABILITY_ARENA_TRAP;
            return TRUE;
        }
    }

    battlerIdAbility = CheckSideAbility(bw, sp, CHECK_ABILITY_OPPOSING_SIDE_HP, battlerId, ABILITY_MAGNET_PULL);
    if (battlerIdAbility && BATTLE_MON_HAS_TYPE(sp, battlerId, TYPE_STEEL)) {
        if (msg == NULL) {
            return TRUE;
        }
        msg->msg_tag = TAG_NICKNAME_ABILITY;
        msg->msg_id = BATTLE_MSG_BATTLER_PREVENTS_ESCAPE_WITH;
        msg->msg_para[0] = CreateNicknameTag(sp, battlerIdAbility);
        msg->msg_para[1] = ABILITY_MAGNET_PULL;
        return TRUE;
    }

    if ((sp->battlemon[battlerId].condition2 & (STATUS2_MEAN_LOOK)) || (sp->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) || sp->binding_turns[battlerId] != 0){
        if (msg == NULL) {
            return TRUE;
        }
        msg->msg_tag = 0;
        msg->msg_id = BATTLE_MSG_CANT_ESCAPE;
        return TRUE;
    }

    return FALSE;
}


/**
 *  @brief tries to see if the battler can switch
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param battlerId client to check for running
 *  @return TRUE if the battler can not switch; FALSE if the battler can switch
 */
BOOL BattlerCantSwitch(void *bw, struct BattleStruct *sp, int battlerId) {
    BOOL ret = FALSE;

    // ghost types can switch from anything like they had shed skin
    if (HeldItemHoldEffectGet(sp, battlerId) == HOLD_EFFECT_SWITCH || BATTLE_MON_HAS_TYPE(sp, battlerId, TYPE_GHOST)) {
        return FALSE;
    }

    if ((sp->battlemon[battlerId].condition2 & (STATUS2_MEAN_LOOK)) || (sp->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) || sp->binding_turns[battlerId] != 0) {
        ret = TRUE;
    }

    if ((GetBattlerAbility(sp, battlerId) != ABILITY_SHADOW_TAG && CheckSideAbility(bw, sp, CHECK_ABILITY_OPPOSING_SIDE_HP, battlerId, ABILITY_SHADOW_TAG))
     || (BATTLE_MON_HAS_TYPE(sp, battlerId, TYPE_STEEL) && CheckSideAbility(bw, sp, CHECK_ABILITY_OPPOSING_SIDE_HP, battlerId, ABILITY_MAGNET_PULL)))
    {
        ret = TRUE;
    }

    if (((GetBattlerAbility(sp, battlerId) != ABILITY_LEVITATE
       && sp->battlemon[battlerId].moveeffect.magnetRiseTurns == 0
       && !BATTLE_MON_HAS_TYPE(sp, battlerId, TYPE_FLYING))
      || HeldItemHoldEffectGet(sp, battlerId) == HOLD_EFFECT_SPEED_DOWN_GROUNDED
      || (sp->field_condition & FIELD_STATUS_GRAVITY))
     && CheckSideAbility(bw, sp, CHECK_ABILITY_OPPOSING_SIDE_HP, battlerId, ABILITY_ARENA_TRAP))
    {
        ret = TRUE;
    }

    return ret;
}


/**
 *  @brief tries to see if the battler can run, sets escape_flag to 1 if it can via item or 2 if it can via ability
 *         also takes into account the random chance to flee if none of the guaranteed chances work
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param battlerId client to check for running
 *  @return TRUE if the battler can run; FALSE if the battler can not switch
 */
BOOL BattleTryRun(void *bw, struct BattleStruct *sp, int battlerId) {
    BOOL ret;
    u8 run;
    int item;
    u32 battleType;

    battleType = BattleTypeGet(bw);
    item = HeldItemHoldEffectGet(sp, battlerId);
    ret = FALSE;

    if (item == HOLD_EFFECT_FLEE) {
        sp->oneTurnFlag[battlerId].escape_flag = 1;
        ret = TRUE;
    } else if (battleType & BATTLE_TYPE_NO_EXPERIENCE || BATTLE_MON_HAS_TYPE(sp, battlerId, TYPE_GHOST)) { // ghost types can always escape regardless of speed
        ret = TRUE;
    } else if (GetBattlerAbility(sp, battlerId) == ABILITY_RUN_AWAY) {
        sp->oneTurnFlag[battlerId].escape_flag = 2;
        ret = TRUE;
    } else {
        if (sp->battlemon[battlerId].speed < sp->battlemon[battlerId ^ 1].speed) {
            run = sp->battlemon[battlerId].speed * 128 / sp->battlemon[battlerId ^ 1].speed + sp->escape_count * 30;
            if (run > (BattleRand(bw) % 256)) {
                ret = TRUE;
            }
        } else {
            ret = TRUE;
        }
        if (!ret) {
            SCIO_IncRecord(bw, battlerId, 0, 99);
        }
        sp->escape_count++;
    }
    return ret;
}

/**
 *  @brief see if a move has positive priority after adjustment
 *
 *  @param sp battle structure
 *  @param attacker client to check
 *  @return TRUE if the move has positive priority after adjustments
 */
BOOL LONG_CALL AdjustedMoveHasPositivePriority(struct BattleStruct *sp, int attacker) {
    return GetClientActionPriority(NULL, sp, attacker) > 0;
}

/**
 *  @brief see if the move should NOT be exempted from priority blocking effects
 *
 *  @param sp battle structure
 *  @param attacker attacker client
 *  @param defender defender client
 *  @return TRUE if the move should NOT be exempted from priority blocking effects
 */
BOOL LONG_CALL CurrentMoveShouldNotBeExemptedFromPriorityBlocking(struct BattleStruct *sp, int attacker, int defender) {
    // Courtesy of The Pokeemerald Expansion (https://github.com/rh-hideout/pokeemerald-expansion/blob/selfhost-test/test/battle/terrain/psychic.c)

    struct BattleMove currentMove = sp->moveTbl[sp->current_move_index];
    u16 target = currentMove.target;

    switch (target) {
    // Psychic Terrain doesn't block priority moves that target the user
    case RANGE_USER:
        return FALSE;
        break;

    // Psychic Terrain doesn't block priority moves that target all battlers
    // Psychic Terrain doesn't block priority field moves
    case RANGE_FIELD:
        return FALSE;
        break;

    // Psychic Terrain doesn't block priority moves that target all opponents
    case RANGE_OPPONENT_SIDE:
        return FALSE;
        break;

    // Psychic Terrain should not block Light Screen, Tailwind, etc.
    case RANGE_USER_SIDE:
        return FALSE;
        break;

    default:
        break;
    }

    //Psychic Terrain doesn't block priority moves that target allies
    if (defender == BATTLER_ALLY(attacker)) {
        return FALSE;
    }

    return TRUE;
}

/**
 *  @brief Check if seed should activate
 *
 *  @param sp battle structure
 *  @param heldItem held item
 *  @return TRUE if seed should activate
 */
BOOL LONG_CALL TerrainSeedShouldActivate(struct BattleStruct *sp, u16 heldItem) {
    switch (heldItem) {
        case ITEM_ELECTRIC_SEED:
            if (sp->terrainOverlay.type == ELECTRIC_TERRAIN && sp->terrainOverlay.numberOfTurnsLeft > 0) {
                return TRUE;
            }
            break;
        case ITEM_GRASSY_SEED:
            if (sp->terrainOverlay.type == GRASSY_TERRAIN && sp->terrainOverlay.numberOfTurnsLeft > 0) {
                return TRUE;
            }
            break;
        case ITEM_MISTY_SEED:
            if (sp->terrainOverlay.type == MISTY_TERRAIN && sp->terrainOverlay.numberOfTurnsLeft > 0) {
                return TRUE;
            }
            break;
        case ITEM_PSYCHIC_SEED:
            if (sp->terrainOverlay.type == PSYCHIC_TERRAIN && sp->terrainOverlay.numberOfTurnsLeft > 0) {
                return TRUE;
            }
            break;
        default:
            return FALSE;
    }
    return FALSE;
}

/**
 * @brief Check if the current move is a multi hit move
 * @param moveIndex move index
 * @return TRUE if it is a multi hit move
*/
BOOL LONG_CALL IsMultiHitMove(u32 moveIndex) {
    for (u16 i = 0; i < NELEMS(MultiHitMovesList); i++) {
        if (moveIndex == MultiHitMovesList[i]) {
            return TRUE;
        }
    }
    return FALSE;
}

/**
 * @brief Check if the current move is a move that shouldn't be affected by Parental Bond
 * @param moveIndex move index
 * @return TRUE if it is a banned move
*/
BOOL LONG_CALL IsBannedParentalBondMove(u32 moveIndex) {
    u8 output = FALSE;
    for (u16 i = 0; i < NELEMS(ParentalBondSingleStrikeMovesList); i++) {
        if (moveIndex == ParentalBondSingleStrikeMovesList[i]) {
            output = TRUE;
            break;
        }
    }
    return output || IsMultiHitMove(moveIndex);
}

/**
 * @brief Check if the current move is a spread move that shouldn't be affected by Parental Bond
 * @param bw battle work structure; void * because we haven't defined the battle work structure
 * @param sp battle structure
 * @param moveIndex move index
 * @return TRUE if it is a banned move
 */
BOOL LONG_CALL IsBannedSpreadMoveForParentalBond(void *bw, struct BattleStruct *sp, u32 moveIndex) {
    //no need to check moves if it is a single battle
    if ((BattleTypeGet(bw) & (BATTLE_TYPE_DOUBLE | BATTLE_TYPE_MULTI)) == 0) {
        return FALSE;
    }

    struct BattleMove currentMove = sp->moveTbl[moveIndex];

    struct BattlePokemon ally = sp->battlemon[BATTLER_ALLY(sp->attack_client)];
    struct BattlePokemon opponent = sp->battlemon[BATTLER_OPPONENT(sp->attack_client)];
    struct BattlePokemon across = sp->battlemon[BATTLER_ACROSS(sp->attack_client)];

    switch (currentMove.target) {
        case RANGE_ADJACENT_OPPONENTS:
            if (opponent.hp != 0 || across.hp != 0) {
                return TRUE;
            }
            break;
        case RANGE_ALL_ADJACENT:
            if (ally.hp != 0 || opponent.hp != 0 || across.hp != 0) {
                return TRUE;
            }
            break;

        default:
            return FALSE;
            break;
    }
    return TRUE;
}

/**
 * @brief Check if the current move is a move that should be affected by Parental Bond
 * @param bw battle work structure; void * because we haven't defined the battle work structure
 * @param sp battle structure
 * @param checkTempMove if move will be changed via Metronome, Assist, etc
 * @return TRUE if it is a valid move
 */
BOOL LONG_CALL IsValidParentalBondMove(void *bw, struct BattleStruct *sp, BOOL checkTempMove) {
    u32 moveIndex = checkTempMove ? (u32)sp->waza_work : sp->current_move_index;

    return (GetBattlerAbility(sp, sp->attack_client) == ABILITY_PARENTAL_BOND &&
            GetMoveSplit(sp, moveIndex) != SPLIT_STATUS &&
            !IsBannedParentalBondMove(moveIndex) &&
            !IsBannedSpreadMoveForParentalBond(bw, sp, moveIndex));
}

/**
 * @brief Check if the current move is a Powder move
 * @param moveIndex move index
 * @return TRUE if it is a Powder move
*/
BOOL LONG_CALL IsPowderMove(u32 moveIndex) {
    u8 output = FALSE;
    for (u16 i = 0; i < NELEMS(PowderMovesList); i++) {
        if (moveIndex == PowderMovesList[i]) {
            output = TRUE;
            break;
        }
    }
    return output;
}

/**
 * @brief Check if the current move is a Weight move
 * @param moveIndex move index
 * @return TRUE if it is a Weight move
*/
BOOL LONG_CALL IsWeightMove(u32 moveIndex) {
    for (u16 i = 0; i < NELEMS(WeightMoveList); i++) {
        if (moveIndex == WeightMoveList[i]) {
            return TRUE;
        }
    }
    return FALSE;
}

/**
 * @brief Check if the current move is a ball or bomb move
 * @param moveIndex move index
 * @return TRUE if it is a Weight move
*/
BOOL LONG_CALL IsBallOrBombMove(u32 moveIndex) {
    for (u16 i = 0; i < NELEMS(BulletproofMoveList); i++) {
        if (moveIndex == BulletproofMoveList[i]) {
            return TRUE;
        }
    }
    return FALSE;
}

/**
 * @brief gets the actual attack and defense for damage calculation
 * @param sp battle structure
 * @param attackerAttack attacker's Physical Attack
 * @param defenderDefense defender's Physical Defense
 * @param attackerSpecialAttack attacker's Special Attack
 * @param defenderSpecialDefense defender's Special Defense
 * @param attackerAttackstate attacker's Physical Attack state
 * @param defenderDefenseState defender's Physical Defense state
 * @param attackerSpecialAttackState attacker's Special Attack state
 * @param defenderSpecialDefenseState defender's Special Defense state
 * @param movesplit physical or special attack
 * @param attacker attacker number
 * @param defender defender number
 * @param critical critial hit or not
 * @param moveno move number
 * @param equivalentAttack attack number used for calculation
 * @param equivalentDefense defense number used for calculation
 */
void LONG_CALL getEquivalentAttackAndDefense(struct BattleStruct *sp, u16 attackerAttack, u16 defenderDefense, u16 attackerSpecialAttack, u16 defenderSpecialDefense, s8 attackerAttackstate, s8 defenderDefenseState, s8 attackerSpecialAttackState, s8 defenderSpecialDefenseState, u8 *movesplit, u8 attacker, u8 defender UNUSED, u8 critical, int moveno, u16 *equivalentAttack, u16 *equivalentDefense) {
    u16 rawPhysicalAttack;
    u16 rawSpecialAttack;
    u16 rawPhysicalDefense;
    u16 rawSpecialDefense;

    u16 tempPhysicalAttack = BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_ATK, NULL) * StatBoostModifiers[attackerAttackstate][0] / StatBoostModifiers[attackerAttackstate][1];
    u16 tempSpecialAttack = BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_SPATK, NULL) * StatBoostModifiers[attackerSpecialAttackState][0] / StatBoostModifiers[attackerSpecialAttackState][1];

    if (critical > 1) {
        if (attackerAttackstate > 6) {
            rawPhysicalAttack = attackerAttack * StatBoostModifiers[attackerAttackstate][0];
            rawPhysicalAttack /= StatBoostModifiers[attackerAttackstate][1];
        } else {
            rawPhysicalAttack = attackerAttack;
        }

        if (defenderDefenseState < 6) {
            rawPhysicalDefense = defenderDefense * StatBoostModifiers[defenderDefenseState][0];
            rawPhysicalDefense /= StatBoostModifiers[defenderDefenseState][1];
        } else {
            rawPhysicalDefense = defenderDefense;
        }

        if (attackerSpecialAttackState > 6) {
            rawSpecialAttack = attackerSpecialAttack * StatBoostModifiers[attackerSpecialAttackState][0];
            rawSpecialAttack /= StatBoostModifiers[attackerSpecialAttackState][1];
        } else {
            rawSpecialAttack = attackerSpecialAttack;
        }

        if (defenderSpecialDefenseState < 6) {
            rawSpecialDefense = defenderSpecialDefense * StatBoostModifiers[defenderSpecialDefenseState][0];
            rawSpecialDefense /= StatBoostModifiers[defenderSpecialDefenseState][1];
        } else {
            rawSpecialDefense = defenderSpecialDefense;
        }
    } else {
        rawPhysicalAttack = attackerAttack * StatBoostModifiers[attackerAttackstate][0];
        rawPhysicalAttack /= StatBoostModifiers[attackerAttackstate][1];

        rawPhysicalDefense = defenderDefense * StatBoostModifiers[defenderDefenseState][0];
        rawPhysicalDefense /= StatBoostModifiers[defenderDefenseState][1];

        rawSpecialAttack = attackerSpecialAttack * StatBoostModifiers[attackerSpecialAttackState][0];
        rawSpecialAttack /= StatBoostModifiers[attackerSpecialAttackState][1];

        rawSpecialDefense = defenderSpecialDefense * StatBoostModifiers[defenderSpecialDefenseState][0];
        rawSpecialDefense /= StatBoostModifiers[defenderSpecialDefenseState][1];
    }

    if (*movesplit == SPLIT_PHYSICAL) {
        *equivalentAttack = rawPhysicalAttack;
        *equivalentDefense = rawPhysicalDefense;
    } else {
        *equivalentAttack = rawSpecialAttack;
        *equivalentDefense = rawSpecialDefense;
    }

    switch (moveno) {
        case MOVE_PSYSHOCK:
        case MOVE_PSYSTRIKE:
        case MOVE_SECRET_SWORD:
            *equivalentDefense = rawPhysicalDefense;
            break;
        case MOVE_PHOTON_GEYSER:
            if (tempPhysicalAttack > tempSpecialAttack) {
                *movesplit = SPLIT_PHYSICAL;
                *equivalentAttack = rawPhysicalAttack;
                *equivalentDefense = rawPhysicalDefense;
            } else {
                *movesplit = SPLIT_SPECIAL;
                *equivalentAttack = rawSpecialAttack;
                *equivalentDefense = rawPhysicalDefense;
            }
            break;

        default:
            break;
    }
}


/**
 * @brief Check if the current move is a Z-Move
 * @param moveIndex move index
 * @return `TRUE` if it is a Z-Move
*/
BOOL LONG_CALL MoveIsZMove(u32 moveIndex) {
    u8 output = FALSE;
    for (u16 i = 0; i < NELEMS(ZMoveList); i++) {
        if (moveIndex == ZMoveList[i]) {
            output = TRUE;
            break;
        }
    }
    return output;
}

/**
 * @brief Check if the current move is a Max Move
 * @param moveIndex move index
 * @return `TRUE` if it is a Max Move
*/
BOOL LONG_CALL MoveIsMaxMove(u32 moveIndex) {
    u8 output = FALSE;
    for (u16 i = 0; i < NELEMS(MaxMoveList); i++) {
        if (moveIndex == MaxMoveList[i]) {
            output = TRUE;
            break;
        }
    }
    return output;
}

/**
 * @brief Check if move is affected by Normalize variants
 * @param moveno move number
 * @return `TRUE`if move is affected by Normalize variants, `FALSE` otherwise
*/
BOOL LONG_CALL MoveIsAffectedByNormalizeVariants(int moveno) {
    if (MoveIsZMove(moveno) || MoveIsMaxMove(moveno)) {
        return FALSE;
    }

    switch (moveno) {
        case MOVE_HIDDEN_POWER:
        case MOVE_WEATHER_BALL:
        case MOVE_NATURAL_GIFT:
        case MOVE_JUDGMENT:
        case MOVE_TECHNO_BLAST:
        case MOVE_MULTI_ATTACK:
        case MOVE_TERRAIN_PULSE:
            return FALSE;
            break;
        default:
            return TRUE;
            break;
    }
}

/**
 * @brief Get a move's split accounting for edge cases
 * @param sp battle structure
 * @param moveno move number
 * @return `SPLIT_PHYSICAL` or `SPLIT_SPECIAL`
 */
u8 LONG_CALL GetMoveSplit(struct BattleStruct *sp, int moveno) {
    return sp->moveTbl[moveno].split;
}

BOOL LONG_CALL BattleSystem_CheckMoveEffect(void *bw, struct BattleStruct *sp, int battlerIdAttacker, int battlerIdTarget, int move) {
    if (sp->server_status_flag & BATTLE_STATUS_CHARGE_TURN) {
        return FALSE;
    }

    if (sp->oneTurnFlag[battlerIdTarget].mamoru_flag
        && sp->moveTbl[move].flag & (1 << 1)
        && (move != MOVE_CURSE || CurseUserIsGhost(sp, move, battlerIdAttacker) == TRUE)
        && (!CheckMoveIsChargeMove(sp, move) || sp->server_status_flag & BATTLE_STATUS_CHARGE_MOVE_HIT)) {
        UnlockBattlerOutOfCurrentMove(bw, sp, battlerIdAttacker);
        sp->waza_status_flag |= WAZA_STATUS_FLAG_MAMORU_NOHIT;
        return FALSE;
    }

    if (!(sp->server_status_flag & BATTLE_STATUS_FLAT_HIT_RATE) //TODO: Is this flag a debug flag to ignore hit rates..?
        && ((sp->battlemon[battlerIdTarget].effect_of_moves & MOVE_EFFECT_FLAG_LOCK_ON
            && sp->battlemon[battlerIdTarget].moveeffect.battlerIdLockOn == battlerIdAttacker)
          || GetBattlerAbility(sp, battlerIdAttacker) == ABILITY_NO_GUARD
          || GetBattlerAbility(sp, battlerIdTarget) == ABILITY_NO_GUARD)) {
        sp->waza_status_flag &= ~MOVE_STATUS_FLAG_MISS;
        return FALSE;
    }

    if (!CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) && !CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK)) {
        if ((sp->field_condition & WEATHER_RAIN_ANY) && ((sp->moveTbl[move].effect == MOVE_EFFECT_THUNDER)
         || (sp->moveTbl[move].effect == MOVE_EFFECT_HURRICANE)
         || (sp->moveTbl[move].effect == MOVE_EFFECT_BLEAKWIND_STORM)
         || (sp->moveTbl[move].effect == MOVE_EFFECT_WILDBOLT_STORM)
         || (sp->moveTbl[move].effect == MOVE_EFFECT_SANDSEAR_STORM))) {
            sp->waza_status_flag &= ~MOVE_STATUS_FLAG_MISS;
        }
        // Blizzard is 100% accurate in Snow also
        if (sp->field_condition & (WEATHER_HAIL_ANY | WEATHER_SNOW_ANY) && sp->moveTbl[move].effect == MOVE_EFFECT_BLIZZARD) {
            sp->waza_status_flag &= ~MOVE_STATUS_FLAG_MISS;
        }
    }

    if (!(sp->waza_status_flag & MOVE_STATUS_FLAG_LOCK_ON)
        && sp->moveTbl[sp->current_move_index].target != RANGE_OPPONENT_SIDE
        && ((!(sp->server_status_flag & BATTLE_STATUS_HIT_FLY) && sp->battlemon[battlerIdTarget].effect_of_moves & MOVE_EFFECT_FLAG_FLYING_IN_AIR)
            || (!(sp->server_status_flag & BATTLE_STATUS_SHADOW_FORCE) && sp->battlemon[battlerIdTarget].effect_of_moves & MOVE_EFFECT_FLAG_SHADOW_FORCE)
            || (!(sp->server_status_flag & BATTLE_STATUS_HIT_DIG) && sp->battlemon[battlerIdTarget].effect_of_moves & MOVE_EFFECT_FLAG_DIGGING)
            || (!(sp->server_status_flag & BATTLE_STATUS_HIT_DIVE) && sp->battlemon[battlerIdTarget].effect_of_moves & MOVE_EFFECT_FLAG_IS_DIVING))) {
        sp->waza_status_flag |= WAZA_STATUS_FLAG_KIE_NOHIT;
    }
    return FALSE;
}

/**
 * @brief Check if client can undergo Primal Reversion
 * @param sp move number
 * @param client_no battler to check for primal reversion possibility
 * @return `TRUE` if mon can undergo primal reversion, `FALSE` otherwise
 */
BOOL LONG_CALL CanUndergoPrimalReversion(struct BattleStruct *sp, u8 client_no) {
#ifdef PRIMAL_REVERSION
    if (((sp->battlemon[client_no].species == SPECIES_KYOGRE
#ifdef DEBUG_PRIMAL_REVERSION
          && GetBattleMonItem(sp, client_no) == ITEM_DREAM_BALL
#else
          && GetBattleMonItem(sp, client_no) == ITEM_BLUE_ORB
#endif
          ) ||
         (sp->battlemon[client_no].species == SPECIES_GROUDON
#ifdef DEBUG_PRIMAL_REVERSION
          && GetBattleMonItem(sp, client_no) == ITEM_DREAM_BALL
#else
          && GetBattleMonItem(sp, client_no) == ITEM_RED_ORB
#endif
          )) &&
        sp->battlemon[client_no].hp != 0 && sp->battlemon[client_no].form_no == 0) {
        return TRUE;
    }
#endif  // PRIMAL_REVERSION
    return FALSE;
}

/**
 * Platinum version as reference
 * BattleController_MoveEnd
 * https://github.com/pret/pokeplatinum/blob/447c17a0f12b4a7656dded8aaa6e41ae9694cd09/src/battle/battle_controller.c#L3965
 */
void LONG_CALL BattleController_MoveEnd(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    // debug_printf("In BattleController_MoveEnd\n");

    u32 ovyId, offset;

    void (*internalFunc)(struct BattleSystem *bsys, struct BattleStruct *ctx);

    ovyId = OVERLAY_BATTLECONTROLLER_MOVEEND;
    offset = 0x023C0400 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (void (*)(struct BattleSystem *bsys, struct BattleStruct *ctx))(offset);
    internalFunc(bsys, ctx);
    UnloadOverlayByID(ovyId);
}


/**
 * @brief checks if the move index is a punching move
 * @param move move index to check
 * @return TRUE/FALSE
*/
BOOL LONG_CALL IsMovePunchingMove(u16 move)
{
    return IsElementInArray(PunchingMovesTable, (u16 *)&move, NELEMS(PunchingMovesTable), sizeof(PunchingMovesTable[0]));
}


/**
 * @brief checks if contact is being made, checking abilities and items
 * @param bw battle work structure
 * @param sp global battle structure
 * @return TRUE/FALSE
*/
BOOL LONG_CALL IsContactBeingMade(struct BattleSystem *bw UNUSED, struct BattleStruct *sp) {

    // Attacker abilities
    if (GetBattlerAbility(sp, sp->attack_client) == ABILITY_LONG_REACH
        // Kept in case people add their own
        // || GetBattlerAbility(sp, sp->attack_client) == OTHER_ABILITY_THAT_PREVENTS_CONTACT_ATTACK
        ) {
            return FALSE;
        }

    // Defender abilities
    // Kept in case people add their own
    // if (GetBattlerAbility(sp, sp->defence_client) == ABILITY_THAT_PREVENTS_CONTACT_DEFENCE
    //     || GetBattlerAbility(sp, sp->defence_client) == OTHER_ABILITY_THAT_PREVENTS_CONTACT_DEFENCE
    //     ) {
    //         return FALSE;
    //     }

    // Check for items attacker
    if (HeldItemHoldEffectGet(sp, sp->attack_client) == HOLD_EFFECT_PREVENT_CONTACT_EFFECTS
        // punching gloves prevents contact when attacking with punching moves
        || (HeldItemHoldEffectGet(sp, sp->attack_client) == HOLD_EFFECT_INCREASE_PUNCHING_MOVE_DMG
            && IsMovePunchingMove(sp->current_move_index))
        // Kept in case people add their own
        // || HeldItemHoldEffectGet(sp, sp->attack_client) != OTHER_HOLD_EFFECT_THAT_PREVENTS_ATTACKER_CONTACT
        ) {
            return FALSE;
    }

    // Check for items defender
    if (HeldItemHoldEffectGet(sp, sp->defence_client) == HOLD_EFFECT_PREVENT_CONTACT_EFFECTS
        // Kept in case people add their own
        // || HeldItemHoldEffectGet(sp, sp->defence_client) != OTHER_HOLD_EFFECT_THAT_PREVENTS_DEFENDER_CONTACT
        ) {
            return FALSE;
    }

    // Does the move make contact vanilla
    if (sp->moveTbl[sp->current_move_index].flag & FLAG_CONTACT) {
        return TRUE;
    }

    return FALSE;
}

void LONG_CALL ov12_02252D14(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx) {
    ctx->waza_status_flag = 0;
    ctx->moveStatusFlagForSpreadMoves[ctx->defence_client] = 0;
    ctx->critical = 1;
    ctx->server_status_flag &= (0x100000 ^ 0xFFFFFFFF);
}

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


/**
 * Platinum version as reference
 * BattleController_TryMove
 * https://github.com/pret/pokeplatinum/blob/04d9ea4cfad3963feafecf3eb0f4adcbc7aa5063/src/battle/battle_controller.c#L3240
 */
void LONG_CALL ov12_0224C4D8(struct BattleSystem *bsys, struct BattleStruct *ctx) {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
    debug_printf("In ov12_0224C4D8\n")
#endif

    ctx->waza_status_flag = ctx->moveStatusFlagForSpreadMoves[ctx->defence_client];

    if (ctx->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) {
        // Skip vanilla fail message printing
        // ctx->server_seq_no = CONTROLLER_COMMAND_26;
        ctx->server_seq_no = CONTROLLER_COMMAND_35;
    } else {
        ctx->server_status_flag2 |= BATTLE_STATUS2_MOVE_SUCCEEDED;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;  // execute the move
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_MOVE_SEQ, ctx->current_move_index);
        // ctx->next_server_seq_no = CONTROLLER_COMMAND_24;  // after that
        ctx->next_server_seq_no = CONTROLLER_COMMAND_25;  // after that
        ST_ServerTotteokiCountCalc(bsys, ctx);              // 801B570h
    }
    ST_ServerMetronomeBeforeCheck(bsys, ctx);  // 801ED20h
}

/**
 * Platinum version as reference
 * BattleController_LoopSpreadMoves
 * https://github.com/pret/pokeplatinum/blob/04d9ea4cfad3963feafecf3eb0f4adcbc7aa5063/src/battle/battle_controller.c#L3832
 */
void LONG_CALL ov12_0224D03C(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (ctx->server_status_flag2 & BATTLE_STATUS2_MAGIC_COAT) {
        ctx->server_status_flag2 &= ~BATTLE_STATUS2_MAGIC_COAT;
        ctx->defence_client   = ctx->attack_client;
        ctx->attack_client = ctx->magic_cort_client;
    }

    ov12_0224DD74(bsys, ctx);

    if (ctx->moveTbl[ctx->current_move_index].target == RANGE_ADJACENT_OPPONENTS && !(ctx->server_status_flag & BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE) && ctx->client_loop < BattleWorkClientSetMaxGet(bsys)) {
        ctx->waza_out_check_on_off = 13;
        int battlerId;
        int maxBattlers UNUSED        = BattleWorkClientSetMaxGet(bsys);
        struct CLIENT_PARAM *opponent = BattleWorkClientParamGet(bsys, ctx->attack_client);
        u8 flag                = ov12_02261258(opponent);

        do {
            battlerId = ctx->turnOrder[ctx->client_loop++];
            if (ctx->moveStatusFlagForSpreadMoves[battlerId] & MOVE_STATUS_FLAG_FAILURE_ANY) {
                continue;
            }
            if (!(ctx->no_reshuffle_client & No2Bit(battlerId)) && ctx->battlemon[battlerId].hp != 0) {
                opponent = BattleWorkClientParamGet(bsys, battlerId);
                if (((flag & 1) && !(ov12_02261258(opponent) & 1)) || (!(flag & 1) && ov12_02261258(opponent) & 1)) {
                    ov12_02252D14(bsys, ctx);
                    ctx->defence_client = battlerId;
                    ctx->server_seq_no         = CONTROLLER_COMMAND_24;
                    break;
                }
            }
        } while (ctx->client_loop < BattleWorkClientSetMaxGet(bsys));

        SCIO_BlankMessage(bsys);
    } else if (ctx->moveTbl[ctx->current_move_index].target == RANGE_ALL_ADJACENT && !(ctx->server_status_flag & BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE) && ctx->client_loop < BattleWorkClientSetMaxGet(bsys)) {
        ctx->waza_out_check_on_off = 13;

        int battlerId;
        int maxBattlers UNUSED = BattleWorkClientSetMaxGet(bsys);

        do {
            battlerId = ctx->turnOrder[ctx->client_loop++];
            if (ctx->moveStatusFlagForSpreadMoves[battlerId] & MOVE_STATUS_FLAG_FAILURE_ANY) {
                continue;
            }
            if (!(ctx->no_reshuffle_client & No2Bit(battlerId)) && ctx->battlemon[battlerId].hp != 0) {
                if (battlerId != ctx->attack_client) {
                    ov12_02252D14(bsys, ctx);
                    ctx->defence_client = battlerId;
                    ctx->server_seq_no         = CONTROLLER_COMMAND_24;
                    break;
                }
            }
        } while (ctx->client_loop < BattleWorkClientSetMaxGet(bsys));

        SCIO_BlankMessage(bsys);
    } else {
        ctx->server_seq_no = CONTROLLER_COMMAND_36;
    }
}

/**
 * ov12_0224CF14 in pokeheartgold
 */
void LONG_CALL BattleController_LoopMultiHit(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    // debug_printf("In BattleController_LoopMultiHit\n");
    if (ctx->multiHitCountTemp != 0) {
        if (ctx->fainting_client == BATTLER_NONE && !(ctx->battlemon[ctx->attack_client].condition & STATUS_SLEEP) && !(ctx->waza_status_flag & MOVE_STATUS_FLAG_FURY_CUTTER_MISS)) {
            if (--ctx->multiHitCount) {
                ctx->loop_flag = 1;
                ov12_02252D14(bsys, ctx);
                ctx->server_status_flag &= ~BATTLE_STATUS_MOVE_ANIMATIONS_OFF;
                ctx->waza_out_check_on_off = ctx->loop_hit_check;
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_MOVE_SEQ, ctx->current_move_index);
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                ctx->next_server_seq_no = CONTROLLER_COMMAND_23; // go back to our custom check
            } else {
                ctx->msg_work = ctx->multiHitCountTemp;
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MULTI_HIT);
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                ctx->next_server_seq_no = CONTROLLER_COMMAND_34;
            }
        } else {
            if (ctx->fainting_client != BATTLER_NONE || ctx->battlemon[ctx->attack_client].condition & STATUS_SLEEP) {
                ctx->msg_work = ctx->multiHitCountTemp - ctx->multiHitCount + 1;
            } else {
                ctx->msg_work = ctx->multiHitCountTemp - ctx->multiHitCount;
            }
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MULTI_HIT);
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->next_server_seq_no = CONTROLLER_COMMAND_34;
        }
        SCIO_BlankMessage(bsys);
    } else {
        ctx->server_seq_no = CONTROLLER_COMMAND_34;
    }
}

int LONG_CALL GetDynamicMoveType(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId, int moveNo) {
    int type;

    int species, form;
    struct PartyPokemon *mon;

    // BUGFIX
    type = ctx->move_type;

    mon = Battle_GetClientPartyMon(bsys, battlerId, ctx->sel_mons_no[battlerId]);
    species = GetMonData(mon, MON_DATA_SPECIES, 0);
    form = GetMonData(mon, MON_DATA_FORM, 0);

    switch (moveNo) {
        case MOVE_NATURAL_GIFT:
            type = GetNaturalGiftType(ctx, battlerId);
            break;
        case MOVE_JUDGMENT:
            switch (HeldItemHoldEffectGet(ctx, battlerId)) {
                case HOLD_EFFECT_ARCEUS_FIGHTING:
                    type = TYPE_FIGHTING;
                    break;
                case HOLD_EFFECT_ARCEUS_FLYING:
                    type = TYPE_FLYING;
                    break;
                case HOLD_EFFECT_ARCEUS_POISON:
                    type = TYPE_POISON;
                    break;
                case HOLD_EFFECT_ARCEUS_GROUND:
                    type = TYPE_GROUND;
                    break;
                case HOLD_EFFECT_ARCEUS_ROCK:
                    type = TYPE_ROCK;
                    break;
                case HOLD_EFFECT_ARCEUS_BUG:
                    type = TYPE_BUG;
                    break;
                case HOLD_EFFECT_ARCEUS_GHOST:
                    type = TYPE_GHOST;
                    break;
                case HOLD_EFFECT_ARCEUS_STEEL:
                    type = TYPE_STEEL;
                    break;
                case HOLD_EFFECT_ARCEUS_FIRE:
                    type = TYPE_FIRE;
                    break;
                case HOLD_EFFECT_ARCEUS_WATER:
                    type = TYPE_WATER;
                    break;
                case HOLD_EFFECT_ARCEUS_GRASS:
                    type = TYPE_GRASS;
                    break;
                case HOLD_EFFECT_ARCEUS_ELECTRIC:
                    type = TYPE_ELECTRIC;
                    break;
                case HOLD_EFFECT_ARCEUS_PSYCHIC:
                    type = TYPE_PSYCHIC;
                    break;
                case HOLD_EFFECT_ARCEUS_ICE:
                    type = TYPE_ICE;
                    break;
                case HOLD_EFFECT_ARCEUS_DRAGON:
                    type = TYPE_DRAGON;
                    break;
                case HOLD_EFFECT_ARCEUS_DARK:
                    type = TYPE_DARK;
                    break;
                case HOLD_EFFECT_ARCEUS_FAIRY:
                    type = TYPE_FAIRY;
                    break;
                // TODO: handle Blank Plate, Legend Plate, Z-Crystals
                default:
                    type = TYPE_NORMAL;
                    break;
            }
            break;
        case MOVE_HIDDEN_POWER:
            type = (ctx->battlemon[battlerId].hp_iv & 1) |
                   ((ctx->battlemon[battlerId].atk_iv & 1) << 1) |
                   ((ctx->battlemon[battlerId].def_iv & 1) << 2) |
                   ((ctx->battlemon[battlerId].spe_iv & 1) << 3) |
                   ((ctx->battlemon[battlerId].spatk_iv & 1) << 4) |
                   ((ctx->battlemon[battlerId].spdef_iv & 1) << 5);

            type = (type * 15 / 63) + 1;

            if (type >= TYPE_MYSTERY) {
                type++;
            }
            break;
        case MOVE_WEATHER_BALL:
            if (!CheckSideAbility(bsys, ctx, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) && !CheckSideAbility(bsys, ctx, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK)) {
                if (ctx->field_condition & FIELD_CONDITION_WEATHER) {
                    if (ctx->field_condition & WEATHER_RAIN_ANY) {
                        type = TYPE_WATER;
                    }
                    if (ctx->field_condition & WEATHER_SANDSTORM_ANY) {
                        type = TYPE_ROCK;
                    }
                    if (ctx->field_condition & WEATHER_SUNNY_ANY) {
                        type = TYPE_FIRE;
                    }
                    if (ctx->field_condition & WEATHER_HAIL_ANY) {
                        type = TYPE_ICE;
                    }
                    // BUG: If the weather is foggy, then type doesn't get set properly before being returned
                    // BUGFIX
                    if (ctx->field_condition & FIELD_STATUS_FOG) {
                        type = TYPE_NORMAL;
                    }
                    if (ctx->field_condition & WEATHER_SHADOWY_AURA_ANY) {
                        type = TYPE_TYPELESS;
                    }
                }
            }
            break;
        case MOVE_TECHNO_BLAST:
            switch (HeldItemHoldEffectGet(ctx, battlerId)) {
                case HOLD_EFFECT_BURN_DRIVE:
                    type = TYPE_FIRE;
                    break;
                case HOLD_EFFECT_DOUSE_DRIVE:
                    type = TYPE_WATER;
                    break;
                case HOLD_EFFECT_SHOCK_DRIVE:
                    type = TYPE_ELECTRIC;
                    break;
                case HOLD_EFFECT_CHILL_DRIVE:
                    type = TYPE_ICE;
                    break;
                default:
                    type = TYPE_NORMAL;
                    break;
            }
            break;
        case MOVE_REVELATION_DANCE:
            // TODO: Handle 3rd Types
            if (ctx->battlemon[battlerId].is_currently_terastallized && ctx->battlemon[battlerId].tera_type != TYPE_STELLAR) {
                // Assert that the Tera Type is valid
                GF_ASSERT(TYPE_NORMAL <= ctx->battlemon[battlerId].tera_type && TYPE_STELLAR >= ctx->battlemon[battlerId].tera_type && TYPE_TYPELESS != ctx->battlemon[battlerId].tera_type);

                type = ctx->battlemon[battlerId].tera_type;
            } else if (ctx->battlemon[battlerId].type1 != TYPE_TYPELESS) {
                type = ctx->battlemon[battlerId].type1;
            } else if (ctx->battlemon[battlerId].type2 != TYPE_TYPELESS) {
                type = ctx->battlemon[battlerId].type2;
            } /*else if (ctx->battlemon[battlerId].type3 != TYPE_TYPELESS) {
                type = ctx->battlemon[battlerId].type3;
            }*/
            else {
                type = TYPE_TYPELESS;
            }
            break;
        case MOVE_MULTI_ATTACK:
            switch (HeldItemHoldEffectGet(ctx, battlerId)) {
                case HOLD_EFFECT_FIGHTING_MEMORY:
                    type = TYPE_FIGHTING;
                    break;
                case HOLD_EFFECT_FLYING_MEMORY:
                    type = TYPE_FLYING;
                    break;
                case HOLD_EFFECT_POISON_MEMORY:
                    type = TYPE_POISON;
                    break;
                case HOLD_EFFECT_GROUND_MEMORY:
                    type = TYPE_GROUND;
                    break;
                case HOLD_EFFECT_ROCK_MEMORY:
                    type = TYPE_ROCK;
                    break;
                case HOLD_EFFECT_BUG_MEMORY:
                    type = TYPE_BUG;
                    break;
                case HOLD_EFFECT_GHOST_MEMORY:
                    type = TYPE_GHOST;
                    break;
                case HOLD_EFFECT_STEEL_MEMORY:
                    type = TYPE_STEEL;
                    break;
                case HOLD_EFFECT_FIRE_MEMORY:
                    type = TYPE_FIRE;
                    break;
                case HOLD_EFFECT_WATER_MEMORY:
                    type = TYPE_WATER;
                    break;
                case HOLD_EFFECT_GRASS_MEMORY:
                    type = TYPE_GRASS;
                    break;
                case HOLD_EFFECT_ELECTRIC_MEMORY:
                    type = TYPE_ELECTRIC;
                    break;
                case HOLD_EFFECT_PSYCHIC_MEMORY:
                    type = TYPE_PSYCHIC;
                    break;
                case HOLD_EFFECT_ICE_MEMORY:
                    type = TYPE_ICE;
                    break;
                case HOLD_EFFECT_DRAGON_MEMORY:
                    type = TYPE_DRAGON;
                    break;
                case HOLD_EFFECT_DARK_MEMORY:
                    type = TYPE_DARK;
                    break;
                case HOLD_EFFECT_FAIRY_MEMORY:
                    type = TYPE_FAIRY;
                    break;
                default:
                    type = TYPE_NORMAL;
                    break;
            }
            break;
        case MOVE_AURA_WHEEL:
            if (species == SPECIES_MORPEKO) {
                switch (form) {
                    // SPECIES_MORPEKO
                    case 0:
                        type = TYPE_ELECTRIC;
                        break;
                    // SPECIES_MORPEKO_HANGRY
                    case 1:
                        type = TYPE_DARK;
                        break;

                    default:
                        // Aura Wheel can only be successfully used by Morpeko (or a Pokémon that has transformed into Morpeko). This line does not prevent the move from being used!!!
                        type = TYPE_TYPELESS;
                        break;
                }
            } else {
                // Aura Wheel can only be successfully used by Morpeko (or a Pokémon that has transformed into Morpeko). This line does not prevent the move from being used!!!
                type = TYPE_TYPELESS;
            }
            break;
        case MOVE_TERRAIN_PULSE:
            // TODO: Do after terrain refactor
            break;
        case MOVE_TERA_BLAST:
        case MOVE_TERA_STARSTORM:
            if (ctx->battlemon[battlerId].is_currently_terastallized) {
                // Assert that the Tera Type is valid
                GF_ASSERT(TYPE_NORMAL <= ctx->battlemon[battlerId].tera_type && TYPE_STELLAR >= ctx->battlemon[battlerId].tera_type && TYPE_TYPELESS != ctx->battlemon[battlerId].tera_type);

                // Assert that Ogerpon has the correct Tera Type. However, the game should stall at Terastallization animation
                if (species == SPECIES_OGERPON) {
                    switch (form) {
                        // SPECIES_OGERPON
                        case 0:
                            GF_ASSERT(ctx->battlemon[battlerId].tera_type == TYPE_GRASS);
                            break;
                        // SPECIES_OGERPON_WELLSPRING_MASK
                        case 1:
                            GF_ASSERT(ctx->battlemon[battlerId].tera_type == TYPE_WATER);
                            break;
                        // SPECIES_OGERPON_HEARTHFLAME_MASK
                        case 2:
                            GF_ASSERT(ctx->battlemon[battlerId].tera_type == TYPE_FIRE);
                            break;
                        // SPECIES_OGERPON_CORNERSTONE_MASK
                        case 3:
                            GF_ASSERT(ctx->battlemon[battlerId].tera_type == TYPE_ROCK);
                            break;

                        default:
                            GF_ASSERT(form >= 0 && form <= 3);
                            break;
                    }
                }
                type = ctx->battlemon[battlerId].tera_type;
            } else {
                type = TYPE_NORMAL;
            }
            break;
        case MOVE_RAGING_BULL:
            if (species == SPECIES_TAUROS) {
                switch (form) {
                    // SPECIES_TAUROS_COMBAT
                    case 1:
                        type = TYPE_FIGHTING;
                        break;
                    // SPECIES_TAUROS_BLAZE
                    case 2:
                        type = TYPE_FIRE;
                        break;
                    // SPECIES_TAUROS_AQUA
                    case 3:
                        type = TYPE_WATER;
                        break;

                    default:
                        type = TYPE_NORMAL;
                        break;
                }
            } else {
                type = TYPE_NORMAL;
            }
            break;
        case MOVE_IVY_CUDGEL:
            if (species == SPECIES_OGERPON) {
                switch (form) {
                    // SPECIES_OGERPON
                    case 0:
                        type = TYPE_GRASS;
                        break;
                    // SPECIES_OGERPON_WELLSPRING_MASK
                    case 1:
                        type = TYPE_WATER;
                        break;
                    // SPECIES_OGERPON_HEARTHFLAME_MASK
                    case 2:
                        type = TYPE_FIRE;
                        break;
                    // SPECIES_OGERPON_CORNERSTONE_MASK
                    case 3:
                        type = TYPE_ROCK;
                        break;

                    default:
                        type = TYPE_GRASS;
                        break;
                }
            } else {
                type = TYPE_GRASS;
            }
            break;
        default:
            type = TYPE_NORMAL;
            break;
    }

    return GetAdjustedMoveTypeBasics(ctx, moveNo, GetBattlerAbility(ctx, battlerId), type);
}

u32 LONG_CALL StruggleCheck(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId, u32 nonSelectableMoves, u32 struggleCheckFlags) {
    // u8 buf[64];
    // sprintf(buf, "In StruggleCheck\n");
    // debugsyscall(buf);

    int movePos;
    int item = HeldItemHoldEffectGet(ctx, battlerId);

    for (movePos = 0; movePos < 4; movePos++) {
        if (!(ctx->battlemon[battlerId].move[movePos]) && (struggleCheckFlags & STRUGGLE_CHECK_NO_MOVES)) {
            nonSelectableMoves |= No2Bit(movePos);
        }
        if (!(ctx->battlemon[battlerId].pp[movePos]) && (struggleCheckFlags & STRUGGLE_CHECK_NO_PP)) {
            nonSelectableMoves |= No2Bit(movePos);
        }
        if ((ctx->battlemon[battlerId].move[movePos] == ctx->battlemon[battlerId].moveeffect.disabledMove) && (struggleCheckFlags & STRUGGLE_CHECK_DISABLED)) {
            nonSelectableMoves |= No2Bit(movePos);
        }
        if ((ctx->battlemon[battlerId].move[movePos] == ctx->waza_no_old[battlerId]) && (struggleCheckFlags & STRUGGLE_CHECK_TORMENT) && (ctx->battlemon[battlerId].condition2 & STATUS2_TORMENT)) {
            nonSelectableMoves |= No2Bit(movePos);
        }
        if (ctx->battlemon[battlerId].moveeffect.tauntTurns && (struggleCheckFlags & STRUGGLE_CHECK_TAUNT) && !(ctx->moveTbl[ctx->battlemon[battlerId].move[movePos]].power)) {
            nonSelectableMoves |= No2Bit(movePos);
        }
        if (BattleContext_CheckMoveImprisoned(bsys, ctx, battlerId, ctx->battlemon[battlerId].move[movePos]) && (struggleCheckFlags & STRUGGLE_CHECK_IMPRISON)) {
            nonSelectableMoves |= No2Bit(movePos);
        }
        if (BattleContext_CheckMoveUnuseableInGravity(bsys, ctx, battlerId, ctx->battlemon[battlerId].move[movePos]) && (struggleCheckFlags & STRUGGLE_CHECK_GRAVITY)) {
            nonSelectableMoves |= No2Bit(movePos);
        }
        if (BattleContext_CheckMoveHealBlocked(bsys, ctx, battlerId, ctx->battlemon[battlerId].move[movePos]) && (struggleCheckFlags & STRUGGLE_CHECK_HEAL_BLOCK)) {
            nonSelectableMoves |= No2Bit(movePos);
        }
        if ((ctx->battlemon[battlerId].moveeffect.encoredMove) && (ctx->battlemon[battlerId].moveeffect.encoredMove != ctx->battlemon[battlerId].move[movePos])) {
            //BUG: The flag check for encore is missing in this if statement, though it's unclear if this effects anything functionally
            nonSelectableMoves |= No2Bit(movePos);
        }
        if ((item == HOLD_EFFECT_CHOICE_ATK || item == HOLD_EFFECT_CHOICE_SPEED || item == HOLD_EFFECT_CHOICE_SPATK) && (struggleCheckFlags & STRUGGLE_CHECK_CHOICED)) {
            if (BattleMon_GetMoveIndex(&ctx->battlemon[battlerId], ctx->battlemon[battlerId].moveeffect.moveNoChoice) == 4) {
                ctx->battlemon[battlerId].moveeffect.moveNoChoice = 0;
            } else if (ctx->battlemon[battlerId].moveeffect.moveNoChoice && ctx->battlemon[battlerId].moveeffect.moveNoChoice != ctx->battlemon[battlerId].move[movePos]) {
                nonSelectableMoves |= No2Bit(movePos);
            }
        }
        if (struggleCheckFlags & STRUGGLE_CHECK_GORILLA_TACTICS && GetBattlerAbility(ctx, battlerId) == ABILITY_GORILLA_TACTICS) {
            if (ctx->waza_no_old[battlerId] != 0) {
                ctx->battlemon[battlerId].moveeffect.moveNoChoice = ctx->waza_no_old[battlerId];
            }
            if (ctx->waza_no_old[battlerId] != ctx->battlemon[battlerId].move[movePos] && ctx->waza_no_old[battlerId] != 0) {
                nonSelectableMoves |= No2Bit(movePos);
            }
        }
        if (struggleCheckFlags & STRUGGLE_CHECK_GIGATON_HAMMER) {
            // Encore allows Gigaton Hammer to be used twice in a row, but on subsequent turns of the Encore the user will be forced to Struggle.
            if (!(ctx->battlemon[battlerId].moveeffect.encoredMove && ctx->battlemon[battlerId].moveeffect.encoredTurns == 3)) {
                if (ctx->waza_no_old[battlerId] == ctx->battlemon[battlerId].move[movePos] && ctx->waza_no_old[battlerId] == MOVE_GIGATON_HAMMER) {
                    nonSelectableMoves |= No2Bit(movePos);
                }
            }
        }
        if ((struggleCheckFlags & STRUGGLE_CHECK_ASSAULT_VEST)
        && (item == HOLD_EFFECT_SPDEF_BOOST_NO_STATUS_MOVES)
        && (ctx->moveTbl[ctx->battlemon[battlerId].move[movePos]].split == SPLIT_STATUS)
        && (ctx->battlemon[battlerId].move[movePos] != MOVE_ME_FIRST)) {
            nonSelectableMoves |= No2Bit(movePos);
        }
    }
    return nonSelectableMoves;
}

//Buffer messages related to being unable to select moves?
BOOL LONG_CALL ov12_02251A28(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId, int movePos, MESSAGE_PARAM *msg) {
    // u8 buf[64];
    // sprintf(buf, "In ov12_02251A28\n");
    // debugsyscall(buf);

    BOOL ret = TRUE;

    if (StruggleCheck(bsys, ctx, battlerId, 0, STRUGGLE_CHECK_DISABLED) & No2Bit(movePos)) {
        msg->msg_tag = TAG_NICKNAME_MOVE;
        // {STRVAR_1 1, 0, 0}’s {STRVAR_1 6, 1, 0}\nis disabled!\r
        msg->msg_id = BATTLE_MSG_CANNOT_USE_MOVE_DISABLED;
        msg->msg_para[0] = CreateNicknameTag(ctx, battlerId);
        msg->msg_para[1] = ctx->battlemon[battlerId].move[movePos];
        ret = FALSE;
    } else if (StruggleCheck(bsys, ctx, battlerId, 0, STRUGGLE_CHECK_TORMENT) & No2Bit(movePos)) {
        msg->msg_tag = TAG_NICKNAME;
        // {STRVAR_1 1, 0, 0} can’t use the same move\ntwice in a row due to the torment!\r
        msg->msg_id = BATTLE_MSG_CANNOT_USE_MOVE_TORMENT;
        msg->msg_para[0] = CreateNicknameTag(ctx, battlerId);
        ret = FALSE;
    } else if (StruggleCheck(bsys, ctx, battlerId, 0, STRUGGLE_CHECK_TAUNT) & No2Bit(movePos)) {
        msg->msg_tag = TAG_NICKNAME_MOVE;
        // {STRVAR_1 1, 0, 0} can’t use\n{STRVAR_1 6, 1, 0} after the taunt!\r
        msg->msg_id = BATTLE_MSG_CANNOT_USE_MOVE_TAUNT;
        msg->msg_para[0] = CreateNicknameTag(ctx, battlerId);
        msg->msg_para[1] = ctx->battlemon[battlerId].move[movePos];
        ret = FALSE;
    } else if (StruggleCheck(bsys, ctx, battlerId, 0, STRUGGLE_CHECK_IMPRISON) & No2Bit(movePos)) {
        msg->msg_tag = TAG_NICKNAME_MOVE;
        // {STRVAR_1 1, 0, 0} can’t use\nthe sealed {STRVAR_1 6, 1, 0}!\r
        msg->msg_id = BATTLE_MSG_CANNOT_USE_MOVE_IMPRISON;
        msg->msg_para[0] = CreateNicknameTag(ctx, battlerId);
        msg->msg_para[1] = ctx->battlemon[battlerId].move[movePos];
        ret = FALSE;
    } else if (StruggleCheck(bsys, ctx, battlerId, 0, STRUGGLE_CHECK_GRAVITY) & No2Bit(movePos)) {
        msg->msg_tag = TAG_NICKNAME_MOVE;
        // {STRVAR_1 1, 0, 0} can’t use\n{STRVAR_1 6, 1, 0} because of gravity!
        msg->msg_id = BATTLE_MSG_CANNOT_USE_MOVE_GRAVITY;
        msg->msg_para[0] = CreateNicknameTag(ctx, battlerId);
        msg->msg_para[1] = ctx->battlemon[battlerId].move[movePos];
        ret = FALSE;
    } else if (StruggleCheck(bsys, ctx, battlerId, 0, STRUGGLE_CHECK_HEAL_BLOCK) & No2Bit(movePos)) {
        msg->msg_tag = TAG_NICKNAME_MOVE_MOVE;
        // {STRVAR_1 1, 0, 0} can’t use\n{STRVAR_1 6, 2, 0} because of\f{STRVAR_1 6, 1, 0}!\r
        msg->msg_id = BATTLE_MSG_CANNOT_USE_MOVE_HEAL_BLOCK;
        msg->msg_para[0] = CreateNicknameTag(ctx, battlerId);
        msg->msg_para[1] = MOVE_HEAL_BLOCK;
        msg->msg_para[2] = ctx->battlemon[battlerId].move[movePos];
        ret = FALSE;
    } else if (StruggleCheck(bsys, ctx, battlerId, 0, STRUGGLE_CHECK_CHOICED) & No2Bit(movePos)) {
        msg->msg_tag = TAG_ITEM_MOVE;
        // The {STRVAR_1 8, 0, 0} only allows the\nuse of {STRVAR_1 6, 1, 0}!\r
        msg->msg_id = BATTLE_MSG_CANNOT_USE_MOVE_CHOICED;
        msg->msg_para[0] = ctx->battlemon[battlerId].item;
        msg->msg_para[1] = ctx->battlemon[battlerId].moveeffect.moveNoChoice;
        ret = FALSE;
    } else if (StruggleCheck(bsys, ctx, battlerId, 0, STRUGGLE_CHECK_GORILLA_TACTICS) & No2Bit(movePos)) {
        msg->msg_tag = TAG_NICKNAME_MOVE;
        // {STRVAR_1 1, 0, 0} can only use {STRVAR_1 6, 1, 0}!\r
        msg->msg_id = BATTLE_MSG_CANNOT_USE_MOVE_GORILLA_TACTICS;
        msg->msg_para[0] = CreateNicknameTag(ctx, battlerId);
        msg->msg_para[1] = ctx->waza_no_old[battlerId];
        ret = FALSE;
    } else if (StruggleCheck(bsys, ctx, battlerId, 0, STRUGGLE_CHECK_GIGATON_HAMMER) & No2Bit(movePos)) {
        msg->msg_tag = TAG_MOVE;
        // {You can’t use {STRVAR_1 6, 0, 0} twice in a row!\r
        msg->msg_id = BATTLE_MSG_CANNOT_USE_MOVE_GIGATON_HAMMER;
        msg->msg_para[0] = ctx->battlemon[battlerId].move[movePos];
        ret = FALSE;
    } else if (StruggleCheck(bsys, ctx, battlerId, 0, STRUGGLE_CHECK_ASSAULT_VEST) & No2Bit(movePos)) {
        msg->msg_tag = TAG_ITEM;
        // The effects of the {STRVAR_1 8, 0, 0}\nprevent status moves from being used!
        msg->msg_id = BATTLE_MSG_CANNOT_USE_MOVE_ASSAULT_VEST;
        msg->msg_para[0] = ctx->battlemon[battlerId].item;
        ret = FALSE;
    } else if (StruggleCheck(bsys, ctx, battlerId, 0, STRUGGLE_CHECK_NO_PP) & No2Bit(movePos)) {
        msg->msg_tag = TAG_NONE;
        // There’s no PP left for this move!
        msg->msg_id = BATTLE_MSG_CANNOT_USE_MOVE_NO_PP;
        ret = FALSE;
    }

    return ret;
}

/// @brief Get the priority of the client
/// @param bsys
/// @param ctx
/// @param battlerId
/// @return Priority
int LONG_CALL GetClientActionPriority(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int battlerId) {
    int command = ctx->playerActions[battlerId][3];
    int move_pos = ctx->waza_no_pos[battlerId];
    int move = MOVE_NONE;

    if (command == SELECT_FIGHT_COMMAND) {
        if (ctx->oneTurnFlag[battlerId].struggle_flag) {
            move = MOVE_STRUGGLE;
        } else {
            move = BattlePokemonParamGet(ctx, battlerId, BATTLE_MON_DATA_MOVE_1 + move_pos, NULL);
        }
    }

    BOOL isTriageMove = FALSE;

    for (u16 i = 0; i < NELEMS(TriageMovesList); i++) {
        if (TriageMovesList[i] == move) {
            isTriageMove = TRUE;
            break;
        }
    }

    if ((GetBattlerAbility(ctx, battlerId) == ABILITY_PRANKSTER) && (GetMoveSplit(ctx, move) == SPLIT_STATUS)) {
        return ctx->moveTbl[move].priority + 1;
    }

    if ((GetBattlerAbility(ctx, battlerId) == ABILITY_GALE_WINGS) && (ctx->moveTbl[move].type == TYPE_FLYING)) {
        return ctx->moveTbl[move].priority + 1;
    }

    if ((GetBattlerAbility(ctx, battlerId) == ABILITY_TRIAGE) && (isTriageMove)) {
        return ctx->moveTbl[move].priority + 3;
    }

    return ctx->moveTbl[move].priority;
}

/// @brief Checks if a client has the type
/// @param ctx
/// @param battlerId
/// @param type
/// @return whether the client has the type
BOOL LONG_CALL HasType(struct BattleStruct *ctx, int battlerId, int type) {
    GF_ASSERT(TYPE_NORMAL < type && type < TYPE_STELLAR);
    struct BattlePokemon client = ctx->battlemon[battlerId];
    return (client.type1 == type || client.type2 == type || client.type3 == type || client.is_currently_terastallized ? client.tera_type == type : FALSE);
}


void LONG_CALL SortRawSpeedNonRNGArray(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int client_set_max;
    BOOL needToSwap = FALSE;
    void *pp2;
    client_set_max = BattleWorkClientSetMaxGet(bsys);

    int rawSpeedArray[4] = {0, 0, 0, 0};

    for (int i = 0; i < client_set_max - 1; i++) {
        ctx->rawSpeedNonRNGClientOrder[i] = ctx->turnOrder[i];

        // Get the original unmodified speed stat from the party
        pp2 = BattleWorkPokemonParamGet(bsys, i, ctx->sel_mons_no[i]);
        rawSpeedArray[i] = GetMonData(pp2, MON_DATA_SPEED, NULL);
    }

    for (int i = 0; i < client_set_max - 1; i++) {
        for (int j = 0; j < client_set_max - i - 1; j++) {
            needToSwap = FALSE;
            // Compare the raw Speed stats of Pokemon as they are in the summary screen,
            // without modifiers (no Speed Swap, no Tailwind, no +6 / -6, etc.).
            if (rawSpeedArray[ctx->rawSpeedNonRNGClientOrder[j]] < rawSpeedArray[ctx->rawSpeedNonRNGClientOrder[j + 1]]) {
                needToSwap = TRUE;
            } else if (rawSpeedArray[ctx->rawSpeedNonRNGClientOrder[j]] == rawSpeedArray[ctx->rawSpeedNonRNGClientOrder[j + 1]]) {
                // If there is a tie, apply the effect to the Pokemon that has had the ability the longest amount of time.
                if (ctx->numberOfTurnsClientHasCurrentAbility[ctx->rawSpeedNonRNGClientOrder[j]] < ctx->numberOfTurnsClientHasCurrentAbility[ctx->rawSpeedNonRNGClientOrder[j + 1]]) {
                    needToSwap = TRUE;
                } else if (ctx->numberOfTurnsClientHasCurrentAbility[ctx->rawSpeedNonRNGClientOrder[j]] == ctx->numberOfTurnsClientHasCurrentAbility[ctx->rawSpeedNonRNGClientOrder[j + 1]]) {
                    // If both players lead with Speed tying Pokemon, the Pokemon on the side of the player who is the host of the battle (the player with their trainer card on the left of the pre-battle challenge screen) will be considered to have the ability longer.
                    if (!IsClientEnemy(bsys, ctx->rawSpeedNonRNGClientOrder[j]) && IsClientEnemy(bsys, ctx->rawSpeedNonRNGClientOrder[j + 1])) {
                        needToSwap = TRUE;
                    } else if (IsClientEnemy(bsys, ctx->rawSpeedNonRNGClientOrder[j]) == IsClientEnemy(bsys, ctx->rawSpeedNonRNGClientOrder[j + 1])) {
                        // If the host leads two Pokemon that Speed tie, the Pokemon on the left is considered to have had the ability the longest.
                        // 3 1
                        // 0 2
                        if (ctx->rawSpeedNonRNGClientOrder[j] < ctx->rawSpeedNonRNGClientOrder[j + 1]) {
                            needToSwap = TRUE;
                        }
                    }
                }
            }

            if (needToSwap) {
                // Swap elements
                u8 temp = ctx->rawSpeedNonRNGClientOrder[j];
                ctx->rawSpeedNonRNGClientOrder[j] = ctx->rawSpeedNonRNGClientOrder[j + 1];
                ctx->rawSpeedNonRNGClientOrder[j + 1] = temp;
            }
        }
    }
}

const int typeToBerryMapping[] = {
    [TYPE_NORMAL]   = ITEM_CHILAN_BERRY,
    [TYPE_FIGHTING] = ITEM_CHOPLE_BERRY,
    [TYPE_FLYING]   = ITEM_COBA_BERRY,
    [TYPE_POISON]   = ITEM_KEBIA_BERRY,
    [TYPE_GROUND]   = ITEM_SHUCA_BERRY,
    [TYPE_ROCK]     = ITEM_CHARTI_BERRY,
    [TYPE_BUG]      = ITEM_TANGA_BERRY,
    [TYPE_GHOST]    = ITEM_KASIB_BERRY,
    [TYPE_STEEL]    = ITEM_BABIRI_BERRY,
    [TYPE_FAIRY]    = ITEM_ROSELI_BERRY,
    [TYPE_FIRE]     = ITEM_OCCA_BERRY,
    [TYPE_WATER]    = ITEM_PASSHO_BERRY,
    [TYPE_GRASS]    = ITEM_RINDO_BERRY,
    [TYPE_ELECTRIC] = ITEM_WACAN_BERRY,
    [TYPE_PSYCHIC]  = ITEM_PAYAPA_BERRY,
    [TYPE_ICE]      = ITEM_YACHE_BERRY,
    [TYPE_DRAGON]   = ITEM_HABAN_BERRY,
    [TYPE_DARK]     = ITEM_COLBUR_BERRY,
};

BOOL LONG_CALL CanActivateDamageReductionBerry(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    if ((ctx->moveStatusFlagForSpreadMoves[defender] & MOVE_STATUS_FLAG_SUPER_EFFECTIVE)
    && !(ctx->moveStatusFlagForSpreadMoves[defender] & MOVE_STATUS_FLAG_OHKO_HIT)) {
        return typeToBerryMapping[ctx->move_type] == GetBattleMonItem(ctx, defender);
    }
    return FALSE;
}

BOOL IsPureType(struct BattleStruct *ctx, int battlerId, int type) {
    GF_ASSERT(TYPE_NORMAL < type && type < TYPE_STELLAR);
    struct BattlePokemon client = ctx->battlemon[battlerId];
    return ((client.type1 == type && client.type2 == type && client.type3 == type) || (client.is_currently_terastallized ? client.tera_type == type : FALSE));
}

/// @brief Check if ability is disabled if user is Transformed
/// @param ability
/// @return `TRUE` or `FALSE`
BOOL LONG_CALL AbilityNoTransform(int ability) {
    switch (ability) {
        case ABILITY_DISGUISE:
        case ABILITY_GULP_MISSILE:
        case ABILITY_ICE_FACE:
        case ABILITY_NEUTRALIZING_GAS:
        case ABILITY_HUNGER_SWITCH:
        case ABILITY_ZERO_TO_HERO:
        case ABILITY_PROTOSYNTHESIS:
        case ABILITY_QUARK_DRIVE:
        case ABILITY_EMBODY_ASPECT:
        case ABILITY_EMBODY_ASPECT_2:
        case ABILITY_EMBODY_ASPECT_3:
        case ABILITY_EMBODY_ASPECT_4:
        case ABILITY_TERA_SHIFT:
            return TRUE;
            break;

    default:
        break;
    }
    return FALSE;
}

u32 LONG_CALL GetBattlerAbility(struct BattleStruct *ctx, int battlerId) {
    if ((ctx->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_GASTRO_ACID) && ctx->battlemon[battlerId].ability != ABILITY_MULTITYPE) {
        return ABILITY_NONE;
    } else if ((ctx->field_condition & FIELD_STATUS_GRAVITY) && ctx->battlemon[battlerId].ability == ABILITY_LEVITATE) {
        return ABILITY_NONE;
    } else if ((ctx->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) && ctx->battlemon[battlerId].ability == ABILITY_LEVITATE) {
        return ABILITY_NONE;
    } else if (AbilityNoTransform(ctx->battlemon[battlerId].ability) && (ctx->battlemon[battlerId].condition2 & STATUS2_TRANSFORMED)) {
        return ABILITY_NONE;
    } else {
        return ctx->battlemon[battlerId].ability;
    }
}

/// @brief Check if ability can't be suppressed by Gastro Acid or affected by Mummy. See notes for DisabledByNeutralizingGas.
/// @param ability
/// @ref AbilityDisabledByNeutralizingGas
/// @return `TRUE` or `FALSE`
BOOL LONG_CALL AbilityCantSupress(int ability) {
    switch (ability) {
    case ABILITY_MULTITYPE:
    case ABILITY_ZEN_MODE:
    case ABILITY_STANCE_CHANGE:
    case ABILITY_SHIELDS_DOWN:
    case ABILITY_SCHOOLING:
    case ABILITY_DISGUISE:
    case ABILITY_BATTLE_BOND:
    case ABILITY_POWER_CONSTRUCT:
    case ABILITY_COMATOSE:
    case ABILITY_RKS_SYSTEM:
    case ABILITY_GULP_MISSILE:
    case ABILITY_ICE_FACE:
    case ABILITY_AS_ONE_GLASTRIER:
    case ABILITY_AS_ONE_SPECTRIER:
    case ABILITY_ZERO_TO_HERO:
    case ABILITY_TERA_SHIFT:
        return TRUE;
        break;

    default:
        break;
    }
    return FALSE;
}

void BattleSystem_BufferMessage(struct BattleSystem *bsys, MESSAGE_PARAM *msg) {
    // debug_printf("In BattleSystem_BufferMessage\n");

    u32 ovyId, offset;

    void (*internalFunc)(struct BattleSystem *bsys, MESSAGE_PARAM *msg);

    UnloadOverlayByID(6); // unload overlay 6 so this can be loaded

    ovyId = OVERLAY_BATTLESYSTEM_BUFFERMESSAGE;
    offset = 0x023C0400 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (void (*)(struct BattleSystem *bsys, MESSAGE_PARAM *msg))(offset);
    internalFunc(bsys, msg);
    UnloadOverlayByID(ovyId);

    HandleLoadOverlay(6, 2); // reload 6 so things are okay
}

// banlist is handled in original function, no need to include it here
u32 RollMetronomeMove(struct BattleSystem *bsys)
{
    return (BattleRand(bsys) % NUM_OF_MOVES) + 1;
}
