#ifndef BATTLE_CONTROLLER_PLAYER_H
#define BATTLE_CONTROLLER_PLAYER_H

#include "battle.h"

typedef void (*ControllerFunction)(struct BattleSystem *, struct BattleStruct *);

extern const ControllerFunction sPlayerBattleCommands[];

void LONG_CALL ov12_022639B8(struct BattleSystem *bsys, int battlerId, MESSAGE_PARAM msg);
u8 LONG_CALL BattleSystem_GetBattleOutcomeFlags(struct BattleSystem *bsys);
BOOL LONG_CALL BattleContext_Main(struct BattleSystem *bsys, struct BattleStruct *ctx);

#endif
