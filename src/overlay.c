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


void LONG_CALL UnloadOverlayByID(u32 ovyId) {
    u32 i;
    PMiLoadedOverlay *table;
#ifdef DEBUG_PRINT_OVERLAY_LOADS
    u8 buf[64];
#endif // DEBUG_PRINT_OVERLAY_LOADS

unloadSecond:
    table = GetLoadedOverlaysInRegion(GetOverlayLoadDestination(ovyId));
    for (i = 0; i < MAX_ACTIVE_OVERLAYS; i++) {
        if (table[i].active == TRUE && table[i].id == ovyId) {
            FreeOverlayAllocation(&table[i]);
            break;
        }
    }

#ifdef DEBUG_PRINT_OVERLAY_LOADS
    sprintf(buf, "Freed overlay %d.\n", ovyId);
    debug_printf(buf);
#endif // DEBUG_PRINT_OVERLAY_LOADS

    for (i = 0; i < NELEMS(gLinkedOverlayList); i++)
    {
        if (gLinkedOverlayList[i].first_id == ovyId)
        {
            ovyId = gLinkedOverlayList[i].ext_id;
            goto unloadSecond;
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
    u8 buf[128];
#endif // DEBUG_PRINT_OVERLAY_LOADS

loadExtension:
    if (!CanOverlayBeLoaded(ovyId)) {
#ifdef DEBUG_PRINT_OVERLAY_LOADS
        overlayRegion = GetOverlayLoadDestination(ovyId);
        loadedOverlays = GetLoadedOverlaysInRegion(overlayRegion);
        sprintf(buf, "ERROR: Can't load in overlay_%04d.bin.\n", ovyId);
        debug_printf(buf);
        debug_printf("    Loaded overlays: ");
        for (i = 0; i < MAX_ACTIVE_OVERLAYS; i++)
        {
            if (loadedOverlays[i].active == TRUE)
            {
                debug_printf("%04d, ", loadedOverlays[i].id);
            }
        }
        debug_printf("\n");
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
    sprintf(buf, "Loaded in overlay_%04d.bin. Total of %d overlays loaded.\n", ovyId, i+1);
    debug_printf(buf);
#endif // DEBUG_PRINT_OVERLAY_LOADS

    if (i >= MAX_ACTIVE_OVERLAYS) {
#ifdef DEBUG_PRINT_OVERLAY_LOADS
        debug_printf("ERROR: Too many overlays!\n");
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
        sprintf(buf, "Failed to load overlay_%04d.bin.\n", ovyId);
        debug_printf(buf);
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
            sprintf(buf, "Trying to load linked overlay_%04d.bin.\n", ovyId);
            debug_printf(buf);
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
