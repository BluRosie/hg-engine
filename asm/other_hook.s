.text
.align 2
.thumb

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

//小图标色板
.global IconPalGet
IconPalGet:
push {r3}
bl PokeIconPalNumGet
pop {r3}
ldr r1, =0x020743F8 + 1
bx r1





// 02247910
// edits to the beginning of EncountParamSetRare to extract species + form
// r0 is species | (form << 11)
// treating r4-r7 as free since this function is only called at the end of other ones
.global get_form_out_of_encounter_species_rare
get_form_out_of_encounter_species_rare:
// ldr r4, =0xF800
mov r4, #0xF8
lsl r4, #8
and r4, r0
lsr r4, #11
ldr r5, =space_for_setmondata
strb r4, [r5]

// ldr r4, =0x07FF
mov r4, #7
lsl r4, #8
add r4, #0xFF
and r0, r4 // make r0 solely the species


// reset the function up:
push {r3-r7, lr}
sub sp, #0x28
str r0, [sp, #0x10]
ldr r6, [sp, #0x40]
ldr r4, =0x02247918 | 1
bx r4



// 02247A00 - end of above function
// sp1C is param
// need to set form
.global modify_species_encounter_data_rare
modify_species_encounter_data_rare:
push {r0-r3}

ldr r0, [sp, #(0x1c+0x10)] // pp
mov r1, #112 // MON_DATA_FORM
ldr r2, =space_for_setmondata // &form
bl call_setmondata

ldr r0, [sp, #(0x1c+0x10)] // pp
bl UpdatePassiveForms

// hopefully with form set, this grabs everything correctly (it should please please please)
ldr r0, [sp, #(0x1c+0x10)] // pp
ldr r3, =0x0206E250 | 1 //RecalcPartyPokemonStats(pp);
bl call_via_r3
ldr r0, [sp, #(0x1c+0x10)] // pp
ldr r3, =0x020722D4 | 1 //ResetPartyPokemonAbility(pp);
bl call_via_r3
ldr r0, [sp, #(0x1c+0x10)] // pp
ldr r3, =0x020712D8 | 1 //InitBoxMonMoveset(ppp);
bl call_via_r3

pop {r0-r3}
add r1, r6, #0
bl 0x0224855C // should not need longcall
ldr r0, [sp, #0x1c]
ldr r5, =0x02247A10 | 1
bx r5

.pool

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


//02259DBC
.global hook_12_spriteOffsetSpecies_escapeFromBall
hook_12_spriteOffsetSpecies_escapeFromBall:
push {r0-r7}
ldr r1, =word_to_store_form_at
ldr r1, [r1]
ldrh r0, [r4, #2]
bl GetSpeciesBasedOnForm // (species, form)
strh r0, [r4, #2]
pop {r0-r7}

mov r2, r5
str r0, [sp]
ldrb r3, [r4, #1]
add r2, #0x84

ldr r0, =0x02259DC4 | 1
bx r0


//02259C0C
// need to store species to r5+2
.global fix_double_spriteOffsetSpecies
fix_double_spriteOffsetSpecies:
push {r0-r7}
ldr r1, =word_to_store_form_at
ldr r1, [r1]
ldrh r0, [r5, #2]
bl GetSpeciesBasedOnForm // (species, form)
strh r0, [r5, #2]
pop {r0-r7}

ldr r0, [r5, #4]
mov r2, r4
str r0, [sp]
ldrb r3, [r5, #1]

ldr r0, =0x02259C14 | 1
bx r0


.pool



// 02247A18
// edits to the beginning of EncountParamSet to extract species + form
// r0 is species | (form << 11)
// treating r4-r7 as free since this function is only called at the end of other ones
.global get_form_out_of_encounter_species
get_form_out_of_encounter_species:
// ldr r4, =0xF800
mov r4, #0xF8
lsl r4, #8
and r4, r0
lsr r4, #11
ldr r5, =space_for_setmondata
str r4, [r5]

// ldr r4, =0x07FF
mov r4, #7
lsl r4, #8
add r4, #0xFF
and r0, r4 // make r0 solely the species

// reset the function up
//push {r3-r7, lr}
//sub sp, #0x20

str r0, [sp, #0xC]
ldr r0, [sp, #0x3C]
str r1, [sp, #0x10]
str r0, [sp, #0x3C]

ldr r4, =0x02247A24 | 1
bx r4


// 02247B42 - end of above function
// r4 is param
// need to set form
.global modify_species_encounter_data
modify_species_encounter_data:
bl call_setmondata // set the id number
mov r0, r4 // pp
mov r1, #112 // MON_DATA_FORM
ldr r2, =space_for_setmondata // &form
bl call_setmondata

mov r0, r4
bl UpdatePassiveForms

// hopefully with form set, this grabs everything correctly
mov r0, r4
ldr r3, =0x0206E250 | 1 //RecalcPartyPokemonStats(pp);
bl call_via_r3
mov r0, r4
ldr r3, =0x020722D4 | 1 //ResetPartyPokemonAbility(pp);
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


.global UseItemMonAttrChangeCheck_hook
UseItemMonAttrChangeCheck_hook:
push {r1-r7}

mov r0, r5
mov r1, r4 // so that the memory can be freed
bl UseItemMonAttrChangeCheck

pop {r1-r7}
cmp r0, #1
bne return_to_0207C2D2
mov r0, #31
ldr r1, =0x0207C2D0 | 1 // else return 31
bx r1

return_to_0207C2D2:
ldr r0, =0x0207C2D2 | 1
bx r0

.pool


.global UseItemMonAttrLoadDiffMessage_hook
UseItemMonAttrLoadDiffMessage_hook:
ldr r1, =partyMenuSignal
ldr r1, [r1]
cmp r1, #1
bhi _use_signal
// default handling
mov r1, #188 // "{STRVAR_1 0, 0, 0} changed Forme!\r"

_use_signal:
mov r0, #31
lsl r0, #6
ldr r0, [r5, r0]
ldr r2, =0x0200BBA0 | 1 // NewString_ReadMsgData
bl bx_r2

// reset partyMenuSignal to 0 to clear out its usage
ldr r1, =partyMenuSignal
mov r2, #0
str r2, [r0]

ldr r1, =0x021E5A76 | 1
bx r1

.pool


// basically we are looking to expand the capability of the original system
.global LoadIconChangeAnim_hook
LoadIconChangeAnim_hook:
mov r0, r4 // IconFormChangeData pointer
mov r1, r6 // PartyPokemon pointer
bl LoadIconChangeAnim // (struct IconFormChangeData *, struct PartyPokemon *);

_return_to_021E59C6:
ldr r0, =0x021E59C6 | 1
bx r0

.pool


.global Sav2_Misc_init_new_fields_hook
Sav2_Misc_init_new_fields_hook:
mov r0, r4
bl Sav2_Misc_init_new_fields // new init function
mov r0, r4
bl 0x0202ADEC // ApricornTrees_Init, should not need longcall honestly
mov r0, #2
ldr r1, =(0x0202A8D4 | 1)
bx r1

.pool


// need to grab species, pid, form
.global grab_sex_for_GetBoxMonData
grab_sex_for_GetBoxMonData:
ldr r1, [sp]
ldrh r0, [r5]
ldr r1, [r1]
ldrb r2, [r6, #0x18]
bl GrabSexFromSpeciesAndForm
ldr r1, =0x0206EA24|1
bx r1

.pool


.global StoreFieldSysPtr
StoreFieldSysPtr:
ldr r1, =gFieldSysPtr
str r4, [r1]

mov r1, #0
str r1, [r0]
ldr r0, [r4]
mov r6, #0x7C

ldr r2, =0x0203E030 | 1
bx r2

.pool

.global WindowClose
WindowClose:
ldr r0, =0x04000050
mov r1, #0x0
strh r1, [r0]
mov r0, r5
add r0, #0xD2
ldrb r1, [r0, #0x0]
mov r0, #0x40
ldr r2, =0x02041198 + 1
bx r2

.pool


// new method:  from the parent func
.global TryTriggerWildDoubleBattle
TryTriggerWildDoubleBattle:

mov r8, r1

ldr r2, =0x020272B0 | 1 //SaveBlock2_get
bl bx_r2
ldr r2, =0x02074904 | 1 //SavArray_PlayerParty_get
bl bx_r2
ldr r2, =0x0205442C | 1 //HasEnoughAlivePokemonForDoubleBattle(SavArray_PlayerParty_get(SaveBlock2_get()))
bl bx_r2
cmp r0, #0
beq singleBattle

ldr r2, =0x0201FD44 | 1
bl bx_r2

mov r1, #100
bl __aeabi_uidiv // returns div in r0
cmp r1, #10
blt doubleWildBattle

singleBattle:
mov r1, #0
ldr r0, =gTriggerDouble
str r1, [r0]

mov r1, r8

mov r0, r5 // fsys
add r2, sp, #0x20 // *battleWork
ldr r3, =0x02248244 | 1
bl bx_r3
ldr r2, =0x02246E22 | 1
bx r2

doubleWildBattle:
mov r1, #2
ldr r0, =gTriggerDouble
str r1, [r0]
mov r0, #11
ldr r2, =0x020518D8 | 1 // BattleSetup_New
bl bx_r2
str r0, [sp, #0x20]
ldr r2, =0x02246E22 | 1
// fallthrough to bx r2

bx_r2:
bx r2

bx_r3:
bx r3

.pool


.global ReleaseDoubleBattleWhenOnlyOneMon
ReleaseDoubleBattleWhenOnlyOneMon:
// check enc_double bit
//mov r0, r4
add r0, #0x22
ldrb r0, [r0]
cmp r0, #1
bne return_to_throw_ball

// check enemy party to see if both are healthy
ldr r0, [r4] // wk
ldr r0, [r0, #0x30] // sp
bl CheckCanUseBallOnDoublesFromBag
cmp r0, #1
beq return_to_throw_ball // can throw the ball

ldr r0, =0x02222CC4 | 1
bx r0

return_to_throw_ball:
ldr r0, =0x02222CDE | 1
bx r0

.pool



// r0 is fight_type, need to check gTriggerDouble above and see if the player palette should be overwritten as the multi battle param would stipulate
.global KeepPlayerPaletteIntact
KeepPlayerPaletteIntact:
ldr r1, =gTriggerDouble
ldr r1, [r1]
cmp r1, #0
bne return_to_022607C4

return_to_022607DA:
cmp r0, #0x4A
beq return_to_022607C4
ldr r2, =0x022607DA|1
bx r2

return_to_022607C4:
mov r0, r7
mov r1, #2
ldr r2, =0x022607C4|1
bx r2

.pool



// summary related code from lhearachel god bless you
.global Summary_Entry_Hook
Summary_Entry_Hook:
bl Summary_ColorizeStatScreen_Wrap
ldr r1, =0x0208D372 + 1
bx r1

/*

changes from platinum:
r5 -> r4
r3 -> r2
r4 -> r5
r6 can stay as r6

*/
.global Summary_IVEV
Summary_IVEV:
mov     r1, #0x20
ldr     r4, [r3, #0x4C]
mov     r6, r4
tst     r6, r1
beq     Summary_Check_LButton
sub     r1, #0x21
bl      Summary_ChangePage
mov     r0, #2
pop     {r4-r6,pc}

Summary_Check_LButton:
mov     r1, #2
lsl     r1, r1, #8
tst     r6, r1
beq     Summary_Check_RButton
sub     r1, r2, #3
ldrsb   r1, [r5, r1] // current page
cmp     r1, #1
bne     Summary_Check_RButton
mov     r1, #1
bl      Summary_ChangeStatScreenState
mov     r0, #0x5E
lsl     r0, #4
add     r0, #1
ldr     r2, =0x0200604C | 1
bl      bx_r2
mov     r0, #2
pop     {r4-r6,pc}

Summary_Check_RButton:
mov     r1, #1
lsl     r1, r1, #8
tst     r6, r1
beq     Summary_Check_SELButton
sub     r1, r2, #3
ldrsb   r1, [r5, r1]
cmp     r1, #1
bne     Summary_Check_SELButton
mov     r1, #2
bl      Summary_ChangeStatScreenState
mov     r0, #0x5E
lsl     r0, #4
add     r0, #1
ldr     r2, =0x0200604C | 1
bl      bx_r2
mov     r0, #2
pop     {r4-r6,pc}

Summary_Check_SELButton:
mov     r1, #4
tst     r6, r1
beq     Summary_StatsPage_Return
sub     r1, r2, #3
ldrsb   r1, [r5, r1]
cmp     r1, #1
bne     Summary_StatsPage_Return
mov     r1, #0
bl      Summary_ChangeStatScreenState
mov     r0, #0x5E
lsl     r0, #4
add     r0, #1
ldr     r2, =0x0200604C | 1
bl      bx_r2
mov     r0, #2
pop     {r4-r6,pc}

Summary_StatsPage_Return:
ldr     r1, =0x02088B74 + 1
bx      r1

Summary_ChangePage:
ldr     r2, =0x02089E30 + 1
bx      r2

.pool


.global AllocFail_hook
AllocFail_hook:
// spC is always the place that called the AllocMemory function, sp10 now
push {lr}
ldr r0, [sp, #0x10]
bl AllocFail
pop {pc}


.global form_evo_hook_1
form_evo_hook_1:
// r0 is already pointer to party mon.  need to set species and form
// r4+0x62 is target species
add r2, r2, #0x62
mov r1, r2
mov r2, #0
bl SetPartyPokemonParamsForEvoCutscene
ldr r0, =0x0207722C | 1
bx r0

.pool


.global form_evo_hook_2
form_evo_hook_2:
ldr r0, [r4, #0x28]
add r2, r2, #0x62
mov r1, r2
mov r2, #1
bl SetPartyPokemonParamsForEvoCutscene
ldr r0, =0x02076426 | 1
bx r0

.pool


.global BagApp_GetRepelStepCountAddr
BagApp_GetRepelStepCountAddr:
    push {r4, lr}
    add r4, r1, #0
    ldr r3, =0x021F992C | 1 // BagApp_GetSaveRoamers
    bl bx_r3
    ldr r3, =0x0202DB04 | 1 // SaveData_GetRepelPtr
    bl bx_r3
    strb r4, [r0]
    bl Repel_SetCurrentType
    pop {r4, pc}

.pool


.global CreateHeapInternal_hook
CreateHeapInternal_hook:
push {r0-r3}
bl CreateHeapInternal
pop {r0-r3}
mov r4, r0
mov r5, r1
str r2, [sp]
mov r7, r3
ldr r0, =0x0201A934 | 1
bx r0

.pool


.global DestroyHeap_hook
DestroyHeap_hook:
push {r0-r3}
mov r0, r4
bl DestroyHeap
pop {r0-r3}
ldr r3, [r1, #8]
ldrb r2, [r2, r4]
lsl r2, #2
str r0, [r3, r2]
ldr r2, =0x0201AA2C | 1
bx r2

.pool

.global FreeToHeap_hook
FreeToHeap_hook:
bl FreeToHeap
sub r0, r6, #4
ldr r0, [r0]
lsl r0, #0x18
lsr r4, r0, #0x18
ldr r0, =0x0201AB18|1
bx r0

.pool


.global FreeToHeapExplicit_hook
FreeToHeapExplicit_hook:
push {r0-r3}
mov r0, r4
bl FreeToHeapExplicit
pop {r0-r3}
lsl r4, r5, #1
ldr r0, [r0, #0xC]
ldrh r0, [r0, r4]
// skip GF_ASSERT fucking Whatever
ldr r1, =0x0201ABD6|1
bx r1

.pool


// when we get here, sp+0xC is the typical return address that called sys_AllocMemory{Lo}
// r5 and r6 are on the stack now--so it's now sp+0x14
.global AllocFromHeapInternal_hook
AllocFromHeapInternal_hook:
ldr r5, =AllocFromHeapInternal_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl AllocFromHeapInternal
ldr r1, =AllocFromHeapInternal_return_address
ldr r1, [r1]
mov pc, r1

.pool

.global AllocFromHeapInternal_return_address
AllocFromHeapInternal_return_address:
.word 0



.global GetBoxMonData_EditedCases_hook
GetBoxMonData_EditedCases_hook:
sub sp, #0x14

mov r3, sp
str r5, [r3, #0x0] // blockA
str r6, [r3, #0x4] // blockB
str r7, [r3, #0x8] // blockC
str r0, [r3, #0xC] // blockD
ldr r1, [r3, #(0x14+0x4)] // field from before sp adjust
ldr r2, [r3, #(0x14+0x8)] // data from before sp adjust
mov r0, r3
add r3, #0x10 // retBool
bl GetBoxMonData_EditedCases // (blocks, field, data, retBool)
ldr r1, [sp, #0x10]
cmp r1, #1
bne _retBoolFalse

// if retBoot is not false, jump to return function
add sp, #0x14
mov r4, r0
ldr r0, =0x0206EC36|1
bx r0

_retBoolFalse:
// get blockD back in r1
ldr r1, [sp, #0xC]

add sp, #0x14

// mov r1, r0 // blockD
ldr r0, [sp, #0x4] // field as stored in stack
ldr r2, =0x0206E6EA | 1
bx r2

.pool


.global SetBoxMonData_EditedCases_hook
SetBoxMonData_EditedCases_hook:
sub sp, #0x10
mov r0, sp
str r7, [r0, #0x0] // blockA
str r5, [r0, #0x4] // blockB
ldr r1, [r0, #(0x10+0x8)]
str r1, [r0, #0x8] // blockC
str r6, [r0, #0xC] // blockD
ldr r1, [r0, #(0x10+0x4)] // field
mov r2, r4 // data

bl SetBoxMonData_EditedCases // (blocks, field, data)
cmp r0, #1
bne _vanillaBoxMonHandling
add sp, #0x10
ldr r0, =0x0206F554 | 1
bx r0

_vanillaBoxMonHandling:
add sp, #0x10
ldr r0, [sp, #0x4] // field
ldr r1, =0x0206EE30 | 1
bx r1

.pool

.global AddBoxMonData_EditedCases_hook
AddBoxMonData_EditedCases_hook:
sub sp, #0x14
mov r3, sp
str r4, [r3, #0x0]   // blockA
str r5, [r3, #0x4]   // blockB
str r1, [r3, #0x8]   // blockC
str r0, [r3, #0xC]   // blockD
ldr r1, [r3, #(0x14 + 0x4)]  // field
mov r2, r6                   // data
mov r0, r3                   // blocks
bl AddBoxMonData_EditedCases
cmp r0, #1
bne _vanillaAddBoxMonHandling
add sp, #0x14
ldr r0, =0x0206FA54 | 1
bx  r0

_vanillaAddBoxMonHandling:
add sp, #0x14
ldr r0, =0x0206F682 | 1
bx  r0

.pool


// actually just store the ability to 0x021E73B8.  that should do lol
.global BoxDisplayMon_StoreAbility
BoxDisplayMon_StoreAbility:
mov r0, r7
mov r1, #0xA // MON_DATA_ABILITY
mov r2, #0
ldr r3, =0x0206E640 | 1 // GetBoxMonData
bl bx_r3
ldr r1, =0x021E73B8
strh r0, [r1]
ldr r1, =0x021E73BC | 1
bx r1

.global BoxDisplayMon_GrabAbility
BoxDisplayMon_GrabAbility:
ldr r2, =0x021E73B8
ldrh r2, [r2]
ldr r0, [r5, #0x24]
mov r1, #0
ldr r3, =0x0200C060 | 1
bl bx_r3
ldr r1, =0x021F52B8 | 1
bx r1

.pool


.data

.align 2

.global space_for_setmondata
space_for_setmondata:
.word 0

.global gFieldSysPtr
gFieldSysPtr:
.word 0

.global word_to_store_form_at
word_to_store_form_at:
.word 0

.global gTriggerDouble
gTriggerDouble:
.word 0
