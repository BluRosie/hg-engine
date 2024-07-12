.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_253", 0

a010_253:
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
    loadparticle 0, 271
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    repeatse 2046, -117, 29, 3
    callfunction 42, 8, 258, 100, 120, 100, 80, 100, 1, 327685, "NaN", "NaN"
    waitstate
    addparticle 0, 1, 3
    addparticle 0, 0, 3
    callfunction 42, 8, 258, 100, 80, 100, 140, 100, 1, 327685, "NaN", "NaN"
    waitstate
    loop 2
    callfunction 42, 8, 258, 100, 120, 100, 80, 100, 1, 327685, "NaN", "NaN"
    waitstate
    callfunction 42, 8, 258, 100, 80, 100, 140, 100, 1, 327685, "NaN", "NaN"
    waitstate
    doloop
    waitparticle
    unloadparticle 0
    end

.close
