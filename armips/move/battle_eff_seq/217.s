.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Wake-Up Slap

.create "build/move/battle_eff_seq/0_217", 0

a030_217:
    checksubstitute BATTLER_DEFENDER, _005C
    ifmonstat IF_MASK, BATTLER_DEFENDER, MON_DATA_STATUS_1, 0x7, _003C
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xA
    goto _005C
_003C:
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x14
    iffirsthitofparentalbond _005C
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000075
_005C:
    critcalc
    damagecalc
    endscript

.close
