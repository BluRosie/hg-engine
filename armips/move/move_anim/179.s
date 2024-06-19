.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_179", 0

a010_179:
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
    loadparticle 0, 199
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 2020, -117
    loop 2
    callfunction 33, 5, 0, -2, 0, 8, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 33, 5, 0, -2, 8, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    doloop
    playsepan 2015, -117
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    wait 40
    callfunction 33, 5, 0, -2, 0, 8, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 33, 5, 0, -2, 8, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 57, 4, 4, 24, 0, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    playsepan 1920, 117
    callfunction 36, 5, 1, 0, 1, 3, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 4, -24, 0, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
