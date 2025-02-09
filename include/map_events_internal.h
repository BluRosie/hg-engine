#ifndef POKEHEARTGOLD_MAP_EVENTS_INTERNAL_H
#define POKEHEARTGOLD_MAP_EVENTS_INTERNAL_H

//#include "wild_encounter.h"
#include "types.h"
#include "script.h"

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












typedef struct LocalMapObject LocalMapObject;

typedef struct MapObjectMan {
    u32 flags;
    u32 object_count;
    u32 unk8;
    u32 unkC;
    u8 unk10[4];
    void* mmodel_narc;
    u8 unk18[4];
    u8 unk1C[0x124-0x1C];
    LocalMapObject* objects;
    FieldSystem* fsys;
} MapObjectMan; // size: 0x12c

typedef enum MapObjectFlagBits {
    MAPOBJECTFLAG_ACTIVE = (1 << 0),
    MAPOBJECTFLAG_SINGLE_MOVEMENT = (1 << 1),
    MAPOBJECTFLAG_UNK2 = (1 << 2),
    MAPOBJECTFLAG_UNK3 = (1 << 3),
    MAPOBJECTFLAG_UNK4 = (1 << 4),
    MAPOBJECTFLAG_UNK5 = (1 << 5),
    MAPOBJECTFLAG_MOVEMENT_PAUSED = (1 << 6),
    MAPOBJECTFLAG_UNK7 = (1 << 7),
    MAPOBJECTFLAG_UNK8 = (1 << 8),
    MAPOBJECTFLAG_UNK9 = (1 << 9),
    MAPOBJECTFLAG_UNK10 = (1 << 10),
    MAPOBJECTFLAG_UNK11 = (1 << 11),
    MAPOBJECTFLAG_UNK12 = (1 << 12),
    MAPOBJECTFLAG_UNK13 = (1 << 13),
    MAPOBJECTFLAG_UNK14 = (1 << 14),
    MAPOBJECTFLAG_UNK15 = (1 << 15),
    MAPOBJECTFLAG_UNK16 = (1 << 16),
    MAPOBJECTFLAG_UNK17 = (1 << 17),
    MAPOBJECTFLAG_UNK18 = (1 << 18),
    MAPOBJECTFLAG_UNK19 = (1 << 19),
    MAPOBJECTFLAG_UNK20 = (1 << 20),
    MAPOBJECTFLAG_UNK21 = (1 << 21),
    MAPOBJECTFLAG_UNK22 = (1 << 22),
    MAPOBJECTFLAG_UNK23 = (1 << 23),
    MAPOBJECTFLAG_UNK24 = (1 << 24),
    MAPOBJECTFLAG_UNK25 = (1 << 25),
    MAPOBJECTFLAG_UNK26 = (1 << 26),
    MAPOBJECTFLAG_UNK27 = (1 << 27),
    MAPOBJECTFLAG_UNK28 = (1 << 28),
    MAPOBJECTFLAG_UNK29 = (1 << 29),
    MAPOBJECTFLAG_UNK30 = (1 << 30),
    MAPOBJECTFLAG_UNK31 = (1 << 31),
} MapObjectFlagBits;

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

#define BIT_MOVE (1<<1)
#define BIT_MOVE_START (1<<2)
#define BIT_MOVE_END (1<<3)
#define BIT_VANISH (1<<9)
#define BIT_JUMP_START (1<<16)


typedef struct OVERWORLD_REQUEST_FLAGS {
    /* 0x0 */ u16 TalkCheck:1;    // 0x0001
              u16 StepCheck:1;    // 0x0002
              u16 MenuOpen:1;     // 0x0004
              u16 unk0_0018:2;    // 0x0018 - assume this is inserted field
              u16 CnvButton:1;    // 0x0020
              u16 MatCheck:1;     // 0x0040
              u16 PushCheck:1;    // 0x0080
              u16 MoveCheck:1;    // 0x0100
              u16 FloatCheck:1;   // 0x0200
              u16 DebugMenu:1;    // 0x0400
              u16 DebugBattle:1;  // 0x0800
              u16 DebugHook:1;    // 0x1000
              u16 DebugKeyPush:1; // 0x2000
              u16 OpenPCCheck:1;
              u16 Unused:1;
    /* 0x2 */ u16 unk2; // if you told me that they just inserted unk0_0018 without decreasing Unused size, i would believe you
    /* 0x4 */ u8 Site;
    /* 0x5 */ s8 PushSite;
    /* 0x6 */ u16 trg;
    /* 0x8 */ u16 cont;
} __attribute__((packed)) OVERWORLD_REQUEST_FLAGS; // size = 0xa


LocalMapObject * LONG_CALL GetMapObjectByID(void *arr, int id);
int LONG_CALL MapObject_GetMovement(LocalMapObject *mapObject);
u32 LONG_CALL MapObject_GetGfxID(LocalMapObject *mapObject);
void LONG_CALL MapObject_SetGfxID(LocalMapObject *mapObject, u32 spriteId);
void LONG_CALL sub_0205F6AC(LocalMapObject *mapObject, int a1);
void LONG_CALL MapObject_SetBits(LocalMapObject *mapObject, u32 bits);
void LONG_CALL MapObject_ClearBits(LocalMapObject *mapObject, u32 bits);
void LONG_CALL MapObject_SetID(LocalMapObject *mapObject, u32 id);
void LONG_CALL MapObject_SetType(LocalMapObject *mapObject, u32 type);
u32 LONG_CALL MapObject_GetType(LocalMapObject *mapObject, u32 type);
void LONG_CALL MapObject_SetFlagID(LocalMapObject *mapObject, u32 flagId);
void LONG_CALL MapObject_SetScript(LocalMapObject *mapObject, u32 script);
void LONG_CALL MapObject_SetParam(LocalMapObject *mapObject, int value, int which);
int LONG_CALL MapObject_GetParam(LocalMapObject *mapObject, int which);
void LONG_CALL MapObject_SetXRange(LocalMapObject *mapObject, u32 xRange);
void LONG_CALL MapObject_SetYRange(LocalMapObject *mapObject, u32 yRange);

void LONG_CALL MapObject_GfxDraw(LocalMapObject *mapObject);
void LONG_CALL PlayerAlternate_MapObject_GfxDraw(LocalMapObject *mapObject, int sprite_id, void *, void*);

LocalMapObject * LONG_CALL CreateFollowingSpriteFieldObject(void *mapObjectMan, int species, u16 forme, int gender, int direction, int x, int y, int shiny);
u32 LONG_CALL FollowingPokemon_GetSpriteID(int species, u16 forme, u32 gender);
void LONG_CALL FollowPokeFsysParamSet(FieldSystem *fsys, int species, u8 forme, BOOL shiny, u8 gender);
void LONG_CALL FollowPokeMapObjectSetParams(LocalMapObject *mapObject, int species, u8 forme, BOOL shiny);
void LONG_CALL FsysFollowMonClear(FollowMon *followMon);
LocalMapObject * LONG_CALL CreateSpecialFieldObject(void *objectMan, u32 x, u32 z, u32 direction, u32 sprite, u32 movement, u32 mapNo);
void LONG_CALL DeleteMapObject(LocalMapObject *mapObject);
u32 LONG_CALL MapObject_GetCurrentX(LocalMapObject *object);
u32 LONG_CALL MapObject_GetCurrentY(LocalMapObject *object);
void LONG_CALL MapObject_SetCurrentY(LocalMapObject* object, u32 y);
void LONG_CALL MapObject_SetCurrentX(LocalMapObject* object, u32 x);
void LONG_CALL MapObject_SetFlag29(LocalMapObject* object, BOOL set);
void LONG_CALL sub_02069DC8(LocalMapObject *mapObject, BOOL enable_bit);
void LONG_CALL ov01_021F9048(LocalMapObject* map_object);
void LONG_CALL MapObjectMan_PauseAllMovement(MapObjectMan* manager);
void LONG_CALL MapObjectMan_UnpauseAllMovement(MapObjectMan* manager);
void LONG_CALL ChangeMapObjSprite(LocalMapObject *mapObject, u32 overworldTag);

//#define FollowPokeObj_GetSpecies(mapObject) MapObject_GetParam(mapObject, 0)

// Player avatar state
#define PLAYER_STATE_WALKING         0
#define PLAYER_STATE_CYCLING         1
#define PLAYER_STATE_SURFING         2
#define PLAYER_STATE_ROCKET          3
#define PLAYER_STATE_UNK_SP          4
#define PLAYER_STATE_UNK_WATER       5
#define PLAYER_STATE_POKEATHLON      6
#define PLAYER_STATE_FISHING         7
#define PLAYER_STATE_UNK_POKE        8
#define PLAYER_STATE_SAVING          9
#define PLAYER_STATE_HEAL           10
#define PLAYER_STATE_LADDER         11
#define PLAYER_STATE_ROCKET_HEAL    12
#define PLAYER_STATE_APRICORN_SHAKE 13
#define PLAYER_STATE_ROCKET_SAVING  14

typedef struct FlypointsPlayerSub {
    u16 hasRunningShoes;
    u16 unk2;
    u32 state;
} FIELD_PLAYER_AVATAR_SUB;

typedef struct FIELD_PLAYER_AVATAR {
    u32 unk0;
    u32 transFlag;
    u32 unk8;
    u32 unkc;
    u32 unk10;
    u32 unk14;
    int state;
    u32 gender;
    u8 unk20;
    u32 unk24;
    int unk28;
    int unk2c;
    LocalMapObject* mapObject;
    u32 unk34;
    FIELD_PLAYER_AVATAR_SUB *avatar_sub;
    u32 unk3c;
} FIELD_PLAYER_AVATAR; //size: 0x40

u8 LONG_CALL GetMetatileBehaviorAt(FieldSystem *fieldSystem, int x, int y);
int LONG_CALL GetPlayerXCoord(FIELD_PLAYER_AVATAR *avatar);
int LONG_CALL GetPlayerYCoord(FIELD_PLAYER_AVATAR *avatar);
BOOL MapObject_IsSingleMovementActive(LocalMapObject *obj);
void MapObject_PauseMovement(LocalMapObject *obj);

#endif //POKEHEARTGOLD_MAP_EVENTS_INTERNAL_H
