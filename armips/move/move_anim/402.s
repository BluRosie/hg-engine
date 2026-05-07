.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_402", 0

//Seed Bomb

a010_402:
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
    loadparticle 0, 420
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 2120, 0
    addparticle2 0, 0, 1, 3
    callfunction 66, 6, 0, 0, 0, 0, 18, 64, "NaN", "NaN", "NaN", "NaN"
    wait 2
    playsepan 2120, 0
    addparticle2 0, 1, 1, 3
    callfunction 66, 6, 1, 0, 0, 0, 18, 64, "NaN", "NaN", "NaN", "NaN"
    wait 2
    playsepan 2120, 0
    addparticle2 0, 2, 1, 3
    callfunction 66, 6, 2, 0, 0, 0, 18, 64, "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    playsepan 2120, 0
    addparticle2 0, 3, 1, 3
    callfunction 66, 6, 3, 0, 0, 0, 18, 64, "NaN", "NaN", "NaN", "NaN"
    wait 2
    callfunction 36, 5, 1, 0, 1, 12, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 2120, 0
    addparticle2 0, 4, 1, 3
    callfunction 66, 6, 4, 0, 0, 0, 18, 64, "NaN", "NaN", "NaN", "NaN"
    waitse 1993, 117, 10
    waitse 1993, 117, 20
    waitse 1993, 117, 30
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
