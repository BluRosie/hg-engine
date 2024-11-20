#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/file.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/types.h"

// TODO: https://bulbapedia.bulbagarden.net/wiki/Ignoring_Abilities#Ignorable_Abilities
/*

Abilities are only ignored while the move is being executed. They take effect again immediately after its execution.

    Abilities that prevent status conditions (such as Immunity and Oblivious) will not protect the Pokémon from receiving the status condition. However, many of these Abilities also have effects to cure the Pokémon of the status condition if afflicted, which will activate immediately after being inflicted with the status condition, even if it was inflicted while the Ability was being ignored.
    If a Pokémon with Own Tempo consumes a held Berry that may cause confusion in response to the move that ignores Abilities, it will become confused if it dislikes the flavor. However, Own Tempo will then activate and cure it of confusion.

*/

static BOOL IfAllClientsHavePerishSong(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int battlerId;

    int maxBattlers = BattleWorkClientSetMaxGet(bsys);

    int cnt = 0;

    for (battlerId = 0; battlerId < maxBattlers; battlerId++) {
        if (ctx->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG_ACTIVE || ctx->battlemon[battlerId].hp == 0 /* || MoldBreakerAbilityCheck(ctx, ctx->attack_client, battlerId, ABILITY_SOUNDPROOF) == TRUE */) {
            cnt++;
        }
    }
    if (cnt == maxBattlers) {
        return TRUE;
    }

    return FALSE;
}

// TODO
static BOOL BattleController_CheckMoveFailures3(struct BattleSystem *bsys, struct BattleStruct *ctx, int defender) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;

    // But it failed
    // Attract into a target already infatuated
    if ((moveEffect == MOVE_EFFECT_INFATUATE && ctx->battlemon[defender].condition2 & STATUS2_ATTRACT)
    // Ingrain when user already has Ingrain
    || (moveEffect == MOVE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL && ctx->battlemon[ctx->attack_client].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN)
    // Leech Seed when target already has Leech Seed
    || (moveEffect == MOVE_EFFECT_STATUS_LEECH_SEED && ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE)
    // Perish Song when all targets have Perish Song
    || IfAllClientsHavePerishSong(bsys, ctx)
    // Status move into target that already has another major status condition (but not the same one)
    || ((moveEffect == MOVE_EFFECT_STATUS_SLEEP || moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN || moveEffect == MOVE_EFFECT_STATUS_PARALYZE || moveEffect == MOVE_EFFECT_STATUS_POISON || moveEffect == MOVE_EFFECT_STATUS_BADLY_POISON || moveEffect == MOVE_EFFECT_STATUS_BURN) && ctx->battlemon[defender].condition)
    // Torment when target already has Torment
    || (moveEffect == MOVE_EFFECT_TORMENT && ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_EMBARGO)
    // Yawn into target with status condition / already has Yawn
    || (moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN && (ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_YAWN_COUNTER || ctx->battlemon[defender].condition))
    // Worry Seed when target has Insomnia / Truant
    || (!IfAbilityCanBeReplacedByWorrySeed(ctx, ctx->attack_client))
    // TODO: Coaching in singles or when there is no ally target available in doubles
    ) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->msg_work = defender;
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_FAILED;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BUT_IT_FAILED_SPREAD);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }

    // It doesn't affect xxx
    // Dream Eater when target is awake
    if ((moveEffect == MOVE_EFFECT_RECOVER_DAMAGE_SLEEP && !((ctx->battlemon[defender].condition & STATUS_FLAG_ASLEEP) || GetBattlerAbility(ctx, defender)))
    // Endeavor when target has equal or less HP than the user
    || (moveEffect == MOVE_EFFECT_SET_HP_EQUAL_TO_USER && ctx->battlemon[ctx->attack_client].hp <= ctx->battlemon[defender].hp)) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_NOT_EFFECTIVE;
        ctx->msg_work = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_DOESNT_AFFECT);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }

    // xxx is unaffected
    // OHKO moves against a target with higher level than the user / target is Dynamaxed
    if (moveEffect == MOVE_EFFECT_ONE_HIT_KO && (ctx->battlemon[ctx->attack_client].level < ctx->battlemon[defender].level || ctx->battlemon[defender].is_currently_dynamaxed)) {
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_OHKO_HIT_NOHIT;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->msg_work = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_UNAFFECTED);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }

    // xxx is already xxx
    // Status move into target that already has that status
    if ((moveEffect == MOVE_EFFECT_STATUS_SLEEP && ctx->battlemon[defender].condition & STATUS_SLEEP)
    || (moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN && ctx->battlemon[defender].condition & MOVE_EFFECT_YAWN_COUNTER)
    || (moveEffect == MOVE_EFFECT_STATUS_PARALYZE && ctx->battlemon[defender].condition & STATUS_PARALYSIS)
    || ((moveEffect == MOVE_EFFECT_STATUS_POISON || moveEffect == MOVE_EFFECT_STATUS_BADLY_POISON) && ctx->battlemon[defender].condition & STATUS_POISON_ALL)
    || (moveEffect == MOVE_EFFECT_STATUS_BURN && ctx->battlemon[defender].condition & STATUS_BURN)) {
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_FAILED;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->msg_work = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ALREADY_HAS_SAME_STATUS);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }

    // TODO: tbh can just jump to effect script
    // Clangorous Soul / No Retreat with all stats maxed out
    // Stat changing moves that can't go any higher
    // Stat changing moves that can't go any lower
    // Stuff Cheeks with Defense maxed out
    // TODO: Check fail message in game
    // Synchronoise: non-matching type

    return FALSE;
}

static BOOL BattleController_CheckTypeBasedMoveConditionImmunities2(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;

    // Electric-type paralysis immunity
    if ((moveEffect == MOVE_EFFECT_STATUS_PARALYZE && HasType(ctx, defender, TYPE_ELECTRIC))
    // Fire-type burn immunity
    || (moveEffect == MOVE_EFFECT_STATUS_BURN && HasType(ctx, defender, TYPE_FIRE))
    // Grass-type Leech Seed immunity
    || (moveEffect == MOVE_EFFECT_STATUS_LEECH_SEED && HasType(ctx, defender, TYPE_GRASS))
    // Poison / Steel-type poison / badly poison immunity
    || ((moveEffect == MOVE_EFFECT_STATUS_POISON || moveEffect == MOVE_EFFECT_STATUS_BADLY_POISON) && HasType(ctx, defender, TYPE_POISON) && GetBattlerAbility(ctx, ctx->attack_client) != ABILITY_CORROSION)) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_NOT_EFFECTIVE;
        ctx->msg_work = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_DOESNT_AFFECT);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }
    return FALSE;
}

static BOOL BattleController_CheckUproarStoppingSleepMoves(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;

    if (ctx->field_condition & FIELD_STATUS_UPROAR && moveEffect == MOVE_EFFECT_STATUS_SLEEP) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_FAILED;
        ctx->msg_work = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_UPROAR_STOPPING_SLEEP_MOVES);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }

    if (ctx->field_condition & FIELD_STATUS_UPROAR && moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_FAILED;
        ctx->msg_work = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_UPROAR_STOPPING_REST);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }
    return FALSE;
}

static BOOL BattleController_CheckTerrainBlock(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;
    // TODO: Come back after terrain refactor
    if (ctx->terrainOverlay.numberOfTurnsLeft > 0) {
        switch (ctx->terrainOverlay.type) {
            case ELECTRIC_TERRAIN:
                if ((moveEffect == MOVE_EFFECT_STATUS_SLEEP || moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN) && MoldBreakerIsClientGrounded(ctx, ctx->attack_client, defender)) {
                    ctx->msg_work = defender;
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ELECTRIC_TERRAIN_PROTECTION);
                    ctx->next_server_seq_no = ctx->server_seq_no;
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                    ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_FAILED;
                    return TRUE;
                }
                break;

            case MISTY_TERRAIN:
                if ((moveEffect == MOVE_EFFECT_STATUS_SLEEP || moveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN || moveEffect == MOVE_EFFECT_STATUS_PARALYZE || moveEffect == MOVE_EFFECT_STATUS_POISON || moveEffect == MOVE_EFFECT_STATUS_BADLY_POISON || moveEffect == MOVE_EFFECT_STATUS_BURN || moveEffect == MOVE_EFFECT_STATUS_CONFUSE) && MoldBreakerIsClientGrounded(ctx, ctx->attack_client, defender)) {
                    ctx->msg_work = defender;
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MISTY_TERRAIN_PROTECTION);
                    ctx->next_server_seq_no = ctx->server_seq_no;
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                    ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_FLAG_FAILED;
                    return TRUE;
                }
                break;
            default:
                break;
        }
    }
    return FALSE;
}

// TODO: Handle Stat failure success check
static BOOL BattleController_CheckAbilityFailures4(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    int moveEffect = ctx->moveTbl[ctx->current_move_index].effect;
    BOOL hasClearBodyOrFullMetalBodyOrWhiteSmoke = MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_CLEAR_BODY) || MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_FULL_METAL_BODY) || MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_WHITE_SMOKE);

    // TODO: Check correctness
    BOOL hasFlowerVeil = MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_FLOWER_VEIL) || MoldBreakerAbilityCheck(ctx, ctx->attack_client, BATTLER_ALLY(defender), ABILITY_FLOWER_VEIL);

    int subscriptToRun = 0;

    switch (moveEffect)
    {
    case MOVE_EFFECT_ATK_DOWN:
    case MOVE_EFFECT_ATK_DOWN_2:
        if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_HYPER_CUTTER)) {
            subscriptToRun = SUB_SEQ_ATTACK_NOT_LOWERED;
            break;
        }
        if (hasFlowerVeil) {
            subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
            break;
        }
        if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
            subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
            break;
        }
        break;
    case MOVE_EFFECT_DEF_DOWN:
    case MOVE_EFFECT_DEF_DOWN_2:
        if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_BIG_PECKS)) {
            subscriptToRun = SUB_SEQ_DEFENSE_NOT_LOWERED;
            break;
        }
        if (hasFlowerVeil) {
            subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
            break;
        }
        if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
            subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
            break;
        }
        break;
    case MOVE_EFFECT_ATK_DEF_DOWN:  // Tickle
        // If the move is Tickle, first attack will drop, then Big Pecks will prevent the Defense drop.
        // If the move is Tickle, first Hyper Cutter will block the Attack drop, then Defense will drop.

        if (hasFlowerVeil) {
            subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
            break;
        }
        if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
            subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
            break;
        }
        break;
    case MOVE_EFFECT_SPEED_DOWN:
    case MOVE_EFFECT_SPEED_DOWN_2:
        if (hasFlowerVeil) {
            subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
            break;
        }
        if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
            subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
            break;
        }
        break;
    case MOVE_EFFECT_SP_ATK_DOWN:
    case MOVE_EFFECT_SP_ATK_DOWN_2:
    case MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER:
        if (hasFlowerVeil) {
            subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
            break;
        }
        if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
            subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
            break;
        }
        break;
    case MOVE_EFFECT_SP_DEF_DOWN:
    case MOVE_EFFECT_SP_DEF_DOWN_2:
        if (hasFlowerVeil) {
            subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
            break;
        }
        if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
            subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
            break;
        }
        break;
    case MOVE_EFFECT_ACC_DOWN:
    case MOVE_EFFECT_ACC_DOWN_2:
        if (MoldBreakerAbilityCheck(ctx, ctx->attack_client, defender, ABILITY_KEEN_EYE)) {
            subscriptToRun = SUB_SEQ_ACCURACY_NOT_LOWERED;
            break;
        }
        if (hasFlowerVeil) {
            subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
            break;
        }
        if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
            subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
            break;
        }
        break;
    case MOVE_EFFECT_EVA_DOWN:
    case MOVE_EFFECT_EVA_DOWN_2:
        if (hasFlowerVeil) {
            subscriptToRun = SUB_SEQ_FLOWER_VEIL_FAIL;
            break;
        }
        if (hasClearBodyOrFullMetalBodyOrWhiteSmoke) {
            subscriptToRun = SUB_SEQ_STATS_NOT_LOWERED;
            break;
        }
        break;
    default:
        subscriptToRun = 0;
        break;
    }

    // TODO: Status condition-based failures, Raw Speed with non-RNG speed tie

    if (subscriptToRun) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->msg_work = defender;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, subscriptToRun);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->moveStatusFlagForSpreadMoves[defender] = MOVE_STATUS_NO_MORE_WORK;
        return TRUE;
    }
    return FALSE;
}

void LONG_CALL __attribute__((optimize("O0"))) BattleController_BeforeMove5(struct BattleSystem *bsys, struct BattleStruct *ctx) {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
    debug_printf("In BattleController_BeforeMove5\n")
#endif
    
    switch (ctx->wb_seq_no) {
        case BEFORE_MOVE_STATE_MOVE_FAILURES_3: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_MOVE_FAILURES_3\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckMoveFailures3);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }  
        case BEFORE_MOVE_STATE_TYPE_BASED_MOVE_CONDITION_IMMUNITIES_2: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_TYPE_BASED_MOVE_CONDITION_IMMUNITIES_2\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckTypeBasedMoveConditionImmunities2);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_UPROAR_STOPPING_MOVES: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_UPROAR_STOPPING_MOVES\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckUproarStoppingSleepMoves);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case BEFORE_MOVE_STATE_SAFEGUARD: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_SAFEGUARD\n");
#endif
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_TERRAIN_BLOCK: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_TERRAIN_BLOCK\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckTerrainBlock);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case BEFORE_MOVE_STATE_SUBSTITUTE_BLOCKING_STAT_DROPS_DECORATE: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_SUBSTITUTE_BLOCKING_STAT_DROPS_DECORATE\n");
#endif

            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case BEFORE_MOVE_STATE_MIST: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_MIST\n");
#endif

            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_ABILITY_FAILURES_4: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_ABILITY_FAILURES_4\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckAbilityFailures4);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
    }
}
