.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_559", 0

a010_559:
    loadparticlefromspa 0, 438 //ice shard
    waitparticle
    loadparticlefromspa 1, 437 //avalanche particles,
    waitparticle

    playsepan 2019, -117

    addparticle 1, 2, 4 //avalanche falls
    playsepan 1954, 117
    wait 2
    playsepan 1954, 117
    wait 2
    playsepan 1954, 117
    wait 2
    playsepan 1954, 117
    wait 2
    playsepan 1954, 117
    wait 2
    playsepan 1954, 117
    wait 2
    playsepan 1954, 117
    wait 2
    playsepan 1954, 117 //necessary to get the right sounds
    wait 2
    //addparticle 1, 3, 4
    addparticle 0, 1, 4 //shard particles
    wait 10

    addparticle 0, 1, 4 //more shard particles (repeated)
    //addparticle 1, 4, 4
    addparticle 1, 5, 4 //avalanche particles
    wait 5
    addparticle 0, 0, 4
   
    repeatse 1827, 117, 2, 3
    shadetargetmon 0, 0, 28 //make the target blue
    shaketargetmon 5, 3 //shake 'em a bit
    
    waitparticle



    unloadparticle 0
    unloadparticle 1
    waitstate
    end
    

.close
