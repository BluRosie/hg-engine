.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_453", 0

a010_453:
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
    loadparticle 0, 471
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 1925, -117
    callfunction 57, 4, 2, -14, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 57, 4, 2, 28, -16, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 40, 2, 2, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 2060, -117
    addparticle2 0, 0, 3, 3
    callfunction 65, 8, 0, 0, 0, 0, 8, 64, 0, 131075, "NaN", "NaN"
    addparticle2 0, 1, 4, 3
    callfunction 65, 8, 1, 0, 0, 0, 8, 64, 0, 131075, "NaN", "NaN"
    addparticle2 0, 2, 5, 3
    callfunction 65, 8, 2, 0, 0, 0, 8, 64, 0, 131075, "NaN", "NaN"
    wait 5
    playsepan 2060, 0
    addparticle2 0, 3, 3, 3
    callfunction 65, 8, 3, 0, 0, 0, 8, 64, 0, 327686, "NaN", "NaN"
    addparticle2 0, 4, 4, 3
    callfunction 65, 8, 4, 0, 0, 0, 8, 64, 0, 327686, "NaN", "NaN"
    addparticle2 0, 5, 5, 3
    callfunction 65, 8, 5, 0, 0, 0, 8, 64, 0, 327686, "NaN", "NaN"
    wait 5
    playsepan 2060, 117
    addparticle2 0, 6, 3, 3
    callfunction 65, 8, 6, 0, 0, 0, 8, 64, 0, 458760, "NaN", "NaN"
    addparticle2 0, 7, 4, 3
    callfunction 65, 8, 7, 0, 0, 0, 8, 64, 0, 458760, "NaN", "NaN"
    addparticle2 0, 8, 5, 3
    callfunction 65, 8, 8, 0, 0, 0, 8, 64, 0, 458760, "NaN", "NaN"
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    callfunction 36, 5, 2, 0, 1, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 2, -14, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    end

.close
