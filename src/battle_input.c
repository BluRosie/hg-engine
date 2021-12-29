#include "../include/types.h"
#include "../include/battle.h"
#include "../include/config.h"
#include "../include/pokemon.h"
#include "../include/sprite.h"
#include "../include/mega.h"
#include "../include/constants/ability.h"
#include "../include/constants/item.h"
#include "../include/constants/file.h"

struct newBattleStruct newBS = {0};

#define NNS_G2D_VRAM_TYPE_2DMAIN 1
#define NNS_G2D_VRAM_TYPE_2DSUB 2
#define FADE_MAIN_OBJ 2
#define FADE_SUB_OBJ 3
#define CLACT_U_HEADER_DATA_NONE (0xffffffff)
#define ARC_POKEICON 0x14
#define ARC_ITEMICON 18
#define RECT_HIT_END 0xFF

#define MEGA_ICON_SPRITE_TAG 20050
#define MEGA_ICON_PAL_TAG 20051
#define MEGA_ICON_CELL_TAG 20052
#define MEGA_ICON_CELL_ANIM_TAG 20053

#define MEGA_BUTTON_SPRITE_TAG 20054
#define MEGA_BUTTON_PAL_TAG 20055

// shift these by 1 if the fairy type has been implemented in the hgss-filesys-example branch.
#define MEGA_ICON_FIGHT_GFX 797 + FAIRY_TYPE_IMPLEMENTED
#define MEGA_ICON_SELECTED_GFX 799 + FAIRY_TYPE_IMPLEMENTED
#define MEGA_ICON_BLANK_GFX 801 + FAIRY_TYPE_IMPLEMENTED


const ButtonTBL SkillMenuTouchData[] = {
	//UP DOWN LEFT RIGHT
	{0x13 * 8, 0x18 * 8, 1 * 8, 0xB0},	  //return
	{3 * 8, 10 * 8, 0 * 8, 0x10 * 8},	  //move 1
	{3 * 8, 10 * 8, 0x10 * 8, 255},		  //move 2
	{0xb * 8, 0x12 * 8, 0 * 8, 0x10 * 8}, //move 3
	{0xb * 8, 0x12 * 8, 0x10 * 8, 255},	  //move 4
	{0x13 * 8, 0x18 * 8, 0xB0, 0xF8},	  //mega
	{RECT_HIT_END, 0, 0, 0}};

const int SkillMenuTouchRet[NELEMS(SkillMenuTouchData) - 1] = {
	0xFF,
	1,
	2,
	3,
	4,
	5,
};

ALIGN4 const u8 SkillMenuPaletteNo[NELEMS(SkillMenuTouchData) - 1] = {
	4,	 //SELECT_CANCEL,
	8,	 //SELECT_SKILL_1,
	9,	 //SELECT_SKILL_2,
	10, //SELECT_SKILL_3,
	11, //SELECT_SKILL_4,
	4,	 //mega
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

static void EFFECT_MegaTouch(void *tcb, void *work);

// reads the sprite icon
void Sub_PokeIconResourceLoad(struct BI_PARAM *bip)
{
	void *csp;
	void *crp;
	void *pfd;

	csp = BattleWorkCATS_SYS_PTRGet(bip->bw);
	crp = BattleWorkCATS_RES_PTRGet(bip->bw);
	pfd = BattleWorkPfdGet(bip->bw);

	OAM_LoadResourcePlttWorkArc(pfd, FADE_SUB_OBJ, csp, crp, ARC_POKEICON, PokeIconPalArcIndexGet(), 0, 3, NNS_G2D_VRAM_TYPE_2DSUB, 20022);

	OAM_LoadResourceCellArc(csp, crp, ARC_POKEICON, PokeIconAnmCellArcIndexGet(), 0, 20021);

	OAM_LoadResourceCellAnmArc(csp, crp, ARC_POKEICON, PokeIconAnmCellAnmArcIndexGet(), 0, 20021);

	OAM_LoadResourcePlttWorkArc(pfd, FADE_SUB_OBJ, csp, crp, ARC_ITEMICON, MEGA_ICON_FIGHT_GFX+1, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_ICON_PAL_TAG);

	OAM_LoadResourceCellArc(csp, crp, ARC_ITEMICON, 1, 0, MEGA_ICON_CELL_TAG);

	OAM_LoadResourceCellAnmArc(csp, crp, ARC_ITEMICON, 0, 0, MEGA_ICON_CELL_ANIM_TAG);
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

		OAM_LoadResourceCharArc(csp, crp, ARC_ITEMICON, MEGA_ICON_FIGHT_GFX, 0, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_ICON_SPRITE_TAG);
		newBS.MegaOAM = OAM_ObjectAdd_S(csp, crp, &PokeIconObjParam);
		OAM_ObjectUpdate(newBS.MegaOAM->act);
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
		OAM_LoadResourcePlttWorkArc(pfd, FADE_SUB_OBJ, csp, crp, ARC_ITEMICON, palindex, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_BUTTON_PAL_TAG);
		OAM_LoadResourceCharArc(csp, crp, ARC_ITEMICON, iconindex, 0, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_BUTTON_SPRITE_TAG);

		OAM_LoadResourceCellArc(csp, crp, ARC_ITEMICON, 1, 0, MEGA_ICON_CELL_TAG);
		OAM_LoadResourceCellAnmArc(csp, crp, ARC_ITEMICON, 0, 0, MEGA_ICON_CELL_ANIM_TAG);
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
	{0x12, 0x17, 22, 0x1e},
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
	OAM_LoadResourceCharArc(csp, crp, ARC_ITEMICON, iconindex, 0, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_BUTTON_SPRITE_TAG);
	OAM_LoadResourcePlttWorkArc(pfd, FADE_SUB_OBJ, csp, crp, ARC_ITEMICON, palindex, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, MEGA_BUTTON_PAL_TAG);
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