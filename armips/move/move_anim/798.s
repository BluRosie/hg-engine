.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_798", 0
// Eternabeam
a010_798:
    loadparticlefromspa 0, 94 //hyper beam
    waitparticle
    loadparticlefromspa 1, 477 //roar of time
    waitparticle

    jumpifplayerattack _01C0
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    changebg 56, 0x20001
    waitforchangebg
    callfunction 68, 5, 0, 3, 0, 20, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 9, 3
    addsequentialparticle 0, 0, 1, 2, 3, 4, 5, 0x12
    addsequentialparticle 0, 10, 10, 10, 11, 11, 11, 0x12
    wait 5
    playsepan 1938, 117
    addparticle 1, 1, 4
    addparticle 1, 2, 4
    callfunction 36, 5, 4, 0, 1, 20, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadparticle 1
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    resetbg 56, 0x40001
    waitforchangebg
    end
_01C0:
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    changebg 56, 0x20001
    waitforchangebg
    callfunction 68, 5, 0, 3, 0, 20, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 9, 3
    addparticlebasedonbattler 0, 7, 8, 7, 8, 0x3
    addparticlebasedonbattler 0, 13, 13, 13, 13, 0x3
    wait 5
    playsepan 1938, 117
    addparticle 1, 1, 4
    addparticle 1, 2, 4
    callfunction 36, 5, 4, 0, 1, 20, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadparticle 1
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    resetbg 56, 0x40001
    waitforchangebg
    end

.close
