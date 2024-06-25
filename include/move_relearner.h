#ifndef MOVE_RELEARNER_H
#define MOVE_RELEARNER_H

#include "types.h"
#include "pokemon.h"
#include "item.h"
#include "options.h"
#include "save.h"

typedef struct MoveRelearnerArgs {
    struct PartyPokemon *mon;
    struct PlayerProfile *profile;
    Options *options;
    u32 *unkC;
    u16 *eligibleMoves;
    u8 filler_14[5];
    u8 type;
    u8 padding_1A[2];
} MoveRelearnerArgs;


u16 LONG_CALL *MoveRelearner_GetEligibleLevelUpMoves(struct PartyPokemon *mon, u32 heapId);

void LONG_CALL MoveRelearner_LaunchApp(struct FieldSystem *fieldSystem, MoveRelearnerArgs *moveRelearner);

MoveRelearnerArgs LONG_CALL *MoveRelearner_New(u32 heapId);

#endif

