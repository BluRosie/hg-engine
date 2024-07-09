.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_825", 0
// Fiery Wrath
a010_825:
    loadparticlefromspa 0, 333 //overheat
    waitparticle
    loadparticlefromspa 1, 532 //night daze
    waitparticle
    loadparticlefromspa 2, 417 //dark pulse
    waitparticle

    shadeattackingmon 24, 0, 0
    addparticle 0, 2, 3 //smoke on user
    playsepan 1907, -117
    wait 20

    callfunction 74, 1, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    //bw bg
    addparticle 2, 0, 3
    addparticle 2, 1, 3 //dark pulse
    wait 5
    addparticle 0, 1, 17 //fiery burst
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    playsepan 1965, -117
    wait 15
    addparticle 1, 1, 4
    shaketargetmon 4, 10
    shadetargetmon 5, 5, 5
    addparticle 1, 0, 4 //night daze hitmarkers
    waitse 1993, 117, 10
    waitse 1993, 117, 20
    waitse 1993, 117, 30
    wait 25

    callfunction 74, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    //revert bg


    unloadparticle 0
    waitstate
    end
    

.close
