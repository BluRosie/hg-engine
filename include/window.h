#ifndef WINDOW_H
#define WINDOW_H

#include "message.h"
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

typedef struct WindowTemplate {
    u8 bgId;
    u8 left;
    u8 top;
    u8 width;
    u8 height;
    u8 palette;
    u16 baseTile;
} WindowTemplate;

struct Window
{
    void* /* BgConfig **/ bgConfig;
    u8 bgId;
    u8 tilemapLeft;
    u8 tilemapTop;
    u8 width;
    u8 height;
    u8 paletteNum;
    u16 baseTile  : 15;
    u16 colorMode : 1;
    void *pixelBuffer;
}; //size 0x10

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
void LONG_CALL LoadRectToBgTilemapRect(void *bgConfig, u8 bgId, const void *buffer, u8 destX, u8 destY, u8 width, u8 height);
void LONG_CALL FillBgTilemapRect(void *bgConfig, u8 bgId, u16 fillValue, u8 x, u8 y, u8 width, u8 height, u8 mode);
u32 LONG_CALL FontID_String_GetCenterAlignmentX(u8 fontId, String *string, u32 letterSpacing, u32 windowWidth);
u8 LONG_CALL GetWindowWidth(struct Window *window);
void LONG_CALL ScheduleWindowCopyToVram(struct Window *window);

#endif
