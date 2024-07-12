.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_155", 0

a010_155:
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
    loadparticle 0, 32
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    initresources 0, 1, 1, 1, 1, 1, 0, 0
    loadresources 0, 7
    loadpalette 0, 7, 1
    loadcell 0, 7
    loadcellanm 0, 7
    addsomething 0, 6, 7, 7, 7, 7, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    playsepanmod 2119, -117, 117, 4, 2
    wait 5
    addparticle 0, 1, 4
    playsepan 1827, 117
    callfunction 36, 5, 4, 0, 1, 1, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    playsepan 1976, -117
    waitparticle
    waitstate
    freeresources 0
    unloadparticle 0
    end

.close
