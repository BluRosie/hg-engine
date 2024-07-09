.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_285", 0

a010_285:
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
    loadparticle 0, 303
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
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
    loadparticle 1, 303
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    waitse 2015, 0, 1
    waitse 2015, 0, 15
    waitse 2015, 0, 30
    waitse 2015, 0, 45
    waitse 2015, 0, 60
    waitse 2015, 0, 75
    loop 3
    addparticle2 0, 0, 0, 3
    callfunction 66, 7, 0, 0, 0, 0, 12, -32, 1, "NaN", "NaN", "NaN"
    wait 3
    addparticle2 0, 1, 0, 3
    callfunction 66, 7, 1, 0, 0, 0, 12, -32, 1, "NaN", "NaN", "NaN"
    wait 3
    addparticle2 0, 2, 0, 3
    callfunction 66, 7, 2, 0, 0, 0, 12, -32, 1, "NaN", "NaN", "NaN"
    wait 3
    addparticle2 0, 3, 0, 3
    callfunction 66, 7, 3, 0, 0, 0, 12, -32, 1, "NaN", "NaN", "NaN"
    addparticle2 0, 4, 0, 3
    callfunction 66, 7, 4, 0, 0, 0, 12, 32, 0, "NaN", "NaN", "NaN"
    wait 3
    addparticle2 0, 5, 0, 3
    callfunction 66, 7, 5, 0, 0, 0, 12, 32, 0, "NaN", "NaN", "NaN"
    wait 3
    addparticle2 0, 6, 0, 3
    callfunction 66, 7, 6, 0, 0, 0, 12, 32, 0, "NaN", "NaN", "NaN"
    wait 3
    addparticle2 0, 7, 0, 3
    callfunction 66, 7, 7, 0, 0, 0, 12, 32, 0, "NaN", "NaN", "NaN"
    doloop
    waitparticle
    unloadparticle 0
    unloadparticle 1
    end

.close
