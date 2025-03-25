.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_828", 0
// Astral Barrage
a010_828:
    loadparticlefromspa 0, 485 //Shadow Force
    waitparticle
    loadparticlefromspa 1, 482 //Dark Void
    waitparticle
    loadparticlefromspa 2, 417 //Dark Pulse
    waitparticle
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    changebg 56, 0x20001
    waitforchangebg //cosmic power bg
    addparticle 1, 0, 3
    addparticle 1, 4, 3
    shadeattackingmon 10, 10, 10
    playsepan 2066, -117
    wait 30
    addparticle 2, 0, 3
    wait 15
    playsepan 1907, 117
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    addparticle 0, 0, 4 //Shadow Force hit
    callfunction 36, 5, 4, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    waitse 1985, 117, 8
    waitse 1985, 117, 13
    callfunction 50, 2, 5, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle

    unloadparticle 0
    unloadparticle 1
    unloadparticle 2
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    resetbg 56, 0x40001
    waitforchangebg
    waitstate //cosmic power bg
    end
    

.close
