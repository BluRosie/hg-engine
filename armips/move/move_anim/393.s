.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_393", 0

a010_393:
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspriteresource 3
    loadspritemaybe 4, 0, 0, 0
    loadspritemaybe 5, 0, 1, 1
    loadspritemaybe 6, 0, 2, 2
    loadspritemaybe 7, 0, 3, 3
    callfunction 78, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loadparticle 0, 411
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 0, 17
    cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    jumpifside 0, _012C, _01CC
    end
_012C:
    loop 2
    playsepan 1969, -117
    callfunction 57, 4, 8, 0, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    callfunction 57, 4, 16, 0, 16, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1879, -117
    wait 16
    callfunction 57, 4, 8, 0, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    doloop
    waitparticle
    unloadparticle 0
    end
_01CC:
    loop 2
    playsepan 1969, -117
    callfunction 57, 4, 8, 0, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    callfunction 57, 4, 16, 0, -16, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1879, -117
    wait 16
    callfunction 57, 4, 8, 0, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    doloop
    waitparticle
    unloadparticle 0
    end

.close
