#include "../include/types.h"
#include "../include/battle.h"
#include "../include/pokemon.h"
#include "../include/mega.h"
#include "../include/constants/ability.h"
#include "../include/constants/item.h"
#include "../include/constants/file.h"
#include "../include/constants/species.h"

/********************************************************************************************************************/
/********************************************************************************************************************/
//                                                战斗前准备
/********************************************************************************************************************/
/********************************************************************************************************************/

enum{
	SBA_FOCUS_PUNCH=0,
	SBA_RAGE,
	SBA_RANDOM_SPEED_ROLL,
    SBA_MEGA,
	SBA_END
};

u32	No2Bit(int no)
{
	int	i;
	u32	ret=1;

	for(i=0;i<no;i++){
		ret<<=1;
	}
	return ret;
}


void ServerBeforeAct(void *bw, struct BattleStruct *sp)
{
    int ret;
    int client_no;
    int client_set_max;

    ret = 0;
    u8 flag = FALSE;
    client_set_max = BattleWorkClientSetMaxGet(bw);

    do
    {
        switch (sp->sba_seq_no)
        {
        case SBA_FOCUS_PUNCH:
            while (sp->sba_work < client_set_max)
            {
                client_no = sp->client_agi_work[sp->sba_work];
                if (sp->no_reshuffle_client & No2Bit(client_no))
                {
                    sp->sba_work++;
                    continue;
                }
                sp->sba_work++;
                if (((sp->battlemon[client_no].condition & 7) == 0) &&
                    (ST_ServerSelectWazaGet(sp, client_no) == 264) &&
                    (ST_ServerNamakeCheck(sp, client_no) == FALSE) &&
                    (sp->oneTurnFlag[client_no].waruagaki_flag == 0))
                {
                    SCIO_BlankMessage(bw);
                    sp->client_work = client_no;
                    sp->battlemon[client_no].form_no = 1;
                    ST_ServerSequenceLoad(sp, 1, 0xE8);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 0x16;
                    return;
                }
            }
            sp->sba_work = 0;
            sp->sba_seq_no++;
            break;
        case SBA_RAGE:
            for (client_no = 0; client_no < client_set_max; client_no++)
            {
                if ((sp->battlemon[client_no].condition2 & 0x800000) && (ST_ServerSelectWazaGet(sp, client_no) != 99))
                {
                    sp->battlemon[client_no].condition2 &= 0x800000;
                }
            }
            sp->sba_seq_no++;
            break;
        case SBA_RANDOM_SPEED_ROLL:
            for (client_no = 0; client_no < CLIENT_MAX; client_no++)
            {
                sp->agi_rand[client_no] = BattleWorkRandGet(bw);
            }
            sp->sba_seq_no++;
            break;
        case SBA_MEGA:
            for (client_no = 0; client_no < client_set_max; client_no++)
            {
                flag = FALSE;
                if (sp->client_act_work[0][3] != SELECT_ESCAPE_COMMAND &&
                    sp->client_act_work[2][3] != SELECT_ESCAPE_COMMAND)
                {
                    //player requests mega
                    if (client_no == 0 || client_no == 2)
                    {
                        if (CheckCanMega(sp, client_no) && newBS.playerWantMega)
                        {
                            sp->battlemon[client_no].canMega = 1;
                               newBS.SideMega[0] = TRUE;
                            flag = TRUE;
                        }
                    }
                    //ai requests mega
                    else
                    { 
                        if (CheckCanMega(sp, client_no))
                        {
                            sp->battlemon[client_no].canMega = 1;
                            newBS.SideMega[1] = TRUE;
                            flag = TRUE;
                        }
                    }

                }
                if(flag)
                {
                    newBS.needMega[client_no] = MEGA_NEED;
                    if ((sp->battlemon[client_no].species == SPECIES_CHARIZARD && sp->battlemon[client_no].item == ITEM_MEGA_STONE_CHARIZARD_Y) ||
                        (sp->battlemon[client_no].species == SPECIES_MEWTWO && sp->battlemon[client_no].item == ITEM_MEGA_STONE_MEWTWO_Y))
                    {
                        sp->battlemon[client_no].form_no = 2;
                        BattleFormChange(client_no, 2, bw, sp, FALSE);
                    }
                    else
                    {
                        sp->battlemon[client_no].form_no = 1;
                        BattleFormChange(client_no, 1, bw, sp, FALSE);
                    }
                }
            }
            sp->sba_seq_no++;
            break;
        case SBA_END:
            sp->sba_seq_no = 0;
            ret = 2;
            break;
        }
    } while (ret == 0);
    if (ret == 2)
    {
        sp->server_seq_no = 8;
    }
}

/********************************************************************************************************************/
/********************************************************************************************************************/
//                                                技能使用前判断
/********************************************************************************************************************/
/********************************************************************************************************************/


enum
{
    SEQ_MEGA_CHECK = 0,
    SEQ_SENSEI_CHECK,
    SEQ_STATUS_CHECK,
    SEQ_BADGE_CHECK,
    SEQ_PP_CHECK,
    SEQ_DEFENCE_CHECK,
    SEQ_WAZAKOYUU_CHECK,
    SEQ_DEFENCE_CHANGE_CHECK
};

static BOOL MegaEvolution(void *bw, struct BattleStruct *sp)
{
    int client_no,i;
    int client_set_max;
    int seq;

    client_set_max = BattleWorkClientSetMaxGet(bw);
    for (i = 0; i < client_set_max;i++)
    {
        client_no = sp->psp_agi_work[i];
        if(newBS.needMega[client_no] == MEGA_NEED && sp->battlemon[sp->attack_client].hp)
        {
            if(client_no == 0 || client_no == 2)
            {
                newBS.PlayerMegaed = TRUE;
            }
            // handle charizard/mewtwo branch mega evos
            if((sp->battlemon[client_no].species == SPECIES_CHARIZARD && sp->battlemon[client_no].item == ITEM_MEGA_STONE_CHARIZARD_Y) || 
               (sp->battlemon[client_no].species == SPECIES_MEWTWO && sp->battlemon[client_no].item == ITEM_MEGA_STONE_MEWTWO_Y))
            {
                BattleFormChange(client_no,2,bw,sp,TRUE);
                sp->battlemon[client_no].form_no = 2;
            }
            else
            {
                BattleFormChange(client_no,1,bw,sp,TRUE);
                sp->battlemon[client_no].form_no = 1;
            }
            
            newBS.needMega[client_no] = MEGA_CHECK_APPER;
            sp->client_work = client_no;
            ST_ServerSequenceLoad(sp,1,297); // load sequence 297 and execute
	        sp->next_server_seq_no=sp->server_seq_no;
	        sp->server_seq_no=0x16;
            return TRUE;
        }
        if(newBS.needMega[client_no] == MEGA_CHECK_APPER && sp->battlemon[sp->attack_client].hp)
        {
            newBS.needMega[client_no] = MEGA_NO_NEED;
            seq = ST_ServerPokeAppearCheck(bw,sp);
            if(seq)
            {
                ST_ServerSequenceLoad(sp,1,seq);
	            sp->next_server_seq_no=sp->server_seq_no;
	            sp->server_seq_no=0x16;
                return TRUE;
            }

        }
        newBS.needMega[client_no] = MEGA_NO_NEED;
    }
    return FALSE;

}

//08014ACC
void ServerWazaBefore(void *bw, struct BattleStruct *sp)
{
    switch (sp->wb_seq_no)
    {
    case SEQ_MEGA_CHECK:
        if(MegaEvolution(bw,sp))
        {
           return;
           break;
        }
        else
            sp->wb_seq_no++;
    case SEQ_SENSEI_CHECK:
        ServerSenseiCheck(bw, sp); ///先制之爪效果 80143E4h
        sp->wb_seq_no++;
        return;
        break;
    case SEQ_STATUS_CHECK:
        if ((sp->waza_out_check_on_off & 0x4) == 0)
        {
            //异常状态检查
            if (ServerStatusCheck(bw, sp) == TRUE)//8013C68h
            {
                return;
            }
        }
        sp->wb_seq_no++;
    case SEQ_BADGE_CHECK:
    {
        int ret;
        int seq_no;

        if ((sp->waza_out_check_on_off & 0x1) == 0)
        {
            ret = ServerBadgeCheck(bw, sp, &seq_no);//8013610h
            if (ret)
            {
                switch (ret)
                {
                case 1:
                    sp->next_server_seq_no = 0x27;
                    break;
                case 2: 
                    sp->next_server_seq_no = sp->server_seq_no;
                    break;
                case 3:
                    sp->next_server_seq_no = 0x22;
                    break;
                }
                sp->server_seq_no = 0x16;
                ST_ServerSequenceLoad(sp, 1, seq_no);
                return;
            }
        }
    }
        sp->wb_seq_no++;
    case SEQ_PP_CHECK:
        if ((sp->waza_out_check_on_off & 0x8) == 0)
        {
            //pp检查
            if (ServerPPCheck(bw, sp) == TRUE)//801393Ch
            {
                return;
            }
        }
        sp->wb_seq_no++;
        //攻击对象检查，包括了蓄力技能
    case SEQ_DEFENCE_CHECK:
        if (ServerDefenceCheck(bw, sp) == TRUE)//8013AD8h
        {
            return;
        }
        sp->wb_seq_no++;
        //防御效果检查，魔法守护等
    case SEQ_WAZAKOYUU_CHECK:
        if ((sp->waza_out_check_on_off & 0x80) == 0)
        {
            if (ServerWazaKoyuuCheck(bw, sp) == TRUE)//8014944h
            {
                return;
            }
        }
        sp->wb_seq_no++;
        //引水等特性检查
    case SEQ_DEFENCE_CHANGE_CHECK:
        ST_ServerDefenceClientTokuseiCheck(bw, sp, sp->attack_client, sp->movetype_now);//8019158h
        sp->wb_seq_no = 0;
    }

    if (sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT)
    {
        sp->server_seq_no = 26;//0x1a
    }
    else
    {
        sp->server_status_flag2 |= 0x40;
        ST_ServerSequenceLoad(sp, 0, sp->movetype_now);
        sp->server_seq_no = 0x16;
        sp->next_server_seq_no = 0x18;
        ST_ServerTotteokiCountCalc(bw, sp);//801B570h
    }
    ST_ServerMetronomeBeforeCheck(bw, sp);//801ED20h
}
