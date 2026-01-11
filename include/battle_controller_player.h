#ifndef BATTLE_CONTROLLER_PLAYER_H
#define BATTLE_CONTROLLER_PLAYER_H

#include "battle.h"

// Battle outcome flags
#define BATTLE_OUTCOME_NONE        0
#define BATTLE_OUTCOME_WIN         1
#define BATTLE_OUTCOME_LOSE        2
#define BATTLE_OUTCOME_DRAW        3
#define BATTLE_OUTCOME_MON_CAUGHT  4
#define BATTLE_OUTCOME_PLAYER_FLED 5
#define BATTLE_OUTCOME_FOE_FLED    6

typedef void (*ControllerFunction)(struct BattleSystem *, struct BattleStruct *);

extern const ControllerFunction sPlayerBattleCommands[];

void LONG_CALL ov12_022639B8(struct BattleSystem *bsys, int battlerId, MESSAGE_PARAM msg);
u8 LONG_CALL BattleSystem_GetBattleOutcomeFlags(struct BattleSystem *bsys);
void LONG_CALL BattleSystem_SetBattleOutcomeFlags(struct BattleSystem *bsys, u8 battleOutcomeFlag);
BOOL LONG_CALL BattleContext_Main(struct BattleSystem *bsys, struct BattleStruct *ctx);

#endif
