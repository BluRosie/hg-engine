#include "../../include/types.h"
#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/save.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/constants/weather_numbers.h"

/**
 *  @brief script command to set up the stat boost animation/message
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_33_statbuffchange(void *bw, struct BattleStruct *sp)
{
    int address1;
    int address2;
    int address3;
    int stattochange;
    int statchange;
    int flag;
    struct BattlePokemon *battlemon = &sp->battlemon[sp->state_client];

    IncrementBattleScriptPtr(sp, 1);

    address1 = read_battle_script_param(sp);
    address2 = read_battle_script_param(sp);
    address3 = read_battle_script_param(sp);

    flag = 0;

    sp->server_status_flag &= ~(SERVER_STATUS_FLAG_STAT_CHANGE_NEGATIVE);

    // debug_printf("\naddeffect_param: %d\n", sp->addeffect_param);

    // 6 steps up
    if (sp->addeffect_param >= ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_6)
    {
        stattochange = sp->addeffect_param - ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_6;
        statchange = 6;
        sp->temp_work = STATUS_EFF_UP;
        // debug_printf("6 steps up\n");
    }
    // 3 steps down
    else if (sp->addeffect_param >= ADD_STATUS_EFF_BOOST_STATS_ATTACK_DOWN_3)
    {
        stattochange = sp->addeffect_param - ADD_STATUS_EFF_BOOST_STATS_ATTACK_DOWN_3;
        statchange = -3;
        sp->temp_work = STATUS_EFF_DOWN;
        // debug_printf("3 steps down\n");
    }
    //3 steps up
    else if (sp->addeffect_param >= ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_3)
    {
        stattochange = sp->addeffect_param - ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_3;
        statchange = 3;
        sp->temp_work = STATUS_EFF_UP;
        // debug_printf("3 steps up\n");
    }
    //2 steps down
    else if (sp->addeffect_param >= ADD_STATUS_EFF_BOOST_STATS_ATTACK_DOWN_2)
    {
        stattochange = sp->addeffect_param - ADD_STATUS_EFF_BOOST_STATS_ATTACK_DOWN_2;
        statchange = -2;
        sp->temp_work = STATUS_EFF_DOWN;
    }
    //2 steps up
    else if (sp->addeffect_param >= ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_2)
    {
        stattochange = sp->addeffect_param - ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_2;
        statchange = 2;
        sp->temp_work = STATUS_EFF_UP;
    }
    //1 step down
    else if (sp->addeffect_param >= ADD_STATUS_EFF_BOOST_STATS_ATTACK_DOWN)
    {
        stattochange = sp->addeffect_param - ADD_STATUS_EFF_BOOST_STATS_ATTACK_DOWN;
        statchange = -1;
        sp->temp_work = STATUS_EFF_DOWN;
    }
    //1 step up
    else
    {
        stattochange = sp->addeffect_param - ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP;
        statchange = 1;
        sp->temp_work = STATUS_EFF_UP;
    }

    if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_SIMPLE)) {
        statchange *= 2;
    }

    if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_CONTRARY)) {
        // statchange
        statchange = -statchange;

        // sp->temp_work
        if (sp->temp_work == STATUS_EFF_UP) {
            sp->temp_work = STATUS_EFF_DOWN;
        } else if (sp->temp_work == STATUS_EFF_DOWN) {
            sp->temp_work = STATUS_EFF_UP;
        }
    }

    // try and handle defiant lol
    if ((GetBattlerAbility(sp, sp->state_client) == ABILITY_DEFIANT || GetBattlerAbility(sp, sp->state_client) == ABILITY_COMPETITIVE)
        && sp->oneSelfFlag[sp->state_client].defiant_flag == 0
        && statchange < 0
        && (sp->addeffect_type == ADD_EFFECT_STICKY_WEB
            || (sp->state_client != sp->attack_client // can't raise own stats
                && sp->state_client != BattleWorkPartnerClientNoGet(bw, sp->attack_client) // can't raise partner's stats
                && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
                && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0))))
    {
            sp->oneSelfFlag[sp->state_client].defiant_flag = 1;
    }
    else
    {
        sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
    }

    // debug_printf("statchange: %d\n", statchange);
    // debug_printf("stattochange: %d\n", stattochange);

    if (statchange > 0)
    {
        if (battlemon->states[STAT_ATTACK + stattochange] == 12)
        {
            sp->server_status_flag |= SERVER_STATUS_FLAG_STAT_CHANGE_NEGATIVE;

            if ((sp->addeffect_type == ADD_EFFECT_INDIRECT)
             || (sp->addeffect_type == ADD_EFFECT_ABILITY))
            {
                IncrementBattleScriptPtr(sp, address2);
                sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                return FALSE;
            }
            else
            {
                sp->mp.msg_id = BATTLE_MSG_STAT_WONT_GO_HIGHER;
                sp->mp.msg_tag = TAG_NICKNAME_STAT;
                sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                sp->mp.msg_para[1] = STAT_ATTACK + stattochange;
                sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                IncrementBattleScriptPtr(sp, address1);
                return FALSE;
            }
        }
        else
        {
            // Cap stat change here so that message below is correct
            if (battlemon->states[STAT_ATTACK + stattochange] + statchange > 12) {
                // debug_printf("\n\nCapped\n\n");
                statchange = 12 - battlemon->states[STAT_ATTACK + stattochange];
            }
            if (sp->addeffect_type == ADD_EFFECT_ABILITY)
            {
                switch (statchange)
                {
                case 1:
                    sp->mp.msg_id = BATTLE_MSG_ABILITY_RAISED_STAT;
                    break;
                case 2:
                    sp->mp.msg_id = BATTLE_MSG_ABILITY_RAISED_STAT_SHARPLY;
                    break;
                default:
                    sp->mp.msg_id = BATTLE_MSG_ABILITY_RAISED_STAT_DRASTICALLY;
                    break;
                }
                sp->mp.msg_tag = TAG_NICKNAME_ABILITY_STAT;
                sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                sp->mp.msg_para[2] = STAT_ATTACK + stattochange;
            }
            else if (sp->addeffect_type == ADD_EFFECT_HELD_ITEM)
            {
                switch (statchange)
                {
                case 1:
                    sp->mp.msg_id = BATTLE_MSG_ITEM_RAISED_STAT;
                    break;
                case 2:
                    sp->mp.msg_id = BATTLE_MSG_ITEM_SHARPLY_RAISED_STAT;
                    break;
                default:
                    sp->mp.msg_id = BATTLE_MSG_ITEM_DRASTICALLY_RAISED_STAT;
                    break;
                }
                sp->mp.msg_tag = TAG_NICKNAME_ITEM_STAT;
                sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                sp->mp.msg_para[1] = sp->item_work;
                sp->mp.msg_para[2] = STAT_ATTACK + stattochange;
            }
            else
            {
                switch (statchange)
                {
                case 1:
                    sp->mp.msg_id = BATTLE_MSG_STAT_RAISED;
                    break;
                case 2:
                    sp->mp.msg_id = BATTLE_MSG_STAT_RAISED_SHARPLY;
                    break;
                default:
                    sp->mp.msg_id = BATTLE_MSG_STAT_RAISED_DRASTICALLY;
                    break;
                }
                sp->mp.msg_tag = TAG_NICKNAME_STAT;
                sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                sp->mp.msg_para[1] = STAT_ATTACK + stattochange;
            }
            battlemon->states[STAT_ATTACK + stattochange] += statchange;
            if (battlemon->states[STAT_ATTACK + stattochange] > 12)
            {
                battlemon->states[STAT_ATTACK + stattochange] = 12;
            }
        }
    }
    else
    {
        sp->moveConditionsFlags[sp->state_client].anyStatLoweredThisTurn = TRUE;
        // Cap stat change here so that message below is correct
        if (battlemon->states[STAT_ATTACK + stattochange] + statchange < 0) {
            // debug_printf("\n\nCapped\n\n");
            statchange = battlemon->states[STAT_ATTACK + stattochange];
        }
        if ((sp->addeffect_flag & ADD_STATUS_NO_ABILITY) == 0)
        {
            if (sp->attack_client != sp->state_client)
            {
                // infiltrator bypasses mist
                if (sp->scw[IsClientEnemy(bw, sp->state_client)].mistCount && GetBattlerAbility(sp, sp->attack_client) != ABILITY_INFILTRATOR)
                {
                    sp->mp.msg_id = BATTLE_MSG_PROTECTED_BY_MIST;
                    sp->mp.msg_tag = TAG_NICKNAME;
                    sp->mp.msg_para[0] = CreateNicknameTag(sp,sp->state_client);
                    flag = 1;
                }
                else if ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_FLOWER_VEIL) == TRUE
                       || MoldBreakerAbilityCheck(sp, sp->attack_client, BATTLER_ALLY(sp->state_client), ABILITY_FLOWER_VEIL) == TRUE) // any enemy has flower veil (accounting for mold breaker, otherwise would just CheckSideAbility)
                       && HasType(sp, sp->state_client, TYPE_GRASS)) // and target has grass type
                {
                    if (sp->addeffect_type == ADD_EFFECT_ABILITY)
                    {
                        sp->mp.msg_id = BATTLE_MSG_FLOWER_VEIL_PETALS;
                        sp->mp.msg_tag = TAG_NICKNAME;
                        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                    }
                    flag = 1;
                }
                else if ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_CLEAR_BODY) == TRUE)
                      || (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_WHITE_SMOKE) == TRUE)
                      || (GetBattlerAbility(sp, sp->state_client) == ABILITY_FULL_METAL_BODY))   // Full Metal Body cannot be ignored
                {
                    if (sp->addeffect_type == ADD_EFFECT_ABILITY)
                    {
                        sp->mp.msg_id = BATTLE_MSG_ABILITY_SUPPRESSES_STAT_LOSS;
                        sp->mp.msg_tag = TAG_NICKNAME_ABILITY_NICKNAME_ABILITY;
                        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                        sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                        sp->mp.msg_para[2] = CreateNicknameTag(sp, sp->attack_client);
                        sp->mp.msg_para[3] = sp->battlemon[sp->attack_client].ability;
                    }
                    else
                    {
                        sp->mp.msg_id = BATTLE_MSG_PREVENTS_STAT_LOSS;
                        sp->mp.msg_tag = TAG_NICKNAME_ABILITY;
                        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                        sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                    }
                    flag = 1;
                }
                else if (HeldItemHoldEffectGet(sp, sp->state_client) == HOLD_EFFECT_PREVENT_STAT_DROPS && sp->temp_work == STATUS_EFF_DOWN)
                {
                    statchange = 0;
                    sp->mp.msg_id = BATTLE_MSG_ITEM_PREVENTS_STAT_LOSS;
                    sp->mp.msg_tag = TAG_NICKNAME_ITEM_STAT;
                    sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                    sp->mp.msg_para[1] = CreateNicknameTag(sp, GetBattleMonItem(sp, sp->state_client));
                    sp->mp.msg_para[2] = STAT_ATTACK + stattochange;
                    flag = 1;
                }
                else if (((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_KEEN_EYE) == TRUE)
                       && ((STAT_ATTACK + stattochange) == STAT_ACCURACY))
                      || ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_HYPER_CUTTER) == TRUE)
                       && ((STAT_ATTACK + stattochange) == STAT_ATTACK))
                      || ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_MINDS_EYE) == TRUE)
                       && ((STAT_ATTACK + stattochange) == STAT_ACCURACY))
                      || ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_ILLUMINATE) == TRUE)
                       && ((STAT_ATTACK + stattochange) == STAT_ACCURACY))
                       || ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_BIG_PECKS) == TRUE)
                       && ((STAT_ATTACK + stattochange) == STAT_DEFENSE)))
                    {
                    if (sp->addeffect_type == ADD_EFFECT_ABILITY)
                    {
                        sp->mp.msg_id = BATTLE_MSG_ABILITY_SUPPRESSES_STAT_LOSS;
                        sp->mp.msg_tag = TAG_NICKNAME_ABILITY_NICKNAME_ABILITY;
                        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                        sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                        sp->mp.msg_para[2] = CreateNicknameTag(sp, sp->attack_client);
                        sp->mp.msg_para[3] = sp->battlemon[sp->attack_client].ability;
                    }
                    else
                    {
                        sp->mp.msg_id = BATTLE_MSG_ITEM_PREVENTS_STAT_LOSS;
                        sp->mp.msg_tag = TAG_NICKNAME_ABILITY_STAT;
                        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                        sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                        sp->mp.msg_para[2] = STAT_ATTACK + stattochange;
                    }
                    flag = 1;
                }
                else if (battlemon->states[STAT_ATTACK + stattochange] == 0)
                {
                    sp->server_status_flag |= SERVER_STATUS_FLAG_STAT_CHANGE_NEGATIVE;
                    if ((sp->addeffect_type == ADD_EFFECT_INDIRECT)
                     || (sp->addeffect_type == ADD_EFFECT_ABILITY))
                    {
                        sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                        IncrementBattleScriptPtr(sp, address2);
                        return FALSE;
                    }
                    else
                    {
                        sp->mp.msg_id = BATTLE_MSG_STAT_WONT_GO_LOWER;
                        sp->mp.msg_tag = TAG_NICKNAME_STAT;
                        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                        sp->mp.msg_para[1] = STAT_ATTACK + stattochange;
                        sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                        IncrementBattleScriptPtr(sp, address1);
                        return FALSE;
                    }
                }
                else if ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_SHIELD_DUST) == TRUE)
                      && (sp->addeffect_type == ADD_EFFECT_INDIRECT))
                {
                    flag = 1;
                }
                else if (sp->battlemon[sp->state_client].condition2 & STATUS2_SUBSTITUTE)
                {
                    flag = 2;
                }
            }
            else if (battlemon->states[STAT_ATTACK + stattochange] == 0)
            {
                sp->server_status_flag |= SERVER_STATUS_FLAG_STAT_CHANGE_NEGATIVE;
                if ((sp->addeffect_type == ADD_EFFECT_INDIRECT)
                 || (sp->addeffect_type == ADD_EFFECT_ABILITY))
                {
                    sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                    IncrementBattleScriptPtr(sp, address2);
                    return FALSE;
                }
                else
                {
                    sp->mp.msg_id = BATTLE_MSG_STAT_WONT_GO_LOWER;
                    sp->mp.msg_tag = TAG_NICKNAME_STAT;
                    sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                    sp->mp.msg_para[1] = STAT_ATTACK + stattochange;
                    sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                    IncrementBattleScriptPtr(sp, address1);
                    return FALSE;
                }
            }
            if ((flag == 2) && (sp->addeffect_type == ADD_STATUS_DIRECT))
            {
                sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                IncrementBattleScriptPtr(sp, address3);
                return FALSE;
            }
            else if ((flag) && (sp->addeffect_type == ADD_EFFECT_INDIRECT))
            {
                sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                IncrementBattleScriptPtr(sp, address2);
                return FALSE;
            }
            else if (flag)
            {
                sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                IncrementBattleScriptPtr(sp, address1);
                return FALSE;
            }
        }
        if (sp->addeffect_type == ADD_EFFECT_ABILITY && sp->battlerIdTemp == sp->state_client)
        {
            sp->mp.msg_id = BATTLE_MSG_ABILITY_LOWERED_ITS_OWN_STAT;
            sp->mp.msg_tag = TAG_NICKNAME_ABILITY_STAT;
            sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->battlerIdTemp);
            sp->mp.msg_para[1] = sp->battlemon[sp->battlerIdTemp].ability;
            sp->mp.msg_para[2] = STAT_ATTACK + stattochange;
        }
        else if (sp->addeffect_type == ADD_EFFECT_ABILITY)
        {
            sp->mp.msg_id = BATTLE_MSG_ATK_ABILITY_CUTS_MON_STAT;
            sp->mp.msg_tag = TAG_NICKNAME_ABILITY_NICKNAME_STAT;
            sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->attack_client);
            sp->mp.msg_para[1] = sp->battlemon[sp->attack_client].ability;
            sp->mp.msg_para[2] = CreateNicknameTag(sp, sp->state_client);
            sp->mp.msg_para[3] = STAT_ATTACK + stattochange;
        }
        // certain abilities fuck it up.  this fixes them
        else if (sp->addeffect_type == ADD_EFFECT_PRINT_WORK_ABILITY)
        {
            sp->mp.msg_id = BATTLE_MSG_ATK_ABILITY_CUTS_MON_STAT;
            sp->mp.msg_tag = TAG_NICKNAME_ABILITY_NICKNAME_STAT;
            sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->battlerIdTemp);
            sp->mp.msg_para[1] = sp->battlemon[sp->battlerIdTemp].ability;
            sp->mp.msg_para[2] = CreateNicknameTag(sp, sp->state_client);
            sp->mp.msg_para[3] = STAT_ATTACK+stattochange;
        }
        else
        {
            switch (statchange)
                {
                case -1:
                    sp->mp.msg_id = BATTLE_MSG_STAT_FELL;
                    break;
                case -2:
                    sp->mp.msg_id = BATTLE_MSG_STAT_HARSHLY_FELL;
                    break;
                default:
                    sp->mp.msg_id = BATTLE_MSG_STAT_LOWERED_SEVERELY;
                    break;
                }
            sp->mp.msg_tag = TAG_NICKNAME_STAT;
            sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
            sp->mp.msg_para[1] = STAT_ATTACK + stattochange;
        }

        battlemon->states[STAT_ATTACK + stattochange] += statchange;
        if (battlemon->states[STAT_ATTACK + stattochange] < 0)
        {
            battlemon->states[STAT_ATTACK + stattochange] = 0;
        }
    }

    return 0;
}
