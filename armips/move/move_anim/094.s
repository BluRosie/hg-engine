.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_094", 0

//Psychic

a010_094:
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 1, 0, 0, 0
    changebg 52, 0x800001
    waitforchangebg2
    callfunction 76, 1, 50, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitforchangebg
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2, 0, 1, 13311, 10, 0, "NaN", "NaN", "NaN", "NaN"
    wait 10
    loadspriteresource 4
    loadspritemaybe 3, 0, 4, 4
    cmd52 3, 0, 4
    repeatse 1903, 117, 4, 2
    callfunction 11, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 20
    cmd43
    cmd0C 4, 1
    resetbg 52, 0x1000001
    waitstate
    unloadspriteresource
    resetsprite 0
    cmd53 0
    resetsprite 4
    waitforchangebg
    end

.close
