.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_325", 0

a010_325:
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
    loadparticle 0, 343
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 0, 0, 0, 0
    loadspritemaybe 0, 0, 1, 0
    callfunction 34, 6, 2, 0, 1, 0, 10, 30, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    wait 5
    playsepanmod 1922, -117, 117, 4, 2
    callfunction 59, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    wait 5
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    playsepan 1920, 117
    waitse 1983, 117, 3
    callfunction 36, 5, 3, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    resetsprite 0
    resetsprite 1
    unloadspriteresource
    end

.close
