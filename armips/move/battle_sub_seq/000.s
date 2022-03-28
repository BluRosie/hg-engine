.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_000", 0

a001_000:
    if IF_MASK, VAR_BATTLE_TYPE, 0x1, _01DC
    if IF_MASK, VAR_BATTLE_TYPE, 0x20, _0360
    if IF_MASK, VAR_BATTLE_TYPE, 0x200, _03B8
    pokemonencounter BATTLER_OPPONENT
    starttrainerencounter BATTLER_PLAYER
    startencounter
    waitwithoutbuttonpress 0x7A
    hpgaugeslidewait BATTLER_OPPONENT
    waitmessage
    if IF_MASK, VAR_BATTLE_STATUS, 0x80, _0128
    if IF_MASK, VAR_BATTLE_STATUS, 0x8, _0110
    if IF_MASK, VAR_BATTLE_STATUS, 0x1, _00E0
    if IF_MASK, VAR_BATTLE_STATUS, 0x2, _00F8
    if IF_MASK, VAR_BATTLE_TYPE, 0x2, _0140
    printmessage2 0x3C5, 0x2, 0x4, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0154
_00E0:
    printmessage2 0x48F, 0x2, 0x4, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0154
_00F8:
    printmessage2 0x3C8, 0x2, 0x4, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0154
_0110:
    printmessage2 0x4DE, 0x2, 0x4, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0154
_0128:
    printmessage2 0x4F4, 0x2, 0x4, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0154
_0140:
    printmessage2 0x3C7, 0x9, 0xA, 0xC, "NaN", "NaN", "NaN", "NaN"
_0154:
    waitmessage
    wait 0x1E
    if IF_MASK, VAR_BATTLE_TYPE, 0x8, _018C
    printmessage 0x3D3, 0x2, 0x3, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0194
_018C:
    encountermessage2 BATTLER_PLAYER
_0194:
    cmd_C6 BATTLER_OPPONENT
    waitmessage
    throwpokeball BATTLER_PLAYER, 0x0
    pokemonslidein BATTLER_PLAYER
    waitwithoutbuttonpress 0x60
    hpgaugeslidewait BATTLER_PLAYER
    waitmessage
    cmd_C7 BATTLER_OPPONENT
    waitmessage
    goto _040C
_01DC:
    if IF_MASK, VAR_BATTLE_STATUS, 0x20, _02A8
    startencounter
    starttrainerencounter BATTLER_ALL
    waitwithoutbuttonpress 0x60
    loadballgfx
    initstartballguage BATTLER_OPPONENT
    initstartballguage BATTLER_PLAYER
    encountermessage BATTLER_OPPONENT
    waitmessage
    wait 0x1E
    encountermessage2 BATTLER_OPPONENT
    deletestartballguage BATTLER_OPPONENT
    throwpokeball BATTLER_OPPONENT, 0x0
    pokemonslidein BATTLER_OPPONENT
    waitwithoutbuttonpress 0x70
    hpgaugeslidewait BATTLER_OPPONENT
    waitmessage
    encountermessage2 BATTLER_PLAYER
    deletestartballguage BATTLER_PLAYER
    throwpokeball BATTLER_PLAYER, 0x0
    pokemonslidein BATTLER_PLAYER
    waitwithoutbuttonpress 0x60
    hpgaugeslidewait BATTLER_PLAYER
    waitmessage
    deleteballgfx
    goto _040C
_02A8:
    startencounter
    starttrainerencounter BATTLER_ALL
    waitwithoutbuttonpress 0x60
    loadballgfx
    initstartballguage BATTLER_OPPONENT
    initstartballguage BATTLER_PLAYER
    encountermessage BATTLER_OPPONENT
    waitmessage
    wait 0x1E
    encountermessage2 BATTLER_PLAYER
    deletestartballguage BATTLER_PLAYER
    throwpokeball BATTLER_PLAYER, 0x0
    pokemonslidein BATTLER_PLAYER
    waitwithoutbuttonpress 0x60
    hpgaugeslidewait BATTLER_PLAYER
    waitmessage
    encountermessage2 BATTLER_OPPONENT
    deletestartballguage BATTLER_OPPONENT
    throwpokeball BATTLER_OPPONENT, 0x0
    pokemonslidein BATTLER_OPPONENT
    waitwithoutbuttonpress 0x70
    hpgaugeslidewait BATTLER_OPPONENT
    waitmessage
    deleteballgfx
    goto _040C
_0360:
    pokemonencounter BATTLER_OPPONENT
    starttrainerencounter BATTLER_PLAYER
    startencounter
    waitwithoutbuttonpress 0x7A
    hpgaugeslidewait BATTLER_OPPONENT
    waitmessage
    printmessage2 0x3C5, 0x2, 0x4, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    hpgaugeslidein BATTLER_PLAYER
    wait 0x7
    waitmessage
    goto _040C
_03B8:
    pokemonencounter BATTLER_OPPONENT
    starttrainerencounter BATTLER_PLAYER
    startencounter
    waitwithoutbuttonpress 0x7A
    hpgaugeslidewait BATTLER_OPPONENT
    waitmessage
    printmessage2 0x4C3, 0x1B, 0x4, 0x4, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    hpgaugeslidein BATTLER_PLAYER
    wait 0x7
    waitmessage
_040C:
    changebackground
    endscript

.close
