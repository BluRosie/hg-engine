#include "../../include/battle.h"
#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/types.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/constants/weather_numbers.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/file.h"


static BOOL IntimidateCheckHelper(struct BattleStruct *sp, u32 client);
static BOOL IsValidImposterTarget(void *bw, struct BattleStruct *sp, u32 client);

extern struct ILLUSION_STRUCT gIllusionStruct;


/**
 *  @brief this function is basically run whenever it can (i.e. if a battler suddenly gains Mold Breaker), but it's easiest to think of it as on switch in.
 *         various items were introduced that should also happen ASAP, particularly the air balloon message.
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @return script subseq to run if there's one that should be run; 0 if nothing should be run
 */
int UNUSED SwitchInAbilityCheck(void *bw, struct BattleStruct *sp)
{
    // Sort clients because abilities may affect speed
    DynamicSortClientExecutionOrder(bw, sp, FALSE);
    int i;
    int scriptnum = 0;
    int ret = SWITCH_IN_CHECK_LOOP;
    int client_no = 0; // initialize
    int client_set_max;

    client_set_max = BattleWorkClientSetMaxGet(bw);

    // 022531A8
    do
    {
        switch(sp->switch_in_check_seq_no)
        {
            case SWITCH_IN_CHECK_WEATHER:  // 022531DE
            {
                if (sp->weather_check_flag == 0) {
                    switch (BattleWorkWeatherGet(bw)) {
                        case WEATHER_SYS_RAIN:
                        case WEATHER_SYS_HEAVY_RAIN:
                        case WEATHER_SYS_THUNDER:
                            scriptnum = SUB_SEQ_OVERWORLD_RAIN;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        case WEATHER_SYS_SNOW:
                        case WEATHER_SYS_SNOWSTORM:
                            // case WEATHER_SYS_BLIZZARD:
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
                            scriptnum = SUB_SEQ_OVERWORLD_SUN;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        case WEATHER_SYS_TRICK_ROOM:
                            scriptnum = SUB_SEQ_OVERWORLD_TRICK_ROOM;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                    }
                    if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                        sp->weather_check_flag = 1;
                    }
                }
                sp->switch_in_check_seq_no++;
            }
                break;
            case SWITCH_IN_CHECK_FIELD: // TODO come back to this
                sp->switch_in_check_seq_no++;
                break;
            // https://bulbapedia.bulbagarden.net/wiki/User:FIQ/Turn_sequence
            case SWITCH_IN_CHECK_ENTRY_EFFECT_NEUTRALIZING_GAS_TERA_SHIFT: {
                for (i = 0; i < client_set_max; i++) {
                    client_no = sp->turnOrder[i];

                    switch (GetBattlerAbility(sp, client_no)) {
                        case ABILITY_NEUTRALIZING_GAS:
                            break;
                        case ABILITY_TERA_SHIFT:
                            break;

                        default:
                            break;
                    }

                    // Need to trigger script
                    if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                        break;
                    }
                }

                if (i == client_set_max) {
                    sp->switch_in_check_seq_no++;
                }
            } 
                break;
            case SWITCH_IN_CHECK_ENTRY_EFFECT_UNNERVE: {
                for (i = 0; i < client_set_max; i++) {
                    client_no = sp->turnOrder[i];

                    // Unnerve / As One
                    {
                        if ((sp->battlemon[client_no].ability_activated_flag == 0) && (sp->battlemon[client_no].hp)
                        && ((GetBattlerAbility(sp, client_no) == ABILITY_AS_ONE_GLASTRIER)
                        || (GetBattlerAbility(sp, client_no) == ABILITY_AS_ONE_SPECTRIER)
                        || (GetBattlerAbility(sp, client_no) == ABILITY_UNNERVE))) {
                            sp->battlemon[client_no].ability_activated_flag = 1;
                            sp->battlerIdTemp = client_no;
                            scriptnum = SUB_SEQ_HANDLE_UNNERVE_MESSAGE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Need to trigger script
                    if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                        break;
                    }
                }

                if (i == client_set_max) {
                    sp->switch_in_check_seq_no++;
                }
            }
                break;
            case SWITCH_IN_CHECK_ENTRY_EFFECT_HEALING_WISH: {
                for (i = 0; i < client_set_max; i++) {
                    client_no = sp->turnOrder[i];
                    
                    // Heal from Healing Wish, Lunar Dance, Z-Memento, or Z-Parting Shot if applicable
                    {

                    }

                    // Need to trigger script
                    if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                        break;
                    }
                }

                if (i == client_set_max) {
                    sp->switch_in_check_seq_no++;
                }
            }
                break;
            case SWITCH_IN_CHECK_ENTRY_EFFECT_HAZARDS: {
                for (i = 0; i < client_set_max; i++) {
                    client_no = sp->turnOrder[i];

                    
                    // Entry hazards
                    {

                    }

                    
                    // Need to trigger script
                    if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                        break;
                    }
                }

                if (i == client_set_max) {
                    sp->switch_in_check_seq_no++;
                }
            }
                break;
            case SWITCH_IN_CHECK_ENTRY_EFFECT_ABILITIES_AIR_BALLOON: {
                for (i = 0; i < client_set_max; i++) {      
                    client_no = sp->turnOrder[i];

                    // Abilities with entry effects can announce, except Neutralizing Gas/Unnerve (earlier) and form-changing abilities (later)

                    // Trace
                    {
                        int def1, def2;

                        def1 = BattleWorkEnemyClientGet(bw, client_no, BATTLER_POSITION_SIDE_RIGHT);
                        def2 = BattleWorkEnemyClientGet(bw, client_no, BATTLER_POSITION_SIDE_LEFT);

                        sp->defence_client_work = TraceClientGet(bw, sp, def1, def2);

                        if ((sp->battlemon[client_no].ability_activated_flag == 0) 
                            && (sp->defence_client_work != 0xFF) 
                            && (sp->battlemon[client_no].hp) 
                            && (sp->battlemon[client_no].item != ITEM_GRISEOUS_ORB) 
                            && (sp->battlemon[sp->defence_client_work].hp) 
                            && (GetBattlerAbility(sp, client_no) == ABILITY_TRACE))
                        {
                            sp->battlerIdTemp = client_no;
                            scriptnum = SUB_SEQ_TRACE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Weather Ability
                    {
                        if (!(CanUndergoPrimalReversion(sp, client_no)) && (sp->battlemon[client_no].ability_activated_flag == 0) && (sp->battlemon[client_no].hp)) {
                            switch (GetBattlerAbility(sp, client_no)) {
                                case ABILITY_DRIZZLE:
                                    sp->battlemon[client_no].ability_activated_flag = 1;
                                    if ((sp->field_condition & WEATHER_RAIN_ANY) == 0) {
                                        scriptnum = SUB_SEQ_DRIZZLE;
                                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    }
                                    break;
                                case ABILITY_SAND_STREAM:
                                    sp->battlemon[client_no].ability_activated_flag = 1;
                                    if ((sp->field_condition & WEATHER_SANDSTORM_ANY) == 0) {
                                        scriptnum = SUB_SEQ_SAND_STREAM;
                                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    }
                                    break;
                                case ABILITY_DROUGHT:
                                    sp->battlemon[client_no].ability_activated_flag = 1;
                                    if ((sp->field_condition & WEATHER_SUNNY_ANY) == 0) {
                                        scriptnum = SUB_SEQ_DROUGHT;
                                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    }
                                    break;
                                case ABILITY_SNOW_WARNING:
                                    sp->battlemon[client_no].ability_activated_flag = 1;
                                    if ((sp->field_condition & WEATHER_HAIL_ANY) == 0) {
                                        scriptnum = SUB_SEQ_SNOW_WARNING;
                                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    }
                                    break;
                                case ABILITY_DESOLATE_LAND:
                                    sp->battlemon[client_no].ability_activated_flag = 1;
                                    if ((sp->field_condition & WEATHER_EXTREMELY_HARSH_SUNLIGHT) == 0) {
                                        scriptnum = SUB_SEQ_DESOLATE_LAND;
                                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    }
                                    break;
                                case ABILITY_PRIMORDIAL_SEA:
                                    sp->battlemon[client_no].ability_activated_flag = 1;
                                    if ((sp->field_condition & WEATHER_HEAVY_RAIN) == 0) {
                                        scriptnum = SUB_SEQ_PRIMORDIAL_SEA;
                                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    }
                                    break;
                                case ABILITY_DELTA_STREAM:
                                    sp->battlemon[client_no].ability_activated_flag = 1;
                                    if ((sp->field_condition & WEATHER_STRONG_WINDS) == 0) {
                                        scriptnum = SUB_SEQ_DELTA_STREAM;
                                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    }
                                    break;
                            }
                        }
                        if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                            sp->battlerIdTemp = client_no;
                            break;
                        }
                    }

                    // Cloud Nine/Air Lock
                    {
                        if ((sp->battlemon[client_no].ability_activated_flag == 0) && (sp->battlemon[client_no].hp) && ((GetBattlerAbility(sp, client_no) == ABILITY_CLOUD_NINE) || (GetBattlerAbility(sp, client_no) == ABILITY_AIR_LOCK))) {
                            sp->battlemon[client_no].ability_activated_flag = 1;
                            scriptnum = SUB_SEQ_HANDLE_CLOUD_NINE_MESSAGE;

                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Intimidate
                    {
                        if ((sp->battlemon[client_no].ability_activated_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_INTIMIDATE)) {
                            // mark intimidate as having activated if it can regardless of if it does so that abilities that suppress it don't suddenly let it activate once they disappear
                            sp->battlemon[client_no].ability_activated_flag = 1;
                            if (IntimidateCheckHelper(sp, client_no)) {
                                sp->battlerIdTemp = client_no;
                                scriptnum = SUB_SEQ_INTIMIDATE;
                                ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                break;
                            }
                        }
                    }

                    // Download
                    {
                        if ((sp->battlemon[client_no].ability_activated_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_DOWNLOAD)) {
                            {
                                int num;
                                int def = 0, spdef = 0;

                                for (num = 0; num < client_set_max; num++) {
                                    if ((IsClientEnemy(bw, client_no) != IsClientEnemy(bw, num)) && ((sp->battlemon[num].condition2 & STATUS2_SUBSTITUTE) == 0) && (sp->battlemon[num].hp)) {
                                        def += sp->battlemon[num].defense * StatBoostModifiers[sp->battlemon[num].states[STAT_DEFENSE]][0] / StatBoostModifiers[sp->battlemon[num].states[STAT_DEFENSE]][1];
                                        spdef += sp->battlemon[num].spdef * StatBoostModifiers[sp->battlemon[num].states[STAT_SPDEF]][0] / StatBoostModifiers[sp->battlemon[num].states[STAT_SPDEF]][1];
                                    }
                                }

                                sp->battlemon[client_no].ability_activated_flag = 1;

                                if ((def + spdef) != 0) {
                                    if (def >= spdef) {
                                        sp->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_SP_ATK_UP;
                                    } else {
                                        sp->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP;
                                    }
                                    sp->addeffect_type = ADD_STATUS_ABILITY;
                                    sp->state_client = client_no;
                                    scriptnum = SUB_SEQ_BOOST_STATS;
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    break;
                                }
                            }
                        }
                    }

                    // Anticipation
                    {
                        if ((sp->battlemon[client_no].ability_activated_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_ANTICIPATION)) {
                            sp->battlemon[client_no].ability_activated_flag = 1;
                            {
                                int num, pos;
                                u16 movenum;
                                u32 flag;

                                for (num = 0; num < client_set_max; num++) {
                                    if ((IsClientEnemy(bw, client_no) != IsClientEnemy(bw, num)) && (sp->battlemon[num].hp)) {
                                        for (pos = 0; pos < 4; pos++) {
                                            movenum = sp->battlemon[num].move[pos];
                                            if (movenum) {
                                                flag = 0;
                                                sp->damage = TypeCalc(bw, sp, movenum, 0, num, client_no, sp->damage, &flag);
                                                if (((flag & MOVE_STATUS_FLAG_NOT_EFFECTIVE) == 0) && (AnticipateMoveEffectListCheck(sp, movenum) == FALSE)    // move effects that deal fixed damage don't activate anticipation--see psywave, dragon rage, etc.
                                                    && ((flag & MOVE_STATUS_FLAG_SUPER_EFFECTIVE) || ((sp->moveTbl[movenum].effect == MOVE_EFFECT_ONE_HIT_KO)  // one-hit ko
                                                                                                      && (sp->battlemon[client_no].level <= sp->battlemon[num].level)))) {
                                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                                    break;
                                                }
                                            }
                                        }
                                        if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                                            break;
                                        }
                                    }
                                }
                                if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                                    sp->battlerIdTemp = client_no;
                                    scriptnum = SUB_SEQ_HANDLE_ANTICIPATION;
                                }
                                break;
                            }
                        }
                    }

                    // Forewarn
                    {
                        if ((sp->battlemon[client_no].ability_activated_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_FOREWARN)) {
                            sp->battlemon[client_no].ability_activated_flag = 1;
                            {
                                int num, pos;
                                u16 movenum;
                                u32 basepower = 0, basepower_temp = 0;
                                int hp;

                                for (num = 0; num < client_set_max; num++) {
                                    if ((IsClientEnemy(bw, client_no) != IsClientEnemy(bw, num)) && (sp->battlemon[num].hp)) {
                                        hp += sp->battlemon[num].hp;
                                        for (pos = 0; pos < 4; pos++) {
                                            movenum = sp->battlemon[num].move[pos];
                                            basepower = sp->moveTbl[movenum].power;
                                            switch (basepower)  // basically handle 1 base power moves
                                            {
                                                case 1:
                                                    switch (sp->moveTbl[movenum].effect) {
                                                        case MOVE_EFFECT_ONE_HIT_KO:  // one-hit ko
                                                            if ((basepower_temp < 150) || ((basepower_temp == 150) && (BattleRand(bw) & 1))) {
                                                                basepower_temp = 150;
                                                                sp->waza_work = movenum;
                                                            }
                                                            break;
                                                            // counter, mirror coat, metal burst
                                                        case MOVE_EFFECT_COUNTER:
                                                        case MOVE_EFFECT_MIRROR_COAT:
                                                        case MOVE_EFFECT_METAL_BURST:
                                                            if ((basepower_temp < 120) || ((basepower_temp == 120) && (BattleRand(bw) & 1))) {
                                                                basepower_temp = 120;
                                                                sp->waza_work = movenum;
                                                            }
                                                            break;
                                                        default:
                                                            if ((basepower_temp < 80) || ((basepower_temp == 80) && (BattleRand(bw) & 1))) {
                                                                basepower_temp = 80;
                                                                sp->waza_work = movenum;
                                                            }
                                                            break;
                                                    }
                                                    break;
                                                default:
                                                    if ((basepower_temp < basepower) || ((basepower_temp == basepower) && (BattleRand(bw) & 1))) {
                                                        basepower_temp = basepower;
                                                        sp->waza_work = movenum;
                                                    }
                                                    break;
                                            }
                                        }
                                    }
                                }

                                if (basepower_temp) {
                                    sp->battlerIdTemp = client_no;
                                    scriptnum = SUB_SEQ_HANDLE_FOREWARN;
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                } else if (hp) {
                                    num = ChooseRandomTarget(bw, sp, client_no);
                                    pos = CountBattlerMoves(bw, sp, num);
                                    sp->waza_work = sp->battlemon[num].move[BattleRand(bw) % pos];
                                    sp->battlerIdTemp = client_no;
                                    scriptnum = SUB_SEQ_HANDLE_FOREWARN;
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                }
                                break;
                            }
                        }
                    }

                    // Frisk
                    {
                        if ((sp->battlemon[client_no].ability_activated_flag == FALSE) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_FRISK)) {
                            if (BattleTypeGet(bw) & BATTLE_TYPE_DOUBLE) {
                                int def[2];

                                def[0] = BattleWorkEnemyClientGet(bw, client_no, BATTLER_POSITION_SIDE_RIGHT);
                                def[1] = BattleWorkEnemyClientGet(bw, client_no, BATTLER_POSITION_SIDE_LEFT);

                                if ((sp->battlemon[def[0]].hp) && (sp->battlemon[def[0]].item) && (sp->battlemon[def[1]].hp) && (sp->battlemon[def[1]].item) && sp->frisk_tracker == 0)  // if both mons are alive, check one randomly
                                {
                                    u32 client = def[BattleRand(bw) & 1];
                                    sp->item_work = sp->battlemon[client].item;
                                    sp->defence_client = client;
                                    sp->frisk_tracker |= No2Bit(client);
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                } else if ((sp->battlemon[def[0]].hp) && (sp->battlemon[def[0]].item) && (sp->frisk_tracker & No2Bit(def[0])) == 0) {
                                    sp->item_work = sp->battlemon[def[0]].item;
                                    sp->frisk_tracker |= No2Bit(def[0]);
                                    sp->defence_client = def[0];
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                } else if ((sp->battlemon[def[1]].hp) && (sp->battlemon[def[1]].item) && (sp->frisk_tracker & No2Bit(def[1])) == 0) {
                                    sp->item_work = sp->battlemon[def[1]].item;
                                    sp->frisk_tracker |= No2Bit(def[1]);
                                    sp->defence_client = def[1];
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                } else {
                                    sp->battlemon[client_no].ability_activated_flag = TRUE;
                                    sp->frisk_tracker = 0; // only reset frisk after everything
                                }
                            } else {
                                sp->battlemon[client_no].ability_activated_flag = TRUE;
                                sp->frisk_tracker = 0;
                                if ((sp->battlemon[client_no ^ 1].hp) && (sp->battlemon[client_no ^ 1].item))  // xor 1 will always result in opponent in single battle
                                {
                                    sp->item_work = sp->battlemon[client_no ^ 1].item;
                                    sp->defence_client = client_no ^ 1;
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                }
                            }
                        }
                        if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                            sp->battlerIdTemp = client_no;
                            scriptnum = SUB_SEQ_FRISK;
                            break;
                        }
                    }

                    // Slow Start
                    {
                        if ((sp->battlemon[client_no].slow_start_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_SLOW_START) && (sp->total_turn <= sp->battlemon[client_no].moveeffect.slowStartTurns)) {
                            sp->battlemon[client_no].slow_start_flag = 1;
                            sp->battlerIdTemp = client_no;
                            scriptnum = SUB_SEQ_HANDLE_SLOW_START;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }

                        // check slow start end as well
                        if ((sp->battlemon[client_no].slow_start_end_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_SLOW_START) && ((sp->total_turn - sp->battlemon[client_no].moveeffect.slowStartTurns) == 5)) {
                            sp->battlemon[client_no].slow_start_end_flag = 1;
                            sp->battlerIdTemp = client_no;
                            scriptnum = SUB_SEQ_HANDLE_SLOW_START_END;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Mold Breaker, Turboblaze, Teravolt
                    {
                        if ((sp->battlemon[client_no].ability_activated_flag == 0) && (sp->battlemon[client_no].hp) && ((GetBattlerAbility(sp, client_no) == ABILITY_MOLD_BREAKER) || (GetBattlerAbility(sp, client_no) == ABILITY_TURBOBLAZE) || (GetBattlerAbility(sp, client_no) == ABILITY_TERAVOLT))) {
                            sp->battlemon[client_no].ability_activated_flag = 1;
                            sp->battlerIdTemp = client_no;
                            if (GetBattlerAbility(sp, client_no) == ABILITY_MOLD_BREAKER) {
                                scriptnum = SUB_SEQ_MOLD_BREAKER;
                            } else if (GetBattlerAbility(sp, client_no) == ABILITY_TURBOBLAZE) {
                                scriptnum = SUB_SEQ_HANDLE_TURBOBLAZE_MESSAGE;
                            } else if (GetBattlerAbility(sp, client_no) == ABILITY_TERAVOLT) {
                                scriptnum = SUB_SEQ_HANDLE_TERAVOLT_MESSAGE;
                            }

                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Pressure
                    {
                        if ((sp->battlemon[client_no].ability_activated_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_PRESSURE)) {
                            sp->battlemon[client_no].ability_activated_flag = 1;
                            sp->battlerIdTemp = client_no;
                            scriptnum = SUB_SEQ_PRESSURE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Dark Aura
                    {
                        if ((sp->battlemon[client_no].ability_activated_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_DARK_AURA)) {
                            sp->battlemon[client_no].ability_activated_flag = 1;
                            sp->battlerIdTemp = client_no;
                            scriptnum = SUB_SEQ_HANDLE_DARK_AURA_MESSAGE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Fairy Aura
                    {
                        if ((sp->battlemon[client_no].ability_activated_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_FAIRY_AURA)) {
                            sp->battlemon[client_no].ability_activated_flag = 1;
                            sp->battlerIdTemp = client_no;
                            scriptnum = SUB_SEQ_HANDLE_FAIRY_AURA_MESSAGE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Aura Break
                    {
                        if ((sp->battlemon[client_no].ability_activated_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_AURA_BREAK)) {
                            sp->battlemon[client_no].ability_activated_flag = 1;
                            sp->battlerIdTemp = client_no;
                            scriptnum = SUB_SEQ_HANDLE_AURA_BREAK_MESSAGE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Imposter
                    {
                        if ((GetBattlerAbility(sp, client_no) == ABILITY_IMPOSTER) && (sp->battlemon[client_no].imposter_flag == 0)
                         && (sp->battlemon[client_no].hp)
                         && IsValidImposterTarget(bw, sp, client_no)
                         && ((!(BattleTypeGet(bw) & BATTLE_TYPE_TRAINER)) ? (sp->battlemon[client_no].species == SPECIES_DITTO || sp->battlemon[client_no].species == SPECIES_MEW) : TRUE)) {
                            u32 num;
                            sp->battlemon[client_no].imposter_flag = 1;
                            scriptnum = SUB_SEQ_HANDLE_IMPOSTER;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;

                            sp->attack_client = client_no;            // attack transforms into defence
                            sp->current_move_index = MOVE_TRANSFORM;  // force move anim to play

                            // fuck it get rid of transform script command:
                            sp->battlemon[sp->attack_client].condition2 |= STATUS2_TRANSFORMED;
                            sp->battlemon[sp->attack_client].moveeffect.disabledMove = 0;
                            sp->battlemon[sp->attack_client].moveeffect.disabledTurns = 0;
                            sp->battlemon[sp->attack_client].moveeffect.transformPid = sp->battlemon[sp->defence_client].personal_rnd;
                            sp->battlemon[sp->attack_client].moveeffect.transformGender = sp->battlemon[sp->defence_client].sex;
                            sp->battlemon[sp->attack_client].moveeffect.mimickedMoveIndex = 0;
                            sp->battlemon[sp->attack_client].moveeffect.lastResortCount = 0;

                            u8 *src, *dest;
                            src = (u8 *)&sp->battlemon[sp->attack_client];
                            dest = (u8 *)&sp->battlemon[sp->defence_client];

                            for (num = 0; num <= (int)0x26/*offsetof(struct BattlePokemon, ability)*/; num++) {
                                src[num] = dest[num];
                            }

                            sp->battlemon[sp->attack_client].ability_activated_flag = 0;
                            sp->battlemon[sp->attack_client].ability_activated_flag = 0;
                            sp->battlemon[sp->attack_client].moveeffect.truantFlag = sp->total_turn & 1;
                            sp->battlemon[sp->attack_client].moveeffect.slowStartTurns = sp->total_turn + 1;
                            sp->battlemon[sp->attack_client].slow_start_flag = 0;
                            sp->battlemon[sp->attack_client].slow_start_end_flag = 0;
                            ClearBattleMonFlags(sp, sp->attack_client);  // clear extra flags here too

                            for (num = 0; num < 4; num++) {
                                sp->battlemon[sp->attack_client].move[num] = sp->battlemon[sp->defence_client].move[num];
                                if (sp->moveTbl[sp->battlemon[sp->attack_client].move[num]].pp < 5) {
                                    sp->battlemon[sp->attack_client].pp[num] = sp->moveTbl[sp->battlemon[sp->attack_client].move[num]].pp;
                                } else {
                                    sp->battlemon[sp->attack_client].pp[num] = 5;
                                }
                            }
                            break;
                        }
                    }

                    // Surge Abilities
                    {
                        if (sp->battlemon[client_no].ability_activated_flag == 0 &&
                            (sp->battlemon[client_no].hp)) {
                            switch (GetBattlerAbility(sp, client_no)) {
                                case ABILITY_GRASSY_SURGE:
                                    sp->calc_work = sp->current_move_index;
                                    sp->current_move_index = MOVE_GRASSY_TERRAIN;  // need this for UpdateTerrainOverlay
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    break;
                                case ABILITY_MISTY_SURGE:
                                    sp->calc_work = sp->current_move_index;
                                    sp->current_move_index = MOVE_MISTY_TERRAIN;  // need this for UpdateTerrainOverlay
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    break;
                                case ABILITY_ELECTRIC_SURGE:
                                    sp->calc_work = sp->current_move_index;
                                    sp->current_move_index = MOVE_ELECTRIC_TERRAIN;  // need this for UpdateTerrainOverlay
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    break;
                                case ABILITY_PSYCHIC_SURGE:
                                    sp->calc_work = sp->current_move_index;
                                    sp->current_move_index = MOVE_PSYCHIC_TERRAIN;  // need this for UpdateTerrainOverlay
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    break;
                                default:
                                    break;
                            }

                            if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                                sp->battlemon[client_no].ability_activated_flag = 1;
                                sp->attack_client = client_no; // this should allow for the seeds to affect the terrain
                                scriptnum = SUB_SEQ_CREATE_TERRAIN_OVERLAY;
                                sp->addeffect_type = ADD_EFFECT_ABILITY; // need to restore the current move index after the animation has played
                                break;
                            }
                        }
                    }

                    // Intrepid Sword
                    {
                        if ((sp->onceOnlyAbilityFlags[SanitizeClientForTeamAccess(bw, client_no)][sp->sel_mons_no[client_no]].intrepidSwordFlag == FALSE)
                        && (sp->battlemon[client_no].hp)
                        && (GetBattlerAbility(sp, client_no) == ABILITY_INTREPID_SWORD)) {
                            sp->onceOnlyAbilityFlags[SanitizeClientForTeamAccess(bw, client_no)][sp->sel_mons_no[client_no]].intrepidSwordFlag = TRUE;
                            sp->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP;                        
                            sp->addeffect_type = ADD_STATUS_ABILITY;
                            sp->state_client = client_no;
                            scriptnum = SUB_SEQ_BOOST_STATS;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Dauntless Shield
                    {
                        if ((sp->onceOnlyAbilityFlags[SanitizeClientForTeamAccess(bw, client_no)][sp->sel_mons_no[client_no]].dauntlessShieldFlag == FALSE)
                        && (sp->battlemon[client_no].hp)
                        && (GetBattlerAbility(sp, client_no) == ABILITY_DAUNTLESS_SHIELD)) {
                            sp->onceOnlyAbilityFlags[SanitizeClientForTeamAccess(bw, client_no)][sp->sel_mons_no[client_no]].dauntlessShieldFlag = TRUE;
                            sp->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_DEFENSE_UP;                        
                            sp->addeffect_type = ADD_STATUS_ABILITY;
                            sp->state_client = client_no;
                            scriptnum = SUB_SEQ_BOOST_STATS;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // TODO:  was not sure where to add these
                    // Wind Power - charge the mon when tailwind activates/on switch in if tailwind is active
                    //     - post-move effect handled in MoveHitDefenderAbilityCheck
                    //     - ability_activated_flag is reset when tailwind runs out for these abilities in ServerFieldConditionCheck
                    {
                        if ((sp->battlemon[client_no].hp)
                        // tailwind is active -- should catch if tailwind was just used as well
                        && (sp->tailwindCount[IsClientEnemy(bw, client_no)] != 0)
                        && (GetBattlerAbility(sp, client_no) == ABILITY_WIND_POWER)
                        && (sp->battlemon[client_no].ability_activated_flag == 0))
                        {
                            sp->battlemon[client_no].ability_activated_flag = TRUE; // make sure to reset when clearing tailwind
                            sp->battlerIdTemp = client_no;
                            sp->waza_work = sp->current_move_index;
                            scriptnum = SUB_SEQ_HANDLE_CHARGE_BOOST;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // TODO:  was not sure where to add these
                    // Wind Rider - speed the mon up when tailwind activates/on switch in if tailwind is active
                    //     - ability_activated_flag is reset when tailwind runs out for these abilities in ServerFieldConditionCheck
                    {
                        if ((sp->battlemon[client_no].hp)
                        // tailwind is active -- should catch if tailwind was just used as well
                        && (sp->tailwindCount[IsClientEnemy(bw, client_no)] != 0)
                        && (GetBattlerAbility(sp, client_no) == ABILITY_WIND_RIDER)
                        && (sp->battlemon[client_no].ability_activated_flag == 0)) {
                            sp->battlemon[client_no].ability_activated_flag = TRUE; // make sure to reset when clearing tailwind
                            sp->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP;
                            sp->addeffect_type = ADD_STATUS_ABILITY;
                            sp->state_client = client_no;
                            sp->battlerIdTemp = client_no;
                            sp->current_move_index = MOVE_TAILWIND;
                            scriptnum = SUB_SEQ_BOOST_STATS;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Air Balloon is announced
                    // https://www.smogon.com/forums/threads/sword-shield-battle-mechanics-research.3655528/post-9227933
                    {
                        if ((sp->battlemon[client_no].air_balloon_flag == 0) && (sp->battlemon[client_no].hp) && (BattleItemDataGet(sp, sp->battlemon[client_no].item, 1) == HOLD_EFFECT_UNGROUND_DESTROYED_ON_HIT)) {
                            sp->battlemon[client_no].air_balloon_flag = 1;
                            sp->battlerIdTemp = client_no;
                            scriptnum = SUB_SEQ_HANDLE_AIR_BALLOON_MESSAGE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                        // https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-9905712
                        sp->battlemon[client_no].air_balloon_flag = 1;
                    }

                    // Need to trigger script
                    if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                        break;
                    }
                }

                if (i == client_set_max) {
                    sp->switch_in_check_seq_no++;
                }
            }
                break;
            case SWITCH_IN_CHECK_ENTRY_EFFECT_PRIMAL_REVERSION_SEEDS_SCHOOLING_SHIELDS_DOWN: {
                for (i = 0; i < client_set_max; i++) {
                    client_no = sp->turnOrder[i];

                    // Primal Reversion
                    {
#ifdef PRIMAL_REVERSION
                        if (CanUndergoPrimalReversion(sp, client_no)) {
                            BattleFormChange(client_no, 1, bw, sp, TRUE);
                            sp->battlemon[client_no].form_no = 1;
                            sp->battlerIdTemp = client_no;
                            scriptnum = SUB_SEQ_HANDLE_PRIMAL_REVERSION;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            sp->switch_in_check_seq_no = SWITCH_IN_CHECK_ENTRY_EFFECT_ABILITIES_AIR_BALLOON;
                            break;
                        }
#endif  // PRIMAL_REVERSION
                    }

                    // Terrain Seeds
                    {
                        u16 heldItem;

                        heldItem = GetBattleMonItem(sp, client_no);
                        if (IS_ITEM_TERRAIN_SEED(heldItem) && TerrainSeedShouldActivate(sp, heldItem)) {
                            sp->state_client = client_no;
                            scriptnum = SUB_SEQ_HANDLE_TERRAIN_SEEDS;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Room Service
                    {
                        u16 heldItem;

                        heldItem = GetBattleMonItem(sp, client_no);
                        if (heldItem == ITEM_ROOM_SERVICE && sp->field_condition & FIELD_STATUS_TRICK_ROOM) {
                            sp->state_client = client_no;
                            scriptnum = SUB_SEQ_HANDLE_ROOM_SERVICE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Schooling
                    {

                    }
                    // Shields Down
                    {

                    }

                    // Need to trigger script
                    if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                        break;
                    }
                }

                if (i == client_set_max) {
                    sp->switch_in_check_seq_no++;
                }
            }
                break;
            case SWITCH_IN_CHECK_ENTRY_EFFECT_WHITE_HERB_FLOWER_GIFT_FORECAST_ICE_FACE_COSTAR_COMMANDER_PROTOSYNTHESIS_QUARK_DRIVE_HOSPITALITY_EJECT_PACK: {
                for (i = 0; i < client_set_max; i++) {
                    client_no = sp->turnOrder[i];

                    // White Herb, etc
                    {
                        if (HeldItemHealCheck(bw, sp, client_no, &scriptnum) == TRUE) {
                            sp->battlerIdTemp = client_no;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Flower Gift, Forecast
                    {
                        sp->checkOnlySpecifiedTarget = TRUE;
                        sp->checkOnlySpecifiedTargetClient = client_no;
                        if (BattleFormChangeCheck(bw, sp, &scriptnum) == TRUE) {
                            sp->checkOnlySpecifiedTarget = FALSE;
                            sp->checkOnlySpecifiedTargetClient = 0;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                        sp->checkOnlySpecifiedTarget = FALSE;
                        sp->checkOnlySpecifiedTargetClient = 0;
                    }

                    // Ice Face
                    {
                        if ((sp->battlemon[client_no].species == SPECIES_EISCUE) && (sp->battlemon[client_no].hp) && (sp->battlemon[client_no].form_no == 1) && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0) && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0) && (sp->field_condition & WEATHER_HAIL_ANY)  // there is hail this turn
                            && ((sp->log_hail_for_ice_face & No2Bit(client_no)) == 0)                                                                                                                                                                                                                                                                                   // and hail wasn't here last turn/the mon just switched in
                            && (GetBattlerAbility(sp, client_no) == ABILITY_ICE_FACE)) {
                            sp->battlerIdTemp = client_no;
                            BattleFormChange(client_no, 0, bw, sp, TRUE);
                            sp->battlemon[client_no].form_no = 0;
                            scriptnum = SUB_SEQ_HANDLE_RESTORE_ICE_FACE;
                            ret = TRUE;
                        }

                        if (sp->field_condition & WEATHER_HAIL_ANY)  // update log_hail_for_ice_face
                            sp->log_hail_for_ice_face |= No2Bit(client_no);
                        else
                            sp->log_hail_for_ice_face &= ~No2Bit(client_no);

                        if (ret)
                            break;
                    }

                    // Costar
                    {
                        
                    }

                    // Commander
                    {

                    }

                    // Protosynthesis
                    {

                    }

                    // Quark Drive
                    {

                    }

                    // Hospitality
                    {

                    }

                    // Eject Pack
                    {

                    }

                    // Need to trigger script
                    if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                        break;
                    }
                }

                if (i == client_set_max) {
                    sp->switch_in_check_seq_no++;
                }
            }
                break;
            case SWITCH_IN_CHECK_ENTRY_EFFECT_OPPORTUNIST: {
                for (i = 0; i < client_set_max; i++) {
                    client_no = sp->turnOrder[i];

                    // Opportunist
                    {
                        
                    }

                    // Need to trigger script
                    if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                        break;
                    }
                }

                if (i == client_set_max) {
                    sp->switch_in_check_seq_no++;
                }
            }
                break;
            case SWITCH_IN_CHECK_AMULET_COIN:{
                for (i = 0; i < client_set_max; i++)
                {
                    client_no=sp->turnOrder[i];
                    if (BattleItemDataGet(sp, sp->battlemon[client_no].item, 1) == HOLD_EFFECT_MONEY_UP)
                    {
                        sp->money_multiplier = 2;
                    }
                }
                sp->switch_in_check_seq_no++;
            }
                break;
                // 02253CFC
            case SWITCH_IN_CHECK_ABILITY_HEAL_STATUS:{
                for (i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turnOrder[i];
                    if (AbilityStatusRecoverCheck(bw, sp, client_no, 1) == TRUE)
                    {
                        scriptnum = SUB_SEQ_ABILITY_RECOVER_CND;
                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                        break;
                    }
                }
                if (i == client_set_max)
                {
                    sp->switch_in_check_seq_no++;
                }
            }
                break;    
            case SWITCH_IN_CHECK_END:
                sp->switch_in_check_seq_no = 0;
                ret = SWITCH_IN_CHECK_CHECK_END;
                break;
        }
    } while (ret == SWITCH_IN_CHECK_LOOP);

    return scriptnum;
}

/**
 *  @brief see if the ability intimidate should activate depending on the abilities/stat stages it is up against
 *         assumption is that the client has already been checked for intimidate's presence; we don't need to here
 *
 *  @param sp global battle structure
 *  @param client battler to check if either opponent has an ability that doesn't negate intimidate
 *  @return TRUE if intimidate can get through either of the opponent's abilities; FALSE otherwise
 */
static BOOL IntimidateCheckHelper(struct BattleStruct *sp, u32 client)
{
    u32 clientCheck;
    for (int i = 0; i < 2; i++)
    {
        clientCheck = i ? BATTLER_ACROSS(client) : BATTLER_OPPONENT(client);
        if (sp->battlemon[clientCheck].hp
         && sp->battlemon[clientCheck].states[STAT_ATTACK] > 0)
        {
            u32 ability = GetBattlerAbility(sp, clientCheck);
            switch (ability)
            {
                // should maybe move these to the battle script like clear body
            case ABILITY_INNER_FOCUS:
            case ABILITY_SCRAPPY:
            case ABILITY_OBLIVIOUS:
            case ABILITY_OWN_TEMPO:
            case ABILITY_FULL_METAL_BODY:
                break;
            default: // intimidate can affect at least one opposing battler
                return TRUE;
            }
        }
    }
    return FALSE; // neither opposing battler has an ability that intimidate can activate on
}

/**
 *  @brief see if the ability imposter should activate depending on what it is up against
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param client battler to check if either opponent is a valid imposter target
 *  @return TRUE if imposter can target the client directly opposite the passed client; FALSE otherwise.  also sets attack_client and defence_client automatically
 */
static BOOL IsValidImposterTarget(void *bw, struct BattleStruct *sp, u32 client)
{
    // double battles need to use BATTLER_ACROSS to get the battler standing visibly across from it.  BATTLER_OPPONENT needs to be used otherwise
    u32 testClient = (BattleTypeGet(bw) & BATTLE_TYPE_DOUBLE) ? BATTLER_ACROSS(client) : BATTLER_OPPONENT(client);
    struct BattlePokemon *battleMon = &sp->battlemon[testClient];
    u32 keepTrack = 0;
    if (battleMon->hp != 0
    // can not copy another imposter
     && battleMon->ability != ABILITY_IMPOSTER
    // can not copy a disguised mon
     && !(gIllusionStruct.isSideInIllusion & No2Bit(SanitizeClientForTeamAccess(bw, testClient))
       && gIllusionStruct.illusionClient[SanitizeClientForTeamAccess(bw, testClient)] == testClient)
    // can not copy a substitute or transformed mon
     && ((battleMon->condition2 & (STATUS2_SUBSTITUTE | STATUS2_TRANSFORMED)) == 0))
    {
        keepTrack++;
        sp->defence_client = testClient;
    }

    //testClient = BATTLER_ACROSS(client);
    //battleMon = &sp->battlemon[testClient];
    //if (battleMon->hp != 0
    //// can not copy another imposter
    // && battleMon->ability != ABILITY_IMPOSTER
    //// can not copy a disguised mon
    // && !(gIllusionStruct.isSideInIllusion & No2Bit(SanitizeClientForTeamAccess(bw, testClient))
    //   && gIllusionStruct.illusionClient[SanitizeClientForTeamAccess(bw, testClient)] == testClient)
    //// can not copy a substitute or transformed mon
    // && ((battleMon->condition2 & (STATUS2_SUBSTITUTE | STATUS2_TRANSFORMED)) == 0))
    //{
    //    keepTrack++;
    //    sp->defence_client = testClient;
    //}

    // there is no handling for "randomly choose between both of the enemies"
    /*if (keepTrack >= 2)
    {
        // choose randomly between the two valid targets
        sp->defence_client = BattleRand(bw) & 1 ? BATTLER_OPPONENT(client) : BATTLER_ACROSS(client);
        sp->attack_client = client;
        return TRUE;
    } else */if (keepTrack == 1) {
        // sp-defence_client is already set by the individual checks above
        sp->attack_client = client;
        return TRUE;
    }

    return FALSE;
}
