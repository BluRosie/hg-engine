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

// quick hello world example that just runs through the moves and selects the highest base power one
// likely breaks roamers, but we'll get there when we get there
enum AIActionChoice __attribute__((section (".init"))) TrainerAI_Main(struct BattleSystem *bsys, u32 attacker)
{
    enum AIActionChoice result = AI_ENEMY_ATTACK_1, highestBasePower = 0;
    struct BattleStruct *ctx = bsys->sp;

    int moveScores[4] = {0};
    int defender = 0;
    int defender_side = 0;
    int attacker_side = 1;

    for (int i = 0; i < 4; i++)
    {
        //get move index first -- will be using it a lot.

        int attacker_move = ctx->battlemon[attacker].move[i];
        int attacker_ability = ctx->battlemon[attacker].ability;
        int defender_ability = ctx->battlemon[defender].ability;
        int attacker_move_effect = ctx->moveTbl[attacker_move].effect;
        int attacker_move_effectiveness = 0;
        
        int attacker_item = ctx->battlemon[attacker].item;
        int hold_effect = BattleItemDataGet(ctx, attacker_item, 1);
        int defender_type_1 = ctx->battlemon[defender].type1;
        int defender_type_2 = ctx->battlemon[defender].type2;
        int attacker_type_1 = ctx->battlemon[attacker].type1;
        int attacker_type_2 = ctx->battlemon[attacker].type2;

        int attacker_move_type = ctx->moveTbl[attacker_move].type;
        int attacker_hp = ctx->battlemon[attacker].hp;
        int attacker_max_hp = ctx->battlemon[attacker].maxhp;
        int attacker_speed = ctx->battlemon[attacker].speed;
        int defender_speed = ctx->battlemon[defender].speed;
        u32 effectiveness_flag = 0;

        /*Fill effectiveness_flag with appropriate value first*/
        AITypeCalc(ctx, attacker_move, attacker_move_type, attacker_ability, defender_ability, hold_effect, defender_type_1, defender_type_2, & effectiveness_flag);
        
        /*Check for defender type immunities.*/
        if(effectiveness_flag == MOVE_STATUS_FLAG_NOT_EFFECTIVE){
            moveScores[i] -= 10;
        }
        /*Check for wonder guard*/
        if(effectiveness_flag != MOVE_STATUS_FLAG_SUPER_EFFECTIVE &&
            defender_ability == ABILITY_WONDER_GUARD && attacker_ability != ABILITY_MOLD_BREAKER){
            moveScores[i] -= 10;
        }
        //check for basic ability immunities, and score them low.
        if(attacker_ability != ABILITY_MOLD_BREAKER){
            if(attacker_move_type == TYPE_ELECTRIC && //electric
                (defender_ability == ABILITY_VOLT_ABSORB ||
                defender_ability == ABILITY_LIGHTNING_ROD ||
                defender_ability == ABILITY_MOTOR_DRIVE) ){
                moveScores[i] -= 10;
            }
            if(attacker_move_type == TYPE_WATER && //water
                (defender_ability == ABILITY_STORM_DRAIN ||
                defender_ability == ABILITY_WATER_ABSORB ||
                defender_ability == ABILITY_DRY_SKIN) ){
                moveScores[i] -= 10;
            }
            if(attacker_move_type == TYPE_FIRE && //fire
                (defender_ability == ABILITY_FLASH_FIRE) ){
                moveScores[i] -= 10;
            }
            if(attacker_move_type == TYPE_GRASS && //grass
                (defender_ability == ABILITY_SAP_SIPPER) ){
                moveScores[i] -= 10;
            }
            if(attacker_move_type == TYPE_GROUND && //ground
                (defender_ability == ABILITY_LEVITATE ||
                defender_ability == ABILITY_EARTH_EATER) ){
                moveScores[i] -= 10;
            }
            if(IsMoveSoundBased(attacker_move) && //sound based moves
                defender_ability == ABILITY_SOUNDPROOF){ 
                moveScores[i] -= 10;
            }
            //if(attack isnt super effective && defender_ability == ABILITY_WONDERGUARD){
            //    moveScores[i] -= 10;
            //}

        }//ability immunities


        //check for new gen type immunities

        /* Check for grass immunity to powder moves*/
        if((IsPowderMove(attacker_move) || attacker_move == MOVE_LEECH_SEED) && HasType(ctx, defender, TYPE_GRASS) ){
            moveScores[i] -= 10;
        }
        //attacker_move == MOVE_RAGE_POWDER  rage powder is self-targetting, so will grass types never click rage powder?
        

        /* Check for dark immunity to prankster + status moves*/
        if((defender_type_1 == TYPE_DARK || defender_type_2 == TYPE_DARK) && 
            (ctx->moveTbl[attacker_move].split == SPLIT_STATUS && attacker_ability == ABILITY_PRANKSTER)){
            moveScores[i] -= 10;
        }

        /* Check for immunity to paralysis*/
        if((attacker_move_effect == MOVE_EFFECT_STATUS_PARALYZE) && 
            (defender_type_1 == TYPE_ELECTRIC || defender_type_2 == TYPE_ELECTRIC ||
                 ctx->battlemon[defender].condition != STATUS_NONE || 
                 ctx->side_condition[defender_side] & SIDE_STATUS_SAFEGUARD ||
                 defender_ability == ABILITY_LIMBER ||
                 (defender_ability == ABILITY_LEAF_GUARD && ctx->field_condition & WEATHER_SUNNY_ANY)|| 
                 (defender_ability == ABILITY_HYDRATION && ctx->field_condition & WEATHER_RAIN_ANY) ||
                 (defender_ability == ABILITY_MAGIC_GUARD && ctx->battlemon[attacker].speed > ctx->battlemon[defender].speed)) 
            ){
            moveScores[i] -= 10;
        }

        /* Check for immunity to burn*/
        if((attacker_move_effect == MOVE_EFFECT_STATUS_BURN) && 
            (defender_type_1 == TYPE_FIRE || defender_type_2 == TYPE_FIRE ||
             ctx->battlemon[defender].condition != STATUS_NONE || 
             ctx->side_condition[defender_side] & SIDE_STATUS_SAFEGUARD ||
             defender_ability == ABILITY_MAGIC_GUARD ||
             defender_ability == ABILITY_WATER_VEIL) ||
             (defender_ability == ABILITY_LEAF_GUARD && ctx->field_condition & WEATHER_SUNNY_ANY)|| 
             (defender_ability == ABILITY_HYDRATION && ctx->field_condition & WEATHER_RAIN_ANY)  ){
            moveScores[i] -= 10;
        }

        /* Check for immunity to poison/badly poison*/
        if((attacker_move_effect == MOVE_EFFECT_STATUS_POISON ||
            attacker_move_effect == MOVE_EFFECT_STATUS_BADLY_POISON) &&
            (defender_type_1 == TYPE_POISON || defender_type_2 == TYPE_POISON || //need to consider corrosion
            defender_type_1 == TYPE_STEEL || defender_type_2 == TYPE_STEEL ||
            ctx->battlemon[defender].condition != STATUS_NONE || 
            ctx->side_condition[defender_side] & SIDE_STATUS_SAFEGUARD ||
            defender_ability == ABILITY_MAGIC_GUARD ||
            defender_ability == ABILITY_IMMUNITY ||
            defender_ability == ABILITY_POISON_HEAL ||
            (defender_ability == ABILITY_LEAF_GUARD && ctx->field_condition & WEATHER_SUNNY_ANY)|| 
            (defender_ability == ABILITY_HYDRATION && ctx->field_condition & WEATHER_RAIN_ANY) ) ){
            moveScores[i] -= 10;
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
            moveScores[i] -= 10;
        }
        /*Check for immunity to confusion*/ 
        if((attacker_move_effect == MOVE_EFFECT_STATUS_CONFUSE ||
            attacker_move_effect == MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION || //swagger
            attacker_move_effect == MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION|| //flatter
            attacker_move_effect == MOVE_EFFECT_CONFUSE_ALL_ADJACENT ) && //teeter dance, need to change for double battles
            (ctx->battlemon[defender].condition2 & STATUS2_CONFUSION || 
             ctx->side_condition[defender_side] & SIDE_STATUS_SAFEGUARD ||
             defender_ability == ABILITY_OWN_TEMPO )){
            moveScores[i] -= 10;
        }
        /*Check for immunity to infatuation*/
        if((attacker_move_effect == MOVE_EFFECT_INFATUATE) && 
            (ctx->battlemon[defender].condition2 & STATUS2_ATTRACT || 
             defender_ability == ABILITY_OBLIVIOUS ||
             ctx->battlemon[defender].sex == ctx->battlemon[defender].sex ||
             ctx->battlemon[defender].sex == POKEMON_GENDER_UNKNOWN)){
            moveScores[i] -= 10;
        }

        /*Check for self-killing moves */

        int party_size_attacking = Battle_GetClientPartySize(bsys, defender);
        int living_attacking_members = 0;

        int party_size_defending = Battle_GetClientPartySize(bsys, attacker);
        int living_defending_members = 0;

        for (i = 0; i < party_size_attacking; i++) {
            struct PartyPokemon * current_mon_attacking = Battle_GetClientPartyMon(bsys, attacker, i);
            if(!(GetMonData(current_mon_attacking, MON_DATA_HP, 0) == 0 ||
            GetMonData(current_mon_attacking, MON_DATA_SPECIES_OR_EGG, 0) == 0||
            GetMonData(current_mon_attacking, MON_DATA_SPECIES_OR_EGG, 0) == 494)){
                //similar to beat up
                living_attacking_members++;
            }
        }
        for (i = 0; i < party_size_defending; i++) {
            struct PartyPokemon * current_mon_defending = Battle_GetClientPartyMon(bsys, defender, i);
            if(!(GetMonData(current_mon_defending, MON_DATA_HP, 0) == 0 ||
            GetMonData(current_mon_defending, MON_DATA_SPECIES_OR_EGG, 0) == 0||
            GetMonData(current_mon_defending, MON_DATA_SPECIES_OR_EGG, 0) == 494)){
                living_defending_members++;
            }
        }
        if((attacker_move_effect == MOVE_EFFECT_HALVE_DEFENSE ) && 
        ((defender_ability == ABILITY_DAMP && attacker_ability != ABILITY_MOLD_BREAKER) ||
            (living_attacking_members == 1 && living_defending_members > 1))){
            moveScores[i] -= 10; //prevents ai auto-losing the battle
        }
        else if((attacker_move_effect == MOVE_EFFECT_HALVE_DEFENSE) &&
             (living_attacking_members == 1 && living_defending_members == 1)){
            moveScores[i] = -1; //Ai will consider exploding if both parties have one Pokemon left
        }

        /*Handle nightmare*/
        if(attacker_move_effect == MOVE_EFFECT_STATUS_NIGHTMARE && 
        (ctx->battlemon[defender].condition2 & STATUS2_NIGHTMARE ||
            defender_ability == ABILITY_MAGIC_GUARD)){
            moveScores[i] -= 10;
        }
        else if(attacker_move_effect == MOVE_EFFECT_STATUS_NIGHTMARE &&
            ctx->battlemon[defender].condition != STATUS_SLEEP){
            moveScores[i] -= 8;
        }

        /*Handle dream eater*/
        if(attacker_move_effect == MOVE_EFFECT_RECOVER_DAMAGE_SLEEP &&
            ctx->battlemon[defender].condition != STATUS_SLEEP){ //must be asleep
            moveScores[i] -= 10;
        }

        /*Handle belly drum*/
        
        if(attacker_move_effect == MOVE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP &&
            (attacker_hp * 100 / attacker_max_hp < 51 )){
            moveScores[i] -= 10;
        }

        /*Handle bad stat boosts*/
        
        if((attacker_move_effect == MOVE_EFFECT_SPEED_UP_3 || //trick room + only speed boost status move
            attacker_move_effect == MOVE_EFFECT_SPEED_UP_2 ||
            attacker_move_effect == MOVE_EFFECT_SPEED_UP) &&
            (ctx->field_condition & FIELD_STATUS_TRICK_ROOM)){
            moveScores[i] -= 10;
        }

        if((attacker_move_effect == MOVE_EFFECT_EVA_UP || //No Guard +  self raising eva/acc
            attacker_move_effect == MOVE_EFFECT_EVA_UP_2 ||
            attacker_move_effect == MOVE_EFFECT_EVA_UP_3 ||
            attacker_move_effect == MOVE_EFFECT_EVA_UP_2_MINIMIZE ||
            attacker_move_effect == MOVE_EFFECT_ACC_UP ||
            attacker_move_effect == MOVE_EFFECT_ACC_UP_2 ||
            attacker_move_effect == MOVE_EFFECT_ACC_UP_3 ) &&
            (attacker_ability == ABILITY_NO_GUARD)){
            moveScores[i] -= 10;
        }

        /*Avoid increasing already maxed stats using status moves*/

        // attack
        if((attacker_move_effect == MOVE_EFFECT_ATK_UP ||
            attacker_move_effect == MOVE_EFFECT_ATK_UP_2 || 
            attacker_move_effect == MOVE_EFFECT_ATK_UP_3 ) &&
            (ctx->battlemon[attacker].states[STAT_ATTACK] >= 12)){
            moveScores[i] -= 10;
        }
        // defense
        else if((attacker_move_effect == MOVE_EFFECT_DEF_UP ||
            attacker_move_effect == MOVE_EFFECT_DEF_UP_2 || 
            attacker_move_effect == MOVE_EFFECT_DEF_UP_3 ||
            attacker_move_effect == MOVE_EFFECT_DEF_UP_DOUBLE_ROLLOUT_POWER) &&
            (ctx->battlemon[attacker].states[STAT_DEFENSE] >= 12)){
            moveScores[i] -= 10;
        }
        // sp. atk
        else if((attacker_move_effect == MOVE_EFFECT_SP_ATK_UP ||
            attacker_move_effect == MOVE_EFFECT_SP_ATK_UP_2 || 
            attacker_move_effect == MOVE_EFFECT_SP_ATK_UP_3 ) &&
            (ctx->battlemon[attacker].states[STAT_SPATK] >= 12)){
            moveScores[i] -= 10;
        }
        //sp.def
        else if((attacker_move_effect == MOVE_EFFECT_SP_DEF_UP ||
            attacker_move_effect == MOVE_EFFECT_SP_DEF_UP_2 || 
            attacker_move_effect == MOVE_EFFECT_SP_DEF_UP_3 ) &&
            (ctx->battlemon[attacker].states[STAT_SPDEF] >= 12)){
            moveScores[i] -= 10;
        }
        //speed
        else if((attacker_move_effect == MOVE_EFFECT_SPEED_UP ||
            attacker_move_effect == MOVE_EFFECT_SPEED_UP_2 || 
            attacker_move_effect == MOVE_EFFECT_SPEED_UP_3 ) &&
            (ctx->battlemon[attacker].states[STAT_SPEED] >= 12)){
            moveScores[i] -= 10;
        }

        /*Check for abilities preventing atk drop*/
        if((attacker_move_effect == MOVE_EFFECT_ATK_DOWN_2 ||
            attacker_move_effect == MOVE_EFFECT_ATK_DOWN) &&
            defender_ability == ABILITY_HYPER_CUTTER ||
            defender_ability == ABILITY_WHITE_SMOKE ||
            defender_ability == ABILITY_CLEAR_BODY){
            moveScores[i] -= 10;
        }
        if((attacker_move_effect == MOVE_EFFECT_EVA_DOWN || //No Guard +  lowering eva/acc
            attacker_move_effect == MOVE_EFFECT_EVA_DOWN_2 ||
            attacker_move_effect == MOVE_EFFECT_EVA_DOWN_3 ||
            attacker_move_effect == MOVE_EFFECT_ACC_DOWN ||
            attacker_move_effect == MOVE_EFFECT_ACC_DOWN_2 ||
            attacker_move_effect == MOVE_EFFECT_ACC_DOWN_3 ) &&
            (attacker_ability == ABILITY_NO_GUARD ||
             defender_ability == ABILITY_NO_GUARD)){
            moveScores[i] -= 10;
        }

        if((attacker_move_effect == MOVE_EFFECT_ACC_DOWN || //Keen eye interaction
            attacker_move_effect == MOVE_EFFECT_ACC_DOWN_2 ||
            attacker_move_effect == MOVE_EFFECT_ACC_DOWN_3 ) &&
            (defender_ability == ABILITY_KEEN_EYE)){
            moveScores[i] -= 10;
        }
        /*Handle clear body & white smoke*/
        if((attacker_move_effect == MOVE_EFFECT_ATK_DOWN ||
            attacker_move_effect == MOVE_EFFECT_ATK_DOWN_2 ||
            attacker_move_effect == MOVE_EFFECT_ATK_DOWN_3 ||
            attacker_move_effect == MOVE_EFFECT_DEF_DOWN ||
            attacker_move_effect == MOVE_EFFECT_DEF_DOWN_2 ||
            attacker_move_effect == MOVE_EFFECT_DEF_DOWN_3 ||
            attacker_move_effect == MOVE_EFFECT_SPEED_DOWN ||
            attacker_move_effect == MOVE_EFFECT_SPEED_DOWN_2 ||\
            attacker_move_effect == MOVE_EFFECT_SPEED_DOWN_3 ||
            attacker_move_effect == MOVE_EFFECT_SP_ATK_DOWN ||
            attacker_move_effect == MOVE_EFFECT_SP_ATK_DOWN_2 ||
            attacker_move_effect == MOVE_EFFECT_SP_ATK_DOWN_3 ||
            attacker_move_effect == MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER ||
            attacker_move_effect == MOVE_EFFECT_SP_DEF_DOWN ||
            attacker_move_effect == MOVE_EFFECT_SP_DEF_DOWN_2 ||
            attacker_move_effect == MOVE_EFFECT_SP_DEF_DOWN_3 ||
            attacker_move_effect == MOVE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2 ||
            attacker_move_effect == MOVE_EFFECT_ATK_SP_ATK_DOWN || //need to handle parting shot
            attacker_move_effect == MOVE_EFFECT_VENOM_DRENCH ||
            attacker_move_effect == MOVE_EFFECT_ATK_DEF_DOWN ||
            attacker_move_effect == MOVE_EFFECT_EVA_DOWN || //No Guard +  lowering eva/acc
            attacker_move_effect == MOVE_EFFECT_EVA_DOWN_2 ||
            attacker_move_effect == MOVE_EFFECT_EVA_DOWN_3 ||
            attacker_move_effect == MOVE_EFFECT_ACC_DOWN || 
            attacker_move_effect == MOVE_EFFECT_ACC_DOWN_2 ||
            attacker_move_effect == MOVE_EFFECT_ACC_DOWN_3)&&
            ((defender_ability == ABILITY_CLEAR_BODY ||
            defender_ability == ABILITY_WHITE_SMOKE))){
                moveScores[i] -= 10;
            }

        /*Handle any status stat-dropping move when at +6 or -6.
        This is going to be a massive check.*/
        // attack
        if((attacker_move_effect == MOVE_EFFECT_ATK_DOWN ||
            attacker_move_effect == MOVE_EFFECT_ATK_DOWN_2 || 
            attacker_move_effect == MOVE_EFFECT_ATK_DOWN_3 ) &&
            (ctx->battlemon[defender].states[STAT_ATTACK] <= 0)){
            moveScores[i] -= 10;
        }
        // defense
        else if((attacker_move_effect == MOVE_EFFECT_DEF_DOWN ||
            attacker_move_effect == MOVE_EFFECT_DEF_DOWN_2 || 
            attacker_move_effect == MOVE_EFFECT_DEF_DOWN_3) &&
            (ctx->battlemon[defender].states[STAT_DEFENSE] <= 0)){
            moveScores[i] -= 10;
        }
        // sp. atk
        else if((attacker_move_effect == MOVE_EFFECT_SP_ATK_DOWN ||
            attacker_move_effect == MOVE_EFFECT_SP_ATK_DOWN_2 || 
            attacker_move_effect == MOVE_EFFECT_SP_ATK_DOWN_3 ) &&
            (ctx->battlemon[defender].states[STAT_SPATK] <= 0)){
            moveScores[i] -= 10;
        }
        //sp.def
        else if((attacker_move_effect == MOVE_EFFECT_SP_DEF_DOWN ||
            attacker_move_effect == MOVE_EFFECT_SP_DEF_DOWN_2 || 
            attacker_move_effect == MOVE_EFFECT_SP_DEF_DOWN_3 ) &&
            (ctx->battlemon[defender].states[STAT_SPDEF] <= 0)){
            moveScores[i] -= 10;
        }
        //speed
        else if((attacker_move_effect == MOVE_EFFECT_SPEED_DOWN ||
            attacker_move_effect == MOVE_EFFECT_SPEED_DOWN_2 || 
            attacker_move_effect == MOVE_EFFECT_SPEED_DOWN_3 ) &&
            (ctx->battlemon[defender].states[STAT_SPEED] <= 0)){
            moveScores[i] -= 10;
        }
        //evasion
        else if((attacker_move_effect == MOVE_EFFECT_EVA_DOWN ||
            attacker_move_effect == MOVE_EFFECT_EVA_DOWN_2 ||
            attacker_move_effect == MOVE_EFFECT_EVA_DOWN_3 ) &&
            (ctx->battlemon[defender].states[STAT_EVASION] <= 0)){
            moveScores[i] -= 10;
        }
        //accuracy
        else if((attacker_move_effect == MOVE_EFFECT_ACC_DOWN ||
            attacker_move_effect == MOVE_EFFECT_ACC_DOWN_2 ||
            attacker_move_effect == MOVE_EFFECT_ACC_DOWN_3 ) &&
            (ctx->battlemon[defender].states[STAT_ACCURACY] <= 0)){
            moveScores[i] -= 10;
        }

        /*Check for exclusively speed dropping moves in Trick Room*/
        if(attacker_move_effect == MOVE_EFFECT_SPEED_DOWN_2 && //string shot and scary face
            (ctx->field_condition & FIELD_STATUS_TRICK_ROOM)){
                moveScores[i] -= 10;
        }
        
        /*Handle Haze, Psych Up, Heart Swap*/
        bool8 hasStatChange = 0;
        for(i = 0; i < STAT_MAX; i++){
            if (ctx->battlemon[attacker].states[i] != 0 ||
                ctx->battlemon[defender].states[i] != 0){
                hasStatChange = 1;
            }
            
        }
        if((attacker_move_effect == MOVE_EFFECT_RESET_STAT_CHANGES ||
           attacker_move_effect == MOVE_EFFECT_SWAP_STAT_CHANGES ||
           attacker_move_effect == MOVE_EFFECT_COPY_STAT_CHANGES) &&
            !hasStatChange){
            moveScores[i] -= 10;
        }
        /*Handle forced switching moves*/
        if(attacker_move_effect == MOVE_EFFECT_FORCE_SWITCH && 
           (living_defending_members == 1 || 
            (defender_ability == ABILITY_SUCTION_CUPS && attacker_ability != ABILITY_MOLD_BREAKER))){
            moveScores[i] -= 10;
        }

        /*Handle recovery moves*/
        if((attacker_move_effect == MOVE_EFFECT_RESTORE_HALF_HP || 
            attacker_move_effect == MOVE_EFFECT_HEAL_HALF_MORE_IN_SUN ||
            attacker_move_effect == MOVE_EFFECT_SWALLOW) &&
            attacker_hp == attacker_max_hp){
            moveScores[i] -= 8;
        }

        /*OHKO moves*/
        if((attacker_move_effect == MOVE_EFFECT_ONE_HIT_KO) &&
            ((defender_ability == ABILITY_STURDY && attacker_ability != ABILITY_MOLD_BREAKER) || 
            ctx->battlemon[attacker].level < ctx->battlemon[defender].level)){
                moveScores[i] -= 10;
        }

        /*Misc persistent effects
        Focus Energy / Ingrain / Mud Sport / Water Sport / Camouflage /
        Power Trick / Lucky Chant / Aqua Ring / Magnet Rise*/
        if((ctx->battlemon[defender].condition2 & STATUS2_FOCUS_ENERGY  &&
          attacker_move_effect == MOVE_EFFECT_CRIT_UP_2)||
          (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN  &&
            attacker_move_effect == MOVE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL) ||
            (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_WATER_SPORT  &&
                attacker_move_effect == MOVE_EFFECT_HALVE_ELECTRIC_DAMAGE) ||
                (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_MUD_SPORT &&
                    attacker_move_effect == MOVE_EFFECT_HALVE_FIRE_DAMAGE) ||
                    (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_CAMOUFLAGE &&
                        attacker_move_effect == MOVE_EFFECT_CAMOUFLAGE) ||
                        (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_POWER_TRICK &&
                            attacker_move_effect == MOVE_EFFECT_SWAP_ATK_DEF) ||
                            (ctx->side_condition[attacker_side] & SIDE_STATUS_LUCKY_CHANT &&
                                attacker_move_effect == MOVE_EFFECT_PREVENT_CRITS) ||
                                (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_AQUA_RING &&
                                    attacker_move_effect == MOVE_EFFECT_RESTORE_HP_EVERY_TURN) ||
                                    (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_MAGNET_RISE &&
                                        attacker_move_effect == MOVE_EFFECT_GIVE_GROUND_IMMUNITY) ||
                                        ( (attacker_type_2  == TYPE_FLYING ||attacker_type_2  == TYPE_FLYING ||
                                             attacker_ability == ABILITY_LEVITATE) &&
                                            attacker_move_effect == MOVE_EFFECT_GIVE_GROUND_IMMUNITY)
                                    
                ){
            moveScores[i] -= 10;
        }
        /*Handle substitute*/
        if(attacker_move_effect == MOVE_EFFECT_SET_SUBSTITUTE && 
            (ctx->battlemon[attacker].condition2 & STATUS2_SUBSTITUTE || attacker_hp*100/attacker_max_hp < 26) ){
            moveScores[i] -= 10;
        } //might have to consider status moves that are blocked by sub (unrelated)

        /*Handle leech seed*/
        if(attacker_move == MOVE_LEECH_SEED && 
            (ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE ||
            defender_type_1 == TYPE_GRASS || defender_type_2 == TYPE_GRASS ||
            defender_ability == ABILITY_MAGIC_GUARD )){
            moveScores[i] -= 10;
        }

        /*Handle disable & encore*/
        if(attacker_move_effect == MOVE_EFFECT_DISABLE && 
            (ctx->battlemon[defender].moveeffect.disabledTurns != 0) ){
            moveScores[i] -= 8;
        }
        if(attacker_move_effect == MOVE_EFFECT_ENCORE && 
            (ctx->battlemon[defender].moveeffect.encoredTurns != 0) ){
            moveScores[i] -= 8;
        }

        /*Handle sleep-necessitated moves*/
        if((attacker_move_effect == MOVE_EFFECT_USE_RANDOM_LEARNED_MOVE_SLEEP || //snore and sleep talk
             attacker_move_effect == MOVE_EFFECT_DAMAGE_WHILE_ASLEEP) && 
            (ctx->battlemon[attacker].condition != STATUS_SLEEP) ){
            moveScores[i] -= 10;
        }

        /*Other miscellaneous persistent effects
        Lock On / Mean Look / Foresight / Perish Song / 
        Torment / Miracle Eye / Heal Block / Gastro Acid*/
        if((ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_LOCK_ON  &&
          (attacker_move_effect == MOVE_EFFECT_NEXT_ATTACK_ALWAYS_HITS ||
             defender_ability == ABILITY_NO_GUARD || attacker_ability == ABILITY_NO_GUARD))||
          (ctx->battlemon[defender].condition2 & STATUS2_MEAN_LOOK  &&
            attacker_move_effect == MOVE_EFFECT_PREVENT_ESCAPE) ||
            (ctx->battlemon[defender].condition2 & STATUS2_FORESIGHT &&
                attacker_move_effect == MOVE_EFFECT_IGNORE_EVASION_REMOVE_GHOST_IMMUNE) ||
                (ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG_ACTIVE &&
                    attacker_move_effect == MOVE_EFFECT_ALL_FAINT_3_TURNS) ||
                    (ctx->battlemon[defender].condition2 & STATUS2_TORMENT &&
                        attacker_move_effect == MOVE_EFFECT_TORMENT) ||
                        (ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_MIRACLE_EYE &&
                            attacker_move_effect == MOVE_EFFECT_IGNORE_EVATION_REMOVE_DARK_IMMUNE) ||
                            (ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_HEAL_BLOCK &&
                                attacker_move_effect == MOVE_EFFECT_PREVENT_HEALING) ||
                                (ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_GASTRO_ACID &&
                                    (attacker_move_effect == MOVE_EFFECT_GASTRO_ACID ||defender_ability == ABILITY_MULTITYPE ||
                                        defender_ability == ABILITY_TRUANT || defender_ability == ABILITY_SLOW_START ||
                                        defender_ability == ABILITY_STENCH ||defender_ability == ABILITY_RUN_AWAY || 
                                        defender_ability == ABILITY_PICKUP ||defender_ability == ABILITY_HONEY_GATHER))){
            moveScores[i] -= 10;
        }

        /*Handle Curse*/
        if((attacker_move_effect == MOVE_EFFECT_CURSE && 
            (attacker_type_1 == TYPE_GHOST || attacker_type_2 == TYPE_GHOST ||
            ctx->battlemon[attacker].condition2 == STATUS2_CURSE || defender_ability == ABILITY_MAGIC_GUARD) )||
            (attacker_move_effect == MOVE_EFFECT_CURSE && 
                (attacker_type_1 != TYPE_GHOST || attacker_type_2 == TYPE_GHOST) &&
                (ctx->battlemon[attacker].states[STAT_ATTACK] >= 12 || ctx->battlemon[attacker].states[STAT_DEFENSE] >= 12))){
            moveScores[i] -= 10;
        }
        /*Handle hazards*/
        if((attacker_move_effect == MOVE_EFFECT_STEALTH_ROCK && 
            (ctx->side_condition[defender_side] & SIDE_STATUS_STEALTH_ROCK || living_defending_members == 1 )) ||
            (attacker_move_effect == MOVE_EFFECT_SET_SPIKES && 
                (ctx->scw[defender_side].spikesLayers >= 3 || living_defending_members == 1) )||
                (attacker_move_effect == MOVE_EFFECT_TOXIC_SPIKES && 
                    (ctx->scw[defender_side].toxicSpikesLayers >= 2 || living_defending_members == 1))){
            moveScores[i] -= 10;
        }
        /*Handle weather*/
        if((attacker_move_effect == MOVE_EFFECT_WEATHER_SANDSTORM && 
            (ctx->field_condition & WEATHER_SANDSTORM_ANY)) ||
            (attacker_move_effect == MOVE_EFFECT_WEATHER_HAIL && 
                (ctx->field_condition & WEATHER_HAIL_ANY )) ||
                (attacker_move_effect == MOVE_EFFECT_WEATHER_SNOW && 
                    (ctx->field_condition & WEATHER_SNOW_ANY )) ||
                (attacker_move_effect == MOVE_EFFECT_WEATHER_RAIN && 
                    (ctx->field_condition & WEATHER_RAIN_ANY)) ||
                    (attacker_move_effect == MOVE_EFFECT_WEATHER_SUN && 
                        (ctx->field_condition & WEATHER_SUNNY_ANY))){
            moveScores[i] -= 8;
        }
        if((attacker_move_effect == MOVE_EFFECT_WEATHER_RAIN && (attacker_ability != ABILITY_SWIFT_SWIM && attacker_ability != ABILITY_HYDRATION)) && 
            (ctx->battlemon[defender].condition != STATUS_NONE &&
            ctx->battlemon[defender].ability == ABILITY_HYDRATION) ){
            moveScores[i] -= 8;
        } //Basically don't cure opponent's status with rain dance

        //There's a non-sensical condition with sun and hydration in the doc -- skipping for now

        if((attacker_move == MOVE_HAIL) && (defender_ability == ABILITY_ICE_BODY)){
            moveScores[i] -= 8;
        }
        if((attacker_move == MOVE_HAIL) && (attacker_ability == ABILITY_ICE_BODY)){
            moveScores[i] += 8;
        }//Nice logic, gamefreak

        /*Handle doom desire and future sight*/
        if((attacker_move_effect == MOVE_EFFECT_HIT_IN_3_TURNS) &&
            ctx->fcc.future_prediction_count[defender] !=0 ){
            moveScores[i] -= 12;
        }
        /*Handle baton pass, shed tail*/
        if((attacker_move_effect == MOVE_EFFECT_PASS_STATS_AND_STATUS || attacker_move_effect == MOVE_EFFECT_SHED_TAIL) &&
            living_attacking_members == 1){
            moveScores[i] -= 10;
        }
        /*Handle fake out after turn one*/
        if(attacker_move_effect == MOVE_EFFECT_ALWAYS_FLINCH_FIRST_TURN_ONLY && ctx->battlemon[attacker].moveeffect.fakeOutCount != 0){
            moveScores[i] -= 10;
        }
        /*Handle stockpile*/
        
        if(attacker_move_effect == MOVE_EFFECT_STOCKPILE && ctx->battlemon[attacker].moveeffect.stockpileCount < 3){
            moveScores[i] -= 10;
        }
        /*Spit up / Swallow*/
        if((attacker_move_effect == MOVE_EFFECT_SPIT_UP || attacker_move_effect == MOVE_EFFECT_SWALLOW) 
        && ctx->battlemon[attacker].moveeffect.stockpileCount == 0){
            moveScores[i] -= 10;
        }
        /*Handle Memento*/
        if(attacker_move_effect == MOVE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2 && ((defender_ability == ABILITY_WHITE_SMOKE ||
            defender_ability == ABILITY_CLEAR_BODY) && attacker_ability != ABILITY_MOLD_BREAKER) ||
            (ctx->battlemon[attacker].states[STAT_ATTACK] <= 0 ||ctx->battlemon[attacker].states[STAT_SPATK] <= 0)){
                moveScores[i] -= 10;
        }

        /*Handle Helping Hand*/
        if(attacker_move_effect == MOVE_EFFECT_BOOST_ALLY_POWER_BY_50_PERCENT && !(BattleTypeGet(bsys) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE))){
            moveScores[i] -= 10;
        }
        /*Trick, Switcheroo, Knock Off*/ 
        //These checks from game freak make absolutely no sense. Knock off can still do boosted damage
        //against sticky hold targets, and you can still give your item to your opponent if they
        //dont have their own. I'm going to skip these for now.

        /*Handle imprison*/
        if(attacker_move_effect == MOVE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE && 
            (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_IMPRISONED ||
                 ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_IMPRISONED )){
                    moveScores[i] -= 10;
        }

        /*Handle Refresh*/
        if(attacker_move_effect == MOVE_EFFECT_HEAL_STATUS && 
            !(ctx->battlemon[defender].condition & STATUS_POISON_ALL ||
                ctx->battlemon[defender].condition & STATUS_PARALYSIS ||
                ctx->battlemon[defender].condition & STATUS_BURN )){
                    moveScores[i] -= 10;
        }

        /*Handle moves that change more than one type of stat*/
        /*Tickle*/
        if(attacker_move_effect == MOVE_EFFECT_ATK_DEF_DOWN && //tickle, in particular
            (ctx->battlemon[defender].states[STAT_ATTACK] <= 0 )){
                    moveScores[i] -= 10;
        }
        if(attacker_move_effect == MOVE_EFFECT_ATK_DEF_DOWN &&
            (ctx->battlemon[defender].states[STAT_DEFENSE] <= 0)){
                    moveScores[i] -= 8;
        }// Punishes each stat if already dropped to the max
        // The clear body interactions are handled above

        /*Bulk Up*/
        if(attacker_move_effect == MOVE_EFFECT_ATK_DEF_UP && //tickle, in particular
            (ctx->battlemon[attacker].states[STAT_ATTACK] <= 0 )){
                    moveScores[i] -= 10;
        }
        if(attacker_move_effect == MOVE_EFFECT_ATK_DEF_UP &&
            (ctx->battlemon[attacker].states[STAT_DEFENSE] <= 0)){
                    moveScores[i] -= 8;
        }// Punishes each stat if already raised to +6

        /*Bulk Up*/
        if(attacker_move_effect == MOVE_EFFECT_SP_ATK_SP_DEF_UP && //tickle, in particular
            (ctx->battlemon[attacker].states[STAT_SPATK] <= 0)){
                    moveScores[i] -= 10;
        }
        if(attacker_move_effect == MOVE_EFFECT_SP_ATK_SP_DEF_UP &&
            (ctx->battlemon[attacker].states[STAT_SPDEF] <= 0)){
                    moveScores[i] -= 8;
        }// Punishes each stat if already raised to +6

        /*Dragon Dance*/
        if(attacker_move_effect == MOVE_EFFECT_ATK_SPEED_UP && //tickle, in particular
            (ctx->battlemon[attacker].states[STAT_ATTACK] <= 0 )){
                    moveScores[i] -= 10;
        }
        if(attacker_move_effect == MOVE_EFFECT_ATK_SPEED_UP &&
            (ctx->battlemon[attacker].states[STAT_SPEED] <= 0)){
                    moveScores[i] -= 8;
        }// Punishes each stat if already raised to +6

        /*Tailwind*/
        if(attacker_move_effect == MOVE_EFFECT_DOUBLE_SPEED_3_TURNS &&
        (ctx->side_condition[attacker_side] & SIDE_STATUS_TAILWIND ||
            ctx->field_condition & FIELD_STATUS_TRICK_ROOM)){
            moveScores[i] -= 10;
        }
        /*Gravity*/
        if(attacker_move_effect == MOVE_EFFECT_GRAVITY &&
        (ctx->field_condition & FIELD_STATUS_GRAVITY)){
            moveScores[i] -= 10;
        }
        /*Trick Room*/
        if(attacker_move_effect == MOVE_EFFECT_TRICK_ROOM &&
        (attacker_speed >= defender_speed)){
            moveScores[i] -= 10;
        }
        /*Healing Wish and Lunar Dance*/
        if((attacker_move_effect == MOVE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON)){
            moveScores[i] = -20;
        }
        //Check hp of attacking party
        int damaged_attacking_mons = 0;
        int statused_attacking_mons = 0;
        for (i = 0; i < party_size_attacking; i++) {
            struct PartyPokemon * current_mon_attacking = Battle_GetClientPartyMon(bsys, attacker, i);
            if(GetMonData(current_mon_attacking, MON_DATA_HP, 0) ==
             GetMonData(current_mon_attacking, MON_DATA_MAXHP, 0)){
                damaged_attacking_mons++;
            }
            if(GetMonData(current_mon_attacking, MON_DATA_STATUS, 0) != 0){
                statused_attacking_mons++;
            }
        }
        if((attacker_move_effect == MOVE_EFFECT_FAINT_AND_FULL_HEAL_NEXT_MON)  &&
            (damaged_attacking_mons > 0 || statused_attacking_mons > 0)){
            moveScores[i] -= 10;
        }
        if((attacker_move_effect == MOVE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON) &&
            (living_attacking_members == 1)){
            moveScores[i] -= 10;//can penalize twice
        }

        /*Natural Gift*/
        if(attacker_move_effect == MOVE_EFFECT_NATURAL_GIFT &&
            (!IS_ITEM_BERRY(attacker_item))){
                moveScores[i] -= 10;
        }

        /*Acupressure*/
        if(attacker_move_effect == MOVE_EFFECT_RANDOM_STAT_UP_2 &&
            (ctx->battlemon[attacker].states[STAT_ATTACK] >= 12 ||
            ctx->battlemon[attacker].states[STAT_DEFENSE] >= 12 ||
            ctx->battlemon[attacker].states[STAT_SPATK] >= 12 ||
            ctx->battlemon[attacker].states[STAT_SPDEF] >= 12 ||
            ctx->battlemon[attacker].states[STAT_SPEED] >= 12 ||
            ctx->battlemon[attacker].states[STAT_EVASION] >= 12 ||
            ctx->battlemon[attacker].states[STAT_ACCURACY] >= 12)){
                moveScores[i] -= 10;
        }
        
        /*Metal Burst*/
        if(attacker_move_effect == MOVE_EFFECT_METAL_BURST &&
            (defender_ability == ABILITY_STALL || defender_speed < attacker_speed)){
                moveScores[i] -= 10;
        }
        if(attacker_move_effect == MOVE_EFFECT_METAL_BURST && attacker_ability == ABILITY_STALL){
            moveScores[i] += 10;
        }
        /*Embargo*/
        if(attacker_move_effect == MOVE_EFFECT_PREVENT_ITEM_USE &&
            (ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_EMBARGO)){
                moveScores[i] -= 10;
        }
        /*Fling*/
        /*TODO: immunities to fling effects like burn from flame orb on a fire type defender*/
        u32 fling_power = GetBattleItemData(ctx, attacker_item, ITEM_PARAM_FLING_POWER);
        if(attacker_move_effect == MOVE_EFFECT_FLING &&
            (attacker_ability == ABILITY_MULTITYPE || attacker_item == ITEM_NONE || 
            fling_power == 0)){
            moveScores[i] -= 10;
        }
        /*Psycho Shift*/
        if(attacker_move_effect == MOVE_EFFECT_TRANSFER_STATUS){
            
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
