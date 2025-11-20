#include "../../include/battle.h"
#include "../../include/battle_controller_player.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/config.h"

#if defined (DISABLE_ITEMS_IN_TRAINER_BATTLE)
void overrideItemUsage(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    MESSAGE_PARAM mp;
    int battlerId;
    u32 fight_type = BattleTypeGet(bsys);

    for (battlerId = 0; battlerId < bsys->maxBattlers; battlerId++)
    {
        if (ctx->playerActions[battlerId][0] == CONTROLLER_COMMAND_ITEM_INPUT && ctx->com_seq_no[battlerId] == 7)
        {
            if (fight_type & BATTLE_TYPE_TRAINER)
            {
                mp.msg_id = BATTLE_MSG_ITEMS_CANT_BE_USED_HERE; //msg.id  = msg_0197_00593; // Items can't be used here
                mp.msg_tag = TAG_NONE;
                ov12_022639B8(bsys, battlerId, mp);
                ctx->com_seq_no[battlerId] = SSI_STATE_15;
                ctx->ret_seq_no[battlerId] = SSI_STATE_SELECT_COMMAND_INIT;
            }
        }
    }
}
#endif

BOOL LONG_CALL BattleContext_Main(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
#ifdef DEBUG_BATTLE_SCENARIOS
    if (!ctx->hasLoadedTerrainOver && ctx->terrainOverlay.type != TERRAIN_NONE && ctx->server_seq_no >= CONTROLLER_COMMAND_SELECTION_SCREEN_INIT &&
        bsys != NULL && bsys->bgConfig != NULL && bsys->bg_area != NULL && bsys->pal_area != NULL) {

        u32 bg, terrain;
        switch (ctx->terrainOverlay.type) {
            case GRASSY_TERRAIN:
                bg = BATTLE_BG_GRASSY_TERRAIN;
                terrain = TERRAIN_GRASSY_TERRAIN;
                break;
            case MISTY_TERRAIN:
                bg = BATTLE_BG_MISTY_TERRAIN;
                terrain = TERRAIN_MISTY_TERRAIN;
                break;
            case ELECTRIC_TERRAIN:
                bg = BATTLE_BG_ELECTRIC_TERRAIN;
                terrain = TERRAIN_ELECTRIC_TERRAIN;
                break;
            case PSYCHIC_TERRAIN:
                bg = BATTLE_BG_PSYCHIC_TERRAIN;
                terrain = TERRAIN_PSYCHIC_TERRAIN;
                break;
            default:
                bg = BATTLE_BG_GRASSY_TERRAIN;
                terrain = TERRAIN_GRASSY_TERRAIN;
                break;
        }
        LoadDifferentBattleBackground(bsys, bg, terrain);
        ctx->hasLoadedTerrainOver = 1;
    }
#endif

    if (!ctx->fight_end_flag)
    {
        if (BattleSystem_GetBattleOutcomeFlags(bsys) && !(BattleSystem_GetBattleOutcomeFlags(bsys) & 0x40))
        {
            ctx->server_seq_no = CONTROLLER_COMMAND_42;
        }
    }

    sPlayerBattleCommands[ctx->server_seq_no](bsys, ctx);
#ifdef DEBUG_BATTLE_SCENARIOS
    TestBattle_autoSelectPlayerMoves(bsys, ctx);
#endif
#if defined (DISABLE_ITEMS_IN_TRAINER_BATTLE)
    overrideItemUsage(bsys, ctx);
#endif

    if (ctx->server_seq_no == CONTROLLER_COMMAND_45)
    {
        return TRUE;
    }
    return FALSE;
}
