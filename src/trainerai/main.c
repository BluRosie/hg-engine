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
        //get move index first -- will be using it a lot.

        int attacker_move = ctx->battlemon[battler].move[i];
        int attacker_ability = ctx->battlemon[battler].ability;
        int defender_ability = ctx->battlemon[defender].ability;
        int attacker_move_effect = ctx->moveTbl[attacker_move].effect;

        //check for basic ability immunities, and score them low.
        if(attacker_ability != ABILITY_MOLD_BREAKER){
            if(ctx->moveTbl[attacker_move].type == TYPE_ELECTRIC && //electric
                (defender_ability == ABILITY_VOLT_ABSORB ||
                defender_ability == ABILITY_LIGHTNING_ROD ||
                defender_ability == ABILITY_MOTOR_DRIVE) ){
                moveScores[i] = -10;
            }
            if(ctx->moveTbl[attacker_move].type == TYPE_WATER && //water
                (defender_ability == ABILITY_STORM_DRAIN ||
                defender_ability == ABILITY_WATER_ABSORB ||
                defender_ability == ABILITY_DRY_SKIN) ){
                moveScores[i] = -10;
            }
            if(ctx->moveTbl[attacker_move].type == TYPE_FIRE && //fire
                (defender_ability == ABILITY_FLASH_FIRE) ){
                moveScores[i] = -10;
            }
            if(ctx->moveTbl[attacker_move].type == TYPE_GRASS && //grass
                (defender_ability == ABILITY_SAP_SIPPER) ){
                moveScores[i] = -10;
            }
            if(ctx->moveTbl[attacker_move].type == TYPE_GROUND && //ground
                (defender_ability == ABILITY_LEVITATE ||
                defender_ability == ABILITY_EARTH_EATER) ){
                moveScores[i] = -10;
            }
            if(IsMoveSoundBased(attacker_move) && //sound based moves
                defender_ability == ABILITY_SOUNDPROOF){ 
                moveScores[i] = -10;
            }
            //if(attack isnt super effective && defender_ability == ABILITY_WONDERGUARD){
            //    moveScores[i] = -10;
            //}

        }//ability immunities


        //check for new gen type immunities

        /* Check for grass immunity to powder moves*/
        if((IsPowderMove(attacker_move) || attacker_move == MOVE_LEECH_SEED) && HasType(ctx, defender, TYPE_GRASS) ){
            moveScores[i] = -10;
        }
        //attacker_move == MOVE_RAGE_POWDER  rage powder is self-targetting, so will grass types never click rage powder?
        

        /* Check for dark immunity to prankster + status moves*/
        if((ctx->battlemon[defender].type1 == TYPE_DARK || ctx->battlemon[defender].type2 == TYPE_DARK) && 
            (ctx->moveTbl[attacker_move].split == SPLIT_STATUS && attacker_ability == ABILITY_PRANKSTER)){
            moveScores[i] = -10;
        }

        /* Check for immunity to paralysis*/
        if((attacker_move_effect == MOVE_EFFECT_STATUS_PARALYZE) && 
            (ctx->battlemon[defender].type1 == TYPE_ELECTRIC || ctx->battlemon[defender].type2 == TYPE_ELECTRIC ||
                 ctx->battlemon[defender].condition != STATUS_NONE || 
                 ctx->side_condition[defender_side] & SIDE_STATUS_SAFEGUARD ||
                 defender_ability == ABILITY_LIMBER ||
                 (defender_ability == ABILITY_LEAF_GUARD && ctx->field_condition & WEATHER_SUNNY_ANY)|| 
                 (defender_ability == ABILITY_HYDRATION && ctx->field_condition & WEATHER_RAIN_ANY) ||
                 (defender_ability == ABILITY_MAGIC_GUARD && ctx->battlemon[battler].speed > ctx->battlemon[defender].speed)) 
            ){
            moveScores[i] = -10;
        }

        /* Check for immunity to burn*/
        if((attacker_move_effect == MOVE_EFFECT_STATUS_BURN) && 
            (ctx->battlemon[defender].type1 == TYPE_FIRE || ctx->battlemon[defender].type2 == TYPE_FIRE ||
             ctx->battlemon[defender].condition != STATUS_NONE || 
             ctx->side_condition[defender_side] & SIDE_STATUS_SAFEGUARD ||
             defender_ability == ABILITY_MAGIC_GUARD ||
             defender_ability == ABILITY_WATER_VEIL) ||
             (defender_ability == ABILITY_LEAF_GUARD && ctx->field_condition & WEATHER_SUNNY_ANY)|| 
             (defender_ability == ABILITY_HYDRATION && ctx->field_condition & WEATHER_RAIN_ANY)  ){
            moveScores[i] = -10;
        }

        /* Check for immunity to poison/badly poison*/
        if((attacker_move_effect == MOVE_EFFECT_STATUS_POISON ||
            attacker_move_effect == MOVE_EFFECT_STATUS_BADLY_POISON) &&
            (ctx->battlemon[defender].type1 == TYPE_POISON || ctx->battlemon[defender].type2 == TYPE_POISON || //need to consider corrosion
            ctx->battlemon[defender].type1 == TYPE_STEEL || ctx->battlemon[defender].type2 == TYPE_STEEL ||
            ctx->battlemon[defender].condition != STATUS_NONE || 
            ctx->side_condition[defender_side] & SIDE_STATUS_SAFEGUARD ||
            defender_ability == ABILITY_MAGIC_GUARD ||
            defender_ability == ABILITY_IMMUNITY ||
            defender_ability == ABILITY_POISON_HEAL ||
            (defender_ability == ABILITY_LEAF_GUARD && ctx->field_condition & WEATHER_SUNNY_ANY)|| 
            (defender_ability == ABILITY_HYDRATION && ctx->field_condition & WEATHER_RAIN_ANY) ) ){
            moveScores[i] = -10;
        }
        /*Check for immunity to sleep*/
        if((attacker_move_effect == MOVE_EFFECT_STATUS_SLEEP ||
             attacker_move_effect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN) && 
            (
             ctx->battlemon[defender].condition != STATUS_NONE || 
             ctx->side_condition[defender_side] & SIDE_STATUS_SAFEGUARD ||
             defender_ability == ABILITY_VITAL_SPIRIT ||
             defender_ability == ABILITY_INSOMNIA || 
             (defender_ability == ABILITY_LEAF_GUARD && ctx->field_condition & WEATHER_SUNNY_ANY)|| 
             (defender_ability == ABILITY_HYDRATION && ctx->field_condition & WEATHER_RAIN_ANY) ) ){
            moveScores[i] = -10;
        }
        /*Check for immunity to confusion*/ 
        if((attacker_move_effect == MOVE_EFFECT_STATUS_CONFUSE ||
            attacker_move_effect == MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION || //swagger
            attacker_move_effect == MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION|| //flatter
            attacker_move_effect == MOVE_EFFECT_CONFUSE_ALL_ADJACENT ) && //teeter dance, need to change for double battles
            (ctx->battlemon[defender].condition2 & STATUS2_CONFUSION || 
             ctx->side_condition[defender_side] & SIDE_STATUS_SAFEGUARD ||
             defender_ability == ABILITY_OWN_TEMPO )){
            moveScores[i] = -10;
        }
        /*Check for immunity to infatuation*/
        if((attacker_move == MOVE_ATTRACT) && 
            (ctx->battlemon[defender].condition2 & STATUS2_ATTRACT || 
             defender_ability == ABILITY_OBLIVIOUS ||
             ctx->battlemon[defender].sex == ctx->battlemon[defender].sex ||
             ctx->battlemon[defender].sex == POKEMON_GENDER_UNKNOWN)){
            moveScores[i] = -10;
        }

        /*Check for self-killing moves */

        int party_size_attacking = Battle_GetClientPartySize(bsys, defender);
        int living_attacking_members = 0;

        int party_size_defending = Battle_GetClientPartySize(bsys, battler);
        int living_defending_members = 0;

        for (i = 0; i < party_size_attacking; i++) {
            struct PartyPokemon * current_mon_attacking = Battle_GetClientPartyMon(bsys, battler, i);
            if(GetMonData(current_mon_attacking, MON_DATA_HP, 0) == 0 ||
            GetMonData(current_mon_attacking, MON_DATA_SPECIES_OR_EGG, 0) == 0||
            GetMonData(current_mon_attacking, MON_DATA_SPECIES_OR_EGG, 0) == 494 ||
            GetMonData(current_mon_attacking, MON_DATA_STATUS, 0) != 0){
                //same checks as Beat-Up
                living_attacking_members++;
            }
        }
        for (i = 0; i < party_size_defending; i++) {
            struct PartyPokemon * current_mon_defending = Battle_GetClientPartyMon(bsys, defender, i);
            if(GetMonData(current_mon_defending, MON_DATA_HP, 0) == 0 ||
            GetMonData(current_mon_defending, MON_DATA_SPECIES_OR_EGG, 0) == 0||
            GetMonData(current_mon_defending, MON_DATA_SPECIES_OR_EGG, 0) == 494 ||
            GetMonData(current_mon_defending, MON_DATA_STATUS, 0) != 0){
                //same checks as Beat-Up
                living_defending_members++;
            }
        }
        if((attacker_move == MOVE_EXPLOSION || attacker_move == MOVE_SELF_DESTRUCT || attacker_move == MOVE_MISTY_EXPLOSION) && 
        ((defender_ability == ABILITY_DAMP && attacker_ability != ABILITY_MOLD_BREAKER) ||
            (living_attacking_members == 1 && living_defending_members > 1))){
            moveScores[i] = -10; //prevents ai auto-losing the battle
        }
        else if((attacker_move == MOVE_EXPLOSION || attacker_move == MOVE_SELF_DESTRUCT || attacker_move == MOVE_MISTY_EXPLOSION) &&
             (living_attacking_members == 1 && living_defending_members == 1)){
            moveScores[i] = -1; //Ai will consider exploding if both parties have one Pokemon left
        }

        /*Handle nightmare*/
        if(attacker_move == MOVE_NIGHTMARE && 
        (ctx->battlemon[defender].condition2 & STATUS2_NIGHTMARE ||
            defender_ability == ABILITY_MAGIC_GUARD)){
            moveScores[i] = -10;
        }
        else if(attacker_move == MOVE_NIGHTMARE &&
            ctx->battlemon[defender].condition != STATUS_SLEEP){
            moveScores[i] = -8;
        }

        /*Handle dream eater*/
        if(attacker_move == MOVE_DREAM_EATER &&
            ctx->battlemon[defender].condition != STATUS_SLEEP){ //must be asleep
            moveScores[i] = -10;
        }

        /*Handle belly drum*/
        
        if(attacker_move == MOVE_BELLY_DRUM &&
            (ctx->battlemon[battler].hp*100 / (ctx->battlemon[battler].maxhp) < 51 )){
            moveScores[i] = -10;
        }

        /*Handle bad stat boosts*/
        
        if((attacker_move_effect == MOVE_EFFECT_SPEED_UP_3 || //trick room + only speed boost status move
            attacker_move_effect == MOVE_EFFECT_SPEED_UP_2 ||
            attacker_move_effect == MOVE_EFFECT_SPEED_UP) &&
            (ctx->field_condition & FIELD_STATUS_TRICK_ROOM)){
            moveScores[i] = -10;
        }

        if((attacker_move_effect == MOVE_EFFECT_EVA_UP || //No Guard +  self raising eva/acc
            attacker_move_effect == MOVE_EFFECT_EVA_UP_2 ||
            attacker_move_effect == MOVE_EFFECT_EVA_UP_3 ||
            attacker_move_effect == MOVE_EFFECT_EVA_UP_2_MINIMIZE ||
            attacker_move_effect == MOVE_EFFECT_ACC_UP ||
            attacker_move_effect == MOVE_EFFECT_ACC_UP_2 ||
            attacker_move_effect == MOVE_EFFECT_ACC_UP_3 ) &&
            (attacker_ability == ABILITY_NO_GUARD)){
            moveScores[i] = -10;
        }

        /*Avoid increasing already maxed stats using status moves*/

        // attack
        else if((attacker_move_effect == MOVE_EFFECT_ATK_UP ||
            attacker_move_effect == MOVE_EFFECT_ATK_UP_2 || 
            attacker_move_effect == MOVE_EFFECT_ATK_UP_3 ) &&
            (ctx->battlemon[battler].states[STAT_ATTACK] >= 6)){
            moveScores[i] = -10;
        }
        // defense
        if((attacker_move_effect == MOVE_EFFECT_DEF_UP ||
            attacker_move_effect == MOVE_EFFECT_DEF_UP_2 || 
            attacker_move_effect == MOVE_EFFECT_DEF_UP_3 ||
            attacker_move_effect == MOVE_EFFECT_DEF_UP_DOUBLE_ROLLOUT_POWER) &&
            (ctx->battlemon[battler].states[STAT_DEFENSE] >= 6)){
            moveScores[i] = -10;
        }
        // sp. atk
        else if((attacker_move_effect == MOVE_EFFECT_SP_ATK_UP ||
            attacker_move_effect == MOVE_EFFECT_SP_ATK_UP_2 || 
            attacker_move_effect == MOVE_EFFECT_SP_ATK_UP_3 ) &&
            (ctx->battlemon[battler].states[STAT_SPATK] >= 6)){
            moveScores[i] = -10;
        }
        //sp.def
        if((attacker_move_effect == MOVE_EFFECT_SP_DEF_UP ||
            attacker_move_effect == MOVE_EFFECT_SP_DEF_UP_2 || 
            attacker_move_effect == MOVE_EFFECT_SP_DEF_UP_3 ) &&
            (ctx->battlemon[battler].states[STAT_SPDEF] >= 6)){
            moveScores[i] = -10;
        }
        //speed
        if((attacker_move_effect == MOVE_EFFECT_SPEED_UP ||
            attacker_move_effect == MOVE_EFFECT_SPEED_UP_2 || 
            attacker_move_effect == MOVE_EFFECT_SPEED_UP_3 ) &&
            (ctx->battlemon[battler].states[STAT_SPEED] >= 6)){
            moveScores[i] = -10;
        }

        




        u32 currentBasePower = ctx->moveTbl[attacker_move].power;
        if (currentBasePower > highestBasePower)
        {
            highestBasePower = currentBasePower;
            result = i;
        }
    }
    return result;
}
