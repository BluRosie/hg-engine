.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_399", 0

a010_399:
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
    loadparticle 0, 417
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    wait 1
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    playsepanmod 2086, -117, 117, 4, 2
    loadspritemaybe 0, 0, 0, 0
    loadspritemaybe 2, 0, 1, 1
    callfunction 75, 5, 0, 30, 3, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 75, 5, 1, 30, 3, 0, 2, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    addparticle 0, 0, 3
    addparticle 0, 1, 3
    callfunction 74, 1, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 25
    enablemonsprite 0, 0x0
    enablemonsprite 1, 0x0
    callfunction 36, 5, 1, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 8296, 14, 0, "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 74, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    resetsprite 0
    resetsprite 1
    unloadspriteresource
    waitparticle
    unloadparticle 0
    end

.close
