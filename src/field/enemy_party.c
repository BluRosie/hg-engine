#include "../../include/types.h"
#include "../../include/bag.h"
#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/rtc.h"
#include "../../include/save.h"
#include "../../include/script.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/file.h"
#include "../../include/constants/game.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/constants/weather_numbers.h"

#define NELEMS_POKEFORMDATATBL 285

#define FLAG_ENGAGING_STATIC_POKEMON 164

/**
 *  @brief swap two integer values with each other given pointers
 *
 *  @param a first to swap
 *  @param b second to swap
 */
void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

/**
 *  @brief randomize the order of an array size n
 *
 *  @param arr array to randomize
 *  @param n size of array
 */
void randomize(int arr[], int n) {
    int i;
    for (i = n-1; i > 0; i--) {
        int j = gf_rand() % (i+1);
        swap(&arr[i], &arr[j]);
    }
}

extern u32 gLastPokemonLevelForMoneyCalc;

/**
 *  @brief get which dynamic scaling formula to apply from the script variable defined by SCALING_TYPE_VARIABLE
 *
 *  @return scaling type from SCALING_TYPE_VARIABLE script variable
 */
u32 GetScalingType(void)
{
    return GetScriptVar(SCALING_TYPE_VARIABLE);
}

/**
 *  @brief Generate the scaled level to use for a Pokemon based on average level of player party
 *		-Based on initial code by Mixone-FinallyHere-
 *
 *  @param bp battle param
 */
 
u16 GetAvgLevel(struct BATTLE_PARAM *bp)
 {
	int i;
	struct PartyPokemon *pp;
	struct Party *party = bp->poke_party[0];
	s32 playerCount = bp->poke_party[0]->count;
	u16 avgLevel;
	u16 totalLevel = 0;
	for (i = 0; i < playerCount; i++) {
		pp = Party_GetMonByIndex(party, i);
		u16 currLevel = GetMonData(pp, MON_DATA_LEVEL, NULL);
		totalLevel += currLevel;
	}
	avgLevel = (int)(totalLevel / playerCount);
	 
	return avgLevel;
	
 }
 
 /**
 @brief Generate the scaled level to use for a Pokemon based on highest level in player party
 *		-Based on initial code by Mixone-FinallyHere-
 *
 *  @param bp battle param
*/ 

u16 GetHighLevel(struct BATTLE_PARAM *bp)
 {
	int i;
	struct PartyPokemon *pp;
	struct Party *party = bp->poke_party[0];
	s32 playerCount = bp->poke_party[0]->count;
	u16 highLevel;
	u16 highestLevel = 0;
	 for (i = 0; i < playerCount; i++) {
		 pp = Party_GetMonByIndex(party, i);
		 u16 currLevel = GetMonData(pp, MON_DATA_LEVEL, NULL);
		 if (currLevel > highestLevel) {
			 highestLevel = currLevel;
		 }
	 }
	 highLevel = highestLevel;
	 
	 return highLevel;
 }
 
 /**
 @brief Generate the scaled level to use for a Pokemon based on lowest level in player party
 *		-Based on initial code by Mixone-FinallyHere-
 *
 *  @param bp battle param
*/ 

u16 GetLowLevel(struct BATTLE_PARAM *bp)
 {
	int i;
	struct PartyPokemon *pp;
	struct Party *party = bp->poke_party[0];
	s32 playerCount = bp->poke_party[0]->count;
	u16 lowLevel;
	u16 lowestLevel = 100;
	 for (i = 0; i < playerCount; i++) {
		 pp = Party_GetMonByIndex(party, i);
		 u16 currLevel = GetMonData(pp, MON_DATA_LEVEL, NULL);
		 if (currLevel < lowestLevel) {
			 lowestLevel = currLevel;
		 }
	 }
	 lowLevel = lowestLevel;
	 
	 return lowLevel;
 }

/**
 *  @brief generates a random valid species
 *		-ALL CREDIT TO Mixone-FinallyHere FOR THIS-
 *
 *  @return new species
 *
u32 getValidRandomSpecies() {
    u32 new_species;
    new_species = 1 + gf_rand()%MAX_ID_RANDOMIZED;
    if(new_species == 494 || new_species == 495) new_species = SPECIES_SHUCKLE;
    if(new_species > 507 && new_species < 544) new_species += 37 + gf_rand()%(MAX_ID_RANDOMIZED - 506);
    return new_species;
}
*/

/**
 *  @brief generates a random valid form for the given species
 *		-ALL CREDIT TO Mixone-FinallyHere FOR THIS-
 *
 *  @param species the species to get a form of
 *  @return new species
 *
u32 getValidRandomSpeciesForm(u32 species) {
    u8 form_count = 1;
    struct FormData *PokeFormDataTbl = sys_AllocMemory(HEAPID_MAIN_HEAP, NELEMS_POKEFORMDATATBL * sizeof(struct FormData));
    ArchiveDataLoad(PokeFormDataTbl, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA);
    for(u32 i=0; i<NELEMS_POKEFORMDATATBL; i++) {
        if (PokeFormDataTbl[i].species == species) {
            #if EXCLUDE_MEGAS_FROM_RANDOMIZER
            if(PokeFormDataTbl[i].file >= SPECIES_ALOLAN_REGIONAL_START) {
                form_count += 1;
            }
            #else
            form_count += 1;
            #endif            
        }
    }
    sys_FreeMemoryEz(PokeFormDataTbl);
    return gf_rand()%form_count;
}
*/

/**
 *  @brief create the trainer Party from the trainer data file and trainer party file
 *		-Randomizer code entirely credited to Mixone-FinallyHere-
 *		-Level scaling code developed based on initial code from Mixone-FinallyHere-
 *
 *  @param bp battle param
 *  @param num trainer index to read from both ARC_TRAINER_DATA and ARC_TRAINER_PARTY_DATA
 *  @param heapID heap to use for memory usage
 */
void MakeTrainerPokemonParty(struct BATTLE_PARAM *bp, int num, int heapID)
{
    u8 *buf;
    int i, j;
    u32 rnd_tmp, rnd, seed_tmp;
    u8 pow;
	
	seed_tmp = gf_get_seed();

    PokeParty_Init(bp->poke_party[num], 6);

    buf = (u8 *)sys_AllocMemory(heapID, sizeof(struct FULL_TRAINER_MON_DATA_STRUCTURE) * 6);

    TT_TrainerPokeDataGet(bp->trainer_id[num], buf);

    if (TT_TrainerTypeSexGet(bp->trainer_data[num].tr_type) == 1) // if trainer is female
    {
        rnd_tmp = 120;
    }
    else
    {
        rnd_tmp = 136;
    }

    u8 pokecount = bp->trainer_data[num].poke_count;
    u8 randomorder_flag = pokecount & 0x80;
    pokecount &= 0x7f;

    // goal:  get rid of massive switch statement with each individual byte.  make the trainer type a bitfield
    u32 id;
    u16 species = 0, item = 0, ability = 0, level = 0, ball = 0, hp = 0, atk = 0, def = 0, speed = 0, spatk = 0, spdef = 0;
    u16 offset = 0;
    u16 moves[4];
    u8 ivnums[6];
    u8 evnums[6];
    u8 types[2];
    u8 ppcounts[4];
    u16 *nickname = sys_AllocMemory(heapID, 11*sizeof(u16));
    u8 form_no = 0, abilityslot = 0, nature = 0, ballseal = 0, shinylock = 0, status = 0, ab1 = 0, ab2 = 0;
    u32 additionalflags = 0;
	
	#ifdef IMPLEMENT_SCALING
	u32 DoScaling = GetScalingType();
	u16 avgLevel = GetAvgLevel(bp);
	u16 highLevel = GetHighLevel(bp);
	u16 lowLevel = GetLowLevel(bp);
	#endif
	
	int partyOrder[pokecount];
    if (randomorder_flag)
    {
        if(gf_rand() % 2 == 0)
        {
            for(i = 0; i < pokecount; i++)
            {
                partyOrder[i] = pokecount - 1 - i;
            }
        }
        else
        {
            for(i = 0; i < pokecount; i++)
            {
                partyOrder[i] = i;
            }
        }
    }
    else
    {
        for(i = 0; i < pokecount; i++)
        {
            partyOrder[i] = i;
        }
    }

    if (randomorder_flag && pokecount > 1)
    {
        int numtimes = gf_rand() % 6 + 1;
        for(i = 0; i < numtimes; i++)
        {
            randomize(partyOrder, pokecount);
        }
    }

    struct PartyPokemon * mons[pokecount];

    for (i = 0; i < pokecount; i++)
    {
        mons[i] = AllocMonZeroed(heapID);
        // ivs field
        pow = buf[offset];
        offset++;

        // abilityslot field
        abilityslot = buf[offset];
        offset++;

        // level field
		level = buf[offset] | (buf[offset+1] << 8);
        gLastPokemonLevelForMoneyCalc = level; // ends up being the last level at the end of the loop that we use for the money calc loop default case
        offset += 2;
		if ((DoScaling == 1) && avgLevel >= level) {
			level = avgLevel;
		}
		if ((DoScaling == 2) && highLevel >= level) {
			level = highLevel;
		}
		if ((DoScaling == 3) && lowLevel >= level) {
			level = lowLevel;
		}

        // species field
        species = buf[offset] | (buf[offset+1] << 8);
        offset += 2;
        form_no = (species & 0xF800) >> 11;
        species &= 0x07FF;
        
        /*
		#ifdef RANDOM_BATTLE_TOWER
        if ((bp->trainer_id[num] == 105) || (bp->trainer_id[num] == 106))
		{
			species = getValidRandomSpecies();
			form_no = getValidRandomSpeciesForm(species);
		}
        #endif
		*/

        // item field - conditional
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ITEMS)
        {
            item = buf[offset] | (buf[offset+1] << 8);
            offset += 2;
        }

        // moves field - conditional
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_MOVES)
        {
            for (j = 0; j < 4; j++)
            {
                moves[j] = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }
        }

        // ability field
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ABILITY)
        {
            ability = buf[offset] | (buf[offset+1] << 8);
            offset += 2;
			
		/*
		#ifdef RANDOM_BATTLE_TOWER
		const randomAbil = gf_rand()%2;
			if ((bp->trainer_id[num] == 105) || (bp->trainer_id[num] == 106))
			{
				ability = randomAbil;
			}
		#endif
		*/
		
        }

        // custom ball field
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_BALL)
        {
            ball = buf[offset] | (buf[offset+1] << 8);
            offset += 2;
        }

        // ivs and evs fields
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_IV_EV_SET)
        {
            for(j = 0; j < 6; j++)
            {
                ivnums[j] = buf[offset];
                if(ivnums[j] > 31)
                    ivnums[j] = 31;
                offset++;
            }

            for(j = 0; j < 6; j++)
            {
                evnums[j] = buf[offset];
                offset++;
            }
        }

        // nature field
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_NATURE_SET)
        {
            nature = buf[offset];
            offset++;
        }

        // shiny lock field
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_SHINY_LOCK)
        {
            shinylock = buf[offset];
            offset++;
        }

        // reads extra flags from the trainer pokemon file
        if(bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ADDITIONAL_FLAGS)
        {
            additionalflags = buf[offset] | (buf[offset+1] << 8) | (buf[offset+2] << 16) | (buf[offset+3] << 24);
            offset += 4;

            // status pre-set field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_STATUS)
            {
                status = buf[offset] | (buf[offset+1] << 8) | (buf[offset+2] << 16) | (buf[offset+3] << 24);
                offset += 4;
            }

            // custom hp stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_HP)
            {
                hp = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom atk stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_ATK)
            {
                atk = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom def stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_DEF)
            {
                def = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom speed stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_SPEED)
            {
                speed = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom spatk stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_SP_ATK)
            {
                spatk = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom spdef stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_SP_DEF)
            {
                spdef = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom types field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_TYPES)
            {
                for(j = 0; j < 2; j++)
                {
                    types[j] = buf[offset];
                    offset++;
                }
            }

            // move PP counts field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_PP_COUNTS)
            {
                for(j = 0; j < 4; j++)
                {
                    ppcounts[j] = buf[offset];
                    offset++;
                }
            }

            // nickname field
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_NICKNAME)
            {
                for(j = 0; j < 11; j++)
                {
                    nickname[j] = buf[offset] | (buf[offset+1] << 8);
                    offset += 2;
                }
            }
        }

        // ball seal field
        ballseal = buf[offset] | (buf[offset+1] << 8);
        offset += 2;

        // now set mon data
        try_force_gender_maybe(species, form_no, abilityslot, &rnd_tmp);
        rnd = pow + level + species + bp->trainer_id[num];
        gf_srand(rnd);
        for (j = 0; j < bp->trainer_data[num].tr_type; j++)
        {
            rnd = gf_rand();
        }
        rnd = (rnd << 8) + rnd_tmp;
        pow = pow * 31 / 255;
		PokeParaSet(mons[i], species, level, pow, 1, rnd, 2, 0);
        SetMonData(mons[i], MON_DATA_FORM, &form_no);
		
        //set default abilities
        species = PokeOtherFormMonsNoGet(species, form_no);
        ab1 = PokePersonalParaGet(species, PERSONAL_ABILITY_1);
        ab2 = PokePersonalParaGet(species, PERSONAL_ABILITY_2);
        if (ab2 != 0)
        {
            if (abilityslot & 1 || abilityslot == 32)
            {
                SetMonData(mons[i], MON_DATA_ABILITY, (u8 *)&ab1);
            }
            else{
                SetMonData(mons[i], MON_DATA_ABILITY, (u8 *)&ab2);
            }
        }
        else
        {
            SetMonData(mons[i], MON_DATA_ABILITY, (u8 *)&ab1);
        }

        // if abilityslot is 2 force hidden ability with the bit set.  this specifically to cover darmanitan with zen mode switching between forms and such.
        if (abilityslot == 2)
        {
            u16 hiddenability = GetMonHiddenAbility(species, form_no);
            SET_MON_HIDDEN_ABILITY_BIT(mons[i])
            SetMonData(mons[i], MON_DATA_ABILITY, (u8 *)&hiddenability);
        }

        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ITEMS)
        {
            SetMonData(mons[i], MON_DATA_HELD_ITEM, &item);
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_MOVES)
        {
            for (j = 0; j < 4; j++)
            {
                SetPartyPokemonMoveAtPos(mons[i], moves[j], j);
            }
        }
        TrainerCBSet(ballseal, mons[i], heapID);
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ABILITY)
        {
            SetMonData(mons[i], MON_DATA_ABILITY, &ability);
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_BALL)
        {
            SetMonData(mons[i], MON_DATA_POKEBALL, &ball);
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_IV_EV_SET)
        {
            for(j = 0; j < 6; j++)
            {
                SetMonData(mons[i],MON_DATA_HP_IV + j, &ivnums[j]);
            }

            for(j = 0; j < 6; j++)
            {
                SetMonData(mons[i],MON_DATA_HP_EV + j, &evnums[j]);
            }
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_NATURE_SET)
        {
            u32 pid = GetMonData(mons[i], MON_DATA_PERSONALITY, NULL);
            u8 currentNature = pid % 25;
            pid = pid + nature - currentNature;
            SetMonData(mons[i], MON_DATA_PERSONALITY, &pid);
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_SHINY_LOCK)
        {
            u32 pid = GetMonData(mons[i], MON_DATA_PERSONALITY, NULL);
            if (shinylock != 0)
            {
                do {
                    id = (gf_rand() | (gf_rand() << 16));
                } while (!SHINY_CHECK(id, pid));
                SetMonData(mons[i], MON_DATA_OTID, &id);
            }
        }
		
		ChangeToBattleForm(mons[i]);

        RecalcPartyPokemonStats(mons[i]); // recalculate stats here

        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ADDITIONAL_FLAGS)
        {
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_STATUS)
            {
                SetMonData(mons[i],MON_DATA_STATUS, &status);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_HP)
            {
                SetMonData(mons[i],MON_DATA_MAXHP, &hp);
                SetMonData(mons[i],MON_DATA_HP, &hp);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_ATK)
            {
                SetMonData(mons[i],MON_DATA_ATTACK, &atk);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_DEF)
            {
                SetMonData(mons[i],MON_DATA_DEFENSE, &def);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_SPEED)
            {
                SetMonData(mons[i],MON_DATA_SPEED, &speed);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_SP_ATK)
            {
                SetMonData(mons[i],MON_DATA_SPECIAL_ATTACK, &spatk);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_SP_DEF)
            {
                SetMonData(mons[i],MON_DATA_SPECIAL_DEFENSE, &spdef);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_TYPES)
            {
                for(j = 0; j < 2; j++)
                {
                    SetMonData(mons[i],MON_DATA_TYPE_1+j, &types[j]);
                }
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_PP_COUNTS)
            {
                for(j = 0; j < 4; j++)
                {
                    SetMonData(mons[i],MON_DATA_MOVE1PP+j, &ppcounts[j]);
                }
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_NICKNAME)
            {
                u32 one = 1;

                SetMonData(mons[i],MON_DATA_HAS_NICKNAME, &one);
                SetMonData(mons[i],MON_DATA_NICKNAME, nickname);
            }
        }
        TrainerMonHandleFrustration(mons[i]);
    }

    for (i = 0; i < pokecount; i++)
    {
		PokeParty_Add(bp->poke_party[num], mons[partyOrder[i]]);
        sys_FreeMemoryEz(mons[i]);
    }

    sys_FreeMemoryEz(buf);
    sys_FreeMemoryEz(nickname);

    gf_srand(seed_tmp);
}

extern u32 space_for_setmondata;

/**
 *  @brief add a PartyPokemon to the "wild battler"'s party
 *		-Level scaling code developed based on initial code from Mixone-FinallyHere-
 *
 *  @param inTarget battler whose party to add to
 *  @param encounterInfo various encounter information structure
 *  @param encounterPartyPokemon PartyPokemon to modify and add
 *  @param bp battle param
 *  @return TRUE if PokeParty_Add was successful
 */
BOOL LONG_CALL AddWildPartyPokemon(int inTarget, EncounterInfo *encounterInfo, struct PartyPokemon *encounterPartyPokemon, struct BATTLE_PARAM *bp)
{
    int range = 0;
    u8 change_form = 0;
    u8 form_no;
    u16 species;

		
    if (encounterInfo->isEgg == 0 && encounterInfo->ability == ABILITY_COMPOUND_EYES)
    {
        range = 1;
    }

    species = GetMonData(encounterPartyPokemon, MON_DATA_SPECIES, NULL);
	
	#ifdef IMPLEMENT_SCALING
	
	u16 level;
	u32 exp;
	u32 DoScaling = GetScalingType();
	u16 avgLevel = GetAvgLevel(bp);
	u16 highLevel = GetHighLevel(bp);
	u16 lowLevel = GetLowLevel(bp);
	
	level = GetMonData(encounterPartyPokemon, MON_DATA_LEVEL, NULL);
	
	/*
	* commented out to try static mon implementation
	if ((species == SPECIES_DIANCIE) && (level == 50)) {
		goto _skipLevelScale;
	}
	*/
	
	if (CheckScriptFlag(FLAG_ENGAGING_STATIC_POKEMON) == 1)
    {
		goto _skipLevelScale;
    }
	
	else {
		if (DoScaling == 1) {
			level = avgLevel;
			exp = PokeLevelExpGet(species,level);
			SetMonData(encounterPartyPokemon, MON_DATA_LEVEL, &level);
			SetMonData(encounterPartyPokemon, MON_DATA_EXPERIENCE, (u8 *)&exp);
			RecalcPartyPokemonStats(encounterPartyPokemon);
			InitBoxMonMoveset(&encounterPartyPokemon->box);
		}
	
		if (DoScaling == 2) {
			level = highLevel;
			exp = PokeLevelExpGet(species,level);
			SetMonData(encounterPartyPokemon, MON_DATA_LEVEL, &level);
			SetMonData(encounterPartyPokemon, MON_DATA_EXPERIENCE, (u8 *)&exp);
			RecalcPartyPokemonStats(encounterPartyPokemon);
			InitBoxMonMoveset(&encounterPartyPokemon->box);
		}
	
		if (DoScaling == 3) {
			level = lowLevel;
			exp = PokeLevelExpGet(species,level);
			SetMonData(encounterPartyPokemon, MON_DATA_LEVEL, &level);
			SetMonData(encounterPartyPokemon, MON_DATA_EXPERIENCE, (u8 *)&exp);
			RecalcPartyPokemonStats(encounterPartyPokemon);
			InitBoxMonMoveset(&encounterPartyPokemon->box);
		}
	}
	
_skipLevelScale:
	#endif
		
	#ifdef ALL_PERFECT_IVS
		
	u16 IV_31;
	IV_31 = 31;
	
	SetMonData(encounterPartyPokemon, MON_DATA_HP_IV, &IV_31);
	SetMonData(encounterPartyPokemon, MON_DATA_ATK_IV, &IV_31);
	SetMonData(encounterPartyPokemon, MON_DATA_DEF_IV, &IV_31);
	SetMonData(encounterPartyPokemon, MON_DATA_SPATK_IV, &IV_31);
	SetMonData(encounterPartyPokemon, MON_DATA_SPDEF_IV, &IV_31);
	SetMonData(encounterPartyPokemon, MON_DATA_SPEED_IV, &IV_31);
	RecalcPartyPokemonStats(encounterPartyPokemon);
	
	#endif
	
    if (space_for_setmondata != 0)
    {
        change_form = 1;
        form_no = space_for_setmondata;//(species & 0xF800) >> 11;
        space_for_setmondata = 0;
    }

    WildMonSetRandomHeldItem(encounterPartyPokemon, bp->fight_type, range);

    if (species == SPECIES_UNOWN)
    {
        change_form = 1;
        form_no = GrabAndRegisterUnownForm(encounterInfo);
    }
    else if (species == SPECIES_DEERLING || species == SPECIES_SAWSBUCK)
    {
        UpdatePassiveForms(encounterPartyPokemon);
    }

    if (CheckScriptFlag(HIDDEN_ABILITIES_FLAG) == 1)
    {
        SET_MON_HIDDEN_ABILITY_BIT(encounterPartyPokemon)
        ClearScriptFlag(HIDDEN_ABILITIES_FLAG);
        ResetPartyPokemonAbility(encounterPartyPokemon);
    }

    if (change_form)
    {
        SetMonData(encounterPartyPokemon, MON_DATA_FORM, (u8 *)&form_no);
        RecalcPartyPokemonStats(encounterPartyPokemon);
        ResetPartyPokemonAbility(encounterPartyPokemon);
        InitBoxMonMoveset(&encounterPartyPokemon->box);
    }
    return PokeParty_Add(bp->poke_party[inTarget], encounterPartyPokemon);
}
