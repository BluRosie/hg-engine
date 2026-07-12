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

.include "armips/scr_seq/event_R43R0201.inc"


// text archive to grab from: 403.txt

.create "build/a012/2_256", 0


scrdef scr_seq_R43R0201_000
scrdef scr_seq_R43R0201_001
scrdef scr_seq_R43R0201_002
scrdef scr_seq_R43R0201_003
scrdef_end

scr_seq_R43R0201_001:
	stop_bgm SEQ_GS_R_7_42
	play_bgm SEQ_GS_EYE_ROCKET
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0037
	goto _0095

_0037:
	apply_movement obj_R43R0201_rocketm, _0114
	apply_movement obj_R43R0201_rocketm_2, _0128
	wait_movement
	npc_msg 0
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 1000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _006C
	npc_msg 1
	closemsg
	goto _0077

_006C:
	npc_msg 2
	closemsg
	goto _0077

_0077:
	submoneyimmediate 1000
	apply_movement obj_R43R0201_rocketm, _0144
	apply_movement obj_R43R0201_rocketm_2, _0158
	wait_movement
	goto _00ED

_0095:
	apply_movement obj_R43R0201_rocketm, _0164
	apply_movement obj_R43R0201_rocketm_2, _0180
	wait_movement
	npc_msg 0
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 1000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00CA
	npc_msg 1
	closemsg
	goto _00D5

_00CA:
	npc_msg 2
	closemsg
	goto _00D5

_00D5:
	submoneyimmediate 1000
	apply_movement obj_R43R0201_rocketm, _0194
	apply_movement obj_R43R0201_rocketm_2, _01A4
	wait_movement
_00ED:
	stop_bgm SEQ_GS_EYE_ROCKET
	play_bgm SEQ_GS_R_7_42
	setvar VAR_UNK_410F, 1
	end

scr_seq_R43R0201_002:
	goto_if_set FLAG_RED_GYARADOS_MEET, _0110
	setvar VAR_UNK_410F, 0
	end

_0110:
	end

	.align 4
_0114:

	step 75, 1
	step 21, 3
	step 23, 2
	step 1, 1
	step_end
	.align 4
_0128:

	step 63, 6
	step 1, 1
	step 75, 1
	step 21, 3
	step 22, 1
	step 1, 1
	step_end
	.align 4
_0144:

	step 62, 3
	step 22, 2
	step 20, 3
	step 1, 1
	step_end
	.align 4
_0158:

	step 23, 1
	step 20, 3
	step_end
	.align 4
_0164:

	step 63, 6
	step 0, 1
	step 75, 1
	step 20, 4
	step 23, 1
	step 0, 1
	step_end
	.align 4
_0180:

	step 75, 1
	step 20, 4
	step 22, 2
	step 0, 1
	step_end
	.align 4
_0194:

	step 62, 3
	step 22, 1
	step 21, 4
	step_end
	.align 4
_01A4:

	step 23, 2
	step 21, 4
	step 0, 1
	step_end
scr_seq_R43R0201_000:
	simple_npc_msg 3
	end

scr_seq_R43R0201_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_TM36_FROM_ROUTE_43_GUARD, _0208
	npc_msg 4
	goto_if_no_item_space ITEM_TM036, 1, _0213
	callstd std_obtain_item_verbose
	wait_button_or_walk_away
	setflag FLAG_GOT_TM36_FROM_ROUTE_43_GUARD
_0208:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0213:
	callstd std_bag_is_full
	closemsg
	releaseall
	end
	.align 4


.close
