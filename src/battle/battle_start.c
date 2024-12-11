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

/********************************************************************************************************************/
/********************************************************************************************************************/
//                                                战斗前准备
/********************************************************************************************************************/
/********************************************************************************************************************/
// bubble lives on in the repository o7
// would not be here without him

/**
 *  @brief initialize the global battle structure and return it
 *
 *  @param bw battle work structure
 */
struct BattleStruct *ServerInit(struct BattleSystem *bw) {
    struct BattleStruct *sp;

    sp = sys_AllocMemory(5, sizeof(struct BattleStruct));
    memset(sp, 0, sizeof(struct BattleStruct));
    BattleStructureInit(sp);
    BattleStructureCounterInit(bw, sp);
    ServerMoveAIInit(bw, sp);
    DumpMoveTableData(&sp->moveTbl[0]);
    sp->aiWorkTable.item = ItemDataTableLoad(5);

#ifdef RESTORE_ITEMS_AT_BATTLE_END

    // store items for the player's party in sp so we can restore them at the end
    struct Party *party = SaveData_GetPlayerPartyPtr(SaveBlock2_get());
    for (int i = 0; i < party->count; i++) {
        newBS.itemsToRestore[i] = GetMonData(Party_GetMonByIndex(party, i), MON_DATA_HELD_ITEM, NULL);
    }

#endif  // RESTORE_ITEMS_AT_BATTLE_END

    sp->original_terrain = bw->terrain;
    sp->original_bgId = bw->bgId;

    return sp;
}


typedef enum BeforeTurnState {
    SBA_RESET_DEFIANT = 0,
    SBA_RESET_FURY_CUTTER,
    SBA_RANDOM_SPEED_ROLL,
    SBA_QUICK_CLAW_CUSTAP_BERRY_O_POWER_ACTIVATION,
    SBA_SET_GIMMICK_REQUEST_STATUS,
    // This part is inconsistent between Bulbapedia, Victory Road VGC, and Showdown, defaulting to Showdown for now
    SBA_ESCAPING,
    SBA_SWITCHING,
    SBA_ROTATING,
    SBA_USING_ITEM,
    SBA_MEGA_EVOLUTION_ULTRA_BURST,
    SBA_DYNAMAXING,
    SBA_TERASTALLIZING,
    SBA_FOCUS_PUNCH_BEAK_BLAST_SHELL_TRAP,
    // End inconsistent order
    SBA_RAGE,
    SBA_END
} BeforeTurnState;

/**
 *  @brief handle mega evolutions if queued up
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 */
static BOOL MegaEvolutionOrUltraBurst(void *bw, struct BattleStruct *sp) {
    int client_no, i;
    int client_set_max;
    int seq;

    client_set_max = BattleWorkClientSetMaxGet(bw);
    for (i = 0; i < client_set_max; i++) {
        client_no = sp->turnOrder[i];
        if (newBS.needMega[client_no] == MEGA_NEED && sp->battlemon[sp->attack_client].hp) {
            if (BattleTypeGet(bw) & BATTLE_TYPE_MULTI) {
                if (client_no == 0 || (client_no == 2 && sp->battlemon[client_no].id_no == sp->battlemon[0].id_no))
                    newBS.PlayerMegaed = TRUE;
            } else if (client_no == 0 || client_no == 2) {
                newBS.PlayerMegaed = TRUE;
            }

            sp->battlemon[client_no].form_no = GrabMegaTargetForm(sp->battlemon[client_no].species, sp->battlemon[client_no].item);
            BattleFormChange(client_no, sp->battlemon[client_no].form_no, bw, sp, TRUE);

            newBS.needMega[client_no] = MEGA_CHECK_APPER;
            sp->battlerIdTemp = client_no;
            if (CheckCanSpeciesMegaEvolveByMove(sp, client_no)) {
                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_MOVE_MEGA_EVOLUTION);
            } else {
                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_MEGA_EVOLUTION);  // load sequence 297 and execute
            }
            sp->next_server_seq_no = sp->server_seq_no;
            sp->server_seq_no = 22;
            return TRUE;
        }
        if (newBS.needMega[client_no] == MEGA_CHECK_APPER && sp->battlemon[sp->attack_client].hp) {
            newBS.needMega[client_no] = MEGA_NO_NEED;
            seq = ST_ServerPokeAppearCheck(bw, sp);
            if (seq) {
                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq);
                sp->next_server_seq_no = sp->server_seq_no;
                sp->server_seq_no = 22;
                return TRUE;
            }
        }
        newBS.needMega[client_no] = MEGA_NO_NEED;
    }
    return FALSE;
}

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
void ServerBeforeAct(void *bw, struct BattleStruct *sp) {
    int ret;
    int client_no;
    int client_set_max;
    int tempSequenceNumber = sp->server_seq_no;
    int tempMoveStatusFlag = sp->waza_status_flag;
    int script;
    int command;

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
                        BattleControllerPlayer_RunInput(bw, sp);
                        sp->next_server_seq_no = tempSequenceNumber;
                        sp->waza_status_flag = tempMoveStatusFlag;
                        sp->playerActions[client_no][3] = CONTROLLER_COMMAND_40;
                        sp->playerActions[client_no][0] = CONTROLLER_COMMAND_40;
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
                        BattleControllerPlayer_PokemonInput(bw, sp);
                        sp->next_server_seq_no = tempSequenceNumber;
                        sp->waza_status_flag = tempMoveStatusFlag;
                        sp->playerActions[client_no][3] = CONTROLLER_COMMAND_40;
                        sp->playerActions[client_no][0] = CONTROLLER_COMMAND_40;
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
                        BattleControllerPlayer_ItemInput(bw, sp);
                        sp->next_server_seq_no = tempSequenceNumber;
                        sp->waza_status_flag = tempMoveStatusFlag;
                        // CONTROLLER_COMMAND_40 makes the client not take an action, taken from BtlCmd_TryPursuit
                        // 參考 BtlCmd_TryPursuit ，令寶可夢不會行動
                        sp->playerActions[client_no][3] = CONTROLLER_COMMAND_40;
                        sp->playerActions[client_no][0] = CONTROLLER_COMMAND_40;
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
                    if ((sp->battlemon[client_no].condition2 & 0x800000) && (GetBattlerSelectedMove(sp, client_no) != MOVE_RAGE)) {
                        sp->battlemon[client_no].condition2 &= 0x800000;
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
        sp->server_seq_no = 8;
    }
}

/********************************************************************************************************************/
/********************************************************************************************************************/
//                                                技能使用前判断
/********************************************************************************************************************/
/********************************************************************************************************************/

enum {
    SEQ_MEGA_CHECK = 0,
    SEQ_SENSEI_CHECK,
    SEQ_STATUS_CHECK,
    SEQ_BADGE_CHECK,
    SEQ_PP_CHECK,
    SEQ_DEFENCE_CHECK,
    SEQ_WAZAKOYUU_CHECK,
    SEQ_DEFENCE_CHANGE_CHECK,
    SEQ_PROTEAN_CHECK,
    SEQ_STANCE_CHANGE_CHECK,
    SEQ_PARENTAL_BOND_CHECK,
};

enum ObedienceCheckResult {
    OBEY_CHECK_SUCCESS = 0,
    OBEY_CHECK_DO_NOTHING,
    OBEY_CHECK_DIFFERENT_MOVE,
    OBEY_CHECK_HIT_SELF
};

enum {
    CHECK_STATUS_LOOP_BACK = 0,
    CHECK_STATUS_DISRUPT_MOVE, // wholly disrupt the move; attacker does not get a turn
    CHECK_STATUS_GO_TO_SCRIPT, // execute a given script, then proceed with the chosen move
    CHECK_STATUS_DONE,
};

// 08014ACC

/**
 *  @brief run through everything before any of the moves are used
 *         modified for protean and stance change and megas
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 */
void ServerWazaBefore(void *bw, struct BattleStruct *sp) {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
    debug_printf("In ServerWazaBefore\n");
#endif
    u32 ovyId, offset, restoreOverlay = FALSE;

    void (*internalFunc)(void *bw, struct BattleStruct *sp);

    UnloadOverlayByID(6); // unload overlay 6 so this can be loaded

    if (IsOverlayLoaded(0)) { // we are taking overlay 0's place
        restoreOverlay = TRUE;
        UnloadOverlayByID(0);
    } else if (IsOverlayLoaded(18)) {
        restoreOverlay = 18;
        UnloadOverlayByID(18);
    }

#ifdef DEBUG_BEFORE_MOVE_LOGIC
    debug_printf("Load OVERLAY_BATTLECONTROLLER_BEFOREMOVE\n");
#endif
    ovyId = OVERLAY_BATTLECONTROLLER_BEFOREMOVE;

    //offset = 0x023C0400 | 1;
    offset = 0x021E5900 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (void LONG_CALL (*)(void *bw, struct BattleStruct *sp))(offset);
    internalFunc(bw, sp);
    UnloadOverlayByID(ovyId);

    HandleLoadOverlay(6, 2); // reload 6 so things are okay

    if (restoreOverlay) {
        debug_printf("Restoring overlay %d...\n", (restoreOverlay == 1 ? 0 : restoreOverlay));
        HandleLoadOverlay((restoreOverlay == 1 ? 0 : restoreOverlay), 2);
    }

/*
    u32 runMyScriptInstead = 0;
    switch (sp->wb_seq_no) {
        case SEQ_MEGA_CHECK: {
            if (MegaEvolutionOrUltraBurst(bw, sp)) {
                return;
            }
            sp->wb_seq_no++;
            FALLTHROUGH;
        }
        case SEQ_SENSEI_CHECK: {
            ServerSenseiCheck(bw, sp);  /// 先制之爪效果 80143E4h
            sp->wb_seq_no++;
            return;
        }
        case SEQ_STATUS_CHECK: {
            if ((sp->waza_out_check_on_off & SYSCTL_SKIP_STATUS_CHECK) == FALSE) {
                // 异常状态检查
                if (ServerStatusCheck(bw, sp) == TRUE)  // 8013C68h
                {
                    return;
                }
            }
            sp->wb_seq_no++;
            FALLTHROUGH;
        }
        case SEQ_BADGE_CHECK: {
            {
                int ret;
                int seq_no;

                if ((sp->waza_out_check_on_off & SYSCTL_SKIP_OBEDIENCE_CHECK) == 0) {
                    ret = ServerBadgeCheck(bw, sp, &seq_no);  // 8013610h
                    if (ret) {
                        switch (ret) {
                            case OBEY_CHECK_DO_NOTHING:
                                sp->next_server_seq_no = CONTROLLER_COMMAND_39;
                                break;
                            case OBEY_CHECK_DIFFERENT_MOVE:
                                sp->next_server_seq_no = sp->server_seq_no;
                                break;
                            case OBEY_CHECK_HIT_SELF:
                                sp->next_server_seq_no = CONTROLLER_COMMAND_34;
                                break;
                        }
                        sp->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq_no);
                        return;
                    }
                }
            }

            sp->wb_seq_no++;
            FALLTHROUGH;
        }
        case SEQ_PP_CHECK: {
            if ((sp->waza_out_check_on_off & SYSCTL_SKIP_PP_DECREMENT) == 0) {
                // pp检查
                if (ServerPPCheck(bw, sp) == TRUE)  // 801393Ch
                {
                    return;
                }
            }
            sp->wb_seq_no++;
            FALLTHROUGH;
        }
            // 攻击对象检查，包括了蓄力技能
        case SEQ_DEFENCE_CHECK: {
            if (ServerDefenceCheck(bw, sp) == TRUE)  // 8013AD8h
            {
                return;
            }
            sp->wb_seq_no++;
            FALLTHROUGH;
        }
            // 防御效果检查，魔法守护等
        case SEQ_WAZAKOYUU_CHECK: {
            if ((sp->waza_out_check_on_off & SYSCTL_SKIP_STOLEN_CHECK) == 0) {
                if (ServerWazaKoyuuCheck(bw, sp) == TRUE)  // 8014944h
                {
                    return;
                }
            }
            sp->wb_seq_no++;
            FALLTHROUGH;
        }
            // 引水等特性检查
        case SEQ_DEFENCE_CHANGE_CHECK: {
            ST_ServerDefenceClientTokuseiCheck(bw, sp, sp->attack_client, sp->current_move_index);  // 8019158h
            sp->wb_seq_no++;
            FALLTHROUGH;
        }
        case SEQ_PROTEAN_CHECK: {
            if (sp->battlemon[sp->attack_client].ability == ABILITY_PROTEAN && (sp->battlemon[sp->attack_client].type1 != sp->moveTbl[sp->current_move_index].type  // if either type is not the move's type
                                                                                || sp->battlemon[sp->attack_client].type2 != sp->moveTbl[sp->current_move_index].type) &&
                (sp->battlemon[sp->attack_client].ability_activated_flag == 0 || PROTEAN_GENERATION < 9)  // Protean should activate only once per switch-in if gen 9 behavior
                && sp->moveTbl[sp->current_move_index].power != 0)                                        // the move has to have power in order for it to change the type
            {
                sp->battlemon[sp->attack_client].type1 = sp->moveTbl[sp->current_move_index].type;
                sp->battlemon[sp->attack_client].type2 = sp->moveTbl[sp->current_move_index].type;
#if PROTEAN_GENERATION >= 9
                sp->battlemon[sp->attack_client].ability_activated_flag = 1;
#endif
                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_PROTEAN_MESSAGE);
                sp->msg_work = sp->battlemon[sp->attack_client].type1;
                sp->battlerIdTemp = sp->attack_client;
                runMyScriptInstead = 1;
            } else {
                sp->wb_seq_no++;
            }
            FALLTHROUGH;
        }
        case SEQ_STANCE_CHANGE_CHECK: {
            if (sp->battlemon[sp->attack_client].ability == ABILITY_STANCE_CHANGE && sp->battlemon[sp->attack_client].species == SPECIES_AEGISLASH) {
                sp->battlerIdTemp = sp->attack_client;
                if (sp->current_move_index == MOVE_KINGS_SHIELD && sp->battlemon[sp->attack_client].form_no == 1) {
                    sp->battlemon[sp->battlerIdTemp].form_no = 0;
                    BattleFormChange(sp->battlerIdTemp, sp->battlemon[sp->battlerIdTemp].form_no, bw, sp, 0);
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FORM_CHANGE);
                    runMyScriptInstead = 1;
                } else if (sp->moveTbl[sp->current_move_index].power != 0 && sp->battlemon[sp->attack_client].form_no == 0) {
                    sp->battlemon[sp->battlerIdTemp].form_no = 1;
                    BattleFormChange(sp->battlerIdTemp, sp->battlemon[sp->battlerIdTemp].form_no, bw, sp, 0);
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_FORM_CHANGE);
                    runMyScriptInstead = 1;
                }
            } else {
                sp->wb_seq_no++;
            }
            FALLTHROUGH;
        }
        case SEQ_PARENTAL_BOND_CHECK: {
            if (IsValidParentalBondMove(bw, sp, FALSE) &&
                sp->loop_hit_check != 0xFD) {
                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_PARENTAL_BOND);
                runMyScriptInstead = 1;
            } else {
                sp->oneTurnFlag[sp->battlerIdTemp].parental_bond_is_active = FALSE;
                sp->wb_seq_no = 0;
            }
            break;
        }
    }

    if (sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) {
        sp->server_seq_no = CONTROLLER_COMMAND_26;
    } else {
        sp->server_status_flag2 |= BATTLE_STATUS2_MOVE_SUCCEEDED;
        sp->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;  // execute protean OR the move
        if (runMyScriptInstead == 0) {
            LoadBattleSubSeqScript(sp, ARC_BATTLE_MOVE_SEQ, sp->current_move_index);
            sp->next_server_seq_no = CONTROLLER_COMMAND_24;  // after that
        } else                                               // might want to move this else to be up before the NO_OUT check above
        {
            sp->next_server_seq_no = 23;  // loop back to this one after the protean executes so that it can catch the actual move as well
        }
        ST_ServerTotteokiCountCalc(bw, sp);  // 801B570h
    }
    ST_ServerMetronomeBeforeCheck(bw, sp);  // 801ED20h
*/
}
