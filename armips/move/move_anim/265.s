.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_265", 0

a010_265:
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
    loadparticle 0, 283
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    initresources 0, 1, 2, 2, 2, 2, 0, 0
    loadresources 0, 20
    loadpalette 0, 19, 1
    loadcell 0, 20
    loadcellanm 0, 20
    addsomething 0, 25, 20, 19, 20, 20, 0, 0, 3, 0, 24, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 30
    repeatse 1828, 117, 4, 2
    addparticle 0, 2, 4
    addparticle 0, 0, 4
    addparticle 0, 3, 4
    addparticle 0, 1, 4
    callfunction 36, 5, 1, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    freeresources 0
    end

.close
