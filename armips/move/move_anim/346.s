.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_346", 0

a010_346:
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
    loadparticle 0, 364
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 42, 8, 258, 100, 110, 100, 80, 100, 327681, 327685, "NaN", "NaN"
    waitstate
    callfunction 42, 8, 258, 100, 100, 100, 120, 100, 1, 327685, "NaN", "NaN"
    wait 3
    addparticle 0, 1, 3
    addparticle 0, 2, 3
    waitstate
    loop 2
    playsepan 1944, -117
    callfunction 42, 8, 258, 100, 110, 100, 80, 100, 262145, 262148, "NaN", "NaN"
    waitstate
    callfunction 42, 8, 258, 100, 100, 100, 120, 100, 1, 262148, "NaN", "NaN"
    waitstate
    doloop
    playsepan 1944, -117
    waitse 2118, 0, 15
    wait 10
    addparticle 0, 0, 4
    wait 10
    callfunction 36, 5, 2, 0, 1, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end

.close
