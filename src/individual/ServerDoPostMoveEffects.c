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


void UNUSED ServerDoPostMoveEffectsInternal(void *bsys, struct BattleStruct *ctx);
int ActivateDefenderItems4(void *bsys, struct BattleStruct *sp);
int ShowDamageReductionBerryMessage(void *bsys, struct BattleStruct *sp);


/**
 *  @brief do post move effects--synchronize, held item effects, ice thawing from move usage, etc.
 *         no other abilities here though.  primarily here to add scald melting frozen battlers
 *
 *  @param bsys battle work structure
 *  @param ctx global battle structure
 */
void __attribute__((section(".init"))) ServerDoPostMoveEffectsInternal(void *bsys, struct BattleStruct *ctx)
{
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
    debug_printf("ServerDoPostMoveEffectsInternal %d: attacker %d, movestatus %d, status %d, ctx->multiHitCount %d\n", ctx->swoam_seq_no, ctx->attack_client, ctx->waza_status_flag, ctx->server_status_flag, ctx->multiHitCount);
#endif 

    DynamicSortClientExecutionOrder(bsys, ctx, FALSE);

    switch (ctx->swoam_seq_no) {
    case MOVE_PERFORMANCE_VANISH_ON_OFF: {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_VANISH_ON_OFF\n");
#endif

        for (ctx->swoak_work = 0; ctx->swoak_work < BattleWorkClientSetMaxGet(bsys); ctx->swoak_work++) {
            if (((ctx->battlemon[ctx->swoak_work].effect_of_moves & (MOVE_EFFECT_FLAG_SEMI_INVULNERABLE)) == 0)
                && (ctx->battlemon[ctx->swoak_work].effect_of_moves_temp & (MOVE_EFFECT_FLAG_SEMI_INVULNERABLE))) {
                ctx->battlemon[ctx->swoak_work].effect_of_moves_temp &= ~(MOVE_EFFECT_FLAG_SEMI_INVULNERABLE);
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_VANISH_OFF);
                ctx->battlerIdTemp = ctx->swoak_work;
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return;
            }
        }
        ctx->swoam_seq_no++;
        ctx->swoak_work = 0;
        FALLTHROUGH;
    }
    case MOVE_PERFORMANCE_STORE_DAMAGE:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STORE_DAMAGE (%d)+(%d)\n", ctx->store_damage[ctx->attack_client], ctx->hit_damage);
#endif
        
        ctx->store_damage[ctx->attack_client] += ctx->hit_damage;
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_2_HIT_SUBSTITUTE:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_3_EXPLOSION_USER_FAINTS:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_3_EXPLOSION_USER_FAINTS %d\n", ctx->server_status_flag & BATTLE_STATUS_SELFDESTRUCTED);
#endif
        // TODO once simultaneous damge is in
        ctx->swoam_seq_no++;
        /*
        if (ctx->server_status_flag & BATTLE_STATUS_SELFDESTRUCTED) {
            ctx->fainting_client = ctx->attack_client; // No2Bit((ctx->server_status_flag & BATTLE_STATUS_SELFDESTRUCTED) >> BATTLE_STATUS_SELFDESTRUCTED_SHIFT);
            ctx->server_status_flag &= ~BATTLE_STATUS_SELFDESTRUCTED;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BOOM);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return;
        }
        */
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_4_DEAL_DAMAGE:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_5_SE_TYPE_EFFECTIVENESS_MESSAGE:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_5_SE_TYPE_EFFECTIVENESS_MESSAGE\n");
#endif
        
        // TODO
        ctx->swoam_seq_no++;
        if (ctx->swoam_type == SWOAM_NORMAL) {
            if (ServerWazaStatusMessage(bsys, ctx) == TRUE) {
                return;
            }
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_6_NOT_SE_TYPE_EFFECTIVENESS_MESSAGE: {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_6_NOT_SE_TYPE_EFFECTIVENESS_MESSAGE\n");
#endif
        // TODO confirm translation, handled in WazaStatusMessage above?
        ctx->swoam_seq_no++;
    }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_7_CRITICAL_HIT_MESSAGE:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_7_CRITICAL_HIT_MESSAGE\n");
#endif

        ctx->swoam_seq_no++;
        if (ServerCriticalMessage(bsys, ctx) == TRUE) {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_8_STURDY_FOCUS_SASH: {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_8_STURDY_FOCUS_SASH\n");
#endif

        int seq_no = 0;
        if (Activate_Sturdy_FocusSash_FocusBand_Message(bsys, ctx, &seq_no) == TRUE) {
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, seq_no);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return;
        }

        if (CanGetNextDefender(bsys, ctx) == TRUE) {
            ctx->server_seq_no = CONTROLLER_COMMAND_31;
            return;
        } else {
            ctx->clientLoopForSpreadMoves = 0;
            CanGetNextDefender(bsys, ctx);
        }

        ctx->swoam_seq_no++;
        FALLTHROUGH;
    }
    case MOVE_PERFORMANCE_STEP_8_1_SURVIVE_WITH_FRIENDSHIP:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_9_0_FLING:
        // TODO needed?
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_9_1_SECONDARY_EFFECTS: {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_9_1_SECONDARY_EFFECTS\n");
#endif

        
        int seq_no = 0;
        //TODO hook and simplify logic for flags
        u32 indirectStatusEffectFlag = ctx->add_status_flag_indirect;
        ctx->swoam_seq_no++;
        if ((ST_ServerAddStatusCheck(bsys, ctx, &seq_no) == TRUE) && ((ctx->waza_status_flag & MOVE_STATUS_FLAG_FAILURE_ANY) == 0)) {
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, seq_no);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->add_status_flag_indirect = indirectStatusEffectFlag;
            return;
        }
    }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_9_1_1_SECONDARY_EFFECTS_SPREAD_MOVES_LOOP_BACK:
        if (CanGetNextDefender(bsys, ctx) == TRUE) {
            ctx->server_seq_no = CONTROLLER_COMMAND_31;
            ctx->swoam_seq_no = MOVE_PERFORMANCE_STEP_9_1_SECONDARY_EFFECTS;
            return;
        } else {
            ctx->clientLoopForSpreadMoves = 0;
            CanGetNextDefender(bsys, ctx);
        }
        ctx->add_status_flag_indirect = 0;
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_9_2_FLAME_BURST:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_9_2_FLAME_BURST\n");
#endif
        ctx->swoam_seq_no++;
        if (Activate_FlameBurstHit(bsys, ctx) == TRUE)
        { 
            return;
        }    
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_9_3_DYNAMAX_MOVE_EFFECTS:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_0_CORE_ENFORCER:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_1_RAGE:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_10_1_RAGE\n");
#endif

        // https://github.com/pret/pokeheartgold/blob/f20f85b627d0ba2b208d8e33181cab27d5d1508f/src/battle/battle_controller_player.c#L3802C13-L3802C25
        if (ServerIkariCheck(bsys, ctx) == TRUE) { // TODO: rename to TryBuildRage, hook, checks only defence_client currently
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_2_CLEAR_SMOG:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_3_GRUDGE:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_4_BEAK_BLAST_BURN:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_5_POISON_TOUCH: {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_10_5_POISON_TOUCH\n");
#endif
        ctx->swoam_seq_no++;
        int seq_no = 0;
        if (MoveHitAttackerAbilityCheck(bsys, ctx, &seq_no) == TRUE) // TODO: move out Moxie,etc
        {
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, seq_no);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return;
        }
    }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_6_DEFENDER_ABILITY: {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_10_6_DEFENDER_ABILITY\n");
#endif

        ctx->swoam_seq_no++;
        int seq_no = 0;
        if (MoveHitDefenderAbilityCheck(bsys, ctx, &seq_no) == TRUE) {
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, seq_no);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return;
        }
    }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_7_COTTON_DOWN: {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_10_6_DEFENDER_ABILITY: ctx->swoak_work %d, ctx->clientLoopForAbility %d\n", ctx->swoak_work, ctx->clientLoopForAbility);
#endif

        if (CottonDownCheck(bsys, ctx) == TRUE) {
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BOOST_STATS);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return;
        }
        ctx->clientLoopForAbility = 0;
        ctx->swoam_seq_no++;
        ctx->swoak_work = 0;
    }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_8_DAMAGE_REDUCTION_BERRY:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_10_8_DAMAGE_REDUCTION_BERRY\n");
#endif

        ctx->swoam_seq_no++;
        if (ShowDamageReductionBerryMessage(bsys, ctx) == TRUE) {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_9_DEFENDER_ITEMS_1: {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_10_9_DEFENDER_ITEMS_1\n");
#endif

        ctx->swoam_seq_no++;
        int seq_no = 0;
        // TODO loop through all hit battlers instead of defence_client
        if (CheckDefenderItemEffectOnHit(bsys, ctx, &seq_no) == TRUE) { //remove items used in here already
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, seq_no);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return;
        }
    }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_10_INCINERATE:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_10_10_INCINERATE\n");
#endif
        ctx->swoam_seq_no++;
        if (Activate_Incinerate(bsys, ctx) == TRUE) {
            return;
        }
        ctx->swoak_work = 0;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_11_DEFENDER_ITEMS_2_JABOCA_ROWAP:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_10_11_DEFENDER_ITEMS_2_JABOCA_ROWAP\n");
#endif
        ctx->swoam_seq_no++;
        if (Activate_Rowap_Jaboca(bsys, ctx) == TRUE) {
            return;
        }
        ctx->swoak_work = 0;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_12_DISGUISE_ICE_FACE:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_10_12_DISGUISE_ICE_FACE\n");
#endif

        if (Activate_Disguise_IceFace(bsys, ctx) == TRUE) {
            return;
        }

        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_13_PROTECTION_FROM_Z_MOVE:
        // TODO

        if (CanGetNextDefender(bsys, ctx) == TRUE) {
            ctx->server_seq_no = CONTROLLER_COMMAND_31;
            ctx->swoam_seq_no = MOVE_PERFORMANCE_STEP_10_0_CORE_ENFORCER; //loop back
            return;
        } else {
            ctx->clientLoopForSpreadMoves = 0;
            CanGetNextDefender(bsys, ctx);
        }

        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_11_0_FAINTING:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_11_0_FAINTING\n");
#endif

        // TODO
        if (CheckIfAnyoneShouldFaint(ctx, ctx->server_seq_no, ctx->server_seq_no, 1) == TRUE) {
            return;
        }
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_11_1_DESTINY_BOND:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_12_0_RESET_UNNERVE_NEUTRALIZING_GAS_IF_FAINTED: // switch in ability check?
    {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_12_0_RESET_UNNERVE_NEUTRALIZING_GAS_IF_FAINTED\n");
#endif

        /* int seq_no = ST_ServerPokeAppearCheck(bsys, ctx); // switch in ability check only when killed?

        if (seq_no) {
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, seq_no);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return;
        }
        */
        ctx->swoam_seq_no++;
    }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_13_0_MULTIHIT_MOVE_ATTACKER_ITEMS_4:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_13_0_MULTIHIT_MOVE_ATTACKER_ITEMS_4\n");
#endif
        if (TryUseHeldItem(bsys, ctx, ctx->attack_client) == TRUE) { // will eventually need TryUseHeldItem anyway.  generic berry function thing
            return;
        }
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_13_1_MULTIHIT_MOVE_DEFENDER_ITEMS_4: // Go back to step 1, damage calc consolidate BattleController_LoopMultiHit
    {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_13_1_MULTIHIT_MOVE_DEFENDER_ITEMS_4\n");
#endif

        // TODO confirm
        if (ctx->multiHitCount > 0) {
            if (TryUseHeldItem(bsys, ctx, ctx->defence_client) == TRUE) {
                return;
            }
        }
        if (BattleController_LoopMultiHitInternal(bsys, ctx) == FALSE) {
            ctx->swoam_seq_no++;
        }
        return;
    }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_13_2_MULTIHIT_STATUS_MESSAGE:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_13_2_MULTIHIT_STATUS_MESSAGE %d\n", ctx->swoam_type);
#endif
       
        ctx->swoam_seq_no++;
        if (ctx->swoam_type != SWOAM_NORMAL) {
            if (ServerWazaStatusMessage(bsys, ctx) == TRUE) {
                return;
            }
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_14_0_FRIENDSHIP_MESSAGE:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_15_0_RECOIL_DAMAGE:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_15_0_RECOIL_DAMAGE, storedDamage[%d] %d\n", ctx->attack_client, ctx->store_damage[ctx->attack_client]);
#endif

        ctx->swoam_seq_no++;
        if (Activate_RecoilDamage(bsys, ctx) == TRUE) {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_15_1_ADDITIONAL_MOVE_EFFECTS:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_15_1_ADDITIONAL_MOVE_EFFECTS\n");
#endif
        ctx->swoam_seq_no++;
        if (Activate_AdditionalMoveEffects(bsys, ctx) == TRUE)
        {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_15_2_THAW_FROM_FIRE_MOVE: {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_15_8_THAW_FROM_FIRE_MOVE\n");
#endif

        // TODO loop over all battlers
        if (ThawTarget_FromFireMove_Scald(bsys, ctx) == TRUE) {
            return;
        }
    }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_16_0_MAGICIAN_MOXIE: //speed order
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_16_0_MAGICIAN_MOXIE\n");
#endif
        ctx->swoam_seq_no++;
        if (Activate_Moxie_BeastBoost_Others(bsys, ctx) == TRUE) {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_16_1_BERSERK_COLOR_CHANGE:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_16_1_BERSERK_COLOR_CHANGE\n");
#endif

        // TODO
        ctx->swoam_seq_no++;
        if (Activate_Berserk_AngerShell_ColorChange(bsys, ctx) == TRUE)
        {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_17_0_DEFENDER_ITEMS_3: //speed order
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_17_0_DEFENDER_ITEMS_3\n");
#endif
        if (Activate_KeeMarangaBerry_RedCard_EjectButton(bsys, ctx) == TRUE)
        {
            return;
        }
        ctx->swoak_work = 0;
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_18_0_PLEDGE_MOVES_COMBINATION:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_19_0_FORM_CHANGE:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_19_0_FORM_CHANGE\n");
#endif

        // TODO all battlers?, new form changes
        ctx->swoam_seq_no++;
        if (Activate_FormChange(bsys, ctx) == TRUE) {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_20_0_LIFE_ORB_SHELL_BELL:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_20_0_LIFE_ORB_SHELL_BELL\n");
#endif

        ctx->swoam_seq_no++;
        if (Activate_ShellBell_LifeOrb(bsys, ctx) == TRUE)
        {
            return;
        }
        // TODO loop through all hit battlers instead of defence_client
        if (ServerFlinchCheck(bsys, ctx) == TRUE) { // TODO: confirm, Step 13, 20 or 26?
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_21_0_MOVE_DEFENDER_ITEMS_4: //speed order
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_21_0_MOVE_DEFENDER_ITEMS_4\n");
#endif
        //TODO split tryUseHeldItems?
        if (ActivateDefenderItems4(bsys, ctx) == TRUE) {
            return;
        }
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_22_0_EMERGENCY_EXIT_WIMP_OUT: //speed order
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_23_0_U_TURN_VOLT_SWITCH:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_23_0_U_TURN_VOLT_SWITCH\n");
#endif
        // TODO consolidate switch with others
        ctx->swoam_seq_no++;
        if (Activate_Switch(bsys, ctx) == TRUE) {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_24_0_PICKPOCKET: //speed order
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_24_0_PICKPOCKET\n");
#endif
        // TODO loop over all battlers
        ctx->swoam_seq_no++;
        if (Activate_Pickpocket(bsys, ctx) == TRUE)
        {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_25_0_BURN_UP_DOUBLE_SHOCK_TYPELOSS: //TODO group Skill effect together in one function
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_25_0_BURN_UP_DOUBLE_SHOCK_TYPELOSS\n");
#endif
        ctx->swoam_seq_no++;
        if (Activate_BurnUp_DoubleShock(bsys, ctx) == TRUE) {  //TODO roost?
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_25_1_NATURAL_GIFT:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_25_2_OUTRAGE_CONFUSION:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_25_2_OUTRAGE_CONFUSION\n");
#endif

        ctx->swoam_seq_no++;
        if (Activate_RampageConfusion(bsys, ctx) == TRUE) {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_25_3_ICE_SPINNER_STEEL_ROLLER:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_25_3_ICE_SPINNER_STEEL_ROLLER\n");
#endif

        ctx->swoam_seq_no++;
        if (Activate_SteelRoller_IceSpinner(bsys, ctx) == TRUE)
        {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_25_4_ORDER_UP:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_26_0_LEPPA_BERRY_THROAT_SPRAY_BLUNDER_POLICY:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_26_0_LEPPA_BERRY_THROAT_SPRAY_BLUNDER_POLICY\n");
#endif

        //TODO add blunder policy
        ctx->swoam_seq_no++;
        if (Activate_ThroatSpray_BlunderPolicy(bsys, ctx) == TRUE)
        {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_27_0_ABILITIES_2: //speed order
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_27_0_ABILITIES_2\n");
#endif

        // TODO remove from switchInAbilityCheck?
        for (int battler = 0; battler < BattleWorkClientSetMaxGet(bsys); battler++) {
            int client_no = ctx->turnOrder[battler];
            if (AbilityStatusRecoverCheck(bsys, ctx, client_no, 1) == TRUE) { //TODO thermal exchange and newer abilities
  
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ABILITY_RECOVER_CND);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return;
            }
        }
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_27_1_OPPORTUNIST_SYBIOSIS:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_28_0_WHITE_HERB_MIRROR_HERB_EJECT_PACK: //speed order
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_28_0_WHITE_HERB_MIRROR_HERB_EJECT_PACK\n");
#endif

        // TODO
        if (Activate_MirrorHerb_WhiteHerb_EjectPack(bsys, ctx) == TRUE) {
            return;
        }
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_29_0_RESOLVE_PENDING_SWITCH: // send out new mon? //TODO rename after we get a better translation
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_29_0_RESOLVE_PENDING_SWITCH\n");
#endif
        ctx->swoam_seq_no++;
        if (ctx->currentMoveSwitchStatus == CURRENT_MOVE_SWITCH_PENDING) {
            //ctx->currentMoveSwitchStatus = CURRENT_MOVE_NO_SWITCH;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_PARTY_LIST);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_30_0_DANCER:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_CLEAR_MAGIC_COAT:
        ctx->magicBounceTracker = FALSE;
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_END:
        ctx->swoam_seq_no++;
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
    switch (ctx->swoam_seq_no) {
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
        ctx->swoam_seq_no++;
        ctx->swoak_work = 0;
        FALLTHROUGH;
    case SWOAK_SEQ_SYNCHRONIZE_CHECK:
        ctx->swoam_seq_no++;
        if (SynchroniseAbilityCheck(bsys, ctx, ctx->server_seq_no) == TRUE)
            return;
        FALLTHROUGH;
    case SWOAK_SEQ_POKE_APPEAR_CHECK:
        {
            int seq_no;

            seq_no = ST_ServerPokeAppearCheck(bsys, ctx);   //switch in ability check

            if (seq_no)
            {
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, seq_no);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return;
            }
        }
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case SWOAK_SEQ_CHECK_HELD_ITEM_EFFECT_ATTACKER:
        ctx->swoam_seq_no++;
        if (TryUseHeldItem(bsys, ctx, ctx->attack_client) == TRUE) // will eventually need TryUseHeldItem anyway.  generic berry function thing
            return;
        FALLTHROUGH;
    case SWOAK_SEQ_CHECK_HELD_ITEM_EFFECT_DEFENDER:
        ctx->swoam_seq_no++;
        if (ctx->defence_client != 0xFF)
        {
            if (TryUseHeldItem(bsys, ctx, ctx->defence_client) == TRUE)
                return;
        }
        FALLTHROUGH;
    case SWOAK_SEQ_CHECK_DEFENDER_ITEM_ON_HIT:
        {
            int seq_no;

            ctx->swoam_seq_no++;
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

            ctx->swoam_seq_no++;

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
                ctx->swoam_seq_no++;
                ctx->swoak_work = 0;
            }
        }
        FALLTHROUGH;
    case SWOAK_SEQ_CLEAR_MAGIC_COAT:
        ctx->magicBounceTracker = FALSE;
        ctx->swoam_seq_no++;
        break;
    default:
        break;
    }
    //ctx->swoam_seq_no = 0;
    ctx->swoak_work = 0;
    ctx->server_seq_no = CONTROLLER_COMMAND_32;
    
}*/


int ActivateDefenderItems4(void *bsys, struct BattleStruct *ctx)
{
    for (int battler = 0; battler < BattleWorkClientSetMaxGet(bsys); battler++)
    {
        int client_no = ctx->turnOrder[battler];
        if (client_no != ctx->attack_client)
        {
            if (TryUseHeldItem(bsys, ctx, client_no) == TRUE) {
                return TRUE;
            }
        }
    }
    return FALSE;
}

int ShowDamageReductionBerryMessage(void* bsys, struct BattleStruct* sp)
{
    {
        if ((GetMoveSplit(sp, sp->current_move_index) != SPLIT_STATUS))
        {
            sp->item_work = GetBattleMonItem(sp, sp->defence_client);
            sp->battlerIdTemp = sp->defence_client;
            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_TYPE_RESIST_BERRIES_MESSAGE);
            sp->next_server_seq_no = sp->server_seq_no;
            sp->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
    }
    return FALSE;
}
