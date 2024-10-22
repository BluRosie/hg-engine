#include "../include/types.h"
#include "../include/config.h"
#include "../include/pokemon.h"
#include "../include/battle.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"
#include "../include/party_menu.h"

#if defined(USE_CUSTOM_FIELDMOVES_CHECK_IN_PARTY_MENU)
u8 customFieldMoveCheckInPartyMenu(struct PLIST_WORK *wk, struct PartyPokemon *pp, u8 *buf, u8 count)
{
    /* example code to add Fly to all flying type Pokemons. Up to 4 field moves can be added this way.
    u8 fieldMoveIndex = 0;
    u8 type1 = GetMonData(pp, MON_DATA_TYPE_1, NULL);
    u8 type2 = GetMonData(pp, MON_DATA_TYPE_2, NULL);
    if (type1 == TYPE_FLYING || type2 == TYPE_FLYING)
    {
        buf[count] = PARTY_MON_CONTEXT_MENU_FLY;
        ++count;
        PartyMenu_ContextMenuAddFieldMove(wk, MOVE_FLY, fieldMoveIndex);
    }
    return count;
    */
}
#endif

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
    buf[count] = PARTY_MON_CONTEXT_MENU_QUIT;
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
#if defined(USE_CUSTOM_FIELDMOVES_CHECK_IN_PARTY_MENU)
            count = customFieldMoveCheckInPartyMenu(wk, pp, buf, count);
#else
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
#endif
        }
    }

    return count;
}

