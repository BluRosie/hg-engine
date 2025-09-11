#include "../include/bag.h"
#include "../include/battle.h"
#include "../include/config.h"
#include "../include/party_menu.h"
#include "../include/pokemon.h"
#include "../include/message.h"
#include "../include/types.h"
#include "../include/constants/file.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"

u8 LONG_CALL sub_0207B0B0(struct PLIST_WORK *wk, u8 *buf)
{
    struct PartyPokemon *pp = Party_GetMonByIndex(wk->dat->pp, wk->pos);
    u16 move;
    u8 fieldMoveIndex = 0;
    u8 i;
    u8 count = 0;
    u8 fieldEffect;

    u8 isEgg = GetMonData(pp, MON_DATA_IS_EGG, NULL);
    u32 item = GetMonData(pp, MON_DATA_HELD_ITEM, NULL);

    buf[count] = PARTY_MON_CONTEXT_MENU_SUMMARY;
    ++count;
    if (!FieldSystem_MapIsBattleTowerMultiPartnerSelectRoom(wk->dat->fsys))
    {
        buf[count] = PARTY_MON_CONTEXT_MENU_SWITCH;
        ++count;
        if (!isEgg)
        {
            if (IS_ITEM_MAIL(item))
            {
                buf[count] = PARTY_MON_CONTEXT_MENU_MAIL;
            }
            else
            {
                buf[count] = PARTY_MON_CONTEXT_MENU_ITEM;
            }
            ++count;
            buf[count] = PARTY_MON_CONTEXT_MENU_QUIT;
            ++count;

            // here is where a custom check would go.  replace the below for loop with your own checks

            for (i = 0; i < MAX_MON_MOVES; ++i)
            {
                move = GetMonData(pp, MON_DATA_MOVE1 + i, NULL);
                if (move == MOVE_NONE)
                {
                    break;
                }

                fieldEffect = MoveId_GetFieldEffectId(move);
                if (fieldEffect != 0xFF)
                {
                    buf[count] = fieldEffect;
                    ++count;
                    PartyMenu_ContextMenuAddFieldMove(wk, move, fieldMoveIndex);
                    ++fieldMoveIndex;
                }
            }
        }
        else
        {
            buf[count] = PARTY_MON_CONTEXT_MENU_QUIT;
            ++count;
        }
    }
    else
	{
        buf[count] = PARTY_MON_CONTEXT_MENU_QUIT;
        ++count;
    }



    return count;
}

void LONG_CALL sub_0207AFC4(struct PLIST_WORK *wk)
{
    ClearFrameAndWindow2(&wk->windows[PARTY_MENU_WINDOW_ID_32], TRUE);

    u8 *buf;
    buf = sys_AllocMemory(HEAP_ID_PARTY_MENU, MAX_BUTTONS_IN_PARTY_MENU);
    u8 numItems;

    switch (wk->dat->mode)//(partyMenu->dat->context)
    {
    case PARTY_MENU_CONTEXT_0:
        numItems = sub_0207B0B0(wk, buf);
        break;
    case PARTY_MENU_CONTEXT_UNION_ROOM_BATTLE_SELECT:
    case PARTY_MENU_CONTEXT_17:
        numItems = sub_0207B23C(wk, buf);
        break;
    case PARTY_MENU_CONTEXT_ATTACH_CAPSULE:
        numItems = PartyMenu_SetContextMenuItems_GiveCapsule(wk, buf);
        break;
    case PARTY_MENU_CONTEXT_18:
        numItems = sub_0207B1C8(wk, buf);
        break;
    case PARTY_MENU_CONTEXT_SPIN_TRADE:
        numItems = PartyMenu_SetContextMenuItems_SpinTrade(wk, buf);
        break;
    case PARTY_MENU_CONTEXT_BATTLE_HALL:
        numItems = PartyMenu_SetContextMenuItems_BattleHallEntry(wk, buf);
        break;
    case PARTY_MENU_CONTEXT_23:
        numItems = sub_0207B2DC(wk, buf);
        break;
    default:
        numItems = sub_0207B200(wk, buf);
        break;
    }

    PartyMenu_OpenContextMenu(wk, buf, numItems);
    FreeToHeapExplicit(HEAP_ID_PARTY_MENU, buf);
    sub_0207D1C8(wk);
    PartyMenu_PrintMessageOnWindow33(wk, -1, TRUE);
    thunk_Sprite_SetPalIndex(wk->sprites[PARTY_MENU_SPRITE_ID_CURSOR], 1);
}

/*
 * @brief hooks rare candy usage in the bag to allow for repeated use without returning to the bag between each
 * thanks to yako for the for the format
 */
int PartyMenu_ItemUseFunc_LevelUpLearnMovesLoop_Case6(struct PLIST_WORK *wk) {
    struct PartyPokemon *mon = Party_GetMonByIndex(wk->dat->pp, wk->pos);
    wk->dat->after_mons = GetMonEvolution(wk->dat->pp, mon, EVOCTX_LEVELUP, EVO_NONE, (int *)&wk->dat->shinka_cond);
    if (wk->dat->after_mons != SPECIES_NONE) {
        wk->dat->ret_mode = 0x9;
        return 0x20;
    }
    wk->dat->ret_mode = 0x0;
    if (Bag_HasItem(wk->dat->myitem, wk->dat->item, 1, HEAP_ID_PARTY_MENU)) {
        ClearFrameAndWindow2(&wk->windows[34], TRUE);
        PartyMenu_PrintMessageOnWindow32(wk, 33, TRUE); // message index in 300.txt
        return 0x4;
    }
    return 0x20;
}

/*
 * @brief hooks into the ending of pokeheartgold PartyMenu_ItemUseFunc_WaitTextPrinterThenExit
 * to allow for item reuse if not an evo item and the bag has more of the item
 */
int PartyMenu_ItemUseFunc_ReuseItem(struct PLIST_WORK *wk) {
    wk->dat->ret_mode = 0;
    if (GetItemData(wk->dat->item, ITEM_PARAM_EVOLUTION, HEAP_ID_PARTY_MENU) == 0 && Bag_HasItem(wk->dat->myitem, wk->dat->item, 1, HEAP_ID_PARTY_MENU)) {
        ClearFrameAndWindow2(&wk->windows[34], TRUE);
        PartyMenu_PrintMessageOnWindow32(wk, 33, TRUE); // message index in 300.txt
        return 0x4;
    }
    return 0x20;
}

void PartyMenu_LearnMoveToSlot(struct PLIST_WORK *partyMenu, struct PartyPokemon *mon, int moveIdx) {
    int data = partyMenu->dat->move;
    SetMonData(mon, MON_DATA_MOVE1 + moveIdx, &data);
    data = 0;
    SetMonData(mon, MON_DATA_MOVE1PPUP + moveIdx, &data);
    data = GetMoveMaxPP(partyMenu->dat->move, 0);
    SetMonData(mon, MON_DATA_MOVE1PP + moveIdx, &data);
    if (partyMenu->dat->item != ITEM_NONE) {
#ifdef REUSABLE_TMS
    BOOL consumeItem = IS_ITEM_TR(partyMenu->dat->item);
#else
    BOOL consumeItem = IS_ITEM_TM(partyMenu->dat->item) || IS_ITEM_TR(partyMenu->dat->item);
#endif // REUSABLE_TMS
        if (consumeItem) {
            Bag_TakeItem(partyMenu->dat->myitem, partyMenu->dat->item, 1, HEAP_ID_PARTY_MENU);
        }
        MonApplyFriendshipMod(mon, 4, PartyMenu_GetCurrentMapSec(partyMenu));
        ApplyMonMoodModifier(mon, 3);
    }
}

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
    void *contextMenuButtonAnim;
    u8 filler_CA0[0x8];
}; // CA8

int LONG_CALL PartyMenu_ItemUseFunc_WaitTextPrinterThenExit(struct PartyMenu *partyMenu);
void LONG_CALL PartyMenu_SetItemUseFuncFromBagSelection(struct PartyMenu *partyMenu);
void LONG_CALL PartyMenu_PrintMessageOnWindow34(struct PartyMenu *partyMenu, int msgId, BOOL drawFrame);
void LONG_CALL PartyMenu_SelectMoveForPpRestoreOrPpUp(struct PartyMenu *partyMenu, BOOL isPpRestore);
void LONG_CALL PartyMenu_FormChangeScene_Begin(struct PartyMenu *partyMenu);

void LONG_CALL PartyMenu_DeleteContextMenuAndList(struct PartyMenu *partyMenu);
void LONG_CALL ListMenuItems_AddItem(struct LISTMENUITEM *items, String *string, int value);
struct LISTMENUITEM *LONG_CALL ListMenuItems_New(u32 n, int heapID);
u32 LONG_CALL GetPartyMenuContextMenuActionFunc(int index);
void LONG_CALL sub_0207E54C(struct PartyMenu *partyMenu, int numItems, int selection, int state);
struct PartyMenuContextMenuCursor *LONG_CALL PartyMenu_CreateContextMenuCursor(struct PartyMenu *partyMenu, const struct PartyMenuContextMenu *template, int selection, int heapID, int state);

// idk
void LONG_CALL sub_0207E068(struct PartyMenu *partyMenu);

// this just shows the held item on top screen lol. worthless
void LONG_CALL PartyMenu_SetTopScreenSelectionPanelVisibility(struct PartyMenu *partyMenu, BOOL show);

// window shit idk if needed
void LONG_CALL ClearWindowTilemapAndScheduleTransfer(struct Window *window);
void LONG_CALL sub_0200E5D4(struct Window *window, BOOL dont_copy_to_vram);

// msg data
String *LONG_CALL NewString_ReadMsgData(MsgData *msgData, s32 strno);

static void PartyMenu_ShowRotomCatalogList(struct PartyMenu *partyMenu);

static int PartyMenu_AddTextToList(struct PartyMenu *partyMenu, int bank, int msgIdx, int slot)
{
    String *dst = partyMenu->contextMenuStrings[slot];
    MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, ARC_MSG_DATA, bank, partyMenu->msgFormat->heapId);
    ReadMsgDataIntoString(msgData, msgIdx, dst);
    DestroyMsgData(msgData);

    ListMenuItems_AddItem(partyMenu->listMenuItems, dst, slot);
}

static u8 sRotomPage = 0;

// static void PartyMenu_ShowRotomCatalogList(struct PartyMenu *partyMenu)  {
//     // // big doubt
//     // sub_0200E5D4(&partyMenu->windows[36], TRUE);
//     // ClearWindowTilemapAndScheduleTransfer(&partyMenu->windows[36]);

//     // // doubt
//     // ClearFrameAndWindow2(&partyMenu->windows[32], TRUE);
//     // ClearFrameAndWindow2(&partyMenu->windows[33], TRUE);
//     // ClearFrameAndWindow2(&partyMenu->windows[35], TRUE);

//     // gets rid of the little backdrop text box from prev screen
//     ClearFrameAndWindow2(&partyMenu->windows[36], TRUE);

//     // idk 
//     sub_0207E068(partyMenu);

//     // TODO proper msg
//     PartyMenu_PrintMessageOnWindow332(partyMenu, 39, TRUE);

//     u8 numRotomFormes = 6;



//     u8 numItems = numRotomFormes+1;
//     partyMenu->listMenuItems = ListMenuItems_New(numItems, HEAP_ID_PARTY_MENU);
//     PartyMenu_AddTextToList(partyMenu, 300, 220, 0);
//     PartyMenu_AddTextToList(partyMenu, 300, 221, 1);
//     PartyMenu_AddTextToList(partyMenu, 300, 222, 2);
//     PartyMenu_AddTextToList(partyMenu, 300, 223, 3);
//     PartyMenu_AddTextToList(partyMenu, 300, 224, 4);
//     PartyMenu_AddTextToList(partyMenu, 300, 225, 5);
//     PartyMenu_AddTextToList(partyMenu, 300, 226, 6);
//     ListMenuItems_AddItem(partyMenu->listMenuItems, partyMenu->contextMenuStrings[PARTY_MON_CONTEXT_MENU_QUIT], GetPartyMenuContextMenuActionFunc(PARTY_MON_CONTEXT_MENU_QUIT));

//     struct PartyMenuContextMenu contextMenu;
//     contextMenu.items = partyMenu->listMenuItems;
//     contextMenu.window = &partyMenu->windows[35];
//     contextMenu.unk_08 = 0;
//     contextMenu.unk_09 = 1;
//     contextMenu.numItems = numItems;
//     contextMenu.unk_0B_0 = 0;
//     contextMenu.unk_0B_4 = 0;
//     contextMenu.scrollEnabled = numItems > 4;

//     sub_0207E54C(partyMenu, numItems, 0, 1);
//     partyMenu->contextMenuCursor = PartyMenu_CreateContextMenuCursor(partyMenu, &contextMenu, 0, HEAP_ID_PARTY_MENU, 1);


//     // ClearFrameAndWindow2(&partyMenu->windows[36], TRUE);

//     // // idk 
//     // sub_0207E068(partyMenu);

//     // // if (partyMenu->contextMenuCursor || partyMenu->listMenuItems) {
//     //     // PartyMenu_DeleteContextMenuAndList(partyMenu);
//     // // }

//     // // TODO proper msg
//     // PartyMenu_PrintMessageOnWindow332(partyMenu, 39, TRUE);

//     // u8 numRotomFormes = 6;
//     // u8 numItems = numRotomFormes+1;
//     // partyMenu->listMenuItems = ListMenuItems_New(numItems, HEAP_ID_PARTY_MENU);

//     // PartyMenu_AddTextToList(partyMenu, 300, 220, 0);
//     // PartyMenu_AddTextToList(partyMenu, 300, 221, 1);
//     // PartyMenu_AddTextToList(partyMenu, 300, 222, 2);
//     // PartyMenu_AddTextToList(partyMenu, 300, 223, 3);
//     // ListMenuItems_AddItem(partyMenu->listMenuItems, partyMenu->contextMenuStrings[PARTY_MON_CONTEXT_MENU_QUIT], GetPartyMenuContextMenuActionFunc(PARTY_MON_CONTEXT_MENU_QUIT));
//     // PartyMenu_AddTextToList(partyMenu, 300, 223, 4);
//     // PartyMenu_AddTextToList(partyMenu, 300, 224, 5);
//     // PartyMenu_AddTextToList(partyMenu, 300, 225, 6);


//     // struct PartyMenuContextMenu contextMenu;
//     // contextMenu.items = partyMenu->listMenuItems;
//     // contextMenu.window = &partyMenu->windows[35];
//     // contextMenu.unk_08 = 0;
//     // contextMenu.unk_09 = 1;
//     // contextMenu.numItems = numItems + 1;
//     // contextMenu.unk_0B_0 = 0;
//     // contextMenu.unk_0B_4 = 0;
//     // contextMenu.scrollEnabled = FALSE;

//     // sub_0207E54C(partyMenu, numItems, 0, 1);
//     // partyMenu->contextMenuCursor = PartyMenu_CreateContextMenuCursor(partyMenu, &contextMenu, 0, HEAP_ID_PARTY_MENU, 1);
// }

// static void PartyMenu_ShowRotomCatalogList(struct PartyMenu *partyMenu)
// {
//     // Clear any existing submenu/buttons and tiny backdrop from the prior screen
//     // PartyMenu_DeleteContextMenuAndList(partyMenu); // important!
//     ClearFrameAndWindow2(&partyMenu->windows[PARTY_MENU_WINDOW_ID_36], TRUE);

//     // Top labels (nickname/held item) like the stock submenus do
//     sub_0207E068(partyMenu);

//     // Header text above the right column (Window 33)
//     // pick a proper msg id here; stock uses msg_0300_00039 ("Use item") for Item submenu
//     PartyMenu_PrintMessageOnWindow33(partyMenu, 39, FALSE);

//     // Build list: 6 forms + Quit (example message ids shown)
//     const u8 numRotomFormes = 6;
//     const u8 numItems = numRotomFormes + 1;

//     partyMenu->listMenuItems = ListMenuItems_New(numItems, HEAP_ID_PARTY_MENU);

//     // Replace these with the actual message IDs you want for the six forms
//     PartyMenu_AddTextToList(partyMenu, 300, 220, 0);
//     PartyMenu_AddTextToList(partyMenu, 300, 221, 1);
//     PartyMenu_AddTextToList(partyMenu, 300, 222, 2);
//     PartyMenu_AddTextToList(partyMenu, 300, 223, 3);
//     PartyMenu_AddTextToList(partyMenu, 300, 224, 4);
//     PartyMenu_AddTextToList(partyMenu, 300, 225, 5);

//     // Quit/cancel row uses the existing action func
//     ListMenuItems_AddItem(
//         partyMenu->listMenuItems,
//         partyMenu->contextMenuStrings[PARTY_MON_CONTEXT_MENU_QUIT],
//         GetPartyMenuContextMenuActionFunc(PARTY_MON_CONTEXT_MENU_QUIT));

//     // Right-column submenu template (Window 35, state=1)
//     PartyMenuContextMenu contextMenu;
//     contextMenu.items = partyMenu->listMenuItems;
//     contextMenu.window = &partyMenu->windows[PARTY_MENU_WINDOW_ID_35];
//     contextMenu.unk_08 = 0;
//     contextMenu.unk_09 = 1;           // stock submenus use 1 here
//     contextMenu.numItems = numItems;
//     contextMenu.unk_0B_0 = 0;
//     contextMenu.unk_0B_4 = 0;
//     contextMenu.scrollEnabled = (numItems > 4);

//     // Draw right-column buttons and create cursor for input
//     sub_0207E54C(partyMenu, numItems, 0, /*state*/1);
//     partyMenu->contextMenuCursor =
//         PartyMenu_CreateContextMenuCursor(partyMenu, &contextMenu, 0, HEAP_ID_PARTY_MENU, /*state*/1);
// }

// void FillWindowPixelBuffer2(struct Window *window, u8 fillValue);
// u32 LONG_CALL FontID_String_GetCenterAlignmentX(u8 fontId, String *string, u32 letterSpacing, u32 windowWidth);
// u8 LONG_CALL GetWindowWidth(struct Window *window);
// u32 LONG_CALL getButtonColorDepressed(int selection);
// u32 LONG_CALL getButtonColorRaised(int selection);
// void LONG_CALL ScheduleWindowCopyToVram(struct Window *window);

// #define MAKE_TEXT_COLOR(fg, sh, bg) ((((fg) & 0xFF) << 16) | (((sh) & 0xFF) << 8) | (((bg) & 0xFF) << 0))
// #define TEXT_SPEED_INSTANT    0    // Transfers to VRAM
// #define TEXT_SPEED_NOTRANSFER 0xFF // Defers VRAM transfer

// static const s8 sButtonWindowIDs[][2][8] = {
//     {
//      { 0, -1, -1, -1, -1, -1, -1, -1 },
//      { 7, -1, -1, -1, -1, -1, -1, -1 },
//      },
//     {
//      { 0, 7, -1, -1, -1, -1, -1, -1 },
//      { 8, 7, -1, -1, -1, -1, -1, -1 },
//      },
//     {
//      { 0, 1, 7, -1, -1, -1, -1, -1 },
//      { 8, 9, 7, -1, -1, -1, -1, -1 },
//      },
//     {
//      { 0, 1, 2, 7, -1, -1, -1, -1 },
//      { 8, 9, 10, 7, -1, -1, -1, -1 },
//      },
//     {
//      { 0, 1, 2, 7, 3, -1, -1, -1 },
//      { 8, 9, 10, 11, 7, -1, -1, -1 },
//      },
//     {
//      { 0, 1, 2, 7, 3, 4, -1, -1 },
//      { 0, 1, 2, 3, 4, 8, -1, -1 },
//      },
//     {
//      { 0, 1, 2, 7, 3, 4, 5, -1 },
//      { 0, 1, 2, 3, 4, 5, 8, -1 },
//      },
//     {
//      { 0, 1, 2, 7, 3, 4, 5, 6 },
//      { 0, 1, 2, 7, 3, 4, 5, 6 },
//      },
// };

// needs armhook to maintain all params
// void PartyMenu_PrintContextMenuItemText(struct PartyMenu *partyMenu, struct PartyMenuContextMenu *contextMenu, int numItems, int selection, int state, BOOL depressed) {
//     debug_printf("1\n");
//     u32 color;
//     u32 y;
//     u32 x = 0;
//     u32 fillValue;
//     u8 windowId;

//     windowId = sButtonWindowIDs[numItems - 1][state][selection];
//     debug_printf("2\n");
//     if (windowId == 7) {
//         debug_printf("3.1\n");
//         if (depressed == FALSE) {
//             fillValue = 4;
//             color = MAKE_TEXT_COLOR(14, 15, 4);
//         } else {
//             fillValue = 11;
//             color = MAKE_TEXT_COLOR(14, 15, 11);
//         }
//         y = 4;
//         x = FontID_String_GetCenterAlignmentX(4, contextMenu->items[selection].text, 0, GetWindowWidth(&partyMenu->contextMenuButtonWindows[windowId]) * 8);
//         debug_printf("3.2\n");
//     } else {
//         debug_printf("4.1\n");
//         if (depressed == FALSE) {
//             fillValue = 4;
//             color = getButtonColorRaised(selection);
//         } else {
//             fillValue = 11;
//             color = getButtonColorDepressed(selection);
//         }
//         y = 0;
//         debug_printf("4.2\n");
//     }
//     debug_printf("5\n");
//     FillWindowPixelBuffer2(&partyMenu->contextMenuButtonWindows[windowId], fillValue);
//     debug_printf("6\n");
//     AddTextPrinterParameterizedWithColor(&partyMenu->contextMenuButtonWindows[windowId], 4, contextMenu->items[selection].text, x, y, TEXT_SPEED_NOTRANSFER, color, NULL);
//     debug_printf("7\n");
//     ScheduleWindowCopyToVram(&partyMenu->contextMenuButtonWindows[windowId]);
//     debug_printf("8\n");
// }

static void PartyMenu_ShowRotomCatalogList(struct PartyMenu *partyMenu) {

    ClearFrameAndWindow2(&partyMenu->windows[32], TRUE);
    
    // no border with this atm
    // PartyMenu_PrintMessageOnWindow33(partyMenu, 39, FALSE);
 
    sub_0207E068(partyMenu);

    // 3 0
    // 4 1
    // 5 2
    const u16 msgIds[] = { 223, // refrigerator
                           224, // electric fan
                           225, // lawn mower
                           220, // light bulb
                           221, // microwave oven
                           222  // washing machine
                         };
    const int numForms = sizeof(msgIds)/sizeof(msgIds[0]);
    const int numItems = numForms + 1; // + Quit

    partyMenu->listMenuItems = ListMenuItems_New(numItems, HEAP_ID_PARTY_MENU);

    // TODO these need associated handlers (good luck?)

    String *s;
    u8 counter = 0;

    s = NewString_ReadMsgData(partyMenu->msgData, msgIds[counter]);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, counter);
    counter++;
    s = NewString_ReadMsgData(partyMenu->msgData, msgIds[counter]);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, counter);
    counter++;
    s = NewString_ReadMsgData(partyMenu->msgData, msgIds[counter]);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, counter);
    counter++;

    // quit button has to come in 4th slot
    ListMenuItems_AddItem(partyMenu->listMenuItems, partyMenu->contextMenuStrings[PARTY_MON_CONTEXT_MENU_QUIT], GetPartyMenuContextMenuActionFunc(PARTY_MON_CONTEXT_MENU_QUIT));

    s = NewString_ReadMsgData(partyMenu->msgData, msgIds[counter]);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, counter);
    counter++;
    s = NewString_ReadMsgData(partyMenu->msgData, msgIds[counter]);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, counter);
    counter++;
    s = NewString_ReadMsgData(partyMenu->msgData, msgIds[counter]);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, counter);
    counter++;

    String_Delete(s);

    PartyMenuContextMenu ctx = {
        .items = partyMenu->listMenuItems,
        .window = &partyMenu->windows[36],
        .unk_08 = 0,
        .unk_09 = 1,
        .numItems = numItems,
        .unk_0B_0 = 0,
        .unk_0B_4 = 1,
        .scrollEnabled = (numItems > 4),
    };

    sub_0207E54C(partyMenu, numItems, 0, /*state=*/0);
    partyMenu->contextMenuCursor = PartyMenu_CreateContextMenuCursor(partyMenu, &ctx, 0, HEAP_ID_PARTY_MENU, /*state=*/0);
}

int LONG_CALL PartyMenu_HandleUseItemOnMon(struct PartyMenu *partyMenu)
{
    struct ItemData *itemData = LoadItemDataOrGfx(partyMenu->args->itemId, 0, HEAP_ID_PARTY_MENU);

    if (partyMenu->args->itemId == ITEM_GRACIDEA && Mon_CanUseGracidea(Party_GetMonByIndex(partyMenu->args->party, partyMenu->partyMonIndex)) == TRUE) {
        partyMenu->args->species = SPECIES_SHAYMIN_SKY;
        sys_FreeMemoryEz(itemData);
        PartyMenu_FormChangeScene_Begin(partyMenu);
        return 31;
    }

    if (partyMenu->args->itemId == ITEM_ROTOM_CATALOG && CanUseRotomCatalog(Party_GetMonByIndex(partyMenu->args->party, partyMenu->partyMonIndex))) {
        debug_printf("rotom babay\n");
        PartyMenu_ShowRotomCatalogList(partyMenu);
        sys_FreeMemoryEz(itemData);
        // partyMenu->itemUseCallback = PartyMenu_ItemUseFunc_WaitTextPrinterThenExit;
        // PartyMenu_FormChangeScene_Begin(partyMenu);
        return 2;
    }

    if (GetItemAttr_PreloadedItemData(itemData, ITEM_PARAM_PP_UP) || GetItemAttr_PreloadedItemData(itemData, ITEM_PARAM_PP_MAX)) {
        sys_FreeMemoryEz(itemData);
        PartyMenu_SelectMoveForPpRestoreOrPpUp(partyMenu, 0);
        return 6;
    }
    if (GetItemAttr_PreloadedItemData(itemData, ITEM_PARAM_PP_RECOVERY) && !GetItemAttr_PreloadedItemData(itemData, ITEM_PARAM_ALL_PP_RECOVERY)) {
        sys_FreeMemoryEz(itemData);
        PartyMenu_SelectMoveForPpRestoreOrPpUp(partyMenu, 1);
        return 6;
    }

    if (CanUseItemOnMonInParty(partyMenu->args->party, partyMenu->args->itemId, partyMenu->partyMonIndex, 0, HEAP_ID_PARTY_MENU) == TRUE) {
        Bag_TakeItem(partyMenu->args->bag, partyMenu->args->itemId, 1, HEAP_ID_PARTY_MENU);
        if (GetItemAttr_PreloadedItemData(itemData, ITEM_PARAM_EVOLUTION)) {
            struct PartyPokemon *mon = Party_GetMonByIndex(partyMenu->args->party, partyMenu->partyMonIndex);
            partyMenu->args->species = GetMonEvolution(NULL, mon, EVOCTX_ITEM_USE, partyMenu->args->itemId, &partyMenu->args->evoMethod);
            partyMenu->args->selectedAction = 8;
            sys_FreeMemoryEz(itemData);
            return 32;
        } else {
            PartyMenu_SetItemUseFuncFromBagSelection(partyMenu);
        }
    } else {
        PartyMenu_PrintMessageOnWindow34(partyMenu, 102, TRUE);
        partyMenu->partyMonIndex = 8;
        partyMenu->itemUseCallback = PartyMenu_ItemUseFunc_WaitTextPrinterThenExit;
    }
    sys_FreeMemoryEz(itemData);
    return 5;
}