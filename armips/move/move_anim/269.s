.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_269", 0

a010_269:
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
    loadparticle 0, 287
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 1991, 0
    waitse 1928, 0, 30
    waitse 1928, 0, 47
    addparticle 0, 0, 0
    addparticle 0, 1, 0
    initresources 0, 1, 1, 1, 1, 1, 0, 0
    loadresources 0, 22
    loadpalette 0, 21, 1
    loadcell 0, 22
    loadcellanm 0, 22
    addsomething 0, 19, 22, 21, 22, 22, 0, 0, 1, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    freeresources 0
    initresources 0, 7, 2, 2, 2, 2, 0, 0
    loadresources 0, 11
    loadpalette 0, 11, 1
    loadcell 0, 11
    loadcellanm 0, 11
    addsomething 0, 10, 11, 11, 11, 11, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 31, 14, 0, "NaN", "NaN", "NaN", "NaN"
    wait 4
    repeatse 2027, 117, 10, 2
    wait 10
    waitstate
    freeresources 0
    waitparticle
    unloadparticle 0
    end

.close
