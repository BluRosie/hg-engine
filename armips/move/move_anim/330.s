.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_330", 0

a010_330:
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
    loadparticle 0, 348
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    initresources 0, 2, 1, 1, 1, 1, 0, 0
    loadresources 0, 0
    loadpalette 0, 29, 1
    loadcell 0, 0
    loadcellanm 0, 0
    addsomething2 0, 0, 0, 29, 0, 0, 0, 0
    addsomething2 0, 1, 0, 29, 0, 0, 0, 0
    playsepan 1944, -117
    callfunction 49, 1, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    freeresources 0
    callfunction 45, 8, 49, 0, 256, -6, 6, 1, 16, 45, "NaN", "NaN"
    playsepan 1945, 0
    wait 15
    addparticle 0, 0, 20
    addparticle 0, 1, 20
    addparticle 0, 2, 20
    jumpifplayerattack _0294
    callfunction 34, 6, 8, 0, 1, 2124, 10, 10, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 16, 0, 1, 2124, 10, 10, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 6, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end
_0294:
    jumpifside 0, _02A8, _0348
    end
_02A8:
    callfunction 34, 6, 8, 0, 1, 2124, 10, 10, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2056, 0, 1, 2124, 10, 10, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2064, 0, 1, 2124, 10, 10, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 6, 288, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end
_0348:
    callfunction 34, 6, 8, 0, 1, 2124, 10, 10, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2050, 0, 1, 2124, 10, 10, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2052, 0, 1, 2124, 10, 10, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 6, 288, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end
    end
    end

.close
