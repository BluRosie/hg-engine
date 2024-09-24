.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_434", 0
//draco meteor
a010_434:
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
    loadparticle 0, 452
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 12, 10272, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1877, 0
    waitstate
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 0, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 0, 0, 0, 0, "NaN", "NaN"
    wait 50
    playsepan 1973, 0
    addparticle 0, 2, 17
    cmd37 6, 0, 0, 0, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 0, 0, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 3, 17
    cmd37 6, 0, 0, 0, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 3, 17
    cmd37 6, 0, 0, 0, 0, 0, 0, "NaN", "NaN"
    playsepanmod 2095, -117, 117, 4, 2
    wait 15
    playsepanmod 2095, -117, 117, 4, 2
    addparticle 0, 0, 4
    callfunction 36, 5, 4, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 0, 3, 0, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    playsepanmod 2095, -117, 117, 4, 2
    addparticle 0, 0, 4
    callfunction 36, 5, 4, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 0, 3, 0, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 15
    addparticle 0, 0, 4
    callfunction 36, 5, 4, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 0, 4, 0, 4, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepanmod 2095, -117, 117, 4, 2
    wait 20
    callfunction 33, 5, 0, 1, 12, 0, 10272, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
