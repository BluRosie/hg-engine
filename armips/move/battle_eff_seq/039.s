.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_039", 0

a030_039:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x1000, _0080
    if IF_MASK, VAR_06, 0x200, _0080
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x63, _0064
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x4000000C
    changevar VAR_OP_SETMASK, VAR_06, 0x23
    endscript
_0064:
    gotosubscript 217
    if IF_EQUAL, VAR_DEFENDER, 0xFF, _0098
_0080:
    changevar VAR_OP_ADD, VAR_CRIT_CHANCE, 0x1
    critcalc
    damagecalc
_0098:
    gotosubscript 259
    endscript

.close
