.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_256", 0

a030_256:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x1000, _00B4
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x63, _0064
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x3B, 0x80
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x4000000C
    changevar VAR_OP_SETMASK, VAR_06, 0x23
    endscript
_0064:
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x3B, 0x80
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x3C, 0x80
    gotosubscript 217
    togglevanish BATTLER_ATTACKER, 0x1
    if IF_EQUAL, VAR_DEFENDER, 0xFF, _00BC
_00B4:
    critcalc
    damagecalc
_00BC:
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, 0x3B, 0x200400C0
    gotosubscript 259
    endscript

.close
