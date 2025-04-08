
#include "../../include/types.h"
#include "../../include/config.h"
#include "../../include/battle.h"
#include "../../include/item.h"
#include "../../include/mega.h"
#include "../../include/pokemon.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/file.h"
#include "../../include/constants/item.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/species.h"
#include "../../include/constants/system_control.h"
#include "../../include/overlay.h"

static BOOL MegaEvolutionOrUltraBurst(struct BattleSystem *bsys, struct BattleStruct *ctx);

/********************************************************************************************************************/
/********************************************************************************************************************/
//                                                寶可夢出招式之前要發生的事情
/********************************************************************************************************************/
/********************************************************************************************************************/

// https://victoryroadvgc.com/2018/09/04/priority-bracket-analysis/
// https://bulbapedia.bulbagarden.net/wiki/Priority
// https://github.com/pret/pokeplatinum/blob/1422848525cf1ce0cc89348f3b63fec8d086596a/src/battle/battle_controller.c#L707
// Custap Berry message
// https://youtu.be/EdCQVBqlRe4?t=337
// reset stuff -> random speed roll -> Quick Claw / Custap Berry / O-Powers -> Switching (handle Mega Evolving a mon then use Pursuit if needed) / Rotating / Using iterms / Running / Focus Punch / Beak Blast / Shell Trap / Mega Evolution / Dynamaxing -> Terastallizing

/**
 *  @brief actions that take precedence over all moves
 *         loads in battle sub script and queues it up by setting server_seq_no to 22
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 */
void __attribute__((section (".init"))) ServerBeforeActInternal(struct BattleSystem *bw, struct BattleStruct *sp) {
    int ret;
    int client_no;
    int client_set_max;
    int tempSequenceNumber = sp->server_seq_no;
    int tempMoveStatusFlag = sp->waza_status_flag;
    int script;
    int command;

#ifdef DEBUG_BEFORE_MOVE_LOGIC
    debug_printf("In ServerBeforeActInternal\n");
#endif
    ret = 0;
    u32 flag = FALSE;
    client_set_max = BattleWorkClientSetMaxGet(bw);

    // debug_printf("In ServerBeforeAct\n");
    // debug_printf("%d\n", sp->sba_seq_no);

    do {
        // Here we recalculate the execution order without considering who has already performed
        // their action because this function takes place before anyone has performed an action
        BattleControllerPlayer_CalcExecutionOrder(bw, sp);

        switch (sp->sba_seq_no) {
            case SBA_RESET_DEFIANT: {
                // debug_printf("In SBA_RESET_DEFIANT\n");

                CalcPriorityAndQuickClawCustapBerry(bw, sp);

                for (client_no = 0; client_no < client_set_max; client_no++) {
                    sp->oneSelfFlag[client_no].defiant_flag = 0;
                }
                sp->sba_work = 0;
                sp->sba_seq_no++;
                break;
            }
            case SBA_RESET_FURY_CUTTER: {
                // debug_printf("In SBA_RESET_FURY_CUTTER\n");

                for (client_no = 0; client_no < client_set_max; client_no++) {
                    if (((sp->battlemon[client_no].condition & 7) != 0) || (GetBattlerSelectedMove(sp, client_no) != MOVE_FURY_CUTTER) || (ST_CheckIfInTruant(sp, client_no) != FALSE) || (sp->oneTurnFlag[client_no].struggle_flag != 0))
                        sp->battlemon[client_no].moveeffect.furyCutterCount = 0;
                }
                sp->sba_seq_no++;
                break;
            }
            case SBA_RANDOM_SPEED_ROLL: {
                // debug_printf("In SBA_RANDOM_SPEED_ROLL\n");

                for (client_no = 0; client_no < CLIENT_MAX; client_no++) {
                    sp->agi_rand[client_no] = BattleRand(bw);
                }
                sp->sba_seq_no++;
                break;
            }
            // TODO: Check correctness, probably need to move checks out of CalcSpeed
            case SBA_QUICK_CLAW_CUSTAP_BERRY_O_POWER_ACTIVATION: {
                // debug_printf("In SBA_QUICK_CLAW_CUSTAP_BERRY_O_POWER_ACTIVATION\n");

                ServerSenseiCheck(bw, sp);  /// 先制之爪/釋陀果效果 80143E4h
                sp->sba_seq_no++;
                return;
            }
            case SBA_SET_GIMMICK_REQUEST_STATUS: {
                // debug_printf("In SBA_SET_GIMMICK_REQUEST_STATUS\n");

                for (client_no = 0; client_no < client_set_max; client_no++) {
                    flag = FALSE;
                    if (sp->playerActions[0][3] != SELECT_ESCAPE_COMMAND &&
                        sp->playerActions[2][3] != SELECT_ESCAPE_COMMAND) {
                        if (BattleTypeGet(bw) & BATTLE_TYPE_MULTI) {
                            // player requests mega
                            if (!(client_no)) {
                                if (CheckCanMega(sp, client_no) && (newBS.playerWantMega & No2Bit(client_no)) != 0) {
                                    sp->battlemon[client_no].canMega = 1;
                                    newBS.SideMega[0] = TRUE;
                                    if (sp->battlemon[client_no].id_no == sp->battlemon[2].id_no)
                                        newBS.SideMega[2] = TRUE;
                                    flag = TRUE;
                                }
                            }
                            // ai requests mega
                            else {
                                if (CheckCanMega(sp, client_no)) {
                                    sp->battlemon[client_no].canMega = 1;
                                    newBS.SideMega[client_no] = TRUE;
                                    flag = TRUE;
                                }
                            }
                        } else {
                            // player requests mega
                            if (!(client_no & 1)) {
                                if (CheckCanMega(sp, client_no) && (newBS.playerWantMega & No2Bit(client_no)) != 0) {
                                    sp->battlemon[client_no].canMega = 1;
                                    newBS.SideMega[0] = TRUE;
                                    newBS.SideMega[2] = TRUE;
                                    flag = TRUE;
                                }
                            }
                            // ai requests mega
                            else {
                                if (CheckCanMega(sp, client_no)) {
                                    sp->battlemon[client_no].canMega = 1;
                                    newBS.SideMega[1] = TRUE;
                                    newBS.SideMega[3] = TRUE;
                                    flag = TRUE;
                                }
                            }
                        }
                    }

                    if (flag) {
                        newBS.needMega[client_no] = MEGA_NEED;
                        // 應該沒需要在這裡處理
                        // sp->battlemon[client_no].form_no = GrabMegaTargetForm(sp->battlemon[client_no].species, sp->battlemon[client_no].item);
                        // BattleFormChange(client_no, sp->battlemon[client_no].form_no, bw, sp, FALSE);
                    }
                }
                sp->sba_seq_no++;
                break;
            }
            case SBA_ESCAPING: {
                // debug_printf("In SBA_ESCAPING\n");

                // TODO: this line allows handling Ball Fetch after using a ball
                script = SwitchInAbilityCheck(bw, sp);

                if (script) {
                    // debug_printf("Detour SwitchInAbilityCheck\n");
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, script);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    return;
                }

                if (sp->sba_work >= client_set_max) {
                    sp->sba_seq_no++;
                    sp->sba_work = 0;
                    break;
                }

                client_no = sp->executionOrder[sp->sba_work];

                sp->sba_work++;

                command = sp->playerActions[client_no][3];

                switch (command) {
                    case SELECT_ESCAPE_COMMAND:
                        // Try escaping first, then handle Mega Evolution
                        // 先逃走，然後才處理超級進化

                        // debug_printf("client %d: SELECT_ESCAPE_COMMAND\n", client_no);
                        if ((BattleTypeGet(bw) & BATTLE_TYPE_SAFARI) == 0)
                        {
                            BattleControllerPlayer_RunInput(bw, sp);
                            sp->next_server_seq_no = tempSequenceNumber;
                            sp->waza_status_flag = tempMoveStatusFlag;
                            sp->playerActions[client_no][3] = CONTROLLER_COMMAND_40;
                            sp->playerActions[client_no][0] = CONTROLLER_COMMAND_40;
                        }
                        return;
                    default:
                        break;
                }

                break;
            }
            case SBA_SWITCHING: {
                // debug_printf("In SBA_SWITCHING\n");

                // TODO: this line allows handling Ball Fetch after using a ball
                script = SwitchInAbilityCheck(bw, sp);

                if (script) {
                    // debug_printf("Detour SwitchInAbilityCheck\n");
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, script);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    return;
                }

                if (sp->sba_work >= client_set_max) {
                    sp->sba_seq_no++;
                    sp->sba_work = 0;
                    break;
                }

                client_no = sp->executionOrder[sp->sba_work];

                sp->sba_work++;

                command = sp->playerActions[client_no][3];

                switch (command) {
                    case SELECT_POKEMON_COMMAND:
                        // Try switching first, then handle Mega Evolution
                        // 先切換，然後才處理超級進化

                        // debug_printf("client %d: SELECT_POKEMON_COMMAND\n", client_no);
                        if ((BattleTypeGet(bw) & BATTLE_TYPE_SAFARI) == 0)
                        {
                            BattleControllerPlayer_PokemonInput(bw, sp);
                            sp->next_server_seq_no = tempSequenceNumber;
                            sp->waza_status_flag = tempMoveStatusFlag;
                            sp->playerActions[client_no][3] = CONTROLLER_COMMAND_40;
                            sp->playerActions[client_no][0] = CONTROLLER_COMMAND_40;
                        }
                        return;
                    default:
                        break;
                }

                break;
            }
            case SBA_ROTATING: {
                // debug_printf("In SBA_ROTATING\n");

                sp->sba_seq_no++;
                break;
            }
            case SBA_USING_ITEM: {
                // debug_printf("In SBA_USING_ITEM\n");

                    // TODO: this line allows handling Ball Fetch after using a ball
                    script = SwitchInAbilityCheck(bw, sp);

                if (script) {
                    // debug_printf("Detour SwitchInAbilityCheck\n");
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, script);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    return;
                }

                if (sp->sba_work >= client_set_max) {
                    sp->sba_seq_no++;
                    sp->sba_work = 0;
                    break;
                }

                client_no = sp->executionOrder[sp->sba_work];

                sp->sba_work++;

                command = sp->playerActions[client_no][3];

                switch (command) {
                    case SELECT_ITEM_COMMAND:
                        // Use item first, then handle Mega Evolution
                        // 先使用道具，然後才處理超級進化

                        // debug_printf("client %d: SELECT_ITEM_COMMAND\n", client_no);
                        if ((BattleTypeGet(bw) & BATTLE_TYPE_SAFARI) == 0)
                        {
                            BattleControllerPlayer_ItemInput(bw, sp);
                            sp->next_server_seq_no = tempSequenceNumber;
                            sp->waza_status_flag = tempMoveStatusFlag;
                            // CONTROLLER_COMMAND_40 makes the client not take an action, taken from BtlCmd_TryPursuit
                            // 參考 BtlCmd_TryPursuit ，令寶可夢不會行動
                            sp->playerActions[client_no][3] = CONTROLLER_COMMAND_40;
                            sp->playerActions[client_no][0] = CONTROLLER_COMMAND_40;
                        }
                        return;
                    default:
                        break;
                }

                break;
            }
            case SBA_MEGA_EVOLUTION_ULTRA_BURST: {
                // debug_printf("In SBA_MEGA_EVOLUTION_ULTRA_BURST\n");

                // 超級進化/究極爆發
                if (MegaEvolutionOrUltraBurst(bw, sp)) {
                    return;
                }

                sp->sba_seq_no++;
                break;
            }
            // TODO
            case SBA_DYNAMAXING: {
                // debug_printf("In SBA_DYNAMAXING\n");

                // 極巨化
                sp->sba_seq_no++;
                break;
            }
            // TODO
            case SBA_TERASTALLIZING: {
                // debug_printf("In SBA_TERASTALLIZING\n");

                // 太晶化
                sp->sba_seq_no++;
                break;
            }
            // TODO: Implement moves
            case SBA_FOCUS_PUNCH_BEAK_BLAST_SHELL_TRAP: {
                // debug_printf("In SBA_FOCUS_PUNCH_BEAK_BLAST_SHELL_TRAP\n");
                while (sp->sba_work < client_set_max) {
                    client_no = sp->executionOrder[sp->sba_work];
                    if (sp->no_reshuffle_client & No2Bit(client_no)) {
                        sp->sba_work++;
                        continue;
                    }
                    sp->sba_work++;

                    // 真氣拳
                    if (((sp->battlemon[client_no].condition & 7) == 0) &&
                        (GetBattlerSelectedMove(sp, client_no) == MOVE_FOCUS_PUNCH) &&
                        (ST_CheckIfInTruant(sp, client_no) == FALSE) &&
                        (sp->oneTurnFlag[client_no].struggle_flag == 0)) {
                        SCIO_BlankMessage(bw);
                        sp->battlerIdTemp = client_no;
                        // decomp doesn't have this???
                        // sp->battlemon[client_no].form_no = 1; // ?
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FOCUS_PUNCH_START);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        sp->oneTurnFlag[client_no].pendingFocusPunchFlag = TRUE;
                        return;
                    }

                    // 鳥嘴加農炮
                    // TODO

                    // 陷阱甲殼
                    // TODO
                }
                sp->sba_work = 0;
                sp->sba_seq_no++;
                break;
            }
            case SBA_RAGE: {
                // debug_printf("In SBA_RAGE\n");
                for (client_no = 0; client_no < client_set_max; client_no++) {
                    if ((sp->battlemon[client_no].condition2 & STATUS2_RAGE) && (GetBattlerSelectedMove(sp, client_no) != MOVE_RAGE)) {
                        sp->battlemon[client_no].condition2 &= ~STATUS2_RAGE;
                    }
                }
                sp->sba_seq_no++;
                break;
            }
            case SBA_END: {
                // debug_printf("In SBA_END\n");
                sp->sba_seq_no = 0;
                ret = 2;
                break;
            }
        }
    } while (ret == 0);
    if (ret == 2) {
        sp->server_seq_no = CONTROLLER_COMMAND_8;
    }
}

/**
 *  @brief handle mega evolutions if queued up
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 */
static BOOL MegaEvolutionOrUltraBurst(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int client_no, i;
    int client_set_max;
    int seq;

    client_set_max = BattleWorkClientSetMaxGet(bsys);
    for (i = 0; i < client_set_max; i++) {
        client_no = ctx->turnOrder[i];
        if (newBS.needMega[client_no] == MEGA_NEED && ctx->battlemon[client_no].hp) {
            if (BattleTypeGet(bsys) & BATTLE_TYPE_MULTI) {
                if (client_no == 0 || (client_no == 2 && ctx->battlemon[client_no].id_no == ctx->battlemon[0].id_no))
                    newBS.PlayerMegaed = TRUE;
            } else if (client_no == 0 || client_no == 2) {
                newBS.PlayerMegaed = TRUE;
            }

            ctx->battlemon[client_no].form_no = GrabMegaTargetForm(ctx->battlemon[client_no].species, ctx->battlemon[client_no].item);

            // https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-9458017
            ctx->battlemon[client_no].condition2 &= ~STATUS2_DESTINY_BOND;

            BattleFormChange(client_no, ctx->battlemon[client_no].form_no, bsys, ctx, TRUE);

            newBS.needMega[client_no] = MEGA_CHECK_APPER;
            ctx->battlerIdTemp = client_no;
            if (CheckCanSpeciesMegaEvolveByMove(ctx, client_no)) {
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_MOVE_MEGA_EVOLUTION);
            } else {
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_MEGA_EVOLUTION);  // load sequence 297 and execute
            }
            ctx->next_server_seq_no = ctx->server_seq_no;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            return TRUE;
        }
        if (newBS.needMega[client_no] == MEGA_CHECK_APPER && ctx->battlemon[client_no].hp) {
            newBS.needMega[client_no] = MEGA_NO_NEED;
            seq = ST_ServerPokeAppearCheck(bsys, ctx);
            if (seq) {
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, seq);
                ctx->next_server_seq_no = ctx->server_seq_no;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return TRUE;
            }
        }
        newBS.needMega[client_no] = MEGA_NO_NEED;
    }
    return FALSE;
}
