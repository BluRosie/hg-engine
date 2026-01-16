#include "../include/bag.h"
#include "../include/battle.h"
#include "../include/config.h"
#include "../include/party_menu.h"
#include "../include/pokemon.h"
#include "../include/message.h"
#include "../include/types.h"
#include "../include/window.h"
#include "../include/constants/file.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"

extern const u16 sButtonFrameTileOffsets[];
extern const u8 sButtonRects[][4];
extern const WindowTemplate sButtonWindowTemplates[];
extern const s8 sButtonWindowIDs[][2][8];

// mirrors the button layout
static const u8 sPartyMenuRotomCatalogFormOrder[] = {3, 4, 5, /*quit*/ 0, 0, 1, 2};

u32 LONG_CALL getButtonColorDepressed(int selection);
u32 LONG_CALL getButtonColorRaised(int selection);
void LONG_CALL PartyMonContextMenuAction_RotomCatalog(struct PartyMenu *partyMenu, int *pState);
void LONG_CALL PartyMonContextMenuAction_QuitToBag(struct PartyMenu *partyMenu, int *pState);
static void PartyMenu_ShowRotomCatalogList(struct PartyMenu *partyMenu);

u8 LONG_CALL sub_0207B0B0(struct PartyMenu *wk, u8 *buf)
{
    struct PartyPokemon *pp = Party_GetMonByIndex(wk->args->party, wk->partyMonIndex);
    u16 move;
    u8 fieldMoveIndex = 0;
    u8 i;
    u8 count = 0;
    u8 fieldEffect;

    u8 isEgg = GetMonData(pp, MON_DATA_IS_EGG, NULL);
    u32 item = GetMonData(pp, MON_DATA_HELD_ITEM, NULL);

    buf[count] = PARTY_MON_CONTEXT_MENU_SUMMARY;
    ++count;
    if (!FieldSystem_MapIsBattleTowerMultiPartnerSelectRoom(wk->args->fieldSystem))
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

void LONG_CALL sub_0207AFC4(struct PartyMenu *wk)
{
    ClearFrameAndWindow2(&wk->windows[PARTY_MENU_WINDOW_ID_32], TRUE);

    u8 *buf;
    buf = sys_AllocMemory(HEAP_ID_PARTY_MENU, MAX_BUTTONS_IN_PARTY_MENU);
    u8 numItems;

    switch (wk->args->context)//(partyMenu->args->context)
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
    Heap_FreeExplicit(HEAP_ID_PARTY_MENU, buf);
    sub_0207D1C8(wk);
    PartyMenu_PrintMessageOnWindow33(wk, -1, TRUE);
    thunk_Sprite_SetPalIndex(wk->sprites[PARTY_MENU_SPRITE_ID_CURSOR], 1);
}

/*
 * @brief hooks rare candy usage in the bag to allow for repeated use without returning to the bag between each
 * thanks to yako for the for the format
 */
int PartyMenu_ItemUseFunc_LevelUpLearnMovesLoop_Case6(struct PartyMenu *wk) {
    struct PartyPokemon *mon = Party_GetMonByIndex(wk->args->party, wk->partyMonIndex);
    wk->args->species = GetMonEvolution(wk->args->party, mon, EVOCTX_LEVELUP, EVO_NONE, (int *)&wk->args->evoMethod);
    if (wk->args->species != SPECIES_NONE) {
        wk->args->selectedAction = 0x9;
        return 0x20;
    }
    wk->args->selectedAction = 0x0;
    if (Bag_HasItem(wk->args->bag, wk->args->itemId, 1, HEAP_ID_PARTY_MENU)) {
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
int PartyMenu_ItemUseFunc_ReuseItem(struct PartyMenu *wk) {
    wk->args->selectedAction = 0;
    if (GetItemData(wk->args->itemId, ITEM_PARAM_EVOLUTION, HEAP_ID_PARTY_MENU) == 0 && Bag_HasItem(wk->args->bag, wk->args->itemId, 1, HEAP_ID_PARTY_MENU)) {
        ClearFrameAndWindow2(&wk->windows[34], TRUE);
        PartyMenu_PrintMessageOnWindow32(wk, 33, TRUE); // message index in 300.txt
        return 0x4;
    }
    return 0x20;
}

void PartyMenu_LearnMoveToSlot(struct PartyMenu *partyMenu, struct PartyPokemon *mon, int moveIdx) {
    int data = partyMenu->args->moveId;
    SetMonData(mon, MON_DATA_MOVE1 + moveIdx, &data);
    data = 0;
    SetMonData(mon, MON_DATA_MOVE1PPUP + moveIdx, &data);
    data = GetMoveMaxPP(partyMenu->args->moveId, 0);
    SetMonData(mon, MON_DATA_MOVE1PP + moveIdx, &data);
    if (partyMenu->args->itemId != ITEM_NONE) {
#ifdef REUSABLE_TMS
    BOOL consumeItem = IS_ITEM_TR(partyMenu->args->itemId);
#else
    BOOL consumeItem = IS_ITEM_TM(partyMenu->args->itemId) || IS_ITEM_TR(partyMenu->args->itemId);
#endif // REUSABLE_TMS
        if (consumeItem) {
            Bag_TakeItem(partyMenu->args->bag, partyMenu->args->itemId, 1, HEAP_ID_PARTY_MENU);
        }
        MonApplyFriendshipMod(mon, 4, PartyMenu_GetCurrentMapSec(partyMenu));
        ApplyMonMoodModifier(mon, 3);
    }
}

void LONG_CALL PartyMonContextMenuAction_RotomCatalog(struct PartyMenu *partyMenu, int *pState)
{
    u8 form = 0;
    u8 sel = partyMenu->contextMenuButtonAnim.selection;
    if (sel <= 6) {
        form = sPartyMenuRotomCatalogFormOrder[sel];
    }
    partyMenu->args->species = PokeOtherFormMonsNoGet(SPECIES_ROTOM, form);
    Mon_UpdateRotomForm(Party_GetMonByIndex(partyMenu->args->party, partyMenu->partyMonIndex), form, 0);
    // TODO eventually expand PartyMenu_FormChangeScene_Begin with animations for Rotom
    PartyMenu_FormChangeScene_Begin(partyMenu);
    PartyMenu_DeleteContextMenuAndList(partyMenu);
    *pState = PARTY_MENU_STATE_FORM_CHANGE_ANIM;
}

void LONG_CALL PartyMonContextMenuAction_QuitToBag(struct PartyMenu *partyMenu, int *pState)
{
    // clean up submenu UI elements
    ClearFrameAndWindow2(&partyMenu->windows[PARTY_MENU_WINDOW_ID_33], TRUE);
    PartyMenu_DeleteContextMenuAndList(partyMenu);
    PartyMenu_DisableMainScreenBlend_AfterYesNo();

    // fully quit out rather than just quitting the submenu
    partyMenu->args->selectedAction = PARTY_MENU_ACTION_RETURN_0;
    *pState = PARTY_MENU_STATE_BEGIN_EXIT;
}

static void PartyMenu_ShowRotomCatalogList(struct PartyMenu *partyMenu)
{

    ClearFrameAndWindow2(&partyMenu->windows[32], TRUE);
    sub_0207E068(partyMenu);
    PartyMenu_PrintMessageOnWindow32(partyMenu, 220, TRUE);

    const int numItems = 6 + 1; // num rotom forms + QUIT
    partyMenu->listMenuItems = ListMenuItems_New(numItems, HEAP_ID_PARTY_MENU);

    String *s;

    s = NewString_ReadMsgData(partyMenu->msgData, 221);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, (u32)PartyMonContextMenuAction_RotomCatalog);

    s = NewString_ReadMsgData(partyMenu->msgData, 222);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, (u32)PartyMonContextMenuAction_RotomCatalog);

    s = NewString_ReadMsgData(partyMenu->msgData, 223);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, (u32)PartyMonContextMenuAction_RotomCatalog);

    // quit button in 4th slot
    ListMenuItems_AddItem(partyMenu->listMenuItems, partyMenu->contextMenuStrings[PARTY_MON_CONTEXT_MENU_QUIT], (u32)PartyMonContextMenuAction_QuitToBag);

    s = NewString_ReadMsgData(partyMenu->msgData, 224);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, (u32)PartyMonContextMenuAction_RotomCatalog);

    s = NewString_ReadMsgData(partyMenu->msgData, 225);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, (u32)PartyMonContextMenuAction_RotomCatalog);

    s = NewString_ReadMsgData(partyMenu->msgData, 226);
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

    partyMenu->contextMenuCursor = PartyMenu_CreateContextMenuCursor(partyMenu, &contextMenu, 0, HEAP_ID_PARTY_MENU, /*state=*/0);

    // reframe the window to line up the columns. remove the first 3 windows and recreate one tile down
    for (int i = 0; i < 3; i++) {
        WindowTemplate template = sButtonWindowTemplates[i];
        RemoveWindow(&partyMenu->contextMenuButtonWindows[i]);
        template.top -= 1;
        AddWindow(partyMenu->bgConfig, &partyMenu->contextMenuButtonWindows[i], &template);
        FillWindowPixelBuffer(&partyMenu->contextMenuButtonWindows[i], 4);
    }

    sub_0207E54C(partyMenu, numItems, 0, /*state=*/0);
    sub_0207E358(partyMenu, &contextMenu, numItems, 0, 0);
}

int LONG_CALL PartyMenu_HandleUseItemOnMon(struct PartyMenu *partyMenu)
{
    struct ItemData *itemData = LoadItemDataOrGfx(partyMenu->args->itemId, 0, HEAP_ID_PARTY_MENU);

    if (partyMenu->args->itemId == ITEM_GRACIDEA && Mon_CanUseGracidea(Party_GetMonByIndex(partyMenu->args->party, partyMenu->partyMonIndex)) == TRUE) {
        partyMenu->args->species = SPECIES_SHAYMIN_SKY;
        sys_FreeMemoryEz(itemData);
        PartyMenu_FormChangeScene_Begin(partyMenu);
        return PARTY_MENU_STATE_FORM_CHANGE_ANIM;
    }

    if (partyMenu->args->itemId == ITEM_ROTOM_CATALOG && CanUseRotomCatalog(Party_GetMonByIndex(partyMenu->args->party, partyMenu->partyMonIndex))) {
        PartyMenu_ShowRotomCatalogList(partyMenu);
        sys_FreeMemoryEz(itemData);
        return PARTY_MENU_STATE_HANDLE_CONTEXT_MENU_INPUT;
    }

    if (GetItemAttr_PreloadedItemData(itemData, ITEM_PARAM_PP_UP) || GetItemAttr_PreloadedItemData(itemData, ITEM_PARAM_PP_MAX)) {
        sys_FreeMemoryEz(itemData);
        PartyMenu_SelectMoveForPpRestoreOrPpUp(partyMenu, 0);
        return PARTY_MENU_STATE_SELECT_MOVE;
    }
    if (GetItemAttr_PreloadedItemData(itemData, ITEM_PARAM_PP_RECOVERY) && !GetItemAttr_PreloadedItemData(itemData, ITEM_PARAM_ALL_PP_RECOVERY)) {
        sys_FreeMemoryEz(itemData);
        PartyMenu_SelectMoveForPpRestoreOrPpUp(partyMenu, 1);
        return PARTY_MENU_STATE_SELECT_MOVE;
    }

    if (CanUseItemOnMonInParty(partyMenu->args->party, partyMenu->args->itemId, partyMenu->partyMonIndex, 0, HEAP_ID_PARTY_MENU) == TRUE) {
        Bag_TakeItem(partyMenu->args->bag, partyMenu->args->itemId, 1, HEAP_ID_PARTY_MENU);
        if (GetItemAttr_PreloadedItemData(itemData, ITEM_PARAM_EVOLUTION)) {
            struct PartyPokemon *mon = Party_GetMonByIndex(partyMenu->args->party, partyMenu->partyMonIndex);
            partyMenu->args->species = GetMonEvolution(NULL, mon, EVOCTX_ITEM_USE, partyMenu->args->itemId, &partyMenu->args->evoMethod);
            partyMenu->args->selectedAction = 8;
            sys_FreeMemoryEz(itemData);
            return PARTY_MENU_STATE_BEGIN_EXIT;
        } else {
            PartyMenu_SetItemUseFuncFromBagSelection(partyMenu);
        }
    } else {
        PartyMenu_PrintMessageOnWindow34(partyMenu, 102, TRUE);
        partyMenu->partyMonIndex = 8;
        partyMenu->itemUseCallback = PartyMenu_ItemUseFunc_WaitTextPrinterThenExit;
    }
    sys_FreeMemoryEz(itemData);
    return PARTY_MENU_STATE_ITEM_USE_CB;
}

void LONG_CALL PartyMenu_PrintContextMenuItemText(struct PartyMenu *partyMenu, struct PartyMenuContextMenu *contextMenu, int numItems, int selection, int state, BOOL depressed)
{
    u32 color;
    u32 y;
    u32 x = 0;
    u32 fillValue;
    u8 windowId;

    windowId = sButtonWindowIDs[numItems - 1][state][selection];

    if (windowId == 7) {
        if (depressed == FALSE) {
            fillValue = 4;
            color = MAKE_TEXT_COLOR(14, 15, 4);
        } else {
            fillValue = 11;
            color = MAKE_TEXT_COLOR(14, 15, 11);
        }
        y = 4;
        x = FontID_String_GetCenterAlignmentX(4, contextMenu->items[selection].text, 0, GetWindowWidth(&partyMenu->contextMenuButtonWindows[windowId]) * 8);
    } else {
        if (partyMenu->args->itemId == ITEM_ROTOM_CATALOG) {
            // use the normal white colored text instead of blue field move text
            if (depressed == FALSE) {
                fillValue = 4;
                color = MAKE_TEXT_COLOR(14, 15, 4);
            } else {
                fillValue = 11;
                color = MAKE_TEXT_COLOR(14, 15, 11);
            }
        } else {
            if (depressed == FALSE) {
                fillValue = 4;
                color = getButtonColorRaised(selection);
            } else {
                fillValue = 11;
                color = getButtonColorDepressed(selection);
            }
        }
        y = 0;
    }
    FillWindowPixelBuffer(&partyMenu->contextMenuButtonWindows[windowId], fillValue);
    AddTextPrinterParameterizedWithColor(&partyMenu->contextMenuButtonWindows[windowId], 4, contextMenu->items[selection].text, x, y, TEXT_SPEED_NOTRANSFER, color, NULL);
    ScheduleWindowCopyToVram(&partyMenu->contextMenuButtonWindows[windowId]);
}

void LONG_CALL sub_0207E3A8(struct PartyMenu *partyMenu, int numItems, int selection, int state, int frameType)
{
    u16 tiles[8];
    s8 id = sButtonWindowIDs[numItems - 1][state][selection];

    // shallow copy vanilla rectangle
    u8 tempRect[4];
    const u8 *rect = sButtonRects[id];
    tempRect[0]=rect[0];
    tempRect[1]=rect[1];
    tempRect[2]=rect[2];
    tempRect[3]=rect[3];

    // nudge down one tile to line up columns
    if (partyMenu->args->itemId == ITEM_ROTOM_CATALOG) {
        if (id == 0 || id == 1 || id == 2) {
            tempRect[1] -= 1;
        }
    }

    u32 tileStart;
    if (frameType == 0) {
        tileStart = 0x2000;
    } else if (frameType == 1) {
        tileStart = 0x2009;
    } else {
        tileStart = 0x2012;
    }
    tileStart += 10;
    for (int i = 0; i < 8; ++i) { // MAX_BUTTONS_IN_PARTY_MENU ?
        tiles[i] = tileStart + sButtonFrameTileOffsets[i];
    }

    LoadRectToBgTilemapRect(partyMenu->bgConfig, 0, &tiles[0], tempRect[0], tempRect[1], 1, 1);
    LoadRectToBgTilemapRect(partyMenu->bgConfig, 0, &tiles[1], tempRect[0] + tempRect[2] - 1, tempRect[1], 1, 1);
    LoadRectToBgTilemapRect(partyMenu->bgConfig, 0, &tiles[2], tempRect[0], tempRect[1] + tempRect[3] - 1, 1, 1);
    LoadRectToBgTilemapRect(partyMenu->bgConfig, 0, &tiles[3], tempRect[0] + tempRect[2] - 1, tempRect[1] + tempRect[3] - 1, 1, 1);
    FillBgTilemapRect(partyMenu->bgConfig, 0, tiles[4], tempRect[0], tempRect[1] + 1, 1, tempRect[3] - 2, TILEMAP_FILL_OVWT_PAL);
    FillBgTilemapRect(partyMenu->bgConfig, 0, tiles[5], tempRect[0] + tempRect[2] - 1, tempRect[1] + 1, 1, tempRect[3] - 2, TILEMAP_FILL_OVWT_PAL);
    FillBgTilemapRect(partyMenu->bgConfig, 0, tiles[6], tempRect[0] + 1, tempRect[1], tempRect[2] - 2, 1, TILEMAP_FILL_OVWT_PAL);
    FillBgTilemapRect(partyMenu->bgConfig, 0, tiles[7], tempRect[0] + 1, tempRect[1] + tempRect[3] - 1, tempRect[2] - 2, 1, TILEMAP_FILL_OVWT_PAL);
}

void LONG_CALL PartyMenu_StartContextMenuButtonPressAnim_FromCursorObj(struct PartyMenu *partyMenu, PartyMenuContextMenuCursor *cursor, int followUpState)
{
    int followUpStateTmp = followUpState;

    // intercept cancel signals sent from the B button to properly route to the Quit button for specific items
    u8 idx = cursor->numItems - 1;
    if (partyMenu->args && partyMenu->args->itemId == ITEM_ROTOM_CATALOG && followUpState == LIST_CANCEL) {
        for (int i = 0; i < cursor->numItems; i++) {
            if ((u32)cursor->menu.items[i].value == (u32)PartyMonContextMenuAction_QuitToBag) {
                idx = i;
                break;
            }
        }
        cursor->selection = idx;
        followUpStateTmp = cursor->menu.items[idx].value;
    }

    PartyMenuContextButtonAnimData *animData = &partyMenu->contextMenuButtonAnim;

    animData->autoAnimTimer = 0;
    animData->buttonAnimState = 0;
    animData->template = &cursor->menu;
    animData->numItems = cursor->numItems;
    animData->selection = cursor->selection;
    animData->state = cursor->state;
    animData->followUpState = followUpStateTmp;
    animData->active = TRUE;
}