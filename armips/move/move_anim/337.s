.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_337", 0

a010_337:
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
    loadparticle 0, 355
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 0, 3
    addparticle 0, 1, 3
    playsepan 2034, -117
    callfunction 34, 6, 2, 0, 2, 31, 10, 0, "NaN", "NaN", "NaN", "NaN"
    wait 30
    initresources 0, 4, 1, 1, 1, 1, 0, 0
    loadresources 0, 17
    loadpalette 0, 16, 1
    loadcell 0, 17
    loadcellanm 0, 17
    addsomething 0, 22, 17, 16, 17, 17, 0, 0, 1, 4, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    loop 2
    playsepan 1910, 117
    callfunction 52, 3, 2, 24, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 2
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 2
    callfunction 52, 3, 2, -24, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 4
    doloop
    waitparticle
    unloadparticle 0
    end

.close
