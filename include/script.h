#ifndef SCRIPT_H
#define SCRIPT_H

#include "map_events_internal.h"
#include "types.h"
#include "save.h"


// pokeheartgold coming through

typedef struct FieldSystem {
    u8 unk0[0x8];
    void *bg_config;
    void *savedata;//SAVEDATA* savedata;
    void *taskman;//TaskManager* taskman;
    MAP_EVENTS* map_events; // what we are here for
    u8 unk18[0x8];
    void */*Location**/ location;
    u8 unk24[0xC];
    void */*MAPMATRIX**/ map_matrix;
    void */*MapObjectMan**/ mapObjectMan;
    //u8 unk34[0x8];
    //FIELD_PLAYER_AVATAR *playerAvatar;
    //u8 unk44[0x68];
    //u32 unkAC;
    //u8 unkB0[0x4];
    //s64 unkB4;
    //u8 unkBC[0x28];
    //FollowMon followMon;
    //u8 unk104[4];
    //void *unk108;//struct FieldSystemUnk108 *unk108;
    //u8 filler_10C[8];
    //void *unk114;//struct UnkFsysSub_114* unk114;
    //void *bugContest;//BUGCONTEST* bugContest;
    //u8 unk11C[0xC];
} FieldSystem; // size: 0x128





enum
{
    SPECIAL_TRY_USE_REPEL,
    SPECIAL_SET_DEX,
    SPECIAL_CHANGE_MON_ABILITY,
    SPECIAL_BUFFER_ABILITY_NAME,
};

typedef struct SCRIPTCONTEXT SCRIPTCONTEXT;
typedef BOOL (*ScrCmdFunc)(SCRIPTCONTEXT* ctx);

struct SCRIPTCONTEXT {
    u8 stack_depth;
    u8 mode;
    u8 comparison_result;
    u8 id;
    ScrCmdFunc native_ptr;
    const u8* script_ptr;
    const u8* stack[20];
    const ScrCmdFunc* cmd_table;
    u32 cmd_count;
    u32 data[4];
    void *taskman;//TaskManager* taskman;
    void *msg_data;//MSGDATA* msg_data;
    u8* mapScripts;
    void *fsys; // cyclical dependency
};

void* __attribute__((long_call)) GetEvScriptWorkMemberAdrs( void* fsys, u32 id );
u16* __attribute__((long_call)) GetVarAdrs(void *saveData, u16 var);
void* __attribute__((long_call)) EncDataSave_GetSaveDataPtr(void* savedata);
u16* __attribute__((long_call)) GetVarPointer(void *fsys, u16 var);
u16 __attribute__((long_call)) VarGet(FieldSystem *fsys, u16 varIdx);
u32 __attribute__((long_call)) VarSet(FieldSystem *fsys, u16 varIdx, u16 value);
void __attribute__((long_call)) WORDSET_RegisterAbilityName( void* wordset, u32 bufID, u32 wazaID );
void __attribute__((long_call)) EventSet_Script(void *fsys, u16 scr_id, void* obj);
void __attribute__((long_call)) ScriptJump(SCRIPTCONTEXT* ctx, const u8* ptr); // this is important
void *__attribute__((long_call)) FieldSysGetAttrAddr(FieldSystem *fsys, int field);

// there are actual functions for ScriptReadHalfword and ScriptReadWord, but it's whatever
#define ScriptReadByte(ctx) *(u8*)(ctx->script_ptr++)
#define ScriptReadHalfword(ctx) (ScriptReadByte(ctx) | (ScriptReadByte(ctx) << 8))
#define ScriptReadWord(ctx) (ScriptReadHalfword(ctx) | (ScriptReadHalfword(ctx) << 16))

#define ScriptGetVarPointer(ctx) GetVarAdrs(ctx->fsys, ScriptReadHalfword(ctx))

#endif
