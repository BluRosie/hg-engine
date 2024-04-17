.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_318", 0

// Geomancy

a030_318:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x1000, MainEffect
    printmessage 1436, TAG_NICK, BATTLER_ATTACKER, "NaN", "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0} is absorbing\npower!
    waitmessage
    wait 0x1E
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x63, SkipChargeTurn
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x4000000C
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x23
    endscript
SkipChargeTurn:
    // skip charge turn
    gotosubscript 217
MainEffect:
    // sp atk
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STAT_STAGE_SPATK, 12, StatusEffect
    // sp def
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STAT_STAGE_SPDEF, 12, StatusEffect
    // speed
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STAT_STAGE_SPEED, 12, StatusEffect

    goto NoStatusEffect
StatusEffect:
    // print message and play animation
    gotosubscript 76

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
    goto ClearFlagsAndEnd
NoStatusEffect:
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x300, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
    goto ClearFlagsAndEnd
ClearFlagsAndEnd:
    gotosubscript 259
    endscript

.close
