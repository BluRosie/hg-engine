#ifndef SCRIPT_H
#define SCRIPT_H

#include "types.h"

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
    void *fsys;//FieldSystem* fsys;
};

void* __attribute__((long_call)) GetEvScriptWorkMemberAdrs( void* fsys, u32 id );
u16* __attribute__((long_call)) GetVarAdrs(void *fsys, u16 var);
void* __attribute__((long_call)) EncDataSave_GetSaveDataPtr(void* savedata);
u16* __attribute__((long_call)) VarGet(void *savedata, u16 var);
void __attribute__((long_call)) WORDSET_RegisterAbilityName( void* wordset, u32 bufID, u32 wazaID );
void __attribute__((long_call)) EventSet_Script(void *fsys, u16 scr_id, void* obj);

// there are actual functions for ScriptReadHalfword and ScriptReadWord, but it's whatever
#define ScriptReadByte(ctx) *(ctx->script_ptr++)
#define ScriptReadHalfword(ctx) (ScriptReadByte(ctx) | (ScriptReadByte(ctx) << 8))
#define ScriptReadWord(ctx) (ScriptReadHalfword(ctx) | (ScriptReadHalfword(ctx) << 16))

#define ScriptGetVarPointer(ctx) GetVarAdrs(ctx->fsys, ScriptReadHalfword(ctx))

#endif
