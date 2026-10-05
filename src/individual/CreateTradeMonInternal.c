#include "../../include/constants/species.h"
#include "../../include/npc_trade.h"
#include "../../include/pokemon.h"
#include "../../include/save.h"
#include "../../include/types.h"

void __attribute__((section(".init"))) CreateTradeMon_Internal(struct PartyPokemon *mon, struct NPCTrade *trade_dat, u32 level, u32 tradeno, u32 mapno, u32 met_level_strat, u32 heapId)
{
    String *name;
    u8 nickname_flag;
    u32 mapsec;
    int heapId_2;

    u16 OtIdLow = 0;
    u16 OtIdHigh = 0;
    u32 newTrade = GetScriptVar(0x4007); //in scripting, setVar 0x4007 before calling the gift/trade
    u16 Move1 = 65535;
    u16 Move2 = 65535;    
    u16 Move3 = 65535;
    u16 Move4 = 65535;
    u16 ball =  65535;
    int pokerus = 0;
    u16 ability = 65535;
    u16 encodedNickname[11];
    encodedNickname[0] = 0;
    u16 encodedOTName[11];

    void EncodeName(char c[], u16 e[]) {
        int j; for (j = 0; j < 11; j++) {
        if (c[j] >= '0' && c[j] <= '9') {e[j] = 0x0121 + (c[j] - '0');}
        else if (c[j] >= 'A' && c[j] <= 'Z') {e[j] = 0x012B + (c[j] - 'A');}
        else if (c[j] >= 'a' && c[j] <= 'z') {e[j] = 0x0145 + (c[j] - 'a');}
        else if (c[j] == '@'){e[j] = 0xFFFF;}
        else c[j] = 0x0000;}}
    

  
#ifdef TRADE_EXPANSION
    if (tradeno == 7) {    
                            
                            
        if (newTrade == 1) {               

            trade_dat->give_species = SPECIES_SPEAROW;   
            level = 10;
            trade_dat->heldItem = ITEM_NONE; 
            ability = ABILITY_KEEN_EYE;      // defaults to an appropriate one for the species if undefined
            ball = ITEM_POKE_BALL;           

            char customnickname[] = "Kenya""@";   //max 10; 
            char customOT[] = "Webster""@";       //max 7;    The max for both is NOT counting the @s

            trade_dat->pid = 27486;    	// Personality IDControls Gender & Nature
            OtIdLow = 1001;    	   	    // Original Trainer ID # remove front 0's'   MAX 65535
            OtIdHigh = 00000;			// Secret ID  remove front 0's. untested     MAX 65535

            trade_dat->hpIv = 15;        // 0-31
            trade_dat->atkIv = 20;		
            trade_dat->defIv = 15;		
            trade_dat->speedIv = 20;	
            trade_dat->spAtkIv = 20;	
            trade_dat->spDefIv = 20;

            //Move1 = MOVE_LEER;          // if you commend out or delete the moves section, the
            //Move2 = MOVE_FURY_ATTACK;   // mon will end up with some decent appropriate moves
            //Move3 = MOVE_PURSUIT;       // per the species and level
            //Move4 = MOVE_AERIAL_ACE;    

            pokerus = 0;              

            EncodeName(customOT, encodedOTName);
            EncodeName(customnickname, encodedNickname);
        }


    }
#endif //TRADE_EXPANSION

    // there is ALOT of data you COULD inject if you want. You can find a list in
    // include/pokemon.h, change its stats, give PP ups, a ribbon, all kind of nicher cases


    if (OtIdHigh + OtIdLow != 0){                   
    trade_dat->otId = (OtIdHigh + 65536)+OtIdLow;}  

    PokeParaSet(mon, trade_dat->give_species, level, 32, TRUE, trade_dat->pid, OT_ID_PRESET, trade_dat->otId);

    heapId_2 = (int)heapId;

    name = _GetNpcTradeName(heapId_2, tradeno);

    SetMonData(mon, MON_DATA_NICKNAME_3 /*MON_DATA_NICKNAME_STRING = 119*/, name);
    if(encodedNickname[0] != 0){SetMonData(mon, MON_DATA_NICKNAME, encodedNickname);}

    String_Delete(name);
    nickname_flag = TRUE;
    SetMonData(mon, MON_DATA_HAS_NICKNAME, &nickname_flag);

    if(ability != 65535){
    SetMonData(mon, MON_DATA_ABILITY, &ability);}

    SetMonData(mon, MON_DATA_HP_IV, &trade_dat->hpIv);
    SetMonData(mon, MON_DATA_ATK_IV, &trade_dat->atkIv);
    SetMonData(mon, MON_DATA_DEF_IV, &trade_dat->defIv);
    SetMonData(mon, MON_DATA_SPEED_IV, &trade_dat->speedIv);
    SetMonData(mon, MON_DATA_SPATK_IV, &trade_dat->spAtkIv);
    SetMonData(mon, MON_DATA_SPDEF_IV, &trade_dat->spDefIv);

    SetMonData(mon, MON_DATA_COOL, &trade_dat->cool);
    SetMonData(mon, MON_DATA_BEAUTY, &trade_dat->beauty);
    SetMonData(mon, MON_DATA_CUTE, &trade_dat->cute);
    SetMonData(mon, MON_DATA_SMART, &trade_dat->smart);
    SetMonData(mon, MON_DATA_TOUGH, &trade_dat->tough);

    if(Move1 != 65535){
        SetMonData(mon, MON_DATA_MOVE1, &Move1);}
    if(Move2 != 65535){
        SetMonData(mon, MON_DATA_MOVE2, &Move2);}
    if(Move3 != 65535){
        SetMonData(mon, MON_DATA_MOVE3, &Move3);}
    if(Move4 != 65535){
        SetMonData(mon, MON_DATA_MOVE4, &Move4);}

    if(ball != 65535){SetMonData(mon, MON_DATA_POKEBALL, &ball);}


    SetMonData(mon, MON_DATA_POKERUS, &pokerus);

    SetMonData(mon, MON_DATA_HELD_ITEM, &trade_dat->heldItem);

    name = _GetNpcTradeName(heapId_2, NPC_TRADE_OT_NUM(tradeno));
    if(encodedOTName[0] != 0){SetMonData(mon, MON_DATA_OT_NAME, encodedOTName);}
    else{SetMonData(mon, MON_DATA_OT_NAME_2, name);}
    String_Delete(name);

    SetMonData(mon, MON_DATA_MET_GENDER, &trade_dat->gender);
    SetMonData(mon, MON_DATA_GAME_LANGUAGE, &trade_dat->language);

    mapsec = MapHeader_GetMapSec(mapno);
    MonSetTrainerMemo(mon, NULL, met_level_strat, mapsec, heapId);

    RecalcPartyPokemonStats(mon); // CalcMonLevelAndStats(mon);
    // GF_ASSERT(!MonIsShiny(mon));
}
