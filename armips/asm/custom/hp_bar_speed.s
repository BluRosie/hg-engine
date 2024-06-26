.nds
.thumb

/*
// Aurora Crystal specific change
// Doubles the speed the HP and EXP bar
// Taken from the ZX Randomizer
// Thanks Mikelan + AdAstra for the last of the three changes, not sure who made the first two but thank you too
// Full commentary on the ZX Code https://github.com/Ajarmar/universal-pokemon-randomizer-zx/blob/master/src/com/dabomstew/pkrandom/romhandlers/Gen4RomHandler.java#L5382
*/

.open "base/overlay/overlay_0012.bin", 0x022378C0

/* Double HP Bar speed */
.org 0x022378C0 + 0x2DF32
.byte 0x2

/* Double EXP bar speed */
.org 0x022378C0 + 0x2DF5C
.halfword 0x19B0

/* Double HP bar speed when "the max value has fewer pixels than the whole bar" */
.org 0x022378C0 + 0x2E17A
.byte 0x40

.close
