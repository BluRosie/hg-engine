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
#include "../../include/q412.h"

// declaration needed for below
BOOL StrongWindsShouldWeaken(struct BattleSystem *bw, struct BattleStruct *sp, int typeTableEntryNo, int defender_type);
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
    MOVE_SYRUP_BOMB,
    MOVE_WEATHER_BALL,
    MOVE_ZAP_CANNON,
};

const u16 WindMovesTable[] = {
    MOVE_AEROBLAST,
    MOVE_AIR_CUTTER,
    MOVE_BLEAKWIND_STORM,
    MOVE_BLIZZARD,
    MOVE_FAIRY_WIND,
    MOVE_GUST,
    MOVE_HEAT_WAVE,
    MOVE_HURRICANE,
    MOVE_ICY_WIND,
    MOVE_PETAL_BLIZZARD,
    MOVE_SANDSEAR_STORM,
    MOVE_SANDSTORM,
    MOVE_SPRINGTIDE_STORM,
    MOVE_TAILWIND,
    MOVE_TWISTER,
    MOVE_WHIRLWIND,
    MOVE_WILDBOLT_STORM,
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

#ifdef FANCY_PRINT_NICKNAME

// Supports only A-z for now
void LoadNicknameToCharArray(u16 nickname[], char buf[]) {
    for (int j = 0; j < 11; j++) {
        if (nickname[j] == 0xFFFF) {
            buf[j] = '\0';
            break;
        }
        if (nickname[j] == 0x01BE) {
            buf[j] = '-';
            continue;
        }
        if (nickname[j] == 0x01DE) {
            buf[j] = ' ';
            continue;
        }
        if (nickname[j] < 324) {
            buf[j] = nickname[j] - 234;
            continue;
        } else {
            buf[j] = nickname[j] - 228;
            continue;
        }
    }
}

#endif

// set sp->waza_status_flag |= MOVE_STATUS_FLAG_MISS if a miss
BOOL CalcAccuracy(void *bw, struct BattleStruct *sp, int attacker, int defender, int move_no) {
    // https://www.smogon.com/forums/threads/sword-shield-battle-mechanics-research.3655528/page-58#post-8684263

    // Apply accuracy / evasion modifiers
    s16 accuracy;
    s8 temp;
    s8 stat_stage_acc, stat_stage_evasion;
    int hold_effect, hold_effect_atk;
    u8 move_type UNUSED; // unused but will be needed
    u8 move_split;
    u16 atk_ability = GetBattlerAbility(sp, attacker);
    int i;
    int maxBattlers = BattleWorkClientSetMaxGet(bw);
    int accuracyModifier = UQ412__1_0;

    if (I_AM_TERAPAGOS_AND_I_NEED_TO_KO_CARMINES_SINISTCHA(bw, sp, attacker)) {
        return FALSE;
    }

    if (BattleTypeGet(bw) & BATTLE_TYPE_CATCHING_DEMO) {
        return FALSE;
    }

    if (sp->server_status_flag & SERVER_STATUS_FLAG_x20) {
        return FALSE;
    }

    if (sp->server_status_flag & SERVER_STATUS_FLAG_OTHER_ACCURACY_CALC) {
        return FALSE;
    }

    move_type = GetAdjustedMoveType(sp, attacker, move_no);
    move_split = GetMoveSplit(sp, move_no);

    // 4. Look up the move's "base accuracy". For example, Fire Blast's base accuracy is 85.

    accuracy = sp->moveTbl[move_no].accuracy;

    if (accuracy == 0) {
        return FALSE;
    }

    // 5. If the move is a status move, has greater than 50% accuracy, and the target has Wonder Skin, or the move is Thunder / Hurricane and the weather is sun, set the move's accuracy to 50.

    // handle wonder skin
    if ((MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_WONDER_SKIN) == TRUE)
    && (GetMoveSplit(sp, move_no) == SPLIT_STATUS)) {
        accuracy = accuracy > 50 ? 50 : accuracy;
    }

    if ((CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0)
    && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0)) {
        if ((sp->field_condition & WEATHER_SUNNY_ANY)
        // thunder sucks in the sun
        && ((sp->moveTbl[move_no].effect == MOVE_EFFECT_THUNDER)
        // so does hurricane
        || (sp->moveTbl[move_no].effect == MOVE_EFFECT_HURRICANE))) {
            accuracy = 50;
        }
    }

    // 5.5 We handle Fog here because there is no vanilla Gen 5+ implementation

    if ((CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0)
    && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0)) {
        if (sp->field_condition & FIELD_STATUS_FOG) {
            accuracy = accuracy * 6 / 10;
        }
    }

    // 6. Chain the accuracy and evasion modifiers

    // 6.1 Gravity

    if (sp->field_condition & FIELD_STATUS_GRAVITY) {
        accuracyModifier = QMul_RoundUp(accuracyModifier, UQ412__1_67);
    }

    // 6.2 Abilities; order is determined by raw Speed with a non-RNG Speed tie.

    SortRawSpeedNonRNGArray(bw, sp);

    for (i = 0; i < maxBattlers; i++) {

        // Tangled Feet - 2048/4096

        if ((defender == sp->rawSpeedNonRNGClientOrder[i])
        && (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_TANGLED_FEET) == TRUE)
        && (sp->battlemon[defender].condition2 & STATUS2_CONFUSION)) {
            accuracyModifier = QMul_RoundUp(accuracyModifier, UQ412__0_5);
            continue;
        }

        // Hustle - 3277/4096

        if ((attacker == sp->rawSpeedNonRNGClientOrder[i])
        && (atk_ability == ABILITY_HUSTLE)
        && (move_split == SPLIT_PHYSICAL)) {
            accuracyModifier = QMul_RoundUp(accuracyModifier, UQ412__0_8);
            continue;
        }

        // Sand Veil- 3277/4096

        if ((sp->field_condition & WEATHER_SANDSTORM_ANY)
        && (defender == sp->rawSpeedNonRNGClientOrder[i])
        && MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_SAND_VEIL)) {
            accuracyModifier = QMul_RoundUp(accuracyModifier, UQ412__0_8);
            continue;
        }

        // Snow Cloak - 3277/4096
        if ((sp->field_condition & (WEATHER_HAIL_ANY | WEATHER_SNOW_ANY))
        && (defender == sp->rawSpeedNonRNGClientOrder[i])
        && MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_SNOW_CLOAK)) {
            accuracyModifier = QMul_RoundUp(accuracyModifier, UQ412__0_8);
            continue;
        }

        // Compound Eyes - 5325/4096

        if ((attacker == sp->rawSpeedNonRNGClientOrder[i])
        && (atk_ability == ABILITY_COMPOUND_EYES)) {
            accuracyModifier = QMul_RoundUp(accuracyModifier, UQ412__1_3);
        }

        // Victory Star - 4506/4096 for each Victory Star

        if (BATTLER_ALLY(attacker) == sp->rawSpeedNonRNGClientOrder[i]
        && GetBattlerAbility(sp, sp->rawSpeedNonRNGClientOrder[i]) == ABILITY_VICTORY_STAR) {
            accuracyModifier = QMul_RoundUp(accuracyModifier, UQ412__1_1_BUT_HIGHER);
        }
    }

    // 6.3 Items; order is determined by raw Speed with a non-RNG Speed tie.

    for (i = 0; i < maxBattlers; i++) {
        if (defender == sp->rawSpeedNonRNGClientOrder[i]) {
            hold_effect = HeldItemHoldEffectGet(sp, defender);

            // Bright Powder - 3686/4096
            // Lax Incense - 3686/4096

            if (hold_effect == HOLD_EFFECT_ACC_REDUCE) {
                u32 multiplierFromItems = UQ412__1_0;
                hold_effect_atk = HeldItemAtkGet(sp, defender, 0);
                // alternate subtracting 0.099853515625 and 0.10009765625 starting with latter
                for (int j = 0; j < hold_effect_atk; j += 10)
                {
                    multiplierFromItems -= (j & 1) ? UQ412__0_1 : UQ412__0_1_BUT_HIGHER;
                }
                accuracyModifier = QMul_RoundUp(accuracyModifier, multiplierFromItems);
            }
        }

        if (attacker == sp->rawSpeedNonRNGClientOrder[i]) {
            hold_effect = HeldItemHoldEffectGet(sp, attacker);

            // Wide Lens - 4505/4096

            if (hold_effect == HOLD_EFFECT_ACCURACY_UP) {
                accuracyModifier = QMul_RoundUp(accuracyModifier, UQ412__1_1);
            }

            // Zoom Lens - 4915/4096

            // Wide Lens - 4505/4096 (param 10 - 409)
            // Zoom Lens - 4915/4096 (param 20 - 819)
            // TODO: We modified playerActions in `ServerBeforeActInternal`. Does it affect `IsMovingAfterClient`?

            if (hold_effect == HOLD_EFFECT_ACCURACY_UP
            || ((hold_effect == HOLD_EFFECT_ACCURACY_UP_SLOWER) && (IsMovingAfterClient(sp, defender) == TRUE))) {
                u32 multiplierFromItems = UQ412__1_0;
                hold_effect_atk = HeldItemAtkGet(sp, attacker, 0);
                // alternate adding 0.099853515625 and 0.10009765625 starting with former
                for (int j = 0; j < hold_effect_atk; j += 10)
                {
                    multiplierFromItems += (j & 1) ? UQ412__0_1_BUT_HIGHER : UQ412__0_1;
                }
                accuracyModifier = QMul_RoundUp(accuracyModifier, multiplierFromItems);
            }
        }
    }

    // 7. Apply a modifier to the value from step 5) with the result of step 6). That is, pokeRound[(step 5 * step 6) / 4096], where pokeRound means do standard rounding, but round down on 0.5. The resulting value can be greater than 100.

    accuracy = QMul_RoundDown(accuracy, accuracyModifier);

    // Apply accuracy stat boosts / drops

    // Determine the number of accuracy / evasion boosts. The number must be within 0-12. (0 = -6, 1 = -5, 6 = 0, 12 = +6, etc.)

    stat_stage_acc = sp->battlemon[attacker].states[STAT_ACCURACY] - 6;
    GF_ASSERT(stat_stage_acc >= 0 && stat_stage_acc <= 12);
    stat_stage_evasion = 6 - sp->battlemon[defender].states[STAT_EVASION];
    GF_ASSERT(stat_stage_evasion >= 0 && stat_stage_evasion <= 12);

    // 8. If the user has Keen Eye or Unaware, or the move is Sacred Sword / Chip Away / Darkest Lariat, or the target is identified (Odor Sleuth / Foresight / Miracle Eye) and has positive evasion boosts, set the target's evasion boosts to 6 (+0).

    if ((MoldBreakerAbilityCheck(sp, attacker, attacker, ABILITY_ILLUMINATE) || MoldBreakerAbilityCheck(sp, attacker, attacker, ABILITY_KEEN_EYE) || MoldBreakerAbilityCheck(sp, attacker, attacker, ABILITY_UNAWARE) || MoldBreakerAbilityCheck(sp, attacker, attacker, ABILITY_MINDS_EYE))
    || (move_no == MOVE_SACRED_SWORD || move_no == MOVE_CHIP_AWAY || move_no == MOVE_DARKEST_LARIAT)
    || (((sp->battlemon[defender].condition2 & STATUS2_FORESIGHT) || (sp->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_MIRACLE_EYE)) && (stat_stage_evasion < 0))) {
        stat_stage_evasion = 0;
    }

    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_UNAWARE) == TRUE) {
        stat_stage_acc = 0;
    }

    // 9. Start with 6, then add all of the user's accuracy stat boosts / drops, and subtract all of the target's evasion stat boosts / drops.

    temp = 6 + stat_stage_evasion + stat_stage_acc;

    if (temp < 0)
    {
        temp = 0;
    }
    if (temp > 12)
    {
        temp = 12;
    }

    // 10. Take the value of step 9 and compare to the following table. Multiply the result from step 7 by the numerator first, then divide by the denominator and floor the result. If the resulting value would be greater than 100, make it 100.

    accuracy *= sAccStatChanges[temp].numerator;
    accuracy /= sAccStatChanges[temp].denominator;

    accuracy = accuracy > 100 ? 100 : accuracy;

    // Final steps

    // 11. If Micle Berry would boost the move's accuracy, pokeRound([step 10 * 4915]/4096).

    if (sp->boostedAccuracy) {
        accuracy = QMul_RoundDown(accuracy, UQ412__1_2);
    }

    // 12. If the percentage is above 100, make it 100.

    accuracy = accuracy > 100 ? 100 : accuracy;

    // 13. If the affection of the target is 4 hearts or more, subtract 10. You can't go below 0.
    // https://bulbapedia.bulbagarden.net/wiki/Friendship

#ifdef FRIENDSHIP_EFFECTS
    if ((sp->battlemon[defender].friendship == 255)
    && !(BattleTypeGet(bw) & BATTLE_TYPE_NO_EXPERIENCE)
    && ClientBelongsToPlayer(bw, defender)) {
        if (accuracy < 10) {
            accuracy = 0;
        } else {
            accuracy -= 10;
        }
    }
#endif

    // 14. Roll a random number 0-99 inclusive. If the accuracy value is greater than that random number, the move hits. (That is, check if accuracy > rand(100)).

    if (accuracy <= (BattleRand(bw) % 100)) {
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
u8 LONG_CALL CalcSpeed(void *bw, struct BattleStruct *sp, int client1, int client2, int flag) {
    u8 ret = 0;
    u32 speed1, speed2;
    u8 hold_effect1;
    u8 hold_effect2;
    s8 priority1 = sp->clientPriority[client1];
    s8 priority2 = sp->clientPriority[client2];
    u8 quick_claw1 = sp->battlemon[client1].moveeffect.quickClawFlag || sp->battlemon[client1].moveeffect.custapBerryFlag;
    u8 quick_claw2 = sp->battlemon[client2].moveeffect.quickClawFlag || sp->battlemon[client2].moveeffect.custapBerryFlag;
    u8 move_last1 = 0, move_last2 = 0;
    int ability1;
    int ability2;
    int stat_stage_spd1;
    int stat_stage_spd2;
    u32 i;

    u32 speedModifier1 = UQ412__1_0;
    u32 speedModifier2 = UQ412__1_0;

    ability1 = GetBattlerAbility(sp, client1);
    ability2 = GetBattlerAbility(sp, client2);

    hold_effect1 = HeldItemHoldEffectGet(sp, client1);
    hold_effect2 = HeldItemHoldEffectGet(sp, client2);

    stat_stage_spd1 = sp->battlemon[client1].states[STAT_SPEED];
    stat_stage_spd2 = sp->battlemon[client2].states[STAT_SPEED];

    // Begin calculating Speed Modifiers

    // https://web.archive.org/web/20241226231016/https://www.trainertower.com/dawoblefets-damage-dissertation/
    // NormalRound is QMul_RoundUp
    // pokeRound is QMul_RoundDown

#ifdef DEBUG_SPEED_CALC
    char client1Nickname[12];
    char client2Nickname[12];
    LoadNicknameToCharArray(sp->battlemon[client1].nickname, client1Nickname);
    LoadNicknameToCharArray(sp->battlemon[client2].nickname, client2Nickname);
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] client1: %s\n", client1Nickname);
    debug_printf("[CalcSpeed] client2: %s\n", client2Nickname);
#endif

#ifdef DEBUG_SPEED_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] %s's base speed: %d\n", client1Nickname, sp->battlemon[client1].speed);
    debug_printf("[CalcSpeed] %s's base speed: %d\n", client2Nickname, sp->battlemon[client2].speed);
#endif

    speed1 = (sp->battlemon[client1].speed * StatBoostModifiers[stat_stage_spd1][0] / StatBoostModifiers[stat_stage_spd1][1]) % 65536;
    speed2 = (sp->battlemon[client2].speed * StatBoostModifiers[stat_stage_spd2][0] / StatBoostModifiers[stat_stage_spd2][1]) % 65536;

#ifdef DEBUG_SPEED_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] %s's speed1 after stat changes: %d\n", client1Nickname, speed1);
    debug_printf("[CalcSpeed] %s's speed2 after stat changes: %d\n", client2Nickname, speed2);
#endif

    // Step 1: 2x Abilities

    if ((CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0)
     && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0)) {
        if (((ability1 == ABILITY_SWIFT_SWIM) && (sp->field_condition & WEATHER_RAIN_ANY))
         || ((ability1 == ABILITY_CHLOROPHYLL) && (sp->field_condition & WEATHER_SUNNY_ANY))
         || ((ability1 == ABILITY_SAND_RUSH) && (sp->field_condition & WEATHER_SANDSTORM_ANY))
         || ((ability1 == ABILITY_SLUSH_RUSH) && (sp->field_condition & (WEATHER_HAIL_ANY | WEATHER_SNOW_ANY)))) {
            speedModifier1 = QMul_RoundUp(speedModifier1, UQ412__2_0);
        }
        if (((ability2 == ABILITY_SWIFT_SWIM) && (sp->field_condition & WEATHER_RAIN_ANY))
         || ((ability2 == ABILITY_CHLOROPHYLL) && (sp->field_condition & WEATHER_SUNNY_ANY))
         || ((ability2 == ABILITY_SAND_RUSH) && (sp->field_condition & WEATHER_SANDSTORM_ANY))
         || ((ability2 == ABILITY_SLUSH_RUSH) && (sp->field_condition & (WEATHER_HAIL_ANY | WEATHER_SNOW_ANY)))) {
            speedModifier2 = QMul_RoundUp(speedModifier2, UQ412__2_0);
        }
    }

    if ((sp->terrainOverlay.type == ELECTRIC_TERRAIN && sp->terrainOverlay.numberOfTurnsLeft > 0)) {
        if (ability1 == ABILITY_SURGE_SURFER) {
            speedModifier1 = QMul_RoundUp(speedModifier1, UQ412__2_0);
        }

        if (ability2 == ABILITY_SURGE_SURFER) {
            speedModifier2 = QMul_RoundUp(speedModifier2, UQ412__2_0);
        }
    }

    if ((ability1 == ABILITY_UNBURDEN)
    && (sp->battlemon[client1].moveeffect.knockOffFlag)
    && (sp->battlemon[client1].item == 0)) {
        speedModifier1 = QMul_RoundUp(speedModifier1, UQ412__2_0);
    }

    if ((ability2 == ABILITY_UNBURDEN)
    && (sp->battlemon[client2].moveeffect.knockOffFlag)
    && (sp->battlemon[client2].item == 0)) {
        speedModifier2 = QMul_RoundUp(speedModifier2, UQ412__2_0);
    }

#ifdef DEBUG_SPEED_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] Step 1: 2x Abilities\n");
    debug_printf("[CalcSpeed] %s's speedModifier1: %d\n", client1Nickname, speedModifier1);
    debug_printf("[CalcSpeed] %s's speedModifier2: %d\n", client2Nickname, speedModifier2);
#endif

    // Step 2: Quick Feet

    if ((ability1 == ABILITY_QUICK_FEET) && (sp->battlemon[client1].condition & STATUS_ANY_PERSISTENT)) {
        speedModifier1 = QMul_RoundUp(speedModifier1, UQ412__1_5);
    }

    if ((ability2 == ABILITY_QUICK_FEET) && (sp->battlemon[client2].condition & STATUS_ANY_PERSISTENT)) {
        speedModifier2 = QMul_RoundUp(speedModifier2, UQ412__1_5);
    }

#ifdef DEBUG_SPEED_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] Step 2: Quick Feet\n");
    debug_printf("[CalcSpeed] %s's speedModifier1: %d\n", client1Nickname, speedModifier1);
    debug_printf("[CalcSpeed] %s's speedModifier2: %d\n", client2Nickname, speedModifier2);
#endif

    // Step 3: Slow Start

    if ((ability1 == ABILITY_SLOW_START)
    && ((sp->total_turn - sp->battlemon[client1].moveeffect.slowStartTurns) < 5)) {
        speedModifier1 = QMul_RoundUp(speedModifier1, UQ412__0_5);
    }

    if ((ability2 == ABILITY_SLOW_START)
    && ((sp->total_turn - sp->battlemon[client2].moveeffect.slowStartTurns) < 5)) {
        speedModifier2 = QMul_RoundUp(speedModifier2, UQ412__0_5);
    }
#ifdef DEBUG_SPEED_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] Step 3: Slow Start\n");
    debug_printf("[CalcSpeed] %s's speedModifier1: %d\n", client1Nickname, speedModifier1);
    debug_printf("[CalcSpeed] %s's speedModifier2: %d\n", client2Nickname, speedModifier2);
#endif

    // Step 4: Quick Powder

    if ((hold_effect1 == HOLD_EFFECT_DITTO_SPEED_UP) && (sp->battlemon[client1].species == SPECIES_DITTO)
        // Not transformed
        && !(sp->battlemon[client1].condition2 & STATUS2_TRANSFORMED)) {
        speedModifier1 = QMul_RoundUp(speedModifier1, UQ412__2_0);
    }

    if ((hold_effect2 == HOLD_EFFECT_DITTO_SPEED_UP)
    && (sp->battlemon[client2].species == SPECIES_DITTO)
    // Not transformed
    && !(sp->battlemon[client2].condition2 & STATUS2_TRANSFORMED)) {
        speedModifier2 = QMul_RoundUp(speedModifier2, UQ412__2_0);
    }

#ifdef DEBUG_SPEED_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] Step 4: Quick Powder\n");
    debug_printf("[CalcSpeed] %s's speedModifier1: %d\n", client1Nickname, speedModifier1);
    debug_printf("[CalcSpeed] %s's speedModifier2: %d\n", client2Nickname, speedModifier2);
#endif

    // Step 5: Choice Scarf

    if (hold_effect1 == HOLD_EFFECT_CHOICE_SPEED) {
        speedModifier1= QMul_RoundUp(speedModifier1, UQ412__1_5);
    }

    if (hold_effect2 == HOLD_EFFECT_CHOICE_SPEED) {
        speedModifier2 = QMul_RoundUp(speedModifier2, UQ412__1_5);
    }

#ifdef DEBUG_SPEED_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] Step 5: Choice Scarf\n");
    debug_printf("[CalcSpeed] %s's speedModifier1: %d\n", client1Nickname, speedModifier1);
    debug_printf("[CalcSpeed] %s's speedModifier2: %d\n", client2Nickname, speedModifier2);
#endif

    // Step 6: Iron Ball / Macho Brace / Power EV items

    for (i = 0; i < NELEMS(DecreaseSpeedHoldEffects); i++) {
        if (BattleItemDataGet(sp, sp->battlemon[client1].item, 1) == DecreaseSpeedHoldEffects[i]) {
            if (!(GetBattlerAbility(sp, client1) == ABILITY_KLUTZ && DecreaseSpeedHoldEffects[i] == HOLD_EFFECT_SPEED_DOWN_GROUNDED)) {
                speedModifier1 = QMul_RoundUp(speedModifier1, UQ412__0_5);
                break;
            }
        }
    }

    for (i = 0; i < NELEMS(DecreaseSpeedHoldEffects); i++) {
        if (BattleItemDataGet(sp, sp->battlemon[client2].item, 1) == DecreaseSpeedHoldEffects[i]) {
            if (!(GetBattlerAbility(sp, client2) == ABILITY_KLUTZ && DecreaseSpeedHoldEffects[i] == HOLD_EFFECT_SPEED_DOWN_GROUNDED)) {
                speedModifier2 = QMul_RoundUp(speedModifier2, UQ412__0_5);
                break;
            }
        }
    }

#ifdef DEBUG_SPEED_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] Step 6: Iron Ball / Macho Brace / Power EV items\n");
    debug_printf("[CalcSpeed] %s's speedModifier1: %d\n", client1Nickname, speedModifier1);
    debug_printf("[CalcSpeed] %s's speedModifier2: %d\n", client2Nickname, speedModifier2);
#endif

    // Step 7: Tailwind

    if (sp->tailwindCount[IsClientEnemy(bw, client1)]) { // new tailwind handling
        speedModifier1 = QMul_RoundUp(speedModifier1, UQ412__2_0);
    }

    if (sp->tailwindCount[IsClientEnemy(bw, client2)]) { // new tailwind handling
        speedModifier2 = QMul_RoundUp(speedModifier2, UQ412__2_0);
    }

#ifdef DEBUG_SPEED_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] Step 7: Tailwind\n");
    debug_printf("[CalcSpeed] %s's speedModifier1: %d\n", client1Nickname, speedModifier1);
    debug_printf("[CalcSpeed] %s's speedModifier2: %d\n", client2Nickname, speedModifier2);
#endif

    // Step 8: Swamp

    // TODO
    if (FALSE) {
        speedModifier1 = QMul_RoundUp(speedModifier1, UQ412__0_25);
    }

    if (FALSE) {
        speedModifier2 = QMul_RoundUp(speedModifier2, UQ412__0_25);
    }

#ifdef DEBUG_SPEED_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] Step 8: Swamp\n");
    debug_printf("[CalcSpeed] %s's speedModifier1: %d\n", client1Nickname, speedModifier1);
    debug_printf("[CalcSpeed] %s's speedModifier2: %d\n", client2Nickname, speedModifier2);
#endif

    // Step 9: Apply limit
    // https://www.smogon.com/forums/threads/sword-shield-battle-mechanics-research.3655528/page-59#post-8704137

    speedModifier1 = speedModifier1 < 410 ? 410 : speedModifier1;
    speedModifier2 = speedModifier2 < 410 ? 410 : speedModifier2;

#ifdef DEBUG_SPEED_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] Step 9: Apply limit\n");
    debug_printf("[CalcSpeed] %s's speedModifier1: %d\n", client1Nickname, speedModifier1);
    debug_printf("[CalcSpeed] %s's speedModifier2: %d\n", client2Nickname, speedModifier2);
#endif

    // Step 10: Apply the chained modifier to the starting speed

    speed1 = QMul_RoundDown(speed1, speedModifier1);
    speed2 = QMul_RoundDown(speed2, speedModifier2);

#ifdef DEBUG_SPEED_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] Step 10: Apply the chained modifier to the starting speed\n");
    debug_printf("[CalcSpeed] %s's speed1: %d\n", client1Nickname, speed1);
    debug_printf("[CalcSpeed] %s's speed2: %d\n", client2Nickname, speed2);
#endif

    // Step 11: Paralysis

    if ((ability1 != ABILITY_QUICK_FEET)
    && sp->battlemon[client1].condition & STATUS_PARALYSIS) {
        speed1 = QMul_RoundUp(speed1, UQ412__0_5);  // gen 7 on only halves speed for paralysis
    }

    if ((ability2 != ABILITY_QUICK_FEET)
    && sp->battlemon[client2].condition & STATUS_PARALYSIS) {
        speed2 = QMul_RoundUp(speed2, UQ412__0_5);  // gen 7 on only halves speed for paralysis
    }

#ifdef DEBUG_SPEED_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] Step 11: Paralysis\n");
    debug_printf("[CalcSpeed] %s's speed1: %d\n", client1Nickname, speed1);
    debug_printf("[CalcSpeed] %s's speed2: %d\n", client2Nickname, speed2);
#endif

    // Step 12: Apply limit

    speed1 = speed1 % 65536;
    speed1 = speed1 > 10000 ? 10000 : speed1;
    speed2 = speed2 % 65536;
    speed2 = speed2 > 10000 ? 10000 : speed2;

#ifdef DEBUG_SPEED_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] Step 12: Apply limit\n");
    debug_printf("[CalcSpeed] %s's speed1: %d\n", client1Nickname, speed1);
    debug_printf("[CalcSpeed] %s's speed2: %d\n", client2Nickname, speed2);
#endif

    // Step 13: Speed calculations stop here for the purposes of Gyro Ball / Electro Ball

    sp->effectiveSpeed[client1] = speed1;
    sp->effectiveSpeed[client2] = speed2;

#ifdef DEBUG_SPEED_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] Step 13: Speed calculations stop here for the purposes of Gyro Ball / Electro Ball\n");
    debug_printf("[CalcSpeed] %s's speed1: %d\n", client1Nickname, speed1);
    debug_printf("[CalcSpeed] %s's speed2: %d\n", client2Nickname, speed2);
#endif

    // Step 14: Trick Room

    if (sp->field_condition & FIELD_STATUS_TRICK_ROOM) {
        speed1 = 10000 - speed1;
        speed2 = 10000 - speed2;
    }

#ifdef DEBUG_SPEED_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] Step 14: Trick Room\n");
    debug_printf("[CalcSpeed] %s's speed1: %d\n", client1Nickname, speed1);
    debug_printf("[CalcSpeed] %s's speed2: %d\n", client2Nickname, speed2);
#endif

    // Step 15: Apply Limit

    speed1 = speed1 % 8192;
    speed2 = speed2 % 8192;

#ifdef DEBUG_SPEED_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcSpeed] Step 15: Apply Limit\n");
    debug_printf("[CalcSpeed] %s's speed1: %d\n", client1Nickname, speed1);
    debug_printf("[CalcSpeed] %s's speed2: %d\n", client2Nickname, speed2);
    debug_printf("[CalcSpeed] End of calculating Speed Modifiers\n");
    debug_printf("\n=================\n");
#endif

    // End of calculating Speed Modifiers

    // if one mon is fainted and the other isn't, then the alive one obviously goes first
    if ((sp->battlemon[client1].hp == 0) && (sp->battlemon[client2].hp)) {
        return 1;
    }
    if ((sp->battlemon[client1].hp) && (sp->battlemon[client2].hp == 0)) {
        return 0;
    }

    // Potential After You or Quash present
    if (sp->oneTurnFlag[client1].forceExecutionOrderFlag != sp->oneTurnFlag[client2].forceExecutionOrderFlag) {
        switch (sp->oneTurnFlag[client1].forceExecutionOrderFlag) {
            case EXECUTION_ORDER_AFTER_YOU:
                return 0;
                break;
            case EXECUTION_ORDER_QUASH:
                return 1;
                break;
            default:
                break;
        }
        switch (sp->oneTurnFlag[client2].forceExecutionOrderFlag) {
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

    if (hold_effect1 == HOLD_EFFECT_PRIORITY_DOWN) {
        move_last1 = 1;
    }

    if (hold_effect2 == HOLD_EFFECT_PRIORITY_DOWN) {
        move_last2 = 1;
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

    CalcPriorityAndQuickClawCustapBerry(bw, sp);

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

u8 LONG_CALL UpdateTypeEffectiveness(u32 move_no, u32 held_effect, u8 defender_type, u8 defaultEffectiveness)
{
    if (move_no == MOVE_FREEZE_DRY && defender_type == TYPE_WATER) {
        defaultEffectiveness = TYPE_MUL_SUPER_EFFECTIVE;
    }
    if (held_effect == HOLD_EFFECT_LOSE_TYPE_IMMUNITIES && defaultEffectiveness == TYPE_MUL_NO_EFFECT) {
        defaultEffectiveness = TYPE_MUL_NORMAL;
    }

    return defaultEffectiveness;
}

// TODO: Refactor this function
int LONG_CALL GetTypeEffectiveness(struct BattleSystem *bw, struct BattleStruct *sp, int attack_client, int defence_client, int move_type, u32 *flag) {
    int typeTableEntryNo = 0; // Used to cycle through all (non-neutral) type interactions.

    // https://xcancel.com/Sibuna_Switch/status/1827463371383328877#m
    u8 defender_type_1 = GetSanitisedType(sp->battlemon[defence_client].type1);
    u8 defender_type_2 = GetSanitisedType(sp->battlemon[defence_client].type2);
    u8 defender_type_3 = GetSanitisedType(sp->battlemon[defence_client].type3);
    u8 defender_tera_type = sp->battlemon[defence_client].tera_type;
    u32 item_held_effect = BattleItemDataGet(sp, GetBattleMonItem(sp, defence_client), 1);

    u32 type1Effectiveness = TYPE_MUL_NORMAL;
    u32 type2Effectiveness = TYPE_MUL_NORMAL;
    u32 type3Effectiveness = TYPE_MUL_NORMAL;

    // https://xcancel.com/Sibuna_Switch/status/1827463371383328877#m
    if (GetSanitisedType(move_type) == TYPE_STELLAR && !sp->battlemon[attack_client].is_currently_terastallized) {
        return TYPE_MUL_NO_EFFECT;
    }

    // [0]: Attacking type
    // [1]: Defending type
    // [2]: TYPE_MUL
    // TODO: handle Ring Target, Thousand Arrows, Freeze-Dry, Flying Press
    while (TypeEffectivenessTable[typeTableEntryNo][0] != TYPE_ENDTABLE)
    {
        // Foresight is treated as a fake custom type near the bottom of the type effectiveness table.
        // If an entry with TYPE_FORESIGHT is read and the target is affected by the Foresight status (or the attacker has an ability to that effect), the table will stop being read before it detects that TYPE_GHOST is immune to TYPE_NORMAL or TYPE_FIGHTING.
        if (TypeEffectivenessTable[typeTableEntryNo][0] == TYPE_FORESIGHT)
        {
            if ((sp->battlemon[defence_client].condition2 & STATUS2_FORESIGHT)
            || (GetBattlerAbility(sp, attack_client) == ABILITY_SCRAPPY)
            || (GetBattlerAbility(sp, attack_client) == ABILITY_MINDS_EYE))
            {
                break;
            }
            else
            {
                typeTableEntryNo++;
                continue;
            }
        }
        if (TypeEffectivenessTable[typeTableEntryNo][0] == move_type)
        {
            if (sp->battlemon[defence_client].is_currently_terastallized)
            {
                if (TypeEffectivenessTable[typeTableEntryNo][1] == defender_tera_type)
                {
                    if (ShouldUseNormalTypeEffCalc(sp, attack_client, defence_client, typeTableEntryNo)
                    && !StrongWindsShouldWeaken(bw, sp, typeTableEntryNo, defender_tera_type))
                    {
                        type1Effectiveness = UpdateTypeEffectiveness(sp->current_move_index, item_held_effect, defender_tera_type, TypeEffectivenessTable[typeTableEntryNo][2]);
                        TypeCheckCalc(sp, attack_client, type1Effectiveness, 42, 42, flag);
                    }
                }
            }
            else
            {
                if (TypeEffectivenessTable[typeTableEntryNo][1] == defender_type_1)
                {
                    if (ShouldUseNormalTypeEffCalc(sp, attack_client, defence_client, typeTableEntryNo)
                    && !StrongWindsShouldWeaken(bw, sp, typeTableEntryNo, defender_type_1))
                    {
                        type1Effectiveness = UpdateTypeEffectiveness(sp->current_move_index, item_held_effect, defender_type_1, TypeEffectivenessTable[typeTableEntryNo][2]);
                        TypeCheckCalc(sp, attack_client, type1Effectiveness, 42, 42, flag);
                    }
                }
                else if ((TypeEffectivenessTable[typeTableEntryNo][1] == defender_type_2))
                {
                    if (ShouldUseNormalTypeEffCalc(sp, attack_client, defence_client, typeTableEntryNo)
                    && !StrongWindsShouldWeaken(bw, sp, typeTableEntryNo, defender_type_2))
                    {
                        type2Effectiveness = UpdateTypeEffectiveness(sp->current_move_index, item_held_effect, defender_type_2, TypeEffectivenessTable[typeTableEntryNo][2]);
                        TypeCheckCalc(sp, attack_client, type2Effectiveness, 42, 42, flag);
                    }
                }
                else if ((TypeEffectivenessTable[typeTableEntryNo][1] == defender_type_3))
                {
                    if (ShouldUseNormalTypeEffCalc(sp, attack_client, defence_client, typeTableEntryNo)
                    && !StrongWindsShouldWeaken(bw, sp, typeTableEntryNo, defender_type_3))
                    {
                        type3Effectiveness = UpdateTypeEffectiveness(sp->current_move_index, item_held_effect, defender_type_3, TypeEffectivenessTable[typeTableEntryNo][2]);
                        TypeCheckCalc(sp, attack_client, type3Effectiveness, 42, 42, flag);
                    }
                }
            }
        }
        typeTableEntryNo++;
    }

    // TODO: Refactor, probably.
    // Returns the correct multiplier but moved to the right 3 decimal places.
    int typeMul = type1Effectiveness * type2Effectiveness * type3Effectiveness;
    // Unfortunately this can't be directly converted into the double or triple flags, so we're stuck with this switch statement.
    switch (typeMul)
    {
        case EFFECTIVENESS_MULT_TRIPLE_SUPER_EFFECTIVE:
            return TYPE_MUL_TRIPLE_SUPER_EFFECTIVE; // 40
        case EFFECTIVENESS_MULT_DOUBLE_SUPER_EFFECTIVE:
            return TYPE_MUL_DOUBLE_SUPER_EFFECTIVE; // 30
        case EFFECTIVENESS_MULT_SUPER_EFFECTIVE:
            return TYPE_MUL_SUPER_EFFECTIVE;        // 20
        case EFFECTIVENESS_MULT_NORMAL:
            return TYPE_MUL_NORMAL;                 // 10
        case EFFECTIVENESS_MULT_NOT_EFFECTIVE:
            return TYPE_MUL_NOT_EFFECTIVE;          // 5
        case EFFECTIVENESS_MULT_DOUBLE_NOT_EFFECTIVE:
            return TYPE_MUL_DOUBLE_NOT_EFFECTIVE;   // 4
        case EFFECTIVENESS_MULT_TRIPLE_NOT_EFFECTIVE:
            return TYPE_MUL_TRIPLE_NOT_EFFECTIVE;   // 3
    }
    return TYPE_MUL_NO_EFFECT;                      // 0
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
// TODO: neuter it in the future
int LONG_CALL ServerDoTypeCalcMod(void *bw UNUSED, struct BattleStruct *sp, int move_no, int move_type, int attack_client, int defence_client, int damage, u32 *flag)
{
    int typeTableEntryNo = 0;
    int modifier;
    u32 base_power;
    u8  eqp_d UNUSED;
    u8  atk_d UNUSED; // not currently used but will be

    modifier = 1;

    if (move_no == MOVE_STRUGGLE)
        return damage;

    eqp_d = HeldItemHoldEffectGet(sp, defence_client);
    atk_d = HeldItemAtkGet(sp, defence_client, ATK_CHECK_NORMAL);

    move_type = GetAdjustedMoveType(sp, attack_client, move_no); // new normalize checks
    base_power = sp->moveTbl[move_no].power;

    u8 attacker_type_1 = GetSanitisedType(BattlePokemonParamGet(sp, attack_client, BATTLE_MON_DATA_TYPE1, NULL));
    u8 attacker_type_2 = GetSanitisedType(BattlePokemonParamGet(sp, attack_client, BATTLE_MON_DATA_TYPE2, NULL));
    u8 attacker_type_3 = sp->battlemon[attack_client].type3;
    u8 defender_type_1 = GetSanitisedType(BattlePokemonParamGet(sp, defence_client, BATTLE_MON_DATA_TYPE1, NULL));
    u8 defender_type_2 = GetSanitisedType(BattlePokemonParamGet(sp, defence_client, BATTLE_MON_DATA_TYPE2, NULL));
    u8 defender_type_3 = sp->battlemon[defence_client].type3;

    u32 item_held_effect = BattleItemDataGet(sp, GetBattleMonItem(sp, defence_client), 1);

    if (((sp->server_status_flag & SERVER_STATUS_FLAG_TYPE_FLAT) == 0) && ((attacker_type_1 == move_type) || (attacker_type_2 == move_type) || (attacker_type_3 == move_type)))
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

    // [0]: Attacking type
    // [1]: Defending type
    // [2]: TYPE_MUL
    while (TypeEffectivenessTable[typeTableEntryNo][0] != TYPE_ENDTABLE)
    {
        if (TypeEffectivenessTable[typeTableEntryNo][0] == TYPE_FORESIGHT) // handle foresight
        {
            if ((sp->battlemon[defence_client].condition2 & STATUS2_FORESIGHT) || (GetBattlerAbility(sp, attack_client) == ABILITY_SCRAPPY) || (GetBattlerAbility(sp, attack_client) == ABILITY_MINDS_EYE))
            {
                break;
            }
            else
            {
                typeTableEntryNo++;
                continue;
            }
        }
        if (TypeEffectivenessTable[typeTableEntryNo][0] == move_type)
        {
            if (TypeEffectivenessTable[typeTableEntryNo][1] == defender_type_1)
            {
                if (ShouldUseNormalTypeEffCalc(sp, attack_client, defence_client, typeTableEntryNo)
                && !StrongWindsShouldWeaken(bw, sp, typeTableEntryNo, defender_type_1))
                {
                    u8 typeEffectiveness = UpdateTypeEffectiveness(move_no, item_held_effect, defender_type_1, TypeEffectivenessTable[typeTableEntryNo][2]);
                    damage = TypeCheckCalc(sp, attack_client, typeEffectiveness, damage, base_power, flag);
                    if (TypeEffectivenessTable[typeTableEntryNo][2] == TYPE_MUL_SUPER_EFFECTIVE) // seems to be useless, modifier isn't used elsewhere
                    {
                        modifier *= 2;
                    }
                }
            }
            else if ((TypeEffectivenessTable[typeTableEntryNo][1] == defender_type_2))
            {
                if (ShouldUseNormalTypeEffCalc(sp, attack_client, defence_client, typeTableEntryNo)
                && !StrongWindsShouldWeaken(bw, sp, typeTableEntryNo, defender_type_2))
                {
                    u8 typeEffectiveness = UpdateTypeEffectiveness(move_no, item_held_effect, defender_type_2, TypeEffectivenessTable[typeTableEntryNo][2]);
                    damage = TypeCheckCalc(sp, attack_client, typeEffectiveness, damage, base_power, flag);
                    if (TypeEffectivenessTable[typeTableEntryNo][2] == TYPE_MUL_SUPER_EFFECTIVE) // seems to be useless, modifier isn't used elsewhere
                    {
                        modifier *= 2;
                    }
                }
            }
            else if ((TypeEffectivenessTable[typeTableEntryNo][1] == defender_type_3))
            {
                if (ShouldUseNormalTypeEffCalc(sp, attack_client, defence_client, typeTableEntryNo)
                && !StrongWindsShouldWeaken(bw, sp, typeTableEntryNo, defender_type_3))
                {
                    u8 typeEffectiveness = UpdateTypeEffectiveness(move_no, item_held_effect, defender_type_3, TypeEffectivenessTable[typeTableEntryNo][2]);
                    damage = TypeCheckCalc(sp, attack_client, typeEffectiveness, damage, base_power, flag);
                    if (TypeEffectivenessTable[typeTableEntryNo][2] == TYPE_MUL_SUPER_EFFECTIVE) // seems to be useless, modifier isn't used elsewhere
                    {
                        modifier *= 2;
                    }
                }
            }
        }
        typeTableEntryNo++;
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
    if (item == HOLD_EFFECT_FLEE || (battleType & BATTLE_TYPE_NO_EXPERIENCE) || GetBattlerAbility(sp, battlerId) == ABILITY_RUN_AWAY || HasType(sp, battlerId, TYPE_GHOST)) {
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
            if (GetBattlerAbility(sp, battlerId) != ABILITY_LEVITATE && !sp->battlemon[battlerId].moveeffect.magnetRiseTurns && !HasType(sp, battlerId, TYPE_FLYING)) {
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
    if (battlerIdAbility && HasType(sp, battlerId, TYPE_STEEL)) {
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
    if (HeldItemHoldEffectGet(sp, battlerId) == HOLD_EFFECT_SWITCH || HasType(sp, battlerId, TYPE_GHOST)) {
        return FALSE;
    }

    if ((sp->battlemon[battlerId].condition2 & (STATUS2_MEAN_LOOK)) || (sp->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) || sp->binding_turns[battlerId] != 0) {
        ret = TRUE;
    }

    if ((GetBattlerAbility(sp, battlerId) != ABILITY_SHADOW_TAG && CheckSideAbility(bw, sp, CHECK_ABILITY_OPPOSING_SIDE_HP, battlerId, ABILITY_SHADOW_TAG))
     || (HasType(sp, battlerId, TYPE_STEEL) && CheckSideAbility(bw, sp, CHECK_ABILITY_OPPOSING_SIDE_HP, battlerId, ABILITY_MAGNET_PULL)))
    {
        ret = TRUE;
    }

    if (((GetBattlerAbility(sp, battlerId) != ABILITY_LEVITATE
       && sp->battlemon[battlerId].moveeffect.magnetRiseTurns == 0
       && !HasType(sp, battlerId, TYPE_FLYING))
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
    } else if (battleType & BATTLE_TYPE_NO_EXPERIENCE || HasType(sp, battlerId, TYPE_GHOST)) { // ghost types can always escape regardless of speed
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

const u16 MinimizeVulnerabilityMovesList[] = {
    MOVE_BODY_SLAM,
    MOVE_STOMP,
    MOVE_SLEEP_POWDER,
    MOVE_DRAGON_RUSH,
    MOVE_STEAMROLLER,
    MOVE_HEAT_CRASH,
    MOVE_HEAVY_SLAM,
    MOVE_FLYING_PRESS,
    MOVE_MALICIOUS_MOONSAULT,
    MOVE_SUPERCELL_SLAM
};

/**
 * @brief checks if the move index is a move that will hit with double power if target is minimized
 * @param move move index to check
 * @return TRUE/FALSE
*/
BOOL LONG_CALL IsMoveInMinimizeVulnerabilityMovesList(u16 move) {
    return IsElementInArray(MinimizeVulnerabilityMovesList, (u16 *)&move, NELEMS(MinimizeVulnerabilityMovesList), sizeof(MinimizeVulnerabilityMovesList[0]));
}

BOOL LONG_CALL BattleSystem_CheckMoveEffect(void *bw, struct BattleStruct *sp, int battlerIdAttacker, int battlerIdTarget, int move) {
    if (sp->server_status_flag & BATTLE_STATUS_CHARGE_TURN) {
        return FALSE;
    }

    // https://www.smogon.com/forums/threads/sword-shield-battle-mechanics-research.3655528/page-58#post-8684263

    // Check if the move will hit with certainty

    // 1. Check if user or target has No Guard, or if the user has sure-hit accuracy from Poison-type Toxic, or if the user has used Lock-On / Mind Reader.

    // toxic when used by a poison type
    if (move == MOVE_TOXIC
        && (BattlePokemonParamGet(sp, battlerIdAttacker, BATTLE_MON_DATA_TYPE1, NULL) == TYPE_POISON
        || BattlePokemonParamGet(sp, battlerIdAttacker, BATTLE_MON_DATA_TYPE2, NULL) == TYPE_POISON)) {
        sp->waza_status_flag &= ~MOVE_STATUS_FLAG_MISS;
        return TRUE;
    }

    if (!(sp->server_status_flag & BATTLE_STATUS_FLAT_HIT_RATE) //TODO: Is this flag a debug flag to ignore hit rates..?
        && ((sp->battlemon[battlerIdTarget].effect_of_moves & MOVE_EFFECT_FLAG_LOCK_ON
            && sp->battlemon[battlerIdTarget].moveeffect.battlerIdLockOn == battlerIdAttacker)
          || GetBattlerAbility(sp, battlerIdAttacker) == ABILITY_NO_GUARD
          || GetBattlerAbility(sp, battlerIdTarget) == ABILITY_NO_GUARD)) {
        sp->waza_status_flag &= ~MOVE_STATUS_FLAG_MISS;
        return TRUE;
    }

    if (!(sp->waza_status_flag & MOVE_STATUS_FLAG_LOCK_ON)
        && sp->moveTbl[sp->current_move_index].target != RANGE_OPPONENT_SIDE
        && ((!(sp->server_status_flag & BATTLE_STATUS_HIT_FLY) && sp->battlemon[battlerIdTarget].effect_of_moves & MOVE_EFFECT_FLAG_FLYING_IN_AIR)
            || (!(sp->server_status_flag & BATTLE_STATUS_SHADOW_FORCE) && sp->battlemon[battlerIdTarget].effect_of_moves & MOVE_EFFECT_FLAG_SHADOW_FORCE)
            || (!(sp->server_status_flag & BATTLE_STATUS_HIT_DIG) && sp->battlemon[battlerIdTarget].effect_of_moves & MOVE_EFFECT_FLAG_DIGGING)
            || (!(sp->server_status_flag & BATTLE_STATUS_HIT_DIVE) && sp->battlemon[battlerIdTarget].effect_of_moves & MOVE_EFFECT_FLAG_IS_DIVING))) {
        sp->waza_status_flag |= WAZA_STATUS_FLAG_KIE_NOHIT;
        return TRUE;
    }

    // 2. Check if the move itself is sure-hit (accuracy 101, like Aerial Ace), or if the move was custom-set to be sure-hit: Pursuit and target is switching, Thunder / Hurricane in rain, Blizzard in hail, Stomp / Steamroller / Dragon Rush / Body Slam / Malicious Moonsault / Heavy Slam / Heat Crash / Flying Press vs. Minimize.
    // TODO: modernise flow and Handle Pursuit

    if (sp->moveTbl[move].accuracy == 0) {
        sp->waza_status_flag &= ~MOVE_STATUS_FLAG_MISS;
        return TRUE;
    }

    if (!CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE)
    && !CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK)) {
        if ((sp->field_condition & WEATHER_RAIN_ANY)
        && ((sp->moveTbl[move].effect == MOVE_EFFECT_THUNDER)
        || (sp->moveTbl[move].effect == MOVE_EFFECT_HURRICANE)
        || (sp->moveTbl[move].effect == MOVE_EFFECT_BLEAKWIND_STORM)
        || (sp->moveTbl[move].effect == MOVE_EFFECT_WILDBOLT_STORM)
        || (sp->moveTbl[move].effect == MOVE_EFFECT_SANDSEAR_STORM))) {
            sp->waza_status_flag &= ~MOVE_STATUS_FLAG_MISS;
            return TRUE;
        }
        // Blizzard is 100% accurate in Snow also
        if (sp->field_condition & (WEATHER_HAIL_ANY | WEATHER_SNOW_ANY) && sp->moveTbl[move].effect == MOVE_EFFECT_BLIZZARD) {
            sp->waza_status_flag &= ~MOVE_STATUS_FLAG_MISS;
            return TRUE;
        }
    }

    if (sp->battlemon[battlerIdTarget].effect_of_moves & MOVE_EFFECT_FLAG_MINIMIZED
        && !sp->battlemon[battlerIdTarget].is_currently_dynamaxed
        && IsMoveInMinimizeVulnerabilityMovesList(move)) {
            sp->waza_status_flag &= ~MOVE_STATUS_FLAG_MISS;
            return TRUE;
    }

    // 3. Check if the target has Telekinesis.

    // TODO

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
 * @brief checks if the move index is a wind move
 * @param move move index to check
 * @return TRUE/FALSE
*/
BOOL LONG_CALL IsMoveWindMove(u16 move)
{
    return IsElementInArray(WindMovesTable, (u16 *)&move, NELEMS(WindMovesTable), sizeof(WindMovesTable[0]));
}


/**
 * @brief checks if contact is being made, checking abilities and items
 * @param bw battle work structure
 * @param sp global battle structure
 * @return TRUE/FALSE
*/
BOOL LONG_CALL IsContactBeingMade(int attackerAbility, int attackerItemHoldEffect, int defenderItemHoldEffect, int moveno, u8 moveFlag)
{
    // HeldItemHoldEffectGet -> attackerItemHoldEffect

    // Attacker abilities
    if (attackerAbility == ABILITY_LONG_REACH) {
            return FALSE;
    }

    // Check for items attacker
    if (attackerItemHoldEffect == HOLD_EFFECT_PREVENT_CONTACT_EFFECTS
        // Punching Gloves prevents contact when attacking with punching moves
        || (attackerItemHoldEffect == HOLD_EFFECT_INCREASE_PUNCHING_MOVE_DMG
            && IsMovePunchingMove(moveno))) {
            return FALSE;
    }

    // Check for items defender
    if (defenderItemHoldEffect == HOLD_EFFECT_PREVENT_CONTACT_EFFECTS) {
            return FALSE;
    }

    // Does the move make contact vanilla
    if (moveFlag & FLAG_CONTACT) {
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
            if (ctx->battlemon[battlerId].is_currently_terastallized && ctx->battlemon[battlerId].tera_type != TYPE_STELLAR) {
                // Assert that the Tera Type is valid
                GF_ASSERT(TYPE_NORMAL <= ctx->battlemon[battlerId].tera_type && TYPE_STELLAR >= ctx->battlemon[battlerId].tera_type && TYPE_TYPELESS != ctx->battlemon[battlerId].tera_type);

                type = ctx->battlemon[battlerId].tera_type;
            } else if (ctx->battlemon[battlerId].type1 != TYPE_TYPELESS) {
                type = ctx->battlemon[battlerId].type1;
            } else if (ctx->battlemon[battlerId].type2 != TYPE_TYPELESS) {
                type = ctx->battlemon[battlerId].type2;
            } else if (ctx->battlemon[battlerId].type3 != TYPE_TYPELESS) {
                type = ctx->battlemon[battlerId].type3;
            } else {
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

const u16 HealBlockUnusableMoves[] = {
    MOVE_RECOVER,
    MOVE_SOFT_BOILED,
    MOVE_REST,
    MOVE_MILK_DRINK,
    MOVE_MORNING_SUN,
    MOVE_SYNTHESIS,
    MOVE_MOONLIGHT,
    MOVE_SWALLOW,
    MOVE_HEAL_ORDER,
    MOVE_SLACK_OFF,
    MOVE_ROOST,
    MOVE_LUNAR_DANCE,
    MOVE_HEALING_WISH,
    MOVE_WISH,
    MOVE_HEAL_PULSE,
    MOVE_FLORAL_HEALING,
    MOVE_LIFE_DEW,
    MOVE_LUNAR_BLESSING,
//  MOVE_POLLEN_PUFF, should be here but can also target enemies when heal blocked so
};

BOOL LONG_CALL BattleContext_CheckMoveHealBlocked(struct BattleSystem* bsys, struct BattleStruct* ctx, int battlerId, int moveNo) {
    int i;
    BOOL ret = FALSE;

    if (ctx->battlemon[battlerId].moveeffect.healBlockTurns)
    {
        for (i = 0; i < NELEMS(HealBlockUnusableMoves); i++)
        {
            if (HealBlockUnusableMoves[i] == moveNo)
            {
                ret = TRUE;
                break;
            }
        }
    }

    return ret;
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
            if (BattleMon_GetMoveIndex(&ctx->battlemon[battlerId], ctx->battlemon[battlerId].moveeffect.moveNoChoice) == 4 && ctx->battlemon[battlerId].moveeffect.moveNoChoice != MOVE_STRUGGLE) {
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

    else if (ctx->moveTbl[ctx->battlemon[battlerId].move[movePos]].flag & FLAG_UNUSED_MOVE) {
#ifdef DEBUG_ENABLE_UNIMPLEMENTED_MOVES
        debug_printf("Move %d at position %d for battler %d is not implemented/dexited\n", ctx->moveTbl[ctx->battlemon[battlerId].move[movePos]], movePos, battlerId);
#endif
        msg->msg_tag = TAG_NONE;
        msg->msg_id = 620; // empty message
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
    struct BattlePokemon *client = &ctx->battlemon[battlerId];
    return ((!(client->is_currently_terastallized) // Only check the client's base types if they are not terastallized.
         && (client->type1 == type
         || client->type2 == type
         || client->type3 == type))
         || (client->is_currently_terastallized && client->tera_type == type));
}


void LONG_CALL SortRawSpeedNonRNGArray(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int client_set_max;
    BOOL needToSwap = FALSE;
    void *pp2;
    client_set_max = BattleWorkClientSetMaxGet(bsys);

    int rawSpeedArray[4] = {0, 0, 0, 0};

    for (int i = 0; i < client_set_max; i++) {
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

BOOL LONG_CALL CanActivateDamageReductionBerry(struct BattleStruct *ctx, int defender) {
    if ((GetMoveSplit(ctx, ctx->current_move_index) != SPLIT_STATUS)
        && (ctx->move_type == TYPE_NORMAL || (ctx->moveStatusFlagForSpreadMoves[defender] & MOVE_STATUS_FLAG_SUPER_EFFECTIVE))
        && !(ctx->moveStatusFlagForSpreadMoves[defender] & MOVE_STATUS_FLAG_OHKO_HIT))
    {
        return typeToBerryMapping[ctx->move_type] == GetBattleMonItem(ctx, defender);
    }
    return FALSE;
}

BOOL LONG_CALL IsPureType(struct BattleStruct *ctx, int battlerId, int type) {
    GF_ASSERT(TYPE_NORMAL < type && type < TYPE_STELLAR);
    struct BattlePokemon client = ctx->battlemon[battlerId];
    return (client.is_currently_terastallized ? client.tera_type == type : (client.type1 == type && client.type2 == type && client.type3 == TYPE_TYPELESS));
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

// TODO: Just use this instead of the Mold Breaker one
u32 LONG_CALL GetBattlerAbility(struct BattleStruct *ctx, int battlerId) {
    u32 ability = ctx->battlemon[battlerId].ability;
    if ((ctx->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_GASTRO_ACID) && ctx->battlemon[battlerId].ability != ABILITY_MULTITYPE) {
        return ABILITY_NONE;
    } else if ((ctx->field_condition & FIELD_STATUS_GRAVITY) && ctx->battlemon[battlerId].ability == ABILITY_LEVITATE) {
        return ABILITY_NONE;
    } else if ((ctx->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) && ctx->battlemon[battlerId].ability == ABILITY_LEVITATE) {
        return ABILITY_NONE;
    } else if (AbilityNoTransform(ctx->battlemon[battlerId].ability) && (ctx->battlemon[battlerId].condition2 & STATUS2_TRANSFORMED)) {
        return ABILITY_NONE;
    } else {
        return ability;
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

/**
 *  @brief check if a held item can be removed from the species it is attached to
 *
 *  @param species the species of the mon
 *  @param item the held item of the attacker
 *  @return TRUE if item can be removed, FALSE otherwise
 */
BOOL LONG_CALL CanItemBeRemovedFromSpecies(u16 species, u16 item)
{
    // blanket item bans
    if (IS_ITEM_MAIL(item) || IS_ITEM_Z_CRYSTAL(item))
        return FALSE;

    // then species-specific
    switch (species) {
    case SPECIES_ZAMAZENTA:
        return item != ITEM_RUSTED_SHIELD;
    case SPECIES_ZACIAN:
        return item != ITEM_RUSTED_SWORD;
    case SPECIES_GENESECT:
        return !IS_ITEM_GENESECT_DRIVE(item);
    case SPECIES_KYOGRE:
        return item != ITEM_BLUE_ORB;
    case SPECIES_GROUDON:
        return item != ITEM_RED_ORB;
    case SPECIES_GIRATINA:
        return item != ITEM_GRISEOUS_ORB && item != ITEM_GRISEOUS_CORE;
    case SPECIES_SILVALLY:
        return !IS_ITEM_MEMORY(item);
    case SPECIES_OGERPON:
        return !IS_ITEM_MASK(item);
    }

    // then the other swathes of species
    if ((IS_SPECIES_PARADOX_FORM(species) && item == ITEM_BOOSTER_ENERGY)
     || (CheckMegaData(species, item)))
        return FALSE;

    return TRUE;
}

BOOL LONG_CALL CanItemBeRemovedFromClient(u32 species, u32 item, u32 form)
{
    // bypass klutz and friends probably

    // CheckMegaData will gladly tell you a galarian slowbro can't lose its slowbronite...  we have to take over
    if (species == SPECIES_SLOWBRO && item == ITEM_SLOWBRONITE && form == 2)
    {
        return TRUE;
    }
    else
    {
        return CanItemBeRemovedFromSpecies(species, item);
    }
}

/**
 *  @brief check if knock off can remove the defender's held item
 *         does not count sticky hold and substitute because those still allow knock off's base power increase
 *
 *  @param sp global battle structure
 *  @return TRUE if knock off can remove the mon's item; FALSE otherwise
 */
BOOL LONG_CALL CanKnockOffApply(struct BattleStruct *sp, int attacker, int defender)
{
    u32 item = sp->battlemon[defender].item;
    u32 ability = GetBattlerAbility(sp, defender);
    u32 species = sp->battlemon[defender].species;
    u32 form = sp->battlemon[defender].form_no;

    if (CanActivateDamageReductionBerry(sp, defender)) {
        // the berry activated already
        return FALSE;
    }

    // if the user is about to die because of an opponent's rough skin, iron barbs, or rocky helmet, then do not proc knock off's item removal
        // abilities do 1/8th total hp as damage
    if ((((ability == ABILITY_ROUGH_SKIN || ability == ABILITY_IRON_BARBS) && sp->battlemon[attacker].hp <= (s32)(sp->battlemon[attacker].maxhp) / 8)
        // rocky helmet does 1/6th total hp as damage
      || ((item == ITEM_ROCKY_HELMET) && sp->battlemon[attacker].hp <= (s32)(sp->battlemon[attacker].maxhp) / 6))
     && IsContactBeingMade(GetBattlerAbility(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->defence_client), sp->current_move_index, sp->moveTbl[sp->current_move_index].flag)
     && (sp->waza_status_flag & MOVE_STATUS_FLAG_FAILURE_ANY) == 0)
    {
        return FALSE;
    }

    if (item != 0 && CanItemBeRemovedFromClient(species, item, form))
    {
        return TRUE;
    }
    return FALSE;
}


/**
 * @brief checks if the current move hits any oppsoing battler or ally
 * @param sp global battle structure
 * @return TRUE/FALSE
*/
BOOL LONG_CALL IsAnyBattleMonHit(struct BattleStruct* ctx)
{
    u8 i = 0;
    if ((IS_TARGET_BOTH_MOVE(ctx) || IS_TARGET_FOES_AND_ALLY_MOVE(ctx)))
    {
        while (i <= SPREAD_MOVE_LOOP_MAX)
        {
            switch (i)
            {
            case SPREAD_MOVE_LOOP_ALLY:
                i++;
                if ((IS_TARGET_FOES_AND_ALLY_MOVE(ctx) || BATTLER_ALLY(ctx->attack_client) == ctx->defence_client)
                    && IS_VALID_MOVE_TARGET(ctx, BATTLER_ALLY(ctx->attack_client)))
                {
                    return TRUE;
                }
                FALLTHROUGH;

            case SPREAD_MOVE_LOOP_OPPONENT_LEFT:
                i++;
                if ((IS_TARGET_BOTH_MOVE(ctx) || IS_TARGET_FOES_AND_ALLY_MOVE(ctx))
                    && IS_VALID_MOVE_TARGET(ctx, BATTLER_OPPONENT_SIDE_LEFT(ctx->attack_client)))
                {
                    return TRUE;
                }
                FALLTHROUGH;
            case SPREAD_MOVE_LOOP_OPPONENT_RIGHT:
                i++;
                if ((IS_TARGET_BOTH_MOVE(ctx) || IS_TARGET_FOES_AND_ALLY_MOVE(ctx))
                    && IS_VALID_MOVE_TARGET(ctx, BATTLER_OPPONENT_SIDE_RIGHT(ctx->attack_client)))
                {
                    return TRUE;
                }
            }
        }
    }
    else
    {
        if (IS_VALID_MOVE_TARGET(ctx, ctx->defence_client))
        {
            return TRUE;
        }
    }
    return FALSE;
}

BOOL StrongWindsShouldWeaken(struct BattleSystem *bw, struct BattleStruct *sp, int typeTableEntryNo, int defender_type)
{
    return (!CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) && !CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) && sp->field_condition & WEATHER_STRONG_WINDS && (TypeEffectivenessTable[typeTableEntryNo][2] == TYPE_MUL_SUPER_EFFECTIVE) && defender_type == TYPE_FLYING);
}

const u8 HGTypeToInternalType[] = {
    [TYPE_NORMAL]   = TYPE_NORMAL_INTERNAL,
    [TYPE_FIGHTING] = TYPE_FIGHTING_INTERNAL,
    [TYPE_FLYING]   = TYPE_FLYING_INTERNAL,
    [TYPE_POISON]   = TYPE_POISON_INTERNAL,
    [TYPE_GROUND]   = TYPE_GROUND_INTERNAL,
    [TYPE_ROCK]     = TYPE_ROCK_INTERNAL,
    [TYPE_BUG]      = TYPE_BUG_INTERNAL,
    [TYPE_GHOST]    = TYPE_GHOST_INTERNAL,
    [TYPE_STEEL]    = TYPE_STEEL_INTERNAL,
    [TYPE_FAIRY]    = TYPE_FAIRY_INTERNAL,
    [TYPE_FIRE]     = TYPE_FIRE_INTERNAL,
    [TYPE_WATER]    = TYPE_WATER_INTERNAL,
    [TYPE_GRASS]    = TYPE_GRASS_INTERNAL,
    [TYPE_ELECTRIC] = TYPE_ELECTRIC_INTERNAL,
    [TYPE_PSYCHIC]  = TYPE_PSYCHIC_INTERNAL,
    [TYPE_ICE]      = TYPE_ICE_INTERNAL,
    [TYPE_DRAGON]   = TYPE_DRAGON_INTERNAL,
    [TYPE_DARK]     = TYPE_DARK_INTERNAL,
    [TYPE_TYPELESS] = TYPE_TYPELESS_INTERNAL,
    [TYPE_STELLAR]  = TYPE_STELLAR_INTERNAL,

};

const u8 InternalTypeToHGType[] = {
    [TYPE_NORMAL_INTERNAL]      = TYPE_NORMAL,
    [TYPE_FIGHTING_INTERNAL]    = TYPE_FIGHTING,
    [TYPE_FLYING_INTERNAL]      = TYPE_FLYING,
    [TYPE_POISON_INTERNAL]      = TYPE_POISON,
    [TYPE_GROUND_INTERNAL]      = TYPE_GROUND,
    [TYPE_ROCK_INTERNAL]        = TYPE_ROCK,
    [TYPE_BUG_INTERNAL]         = TYPE_BUG,
    [TYPE_GHOST_INTERNAL]       = TYPE_GHOST,
    [TYPE_STEEL_INTERNAL]       = TYPE_STEEL,
    [TYPE_FAIRY_INTERNAL]       = TYPE_FAIRY,
    [TYPE_FIRE_INTERNAL]        = TYPE_FIRE,
    [TYPE_WATER_INTERNAL]       = TYPE_WATER,
    [TYPE_GRASS_INTERNAL]       = TYPE_GRASS,
    [TYPE_ELECTRIC_INTERNAL]    = TYPE_ELECTRIC,
    [TYPE_PSYCHIC_INTERNAL]     = TYPE_PSYCHIC,
    [TYPE_ICE_INTERNAL]         = TYPE_ICE,
    [TYPE_DRAGON_INTERNAL]      = TYPE_DRAGON,
    [TYPE_DARK_INTERNAL]        = TYPE_DARK,
    [TYPE_TYPELESS_INTERNAL]    = TYPE_TYPELESS,
    [TYPE_STELLAR_INTERNAL]     = TYPE_STELLAR,

};

int GetSanitisedType(int type) {
    return InternalTypeToHGType[HGTypeToInternalType[type] & 0x1F];
}
