.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"
.include "armips/include/constants.s"

.create "build/move/battle_sub_seq/1_055", 0

// Rest

a001_055:
    printattackmessage
    waitmessage
    ifterrainoverlayistype ELECTRIC_TERRAIN, ElectricOrMistyTerrainFail
    ifterrainoverlayistype MISTY_TERRAIN, ElectricOrMistyTerrainFail
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_INSOMNIA, _018C
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_VITAL_SPIRIT, _018C
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_1, 0x7, _01B0
    // In Generations III–IV only, if the user has the user has Soundproof, then Rest can be used while Uproar is in effect.
    //abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_SOUNDPROOF, _0070
    if IF_MASK, VAR_FIELD_EFFECT, FIELD_STATUS_UPROAR, _01D0
_0070:
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x30, VAR_HP_TEMP
    ifmonstat2 IF_EQUAL, BATTLER_ATTACKER, VAR_ATTACKER_STATUS, 0x20, _0228
    playanimation BATTLER_ATTACKER
    waitmessage
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_1, 0xFFFFFFF8, _00D8
    printmessage 0xCD, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0108
_00D8:
    setstatusicon BATTLER_ATTACKER, 0x0
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, 0x34, 0xFFFFFFF8
    printmessage 0xD0, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
_0108:
    waitmessage
    wait 0x1E
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x34, 0x3
    setstatusicon BATTLER_ATTACKER, 0x1
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    gotosubscript 2
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_1, 0xFFFFFFF8, _00D8
    printmessage 0xB8, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0250
_018C:
    wait 0x1E
    printmessage 0x149, 0xB, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    goto _0240
_01B0:
    wait 0x1E
    printmessage 0x39, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0240
_01D0:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x70, _0208
    wait 0x1E
    printmessage 0x146, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0240
_0208:
    wait 0x1E
    printmessage 0x143, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0240
_0228:
    wait 0x1E
    printmessage 0xBB, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
_0240:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
_0250:
    waitmessage
    wait 0x1E
    endscript

ElectricOrMistyTerrainFail:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
