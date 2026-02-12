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

void ServerDoPostMoveEffectsInternal2(void *bsys, struct BattleStruct *ctx)
{
    int seq_no = 0;
    DynamicSortClientExecutionOrder(bsys, ctx, FALSE);

    switch (ctx->swoak_seq_no) {
    case MOVE_PERFORMANCE_VANISH_ON_OFF:
    {
        int ret = 0;
        for (ctx->swoak_work = 0; ctx->swoak_work < BattleWorkClientSetMaxGet(bsys); ctx->swoak_work++)
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

            if (ret) {
                return;
            }
        }
        ctx->swoak_seq_no++;
        ctx->swoak_work = 0;
        FALLTHROUGH;
    }
    case MOVE_PERFORMANCE_STEP_8_STURDY_FOCUS_SASH:
    {
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
        case MOVE_PERFORMANCE_STEP_9_0_FLING:
        case MOVE_PERFORMANCE_STEP_9_1_ADDITIONAL_EFFECTS:
        case MOVE_PERFORMANCE_STEP_9_2_LOWERING_STATS:
        case MOVE_PERFORMANCE_STEP_9_3_HP_DRAINING_MOVES:
        case MOVE_PERFORMANCE_STEP_9_4_FLAME_BURST:
        case MOVE_PERFORMANCE_STEP_9_5_DYNAMAX_MOVE_EFFECTS:
        case MOVE_PERFORMANCE_STEP_10_0_CORE_ENFORCER:
        case MOVE_PERFORMANCE_STEP_10_1_RAGE:
        case MOVE_PERFORMANCE_STEP_10_2_CLEAR_SMOG:
        case MOVE_PERFORMANCE_STEP_10_3_GRUDGE:
        case MOVE_PERFORMANCE_STEP_10_4_BEAK_BLAST_BURN:
        case MOVE_PERFORMANCE_STEP_10_5_POISON_TOUCH:
        case MOVE_PERFORMANCE_STEP_10_6_DEFENDER_ABILITY:
        case MOVE_PERFORMANCE_STEP_10_7_COTTON_DOWN:
        case MOVE_PERFORMANCE_STEP_10_8_DAMAGE_REDUCTION_BERRY:
        case MOVE_PERFORMANCE_STEP_10_9_DEFENDER_ITEMS_1:
        case MOVE_PERFORMANCE_STEP_10_10_INCINERATE:
        case MOVE_PERFORMANCE_STEP_10_11_DEFENDER_ITEMS_2_JABOCA_ROWAP:
        case MOVE_PERFORMANCE_STEP_10_12_DISGUISE_ICE_FACE:
        case MOVE_PERFORMANCE_STEP_10_13_PROTECTION_FROM_Z_MOVE:
        case MOVE_PERFORMANCE_STEP_11_0_FAINTING:
        case MOVE_PERFORMANCE_STEP_11_1_DESTINY_BOND:
        case MOVE_PERFORMANCE_STEP_12_0_RESET_UNNERVE_NEUTRALIZING_GAS_IF_FAINTED:
        case MOVE_PERFORMANCE_STEP_13_0_MULTIHIT_MOVE_ATTACKER_ITEMS_4:
        case MOVE_PERFORMANCE_STEP_13_1_MULTIHIT_MOVE_DEFENDER_ITEMS_4:
        case MOVE_PERFORMANCE_STEP_14_0_FRIENDSHIP_MESSAGE:
        case MOVE_PERFORMANCE_STEP_15_0_RECOIL_DAMAGE:
        case MOVE_PERFORMANCE_STEP_15_1_BIND_STATE:
        case MOVE_PERFORMANCE_STEP_15_2_SCALE_SHOT_FELL_STINGER:
        case MOVE_PERFORMANCE_STEP_15_3_KNOCK_OFF_THIEF_PLUCK:
        case MOVE_PERFORMANCE_STEP_15_4_CIRCLE_THROW_DRAGON_TAIL:
        case MOVE_PERFORMANCE_STEP_15_5_KNOCK_DOWN_THOUSAND_WAVE_JAW_LOCK:
        case MOVE_PERFORMANCE_STEP_15_5_PLASMA_FISTS:
        case MOVE_PERFORMANCE_STEP_15_6_GENESIS_SUPERNOVA:
        case MOVE_PERFORMANCE_STEP_15_7_RAPID_SPIN:
        case MOVE_PERFORMANCE_STEP_15_8_THAW_FROM_FIRE_MOVE:
        case MOVE_PERFORMANCE_STEP_15_9_SMELLING_SALTS_WAKEUP_SLAP_SPARKLING_ARIA:
        case MOVE_PERFORMANCE_STEP_15_10_EERIE_SPELL:
        case MOVE_PERFORMANCE_STEP_16_0_MAGICIAN_MOXIE:
        case MOVE_PERFORMANCE_STEP_16_1_BERSERK_COLOR_CHANGE:
        case MOVE_PERFORMANCE_STEP_17_0_DEFENDER_ITEMS_3:
        case MOVE_PERFORMANCE_STEP_18_0_PLEDGE_MOVES_COMBINATION:
        case MOVE_PERFORMANCE_STEP_19_0_FORM_CHANGE:
        case MOVE_PERFORMANCE_STEP_20_0_LIFE_ORB_SHELL_BELL:
        case MOVE_PERFORMANCE_STEP_21_0_MOVE_DEFENDER_ITEMS_4:
        case MOVE_PERFORMANCE_STEP_22_0_EMERGENCY_EXIT_WIMP_OUT:
        case MOVE_PERFORMANCE_STEP_23_0_U_TURN_VOLT_SWITCH:
        case MOVE_PERFORMANCE_STEP_24_0_PICKPOCKET:
        case MOVE_PERFORMANCE_STEP_25_0_BURN_UP_DOUBLE_SHOCK_TYPELOSS:
        case MOVE_PERFORMANCE_STEP_25_1_NATURAL_GIFT:
        case MOVE_PERFORMANCE_STEP_25_2_OUTRAGE_CONFUSION:
        case MOVE_PERFORMANCE_STEP_25_3_ICE_SPINNER_STEEL_ROLLER:
        case MOVE_PERFORMANCE_STEP_25_4_ORDER_UP:
        case MOVE_PERFORMANCE_STEP_26_0_LEPPA_BERRY_THROAT_SPRAY_BLUNDER_POLICY:
        case MOVE_PERFORMANCE_STEP_27_0_ABILITIES_2:
        case MOVE_PERFORMANCE_STEP_27_1_OPPORTUNIST_SYBIOSIS:
        case MOVE_PERFORMANCE_STEP_28_0_WHITE_HERB_MIRROR_HERB_EJECT_PACK:
        case MOVE_PERFORMANCE_STEP_29_0_SOMETHING_WITH_SWITCHING:
        case MOVE_PERFORMANCE_STEP_30_0_DANCER:
        case MOVE_PERFORMANCE_CLEAR_MAGIC_COAT:
        case MOVE_PERFORMANCE_END:
            break;
        default:
            break;
    }
}

/**
 *  @brief do post move effects--synchronize, held item effects, ice thawing from move usage, etc.
 *         no other abilities here though.  primarily here to add scald melting frozen battlers
 *
 *  @param bsys battle work structure
 *  @param ctx global battle structure
 */
void ServerDoPostMoveEffectsInternal(void *bsys, struct BattleStruct *ctx)
{
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
}


int ActivateSturdyOrFocusSashOrFocusBand(void *bsys, struct BattleStruct *sp, int *seq_no)
{
    int ret = FALSE;

    for (int battler = 0; battler < BattleWorkClientSetMaxGet(bsys); battler++)
    {
        int itemHoldEffect = HeldItemHoldEffectGet(sp, battler);
        int itemPower = HeldItemAtkGet(sp, battler, 0);

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
