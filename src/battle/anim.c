#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/sound.h"
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
        bg = bw->sp->original_bgId;
    }
    if (terrain == -1u)
    {
        terrain = bw->sp->original_terrain;
    }
    LoadDifferentBattleBackground(bw, bg, terrain);
}

// if the form is nonzero, then ensure the PlayCry command just plays the cry itself and return
BOOL AnimCmd_PlayCryEdit(u32 client)
{
    struct BattleStruct *sp = gBattleSystem->sp;
    u32 form = sp->battlemon[client].form_no;
    if (form)
        PlayCry(sp->battlemon[client].species, form);
    return (form != 0);
}

#ifdef DEBUG_BATTLE_SCENARIOS
BOOL LONG_CALL CheckTrainerMessage(struct BattleSystem *bw UNUSED, struct BattleStruct *sp UNUSED)
{
    return FALSE;
}
#endif // DEBUG_BATTLE_SCENARIOS


