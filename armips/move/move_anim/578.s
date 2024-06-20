.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_578", 0

// Parting Shot
// Chatter with dark bg + U-turn switch out anm

a010_578:
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
    loadparticle 0, 387
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    checkturn _00C8, _0268
    end
_00C8:
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
    loadparticle 0, 466
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3

    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"

    addparticle 0, 1, 3
    addparticle 0, 0, 3
    playcry 0, -117, 127
    loop 2
    callfunction 52, 3, 8, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    callfunction 52, 3, 16, -16, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 16
    callfunction 52, 3, 8, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    doloop
    waitcry 0
    waitstate
    waitparticle
    unloadparticle 0

    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"

    end
_0268:
    addparticle 0, 0, 3
    callfunction 40, 2, 2, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1839, -117
    wait 10
    playsepan 1823, -117
    jumpifside 0, _02CC, _02EC
    waitparticle
    unloadparticle 0
    end
_02CC:
    addparticle 0, 6, 3
    waitparticle
    unloadparticle 0
    end
_02EC:
    addparticle 0, 7, 3
    waitparticle
    unloadparticle 0
    end

.close
