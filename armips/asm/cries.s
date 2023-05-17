.nds
.thumb

//.include "armips/include/monnums.s" // included by global

.open "base/arm9.bin", 0x2000000


// r1 = formid
// r2 = free
// r5 = species
.org 0x0200623A // edits to play_cry

.area 0x1E, 0 // nop the rest out w mov r0, r0

    mov r0, r5 // species
    bl 0x02006A0C // (species, form), return r0 = cry number "species" - come after the end of the old cries
    mov r5, r0
    ldr r2, =SPECIES_SHAYMIN
//    cmp r5, r2
//    bne _check_normal
//    cmp r1, #1
//    bne 0x02006258 // normal shaymin; leave r5 be
//    add r5, #2 // adjust the sound file to the sky shaymin one
//    b 0x02006258

_check_normal:
    add r2, #2 // r2 = 0x1EE  
    cmp r5, r2
    beq _handle_egg
    bls 0x02006258 // do not change r5
    mov r2, #(CRY_PSEUDOBANK_START - 544)
    add r5, r5, r2 // otherwise add 234 to file
    b 0x02006258

_handle_egg:
    //mov r5, #1 // fuck eggs be for real.  for some reason sky shaymin comes in as 0x1EE and i ain't about to argue

// r5 needs to be file number at the end of this, 778 begins new list - species+234 for victini and up
// going to have to set up all of the files with placeholders like in the original

.endarea

.org 0x020062D8 // maintain original pool
.pool


.org 0x020063F4 // nop out comparison to higher than 0x1EF for species
    nop

.close
