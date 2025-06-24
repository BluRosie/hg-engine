#ifndef SPRITE_H
#define SPRITE_H

#include "types.h"

enum
{
    CLACT_U_CHAR_RES,
    CLACT_U_PLTT_RES,
    CLACT_U_CELL_RES,
    CLACT_U_CELLANM_RES,
    CLACT_U_MULTI_RES,
    CLACT_U_MULTIANM_RES,
    CLACT_U_RES_MAX
};

struct TCATS_ACT
{

    void *act;
    void *act_hd;
    void *act_htp;

    int vram_trans;
};

typedef struct TCATS_ACT *CATS_ACT_PTR;

typedef struct
{
    u8 top;    // 上（もしくは特殊コード）
    u8 bottom; // 下
    u8 left;   // 左
    u8 right;  // 右
} ButtonTBL;

typedef struct
{

    s16 x; ///< [ X ] 座標
    s16 y; ///< [ Y ] 座標
    s16 z; ///< [ Z ] 座標

    u16 anm;    ///< アニメ番号
    int pri;    ///< 優先順位
    int pal;    ///< パレット番号
    int d_area; ///< 描画エリア

    int id[CLACT_U_RES_MAX]; ///< 使用リソースIDテーブル

    int bg_pri;     ///< BG面への優先度
    int vram_trans; ///< Vram転送フラグ

} OAMSpriteTemplate;

struct BI_PARAM
{
    /*0x00*/ struct BattleSystem *bw; // battle work structure that is only partially defined
    /*0x04*/ void *unk1;
    /*0x08*/ void *unk2;
    /*0x0C*/ void *unk3;
    /*0x10*/ void *unk4;
    /*0x14*/ void *unk5;
    /*0x18*/ u8 type[4];
    /*0x1C*/ u8 client_type;
    /*0x1D*/ u8 client_no;
    /*0x1E*/ u8 sel_mons_no;
    /*0x1F*/ u8 fill1D[0x34-0x1F];
    /*0x34*/ u8 client_no_fight_screen;
    /*0x35*/ u8 sel_mons_no_fight_screen;
    /*0x36*/ u8 fill36[0x40-0x36];

    /*0x40*/ u16 *scrn_buf[5]; // 5*4=20=0x14
    /*0x54*/ u8 fill54[0x69C-0x54];

    /*0x69C*/ s16 seq;
    /*0x69E*/ s16 wait;
    /*0x6A0*/ const s16 *scrn_offset;
    const ButtonTBL *scrn_range;
    int tp_ret;
    u8 scrnbuf_no;
    u8 fa_no;
    u8 pokeicon_no;
    u8 waku_type;
    u8 obj_del;
};

typedef struct NNSG2dScreenData
{
    u16 screenWidth;    // screen width (pixels) of rawData
    u16 screenHeight;   // screen height (pixels) of rawData
    u16 colorMode;      // charactor data color mode
    u16 screenFormat;   // screen data format
    u32 szByte;         // size of rawData
    u32 rawData[1];     // screen data (variable length)
} NNSG2dScreenData;

#define GF_BGL_FRAME0_M	(0)
#define GF_BGL_FRAME1_M	(1)
#define GF_BGL_FRAME2_M	(2)
#define GF_BGL_FRAME3_M	(3)
#define GF_BGL_FRAME0_S	(4)
#define GF_BGL_FRAME1_S	(5)
#define GF_BGL_FRAME2_S	(6)
#define GF_BGL_FRAME3_S	(7)

#define NNS_G2D_VRAM_TYPE_2DMAIN 1
#define NNS_G2D_VRAM_TYPE_2DSUB 2
#define FADE_MAIN_OBJ 2
#define FADE_SUB_OBJ 3
#define CLACT_U_HEADER_DATA_NONE (0xffffffff)
#define RECT_HIT_END 0xFF

void *LONG_CALL Sub_GaugeObjHeadGet(u8);
BOOL LONG_CALL OAM_LoadResourceCharArcH(void *csp, void *crp, void *arcHandle, int data_id, int comp, int trans_mode, int id);
u8 LONG_CALL OAM_LoadResourcePlttWorkArcH(void *pfd, int req, void *csp, void *crp, void *arcHandle, int data_id, int comp, int num, int trans_mode, int id);
BOOL LONG_CALL OAM_LoadResourceCellArcH(void *csp, void *crp, void *arcHandle, int data_id, int comp, int id);
BOOL LONG_CALL OAM_LoadResourceCellAnmArcH(void *csp, void *crp, void *arcHandle, int data_id, int comp, int id);
void *LONG_CALL OAM_ObjectAdd_S(void *csp, void *crp, const OAMSpriteTemplate *coap_s);
void LONG_CALL OAM_ObjectUpdate(void *csp);
void *LONG_CALL BattleWorkCATS_SYS_PTRGet(void *);
void *LONG_CALL BattleWorkCATS_RES_PTRGet(void *);
void LONG_CALL BGCallback_FightOnly(void *, int, int);
void LONG_CALL BGCallback_CommandSelect(void *, int, int);
void LONG_CALL BG_SlideSetInit(void *, int);
BOOL LONG_CALL OAM_FreeResourceChar(void *, int);
BOOL LONG_CALL OAM_FreeResourceCell(void *, int);
BOOL LONG_CALL OAM_FreeResourceCellAnm(void *, int);
BOOL LONG_CALL OAM_FreeResourcePltt(void *, int);
void LONG_CALL CATS_ActorPointerDelete_S(void *);
void *LONG_CALL BattleWorkPfdGet(void *);
u32 LONG_CALL PokeIconPalArcIndexGet(void);
u32 LONG_CALL PokeIconAnmCellAnmArcIndexGet(void);
u32 LONG_CALL PokeIconAnmCellArcIndexGet(void);
void LONG_CALL Snd_SePlay(int);
void LONG_CALL Sub_TouchEndDelete(void *bip, int obj, int bg);
void LONG_CALL EffectTCB_Delete(void *bip);
void LONG_CALL Sub_ScrnOffsetRewrite(void *bip, const s16 *scrn_offset, const ButtonTBL *range, int scrnbuf_no, int anm_no);
void LONG_CALL EffectTCB_Add(const void *func, void *bip);
BOOL LONG_CALL OAM_LoadResourceCharArc(void *csp, void *crp, int arc_id, int data_id, BOOL comp, int trans_mode, int id);
BOOL LONG_CALL OAM_LoadResourceCellAnmArc(void *csp, void *crp, int arc_id, int data_id, int comp, int id);
BOOL LONG_CALL OAM_LoadResourceCellArc(void *csp, void *crp, int arc_id, int data_id, int comp, int id);
u8 LONG_CALL OAM_LoadResourcePlttWorkArc(void *pfd, int req, void *csp, void *crp, int arc_id, int data_id, int comp, int num, int trans_mode, int id);
void *LONG_CALL ArcUtil_ScrnDataGet(u32 fileIdx, u32 dataIdx, BOOL compressedFlag, NNSG2dScreenData** scrnData, u32 heapID);
void LONG_CALL BG_LoadScreenTilemapData(void *bgl, u32 bg_id, u16 *scrn_buf, int size);
void LONG_CALL ScheduleBgTilemapBufferTransfer(void *bgl, int bg_id);
void LONG_CALL OAM_ObjectAnimeSeqSetCap(void *, int anim_no);
u32 LONG_CALL GfGfxLoader_LoadCharData(u32 narcId, s32 memberNo, void *bgConfig, u32 layer, u32 tileStart, u32 szByte, BOOL isCompressed, u32 heapId);
void LONG_CALL PaletteData_LoadNarc(void *data, u32 narcID, s32 memberNo, u32 heapID, u32 bufferID, u32 size, u16 pos);
void LONG_CALL DrawFrameAndWindow2(void *window, BOOL dont_copy_to_vram, u16 baseTile, u8 palette_num);
void LONG_CALL AddWindowParameterized(void *bgConfig, void *window, u8 bgId, u8 x, u8 y, u8 width, u8 height, u8 paletteNum, u16 baseTile);

// SPA functions - names are speculative
void LONG_CALL LoadOpenSPAToEmitter(/*SPLEmitter*/ void *emitter, void *data, u32 flag, BOOL loadNow);
void * LONG_CALL OpenSPAFileInHeap(u32 narcId, int fileId, u32 heapId);
void LONG_CALL QueueEmitterWithCallback(/*SPLEmitter*/ void *emitter, int res_no, void (*fp_callback)(/*SPLEmitter*/ void *), void *arg);
void LONG_CALL particleEmitCallback(/*SPLEmitter*/ void *partyMenu);

#endif
