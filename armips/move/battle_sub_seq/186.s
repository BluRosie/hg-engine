.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_186", 0

a001_186:
    wait 0xF
    changevar VAR_OP_SET, VAR_CLIENT_NO_AGI, 0x0
    changevar2 VAR_OP_SET, VAR_ITEM_TEMP, VAR_ATTACKER
    changevar2 VAR_OP_SET, VAR_ATTACKER, VAR_BATTLER_SOMETHING
_0038:
    orderbattlersbyspeed 0x11
    checkonsameteam BATTLER_ATTACKER, BATTLER_ADDL_EFFECT, _009C
    checksubstitute BATTLER_ADDL_EFFECT, _009C
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_HP, 0x0, _009C
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, 0x16
    changevar VAR_OP_SET, VAR_ADD_EFFECT_TYPE, 0x3
    gotosubscript 12
_009C:
    changevar VAR_OP_ADD, VAR_CLIENT_NO_AGI, 0x1
    jumpifvarisvalidbattler 0x27, _0038
    changevar2 VAR_OP_SET, VAR_ATTACKER, VAR_ITEM_TEMP
    endscript

.close
