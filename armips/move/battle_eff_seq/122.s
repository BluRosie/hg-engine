.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_122", 0

a030_122:
    ifsecondhitofparentalbond Attack
    trypresent _0014    
    ifmonstat IF_NOTEQUAL, BATTLER_ATTACKER, MON_DATA_ABILITY, ABILITY_PARENTAL_BOND, SkipParentalBondEffect
    setparentalbondflag
Attack:
    // No accuracy check per hit
    setmultihit 0x2, 0xFD
    changevar VAR_OP_SET, VAR_SUCCESSIVE_HIT, 0x1
SkipParentalBondEffect:
    critcalc
    damagecalc
    endscript
_0014:
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_DEFENDER
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000061
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x8000
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    endscript

.close
