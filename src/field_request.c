#include "../../include/types.h"
#include "../../include/pokemon.h"
#include "../../include/map_events_internal.h"
#include "../../include/constants/file.h"
#include "../../include/constants/species.h"

/**
 *  @brief clear overworld request flags
 *
 *  @param req OVERWORLD_REQUEST_FLAGS structure to clear
 */
void ClearOverworldRequestFlags(OVERWORLD_REQUEST_FLAGS *req)
{
    req->TalkCheck    = 0;
    req->StepCheck    = 0;
    req->MenuOpen     = 0;
    req->unk0_0018    = 0;
    req->CnvButton    = 0;
    req->MatCheck     = 0;
    req->PushCheck    = 0;
    req->MoveCheck    = 0;
    req->FloatCheck   = 0;
    req->DebugMenu    = 0;
    req->DebugBattle  = 0;
    req->DebugHook    = 0;
    req->DebugKeyPush = 0;

    req->OpenPCCheck  = 0; // new:  check if pc should be opened

    req->Site = 0xFF;
    req->PushSite = 0xFF;
}

// SetRequest has been significantly changed from Platinum by necessity because of the touch screen changing things
