.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_352", 0

// Fillet Away move effect

a001_352:
    //attack
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STAT_STAGE_ATTACK, 12, StatusEffect
    //spatk
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STAT_STAGE_SPATK, 12, StatusEffect
    //speed
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STAT_STAGE_SPEED, 12, StatusEffect

    goto NoStatusEffect
StatusEffect:
    // borrowed from Belly Drum
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x30, VAR_HP_TEMP
    damagediv 32, 2
    ifmonstat2 IF_LESSTHAN, BATTLER_ATTACKER, VAR_ATTACKER_STATUS, 0x20, NoStatusEffect

    // generically prints the attack message and plays the move animation
    gotosubscript 76

    // deal half damage
    changevar VAR_OP_MUL, VAR_HP_TEMP, -1
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    gotosubscript 2

    // begin boost
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x200000
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x4001
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS2, 0x80
    //atk up 2
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, ATTACK_UP_2
    gotosubscript 12
    //spatk up 2
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, SPATK_UP_2
    gotosubscript 12
    //speed up 2
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, SPEED_UP_2
    gotosubscript 12
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS2, 0x2
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS2, 0x80
    endscript
NoStatusEffect:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
