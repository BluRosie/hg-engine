.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_sub_anim/1_055", 0

// Eat berry animation

a061_055:
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
    loadparticle 0, 28
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 0, 3
    wait 5
    callfunction 34, 6, 2, 0, 1, 32767, 10, 0, "NaN", "NaN", "NaN", "NaN"
    loop 2
    playsepan 2026, -117
    callfunction 42, 8, 258, 100, 80, 100, 140, 100, 1, 327685, "NaN", "NaN"
    wait 10
    callfunction 42, 8, 258, 100, 120, 100, 80, 100, 1, 327685, "NaN", "NaN"
    wait 10
    doloop
    playsepan 1807, -117
    waitparticle
    unloadparticle 0
    end

.close
