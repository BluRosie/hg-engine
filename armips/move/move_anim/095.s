.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_095", 0
// Hypnosis
a010_095:
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
    loadparticle 0, 126
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 16, 10, 0, 0, "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 16, 10, 0, 0, "NaN", "NaN"
    playsepanmod 1936, -117, 117, 4, 2
    wait 30
    addparticle 0, 2, 4
    addparticle 0, 3, 4
    addparticle 0, 4, 4
    callfunction 34, 6, 8, 0, 1, 31764, 8, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 1856, 117
    waitse 2013, 117, 15
    waitparticle
    unloadparticle 0
    end

.close
