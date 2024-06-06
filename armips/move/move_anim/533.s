.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_533", 0
//dual chop animation
a010_533:
    loadparticlefromspa 0, 256 //emitters 3 and 5 are the chopping animations
    waitparticle
    loadparticlefromspa 1, 355 //dragon claw, emitters 0 and 1
    waitparticle

    addparticle 0, 3, 4
    addparticle 0, 5, 4
    wait 15
    addparticle 1, 0, 3
    addparticle 1, 1, 3
    playsepan 2034, -117 //dragon power charges up with dragon claw emitters


    wait 30
    shaketargetmon 5, 3 //shake 'em a bit
    playsepan 1910, 117 //2 hands hit and do the noise for it
    waitparticle

    unloadparticle 0
    unloadparticle 1
    waitstate
    end
    

.close
