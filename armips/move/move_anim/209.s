.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_209", 0

a010_209:
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
    loadparticle 0, 228
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 2, 3
    addparticle 0, 3, 3
    playsepan 2031, -117
    callfunction 34, 5, 2, 1, 1, 13311, 10, "NaN", "NaN", "NaN", "NaN", "NaN"
    loop 3
    callfunction 33, 5, 0, 0, 0, 8, 13311, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 33, 5, 0, 0, 8, 0, 13311, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    doloop
    callfunction 34, 5, 8, 1, 1, 13311, 10, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    callfunction 36, 5, 1, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1971, 117
    wait 1
    callfunction 52, 3, 3, 24, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    callfunction 52, 3, 3, -24, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
