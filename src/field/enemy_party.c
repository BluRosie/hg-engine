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

struct BattleSetup LONG_CALL *BattleSetup_New_Tutorial(u32 heapID, FieldSystem *fieldSystem);
int LONG_CALL BattleSetup_GetWildTransitionEffect(struct BattleSetup *setup);
int LONG_CALL BattleSetup_GetWildBattleMusic(struct BattleSetup *setup);
void LONG_CALL *Encounter_New(struct BattleSetup *setup, s32 effect, s32 bgm, u32 *winFlag);

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

/**
 *  @brief generates a random valid species
 *
 *  @return new species
 */
u32 getValidRandomSpecies() {
    u32 new_species;
    new_species = 1 + gf_rand()%MAX_ID_RANDOMIZED;
    if(new_species == 494 || new_species == 495) new_species = SPECIES_SHUCKLE;
    if(new_species > 507 && new_species < 544) new_species += 37 + gf_rand()%(MAX_ID_RANDOMIZED - 506);
    return new_species;
}

/**
 *  @brief generates a random valid form for the given species
 *  
 *  @param species the species to get a form of
 *  @return new species
 */
u32 getValidRandomSpeciesForm(u32 species) {
    // form 0 is always valid (base form).  Additional forms are listed in
    // CODE_ADDON_FORM_DATA as 32 u16 entries per base species; a 0 entry
    // means no form at that slot.  We build a list of valid form numbers
    // (0..32) and pick one uniformly.
    if (species == 0) return 0;

    u16 formTable[32];
    u8 validForms[33];
    int validCount = 0;

    ArchiveDataLoadOfs(formTable, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA, sizeof(u16) * (32*species), sizeof(u16)*32);

    // always include base form (0)
    validForms[validCount++] = 0;

    for (int i = 0; i < 32; i++) {
        u16 entry = formTable[i] & ~(NEEDS_REVERSION);
        if (entry == 0) continue;

#if EXCLUDE_MEGAS_FROM_RANDOMIZER
        // exclude entries that map into the mega/primal/other adjusted species range
        if (entry >= SPECIES_MEGA_START && entry <= MAX_MEGA_NUM) continue;
#endif

        // the form number stored in the table is (i+1)
        validForms[validCount++] = (u8)(i + 1);
        if (validCount >= (int)sizeof(validForms)) break;
    }

    if (validCount == 0) return 0;

    int idx = gf_rand() % validCount;
    return validForms[idx];
}

#ifdef RANDOMIZER_WEIGHTING
static int species_base_stat_total(u16 species)
{
    int adj = PokeOtherFormMonsNoGet(species, 0);
    int bst = 0;
    bst += PokePersonalParaGet(adj, PERSONAL_BASE_HP);
    bst += PokePersonalParaGet(adj, PERSONAL_BASE_ATTACK);
    bst += PokePersonalParaGet(adj, PERSONAL_BASE_DEFENSE);
    bst += PokePersonalParaGet(adj, PERSONAL_BASE_SPEED);
    bst += PokePersonalParaGet(adj, PERSONAL_BASE_SP_ATTACK);
    bst += PokePersonalParaGet(adj, PERSONAL_BASE_SP_DEFENSE);
    return bst;
}

static BOOL species_has_evolution(u16 species)
{
    u16 speciesWithForm = PokeOtherFormMonsNoGet(species, 0);
    struct Evolution *evoTable = sys_AllocMemory(3, MAX_EVOS_PER_POKE * sizeof(struct Evolution));
    if (evoTable == NULL) return FALSE;
    ArchiveDataLoad(evoTable, ARC_EVOLUTIONS, speciesWithForm);
    BOOL has = (evoTable[0].method != EVO_NONE);
    sys_FreeMemoryEz(evoTable);
    return has;
}

static u32 selectWeightedRandomSpecies(u32 refSpecies, BOOL isTrainer)
{
    // Number of candidate species to consider (1..MAX_ID_RANDOMIZED)
    int max_candidate = MAX_ID_RANDOMIZED;

    // Aggregate weight of all candidates (sum of candidate weights)
    int total_weight = 0;

    // Reference species canonicalized to adjusted index (form 0)
    int ref_adjusted_species = PokeOtherFormMonsNoGet(refSpecies, 0);
    int ref_bst = species_base_stat_total(ref_adjusted_species);
    int ref_type1 = PokePersonalParaGet(ref_adjusted_species, PERSONAL_TYPE_1);
    int ref_type2 = PokePersonalParaGet(ref_adjusted_species, PERSONAL_TYPE_2);
    BOOL ref_has_evo = species_has_evolution(refSpecies);

    // Choose which set of tuning constants to use (trainer vs wild)
    int type_weight = isTrainer ? RANDOMIZER_TYPE_WEIGHT_TRAINER : RANDOMIZER_TYPE_WEIGHT_WILD;
    int bst_weight = isTrainer ? RANDOMIZER_BST_SIMILARITY_WEIGHT_TRAINER : RANDOMIZER_BST_SIMILARITY_WEIGHT_WILD;
    int evo_weight = isTrainer ? RANDOMIZER_EVOLUTION_STAGE_WEIGHT_TRAINER : RANDOMIZER_EVOLUTION_STAGE_WEIGHT_WILD;

    // Allocate an array of integer weights (index by species). If allocation fails,
    // fall back to uniform selection.
    int *weight_arr = sys_AllocMemory(0, sizeof(int) * (max_candidate + 1));
    if (weight_arr == NULL) {
        return getValidRandomSpecies();
    }

    // Decide sample-K value (0 = full scan). If K <= 0 or K >= max, do full scan.
    int sample_k = isTrainer ? RANDOMIZER_SAMPLE_K_TRAINER : RANDOMIZER_SAMPLE_K_WILD;
    if (sample_k <= 0 || sample_k >= max_candidate) {
        // Full scan: compute weights for all candidates (previous behavior)
        for (int cand_idx = 1; cand_idx <= max_candidate; cand_idx++)
        {
            int score = 1;
            int cand_adjusted = PokeOtherFormMonsNoGet(cand_idx, 0);

#if EXCLUDE_MEGAS_FROM_RANDOMIZER
            if (cand_adjusted >= SPECIES_MEGA_START && cand_adjusted <= MAX_MEGA_NUM) continue;
#endif

            int cand_bst = species_base_stat_total(cand_adjusted);
            int bst_diff = cand_bst - ref_bst;
            if (bst_diff < 0) bst_diff = -bst_diff;
            int bst_bonus = bst_weight - (bst_diff / 10);
            if (bst_bonus < 0) bst_bonus = 0;
            score += bst_bonus;

            int cand_type1 = PokePersonalParaGet(cand_adjusted, PERSONAL_TYPE_1);
            int cand_type2 = PokePersonalParaGet(cand_adjusted, PERSONAL_TYPE_2);
            if (cand_type1 == ref_type1 || cand_type1 == ref_type2 || cand_type2 == ref_type1 || cand_type2 == ref_type2)
            {
                score += type_weight;
            }

            BOOL cand_has_evo = species_has_evolution(cand_idx);
            if ((cand_has_evo && ref_has_evo) || (!cand_has_evo && !ref_has_evo))
            {
                score += evo_weight;
            }

            weight_arr[cand_idx] = score;
            total_weight += score;
        }

        if (total_weight <= 0)
        {
            sys_FreeMemoryEz(weight_arr);
            return getValidRandomSpecies();
        }

        u32 rand_val = (gf_rand() | (gf_rand() << 16)) % total_weight;
        int cumulative = 0;
        int selected_species = 1;
        for (int cand_idx = 1; cand_idx <= max_candidate; cand_idx++)
        {
            cumulative += weight_arr[cand_idx];
            if ((u32)cumulative > rand_val)
            {
                selected_species = cand_idx;
                break;
            }
        }

        sys_FreeMemoryEz(weight_arr);
        return selected_species;
    }

    // --- Sample-K with progressive upsizing when no good candidates found ---
    int initial_K = sample_k;
    int max_K = isTrainer ? RANDOMIZER_SAMPLE_MAX_K_TRAINER : RANDOMIZER_SAMPLE_MAX_K_WILD;
    int min_score_threshold = isTrainer ? RANDOMIZER_SAMPLE_MIN_SCORE_TRAINER : RANDOMIZER_SAMPLE_MIN_SCORE_WILD;

    int current_K = initial_K;
    while (1)
    {
        // If K is out of range, fall back to full scan (handled above by earlier branch)
        if (current_K <= 0 || current_K >= max_candidate) break;

        int *candidates = sys_AllocMemory(0, sizeof(int) * current_K);
        if (candidates == NULL) break; // allocation failure -> fallback
        int cand_count = 0;

        // Fill distinct candidates
        while (cand_count < current_K)
        {
            int s = 1 + gf_rand() % max_candidate;

#if EXCLUDE_MEGAS_FROM_RANDOMIZER
            {
                int adj = PokeOtherFormMonsNoGet(s, 0);
                if (adj >= SPECIES_MEGA_START && adj <= MAX_MEGA_NUM) continue;
            }
#endif

            int dup = 0;
            for (int x = 0; x < cand_count; x++) if (candidates[x] == s) { dup = 1; break; }
            if (dup) continue;
            candidates[cand_count++] = s;
        }

        int *sample_weights = sys_AllocMemory(0, sizeof(int) * current_K);
        if (sample_weights == NULL) { sys_FreeMemoryEz(candidates); break; }

        int sample_total = 0;
        int sample_best = 0;
        for (int idx = 0; idx < current_K; idx++)
        {
            int s = candidates[idx];
            int score = 1;
            int s_adj = PokeOtherFormMonsNoGet(s, 0);
            int s_bst = species_base_stat_total(s_adj);
            int bst_diff = s_bst - ref_bst; if (bst_diff < 0) bst_diff = -bst_diff;
            int bst_bonus = bst_weight - (bst_diff / 10);
            if (bst_bonus < 0) bst_bonus = 0;
            score += bst_bonus;
            int s_type1 = PokePersonalParaGet(s_adj, PERSONAL_TYPE_1);
            int s_type2 = PokePersonalParaGet(s_adj, PERSONAL_TYPE_2);
            if (s_type1 == ref_type1 || s_type1 == ref_type2 || s_type2 == ref_type1 || s_type2 == ref_type2) score += type_weight;
            BOOL s_has_evo = species_has_evolution(s);
            if ((s_has_evo && ref_has_evo) || (!s_has_evo && !ref_has_evo)) score += evo_weight;
            sample_weights[idx] = score;
            sample_total += score;
            if (score > sample_best) sample_best = score;
        }

        // If the best sampled candidate doesn't meet the minimum threshold, increase K and retry
        if (sample_best < min_score_threshold && current_K < max_K)
        {
            sys_FreeMemoryEz(sample_weights);
            sys_FreeMemoryEz(candidates);
            current_K = current_K * 2;
            if (current_K > max_K) current_K = max_K;
            continue; // retry with larger sample
        }

        if (sample_total <= 0)
        {
            sys_FreeMemoryEz(sample_weights);
            sys_FreeMemoryEz(candidates);
            break; // fallback
        }

        u32 rand_val = (gf_rand() | (gf_rand() << 16)) % sample_total;
        int cum = 0;
        int chosen_species = candidates[0];
        for (int idx = 0; idx < current_K; idx++)
        {
            cum += sample_weights[idx];
            if ((u32)cum > rand_val)
            {
                chosen_species = candidates[idx];
                break;
            }
        }

        sys_FreeMemoryEz(sample_weights);
        sys_FreeMemoryEz(candidates);
        sys_FreeMemoryEz(weight_arr);
        return chosen_species;
    }

    // If we reach here, progressive sampling failed or requested full-scan: fall back to full scan
    sys_FreeMemoryEz(weight_arr);
    return selectWeightedRandomSpecies(refSpecies, TRUE); // call with K=0 path via isTrainer TRUE/recursive
}
#endif

extern u32 gLastPokemonLevelForMoneyCalc;

/**
 *  @brief create the trainer Party from the trainer data file and trainer party file
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

    #ifdef RANDOMIZE_PLAYER_PARTY_TRAINERS
    u16 new_player_nickname[11 + 1];
    u32 new_player_species;
    u8 new_player_form_no;
    struct PartyPokemon *pp;
    struct Party *party = bp->poke_party[0];
    s32 player_poke_count = bp->poke_party[0]->count;
    
    for(int k = 0; k < player_poke_count; k++) {
        pp = Party_GetMonByIndex(party, k);
        #ifdef RANDOMIZER_WEIGHTING
        new_player_species = selectWeightedRandomSpecies(GetMonData(pp, MON_DATA_SPECIES, NULL), FALSE);
        #else
        new_player_species = getValidRandomSpecies();
        #endif
        #ifdef RANDOMIZE_FORMS
        new_player_form_no = getValidRandomSpeciesForm(new_player_species);
        SetMonData(pp, MON_DATA_FORM, (u8 *)&new_player_form_no);
        #endif
        SetMonData(pp, MON_DATA_SPECIES, &new_player_species);
        GetSpeciesNameIntoArray(GetMonData(pp, MON_DATA_SPECIES, NULL), 0, new_player_nickname);
        SetMonData(pp, MON_DATA_NICKNAME, new_player_nickname);
        RecalcPartyPokemonStats(pp);
        ResetPartyPokemonAbility(pp);
        for (j = 0; j < 4; j++)
        {
            SetPartyPokemonMoveAtPos(pp, MOVE_NONE, j);
        }
        InitBoxMonMoveset(&pp->box);
    }    
    #endif

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
    u16 species = 0, adjustedSpecies = 0, item = 0, ability = 0, level = 0, ball = 0, hp = 0, atk = 0, def = 0, speed = 0, spatk = 0, spdef = 0, ab1 = 0, ab2 = 0;
    u16 offset = 0;
    u16 moves[4];
    u8 ivnums[6];
    u8 evnums[6];
    u8 ppcounts[4];
    u16 *nickname = sys_AllocMemory(heapID, 12*sizeof(u16));
    u8 form_no = 0, abilityslot = 0, nature = 0, ballseal = 0, shinylock = 0, status = 0;
    u32 additionalflags = 0;

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

        // species field
        species = buf[offset] | (buf[offset+1] << 8);
        offset += 2;
        form_no = (species & 0xF800) >> 11;
        species &= 0x07FF;
        
        #ifdef RANDOMIZE_TRAINER_PARTIES_NOT_SMART
        #ifdef RANDOMIZER_WEIGHTING
        species = selectWeightedRandomSpecies(species, TRUE);
        #else
        species = getValidRandomSpecies();
        #endif
        #ifdef RANDOMIZE_FORMS
        form_no = getValidRandomSpeciesForm(species);
        #endif       
        #endif

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
                if (nickname != NULL) {
                    for(j = 0; j < 11; j++)
                    {
                        nickname[j] = buf[offset] | (buf[offset+1] << 8);
                        offset += 2;
                    }
                    nickname[11] = 0;
                } else {
                    // skip bytes if allocation failed
                    offset += 2 * 11;
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
        adjustedSpecies = PokeOtherFormMonsNoGet(species, form_no);
        ab1 = PokePersonalParaGet(adjustedSpecies, PERSONAL_ABILITY_1);
        ab2 = PokePersonalParaGet(adjustedSpecies, PERSONAL_ABILITY_2);
        if (ab2 != 0)
        {
            if (abilityslot & 1 || abilityslot == 32) // abilityslot 32 gives second slot in vanilla
            {
                SetMonData(mons[i], MON_DATA_ABILITY, (u16 *)&ab2);
            }
            else{
                SetMonData(mons[i], MON_DATA_ABILITY, (u16 *)&ab1);
            }
        }
        else
        {
            SetMonData(mons[i], MON_DATA_ABILITY, (u16 *)&ab1);
        }

        // if abilityslot is 2 force hidden ability with the bit set.  this specifically to cover darmanitan with zen mode switching between forms and such.
        if (abilityslot == 2)
        {
            u16 hiddenability = GetMonHiddenAbility(species, form_no);
            SET_MON_HIDDEN_ABILITY_BIT(mons[i]);
            SetMonData(mons[i], MON_DATA_ABILITY, (u16 *)&hiddenability);
        }

        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ITEMS)
        {
            SetMonData(mons[i], MON_DATA_HELD_ITEM, &item);
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_MOVES)
        {
            for (j = 0; j < 4; j++)
            {
#ifdef BLOCK_LEARNING_UNIMPLEMENTED_MOVES
                if (IsMoveUnimplemented(moves[j])) {
                    moves[j] = MOVE_NONE;
                }
#endif
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

#ifdef DEBUG_BATTLE_SCENARIOS
    // Override parties with test scenario if enabled
    TestBattle_OverrideParties(bp);
#endif
}

extern u32 space_for_setmondata;

/**
 *  @brief add a PartyPokemon to the "wild battler"'s party
 *
 *  @param inTarget battler whose party to add to
 *  @param encounterInfo various encounter information structure
 *  @param encounterPartyPokemon PartyPokemon to modify and add
 *  @param encounterBattleParam battle param
 *  @return TRUE if PokeParty_Add was successful
 */
BOOL LONG_CALL AddWildPartyPokemon(int inTarget, EncounterInfo *encounterInfo, struct PartyPokemon *encounterPartyPokemon, struct BATTLE_PARAM *encounterBattleParam)
{
    int range = 0;
    u8 change_form = 0;
    u8 form_no;
    u16 species;
    #ifdef RANDOMIZED_WILD
    u16 nickname[11 + 1];
    #endif

    if (encounterInfo->isEgg == 0 && encounterInfo->ability == ABILITY_COMPOUND_EYES)
    {
        range = 1;
    }

    species = GetMonData(encounterPartyPokemon, MON_DATA_SPECIES, NULL);

    #ifdef RANDOMIZED_WILD
    #ifdef RANDOMIZER_WEIGHTING
    species = selectWeightedRandomSpecies(species, FALSE);
    #else
    species = getValidRandomSpecies();
    #endif
    #ifdef RANDOMIZE_FORMS
    form_no = getValidRandomSpeciesForm(species);
    SetMonData(encounterPartyPokemon, MON_DATA_FORM, (u8 *)&form_no);
    #endif
    SetMonData(encounterPartyPokemon, MON_DATA_SPECIES, &species);
    GetSpeciesNameIntoArray(GetMonData(encounterPartyPokemon, MON_DATA_SPECIES, NULL), 0, nickname);
    SetMonData(encounterPartyPokemon, MON_DATA_NICKNAME, nickname);
    RecalcPartyPokemonStats(encounterPartyPokemon);
    ResetPartyPokemonAbility(encounterPartyPokemon);
    InitBoxMonMoveset(&encounterPartyPokemon->box);
    #endif

    if (space_for_setmondata != 0)
    {
        change_form = 1;
        form_no = space_for_setmondata;//(species & 0xF800) >> 11;
        space_for_setmondata = 0;
    }

    WildMonSetRandomHeldItem(encounterPartyPokemon, encounterBattleParam->fight_type, range);

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

    ChangeToBattleForm(encounterPartyPokemon);

    return PokeParty_Add(encounterBattleParam->poke_party[inTarget], encounterPartyPokemon);
}

void LONG_CALL SetupAndStartTutorialBattle(TaskManager *taskManager) {
    struct BattleSetup *setup = BattleSetup_New_Tutorial(11, taskManager->fieldSystem);

    struct PartyPokemon *marill = Party_GetMonByIndex(setup->party[BATTLER_PLAYER], 0);

    // move slot 1 is tackle
    u16 data = MOVE_TACKLE;
    SetMonData(marill, MON_DATA_MOVE1, &data);
    data = GetMoveMaxPP(data, 0);
    SetMonData(marill, MON_DATA_MOVE1PP, &data);
    data = 0;
    SetMonData(marill, MON_DATA_MOVE1PPUP, &data);

    // move slot 2 is tail whip
    data = MOVE_TAIL_WHIP;
    SetMonData(marill, MON_DATA_MOVE2, &data);
    data = GetMoveMaxPP(data, 0);
    SetMonData(marill, MON_DATA_MOVE2PP, &data);
    data = 0;
    SetMonData(marill, MON_DATA_MOVE2PPUP, &data);

    // move slot 3 and 4 none
    data = MOVE_NONE;
    SetMonData(marill, MON_DATA_MOVE3, &data);
    SetMonData(marill, MON_DATA_MOVE4, &data);

    void *encounter = Encounter_New(setup, BattleSetup_GetWildTransitionEffect(setup), BattleSetup_GetWildBattleMusic(setup), NULL);

    TaskManager_Call(taskManager, Task_TutorialBattle, encounter);
}
