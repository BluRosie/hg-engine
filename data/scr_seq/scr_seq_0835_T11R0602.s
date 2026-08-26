.include "asm/include/interop_macros.inc"

.include "asm/include/scriptmacros.inc"
.include "asm/include/flags.inc"
.include "asm/include/soundeffects.inc"
.include "asm/include/vars.inc"

.include "asm/include/events.inc"
.include "asm/include/game_stats.inc"
.include "asm/include/maps.inc"
.include "asm/include/map_sections.inc"
.include "asm/include/movements.inc"
.include "asm/include/rankings.inc"
.include "asm/include/spawns.inc"
.include "asm/include/std_scripts.inc"
.include "asm/include/trainers.inc"

#include "constants/item.h"
#include "constants/moves.h"
#include "constants/species.h"

.include "data/scr_seq/include/event_T11R0602.inc"


// text archive to grab from: 536.txt

.data


scrdef scr_seq_T11R0602_000
scrdef_end

scr_seq_T11R0602_000:
	scrcmd_609
	lockall
	apply_movement obj_player, _0088
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T11R0601, 0, 3, 3, DIR_EAST
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	wait_se SEQ_SE_DP_KAIDAN2
	scrcmd_606
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0094
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 0
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _00A0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

	.byte 0x00
	.balign 4
_0088:

	step 13, 3
	step 15, 7
	step_end
	.balign 4
_0094:

	step 15, 11
	step 13, 4
	step_end
	.balign 4
_00A0:

	step 13, 2
	step_end
	.byte 0x02, 0x00, 0x00, 0x00
	.balign 4
