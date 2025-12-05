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
 *  @brief handle item effects for a defender's items on move hit.  loads into *seq_no
 *         this function is for the defender's held item effect triggering after hitting with a move
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param seq_no subscript to load if TRUE is returned
 *  @return TRUE if there's an item effect to run in *seq_no; FALSE otherwise
 */
BOOL CheckDefenderItemEffectOnHit(void *bw, struct BattleStruct *sp, int *seq_no)
{
    BOOL ret = FALSE;

    if (sp->defence_client == 0xFF
     || CheckSubstitute(sp, sp->defence_client) == TRUE
     || sp->itemActivatedTracker) {
        sp->itemActivatedTracker = FALSE;
        return ret;
    }

    // Check for defender's items
    int itemHoldEffect = HeldItemHoldEffectGet(sp, sp->defence_client);
    int itemPower      = HeldItemAtkGet(sp, sp->defence_client, 0);
    int side           = IsClientEnemy(bw, sp->attack_client);
    switch (itemHoldEffect) {
        // vanilla gen4 effects
        case HOLD_EFFECT_DMG_USER_CONTACT_XFR:     // Sticky Barb
            // Attacker is alive after the attack
            if ((sp->battlemon[sp->attack_client].hp)
                // Attacker has no item
                && (sp->battlemon[sp->attack_client].item == ITEM_NONE)
                // This side did not just get its item knocked off by the attacker
                && ((sp->scw[side].knockoff_item & No2Bit(sp->sel_mons_no[sp->attack_client])) == 0)
                // The move that triggered this was not Knock Off
                && (sp->current_move_index != MOVE_KNOCK_OFF)
                // Damage was dealt
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage)
                    || (sp->oneSelfFlag[sp->defence_client].special_damage))
                // Attacker is not U-turning
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                // Attacker used a move that makes contact
                && (IsContactBeingMade(GetBattlerAbility(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->defence_client), sp->current_move_index, sp->moveTbl[sp->current_move_index].flag))) {
                seq_no[0] = SUB_SEQ_ITEM_GIVE_STICKY_BARB;
                ret       = TRUE;
            }
            break;

        case HOLD_EFFECT_MAYBE_ENDURE: // Focus Band
            {
                if (sp->oneSelfFlag[sp->defence_client].prevent_one_hit_ko_item && sp->battlemon[sp->defence_client].hp == 1) {
                    sp->battlerIdTemp = sp->defence_client;
                    sp->item_work = sp->battlemon[sp->defence_client].item;
                    sp->waza_status_flag |= MOVE_STATUS_FLAG_HELD_ON_ITEM;
                    seq_no[0] = SUB_SEQ_FOCUS_SASH;
                    ret = TRUE;
                }
                sp->oneSelfFlag[sp->defence_client].prevent_one_hit_ko_item = FALSE;
            }
            break;

        case HOLD_EFFECT_ENDURE: // Focus Sash //will only be triggered for multi hit moves
            {
                if (sp->oneSelfFlag[sp->defence_client].prevent_one_hit_ko_item && sp->battlemon[sp->defence_client].hp == 1 && (sp->battlemon[sp->defence_client].maxhp + sp->hit_damage /*negative value*/) == 1) {
                    sp->battlerIdTemp = sp->defence_client;
                    sp->item_work = sp->battlemon[sp->defence_client].item;
                    sp->waza_status_flag |= MOVE_STATUS_FLAG_HELD_ON_ITEM;
                    seq_no[0] = SUB_SEQ_FOCUS_SASH;
                    ret = TRUE;
                }
                sp->oneSelfFlag[sp->defence_client].prevent_one_hit_ko_item = FALSE;
            }
            break;

        case HOLD_EFFECT_RECOIL_PHYSICAL:                       // Jaboca Berry
            // Attacker is alive after the attack
            if ((sp->battlemon[sp->attack_client].hp)
                // Attacker does not have Magic Guard
                && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
                // Attacker is not U-turning
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                // Attacker dealt physical damage
                && (sp->oneSelfFlag[sp->defence_client].physical_damage)) {
                sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * -1, itemPower);
                seq_no[0]        = SUB_SEQ_ITEM_DAMAGE_BACK;
                ret              = TRUE;
            }
            break;

        case HOLD_EFFECT_RECOIL_SPECIAL:                        // Rowap Berry
            // Attacker is alive after the attack
            if ((sp->battlemon[sp->attack_client].hp)
                // Attacker does not have Magic Guard
                && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
                // Attacker is not U-turning
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                // Attacker dealt special damage
                && (sp->oneSelfFlag[sp->defence_client].special_damage)) {
                sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * -1, itemPower);
                seq_no[0]        = SUB_SEQ_ITEM_DAMAGE_BACK;
                ret              = TRUE;
            }
            break;

        case HOLD_EFFECT_HP_RESTORE_SE:                      // Enigma Berry
            // Defender is alive after the attack
            if ((sp->battlemon[sp->defence_client].hp)
                // Defender was hit by a Super Effective attack
                && (sp->waza_status_flag & MOVE_STATUS_FLAG_SUPER_EFFECTIVE)) {
                sp->battlerIdTemp = sp->defence_client;
                sp->item_work   = sp->battlemon[sp->defence_client].item;
                seq_no[0]       = SUB_SEQ_ITEM_HP_RESTORE;
                ret             = TRUE;
            }
            break;

            // gen5 effects
        case HOLD_EFFECT_BOOST_SPECIAL_ATTACK_ON_WATER_HIT:     // Absorb Bulb
            // Defender is alive after the attack
            if ((sp->battlemon[sp->defence_client].hp)
                // Defender was hit by a Water-type attack
                && (sp->moveTbl[sp->current_move_index].type == TYPE_WATER)
                // Damage was dealt
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage)
                    || (sp->oneSelfFlag[sp->defence_client].special_damage))
                // Defender has less than +6 stages to Special Attack
                && ((sp->battlemon[sp->defence_client].states[STAT_SPATK] < 12)
                    // Or the defender has Contrary and more than -6 stages to Special Attack
                    || ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_CONTRARY))
                        && (sp->battlemon[sp->defence_client].states[STAT_SPATK] > 0)))) {
                sp->state_client     = sp->defence_client;
                seq_no[0]            = SUB_SEQ_HANDLE_RAISE_SPECIAL_ATTACK_ON_HIT;
                ret                  = TRUE;
            }
            break;

        case HOLD_EFFECT_UNGROUND_DESTROYED_ON_HIT:             // Air Balloon
            // Defender is alive after the attack
            if ((sp->battlemon[sp->defence_client].hp)
                // Damage was dealt
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage)
                    || (sp->oneSelfFlag[sp->defence_client].special_damage))) {
                seq_no[0] = SUB_SEQ_HANDLE_AIR_BALLOON_POP;
                ret       = TRUE;
            }
            break;

        case HOLD_EFFECT_BOOST_ATK_ON_ELECTRIC_HIT:             // Cell Battery
            // Defender is alive after the attack
            if ((sp->battlemon[sp->defence_client].hp)
                // Defender was hit by an Electric-type attack
                && (sp->moveTbl[sp->current_move_index].type == TYPE_ELECTRIC)
                // Damage was dealt
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage)
                    || (sp->oneSelfFlag[sp->defence_client].special_damage))
                // Defender has less than +6 stages to Attack
                && ((sp->battlemon[sp->defence_client].states[STAT_ATTACK] < 12)
                    // Or the defender has Contrary and more than -6 stages to Attack
                    || ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_CONTRARY))
                        && (sp->battlemon[sp->defence_client].states[STAT_ATTACK] > 0)))) {
                sp->state_client     = sp->defence_client;
                seq_no[0]            = SUB_SEQ_HANDLE_RAISE_ATTACK_ON_HIT;
                ret                  = TRUE;
            }
            break;

        case HOLD_EFFECT_SWITCH_OUT_WHEN_HIT:                   // Eject Button
            // Defender is alive after the attack
            if ((sp->battlemon[sp->defence_client].hp)
                // Damage was dealt
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage)
                    || (sp->oneSelfFlag[sp->defence_client].special_damage))
                && sp->multiHitCount <= 1) {
                u32 temp = sp->attack_client;                   // swap attacker and defender so subseq handles it correctly
                sp->battlerIdTemp = sp->defence_client;
                sp->attack_client = sp->defence_client;
                sp->defence_client = temp;
                sp->current_move_index = MOVE_U_TURN;
                seq_no[0] = SUB_SEQ_HANDLE_SWITCHING_ITEMS;
                ret       = TRUE;
            }
            break;

        case HOLD_EFFECT_FORCE_SWITCH_ON_DAMAGE:                // Red Card
            // Defender is alive after the attack
            if ((sp->battlemon[sp->defence_client].hp)
                // Damage was dealt
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage)
                    || (sp->oneSelfFlag[sp->defence_client].special_damage))
                && sp->multiHitCount <= 1) {
                u32 temp = sp->attack_client;                   // swap attacker and defender so subseq handles it correctly
                sp->battlerIdTemp = sp->defence_client;
                sp->attack_client = sp->defence_client;
                sp->defence_client = temp;
                seq_no[0] = SUB_SEQ_HANDLE_SWITCHING_ITEMS;
                ret       = TRUE;
            }
            break;

        case HOLD_EFFECT_DAMAGE_ON_CONTACT:                     // Rocky Helmet
            // Attacker is alive after the attack
            if ((sp->battlemon[sp->attack_client].hp)
                // item hasn't already activated on this hit
                && sp->itemActivatedTracker == FALSE
                // Attacker does not have Magic Guard
                && (GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
                // Attacker is not holding an item that prevents contact effects, e.g. Protective Pads
                && (HeldItemHoldEffectGet(sp, sp->attack_client) != HOLD_EFFECT_PREVENT_CONTACT_EFFECTS)
                // Attacker is not U-turning
                && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
                // punching glove & punching move foundation
                // && ((HeldItemHoldEffectGet(sp, sp->attack_client) != HOLD_EFFECT_INCREASE_PUNCHING_MOVE_DMG) && 
                // IsElementInArray(IronFistMovesTable, (u16 *)&moveno, NELEMS(IronFistMovesTable), sizeof(IronFistMovesTable[0]))))
                // Damage was dealt
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage)
                    || (sp->oneSelfFlag[sp->defence_client].special_damage))
                // Attacker used a move that makes contact
                && (IsContactBeingMade(GetBattlerAbility(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->defence_client), sp->current_move_index, sp->moveTbl[sp->current_move_index].flag))) {
                sp->hp_calc_work         = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * -1, itemPower);
                seq_no[0]                = SUB_SEQ_ITEM_DAMAGE_BACK;
                ret                      = TRUE;
                sp->itemActivatedTracker = TRUE; // signal that this shouldn't happen for the rest of the hit
            }
            break;

            // gen6 effects
        case HOLD_EFFECT_BOOST_DEF_ON_PHYSICAL_HIT:             // Kee Berry
            // Defender is alive after the attack
            if ((sp->battlemon[sp->attack_client].hp)
                // Attacker dealt physical damage
                && (sp->oneSelfFlag[sp->defence_client].physical_damage)
                // Defender has less than +6 stages to Defense
                && ((sp->battlemon[sp->defence_client].states[STAT_DEFENSE] < 12)
                    // Or the defender has Contrary and more than -6 stages to Defense
                    || ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_CONTRARY))
                        && (sp->battlemon[sp->defence_client].states[STAT_DEFENSE] > 0)))) {
                sp->state_client     = sp->defence_client;
                seq_no[0]            = SUB_SEQ_HANDLE_RAISE_DEFENSE_ON_HIT;
                ret                  = TRUE;
            }
            break;

        case HOLD_EFFECT_BOOST_SPECIAL_DEFENSE_ON_WATER_HIT:    // Luminous Moss
            // Defender is alive after the attack
            if ((sp->battlemon[sp->defence_client].hp)
                // Defender was hit by a Water-type attack
                && (sp->moveTbl[sp->current_move_index].type == TYPE_WATER)
                // Damage was dealt
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage)
                    || (sp->oneSelfFlag[sp->defence_client].special_damage))
                // Defender has less than +6 stages to Special Defense
                && ((sp->battlemon[sp->defence_client].states[STAT_SPDEF] < 12)
                    // Or the defender has Contrary and more than -6 stages to Special Defense
                    || ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_CONTRARY))
                        && (sp->battlemon[sp->defence_client].states[STAT_SPDEF] > 0)))) {
                sp->state_client     = sp->defence_client;
                seq_no[0]            = SUB_SEQ_HANDLE_RAISE_SPECIAL_DEFENSE_ON_HIT;
                ret                  = TRUE;
            }
            break;

        case HOLD_EFFECT_BOOST_SPDEF_ON_SPECIAL_HIT:            // Maranga Berry
            // Defender is alive after the attack
            if ((sp->battlemon[sp->attack_client].hp)
                // Attacker dealt special damage
                && (sp->oneSelfFlag[sp->defence_client].special_damage)
                // Defender has less than +6 stages to Special Defense
                && ((sp->battlemon[sp->defence_client].states[STAT_SPDEF] < 12)
                    // Or the defender has Contrary and more than -6 stages to Special Defense
                    || ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_CONTRARY))
                        && (sp->battlemon[sp->defence_client].states[STAT_SPDEF] > 0)))) {
                sp->state_client     = sp->defence_client;
                seq_no[0]            = SUB_SEQ_HANDLE_RAISE_SPECIAL_DEFENSE_ON_HIT;
                ret                  = TRUE;
            }
            break;

        case HOLD_EFFECT_BOOST_ATK_ON_ICE_HIT:                  // Snowball
            // Defender is alive after the attack
            if ((sp->battlemon[sp->defence_client].hp)
                // Defender was hit by an Ice-type attack
                && (sp->moveTbl[sp->current_move_index].type == TYPE_ICE)
                // Damage was dealt
                && ((sp->oneSelfFlag[sp->defence_client].physical_damage)
                    || (sp->oneSelfFlag[sp->defence_client].special_damage))
                // Defender has less than +6 stages to Attack
                && ((sp->battlemon[sp->defence_client].states[STAT_ATTACK] < 12)
                    // Or the defender has Contrary and more than -6 stages to Attack
                    || ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_CONTRARY))
                        && (sp->battlemon[sp->defence_client].states[STAT_ATTACK] > 0)))) {
                sp->state_client     = sp->defence_client;
                seq_no[0]            = SUB_SEQ_HANDLE_RAISE_ATTACK_ON_HIT;
                ret                  = TRUE;
            }
            break;


#ifdef LATER_GEN_ITEM_EFFECTS

        case HOLD_EFFECT_BOOST_ATK_AND_SPATK_ON_SE:             // Weakness Policy
            // Defender is alive after the attack
            if ((sp->battlemon[sp->defence_client].hp)
                // Defender was hit by a Super Effective attack
                && (sp->waza_status_flag & MOVE_STATUS_FLAG_SUPER_EFFECTIVE)
                // Defender has less than +6 stages to either of Attack or Special Attack
                && (((sp->battlemon[sp->defence_client].states[STAT_ATTACK] < 12)
                     || (sp->battlemon[sp->defence_client].states[STAT_SPATK] < 12))
                    // Or the defender has Contrary and more than -6 stages to either of Attack or Special Attack
                    || ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_CONTRARY))
                        && ((sp->battlemon[sp->defence_client].states[STAT_ATTACK] > 0)
                            || (sp->battlemon[sp->defence_client].states[STAT_SPATK] > 0))))) {
                sp->state_client     = sp->defence_client;
                seq_no[0]            = SUB_SEQ_HANDLE_RAISE_ATTACK_AND_SP_ATK_ON_HIT;
                ret                  = TRUE;
            }
            break;

            // gen7 has no distinct standalone effects that go here
            // Protective Pads is dispersed among the relevant cases
            // (here, only Rocky Helmet)

            // gen8 has no effects which belong in this particular
            // switch tree, since everything here cares about being
            // *dealt* damage, rather than *dealing* damage

#endif

        default:
            break;
    }


    return ret;
}
