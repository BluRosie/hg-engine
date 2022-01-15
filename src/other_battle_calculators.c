#include "../include/battle.h"
#include "../include/pokemon.h"
#include "../include/types.h"
#include "../include/constants/ability.h"
#include "../include/constants/hold_item_effects.h"
#include "../include/constants/item.h"
#include "../include/constants/move_effects.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"

typedef struct
{
	u8	numerator;
	u8	denominator;
} AccuracyStatChangeRatio;

const AccuracyStatChangeRatio sAccStatChanges[] =
{
    {  33, 100 },
    {  36, 100 },
    {  43, 100 },
    {  50, 100 },
    {  60, 100 },
    {  75, 100 },
    {   1,   1 },
    { 133, 100 },
    { 166, 100 },
    {   2,   1 },
    { 233, 100 },
    { 133,  50 },
    {   3,   1 },
};


// return FALSE if a hit, set sp->waza_status_flag |= MOVE_STATUS_FLAG_MISS if a miss
BOOL CalcAccuracy(void *bw, struct BattleStruct *sp, int attacker, int defender, int move_no)
{
    u16 accuracy;
    s8 temp;
    s8 stat_stage_acc,stat_stage_evasion;
    int hold_effect;
    int hold_effect_atk;
    u8 move_type;
    u8 move_split;

    if (BattleTypeGet(bw) & BATTLE_TYPE_CATCHING_DEMO)
    {
        return FALSE;
    }

    if (GetBattlerAbility(sp, attacker) == ABILITY_NORMALIZE)
    {
        move_type = TYPE_NORMAL;
    }
    else if (sp->move_type)
    {
        move_type = sp->move_type;
    }
    else
    {
        move_type = sp->old_moveTbl[move_no].type;
    }
    move_split = sp->old_moveTbl[move_no].split;

    stat_stage_acc = sp->battlemon[attacker].states[STAT_ACCURACY] - 6;
    stat_stage_evasion = 6 - sp->battlemon[defender].states[STAT_EVASION];

    if (GetBattlerAbility(sp, attacker) == ABILITY_SIMPLE)
    {
        stat_stage_acc *= 2;
    }

    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_SIMPLE) == TRUE)
    {
        stat_stage_evasion *= 2;
    }
    
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_UNAWARE) == TRUE)
    {
        stat_stage_acc = 0;
    }

    if (GetBattlerAbility(sp, attacker) == ABILITY_UNAWARE)
    {
        stat_stage_evasion = 0;
    }

    if (((sp->battlemon[defender].condition2 & STATUS2_FLAG_FORESIGHT) || (sp->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_MIRACLE_EYE))
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

    accuracy = sp->old_moveTbl[move_no].accuracy;

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

    if ((CheckSideAbility(bw, sp, CHECK_ALL_BATTLER_ALIVE, 0, ABILITY_CLOUD_NINE) == 0)
     && (CheckSideAbility(bw, sp, CHECK_ALL_BATTLER_ALIVE, 0, ABILITY_AIR_LOCK) == 0))
    {
        if ((sp->field_condition & WEATHER_SUNNY_ANY) && (sp->old_moveTbl[move_no].effect == 152)) // thunder sucks in the sun
        {
            accuracy = 50;
        }
    }

    accuracy *= sAccStatChanges[temp].numerator;
    accuracy /= sAccStatChanges[temp].denominator;

    if (GetBattlerAbility(sp,attacker) == ABILITY_COMPOUND_EYES)
    {
        accuracy = accuracy * 130 / 100;
    }

    if ((CheckSideAbility(bw, sp, CHECK_ALL_BATTLER_ALIVE, 0, ABILITY_CLOUD_NINE) == 0)
     && (CheckSideAbility(bw, sp, CHECK_ALL_BATTLER_ALIVE, 0, ABILITY_AIR_LOCK) == 0))
    {
        if (sp->field_condition & WEATHER_SANDSTORM_ANY){
            if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_SAND_VEIL) == TRUE)
            {
                accuracy = accuracy * 80 / 100;
            }
        }
        if (sp->field_condition & WEATHER_HAIL_ANY)
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

    if ((GetBattlerAbility(sp, attacker) == ABILITY_HUSTLE) && (move_split == SPLIT_PHYSICAL))
    {
        accuracy = accuracy * 80 / 100;
    }

    if ((MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_TANGLED_FEET) == TRUE)
     && (sp->battlemon[defender].condition2 & STATUS2_FLAG_CONFUSED))
    {
        accuracy = accuracy * 50 / 100;
    }

    hold_effect = HeldItemHoldEffectGet(sp, defender);
    hold_effect_atk = HeldItemAtkGet(sp, defender, 0);

    if (hold_effect == HOLD_EFFECT_DECREASE_ACCURACY)
    {
        accuracy = accuracy * (100 - hold_effect_atk) / 100;
    }

    hold_effect = HeldItemHoldEffectGet(sp, attacker);
    hold_effect_atk = HeldItemAtkGet(sp, attacker, 0);

    if (hold_effect == HOLD_EFFECT_INCREASE_ACCURACY)
    {
        accuracy = accuracy * (100 + hold_effect_atk) / 100;
    }

    if ((hold_effect == HOLD_EFFECT_ZOOM_LENS) && (IsMovingAfterClient(sp, defender) == TRUE))
    {
        accuracy = accuracy * (100 + hold_effect_atk) / 100;
    }

    if (sp->battlemon[attacker].moveeffect.boost_accuracy_once)
    {
        sp->battlemon[attacker].moveeffect.boost_accuracy_once = 0;
        accuracy = accuracy * 120 / 100;
    }

    if (sp->field_condition & FIELD_STATUS_GRAVITY)
    {
        accuracy = accuracy * 10 / 6;
    }

    if (((BattleRand(bw) % 100) + 1) > accuracy)
    {
        sp->waza_status_flag |= MOVE_STATUS_FLAG_MISS;
    }

    return FALSE;
}

/*u8 CalcSpeed(void *bw, struct BattleStruct *sp, int cl1, int cl2, int flag)
{
    
}

int CalcCritical(void *bw, struct BattleStruct *sp, int attacker, int defender, int critical_count, u32 side_condition)
{
    
}*/
