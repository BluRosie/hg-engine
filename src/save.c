#include "../include/types.h"
#include "../include/config.h"
#include "../include/debug.h"
#include "../include/pokemon.h"
#include "../include/pokemon_storage_system.h"
#include "../include/save.h"
#include "../include/script.h"
#include "../include/task.h"


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
    if (var_id < 0x8000)
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
    u8 buf[64];
    for (int i = 0x0; i < size; i += 0x10)
    {
        sprintf(buf, "\n%08X:  ", (u32)&start[i]);
        debugsyscall(buf);
        sprintf(buf, "%02X %02X ", start[i+0], start[i+1]);
        debugsyscall(buf);
        sprintf(buf, "%02X %02X ", start[i+2], start[i+3]);
        debugsyscall(buf);
        sprintf(buf, "%02X %02X ", start[i+4], start[i+5]);
        debugsyscall(buf);
        sprintf(buf, "%02X %02X ", start[i+6], start[i+7]);
        debugsyscall(buf);
        sprintf(buf, "%02X %02X ", start[i+8], start[i+9]);
        debugsyscall(buf);
        sprintf(buf, "%02X %02X ", start[i+0xA], start[i+0xB]);
        debugsyscall(buf);
        sprintf(buf, "%02X %02X ", start[i+0xC], start[i+0xD]);
        debugsyscall(buf);
        sprintf(buf, "%02X %02X ", start[i+0xE], start[i+0xF]);
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
