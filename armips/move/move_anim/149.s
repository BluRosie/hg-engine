.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_149", 0

//Psywave

a010_149:
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
    loadparticle 0, 171
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle2 0, 0, 0, 3
    callfunction 65, 9, 0, 0, 0, 0, 19, 64, 0, 0, 1, "NaN"
    playsepanmod 1869, -117, 117, 4, 2
    wait 8
    playsepanmod 1869, -117, 117, 4, 2
    wait 10
    addparticle 0, 1, 4
    waitse 1859, 117, 2
    wait 10
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end

.close
