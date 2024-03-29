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



// function declarations from this file
int MoveCheckDamageNegatingAbilities(struct BattleStruct *sp, int attacker, int defender);
BOOL IntimidateCheckHelper(struct BattleStruct *sp, u32 client);
int SwitchInAbilityCheck(void *bw, struct BattleStruct *sp);
BOOL AreAnyStatsNotAtValue(struct BattleStruct *sp, int client, int value);
u32 TurnEndAbilityCheck(void *bw, struct BattleStruct *sp, int client_no);
BOOL MummyAbilityCheck(struct BattleStruct *sp);
BOOL CanPickpocketStealClientItem(struct BattleStruct *sp, int client_no);
u8 BeastBoostGreatestStatHelper(struct BattleStruct *sp, u32 client);
BOOL MoveHitAttackerAbilityCheck(void *bw, struct BattleStruct *sp, int *seq_no);
//BOOL MoveHitDefenderAbilityCheck(void *bw, struct BattleStruct *sp, int *seq_no);
//u32 MoldBreakerAbilityCheck(struct BattleStruct *sp, int attacker, int defender, int ability);
BOOL SynchroniseAbilityCheck(void *bw, struct BattleStruct *sp, int server_seq_no);
BOOL ServerFlinchCheck(void *bw, struct BattleStruct *sp);
void ServerWazaOutAfterMessage(void *bw, struct BattleStruct *sp);
//u32 ServerWazaKoyuuCheck(void *bw, struct BattleStruct *sp);
void ServerDoPostMoveEffects(void *bw, struct BattleStruct *sp);



extern const u8 StatBoostModifiers[][2];

const u16 SoundproofMoveList[] =
{
    MOVE_BOOMBURST,
    MOVE_BUG_BUZZ,
    MOVE_CHATTER,
    MOVE_CLANGING_SCALES,
    MOVE_CLANGOROUS_SOUL,
    //MOVE_CLANGOROUS_SOULBLAZE,
    MOVE_CONFIDE,
    MOVE_DISARMING_VOICE,
    MOVE_ECHOED_VOICE,
    MOVE_EERIE_SPELL,
    MOVE_GRASS_WHISTLE,
    MOVE_GROWL,
    //MOVE_HEAL_BELL,
    //MOVE_HOWL,
    MOVE_HYPER_VOICE,
    MOVE_METAL_SOUND,
    MOVE_NOBLE_ROAR,
    MOVE_OVERDRIVE,
    MOVE_PARTING_SHOT,
    MOVE_PERISH_SONG,
    MOVE_RELIC_SONG,
    MOVE_ROAR,
    MOVE_ROUND,
    MOVE_SCREECH,
    //MOVE_SHADOW_PANIC,
    MOVE_SING,
    MOVE_SNARL,
    MOVE_SNORE,
    MOVE_SPARKLING_ARIA,
    MOVE_SUPERSONIC,
    MOVE_UPROAR,
};

const u16 BulletproofMoveList[] =
{
    MOVE_ACID_SPRAY,
    MOVE_AURA_SPHERE,
    MOVE_BARRAGE,
    MOVE_BULLET_SEED,
    MOVE_EGG_BOMB,
    MOVE_ELECTRO_BALL,
    MOVE_ENERGY_BALL,
    MOVE_FOCUS_BLAST,
    MOVE_GYRO_BALL,
    MOVE_ICE_BALL,
    MOVE_MAGNET_BOMB,
    MOVE_MIST_BALL,
    MOVE_MUD_BOMB,
    MOVE_OCTAZOOKA,
    MOVE_POLLEN_PUFF,
    MOVE_PYRO_BALL,
    MOVE_ROCK_BLAST,
    MOVE_ROCK_WRECKER,
    MOVE_SEARING_SHOT,
    MOVE_SEED_BOMB,
    MOVE_SHADOW_BALL,
    MOVE_SLUDGE_BOMB,
    MOVE_WEATHER_BALL,
    MOVE_ZAP_CANNON,
};

const u16 PowderMoveList[] = {
    MOVE_COTTON_SPORE,
    MOVE_MAGIC_POWDER,
    MOVE_POISON_POWDER,
    MOVE_POWDER,
    MOVE_RAGE_POWDER,
    MOVE_SLEEP_POWDER,
    MOVE_STUN_SPORE,
    MOVE_SPORE,
};

/**
 *  @brief see if the attacker's move is completely negated by the defender's ability and queue up the appropriate subscript
 *
 *  @param sp global battle structure
 *  @param attacker battler whose move to check
 *  @param defender battler whose ability to check
 *  @return subscript to run if the ability negates the move; else 0
 */
int MoveCheckDamageNegatingAbilities(struct BattleStruct *sp, int attacker, int defender)
{
    int scriptnum = 0;
    int movetype;

    // trigger meloetta's relic song form transformation if possible
    if ((sp->battlemon[attacker].species == SPECIES_MELOETTA)
     && (sp->battlemon[attacker].hp)
     && !(sp->waza_status_flag & MOVE_STATUS_FLAG_FAILED)
     && (sp->battlemon[attacker].form_no < 2))
    {
        sp->relic_song_tracker |= No2Bit(attacker);
    }

    movetype = GetAdjustedMoveType(sp, attacker, sp->current_move_index); // new normalize checks

    // 02252EF4
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_VOLT_ABSORB) == TRUE)
    {
        if ((movetype == TYPE_ELECTRIC) && (attacker != defender))
        {
            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[defender].maxhp, 4);
            scriptnum = SUB_SEQ_ABILITY_HP_RESTORE;
        }
    }

    // 02252F24
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_WATER_ABSORB) == TRUE)
    {
        if ((movetype == TYPE_WATER) && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0) && (sp->moveTbl[sp->current_move_index].power))
        {
            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[defender].maxhp, 4);
            scriptnum = SUB_SEQ_ABILITY_HP_RESTORE;
        }
    }

    // 02252F6A
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_FLASH_FIRE) == TRUE)
    {
        if ((movetype == TYPE_FIRE)
         //&& ((sp->battlemon[defender].condition & STATUS_FLAG_FROZEN) == 0) // gen 5 does not prevent flash fire from working
         && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
         && ((sp->moveTbl[sp->current_move_index].power) || (sp->current_move_index == MOVE_WILL_O_WISP)))
        {
            scriptnum = SUB_SEQ_FLASH_FIRE;
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
                    scriptnum = SUB_SEQ_SOUNDPROOF;
                    break;
                }
            }
        }
    }

    // Handle Bulletproof
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_BULLETPROOF) == TRUE)
    {
        {
            u32 i;

            for (i = 0; i < NELEMS(BulletproofMoveList); i++){
                if (BulletproofMoveList[i] == sp->current_move_index)
                {
                    // This works fine for Bulletproof too
                    scriptnum = SUB_SEQ_SOUNDPROOF;
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
            scriptnum = SUB_SEQ_MOTOR_DRIVE;
        }
    }

    // 02252FF8
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_DRY_SKIN) == TRUE)
    {
        if ((movetype == TYPE_WATER)
         && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
         && (sp->moveTbl[sp->current_move_index].power))
        {
            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[defender].maxhp, 4);
            scriptnum = SUB_SEQ_ABILITY_HP_RESTORE;
        }
    }

    // handle sap sipper
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_SAP_SIPPER) == TRUE)
    {
        if ((movetype == TYPE_GRASS) && (attacker != defender))
        {
            scriptnum = SUB_SEQ_HANDLE_SAP_SIPPER;
        }
    }

    // handle lightning rod
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_LIGHTNING_ROD) == TRUE)
    {
        if ((movetype == TYPE_ELECTRIC) && (attacker != defender))
        {
            scriptnum = SUB_SEQ_HANDLE_LIGHTNING_ROD_RAISE_SPATK;
        }
    }

    // handle storm drain
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_STORM_DRAIN) == TRUE)
    {
        if ((movetype == TYPE_WATER) && (attacker != defender))
        {
            scriptnum = SUB_SEQ_HANDLE_LIGHTNING_ROD_RAISE_SPATK;
        }
    }

    // Handle Psychic Terrain
    // Block any natural priority move or a move made priority by an ability, if the terrain is Psychic Terrain
    // Courtesy of Dray (https://github.com/Drayano60)
    if (sp->terrainOverlay.type == PSYCHIC_TERRAIN && sp->terrainOverlay.numberOfTurnsLeft > 0 && IsClientGrounded(sp, defender)) {
        if (adjustedMoveHasPositivePriority(sp, attacker) && CurrentMoveShouldNotBeExemptedFromPriorityBlocking(sp, attacker, defender)) {
            scriptnum = SUB_SEQ_HANDLE_JUST_FAIL;
        }
    }

    return scriptnum;
}



enum
{
    SWITCH_IN_CHECK_WEATHER = 0,
    SWITCH_IN_CHECK_PRIMAL_REVERSION,
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
    SWITCH_IN_CHECK_IMPOSTER,
    SWITCH_IN_CHECK_ICE_FACE,

// items that display messages.
    SWITCH_IN_CHECK_AIR_BALLOON,
    SWITCH_IN_CHECK_FIELD,
    SWITCH_IN_CHECK_SURGE_ABILITY,
    SWITCH_IN_CHECK_TERRAIN_SEED,
    SWITCH_IN_CHECK_END,
};

enum
{
    SWITCH_IN_CHECK_LOOP = 0,
    SWITCH_IN_CHECK_MOVE_SCRIPT,
    SWITCH_IN_CHECK_CHECK_END,
};

/**
 *  @brief see if the ability intimidate should activate depending on the abilities/stat stages it is up against
 *         assumption is that the client has already been checked for intimidate's presence; we don't need to here
 *
 *  @param sp global battle structure
 *  @param client battler to check if either opponent has an ability that doesn't negate intimidate
 *  @return TRUE if intimidate can get through either of the opponent's abilities; FALSE otherwise
 */
BOOL IntimidateCheckHelper(struct BattleStruct *sp, u32 client)
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
 *  @brief this function is basically run whenever it can (i.e. if a battler suddenly gains Mold Breaker), but it's easiest to think of it as on switch in.
 *         various items were introduced that should also happen ASAP, particularly the air balloon message.
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @return script subseq to run if there's one that should be run; 0 if nothing should be run
 */
int SwitchInAbilityCheck(void *bw, struct BattleStruct *sp)
{
    // Sort clients because abilities may affect speed
    DynamicSortClientExecutionOrder(bw, sp);
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
                            newBS.weather = WEATHER_RAIN_PERMANENT;
                            break;
                        case WEATHER_SYS_SNOW:
                        case WEATHER_SYS_SNOWSTORM:
                        //case WEATHER_SYS_BLIZZARD:
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
                    if (ret == SWITCH_IN_CHECK_MOVE_SCRIPT)
                    {
                        sp->weather_check_flag = 1;
                    }
                }
                sp->switch_in_check_seq_no++;
                break;
            case SWITCH_IN_CHECK_PRIMAL_REVERSION:
#ifdef PRIMAL_REVERSION
                for (i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turn_order[i];
                    if (((sp->battlemon[client_no].species == SPECIES_KYOGRE
                       #ifdef DEBUG_PRIMAL_REVERSION
                       && GetBattleMonItem(sp, client_no) == ITEM_DREAM_BALL
                       #else
                       && GetBattleMonItem(sp, client_no) == ITEM_BLUE_ORB
                       #endif
                       )
                      || (sp->battlemon[client_no].species == SPECIES_GROUDON
                       #ifdef DEBUG_PRIMAL_REVERSION
                       && GetBattleMonItem(sp, client_no) == ITEM_DREAM_BALL
                       #else
                       && GetBattleMonItem(sp, client_no) == ITEM_RED_ORB
                       #endif
                         ))
                     && sp->battlemon[client_no].hp != 0
                     && sp->battlemon[client_no].form_no == 0)
                    {
                        BattleFormChange(client_no, 1, bw, sp, TRUE);
                        sp->battlemon[client_no].form_no = 1;
                        sp->client_work = client_no;
                        scriptnum = SUB_SEQ_HANDLE_PRIMAL_REVERSION;
                        ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                        break;
                    }
                }

                if (i == client_set_max)
#endif // PRIMAL_REVERSION
                {
                    sp->switch_in_check_seq_no++;
                }
                break;
            case SWITCH_IN_CHECK_TRACE: // 02253274
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
                        scriptnum = SUB_SEQ_TRACE;
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
                                    scriptnum = SUB_SEQ_DRIZZLE;
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    newBS.weather = WEATHER_RAIN_PERMANENT;
                                }
                                break;
                            case ABILITY_SAND_STREAM:
                                sp->battlemon[client_no].appear_check_flag = 1;
                                if ((sp->field_condition & WEATHER_SANDSTORM_PERMANENT) == 0)
                                {
                                    scriptnum = SUB_SEQ_SAND_STREAM;
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    newBS.weather = WEATHER_SANDSTORM_PERMANENT;
                                }
                                break;
                            case ABILITY_DROUGHT:
                                sp->battlemon[client_no].appear_check_flag = 1;
                                if ((sp->field_condition & WEATHER_SUNNY_PERMANENT) == 0)
                                {
                                    scriptnum = SUB_SEQ_DROUGHT;
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    newBS.weather = WEATHER_SUNNY_PERMANENT;
                                }
                                break;
                            case ABILITY_SNOW_WARNING:
                                sp->battlemon[client_no].appear_check_flag = 1;
                                if ((sp->field_condition & WEATHER_HAIL_PERMANENT) == 0)
                                {
                                    scriptnum = SUB_SEQ_SNOW_WARNING;
                                    ret = SWITCH_IN_CHECK_MOVE_SCRIPT;
                                    newBS.weather = WEATHER_HAIL_PERMANENT;
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
                break;
                // 02253974
            case SWITCH_IN_CHECK_FRISK:
                for (i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turn_order[i];
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
                break;
                // 02253ACC
            case SWITCH_IN_CHECK_SLOW_START:
                for (i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turn_order[i];
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
                        scriptnum = SUB_SEQ_PRESSURE;
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
                        scriptnum = SUB_SEQ_ABILITY_RECOVER_CND;
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
            case SWITCH_IN_CHECK_IMPOSTER: // automatically queue up transform
                for(i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turn_order[i];
                    if ((sp->battlemon[client_no].imposter_flag == 0)
                        && (sp->battlemon[client_no].hp)
                        && (sp->battlemon[BATTLER_OPPONENT(client_no)].hp != 0 || sp->battlemon[BATTLER_ACROSS(client_no)].hp != 0)
                        && (GetBattlerAbility(sp, client_no) == ABILITY_IMPOSTER))
                    {
                        sp->battlemon[client_no].imposter_flag = 1;
                        sp->client_work = client_no;
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
                if (sp->battlemon[BATTLER_OPPONENT(client_no)].hp != 0 && sp->battlemon[BATTLER_ACROSS(client_no)].hp != 0)
                {
                    sp->defence_client = (client_no & 1) + ((BattleRand(bw) & 1) * 2); // get random defender
                }
                else if (sp->battlemon[BATTLER_ACROSS(client_no)].hp != 0)
                {
                    sp->defence_client = BATTLER_ACROSS(client_no);
                }
                else //if (sp->battlemon[BATTLER_OPPONENT(client_no)].hp != 0)
                {
                    sp->defence_client = BATTLER_OPPONENT(client_no);
                }

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
                break;
            case SWITCH_IN_CHECK_ICE_FACE: // rebuild ice face
                for (i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turn_order[i];
                    if ((sp->battlemon[client_no].species == SPECIES_EISCUE)
                     && (sp->battlemon[client_no].hp)
                     && (sp->battlemon[client_no].form_no == 1)
                     && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0)
                     && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0)
                     && (sp->field_condition & WEATHER_HAIL_ANY)               // there is hail this turn
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

                    if (sp->field_condition & WEATHER_HAIL_ANY) // update log_hail_for_ice_face
                        sp->log_hail_for_ice_face |= (1 << client_no);
                    else
                        sp->log_hail_for_ice_face &= ~(1 << client_no);

                    if (ret)
                        break;
                }
                if (i == client_set_max) {
                    sp->switch_in_check_seq_no++;
                }
                break;



            case SWITCH_IN_CHECK_AIR_BALLOON:
                for(i = 0; i < client_set_max; i++)
                {
                    client_no = sp->turn_order[i];
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
                break;
                // 02253D78
            case SWITCH_IN_CHECK_FIELD:
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
                break;
            case SWITCH_IN_CHECK_SURGE_ABILITY:
                for (i = 0; i < client_set_max; i++) {
                    client_no = sp->turn_order[i];
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
                break;
            case SWITCH_IN_CHECK_TERRAIN_SEED:;
                u16 heldItem;
                for (i = 0; i < client_set_max; i++) {
                    client_no = sp->turn_order[i];
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
                FALLTHROUGH;
            case SWITCH_IN_CHECK_END:
                sp->switch_in_check_seq_no = 0;
                ret = SWITCH_IN_CHECK_CHECK_END;
                break;
        }
    } while (ret == SWITCH_IN_CHECK_LOOP);

    return scriptnum;
}

/**
 *  @brief check if any specific stat stage is not at the passed value
 *
 *  @param sp global battle structure
 *  @param client battler whose stat stages to check
 *  @param value to check for.  made flexible for every circumstance, i.e. Moody needs to check if any stat can be raised/lowered
 *  @return TRUE if there is a stat stage not at the passed value; FALSE otherwise (yes accuracy and evasion count too)
 */
BOOL AreAnyStatsNotAtValue(struct BattleStruct *sp, int client, int value)
{
    for (int i = 0; i < 7; i++)
    {
        if (sp->battlemon[client].states[i] != value)
        {
            return TRUE;
        }
    }

    return FALSE;
}

/**
 *  @brief check if client_no's ability should activate, specifically at the end of the turn.  loads subseq and returns TRUE if it should
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param client_no is the battler whose ability to check for
 *  @return TRUE if subseq was loaded; FALSE otherwise
 */
u32 TurnEndAbilityCheck(void *bw, struct BattleStruct *sp, int client_no)
{
    u32 ret = FALSE;
    int seq_no;

    switch (GetBattlerAbility(sp, client_no))
    {
        case ABILITY_SPEED_BOOST:
            if ((sp->battlemon[client_no].hp)
                && (sp->battlemon[client_no].states[STAT_SPEED] < 12)
                && (sp->battlemon[client_no].moveeffect.fakeOutCount != (sp->total_turn + 1)))
            {
                sp->addeffect_param = ADD_STATE_SPEED_UP;
                sp->addeffect_type = ADD_EFFECT_ABILITY;
                sp->state_client = client_no;
                seq_no = SUB_SEQ_BOOST_STATS;
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
                seq_no = SUB_SEQ_SHED_SKIN;
                ret = TRUE;
            }
            break;
        case ABILITY_HEALER:
            if ((sp->battlemon[BATTLER_ALLY(client_no)].condition & STATUS_ANY_PERSISTENT) // if the partner of the client has a status condition
             && (sp->battlemon[client_no].hp)
             && (sp->battlemon[BATTLER_ALLY(client_no)].hp)
             && (BattleRand(bw) % 10 < 3)) // 30% chance
            {
                client_no = BATTLER_ALLY(client_no);
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
                seq_no = SUB_SEQ_HANDLE_HEALER;
                ret = TRUE;
            }
            break;
        case ABILITY_HARVEST:
            if ((sp->battlemon[client_no].hp)
             && IS_ITEM_BERRY(sp->recycle_item[client_no])
             && ((BattleRand(bw) % 2 == 0) // 50% chance
              // OR sun is active + abilities are not fucking it
              || ((CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0)
               && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0)
               && (sp->field_condition & WEATHER_SUNNY_ANY))))
            {
                sp->item_work = sp->recycle_item[client_no];
                sp->recycle_item[client_no] = 0;
                sp->battlemon[client_no].item = sp->item_work;
                seq_no = SUB_SEQ_HANDLE_HARVEST;
                ret = TRUE;
            }
            break;
        case ABILITY_MOODY: // this is going to be interesting
            if (sp->battlemon[client_no].hp)
            {
                int temp = BattleRand(bw) % 7;

                if (AreAnyStatsNotAtValue(sp, client_no, 12)) // if any stat can be lowered
                {
                    while (sp->battlemon[client_no].states[temp] == 12)
                    {
                        temp = BattleRand(bw) % 7;
                    }
                }
                else
                {
                    sp->calc_work = 8; // skip the raising if this is the case
                }
                sp->calc_work = temp;


                temp = BattleRand(bw) % 7;

                if (AreAnyStatsNotAtValue(sp, client_no, 0)) // if any stat can be raised
                {
                    while (sp->battlemon[client_no].states[temp] == 0
                        || temp == sp->calc_work)
                    {
                        temp = BattleRand(bw) % 7;
                    }
                }
                else
                {
                    sp->tokusei_work = 8; // skip the lowering if this is the case
                }
                sp->tokusei_work = temp; // VAR_ABILITY_TEMP2

                sp->client_work = client_no;
                sp->state_client = client_no;
                seq_no = SUB_SEQ_HANDLE_MOODY;
                ret = TRUE;
            }
        default:
            break;
    }

    if (ret == TRUE)
    {
        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq_no);
        sp->next_server_seq_no = sp->server_seq_no;
        sp->server_seq_no = MOVE_SEQUENCE_NO; // not sure what this corresponds to
    }

    return ret;
}

/**
 *  @brief check if mummy can overwrite the attacker's ability
 *
 *  @param sp global battle structure
 *  @return TRUE if the ability can be overwritten; FALSE otherwise
 */
BOOL MummyAbilityCheck(struct BattleStruct *sp)
{
    switch(GetBattlerAbility(sp, sp->attack_client))
    {
        case ABILITY_MULTITYPE:
        case ABILITY_ZEN_MODE:
        case ABILITY_STANCE_CHANGE:
        case ABILITY_SCHOOLING:
        case ABILITY_BATTLE_BOND:
        case ABILITY_POWER_CONSTRUCT:
        case ABILITY_SHIELDS_DOWN:
        case ABILITY_RKS_SYSTEM:
        case ABILITY_DISGUISE:
        case ABILITY_COMATOSE:
        case ABILITY_MUMMY:
            return FALSE;
        default:
            return TRUE;
    }
}

/**
 *  @brief check if the client_no's item can be stolen by pickpocket
 *
 *  @param sp global battle structure
 *  @param client_no battler whose item to check
 *  @return TRUE if the item can be stolen; FALSE otherwise
 */
BOOL CanPickpocketStealClientItem(struct BattleStruct *sp, int client_no)
{
    switch(GetBattleMonItem(sp, client_no))
    {
        case ITEM_GRASS_MAIL ... ITEM_BRICK_MAIL:
        case ITEM_VENUSAURITE ... ITEM_DIANCITE:
        case ITEM_BLUE_ORB:
        case ITEM_RED_ORB:
        case ITEM_GRISEOUS_ORB:
        case ITEM_NONE:
            return FALSE;
        default:
            return TRUE;
    }
}

/**
 *  @brief grab which of the client's raw stats (excluding HP) are the highest for the ability beast boost
 *
 *  @param sp global battle structure
 *  @param client battler whose stats to compare among themselves for beast boost
 *  @return the highest raw stat the the client has (excluding HP)
 */
u8 BeastBoostGreatestStatHelper(struct BattleStruct *sp, u32 client)
{
    u16 stats[] = {
            sp->battlemon[client].attack,
            sp->battlemon[client].defense,
            sp->battlemon[client].speed,
            sp->battlemon[client].spatk,
            sp->battlemon[client].spdef
    };

    u8 max = 0;
    u8 ret = 0;
    for (u8 i = 0; i < NELEMS(stats); i++)
    {
        if (stats[i] > max)
        {
            max = stats[i];
            ret = i;
        }
    }

    return ret;
}


/**
 *  @brief check if the attacker's ability should queue up a subscript or not.
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param seq_no the subscript number to load and run
 *  @return TRUE if a script should be run and is in *seq_no; FALSE otherwise
 */
BOOL MoveHitAttackerAbilityCheck(void *bw, struct BattleStruct *sp, int *seq_no)
{
    BOOL ret = FALSE;

    if (sp->attack_client == 0xFF) {
        return ret;
    }

    switch (GetBattlerAbility(sp, sp->attack_client))
    {
        case ABILITY_POISON_TOUCH:
            if ((sp->battlemon[sp->defence_client].hp)
                && (sp->battlemon[sp->defence_client].condition == 0)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage))
                && (sp->moveTbl[sp->current_move_index].flag & FLAG_CONTACT)
                && (CheckSubstitute(sp, sp->defence_client) == FALSE)
                && (BattleRand(bw) % 10 < 3))
            {
                sp->addeffect_type = ADD_STATUS_ABILITY;
                sp->state_client = sp->defence_client;
                sp->client_work = sp->attack_client;
                seq_no[0] = SUB_SEQ_APPLY_POISON;
                ret = TRUE;
            }
            break;
        case ABILITY_BEAST_BOOST:
            if ((sp->defence_client == sp->fainting_client)
                && BATTLERS_ON_DIFFERENT_SIDE(sp->attack_client, sp->fainting_client)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && (sp->battlemon[sp->attack_client].hp)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0))
            {
                u8 stat = BeastBoostGreatestStatHelper(sp, sp->attack_client);

                if ((sp->battlemon[sp->attack_client].states[STAT_ATTACK + stat] < 12)
                    && (sp->battlemon[sp->attack_client].moveeffect.fakeOutCount != (sp->total_turn + 1)))
                {
                    sp->addeffect_param = ADD_STATE_ATTACK_UP + stat;
                    sp->addeffect_type = ADD_EFFECT_ABILITY;
                    sp->state_client = sp->attack_client;
                    seq_no[0] = SUB_SEQ_BOOST_STATS;
                    ret = TRUE;
                }
            }
            break;
        case ABILITY_CHILLING_NEIGH:
        case ABILITY_AS_ONE_GLASTRIER:
        case ABILITY_MOXIE:
            if ((sp->defence_client == sp->fainting_client)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && (sp->battlemon[sp->attack_client].hp)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0))
            {

                if (sp->battlemon[sp->attack_client].states[STAT_ATTACK] < 12)
                {
                    sp->addeffect_param = ADD_STATE_ATTACK_UP;
                    sp->addeffect_type = ADD_EFFECT_ABILITY;
                    sp->state_client = sp->attack_client;
                    seq_no[0] = SUB_SEQ_BOOST_STATS;
                    ret = TRUE;
                }
            }
            break;
        case ABILITY_GRIM_NEIGH:
        case ABILITY_AS_ONE_SPECTRIER:
            if ((sp->defence_client == sp->fainting_client)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && (sp->battlemon[sp->attack_client].hp)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0))
            {

                if (sp->battlemon[sp->attack_client].states[STAT_SPATK] < 12)
                {
                    sp->addeffect_param = ADD_STATE_SP_ATK_UP;
                    sp->addeffect_type = ADD_EFFECT_ABILITY;
                    sp->state_client = sp->attack_client;
                    seq_no[0] = SUB_SEQ_BOOST_STATS;
                    ret = TRUE;
                }
            }
            break;
        case ABILITY_BATTLE_BOND:
            if ((sp->defence_client == sp->fainting_client)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && (sp->battlemon[sp->attack_client].hp)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0))
            {

                if (sp->battlemon[sp->attack_client].species == SPECIES_GRENINJA && sp->battlemon[sp->attack_client].form_no == 1)
                {
                    sp->state_client = sp->attack_client;
                    sp->client_work = sp->attack_client;
                    sp->battlemon[sp->attack_client].form_no = 2;
                    seq_no[0] = SUB_SEQ_FORM_CHANGE;
                    ret = TRUE;
                }
            }
            break;
        default:
            break;
    }

    return ret;
}


/**
 *  @brief check if a move should activate the defender's ability and run a subscript
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param seq_no battle subscript to run
 *  @return TRUE to load the battle subscript in *seq_no and run it; FALSE otherwise
 */
BOOL MoveHitDefenderAbilityCheck(void *bw, struct BattleStruct *sp, int *seq_no)
{
    BOOL ret = FALSE;
    u32 move_pos;

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
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage))
                && (sp->moveTbl[sp->current_move_index].flag & FLAG_CONTACT)
                && (BattleRand(bw) % 10 < 3)) {
                sp->addeffect_type = ADD_STATUS_ABILITY;
                sp->state_client = sp->attack_client;
                sp->client_work = sp->defence_client;
                seq_no[0] = SUB_SEQ_APPLY_PARALYSIS;
                ret = TRUE;
            }
            break;
        case ABILITY_COLOR_CHANGE:
            {
                if (GetBattlerAbility(sp, sp->attack_client) == ABILITY_SHEER_FORCE && sp->battlemon[sp->attack_client].sheer_force_flag == 1) { // sheer force doesn't let color change activate
                    return FALSE;
                }

                u8 movetype;

                movetype = GetAdjustedMoveType(sp, sp->attack_client, sp->current_move_index); // new normalize checks

                if ((sp->battlemon[sp->defence_client].hp)
                    && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                    && (sp->current_move_index != MOVE_STRUGGLE)
                    && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                        (sp->oneSelfFlag[sp->defence_client].special_damage))
                    && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                    && (sp->moveTbl[sp->current_move_index].power)
                    && (BattlePokemonParamGet(sp, sp->defence_client, BATTLE_MON_DATA_TYPE1, NULL) != movetype)
                    && (BattlePokemonParamGet(sp, sp->defence_client, BATTLE_MON_DATA_TYPE2, NULL) != movetype)
                    && (sp->multi_hit_count <= 1)) // don't activate until the last hit of a multi-hit move
                {
                    seq_no[0] = SUB_SEQ_COLOR_CHANGE;
                    sp->msg_work = movetype;
                    ret = TRUE;
                }
            }
            break;
        case ABILITY_ROUGH_SKIN:
        case ABILITY_IRON_BARBS:
            if ((sp->battlemon[sp->attack_client].hp)
                && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage))
                && (sp->moveTbl[sp->current_move_index].flag & FLAG_CONTACT)) {
                sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * -1, 8);
                sp->client_work = sp->attack_client;
                seq_no[0] = SUB_SEQ_ROUGH_SKIN;
                ret = TRUE;
            }
            break;
        case ABILITY_EFFECT_SPORE:
            if ((sp->battlemon[sp->attack_client].hp)
                && (sp->battlemon[sp->attack_client].condition == 0)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage))
                && (sp->moveTbl[sp->current_move_index].flag & FLAG_CONTACT)
                && (BattleRand(bw) % 10 < 3)) {
                switch (BattleRand(bw) % 3) {
                    case 0:
                    default:
                        seq_no[0] = SUB_SEQ_APPLY_POISON;
                        break;
                    case 1:
                        seq_no[0] = SUB_SEQ_APPLY_PARALYSIS;
                        break;
                    case 2:
                        seq_no[0] = SUB_SEQ_APPLY_SLEEP;
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
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage))
                && (sp->moveTbl[sp->current_move_index].flag & FLAG_CONTACT)
                && (BattleRand(bw) % 10 < 3)) {
                sp->addeffect_type = ADD_STATUS_ABILITY;
                sp->state_client = sp->attack_client;
                sp->client_work = sp->defence_client;
                seq_no[0] = SUB_SEQ_APPLY_POISON;
                ret = TRUE;
            }
            break;
        case ABILITY_FLAME_BODY:
            if ((sp->battlemon[sp->attack_client].hp)
                && (sp->battlemon[sp->attack_client].condition == 0)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage))
                && (sp->moveTbl[sp->current_move_index].flag & FLAG_CONTACT)
                && (BattleRand(bw) % 10 < 3)) {
                sp->addeffect_type = ADD_STATUS_ABILITY;
                sp->state_client = sp->attack_client;
                sp->client_work = sp->defence_client;
                seq_no[0] = SUB_SEQ_APPLY_BURN;
                ret = TRUE;
            }
            break;
        case ABILITY_CUTE_CHARM:
            if ((sp->battlemon[sp->attack_client].hp)
                && ((sp->battlemon[sp->attack_client].condition2 & STATUS2_INFATUATION) == 0)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage))
                && (sp->moveTbl[sp->current_move_index].flag & FLAG_CONTACT)
                && (sp->battlemon[sp->defence_client].hp)
                && (BattleRand(bw) % 10 < 3)) {
                sp->addeffect_type = ADD_STATUS_ABILITY;
                sp->state_client = sp->attack_client;
                sp->client_work = sp->defence_client;
                seq_no[0] = SUB_SEQ_APPLY_ATTRACT;
                ret = TRUE;
            }
            break;
        case ABILITY_AFTERMATH:
            if ((sp->defence_client == sp->fainting_client)
                && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
                && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_DAMP) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && (sp->battlemon[sp->attack_client].hp)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && (sp->moveTbl[sp->current_move_index].flag & FLAG_CONTACT)) {
                sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * -1, 4);
                sp->client_work = sp->attack_client;
                seq_no[0] = SUB_SEQ_HANDLE_AFTERMATH;
                ret = TRUE;
            }
            break;
        case ABILITY_INNARDS_OUT:
            if ((sp->defence_client == sp->fainting_client)
                && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && (sp->battlemon[sp->attack_client].hp)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0))
            {
                sp->hp_calc_work = sp->damage;
                sp->client_work = sp->attack_client;
                seq_no[0] = SUB_SEQ_HANDLE_INNARDS_OUT_MESSAGE;
                ret = TRUE;
            }
            break;
        //handle rattled
        case ABILITY_RATTLED:
            if ((sp->battlemon[sp->defence_client].hp)
                && (sp->battlemon[sp->defence_client].states[STAT_SPEED] < 12)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage)))
            {
                u8 movetype;

                movetype = GetAdjustedMoveType(sp, sp->attack_client, sp->current_move_index); // new normalize checks

                if ((movetype == TYPE_DARK) || (movetype == TYPE_GHOST) || (movetype == TYPE_BUG))
                {
                    sp->addeffect_param = ADD_STATE_SPEED_UP;
                    sp->addeffect_type = ADD_EFFECT_ABILITY;
                    sp->state_client = sp->defence_client;
                    sp->client_work = sp->defence_client;
                    seq_no[0] = SUB_SEQ_BOOST_STATS;
                    ret = TRUE;
                }
            }
        break;
        // Handle Berserk
        case ABILITY_BERSERK:
            if
            (
                (sp->battlemon[sp->defence_client].hp)
                && (sp->battlemon[sp->defence_client].states[STAT_SPATK] < 12)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage))
                // Berserk doesn't activate if the Pokémon gets attacked by a Sheer Force boosted move
                && !((GetBattlerAbility(sp, sp->attack_client) == ABILITY_SHEER_FORCE) && (sp->battlemon[sp->attack_client].sheer_force_flag == 1))
                // berserk doesn't activate until the last hit of a multi-hit move
                && (sp->multi_hit_count <= 1)
                && (sp->battlemon[sp->defence_client].hp <= (s32)(sp->battlemon[sp->defence_client].maxhp / 2))
                && (
                    // Checks if the Pokémon has gone below half HP from the current damage instance
                    // physical_damage and special_damage contain the relevant damage value that was just dealt, but the value is negative
                    ((sp->battlemon[sp->defence_client].hp - (sp->oneSelfFlag[sp->defence_client].physical_damage)) > (s32)sp->battlemon[sp->defence_client].maxhp / 2) ||
                    ((sp->battlemon[sp->defence_client].hp - (sp->oneSelfFlag[sp->defence_client].special_damage)) > (s32)sp->battlemon[sp->defence_client].maxhp / 2)
                   )
            )
            {
                sp->addeffect_param = ADD_STATE_SP_ATK_UP;
                sp->addeffect_type = ADD_EFFECT_ABILITY;
                sp->state_client = sp->defence_client;
                sp->client_work = sp->defence_client;
                seq_no[0] = SUB_SEQ_BOOST_STATS;
                ret = TRUE;
            }
        break;
        case ABILITY_STAMINA:
            if ((sp->battlemon[sp->defence_client].hp)
                && (sp->battlemon[sp->defence_client].states[STAT_DEFENSE] < 12)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage)))
            {
                sp->addeffect_param = ADD_STATE_DEFENSE_UP;
                sp->addeffect_type = ADD_EFFECT_ABILITY;
                sp->state_client = sp->defence_client;
                sp->client_work = sp->defence_client;
                seq_no[0] = SUB_SEQ_BOOST_STATS;
                ret = TRUE;
            }
            break;
        case ABILITY_GOOEY:
        case ABILITY_TANGLING_HAIR:
            if ((sp->battlemon[sp->attack_client].states[STAT_SPEED] > 0)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && (sp->moveTbl[sp->current_move_index].flag & FLAG_CONTACT)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage)))
            {
                sp->addeffect_param = ADD_STATE_SPEED_DOWN;
                sp->addeffect_type = ADD_EFFECT_PRINT_WORK_ABILITY;
                sp->state_client = sp->attack_client;
                sp->client_work = sp->defence_client;
                seq_no[0] = SUB_SEQ_BOOST_STATS;
                ret = TRUE;
            }
            break;
        case ABILITY_MUMMY:
            if (((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && (sp->moveTbl[sp->current_move_index].flag & FLAG_CONTACT)
                && (MummyAbilityCheck(sp) == TRUE)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage)))
            {
                sp->addeffect_type = ADD_EFFECT_ABILITY;
                sp->client_work = sp->attack_client;
                sp->battlemon[sp->attack_client].ability = ABILITY_MUMMY;
                seq_no[0] = SUB_SEQ_HANDLE_MUMMY_MESSAGE;
                ret = TRUE;
            }
            break;
        case ABILITY_WATER_COMPACTION:
            if ((sp->battlemon[sp->defence_client].hp)
                && (sp->battlemon[sp->defence_client].states[STAT_DEFENSE] < 12)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage)))
            {
                u8 movetype;

                movetype = GetAdjustedMoveType(sp, sp->attack_client, sp->current_move_index); // new normalize checks

                if(movetype == TYPE_WATER)
                {
                    if(sp->battlemon[sp->defence_client].states[STAT_DEFENSE] < 11)
                    {
                        sp->addeffect_param = ADD_STATE_DEFENSE_UP_2;
                        sp->addeffect_type = ADD_EFFECT_ABILITY;
                        sp->state_client = sp->defence_client;
                        sp->client_work = sp->defence_client;
                        seq_no[0] = SUB_SEQ_BOOST_STATS;
                        ret = TRUE;
                    }
                    else
                    {
                        sp->addeffect_param = ADD_STATE_DEFENSE_UP;
                        sp->addeffect_type = ADD_EFFECT_ABILITY;
                        sp->state_client = sp->defence_client;
                        sp->client_work = sp->defence_client;
                        seq_no[0] = SUB_SEQ_BOOST_STATS;
                        ret = TRUE;
                    }
                }
            }
            break;
        case ABILITY_JUSTIFIED:
            if ((sp->battlemon[sp->defence_client].hp)
                && (sp->battlemon[sp->defence_client].states[STAT_SPEED] < 12)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                    (sp->oneSelfFlag[sp->defence_client].special_damage)))
            {
                u8 movetype;

                movetype = GetAdjustedMoveType(sp, sp->attack_client, sp->current_move_index); // new normalize checks

                if (movetype == TYPE_DARK)
                {
                    sp->addeffect_param = ADD_STATE_ATTACK_UP;
                    sp->addeffect_type = ADD_EFFECT_ABILITY;
                    sp->state_client = sp->defence_client;
                    sp->client_work = sp->defence_client;
                    seq_no[0] = SUB_SEQ_BOOST_STATS;
                    ret = TRUE;
                }
            }
            break;
        case ABILITY_WEAK_ARMOR:
            if ((sp->battlemon[sp->defence_client].hp)
                && (sp->battlemon[sp->defence_client].states[STAT_SPEED] < 12)
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                && (sp->oneSelfFlag[sp->defence_client].physical_damage))
            {
                sp->state_client = sp->defence_client;
                sp->client_work = sp->defence_client;
                sp->addeffect_type = ADD_EFFECT_ABILITY;
                seq_no[0] = SUB_SEQ_HANDLE_WEAK_ARMOR;
                ret = TRUE;
            }
            break;
        case ABILITY_DEFIANT:
            if ((sp->battlemon[sp->defence_client].hp != 0)
             && (sp->oneSelfFlag[sp->state_client].defiant_flag)
             && (sp->battlemon[sp->defence_client].states[STAT_ATTACK] < 12)
             && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
             && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
             && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0))
            {
                sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                sp->state_client = sp->defence_client;
                sp->client_work = sp->defence_client;
                sp->addeffect_type = ADD_EFFECT_ABILITY;
                seq_no[0] = SUB_SEQ_HANDLE_DEFIANT;
                ret = TRUE;
            }
            break;
        // handle competitive; copypaste from above with different sub_seq
        case ABILITY_COMPETITIVE:
            if ((sp->battlemon[sp->defence_client].hp != 0)
             && (sp->oneSelfFlag[sp->state_client].defiant_flag)
             && (sp->battlemon[sp->defence_client].states[STAT_SPATK] < 12)
             && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
             && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
             && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0))
            {
                sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                sp->state_client = sp->defence_client;
                sp->client_work = sp->defence_client;
                sp->addeffect_type = ADD_EFFECT_ABILITY;
                seq_no[0] = SUB_SEQ_HANDLE_COMPETITIVE;
                ret = TRUE;
            }
            break;
        //handle pickpocket - steal attacker's item if it can
        case ABILITY_PICKPOCKET:
            if (sp->battlemon[sp->defence_client].hp != 0
             && sp->moveTbl[sp->current_move_index].flag & FLAG_CONTACT
             && sp->moveTbl[sp->current_move_index].power != 0
             && CanPickpocketStealClientItem(sp, sp->attack_client)
             && !(GetBattlerAbility(sp, sp->attack_client) == ABILITY_SHEER_FORCE && sp->battlemon[sp->attack_client].sheer_force_flag == 1)) // pickpocket doesn't activate if attacked by sheer force
            {
                seq_no[0] = SUB_SEQ_HANDLE_PICKPOCKET_DEF;
                ret = TRUE;
            }
            break;
        // handle cursed body - disable the last used move by the pokemon.  disabling is handled here, script just displays the message
        case ABILITY_CURSED_BODY:
            move_pos = GetBattlePokemonMovePosFromMove(&sp->battlemon[sp->attack_client], sp->current_move_index);
            if (sp->battlemon[sp->attack_client].hp != 0
             && sp->battlemon[sp->attack_client].moveeffect.disabledMove == 0
             && move_pos != 4 // is a valid move the mon knows
             && sp->battlemon[sp->attack_client].pp[move_pos] != 0 // pp is nonzero
             && sp->current_move_index != 0 // a move has already been used
             && sp->moveTbl[sp->current_move_index].power != 0
             && BattleRand(bw) % 10 < 3)
            {
                sp->waza_work = sp->current_move_index;
                sp->battlemon[sp->attack_client].moveeffect.disabledMove = sp->waza_work;
                sp->battlemon[sp->attack_client].moveeffect.disabledTurns = 4; // cursed body disables for 4 turns every time
                sp->addeffect_type = ADD_EFFECT_ABILITY;
                seq_no[0] = SUB_SEQ_HANDLE_CURSED_BODY;
                ret = TRUE;
            }
            break;
        case ABILITY_DISGUISE:
            if ((sp->battlemon[sp->defence_client].species == SPECIES_MIMIKYU)
             && (sp->battlemon[sp->defence_client].hp)
             && (sp->battlemon[sp->defence_client].form_no == 0)
             && ((sp->waza_status_flag & MOVE_STATUS_FLAG_MISS) == 0) // if move was successful
             && (sp->moveTbl[sp->current_move_index].power) // if move has power
            )
            {
                BattleFormChange(sp->defence_client, 1, bw, sp, TRUE);
                sp->client_work = sp->defence_client;
                sp->battlemon[sp->defence_client].form_no = 1;
                seq_no[0] = SUB_SEQ_HANDLE_DISGUISE_ICE_FACE;
                ret = TRUE;
            }
            break;
        case ABILITY_ICE_FACE:
            if ((sp->battlemon[sp->defence_client].species == SPECIES_EISCUE)
             && (sp->battlemon[sp->defence_client].hp)
             && (sp->battlemon[sp->defence_client].form_no == 0)
             && ((sp->waza_status_flag & MOVE_STATUS_FLAG_MISS) == 0) // if move was successful
             && (sp->moveTbl[sp->current_move_index].power != 0)
             && (sp->moveTbl[sp->current_move_index].split == SPLIT_PHYSICAL)
            )
            {
                BattleFormChange(sp->defence_client, 1, bw, sp, TRUE);
                sp->client_work = sp->defence_client;
                sp->battlemon[sp->defence_client].form_no = 1;
                seq_no[0] = SUB_SEQ_HANDLE_DISGUISE_ICE_FACE;
                ret = TRUE;
            }
            break;
        default:
            break;
    }

    return ret;
}


/**
 *  @brief check if an ability is present and account for mold breaker
 *
 *  @param sp global battle structure
 *  @param attacker battler that potentially has mold breaker
 *  @param defender battler whose ability to check
 *  @param ability ability to check for
 *  @return TRUE if the defender has the ability and it isn't canceled by mold breaker; FALSE otherwise
 */
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

/**
 *  @brief check if synchronize should activate
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param server_seq_no current server step, to be queued as sp->next_server_seq_no if a synchronize check passes
 *  @return TRUE if a battle subscript was loaded to sp->SkillSeqWork
 */
BOOL SynchroniseAbilityCheck(void *bw, struct BattleStruct *sp, int server_seq_no)
{
    BOOL ret;
    int seq_no;

    ret = FALSE;

    seq_no = 0;

    if((sp->defence_client != 0xFF) && //defense side check
       (GetBattlerAbility(sp,sp->defence_client) == ABILITY_SYNCHRONIZE) &&
       (sp->defence_client == sp->state_client) &&
       (sp->server_status_flag & SERVER_STATUS_FLAG_SYNCHRONIZE))
    {
        sp->client_work = sp->defence_client;
        sp->state_client = sp->attack_client;
        ret=TRUE;
    }
    else if((GetBattlerAbility(sp,sp->attack_client) == ABILITY_SYNCHRONIZE) && //attacker side check
       (sp->attack_client == sp->state_client) &&
       (sp->server_status_flag & SERVER_STATUS_FLAG_SYNCHRONIZE))
    {
        sp->client_work = sp->attack_client;
        sp->state_client = sp->defence_client;
        ret = TRUE;
    }

    if (ret == TRUE)
    {
        if(sp->battlemon[sp->client_work].condition & STATUS_POISON_ANY) {
            seq_no = SUB_SEQ_APPLY_POISON;
        }
        else if(sp->battlemon[sp->client_work].condition & STATUS_FLAG_BURNED) {
            seq_no = SUB_SEQ_APPLY_BURN;
        }
        else if(sp->battlemon[sp->client_work].condition & STATUS_FLAG_PARALYZED) {
            seq_no = SUB_SEQ_APPLY_PARALYSIS;
        }
        if(seq_no) {
            sp->addeffect_type = ADD_STATUS_ABILITY;
            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq_no);
            sp->next_server_seq_no = server_seq_no;
            sp->server_seq_no = 22;

            return ret;
        }
    }

    //check to see if both synchronise and a battle form change are occurring at this stage
    ret = BattleFormChangeCheck(bw, sp, &seq_no);
    if(ret == TRUE) {
        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq_no);
        sp->next_server_seq_no = server_seq_no;
        sp->server_seq_no = 22;
        return ret;
    }

    //check to see if both synchronise and a destiny knot effect are occurring at this stage
    if((sp->defence_client != 0xFF) &&
       (HeldItemHoldEffectGet(sp,sp->defence_client) == HOLD_EFFECT_RECIPROCATE_INFAT) &&
       (sp->defence_client == sp->state_client) &&
       (sp->oneSelfFlag[sp->defence_client].status_flag & SELF_STATUS_FLAG_ATTRACT))
    {
        sp->client_work = sp->defence_client;
        sp->state_client = sp->attack_client;
        ret = TRUE;
    }
    else if((HeldItemHoldEffectGet(sp,sp->attack_client) == HOLD_EFFECT_RECIPROCATE_INFAT) &&
            (sp->attack_client == sp->state_client) &&
            (sp->oneSelfFlag[sp->attack_client].status_flag & SELF_STATUS_FLAG_ATTRACT))
    {
        sp->client_work = sp->attack_client;
        sp->state_client = sp->defence_client;
        ret = TRUE;
    }

    if(ret == TRUE) {
        seq_no =  SUB_SEQ_APPLY_ATTRACT;
        sp->addeffect_type = ADD_STATUS_SOUBIITEM;
        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq_no);
        sp->next_server_seq_no = server_seq_no;
        sp->server_seq_no = 22;

        return ret;
    }

    return FALSE;
}


/**
 *  @brief check if the sp->defence_client should flinch and load the subscript if so
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return TRUE if the subseq was loaded and a flinch is successful; FALSE otherwise
 */
BOOL ServerFlinchCheck(void *bw, struct BattleStruct *sp)
{
    BOOL ret = FALSE;
    int heldeffect;
    int atk;

    heldeffect = HeldItemHoldEffectGet(sp, sp->attack_client);
    atk = HeldItemAtkGet(sp, sp->attack_client, 0);

    if (GetBattlerAbility(sp, sp->attack_client) == ABILITY_STENCH) // stench adds 10% flinch chance
    {
        atk += 10;
        heldeffect = HOLD_EFFECT_INCREASE_FLINCH; // doesn't permanently change the hold effect, just for this function
    }

    if (sp->defence_client != 0xFF)
    {
        if ((heldeffect == HOLD_EFFECT_INCREASE_FLINCH)
         && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
         && ((sp->oneSelfFlag[sp->defence_client].physical_damage)
          || (sp->oneSelfFlag[sp->defence_client].special_damage))
         && ((BattleRand(bw) % 100) < atk)
         && (sp->moveTbl[sp->current_move_index].flag & FLAG_KINGS_ROCK)
         && (sp->battlemon[sp->defence_client].hp))
        {
            sp->state_client = sp->defence_client;
            sp->addeffect_type = ADD_STATUS_INDIRECT;
            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_TRY_FLINCH);
            sp->next_server_seq_no = sp->server_seq_no;
            sp->server_seq_no = 22;
            ret = TRUE;
        }
    }
    return ret;
}


enum
{
    SEQ_NORMAL_CRITICAL_MSG = 0,
    SEQ_NORMAL_MOVE_STATUS_MSG,
    SEQ_NORMAL_ADD_STATUS_MSG,
    SEQ_NORMAL_FORM_CHG_CHECK,
    SEQ_NORMAL_IKARI_CHECK,
    SEQ_NORMAL_ATTACKER_ABILITY_CHECK,
    SEQ_NORMAL_DEFENDER_ABILITY_CHECK,
    SEQ_NORMAL_FLINCH_CHECK,

    SEQ_LOOP_CRITICAL_MSG = 0,
    SEQ_LOOP_ADD_STATUS_MSG,
    SEQ_LOOP_FORM_CHG_CHECK,
    SEQ_LOOP_IKARI_CHECK,
    SEQ_LOOP_ATTACKER_ABILITY_CHECK,
    SEQ_LOOP_DEFENDER_ABILITY_CHECK,
    SEQ_LOOP_MOVE_STATUS_MSG,
    SEQ_LOOP_FLINCH_CHECK,
};

/**
 *  @brief run the end-of-turn checks for everything.  critical hit message, move effectiveness message, call MoveHitAttackerAbilityCheck and MoveHitDefenderAbilityCheck as well
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 */
void ServerWazaOutAfterMessage(void *bw, struct BattleStruct *sp)
{
    switch(sp->swoam_type)
    {
    case SWOAM_NORMAL:
        switch (sp->swoam_seq_no)
        {
        case SEQ_NORMAL_CRITICAL_MSG:
            sp->swoam_seq_no++;
            if (ServerCriticalMessage(bw, sp) == TRUE)
            {
                return;
            }
            FALLTHROUGH;
        case SEQ_NORMAL_MOVE_STATUS_MSG:
            sp->swoam_seq_no++;
            if (ServerWazaStatusMessage(bw, sp) == TRUE)
            {
                return;
            }
            FALLTHROUGH;
        case SEQ_NORMAL_ADD_STATUS_MSG:
            {
                int seq_no;

                sp->swoam_seq_no++;
                if ((ST_ServerAddStatusCheck(bw, sp, &seq_no) == TRUE) && ((sp->waza_status_flag & MOVE_STATUS_FLAG_FAILURE_ANY) == 0))
                {
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq_no);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    return;
                }
            }
            FALLTHROUGH;
        case SEQ_NORMAL_FORM_CHG_CHECK:
            sp->swoam_seq_no++;
            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SHAYMIN_FORM_CHECK);
            sp->next_server_seq_no = sp->server_seq_no;
            sp->server_seq_no = 22;
            return;
        case SEQ_NORMAL_IKARI_CHECK:
            sp->swoam_seq_no++;
            if (ServerIkariCheck(bw, sp) == TRUE)
            {
                return;
            }
            FALLTHROUGH;
        case SEQ_NORMAL_ATTACKER_ABILITY_CHECK:
            {
                int seq_no;

                sp->swoam_seq_no++;
                if (MoveHitAttackerAbilityCheck(bw, sp, &seq_no) == TRUE)
                {
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq_no);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    return;
                }
            }
            FALLTHROUGH;
        case SEQ_NORMAL_DEFENDER_ABILITY_CHECK:
            {
                int seq_no;

                sp->swoam_seq_no++;
                if (MoveHitDefenderAbilityCheck(bw, sp, &seq_no) == TRUE)
                {
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq_no);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    return;
                }
            }
            FALLTHROUGH;
        case SEQ_NORMAL_FLINCH_CHECK:
            sp->swoam_seq_no++;
            if (ServerFlinchCheck(bw, sp) == TRUE)
            {
                return;
            }
            FALLTHROUGH;
        default:
            break;
        }
        break;

    case SWOAM_LOOP:
        switch (sp->swoam_seq_no)
        {
        case SEQ_LOOP_CRITICAL_MSG:
            sp->swoam_seq_no++;
            if (ServerCriticalMessage(bw, sp) == TRUE)
            {
                return;
            }
            FALLTHROUGH;
        case SEQ_LOOP_ADD_STATUS_MSG:
            {
                int seq_no;

                sp->swoam_seq_no++;
                if ((ST_ServerAddStatusCheck(bw, sp, &seq_no) == TRUE) && ((sp->waza_status_flag & MOVE_STATUS_FLAG_FAILURE_ANY) == 0))
                {
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq_no);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    return;
                }
            }
            FALLTHROUGH;
        case SEQ_LOOP_FORM_CHG_CHECK:
            sp->swoam_seq_no++;
            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SHAYMIN_FORM_CHECK);
            sp->next_server_seq_no = sp->server_seq_no;
            sp->server_seq_no = 22;
            return;
        case SEQ_LOOP_IKARI_CHECK:
            sp->swoam_seq_no++;
            if (ServerIkariCheck(bw, sp) == TRUE)
            {
                return;
            }
            FALLTHROUGH;
        case SEQ_LOOP_ATTACKER_ABILITY_CHECK:
            {
                int seq_no;

                sp->swoam_seq_no++;
                if (MoveHitAttackerAbilityCheck(bw, sp, &seq_no) == TRUE)
                {
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq_no);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    return;
                }
            }
            FALLTHROUGH;
        case SEQ_LOOP_DEFENDER_ABILITY_CHECK:
            {
                int seq_no;

                sp->swoam_seq_no++;
                if (MoveHitDefenderAbilityCheck(bw, sp, &seq_no) == TRUE)
                {
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq_no);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    return;
                }
            }
            FALLTHROUGH;
        case SEQ_LOOP_MOVE_STATUS_MSG:
            sp->swoam_seq_no++;
            if (ServerWazaStatusMessage(bw, sp) == TRUE)
            {
                return;
            }
            FALLTHROUGH;
        case SEQ_LOOP_FLINCH_CHECK:
            sp->swoam_seq_no++;
            if (ServerFlinchCheck(bw, sp) == TRUE)
            {
                return;
            }
            FALLTHROUGH;
        default:
            break;
        }
        break;
    }

    sp->swoam_seq_no = 0;
    sp->server_seq_no = 31;
}


/**
 *  @brief handle magic coat and snatch.  load the battle subscript to handle the scenario if necessary and return TRUE to signal to run the script
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @return TRUE to signal that the battle subscript was loaded and to run it; FALSE otherwise
 */
u32 ServerWazaKoyuuCheck(void *bw, struct BattleStruct *sp)
{
    int i;
    int client_no;
    int client_set_max;

    client_set_max = BattleWorkClientSetMaxGet(bw);

    if (sp->defence_client == 0xFF)
    {
        return FALSE;
    }

    if (((sp->waza_status_flag & 0x801FDA49) == 0) // just what is in the rom already
     && (sp->oneTurnFlag[sp->defence_client].magic_cort_flag || GetBattlerAbility(sp, sp->defence_client) == ABILITY_MAGIC_BOUNCE)
     && (sp->moveTbl[sp->current_move_index].flag & FLAG_MAGIC_COAT))
    {
        sp->oneTurnFlag[sp->defence_client].magic_cort_flag = 0;
        sp->waza_no_mamoru[sp->attack_client] = 0;
        sp->waza_no_old[sp->attack_client] = sp->waza_no_temp;
        sp->waza_no_last = sp->waza_no_temp;
        sp->server_status_flag |= (0x00100000);
        LoadBattleSubSeqScript(sp, 1, SUB_SEQ_MAGIC_COAT);
        sp->next_server_seq_no = sp->server_seq_no;
        sp->server_seq_no = 22;
        CheckPressureForPPDecrease(sp, sp->defence_client, sp->attack_client);
        return TRUE;
    }
    for(i = 0; i < client_set_max; i++)
    {
        client_no = sp->turn_order[i];
        if (((sp->waza_status_flag & 0x801FDA49) == 0)
         && (sp->oneTurnFlag[client_no].yokodori_flag)
         && (sp->moveTbl[sp->current_move_index].flag & FLAG_SNATCH))
        {
            sp->client_work = client_no;
            sp->oneTurnFlag[client_no].yokodori_flag=0;
            if ((sp->server_status_flag & (0x00100000)) == 0)
            {
                sp->waza_no_mamoru[sp->attack_client] = 0;
                sp->waza_no_old[sp->attack_client] = sp->waza_no_temp;
                sp->waza_no_last = sp->waza_no_temp;
                sp->server_status_flag |= (0x00100000);
            }
            LoadBattleSubSeqScript(sp, 1, SUB_SEQ_SNATCH);
            sp->next_server_seq_no = sp->server_seq_no;
            sp->server_seq_no = 22;
            CheckPressureForPPDecrease(sp, client_no, sp->attack_client);
            return TRUE;
        }
    }

    return FALSE;
}


enum
{
    SWOAK_SEQ_VANISH_ON_OFF=0,
    SWOAK_SEQ_SYNCHRONIZE_CHECK,
    SWOAK_SEQ_POKE_APPEAR_CHECK,
    SWOAK_SEQ_CHECK_HELD_ITEM_EFFECT_ATTACKER,
    SWOAK_SEQ_CHECK_HELD_ITEM_EFFECT_DEFENDER,
    SWOAK_SEQ_CHECK_DEFENDER_ITEM_ON_HIT,
    SWOAK_SEQ_THAW_ICE,
    SWOAK_SEQ_CHECK_HEALING_ITEMS,
};


/**
 *  @brief do post move effects--synchronize, held item effects, ice thawing from move usage, etc.
 *         no other abilities here though.  primarily here to add scald melting frozen battlers
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 */
void ServerDoPostMoveEffects(void *bw, struct BattleStruct *sp)
{
    // Sort clients because moves may affect speed
    DynamicSortClientExecutionOrder(bw, sp);
    switch (sp->swoak_seq_no) {
        case SWOAK_SEQ_VANISH_ON_OFF: {
            int ret = 0;
            while(sp->swoak_work < BattleWorkClientSetMaxGet(bw))
            {
                if (((sp->battlemon[sp->swoak_work].effect_of_moves & (MOVE_EFFECT_FLAG_FLYING_IN_AIR | MOVE_EFFECT_FLAG_DIGGING | MOVE_EFFECT_FLAG_IS_DIVING | MOVE_EFFECT_FLAG_SHADOW_FORCE)) == 0)
                 && (sp->battlemon[sp->swoak_work].effect_of_moves_temp & (MOVE_EFFECT_FLAG_FLYING_IN_AIR | MOVE_EFFECT_FLAG_DIGGING | MOVE_EFFECT_FLAG_IS_DIVING | MOVE_EFFECT_FLAG_SHADOW_FORCE)))
                {
                    sp->battlemon[sp->swoak_work].effect_of_moves_temp &= ~(MOVE_EFFECT_FLAG_FLYING_IN_AIR | MOVE_EFFECT_FLAG_DIGGING | MOVE_EFFECT_FLAG_IS_DIVING | MOVE_EFFECT_FLAG_SHADOW_FORCE);
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_VANISH_OFF);
                    sp->client_work = sp->swoak_work;
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    ret = 1;
                }

                sp->swoak_work++;

                if (ret)
                    return;
            }
        }
        sp->swoak_seq_no++;
        sp->swoak_work=0;
        FALLTHROUGH;
    case SWOAK_SEQ_SYNCHRONIZE_CHECK:
        sp->swoak_seq_no++;
        if (SynchroniseAbilityCheck(bw, sp, sp->server_seq_no) == TRUE)
            return;
        FALLTHROUGH;
    case SWOAK_SEQ_POKE_APPEAR_CHECK:
        {
            int seq_no;

            seq_no = ST_ServerPokeAppearCheck(bw,sp);

            if (seq_no)
            {
                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq_no);
                sp->next_server_seq_no = sp->server_seq_no;
                sp->server_seq_no = 22;
                return;
            }
        }
        sp->swoak_seq_no++;
        FALLTHROUGH;
    case SWOAK_SEQ_CHECK_HELD_ITEM_EFFECT_ATTACKER:
        sp->swoak_seq_no++;
        if (HeldItemEffectCheck(bw, sp, sp->attack_client) == TRUE) // will eventually need HeldItemEffectCheck anyway.  generic berry function thing
            return;
        FALLTHROUGH;
    case SWOAK_SEQ_CHECK_HELD_ITEM_EFFECT_DEFENDER:
        sp->swoak_seq_no++;
        if (sp->defence_client != 0xFF)
        {
            if (HeldItemEffectCheck(bw, sp, sp->defence_client) == TRUE)
                return;
        }
        FALLTHROUGH;
    case SWOAK_SEQ_CHECK_DEFENDER_ITEM_ON_HIT:
        {
            int seq_no;

            sp->swoak_seq_no++;
            if (CheckDefenderItemEffectOnHit(bw, sp, &seq_no) == TRUE)
            {
                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq_no);
                sp->next_server_seq_no = sp->server_seq_no;
                sp->server_seq_no = 22;
                return;
            }
        }
        FALLTHROUGH;
    case SWOAK_SEQ_THAW_ICE:
        {
            int movetype;

            movetype = GetAdjustedMoveType(sp, sp->attack_client, sp->current_move_index); // new normalize checks

            sp->swoak_seq_no++;

            if (sp->defence_client != 0xFF)
            {
                if ((sp->battlemon[sp->defence_client].condition & STATUS_FLAG_FROZEN)
                 && ((sp->waza_status_flag & MOVE_STATUS_FLAG_FURY_CUTTER_MISS) == 0)
                 && (sp->defence_client != sp->attack_client)
                 && ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage))
                 && (sp->battlemon[sp->defence_client].hp)
                 && ((movetype == TYPE_FIRE) || (sp->current_move_index == MOVE_SCALD) || (sp->current_move_index == MOVE_STEAM_ERUPTION)) // scald can also melt opponents as of gen 6
                 && sp->battlemon[sp->attack_client].parental_bond_flag == 0)
                {
                    sp->client_work = sp->defence_client;
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_THAW_OUT);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    return;
                }
            }
        }
        FALLTHROUGH;
    case SWOAK_SEQ_CHECK_HEALING_ITEMS:
        {
            int client_no;
            int ret=0;
            int seq_no;

            while (sp->swoak_work < BattleWorkClientSetMaxGet(bw))
            {
                client_no = sp->turn_order[sp->swoak_work];
                if (sp->no_reshuffle_client & No2Bit(client_no))
                {
                    sp->swoak_work++;
                    continue;
                }

                sp->swoak_work++;

                if (HeldItemHealStatusCheck(bw, sp, client_no, &seq_no) == TRUE) // will also probably need this one too
                {
                    sp->client_work = client_no;
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq_no);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    ret = 1;
                    break;
                }
            }

            if (ret == 0)
            {
                sp->swoak_seq_no++;
                sp->swoak_work = 0;
            }
        }
        break;
    default:
        break;
    }
    sp->swoak_seq_no = 0;
    sp->swoak_work = 0;
    sp->server_seq_no = 32;
}
