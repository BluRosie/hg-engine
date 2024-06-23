.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_053", 0

a010_053:
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
    loadparticle 0, 84
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 12, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    playsepan 1938, 117
    wait 50
    addparticle 0, 0, 4
    callfunction 36, 5, 2, 0, 1, 14, 258, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 3
    callfunction 34, 6, 8, 0, 1, 31, 10, 25, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 14, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
