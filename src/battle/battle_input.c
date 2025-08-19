#include "../../include/types.h"
#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/pokemon.h"
#include "../../include/sprite.h"
#include "../../include/mega.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/item.h"
#include "../../include/constants/file.h"



// function declarations for this file
void Sub_PokeIconResourceLoad(struct BI_PARAM *bip);
void Sub_PokeIconResourceFree(struct BI_PARAM *bip);
void LoadMegaIcon(struct BI_PARAM *bip);
void LoadMegaButton(struct BI_PARAM *bip);
BOOL CheckMegaButton(struct BI_PARAM *bip, int tp_ret);
void EFFECT_MegaTouch(void *tcb, void *work);
void BGCallback_Waza_Extend(struct BI_PARAM *bip, int select_bg, int force_put);
u32 GrabCancelXValue(void);
void SwapOutBottomScreen(struct BI_PARAM *bip);

void __attribute__((long_call)) BGCallback_Waza(struct BI_PARAM *bip, int select_bg, int force_put);



// new battle structure with a few overlay 12 global things that can be accessed.
struct newBattleStruct __attribute__((section (".data"))) newBS = {0};

// icon sprite tags to keep track of things
#define MEGA_ICON_SPRITE_TAG 22050
#define MEGA_ICON_PAL_TAG 22051
#define MEGA_ICON_CELL_TAG 22052
#define MEGA_ICON_CELL_ANIM_TAG 22053
#define MEGA_BUTTON_SPRITE_TAG 22054
#define MEGA_BUTTON_PAL_TAG 22055
#define WEATHER_ICON_SPRITE_TAG 22056
#define WEATHER_ICON_PAL_TAG 22057
#define WEATHER_ICON_CELL_TAG 22058
#define WEATHER_ICON_CELL_ANIM_TAG 22059

// values to return when rectangle is touched
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

static const OAMSpriteTemplate MegaIconObjParam = {
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

/**
 *  @brief load resources for the icons to be displayed on the bottom screen of the fight menu in battles
 *
 *  @param bip battle input param
 */
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

    if (bip->client_no < CLIENT_MAX) // when in the fight screen, the client_no gets set to a crazy value.  do not load a different palette until the next mon is selected and client_no has returned to a sane value
    {
        if (CheckIsPrimalGroudon(bip))
        {
            OAM_LoadResourcePlttWorkArc(pfd, FADE_SUB_OBJ, csp, crp, ARC_ITEM_GFX_DATA, PRIMAL_REVERSION_OMEGA_GFX+1, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_ICON_PAL_TAG);
        }
        else if (CheckIsPrimalKyogre(bip))
        {
            OAM_LoadResourcePlttWorkArc(pfd, FADE_SUB_OBJ, csp, crp, ARC_ITEM_GFX_DATA, PRIMAL_REVERSION_ALPHA_GFX+1, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_ICON_PAL_TAG);
        }
        else if (CheckIsMega(bip))
        {
            OAM_LoadResourcePlttWorkArc(pfd, FADE_SUB_OBJ, csp, crp, ARC_ITEM_GFX_DATA, MEGA_ICON_FIGHT_GFX+1, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_ICON_PAL_TAG);
        }
    }

    OAM_LoadResourceCellArc(csp, crp, ARC_ITEM_GFX_DATA, 1, 0, MEGA_ICON_CELL_TAG);

    OAM_LoadResourceCellAnmArc(csp, crp, ARC_ITEM_GFX_DATA, 0, 0, MEGA_ICON_CELL_ANIM_TAG);


    // weather
    if (bip->bw->sp->field_condition & WEATHER_ANY_ICONS)
    {
        if (bip->bw->sp->field_condition & WEATHER_SUNNY_ANY)
        {
            nclr = BATTLE_GFX_SUN_NCLR;
        }
        else if (bip->bw->sp->field_condition & WEATHER_RAIN_ANY)
        {
            nclr = BATTLE_GFX_RAIN_NCLR;
        }
        else if (bip->bw->sp->field_condition & WEATHER_SANDSTORM_ANY)
        {
            nclr = BATTLE_GFX_SANDSTORM_NCLR;
        }
        else if (bip->bw->sp->field_condition & WEATHER_HAIL_ANY)
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

/**
 *  @brief free the loaded resources for the things displayed on the bottom screen on the fight menu
 *
 *  @param bip battle input param
 */
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
        {
            newBS.playerWantMega = No2Bit(bip->client_no_fight_screen); // determine which party pos queued up the mega for cases where the player is in control of 2 clients
        }
        else
            newBS.playerWantMega = FALSE;
        newBS.MegaIconLight = 0;
    }



    if (bip->bw->sp->field_condition & WEATHER_ANY_ICONS)
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

/**
 *  @brief load the ncgr's for the bottom screen things displayed on the fight menu
 *
 *  @param bip battle input param
 */
void LoadMegaIcon(struct BI_PARAM *bip)
{
    void *csp;
    void *crp;

    OAMSpriteTemplate template = MegaIconObjParam; // memcpy should handle this

    newBS.CanMega = CheckCanDrawMegaButton(bip);
    if (!newBS.MegaOAM && CheckIsMega(bip))
    {
        csp = BattleWorkCATS_SYS_PTRGet(bip->bw);
        crp = BattleWorkCATS_RES_PTRGet(bip->bw);

        OAM_LoadResourceCharArc(csp, crp, ARC_ITEM_GFX_DATA, MEGA_ICON_FIGHT_GFX, 0, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_ICON_SPRITE_TAG);
        if (bip->client_no != 0)
            template.x = 103;
        newBS.MegaOAM = OAM_ObjectAdd_S(csp, crp, &template);
        OAM_ObjectUpdate(newBS.MegaOAM->act);
    }
    else if (!newBS.MegaOAM && CheckIsPrimalGroudon(bip))
    {
        csp = BattleWorkCATS_SYS_PTRGet(bip->bw);
        crp = BattleWorkCATS_RES_PTRGet(bip->bw);

        OAM_LoadResourceCharArc(csp, crp, ARC_ITEM_GFX_DATA, PRIMAL_REVERSION_OMEGA_GFX, 0, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_ICON_SPRITE_TAG);
        if (bip->client_no != 0)
            template.x = 101;
        newBS.MegaOAM = OAM_ObjectAdd_S(csp, crp, &template);
        OAM_ObjectUpdate(newBS.MegaOAM->act);
    }
    else if (!newBS.MegaOAM && CheckIsPrimalKyogre(bip))
    {
        csp = BattleWorkCATS_SYS_PTRGet(bip->bw);
        crp = BattleWorkCATS_RES_PTRGet(bip->bw);

        OAM_LoadResourceCharArc(csp, crp, ARC_ITEM_GFX_DATA, PRIMAL_REVERSION_ALPHA_GFX, 0, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_ICON_SPRITE_TAG);
        if (bip->client_no != 0)
            template.x = 101;
        newBS.MegaOAM = OAM_ObjectAdd_S(csp, crp, &template);
        OAM_ObjectUpdate(newBS.MegaOAM->act);
    }

    if (bip->bw->sp->field_condition & WEATHER_ANY_ICONS)
    {
        u32 ncgr;
        csp = BattleWorkCATS_SYS_PTRGet(bip->bw);
        crp = BattleWorkCATS_RES_PTRGet(bip->bw);

        if (bip->bw->sp->field_condition & WEATHER_SUNNY_ANY)
        {
            ncgr = BATTLE_GFX_SUN_NCGR;
        }
        else if (bip->bw->sp->field_condition & WEATHER_RAIN_ANY)
        {
            ncgr = BATTLE_GFX_RAIN_NCGR;
        }
        else if (bip->bw->sp->field_condition & WEATHER_SANDSTORM_ANY)
        {
            ncgr = BATTLE_GFX_SANDSTORM_NCGR;
        }
        else if (bip->bw->sp->field_condition & WEATHER_HAIL_ANY)
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

/**
 *  @brief toggle the mega button upon getting selected or deselected
 *
 *  @param bip battle input param
 */
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

/**
 *  @brief check if the mega button was pressed and should be toggled
 *
 *  @param bip battle input param
 *  @param tp_ret button that was pressed just now
 *  @return TRUE if should change; FALSE otherwise
 */
BOOL CheckMegaButton(struct BI_PARAM *bip, int tp_ret)
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

/**
 *  @brief callback task for pressing the mega button
 *
 *  @param tcb task structure
 *  @param work task work structure
 */
void EFFECT_MegaTouch(void *tcb UNUSED, void *work)
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

/**
 *  @brief swap out the bottom screen move selection whenever it is selected
 *
 *  @param bip battle input param
 *  @param select_bg param to pass through to original function
 *  @param force_put param to pass through to original function
 */
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
        scrn_data_id = 353; // new button layout nscr in a007
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

/**
 *  @brief grab the x value that cancel should be printed at depending on if the mega button is present or not
 *
 *  @return the x value for cancel to be printed at
 */
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

/**
 *  @brief swap out the bottom screen layout nscr and button layout depending on if the mega button is present or not
 *
 *  @param bip battle input param
 */
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


// indices in a008 that determine the ncgr's for the opponent's side of the field
u16 TerrainPlatformEnemyNCGR[] =
{
    [TERRAIN_PLAIN] = 136,
    [TERRAIN_SAND] = 146,
    [TERRAIN_GRASS] = 130,
    [TERRAIN_PUDDLE] = 152,
    [TERRAIN_MOUNTAIN] = 140,
    [TERRAIN_CAVE] = 150,
    [TERRAIN_SNOW] = 142,
    [TERRAIN_WATER] = 134,
    [TERRAIN_ICE] = 138,
    [TERRAIN_BUILDING] = 144,
    [TERRAIN_GREAT_MARSH] = 148,
    [TERRAIN_UNKNOWN] = 148,
    [TERRAIN_WILL] = 154,
    [TERRAIN_KOGA] = 156,
    [TERRAIN_BRUNO] = 158,
    [TERRAIN_KAREN] = 160,
    [TERRAIN_LANCE] = 162,
    [TERRAIN_DISTORTION_WORLD] = 164,
    [TERRAIN_BATTLE_TOWER] = 166,
    [TERRAIN_BATTLE_FACTORY] = 168,
    [TERRAIN_BATTLE_ARCADE] = 170,
    [TERRAIN_BATTLE_CASTLE] = 172,
    [TERRAIN_BATTLE_HALL] = 174,
    [TERRAIN_GIRATINA] = 176,
    [TERRAIN_ELECTRIC_TERRAIN] = 176,
    [TERRAIN_MISTY_TERRAIN] = 176,
    [TERRAIN_GRASSY_TERRAIN] = 176,
    [TERRAIN_PSYCHIC_TERRAIN] = 176,
};

// indices in a008 that determine the ncgr's for the player's side of the field
u16 TerrainPlatformPlayerNCGR[] =
{
    [TERRAIN_PLAIN] = 135,
    [TERRAIN_SAND] = 145,
    [TERRAIN_GRASS] = 127,
    [TERRAIN_PUDDLE] = 151,
    [TERRAIN_MOUNTAIN] = 139,
    [TERRAIN_CAVE] = 149,
    [TERRAIN_SNOW] = 141,
    [TERRAIN_WATER] = 133,
    [TERRAIN_ICE] = 137,
    [TERRAIN_BUILDING] = 143,
    [TERRAIN_GREAT_MARSH] = 147,
    [TERRAIN_UNKNOWN] = 151,
    [TERRAIN_WILL] = 153,
    [TERRAIN_KOGA] = 155,
    [TERRAIN_BRUNO] = 157,
    [TERRAIN_KAREN] = 159,
    [TERRAIN_LANCE] = 161,
    [TERRAIN_DISTORTION_WORLD] = 163,
    [TERRAIN_BATTLE_TOWER] = 165,
    [TERRAIN_BATTLE_FACTORY] = 167,
    [TERRAIN_BATTLE_ARCADE] = 169,
    [TERRAIN_BATTLE_CASTLE] = 171,
    [TERRAIN_BATTLE_HALL] = 173,
    [TERRAIN_GIRATINA] = 175,
    [TERRAIN_ELECTRIC_TERRAIN] = 357,
    [TERRAIN_MISTY_TERRAIN] = 357,
    [TERRAIN_GRASSY_TERRAIN] = 357,
    [TERRAIN_PSYCHIC_TERRAIN] = 357,
};

// indices in a008 that determine the nclr's for both sides' platforms
u16 TerrainPlatformPalettes[][3] =
{
    [TERRAIN_PLAIN] = {7, 8, 9},
    [TERRAIN_SAND] = {22, 23, 24},
    [TERRAIN_GRASS] = {1, 2, 3},
    [TERRAIN_PUDDLE] = {31, 32, 33},
    [TERRAIN_MOUNTAIN] = {13, 14, 15},
    [TERRAIN_CAVE] = {28, 29, 30},
    [TERRAIN_SNOW] = {16, 17, 18},
    [TERRAIN_WATER] = {4, 5, 6},
    [TERRAIN_ICE] = {10, 11, 12},
    [TERRAIN_BUILDING] = {19, 20, 21},
    [TERRAIN_GREAT_MARSH] = {25, 26, 27},
    [TERRAIN_UNKNOWN] = {25, 26, 27},
    [TERRAIN_WILL] = {34, 35, 36},
    [TERRAIN_KOGA] = {37, 38, 39},
    [TERRAIN_BRUNO] = {40, 41, 42},
    [TERRAIN_KAREN] = {43, 44, 45},
    [TERRAIN_LANCE] = {46, 47, 48},
    [TERRAIN_DISTORTION_WORLD] = {49, 50, 51},
    [TERRAIN_BATTLE_TOWER] = {52, 53, 54},
    [TERRAIN_BATTLE_FACTORY] = {55, 56, 57},
    [TERRAIN_BATTLE_ARCADE] = {58, 59, 60},
    [TERRAIN_BATTLE_CASTLE] = {61, 62, 63},
    [TERRAIN_BATTLE_HALL] = {64, 65, 66},
    [TERRAIN_GIRATINA] = {67, 68, 69},
    [TERRAIN_ELECTRIC_TERRAIN] = {358, 358, 358},
    [TERRAIN_MISTY_TERRAIN] = {358, 358, 358},
    [TERRAIN_GRASSY_TERRAIN] = {358, 358, 358},
    [TERRAIN_PSYCHIC_TERRAIN] = {358, 358, 358},
};

BattleBGStorage NewBattleBgTable[] =
{
    [BATTLE_BG_ELECTRIC_TERRAIN - NUM_VANILLA_BATTLE_BACKGROUNDS] = {.baseEntry = 354, .hasDayNightPals = FALSE, .hasPlatforms = FALSE},
    [BATTLE_BG_MISTY_TERRAIN - NUM_VANILLA_BATTLE_BACKGROUNDS] = {.baseEntry = 356, .hasDayNightPals = FALSE, .hasPlatforms = FALSE},
    [BATTLE_BG_GRASSY_TERRAIN - NUM_VANILLA_BATTLE_BACKGROUNDS] = {.baseEntry = 358, .hasDayNightPals = FALSE, .hasPlatforms = FALSE},
    [BATTLE_BG_PSYCHIC_TERRAIN - NUM_VANILLA_BATTLE_BACKGROUNDS] = {.baseEntry = 360, .hasDayNightPals = FALSE, .hasPlatforms = FALSE},
};

u8 sCamouflageTypeTable[] =
{
    [TERRAIN_PLAIN] = TYPE_GROUND,
    [TERRAIN_SAND] = TYPE_GROUND,
    [TERRAIN_GRASS] = TYPE_GRASS,
    [TERRAIN_PUDDLE] = TYPE_GRASS,
    [TERRAIN_MOUNTAIN] = TYPE_ROCK,
    [TERRAIN_CAVE] = TYPE_ROCK,
    [TERRAIN_SNOW] = TYPE_ICE,
    [TERRAIN_WATER] = TYPE_WATER,
    [TERRAIN_ICE] = TYPE_ICE,
    [TERRAIN_BUILDING] = TYPE_NORMAL,
    [TERRAIN_GREAT_MARSH] = TYPE_GROUND,
    [TERRAIN_UNKNOWN] = TYPE_FLYING,
    [TERRAIN_WILL] = TYPE_NORMAL,
    [TERRAIN_KOGA] = TYPE_NORMAL,
    [TERRAIN_BRUNO] = TYPE_NORMAL,
    [TERRAIN_KAREN] = TYPE_NORMAL,
    [TERRAIN_LANCE] = TYPE_NORMAL,
    [TERRAIN_DISTORTION_WORLD] = TYPE_NORMAL,
    [TERRAIN_BATTLE_TOWER] = TYPE_NORMAL,
    [TERRAIN_BATTLE_FACTORY] = TYPE_NORMAL,
    [TERRAIN_BATTLE_ARCADE] = TYPE_NORMAL,
    [TERRAIN_BATTLE_CASTLE] = TYPE_NORMAL,
    [TERRAIN_BATTLE_HALL] = TYPE_NORMAL,
    [TERRAIN_GIRATINA] = TYPE_NORMAL,
    [TERRAIN_ELECTRIC_TERRAIN] = TYPE_ELECTRIC,
    [TERRAIN_MISTY_TERRAIN] = TYPE_FAIRY,
    [TERRAIN_GRASSY_TERRAIN] = TYPE_GRASS,
    [TERRAIN_PSYCHIC_TERRAIN] = TYPE_PSYCHIC,
};

u32 sSecretPowerEffectTable[] =
{
    [TERRAIN_PLAIN] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_BOOST_STATS_ACCURACY_DOWN,
    [TERRAIN_SAND] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_BOOST_STATS_ACCURACY_DOWN,
    [TERRAIN_GRASS] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_SLEEP,
    [TERRAIN_PUDDLE] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_SLEEP,
    [TERRAIN_MOUNTAIN] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_TRY_FLINCH,
    [TERRAIN_CAVE] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_TRY_FLINCH,
    [TERRAIN_SNOW] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_FREEZE,
    [TERRAIN_WATER] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_BOOST_STATS_ATTACK_DOWN,
    [TERRAIN_ICE] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_FREEZE,
    [TERRAIN_BUILDING] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_PARALYSIS,
    [TERRAIN_GREAT_MARSH] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_BOOST_STATS_SPEED_DOWN,
    [TERRAIN_UNKNOWN] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_BOOST_STATS_EVASION_DOWN,
    [TERRAIN_WILL] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_PARALYSIS,
    [TERRAIN_KOGA] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_PARALYSIS,
    [TERRAIN_BRUNO] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_PARALYSIS,
    [TERRAIN_KAREN] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_PARALYSIS,
    [TERRAIN_LANCE] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_PARALYSIS,
    [TERRAIN_DISTORTION_WORLD] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_PARALYSIS,
    [TERRAIN_BATTLE_TOWER] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_PARALYSIS,
    [TERRAIN_BATTLE_FACTORY] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_PARALYSIS,
    [TERRAIN_BATTLE_ARCADE] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_PARALYSIS,
    [TERRAIN_BATTLE_CASTLE] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_PARALYSIS,
    [TERRAIN_BATTLE_HALL] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_PARALYSIS,
    [TERRAIN_GIRATINA] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_PARALYSIS,
    [TERRAIN_ELECTRIC_TERRAIN] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_PARALYSIS,
    [TERRAIN_MISTY_TERRAIN] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_BOOST_STATS_SP_ATK_DOWN,
    [TERRAIN_GRASSY_TERRAIN] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_APPLY_SLEEP,
    [TERRAIN_PSYCHIC_TERRAIN] = MOVE_SIDE_EFFECT_TO_DEFENDER | ADD_STATUS_EFF_BOOST_STATS_SPEED_DOWN,
};


/**
 *  @brief load in different battle bg and terrain
 *
 *  @param bw battle work structure
 *  @param bg background id to load
 *  @param terrain platform id to load
 */
void LoadDifferentBattleBackground(struct BattleSystem *bw, u32 bg, u32 terrain)
{
    u32 palette;
    BOOL vanillaBg = TRUE;
    if (bg < NUM_VANILLA_BATTLE_BACKGROUNDS)
    {
        // vanilla handling for ncgr/nclr pal grabbing
        palette = 176 + 3*bg + GrabTimeOfDayFileAdjustment(bw);
        bg = 3 + bg;
    }
    else
    {
        bg = NewBattleBgTable[bg - NUM_VANILLA_BATTLE_BACKGROUNDS].baseEntry;
        palette = bg + 1 + (NewBattleBgTable[bg - NUM_VANILLA_BATTLE_BACKGROUNDS].hasDayNightPals == TRUE ? GrabTimeOfDayFileAdjustment(bw) : 0);
        vanillaBg = FALSE;
    }
    // swap out battle bg
    GfGfxLoader_LoadCharData(7, bg, bw->bgConfig, 3, 0, 0, 1, 5);
    PaletteData_LoadNarc(bw->palette, 7, palette, 5, 0, 0, 0);

    // reload in pals for message box
    PaletteData_LoadNarc(bw->palette, 38, 26, 5, 0, 0x20, 0xA0);
    PaletteData_LoadNarc(bw->palette, 16, 8, 5, 0, 0x20, 0x80);
    PaletteData_LoadNarc(bw->palette, 16, 8, 5, 0, 0x20, 0xB0);

    // swap out battle platform, palette just a work variable here
    if (!(vanillaBg ? TRUE : NewBattleBgTable[bg - NUM_VANILLA_BATTLE_BACKGROUNDS].hasPlatforms)) // need to do it this way because otherwise invalid element is accessed in NewBattleBgTable
    {
        palette = TERRAIN_ELECTRIC_TERRAIN; // electric terrain does not use battle platforms, so we get rid of it here
    }
    else
    {
        palette = terrain;
    }
    Ground_ActorResourceSet(&bw->ground[0], bw, 0, palette); // new terrains are just repointed below
    Ground_ActorResourceSet(&bw->ground[1], bw, 1, palette);

    // free resources
    sys_FreeMemoryEz(bw->bg_area);
    sys_FreeMemoryEz(bw->pal_area);
    BattleWorkGroundBGChg(bw);

    // finally set the fields for nature power/secret power/camouflage/friends
    //bw->bgId = bg;
    bw->terrain = terrain; // terrain is used directly for secret power, camouflage
}
