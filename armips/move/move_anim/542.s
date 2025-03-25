.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_542", 0

a010_542:
    loadparticlefromspa 0, 141 //haze effect, using emitter #0
    waitparticle
    loadparticlefromspa 1, 417 //dark pulse, using emitter #1 here
    waitparticle
    loadparticlefromspa 2, 418 //night slash effect emitter #1
    waitparticle

    addparticle 0, 0, 0
    playsepan 1989, 0
    addparticle 1, 1, 3
    wait 2
    addparticle 1, 1, 3
    wait 5

    playsepan 2107, 117
    addparticle 2, 1, 4
    shadetargetmon 0, 0, 0 //make the target black
    shaketargetmon 5, 3 //shake 'em a bit
    waitparticle

    unloadparticle 0
    unloadparticle 1
    unloadparticle 2
    waitstate
    end
    

.close
