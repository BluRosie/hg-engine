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
    u16	sum;
    u32	i, j;
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

