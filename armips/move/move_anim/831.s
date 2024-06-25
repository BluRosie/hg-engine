.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_831", 0
//Psyshield Bash
a010_831:
    loadparticlefromspa 0, 372
    waitparticle

    changebg 52, 0x800001
    waitforchangebg
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"

    // slide mon
    playsepan 1925, -117
    slideattackingmon -16, 8
    waitstate
    wait 15
    playsepan 1847, 117
    slideattackingmon 32, -16
    waitstate

    callfunction 34, 6, 8, 0, 1, 32767, 10, 10, "NaN", "NaN", "NaN", "NaN"
    waitse 1903, 117, 10
    waitse 1900, 117, 15
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    callfunction 36, 5, 4, 0, 1, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN"

    wait 28
    repeatse 2119, 0, 2, 9
    callfunction 36, 5, 3, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 72
    slideattackingmon -16, 8
    waitstate

    cmd43
    cmd0C 4, 1
    resetbg 52, 0x1000001


    unloadparticle 0
    waitstate
    end
    

.close
