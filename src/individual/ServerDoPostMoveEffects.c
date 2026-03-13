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
int LONG_CALL ActivateDefenderItems4(void *bsys, struct BattleStruct *sp);
int LONG_CALL ShowDamageReductionBerryMessage(void *bsys, struct BattleStruct *sp);

int LONG_CALL Activate_Sturdy_FocusSash_FocusBand_Message(void *bsys, struct BattleStruct *sp, int *seq_no);
int LONG_CALL Activate_Clearsmog(void *bsys UNUSED, struct BattleStruct *ctx);
int LONG_CALL CottonDownCheck(void *bsys UNUSED, struct BattleStruct *ctx);
int LONG_CALL Activate_FlameBurstHit(void *bsys UNUSED, struct BattleStruct *ctx);
int LONG_CALL Activate_Rowap_Jaboca(void *bw, struct BattleStruct *sp);
int LONG_CALL Activate_Incinerate(void *bw, struct BattleStruct *sp);
void LONG_CALL Activate_KO_Count(void *bw, struct BattleStruct *sp);
int LONG_CALL ThawTarget_FromFireMove_Scald(void *bsys UNUSED, struct BattleStruct *ctx);
int LONG_CALL Activate_ThroatSpray_BlunderPolicy(void *bsys, struct BattleStruct *ctx);
int LONG_CALL Activate_RampageConfusion(void *bsys UNUSED, struct BattleStruct *ctx);
int LONG_CALL Activate_ShellBell_LifeOrb(void *bw UNUSED, struct BattleStruct *sp);
int LONG_CALL Activate_Moxie_BeastBoost_Others(void *bsys UNUSED, struct BattleStruct *ctx);
int LONG_CALL Activate_FormChange(void *bsys, struct BattleStruct *ctx);
int LONG_CALL Activate_MirrorHerb_WhiteHerb_EjectPack(void *bw, struct BattleStruct *ctx);
int LONG_CALL Activate_KeeMarangaBerry_RedCard_EjectButton(void *bsys, struct BattleStruct *ctx);
int LONG_CALL Activate_Berserk_AngerShell_ColorChange(void *bsys UNUSED, struct BattleStruct *ctx);
int LONG_CALL Activate_Pickpocket(void *bsys, struct BattleStruct *sp);
int LONG_CALL Activate_Disguise_IceFace(void *bsys, struct BattleStruct *sp);

int LONG_CALL Activate_Switch(void *bsys UNUSED, struct BattleStruct *ctx);

int LONG_CALL Activate_RecoilDamage(void *bsys UNUSED, struct BattleStruct *ctx);
int LONG_CALL Activate_AdditionalMoveEffects(void *bsys, struct BattleStruct *ctx);
int LONG_CALL Activate_BurnUp_DoubleShock(void *bsys UNUSED, struct BattleStruct *ctx);
int LONG_CALL Activate_SteelRoller_IceSpinner(void *bsys UNUSED, struct BattleStruct *ctx);

int LONG_CALL Activate_Moxie_BeastBoost_Others(void *bsys UNUSED, struct BattleStruct *ctx);


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
        debug_printf("in MOVE_PERFORMANCE_VANISH_ON_OFF %d\n", ctx->swoam_seq_no);
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

        ctx->swoam_seq_no++;
        
        if (ctx->server_status_flag & BATTLE_STATUS_SELFDESTRUCTED) {
            ctx->fainting_client = ctx->attack_client; // No2Bit((ctx->server_status_flag & BATTLE_STATUS_SELFDESTRUCTED) >> BATTLE_STATUS_SELFDESTRUCTED_SHIFT);
            ctx->server_status_flag &= ~BATTLE_STATUS_SELFDESTRUCTED;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BOOM);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return;
        }
        
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_4_DEAL_DAMAGE:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_5_SE_TYPE_EFFECTIVENESS_MESSAGE:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_5_SE_TYPE_EFFECTIVENESS_MESSAGE %d\n", ctx->swoam_seq_no);
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
        debug_printf("in MOVE_PERFORMANCE_STEP_6_NOT_SE_TYPE_EFFECTIVENESS_MESSAGE %d\n", ctx->swoam_seq_no);
#endif
        // TODO confirm translation, handled in WazaStatusMessage above?
        ctx->swoam_seq_no++;
    }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_7_CRITICAL_HIT_MESSAGE:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_7_CRITICAL_HIT_MESSAGE %d\n", ctx->swoam_seq_no);
#endif

        ctx->swoam_seq_no++;
        if (ServerCriticalMessage(bsys, ctx) == TRUE) {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_8_STURDY_FOCUS_SASH: {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_8_STURDY_FOCUS_SASH %d\n", ctx->swoam_seq_no);
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
        // TODO needed?
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_9_0_FLING:
        // TODO needed?
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_9_1_FLINCH_CHECK:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_9_1_FLINCH_CHECK %d\n", ctx->swoam_seq_no);
#endif
        ctx->swoam_seq_no++;
        if (ServerFlinchCheck(bsys, ctx) == TRUE) {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_9_2_SECONDARY_EFFECTS: {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_9_2_SECONDARY_EFFECTS %d\n", ctx->swoam_seq_no);
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
    case MOVE_PERFORMANCE_STEP_9_2_1_SECONDARY_EFFECTS_SPREAD_MOVES_LOOP_BACK:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_9_2_1_SECONDARY_EFFECTS_SPREAD_MOVES_LOOP_BACK %d\n", ctx->swoam_seq_no);
#endif
        if (CanGetNextDefender(bsys, ctx) == TRUE) {
            ctx->server_seq_no = CONTROLLER_COMMAND_31;
            ctx->swoam_seq_no = MOVE_PERFORMANCE_STEP_9_1_FLINCH_CHECK;
            return;
        } else {
            ctx->clientLoopForSpreadMoves = 0;
            CanGetNextDefender(bsys, ctx);
        }
        ctx->add_status_flag_indirect = 0;
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_9_3_FLAME_BURST:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_9_2_FLAME_BURST %d\n", ctx->swoam_seq_no);
#endif
        ctx->swoam_seq_no++;
        if (Activate_FlameBurstHit(bsys, ctx) == TRUE)
        { 
            return;
        }    
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_9_4_DYNAMAX_MOVE_EFFECTS:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_0_CORE_ENFORCER:
        // TODO
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_1_RAGE:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_10_1_RAGE %d\n", ctx->swoam_seq_no);
#endif
        ctx->swoam_seq_no++;
        // https://github.com/pret/pokeheartgold/blob/f20f85b627d0ba2b208d8e33181cab27d5d1508f/src/battle/battle_controller_player.c#L3802C13-L3802C25
        if (ServerIkariCheck(bsys, ctx) == TRUE) { // TODO: rename to TryBuildRage, hook, checks only defence_client currently
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_2_CLEAR_SMOG:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_10_2_CLEAR_SMOG %d\n", ctx->swoam_seq_no);
#endif
        ctx->swoam_seq_no++;
        if (Activate_Clearsmog(bsys, ctx) == TRUE) {
            return;
        }
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
        debug_printf("in MOVE_PERFORMANCE_STEP_10_5_POISON_TOUCH %d\n", ctx->swoam_seq_no);
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
        debug_printf("in MOVE_PERFORMANCE_STEP_10_6_DEFENDER_ABILITY %d\n", ctx->swoam_seq_no);
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
        debug_printf("in MOVE_PERFORMANCE_STEP_10_8_DAMAGE_REDUCTION_BERRY %d\n", ctx->swoam_seq_no);
#endif

        ctx->swoam_seq_no++;
        if (ShowDamageReductionBerryMessage(bsys, ctx) == TRUE) {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_9_DEFENDER_ITEMS_1: {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_10_9_DEFENDER_ITEMS_1 %d\n", ctx->swoam_seq_no);
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
        debug_printf("in MOVE_PERFORMANCE_STEP_10_10_INCINERATE %d\n", ctx->swoam_seq_no);
#endif
        ctx->swoam_seq_no++;
        if (Activate_Incinerate(bsys, ctx) == TRUE) {
            return;
        }
        ctx->swoak_work = 0;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_11_DEFENDER_ITEMS_2_JABOCA_ROWAP:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_10_11_DEFENDER_ITEMS_2_JABOCA_ROWAP %d\n", ctx->swoam_seq_no);
#endif
        ctx->swoam_seq_no++;
        if (Activate_Rowap_Jaboca(bsys, ctx) == TRUE) {
            return;
        }
        ctx->swoak_work = 0;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_10_12_DISGUISE_ICE_FACE:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_10_12_DISGUISE_ICE_FACE %d\n", ctx->swoam_seq_no);
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
        debug_printf("in MOVE_PERFORMANCE_STEP_11_0_FAINTING %d\n", ctx->swoam_seq_no);
#endif

        // TODO
        if (CheckIfAnyoneShouldFaint(ctx, ctx->server_seq_no, ctx->server_seq_no, 0/*check grudge/destiny bond*/) == TRUE) {
            Activate_KO_Count(bsys, ctx);
            return;
        }
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_12_0_RESET_UNNERVE_NEUTRALIZING_GAS_IF_FAINTED: // switch in ability check?
    {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_12_0_RESET_UNNERVE_NEUTRALIZING_GAS_IF_FAINTED %d\n", ctx->swoam_seq_no);
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
        debug_printf("in MOVE_PERFORMANCE_STEP_13_0_MULTIHIT_MOVE_ATTACKER_ITEMS_4 %d\n", ctx->swoam_seq_no);
#endif
        if (TryUseHeldItem(bsys, ctx, ctx->attack_client) == TRUE) { // will eventually need TryUseHeldItem anyway.  generic berry function thing
            return;
        }
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_13_1_MULTIHIT_MOVE_DEFENDER_ITEMS_4: // Go back to step 1, damage calc consolidate BattleController_LoopMultiHit
    {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_13_1_MULTIHIT_MOVE_DEFENDER_ITEMS_4 %d\n", ctx->swoam_seq_no);
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
        debug_printf("in MOVE_PERFORMANCE_STEP_15_1_ADDITIONAL_MOVE_EFFECTS %d\n", ctx->swoam_seq_no);
#endif
        ctx->swoam_seq_no++;
        if (Activate_AdditionalMoveEffects(bsys, ctx) == TRUE)
        {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_15_2_THAW_FROM_FIRE_MOVE: {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_15_2_THAW_FROM_FIRE_MOVE %d\n", ctx->swoam_seq_no);
#endif

        if (ThawTarget_FromFireMove_Scald(bsys, ctx) == TRUE) {
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
    }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_16_0_MAGICIAN_MOXIE: //speed order
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_16_0_MAGICIAN_MOXIE %d\n", ctx->swoam_seq_no);
#endif
        ctx->swoam_seq_no++;
        if (Activate_Moxie_BeastBoost_Others(bsys, ctx) == TRUE) {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_16_1_BERSERK_COLOR_CHANGE:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_16_1_BERSERK_COLOR_CHANGE %d\n", ctx->swoam_seq_no);
#endif

        if (Activate_Berserk_AngerShell_ColorChange(bsys, ctx) == TRUE)
        {
            return;
        }
        ctx->swoak_work = 0;
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_17_0_DEFENDER_ITEMS_3: //speed order
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_17_0_DEFENDER_ITEMS_3 %d\n", ctx->swoam_seq_no);
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
        debug_printf("in MOVE_PERFORMANCE_STEP_19_0_FORM_CHANGE %d\n", ctx->swoam_seq_no);
#endif

        // TODO all battlers?, new form changes
        ctx->swoam_seq_no++;
        if (Activate_FormChange(bsys, ctx) == TRUE) {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_20_0_LIFE_ORB_SHELL_BELL:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_20_0_LIFE_ORB_SHELL_BELL %d\n", ctx->swoam_seq_no);
#endif

        ctx->swoam_seq_no++;
        if (Activate_ShellBell_LifeOrb(bsys, ctx) == TRUE)
        {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_21_0_MOVE_DEFENDER_ITEMS_4: //speed order
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_21_0_MOVE_DEFENDER_ITEMS_4 %d\n", ctx->swoam_seq_no);
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
        debug_printf("in MOVE_PERFORMANCE_STEP_23_0_U_TURN_VOLT_SWITCH %d\n", ctx->swoam_seq_no);
#endif

        ctx->swoam_seq_no++;
        if (Activate_Switch(bsys, ctx) == TRUE) {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_24_0_PICKPOCKET: //speed order
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_24_0_PICKPOCKET %d\n", ctx->swoam_seq_no);
#endif
        ctx->swoam_seq_no++;
        if (Activate_Pickpocket(bsys, ctx) == TRUE)
        {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_25_0_BURN_UP_DOUBLE_SHOCK_TYPELOSS: //TODO group Skill effect together in one function
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_25_0_BURN_UP_DOUBLE_SHOCK_TYPELOSS %d\n", ctx->swoam_seq_no);
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
        debug_printf("in MOVE_PERFORMANCE_STEP_25_2_OUTRAGE_CONFUSION %d\n", ctx->swoam_seq_no);
#endif

        ctx->swoam_seq_no++;
        if (Activate_RampageConfusion(bsys, ctx) == TRUE) {
            return;
        }
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_25_3_ICE_SPINNER_STEEL_ROLLER:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_25_3_ICE_SPINNER_STEEL_ROLLER %d\n", ctx->swoam_seq_no);
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
        debug_printf("in MOVE_PERFORMANCE_STEP_26_0_LEPPA_BERRY_THROAT_SPRAY_BLUNDER_POLICY %d\n", ctx->swoam_seq_no);
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
        debug_printf("in MOVE_PERFORMANCE_STEP_27_0_ABILITIES_2 %d\n", ctx->swoam_seq_no);
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
        debug_printf("in MOVE_PERFORMANCE_STEP_28_0_WHITE_HERB_MIRROR_HERB_EJECT_PACK %d\n", ctx->swoam_seq_no);
#endif

        if (Activate_MirrorHerb_WhiteHerb_EjectPack(bsys, ctx) == TRUE) {
            return;
        }
        ctx->swoam_seq_no++;
        FALLTHROUGH;
    case MOVE_PERFORMANCE_STEP_29_0_RESOLVE_PENDING_SWITCH:
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in MOVE_PERFORMANCE_STEP_29_0_RESOLVE_PENDING_SWITCH %d\n", ctx->swoam_seq_no);
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


int LONG_CALL ActivateDefenderItems4(void *bsys, struct BattleStruct *ctx)
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

int LONG_CALL ShowDamageReductionBerryMessage(void *bsys, struct BattleStruct *sp)
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


int LONG_CALL Activate_Sturdy_FocusSash_FocusBand_Message(void *bsys, struct BattleStruct *sp, int *seq_no)
{
    int ret = FALSE;

    int battler = sp->defence_client;
    // for (int battler = 0; battler < BattleWorkClientSetMaxGet(bsys); battler++) {
    int itemHoldEffect = HeldItemHoldEffectGet(sp, battler);

    switch (itemHoldEffect) {
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
        if (sp->oneSelfFlag[battler].prevent_one_hit_ko_item && sp->battlemon[battler].hp == 1 && (sp->battlemon[battler].maxhp + sp->damageForSpreadMoves[battler] /*negative value*/) == 1) {
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

    // TODO Sturdy, False Swipe, Hold Back
    /*
    {
        if (sp->oneTurnFlag[battler].prevent_one_hit_ko_ability == TRUE //already checked by moldbreaker
            && sp->battlemon[battler].hp == 1 && (sp->battlemon[battler].maxhp + sp->hit_damage) == 1)
        {
            sp->battlerIdTemp = battler;
            sp->waza_status_flag |= MOVE_STATUS_FLAG_HELD_ON_ABILITY;
            seq_no[0] = SUB_SEQ_FOCUS_STURDY;
            ret = TRUE;
        }

    }
    */
    //     if (ret) {
    //         break;
    //      }
    //  }

    return ret;
}

int LONG_CALL Activate_Clearsmog(void *bsys UNUSED, struct BattleStruct *ctx)
{
    if (ctx->current_move_index == MOVE_CLEAR_SMOG) {
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_CLEAR_SMOG);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }
    return FALSE;
}

int LONG_CALL CottonDownCheck(void *bsys UNUSED, struct BattleStruct *sp)
{
    sp->swoak_work = sp->defence_client;
    // TODO for loop is for simultaneous damage
    // for ( ; sp->swoak_work < BattleWorkClientSetMaxGet(bsys); sp->swoak_work++)
    {
        if ((GetBattlerAbility(sp, sp->swoak_work) == ABILITY_COTTON_DOWN)
            && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
            && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
            && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
            && ((sp->oneSelfFlag[sp->swoak_work].physical_damage) || (sp->oneSelfFlag[sp->swoak_work].special_damage))) {
            switch (sp->clientLoopForAbility) {
            case SPREAD_ABILITY_LOOP_OPPONENT_LEFT:
                sp->clientLoopForAbility++;
                if (sp->battlemon[BATTLER_OPPONENT_SIDE_LEFT(sp->swoak_work)].species) {
                    sp->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_SPEED_DOWN;
                    sp->addeffect_type = ADD_EFFECT_PRINT_WORK_ABILITY;
                    sp->state_client = BATTLER_OPPONENT_SIDE_LEFT(sp->swoak_work);
                    sp->battlerIdTemp = sp->swoak_work;
                    return TRUE;
                }
                FALLTHROUGH;
            case SPREAD_ABILITY_LOOP_OPPONENT_RIGHT:
                sp->clientLoopForAbility++;
                if (sp->battlemon[BATTLER_OPPONENT_SIDE_RIGHT(sp->swoak_work)].species) {
                    sp->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_SPEED_DOWN;
                    sp->addeffect_type = ADD_EFFECT_PRINT_WORK_ABILITY;
                    sp->state_client = BATTLER_OPPONENT_SIDE_RIGHT(sp->swoak_work);
                    sp->battlerIdTemp = sp->swoak_work;
                    return TRUE;
                }
                FALLTHROUGH;
            case SPREAD_ABILITY_LOOP_ALLY:
                sp->clientLoopForAbility++;
                if (sp->battlemon[BATTLER_ALLY(sp->swoak_work)].species) {
                    sp->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_SPEED_DOWN;
                    sp->addeffect_type = ADD_EFFECT_PRINT_WORK_ABILITY;
                    sp->state_client = BATTLER_ALLY(sp->swoak_work);
                    sp->battlerIdTemp = sp->swoak_work;
                    return TRUE;
                }
                break;
            default:
                break;
            }
        }
        sp->clientLoopForAbility = 0;
    }

    return FALSE;
}
int LONG_CALL Activate_FlameBurstHit(void *bsys UNUSED, struct BattleStruct *ctx)
{
    if (ctx->current_move_index == MOVE_FLAME_BURST) {
        int ally = BATTLER_ALLY(ctx->defence_client);
        if (ctx->battlemon[ally].hp
            && (GetBattlerAbility(ctx, ally) != ABILITY_MAGIC_GUARD)
            && (ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated == 0)) {
            ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated = 1;
            ctx->addeffect_param = ADD_STATUS_EFF_FLAME_BURST_HIT;
            ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
            ctx->state_client = ally;
            ctx->battlerIdTemp = ally;
            ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[ally].maxhp * -1, 16);
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_FLAME_BURST_HIT);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
    }
    return FALSE;
}

int LONG_CALL Activate_Rowap_Jaboca(void *bsys, struct BattleStruct *ctx)
{
    ctx->swoak_work = ctx->defence_client;
    // TODO for loop is for simultaneous damage
    // for ( ; ctx->swoak_work < BattleWorkClientSetMaxGet(bsys); ctx->swoak_work++)
    {
        // int client_no = ctx->turnOrder[ctx->swoak_work];
        int client_no = ctx->swoak_work;
        if (client_no != ctx->attack_client) {

            if (CheckSubstitute(ctx, client_no) == TRUE) {
                return FALSE;
            }

            // Check for defender's items
            int itemHoldEffect = HeldItemHoldEffectGet(ctx, client_no);
            int itemPower = HeldItemAtkGet(ctx, client_no, 0);

            switch (itemHoldEffect) {
            case HOLD_EFFECT_RECOIL_PHYSICAL: // Jaboca Berry
                // Attacker is alive after the attack
                if ((ctx->battlemon[ctx->attack_client].hp)
                    // Attacker does not have Magic Guard
                    && (GetBattlerAbility(ctx, ctx->attack_client) != ABILITY_MAGIC_GUARD)
                    // Attacker dealt physical damage
                    && (ctx->oneSelfFlag[client_no].physical_damage)) {
                    ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[ctx->attack_client].maxhp * -1, itemPower);
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ITEM_DAMAGE_BACK);
                    ctx->next_server_seq_no = ctx->server_seq_no;
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                    return TRUE;
                }
                break;

            case HOLD_EFFECT_RECOIL_SPECIAL: // Rowap Berry
                // Attacker is alive after the attack
                if ((ctx->battlemon[ctx->attack_client].hp)
                    // Attacker does not have Magic Guard
                    && (GetBattlerAbility(ctx, ctx->attack_client) != ABILITY_MAGIC_GUARD)
                    // Attacker dealt special damage
                    && (ctx->oneSelfFlag[client_no].special_damage)) {
                    ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[ctx->attack_client].maxhp * -1, itemPower);
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ITEM_DAMAGE_BACK);
                    ctx->next_server_seq_no = ctx->server_seq_no;
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                    return TRUE;
                }
                break;
            default:
                break;
            }
        }
    }
    return FALSE;
}

int LONG_CALL Activate_Incinerate(void *bsys, struct BattleStruct *ctx)
{
    if (ctx->current_move_index != MOVE_INCINERATE
        || (CheckSubstitute(ctx, ctx->defence_client) == TRUE)
        || ctx->oneSelfFlag[ctx->defence_client].special_damage == 0) {
        return FALSE;
    }

    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_INCINERATE);
    ctx->next_server_seq_no = ctx->server_seq_no;
    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
    return TRUE;
}

int LONG_CALL Activate_AdditionalMoveEffects(void *bsys, struct BattleStruct *ctx)
{
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;

    switch (moveEffect) {
        // TODOs
        // case EFFECT_SPIT_UP: confirm
        // case EFFECT_SWALLOW: confirm

        // case MOVE_EFFECT_TELEKINESIS:
        // case MOVE_EFFECT_SMACK_DOWN: thousand arrows
        // case MOVE_EFFECT_SECRET_POWER:
    case MOVE_EFFECT_BIND_HIT: // fire spin/wrap/infestation
        if (ctx->attack_client != BATTLER_NONE
            && (ctx->battlemon[ctx->attack_client].hp != 0)
            && ctx->defence_client != BATTLER_NONE
            && (ctx->battlemon[ctx->defence_client].hp != 0)) {
            ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BIND_START);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    case MOVE_EFFECT_STEALTH_ROCK_HIT: // https://discord.com/channels/419213663107416084/1368163973366681712/1392652799686348912
        if (ctx->attack_client != BATTLER_NONE
            && (ctx->battlemon[ctx->attack_client].hp != 0)) {
            ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SET_STEALTH_ROCK);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    case MOVE_EFFECT_SET_SPIKES_HIT:
        if (ctx->attack_client != BATTLER_NONE
            && (ctx->battlemon[ctx->attack_client].hp != 0)) {
            ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SET_SPIKES);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    case MOVE_EFFECT_DOUBLE_POWER_HEAL_SLEEP:
        if (ctx->attack_client != BATTLER_NONE
            && (ctx->battlemon[ctx->attack_client].hp != 0)
            && ctx->defence_client != BATTLER_NONE
            && (ctx->battlemon[ctx->defence_client].hp != 0)
            && (ctx->battlemon[ctx->defence_client].condition & STATUS_SLEEP)) {
            ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FORCE_WAKE_UP);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    case MOVE_EFFECT_DOUBLE_POWER_AND_CURE_PARALYSIS:
        if (ctx->attack_client != BATTLER_NONE
            && (ctx->battlemon[ctx->attack_client].hp != 0)
            && ctx->defence_client != BATTLER_NONE
            && (ctx->battlemon[ctx->defence_client].hp != 0)
            && (ctx->battlemon[ctx->defence_client].condition & STATUS_PARALYSIS)) {
            ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HEAL_PARALYSIS);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    case MOVE_EFFECT_MORTAL_SPIN: // mortal spin
    case MOVE_EFFECT_REMOVE_HAZARDS_AND_BINDING: // rapid spin
        if (ctx->attack_client != BATTLER_NONE
            && (ctx->battlemon[ctx->attack_client].hp != 0)) {
            ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_RAPID_SPIN);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    case MOVE_EFFECT_PREVENT_ESCAPE_BOTH_HIT:
        if (ctx->attack_client != BATTLER_NONE
            && (ctx->battlemon[ctx->attack_client].hp != 0)
            && ctx->defence_client != BATTLER_NONE
            && (ctx->battlemon[ctx->defence_client].hp != 0)) {
            ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_JAW_LOCK);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    case MOVE_EFFECT_PREVENT_ESCAPE_HIT:
        if (ctx->attack_client != BATTLER_NONE // TODO confirm
            && ctx->defence_client != BATTLER_NONE
            && (ctx->battlemon[ctx->defence_client].hp != 0)) {
            ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MEAN_LOOK);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    case MOVE_EFFECT_FELL_STINGER:
        if (ctx->attack_client != BATTLER_NONE
            && (ctx->battlemon[ctx->defence_client].hp == 0)
            && (ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated == 0)
            && (ctx->battlemon[ctx->attack_client].states[STAT_ATTACK] < 12)) {
            ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated = 1;
            ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_3;
            ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
            ctx->state_client = ctx->attack_client;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BOOST_STATS);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    case MOVE_EFFECT_FORCE_SWITCH_HIT:
        if (ctx->attack_client != BATTLER_NONE
            && ctx->battlemon[ctx->attack_client].hp > 0
            && ctx->battlemon[ctx->defence_client].hp > 0
            && !ctx->battlemon[ctx->defence_client].is_currently_dynamaxed
            && (ctx->oneSelfFlag[ctx->defence_client].physical_damage 
                || ctx->oneSelfFlag[ctx->defence_client].special_damage)
            //&& ((ctx->battlemon[ctx->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN) == 0)
            && ((ctx->battlemon[ctx->defence_client].condition2 & STATUS2_SUBSTITUTE) == 0)
            && ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated == 0) {
            ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated = 1;
            ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FORCE_OUT); // checks suction cup/ingrain
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    case MOVE_EFFECT_REMOVE_HELD_ITEM:
        if (ctx->attack_client != BATTLER_NONE
            && ctx->battlemon[ctx->attack_client].hp > 0
            && ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated) {
            ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated = 1;
            ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_KNOCK_OFF);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    case MOVE_EFFECT_STEAL_HELD_ITEM: // thief, covet
        if (ctx->attack_client != BATTLER_NONE
            && ctx->battlemon[ctx->attack_client].hp > 0
            && ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated)
        // if (ctx->battlemon[ctx->attack_client].item == ITEM_NONE)
        {
            ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated = 1;
            ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_THIEF);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    case MOVE_EFFECT_EAT_BERRY: // pluck, bug bite
        if (ctx->attack_client != BATTLER_NONE
            && ctx->battlemon[ctx->attack_client].hp > 0
            && ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated) {
            ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated = 1;
            ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_PLUCK);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;

    default:
        break;
    }

    switch (ctx->current_move_index) {
    case MOVE_SCALE_SHOT:
        if ((ctx->attack_client != BATTLER_NONE)
            && (ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated == 0)
            && (ctx->battlemon[ctx->attack_client].states[STAT_DEFENSE] > 0)
            && (ctx->battlemon[ctx->attack_client].states[STAT_SPEED] < 12)) {
            ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated = 1;
            ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
            ctx->state_client = ctx->attack_client;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_USER_DEF_DOWN_1_SPEED_UP_1);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    case MOVE_SPARKLING_ARIA:
        if (ctx->battlemon[ctx->attack_client].sheer_force_flag == 0) {
            int i;
            int numberOfClientsHitBySparklingAria = 0;
            int client_no = 0; // initialize
            int client_set_max = BattleWorkClientSetMaxGet(bsys);

            // Count how many mons were hit by Sparkling Aria
            for (i = 0; i < client_set_max; i++) {
                client_no = ctx->turnOrder[i];
                if (ctx->oneSelfFlag[client_no].special_damager == ctx->attack_client) {
                    numberOfClientsHitBySparklingAria++;
                }
            }

            // Heal Burn loop
            for (i = 0; i < client_set_max; i++) {
                client_no = ctx->turnOrder[i];
                if ((ctx->oneSelfFlag[client_no].special_damager == ctx->attack_client)
                    && (ctx->battlemon[client_no].condition & STATUS_BURN)
                    && (ctx->battlemon[client_no].hp)) {
                    if (numberOfClientsHitBySparklingAria > 1 || GetBattlerAbility(ctx, client_no) != ABILITY_SHIELD_DUST) {
                        ctx->battlerIdTemp = client_no;
                        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HEAL_TARGET_BURN);
                        ctx->next_server_seq_no = ctx->server_seq_no;
                        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                        return TRUE;
                    }
                }
            }
        }
        break;
    default:
        break;
    }

    return FALSE;
}

// https://bulbapedia.bulbagarden.net/wiki/Category:Moves_that_thaw_out_the_user
// will have to add matcha gotcha and burn up to the list of effects that thaw the user
u16 gMovesThatThawFrozenMons[] = {
    // MOVE_BURN_UP,
    // MOVE_FLAME_WHEEL,
    // MOVE_FLARE_BLITZ,
    // MOVE_FUSION_FLARE,
    MOVE_MATCHA_GOTCHA,
    // MOVE_PYRO_BALL,
    // MOVE_SACRED_FIRE,
    MOVE_SCALD,
    MOVE_SCORCHING_SANDS,
    MOVE_STEAM_ERUPTION,
};

int LONG_CALL ThawTarget_FromFireMove_Scald(void *bsys UNUSED, struct BattleStruct *ctx)
{
    int movetype;
    u16 currMove = ctx->current_move_index;

    movetype = GetAdjustedMoveType(ctx, ctx->attack_client, currMove); // new normalize checks

    if (ctx->defence_client != BATTLER_NONE) {
        if ((ctx->battlemon[ctx->defence_client].condition & STATUS_FREEZE)
            && ((ctx->waza_status_flag & MOVE_STATUS_FLAG_FURY_CUTTER_MISS) == 0)
            && (ctx->defence_client != ctx->attack_client)
            && ((ctx->oneSelfFlag[ctx->defence_client].physical_damage) || (ctx->oneSelfFlag[ctx->defence_client].special_damage))
            && (ctx->battlemon[ctx->defence_client].hp)
            && ((movetype == TYPE_FIRE) || (IsElementInArray(gMovesThatThawFrozenMons, &currMove, NELEMS(gMovesThatThawFrozenMons), sizeof(u16)))) // scald can also melt opponents as of gen 6
            && ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag == 0) {
            ctx->battlerIdTemp = ctx->defence_client;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_THAW_OUT);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
    }
    return FALSE;
}

int LONG_CALL Activate_BurnUp_DoubleShock(void *bsys UNUSED, struct BattleStruct *ctx)
{
    switch (ctx->current_move_index) {
    case MOVE_BURN_UP:
        if (ctx->attack_client != BATTLER_NONE
            && ctx->battlemon[ctx->attack_client].hp
            && ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated == 0) {
            ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated = 1;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_REMOVE_USER_FIRE_TYPE);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    case MOVE_DOUBLE_SHOCK:
        if (ctx->attack_client != BATTLER_NONE
            && ctx->battlemon[ctx->attack_client].hp
            && ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated == 0) {
            ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated = 1;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_REMOVE_USER_ELECTRIC_TYPE);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    default:
        break;
    }

    return FALSE;
}

int LONG_CALL Activate_SteelRoller_IceSpinner(void *bsys UNUSED, struct BattleStruct *ctx)
{
    if (ctx->terrainOverlay.type != TERRAIN_NONE
        && (ctx->current_move_index == MOVE_STEEL_ROLLER
            || (ctx->current_move_index == MOVE_ICE_SPINNER
                && ctx->battlemon[ctx->attack_client].hp))
        && ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated == 0) {
        ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated = 1;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_TERRAIN_END);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }
    return FALSE;
}

int LONG_CALL Activate_ThroatSpray_BlunderPolicy(void *bsys, struct BattleStruct *ctx)
{
    if (ctx->attack_client != BATTLER_NONE && ctx->battlemon[ctx->attack_client].hp) {
        int itemHeldEffect = HeldItemHoldEffectGet(ctx, ctx->attack_client);
        int boost = HeldItemAtkGet(ctx, ctx->attack_client, ATK_CHECK_NORMAL);
        switch (itemHeldEffect) {
        case HOLD_EFFECT_PP_RESTORE: // leppa berry //TODO refactor leppa into separate function
        {
            int index;
            for (index = 0; index < CLIENT_MAX; index++) {
                if (ctx->battlemon[ctx->attack_client].move[index] && !ctx->battlemon[ctx->attack_client].pp[index]) {
                    break;
                }
            }
            if (index != CLIENT_MAX) {
                BattleMon_AddVar(&ctx->battlemon[ctx->attack_client], MON_DATA_MOVE1PP + index, boost);
                CopyBattleMonToPartyMon(bsys, ctx, ctx->attack_client);
                ctx->waza_work = ctx->battlemon[ctx->attack_client].move[index];
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ITEM_PP_RESTORE);
                return TRUE;
            }
            break;
        }
        case HOLD_EFFECT_BOOST_SPATK_ON_SOUND_MOVE: // throat spray
        {
            if (IsMoveSoundBased(ctx->current_move_index)) {
                ctx->item_work = ctx->battlemon[ctx->attack_client].item;
                ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_SP_ATK_UP;
                ctx->addeffect_type = ADD_EFFECT_HELD_ITEM;
                ctx->state_client = ctx->attack_client;
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_THROAT_SPRAY);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return TRUE;
            }
        }
        case HOLD_EFFECT_BOOST_SPEED_ON_MISS: // TODO blunder policy
        default:
            break;
        }
    }

    return FALSE;
}

int LONG_CALL Activate_RampageConfusion(void *bsys UNUSED, struct BattleStruct *ctx)
{
    // TODO: A rampage move that fails (Thrash, Outrage etc) will cancel except on the last turn
    if (ctx->attack_client != BATTLER_NONE
        && ctx->battlemon[ctx->attack_client].condition2 & STATUS2_RAMPAGE_TURNS
        && !ctx->oneTurnFlag[ctx->attack_client].rampageProcessedFlag) {
        ctx->oneTurnFlag[ctx->attack_client].rampageProcessedFlag = 1;
        ctx->battlemon[ctx->attack_client].condition2 -= 1 << 10;
        if (ov12_02252218(ctx, ctx->attack_client)) { // come back to this
            ctx->battlemon[ctx->attack_client].condition2 &= ~STATUS2_RAMPAGE_TURNS;
        } else if (!(ctx->battlemon[ctx->attack_client].condition2 & STATUS2_RAMPAGE_TURNS) && !(ctx->battlemon[ctx->attack_client].condition2 & STATUS2_CONFUSION)) {
            ctx->state_client = ctx->attack_client;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_THRASH_END);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
    }
    return FALSE;
}

int LONG_CALL Activate_ShellBell_LifeOrb(void *bw UNUSED, struct BattleStruct *sp)
{
    if (sp->attack_client != BATTLER_NONE
        && GetBattlerAbility(sp, sp->attack_client) == ABILITY_SHEER_FORCE
        && sp->battlemon[sp->attack_client].sheer_force_flag == 1) { // skip over shell bell and life orb if sheer force is active
        return FALSE;
    }

    int hold_effect = HeldItemHoldEffectGet(sp, sp->attack_client);
    int hold_effect_param = HeldItemAtkGet(sp, sp->attack_client, ATK_CHECK_NORMAL);

    switch (hold_effect) {
    case HOLD_EFFECT_HP_RESTORE_ON_DMG: {
        if (
            //((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
            //&& (sp->server_status_flag & SERVER_STATUS_FLAG_MOVE_HIT)
            //&&
            (sp->oneSelfFlag[sp->attack_client].shell_bell_damage)
            && (sp->attack_client != sp->defence_client)
            && (sp->battlemon[sp->attack_client].hp < (s32)sp->battlemon[sp->attack_client].maxhp)
            && (sp->battlemon[sp->attack_client].hp)) {
            sp->hp_calc_work = BattleDamageDivide(sp->oneSelfFlag[sp->attack_client].shell_bell_damage * -1, hold_effect_param);
            sp->battlerIdTemp = sp->attack_client;
            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ITEM_HP_GRADUAL);
            sp->next_server_seq_no = sp->server_seq_no;
            sp->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    }
    case HOLD_EFFECT_HP_DRAIN_ON_ATK: {
        if ((GetBattlerAbility(sp, sp->attack_client) != ABILITY_MAGIC_GUARD)
            //&& ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)
            //&& (sp->server_status_flag & SERVER_STATUS_FLAG_MOVE_HIT)
            && (GetMoveSplit(sp, sp->current_move_index) != SPLIT_STATUS)
            && (sp->battlemon[sp->attack_client].hp)) {
            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * -1, 10);
            sp->battlerIdTemp = sp->attack_client;
            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ITEM_HP_LOSS);
            sp->next_server_seq_no = sp->server_seq_no;
            sp->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    }
    default:
        break;
    }
    return FALSE;
}

int LONG_CALL Activate_Moxie_BeastBoost_Others(void *bsys UNUSED, struct BattleStruct *ctx)
{
    if (ctx->attack_client == BATTLER_NONE) {
        return FALSE;
    }

    // TODO Magician in speed order?
    switch (GetBattlerAbility(ctx, ctx->attack_client)) {
    case ABILITY_BEAST_BOOST:
        if (ctx->oneTurnFlag[ctx->attack_client].numberOfKOs) {
            u8 stat = BeastBoostGreatestStatHelper(ctx, ctx->attack_client);

            if ((ctx->battlemon[ctx->attack_client].states[STAT_ATTACK + stat] < 12) && (ctx->battlemon[ctx->attack_client].moveeffect.fakeOutCount != (ctx->total_turn + 1))) {
                switch (ctx->oneTurnFlag[ctx->attack_client].numberOfKOs) {
                case 1:
                    ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP + stat;
                    break;
                case 2:
                    ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_2 + stat;
                    break;
                case 3:
                    ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_3 + stat;
                    break;

                default:
                    break;
                }
                ctx->addeffect_type = ADD_EFFECT_ABILITY;
                ctx->state_client = ctx->attack_client;
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BOOST_STATS);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                ctx->oneTurnFlag[ctx->attack_client].numberOfKOs = 0;
                return TRUE;
            }
        }
        break;
    case ABILITY_CHILLING_NEIGH:
    case ABILITY_AS_ONE_GLASTRIER:
    case ABILITY_MOXIE:
        if (ctx->oneTurnFlag[ctx->attack_client].numberOfKOs) {
            if (ctx->battlemon[ctx->attack_client].states[STAT_ATTACK] < 12) {
                switch (ctx->oneTurnFlag[ctx->attack_client].numberOfKOs) {
                case 1:
                    ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP;
                    break;
                case 2:
                    ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_2;
                    break;
                case 3:
                    ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_3;
                    break;

                default:
                    break;
                }
                ctx->addeffect_type = ADD_EFFECT_ABILITY;
                ctx->state_client = ctx->attack_client;
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BOOST_STATS);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                ctx->oneTurnFlag[ctx->attack_client].numberOfKOs = 0;
                return TRUE;
            }
        }
        break;
    case ABILITY_GRIM_NEIGH:
    case ABILITY_AS_ONE_SPECTRIER:
        if (ctx->oneTurnFlag[ctx->attack_client].numberOfKOs) {
            if (ctx->battlemon[ctx->attack_client].states[STAT_SPATK] < 12) {
                switch (ctx->oneTurnFlag[ctx->attack_client].numberOfKOs) {
                case 1:
                    ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_SP_ATK_UP;
                    break;
                case 2:
                    ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_SP_ATK_UP_2;
                    break;
                case 3:
                    ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_SP_ATK_UP_3;
                    break;

                default:
                    break;
                }
                ctx->addeffect_type = ADD_EFFECT_ABILITY;
                ctx->state_client = ctx->attack_client;
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BOOST_STATS);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                ctx->oneTurnFlag[ctx->attack_client].numberOfKOs = 0;
                return TRUE;
            }
        }
        break;
    default:
        ctx->oneTurnFlag[ctx->attack_client].numberOfKOs = 0;
        break;
    }
    return FALSE;
}

int LONG_CALL Activate_FormChange(void *bsys, struct BattleStruct *ctx)
{
    if (ctx->attack_client == BATTLER_NONE) {
        return FALSE;
    }
    // TODO loop over all battlers?
    switch (ctx->battlemon[ctx->attack_client].species) {
    // case SPECIES_MELOETTA
    case SPECIES_SHAYMIN: {
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SHAYMIN_FORM_CHECK);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    } break;
    case SPECIES_GRENINJA:
        if (ctx->oneTurnFlag[ctx->attack_client].numberOfKOs) {
            if (GetBattlerAbility(ctx, ctx->attack_client) == ABILITY_BATTLE_BOND
                && ctx->battlemon[ctx->attack_client].form_no == 1
                && ctx->onceOnlyAbilityFlags[SanitizeClientForTeamAccess(bsys, ctx->attack_client)][ctx->sel_mons_no[ctx->attack_client]].battleBondFlag == FALSE) {
                ctx->onceOnlyAbilityFlags[SanitizeClientForTeamAccess(bsys, ctx->attack_client)][ctx->sel_mons_no[ctx->attack_client]].battleBondFlag = TRUE;
                ctx->state_client = ctx->attack_client;
                ctx->battlerIdTemp = ctx->attack_client;
                ctx->battlemon[ctx->attack_client].form_no = 2;
                BattleFormChange(ctx->battlerIdTemp, ctx->battlemon[ctx->battlerIdTemp].form_no, bsys, ctx, 0);
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FORM_CHANGE);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                ctx->oneTurnFlag[ctx->attack_client].numberOfKOs = 0;
                return TRUE;
            }
        }
        break;
    default:
        break;
    }
    return FALSE;
}

int LONG_CALL Activate_MirrorHerb_WhiteHerb_EjectPack(void *bsys, struct BattleStruct *ctx)
{
    for (int battler = 0; battler < BattleWorkClientSetMaxGet(bsys); battler++) {
        int ret = FALSE;
        int client_no = ctx->turnOrder[battler];
        int itemHeldEffect = HeldItemHoldEffectGet(ctx, client_no);
        switch (itemHeldEffect) {
        case HOLD_EFFECT_SWITCH_OUT_ON_STAT_DROP: // Eject Pack
            // Defender is alive after the attack
            if ((ctx->battlemon[client_no].hp)
                && (ctx->currentMoveSwitchStatus < CURRENT_MOVE_SWITCH_PENDING)
                // Any Sat lowered
                && ctx->moveConditionsFlags[client_no].anyStatLoweredThisTurn
                && ctx->multiHitCount <= 1) {

                ctx->battlerIdTemp = client_no;
                ctx->state_client = client_no;

                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_SWITCHING_ITEMS);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return TRUE;
            }
            break;
        case HOLD_EFFECT_COPY_STAT_INCREASE: // mirror herb //TODO
            break;
        case HOLD_EFFECT_STATDOWN_RESTORE: // white herb
        {
            int stat;
            for (stat = 0; stat < 8; stat++) {
                if (ctx->battlemon[client_no].states[stat] < 6) {
                    ctx->battlemon[client_no].states[stat] = 6;
                    ret = TRUE;
                }
            }
            if (ret == TRUE) {
                ctx->battlerIdTemp = client_no;
                ctx->item_work = GetBattleMonItem(ctx, client_no);
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ITEM_RECOVER_STAT_DROP);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return TRUE;
            }
            break;
        }
        default:
            break;
        }
    }
    return FALSE;
}

int LONG_CALL Activate_KeeMarangaBerry_RedCard_EjectButton(void *bsys, struct BattleStruct *ctx)
{
    for (; ctx->swoak_work < BattleWorkClientSetMaxGet(bsys);) {
        int client_no = ctx->turnOrder[ctx->swoak_work];
        ctx->swoak_work++;
        if (ctx->battlemon[client_no].hp == 0
            || CheckSubstitute(ctx, client_no) == TRUE
            || ((ctx->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) != 0)
            || ((ctx->server_status_flag & SERVER_STATUS_FLAG_x20) != 0)) {
            continue;
        }

        int itemHeldEffect = HeldItemHoldEffectGet(ctx, client_no);
        switch (itemHeldEffect) {
        case HOLD_EFFECT_SWITCH_OUT_WHEN_HIT: // Eject Button
            // Defender is alive after the attack
            if ((ctx->currentMoveSwitchStatus < CURRENT_MOVE_SWITCH_PENDING)
                && !((GetBattlerAbility(ctx, ctx->attack_client) == ABILITY_SHEER_FORCE) && (ctx->battlemon[ctx->attack_client].sheer_force_flag == 1))
                && ((ctx->oneSelfFlag[client_no].physical_damage)
                    || (ctx->oneSelfFlag[client_no].special_damage))
                && ctx->multiHitCount <= 1) {

                ctx->battlerIdTemp = client_no;
                ctx->state_client = client_no;

                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_SWITCHING_ITEMS);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return TRUE;
            }
            break;

        case HOLD_EFFECT_FORCE_SWITCH_ON_DAMAGE: // Red Card
            // Attacker, Defender is alive after the attack
            if (ctx->attack_client != BATTLER_NONE
                && ctx->battlemon[ctx->attack_client].hp
                && !((GetBattlerAbility(ctx, ctx->attack_client) == ABILITY_SHEER_FORCE) && (ctx->battlemon[ctx->attack_client].sheer_force_flag == 1))
                && (ctx->currentMoveSwitchStatus < CURRENT_MOVE_SWITCH_PENDING)
                // Damage was dealt
                && ((ctx->oneSelfFlag[client_no].physical_damage)
                    || (ctx->oneSelfFlag[client_no].special_damage))
                && ctx->multiHitCount <= 1) {
                ctx->state_client = client_no; // store real defender
                ctx->defence_client = ctx->attack_client;
                ctx->attack_client = ctx->state_client;
                ctx->battlerIdTemp = client_no;

                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_RED_CARD);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return TRUE;
            }
            break;

            // gen6 effects
        case HOLD_EFFECT_BOOST_DEF_ON_PHYSICAL_HIT: // Kee Berry
            if ( // Attacker dealt physical damage
                (ctx->oneSelfFlag[client_no].physical_damage)
                // Defender has less than +6 stages to Defense
                && ((ctx->battlemon[client_no].states[STAT_DEFENSE] < 12)
                    // Or the defender has Contrary and more than -6 stages to Defense
                    || ((MoldBreakerAbilityCheck(ctx, ctx->attack_client, client_no, ABILITY_CONTRARY))
                        && (ctx->battlemon[client_no].states[STAT_DEFENSE] > 0)))) {
                ctx->state_client = client_no;

                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_RAISE_DEFENSE_ON_HIT);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return TRUE;
            }
            break;

        case HOLD_EFFECT_BOOST_SPDEF_ON_SPECIAL_HIT: // Maranga Berry
            if ( // Attacker dealt special damage
                (ctx->oneSelfFlag[client_no].special_damage)
                // Defender has less than +6 stages to Special Defense
                && ((ctx->battlemon[client_no].states[STAT_SPDEF] < 12)
                    // Or the defender has Contrary and more than -6 stages to Special Defense
                    || ((MoldBreakerAbilityCheck(ctx, ctx->attack_client, client_no, ABILITY_CONTRARY))
                        && (ctx->battlemon[client_no].states[STAT_SPDEF] > 0)))) {
                ctx->state_client = client_no;

                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_RAISE_SPECIAL_DEFENSE_ON_HIT);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return TRUE;
            }
            break;
        default:
            break;
        }
    }

    return FALSE;
}

int LONG_CALL Activate_Berserk_AngerShell_ColorChange(void *bsys UNUSED, struct BattleStruct *ctx)
{
    for (; ctx->swoak_work < BattleWorkClientSetMaxGet(bsys);) {
        int client_no = ctx->turnOrder[ctx->swoak_work];
        ctx->swoak_work++;
        if (client_no == ctx->attack_client
            || (ctx->battlemon[client_no].hp == 0)
            || (CheckSubstitute(ctx, client_no) == TRUE)
            || ((ctx->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) != 0)
            || ((ctx->server_status_flag & SERVER_STATUS_FLAG_x20) != 0)) {
            continue;
        }
        ctx->defence_client = client_no;

        // handle berserk
        if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_BERSERK)) {
            if (
                (ctx->battlemon[ctx->defence_client].hp)
                && (ctx->battlemon[ctx->defence_client].states[STAT_SPATK] < 12)
                && ((ctx->oneSelfFlag[ctx->defence_client].physical_damage) || (ctx->oneSelfFlag[ctx->defence_client].special_damage))
                // berserk doesn't activate if the Pokémon gets attacked by a sheer force boosted move
                && !((GetBattlerAbility(ctx, ctx->attack_client) == ABILITY_SHEER_FORCE) && (ctx->battlemon[ctx->attack_client].sheer_force_flag == 1))
                // berserk doesn't activate until the last hit of a multi-hit move
                && (ctx->multiHitCount <= 1)
                && (ctx->battlemon[ctx->defence_client].hp <= (s32)(ctx->battlemon[ctx->defence_client].maxhp / 2))
                && (
                    // checks if the pokémon has gone below half HP from the current damage instance
                    // physical_damage and special_damage contain the relevant damage value that was just dealt, but the value is negative
                    ((ctx->battlemon[ctx->defence_client].hp - (ctx->oneSelfFlag[ctx->defence_client].physical_damage)) > (s32)ctx->battlemon[ctx->defence_client].maxhp / 2)
                    || ((ctx->battlemon[ctx->defence_client].hp - (ctx->oneSelfFlag[ctx->defence_client].special_damage)) > (s32)ctx->battlemon[ctx->defence_client].maxhp / 2))) {
                ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_SP_ATK_UP;
                ctx->addeffect_type = ADD_EFFECT_ABILITY;
                ctx->state_client = ctx->defence_client;
                ctx->battlerIdTemp = ctx->defence_client;

                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BOOST_STATS);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return TRUE;
            }
        } else if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_ANGER_SHELL)) {
            if ((ctx->battlemon[ctx->defence_client].hp)
                && ((ctx->battlemon[ctx->defence_client].states[STAT_ATTACK] < 12)
                    || (ctx->battlemon[ctx->defence_client].states[STAT_SPATK] < 12)
                    || (ctx->battlemon[ctx->defence_client].states[STAT_SPEED] < 12)
                    || (ctx->battlemon[ctx->defence_client].states[STAT_DEFENSE] > 0)
                    || (ctx->battlemon[ctx->defence_client].states[STAT_SPDEF] > 0))
                && ((ctx->oneSelfFlag[ctx->defence_client].physical_damage) || (ctx->oneSelfFlag[ctx->defence_client].special_damage))
                // anger shell doesn't activate if the Pokémon gets attacked by a sheer force boosted move
                && !((GetBattlerAbility(ctx, ctx->attack_client) == ABILITY_SHEER_FORCE) && (ctx->battlemon[ctx->attack_client].sheer_force_flag == 1))
                // anger shell doesn't activate until the last hit of a multi-hit move
                && (ctx->multiHitCount <= 1)
                && (ctx->battlemon[ctx->defence_client].hp <= (s32)(ctx->battlemon[ctx->defence_client].maxhp / 2))
                && (
                    // checks if the pokémon has gone below half HP from the current damage instance
                    // physical_damage and special_damage contain the relevant damage value that was just dealt, but the value is negative
                    ((ctx->battlemon[ctx->defence_client].hp - (ctx->oneSelfFlag[ctx->defence_client].physical_damage)) > (s32)ctx->battlemon[ctx->defence_client].maxhp / 2)
                    || ((ctx->battlemon[ctx->defence_client].hp - (ctx->oneSelfFlag[ctx->defence_client].special_damage)) > (s32)ctx->battlemon[ctx->defence_client].maxhp / 2))) {
                ctx->addeffect_type = ADD_EFFECT_ABILITY;
                ctx->state_client = ctx->defence_client;
                ctx->battlerIdTemp = ctx->defence_client;

                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_ANGER_SHELL);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return TRUE;
            }
        } else if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->defence_client, ABILITY_COLOR_CHANGE)) {
            if (GetBattlerAbility(ctx, ctx->attack_client) == ABILITY_SHEER_FORCE && ctx->battlemon[ctx->attack_client].sheer_force_flag == 1) { // sheer force doesn't let color change activate
                return FALSE;
            }

            u8 movetype = GetAdjustedMoveType(ctx, ctx->attack_client, ctx->current_move_index); // new normalize checks

            if ((ctx->battlemon[ctx->defence_client].hp)
                && (ctx->current_move_index != MOVE_STRUGGLE)
                && (movetype != TYPE_TYPELESS) // Revelation Dance
                && (!ctx->battlemon[ctx->defence_client].is_currently_terastallized)
                && ((ctx->oneSelfFlag[ctx->defence_client].physical_damage) || (ctx->oneSelfFlag[ctx->defence_client].special_damage))
                && (ctx->moveTbl[ctx->current_move_index].power)
                && (!HasType(ctx, ctx->defence_client, movetype))
                && (ctx->battlemon[ctx->defence_client].condition2 & STATUS2_SUBSTITUTE) == 0
                && (ctx->multiHitCount <= 1)) // don't activate until the last hit of a multi-hit move
            {
                ChangeToPureType(ctx, ctx->defence_client, movetype);
                ctx->msg_work = movetype;

                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_COLOR_CHANGE);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return TRUE;
            }
        }
    }

    return FALSE;
}

int LONG_CALL Activate_Pickpocket(void *bsys, struct BattleStruct *sp)
{
    for (int battler = 0; battler < BattleWorkClientSetMaxGet(bsys); battler++) {
        int client_no = sp->turnOrder[battler];
        if (client_no == sp->attack_client
            || (sp->battlemon[client_no].hp == 0)
            || (CheckSubstitute(sp, client_no) == TRUE)
            || ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) != 0)
            || ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) != 0)
            || ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) != 0)) { //TODO u-turn
            continue;
        }

        // handle pickpocket - steal attacker's item if it can
        if (MoldBreakerAbilityCheck(sp, sp->attack_client, client_no, ABILITY_PICKPOCKET)) {
            if (((sp->oneSelfFlag[client_no].physical_damage)
                    || (sp->oneSelfFlag[client_no].special_damage))
                && IsContactBeingMade(GetBattlerAbility(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->attack_client), HeldItemHoldEffectGet(sp, client_no), sp->current_move_index, sp->moveTbl[sp->current_move_index].flag)
                && sp->moveTbl[sp->current_move_index].power != 0
                // can not steal an item if you already have one
                && sp->battlemon[client_no].item == ITEM_NONE
                // if the attacker has its species-specific item or the target would get its item, then pickpocket can not activate
                && CanTrickHeldItem(sp, sp->attack_client, client_no)
                // pickpocket doesn't activate if attacked by sheer force
                && !(GetBattlerAbility(sp, sp->attack_client) == ABILITY_SHEER_FORCE && sp->battlemon[sp->attack_client].sheer_force_flag == 1)) {

                sp->defence_client = client_no;
                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_PICKPOCKET_DEF);
                sp->next_server_seq_no = sp->server_seq_no;
                sp->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return TRUE;
            }
        }
    }

    return FALSE;
}

int LONG_CALL Activate_Disguise_IceFace(void *bw, struct BattleStruct *sp)
{
    if (sp->defence_client == BATTLER_NONE
        || CheckSubstitute(sp, sp->defence_client) == TRUE
        || ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) != 0)
        || ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) != 0)
        || ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) != 0)) {
        return FALSE;
    }
    if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_DISGUISE)) {
        if ((sp->battlemon[sp->defence_client].species == SPECIES_MIMIKYU)
            && (sp->battlemon[sp->defence_client].hp)
            && (sp->battlemon[sp->defence_client].form_no == 0)
            && ((sp->waza_status_flag & MOVE_STATUS_FLAG_MISS) == 0) // if move was successful
            && (sp->moveTbl[sp->current_move_index].power) // if move has power
        ) {
            BattleFormChange(sp->defence_client, 1, bw, sp, TRUE);
            sp->battlerIdTemp = sp->defence_client;
            sp->battlemon[sp->defence_client].form_no = 1;

            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_DISGUISE_ICE_FACE);
            sp->next_server_seq_no = sp->server_seq_no;
            sp->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
    } else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_ICE_FACE)) {
        if ((sp->battlemon[sp->defence_client].species == SPECIES_EISCUE)
            && (sp->battlemon[sp->defence_client].hp)
            && (sp->battlemon[sp->defence_client].form_no == 0)
            && ((sp->waza_status_flag & MOVE_STATUS_FLAG_MISS) == 0) // if move was successful
            && (sp->moveTbl[sp->current_move_index].power != 0)
            && (GetMoveSplit(sp, sp->current_move_index) == SPLIT_PHYSICAL)) {
            BattleFormChange(sp->defence_client, 1, bw, sp, TRUE);
            sp->battlerIdTemp = sp->defence_client;
            sp->battlemon[sp->defence_client].form_no = 1;

            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_DISGUISE_ICE_FACE);
            sp->next_server_seq_no = sp->server_seq_no;
            sp->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
    }

    return FALSE;
}

int LONG_CALL Activate_RecoilDamage(void *bsys UNUSED, struct BattleStruct *ctx)
{
    if (ctx->attack_client == BATTLER_NONE
        || ctx->battlemon[ctx->attack_client].hp == 0
        || MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->attack_client, ABILITY_ROCK_HEAD)
        || MoldBreakerAbilityCheck(ctx, ctx->attack_client, ctx->attack_client, ABILITY_MAGIC_GUARD)) {
        return FALSE;
    }

    int seq_no = 0;
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;
    switch (moveEffect) {
    case MOVE_EFFECT_RECOIL_QUARTER: // wild charge
        seq_no = SUB_SEQ_RECOIL_1_4;
        break;
    case MOVE_EFFECT_RECOIL_PARALYZE_HIT: // volt tackle
    case MOVE_EFFECT_RECOIL_BURN_HIT: // flare blitz
    case MOVE_EFFECT_RECOIL_THIRD: // double edge, brave bird
        seq_no = SUB_SEQ_RECOIL_1_3;
        break;
    case MOVE_EFFECT_RECOIL_HALF: // head smash, light of ruin
        seq_no = SUB_SEQ_RECOIL_1_2;
        break;
    default:
        break;
    }

    if (seq_no != 0) {
#ifdef DEBUG_MOVE_PERFORMNCE_LOGIC
        debug_printf("in ActivateRecoilDamage (%d)\n", ctx->store_damage[ctx->attack_client]);
#endif

        ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, seq_no);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }

    return FALSE;
}

int LONG_CALL Activate_Switch(void *bsys UNUSED, struct BattleStruct *ctx)
{
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;
    switch (moveEffect) {
    case MOVE_EFFECT_SWITCH_HIT: // U-Turn, Flip Turn
        if (ctx->attack_client != BATTLER_NONE
            && ctx->battlemon[ctx->attack_client].hp > 0
            && (ctx->currentMoveSwitchStatus < CURRENT_MOVE_SWITCH_PENDING)
            && ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated == 0) {
            ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated = 1;
            ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
            ctx->state_client = ctx->attack_client;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_PIVOT_ATTACK);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    case MOVE_EFFECT_SHED_TAIL:
    case MOVE_EFFECT_PARTING_SHOT:
        debug_printf("PartingShot attacker %d, defender %d\n", ctx->attack_client, ctx->defence_client);
        if (ctx->attack_client != BATTLER_NONE
            && ctx->battlemon[ctx->attack_client].hp > 0
            && (ctx->currentMoveSwitchStatus < CURRENT_MOVE_SWITCH_PENDING)
            && ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated == 0) {
            ctx->moveConditionsFlags[ctx->attack_client].endTurnMoveEffectActivated = 1;
            ctx->addeffect_type = ADD_EFFECT_MOVE_EFFECT;
            ctx->state_client = ctx->attack_client;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_PARTING_SHOT);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        break;
    default:
        break;
    }

    return FALSE;
}

void LONG_CALL Activate_KO_Count(void *bsys, struct BattleStruct *ctx)
{
    if (ctx->attack_client == BATTLER_NONE || (ctx->battlemon[ctx->attack_client].hp == 0)) {
        return;
    }

    if ((ctx->fainting_client != BATTLER_NONE)
        && ((ctx->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
        && ((ctx->oneSelfFlag[ctx->fainting_client].special_damager == ctx->attack_client)
            || (ctx->oneSelfFlag[ctx->fainting_client].physical_damager == ctx->attack_client))) {
        switch (GetBattlerAbility(ctx, ctx->attack_client)) {
        case ABILITY_BATTLE_BOND: {
            if (ctx->battlemon[ctx->attack_client].species != SPECIES_GRENINJA || ctx->battlemon[ctx->attack_client].form_no != 1) {
                break;
            }
        }
            FALLTHROUGH;
        case ABILITY_BEAST_BOOST:
        case ABILITY_CHILLING_NEIGH:
        case ABILITY_AS_ONE_GLASTRIER:
        case ABILITY_MOXIE: // TODO jpwiki says it works on allies, Aero says it doesnt
        case ABILITY_GRIM_NEIGH:
        case ABILITY_AS_ONE_SPECTRIER: {
            ctx->oneTurnFlag[ctx->attack_client].numberOfKOs++;
        } break;
        default:
            break;
        }
    }
}
