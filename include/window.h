#ifndef WINDOW_H
#define WINDOW_H

#include "types.h"

typedef struct
{
    /* 0x00 */ void *ini;
    /* 0x04 */ u8 frmnum;
    /* 0x05 */ u8 posx;
    /* 0x06 */ u8 posy;
    /* 0x07 */ u8 sizx;
    /* 0x08 */ u8 sizy;
    /* 0x09 */ u8 palnum;
    /* 0x0A */ u16 chrofs : 15;
               u16 bitmode : 1;
    /* 0x0C */ void *chrbuf;
} GF_BGL_BMPWIN; // size = 0x10

void LONG_CALL TalkWinGraphicSet(void *ini, u8 frmnum, u16 cgx, u8 pal, u8 win_num, u32 heap);
u8 LONG_CALL GF_BGL_BmpWinGet_Frame(GF_BGL_BMPWIN *win);
u8 LONG_CALL CONFIG_GetWindowType(const void *cfg);
void LONG_CALL FieldTalkWinClear(GF_BGL_BMPWIN *win);
void LONG_CALL BmpTalkWinWrite(GF_BGL_BMPWIN *win, u8 trans_sw, u16 win_cgx, u8 pal);
void LONG_CALL MSG_PrintInit(void);
void LONG_CALL SystemFontPaletteLoad(u32 type, u32 offs, u32 heap);
void LONG_CALL FillWindowPixelBuffer(void*,u8);

void LONG_CALL CopyWindowToVram(void*);
void LONG_CALL ConvertNumToString(void *, u32 msg_id, u32 num, u8 keta, u8 type);
void LONG_CALL StringPut(void *wk, void *win, u32 col, u32 mode);

#endif
