#ifndef SPRITE_H
#define SPRITE_H

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
    /*0*/ void *bw;
    void *unk1;
    void *unk2;
    void *unk3;
    void *unk4;
    void *unk5;
    u8 type[4];
    /*0x1C*/ u8 client_type;
    u8 client_no;
    u8 sel_mons_no;
    /*0x1F*/ u8 fill1F[0x40-0x1F];

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

void *__attribute__((long_call)) Sub_GaugeObjHeadGet(u8);
BOOL __attribute__((long_call)) OAM_LoadResourceCharArcH(void *csp, void *crp, void *arcHandle, int data_id, int comp, int trans_mode, int id);
u8 __attribute__((long_call)) OAM_LoadResourcePlttWorkArcH(void *pfd, int req, void *csp, void *crp, void *arcHandle, int data_id, int comp, int num, int trans_mode, int id);
BOOL __attribute__((long_call)) OAM_LoadResourceCellArcH(void *csp, void *crp, void *arcHandle, int data_id, int comp, int id);
BOOL __attribute__((long_call)) OAM_LoadResourceCellAnmArcH(void *csp, void *crp, void *arcHandle, int data_id, int comp, int id);
void *__attribute__((long_call)) OAM_ObjectAdd_S(void *csp, void *crp, const OAMSpriteTemplate *coap_s);
void __attribute__((long_call)) OAM_ObjectUpdate(void *csp);
void *__attribute__((long_call)) BattleWorkCATS_SYS_PTRGet(void *);
void *__attribute__((long_call)) BattleWorkCATS_RES_PTRGet(void *);
void __attribute__((long_call)) BGCallback_FightOnly(void *, int, int);
void __attribute__((long_call)) BGCallback_CommandSelect(void *, int, int);
void __attribute__((long_call)) BG_SlideSetInit(void *, int);
BOOL __attribute__((long_call)) OAM_FreeResourceChar(void *, int);
BOOL __attribute__((long_call)) OAM_FreeResourceCell(void *, int);
BOOL __attribute__((long_call)) OAM_FreeResourceCellAnm(void *, int);
BOOL __attribute__((long_call)) OAM_FreeResourcePltt(void *, int);
void __attribute__((long_call)) CATS_ActorPointerDelete_S(void *);
void *__attribute__((long_call)) BattleWorkPfdGet(void *);
u32 __attribute__((long_call)) PokeIconPalArcIndexGet(void);
u32 __attribute__((long_call)) PokeIconAnmCellAnmArcIndexGet(void);
u32 __attribute__((long_call)) PokeIconAnmCellArcIndexGet(void);
void __attribute__((long_call)) Snd_SePlay(int);
void __attribute__((long_call)) Sub_TouchEndDelete(void *bip, int obj, int bg);
void __attribute__((long_call)) EffectTCB_Delete(void *bip);
void __attribute__((long_call)) Sub_ScrnOffsetRewrite(void *bip, const s16 *scrn_offset, const ButtonTBL *range, int scrnbuf_no, int anm_no);
void __attribute__((long_call)) EffectTCB_Add(const void *func, void *bip);
BOOL __attribute__((long_call)) OAM_LoadResourceCharArc(void *csp, void *crp, int arc_id, int data_id, BOOL comp, int trans_mode, int id);
BOOL __attribute__((long_call)) OAM_LoadResourceCellAnmArc(void *csp, void *crp, int arc_id, int data_id, int comp, int id);
BOOL __attribute__((long_call)) OAM_LoadResourceCellArc(void *csp, void *crp, int arc_id, int data_id, int comp, int id);
u8 __attribute__((long_call)) OAM_LoadResourcePlttWorkArc(void *pfd, int req, void *csp, void *crp, int arc_id, int data_id, int comp, int num, int trans_mode, int id);
void *__attribute__((long_call)) ArcUtil_ScrnDataGet(u32 fileIdx, u32 dataIdx, BOOL compressedFlag, NNSG2dScreenData** scrnData, u32 heapID);
void __attribute__((long_call)) BG_LoadScreenTilemapData(void *bgl, u32 bg_id, u16 *scrn_buf, int size);
void __attribute__((long_call)) ScheduleBgTilemapBufferTransfer(void *bgl, int bg_id);
void __attribute__((long_call)) OAM_ObjectAnimeSeqSetCap(void *, int anim_no);

#endif
