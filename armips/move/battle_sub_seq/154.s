.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_154", 0

a001_154:
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x30, VAR_HP_TEMP
    damagediv 32, 2
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    printattackmessage
    waitmessage
    gotosubscript 111
    if IF_MASK, VAR_MOVE_STATUS, 0x80000000, _0064
    setoneturnflag BATTLER_ATTACKER, 0x6, 0x1
_0064:
    endscript

.close
