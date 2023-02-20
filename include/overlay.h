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
u32 __attribute__((long_call)) GetOverlayLoadDestination(u32 overlayID);
PMiLoadedOverlay  *__attribute__((long_call)) GetLoadedOverlaysInRegion(u32 loadDest);
void __attribute__((long_call)) FreeOverlayAllocation(PMiLoadedOverlay *loadedOverlay);
u32 __attribute__((long_call)) CanOverlayBeLoaded(u32 overlayID);
u32 __attribute__((long_call)) FS_SetDefaultDMA(u32 mode);
u32 __attribute__((long_call)) LoadOverlayNormal(u32 mode, u32 overlayID);
u32 __attribute__((long_call)) LoadOverlayNoInit(u32 mode, u32 overlayID);
u32 __attribute__((long_call)) LoadOverlayNoInitAsync(u32 mode, u32 overlayID);


// in src/overlay.c
void __attribute__((long_call)) UnloadOverlayByID(u32 ovyId);
u32 __attribute__((long_call)) HandleLoadOverlay(u32 ovyId, u32 loadType);


#endif // OVERLAY_H
