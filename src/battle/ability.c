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
//int SwitchInAbilityCheck(void *bw, struct BattleStruct *sp);
//BOOL AreAnyStatsNotAtValue(struct BattleStruct *sp, int client, int value, BOOL excludeAccuracyEvasion);
//u8 BeastBoostGreatestStatHelper(struct BattleStruct *sp, u32 client);
BOOL MoveHitAttackerAbilityCheck(void *bw, struct BattleStruct *sp, int *seq_no);
//BOOL MoveHitDefenderAbilityCheck(void *bw, struct BattleStruct *sp, int *seq_no);
//u32 MoldBreakerAbilityCheck(struct BattleStruct *sp, int attacker, int defender, int ability);
BOOL SynchroniseAbilityCheck(void *bw, struct BattleStruct *sp, int server_seq_no);
BOOL ServerFlinchCheck(void *bw, struct BattleStruct *sp);
void ServerWazaOutAfterMessage(void *bw, struct BattleStruct *sp);
//u32 ServerWazaKoyuuCheck(void *bw, struct BattleStruct *sp);
void ServerDoPostMoveEffects(struct BattleSystem *bsys, struct BattleStruct *ctx);


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

    // Handle Sap Sipper
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_SAP_SIPPER) == TRUE)
    {
        if ((movetype == TYPE_GRASS) && (attacker != defender)) {
            scriptnum = SUB_SEQ_HANDLE_SAP_SIPPER;
        }
    }

    // Handle Wind Rider
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_WIND_RIDER) == TRUE)
    {
        if ((IsMoveWindMove(sp->current_move_index)) && (attacker != defender)) {
            scriptnum = SUB_SEQ_HANDLE_WIND_RIDER;
            sp->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP;
            sp->addeffect_type = ADD_STATUS_ABILITY;
            sp->state_client = defender;
            sp->battlerIdTemp = defender;
            //scriptnum = SUB_SEQ_BOOST_STATS;
        }
    }
	
    // Handle Lightning Rod
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_LIGHTNING_ROD) == TRUE)
    {
        if ((movetype == TYPE_ELECTRIC) && (attacker != defender))
        {
            scriptnum = SUB_SEQ_HANDLE_LIGHTNING_ROD_RAISE_SPATK;
        }
    }

    // Handle Storm Drain
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_STORM_DRAIN) == TRUE)
    {
        if ((movetype == TYPE_WATER) && (attacker != defender))
        {
            scriptnum = SUB_SEQ_HANDLE_LIGHTNING_ROD_RAISE_SPATK;
        }
    }

    // Handle Telepathy
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_TELEPATHY) == TRUE) {
        if (((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
        && ((sp->moveTbl[sp->current_move_index].power))
        && (attacker & 1) == (defender & 1) ) { // attacker and defender are on the same side
            scriptnum = SUB_SEQ_HANDLE_TELEPATHY;
        }
    }

    // TODO: Confirm location in-game
    // Handle Well Baked Body
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_WELL_BAKED_BODY) == TRUE) {
        if ((movetype == TYPE_FIRE)
        && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
        && ((sp->moveTbl[sp->current_move_index].power) || (sp->current_move_index == MOVE_WILL_O_WISP))
        && (attacker != defender)) {
            scriptnum = SUB_SEQ_ABSORB_AND_DEF_UP_2_STAGE;
        }
    }

    // TODO: Confirm location in-game
    // Handle Earth Eater
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_EARTH_EATER) == TRUE) {
        if ((movetype == TYPE_GROUND)
        && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
        && (sp->moveTbl[sp->current_move_index].power)) {
            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[defender].maxhp, 4);
            scriptnum = SUB_SEQ_ABILITY_HP_RESTORE;
        }
    }

    // TODO
    // Handle Wonder Guard

    // TODO: Confirm location in-game
    // handle good as gold
    /*if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_GOOD_AS_GOLD) == TRUE)
    {
        if (GetMoveSplit(sp, sp->current_move_index) == SPLIT_STATUS)
        {
            scriptnum = SUB_SEQ_HANDLE_JUST_FAIL;
        }
    } */

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
int LONG_CALL SwitchInAbilityCheck(void *bw, struct BattleStruct *sp)
{
    u32 ovyId, offset;
    int ret;
    BOOL (*internalFunc)(void *bw, struct BattleStruct *sp);

    u32 loadNeeded = IsOverlayLoaded(OVERLAY_BATTLECONTROLLER_MOVEEND) ? OVERLAY_BATTLECONTROLLER_MOVEEND : 0;

    if (loadNeeded)
        UnloadOverlayByID(OVERLAY_BATTLECONTROLLER_MOVEEND); // unload colliding overlay so that this can be loaded

    ovyId = OVERLAY_SWITCHINABILITYCHECK_SPECIFIC;
    offset = 0x023C0400 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (int (*)(void *bw, struct BattleStruct *sp))(offset);
    ret = internalFunc(bw, sp);
    UnloadOverlayByID(ovyId);

    if (loadNeeded)
        HandleLoadOverlay(loadNeeded, 2);

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
                && (IsContactBeingMade(bw, sp))
                && (CheckSubstitute(sp, sp->defence_client) == FALSE)
                && (BattleRand(bw) % 10 < 3))
            {
                sp->addeffect_type = ADD_STATUS_ABILITY;
                sp->state_client = sp->defence_client;
                sp->battlerIdTemp = sp->attack_client;
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
u32 LONG_CALL MoldBreakerAbilityCheck(struct BattleStruct *sp, int attacker, int defender, u32 ability)
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
        if((GetBattlerAbility(sp, defender) == ability) && (sp->oneSelfFlag[attacker].moldBreakerFlag == 0))
        {
            sp->oneSelfFlag[attacker].moldBreakerFlag = 1;
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
BOOL LONG_CALL SynchroniseAbilityCheck(void *bw, struct BattleStruct *sp, int server_seq_no)
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
        sp->battlerIdTemp = sp->defence_client;
        sp->state_client = sp->attack_client;
        ret=TRUE;
    }
    else if((GetBattlerAbility(sp,sp->attack_client) == ABILITY_SYNCHRONIZE) && //attacker side check
       (sp->attack_client == sp->state_client) &&
       (sp->server_status_flag & SERVER_STATUS_FLAG_SYNCHRONIZE))
    {
        sp->battlerIdTemp = sp->attack_client;
        sp->state_client = sp->defence_client;
        ret = TRUE;
    }

    if (ret == TRUE)
    {
        if(sp->battlemon[sp->battlerIdTemp].condition & STATUS_POISON_ALL) {
            seq_no = SUB_SEQ_APPLY_POISON;
        }
        else if(sp->battlemon[sp->battlerIdTemp].condition & STATUS_BURN) {
            seq_no = SUB_SEQ_APPLY_BURN;
        }
        else if(sp->battlemon[sp->battlerIdTemp].condition & STATUS_PARALYSIS) {
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
        sp->battlerIdTemp = sp->defence_client;
        sp->state_client = sp->attack_client;
        ret = TRUE;
    }
    else if((HeldItemHoldEffectGet(sp,sp->attack_client) == HOLD_EFFECT_RECIPROCATE_INFAT) &&
            (sp->attack_client == sp->state_client) &&
            (sp->oneSelfFlag[sp->attack_client].status_flag & SELF_STATUS_FLAG_ATTRACT))
    {
        sp->battlerIdTemp = sp->attack_client;
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
    SEQ_NORMAL_DAMAGE_REDUCTION_BERRY_MESSAGE,
    SEQ_NORMAL_FORM_CHG_CHECK,
    SEQ_NORMAL_IKARI_CHECK,
    SEQ_NORMAL_ATTACKER_ABILITY_CHECK,
    SEQ_NORMAL_DEFENDER_ABILITY_CHECK,
    SEQ_NORMAL_FLINCH_CHECK,

    SEQ_LOOP_CRITICAL_MSG = 0,
    SEQ_LOOP_ADD_STATUS_MSG,
    SEQ_LOOP_DAMAGE_REDUCTION_BERRY_MESSAGE,
    SEQ_LOOP_FORM_CHG_CHECK,
    SEQ_LOOP_IKARI_CHECK,
    SEQ_LOOP_ATTACKER_ABILITY_CHECK,
    SEQ_LOOP_DEFENDER_ABILITY_CHECK,
    SEQ_LOOP_MOVE_STATUS_MSG,
    SEQ_LOOP_FLINCH_CHECK,
};

// TODO: Come back here for move performance modernisation
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
        case SEQ_NORMAL_DAMAGE_REDUCTION_BERRY_MESSAGE:
            sp->swoam_seq_no++;
            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_TYPE_RESIST_BERRIES_MESSAGE);
            sp->next_server_seq_no = sp->server_seq_no;
            sp->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return;
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
        case SEQ_LOOP_DAMAGE_REDUCTION_BERRY_MESSAGE:
            sp->swoam_seq_no++;
            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_TYPE_RESIST_BERRIES_MESSAGE);
            sp->next_server_seq_no = sp->server_seq_no;
            sp->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return;
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

    if (((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
     && (sp->oneTurnFlag[sp->defence_client].magic_cort_flag
      // if magic bounce then activate only if it hasn't already activated this move
      || (GetBattlerAbility(sp, sp->defence_client) == ABILITY_MAGIC_BOUNCE && !sp->magicBounceTracker))
     && (sp->moveTbl[sp->current_move_index].flag & FLAG_MAGIC_COAT))
    {
        sp->oneTurnFlag[sp->defence_client].magic_cort_flag = 0;
        sp->magicBounceTracker = TRUE;
        sp->waza_no_mamoru[sp->attack_client] = 0;
        sp->waza_no_old[sp->attack_client] = sp->moveNoTemp;
        sp->waza_no_last = sp->moveNoTemp;
        sp->server_status_flag |= (BATTLE_STATUS_NO_MOVE_SET);
        LoadBattleSubSeqScript(sp, 1, SUB_SEQ_MAGIC_COAT);
        sp->next_server_seq_no = sp->server_seq_no;
        sp->server_seq_no = 22;
        CheckPressureForPPDecrease(sp, sp->defence_client, sp->attack_client);
        return TRUE;
    }
    for(i = 0; i < client_set_max; i++)
    {
        client_no = sp->turnOrder[i];
        if (((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
         && (sp->oneTurnFlag[client_no].snatchFlag)
         && (sp->moveTbl[sp->current_move_index].flag & FLAG_SNATCH))
        {
            sp->battlerIdTemp = client_no;
            sp->oneTurnFlag[client_no].snatchFlag=0;
            if ((sp->server_status_flag & (BATTLE_STATUS_NO_MOVE_SET)) == 0)
            {
                sp->waza_no_mamoru[sp->attack_client] = 0;
                sp->waza_no_old[sp->attack_client] = sp->moveNoTemp;
                sp->waza_no_last = sp->moveNoTemp;
                sp->server_status_flag |= (BATTLE_STATUS_NO_MOVE_SET);
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


/**
 *  @brief do post move effects--synchronize, held item effects, ice thawing from move usage, etc.
 *         no other abilities here though.  primarily here to add scald melting frozen battlers
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 */
//u32 ServerDoPostMoveEffects_restoreOverlay = 0;
void ServerDoPostMoveEffects(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    u32 ovyId = OVERLAY_SERVERDOPOSTMOVEEFFECTS, offset = 0x021FF900 | 1, ServerDoPostMoveEffects_restoreOverlay = 0;

    void (*internalFunc)(struct BattleSystem *bsys, struct BattleStruct *ctx);

    // if ctx->sba_seq_no == SBA_RESET_DEFIANT before func is called, it is the first call
    //if (ctx->wb_seq_no == BEFORE_MOVE_START_FLAG_UNLOAD)
    {
        if (IsOverlayLoaded(OVERLAY_WIFI)) { // we are taking overlay 0's place
            ServerDoPostMoveEffects_restoreOverlay = TRUE;
            UnloadOverlayByID(OVERLAY_WIFI);
        } else if (IsOverlayLoaded(OVERLAY_POKEDEX)) {
            ServerDoPostMoveEffects_restoreOverlay = OVERLAY_POKEDEX;
            UnloadOverlayByID(OVERLAY_POKEDEX);
        }

#ifdef DEBUG_BEFORE_MOVE_LOGIC
        debug_printf("Load OVERLAY_SERVERDOPOSTMOVEEFFECTS\n");
#endif

        //offset = 0x023C0400 | 1;
        HandleLoadOverlay(ovyId, 2);
    }
    internalFunc = (void (*)(struct BattleSystem *bsys, struct BattleStruct *ctx))(offset);
    internalFunc(bsys, ctx);

    //if (ctx->swoak_seq_no >= SWOAK_SEQ_CLEAR_MAGIC_COAT) // can finally unload the overlay
    {
        UnloadOverlayByID(ovyId); // this needs to unload regardless of if dex overlay was unloaded
        if (ServerDoPostMoveEffects_restoreOverlay) {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("Restoring overlay %d...\n", (ServerDoPostMoveEffects_restoreOverlay == 1 ? OVERLAY_WIFI : ServerDoPostMoveEffects_restoreOverlay));
#endif
            HandleLoadOverlay((ServerDoPostMoveEffects_restoreOverlay == 1 ? OVERLAY_WIFI : ServerDoPostMoveEffects_restoreOverlay), 2);
        }
    }

    ctx->swoak_seq_no = 0; // reset according to the scriptures
}
