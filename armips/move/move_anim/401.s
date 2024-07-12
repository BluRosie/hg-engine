.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_401", 0

a010_401:
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
    loadparticle 0, 419
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    wait 1
    playsepan 1944, -117
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loop 1
    callfunction 57, 4, 2, 0, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 2
    callfunction 57, 4, 2, 0, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 2
    doloop
    loadspritemaybe 0, 0, 0, 0
    loadspritemaybe 2, 0, 1, 1
    callfunction 75, 5, 0, 30, 3, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 75, 5, 1, 30, 3, 0, 2, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 2, 3
    addparticle 0, 0, 3
    wait 25
    enablemonsprite 0, 0x0
    enablemonsprite 1, 0x0
    playsepan 2060, 117
    addparticle 0, 1, 4
    callfunction 36, 5, 1, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    resetsprite 0
    resetsprite 1
    unloadspriteresource
    waitparticle
    unloadparticle 0
    end

.close
