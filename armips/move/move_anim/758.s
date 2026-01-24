.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_758", 0

//Fishious Rend

a010_758:
    loadparticlefromspa 0, 309 //Dive effects
    waitparticle
    loadparticlefromspa 1, 174 //Crabhammer
    waitparticle


    addparticle 0, 0, 3
    addparticle 0, 1, 3
    addparticle 1, 1, 3
    playsepan 2060, -117
    wait 25
    callfunction 57, 4, 2, 14, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate //move user forward 


    repeatse 2060, 117, 3, 4
    addparticle 1, 1, 4
    addparticle 1, 2, 4
    addparticle 1, 0, 4
    shaketargetmon 6, 4
    shadetargetmon 0, 0, 28
    //playsepan 2003, 117
    wait 30
    callfunction 57, 4, 2, -14, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate //move user back


    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
