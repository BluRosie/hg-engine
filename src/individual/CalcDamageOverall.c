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

static u16 Calc_BaseDamage(
    struct BattleSystem *battle,
    struct BattleStruct *server,
    struct CalcParams *attacker,
    struct CalcParams *defender
)
{
    u32 ovyId, offset;
    u16 (*internalFunc)(struct BattleSystem *battle, struct BattleStruct *server, struct CalcParams *attacker, struct CalcParams *defender);

    ovyId = OVERLAY_CALCBASEDAMAGE;
    offset = 0x023C0400 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (u16 (*)(struct BattleSystem *battle, struct BattleStruct *server, struct CalcParams *attacker, struct CalcParams *defender))(offset);
    internalFunc(battle, server, attacker, defender);
    UnloadOverlayByID(ovyId);
}

static u16 Calc_ChainOtherModifiers(
    struct BattleStruct *server,
    struct CalcParams *attacker,
    struct CalcParams *defender,
    u32 battleType,
    u16 moveID,
    u8 moveType,
    u8 movePSS
)
{
    u32 ovyId, offset;
    u16 (*internalFunc)(struct BattleStruct *server, struct CalcParams *attacker, struct CalcParams *defender, u32 battleType, u16 moveID, u8 moveType, u8 movePSS);

    ovyId = OVERLAY_CALC_CHAINOTHERMODIFIERS;
    offset = 0x023C0400 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (u16 (*)(struct BattleStruct *server, struct CalcParams *attacker, struct CalcParams *defender, u32 battleType, u16 moveID, u8 moveType, u8 movePSS))(offset);
    internalFunc(server, attacker, defender, battleType, moveID, moveType, movePSS);
    UnloadOverlayByID(ovyId);
}




/**
 * @brief Checks if an immunity is active.
 * 
 * @param server 
 * @param attacker 
 * @param defender 
 * @param moveType 
 * @return BOOL 
 */
static BOOL Calc_ImmunityActive(struct BattleStruct *server, struct CalcParams *attacker, struct CalcParams *defender, u8 moveType)
{
    switch (moveType) {
        case TYPE_NORMAL:
        case TYPE_FIGHTING:
            // Stuff that removes existing immunities to Normal and Fighting:
            //   - Foresight / Odor Sleuth (same effect)
            //   - Scrappy
            //   - Mind's Eye
            if ((attacker->ability == ABILITY_SCRAPPY)
                    || (attacker->ability == ABILITY_MINDS_EYE)
                    || (server->battlemon[server->defence_client].condition2 & STATUS2_FORESIGHT)) {
                return FALSE;
            }
            break;
        case TYPE_GROUND:
            // Stuff that removes existing immunities to Ground:
            //   - Iron Ball
            //   - Ingrain
            //   - Roost
            //   - Gravity
            //   - TODO: Smack Down, Thousand Arrows
            if ((defender->heldItemEffect == HOLD_EFFECT_SPEED_DOWN_GROUNDED)
                    || (server->battlemon[server->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN)
                    || (server->oneTurnFlag[server->defence_client].haneyasume_flag)
                    || (server->field_condition & FIELD_STATUS_GRAVITY)) {
                return FALSE;
            }
            break;
        case TYPE_PSYCHIC:
            // Check for Miracle Eye
            if (server->battlemon[server->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_MIRACLE_EYE) {
                return FALSE;
            }
            break;
        default:
            return TRUE;
    }

    return TRUE;
}



#define __NORM     0
#define _IMMUN  0x7F
#define _NVEFF    -1
#define _SPEFF     1

/**
 * NxN matrix, modeled as an attacking type vs a defensive type. Each
 * value S in the matrix is one of the following values:
 *   -    0 -> no modifier
 *   -    1 -> attacking type is super effective
 *   -   -1 -> attacking type is not very effective
 *   - 0x7F -> defending type is immune
 * 
 * These values can be interpreted as the leftward shift to apply to
 * UQ412__1_0 for a particular matchup. e.g., if an attacking type is
 * super effective against the defending type, the type modifier becomes
 * UQ412__1_0 << 1, which is equivalent to UQ412__2_0. If the defender is
 * dual-type and its second type resists the attacking type, then the
 * final modifier would then be UQ412__2_0 >> 1, which is UQ412__1_0.
 * 
 * If the value stored is 0xFF (an immunity), then other special cases
 * need to be handled elsewhere (e.g. Scrappy, Foresight, Roost).
 *
 * This table as provided is up-to-date as of generation 9.
 */
static const s8 sTypeEffectiveness[18][18] = {
    // attacking type    vs:  NORM,  FIGHT, FLYING, POISON, GROUND,   ROCK,    BUG,  GHOST,  STEEL,  FAIRY,   FIRE,  WATER,  GRASS, ELECTR, PSYCHC,    ICE, DRAGON,   DARK
    [TYPE_NORMAL]       = { __NORM, __NORM, __NORM, __NORM, __NORM, _NVEFF, __NORM, _IMMUN, _NVEFF, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM },
    [TYPE_FIGHTING]     = { _SPEFF, __NORM, _NVEFF, _NVEFF, __NORM, _SPEFF, _NVEFF, _IMMUN, _SPEFF, _NVEFF, __NORM, __NORM, __NORM, __NORM, _NVEFF, _SPEFF, __NORM, _SPEFF },
    [TYPE_FLYING]       = { __NORM, _SPEFF, __NORM, __NORM, __NORM, _NVEFF, _SPEFF, __NORM, _NVEFF, __NORM, __NORM, __NORM, _SPEFF, __NORM, __NORM, __NORM, __NORM, __NORM },
    [TYPE_POISON]       = { __NORM, __NORM, __NORM, _NVEFF, _NVEFF, _NVEFF, __NORM, _NVEFF, _IMMUN, _SPEFF, __NORM, __NORM, _SPEFF, __NORM, __NORM, __NORM, __NORM, __NORM },
    [TYPE_GROUND]       = { __NORM, __NORM, _IMMUN, _SPEFF, __NORM, _SPEFF, _NVEFF, __NORM, _SPEFF, __NORM, _SPEFF, __NORM, _NVEFF, _SPEFF, __NORM, __NORM, __NORM, __NORM },
    [TYPE_ROCK]         = { __NORM, _NVEFF, _SPEFF, __NORM, _NVEFF, __NORM, _SPEFF, __NORM, _NVEFF, __NORM, _SPEFF, __NORM, __NORM, __NORM, __NORM, _SPEFF, __NORM, __NORM },
    [TYPE_BUG]          = { __NORM, _NVEFF, _NVEFF, _NVEFF, __NORM, __NORM, __NORM, _NVEFF, _NVEFF, _NVEFF, _NVEFF, __NORM, _SPEFF, __NORM, _SPEFF, __NORM, __NORM, _SPEFF },
    [TYPE_GHOST]        = { _IMMUN, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, _SPEFF, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, _SPEFF, __NORM, __NORM, _NVEFF },
    [TYPE_STEEL]        = { __NORM, __NORM, __NORM, __NORM, __NORM, _SPEFF, __NORM, __NORM, _NVEFF, _SPEFF, _NVEFF, _NVEFF, __NORM, _NVEFF, __NORM, _SPEFF, __NORM, __NORM },
    [TYPE_FAIRY]        = { __NORM, _SPEFF, __NORM, _NVEFF, __NORM, __NORM, __NORM, __NORM, _NVEFF, __NORM, _NVEFF, __NORM, __NORM, __NORM, __NORM, __NORM, _SPEFF, _SPEFF },
    [TYPE_FIRE]         = { __NORM, __NORM, __NORM, __NORM, __NORM, _NVEFF, _SPEFF, __NORM, _SPEFF, __NORM, _NVEFF, _NVEFF, _SPEFF, __NORM, __NORM, _SPEFF, _NVEFF, __NORM },
    [TYPE_WATER]        = { __NORM, __NORM, __NORM, __NORM, _SPEFF, _SPEFF, __NORM, __NORM, __NORM, __NORM, _SPEFF, _NVEFF, _NVEFF, __NORM, __NORM, __NORM, _NVEFF, __NORM },
    [TYPE_GRASS]        = { __NORM, __NORM, _NVEFF, _NVEFF, _SPEFF, _SPEFF, _NVEFF, __NORM, _NVEFF, __NORM, _NVEFF, _SPEFF, _NVEFF, __NORM, __NORM, __NORM, _NVEFF, __NORM },
    [TYPE_ELECTRIC]     = { __NORM, __NORM, _SPEFF, __NORM, _IMMUN, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, _SPEFF, _NVEFF, _NVEFF, __NORM, __NORM, _NVEFF, __NORM },
    [TYPE_PSYCHIC]      = { __NORM, _SPEFF, __NORM, _SPEFF, __NORM, __NORM, __NORM, __NORM, _NVEFF, __NORM, __NORM, __NORM, __NORM, __NORM, _NVEFF, __NORM, __NORM, _IMMUN },
    [TYPE_ICE]          = { __NORM, __NORM, _SPEFF, __NORM, _SPEFF, __NORM, __NORM, __NORM, _NVEFF, __NORM, _NVEFF, _NVEFF, _SPEFF, __NORM, __NORM, _NVEFF, _SPEFF, __NORM },
    [TYPE_DRAGON]       = { __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, _NVEFF, _IMMUN, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, _SPEFF, __NORM },
    [TYPE_DARK]         = { __NORM, _NVEFF, __NORM, __NORM, __NORM, __NORM, __NORM, _SPEFF, __NORM, _NVEFF, __NORM, __NORM, __NORM, __NORM, _SPEFF, __NORM, __NORM, _NVEFF },
};


/**
 * @brief Calculates the type-effectiveness modifier.
 * 
 * @param server 
 * @param attacker 
 * @param defender 
 * @return u16 
 */
static u16 Calc_TypeModifier(struct BattleStruct *server, struct CalcParams *attacker, struct CalcParams *defender)
{
    #ifdef DEBUG_DAMAGE_CALC
    u8 buf[128];
    sprintf(buf, "[PLAT-ENGINE] Type Modifier:\n");
    debugsyscall(buf);
    #endif 

    // Ground can have additional immunities ahead of typing:
    //  - Levitate
    //  - Magnet Rise
    //  - TODO: Air Balloon
    //  - TODO: Telekinesis
    // Effects that break Ground-type immunities also break these.
    if (server->move_type == TYPE_GROUND
            && !Calc_ImmunityActive(server, attacker, defender, TYPE_GROUND)) {
        if (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_LEVITATE)) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Defender has Levitate\n");
            debugsyscall(buf);
            #endif

            server->waza_status_flag = server->waza_status_flag | MOVE_STATUS_FLAG_LEVITATE_MISS;
        } else if (server->battlemon[server->defence_client].moveeffect.magnetRiseTurns) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Defender has Magnet Rise\n");
            debugsyscall(buf);
            #endif

            server->waza_status_flag = server->waza_status_flag | MOVE_STATUS_FLAG_MAGNET_RISE_MISS;
        }

        return 0;
    }

    // TODO: Check for Burn Up, Double Shock on these types
    // TODO: Forest's Curse, Trick-or-Treat
    u8 type1 = defender->type1;
    u8 type2 = defender->type2;

    // If the defending Pokemon is Roosting, ignore its Flying type for the purpose of type-checks.
    // This is subject to the following rules:
    //   - If the Pokemon is mono-Flying, then it should be treated as Normal type.
    //   - If the Pokemon is a dual-typing that lost its other type due to some effect (e.g.,
    //     a Fire/Flying-type which previously used Burn Up), then it should be treated as typeless.
    //   - If the Pokemon is mono-Flying but was previously hit with an effect which bestows an
    //     additional type upon it (e.g., Forest's Curse), then its Flying type will be replaced
    //     by the Normal type, but its additional "third" typing will remain.
    if (server->oneTurnFlag[server->defence_client].haneyasume_flag) {
        // Handle dual-types with a Flying sub-type.
        if ((type1 == TYPE_FLYING) && (type2 != TYPE_FLYING)) {
            type1 = TYPE_TYPELESS;
        } else if ((type1 != TYPE_FLYING) && (type2 == TYPE_FLYING)) {
            type2 = TYPE_TYPELESS;
        } else if ((type1 == TYPE_FLYING) && (type2 == TYPE_FLYING)) {
            type1 = TYPE_NORMAL;
            type2 = TYPE_NORMAL;
        }
    }

    // Now we can check for effectiveness on the types.
    u16 typeMod = UQ412__1_0;
    const s8 *typeMatchups = sTypeEffectiveness[server->move_type];
    #ifdef DEBUG_DAMAGE_CALC
    // sprintf(buf, "[PLAT-ENGINE] -- Attacking type: %s\n", sTypeStrings[server->move_type]);
    // debugsyscall(buf);
    #endif

    // TODO: Strong Winds, etc
    if (type1 != TYPE_TYPELESS) {
        s8 type1Matchup = typeMatchups[type1];
        #ifdef DEBUG_DAMAGE_CALC
        // sprintf(buf, "[PLAT-ENGINE] -- vs. Type 1:  %s\n", sTypeStrings[type1]);
        // debugsyscall(buf);
        #endif

        switch (type1Matchup) {
            case    0:                          // normal effectiveness
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Neutral\n");
                debugsyscall(buf);
                #endif

                break;
            case    1:                          // super effective
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Weakness: 2x\n");
                debugsyscall(buf);
                #endif

                typeMod = typeMod << 1;
                break;
            case   -1:                          // not very effective
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Resisted: 0.5x\n");
                debugsyscall(buf);
                #endif

                typeMod = typeMod >> 1;
                break;
            default:                            // immune
                if (Calc_ImmunityActive(server, attacker, defender, server->move_type)) {
                    #ifdef DEBUG_DAMAGE_CALC
                    sprintf(buf, "[PLAT-ENGINE] ---- Immune: 0x\n");
                    debugsyscall(buf);
                    #endif

                    typeMod = 0;
                }
                break;
        }
    }

    // mono-type mons are technically double of the one type
    if (type1 != type2 && type2 != TYPE_TYPELESS) {
        s8 type2Matchup = typeMatchups[type2];
        #ifdef DEBUG_DAMAGE_CALC
        // sprintf(buf, "[PLAT-ENGINE] -- vs. Type 2:  %s\n", sTypeStrings[type2]);
        // debugsyscall(buf);
        #endif

        switch (type2Matchup) {
            case    0:                          // normal damage
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Neutral\n");
                debugsyscall(buf);
                #endif

                break;
            case    1:                          // super effective
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Weakness: 2x\n");
                debugsyscall(buf);
                #endif

                typeMod = typeMod << 1;
                break;
            case   -1:                          // not very effective
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Resisted: 0.5x\n");
                debugsyscall(buf);
                #endif

                typeMod = typeMod >> 1;
                break;
            default:                            // immune
                if (Calc_ImmunityActive(server, attacker, defender, server->move_type)) {
                    #ifdef DEBUG_DAMAGE_CALC
                    sprintf(buf, "[PLAT-ENGINE] ---- Immune: 0x\n");
                    debugsyscall(buf);
                    #endif

                    typeMod = 0;
                }
                break;
        }
    }

    // Wonder Guard override check goes here
    if (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_WONDER_GUARD)
            && ShouldDelayTurnEffectivenessChecking(server, server->current_move_index)
            && typeMod < UQ412__2_0) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Defender has Wonder Guard; immune\n\n");
        debugsyscall(buf);
        #endif

        server->waza_status_flag = server->waza_status_flag | MOVE_STATUS_FLAG_MISS_WONDER_GUARD;
        return 0;
    }

    // If the type-effectiveness ignorance flag is in play, default back to 1x (unless already 0x)
    // This has to happen after all checks to account for moves like Night Shade and Dragon Rage
    // dealing fixed damage but still having immunities
    if ((server->server_status_flag & BATTLE_STATUS_IGNORE_TYPE_EFFECTIVENESS) && (typeMod != 0)) {
        server->waza_status_flag = server->waza_status_flag | ~MOVE_STATUS_FLAG_SUPER_EFFECTIVE;
        server->waza_status_flag = server->waza_status_flag | ~MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE;
        return UQ412__1_0;
    }

    if (typeMod == 0) {
        server->waza_status_flag = server->waza_status_flag | MOVE_STATUS_FLAG_NOT_EFFECTIVE;
    }

    if (typeMod > UQ412__1_0) {
        server->waza_status_flag = server->waza_status_flag | MOVE_STATUS_FLAG_SUPER_EFFECTIVE;
    }
    
    if (typeMod < UQ412__1_0) {
        server->waza_status_flag = server->waza_status_flag | MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE;
    }

    return typeMod;
}



/**
 *  @brief calculate overall damage, accounting for critical hits and me first boosts.  passed into damage roller below
 *  Equivalent to Calc_MoveDamage in plat-engine
 *  https://github.com/lhearachel/plat-engine/blob/00bbf5fc4d743d82e5fbbe1f97c1d8a07e404640/src/battle/calc.c#L2370
 *  @param bw battle work structure
 *  @param sp global battle structure
 */
void CalcDamageOverall(struct BattleSystem *battle, struct BattleStruct *server) {
    struct CalcParams attackerParams = {
            .species        = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_SPECIES,       NULL),
            .currentHP      = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_HP,            NULL),
            .maxHP          = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_MAX_HP,        NULL),
            .condition      = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_MAX_CONDITION, NULL),
            .ability        = GetBattlerAbility(    server, server->attack_client),
            .gender         = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_SEX,           NULL),
            .type1          = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_TYPE1,         NULL),
            .type2          = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_TYPE2,         NULL),
            .stats          = {
                .attack     = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_ATK,           NULL),
                .defense    = BattlePokemonParamGet(server ,server->attack_client, BATTLE_MON_DATA_DEF,           NULL),
                .spAttack   = BattlePokemonParamGet(server ,server->attack_client, BATTLE_MON_DATA_SPATK,         NULL),
                .spDefense  = BattlePokemonParamGet(server ,server->attack_client, BATTLE_MON_DATA_SPDEF,         NULL),
            },
            .stages         = {
                .attack     = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_STATE_ATK,     NULL),
                .defense    = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_STATE_DEF,     NULL),
                .spAttack   = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_STATE_SPATK,   NULL),
                .spDefense  = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_STATE_SPDEF,   NULL),
            },
            .heldItemEffect =     BattleItemDataGet(server, GetBattleMonItem(server, server->attack_client), 1),
            .heldItemPower  =     BattleItemDataGet(server, GetBattleMonItem(server, server->attack_client), 2),
        };

    struct CalcParams defenderParams = {
        .species        = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_SPECIES,       NULL),
        .currentHP      = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_HP,            NULL),
        .maxHP          = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_MAX_HP,        NULL),
        .condition      = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_MAX_CONDITION, NULL),
        .ability        = GetBattlerAbility(    server, server->defence_client),
        .gender         = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_SEX,           NULL),
        .type1          = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_TYPE1,         NULL),
        .type2          = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_TYPE2,         NULL),
        .stats          = {
            .attack     = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_ATK,           NULL),
            .defense    = BattlePokemonParamGet(server ,server->defence_client, BATTLE_MON_DATA_DEF,           NULL),
            .spAttack   = BattlePokemonParamGet(server ,server->defence_client, BATTLE_MON_DATA_SPATK,         NULL),
            .spDefense  = BattlePokemonParamGet(server ,server->defence_client, BATTLE_MON_DATA_SPDEF,         NULL),
        },
        .stages         = {
            .attack     = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_STATE_ATK,     NULL),
            .defense    = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_STATE_DEF,     NULL),
            .spAttack   = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_STATE_SPATK,   NULL),
            .spDefense  = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_STATE_SPDEF,   NULL),
        },
        .heldItemEffect =     BattleItemDataGet(server, GetBattleMonItem(server, server->defence_client), 1),
        .heldItemPower  =     BattleItemDataGet(server, GetBattleMonItem(server, server->defence_client), 2),
    };
    
    // Step 1: Calculate the base damage value.
    u32 damage = Calc_BaseDamage(battle, server, &attackerParams, &defenderParams);
    #ifdef DEBUG_DAMAGE_CALC
    u8 buf[128];
    sprintf(buf, "[PLAT-ENGINE] Base damage: %d\n", damage);
    debugsyscall(buf);
    #endif


    // Step 2: 0.75x if the move has more than one target upon execution.
    u32 battleType = BattleTypeGet(battle);
    if ((battleType & BATTLE_TYPE_DOUBLE) && (CheckNumMonsHit(battle, server, 0, server->defence_client) > 1)) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Spread damage: 0.75x\n");
        debugsyscall(buf);
        #endif

        damage = QMul_RoundDown(damage, UQ412__0_75);
    }

    // Step 3: Divide by 4 if the move is the second-strike of Parental Bond.
    if (server->battlemon[server->attack_client].parental_bond_flag == 2) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Second-strike of Parental Bond: 0.25x\n");
        debugsyscall(buf);
        #endif
        
        damage = QMul_RoundDown(damage, UQ412__0_25);
        }
        switch (server->battlemon[server->attack_client].parental_bond_flag) {
            case 1:
                server->battlemon[server->attack_client].parental_bond_flag++;
                server->battlemon[server->attack_client].parental_bond_is_active = TRUE; // after first hit, set this flag just in case the ability is nullified after the first one
                break;
            default:
                server->battlemon[server->attack_client].parental_bond_flag = 0;
                break;
        }

    // Step 4: 1.5x if the active weather is Sun or Rain and the move is Fire or Water type, respectively.
    //         0.5x if the active weather is Sun or Rain and the move is Water or Fire type, respectively.
    // Neither applies if the defender is holding a Utility Umbrella.
    if (WeatherIsActive(battle, server, WEATHER_SUNNY_ANY)
            && defenderParams.heldItemEffect != HOLD_EFFECT_UNAFFECTED_BY_RAIN_OR_SUN) {
        if (server->move_type == TYPE_FIRE) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Fire move in Sun: 1.5x\n");
            debugsyscall(buf);
            #endif

            damage = QMul_RoundDown(damage, UQ412__1_5);
        } else if (server->move_type == TYPE_WATER) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Water move in Sun: 0.5x\n");
            debugsyscall(buf);
            #endif

            damage = QMul_RoundDown(damage, UQ412__0_5);
        }
    } else if (WeatherIsActive(battle, server, WEATHER_RAIN_ANY)
            && defenderParams.heldItemEffect != HOLD_EFFECT_UNAFFECTED_BY_RAIN_OR_SUN) {
        if (server->move_type == TYPE_WATER) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Water move in Rain: 1.5x\n");
            debugsyscall(buf);
            #endif

            damage = QMul_RoundDown(damage, UQ412__1_5);
        } else if (server->move_type == TYPE_FIRE) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Fire move in Rain: 0.5x\n");
            debugsyscall(buf);
            #endif

            damage = QMul_RoundDown(damage, UQ412__0_5);
        }
    }

    // Step 5: 2x if the defender used Glaive Rush last turn (or this turn) and the move does
    // not have a fixed damage value.
    // TODO

    // Step 6: 1.5x if the attack was a critical hit.
    if (server->critical) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Critical Hit: 1.5x\n");
        debugsyscall(buf);
        #endif

        damage = QMul_RoundDown(damage, UQ412__1_5);
    }

    // Step 7: Apply random damage fluctuation.
    #ifdef DEBUG_DAMAGE_CALC
    // Debug mode: store all possible damage values as a buffer.
    // u32 damageValues[] = { 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100 };
    // for (int i = 0; i < 16; i++) {
    //     damageValues[i] = damage * damageValues[i] / 100;
    // }
    
    // Alternate debug mode: only take the maximum value, so do nothing here
    #else
    // Generate a random number from 85 to 100.
    int rand = 100 - (BattleRand(battle) % 16);
    damage = damage * rand / 100;
    #endif

    // Step 8: 1.5x if the attacker shares a type with the move.
    // TODO: Handle Soak, Forest's Curse, Trick-or-Treat.
    u16 stabMod = UQ412__1_0;
    if ((server->move_type == attackerParams.type1) || (server->move_type == attackerParams.type2)) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] STAB: 1.5x\n");
        debugsyscall(buf);
        #endif

        stabMod = stabMod + UQ412__0_5;
    } else if (((attackerParams.ability == ABILITY_PROTEAN) || (attackerParams.ability == ABILITY_LIBERO)) &&
                !server->battlemon[server->attack_client].ability_activated_flag) {
        // This one is only here for the AI.
        stabMod = stabMod + UQ412__0_5;
    }

    if ((attackerParams.ability == ABILITY_ADAPTABILITY)
            && ((attackerParams.type1 == server->move_type) || (attackerParams.type2 == server->move_type))) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Adaptability: +0.5x\n");
        debugsyscall(buf);
        #endif

        stabMod = stabMod + UQ412__0_5;
    }

    // Step 9: Compute the modifier for type effectiveness.
    u16 typeMod = Calc_TypeModifier(server, &attackerParams, &defenderParams);

    // Step 10: Divide by 2 if the attacker is burned and does not have Guts nor is using Facade.
    u16 burnMod = UQ412__1_0;
    if (GetMoveSplit(server, server->current_move_index) == SPLIT_PHYSICAL) {
        if ((attackerParams.condition & STATUS_FLAG_BURNED)
                && ((attackerParams.ability != ABILITY_GUTS) && (server->current_move_index != MOVE_FACADE))) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Burned Attacker: 0.5x\n");
            debugsyscall(buf);
            #endif

            burnMod = UQ412__0_5;
        }
    }

    // Step 11: Finish up remaining modifiers, in-order:
    //  - various moves interacting with Minimize
    //  - Earthquake and Magnitude, if the opponent is semi-invulnerable via Dig    
    //  - Surf and Whirlpool, if the opponent is semi-invulnerable via Dive
    //  - Reflect, Light Screen, and Aurora Veil
    //  - Collision Course and Electro Drift
    //  - Multiscale and Shadow Shield, if the target is at full health
    //  - Various abilites for the target: Fluffy, Punk Rock, Ice Scales
    //  - Friend Guard, if the target's ally has it
    //  - More abilities for the target: Filter, Prism Armor, Solid Rock
    //  - Some attacker abilities: Neuroforce, Sniper, Tinted Lens
    //  - Fluffy, if the used move is Fire-type
    //  - Type-resist berries
    //  - Expert Belt, Life Orb, and Metronome
    u16 lastMod = Calc_ChainOtherModifiers(
        server,
        &attackerParams,
        &defenderParams,
        battleType,
        server->current_move_index,
        server->move_type,
        GetMoveSplit(server, server->current_move_index)
    );

    // Step 11: Divide by 4 if the used move is a Z-move and the target is trying to Protect itself.
    // TODO: Z-moves
    // 守る flag?
    if (MoveIsZMove(server->current_move_index) && server->oneTurnFlag[server->defence_client].mamoru_flag) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Target is trying to Protect itself: 0.25x\n");
        debugsyscall(buf);
        #endif
        
        damage = QMul_RoundDown(damage, UQ412__0_25);
    }

    // Apply all the modifiers.
    #ifdef DEBUG_DAMAGE_CALC
    // sprintf(buf, "[PLAT-ENGINE] Preliminary damage values: [ ");
    // int length = 43;
    // for (int i = 0; i < 16; i++) {
    //     length += sprintf(buf + length, "%ld ", damageValues[i]);
    // }
    // sprintf(buf + length, "]\n");
    // debugsyscall(buf);

    sprintf(buf, "[PLAT-ENGINE] Max Roll:       %ld\n", damage);

    damage = QMul_RoundDown(damage, stabMod);
    sprintf(buf, "[PLAT-ENGINE] With STAB:      %ld\n", damage);
    debugsyscall(buf);
    
    damage = QMul_RoundDown(damage, typeMod);
    sprintf(buf, "[PLAT-ENGINE] With Chart:     %ld\n", damage);
    debugsyscall(buf);

    damage = QMul_RoundDown(damage, burnMod);
    sprintf(buf, "[PLAT-ENGINE] With Burn:      %ld\n", damage);
    debugsyscall(buf);

    damage = QMul_RoundDown(damage, lastMod);
    sprintf(buf, "[PLAT-ENGINE] Final Damage:   %ld\n", damage);
    debugsyscall(buf);


    // If we're in debug mode, then we instead have a whole list of damage values that need to be
    // applied to and printed out.
    // sprintf(buf, "[PLAT-ENGINE] Damage results: [ ");
    // length = 32;
    // for (int i = 0; i < 16; i++) {
    //     damageValues[i] = Q412_Mul_IntByQ_RoundDown(damageValues[i], stabMod);
    //     damageValues[i] = Q412_Mul_IntByQ_RoundDown(damageValues[i], typeMod);
    //     damageValues[i] = Q412_Mul_IntByQ_RoundDown(damageValues[i], burnMod);
    //     damageValues[i] = Q412_Mul_IntByQ_RoundDown(damageValues[i], lastMod);
    //     length += sprintf(buf + length, "%ld ", damageValues[i]);
    // }
    // sprintf(buf + length, "]\n");
    // debugsyscall(buf);

    // Always use the max value in debug mode.
    // damage = damageValues[15];
    #else
    damage = QMul_RoundDown(damage, stabMod);
    damage = QMul_RoundDown(damage, typeMod);
    damage = QMul_RoundDown(damage, burnMod);
    damage = QMul_RoundDown(damage, lastMod);
    #endif

    #ifdef DEBUG_DAMAGE_CALC_1_DAMAGE
    // In this debug mode, always return 1 damage.
    server->damage = -1;
    #else
    // And we're done. Cut the top bit off, then multiply by -1.
    server->damage = ((s32) damage & 0x7FFF) * -1;
    #endif
}
