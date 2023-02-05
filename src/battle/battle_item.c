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


u32 MoveHitHeldItemEffectCheck(void *bw, struct BattleStruct *sp, int *seq_no)
{
    u32 ret;
    int client_no;
    int atk_hold_eff;
    int atk_item_param;
    int def_hold_eff;
    int def_item_param;
    int atk_side;
    
    ret = FALSE;
    
    if (GetBattlerAbility(sp, sp->attack_client) == ABILITY_SHEER_FORCE && sp->battlemon[sp->attack_client].sheer_force_flag == 1) // sheer force skips all of these effects apparently
        return ret;

    atk_hold_eff = HeldItemHoldEffectGet(sp, sp->attack_client);
    atk_item_param = HeldItemAtkGet(sp,sp->attack_client, ATK_CHECK_NORMAL);

    def_hold_eff = HeldItemHoldEffectGet(sp, sp->defence_client);
    def_item_param = HeldItemAtkGet(sp,sp->defence_client, ATK_CHECK_NORMAL);

    atk_side = IsClientEnemy(bw, sp->attack_client);

    if ((atk_hold_eff == HOLD_EFFECT_HP_RESTORE_ON_DMG) // shell bell
     && (sp->server_status_flag & SERVER_STATUS_FLAG_MOVE_HIT)
     && (sp->oneSelfFlag[sp->attack_client].shell_bell_damage)
     && (sp->attack_client != sp->defence_client)
     && (sp->battlemon[sp->attack_client].hp < sp->battlemon[sp->attack_client].maxhp)
     && (sp->battlemon[sp->attack_client].hp))
    {
        sp->hp_calc_work = BattleDamageDivide(sp->oneSelfFlag[sp->attack_client].shell_bell_damage * -1, atk_item_param);
        sp->client_work = sp->attack_client;
        seq_no[0] = SUB_SEQ_SHELL_BELL_HEAL;
        ret = TRUE;
    }

    if ((atk_hold_eff == HOLD_EFFECT_HP_DRAIN_ON_ATK) // life orb
     && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
     && (sp->server_status_flag & SERVER_STATUS_FLAG_MOVE_HIT)
     && (sp->moveTbl[sp->current_move_index].split != SPLIT_STATUS)
     && (sp->battlemon[sp->attack_client].hp))
    {
        sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * -1, 10);
        sp->client_work = sp->attack_client;
        seq_no[0] = SUB_SEQ_LIFE_ORB;
        ret = TRUE;
    }

    if ((def_hold_eff == HOLD_EFFECT_RECOIL_PHYSICAL) // jaboca berry
     && (sp->battlemon[sp->attack_client].hp)
     && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
     && (sp->oneSelfFlag[sp->defence_client].physical_damage))
    {
        sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * -1, def_item_param);
        seq_no[0] = SUB_SEQ_PHYSICAL_DMG_RECOIL;
        ret = TRUE;
    }

    if ((def_hold_eff == HOLD_EFFECT_DMG_USER_CONTACT_XFR) // sticky barb
     && (sp->battlemon[sp->attack_client].hp)
     && (sp->battlemon[sp->attack_client].item == 0)
     && ((sp->scw[atk_side].hatakiotosu_item & (1 << sp->sel_mons_no[sp->attack_client])) == 0)
     && ((sp->oneSelfFlag[sp->defence_client].physical_damage)
      || (sp->oneSelfFlag[sp->defence_client].special_damage))
     && (sp->moveTbl[sp->current_move_index].flag & FLAG_CONTACT))
    {
        seq_no[0] = SUB_SEQ_TRANSFER_STICKY_BARB;
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

u32 ServerWazaHitAfterCheckAct(void *bw, struct BattleStruct *sp)
{
    int ret;
    int client_no;
    int client_set_max;
    int hold_effect;
    int hold_effect_param;
    
    ret = 0;

    client_set_max = BattleWorkClientSetMaxGet(bw);

    hold_effect = HeldItemHoldEffectGet(sp, sp->attack_client);
    hold_effect_param = HeldItemAtkGet(sp, sp->attack_client, ATK_CHECK_NORMAL);

    if (ServerKizetsuCheck(sp, sp->server_seq_no, sp->server_seq_no, 1) == TRUE)
    {
        return TRUE;
    }

    do
    {
        switch(sp->swhac_seq_no)
        {
        case SWHAC_RAGE_ATTACK_CHECK:
            if ((sp->battlemon[sp->attack_client].condition2 & STATUS2_FLAG_RAGE) && (sp->current_move_index != MOVE_RAGE))
            {
                sp->battlemon[sp->attack_client].condition2 &= (STATUS2_FLAG_RAGE ^ 0xFFFFFFFF);
            }
            sp->swhac_seq_no++;
            
            if (GetBattlerAbility(sp,sp->attack_client) == ABILITY_SHEER_FORCE && sp->battlemon[sp->attack_client].sheer_force_flag == 1) // skip over shell bell and life orb if sheer force is active
                sp->swhac_seq_no = SWHAC_END;

            break;
        case SWHAC_HELD_ITEM_SHELL_BELL:
            if(sp->defence_client != 0xFF)
            {
                if ((hold_effect == HOLD_EFFECT_HP_RESTORE_ON_DMG)
                 && ((sp->server_status_flag2 & SERVER_STATUS2_FLAG_x10) == 0)
                 && (sp->server_status_flag & SERVER_STATUS_FLAG_MOVE_HIT)
                 && (sp->oneSelfFlag[sp->attack_client].shell_bell_damage)
                 && (sp->attack_client != sp->defence_client)
                 && (sp->battlemon[sp->attack_client].hp < sp->battlemon[sp->attack_client].maxhp)
                 && (sp->battlemon[sp->attack_client].hp))
                {
                    sp->hp_calc_work = BattleDamageDivide(sp->oneSelfFlag[sp->attack_client].shell_bell_damage * -1, hold_effect_param);
                    sp->client_work=sp->attack_client;
                    LoadBattleSubSeqScript(sp, FILE_BATTLE_SUB_SCRIPTS, SUB_SEQ_SHELL_BELL_HEAL);
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
             && ((sp->server_status_flag2 & SERVER_STATUS2_FLAG_x10) == 0)
             && (sp->server_status_flag & SERVER_STATUS_FLAG_MOVE_HIT)
             && (sp->moveTbl[sp->current_move_index].split != SPLIT_STATUS)
             && (sp->battlemon[sp->attack_client].hp))
            {
                sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * -1, 10);
                sp->client_work = sp->attack_client;
                LoadBattleSubSeqScript(sp, FILE_BATTLE_SUB_SCRIPTS, SUB_SEQ_LIFE_ORB);
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
