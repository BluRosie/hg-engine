#include "../include/types.h"
#include "../include/save.h"


struct LinkedOverlayList {
    u8 first_id;
    u8 ext_id;
};


struct LinkedOverlayList gLinkedOverlayList[2] =
{
    {12, 130},
    {1, 131},
};


#define FS_DMA_NOT_USE ((u32)~0)


typedef struct PMiLoadedOverlay {
    u32 id;
    BOOL active;
} PMiLoadedOverlay;


// overlay util funcs
u32 __attribute__((long_call)) GetOverlayLoadDestination(u32 overlayID);
PMiLoadedOverlay  *__attribute__((long_call)) GetLoadedOverlaysInRegion(u32 loadDest);
void __attribute__((long_call)) FreeOverlayAllocation(PMiLoadedOverlay *loadedOverlay);
u32 __attribute__((long_call)) CanOverlayBeLoaded(u32 overlayID);
u32 __attribute__((long_call)) FS_SetDefaultDMA(u32 mode);
u32 __attribute__((long_call)) LoadOverlayNormal(u32 mode, u32 overlayID);
u32 __attribute__((long_call)) LoadOverlayNoInit(u32 mode, u32 overlayID);
u32 __attribute__((long_call)) LoadOverlayNoInitAsync(u32 mode, u32 overlayID);


void UnloadOverlayByID(u32 ovyId) {
    int i;
    u8 buf[64];

unloadSecond:
    PMiLoadedOverlay *table = GetLoadedOverlaysInRegion(GetOverlayLoadDestination(ovyId));
    for (i = 0; i < 8; i++) {
        if (table[i].active == TRUE && table[i].id == ovyId) {
            FreeOverlayAllocation(&table[i]);
            break;
        }
    }
    
    sprintf(buf, "Freed overlay %d.\n", ovyId);
    debugsyscall(buf);
    
    for (i = 0; i < NELEMS(gLinkedOverlayList); i++)
    {
        if (gLinkedOverlayList[i].first_id == ovyId)
        {
            ovyId = gLinkedOverlayList[i].ext_id;
            goto unloadSecond;
        }
    }
}


u32 HandleLoadOverlay(u32 ovyId, u32 loadType) {
    u32 result;
    u32 dmaBak = FS_DMA_NOT_USE;
    u32 overlayRegion;
    PMiLoadedOverlay *loadedOverlays;
    u8 buf[64];
    int i;

loadExtension:
    if (!CanOverlayBeLoaded(ovyId)) {
        return FALSE;
    }

    overlayRegion = GetOverlayLoadDestination(ovyId);
    loadedOverlays = GetLoadedOverlaysInRegion(overlayRegion);

    for (i = 0; i < 8; i++) {
        if (loadedOverlays[i].active == FALSE) {
            PMiLoadedOverlay *ovy = &loadedOverlays[i];
            ovy->active = TRUE;
            ovy->id = ovyId;
            break;
        }
    }

    sprintf(buf, "Loaded in overlay_%04d.bin. Total of %d overlays loaded.\n", ovyId, i+1);
    debugsyscall(buf);
    if (i >= 8) {
        debugsyscall("ERROR: Too many overlays!\n");
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
        sprintf(buf, "Failed to load overlay_%04d.bin.\n", ovyId);
        debugsyscall(buf);
        GF_ASSERT(0);
        return FALSE;
    }
    
    for (i = 0; i < NELEMS(gLinkedOverlayList); i++)
    {
        if (gLinkedOverlayList[i].first_id == ovyId)
        {
            ovyId = gLinkedOverlayList[i].ext_id;
            goto loadExtension;
        }
    }

    return TRUE;
}
