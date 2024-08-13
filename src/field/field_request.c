#include "../../include/types.h"
#include "../../include/pokemon.h"
#include "../../include/map_events_internal.h"
#include "../../include/constants/buttons.h"
#include "../../include/constants/file.h"
#include "../../include/constants/species.h"

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
    req->OpenRelearnerCheck = 0; // new

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
    if (trg & PAD_BUTTON_R) {
        req->OpenRelearnerCheck = TRUE;
    }

     if (trg & PAD_BUTTON_L) {
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
    // Proper mode
    // if (req->OpenRelearnerCheck && CheckScriptFlag(2167)) {
    //     if (CheckScriptFlag(2170)) {
    //         EventSet_Script(fsys, 2074, NULL); // set up script 2074 if flag 2170 is set, disallowing use of the Teleport Gem
    //     } else {
    //         EventSet_Script(fsys, 2073, NULL); // set up script 2073
    //     }
    // }

    // Testing mode
    if (req->OpenRelearnerCheck) {
        EventSet_Script(fsys, 2072, NULL); // set up script 2072
    }
    if (req->OpenPCCheck) {
        SetScriptFlag(0x18F); // some random flag that should be set by script 2010 (file 3 script 10)
        EventSet_Script(fsys, 2010, NULL); // set up script 2010
    }

    // Don't allow the PC at all if flag 398 hasn't been set
    // if (req->OpenPCCheck && CheckScriptFlag(398)) {
    //     if (CheckScriptFlag(397)) {
    //         EventSet_Script(fsys, 2072, NULL); // set up script 2072 to show a cannot use PC message if flag 397 is set
    //     } else {
    //         SetScriptFlag(399); // some random flag that should be set by script 2010 (file 3 script 10)
    //         EventSet_Script(fsys, 2075, NULL); // set up script 2075
    //     }
    // }
}
