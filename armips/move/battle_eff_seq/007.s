.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_007", 0

a030_007:
    moldbreakerabilitycheck 0x0, BATTLER_ALL, ABILITY_DAMP, _009C
    if IF_MASK, VAR_SERVER_STATUS1, 0xF0000000, _0090
    changevar VAR_OP_SET, VAR_CALCULATION_WORK, 0x10000000
    changevar2 VAR_OP_LSH, VAR_CALCULATION_WORK, VAR_ATTACKER
    changevar2 VAR_OP_SETMASK, VAR_SERVER_STATUS1, VAR_CALCULATION_WORK
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, 0x2F, 0x0
    changevar VAR_OP_SET, VAR_HP_TEMP, 0x7FFF
    healthbarupdate BATTLER_ATTACKER
    waitmessage
    gotosubscript 76
_0090:
    critcalc
    damagecalc
    endscript
_009C:
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x274, 0x34, 0x8, 0x8, 0x1, 0x1, "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x2
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
    endscript

.close
