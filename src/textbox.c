#include "../include/types.h"
#include "../include/config.h"
#include "../include/window.h"

#ifdef IMPLEMENT_TRANSPARENT_TEXTBOXES

void Tr_TextBox(GF_BGL_BMPWIN *win)
{
    u8 type = 0;                                                              // force type 0 window from options
    reg_G2_BLDCNT = 0x1b4f;                                                   // 0001 1011 0100 1111 -> in order from lsb to msb -> bg0-3, alpha blending, BG0/1/3 + OBJ
    reg_G2_BLDALPHA = 0x0510;                                                 // alpha blend 1st with 8, second with 5
    TalkWinGraphicSet(win->ini, GF_BGL_BmpWinGet_Frame(win), 944, 10, 1, 4);

    if (GF_BGL_BmpWinGet_Frame(win) > 4)
        type = 4;

    ArcUtil_PalSet(38, 51, type, 10 * 0x20, 0x20, 4);                         // load palette in
    FieldTalkWinClear(win);                                                   // clear textbox before printing
    BmpTalkWinWrite(win, 0, 944, 10);                                         // actually update screen
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
