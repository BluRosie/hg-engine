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

// quick hello world example that just runs through the moves and selects the highest base power one
// likely breaks roamers, but we'll get there when we get there
enum AIActionChoice __attribute__((section (".init"))) TrainerAI_Main(struct BattleSystem *bsys, u32 battler)
{
    enum AIActionChoice result = AI_ENEMY_ATTACK_1, highestBasePower = 0;
    struct BattleStruct *ctx = bsys->sp;

    int moveScores[4] = {0};
    int defender = 0;
    int defender_side = 0;

    for (int i = 0; i < 4; i++)
    {
        //check for basic ability immunities, and score them low.
        if(ctx->battlemon[battler].ability != ABILITY_MOLD_BREAKER){
            if(ctx->moveTbl[ctx->battlemon[battler].move[i]].type == TYPE_ELECTRIC && //electric
                (ctx->battlemon[defender].ability == ABILITY_VOLT_ABSORB ||
                ctx->battlemon[defender].ability == ABILITY_LIGHTNING_ROD ||
                ctx->battlemon[defender].ability == ABILITY_MOTOR_DRIVE) ){
                moveScores[i] = -10;
            }
            if(ctx->moveTbl[ctx->battlemon[battler].move[i]].type == TYPE_WATER && //water
                (ctx->battlemon[defender].ability == ABILITY_STORM_DRAIN ||
                ctx->battlemon[defender].ability == ABILITY_WATER_ABSORB ||
                ctx->battlemon[defender].ability == ABILITY_DRY_SKIN) ){
                moveScores[i] = -10;
            }
            if(ctx->moveTbl[ctx->battlemon[battler].move[i]].type == TYPE_FIRE && //fire
                (ctx->battlemon[defender].ability == ABILITY_FLASH_FIRE) ){
                moveScores[i] = -10;
            }
            if(ctx->moveTbl[ctx->battlemon[battler].move[i]].type == TYPE_GRASS && //grass
                (ctx->battlemon[defender].ability == ABILITY_SAP_SIPPER) ){
                moveScores[i] = -10;
            }
            if(ctx->moveTbl[ctx->battlemon[battler].move[i]].type == TYPE_GROUND && //ground
                (ctx->battlemon[defender].ability == ABILITY_LEVITATE ||
                ctx->battlemon[defender].ability == ABILITY_EARTH_EATER) ){
                moveScores[i] = -10;
            }
            if(IsMoveSoundBased(ctx->battlemon[battler].move[i]) && //sound based moves
                ctx->battlemon[defender].ability == ABILITY_SOUNDPROOF){ 
                moveScores[i] = -10;
            }
            //if(attack isnt super effective && ctx->battlemon[defender].ability == ABILITY_WONDERGUARD){
            //    moveScores[i] = -10;
            //}

        }//ability immunities


        //check for new gen type immunities

        /* Check for grass immunity to powder moves*/
        if((ctx->battlemon[defender].type1 == TYPE_GRASS || ctx->battlemon[defender].type2 == TYPE_GRASS) && 
         (ctx->battlemon[battler].move[i] == MOVE_LEECH_SEED ||
         ctx->battlemon[battler].move[i] == MOVE_SPORE ||
         ctx->battlemon[battler].move[i] == MOVE_COTTON_SPORE ||
         ctx->battlemon[battler].move[i] == MOVE_MAGIC_POWDER ||
         ctx->battlemon[battler].move[i] == MOVE_POISON_POWDER ||
         ctx->battlemon[battler].move[i] == MOVE_POWDER ||
         //ctx->battlemon[battler].move[i] == MOVE_RAGE_POWDER || rage powder is self-targetting, so is defender in this case the user?
         ctx->battlemon[battler].move[i] == MOVE_SLEEP_POWDER ||
         ctx->battlemon[battler].move[i] == MOVE_STUN_SPORE)){
            moveScores[i] = -10;
        }

        /* Check for dark immunity to prankster + status moves*/
        if((ctx->battlemon[defender].type1 == TYPE_DARK || ctx->battlemon[defender].type2 == TYPE_DARK) && 
            (ctx->moveTbl[ctx->battlemon[battler].move[i]].split == SPLIT_STATUS && ctx->battlemon[battler].ability == ABILITY_PRANKSTER)){
            moveScores[i] = -10;
        }

        /* Check for immunity to paralysis*/
        if((ctx->moveTbl[ctx->battlemon[battler].move[i]].effect == MOVE_EFFECT_STATUS_PARALYZE) && 
            (ctx->battlemon[defender].type1 == TYPE_ELECTRIC || ctx->battlemon[defender].type2 == TYPE_ELECTRIC ||
                 ctx->battlemon[defender].condition != STATUS_NONE || 
                 ctx->side_condition[defender_side] & SIDE_STATUS_SAFEGUARD ||
                 ctx->battlemon[defender].ability == ABILITY_LIMBER ||
                 (ctx->battlemon[defender].ability == ABILITY_LEAF_GUARD && ctx->field_condition & WEATHER_SUNNY_ANY)|| 
                 (ctx->battlemon[defender].ability == ABILITY_HYDRATION && ctx->field_condition & WEATHER_RAIN_ANY) ||
                 (ctx->battlemon[defender].ability == ABILITY_MAGIC_GUARD && ctx->battlemon[battler].speed > ctx->battlemon[defender].speed)) 
            ){
            moveScores[i] = -10;
        }

        /* Check for immunity to burn*/
        if((ctx->moveTbl[ctx->battlemon[battler].move[i]].effect == MOVE_EFFECT_STATUS_BURN) && 
            (ctx->battlemon[defender].type1 == TYPE_FIRE || ctx->battlemon[defender].type2 == TYPE_FIRE ||
             ctx->battlemon[defender].condition != STATUS_NONE || 
             ctx->side_condition[defender_side] & SIDE_STATUS_SAFEGUARD ||
             ctx->battlemon[defender].ability == ABILITY_MAGIC_GUARD ||
             ctx->battlemon[defender].ability == ABILITY_WATER_VEIL) ||
             (ctx->battlemon[defender].ability == ABILITY_LEAF_GUARD && ctx->field_condition & WEATHER_SUNNY_ANY)|| 
             (ctx->battlemon[defender].ability == ABILITY_HYDRATION && ctx->field_condition & WEATHER_RAIN_ANY)  ){
            moveScores[i] = -10;
        }

        /* Check for immunity to poison/badly poison*/
        if((ctx->moveTbl[ctx->battlemon[battler].move[i]].effect == MOVE_EFFECT_STATUS_POISON ||
            ctx->moveTbl[ctx->battlemon[battler].move[i]].effect == MOVE_EFFECT_STATUS_BADLY_POISON) &&
            (ctx->battlemon[defender].type1 == TYPE_POISON || ctx->battlemon[defender].type2 == TYPE_POISON ||
            ctx->battlemon[defender].type1 == TYPE_STEEL || ctx->battlemon[defender].type2 == TYPE_STEEL ||
            ctx->battlemon[defender].condition != STATUS_NONE || 
            ctx->side_condition[defender_side] & SIDE_STATUS_SAFEGUARD ||
            ctx->battlemon[defender].ability == ABILITY_MAGIC_GUARD ||
            ctx->battlemon[defender].ability == ABILITY_IMMUNITY ||
            ctx->battlemon[defender].ability == ABILITY_POISON_HEAL ||
            (ctx->battlemon[defender].ability == ABILITY_LEAF_GUARD && ctx->field_condition & WEATHER_SUNNY_ANY)|| 
            (ctx->battlemon[defender].ability == ABILITY_HYDRATION && ctx->field_condition & WEATHER_RAIN_ANY) ) ){
            moveScores[i] = -10;
        }
        /*Check for immunity to sleep*/
        if((ctx->moveTbl[ctx->battlemon[battler].move[i]].effect == MOVE_EFFECT_STATUS_SLEEP ||
             ctx->moveTbl[ctx->battlemon[battler].move[i]].effect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN) && 
            (
             ctx->battlemon[defender].condition != STATUS_NONE || 
             ctx->side_condition[defender_side] & SIDE_STATUS_SAFEGUARD ||
             ctx->battlemon[defender].ability == ABILITY_VITAL_SPIRIT ||
             ctx->battlemon[defender].ability == ABILITY_INSOMNIA || 
             (ctx->battlemon[defender].ability == ABILITY_LEAF_GUARD && ctx->field_condition & WEATHER_SUNNY_ANY)|| 
             (ctx->battlemon[defender].ability == ABILITY_HYDRATION && ctx->field_condition & WEATHER_RAIN_ANY) ) ){
            moveScores[i] = -10;
        }
        /*Check for immunity to confusion*/ 
        if((ctx->moveTbl[ctx->battlemon[battler].move[i]].effect == MOVE_EFFECT_STATUS_CONFUSE ||
            ctx->moveTbl[ctx->battlemon[battler].move[i]].effect == MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION || //swagger
            ctx->moveTbl[ctx->battlemon[battler].move[i]].effect == MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION|| //flatter
            ctx->moveTbl[ctx->battlemon[battler].move[i]].effect == MOVE_EFFECT_CONFUSE_ALL_ADJACENT ) && //teeter dance, need to change for double battles
            (ctx->battlemon[defender].condition2 & STATUS2_CONFUSION || 
             ctx->side_condition[defender_side] & SIDE_STATUS_SAFEGUARD ||
             ctx->battlemon[defender].ability == ABILITY_OWN_TEMPO )){
            moveScores[i] = -10;
        }
        /*Check for immunity to infatuation*/
        if((ctx->battlemon[battler].move[i] == MOVE_ATTRACT) && 
            (ctx->battlemon[defender].condition2 & STATUS2_ATTRACT || 
             ctx->battlemon[defender].ability == ABILITY_OBLIVIOUS ||
             ctx->battlemon[defender].sex == ctx->battlemon[defender].sex ||
             ctx->battlemon[defender].sex == POKEMON_GENDER_UNKNOWN)){
            moveScores[i] = -10;
        }

        u32 currentBasePower = ctx->moveTbl[ctx->battlemon[battler].move[i]].power;
        if (currentBasePower > highestBasePower)
        {
            highestBasePower = currentBasePower;
            result = i;
        }
    }
    return result;
}
