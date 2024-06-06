.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_080", 0

a010_080:
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
    loadparticle 0, 111
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 1531, -117
    callfunction 60, 3, 2, 3, 10, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loop 3
    addparticle 0, 1, 3
    addparticle 0, 2, 3
    addparticle 0, 3, 3
    addparticle 0, 0, 3
    wait 10
    doloop
    waitstate
    callfunction 57, 4, 2, 14, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    addparticle 0, 3, 4
    addparticle 0, 0, 4
    callfunction 36, 5, 1, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1962, 117
    callfunction 57, 4, 2, -14, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
