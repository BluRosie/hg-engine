.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_061", 0

a001_061: //crash damage calc
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_MAGIC_GUARD, _00DC
    if IF_NOTMASK, VAR_06, 0x1000, _00DC
    printmessage 0x10C, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, MON_DATA_MAX_HP, VAR_43
    changevar VAR_OP_MUL, VAR_43, 0xFFFFFFFF
    damagediv VAR_43, 2
    changevar2 VAR_OP_SET, VAR_HP_TEMP, VAR_43
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
_00DC:
    endscript

.close
