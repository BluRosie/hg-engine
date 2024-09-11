.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_717", 0
//moongeist beam
a010_717:
    loadparticlefromspa 0, 469 //charge beam beams
    waitparticle
    loadparticlefromspa 1, 429 //focus blast charging, emitter 1
    waitparticle

    
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    changebg 42, 0x20001 //moon bg  
    waitforchangebg

    playsepan 1530, -117 //focus blast charge sound
    addparticle 1, 1, 3 //charges attack in moonlight
    waitparticle

    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    cmd0C 4, 1
    resetbg 42, 0x40001
   // waitforchangebg //revert moon bg

    cmd43
    cmd0C 7, 1
    changebg 14, 0x800001 //hyper beam background
    waitforchangebg 

    addsequentialparticle 0, 1, 2, 3, 4, 5, 6, 0x12//white beam of light 
    shaketargetmon 6, 8
    shadetargetmon 4, 4, 4 //shake em real good!!
    playsepanmod 1958, -117, 117, 4, 2 //solar beam sound
    waitparticle


    resetbg 14, 0x1000001 //revert bg
    waitforchangebg
    

    unloadparticle 0
    unloadparticle 1
    waitstate
    end
    

.close
