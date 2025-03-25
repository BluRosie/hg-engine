.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_275", 0

a010_275:
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
    loadparticle 0, 293
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    initresources 0, 4, 1, 1, 1, 1, 0, 0
    loadresources 0, 26
    loadpalette 0, 25, 1
    loadcell 0, 26
    loadcellanm 0, 26
    addsomething 0, 23, 26, 25, 26, 26, 0, 0, 1, 4, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitse 1908, -117, 10
    waitse 1908, -117, 28
    wait 35
    repeatse 1999, -117, 2, 12
    addparticle 0, 0, 3
    waitstate
    freeresources 0
    end

.close
