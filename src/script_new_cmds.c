#include "../include/types.h"
#include "../include/script.h"
#include "../include/repel.h"
#include "../include/constants/file.h"
#include "../include/constants/species.h"

#define SCRIPT_NEW_CMD_REPEL_USE    0
#define SCRIPT_NEW_CMD_TOTEM_BATTLE_SHINY_GYARADOS 1

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
        case SCRIPT_NEW_CMD_TOTEM_BATTLE_SHINY_GYARADOS:;
            u32 *winFlag = FieldSysGetAttrAddr(ctx->fsys, 24); // SCRIPTENV_BATTLE_WIN_FLAG = 24
            u16 level = ScriptReadHalfword(ctx);
            SetupAndStartTotemBattle(ctx->taskman, SPECIES_GYARADOS, level, winFlag, TRUE);
            // The game will inexplicably corrupt if you do not return true here.
            return TRUE;
            break;
        default: break;
    }

    return FALSE;
}
