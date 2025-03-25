.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_891", 0

// Twin Beam
// Psybeam animation

a010_891:
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
    loadparticle 0, 91
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepanmod 1529, -117, 117, 4, 2
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 14, 8, 0, 0, "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 31764, 8, 10, "NaN", "NaN", "NaN", "NaN"
    loop 2
    callfunction 52, 3, 8, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    callfunction 52, 3, 16, -16, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 16
    callfunction 52, 3, 8, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    doloop
    waitparticle
    unloadparticle 0
    end

.close
