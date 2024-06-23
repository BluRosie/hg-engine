.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_850", 0
// Wildbolt Storm
a010_850:
    loadparticlefromspa 0, 528 //Freeze Shock electicity
    waitparticle
    loadparticlefromspa 1, 258 //Rain Dance
    waitparticle
    loadparticlefromspa 2, 118 //Thunder
    

    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 0, 0
    playsepan 2044, 0 //Rain and turn screen a bit dark


    addparticle 2, 2, 4 //drop the bolt
    addparticle 2, 4, 4 
    addparticle 2, 1, 4
    addparticle 2, 0, 4
    playsepan 2007, 117
    shaketargetmon 2, 2
    shadetargetmon 29, 29, 29
    wait 18

    addparticle 2, 2, 4 //drop the bolt again
    addparticle 2, 4, 4 
    addparticle 2, 1, 4
    addparticle 2, 0, 4
    playsepan 2007, 117
    shaketargetmon 2, 2
    shadetargetmon 29, 29, 29
    wait 18
    addparticle 1, 0, 0
    addparticle 0, 2, 4 //big zappies linger
    shadetargetmon 20, 20, 0 //make target yellow
    shaketargetmon 10, 8
    playsepan 1837, 117
    wait 20

    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"


    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    unloadparticle 2
    waitstate
    end
    

.close
