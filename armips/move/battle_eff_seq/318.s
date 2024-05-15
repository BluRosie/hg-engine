.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/battle_script_constants.s"
.include "armips/include/hold_item_effects.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_318", 0

// Geomancy

a030_318:
    // sp atk
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STAT_STAGE_SPATK, 12, _start
    // sp def
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STAT_STAGE_SPDEF, 12, _start
    // speed
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STAT_STAGE_SPEED, 12, _start

    // no stat changes can happen, move should fail before even charging
    printattackmessage
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

_start:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x1000, StatusEffect
    preparemessage 1436, TAG_NICK, BATTLER_ATTACKER, "NaN", "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0} is absorbing\npower!
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_CHARGE_SKIP, SkipChargeTurn
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x4000000C
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x23
    endscript

SkipChargeTurn:
    // skip charge turn
    gotosubscript SUB_SEQ_ITEM_POWER_HERB

NoStatusEffect:
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x300, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
    goto ClearFlagsAndEnd

StatusEffect:
    // print message and play animation
    gotosubscript SUB_SEQ_MOVE_EFFECT

    changevar2 VAR_OP_SET, VAR_ACTIVE_BATTLER, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x200000
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x4001
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS2, 0x80

    // sp atk up 2
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, SPATK_UP_2
    gotosubscript 12
    // sp def up 2
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, SPDEF_UP_2
    gotosubscript 12
    // speed up 2
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, SPEED_UP_2
    gotosubscript 12

    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS2, 0x2
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS2, 0x80

ClearFlagsAndEnd:
    gotosubscript 259
    endscript

.close
