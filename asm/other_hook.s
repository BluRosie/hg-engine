.text
.align 2
.thumb

.include "offset_def.s"

/*不同形态的图片读取*/
.global PokePicLoad
PokePicLoad:
ldr r6, [sp, #0x18]
ldr r1, [sp, #0x1C]
mov r0, #0x0
strh r0, [r5, #0x6]
strb r0, [r5, #0x8]
str r0, [r5, #0xC]
push {r0-r3}
sub sp, #0x4
str r1, [sp, #0x0]
mov r0, r5
mov r1, r4
mov r2, r3
mov r3, r6
bl GetOtherFormPic
add sp, #0x4
cmp r0, #0x0
bne HaveNewPic
pop {r0-r3}
ldr r0, =0x020701F8 + 1
bx r0

HaveNewPic:
pop {r0-r3}
pop {r3-r7,pc}

//形态变化恢复
.global FormResert
FormResert:
lsl r0, r0, #0x2
add r2, r5, r0
lsl r1, r4, #0x2
ldr r0, [r2, r1]
push {r0-r2}
mov r2, r4
mov r1, r6
mov r0, r5
bl TryRevertFormChange
pop {r0-r2}
ldr r3, =0x69B4 + Overlay_12_Start
bx r3

//战斗结束
.global Battle_End
Battle_End:
ldr r1, [r4, r3]
mov r7, r0
lsl r2, r2, #0x2
str r1, [r7, r2]
push {r0-r3}
mov r0, r4
bl BattleEndRevertFormChange
pop {r0-r3}
ldr r1, =0xB98 + Overlay_12_Start
bx r1

//地区形态进化
.global GetFormEvo
GetFormEvo:
str r0, [sp, #0x1C]
ldr r1, [sp, #0x1C]
push {r0-r3}
mov r0, r7
bl GetMonEvoData
pop {r0-r3}
ldr r0, =0x02070EDE + 1
bx r0

//小图标色板
.global IconPalGet
IconPalGet:
push {r3}
bl PokeIconPalNumGet
pop {r3}
ldr r1, =0x020743F8 + 1
bx r1

//mega
//hook 0802F89C
.global LoadMegaOam
LoadMegaOam:
mov r3, #0x4
ldr r1, [sp, #0x38]
str r0, [sp, #0x0]
ldrb r0, [r6, #0x3]
push {r0-r3}
mov r0, r5
bl LoadMegaIcon
pop {r0-r3}
ldr r2, =0x2F8A4 + Overlay_12_Start
bx r2

//0802FBFC
.global load_mega_button
load_mega_button:
mov r1, #0x4D
str r0, [sp, #0x0]
push {r1-r3}
mov r0, r5
bl LoadMegaButton
pop {r1-r3}
mov r0, #0x3
str r0, [sp, #0x4]
ldr r0, =0x2FC04 + Overlay_12_Start
bx r0

//08030644
.global MegaButtonCheck
MegaButtonCheck:
mov r2, r5
add r2, r2, #0x1C
push {r0-r3}
mov r0, r5
mov r1, r4
bl CheckMegaButton
cmp r0, #0x0
bne end
pop {r0-r3}
cmp r4, #0x1
blt sub_803065Ah
ldr r3, =0x3064C + Overlay_12_Start
bx r3

sub_803065Ah:
ldr r0, =0x3065A + Overlay_12_Start
bx r0

end:
pop {r0-r3}
mov r0, #0x0
mvn r0, r0
pop {r3-r7,pc}

//02234868
//08018A48
.global hook_7_spriteOffsetSpecies
hook_7_spriteOffsetSpecies:
// sp+18 is form--apparently not.
push {r0-r5, r7}
mov r0, r6
ldr r1, =word_to_store_form_at
ldr r1, [r1]
bl GetSpeciesBasedOnForm // (species, form)
mov r6, r0
pop {r0-r5, r7}
str r0, [sp]
lsl r0, r6, #0x10
lsl r1, r1, #0x18
lsr r0, #0x10
ldr r3, =0x02234870 | 1
bx r3


//02259A14
//08022154
.global hook_12_spriteOffsetSpecies
hook_12_spriteOffsetSpecies:
// pretty sure this one is right.
push {r0-r7}
ldr r1, =word_to_store_form_at
ldr r1, [r1]
ldrh r0, [r5, #2]
bl GetSpeciesBasedOnForm // (species, form)
strh r0, [r5, #2]
pop {r0-r7}
ldr r0, [r5, #4]
str r0, [sp]
ldrb r3, [r5, #1]
ldrh r0, [r5, #2]
ldr r2, =0x02259A1C | 1
bx r2

.align 2
.global word_to_store_form_at
word_to_store_form_at:
.word 0

//08009A74
.global CheckCanTakeItem
CheckCanTakeItem:
add r0, r5, r1
ldrh r0, [r0,r3]
push {r1-r5}
bl CheckItemByThief
pop {r1-r5}
cmp r0, #0x0
beq backToThief_1
ldr r0, =0x9A7C + Overlay_12_Start
bx r0

backToThief_1:
ldr r0, =0x9A86 + Overlay_12_Start
bx r0

.pool


// 02247A18
// edits to the beginning of EncountParamSet to extract species + form
// r0 is species | (form << 10)
// treating r4-r7 as free since this function is only called at the end of other ones
.global get_form_out_of_encounter_species
get_form_out_of_encounter_species:
// ldr r4, =0xFC00
mov r4, #0xFC
lsl r4, #8
and r4, r0
lsr r4, #10
ldr r5, =space_for_setmondata
str r4, [r5]

// ldr r4, =0x03FF
mov r4, #3
lsl r4, #8
add r4, #0xFF
and r0, r4 // make r0 solely the species

// reset the function up
push {r3-r7, lr}
sub sp, #0x20
str r0, [sp, #0xC]
ldr r0, [sp, #0x3C]
ldr r4, =0x02247A20 | 1
bx r4


// 02247B42 - end of above function
// r4 is param
// need to set form
.global modify_species_encounter_data
modify_species_encounter_data:
bl call_setmondata // set the id number
mov r0, r4 // pp
mov r1, #112 // ID_PARA_form_no
ldr r2, =space_for_setmondata // &form
bl call_setmondata

// hopefully with form set, this grabs everything correctly
mov r0, r4
ldr r3, =0x0206E250 | 1 //PokeParaCalc(pp);
bl call_via_r3
mov r0, r4
ldr r3, =0x020722D4 | 1 //PokeParaSpeabiSet(pp);
bl call_via_r3
mov r0, r4 // me when the boxmon is at offset 0 of the PartyPokemon structure so i should be able to just pass it like this and have it work :)
ldr r3, =0x020712D8 | 1 //InitBoxMonMoveset(ppp);
bl call_via_r3

ldr r0, [sp, #0x14]
ldr r3, [sp, #0x40]
mov r1, r7
ldr r5, =0x02247B4C | 1
bx r5

call_setmondata:
ldr r3, =0x0206EC40 | 1
call_via_r3:
bx r3

.pool

space_for_setmondata:
.word 0


// need to expand the table that remaps "move effects" to subscripts
// r4 is effect to grab, r0 and r1 are free, needs to pop {r4, pc} at the end
.global remap_move_effect_to_subscript_table
remap_move_effect_to_subscript_table:
ldr r0, =move_effect_to_subscripts
lsl r1, r4, #2
ldr r0, [r0, r1]
pop {r4, pc}
