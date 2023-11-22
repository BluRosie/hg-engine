#ifndef WEATHER_H
#define WEATHER_H

#include "script.h"
#include "types.h"



typedef struct _WEATHER_SYS_CONTROL{
    /* 0x00 */ void *pWSD;
    /* 0x04 */ void *pWSBG;
    /* 0x08 */ //WEATHER_SYS_DRAWSYS     Draw;
               u8 filler_x8[0xFC];
    /* 0x104 */ FieldSystem *fsys;
    /* 0x108 */ void *ArcHandle;
} WEATHER_SYS_CONTROL; // size = 0x10C



typedef struct WAETHER_OBJ_DATA_tag
{
    /* 0x00 */ WEATHER_SYS_CONTROL *pWSysCont;
    /* 0x04 */ void *clact_w;
    /* 0x08 */ void *work;
    /* 0x0C */ s32 work_buff[10];
    /* 0x34 */ struct WAETHER_OBJ_DATA_tag *pNext;
    /* 0x38 */ struct WAETHER_OBJ_DATA_tag *pPrev;
} WAETHER_OBJ_DATA; // size = 0x3C



typedef struct
{
// platinum structure
    /* 0x000 */ //WEATHER_SYS_CONTROL *pWSysCont;
    /* 0x004 */ //void *pWSD;
    /* 0x008 */ //const void *pCell;
    /* 0x00C */ //WAETHER_OBJ_DATA Dummy;
    /* 0x048 */ //WAETHER_OBJ_DATA ObjArray[48]; // size = xB40
    /* 0xB88 */ //void *tcb;
    /* 0xB8C */ //VecFx32 CameraTarget;
    /* 0xB98 */ //void *work;
    /* 0xB9C */ //BOOL snd_play;
    /* 0xBA0 */ //u16 snd_no;
    /* 0xBA2 */ //u16 Sequence;
    /* 0xBA4 */ //u16 fog_use;
    /* 0xBA6 */ //u16 ContFlag;

// actual heart gold structur
    /* 0x000 */ WEATHER_SYS_CONTROL *pWSysCont;
    /* 0x004 */ void *pWSD;
    /* 0x008 */ const void *pCell;
    /* 0x00C */ WAETHER_OBJ_DATA Dummy;
    /* 0x048 */ u8 start_x48[0xF58 - 0x48];
    /* 0xF58 */ void *work;
    /* 0xF5C */ BOOL snd_play;
    /* 0xF60 */ u16 snd_no;
    /* 0xF62 */ u16 Sequence;
    /* 0xF64 */ u16 fog_use;
    /* 0xF66 */ u16 ContFlag;
    
} WEATHER_SYS_WORK; // size = 0xF68



typedef struct
{
    /* 0x00 */ WEATHER_SYS_WORK *pWork;
    /* 0x04 */ s16 objAddNum;
    /* 0x06 */ s16 objAddTmg;
    /* 0x08 */ s16 objAddTmgMax;
    /* 0x0A */ s16 objAddNumSum;
    /* 0x0C */ s16 OBJ_ADD_NUM_END;
    /* 0x0E */ s16 OBJ_ADD_TMG_END;
    /* 0x10 */ s16 OBJ_ADD_TMG_SUM;
    /* 0x12 */ s16 OBJ_ADD_NUM_SUM_TMG;
    /* 0x14 */ s32 OBJ_ADD_NUM_SUM;
    /* 0x18 */ void (*add)(WEATHER_SYS_WORK *pWork, int num);
} WEATHER_SYS_OBJ_FADE; // size = 0x1C



typedef struct
{
    /* 0x00 */ void *Fog;
    /* 0x04 */ u8 fog_tbl[32];
    /* 0x24 */ s32 fogDepth;
    /* 0x28 */ s32 fogCount;
    /* 0x2C */ s16 FOG_CHG_TMG;
    /* 0x2E */ s16 FOG_TBL_SUM;
} WEATHER_SYS_FOG_FADE; // size = 0x30



typedef struct {
    /* 0x00 */ int x;
    /* 0x04 */ int s_x;
    /* 0x08 */ int dis_x;
    /* 0x0C */ int count;
    /* 0x10 */ int count_max;
} WEATHER_SYS_MOVE_WORK; // size = 0x14



typedef struct {
    /* 0x00 */ void *Fog;
    /* 0x04 */ WEATHER_SYS_MOVE_WORK fog_depth;
    /* 0x18 */ WEATHER_SYS_MOVE_WORK r;
    /* 0x2C */ WEATHER_SYS_MOVE_WORK g;
    /* 0x40 */ WEATHER_SYS_MOVE_WORK b;
    /* 0x54 */ WEATHER_SYS_MOVE_WORK slope;
} WEATHER_SYS_CHG_FOG_DATA; // size = 0x68



// Normal
typedef struct{
    /* 0x00 */ WEATHER_SYS_OBJ_FADE objFade;
    /* 0x1C */ WEATHER_SYS_FOG_FADE fogFade;
    /* 0x4C */ WEATHER_SYS_CHG_FOG_DATA fogWithFade;
    /* 0xB4 */ s32 work[10];
} WEATHER_SYSW_NORMAL; // size = 0xDC



// Alpha - used for like fog
typedef struct{
    /* 0x00 */ WEATHER_SYS_MOVE_WORK alpha;
    /* 0x14 */ WEATHER_SYS_FOG_FADE fogFade;
    /* 0x44 */ WEATHER_SYS_CHG_FOG_DATA fogWithFade;
} WEATHER_SYSW_ALPHA; // size = 0xAC



void LONG_CALL weatherSysObjFadeInit( WEATHER_SYS_OBJ_FADE *data, WEATHER_SYS_WORK *pWork, s32 objAddTmgMax, s32 objAddNum, s32 OBJ_ADD_NUM_END, s32 OBJ_ADD_TMG_END, s32 OBJ_ADD_TMG_SUM, s32 OBJ_ADD_NUM_SUM_TMG, s32 OBJ_ADD_NUM_SUM, void (*add)(WEATHER_SYS_WORK *pWork, int num) );
void LONG_CALL weatherSysFogFadeInInitPack( WEATHER_SYS_CHG_FOG_DATA *fogParam, WEATHER_SYS_FOG_FADE *fogData, void *Fog, int fog_slope, int fog_offs, u16 color, int timing, u32 fog_use_flg );
int LONG_CALL weatherSysObjFade(WEATHER_SYS_OBJ_FADE *data);
int LONG_CALL weatherSysFogFadeInMainPack( WEATHER_SYS_CHG_FOG_DATA *fogParam, WEATHER_SYS_OBJ_FADE *fogData, u32 fog_use_flg );
void LONG_CALL weatherSysFogParamSet( void *Fog, int fog_slope, int fog_offs, u16 color );
void LONG_CALL weatherSysFogSet( WEATHER_SYS_FOG_FADE *fog_fade );
void LONG_CALL weatherDustObj( WEATHER_SYS_WORK *pWork, void (*add_func)(WEATHER_SYS_WORK *pWork, int num), int num, int dust_div_num, int dust_div_move, void (*objFunc)(WAETHER_OBJ_DATA *) );
void LONG_CALL weatherSysObjFadeOutSet( WEATHER_SYS_OBJ_FADE *data, s32 OBJ_ADD_NUM_END, s32 OBJ_ADD_TMG_END, s32 OBJ_ADD_TMG_SUM, s32 OBJ_ADD_NUM_SUM );
void LONG_CALL weatherSysFogFadeInit( WEATHER_SYS_FOG_FADE *data, int timing, BOOL fade_inout );
int LONG_CALL weatherSysFogFade(WEATHER_SYS_FOG_FADE *data);
void LONG_CALL SetFogData(void *FogData, int cont, BOOL flag, int fogMode, int fogSlope, int offset);
void LONG_CALL stopWeatherWork_local( void *wsd );
void LONG_CALL moveFuncObj(WAETHER_OBJ_DATA *pDummy, void (*objFunc)(WAETHER_OBJ_DATA *));
//void LONG_CALL drawObj(WEATHER_SYS_WORK *pData);

void LONG_CALL CLACT_AnmFrameSet(void *clact, int frame);
VecFx32 LONG_CALL getObjMat( WAETHER_OBJ_DATA *p_obj);
void LONG_CALL setClactMatrix(void *clact, void *matrix);
void LONG_CALL destObj(WAETHER_OBJ_DATA *p_obj);
WAETHER_OBJ_DATA *LONG_CALL addObj(WEATHER_SYS_WORK *pWork, int w_byte);
void LONG_CALL scrollObj(WEATHER_SYS_WORK *pWork, int *x, int *y);

void LONG_CALL WeatherMoveReq( WEATHER_SYS_MOVE_WORK *p_work, int s_x, int e_x, int count_max );
void LONG_CALL WeatherBGAlphaDef( int alpha1, int alpha2 );
void LONG_CALL GX_EngineAToggleLayers(int planes, int status);
BOOL LONG_CALL WeatherMoveMain( WEATHER_SYS_MOVE_WORK *p_work );

void LONG_CALL addWeatherSnow(WEATHER_SYS_WORK *pWork, int num);
void LONG_CALL objWeatherSnow(WAETHER_OBJ_DATA *work);


#endif // WEATHER_H
