#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/mega.h"
#include "../../include/item.h"
#include "../../include/pokemon.h"
#include "../../include/trainer_ai.h"
#include "../../include/types.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/species.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/battle_message_constants.h"

typedef struct {
    
} AIContext;

typedef struct {
    u32 flag;
    int (*evaluator)(struct BattleSystem *bsys, u32 attacker, int moveSlot, AIContext *ai);
} MoveEvaluator;

// Flag functions return a move score, given the slot of the current move.
int BasicFlag(struct BattleSystem *bsys, u32 attacker, int moveSlot, AIContext *ai);
int EvaluateAttackFlag(struct BattleSystem *bsys, u32 attacker, int moveSlot, AIContext *ai);
int ExpertFlag(struct BattleSystem *bsys, u32 attacker, int moveSlot, AIContext *ai);
int SetupFirstTurnFlag(struct BattleSystem *bsys, u32 attacker, int moveSlot, AIContext *ai);
int RiskyFlag(struct BattleSystem *bsys, u32 attacker, int moveSlot, AIContext *ai);
int PrioritizeDamageFlag(struct BattleSystem *bsys, u32 attacker, int moveSlot, AIContext *ai);
int BatonPassFlag(struct BattleSystem *bsys, u32 attacker, int moveSlot, AIContext *ai);
int TagStrategyFlag(struct BattleSystem *bsys, u32 attacker, int moveSlot, AIContext *ai);
int CheckHPFlag(struct BattleSystem *bsys, u32 attacker, int moveSlot, AIContext *ai);
int WeatherFlag(struct BattleSystem *bsys, u32 attacker, int moveSlot, AIContext *ai);
int HarassmentFlag(struct BattleSystem *bsys, u32 attacker, int moveSlot, AIContext *ai);

// Add your own custom flags to this list.
static const MoveEvaluator moveEvaluators[] = {
    { AI_FLAG_BASIC,                BasicFlag },
    { AI_FLAG_EVAL_ATTACK,          EvaluateAttackFlag },
    { AI_FLAG_EXPERT,               ExpertFlag },
    { AI_FLAG_SETUP_FIRST_TURN,     SetupFirstTurnFlag },
    { AI_FLAG_RISKY,                RiskyFlag },
    { AI_FLAG_DAMAGE_PRIORITY,      PrioritizeDamageFlag },
    { AI_FLAG_BATON_PASS,           BatonPassFlag },
    { AI_FLAG_TAG_STRATEGY,         TagStrategyFlag },
    { AI_FLAG_CHECK_HP,             CheckHPFlag },
    { AI_FLAG_WEATHER,              WeatherFlag },
    { AI_FLAG_HARRASSMENT,          HarassmentFlag },
};

// Quick hello world example that just runs through the moves and selects the highest base power one
// Breaks literally every AI flag
enum AIActionChoice __attribute__((section (".init"))) TrainerAI_Main(struct BattleSystem *bsys, u32 battler)
{
    enum AIActionChoice result = AI_ENEMY_ATTACK_1, highestBasePower = 0;
    struct BattleStruct *ctx = bsys->sp;

    for (int moveSlot = 0; moveSlot < MAX_MON_MOVES; moveSlot++)
    {
        u32 currentBasePower = ctx->moveTbl[ctx->battlemon[battler].move[moveSlot]].power;
        if (currentBasePower > highestBasePower)
        {
            highestBasePower = currentBasePower;
            result = moveSlot;
        }
    }
    return result;
}
