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
        { 3, 3 },
        { 4, 2 },
        { 5, 2 },
        { 6, 2 },
        { 7, 2 },
        { 8, 2 },
};

int CalcBaseDamage(void *bw, struct BattleStruct *sp, int moveno, u32 side_cond,
                   u32 field_cond, u16 pow, u8 type UNUSED, u8 attacker, u8 defender, u8 critical)
{
    u32 ovyId, offset;
    int ret;
    int (*internalFunc)(void *bw, struct BattleStruct *sp, int moveno, u32 side_cond,
                         u32 field_cond, u16 pow, u8 type UNUSED, u8 attacker, u8 defender, u8 critical);

    ovyId = OVERLAY_CALCBASEDAMAGE;
    offset = 0x023C0400 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (int (*)(void *bw, struct BattleStruct *sp, int moveno, u32 side_cond,
                            u32 field_cond, u16 pow, u8 type UNUSED, u8 attacker, u8 defender, u8 critical))(offset);
    ret = internalFunc(bw, sp, moveno, side_cond, field_cond, pow, type, attacker, defender, critical);
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

void CalcDamageOverall(void *bw, struct BattleStruct *sp)
{
    int type;

    type = GetAdjustedMoveType(sp, sp->attack_client, sp->current_move_index);

    sp->damage = CalcBaseDamage(bw,
                                sp,
                                sp->current_move_index,
                                sp->side_condition[IsClientEnemy(bw, sp->defence_client)],
                                sp->field_condition,
                                sp->damage_power,
                                type,
                                sp->attack_client, sp->defence_client, sp->critical);

    //sp->damage *= sp->critical;
    if (sp->critical > 1) // update critical hit mechanics
    {
        for (type = sp->critical; type > 1; type--) // for every critical multiplier above 1, tack on 1.5x multiplier
        {
            sp->damage = sp->damage * 150 / 100;
        }
    }

    if (HeldItemHoldEffectGet(sp, sp->attack_client) == HOLD_EFFECT_HP_DRAIN_ON_ATK)
    {
        sp->damage = sp->damage * (100 + HeldItemAtkGet(sp, sp->attack_client, ATK_CHECK_NORMAL)) / 100;
    }

    if (HeldItemHoldEffectGet(sp, sp->attack_client) == HOLD_EFFECT_BOOST_REPEATED)
    {
        sp->damage = sp->damage * (10 + sp->battlemon[sp->attack_client].moveeffect.metronomeTurns) / 10;
    }

    if (sp->battlemon[sp->attack_client].moveeffect.meFirstFlag)
    {
        if (sp->me_first_total_turns == sp->battlemon[sp->attack_client].moveeffect.meFirstCount)
        {
            sp->battlemon[sp->attack_client].moveeffect.meFirstCount--;
        }

        if ((sp->me_first_total_turns - sp->battlemon[sp->attack_client].moveeffect.meFirstCount) < 2)
        {
            sp->damage = sp->damage * 15 / 10;
        }
        else
        {
            sp->battlemon[sp->attack_client].moveeffect.meFirstFlag = 0;
        }
    }
}


/**
 *  @brief do the final 85-100% damage roll to the damage.  output of this is the exact damage done to the opponent
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param damage unrolled damage
 *  @return adjusted damage
 */
int AdjustDamageForRoll(void *bw, struct BattleStruct *sp, int damage)
{
    // 0 for type is okay because we get adjusted type in the function anyway
    // putting ServerDoTypeCalcMod here fixes a bug after the rewrite that we were omitting this function
    // this still rather closely matches smogon's damage calculator for gen 4.  may have to refactor down the line
    u32 temp = 0;
    damage = ServerDoTypeCalcMod(bw, sp, sp->current_move_index, 0, sp->attack_client, sp->defence_client, damage, &temp);

#ifdef DEBUG_ADJUSTED_DAMAGE
    s32 predamage = damage;
#endif // DEBUG_ADJUSTED_DAMAGE

	if (damage)
    {
		damage *= (100 - (BattleRand(bw) % 16)); // 85-100% damage roll
		damage /= 100;
		if (damage == 0)
			damage = 1;
	}

#ifdef DEBUG_ADJUSTED_DAMAGE
    debug_printf("Unrolled damage: %d -- Battler %d hit battler %d for %d damage.\n", predamage, sp->attack_client, sp->defence_client, damage+1);
#endif // DEBUG_ADJUSTED_DAMAGE

	return damage;
}
