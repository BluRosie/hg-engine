#include "../include/window.h"
#include "../include/config.h"

#ifdef IMPLEMENT_TRANSPARENT_TEXTBOXES

void Tr_TextBox(GF_BGL_BMPWIN *win)
{
    u8 type = 0;

    *(u16*)0x04000050 = 0x1b4f;
    *(u16*)0x04000052 = 0x0510;

    TalkWinGraphicSet(win->ini, GF_BGL_BmpWinGet_Frame(win),944, 10, 1, 4);

    if(GF_BGL_BmpWinGet_Frame(win) > 4)
        type = 4;
    ArcUtil_PalSet(38,51,type,10 * 0x20,0x20,4);

    FieldTalkWinClear(win);

    BmpTalkWinWrite(win, 0, 944, 10);
}

void FieldMsgPrintInit(u32 type, u32 init)
{
    if (init == 1)
    {
        MSG_PrintInit();
    }
    SystemFontPaletteLoad(type, 0x1a0, 4);

    ArcUtil_PalSet(16, 10, type, 0x180, 0x20, 4);
}

#endif
