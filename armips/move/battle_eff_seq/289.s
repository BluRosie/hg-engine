.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_289", 0

a030_289:
    ifmonstat2 IF_EQUAL, BATTLER_ATTACKER, MON_DATA_ITEM, 0, Status
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xA
    goto _end

Status:
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x14

_end:
    critcalc
    damagecalc
    endscript

.close