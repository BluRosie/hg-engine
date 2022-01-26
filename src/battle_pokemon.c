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
#define TRAINER_DATA_TYPE_ABILITY 0x04
#define TRAINER_DATA_TYPE_BALL 0x08
#define TRAINER_DATA_TYPE_IV_SET 0x10
#define TRAINER_DATA_TYPE_EV_SET 0x20

#define TRAINER_DATA_TYPE_COMPLETELY_CUSTOM 0x80


void MakeTrainerPokemonParty(struct BATTLE_PARAM *bp, int num, int heapID)
{
    u8 *buf;
    int i, j;
    u32 rnd_tmp, rnd, seed_tmp;
    u8 pow;
    struct PartyPokemon *pp;

    seed_tmp = gf_get_seed();

    PokeParty_Init(bp->poke_party[num], 6);

    buf = (u8 *)sys_AllocMemory(heapID, sizeof(FULL_TRAINER_MON_DATA_STRUCTURE) * 6);
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
    
    // goal:  get rid of massive switch statement with each individual byte.  make the trainer type a bitfield
    if ((bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_COMPLETELY_CUSTOM) == 0)
    {
        u16 species, item, ability, level, ball;
        u16 offset = 0;
        u16 moves[4];
        u8 ivnums[6];
        u8 evnums[6];
        u8 shiny;
        u8 form_no, abilityslot, ballseal;
        
        for (i = 0; i < bp->trainer_data[num].poke_count; i++)
        {
            // ivs field
            pow = buf[offset];
            offset++;
            
            // abilityslot field
            abilityslot = buf[offset];
            offset++;
            
            // level field
            level = buf[offset] | (buf[offset+1] << 8);
            offset += 2;
            
            // species field
            species = buf[offset] | (buf[offset+1] << 8);
            offset += 2;
            form_no = (species & 0xFC00) >> 10;
            species &= 0x03FF;  
            
            // item field - conditional
            if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ITEMS)
            {
                item = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }
            
            // moves field - conditional
            if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_MOVES)
            {
                for (j = 0; j < 4; j++)
                {
                    moves[j] = buf[offset] | (buf[offset+1] << 8);
                    offset += 2;
                }
            }
            
            // ability field
            if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ABILITY)
            {
                ability = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }
            
            // custom ball field
            if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_BALL)
            {
                ball = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            //ivs field
            if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_IV_SET)
            {
                for(int x = 0; x < 6; x++)
                {
                    ivnums[x] = buf[offset];
                    if(ivnums[x] > 31)
                        ivnums[x] = 31;
                    offset++;
                }
            }

            //evs field
            if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_EV_SET)
            {
                for(int x = 0; x < 6; x++)
                {
                    evnums[x] = buf[offset];
                    offset++;
                }
            }
            
            // ball seal field 
            ballseal = buf[offset] | (buf[offset+1] << 8);
            offset += 2; // this is necessary for some reason, but matches?  what the fuck?
            
            // now set mon data
            try_force_gender_maybe(species, form_no, abilityslot, &rnd_tmp);
            rnd = pow + level + species + bp->trainer_id[num];
            gf_srand(rnd);
            for (j = 0; j < bp->trainer_data[num].tr_type; j++)
            {
                rnd = gf_rand();
            }
            rnd = (rnd << 8) + rnd_tmp;
            pow = pow * 31 / 255;
            PokeParaSet(pp, species, level, pow, 1, rnd, 2, 0);
            if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ITEMS)
            {
                SetMonData(pp, ID_PARA_item, &item);
            }
            if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_MOVES)
            {
                for (j = 0; j < 4; j++)
                {
                    SetPartyPokemonMoveAtPos(pp, moves[j], j);
                }
            }
            TrainerCBSet(ballseal, pp, heapID);
            if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ABILITY)
            {
                SetMonData(pp, ID_PARA_speabino, &ability);
            }
            if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_BALL)
            {
                SetMonData(pp, ID_PARA_get_ball, &ball);
            }
            if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_IV_SET)
            {
                SetMonData(pp,ID_PARA_hp_rnd, &ivnums[0]);
                SetMonData(pp,ID_PARA_pow_rnd, &ivnums[1]);
                SetMonData(pp,ID_PARA_def_rnd, &ivnums[2]);
                SetMonData(pp,ID_PARA_agi_rnd, &ivnums[3]);
                SetMonData(pp,ID_PARA_spepow_rnd, &ivnums[4]);
                SetMonData(pp,ID_PARA_spedef_rnd, &ivnums[5]);
            }
            if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_EV_SET)
            {
                SetMonData(pp,ID_PARA_hp_exp, &evnums[0]);
                SetMonData(pp,ID_PARA_pow_exp, &evnums[1]);
                SetMonData(pp,ID_PARA_def_exp, &evnums[2]);
                SetMonData(pp,ID_PARA_agi_exp, &evnums[3]);
                SetMonData(pp,ID_PARA_spepow_exp, &evnums[4]);
                SetMonData(pp,ID_PARA_spedef_exp, &evnums[5]);
            }
            SetMonData(pp, ID_PARA_form_no, &form_no);
            TrainerMonHandleFrustration(pp);
            PokeParty_Add(bp->poke_party[num], pp);
        }
    }

    sys_FreeMemoryEz(buf);
    sys_FreeMemoryEz(pp);

    gf_srand(seed_tmp);
}
