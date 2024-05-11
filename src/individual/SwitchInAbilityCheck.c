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
                            newBS.weather = WEATHER_RAIN_PERMANENT;
                            break;
                        case WEATHER_SYS_SNOW:
                        case WEATHER_SYS_SNOWSTORM:
                            // case WEATHER_SYS_BLIZZARD:
                            scriptnum = SUB_SEQ_OVERWORLD_HAIL;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            newBS.weather = WEATHER_HAIL_PERMANENT;
                            break;
                        case WEATHER_SYS_SANDSTORM:
                            scriptnum = SUB_SEQ_OVERWORLD_SANDSTORM;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            newBS.weather = WEATHER_SANDSTORM_PERMANENT;
                            break;
                        case WEATHER_SYS_MIST1:
                        case WEATHER_SYS_MIST2:
                            scriptnum = SUB_SEQ_OVERWORLD_FOG;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            newBS.weather = FIELD_STATUS_FOG;
                            break;
                        case WEATHER_SYS_HIGH_SUN:
                            scriptnum = SUB_SEQ_OVERWORLD_SUN;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            newBS.weather = WEATHER_SUNNY_PERMANENT;
                            break;
                        case WEATHER_SYS_TRICK_ROOM:
                            scriptnum = SUB_SEQ_OVERWORLD_TRICK_ROOM;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            newBS.weather = 0;
                            break;
                    }
                    if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                        sp->weather_check_flag = 1;
                    }
                }
                sp->switch_in_check_seq_no++;
            }
                break;
            // https://bulbapedia.bulbagarden.net/wiki/User:FIQ/Turn_sequence
            case SWITCH_IN_CHECK_ENTRY_EFFECT: {
                for (i = 0; i < client_set_max; i++) {
                    client_no = sp->turnOrder[i];

                    // Neutralizing Gas
                    {

                    }

                    // Unnerve
                    {
                        if ((sp->battlemon[client_no].unnerve_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_UNNERVE)) {
                            sp->battlemon[client_no].unnerve_flag = 1;
                            sp->client_work = client_no;
                            scriptnum = SUB_SEQ_HANDLE_UNNERVE_MESSAGE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Heal from Healing Wish, Lunar Dance, Z-Memento, or Z-Parting Shot if applicable
                    {

                    }

                    // Entry hazards
                    {

                    }

                    // Abilities with entry effects can announce, except Neutralizing Gas/Unnerve (earlier) and form-changing abilities (later)

                    // Trace
                    {
                        int def1, def2;

                        def1 = BattleWorkEnemyClientGet(bw, client_no, BATTLER_POSITION_SIDE_RIGHT);
                        def2 = BattleWorkEnemyClientGet(bw, client_no, BATTLER_POSITION_SIDE_LEFT);

                        sp->defence_client_work = TraceClientGet(bw, sp, def1, def2);

                        if ((sp->battlemon[client_no].trace_flag == 0) && (sp->defence_client_work != 0xFF) && (sp->battlemon[client_no].hp) && (sp->battlemon[client_no].item != ITEM_GRISEOUS_ORB) && (sp->battlemon[sp->defence_client_work].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_TRACE)) {
                            sp->battlemon[client_no].trace_flag = 1;
                            sp->client_work = client_no;
                            scriptnum = SUB_SEQ_TRACE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Weather Ability
                    {
                        if (!(CanUndergoPrimalReversion(sp, client_no)) && (sp->battlemon[client_no].appear_check_flag == 0) && (sp->battlemon[client_no].hp)) {
                            switch (GetBattlerAbility(sp, client_no)) {
                                case ABILITY_DRIZZLE:
                                    sp->battlemon[client_no].appear_check_flag = 1;
                                    if ((sp->field_condition & WEATHER_RAIN_PERMANENT) == 0) {
                                        scriptnum = SUB_SEQ_DRIZZLE;
                                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                        newBS.weather = WEATHER_RAIN_PERMANENT;
                                    }
                                    break;
                                case ABILITY_SAND_STREAM:
                                    sp->battlemon[client_no].appear_check_flag = 1;
                                    if ((sp->field_condition & WEATHER_SANDSTORM_PERMANENT) == 0) {
                                        scriptnum = SUB_SEQ_SAND_STREAM;
                                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                        newBS.weather = WEATHER_SANDSTORM_PERMANENT;
                                    }
                                    break;
                                case ABILITY_DROUGHT:
                                    sp->battlemon[client_no].appear_check_flag = 1;
                                    if ((sp->field_condition & WEATHER_SUNNY_PERMANENT) == 0) {
                                        scriptnum = SUB_SEQ_DROUGHT;
                                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                        newBS.weather = WEATHER_SUNNY_PERMANENT;
                                    }
                                    break;
                                case ABILITY_SNOW_WARNING:
                                    sp->battlemon[client_no].appear_check_flag = 1;
                                    if ((sp->field_condition & WEATHER_HAIL_PERMANENT) == 0) {
                                        scriptnum = SUB_SEQ_SNOW_WARNING;
                                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                        newBS.weather = WEATHER_HAIL_PERMANENT;
                                    }
                                    break;
                            }
                        }
                        if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                            sp->client_work = client_no;
                            break;
                        }
                    }

                    // Intimidate
                    {
                        if ((sp->battlemon[client_no].intimidate_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_INTIMIDATE) && (IntimidateCheckHelper(sp, client_no))) {
                            sp->battlemon[client_no].intimidate_flag = 1;
                            sp->client_work = client_no;
                            scriptnum = SUB_SEQ_INTIMIDATE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Download
                    {
                        if ((sp->battlemon[client_no].download_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_DOWNLOAD)) {
                            {
                                int num;
                                int def = 0, spdef = 0;

                                for (num = 0; num < client_set_max; num++) {
                                    if ((IsClientEnemy(bw, client_no) != IsClientEnemy(bw, num)) && ((sp->battlemon[num].condition2 & STATUS2_SUBSTITUTE) == 0) && (sp->battlemon[num].hp)) {
                                        def += sp->battlemon[num].defense * StatBoostModifiers[sp->battlemon[num].states[STAT_DEFENSE]][0] / StatBoostModifiers[sp->battlemon[num].states[STAT_DEFENSE]][1];
                                        spdef += sp->battlemon[num].spdef * StatBoostModifiers[sp->battlemon[num].states[STAT_SPDEF]][0] / StatBoostModifiers[sp->battlemon[num].states[STAT_SPDEF]][1];
                                    }
                                }

                                sp->battlemon[client_no].download_flag = 1;

                                if ((def + spdef) != 0) {
                                    if (def >= spdef) {
                                        sp->addeffect_param = ADD_STAGE_SP_ATK_UP;
                                    } else {
                                        sp->addeffect_param = ADD_STAGE_ATTACK_UP;
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
                        if ((sp->battlemon[client_no].anticipation_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_ANTICIPATION)) {
                            sp->battlemon[client_no].anticipation_flag = 1;
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
                                    sp->client_work = client_no;
                                    scriptnum = SUB_SEQ_HANDLE_ANTICIPATION;
                                }
                                break;
                            }
                        }
                    }

                    // Forewarn
                    {
                        if ((sp->battlemon[client_no].forewarn_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_FOREWARN)) {
                            sp->battlemon[client_no].forewarn_flag = 1;
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
                                    sp->client_work = client_no;
                                    scriptnum = SUB_SEQ_HANDLE_FOREWARN;
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                } else if (hp) {
                                    num = ChooseRandomTarget(bw, sp, client_no);
                                    pos = CountBattlerMoves(bw, sp, num);
                                    sp->waza_work = sp->battlemon[num].move[BattleRand(bw) % pos];
                                    sp->client_work = client_no;
                                    scriptnum = SUB_SEQ_HANDLE_FOREWARN;
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                }
                                break;
                            }
                        }
                    }

                    // Frisk
                    {
                        if ((sp->battlemon[client_no].frisk_flag == FALSE) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_FRISK)) {
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
                                    sp->battlemon[client_no].frisk_flag = TRUE;
                                    sp->frisk_tracker = 0; // only reset frisk after everything
                                }
                            } else {
                                sp->battlemon[client_no].frisk_flag = TRUE;
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
                            sp->client_work = client_no;
                            scriptnum = SUB_SEQ_FRISK;
                            break;
                        }
                    }

                    // Slow Start
                    {
                        if ((sp->battlemon[client_no].slow_start_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_SLOW_START) && (sp->total_turn <= sp->battlemon[client_no].moveeffect.slowStartTurns)) {
                            sp->battlemon[client_no].slow_start_flag = 1;
                            sp->client_work = client_no;
                            scriptnum = SUB_SEQ_HANDLE_SLOW_START;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }

                        // check slow start end as well
                        if ((sp->battlemon[client_no].slow_start_end_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_SLOW_START) && ((sp->total_turn - sp->battlemon[client_no].moveeffect.slowStartTurns) == 5)) {
                            sp->battlemon[client_no].slow_start_end_flag = 1;
                            sp->client_work = client_no;
                            scriptnum = SUB_SEQ_HANDLE_SLOW_START_END;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Mold Breaker, Turboblaze, Teravolt
                    {
                        if ((sp->battlemon[client_no].mold_breaker_flag == 0) && (sp->battlemon[client_no].hp) && ((GetBattlerAbility(sp, client_no) == ABILITY_MOLD_BREAKER) || (GetBattlerAbility(sp, client_no) == ABILITY_TURBOBLAZE) || (GetBattlerAbility(sp, client_no) == ABILITY_TERAVOLT))) {
                            sp->battlemon[client_no].mold_breaker_flag = 1;
                            sp->client_work = client_no;
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
                        if ((sp->battlemon[client_no].pressure_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_PRESSURE)) {
                            sp->battlemon[client_no].pressure_flag = 1;
                            sp->client_work = client_no;
                            scriptnum = SUB_SEQ_PRESSURE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Dark Aura
                    {
                        if ((sp->battlemon[client_no].dark_aura_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_DARK_AURA)) {
                            sp->battlemon[client_no].dark_aura_flag = 1;
                            sp->client_work = client_no;
                            scriptnum = SUB_SEQ_HANDLE_DARK_AURA_MESSAGE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Fairy Aura
                    {
                        if ((sp->battlemon[client_no].fairy_aura_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_FAIRY_AURA)) {
                            sp->battlemon[client_no].fairy_aura_flag = 1;
                            sp->client_work = client_no;
                            scriptnum = SUB_SEQ_HANDLE_FAIRY_AURA_MESSAGE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Aura Break
                    {
                        if ((sp->battlemon[client_no].aura_break_flag == 0) && (sp->battlemon[client_no].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_AURA_BREAK)) {
                            sp->battlemon[client_no].aura_break_flag = 1;
                            sp->client_work = client_no;
                            scriptnum = SUB_SEQ_HANDLE_AURA_BREAK_MESSAGE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Imposter
                    {
                        if ((GetBattlerAbility(sp, client_no) == ABILITY_IMPOSTER) && (sp->battlemon[client_no].imposter_flag == 0)
                         && (sp->battlemon[client_no].hp) && (sp->battlemon[BATTLER_ACROSS(client_no)].hp != 0)
                         && IsValidImposterTarget(bw, sp, client_no)) {
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

                            for (num = 0; num <= (int)offsetof(struct BattlePokemon, ability); num++) {
                                src[num] = dest[num];
                            }

                            sp->battlemon[sp->attack_client].appear_check_flag = 0;
                            sp->battlemon[sp->attack_client].intimidate_flag = 0;
                            sp->battlemon[sp->attack_client].trace_flag = 0;
                            sp->battlemon[sp->attack_client].download_flag = 0;
                            sp->battlemon[sp->attack_client].anticipation_flag = 0;
                            sp->battlemon[sp->attack_client].forewarn_flag = 0;
                            sp->battlemon[sp->attack_client].frisk_flag = 0;
                            sp->battlemon[sp->attack_client].mold_breaker_flag = 0;
                            sp->battlemon[sp->attack_client].pressure_flag = 0;
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

                    // Air Balloon is announced, Berries/Berry Juice/White Herb/Mental Herb/terrain seeds can be consumed if applicable
                    {
                        if ((sp->battlemon[client_no].air_ballon_flag == 0) && (sp->battlemon[client_no].hp) && (BattleItemDataGet(sp, sp->battlemon[client_no].item, 1) == HOLD_EFFECT_UNGROUND_DESTROYED_ON_HIT)) {
                            sp->battlemon[client_no].air_ballon_flag = 1;
                            sp->client_work = client_no;
                            scriptnum = SUB_SEQ_HANDLE_AIR_BALLOON_MESSAGE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }

                    // Ice Face
                    {
                        if ((sp->battlemon[client_no].species == SPECIES_EISCUE) && (sp->battlemon[client_no].hp) && (sp->battlemon[client_no].form_no == 1) && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0) && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0) && (sp->field_condition & WEATHER_HAIL_ANY)  // there is hail this turn
                            && ((sp->log_hail_for_ice_face & No2Bit(client_no)) == 0)                                                                                                                                                                                                                                                                                   // and hail wasn't here last turn/the mon just switched in
                            && (GetBattlerAbility(sp, client_no) == ABILITY_ICE_FACE)) {
                            sp->client_work = client_no;
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

                    // Surge Abilities
                    {
                        if (sp->battlemon[client_no].ability_activated_flag == 0 &&
                            (sp->battlemon[client_no].hp)) {
                            switch (GetBattlerAbility(sp, client_no)) {
                                case ABILITY_GRASSY_SURGE:
                                    sp->current_move_index = MOVE_GRASSY_TERRAIN;  // force move anim to play
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    break;
                                case ABILITY_MISTY_SURGE:
                                    sp->current_move_index = MOVE_MISTY_TERRAIN;  // force move anim to play
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    break;
                                case ABILITY_ELECTRIC_SURGE:
                                    sp->current_move_index = MOVE_ELECTRIC_TERRAIN;  // force move anim to play
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    break;
                                case ABILITY_PSYCHIC_SURGE:
                                    sp->current_move_index = MOVE_PSYCHIC_TERRAIN;  // force move anim to play
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    break;

                                default:
                                    break;
                            }

                            if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                                sp->battlemon[client_no].ability_activated_flag = 1;
                                sp->attack_client = client_no;
                                scriptnum = SUB_SEQ_CREATE_TERRAIN_OVERLAY;
                                break;
                            }
                        }
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

                    // Forecast
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

                    // Primal Reversion
                    {
#ifdef PRIMAL_REVERSION
                        if (CanUndergoPrimalReversion(sp, client_no)) {
                            BattleFormChange(client_no, 1, bw, sp, TRUE);
                            sp->battlemon[client_no].form_no = 1;
                            sp->client_work = client_no;
                            scriptnum = SUB_SEQ_HANDLE_PRIMAL_REVERSION;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
#endif  // PRIMAL_REVERSION
                    }

                    // Need to trigger script
                    if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                        break;
                    }
                }

                if (i == client_set_max) {
                    sp->switch_in_check_seq_no++;
                }
            } break;
            case SWITCH_IN_CHECK_AMULET_COIN:{
                for (i = 0; i < client_set_max; i++)
                {
                    client_no=sp->turnOrder[i];
                    if (BattleItemDataGet(sp, sp->battlemon[client_no].item, 1) == HOLD_EFFECT_DOUBLE_MONEY_GAIN)
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
                // 02253D38
            case SWITCH_IN_CHECK_HEAL_STATUS:{
                for (i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turnOrder[i];
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
            }
                break;
            case SWITCH_IN_CHECK_FIELD: {
                if (sp->printed_field_message == 0) {
                    sp->terrainOverlay.type = TERRAIN_NONE;
                    sp->terrainOverlay.numberOfTurnsLeft = 0;
                    scriptnum = SUB_SEQ_HANDLE_FIELD_EFFECTS_INITIAL_MSG;
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;

                    if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                        sp->printed_field_message = 1;
                    }
                }
                sp->switch_in_check_seq_no++;
            }
                FALLTHROUGH;
            case SWITCH_IN_CHECK_END:
                sp->switch_in_check_seq_no = 0;
                ret = SWITCH_IN_CHECK_CHECK_END;
                break;
/**
            case SWITCH_IN_CHECK_AIR_BALLOON:{
                for(i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turnOrder[i];
                    if ((sp->battlemon[client_no].air_ballon_flag == 0)
                     && (sp->battlemon[client_no].hp)
                     && (BattleItemDataGet(sp, sp->battlemon[client_no].item, 1) == HOLD_EFFECT_UNGROUND_DESTROYED_ON_HIT))
                    {
                        sp->battlemon[client_no].air_ballon_flag = 1;
                        sp->client_work = client_no;
                        scriptnum = SUB_SEQ_HANDLE_AIR_BALLOON_MESSAGE;
                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                        break;
                    }
                }
                if (i == (s32)client_set_max) {
                    sp->switch_in_check_seq_no++;
                }
            }
                break;
                // 02253D78
            case SWITCH_IN_CHECK_FORECAST_AND_FORME_CHANGES:{
                if(BattleFormChangeCheck(bw, sp, &scriptnum) == TRUE)
                {
                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                }
                else
                {
                    sp->switch_in_check_seq_no++;
                }
            }
                break;
                // 02253CC2
            case SWITCH_IN_CHECK_PRIMAL_REVERSION: {
#ifdef PRIMAL_REVERSION
                for (i = 0; i < client_set_max; i++) {
                    client_no = sp->turnOrder[i];
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
                        BattleFormChange(client_no, 1, bw, sp, TRUE);
                        sp->battlemon[client_no].form_no = 1;
                        sp->client_work = client_no;
                        scriptnum = SUB_SEQ_HANDLE_PRIMAL_REVERSION;
                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                        break;
                    }
                }

                if (i == client_set_max)
#endif  // PRIMAL_REVERSION
                {
                    sp->switch_in_check_seq_no++;
                }
            }
                break;


            case SWITCH_IN_CHECK_TRACE:  // 02253274
            {
                {
                    int def1, def2;

                    for (i = 0; i < client_set_max; i++) {
                        client_no = sp->turnOrder[i];
                        def1 = BattleWorkEnemyClientGet(bw, client_no, BATTLER_POSITION_SIDE_RIGHT);
                        def2 = BattleWorkEnemyClientGet(bw, client_no, BATTLER_POSITION_SIDE_LEFT);

                        sp->defence_client_work = TraceClientGet(bw, sp, def1, def2);

                        if ((sp->battlemon[client_no].trace_flag == 0) && (sp->defence_client_work != 0xFF) && (sp->battlemon[client_no].hp) && (sp->battlemon[client_no].item != ITEM_GRISEOUS_ORB) && (sp->battlemon[sp->defence_client_work].hp) && (GetBattlerAbility(sp, client_no) == ABILITY_TRACE)) {
                            sp->battlemon[client_no].trace_flag = 1;
                            sp->client_work = client_no;
                            scriptnum = SUB_SEQ_TRACE;
                            ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            break;
                        }
                    }
                }
                if (i == client_set_max) {
                    sp->switch_in_check_seq_no++;
                }
            }
                break;
                // 02253338
            case SWITCH_IN_CHECK_WEATHER_ABILITY: {
                for (i = 0; i < client_set_max; i++) {
                    client_no = sp->turnOrder[i];
                    if ((sp->battlemon[client_no].appear_check_flag == 0) && (sp->battlemon[client_no].hp)) {
                        switch (GetBattlerAbility(sp, client_no)) {
                            case ABILITY_DRIZZLE:
                                sp->battlemon[client_no].appear_check_flag = 1;
                                if ((sp->field_condition & WEATHER_RAIN_PERMANENT) == 0) {
                                    scriptnum = SUB_SEQ_DRIZZLE;
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    newBS.weather = WEATHER_RAIN_PERMANENT;
                                }
                                break;
                            case ABILITY_SAND_STREAM:
                                sp->battlemon[client_no].appear_check_flag = 1;
                                if ((sp->field_condition & WEATHER_SANDSTORM_PERMANENT) == 0) {
                                    scriptnum = SUB_SEQ_SAND_STREAM;
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    newBS.weather = WEATHER_SANDSTORM_PERMANENT;
                                }
                                break;
                            case ABILITY_DROUGHT:
                                sp->battlemon[client_no].appear_check_flag = 1;
                                if ((sp->field_condition & WEATHER_SUNNY_PERMANENT) == 0) {
                                    scriptnum = SUB_SEQ_DROUGHT;
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    newBS.weather = WEATHER_SUNNY_PERMANENT;
                                }
                                break;
                            case ABILITY_SNOW_WARNING:
                                sp->battlemon[client_no].appear_check_flag = 1;
                                if ((sp->field_condition & WEATHER_HAIL_PERMANENT) == 0) {
                                    scriptnum = SUB_SEQ_SNOW_WARNING;
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    newBS.weather = WEATHER_HAIL_PERMANENT;
                                }
                                break;
                        }
                    }
                    if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                        sp->client_work = client_no;
                        break;
                    }
                }
                if (i == client_set_max) {
                    sp->switch_in_check_seq_no++;
                }
            }
                break;
                // 02253448
            case SWITCH_IN_CHECK_INTIMIDATE:{
                for (i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turnOrder[i];
                    if ((sp->battlemon[client_no].intimidate_flag == 0)
                        && (sp->battlemon[client_no].hp)
                        && (GetBattlerAbility(sp, client_no) == ABILITY_INTIMIDATE)
                        && (IntimidateCheckHelper(sp, client_no)))
                    {
                        sp->battlemon[client_no].intimidate_flag = 1;
                        sp->client_work = client_no;
                        scriptnum = SUB_SEQ_INTIMIDATE;
                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                        break;
                    }
                }
                if (i == client_set_max){
                    sp->switch_in_check_seq_no++;
                }
            }
                break;
                // 022534BE
            case SWITCH_IN_CHECK_DOWNLOAD:{
                for (i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turnOrder[i];
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
                                    && ((sp->battlemon[num].condition2 & STATUS2_SUBSTITUTE) == 0)
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
                                scriptnum = SUB_SEQ_BOOST_STATS;
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
            }
                break;
                // 02253624
            case SWITCH_IN_CHECK_ANTICIPATION:{
                for (i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turnOrder[i];
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
                                                    || ((sp->moveTbl[movenum].effect == MOVE_EFFECT_ONE_HIT_KO) // one-hit ko
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
            }
                break;
                // 02253764
            case SWITCH_IN_CHECK_FOREWARN:{
                for (i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turnOrder[i];
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
                                if ((IsClientEnemy(bw, client_no) != IsClientEnemy(bw, num)) && (sp->battlemon[num].hp))
                                {
                                    hp += sp->battlemon[num].hp;
                                    for(pos = 0; pos < 4; pos++)
                                    {
                                        movenum = sp->battlemon[num].move[pos];
                                        basepower = sp->moveTbl[movenum].power;
                                        switch (basepower) // basically handle 1 base power moves
                                        {
                                            case 1:
                                                switch(sp->moveTbl[movenum].effect)
                                                {
                                                    case MOVE_EFFECT_ONE_HIT_KO: // one-hit ko
                                                        if ((basepower_temp < 150)
                                                            || ((basepower_temp == 150) && (BattleRand(bw) & 1)))
                                                        {
                                                            basepower_temp = 150;
                                                            sp->waza_work = movenum;
                                                        }
                                                        break;
                                                        // counter, mirror coat, metal burst
                                                    case MOVE_EFFECT_COUNTER:
                                                    case MOVE_EFFECT_MIRROR_COAT:
                                                    case MOVE_EFFECT_METAL_BURST:
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
            }
                break;
                // 02253974
            case SWITCH_IN_CHECK_FRISK:{
                for (i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turnOrder[i];
                    if ((sp->battlemon[client_no].frisk_flag == FALSE)
                     && (sp->battlemon[client_no].hp)
                     && (GetBattlerAbility(sp, client_no) == ABILITY_FRISK))
                    {
                        if(BattleTypeGet(bw) & BATTLE_TYPE_DOUBLE)
                        {
                            int def[2];

                            def[0] = BattleWorkEnemyClientGet(bw, client_no, BATTLER_POSITION_SIDE_RIGHT);
                            def[1] = BattleWorkEnemyClientGet(bw, client_no, BATTLER_POSITION_SIDE_LEFT);

                            if ((sp->battlemon[def[0]].hp) && (sp->battlemon[def[0]].item)
                                && (sp->battlemon[def[1]].hp) && (sp->battlemon[def[1]].item)) // if both mons are alive, check one randomly
                            {
                                u32 client = def[BattleRand(bw) & 1];
                                sp->item_work = sp->battlemon[client].item;
                                sp->defence_client = client;
                                sp->frisk_tracker |= No2Bit(client);
                                ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            }
                            else if ((sp->battlemon[def[0]].hp) && (sp->battlemon[def[0]].item))
                            {
                                sp->item_work = sp->battlemon[def[0]].item;
                                sp->frisk_tracker |= No2Bit(def[0]);
                                sp->defence_client = def[0];
                                ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            }
                            else if ((sp->battlemon[def[1]].hp) && (sp->battlemon[def[1]].item))
                            {
                                sp->item_work = sp->battlemon[def[1]].item;
                                sp->frisk_tracker |= No2Bit(def[1]);
                                sp->defence_client = def[1];
                                ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            }

                            if (sp->frisk_tracker & No2Bit(def[0]) && sp->frisk_tracker & No2Bit(def[1])) // finally set frisk flag to true
                            {
                                sp->battlemon[client_no].frisk_flag = TRUE;
                                sp->frisk_tracker = 0;
                            }
                        }
                        else
                        {
                            sp->battlemon[client_no].frisk_flag = TRUE;
                            if ((sp->battlemon[client_no^1].hp) && (sp->battlemon[client_no^1].item)) // xor 1 will always result in opponent in single battle
                            {
                                sp->item_work = sp->battlemon[client_no^1].item;
                                sp->defence_client = client_no^1;
                                ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                            }
                        }
                    }
                    if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT)
                    {
                        sp->client_work = client_no;
                        scriptnum = SUB_SEQ_FRISK;
                        break;
                    }
                }
                if (i == client_set_max)
                {
                    sp->switch_in_check_seq_no++;
                }
            }
                break;
                // 02253ACC
            case SWITCH_IN_CHECK_SLOW_START:{
                for (i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turnOrder[i];
                    if ((sp->battlemon[client_no].slow_start_flag == 0)
                        && (sp->battlemon[client_no].hp)
                        && (GetBattlerAbility(sp, client_no) == ABILITY_SLOW_START)
                        && (sp->total_turn <= sp->battlemon[client_no].moveeffect.slowStartTurns))
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
                        && ((sp->total_turn-sp->battlemon[client_no].moveeffect.slowStartTurns) == 5))
                    {
                        sp->battlemon[client_no].slow_start_end_flag = 1;
                        sp->client_work = client_no;
                        scriptnum = SUB_SEQ_HANDLE_SLOW_START_END;
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
                // 02253BA4
            case SWITCH_IN_CHECK_MOLD_BREAKER:{
                for (i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turnOrder[i];
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
                            scriptnum = SUB_SEQ_MOLD_BREAKER;
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
            }
                break;
                // 02253C18
            case SWITCH_IN_CHECK_PRESSURE:{
                for(i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turnOrder[i];
                    if ((sp->battlemon[client_no].pressure_flag == 0)
                        && (sp->battlemon[client_no].hp)
                        && (GetBattlerAbility(sp, client_no) == ABILITY_PRESSURE))
                    {
                        sp->battlemon[client_no].pressure_flag = 1;
                        sp->client_work = client_no;
                        scriptnum = SUB_SEQ_PRESSURE;
                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                        break;
                    }
                }
                if(i == client_set_max){
                    sp->switch_in_check_seq_no++;
                }
            }
                break;
                // 02253CA6



            case SWITCH_IN_CHECK_DARK_AURA:{
                for(i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turnOrder[i];
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
            }
                break;
            case SWITCH_IN_CHECK_FAIRY_AURA:{
                for(i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turnOrder[i];
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
            }
                break;
            case SWITCH_IN_CHECK_AURA_BREAK:{
                for(i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turnOrder[i];
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
            }
                break;
            case SWITCH_IN_CHECK_IMPOSTER: // automatically queue up transform
            {
                for(i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turnOrder[i];
                    if ((sp->battlemon[client_no].imposter_flag == 0)
                        && (sp->battlemon[client_no].hp)
                        && (sp->battlemon[BATTLER_OPPONENT(client_no)].hp != 0 || sp->battlemon[BATTLER_ACROSS(client_no)].hp != 0)
                        && (GetBattlerAbility(sp, client_no) == ABILITY_IMPOSTER)
                        && IsValidImposterTarget(bw, sp, client_no))
                    {
                        sp->battlemon[client_no].imposter_flag = 1;
                        scriptnum = SUB_SEQ_HANDLE_IMPOSTER;
                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                        break;
                    }
                }

                if (i == client_set_max) // went all the way through the loop
                {
                    sp->switch_in_check_seq_no++;
                    break;
                }

                sp->attack_client = client_no; // attack transforms into defence
                sp->current_move_index = MOVE_TRANSFORM; // force move anim to play

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

                for (i = 0; i <= (int)offsetof(struct BattlePokemon, ability); i++)
                {
                    src[i] = dest[i];
                }

                sp->battlemon[sp->attack_client].appear_check_flag = 0;
                sp->battlemon[sp->attack_client].intimidate_flag = 0;
                sp->battlemon[sp->attack_client].trace_flag = 0;
                sp->battlemon[sp->attack_client].download_flag = 0;
                sp->battlemon[sp->attack_client].anticipation_flag = 0;
                sp->battlemon[sp->attack_client].forewarn_flag = 0;
                sp->battlemon[sp->attack_client].frisk_flag = 0;
                sp->battlemon[sp->attack_client].mold_breaker_flag = 0;
                sp->battlemon[sp->attack_client].pressure_flag = 0;
                sp->battlemon[sp->attack_client].moveeffect.truantFlag = sp->total_turn & 1;
                sp->battlemon[sp->attack_client].moveeffect.slowStartTurns = sp->total_turn + 1;
                sp->battlemon[sp->attack_client].slow_start_flag = 0;
                sp->battlemon[sp->attack_client].slow_start_end_flag = 0;
                ClearBattleMonFlags(sp, sp->attack_client); // clear extra flags here too

                for(i = 0; i < 4; i++)
                {
                    sp->battlemon[sp->attack_client].move[i] = sp->battlemon[sp->defence_client].move[i];
                    if(sp->moveTbl[sp->battlemon[sp->attack_client].move[i]].pp < 5)
                    {
                        sp->battlemon[sp->attack_client].pp[i] = sp->moveTbl[sp->battlemon[sp->attack_client].move[i]].pp;
                    }
                    else
                    {
                        sp->battlemon[sp->attack_client].pp[i] = 5;
                    }
                }
            }
                break;
            case SWITCH_IN_CHECK_ICE_FACE: // rebuild ice face
            {
                for (i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turnOrder[i];
                    if ((sp->battlemon[client_no].species == SPECIES_EISCUE)
                     && (sp->battlemon[client_no].hp)
                     && (sp->battlemon[client_no].form_no == 1)
                     && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0)
                     && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0)
                     && (sp->field_condition & (WEATHER_HAIL_ANY | WEATHER_SNOW_ANY))               // there is hail this turn
                     && ((sp->log_hail_for_ice_face & (1 << client_no)) == 0)  // and hail wasn't here last turn/the mon just switched in
                     && (GetBattlerAbility(sp, client_no) == ABILITY_ICE_FACE)
                    )
                    {
                        sp->client_work = client_no;
                        BattleFormChange(client_no, 0, bw, sp, TRUE);
                        sp->battlemon[client_no].form_no = 0;
                        scriptnum = SUB_SEQ_HANDLE_RESTORE_ICE_FACE;
                        ret = TRUE;
                    }

                    if (sp->field_condition & (WEATHER_HAIL_ANY | WEATHER_SNOW_ANY)) // update log_hail_for_ice_face
                        sp->log_hail_for_ice_face |= (1 << client_no);
                    else
                        sp->log_hail_for_ice_face &= ~(1 << client_no);

                    if (ret)
                        break;
                }
                if (i == client_set_max) {
                    sp->switch_in_check_seq_no++;
                }
            }
                break;
            case SWITCH_IN_CHECK_SURGE_ABILITY: {
                for (i = 0; i < client_set_max; i++) {
                    client_no = sp->turnOrder[i];
                    if (sp->battlemon[client_no].ability_activated_flag == 0 &&
                        (sp->battlemon[client_no].hp)) {
                        switch (GetBattlerAbility(sp, client_no)) {
                            case ABILITY_GRASSY_SURGE:
                                sp->current_move_index = MOVE_GRASSY_TERRAIN;  // force move anim to play
                                ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                break;
                            case ABILITY_MISTY_SURGE:
                                sp->current_move_index = MOVE_MISTY_TERRAIN;  // force move anim to play
                                ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                break;
                            case ABILITY_ELECTRIC_SURGE:
                                sp->current_move_index = MOVE_ELECTRIC_TERRAIN;  // force move anim to play
                                ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                break;
                            case ABILITY_PSYCHIC_SURGE:
                                sp->current_move_index = MOVE_PSYCHIC_TERRAIN;  // force move anim to play
                                ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                break;

                            default:
                                break;
                        }

                        if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT) {
                            sp->battlemon[client_no].ability_activated_flag = 1;
                            sp->attack_client = client_no;
                            scriptnum = SUB_SEQ_CREATE_TERRAIN_OVERLAY;
                            break;
                        }
                    }
                }
                if (i == (s32)client_set_max) {
                    sp->switch_in_check_seq_no++;
                }
            }
                break;
            case SWITCH_IN_CHECK_TERRAIN_SEED:{;
                u16 heldItem;
                for (i = 0; i < client_set_max; i++) {
                    client_no = sp->turnOrder[i];
                    heldItem = GetBattleMonItem(sp, client_no);
                    if (IS_ITEM_TERRAIN_SEED(heldItem) && TerrainSeedShouldActivate(sp, heldItem)) {
                        sp->state_client = client_no;
                        scriptnum = SUB_SEQ_HANDLE_TERRAIN_SEEDS;
                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                        break;
                    }
                }
                if (i == (s32)client_set_max) {
                    sp->switch_in_check_seq_no++;
                }
            }
                FALLTHROUGH;
**/
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
    u32 testClient = BATTLER_ACROSS(client);
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
