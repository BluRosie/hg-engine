#include "../include/types.h"
#include "../include/battle.h"
#include "../include/pokemon.h"
#include "../include/constants/ability.h"
#include "../include/constants/item.h"
#include "../include/constants/species.h"
#include "../include/constants/file.h"
#include "../include/constants/game.h"

void PokePasoParaSet(struct pokemon_paso_param *ppp,int mons_no,int level,int pow,int rndflag,u32 rnd,int idflag,u32 id)
{
    u16	sum;
    u32	i,j;
    BOOL flag;

    u32 title, language;
    title = CasetteVersion;
    language = CasetteLanguage;

    PokePasoParaInit(ppp);

    flag=PokePasoParaFastModeOn(ppp);

//個性乱数セット
    if(!rndflag){
        rnd=(gf_rand()|(gf_rand()<<16));
    }
    PokePasoParaPut(ppp,ID_PARA_personal_rnd,(u8 *)&rnd);

//IDナンバーセット
    if(idflag==ID_NO_SHINY){
        do{
            id=(gf_rand()|(gf_rand()<<16));
        }while((((id&0xffff0000)>>16)^(id&0xffff)^((rnd&0xffff0000)>>16)^(rnd&0xffff))<8);
    }
    else if(idflag!=ID_SET){
        id=0;
    }
    PokePasoParaPut(ppp,ID_PARA_id_no,(u8 *)&id);

//国コード
    PokePasoParaPut(ppp,ID_PARA_country_code,(u8 *)&language);

//ポケモンナンバーセット
    PokePasoParaPut(ppp,ID_PARA_monsno,(u8 *)&mons_no);

//ニックネームセット
//	MSGDAT_MonsNameGet(mons_no,HEAPID_BASE_SYSTEM,buf);
//	PokePasoParaPut(ppp,ID_PARA_nickname,(u8 *)&buf);
    PokePasoParaPut(ppp,ID_PARA_default_name,NULL);

//経験値セット
    i=PokeLevelExpGet(mons_no,level);
    PokePasoParaPut(ppp,ID_PARA_exp,(u8 *)&i);

//友好値セット
    i=PokePersonalParaGet(mons_no,ID_base_friendship);
    PokePasoParaPut(ppp,ID_PARA_friend,(u8 *)&i);

//捕獲データセット
    PokePasoParaPut(ppp,ID_PARA_get_level,(u8 *)&level);
    PokePasoParaPut(ppp,ID_PARA_get_cassette,(u8 *)&title);
    i=ITEM_POKE_BALL;	//デフォルトはモンスターボールにしておく
    PokePasoParaPut(ppp,ID_PARA_get_ball,(u8 *)&i);

//パワー乱数セット
    if(pow<POW_RND){
        PokePasoParaPut(ppp,ID_PARA_hp_rnd,(u8 *)&pow);
        PokePasoParaPut(ppp,ID_PARA_pow_rnd,(u8 *)&pow);
        PokePasoParaPut(ppp,ID_PARA_def_rnd,(u8 *)&pow);
        PokePasoParaPut(ppp,ID_PARA_agi_rnd,(u8 *)&pow);
        PokePasoParaPut(ppp,ID_PARA_spepow_rnd,(u8 *)&pow);
        PokePasoParaPut(ppp,ID_PARA_spedef_rnd,(u8 *)&pow);
    }
    else{
        i=gf_rand();
        j=(i&(0x001f<< 0))>> 0;
        PokePasoParaPut(ppp,ID_PARA_hp_rnd,(u8 *)&j);
        j=(i&(0x001f<< 5))>> 5;
        PokePasoParaPut(ppp,ID_PARA_pow_rnd,(u8 *)&j);
        j=(i&(0x001f<<10))>>10;
        PokePasoParaPut(ppp,ID_PARA_def_rnd,(u8 *)&j);
        i=gf_rand();
        j=(i&(0x001f<< 0))>> 0;
        PokePasoParaPut(ppp,ID_PARA_agi_rnd,(u8 *)&j);
        j=(i&(0x001f<< 5))>> 5;
        PokePasoParaPut(ppp,ID_PARA_spepow_rnd,(u8 *)&j);
        j=(i&(0x001f<<10))>>10;
        PokePasoParaPut(ppp,ID_PARA_spedef_rnd,(u8 *)&j);
    }

//特殊能力セット
    i = PokePersonalParaGet(mons_no,ID_ability1);
    j = PokePersonalParaGet(mons_no,ID_ability2);
    if(j!=0){
        if(rnd&1){
            PokePasoParaPut(ppp,ID_PARA_speabino,(u8 *)&j);
        }
        else{
            PokePasoParaPut(ppp,ID_PARA_speabino,(u8 *)&i);
        }
    }
    else{
        PokePasoParaPut(ppp,ID_PARA_speabino,(u8 *)&i);
    }

//性別セット
    i=PokePasoSexGet(ppp);
    PokePasoParaPut(ppp,ID_PARA_sex,(u8 *)&i);

//技セット
    PokePasoWazaOboe(ppp);

    PokePasoParaFastModeOff(ppp,flag);
}

