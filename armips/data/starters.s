.nds
.thumb

// Update this macro with the specific starters that you want.
// Keep in mind that these choices will impact Rival team
// determination in the appropriate trigger-scripts.
//
// This will NOT update the text during the starter-selection
// sequence. To update that text, modify text archive 190 in
// DSPRE.
.macro STARTER_CHOICES
    .word SPECIES_BULBASAUR
    .word SPECIES_CHARMANDER
    .word SPECIES_SQUIRTLE
.endmacro

.open "base/arm9.bin", 0x02000000

.org 0x02108514

sStarterChoices_Species:
    STARTER_CHOICES

.close

.open "base/overlay/overlay_0061.bin", 0x021E5900

.org 0x021E7398 // 0x021E5900 + 0x1A98

sStarterChoices_Cries:
    STARTER_CHOICES

.close
