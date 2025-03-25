#ifndef SAVE_H
#define SAVE_H

#include "config.h"
#include "constants/save.h"
#include "rtc.h"
#include "pokemon.h"

typedef enum GymmickType {
    GYMMICK_NONE,
    GYMMICK_ECRUTEAK,
    GYMMICK_CIANWOOD,
    GYMMICK_VERMILION,
    GYMMICK_VIOLET,
    GYMMICK_AZALEA,
    GYMMICK_BLACKTHORN,
    GYMMICK_FUCHSIA,
    GYMMICK_VIRIDIAN,
    GYMMICK_SINJOH,
} GymmickType;

typedef union GymmickUnion {
    u8 raw[0x20];
    struct {
        u8 candles[4];
    } ecruteak;
    struct {
        BOOL winch;
    } cianwood;
    struct {
        u8 switches[2];
        u8 gates[2];
    } vermilion;
    struct {
        BOOL liftState;
    } violet;
    struct {
        u8 spiders[4];
        int switches;
    } azalea;
    struct {
        u16 x[3];
        u16 z[3];
        u8 rot[3];
    } blackthorn;
    u8 fuchsia; // unused
    u8 viridian; // unused
    struct {
        u32 choice;
    } sinjoh;
} GymmickUnion;

typedef struct Gymmick {
    GymmickType type;
    GymmickUnion data;
} Gymmick;


typedef struct APRICORN_TREE {
    u8 unk_0;
    u8 unk_1;
    u16 unk_2;
} APRICORN_TREE;

typedef struct BerryPot {
    u8 berryId;
    u8 growthStage;
    u16 unk_2;
    u16 unk_4;
    u16 unk_6;
    u8 unk_8;
    u8 moisture;
    u8 unk_A;
    u8 mulch;
} BerryPot; // size = 0xC

// store a reshiram/zekrom, a lunala, a solgaleo, and a glastrier/spectrier
#define STORED_MONS_DNA_SPLICERS 0
#define STORED_MONS_N_SOLARIZER 1
#define STORED_MONS_N_LUNARIZER 2
#define STORED_MONS_REINS_OF_UNITY 3
#define NUM_OF_STORED_MONS 4

#define MAX_APRICORN_TREE 128
#define NUM_APRICORN_TREE 31

#define MAX_BERRY_POT      4

struct SAVE_MISC_DATA
{
    /* 0x000 */ APRICORN_TREE apricorn_trees[MAX_APRICORN_TREE];
    /* 0x004 */ BerryPot berry_pots[MAX_BERRY_POT];
    /* 0x034 */ struct GF_RTC_DateTime berry_datetime;
    /* 0x050 */ struct Gymmick gymmick;
    /* 0x270 */ u16 rivalName[8]; // 7 + 1
    /* 0x280 */ u8 unk_0280[8]; // 3 chunks of size (4, 2, 2)
    /* 0x288 */ u8 filler_0288[0x10];
    /* 0x298 */ u16 favoriteMonSpecies;
    /* 0x29A */ u8 favoriteMonForm:7;
                u8 favoriteMonIsEgg:1;
    /* 0x29B */ u8 extraChunksExist:1;
                u8 unk_029B_1:4;
    /* 0x29C */ u8 filer_029C[4];
    /* 0x2A0 */ MAIL_MESSAGE battleGreetingEC;
    /* 0x2A8 */ u32 unk_02A8[2][5];
    /* 0x2D0 */ u8 unk_02D0[5];
    /* 0x2D5 */ u8 dummy_02D5[3];
    /* 0x2D8 */ u32 togepiEggPersonality;
    /* 0x2DC */ u8 togepiEggGender;
    /* 0x2DD */ u8 dummy_02DD[3];

#ifdef ALLOW_SAVE_CHANGES

    // expanded fields - offset 0x2E0 and up
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

#define NUM_HOF_RECORDS 30

typedef struct HOFMon {
    /* 0x00 */ u16 species;
    /* 0x02 */ u8 level;
    /* 0x03 */ u8 form;
    /* 0x04 */ u32 personality;
    /* 0x08 */ u32 otid;
    /* 0x0C */ u16 nickname[10 + 1];
    /* 0x22 */ u16 otname[7 + 1];
    /* 0x32 */ u16 moves[4];
    /* 0x3A */ u8 padding[2];
} HOFMON;

typedef struct HOFParty {
    HOFMON party[6];
    u16 year;
    u8 month;
    u8 day;
} HOFTEAM;

typedef struct HallOfFame {
    HOFTEAM parties[NUM_HOF_RECORDS];
    u32 next_record;
    u32 num_total;
} HallOfFame;

// palette convenience defines
typedef enum PaletteMemoryRegions {
    /* 0x000 */ MAIN_SCREEN_BG_PAL,
    /* 0x200 */ MAIN_SCREEN_SPR_PAL,
    /* 0x400 */ SUB_SCREEN_BG_PAL,
    /* 0x600 */ SUB_SCREEN_SPR_PAL,
} PaletteMemoryRegions;

extern u16 PaletteRAMArray[4][16][16];



#define LOAD_STATUS_NOT_EXIST       0
#define LOAD_STATUS_IS_GOOD         1
#define LOAD_STATUS_SLOT_FAIL       2
#define LOAD_STATUS_TOTAL_FAIL      3

#define WRITE_STATUS_CONTINUE       0
#define WRITE_STATUS_NEXT           1
#define WRITE_STATUS_SUCCESS        2
#define WRITE_STATUS_TOTAL_FAIL     3

#define SAVE_CHUNK_MAGIC 0x20060623

struct SaveArrayHeader {
    int id;
    u32 size;
    u32 offset;
    u16 crc;
    u16 slot;
}; // size=0x10

struct SaveArrayFooter {
    u32 magic;
    u32 saveno;
    u32 size;
    u16 idx;
    u16 crc;
};

struct SaveChunkFooter {
    u32 count;
    u32 size;
    u32 magic;
    u16 slot;
    u16 crc;
};

struct SaveSlotSpec {
    u8 id;
    u8 firstPage;
    u8 numPages;
    u8 padding_3;
    u32 offset;
    u32 size;
}; // size=0xC

struct AsyncWriteManager {
    int rollbackCounter;
    int unk_4;
    int curSector;
    int numSectors;
    int lockId;
    u32 state;
    u32 count;
    BOOL waitingAsync;
    u32 state_sub;
};

typedef struct SaveData {
    BOOL flashChipDetected;
    BOOL saveFileExists;
    BOOL isNewGame;
    u32 statusFlags;
    u8 dynamic_region[SAVE_PAGE_MAX * SAVE_SECTOR_SIZE];
    u32 saveCounter;
    struct SaveArrayHeader arrayHeaders[SAVE_BLOCK_NUM]; // 23014
    struct SaveSlotSpec saveSlotSpecs[2]; // 232B4
    struct AsyncWriteManager asyncWriteMan;
    u32 lastGoodSaveSlot;
    u32 lastGoodSaveNo;
    int boxModifiedFlags;
    u32 newBoxModifiedFlags;
    u16 pcStorageLastCRC;
    u16 pcStorageCRC;
    u16 numModifiedBoxes;
    u16 nextBoxToWrite;
    u8 sectorCleanFlag[2];
    u16 lastGoodSector;
} SaveData;

struct SaveSlotCheck {
    BOOL valid;
    u32 count;
};

extern SaveData *sSaveDataPtr;

BOOL LONG_CALL SaveDetectFlash(void);
void LONG_CALL SaveData_InitSubstructs(struct SaveArrayHeader *headers);
void LONG_CALL SaveData_InitSlotSpecs(struct SaveSlotSpec *slotSpecs, struct SaveArrayHeader *headers);
int LONG_CALL Save_GetSaveFilesStatus(SaveData *saveData);
BOOL LONG_CALL Save_LoadDynamicRegion(SaveData *saveData);
u32 LONG_CALL Save_GetPCBoxModifiedFlags(SaveData *saveData);
void LONG_CALL Save_CheckFrontierData(SaveData *saveData, int *err1, int *err2);
void LONG_CALL Save_InitDynamicRegion(SaveData *saveData);
void LONG_CALL Sys_SetSleepDisableFlag(BOOL sleepDisable);
int LONG_CALL FlashClobberChunkFooter(SaveData *saveData, int spec, int sector);
s32 LONG_CALL FlashWriteChunk(u32 offset, void *data, u32 size);
void LONG_CALL Sys_ClearSleepDisableFlag(int a0);
int LONG_CALL _NowWriteFlash(SaveData *saveData);
void LONG_CALL Save_PrepareForAsyncWrite(SaveData *saveData, int a1);
int LONG_CALL Save_WriteFileAsync(SaveData *saveData);
void LONG_CALL Save_InitDynamicRegion_Internal(u8 *dynamic_region, struct SaveArrayHeader *headers);
void LONG_CALL Save_WriteManInit(SaveData *saveData, struct AsyncWriteManager *writeMan, int a2);
int LONG_CALL HandleWriteSaveAsync_PCBoxes(SaveData *saveData, struct AsyncWriteManager *writeMan);
int LONG_CALL HandleWriteSaveAsync_NormalData(SaveData *saveData, struct AsyncWriteManager *writeMan);
void LONG_CALL Save_WriteManFinish(SaveData *saveData, struct AsyncWriteManager *writeMan, int a2);
void LONG_CALL CancelAsyncSave(SaveData *saveData, struct AsyncWriteManager *writeMan);
u16 LONG_CALL SaveArray_CalcCRC16MinusFooter(SaveData *saveData, const void *data, u32 size);
BOOL LONG_CALL FlashLoadSaveDataFromChunk(u32 slot, struct SaveSlotSpec *spec, void *dest);
void LONG_CALL sub_020310A0(SaveData *saveData);
void LONG_CALL sub_0202C6FC(SaveData *saveData);
s32 LONG_CALL FlashWriteChunkInternal(u32 offset, void *data, u32 size);
u32 LONG_CALL GetChunkOffsetFromCurrentSaveSlot(u32 slot, struct SaveSlotSpec *spec);
void LONG_CALL sub_0202C714(SaveData *saveData);
void LONG_CALL sub_02031084(SaveData *saveData);
void LONG_CALL Save_ResetPCBoxModifiedFlags(SaveData *saveData);
BOOL LONG_CALL CARD_TryWaitBackupAsync(void);
void LONG_CALL CARD_CancelBackupAsync(void);
void LONG_CALL CARD_UnlockBackup(int);
void LONG_CALL OS_ReleaseLockID(int);
u32 LONG_CALL Save_CalcPCBoxModifiedFlags(SaveData *saveData);
u32 LONG_CALL PCModifiedFlags_CountModifiedBoxes(u32 flags);
void LONG_CALL sub_020271A0(SaveData *saveData);
void LONG_CALL Save_SetAllPCBoxesModified(SaveData *saveData);
int LONG_CALL Save_WritePCBoxes(SaveData *saveData, struct AsyncWriteManager *writeMan);
BOOL LONG_CALL WaitFlashWrite(s32 lockId, BOOL checkResult, BOOL *resultSuccess);
int LONG_CALL Save_WriteNextPCBox(SaveData *saveData, struct SaveSlotSpec *spec, u8 slot);
int LONG_CALL Save_WritePCFooter(SaveData *saveData, struct SaveSlotSpec *spec, u8 slot);
u32 LONG_CALL PCModifiedFlags_GetIndexOfNthModifiedBox(u32 flags, u8 last);













void *LONG_CALL SaveBlock2_get(void);
struct SAVE_MISC_DATA *LONG_CALL Sav2_Misc_get(void *saveData);
struct ScriptState *LONG_CALL SavArray_Flags_get(void *saveData);
struct PlayerProfile *LONG_CALL Sav2_PlayerData_GetProfileAddr(void *saveData);
u8 *LONG_CALL SaveData_GetRepelPtr(void *saveData);
void *LONG_CALL SaveData_GetEventPtr(void *saveData);
void *LONG_CALL SaveData_GetDexPtr(void *saveData);
void *LONG_CALL SaveData_GetPlayerPartyPtr(void *saveData);
u32 LONG_CALL Pokedex_CountDexOwned(void *dexSaveData);
u32 LONG_CALL Pokedex_CountJohtoDexOwned(void *dexSaveData);
HallOfFame * LONG_CALL LoadHallOfFame(void *saveData, u32 heapId, int *ret_p);
void LONG_CALL Save_HOF_RecordParty(HallOfFame *hof, struct Party *party, struct RTCDate *date);

// can't include scripts.h directly
typedef struct FieldSystem FieldSystem;

void LONG_CALL AddHallOfFameEntry(FieldSystem *fieldSystem, BOOL gameCleared);

/**
 *  @brief get daycare save data from save block
 *
 *  @param saveData saveData from SaveBlock2_get()
 */
Daycare *Save_Daycare_Get(void *saveData);


// grab var data from the save -> pass in SavArray_Flags_get for both flags/vars
u32 LONG_CALL SetScriptVarPassSave(SCRIPT_STATE* state, u16 var_id, u16 value);
u16 LONG_CALL GetScriptVarPassSave(SCRIPT_STATE* state, u16 var_id);
// grab flag data from the save
void LONG_CALL SetScriptFlagPassSave(SCRIPT_STATE* state, u16 flag_id);
void LONG_CALL ClearScriptFlagPassSave(SCRIPT_STATE* state, u16 flag_id);
BOOL LONG_CALL CheckScriptFlagPassSave(SCRIPT_STATE* state, u16 flag_id);



/* overlay func defines */
void LONG_CALL Overlay_UnloadID(u32 ovl_id);
void LONG_CALL Overlay_Load(u32 ovl_id, u32 mode);
u32 LONG_CALL WIPE_SYS_EndCheck(void);
void *LONG_CALL PROC_GetWork(void *proc);

/* bag function defines are in bag.h */


// defined in src/save.c
u32 LONG_CALL Sav2_Misc_sizeof(void);
void LONG_CALL InitStoredMons(struct SAVE_MISC_DATA *saveMiscData);
void LONG_CALL Sav2_Misc_init_new_fields(struct SAVE_MISC_DATA *saveMiscData);
u32 LONG_CALL sqrt(u32 num);

// convenience variable/flag access functions
u32 LONG_CALL SetScriptVar(u16 var_id, u16 value);
u16 LONG_CALL GetScriptVar(u16 var_id);
void LONG_CALL SetScriptFlag(u16 flag_id);
void LONG_CALL ClearScriptFlag(u16 flag_id);
BOOL LONG_CALL CheckScriptFlag(u16 flag_id);

/**
 *  @brief check if an element of an array exists byte-for-byte in the buf sent to it
 *
 *  @param array pointer to any type array
 *  @param element pointer to any element of an array
 *  @param len number of elements in the overall array
 *  @param size size of each individual element, used both as length of element and length of members of array
 *  @return TRUE if the element exists verbatim inside of the array; FALSE otherwise
 */
BOOL LONG_CALL IsElementInArray(const void *array, void *element, u32 len, u32 size);

#endif // SAVE_H
