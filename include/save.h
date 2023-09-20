#ifndef SAVE_H
#define SAVE_H

#include "config.h"
#include "pokemon.h"

// store a reshiram/zekrom, a lunala, a solgaleo, and a glastrier/spectrier
#define STORED_MONS_DNA_SPLICERS 0
#define STORED_MONS_N_SOLARIZER 1
#define STORED_MONS_N_LUNARIZER 2
#define STORED_MONS_REINS_OF_UNITY 3
#define NUM_OF_STORED_MONS 4

struct SAVE_MISC_DATA
{
    //APRICORN_TREE apricorn_trees[MAX_APRICORN_TREE];
    //BERRY_POT berry_pots[MAX_BERRY_POT];
    //struct GF_RTC_DateTime berry_datetime;
    //struct Gymmick gymmick;
    //u16 rivalName[OT_NAME_LENGTH + 1];
    //u8 unk_0280[8]; // 3 chunks of size (4, 2, 2)
    //u8 filler_0288[0x10];
    //u16 unk_0298;
    //u8 unk_029A_0:7;
    //u8 unk_029A_7:1;
    //u8 extraChunksExist:1;
    //u8 unk_029B_1:4;
    //u8 filer_029C[4];
    //MAIL_MESSAGE battleGreetingEC;
    //u32 unk_02A8[2][5];
    //u8 unk_02D0[5];
    //u8 dummy_02D5[3];
    //u32 unk_02D8;
    //u8 unk_02DC;
    //u8 dummy_02DD[3];
    u8 original_struct[0x2E0];

#ifdef ALLOW_SAVE_CHANGES

    // expanded fields
    struct PartyPokemon storedMons[NUM_OF_STORED_MONS];
    u8 isMonStored[NUM_OF_STORED_MONS];

#endif

};

// vars
typedef struct ScriptState {
    u16 vars[0x170];
    u8 flags[2912 / 8];
} SCRIPT_STATE;

struct PlayerProfile {
    u16 name[7 + 1];
    u32 id;
    u32 money;
    u8 gender;
    u8 language;
    u8 johtoBadges;
    u8 avatar;
    u8 version;
    u8 gameClear:1;
    u8 natDex:1;
    u8 dummy;
    u8 kantoBadges;
};

struct OPTIONS {
    u16 textSpeed:4;
    u16 soundMethod:2;
    u16 battleStyle:1;
    u16 battleScene:1;
    u16 buttonMode:2;
    u16 frame:5;
    u16 dummy:1;
};

struct IGT {
    u16 hours;
    u8 minutes;
    u8 seconds;
};

struct PLAYERDATA {
    struct OPTIONS options;
    struct PlayerProfile profile;
    u16 coins;
    struct IGT igt;
};

void *__attribute__((long_call)) SaveBlock2_get(void);
struct SAVE_MISC_DATA *__attribute__((long_call)) Sav2_Misc_get(void *saveData);
struct ScriptState *__attribute__((long_call)) SavArray_Flags_get(void *saveData);
struct PLAYERDATA *__attribute__((long_call)) Sav2_PlayerData_GetProfileAddr(void *saveData);
void* __attribute__((long_call)) GetBagSaveData(void *saveData);
u8* __attribute__((long_call)) SaveData_GetRepelPtr(void *saveData);
void* __attribute__((long_call)) SaveData_GetEventPtr(void *saveData);
void* __attribute__((long_call)) SaveData_GetDexPtr(void *saveData);
void* __attribute__((long_call)) SaveData_GetPlayerPartyPtr(void *saveData);

u32 __attribute__((long_call)) GetCaughtMonCount(void *dexSaveData);

// grab var data from the save -> pass in SavArray_Flags_get for both flags/vars
u32 __attribute__((long_call)) SetScriptVarPassSave(SCRIPT_STATE* state, u16 var_id, u16 value);
u16 __attribute__((long_call)) GetScriptVarPassSave(SCRIPT_STATE* state, u16 var_id);
// grab flag data from the save
void __attribute__((long_call)) SetScriptFlagPassSave(SCRIPT_STATE* state, u16 flag_id);
void __attribute__((long_call)) ClearScriptFlagPassSave(SCRIPT_STATE* state, u16 flag_id);
BOOL __attribute__((long_call)) CheckScriptFlagPassSave(SCRIPT_STATE* state, u16 flag_id);



/* overlay func defines */
void __attribute__((long_call)) Overlay_UnloadID(u32 ovl_id);
void __attribute__((long_call)) Overlay_Load(u32 ovl_id, u32 mode);
u32 __attribute__((long_call)) WIPE_SYS_EndCheck(void);
void *__attribute__((long_call)) PROC_GetWork(void *proc);

/* bag function defines are in bag.h */


// defined in src/save.c
u32 __attribute__((long_call)) Sav2_Misc_sizeof(void);
void __attribute__((long_call)) InitStoredMons(struct SAVE_MISC_DATA *saveMiscData);
void __attribute__((long_call)) Sav2_Misc_init_new_fields(struct SAVE_MISC_DATA *saveMiscData);
u32 __attribute__((long_call)) sqrt(u32 num);

// convenience variable/flag access functions
u32 __attribute__((long_call)) SetScriptVar(u16 var_id, u16 value);
u16 __attribute__((long_call)) GetScriptVar(u16 var_id);
void __attribute__((long_call)) SetScriptFlag(u16 flag_id);
void __attribute__((long_call)) ClearScriptFlag(u16 flag_id);
BOOL __attribute__((long_call)) CheckScriptFlag(u16 flag_id);


#endif // SAVE_H
