#include "../../include/types.h"
#include "../../include/config.h"
#include "../../include/battle.h"
#include "../../include/mega.h"
#include "../../include/pokemon.h"
#include "../../include/trainer_ai.h"
#include "../../include/constants/ability.h"
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


        u32 currentBasePower = ctx->moveTbl[ctx->battlemon[battler].move[i]].power;
        if (currentBasePower > highestBasePower)
        {
            highestBasePower = currentBasePower;
            result = i;
        }
    }
    return result;
}
