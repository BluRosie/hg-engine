.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

GuardSplitMsg equ 1276 // new word

.create "build/move/battle_sub_seq/1_312", 0

// guard split move effect

a001_298:
    //def
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, MON_DATA_DEFENSE, 9
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, MON_DATA_DEFENSE, 43
    changevar2 VAR_OP_ADD,43, 9
    changevar VAR_OP_RSH, 43, 1
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_DEFENSE, 43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, MON_DATA_DEFENSE, 43

    //spdef
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, MON_DATA_SPDEF, 9
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, MON_DATA_SPDEF, 43
    changevar2 VAR_OP_ADD,43, 9
    changevar VAR_OP_RSH, 43, 1
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_SPDEF, 43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, MON_DATA_SPDEF, 43

    printmessage GuardSplitMsg, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
