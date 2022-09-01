#ifndef SAVE_H
#define SAVE_H

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
    // expanded fields
    struct PartyPokemon storedMons[NUM_OF_STORED_MONS];
    u8 isMonStored[NUM_OF_STORED_MONS];
};

void *__attribute__((long_call)) SaveBlock2_get(void);
struct SAVE_MISC_DATA *__attribute__((long_call)) Sav2_Misc_get(void *saveblock2);

/* overlay func defines */
void __attribute__((long_call)) Overlay_UnloadID(u32 ovl_id);
void __attribute__((long_call)) Overlay_Load(u32 ovl_id, u32 mode);
u32 __attribute__((long_call)) WIPE_SYS_EndCheck(void);
void *__attribute__((long_call)) PROC_GetWork(void *proc);

#endif // SAVE_H