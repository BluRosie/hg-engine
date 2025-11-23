#include "../../include/battle.h"
#include "../../include/debug.h"
#include "../../include/constants/file.h"

#define NUM_VANILLA_BATTLE_BACKGROUNDS 23
#define NUM_CUSTOM_BACKGROUNDS 4
#define TOTAL_BACKGROUNDS (NUM_VANILLA_BATTLE_BACKGROUNDS + NUM_CUSTOM_BACKGROUNDS)

// Structure matching vanilla table entries (0x30 bytes each)
typedef struct PACKED BattleBgTableEntry{
    u8 header[0x28];                                           // Vanilla config data
    void (*callback)(void *unkPtr, int bgId, int flag);        // Callback at offset 0x28
    void *extraFn;                                             // Additional function at offset 0x2C
} BattleBgTableEntry;

// External reference to vanilla table (force even address for data)
extern BattleBgTableEntry ov12_0226E70C[] __attribute__((aligned(4)));

// Forward declaration
void LONG_CALL CustomBattleBackgroundCallback(void *unkPtr, int bgId, int flag);

// External references
extern BattleBGStorage NewBattleBgTable[];
extern u32 LONG_CALL GfGfxLoader_LoadCharData(u32 narcId, s32 memberNo, void *bgConfig, u32 layer, u32 tileStart, u32 szByte, BOOL isCompressed, u32 heapId);
void LONG_CALL GfGfxLoader_LoadScrnData(u32 narcId, s32 memberNo, void *bgConfig, u32 layer, u32 tileStart, u32 szByte, BOOL isCompressed, u32 heapID);
extern void LONG_CALL PaletteData_LoadNarc(void *data, u32 narcID, s32 memberNo, u32 heapID, u32 bufferID, u32 size, u16 pos);

// Our expanded table (will be populated at runtime)
BattleBgTableEntry gExpandedBattleBgTable[TOTAL_BACKGROUNDS];

/**
 * @brief Initialize the expanded battle background table
 * Copies vanilla entries and adds custom entries with callbacks
 */
void LONG_CALL InitExpandedBattleBgTable(void) {
    debug_printf("InitExpandedBattleBgTable: Starting initialization...\n");

    // Mask off Thumb bit to get real data address
    BattleBgTableEntry *vanillaTable = (BattleBgTableEntry *)((u32)ov12_0226E70C & ~1);

    debug_printf("  Vanilla table address (raw): %p\n", ov12_0226E70C);
    debug_printf("  Vanilla table address (fixed): %p\n", vanillaTable);
    debug_printf("  Expanded table address: %p\n", gExpandedBattleBgTable);

    // Copy all vanilla entries without modifying their callbacks
    // Vanilla code needs these to work normally for bottom screen, etc.
    for (int i = 0; i < NUM_VANILLA_BATTLE_BACKGROUNDS; i++) {
        memcpy(&gExpandedBattleBgTable[i], &vanillaTable[i], sizeof(BattleBgTableEntry));
        if (i == 0) {
            debug_printf("  Vanilla entry 0 callback: %p\n", vanillaTable[0].callback);
        }
    }

    // Set callback ONLY on entry 0 to detect when we need custom backgrounds
    // This is called with flag=1 during main background setup
    gExpandedBattleBgTable[0].callback = CustomBattleBackgroundCallback;


    // Add custom entries (using vanilla entry 0 as template for header)
    for (int i = 0; i < NUM_CUSTOM_BACKGROUNDS; i++) {
        int idx = NUM_VANILLA_BATTLE_BACKGROUNDS + i;

        // Copy header from vanilla entry 0 (safe default)
        memcpy(gExpandedBattleBgTable[idx].header, gExpandedBattleBgTable[0].header, 0x28);

        // Set our callback for custom backgrounds
        gExpandedBattleBgTable[idx].callback = CustomBattleBackgroundCallback;
        gExpandedBattleBgTable[idx].extraFn = NULL;

        debug_printf("  Custom entry %d (idx=%d) callback set to: %p\n", i, idx, gExpandedBattleBgTable[idx].callback);
    }

    // memset(gExpandedBattleBgTable[0].header, 0xFF, 0x28);  // all halfwords become 0xFFFF
    // gExpandedBattleBgTable[0].callback = CustomBattleBackgroundCallback;
    // gExpandedBattleBgTable[0].extraFn  = NULL;

    debug_printf("InitExpandedBattleBgTable: Created table with %d entries\n", TOTAL_BACKGROUNDS);
    debug_printf("  CustomBattleBackgroundCallback function address: %p\n", CustomBattleBackgroundCallback);
}

/**
 * @brief Callback for custom battle backgrounds
 * Called by vanilla code after standard setup is complete
 */
void LONG_CALL CustomBattleBackgroundCallback(void *unkPtr, int bgId, int flag) {
    debug_printf("CustomBattleBackgroundCallback: unkPtr=%p, bgId=%d, flag=%d\n", unkPtr, bgId, flag);

    // Try to extract BattleSystem from pointer array
    struct BattleSystem **ptrArray = (struct BattleSystem **)unkPtr;
    struct BattleSystem *bsys = ptrArray[0];

    debug_printf("  Extracted bsys=%p, bgId=%d, terrain=%d\n", bsys, bsys->bgId, bsys->terrain);

    // Only load custom backgrounds (>= 23), for vanilla backgrounds do nothing
    if (bsys->bgId < NUM_VANILLA_BATTLE_BACKGROUNDS) {
        debug_printf("  Vanilla bgId, skipping custom loading\n");
        return;
    }

    // Only load on flag=1 (main background loading)
    if (flag != 1) {
        debug_printf("  Wrong flag value, skipping (flag=%d)\n", flag);
        return;
    }

    debug_printf("  Loading custom background for bgId=%d\n", bsys->bgId);

    // Get the NARC file indices for this custom background
    u32 customIdx = bsys->bgId - NUM_VANILLA_BATTLE_BACKGROUNDS;
    u32 bg_narc = NewBattleBgTable[customIdx].baseEntry;
    u32 palette_narc = bg_narc + 1;

    debug_printf("  NARC indices: bg=%d, palette=%d\n", bg_narc, palette_narc);

    // Load full background (graphics, tilemap, palette)
    // Note: Loading during sprite setup causes artifacts - requires hooking ov12_02266508 to fix properly
    GfGfxLoader_LoadCharData(7, bg_narc, bsys->bgConfig, 3, 0, 0, TRUE, 5);
    GfGfxLoader_LoadScrnData(7, bg_narc+2, bsys->bgConfig, 3, 0, 0, 1, 5);
    PaletteData_LoadNarc(bsys->palette, 7, palette_narc, 5, 0, 0, 0);

    // Reload message box palettes
    PaletteData_LoadNarc(bsys->palette, 38, 26, 5, 0, 0x20, 0xA0);
    PaletteData_LoadNarc(bsys->palette, 16, 8, 5, 0, 0x20, 0x80);
    PaletteData_LoadNarc(bsys->palette, 16, 8, 5, 0, 0x20, 0xB0);

    // Reload battle platform/ground actors (might fix sprite artifacts)
    extern void LONG_CALL Ground_ActorResourceSet(GROUND_WORK *ground, void *bw, u32 side, u32 terrain);
    Ground_ActorResourceSet(&bsys->ground[0], bsys, 0, bsys->terrain);
    Ground_ActorResourceSet(&bsys->ground[1], bsys, 1, bsys->terrain);

    debug_printf("CustomBattleBackgroundCallback: Loaded custom background\n");
    debug_printf("  Note: Sprite artifacts may occur due to timing of background load\n");
}
