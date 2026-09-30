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
    u32 klayrtrade = GetScriptVar(0x4007); //in scripting, setVar 0x4007 before calling the gift/trade
    u16 Move1 = 65535;
    u16 Move2 = 65535;     // just default it to max, unlikely 65535 moves will ever be defined
    u16 Move3 = 65535;
    u16 Move4 = 65535;

    int pokerus = 0;
    u16 ability = 65535;
    u16 encodedNickname[11];
    u16 encodedOTName[11];

    void EncodeName(char c[], u16 e[]) {
        int j; for (j = 0; j < 11; j++) {
        if (c[j] >= '0' && c[j] <= '9') {e[j] = 0x0121 + (c[j] - '0');}
        else if (c[j] >= 'A' && c[j] <= 'Z') {e[j] = 0x012B + (c[j] - 'A');}
        else if (c[j] >= 'a' && c[j] <= 'z') {e[j] = 0x0145 + (c[j] - 'a');}
        else if (c[j] == '@'){e[j] = 0xFFFF;}
        else c[j] = 0x0000;}}

    // nothing is required to fill out. It just defaults to Kenya's (tradeno 7) (my example data)
    // if you don't want a specfic entry, just delete/comment out as you copy the template down

    // pid for a shiny Kenya is 3420899336, for example if struggling to engineer a shiny trade
#ifdef TRADE_EXPANSION
    if (tradeno == 7) {      // just in case 0x4000 is dirty, and/or you care about vanilla trades


        if (klayrtrade == 1) {               // same as 0x4000 to access this trade.

            // EXAMPLE TRADE FOR YOUR PLEASURE
            trade_dat->give_species = SPECIES_SPEAROW;   // species/form. forms have species names too
            level = 20;
            trade_dat->heldItem = ITEM_NONE; // Held item, changed default to none.
            ability = ABILITY_KEEN_EYE;      // defaults to an appropriate one for the species

            char customnickname[] = "Kenya""@";   //max 10;   add an @ after (its an _end char)
            char customOT[] = "Webster""@";       //max 7;    The max for both is NOT counting the @

            trade_dat->pid = 27486;    	// Personality ID, in DECIMAL.   Controls Gender & Nature
            OtIdLow = 1001;    	   	    // Original Trainer ID # remove front 0's'   MAX 65535
            OtIdHigh = 00000;			// Secret ID  remove front 0's. untested     MAX 65535

            trade_dat->hpIv = 15;
            trade_dat->atkIv = 20;		// Wild IV's are just a random from 0-31, for each IV
            trade_dat->defIv = 15;		// If you want realistic IV's use online dice and copy
            trade_dat->speedIv = 20;	// or just pick some middling numbers that look neat
            trade_dat->spAtkIv = 20;	// Don't Worry!. That's what GameFreak did! Look!
            trade_dat->spDefIv = 20;

            //Move1 = MOVE_LEER;          // if you commend out or delete the moves section, the
            //Move2 = MOVE_FURY_ATTACK;   // mon will end up with some decent appropriate moves
            //Move3 = MOVE_PURSUIT;       // per the species and level
            //Move4 = MOVE_AERIAL_ACE;    // you can define just some, its not all-or-nothing

            pokerus = 0;                // give it germs if you want

            EncodeName(customOT, encodedOTName);
            EncodeName(customnickname, encodedNickname);
        }


        if (klayrtrade == 77) { // Let's make a completly random mon!

        // weeding species is gonna take some work, so stay with the mess!
        bool goodspecies = 0;
        while (goodspecies == 0){
            goodspecies = 1;
            trade_dat->give_species = (gf_rand() % MAX_SPECIES_INCLUDING_FORMS) + 1;
            if(trade_dat->give_species >= 494 && trade_dat->give_species <= 543){goodspecies = 0;}//Bad Eggs, & other garbage data
            if(trade_dat->give_species >= SPECIES_MEGA_START && trade_dat->give_species <= MAX_PRIMAL_NUM){goodspecies = 0;}//Megas & Primals       battle forms dont work
            if(trade_dat->give_species >= SPECIES_RATICATE_ALOLAN_LARGE && trade_dat->give_species <= MAX_ALOLAN_REGIONAL_NUM){goodspecies = 0;}//totems are unimplemented ig
            if(trade_dat->give_species == SPECIES_PIKACHU_COSPLAY){goodspecies = 0;}//naked cosplay
            if(trade_dat->give_species >= (SPECIES_PIKACHU_ORIGINAL_CAP) && trade_dat->give_species <= (SPECIES_CHERRIM_SUNSHINE)){goodspecies = 0;}//hat pikas, castforms, cherrim
            if(trade_dat->give_species == SPECIES_DIALGA_ORIGIN && trade_dat->give_species == SPECIES_PALKIA_ORIGIN){goodspecies = 0;}//Dialga/Palkia Origins
            if(trade_dat->give_species == SPECIES_GRENINJA_BATTLE_BOND && trade_dat->give_species == SPECIES_GRENINJA_ASH){goodspecies = 0;}//all my homies hate ash greninja (battle form)
            if(trade_dat->give_species >= SPECIES_ZYGARDE_10 && trade_dat->give_species <= SPECIES_ZYGARDE_50_COMPLETE){goodspecies = 0;}// the completes work but i dunno
            if(trade_dat->give_species >= SPECIES_MINIOR_CORE_RED && trade_dat->give_species <= SPECIES_NECROZMA_ULTRA_DAWN_WINGS){goodspecies = 0;}//minior core, bustd mimikyu, necrozma
            if(trade_dat->give_species >= SPECIES_CRAMORANT_GULPING && trade_dat->give_species <= SPECIES_TOXTRICITY_LOW_KEY){goodspecies = 0;}//battle only. unfortunate. maybe ill finish  the sprites for them. imagine it. constantly choking on a pika. wonderful. also TOXTRICITY
            // i've gotten to antique sinistea/polteageist.  why is this a thing? no offense, but???
            if(trade_dat->give_species >= SPECIES_ALCREMIE_FILLER_1 && trade_dat->give_species <= SPECIES_CALYREX_SHADOW_RIDER){goodspecies = 0;}//extra creams, faceless eiscue, morpeko, zacian, zamazenta,eternatus,urshifu,zarude,calyrex
            if(trade_dat->give_species >= SPECIES_KLEAVOR_LORD && trade_dat->give_species <= MAX_HISUIAN_REGIONAL_NUM){goodspecies = 0;}//lords and ladies dont work, they lead
            if(trade_dat->give_species >= SPECIES_GIGANTAMAX_FORMS_START && trade_dat->give_species <= MAX_SPECIES_PLZA_MEGAS_FORM_NUM){goodspecies = 0;}//gigas and even more megas
            //weeeyw that took a while. its currently unweighted, so you're 28x more likely to get an unknown than a porygon (because of forms) I might weigh it later. dunno
        }

            level = (gf_rand() % 16)+ 15; // don't want 0-100. too busted. I should tie to badges later
            trade_dat->heldItem = gf_rand() % 867; // real borken, so limted
            ability = gf_rand() % NUM_ABILITIES; // I've yet to weed out broken abilities

            encodedNickname[0] = 0x012B + gf_rand() % 26;   //names are complicated, but i want it
            encodedNickname[1] = gf_rand() % 6;             //to be unique too, y'know?'
            if(encodedNickname[1]==0){encodedNickname[1]=0x0145;}
            if(encodedNickname[1]==1){encodedNickname[1]=0x0149;}
            if(encodedNickname[1]==2){encodedNickname[1]=0x014D;}
            if(encodedNickname[1]==3){encodedNickname[1]=0x0153;}
            if(encodedNickname[1]==4){encodedNickname[1]=0x0159;}
            if(encodedNickname[1]==5){encodedNickname[1]=0x015D;}

            encodedNickname[2] = 0x0145;
            while (encodedNickname[2]==0x0145||encodedNickname[2]==0x0149||encodedNickname[2]==0x014D||encodedNickname[2]==0x0153||encodedNickname[2]==0x015D){
                encodedNickname[2] = 0x0145 + gf_rand() % 26;
            }
            encodedNickname[3] = gf_rand() % 5;
            if(encodedNickname[3]==0){encodedNickname[3]=0x0145;}
            if(encodedNickname[3]==1){encodedNickname[3]=0x0149;}
            if(encodedNickname[3]==2){encodedNickname[3]=0x014D;}
            if(encodedNickname[3]==3){encodedNickname[3]=0x0153;}
            if(encodedNickname[3]==4){encodedNickname[3]=0x0159;}
            encodedNickname[4] = 0x01C6 + gf_rand() % 24; // :)
            encodedNickname[5] = 0xFFFF;

            char customOT[] = "Klayr@";       //well, when it was textlist based, but its not now

            trade_dat->pid = gf_rand() % 4294967295; //u32 goes quite high, yeah?
            OtIdLow = trade_dat->give_species; //set OTID to the ID of the pokemon. was for testing purposes, but it grew on me. It's a feature now.
            OtIdHigh = (gf_rand() % 65536)+1;

            trade_dat->hpIv = gf_rand() % 32;
            trade_dat->atkIv = gf_rand() % 32;
            trade_dat->defIv = gf_rand() % 32;
            trade_dat->speedIv = gf_rand() % 32;
            trade_dat->spAtkIv = gf_rand() % 32;
            trade_dat->spDefIv = gf_rand() % 32;

            Move1 = gf_rand() % NUM_OF_CANONICAL_MOVES;     // MAX moves say "you cant use that!"
            Move2 = gf_rand() % NUM_OF_CANONICAL_MOVES;     // which i find funny, so they're staying
            Move3 = gf_rand() % NUM_OF_CANONICAL_MOVES;     //
            Move4 = gf_rand() % NUM_OF_CANONICAL_MOVES;     // i haven't weeded out any crashers'

            pokerus = gf_rand() % 8192;    // Meh, boosted to shiny odds. why not
            if(pokerus > 1){pokerus = 0;}  //idk if a value of too high is weird. reset if != 1


            EncodeName(customOT, encodedOTName);
        }

        
        
        
    }
#endif //TRADE_EXPANSION

    // there is ALOT of data you COULD inject if you want. You can find a list in
    // include/pokemon.h, change its stats, give PP ups, a ribbon, all kind of niche cases
    // im sure if you want a specifc spinda or something its possible.
    // you might need to make a script to copy that weird kinda data from an existing mon
    // cause im sure spinda markings, or Ball Seals data is all kinds of complicated.

    if (OtIdHigh + OtIdLow != 0){                   // see if user inputted a trainer ID
    trade_dat->otId = (OtIdHigh * 65536)+OtIdLow;}  //combine OTID and SID into one var

    PokeParaSet(mon, trade_dat->give_species, level, 32, TRUE, trade_dat->pid, OT_ID_PRESET, trade_dat->otId);

    heapId_2 = (int)heapId;

    name = _GetNpcTradeName(heapId_2, tradeno);

    if(encodedNickname[0] != 0){SetMonData(mon, MON_DATA_NICKNAME, encodedNickname);}
    else{SetMonData(mon, MON_DATA_NICKNAME_3 /*MON_DATA_NICKNAME_STRING = 119*/, name);}

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
