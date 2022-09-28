.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/constants.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

SoakMsg equ 1330

.create "build/move/battle_sub_seq/1_315", 0

// soak move effect

a001_301:
    abilitycheck 0, BATTLER_DEFENDER, ABILITY_MULTITYPE, _end
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_TYPE_1, TYPE_WATER, changetype
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_TYPE_2, TYPE_WATER, _end

changetype:
    changemondatabyvalue VAR_OP_SET, BATTLER_DEFENDER, MON_DATA_TYPE_1, TYPE_WATER
    changemondatabyvalue VAR_OP_SET, BATTLER_DEFENDER, MON_DATA_TYPE_2, TYPE_WATER
    gotosubscript 76
    printmessage SoakMsg, 0xB, 0xFF, 0x15,0,0,0,0
    waitmessage
    wait 0x1E
    endscript

_end:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript
    
.close
