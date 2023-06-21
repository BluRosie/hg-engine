.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_058", 0

a001_058:
    checksubstitute BATTLER_ADDL_EFFECT, _00B0
    ifmonstat IF_MASK, BATTLER_DEFENDER, MON_DATA_STATUS_2, 0xE000, _00B0
    printpreparedmessage
    waitmessage
    wait 0x1E
    random 1, 5
    checkitemeffect 0x1, BATTLER_ATTACKER, 0x72, _0064
    changevar VAR_OP_SET, VAR_CALCULATION_WORK, 0x6
_0064:
    changevar VAR_OP_LSH, VAR_CALCULATION_WORK, 0xD
    changemondatabyvar VAR_OP_SETMASK, BATTLER_DEFENDER, 0x35, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_DEFENDER, 0x4C, VAR_ATTACKER
    changemondatabyvar VAR_OP_SET, BATTLER_DEFENDER, 0x5E, VAR_CURRENT_MOVE
_00B0:
    endscript

.close
