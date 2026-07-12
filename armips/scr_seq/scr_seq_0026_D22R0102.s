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

.include "armips/scr_seq/event_D22R0102.inc"


// text archive to grab from: 063.txt

.create "build/a012/2_026", 0


scrdef scr_seq_D22R0102_000
scrdef scr_seq_D22R0102_001
scrdef scr_seq_D22R0102_002
scrdef scr_seq_D22R0102_003
scrdef scr_seq_D22R0102_004
scrdef scr_seq_D22R0102_005
scrdef scr_seq_D22R0102_006
scrdef scr_seq_D22R0102_007
scrdef scr_seq_D22R0102_008
scrdef scr_seq_D22R0102_009
scrdef scr_seq_D22R0102_010
scrdef scr_seq_D22R0102_011
scrdef scr_seq_D22R0102_012
scrdef_end

scr_seq_D22R0102_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D22R0102_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D22R0102_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D22R0102_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D22R0102_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D22R0102_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D22R0102_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D22R0102_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 24
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D22R0102_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 27
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D22R0102_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 30
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D22R0102_000:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 0, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D22R0102_001:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 1, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D22R0102_002:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 2, VAR_SPECIAL_RESULT
	callstd std_signpost
	end
	.align 4


.close
