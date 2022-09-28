.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_026", 0

a001_026:
    abilitycheck 0x0, BATTLER_xFF, ABILITY_MAGIC_GUARD, _00A8
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_xFF, 0x30, VAR_HP_TEMP
    damagediv 32, 8
    abilitycheck 0x1, BATTLER_xFF, ABILITY_HEATPROOF, _0054
    damagediv 32, 2
_0054:
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    printmessage 0x5F, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    setstatus2effect BATTLER_xFF, 0x3
    waitmessage
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    jumptosubseq 2
_00A8:
    endscript

.close
