.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_624", 0
//Hyperspace Fury
a010_624:
    loadparticlefromspa 0, 340 //Cosmic Power emitters 0,1, and 2
    waitparticle
    loadparticlefromspa 1, 241 //Dynamic Punch
    waitparticle

    playsepan 2063, 0
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    changebg 56, 0x20001
    waitforchangebg

    addparticle 0, 1, 4
    addparticle 0, 0 ,4

    wait 25
    playsepan 2040, 117
    addparticle 0, 2, 4
    addparticle 1, 1, 4
    addparticle 1, 2, 4
    callfunction 36, 5, 4, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    //callfunction 36, 5, 1, 0, 1, 1, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 2
    callfunction 34, 6, 8, 0, 2, 2124, 14, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 5, 0, 1, 6, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    repeatse 1993, 117, 4, 6
    wait 3
    //callfunction 36, 5, 4, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    resetbg 56, 0x40001
    waitforchangebg
    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end

.close
