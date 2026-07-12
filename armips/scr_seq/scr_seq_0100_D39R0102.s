.nds
.thumb

.include "armips/include/scriptmacros.s"
.include "armips/include/flags.s"
.include "armips/include/soundeffects.s"
.include "armips/include/vars.s"

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

.include "armips/scr_seq/event_D39R0102.inc"


// text archive to grab from: 003.txt

.create "build/a012/2_100", 0


scrdef scr_seq_D39R0102_000
scrdef scr_seq_D39R0102_001
scrdef scr_seq_D39R0102_002
scrdef scr_seq_D39R0102_003
scrdef_end

scr_seq_D39R0102_000:
	setvar VAR_TEMP_x4000, 12
	setvar VAR_TEMP_x4001, 12
	goto _0062

scr_seq_D39R0102_001:
	setvar VAR_TEMP_x4000, 10
	setvar VAR_TEMP_x4001, 21
	goto _0062

scr_seq_D39R0102_002:
	setvar VAR_TEMP_x4000, 20
	setvar VAR_TEMP_x4001, 10
	goto _0062

scr_seq_D39R0102_003:
	setvar VAR_TEMP_x4000, 21
	setvar VAR_TEMP_x4001, 23
	goto _0062

_0062:
	scrcmd_609
	lockall
	setvar VAR_UNK_40AB, 1
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0093
	apply_movement obj_player, _0118
	apply_movement obj_partner_poke, _0124
	goto _00E9

_0093:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _00B6
	apply_movement obj_player, _0134
	apply_movement obj_partner_poke, _0140
	goto _00E9

_00B6:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _00D9
	apply_movement obj_player, _0150
	apply_movement obj_partner_poke, _015C
	goto _00E9

_00D9:
	apply_movement obj_player, _016C
	apply_movement obj_partner_poke, _0178
_00E9:
	wait_movement
	play_se SEQ_SE_GS_RAKKA01
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D39R0103, 0, VAR_TEMP_x4000, VAR_TEMP_x4001, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

	.align 4
_0118:

	step 40, 4
	step 69, 1
	step_end
	.align 4
_0124:

	step 62, 3
	step 20, 1
	step 69, 1
	step_end
	.align 4
_0134:

	step 41, 4
	step 69, 1
	step_end
	.align 4
_0140:

	step 62, 3
	step 21, 1
	step 69, 1
	step_end
	.align 4
_0150:

	step 42, 4
	step 69, 1
	step_end
	.align 4
_015C:

	step 62, 3
	step 22, 1
	step 69, 1
	step_end
	.align 4
_016C:

	step 43, 4
	step 69, 1
	step_end
	.align 4
_0178:

	step 62, 3
	step 23, 1
	step 69, 1
	step_end
	.align 4


.close
