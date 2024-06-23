.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_431", 0

a010_431:
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
    loadparticle 0, 449
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 1972, -117
    loop 3
    callfunction 57, 4, 4, 0, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 4, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -3440, 0, "NaN", "NaN", "NaN", "NaN"
    wait 4
    callfunction 57, 4, 4, 0, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 4
    doloop
    callfunction 57, 4, 4, -16, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1927, -117
    waitstate
    wait 10
    callfunction 57, 4, 4, 32, -16, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    playsepan 1968, 117
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    callfunction 36, 5, 4, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 4, -16, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
