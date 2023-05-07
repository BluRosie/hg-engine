#ifndef NITRO_H
#define NITRO_H


#include "io_reg.h"


#define reg_G2_BG0CNT              (*(u16 *)0x4000008)
#define reg_G2_BG1CNT              (*(u16 *)0x400000a)
#define reg_G2_BG2CNT              (*(u16 *)0x400000c)
#define reg_G2_BG3CNT              (*(u16 *)0x400000e)
#define reg_G2_BG0OFS              (*(u32 *)0x4000010)
#define reg_G2_BG0HOFS             (*(u16 *)0x4000010)
#define reg_G2_BG0VOFS             (*(u16 *)0x4000012)
#define reg_G2_BG1OFS              (*(u32 *)0x4000014)
#define reg_G2_BG1HOFS             (*(u16 *)0x4000014)
#define reg_G2_BG1VOFS             (*(u16 *)0x4000016)
#define reg_G2_BG2OFS              (*(u32 *)0x4000018)
#define reg_G2_BG2HOFS             (*(u16 *)0x4000018)
#define reg_G2_BG2VOFS             (*(u16 *)0x400001a)
#define reg_G2_BG3OFS              (*(u32 *)0x400001c)
#define reg_G2_BG3HOFS             (*(u16 *)0x400001c)
#define reg_G2_BG3VOFS             (*(u16 *)0x400001e)
#define reg_G2_BG2PA               (*(u16 *)0x4000020)
#define reg_G2_BG2PB               (*(u16 *)0x4000022)
#define reg_G2_BG2PC               (*(u16 *)0x4000024)
#define reg_G2_BG2PD               (*(u16 *)0x4000026)
#define reg_G2_BG2X                (*(u32 *)0x4000028)
#define reg_G2_BG2Y                (*(u32 *)0x400002c)
#define reg_G2_BG3PA               (*(u16 *)0x4000030)
#define reg_G2_BG3PB               (*(u16 *)0x4000032)
#define reg_G2_BG3PC               (*(u16 *)0x4000034)
#define reg_G2_BG3PD               (*(u16 *)0x4000036)
#define reg_G2_BG3X                (*(u32 *)0x4000038)
#define reg_G2_BG3Y                (*(u32 *)0x400003c)
#define reg_G2_WIN0H               (*(u16 *)0x4000040)
#define reg_G2_WIN1H               (*(u16 *)0x4000042)
#define reg_G2_WIN0V               (*(u16 *)0x4000044)
#define reg_G2_WIN1V               (*(u16 *)0x4000046)
#define reg_G2_WININ               (*(u16 *)0x4000048)
#define reg_G2_WINOUT              (*(u16 *)0x400004a)
#define reg_G2_MOSAIC              (*(u16 *)0x400004c)
#define reg_G2_BLDCNT              (*(u16 *)0x4000050)
#define reg_G2_BLDALPHA            (*(u16 *)0x4000052)
#define reg_G2_BLDY                (*(u16 *)0x4000054)


typedef struct {
    u8 planeMask:5;
    u8 effect:1;
    u8 _reserve:2;
} GXWndPlane;

typedef enum {
    GX_BLEND_PLANEMASK_NONE = 0x0000,
    GX_BLEND_PLANEMASK_BG0 = 0x0001,
    GX_BLEND_PLANEMASK_BG1 = 0x0002,
    GX_BLEND_PLANEMASK_BG2 = 0x0004,
    GX_BLEND_PLANEMASK_BG3 = 0x0008,
    GX_BLEND_PLANEMASK_OBJ = 0x0010,
    GX_BLEND_PLANEMASK_BD = 0x0020
} GXBlendPlaneMask;

typedef enum {
    GX_WND_PLANEMASK_NONE = 0x0000,
    GX_WND_PLANEMASK_BG0 = 0x0001,
    GX_WND_PLANEMASK_BG1 = 0x0002,
    GX_WND_PLANEMASK_BG2 = 0x0004,
    GX_WND_PLANEMASK_BG3 = 0x0008,
    GX_WND_PLANEMASK_OBJ = 0x0010
} GXWndPlaneMask;

static inline void G2_SetWndOutsidePlane(int wnd, BOOL effect) {
    u32 tmp;

    tmp = ((reg_G2_WINOUT & ~REG_G2_WINOUT_WINOUT_MASK) | ((u32)wnd << REG_G2_WINOUT_WINOUT_SHIFT));

    if (effect) {
        tmp |= (0x20 << REG_G2_WINOUT_WINOUT_SHIFT);    // EFCT
    }

    reg_G2_WINOUT = (u16)tmp;
}

static inline void G2_SetBG0Offset(int hOffset, int vOffset) {
    reg_G2_BG0OFS = (u32)(((hOffset << REG_G2_BG0OFS_HOFFSET_SHIFT) & REG_G2_BG0OFS_HOFFSET_MASK) |
                          ((vOffset << REG_G2_BG0OFS_VOFFSET_SHIFT) & REG_G2_BG0OFS_VOFFSET_MASK));
}

static inline void G2_SetBG1Offset(int hOffset, int vOffset) {
    reg_G2_BG1OFS = (u32)(((hOffset << REG_G2_BG1OFS_HOFFSET_SHIFT) & REG_G2_BG1OFS_HOFFSET_MASK) |
                          ((vOffset << REG_G2_BG1OFS_VOFFSET_SHIFT) & REG_G2_BG1OFS_VOFFSET_MASK));
}

static inline void G2_SetBG2Offset(int hOffset, int vOffset) {
    reg_G2_BG2OFS = (u32)(((hOffset << REG_G2_BG2OFS_HOFFSET_SHIFT) & REG_G2_BG2OFS_HOFFSET_MASK) |
                          ((vOffset << REG_G2_BG2OFS_VOFFSET_SHIFT) & REG_G2_BG2OFS_VOFFSET_MASK));
}

static inline void G2_SetBG3Offset(int hOffset, int vOffset) {
    reg_G2_BG3OFS = (u32)(((hOffset << REG_G2_BG3OFS_HOFFSET_SHIFT) & REG_G2_BG3OFS_HOFFSET_MASK) |
                          ((vOffset << REG_G2_BG3OFS_VOFFSET_SHIFT) & REG_G2_BG3OFS_VOFFSET_MASK));
}

static inline void G2S_SetBG0Offset(int hOffset, int vOffset) {
    reg_G2S_DB_BG0OFS = (u32)(((hOffset << REG_G2S_DB_BG0OFS_HOFFSET_SHIFT) & REG_G2S_DB_BG0OFS_HOFFSET_MASK) |
                              ((vOffset << REG_G2S_DB_BG0OFS_VOFFSET_SHIFT) & REG_G2S_DB_BG0OFS_VOFFSET_MASK));
}

static inline void G2S_SetBG1Offset(int hOffset, int vOffset) {
    reg_G2S_DB_BG1OFS = (u32)(((hOffset << REG_G2S_DB_BG1OFS_HOFFSET_SHIFT) & REG_G2S_DB_BG1OFS_HOFFSET_MASK) |
                              ((vOffset << REG_G2S_DB_BG1OFS_VOFFSET_SHIFT) & REG_G2S_DB_BG1OFS_VOFFSET_MASK));
}

static inline void G2S_SetBG2Offset(int hOffset, int vOffset) {
    reg_G2S_DB_BG2OFS = (u32)(((hOffset << REG_G2S_DB_BG2OFS_HOFFSET_SHIFT) & REG_G2S_DB_BG2OFS_HOFFSET_MASK) |
                              ((vOffset << REG_G2S_DB_BG2OFS_VOFFSET_SHIFT) & REG_G2S_DB_BG2OFS_VOFFSET_MASK));
}

static inline void G2S_SetBG3Offset(int hOffset, int vOffset) {
    reg_G2S_DB_BG3OFS = (u32)(((hOffset << REG_G2S_DB_BG3OFS_HOFFSET_SHIFT) & REG_G2S_DB_BG3OFS_HOFFSET_MASK) |
                              ((vOffset << REG_G2S_DB_BG3OFS_VOFFSET_SHIFT) & REG_G2S_DB_BG3OFS_VOFFSET_MASK));
}


#endif