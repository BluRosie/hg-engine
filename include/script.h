#ifndef SCRIPT_H
#define SCRIPT_H

#include "types.h"
#include "save.h"


// pokeheartgold coming through

enum ScriptEnvField {
    SCRIPTENV_MENU_WINDOW                     =  0,
    SCRIPTENV_WINDOW                          =  1,
    SCRIPTENV_MENU                            =  2,
    SCRIPTENV_PRINTER_NUM                     =  3,
    SCRIPTENV_NUM_ACTIVE_MOVEMENT             =  4,
    SCRIPTENV_07                              =  5,
    SCRIPTENV_08                              =  6,
    SCRIPTENV_NUM_ACTIVE_SCRCTX               =  7,
    SCRIPTENV_SCRIPT                          =  8,
    SCRIPTENV_FACING_DIRECTION                =  9,
    SCRIPTENV_LAST_TALKED                     = 10,
    SCRIPTENV_CAMERA_FOCUS_OBJ                = 11,
    SCRIPTENV_34                              = 12,
    SCRIPTENV_SCRCTX_0                        = 13,
    SCRIPTENV_SCRCTX_1                        = 14,
    SCRIPTENV_SCRCTX_2                        = 15,
    SCRIPTENV_MSGFMT                          = 16,
    SCRIPTENV_STRBUF1                         = 17,
    SCRIPTENV_STRBUF2                         = 18,
    SCRIPTENV_WAITING_ICON                    = 19,
    SCRIPTENV_AC                              = 20,
    SCRIPTENV_GENERIC_WORK_PTR                = 21,
    SCRIPTENV_B4                              = 22,
    SCRIPTENV_B8                              = 23,
    SCRIPTENV_0C                              = 24,
    SCRIPTENV_54_0_00                         = 25,
    SCRIPTENV_54_0_04                         = 26,
    SCRIPTENV_54_0_08                         = 27,
    SCRIPTENV_EYE_TRAINER_1_NUM               = 28,
    SCRIPTENV_EYE_TRAINER_1_ENCTYPE           = 29,
    SCRIPTENV_EYE_TRAINER_1_OBJPTR            = 30,
    SCRIPTENV_54_0_18                         = 31,
    SCRIPTENV_54_1_00                         = 32,
    SCRIPTENV_54_1_04                         = 33,
    SCRIPTENV_54_1_08                         = 34,
    SCRIPTENV_EYE_TRAINER_2_NUM               = 35,
    SCRIPTENV_EYE_TRAINER_2_ENCTYPE           = 36,
    SCRIPTENV_EYE_TRAINER_2_OBJPTR            = 37,
    SCRIPTENV_54_1_18                         = 38,
    SCRIPTENV_BC                              = 39,
    SCRIPTENV_MONEY_BOX                       = 40,
    SCRIPTENV_DC                              = 41,
    SCRIPTENV_SPECIAL_VAR_8000                = 42,
    SCRIPTENV_SPECIAL_VAR_8001                = 43,
    SCRIPTENV_SPECIAL_VAR_8002                = 44,
    SCRIPTENV_SPECIAL_VAR_8003                = 45,
    SCRIPTENV_SPECIAL_VAR_8004                = 46,
    SCRIPTENV_SPECIAL_VAR_8005                = 47,
    SCRIPTENV_SPECIAL_VAR_8006                = 48,
    SCRIPTENV_SPECIAL_VAR_8007                = 49,
    SCRIPTENV_SPECIAL_VAR_8008                = 50,
    SCRIPTENV_SPECIAL_VAR_8009                = 51,
    SCRIPTENV_SPECIAL_VAR_800A                = 52,
    SCRIPTENV_SPECIAL_VAR_800B                = 53,
    SCRIPTENV_SPECIAL_VAR_RESULT              = 54,
    SCRIPTENV_SPECIAL_VAR_LAST_TALKED         = 55,
};

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
    FieldSystem *fsys; // cyclical dependency
};


extern FieldSystem *gFieldSysPtr;


void* LONG_CALL GetEvScriptWorkMemberAdrs( FieldSystem *fsys, u32 id );
u16* LONG_CALL GetVarAdrs(void *saveData, u16 var); // GetVarPointer works more universally but takes a script context, use this if you don't have it
void* LONG_CALL EncDataSave_GetSaveDataPtr(void *savedata);
u16* LONG_CALL GetVarPointer(FieldSystem *fsys, u16 var);
u16 LONG_CALL VarGet(FieldSystem *fsys, u16 varIdx);
u32 LONG_CALL VarSet(FieldSystem *fsys, u16 varIdx, u16 value);
void LONG_CALL WORDSET_RegisterAbilityName( void* wordset, u32 bufID, u32 wazaID );
void LONG_CALL EventSet_Script(FieldSystem *fsys, u16 scr_id, void* obj);
void LONG_CALL ScriptJump(SCRIPTCONTEXT* ctx, const u8* ptr); // this is important
void *LONG_CALL FieldSysGetAttrAddr(FieldSystem *fsys, int field);
u32 LONG_CALL Fsys_GetWeather_HandleDiamondDust(FieldSystem *fsys, u32 mapID);

// there are actual functions for ScriptReadHalfword and ScriptReadWord, but it's whatever
#define ScriptReadByte(ctx) *(u8*)(ctx->script_ptr++)
#define ScriptReadHalfword(ctx) (ScriptReadByte(ctx) | (ScriptReadByte(ctx) << 8))
#define ScriptReadWord(ctx) (ScriptReadHalfword(ctx) | (ScriptReadHalfword(ctx) << 16))

#define ScriptGetVarPointer(ctx) GetVarPointer(ctx->fsys, ScriptReadHalfword(ctx))
#define ScriptGetVar(ctx) VarGet(ctx->fsys, ScriptReadHalfword(ctx))

#endif
