#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/overlay.h"
#include "../../include/pokemon.h"
#include "../../include/types.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/file.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/q412.h"



static const u8 HeldItemPowerUpTable[][2]={
    {HOLD_EFFECT_STRENGTHEN_BUG, TYPE_BUG},
    {HOLD_EFFECT_STRENGTHEN_STEEL, TYPE_STEEL},
    {HOLD_EFFECT_STRENGTHEN_GROUND, TYPE_GROUND},
    {HOLD_EFFECT_STRENGTHEN_ROCK, TYPE_ROCK},
    {HOLD_EFFECT_STRENGTHEN_GRASS, TYPE_GRASS},
    {HOLD_EFFECT_STRENGTHEN_DARK, TYPE_DARK},
    {HOLD_EFFECT_STRENGTHEN_FIGHT, TYPE_FIGHTING},
    {HOLD_EFFECT_STRENGTHEN_ELECTRIC, TYPE_ELECTRIC},
    {HOLD_EFFECT_STRENGTHEN_WATER, TYPE_WATER},
    {HOLD_EFFECT_STRENGTHEN_FLYING, TYPE_FLYING},
    {HOLD_EFFECT_STRENGTHEN_POISON, TYPE_POISON},
    {HOLD_EFFECT_STRENGTHEN_ICE, TYPE_ICE},
    {HOLD_EFFECT_STRENGTHEN_GHOST, TYPE_GHOST},
    {HOLD_EFFECT_STRENGTHEN_PSYCHIC, TYPE_PSYCHIC},
    {HOLD_EFFECT_STRENGTHEN_FIRE, TYPE_FIRE},
    {HOLD_EFFECT_STRENGTHEN_DRAGON, TYPE_DRAGON},
    {HOLD_EFFECT_STRENGTHEN_NORMAL, TYPE_NORMAL},
    {HOLD_EFFECT_ARCEUS_FIRE, TYPE_FIRE},
    {HOLD_EFFECT_ARCEUS_WATER, TYPE_WATER},
    {HOLD_EFFECT_ARCEUS_ELECTRIC, TYPE_ELECTRIC},
    {HOLD_EFFECT_ARCEUS_GRASS, TYPE_GRASS},
    {HOLD_EFFECT_ARCEUS_ICE, TYPE_ICE},
    {HOLD_EFFECT_ARCEUS_FIGHTING, TYPE_FIGHTING},
    {HOLD_EFFECT_ARCEUS_POISON, TYPE_POISON},
    {HOLD_EFFECT_ARCEUS_GROUND, TYPE_GROUND},
    {HOLD_EFFECT_ARCEUS_FLYING, TYPE_FLYING},
    {HOLD_EFFECT_ARCEUS_PSYCHIC, TYPE_PSYCHIC},
    {HOLD_EFFECT_ARCEUS_BUG, TYPE_BUG},
    {HOLD_EFFECT_ARCEUS_ROCK, TYPE_ROCK},
    {HOLD_EFFECT_ARCEUS_GHOST, TYPE_GHOST},
    {HOLD_EFFECT_ARCEUS_DRAGON, TYPE_DRAGON},
    {HOLD_EFFECT_ARCEUS_DARK, TYPE_DARK},
    {HOLD_EFFECT_ARCEUS_STEEL, TYPE_STEEL},
    {HOLD_EFFECT_ARCEUS_NORMAL, TYPE_NORMAL},
#if FAIRY_TYPE_IMPLEMENTED == 1
    {HOLD_EFFECT_STRENGTHEN_FAIRY, TYPE_FAIRY},
    {HOLD_EFFECT_ARCEUS_FAIRY, TYPE_FAIRY},
#endif
};

// this has been moved to src/battle/other_battle_calculators.c so it can be used in
extern const u16 PunchingMovesTable[24];

static const u16 StrongJawMovesTable[] = {
    MOVE_BITE,
    MOVE_CRUNCH,
    MOVE_FIRE_FANG,
    MOVE_FISHIOUS_REND,
    MOVE_HYPER_FANG,
    MOVE_ICE_FANG,
    MOVE_JAW_LOCK,
    MOVE_POISON_FANG,
    MOVE_PSYCHIC_FANGS,
    MOVE_THUNDER_FANG,
};

static const u16 MegaLauncherMovesTable[] = {
    MOVE_AURA_SPHERE,
    MOVE_DARK_PULSE,
    MOVE_DRAGON_PULSE,
    MOVE_HEAL_PULSE,
    MOVE_ORIGIN_PULSE,
    MOVE_TERRAIN_PULSE,
    MOVE_WATER_PULSE,
};

static const u16 SharpnessMovesTable[] = {
    MOVE_AERIAL_ACE,
    MOVE_AIR_CUTTER,
    MOVE_AIR_SLASH,
    MOVE_AQUA_CUTTER,
    MOVE_BEHEMOTH_BLADE,
    MOVE_BITTER_BLADE,
    MOVE_CEASELESS_EDGE,
    MOVE_CROSS_POISON,
    MOVE_CUT,
    MOVE_FURY_CUTTER,
    MOVE_KOWTOW_CLEAVE,
    MOVE_LEAF_BLADE,
    MOVE_NIGHT_SLASH,
    MOVE_POPULATION_BOMB,
    MOVE_PSYBLADE,
    MOVE_PSYCHO_CUT,
    MOVE_RAZOR_SHELL,
    MOVE_RAZOR_LEAF,
    MOVE_SACRED_SWORD,
    MOVE_SECRET_SWORD,
    MOVE_SLASH,
    MOVE_SOLAR_BLADE,
    MOVE_STONE_AXE,
    MOVE_X_SCISSOR,
};

static const u16 sLowKickWeightToPower[][2] =
{
    {   100,     20}, //   0- 10 kg ->  20 bp
    {   250,     40}, //  10- 25 kg ->  40 bp
    {   500,     60}, //  25- 50 kg ->  60 bp
    {  1000,     80}, //  50-100 kg ->  80 bp
    {  2000,    100}, // 100-200 kg -> 100 bp
    {0xFFFF, 0xFFFF},
};


// TODO
// Why is it offset if I use the original definition??????????????
static const u8 StatBoostModifiersTemp[][2] = {
    // numerator, denominator
   { 2, 8 },
   { 2, 7 },
   { 2, 6 },
   { 2, 5 },
   { 2, 4 },
   { 2, 3 },
   { 2, 2 },
   { 3, 2 },
   { 4, 2 },
   { 5, 2 },
   { 6, 2 },
   { 7, 2 },
   { 8, 2 },
};

// int UNUSED CalcBaseDamage(void *bw, struct BattleStruct *sp, int moveno, u32 side_cond UNUSED,u32 field_cond, u16 pow UNUSED, u8 type UNUSED, u8 attacker, u8 defender, u8 critical) {
int UNUSED CalcBaseDamageInternal(struct BattleSystem *bw, struct BattleStruct *sp, struct DamageCalcStruct *damageCalc) {
    u32 i = 0;
    u32 attack;
    u32 defense;
    u32 sp_attack;
    u32 sp_defense;
    u32 p;
    u32 basePowerModifier = UQ412__1_0;
    BOOL fairyAuraApplied = FALSE;
    BOOL darkAuraApplied = FALSE;
    BOOL flowerGiftAppliedForAttackModifier = FALSE;
    BOOL flowerGiftAppliedForDefenseModifier = FALSE;
    u32 attackModifier = UQ412__1_0;
    u32 defenseModifier = UQ412__1_0;
    u32 calculatedAttack = 0, calculatedDefense = 0;
    u32 baseDamage = 0;
    u32 battlerAbilities[4];

    u32 maxBattlers = damageCalc->maxBattlers;
    int attackerPartySize = damageCalc->attackerPartySize;
    u8 attacker = damageCalc->attacker;
    u8 defender = damageCalc->defender;
    u8 critical = damageCalc->critical;
    int moveno = damageCalc->moveno;
    u8 movetype = damageCalc->movetype;
    u8 movesplit = damageCalc->movesplit;
    u16 movepower = damageCalc->movepower;
    int damage_power = damageCalc->damage_power;
    int damage_value = damageCalc->damage_value;
    //u8 magnitude = damageCalc->magnitude;
    BOOL gemBoostingMove = damageCalc->gemBoostingMove;
    BOOL noCloudNineAndAirLock = damageCalc->noCloudNineAndAirLock;
    BOOL fieldHasFairyAura = damageCalc->fieldHasFairyAura;
    BOOL fieldHasDarkAura = damageCalc->fieldHasDarkAura;
    BOOL fieldHasAuraBreak = damageCalc->fieldHasAuraBreak;
    u32 field_cond = damageCalc->field_cond;
    u8 terrainOverlayType = damageCalc->terrainOverlayType;
    u8 terrainOverlayNumberOfTurnsLeft = damageCalc->terrainOverlayNumberOfTurnsLeft;
    u8 playerSideHasFaintedTeammateLastTurn = damageCalc->playerSideHasFaintedTeammateLastTurn;
    u8 enemySideHasFaintedTeammateLastTurn = damageCalc->enemySideHasFaintedTeammateLastTurn;
    u8 originalMoveType = damageCalc->originalMoveType;
    u16 moveEffect = damageCalc->moveEffect;
    u8 moveFlag = damageCalc->moveFlag;

    for (u32 i = 0; i < damageCalc->maxBattlers; i++) {
        battlerAbilities[i] = damageCalc->clients[i].ability;
    }

    struct sDamageCalc AttackingMon = damageCalc->clients[attacker];
    struct sDamageCalc AttackingMonAlly = damageCalc->clients[BATTLER_ALLY(attacker)];
    struct sDamageCalc DefendingMon = damageCalc->clients[defender];
    // struct sDamageCalc DefendingMonAlly;

    if (I_AM_TERAPAGOS_AND_I_NEED_TO_KO_CARMINES_SINISTCHA(bw, sp, attacker)) {
#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 0\n");
    debug_printf("[CalcBaseDamage] Cheating Terapagos\n");
#endif
        return 9999;
    }

    // https://web.archive.org/web/20241226231016/https://www.trainertower.com/dawoblefets-damage-dissertation/

    if ((MoldBreakerAbilityCheckInternal(attacker, defender, AttackingMon.ability, DefendingMon.ability, moveno, movesplit, ABILITY_DISGUISE) == TRUE)
    && (DefendingMon.species == SPECIES_MIMIKYU)
    // Mimikyu or Mimikyu-Large
    && (DefendingMon.form == 0 || DefendingMon.form == 2)
    // Not transformed
    && !(DefendingMon.condition2 & STATUS2_TRANSFORMED)) {
        sp->waza_status_flag &= ~MOVE_STATUS_FLAG_SUPER_EFFECTIVE;
        sp->waza_status_flag &= ~MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE;
        return 0;
    }


    if ((MoldBreakerAbilityCheckInternal(attacker, defender, AttackingMon.ability, DefendingMon.ability, moveno, movesplit, ABILITY_ICE_FACE) == TRUE)
    && (DefendingMon.species == SPECIES_EISCUE)
    && (DefendingMon.form == 0)
    // Not transformed
    && !(DefendingMon.condition2 & STATUS2_TRANSFORMED)
    && (movesplit == SPLIT_PHYSICAL)) {
        sp->waza_status_flag &= ~MOVE_STATUS_FLAG_SUPER_EFFECTIVE;
        sp->waza_status_flag &= ~MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE;
        return 0;
    }


    //=====Step 1. Custom BP=====

    // TODO: Check if there are any moves not ported yet
    // if (pow == 0) {
    //     debug_printf("First case\n");
    //     movepower = sp->moveTbl[moveno].power;
    // } else {
    //     debug_printf("Second case\n");
    //     movepower = pow;
    // }

    switch (moveno) {
    // Speed-based
    case MOVE_GYRO_BALL:
        if (AttackingMon.speed == 0) {
            movepower = 1;
        } else {
            movepower = (25 * DefendingMon.speed) / AttackingMon.speed;
            movepower = movepower > 150 ? 150 : movepower;
        }
        break;
    case MOVE_ELECTRO_BALL:
        if (DefendingMon.speed == 0) {
            movepower = 40;
        } else {
            switch (AttackingMon.speed / DefendingMon.speed) {
                case 0:
                    movepower = 40;
                    break;
                case 1:
                    movepower = 60;
                    break;
                case 2:
                    movepower = 80;
                    break;
                case 3:
                    movepower = 120;
                    break;
                // 4 or higher
                default:
                    movepower = 150;
                    break;
            }
        }
        break;
    // Weight-based
    case MOVE_LOW_KICK:
    case MOVE_GRASS_KNOT:
        while (sLowKickWeightToPower[i][0] != 0xFFFF) {
            if (sLowKickWeightToPower[i][0] >= DefendingMon.weight) {
                break;
            }
            i++;
        }

        if (sLowKickWeightToPower[i][0] != 0xFFFF) {
            movepower = sLowKickWeightToPower[i][1];
        } else {
            movepower = 120;
        }
        break;
    case MOVE_HEAVY_SLAM:
    case MOVE_HEAT_CRASH:
        switch (AttackingMon.weight / DefendingMon.weight) {
            case 2:
                movepower = 60;
                break;
            case 3:
                movepower = 80;
                break;
            case 4:
                movepower = 100;
                break;
            case 5:
                movepower = 120;
                break;
            // less than 2
            default:
                movepower = 40;
                break;
        }
        break;
    // HP-based
    case MOVE_ERUPTION:
    case MOVE_WATER_SPOUT:
        movepower = (150 * AttackingMon.hp) / AttackingMon.maxhp;
        break;
    case MOVE_REVERSAL:
    case MOVE_FLAIL:
        p = (48 * AttackingMon.hp) / AttackingMon.maxhp;
        if (p >= 32) {
            movepower = 20;
            break;
        }
        if (p >= 17) {
            movepower = 40;
            break;
        }
        if (p >= 10) {
            movepower = 80;
            break;
        }
        if (p >= 5) {
            movepower = 100;
            break;
        }
        if (p >= 2) {
            movepower = 150;
            break;
        }
        if (p <= 1) {
            movepower = 200;
            break;
        }
        break;
    case MOVE_CRUSH_GRIP:
    case MOVE_WRING_OUT:
        // TODO: Check correctness
        movepower = QMul_RoundDown(120 * 100, (DefendingMon.hp * 4096) / DefendingMon.maxhp) / 100;
        break;
    // Happiness-based
    case MOVE_RETURN:
        movepower = AttackingMon.happiness * 10 / 25;
        break;
    case MOVE_FRUSTRATION:
        movepower = (255 - AttackingMon.happiness) * 10 / 25;
        break;
    // Counter-based
    case MOVE_FURY_CUTTER:
        for (u32 n = 0; n < AttackingMon.furyCutterCount; n++) {
            movepower *= 2;
        }
        break;
    case MOVE_ROLLOUT:
    case MOVE_ICE_BALL:
        // TODO: Handle Rollout storage, need to hook `BtlCmd_CalcRolloutPower`
        // For now we use the Gen 4 implementation which is basically the same
        // Edit: Rollout storage seems to be patched

        for (u32 n = 0; n < 5 - AttackingMon.rolloutCount; n++) {
            movepower *= 2;
        }
        break;
    case MOVE_SPIT_UP:
        if (AttackingMon.parentalBondFlag == 2 && AttackingMon.ability == ABILITY_PARENTAL_BOND) {
            movepower = damage_power;
        } else {
            movepower = 100 * AttackingMon.stockpileCount;
        }
        break;
    // Stat boosts-based
    case MOVE_PUNISHMENT:
        movepower = 60 + 20 * DefendingMon.positiveStatBoosts;
        movepower = movepower > 200 ? 200 : movepower;
        break;
    case MOVE_STORED_POWER:
        movepower = 20 + 20 * AttackingMon.positiveStatBoosts;
        break;
    // Dichotomous Base Power
    case MOVE_ACROBATICS:
        if (AttackingMon.item == ITEM_NONE) {
            movepower *= 2;
        }
        break;
    case MOVE_ASSURANCE:
    case MOVE_REVENGE:
        if (DefendingMon.assuranceDamage) {
            movepower *= 2;
        }
        break;
    case MOVE_WATER_PLEDGE:
    case MOVE_FIRE_PLEDGE:
    case MOVE_GRASS_PLEDGE:
        // TODO
        break;
    case MOVE_GUST:
    case MOVE_TWISTER:
        // TODO: handle charging turn of Sky Drop
        if (DefendingMon.effectOfMoves & MOVE_EFFECT_FLAG_FLYING_IN_AIR) {
            movepower *= 2;
        }
        break;
    case MOVE_HEX:
        if (DefendingMon.condition & STATUS_ALL) {
            movepower *= 2;
        }
        break;
    case MOVE_PAYBACK:
        // TODO: Check correctness
        if (sp->playerActions[defender][0] == CONTROLLER_COMMAND_40) {
            movepower *= 2;
        }
        break;
    case MOVE_PURSUIT:
        // TODO: Handle this massive headache later
        movepower = movepower * damage_value / 10;
        break;
    case MOVE_ROUND:
        // TODO: Implement Round
        break;
    case MOVE_SMELLING_SALTS:
        if (DefendingMon.condition & STATUS_PARALYSIS) {
            movepower *= 2;
        }
        break;
    case MOVE_TEMPER_FLARE:
    case MOVE_STOMPING_TANTRUM:
        if (AttackingMon.hasMoveFailureLastTurn) {
            movepower *= 2;
        }
        break;
    case MOVE_WAKE_UP_SLAP:
        if (DefendingMon.condition & STATUS_SLEEP) {
            movepower *= 2;
        }
        break;
    case MOVE_WEATHER_BALL:
        if (noCloudNineAndAirLock) {
            if ((field_cond & FIELD_CONDITION_WEATHER)
            && !(field_cond & (WEATHER_STRONG_WINDS | WEATHER_SNOW_ANY))) {
                movepower *= 2;
            }
        }
        break;
    case MOVE_WATER_SHURIKEN:
        if (AttackingMon.species == SPECIES_GRENINJA
            && AttackingMon.form == 1) {
            movepower = 20;
        }
        break;
    case MOVE_BOLT_BEAK:
    case MOVE_FISHIOUS_REND:
        // https://www.smogon.com/forums/threads/sword-shield-battle-mechanics-research.3655528/post-8433978
        if (IsMovingAfterClient(sp, defender) == FALSE || sp->playerActions[sp->defence_client][3] == CONTROLLER_COMMAND_40) {
            movepower *= 2;
        }
        break;
    case MOVE_RISING_VOLTAGE:
        if ((terrainOverlayNumberOfTurnsLeft > 0) && (terrainOverlayType == ELECTRIC_TERRAIN)) {
            movepower = 140;
        }
        break;
    // Item-based
    case MOVE_FLING:
        // TODO: test Parental Bond interaction
        movepower = damage_power;
        break;
    case MOVE_NATURAL_GIFT:
        movepower = damage_power;
        break;
    // Other
    case MOVE_BEAT_UP:
        // when AI calls this function, it probably does not mess up the state, but it might not see the damage correctly
        for (int i = sp->beat_up_count; i < attackerPartySize; i++) {
            struct PartyPokemon *mon = damageCalc->attackerParty[i];
            if ((IsMonValidAndHealthy(mon))) {

                sp->beat_up_count = i + 1;
                sp->multiHitCountTemp++;
                int species = GetMonData(mon, MON_DATA_SPECIES, 0);
                int form = GetMonData(mon, MON_DATA_FORM, 0);
                movepower = 5 + (PokeFormNoPersonalParaGet(species, form, PERSONAL_BASE_ATTACK) / 10);
                break;

            }
        }

        break;
    case MOVE_ECHOED_VOICE:
        // TODO
        break;
    case MOVE_HIDDEN_POWER:
        movepower = 60;
        break;
    case MOVE_MAGNITUDE:
        movepower = damage_power;
        break;
    case MOVE_PRESENT:
        movepower = damage_power;
        break;
    case MOVE_TRIPLE_KICK:
        movepower = damage_power;
        break;
    case MOVE_TRUMP_CARD:
        movepower = damage_power;
        break;
    default:
        break;
    }

    // Commenting this should be fine
    // sp->damage_power = movepower;

    // TODO: Check if there are any moves not ported yet
    // movepower = movepower * sp->damage_value / 10;

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 1. Custom BP\n");
    debug_printf("[CalcBaseDamage] moveno: %d\n", moveno);
    debug_printf("[CalcBaseDamage] movepower: %d\n", movepower);
#endif

    //=====End of Step 1=====

    //=====Step 2. Base Power Modifiers=====

    SortRawSpeedNonRNGArray(bw, sp);

    // Z-move effects:

    // Move effects:

    // handle Helping Hand (+5 priority)
    // TODO: Handle multiple Helping Hand boosts
    if (AttackingMon.helpingHandFlag) {
        basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_5);
    }

    switch (moveno) {
        case MOVE_FACADE:
            if ((AttackingMon.condition & STATUS_FACADE_BOOST)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__2_0);
            }
            break;
        case MOVE_BRINE:
            if (DefendingMon.hp <= DefendingMon.maxhp / 2) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__2_0);
            }
            break;
        case MOVE_KNOCK_OFF:
            if (CanKnockOffApply(sp, attacker, defender)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_5);
            }
            break;
        case MOVE_VENOSHOCK:
            if (DefendingMon.condition &STATUS_POISON_ALL) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__2_0);
            }
            break;
        case MOVE_RETALIATE:
            {
                BOOL teammateFaintedLastTurn = FALSE;
                switch (attacker)
                {
                case BATTLER_PLAYER:
                    if (playerSideHasFaintedTeammateLastTurn == TRAINER_1 || playerSideHasFaintedTeammateLastTurn == TRAINER_BOTH)
                        teammateFaintedLastTurn = TRUE;
                    break;
                case BATTLER_ENEMY:
                    if (enemySideHasFaintedTeammateLastTurn == TRAINER_1 || enemySideHasFaintedTeammateLastTurn == TRAINER_BOTH)
                        teammateFaintedLastTurn = TRUE;
                    break;
                case BATTLER_PLAYER2:
                    if (playerSideHasFaintedTeammateLastTurn == TRAINER_2 || playerSideHasFaintedTeammateLastTurn == TRAINER_BOTH)
                        teammateFaintedLastTurn = TRUE;
                    break;
                case BATTLER_ENEMY2:
                    if (enemySideHasFaintedTeammateLastTurn == TRAINER_2 || enemySideHasFaintedTeammateLastTurn == TRAINER_BOTH)
                        teammateFaintedLastTurn = TRUE;
                    break;
                }

                if (teammateFaintedLastTurn) {
                    basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__2_0);
                }
            }
            break;
        case MOVE_FUSION_FLARE:
            // TODO
            break;
        case MOVE_FUSION_BOLT:
            // TODO
            break;
        case MOVE_GRAV_APPLE:
            // https://www.smogon.com/forums/threads/sword-shield-battle-mechanics-research.3655528/post-8870357
            if ((field_cond & FIELD_STATUS_GRAVITY)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_5);
            }
            break;
        case MOVE_EXPANDING_FORCE:
            // https://www.smogon.com/forums/threads/sword-shield-battle-mechanics-research.3655528/post-8520635
            if ((terrainOverlayNumberOfTurnsLeft > 0) && (terrainOverlayType == MISTY_TERRAIN)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_5);
            }
            break;
        case MOVE_MISTY_EXPLOSION:
            // https://www.smogon.com/forums/threads/sword-shield-battle-mechanics-research.3655528/post-8520635
            if ((terrainOverlayNumberOfTurnsLeft > 0) && (terrainOverlayType == MISTY_TERRAIN)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_5);
            }
            break;
        case MOVE_LASH_OUT:
            // https://www.smogon.com/forums/threads/sword-shield-battle-mechanics-research.3655528/post-8870357
            // TODO
            if (FALSE) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__2_0);
            }
            break;


        default:
            break;
    }

    // Effects relative to a particular slot of the field (Wish, Lunar Dance, Future Sight, etc.):

    // handle Charge
    if ((AttackingMon.effectOfMoves & MOVE_EFFECT_FLAG_CHARGE)
    && (movetype == TYPE_ELECTRIC)) {
        basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__2_0);
    }

    // handle Me First
    if (sp->battlemon[attacker].moveeffect.meFirstFlag) {
        if (sp->me_first_total_turns == sp->battlemon[attacker].moveeffect.meFirstCount) {
            sp->battlemon[attacker].moveeffect.meFirstCount--;
        }

        if ((sp->me_first_total_turns - sp->battlemon[attacker].moveeffect.meFirstCount) < 2) {
            basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_5);
        } else {
            sp->battlemon[attacker].moveeffect.meFirstFlag = 0;
        }
    }

    // Effects relative to a particular side of the field (Tailwind, Safeguard, Pledge combo effects, Wide Guard, etc.):

    // Field effects (weather conditions, Terrains, Imprison, Ion Deluge, Magic Room, Gravity, etc.):

    if (noCloudNineAndAirLock) {
        if ((field_cond & (FIELD_STATUS_FOG | WEATHER_HAIL_ANY | WEATHER_SANDSTORM_ANY | WEATHER_RAIN_ANY | WEATHER_SNOW_ANY))
        && (moveno == MOVE_SOLAR_BEAM || moveno == MOVE_SOLAR_BLADE)) {
            basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__0_5);
        }
    }

    // handle Terrain overlays
    if (terrainOverlayNumberOfTurnsLeft > 0) {
        switch (terrainOverlayType) {
            case GRASSY_TERRAIN:
                if (AttackingMon.isGrounded && movetype == TYPE_GRASS) {
                    basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_3);
                }
                if (moveno == MOVE_EARTHQUAKE || moveno == MOVE_MAGNITUDE || moveno == MOVE_BULLDOZE) {
                    basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__0_5);
                }
                break;
            case ELECTRIC_TERRAIN:
                if (AttackingMon.isGrounded && movetype == TYPE_ELECTRIC) {
                    basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_3);
                }
                break;
            case MISTY_TERRAIN:
                if (DefendingMon.isGrounded && movetype == TYPE_DRAGON) {
                    basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__0_5);
                }
                break;
            case PSYCHIC_TERRAIN:
                if (AttackingMon.isGrounded && movetype == TYPE_PSYCHIC) {
                    basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_3);
                }
                break;
            default:
                break;
        }
    }

    // handle Mud Sport
    if ((movetype == TYPE_ELECTRIC) && (CheckFieldMoveEffect(bw, sp, MOVE_EFFECT_FLAG_MUD_SPORT))) {
        basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__0_33);
    }

    // handle Water Sport
    if ((movetype == TYPE_FIRE) && (CheckFieldMoveEffect(bw, sp, MOVE_EFFECT_FLAG_WATER_SPORT))) {
        basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__0_33);
    }

    // Poison Touch:

    // All other abilities:

    for (i = 0; i < maxBattlers; i++) {

        // if Dark Aura is present but not Aura Break
        if (!darkAuraApplied
            && (movetype == TYPE_DARK)
            && (battlerAbilities[damageCalc->rawSpeedNonRNGClientOrder[i]] == ABILITY_DARK_AURA)
            && (fieldHasAuraBreak == FALSE)) {
                darkAuraApplied = TRUE;
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_33);
                continue;
        }

        // if Aura Break is present and also Dark Aura
        if (!darkAuraApplied
            && (movetype == TYPE_DARK)
            && (battlerAbilities[damageCalc->rawSpeedNonRNGClientOrder[i]] == ABILITY_AURA_BREAK)
            && (fieldHasDarkAura == TRUE)) {
                darkAuraApplied = TRUE;
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__0_75);
                continue;
        }

#if FAIRY_TYPE_IMPLEMENTED == 1
        // if Fairy Aura is present but not Aura Break
        if (!fairyAuraApplied
            && (movetype == TYPE_DARK)
            && (battlerAbilities[damageCalc->rawSpeedNonRNGClientOrder[i]] == ABILITY_FAIRY_AURA)
            && (fieldHasAuraBreak == FALSE)) {
                fairyAuraApplied = TRUE;
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_33);
                continue;
        }

        // if Aura Break is present and also Fairy Aura
        if (!fairyAuraApplied
            && (movetype == TYPE_DARK)
            && (battlerAbilities[damageCalc->rawSpeedNonRNGClientOrder[i]] == ABILITY_AURA_BREAK)
            && (fieldHasFairyAura == TRUE)) {
            fairyAuraApplied = TRUE;
            basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__0_75);
            continue;
        }
#endif

        if (attacker == damageCalc->rawSpeedNonRNGClientOrder[i]) {
            // handle Rivalry
            if ((AttackingMon.ability == ABILITY_RIVALRY)
            && (AttackingMon.sex == DefendingMon.sex)
            && (AttackingMon.sex != POKEMON_GENDER_UNKNOWN)
            && (DefendingMon.sex != POKEMON_GENDER_UNKNOWN)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_25);
                continue;
            }

            if ((AttackingMon.ability == ABILITY_RIVALRY)
            && (AttackingMon.sex != DefendingMon.sex)
            && (AttackingMon.sex != POKEMON_GENDER_UNKNOWN)
            && (DefendingMon.sex != POKEMON_GENDER_UNKNOWN)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__0_75);
                continue;
            }

            if (MoveIsAffectedByNormalizeVariants(moveno)) {
                // handle Aerilate - 20% boost if a Normal type move was changed to a Flying type move. Does not boost Flying type moves themselves
                if (AttackingMon.ability == ABILITY_AERILATE && movetype == TYPE_FLYING && originalMoveType == TYPE_NORMAL) {
                    basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                    continue;
                }

                // handle Pixilate - 20% boost if a Normal type move was changed to a Fairy type move. Does not boost Fairy type moves themselves
                if (AttackingMon.ability == ABILITY_PIXILATE && movetype == TYPE_FAIRY && originalMoveType == TYPE_NORMAL) {
                    basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                    continue;
                }

                // handle Galvanize - 20% boost if a Normal type move was changed to an Electric type move. Does not boost Electric type moves themselves
                if (AttackingMon.ability == ABILITY_GALVANIZE && movetype == TYPE_ELECTRIC && originalMoveType == TYPE_NORMAL) {
                    basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                    continue;
                }

                // handle Refrigerate - 20% boost if a Normal type move was changed to an Ice type move. Does not boost Ice type moves themselves
                if (AttackingMon.ability == ABILITY_REFRIGERATE && movetype == TYPE_ICE && originalMoveType == TYPE_NORMAL) {
                    basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                    continue;
                }

                // handle Normalize - 20% boost if a Normal type move is used (and it changes types to Normal too)
                if (AttackingMon.ability == ABILITY_NORMALIZE && movetype == TYPE_NORMAL) {
                    basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                    continue;
                }
            }

            // handle Iron Fist
            if ((AttackingMon.ability == ABILITY_IRON_FIST)
            && IsElementInArray(PunchingMovesTable, (u16 *)&moveno, NELEMS(PunchingMovesTable), sizeof(PunchingMovesTable[0]))) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                continue;
            }

            if ((AttackingMon.ability == ABILITY_RECKLESS)
            && (moveEffect == MOVE_EFFECT_CRASH_ON_MISS)
            && (moveEffect == MOVE_EFFECT_RECOIL_QUARTER)
            && (moveEffect == MOVE_EFFECT_RECOIL_THIRD)
            && (moveEffect == MOVE_EFFECT_RECOIL_BURN_HIT)
            && (moveEffect == MOVE_EFFECT_RECOIL_PARALYZE_HIT)
            && (moveEffect == MOVE_EFFECT_RECOIL_HALF)
            && (moveEffect == MOVE_EFFECT_CONFUSE_AND_CRASH_IF_MISS)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                continue;
            }

            // handle Sheer Force
            if ((AttackingMon.ability == ABILITY_SHEER_FORCE)
            && AttackingMon.sheerForceFlag == 1) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_3);
                continue;
            }

            // Sand Force boosts damage in sand for certain move types
            if ((AttackingMon.ability == ABILITY_SAND_FORCE)
            && (field_cond & WEATHER_SANDSTORM_ANY)
            && (movetype == TYPE_GROUND || movetype == TYPE_ROCK || movetype == TYPE_STEEL)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_3);
                continue;
            }

            // handle Analytic
            if (AttackingMon.ability == ABILITY_ANALYTIC) {
                for (i = 0; i < 4; i++) {
                    // TODO: handle without bw, sp
                    if (attacker != i && damageCalc->clients[i].hp != 0 && CalcSpeed(bw, sp, attacker, i, 0) == 0) {
                        break;
                    }
                }
                if (i == 4) {
                    basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_3);
                    continue;
                }
            }

            // handle Tough Claws
            if ((AttackingMon.ability == ABILITY_TOUGH_CLAWS)
            && (IsContactBeingMade(AttackingMon.ability, AttackingMon.item_held_effect, DefendingMon.item_held_effect, moveno, moveFlag))) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_3);
                continue;
            }

            // handle Technician
            if ((AttackingMon.ability == ABILITY_TECHNICIAN)
            && (moveno != MOVE_STRUGGLE)
            && (movepower <= 60)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_5);
                continue;
            }

            // handle Flare Boost
            if ((AttackingMon.ability == ABILITY_FLARE_BOOST)
            && (AttackingMon.condition & STATUS_BURN)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_5);
                continue;
            }

            // handle Toxic Boost
            if ((AttackingMon.ability == ABILITY_TOXIC_BOOST)
            && (AttackingMon.condition & (STATUS_BAD_POISON | STATUS_POISON))) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_5);
                continue;
            }

            // handle Strong Jaw
            if ((AttackingMon.ability == ABILITY_STRONG_JAW)
            && IsElementInArray(StrongJawMovesTable, (u16 *)&moveno, NELEMS(StrongJawMovesTable), sizeof(StrongJawMovesTable[0]))) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_5);
                continue;
            }

            // handle Mega Launcher
            if ((AttackingMon.ability == ABILITY_MEGA_LAUNCHER)
            && IsElementInArray(MegaLauncherMovesTable, (u16 *)&moveno, NELEMS(MegaLauncherMovesTable), sizeof(MegaLauncherMovesTable[0]))) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_5);
                continue;
            }

            // handle Sharpness
            if ((AttackingMon.ability == ABILITY_SHARPNESS)
            && IsElementInArray(SharpnessMovesTable, (u16 *)&moveno, NELEMS(SharpnessMovesTable), sizeof(SharpnessMovesTable[0]))) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_5);
                continue;
            }

            // handle Power Spot
            // TODO: confirm location
            if (AttackingMonAlly.ability == ABILITY_POWER_SPOT) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_3);
            }

            // handle Punk Rock
            // TODO: confirm location
            if (MoldBreakerAbilityCheck(sp, attacker, attacker, ABILITY_PUNK_ROCK) && IsMoveSoundBased(moveno)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_3);
            }

            // handle Steely Spirit for the attacker--can stack
            // TODO: confirm location
            if (movetype == TYPE_STEEL && AttackingMon.ability == ABILITY_STEELY_SPIRIT) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_5);
            }
        }

        if (BATTLER_ALLY(attacker) == damageCalc->rawSpeedNonRNGClientOrder[i]) {
            // Handle Battery
            if ((AttackingMonAlly.ability == ABILITY_BATTERY)
            && (movesplit == SPLIT_SPECIAL)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_33);
                continue;
            }

            // handle Steely Spirit for the ally
            if (movetype == TYPE_STEEL && AttackingMonAlly.ability == ABILITY_STEELY_SPIRIT) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_5);
            }
        }


        if (defender == damageCalc->rawSpeedNonRNGClientOrder[i]) {
            // Handle Dry Skin
            if ((movetype == TYPE_FIRE)
            && (MoldBreakerAbilityCheckInternal(attacker, defender, AttackingMon.ability, DefendingMon.ability, moveno, movesplit, ABILITY_DRY_SKIN) == TRUE)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_25);
                continue;
            }
        }
    }

    // Items:

    for (i = 0; i < maxBattlers; i++) {
        if (attacker == damageCalc->rawSpeedNonRNGClientOrder[i]) {
            // Handle Muscle Band
            if ((AttackingMon.item_held_effect == HOLD_EFFECT_POWER_UP_PHYS) && (movesplit == SPLIT_PHYSICAL)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_1);
                continue;
            }

            if ((AttackingMon.item_held_effect == HOLD_EFFECT_POWER_UP_SPEC) && (movesplit == SPLIT_SPECIAL)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_1);
                continue;
            }

            // type boosting held items
            {
                u8 element[2] = {AttackingMon.item_held_effect, movetype};
                if (IsElementInArray(HeldItemPowerUpTable, element, NELEMS(HeldItemPowerUpTable), sizeof(element))) {
                    basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                    continue;
                }
            }

            // handle Adamant Orb
            if ((AttackingMon.item_held_effect == HOLD_EFFECT_DIALGA_BOOST)
            && ((movetype == TYPE_DRAGON) || (movetype == TYPE_STEEL))
            && (AttackingMon.species == SPECIES_DIALGA)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                continue;
            }

            // handle Lustrous Orb
            if ((AttackingMon.item_held_effect == HOLD_EFFECT_PALKIA_BOOST)
            && ((movetype == TYPE_DRAGON) || (movetype == TYPE_WATER))
            && (AttackingMon.species == SPECIES_PALKIA)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                continue;
            }

            // handle Griseous Orb
            if ((AttackingMon.item_held_effect == HOLD_EFFECT_GIRATINA_BOOST)
            && ((movetype == TYPE_DRAGON) || (movetype == TYPE_GHOST))
            && (AttackingMon.species == SPECIES_GIRATINA)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                continue;
            }

            // handle Adamant Crystal, lustrous globe & griseous core
            if ((AttackingMon.item_held_effect == HOLD_EFFECT_DIALGA_BOOST_AND_TRANSFORM)
            && ((movetype == TYPE_DRAGON) || (movetype == TYPE_STEEL))
            && (AttackingMon.species == SPECIES_DIALGA)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                continue;
            }

            // handle Lustrous Globe
            if ((AttackingMon.item_held_effect == HOLD_EFFECT_PALKIA_BOOST_AND_TRANSFORM)
            && ((movetype == TYPE_DRAGON) || (movetype == TYPE_WATER))
            && (AttackingMon.species == SPECIES_PALKIA)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                continue;
            }

            // handle Griseous Core
            if ((AttackingMon.item_held_effect == HOLD_EFFECT_GIRATINA_BOOST_AND_TRANSFORM)
            && ((movetype == TYPE_DRAGON) || (movetype == TYPE_GHOST))
            && (AttackingMon.species == SPECIES_GIRATINA)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                continue;
            }

            // handle Soul Dew
            if ((AttackingMon.item_held_effect == HOLD_EFFECT_LATI_SPECIAL)
            && ((AttackingMon.species == SPECIES_LATIOS) || (AttackingMon.species == SPECIES_LATIAS))
            && (movetype == TYPE_DRAGON || movetype == TYPE_PSYCHIC)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                continue;
            }

            // handle Gems
            if (gemBoostingMove) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_3);
                continue;
            }

            // handle Punching Glove
            if ((AttackingMon.item_held_effect == HOLD_EFFECT_INCREASE_PUNCHING_MOVE_DMG) && IsElementInArray(PunchingMovesTable, (u16 *)&moveno, NELEMS(PunchingMovesTable), sizeof(PunchingMovesTable[0]))) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_1_BUT_HIGHER);
                continue;
            }

            // handle Wellspring Mask
            if ((AttackingMon.item_held_effect == HOLD_EFFECT_WELLSPRING_MASK)
            && (AttackingMon.species == SPECIES_OGERPON)
            && (AttackingMon.form == 1 || AttackingMon.form == 5)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                continue;
            }

            // handle Hearthflame Mask
            if ((AttackingMon.item_held_effect == HOLD_EFFECT_HEARTHFLAME_MASK)
            && (AttackingMon.species == SPECIES_OGERPON)
            && (AttackingMon.form == 2 || AttackingMon.form == 6)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                continue;
            }

            // handle Cornerstone Mask
            if ((AttackingMon.item_held_effect == HOLD_EFFECT_CORNERSTONE_MASK)
            && (AttackingMon.species == SPECIES_OGERPON)
            && (AttackingMon.form == 3 || AttackingMon.form == 7)) {
                basePowerModifier = QMul_RoundUp(basePowerModifier, UQ412__1_2);
                continue;
            }
        }

    }

    // Stall (the ability):

    // Apply the chained modifier to the starting base power. That is, multiply the starting base power by the chained base power modifiers, divide by 4096, and pokeRound the result. If the base power would now be less than 1, make it 1. Finally, if the base power is greater than 65,535, make it the the current base power modulo 65,536 (BP % 65536).

    movepower = QMul_RoundDown(movepower, basePowerModifier);
    movepower = movepower < 1 ? 1 : movepower;
    movepower = movepower % 65536;

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 2. Base Power Modifiers\n");
    debug_printf("[CalcBaseDamage] basePowerModifier: %d\n", basePowerModifier);
    debug_printf("[CalcBaseDamage] movepower: %d\n", movepower);
#endif

    //=====End of Step 2=====

    //=====Step 3: Attack Modifiers=====

    // Step 3.1. handle Unaware
    if (MoldBreakerAbilityCheckInternal(attacker, defender, AttackingMon.ability, DefendingMon.ability, moveno, movesplit, ABILITY_UNAWARE) == TRUE) {
        AttackingMon.atkstate = 0;
        AttackingMon.spatkstate = 0;
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 3.1. handle Unaware\n");
    debug_printf("[CalcBaseDamage] AttackingMon.atkstate: %d\n", AttackingMon.atkstate);
    debug_printf("[CalcBaseDamage] AttackingMon.spatkstate: %d\n", AttackingMon.spatkstate);
#endif

    // Step 3.2. handle Foul Play
    if (moveno == MOVE_FOUL_PLAY) {
        AttackingMon.attack = DefendingMon.attack;
        AttackingMon.atkstate = DefendingMon.atkstate;
    } else if (moveno == MOVE_BODY_PRESS) {
        AttackingMon.attack = AttackingMon.defense;
        AttackingMon.atkstate = AttackingMon.defstate;
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 3.2. handle Foul Play\n");
    debug_printf("[CalcBaseDamage] AttackingMon.attack: %d\n", AttackingMon.attack);
    debug_printf("[CalcBaseDamage] AttackingMon.atkstate: %d\n", AttackingMon.atkstate);
#endif

    // Step 3.3. Critical hit
    if (critical > 1) {
        // critical hits ignore attacker attack drops
        AttackingMon.atkstate = AttackingMon.atkstate < 0 ? 0 : AttackingMon.atkstate;
        AttackingMon.spatkstate = AttackingMon.spatkstate < 0 ? 0 : AttackingMon.spatkstate;
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 3.3. Critical hit\n");
    debug_printf("[CalcBaseDamage] AttackingMon.atkstate: %d\n", AttackingMon.atkstate);
    debug_printf("[CalcBaseDamage] AttackingMon.spatkstate: %d\n", AttackingMon.spatkstate);
#endif

    // Step 3.4. Attack boosts/drops
    attack = AttackingMon.attack * StatBoostModifiersTemp[AttackingMon.atkstate + 6][0];
    attack /= StatBoostModifiersTemp[AttackingMon.atkstate + 6][1];
    attack = attack % 65536;

    sp_attack = AttackingMon.sp_attack * StatBoostModifiersTemp[AttackingMon.spatkstate + 6][0];
    sp_attack /= StatBoostModifiersTemp[AttackingMon.spatkstate + 6][1];
    sp_attack = sp_attack % 65536;

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 3.4. Attack boosts/drops\n");
    debug_printf("[CalcBaseDamage] attack: %d\n", attack);
    debug_printf("[CalcBaseDamage] sp_attack: %d\n", sp_attack);
#endif

    // Step 3.5. Hustle
    if (AttackingMon.ability == ABILITY_HUSTLE) {
        attack = QMul_RoundDown(attack, UQ412__1_5);
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 3.5. Hustle\n");
    debug_printf("[CalcBaseDamage] attack: %d\n", attack);
#endif

    switch (movesplit) {
        case SPLIT_PHYSICAL:
            calculatedAttack = attack;
            break;
        case SPLIT_SPECIAL:
            calculatedAttack = sp_attack;
            break;

        default:
            GF_ASSERT(movesplit != SPLIT_STATUS);
            break;
    }

    // Step 3.6. Remaining attack modifiers

    // Abilities
    for (i = 0; i < maxBattlers; i++) {
        if (attacker == damageCalc->rawSpeedNonRNGClientOrder[i]) {
            // handle Slow Start
            if ((AttackingMon.ability == ABILITY_SLOW_START)
            && ((BattleWorkMonDataGet(bw, sp, 3, 0) - BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_SLOW_START_COUNTER, NULL)) < 5)
            && (movesplit == SPLIT_PHYSICAL || MoveIsZMove(moveno))) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__0_5);
            }

            // handle Defeatist
            if ((AttackingMon.ability == ABILITY_DEFEATIST) && (AttackingMon.hp <= AttackingMon.maxhp / 2)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__0_5);
            }

            // handle weather boosts
            if (noCloudNineAndAirLock) {
                if ((field_cond & WEATHER_SUNNY_ANY)
                && (AttackingMon.ability == ABILITY_SOLAR_POWER)
                && (movesplit == SPLIT_SPECIAL)) {
                    attackModifier = QMul_RoundUp(attackModifier, UQ412__1_5);
                }
                if ((!flowerGiftAppliedForAttackModifier)
                && (field_cond & WEATHER_SUNNY_ANY)
                && (AttackingMon.ability == ABILITY_FLOWER_GIFT)
                && (movesplit == SPLIT_PHYSICAL)) {
                    flowerGiftAppliedForAttackModifier = TRUE;
                    attackModifier = QMul_RoundUp(attackModifier, UQ412__1_5);
                }
            }

            // handle Guts
            // TODO: Is Freeze affected? (It doesn't matter)
            if ((AttackingMon.ability == ABILITY_GUTS) && (AttackingMon.condition) && (movesplit == SPLIT_PHYSICAL)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__1_5);
            }

            // handle Overgrow
            if ((movetype == TYPE_GRASS) && (AttackingMon.ability == ABILITY_OVERGROW) && (AttackingMon.hp <= AttackingMon.maxhp / 3)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__1_5);
            }

            // handle Blaze
            if ((movetype == TYPE_FIRE) && (AttackingMon.ability == ABILITY_BLAZE) && (AttackingMon.hp <= AttackingMon.maxhp / 3)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__1_5);
            }

            // handle Torrent
            if ((movetype == TYPE_WATER) && (AttackingMon.ability == ABILITY_TORRENT) && (AttackingMon.hp <= AttackingMon.maxhp / 3)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__1_5);
            }

            // handle Swarm
            if ((movetype == TYPE_BUG) && (AttackingMon.ability == ABILITY_SWARM) && (AttackingMon.hp <= AttackingMon.maxhp / 3)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__1_5);
            }

            // handle Flash Fire
            if ((BattlePokemonParamGet(sp, attacker, BATTLE_MON_FLASH_FIRE_ACTIVATED, NULL)) && (movetype == TYPE_FIRE)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__1_5);
            }

            // handle Plus/Minus
            if (((AttackingMon.ability == ABILITY_PLUS) || (AttackingMon.ability == ABILITY_MINUS))
            && ((AttackingMonAlly.ability == ABILITY_PLUS) || (AttackingMonAlly.ability == ABILITY_MINUS))
            && (movesplit == SPLIT_SPECIAL)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__1_5);
            }

            // handle Steelworker
            if (AttackingMon.ability == ABILITY_STEELWORKER && (movetype == TYPE_STEEL)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__1_5);
            }

            // handle Huge Power/Pure Power
            if (((AttackingMon.ability == ABILITY_HUGE_POWER) || (AttackingMon.ability == ABILITY_PURE_POWER)) && (movesplit == SPLIT_PHYSICAL)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__2_0);
            }

            // handle Water Bubble
            if (MoldBreakerAbilityCheck(sp, attacker, attacker, ABILITY_WATER_BUBBLE) && (movetype == TYPE_WATER)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__2_0);
            }

            //handle Stakeout
            // TODO

            // handle Gorilla Tactics
            // https://www.smogon.com/forums/threads/sword-shield-battle-mechanics-research.3655528/post-8303447
            if (AttackingMon.ability == ABILITY_GORILLA_TACTICS) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__1_5);
            }

            // handle Dragon's Maw
            // TODO: confirm location
            if (AttackingMon.ability == ABILITY_DRAGONS_MAW && (movetype == TYPE_DRAGON)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__1_5);
            }

            // handle Transistor
            // TODO: confirm location
            if (AttackingMon.ability == ABILITY_TRANSISTOR && (movetype == TYPE_ELECTRIC)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__1_3);
            }

            // handle Rocky Payload
            if (AttackingMon.ability == ABILITY_ROCKY_PAYLOAD && (movetype == TYPE_ROCK)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__1_5);
            }
        }

        if (BATTLER_ALLY(attacker) == damageCalc->rawSpeedNonRNGClientOrder[i]) {
            // handle weather boosts
            if (noCloudNineAndAirLock) {
                if ((!flowerGiftAppliedForAttackModifier)
                && (field_cond & WEATHER_SUNNY_ANY)
                && (AttackingMonAlly.ability == ABILITY_FLOWER_GIFT)
                && (movesplit == SPLIT_PHYSICAL)) {
                    flowerGiftAppliedForAttackModifier = TRUE;
                    attackModifier = QMul_RoundUp(attackModifier, UQ412__1_5);
                }
            }
        }

        if (defender == damageCalc->rawSpeedNonRNGClientOrder[i]) {
            // handle Heatproof
            // https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-9800504
            if ((movetype == TYPE_FIRE)
            && (MoldBreakerAbilityCheckInternal(attacker, defender, AttackingMon.ability, DefendingMon.ability, moveno, movesplit, ABILITY_HEATPROOF) == TRUE)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__0_5);
                continue;
            }

            // handle Thick Fat
            if ((MoldBreakerAbilityCheckInternal(attacker, defender, AttackingMon.ability, DefendingMon.ability, moveno, movesplit, ABILITY_THICK_FAT) == TRUE)
            && ((movetype == TYPE_FIRE) || (movetype == TYPE_ICE))) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__0_5);
            }

            // handle Water Bubble
            if (MoldBreakerAbilityCheckInternal(attacker, defender, AttackingMon.ability, DefendingMon.ability, moveno, movesplit, ABILITY_WATER_BUBBLE) && (movetype == TYPE_FIRE)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__0_5);
            }

            // handle Purifying Salt
            // https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-9469856
            if ((MoldBreakerAbilityCheckInternal(attacker, defender, AttackingMon.ability, DefendingMon.ability, moveno, movesplit, ABILITY_PURIFYING_SALT)) && (movetype == TYPE_GHOST)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__0_5);
            }
        }
    }

    // Items
    for (i = 0; i < maxBattlers; i++) {
        if (attacker == damageCalc->rawSpeedNonRNGClientOrder[i]) {
            // handle Choice Band
            if ((AttackingMon.item_held_effect == HOLD_EFFECT_CHOICE_ATK) && (movesplit == SPLIT_PHYSICAL)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__1_5);
            }

            // handle Choice Specs
            if ((AttackingMon.item_held_effect == HOLD_EFFECT_CHOICE_SPATK) && (movesplit == SPLIT_SPECIAL)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__1_5);
            }

            // handle Thick Club
            if ((AttackingMon.item_held_effect == HOLD_EFFECT_CUBONE_ATK_UP)
            && ((AttackingMon.species == SPECIES_CUBONE) || (AttackingMon.species == SPECIES_MAROWAK))
            // it’s not a Ditto/Smeargle/Mew Transformed into the species
            && !(AttackingMon.condition2 & STATUS2_TRANSFORMED)
            && (movesplit == SPLIT_PHYSICAL)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__2_0);
            }

            // handle Deep Sea Tooth
            if ((AttackingMon.item_held_effect == HOLD_EFFECT_CLAMPERL_SPATK)
            && (AttackingMon.species == SPECIES_CLAMPERL)
            // it’s not a Ditto/Smeargle/Mew Transformed into the species
            && !(AttackingMon.condition2 & STATUS2_TRANSFORMED)
            && (movesplit == SPLIT_SPECIAL)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__2_0);
            }

            // handle Light Ball
            if ((AttackingMon.item_held_effect == HOLD_EFFECT_PIKA_SPATK_UP)
            && (AttackingMon.species == SPECIES_PIKACHU)
            // it’s not a Ditto/Smeargle/Mew Transformed into the species
            && !(AttackingMon.condition2 & STATUS2_TRANSFORMED)) {
                attackModifier = QMul_RoundUp(attackModifier, UQ412__2_0);
            }
        }
    }

    // Apply the chained modifier to the current attack. That is, multiply the current attack by the chained attack modifiers, divide by 4096, and pokeRound the result. If the current attack would now be less than 1, make it 1. Finally, if the attack is greater than 65,535, make it the attack modulo 65,536 (attack % 65536).
    calculatedAttack = QMul_RoundDown(calculatedAttack, attackModifier);
    calculatedAttack = calculatedAttack < 1 ? 1 : calculatedAttack;
    calculatedAttack = calculatedAttack % 65536;

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 3.6. Attack Modifiers\n");
    debug_printf("[CalcBaseDamage] attackModifier: %d\n", attackModifier);
    debug_printf("[CalcBaseDamage] calculatedAttack: %d\n", calculatedAttack);
#endif

    switch (movesplit) {
        case SPLIT_PHYSICAL:
            // Handle Tablets of Ruin
            // TODO: confirm location
            // https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-9425737
            if ((damageCalc->fieldHasTabletsOfRuin) && (DefendingMon.ability != ABILITY_TABLETS_OF_RUIN)) {
                if (((calculatedAttack * UQ412__0_75) & 0xFFFu) <= 0x800) {
                    calculatedAttack = (calculatedAttack * UQ412__0_75) >> 12;
                } else {
                    calculatedAttack = ((calculatedAttack * UQ412__0_75) >> 12) + 1;
                }
            }
            break;
        case SPLIT_SPECIAL:
            // Handle Vessel of Ruin
            // TODO: confirm location, Mold Breaker interactions
            // https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-9425737
            if ((damageCalc->fieldHasVesselOfRuin) && (DefendingMon.ability != ABILITY_VESSEL_OF_RUIN)) {
                if (((calculatedAttack * UQ412__0_75) & 0xFFFu) <= 0x800) {
                    calculatedAttack = (calculatedAttack * UQ412__0_75) >> 12;
                } else {
                    calculatedAttack = ((calculatedAttack * UQ412__0_75) >> 12) + 1;
                }
            }
            break;
        default:
            GF_ASSERT(movesplit != SPLIT_STATUS);
            break;
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 3.7. Tablets of Ruin/Vessel of Ruin\n");
    debug_printf("[CalcBaseDamage] calculatedAttack: %d\n", calculatedAttack);
#endif

    //=====End of Step 3=====

    //=====Step 4. Defense Modifiers=====

    // Step 4.1. handle Unaware
    if (AttackingMon.ability == ABILITY_UNAWARE) {
        DefendingMon.defstate = 0;
        DefendingMon.spdefstate = 0;
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 4.1. handle Unaware\n");
    debug_printf("[CalcBaseDamage] DefendingMon.atkstate: %d\n", DefendingMon.atkstate);
    debug_printf("[CalcBaseDamage] DefendingMon.spatkstate: %d\n", DefendingMon.spatkstate);
#endif

    // Step 4.2. Chip Away / Sacred Sword
    if ((moveno == MOVE_CHIP_AWAY) || (moveno == MOVE_SACRED_SWORD)) {
        DefendingMon.defstate = 0;
        DefendingMon.spdefstate = 0;
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 4.2. Chip Away / Sacred Sword\n");
    debug_printf("[CalcBaseDamage] DefendingMon.defstate: %d\n", DefendingMon.defstate);
    debug_printf("[CalcBaseDamage] DefendingMon.spdefstate: %d\n", DefendingMon.spdefstate);
#endif

    // Step 4.3. Psyshock / Psystrike / Secret Sword
    if ((moveno == MOVE_PSYSHOCK) || (moveno == MOVE_PSYSTRIKE) || (moveno == MOVE_SECRET_SWORD)) {
        DefendingMon.sp_defense = DefendingMon.defense;
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 4.3. Psyshock / Psystrike / Secret Sword\n");
    debug_printf("[CalcBaseDamage] DefendingMon.sp_defense: %d\n", DefendingMon.sp_defense);
#endif

    // Step 4.4. Wonder Room
    // TODO

    // Step 4.5. Critical hit
    if (critical > 1) {
        // critical hits ignore defender's stat boosts
        DefendingMon.defstate = DefendingMon.defstate > 0 ? 0 : DefendingMon.defstate;
        DefendingMon.spdefstate = DefendingMon.spdefstate > 0 ? 0 : DefendingMon.spdefstate;
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 4.5. Critical hit\n");
    debug_printf("[CalcBaseDamage] DefendingMon.defstate: %d\n", DefendingMon.defstate);
    debug_printf("[CalcBaseDamage] DefendingMon.spdefstate: %d\n", DefendingMon.spdefstate);
#endif

    // Step 4.6. Defense boosts/drops
    defense = DefendingMon.defense * StatBoostModifiersTemp[DefendingMon.defstate + 6][0];
    defense /= StatBoostModifiersTemp[DefendingMon.defstate + 6][1];
    defense = defense % 65536;

    sp_defense = DefendingMon.sp_defense * StatBoostModifiersTemp[DefendingMon.spdefstate + 6][0];
    sp_defense /= StatBoostModifiersTemp[DefendingMon.spdefstate+ 6][1];
    sp_defense = sp_defense % 65536;

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 4.6. Defense boosts/drops\n");
    debug_printf("[CalcBaseDamage] defense: %d\n", defense);
    debug_printf("[CalcBaseDamage] sp_defense: %d\n", sp_defense);
#endif

    // Step 4.7. Sandstorm + Rock-type
    if (noCloudNineAndAirLock) {
        if ((field_cond & WEATHER_SANDSTORM_ANY)
        && HasType(sp, defender, TYPE_ROCK)) {
            sp_defense = QMul_RoundDown(sp_defense, UQ412__1_5);
        }
        if ((field_cond & WEATHER_SNOW_ANY)
        && HasType(sp, defender, TYPE_ICE)) {
            defense = QMul_RoundDown(defense, UQ412__1_5);
        }
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 4.7. Sandstorm + Rock-type\n");
    debug_printf("[CalcBaseDamage] defense: %d\n", defense);
    debug_printf("[CalcBaseDamage] sp_defense: %d\n", sp_defense);
#endif

    switch (movesplit) {
        case SPLIT_PHYSICAL:
            calculatedDefense = defense;
            break;
        case SPLIT_SPECIAL:
            calculatedDefense = sp_defense;
            break;

        default:
            GF_ASSERT(movesplit != SPLIT_STATUS);
            break;
    }

    // Step 4.8. Remaining defense modifiers

    // Abilities
    for (i = 0; i < maxBattlers; i++) {
        if (defender == damageCalc->rawSpeedNonRNGClientOrder[i]) {
            // handle weather boosts
            if (noCloudNineAndAirLock) {
                if ((!flowerGiftAppliedForDefenseModifier)
                && (field_cond & WEATHER_SUNNY_ANY)
                && (MoldBreakerAbilityCheck(sp, attack, defender, ABILITY_FLOWER_GIFT))
                && (movesplit == SPLIT_SPECIAL)) {
                    flowerGiftAppliedForDefenseModifier = TRUE;
                    defenseModifier = QMul_RoundUp(defenseModifier, UQ412__1_5);
                }
            }

            // handle Marvel Scale
            if ((MoldBreakerAbilityCheckInternal(attacker, defender, AttackingMon.ability, DefendingMon.ability, moveno, movesplit, ABILITY_MARVEL_SCALE) == TRUE)
            && (DefendingMon.condition)
            && (movesplit == SPLIT_PHYSICAL)) {
                defenseModifier = QMul_RoundUp(defenseModifier, UQ412__1_5);
            }

            // handle Grass Pelt
            if ((MoldBreakerAbilityCheckInternal(attacker, defender, AttackingMon.ability, DefendingMon.ability, moveno, movesplit, ABILITY_GRASS_PELT) == TRUE)
            && (terrainOverlayType == GRASSY_TERRAIN && terrainOverlayNumberOfTurnsLeft > 0)
            && (movesplit == SPLIT_PHYSICAL)) {
                defenseModifier = QMul_RoundUp(defenseModifier, UQ412__1_5);
            }

            // handle Fur Coat
            if ((MoldBreakerAbilityCheckInternal(attacker, defender, AttackingMon.ability, DefendingMon.ability, moveno, movesplit, ABILITY_FUR_COAT) == TRUE)
            && (movesplit == SPLIT_PHYSICAL)) {
                defenseModifier = QMul_RoundUp(defenseModifier, UQ412__2_0);
            }
        }

        if (BATTLER_ALLY(defender) == damageCalc->rawSpeedNonRNGClientOrder[i]) {
            // handle weather boosts
            if (noCloudNineAndAirLock) {
                if ((!flowerGiftAppliedForDefenseModifier)
                    && (field_cond & WEATHER_SUNNY_ANY)
                    && (MoldBreakerAbilityCheck(sp, attacker, BATTLER_ALLY(defender), ABILITY_FLOWER_GIFT))
                    && (movesplit == SPLIT_SPECIAL)) {
                    flowerGiftAppliedForDefenseModifier = TRUE;
                    defenseModifier = QMul_RoundUp(defenseModifier, UQ412__1_5);
                }
            }
        }
    }

    // Items
    for (i = 0; i < maxBattlers; i++) {
        if (defender == damageCalc->rawSpeedNonRNGClientOrder[i]) {
            // handle Eviolite
            if (DefendingMon.item_held_effect == HOLD_EFFECT_EVIOLITE) {
                u16 speciesWithForm;
                speciesWithForm = PokeOtherFormMonsNoGet(DefendingMon.species, DefendingMon.form);

                struct Evolution *evoTable;
                evoTable = sys_AllocMemory(0, MAX_EVOS_PER_POKE * sizeof(struct Evolution));
                ArchiveDataLoad(evoTable, ARC_EVOLUTIONS, speciesWithForm);

                // If a Pokémon has any evolutions, there should be an entry at the top that isn't EVO_NONE.
                // In that case, the Pokémon is capable of evolving, and so the effect of Eviolite should apply.
                if (evoTable[0].method != EVO_NONE) {
                    defenseModifier = QMul_RoundUp(defenseModifier, UQ412__1_5);
                }

                sys_FreeMemoryEz(evoTable);
            }

            // handle Assault Vest
            if ((DefendingMon.item_held_effect == HOLD_EFFECT_SPDEF_BOOST_NO_STATUS_MOVES) && (movesplit == SPLIT_SPECIAL)) {
                defenseModifier = QMul_RoundUp(defenseModifier, UQ412__1_5);
            }

            // handle Deep Sea Scale
            if ((DefendingMon.item_held_effect == HOLD_EFFECT_CLAMPERL_SPDEF)
            && (DefendingMon.species == SPECIES_CLAMPERL)
            // it’s not a Ditto/Smeargle/Mew Transformed into the species
            && !(AttackingMon.condition2 & STATUS2_TRANSFORMED)
            && (movesplit == SPLIT_SPECIAL)) {
                defenseModifier = QMul_RoundUp(defenseModifier, UQ412__2_0);
            }

            // handle Metal Powder
            if ((DefendingMon.item_held_effect == HOLD_EFFECT_DITTO_DEF_UP)
            && (DefendingMon.species == SPECIES_DITTO)
            // it’s not a Ditto/Smeargle/Mew Transformed into the species
            && !(AttackingMon.condition2 & STATUS2_TRANSFORMED)
            && (movesplit == SPLIT_PHYSICAL)) {
                defenseModifier = QMul_RoundUp(defenseModifier, UQ412__2_0);
            }
        }
    }

    // Apply the chained modifier to the starting defense. That is, multiply the starting defense by the chained defense modifiers, divide by 4096, and pokeRound the result. If the current defense would now be less than 1, make it 1. Finally, if the defense is greater than 65,535, make it the defense modulo 65,536 (defense % 65536). If the defense stat is 0 because of this modifier, the result of base damage will always be 2.
    calculatedDefense = QMul_RoundDown(calculatedDefense, defenseModifier);
    calculatedDefense = calculatedDefense < 1 ? 1 : calculatedDefense;
    calculatedDefense = calculatedDefense % 65536;

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 4.8. Defense Modifiers\n");
    debug_printf("[CalcBaseDamage] defenseModifier: %d\n", defenseModifier);
    debug_printf("[CalcBaseDamage] calculatedDefense: %d\n", calculatedDefense);
#endif

    switch (movesplit) {
        case SPLIT_PHYSICAL:
            // Handle Sword of Ruin
            // TODO: confirm location
            // https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-9425737
            if ((damageCalc->fieldHasSwordOfRuin) && (DefendingMon.ability != ABILITY_SWORD_OF_RUIN)) {
                if (((calculatedDefense * UQ412__0_75) & 0xFFFu) <= 0x800) {
                    calculatedDefense = (calculatedDefense * UQ412__0_75) >> 12;
                } else {
                    calculatedDefense = ((calculatedDefense * UQ412__0_75) >> 12) + 1;
                }
            }
            break;
        case SPLIT_SPECIAL:
            // Handle Beads of Ruin
            // TODO: confirm location
            // https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-9425737
            if ((damageCalc->fieldHasBeadsOfRuin) && (DefendingMon.ability != ABILITY_BEADS_OF_RUIN)) {
                if (((calculatedDefense * UQ412__0_75) & 0xFFFu) <= 0x800) {
                    calculatedDefense = (calculatedDefense * UQ412__0_75) >> 12;
                } else {
                    calculatedDefense = ((calculatedDefense * UQ412__0_75) >> 12) + 1;
                }
            }
            break;
        default:
            GF_ASSERT(movesplit != SPLIT_STATUS);
            break;
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 4.9. Sword of Ruin/Beads of Ruin\n");
    debug_printf("[CalcBaseDamage] calculatedDefense: %d\n", calculatedDefense);
#endif

    //=====End of Step 4=====

    //=====Step 5. Base Damage=====

    baseDamage = ((2 * AttackingMon.level / 5) + 2);

    // https://www.smogon.com/forums/threads/ultra-sun-ultra-moon-battle-mechanics-research-read-post-2.3620030/post-8198555
    if (calculatedDefense != 0) {
        baseDamage = (baseDamage * movepower * calculatedAttack / calculatedDefense);
    } else {
        baseDamage = 0;
    }

    baseDamage = (baseDamage / 50) + 2;

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 5. Base Damage\n");
    debug_printf("[CalcBaseDamage] baseDamage: %d\n", baseDamage);
#endif

    //=====End of Step 5=====

    return baseDamage;
}
