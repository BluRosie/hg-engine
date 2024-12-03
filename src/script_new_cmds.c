#include "../include/types.h"
#include "../include/script.h"
#include "../include/repel.h"
#include "../include/constants/file.h"

#define SCRIPT_NEW_CMD_REPEL_USE    0

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

        default: break;
    }

    return FALSE;
}

BOOL Script_GetPages(SCRIPTCONTEXT *ctx) {
    debug_printf("GetPages called\n");
    int additionalPage = 0;

    //u16 *totalOptions = GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx));
    u16 *totalOptions = ScriptGetVarPointer(ctx);
    debug_printf("arg0 at %08x --> value: %d\n", totalOptions, *totalOptions);

    u16 maxValuePerPage = ScriptGetVar(ctx);
    debug_printf("arg1 value: %d\n", maxValuePerPage);

    if(*totalOptions % maxValuePerPage > 0) {
        additionalPage = 1;
    }

    *totalOptions = (*totalOptions / maxValuePerPage) + additionalPage;
    debug_printf("result: %d\n", *totalOptions);

    return FALSE;
}
