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
#include "../../include/overlay.h"

/********************************************************************************************************************/
/********************************************************************************************************************/
//                                                战斗前准备
/********************************************************************************************************************/
/********************************************************************************************************************/
// bubble lives on in the repository o7
// would not be here without him

/**
 *  @brief initialize the global battle structure and return it
 *
 *  @param bw battle work structure
 */
struct BattleStruct *ServerInit(struct BattleSystem *bw) {
    struct BattleStruct *sp;

    sp = sys_AllocMemory(HEAPID_BATTLE_HEAP, sizeof(struct BattleStruct));
    memset(sp, 0, sizeof(struct BattleStruct));
    BattleStructureInit(sp);
    BattleStructureCounterInit(bw, sp);
    ServerMoveAIInit(bw, sp);
    DumpMoveTableData(&sp->moveTbl[0]);
    sp->aiWorkTable.item = ItemDataTableLoad(HEAPID_BATTLE_HEAP);

#ifdef RESTORE_ITEMS_AT_BATTLE_END

    // store items for the player's party in sp so we can restore them at the end
    struct Party *party = SaveData_GetPlayerPartyPtr(SaveBlock2_get());
    for (int i = 0; i < party->count; i++) {
        newBS.itemsToRestore[i] = GetMonData(Party_GetMonByIndex(party, i), MON_DATA_HELD_ITEM, NULL);
    }

#endif  // RESTORE_ITEMS_AT_BATTLE_END

    sp->original_terrain = bw->terrain;
    sp->original_bgId = bw->bgId;
    bw->sp = sp;
    BattleBgExpansionLoader(bw);

    gBattleSystem = bw;

#ifdef DEBUG_BATTLE_SCENARIOS
    // Apply test battle state (recharge, charging, etc.)
    TestBattle_ApplyBattleState(bw, sp);
#endif

    return sp;
}


/**
 *  @brief actions that take precedence over all moves
 *         loads in battle sub script and queues it up by setting server_seq_no to 22
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 */
u32 ServerBeforeAct_restoreOverlay = 0;

void ServerBeforeAct(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    u32 ovyId = OVERLAY_SERVERBEFOREACT, offset = 0x021FD900 | 1;

    void (*internalFunc)(struct BattleSystem *bsys, struct BattleStruct *ctx);

    // if ctx->sba_seq_no == SBA_RESET_DEFIANT before func is called, it is the first call
    //if (ctx->sba_seq_no == SBA_RESET_DEFIANT)
    {
        if (IsOverlayLoaded(OVERLAY_WIFI)) { // we are taking overlay 0's place
            ServerBeforeAct_restoreOverlay = TRUE;
            UnloadOverlayByID(OVERLAY_WIFI);
        } else if (IsOverlayLoaded(OVERLAY_POKEDEX)) {
            ServerBeforeAct_restoreOverlay = OVERLAY_POKEDEX;
            UnloadOverlayByID(18);
        }

#ifdef DEBUG_BEFORE_MOVE_LOGIC
        debug_printf("Load OVERLAY_SERVERBEFOREACT\n");
#endif

        HandleLoadOverlay(ovyId, 2);
    }
    internalFunc = (void (*)(struct BattleSystem *bsys, struct BattleStruct *ctx))(offset);
    internalFunc(bsys, ctx);

    //if (ctx->sba_seq_no == SBA_RESET_DEFIANT)
    {
        if (ServerBeforeAct_restoreOverlay) {
            UnloadOverlayByID(ovyId);
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("Restoring overlay %d...\n", (ServerBeforeAct_restoreOverlay == 1 ? 0 : ServerBeforeAct_restoreOverlay));
#endif
            HandleLoadOverlay((ServerBeforeAct_restoreOverlay == 1 ? OVERLAY_WIFI : ServerBeforeAct_restoreOverlay), 2);
        }
    }
}


/********************************************************************************************************************/
/********************************************************************************************************************/
//                                                技能使用前判断
/********************************************************************************************************************/
/********************************************************************************************************************/

// 08014ACC

/**
 *  @brief run through everything before any of the moves are used
 *         modified for protean and stance change and megas
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 */
u32 ServerWazaBefore_restoreOverlay = 0;

void ServerWazaBefore(void *bw, struct BattleStruct *sp) {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
    debug_printf("In BattleController_BeforeMove landing pad\n");
#endif
    u32 ovyId, offset;

    void (*internalFunc)(void *bw, struct BattleStruct *sp);

    // if wb_seq_no == BEFORE_MOVE_START_FLAG_UNLOAD before func is called, it is the first call
    if (sp->wb_seq_no == BEFORE_MOVE_START_FLAG_UNLOAD)
    {
        if (IsOverlayLoaded(OVERLAY_WIFI)) { // we are taking overlay 0's place
            ServerWazaBefore_restoreOverlay = TRUE;
            UnloadOverlayByID(OVERLAY_WIFI);
        } else if (IsOverlayLoaded(OVERLAY_POKEDEX)) {
            ServerWazaBefore_restoreOverlay = OVERLAY_POKEDEX;
            UnloadOverlayByID(OVERLAY_POKEDEX);
        }

#ifdef DEBUG_BEFORE_MOVE_LOGIC
        debug_printf("Load OVERLAY_BATTLECONTROLLER_BEFOREMOVE\n");
#endif
        ovyId = OVERLAY_BATTLECONTROLLER_BEFOREMOVE;

        //offset = 0x023C0400 | 1;
        HandleLoadOverlay(ovyId, 2);
    }

    offset = 0x021E5900 | 1;
    internalFunc = (void (*)(void *bw, struct BattleStruct *sp))(offset);
    internalFunc(bw, sp);

    // if wb_seq_no == BEFORE_MOVE_START_FLAG_UNLOAD after the func is called, it is the last call
    if (sp->wb_seq_no == BEFORE_MOVE_START_FLAG_UNLOAD)
    {
        // needs to unload regardless of if it took OVERLAY_POKEDEX space
        UnloadOverlayByID(ovyId);
        if (ServerWazaBefore_restoreOverlay) {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("Restoring overlay %d...\n", (ServerWazaBefore_restoreOverlay == 1 ? 0 : ServerWazaBefore_restoreOverlay));
#endif
            HandleLoadOverlay((ServerWazaBefore_restoreOverlay == 1 ? OVERLAY_WIFI : ServerWazaBefore_restoreOverlay), 2);
            ServerWazaBefore_restoreOverlay = FALSE;
        }
    }
}
