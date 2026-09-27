#include "../include/npc_trade.h"

#include "../include/constants/file.h"
#include "../include/overlay.h"
#include "../include/pokemon.h"
#include "../include/types.h"

void LONG_CALL _CreateTradeMon(struct PartyPokemon *mon, struct NPCTrade *trade_dat, u32 level, u32 tradeno, u32 mapno, u32 met_level_strat, u32 heapId)
{
    u32 ovyId, offset;
    void (*internalFunc)(struct PartyPokemon *, struct NPCTrade *, u32, u32, u32, u32, u32);

    ovyId = OVERLAY_CREATETRADEMON;
    offset = 0x023C0400 | 1;

    HandleLoadOverlay(ovyId, 2);
    internalFunc = (void (*)(struct PartyPokemon *, struct NPCTrade *, u32, u32, u32, u32, u32))offset;
    internalFunc(mon, trade_dat, level, tradeno, mapno, met_level_strat, heapId);
    UnloadOverlayByID(ovyId);
}
