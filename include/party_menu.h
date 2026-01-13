#ifndef POKEHEARTGOLD_PARTY_MENU_H
#define POKEHEARTGOLD_PARTY_MENU_H

#include "types.h"

#include "bag.h"
#include "message.h"
#include "pokemon.h"
#include "window.h"

#define MAX_MON_MOVES             4
#define MAX_BUTTONS_IN_PARTY_MENU 8

#define TEXT_SPEED_INSTANT        0    // Transfers to VRAM
#define TEXT_SPEED_NOTRANSFER     0xFF // Defers VRAM transfer

#define TILEMAP_FILL_KEEP_PAL 16   // Do not replace the selected palette index
#define TILEMAP_FILL_OVWT_PAL 17   // Fill value includes palette

#define LIST_HEADER         -3
#define LIST_CANCEL         -2
#define LIST_NOTHING_CHOSEN -1

#define _PARTY_MENU_WINDOW_ID_MAX 40
#define _PARTY_MENU_SPRITE_ID_MAX 29

#define MAKE_TEXT_COLOR(fg, sh, bg) ((((fg) & 0xFF) << 16) | (((sh) & 0xFF) << 8) | (((bg) & 0xFF) << 0))

typedef enum PartyMenuWindowId {
    PARTY_MENU_WINDOW_ID_MON1_NICKNAME,
    PARTY_MENU_WINDOW_ID_MON1_LEVEL,
    PARTY_MENU_WINDOW_ID_MON1_HPTEXT,
    PARTY_MENU_WINDOW_ID_MON1_HPBAR,
    PARTY_MENU_WINDOW_ID_MON1_COMPAT,
    PARTY_MENU_WINDOW_ID_MON2_NICKNAME,
    PARTY_MENU_WINDOW_ID_MON2_LEVEL,
    PARTY_MENU_WINDOW_ID_MON2_HPTEXT,
    PARTY_MENU_WINDOW_ID_MON2_HPBAR,
    PARTY_MENU_WINDOW_ID_MON2_COMPAT,
    PARTY_MENU_WINDOW_ID_MON3_NICKNAME,
    PARTY_MENU_WINDOW_ID_MON3_LEVEL,
    PARTY_MENU_WINDOW_ID_MON3_HPTEXT,
    PARTY_MENU_WINDOW_ID_MON3_HPBAR,
    PARTY_MENU_WINDOW_ID_MON3_COMPAT,
    PARTY_MENU_WINDOW_ID_MON4_NICKNAME,
    PARTY_MENU_WINDOW_ID_MON4_LEVEL,
    PARTY_MENU_WINDOW_ID_MON4_HPTEXT,
    PARTY_MENU_WINDOW_ID_MON4_HPBAR,
    PARTY_MENU_WINDOW_ID_MON4_COMPAT,
    PARTY_MENU_WINDOW_ID_MON5_NICKNAME,
    PARTY_MENU_WINDOW_ID_MON5_LEVEL,
    PARTY_MENU_WINDOW_ID_MON5_HPTEXT,
    PARTY_MENU_WINDOW_ID_MON5_HPBAR,
    PARTY_MENU_WINDOW_ID_MON5_COMPAT,
    PARTY_MENU_WINDOW_ID_MON6_NICKNAME,
    PARTY_MENU_WINDOW_ID_MON6_LEVEL,
    PARTY_MENU_WINDOW_ID_MON6_HPTEXT,
    PARTY_MENU_WINDOW_ID_MON6_HPBAR,
    PARTY_MENU_WINDOW_ID_MON6_COMPAT,

    PARTY_MENU_WINDOW_ID_30,
    PARTY_MENU_WINDOW_ID_31,
    PARTY_MENU_WINDOW_ID_32,
    PARTY_MENU_WINDOW_ID_33,
    PARTY_MENU_WINDOW_ID_34,
    PARTY_MENU_WINDOW_ID_35,
    PARTY_MENU_WINDOW_ID_36,
    PARTY_MENU_WINDOW_ID_37,
    PARTY_MENU_WINDOW_ID_38,
    PARTY_MENU_WINDOW_ID_39,
    PARTY_MENU_WINDOW_ID_MAX,

    PARTY_MENU_WINDOWS_PER_MON = 5,
} PartyMenuWindowId;

typedef enum PartyMenuSpriteId {
    PARTY_MENU_SPRITE_ID_BALL,
    PARTY_MENU_SPRITE_ID_1,
    PARTY_MENU_SPRITE_ID_2,
    PARTY_MENU_SPRITE_ID_3,
    PARTY_MENU_SPRITE_ID_4,
    PARTY_MENU_SPRITE_ID_5,
    PARTY_MENU_SPRITE_ID_CURSOR,
    PARTY_MENU_SPRITE_ID_SWITCH_MON_CURSOR,
    PARTY_MENU_SPRITE_ID_8,
    PARTY_MENU_SPRITE_ID_9,
    PARTY_MENU_SPRITE_ID_MON1_STATUS,
    PARTY_MENU_SPRITE_ID_MON2_STATUS,
    PARTY_MENU_SPRITE_ID_MON3_STATUS,
    PARTY_MENU_SPRITE_ID_MON4_STATUS,
    PARTY_MENU_SPRITE_ID_MON5_STATUS,
    PARTY_MENU_SPRITE_ID_MON6_STATUS,
    PARTY_MENU_SPRITE_ID_MON1_HELD_ITEM,
    PARTY_MENU_SPRITE_ID_MON2_HELD_ITEM,
    PARTY_MENU_SPRITE_ID_MON3_HELD_ITEM,
    PARTY_MENU_SPRITE_ID_MON4_HELD_ITEM,
    PARTY_MENU_SPRITE_ID_MON5_HELD_ITEM,
    PARTY_MENU_SPRITE_ID_MON6_HELD_ITEM,
    PARTY_MENU_SPRITE_ID_MON1_CAPSULE,
    PARTY_MENU_SPRITE_ID_MON2_CAPSULE,
    PARTY_MENU_SPRITE_ID_MON3_CAPSULE,
    PARTY_MENU_SPRITE_ID_MON4_CAPSULE,
    PARTY_MENU_SPRITE_ID_MON5_CAPSULE,
    PARTY_MENU_SPRITE_ID_MON6_CAPSULE,
    PARTY_MENU_SPRITE_ID_28,
    PARTY_MENU_SPRITE_ID_MAX,
} PartyMenuSpriteId;

typedef enum PartyMenuContext {
    PARTY_MENU_CONTEXT_0,
    PARTY_MENU_CONTEXT_1,
    PARTY_MENU_CONTEXT_UNION_ROOM_BATTLE_SELECT,
    PARTY_MENU_CONTEXT_3,
    PARTY_MENU_CONTEXT_4,
    PARTY_MENU_CONTEXT_USE_ITEM,
    PARTY_MENU_CONTEXT_TM_HM,
    PARTY_MENU_CONTEXT_REPLACE_MOVE_TMHM,
    PARTY_MENU_CONTEXT_REPLACE_MOVE_LEVELUP,
    PARTY_MENU_CONTEXT_9,
    PARTY_MENU_CONTEXT_10,
    PARTY_MENU_CONTEXT_11,
    PARTY_MENU_CONTEXT_12,
    PARTY_MENU_CONTEXT_SUPER_CONTEST,
    PARTY_MENU_CONTEXT_GIVE_MAIL_FROM_MAILBOX,
    PARTY_MENU_CONTEXT_ATTACH_CAPSULE,
    PARTY_MENU_CONTEXT_EVO_STONE,
    PARTY_MENU_CONTEXT_17,
    PARTY_MENU_CONTEXT_18,
    PARTY_MENU_CONTEXT_INGAME_TRADE,
    PARTY_MENU_CONTEXT_20,
    PARTY_MENU_CONTEXT_SPIN_TRADE,
    PARTY_MENU_CONTEXT_BATTLE_HALL,
    PARTY_MENU_CONTEXT_23,
} PartyMenuContext;

typedef enum PartyMonContextMenuItem {
    PARTY_MON_CONTEXT_MENU_SWITCH,
    PARTY_MON_CONTEXT_MENU_SUMMARY,
    PARTY_MON_CONTEXT_MENU_ITEM,
    PARTY_MON_CONTEXT_MENU_GIVE,
    PARTY_MON_CONTEXT_MENU_TAKE,
    PARTY_MON_CONTEXT_MENU_MAIL,             // 5
    PARTY_MON_CONTEXT_MENU_READ_MAIL,
    PARTY_MON_CONTEXT_MENU_TAKE_MAIL,
    PARTY_MON_CONTEXT_MENU_STORE,
    PARTY_MON_CONTEXT_MENU_QUIT,
    PARTY_MON_CONTEXT_MENU_UNUSED,           // 10
    PARTY_MON_CONTEXT_MENU_ENTER,
    PARTY_MON_CONTEXT_MENU_NO_ENTRY,
    PARTY_MON_CONTEXT_MENU_CONTEST_ENTER,
    PARTY_MON_CONTEXT_MENU_SET,
    PARTY_MON_CONTEXT_MENU_CONFIRM,          // 15
    // field moves
    PARTY_MON_CONTEXT_MENU_CUT,
    PARTY_MON_CONTEXT_MENU_FLY,
    PARTY_MON_CONTEXT_MENU_SURF,
    PARTY_MON_CONTEXT_MENU_STRENGTH,
    PARTY_MON_CONTEXT_MENU_ROCK_SMASH,       // 20
    PARTY_MON_CONTEXT_MENU_WATERFALL,
    PARTY_MON_CONTEXT_MENU_ROCK_CLIMB,
    PARTY_MON_CONTEXT_MENU_WHIRLPOOL,
    PARTY_MON_CONTEXT_MENU_FLASH,
    PARTY_MON_CONTEXT_MENU_TELEPORT,         // 25
    PARTY_MON_CONTEXT_MENU_DIG,
    PARTY_MON_CONTEXT_MENU_SWEET_SCENT,
    PARTY_MON_CONTEXT_MENU_CHATTER,
    PARTY_MON_CONTEXT_MENU_HEADBUTT,
    PARTY_MON_CONTEXT_MENU_MILK_DRINK,       // 30
    PARTY_MON_CONTEXT_MENU_SOFTBOILED,
    PARTY_MON_CONTEXT_MENU_MAX,

    PARTY_MON_CONTEXT_MENU_FIELD_MOVES_BEGIN = PARTY_MON_CONTEXT_MENU_CUT,
    PARTY_MON_CONTEXT_MENU_FIELD_MOVES_COUNT = PARTY_MON_CONTEXT_MENU_MAX - PARTY_MON_CONTEXT_MENU_FIELD_MOVES_BEGIN,
    PARTY_MON_CONTEXT_MENU_NUM_STRINGS       = PARTY_MON_CONTEXT_MENU_CUT + MAX_MON_MOVES,
} PartyMonContextMenuItem;

typedef enum PartyMenuState {
    PARTY_MENU_STATE_INIT,
    PARTY_MENU_STATE_1,
    PARTY_MENU_STATE_HANDLE_CONTEXT_MENU_INPUT,
    PARTY_MENU_STATE_3,
    PARTY_MENU_STATE_USE_ITEM_SELECT_MON,
    PARTY_MENU_STATE_ITEM_USE_CB,                    // 5
    PARTY_MENU_STATE_SELECT_MOVE,
    PARTY_MENU_STATE_SACRED_ASH,
    PARTY_MENU_STATE_GIVE_ITEM_SELECT_MON,
    PARTY_MENU_STATE_PRINT_ASK_SWITCH_ITEMS,
    PARTY_MENU_STATE_YESNO_ASK_SWITCH_ITEMS,         // 10
    PARTY_MENU_STATE_PRINT_ITEM_SWAP_MESSAGE,
    PARTY_MENU_STATE_PRINT_GIVE_GRISEOUS_ORB_MESSAGE,
    PARTY_MENU_STATE_WAIT_GIVE_GRISEOUS_ORB_ANIM,
    PARTY_MENU_STATE_14,
    PARTY_MENU_STATE_HANDLE_SUBCONTEXT_MENU_INPUT,   // 15
    PARTY_MENU_STATE_GIVE_ITEM_TO_MON,
    PARTY_MENU_STATE_PRINT_TAKE_ITEM_MESSAGE,
    PARTY_MENU_STATE_PRINT_TAKE_GRISEOUS_ORB_MESSAGE,
    PARTY_MENU_STATE_WAIT_TAKE_GRISEOUS_ORB_ANIM,
    PARTY_MENU_STATE_AFTER_TAKE_MAIL,                // 20
    PARTY_MENU_STATE_USE_TMHM,
    PARTY_MENU_STATE_TMHM_LEARN_MOVE,
    PARTY_MENU_STATE_SELECT_MONS_ERROR_MSG_CLOSE,
    PARTY_MENU_STATE_WAIT_TEXT_PRINTER,
    PARTY_MENU_STATE_AFTER_MESSAGE_BEGIN_EXIT,       // 25
    PARTY_MENU_STATE_YES_NO_INIT,
    PARTY_MENU_STATE_YES_NO_HANDLE_INPUT,
    PARTY_MENU_STATE_SELECT_SWITCH_MON,
    PARTY_MENU_STATE_29,
    PARTY_MENU_STATE_SOFTBOILED,                     // 30
    PARTY_MENU_STATE_FORM_CHANGE_ANIM,
    PARTY_MENU_STATE_BEGIN_EXIT,
    PARTY_MENU_STATE_WAIT_EXIT_FADE_OUT,
} PartyMenuState;

typedef enum PartyMenuActionReturn {
    PARTY_MENU_ACTION_RETURN_0,
    PARTY_MENU_ACTION_RETURN_1,
    PARTY_MENU_ACTION_RETURN_2,
    PARTY_MENU_ACTION_RETURN_GIVE_ITEM,
    PARTY_MENU_ACTION_RETURN_4,
    PARTY_MENU_ACTION_RETURN_5,
    PARTY_MENU_ACTION_RETURN_6,
    PARTY_MENU_ACTION_RETURN_READ_MAIL,
    PARTY_MENU_ACTION_RETURN_EVO_ITEM_USE,
    PARTY_MENU_ACTION_RETURN_EVO_RARE_CANDY,
    PARTY_MENU_ACTION_RETURN_10,

    PARTY_MENU_ACTION_RETURN_CUT,
    PARTY_MENU_ACTION_RETURN_FLY,
    PARTY_MENU_ACTION_RETURN_SURF,
    PARTY_MENU_ACTION_RETURN_STRENGTH,
    PARTY_MENU_ACTION_RETURN_ROCK_SMASH,
    PARTY_MENU_ACTION_RETURN_WATERFALL,
    PARTY_MENU_ACTION_RETURN_ROCK_CLIMB,
    PARTY_MENU_ACTION_RETURN_FLASH,
    PARTY_MENU_ACTION_RETURN_TELEPORT,
    PARTY_MENU_ACTION_RETURN_DIG,
    PARTY_MENU_ACTION_RETURN_SWEET_SCENT,
    PARTY_MENU_ACTION_RETURN_CHATTER,
    PARTY_MENU_ACTION_RETURN_WHIRLPOOL,
    PARTY_MENU_ACTION_RETURN_HEADBUTT,
    PARTY_MENU_ACTION_RETURN_MILK_DRINK,
    PARTY_MENU_ACTION_RETURN_SOFTBOILED,

    PARTY_MENU_ACTION_RETURN_FIELD_MOVE_BEGIN = PARTY_MENU_ACTION_RETURN_CUT,
} PartyMenuActionReturn;

typedef struct FieldSystem FieldSystem;

typedef struct PartyMenuArgs {
    struct Party *party;
    BAG_DATA *bag;
    void *mailbox;
    void *options;
    void *unk_10;
    void *linkBattleRuleset;
    void *fieldMoveCheckData;
    FieldSystem *fieldSystem;
    void *menuInputStatePtr;
    u8 context;
    u8 unk_25;
    u8 partySlot;
    u8 selectedAction;
    u16 itemId;
    u16 moveId;
    u8 selectedMoveIdx;
    u8 unk_2D;
    u8 contestStat;
    u8 contestLevel;
    u8 selectedOrder[6];
    u8 minMonsToSelect : 4;
    u8 maxMonsToSelect : 4;
    u8 maxLevel;
    int levelUpMoveSearchState;
    u16 species;
    int evoMethod;
} PartyMenuArgs;

typedef struct LISTMENUITEM {
    String *text;
    s32 value;
} LISTMENUITEM;

typedef struct PartyMenuMonsDrawState {
    String *nickname; // 828
    u16 species;      // 82C
    u16 hp;           // 82E
    u16 maxHp;        // 830
    u16 level;        // 832
    u16 heldItem;     // 834
    u16 status : 12;  // 836
    u16 dontPrintGenderSymbol : 1;
    u16 gender : 2;
    u16 isContestCompatible : 1;
    u8 isEgg;                     // 838
    u8 form;                      // 839
    u16 capsule;                  // 83A
    s8 unk_14;                    // 83C
    s8 unk_15;                    // 83D
    s16 iconX;                    // 83E
    s16 iconY;                    // 840
    s16 statusIconX;              // 842
    s16 statusIconY;              // 844
    s16 heldItemX;                // 846
    s16 heldItemY;                // 848
    u8 filler_22[2];              // alignment padding
    void *iconSprite;           // 84C
    void *mainScreenIconSprite; // 850
    u8 unk_2C;                    // 854
    u8 active;                    // 855
} PartyMenuMonsDrawState;

typedef struct PartyMenuContextMenu {
    LISTMENUITEM *items;
    struct Window *window;
    u8 unk_08;
    u8 unk_09;
    u8 numItems;
    u8 unk_0B_0 : 4;
    u8 unk_0B_4 : 2;
    u8 scrollEnabled : 2;
} PartyMenuContextMenu;

typedef struct PartyMenuContextMenuCursor {
    u8 prevSelection;
    u8 selection;
    u8 numItems;
    u8 state;
    struct PartyMenuContextMenu menu;
} PartyMenuContextMenuCursor;

typedef struct UnkStruct_02020654 {
    u8 unk_0;
    u8 unk_1;
    u8 unk_2;
    u8 unk_3;
    u8 unk_4;
    u8 unk_5;
    u8 unk_6;
    u8 unk_7;
} UnkStruct_02020654;

typedef struct PartyMenuSwapMonsData {
    u16 bg2Tilemaps[2][0x60];
    u16 bg1Tilemaps[2][0x60];
    u8 slots[2];
    u8 directions[2];
    u8 active;
    u8 state;
    u8 xOffset;
} PartyMenuSwapMonsData;

typedef struct PartyMenuContextButtonAnimData {
    PartyMenuContextMenu *template;
    u8 numItems;
    u8 selection;
    u8 autoAnimTimer : 4;
    u8 buttonAnimState : 4;
    u8 state;
    int followUpState;
    BOOL active;
} PartyMenuContextButtonAnimData;

struct PartyMenu {
    void *bgConfig;
    struct Window windows[_PARTY_MENU_WINDOW_ID_MAX];
    struct Window levelUpStatsWindow[1];       // 0x284
    struct Window contextMenuButtonWindows[8]; // 0x294
    u16 unk_314[6 * 0x10];
    u16 unk_3D4[6 * 0x10];
    u16 unk_494[6 * 0x10];
    u16 hpBarPalettes[0x80];
    PartyMenuArgs *args; // 0x654
    /* 0x658 */ void* /*SpriteSystem **/ spriteRenderer;
    /* 0x65C */ void* /*SpriteManager **/ spriteGfxHandler;
    /* 0x660 */ void* /*Sprite **/ sprites[_PARTY_MENU_SPRITE_ID_MAX]; // 0x660
    void *unk_6D4[PARTY_MENU_SPRITE_ID_MAX];
    void *mainScreenStatusSprites[29]; // 0x748
    void *msgPrinter;          // 0x7bc
    MsgData *msgData;                    // 0x7c0
    MessageFormat *msgFormat;            // 0x7c4
    String *formattedStrBuf;             // 0x7c8
    String *unformattedStrBuf;
    String *contextMenuStrings[20];      // 0x7d0
    LISTMENUITEM *listMenuItems;         // 0x820
    struct PartyMenuContextMenuCursor *contextMenuCursor;
    struct PartyMenuMonsDrawState monsDrawState[6]; // 0x828
    const struct UnkStruct_02020654 *unk_948;
    PartyMenuSwapMonsData swapMonsData;
    int (*itemUseCallback)(struct PartyMenu *);
    int (*yesCallback)(struct PartyMenu *); // 0xc58
    int (*noCallback)(struct PartyMenu *);  // 0xc5c
    u8 unk_C60;
    u8 unk_C61;
    u8 afterTextPrinterState;
    u8 softboiledDonorSlot : 6;
    u8 secondCursorActive : 1;
    u8 cancelDisabled : 1;
    u8 textPrinterId;
    u8 partyMonIndex; // 0xc65 (pos)
    u8 unk_C66;
    u8 levelUpLearnMovesLoopState;
    u16 levelUpStatsTmp[6];
    struct Save_DexData *pokedex; // 0xc74
    int topScreenPanelYPos;
    BOOL topScreenPanelShow;
    void *iconFormChange; // C80
    void *gf3dVramMan;           // C84
    void *yesNoPrompt;
    u8 filler_C8C[4];
    struct PartyMenuContextButtonAnimData contextMenuButtonAnim;
    u8 filler_CA0[0x8];
}; // CA8

u8 LONG_CALL MoveId_GetFieldEffectId(u16 move);
void LONG_CALL PartyMenu_ContextMenuAddFieldMove(struct PartyMenu *wk, u16 move, u8 index);
BOOL LONG_CALL FieldSystem_MapIsBattleTowerMultiPartnerSelectRoom(void *fieldSystem);

u8 LONG_CALL sub_0207B0B0(struct PartyMenu *wk, u8 *buf);

void LONG_CALL sub_0207AFC4(struct PartyMenu *wk);
void LONG_CALL ClearFrameAndWindow2(void *window, BOOL dont_copy_to_vram);
u8 LONG_CALL sub_0207B23C(struct PartyMenu *wk, u8 *buf);
u8 LONG_CALL PartyMenu_SetContextMenuItems_GiveCapsule(struct PartyMenu *wk, u8 *buf);
u8 LONG_CALL sub_0207B1C8(struct PartyMenu *wk, u8 *buf);
u8 LONG_CALL sub_0207B200(struct PartyMenu *wk, u8 *buf);
u8 LONG_CALL PartyMenu_SetContextMenuItems_SpinTrade(struct PartyMenu *wk, u8 *buf);
u8 LONG_CALL PartyMenu_SetContextMenuItems_BattleHallEntry(struct PartyMenu *wk, u8 *buf);
u8 LONG_CALL sub_0207B2DC(struct PartyMenu *wk, u8 *buf);
void LONG_CALL PartyMenu_OpenContextMenu(struct PartyMenu *wk, u8 *items, u8 numItems);
void LONG_CALL sub_0207D1C8(struct PartyMenu *wk);
void LONG_CALL PartyMenu_PrintMessageOnWindow33(struct PartyMenu *wk, int msgId, BOOL drawFrame);
void LONG_CALL thunk_Sprite_SetPalIndex(void* sprites, int);
void LONG_CALL Heap_FreeExplicit(u32 heapId, void *ptr);
void LONG_CALL PartyMenu_PrintMessageOnWindow32(struct PartyMenu *partyMenu, int msgId, BOOL drawFrame);
u16 LONG_CALL PartyMenu_GetCurrentMapSec(struct PartyMenu *partyMenu);
BOOL LONG_CALL ShouldTakeMachineMoveItem(u16 itemId);
int LONG_CALL PartyMenu_ItemUseFunc_WaitTextPrinterThenExit(struct PartyMenu *partyMenu);
void LONG_CALL PartyMenu_SetItemUseFuncFromBagSelection(struct PartyMenu *partyMenu);
void LONG_CALL PartyMenu_PrintMessageOnWindow34(struct PartyMenu *partyMenu, int msgId, BOOL drawFrame);
void LONG_CALL PartyMenu_SelectMoveForPpRestoreOrPpUp(struct PartyMenu *partyMenu, BOOL isPpRestore);
void LONG_CALL PartyMenu_FormChangeScene_Begin(struct PartyMenu *partyMenu);
void LONG_CALL sub_0207E358(struct PartyMenu *partyMenu, struct PartyMenuContextMenu *contextMenu, int numItems, int selection, int state);
void LONG_CALL sub_0207E068(struct PartyMenu *partyMenu);
void LONG_CALL PartyMenu_DeleteContextMenuAndList(struct PartyMenu *partyMenu);
void LONG_CALL ListMenuItems_AddItem(struct LISTMENUITEM *items, String *string, int value);
struct LISTMENUITEM *LONG_CALL ListMenuItems_New(u32 n, int heapID);
u32 LONG_CALL GetPartyMenuContextMenuActionFunc(int index);
void LONG_CALL sub_0207E54C(struct PartyMenu *partyMenu, int numItems, int selection, int state);
struct PartyMenuContextMenuCursor *LONG_CALL PartyMenu_CreateContextMenuCursor(struct PartyMenu *partyMenu, const struct PartyMenuContextMenu *template, int selection, int heapID, int state);
void LONG_CALL PartyMenu_DisableMainScreenBlend_AfterYesNo(void);

#endif // POKEHEARTGOLD_PARTY_MENU_H