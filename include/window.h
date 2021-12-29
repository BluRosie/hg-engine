#pragma once

#include "types.h"

typedef struct
{
    void *ini;
    u8 frmnum;
    u8 posx;
    u8 posy;
    u8 sizx;
    u8 sizy;
    u8 palnum;
    u16 chrofs : 15;
    u16 bitmode : 1;
    void *chrbuf;
} GF_BGL_BMPWIN;

void __attribute__((long_call)) TalkWinGraphicSet(void *ini, u8 frmnum, u16 cgx, u8 pal, u8 win_num, u32 heap);
u8 __attribute__((long_call)) GF_BGL_BmpWinGet_Frame(GF_BGL_BMPWIN *win);
u8 __attribute__((long_call)) CONFIG_GetWindowType(const void *cfg);
void __attribute__((long_call)) FieldTalkWinClear(GF_BGL_BMPWIN *win);
void __attribute__((long_call)) BmpTalkWinWrite(GF_BGL_BMPWIN *win, u8 trans_sw, u16 win_cgx, u8 pal);
void __attribute__((long_call)) MSG_PrintInit(void);
void __attribute__((long_call))SystemFontPaletteLoad(u32 type, u32 offs, u32 heap);
void __attribute__((long_call)) FillWindowPixelBuffer(void*,u8);

void __attribute__((long_call)) PutWindows(void*);
void __attribute__((long_call)) ConvertNumToString(void *, u32 msg_id, u32 num, u8 keta, u8 type);
void __attribute__((long_call)) StringPut(void *wk, void *win, u32 col, u32 mode);