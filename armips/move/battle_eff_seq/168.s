.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_168", 0

a030_168:
    changevar VAR_OP_SET, VAR_CALCULATION_WORK, 0x10000000
    changevar2 VAR_OP_LSH, VAR_CALCULATION_WORK, VAR_ATTACKER
    changevar2 VAR_OP_SETMASK, VAR_SERVER_STATUS1, VAR_CALCULATION_WORK
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, 0x2F, 0x0
    changevar VAR_OP_SET, VAR_HP_TEMP, 0x7FFF
    healthbarupdate BATTLER_ATTACKER
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x8001C
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0xA000006B
    endscript

.close
