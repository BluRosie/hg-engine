.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_226", 0

a010_226:
    cmd57 119
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
    loadparticle 0, 244
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    initresources 0, 1, 1, 1, 1, 1, 0, 0
    loadresources 0, 16
    loadpalette 0, 15, 1
    loadcell 0, 16
    loadcellanm 0, 16
    addsomething 0, 13, 16, 15, 16, 16, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1797, -117
    wait 32
    playsepan 1798, -117
    waitse 1980, -117, 40
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 30, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 30, 0, 0, 0, "NaN", "NaN"
    waitstate
    freeresources 0
    end
    callfunction 77, 5, 0, 2, 10, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1983, -117
    wait 1
    waitstate
    callfunction 40, 2, 2, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    end

.close
