#include "../include/types.h"
#include "../include/script.h"
#include "../include/repel.h"
#include "../include/constants/file.h"

#define SCRIPT_NEW_CMD_REPEL_USE    0
#define SCRIPT_NEW_CMD_TOTEM_BATTLE 1

#define SCRIPT_NEW_CMD_MAX          256

BOOL Script_RunNewCmd(SCRIPTCONTEXT *ctx) {
    u8 sw = ScriptReadByte(ctx);
    switch (sw) {
        case SCRIPT_NEW_CMD_REPEL_USE:;
#ifdef IMPLEMENT_REUSABLE_REPELS
            u16 UNUSED arg0 = ScriptReadHalfword(ctx);
            u16 most_recent_repel = Repel_GetMostRecent();
            SetScriptVar(arg0, most_recent_repel);
            Repel_Use(most_recent_repel, HEAPID_MAIN_HEAP);
#endif
            break;
        case SCRIPT_NEW_CMD_TOTEM_BATTLE:;
            u32 *winFlag = FieldSysGetAttrAddr(ctx->fsys, 24); // SCRIPTENV_BATTLE_WIN_FLAG = 24
            u16 paramFlags = ScriptReadHalfword(ctx);
            u16 species = paramFlags & ((1 << 14) - 1); // Set species to the first 14 bits of paramFlags.
            paramFlags >>= 14; // Drop those 14 bits.
            u16 level = paramFlags & ((1 << (21 - 14)) - 1); // Set level to the next 7 bits of paramFlags.
            paramFlags >>= (21 - 14); // Drop the next 7 bits.
            u8 shiny = paramFlags; // The remainder should just be the shiny value.
            SetupAndStartTotemBattle(ctx->taskman, species, level, winFlag, shiny);
            break;
        default: break;
    }

    return FALSE;
}
