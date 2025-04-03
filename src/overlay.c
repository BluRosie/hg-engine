#include "../include/types.h"
#include "../include/debug.h"
#include "../include/overlay.h"
#include "../include/save.h"
#include "../include/constants/file.h"


struct LinkedOverlayList gLinkedOverlayList[] =
{
    {OVERLAY_BATTLE, OVERLAY_BATTLE_EXTENSION},
    {OVERLAY_FIELD, OVERLAY_FIELD_EXTENSION},
    {OVERLAY_HALL_OF_FAME, OVERLAY_FIELD_EXTENSION},
    {OVERLAY_HALL_OF_FAME_PC, OVERLAY_FIELD_EXTENSION},
    {OVERLAY_POKEATHLON, OVERLAY_FIELD_EXTENSION},
    {OVERLAY_POKEWALKER, OVERLAY_FIELD_EXTENSION},
    {OVERLAY_POKEDEX, OVERLAY_POKEDEX_EXTENSION},
};

// entirely clean up overlays if the first one is being unloaded
u8 gCleanupOverlayList[][4] =
{
    {OVERLAY_BATTLE_EXTENSION, OVERLAY_BATTLECONTROLLER_BEFOREMOVE, OVERLAY_SERVERBEFOREACT, OVERLAY_BATTLECONTROLLER_MOVEEND},
};

// if the first one is being loaded, attempt to unload the remaining ones first.  the first one takes priority over the others.
u8 gOverlayPriorityList[][2] =
{
    {OVERLAY_POKEDEX, OVERLAY_BATTLECONTROLLER_BEFOREMOVE},
};

#ifdef DEBUG_PRINT_OVERLAY_LOADS
inline static void PrintLoadedOverlays(u32 ovyId)
{
    u32 overlayRegion;
    PMiLoadedOverlay *loadedOverlays;
    overlayRegion = GetOverlayLoadDestination(ovyId);
    loadedOverlays = GetLoadedOverlaysInRegion(overlayRegion);
    debug_printf("    Loaded overlays: ");
    for (int i = 0; i < MAX_ACTIVE_OVERLAYS; i++)
    {
        if (loadedOverlays[i].active == TRUE)
        {
            debug_printf(i == 0 ? "%04d" : ", %04d", loadedOverlays[i].id);
        }
    }
    debug_printf("\n\0");
}
#endif


void LONG_CALL UnloadOverlayByID(u32 ovyId) {
    u32 i, j = 0, k = 1;
    BOOL cleanupMode = FALSE;
    PMiLoadedOverlay *table;

unloadSecond:
    table = GetLoadedOverlaysInRegion(GetOverlayLoadDestination(ovyId));
    for (i = 0; i < MAX_ACTIVE_OVERLAYS; i++) {
        if (table[i].active == TRUE && table[i].id == ovyId) {
            FreeOverlayAllocation(&table[i]);
            break;
        }
    }

#ifdef DEBUG_PRINT_OVERLAY_LOADS
    debug_printf("Freed overlay %d.\n", ovyId);
#endif // DEBUG_PRINT_OVERLAY_LOADS

    for (i = 0; i < NELEMS(gLinkedOverlayList); i++)
    {
        if (gLinkedOverlayList[i].first_id == ovyId)
        {
            ovyId = gLinkedOverlayList[i].ext_id;
            goto unloadSecond;
        }
    }

    // alright we want to clear overlays
    for (; j < NELEMS(gCleanupOverlayList); j++) {
        if (k >= NELEMS(gCleanupOverlayList[0])) {
            cleanupMode = FALSE;
            k = 1;
            continue; // increases j
        }
        if ((gCleanupOverlayList[j][0] == ovyId) || cleanupMode) {
            if (gCleanupOverlayList[j][k]) {
                ovyId = gCleanupOverlayList[j][k++];
                cleanupMode = TRUE;
#ifdef DEBUG_PRINT_OVERLAY_LOADS
                debug_printf("Cleaning up overlay %d linked to overlay %d... ", ovyId, gCleanupOverlayList[j][0]);
#endif // DEBUG_PRINT_OVERLAY_LOADS
                goto unloadSecond;
            } else {
                k = 1;
                continue; // increases j
            }
        }
    }
}


u32 LONG_CALL HandleLoadOverlay(u32 ovyId, u32 loadType) {
    u32 result;
    u32 dmaBak = FS_DMA_NOT_USE;
    u32 overlayRegion;
    PMiLoadedOverlay *loadedOverlays;
    u32 i;
#ifdef DEBUG_PRINT_OVERLAY_LOADS
    u32 countActive = 0;
#endif // DEBUG_PRINT_OVERLAY_LOADS

loadExtension:
    for (i = 0; i < NELEMS(gOverlayPriorityList); i++)
    {
        if (gOverlayPriorityList[i][0] == ovyId)
        {
            for (u32 j = 1; j < NELEMS(gOverlayPriorityList[0]); j++)
            {
#ifdef DEBUG_PRINT_OVERLAY_LOADS
                debug_printf("Overlay %d has priority over overlay %d--unloading the latter...\n", ovyId, gOverlayPriorityList[0][j]);
#endif // DEBUG_PRINT_OVERLAY_LOADS
                UnloadOverlayByID(gOverlayPriorityList[0][j]);
            }
        }
    }

    if (!CanOverlayBeLoaded(ovyId)) {
#ifdef DEBUG_PRINT_OVERLAY_LOADS
        debug_printf("ERROR: Can't load in overlay_%04d.bin.\n", ovyId);
        PrintLoadedOverlays(ovyId);
#endif // DEBUG_PRINT_OVERLAY_LOADS
        return FALSE;
    }

    overlayRegion = GetOverlayLoadDestination(ovyId);
    loadedOverlays = GetLoadedOverlaysInRegion(overlayRegion);

    for (i = 0; i < MAX_ACTIVE_OVERLAYS; i++) {
        if (loadedOverlays[i].active == FALSE) {
            PMiLoadedOverlay *ovy = &loadedOverlays[i];
            ovy->active = TRUE;
            ovy->id = ovyId;
            break;
        }
    }

#ifdef DEBUG_PRINT_OVERLAY_LOADS
    {
        for (int j = 0; j < MAX_ACTIVE_OVERLAYS; j++)
        {
            countActive += loadedOverlays[j].active == TRUE;
        }
    }
#endif // DEBUG_PRINT_OVERLAY_LOADS

    if (i >= MAX_ACTIVE_OVERLAYS) {
#ifdef DEBUG_PRINT_OVERLAY_LOADS
        debug_printf("ERROR: Too many overlays!  Active count: %d\n", countActive);
        PrintLoadedOverlays(ovyId);
#endif // DEBUG_PRINT_OVERLAY_LOADS
        GF_ASSERT(0);
        return FALSE;
    }

    if (overlayRegion == 1 || overlayRegion == 2) {
        dmaBak = FS_SetDefaultDMA(FS_DMA_NOT_USE);
    }

    switch (loadType) {
    case 0:
        result = LoadOverlayNormal(0, ovyId);
        break;
    case 1:
        result = LoadOverlayNoInit(0, ovyId);
        break;
    case 2:
        result = LoadOverlayNoInitAsync(0, ovyId);
        break;
    default:
        GF_ASSERT(0);
        return FALSE;
    }

    if (overlayRegion == 1 || overlayRegion == 2) {
        FS_SetDefaultDMA(dmaBak);
    }

    if (result == FALSE) {
#ifdef DEBUG_PRINT_OVERLAY_LOADS
        debug_printf("Failed to load overlay_%04d.bin.\n", ovyId);
#endif // DEBUG_PRINT_OVERLAY_LOADS
        GF_ASSERT(0);
        return FALSE;
    }

    for (i = 0; i < NELEMS(gLinkedOverlayList); i++)
    {
        if (gLinkedOverlayList[i].first_id == ovyId)
        {
            ovyId = gLinkedOverlayList[i].ext_id;
            loadType = 2;
#ifdef DEBUG_PRINT_OVERLAY_LOADS
            debug_printf("Trying to load linked overlay_%04d.bin.\n", ovyId);
#endif // DEBUG_PRINT_OVERLAY_LOADS
            goto loadExtension;
        }
    }

    return TRUE;
}


u32 LONG_CALL IsOverlayLoaded(u32 ovyId)
{
    PMiLoadedOverlay *table = GetLoadedOverlaysInRegion(GetOverlayLoadDestination(ovyId));

    for (int i = 0; i < MAX_ACTIVE_OVERLAYS; i++) {
        if (table[i].active == TRUE && table[i].id == ovyId) {
            return 1;
        }
    }

    return 0;
}
