.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_794", 0

// Life Dew - half of Water Sport followed by Aromatherapy heal anm, using dark bg

a010_794:
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

    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"


    playsepan 1944, -117
    waitse 2118, 0, 15
    wait 10
    addparticle 0, 0, 4
    wait 10
    waitparticle
    unloadparticle 0

    loadparticle 0, 330
    waitstate
    unloadspriteresource

    waitse 1808, -117, 23
    addparticle 0, 3, 19
    addparticle 0, 1, 19
    callfunction 34, 6, 2, 0, 1, 32767, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 4, 0, 1, 32767, 10, 0, "NaN", "NaN", "NaN", "NaN"
    waitstate

    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"


    end

.close
