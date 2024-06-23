.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_252", 0

a010_252:
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
    loadparticle 0, 270
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    initresources 0, 1, 1, 1, 1, 1, 0, 0
    loadresources 0, 18
    loadpalette 0, 17, 1
    loadcell 0, 18
    loadcellanm 0, 18
    addsomething 0, 18, 18, 17, 18, 18, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitse 2053, 0, 20
    wait 2
    callfunction 41, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 4
    addparticle 0, 0, 4
    wait 4
    wait 8
    callfunction 43, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 2008, 117
    waitstate
    freeresources 0
    waitparticle
    unloadparticle 0
    end

.close
