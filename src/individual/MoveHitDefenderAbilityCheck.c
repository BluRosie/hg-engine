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

/**
 *  @brief check if a move should activate the defender's ability and run a subscript
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param seq_no battle subscript to run
 *  @return TRUE to load the battle subscript in *seq_no and run it; FALSE otherwise
 */
BOOL MoveHitDefenderAbilityCheckInternal(void *bw, struct BattleStruct *sp, int *seq_no)
{
    BOOL ret = FALSE;
    u32 move_pos;

    if (sp->defence_client == 0xFF
     || CheckSubstitute(sp, sp->defence_client) == TRUE
     || ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) != 0)
     || ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) != 0)
     || ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) != 0)) {
        return ret;
    }

    // TODO need to decrease size
    if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_STATIC)) {
        if ((sp->battlemon[sp->attack_client].hp)
            && (sp->battlemon[sp->attack_client].condition == 0)
            && ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage))
            && (IsContactBeingMade(GetBattlerAbility(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->defence_client), sp->current_move_index, sp->moveTbl[sp->current_move_index].flag))
            && (BattleRand(bw) % 10 < 3)) {
            sp->addeffect_type = ADD_STATUS_ABILITY;
            sp->state_client = sp->attack_client;
            sp->battlerIdTemp = sp->defence_client;
            seq_no[0] = SUB_SEQ_APPLY_PARALYSIS;
            ret = TRUE;
        }
    }  else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_ROUGH_SKIN)
        || MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_IRON_BARBS)) {
        if ((sp->battlemon[sp->attack_client].hp)
            && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
            && ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage))
            && (IsContactBeingMade(GetBattlerAbility(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->defence_client), sp->current_move_index, sp->moveTbl[sp->current_move_index].flag))) {
            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * -1, 8);
            sp->battlerIdTemp = sp->attack_client;
            seq_no[0] = SUB_SEQ_ROUGH_SKIN;
            ret = TRUE;
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_EFFECT_SPORE)) {
        if ((sp->battlemon[sp->attack_client].hp)
            && (sp->battlemon[sp->attack_client].condition == 0)
            && ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage))
            && (IsContactBeingMade(GetBattlerAbility(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->defence_client), sp->current_move_index, sp->moveTbl[sp->current_move_index].flag))
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
            sp->battlerIdTemp = sp->defence_client;
            ret = TRUE;
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_POISON_POINT)) {
        if ((sp->battlemon[sp->attack_client].hp)
            && (sp->battlemon[sp->attack_client].condition == 0)
            && ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage))
            && (IsContactBeingMade(GetBattlerAbility(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->defence_client), sp->current_move_index, sp->moveTbl[sp->current_move_index].flag))
            && (BattleRand(bw) % 10 < 3)) {
            sp->addeffect_type = ADD_STATUS_ABILITY;
            sp->state_client = sp->attack_client;
            sp->battlerIdTemp = sp->defence_client;
            seq_no[0] = SUB_SEQ_APPLY_POISON;
            ret = TRUE;
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_FLAME_BODY)) {
        if ((sp->battlemon[sp->attack_client].hp)
            && (sp->battlemon[sp->attack_client].condition == 0)
            && ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage))
            && (IsContactBeingMade(GetBattlerAbility(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->defence_client), sp->current_move_index, sp->moveTbl[sp->current_move_index].flag))
            && (BattleRand(bw) % 10 < 3)) {
            sp->addeffect_type = ADD_STATUS_ABILITY;
            sp->state_client = sp->attack_client;
            sp->battlerIdTemp = sp->defence_client;
            seq_no[0] = SUB_SEQ_APPLY_BURN;
            ret = TRUE;
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_CUTE_CHARM)) {
        if ((sp->battlemon[sp->attack_client].hp)
            && ((sp->battlemon[sp->attack_client].condition2 & STATUS2_ATTRACT) == 0)
            && ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage))
            && (IsContactBeingMade(GetBattlerAbility(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->defence_client), sp->current_move_index, sp->moveTbl[sp->current_move_index].flag))
            && (sp->battlemon[sp->defence_client].hp)
            && (BattleRand(bw) % 10 < 3)) {
            sp->addeffect_type = ADD_STATUS_ABILITY;
            sp->state_client = sp->attack_client;
            sp->battlerIdTemp = sp->defence_client;
            seq_no[0] = SUB_SEQ_APPLY_ATTRACT;
            ret = TRUE;
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_AFTERMATH)) {
        if ((sp->defence_client == sp->fainting_client)
            && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
            && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_DAMP) == 0)
            && (sp->battlemon[sp->attack_client].hp)
            && (IsContactBeingMade(GetBattlerAbility(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->defence_client), sp->current_move_index, sp->moveTbl[sp->current_move_index].flag))) {
            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * -1, 4);
            sp->battlerIdTemp = sp->attack_client;
            seq_no[0] = SUB_SEQ_HANDLE_AFTERMATH;
            ret = TRUE;
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_INNARDS_OUT)) {
        if ((sp->defence_client == sp->fainting_client)
            && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
            && (sp->battlemon[sp->attack_client].hp)) {
            sp->hp_calc_work = sp->damage;
            sp->battlerIdTemp = sp->attack_client;
            seq_no[0] = SUB_SEQ_HANDLE_INNARDS_OUT_MESSAGE;
            ret = TRUE;
        }
    }
    // handle rattled
    else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_RATTLED)) {
        if ((sp->battlemon[sp->defence_client].hp)
            && (sp->battlemon[sp->defence_client].states[STAT_SPEED] < 12)
            && ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage))) {
            u8 movetype;

            movetype = GetAdjustedMoveType(sp, sp->attack_client, sp->current_move_index); // new normalize checks

            if ((movetype == TYPE_DARK) || (movetype == TYPE_GHOST) || (movetype == TYPE_BUG)) {
                sp->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_SPEED_UP;
                sp->addeffect_type = ADD_EFFECT_ABILITY;
                sp->state_client = sp->defence_client;
                sp->battlerIdTemp = sp->defence_client;
                seq_no[0] = SUB_SEQ_BOOST_STATS;
                ret = TRUE;
            }
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_STEAM_ENGINE)) {
        if ((sp->battlemon[sp->defence_client].hp)
            && (sp->battlemon[sp->defence_client].states[STAT_SPEED] < 12)
            && ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage))) {
            u8 movetype;

            movetype = GetAdjustedMoveType(sp, sp->attack_client, sp->current_move_index); // new normalize checks

            if ((movetype == TYPE_FIRE) || (movetype == TYPE_WATER)) {
                sp->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_SPEED_UP_6;
                sp->addeffect_type = ADD_EFFECT_ABILITY;
                sp->state_client = sp->defence_client;
                sp->battlerIdTemp = sp->defence_client;
                seq_no[0] = SUB_SEQ_BOOST_STATS;
                ret = TRUE;
            }
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_ELECTROMORPHOSIS)) {
        if (/*(sp->battlemon[sp->defence_client].hp) // mon notably does not need to be alive for this ability to proc
            && */
            (sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage)) {
            sp->addeffect_param = ADD_STATUS_EFF_CHARGE;
            sp->addeffect_type = ADD_EFFECT_ABILITY;
            sp->state_client = sp->defence_client;
            seq_no[0] = SUB_SEQ_HANDLE_CHARGE_BOOST;
            ret = TRUE;
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_WIND_POWER)) {
        // tailwind activation handled in SwitchInAbilityCheck
        if (/*(sp->battlemon[sp->defence_client].hp) // mon notably does not need to be alive for this ability to proc
            && */
            ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage))
            && (IsMoveWindMove(sp->current_move_index))) {
            sp->addeffect_param = ADD_STATUS_EFF_CHARGE;
            sp->addeffect_type = ADD_EFFECT_ABILITY;
            sp->battlerIdTemp = sp->defence_client;
            sp->waza_work = sp->current_move_index;
            seq_no[0] = SUB_SEQ_HANDLE_CHARGE_BOOST;
            ret = TRUE;
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_STAMINA)) {
        if ((sp->battlemon[sp->defence_client].hp)
            && (sp->battlemon[sp->defence_client].states[STAT_DEFENSE] < 12)
            && ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage))) {
            sp->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_DEFENSE_UP;
            sp->addeffect_type = ADD_EFFECT_ABILITY;
            sp->state_client = sp->defence_client;
            sp->battlerIdTemp = sp->defence_client;
            seq_no[0] = SUB_SEQ_BOOST_STATS;
            ret = TRUE;
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_GOOEY)
        || MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_TANGLING_HAIR)) {
        if ((sp->battlemon[sp->attack_client].states[STAT_SPEED] > 0)
            && (IsContactBeingMade(GetBattlerAbility(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->defence_client), sp->current_move_index, sp->moveTbl[sp->current_move_index].flag))
            && ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage))) {
            sp->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_SPEED_DOWN;
            sp->addeffect_type = ADD_EFFECT_PRINT_WORK_ABILITY;
            sp->state_client = sp->attack_client;
            sp->battlerIdTemp = sp->defence_client;
            seq_no[0] = SUB_SEQ_BOOST_STATS;
            ret = TRUE;
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_MUMMY) || MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_LINGERING_AROMA)) {
        if (sp->battlemon[sp->attack_client].ability != sp->battlemon[sp->defence_client].ability) {
            if ((IsContactBeingMade(GetBattlerAbility(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->defence_client), sp->current_move_index, sp->moveTbl[sp->current_move_index].flag))
                && (!AbilityCantSupress(sp->battlemon[sp->attack_client].ability))
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage))) {
                sp->addeffect_type = ADD_EFFECT_ABILITY;
                sp->battlerIdTemp = sp->attack_client;
                sp->battlemon[sp->attack_client].ability = GetBattlerAbility(sp, sp->defence_client); // spread defender ability to attacker
                seq_no[0] = SUB_SEQ_HANDLE_MUMMY_MESSAGE;
                ret = TRUE;
            }
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_WATER_COMPACTION)) {
        if ((sp->battlemon[sp->defence_client].hp)
            && (sp->battlemon[sp->defence_client].states[STAT_DEFENSE] < 12)
            && ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage))) {
            u8 movetype;

            movetype = GetAdjustedMoveType(sp, sp->attack_client, sp->current_move_index); // new normalize checks

            if (movetype == TYPE_WATER) {
                if (sp->battlemon[sp->defence_client].states[STAT_DEFENSE] < 11) {
                    sp->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_DEFENSE_UP_2;
                    sp->addeffect_type = ADD_EFFECT_ABILITY;
                    sp->state_client = sp->defence_client;
                    sp->battlerIdTemp = sp->defence_client;
                    seq_no[0] = SUB_SEQ_BOOST_STATS;
                    ret = TRUE;
                }
            }
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_JUSTIFIED)) {
        if ((sp->battlemon[sp->defence_client].hp)
            && (sp->battlemon[sp->defence_client].states[STAT_ATTACK] < 12)
            && ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage))) {
            u8 movetype;

            movetype = GetAdjustedMoveType(sp, sp->attack_client, sp->current_move_index); // new normalize checks

            if (movetype == TYPE_DARK) {
                sp->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP;
                sp->addeffect_type = ADD_EFFECT_ABILITY;
                sp->state_client = sp->defence_client;
                sp->battlerIdTemp = sp->defence_client;
                seq_no[0] = SUB_SEQ_BOOST_STATS;
                ret = TRUE;
            }
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_WEAK_ARMOR)) {
        if ((sp->battlemon[sp->defence_client].hp)
            && ((sp->battlemon[sp->defence_client].states[STAT_DEFENSE] > 0)
                || (sp->battlemon[sp->defence_client].states[STAT_SPEED] < 12))
            && (sp->oneSelfFlag[sp->defence_client].physical_damage)) {
            sp->state_client = sp->defence_client;
            sp->battlerIdTemp = sp->defence_client;
            sp->addeffect_type = ADD_EFFECT_ABILITY;
            seq_no[0] = SUB_SEQ_HANDLE_WEAK_ARMOR;
            ret = TRUE;
        }
    }
    // handle cursed body - disable the last used move by the pokemon.  disabling is handled here, script just displays the message
    else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_CURSED_BODY)) {
        move_pos = BattleMon_GetMoveIndex(&sp->battlemon[sp->attack_client], sp->current_move_index);
        if (sp->battlemon[sp->attack_client].hp != 0
            && ((sp->oneSelfFlag[sp->defence_client].physical_damage)
                || (sp->oneSelfFlag[sp->defence_client].special_damage))
            && sp->battlemon[sp->attack_client].moveeffect.disabledMove == 0
            && move_pos != 4 // is a valid move the mon knows
            && sp->battlemon[sp->attack_client].pp[move_pos] != 0 // pp is nonzero
            && sp->current_move_index != 0 // a move has already been used
            && sp->moveTbl[sp->current_move_index].power != 0
            && BattleRand(bw) % 10 < 3) {
            sp->waza_work = sp->current_move_index;
            sp->battlemon[sp->attack_client].moveeffect.disabledMove = sp->waza_work;
            sp->battlemon[sp->attack_client].moveeffect.disabledTurns = 4; // cursed body disables for 4 turns every time
            sp->addeffect_type = ADD_EFFECT_ABILITY;
            seq_no[0] = SUB_SEQ_HANDLE_CURSED_BODY;
            ret = TRUE;
        }
    }  else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_THERMAL_EXCHANGE)) {
        if ((sp->battlemon[sp->defence_client].hp)
            && (sp->battlemon[sp->defence_client].states[STAT_ATTACK] < 12)
            && ((sp->battlemon[sp->defence_client].condition2 & STATUS2_SUBSTITUTE) == 0)
            && ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage))) {
            u8 movetype;

            movetype = GetAdjustedMoveType(sp, sp->attack_client, sp->current_move_index); // new normalize checks

            if (movetype == TYPE_FIRE) {
                if (sp->battlemon[sp->defence_client].states[STAT_ATTACK] < 12) {
                    sp->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP;
                    sp->addeffect_type = ADD_EFFECT_ABILITY;
                    sp->state_client = sp->defence_client;
                    sp->battlerIdTemp = sp->defence_client;
                    seq_no[0] = SUB_SEQ_BOOST_STATS;
                    ret = TRUE;
                }
            }
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_SAND_SPIT)) {
        if ((sp->oneSelfFlag[sp->defence_client].physical_damage) || (sp->oneSelfFlag[sp->defence_client].special_damage)) {
            sp->addeffect_type = ADD_EFFECT_ABILITY;
            sp->state_client = sp->defence_client;
            sp->battlerIdTemp = sp->defence_client;
            seq_no[0] = SUB_SEQ_SAND_STREAM;
            ret = TRUE;
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_SEED_SOWER)) {
        if ((sp->terrainOverlay.type != GRASSY_TERRAIN)
            && ((sp->oneSelfFlag[sp->defence_client].physical_damage) ||
                (sp->oneSelfFlag[sp->defence_client].special_damage)))
        {
            sp->calc_work = sp->current_move_index;
            sp->current_move_index = MOVE_GRASSY_TERRAIN;  // need this for UpdateTerrainOverlay
            sp->addeffect_type = ADD_EFFECT_ABILITY;
            sp->state_client = sp->defence_client;
            sp->battlerIdTemp = sp->defence_client;
            seq_no[0] = SUB_SEQ_CREATE_TERRAIN_OVERLAY;
            ret = TRUE;
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_TOXIC_DEBRIS)) {
        if (((sp->battlemon[sp->defence_client].condition2 & STATUS2_SUBSTITUTE) == 0)
            && (sp->oneSelfFlag[sp->defence_client].physical_damage))
        {
            int fieldSide = IsClientEnemy(bw, sp->attack_client);
            if (sp->scw[fieldSide].toxicSpikesLayers < 2) {
                sp->addeffect_type = ADD_EFFECT_ABILITY;
                sp->side_condition[fieldSide] |= SIDE_STATUS_TOXIC_SPIKES;
                sp->scw[fieldSide].toxicSpikesLayers++;
                seq_no[0] = SUB_SEQ_TOXIC_DEBRIS;
                ret = TRUE;
            }
        }
    }

    return ret;
}
