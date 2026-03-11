#include "types.h"

typedef struct SysTask SysTask;
typedef struct SysTaskQueue SysTaskQueue;
typedef void (*SysTaskFunc)(SysTask *task, void *data);
typedef void (*GFIntrCB)(void *);

struct System
{
    GFIntrCB vBlankIntr;
    void *vBlankIntrArg;
    GFIntrCB hBlankIntr;
    void *hBlankIntrArg;
    void (*unk10)(void);
    void (*unk14)(void);
    SysTaskQueue *mainTaskQueue;
    SysTaskQueue *vblankTaskQueue;
    SysTaskQueue *vwaitTaskQueue;
    SysTaskQueue *printTaskQueue;
    u32 *unk28;
    u32 vblankCounter;
    u32 frameCounter;
    int buttonMode;
    int heldKeysRaw;
    int newKeysRaw;
    int newAndRepeatedKeysRaw; // 40
    int heldKeys;
    int newKeys;
    int newAndRepeatedKeys;
    int keyRepeatCounter; // 50
    int keyRepeatContinueDelay;
    int keyRepeatStartDelay;
    int simulatedInputs;

    u16 touchX; // 60
    u16 touchY;
    u16 touchNew;
    u16 touchHeld;
    u8 touchpadReadAuto;
    u8 screensFlipped;
    u8 unk6A;
    u8 lidClosedPauseDisabled;
    u8 softResetDisabled;
    BOOL unk70;
    u32 *unk74;
}; // size=0x478

extern struct System gSystem;