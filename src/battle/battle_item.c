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

// this file's function declarations
//u32 MoveHitUTurnHeldItemEffectCheck(void *bw, struct BattleStruct *sp, int *seq_no);
u32 ServerWazaHitAfterCheckAct(void *bw, struct BattleStruct *sp);
BOOL CheckDefenderItemEffectOnHit(void *bw, struct BattleStruct *sp, int *seq_no);
BOOL CheckItemByThief(u16 item);

/**
 *  @brief run an item effects that happen when u-turn is being used
 *         if you want to edit a defender's held item effect triggering after being hit, go to CheckDefenderItemEffectOnHit
 *         if you want to edit an attacker's held item effect triggering after hitting using a move, go to ServerWazaHitAfterCheckAct
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param seq_no subscript to load if TRUE is returned
 *  @return TRUE if there's an item effect to run in *seq_no; FALSE otherwise
 */
u32 LONG_CALL MoveHitUTurnHeldItemEffectCheck(void *bw, struct BattleStruct *sp, int *seq_no)
{
    u32 ret;
    int atk_hold_eff;
    int atk_item_param;
    int def_hold_eff;
    int def_item_param;
    int atk_side;

    ret = FALSE;

    atk_hold_eff = HeldItemHoldEffectGet(sp, sp->attack_client);
    atk_item_param = HeldItemAtkGet(sp,sp->attack_client, ATK_CHECK_NORMAL);

    def_hold_eff = HeldItemHoldEffectGet(sp, sp->defence_client);
    def_item_param = HeldItemAtkGet(sp,sp->defence_client, ATK_CHECK_NORMAL);

    atk_side = IsClientEnemy(bw, sp->attack_client);

    if ((atk_hold_eff == HOLD_EFFECT_HP_RESTORE_ON_DMG) // shell bell
     && (sp->server_status_flag & SERVER_STATUS_FLAG_MOVE_HIT)
     && (sp->oneSelfFlag[sp->attack_client].shell_bell_damage)
     && (sp->attack_client != sp->defence_client)
     && (sp->battlemon[sp->attack_client].hp < (s32)sp->battlemon[sp->attack_client].maxhp)
     && (sp->battlemon[sp->attack_client].hp)
     && !(GetBattlerAbility(sp, sp->attack_client) == ABILITY_SHEER_FORCE && sp->battlemon[sp->attack_client].sheer_force_flag == 1)) // sheer force prevents shell bell from activating
    {
        sp->hp_calc_work = BattleDamageDivide(sp->oneSelfFlag[sp->attack_client].shell_bell_damage * -1, atk_item_param);
        sp->battlerIdTemp = sp->attack_client;
        seq_no[0] = SUB_SEQ_ITEM_HP_GRADUAL;
        ret = TRUE;
    }

    if ((atk_hold_eff == HOLD_EFFECT_HP_DRAIN_ON_ATK) // life orb
     && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
     && (sp->server_status_flag & SERVER_STATUS_FLAG_MOVE_HIT)
     && (GetMoveSplit(sp, sp->current_move_index) != SPLIT_STATUS)
     && (sp->battlemon[sp->attack_client].hp)
     && !(GetBattlerAbility(sp, sp->attack_client) == ABILITY_SHEER_FORCE && sp->battlemon[sp->attack_client].sheer_force_flag == 1)) // sheer force prevents life orb from activating
    {
        sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * -1, 10);
        sp->battlerIdTemp = sp->attack_client;
        seq_no[0] = SUB_SEQ_ITEM_HP_LOSS;
        ret = TRUE;
    }

    if ((def_hold_eff == HOLD_EFFECT_RECOIL_PHYSICAL) // jaboca berry
     && (sp->battlemon[sp->attack_client].hp)
     && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
     && (sp->oneSelfFlag[sp->defence_client].physical_damage))
    {
        sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * -1, def_item_param);
        seq_no[0] = SUB_SEQ_ITEM_DAMAGE_BACK;
        ret = TRUE;
    }

    if ((def_hold_eff == HOLD_EFFECT_DAMAGE_ON_CONTACT) // Rocky Helmet
     && (sp->battlemon[sp->attack_client].hp)
     && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
     // Attacker is not holding an item that prevents contact effects, e.g. Protective Pads
     && (HeldItemHoldEffectGet(sp, sp->attack_client) != HOLD_EFFECT_PREVENT_CONTACT_EFFECTS)
     // Damage was dealt
     && ((sp->oneSelfFlag[sp->defence_client].physical_damage)
        || (sp->oneSelfFlag[sp->defence_client].special_damage))
     // Attacker used a move that makes contact
     && (IsContactBeingMade(GetBattlerAbility(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->defence_client), sp->current_move_index, sp->moveTbl[sp->current_move_index].flag)))
    {
        sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * -1, def_item_param);
        seq_no[0] = SUB_SEQ_ITEM_DAMAGE_BACK;
        ret = TRUE;
    }

    if ((def_hold_eff == HOLD_EFFECT_DMG_USER_CONTACT_XFR) // sticky barb
     && (sp->battlemon[sp->attack_client].hp)
        && (sp->battlemon[sp->attack_client].item == 0)
        && ((sp->scw[atk_side].knockoff_item & (1 << sp->sel_mons_no[sp->attack_client])) == 0)
        && ((sp->oneSelfFlag[sp->defence_client].physical_damage)
      || (sp->oneSelfFlag[sp->defence_client].special_damage))
        && (IsContactBeingMade(GetBattlerAbility(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->defence_client), sp->current_move_index, sp->moveTbl[sp->current_move_index].flag)))
    {
        seq_no[0] = SUB_SEQ_ITEM_GIVE_STICKY_BARB;
        ret = TRUE;
    }

    return ret;
}


enum
{
	SWHAC_RAGE_ATTACK_CHECK=0,
	SWHAC_HELD_ITEM_SHELL_BELL,
	SWHAC_HELD_ITEM_LIFE_ORB,
	SWHAC_END
};

/**
 *  @brief handle item effects for an attacker's items on move hit.  loads the subscript and returns to parent
 *         this function is for an attacker's held item effect triggering after hitting with a move
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return TRUE if a battle subscript has been loaded and should be run; FALSE otherwise
 */
u32 LONG_CALL ServerWazaHitAfterCheckAct(void *bw UNUSED, struct BattleStruct *sp)
{
    /*
    int ret;
    int client_set_max UNUSED;
    int hold_effect;
    int hold_effect_param;

    ret = 0;

    client_set_max = BattleWorkClientSetMaxGet(bw);

    hold_effect = HeldItemHoldEffectGet(sp, sp->attack_client);
    hold_effect_param = HeldItemAtkGet(sp, sp->attack_client, ATK_CHECK_NORMAL);
    */
    //TODO confirm?
    if (CheckIfAnyoneShouldFaint(sp, sp->server_seq_no, sp->server_seq_no, 1) == TRUE)
    {
        return TRUE;
    }

    return FALSE;
 /* do
    {
        switch(sp->swhac_seq_no)
        {
        case SWHAC_RAGE_ATTACK_CHECK:
            if ((sp->battlemon[sp->attack_client].condition2 & STATUS2_RAGE) && (sp->current_move_index != MOVE_RAGE))
            {
                sp->battlemon[sp->attack_client].condition2 &= ~(STATUS2_RAGE);
            }
            sp->swhac_seq_no++;

            if (GetBattlerAbility(sp,sp->attack_client) == ABILITY_SHEER_FORCE && sp->battlemon[sp->attack_client].sheer_force_flag == 1) // skip over shell bell and life orb if sheer force is active
                sp->swhac_seq_no = SWHAC_END;

            break;

        case SWHAC_HELD_ITEM_SHELL_BELL:
            if(sp->defence_client != 0xFF)
            {
                if ((hold_effect == HOLD_EFFECT_HP_RESTORE_ON_DMG)
                 && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                 && (sp->server_status_flag & SERVER_STATUS_FLAG_MOVE_HIT)
                 && (sp->oneSelfFlag[sp->attack_client].shell_bell_damage)
                 && (sp->attack_client != sp->defence_client)
                 && (sp->battlemon[sp->attack_client].hp < (s32)sp->battlemon[sp->attack_client].maxhp)
                 && (sp->battlemon[sp->attack_client].hp))
                {
                    sp->hp_calc_work = BattleDamageDivide(sp->oneSelfFlag[sp->attack_client].shell_bell_damage * -1, hold_effect_param);
                    sp->battlerIdTemp=sp->attack_client;
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ITEM_HP_GRADUAL);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    ret = 1;
                }
            }
            sp->swhac_seq_no++;
            break;
        case SWHAC_HELD_ITEM_LIFE_ORB:
            if ((hold_effect == HOLD_EFFECT_HP_DRAIN_ON_ATK)
             && (GetBattlerAbility(sp,sp->attack_client) != ABILITY_MAGIC_GUARD)
             && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
             && (sp->server_status_flag & SERVER_STATUS_FLAG_MOVE_HIT)
             && (GetMoveSplit(sp, sp->current_move_index) != SPLIT_STATUS)
             && (sp->battlemon[sp->attack_client].hp))
            {
                sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * -1, 10);
                sp->battlerIdTemp = sp->attack_client;
                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ITEM_HP_LOSS);
                sp->next_server_seq_no = sp->server_seq_no;
                sp->server_seq_no = 22;
                ret = 1;
            }
            sp->swhac_seq_no++;
            break;
        case SWHAC_END:
            sp->swhac_seq_no = 0;
            sp->swhac_work = 0;
            ret = 2;
            break;        
        }
    }
    while (ret == 0);

    return (ret == 1);
    */
}


// thanks to Lhea for this function

/**
 *  @brief handle item effects for a defender's items on move hit.  loads into *seq_no
 *         this function is for the defender's held item effect triggering after hitting with a move
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param seq_no subscript to load if TRUE is returned
 *  @return TRUE if there's an item effect to run in *seq_no; FALSE otherwise
 */
BOOL LONG_CALL CheckDefenderItemEffectOnHit(void *bw, struct BattleStruct *sp, int *seq_no)
{
    u32 ovyId, offset;
    BOOL ret;
    BOOL (*internalFunc)(void *bw, struct BattleStruct *sp, int *seq_no);

    ovyId = OVERLAY_CHECKDEFENDERITEMEFFECTONHIT;
    offset = 0x023C0400 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (int (*)(void *bw, struct BattleStruct *sp, int *seq_no))(offset);
    ret = internalFunc(bw, sp, seq_no);
    UnloadOverlayByID(ovyId);

    return ret;
}

/**
 *  @brief check if the item can be stolen by thief or not
 *
 *  @param item item index
 *  @return TRUE if the item can not be stolen; FALSE otherwise
 */
BOOL CheckItemByThief(u16 item)
{
    if (item == ITEM_GRISEOUS_ORB || IS_ITEM_MEGA_STONE(item))
        return TRUE;
    return FALSE;
}

BOOL LONG_CALL GetHeldItemStatusRecoverySubscript(struct BattleStruct *ctx, int battlerId, int *seq_no)
{
    int itemHeldEffect = HeldItemHoldEffectGet(ctx, battlerId);
    *seq_no = 0;

    switch (itemHeldEffect) {
    case HOLD_EFFECT_PRZ_RESTORE:
        if (ctx->battlemon[battlerId].condition & STATUS_PARALYSIS) {
            *seq_no = SUB_SEQ_ITEM_RECOVER_PRZ;
        }
        break;
    case HOLD_EFFECT_SLP_RESTORE:
        if (ctx->battlemon[battlerId].condition & STATUS_SLEEP) {
            *seq_no = SUB_SEQ_ITEM_RECOVER_SLP;
        }
        break;
    case HOLD_EFFECT_PSN_RESTORE:
        if (ctx->battlemon[battlerId].condition & STATUS_POISON_ALL) {
            *seq_no = SUB_SEQ_ITEM_RECOVER_PSN;
        }
        break;
    case HOLD_EFFECT_BRN_RESTORE:
        if (ctx->battlemon[battlerId].condition & STATUS_BURN) {
            *seq_no = SUB_SEQ_ITEM_RECOVER_BRN;
        }
        break;
    case HOLD_EFFECT_FRZ_RESTORE:
        if (ctx->battlemon[battlerId].condition & STATUS_FREEZE) {
            *seq_no = SUB_SEQ_ITEM_RECOVER_FRZ;
        }
        break;
    case HOLD_EFFECT_CONFUSE_RESTORE:
        if (ctx->battlemon[battlerId].condition2 & STATUS2_CONFUSION) {
            *seq_no = SUB_SEQ_ITEM_RECOVER_CNF;
        }
        break;
    case HOLD_EFFECT_STATUS_RESTORE:
        if ((ctx->battlemon[battlerId].condition & STATUS_ALL) || (ctx->battlemon[battlerId].condition2 & STATUS2_CONFUSION)) {
            if (ctx->battlemon[battlerId].condition & STATUS_PARALYSIS) {
                *seq_no = SUB_SEQ_ITEM_RECOVER_PRZ;
            }
            if (ctx->battlemon[battlerId].condition & STATUS_SLEEP) {
                *seq_no = SUB_SEQ_ITEM_RECOVER_SLP;
            }
            if (ctx->battlemon[battlerId].condition & STATUS_POISON_ALL) {
                *seq_no = SUB_SEQ_ITEM_RECOVER_PSN;
            }
            if (ctx->battlemon[battlerId].condition & STATUS_BURN) {
                *seq_no = SUB_SEQ_ITEM_RECOVER_BRN;
            }
            if (ctx->battlemon[battlerId].condition & STATUS_FREEZE) {
                *seq_no = SUB_SEQ_ITEM_RECOVER_FRZ;
            }
            if (ctx->battlemon[battlerId].condition2 & STATUS2_CONFUSION) {
                *seq_no = SUB_SEQ_ITEM_RECOVER_CNF;
            }
            if ((ctx->battlemon[battlerId].condition & STATUS_ALL) && (ctx->battlemon[battlerId].condition2 & STATUS2_CONFUSION)) {
                *seq_no = SUB_SEQ_ITEM_RECOVER_ALL;
            }
        }
        break;
    default:
        break;
    }

    return (*seq_no != 0);
}


BOOL LONG_CALL TryUseHeldItem(void *bw, struct BattleStruct *ctx, int battlerId)
{
    BOOL ret = FALSE;
    int script;
    int itemHeldEffect;
    int boost;

    itemHeldEffect = HeldItemHoldEffectGet(ctx, battlerId);
    boost = HeldItemAtkGet(ctx, battlerId, ATK_CHECK_NORMAL);
    BOOL hpLowerThan50 = (ctx->battlemon[battlerId].hp <= (s32)(ctx->battlemon[battlerId].maxhp) / 2);

    if (ctx->battlemon[battlerId].hp) {
        switch (itemHeldEffect) {
        case HOLD_EFFECT_HP_RESTORE: // oran berry, berry juice
            if (hpLowerThan50) {
                ctx->hp_calc_work = boost;
                script = SUB_SEQ_ITEM_HP_RESTORE;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_HP_PCT_RESTORE: // sitrus berry
            if (hpLowerThan50) {
                ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp * boost, 100);
                script = SUB_SEQ_ITEM_HP_RESTORE;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PP_RESTORE: // leppa berry
        {
            int index;
            for (index = 0; index < CLIENT_MAX; index++) {
                if (ctx->battlemon[battlerId].move[index] && !ctx->battlemon[battlerId].pp[index]) {
                    break;
                }
            }
            if (index != CLIENT_MAX) {
                BattleMon_AddVar(&ctx->battlemon[battlerId], MON_DATA_MOVE1PP + index, boost);
                CopyBattleMonToPartyMon(bw, ctx, battlerId);
                ctx->waza_work = ctx->battlemon[battlerId].move[index];
                script = SUB_SEQ_ITEM_PP_RESTORE;
                ret = TRUE;
            }
            break;
        }
        case HOLD_EFFECT_PRZ_RESTORE:
        case HOLD_EFFECT_SLP_RESTORE:
        case HOLD_EFFECT_PSN_RESTORE:
        case HOLD_EFFECT_BRN_RESTORE:
        case HOLD_EFFECT_FRZ_RESTORE:
        case HOLD_EFFECT_CONFUSE_RESTORE:
        case HOLD_EFFECT_STATUS_RESTORE:
            ret = GetHeldItemStatusRecoverySubscript(ctx, battlerId, &script);
            break;
        case HOLD_EFFECT_HP_RESTORE_SPICY: // figy berry
            if (hpLowerThan50) {
                ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp, boost);
                ctx->msg_work = 0;
                if (GetFlavorPreferenceFromPID(ctx->battlemon[battlerId].personal_rnd, FLAVOR_SPICY) == -1) {
                    script = SUB_SEQ_ITEM_HP_RESTORE_CNF;
                } else {
                    script = SUB_SEQ_ITEM_HP_RESTORE;
                }
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_HP_RESTORE_DRY: // wiki berry
            if (hpLowerThan50) {
                ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp, boost);
                ctx->msg_work = 1;
                if (GetFlavorPreferenceFromPID(ctx->battlemon[battlerId].personal_rnd, FLAVOR_DRY) == -1) {
                    script = SUB_SEQ_ITEM_HP_RESTORE_CNF;
                } else {
                    script = SUB_SEQ_ITEM_HP_RESTORE;
                }
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_HP_RESTORE_SWEET: // mago berry
            if (hpLowerThan50) {
                ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp, boost);
                ctx->msg_work = 2;
                if (GetFlavorPreferenceFromPID(ctx->battlemon[battlerId].personal_rnd, FLAVOR_SWEET) == -1) {
                    script = SUB_SEQ_ITEM_HP_RESTORE_CNF;
                } else {
                    script = SUB_SEQ_ITEM_HP_RESTORE;
                }
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_HP_RESTORE_BITTER: // aguav berry
            if (hpLowerThan50) {
                ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp, boost);
                ctx->msg_work = 3;
                if (GetFlavorPreferenceFromPID(ctx->battlemon[battlerId].personal_rnd, FLAVOR_BITTER) == -1) {
                    script = SUB_SEQ_ITEM_HP_RESTORE_CNF;
                } else {
                    script = SUB_SEQ_ITEM_HP_RESTORE;
                }
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_HP_RESTORE_SOUR: // iapapa berry
            if (hpLowerThan50) {
                ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp, boost);
                ctx->msg_work = 4;
                if (GetFlavorPreferenceFromPID(ctx->battlemon[battlerId].personal_rnd, FLAVOR_SOUR) == -1) {
                    script = SUB_SEQ_ITEM_HP_RESTORE_CNF;
                } else {
                    script = SUB_SEQ_ITEM_HP_RESTORE;
                }
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PINCH_ATK_UP: // liechi berry
            if (GetBattlerAbility(ctx, battlerId) == ABILITY_GLUTTONY) {
                boost /= 2;
            }
            if (ctx->battlemon[battlerId].hp <= (s32)(ctx->battlemon[battlerId].maxhp) / boost && ctx->battlemon[battlerId].states[1] < SUB_SEQ_BOOST_STATS) {
                ctx->msg_work = 1;
                script = SUB_SEQ_ITEM_STAT_BOOST;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PINCH_DEF_UP: // ganlon berry
            if (GetBattlerAbility(ctx, battlerId) == ABILITY_GLUTTONY) {
                boost /= 2;
            }
            if (ctx->battlemon[battlerId].hp <= (s32)(ctx->battlemon[battlerId].maxhp) / boost && ctx->battlemon[battlerId].states[2] < SUB_SEQ_BOOST_STATS) {
                ctx->msg_work = 2;
                script = SUB_SEQ_ITEM_STAT_BOOST;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PINCH_SPEED_UP: // salac berry
            if (GetBattlerAbility(ctx, battlerId) == ABILITY_GLUTTONY) {
                boost /= 2;
            }
            if (ctx->battlemon[battlerId].hp <= (s32)(ctx->battlemon[battlerId].maxhp) / boost && ctx->battlemon[battlerId].states[3] < SUB_SEQ_BOOST_STATS) {
                ctx->msg_work = 3;
                script = SUB_SEQ_ITEM_STAT_BOOST;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PINCH_SPATK_UP: // petaya berry
            if (GetBattlerAbility(ctx, battlerId) == ABILITY_GLUTTONY) {
                boost /= 2;
            }
            if (ctx->battlemon[battlerId].hp <= (s32)(ctx->battlemon[battlerId].maxhp) / boost && ctx->battlemon[battlerId].states[4] < SUB_SEQ_BOOST_STATS) {
                ctx->msg_work = 4;
                script = SUB_SEQ_ITEM_STAT_BOOST;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PINCH_SPDEF_UP: // apicot berry
            if (GetBattlerAbility(ctx, battlerId) == ABILITY_GLUTTONY) {
                boost /= 2;
            }
            if (ctx->battlemon[battlerId].hp <= (s32)(ctx->battlemon[battlerId].maxhp) / boost && ctx->battlemon[battlerId].states[5] < SUB_SEQ_BOOST_STATS) {
                ctx->msg_work = 5;
                script = SUB_SEQ_ITEM_STAT_BOOST;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PINCH_CRITRATE_UP: // lansat berry
            if (GetBattlerAbility(ctx, battlerId) == ABILITY_GLUTTONY) {
                boost /= 2;
            }
            if (ctx->battlemon[battlerId].hp <= (s32)(ctx->battlemon[battlerId].maxhp) / boost && !(ctx->battlemon[battlerId].condition2 & STATUS2_FOCUS_ENERGY)) {
                script = SUB_SEQ_ITEM_STAT_BOOST_2;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PINCH_RANDOM_UP: // starf berry
            if (GetBattlerAbility(ctx, battlerId) == ABILITY_GLUTTONY) {
                boost /= 2;
            }
            if (ctx->battlemon[battlerId].hp <= (s32)(ctx->battlemon[battlerId].maxhp) / boost) {
                int stat;
                for (stat = 0; stat < 5; stat++) {
                    if (ctx->battlemon[battlerId].states[1 + stat] < SUB_SEQ_BOOST_STATS) {
                        break;
                    }
                }
                if (stat != 5) {
                    do {
                        stat = BattleRand(bw) % 5;
                    } while (ctx->battlemon[battlerId].states[1 + stat] == SUB_SEQ_BOOST_STATS);
                    ctx->msg_work = stat + 1;
                    script = SUB_SEQ_ITEM_STAT_BOOST_2;
                    ret = TRUE;
                }
            }
            break;
        case HOLD_EFFECT_HEAL_MENTAL_CONDITIONS: // Mental Herb
            if (ctx->battlemon[battlerId].condition2 & STATUS2_ATTRACT
            || ctx->battlemon[battlerId].condition2 & STATUS2_TORMENT
            || ctx->battlemon[battlerId].moveeffect.tauntTurns
            || ctx->battlemon[battlerId].moveeffect.encoredTurns
            || ctx->battlemon[battlerId].moveeffect.healBlockTurns
            || ctx->battlemon[battlerId].moveeffect.disabledTurns) {
                script = SUB_SEQ_ITEM_HEAL_MENTAL_CONDITIONS;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PINCH_ACC_UP: // micle berry
            if (GetBattlerAbility(ctx, battlerId) == ABILITY_GLUTTONY) {
                boost /= 2;
            }
            if (ctx->battlemon[battlerId].hp <= ((s32)(ctx->battlemon[battlerId].maxhp) / boost)) {
                script = SUB_SEQ_ITEM_ACC_UP_ONCE;
                ret = TRUE;
            }
            break;
        default:
            break;
        }
        if (ret == TRUE) {
            ctx->battlerIdTemp = battlerId;
            ctx->item_work = GetBattleMonItem(ctx, battlerId);
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, script);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = 22;

            if (IS_ITEM_BERRY(ctx->item_work)) {
                ctx->onceOnlyMoveConditionFlags[SanitizeClientForTeamAccess(bw, battlerId)][ctx->sel_mons_no[battlerId]].berryEatenAndCanBelch = TRUE;
            }
        }
    }
    return ret;
}


BOOL LONG_CALL TryFling(struct BattleSystem *bsys, struct BattleStruct *sp, int battlerId)
{
    int item = GetHeldItemFlingEffect(sp, battlerId);
    int mod = GetHeldItemModifier(sp, battlerId, 2);

    sp->damage_power = GetHeldItemFlingPower(sp, battlerId);
    sp->flingScript = 0;
    sp->addeffect_type = 0;

    if (!sp->damage_power) {
        return FALSE;
    }

    switch (item) {
    case STEAL_EFFECT_RESTORE_HP: // Oran Berry
        sp->flingData = mod;
        sp->flingScript = SUB_SEQ_ITEM_HP_RESTORE;
        break;
    case STEAL_EFFECT_RESTORE_HP_PERCENT: // Sitrus Berry
        sp->flingData = BattleDamageDivide(sp->battlemon[sp->defence_client].maxhp * mod, 100);
        sp->flingScript = SUB_SEQ_ITEM_HP_RESTORE;
        break;
    case STEAL_EFFECT_CURE_PARALYSIS: // Cheri Berry
        if (sp->battlemon[sp->defence_client].condition & STATUS_PARALYSIS) {
            sp->flingScript = SUB_SEQ_ITEM_RECOVER_PRZ;
        }
        break;
    case STEAL_EFFECT_CURE_SLEEP: // Chesto Berry
        if (sp->battlemon[sp->defence_client].condition & STATUS_SLEEP) {
            sp->flingScript = SUB_SEQ_ITEM_RECOVER_SLP;
        }
        break;
    case STEAL_EFFECT_CURE_POISON: // Pecha Berry
        if (sp->battlemon[sp->defence_client].condition & STATUS_POISON_ALL) {
            sp->flingScript = SUB_SEQ_ITEM_RECOVER_PSN;
        }
        break;
    case STEAL_EFFECT_CURE_BURN: // Rawst Berry
        if (sp->battlemon[sp->defence_client].condition & STATUS_BURN) {
            sp->flingScript = SUB_SEQ_ITEM_RECOVER_BRN;
        }
        break;
    case STEAL_EFFECT_CURE_FREEZE: // Aspear Berry
        if (sp->battlemon[sp->defence_client].condition & STATUS_FREEZE) {
            sp->flingScript = SUB_SEQ_ITEM_RECOVER_FRZ;
        }
        break;
    case STEAL_EFFECT_RESTORE_PP: // Leppa Berry
    {
        int missingPP;
        int index;
        int mostMissingPP = 0;
        int mostMissingIndex;
        // Restore PP to the move with the most missing PP.
        for (index = 0; index < 4; index++) { // 4 == MAX_MON_MOVES
            // If there is a move at the current index...
            if (sp->battlemon[sp->defence_client].move[index]) {
                // Get the missing PP from the move.
                missingPP = GetMoveMaxPP(sp->battlemon[sp->defence_client].move[index], sp->battlemon[sp->defence_client].pp_count[index]) - sp->battlemon[sp->defence_client].pp[index];
                // If this move is missing the most PP so far, keep track of it.
                if (missingPP > mostMissingPP) {
                    mostMissingPP = missingPP;
                    mostMissingIndex = index;
                }
            }
        }
        // If any of our moves are missing PP, mostMissingPP will be greater than 0.
        if (mostMissingPP) {
            // Make sure we don't restore above max PP.
            if (mod > mostMissingPP) {
                mod = mostMissingPP;
            }
            sp->battlemon[sp->defence_client].pp[mostMissingIndex] += mod;
            CopyBattleMonToPartyMon(bsys, sp, sp->defence_client);
            sp->waza_work = sp->battlemon[sp->defence_client].move[mostMissingIndex];
            sp->flingScript = SUB_SEQ_ITEM_PP_RESTORE;
        }
        break;
    }
    case STEAL_EFFECT_CURE_CONFUSION: // Persim Berry
        if (sp->battlemon[sp->defence_client].condition2 & STATUS2_CONFUSION) {
            sp->flingScript = SUB_SEQ_ITEM_RECOVER_CNF;
        }
        break;
    case STEAL_EFFECT_CURE_ALL: // Lum Berry
        if ((sp->battlemon[sp->defence_client].condition & STATUS_ALL) || (sp->battlemon[sp->defence_client].condition2 & STATUS2_CONFUSION)) {
            if (sp->battlemon[sp->defence_client].condition & STATUS_PARALYSIS) {
                sp->flingScript = SUB_SEQ_ITEM_RECOVER_PRZ;
            }
            if (sp->battlemon[sp->defence_client].condition & STATUS_SLEEP) {
                sp->flingScript = SUB_SEQ_ITEM_RECOVER_SLP;
            }
            if (sp->battlemon[sp->defence_client].condition & STATUS_POISON_ALL) {
                sp->flingScript = SUB_SEQ_ITEM_RECOVER_PSN;
            }
            if (sp->battlemon[sp->defence_client].condition & STATUS_BURN) {
                sp->flingScript = SUB_SEQ_ITEM_RECOVER_BRN;
            }
            if (sp->battlemon[sp->defence_client].condition & STATUS_FREEZE) {
                sp->flingScript = SUB_SEQ_ITEM_RECOVER_FRZ;
            }
            if (sp->battlemon[sp->defence_client].condition2 & STATUS2_CONFUSION) {
                sp->flingScript = SUB_SEQ_ITEM_RECOVER_CNF;
            }
            if ((sp->battlemon[sp->defence_client].condition & STATUS_ALL) && (sp->battlemon[sp->defence_client].condition2 & STATUS2_CONFUSION)) {
                sp->flingScript = SUB_SEQ_ITEM_RECOVER_ALL;
            }
        }
        break;
    case STEAL_EFFECT_RESTORE_SPICY: // Figy Berry
        sp->flingData = BattleDamageDivide(sp->battlemon[sp->defence_client].maxhp, mod);
        sp->msg_work = FLAVOR_SPICY;
        if (GetFlavorPreferenceFromPID(sp->battlemon[sp->defence_client].personal_rnd, FLAVOR_SPICY) == -1) {
            sp->flingScript = SUB_SEQ_ITEM_HP_RESTORE_CNF;
        } else {
            sp->flingScript = SUB_SEQ_ITEM_HP_RESTORE;
        }
        break;
    case STEAL_EFFECT_RESTORE_DRY: // Wiki Berry
        sp->flingData = BattleDamageDivide(sp->battlemon[sp->defence_client].maxhp, mod);
        sp->msg_work = FLAVOR_DRY;
        if (GetFlavorPreferenceFromPID(sp->battlemon[sp->defence_client].personal_rnd, FLAVOR_DRY) == -1) {
            sp->flingScript = SUB_SEQ_ITEM_HP_RESTORE_CNF;
        } else {
            sp->flingScript = SUB_SEQ_ITEM_HP_RESTORE;
        }
        break;
    case STEAL_EFFECT_RESTORE_SWEET: // Mago Berry
        sp->flingData = BattleDamageDivide(sp->battlemon[sp->defence_client].maxhp, mod);
        sp->msg_work = FLAVOR_SWEET;
        if (GetFlavorPreferenceFromPID(sp->battlemon[sp->defence_client].personal_rnd, FLAVOR_SWEET) == -1) {
            sp->flingScript = SUB_SEQ_ITEM_HP_RESTORE_CNF;
        } else {
            sp->flingScript = SUB_SEQ_ITEM_HP_RESTORE;
        }
        break;
    case STEAL_EFFECT_RESTORE_BITTER: // Aguav Berry
        sp->flingData = BattleDamageDivide(sp->battlemon[sp->defence_client].maxhp, mod);
        sp->msg_work = FLAVOR_BITTER;
        if (GetFlavorPreferenceFromPID(sp->battlemon[sp->defence_client].personal_rnd, FLAVOR_BITTER) == -1) {
            sp->flingScript = SUB_SEQ_ITEM_HP_RESTORE_CNF;
        } else {
            sp->flingScript = SUB_SEQ_ITEM_HP_RESTORE;
        }
        break;
    case STEAL_EFFECT_RESTORE_SOUR: // Iapapa Berry
        sp->flingData = BattleDamageDivide(sp->battlemon[sp->defence_client].maxhp, mod);
        sp->msg_work = FLAVOR_SOUR;
        if (GetFlavorPreferenceFromPID(sp->battlemon[sp->defence_client].personal_rnd, FLAVOR_SOUR) == -1) {
            sp->flingScript = SUB_SEQ_ITEM_HP_RESTORE_CNF;
        } else {
            sp->flingScript = SUB_SEQ_ITEM_HP_RESTORE;
        }
        break;
    case STEAL_EFFECT_RESET_STATS: // White Herb
    {
        int stat;
        for (stat = 0; stat < 8; stat++) {
            if (sp->battlemon[sp->defence_client].states[stat] < 6) {
                sp->battlemon[sp->defence_client].states[stat] = 6;
                sp->flingScript = SUB_SEQ_ITEM_RECOVER_STAT_DROP;
            }
        }
    } break;
    case STEAL_EFFECT_CURE_MENTAL_CONDITIONS: // Mental Herb
        if (sp->battlemon[sp->defence_client].condition2 & STATUS2_ATTRACT
            || sp->battlemon[sp->defence_client].condition2 & STATUS2_TORMENT
            || sp->battlemon[sp->defence_client].moveeffect.tauntTurns
            || sp->battlemon[sp->defence_client].moveeffect.encoredTurns
            || sp->battlemon[sp->defence_client].moveeffect.healBlockTurns
            || sp->battlemon[sp->defence_client].moveeffect.disabledTurns) {
            sp->msg_work = 6; // TODO: Check if this msg_work should have an infatuate const.
            sp->flingScript = SUB_SEQ_ITEM_HEAL_MENTAL_CONDITIONS;
        }
        break;
    case STEAL_EFFECT_FLINCH: // King's Rock, Razor Fang
        sp->state_client = battlerId;
        sp->addeffect_type = ADD_EFFECT_INDIRECT;
        sp->flingScript = SUB_SEQ_TRY_FLINCH;
        break;
    case STEAL_EFFECT_PARALYZE: // Light Ball
        sp->state_client = battlerId;
        sp->addeffect_type = ADD_EFFECT_INDIRECT;
        sp->flingScript = SUB_SEQ_APPLY_PARALYSIS;
        break;
    case STEAL_EFFECT_POISON: // Poison Barb
        sp->state_client = battlerId;
        sp->addeffect_type = ADD_EFFECT_INDIRECT;
        sp->flingScript = SUB_SEQ_APPLY_POISON;
        break;
    case STEAL_EFFECT_BAD_POISON: // Toxic Orb
        sp->state_client = battlerId;
        sp->addeffect_type = ADD_EFFECT_INDIRECT;
        sp->flingScript = SUB_SEQ_BADLY_POISON;
        break;
    case STEAL_EFFECT_BURN: // Flame Orb
        sp->state_client = battlerId;
        sp->addeffect_type = ADD_EFFECT_INDIRECT;
        sp->flingScript = SUB_SEQ_APPLY_BURN;
        break;
    case STEAL_EFFECT_ATK_UP: // Liechi Berry
        if (sp->battlemon[sp->defence_client].states[STAT_ATTACK] < 12) {
            sp->msg_work = STAT_ATTACK;
            sp->flingScript = SUB_SEQ_BADLY_POISON;
        }
        break;
    case STEAL_EFFECT_DEF_UP: // Ganlon Berry, Kee Berry
        if (sp->battlemon[sp->defence_client].states[STAT_DEFENSE] < 12) {
            sp->msg_work = STAT_DEFENSE;
            sp->flingScript = SUB_SEQ_ITEM_STAT_BOOST;
        }
        break;
    case STEAL_EFFECT_SPEED_UP: // Salac Berry
        if (sp->battlemon[sp->defence_client].states[STAT_SPEED] < 12) {
            sp->msg_work = STAT_SPEED;
            sp->flingScript = SUB_SEQ_ITEM_STAT_BOOST;
        }
        break;
    case STEAL_EFFECT_SPATK_UP: // Petaya Berry
        if (sp->battlemon[sp->defence_client].states[STAT_SPATK] < 12) {
            sp->msg_work = STAT_SPATK;
            sp->flingScript = SUB_SEQ_ITEM_STAT_BOOST;
        }
        break;
    case STEAL_EFFECT_SPDEF_UP: // Apicot Berry, Maranga Berry
        if (sp->battlemon[sp->defence_client].states[STAT_SPDEF] < 12) {
            sp->msg_work = STAT_SPDEF;
            sp->flingScript = SUB_SEQ_ITEM_STAT_BOOST;
        }
        break;
    case STEAL_EFFECT_RANDOM_UP: // Starf Berry
    {
        int stat;
        for (stat = 0; stat < 5; stat++) {
            if (sp->battlemon[sp->defence_client].states[1 + stat] < 12) {
                break;
            }
        }
        if (stat != 5) {
            do {
                stat = BattleRand(bsys) % 5;
            } while (sp->battlemon[sp->defence_client].states[1 + stat] == 12);
            sp->msg_work = stat + 1;
            sp->flingScript = SUB_SEQ_ITEM_STAT_BOOST_2;
        }
        break;
    }
    case STEAL_EFFECT_CRITRATE_UP: // Lansat Berry
        if (!(sp->battlemon[sp->defence_client].condition2 & STATUS2_FOCUS_ENERGY)) {
            sp->flingScript = SUB_SEQ_ITEM_RAISE_CRIT;
        }
        break;
    case STEAL_EFFECT_ACC_UP: // Micle Berry
        sp->flingScript = SUB_SEQ_ITEM_ACC_UP_ONCE;
        break;
    default:
        break;
    }

    if (sp->battlemon[sp->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_EMBARGO) {
        sp->flingScript = 0;
    } else {
        sp->item_work = sp->battlemon[battlerId].item;
        if (!sp->addeffect_type && sp->flingScript) {
            sp->oneSelfFlag[sp->attack_client].status_flag |= SELF_TURN_FLAG_PLUCK_BERRY;
        }
        sp->battlerIdTemp = sp->defence_client;
    }

    return TRUE;
}
