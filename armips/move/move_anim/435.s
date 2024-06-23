.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_435", 0

a010_435:
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
    loadparticle 0, 453
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 0, 3
    addparticle 0, 2, 3
    addparticle 0, 3, 3
    wait 2
    repeatse 1969, -117, 4, 7
    wait 28
    callfunction 36, 5, 2, 0, 1, 2, 288, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 4
    waitse 1968, 117, 5
    callfunction 34, 6, 8, 0, 1, 13311, 14, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 16, 0, 1, 13311, 14, 0, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
