#ifndef POKEHEARTGOLD_MAP_EVENTS_INTERNAL_H
#define POKEHEARTGOLD_MAP_EVENTS_INTERNAL_H

//#include "wild_encounter.h"

typedef struct BG_EVENT {
    u16 scr;
    u16 type;
    int x;
    int y;
    int z;
    u16 dir;
} BG_EVENT;

typedef struct OBJECT_EVENT {
    u16 id;
    u16 ovid;
    u16 mvt;
    u16 type;
    u16 flag;
    u16 scr;
    s16 dirn;
    u16 eye;
    u16 unk10;
    u16 tsure_poke_color;
    s16 xrange;
    s16 yrange;
    u16 x;
    u16 y;
    s32 z;
} OBJECT_EVENT;

typedef struct WARP_EVENT {
    u16 x;
    u16 y;
    u16 header;
    u16 anchor;
    u32 height;
} WARP_EVENT;

typedef struct COORD_EVENT {
    u16 scr;
    s16 x;
    s16 y;
    u16 w;
    u16 h;
    u16 z;
    u16 val;
    u16 var;
} COORD_EVENT;

typedef struct MAP_EVENTS {
    u32 num_bg_events;
    u32 num_object_events;
    u32 num_warp_events;
    u32 num_coord_events;
    BG_EVENT *bg_events;
    OBJECT_EVENT *object_events;
    WARP_EVENT *warp_events;
    COORD_EVENT *coord_events;
    u8 event_data[0x800];
    u8 script_header[0x100];
    //ENC_DATA wildEncounters; // we'll get there when we get there
} MAP_EVENTS;











#include "script.h"

typedef struct LocalMapObject LocalMapObject;

struct SavedMapObject {
    u8 filler_00[8];
    u8 objId;
    u8 filler_9[9];
    u16 unk_12;
    u8 filler_14[0x3C];
};

struct LocalMapObject {
    /*0x000*/ u32 flags;
    /*0x004*/ u32 flags2;
    /*0x008*/ int id;
    /*0x00C*/ int unkC;
    /*0x010*/ int gfxId;
    /*0x014*/ int movement;
    /*0x018*/ int type;
    /*0x01C*/ int evFlagId;
    /*0x020*/ int scriptId;
    /*0x024*/ int facingInit;
    /*0x028*/ int curFacing;
    /*0x02C*/ int nextFacing;
    /*0x030*/ int curFacingBak;
    /*0x034*/ int nextFacingBak;
    /*0x038*/ int param[3];
    /*0x044*/ int xrange;
    /*0x048*/ int yrange;
    /*0x04C*/ int xInit;
    /*0x050*/ int hInit;
    /*0x054*/ int yInit;
    /*0x058*/ int xPrev;
    /*0x05C*/ int hPrev;
    /*0x060*/ int yPrev;
    /*0x064*/ int xCurr;
    /*0x068*/ int hCurr;
    /*0x06C*/ int yCurr;
    /*0x070*/ u32 /*VecFx32*/ posVec [3];
    /*0x07C*/ u32 /*VecFx32*/ faceVec [3];
    /*0x088*/ u32 /*VecFx32*/ unk88 [3];
    /*0x094*/ u32 /*VecFx32*/ unk94 [3];
    /*0x0A0*/ int unkA0;
    /*0x0A4*/ int movementCmd;
    /*0x0A8*/ int movementStep;
    /*0x0AC*/ u16 unkAC;
    /*0x0AE*/ u16 unkAE;
    /*0x0B0*/ int unkB0;
    /*0x0B4*/ int unkB4;
    /*0x0B8*/ void (*unkB8)(LocalMapObject *localMapObject);
    /*0x0BC*/ void (*unkBC)(LocalMapObject *localMapObject);
    /*0x0C0*/ void (*unkC0)(LocalMapObject *localMapObject);
    /*0x0C4*/ void (*unkC4)(LocalMapObject *localMapObject);
    /*0x0C8*/ void (*unkC8)(LocalMapObject *localMapObject);
    /*0x0CC*/ void (*unkCC)(LocalMapObject *localMapObject);
    /*0x0D0*/ void (*unkD0)(LocalMapObject *localMapObject);
    /*0x0D4*/ void (*unkD4)(LocalMapObject *localMapObject);
    /*0x0D8*/ u8 unkD8[0x10];
    /*0x0E8*/ u8 unkE8[0x10];
    /*0x0F8*/ u8 unkF8[0x10];
    /*0x108*/ u8 unk108[0x20];
    /*0x128*/ FieldSystem *fsys;
};

LocalMapObject * __attribute__((long_call)) GetMapObjectByID(void *arr, int id);
int __attribute__((long_call)) MapObject_GetMovement(LocalMapObject *mapObject);
u32 __attribute__((long_call)) MapObject_GetGfxID(LocalMapObject *mapObject);
void __attribute__((long_call)) MapObject_SetGfxID(LocalMapObject *mapObject, u32 spriteId);
void __attribute__((long_call)) sub_0205F6AC(LocalMapObject *mapObject, int a1);
void __attribute__((long_call)) MapObject_SetBits(LocalMapObject *mapObject, u32 bits);
void __attribute__((long_call)) MapObject_ClearBits(LocalMapObject *mapObject, u32 bits);
void __attribute__((long_call)) MapObject_SetID(LocalMapObject *mapObject, u32 id);
void __attribute__((long_call)) MapObject_SetType(LocalMapObject *mapObject, u32 type);
u32 __attribute__((long_call)) MapObject_GetType(LocalMapObject *mapObject, u32 type);
void __attribute__((long_call)) MapObject_SetFlagID(LocalMapObject *mapObject, u32 flagId);
void __attribute__((long_call)) MapObject_SetScript(LocalMapObject *mapObject, u32 script);
void __attribute__((long_call)) MapObject_SetParam(LocalMapObject *mapObject, int value, int which);
int __attribute__((long_call)) MapObject_GetParam(LocalMapObject *mapObject, int which);
void __attribute__((long_call)) MapObject_SetXRange(LocalMapObject *mapObject, u32 xRange);
void __attribute__((long_call)) MapObject_SetYRange(LocalMapObject *mapObject, u32 yRange);


#endif //POKEHEARTGOLD_MAP_EVENTS_INTERNAL_H
