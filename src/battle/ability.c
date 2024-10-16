#include "../../include/battle.h"
#include "../../include/debug.h"
#include "../../include/overlay.h"
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
int SwitchInAbilityCheck(void *bw, struct BattleStruct *sp);
//BOOL AreAnyStatsNotAtValue(struct BattleStruct *sp, int client, int value, BOOL excludeAccuracyEvasion);
BOOL MummyAbilityCheck(struct BattleStruct *sp);
BOOL CanPickpocketStealClientItem(struct BattleStruct *sp, int client_no);
//u8 BeastBoostGreatestStatHelper(struct BattleStruct *sp, u32 client);
BOOL MoveHitAttackerAbilityCheck(void *bw, struct BattleStruct *sp, int *seq_no);
//BOOL MoveHitDefenderAbilityCheck(void *bw, struct BattleStruct *sp, int *seq_no);
//u32 MoldBreakerAbilityCheck(struct BattleStruct *sp, int attacker, int defender, int ability);
BOOL SynchroniseAbilityCheck(void *bw, struct BattleStruct *sp, int server_seq_no);
BOOL ServerFlinchCheck(void *bw, struct BattleStruct *sp);
void ServerWazaOutAfterMessage(void *bw, struct BattleStruct *sp);
//u32 ServerWazaKoyuuCheck(void *bw, struct BattleStruct *sp);
void ServerDoPostMoveEffects(void *bw, struct BattleStruct *sp);

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
        if (IsMoveSoundBased(sp->current_move_index))
        {
            scriptnum = SUB_SEQ_SOUNDPROOF;
        }
    }

    // handle bulletproof
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_BULLETPROOF) == TRUE)
    {
        if (IsElementInArray(BulletproofMoveList, (u16 *)&sp->current_move_index, NELEMS(BulletproofMoveList), sizeof(BulletproofMoveList[0])))
        {
            scriptnum = SUB_SEQ_SOUNDPROOF;
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

    // handle well baked body
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_WELL_BAKED_BODY) == TRUE)
    {
        if ((movetype == TYPE_FIRE) && (attacker != defender))
        {
            scriptnum = SUB_SEQ_ABSORB_AND_DEF_UP_2_STAGE;
        }
    }

    // handle earth eater
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_EARTH_EATER) == TRUE)
    {
        if ((movetype == TYPE_GROUND) && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0) && (sp->moveTbl[sp->current_move_index].power))
        {
            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[defender].maxhp, 4);
            scriptnum = SUB_SEQ_ABILITY_HP_RESTORE;
        }
    }

    // handle queenly majesty, dazzling & armor tail
    if ((CheckSideAbility(gBattleSystem, sp, CHECK_ABILITY_SAME_SIDE_HP, defender, ABILITY_QUEENLY_MAJESTY)
      || CheckSideAbility(gBattleSystem, sp, CHECK_ABILITY_SAME_SIDE_HP, defender, ABILITY_DAZZLING)
      || CheckSideAbility(gBattleSystem, sp, CHECK_ABILITY_SAME_SIDE_HP, defender, ABILITY_ARMOR_TAIL))
     && GetBattlerAbility(sp, attacker) != ABILITY_MOLD_BREAKER
     && GetBattlerAbility(sp, attacker) != ABILITY_TERAVOLT
     && GetBattlerAbility(sp, attacker) != ABILITY_TURBOBLAZE)
    {
        if (adjustedMoveHasPositivePriority(sp, attacker) && CurrentMoveShouldNotBeExemptedFromPriorityBlocking(sp, attacker, defender)) 
        {
            scriptnum = SUB_SEQ_CANNOT_USE_MOVE;
        }
    }

    // handle good as gold
    /*if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_GOOD_AS_GOLD) == TRUE)
    {
        if (GetMoveSplit(sp, sp->current_move_index) == SPLIT_STATUS)
        {
            scriptnum = SUB_SEQ_HANDLE_JUST_FAIL;
        }
    } */

    // Handle Psychic Terrain
    // Block any natural priority move or a move made priority by an ability, if the terrain is Psychic Terrain
    // Courtesy of Dray (https://github.com/Drayano60)
    if (sp->terrainOverlay.type == PSYCHIC_TERRAIN && sp->terrainOverlay.numberOfTurnsLeft > 0 && IsClientGrounded(sp, defender)) {
        if (adjustedMoveHasPositivePriority(sp, attacker) && CurrentMoveShouldNotBeExemptedFromPriorityBlocking(sp, attacker, defender)) {
            scriptnum = SUB_SEQ_HANDLE_PSYCHIC_TERRAIN_PROTECTION;
        }
    }

    // Handle Extremely Harsh Sunlight and Heavy Rain
    if (!CheckSideAbility(gBattleSystem, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) && !CheckSideAbility(gBattleSystem, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK)) {
        if ((sp->field_condition & WEATHER_EXTREMELY_HARSH_SUNLIGHT) && (movetype == TYPE_WATER)) {
            scriptnum = SUB_SEQ_CANCEL_WATER_MOVE;
        }

        if ((sp->field_condition & WEATHER_HEAVY_RAIN) && (movetype == TYPE_FIRE)) {
            scriptnum = SUB_SEQ_CANCEL_FIRE_MOVE;
        }
    }

    return scriptnum;
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
    u32 ovyId, offset;
    int ret;
    BOOL (*internalFunc)(void *bw, struct BattleStruct *sp);

    ovyId = OVERLAY_SWITCHINABILITYCHECK_SPECIFIC;
    offset = 0x023C0400 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (int (*)(void *bw, struct BattleStruct *sp))(offset);
    ret = internalFunc(bw, sp);
    UnloadOverlayByID(ovyId);

    return ret;
}

/**
 *  @brief check if any specific stat stage is not at the passed value
 *
 *  @param sp global battle structure
 *  @param client battler whose stat stages to check
 *  @param value to check for.  made flexible for every circumstance, i.e. Moody needs to check if any stat can be raised/lowered
 *  @return TRUE if there is a stat stage not at the passed value; FALSE otherwise (yes accuracy and evasion count too)
 */
BOOL LONG_CALL AreAnyStatsNotAtValue(struct BattleStruct *sp, int client, int value, BOOL excludeAccuracyEvasion)
{
    int counter = excludeAccuracyEvasion ? 5 : 7;

    for (int i = 0; i < counter; i++)
    {
        if (sp->battlemon[client].states[i] != value)
        {
            return TRUE;
        }
    }

    return FALSE;
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
                    sp->oneTurnFlag[sp->attack_client].numberOfKOs++;
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
                    sp->oneTurnFlag[sp->attack_client].numberOfKOs++;
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
                    sp->oneTurnFlag[sp->attack_client].numberOfKOs++;
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
                    sp->oneTurnFlag[sp->attack_client].numberOfKOs++;
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
BOOL LONG_CALL MoveHitDefenderAbilityCheck(void *bw, struct BattleStruct *sp, int *seq_no)
{
    u32 ovyId, ret, offset;
    BOOL (*internalFunc)(void *bw, struct BattleStruct *sp, int *seq_no);

    ovyId = OVERLAY_MOVEHITDEFENDERABILITYCHECK_SPECIFIC;
    offset = 0x023C0400 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (BOOL (*)(void *bw, struct BattleStruct *sp, int *seq_no))(offset);
    ret = internalFunc(bw, sp, seq_no);
    UnloadOverlayByID(ovyId);

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
u32 LONG_CALL MoldBreakerAbilityCheck(struct BattleStruct *sp, int attacker, int defender, int ability)
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
 *  @brief check if the move should get the flinch boost from king's rock
 *
 *  @param sp global battle structure
 *  @param move move index
 *  @return TRUE if king's rock should affect the move, FALSE otherwise
 */
BOOL IsMoveAffectedByKingsRock(struct BattleStruct *sp, u32 move)
{
    if (sp->moveTbl[move].power != 0)
    {
        u32 effect = sp->moveTbl[move].effect;
        switch (effect)
        {
        case MOVE_EFFECT_FLINCH_BURN_HIT:
        case MOVE_EFFECT_FLINCH_FREEZE_HIT:
        case MOVE_EFFECT_FLINCH_PARALYZE_HIT:
        case MOVE_EFFECT_HIT_TWICE_AND_FLINCH:
        case MOVE_EFFECT_FLINCH_HIT:
        case MOVE_EFFECT_CHARGE_TURN_HIGH_CRIT_FLINCH:
        case MOVE_EFFECT_FLINCH_DOUBLE_DAMAGE_FLY_OR_BOUNCE:
        case MOVE_EFFECT_FLINCH_MINIMIZE_DOUBLE_HIT:
        case MOVE_EFFECT_ALWAYS_FLINCH_FIRST_TURN_ONLY:
            effect = FALSE;
            break;
        default:
            effect = TRUE;
            break;
        }
        return effect;
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
    u32 sereneGraceShift = 0; // it's less cycles this way okay probably

    heldeffect = HeldItemHoldEffectGet(sp, sp->attack_client);
    atk = HeldItemAtkGet(sp, sp->attack_client, 0);

    if (GetBattlerAbility(sp, sp->attack_client) == ABILITY_STENCH) // stench adds 10% flinch chance
    {
        atk += 10;
        heldeffect = HOLD_EFFECT_SOMETIMES_FLINCH; // doesn't permanently change the hold effect, just for this function
    }

    if (GetBattlerAbility(sp, sp->attack_client) == ABILITY_SERENE_GRACE)
    {
        sereneGraceShift = 1;
    }

    if (sp->defence_client != 0xFF)
    {
        if ((heldeffect == HOLD_EFFECT_SOMETIMES_FLINCH)
         && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
         && ((sp->oneSelfFlag[sp->defence_client].physical_damage)
          || (sp->oneSelfFlag[sp->defence_client].special_damage))
         && (((BattleRand(bw) % 100) << sereneGraceShift) < atk)
         //&& (sp->moveTbl[sp->current_move_index].flag & FLAG_KINGS_ROCK)
         && IsMoveAffectedByKingsRock(sp, sp->current_move_index)
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
u32 LONG_CALL ServerWazaKoyuuCheck(void *bw, struct BattleStruct *sp)
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
        client_no = sp->turnOrder[i];
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
    DynamicSortClientExecutionOrder(bw, sp, FALSE);
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
        if (TryUseHeldItem(bw, sp, sp->attack_client) == TRUE) // will eventually need TryUseHeldItem anyway.  generic berry function thing
            return;
        FALLTHROUGH;
    case SWOAK_SEQ_CHECK_HELD_ITEM_EFFECT_DEFENDER:
        sp->swoak_seq_no++;
        if (sp->defence_client != 0xFF)
        {
            if (TryUseHeldItem(bw, sp, sp->defence_client) == TRUE)
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
                 && sp->oneTurnFlag[sp->attack_client].parental_bond_flag == 0)
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
                client_no = sp->turnOrder[sp->swoak_work];
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
