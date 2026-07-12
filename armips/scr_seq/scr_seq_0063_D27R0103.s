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

.include "armips/scr_seq/event_D27R0103.inc"


// text archive to grab from: 003.txt

.create "build/a012/2_063", 0


scrdef scr_seq_D27R0103_000
scrdef scr_seq_D27R0103_001
scrdef_end

scr_seq_D27R0103_000:
	play_se SEQ_SE_GS_RAKKA01
	apply_movement obj_player, _0038
	wait 1, VAR_SPECIAL_RESULT
	scrcmd_374 obj_player
	wait_movement
	screen_shake 0, 1, 1, 8
	play_se SEQ_SE_DP_SUTYA2
	setvar VAR_UNK_40A7, 0
	end

	.align 4
_0038:

	step 68, 1
	step_end
scr_seq_D27R0103_001:
	compare VAR_UNK_40A7, 1
	goto_if_ne _0051
	make_object_visible obj_player
_0051:
	end
	.align 4


.close
