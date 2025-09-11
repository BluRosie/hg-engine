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

int LONG_CALL PartyMenu_ItemUseFunc_WaitTextPrinterThenExit(struct PartyMenu *partyMenu);
void LONG_CALL PartyMenu_SetItemUseFuncFromBagSelection(struct PartyMenu *partyMenu);
void LONG_CALL PartyMenu_PrintMessageOnWindow34(struct PartyMenu *partyMenu, int msgId, BOOL drawFrame);
void LONG_CALL PartyMenu_SelectMoveForPpRestoreOrPpUp(struct PartyMenu *partyMenu, BOOL isPpRestore);
void LONG_CALL PartyMenu_FormChangeScene_Begin(struct PartyMenu *partyMenu);

// might need this later on cleanup?
void LONG_CALL PartyMenu_DeleteContextMenuAndList(struct PartyMenu *partyMenu);

void LONG_CALL ListMenuItems_AddItem(struct LISTMENUITEM *items, String *string, int value);
struct LISTMENUITEM *LONG_CALL ListMenuItems_New(u32 n, int heapID);
u32 LONG_CALL GetPartyMenuContextMenuActionFunc(int index);
void LONG_CALL sub_0207E54C(struct PartyMenu *partyMenu, int numItems, int selection, int state);
struct PartyMenuContextMenuCursor *LONG_CALL PartyMenu_CreateContextMenuCursor(struct PartyMenu *partyMenu, const struct PartyMenuContextMenu *template, int selection, int heapID, int state);

// still not sure what this does
void LONG_CALL sub_0207E068(struct PartyMenu *partyMenu);

// msg data
String *LONG_CALL NewString_ReadMsgData(MsgData *msgData, s32 strno);

// mirrors the button layout
u8 sPartyMenuRotomCatalogFormOrder[] = {
    3, 
    4, 
    5, 
    0, // QUIT button
    0, 
    1, 
    2
};

void LONG_CALL PartyMonContextMenuAction_RotomCatalog(struct PartyMenu *partyMenu, int *pState);
void LONG_CALL PartyMonContextMenuAction_RotomCatalog(struct PartyMenu *partyMenu, int *pState) {
    u8 form = 0;
    u8 sel = partyMenu->contextMenuButtonAnim.selection;
    if (sel <= 6) {
        form = sPartyMenuRotomCatalogFormOrder[sel];
    }
    partyMenu->args->species = PokeOtherFormMonsNoGet(SPECIES_ROTOM, form);
    Mon_UpdateRotomForm(Party_GetMonByIndex(partyMenu->args->party, partyMenu->partyMonIndex), form, 0);
    PartyMenu_FormChangeScene_Begin(partyMenu);
    PartyMenu_DeleteContextMenuAndList(partyMenu);
    *pState = 31;
}

static void PartyMenu_ShowRotomCatalogList(struct PartyMenu *partyMenu);

static void PartyMenu_ShowRotomCatalogList(struct PartyMenu *partyMenu) {

    ClearFrameAndWindow2(&partyMenu->windows[32], TRUE);
    sub_0207E068(partyMenu);
    
    // no border with this atm
    // PartyMenu_PrintMessageOnWindow33(partyMenu, 39, FALSE);

    const int numForms = 6;
    const int numItems = numForms + 1; // + QUIT

    partyMenu->listMenuItems = ListMenuItems_New(numItems, HEAP_ID_PARTY_MENU);

    String *s;

    s = NewString_ReadMsgData(partyMenu->msgData, 220);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, (u32)PartyMonContextMenuAction_RotomCatalog);

    s = NewString_ReadMsgData(partyMenu->msgData, 221);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, (u32)PartyMonContextMenuAction_RotomCatalog);

    s = NewString_ReadMsgData(partyMenu->msgData, 222);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, (u32)PartyMonContextMenuAction_RotomCatalog);

    // quit button has to come in 4th slot
    ListMenuItems_AddItem(partyMenu->listMenuItems, partyMenu->contextMenuStrings[PARTY_MON_CONTEXT_MENU_QUIT], GetPartyMenuContextMenuActionFunc(PARTY_MON_CONTEXT_MENU_QUIT));

    s = NewString_ReadMsgData(partyMenu->msgData, 223);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, (u32)PartyMonContextMenuAction_RotomCatalog);

    s = NewString_ReadMsgData(partyMenu->msgData, 224);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, (u32)PartyMonContextMenuAction_RotomCatalog);

    s = NewString_ReadMsgData(partyMenu->msgData, 225);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, (u32)PartyMonContextMenuAction_RotomCatalog);

    String_Delete(s);

    struct PartyMenuContextMenu contextMenu;
    contextMenu.items = partyMenu->listMenuItems;
    contextMenu.window = &partyMenu->windows[36];
    contextMenu.unk_08 = 0;
    contextMenu.unk_09 = 1;
    contextMenu.numItems = numItems;
    contextMenu.unk_0B_0 = 0;
    contextMenu.unk_0B_4 = 0;
    contextMenu.scrollEnabled = numItems > 4;

    sub_0207E54C(partyMenu, numItems, 0, /*state=*/0);
    partyMenu->contextMenuCursor = PartyMenu_CreateContextMenuCursor(partyMenu, &contextMenu, 0, HEAP_ID_PARTY_MENU, /*state=*/0);
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