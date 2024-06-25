.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_747", 0
// Dynamax Cannon
a010_747:
    loadparticlefromspa 0, 94 //hyper beam
    waitparticle
    loadparticlefromspa 1, 477 //roar of time
    waitparticle

    jumpifplayerattack _01C0
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 3, 3
    addparticle 1, 4, 3
    addparticle 1, 5, 3
    addparticle 1, 0, 3
    addparticle 1, 6, 3
    playsepan 2100, -117
    wait 40
    callfunction 68, 5, 0, 3, 0, 20, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 9, 3
    addsequentialparticle 0, 0, 1, 2, 3, 4, 5, 0x12
    addsequentialparticle 0, 10, 10, 10, 11, 11, 11, 0x12
    wait 5
    playsepan 1938, 117

    callfunction 36, 5, 4, 0, 1, 20, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadparticle 1
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    end
_01C0:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 3, 3
    addparticle 1, 4, 3
    addparticle 1, 5, 3
    addparticle 1, 0, 3
    addparticle 1, 6, 3
    playsepan 2100, -117
    wait 40
    callfunction 68, 5, 0, 3, 0, 20, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 9, 3
    addparticlebasedonbattler 0, 7, 8, 7, 8, 0x3
    addparticlebasedonbattler 0, 13, 13, 13, 13, 0x3
    wait 5
    playsepan 1938, 117

    callfunction 36, 5, 4, 0, 1, 20, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadparticle 1
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"

    end


.close
