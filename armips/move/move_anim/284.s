.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_284", 0
//Eruption
a010_284:
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
    loadparticle 0, 302
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 12, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 2, 3
    addparticle 0, 1, 3
    callfunction 42, 8, 258, 100, 120, 100, 80, 100, 1, 262148, "NaN", "NaN"
    playsepan 2004, -117
    waitstate
    callfunction 42, 8, 258, 100, 80, 100, 160, 100, 1, 262148, "NaN", "NaN"
    waitse 2004, -117, 10
    waitstate
    loop 1
    addparticle 0, 2, 3
    addparticle 0, 1, 3
    callfunction 42, 8, 258, 100, 120, 100, 80, 100, 1, 262148, "NaN", "NaN"
    waitstate
    callfunction 42, 8, 258, 100, 80, 100, 160, 100, 1, 262148, "NaN", "NaN"
    waitstate
    doloop
    wait 15
    playsepan 1972, 117
    callfunction 68, 5, 0, 5, 0, 4, 3, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 3, 2124, 14, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 16, 0, 3, 2124, 14, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -6000, 1000, 4000, "NaN", "NaN", "NaN", "NaN"
    wait 5
    playsepan 1972, 117
    callfunction 36, 5, 3, 0, 1, 15, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 3, 0, 1, 15, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 6000, -2000, 4000, "NaN", "NaN", "NaN", "NaN"
    wait 2
    playsepan 1972, 117
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 12000, 0, -4000, "NaN", "NaN", "NaN", "NaN"
    wait 3
    playsepan 1972, 117
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -10000, -1000, -4000, "NaN", "NaN", "NaN", "NaN"
    wait 2
    playsepan 1972, 117
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -2000, -2000, 4000, "NaN", "NaN", "NaN", "NaN"
    wait 4
    playsepan 1972, 117
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 4000, -3000, 4000, "NaN", "NaN", "NaN", "NaN"
    wait 2
    playsepan 1972, 117
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -5000, -4000, -4000, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
