.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_210", 0

a010_210:
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
    loadparticle 0, 229
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    loop 2
    playsepan 1930, 0
    callfunction 33, 5, 0, 0, 0, 8, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 33, 5, 0, 0, 8, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    doloop
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    wait 5
    callfunction 36, 5, 0, 2, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1910, 117
    waitparticle
    unloadparticle 0
    end

.close
