.nds
.thumb

// included by global

.open "base/arm9.bin", 0x2000000


// personal narc ability expansion here too
.org 0x0206FB80
ldrh r5, [r4, #0x16]

.org 0x0206FB84
ldrh r5, [r4, #0x1A]

/*
summary screen!
ability is originally a u8 at 0x32 of the pokemondata structure (0x262 of overall structure)
we need to move it to the original form field, a u16 at 0x4e (0x27e of overall structure)
*/
// changes to how the ability is stored
.org 0x02089A2A
add r1, #0x4e
strh r0, [r1]

// change how the form is stored
.org 0x02089B30
add r1, #0x32
strb r0, [r1]

// change how ability is used
.org 0x0208D376
ldrh r2, [r4, r2]

.org 0x0208D3C4
ldrh r1, [r4, r1]

.org 0x0208D464
.word 0x27E

/*
script commands!

GiveMon script command uses a u8 variable.  this cast is done by a paired lsl/lsr instruction that we change to make it u16 instead
*/

.org 0x0204D132
lsl r0, #0x10
lsr r0, #0x10

.org 0x02054248
ldrh r0, [r0, #0x14]

.close


.open "base/overlay/overlay_0012.bin", 0x022378C0

/*
basically we need to take the ability element in the BattlePokemon structure and move it to somewhere that is previously unused.
the original structure has it at 0x27.  we are moving it to 0x7a.  i think?  that this is still within range of the offset for purposes of ldrh.
2D67 -> 2DBA (offset within total BattleStruct)

we need to change ldrb -> ldrh (and strb -> strh) when applicable as well
*/

.equ BASE_BATTLEMON_OFFSET, 0x2D40
.equ NEW_ABILITY_OFFSET, 0x7a
.equ ABILITY_OFFSET_WITHIN_BATTLESTRUCT, (BASE_BATTLEMON_OFFSET + NEW_ABILITY_OFFSET)


// WS_ABICNT_CALC / statbuffchange
// already handled because of hooked change, but included here to mark it as done
.org 0x0223F0E8
.word ABILITY_OFFSET_WITHIN_BATTLESTRUCT

.org 0x0223F374
.word ABILITY_OFFSET_WITHIN_BATTLESTRUCT


// btl_scr_cmd_87_tryknockoff
// already handled because of hooked change
.org 0x02242FC8
.word ABILITY_OFFSET_WITHIN_BATTLESTRUCT


// btl_scr_cmd_d1_trynaturalcure
// already handled because of hooked change
.org 0x02245148
.word ABILITY_OFFSET_WITHIN_BATTLESTRUCT


// MessageParamTokuseiGet
// this features a call to the function at 2248648 (AI_BattlerSetAbility) that reveals to the AI what ability is being displayed
.org 0x022481BC
ldrh r4, [r2, r0]

.org 0x022481CC
.word ABILITY_OFFSET_WITHIN_BATTLESTRUCT


// AI_BattlerSetAbility(btx, client, ability)
// not going to be too comprehensive about changes to 0x390 to get it to 0x3E0
// am allowed to use 1 extra instruction per 2248654 giving me space after alignment
.org 0x02248648
add r1, r1 // multiply client by 2
add r1, r0, r1 // add it to btx
mov r0, #0x3e
lsl r0, #4
strh r2, [r1, r0] // strh to 0x3e0[client]
bx lr


// edits to ST_PokemonParamGet/BattleSystem_GetBattleMon
.org 0x0224E780
strh r0, [r3, r2]
sub r2, #(ABILITY_OFFSET_WITHIN_BATTLESTRUCT-0x2DB8)
sub r1, #(ABILITY_OFFSET_WITHIN_BATTLESTRUCT-0x2DAC)

.org 0x0224E7A0
strh r0, [r2, r1]

.org 0x0224E914
.word ABILITY_OFFSET_WITHIN_BATTLESTRUCT


// edits to SetBattlerVar
.org 0x0224F320
ldrh r0, [r3]
add r2, #NEW_ABILITY_OFFSET
strh r0, [r2]


// ST_ServerTokuseiGet / GetBattlerAbility
// already handled
.org 0x02252830
.word ABILITY_OFFSET_WITHIN_BATTLESTRUCT


// BattleFormChangeCheck (already handled)
.org 0x02256F24
.word ABILITY_OFFSET_WITHIN_BATTLESTRUCT


// some function checking forecast/trace/multitype
.org 0x022585CC
ldrh r3, [r6, r2]

.org 0x022585DA
sub r2, #(ABILITY_OFFSET_WITHIN_BATTLESTRUCT-0x2D8C)

.org 0x022585EA
sub r2, #(ABILITY_OFFSET_WITHIN_BATTLESTRUCT-0x2D8C)

.org 0x022585F4
ldrh r2, [r6, r2]

.org 0x02258636
ldrh r1, [r2, r0]

.org 0x02258640
sub r0, #(ABILITY_OFFSET_WITHIN_BATTLESTRUCT-0x2D8C)

.org 0x02258654
.word ABILITY_OFFSET_WITHIN_BATTLESTRUCT


// BattleControl_EmitPartyStatusHeal
.org 0x02263CFC
ldrh r1, [r3, r1]

.org 0x02263D10
.word ABILITY_OFFSET_WITHIN_BATTLESTRUCT


// and that is all instances of 2D67 in overlay 12!  let's see how it goes


.close
