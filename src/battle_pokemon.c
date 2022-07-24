#include "../include/types.h"
#include "../include/battle.h"
#include "../include/pokemon.h"
#include "../include/constants/ability.h"
#include "../include/constants/battle_message_constants.h"
#include "../include/constants/battle_script_constants.h"
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


/**Trainer Data File Bitfield**/
#define TRAINER_DATA_TYPE_NOTHING 0x00
#define TRAINER_DATA_TYPE_MOVES 0x01
#define TRAINER_DATA_TYPE_ITEMS 0x02
#define TRAINER_DATA_TYPE_ABILITY 0x04
#define TRAINER_DATA_TYPE_BALL 0x08
#define TRAINER_DATA_TYPE_IV_EV_SET 0x10
#define TRAINER_DATA_TYPE_NATURE_SET 0x20
#define TRAINER_DATA_TYPE_SHINY_LOCK 0x40
#define TRAINER_DATA_TYPE_ADDITIONAL_FLAGS 0x80 //whether or not to read extra flags in trpoke entry


/**Trainer Pokemon File Extra Bitfield**/
#define TRAINER_DATA_EXTRA_TYPE_NOTHING 0x00
#define TRAINER_DATA_EXTRA_TYPE_STATUS 0x01
#define TRAINER_DATA_EXTRA_TYPE_HP 0x02
#define TRAINER_DATA_EXTRA_TYPE_ATK 0x04
#define TRAINER_DATA_EXTRA_TYPE_DEF 0x08
#define TRAINER_DATA_EXTRA_TYPE_SPEED 0x10
#define TRAINER_DATA_EXTRA_TYPE_SP_ATK 0x20
#define TRAINER_DATA_EXTRA_TYPE_SP_DEF 0x40
#define TRAINER_DATA_EXTRA_TYPE_TYPES 0x80
#define TRAINER_DATA_EXTRA_TYPE_PP_COUNTS 0x100
#define TRAINER_DATA_EXTRA_TYPE_NICKNAME 0x200

void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

void randomize(int arr[], int n) {
    int i;
    for(i = n-1; i > 0; i--) {
        int j = gf_rand() % (i+1);
        swap(&arr[i], &arr[j]);
    }
}

extern u32 gLastPokemonLevelForMoneyCalc;

void MakeTrainerPokemonParty(struct BATTLE_PARAM *bp, int num, int heapID)
{
    u8 *buf;
    int i, j;
    u32 rnd_tmp, rnd, seed_tmp;
    u8 pow;
    struct PartyPokemon *pp;

    seed_tmp = gf_get_seed();

    PokeParty_Init(bp->poke_party[num], 6);

    buf = (u8 *)sys_AllocMemory(heapID, sizeof(struct FULL_TRAINER_MON_DATA_STRUCTURE) * 6);
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

    u8 pokecount = bp->trainer_data[num].poke_count;
    u8 randomorder_flag = pokecount & 0x80;
    pokecount &= 0x7f;

    // goal:  get rid of massive switch statement with each individual byte.  make the trainer type a bitfield
    u32 id;
    u16 species, item, ability, level, ball, hp, atk, def, speed, spatk, spdef;
    u16 offset = 0;
    u16 moves[4];
    u8 ivnums[6];
    u8 evnums[6];
    u8 types[2];
    u8 ppcounts[4];
    u16 nickname[11];
    u8 form_no, abilityslot, nature, ballseal, shinylock, status, ab1, ab2;
    u32 additionalflags;

    int partyOrder[pokecount];
    if (randomorder_flag)
    {
        if(gf_rand() % 2 == 0)
        {
            for(i = 0; i < pokecount; i++)
            {
                partyOrder[i] = pokecount - 1 - i;
            }
        }
        else
        {
            for(i = 0; i < pokecount; i++)
            {
                partyOrder[i] = i;
            }
        }
    }
    else
    {
        for(i = 0; i < pokecount; i++)
        {
            partyOrder[i] = i;
        }
    }

    if (randomorder_flag && pokecount > 1)
    {
        int numtimes = gf_rand() % 6 + 1;
        for(i = 0; i < numtimes; i++)
        {
            randomize(partyOrder, pokecount);
        }
    }

    struct PartyPokemon * mons[pokecount];

    for (i = 0; i < pokecount; i++)
    {
        mons[i] = PokemonParam_AllocWork(heapID);
        // ivs field
        pow = buf[offset];
        offset++;

        // abilityslot field
        abilityslot = buf[offset];
        offset++;

        // level field
        level = buf[offset] | (buf[offset+1] << 8);
        gLastPokemonLevelForMoneyCalc = level; // ends up being the last level at the end of the loop that we use for the money calc loop default case
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

        // ivs and evs fields
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_IV_EV_SET)
        {
            for(j = 0; j < 6; j++)
            {
                ivnums[j] = buf[offset];
                if(ivnums[j] > 31)
                    ivnums[j] = 31;
                offset++;
            }

            for(j = 0; j < 6; j++)
            {
                evnums[j] = buf[offset];
                offset++;
            }
        }

        // nature field
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_NATURE_SET)
        {
            nature = buf[offset];
            offset++;
        }

        // shiny lock field
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_SHINY_LOCK)
        {
            shinylock = buf[offset];
            offset++;
        }

        // reads extra flags from the trainer pokemon file
        if(bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ADDITIONAL_FLAGS)
        {
            additionalflags = buf[offset] | (buf[offset+1] << 8) | (buf[offset+2] << 16) | (buf[offset+3] << 24);
            offset += 4;

            // status pre-set field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_STATUS)
            {
                status = buf[offset];
                offset++;
            }

            // custom hp stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_HP)
            {
                hp = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom atk stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_ATK)
            {
                atk = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom def stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_DEF)
            {
                def = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom speed stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_SPEED)
            {
                speed = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom spatk stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_SP_ATK)
            {
                spatk = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom spdef stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_SP_DEF)
            {
                spdef = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom types field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_TYPES)
            {
                for(j = 0; j < 2; j++)
                {
                    types[j] = buf[offset];
                    offset++;
                }
            }

            // move PP counts field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_PP_COUNTS)
            {
                for(j = 0; j < 4; j++)
                {
                    ppcounts[j] = buf[offset];
                    offset++;
                }
            }

            // nickname field
            if (bp->trainer_data[num].data_type & TRAINER_DATA_EXTRA_TYPE_NICKNAME)
            {
                for(j = 0; j < 11; j++)
                {
                    nickname[j] = buf[offset] | (buf[offset+1] << 8);
                    offset += 2;
                }
            }
        }

        // ball seal field
        ballseal = buf[offset] | (buf[offset+1] << 8);
        offset += 2;

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
        PokeParaSet(mons[i], species, level, pow, 1, rnd, 2, 0);
        SetMonData(mons[i], ID_PARA_form_no, &form_no);

        //set default abilities
        species = PokeOtherFormMonsNoGet(species, form_no);
        ab1 = PokePersonalParaGet(species,PERSONAL_ABILITY_1);
        ab2 = PokePersonalParaGet(species,PERSONAL_ABILITY_2);
        if(ab2!=0){
            if(abilityslot&1){
                SetMonData(mons[i],ID_PARA_speabino,(u8 *)&ab1);
            }
            else{
                SetMonData(mons[i],ID_PARA_speabino,(u8 *)&ab2);
            }
        }
        else{
            SetMonData(mons[i],ID_PARA_speabino,(u8 *)&ab1);
        }

        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ITEMS)
        {
            SetMonData(mons[i], ID_PARA_item, &item);
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_MOVES)
        {
            for (j = 0; j < 4; j++)
            {
                SetPartyPokemonMoveAtPos(mons[i], moves[j], j);
            }
        }
        TrainerCBSet(ballseal, mons[i], heapID);
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ABILITY)
        {
            SetMonData(mons[i], ID_PARA_speabino, &ability);
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_BALL)
        {
            SetMonData(mons[i], ID_PARA_get_ball, &ball);
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_IV_EV_SET)
        {
            for(j = 0; j < 6; j++)
            {
                SetMonData(mons[i],ID_PARA_hp_rnd + j, &ivnums[j]);
            }

            for(j = 0; j < 6; j++)
            {
                SetMonData(mons[i],ID_PARA_hp_exp + j, &evnums[j]);
            }
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_NATURE_SET)
        {
            u32 pid = GetMonData(mons[i], ID_PARA_personal_rnd, NULL);
            u8 currentNature = pid % 25;
            pid = pid + nature - currentNature;
            SetMonData(mons[i], ID_PARA_personal_rnd, &pid);
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_SHINY_LOCK)
        {
            u32 pid = GetMonData(mons[i], ID_PARA_personal_rnd, NULL);
            if (shinylock != 0)
            {
                do{
                    id = (gf_rand() | (gf_rand() << 16));
                } while((((id & 0xffff0000) >> 16) ^ (id & 0xffff) ^ ((pid & 0xffff0000) >> 16) ^ (pid & 0xffff)) >= 8);
                SetMonData(mons[i], ID_PARA_id_no, &id);
            }
        }
        if(bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ADDITIONAL_FLAGS)
        {
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_STATUS)
            {
                SetMonData(mons[i],ID_PARA_condition, &status);
            }
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_HP)
            {
                SetMonData(mons[i],ID_PARA_hpmax, &hp);
                SetMonData(mons[i],ID_PARA_hp, &hp);
            }
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_ATK)
            {
                SetMonData(mons[i],ID_PARA_pow, &atk);
            }
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_DEF)
            {
                SetMonData(mons[i],ID_PARA_def, &def);
            }
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_SPEED)
            {
                SetMonData(mons[i],ID_PARA_agi, &speed);
            }
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_SP_ATK)
            {
                SetMonData(mons[i],ID_PARA_spepow, &spatk);
            }
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_SP_DEF)
            {
                SetMonData(mons[i],ID_PARA_spedef, &spdef);
            }
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_TYPES)
            {
                for(j = 0; j < 2; j++)
                {
                    SetMonData(mons[i],ID_PARA_type1+j, &types[j]);
                }
            }
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_PP_COUNTS)
            {
                for(j = 0; j < 4; j++)
                {
                    SetMonData(mons[i],ID_PARA_pp_count1+j, &ppcounts[j]);
                }
            }
            if (bp->trainer_data[num].data_type & TRAINER_DATA_EXTRA_TYPE_NICKNAME)
            {
                u32 one = 1;
                SetMonData(pp,ID_PARA_nickname_flag, &one);
                SetMonData(pp,ID_PARA_nickname, &nickname[0]);
            }
        }
        TrainerMonHandleFrustration(mons[i]);
    }

    for(i = 0; i < pokecount; i++)
    {
        PokeParty_Add(bp->poke_party[num], mons[partyOrder[i]]);
        sys_FreeMemoryEz(mons[i]);
    }

    sys_FreeMemoryEz(buf);
    sys_FreeMemoryEz(pp);

    gf_srand(seed_tmp);
}

struct ILLUSION_STRUCT gIllusionStruct = {0};

BOOL BattleFormChangeCheck(void *bw, struct BattleStruct *sp, int *seq_no)
{
    int i, form_no;
    BOOL ret = FALSE;

    for (i = 0; i < BattleWorkClientSetMaxGet(bw); i++)
    {
        sp->client_work = sp->turn_order[i];
        
        //handle castform
        if ((sp->battlemon[sp->client_work].species == SPECIES_CASTFORM)
         && (sp->battlemon[sp->client_work].hp)
         && (GetBattlerAbility(sp,sp->client_work) == ABILITY_FORECAST))
        {
            if ((CheckSideAbility(bw, sp, CHECK_ALL_BATTLER_ALIVE, 0, ABILITY_CLOUD_NINE) == 0)
             && (CheckSideAbility(bw, sp, CHECK_ALL_BATTLER_ALIVE, 0, ABILITY_AIR_LOCK) == 0))
            {
                if (((sp->field_condition & (WEATHER_RAIN_ANY | WEATHER_SUNNY_ANY | WEATHER_HAIL_ANY)) == 0)
                 && (sp->battlemon[sp->client_work].form_no != 0))
                {
//                    sp->battlemon[sp->client_work].type1 = TYPE_NORMAL;
//                    sp->battlemon[sp->client_work].type2 = TYPE_NORMAL;
                    sp->battlemon[sp->client_work].form_no = 0;
                    BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
                    *seq_no = SUB_SEQ_HANDLE_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
                else if ((sp->field_condition & WEATHER_SUNNY_ANY)
                      && (sp->battlemon[sp->client_work].form_no != 1))
                {
//                    sp->battlemon[sp->client_work].type1 = TYPE_FIRE;
//                    sp->battlemon[sp->client_work].type2 = TYPE_FIRE;
                    sp->battlemon[sp->client_work].form_no = 1;
                    BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
                    *seq_no = SUB_SEQ_HANDLE_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
                else if ((sp->field_condition & WEATHER_RAIN_ANY)
                      && (sp->battlemon[sp->client_work].form_no != 2))
                {
//                    sp->battlemon[sp->client_work].type1 = TYPE_WATER;
//                    sp->battlemon[sp->client_work].type2 = TYPE_WATER;
                    sp->battlemon[sp->client_work].form_no = 2;
                    BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
                    *seq_no = SUB_SEQ_HANDLE_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
                else if ((sp->field_condition & WEATHER_HAIL_ANY)
                      && (sp->battlemon[sp->client_work].form_no != 3))
                {
//                    sp->battlemon[sp->client_work].type1 = TYPE_ICE;
//                    sp->battlemon[sp->client_work].type2 = TYPE_ICE;
                    sp->battlemon[sp->client_work].form_no = 3;
                    BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
                    *seq_no = SUB_SEQ_HANDLE_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
            }
            else
            {
                if ((sp->battlemon[sp->client_work].form_no != 0))
                {
//                    sp->battlemon[sp->client_work].type1 = TYPE_NORMAL;
//                    sp->battlemon[sp->client_work].type2 = TYPE_NORMAL;
                    sp->battlemon[sp->client_work].form_no = 0;
                    BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
                    *seq_no = SUB_SEQ_HANDLE_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
            }
        }

        // handle cherrim
        if ((sp->battlemon[sp->client_work].species == SPECIES_CHERRIM)
         && (sp->battlemon[sp->client_work].hp))
        {
            if ((CheckSideAbility(bw, sp, CHECK_ALL_BATTLER_ALIVE, 0, ABILITY_CLOUD_NINE) == 0)
             && (CheckSideAbility(bw, sp, CHECK_ALL_BATTLER_ALIVE, 0, ABILITY_AIR_LOCK) == 0))
            {
                if (((sp->field_condition & (WEATHER_RAIN_ANY | WEATHER_SUNNY_ANY | WEATHER_HAIL_ANY)) == 0)
                 && (sp->battlemon[sp->client_work].form_no == 1))
                {
                    sp->battlemon[sp->client_work].form_no = 0;
                    *seq_no = SUB_SEQ_HANDLE_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
                else if ((sp->field_condition & WEATHER_SUNNY_ANY)
                      && (sp->battlemon[sp->client_work].form_no == 0))
                {
                    sp->battlemon[sp->client_work].form_no = 1;
                    *seq_no = SUB_SEQ_HANDLE_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
                else if ((sp->field_condition & WEATHER_RAIN_ANY)
                      && (sp->battlemon[sp->client_work].form_no == 1))
                {
                    sp->battlemon[sp->client_work].form_no = 0;
                    *seq_no = SUB_SEQ_HANDLE_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
                else if ((sp->field_condition & WEATHER_HAIL_ANY)
                      && (sp->battlemon[sp->client_work].form_no == 1))
                {
                    sp->battlemon[sp->client_work].form_no = 0;
                    *seq_no = SUB_SEQ_HANDLE_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
            }
            else
            {
                if (sp->battlemon[sp->client_work].form_no == 1)
                {
                    sp->battlemon[sp->client_work].form_no = 0;
                    *seq_no = SUB_SEQ_HANDLE_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
            }
        }
        
        // handle arceus
        if ((sp->battlemon[sp->client_work].species == SPECIES_ARCEUS)
         && (sp->battlemon[sp->client_work].hp)
         && (GetBattlerAbility(sp, sp->client_work) == ABILITY_MULTITYPE))
        {
            form_no = GetArceusType(BattleItemDataGet(sp, sp->battlemon[sp->client_work].item, 1));
            if(sp->battlemon[sp->client_work].form_no != form_no)
            {
                sp->battlemon[sp->client_work].form_no = form_no;
                *seq_no = SUB_SEQ_HANDLE_FORM_CHANGE;
                ret = TRUE;
                break;
            }
        }
        
        // handle giratina
        if ((sp->battlemon[sp->client_work].species == SPECIES_GIRATINA)
         && (sp->battlemon[sp->client_work].hp)
         && (sp->battlemon[sp->client_work].form_no == 1))
        {
            if ((sp->battlemon[sp->client_work].condition2 & STATUS2_FLAG_TRANSFORMED)
             || (((BattleWorkBattleStatusFlagGet(bw) & 0x80) == 0) // probably distortion world check
              && (sp->battlemon[sp->client_work].item != ITEM_GRISEOUS_ORB)))
            {
                if(sp->battlemon[sp->client_work].condition2 & STATUS2_FLAG_TRANSFORMED)
                {
                    struct PartyPokemon *pp;
                    int defence;
                    int work;

                    pp = PokemonParam_AllocWork(5);
                    if (BattleTypeGet(bw) & BATTLE_TYPE_DOUBLE)
                    {
                        defence = sp->client_act_work[sp->client_work][1];
                    }
                    else
                    {
                        defence = BATTLER_OPPONENT(sp->client_work);
                    }
                    PokeCopyPPtoPP(BattleWorkPokemonParamGet(bw, defence, sp->sel_mons_no[defence]), pp);
                    work = 0;
                    SetMonData(pp, ID_PARA_item, &work);
                    work = 0;
                    SetMonData(pp, ID_PARA_form_no, &work);
                    PokeParaGiratinaFormChange(pp);
                    sp->battlemon[sp->client_work].attack =  GetMonData(pp,ID_PARA_pow,      0);
                    sp->battlemon[sp->client_work].defense = GetMonData(pp,ID_PARA_def,      0);
                    sp->battlemon[sp->client_work].speed =   GetMonData(pp,ID_PARA_agi,      0);
                    sp->battlemon[sp->client_work].spatk =   GetMonData(pp,ID_PARA_spepow,   0);
                    sp->battlemon[sp->client_work].spdef =   GetMonData(pp,ID_PARA_spedef,   0);
                    sp->battlemon[sp->client_work].ability = GetMonData(pp,ID_PARA_speabino, 0);
                    sp->battlemon[sp->client_work].form_no = 0;
                    sp->server_status_flag2 |= SERVER_STATUS2_FLAG_FORM_CHANGE;
                    SCIO_PSPtoPPCopy(bw, sp, sp->client_work);
                    sys_FreeMemoryEz(pp);
                    *seq_no = SUB_SEQ_HANDLE_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
                else
                {
                    *seq_no = SUB_SEQ_GIRATINA_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
            }
        }
        
        // handle darmanitan zen mode
        if ((sp->battlemon[sp->client_work].species == SPECIES_DARMANITAN)
         && (GetBattlerAbility(sp, sp->client_work) == ABILITY_ZEN_MODE)
         && (sp->battlemon[sp->client_work].hp)
         && (sp->battlemon[sp->client_work].hp <= (sp->battlemon[sp->client_work].maxhp / 2))
         && (sp->battlemon[sp->client_work].form_no < 2)) // forms 0 and 1
        {
            sp->battlemon[sp->client_work].form_no += 2;
            BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
            *seq_no = SUB_SEQ_HANDLE_FORM_CHANGE;
            ret = TRUE;
            break;
        } else if ((sp->battlemon[sp->client_work].species == SPECIES_DARMANITAN)
         && (sp->battlemon[sp->client_work].hp)
         && (sp->battlemon[sp->client_work].hp > (sp->battlemon[sp->client_work].maxhp / 2) || (GetBattlerAbility(sp, sp->client_work) != ABILITY_ZEN_MODE))
         && (sp->battlemon[sp->client_work].form_no >= 2)) // forms 2 and 3 
        {
            sp->battlemon[sp->client_work].form_no -= 2;
            BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
            *seq_no = SUB_SEQ_HANDLE_FORM_CHANGE;
            ret = TRUE;
            break;
        }
        
        // fuck illusion
        if ((sp->battlemon[sp->client_work].species == SPECIES_ZORUA || sp->battlemon[sp->client_work].species == SPECIES_ZOROARK)
         && gIllusionStruct.isSideInIllusion[sp->client_work & 1] == 1
         && (sp->oneSelfFlag[sp->client_work].physical_damage || sp->oneSelfFlag[sp->client_work].special_damage))
        {
            SetMonData(PokeParty_GetMemberPointer(BattleWorkPokePartyGet(bw, sp->client_work), gIllusionStruct.illusionPos[sp->client_work & 1]), ID_PARA_nickname, gIllusionStruct.illusionNameBuf[sp->client_work & 1]);
            
            gIllusionStruct.isSideInIllusion[sp->client_work & 1] = 0;
            gIllusionStruct.illusionPos[sp->client_work & 1] = 0;
            for (int k = 0; k < 11; k++)
            {
                gIllusionStruct.illusionNameBuf[sp->client_work & 1][k] = 0;
            }
            BattleFormChange(sp->client_work, 0, bw, sp, 0);
            *seq_no = SUB_SEQ_HANDLE_FORM_CHANGE;
            ret = TRUE;
            break;
        }
            
    }

    return ret;
}

void ClientPokemonEncount(void *bw, struct CLIENT_PARAM *cp)
{
    struct POKEMON_ENCOUNT_PARAM *pep = (struct POKEMON_ENCOUNT_PARAM *)&cp->client_buffer[0];
    u8 side, newform;
    u16 newmon;
    u32 i;
    
    side = ((cp->client_type & 1) != 0);
    
    if (pep->monsno == SPECIES_ZORUA || pep->monsno == SPECIES_ZOROARK)
    {
        struct POKEPARTY *party = BattleWorkPokePartyGet(bw, side);
        u8 count = party->PokeCount;
        u16 strbuf[11];
        
        newmon = GetMonData(PokeParty_GetMemberPointer(BattleWorkPokePartyGet(bw, side), count - 1), ID_PARA_monsno, NULL);
        newform = GetMonData(PokeParty_GetMemberPointer(BattleWorkPokePartyGet(bw, side), count - 1), ID_PARA_form_no, NULL);
        
        if (newmon != pep->monsno || newform != pep->form_no)
        {
            u8 strlen = 0;
            
            pep->monsno = newmon;
            pep->form_no = newform;
            
            if (!gIllusionStruct.isSideInIllusion[side]) // if the illusion hasn't been broken before, then don't store the nickname again
            {
                gIllusionStruct.isSideInIllusion[side] = 1;
                GetMonData(PokeParty_GetMemberPointer(BattleWorkPokePartyGet(bw, side), count - 1), ID_PARA_nickname, strbuf);
                GetMonData(PokeParty_GetMemberPointer(BattleWorkPokePartyGet(bw, side), 0), ID_PARA_nickname, gIllusionStruct.illusionNameBuf[side]);
                gIllusionStruct.illusionPos[side] = 0;
                
                SetMonData(PokeParty_GetMemberPointer(BattleWorkPokePartyGet(bw, side), 0), ID_PARA_nickname, strbuf);
            }
        }
    }

    CT_PokemonEncountSet(bw, cp, pep);
    ClientCommandReset(cp);
}

void ClientPokemonEncountAppear(void *bw, struct CLIENT_PARAM *cp)
{
    struct POKEMON_APPEAR_PARAM *pap = (struct POKEMON_APPEAR_PARAM *)&cp->client_buffer[0];
    u8 side, newform;
    u16 newmon;
    u32 i;
    
    side = ((cp->client_type & 1) != 0);
    
    if (pap->monsno == SPECIES_ZORUA || pap->monsno == SPECIES_ZOROARK)
    {
        struct POKEPARTY *party = BattleWorkPokePartyGet(bw, side);
        u8 count = party->PokeCount;
        u16 strbuf[11];
        
        newmon = GetMonData(PokeParty_GetMemberPointer(BattleWorkPokePartyGet(bw, side), count - 1), ID_PARA_monsno, NULL);
        newform = GetMonData(PokeParty_GetMemberPointer(BattleWorkPokePartyGet(bw, side), count - 1), ID_PARA_form_no, NULL);
        
        if (newmon != pap->monsno || newform != pap->form_no)
        {
            u8 strlen = 0;
            
            pap->monsno = newmon;
            pap->form_no = newform;
            
            if (!gIllusionStruct.isSideInIllusion[side]) // if the illusion hasn't been broken before, then don't store the nickname again
            {
                gIllusionStruct.isSideInIllusion[side] = 1;
                GetMonData(PokeParty_GetMemberPointer(BattleWorkPokePartyGet(bw, side), count - 1), ID_PARA_nickname, strbuf);
                GetMonData(PokeParty_GetMemberPointer(BattleWorkPokePartyGet(bw, side), pap->sel_mons_no), ID_PARA_nickname, gIllusionStruct.illusionNameBuf[side]);
                gIllusionStruct.illusionPos[side] = pap->sel_mons_no;
                
                SetMonData(PokeParty_GetMemberPointer(BattleWorkPokePartyGet(bw, side), pap->sel_mons_no), ID_PARA_nickname, strbuf);
            }
        }
    }

    CT_PokemonEncountAppearSet(bw, cp, pap);
    ClientCommandReset(cp);
}

void ClientPokemonAppear(void *bw, struct CLIENT_PARAM *cp)
{
    struct POKEMON_APPEAR_PARAM *pap = (struct POKEMON_APPEAR_PARAM *)&cp->client_buffer[0];
    u8 side, newform;
    u16 newmon;
    u32 i;
    
    side = ((cp->client_type & 1) != 0);
    
    if (pap->monsno == SPECIES_ZORUA || pap->monsno == SPECIES_ZOROARK)
    {
        struct POKEPARTY *party = BattleWorkPokePartyGet(bw, side);
        u8 count = party->PokeCount;
        u16 strbuf[11];
        
        newmon = GetMonData(PokeParty_GetMemberPointer(BattleWorkPokePartyGet(bw, side), count - 1), ID_PARA_monsno, NULL);
        newform = GetMonData(PokeParty_GetMemberPointer(BattleWorkPokePartyGet(bw, side), count - 1), ID_PARA_form_no, NULL);
        
        if (newmon != pap->monsno || newform != pap->form_no)
        {
            u8 strlen = 0;
            
            pap->monsno = newmon;
            pap->form_no = newform;
        
            if (!gIllusionStruct.isSideInIllusion[side]) // if the illusion hasn't been broken before, then don't store the nickname again.  we definitely abuse this, don't worry
            {
                gIllusionStruct.isSideInIllusion[side] = 1;
                GetMonData(PokeParty_GetMemberPointer(BattleWorkPokePartyGet(bw, side), count - 1), ID_PARA_nickname, strbuf);
                GetMonData(PokeParty_GetMemberPointer(BattleWorkPokePartyGet(bw, side), pap->sel_mons_no), ID_PARA_nickname, gIllusionStruct.illusionNameBuf[side]);
                gIllusionStruct.illusionPos[side] = pap->sel_mons_no;
                
                SetMonData(PokeParty_GetMemberPointer(BattleWorkPokePartyGet(bw, side), pap->sel_mons_no), ID_PARA_nickname, strbuf);
            }
        }
    }
    
    CT_PokemonAppearSet(bw, cp, pap);
    ClientCommandReset(cp);
}

// need to highjack the message creator somewhere in order to buffer the last mon's name in the circumstance that we shouldn't be showing the current mon's nickname

// might not need to setmondata if this one works out
int MessageParam_GetNickname(void *bw, struct BattleStruct *sp, int para)
{
    int ret;
    int client;
    u32 side;
    
    client = SideClientNoGet(bw, sp, para);
    side = (client & 1) != 0;
    
    ret = client;
    
    if ((sp->battlemon[client].species == SPECIES_ZORUA || sp->battlemon[client].species == SPECIES_ZOROARK)
     //&& gIllusionStruct.isSideInIllusion[client & 1]
       )
    {
        struct POKEPARTY *party;
        u32 count;
    
        party = BattleWorkPokePartyGet(bw, side);
        count = party->PokeCount - 1;
        
        ret |= count << 8;
    }
    else if (para == 0x16) // switch after the attack?
    {
        ret |= sp->reshuffle_sel_mons_no[client] << 8;
    }
    else
    {
        ret |= sp->sel_mons_no[client] << 8;
    }
    
    return ret;
}

void CT_SwitchInMessageParamMake(void *bw, struct CLIENT_PARAM *cp, struct SWITCH_MESSAGE_PARAM *smp, MESSAGE_PARAM *mp)
{
    if (cp->client_type & 1)
    {
        struct POKEPARTY *party;
        u32 count = 0;
        u32 species = 0;
        
        party = BattleWorkPokePartyGet(bw, 1);
        
        species = GetMonData(PokeParty_GetMemberPointer(party, smp->sel_mons_no), ID_PARA_monsno, NULL);
        if (species == SPECIES_ZORUA || species == SPECIES_ZOROARK)
        {
            smp->sel_mons_no = party->PokeCount - 1;
        }
        
        if ((BattleTypeGet(bw) & BATTLE_TYPE_WIRELESS) == 0)
        {
            mp->msg_id = BATTLE_MSG_SWITCH_IN_ENEMY_MSG;
            mp->msg_tag = TAG_TRTYPE_TRNAME_NICK;
            mp->msg_para[0] = cp->client_no;
            mp->msg_para[1] = cp->client_no;
            mp->msg_para[2] = cp->client_no | (smp->sel_mons_no << 8);
        }
        else
        {
            mp->msg_id = BATTLE_MSG_SWITCH_IN_TITLELESS;
            mp->msg_tag = TAG_TRNAME_NICK;
            mp->msg_para[0] = cp->client_no;
            mp->msg_para[1] = cp->client_no | (smp->sel_mons_no << 8);
        }
    }
    else
    {
        struct POKEPARTY *party;
        u32 count = 0;
        u32 species = 0;
        
        party = BattleWorkPokePartyGet(bw, 0);
        
        species = GetMonData(PokeParty_GetMemberPointer(party, smp->sel_mons_no), ID_PARA_monsno, NULL);
        if (species == SPECIES_ZORUA || species == SPECIES_ZOROARK)
        {
            smp->sel_mons_no = party->PokeCount - 1;
        }
        
        if (((BattleTypeGet(bw) & BATTLE_TYPE_DOUBLE) == 0)
         && ((BattleTypeGet(bw) & BATTLE_TYPE_WIRELESS) == 0))
        {
            if (smp->rate < 100)
            {
                mp->msg_id = BATTLE_MSG_SEND_IN_MON_3;
            }
            else if (smp->rate < 325)
            {
                mp->msg_id = BATTLE_MSG_SEND_IN_MON_4;
            }
            else if (smp->rate < 550)
            {
                mp->msg_id = BATTLE_MSG_SEND_IN_MON_2;
            }
            else if (smp->rate < 775)
            {
                mp->msg_id = BATTLE_MSG_SEND_IN_MON_1;
            }
            else
            {
                mp->msg_id = BATTLE_MSG_SEND_IN_MON_0;
            }
        }
        else
        {
            mp->msg_id = BATTLE_MSG_SEND_IN_MON_0;
        }
        mp->msg_tag = TAG_NICK;
        mp->msg_para[0] = cp->client_no | (smp->sel_mons_no << 8);
    }
}

// seriously FUCK illusion
void CT_EncountSendOutMessageParamMake(void *bw, struct CLIENT_PARAM *cp, struct ENCOUNT_SEND_OUT_MESSAGE_PARAM *esomp, MESSAGE_PARAM *mp)
{
    u32 fight_type;
    int client1;
    int client2;

    fight_type = BattleTypeGet(bw);

    if (cp->client_type & 1)
    {
        if (fight_type & BATTLE_TYPE_DOUBLE)
        {
            client1 = cp->client_no;
            client2 = BattleWorkPartnerClientNoGet(bw, cp->client_no);
        }
        else
        {
            client1 = cp->client_no;
            client2 = client1;
        }
        
        { // fuck fuck fuck fuck
            struct POKEPARTY *party;
            u32 count = 0;
            u32 species = 0;
            
            party = BattleWorkPokePartyGet(bw, client1);
            
            species = GetMonData(PokeParty_GetMemberPointer(party, esomp->sel_mons_no[client1]), ID_PARA_monsno, NULL); // WHY HAS GOD ABANDONED US
            if (species == SPECIES_ZORUA || species == SPECIES_ZOROARK) // this check is fuckin failing.  i don't know what to do
            {
                esomp->sel_mons_no[client1] = party->PokeCount - 1;
            }
        }

        if (client1 != client2)
        { // why has god abandoned us
            struct POKEPARTY *party;
            u32 count = 0;
            u32 species = 0;
            
            party = BattleWorkPokePartyGet(bw, client2);
            
            species = GetMonData(PokeParty_GetMemberPointer(party, esomp->sel_mons_no[client2]), ID_PARA_monsno, NULL);
            if (species == SPECIES_ZORUA || species == SPECIES_ZOROARK)
            {
                esomp->sel_mons_no[client2] = party->PokeCount - 1;
            }
        }
        
    
        if (fight_type & BATTLE_TYPE_WIRELESS)
        {
            if (fight_type & BATTLE_TYPE_BATTLE_TOWER)
            {
                mp->msg_id = BATTLE_MSG_DOUBLE_TOWER_BATTLE_SEND_OUT;
                mp->msg_tag = TAG_TRTYPE_TRNAME_NICK_TRTYPE_TRNAME_NICK;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1;
                mp->msg_para[2] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[3] = client2;
                mp->msg_para[4] = client2;
                mp->msg_para[5] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else if (fight_type & BATTLE_TYPE_MULTI)
            {
                mp->msg_id = BATTLE_MSG_MULTI_BATTLE_SEND_OUT_MESSAGE;
                mp->msg_tag = TAG_TRNAME_NICK_TRNAME_NICK;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[2] = client2;
                mp->msg_para[3] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else if (fight_type & BATTLE_TYPE_DOUBLE)
            {
                mp->msg_id = BATTLE_MSG_DOUBLE_BATTLE_SEND_OUT_WIRELESS;
                mp->msg_tag = TAG_TRNAME_NICK_NICK;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[2] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else
            {
                mp->msg_id = BATTLE_MSG_SWITCH_IN_TITLELESS;
                mp->msg_tag = TAG_TRNAME_NICK;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1 | (esomp->sel_mons_no[client1] << 8);
            }
        }
        else
        {
            if ((fight_type & BATTLE_TYPE_TAG)
             || (fight_type & BATTLE_TYPE_MULTI))
            {
                mp->msg_id = BATTLE_MSG_DOUBLE_TOWER_BATTLE_SEND_OUT;
                mp->msg_tag = TAG_TRTYPE_TRNAME_NICK_TRTYPE_TRNAME_NICK;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1;
                mp->msg_para[2] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[3] = client2;
                mp->msg_para[4] = client2;
                mp->msg_para[5] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else if (fight_type & BATTLE_TYPE_DOUBLE)
            {
                mp->msg_id = BATTLE_MSG_ENEMY_SEND_OUT_DOUBLES;
                mp->msg_tag = TAG_TRTYPE_TRNAME_NICK_NICK;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1;
                mp->msg_para[2] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[3] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else
            {
                mp->msg_id = BATTLE_MSG_SWITCH_IN_ENEMY_MSG;
                mp->msg_tag = TAG_TRTYPE_TRNAME_NICK;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1;
                mp->msg_para[2] = client1 | (esomp->sel_mons_no[client1] << 8);
            }
        }
    }
    else
    {
        if (fight_type & BATTLE_TYPE_WIRELESS) // fuck wireless battles
        {
            u8 sio_id = BattleWorkCommIDGet(bw);

            if (fight_type & BATTLE_TYPE_MULTI)
            {
                switch (BattleWorkCommStandNoGet(bw,sio_id))
                {
                case 0:
                case 3:
                    client1 = BattleWorkClientNoGet(bw, 4);
                    client2 = BattleWorkClientNoGet(bw, 2);
                    break;
                case 1:
                case 2:
                    client1 = BattleWorkClientNoGet(bw, 2);
                    client2 = BattleWorkClientNoGet(bw, 4);
                    break;
                }
            }
            else if (fight_type & BATTLE_TYPE_DOUBLE)
            {
                client1 = BattleWorkClientNoGet(bw, 2);
                client2 = BattleWorkClientNoGet(bw, 4);
            }
            else
            {
                client1 = BattleWorkClientNoGet(bw, 0);
                client2 = client1;
            }
        }
        else if (fight_type & BATTLE_TYPE_MULTI)
        {
            client1 = BattleWorkPartnerClientNoGet(bw, cp->client_no);
            client2 = cp->client_no;
        }
        else if (fight_type & BATTLE_TYPE_DOUBLE)
        {
            client1 = BattleWorkClientNoGet(bw, 2);
            client2 = BattleWorkClientNoGet(bw, 4);
        }
        else
        {
            client1 = cp->client_no;
            client2 = client1;
        }
        
        { // FUCK FUCK FUCK FUCK
            struct POKEPARTY *party;
            u32 count = 0;
            u32 species = 0;
            
            party = BattleWorkPokePartyGet(bw, client1);
            
            species = GetMonData(PokeParty_GetMemberPointer(party, esomp->sel_mons_no[client1]), ID_PARA_monsno, NULL);
            if (species == SPECIES_ZORUA || species == SPECIES_ZOROARK)
            {
                esomp->sel_mons_no[client1] = party->PokeCount - 1;
            }
        }

        if (client1 != client2)
        {
            struct POKEPARTY *party;
            u32 count = 0;
            u32 species = 0;
            
            party = BattleWorkPokePartyGet(bw, client2);
            
            species = GetMonData(PokeParty_GetMemberPointer(party, esomp->sel_mons_no[client2]), ID_PARA_monsno, NULL);
            if (species == SPECIES_ZORUA || species == SPECIES_ZOROARK)
            {
                esomp->sel_mons_no[client2] = party->PokeCount - 1;
            }
        }
    
        if (fight_type & BATTLE_TYPE_WIRELESS)
        {
            if (fight_type & BATTLE_TYPE_MULTI)
            {
                mp->msg_id = BATTLE_MSG_MULTI_BATTLE_PLAYER_SEND_OUT_MESSAGE;
                mp->msg_tag = TAG_TRNAME_NICK_NICK;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[2] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else if (fight_type & BATTLE_TYPE_DOUBLE)
            {
                mp->msg_id = BATTLE_MSG_SEND_OUT_DOUBLES;
                mp->msg_tag = TAG_NICK_NICK;
                mp->msg_para[0] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[1] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else
            {
                mp->msg_id = BATTLE_MSG_SEND_IN_MON_0;
                mp->msg_tag = TAG_NICK;
                mp->msg_para[0] = client1 | (esomp->sel_mons_no[client1] << 8);
            }
        }
        else
        {
            if (fight_type & BATTLE_TYPE_MULTI)
            {
                mp->msg_id = BATTLE_MSG_MULTI_BATTLE_PLAYER_SIDE_SEND_OUT;
                mp->msg_tag = TAG_TRTYPE_TRNAME_NICK_NICK;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1;
                mp->msg_para[2] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[3] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else if (fight_type & BATTLE_TYPE_DOUBLE)
            {
                mp->msg_id = BATTLE_MSG_SEND_OUT_DOUBLES;
                mp->msg_tag = TAG_NICK_NICK;
                mp->msg_para[0] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[1] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else
            {
                mp->msg_id = BATTLE_MSG_SEND_IN_MON_0;
                mp->msg_tag = TAG_NICK;
                mp->msg_para[0] = client1 | (esomp->sel_mons_no[client1] << 8);
            }
        }
    }
}
