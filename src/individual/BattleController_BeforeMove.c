#include "../../include/types.h"
#include "../../include/config.h"
#include "../../include/battle.h"
#include "../../include/item.h"
#include "../../include/mega.h"
#include "../../include/pokemon.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/file.h"
#include "../../include/constants/item.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/species.h"
#include "../../include/constants/system_control.h"

/********************************************************************************************************************/
/********************************************************************************************************************/
//                                                技能使用前判断
/********************************************************************************************************************/
/********************************************************************************************************************/

enum {
    SEQ_MEGA_CHECK = 0,
    SEQ_SENSEI_CHECK,
    SEQ_STATUS_CHECK,
    SEQ_BADGE_CHECK,
    SEQ_PP_CHECK,
    SEQ_DEFENCE_CHECK,
    SEQ_WAZAKOYUU_CHECK,
    SEQ_DEFENCE_CHANGE_CHECK,
    SEQ_PROTEAN_CHECK,
    SEQ_STANCE_CHANGE_CHECK,
    SEQ_PARENTAL_BOND_CHECK,
};

enum {
    BEFORE_MOVE_START = 0,

    BEFORE_MOVE_STATE_RECHARGE,
    BEFORE_MOVE_STATE_SLEEP_OR_FROZEN,
    BEFORE_MOVE_STATE_CHECK_OBEDIENCE,
    BEFORE_MOVE_STATE_CHECK_PP,
    BEFORE_MOVE_STATE_DISPLAY_Z_DANCE_AND_EFFECT,
    BEFORE_MOVE_STATE_TRUANT,
    BEFORE_MOVE_STATE_FOCUS_PUNCH_LOSE_FOCUS,
    BEFORE_MOVE_STATE_FLINCH,
    BEFORE_MOVE_STATE_DISABLED,
    BEFORE_MOVE_STATE_HEAL_BLOCK,
    BEFORE_MOVE_STATE_GRAVITY_THROAT_CHOP,
    BEFORE_MOVE_STATE_CHECK_CHOICE_LOCK,
    BEFORE_MOVE_STATE_TAUNT,
    BEFORE_MOVE_STATE_IMPRISION,
    BEFORE_MOVE_STATE_CONFUSION_SELF_HIT_OR_WEAR_OFF,
    BEFORE_MOVE_STATE_PARALYSIS,
    BEFORE_MOVE_STATE_INFATUATION,
    // BEFORE_MOVE_STATE_SLEEP_TALK_SNORE_ANNOUNCEMENT,
    BEFORE_MOVE_STATE_ANNOUNCE_SUB_MOVE,
    BEFORE_MOVE_STATE_THAW_OUT_BY_MOVE,
    BEFORE_MOVE_STATE_STANCE_CHANGE,

    BEFORE_MOVE_END,
};


enum ObedienceCheckResult {
    OBEY_CHECK_SUCCESS = 0,
    OBEY_CHECK_DO_NOTHING,
    OBEY_CHECK_DIFFERENT_MOVE,
    OBEY_CHECK_HIT_SELF
};

enum {
    CHECK_STATUS_START = 0,

    CHECK_STATUS_STATE_SLEEP,
    CHECK_STATUS_STATE_FREEZE,
    CHECK_STATUS_STATE_TRUANT,
    CHECK_STATUS_STATE_RECHARGING,
    CHECK_STATUS_STATE_FLINCH,
    CHECK_STATUS_STATE_DISABLE,
    CHECK_STATUS_STATE_TAUNT,
    CHECK_STATUS_STATE_IMPRISON,
    CHECK_STATUS_STATE_GRAVITY,
    CHECK_STATUS_STATE_HEAL_BLOCK,
    CHECK_STATUS_STATE_CONFUSION,
    CHECK_STATUS_STATE_PARALYSIS,
    CHECK_STATUS_STATE_ATTRACT,
    CHECK_STATUS_STATE_BIDE,
    CHECK_STATUS_STATE_SELF_THAW,

    CHECK_STATUS_END,
};

enum {
    CHECK_STATUS_LOOP_BACK = 0,
    CHECK_STATUS_DISRUPT_MOVE,  // wholly disrupt the move; attacker does not get a turn
    CHECK_STATUS_GO_TO_SCRIPT,  // execute a given script, then proceed with the chosen move
    CHECK_STATUS_DONE,
};


// static BOOL ov12_0224B528(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     int effect = ctx->moveTbl[ctx->current_move_index].effect;
//     int ret = CHECK_STATUS_LOOP_BACK;

//     do {
//         switch (ctx->ssc_seq_no) {
//             case CHECK_STATUS_START: {
//                 ctx->battlemon[ctx->attack_client].condition2 &= ~STATUS2_DESTINY_BOND;
//                 ctx->battlemon[ctx->attack_client].effect_of_moves &= ~MOVE_EFFECT_FLAG_GRUDGE;
//                 ctx->ssc_seq_no++;
//                 break;
//             }
//             case CHECK_STATUS_STATE_SLEEP: {
//                 if (ctx->battlemon[ctx->attack_client].condition & STATUS_SLEEP) {
//                     if (ctx->field_condition & FIELD_STATUS_UPROAR && GetBattlerAbility(ctx, ctx->attack_client) != ABILITY_SOUNDPROOF) {
//                         ctx->battlerIdTemp = ctx->attack_client;
//                         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WAKE_UP);
//                         ctx->next_server_seq_no = ctx->server_seq_no;
//                         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                         ret = CHECK_STATUS_GO_TO_SCRIPT;
//                     } else if ((ctx->current_move_index != MOVE_SLEEP_TALK && ctx->moveNoTemp == MOVE_SLEEP_TALK) == 0) {
//                         int sleepCounterDecrease;

//                         if (GetBattlerAbility(ctx, ctx->attack_client) == ABILITY_EARLY_BIRD) {
//                             sleepCounterDecrease = 2;
//                         } else {
//                             sleepCounterDecrease = 1;
//                         }
//                         if ((ctx->battlemon[ctx->attack_client].condition & STATUS_SLEEP) < sleepCounterDecrease) {
//                             ctx->battlemon[ctx->attack_client].condition &= ~STATUS_SLEEP;
//                         } else {
//                             ctx->battlemon[ctx->attack_client].condition -= sleepCounterDecrease;
//                         }

//                         if (ctx->battlemon[ctx->attack_client].condition & STATUS_SLEEP) {
//                             if (ctx->current_move_index != MOVE_SNORE && ctx->moveNoTemp != MOVE_SLEEP_TALK) {
//                                 LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SLEEPING);
//                                 ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                                 ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
//                                 ret = CHECK_STATUS_GO_TO_SCRIPT;
//                             }
//                         } else {
//                             ctx->battlerIdTemp = ctx->attack_client;
//                             LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WAKE_UP);
//                             ctx->next_server_seq_no = ctx->server_seq_no;
//                             ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                             ret = CHECK_STATUS_GO_TO_SCRIPT;
//                         }
//                     }
//                 }
//                 ctx->ssc_seq_no++;
//                 break;
//             }
//             case CHECK_STATUS_STATE_FREEZE: {
//                 if (ctx->battlemon[ctx->attack_client].condition & STATUS_FREEZE) {
//                     if (BattleRand(bsys) % 5 != 0) {
//                         if (effect != MOVE_EFFECT_THAW_AND_BURN_HIT && effect != MOVE_EFFECT_RECOIL_BURN_HIT) {
//                             LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FROZEN);
//                             ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                             ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
//                             ret = CHECK_STATUS_DISRUPT_MOVE;
//                         }
//                     } else {
//                         ctx->battlerIdTemp = ctx->attack_client;
//                         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_THAW_OUT);
//                         ctx->next_server_seq_no = ctx->server_seq_no;
//                         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                         ret = CHECK_STATUS_GO_TO_SCRIPT;
//                     }
//                 }
//                 ctx->ssc_seq_no++;
//                 break;
//             }
//             case CHECK_STATUS_STATE_TRUANT: {
//                 if (CheckTruant(ctx, ctx->attack_client) == TRUE) {
//                     LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_LOAFING);
//                     ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                     ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
//                     ret = CHECK_STATUS_DISRUPT_MOVE;
//                 }
//                 ctx->ssc_seq_no++;
//                 break;
//             }
//             case CHECK_STATUS_STATE_RECHARGING: {
//                 if (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_RECHARGE) {
//                     ctx->battlemon[ctx->attack_client].condition2 &= ~STATUS2_RECHARGE;
//                     LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_RECHARGE_TURN);
//                     ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                     ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
//                     ret = CHECK_STATUS_DISRUPT_MOVE;
//                 }
//                 ctx->ssc_seq_no++;
//                 break;
//             }
//             case CHECK_STATUS_STATE_FLINCH: {
//                 if (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_FLINCH) {
//                     ctx->battlemon[ctx->attack_client].condition2 &= ~STATUS2_FLINCH;
//                     ctx->moveOutCheck[ctx->attack_client].stoppedFromFlinch = TRUE;
//                     LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAIL_FLINCHED);
//                     ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                     ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
//                     ret = CHECK_STATUS_DISRUPT_MOVE;
//                 }
//                 ctx->ssc_seq_no++;
//                 break;
//             }
//             case CHECK_STATUS_STATE_DISABLE: {
//                 if (ctx->battlemon[ctx->attack_client].moveeffect.disabledMove == ctx->moveNoTemp) {
//                     ctx->moveOutCheck[ctx->attack_client].stoppedFromDisable = TRUE;
//                     LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_IS_DISABLED);
//                     ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                     ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
//                     ret = CHECK_STATUS_DISRUPT_MOVE;
//                 }
//                 ctx->ssc_seq_no++;
//                 break;
//             }
//             case CHECK_STATUS_STATE_TAUNT: {
//                 if (ctx->battlemon[ctx->attack_client].moveeffect.tauntTurns && ctx->moveTbl[ctx->current_move_index].power == 0) {
//                     ctx->moveOutCheck[ctx->attack_client].stoppedFromTaunt = TRUE;
//                     LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAIL_TAUNTED);
//                     ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                     ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
//                     ret = CHECK_STATUS_DISRUPT_MOVE;
//                 }
//                 ctx->ssc_seq_no++;
//                 break;
//             }
//             case CHECK_STATUS_STATE_IMPRISON: {
//                 if (BattleContext_CheckMoveImprisoned(bsys, ctx, ctx->attack_client, ctx->current_move_index)) {
//                     ctx->moveOutCheck[ctx->attack_client].stoppedFromImprison = TRUE;
//                     LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_IS_IMPRISONED);
//                     ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                     ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
//                     ret = CHECK_STATUS_DISRUPT_MOVE;
//                 }
//                 ctx->ssc_seq_no++;
//                 break;
//             }
//             case CHECK_STATUS_STATE_GRAVITY: {
//                 if (BattleContext_CheckMoveUnuseableInGravity(bsys, ctx, ctx->attack_client, ctx->current_move_index)) {
//                     ctx->moveOutCheck[ctx->attack_client].stoppedFromGravity = TRUE;
//                     LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAIL_GRAVITY);
//                     ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                     ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
//                     ret = CHECK_STATUS_DISRUPT_MOVE;
//                 }
//                 ctx->ssc_seq_no++;
//                 break;
//             }
//             case CHECK_STATUS_STATE_HEAL_BLOCK: {
//                 if (BattleContext_CheckMoveHealBlocked(bsys, ctx, ctx->attack_client, ctx->current_move_index)) {
//                     ctx->moveOutCheck[ctx->attack_client].stoppedFromHealBlock = TRUE;
//                     LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAILED_HEAL_BLOCK);
//                     ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                     ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
//                     ret = CHECK_STATUS_DISRUPT_MOVE;
//                 }
//                 ctx->ssc_seq_no++;
//                 break;
//             }
//             case CHECK_STATUS_STATE_CONFUSION: {
//                 ctx->ssc_seq_no++;
//                 if (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_CONFUSION) {
//                     ctx->battlemon[ctx->attack_client].condition2 -= 1;
//                     if (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_CONFUSION) {
//                         if (BattleRand(bsys) & 1) {
//                             LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CONFUSED);
//                             ctx->next_server_seq_no = ctx->server_seq_no;
//                             ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                             ret = CHECK_STATUS_GO_TO_SCRIPT;
//                         } else {
//                             ctx->moveOutCheck[ctx->attack_client].stoppedFromConfusion = TRUE;
//                             ctx->defence_client = ctx->attack_client;
//                             ctx->battlerIdTemp = ctx->defence_client;
//                             ctx->hp_calc_work = CalcBaseDamage(bsys, ctx, MOVE_STRUGGLE, 0, 0, 40, 0, ctx->attack_client, ctx->attack_client, 1);
//                             ctx->hp_calc_work = AdjustDamageForRoll(bsys, ctx, ctx->hp_calc_work);
//                             ctx->hp_calc_work *= -1;
//                             LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CONFUSED_SELF_HIT);
//                             ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                             ctx->next_server_seq_no = CONTROLLER_COMMAND_34;
//                             ret = CHECK_STATUS_DISRUPT_MOVE;
//                         }
//                     } else {
//                         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CONFUSED_NO_MORE);
//                         ctx->next_server_seq_no = ctx->server_seq_no;
//                         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                         ret = CHECK_STATUS_GO_TO_SCRIPT;
//                     }
//                 }
//                 break;
//             }
//             case CHECK_STATUS_STATE_PARALYSIS: {
//                 if (ctx->battlemon[ctx->attack_client].condition & STATUS_PARALYSIS && GetBattlerAbility(ctx, ctx->attack_client) != ABILITY_MAGIC_GUARD) {
//                     if (BattleRand(bsys) % 4 == 0) {
//                         ctx->moveOutCheck[ctx->attack_client].stoppedFromParalysis = TRUE;
//                         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FULLY_PARALYZED);
//                         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                         ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
//                         ret = CHECK_STATUS_DISRUPT_MOVE;
//                     }
//                 }
//                 ctx->ssc_seq_no++;
//                 break;
//             }
//             case CHECK_STATUS_STATE_ATTRACT: {
//                 if (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_ATTRACT) {
//                     ctx->battlerIdTemp = LowestFlagNo((ctx->battlemon[ctx->attack_client].condition2 & STATUS2_ATTRACT) >> STATUS2_ATTRACT_SHIFT);
//                     if (BattleRand(bsys) & 1) {
//                         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_INFATUATED);
//                         ctx->next_server_seq_no = ctx->server_seq_no;
//                         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                         ret = CHECK_STATUS_GO_TO_SCRIPT;
//                     } else {
//                         ctx->moveOutCheck[ctx->attack_client].stoppedFromAttract = TRUE;
//                         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_IMMOBILIZED_BY_LOVE);
//                         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                         ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
//                         ret = CHECK_STATUS_DISRUPT_MOVE;
//                     }
//                 }
//                 ctx->ssc_seq_no++;
//                 break;
//             }
//             case CHECK_STATUS_STATE_BIDE: {
//                 ctx->ssc_seq_no++;
//                 if (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_BIDE) {
//                     ctx->battlemon[ctx->attack_client].condition2 -= (1 << STATUS2_BIDE_SHIFT);
//                     if (!(ctx->battlemon[ctx->attack_client].condition2 & STATUS2_BIDE) && ctx->store_damage[ctx->attack_client]) {
//                         ctx->damage = ctx->store_damage[ctx->attack_client] * 2;
//                         if (ctx->battlemon[ctx->client_no_hit[ctx->attack_client]].hp != 0) {
//                             ctx->defence_client = ctx->client_no_hit[ctx->attack_client];
//                         } else {
//                             ctx->defence_client = Battler_GetRandomOpposingBattlerId(bsys, ctx, ctx->attack_client);
//                             if (ctx->battlemon[ctx->defence_client].hp == 0) {
//                                 LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BIDE_END_NO_TARGET);
//                                 ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
//                                 ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                                 ret = CHECK_STATUS_GO_TO_SCRIPT;
//                                 break;
//                             }
//                         }
//                     }
//                     LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_END_BIDE);
//                     ctx->next_server_seq_no = ctx->server_seq_no;
//                     ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                     ret = CHECK_STATUS_GO_TO_SCRIPT;
//                 }
//                 break;
//             }
//             case CHECK_STATUS_STATE_SELF_THAW: {
//                 if (ctx->battlemon[ctx->attack_client].condition & STATUS_FREEZE) {
//                     if (effect == MOVE_EFFECT_THAW_AND_BURN_HIT || effect == MOVE_EFFECT_RECOIL_BURN_HIT) {
//                         LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_THAW_OUT_FROM_MOVE);
//                         ctx->next_server_seq_no = ctx->server_seq_no;
//                         ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//                         ret = CHECK_STATUS_GO_TO_SCRIPT;
//                     }
//                 }
//                 ctx->ssc_seq_no++;
//                 break;
//             }
//             case CHECK_STATUS_END: {
//                 ctx->ssc_seq_no = 0;
//                 ret = CHECK_STATUS_DONE;
//                 break;
//             }
//         }
//     } while (ret == CHECK_STATUS_LOOP_BACK);

//     CopyBattleMonToPartyMon(bsys, ctx, ctx->attack_client);

//     if (ret == CHECK_STATUS_DISRUPT_MOVE) {
//         ctx->server_status_flag |= BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE;
//         ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
//     }

//     return ret != CHECK_STATUS_DONE;
// }

static void BattleController_CheckRecharge(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_RECHARGE) {
        ctx->battlemon[ctx->attack_client].condition2 &= ~STATUS2_RECHARGE;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_RECHARGE_TURN);
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
        ctx->wb_seq_no = BEFORE_MOVE_START;
        CopyBattleMonToPartyMon(bsys, ctx, ctx->attack_client);
        ctx->server_status_flag |= BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
    }
}

static void BattleController_CheckSleepOrFrozen(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int effect = ctx->moveTbl[ctx->current_move_index].effect;

    if (ctx->battlemon[ctx->attack_client].condition & STATUS_SLEEP) {
        if (ctx->field_condition & FIELD_STATUS_UPROAR && GetBattlerAbility(ctx, ctx->attack_client) != ABILITY_SOUNDPROOF) {
            ctx->battlerIdTemp = ctx->attack_client;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WAKE_UP);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return;
        } else if ((ctx->current_move_index != MOVE_SLEEP_TALK && ctx->moveNoTemp == MOVE_SLEEP_TALK) == 0) {
            int sleepCounterDecrease;

            if (GetBattlerAbility(ctx, ctx->attack_client) == ABILITY_EARLY_BIRD) {
                sleepCounterDecrease = 2;
            } else {
                sleepCounterDecrease = 1;
            }
            if ((ctx->battlemon[ctx->attack_client].condition & STATUS_SLEEP) < sleepCounterDecrease) {
                ctx->battlemon[ctx->attack_client].condition &= ~STATUS_SLEEP;
            } else {
                ctx->battlemon[ctx->attack_client].condition -= sleepCounterDecrease;
            }

            if (ctx->battlemon[ctx->attack_client].condition & STATUS_SLEEP) {
                if (ctx->current_move_index != MOVE_SNORE && ctx->moveNoTemp != MOVE_SLEEP_TALK) {
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SLEEPING);
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                    ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
                    ctx->wb_seq_no = BEFORE_MOVE_START;
                    CopyBattleMonToPartyMon(bsys, ctx, ctx->attack_client);
                    ctx->server_status_flag |= BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE;
                    ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
                    return;
                }
            } else {
                ctx->battlerIdTemp = ctx->attack_client;
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WAKE_UP);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return;
            }
        }
    }

    if (ctx->battlemon[ctx->attack_client].condition & STATUS_FREEZE) {
        if (BattleRand(bsys) % 5 != 0) {
            if (effect != MOVE_EFFECT_THAW_AND_BURN_HIT && effect != MOVE_EFFECT_RECOIL_BURN_HIT) {
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FROZEN);
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
                ctx->wb_seq_no = BEFORE_MOVE_START;
                CopyBattleMonToPartyMon(bsys, ctx, ctx->attack_client);
                ctx->server_status_flag |= BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE;
                ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
                return;
            }
        } else {
            ctx->battlerIdTemp = ctx->attack_client;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_THAW_OUT);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return;
        }
    }
}

static void BattleController_CheckPP(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int index = BattleMon_GetMoveIndex(&ctx->battlemon[ctx->attack_client], ctx->moveNoTemp);

    if (ctx->battlemon[ctx->attack_client].pp[index] == 0) {
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_NO_PP_LEFT);
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
        ctx->wb_seq_no = BEFORE_MOVE_START;
        CopyBattleMonToPartyMon(bsys, ctx, ctx->attack_client);
        ctx->server_status_flag |= BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
    }
}

static void BattleController_CheckTruant(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (CheckTruant(ctx, ctx->attack_client) == TRUE) {
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_LOAFING);
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
        ctx->wb_seq_no = BEFORE_MOVE_START;
        CopyBattleMonToPartyMon(bsys, ctx, ctx->attack_client);
        ctx->server_status_flag |= BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
    }
}

static void BattleController_CheckFlinch(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_FLINCH) {
        ctx->battlemon[ctx->attack_client].condition2 &= ~STATUS2_FLINCH;
        ctx->moveOutCheck[ctx->attack_client].stoppedFromFlinch = TRUE;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAIL_FLINCHED);
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
        ctx->wb_seq_no = BEFORE_MOVE_START;
        CopyBattleMonToPartyMon(bsys, ctx, ctx->attack_client);
        ctx->server_status_flag |= BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
    }
}

static void BattleController_CheckDisabled(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (ctx->battlemon[ctx->attack_client].moveeffect.disabledMove == ctx->moveNoTemp) {
        ctx->moveOutCheck[ctx->attack_client].stoppedFromDisable = TRUE;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_IS_DISABLED);
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
        ctx->wb_seq_no = BEFORE_MOVE_START;
        CopyBattleMonToPartyMon(bsys, ctx, ctx->attack_client);
        ctx->server_status_flag |= BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
    }
}

static void BattleController_CheckHealBlock(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (BattleContext_CheckMoveHealBlocked(bsys, ctx, ctx->attack_client, ctx->current_move_index)) {
        ctx->moveOutCheck[ctx->attack_client].stoppedFromHealBlock = TRUE;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAILED_HEAL_BLOCK);
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
        ctx->wb_seq_no = BEFORE_MOVE_START;
        CopyBattleMonToPartyMon(bsys, ctx, ctx->attack_client);
        ctx->server_status_flag |= BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
    }
}

// TODO: Gravity ban list and Throat Chop
static void BattleController_CheckGravityOrThroatChop(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (BattleContext_CheckMoveUnuseableInGravity(bsys, ctx, ctx->attack_client, ctx->current_move_index)) {
        ctx->moveOutCheck[ctx->attack_client].stoppedFromGravity = TRUE;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAIL_GRAVITY);
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
        ctx->wb_seq_no = BEFORE_MOVE_START;
        CopyBattleMonToPartyMon(bsys, ctx, ctx->attack_client);
        ctx->server_status_flag |= BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
    }
}

static void BattleController_CheckTaunt(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (ctx->battlemon[ctx->attack_client].moveeffect.tauntTurns && ctx->moveTbl[ctx->current_move_index].power == 0) {
        ctx->moveOutCheck[ctx->attack_client].stoppedFromTaunt = TRUE;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_FAIL_TAUNTED);
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
        ctx->wb_seq_no = BEFORE_MOVE_START;
        CopyBattleMonToPartyMon(bsys, ctx, ctx->attack_client);
        ctx->server_status_flag |= BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
    }
}

static void BattleController_CheckImprison(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (BattleContext_CheckMoveImprisoned(bsys, ctx, ctx->attack_client, ctx->current_move_index)) {
        ctx->moveOutCheck[ctx->attack_client].stoppedFromImprison = TRUE;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MOVE_IS_IMPRISONED);
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
        ctx->wb_seq_no = BEFORE_MOVE_START;
        CopyBattleMonToPartyMon(bsys, ctx, ctx->attack_client);
        ctx->server_status_flag |= BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
    }
}

static void BattleController_CheckConfusion(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_CONFUSION) {
        ctx->battlemon[ctx->attack_client].condition2 -= 1;
        if (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_CONFUSION) {
            // modernised to 33%
            if (BattleRand(bsys) & 2) {
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CONFUSED);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            } else {
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CONFUSED_SELF_HIT);
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                ctx->next_server_seq_no = CONTROLLER_COMMAND_34;
                ctx->wb_seq_no = BEFORE_MOVE_START;
                CopyBattleMonToPartyMon(bsys, ctx, ctx->attack_client);
                ctx->server_status_flag |= BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE;
                ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
            }
        } else {
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CONFUSED_NO_MORE);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        }
    }
}

static void BattleController_CheckParalysis(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (ctx->battlemon[ctx->attack_client].condition & STATUS_PARALYSIS && GetBattlerAbility(ctx, ctx->attack_client) != ABILITY_MAGIC_GUARD) {
        if (BattleRand(bsys) % 4 == 0) {
            ctx->moveOutCheck[ctx->attack_client].stoppedFromParalysis = TRUE;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FULLY_PARALYZED);
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
            ctx->wb_seq_no = BEFORE_MOVE_START;
            CopyBattleMonToPartyMon(bsys, ctx, ctx->attack_client);
            ctx->server_status_flag |= BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE;
            ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
        }
    }
}

static void BattleController_CheckInfatuation(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_ATTRACT) {
        ctx->battlerIdTemp = LowestFlagNo((ctx->battlemon[ctx->attack_client].condition2 & STATUS2_ATTRACT) >> STATUS2_ATTRACT_SHIFT);
        if (BattleRand(bsys) & 1) {
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_INFATUATED);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        } else {
            ctx->moveOutCheck[ctx->attack_client].stoppedFromAttract = TRUE;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_IMMOBILIZED_BY_LOVE);
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
            ctx->wb_seq_no = BEFORE_MOVE_START;
            CopyBattleMonToPartyMon(bsys, ctx, ctx->attack_client);
            ctx->server_status_flag |= BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE;
            ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
        }
    }
}

// static void BattleController_CheckSleepAnnouncement(struct BattleSystem *bsys, struct BattleStruct *ctx) {
//     if (ctx->battlemon[ctx->attack_client].condition & STATUS_SLEEP) {
//         if (ctx->current_move_index == MOVE_SNORE || ctx->moveNoTemp == MOVE_SLEEP_TALK) {
//             LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SLEEPING);
//             ctx->next_server_seq_no = ctx->server_seq_no;
//             ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
//             return;
//         }
//     }
// }

// TODO: unique subscript for Stance Change
static void BattleController_CheckStanceChange(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    if (ctx->battlemon[ctx->attack_client].ability == ABILITY_STANCE_CHANGE && ctx->battlemon[ctx->attack_client].species == SPECIES_AEGISLASH) {
        ctx->battlerIdTemp = ctx->attack_client;
        if (ctx->current_move_index == MOVE_KINGS_SHIELD && ctx->battlemon[ctx->attack_client].form_no == 1) {
            ctx->battlemon[ctx->battlerIdTemp].form_no = 0;
            BattleFormChange(ctx->battlerIdTemp, ctx->battlemon[ctx->battlerIdTemp].form_no, bsys, ctx, 0);
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FORM_CHANGE);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        } else if (ctx->moveTbl[ctx->current_move_index].power != 0 && ctx->battlemon[ctx->attack_client].form_no == 0) {
            ctx->battlemon[ctx->battlerIdTemp].form_no = 1;
            BattleFormChange(ctx->battlerIdTemp, ctx->battlemon[ctx->battlerIdTemp].form_no, bsys, ctx, 0);
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FORM_CHANGE);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        }
    }
}

// TODO: handle Burn Up edge case 
static void BattleController_CheckThawOut(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int effect = ctx->moveTbl[ctx->current_move_index].effect;

    if (ctx->battlemon[ctx->attack_client].condition & STATUS_FREEZE) {
        if (effect == MOVE_EFFECT_THAW_AND_BURN_HIT || effect == MOVE_EFFECT_RECOIL_BURN_HIT) {
            ctx->battlerIdTemp = ctx->attack_client;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_THAW_OUT);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return;
        }
    }
}

// TODO: make it so that it doesn't do redundant damage calculations
static void BattleController_CheckSubmove(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    // Include Me First here for now
    if (ctx->current_move_index == MOVE_COPYCAT ||
        ctx->current_move_index == MOVE_METRONOME ||
        ctx->current_move_index == MOVE_NATURE_POWER ||
        ctx->current_move_index == MOVE_SLEEP_TALK ||
        ctx->current_move_index == MOVE_ME_FIRST) {
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_MOVE_SEQ, ctx->current_move_index);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->wb_seq_no = BEFORE_MOVE_STATE_HEAL_BLOCK;
        return;
    }
}

// 08014ACC

/**
 *  @brief run through everything before any of the moves are used
 *         modified for protean and stance change and megas
 * ov12_0224C38C https://github.com/pret/pokeheartgold/blob/fa9d1977b4bf4f7439cb02ebb31c1dafd766d49c/src/battle/battle_controller_player.c#L2646
 * BattleController_BeforeMove https://github.com/pret/pokeplatinum/blob/1422848525cf1ce0cc89348f3b63fec8d086596a/src/battle/battle_controller.c#L3137
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 */
void ServerWazaBefore(void *bw, struct BattleStruct *sp) {
    debug_printf("In ServerWazaBefore\n");

    int index = BattleMon_GetMoveIndex(&sp->battlemon[sp->attack_client], sp->moveNoTemp);

    // debug_printf("pp: %d\n", sp->battlemon[sp->attack_client].pp[index]);

    CopyBattleMonToPartyMon(bw, sp, sp->attack_client);

    if (sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) {
        sp->server_seq_no = CONTROLLER_COMMAND_26;
        ST_ServerMetronomeBeforeCheck(bw, sp);  // 801ED20h
        return;
    }

    switch (sp->wb_seq_no) {
        case BEFORE_MOVE_START: {
            debug_printf("In BEFORE_MOVE_START\n");

            sp->battlemon[sp->attack_client].condition2 &= ~STATUS2_DESTINY_BOND;
            sp->battlemon[sp->attack_client].effect_of_moves &= ~MOVE_EFFECT_FLAG_GRUDGE;
            // reset new stuff here, because subscript is modified
            sp->battlemon[sp->attack_client].moveeffect.custapBerryFlag = 0;
            sp->battlemon[sp->attack_client].moveeffect.quickClawFlag = 0;
            sp->wb_seq_no++;
            return;
        }
        case BEFORE_MOVE_STATE_RECHARGE: {
            debug_printf("In BEFORE_MOVE_STATE_RECHARGE\n");

            BattleController_CheckRecharge(bw, sp);
            sp->wb_seq_no++;
            return;
        }
        // TODO: SYSCTL stuff, Magic Guard
        case BEFORE_MOVE_STATE_SLEEP_OR_FROZEN: {
            debug_printf("In BEFORE_MOVE_STATE_SLEEP_OR_FROZEN\n");

            BattleController_CheckSleepOrFrozen(bw, sp);
            sp->wb_seq_no++;
            return;
        }
        case BEFORE_MOVE_STATE_CHECK_OBEDIENCE: {
            debug_printf("In BEFORE_MOVE_STATE_CHECK_OBEDIENCE\n");

            int ret;
            int seq_no;

            if ((sp->waza_out_check_on_off & SYSCTL_SKIP_OBEDIENCE_CHECK) == 0) {
                ret = ServerBadgeCheck(bw, sp, &seq_no);  // 8013610h
                if (ret) {
                    switch (ret) {
                        case OBEY_CHECK_DO_NOTHING:
                            sp->next_server_seq_no = CONTROLLER_COMMAND_39;
                            break;
                        case OBEY_CHECK_DIFFERENT_MOVE:
                            sp->next_server_seq_no = sp->server_seq_no;
                            break;
                        case OBEY_CHECK_HIT_SELF:
                            sp->next_server_seq_no = CONTROLLER_COMMAND_34;
                            break;
                    }
                    sp->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq_no);
                    return;
                }
            }

            sp->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_CHECK_PP: {
            debug_printf("In BEFORE_MOVE_STATE_CHECK_PP\n");

            BattleController_CheckPP(bw, sp);
            sp->wb_seq_no++;
            return;
        }
        // TODO
        case BEFORE_MOVE_STATE_DISPLAY_Z_DANCE_AND_EFFECT: {
            debug_printf("In BEFORE_MOVE_STATE_DISPLAY_Z_DANCE_AND_EFFECT\n");

            sp->wb_seq_no++;
            return;
        }
        case BEFORE_MOVE_STATE_TRUANT: {
            debug_printf("In BEFORE_MOVE_STATE_TRUANT\n");

            BattleController_CheckTruant(bw, sp);
            sp->wb_seq_no++;
            return;
        }
        // TODO
        case BEFORE_MOVE_STATE_FOCUS_PUNCH_LOSE_FOCUS: {
            debug_printf("In BEFORE_MOVE_STATE_FOCUS_PUNCH_LOSE_FOCUS\n");

            sp->wb_seq_no++;
            return;
        }
        case BEFORE_MOVE_STATE_FLINCH: {
            debug_printf("In BEFORE_MOVE_STATE_FLINCH\n");

            BattleController_CheckFlinch(bw, sp);
            sp->wb_seq_no++;
            return;
        }
        case BEFORE_MOVE_STATE_DISABLED: {
            debug_printf("In BEFORE_MOVE_STATE_DISABLED\n");

            BattleController_CheckDisabled(bw, sp);
            sp->wb_seq_no++;
            return;
        }
        // TODO: Modernise Heal Block mechanics
        case BEFORE_MOVE_STATE_HEAL_BLOCK: {
            debug_printf("In BEFORE_MOVE_STATE_HEAL_BLOCK\n");

            BattleController_CheckHealBlock(bw, sp);
            sp->wb_seq_no++;
            return;
        }
        case BEFORE_MOVE_STATE_GRAVITY_THROAT_CHOP: {
            debug_printf("In BEFORE_MOVE_STATE_GRAVITY_THROAT_CHOP\n");

            BattleController_CheckGravityOrThroatChop(bw, sp);
            sp->wb_seq_no++;
            return;
        }
        // TODO
        case BEFORE_MOVE_STATE_CHECK_CHOICE_LOCK: {
            debug_printf("In BEFORE_MOVE_STATE_CHECK_CHOICE_LOCK\n");

            sp->wb_seq_no++;
            return;
        }
        case BEFORE_MOVE_STATE_TAUNT: {
            debug_printf("In BEFORE_MOVE_STATE_TAUNT\n");

            BattleController_CheckTaunt(bw, sp);
            sp->wb_seq_no++;
            return;
        }
        case BEFORE_MOVE_STATE_IMPRISION: {
            debug_printf("In BEFORE_MOVE_STATE_IMPRISION\n");

            BattleController_CheckImprison(bw, sp);
            sp->wb_seq_no++;
            return;
        }
        case BEFORE_MOVE_STATE_CONFUSION_SELF_HIT_OR_WEAR_OFF: {
            debug_printf("In BEFORE_MOVE_STATE_CONFUSION_SELF_HIT_OR_WEAR_OFF\n");

            BattleController_CheckConfusion(bw, sp);
            sp->wb_seq_no++;
            return;
        }
        case BEFORE_MOVE_STATE_PARALYSIS: {
            debug_printf("In BEFORE_MOVE_STATE_PARALYSIS\n");

            BattleController_CheckParalysis(bw, sp);
            sp->wb_seq_no++;
            return;
        }
        case BEFORE_MOVE_STATE_INFATUATION: {
            debug_printf("In BEFORE_MOVE_STATE_INFATUATION\n");

            BattleController_CheckInfatuation(bw, sp);
            sp->wb_seq_no++;
            return;
        }
        case BEFORE_MOVE_STATE_ANNOUNCE_SUB_MOVE: {
            debug_printf("In BEFORE_MOVE_STATE_ANNOUNCE_SUB_MOVE\n");

            BattleController_CheckSubmove(bw, sp);
            sp->wb_seq_no++;
            return;
        }
        case BEFORE_MOVE_STATE_THAW_OUT_BY_MOVE: {
            debug_printf("In BEFORE_MOVE_STATE_THAW_OUT_BY_MOVE\n");

            BattleController_CheckThawOut(bw, sp);
            sp->wb_seq_no++;
            return;
        }
        case BEFORE_MOVE_STATE_STANCE_CHANGE: {
            debug_printf("In BEFORE_MOVE_STATE_STANCE_CHANGE\n");

            BattleController_CheckStanceChange(bw, sp);
            sp->wb_seq_no++;
            return;
        }
        case BEFORE_MOVE_END: {
            debug_printf("In BEFORE_MOVE_END\n");

            // TODO: move it to the end of TryMove after the entire overhaul, but this works perfectly fine here
            if (IsValidParentalBondMove(bw, sp, FALSE) &&
                sp->loop_hit_check != 0xFD) {
                sp->multi_hit_count = 2;
                sp->multi_hit_count_temp = 2;
                sp->loop_hit_check = 0xFD;
                sp->oneTurnFlag[sp->battlerIdTemp].parental_bond_is_active = TRUE;
            } else {
                sp->oneTurnFlag[sp->battlerIdTemp].parental_bond_is_active = FALSE;
                sp->wb_seq_no = 0;
            } 

            sp->wb_seq_no = BEFORE_MOVE_START;
            break;
        }
    }

    if (sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) {
        sp->server_seq_no = CONTROLLER_COMMAND_26;
    } else {
        sp->server_status_flag2 |= BATTLE_STATUS2_MOVE_SUCCEEDED;
        sp->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;  // execute the move
        LoadBattleSubSeqScript(sp, ARC_BATTLE_MOVE_SEQ, sp->current_move_index);
        sp->next_server_seq_no = CONTROLLER_COMMAND_24;  // after that
        ST_ServerTotteokiCountCalc(bw, sp);              // 801B570h
    }
    ST_ServerMetronomeBeforeCheck(bw, sp);  // 801ED20h
}