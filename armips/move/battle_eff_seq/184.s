.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_184", 0

a030_184:
    ifmonstat IF_NOTEQUAL, BATTLER_ATTACKER, MON_DATA_ITEM, 0x0, _005C
    tryrecycle _005C
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x37, VAR_ITEM_TEMP2
    preparemessage 0x24D, 0xF, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005A
    endscript
_005C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
