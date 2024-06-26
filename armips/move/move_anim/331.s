.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_331", 0

a010_331:
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
    loadparticle 0, 349
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    repeatse 2024, 0, 3, 9
    addparticle2 0, 0, 0, 3
    callfunction 65, 6, 0, 0, 0, 0, 10, 64, "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle2 0, 1, 0, 3
    callfunction 65, 6, 1, 0, 0, 0, 10, 64, "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    callfunction 36, 5, 2, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle2 0, 2, 0, 3
    callfunction 65, 6, 2, 0, 0, 0, 10, 64, "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle2 0, 3, 0, 3
    callfunction 65, 6, 3, 0, 0, 0, 10, 64, "NaN", "NaN", "NaN", "NaN"
    repeatse 1920, 117, 5, 6
    wait 2
    addparticle2 0, 4, 0, 3
    callfunction 65, 6, 4, 0, 0, 0, 10, 64, "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle2 0, 5, 0, 3
    callfunction 65, 6, 5, 0, 0, 0, 10, 64, "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle2 0, 6, 0, 3
    callfunction 65, 6, 6, 0, 0, 0, 10, 64, "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle2 0, 7, 0, 3
    callfunction 65, 6, 7, 0, 0, 0, 10, 64, "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle2 0, 0, 0, 3
    callfunction 65, 6, 0, 0, 0, 0, 10, 64, "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle2 0, 1, 0, 3
    callfunction 65, 6, 1, 0, 0, 0, 10, 64, "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle2 0, 2, 0, 3
    callfunction 65, 6, 2, 0, 0, 0, 10, 64, "NaN", "NaN", "NaN", "NaN"
    wait 2
    waitparticle
    unloadparticle 0
    end

.close
