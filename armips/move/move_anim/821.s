.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_821", 0

a010_821: //surging strikes
    loadparticlefromspa 0, 471 //aqua jet, emitter 0 is splash, 2 is hit, 4 and 5 are water jets
    waitparticle
    loadparticlefromspa 1, 388 //close combat, emitter 0 is fist flurry, 1 is hit markers, 2 is red sparks radially outward
    waitparticle

    cmd0C 0, -32
    cmd0C 1, 0
    changebg 36, 0x20001 //change to close combat bg
    waitforchangebg


    addparticle 1, 0, 4 //fists at opponent
    addparticle 0, 4, 4 //jet pt1
    addparticle 0, 5, 4 //jet pt2
    repeatse 1822, 117, 4, 5
    repeatse 1827, 117, 5, 5
    wait 3
    addparticle 0, 0, 4 //water impact effects
    addparticle 0, 2, 4
    addparticle 0, 5, 4 //jet pt2
    wait 5
    addparticle 0, 0, 4 //repeat again
    addparticle 0, 2, 4
    addparticle 0, 5, 4 //jet pt2
    wait 5
    addparticle 0, 0, 4 //repeat again
    addparticle 0, 2, 4

    callfunction 36, 5, 2, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    cmd0C 0, -64
    cmd0C 1, 0
    resetbg 36, 0x40001 //revert bg
    waitforchangebg

    unloadparticle 0
    unloadparticle 1
    waitstate
    end
    

.close
