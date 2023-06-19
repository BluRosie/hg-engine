.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

//handle pickpocket for attacker

.create "build/move/battle_sub_seq/1_325", 0x0

a001_085:
    playanimation BATTLER_ATTACKER
    waitmessage
    printmessage 0x191, 0x21, 0x1, 0x2, 0x2, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x37, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_ATTACKER, 0x37, VAR_TEMP_WORK
    changemondatabyvalue VAR_OP_SET, BATTLER_DEFENDER, 0x37, 0x0
    goto _00C4
_00A0:
    printmessage 0x2CA, 0x25, 0x2, 0x2, 0x1, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_00C4:
    endscript

.close