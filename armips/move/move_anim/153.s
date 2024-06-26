.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_153", 0

a010_153: //explosion
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
    loadparticle 0, 175
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 2113, -117
    addparticle 0, 0, 3
    addparticle 0, 2, 3
    addparticle 0, 3, 3
    addparticle 0, 1, 3
    wait 40
    callfunction 33, 5, 0, 0, 0, 15, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2, 0, 1, 32767, 15, 20, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 4, 0, 1, 32767, 15, 20, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 32767, 15, 20, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 16, 0, 1, 32767, 15, 20, "NaN", "NaN", "NaN", "NaN"
    wait 1
    playsepan 1874, 0
    wait 14
    repeatse 2096, -117, 3, 4
    callfunction 36, 5, 4, 0, 1, 2, 320, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 15
    callfunction 33, 5, 0, 0, 15, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 8, 8, 0, 8, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
