.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_323", 0

a010_323:
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
    loadparticle 0, 341
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 42, 8, 258, 100, 110, 100, 80, 100, 327681, 327685, "NaN", "NaN"
    playsepan 1925, -117
    waitstate
    callfunction 42, 8, 258, 100, 100, 100, 120, 100, 1, 327685, "NaN", "NaN"
    addparticle 0, 3, 17
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 4, 17
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    wait 10
    playsepan 2060, -117
    wait 5
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 2, 20
    wait 2
    playsepan 1944, 117
    callfunction 36, 5, 1, 0, 1, 13, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 13, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
