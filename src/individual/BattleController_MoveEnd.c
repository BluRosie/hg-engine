#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/test_battle.h"
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

/**
 * Platinum version as reference
 * BattleController_MoveEnd
 * https://github.com/pret/pokeplatinum/blob/447c17a0f12b4a7656dded8aaa6e41ae9694cd09/src/battle/battle_controller.c#L3965
 */
void LONG_CALL BattleController_MoveEndInternal(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    // debug_printf("In BattleController_MoveEnd\n");
    int script;
    u32 battleType = BattleTypeGet(bsys);

    if (!(battleType & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK))) {
        if (AbilityStatusRecoverCheck(bsys, ctx, ctx->attack_client, 0) == TRUE) {
            return;
        }
        // BATTLER_NONE
        if (ctx->defence_client != 0xFF && AbilityStatusRecoverCheck(bsys, ctx, ctx->defence_client, 0) == TRUE) {
            return;
        }
        if (ov12_0224DD18(ctx, ctx->server_seq_no, ctx->server_seq_no) == TRUE) {
            return;
        }
        if (ov12_0224D7EC(bsys, ctx) == TRUE) {
            return;
        }

        if (ctx->moveConditionsFlags[ctx->attack_client].glaiveRush && ctx->current_move_index != MOVE_GLAIVE_RUSH) {
            ctx->moveConditionsFlags[ctx->attack_client].glaiveRush = FALSE;
        }

        // If the user's next move is not Electric-type, Charge no longer wears off, and instead remains active for the next move that is.
        // However, if the user attempted to use an Electric-type move,
        // Charge will still wear off even if a condition prevented the move from being used, such as being asleep or flinching.
        // TODO: Refactor this
        int move_type = GetAdjustedMoveType(ctx, ctx->attack_client, ctx->current_move_index);
        if (ctx->battlemon[ctx->attack_client].moveeffect.isCharged && move_type == TYPE_ELECTRIC && !ctx->oneTurnFlag[ctx->attack_client].chargeProcessedFlag) {
            if (--ctx->battlemon[ctx->attack_client].moveeffect.isCharged == 0) {
                    ctx->battlemon[ctx->attack_client].effect_of_moves &= ~MOVE_EFFECT_FLAG_CHARGE;
                }
                ctx->oneTurnFlag[ctx->attack_client].chargeProcessedFlag = 1;
        }

        // Reset Focus Punch flag
        ctx->oneTurnFlag[ctx->attack_client].pendingFocusPunchFlag = FALSE;

        script = SwitchInAbilityCheck(bsys, ctx);
        if (script) {
            LoadBattleSubSeqScript(ctx, 1, script);
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return;
        }
        if (ov12_0224E130(bsys, ctx) == TRUE) {
            return;
        }
        ov12_0224DC0C(bsys, ctx);
    }

    ctx->oneTurnFlag[ctx->attack_client].chargeProcessedFlag = 0;
    ctx->oneTurnFlag[ctx->attack_client].rampageProcessedFlag = 0;
    // debug_printf("locked into move: %d\n", (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_LOCKED_INTO_MOVE));
    // debug_printf("BATTLE_STATUS_CHARGE_MOVE_HIT %d\n", ctx->server_status_flag & BATTLE_STATUS_CHARGE_MOVE_HIT);

    // Handle Razor Wind. Why? Beats me
    if (ctx->server_status_flag & BATTLE_STATUS_CHARGE_MOVE_HIT || (ctx->moveStatusFlagForSpreadMoves[ctx->attack_client] & MOVE_STATUS_FLAG_FAILURE_ANY)) {
        ctx->battlemon[ctx->attack_client].condition2 &= ~STATUS2_LOCKED_INTO_MOVE;
    }

    int client_set_max = BattleWorkClientSetMaxGet(bsys);

    for (int i = 0; i < client_set_max; i++) {
        ctx->moveStatusFlagForSpreadMoves[i] = 0;
        ctx->damageForSpreadMoves[i] = 0;
        ctx->store_damage[i] = 0;
    }
    ctx->clientLoopForSpreadMoves = 0;
    ctx->clientLoopForAbility = 0;
    ctx->boostedAccuracy = FALSE;
    ctx->gemBoostingMove = FALSE;

    ctx->playerActions[ctx->executionOrder[ctx->executionIndex]][0] = CONTROLLER_COMMAND_40;

    if (ctx->oneSelfFlag[ctx->attack_client].trickRoomFlag) {
        SortExecutionOrderBySpeed(bsys, ctx);
        SortMonsBySpeed(bsys, ctx);
        ctx->executionIndex = 0;
    } else {
        ctx->executionIndex++;
    }

    BattleStructureInit(ctx);

    ctx->server_seq_no = CONTROLLER_COMMAND_8;

#ifdef DEBUG_BATTLE_SCENARIOS
    // struct TestBattleScenario *scenario = TestBattle_GetCurrentScenario();
    // debug_printf("test get player party first mon species %d\n", scenario->playerParty[0].species);
    // for (int i = 0; i < 4; i++) {
    //     debug_printf("[MoveEnd_HP] Battler %d: HP=%d/%d\n", i, ctx->battlemon[i].hp, ctx->battlemon[i].maxhp);
    // }
#endif

    // debug_printf("End of BattleController_MoveEnd\n");
}
