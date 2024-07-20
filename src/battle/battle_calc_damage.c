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

void CalcDamageOverall(struct BattleSystem *battle, struct BattleStruct *server);
int AdjustDamageForRoll(void *bw, struct BattleStruct *sp, int damage);





const u8 StatBoostModifiers[][2] = {
         // numerator, denominator
        {          10,          40 },
        {          10,          35 },
        {          10,          30 },
        {          10,          25 },
        {          10,          20 },
        {          10,          15 },
        {          10,          10 },
        {          15,          10 },
        {          20,          10 },
        {          25,          10 },
        {          30,          10 },
        {          35,          10 },
        {          40,          10 },
};

/*
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
*/

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
 *  Equivalent to Calc_MoveDamage in plat-engine
 *  https://github.com/lhearachel/plat-engine/blob/00bbf5fc4d743d82e5fbbe1f97c1d8a07e404640/src/battle/calc.c#L2370
 *  @param bw battle work structure
 *  @param sp global battle structure
 */
void CalcDamageOverall(struct BattleSystem *battle, struct BattleStruct *server) {
    #ifdef DEBUG_DAMAGE_CALC
    u8 buf[128];
    sprintf(buf, "[PLAT-ENGINE] CalcDamageOverall\n");
    debugsyscall(buf);
    #endif
    u32 ovyId, offset;
    void (*internalFunc)(struct BattleSystem *battle, struct BattleStruct *server);

    ovyId = OVERLAY_CALCDAMAGEOVERALL;
    offset = 0x023C0400 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (void (*)(struct BattleSystem *battle, struct BattleStruct *server))(offset);
    internalFunc(battle, server);
    UnloadOverlayByID(ovyId);
}


/**
 *  @brief do the final 85-100% damage roll to the damage.  output of this is the exact damage done to the opponent
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param damage unrolled damage
 *  @return adjusted damage
 */
int AdjustDamageForRoll(void *bw, struct BattleStruct *sp UNUSED, int damage)
{
#ifdef DEBUG_ADJUSTED_DAMAGE
    u8 buf[128];
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
    sprintf(buf, "Unrolled damage: %d -- Battler %d hit battler %d for %d damage.\n", predamage, sp->attack_client, sp->defence_client, damage+1);
    debugsyscall(buf);
#endif // DEBUG_ADJUSTED_DAMAGE

	return damage;
}
