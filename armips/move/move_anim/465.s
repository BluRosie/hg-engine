.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_465", 0

a010_465:
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
    loadparticle 0, 483
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 2113, -117
    addparticle 0, 0, 3
    addparticle 0, 2, 3
    addparticle 0, 1, 3
    callfunction 33, 5, 0, 0, 0, 13, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    wait 40
    playsepan 2106, 0
    callfunction 33, 5, 0, 0, 13, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 4, 4, 0, 10, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
