.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_300", 0

a010_300:
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
    loadparticle 0, 318
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 1976, -117
    callfunction 42, 8, 258, 100, 120, 100, 80, 100, 1, 327685, "NaN", "NaN"
    waitstate
    addparticle 0, 1, 3
    addparticle 0, 2, 3
    playsepan 2046, -117
    addparticle 0, 1, 3
    callfunction 42, 8, 258, 100, 80, 100, 160, 100, 1, 327685, "NaN", "NaN"
    waitstate
    loop 2
    playsepan 2046, -117
    callfunction 42, 8, 258, 100, 120, 100, 80, 100, 1, 262148, "NaN", "NaN"
    waitstate
    callfunction 42, 8, 258, 100, 80, 100, 160, 100, 1, 262148, "NaN", "NaN"
    playsepan 2046, -117
    waitstate
    doloop
    wait 20
    repeatse 1997, -117, 4, 9
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 6000, -2000, 4000, "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 12000, 0, -4000, "NaN", "NaN", "NaN", "NaN"
    wait 3
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -10000, -1000, -4000, "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -6000, 1000, 4000, "NaN", "NaN", "NaN", "NaN"
    wait 5
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 4000, -1000, 3000, "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 2000, -1500, 3000, "NaN", "NaN", "NaN", "NaN"
    wait 4
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -5000, 2000, -4000, "NaN", "NaN", "NaN", "NaN"
    playsepan 1998, -117
    waitparticle
    unloadparticle 0
    end

.close
