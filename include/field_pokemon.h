#ifndef FIELD_POKEMON_H
#define FIELD_POKEMON_H

#include "types.h"

typedef struct
{
    u32 trainerID;
    BOOL repelCheck;
    BOOL EncCancelSpInvalid;
    u8 partySlotOneLevel; //minimum level to use for repel functionality
    u8 egg;				//is first slot an egg
    u8 ability;
    u8 formProbability[2];
    u8 unownTableType;
} __attribute__((packed)) ENC_FLD_SPA;



u8 __attribute__((long_call)) GetEncountChar(void *inPokeParam, const ENC_FLD_SPA *inFldSpa);
BOOL __attribute__((long_call)) AddPokemonParam(const int inTarget, const ENC_FLD_SPA *inFldSpa, void *ioPokeParam, void *ioBattleParam);

#endif
