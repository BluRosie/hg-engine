#include "../include/types.h"
#include "../include/battle.h"
#include "../include/pokemon.h"
#include "../include/constants/ability.h"
#include "../include/constants/file.h"
#include "../include/constants/game.h"
#include "../include/constants/item.h"
#include "../include/constants/species.h"

void CreateBoxMonData(struct BoxPokemon *boxmon, int species, int level, int pow, int rndflag, u32 rnd, int idflag, u32 id)
{
    u16 sum;
    u32 i, j;
    BOOL flag;

    u32 title, language;
    title = VERSION_GOLD;
    language = LANG_ENGLISH;

    BoxMonInit(boxmon);

    flag = BoxMonSetFastModeOn(boxmon);

    if(!rndflag){
        rnd = (gf_rand() | (gf_rand() << 16));
    }
    BoxMonDataSet(boxmon,ID_PARA_personal_rnd,(u8 *)&rnd);

    if(idflag==ID_NO_SHINY){
        do{
            id = (gf_rand() | (gf_rand() << 16));
        } while((((id & 0xffff0000) >> 16) ^ (id & 0xffff) ^ ((rnd & 0xffff0000) >> 16) ^ (rnd & 0xffff)) < 8);
    }
    else if(idflag!=ID_SET){
        id=0;
    }

    BoxMonDataSet(boxmon,ID_PARA_id_no,(u8 *)&id);
    BoxMonDataSet(boxmon,ID_PARA_country_code,(u8 *)&language);
    BoxMonDataSet(boxmon,ID_PARA_monsno,(u8 *)&species);
    BoxMonDataSet(boxmon,ID_PARA_default_name,NULL);

    i=PokeLevelExpGet(species,level);
    BoxMonDataSet(boxmon,ID_PARA_exp,(u8 *)&i);

    i=PokePersonalParaGet(species,PERSONAL_BASE_FRIENDSHIP);
    BoxMonDataSet(boxmon,ID_PARA_friend,(u8 *)&i);

    BoxMonDataSet(boxmon,ID_PARA_get_level,(u8 *)&level);
    BoxMonDataSet(boxmon,ID_PARA_get_cassette,(u8 *)&title);
    i=ITEM_POKE_BALL;
    BoxMonDataSet(boxmon,ID_PARA_get_ball,(u8 *)&i);

    if(pow <= MAX_IVS){
        BoxMonDataSet(boxmon,ID_PARA_hp_rnd,(u8 *)&pow);
        BoxMonDataSet(boxmon,ID_PARA_pow_rnd,(u8 *)&pow);
        BoxMonDataSet(boxmon,ID_PARA_def_rnd,(u8 *)&pow);
        BoxMonDataSet(boxmon,ID_PARA_agi_rnd,(u8 *)&pow);
        BoxMonDataSet(boxmon,ID_PARA_spepow_rnd,(u8 *)&pow);
        BoxMonDataSet(boxmon,ID_PARA_spedef_rnd,(u8 *)&pow);
    }
    else{ // why the fuck is it done like this
        i=gf_rand();
        j=(i&(0x001f<< 0))>> 0;
        BoxMonDataSet(boxmon,ID_PARA_hp_rnd,(u8 *)&j);
        j=(i&(0x001f<< 5))>> 5;
        BoxMonDataSet(boxmon,ID_PARA_pow_rnd,(u8 *)&j);
        j=(i&(0x001f<<10))>>10;
        BoxMonDataSet(boxmon,ID_PARA_def_rnd,(u8 *)&j);
        i=gf_rand();
        j=(i&(0x001f<< 0))>> 0;
        BoxMonDataSet(boxmon,ID_PARA_agi_rnd,(u8 *)&j);
        j=(i&(0x001f<< 5))>> 5;
        BoxMonDataSet(boxmon,ID_PARA_spepow_rnd,(u8 *)&j);
        j=(i&(0x001f<<10))>>10;
        BoxMonDataSet(boxmon,ID_PARA_spedef_rnd,(u8 *)&j);
    }

    i = PokePersonalParaGet(species,PERSONAL_ABILITY_1);
    j = PokePersonalParaGet(species,PERSONAL_ABILITY_2);
    if(j!=0){
        if(rnd&1){
            BoxMonDataSet(boxmon,ID_PARA_speabino,(u8 *)&j);
        }
        else{
            BoxMonDataSet(boxmon,ID_PARA_speabino,(u8 *)&i);
        }
    }
    else{
        BoxMonDataSet(boxmon,ID_PARA_speabino,(u8 *)&i);
    }

    i=GetBoxMonGender(boxmon);
    BoxMonDataSet(boxmon,ID_PARA_sex,(u8 *)&i);
    FillInBoxMonLearnset(boxmon);
    BoxMonSetFastModeOff(boxmon,flag);
}


// defining this as a bitfield for both best tool compatibility/not having to write massive case statements when parsing

#define TRAINER_DATA_TYPE_NOTHING 0x00
#define TRAINER_DATA_TYPE_MOVES 0x01
#define TRAINER_DATA_TYPE_ITEMS 0x02


void MakeTrainerPokemonParty(struct BATTLE_PARAM *bp, int num, int heapID)
{
    void *buf;
    int i, j;
    u32 rnd_tmp, rnd, seed_tmp;
    u8 pow;
    struct PartyPokemon *pp;

    seed_tmp = gf_get_seed();

    PokeParty_Init(bp->poke_party[num], 6);

    buf = sys_AllocMemory(heapID, sizeof(TRAINER_MON_DATA_MOVES_AND_HELD_ITEM) * 6);
    pp = PokemonParam_AllocWork(heapID);

    TT_TrainerPokeDataGet(bp->trainer_id[num], buf);

    if (TT_TrainerTypeSexGet(bp->trainer_data[num].tr_type) == 1) // if trainer is female
    {
        rnd_tmp = 120;
    }
    else
    {
        rnd_tmp = 136;
    }

    switch(bp->trainer_data[num].data_type)
    {
    case TRAINER_DATA_TYPE_NOTHING:
        {
            TRAINER_MON_DATA_NOTHING *tr_mon_data;
            u16 monsno;
            u8 form_no, ability;

            tr_mon_data = (TRAINER_MON_DATA_NOTHING *)buf;
            for (i = 0; i < bp->trainer_data[num].poke_count; i++)
            {
                monsno = tr_mon_data[i].monsno & 0x03ff;
                form_no = (tr_mon_data[i].monsno & 0xfc00) >> 10;
                // new:  maybe forces specific gender for specific trainers?
                try_force_gender_maybe(monsno, form_no, tr_mon_data[num].abilityslot, &rnd_tmp);
                rnd = tr_mon_data[i].ivs + tr_mon_data[i].level + monsno + bp->trainer_id[num];
                gf_srand(rnd);
                for (j = 0; j < bp->trainer_data[num].tr_type; j++)
                {
                    rnd = gf_rand();
                }  
                rnd = (rnd << 8) + rnd_tmp;
                pow = tr_mon_data[i].ivs * 31 / 255;
                PokeParaSet(pp, monsno, tr_mon_data[i].level, pow, 1, rnd, 2, 0);
                TrainerCBSet(tr_mon_data[i].custom, pp, heapID);
                SetMonData(pp, ID_PARA_form_no, &form_no);
                // also new:  set mon friendship to 0 if it has frustration
                TrainerMonHandleFrustration(pp);
                PokeParty_Add(bp->poke_party[num], pp);
            }
        }
        break;
    case TRAINER_DATA_TYPE_MOVES:
        {
            TRAINER_MON_DATA_MOVES *tr_mon_data;
            u16 monsno;
            u8 form_no;

            tr_mon_data = (TRAINER_MON_DATA_MOVES *)buf;
            for (i = 0; i < bp->trainer_data[num].poke_count; i++)
            {
                monsno = tr_mon_data[i].monsno & 0x03ff;
                form_no = (tr_mon_data[i].monsno & 0xfc00) >> 10;
                try_force_gender_maybe(monsno, form_no, tr_mon_data[num].abilityslot, &rnd_tmp);
                rnd = tr_mon_data[i].ivs + tr_mon_data[i].level + monsno + bp->trainer_id[num];
                gf_srand(rnd);
                for(j = 0; j < bp->trainer_data[num].tr_type; j++)
                {
                    rnd = gf_rand();
                }
                rnd = (rnd << 8) + rnd_tmp;
                pow = tr_mon_data[i].ivs * 31 / 255;
                PokeParaSet(pp, monsno, tr_mon_data[i].level, pow, 1 , rnd, 2, 0);
                for (j = 0; j < 4; j++)
                {
                    SetPartyPokemonMoveAtPos(pp, tr_mon_data[i].moves[j], j);
                }
                TrainerCBSet(tr_mon_data[i].custom, pp, heapID);
                SetMonData(pp, ID_PARA_form_no, &form_no);
                TrainerMonHandleFrustration(pp);
                PokeParty_Add(bp->poke_party[num], pp);
            }
        }
        break;
    case TRAINER_DATA_TYPE_ITEMS:
        {
            TRAINER_MON_DATA_HELD_ITEM *tr_mon_data;
            u16 monsno;
            u8 form_no;

            tr_mon_data = (TRAINER_MON_DATA_HELD_ITEM *)buf;
            for (i = 0; i < bp->trainer_data[num].poke_count; i++)
            {
                monsno = tr_mon_data[i].monsno & 0x03ff;
                form_no = (tr_mon_data[i].monsno & 0xfc00) >> 10;
                try_force_gender_maybe(monsno, form_no, tr_mon_data[num].abilityslot, &rnd_tmp);
                rnd = tr_mon_data[i].ivs + tr_mon_data[i].level + monsno + bp->trainer_id[num];
                gf_srand(rnd);
                for(j = 0; j < bp->trainer_data[num].tr_type; j++)
                {
                    rnd = gf_rand();
                }
                rnd = (rnd << 8) + rnd_tmp;
                pow = tr_mon_data[i].ivs * 31 / 255;
                PokeParaSet(pp, monsno, tr_mon_data[i].level, pow, 1,rnd, 2, 0);
                SetMonData(pp, ID_PARA_item, (u8 *)&tr_mon_data[i].itemno); //interesting
                TrainerCBSet(tr_mon_data[i].custom, pp, heapID);
                SetMonData(pp, ID_PARA_form_no, &form_no);
                TrainerMonHandleFrustration(pp);
                PokeParty_Add(bp->poke_party[num], pp);
            }
        }
        break;
    case TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS:
        {
            TRAINER_MON_DATA_MOVES_AND_HELD_ITEM *tr_mon_data;
            u16 monsno;
            u8 form_no;

            tr_mon_data = (TRAINER_MON_DATA_MOVES_AND_HELD_ITEM *)buf;
            for (i = 0; i < bp->trainer_data[num].poke_count; i++)
            {
                monsno = tr_mon_data[i].monsno & 0x03ff;
                form_no = (tr_mon_data[i].monsno & 0xfc00) >> 10;
                try_force_gender_maybe(monsno, form_no, tr_mon_data[num].abilityslot, &rnd_tmp);
                rnd = tr_mon_data[i].ivs + tr_mon_data[i].level + monsno + bp->trainer_id[num];
                gf_srand(rnd);
                for (j = 0;j<bp->trainer_data[num].tr_type;j++){
                    rnd = gf_rand();
                }
                rnd = (rnd << 8) + rnd_tmp;
                pow = tr_mon_data[i].ivs * 31 / 255;
                PokeParaSet(pp, monsno, tr_mon_data[i].level, pow, 1, rnd, 2, 0);
                SetMonData(pp, ID_PARA_item, (u8 *)&tr_mon_data[i].itemno);
                for (j = 0; j < 4; j++)
                {
                    SetPartyPokemonMoveAtPos(pp, tr_mon_data[i].moves[j], j);
                }
                TrainerCBSet(tr_mon_data[i].custom, pp, heapID);
                SetMonData(pp, ID_PARA_form_no, &form_no);
                TrainerMonHandleFrustration(pp);
                PokeParty_Add(bp->poke_party[num], pp);
            }
        }
        break;
    }
    sys_FreeMemoryEz(buf);
    sys_FreeMemoryEz(pp);

    gf_srand(seed_tmp);
}
