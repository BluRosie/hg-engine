.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_208", 0

a001_208:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, 0xE
    changevar2 VAR_OP_ADD, VAR_ADD_EFFECT_ATTRIBUTE, VAR_MESSAGE_WORK
    changevar VAR_OP_SET, VAR_ADD_EFFECT_TYPE, 0x5
    changevar2 VAR_OP_SET, VAR_ACTIVE_BATTLER, VAR_BATTLER_SOMETHING
    gotosubscript 12
    gotosubscript 290
    endscript

.close
