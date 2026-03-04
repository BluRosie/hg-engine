#ifndef EXP_CONTRIBUTION_H
#define EXP_CONTRIBUTION_H

#include "battle.h"

void LONG_CALL ExpContrib_RecordDirectDamage(struct BattleSystem *bw, struct BattleStruct *sp, u32 attacker, u32 target, u32 damage);
void LONG_CALL ExpContrib_RecordResidualDamage(struct BattleSystem *bw, struct BattleStruct *sp, u32 source, u32 target, u32 damage);
void LONG_CALL ExpContrib_RecordStatDrop(struct BattleSystem *bw, struct BattleStruct *sp, u32 source, u32 target, u32 statId, u32 oldStage, u32 newStage);
BOOL LONG_CALL ExpContrib_CaptureContributionForFainted(struct BattleSystem *bw, struct BattleStruct *sp, u32 faintedClient, u32 outDamageHp[6], u32 outStatScore[6]);

#endif
