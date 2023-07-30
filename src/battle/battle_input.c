#include "../../include/types.h"
#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/pokemon.h"
#include "../../include/sprite.h"
#include "../../include/mega.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/item.h"
#include "../../include/constants/file.h"

struct newBattleStruct newBS = {0};

#define NNS_G2D_VRAM_TYPE_2DMAIN 1
#define NNS_G2D_VRAM_TYPE_2DSUB 2
#define FADE_MAIN_OBJ 2
#define FADE_SUB_OBJ 3
#define CLACT_U_HEADER_DATA_NONE (0xffffffff)
#define RECT_HIT_END 0xFF

#define MEGA_ICON_SPRITE_TAG 20050
#define MEGA_ICON_PAL_TAG 20051
#define MEGA_ICON_CELL_TAG 20052
#define MEGA_ICON_CELL_ANIM_TAG 20053

#define MEGA_BUTTON_SPRITE_TAG 20054
#define MEGA_BUTTON_PAL_TAG 20055

#define WEATHER_ICON_SPRITE_TAG 20056
#define WEATHER_ICON_PAL_TAG 20057
#define WEATHER_ICON_CELL_TAG 20058
#define WEATHER_ICON_CELL_ANIM_TAG 20059

#define MEGA_ICON_FIGHT_GFX (797)
#define PRIMAL_REVERSION_OMEGA_GFX (799)
#define PRIMAL_REVERSION_ALPHA_GFX (801)
#define MEGA_ICON_SELECTED_GFX (803)
#define MEGA_ICON_BLANK_GFX (805)


#define TOUCH_DATA_CANCEL 0
#define TOUCH_DATA_MOVE_1 1
#define TOUCH_DATA_MOVE_2 2
#define TOUCH_DATA_MOVE_3 3
#define TOUCH_DATA_MOVE_4 4
#define TOUCH_DATA_MEGA   5
#define TOUCH_DATA_TOTAL  6


// should just need to swap between touch data mega and non-mega when accessing things?  perhaps?
// also need to swap out the nscr -> BINPUT_SystemInit -> ScrnArcDataNo, should be able to swap out the result using asm?
// swap out this touch data at the same time, no way that it loads touch data before rendering the screen.
const ButtonTBL SkillMenuTouchData[] =
{
    //UP DOWN LEFT RIGHT
    [TOUCH_DATA_CANCEL] = {0x13 * 8, 0x18 * 8, 1 * 8, 0x16 * 8},
    [TOUCH_DATA_MOVE_1] = {3 * 8, 0xA * 8, 0 * 8, 0x10 * 8},
    [TOUCH_DATA_MOVE_2] = {3 * 8, 0xA * 8, 0x10 * 8, 255},
    [TOUCH_DATA_MOVE_3] = {0xB * 8, 0x12 * 8, 0 * 8, 0x10 * 8},
    [TOUCH_DATA_MOVE_4] = {0xB * 8, 0x12 * 8, 0x10 * 8, 255},
    [TOUCH_DATA_MEGA  ] = {0x13 * 8, 0x18 * 8, 0x16 * 8, 0x1F * 8},
    [TOUCH_DATA_TOTAL ] = {RECT_HIT_END, 0, 0, 0},
};

const ButtonTBL SkillMenuTouchDataNoMega[] =
{
    //UP DOWN LEFT RIGHT
    [TOUCH_DATA_CANCEL] = {0x13 * 8, 0x18 * 8, 1 * 8, 0x1F * 8},
    [TOUCH_DATA_MOVE_1] = {3 * 8, 0xA * 8, 0 * 8, 0x10 * 8},
    [TOUCH_DATA_MOVE_2] = {3 * 8, 0xA * 8, 0x10 * 8, 255},
    [TOUCH_DATA_MOVE_3] = {0xB * 8, 0x12 * 8, 0 * 8, 0x10 * 8},
    [TOUCH_DATA_MOVE_4] = {0xB * 8, 0x12 * 8, 0x10 * 8, 255},
    [TOUCH_DATA_MEGA  ] = {RECT_HIT_END, 0, 0, 0},
};

const int SkillMenuTouchRet[NELEMS(SkillMenuTouchData) - 1] = {
    [TOUCH_DATA_CANCEL] = 0xFF,
    [TOUCH_DATA_MOVE_1] = 1,
    [TOUCH_DATA_MOVE_2] = 2,
    [TOUCH_DATA_MOVE_3] = 3,
    [TOUCH_DATA_MOVE_4] = 4,
    [TOUCH_DATA_MEGA  ] = 5,
};

ALIGN4 const u8 SkillMenuPaletteNo[NELEMS(SkillMenuTouchData) - 1] = {
    [TOUCH_DATA_CANCEL] = 4,
    [TOUCH_DATA_MOVE_1] = 8,
    [TOUCH_DATA_MOVE_2] = 9,
    [TOUCH_DATA_MOVE_3] = 10,
    [TOUCH_DATA_MOVE_4] = 11,
    [TOUCH_DATA_MEGA  ] = 4,
};

const u8 DPadSelectTouchDataIndex[] = { // dpad touch data index
    1, 2,
    3, 4,
    0, 5,
};

static const OAMSpriteTemplate PokeIconObjParam = {
    155,
    161,
    0, //x, y, z
    0,
    100,
    0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    {
        MEGA_ICON_SPRITE_TAG,
        MEGA_ICON_PAL_TAG,
        MEGA_ICON_CELL_TAG,
        MEGA_ICON_CELL_ANIM_TAG,
        CLACT_U_HEADER_DATA_NONE,
        CLACT_U_HEADER_DATA_NONE,
    },
    1,
    0,
};

static const OAMSpriteTemplate MegaButtonTemplate = {
    213,
    253,
    0, //x, y, z
    0,
    100,
    0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    {
        MEGA_BUTTON_SPRITE_TAG,
        MEGA_BUTTON_PAL_TAG,
        MEGA_ICON_CELL_TAG,
        MEGA_ICON_CELL_ANIM_TAG,
        CLACT_U_HEADER_DATA_NONE,
        CLACT_U_HEADER_DATA_NONE,
    },
    1,
    0,
};

static const OAMSpriteTemplate WeatherIconObjParam = {
    197,
    198,
    0, //x, y, z
    2,
    100,
    0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    {
        WEATHER_ICON_SPRITE_TAG,
        WEATHER_ICON_PAL_TAG,
        WEATHER_ICON_CELL_TAG,
        WEATHER_ICON_CELL_ANIM_TAG,
        CLACT_U_HEADER_DATA_NONE,
        CLACT_U_HEADER_DATA_NONE,
    },
    1,
    0,
};

static void EFFECT_MegaTouch(void *tcb, void *work);

// reads the sprite icon
void Sub_PokeIconResourceLoad(struct BI_PARAM *bip)
{
    u32 nclr;
    void *csp;
    void *crp;
    void *pfd;

    csp = BattleWorkCATS_SYS_PTRGet(bip->bw);
    crp = BattleWorkCATS_RES_PTRGet(bip->bw);
    pfd = BattleWorkPfdGet(bip->bw);

    OAM_LoadResourcePlttWorkArc(pfd, FADE_SUB_OBJ, csp, crp, ARC_POKEICON, PokeIconPalArcIndexGet(), 0, 3, NNS_G2D_VRAM_TYPE_2DSUB, 20022);

    OAM_LoadResourceCellArc(csp, crp, ARC_POKEICON, PokeIconAnmCellArcIndexGet(), 0, 20021);

    OAM_LoadResourceCellAnmArc(csp, crp, ARC_POKEICON, PokeIconAnmCellAnmArcIndexGet(), 0, 20021);

    if (CheckIsPrimalGroudon(bip))
    {
        OAM_LoadResourcePlttWorkArc(pfd, FADE_SUB_OBJ, csp, crp, ARC_ITEM_GFX_DATA, PRIMAL_REVERSION_OMEGA_GFX+1, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_ICON_PAL_TAG);
    }
    else if (CheckIsPrimalKyogre(bip))
    {
        OAM_LoadResourcePlttWorkArc(pfd, FADE_SUB_OBJ, csp, crp, ARC_ITEM_GFX_DATA, PRIMAL_REVERSION_ALPHA_GFX+1, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_ICON_PAL_TAG);
    }
    else
    {
        OAM_LoadResourcePlttWorkArc(pfd, FADE_SUB_OBJ, csp, crp, ARC_ITEM_GFX_DATA, MEGA_ICON_FIGHT_GFX+1, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_ICON_PAL_TAG);
    }

    OAM_LoadResourceCellArc(csp, crp, ARC_ITEM_GFX_DATA, 1, 0, MEGA_ICON_CELL_TAG);

    OAM_LoadResourceCellAnmArc(csp, crp, ARC_ITEM_GFX_DATA, 0, 0, MEGA_ICON_CELL_ANIM_TAG);


    // weather
    if (newBS.weather & WEATHER_ANY_ICONS)
    {
        if (newBS.weather & WEATHER_SUNNY_ANY)
        {
            nclr = BATTLE_GFX_SUN_NCLR;
        }
        else if (newBS.weather & WEATHER_RAIN_ANY)
        {
            nclr = BATTLE_GFX_RAIN_NCLR;
        }
        else if (newBS.weather & WEATHER_SANDSTORM_ANY)
        {
            nclr = BATTLE_GFX_SANDSTORM_NCLR;
        }
        else if (newBS.weather & WEATHER_HAIL_ANY)
        {
            nclr = BATTLE_GFX_HAIL_NCLR;
        }
        else // fog
        {
            nclr = BATTLE_GFX_FOG_NCLR;
        }
        OAM_LoadResourcePlttWorkArc(pfd, FADE_SUB_OBJ, csp, crp, ARC_BATTLE_GFX, nclr, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, WEATHER_ICON_PAL_TAG);

        OAM_LoadResourceCellArc(csp, crp, ARC_BATTLE_GFX, BATTLE_GFX_NCER, 0, WEATHER_ICON_CELL_TAG); //NCER

        OAM_LoadResourceCellAnmArc(csp, crp, ARC_POKEICON, 3, 0, WEATHER_ICON_CELL_ANIM_TAG); //NANR
    }
}

void Sub_PokeIconResourceFree(struct BI_PARAM *bip)
{
    void *crp;
    crp = BattleWorkCATS_RES_PTRGet(bip->bw);

    OAM_FreeResourceChar(crp, 20036);
    OAM_FreeResourceChar(crp, 20037);
    OAM_FreeResourceChar(crp, 20038);
    OAM_FreeResourceCell(crp, 20021);
    OAM_FreeResourceCellAnm(crp, 20021);
    OAM_FreeResourcePltt(crp, 20022);

    if (newBS.MegaOAM)
    {
        OAM_FreeResourceChar(crp, MEGA_ICON_SPRITE_TAG);
        OAM_FreeResourceCell(crp, MEGA_ICON_CELL_TAG);
        OAM_FreeResourceCellAnm(crp, MEGA_ICON_CELL_ANIM_TAG);
        OAM_FreeResourcePltt(crp, MEGA_ICON_PAL_TAG);

        CATS_ActorPointerDelete_S(newBS.MegaOAM);
        newBS.MegaOAM = NULL;
    }
    if (newBS.MegaButton)
    {
        OAM_FreeResourceChar(crp, MEGA_BUTTON_SPRITE_TAG);
        OAM_FreeResourceCell(crp, MEGA_ICON_CELL_TAG);
        OAM_FreeResourceCellAnm(crp, MEGA_ICON_CELL_ANIM_TAG);
        OAM_FreeResourcePltt(crp, MEGA_BUTTON_PAL_TAG);

        CATS_ActorPointerDelete_S(newBS.MegaButton);
        newBS.MegaButton = NULL;
        if (newBS.MegaIconLight)
            newBS.playerWantMega = 1;
        else
            newBS.playerWantMega = 0;
        newBS.MegaIconLight = 0;
    }


    if (newBS.weather & WEATHER_ANY_ICONS)
    {
        if (newBS.WeatherOAM)
        {
            OAM_FreeResourceChar(crp, WEATHER_ICON_SPRITE_TAG);
            OAM_FreeResourceCell(crp, WEATHER_ICON_CELL_TAG);
            OAM_FreeResourceCellAnm(crp, WEATHER_ICON_CELL_ANIM_TAG);
            OAM_FreeResourcePltt(crp, WEATHER_ICON_PAL_TAG);

            CATS_ActorPointerDelete_S(newBS.WeatherOAM);
            newBS.WeatherOAM = NULL;
            DestroySysTask(newBS.weatherUpdateTask);
            newBS.weatherUpdateTask = NULL;
        }
    }
}

void LoadMegaIcon(struct BI_PARAM *bip)
{
    void *csp;
    void *crp;

    newBS.CanMega = CheckCanDrawMegaButton(bip);
    if (!newBS.MegaOAM && CheckIsMega(bip))
    {
        csp = BattleWorkCATS_SYS_PTRGet(bip->bw);
        crp = BattleWorkCATS_RES_PTRGet(bip->bw);

        OAM_LoadResourceCharArc(csp, crp, ARC_ITEM_GFX_DATA, MEGA_ICON_FIGHT_GFX, 0, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_ICON_SPRITE_TAG);
        newBS.MegaOAM = OAM_ObjectAdd_S(csp, crp, &PokeIconObjParam);
        OAM_ObjectUpdate(newBS.MegaOAM->act);
    }
    else if (!newBS.MegaOAM && CheckIsPrimalGroudon(bip))
    {
        csp = BattleWorkCATS_SYS_PTRGet(bip->bw);
        crp = BattleWorkCATS_RES_PTRGet(bip->bw);

        OAM_LoadResourceCharArc(csp, crp, ARC_ITEM_GFX_DATA, PRIMAL_REVERSION_OMEGA_GFX, 0, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_ICON_SPRITE_TAG);
        newBS.MegaOAM = OAM_ObjectAdd_S(csp, crp, &PokeIconObjParam);
        OAM_ObjectUpdate(newBS.MegaOAM->act);
    }
    else if (!newBS.MegaOAM && CheckIsPrimalKyogre(bip))
    {
        csp = BattleWorkCATS_SYS_PTRGet(bip->bw);
        crp = BattleWorkCATS_RES_PTRGet(bip->bw);

        OAM_LoadResourceCharArc(csp, crp, ARC_ITEM_GFX_DATA, PRIMAL_REVERSION_ALPHA_GFX, 0, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_ICON_SPRITE_TAG);
        newBS.MegaOAM = OAM_ObjectAdd_S(csp, crp, &PokeIconObjParam);
        OAM_ObjectUpdate(newBS.MegaOAM->act);
    }

    if (newBS.weather & WEATHER_ANY_ICONS)
    {
        u32 ncgr;
        csp = BattleWorkCATS_SYS_PTRGet(bip->bw);
        crp = BattleWorkCATS_RES_PTRGet(bip->bw);

        if (newBS.weather & WEATHER_SUNNY_ANY)
        {
            ncgr = BATTLE_GFX_SUN_NCGR;
        }
        else if (newBS.weather & WEATHER_RAIN_ANY)
        {
            ncgr = BATTLE_GFX_RAIN_NCGR;
        }
        else if (newBS.weather & WEATHER_SANDSTORM_ANY)
        {
            ncgr = BATTLE_GFX_SANDSTORM_NCGR;
        }
        else if (newBS.weather & WEATHER_HAIL_ANY)
        {
            ncgr = BATTLE_GFX_HAIL_NCGR;
        }
        else // fog
        {
            ncgr = BATTLE_GFX_FOG_NCGR;
        }

        OAM_LoadResourceCharArc(csp, crp, ARC_BATTLE_GFX, ncgr, 0, NNS_G2D_VRAM_TYPE_2DSUB, WEATHER_ICON_SPRITE_TAG);
        newBS.WeatherOAM = OAM_ObjectAdd_S(csp, crp, &WeatherIconObjParam);
        OAM_ObjectAnimeSeqSetCap(newBS.WeatherOAM, 4); // set it to pokemon anim id 4, should be slowest
        OAM_ObjectUpdate(newBS.WeatherOAM->act);
        newBS.weatherUpdateTask = CreateSysTask((SysTaskFunc)0x022684ED, newBS.WeatherOAM, 1300); // 0x022684ED is the pokemon icon animation function
    }
}

void LoadMegaButton(struct BI_PARAM *bip)
{
    void *csp;
    void *crp;
    void *pfd = BattleWorkPfdGet(bip->bw);
    int iconindex = MEGA_ICON_BLANK_GFX; // indices of new sprites added to item narc
    int palindex = MEGA_ICON_BLANK_GFX+1;

    if (newBS.PlayerMegaed)
        return;
    if (!newBS.MegaButton && newBS.CanMega)
    {
        csp = BattleWorkCATS_SYS_PTRGet(bip->bw);
        crp = BattleWorkCATS_RES_PTRGet(bip->bw);
        if (newBS.MegaIconLight)
        {
            iconindex = MEGA_ICON_SELECTED_GFX;
            palindex = MEGA_ICON_SELECTED_GFX+1;
        }
        OAM_LoadResourcePlttWorkArc(pfd, FADE_SUB_OBJ, csp, crp, ARC_ITEM_GFX_DATA, palindex, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_BUTTON_PAL_TAG);
        OAM_LoadResourceCharArc(csp, crp, ARC_ITEM_GFX_DATA, iconindex, 0, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_BUTTON_SPRITE_TAG);

        OAM_LoadResourceCellArc(csp, crp, ARC_ITEM_GFX_DATA, 1, 0, MEGA_ICON_CELL_TAG);
        OAM_LoadResourceCellAnmArc(csp, crp, ARC_ITEM_GFX_DATA, 0, 0, MEGA_ICON_CELL_ANIM_TAG);
        newBS.MegaButton = OAM_ObjectAdd_S(csp, crp, &MegaButtonTemplate);
        OAM_ObjectUpdate(newBS.MegaButton->act);
    }
}

#define RECT_HIT_NONE (0xffffffff)
#define SCREEN_CANCEL_0 (0x1d)
#define SCREEN_CANCEL_1 (0xdd)
#define SCREEN_CANCEL_2 (0x19d)

ALIGN4 static const s16 MoveSelectScreenOffsets[][3] = {
    {
        //SELECT_CANCEL
        SCREEN_CANCEL_0 - SCREEN_CANCEL_0,
        SCREEN_CANCEL_1 - SCREEN_CANCEL_0,
        SCREEN_CANCEL_2 - SCREEN_CANCEL_0,
    },
};

ALIGN4 static const ButtonTBL MoveSelectButtonScreenRectangle[] = {
    {0x12, 0x17, 0x16, 0x1e},
};

ALIGN4 static const ButtonTBL MoveSelectMegaButtonScreenRectangle[] = {
    {0x12, 0x17, 0x1, 0x1e},
};

u8 CheckMegaButton(struct BI_PARAM *bip, int tp_ret)
{
    void *csp;
    void *crp;
    void *pfd;
    int iconindex = MEGA_ICON_SELECTED_GFX;
    int palindex = MEGA_ICON_SELECTED_GFX+1;

    if (tp_ret != 5)
        return 0;
    if (newBS.ChangeBgFlag)
        return 0;
    if (!newBS.CanMega)
        return 0;
    if (newBS.PlayerMegaed)
        return 0;
    csp = BattleWorkCATS_SYS_PTRGet(bip->bw);
    crp = BattleWorkCATS_RES_PTRGet(bip->bw);
    pfd = BattleWorkPfdGet(bip->bw);
    OAM_FreeResourcePltt(crp, MEGA_BUTTON_PAL_TAG);
    OAM_FreeResourceChar(crp, MEGA_BUTTON_SPRITE_TAG);

    if (newBS.MegaIconLight)
    {
        iconindex = MEGA_ICON_BLANK_GFX;
        palindex = MEGA_ICON_BLANK_GFX+1;
        newBS.MegaIconLight = 0;
    }
    else
        newBS.MegaIconLight = 1;
    OAM_LoadResourceCharArc(csp, crp, ARC_ITEM_GFX_DATA, iconindex, 0, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_BUTTON_SPRITE_TAG);
    OAM_LoadResourcePlttWorkArc(pfd, FADE_SUB_OBJ, csp, crp, ARC_ITEM_GFX_DATA, palindex, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_BUTTON_PAL_TAG);
    OAM_ObjectUpdate(newBS.MegaButton->act);
    Snd_SePlay(1501);
    EffectTCB_Add(EFFECT_MegaTouch, bip); //315c4
    bip->scrn_offset = MoveSelectScreenOffsets[0];
    bip->scrn_range = &MoveSelectButtonScreenRectangle[0];
    bip->scrnbuf_no = 3;
    bip->tp_ret = RECT_HIT_NONE;
    bip->obj_del = FALSE;
    newBS.ChangeBgFlag = 1;
    return 1;
}

static void EFFECT_MegaTouch(void *tcb, void *work)
{
    struct BI_PARAM *bip = work;

    switch (bip->seq)
    { //69c
    case 0:
        Sub_ScrnOffsetRewrite(bip, bip->scrn_offset, bip->scrn_range, bip->scrnbuf_no, 2); //31624
        bip->seq++;
        break;
    case 1:
        bip->wait++;
        if (bip->wait <= 0)
        {
            break;
        }
        bip->wait = 0;
        bip->seq++;
        break;
    case 2:
        Sub_ScrnOffsetRewrite(bip, bip->scrn_offset, bip->scrn_range, bip->scrnbuf_no, 1); //31624
        bip->seq++;
        break;
    case 3:
        bip->wait++;
        if (bip->wait <= 1)
        {
            break;
        }
        bip->wait = 0;
        bip->seq++;
        break;
    case 4:
        Sub_ScrnOffsetRewrite(bip, bip->scrn_offset, bip->scrn_range, bip->scrnbuf_no, 0);
        bip->seq++;
        break;
    default:
        bip->wait++;
        if (bip->wait > 1)
        {
            EffectTCB_Delete(bip);
            newBS.ChangeBgFlag = 0;
            return;
        }
        break;
    }
}


void __attribute__((long_call)) BGCallback_Waza(struct BI_PARAM *bip, int select_bg, int force_put);


// should just need to repoint the original to this new one
// hopefully this just works, i don't see why it wouldn't.  rewrites the bg every time, but that's okay and probably what needs to be done.
void BGCallback_Waza_Extend(struct BI_PARAM *bip, int select_bg, int force_put)
{
    NNSG2dScreenData *scrnData;
    void *bgl;
    void *arc_data;
    u32 scrn_data_id;

    sys_FreeMemoryEz(bip->scrn_buf[3]);

    bip->scrn_buf[3] = sys_AllocMemory(5, 0x800);

    // me when i commit crimes that transfer to low-level really nicely
    if (newBS.CanMega && !newBS.PlayerMegaed)
    {
        scrn_data_id = 353; // new button layout nscr
        *(u16 *)(0x0226E29E) = 353;
        // swap out touch data ptr
        *(u32 *)(0x0226E930) = (u32)&SkillMenuTouchData; // something like this
        *(u32 *)(0x02269F4C) = (u32)&DPadSelectTouchDataIndex; // new map x/y grid array for dpad movement callback
    }
    else
    {
        scrn_data_id = 37; // old button layout nscr
        *(u16 *)(0x0226E29E) = 37;
        // swap out touch data ptr
        *(u32 *)(0x0226E930) = (u32)&SkillMenuTouchDataNoMega;
        *(u32 *)(0x02269F4C) = 0x0226E218; // original map x/y grid array for dpad movement callback
    }

    // swap out tilemap
    arc_data = ArcUtil_ScrnDataGet(7, scrn_data_id, 1, &scrnData, 5); // a007 file scrn_data_id (and it is compressed) slapped on heap 5.  need return ptr so we can free it too
    /*MI_CpuCopy32*/memcpy(bip->scrn_buf[3], scrnData->rawData, 0x800);
    sys_FreeMemoryEz(arc_data);
    bgl = BattleWorkGF_BGL_INIGet(bip->bw);
    BG_LoadScreenTilemapData(bgl, GF_BGL_FRAME3_S, bip->scrn_buf[3], 0x800); // GF_BGL_ScreenBufSet
    ScheduleBgTilemapBufferTransfer(bgl, GF_BGL_FRAME3_S); // GF_BGL_LoadScreenV_Req

    // refresh the parts of the screen that are affected
    bip->scrn_offset = MoveSelectScreenOffsets[0];
    bip->scrn_range = &MoveSelectMegaButtonScreenRectangle[0];
    bip->scrnbuf_no = 3;
    bip->tp_ret = RECT_HIT_NONE;
    bip->obj_del = FALSE;
    Sub_ScrnOffsetRewrite(bip, bip->scrn_offset, bip->scrn_range, bip->scrnbuf_no, 0);

    BGCallback_Waza(bip, select_bg, force_put);
}


u32 GrabCancelXValue(void)
{
    if (newBS.CanMega && !newBS.PlayerMegaed)
    {
        return 92;
    }
    else
    {
        return 128;
    }
}


void SwapOutBottomScreen(struct BI_PARAM *bip)
{
    if (CheckCanDrawMegaButton(bip) && !newBS.PlayerMegaed)
    {
        *(u16 *)(0x0226E29E) = 353; // new button layout nscr
        // swap out touch data ptr
        *(u32 *)(0x0226E930) = (u32)&SkillMenuTouchData; // something like this
        *(u32 *)(0x02269F4C) = (u32)&DPadSelectTouchDataIndex; // new map x/y grid array for dpad movement callback
    }
    else
    {
        *(u16 *)(0x0226E29E) = 37; // old button layout nscr
        // swap out touch data ptr
        *(u32 *)(0x0226E930) = (u32)&SkillMenuTouchDataNoMega;
        *(u32 *)(0x02269F4C) = 0x0226E218; // original map x/y grid array for dpad movement callback
    }
}
