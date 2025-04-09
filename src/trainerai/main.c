#include "../../include/types.h"
#include "../../include/config.h"
#include "../../include/battle.h"
#include "../../include/mega.h"
#include "../../include/pokemon.h"
#include "../../include/trainer_ai.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/species.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../src/battle/ai.c"
#include "../../data/itemdata/itemdata.c"
#include "../../src/battle/battle_calc_damage.c"
#include "../../include/constants/item.h"
#include "../../include/item.h"


typedef struct {
    /*Field/Pokemon state relavent variables*/
    BOOL defender_immune_to_poison;
    BOOL defender_immune_to_paralysis;
    BOOL defender_immune_to_burn;
    BOOL defender_immune_to_sleep;
    BOOL attacker_knows_psych_up;
    BOOL attacker_has_super_effective_move;
    BOOL defender_has_hazards;
    BOOL trick_room_active;
    BOOL hasStatChange;
    BOOL attacker_has_damaging_move;
    BOOL defender_has_bad_item;

    u8 attacker_moves_first;
    u8 defender_moves_first;
    u8 is_speed_tie;

    u32 fling_power;
    u32 attacker_move_effectiveness;

    int defender;
    int defender_side;
    int attacker_side;
    int attacker_ability;
    int attacker_level;
    int defender_ability;
    int attacker_item;
    int defender_item;
    int hold_effect;
    int defender_type_1;
    int defender_type_2;
    int attacker_type_1;
    int attacker_type_2;
    int attacker_hp;
    int attacker_max_hp;
    int attacker_percent_hp;
    int defender_hp;
    int defender_max_hp;
    int defender_percent_hp;
    int attacker_speed;
    int defender_speed;
    int party_size_attacking;
    int living_attacking_members;
    int party_size_defending;
    int living_defending_members;
    int damaged_attacking_mons;
    int statused_attacking_mons;
    int attacker_moves_known;
    int attacker_party_index;
    int defender_last_used_move;
    int defender_last_move_effect;
    int defender_turns_on_field;
    int attacker_turns_on_field;
    int difference_in_attack_stages;
    int difference_in_spatk_stages;
    int difference_in_defense_stages;
    int difference_in_spdef_stages;

    /*Move-relevant variables*/
    int attacker_move;
    int attacker_move_effect;
    int attacker_move_type;
    int attacker_move_pp_remaining;
    int attacker_max_roll_move_damages[4];
} AiContext;



/*Flag functions return a move score, given the index of the current move*/
int BasicFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai);
int EvaluateAttackFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai);
int ExpertFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai);
int SetupFirstTurnFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai);
int RiskyFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai);
int PrioritizeDamageFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai);
int BatonPassFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai);
int TagStrategyFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai);
int CheckHPFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai);
int WeatherFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai);
int HarassmentFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai);

/*Helper Functions*/
int AttackerMonWithHighestDamage(struct BattleSystem *bsys, u32 attacker, AiContext *ai);
int BattlerPositiveStatChangesSum(struct BattleSystem *bsys, u32 battler, AiContext *ai);
BOOL BattlerHasStatBoostGreater(struct BattleSystem *bsys, u32 battler, u32 boost_amount, AiContext *ai);
BOOL BattlerHasStatBoostLesser(struct BattleSystem *bsys, u32 battler, u32 drop_amount, AiContext *ai);
BOOL BattlerKnowsMove(struct BattleSystem *bsys, u32 battler, u32 move, AiContext *ai);
BOOL BattlerHasMoveSplit(struct BattleSystem *bsys, u32 battler, u32 move_split, AiContext *ai);
BOOL BattlerHasMoveEffect(struct BattleSystem *bsys, u32 battler, u32 move_effect, AiContext *ai);
BOOL ItemIsBadToTrade(u32 item, AiContext *ai);
BOOL ItemIsDisruptive(u32 item, AiContext *ai);
BOOL IsDesirableAbility(u32 ability);
BOOL LONG_CALL DropsStatsAsStatus(u32 moveEffect);
BOOL LONG_CALL IsInMirrorMoveList(u32 moveEffect);
BOOL LONG_CALL IsInStatList(u32 moveEffect, const u16 StatList[], u16 ListLength);
void SetupStateVariables(struct BattleSystem *bsys, u32 attacker, AiContext *ai);


enum AIActionChoice __attribute__((section (".init"))) TrainerAI_Main(struct BattleSystem *bsys, u32 attacker)
    {
    struct BattleStruct *ctx = bsys->sp;
    AiContext aictx = {0};
    AiContext *ai = &aictx;

    enum AIActionChoice result = AI_ENEMY_ATTACK_1, highestBasePower = 0;
    int highest_move_score = 0;
    u32 moveScores[4] = {100, 100, 100, 100}; //don't want to get negative numbers, so start high
    int num_move_score_ties = 0;
    int move_tie_indices[4] = {0};

    /*Setup field state and mon state variables.
    These are generally used multiple times throughout
    different flags.*/
    SetupStateVariables(bsys, attacker, ai);

    /*Main loop over moves and select the best one*/
    for (int i = 0; i < 4; i++)
    {
        /*Move-relevant variables*/
        ai->attacker_move = ctx->battlemon[attacker].move[i];
        ai->attacker_move_effect = ctx->moveTbl[ai->attacker_move].effect;
        ai->attacker_move_effectiveness = 0;       
        ai->attacker_move_type = ctx->moveTbl[ai->attacker_move].type;
        ai->attacker_move_pp_remaining = ctx->battlemon[attacker].pp[i];
        AITypeCalc(ctx, ai->attacker_move, ai->attacker_move_type, ai->attacker_ability, ai->defender_ability, ai->hold_effect, ai->defender_type_1, ai->defender_type_2, & ai->attacker_move_effectiveness);
        //should loop over trainer's flags set in trainers.s here

        //TODO: add checks for flags once they are correctly refactored. For now we just use the champion ai.
        moveScores[i] += BasicFlag(bsys, attacker, i, ai);
        moveScores[i] += EvaluateAttackFlag(bsys, attacker, i, ai);
        moveScores[i] += ExpertFlag(bsys, attacker, i, ai);
    }

    for(int i = 0; i < 4; i++){
        debug_printf("MoveScore: %d -- for move number:%d \n", moveScores[i], i);
        if(moveScores[i] > moveScores[result]){
            result = i;
        }
    }

    /*Check for move ties*/
    highest_move_score = moveScores[result];
    int j_tie_index = 0;

    for (int i = 0; i < 4; i++){
        if(moveScores[i] == highest_move_score){
            num_move_score_ties++;
            move_tie_indices[j_tie_index] = i;
            j_tie_index++;
        }
    }
    /*If there are no move ties, this still works.
      Pick a random move from the ties.*/
    result  = move_tie_indices[BattleRand(bsys) % num_move_score_ties];

    return result;
}

/*Lists of effects*/
const u16 DropStatList[] = {
    MOVE_EFFECT_ATK_DOWN,
    MOVE_EFFECT_ATK_DOWN_2,
    MOVE_EFFECT_ATK_DOWN_3,
    MOVE_EFFECT_DEF_DOWN,
    MOVE_EFFECT_DEF_DOWN_2,
    MOVE_EFFECT_DEF_DOWN_3,
    MOVE_EFFECT_SPEED_DOWN,
    MOVE_EFFECT_SPEED_DOWN_2,
    MOVE_EFFECT_SPEED_DOWN_3,
    MOVE_EFFECT_SP_ATK_DOWN,
    MOVE_EFFECT_SP_ATK_DOWN_2,
    MOVE_EFFECT_SP_ATK_DOWN_3,
    MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER,
    MOVE_EFFECT_SP_DEF_DOWN,
    MOVE_EFFECT_SP_DEF_DOWN_2,
    MOVE_EFFECT_SP_DEF_DOWN_3,
    MOVE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2,
    MOVE_EFFECT_ATK_SP_ATK_DOWN,
    MOVE_EFFECT_VENOM_DRENCH,
    MOVE_EFFECT_ATK_DEF_DOWN,
    MOVE_EFFECT_EVA_DOWN,
    MOVE_EFFECT_EVA_DOWN_2,
    MOVE_EFFECT_EVA_DOWN_3,
    MOVE_EFFECT_ACC_DOWN,
    MOVE_EFFECT_ACC_DOWN_2,
    MOVE_EFFECT_ACC_DOWN_3
};

const u16 RaiseStatList[] = {
    MOVE_EFFECT_ATK_UP,
    MOVE_EFFECT_ATK_UP_2,
    MOVE_EFFECT_ATK_UP_3,
    MOVE_EFFECT_DEF_UP,
    MOVE_EFFECT_DEF_UP_2,
    MOVE_EFFECT_DEF_UP_3,
    MOVE_EFFECT_SPEED_UP,
    MOVE_EFFECT_SPEED_UP_2,
    MOVE_EFFECT_SPEED_UP_3,
    MOVE_EFFECT_SP_ATK_UP,
    MOVE_EFFECT_SP_ATK_UP_2,
    MOVE_EFFECT_SP_ATK_UP_3,
    MOVE_EFFECT_SP_DEF_UP,
    MOVE_EFFECT_SP_DEF_UP_2,
    MOVE_EFFECT_SP_DEF_UP_3,
    MOVE_EFFECT_ACC_UP,
    MOVE_EFFECT_ACC_UP_2,
    MOVE_EFFECT_ACC_UP_3,
    MOVE_EFFECT_EVA_UP,
    MOVE_EFFECT_EVA_UP_2,
    MOVE_EFFECT_EVA_UP_2_MINIMIZE,
    MOVE_EFFECT_EVA_UP_3,
    MOVE_EFFECT_ATK_SPEED_UP,
    MOVE_EFFECT_ATK_SP_ATK_UP,
    MOVE_EFFECT_DEF_UP_DOUBLE_ROLLOUT_POWER,
    MOVE_EFFECT_DEF_SP_DEF_UP,
    MOVE_EFFECT_SP_ATK_SP_DEF_UP

};
/*Stat increases*/
const u16 AttackRaiseList[] = {
    MOVE_EFFECT_ATK_UP,
    MOVE_EFFECT_ATK_UP_2,
    MOVE_EFFECT_ATK_UP_3,
    //MOVE_EFFECT_ATK_SPEED_UP, dragon dance is intentionally excluded
    MOVE_EFFECT_ATK_SP_ATK_UP
};

const u16 DefenseRaiseList[] = {
    MOVE_EFFECT_DEF_UP,
    MOVE_EFFECT_DEF_UP_2,
    MOVE_EFFECT_DEF_UP_3,
    MOVE_EFFECT_DEF_UP_DOUBLE_ROLLOUT_POWER,
    MOVE_EFFECT_DEF_SP_DEF_UP,
};

const u16 SpAtkRaiseList[] = {
    MOVE_EFFECT_SP_ATK_UP,
    MOVE_EFFECT_SP_ATK_UP_2,
    MOVE_EFFECT_SP_ATK_UP_3,
    MOVE_EFFECT_ATK_SP_ATK_UP,
};

const u16 SpDefRaiseList[] = {
    MOVE_EFFECT_SP_DEF_UP,
    MOVE_EFFECT_SP_DEF_UP_2,
    MOVE_EFFECT_SP_DEF_UP_3,
    MOVE_EFFECT_SP_ATK_SP_DEF_UP
};

const u16 SpeedRaiseList[] = {
    MOVE_EFFECT_SPEED_UP,
    MOVE_EFFECT_SPEED_UP_2,
    MOVE_EFFECT_SPEED_UP_3, //dragon dance is intentionally excluded
};

const u16 AccRaiseList[] = {
    MOVE_EFFECT_ACC_UP,
    MOVE_EFFECT_ACC_UP_2,
    MOVE_EFFECT_ACC_UP_3
};
const u16 EvaRaiseList[] = {
    MOVE_EFFECT_EVA_UP,
    MOVE_EFFECT_EVA_UP_2,
    MOVE_EFFECT_EVA_UP_2_MINIMIZE,
    MOVE_EFFECT_EVA_UP_3
};



/*Stat decreases*/
const u16 AttackDropList[] = {
    MOVE_EFFECT_ATK_DOWN,
    MOVE_EFFECT_ATK_DOWN_2,
    MOVE_EFFECT_ATK_DOWN_3,
    MOVE_EFFECT_ATK_SP_ATK_DOWN,
    MOVE_EFFECT_ATK_DEF_DOWN,
    MOVE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2,
    MOVE_EFFECT_VENOM_DRENCH
};

const u16 DefenseDropList[] = {
    MOVE_EFFECT_DEF_DOWN,
    MOVE_EFFECT_DEF_DOWN_2,
    MOVE_EFFECT_DEF_DOWN_3,
    MOVE_EFFECT_ATK_DEF_DOWN
};

const u16 SpAtkDropList[] = {
    MOVE_EFFECT_SP_ATK_DOWN,
    MOVE_EFFECT_SP_ATK_DOWN_2,
    MOVE_EFFECT_SP_ATK_DOWN_3,
    MOVE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2,
    MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER,
    MOVE_EFFECT_ATK_SP_ATK_DOWN,
    MOVE_EFFECT_VENOM_DRENCH
};

const u16 SpDefDropList[] = {
    MOVE_EFFECT_SP_DEF_DOWN,
    MOVE_EFFECT_SP_DEF_DOWN_2,
    MOVE_EFFECT_SP_DEF_DOWN_3
};

const u16 SpeedDropList[] = {
    MOVE_EFFECT_SPEED_DOWN,
    MOVE_EFFECT_SPEED_DOWN_2,
    MOVE_EFFECT_SPEED_DOWN_3,
    MOVE_EFFECT_VENOM_DRENCH
};

const u16 AccDropList[] = {
    MOVE_EFFECT_ACC_DOWN,
    MOVE_EFFECT_ACC_DOWN_2,
    MOVE_EFFECT_ACC_DOWN_3
};

const u16 EvaDropList[] = {
    MOVE_EFFECT_EVA_DOWN,
    MOVE_EFFECT_EVA_DOWN_2,
    MOVE_EFFECT_EVA_DOWN_3
};  

/*Other lists*/
const u16 MirrorMoveEffectList[] ={
    MOVE_EFFECT_STATUS_SLEEP,
    MOVE_EFFECT_ACC_DOWN,
    MOVE_EFFECT_ONE_HIT_KO,
    MOVE_EFFECT_STATUS_BADLY_POISON,
    MOVE_EFFECT_HIGH_CRITICAL,
    MOVE_EFFECT_STATUS_CONFUSE,
    MOVE_EFFECT_DEF_DOWN_2,
    MOVE_EFFECT_SPEED_DOWN_2,
    MOVE_EFFECT_SP_DEF_DOWN_2,
    MOVE_EFFECT_STATUS_PARALYZE,
    MOVE_EFFECT_STATUS_POISON,
    MOVE_EFFECT_CONFUSE_HIT,
    MOVE_EFFECT_ONE_HIT_KO,
    MOVE_EFFECT_STEAL_HELD_ITEM,
    MOVE_EFFECT_INFATUATE,
    MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION,
    MOVE_EFFECT_TORMENT,
    MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION,
    MOVE_EFFECT_SWITCH_HELD_ITEMS,
    MOVE_EFFECT_USER_ATK_DEF_DOWN_HIT,
    MOVE_EFFECT_SWITCH_ABILITIES,
    MOVE_EFFECT_TRANSFER_STATUS,
    MOVE_EFFECT_SWAP_ATK_SP_ATK_STAT_CHANGES,
    MOVE_EFFECT_SWAP_DEF_SP_DEF_STAT_CHANGES,
    MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING,
    MOVE_EFFECT_PRIORITY_1,
    MOVE_EFFECT_SWAP_STAT_CHANGES,
    MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER
};

const u16 SetupFirstTurnList[] = {
    MOVE_EFFECT_CONVERSION,
    MOVE_EFFECT_SET_REFLECT,
    MOVE_EFFECT_SET_LIGHT_SCREEN,
    MOVE_EFFECT_STATUS_PARALYZE,
    MOVE_EFFECT_STATUS_POISON,
    MOVE_EFFECT_STATUS_BADLY_POISON,
    MOVE_EFFECT_STATUS_BURN,
    MOVE_EFFECT_STATUS_SLEEP,
    MOVE_EFFECT_STATUS_CONFUSE,
    MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION,
    MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION,
    MOVE_EFFECT_STATUS_LEECH_SEED,
    MOVE_EFFECT_SET_SUBSTITUTE,
    MOVE_EFFECT_EVA_UP_2_MINIMIZE,
    MOVE_EFFECT_TORMENT,
    MOVE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL,
    MOVE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE,
    MOVE_EFFECT_DOUBLE_SPEED_3_TURNS,
    MOVE_EFFECT_PREVENT_CRITS,
    MOVE_EFFECT_GIVE_GROUND_IMMUNITY,
    MOVE_EFFECT_REMOVE_HAZARDS_SCREENS_EVA_DOWN,
    MOVE_EFFECT_WHIRLPOOL,
    MOVE_EFFECT_BIND_HIT
};

const u16 RiskyFlagList[] = {
    MOVE_EFFECT_STATUS_SLEEP,
    MOVE_EFFECT_HALVE_DEFENSE,
    MOVE_EFFECT_COPY_MOVE,
    MOVE_EFFECT_ONE_HIT_KO,
    MOVE_EFFECT_HIGH_CRITICAL,
    MOVE_EFFECT_HIGH_CRITICAL_POISON_HIT,
    MOVE_EFFECT_SLEEP_POISON_PARALYZE_HIT,
    MOVE_EFFECT_HIGH_CRITICAL_RAISE_SPEED_HIT,
    MOVE_EFFECT_HIGH_CRITICAL_POISON_HIT,
    MOVE_EFFECT_CALL_RANDOM_MOVE,
    MOVE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL,
    MOVE_EFFECT_COUNTER,
    MOVE_EFFECT_MIRROR_COAT,
    MOVE_EFFECT_METAL_BURST,
    MOVE_EFFECT_KO_MON_THAT_DEFEATED_USER,
    MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION,
    MOVE_EFFECT_INFATUATE,
    MOVE_EFFECT_RANDOM_POWER_MAYBE_HEAL,
    MOVE_EFFECT_RAISE_ALL_STATS_HIT,
    MOVE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP,
    MOVE_EFFECT_HIT_LAST_WHIFF_IF_HIT,
    MOVE_EFFECT_RANDOM_STAT_UP_2,
    MOVE_EFFECT_DOUBLE_POWER_IF_HIT,
    MOVE_EFFECT_USE_MOVE_FIRST,
    MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING
};


const u16 PrioritizeDamageFlagList[] = {
    MOVE_EFFECT_HALVE_DEFENSE,
    MOVE_EFFECT_RECOVER_DAMAGE_SLEEP,
    MOVE_EFFECT_CHARGE_TURN_HIGH_CRIT,
    MOVE_EFFECT_CHARGE_TURN_DEF_UP,
    MOVE_EFFECT_CHARGE_TURN_HIGH_CRIT_FLINCH,
    MOVE_EFFECT_CHARGE_TURN_SUN_SKIPS,
    MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP,
    MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP_RAIN_SKIPS,
    MOVE_EFFECT_RECHARGE_AFTER,
    MOVE_EFFECT_SPIT_UP,
    MOVE_EFFECT_HIT_LAST_WHIFF_IF_HIT,
    MOVE_EFFECT_USER_ATK_DEF_DOWN_HIT,
    MOVE_EFFECT_INCREASE_POWER_WITH_LESS_HP,
    MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING,
    MOVE_EFFECT_RECOIL_HALF,
    MOVE_EFFECT_RANDOM_TYPE_BASED_ON_IVS,
    MOVE_EFFECT_POWER_BASED_ON_LOW_SPEED,
    MOVE_EFFECT_NATURAL_GIFT,
    MOVE_EFFECT_JUDGMENT,
    MOVE_EFFECT_POWER_BASED_ON_FRIENDSHIP,
    MOVE_EFFECT_POWER_BASED_ON_LOW_FRIENDSHIP,
    MOVE_EFFECT_INCREASE_POWER_WITH_WEIGHT,
    MOVE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL,
    MOVE_EFFECT_LEVEL_DAMAGE_FLAT,
    MOVE_EFFECT_40_DAMAGE_FLAT,
    MOVE_EFFECT_10_DAMAGE_FLAT
};


const u16 BatonPassFlagList[] = {
    MOVE_EFFECT_ATK_UP_2,
    MOVE_EFFECT_ATK_SPEED_UP,
    MOVE_EFFECT_SP_ATK_SP_DEF_UP,
    MOVE_EFFECT_SP_ATK_UP_2
};


/*Flags' logic*/

/*Heavily penalize stupid choices that would fail*/
int BasicFlag (struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai){
    int moveScore = 0;
    struct BattleStruct *ctx = bsys->sp;
    /*Check for ai->defender type immunities.*/
    if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE){
        moveScore -= 10;
    }
    /*Check for wonder guard*/
    if(ai->attacker_move_effectiveness != MOVE_STATUS_FLAG_SUPER_EFFECTIVE &&
        ai->defender_ability == ABILITY_WONDER_GUARD && ai->attacker_ability != ABILITY_MOLD_BREAKER){
        moveScore -= 10;
    }
    //check for basic ability immunities, and score them low.
    if(ai->attacker_ability != ABILITY_MOLD_BREAKER){
        if(ai->attacker_move_type == TYPE_ELECTRIC && //electric
            (ai->defender_ability == ABILITY_VOLT_ABSORB ||
            ai->defender_ability == ABILITY_LIGHTNING_ROD ||
            ai->defender_ability == ABILITY_MOTOR_DRIVE) ){
            moveScore -= 10;
        }
        if(ai->attacker_move_type == TYPE_WATER && //water
            (ai->defender_ability == ABILITY_STORM_DRAIN ||
            ai->defender_ability == ABILITY_WATER_ABSORB ||
            ai->defender_ability == ABILITY_DRY_SKIN) ){
            moveScore -= 10;
        }
        if(ai->attacker_move_type == TYPE_FIRE && //fire
            (ai->defender_ability == ABILITY_FLASH_FIRE) ){
            moveScore -= 10;
        }
        if(ai->attacker_move_type == TYPE_GRASS && //grass
            (ai->defender_ability == ABILITY_SAP_SIPPER) ){
            moveScore -= 10;
        }
        if(ai->attacker_move_type == TYPE_GROUND && //ground
            (ai->defender_ability == ABILITY_LEVITATE ||
            ai->defender_ability == ABILITY_EARTH_EATER) ){
            moveScore -= 10;
        }
        if(IsMoveSoundBased(ai->attacker_move) && //sound based moves
            ai->defender_ability == ABILITY_SOUNDPROOF){ 
            moveScore -= 10;
        }
        //if(attack isnt super effective && ai->defender_ability == ABILITY_WONDERGUARD){
        //    moveScore -= 10;
        //}

    }//ability immunities


    //check for new gen type immunities

    /*Check for grass immunity to powder moves*/
    if((IsPowderMove(ai->attacker_move) || ai->attacker_move == MOVE_LEECH_SEED) && HasType(ctx, ai->defender, TYPE_GRASS) ){
        moveScore -= 10;
    }
    //ai->attacker_move == MOVE_RAGE_POWDER  rage powder is self-targetting, so will grass types never click rage powder?


    /*Check for dark immunity to prankster + status moves*/
    if((ai->defender_type_1 == TYPE_DARK || ai->defender_type_2 == TYPE_DARK) && 
        (ctx->moveTbl[ai->attacker_move].split == SPLIT_STATUS && ai->attacker_ability == ABILITY_PRANKSTER && ctx->moveTbl[ai->attacker_move].priority >= 0)
        && attacker != ai->defender){
        moveScore -= 10;
    }

    /*Check for immunity to paralysis*/
    if((ai->attacker_move_effect == MOVE_EFFECT_STATUS_PARALYZE) && ai->defender_immune_to_paralysis ){
        moveScore -= 10;
    }

    /*Check for immunity to burn*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_STATUS_BURN) && ai->defender_immune_to_burn){
        moveScore -= 10;
    }

    /*Check for immunity to poison/badly poison*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_STATUS_POISON ||
        ai->attacker_move_effect == MOVE_EFFECT_STATUS_BADLY_POISON) && ai->defender_immune_to_poison){
        moveScore -= 10;
    }

    /*Check for immunity to sleep*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_STATUS_SLEEP ||
        ai->attacker_move_effect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN) &&  ai->defender_immune_to_sleep){
        moveScore -= 10;
    }

    /*Check for immunity to confusion*/ 
    else if((ai->attacker_move_effect == MOVE_EFFECT_STATUS_CONFUSE ||
        ai->attacker_move_effect == MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION || //swagger
        ai->attacker_move_effect == MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION|| //flatter
        ai->attacker_move_effect == MOVE_EFFECT_CONFUSE_ALL_ADJACENT ) && //teeter dance, need to change for double battles
        (ctx->battlemon[ai->defender].condition2 & STATUS2_CONFUSION || 
        ctx->side_condition[ai->defender_side] & SIDE_STATUS_SAFEGUARD ||
        ai->defender_ability == ABILITY_OWN_TEMPO )){
        moveScore -= 10;
    }
    /*Check for immunity to infatuation*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_INFATUATE) && 
        (ctx->battlemon[ai->defender].condition2 & STATUS2_ATTRACT || 
        ai->defender_ability == ABILITY_OBLIVIOUS ||
        ctx->battlemon[ai->defender].sex == ctx->battlemon[ai->defender].sex ||
        ctx->battlemon[ai->defender].sex == POKEMON_GENDER_UNKNOWN)){
        moveScore -= 10;
    }

    /*Check for self-killing moves */

    else if((ai->attacker_move_effect == MOVE_EFFECT_HALVE_DEFENSE ) && 
    ((ai->defender_ability == ABILITY_DAMP && ai->attacker_ability != ABILITY_MOLD_BREAKER) ||
        (ai->living_attacking_members == 1 && ai->living_defending_members > 1))){
        moveScore -= 10; //prevents ai auto-losing the battle
    }
    else if((ai->attacker_move_effect == MOVE_EFFECT_HALVE_DEFENSE) &&
        (ai->living_attacking_members == 1 && ai->living_defending_members == 1)){
        moveScore = -1; //Ai will consider exploding if both parties have one Pokemon left
    }

    /*Handle nightmare*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_STATUS_NIGHTMARE && 
    (ctx->battlemon[ai->defender].condition2 & STATUS2_NIGHTMARE ||
        ai->defender_ability == ABILITY_MAGIC_GUARD)){
        moveScore -= 10;
    }
    else if(ai->attacker_move_effect == MOVE_EFFECT_STATUS_NIGHTMARE &&
        !(ctx->battlemon[ai->defender].condition & STATUS_SLEEP)){
        moveScore -= 8;
    }

    /*Handle dream eater*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_RECOVER_DAMAGE_SLEEP &&
        !(ctx->battlemon[ai->defender].condition & STATUS_SLEEP)){ //must be asleep
        moveScore -= 10;
    }

    /*Handle belly drum*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP &&
        (ai->attacker_hp * 100 / ai->attacker_max_hp < 51 )){
        moveScore -= 10;
    }

    /*Handle bad stat boosts*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_SPEED_UP_3 || //trick room + only speed boost status move
        ai->attacker_move_effect == MOVE_EFFECT_SPEED_UP_2 ||
        ai->attacker_move_effect == MOVE_EFFECT_SPEED_UP) &&
        (ctx->field_condition & FIELD_STATUS_TRICK_ROOM)){
        moveScore -= 10;
    }

    else if((IsInStatList(ai->attacker_move_effect, AccRaiseList, NELEMS(AccRaiseList)) ||
            IsInStatList(ai->attacker_move_effect, EvaRaiseList, NELEMS(EvaRaiseList))) &&
        (ai->attacker_ability == ABILITY_NO_GUARD)){
        moveScore -= 10;
    }

    /*Avoid increasing already maxed stats using status moves*/

    // attack
    else if((IsInStatList(ai->attacker_move_effect, AttackRaiseList, NELEMS(AttackRaiseList))) &&
        (ctx->battlemon[attacker].states[STAT_ATTACK] >= 12)){
        moveScore -= 10; 
    }
    // defense
    else if((IsInStatList(ai->attacker_move_effect, DefenseRaiseList, NELEMS(DefenseRaiseList))) &&
        (ctx->battlemon[attacker].states[STAT_DEFENSE] >= 12)){
        moveScore -= 10;
    }
    // sp. atk
    else if((IsInStatList(ai->attacker_move_effect, SpAtkRaiseList, NELEMS(SpAtkRaiseList))) &&
        (ctx->battlemon[attacker].states[STAT_SPATK] >= 12)){
        moveScore -= 10;
    }
    //sp.def
    else if((IsInStatList(ai->attacker_move_effect, SpDefRaiseList, NELEMS(SpDefRaiseList))) &&
        (ctx->battlemon[attacker].states[STAT_SPDEF] >= 12)){
        moveScore -= 10;
    }
    //speed
    else if((IsInStatList(ai->attacker_move_effect, SpeedRaiseList, NELEMS(SpeedRaiseList))) &&
        (ctx->battlemon[attacker].states[STAT_SPEED] >= 12)){
        moveScore -= 10;
    }

    /*Check for abilities preventing atk drop*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_ATK_DOWN_2 ||
        ai->attacker_move_effect == MOVE_EFFECT_ATK_DOWN) &&
        ai->defender_ability == ABILITY_HYPER_CUTTER ||
        ai->defender_ability == ABILITY_WHITE_SMOKE ||
        ai->defender_ability == ABILITY_CLEAR_BODY){
        moveScore -= 10;
    }
    else if((IsInStatList(ai->attacker_move_effect, AccDropList, NELEMS(AccDropList)) ||
            IsInStatList(ai->attacker_move_effect, EvaDropList, NELEMS(EvaDropList))) &&
        (ai->attacker_ability == ABILITY_NO_GUARD ||
        ai->defender_ability == ABILITY_NO_GUARD)){
        moveScore -= 10;
    }

    else if(IsInStatList(ai->attacker_move_effect, AccDropList, NELEMS(AccDropList)) &&
        (ai->defender_ability == ABILITY_KEEN_EYE)){
        moveScore -= 10;
    }

    /*Handle clear body & white smoke*/
    else if(DropsStatsAsStatus(ai->attacker_move_effect) &&
        ((ai->defender_ability == ABILITY_CLEAR_BODY ||
        ai->defender_ability == ABILITY_WHITE_SMOKE) &&
        ai->attacker_ability != ABILITY_MOLD_BREAKER)){
            moveScore -= 10;
    }

    /*Handle any status stat-dropping move when at +6 or -6.
    This is going to be a massive check.*/
    // attack
    else if((IsInStatList(ai->attacker_move_effect, AttackDropList, NELEMS(AttackDropList))) &&
        (ctx->battlemon[ai->defender].states[STAT_ATTACK] <= 0)){
        moveScore -= 10;
    }
    // defense
    else if((IsInStatList(ai->attacker_move_effect, DefenseDropList, NELEMS(DefenseDropList))) &&
        (ctx->battlemon[ai->defender].states[STAT_DEFENSE] <= 0)){
        moveScore -= 10;
    }
    // sp. atk
    else if((IsInStatList(ai->attacker_move_effect, SpAtkDropList, NELEMS(SpAtkDropList))) &&
        (ctx->battlemon[ai->defender].states[STAT_SPATK] <= 0)){
        moveScore -= 10;
    }
    //sp.def
    else if((IsInStatList(ai->attacker_move_effect, SpDefDropList, NELEMS(SpDefDropList))) &&
        (ctx->battlemon[ai->defender].states[STAT_SPDEF] <= 0)){
        moveScore -= 10;
    }
    //speed
    else if((IsInStatList(ai->attacker_move_effect, SpeedDropList, NELEMS(SpeedDropList))) &&
        (ctx->battlemon[ai->defender].states[STAT_SPEED] <= 0)){
        moveScore -= 10;
    }
    //evasion
    else if((IsInStatList(ai->attacker_move_effect, EvaDropList, NELEMS(EvaDropList))) &&
        (ctx->battlemon[ai->defender].states[STAT_EVASION] <= 0)){
        moveScore -= 10;
    }
    //accuracy
    else if((IsInStatList(ai->attacker_move_effect, AccDropList, NELEMS(AccDropList)) ) &&
        (ctx->battlemon[ai->defender].states[STAT_ACCURACY] <= 0)){
        moveScore -= 10;
    }

    /*Check for exclusively speed dropping moves in Trick Room*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SPEED_DOWN_2 && //string shot and scary face
        (ctx->field_condition & FIELD_STATUS_TRICK_ROOM)){
            moveScore -= 10;
    }

    /*Handle Haze, Psych Up, Heart Swap*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_RESET_STAT_CHANGES ||
    ai->attacker_move_effect == MOVE_EFFECT_SWAP_STAT_CHANGES ||
    ai->attacker_move_effect == MOVE_EFFECT_COPY_STAT_CHANGES) &&
        !ai->hasStatChange){
        moveScore -= 10;
    }

    /*Handle forced switching moves*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_FORCE_SWITCH && 
    (ai->living_defending_members == 1 || 
        (ai->defender_ability == ABILITY_SUCTION_CUPS && ai->attacker_ability != ABILITY_MOLD_BREAKER))){
        moveScore -= 10;
    }

    /*Handle recovery moves*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_RESTORE_HALF_HP || 
        ai->attacker_move_effect == MOVE_EFFECT_HEAL_HALF_MORE_IN_SUN ||
        ai->attacker_move_effect == MOVE_EFFECT_SWALLOW || 
        ai->attacker_move_effect == MOVE_EFFECT_HEAL_HALF_REMOVE_FLYING_TYPE) &&
        ai->attacker_hp == ai->attacker_max_hp){
        moveScore -= 8;
    }

    /*OHKO moves*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_ONE_HIT_KO) &&
        ((ai->defender_ability == ABILITY_STURDY && ai->attacker_ability != ABILITY_MOLD_BREAKER) || 
        ctx->battlemon[attacker].level < ctx->battlemon[ai->defender].level)){
            moveScore -= 10;
    }

    /*Misc persistent effects
    Focus Energy / Ingrain / Mud Sport / Water Sport / Camouflage /
    Power Trick / Lucky Chant / Aqua Ring / Magnet Rise*/
    else if((ctx->battlemon[ai->defender].condition2 & STATUS2_FOCUS_ENERGY  &&
    ai->attacker_move_effect == MOVE_EFFECT_CRIT_UP_2)||
    (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN  &&
        ai->attacker_move_effect == MOVE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL) ||
        (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_WATER_SPORT  &&
            ai->attacker_move_effect == MOVE_EFFECT_HALVE_ELECTRIC_DAMAGE) ||
            (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_MUD_SPORT &&
                ai->attacker_move_effect == MOVE_EFFECT_HALVE_FIRE_DAMAGE) ||
                (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_CAMOUFLAGE &&
                    ai->attacker_move_effect == MOVE_EFFECT_CAMOUFLAGE) ||
                    (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_POWER_TRICK &&
                        ai->attacker_move_effect == MOVE_EFFECT_SWAP_ATK_DEF) ||
                        (ctx->side_condition[ai->attacker_side] & SIDE_STATUS_LUCKY_CHANT &&
                            ai->attacker_move_effect == MOVE_EFFECT_PREVENT_CRITS) ||
                            (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_AQUA_RING &&
                                ai->attacker_move_effect == MOVE_EFFECT_RESTORE_HP_EVERY_TURN) ||
                                (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_MAGNET_RISE &&
                                    ai->attacker_move_effect == MOVE_EFFECT_GIVE_GROUND_IMMUNITY) ||
                                    ( (ai->attacker_type_2  == TYPE_FLYING ||ai->attacker_type_2  == TYPE_FLYING ||
                                        ai->attacker_ability == ABILITY_LEVITATE) &&
                                        ai->attacker_move_effect == MOVE_EFFECT_GIVE_GROUND_IMMUNITY)
                                
            ){
        moveScore -= 10;
    }
    /*Handle substitute*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SET_SUBSTITUTE && 
        (ctx->battlemon[attacker].condition2 & STATUS2_SUBSTITUTE || ai->attacker_hp*100/ai->attacker_max_hp < 26) ){
        moveScore -= 10;
    } //might have to consider status moves that are blocked by sub (unrelated)

    /*Handle leech seed*/
    else if(ai->attacker_move == MOVE_LEECH_SEED && 
        (ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE ||
        ai->defender_type_1 == TYPE_GRASS || ai->defender_type_2 == TYPE_GRASS ||
        ai->defender_ability == ABILITY_MAGIC_GUARD )){
        moveScore -= 10;
    }

    /*Handle disable & encore*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_DISABLE && 
        (ctx->battlemon[ai->defender].moveeffect.disabledTurns != 0) ){
        moveScore -= 8;
    }
    else if(ai->attacker_move_effect == MOVE_EFFECT_ENCORE && 
        (ctx->battlemon[ai->defender].moveeffect.encoredTurns != 0) ){
        moveScore -= 8;
    }

    /*Handle sleep-necessitated moves*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_USE_RANDOM_LEARNED_MOVE_SLEEP || //snore and sleep talk
        ai->attacker_move_effect == MOVE_EFFECT_DAMAGE_WHILE_ASLEEP) && 
        !(ctx->battlemon[attacker].condition & STATUS_SLEEP) ){
        moveScore -= 10;
    }

    /*Other miscellaneous persistent effects
    Lock On / Mean Look / Foresight / Perish Song / 
    Torment / Miracle Eye / Heal Block / Gastro Acid*/
    else if((ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_LOCK_ON  &&
    (ai->attacker_move_effect == MOVE_EFFECT_NEXT_ATTACK_ALWAYS_HITS ||
        ai->defender_ability == ABILITY_NO_GUARD || ai->attacker_ability == ABILITY_NO_GUARD))||
    (ctx->battlemon[ai->defender].condition2 & STATUS2_MEAN_LOOK  &&
        ai->attacker_move_effect == MOVE_EFFECT_PREVENT_ESCAPE) ||
        (ctx->battlemon[ai->defender].condition2 & STATUS2_FORESIGHT &&
            ai->attacker_move_effect == MOVE_EFFECT_IGNORE_EVASION_REMOVE_GHOST_IMMUNE) ||
            (ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG_ACTIVE &&
                ai->attacker_move_effect == MOVE_EFFECT_ALL_FAINT_3_TURNS) ||
                (ctx->battlemon[ai->defender].condition2 & STATUS2_TORMENT &&
                    ai->attacker_move_effect == MOVE_EFFECT_TORMENT) ||
                    (ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_MIRACLE_EYE &&
                        ai->attacker_move_effect == MOVE_EFFECT_IGNORE_EVATION_REMOVE_DARK_IMMUNE) ||
                        (ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_HEAL_BLOCK &&
                            ai->attacker_move_effect == MOVE_EFFECT_PREVENT_HEALING) ||
                            (ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_GASTRO_ACID &&
                                (ai->attacker_move_effect == MOVE_EFFECT_GASTRO_ACID ||ai->defender_ability == ABILITY_MULTITYPE ||
                                    ai->defender_ability == ABILITY_TRUANT || ai->defender_ability == ABILITY_SLOW_START ||
                                    ai->defender_ability == ABILITY_STENCH ||ai->defender_ability == ABILITY_RUN_AWAY || 
                                    ai->defender_ability == ABILITY_PICKUP ||ai->defender_ability == ABILITY_HONEY_GATHER))){
        moveScore -= 10;
    }

    /*Handle Curse*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_CURSE && 
        (ai->attacker_type_1 == TYPE_GHOST || ai->attacker_type_2 == TYPE_GHOST ||
        ctx->battlemon[ai->defender].condition2 == STATUS2_CURSE || ai->defender_ability == ABILITY_MAGIC_GUARD) )||
        (ai->attacker_move_effect == MOVE_EFFECT_CURSE && 
            (ai->attacker_type_1 != TYPE_GHOST || ai->attacker_type_2 == TYPE_GHOST) &&
            (ctx->battlemon[attacker].states[STAT_ATTACK] >= 12 || ctx->battlemon[attacker].states[STAT_DEFENSE] >= 12))){
        moveScore -= 10;
    }



    /*Handle hazards*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_STEALTH_ROCK && 
        (ctx->side_condition[ai->defender_side] & SIDE_STATUS_STEALTH_ROCK || ai->living_defending_members == 1 )) ||
        (ai->attacker_move_effect == MOVE_EFFECT_SET_SPIKES && 
            (ctx->scw[ai->defender_side].spikesLayers >= 3 || ai->living_defending_members == 1) )||
            (ai->attacker_move_effect == MOVE_EFFECT_TOXIC_SPIKES && 
                (ctx->scw[ai->defender_side].toxicSpikesLayers >= 2 || ai->living_defending_members == 1))){
        moveScore -= 10;
    }
    /*Handle weather*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_WEATHER_SANDSTORM && 
        (ctx->field_condition & WEATHER_SANDSTORM_ANY)) ||
        (ai->attacker_move_effect == MOVE_EFFECT_WEATHER_HAIL && 
            (ctx->field_condition & WEATHER_HAIL_ANY )) ||
            (ai->attacker_move_effect == MOVE_EFFECT_WEATHER_SNOW && 
                (ctx->field_condition & WEATHER_SNOW_ANY )) ||
            (ai->attacker_move_effect == MOVE_EFFECT_WEATHER_RAIN && 
                (ctx->field_condition & WEATHER_RAIN_ANY)) ||
                (ai->attacker_move_effect == MOVE_EFFECT_WEATHER_SUN && 
                    (ctx->field_condition & WEATHER_SUNNY_ANY))){
        moveScore -= 8;
    }
    else if((ai->attacker_move_effect == MOVE_EFFECT_WEATHER_RAIN && (ai->attacker_ability != ABILITY_SWIFT_SWIM && ai->attacker_ability != ABILITY_HYDRATION)) && 
        (!(ctx->battlemon[ai->defender].condition & STATUS_NONE) &&
        ctx->battlemon[ai->defender].ability == ABILITY_HYDRATION) ){
        moveScore -= 8;
    } //Basically don't cure opponent's status with rain dance

    //There's a non-sensical condition with sun and hydration in the doc -- skipping for now

    if((ai->attacker_move == MOVE_HAIL) && (ai->defender_ability == ABILITY_ICE_BODY)){
        moveScore -= 8;
    }
    if((ai->attacker_move == MOVE_HAIL) && (ai->attacker_ability == ABILITY_ICE_BODY)){
        moveScore += 8;
    }//Nice logic, gamefreak

    /*Handle doom desire and future sight*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_HIT_IN_3_TURNS) &&
        ctx->fcc.future_prediction_count[ai->defender] !=0 ){
        moveScore -= 12;
    }
    /*Handle baton pass, shed tail*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_PASS_STATS_AND_STATUS || ai->attacker_move_effect == MOVE_EFFECT_SHED_TAIL) &&
        ai->living_attacking_members == 1){
        moveScore -= 10;
    }
    /*Handle fake out after turn one*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_ALWAYS_FLINCH_FIRST_TURN_ONLY && ctx->battlemon[attacker].moveeffect.fakeOutCount != ctx->total_turn){
        moveScore -= 10;
    }
    /*Handle stockpile*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_STOCKPILE && ctx->battlemon[attacker].moveeffect.stockpileCount < 3){
        moveScore -= 10;
    }
    /*Spit up / Swallow*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_SPIT_UP || ai->attacker_move_effect == MOVE_EFFECT_SWALLOW) 
    && ctx->battlemon[attacker].moveeffect.stockpileCount == 0){
        moveScore -= 10;
    }
    /*Handle Memento*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2 && ((ai->defender_ability == ABILITY_WHITE_SMOKE ||
        ai->defender_ability == ABILITY_CLEAR_BODY) && ai->attacker_ability != ABILITY_MOLD_BREAKER) ||
        (ctx->battlemon[attacker].states[STAT_ATTACK] <= 0 ||ctx->battlemon[attacker].states[STAT_SPATK] <= 0)){
            moveScore -= 10;
    }

    /*Handle Helping Hand*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_BOOST_ALLY_POWER_BY_50_PERCENT && !(BattleTypeGet(bsys) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE))){
        moveScore -= 10;
    }
    /*Trick, Switcheroo, Knock Off*/ 
    //These checks from game freak make absolutely no sense. Knock off can still do boosted damage
    //against sticky hold targets, and you can still give your item to your opponent if they
    //dont have their own. I'm going to skip these for now.

    /*Handle imprison*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE && 
        (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_IMPRISONED ||
            ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_IMPRISONED )){
                moveScore -= 10;
    }

    /*Handle Refresh*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_HEAL_STATUS && 
        !(ctx->battlemon[ai->defender].condition & STATUS_POISON_ALL ||
            ctx->battlemon[ai->defender].condition & STATUS_PARALYSIS ||
            ctx->battlemon[ai->defender].condition & STATUS_BURN )){
                moveScore -= 10;
    }

    /*Handle moves that change more than one type of stat*/
    /*Tickle*/
    if(ai->attacker_move_effect == MOVE_EFFECT_ATK_DEF_DOWN && //tickle, in particular
        (ctx->battlemon[ai->defender].states[STAT_ATTACK] <= 0 )){
                moveScore -= 10;
    }
    if(ai->attacker_move_effect == MOVE_EFFECT_ATK_DEF_DOWN &&
        (ctx->battlemon[ai->defender].states[STAT_DEFENSE] <= 0)){
                moveScore -= 8;
    }// Punishes each stat if already dropped to the max
    // The clear body interactions are handled above

    /*Bulk Up*/
    if(ai->attacker_move_effect == MOVE_EFFECT_ATK_DEF_UP && 
        (ctx->battlemon[attacker].states[STAT_ATTACK] <= 0 )){
                moveScore -= 10;
    }
    if(ai->attacker_move_effect == MOVE_EFFECT_ATK_DEF_UP &&
        (ctx->battlemon[attacker].states[STAT_DEFENSE] <= 0)){
                moveScore -= 8;
    }// Punishes each stat if already raised to +6

    /*Calm Mind*/
    if(ai->attacker_move_effect == MOVE_EFFECT_SP_ATK_SP_DEF_UP && 
        (ctx->battlemon[attacker].states[STAT_SPATK] <= 0)){
                moveScore -= 10;
    }
    if(ai->attacker_move_effect == MOVE_EFFECT_SP_ATK_SP_DEF_UP &&
        (ctx->battlemon[attacker].states[STAT_SPDEF] <= 0)){
                moveScore -= 8;
    }// Punishes each stat if already raised to +6

    /*Dragon Dance*/
    if(ai->attacker_move_effect == MOVE_EFFECT_ATK_SPEED_UP && 
        (ctx->battlemon[attacker].states[STAT_ATTACK] <= 0 )){
                moveScore -= 10;
    }
    if(ai->attacker_move_effect == MOVE_EFFECT_ATK_SPEED_UP &&
        (ctx->battlemon[attacker].states[STAT_SPEED] <= 0)){
                moveScore -= 8;
    }// Punishes each stat if already raised to +6

    /*Tailwind*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_DOUBLE_SPEED_3_TURNS &&
    (ctx->side_condition[ai->attacker_side] & SIDE_STATUS_TAILWIND ||
        ctx->field_condition & FIELD_STATUS_TRICK_ROOM)){
        moveScore -= 10;
    }
    /*Gravity*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_GRAVITY &&
    (ctx->field_condition & FIELD_STATUS_GRAVITY)){
        moveScore -= 10;
    }
    /*Trick Room*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_TRICK_ROOM &&
    (ai->attacker_moves_first || ai->is_speed_tie)){
        moveScore -= 10;
    }
    /*Healing Wish and Lunar Dance*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON){
        moveScore = -20;
    }

    if((ai->attacker_move_effect == MOVE_EFFECT_FAINT_AND_FULL_HEAL_NEXT_MON)  &&
        (ai->damaged_attacking_mons > 0 || ai->statused_attacking_mons > 0)){
        moveScore -= 10;
    }
    if((ai->attacker_move_effect == MOVE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON) &&
        (ai->living_attacking_members == 1)){
        moveScore -= 10;//can penalize twice
    }

    /*Natural Gift*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_NATURAL_GIFT &&
        (!IS_ITEM_BERRY(ai->attacker_item))){
            moveScore -= 10;
    }

    /*Acupressure*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_RANDOM_STAT_UP_2 &&
        (ctx->battlemon[attacker].states[STAT_ATTACK] >= 12 ||
        ctx->battlemon[attacker].states[STAT_DEFENSE] >= 12 ||
        ctx->battlemon[attacker].states[STAT_SPATK] >= 12 ||
        ctx->battlemon[attacker].states[STAT_SPDEF] >= 12 ||
        ctx->battlemon[attacker].states[STAT_SPEED] >= 12 ||
        ctx->battlemon[attacker].states[STAT_EVASION] >= 12 ||
        ctx->battlemon[attacker].states[STAT_ACCURACY] >= 12)){
            moveScore -= 10;
    }

    /*Metal Burst*/
    if(ai->attacker_move_effect == MOVE_EFFECT_METAL_BURST &&
        (ai->defender_ability == ABILITY_STALL || ai->attacker_moves_first)){
            moveScore -= 10;
    }
    if(ai->attacker_move_effect == MOVE_EFFECT_METAL_BURST && ai->attacker_ability == ABILITY_STALL){
        moveScore += 10;
    }
    /*Embargo*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_PREVENT_ITEM_USE &&
        (ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_EMBARGO)){
            moveScore -= 10;
    }
    /*Fling*/
    /*TODO: immunities to fling effects like burn from flame orb on a fire type ai->defender*/
    
    if(ai->attacker_move_effect == MOVE_EFFECT_FLING &&
        (ai->attacker_ability == ABILITY_MULTITYPE || ai->attacker_item == ITEM_NONE || 
        ai->fling_power == 0)){
        moveScore -= 10;
    }
    /*Psycho Shift*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_TRANSFER_STATUS &&
        (ctx->battlemon[ai->defender].condition & STATUS_ALL || 
            ctx->side_condition[ai->defender_side] & SIDE_STATUS_SAFEGUARD ||
        (ctx->battlemon[attacker].condition & STATUS_BURN && ai->defender_immune_to_burn) ||
        (ctx->battlemon[attacker].condition & STATUS_POISON_ALL && ai->defender_immune_to_poison) ||
        (ctx->battlemon[attacker].condition & STATUS_PARALYSIS && ai->defender_immune_to_paralysis) )){
            moveScore -= 10;
    }
    /*Copycat*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_USE_LAST_USED_MOVE){
        if(ai->attacker_moves_first && ctx->total_turn == 0){

        }
        //if first turn of battle and user is fastest on the field, -10 score
    }
    /*Power Swap / Guard Swap*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SWAP_ATK_SP_ATK_STAT_CHANGES &&
        (ctx->battlemon[attacker].states[STAT_ATTACK] > ctx->battlemon[ai->defender].states[STAT_ATTACK] &&
            ctx->battlemon[attacker].states[STAT_SPATK] > ctx->battlemon[ai->defender].states[STAT_SPATK] )){
            moveScore -= 10;
    }
    else if(ai->attacker_move_effect == MOVE_EFFECT_SWAP_DEF_SP_DEF_STAT_CHANGES &&
        (ctx->battlemon[attacker].states[STAT_DEFENSE] > ctx->battlemon[ai->defender].states[STAT_DEFENSE] &&
            ctx->battlemon[attacker].states[STAT_SPDEF] > ctx->battlemon[ai->defender].states[STAT_SPDEF] )){
            moveScore -= 10;
    }

    /*Last Resort*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_FAIL_IF_NOT_USED_ALL_OTHER_MOVES &&
        (ctx->battlemon[attacker].moveeffect.lastResortCount < ai->attacker_moves_known - 1)){
            moveScore -= 10;
    }

    /*Worry Seed*/
    BOOL defender_knows_sleepy_moves = 0;
    for (int i = 0; i < 4; i++){
        if(ctx->battlemon[ai->defender].move[i] == MOVE_SLEEP_TALK ||
            ctx->battlemon[ai->defender].move[i] == MOVE_SNORE){
                defender_knows_sleepy_moves = 1;
        }
    }

    if(ai->attacker_move_effect == MOVE_EFFECT_SET_ABILITY_TO_INSOMNIA &&
    (ai->defender_ability == ABILITY_TRUANT || ai->defender_ability == ABILITY_INSOMNIA 
        ||ai->defender_ability == ABILITY_VITAL_SPIRIT ||ai->defender_ability == ABILITY_MULTITYPE ||
        (ctx->battlemon[ai->defender].condition & STATUS_SLEEP && defender_knows_sleepy_moves == 0))){
        moveScore -= 10;
    }

    /*Defog*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_REMOVE_HAZARDS_SCREENS_EVA_DOWN &&
        (ai->living_defending_members == 1 || 
            (ctx->scw[ai->attacker_side].toxicSpikesLayers == 0 &&
            ctx->scw[ai->attacker_side].spikesLayers == 0 &&
            !(ctx->side_condition[ai->defender_side] & SIDE_STATUS_STEALTH_ROCK)))){
        moveScore -= 10;
    }

    /*Captivate*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER &&
    (ctx->battlemon[ai->defender].sex == ctx->battlemon[ai->defender].sex ||
        ctx->battlemon[ai->defender].sex == POKEMON_GENDER_UNKNOWN ||
        ctx->battlemon[ai->defender].states[STAT_SPATK] == 0)){
        moveScore -= 10;
    }
    return moveScore;
}

/*A lot of this vanillal logic is really stupid and
should definitely be changed.*/
int EvaluateAttackFlag (struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai){
    int moveScore = 0;
    struct BattleStruct *ctx = bsys->sp;

    //damage *= (100 - (BattleRand(bw) % 16)); // 85-100% damage roll (for % calcs)
    //int CalcBaseDamage(void *bw, struct BattleStruct *sp, int moveno, u32 side_cond,
    //u32 field_cond, u16 pow, u8 type UNUSED, u8 attacker, u8 ai->defender, u8 critical)
    //int damage = CalcBaseDamage(bsys, ctx, ctx->current_move_index, ctx->side_condition[side], ctx->field_condition, 0, 0, ctx->attack_client, ctx->defence_client, 1) * -1;


    //int max_roll_attacker_damage = CalcBaseDamage(bsys, ctx, ai->attacker_move, ctx->side_condition[ai->defender_side],ctx->field_condition, ctx->moveTbl[ai->attacker_move].power, 0, attacker, ai->defender, 0);
    BOOL is_current_move_not_strongest = 0;
    for(int j = 0; j < ai->attacker_moves_known; j++){
        debug_printf("ai->attacker_max_roll_move_damages[%d] = %d\n", j, ai->attacker_max_roll_move_damages[j]);
        if ( i != j && ai->attacker_max_roll_move_damages[i] < ai->attacker_max_roll_move_damages[j]){
            is_current_move_not_strongest = 1;
        }
    }
    /*Check if the current move kills*/
    if (ai->attacker_max_roll_move_damages[i] >= ai->defender_hp){
        if(ai->attacker_move_effect == MOVE_EFFECT_HALVE_DEFENSE ){
            moveScore += 0;
        }
        //These should REALLY be re-vamped. This vanilla logic is awful
        else if(ai->attacker_move_effect == MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING || // sucker punch, future sight, focus punch
            ai->attacker_move_effect == MOVE_EFFECT_HIT_IN_3_TURNS ||
            ai->attacker_move_effect == MOVE_EFFECT_HIT_LAST_WHIFF_IF_HIT){
            if(BattleRand(bsys) % 3 == 0){
                moveScore += 4; 
            }
        }
        //Prioritize priority moves
        //Including valid fake out, vanilla does not check this
        else if(ctx->moveTbl[ai->attacker_move].priority > 0 ||
            (ai->attacker_move_effect == MOVE_EFFECT_ALWAYS_FLINCH_FIRST_TURN_ONLY &&
            ctx->battlemon[attacker].moveeffect.fakeOutCount == 0)){
            moveScore += 6;
        }
        else{
            moveScore += 4;
        }
    }
   
    /*Penalize a move that is weaker than others known*/
    else if(is_current_move_not_strongest != 0){
        moveScore -= 1;
    }
    /*Penalize random moves 80% of the time????*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING || // sucker punch, boom moves, focus punch
        ai->attacker_move_effect == MOVE_EFFECT_HALVE_DEFENSE ||
        ai->attacker_move_effect == MOVE_EFFECT_HIT_LAST_WHIFF_IF_HIT){
        if(BattleRand(bsys) % 10 < 8){
            moveScore -= 2;
        }
    }
    /*There's a check to see if a move is quad effective for
    a 31% chance to get +2, but there's not a need. We are already calculating 
    the move damage anyway. Adding in unnecessary RNG is not a good idea.*/

    return moveScore;
}

/*In the case of custom ai hacks, this should probably where edits happen.
A lot of this logic adds in probability.*/
int ExpertFlag (struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai){
    int moveScore = 0;
    struct BattleStruct *ctx = bsys->sp;

    /*Sleep-status*/
    if(ai->attacker_move_effect == MOVE_EFFECT_STATUS_SLEEP){
        if(BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_STATUS_NIGHTMARE, ai) ||
        BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_RECOVER_DAMAGE_SLEEP, ai)){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            }
        }
    }

    /*Poison should only be used if user/ai->defender is > 50% HP*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_STATUS_POISON ||
        ai->attacker_move_effect == MOVE_EFFECT_STATUS_BADLY_POISON) &&
        (ai->defender_percent_hp < 50 || ai->attacker_percent_hp < 50)){
            moveScore -= 1;
    }

    /*Paralysis*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_STATUS_PARALYZE){
        if(ai->defender_moves_first && !ai->trick_room_active){
            moveScore += 3;
        }
        if(ai->attacker_percent_hp <= 70){
            moveScore -= 1;
        }
    }

    /*Confusion inducing moves*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_STATUS_CONFUSE ||
        ai->attacker_move_effect == MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION ||
        ai->attacker_move_effect == MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION){//confuse ray, supersonic, etc.
        if(ai->attacker_percent_hp <= 70){
            if(BattleRand(bsys) % 2 < 1){
                moveScore -= 1;
            }
        }
        if(ai->defender_percent_hp <= 50){
            moveScore -= 1;
        }
        if(ai->defender_percent_hp <= 30){
            moveScore -= 1;
        }        
        if(ai->attacker_move_effect == MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION){//flatter-specific
            if(BattleRand(bsys) % 2 < 1){
                moveScore -= 1;
            }
        }
        if(ai->attacker_move_effect == MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION){//swagger-specific
            if(!ai->attacker_knows_psych_up){
                if(BattleRand(bsys) % 2 < 1){
                    moveScore += 1;
                }
            }
            else{
                if(ctx->battlemon[ai->defender].states[STAT_ATTACK] >= 3){
                    moveScore -= 5;
                }
                else if(ctx->total_turn == 0){
                    moveScore += 5;
                }
                else{
                    moveScore += 3;
                }
            }
        }
    }

    /*HP-draining moves*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT ||
        ai->attacker_move_effect == MOVE_EFFECT_RECOVER_THREE_QUARTERS_DAMAGE_DEALT) &&
        (ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE)){
                if(ai->attacker_move_effect == MOVE_EFFECT_RECOVER_DAMAGE_SLEEP){
                    moveScore -= 1;
                }
                else if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 3;
                }
    }
    else if(ai->attacker_move_effect == MOVE_EFFECT_RECOVER_DAMAGE_SLEEP){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
                moveScore -= 1;
        }
        else if(ctx->battlemon[ai->defender].condition & STATUS_SLEEP){
            if(BattleRand(bsys) % 10 < 8){
                moveScore += 3;
            }
        }
    }

    /*Explosion, Self-destruct, Memento*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_HALVE_DEFENSE ||
        ai->attacker_move_effect == MOVE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2){
            if(ctx->battlemon[ai->defender].states[STAT_EVASION] >= 7){
                moveScore -= 1;
            }
            if(ctx->battlemon[ai->defender].states[STAT_EVASION] >= 9){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 1;
                }
            }
            if(ai->attacker_percent_hp >= 80 && (ai->attacker_moves_first || ai->is_speed_tie)){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 3;
                }
            }
            else if(ai->attacker_percent_hp >= 80 && (ai->defender_moves_first || ai->is_speed_tie)){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 1;
                }
            }
            else if(ai->attacker_percent_hp > 50 ){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 1;
                }
            }
            else if(ai->attacker_percent_hp <= 50 && ai->attacker_percent_hp > 30 ){
                if(BattleRand(bsys) % 2 < 1){
                    moveScore -= 1;
                }
            }
            else if(ai->attacker_percent_hp <= 30){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 1;
                }
            }
    }
    /*Healing Wish, Lunar Dance*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON){
        if(ai->attacker_percent_hp >= 80 && ai->attacker_moves_first){
            if(BattleRand(bsys) % 4 < 1){
                moveScore -= 5;
            }
        }
        if(ai->attacker_percent_hp >= 50){
            if(BattleRand(bsys) % 10 < 8){
                moveScore -= 1;
            }
        }
        if(BattleRand(bsys) % 4 < 1){
            moveScore = 1;
            if(ai->attacker_has_super_effective_move != 1){
                if(BattleRand(bsys) % 4 < 1){
                    moveScore += 1;
                }
            }
            //if the current attacker doesn't have the move with the highest damage
            //it's more reasonable to sack oneself to restore that mon
            if(AttackerMonWithHighestDamage (bsys, attacker, ai) != ai->attacker_party_index){
                if(BattleRand(bsys) % 2 < 1){
                    moveScore += 1;
                }
            }
        }
        if(ai->attacker_percent_hp <= 30){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            }
        }
    }

    /*Mirror Move*/
    else if((ai->attacker_move_effect == MOVE_EFFECT_COPY_MOVE || ai->attacker_move_effect == MOVE_EFFECT_USE_LAST_USED_MOVE) && ai->attacker_moves_first){
        if(IsInMirrorMoveList(ai->attacker_move_effect)){
                if(BattleRand(bsys) % 2 < 1){
                    moveScore += 2;
                }
            }
        /*Copycat specific instructions*/
        else if(ai->attacker_move_effect == MOVE_EFFECT_USE_LAST_USED_MOVE){
            if(ai->defender_moves_first){
                if(BattleRand(bsys) % 10 < 7){
                    moveScore -= 1;
                }
            }
        }
        else{
            if(BattleRand(bsys) % 3 < 1){
                moveScore -= 1;
            }
        }



    }

    /*Stat boosting moves*/

    /*Attack*/
    else if(IsInStatList(ai->attacker_move_effect, AttackRaiseList, NELEMS(AttackRaiseList))) {

        if(ctx->battlemon[attacker].states[STAT_ATTACK] >= 9){
            if(BattleRand(bsys) % 10 < 6){
                moveScore -= 1;
            }
        }
        if(ai->attacker_percent_hp == 100){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 2;
            }
        }
        if(ai->attacker_percent_hp > 70){
            moveScore += 0;
        }
        else if(ai->attacker_percent_hp < 40){
            moveScore -=2;
        }
        else{
            if(BattleRand(bsys) % 10 < 8){
                moveScore -= 2;
            }
        }
    }

    /*Sp. Atk*/
    else if(IsInStatList(ai->attacker_move_effect, SpAtkRaiseList, NELEMS(SpAtkRaiseList))){
        if(ctx->battlemon[attacker].states[STAT_SPATK] >= 9){
            if(BattleRand(bsys) % 10 < 6){
                moveScore -= 1;
            }
        }
        if(ai->attacker_percent_hp == 100){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 2;
            }
        }
        if(ai->attacker_percent_hp > 70){
            moveScore += 0;
        }
        else if(ai->attacker_percent_hp < 40){
            moveScore -=2;
        }
        else{
            if(BattleRand(bsys) % 10 < 8){
                moveScore -= 2;
            }
        }
    }


    /*Defense*/
    else if(IsInStatList(ai->attacker_move_effect, DefenseRaiseList, NELEMS(DefenseRaiseList))) {

        if(ctx->battlemon[attacker].states[STAT_DEFENSE] >= 9){
            if(BattleRand(bsys) % 10 < 6){
                moveScore -= 1;
            }
        }
        if(ai->attacker_percent_hp == 100){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 2;
            }
        }
        if(ai->attacker_percent_hp > 70 && BattleRand(bsys) % 10 < 8){
            moveScore += 0;
        }
        else if(ai->attacker_percent_hp < 40){
            moveScore -=2;
        }
        else{
            if(ctx->moveTbl[ai->defender_last_used_move].split == SPLIT_STATUS){
                if(BattleRand(bsys) % 4 < 3){
                    moveScore -= 2;
                }
            }
            else if(ctx->moveTbl[ai->defender_last_used_move].split == SPLIT_PHYSICAL){
                if(BattleRand(bsys) % 2 < 1){
                    moveScore += 2; //gamefreak has this at -2, which makes zero sense
                }
            }
            else{
                moveScore -= 2;
            }
        }
    }

    /*Sp. Def*/
    else if(IsInStatList(ai->attacker_move_effect, SpDefRaiseList, NELEMS(SpDefRaiseList))) {

        if(ctx->battlemon[attacker].states[STAT_SPDEF] >= 9){
            if(BattleRand(bsys) % 10 < 6){
                moveScore -= 1;
            }
        }
        if(ai->attacker_percent_hp == 100){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 2;
            }
        }
        if(ai->attacker_percent_hp > 70 && BattleRand(bsys) % 10 < 8){
            moveScore += 0;
        }
        else if(ai->attacker_percent_hp < 40){
            moveScore -=2;
        }
        else{
            if(ctx->moveTbl[ai->defender_last_used_move].split == SPLIT_STATUS){
                if(BattleRand(bsys) % 4 < 3){
                    moveScore -= 2;
                }
            }
            else if(ctx->moveTbl[ai->defender_last_used_move].split == SPLIT_SPECIAL){
                if(BattleRand(bsys) % 2 < 1){
                    moveScore += 2; //gamefreak has this at -2, which makes zero sense
                }
            }
            else{
                moveScore -= 2;
            }
        }
    }

    /*Speed (exludes ddance)*/
    else if(IsInStatList(ai->attacker_move_effect, SpeedRaiseList, NELEMS(SpeedRaiseList))) {

        if(ai->attacker_moves_first){
            moveScore -=3;
        }
        if(ai->defender_moves_first && !ai->trick_room_active){
            if(BattleRand(bsys) % 10 < 7){
                moveScore += 3;
            }
        }
    }

    /*Accuracy*/
    else if(IsInStatList(ai->attacker_move_effect, AccRaiseList, NELEMS(AccRaiseList))) {

            if(ctx->battlemon[attacker].states[STAT_ACCURACY] >= 9){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 2;
                }
            }
            if(ai->attacker_percent_hp < 70){
                moveScore -= 2;
            }
    }

    /*Evasion up AND Accuracy down */
    else if((IsInStatList(ai->attacker_move_effect, AccDropList, NELEMS(AccDropList)) ||
    IsInStatList(ai->attacker_move_effect, EvaRaiseList, NELEMS(EvaRaiseList)))) {
        if(ai->attacker_percent_hp >= 90){
            if(BattleRand(bsys) % 10 < 6){
                moveScore += 3;
            }
        }
        if(ctx->battlemon[attacker].states[STAT_ACCURACY] >= 9){
            if(BattleRand(bsys) % 2 < 1){
                moveScore -= 1;
            }
        }
        if(ctx->battlemon[ai->defender].condition & STATUS_BAD_POISON){
            if(ai->defender_percent_hp > 50){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore += 3;
                }
            }
            if(ai->defender_percent_hp <= 50){
                if(BattleRand(bsys) % 2 < 1){
                    moveScore += 3;
                }
            }
            if(ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE){
                if(BattleRand(bsys) % 10 < 7){
                    moveScore += 3;
                }
            }
            if(ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN ||
                ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_AQUA_RING){
                    if(BattleRand(bsys) % 2 < 1){
                        moveScore += 2;
                    }
            }
            if(ctx->battlemon[ai->defender].condition2 == STATUS2_CURSE){
                if(BattleRand(bsys) % 10 < 7){
                    moveScore += 3;
                }
            }
            if(ai->attacker_percent_hp > 70){
                moveScore += 0;
            }
            else{
                if(ctx->battlemon[attacker].states[STAT_ACCURACY] == 6){
                    moveScore += 0;
                }
                if(ai->attacker_percent_hp < 40 || ai->defender_percent_hp < 40){
                    moveScore -=2;
                }
                else{
                    if(BattleRand(bsys) % 10 < 7){
                        moveScore -= 2;
                    }
                }
            }
        }
    }
    /*Dragon Dance (Quiver Dance would be good to add here later)*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_ATK_SPEED_UP){
        if(ai->defender_moves_first && !ai->trick_room_active){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            }
        }
        if(ai->attacker_percent_hp <= 50){
            if(BattleRand(bsys) % 10 < 7){
                moveScore -= 1;
            }
        }
    }

    /*Acupressure*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_RANDOM_STAT_UP_2){
        if(ai->attacker_percent_hp <= 50){
            moveScore -= 1;
        }
        else if(ai->attacker_percent_hp > 90){
            if(BattleRand(bsys) % 4 < 1){
                moveScore += 1;
            }
        }
        else{
            if(BattleRand(bsys) % 8 < 3){
                moveScore += 1;
            }
        }
    }

    /*Stat-reducing moves*/
    /*Attack*/
    else if(IsInStatList(ai->attacker_move_effect, AttackDropList, NELEMS(AttackDropList))){
        if(ctx->battlemon[ai->defender].states[STAT_ATTACK] != 6){
            moveScore -=1;
        }
        if(ai->attacker_percent_hp <= 90){
            moveScore -= 1;
        }
        if(ctx->battlemon[ai->defender].states[STAT_ATTACK] <= 3){
            if(BattleRand(bsys) % 10 < 8){
                moveScore -= 2;
            }
        }
        if(ai->defender_percent_hp <= 70){
            moveScore -= 2;
        }
        if(ctx->moveTbl[ai->defender_last_used_move].split != SPLIT_PHYSICAL){
            if(BattleRand(bsys) % 2 < 1){
                moveScore -= 2;
            }
        }


    }
    /*Sp. Atk*/
    else if(IsInStatList(ai->attacker_move_effect, SpAtkDropList, NELEMS(SpAtkDropList))){
        if(ctx->battlemon[ai->defender].states[STAT_SPATK] != 6){
            moveScore -=1;
        }
        if(ai->attacker_percent_hp <= 90){
            moveScore -= 1;
        }
        if(ctx->battlemon[ai->defender].states[STAT_SPATK] <= 3){
            if(BattleRand(bsys) % 10 < 8){
                moveScore -= 2;
            }
        }
        if(ai->defender_percent_hp <= 70){
            moveScore -= 2;
        }
        if(ctx->moveTbl[ai->defender_last_used_move].split != SPLIT_SPECIAL){
            if(BattleRand(bsys) % 2 < 1){
                moveScore -= 2;
            }
        }
    }
    /*Defense */
    else if(IsInStatList(ai->attacker_move_effect, DefenseDropList, NELEMS(DefenseDropList))){
            if(ai->attacker_percent_hp <= 70){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 2;
                }
            }
            if(ctx->battlemon[ai->defender].states[STAT_DEFENSE] <= 3){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 2;
                }
            }
            if (ai->defender_percent_hp < 70){
                moveScore -= 2;
            }
    }
    /*Sp. Def */
    else if(IsInStatList(ai->attacker_move_effect, SpDefDropList, NELEMS(SpDefDropList))){
            if(ai->attacker_percent_hp <= 70){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 2;
                }
            }
            if(ctx->battlemon[ai->defender].states[STAT_SPDEF] <= 3){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 2;
                }
            }
            if (ai->defender_percent_hp < 70){
                moveScore -= 2;
            }
    }
    /*Speed*/
    else if(IsInStatList(ai->attacker_move_effect, SpeedDropList, NELEMS(SpeedDropList))){
            if((ai->defender_moves_first || ai->is_speed_tie) && !ai->trick_room_active ){
                if(BattleRand(bsys) % 10 < 7){
                    moveScore += 2;
                }
            }
            if(ai->attacker_moves_first){
                moveScore -= 3;
            }
    }

    /*Evasion down*/
    else if(IsInStatList(ai->attacker_move_effect, EvaDropList, NELEMS(EvaDropList))){
            if(ai->attacker_percent_hp < 70){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 2;
                }
            }
            else if(ctx->battlemon[ai->defender].states[STAT_EVASION] <= 3){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 2;
                }
            }
            if (ai->defender_percent_hp < 70){
                moveScore -= 2;
            }
    }

    /*Moves ignoring accuracy*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_BYPASS_ACCURACY){
        if(ctx->battlemon[ai->defender].states[STAT_EVASION] >= 11 ||
            ctx->battlemon[attacker].states[STAT_ACCURACY] <= 1){
                if(BattleRand(bsys) % 10 < 6){
                    moveScore += 2;
                }
                if(BattleRand(bsys) % 10 < 4){
                    moveScore += 1;
                } 
        }
        if(ctx->battlemon[ai->defender].states[STAT_EVASION] >= 9 ||
            ctx->battlemon[attacker].states[STAT_ACCURACY] <= 3){
                moveScore += 1;
        }
    }

    /*Vital Throw*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_PRIORITY_NEG_1_BYPASS_ACCURACY){

        if(ai->defender_moves_first){
            moveScore += 0;
        }
        if(ai->attacker_percent_hp > 60){
            moveScore -= 0;
        }
        else if(ai->attacker_percent_hp < 40){
            if(BattleRand(bsys) % 10 < 8){
                moveScore -= 1;
            } 
        }
        else{
            if(BattleRand(bsys) % 10 < 2){
                moveScore -= 1;
            }
        }
    }

    /*Haze*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_RESET_STAT_CHANGES){
        if((ctx->battlemon[attacker].states[STAT_ATTACK] >= 9 ||
            ctx->battlemon[attacker].states[STAT_DEFENSE] >= 9 ||
            ctx->battlemon[attacker].states[STAT_SPATK] >= 9 ||
            ctx->battlemon[attacker].states[STAT_SPDEF] >= 9 ||
            ctx->battlemon[attacker].states[STAT_SPEED] >= 9 ||
            ctx->battlemon[attacker].states[STAT_EVASION] >= 9 ||
            ctx->battlemon[attacker].states[STAT_ACCURACY] >= 9) ||
            (ctx->battlemon[ai->defender].states[STAT_ATTACK] <= 3 ||
                ctx->battlemon[ai->defender].states[STAT_DEFENSE] <= 3 ||
                ctx->battlemon[ai->defender].states[STAT_SPATK] <= 3 ||
                ctx->battlemon[ai->defender].states[STAT_SPDEF] <= 3 ||
                ctx->battlemon[ai->defender].states[STAT_SPEED] <= 3 ||
                ctx->battlemon[ai->defender].states[STAT_EVASION] <= 3 ||
                ctx->battlemon[ai->defender].states[STAT_ACCURACY] <= 3)){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 3;
                }
        }
        else if((ctx->battlemon[attacker].states[STAT_ATTACK] <= 3 ||
            ctx->battlemon[attacker].states[STAT_DEFENSE] <= 3 ||
            ctx->battlemon[attacker].states[STAT_SPATK] <= 3 ||
            ctx->battlemon[attacker].states[STAT_SPDEF] <= 3 ||
            ctx->battlemon[attacker].states[STAT_SPEED] <= 3 ||
            ctx->battlemon[attacker].states[STAT_EVASION] <= 3 ||
            ctx->battlemon[attacker].states[STAT_ACCURACY] <= 3) ||
            (ctx->battlemon[ai->defender].states[STAT_ATTACK] >= 9 ||
                ctx->battlemon[ai->defender].states[STAT_DEFENSE] >= 9 ||
                ctx->battlemon[ai->defender].states[STAT_SPATK] >= 9 ||
                ctx->battlemon[ai->defender].states[STAT_SPDEF] >= 9 ||
                ctx->battlemon[ai->defender].states[STAT_SPEED] >= 9 ||
                ctx->battlemon[ai->defender].states[STAT_EVASION] >= 9 ||
                ctx->battlemon[ai->defender].states[STAT_ACCURACY] >= 9)){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore += 3;
                }
        }
        else{
            moveScore -= 1;
        }
    }

    /*Bide*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_BIDE){
        if(ai->attacker_percent_hp <= 90){
            moveScore -= 2;
        }
    }

    /*Switch forcing moves*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_FORCE_SWITCH){
        if(ai->defender_turns_on_field > 3){
            if(BattleRand(bsys) % 4 < 3){
                moveScore += 2;
            }
        }
        else if(ai->defender_has_hazards == 1){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 2;
            }
        }
        else if(BattlerHasStatBoostGreater(bsys, ai->defender, 9, ai)){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 2;
            }
        }
        else{
            moveScore -= 3;
        }
    }
    /*Conversion*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_CONVERSION){
        if(ai->attacker_percent_hp <= 90){
            moveScore -= 2;
        }
        if(ctx->total_turn != 0){
            if(BattleRand(bsys) % 4 < 3){
                moveScore -= 2;
            }
        }
    }

    /*Recovery Moves*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_RESTORE_HALF_HP ||
        ai->attacker_move_effect == MOVE_EFFECT_HEAL_HALF_MORE_IN_SUN ||
        ai->attacker_move_effect == MOVE_EFFECT_SWALLOW ||
        ai->attacker_move_effect == MOVE_EFFECT_HEAL_HALF_REMOVE_FLYING_TYPE){
            if(ai->attacker_percent_hp == 100){
                moveScore -= 3;
            }
            else if(ai->attacker_moves_first){
                moveScore -= 8;
            }
            else if(ai->attacker_percent_hp > 70){
                if(BattleRand(bsys) % 10 < 9){
                    moveScore -= 3;
                }
            }

            if(BattlerKnowsMove(bsys, ai->defender, MOVE_SNATCH, ai) == 0){
                if(BattleRand(bsys) % 10 < 9){
                    moveScore += 2;
                }
            }
            else{
                if(BattleRand(bsys) % 10 < 5){
                    moveScore += 2;
                }
            }
            if(ai->attacker_move_effect == MOVE_EFFECT_HEAL_HALF_MORE_IN_SUN){
                if(ctx->field_condition & WEATHER_SANDSTORM_ANY ||
                    ctx->field_condition & WEATHER_RAIN_ANY ||
                    ctx->field_condition & WEATHER_HAIL_ANY ||
                    ctx->field_condition & WEATHER_SNOW_ANY){
                        moveScore -= 2;
                }
            }
    }

    /*Rest*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_RECOVER_HEALTH_AND_SLEEP){
        if(ai->attacker_moves_first){
            if(ai->attacker_percent_hp == 100){
                if(BattleRand(bsys) % 10 <6){
                    moveScore -= 8;
                }
            }
            else if(ai->attacker_percent_hp > 50){
                moveScore -= 3;
            }
            else if(ai->attacker_percent_hp >= 40){
                if(BattleRand(bsys) % 10 < 7){
                    moveScore -= 3;
                }
            }
        }
        else if(ai->defender_moves_first){
            if(ai->attacker_percent_hp > 70){
                moveScore -= 3;
            }
            else if(ai->attacker_percent_hp >= 60){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 3;
                }
            }
        }
        if(BattlerKnowsMove(bsys, ai->defender, MOVE_SNATCH, ai) == 0){
            if(BattleRand(bsys) % 10 < 9){
                moveScore += 3;
            }
        }
        else{
            if(BattleRand(bsys) % 10 < 8){
                moveScore += 3;
            }
        }
    }

    /*Toxic & Leech Seed*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_STATUS_LEECH_SEED ||
        ai->attacker_move_effect == MOVE_EFFECT_STATUS_BADLY_POISON ){

            if(ai->attacker_has_damaging_move == 1){
                if(ai->attacker_percent_hp <= 50){
                    if(BattleRand(bsys) % 10 < 8){
                        moveScore -= 3;
                    }
                }
                if(ai->defender_percent_hp <= 50){
                    if(BattleRand(bsys) % 10 < 8){
                        moveScore -= 3;
                    }
                }
            }
            if(BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_SP_DEF_UP, ai) ||
            BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_SP_DEF_UP_2, ai) ||
            BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_SP_DEF_UP_3, ai) ||
            BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_DEF_UP, ai) ||
            BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_DEF_UP_2, ai) ||
            BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_DEF_UP_3, ai) ||
            BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_DEF_SP_DEF_UP, ai) ||
            BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_ATK_DEF_UP, ai) ||
            BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_SP_ATK_SP_DEF_SPEED_UP, ai)||
            BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_PROTECT, ai)){
                if(BattleRand(bsys) % 4 < 3){
                    moveScore += 2;
                }
            }
    }
    
    /*Light Screen*/
    //TODO: maybe change this logic
    else if(ai->attacker_move_effect == MOVE_EFFECT_SET_LIGHT_SCREEN){
        if(ai->attacker_percent_hp < 50){
            moveScore -= 2;
        }
        if(ai->attacker_percent_hp >= 90){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            }
        }
        if(ctx->moveTbl[ai->defender_last_used_move].split == SPLIT_SPECIAL){
            if(BattleRand(bsys) % 4 < 3){
                moveScore += 1;
            }
        }
    }
    /*Reflect*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SET_REFLECT){
        if(ai->attacker_percent_hp < 50){
            moveScore -= 2;
        }
        if(ai->attacker_percent_hp >= 90){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            }
        }
        if(ctx->moveTbl[ai->defender_last_used_move].split == SPLIT_PHYSICAL){
            if(BattleRand(bsys) % 4 < 3){
                moveScore += 1;
            }
        }
    }

    /*TODO: more logic here*/
    /*OH-KO moves*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_ONE_HIT_KO){
        if(BattleRand(bsys) % 4 < 1){
            moveScore += 1;
        }
    }

    /*Charge moves without invulnerability*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_CHARGE_TURN_HIGH_CRIT ||
        ai->attacker_move_effect == MOVE_EFFECT_CHARGE_TURN_DEF_UP ||
        ai->attacker_move_effect == MOVE_EFFECT_CHARGE_TURN_HIGH_CRIT_FLINCH ||
        ai->attacker_move_effect == MOVE_EFFECT_CHARGE_TURN_SUN_SKIPS ||
        ai->attacker_move_effect == MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP ||
        ai->attacker_move_effect == MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP_RAIN_SKIPS){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
                moveScore -= 2;
        }

        else if((ai->attacker_move_effect == MOVE_EFFECT_CHARGE_TURN_SUN_SKIPS &&
            ctx->field_condition & WEATHER_SUNNY_ANY) || 
            (ai->attacker_move_effect == MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP_RAIN_SKIPS &&
                ctx->field_condition & WEATHER_RAIN_ANY)){
                moveScore += 2;
        }
        else if(ai->attacker_item == ITEM_POWER_HERB){
            moveScore += 2;
        }
        if(BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_PROTECT, ai)){
            moveScore -= 2;
        }
        if(ai->attacker_percent_hp <= 38){
            moveScore -= 1;
        }

    }
    /*Charge moves without invulnerability*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_DIVE ||
        ai->attacker_move_effect == MOVE_EFFECT_FLY ||
        ai->attacker_move_effect == MOVE_EFFECT_BOUNCE ||
        ai->attacker_move_effect == MOVE_EFFECT_DIG ||
        ai->attacker_move_effect == MOVE_EFFECT_SHADOW_FORCE){
        if(ai->attacker_item == ITEM_POWER_HERB){
            moveScore += 2;
        }
        if(BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_PROTECT, ai) &&
            ai->attacker_move_effect != MOVE_EFFECT_SHADOW_FORCE){
            moveScore -= 1;
        }
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
                moveScore -= 1;
        }
        if(ctx->battlemon[ai->defender].condition & STATUS_BAD_POISON ||
            ctx->battlemon[ai->defender].condition2 == STATUS2_CURSE ||
            ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE){
                moveScore += 1;
        }
        if(((ctx->field_condition & WEATHER_HAIL_ANY)&& (ai->attacker_ability == ABILITY_SNOW_CLOAK || ai->attacker_ability == ABILITY_OVERCOAT || ai->attacker_ability == ABILITY_MAGIC_GUARD || HasType(ctx, attacker, TYPE_ICE)))||
        ((ctx->field_condition & WEATHER_SANDSTORM_ANY) && (ai->attacker_ability == ABILITY_SAND_VEIL || ai->attacker_ability == ABILITY_SAND_RUSH || ai->defender_ability == ABILITY_SAND_FORCE || ai->defender_ability == ABILITY_OVERCOAT || ai->defender_ability == ABILITY_MAGIC_GUARD ||  HasType(ctx, attacker, TYPE_GROUND) || HasType(ctx, attacker, TYPE_ROCK) ||HasType(ctx, attacker, TYPE_STEEL)))){
            if(BattleRand(bsys) % 10 < 7){
                moveScore += 1;
            }
        }
        if(ai->attacker_moves_first && ai->defender_last_move_effect != MOVE_EFFECT_BYPASS_ACCURACY){
            if(BattleRand(bsys) % 10 < 7){
                moveScore += 1;
            }
        }
    }  
    /*Fake Out*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_ALWAYS_FLINCH_FIRST_TURN_ONLY){
        moveScore += 2;
    }
    /*Spit Up*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SPIT_UP &&
        ctx->battlemon[attacker].moveeffect.stockpileCount >= 2){
            if(BattleRand(bsys) % 10 < 7){
                moveScore += 2;
            }
    }

    /*Super Fang*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_HALVE_HP && ai->defender_percent_hp <= 50){
        moveScore -=1;
    }
    
    /*Binding moves*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_BIND_HIT &&
    (ctx->battlemon[ai->defender].condition & STATUS_BAD_POISON ||
        ctx->battlemon[ai->defender].condition2 == STATUS2_CURSE ||
        ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG_ACTIVE ||
        ctx->battlemon[ai->defender].condition2 & STATUS2_ATTRACT)){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            }
    }

    /*High crit rate moves*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_HIGH_CRITICAL_POISON_HIT ||
        ai->attacker_move_effect == MOVE_EFFECT_HIGH_CRITICAL ||
        ai->attacker_move_effect == MOVE_EFFECT_SLEEP_POISON_PARALYZE_HIT ||
        ai->attacker_move_effect == MOVE_EFFECT_HIGH_CRITICAL_RAISE_SPEED_HIT ||
        ai->attacker_move_effect == MOVE_EFFECT_HIGH_CRITICAL_POISON_HIT){
            if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_SUPER_EFFECTIVE){
                if(BattleRand(bsys) % 2 < 1){
                    moveScore += 1;
                }
            }
            else if(ai->attacker_move_effectiveness != MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
                ai->attacker_move_effectiveness != MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
                    if(BattleRand(bsys) % 4 < 1){
                        moveScore += 1;
                    }
                }
    }

    /*Recoil moves*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_RECOIL_QUARTER ||
       ai->attacker_move_effect == MOVE_EFFECT_RECOIL_BURN_HIT ||
       ai->attacker_move_effect == MOVE_EFFECT_RECOIL_THIRD ||
       ai->attacker_move_effect == MOVE_EFFECT_RECOIL_HALF ||
       ai->attacker_move_effect == MOVE_EFFECT_RECOIL_PARALYZE_HIT){
        
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
                moveScore += 0;
            }
        else{
            if(ai->attacker_ability == ABILITY_ROCK_HEAD || ai->attacker_ability == ABILITY_MAGIC_GUARD){
                moveScore += 1;
            }
        }
    }

    /*Speed lowering moves*/

    else if(ai->attacker_move_effect == MOVE_EFFECT_LOWER_SPEED_HIT){
        //handle same as normal speed reducing moves
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
                moveScore += 0;
            }
        else{
            if((ai->attacker_moves_first || ai->is_speed_tie) &&!ai->trick_room_active ){
                if(BattleRand(bsys) % 10 < 7){
                    moveScore += 2;
                }
            }
            if(ai->defender_moves_first){
                moveScore -= 3;
            }
        }
    }

    /*Recharge moves*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_RECHARGE_AFTER){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
                moveScore -= 1;
            }
        if(ai->attacker_ability == ABILITY_TRUANT){
            if(BattleRand(bsys) % 10 < 7){
                moveScore += 1;
            }
        }
        if(ai->defender_moves_first && ai->attacker_percent_hp >= 60){
            moveScore -= 1;
        }
        if(ai->attacker_moves_first && ai->attacker_percent_hp > 40){
            moveScore -= 1;
        }
    }

    /*Disable*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_DISABLE){
        if(ai->defender_moves_first){
            moveScore += 0;
        }
        else if(ctx->moveTbl[ai->defender_last_used_move].split == SPLIT_STATUS){
            if(BattleRand(bsys) % 10 < 6){
                moveScore -= 1;
            }
        }
        else if(ctx->moveTbl[ai->defender_last_used_move].split != SPLIT_STATUS){
            moveScore += 1;
        }
    }

    /*Encore*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_DISABLE){
        if(ctx->battlemon[ai->defender].moveeffect.disabledTurns != 0){
            if(BattleRand(bsys) % 10 < 9){
                moveScore += 3;
            }
        }
        if(ai->defender_moves_first){
            moveScore -= 2;
        }
        /*TODO: there's more unknown logic in the ai doc*/
    }


    /*Counter, Mirror Coat*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_COUNTER ||
        ai->attacker_move_effect == MOVE_EFFECT_MIRROR_COAT){
        if(ctx->battlemon[ai->defender].condition & STATUS_SLEEP ||
            ctx->battlemon[ai->defender].condition2 & STATUS2_ATTRACT ||
            ctx->battlemon[ai->defender].condition2 & STATUS2_CONFUSION){
                moveScore -= 1;
            }
        else{
            if(ai->attacker_percent_hp <= 30){
                if(BattleRand(bsys) % 20 < 19){
                    moveScore -= 1;
                }
            }
            if(ai->attacker_percent_hp <= 50){
                if(BattleRand(bsys) % 10 < 6){
                    moveScore -= 1;
                }
            }
            if(BattlerKnowsMove(bsys, attacker, MOVE_MIRROR_COAT, ai) &&
                BattlerKnowsMove(bsys, attacker, MOVE_COUNTER, ai) ){
                moveScore += 4; /*TODO: decide if this is actually good to have...*/
            }
            if(ctx->moveTbl[ai->defender_last_used_move].split == SPLIT_STATUS){
                if(ctx->battlemon[ai->defender].moveeffect.tauntTurns != 0){
                    if(BattleRand(bsys) % 10 < 6){
                        moveScore += 1;
                    }
                }
                if((!BattlerHasMoveSplit (bsys, ai->defender, SPLIT_SPECIAL, ai) && ai->attacker_move_effect == MOVE_EFFECT_COUNTER) ||
                (!BattlerHasMoveSplit (bsys, ai->defender, SPLIT_PHYSICAL, ai) && ai->attacker_move_effect == MOVE_EFFECT_MIRROR_COAT)){
                    if(BattleRand(bsys) % 2 < 1){
                        moveScore += 4;
                    }
                }
            }
            if(ctx->moveTbl[ai->defender_last_used_move].split != SPLIT_STATUS){
                if(ctx->battlemon[ai->defender].moveeffect.tauntTurns != 0){
                    if(BattleRand(bsys) % 10 < 6){
                        moveScore += 1;
                    }
                }
                if(ctx->moveTbl[ai->defender_last_used_move].split == SPLIT_PHYSICAL && ai->attacker_move_effect == MOVE_EFFECT_MIRROR_COAT ||
                    ctx->moveTbl[ai->defender_last_used_move].split == SPLIT_SPECIAL && ai->attacker_move_effect == MOVE_EFFECT_COUNTER){
                    moveScore -= 1;
                }
                else if(ctx->moveTbl[ai->defender_last_used_move].split == SPLIT_PHYSICAL && ai->attacker_move_effect == MOVE_EFFECT_COUNTER||
                    ctx->moveTbl[ai->defender_last_used_move].split == SPLIT_SPECIAL && ai->attacker_move_effect == MOVE_EFFECT_MIRROR_COAT){
                        if(BattleRand(bsys) % 10 < 6){
                            moveScore += 1;
                        }
                }
            }
        }
    }

    /*Metal Burst*/
    /*TODO: this logic can definitely be improved*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_METAL_BURST){
        if(ctx->battlemon[ai->defender].condition & STATUS_SLEEP ||
            ctx->battlemon[ai->defender].condition2 & STATUS2_ATTRACT ||
            ctx->battlemon[ai->defender].condition2 & STATUS2_CONFUSION ||
            BattlerKnowsMove(bsys, ai->defender, MOVE_AVALANCHE, ai) || 
            BattlerKnowsMove(bsys, ai->defender, MOVE_REVENGE, ai) ||
            BattlerKnowsMove(bsys, ai->defender, MOVE_FOCUS_PUNCH, ai) ||
            BattlerKnowsMove(bsys, ai->defender, MOVE_VITAL_THROW, ai)){
                moveScore -= 1;
        }
        else{
            if(ai->attacker_percent_hp <= 30){
                if(BattleRand(bsys) % 20 < 19){
                    moveScore -= 1;
                }
            }
            if(ai->attacker_percent_hp <= 50){
                if(BattleRand(bsys) % 10 < 6){
                    moveScore -= 1;
                }
            }
            else if(ai->attacker_percent_hp > 50){
                if(BattleRand(bsys) % 4 < 1){
                    moveScore += 1;
                }
            }
            if(ctx->moveTbl[ai->defender_last_used_move].split != SPLIT_STATUS){
                if(ctx->battlemon[ai->defender].moveeffect.tauntTurns == 0){
                    if(BattleRand(bsys) % 10 < 6){
                        moveScore += 1;
                    }
                }
            }
            if(ctx->battlemon[ai->defender].moveeffect.tauntTurns == 0){
                if(BattleRand(bsys) % 10 < 6){
                    moveScore += 1;
                }
            }
        }
    }

    /*Pain Split*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_AVERAGE_HP){
        if(ai->defender_percent_hp < 80){
            moveScore -= 1;
        }
        else if(ai->defender_moves_first){
            if(ai->attacker_percent_hp > 60){
                moveScore -= 1;
            }
            else{
                moveScore += 1;
            }
        }
        else if(ai->attacker_percent_hp > 40){
            moveScore -= 1;
        }
        else{
            moveScore -= 1;
        }
    }

    /*Nightmare*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_STATUS_NIGHTMARE){
        moveScore += 2;
    }

    /*Lock On & Mind Reader*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_NEXT_ATTACK_ALWAYS_HITS){
        if(BattleRand(bsys) % 2 < 1){
            moveScore += 2;
        }
    }

    /*Sleep Talk*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_USE_RANDOM_LEARNED_MOVE_SLEEP){
        if(ctx->battlemon[attacker].condition & STATUS_SLEEP){
            moveScore += 10;
        }
        else{
            moveScore -= 5;
        }
    }

    /*Reversal & Flail*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_INCREASE_POWER_WITH_LESS_HP){
        if(ai->defender_moves_first){
            if(ai->attacker_percent_hp > 60){
                moveScore -= 1;
            }
            else if(ai->attacker_percent_hp > 40){
                moveScore += 0;
            }
            else{
                if(BattleRand(bsys) % 10 < 6){
                    moveScore += 1;
                }
            }
        }
        else if(ai->attacker_moves_first){
            if(ai->attacker_percent_hp > 33){
                moveScore -= 1;
            }
            else if(ai->attacker_percent_hp > 20){
                moveScore += 0;
            }
            else if(ai->attacker_percent_hp >= 8){
                if(BattleRand(bsys) % 10 < 6){
                    moveScore += 1;
                }
            }
            else{
                if(BattleRand(bsys) % 10 < 6){
                    moveScore += 2;
                }
                else{
                    moveScore +=1;
                }
            }
        }
    }

    /*Heal Bell & Aromatherapy*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_CURE_PARTY_STATUS){
        if(ai->statused_attacking_mons == 0){
            moveScore -= 5;
        }
    }

    /*Thief & Covet*/
    /*TODO: need list of encouraged effects*/

    /*Curse*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_CURSE){
        if(HasType(ctx, attacker, TYPE_GHOST)){
            if(ai->attacker_percent_hp > 80){
                moveScore += 0;
            }
            else{
                moveScore -= 1; 
            }
        }
        else{
            if(ctx->battlemon[attacker].states[STAT_DEFENSE] >= 9){
                moveScore += 0;
            }
            else{
                if(BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_POWER_BASED_ON_LOW_SPEED, ai) ||
                BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_TRICK_ROOM, ai)){
                    if(BattleRand(bsys) % 10 < 9){
                        moveScore += 1;
                    }
                }
                if(BattleRand(bsys) % 2 < 1){
                    moveScore += 1;
                }
                if(ctx->battlemon[attacker].states[STAT_DEFENSE] <= 7){
                    if(BattleRand(bsys) % 2 < 1){
                        moveScore += 1;
                    }
                }
                if(ctx->battlemon[attacker].states[STAT_DEFENSE] <= 6){
                    if(BattleRand(bsys) % 2 < 1){
                        moveScore += 1;
                    }
                }
            }
        }
    }

    /*Protect / Detect */
    else if(ai->attacker_move_effect == MOVE_EFFECT_PROTECT){
        if(BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_SHADOW_FORCE, ai) ||
        BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_REMOVE_PROTECT, ai)){
            if(BattleRand(bsys) % 2 < 1){
                moveScore -= 2;
            }
        }
        if(ctx->battlemon[attacker].moveeffect.protectSuccessTurns > 1){
            moveScore -= 2;
        }
        else{
            if(ctx->battlemon[attacker].condition & STATUS_BAD_POISON ||
                ctx->battlemon[attacker].condition2 == STATUS2_CURSE ||
                ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE ||
                ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG_ACTIVE ||
                ctx->battlemon[attacker].condition2 & STATUS2_ATTRACT ||
                ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_YAWN_COUNTER){
                if(!(ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_LOCK_ON)){
                    moveScore -= 2;
                }
            }
            else if(ctx->battlemon[ai->defender].condition & STATUS_BAD_POISON ||
                ctx->battlemon[ai->defender].condition2 == STATUS2_CURSE ||
                ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE ||
                ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG_ACTIVE ||
                ctx->battlemon[ai->defender].condition2 & STATUS2_ATTRACT ||
                ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_YAWN_COUNTER){
                    moveScore += 2;
            }
            else if(BattleTypeGet(bsys) & BATTLE_TYPE_DOUBLE){
                moveScore += 2;
            }
            else if(ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_LOCK_ON){
                moveScore += 2; 
            }
            else{
                if(BattleRand(bsys) % 3 < 1){
                    moveScore += 2;
                }
            }
            if(ctx->battlemon[attacker].moveeffect.protectSuccessTurns == 1){
                moveScore -= 1;
                if(BattleRand(bsys) % 2 < 1){
                    moveScore -= 1;
                }
            }
        }        
    }

    /*Spikes*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SET_SPIKES){
        if(BattleRand(bsys) % 2 < 1){
            moveScore += 0;
        }
        else{
            moveScore += 1;
        }
        if(BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_FORCE_SWITCH, ai)){
            if(BattleRand(bsys) % 4 < 3){
                moveScore += 1;
            }
        }
    }

    /*Foresight & Odor Sleuth*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_IGNORE_EVASION_REMOVE_GHOST_IMMUNE){
        if(HasType(ctx, ai->defender, TYPE_GHOST)){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 2;
            }
        }
        else if(ctx->battlemon[ai->defender].states[STAT_EVASION] >= 9){
            if(BattleRand(bsys) % 10 < 7){
                moveScore += 2;
            }
        }
        else{
            moveScore -= 2;
        }
    }

    /*Miracle Eye*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_IGNORE_EVATION_REMOVE_DARK_IMMUNE){
        if(HasType(ctx, ai->defender, TYPE_DARK)){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 2;
            }
        }
        else if(ctx->battlemon[ai->defender].states[STAT_EVASION] >= 9){
            if(BattleRand(bsys) % 10 < 7){
                moveScore += 2;
            }
        }
        else{
            moveScore -= 2;
        }
    }

    /*Endure*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SURVIVE_WITH_1_HP){
        if(ai->attacker_percent_hp < 4){
            moveScore -= 1;
        }
        else if(ai->attacker_percent_hp < 35){
            if(BattleRand(bsys) % 10 < 7){
                moveScore += 1;
            }   
        }
    }

    /*Substitute*/
    /*This logic seems to create a discrete distribution 
    of probability depending on the user's HP*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SET_SUBSTITUTE){
        if(BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_HIT_LAST_WHIFF_IF_HIT, ai)){
            if(BattleRand(bsys) % 10 < 6){
                moveScore += 1;
            }   
        }
        if(ai->attacker_percent_hp <= 90){
            if(ai->attacker_percent_hp <= 50){
                for(int i = 0; i < 3; i++){
                    if(BattleRand(bsys) % 10 < 6){
                        moveScore -= 1;
                    } 
                }
            }
            else if(ai->attacker_percent_hp > 50){
                if(BattleRand(bsys) % 10 < 6){
                    moveScore -= 1;
                } 
                if(ai->attacker_percent_hp > 70){
                    if(BattleRand(bsys) % 10 < 6){
                        moveScore -= 1;
                    } 
                }
            }
        }
        //TODO: This logic that gamefreak wrote sucks, so I am modifying it. Check it in game later.
        if(ai->attacker_moves_first){
            if(ctx->moveTbl[ai->defender_last_used_move].split == SPLIT_STATUS){
                if(ai->defender_last_move_effect == MOVE_EFFECT_STATUS_PARALYZE ||
                    ai->defender_last_move_effect == MOVE_EFFECT_STATUS_POISON ||
                    ai->defender_last_move_effect == MOVE_EFFECT_STATUS_BADLY_POISON ||
                    ai->defender_last_move_effect == MOVE_EFFECT_STATUS_SLEEP ||
                    ai->defender_last_move_effect == MOVE_EFFECT_STATUS_BURN){
                    if(BattleRand(bsys) % 10 < 6){
                        moveScore += 1;
                    } 
                }
                else if(ai->defender_last_move_effect == MOVE_EFFECT_STATUS_CONFUSE ||
                    ai->defender_last_move_effect == MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION ||
                    ai->defender_last_move_effect == MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION ){
                    if(BattleRand(bsys) % 10 < 6){
                        moveScore += 1;
                    } 
                }
                else if(ai->defender_last_move_effect == MOVE_EFFECT_STATUS_LEECH_SEED){
                    if(BattleRand(bsys) % 10 < 6){
                        moveScore += 1;
                    } 
                }
            }
        }
    }

    /*Baton Pass*/
    /*This also has its own flag*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_PASS_STATS_AND_STATUS){
        if(BattlerHasStatBoostGreater(bsys, attacker, 9, ai)){//+3
            if(ai->defender_moves_first && ai->attacker_percent_hp <= 70){
                if(BattleRand(bsys) % 10 < 7){
                    moveScore += 2;
                } 
            }
            else if(ai->attacker_moves_first && ai->attacker_percent_hp <= 60){
                if(BattleRand(bsys) % 10 < 7){
                    moveScore += 2;
                } 
            }
        }
        else if(BattlerHasStatBoostLesser(bsys, attacker, 8, ai) ){
            if(ai->defender_moves_first && ai->attacker_percent_hp <= 70){
                moveScore -= 2;
            }
            else if(ai->attacker_moves_first && ai->attacker_percent_hp <= 60){
                moveScore -= 2;
            }
        }
        else{
            moveScore -= 2;
        }
    }

    /*Pursuit*/
    //TODO: once again, really weird ai logic from gamefreak
    else if(ai->attacker_move_effect == MOVE_EFFECT_HIT_BEFORE_SWITCH){
        if(ai->attacker_turns_on_field == 0){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            } 
        }
        else if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_SUPER_EFFECTIVE){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            } 
        }
        if(BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_SWITCH_HIT, ai)){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            } 
        }
    }

    /*Rain Dance*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_WEATHER_RAIN){
        if(ai->defender_moves_first && ai->attacker_ability == ABILITY_SWIFT_SWIM && !ai->trick_room_active){
            moveScore += 1;
        }
        else{
            if(ai->attacker_percent_hp < 40){
                moveScore -= 1;
            }
            else if(ctx->field_condition & WEATHER_HAIL_ANY ||
                ctx->field_condition & WEATHER_SNOW_ANY ||
                ctx->field_condition & WEATHER_SANDSTORM_ANY ||
                ctx->field_condition & WEATHER_RAIN_ANY){
                    moveScore += 1;
            }
            else if(ai->attacker_ability == ABILITY_RAIN_DISH ||
                    (ai->attacker_ability == ABILITY_HYDRATION && !(ctx->battlemon[attacker].condition & STATUS_NONE))){
                    moveScore += 1;
            }
        }
    }
    
    /*Sunny Day*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_WEATHER_SUN){
        if(ai->defender_moves_first && ai->attacker_ability == ABILITY_CHLOROPHYLL && !ai->trick_room_active){
            moveScore += 1;
        }
        else{
            if(ai->attacker_percent_hp < 40){
                moveScore -= 1;
            }
            else if(ctx->field_condition & WEATHER_HAIL_ANY ||
                ctx->field_condition & WEATHER_SNOW_ANY ||
                ctx->field_condition & WEATHER_SANDSTORM_ANY ||
                ctx->field_condition & WEATHER_SUNNY_ANY){
                    moveScore += 1;
            }
            else if(ai->attacker_ability == ABILITY_FLOWER_GIFT ||
                    (ai->attacker_ability == ABILITY_LEAF_GUARD && (ctx->battlemon[attacker].condition & STATUS_NONE))){
                    moveScore += 1;
            }
        }
    }

    /*Hail & Snow*/  
    else if(ai->attacker_move_effect == MOVE_EFFECT_WEATHER_SNOW ||
        ai->attacker_move_effect == MOVE_EFFECT_WEATHER_HAIL){
        if(ai->defender_moves_first && ai->attacker_ability == ABILITY_SLUSH_RUSH && !ai->trick_room_active){
            moveScore += 1;
        }
        else{
            if(ai->attacker_percent_hp < 40){
                moveScore -= 1;
            }
            else if(BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_BLIZZARD, ai)){
                moveScore += 2;
            }
            else if(ctx->field_condition & WEATHER_RAIN_ANY ||
                ctx->field_condition & WEATHER_SANDSTORM_ANY ||
                ctx->field_condition & WEATHER_SUNNY_ANY){
                    moveScore += 1;
            }
            
            else if(ai->attacker_ability == ABILITY_ICE_BODY){
                    moveScore += 2;
            }
        }
    }

    /*Gravity*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_GRAVITY){
        if(ai->defender_ability == ABILITY_LEVITATE ||
            ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_MAGNET_RISE || 
            HasType(ctx, ai->defender, TYPE_FLYING)){
            if(BattleRand(bsys) % 4 < 3){
                moveScore += 1;
            }
        }
        else if(ai->attacker_percent_hp >= 60){
            if(BattleRand(bsys) % 10 < 4){
                moveScore += 1;
            }
        }

    }

    /*Tailwind*/
    /*TODO: This logic sucks, definitely change for custom hacks*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_DOUBLE_SPEED_3_TURNS){
        if(BattleRand(bsys) % 4 < 1){
            moveScore += 0;
        }
        else{
            if(ai->attacker_moves_first){
                moveScore -= 1;
            }
            else if(ai->attacker_percent_hp <= 30){
                moveScore -= 1;
            }
            else if(ai->attacker_percent_hp > 75){
                moveScore += 1;
            }
            else{
                if(BattleRand(bsys) % 4 < 3){
                    moveScore += 1;
                }
            }
        }
    }

    /*Belly Drum*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP){
        if(ai->attacker_percent_hp < 90){
            moveScore -= 2;
        }
    }

    /*Psych Up*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_COPY_STAT_CHANGES){
        if(BattlerHasStatBoostGreater(bsys, ai->defender, 9, ai)){//greater than +3
            if(ctx->battlemon[attacker].states[STAT_EVASION] <= 6){//+0 or lower
                moveScore += 2;
            }
            else if(ctx->battlemon[attacker].states[STAT_ATTACK] <= 6 ||
                ctx->battlemon[attacker].states[STAT_DEFENSE] <= 6 ||
                ctx->battlemon[attacker].states[STAT_SPATK] <= 6 ||
                ctx->battlemon[attacker].states[STAT_SPDEF] <= 6){
                    moveScore += 1;
                }
            else{
                if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 2;
                }
            }
        }
        else{
            moveScore -= 2;
        }
    }

    /*Facade*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_DOUBLE_POWER_WHEN_STATUSED){
        if(ctx->battlemon[attacker].condition & STATUS_PARALYSIS ||
            ctx->battlemon[attacker].condition & STATUS_BURN ||
            ctx->battlemon[attacker].condition & STATUS_POISON_ALL){
                moveScore += 1;
            }
    }

    /*Focus Punch*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_HIT_LAST_WHIFF_IF_HIT){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
                moveScore -= 1;
        }
        else if(ctx->battlemon[attacker].condition2 & STATUS2_SUBSTITUTE){
            moveScore += 5;
        }
        else if(ctx->battlemon[ai->defender].condition & STATUS_SLEEP){
            moveScore += 1;
        }
        else if(ctx->battlemon[ai->defender].condition2 & STATUS2_CONFUSION ||
            ctx->battlemon[ai->defender].condition2 & STATUS2_ATTRACT){
            if(BattleRand(bsys) % 10 < 6){
                moveScore += 1;
            }
        }
        else if(ai->attacker_turns_on_field != 0){
            if(BattleRand(bsys) % 5 < 1){
                moveScore += 1;
            }
        }
    }

    /*Smelling Salt*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_DOUBLE_POWER_AND_CURE_PARALYSIS){
        if(ctx->battlemon[ai->defender].condition & STATUS_PARALYSIS){
            moveScore += 2;
        }
    }
    
    /*Wake-Up Slap*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_DOUBLE_POWER_HEAL_SLEEP){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
            moveScore -= 1;
        }
        else if(ctx->battlemon[ai->defender].condition & STATUS_SLEEP){
            moveScore += 2;
        }
    }

    /*Trick & Switcheroo*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SWITCH_HELD_ITEMS){
        if(ItemIsDisruptive(ai->attacker_item, ai)){
            if(ItemIsBadToTrade(ai->defender_item, ai) ){
                moveScore -= 3;
            }
            else {
                moveScore += 5;
            }
        }
        else if(ai->attacker_item == ITEM_TOXIC_ORB){
            if(ItemIsBadToTrade(ai->defender_item, ai) ){
                moveScore -= 3;
            }
            else{
                if(!(ctx->battlemon[ai->defender].condition & STATUS_NONE) ||
                ctx->side_condition[ai->defender_side] & SIDE_STATUS_SAFEGUARD ||
                ai->defender_immune_to_poison || ai->defender_ability == ABILITY_KLUTZ){
                    moveScore -= 3;
                }
                else{
                    moveScore += 5;
                }
            }
        }
        else if(ai->attacker_item == ITEM_FLAME_ORB){
            if(ItemIsBadToTrade(ai->defender_item, ai) ){
                moveScore -= 3;
            }
            else{
                if(!(ctx->battlemon[ai->defender].condition & STATUS_NONE) ||
                ctx->side_condition[ai->defender_side] & SIDE_STATUS_SAFEGUARD ||
                ai->defender_immune_to_burn || ai->defender_ability == ABILITY_KLUTZ){
                    moveScore -= 3;
                }
                else{
                    moveScore += 5;
                }
            }
        }
        else if(ai->attacker_item == ITEM_BLACK_SLUDGE){
            if(ItemIsBadToTrade(ai->defender_item, ai) ){
                moveScore -= 3;
            }
            else{
                if(HasType(ctx, ai->defender, TYPE_POISON) || 
                    ai->defender_ability == ABILITY_MAGIC_GUARD || ai->defender_ability == ABILITY_KLUTZ){
                    moveScore -= 3;
                }
                else{
                    moveScore += 5;
                }
            }
        }
        //TODO: add a check for flavor berries?
    }

    /*Skill Swap & Role Play*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_COPY_ABILITY ||
        ai->attacker_move_effect == MOVE_EFFECT_SWITCH_ABILITIES){
            if(IsDesirableAbility(attacker)){
                moveScore -= 1;
            }
            else if(IsDesirableAbility(ai->defender)){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore += 2;
                }
            }
    }

    /*Eruption & Water Spout (moves that decrease power with % hp)*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_DECREASE_POWER_WITH_LESS_USER_HP){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
            moveScore -= 1;
        }
        else if(ai->defender_moves_first && ai->attacker_percent_hp <= 70){
            moveScore -= 1;
        }
        else if(ai->attacker_moves_first && ai->attacker_percent_hp <= 50){
            moveScore -= 1;
        }
    }

    /*Superpower*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_USER_ATK_DEF_DOWN_HIT){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
            moveScore -= 1;
        }
        else if(ctx->battlemon[attacker].states[STAT_ATTACK] <= 5){//at -1 or lower
            moveScore -= 1;
        }
        else if(ai->defender_moves_first && ai->attacker_percent_hp <= 60){
            moveScore -= 1;
        }
        else if(ai->attacker_moves_first && ai->attacker_percent_hp > 60){
            moveScore -= 1;
        }
    }

    /*Magic Coat*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_MAGIC_COAT){
        if(ai->defender_percent_hp <= 30){
            if(BattleRand(bsys) % 10 < 6){
                moveScore -= 1;
            }
        }
        if(ai->attacker_turns_on_field == 0){
            if(BattleRand(bsys) % 10 < 4){
                moveScore += 1;
            }
        }
        else{
            if(BattleRand(bsys) % 10 < 9){
                moveScore -= 1;
            }
        }
    }

    /*Recycle*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_RECYCLE){
        if(ctx->recycle_item[attacker] != ITEM_CHESTO_BERRY && 
            ctx->recycle_item[attacker] != ITEM_CHESTO_BERRY && 
            ctx->recycle_item[attacker] != ITEM_STARF_BERRY){
            moveScore -= 2;
        }
        else{
            if(BattleRand(bsys) % 10 < 8){
                moveScore -= 1;
            }
        }
    }
    
    /*Avalanche & Revenge*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_DOUBLE_DAMAGE_IF_HIT){
        if(ctx->battlemon[ai->defender].condition2 & STATUS2_ATTRACT ||
            ctx->battlemon[ai->defender].condition & STATUS_SLEEP){
            moveScore -= 2;
        }
        else{
            if(BattleRand(bsys) % 10 < 7){
                moveScore -= 2;
            }
            else{
                moveScore += 2;
            }
        }
    }

    /*Brick Break*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_REMOVE_SCREENS){
        if(ctx->side_condition[ai->defender_side] & SIDE_STATUS_REFLECT ||
            ctx->side_condition[ai->defender_side] & SIDE_STATUS_LIGHT_SCREEN){
            moveScore += 1;
        }
    }

    /*Knock Off*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_REMOVE_HELD_ITEM){
        if(ai->defender_percent_hp >= 30 && ai->attacker_turns_on_field != 0){
            if(BattleRand(bsys) % 10 < 3){
                moveScore += 3;
            }
        }
    }

    /*Endeavor*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SET_HP_EQUAL_TO_USER){
        if(ai->defender_percent_hp < 70){
            moveScore -= 1;
        }
        else{
            if(ai->defender_moves_first){
                if(ai->attacker_percent_hp > 50){
                    moveScore -= 1;
                }
                else{
                    moveScore += 1;
                }
            }
            else if(ai->attacker_moves_first){
                if(ai->attacker_percent_hp > 40){
                    moveScore -= 1;
                }
                else{
                    moveScore += 1;
                }
            }
        }
    }

    /*Imprison*/
    /*TODO: fix this logic*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE){
        if(ai->attacker_turns_on_field != 0){
            if(BattleRand(bsys) % 10 < 6){
                moveScore += 2;
            }
        }
    }

    /*Refresh*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_HEAL_STATUS){
        if(ai->defender_percent_hp < 50){
            moveScore -= 1;
        }
    }

    /*Snatch*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_STEAL_STATUS_MOVE){
        if(ai->attacker_turns_on_field == 0){
            if(BattleRand(bsys) % 10 < 4){
                moveScore += 2;
            }
        }
        if(BattleRand(bsys) % 10 < 1){
            moveScore += 0;
        }
        else{
            if(ai->defender_moves_first){
                if(ai->defender_percent_hp > 25){
                    if(BattleRand(bsys) % 10 < 9){
                        moveScore -= 2;
                    } 
                }
                else if(BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_RESTORE_HALF_HP, ai)){
                    if(BattleRand(bsys) % 10 < 4){
                        moveScore += 2;
                    }  
                }
                else{
                    if(BattleRand(bsys) % 10 < 1){
                        moveScore += 1;
                    }    
                }
            }
            else if(ai->attacker_moves_first){
                if(ai->attacker_hp != ai->attacker_max_hp){
                    if(BattleRand(bsys) % 10 < 9){
                        moveScore -= 2;
                    } 
                }
                else if(ai->defender_percent_hp < 70){
                    if(BattleRand(bsys) % 10 < 9){
                        moveScore -= 2;
                    } 
                }
                else{
                    if(BattleRand(bsys) % 10 < 7){
                        moveScore -= 2;
                    } 
                }
            }
        }
    }

    /*Mud Sport and Water Sport*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_HALVE_FIRE_DAMAGE){
        if(ai->attacker_percent_hp < 50){
            moveScore -= 1;
        }
        else if(HasType(ctx, ai->defender, TYPE_FIRE)){
            moveScore += 1;
        }
    }

    else if(ai->attacker_move_effect == MOVE_EFFECT_HALVE_ELECTRIC_DAMAGE){
        if(ai->attacker_percent_hp < 50){
            moveScore -= 1;
        }
        else if(HasType(ctx, ai->defender, TYPE_ELECTRIC)){
            moveScore += 1;
        }
    }

    /*-2 Sp.Atk Moves: Overheat, Draco Meteor, Leaf Storm etc.*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_USER_SP_ATK_DOWN_2){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
            moveScore -= 1;
        }
        else if(ai->attacker_moves_first && ai->attacker_percent_hp <= 60){
            moveScore -= 1;
        }
        else if(ai->defender_moves_first && ai->attacker_percent_hp <= 80){
            moveScore -= 1;
        }
    }

    /*Hammer Arm*/
    /*TODO: incentivize in trick room*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_USER_SPEED_DOWN_HIT){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
            moveScore -= 1;
        }
        else if(ai->defender_moves_first){
            moveScore += 1;
        }
    }

    /*Brine*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_DOUBLE_POWER_WHEN_BELOW_HALF){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
            moveScore -= 1;
        }
        if(ai->defender_percent_hp <= 50){
            if(BattleRand(bsys) % 10 < 5){
                moveScore += 1;
            }
            else{
                moveScore += 2;
            }
        }
    }

    /*Feint*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_REMOVE_PROTECT){
        if(BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_PROTECT, ai)){
            if(BattleRand(bsys) % 4 < 3){
                moveScore += 0;
            }
        }
        else{
            if(ctx->battlemon[attacker].condition & STATUS_BAD_POISON ||
                ctx->battlemon[attacker].condition2 == STATUS2_CURSE ||
                ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE ||
                ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG_ACTIVE ||
                ctx->battlemon[attacker].condition2 & STATUS2_ATTRACT ||
                ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_YAWN_COUNTER){
                if(BattleRand(bsys) % 2 < 1){
                    moveScore += 1;
                }
            }
            else if(ai->defender_percent_hp < 100 && (ai->defender_item == ITEM_LEFTOVERS ||ai->defender_item == ITEM_BLACK_SLUDGE)){
                if(BattleRand(bsys) % 2 < 1){
                    moveScore += 1;
                }
            }
            else if(ctx->battlemon[ai->defender].moveeffect.protectSuccessTurns == 0){
                if(BattleRand(bsys) % 2 < 1){
                    moveScore += 1;
                }
            }
            else if(ctx->battlemon[ai->defender].moveeffect.protectSuccessTurns == 1){
                if(BattleRand(bsys) % 4 < 1){
                    moveScore += 1;
                }
            }
            else{
                moveScore -= 2;
            }
        }
    }

    /*Pluck and Bug Bite*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_EAT_BERRY){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
            moveScore -= 1;
        }
        else if(ai->attacker_turns_on_field == 0){
            if(BattleRand(bsys) % 4 < 3){
                moveScore += 1;
            }
        }
        else{
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            }
        }
    }

    /*U-turn & Volt Switch*/
    /*TODO: change this logic*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SWITCH_HIT){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
            moveScore -= 1;
        }
        else if(ai->living_attacking_members == 1){
            moveScore -= 2;
        }
        else if(ai->attacker_has_super_effective_move){
            if(BattleRand(bsys) % 4 < 3){
                moveScore -= 2;
            }
        }
        else if(AttackerMonWithHighestDamage (bsys, attacker, ai) == ai->attacker_party_index){
            if(BattleRand(bsys) % 4 < 3){
                moveScore -= 2;
            }
        }
        else if(ai->defender_percent_hp > 70){
            if(BattleRand(bsys) % 4 < 3){
                moveScore += 1;
            }
            if(ai->defender_percent_hp > 30){
                if(BattleRand(bsys) % 2 < 1){
                    moveScore += 1;
                }
            }
        }
        else{
            if(BattleRand(bsys) % 4 < 1){
                moveScore += 1;
            }
        }
        if(ai->attacker_moves_first){
            moveScore += 1;
        }
        else{
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            }
        }
    }

    /*Close Combat*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_USER_DEF_SP_DEF_DOWN_HIT){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
            moveScore -= 1;
        }
        else if(ai->defender_moves_first && ai->attacker_percent_hp <= 80){
            moveScore -= 1;
        }
        else if(ai->attacker_moves_first  && ai->attacker_percent_hp <= 60){
            moveScore -= 1;
        }
    }

    /*Payback*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_DOUBLE_POWER_IF_HIT){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
            moveScore -= 1;
        }
        if(ai->defender_moves_first && ai->attacker_percent_hp >= 30){
            if(BattleRand(bsys) % 4 < 3){
                moveScore += 1;
            }
        }
    }

    /*Assurance*/
    /*TODO: check for doubles*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_DOUBLE_POWER_IF_TARGET_HIT){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
            moveScore -= 1;
        }
        else if(ai->defender_moves_first){
            if(ai->attacker_ability == ABILITY_ROUGH_SKIN){
                if(BattleRand(bsys) % 2 < 1){
                    moveScore += 1;
                }
            }
            else if(ai->attacker_item == ITEM_JABOCA_BERRY || ai->attacker_item == ITEM_ROWAP_BERRY){
                if(BattleRand(bsys) % 2 < 1){
                    moveScore += 1;
                }
            }
            else{
                if(BattleRand(bsys) % 4 < 1){
                    moveScore += 1;
                }
            }
        }
    }

    /*Embargo*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_PREVENT_ITEM_USE){
        if(BattleRand(bsys) % 2 < 1){
            moveScore += 1;
        }
    }

    /*Fling*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_FLING){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE ||
        !(ai->attacker_item == ITEM_KINGS_ROCK || ai->attacker_item == ITEM_RAZOR_FANG ||
          ai->attacker_item == ITEM_POISON_BARB || ai->attacker_item == ITEM_TOXIC_ORB ||
          ai->attacker_item == ITEM_FLAME_ORB || ai->attacker_item == ITEM_LIGHT_BALL)){
            moveScore -= 1;
        }
        else if(ai->fling_power < 30){
            moveScore -= 2;
        }
        else if(ai->fling_power > 90){
            if(BattleRand(bsys) % 4 < 3){
                moveScore += 1;
            }
            if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_SUPER_EFFECTIVE){
                moveScore += 4;
            }
            else{
                if(BattleRand(bsys) % 2 < 1){
                    moveScore += 1;
                }
            }
        }
        else if(ai->fling_power > 60){
            if(BattleRand(bsys) % 4 < 3){
                moveScore += 1;
            }
        }
        else{
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            }
        }
    }

    /*Psycho Shift*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_TRANSFER_STATUS){
        if(ctx->battlemon[attacker].condition & STATUS_NONE){
            moveScore -= 10;
        }
        else if(ai->defender_percent_hp >= 30){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            }
        }
    }

    /*Trump Card*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_HIGHER_POWER_WHEN_LOW_PP){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
            moveScore -= 1;
        }
        else if(ai->attacker_move_pp_remaining == 1){
            moveScore += 3;
        }
        else if(ai->attacker_move_pp_remaining == 2){
            if(BattleRand(bsys) % 10 < 6){
                moveScore += 2;
            }
            else{
                moveScore += 1;
            }
        }
        else if(ai->attacker_move_pp_remaining == 3){
            if(BattleRand(bsys) % 10 < 6){
                moveScore += 1;
            }
        }
        else if(ai->defender_ability == ABILITY_PRESSURE){
            if(BattleRand(bsys) % 10 < 9){
                moveScore += 1;
            }
        }
        else if(ctx->battlemon[ai->defender].states[STAT_EVASION] >= 11 ||
            ctx->battlemon[attacker].states[STAT_ACCURACY] <= 1){
            if(BattleRand(bsys) % 10 < 6){
                moveScore += 2;
            }
            else{
                moveScore += 1;
            }
        }
        else if(ctx->battlemon[ai->defender].states[STAT_EVASION] >= 9 ||
            ctx->battlemon[attacker].states[STAT_ACCURACY] <= 3){
            if(BattleRand(bsys) % 10 < 6){
                moveScore += 1;
            }
        }
    }

    /*Heal Block*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_PREVENT_HEALING){
        if(BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_RECOVER_DAMAGE_SLEEP, ai) ||
        BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_RESTORE_HALF_HP, ai) ||
        BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_HEAL_HALF_REMOVE_FLYING_TYPE, ai) ||
        BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_HEAL_HALF_MORE_IN_SUN, ai) ||
        BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_RECOVER_HEALTH_AND_SLEEP, ai) ||
        BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_SWALLOW, ai) ||
        BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT, ai) ||
        BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL, ai) ||
        BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_RESTORE_HP_EVERY_TURN, ai) ||
        BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_STATUS_LEECH_SEED, ai) ||
        BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON, ai) ||
        BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_RECOVER_THREE_QUARTERS_DAMAGE_DEALT, ai)){
            if(BattleRand(bsys) % 10 < 9){
                moveScore += 1;
            }
        }
        else if(ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE ||
            ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN ||
            ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_AQUA_RING){
            if(BattleRand(bsys) % 10 < 9){
                moveScore += 1;
            }
        }
        else{
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            }
        }
    }

    /*Wring Out & Crush Grip*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_INCREASE_POWER_WITH_MORE_HP){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
            moveScore -= 1;
        }
        else if(ai->defender_percent_hp < 50){
            moveScore -= 1;
        }
        else if(ai->defender_hp == ai->defender_max_hp){
            if(BattleRand(bsys) % 10 < 9){
                moveScore += 1;
            }
            if(ai->attacker_moves_first){
                moveScore += 2;
            }
            if(ai->defender_moves_first){
                moveScore += 1;
            }
        }
        else if(ai->defender_percent_hp > 85){
            if(BattleRand(bsys) % 10 < 9){
                moveScore += 1;
            }
        }
    }

    /*Power trick*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SWAP_ATK_DEF){
        if(ai->attacker_percent_hp > 90){
            if(BattleRand(bsys) % 10 < 6){
                moveScore += 1;
            }
        }
        else if(ai->attacker_percent_hp > 60){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            }
        }
        else if(ai->attacker_percent_hp > 30){
            if(BattleRand(bsys) % 3 < 1){
                moveScore += 1;
            }
        }
    }

    /*Gastro Acid*/
    /*TODO: update with doubles truant and slow start*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SUPRESS_ABILITY){
        if(BattleRand(bsys) % 4 < 1){
            moveScore += 0;
        }
        else{
            if(ai->defender_percent_hp > 70){
                moveScore += 1;
            }
            else if(ai->defender_percent_hp <= 70){
                if(BattleRand(bsys) % 2 < 1){
                    moveScore += 1;
                }
            }
            else if(ai->defender_percent_hp <= 50){
                if(BattleRand(bsys) % 2 < 1){
                    moveScore -= 1;
                }
                else{
                    moveScore -= 2;
                }
            }
            else if(ai->defender_percent_hp <= 30){
                if(BattleRand(bsys) % 2 < 1){
                    moveScore -= 2;
                }
                else{
                    moveScore -= 3;
                }
            }
        }
    }

    /*Lucky Chant*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_PREVENT_CRITS){
        if(ai->attacker_percent_hp < 70){
            moveScore -= 1;
        }
        else if(BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_HIGH_CRITICAL_POISON_HIT, ai) ||
        BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_HIGH_CRITICAL, ai) ||
        BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_SLEEP_POISON_PARALYZE_HIT, ai) ||
        BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_HIGH_CRITICAL_RAISE_SPEED_HIT, ai)){
            moveScore += 1;
        }
        else{
            if(BattleRand(bsys) % 4 < 1){
                moveScore += 1;
            }
        }
    }

    /*Me First*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_PREVENT_CRITS){
        if(ai->defender_moves_first){
            moveScore -= 2;
        }
        //TODO: if attacker deals more damage, kinda vague in ai doc
        else if(ctx->moveTbl[ai->defender_last_used_move].split != SPLIT_STATUS){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            }
        }
        else{
            if(BattleRand(bsys) % 4 < 3){
                moveScore += 1;
            }
        }
    }

    /*Power Swap*/
    /*Made this slightly different from vanilla ai, which is unnecessarily complicated.*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SWAP_ATK_SP_ATK_STAT_CHANGES){
        if(ai->difference_in_attack_stages > 3 || ai->difference_in_spatk_stages > 3){
            int chance_roll = BattleRand(bsys) % 32;
            if(chance_roll == 0){
                moveScore += 0;
            }
            else if(chance_roll == 1){
                moveScore += 1;
            }
            else if(chance_roll < 4){
                moveScore += 2;
            }
            else if(chance_roll < 8){
                moveScore += 3;
            }
            else if(chance_roll < 16){
                moveScore += 4;
            }
            else if(chance_roll < 32){
                moveScore += 5;
            }
        }
        else if(ai->difference_in_attack_stages > 1 || ai->difference_in_spatk_stages > 1){
            int chance_roll = BattleRand(bsys) % 32;
            if(chance_roll == 0){
                moveScore += 0;
            }
            else if(chance_roll == 1){
                moveScore += 0;
            }
            else if(chance_roll < 4){
                moveScore += 0;
            }
            else if(chance_roll < 8){
                moveScore += 1;
            }
            else if(chance_roll < 16){
                moveScore += 2;
            }
            else if(chance_roll < 32){
                moveScore += 3;
            }
        }
        else if(ai->difference_in_attack_stages > 0 || ai->difference_in_spatk_stages > 0){
            int chance_roll = BattleRand(bsys) % 32;
            if(chance_roll == 0){
                moveScore += 0;
            }
            else if(chance_roll == 1){
                moveScore += 0;
            }
            else if(chance_roll < 4){
                moveScore += 0;
            }
            else if(chance_roll < 8){
                moveScore += 0;
            }
            else if(chance_roll < 16){
                moveScore += 1;
            }
            else if(chance_roll < 32){
                moveScore += 2;
            }
        }
    }

    /*Guard Swap*/
    /*Made this slightly different from vanilla ai, which is unnecessarily complicated.*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SWAP_DEF_SP_DEF_STAT_CHANGES){
        if(ai->difference_in_defense_stages > 3 || ai->difference_in_spdef_stages > 3){
            int chance_roll = BattleRand(bsys) % 32;
            if(chance_roll == 0){
                moveScore += 0;
            }
            else if(chance_roll == 1){
                moveScore += 1;
            }
            else if(chance_roll < 4){
                moveScore += 2;
            }
            else if(chance_roll < 8){
                moveScore += 3;
            }
            else if(chance_roll < 16){
                moveScore += 4;
            }
            else if(chance_roll < 32){
                moveScore += 5;
            }
        }
        else if(ai->difference_in_defense_stages > 1 || ai->difference_in_spdef_stages > 1){
            int chance_roll = BattleRand(bsys) % 32;
            if(chance_roll == 0){
                moveScore += 0;
            }
            else if(chance_roll == 1){
                moveScore += 0;
            }
            else if(chance_roll < 4){
                moveScore += 0;
            }
            else if(chance_roll < 8){
                moveScore += 1;
            }
            else if(chance_roll < 16){
                moveScore += 2;
            }
            else if(chance_roll < 32){
                moveScore += 3;
            }
        }
        else if(ai->difference_in_defense_stages > 0 || ai->difference_in_spdef_stages > 0){
            int chance_roll = BattleRand(bsys) % 32;
            if(chance_roll == 0){
                moveScore += 0;
            }
            else if(chance_roll == 1){
                moveScore += 0;
            }
            else if(chance_roll < 4){
                moveScore += 0;
            }
            else if(chance_roll < 8){
                moveScore += 0;
            }
            else if(chance_roll < 16){
                moveScore += 1;
            }
            else if(chance_roll < 32){
                moveScore += 2;
            }
        }
    }

    /*Punishment*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_INCREASE_POWER_WITH_MORE_STAT_UP){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
            moveScore += 0;
        }
        else{
            int chance_roll = BattleRand(bsys) % 32;
            if(BattlerPositiveStatChangesSum(bsys, ai->defender, ai) > 6){
                if(chance_roll < 2){
                    moveScore += 0;
                }
                else if(chance_roll < 4){
                    moveScore += 1;
                }
                else if(chance_roll < 8){
                    moveScore += 2;
                }
                else if(chance_roll < 16){
                    moveScore += 3;
                }
                else if(chance_roll < 32){
                    moveScore += 4;
                }
            }
            else if(BattlerPositiveStatChangesSum(bsys, ai->defender, ai) == 6){
                if(chance_roll < 4){
                    moveScore += 0;
                }
                else if(chance_roll < 8){
                    moveScore += 1;
                }
                else if(chance_roll < 16){
                    moveScore += 2;
                }
                else if(chance_roll < 32){
                    moveScore += 3;
                }
            }
            else if(BattlerPositiveStatChangesSum(bsys, ai->defender, ai) == 5){
                if(chance_roll < 8){
                    moveScore += 0;
                }
                else if(chance_roll < 16){
                    moveScore += 1;
                }
                else if(chance_roll < 32){
                    moveScore += 2;
                }
            }
            else if(BattlerPositiveStatChangesSum(bsys, ai->defender, ai) > 2){
                if(chance_roll < 16){
                    moveScore += 0;
                }
                else if(chance_roll < 32){
                    moveScore += 1;
                }
            }
        }   
    }

    /*Last Resort*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_FAIL_IF_NOT_USED_ALL_OTHER_MOVES){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
            moveScore -= 1;
        }
        else if(ctx->battlemon[attacker].moveeffect.lastResortCount == ai->attacker_moves_known - 1){
            moveScore += 1;
        }
    }

    /*Worry Seed*/
    /*TODO: maybe implement for doubles?*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SET_ABILITY_TO_INSOMNIA){
        if(BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_RECOVER_HEALTH_AND_SLEEP, ai)){
            moveScore += 1;
        }
        else if(ai->attacker_percent_hp >= 50){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            }
        }
        else{
            if(BattleRand(bsys) % 4 < 3){
                moveScore += 1;
            }
        }
    }

    /*Sucker Punch*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
            moveScore -= 1;
        }
        else if(BattleRand(bsys) % 4 < 3){
            moveScore += 1;
        }
    }

    /*Toxic Spikes*/
    /*TODO: add a check for dragon tail etc*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_TOXIC_SPIKES){
        if(BattleRand(bsys) % 2 < 1){
            moveScore += 0;
        }
        else{
            moveScore += 1;
            if(BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_FORCE_SWITCH, ai)){
                if(BattleRand(bsys) % 4 < 3){
                    moveScore += 1;
                }
            }
        }
    }

    /*Heart Swap*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SWAP_STAT_CHANGES){
        if(!BattlerHasStatBoostGreater(bsys, ai->defender, 8, ai) && !(ctx->battlemon[ai->defender].condition2 & STATUS2_FOCUS_ENERGY)  ){
            moveScore -= 2;
        }
        else if(BattlerHasStatBoostLesser(bsys, attacker, 6, ai) && !(ctx->battlemon[attacker].condition2 & STATUS2_FOCUS_ENERGY)){
            moveScore += 1;
        }
        else if(ctx->battlemon[attacker].states[STAT_EVASION] <= 6){
            moveScore += 2;
        }
        else{
            if(BattleRand(bsys) % 10 < 8){
                moveScore -= 2;
            }
        }
    }

    /*Aqua Ring*/
    //TODO: this logic isn't great
    else if(ai->attacker_move_effect == MOVE_EFFECT_RESTORE_HP_EVERY_TURN){
        if(ai->attacker_percent_hp >= 30){
            if(BattleRand(bsys) % 2 < 1){
                moveScore += 1;
            }
        }
    }

    /*Magnet Rise*/
    //TODO: make this include more ground moves
    else if(ai->attacker_move_effect == MOVE_EFFECT_GIVE_GROUND_IMMUNITY){
        if(ai->attacker_percent_hp < 50){
            moveScore += 0;
        }
        else{
            if(BattlerKnowsMove(bsys, ai->defender, MOVE_EARTHQUAKE, ai) ||
                BattlerKnowsMove(bsys, ai->defender, MOVE_MAGNITUDE, ai) ||
                BattlerKnowsMove(bsys, ai->defender, MOVE_BULLDOZE, ai) ||
                BattlerKnowsMove(bsys, ai->defender, MOVE_EARTH_POWER, ai) ||
                BattlerKnowsMove(bsys, ai->defender, MOVE_FISSURE, ai)){
                moveScore += 1;
            }
            else if(HasType(ctx, ai->defender, TYPE_GROUND)){
                moveScore += 1;
            }
            else{
                if(BattleRand(bsys) % 2 < 1){
                    moveScore += 1;
                }
            }
        }
    }

    else if(ai->attacker_move_effect == MOVE_EFFECT_REMOVE_HAZARDS_SCREENS_EVA_DOWN){
        if(ctx->side_condition[ai->defender_side] & SIDE_STATUS_REFLECT ||
            ctx->side_condition[ai->defender_side] & SIDE_STATUS_LIGHT_SCREEN){
            if(ai->attacker_percent_hp < 30 && ai->living_attacking_members == 1){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 2;
                }
                else if(ai->defender_percent_hp > 70){
                    moveScore -= 2;
                }
            }
            else{
                moveScore += 1;
                if(ai->living_defending_members > 1 && ai->defender_has_hazards){
                    if(BattleRand(bsys) % 2 < 1){
                        moveScore -= 1;
                    }
                }
                else if(ai->defender_has_hazards){
                    moveScore -= 2;
                }
                else if(ai->attacker_percent_hp >= 70 && ctx->battlemon[ai->defender].states[STAT_EVASION] >= 4 && ai->defender_percent_hp <= 70){
                    moveScore -= 2;
                }
                else{
                    if(BattleRand(bsys) % 10 < 8){
                        moveScore -= 2;
                    }
                    else if(ai->defender_percent_hp <= 70){
                        moveScore -= 2;
                    }
                }
            }
        }
    }

    /*Trick Room*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_TRICK_ROOM){
        if(BattleTypeGet(bsys) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE)){
            moveScore += 0;
        }
        else{
            if(ai->attacker_percent_hp <= 30 && ai->living_attacking_members == 1){
                moveScore += 0;
            }
            else if(ai->attacker_moves_first){
                moveScore -= 1;
            }
            else if(ai->defender_moves_first){
                if(BattleRand(bsys) % 4 < 3){
                    moveScore += 3;
                }
            }
        }
    }

    /*Blizzard*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_BLIZZARD){
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_EFFECTIVE ||
            ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE){
            if(BattleRand(bsys) % 10 < 8){
                moveScore -= 3;
            }
            else if( ctx->field_condition & WEATHER_HAIL_ANY ||
                ctx->field_condition & WEATHER_SNOW_ANY){
                moveScore += 1;
            }
        }
    }

    /*Captivate*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER){
        if(ctx->battlemon[ai->defender].states[STAT_SPATK] != 6){
            moveScore -= 1;
            if(ai->attacker_percent_hp <= 90){
                moveScore -= 1;
            }
            else if(ctx->battlemon[ai->defender].states[STAT_SPATK] <= 3){
                if(BattleRand(bsys) % 10 < 8){
                    moveScore -= 2;
                }
            }
        }
        if(ai->defender_percent_hp <= 70){
            moveScore -= 2;
        }
        else if(ctx->moveTbl[ai->defender_last_used_move].split == SPLIT_PHYSICAL){
            if(BattleRand(bsys) % 4 < 3){
                moveScore -= 1;
            }
        }
    }

    /*Stealth Rock*/
    else if(ai->attacker_move_effect == MOVE_EFFECT_STEALTH_ROCK){
        if(BattleRand(bsys) % 2 < 1){
            moveScore += 0;
        }
        else{
            moveScore += 1;
            if(BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_FORCE_SWITCH, ai)){
                if(BattleRand(bsys) % 4 < 3){
                    moveScore += 1;
                }
            }
        }
    }

    return moveScore;
}


int SetupFirstTurnFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai){
    int moveScore = 0;
    struct BattleStruct *ctx = bsys->sp;
    if(ctx->total_turn == 0){
        if(IsInStatList(ai->attacker_move_effect, RaiseStatList, NELEMS(RaiseStatList))||
           IsInStatList(ai->attacker_move_effect, DropStatList, NELEMS(DropStatList)) ||
           IsInStatList(ai->attacker_move_effect, SetupFirstTurnList, NELEMS(SetupFirstTurnList))){
            if(BattleRand(bsys) % 10 < 7){
                moveScore += 2;
            }
        }
    }
    else{
        moveScore += 0;
    }
    return moveScore;
}


int RiskyFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai){
    int moveScore = 0;
    struct BattleStruct *ctx = bsys->sp;
    if(IsInStatList(ai->attacker_move_effect, RiskyFlagList, NELEMS(RiskyFlagList))){
        if(BattleRand(bsys) % 2 < 1){
            moveScore += 2;
        }
    }
    return moveScore;
}

int PrioritizeDamageFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai){
    int moveScore = 0;
    struct BattleStruct *ctx = bsys->sp;
    if(IsInStatList(ai->attacker_move_effect, PrioritizeDamageFlagList, NELEMS(PrioritizeDamageFlagList))){
        if(BattleRand(bsys) % 10 < 6){
            moveScore += 2;
        }
    }
    return moveScore;
}

int BatonPassFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai){
    int moveScore = 0;
    struct BattleStruct *ctx = bsys->sp;
    if(ai->living_attacking_members == 1 || ctx->moveTbl[ai->attacker_move].split != SPLIT_STATUS ){
        moveScore += 0;
    }
    else if(!BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_PASS_STATS_AND_STATUS, ai) && BattleRand(bsys) % 10 < 3){
        moveScore += 0;
    }
    else{
        if(IsInStatList(ai->attacker_move_effect, BatonPassFlagList, NELEMS(BatonPassFlagList))){
            if(ctx->total_turn == 0){
                moveScore += 5;
            }
            else if(ai->attacker_percent_hp >= 60){
                moveScore += 1;
            }
            else{
                moveScore -= 10;
            }
        }
        else if(ai->attacker_move_effect == MOVE_EFFECT_PROTECT){
            if(ctx->battlemon[attacker].moveeffect.protectSuccessTurns > 0){
                moveScore -=2;
            }
            else{
                moveScore += 2;
            }
        }
        else if(ai->attacker_move_effect == MOVE_EFFECT_PASS_STATS_AND_STATUS){
            if(ctx->total_turn == 0){
                moveScore -= 2;
            }
            else{
                if(ctx->battlemon[attacker].states[STAT_ATTACK] >= 9 ||
                    ctx->battlemon[attacker].states[STAT_SPATK] >= 9 ){
                    moveScore += 3;
                }
                else if(ctx->battlemon[attacker].states[STAT_ATTACK] >= 8 ||
                    ctx->battlemon[attacker].states[STAT_SPATK] >= 8 ){
                    moveScore += 2;
                }
                else if(ctx->battlemon[attacker].states[STAT_ATTACK] >= 7 ||
                    ctx->battlemon[attacker].states[STAT_SPATK] >= 7 ){
                    moveScore += 1;
                }
            }
        }
        else{
            if(BattleRand(bsys) % 10 < 9){
                moveScore += 3;
            }
        }
    }
    return moveScore;
}
int TagStrategyFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai){
    int moveScore = 0;
    struct BattleStruct *ctx = bsys->sp;
    return moveScore;
}
int CheckHPFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai){
    int moveScore = 0;
    struct BattleStruct *ctx = bsys->sp;
    return moveScore;
}
int WeatherFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai){
    int moveScore = 0;
    struct BattleStruct *ctx = bsys->sp;
    
    if((ai->attacker_move_effect == MOVE_EFFECT_WEATHER_SANDSTORM && 
        !(ctx->field_condition & WEATHER_SANDSTORM_ANY)) ||
        (ai->attacker_move_effect == MOVE_EFFECT_WEATHER_HAIL && 
            !(ctx->field_condition & WEATHER_HAIL_ANY )) ||
            (ai->attacker_move_effect == MOVE_EFFECT_WEATHER_SNOW && 
                !(ctx->field_condition & WEATHER_SNOW_ANY )) ||
            (ai->attacker_move_effect == MOVE_EFFECT_WEATHER_RAIN && 
                !(ctx->field_condition & WEATHER_RAIN_ANY)) ||
                (ai->attacker_move_effect == MOVE_EFFECT_WEATHER_SUN && 
                    !(ctx->field_condition & WEATHER_SUNNY_ANY))){
                moveScore += 5;
    }
    return moveScore;
}
int HarassmentFlag(struct BattleSystem *bsys, u32 attacker, int i, AiContext *ai){
    int moveScore = 0;
    struct BattleStruct *ctx = bsys->sp;
    return moveScore;
}




/*-------------------------------Helper Functions--------------------------------*/

/*returns the index of the pokemon on the attacker's (ai's)
team with the largest damage against the target*/
int AttackerMonWithHighestDamage (struct BattleSystem *bsys, u32 attacker, AiContext *ai){
    struct BattleStruct *ctx = bsys->sp;
    int max_damage = 0;
    int max_damage_index = 0;
    //loop over party pokemon that aren't fainted
    for(int i = 0; i < ai->party_size_attacking; i++){
        struct PartyPokemon * current_mon_attacking = Battle_GetClientPartyMon(bsys, attacker, i);
        //loop over each pokemon's moves
        if(GetMonData(current_mon_attacking, MON_DATA_HP, 0) != 0){
            for (int attack_index = 0; attack_index < 4; attack_index++){
                int current_move = GetMonData(current_mon_attacking, MON_DATA_MOVE1 + attack_index, NULL);
                int damage = CalcBaseDamage(bsys, ctx, current_move, ctx->side_condition[ai->defender_side], ctx->field_condition, 0, 0, attacker, ai->defender, 0);
                if(damage > max_damage){
                    max_damage = damage;
                    max_damage_index = i;
                }
            }
        }
    }
    return max_damage_index;
}

int BattlerPositiveStatChangesSum (struct BattleSystem *bsys, u32 battler, AiContext *ai){
    struct BattleStruct *ctx = bsys->sp;
    int stat_sum = 0;

    for(int stat = 0; stat < STAT_MAX; stat++){
        if(ctx->battlemon[battler].states[stat] > 6){
            stat_sum += ctx->battlemon[battler].states[stat];
        }
    }
    return stat_sum;
}

BOOL BattlerHasStatBoostGreater (struct BattleSystem *bsys, u32 battler, u32 boost_amount, AiContext *ai){
    BOOL battler_has_stat_boost = 0;
    struct BattleStruct *ctx = bsys->sp;
    if(ctx->battlemon[battler].states[STAT_ATTACK] >= boost_amount ||
        ctx->battlemon[battler].states[STAT_DEFENSE] >= boost_amount ||
        ctx->battlemon[battler].states[STAT_SPATK] >= boost_amount ||
        ctx->battlemon[battler].states[STAT_SPDEF] >= boost_amount ||
        ctx->battlemon[battler].states[STAT_SPEED] >= boost_amount ||
        ctx->battlemon[battler].states[STAT_EVASION] >= boost_amount ||
        ctx->battlemon[battler].states[STAT_ACCURACY] >= boost_amount){
            battler_has_stat_boost = 1;
    }
    return battler_has_stat_boost;
}

BOOL BattlerHasStatBoostLesser (struct BattleSystem *bsys, u32 battler, u32 drop_amount, AiContext *ai){
    BOOL battler_has_stat_boost = 0;
    struct BattleStruct *ctx = bsys->sp;
    if(ctx->battlemon[battler].states[STAT_ATTACK] <= drop_amount ||
        ctx->battlemon[battler].states[STAT_DEFENSE] <= drop_amount ||
        ctx->battlemon[battler].states[STAT_SPATK] <= drop_amount ||
        ctx->battlemon[battler].states[STAT_SPDEF] <= drop_amount ||
        ctx->battlemon[battler].states[STAT_SPEED] <= drop_amount ||
        ctx->battlemon[battler].states[STAT_EVASION] <= drop_amount ||
        ctx->battlemon[battler].states[STAT_ACCURACY] <= drop_amount){
            battler_has_stat_boost = 1;
    }
    return battler_has_stat_boost;
}

BOOL BattlerKnowsMove (struct BattleSystem *bsys, u32 battler, u32 move, AiContext *ai){
    BOOL knows_move = 0;
    struct BattleStruct *ctx = bsys->sp;
    for(int i = 0; i < 4; i++){
        int battler_move_check = ctx->battlemon[battler].move[i];
        if(battler_move_check == move){
            knows_move = 1;
        }
    }
    return knows_move;
}

BOOL BattlerHasMoveSplit (struct BattleSystem *bsys, u32 battler, u32 move_split, AiContext *ai){
    BOOL has_move_split = 0;
    struct BattleStruct *ctx = bsys->sp;

    for(int i = 0; i < 4; i++){
        int battler_move_split = ctx->moveTbl[ctx->battlemon[battler].move[i]].split ;
        if(battler_move_split == move_split){
            has_move_split = 1;
        }
    }
    return has_move_split;
}

BOOL BattlerHasMoveEffect (struct BattleSystem *bsys, u32 battler, u32 move_effect, AiContext *ai){

    BOOL has_move_effect = 0;
    struct BattleStruct *ctx = bsys->sp;

    for(int i = 0; i < 4; i++){
        int battler_move_effect = ctx->moveTbl[ctx->battlemon[battler].move[i]].effect ;
        if(battler_move_effect == move_effect){
            has_move_effect = 1;
        }
    }
    return has_move_effect;
}

BOOL ItemIsBadToTrade(u32 item, AiContext *ai){
    //these are items the ai wouldnt want to steal
    if((item == ITEM_IRON_BALL && !ai->trick_room_active)||
    item == ITEM_LAGGING_TAIL ||item == ITEM_TOXIC_ORB ||
    item == ITEM_FLAME_ORB || item == ITEM_RING_TARGET ||
    item == ITEM_STICKY_BARB || item == ITEM_CHOICE_SCARF ||
    item == ITEM_CHOICE_SPECS || item == ITEM_CHOICE_BAND ||
    item == ITEM_BLACK_SLUDGE || item == ITEM_MACHO_BRACE ||
    item == ITEM_POWER_BRACER || item == ITEM_POWER_BAND ||
    item == ITEM_POWER_ANKLET || item == ITEM_POWER_BELT|| 
    item == ITEM_POWER_LENS || item == ITEM_POWER_WEIGHT){
        return 1;
    }
    else{
        return 0;
    }
}

BOOL ItemIsDisruptive(u32 item, AiContext *ai){
    //these are items the ai wouldnt want to steal
    if((item == ITEM_IRON_BALL && !ai->trick_room_active)||
    item == ITEM_CHOICE_SCARF ||
    item == ITEM_CHOICE_SPECS || item == ITEM_CHOICE_BAND ||
    item == ITEM_STICKY_BARB ||
    item == ITEM_POWER_BRACER || item == ITEM_POWER_BAND ||
    item == ITEM_POWER_ANKLET || item == ITEM_POWER_BELT|| 
    item == ITEM_POWER_LENS || item == ITEM_POWER_WEIGHT){
        return 1;
    }
    else{
        return 0;
    }
}


BOOL IsDesirableAbility(u32 ability){
    if(ability == ABILITY_SPEED_BOOST ||
        ability == ABILITY_BATTLE_ARMOR ||
        ability == ABILITY_SAND_VEIL ||
        ability == ABILITY_STATIC ||
        ability == ABILITY_FLASH_FIRE||
        ability == ABILITY_WONDER_GUARD ||
        ability == ABILITY_SWIFT_SWIM ||
        ability == ABILITY_HUGE_POWER ||
        ability == ABILITY_RAIN_DISH ||
        ability == ABILITY_CUTE_CHARM ||
        ability == ABILITY_SHED_SKIN ||
        ability == ABILITY_MARVEL_SCALE ||
        ability == ABILITY_PURE_POWER||
        ability == ABILITY_CHLOROPHYLL ||
        ability == ABILITY_SHIELD_DUST ||
        ability == ABILITY_ADAPTABILITY ||
        ability == ABILITY_MAGIC_GUARD||
        ability == ABILITY_MOLD_BREAKER ||
        ability == ABILITY_SUPER_LUCK ||
        ability == ABILITY_UNAWARE ||
        ability == ABILITY_TINTED_LENS||
        ability == ABILITY_FILTER ||
        ability == ABILITY_SOLID_ROCK ||
        ability == ABILITY_RECKLESS ||
        ability == ABILITY_SHELL_ARMOR){
            return 1;
        }
    else{
        return 0;
    }
    
}

/**
 * @brief Check if the current move is a stat dropping move (Status moves only)
 * @param moveEffect move's effect
 * @return TRUE if it is a stat dropping move
*/
BOOL LONG_CALL DropsStatsAsStatus(u32 moveEffect) {
    u8 output = FALSE;
    for (u16 i = 0; i < NELEMS(DropStatList); i++) {
        if (moveEffect == DropStatList[i]) {
            output = TRUE;
            break;
        }
    }
    return output;
}

/**
 * @brief Check if the current move is a favored by mirror move
 * @param moveEffect move's effect
 * @return TRUE if it is in the mirror move list
*/
BOOL LONG_CALL IsInMirrorMoveList(u32 moveEffect) {
    u8 output = FALSE;
    for (u16 i = 0; i < NELEMS(MirrorMoveEffectList); i++) {
        if (moveEffect == MirrorMoveEffectList[i]) {
            output = TRUE;
            break;
        }
    }
    return output;
}

BOOL LONG_CALL IsInStatList(u32 moveEffect, const u16 StatList[], u16 ListLength) {
    u8 output = FALSE;
    for (u16 i = 0; i < ListLength; i++) {
        if (moveEffect == StatList[i]) {
            output = TRUE;
            break;
        }
    }
    return output;
}


void SetupStateVariables(struct BattleSystem *bsys, u32 attacker, AiContext *ai){
    struct BattleStruct *ctx = bsys->sp;
    u8 speed_calc;
    int work;
    ai->defender = 0;
    ai->defender_side = 0;
    ai->attacker_side = 1;
    ai->attacker_level = ctx->battlemon[attacker].level;
    ai->attacker_ability = ctx->battlemon[attacker].ability;
    ai->defender_ability = ctx->battlemon[ai->defender].ability;
    ai->attacker_item = ctx->battlemon[attacker].item;
    ai->defender_item = ctx->battlemon[ai->defender].item;
    ai->hold_effect = BattleItemDataGet(ctx, ai->attacker_item, 1);
    ai->defender_type_1 = ctx->battlemon[ai->defender].type1;
    ai->defender_type_2 = ctx->battlemon[ai->defender].type2;
    ai->attacker_type_1 = ctx->battlemon[attacker].type1;
    ai->attacker_type_2 = ctx->battlemon[attacker].type2;
    ai->attacker_hp = ctx->battlemon[attacker].hp;
    ai->defender_hp = ctx->battlemon[ai->defender].hp;
    ai->attacker_max_hp = ctx->battlemon[attacker].maxhp;
    ai->defender_max_hp = ctx->battlemon[ai->defender].maxhp;
    ai->attacker_percent_hp = ai->attacker_hp * 100 / ai->attacker_max_hp;
    ai->defender_percent_hp = ai->defender_hp * 100 / ai->defender_max_hp; 
    ai->attacker_speed = ctx->battlemon[attacker].speed;
    ai->defender_speed = ctx->battlemon[ai->defender].speed;
    ai->attacker_party_index = ctx->sel_mons_no[attacker];
    ai->defender_last_used_move = ctx->waza_no_old[ai->defender];
    ai->defender_last_move_effect = ctx->moveTbl[ai->defender_last_used_move].effect;
    ai->defender_turns_on_field = ctx->total_turn - ctx->battlemon[ai->defender].moveeffect.fakeOutCount;
    ai->attacker_turns_on_field = ctx->total_turn - ctx->battlemon[attacker].moveeffect.fakeOutCount;
    ai->fling_power = BattleItemDataGet(ctx, ai->attacker_item, ITEM_PARAM_FLING_POWER);
    ai->difference_in_attack_stages = ctx->battlemon[attacker].states[STAT_ATTACK] - ctx->battlemon[ai->defender].states[STAT_ATTACK];
    ai->difference_in_spatk_stages = ctx->battlemon[attacker].states[STAT_SPATK] - ctx->battlemon[ai->defender].states[STAT_SPATK];
    ai->difference_in_defense_stages = ctx->battlemon[attacker].states[STAT_DEFENSE] - ctx->battlemon[ai->defender].states[STAT_DEFENSE];
    ai->difference_in_spdef_stages = ctx->battlemon[attacker].states[STAT_SPDEF] - ctx->battlemon[ai->defender].states[STAT_SPDEF];
    ai->defender_moves_first = 0;
    ai->attacker_moves_first = 0;
    ai->is_speed_tie = 0;
    ai->trick_room_active = 0;
    ai->defender_has_bad_item = 0;
    
    speed_calc = CalcSpeed(ctx, ctx, ai->defender, attacker, CALCSPEED_FLAG_NO_PRIORITY); //checks actual turn order with field state considered
    //evaluates to 0 if ai->defender > attacker (false)
    //and 1 if ai->defender < attacker (true)
    //if speed tie, then 2.
    if(speed_calc == 0){
        ai->defender_moves_first = 1;
    }
    else if(speed_calc == 1){
        ai->attacker_moves_first = 1;
    }
    else if(speed_calc == 2){
        ai->is_speed_tie = 1;
    }

    if(ctx->field_condition & FIELD_STATUS_TRICK_ROOM){
        ai->trick_room_active = 1;
    }
    if((ai->defender_item == ITEM_IRON_BALL && !ai->trick_room_active)||ai->defender_item == ITEM_LAGGING_TAIL ||ai->defender_item == ITEM_TOXIC_ORB ||ai->defender_item == ITEM_FLAME_ORB || ai->defender_item == ITEM_RING_TARGET ||
    ai->defender_item == ITEM_STICKY_BARB || ai->defender_item == ITEM_CHOICE_SCARF || ai->defender_item == ITEM_CHOICE_SPECS || ai->defender_item == ITEM_CHOICE_BAND){
        ai->defender_has_bad_item = 1;
    }

    /*Check if target or user has stat change*/
    ai->hasStatChange = 0;
    for(int i = 0; i < STAT_MAX; i++){
        if (ctx->battlemon[attacker].states[i] != 0 ||
            ctx->battlemon[ai->defender].states[i] != 0){
            ai->hasStatChange = 1;
        }
    }
    
    /*Check if ai->defender has any IMPACTFUL hazards up (spikes at level 2 or higher)*/
    if(ctx->side_condition[ai->defender_side] & SIDE_STATUS_STEALTH_ROCK ||
        ctx->scw[ai->defender_side].spikesLayers >= 2 ||
        ctx->scw[ai->defender_side].toxicSpikesLayers >= 1){
        ai->defender_has_hazards = 1;
    }
    else{
        ai->defender_has_hazards = 0;
    }

    ai->defender_immune_to_poison = 
        (ai->defender_type_1 == TYPE_POISON || ai->defender_type_2 == TYPE_POISON || //TODO need to consider corrosion
        ai->defender_type_1 == TYPE_STEEL || ai->defender_type_2 == TYPE_STEEL ||
        ctx->battlemon[ai->defender].condition & STATUS_ALL || 
        ctx->side_condition[ai->defender_side] & SIDE_STATUS_SAFEGUARD ||
        ai->defender_ability == ABILITY_MAGIC_GUARD ||
        ai->defender_ability == ABILITY_IMMUNITY ||
        ai->defender_ability == ABILITY_POISON_HEAL ||
        (ai->defender_ability == ABILITY_LEAF_GUARD && ctx->field_condition & WEATHER_SUNNY_ANY)|| 
        (ai->defender_ability == ABILITY_HYDRATION && ctx->field_condition & WEATHER_RAIN_ANY) );
    ai->defender_immune_to_paralysis =
        (ai->defender_type_1 == TYPE_ELECTRIC || ai->defender_type_2 == TYPE_ELECTRIC ||
        ctx->battlemon[ai->defender].condition & STATUS_ALL || 
        ctx->side_condition[ai->defender_side] & SIDE_STATUS_SAFEGUARD ||
        ai->defender_ability == ABILITY_LIMBER ||
        (ai->defender_ability == ABILITY_LEAF_GUARD && ctx->field_condition & WEATHER_SUNNY_ANY)|| 
        (ai->defender_ability == ABILITY_HYDRATION && ctx->field_condition & WEATHER_RAIN_ANY) ||
        (ai->defender_ability == ABILITY_MAGIC_GUARD && ctx->battlemon[attacker].speed > ctx->battlemon[ai->defender].speed)) ;
    ai->defender_immune_to_burn =  
        (ai->defender_type_1 == TYPE_FIRE || ai->defender_type_2 == TYPE_FIRE ||
        ctx->battlemon[ai->defender].condition & STATUS_ALL || 
        ctx->side_condition[ai->defender_side] & SIDE_STATUS_SAFEGUARD ||
        ai->defender_ability == ABILITY_MAGIC_GUARD ||
        ai->defender_ability == ABILITY_WATER_VEIL) ||
        (ai->defender_ability == ABILITY_LEAF_GUARD && ctx->field_condition & WEATHER_SUNNY_ANY)|| 
        (ai->defender_ability == ABILITY_HYDRATION && ctx->field_condition & WEATHER_RAIN_ANY);
    ai->defender_immune_to_sleep = (ctx->battlemon[ai->defender].condition & STATUS_ALL || 
        ctx->side_condition[ai->defender_side] & SIDE_STATUS_SAFEGUARD ||
        ai->defender_ability == ABILITY_VITAL_SPIRIT ||
        ai->defender_ability == ABILITY_INSOMNIA || 
        (ai->defender_ability == ABILITY_LEAF_GUARD && ctx->field_condition & WEATHER_SUNNY_ANY)|| 
        (ai->defender_ability == ABILITY_HYDRATION && ctx->field_condition & WEATHER_RAIN_ANY) );
    ai->attacker_move_effectiveness = 0;
    ai->party_size_attacking = Battle_GetClientPartySize(bsys, attacker);
    ai->living_attacking_members = 0;
    ai->party_size_defending = Battle_GetClientPartySize(bsys, ai->defender);
    ai->living_defending_members = 0;
    ai->statused_attacking_mons = 0;
    ai->damaged_attacking_mons = 0;

    /*Check if attacker's team has anyone status or damaged*/
    for (int i = 0; i < ai->party_size_attacking; i++) {
        struct PartyPokemon * current_mon_attacking = Battle_GetClientPartyMon(bsys, attacker, i);

        if(!(GetMonData(current_mon_attacking, MON_DATA_HP, 0) == 0 ||
        GetMonData(current_mon_attacking, MON_DATA_SPECIES_OR_EGG, 0) == 0||
        GetMonData(current_mon_attacking, MON_DATA_SPECIES_OR_EGG, 0) == 494)){

            //similar to beat up
            ai->living_attacking_members++;

            //check if any LIVING members are damaged or statused
            work = GetMonData(current_mon_attacking, MON_DATA_STATUS, NULL);
        
            if(GetMonData(current_mon_attacking, MON_DATA_HP, 0) !=
            GetMonData(current_mon_attacking, MON_DATA_MAXHP, 0)){
                ai->damaged_attacking_mons++;
            }
            if(!(work & STATUS_NONE)){
                ai->statused_attacking_mons++;
            }
        }
    }

    /*Loop over defending team*/
    for (int i = 0; i < ai->party_size_defending; i++) {
        struct PartyPokemon * current_mon_defending = Battle_GetClientPartyMon(bsys, ai->defender, i);
        if(!(GetMonData(current_mon_defending, MON_DATA_HP, 0) == 0 ||
        GetMonData(current_mon_defending, MON_DATA_SPECIES_OR_EGG, 0) == 0||
        GetMonData(current_mon_defending, MON_DATA_SPECIES_OR_EGG, 0) == 494)){
            ai->living_defending_members++;
        }
    }

    ai->damaged_attacking_mons = 0;
    ai->statused_attacking_mons = 0;
    ai->attacker_knows_psych_up = 0;
    ai->attacker_moves_known = GetBattlerLearnedMoveCount(bsys, ctx, attacker);
    ai->attacker_has_super_effective_move = 0;
    ai->attacker_has_damaging_move = 0;
    //CalcBaseDamage(bsys, ctx, ai->attacker_move, ctx->side_condition[ai->defender_side],ctx->field_condition, ctx->moveTbl[ai->attacker_move].power, 0, attacker, ai->defender, 0);
    u32 temp = 0;
    /*Loop over all moves for checking certain conditions*/
    /*Set up max roll damage calculations for all known moves.
    Also check if user has a super-effective move*/
    for(int i = 0; i < ai->attacker_moves_known; i++){

        int attacker_move_check = ctx->battlemon[attacker].move[i];
        int attacker_effect_check = ctx->moveTbl[attacker_move_check].effect;
        int attacker_move_type_check = ctx->moveTbl[attacker_move_check].type;\
        int special_move_power = 0;
        if(attacker_effect_check == MOVE_EFFECT_RANDOM_POWER_10_CASES){
            special_move_power = 71;
        }
        ai->attacker_max_roll_move_damages[i] = CalcBaseDamage(bsys, ctx, attacker_move_check, ctx->side_condition[ai->defender_side],ctx->field_condition, ctx->moveTbl[attacker_move_check].power, special_move_power, attacker, ai->defender, 0);
        ai->attacker_max_roll_move_damages[i] = ServerDoTypeCalcMod(bsys, ctx, attacker_move_check, 0, attacker, ai->defender, ai->attacker_max_roll_move_damages[i], &temp);

        /*Directly modify max roll damages for multihit moves by 3.0 (average damage is 3.1x)*/
        //serparately add in type calc after base damage. will need to add in consideration for multihit moves
        if(attacker_move_check == MOVE_EFFECT_MULTI_HIT){
            ai->attacker_max_roll_move_damages[i] = ai->attacker_max_roll_move_damages[i] * 3;
        }
        //if flat damage moves, set to level (even for psywave)
        else if(attacker_effect_check == MOVE_EFFECT_LEVEL_DAMAGE_FLAT || attacker_move_check == MOVE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL){
            ai->attacker_max_roll_move_damages[i] = ai->attacker_level;
        }
        else if(attacker_effect_check == MOVE_EFFECT_10_DAMAGE_FLAT){//this is misnamed in hg-engine (sonicboom)
            ai->attacker_max_roll_move_damages[i] = 20;
        }
        else if(attacker_effect_check == MOVE_EFFECT_40_DAMAGE_FLAT){//dragon rage
            ai->attacker_max_roll_move_damages[i] = 40;
        }
        else if(attacker_effect_check == MOVE_EFFECT_POISON_MULTI_HIT ||
                attacker_effect_check == MOVE_EFFECT_HIT_TWICE){//twineedle
            ai->attacker_max_roll_move_damages[i] = ai->attacker_max_roll_move_damages[i] * 2;
        }

        if(ai->attacker_max_roll_move_damages[i] > 0){
            ai->attacker_has_damaging_move = 1;
        }
        if(attacker_move_check == MOVE_PSYCH_UP){
            ai->attacker_knows_psych_up = 1;
        }
        AITypeCalc(ctx, attacker_move_check, attacker_move_type_check, ai->attacker_ability, ai->defender_ability, ai->hold_effect, ai->defender_type_1, ai->defender_type_2, & ai->attacker_move_effectiveness);
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_SUPER_EFFECTIVE){
            ai->attacker_has_super_effective_move = 1;
        }
    }
}