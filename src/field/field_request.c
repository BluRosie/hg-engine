#include "../../include/types.h"
#include "../../include/pokemon.h"
#include "../../include/map_events_internal.h"
#include "../../include/constants/buttons.h"
#include "../../include/constants/file.h"
#include "../../include/constants/species.h"
#include "../../include/constants/vars_flags.h"

/**** AURORA CRYSTAL: Used for Teleport Gem and Portable PC. ****/

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

/**
 *  @brief set new overworld request flags depending on buttons pressed
 *
 *  @param req OVERWORLD_REQUEST_FLAGS structure to set flags in
 *  @param trg buttons that are pressed on this frame
 */
void SetOverworldRequestFlags(OVERWORLD_REQUEST_FLAGS *req, u16 trg)
{
    if ((trg & PAD_BUTTON_R) || (trg & PAD_BUTTON_L)) {
        req->OpenPCCheck = TRUE;
    }
}

/**
 *  @brief handle overworld request flags
 *
 *  @param req OVERWORLD_REQUEST_FLAGS structure to set flags in
 */
void CheckOverworldRequestFlags(OVERWORLD_REQUEST_FLAGS *req, FieldSystem *fsys)
{
    if (req->OpenPCCheck && CheckScriptFlag(FLAG_PORTA_PC_AVAILABLE)) {
        SetScriptFlag(0x18F);
        EventSet_Script(fsys, 2010, NULL);
    }
}