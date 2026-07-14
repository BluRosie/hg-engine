.include "asm/include/interop_macros.inc"

.include "asm/include/scriptmacros.inc"
.include "asm/include/flags.inc"
.include "asm/include/soundeffects.inc"
.include "asm/include/vars.inc"

.include "asm/include/battle_constants.inc"
.include "asm/include/events.inc"
.include "asm/include/game_stats.inc"
.include "asm/include/items.inc"
.include "asm/include/maps.inc"
.include "asm/include/map_sections.inc"
.include "asm/include/moves.inc"
.include "asm/include/movements.inc"
.include "asm/include/rankings.inc"
.include "asm/include/spawns.inc"
.include "asm/include/species.inc"
.include "asm/include/std_scripts.inc"
.include "asm/include/trainers.inc"

.include "asm/scr_seq/event_D27R0105.inc"


// text archive to grab from: 003.txt

.data


scrdef scr_seq_D27R0105_000
scrdef_end

scr_seq_D27R0105_000:
	scrcmd_609
	lockall
	setvar VAR_UNK_40A7, 1
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0039
	apply_movement obj_player, _0070
	apply_movement obj_partner_poke, _007C
	wait_movement
	goto _0043

_0039:
	apply_movement obj_player, _0070
	wait_movement
_0043:
	play_se SEQ_SE_GS_RAKKA01
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D27R0103, 0, 15, 3, DIR_SOUTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

	.byte 0x00
	.balign 4
_0070:

	step 19, 1
	step 69, 1
	step_end
	.balign 4
_007C:

	step 19, 1
	step 69, 1
	step_end
	.balign 4
