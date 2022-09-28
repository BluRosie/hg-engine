.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_079", 0

a001_079:
    if IF_MASK, VAR_10, 0x10001, _0088
    checksubstitute BATTLER_DEFENDER, _0088
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_DEFENDER, 0x3B, 0x18
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_DEFENDER, 0x3B, 0x10
    changemondatabyvar VAR_OP_SET, BATTLER_DEFENDER, 0x4A, VAR_ATTACKER
    gotosubscript 76
    printmessage 0x17A, 0x9, 0x1, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0088:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
