#include "../include/battle.h"
#include "../include/pokemon.h"
#include "../include/types.h"
#include "../include/constants/ability.h"
#include "../include/constants/hold_item_effects.h"
#include "../include/constants/battle_script_constants.h"
#include "../include/constants/item.h"
#include "../include/constants/move_effects.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"
#include "../include/constants/file.h"


extern const u8 StatBoostModifiers[][2];

typedef struct
{
    u8  numerator;
    u8  denominator;
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


// set sp->waza_status_flag |= MOVE_STATUS_FLAG_MISS if a miss
BOOL CalcAccuracy(void *bw, struct BattleStruct *sp, int attacker, int defender, int move_no)
{
    u16 accuracy;
    s8 temp;
    s8 stat_stage_acc, stat_stage_evasion;
    int hold_effect;
    int hold_effect_atk;
    u8 move_type;
    u8 move_split;

    if (BattleTypeGet(bw) & BATTLE_TYPE_CATCHING_DEMO)
    {
        return FALSE;
    }

    // should take precedent over a move using an alternate accuracy calc, as this will still be called for those.
    if ((attacker & 1) == (defender & 1) // attacker and defender are on the same side
     && GetBattlerAbility(sp, defender) == ABILITY_TELEPATHY // defender has telepathy ability
     && sp->moveTbl[move_no].power != 0) // move actually damages
    {
        sp->waza_status_flag |= MOVE_STATUS_FLAG_MISS;
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
        move_type = sp->moveTbl[move_no].type;
    }
    move_split = sp->moveTbl[move_no].split;

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

    if ((CheckSideAbility(bw, sp, CHECK_ALL_BATTLER_ALIVE, 0, ABILITY_CLOUD_NINE) == 0)
     && (CheckSideAbility(bw, sp, CHECK_ALL_BATTLER_ALIVE, 0, ABILITY_AIR_LOCK) == 0))
    {
        if ((sp->field_condition & WEATHER_SUNNY_ANY) && (sp->moveTbl[move_no].effect == 152)) // thunder sucks in the sun
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

    
    //handle Wonder Skin
    if ((MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_WONDER_SKIN) == TRUE) && (sp->moveTbl[move_no].split == SPLIT_STATUS))
    {
        accuracy = accuracy * 50 / 100;
    }

    //handle victory star
    if ((GetBattlerAbility(sp, BATTLER_ALLY(attacker)) == ABILITY_VICTORY_STAR && sp->battlemon[BATTLER_ALLY(attacker)].hp != 0)
            || (GetBattlerAbility(sp, attacker) == ABILITY_VICTORY_STAR))
    {
        accuracy = accuracy * 110 / 100;
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

#ifdef DEBUG
    *((u32 *)(0x23D8000 + 0xC*2 + 0x8*(attacker&1))) = sp->moveTbl[move_no].accuracy;
    *((u32 *)(0x23D8004 + 0xC*2 + 0x8*(attacker&1))) = accuracy;
#endif

    if (((BattleRand(bw) % 100) + 1) > accuracy)
    {
        sp->waza_status_flag |= MOVE_STATUS_FLAG_MISS;
    }

    return FALSE;
}

const u8 DecreaseSpeedHoldEffects[] = 
{
    HOLD_EFFECT_DOUBLE_EV_GAIN,
    HOLD_EFFECT_HALVE_SPEED,
    HOLD_EFFECT_GAIN_HP_EVS,
    HOLD_EFFECT_GAIN_ATTACK_EVS,
    HOLD_EFFECT_GAIN_DEFENSE_EVS,
    HOLD_EFFECT_GAIN_SPEED_EVS,
    HOLD_EFFECT_GAIN_SP_ATK_EVS,
    HOLD_EFFECT_GAIN_SP_DEF_EVS,
};

// return 0 if client1 moves first, 1 if client2 moves first, 2 if random roll between the two.
u8 CalcSpeed(void *bw, struct BattleStruct *sp, int client1, int client2, int flag)
{
    u8 ret = 0;
    u32 speed1, speed2;
    u16 move1 = 0, move2 =   0;
    u8 hold_effect1;
    u8 hold_atk1;
    u8 hold_effect2;
    u8 hold_atk2;
    s8 priority1 = 0;
    s8 priority2 = 0;
    u8 quick_claw1 = 0, quick_claw2 = 0;
    u8 move_last1 = 0, move_last2 = 0;
    int command1;
    int command2;
    int move_pos1;
    int move_pos2;
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

    ability1 = GetBattlerAbility(sp, client1);
    ability2 = GetBattlerAbility(sp, client2);

    hold_effect1 = HeldItemHoldEffectGet(sp, client1);
    hold_atk1 = HeldItemAtkGet(sp, client1, 0);
    hold_effect2 = HeldItemHoldEffectGet(sp, client2);
    hold_atk2 = HeldItemAtkGet(sp, client2, 0);

    stat_stage_spd1 = sp->battlemon[client1].states[STAT_SPEED];
    stat_stage_spd2 = sp->battlemon[client2].states[STAT_SPEED];

    if (GetBattlerAbility(sp, client1) == ABILITY_SIMPLE)
    {
        stat_stage_spd1 = 6 + ((stat_stage_spd1 - 6) * 2);
        if (stat_stage_spd1 > 12)
        {
            stat_stage_spd1 = 12;
        }
        if (stat_stage_spd1 < 0)
        {
            stat_stage_spd1 = 0;
        }
    }
    if (GetBattlerAbility(sp, client2) == ABILITY_SIMPLE)
    {
        stat_stage_spd2 = 6 + ((stat_stage_spd2 - 6) * 2);
        if (stat_stage_spd2 > 12)
        {
            stat_stage_spd2 = 12;
        }
        if (stat_stage_spd2 < 0)
        {
            stat_stage_spd2 = 0;
        }
    }
    
    speed1 = sp->battlemon[client1].speed * StatBoostModifiers[stat_stage_spd1][0] / StatBoostModifiers[stat_stage_spd1][1];
    speed2 = sp->battlemon[client2].speed * StatBoostModifiers[stat_stage_spd2][0] / StatBoostModifiers[stat_stage_spd2][1];

    if ((CheckSideAbility(bw, sp, CHECK_ALL_BATTLER_ALIVE, 0, ABILITY_CLOUD_NINE)==0)
     && (CheckSideAbility(bw, sp, CHECK_ALL_BATTLER_ALIVE, 0, ABILITY_AIR_LOCK)==0))
    {
        if (((ability1 == ABILITY_SWIFT_SWIM) && (sp->field_condition & WEATHER_RAIN_ANY))
         || ((ability1 == ABILITY_CHLOROPHYLL) && (sp->field_condition & WEATHER_SUNNY_ANY))
         || ((ability1 == ABILITY_SAND_RUSH) && (sp->field_condition & WEATHER_SANDSTORM_ANY))
         || ((ability1 == ABILITY_SLUSH_RUSH) && (sp->field_condition & WEATHER_HAIL_ANY)))
        {
            speed1 *= 2;
        }
        if (((ability2 == ABILITY_SWIFT_SWIM) && (sp->field_condition & WEATHER_RAIN_ANY))
         || ((ability2 == ABILITY_CHLOROPHYLL) && (sp->field_condition & WEATHER_SUNNY_ANY))
         || ((ability2 == ABILITY_SAND_RUSH) && (sp->field_condition & WEATHER_SANDSTORM_ANY))
         || ((ability2 == ABILITY_SLUSH_RUSH) && (sp->field_condition & WEATHER_HAIL_ANY)))
        {
            speed2 *= 2;
        }
    }

    for (i = 0; i < NELEMS(DecreaseSpeedHoldEffects); i++)
    {
        if (BattleItemDataGet(sp, sp->battlemon[client1].item, 1) == DecreaseSpeedHoldEffects[i])
        {
            speed1 /= 2;
            break;
        }
    }

    if (hold_effect1 == HOLD_EFFECT_INCREASE_SPEED)
    {
        speed1 = speed1 * 15 / 10;
    }

    if ((hold_effect1 == HOLD_EFFECT_BOOST_DITTO_SPEED) && (sp->battlemon[client1].species == SPECIES_DITTO))
    {
        speed1 *= 2;
    }

    if ((ability1 == ABILITY_QUICK_FEET) && (sp->battlemon[client1].condition & STATUS_ANY_PERSISTENT))
    {
        speed1 = speed1 * 15 / 10;
    }
    else
    {
        if (sp->battlemon[client1].condition & STATUS_FLAG_PARALYZED)
        {
            speed1 /= 4;
        }
    }

    if ((ability1 == ABILITY_SLOW_START)
     && ((sp->total_turn - sp->battlemon[client1].moveeffect.slow_start_count) < 5))
    {
        speed1 /= 2;
    }

    if ((ability1 == ABILITY_UNBURDEN)
     && (sp->battlemon[client1].moveeffect.unburden_flag)
     && (sp->battlemon[client1].item == 0))
    {
        speed1 *= 2;
    }

    if (sp->side_condition[IsClientEnemy(bw, client1)] & SIDE_STATUS_TAILWIND)
    {
        speed1 *= 2;
    }

    if (hold_effect1 == HOLD_EFFECT_QUICK_CLAW)
    {
        if ((sp->agi_rand[client1] % (100 / hold_atk1)) == 0)
        {
            quick_claw1 = 1;
            if (flag == 0)
            {
                sp->battlemon[client1].moveeffect.quick_claw_flag = 1;
            }
        }
    }
    
    if (hold_effect1 == HOLD_EFFECT_RAISE_SPEED_IN_PINCH)
    {
        if (GetBattlerAbility(sp, client1) == ABILITY_GLUTTONY)
        {
            hold_atk1 /= 2;
        }
        if (sp->battlemon[client1].hp <= (s32)(sp->battlemon[client1].maxhp / hold_atk1))
        {
            quick_claw1 = 1;
            if (flag == 0)
            {
                sp->battlemon[client1].moveeffect.raise_speed_once = 1;
            }
        }
    }

    if (hold_effect1 == HOLD_EFFECT_LAGGING_TAIL)
    {
        move_last1 = 1;
    }

    for (i = 0; i < NELEMS(DecreaseSpeedHoldEffects); i++)
    {
        if (BattleItemDataGet(sp, sp->battlemon[client2].item, 1) == DecreaseSpeedHoldEffects[i])
        {
            speed2 /= 2;
            break;
        }
    }

    if (hold_effect2 == HOLD_EFFECT_INCREASE_SPEED)
    {
        speed2 = speed2 * 15 / 10;
    }

    if ((hold_effect2 == HOLD_EFFECT_BOOST_DITTO_SPEED) && (sp->battlemon[client2].species == SPECIES_DITTO))
    {
        speed2 *= 2;
    }

    if ((ability2 == ABILITY_QUICK_FEET) && (sp->battlemon[client2].condition & STATUS_ANY_PERSISTENT))
    {
        speed2 = speed2 * 15 / 10;
    }
    else
    {
        if (sp->battlemon[client2].condition & STATUS_FLAG_PARALYZED)
        {
            speed2 /= 4;
        }
    }

    if ((ability2 == ABILITY_SLOW_START)
     && ((sp->total_turn - sp->battlemon[client2].moveeffect.slow_start_count) < 5))
    {
        speed2 /= 2;
    }

    if ((ability2 == ABILITY_UNBURDEN)
     && (sp->battlemon[client2].moveeffect.unburden_flag)
     && (sp->battlemon[client2].item == 0))
    {
        speed2 *= 2;
    }

    if (sp->side_condition[IsClientEnemy(bw, client2)] & SIDE_STATUS_TAILWIND)
    {
        speed2 *= 2;
    }

    if (hold_effect2 == HOLD_EFFECT_QUICK_CLAW)
    {
        if ((sp->agi_rand[client2] % (100 / hold_atk2)) == 0)
        {
            quick_claw2=1;
            if (flag == 0)
            {
                sp->battlemon[client2].moveeffect.quick_claw_flag = 1;
            }
        }
    }

    if (hold_effect2 == HOLD_EFFECT_RAISE_SPEED_IN_PINCH)
    {
        if (GetBattlerAbility(sp, client2) == ABILITY_GLUTTONY)
        {
            hold_atk2/=2;
        }
        if (sp->battlemon[client2].hp <= (s32)(sp->battlemon[client2].maxhp / hold_atk2))
        {
            quick_claw2 = 1;
            if(flag == 0)
            {
                sp->battlemon[client2].moveeffect.raise_speed_once = 1;
            }
        }
    }

    if (hold_effect2 == HOLD_EFFECT_LAGGING_TAIL)
    {
        move_last2 = 1;
    }

    sp->psp_agi_point[client1]=speed1;
    sp->psp_agi_point[client2]=speed2;

    if (flag == 0)
    {
        command1 = sp->client_act_work[client1][3];
        command2 = sp->client_act_work[client2][3];
        move_pos1 = sp->waza_no_pos[client1];
        move_pos2 = sp->waza_no_pos[client2];
        
        if(command1 == SELECT_FIGHT_COMMAND)
        {
            if(sp->oneTurnFlag[client1].struggle_flag)
            {
                move1 = MOVE_STRUGGLE;
            }
            else
            {
                move1 = BattlePokemonParamGet(sp, client1, BATTLE_MON_DATA_MOVE_1 + move_pos1, NULL);
            }
        }
        if (command2 == SELECT_FIGHT_COMMAND)
        {
            if (sp->oneTurnFlag[client2].struggle_flag)
            {
                move2 = MOVE_STRUGGLE;
            }
            else
            {
                move2 = BattlePokemonParamGet(sp, client2, BATTLE_MON_DATA_MOVE_1 + move_pos2, NULL);
            }
        }
        priority1 = sp->moveTbl[move1].priority;
        priority2 = sp->moveTbl[move2].priority;
                
        // handle prankster
        if (GetBattlerAbility(sp, client1) == ABILITY_PRANKSTER && sp->moveTbl[move1].split == SPLIT_STATUS)
        {
            priority1++;
        }
        
        if (GetBattlerAbility(sp, client2) == ABILITY_PRANKSTER && sp->moveTbl[move2].split == SPLIT_STATUS)
        {
            priority2++;
        }
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
        else if (sp->field_condition & FIELD_STATUS_TRICK_ROOM)
        {
            if (speed1 > speed2)
            {
                ret = 1;
            }
            if ((speed1 == speed2) && (BattleRand(bw) & 1))
            {
                ret = 2;
            }
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


const u8 CriticalRateTable[] =
{
	16,
    8,
    4,
    3,
    2,
};

// calculates the critical hit multiplier
int CalcCritical(void *bw, struct BattleStruct *sp, int attacker, int defender, int critical_count, u32 side_condition)
{
    u16 temp;
    u16 item;
    int hold_effect;
    u16 species;
    u32 condition2;
    u32 move_effect;
    int multiplier = 1;
    int ability;

    item = GetBattleMonItem(sp, attacker);
    hold_effect = BattleItemDataGet(sp, item, 1);

    species = sp->battlemon[attacker].species;
    condition2 = sp->battlemon[attacker].condition2;
    move_effect = sp->battlemon[defender].effect_of_moves;
    ability = sp->battlemon[attacker].ability;

    temp = (((condition2 & STATUS2_FLAG_FOCUS_ENERGY) != 0) * 2) + (hold_effect == HOLD_EFFECT_BOOST_CRITICAL_RATE) + critical_count + (ability == ABILITY_SUPER_LUCK)
         + (2 * ((hold_effect == HOLD_EFFECT_BOOST_CHANSEY_CRITICAL) && (species == SPECIES_CHANSEY)))
         + (2 * ((hold_effect == HOLD_EFFECT_BOOST_FARFETCHD_CRITICAL) && (species == SPECIES_FARFETCHD)));

    if (temp > 4)
    {
        temp = 4;
    }

    if (BattleRand(bw) % CriticalRateTable[temp] == 0)
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

    return multiplier;
}


void ServerHPCalc(void *bw, struct BattleStruct *sp)
{
    int	eqp;
    int	atk;

    //一撃必殺の時は、HPMAXをダメージに代入
    if(sp->waza_status_flag & WAZA_STATUS_FLAG_ICHIGEKI)
    {
        sp->damage = sp->battlemon[sp->defence_client].maxhp * -1;
    }
    if(sp->damage)
    {
        eqp = HeldItemHoldEffectGet(sp,sp->defence_client);
        atk = HeldItemAtkGet(sp,sp->defence_client,ATK_CHECK_NORMAL);

        if(IsClientEnemy(bw,sp->attack_client) == IsClientEnemy(bw,sp->defence_client))
        {
            SCIO_IncRecord(bw,sp->attack_client,CLIENT_BOOT_TYPE_MINE,RECID_TEMOTI_MAKIZOE);
        }

        sp->client_no_hit[sp->defence_client] = sp->attack_client;

        if ((sp->battlemon[sp->defence_client].condition2 & CONDITION2_SUBSTITUTE)
         && (sp->damage < 0)
         && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_INFILTRATOR))
        {
            if((sp->battlemon[sp->defence_client].moveeffect.migawari_hp + sp->damage) <= 0)
            {
                sp->oneSelfFlag[sp->attack_client].kaigara_damage += (sp->battlemon[sp->defence_client].moveeffect.migawari_hp * -1);
                sp->battlemon[sp->defence_client].condition2 &= CONDITION2_SUBSTITUTE_OFF;
                sp->hit_damage = sp->battlemon[sp->defence_client].moveeffect.migawari_hp * -1;
                sp->battlemon[sp->defence_client].moveeffect.migawari_hp = 0;
            }
            else
            {
                sp->oneSelfFlag[sp->attack_client].kaigara_damage += sp->damage;
                sp->battlemon[sp->defence_client].moveeffect.migawari_hp += sp->damage;
                sp->hit_damage = sp->damage;
            }
            sp->oneSelfFlag[sp->defence_client].status_flag |= STATUS_FLAG_MIGAWARI_HIT;
            sp->client_work = sp->defence_client;
            LoadBattleSubSeqScript(sp,ARC_SUB_SEQ,SUB_SEQ_MIGAWARI_HIT);
            sp->server_seq_no = SERVER_WAZA_SEQUENCE_NO;
            sp->next_server_seq_no = SERVER_WAZA_OUT_AFTER_MESSAGE_NO;
        }
        else
        {
            if(sp->moveTbl[sp->current_move_index].effect == 101)
            {
                //気絶してしまう時は、１残すようにする
                if((sp->battlemon[sp->defence_client].hp + sp->damage) <= 0)
                {
                    sp->damage = (sp->battlemon[sp->defence_client].hp - 1) * -1;
                }
            }
            //技のこらえるが成功している時は、アイテムのチェックをしない
            if(sp->oneTurnFlag[sp->defence_client].koraeru_flag == 0)
            {
                //アイテムこらえるチェック
                if((MoldBreakerAbilityCheck(sp,sp->attack_client,sp->defence_client,ABILITY_STURDY) == TRUE) && (sp->battlemon[sp->defence_client].hp == sp->battlemon[sp->defence_client].maxhp))
                {
                    sp->oneTurnFlag[sp->defence_client].koraeru_flag = 1;
                }
                else if((eqp == HOLD_EFFECT_FOCUS_BAND) && ((BattleWorkRandGet(bw) % 100) < atk))
                {
                    sp->oneSelfFlag[sp->defence_client].item_koraeru_flag = 1;
                }
                else if((eqp == HOLD_EFFECT_HP_MAX_SURVIVE_1_HP) && (sp->battlemon[sp->defence_client].hp == sp->battlemon[sp->defence_client].maxhp))
                {
                    sp->oneSelfFlag[sp->defence_client].item_koraeru_flag = 1;
                }
            }
            //こらえるチェック
            if((sp->oneTurnFlag[sp->defence_client].koraeru_flag) || (sp->oneSelfFlag[sp->defence_client].item_koraeru_flag))
            {
                //気絶してしまう時は、１残すようにする
                if((sp->battlemon[sp->defence_client].hp + sp->damage) <= 0)
                {
                    sp->damage = (sp->battlemon[sp->defence_client].hp - 1) * -1;
                    if(sp->oneTurnFlag[sp->defence_client].koraeru_flag)
                    {
                        sp->waza_status_flag |= WAZA_STATUS_FLAG_KORAETA;
                    }
                    else
                    {
                        sp->waza_status_flag |= WAZA_STATUS_FLAG_ITEM_KORAETA;
                    }
                }
            }

            sp->store_damage[sp->defence_client] += sp->damage;

            if(sp->battlemon[sp->defence_client].hit_count < 255)
            {
                sp->battlemon[sp->defence_client].hit_count++;
            }
            if(sp->moveTbl[sp->current_move_index].split == SPLIT_PHYSICAL)
            {
                sp->oneTurnFlag[sp->defence_client].butsuri_otf_damage[sp->attack_client] = sp->damage;
                sp->oneTurnFlag[sp->defence_client].butsuri_otf_client = sp->attack_client;
                sp->oneTurnFlag[sp->defence_client].butsuri_otf_client_bit |= No2Bit(sp->attack_client);
                sp->oneSelfFlag[sp->defence_client].physical_damage = sp->damage;
                sp->oneSelfFlag[sp->defence_client].physical_damager = sp->attack_client;
            }
            else if(sp->moveTbl[sp->current_move_index].split == SPLIT_SPECIAL)
            {
                sp->oneTurnFlag[sp->defence_client].tokusyu_otf_damage[sp->attack_client] = sp->damage;
                sp->oneTurnFlag[sp->defence_client].tokusyu_otf_client = sp->attack_client;
                sp->oneTurnFlag[sp->defence_client].tokusyu_otf_client_bit |= No2Bit(sp->attack_client);
                sp->oneSelfFlag[sp->defence_client].special_damage = sp->damage;
                sp->oneSelfFlag[sp->defence_client].special_damager = sp->attack_client;
            }

            if((sp->battlemon[sp->defence_client].hp + sp->damage) <= 0)
            {
                sp->oneSelfFlag[sp->attack_client].kaigara_damage += (sp->battlemon[sp->defence_client].hp * -1);
            }
            else
            {
                sp->oneSelfFlag[sp->attack_client].kaigara_damage += sp->damage;
            }
            sp->oneTurnFlag[sp->defence_client].last_otf_damage = sp->damage;
            sp->oneTurnFlag[sp->defence_client].last_otf_client = sp->attack_client;

            sp->client_work = sp->defence_client;
            sp->hp_calc_work = sp->damage;

            LoadBattleSubSeqScript(sp,ARC_SUB_SEQ,SUB_SEQ_HP_CALC);
            sp->server_seq_no = SERVER_WAZA_SEQUENCE_NO;
            sp->next_server_seq_no = SERVER_WAZA_OUT_AFTER_MESSAGE_NO;

            sp->server_status_flag |= SERVER_STATUS_FLAG_MOVE_HIT;
        }
    }
    else
    {
        sp->server_seq_no = SERVER_WAZA_OUT_AFTER_MESSAGE_NO;
    }
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
        val = gf_rand()/per;
        return val;
    }
}
