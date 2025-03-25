.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_191", 0

a010_191:
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
    loadparticle 0, 211
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    repeatse 1922, 117, 6, 5
    addparticle2 0, 0, 0, 3
    callfunction 66, 6, 0, 8, -3, 0, 12, 64, "NaN", "NaN", "NaN", "NaN"
    wait 5
    addparticle2 0, 1, 0, 3
    callfunction 66, 6, 1, 4, -5, 0, 12, 64, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 20
    wait 5
    addparticle2 0, 2, 0, 3
    callfunction 66, 6, 2, 0, -6, 0, 12, 64, "NaN", "NaN", "NaN", "NaN"
    wait 5
    addparticle2 0, 3, 0, 3
    callfunction 66, 6, 3, -8, -6, 0, 12, 64, "NaN", "NaN", "NaN", "NaN"
    wait 5
    addparticle2 0, 4, 0, 3
    callfunction 66, 6, 4, -4, -3, 0, 12, 64, "NaN", "NaN", "NaN", "NaN"
    wait 6
    waitparticle
    unloadparticle 0
    end

.close
