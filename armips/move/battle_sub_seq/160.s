.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// set tailwind:  move counter to a different field

.create "build/move/battle_sub_seq/1_160", 0

a001_160:
    //if IF_MASK, VAR_SIDE_EFFECT_PLAYER, 0x300, _failure
    iftailwindactive BATTLER_ATTACKER, _failure
    gotosubscript 76
    printmessage 1230, TAG_NONE_DIR, BATTLER_ATTACKER, "NaN", "NaN", "NaN", "NaN", "NaN" // The tailwind blew from behind\nyour team!
    waitmessage
    wait 0x1E
    //changevar VAR_OP_SETMASK, VAR_SIDE_EFFECT_PLAYER, 0x300
    settailwind BATTLER_ATTACKER
    endscript
_failure:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
