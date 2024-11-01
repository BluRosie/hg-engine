#ifndef POKEHEARTGOLD_NPC_TRADE_H
#define POKEHEARTGOLD_NPC_TRADE_H

#include "pokemon.h"
#include "msgdata.h"


#define OT_ID_PRESET 1


typedef enum NpcTradeNum {
    NPC_TRADE_ROCKY_ONIX,
    NPC_TRADE_MUSCLE_MACHOP,
    NPC_TRADE_BILLY_VOLTORB,
    NPC_TRADE_DORIS_DODRIO,
    NPC_TRADE_SPRINTS_RAPIDASH,
    NPC_TRADE_RUSTY_STEELIX,
    NPC_TRADE_SHUCKIE_SHUCKLE,
    NPC_TRADE_KENYA_SPEAROW,
    NPC_TRADE_MAGGIE_MAGNETON,
    NPC_TRADE_PAUL_XATU,
    NPC_TRADE_VOLTY_PIKACHU,
    NPC_TRADE_HORNLETTE_RHYHORN,
    NPC_TRADE_IRON_BELDUM,
    NPC_TRADE_MAX,
} NpcTradeNum;

// Used to index into NARC_msg_msg_0200_bin
#define NPC_TRADE_OT_NUM(tradeNum) (tradeNum + NPC_TRADE_MAX)


typedef struct NPCTrade {
    s32 give_species;
    s32 hpIv;
    s32 atkIv;
    s32 defIv;
    s32 speedIv;
    s32 spAtkIv;
    s32 spDefIv;
    s32 ability;
    s32 otId;
    s32 cool;
    s32 beauty;
    s32 cute;
    s32 smart;
    s32 tough;
    s32 pid;
    s32 heldItem;
    s32 gender;
    s32 sheen;
    s32 language;
    s32 ask_species;
    s32 unk_50;
} NPCTrade; // size=0x54



void LONG_CALL _CreateTradeMon(struct PartyPokemon *mon, struct NPCTrade *trade_dat, u32 level, u32 tradeno, u32 mapno, u32 met_level_strat, u32 heapId);

String* LONG_CALL _GetNpcTradeName(u32 heapId, u32 msgno);
u16 LONG_CALL MapHeader_GetMapSec(u32 map_no);
void LONG_CALL MonSetTrainerMemo(struct PartyPokemon *mon, void *profile, int strat, int mapsec, u32 heapId);

#endif // POKEHEARTGOLD_NPC_TRADE_H
