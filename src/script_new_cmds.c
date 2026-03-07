#include "../include/types.h"
#include "../include/script.h"
#include "../include/repel.h"
#include "../include/visible_item_balls.h"
#include "../include/constants/file.h"

#define SCRIPT_NEW_CMD_REPEL_USE    0
#define SCRIPT_NEW_CMD_RESOLVE_VISIBLE_ITEM_BALL 1

#define SCRIPT_NEW_CMD_MAX          256

BOOL Script_RunNewCmd(SCRIPTCONTEXT *ctx) {
    u8 sw = ScriptReadByte(ctx);
    u16 UNUSED arg0 = ScriptReadHalfword(ctx);

    switch (sw) {
        case SCRIPT_NEW_CMD_REPEL_USE:;
#ifdef IMPLEMENT_REUSABLE_REPELS
            u16 most_recent_repel = Repel_GetMostRecent();
            SetScriptVar(arg0, most_recent_repel);
            Repel_Use(most_recent_repel, HEAPID_MAIN_HEAP);
#endif
            break;

        case SCRIPT_NEW_CMD_RESOLVE_VISIBLE_ITEM_BALL: {
            u16 itemId = VarGet(ctx->fsys, 0x8004);
            itemId = ResolveVisibleItemBallItem(ctx->fsys, itemId);
            SetScriptVar(0x8004, itemId);
            break;
        }

        default: break;
    }

    return FALSE;
}
