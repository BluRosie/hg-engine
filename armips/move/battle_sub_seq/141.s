.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// yawn battle script

.create "build/move/battle_sub_seq/1_141", 0

a001_141:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_INSOMNIA, _010C
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_VITAL_SPIRIT, _010C
    checkcloudnine _checkFlowerVeil
    if IF_NOTMASK, VAR_FIELD_EFFECT, WEATHER_SUNNY_ANY, _checkFlowerVeil
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _010C

_checkFlowerVeil:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil
    moldbreakerabilitycheck 0x0, BATTLER_ALLY | BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil
    goto CheckIfGrounded
_checkGrassTypeForFlowerVeil:
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_GRASS, _printAttackIntoNoEffectFlowerVeil
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_GRASS, _printAttackIntoNoEffectFlowerVeil
CheckIfGrounded:
    ifgrounded BATTLER_ADDL_EFFECT, CheckElectricOrMistyTerrain
    goto _0058
CheckElectricOrMistyTerrain:
    ifterrainoverlayistype ELECTRIC_TERRAIN, ElectricOrMistyTerrainFail
    ifterrainoverlayistype ELECTRIC_TERRAIN, ElectricOrMistyTerrainFail

_0058:
    printattackmessage
    waitmessage
    checksubstitute BATTLER_ADDL_EFFECT, _0138
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SOUNDPROOF, _0094
    if IF_MASK, VAR_FIELD_EFFECT, FIELD_STATUS_UPROAR, _0138
_0094:
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _0138
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _0150
    if IF_MASK, VAR_MOVE_STATUS, 0x10001, _0138
    tryyawn _0138
    playanimation BATTLER_ATTACKER
    waitmessage
    printmessage 0x221, 0x9, 0x1, 0x7, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_010C:
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 734, TAG_NICK_ABILITY, BATTLER_ADDL_EFFECT, BATTLER_ADDL_EFFECT, "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\nmade it ineffective!
    goto _0168
_0138:
    wait 0x1E
    gotosubscript 75
    goto _0184
_0150:
    wait 0x1E
    printmessage 0xC8, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
_0168:
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
_0184:
    endscript


_printAttackIntoNoEffectFlowerVeil:
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 734, TAG_NICK_ABILITY, BATTLER_ALLY | BATTLER_ADDL_EFFECT, BATTLER_ALLY | BATTLER_ADDL_EFFECT, "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\nmade it ineffective!
    goto _0168

ElectricOrMistyTerrainFail:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
