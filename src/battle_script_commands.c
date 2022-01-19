#include "../include/battle.h"
#include "../include/pokemon.h"
#include "../include/types.h"
#include "../include/constants/fight_msg.h"
#include "../include/constants/ability.h"
#include "../include/constants/battle_script_constants.h"
#include "../include/constants/hold_item_effects.h"
#include "../include/constants/item.h"
#include "../include/constants/move_effects.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"
#include "../include/constants/weather_numbers.h"

BOOL btl_scr_cmd_33_statbuffchange(void *bw, struct BattleStruct *sp)
{
    int	adrs1;
    int	adrs2;
    int	adrs3;
    int	para;
    int	value;
    int	flag;
    struct BattlePokemon *psp = &sp->battlemon[sp->state_client];

    //命令コード分を読み飛ばし
    IncrementBattleScriptPtr(sp,1);

    //adrsをロード
    adrs1=read_battle_script_param(sp);
    adrs2=read_battle_script_param(sp);
    adrs3=read_battle_script_param(sp);

#ifdef DEBUG_PRINT_BATTLE
    OS_TPrintf("ABICNT_CALC adrs1:%d adrs2:%d adrs3:%d\n",adrs1,adrs2,adrs3);
#endif

    flag=0;

    //statesを上げ下げ出来なかったフラグを初期化
    sp->server_status_flag&=SERVER_STATUS_FLAG_COND_CHG_NG_OFF;

        //2 steps down
    if(sp->addeffect_param>=ADD_COND2_POWDOWN2){
        para=sp->addeffect_param-ADD_COND2_POWDOWN2;
        value=-2;
        sp->temp_work=STATUS_EFF_DOWN;
    }
        //2 steps up
    else if(sp->addeffect_param>=ADD_COND2_POWUP2){
        para=sp->addeffect_param-ADD_COND2_POWUP2;
        value=2;
        sp->temp_work=STATUS_EFF_UP;
    }
        //1 step down
    else if(sp->addeffect_param>=ADD_COND2_POWDOWN){
        para=sp->addeffect_param-ADD_COND2_POWDOWN;
        value=-1;
        sp->temp_work=STATUS_EFF_DOWN;
    }
        //1 step up
    else{
        para=sp->addeffect_param-ADD_COND2_POWUP;
        value=1;
        sp->temp_work=STATUS_EFF_UP;
    }

    if(psp->ability == ABILITY_CONTRARY)
    {
        //value
        value = -value;

        //sp->temp_work
        if(sp->temp_work == STATUS_EFF_UP)
        {
            sp->temp_work= STATUS_EFF_DOWN;
        }
        else if(sp->temp_work == STATUS_EFF_DOWN)
        {
            sp->temp_work= STATUS_EFF_UP;
        }
    }


    if(value>0){
        if(psp->states[COND_POW+para]==12){
            //statesを上げ下げ出来なかったフラグをセット
            sp->server_status_flag|=SERVER_STATUS_FLAG_COND_CHG_NG;
            if((sp->addeffect_type==ADD_STATUS_INDIRECT)||
               (sp->addeffect_type==ADD_STATUS_TOKUSEI)){
                IncrementBattleScriptPtr(sp,adrs2);
            }
            else{
                sp->mp.msg_id=StatusNoUpMineMsg;
                sp->mp.msg_tag=TAG_NICK_STAT;
                sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
                sp->mp.msg_para[1]=COND_POW+para;
                IncrementBattleScriptPtr(sp,adrs1);
            }
        }
        else{
            if(sp->addeffect_type==ADD_STATUS_TOKUSEI){
                sp->mp.msg_id=TokuseiStatusUpMineMsg;
                sp->mp.msg_tag=TAG_NICK_TOKU_STAT;
                sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
                sp->mp.msg_para[1]=sp->battlemon[sp->state_client].ability;
                sp->mp.msg_para[2]=COND_POW+para;
            }
            else if(sp->addeffect_type==ADD_STATUS_SOUBIITEM){
                sp->mp.msg_id=ItemCondUp1MineMsg;
                sp->mp.msg_tag=TAG_NICK_ITEM_STAT;
                sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
                sp->mp.msg_para[1]=sp->item_work;
                sp->mp.msg_para[2]=COND_POW+para;
            }
            else{
                sp->mp.msg_id=(value==1?CondUp1MineMsg:CondUp2MineMsg);
                sp->mp.msg_tag=TAG_NICK_STAT;
                sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
                sp->mp.msg_para[1]=COND_POW+para;
            }
            psp->states[COND_POW+para]+=value;
            if(psp->states[COND_POW+para]>12){
                psp->states[COND_POW+para]=12;
            }
        }
    }
    else{
        if((sp->addeffect_flag&ADD_STATUS_NO_TOKUSEI)==0){
            //自分を能力低下させる場合は、技効果や特性では防がない
            if(sp->attack_client!=sp->state_client){
                //しろいきりは、能力低下を受けない
                if(sp->scw[IsClientEnemy(bw,sp->state_client)].shiroikiri_count){
                    sp->mp.msg_id=ShiroikiriGuardMineMsg;
                    sp->mp.msg_tag=TAG_NICK;
                    sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
                    flag=1;
                }
                    //特性クリアボディ、しろいけむりは、能力低下を受けない
                else if((MoldBreakerAbilityCheck(sp,sp->attack_client,sp->state_client,ABILITY_CLEAR_BODY)==TRUE)||
                        (MoldBreakerAbilityCheck(sp,sp->attack_client,sp->state_client,ABILITY_WHITE_SMOKE)==TRUE)){
                    if(sp->addeffect_type==ADD_STATUS_TOKUSEI){
                        sp->mp.msg_id=TokuseiNoTokuseiM2MMsg;
                        sp->mp.msg_tag=TAG_NICK_TOKU_NICK_TOKU;
                        sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
                        sp->mp.msg_para[1]=sp->battlemon[sp->state_client].ability;
                        sp->mp.msg_para[2]=TagNickParaMake(sp,sp->attack_client);
                        sp->mp.msg_para[3]=sp->battlemon[sp->attack_client].ability;
                    }
                    else{
                        sp->mp.msg_id=ClearBodyMineMsg;
                        sp->mp.msg_tag=TAG_NICK_TOKU;
                        sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
                        sp->mp.msg_para[1]=sp->battlemon[sp->state_client].ability;
                    }
                    flag=1;
                }
                    //特性するどいめは、命中率が下がらない
                    //特性かいりきバサミは、攻撃力が下がらない
                else if( ((MoldBreakerAbilityCheck(sp,sp->attack_client,sp->state_client,ABILITY_KEEN_EYE)==TRUE)&&
                          ((COND_POW+para)==COND_HIT))||
                         ((MoldBreakerAbilityCheck(sp,sp->attack_client,sp->state_client,ABILITY_HYPER_CUTTER)==TRUE)&&
                          ((COND_POW+para)==COND_POW))){
                    if(sp->addeffect_type==ADD_STATUS_TOKUSEI){
                        sp->mp.msg_id=TokuseiNoTokuseiM2MMsg;
                        sp->mp.msg_tag=TAG_NICK_TOKU_NICK_TOKU;
                        sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
                        sp->mp.msg_para[1]=sp->battlemon[sp->state_client].ability;
                        sp->mp.msg_para[2]=TagNickParaMake(sp,sp->attack_client);
                        sp->mp.msg_para[3]=sp->battlemon[sp->attack_client].ability;
                    }
                    else{
                        sp->mp.msg_id=TokuseiNoCondDownMineMsg;
                        sp->mp.msg_tag=TAG_NICK_TOKU_STAT;
                        sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
                        sp->mp.msg_para[1]=sp->battlemon[sp->state_client].ability;
                        sp->mp.msg_para[2]=COND_POW+para;
                    }
                    flag=1;
                }
                else if(psp->states[COND_POW+para]==0){
                    //statesを上げ下げ出来なかったフラグをセット
                    sp->server_status_flag|=SERVER_STATUS_FLAG_COND_CHG_NG;
                    if((sp->addeffect_type==ADD_STATUS_INDIRECT)||
                       (sp->addeffect_type==ADD_STATUS_TOKUSEI)){
                        IncrementBattleScriptPtr(sp,adrs2);
                        return FALSE;
                    }
                    else{
                        sp->mp.msg_id=StatusNoDownMineMsg;
                        sp->mp.msg_tag=TAG_NICK_STAT;
                        sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
                        sp->mp.msg_para[1]=COND_POW+para;
                        IncrementBattleScriptPtr(sp,adrs1);
                        return FALSE;
                    }
                }
                    //特性りんぷんは、追加効果を受けない
                else if((MoldBreakerAbilityCheck(sp,sp->attack_client,sp->state_client,ABILITY_SHIELD_DUST)==TRUE)&&
                        (sp->addeffect_type==ADD_STATUS_INDIRECT)){
                    flag=1;
                }
                    //みがわりがいる場合は、下がらない
                else if(sp->battlemon[sp->state_client].condition2&CONDITION2_MIGAWARI){
                    flag=2;
                }
            }
            else if(psp->states[COND_POW+para]==0){
                //statesを上げ下げ出来なかったフラグをセット
                sp->server_status_flag|=SERVER_STATUS_FLAG_COND_CHG_NG;
                if((sp->addeffect_type==ADD_STATUS_INDIRECT)||
                   (sp->addeffect_type==ADD_STATUS_TOKUSEI)){
                    IncrementBattleScriptPtr(sp,adrs2);
                    return FALSE;
                }
                else{
                    sp->mp.msg_id=StatusNoDownMineMsg;
                    sp->mp.msg_tag=TAG_NICK_STAT;
                    sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
                    sp->mp.msg_para[1]=COND_POW+para;
                    IncrementBattleScriptPtr(sp,adrs1);
                    return FALSE;
                }
            }
            if((flag==2)&&(sp->addeffect_type==ADD_STATUS_DIRECT)){
                IncrementBattleScriptPtr(sp,adrs3);
                return FALSE;
            }
            else if((flag)&&(sp->addeffect_type==ADD_STATUS_INDIRECT)){
                IncrementBattleScriptPtr(sp,adrs2);
                return FALSE;
            }
            else if(flag){
                IncrementBattleScriptPtr(sp,adrs1);
                return FALSE;
            }
        }
        if(sp->addeffect_type==ADD_STATUS_TOKUSEI){
            sp->mp.msg_id=TokuseiStatusDownM2MMsg;
            sp->mp.msg_tag=TAG_NICK_TOKU_NICK_STAT;
            sp->mp.msg_para[0]=TagNickParaMake(sp,sp->attack_client);
            sp->mp.msg_para[1]=sp->battlemon[sp->attack_client].ability;
            sp->mp.msg_para[2]=TagNickParaMake(sp,sp->state_client);
            sp->mp.msg_para[3]=COND_POW+para;
        }
        else{
            sp->mp.msg_id=(value==-1?CondDown1MineMsg:CondDown2MineMsg);
            sp->mp.msg_tag=TAG_NICK_STAT;
            sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
            sp->mp.msg_para[1]=COND_POW+para;
        }
        psp->states[COND_POW+para]+=value;
        if(psp->states[COND_POW+para]<0){
            psp->states[COND_POW+para]=0;
        }
#if 0
        if(psp->states[COND_POW+para]==0){
			//statesを上げ下げ出来なかったフラグをセット
			sp->server_status_flag|=SERVER_STATUS_FLAG_COND_CHG_NG;
			if((sp->addeffect_type==ADD_STATUS_INDIRECT)||
			   (sp->addeffect_type==ADD_STATUS_TOKUSEI)){
				IncrementBattleScriptPtr(sp,adrs2);
			}
			else{
				sp->mp.msg_id=StatusNoDownMineMsg;
				sp->mp.msg_tag=TAG_NICK_STAT;
				sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
				sp->mp.msg_para[1]=COND_POW+para;
				IncrementBattleScriptPtr(sp,adrs1);
			}
		}
		else{
			if((sp->addeffect_flag&ADD_STATUS_NO_TOKUSEI)==0){
				//自分を能力低下させる場合は、技効果や特性では防がない
				if(sp->attack_client!=sp->state_client){
					//しろいきりは、能力低下を受けない
					if(sp->scw[IsClientEnemy(bw,sp->state_client)].shiroikiri_count){
						sp->mp.msg_id=ShiroikiriGuardMineMsg;
						sp->mp.msg_tag=TAG_NICK;
						sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
						flag=1;
					}
					//特性クリアボディ、しろいけむりは、能力低下を受けない
					else if((MoldBreakerAbilityCheck(sp,sp->attack_client,sp->state_client,ABILITY_CLEAR_BODY)==TRUE)||
							(MoldBreakerAbilityCheck(sp,sp->attack_client,sp->state_client,ABILITY_WHITE_SMOKE)==TRUE)){
						if(sp->addeffect_type==ADD_STATUS_TOKUSEI){
							sp->mp.msg_id=TokuseiNoTokuseiM2MMsg;
							sp->mp.msg_tag=TAG_NICK_TOKU_NICK_TOKU;
							sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
							sp->mp.msg_para[1]=sp->battlemon[sp->state_client].ability;
							sp->mp.msg_para[2]=TagNickParaMake(sp,sp->attack_client);
							sp->mp.msg_para[3]=sp->battlemon[sp->attack_client].ability;
						}
						else{
							sp->mp.msg_id=ClearBodyMineMsg;
							sp->mp.msg_tag=TAG_NICK_TOKU;
							sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
							sp->mp.msg_para[1]=sp->battlemon[sp->state_client].ability;
						}
						flag=1;
					}
					//特性するどいめは、命中率が下がらない
					//特性かいりきバサミは、攻撃力が下がらない
					else if( ((MoldBreakerAbilityCheck(sp,sp->attack_client,sp->state_client,ABILITY_KEEN_EYE)==TRUE)&&
							 ((COND_POW+para)==COND_HIT))||
							 ((MoldBreakerAbilityCheck(sp,sp->attack_client,sp->state_client,ABILITY_HYPER_CUTTER)==TRUE)&&
							 ((COND_POW+para)==COND_POW))){
						if(sp->addeffect_type==ADD_STATUS_TOKUSEI){
							sp->mp.msg_id=TokuseiNoTokuseiM2MMsg;
							sp->mp.msg_tag=TAG_NICK_TOKU_NICK_TOKU;
							sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
							sp->mp.msg_para[1]=sp->battlemon[sp->state_client].ability;
							sp->mp.msg_para[2]=TagNickParaMake(sp,sp->attack_client);
							sp->mp.msg_para[3]=sp->battlemon[sp->attack_client].ability;
						}
						else{
							sp->mp.msg_id=TokuseiNoCondDownMineMsg;
							sp->mp.msg_tag=TAG_NICK_TOKU_STAT;
							sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
							sp->mp.msg_para[1]=sp->battlemon[sp->state_client].ability;
							sp->mp.msg_para[2]=COND_POW+para;
						}
						flag=1;
					}
					//特性りんぷんは、追加効果を受けない
					else if((MoldBreakerAbilityCheck(sp,sp->attack_client,sp->state_client,ABILITY_SHIELD_DUST)==TRUE)&&
							(sp->addeffect_type==ADD_STATUS_INDIRECT)){
						flag=1;
					}
					//みがわりがいる場合は、下がらない
					else if(sp->battlemon[sp->state_client].condition2&CONDITION2_MIGAWARI){
						flag=2;
					}
				}
				if((flag==2)&&(sp->addeffect_type==ADD_STATUS_DIRECT)){
					IncrementBattleScriptPtr(sp,adrs3);
					return FALSE;
				}
				else if((flag)&&(sp->addeffect_type==ADD_STATUS_INDIRECT)){
					IncrementBattleScriptPtr(sp,adrs2);
					return FALSE;
				}
				else if(flag){
					IncrementBattleScriptPtr(sp,adrs1);
					return FALSE;
				}
			}
			if(sp->addeffect_type==ADD_STATUS_TOKUSEI){
				sp->mp.msg_id=TokuseiStatusDownM2MMsg;
				sp->mp.msg_tag=TAG_NICK_TOKU_NICK_STAT;
				sp->mp.msg_para[0]=TagNickParaMake(sp,sp->attack_client);
				sp->mp.msg_para[1]=sp->battlemon[sp->attack_client].ability;
				sp->mp.msg_para[2]=TagNickParaMake(sp,sp->state_client);
				sp->mp.msg_para[3]=COND_POW+para;
			}
			else{
				sp->mp.msg_id=(value==-1?CondDown1MineMsg:CondDown2MineMsg);
				sp->mp.msg_tag=TAG_NICK_STAT;
				sp->mp.msg_para[0]=TagNickParaMake(sp,sp->state_client);
				sp->mp.msg_para[1]=COND_POW+para;
			}
			psp->states[COND_POW+para]+=value;
			if(psp->states[COND_POW+para]<0){
				psp->states[COND_POW+para]=0;
			}
		}
#endif
    }

    return	FALSE;
}

