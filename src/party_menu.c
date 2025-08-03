#include "../include/types.h"
#include "../include/config.h"
#include "../include/pokemon.h"
#include "../include/bag.h"
#include "../include/battle.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"
#include "../include/constants/file.h"
#include "../include/party_menu.h"

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

    switch (wk->dat->mode)//(partyMenu->args->context)
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