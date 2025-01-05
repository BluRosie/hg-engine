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
     && (IsContactBeingMade(bw, sp)))
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
        && (IsContactBeingMade(bw, sp)))
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
u32 LONG_CALL ServerWazaHitAfterCheckAct(void *bw, struct BattleStruct *sp)
{
    int ret;
    int client_set_max UNUSED;
    int hold_effect;
    int hold_effect_param;

    ret = 0;

    client_set_max = BattleWorkClientSetMaxGet(bw);

    hold_effect = HeldItemHoldEffectGet(sp, sp->attack_client);
    hold_effect_param = HeldItemAtkGet(sp, sp->attack_client, ATK_CHECK_NORMAL);

    if (CheckIfAnyoneShouldFaint(sp, sp->server_seq_no, sp->server_seq_no, 1) == TRUE)
    {
        return TRUE;
    }

    do
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
