.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_287", 0

a010_287:
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
    loadparticle 0, 305
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 2059, -117
    callfunction 33, 5, 0, 1, 0, 12, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 1, 3
    addparticle 0, 0, 3
    wait 30
    playsepan 2041, -117
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
