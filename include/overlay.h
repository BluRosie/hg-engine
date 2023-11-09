#ifndef OVERLAY_H
#define OVERLAY_H

struct LinkedOverlayList {
    u8 first_id;
    u8 ext_id;
};

typedef struct PMiLoadedOverlay {
    u32 id;
    BOOL active;
} PMiLoadedOverlay;

#define FS_DMA_NOT_USE ((u32)~0)

// overlay util funcs
u32 LONG_CALL GetOverlayLoadDestination(u32 overlayID);
PMiLoadedOverlay  *LONG_CALL GetLoadedOverlaysInRegion(u32 loadDest);
void LONG_CALL FreeOverlayAllocation(PMiLoadedOverlay *loadedOverlay);
u32 LONG_CALL CanOverlayBeLoaded(u32 overlayID);
u32 LONG_CALL FS_SetDefaultDMA(u32 mode);
u32 LONG_CALL LoadOverlayNormal(u32 mode, u32 overlayID);
u32 LONG_CALL LoadOverlayNoInit(u32 mode, u32 overlayID);
u32 LONG_CALL LoadOverlayNoInitAsync(u32 mode, u32 overlayID);


// in src/overlay.c
void LONG_CALL UnloadOverlayByID(u32 ovyId);
u32 LONG_CALL HandleLoadOverlay(u32 ovyId, u32 loadType);
u32 LONG_CALL IsOverlayLoaded(u32 ovyId);


#endif // OVERLAY_H
