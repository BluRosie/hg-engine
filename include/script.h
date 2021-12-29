#pragma once

#include "types.h"

enum
{
    SPECIAL_TRY_USE_REPEL,
    SPECIAL_SET_DEX,
    SPECIAL_CHANGE_MON_ABILITY,
    SPECIAL_BUFFER_ABILITY_NAME,
};


struct Unkstruct
{
    void *unk_0;
    void *unk_4;
    void *unk_8;
    /*0xC*/void *savedata;
};

struct Script_Struct
{
    u8 unk_0[4];
    void* unk_3;
    /*0x8*/const u8 *scriptPtr;
    void *array[20];
    void *command_table;
    u32 cmd_max;
    u32 reg[4];
    void *unk_4;
    void *unk_5;
    void *pScript;
    /*0x80*/struct Unkstruct *fsys;
};

struct Save_Data
{
    int a1;
    int a2;
    void* ptr;
};

struct SaveBlock
{
    int unknow[5];
    struct Save_Data data[0x2A];
    /*...*/
};

void* __attribute__((long_call)) GetBagSaveData(void*);
u8* __attribute__((long_call)) SaveData_GetRepelPtr(void*);
void* __attribute__((long_call)) SaveData_GetEventPtr(void*);
void* __attribute__((long_call)) SaveData_GetDexPtr(void*);
void* __attribute__((long_call)) SaveData_GetPlayerPartyPtr(void*);

void* __attribute__((long_call))GetEvScriptWorkMemberAdrs( void* fsys, u32 id );
u16* __attribute__((long_call)) GetVarAdrs(void*,u16);
void* __attribute__((long_call)) EncDataSave_GetSaveDataPtr(void* savedata);
u16* __attribute__((long_call)) VarGet(void* savedata,u16 Var);
void __attribute__((long_call)) WORDSET_RegisterAbilityName( void* wordset, u32 bufID, u32 wazaID );
void __attribute__((long_call)) EventSet_Script(void *fsys, u16 scr_id, void* obj);