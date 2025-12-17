#include "../include/types.h"
#include "../include/script.h"
#include "../include/repel.h"
#include "../include/constants/file.h"
#include "../include/constants/species.h"

#define SCRIPT_NEW_CMD_REPEL_USE    0
#define SCRIPT_NEW_CMD_TOTEM_BATTLE_SHINY_GYARADOS 1
#define SCRIPT_NEW_CMD_TOTEM_BATTLE_AMBIPOM 2

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
            u32 *winFlag_1 = FieldSysGetAttrAddr(ctx->fsys, 24); // SCRIPTENV_BATTLE_WIN_FLAG = 24
            u16 level_1 = ScriptReadHalfword(ctx);
            SetupAndStartTotemBattle(ctx->taskman, SPECIES_GYARADOS, level_1, winFlag_1, TRUE);
            // The game will inexplicably corrupt if you do not return true here.
            return TRUE;
            break;
        case SCRIPT_NEW_CMD_TOTEM_BATTLE_AMBIPOM:;
            u32 *winFlag_2 = FieldSysGetAttrAddr(ctx->fsys, 24); // SCRIPTENV_BATTLE_WIN_FLAG = 24
            u16 level_2 = ScriptReadHalfword(ctx);
            SetupAndStartTotemBattle(ctx->taskman, SPECIES_AMBIPOM, level_2, winFlag_2, FALSE);
            // The game will inexplicably corrupt if you do not return true here.
            return TRUE;
            break;
        default: break;
    }

    return FALSE;
}
