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



// function declarations
int CalcBaseDamage(void *bw, struct BattleStruct *sp, int moveno, u32 side_cond,
                   u32 field_cond, u16 pow, u8 type, u8 attacker, u8 defender, u8 critical);
//u16 GetBattleMonItem(struct BattleStruct *sp, int client_no);
void CalcDamageOverall(void *bw, struct BattleStruct *sp);
int AdjustDamageForRoll(void *bw, struct BattleStruct *sp, int damage);




// https://m.bulbapedia.bulbagarden.net/wiki/Stat_modifier#Stage_multipliers
const u8 StatBoostModifiers[][2] = {
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

int CalcBaseDamage(void *bw, struct BattleStruct *sp, int moveno, u32 side_cond UNUSED,
                   u32 field_cond, u16 pow UNUSED, u8 type UNUSED, u8 attacker, u8 defender, u8 critical)
{

    struct DamageCalcStruct damageCalc = {0};

    damageCalc.maxBattlers = BattleWorkClientSetMaxGet(bw);
    damageCalc.attackerPartySize = Battle_GetClientPartySize(bw, attacker);
    for (int i = 0; i < damageCalc.attackerPartySize; i++) {
        struct PartyPokemon *mon = Battle_GetClientPartyMon(bw, attacker, i);
        damageCalc.attackerParty[i] = mon;
    }
    damageCalc.attacker = attacker;
    damageCalc.defender = defender;
    damageCalc.critical = critical;
    damageCalc.moveno = moveno;
    damageCalc.movetype = GetAdjustedMoveType(sp, attacker, moveno);
    damageCalc.movesplit = GetMoveSplit(sp, moveno);
    damageCalc.movepower = sp->moveTbl[moveno].power;
    damageCalc.damage_power = sp->damage_power;
    damageCalc.damage_value = sp->damage_value;
    damageCalc.magnitude = sp->magnitude;
    damageCalc.gemBoostingMove = sp->gemBoostingMove;
    memcpy(damageCalc.rawSpeedNonRNGClientOrder, sp->rawSpeedNonRNGClientOrder, 4 * sizeof(sp->rawSpeedNonRNGClientOrder[0]));

    damageCalc.noCloudNineAndAirLock = (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0) && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0);
    damageCalc.fieldHasFairyAura = CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_FAIRY_AURA);
    damageCalc.fieldHasDarkAura = CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_DARK_AURA);
    damageCalc.fieldHasAuraBreak = CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AURA_BREAK);
    // TODO: Mold Breaker + Mold Breaker interactions
    damageCalc.fieldHasVesselOfRuin = CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_VESSEL_OF_RUIN);
    damageCalc.fieldHasSwordOfRuin = CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_SWORD_OF_RUIN);
    damageCalc.fieldHasTabletsOfRuin = CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_TABLETS_OF_RUIN);
    damageCalc.fieldHasBeadsOfRuin = CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_BEADS_OF_RUIN);

    damageCalc.field_cond = field_cond;

    damageCalc.terrainOverlayType = sp->terrainOverlay.type;
    damageCalc.terrainOverlayNumberOfTurnsLeft = sp->terrainOverlay.numberOfTurnsLeft;

    damageCalc.playerSideHasFaintedTeammateLastTurn = sp->playerSideHasFaintedTeammateLastTurn;
    damageCalc.enemySideHasFaintedTeammateLastTurn = sp->enemySideHasFaintedTeammateLastTurn;

    damageCalc.originalMoveType = sp->moveTbl[moveno].type;
    damageCalc.moveEffect = sp->moveTbl[moveno].effect;
    damageCalc.moveFlag = sp->moveTbl[moveno].flag;

    for (u32 i = 0; i < damageCalc.maxBattlers; i++) {
        struct sDamageCalc client = {0};
        client.attack = BattlePokemonParamGet(sp, i, BATTLE_MON_DATA_ATK, NULL);
        client.defense = BattlePokemonParamGet(sp, i, BATTLE_MON_DATA_DEF, NULL);
        client.sp_attack = BattlePokemonParamGet(sp, i, BATTLE_MON_DATA_SPATK, NULL);
        client.sp_defense = BattlePokemonParamGet(sp, i, BATTLE_MON_DATA_SPDEF, NULL);
        client.atkstate = BattlePokemonParamGet(sp, i, BATTLE_MON_DATA_STATE_ATK, NULL) - 6;
        client.defstate = BattlePokemonParamGet(sp, i, BATTLE_MON_DATA_STATE_DEF, NULL) - 6;
        client.spatkstate = BattlePokemonParamGet(sp, i, BATTLE_MON_DATA_STATE_SPATK, NULL) - 6;
        client.spdefstate = BattlePokemonParamGet(sp, i, BATTLE_MON_DATA_STATE_SPDEF, NULL) - 6;

        client.positiveStatBoosts = 0;
        for (int stat = 0; stat < 8; stat++) {
            if (sp->battlemon[i].states[stat] > 6) {
                client.positiveStatBoosts += sp->battlemon[i].states[stat] - 6;
            }
        }

        client.level = BattlePokemonParamGet(sp, i, BATTLE_MON_DATA_LEVEL, NULL);
        client.species = BattlePokemonParamGet(sp, i, BATTLE_MON_DATA_SPECIES, NULL);
        client.hp = BattlePokemonParamGet(sp, i, BATTLE_MON_DATA_HP, NULL);
        client.maxhp = BattlePokemonParamGet(sp, i, BATTLE_MON_DATA_MAX_HP, NULL);
        client.condition = BattlePokemonParamGet(sp, i, BATTLE_MON_DATA_MAX_CONDITION, NULL);
        client.condition2 = sp->battlemon[i].condition2;
        client.ability = GetBattlerAbility(sp, i);
        client.sex = BattlePokemonParamGet(sp, i, BATTLE_MON_DATA_SEX, NULL);
        client.speed = sp->effectiveSpeed[i];
        client.weight = GetPokemonWeight(bw, sp, attacker, i);
        client.happiness = sp->battlemon[i].friendship;
        client.form = sp->battlemon[i].form_no;
        client.furyCutterCount = sp->battlemon[i].moveeffect.furyCutterCount;
        client.rolloutCount = sp->battlemon[i].moveeffect.rolloutCount;
        client.stockpileCount = sp->battlemon[i].moveeffect.stockpileCount;
        client.parentalBondFlag = sp->oneTurnFlag[i].parental_bond_flag;
        client.helpingHandFlag = sp->oneTurnFlag[i].helping_hand_flag;
        client.sheerForceFlag = sp->battlemon[i].sheer_force_flag;
        client.effectOfMoves = sp->battlemon[i].effect_of_moves;
        client.isGrounded = IsClientGrounded(sp, i);
        client.item = GetBattleMonItem(sp, i);
        client.item_held_effect = BattleItemDataGet(sp, client.item, 1);
        client.item_power = BattleItemDataGet(sp, client.item, 2);

        damageCalc.clients[i] = client;
    }

    u32 ovyId, offset;
    int ret;
    int (*internalFunc)(struct BattleSystem *bw, struct BattleStruct *sp, struct DamageCalcStruct *damageCalc);

    ovyId = OVERLAY_CALCBASEDAMAGE;
    offset = 0x023C0400 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (int (*)(struct BattleSystem *bw, struct BattleStruct *sp, struct DamageCalcStruct *damageCalc))(offset);
    ret = internalFunc(bw, sp, &damageCalc);
    UnloadOverlayByID(ovyId);

    return ret;
}

/**
 *  @brief grab a battler's item.  returns 0 if the battler is in embargo or can't hold an item for any other reason
 *
 *  @param sp global battle structure
 *  @param client_no battler to grab the item of
 *  @return item that the client_no is holding accounting for embargo and such
 */
u16 LONG_CALL GetBattleMonItem(struct BattleStruct *sp, int client_no)
{
    if ((GetBattlerAbility(sp, client_no) == ABILITY_KLUTZ))
    {
        return 0;
    }
    if (sp->battlemon[client_no].moveeffect.embargoFlag)
    {
        return 0;
    }
    // handle unnerve:  if an opposing pokemon has unnerve and the item it is holding is a berry, then no item will be read.
    if (((GetBattlerAbility(sp, BATTLER_OPPONENT(client_no)) == ABILITY_UNNERVE && sp->battlemon[BATTLER_OPPONENT(client_no)].hp != 0)
      || (GetBattlerAbility(sp, BATTLER_ACROSS(client_no)) == ABILITY_UNNERVE && sp->battlemon[BATTLER_ACROSS(client_no)].hp != 0))
     && (IS_ITEM_BERRY(sp->battlemon[client_no].item)))
    {
        return 0;
    }

    return sp->battlemon[client_no].item;
}


/**
 *  @brief calculate overall damage, accounting for critical hits and me first boosts.  passed into damage roller below
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 */
// This is DamageCalcDefault
void CalcDamageOverall(void *bw, struct BattleStruct *sp) {
    int type;

    type = GetAdjustedMoveType(sp, sp->attack_client, sp->current_move_index);

    u32 maxBattlers = BattleWorkClientSetMaxGet(bw);
    u32 moveEffectiveness;
    u32 flag = 0;
    u8 movesplit = GetMoveSplit(sp, sp->current_move_index);
    u32 side_cond = sp->side_condition[IsClientEnemy(bw, sp->defence_client)];
    u32 battle_type = BattleTypeGet(bw);
    u32 moveno = sp->current_move_index;
    u32 attacker = sp->attack_client;
    u32 defender = sp->defence_client;
    u32 finalModifier = UQ412__1_0;
    u32 attackerAbility = GetBattlerAbility(sp, attacker);
    u32 defenderAbility = GetBattlerAbility(sp, defender);

    u32 damage = 0;

    // Steps 1 - 5
    damage = CalcBaseDamage(bw,
                            sp,
                            moveno,
                            side_cond,
                            sp->field_condition,
                            sp->damage_power,
                            type,
                            attacker, defender, sp->critical);

    //=====Step 6. General Damage Modifiers=====

    // 6.1 Spread Move Modifier
    // TODO: the vanilla implementation is probably wrong

    if ((battle_type & BATTLE_TYPE_DOUBLE) &&
        (sp->moveTbl[moveno].target == RANGE_ADJACENT_OPPONENTS) &&
        (CheckNumMonsHit(bw, sp, 1, defender) == 2)) {
        damage = QMul_RoundDown(damage, UQ412__0_75);
    }

    if ((battle_type & BATTLE_TYPE_DOUBLE) &&
        (sp->moveTbl[moveno].target == RANGE_ALL_ADJACENT) &&
        (CheckNumMonsHit(bw, sp, 0, defender) >= 2)) {
        damage = QMul_RoundDown(damage, UQ412__0_75);
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] 6.1 Spread Move Modifier\n");
    debug_printf("[CalcBaseDamage] damage: %d\n", damage);
#endif

    // 6.2 Parental Bond Modifier

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] 6.2 Parental Bond Modifier\n");
#endif

    // this is beacuse of weirdness, just make sure the value is correct at all times
    if (sp->oneTurnFlag[attacker].parental_bond_flag) {
#ifdef DEBUG_DAMAGE_CALC
        debug_printf("[CalcBaseDamage] parental_bond_flag: %d\n", sp->oneTurnFlag[attacker].parental_bond_flag);
#endif
        switch (sp->oneTurnFlag[attacker].parental_bond_flag) {
            case 1:
                sp->oneTurnFlag[attacker].parental_bond_flag++;
                sp->oneTurnFlag[attacker].parental_bond_is_active = TRUE;  // after first hit, set this flag just in case the ability is nullified after the first one
                break;
            case 2:
#ifdef DEBUG_DAMAGE_CALC
                debug_printf("[CalcBaseDamage] parental_bond_flag is 2, damage reduction\n");
#endif
                damage = QMul_RoundDown(damage, UQ412__0_25);
                break;
            default:
#ifdef DEBUG_DAMAGE_CALC
                debug_printf("[CalcBaseDamage] Why are we here?\n");
#endif
                break;
        }
#ifdef DEBUG_DAMAGE_CALC
        debug_printf("[CalcBaseDamage] setting parental_bond_flag to %d\n", sp->oneTurnFlag[attacker].parental_bond_flag);
#endif
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("[CalcBaseDamage] damage: %d\n", damage);
#endif

    // 6.3 Weather Modifier

    if ((CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0) &&
        (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0)) {
        if (sp->field_condition & WEATHER_RAIN_ANY) {
            switch (type) {
                case TYPE_FIRE:
                    damage = QMul_RoundDown(damage, UQ412__0_5);
                    break;
                case TYPE_WATER:
                    damage = QMul_RoundDown(damage, UQ412__1_5);
                    break;
            }
        }

        if (sp->field_condition & WEATHER_SUNNY_ANY) {
            switch (type) {
                case TYPE_FIRE:
                    damage = QMul_RoundDown(damage, UQ412__1_5);
                    break;
                case TYPE_WATER:
                    // If the current weather is Sunny Day and the user is not holding Utility Umbrella, this move's damage is multiplied by 1.5 instead of halved for being Water type.
                    if (moveno == MOVE_HYDRO_STEAM && GetBattleMonItem(sp, attacker) != ITEM_UTILITY_UMBRELLA) {
                        damage = QMul_RoundDown(damage, UQ412__1_5);
                    } else {
                        damage = QMul_RoundDown(damage, UQ412__0_5);
                    }
                    break;
            }
        }
    }
#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] 6.3 Weather Modifier\n");
    debug_printf("[CalcBaseDamage] damage: %d\n", damage);
#endif

    // 6.3.5 Glaive Rush
    // https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-10498744
    // TODO: implement the condition
    if (FALSE) {
        damage = damage * 200 / 100;
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] 6.3.5 Glaive Rush\n");
    debug_printf("[CalcBaseDamage] damage: %d\n", damage);
#endif

    // 6.4 Critical hit modifier
    // https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-10498744
    // note: this may change - BDSP is `* 15 / 10`
    if (sp->critical > 1) {
        damage = damage * 150 / 100;
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] 6.4 Critical hit modifier\n");
    debug_printf("[CalcBaseDamage] damage: %d\n", damage);
#endif

    // 6.5 Random Factor Modifier
    // This breaks BtlCmd_CalcDamageRaw, but we don't seem to use it?
#ifdef DEBUG_DAMAGE_ROLLS
    s32 predamage[16];
    for (int u = 0; u < 16; u++)
    {
        predamage[u] = damage * (100 - u) / 100;
    }
#endif  // DEBUG_DAMAGE_ROLLS

    damage *= (100 - (BattleRand(bw) % 16));  // 85-100% damage roll
    damage /= 100;

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] 6.5 Random Factor Modifier\n");
    debug_printf("[CalcBaseDamage] damage: %d\n", damage);
#endif


    // 6.6 Same-Type Attack Bonus (STAB) Modifier

    if (((sp->server_status_flag & SERVER_STATUS_FLAG_TYPE_FLAT) == 0) && HasType(sp, attacker, type)) {
        if (attackerAbility == ABILITY_ADAPTABILITY) {
#ifdef DEBUG_DAMAGE_ROLLS
        for (int u = 0; u < 16; u++)
        {
            predamage[u] = QMul_RoundDown(predamage[u], UQ412__2_0);;
        }
#endif  // DEBUG_DAMAGE_ROLLS
            damage = QMul_RoundDown(damage, UQ412__2_0);
        } else {
#ifdef DEBUG_DAMAGE_ROLLS
        for (int u = 0; u < 16; u++)
        {
            predamage[u] = QMul_RoundDown(predamage[u], UQ412__1_5);;
        }
#endif  // DEBUG_DAMAGE_ROLLS
            damage = QMul_RoundDown(damage, UQ412__1_5);
        }
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] 6.6 Same-Type Attack Bonus (STAB) Modifier\n");
    debug_printf("[CalcBaseDamage] damage: %d\n", damage);
#endif

    // 6.7 Type Effectiveness Modifier
    // TODO: need to factor in Tera Shell
    moveEffectiveness = GetTypeEffectiveness(bw, sp, attacker, defender, type, &flag);
    switch (moveEffectiveness) {
        case TYPE_MUL_NO_EFFECT:
            damage = 0;
#ifdef DEBUG_DAMAGE_ROLLS
            for (int u = 0; u < 16; u++)
            {
                predamage[u] = 0;
            }
#endif  // DEBUG_DAMAGE_ROLLS
            break;
        case TYPE_MUL_TRIPLE_NOT_EFFECTIVE:
            damage = damage >> 3;
#ifdef DEBUG_DAMAGE_ROLLS
            for (int u = 0; u < 16; u++)
            {
                predamage[u] = predamage[u] >> 3;
            }
#endif  // DEBUG_DAMAGE_ROLLS
            break;
        case TYPE_MUL_DOUBLE_NOT_EFFECTIVE:
            damage = damage >> 2;
#ifdef DEBUG_DAMAGE_ROLLS
            for (int u = 0; u < 16; u++)
            {
                predamage[u] = predamage[u] >> 2;
            }
#endif  // DEBUG_DAMAGE_ROLLS
            break;
        case TYPE_MUL_NOT_EFFECTIVE:
            damage = damage >> 1;
#ifdef DEBUG_DAMAGE_ROLLS
            for (int u = 0; u < 16; u++)
            {
                predamage[u] = predamage[u] >> 1;
            }
#endif  // DEBUG_DAMAGE_ROLLS
            break;
        case TYPE_MUL_NORMAL:
            break;
        case TYPE_MUL_SUPER_EFFECTIVE:
            damage = damage << 1;
#ifdef DEBUG_DAMAGE_ROLLS
            for (int u = 0; u < 16; u++)
            {
                predamage[u] = predamage[u] << 1;
            }
#endif  // DEBUG_DAMAGE_ROLLS
            break;
        case TYPE_MUL_DOUBLE_SUPER_EFFECTIVE:
            damage = damage << 2;
#ifdef DEBUG_DAMAGE_ROLLS
            for (int u = 0; u < 16; u++)
            {
                predamage[u] = predamage[u] << 2;
            }
#endif  // DEBUG_DAMAGE_ROLLS
            break;
        case TYPE_MUL_TRIPLE_SUPER_EFFECTIVE:
            damage = damage << 3;
#ifdef DEBUG_DAMAGE_ROLLS
            for (int u = 0; u < 16; u++)
            {
                predamage[u] = predamage[u] << 3;
            }
#endif  // DEBUG_DAMAGE_ROLLS
            break;
        default:
            GF_ASSERT_INTERNAL();
            break;
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] 6.7 Type Effectiveness Modifier\n");
    debug_printf("[CalcBaseDamage] moveEffectiveness: %d\n", moveEffectiveness);
    debug_printf("[CalcBaseDamage] damage: %d\n", damage);
#endif

    // 6.8 Burn Modifier

    if (movesplit == SPLIT_PHYSICAL) {
        // burns halve physical damage.  this is ignored by guts and facade (as of gen 6)
        if ((sp->battlemon[attacker].condition & STATUS_BURN) && (attackerAbility != ABILITY_GUTS) && (moveno != MOVE_FACADE)) {
            damage = QMul_RoundDown(damage, UQ412__0_5);
#ifdef DEBUG_DAMAGE_ROLLS
            for (int u = 0; u < 16; u++)
            {
                predamage[u] = QMul_RoundDown(predamage[u], UQ412__0_5);
            }
#endif  // DEBUG_DAMAGE_ROLLS
        }
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] 6.8 Burn Modifier\n");
    debug_printf("[CalcBaseDamage] damage: %d\n", damage);
#endif

    sp->damage = damage;

    // 6.9 Final Modifiers

    // Move effects

    // 6.9.14 Doubled-damage moves

    // 6.9.14.1 Minimize
    if (sp->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_MINIMIZED
        && !sp->battlemon[defender].is_currently_dynamaxed
        && IsMoveInMinimizeVulnerabilityMovesList(moveno)) {
            finalModifier = QMul_RoundUp(finalModifier, UQ412__2_0);
    }

    // 6.9.14.2 Dig
    if (sp->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_DIGGING
        && moveno == MOVE_EARTHQUAKE) {
            finalModifier = QMul_RoundUp(finalModifier, UQ412__2_0);
    }

    // 6.9.14.3 Dive
    if (sp->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_IS_DIVING
        && (moveno == MOVE_SURF || moveno == MOVE_WHIRLPOOL)) {
            finalModifier = QMul_RoundUp(finalModifier, UQ412__2_0);
    }

    // 6.9.14.4 Behemoth Blade/Behemoth Bash/Dynamax Cannon
    // https://www.smogon.com/forums/threads/sword-shield-battle-mechanics-research.3655528/post-8319925
    if ((sp->battlemon[defender].is_currently_dynamaxed)
    && (moveno == MOVE_BEHEMOTH_BLADE || moveno == MOVE_BEHEMOTH_BASH || moveno == MOVE_DYNAMAX_CANNON)) {
        finalModifier = QMul_RoundUp(finalModifier, UQ412__2_0);
    }

    if (((sp->server_status_flag & SERVER_STATUS_FLAG_TYPE_FLAT) == 0) && ((sp->server_status_flag & SERVER_STATUS_FLAG_TYPE_NONE) == 0)) {
        switch (moveEffectiveness) {
            case TYPE_MUL_SUPER_EFFECTIVE:
            case TYPE_MUL_DOUBLE_SUPER_EFFECTIVE:
            case TYPE_MUL_TRIPLE_SUPER_EFFECTIVE:
                // 6.9.14.45 Collision Course/Electro Drift
                if (moveno == MOVE_COLLISION_COURSE || moveno == MOVE_ELECTRO_DRIFT) {
                    finalModifier = QMul_RoundUp(finalModifier, UQ412__1_3333);
                }
                break;
            default:
                break;
        }
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] 6.9.14 Doubled-damage moves\n");
    debug_printf("[CalcBaseDamage] finalModifier: %d\n", finalModifier);
#endif

    // Effects relative to a particular side of the field
    // 6.9.1 Screens
    // handle Reflect
    if ((movesplit == SPLIT_PHYSICAL)
    && ((side_cond & SIDE_STATUS_REFLECT) != 0 || (side_cond & SIDE_STATUS_AURORA_VEIL) != 0)
    && (sp->critical == 1)
    && (sp->moveTbl[moveno].effect != MOVE_EFFECT_REMOVE_SCREENS)
    && (sp->battlemon[attacker].ability != ABILITY_INFILTRATOR)) {
        if ((battle_type & BATTLE_TYPE_DOUBLE)) {
            finalModifier = QMul_RoundUp(finalModifier, UQ412__0_6666);
        } else {
            finalModifier = QMul_RoundUp(finalModifier, UQ412__0_5);
        }
    }
    // handle Light Screen
    if ((movesplit == SPLIT_SPECIAL)
    && ((side_cond & SIDE_STATUS_LIGHT_SCREEN) != 0 || (side_cond & SIDE_STATUS_AURORA_VEIL) != 0)
    && (sp->critical == 1)
    && (sp->moveTbl[moveno].effect != MOVE_EFFECT_REMOVE_SCREENS)
    && (attackerAbility != ABILITY_INFILTRATOR)) {
        if ((battle_type & BATTLE_TYPE_DOUBLE)) {
            finalModifier = QMul_RoundUp(finalModifier, UQ412__0_6666);
        } else {
            finalModifier = QMul_RoundUp(finalModifier, UQ412__0_5);
        }
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] 6.9.1 Screens\n");
    debug_printf("[CalcBaseDamage] finalModifier: %d\n", finalModifier);
#endif

    // All other abilities -- need to sort by raw speed
    SortRawSpeedNonRNGArray(bw, sp);
    for (u32 i = 0; i < maxBattlers; i++) {
        if (((sp->server_status_flag & SERVER_STATUS_FLAG_TYPE_FLAT) == 0) && ((sp->server_status_flag & SERVER_STATUS_FLAG_TYPE_NONE) == 0)) {
            switch (moveEffectiveness) {
                case TYPE_MUL_TRIPLE_NOT_EFFECTIVE:
                case TYPE_MUL_DOUBLE_NOT_EFFECTIVE:
                case TYPE_MUL_NOT_EFFECTIVE:
                    // 6.9.4 Tinted Lens
                    if ((sp->rawSpeedNonRNGClientOrder[i] == attacker)
                    && attackerAbility == ABILITY_TINTED_LENS) {
                        finalModifier = QMul_RoundUp(finalModifier, UQ412__1_25);
#ifdef DEBUG_DAMAGE_CALC
                        debug_printf("\n=================\n");
                        debug_printf("[CalcBaseDamage] 6.9.2 Neuroforce (client %d loop %d)\n", sp->rawSpeedNonRNGClientOrder[i], i);
                        debug_printf("[CalcBaseDamage] finalModifier: %d\n", finalModifier);
#endif
                    }
                    break;
                case TYPE_MUL_SUPER_EFFECTIVE:
                case TYPE_MUL_DOUBLE_SUPER_EFFECTIVE:
                case TYPE_MUL_TRIPLE_SUPER_EFFECTIVE:
                    // 6.9.2 Neuroforce
                    if ((sp->rawSpeedNonRNGClientOrder[i] == attacker)
                    && (attackerAbility == ABILITY_NEUROFORCE)) {
                        finalModifier = QMul_RoundUp(finalModifier, UQ412__1_25);
#ifdef DEBUG_DAMAGE_CALC
                        debug_printf("\n=================\n");
                        debug_printf("[CalcBaseDamage] 6.9.2 Neuroforce (client %d loop %d)\n", sp->rawSpeedNonRNGClientOrder[i], i);
                        debug_printf("[CalcBaseDamage] finalModifier: %d\n", finalModifier);
#endif
                    }

                    // 6.9.8 Solid Rock / Filter / Prism Armor
                    if ((sp->rawSpeedNonRNGClientOrder[i] == defender)
                        && (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_SOLID_ROCK) || MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_FILTER) || defenderAbility == ABILITY_PRISM_ARMOR)) {
                        finalModifier = QMul_RoundUp(finalModifier, UQ412__0_75);
#ifdef DEBUG_DAMAGE_CALC
                        debug_printf("\n=================\n");
                        debug_printf("[CalcBaseDamage] 6.9.8 Solid Rock / Filter / Prism Armor (client %d loop %d)\n", sp->rawSpeedNonRNGClientOrder[i], i);
                        debug_printf("[CalcBaseDamage] finalModifier: %d\n", finalModifier);
#endif
                    }
                    break;
                default:
                    break;
                }
        }

        // 6.9.3 Sniper
        if ((sp->rawSpeedNonRNGClientOrder[i] == attacker)
         && (attackerAbility == ABILITY_SNIPER) && (sp->critical > 1)) {
            finalModifier = QMul_RoundUp(finalModifier, UQ412__1_5);
#ifdef DEBUG_DAMAGE_CALC
            debug_printf("\n=================\n");
            debug_printf("[CalcBaseDamage] 6.9.3 Sniper\n");
            debug_printf("[CalcBaseDamage] finalModifier: %d\n", finalModifier);
#endif
        }

        if ((sp->rawSpeedNonRNGClientOrder[i] == defender)
        && MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_FLUFFY)) {
            // 6.9.6 Fluffy (contact moves)
            if (IsContactBeingMade(GetBattlerAbility(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->defence_client), sp->current_move_index, sp->moveTbl[sp->current_move_index].flag)) {
                finalModifier = QMul_RoundUp(finalModifier, UQ412__0_5);
#ifdef DEBUG_DAMAGE_CALC
                debug_printf("\n=================\n");
                debug_printf("[CalcBaseDamage] 6.9.6 Fluffy (contact moves)\n");
                debug_printf("[CalcBaseDamage] finalModifier: %d\n", finalModifier);
#endif
            }
            // 6.9.10 Fluffy (Fire-type moves)
            if (type == TYPE_FIRE) {
                finalModifier = QMul_RoundUp(finalModifier, UQ412__2_0);
#ifdef DEBUG_DAMAGE_CALC
                debug_printf("\n=================\n");
                debug_printf("[CalcBaseDamage] 6.9.10 Fluffy (Fire-type moves)\n");
                debug_printf("[CalcBaseDamage] finalModifier: %d\n", finalModifier);
#endif
            }
        }

        // 6.9.5 Multiscale / Shadow Shield
        if ((sp->rawSpeedNonRNGClientOrder[i] == defender)
        && ((MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_MULTISCALE))
        || (defenderAbility == ABILITY_SHADOW_SHIELD))
        && (sp->battlemon[defender].hp == (s32)sp->battlemon[defender].maxhp)) {
            finalModifier = QMul_RoundUp(finalModifier, UQ412__0_5);
#ifdef DEBUG_DAMAGE_CALC
            debug_printf("\n=================\n");
            debug_printf("[CalcBaseDamage] 6.9.5 Multiscale / Shadow Shield\n");
            debug_printf("[CalcBaseDamage] finalModifier: %d\n", finalModifier);
#endif
        }

        // 6.9.7 Friend Guard
        if ((sp->rawSpeedNonRNGClientOrder[i] == BATTLER_ALLY(defender)) && MoldBreakerAbilityCheck(sp, attacker, BATTLER_ALLY(defender), ABILITY_FRIEND_GUARD)) {
            finalModifier = QMul_RoundUp(finalModifier, UQ412__0_75);
#ifdef DEBUG_DAMAGE_CALC
            debug_printf("\n=================\n");
            debug_printf("[CalcBaseDamage] 6.9.7 Friend Guard\n");
            debug_printf("[CalcBaseDamage] finalModifier: %d\n", finalModifier);
#endif
        }

        // 6.9.15 Punk Rock
        // https://www.smogon.com/forums/threads/sword-shield-battle-mechanics-research.3655528/post-8291673
        if ((sp->rawSpeedNonRNGClientOrder[i] == defender)
        && MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_PUNK_ROCK)
        && IsMoveSoundBased(moveno)) {
            finalModifier = QMul_RoundUp(finalModifier, UQ412__0_5);
#ifdef DEBUG_DAMAGE_CALC
            debug_printf("\n=================\n");
            debug_printf("[CalcBaseDamage] 6.9.15 Punk Rock\n");
            debug_printf("[CalcBaseDamage] finalModifier: %d\n", finalModifier);
#endif
        }

        // 6.9.16 Ice Scales
        // handle Ice Scales - halve damage if move is special, regardless of if it uses defense stat
        // https://www.smogon.com/forums/threads/sword-shield-battle-mechanics-research.3655528/post-8319925
        if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_ICE_SCALES) == TRUE && movesplit == SPLIT_SPECIAL) {
            finalModifier = QMul_RoundUp(finalModifier, UQ412__0_5);
#ifdef DEBUG_DAMAGE_CALC
            debug_printf("\n=================\n");
            debug_printf("[CalcBaseDamage] 6.9.16 Ice Scales\n");
            debug_printf("[CalcBaseDamage] finalModifier: %d\n", finalModifier);
#endif
        }
    }

    // Items

    for (u32 i = 0; i < maxBattlers; i++) {
        // 6.9.9 Metronome (item)
        if ((sp->rawSpeedNonRNGClientOrder[i] == attacker)
        && HeldItemHoldEffectGet(sp, attacker) == HOLD_EFFECT_BOOST_REPEATED) {
            switch (sp->battlemon[attacker].moveeffect.metronomeTurns) {
                case 0:
                    break;
                case 1:
                    finalModifier = QMul_RoundUp(finalModifier, UQ412__1_2);
                    break;
                case 2:
                    finalModifier = QMul_RoundUp(finalModifier, UQ412__1_4);
                    break;
                case 3:
                    finalModifier = QMul_RoundUp(finalModifier, UQ412__1_6);
                    break;
                case 4:
                    finalModifier = QMul_RoundUp(finalModifier, UQ412__1_8);
                    break;
                case 5:
                default:
                    finalModifier = QMul_RoundUp(finalModifier, UQ412__2_0);
                    break;
            }
#ifdef DEBUG_DAMAGE_CALC
            debug_printf("\n=================\n");
            debug_printf("[CalcBaseDamage] 6.9.9 Metronome (item) (client %d loop %d)\n", sp->rawSpeedNonRNGClientOrder[i], i);
            debug_printf("[CalcBaseDamage] finalModifier: %d\n", finalModifier);
#endif
        }

        switch (moveEffectiveness) {
            case TYPE_MUL_NO_EFFECT:
            case TYPE_MUL_TRIPLE_NOT_EFFECTIVE:
            case TYPE_MUL_DOUBLE_NOT_EFFECTIVE:
            case TYPE_MUL_NOT_EFFECTIVE:
            case TYPE_MUL_NORMAL:
                break;
            case TYPE_MUL_SUPER_EFFECTIVE:
            case TYPE_MUL_DOUBLE_SUPER_EFFECTIVE:
            case TYPE_MUL_TRIPLE_SUPER_EFFECTIVE:
                // 6.9.11 Expert Belt
                if ((sp->rawSpeedNonRNGClientOrder[i] == attacker)
                && HeldItemHoldEffectGet(sp, attacker) == HOLD_EFFECT_POWER_UP_SE) {
                    finalModifier = QMul_RoundUp(finalModifier, UQ412__1_2);
#ifdef DEBUG_DAMAGE_CALC
                    debug_printf("\n=================\n");
                    debug_printf("[CalcBaseDamage] 6.9.11 Expert Belt (client %d loop %d)\n", sp->rawSpeedNonRNGClientOrder[i], i);
                    debug_printf("[CalcBaseDamage] finalModifier: %d\n", finalModifier);
#endif
                }

                // 6.9.13 Resist Berries
                if ((sp->rawSpeedNonRNGClientOrder[i] == defender)
                && CanActivateDamageReductionBerry(sp, defender)) {
                    finalModifier = QMul_RoundUp(finalModifier, UQ412__0_5);
#ifdef DEBUG_DAMAGE_CALC
                    debug_printf("\n=================\n");
                    debug_printf("[CalcBaseDamage] 6.9.13 Resist Berries (client %d loop %d)\n", sp->rawSpeedNonRNGClientOrder[i], i);
                    debug_printf("[CalcBaseDamage] finalModifier: %d\n", finalModifier);
#endif
                }
                break;
            default:
                break;
        }

        // 6.9.12 Life Orb
        if ((sp->rawSpeedNonRNGClientOrder[i] == attacker) && HeldItemHoldEffectGet(sp, attacker) == HOLD_EFFECT_HP_DRAIN_ON_ATK) {
            finalModifier = QMul_RoundUp(finalModifier, UQ412__1_3_BUT_LOWER);
#ifdef DEBUG_DAMAGE_CALC
            debug_printf("\n=================\n");
            debug_printf("[CalcBaseDamage] 6.9.12 Life Orb (client %d loop %d)\n", sp->rawSpeedNonRNGClientOrder[i], i);
            debug_printf("[CalcBaseDamage] finalModifier: %d\n", finalModifier);
#endif
        }
    }

    damage = QMul_RoundDown(damage, finalModifier);
#ifdef DEBUG_DAMAGE_ROLLS
    for (int u = 0; u < 16; u++)
    {
        predamage[u] = QMul_RoundDown(predamage[u], finalModifier);
    }
#endif  // DEBUG_DAMAGE_ROLLS

    // Step 10. Z-move into Protecting Move Modifier
    // Dynamax move Protect 0.25x place is same as Z-move Protect.
    // TODO: handle other protecting moves such as Quick Guard and Wide Guard
    // https://www.smogon.com/forums/threads/sword-shield-battle-mechanics-research.3655528/post-8319925
    if ((MoveIsZMove(moveno) || MoveIsMaxMove(moveno)) && sp->oneTurnFlag[defender].protectFlag) {
        damage = QMul_RoundDown(damage, UQ412__0_25);
#ifdef DEBUG_DAMAGE_ROLLS
        for (int u = 0; u < 16; u++)
        {
            predamage[u] = QMul_RoundDown(predamage[u], UQ412__0_25);
        }
#endif  // DEBUG_DAMAGE_ROLLS
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 10. Z-move into Protecting Move Modifier\n");
    debug_printf("[CalcBaseDamage] damage: %d\n", damage);
#endif

    // Step 10.5. Tera Raid boss's shield
    // https://x.com/Sibuna_Switch/status/1610483831769018368
    // TODO
    if (FALSE) {
        if (!sp->battlemon[attacker].is_currently_terastallized) {
            damage = QMul_RoundUp(damage, UQ412__0_2);
        } else {
            if (type != sp->battlemon[attacker].tera_type) {
                damage = QMul_RoundUp(damage, UQ412__0_35);
            } else {
                damage = QMul_RoundUp(damage, UQ412__0_75);
            }
        }
    }

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 10.5. Tera Raid boss's shield\n");
    debug_printf("[CalcBaseDamage] damage: %d\n", damage);
#endif

    // Step 11. One Damage Check

    damage = damage == 0 ? 1 : damage;

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 11. One Damage Check\n");
    debug_printf("[CalcBaseDamage] damage: %d\n", damage);
#endif

    // Step 12. 65,535 Damage Check

    sp->damage = damage % 65536;

#ifdef DEBUG_DAMAGE_CALC
    debug_printf("\n=================\n");
    debug_printf("[CalcBaseDamage] Step 12. 65,535 Damage Check\n");
    debug_printf("[CalcBaseDamage] Final sp->damage: %d\n", sp->damage);
    debug_printf("\n=================\n\n\n\n\n");

#ifdef DEBUG_DAMAGE_ROLLS
    debug_printf("Unrolled damage: %d -- Battler %d hit battler %d for %d damage.\n", predamage[0], attacker, defender, sp->damage);
    debug_printf("[Attacker] stats: ");
    for (s32 u = 0; u < 5; u++)
    {
        debug_printf("%d, ", ((u16 *)&sp->battlemon[attacker].attack)[u]);
    }
    debug_printf("\n[Defender] stats: ");
    for (s32 u = 0; u < 5; u++)
    {
        debug_printf("%d, ", ((u16 *)&sp->battlemon[defender].attack)[u]);
    }
    debug_printf("\n");
    for (s32 u = 0; u < 16; u++)
    {
        debug_printf("  Roll %d: %d\n", u, predamage[u]);
    }
#endif  // DEBUG_DAMAGE_ROLLS
#endif
}


/**
 *  @brief do the final 85-100% damage roll to the damage.  output of this is the exact damage done to the opponent
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param damage unrolled damage
 *  @return adjusted damage
 */
// It is neutered because the roll is handled earlier
int AdjustDamageForRoll(void *bw UNUSED, struct BattleStruct *sp UNUSED, int damage)
{
//     // 0 for type is okay because we get adjusted type in the function anyway
//     // putting ServerDoTypeCalcMod here fixes a bug after the rewrite that we were omitting this function
//     // this still rather closely matches smogon's damage calculator for gen 4.  may have to refactor down the line
//     u32 temp = 0;
//     damage = ServerDoTypeCalcMod(bw, sp, sp->current_move_index, 0, sp->attack_client, sp->defence_client, damage, &temp);

// #ifdef DEBUG_DAMAGE_ROLLS
//     s32 predamage = damage;
// #endif // DEBUG_DAMAGE_ROLLS

// 	if (damage)
//     {
// 		damage *= (100 - (BattleRand(bw) % 16)); // 85-100% damage roll
// 		damage /= 100;
// 		if (damage == 0)
// 			damage = 1;
// 	}

// #ifdef DEBUG_DAMAGE_ROLLS
//     debug_printf("Unrolled damage: %d -- Battler %d hit battler %d for %d damage.\n", predamage, sp->attack_client, sp->defence_client, damage+1);
// #endif // DEBUG_DAMAGE_ROLLS

	return damage;
}
