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


// https://bulbapedia.bulbagarden.net/wiki/Category:Moves_that_thaw_out_the_user
// will have to add matcha gotcha and burn up to the list of effects that thaw the user
u16 gMovesThatThawFrozenMons[] =
{
    //MOVE_BURN_UP,
    //MOVE_FLAME_WHEEL,
    //MOVE_FLARE_BLITZ,
    //MOVE_FUSION_FLARE,
    MOVE_MATCHA_GOTCHA,
    //MOVE_PYRO_BALL,
    //MOVE_SACRED_FIRE,
    MOVE_SCALD,
    MOVE_SCORCHING_SANDS,
    MOVE_STEAM_ERUPTION,
};

void UNUSED ServerDoPostMoveEffectsInternal(void *bsys, struct BattleStruct *ctx);
int ActivateSturdyOrFocusSashOrFocusBand(void *bsys, struct BattleStruct *sp, int *seq_no);
int ActivateDefenderItems4(void *bsys, struct BattleStruct *sp);

/**
 *  @brief do post move effects--synchronize, held item effects, ice thawing from move usage, etc.
 *         no other abilities here though.  primarily here to add scald melting frozen battlers
 *
 *  @param bsys battle work structure
 *  @param ctx global battle structure
 */
void __attribute__((section(".init"))) ServerDoPostMoveEffectsInternal(void *bsys, struct BattleStruct *ctx)
{
    debug_printf("ServerDoPostMoveEffectsInternal\n");
    int seq_no = 0;
    DynamicSortClientExecutionOrder(bsys, ctx, FALSE);

    switch (ctx->swoak_seq_no) {
    case MOVE_PERFORMANCE_VANISH_ON_OFF: {
        int ret = 0;
        for (ctx->swoak_work = 0; ctx->swoak_work < BattleWorkClientSetMaxGet(bsys); ctx->swoak_work++) {
            if (((ctx->battlemon[ctx->swoak_work].effect_of_moves & (MOVE_EFFECT_FLAG_SEMI_INVULNERABLE)) == 0)
                && (ctx->battlemon[ctx->swoak_work].effect_of_moves_temp & (MOVE_EFFECT_FLAG_SEMI_INVULNERABLE))) {
                ctx->battlemon[ctx->swoak_work].effect_of_moves_temp &= ~(MOVE_EFFECT_FLAG_SEMI_INVULNERABLE);
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_VANISH_OFF);
                ctx->battlerIdTemp = ctx->swoak_work;
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                ret = 1;
            }

            if (ret) {
                return;
            }
        }
        ctx->swoak_seq_no++;
        ctx->swoak_work = 0;
        FALLTHROUGH;
    }
    case MOVE_PERFORMANCE_STEP_2_HIT_SUBSTITUTE:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_3_EXPLOSION_USER_FAINTS:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_4_DEAL_DAMAGE:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_5_SE_TYPE_EFFECTIVENESS_MESSAGE:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_6_NOT_SE_TYPE_EFFECTIVENESS_MESSAGE:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_7_CRITICAL_HIT_MESSAGE:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_8_STURDY_FOCUS_SASH: {
        debug_printf("in MOVE_PERFORMANCE_STEP_8_STURDY_FOCUS_SASH\n");

        if (ActivateSturdyOrFocusSashOrFocusBand(bsys, ctx, &seq_no) == TRUE) {
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, seq_no);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return;
        }
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    }
    case MOVE_PERFORMANCE_STEP_8_1_SURVIVE_WITH_FRIENDSHIP:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_9_0_FLING:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_9_1_ADDITIONAL_EFFECTS:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_9_2_LOWERING_STATS:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_9_3_HP_DRAINING_MOVES:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_9_4_FLAME_BURST:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_9_5_DYNAMAX_MOVE_EFFECTS:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_0_CORE_ENFORCER:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_1_RAGE:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_2_CLEAR_SMOG:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_3_GRUDGE:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_4_BEAK_BLAST_BURN:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_5_POISON_TOUCH:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_6_DEFENDER_ABILITY:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_7_COTTON_DOWN:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_8_DAMAGE_REDUCTION_BERRY:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_9_DEFENDER_ITEMS_1:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_10_INCINERATE:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_11_DEFENDER_ITEMS_2_JABOCA_ROWAP:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_12_DISGUISE_ICE_FACE:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_13_PROTECTION_FROM_Z_MOVE:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_11_0_FAINTING:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_11_1_DESTINY_BOND:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_12_0_RESET_UNNERVE_NEUTRALIZING_GAS_IF_FAINTED:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_13_0_MULTIHIT_MOVE_ATTACKER_ITEMS_4:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_13_1_MULTIHIT_MOVE_DEFENDER_ITEMS_4:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_14_0_FRIENDSHIP_MESSAGE:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_15_0_RECOIL_DAMAGE:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_15_1_BIND_STATE:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_15_2_SCALE_SHOT_FELL_STINGER:
        // TODO

        if (ctx->current_move_index == MOVE_SCALE_SHOT) {
            if ((ctx->battlemon[ctx->attack_client].hp)
                && (ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated == 0)
                && (ctx->battlemon[ctx->attack_client].states[STAT_DEFENSE] > 0)
                && (ctx->battlemon[ctx->attack_client].states[STAT_SPEED] < 12)) {
                ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated = 1;
                // ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_3;
                ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
                ctx->state_client = ctx->attack_client;
                LoadBattleSubSeqScript(ctx, 1, SUB_SEQ_USER_DEF_DOWN_1_SPEED_UP_1);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return;
            }
        }

        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_15_3_KNOCK_OFF_THIEF_PLUCK:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_15_4_CIRCLE_THROW_DRAGON_TAIL:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_15_5_KNOCK_DOWN_THOUSAND_WAVE_JAW_LOCK:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_15_5_PLASMA_FISTS:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_15_6_GENESIS_SUPERNOVA:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_15_7_RAPID_SPIN:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_15_8_THAW_FROM_FIRE_MOVE:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_15_9_SMELLING_SALTS_WAKEUP_SLAP_SPARKLING_ARIA:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_15_10_EERIE_SPELL:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_16_0_MAGICIAN_MOXIE:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_16_1_BERSERK_COLOR_CHANGE:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_17_0_DEFENDER_ITEMS_3:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_18_0_PLEDGE_MOVES_COMBINATION:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_19_0_FORM_CHANGE:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_20_0_LIFE_ORB_SHELL_BELL:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_21_0_MOVE_DEFENDER_ITEMS_4:
        debug_printf("in MOVE_PERFORMANCE_STEP_21_0_MOVE_DEFENDER_ITEMS_4\n");

        if (ActivateDefenderItems4(bsys, ctx) == TRUE) {
            return;
        }
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_22_0_EMERGENCY_EXIT_WIMP_OUT:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_23_0_U_TURN_VOLT_SWITCH:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_24_0_PICKPOCKET:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_25_0_BURN_UP_DOUBLE_SHOCK_TYPELOSS:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_25_1_NATURAL_GIFT:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_25_2_OUTRAGE_CONFUSION:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_25_3_ICE_SPINNER_STEEL_ROLLER:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_25_4_ORDER_UP:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_26_0_LEPPA_BERRY_THROAT_SPRAY_BLUNDER_POLICY:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_27_0_ABILITIES_2:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_27_1_OPPORTUNIST_SYBIOSIS:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_28_0_WHITE_HERB_MIRROR_HERB_EJECT_PACK:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_29_0_SOMETHING_WITH_SWITCHING: // send out new mon?
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_30_0_DANCER:
        // TODO
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_CLEAR_MAGIC_COAT:
        ctx->magicBounceTracker = FALSE;
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_END:
        ctx->swoak_seq_no++;
        break;
    default:
        break;
    }
    ctx->swoak_work = 0;
    ctx->server_seq_no = CONTROLLER_COMMAND_32;
}
    /*
    // Sort clients because moves may affect ctxeed
    DynamicSortClientExecutionOrder(bsys, ctx, FALSE);
    switch (ctx->swoak_seq_no) {
        case SWOAK_SEQ_VANISH_ON_OFF: {
            int ret = 0;
            while (ctx->swoak_work < BattleWorkClientSetMaxGet(bsys))
            {
                if (((ctx->battlemon[ctx->swoak_work].effect_of_moves & (MOVE_EFFECT_FLAG_SEMI_INVULNERABLE)) == 0)
                 && (ctx->battlemon[ctx->swoak_work].effect_of_moves_temp & (MOVE_EFFECT_FLAG_SEMI_INVULNERABLE)))
                {
                    ctx->battlemon[ctx->swoak_work].effect_of_moves_temp &= ~(MOVE_EFFECT_FLAG_SEMI_INVULNERABLE);
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_VANISH_OFF);
                    ctx->battlerIdTemp = ctx->swoak_work;
                    ctx->next_server_seq_no = ctx->server_seq_no;
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                    ret = 1;
                }

                ctx->swoak_work++;

                if (ret)
                    return;
            }
        }
        ctx->swoak_seq_no++;
        ctx->swoak_work = 0;
        FALLTHROUGH;
    case SWOAK_SEQ_SYNCHRONIZE_CHECK:
        ctx->swoak_seq_no++;
        if (SynchroniseAbilityCheck(bsys, ctx, ctx->server_seq_no) == TRUE)
            return;
        FALLTHROUGH;
    case SWOAK_SEQ_POKE_APPEAR_CHECK:
        {
            int seq_no;

            seq_no = ST_ServerPokeAppearCheck(bsys, ctx);

            if (seq_no)
            {
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, seq_no);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return;
            }
        }
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case SWOAK_SEQ_CHECK_HELD_ITEM_EFFECT_ATTACKER:
        ctx->swoak_seq_no++;
        if (TryUseHeldItem(bsys, ctx, ctx->attack_client) == TRUE) // will eventually need TryUseHeldItem anyway.  generic berry function thing
            return;
        FALLTHROUGH;
    case SWOAK_SEQ_CHECK_HELD_ITEM_EFFECT_DEFENDER:
        ctx->swoak_seq_no++;
        if (ctx->defence_client != 0xFF)
        {
            if (TryUseHeldItem(bsys, ctx, ctx->defence_client) == TRUE)
                return;
        }
        FALLTHROUGH;
    case SWOAK_SEQ_CHECK_DEFENDER_ITEM_ON_HIT:
        {
            int seq_no;

            ctx->swoak_seq_no++;
            if (CheckDefenderItemEffectOnHit(bsys, ctx, &seq_no) == TRUE)
            {
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, seq_no);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return;
            }
        }
        FALLTHROUGH;
    case SWOAK_SEQ_THAW_ICE:
        {
            int movetype;
            u16 currMove = ctx->current_move_index;

            movetype = GetAdjustedMoveType(ctx, ctx->attack_client, currMove); // new normalize checks

            ctx->swoak_seq_no++;

            if (ctx->defence_client != 0xFF)
            {
                if ((ctx->battlemon[ctx->defence_client].condition & STATUS_FREEZE)
                 && ((ctx->waza_status_flag & MOVE_STATUS_FLAG_FURY_CUTTER_MISS) == 0)
                 && (ctx->defence_client != ctx->attack_client)
                 && ((ctx->oneSelfFlag[ctx->defence_client].physical_damage) || (ctx->oneSelfFlag[ctx->defence_client].special_damage))
                 && (ctx->battlemon[ctx->defence_client].hp)
                 && ((movetype == TYPE_FIRE) || (IsElementInArray(gMovesThatThawFrozenMons, &currMove, NELEMS(gMovesThatThawFrozenMons), sizeof(u16)))) // scald can also melt opponents as of gen 6
                 && ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag == 0)
                {
                    ctx->battlerIdTemp = ctx->defence_client;
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_THAW_OUT);
                    ctx->next_server_seq_no = ctx->server_seq_no;
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
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

            while (ctx->swoak_work < BattleWorkClientSetMaxGet(bsys))
            {
                client_no = ctx->turnOrder[ctx->swoak_work];
                if (ctx->no_reshuffle_client & No2Bit(client_no))
                {
                    ctx->swoak_work++;
                    continue;
                }

                ctx->swoak_work++;

                if (HeldItemHealStatusCheck(bsys, ctx, client_no, &seq_no) == TRUE) // will also probably need this one too
                {
                    ctx->battlerIdTemp = client_no;
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, seq_no);
                    ctx->next_server_seq_no = ctx->server_seq_no;
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                    ret = 1;
                    break;
                }
            }

            if (ret == 0)
            {
                ctx->swoak_seq_no++;
                ctx->swoak_work = 0;
            }
        }
        FALLTHROUGH;
    case SWOAK_SEQ_CLEAR_MAGIC_COAT:
        ctx->magicBounceTracker = FALSE;
        ctx->swoak_seq_no++;
        break;
    default:
        break;
    }
    //ctx->swoak_seq_no = 0;
    ctx->swoak_work = 0;
    ctx->server_seq_no = CONTROLLER_COMMAND_32;
    
}*/


int ActivateSturdyOrFocusSashOrFocusBand(void *bsys, struct BattleStruct *sp, int *seq_no)
{
    int ret = FALSE;

    for (int battler = 0; battler < BattleWorkClientSetMaxGet(bsys); battler++)
    {
        int itemHoldEffect = HeldItemHoldEffectGet(sp, battler);

        switch (itemHoldEffect)
        {
        case HOLD_EFFECT_MAYBE_ENDURE: // Focus Band
        {
            if (sp->oneSelfFlag[battler].prevent_one_hit_ko_item && sp->battlemon[battler].hp == 1) {
                sp->battlerIdTemp = battler;
                sp->item_work = sp->battlemon[battler].item;
                sp->waza_status_flag |= MOVE_STATUS_FLAG_HELD_ON_ITEM;
                seq_no[0] = SUB_SEQ_FOCUS_SASH;
                ret = TRUE;
            }
            sp->oneSelfFlag[battler].prevent_one_hit_ko_item = FALSE;
            break;
        }
        case HOLD_EFFECT_ENDURE: // Focus Sash //will only be triggered for multi hit moves
        {
            if (sp->oneSelfFlag[battler].prevent_one_hit_ko_item && sp->battlemon[battler].hp == 1 && (sp->battlemon[battler].maxhp + sp->hit_damage /*negative value*/) == 1) {
                sp->battlerIdTemp = battler;
                sp->item_work = sp->battlemon[battler].item;
                sp->waza_status_flag |= MOVE_STATUS_FLAG_HELD_ON_ITEM;
                seq_no[0] = SUB_SEQ_FOCUS_SASH;
                ret = TRUE;
            }
            sp->oneSelfFlag[battler].prevent_one_hit_ko_item = FALSE;
            break;
        } 
        default:
            break;
        }

        //TODO Sturdy, False Swipe, Hold Back

        if (ret) {
            break;
        }
    }

    return ret;
}


int ActivateDefenderItems4(void *bsys, struct BattleStruct *sp)
{
    for (int battler = 0; battler < BattleWorkClientSetMaxGet(bsys); battler++) // TODO loop over defender only?
    {
        if (TryUseHeldItem(bsys, sp, battler) == TRUE) {
            return TRUE;
        }
    }
    return FALSE;
}
