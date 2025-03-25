.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_573", 0

a010_573:
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
    loadparticle 0, 117
    loadparticle 1, 102
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    wait 5
    playsepan 1970, 117
    callfunction 34, 6, 8, 0, 1, 13311, 14, 0, "NaN", "NaN", "NaN", "NaN"
    //addparticle 0, 2, 4
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitse 1952, 117, 2
    //callfunction 34, 6, 8, 0, 1, 13311, 14, 0, "NaN", "NaN", "NaN", "NaN"
    //repeatse 1952, 117, 2, 2
    //waitparticle
    wait 20

    //initspriteresource
    //loadspriteresource 0
    //loadspriteresource 1
    //loadspriteresource 2
    //loadspriteresource 3
    //loadspritemaybe 4, 0, 0, 0
    //loadspritemaybe 5, 0, 1, 1
    //loadspritemaybe 6, 0, 2, 2
    //loadspritemaybe 7, 0, 3, 3
    //waitstate
    //callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    //waitstate
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 2, 1, 16, 0, "NaN", "NaN"
    cmd37 5, 2, 0, 0, 0, 0, "NaN", "NaN", "NaN"
    repeatse 2003, 0, 2, 16
    waitparticle
    addparticle 1, 1, 17
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    callfunction 34, 6, 2, 0, 1, 32767, 10, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 1956, -117
    waitparticle
    unloadparticle 0
    unloadparticle 1
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close