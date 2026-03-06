#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/types.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/constants/file.h"
#include "../../include/overlay.h"

#ifdef DEBUG_BATTLE_SCENARIOS
#include "../../include/test_battle.h"
#endif

void ServerHPCalc(struct BattleSystem *bw, struct BattleStruct *sp)
{
    int eqp;
    int atk;

    if (sp->waza_status_flag & MOVE_STATUS_FLAG_OHKO_HIT)
    {
        sp->damage = sp->battlemon[sp->defence_client].maxhp * -1;
    }

    if (sp->damage)
    {
        eqp = HeldItemHoldEffectGet(sp, sp->defence_client);
        atk = HeldItemAtkGet(sp, sp->defence_client, ATK_CHECK_NORMAL);

        if (IsClientEnemy(bw, sp->attack_client) == IsClientEnemy(bw, sp->defence_client))
        {
            SCIO_IncRecord(bw, sp->attack_client, CLIENT_BOOT_TYPE_MINE, RECID_TEMOTI_MAKIZOE);
        }

        sp->client_no_hit[sp->defence_client] = sp->attack_client;

        if ((sp->battlemon[sp->defence_client].condition2 & STATUS2_SUBSTITUTE)
         && (sp->damage < 0)
         && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_INFILTRATOR))
        {
            if ((sp->battlemon[sp->defence_client].moveeffect.substituteHp + sp->damage) <= 0)
            {
                sp->oneSelfFlag[sp->attack_client].shell_bell_damage += (sp->battlemon[sp->defence_client].moveeffect.substituteHp * -1);
                sp->battlemon[sp->defence_client].condition2 &= ~(STATUS2_SUBSTITUTE);
                sp->hit_damage = sp->battlemon[sp->defence_client].moveeffect.substituteHp * -1;
                sp->battlemon[sp->defence_client].moveeffect.substituteHp = 0;
            }
            else
            {
                sp->oneSelfFlag[sp->attack_client].shell_bell_damage += sp->damage;
                sp->battlemon[sp->defence_client].moveeffect.substituteHp += sp->damage;
                sp->hit_damage = sp->damage;
            }
            sp->oneSelfFlag[sp->defence_client].status_flag |= SELF_STATUS_FLAG_SUBSTITUTE_HIT;
            sp->battlerIdTemp = sp->defence_client;
            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HIT_SUBSTITUTE);
            sp->server_seq_no = 22;
            sp->next_server_seq_no = 29;
        }
        else
        {
            if (sp->moveTbl[sp->current_move_index].effect == MOVE_EFFECT_LEAVE_WITH_1_HP)
            {
                if ((sp->battlemon[sp->defence_client].hp + sp->damage) <= 0)
                {
                    sp->damage = (sp->battlemon[sp->defence_client].hp - 1) * -1;
                }
            }
            if (sp->oneTurnFlag[sp->defence_client].prevent_one_hit_ko_ability == FALSE)
            {
                if ((eqp == HOLD_EFFECT_MAYBE_ENDURE) && ((BattleRand(bw) % 100) < atk))
                {
                    sp->oneSelfFlag[sp->defence_client].prevent_one_hit_ko_item = TRUE;
                }
                else if ((eqp == HOLD_EFFECT_ENDURE) && (sp->battlemon[sp->defence_client].hp == (s32)sp->battlemon[sp->defence_client].maxhp))
                {
                    sp->oneSelfFlag[sp->defence_client].prevent_one_hit_ko_item = TRUE;
                }
                else
                {
                    sp->oneSelfFlag[sp->defence_client].prevent_one_hit_ko_item = FALSE;
                }
            }

            // handle sturdy--prevent one-hit ko's if hp == maxhp
            if ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_STURDY) == TRUE) && (sp->battlemon[sp->defence_client].hp == (s32)sp->battlemon[sp->defence_client].maxhp))
            {
                sp->oneTurnFlag[sp->defence_client].prevent_one_hit_ko_ability = TRUE;
            }
            // make sure to cancel sturdy if hp != maxhp.  necessary for multi-hit moves
            else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_STURDY) == TRUE && (sp->battlemon[sp->defence_client].hp != (s32)sp->battlemon[sp->defence_client].maxhp))
            {
                sp->oneTurnFlag[sp->defence_client].prevent_one_hit_ko_ability = FALSE;
            }

            if ((sp->oneTurnFlag[sp->defence_client].prevent_one_hit_ko_ability) || (sp->oneSelfFlag[sp->defence_client].prevent_one_hit_ko_item))
            {
                if ((sp->battlemon[sp->defence_client].hp + sp->damage) <= 0)
                {
                    sp->damage = (sp->battlemon[sp->defence_client].hp - 1) * -1;
                    if (sp->oneTurnFlag[sp->defence_client].prevent_one_hit_ko_ability)
                    {
                        sp->waza_status_flag |= MOVE_STATUS_FLAG_HELD_ON_ABILITY;
                    }
                    else
                    {
                        sp->waza_status_flag |= MOVE_STATUS_FLAG_HELD_ON_ITEM;
                    }
                }
            }


#ifdef DEBUG_BATTLE_SCENARIOS
            // debug_printf("In ServerHPCalc\n");
            struct TestBattleScenario *scenario = TestBattle_GetCurrentScenario();
            if (scenario != NULL && TestBattle_HasMoreExpectations()) {
                // debug_printf("Has more expectations\n")
                if (scenario->expectations[scenario->expectationPassCount].expectationType == EXPECTATION_TYPE_HP_BAR
                    && sp->defence_client == scenario->expectations[scenario->expectationPassCount].battlerIDOrPartySlot) {
                    for (int i = 0; i < 16; i++) {
                        // debug_printf("sp->damage: %d, expect: %d\n", sp->damage, scenario->expectations[scenario->expectationPassCount].expectationValue.hpTaken[i]);
                        if (sp->damage == scenario->expectations[scenario->expectationPassCount].expectationValue.hpTaken[i]
                            || sp->damage * -1 == scenario->expectations[scenario->expectationPassCount].expectationValue.hpTaken[i]) {
                                scenario->expectationPassCount++;
                                break;
                        }
                    }
                    // debug_printf("\n");
                }
            }
#endif

            /**
             * END OF ORIGINAL AND USER-DEFINED DAMAGE CALCULATIONS.
             * ALL NEW EFFECTS SHOULD BE PLACED ABOVE THIS COMMENT UNLESS YOU WISH TO EDIT THE CODE BELOW.
             */
            sp->store_damage[sp->defence_client] += sp->damage;

            if (sp->battlemon[sp->defence_client].hit_count < 255)
            {
                sp->battlemon[sp->defence_client].hit_count++;
            }
            if (GetMoveSplit(sp, sp->current_move_index) == SPLIT_PHYSICAL)
            {
                sp->oneTurnFlag[sp->defence_client].physical_damage[sp->attack_client] = sp->damage;
                sp->oneTurnFlag[sp->defence_client].physical_damager = sp->attack_client;
                sp->oneTurnFlag[sp->defence_client].physical_damager_bit |= No2Bit(sp->attack_client);
                sp->oneSelfFlag[sp->defence_client].physical_damage = sp->damage;
                sp->oneSelfFlag[sp->defence_client].physical_damager = sp->attack_client;
            }
            else if(GetMoveSplit(sp, sp->current_move_index) == SPLIT_SPECIAL)
            {
                sp->oneTurnFlag[sp->defence_client].special_damage[sp->attack_client] = sp->damage;
                sp->oneTurnFlag[sp->defence_client].special_damager = sp->attack_client;
                sp->oneTurnFlag[sp->defence_client].special_damager_bit |= No2Bit(sp->attack_client);
                sp->oneSelfFlag[sp->defence_client].special_damage = sp->damage;
                sp->oneSelfFlag[sp->defence_client].special_damager = sp->attack_client;
            }

            if ((sp->battlemon[sp->defence_client].hp + sp->damage) <= 0)
            {
                sp->oneSelfFlag[sp->attack_client].shell_bell_damage += (sp->battlemon[sp->defence_client].hp * -1);
            }
            else
            {
                sp->oneSelfFlag[sp->attack_client].shell_bell_damage += sp->damage;
            }
            sp->oneTurnFlag[sp->defence_client].last_damage = sp->damage;
            sp->oneTurnFlag[sp->defence_client].last_damager = sp->attack_client;

            sp->battlerIdTemp = sp->defence_client;
            sp->hp_calc_work = sp->damage;

            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HP_CHANGE);
            sp->server_seq_no = 22;
            sp->next_server_seq_no = 29;

            sp->server_status_flag |= SERVER_STATUS_FLAG_MOVE_HIT;
        }
    }
    else
    {
        sp->server_seq_no = 29;
    }
}
