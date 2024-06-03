.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_524", 0
//volt switch animation
//this mainly copies the u-turn flow with some electic particles
a010_524:
    loadparticlefromspa 0, 387
    waitparticle
    loadparticlefromspa 1, 502 //electric charging, emitter 5
    waitparticle
    loadparticlefromspa 2, 212 //zap cannon ball, emitter 0
    waitparticle
    checkturn _00C8, _0268
    end
_00C8:
    addparticle 1, 5, 3
    jumpifcontest _030C
    callfunction 40, 2, 2, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1839, -117
    wait 10
    playsepan 1823, 0
    addparticle 2, 0, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    wait 8
    playsepan 1827, 117
    addparticle 2, 2, 17 //electric hit marker
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 5, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 15
    playsepan 1839, -117
    addparticle 0, 3, 3
    wait 5
    addparticle 0, 0, 3
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadparticle 1
    unloadparticle 2
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
    unloadparticle 1
    unloadparticle 2
    end
_02CC:
    addparticle 0, 6, 3
    waitparticle
    unloadparticle 0
    unloadparticle 1
    unloadparticle 2
    end
_02EC:
    addparticle 0, 7, 3
    waitparticle
    unloadparticle 0
    unloadparticle 1
    unloadparticle 2
    end
_030C:
    callfunction 40, 2, 2, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1839, -117
    wait 10
    playsepan 1823, 0
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 1, 1, 0, 0, "NaN", "NaN"
    wait 8
    playsepan 1827, 117
    addparticle 0, 4, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 5, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 15
    playsepan 1839, -117
    addparticle 0, 3, 3
    wait 5
    addparticle 0, 0, 3
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadparticle 1
    unloadparticle 2
    waitstate
    end

.close
