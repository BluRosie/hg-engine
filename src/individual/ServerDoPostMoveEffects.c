#include "../../include/battle.h"
#include "../../include/debug.h"
#include "../../include/overlay.h"
#include "../../include/pokemon.h"
#include "../../include/types.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/constants/weather_numbers.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/file.h"


// https://bulbapedia.bulbagarden.net/wiki/Category:Moves_that_thaw_out_the_user
// will have to add matcha gotcha and burn up to the list of effects that thaw the user
u16 gMovesThatThawFrozenMons[] =
{
    //MOVE_BURN_UP,
    //MOVE_FLAME_WHEEL,
    //MOVE_FLARE_BLITZ,
    //MOVE_FUSION_FLARE,
    MOVE_MATCHA_GOTCHA,
    //MOVE_PYRO_BALL,
    //MOVE_SACRED_FIRE,
    MOVE_SCALD,
    MOVE_SCORCHING_SANDS,
    MOVE_STEAM_ERUPTION,
};

/**
 *  @brief do post move effects--synchronize, held item effects, ice thawing from move usage, etc.
 *         no other abilities here though.  primarily here to add scald melting frozen battlers
 *
 *  @param bsys battle work structure
 *  @param ctx global battle structure
 */
void ServerDoPostMoveEffectsInternal(void *bsys, struct BattleStruct *ctx)
{
    // Sort clients because moves may affect ctxeed
    DynamicSortClientExecutionOrder(bsys, ctx, FALSE);
    switch (ctx->swoak_seq_no) {
        case SWOAK_SEQ_VANISH_ON_OFF: {
            int ret = 0;
            while (ctx->swoak_work < BattleWorkClientSetMaxGet(bsys))
            {
                if (((ctx->battlemon[ctx->swoak_work].effect_of_moves & (MOVE_EFFECT_FLAG_SEMI_INVULNERABLE)) == 0)
                 && (ctx->battlemon[ctx->swoak_work].effect_of_moves_temp & (MOVE_EFFECT_FLAG_SEMI_INVULNERABLE)))
                {
                    ctx->battlemon[ctx->swoak_work].effect_of_moves_temp &= ~(MOVE_EFFECT_FLAG_SEMI_INVULNERABLE);
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_VANISH_OFF);
                    ctx->battlerIdTemp = ctx->swoak_work;
                    ctx->next_server_seq_no = ctx->server_seq_no;
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                    ret = 1;
                }

                ctx->swoak_work++;

                if (ret)
                    return;
            }
        }
        ctx->swoak_seq_no++;
        ctx->swoak_work = 0;
        FALLTHROUGH;
    case SWOAK_SEQ_SYNCHRONIZE_CHECK:
        ctx->swoak_seq_no++;
        if (SynchroniseAbilityCheck(bsys, ctx, ctx->server_seq_no) == TRUE)
            return;
        FALLTHROUGH;
    case SWOAK_SEQ_POKE_APPEAR_CHECK:
        {
            int seq_no;

            seq_no = ST_ServerPokeAppearCheck(bsys, ctx);

            if (seq_no)
            {
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, seq_no);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return;
            }
        }
        ctx->swoak_seq_no++;
        FALLTHROUGH;
    case SWOAK_SEQ_CHECK_HELD_ITEM_EFFECT_ATTACKER:
        ctx->swoak_seq_no++;
        if (TryUseHeldItem(bsys, ctx, ctx->attack_client) == TRUE) // will eventually need TryUseHeldItem anyway.  generic berry function thing
            return;
        FALLTHROUGH;
    case SWOAK_SEQ_CHECK_HELD_ITEM_EFFECT_DEFENDER:
        ctx->swoak_seq_no++;
        if (ctx->defence_client != 0xFF)
        {
            if (TryUseHeldItem(bsys, ctx, ctx->defence_client) == TRUE)
                return;
        }
        FALLTHROUGH;
    case SWOAK_SEQ_CHECK_DEFENDER_ITEM_ON_HIT:
        {
            int seq_no;

            ctx->swoak_seq_no++;
            if (CheckDefenderItemEffectOnHit(bsys, ctx, &seq_no) == TRUE)
            {
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, seq_no);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return;
            }
        }
        FALLTHROUGH;
    case SWOAK_SEQ_THAW_ICE:
        {
            int movetype;
            u16 currMove = ctx->current_move_index;

            movetype = GetAdjustedMoveType(ctx, ctx->attack_client, currMove); // new normalize checks

            ctx->swoak_seq_no++;

            if (ctx->defence_client != 0xFF)
            {
                if ((ctx->battlemon[ctx->defence_client].condition & STATUS_FREEZE)
                 && ((ctx->waza_status_flag & MOVE_STATUS_FLAG_FURY_CUTTER_MISS) == 0)
                 && (ctx->defence_client != ctx->attack_client)
                 && ((ctx->oneSelfFlag[ctx->defence_client].physical_damage) || (ctx->oneSelfFlag[ctx->defence_client].special_damage))
                 && (ctx->battlemon[ctx->defence_client].hp)
                 && ((movetype == TYPE_FIRE) || (IsElementInArray(gMovesThatThawFrozenMons, &currMove, NELEMS(gMovesThatThawFrozenMons), sizeof(u16)))) // scald can also melt opponents as of gen 6
                 && ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag == 0)
                {
                    ctx->battlerIdTemp = ctx->defence_client;
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_THAW_OUT);
                    ctx->next_server_seq_no = ctx->server_seq_no;
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                    return;
                }
            }
        }
        FALLTHROUGH;
    case SWOAK_SEQ_CHECK_HEALING_ITEMS:
        {
            int client_no;
            int ret=0;
            int seq_no;

            while (ctx->swoak_work < BattleWorkClientSetMaxGet(bsys))
            {
                client_no = ctx->turnOrder[ctx->swoak_work];
                if (ctx->no_reshuffle_client & No2Bit(client_no))
                {
                    ctx->swoak_work++;
                    continue;
                }

                ctx->swoak_work++;

                if (HeldItemHealStatusCheck(bsys, ctx, client_no, &seq_no) == TRUE) // will also probably need this one too
                {
                    ctx->battlerIdTemp = client_no;
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, seq_no);
                    ctx->next_server_seq_no = ctx->server_seq_no;
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                    ret = 1;
                    break;
                }
            }

            if (ret == 0)
            {
                ctx->swoak_seq_no++;
                ctx->swoak_work = 0;
            }
        }
        FALLTHROUGH;
    case SWOAK_SEQ_CLEAR_MAGIC_COAT:
        ctx->magicBounceTracker = FALSE;
        ctx->swoak_seq_no++;
        break;
    default:
        break;
    }
    //ctx->swoak_seq_no = 0;
    ctx->swoak_work = 0;
    ctx->server_seq_no = CONTROLLER_COMMAND_32;
}
