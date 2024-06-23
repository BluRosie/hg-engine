.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_426", 0
// Mud Bomb
a010_426:
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
    loadparticle 0, 444
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepanmod 1999, -117, 117, 4, 2
    wait 1
    addparticle 0, 0, 3
    callfunction 66, 6, 0, 0, 0, 0, 24, 64, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 4
    addparticle 0, 3, 4
    addparticle 0, 2, 4
    wait 23
    playsepan 2093, 117
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end

.close
