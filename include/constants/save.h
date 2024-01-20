#ifndef CONSTANTS_SAVE_H
#define CONSTANTS_SAVE_H

#define OFFSET_saveSlotSpecs 0x2F2B4
#define OFFSET_lastGoodSaveSlot 0x2F2F0
#define OFFSET_lastGoodSaveNo 0x2F2F4
#define OFFSET_sectorCleanFlag 0x2F308
#define OFFSET_lastGoodSector 0x2F30A

#define FULL_SAVE_SIZE 0x2F600
#define DYNAMIC_REGION_SIZE 0x2F000
#define DYNAMIC_REGION_BYTEWIDE_SIZE 0x2F
#define NEW_HEAP3_SIZE 0x110000

// done this way so scripts/make.py can understand
#define SAVE_PAGE_MAX 0x2F
#define SAVE_PAGE_MAX_3 0x32
#define SAVE_PAGE_MAX_4 0x33
#define SAVE_PAGE_MAX_6 0x35
#define SAVE_PAGE_MAX_8 0x37
#define SAVE_PAGE_MAX_10 0x39

#define SAVE_SECTOR_SIZE 0x1000
#define SAVE_BLOCK_NUM 42

#define NUM_PC_BOXES 30
#define NUM_PC_BOXES_MINUS_ONE 29

#endif // CONSTANTS_SAVE_H
