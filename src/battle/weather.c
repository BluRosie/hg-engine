#include "../../include/types.h"
#include "../../include/battle.h"
#include "../../include/constants/file.h"
#include "../../include/overlay.h"

void ServerFieldConditionCheck(void *bw, struct BattleStruct *sp)
{
    u32 ovyId, offset;

    void (*internalFunc)(void *bw, struct BattleStruct *sp);

    UnloadOverlayByID(6); // unload overlay 6 so this can be loaded

    ovyId = OVERLAY_SERVERFIELDCONDITIONCHECK;
    offset = 0x023C0400 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (void (*)(void *bw, struct BattleStruct *sp))(offset);
    internalFunc(bw, sp);
    UnloadOverlayByID(ovyId);

    HandleLoadOverlay(6, 2); // reload 6 so things are okay
}
