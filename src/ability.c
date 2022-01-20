#include "../include/battle.h"
#include "../include/pokemon.h"
#include "../include/types.h"
#include "../include/constants/ability.h"
#include "../include/constants/battle_script_constants.h"
#include "../include/constants/hold_item_effects.h"
#include "../include/constants/item.h"
#include "../include/constants/move_effects.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"
#include "../include/constants/weather_numbers.h"


extern const u8 StatBoostModifiers[][2];

u16 SoundproofMoveList[] =
{
    MOVE_GROWL,
    MOVE_ROAR,
    MOVE_SING,
    MOVE_SUPERSONIC,
    MOVE_SCREECH,
    MOVE_SNORE,
    MOVE_UPROAR,
    MOVE_METAL_SOUND,
    MOVE_GRASS_WHISTLE,
    MOVE_HYPER_VOICE,
    MOVE_BUG_BUZZ,
    MOVE_CHATTER,
};

int MoveCheckDamageNegatingAbilities(struct BattleStruct *sp, int attacker, int defender)
{
    int scriptnum = 0;
    int movetype;

    if (GetBattlerAbility(sp, attacker) == ABILITY_NORMALIZE)
    {
        movetype = TYPE_NORMAL;
    }
    else if (sp->move_type) // 02252EE0
    {
        movetype=sp->move_type;
    }
    else
    {
        movetype=sp->old_moveTbl[sp->current_move_index].type;
    }

    // 02252EF4
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_VOLT_ABSORB) == TRUE)
    {
        if ((movetype == TYPE_ELECTRIC) && (attacker != defender))
        {
            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[defender].maxhp, 4);
            scriptnum = SUB_SEQ_ABILITY_RECOVERED_HP;
        }
    }
    
    // 02252F24
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_WATER_ABSORB) == TRUE)
    {
        if ((movetype == TYPE_WATER) && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0) && (sp->old_moveTbl[sp->current_move_index].power))
        {
            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[defender].maxhp, 4);
            scriptnum = SUB_SEQ_ABILITY_RECOVERED_HP;
        }
    }

    // 02252F6A
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_FLASH_FIRE) == TRUE)
    {
        if ((movetype == TYPE_FIRE)
         && ((sp->battlemon[defender].condition & STATUS_FLAG_FROZEN) == 0) 
         && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0) 
         && ((sp->old_moveTbl[sp->current_move_index].power) || (sp->current_move_index == MOVE_WILL_O_WISP)))
        {
            scriptnum = SUB_SEQ_HANDLE_FLASH_FIRE;
        }
    }

    // 02252FB0
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_SOUNDPROOF) == TRUE)
    {
        {
            u32 i;

            for (i = 0; i < NELEMS(SoundproofMoveList); i++){
                if (SoundproofMoveList[i] == sp->current_move_index)
                {
                    scriptnum = SUB_SEQ_HANDLE_SOUNDPROOF;
                    break;
                }
            }
        }
    }

    // 02252FDC   
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_MOTOR_DRIVE) == TRUE)
    {
        if ((movetype == TYPE_ELECTRIC) && (attacker != defender))
        {
            scriptnum = SUB_SEQ_HANDLE_MOTOR_DRIVE;
        }
    }

    // 02252FF8
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_DRY_SKIN) == TRUE)
    {
        if ((movetype == TYPE_WATER)
         && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
         && (sp->old_moveTbl[sp->current_move_index].power))
        {
            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[defender].maxhp, 4);
            scriptnum = SUB_SEQ_ABILITY_RECOVERED_HP;
        }
    }

    return scriptnum;
}



enum
{
    SWITCH_IN_CHECK_WEATHER = 0,
    SWITCH_IN_CHECK_TRACE,
    SWITCH_IN_CHECK_WEATHER_ABILITY,
    SWITCH_IN_CHECK_INTIMIDATE,
    SWITCH_IN_CHECK_DOWNLOAD,
    SWITCH_IN_CHECK_ANTICIPATION,
    SWITCH_IN_CHECK_FOREWARN,
    SWITCH_IN_CHECK_FRISK,
    SWITCH_IN_CHECK_SLOW_START,
    SWITCH_IN_CHECK_MOLD_BREAKER,
    SWITCH_IN_CHECK_PRESSURE,
    SWITCH_IN_CHECK_FORECAST,
    SWITCH_IN_CHECK_AMULET_COIN,
    SWITCH_IN_CHECK_ABILITY_HEAL_STATUS,
    SWITCH_IN_CHECK_HEAL_STATUS,
    SWITCH_IN_CHECK_UNNERVE,
    SWITCH_IN_CHECK_DARK_AURA,
    SWITCH_IN_CHECK_FAIRY_AURA,
    SWITCH_IN_CHECK_AURA_BREAK,
    SWITCH_IN_CHECK_END,
};

enum
{
    SWITCH_IN_CHECK_LOOP = 0,
    SWITCH_IN_CHECK_MOVE_SCRIPT,
    SWITCH_IN_CHECK_CHECK_END,
};

int SwitchInAbilityCheck(void *bw, struct BattleStruct *sp)
{   int i;
    int scriptnum = 0;
    int ret = SWITCH_IN_CHECK_LOOP;
    int client_no;
    int client_set_max;

    client_set_max = BattleWorkClientSetMaxGet(bw);

    // 022531A8
    do
    {
        switch(sp->switch_in_check_seq_no)
        {
        case SWITCH_IN_CHECK_WEATHER: // 022531DE
            if (sp->weather_check_flag == 0)
            {
                switch (BattleWorkWeatherGet(bw))
                {
                case WEATHER_SYS_RAIN:
                case WEATHER_SYS_HEAVY_RAIN:
                case WEATHER_SYS_THUNDER:
                    scriptnum = SUB_SEQ_OVERWORLD_RAIN;
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                    break;
                case WEATHER_SYS_SNOW:
                case WEATHER_SYS_SNOWSTORM:
                case WEATHER_SYS_BLIZZARD:
                    scriptnum = SUB_SEQ_OVERWORLD_HAIL;
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                    break;
                case WEATHER_SYS_SANDSTORM:
                    scriptnum = SUB_SEQ_OVERWORLD_SANDSTORM;
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                    break;
                case WEATHER_SYS_MIST1:
                case WEATHER_SYS_MIST2:
                    scriptnum = SUB_SEQ_OVERWORLD_FOG;
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                    break;
                case WEATHER_SYS_HIGH_SUN:
                    scriptnum = SUB_SEQ_OVERWORLD_DROUGHT;
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                    break;
                case WEATHER_SYS_TRICK_ROOM:
                    scriptnum = SUB_SEQ_OVERWORLD_TRICK_ROOM;
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                    break;
                default:
                    break;
                }
                if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT)
                {
                    sp->weather_check_flag = 1;
                }
            }
            sp->switch_in_check_seq_no++;
            break;
        // 02253274
        case SWITCH_IN_CHECK_TRACE:
            {
                int def1,def2;
                
                for (i = 0; i < client_set_max; i++){
                    client_no = sp->turn_order[i];
                    def1 = BattleWorkEnemyClientGet(bw, client_no, BATTLER_POSITION_SIDE_RIGHT);
                    def2 = BattleWorkEnemyClientGet(bw, client_no, BATTLER_POSITION_SIDE_LEFT);
                    
                    sp->defence_client_work = TraceClientGet(bw,sp,def1,def2);

                    if ((sp->battlemon[client_no].trace_flag == 0)
                     && (sp->defence_client_work != 0xFF)
                     && (sp->battlemon[client_no].hp)
                     && (sp->battlemon[client_no].item != ITEM_GRISEOUS_ORB)
                     && (sp->battlemon[sp->defence_client_work].hp)
                     && (GetBattlerAbility(sp, client_no) == ABILITY_TRACE))
                    {
                        sp->battlemon[client_no].trace_flag = 1;
                        sp->client_work = client_no;
                        scriptnum = SUB_SEQ_HANDLE_TRACE;
                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                        break;
                    }
                }
            }
            if (i == client_set_max){
                sp->switch_in_check_seq_no++;
            }
            break;
        // 02253338
        case SWITCH_IN_CHECK_WEATHER_ABILITY:
            for (i = 0; i < client_set_max; i++)
            {
                client_no = sp->turn_order[i];
                if ((sp->battlemon[client_no].appear_check_flag == 0)
                 && (sp->battlemon[client_no].hp))
                {
                    switch(GetBattlerAbility(sp, client_no)){
                    case ABILITY_DRIZZLE:
                        sp->battlemon[client_no].appear_check_flag = 1;
                        if ((sp->field_condition & WEATHER_RAIN_PERMANENT) == 0)
                        {
                            scriptnum = SUB_SEQ_HANDLE_DRIZZLE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                        }
                        break;
                    case ABILITY_SAND_STREAM:
                        sp->battlemon[client_no].appear_check_flag = 1;
                        if ((sp->field_condition & WEATHER_SANDSTORM_PERMANENT) == 0)
                        {
                            scriptnum = SUB_SEQ_HANDLE_SAND_STREAM;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                        }
                        break;
                    case ABILITY_DROUGHT:
                        sp->battlemon[client_no].appear_check_flag = 1;
                        if ((sp->field_condition & WEATHER_SUNNY_PERMANENT) == 0)
                        {
                            scriptnum = SUB_SEQ_HANDLE_DROUGHT;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                        }
                        break;
                    case ABILITY_SNOW_WARNING:
                        sp->battlemon[client_no].appear_check_flag = 1;
                        if ((sp->field_condition & WEATHER_HAIL_PERMANENT) == 0)
                        {
                            scriptnum = SUB_SEQ_HANDLE_SNOW_WARNING;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                        }
                        break;
                    }
                }
                if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT)
                {
                    sp->client_work = client_no;
                    break;
                }
            }
            if (i == client_set_max)
            {
                sp->switch_in_check_seq_no++;
            }
            break;
        // 02253448
        case SWITCH_IN_CHECK_INTIMIDATE:
            for (i = 0; i < client_set_max; i++)
            {
                client_no = sp->turn_order[i];
                if ((sp->battlemon[client_no].intimidate_flag == 0)
                 && (sp->battlemon[client_no].hp)
                 && (GetBattlerAbility(sp, client_no) == ABILITY_INTIMIDATE))
                {
                    sp->battlemon[client_no].intimidate_flag = 1;
                    sp->client_work = client_no;
                    scriptnum = SUB_SEQ_HANDLE_INTIMIDATE;
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                    break;
                }
            }
            if (i == client_set_max){
                sp->switch_in_check_seq_no++;
            }
            break;
        // 022534BE
        case SWITCH_IN_CHECK_DOWNLOAD:
            for (i = 0; i < client_set_max; i++)
            {
                client_no = sp->turn_order[i];
                if ((sp->battlemon[client_no].download_flag == 0)
                 && (sp->battlemon[client_no].hp)
                 && (GetBattlerAbility(sp, client_no) == ABILITY_DOWNLOAD))
                {
                    {
                        int num;
                        int def = 0, spdef = 0;

                        for(num = 0; num < client_set_max; num++)
                        {
                            if ((IsClientEnemy(bw, client_no) != IsClientEnemy(bw, num))
                             && ((sp->battlemon[num].condition2 & STATUS2_FLAG_SUBSTITUTE) == 0)
                             && (sp->battlemon[num].hp))
                            {
                                def += sp->battlemon[num].defense * StatBoostModifiers[sp->battlemon[num].states[STAT_DEFENSE]][0] / StatBoostModifiers[sp->battlemon[num].states[STAT_DEFENSE]][1];
                                spdef += sp->battlemon[num].spdef * StatBoostModifiers[sp->battlemon[num].states[STAT_SPDEF]][0] / StatBoostModifiers[sp->battlemon[num].states[STAT_SPDEF]][1];
                            }
                        }
                        
                        sp->battlemon[client_no].download_flag = 1;
                        
                        if ((def + spdef) != 0)
                        {
                            if (def >= spdef)
                            {
                                sp->addeffect_param = ADD_STAGE_SP_ATK_UP;
                            }
                            else
                            {
                                sp->addeffect_param = ADD_STAGE_ATTACK_UP;
                            }
                            sp->addeffect_type = ADD_STATUS_ABILITY;
                            sp->state_client = client_no;
                            scriptnum = SUB_SEQ_STAT_STAGE_CHANGE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }
                }
            }
            if (i == client_set_max)
            {
                sp->switch_in_check_seq_no++;
            }
            break;
        // 02253624
        case SWITCH_IN_CHECK_ANTICIPATION:
            for (i = 0; i < client_set_max; i++)
            {
                client_no = sp->turn_order[i];
                if ((sp->battlemon[client_no].anticipation_flag == 0)
                 && (sp->battlemon[client_no].hp)
                 && (GetBattlerAbility(sp, client_no) == ABILITY_ANTICIPATION))
                {
                    sp->battlemon[client_no].anticipation_flag = 1;
                    {
                        int num, pos;
                        u16 movenum;
                        u32 flag;

                        for (num = 0; num < client_set_max; num++)
                        {
                            if ((IsClientEnemy(bw, client_no) != IsClientEnemy(bw, num)) && (sp->battlemon[num].hp))
                            {
                                for (pos = 0; pos < 4; pos++)
                                {
                                    movenum=sp->battlemon[num].move[pos];
                                    if (movenum)
                                    {
                                        flag = 0;
                                        sp->damage = TypeCalc(bw, sp, movenum, 0, num, client_no, sp->damage, &flag);
                                        if (((flag & MOVE_STATUS_FLAG_NOT_EFFECTIVE) == 0)
                                         && (AnticipateMoveEffectListCheck(sp, movenum) == FALSE) // move effects that deal fixed damage don't activate anticipation--see psywave, dragon rage, etc.
                                         && ((flag & MOVE_STATUS_FLAG_SUPER_EFFECTIVE)
                                          || ((sp->old_moveTbl[movenum].effect == 38) // one-hit ko
                                           && (sp->battlemon[client_no].level<=sp->battlemon[num].level))))
                                        {
                                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                            break;
                                        }
                                    }
                                }
                                if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT){
                                    break;
                                }
                            }
                        }
                        if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT)
                        {
                            sp->client_work = client_no;
                            scriptnum = SUB_SEQ_HANDLE_ANTICIPATION;
                        }
                        break;
                    }
                }
            }
            if (i == client_set_max){
                sp->switch_in_check_seq_no++;
            }
            break;
        // 02253764
        case SWITCH_IN_CHECK_FOREWARN:
            for (i = 0; i < client_set_max; i++)
            {
                client_no = sp->turn_order[i];
                if ((sp->battlemon[client_no].forewarn_flag == 0)
                 && (sp->battlemon[client_no].hp)
                 && (GetBattlerAbility(sp, client_no) == ABILITY_FOREWARN))
                {
                    sp->battlemon[client_no].forewarn_flag = 1;
                    {
                        int num,pos;
                        u16 movenum;
                        u32 basepower = 0, basepower_temp = 0;
                        int hp;

                        for (num = 0; num < client_set_max; num++)
                        {
                            if((IsClientEnemy(bw, client_no) != IsClientEnemy(bw, num)) && (sp->battlemon[num].hp))
                            {
                                hp += sp->battlemon[num].hp;
                                for(pos = 0; pos < 4; pos++)
                                {
                                    movenum = sp->battlemon[num].move[pos];
                                    basepower = sp->old_moveTbl[movenum].power;
                                    switch (basepower) // basically handle 1 base power moves
                                    {
                                    case 1:
                                        switch(sp->old_moveTbl[movenum].effect)
                                        {
                                        case 38: // one-hit ko
                                            if ((basepower_temp < 150)
                                             || ((basepower_temp == 150) && (BattleRand(bw) & 1)))
                                            {
                                                basepower_temp = 150;
                                                sp->waza_work = movenum;
                                            }
                                            break;
                                        // counter, mirror coat, metal burst
                                        case 89:
                                        case 144:
                                        case 227:
                                            if ((basepower_temp < 120)
                                             || ((basepower_temp == 120) && (BattleRand(bw) & 1)))
                                            {
                                                basepower_temp = 120;
                                                sp->waza_work = movenum;
                                            }
                                            break;
                                        default:
                                            if ((basepower_temp < 80)
                                             || ((basepower_temp == 80) && (BattleRand(bw) & 1)))
                                            {
                                                basepower_temp = 80;
                                                sp->waza_work = movenum;
                                            }
                                            break;
                                        }
                                        break;
                                    default:
                                        if ((basepower_temp < basepower)
                                         || ((basepower_temp == basepower) && (BattleRand(bw) & 1)))
                                        {
                                            basepower_temp = basepower;
                                            sp->waza_work = movenum;
                                        }
                                        break;
                                    }
                                }
                            }
                        }

                        if (basepower_temp)
                        {
                            sp->client_work = client_no;
                            scriptnum = SUB_SEQ_HANDLE_FOREWARN;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                        }
                        else if (hp)
                        {
                            num = ChooseRandomTarget(bw, sp, client_no);
                            pos = CountBattlerMoves(bw, sp, num);
                            sp->waza_work = sp->battlemon[num].move[ BattleRand(bw) % pos ];
                            sp->client_work = client_no;
                            scriptnum = SUB_SEQ_HANDLE_FOREWARN;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                        }
                        break;
                    }
                }
            }
            if(i == client_set_max){
                sp->switch_in_check_seq_no++;
            }
            break;
        // 02253974
        case SWITCH_IN_CHECK_FRISK:
            for (i = 0; i < client_set_max; i++)
            {
                client_no = sp->turn_order[i];
                if ((sp->battlemon[client_no].frisk_flag == 0)
                 && (sp->battlemon[client_no].hp)
                 && (GetBattlerAbility(sp, client_no) == ABILITY_FRISK))
                {
                    sp->battlemon[client_no].frisk_flag=1;
                    if(BattleTypeGet(bw) & BATTLE_TYPE_DOUBLE)
                    {
                        {
                            int def[2];

                            def[0] = BattleWorkEnemyClientGet(bw, client_no, BATTLER_POSITION_SIDE_RIGHT);
                            def[1] = BattleWorkEnemyClientGet(bw, client_no, BATTLER_POSITION_SIDE_LEFT);

                            if ((sp->battlemon[def[0]].hp) && (sp->battlemon[def[0]].item)
                             && (sp->battlemon[def[1]].hp) && (sp->battlemon[def[1]].item)) // if both mons are alive, check one randomly
                            {
                                sp->item_work = sp->battlemon[def[ BattleRand(bw) & 1 ]].item;
                                ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            }
                            else if ((sp->battlemon[def[0]].hp) && (sp->battlemon[def[0]].item))
                            {
                                sp->item_work = sp->battlemon[def[0]].item;
                                ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            }
                            else if ((sp->battlemon[def[1]].hp) && (sp->battlemon[def[1]].item))
                            {
                                sp->item_work = sp->battlemon[def[1]].item;
                                ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            }
                        }
                    }
                    else
                    {
                        if ((sp->battlemon[ client_no^1 ].hp) && (sp->battlemon[client_no^1].item)) // xor 1 will always result in opponent in single battle
                        {
                            sp->item_work = sp->battlemon[ client_no^1 ].item;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                        }
                    }
                }
                if(ret == SWITCH_IN_CHECK_MOVE_SCRIPT)
                {
                    sp->client_work = client_no;
                    scriptnum = SUB_SEQ_HANDLE_FRISK;
                    break;
                }
            }
            if(i == client_set_max)
            {
                sp->switch_in_check_seq_no++;
            }
            break;
        // 02253ACC
        case SWITCH_IN_CHECK_SLOW_START:
            for (i = 0; i < client_set_max; i++)
            {
                client_no = sp->turn_order[i];
                if ((sp->battlemon[client_no].slow_start_flag == 0)
                 && (sp->battlemon[client_no].hp)
                 && (GetBattlerAbility(sp, client_no) == ABILITY_SLOW_START)
                 && (sp->total_turn <= sp->battlemon[client_no].moveeffect.slow_start_count))
                {
                    sp->battlemon[client_no].slow_start_flag = 1;
                    sp->client_work = client_no;
                    scriptnum = SUB_SEQ_HANDLE_SLOW_START;
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                    break;
                }
                
                // check slow start end as well
                if ((sp->battlemon[client_no].slow_start_end_flag == 0)
                 && (sp->battlemon[client_no].hp)
                 && (GetBattlerAbility(sp, client_no) == ABILITY_SLOW_START)
                 && ((sp->total_turn-sp->battlemon[client_no].moveeffect.slow_start_count) == 5))
                {
                    sp->battlemon[client_no].slow_start_end_flag = 1;
                    sp->client_work = client_no;
                    scriptnum = SUB_SEQ_HANDLE_SLOW_START_END;
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                    break;
                }
            }
            if(i == client_set_max)
            {
                sp->switch_in_check_seq_no++;
            }
            break;
        // 02253BA4
        case SWITCH_IN_CHECK_MOLD_BREAKER:
            for (i = 0; i < client_set_max; i++)
            {
                client_no = sp->turn_order[i];
                if ((sp->battlemon[client_no].mold_breaker_flag == 0)
                 && (sp->battlemon[client_no].hp)
                 && ((GetBattlerAbility(sp, client_no) == ABILITY_MOLD_BREAKER) ||
                        (GetBattlerAbility(sp, client_no) == ABILITY_TURBOBLAZE) ||
                        (GetBattlerAbility(sp, client_no) == ABILITY_TERAVOLT)))
                {
                    sp->battlemon[client_no].mold_breaker_flag = 1;
                    sp->client_work = client_no;
                    if(GetBattlerAbility(sp, client_no) == ABILITY_MOLD_BREAKER)
                    {
                        scriptnum = SUB_SEQ_HANDLE_MOLD_BREAKER;
                    }
                    else if(GetBattlerAbility(sp, client_no) == ABILITY_TURBOBLAZE)
                    {
                        scriptnum = SUB_SEQ_HANDLE_TURBOBLAZE_MESSAGE;
                    }
                    else if(GetBattlerAbility(sp, client_no) == ABILITY_TERAVOLT)
                    {
                        scriptnum = SUB_SEQ_HANDLE_TERAVOLT_MESSAGE;
                    }

                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                    break;
                }
            }
            if (i == client_set_max)
            {
                sp->switch_in_check_seq_no++;
            }
            break;
        // 02253C18
        case SWITCH_IN_CHECK_PRESSURE:
            for(i = 0; i < client_set_max; i++)
            {
                client_no = sp->turn_order[i];
                if ((sp->battlemon[client_no].pressure_flag == 0)
                 && (sp->battlemon[client_no].hp)
                 && (GetBattlerAbility(sp, client_no) == ABILITY_PRESSURE))
                {
                    sp->battlemon[client_no].pressure_flag = 1;
                    sp->client_work = client_no;
                    scriptnum = SUB_SEQ_HANDLE_PRESSURE;
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                    break;
                }
            }
            if(i == client_set_max){
                sp->switch_in_check_seq_no++;
            }
            break;
        // 02253CA6
        case SWITCH_IN_CHECK_FORECAST:
            if(BattleFormChangeCheck(bw, sp, &scriptnum) == TRUE)
            {
                ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
            }
            else
            {
                sp->switch_in_check_seq_no++;
            }
            break;
        // 02253CC2
        case SWITCH_IN_CHECK_AMULET_COIN:
            for (i = 0; i < client_set_max; i++)
            {
                client_no=sp->turn_order[i];
                if (BattleItemDataGet(sp, sp->battlemon[client_no].item, 1) == HOLD_EFFECT_DOUBLE_MONEY_GAIN)
                {
                    sp->money_multiplier = 2;
                }
            }
            sp->switch_in_check_seq_no++;
            break;
        // 02253CFC
        case SWITCH_IN_CHECK_ABILITY_HEAL_STATUS:
            for (i = 0; i < client_set_max; i++)
            {
                client_no = sp->turn_order[i];
                if (AbilityStatusRecoverCheck(bw, sp, client_no, 1) == TRUE)
                {
                    scriptnum = SUB_SEQ_HANDLE_STATUS_HEAL_ABILITIES;
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                    break;
                }
            }
            if (i == client_set_max)
            {
                sp->switch_in_check_seq_no++;
            }
            break;
        // 02253D38
        case SWITCH_IN_CHECK_HEAL_STATUS:
            for (i = 0; i < client_set_max; i++)
            {
                client_no = sp->turn_order[i];
                if(HeldItemHealCheck(bw, sp, client_no, &scriptnum) == TRUE)
                {
                    sp->client_work = client_no;
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                    break;
                }
            }
            if(i == client_set_max)
            {
                sp->switch_in_check_seq_no++;
            }
            break;
        case SWITCH_IN_CHECK_UNNERVE:
            for(i = 0; i < client_set_max; i++)
            {
                client_no = sp->turn_order[i];
                if ((sp->battlemon[client_no].unnerve_flag == 0)
                 && (sp->battlemon[client_no].hp)
                 && (GetBattlerAbility(sp, client_no) == ABILITY_UNNERVE))
                {
                    sp->battlemon[client_no].unnerve_flag = 1;
                    sp->client_work = client_no;
                    scriptnum = SUB_SEQ_HANDLE_UNNERVE_MESSAGE;
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                    break;
                }
            }
            if(i == client_set_max){
                sp->switch_in_check_seq_no++;
            }
            break;
        case SWITCH_IN_CHECK_DARK_AURA:
            for(i = 0; i < client_set_max; i++)
            {
                client_no = sp->turn_order[i];
                if ((sp->battlemon[client_no].dark_aura_flag == 0)
                 && (sp->battlemon[client_no].hp)
                 && (GetBattlerAbility(sp, client_no) == ABILITY_DARK_AURA))
                {
                    sp->battlemon[client_no].dark_aura_flag = 1;
                    sp->client_work = client_no;
                    scriptnum = SUB_SEQ_HANDLE_DARK_AURA_MESSAGE;
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                    break;
                }
            }
            if(i == client_set_max){
                sp->switch_in_check_seq_no++;
            }
            break;
        case SWITCH_IN_CHECK_FAIRY_AURA:
            for(i = 0; i < client_set_max; i++)
            {
                client_no = sp->turn_order[i];
                if ((sp->battlemon[client_no].fairy_aura_flag == 0)
                 && (sp->battlemon[client_no].hp)
                 && (GetBattlerAbility(sp, client_no) == ABILITY_FAIRY_AURA))
                {
                    sp->battlemon[client_no].fairy_aura_flag = 1;
                    sp->client_work = client_no;
                    scriptnum = SUB_SEQ_HANDLE_FAIRY_AURA_MESSAGE;
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                    break;
                }
            }
            if(i == client_set_max){
                sp->switch_in_check_seq_no++;
            }
            break;
        case SWITCH_IN_CHECK_AURA_BREAK:
            for(i = 0; i < client_set_max; i++)
            {
                client_no = sp->turn_order[i];
                if ((sp->battlemon[client_no].aura_break_flag == 0)
                 && (sp->battlemon[client_no].hp)
                 && (GetBattlerAbility(sp, client_no) == ABILITY_AURA_BREAK))
                {
                    sp->battlemon[client_no].aura_break_flag = 1;
                    sp->client_work = client_no;
                    scriptnum = SUB_SEQ_HANDLE_AURA_BREAK_MESSAGE;
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                    break;
                }
            }
            if(i == client_set_max){
                sp->switch_in_check_seq_no++;
            }
            break;
        // 02253D78
        case SWITCH_IN_CHECK_END:
            sp->switch_in_check_seq_no = 0;
            ret = SWITCH_IN_CHECK_CHECK_END;
            break;
        }
    } while (ret == SWITCH_IN_CHECK_LOOP);

    return scriptnum;
}

u32 TurnEndAbilityCheck(void *bw, struct BattleStruct *sp, int client_no)
{
    u32 ret = FALSE;
    int seq_no;

    switch (GetBattlerAbility(sp,client_no))
    {
    case ABILITY_SPEED_BOOST:
        if ((sp->battlemon[client_no].hp)
         && (sp->battlemon[client_no].states[STAT_SPEED] < 12)
         && (sp->battlemon[client_no].moveeffect.fake_out_count != (sp->total_turn + 1)))
        {
            sp->addeffect_param = ADD_STATE_SPEED_UP;
            sp->addeffect_type = ADD_EFFECT_ABILITY;
            sp->state_client = client_no;
            seq_no = SUB_SEQ_STAT_STAGE_CHANGE;
            ret = TRUE;
        }
        break;
    case ABILITY_SHED_SKIN:
        if ((sp->battlemon[client_no].condition & STATUS_ANY_PERSISTENT)
         && (sp->battlemon[client_no].hp)
         && (BattleRand(bw) % 10 < 3)) // 30% chance
        {
            if (sp->battlemon[client_no].condition & STATUS_FLAG_ASLEEP)
            {
                sp->msg_work = MSG_HEAL_SLEEP;
            }
            else if (sp->battlemon[client_no].condition & STATUS_POISON_ANY)
            {
                sp->msg_work = MSG_HEAL_POISON;
            }
            else if (sp->battlemon[client_no].condition & STATUS_FLAG_BURNED)
            {
                sp->msg_work = MSG_HEAL_BURN;
            }
            else if (sp->battlemon[client_no].condition & STATUS_FLAG_PARALYZED)
            {
                sp->msg_work = MSG_HEAL_PARALYSIS;
            }
            else
            {
                sp->msg_work = MSG_HEAL_FROZEN;
            }
            sp->client_work = client_no;
            seq_no = SUB_SEQ_HANDLE_SHED_SKIN;
            ret = TRUE;
        }
        break;
    default:
        break;
    }

    if (ret == TRUE)
    {
        LoadBattleSubSeqScript(sp, FILE_BATTLE_SUB_SCRIPTS, seq_no);
        sp->next_server_seq_no = sp->server_seq_no;
        sp->server_seq_no = MOVE_SEQUENCE_NO; // not sure what this corresponds to
    }

    return ret;
}


BOOL MoveHitAbilityCheck(void *bw, struct BattleStruct *sp, int *seq_no) {
    BOOL ret = FALSE;

    if (sp->defence_client == 0xFF) {
        return ret;
    }

    if (CheckSubstitute(sp, sp->defence_client) == TRUE) {
        return ret;
    }

    switch (GetBattlerAbility(sp, sp->defence_client)) {
        case ABILITY_STATIC:
            if ((sp->battlemon[sp->attack_client].hp)
                && (sp->battlemon[sp->attack_client].condition == 0)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS2_FLAG_x10) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage))
                && (sp->old_moveTbl[sp->current_move_index].flag & FLAG_CONTACT)
                && (BattleRand(bw) % 10 < 3)) {
                sp->addeffect_type = ADD_STATUS_ABILITY;
                sp->state_client = sp->attack_client;
                sp->client_work = sp->defence_client;
                seq_no[0] = SUB_SEQ_PARALYZE_MON;
                ret = TRUE;
            }
            break;
        case ABILITY_COLOR_CHANGE: {
            u8 movetype;

            if (GetBattlerAbility(sp, sp->attack_client) == ABILITY_NORMALIZE) {
                movetype = TYPE_NORMAL;
            } else if (sp->move_type) {
                movetype = sp->move_type;
            } else {
                movetype = sp->old_moveTbl[sp->current_move_index].type;
            }

            if ((sp->battlemon[sp->defence_client].hp)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && (sp->current_move_index != MOVE_STRUGGLE)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage))
                && ((sp->server_status_flag2 & SERVER_STATUS2_FLAG_x10) == 0)
                && (sp->old_moveTbl[sp->current_move_index].power)
                && (BattlePokemonParamGet(sp, sp->defence_client, BATTLE_MON_DATA_TYPE1, NULL) != movetype)
                && (BattlePokemonParamGet(sp, sp->defence_client, BATTLE_MON_DATA_TYPE2, NULL) != movetype)) {
                seq_no[0] = SUB_SEQ_HANDLE_COLOR_CHANGE;
                sp->msg_work = movetype;
                ret = TRUE;
            }
        }
            break;
        case ABILITY_ROUGH_SKIN:
            if ((sp->battlemon[sp->attack_client].hp)
                && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS2_FLAG_x10) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage))
                && (sp->old_moveTbl[sp->current_move_index].flag & FLAG_CONTACT)) {
                sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * -1, 8);
                sp->client_work = sp->attack_client;
                seq_no[0] = SUB_SEQ_HANDLE_ROUGH_SKIN;
                ret = TRUE;
            }
            break;
        case ABILITY_EFFECT_SPORE:
            if ((sp->battlemon[sp->attack_client].hp)
                && (sp->battlemon[sp->attack_client].condition == 0)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS2_FLAG_x10) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage))
                && (sp->old_moveTbl[sp->current_move_index].flag & FLAG_CONTACT)
                && (BattleRand(bw) % 10 < 3)) {
                switch (BattleRand(bw) % 3) {
                    case 0:
                    default:
                        seq_no[0] = SUB_SEQ_POISON_MON;
                        break;
                    case 1:
                        seq_no[0] = SUB_SEQ_PARALYZE_MON;
                        break;
                    case 2:
                        seq_no[0] = SUB_SEQ_PUT_MON_TO_SLEEP;
                        break;
                }
                sp->addeffect_type = ADD_STATUS_ABILITY;
                sp->state_client = sp->attack_client;
                sp->client_work = sp->defence_client;
                ret = TRUE;
            }
            break;
        case ABILITY_POISON_POINT:
            if ((sp->battlemon[sp->attack_client].hp)
                && (sp->battlemon[sp->attack_client].condition == 0)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS2_FLAG_x10) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage))
                && (sp->old_moveTbl[sp->current_move_index].flag & FLAG_CONTACT)
                && (BattleRand(bw) % 10 < 3)) {
                sp->addeffect_type = ADD_STATUS_ABILITY;
                sp->state_client = sp->attack_client;
                sp->client_work = sp->defence_client;
                seq_no[0] = SUB_SEQ_POISON_MON;
                ret = TRUE;
            }
            break;
        case ABILITY_FLAME_BODY:
            if ((sp->battlemon[sp->attack_client].hp)
                && (sp->battlemon[sp->attack_client].condition == 0)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS2_FLAG_x10) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage))
                && (sp->old_moveTbl[sp->current_move_index].flag & FLAG_CONTACT)
                && (BattleRand(bw) % 10 < 3)) {
                sp->addeffect_type = ADD_STATUS_ABILITY;
                sp->state_client = sp->attack_client;
                sp->client_work = sp->defence_client;
                seq_no[0] = SUB_SEQ_BURN_MON;
                ret = TRUE;
            }
            break;
        case ABILITY_CUTE_CHARM:
            if ((sp->battlemon[sp->attack_client].hp)
                && ((sp->battlemon[sp->attack_client].condition2 & STATUS2_FLAG_INFATURATION) == 0)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS2_FLAG_x10) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage))
                && (sp->old_moveTbl[sp->current_move_index].flag & FLAG_CONTACT)
                && (sp->battlemon[sp->defence_client].hp)
                && (BattleRand(bw) % 10 < 3)) {
                sp->addeffect_type = ADD_STATUS_ABILITY;
                sp->state_client = sp->attack_client;
                sp->client_work = sp->defence_client;
                seq_no[0] = SUB_SEQ_HANDLE_CUTE_CHARM;
                ret = TRUE;
            }
            break;
        case ABILITY_AFTERMATH:
            if ((sp->defence_client == sp->fainting_client)
                && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
                && (CheckSideAbility(bw, sp, CHECK_ALL_BATTLER_ALIVE, 0, ABILITY_DAMP) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS2_FLAG_x10) == 0)
                && (sp->battlemon[sp->attack_client].hp)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && (sp->old_moveTbl[sp->current_move_index].flag & FLAG_CONTACT)) {
                sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * -1, 4);
                sp->client_work = sp->attack_client;
                seq_no[0] = SUB_SEQ_HANDLE_AFTERMATH;
                ret = TRUE;
            }
            break;
        case ABILITY_INNARDS_OUT:
            if ((sp->defence_client == sp->fainting_client)
                && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
                && ((sp->server_status_flag2 & SERVER_STATUS2_FLAG_x10) == 0)
                && (sp->battlemon[sp->attack_client].hp)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0))
            {
                sp->hp_calc_work = sp->damage;
                sp->client_work = sp->attack_client;
                seq_no[0] = SUB_SEQ_HANDLE_INNARDS_OUT_MESSAGE;
                ret = TRUE;
            }
            break;
        default:
            break;
    }

    return ret;
}


u32 MoldBreakerAbilityCheck(struct BattleStruct *sp, int attacker, int defender, int ability)
{
    BOOL ret;

    ret = FALSE;

    if((GetBattlerAbility(sp, attacker) != ABILITY_MOLD_BREAKER) &&
        (GetBattlerAbility(sp, attacker) != ABILITY_TERAVOLT) &&
        (GetBattlerAbility(sp, attacker) != ABILITY_TURBOBLAZE))
    {
        if(GetBattlerAbility(sp,defender) == ability)
        {
            ret = TRUE;
        }
    }
    else
    {
        if((GetBattlerAbility(sp, defender) == ability) && (sp->oneSelfFlag[attacker].mold_breaker_flag == 0))
        {
            sp->oneSelfFlag[attacker].mold_breaker_flag = 1;
            sp->server_status_flag |= SERVER_STATUS_FLAG_MOLD_BREAKER;
        }
    }

    return ret;
}
