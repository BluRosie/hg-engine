#include "../include/types.h"
#include "../include/config.h"
#include "../include/debug.h"
#include "../include/message.h"
#include "../include/pokemon.h"
#include "../include/pokemon_storage_system.h"
#include "../include/save.h"
#include "../include/script.h"
#include "../include/sprite.h"
#include "../include/task.h"
#include "../include/constants/buttons.h"


// these functions are configured to not hook from hooks directly under ALLOW_SAVE_CHANGES
// can't get linking to work properly when i strip these


u32 LONG_CALL Sav2_Misc_sizeof(void)
{
    return sizeof(struct SAVE_MISC_DATA);
}


void LONG_CALL InitStoredMons(struct SAVE_MISC_DATA *saveMiscData)
{
#ifdef ALLOW_SAVE_CHANGES

    memset(&saveMiscData->storedMons[0], 0, 4*sizeof(struct PartyPokemon) + 4); // catch isMonStored in this process

#endif
}


void LONG_CALL Sav2_Misc_init_new_fields(struct SAVE_MISC_DATA *saveMiscData)
{
    InitStoredMons(saveMiscData);
}


// convenience flag/var access functions
u32 LONG_CALL SetScriptVar(u16 var_id, u16 value)
{
    if (var_id < 0x8000)
    {
        return SetScriptVarPassSave(SavArray_Flags_get(SaveBlock2_get()), var_id, value);
    }
    else // handle vars above 0x8000
    {
        u16 *var = GetVarPointer(gFieldSysPtr, var_id);
        *var = value;
        return TRUE;
    }
}

u16 LONG_CALL GetScriptVar(u16 var_id)
{
    if (var_id < 0x4000)
    {
        return var_id; // default to returning the number passed so that it's technically a "flex" parameter
    }
    else if (var_id < 0x8000)
    {
        return GetScriptVarPassSave(SavArray_Flags_get(SaveBlock2_get()), var_id);
    }
    else // handle vars above 0x8000
    {
        u16 *var = GetVarPointer(gFieldSysPtr, var_id);
        return *var;
    }
}

void LONG_CALL SetScriptFlag(u16 flag_id)
{
    SetScriptFlagPassSave(SavArray_Flags_get(SaveBlock2_get()), flag_id);
}

void LONG_CALL ClearScriptFlag(u16 flag_id)
{
    ClearScriptFlagPassSave(SavArray_Flags_get(SaveBlock2_get()), flag_id);
}

BOOL LONG_CALL CheckScriptFlag(u16 flag_id)
{
    return CheckScriptFlagPassSave(SavArray_Flags_get(SaveBlock2_get()), flag_id);
}

// hardware sqrt implementation using the gpio registers + debug options
u32 LONG_CALL sqrt(u32 num)
{
    reg_CP_SQRT_PARAM_L = num;
    reg_CP_SQRTCNT = 0; // start sqrt calculation

    u8 buf[64];
#ifdef DEBUG_SQRT
    sprintf(buf, "[SQRT]   PARAM = %08X\n", reg_CP_SQRT_PARAM_L);
    debugsyscall(buf);
#endif

    while ((reg_CP_SQRTCNT & (1 << 15)) != 0) {
#ifdef DEBUG_SQRT
        sprintf(buf, "[SQRT] SQRTCNT = %08X\n", reg_CP_SQRTCNT);
        debugsyscall(buf);
#endif
    }

    sprintf(buf, "[SQRT]  RESULT = %08X\n", reg_CP_SQRT_RESULT); // need to have something here so that it won't return 0
#ifdef DEBUG_SQRT
    debugsyscall(buf);
#endif

    return reg_CP_SQRT_RESULT;
}


#ifdef DEBUG_PRINT_HEX_DUMP // will never pass ideally
void LONG_CALL HexDumpMemory(u8 *start, u32 size)
{
    for (int i = 0x0; i < size; i += 0x10)
    {
        debug_printf("\n%08X:  ", (u32)&start[i]);
        debug_printf("%02X %02X ", start[i+0], start[i+1]);
        debug_printf("%02X %02X ", start[i+2], start[i+3]);
        debug_printf("%02X %02X ", start[i+4], start[i+5]);
        debug_printf("%02X %02X ", start[i+6], start[i+7]);
        debug_printf("%02X %02X ", start[i+8], start[i+9]);
        debug_printf("%02X %02X ", start[i+0xA], start[i+0xB]);
        debug_printf("%02X %02X ", start[i+0xC], start[i+0xD]);
        debug_printf("%02X %02X ", start[i+0xE], start[i+0xF]);
    }
}
#endif


// let's do some quick save expansion :grin:

#ifdef ALLOW_SAVE_CHANGES
#ifdef EXPAND_PC_BOXES

SaveData *SaveData_New(void) {
    SaveData *ret;
    int status;
    int sp4;
    int sp0;

    ret = sys_AllocMemory(1, sizeof(SaveData));
    MI_CpuClearFast(ret, sizeof(SaveData));
    sSaveDataPtr = ret;

    ret->flashChipDetected = SaveDetectFlash();
    ret->saveFileExists = FALSE;
    ret->isNewGame = TRUE;
    ret->sectorCleanFlag[0] = 1;
    ret->sectorCleanFlag[1] = 1;

    SaveData_InitSubstructs(ret->arrayHeaders);
    SaveData_InitSlotSpecs(ret->saveSlotSpecs, ret->arrayHeaders);

    status = Save_GetSaveFilesStatus(ret);
    ret->statusFlags = 0;
    switch (status) {
    case LOAD_STATUS_IS_GOOD:
    case LOAD_STATUS_SLOT_FAIL:
        Save_LoadDynamicRegion(ret);
        ret->saveFileExists = TRUE;
        ret->isNewGame = FALSE;
        if (status == LOAD_STATUS_SLOT_FAIL) {
            ret->statusFlags |= 1;
        } else {
            ret->boxModifiedFlags = Save_GetPCBoxModifiedFlags(ret);
        }
        Save_CheckFrontierData(ret, &sp4, &sp0);
        if (sp4 == 3) {
            ret->statusFlags |= 8;
        } else if (sp4 == 2) {
            ret->statusFlags |= 4;
        }
        if (sp0 == 3) {
            ret->statusFlags |= 0x20;
        } else if (sp0 == 2) {
            ret->statusFlags |= 0x10;
        }
        break;
    case LOAD_STATUS_TOTAL_FAIL:
        ret->statusFlags |= 2;
        FALLTHROUGH;
    case LOAD_STATUS_NOT_EXIST:
        Save_InitDynamicRegion(ret);
        break;
    }

    return ret;
}

void *SaveArray_Get(SaveData *saveData, int id) {
    //GF_ASSERT(id < SAVE_BLOCK_NUM);
    return (void *)&saveData->dynamic_region[saveData->arrayHeaders[id].offset];
}

BOOL Save_DeleteAllData(SaveData *saveData) {
    u8 *r6;
    int i;

    r6 = sys_AllocMemoryLo(3, SAVE_SECTOR_SIZE);
    Sys_SetSleepDisableFlag(1);
    FlashClobberChunkFooter(saveData, 0, saveData->lastGoodSector == 0 ? 1 : 0);
    FlashClobberChunkFooter(saveData, 1, saveData->lastGoodSector == 0 ? 1 : 0);
    FlashClobberChunkFooter(saveData, 0, saveData->lastGoodSector);
    FlashClobberChunkFooter(saveData, 1, saveData->lastGoodSector);
    MI_CpuFillFast(r6, -1, SAVE_SECTOR_SIZE);
    for (i = 0; i < 64; i++) {
        FlashWriteChunk(i * SAVE_SECTOR_SIZE, r6, SAVE_SECTOR_SIZE);
        FlashWriteChunk((i + 64) * SAVE_SECTOR_SIZE, r6, SAVE_SECTOR_SIZE);
    }
    sys_FreeMemoryEz(r6);
    Save_InitDynamicRegion(saveData);
    saveData->saveFileExists = FALSE;
    Sys_ClearSleepDisableFlag(1);
    return TRUE;
}

int SaveGameNormal(SaveData *saveData) {
    int ret;

    if (!saveData->flashChipDetected) {
        return WRITE_STATUS_TOTAL_FAIL;
    }
    if (saveData->isNewGame) {
        Sys_SetSleepDisableFlag(1);
        FlashClobberChunkFooter(saveData, 0, saveData->lastGoodSector == 0 ? 1 : 0);
        FlashClobberChunkFooter(saveData, 1, saveData->lastGoodSector == 0 ? 1 : 0);
        FlashClobberChunkFooter(saveData, 0, saveData->lastGoodSector);
        FlashClobberChunkFooter(saveData, 1, saveData->lastGoodSector);
        Sys_ClearSleepDisableFlag(1);
    }
    ret = _NowWriteFlash(saveData);
    if (ret == WRITE_STATUS_SUCCESS) {
        saveData->saveFileExists = TRUE;
        saveData->isNewGame = FALSE;
    }
    return ret;
}

int Save_NowWriteFile_AfterMGInit(SaveData *saveData, int a1) {
    int ret;

    GF_ASSERT(a1 < 2);
    GF_ASSERT(saveData->isNewGame == FALSE);
    GF_ASSERT(saveData->saveFileExists == TRUE);
    Save_PrepareForAsyncWrite(saveData, a1);
    do {
        ret = Save_WriteFileAsync(saveData);
    } while (ret == WRITE_STATUS_CONTINUE || ret == WRITE_STATUS_NEXT);
    return ret;
}

void Save_InitDynamicRegion(SaveData *saveData) {
    saveData->isNewGame = TRUE;
    saveData->sectorCleanFlag[0] = 1;
    saveData->sectorCleanFlag[1] = 1;
    Save_InitDynamicRegion_Internal(saveData->dynamic_region, saveData->arrayHeaders);
}

void Save_PrepareForAsyncWrite(SaveData *saveData, int a1) {
    Save_WriteManInit(saveData, &saveData->asyncWriteMan, a1);
}

int Save_WriteFileAsync(SaveData *saveData) {
    int ret;

    if (saveData->asyncWriteMan.curSector == 1) {
        ret = HandleWriteSaveAsync_PCBoxes(saveData, &saveData->asyncWriteMan);
    } else {
        ret = HandleWriteSaveAsync_NormalData(saveData, &saveData->asyncWriteMan);
    }
    if (!(ret == WRITE_STATUS_CONTINUE || ret == WRITE_STATUS_NEXT)) {
        Save_WriteManFinish(saveData, &saveData->asyncWriteMan, ret);
    }
    return ret;
}

void Save_Cancel(SaveData *saveData) {
    CancelAsyncSave(saveData, &saveData->asyncWriteMan);
}

struct SaveChunkFooter *GetSaveSectorFooterPtr(SaveData *saveData, void *data, int idx) {
    u8 *ret;
    struct SaveSlotSpec *spec;

    spec = &saveData->saveSlotSpecs[idx];
    ret = (u8 *)data + spec->offset;
    GF_ASSERT(spec->size != 0);
    return (struct SaveChunkFooter *)(ret + spec->size - sizeof(struct SaveChunkFooter));
}

BOOL ValidateSaveSectorFooter(SaveData *saveData, void *data, int idx) {
    struct SaveSlotSpec *spec;
    struct SaveChunkFooter *footer;
    u32 offset;

    spec = &saveData->saveSlotSpecs[idx];
    footer = GetSaveSectorFooterPtr(saveData, data, idx);
    offset = spec->offset;
    //SaveFooterDebugPrn(footer);
    if (footer->size != spec->size) {
        return FALSE;
    }
    if (footer->magic != SAVE_CHUNK_MAGIC) {
        return FALSE;
    }
    if (footer->slot != idx) {
        return FALSE;
    }
    return SaveArray_CalcCRC16MinusFooter(saveData, (u8 *)data + offset, spec->size) == footer->crc;
}

void SaveSlot_BuildFooter(SaveData *saveData, void *data, int idx) {
    struct SaveSlotSpec *spec;
    struct SaveChunkFooter *footer;
    u32 offset;

    spec = &saveData->saveSlotSpecs[idx];
    footer = GetSaveSectorFooterPtr(saveData, data, idx);
    offset = spec->offset;
    footer->count = saveData->saveCounter;
    footer->size = spec->size;
    footer->magic = SAVE_CHUNK_MAGIC;
    footer->slot = idx;
    footer->crc = SaveArray_CalcCRC16MinusFooter(saveData, (u8 *)data + offset, spec->size);
    //SaveFooterDebugPrn(footer);
}

#endif // EXPAND_PC_BOXES
#endif // ALLOW_SAVE_CHANGES

void Save_RecordWhichLatestGoodSector(SaveData *saveData, struct SaveSlotCheck *checks_main, struct SaveSlotCheck *checks_sub UNUSED, int idx) {
#ifdef ALLOW_SAVE_CHANGES
#ifdef EXPAND_PC_BOXES
    saveData->saveCounter = checks_main[idx].count;
    saveData->lastGoodSector = idx;
#endif
#endif
}

#ifdef ALLOW_SAVE_CHANGES
#ifdef EXPAND_PC_BOXES

// instead of writing Save_GetFilesStatus to here, can just write offset of sectorCleanFlag to 020279E8 (0x23308)

BOOL Save_LoadDynamicRegion(SaveData *saveData) {
    int i;
    u8 *data;
    u32 pc_offs;
    u32 pc_size;

    //struct SaveSlotSpec *specs = saveData->saveSlotSpecs;

    for (i = 0; i < 2; i++) {
        data = saveData->dynamic_region;
        if (!FlashLoadSaveDataFromChunk(saveData->lastGoodSector, &saveData->saveSlotSpecs[i], saveData->dynamic_region)) {
            return FALSE;
        }
        if (!ValidateSaveSectorFooter(saveData, saveData->dynamic_region, i)) {
            return FALSE;
        }
    }
    for (i = 0; i < SAVE_BLOCK_NUM; i++) {
        saveData->arrayHeaders[i].crc = GF_CalcCRC16(SaveArray_Get(saveData, i), saveData->arrayHeaders[i].size);
    }
    pc_offs = saveData->saveSlotSpecs[1].offset;
    //pc_size = PCStorage_GetSizeOfBox() * PCStorage_GetNumBoxes();
    pc_size = 0x1000 * NUM_PC_BOXES;
    saveData->pcStorageLastCRC = GF_CalcCRC16(data + pc_offs, pc_size);
    sub_020310A0(saveData);
    sub_0202C6FC(saveData);
    return TRUE;
}

int Save_WriteSlotAsync(SaveData *saveData, int idx, u8 slot) {
    struct SaveSlotSpec *spec;

    spec = &saveData->saveSlotSpecs[idx];
    SaveSlot_BuildFooter(saveData, saveData->dynamic_region, idx);
    return FlashWriteChunkInternal(GetChunkOffsetFromCurrentSaveSlot(slot, spec), saveData->dynamic_region + spec->offset, spec->size - sizeof(struct SaveChunkFooter));
}

int Save_WriteChunkFooterAsync(SaveData *saveData, int idx, u8 slot) {
    struct SaveSlotSpec *spec;
    u32 size;

    spec = &saveData->saveSlotSpecs[idx];
    size = spec->size;
    return FlashWriteChunkInternal(GetChunkOffsetFromCurrentSaveSlot(slot, spec) + size - sizeof(struct SaveChunkFooter), saveData->dynamic_region + spec->offset + size - sizeof(struct SaveChunkFooter), sizeof(struct SaveChunkFooter));
}

void Save_WriteManInit(SaveData *saveData, struct AsyncWriteManager *writeMan, int a2 UNUSED) {
    sub_0202C714(saveData);
    sub_02031084(saveData);

    writeMan->state = 0;
    writeMan->state_sub = 0;
    writeMan->rollbackCounter = 0;
    writeMan->waitingAsync = FALSE;
    writeMan->rollbackCounter = 1;
    writeMan->count = saveData->saveCounter;
    saveData->saveCounter++;
    writeMan->unk_4 = 0;
    writeMan->curSector = 0;
    writeMan->numSectors = 2;
    Sys_SetSleepDisableFlag(1);
}

// HandleWriteSaveAsync_NormalData just needs offset of lastGoodSector written to 02027CE8 (0x2330A)

void Save_WriteManFinish(SaveData *saveData, struct AsyncWriteManager *writeMan, int a2) {
    saveData->numModifiedBoxes = 0;
    saveData->nextBoxToWrite = 0;
    if (a2 == WRITE_STATUS_TOTAL_FAIL) {
        if (writeMan->rollbackCounter) {
            saveData->saveCounter = writeMan->count;
        }
    } else {
        saveData->boxModifiedFlags = Save_GetPCBoxModifiedFlags(saveData);
        saveData->pcStorageLastCRC = saveData->pcStorageCRC;
        Save_ResetPCBoxModifiedFlags(saveData);
        saveData->sectorCleanFlag[saveData->lastGoodSector == 0] = 0;
        saveData->lastGoodSector = saveData->lastGoodSector == 0;
        saveData->saveFileExists = TRUE;
        saveData->isNewGame = FALSE;
    }
    Sys_ClearSleepDisableFlag(1);
}

void CancelAsyncSave(SaveData *saveData, struct AsyncWriteManager *writeMan) {
    if (writeMan->rollbackCounter) {
        saveData->saveCounter = writeMan->count;
    }
    if (!CARD_TryWaitBackupAsync()) {
        CARD_CancelBackupAsync();
    }
    if (writeMan->waitingAsync) {
        CARD_UnlockBackup(writeMan->lockId);
        OS_ReleaseLockID(writeMan->lockId);
        writeMan->waitingAsync = FALSE;
    }
    Sys_ClearSleepDisableFlag(1);
}

// FlashClobberChunkFooter just needs offset of saveSlotSpecs at 02027E2C (0x232B4)

// clear GF_ASSERT at 02027EEC

// SAVE_PAGE_MAX at 02027F92

// dynamic region size (SAVE_PAGE_MAX * SAVE_SECTOR_SIZE) at 02027FAE

// CreateChunkFooter just needs lastGoodSaveNo offset (0x232F4) at 02028098

// WriteExtraSaveChunk just needs lastGoodSaveSlot offset (0x232F0) at 0202822C

// ReadExtraSaveChunk just needs lastGoodSaveSlot offset (0x232F0) at 020284A0

void SaveData_InitSlotSpecs(struct SaveSlotSpec *slotSpecs, struct SaveArrayHeader *headers) {
    int i;
    int adrs;
    int npage;
    int j;

    npage = 0;
    adrs = 0;
    j = 0;
    for (i = 0; i < 2; i++) {
        slotSpecs[i].id = i;
        slotSpecs[i].size = 0;
        for (; i == headers[j].slot && j < 42; j++) {
            slotSpecs[i].size += headers[j].size;
        }
        slotSpecs[i].size += sizeof(struct SaveChunkFooter);
        slotSpecs[i].firstPage = npage;
        slotSpecs[i].offset = adrs;
        slotSpecs[i].numPages = (slotSpecs[i].size + SAVE_SECTOR_SIZE - 1) / SAVE_SECTOR_SIZE;
        npage += slotSpecs[i].numPages;
        adrs += slotSpecs[i].size;
        if (adrs % 0x100 != 0) {
            adrs += (0x100 - (adrs % 0x100));
        }
    }
    GF_ASSERT(npage == slotSpecs[1].firstPage + slotSpecs[1].numPages);
    GF_ASSERT(npage <= SAVE_PAGE_MAX);
}

int HandleWriteSaveAsync_PCBoxes(SaveData *saveData, struct AsyncWriteManager *writeMan) {
    u32 r7;
    int r0;
    int sp0;
    void *data;
    switch (writeMan->state) {
    case 0:
        saveData->newBoxModifiedFlags = Save_CalcPCBoxModifiedFlags(saveData);
        saveData->numModifiedBoxes = PCModifiedFlags_CountModifiedBoxes(saveData->newBoxModifiedFlags);
        saveData->nextBoxToWrite = 0;
        //r7 = PCStorage_GetSizeOfBox() * PCStorage_GetNumBoxes();
        r7 = 0x1000 * NUM_PC_BOXES;
        saveData->pcStorageCRC = GF_CalcCRC16(SaveArray_Get(saveData, 41), r7);
        if (saveData->numModifiedBoxes == 0) {
            GF_ASSERT(saveData->pcStorageCRC == saveData->pcStorageLastCRC);
            sub_020271A0(saveData);
            if (saveData->pcStorageCRC != saveData->pcStorageLastCRC) {
                saveData->numModifiedBoxes = NUM_PC_BOXES;
                saveData->newBoxModifiedFlags = BOX_ALL_MODIFIED_FLAG;
                Save_SetAllPCBoxesModified(saveData);
            }
        }
        writeMan->state_sub = 0;
        data = saveData->dynamic_region;
        SaveSlot_BuildFooter(saveData, data, writeMan->curSector);
        GetSaveSectorFooterPtr(saveData, data, writeMan->curSector);
        writeMan->state++;
        FALLTHROUGH;
    case 1:
        r0 = Save_WritePCBoxes(saveData, writeMan);
        if (r0 == 0) {
            return WRITE_STATUS_TOTAL_FAIL;
        }
        if (r0 == 1) {
            writeMan->state++;
            if (writeMan->curSector + 1 == writeMan->numSectors) {
                return WRITE_STATUS_NEXT;
            }
        }
        break;
    case 2:
        writeMan->lockId = Save_WriteChunkFooterAsync(saveData, writeMan->curSector, saveData->lastGoodSector == 0);
        writeMan->waitingAsync = 1;
        writeMan->state++;
        FALLTHROUGH;
    case 3:
        if (WaitFlashWrite(writeMan->lockId, writeMan->waitingAsync, &sp0)) {
            writeMan->waitingAsync = 0;
            if (!sp0) {
                return WRITE_STATUS_TOTAL_FAIL;
            }
            writeMan->curSector++;
            if (writeMan->curSector == writeMan->numSectors) {
                return WRITE_STATUS_SUCCESS;
            }
            writeMan->state = 0;
        }
        break;
    }
    return WRITE_STATUS_CONTINUE;
}

int Save_WritePCBoxes(SaveData *saveData, struct AsyncWriteManager *writeMan) {
    int write_ok;

    switch (writeMan->state_sub) {
    case 0:
        if (saveData->nextBoxToWrite >= saveData->numModifiedBoxes) {
            writeMan->state_sub = 3;
        } else {
            writeMan->state_sub++;
        }
        break;
    case 1:
        writeMan->lockId = Save_WriteNextPCBox(saveData, &saveData->saveSlotSpecs[writeMan->curSector], saveData->lastGoodSector == 0);
        writeMan->waitingAsync = 1;
        writeMan->state_sub++;
        FALLTHROUGH;
    case 2:
        if (WaitFlashWrite(writeMan->lockId, writeMan->waitingAsync, &write_ok)) {
            writeMan->waitingAsync = 0;
            if (!write_ok) {
                return 0;
            }
            saveData->nextBoxToWrite++;
            writeMan->state_sub = 0;
        }
        break;
    case 3:
        writeMan->lockId = Save_WritePCFooter(saveData, &saveData->saveSlotSpecs[writeMan->curSector], saveData->lastGoodSector == 0);
        writeMan->waitingAsync = 1;
        writeMan->state_sub++;
        FALLTHROUGH;
    case 4:
        if (WaitFlashWrite(writeMan->lockId, writeMan->waitingAsync, &write_ok)) {
            writeMan->waitingAsync = 0;
            writeMan->state_sub = 0;
            if (!write_ok) {
                return 0;
            }
            return 1;
        }
        break;
    }
    return 2;
}

int Save_WriteNextPCBox(SaveData *saveData, struct SaveSlotSpec *spec, u8 slot) {
    u32 boxno;
    u32 box_size;
    u32 offset;

    box_size = 0x1000;
    offset = GetChunkOffsetFromCurrentSaveSlot(slot, spec);
    boxno = PCModifiedFlags_GetIndexOfNthModifiedBox(saveData->newBoxModifiedFlags, saveData->nextBoxToWrite);
    GF_ASSERT(boxno != 0xFF);
    return FlashWriteChunkInternal(offset + box_size * boxno, saveData->dynamic_region + spec->offset + box_size * boxno, box_size);
}

int Save_WritePCFooter(SaveData *saveData, struct SaveSlotSpec *spec, u8 slot) {
    u32 sector_size;
    struct SaveChunkFooter *footer;
    u32 spec_offset;
    void *dynamic_region_ptr;
    u32 offset;
    void *data;
    u32 pc_size;
    u16 crc;

    //pc_size = PCStorage_GetSizeOfBox() * PCStorage_GetNumBoxes();
    pc_size = 0x1000 * NUM_PC_BOXES;
    offset = GetChunkOffsetFromCurrentSaveSlot(slot, spec);
    data = saveData->dynamic_region + spec->offset;
    sector_size = spec->size - sizeof(struct SaveChunkFooter);
    GF_ASSERT(sector_size != 0);
    dynamic_region_ptr = saveData->dynamic_region;
    spec_offset = spec->offset;
    footer = GetSaveSectorFooterPtr(saveData, dynamic_region_ptr, 1);
    crc = SaveArray_CalcCRC16MinusFooter(saveData, (u8 *)dynamic_region_ptr + spec_offset, spec->size);
    GF_ASSERT(crc == footer->crc);
    return FlashWriteChunkInternal(offset + pc_size, data + pc_size, sector_size - pc_size);
}

u32 Save_CalcPCBoxModifiedFlags(SaveData *saveData) {
    u32 ret;

    ret = Save_GetPCBoxModifiedFlags(saveData);
    ret |= saveData->boxModifiedFlags;
    if (saveData->sectorCleanFlag[0] || saveData->sectorCleanFlag[1]) {
        ret = BOX_ALL_MODIFIED_FLAG;
    }
    return ret;
}

u32 PCModifiedFlags_CountModifiedBoxes(u32 flags) {
    u8 i, n;
    u32 t;

    n = 0;
    //t = PCStorage_GetNumBoxes();
    t = NUM_PC_BOXES;
    for (i = 0; i < t; i++) {
        if (flags & 1) {
            n++;
        }
        flags >>= 1;
        flags &= BOX_ALL_MODIFIED_FLAG;
    }
    return n;
}

u32 PCModifiedFlags_GetIndexOfNthModifiedBox(u32 flags, u8 last) {
    u8 i, n;
    u32 t;

    n = 0;
    //t = PCStorage_GetNumBoxes();
    t = NUM_PC_BOXES;
    for (i = 0; i < t; i++) {
        if (flags & 1) {
            if (n == last) {
                return i;
            }
            n++;
        }
        flags >>= 1;
        flags &= BOX_ALL_MODIFIED_FLAG;
    }
    return 0xFF;
}

// expanded save size at 020F62AC (0x23600)

// reduce heap size at 020F62BC (0x11D000)

#endif // EXPAND_PC_BOXES
#endif // ALLOW_SAVE_CHANGES

/**
 *  @brief check if an element of an array exists byte-for-byte in the buf sent to it
 *
 *  @param array pointer to any type array
 *  @param element pointer to any element of an array
 *  @param len number of elements in the overall array
 *  @param size size of each individual element, used both as length of element and length of members of array
 *  @return TRUE if the element exists verbatim inside of the array; FALSE otherwise
 */
BOOL LONG_CALL IsElementInArray(const void *array, void *element, u32 len, u32 size)
{
    u32 i, j;
    const u8 *arr = array;
    u8 *elem = element;
    //u8 buf[64];
    //sprintf(buf, "Called IsElementInArray(0x%08X, 0x%08X, 0x%X, 0x%X)\n", (const u32)array, (u32)element, len, size);
    //debugsyscall(buf);
    for (i = 0; i < len; i++)
    {
        for (j = 0; j < size; j++)
        {
            const u8 *currElem = &arr[i * size];
            if (j[currElem] != elem[j])
            {
                break;
            }
        }
        if (j == size)
            return TRUE;
    }
    //debugsyscall("Element is not in array!");
    return FALSE;
}

#if defined(DEBUG_PRINT_HEAP_OVERFLOW_MESSAGES) || defined(DEBUG_PRINT_HEAP_OVERFLOW_MESSAGES_ASSERT_FAIL)

#define sErrorMessagePrinterLock *(u32 *)(0x021D43B4)
#define CRASH_MESSAGE_HEAP_CHAR_START 79
#define CRASH_MESSAGE_RETADDR_CHAR_START 132

void PrintCrashMessageAndReset(u32 heapId, u32 retAddr) {
    u32 window;

    if (sErrorMessagePrinterLock == TRUE) {
        return;
    }

    sErrorMessagePrinterLock = TRUE;

    OS_SetArenaHi(0, OS_GetInitArenaHi(0));
    OS_SetArenaLo(0, OS_GetInitArenaLo(0));
    InitHeapSystem((void *)0x02108528, 1, 1, 0);

    sub_0200FBF4(0, 0);
    sub_0200FBF4(1, 0);

    OS_DisableIrqMask(1);
    OS_SetIrqFunction(1, (void *)(0x2096318|1));
    OS_EnableIrqMask(1);

    Main_SetVBlankIntrCB(NULL, NULL);
    Main_SetHBlankIntrCB(NULL, NULL);

    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    SetKeyRepeatTimers(4, 8);

    //gSystem.screensFlipped = FALSE;
    *(u8 *)(0x21D116C) = FALSE;

    GfGfx_SwapDisplay();
    G2_BlendNone();
    G2S_BlendNone();
    GX_SetVisibleWnd(0);
    GXS_SetVisibleWnd(0);
    GfGfx_SetBanks((void *)0x0210855C);

    void * bg_config = BgConfig_Alloc(0);
    SetBothScreensModesAndDisable((void *)0x02108530);
    InitBgFromTemplate(bg_config, 0, (void *)0x02108540, 0);
    BgClearTilemapBufferAndCommit(bg_config, 0);
    LoadUserFrameGfx1(bg_config, 0, 0x1F7, 2, 0, 0);
    LoadFontPal0(0, 0x20, 0);
    BG_ClearCharDataRange(0, 0x20, 0, 0);
    BG_SetMaskColor(0, RGB(27, 1, 1));
    BG_SetMaskColor(4, RGB(27, 1, 1));

    void *error_msgdata = NewMsgDataFromNarc(1, 27, 24, 0); // a027 subfile 41
    String *error_str = String_New(640, 0);

    ResetAllTextPrinters();

    AddWindow(bg_config, &window, (void *)(0x02108520));
    FillWindowPixelRect(&window, 0xF, 0, 0, 208, 144);
    DrawFrameAndWindow1(&window, FALSE, 0x1F7, 2);

    ReadMsgDataIntoString(error_msgdata, 126, error_str);
    error_str->data[  CRASH_MESSAGE_HEAP_CHAR_START] = 0x0121 + (heapId / 10);
    error_str->data[CRASH_MESSAGE_HEAP_CHAR_START+1] = 0x0121 + (heapId % 10);
    error_str->data[  CRASH_MESSAGE_RETADDR_CHAR_START] = 0x0121 + ((retAddr >> 28) & 0xF);
    error_str->data[CRASH_MESSAGE_RETADDR_CHAR_START+1] = 0x0121 + ((retAddr >> 24) & 0xF);
    error_str->data[CRASH_MESSAGE_RETADDR_CHAR_START+2] = 0x0121 + ((retAddr >> 20) & 0xF);
    error_str->data[CRASH_MESSAGE_RETADDR_CHAR_START+3] = 0x0121 + ((retAddr >> 16) & 0xF);
    error_str->data[CRASH_MESSAGE_RETADDR_CHAR_START+4] = 0x0121 + ((retAddr >> 12) & 0xF);
    error_str->data[CRASH_MESSAGE_RETADDR_CHAR_START+5] = 0x0121 + ((retAddr >>  8) & 0xF);
    error_str->data[CRASH_MESSAGE_RETADDR_CHAR_START+6] = 0x0121 + ((retAddr >>  4) & 0xF);
    error_str->data[CRASH_MESSAGE_RETADDR_CHAR_START+7] = 0x0121 + (retAddr & 0xF);
    AddTextPrinterParameterized(&window, 0, error_str, 0, 0, 0, NULL);
    String_Delete(error_str);

    GfGfx_BothDispOn();
    SetMasterBrightnessNeutral(0);
    SetMasterBrightnessNeutral(1);
    SetBlendBrightness(0, 0x3F, 3);

    sub_02038D90();

    while (TRUE) {
        HandleDSLidAction();
        sub_02036144();

        if (sub_02039AA4())
        {
            break;
        }
        OS_WaitIrq(TRUE, 1);
    }

    while (TRUE) {
        HandleDSLidAction();

        if (PAD_Read() & PAD_BUTTON_A) {
            break;
        }

        OS_WaitIrq(TRUE, 1);
    }

    sub_0200FBF4(0, 0x7FFF);
    sub_0200FBF4(1, 0x7FFF);

    RemoveWindow(&window);
    DestroyMsgData(error_msgdata);
    sys_FreeMemoryEz(bg_config);

    OS_ResetSystem(0);
}

#endif // DEBUG_PRINT_HEAP_OVERFLOW_MESSAGES

void AllocFail(u32 retAddr UNUSED) {
#ifdef DEBUG_PRINT_HEAP_OVERFLOW_MESSAGES
    // r5 is actually always heap id, spC is lr.  AllocFail_hook will pass us the retAddr
    register u32 heapId asm("r5");
    //if (sub_02037D78())
    {
        PrintCrashMessageAndReset(heapId, retAddr);
    }
#endif // DEBUG_PRINT_HEAP_OVERFLOW_MESSAGES
}

void GF_AssertFail(void) {
#ifdef DEBUG_PRINT_HEAP_OVERFLOW_MESSAGES_ASSERT_FAIL
    register u32 retAddr asm("lr");
    PrintCrashMessageAndReset(255, retAddr);
#endif // DEBUG_PRINT_HEAP_OVERFLOW_MESSAGES_ASSERT_FAIL
}

#ifdef DEBUG_PRINT_HEAP_ALLOCATION
extern u32 AllocFromHeapInternal_return_address;
#endif

void *AllocFromHeapInternal(void * heap UNUSED, u32 size UNUSED, s32 alignment UNUSED, u32 heapId UNUSED) {
#ifdef DEBUG_PRINT_HEAP_ALLOCATION
    //GF_ASSERT(heap);
    // sp+0x14 is always retAddr from AllocFromHeap/Lo.  we store it in r5 before jumping here
    register u32 retAddr asm("r5");
    u32 retAddrPerm = retAddr;
    BOOL better = (AllocFromHeapInternal_return_address == (0x0201AAEC|1));

    if ((*(u32 *)0x0225F18C == 0xFFFFE9E0) // overlay 123 is loaded
     && (size == 1000 || (retAddrPerm >= 0x0225F020 && retAddrPerm <= 0x02260D74)))
    {
        debug_printf("[AllocFromHeapInternal] Return address in overlay 123/124 territory.  Assume clobber attempt.\n");
        return NULL;
    }

    u32 intr_mode = OS_DisableInterrupts();
    size += 0x10;
    u8 *ptr = NNS_FndAllocFromExpHeapEx(heap, size, alignment);

    OS_RestoreInterrupts(intr_mode);
    if (ptr != NULL) {
        //((MemoryBlock *)ptr)->heapId = heapId;
        *(u32 *)(&ptr[0xC]) = heapId;

        ptr = &ptr[0x10];
    }

    debug_printf("[AllocFromHeapInternal] %sheapId: %2d, size: %05X @ 0x%08X, retAddr: 0x%08X, total free space: 0x%05X\n", better ? "LO " : "   ", heapId, size, (u32)ptr, retAddrPerm, GF_ExpHeap_FndGetTotalFreeSize(heapId));
    return ptr;
#else
    return NULL;
#endif
}

// now get to find out just *what* fails to load i guess
void FreeToHeap(u8 *ptr UNUSED) {
#ifdef DEBUG_PRINT_HEAP_ALLOCATION
    u8 heapId = ptr[-4]; // trust bro
    debug_printf("[FreeToHeap]    Freeing 0x%08X from heap %2d...  new free space: 0x%05X\n", (u32)ptr, heapId, GF_ExpHeap_FndGetTotalFreeSize(heapId));
#endif
}
void FreeToHeapExplicit(u8 *ptr UNUSED) {
#ifdef DEBUG_PRINT_HEAP_ALLOCATION
    u8 heapId = ptr[0xC];
    debug_printf("[FreeToHeap] EX Freeing 0x%08X from heap %2d...  new free space: 0x%05X\n", (u32)&ptr[0x10], heapId, GF_ExpHeap_FndGetTotalFreeSize(heapId));
#endif
}


#ifdef DEBUG_PRINT_HEAP_CREATION
u8 parentHeaps[256] = {0};
u32 heapSizes[100] = {0};
#endif

void CreateHeapInternal(u32 parent UNUSED, u32 child UNUSED, u32 size UNUSED, s32 alignment UNUSED) {
#ifdef DEBUG_PRINT_HEAP_CREATION
    debug_printf("[CreateHeapInternal] Heap %2d (0x%05X bytes) created from heap %2d (pre-size 0x%05X bytes) at the %s.\n", child, size, parent, GF_ExpHeap_FndGetTotalFreeSize(parent), alignment == 4 ? "start" : "end");
    parentHeaps[child] = parent;
    heapSizes[child] = size;
#endif
}

void DestroyHeap(u32 heapId UNUSED) {
#ifdef DEBUG_PRINT_HEAP_CREATION
    debug_printf("[DestroyHeap] Destroyed heap %2d (size 0x%05X) from parent heap %2d. New size: 0x%05X\n", heapId, heapId < NELEMS(heapSizes) ? heapSizes[heapId] : -1, parentHeaps[heapId], GF_ExpHeap_FndGetTotalFreeSize(parentHeaps[heapId]));
    parentHeaps[heapId] = 0;
    heapSizes[heapId] = 0;
#endif
}
