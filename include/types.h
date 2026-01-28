#ifndef TYPES_H
#define TYPES_H

#include <stdint.h>
#include "io_reg.h"
#include "debug.h"
#include "constants/buttons.h"

typedef uint8_t   u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t    s8;
typedef int16_t  s16;
typedef int32_t  s32;
typedef int64_t  s64;

typedef volatile  u8  vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile  s8  vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

#define NULL                ((void *)0)
#define TRUE 1
#define FALSE 0

#define NELEMS(array) (sizeof(array) / sizeof(array[0]))
#define offsetof(st, m) \
    ((u32)&(((st *)0)->m))

typedef u8  bool8;
typedef int  BOOL;
typedef u16 bool16;
typedef u32 bool32;


typedef s32 fx32;
#define FX32_SHIFT          12
#define FX32_INT_SIZE       19
#define FX32_DEC_SIZE       12

#define FX32_INT_MASK       0x7ffff000
#define FX32_DEC_MASK       0x00000fff
#define FX32_SIGN_MASK      0x80000000


typedef struct
{
    fx32 x;
    fx32 y;
    fx32 z;
}
VecFx32;



#define GX_RGB_R_SHIFT            (0)
#define GX_RGB_R_MASK             (0x001f)
#define GX_RGB_G_SHIFT            (5)
#define GX_RGB_G_MASK             (0x03e0)
#define GX_RGB_B_SHIFT            (10)
#define GX_RGB_B_MASK             (0x7c00)
#define GX_RGB(r, g, b)           ((u16)(((r) << GX_RGB_R_SHIFT) | \
                                         ((g) << GX_RGB_G_SHIFT) | \
                                         ((b) << GX_RGB_B_SHIFT)))



#define	ALIGN4 __attribute__((aligned(4)))
#define MOVE_TABLES_TERMIN 0xFEFE
#define THUMB_FUNC __attribute__((target("thumb")))
#define LONG_CALL __attribute__((long_call))
#define UNUSED __attribute__((unused))
#define FALLTHROUGH __attribute__ ((fallthrough))
#define PACKED __attribute__((packed))

#if defined(NOCASH_GBA_PRINT) && !defined (DEBUG_BATTLE_SCENARIOS)
#define NOCASHGBAIDADDR 0x04FFFA00
#define NOCASHGBAPRINTADDR1 0x04FFFA14 // does not automatically add the newline
#define NOCASHGBAPRINTADDR2 0x04FFFA18 // does automatically add the newline

extern u8 DebugTextBuf[0xAC];

#define debug_printf(...) { sprintf(DebugTextBuf, __VA_ARGS__); *(volatile u32 *)NOCASHGBAPRINTADDR1 = (u32)DebugTextBuf; }
#else
#define debug_printf(...) { u8 buf_assumeunuasedfasdf[128]; sprintf(buf_assumeunuasedfasdf, __VA_ARGS__); debugsyscall(buf_assumeunuasedfasdf); }
#endif

// Extracts the upper 16 bits of a 32-bit number
#define HIHALF(n) (((n) & 0xFFFF0000) >> 16)

// Extracts the lower 16 bits of a 32-bit number
#define LOHALF(n) ((n) & 0xFFFF)

#define No2Bit(n) ((1) << (n))

// validates a pointer's value
#define IS_NOT_VALID_EWRAM_POINTER(n) ((u32)(n) >= 0x03000000 || (u32)(n) < 0x02000000)

#define GF_ASSERT(cond) if (!(cond)) { }
//#define GF_ASSERT(cond) (cond) ? 0 : GF_ASSERT_INTERNAL()

struct HeapInfo {
    void **heapHandles;
    void *parentHeapHandles;
    void **subHeapRawPtrs;
    u16 *numMemBlocks;
    u8 *heapIdxs;
    u16 totalNumHeaps;
    u16 nTemplates;
    u16 maxHeaps;
    u16 unallocatedHeapId;
};

u32 LONG_CALL OS_DisableInterrupts(void);
void *LONG_CALL NNS_FndAllocFromExpHeapEx(void *heap, u32 size, u32 align);
void LONG_CALL OS_RestoreInterrupts(u32);
extern struct HeapInfo sHeapInfo;

void LONG_CALL GF_ASSERT_INTERNAL();
u16 LONG_CALL gf_rand(void);

void LONG_CALL sys_FreeMemoryEz(void*);
void* LONG_CALL sys_AllocMemory(u32,u32);

u32 LONG_CALL GF_ExpHeap_FndGetTotalFreeSize(u32 heapId);

void LONG_CALL ArcUtil_PalSet(u32 fileIdx, u32 dataIdx, u8 palType, u32 offs, u32 transSize, u32 heapID);
void *LONG_CALL ArchiveDataLoadMalloc(int arcID, int datID, int heapID);
void LONG_CALL ArchiveDataLoad(void *data, int arcID, int datID);
void *LONG_CALL ArchiveDataLoadMallocOfs(int arcID, int datID, int heapID, int ofs, int size);
void LONG_CALL ArchiveDataLoadOfs(void *data, int arcID, int datID, int ofs, int size);
void *LONG_CALL sys_AllocMemoryLo(u32 heap_id, u32 size);
void *LONG_CALL NARC_ctor(u32 narc_id, u32 heap_id);

void LONG_CALL MIi_CpuClearFast(u32 value, void *dest, u32 size);
u16 LONG_CALL GF_CalcCRC16(const void *data, u32 size);
BOOL LONG_CALL sub_02037D78(void);
void LONG_CALL PrintErrorMessageAndReset(void);

void LONG_CALL OS_SetArenaHi(u32 id, void* newHi);
void *LONG_CALL OS_GetInitArenaHi(u32 id);
void LONG_CALL OS_SetArenaLo(u32 id, void* newHi);
void *LONG_CALL OS_GetInitArenaLo(u32 id);
void LONG_CALL InitHeapSystem(void *, u32, u32, u32);
void LONG_CALL sub_0200FBF4(u32 screen, u32);
void LONG_CALL OS_DisableIrqMask(u32);
void LONG_CALL OS_SetIrqFunction(u32, void *);
void LONG_CALL OS_EnableIrqMask(u32);
void LONG_CALL Main_SetVBlankIntrCB(void *, void *);
void LONG_CALL Main_SetHBlankIntrCB(void *, void *);
void LONG_CALL GfGfx_DisableEngineAPlanes(void);
void LONG_CALL GfGfx_DisableEngineBPlanes(void);
void LONG_CALL SetKeyRepeatTimers(u32, u32);
void LONG_CALL GfGfx_SwapDisplay(void);
void LONG_CALL GfGfx_SetBanks(void *);
void *LONG_CALL BgConfig_Alloc(u32);
void LONG_CALL SetBothScreensModesAndDisable(void *);
void LONG_CALL InitBgFromTemplate(void *, u32, void *, u32);
void LONG_CALL BgClearTilemapBufferAndCommit(void *, u32);
void LONG_CALL LoadUserFrameGfx1(void *, u32, u32, u32, u32, u32);
void LONG_CALL LoadFontPal0(u32, u32, u32);
void LONG_CALL BG_ClearCharDataRange(u32, u32, u32, u32);
void LONG_CALL BG_SetMaskColor(u32, u32);
void *LONG_CALL String_New(u32 maxsize, u32 heapId);
void LONG_CALL ResetAllTextPrinters(void);
void LONG_CALL AddWindow(void *, void *, void *);
void LONG_CALL FillWindowPixelRect(void *, u32, u32, u32, u32, u32);
void LONG_CALL DrawFrameAndWindow1(void *, u32, u32, u32);
void LONG_CALL ReadMsgDataIntoString(void *, u32, void *);
void LONG_CALL AddTextPrinterParameterized(void *, u32, void *, u32, u32, u32, void *);
void LONG_CALL String_Delete(void *);
void LONG_CALL GfGfx_BothDispOn(void);
void LONG_CALL SetMasterBrightnessNeutral(u32);
void LONG_CALL SetBlendBrightness(u32, u32, u32);
void LONG_CALL sub_02038D90(void);
void LONG_CALL HandleDSLidAction(void);
void LONG_CALL sub_02036144(void);
BOOL LONG_CALL sub_02039AA4(void);
void LONG_CALL OS_WaitIrq(u32, u32);
void LONG_CALL RemoveWindow(void *);
void LONG_CALL GfGfx_SetBanks(void *);
void LONG_CALL OS_ResetSystem(u32);


void *memcpy(void *dest, void *src, u32 size);
void *memset(void *dest, u8 fill, u32 size);
void sprintf(u8 *buf, char *str, ...);
void debugsyscall(u8 *buf);


static inline void MI_CpuFillFast(void *dst, int data, u32 size) {
    MIi_CpuClearFast(data, dst, size);
}

static inline void MI_CpuClearFast(void *dest, u32 size) {
    MIi_CpuClearFast(0, dest, size);
}

static inline void GX_SetVisiblePlane(int plane) {
    reg_GX_DISPCNT = (u32)((reg_GX_DISPCNT & ~REG_GX_DISPCNT_DISPLAY_MASK) | (plane << REG_GX_DISPCNT_DISPLAY_SHIFT));
}

static inline void GXS_SetVisiblePlane(int plane) {
    reg_GXS_DB_DISPCNT = (u32)((reg_GXS_DB_DISPCNT & ~REG_GXS_DB_DISPCNT_DISPLAY_MASK) | (plane << REG_GXS_DB_DISPCNT_DISPLAY_SHIFT));
}

static inline void G2_BlendNone(void) {
    reg_G2_BLDCNT = 0;
}

static inline void G2S_BlendNone(void) {
    reg_G2S_DB_BLDCNT = 0;
}

static inline void GX_SetVisibleWnd(int window) {
    reg_GX_DISPCNT = (u32)((reg_GX_DISPCNT & ~(REG_GX_DISPCNT_W0_MASK | REG_GX_DISPCNT_W1_MASK | REG_GX_DISPCNT_OW_MASK)) | (window << REG_GX_DISPCNT_W0_SHIFT));
}

static inline void GXS_SetVisibleWnd(int window) {
    reg_GXS_DB_DISPCNT = (u32)((reg_GXS_DB_DISPCNT & ~(REG_GXS_DB_DISPCNT_W0_MASK | REG_GXS_DB_DISPCNT_W1_MASK | REG_GXS_DB_DISPCNT_OW_MASK)) | (window << REG_GXS_DB_DISPCNT_W0_SHIFT));
}

static inline u16 PAD_Read(void) {
    return (u16)(((reg_PAD_KEYINPUT | *(vu16 *)HW_BUTTON_XY_BUF) ^
                  (PAD_PLUS_KEY_MASK | PAD_BUTTON_MASK)) & (PAD_PLUS_KEY_MASK | PAD_BUTTON_MASK));
}

#define RGB(r, g, b) (((b & 0x1F) << 10) | ((g & 0x1F) << 5) | (r & 0x1F))

#endif
