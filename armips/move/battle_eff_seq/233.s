.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_233", 0

a030_233:
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_ABILITY, 0x79, _008C
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_ITEM, 0x70, _008C
    tryfling _008C
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0xA0000088
    critcalc
    damagecalc
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x478, 0xF, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    removeitem BATTLER_ATTACKER
    endscript
_008C:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
