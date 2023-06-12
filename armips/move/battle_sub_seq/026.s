.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_026", 0

// end of turn burn

a001_026:
    abilitycheck 0x0, BATTLER_WORK, ABILITY_MAGIC_GUARD, _00A8
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_WORK, 0x30, VAR_HP_TEMP
    damagediv VAR_HP_TEMP, 16                                              // burn now does 1/16th the damage in gen 7
    abilitycheck 0x1, BATTLER_WORK, ABILITY_HEATPROOF, _0054               // heatproof further divides the damage done by 2
    damagediv VAR_HP_TEMP, 2
_0054:
    changevar VAR_OP_MUL, VAR_HP_TEMP, -1
    printmessage 95, TAG_NICK, BATTLER_WORK, "NaN", "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0} is hurt\nby its burn!
    waitmessage
    wait 0x1E
    setstatus2effect BATTLER_WORK, 0x3
    waitmessage
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    jumptosubseq 2                                                         // deal damage + update hp bar sub seq
_00A8:
    endscript

.close
