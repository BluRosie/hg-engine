#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/types.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/constants/file.h"


void AnimScrCmd_ChangePermanentBattleBackground(ANIM_CMD_STRUCT *animCmdStruct);

// need this to change the permanent battle bg properly
ALIGN4 struct BattleSystem *gBattleSystem = NULL;


ALIGN4 const anim_scr_cmd_func gNewAnimScrTable[] =
{
    [0x58 - NUM_VANILLA_ANIM_SCRIPT_COMMANDS] = AnimScrCmd_ChangePermanentBattleBackground,
};


anim_scr_cmd_func GrabAnimScriptCommand(u32 command)
{
    if (command >= NUM_VANILLA_ANIM_SCRIPT_COMMANDS)
    {
        return gNewAnimScrTable[command - NUM_VANILLA_ANIM_SCRIPT_COMMANDS];
    }
    return gAnimScrTable[command];
}

void AnimScrCmd_ChangePermanentBattleBackground(ANIM_CMD_STRUCT *animCmdStruct)
{
    u32 bg, terrain;
    struct BattleSystem *bw = gBattleSystem;
    animCmdStruct->animScriptPtr++;

    bg = *(animCmdStruct->animScriptPtr);
    animCmdStruct->animScriptPtr++;

    terrain = *(animCmdStruct->animScriptPtr);
    animCmdStruct->animScriptPtr++;

    if (bg == -1u)
    {
        bg = bw->bgId;
    }
    if (terrain == -1u)
    {
        terrain = bw->terrain;
    }
    LoadDifferentBattleBackground(bw, bg, terrain);
}
