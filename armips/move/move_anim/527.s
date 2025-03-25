.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_527", 0
//frost breath
a010_527:
    loadparticlefromspa 0, 216 //icy wind
    waitparticle
    loadparticlefromspa 1, 347 //sheer cold emitter 0 is icy shards
    waitparticle

    addparticle 0, 0, 17 //send out the blizzardy wind
    cmd37 6, 0, 2, 6, 5, 0, 0, "NaN", "NaN"
    repeatse 1915, 0, 2, 14
    wait 5

    
    shadetargetmon 14, 14, 29 //make the opponent light blue
    shaketargetmon 5, 3 //shake 'em a bit
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 0, 0, 0, 0, "NaN", "NaN"
    repeatse 2052, 117, 4, 4
    waitparticle

    unloadparticle 0
    unloadparticle 1
    waitstate
    end
    

.close
