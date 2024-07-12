.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_332", 0

a010_332:
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
    loadparticle 0, 350
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    callfunction 33, 5, 0, 0, 0, 8, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 15
    playsepan 1911, 117
    waitse 1910, 117, 10
    loadspritemaybe 0, 0, 0, 0
    loadspritemaybe 0, 0, 1, 1
    loadspriteresource 4
    loadspritemaybe 2, 0, 4, 4
    cmd52 2, 0, 4
    callfunction 8, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    addparticle 0, 3, 4
    addparticle 0, 0, 4
    wait 10
    enablemonsprite 4, 0x0
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    resetsprite 0
    resetsprite 1
    unloadspriteresource
    cmd53 0
    resetsprite 4
    callfunction 33, 5, 0, 0, 8, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
