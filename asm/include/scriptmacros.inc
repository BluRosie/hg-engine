.ifndef GUARD_SCRIPTMACROS
.set GUARD_SCRIPTMACROS, 0

.equ SCRDEF_END_CONSTANT, 0xFD13

.equ MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT, 0
.equ MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT, 1
.equ MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT, 2

// mystery_gift
.equ SCR_MG_BEGIN, 0
.equ SCR_MG_HAS_GIFT, 1
.equ SCR_MG_GET_TYP, 2
.equ SCR_MG_CAN_RECEIVE, 3
.equ SCR_MG_RECEIVE, 4
.equ SCR_MG_MESSAGE_RECEIVED, 5
.equ SCR_MG_MESSAGE_FAILED, 6
.equ SCR_MG_END, 7
.equ SCR_MG_END2, 8

.macro scrdef,offset
.word \offset - . - 4
.endm

.macro scrdef_end
.hword SCRDEF_END_CONSTANT
.endm

// Dummy command
.macro snop
.hword 0
.endm

// Dummy command
.macro dummy
.hword 1
.endm

// Exits script execution and returns control to the player
.macro end
.hword 2
.endm

// Pauses for some frames,tracks the timer in a script variable
.macro wait,frames,var
.hword 3
.hword \frames
.hword \var
.endm

// Loads 8-bit value into the specified script register
.macro loadbyte,reg,val
.hword 4
.byte \reg
.byte \val
.endm

// Loads 32-bit value into the specified script register
.macro loadword,reg,val
.hword 5
.byte \reg
.word \val
.endm

// Reads byte at a specific memory address into a script register
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro loadbytefromaddr,reg,addr
.hword 6
.byte \reg
.word \addr
.endm

// Writes byte to a specific memory address from a script register
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro writebytetoaddr,addr,reg
.hword 7
.word \addr
.byte \reg
.endm

// Writes byte literal to a specific memory address
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro setptrbyte,addr,val
.hword 8
.word \addr
.byte \val
.endm

// Copies a byte between script registers
.macro copylocal,to,from
.hword 9
.byte \to
.byte \from
.endm

// Copies a byte between two memory addresses
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro copybyte,to,from
.hword 10
.word \to
.word \from
.endm

// Compares values between script reg and script reg
.macro compare_local_to_local,a,b
.hword 11
.byte \a
.byte \b
.endm

// Compares script reg to byte literal
.macro compare_local_to_value,reg,val
.hword 12
.byte \reg
.byte \val
.endm

// Compares script reg to memory address
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro compare_local_to_addr,reg,addr
.hword 13
.byte \reg
.word \addr
.endm

// Compares memory address to script reg
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro compare_addr_to_local,addr,reg
.hword 14
.word \addr
.byte \reg
.endm

// Compares memory address to byte literal
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro compare_addr_to_value,addr,val
.hword 15
.word \addr
.byte \val
.endm

// Compares bytes at two memory addresses
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro compare_addr_to_addr,a,b
.hword 16
.word \a
.word \b
.endm

// Compares variable to 16-bit literal
.macro compare_var_to_value,var,val
.hword 17
.hword \var
.hword \val
.endm

// Compares two variables
.macro compare_var_to_var,a,b
.hword 18
.hword \a
.hword \b
.endm

// Creates a new script context to run the indicated script asynchronously
.macro runscript,id
.hword 19
.hword \id
.endm

.equ _std_misc, 2000
.equ std_signpost, 2000
.equ std_hidden_item_fanfare, 2001
.equ std_nurse_joy, 2002
.equ std_survive_poisoning, 2003
.equ std_prompt_save, 2006
.equ std_receive_accessory, 2007
.equ std_obtain_item_verbose, 2008
.equ std_bag_is_full, 2009
.equ std_pokecenter_pc, 2010
.equ std_mart_intro, 2011
.equ std_whited_out_to_mom, 2012
.equ std_whited_out_to_pokecenter, 2013
.equ std_global_terminal_globe, 2015
.equ std_bike_rack, 2020
.equ std_hatch_egg, 2021
.equ std_repel_wore_off, 2022
.equ std_set_battle_phrase, 2023
.equ std_wifi_club_closed, 2025
.equ std_receive_background, 2026
.equ std_play_friend_music, 2029
.equ std_fade_end_friend_music, 2030
.equ std_play_rival_intro_music, 2031
.equ std_fade_end_rival_intro_music, 2032
.equ std_give_item_verbose, 2033
.equ std_play_mom_music, 2036
.equ std_play_follow_music, 2037
.equ std_fade_end_mom_music, 2038
.equ std_phone_call, 2039
.equ std_frontier_gold_prints_check, 2040
.equ std_bag_is_full_griseous_orb, 2041
.equ std_play_eusine_music, 2042
.equ std_fade_end_eusine_music, 2043
.equ std_play_clair_music, 2044
.equ std_fade_end_clair_music, 2045
.equ std_enter_global_terminal, 2046
.equ std_pokemart, 2048
.equ std_pokemart_buy, 2049
.equ std_pokemart_sell, 2050
.equ std_pokemart_cancel, 2051
.equ std_special_mart, 2052
.equ std_special_mart_buy, 2053
.equ std_special_mart_sell, 2054
.equ std_special_mart_cancel, 2055
.equ std_play_pichu_music, 2065
.equ std_fade_end_pichu_music, 2066
.equ std_play_kimono_girl_music, 2067
.equ std_fade_end_kimono_girl_music, 2068
.equ std_fade_heal_fade, 2069
.equ std_play_rival_outro_music, 2070
.equ std_fade_end_rival_outro_music, 2071

// Creates a new script context to run the indicated script and wait
.macro callstd,id
.hword 20
.hword \id
.endm

// Yield to parent context
.macro endstd
.hword 21
.endm

// Absolute branch to offset in script
.macro goto,dest
.hword 22
.word \dest-.-4
.endm

// Branch to offset in script if interacting with a specific object
.macro objectgoto,object,dest
.hword 23
.byte \object
.word \dest-.-4
.endm

// Branch to offset in script if interacting with a specific bg event
.macro bggoto,bg,dest
.hword 24
.byte \bg
.word \dest-.-4
.endm

.equ DIR_NORTH, 0
.equ DIR_SOUTH, 1
.equ DIR_WEST, 2
.equ DIR_EAST, 3

// Branch to offset in script if facing a specific direction
.macro directiongoto,dir,dest
.hword 25
.byte \dir
.word \dest-.-4
.endm

// Call script as a subroutine
.macro call,sub
.hword 26
.word \sub-.-4
.endm

// Return from subroutine
.macro return
.hword 27
.endm

// Conditional branch to offset in script
.macro goto_if,condition,dest
.hword 28
.byte \condition
.word \dest-.-4
.endm

// Conditional call subroutine
.macro call_if,condition,sub
.hword 29
.byte \condition
.word \sub-.-4
.endm

// Set event flag
.macro setflag,flag
.hword 30
.hword \flag
.endm

// Clear event flag
.macro clearflag,flag
.hword 31
.hword \flag
.endm

// Check event flag, store result on context
.macro checkflag,flag
.hword 32
.hword \flag
.endm

// Set event flag referenced in var
.macro setflagvar,var
.hword 33
.hword \var
.endm

// Clear event flag referenced in var
.macro clearflagvar,var
.hword 34
.hword \var
.endm

// Check event flag referenced in var, store result in other var
.macro checkflagvar,var_flag,var_dest
.hword 35
.hword \var_flag
.hword \var_dest
.endm

// Set trainer defeated flag
.macro settrainerflag,var_or_trno
.hword 36
.hword \var_or_trno
.endm

// Clear trainer defeated flag
.macro cleartrainerflag,var_or_trno
.hword 37
.hword \var_or_trno
.endm

// Check trainer defeated flag,store result on context
.macro checktrainerflag,var_or_trno
.hword 38
.hword \var_or_trno
.endm

// Increment var value by value
.macro addvar,var,var_or_addend
.hword 39
.hword \var
.hword \var_or_addend
.endm

// Decrement var value by value
.macro subvar,var,var_or_addend
.hword 40
.hword \var
.hword \var_or_addend
.endm

// Set var to short literal
.macro setvar,var,val
.hword 41
.hword \var
.hword \val
.endm

// Set var from other var
.macro copyvar,dst,src
.hword 42
.hword \dst
.hword \src
.endm

// Set var from other var or short literal
.macro setorcopyvar,dst,src
.hword 43
.hword \dst
.hword \src
.endm

// Print non_npc_msg in field window from current map message bank
.macro non_npc_msg,msg_id
.hword 44
.byte \msg_id
.endm

// NPC dialogue window
.macro npc_msg,msg_id
.hword 45
.byte \msg_id
.endm

// Not sure what to call this but it
// is also a message printer
.macro non_npc_msg_var,msg_id
.hword 46
.hword \msg_id
.endm

.macro npc_msg_var,arg0
.hword 47
.hword \arg0
.endm

.macro scrcmd_048,arg0
.hword 48
.byte \arg0
.endm

// Waits for A or B button
.macro wait_ab_press
.hword 49
.endm

// Waits for A,B,or dpad. On pressing dpad,does a turn frame.
.macro wait_button
.hword 50
.endm

// old compatibility for the moment
.macro wait_button_or_walk_away
wait_button
.endm

// Waits for A,B,or dpad. No turn frame.
.macro wait_button_or_dpad
.hword 51
.endm

.macro openmsg
.hword 52
.endm

.macro closemsg
.hword 53
.endm

// Like closemsg but does not clear the graphics.
.macro holdmsg
.hword 54
.endm

.macro direction_signpost,message,arg1,arrow,arg3
.hword 55
.byte \message
.byte \arg1
.hword \arrow
.hword \arg3
.endm

.macro scrcmd_055,message,arg1
.hword 56
.byte \message
.hword \arg1
.endm

.macro scrcmd_057,arg0
.hword 57
.byte \arg0
.endm

.macro scrcmd_058
.hword 58
.endm

.macro trainer_tips,arg0,arg1
.hword 59
.byte \arg0
.hword \arg1
.endm

.macro scrcmd_060,arg0
.hword 60
.hword \arg0
.endm

.macro scrcmd_061
.hword 61
.endm

.macro scrcmd_062,arg0,arg1,arg2,arg3,arg4,arg5
.hword 62
.byte \arg0
.byte \arg1
.byte \arg2
.byte \arg3
.byte \arg4
.byte \arg5
.endm

.macro yesno,arg0
.hword 63
.hword \arg0
.endm

.macro scrcmd_064,arg0,arg1,arg2,arg3,arg4
.hword 64
.byte \arg0
.byte \arg1
.byte \arg2
.byte \arg3
.hword \arg4
.endm

.macro scrcmd_065,arg0,arg1,arg2,arg3,arg4
.hword 65
.byte \arg0
.byte \arg1
.byte \arg2
.byte \arg3
.hword \arg4
.endm

.macro scrcmd_066,arg0,arg1
.hword 66
.byte \arg0
.byte \arg1
.endm

.macro scrcmd_067
.hword 67
.endm

.macro scrcmd_068,arg0,arg1,arg2,arg3,arg4
.hword 68
.byte \arg0
.byte \arg1
.byte \arg2
.byte \arg3
.hword \arg4
.endm

// uses text bank 191 to choose what to do.
.macro prepare_list_std_text,x,y,cursor,cancel,selection
.hword 68
.byte \x
.byte \y
.byte \cursor
.byte \cancel
.hword \selection
.endm

.macro scrcmd_069,arg0,arg1,arg2,arg3,arg4
.hword 69
.byte \arg0
.byte \arg1
.byte \arg2
.byte \arg3
.hword \arg4
.endm

// uses the current loaded text bank on the map to choose what to do.
.macro prepare_list_local_text,x,y,cursor,cancel,selection
.hword 69
.byte \x
.byte \y
.byte \cursor
.byte \cancel
.hword \selection
.endm

.macro scrcmd_070,arg0,arg1,arg2
.hword 70
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro add_list_option,optionmsg,highlightmsg,listslot
.hword 70
.hword \optionmsg
.hword \highlightmsg
.hword \listslot
.endm

.macro scrcmd_071
.hword 71
.endm

.macro show_prepared_list
.hword 71
.endm

.macro scrcmd_072,arg0
.hword 72
.byte \arg0
.endm

.macro play_se,arg0
.hword 73
.hword \arg0
.endm

.macro stop_se,arg0
.hword 74
.hword \arg0
.endm

.macro wait_se,arg0
.hword 75
.hword \arg0
.endm

.macro play_cry,arg0,arg1
.hword 76
.hword \arg0
.hword \arg1
.endm

.macro wait_cry
.hword 77
.endm

.macro play_fanfare,fanfare
.hword 78
.hword \fanfare
.endm

.macro wait_fanfare
.hword 79
.endm

.macro play_bgm,bgm
.hword 80
.hword \bgm
.endm

.macro stop_bgm,arg0
.hword 81
.hword \arg0
.endm

.macro reset_bgm
.hword 82
.endm

.macro scrcmd_083,arg0
.hword 83
.hword \arg0
.endm

// Fade out the music to the target level
// in the designated number of frames
.macro fade_out_bgm,target,frames
.hword 84
.hword \target
.hword \frames
.endm

.macro fade_in_bgm,arg0
.hword 85
.hword \arg0
.endm

.macro scrcmd_086,arg0,arg1
.hword 86
.byte \arg0
.byte \arg1
.endm

.macro temp_bgm,arg0
.hword 87
.hword \arg0
.endm

.macro scrcmd_088,arg0
.hword 88
.byte \arg0
.endm

.macro chatot_has_cry,arg0
.hword 89
.hword \arg0
.endm

.macro chatot_start_recording,arg0
.hword 90
.hword \arg0
.endm

.macro chatot_stop_recording
.hword 91
.endm

.macro chatot_save_recording
.hword 92
.endm

.macro scrcmd_093
.hword 93
.endm

.equ obj_daycare_poke_1, 250
.equ obj_daycare_poke_2, 251
.equ obj_apricorn, 252
.equ obj_partner_poke, 253
.equ obj_player, 255

.equ LookUp, 0x0000
.equ LookDown, 0x0001
.equ LookLeft, 0x0002
.equ LookRight, 0x0003
.equ WalkUpSlow, 0x0004
.equ WalkDownSlow, 0x0005
.equ WalkLeftSlow, 0x0006
.equ WalkRightSlow, 0x0007
.equ WalkUp, 0x0008
.equ WalkDown, 0x0009
.equ WalkLeft, 0x000A
.equ WalkRight, 0x000B
.equ WalkUpFast, 0x000C
.equ WalkDownFast, 0x000D
.equ WalkLeftFast, 0x000E
.equ WalkRightFast, 0x000F
.equ WalkUpVeryFast, 0x0010
.equ WalkDownVeryFast, 0x0011
.equ WalkLeftVeryFast, 0x0012
.equ WalkRightVeryFast, 0x0013
.equ RunUp, 0x0014
.equ RunDown, 0x0015
.equ RunLeft, 0x0016
.equ RunRight, 0x0017
.equ WalkUpSlowSite, 0x0018
.equ WalkDownSlowSite, 0x0019
.equ WalkLeftSlowSite, 0x001A
.equ WalkRightSlowSite, 0x001B
.equ WalkUpSite, 0x001C
.equ WalkDownSite, 0x001D
.equ WalkLeftSite, 0x001E
.equ WalkRightSite, 0x001F
.equ WalkUpFastSite, 0x0020
.equ WalkDownFastSite, 0x0021
.equ WalkLeftFastSite, 0x0022
.equ WalkRightFastSite, 0x0023
.equ WalkUpVeryFastSite, 0x0024
.equ WalkDownVeryFastSite, 0x0025
.equ WalkLeftVeryFastSite, 0x0026
.equ WalkRightVeryFastSite, 0x0027
.equ RunUpSite, 0x0028
.equ RunDownSite, 0x0029
.equ RunLeftSite, 0x002A
.equ RunRightSite, 0x002B
.equ JumpUpSlow, 0x002C
.equ JumpDownSlow, 0x002D
.equ JumpLeftSlow, 0x002E
.equ JumpRightSlow, 0x002F
.equ JumpUpSite, 0x0030
.equ JumpDownSite, 0x0031
.equ JumpLeftSite, 0x0032
.equ JumpRightSite, 0x0033
.equ JumpUp, 0x0034
.equ JumpDown, 0x0035
.equ JumpLeft, 0x0036
.equ JumpRight, 0x0037
.equ JumpUp2, 0x0038
.equ JumpDown2, 0x0039
.equ JumpLeft2, 0x003A
.equ JumpRight2, 0x003B
.equ Freeze, 0x003E
.equ WaitDisappear, 0x0045
.equ LockDir, 0x0047
.equ ReleaseDir, 0x0048
.equ Exclamation, 0x004B
.equ WaitWalkUpSlow, 0x004C
.equ WaitWalkDownSlow, 0x004D
.equ WaitWalkLeftSlow, 0x004E// seems bugged
.equ WaitWalkRightSlow, 0x004F
.equ WaitWalkUp, 0x0050
.equ WaitWalkDown, 0x0051
.equ WaitWalkLeft, 0x0052
.equ WaitWalkRight, 0x0053
.equ WaitMoveUp, 0x0054
.equ WaitMoveDown, 0x0055
.equ WaitMoveLeft, 0x0056
.equ WaitMoveRight, 0x0057
.equ WaitWalkBackUp, 0x0058
.equ WaitWalkBackDown, 0x0059
.equ WaitWalkBackLeft, 0x005A
.equ WaitWalkBackRight, 0x005B
.equ WaitJumpLeft1, 0x005C
.equ WaitJumpRight1, 0x005D
.equ WaitJumpLeft2, 0x005E
.equ WaitJumpRight2, 0x005F
.equ WaitMoveSite, 0x0064
.equ WaitJumpSite, 0x0065
.equ WaitDoubleExclamation, 0x0067
.equ WaitMoveForever, 0x0068
.equ MovementEnd, 0x00FE

.macro apply_movement,arg0,arg1
.hword 94
.hword \arg0
.word \arg1-.-4
.endm

.macro wait_movement
.hword 95
.endm

.macro lockall
.hword 96
.endm

.macro releaseall
.hword 97
.endm

.macro lock,arg0
.hword 98
.hword \arg0
.endm

.macro release,arg0
.hword 99
.hword \arg0
.endm

.macro show_person,arg0
.hword 100
.hword \arg0
.endm

.macro hide_person,arg0
.hword 101
.hword \arg0
.endm

.macro scrcmd_102,arg0,arg1
.hword 102
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_103
.hword 103
.endm

.macro faceplayer
.hword 104
.endm

.macro get_player_coords,arg0,arg1
.hword 105
.hword \arg0
.hword \arg1
.endm

.macro get_person_coords,arg0,arg1,arg2
.hword 106
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_107,arg0,arg1,arg2
.hword 107
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_108,arg0,arg1
.hword 108
.hword \arg0
.byte \arg1
.endm

.macro scrcmd_109,arg0,arg1
.hword 109
.hword \arg0
.hword \arg1
.endm

.macro addmoney,arg0
.hword 110
.word \arg0
.endm

.macro submoneyimmediate,arg0
.hword 111
.word \arg0
.endm

.macro hasenoughmoneyimmediate,arg0,arg1
.hword 112
.hword \arg0
.word \arg1
.endm

.macro show_money_box,arg0,arg1
.hword 113
.hword \arg0
.hword \arg1
.endm

.macro hide_money_box
.hword 114
.endm

.macro update_money_box
.hword 115
.endm

.macro scrcmd_116,arg0,arg1,arg2
.hword 116
.byte \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_117
.hword 117
.endm

.macro scrcmd_118,arg0
.hword 118
.byte \arg0
.endm

.macro get_coin_amount,arg0
.hword 119
.hword \arg0
.endm

.macro give_coins,arg0
.hword 120
.hword \arg0
.endm

.macro take_coins,arg0
.hword 121
.hword \arg0
.endm

.macro give_athlete_points,arg0
.hword 122
.hword \arg0
.endm

.macro take_athlete_points,arg0
.hword 123
.hword \arg0
.endm

.macro check_athlete_points,arg0,arg1
.hword 124
.hword \arg0
.hword \arg1
.endm

.macro giveitem,arg0,arg1,arg2
.hword 125
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro takeitem,arg0,arg1,arg2
.hword 126
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro hasspaceforitem,arg0,arg1,arg2
.hword 127
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro hasitem,arg0,arg1,arg2
.hword 128
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro itemistmorhm,arg0,arg1
.hword 129
.hword \arg0
.hword \arg1
.endm

.macro getitempocket,arg0,arg1
.hword 130
.hword \arg0
.hword \arg1
.endm

.macro set_starter_choice,arg0
.hword 131
.hword \arg0
.endm

.macro gender_msgbox,arg0,arg1
.hword 132
.byte \arg0
.byte \arg1
.endm

.macro get_seal_quantity,arg0,arg1
.hword 133
.hword \arg0
.hword \arg1
.endm

.macro give_or_take_seal,arg0,arg1
.hword 134
.hword \arg0
.hword \arg1
.endm

.macro give_random_seal,arg0,arg1,arg2
.hword 135
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_136,arg0,arg1
.hword 136
.hword \arg0
.hword \arg1
.endm

.macro give_mon,arg0,arg1,arg2,arg3,arg4,arg5
.hword 137
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.hword \arg5
.endm

.macro give_egg,arg0,arg1
.hword 138
.hword \arg0
.hword \arg1
.endm

.macro set_mon_move,arg0,arg1,arg2
.hword 139
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro mon_has_move,arg0,arg1,arg2
.hword 140
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro get_party_slot_with_move,arg0,arg1
.hword 141
.hword \arg0
.hword \arg1
.endm

.macro get_phone_book_rematch,arg0,arg1
.hword 142
.hword \arg0
.hword \arg1
.endm

.macro name_rival,arg0
.hword 143
.hword \arg0
.endm

.macro get_friend_sprite,arg0
.hword 144
.hword \arg0
.endm

.macro register_pokegear_card,arg0
.hword 145
.byte \arg0
.endm

.macro register_gear_number,arg0
.hword 146
.hword \arg0
.endm

// Pokegear Contacts
.equ PHONE_CONTACT_NONE, 0xff
.equ PHONE_CONTACT_MOTHER, 0
.equ PHONE_CONTACT_PROF__ELM, 1
.equ PHONE_CONTACT_PROF__OAK, 2
.equ PHONE_CONTACT_ETHAN, 3
.equ PHONE_CONTACT_LYRA, 4
.equ PHONE_CONTACT_KURT, 5
.equ PHONE_CONTACT_DAY_C_MAN, 6
.equ PHONE_CONTACT_DAY_C_LADY, 7
.equ PHONE_CONTACT_BUENA, 8
.equ PHONE_CONTACT_BILL, 9
.equ PHONE_CONTACT_JOEY, 10
.equ PHONE_CONTACT_RALPH, 11
.equ PHONE_CONTACT_LIZ, 12
.equ PHONE_CONTACT_WADE, 13
.equ PHONE_CONTACT_ANTHONY, 14
.equ PHONE_CONTACT_BIKE_SHOP, 15
.equ PHONE_CONTACT_KENJI, 16
.equ PHONE_CONTACT_WHITNEY, 17
.equ PHONE_CONTACT_FALKNER, 18
.equ PHONE_CONTACT_JACK, 19
.equ PHONE_CONTACT_CHAD, 20
.equ PHONE_CONTACT_BRENT, 21
.equ PHONE_CONTACT_TODD, 22
.equ PHONE_CONTACT_ARNIE, 23
.equ PHONE_CONTACT_BAOBA, 24
.equ PHONE_CONTACT_IRWIN, 25
.equ PHONE_CONTACT_JANINE, 26
.equ PHONE_CONTACT_CLAIR, 27
.equ PHONE_CONTACT_ERIKA, 28
.equ PHONE_CONTACT_MISTY, 29
.equ PHONE_CONTACT_BLAINE, 30
.equ PHONE_CONTACT_BLUE, 31
.equ PHONE_CONTACT_CHUCK, 32
.equ PHONE_CONTACT_BROCK, 33
.equ PHONE_CONTACT_BUGSY, 34
.equ PHONE_CONTACT_SABRINA, 35
.equ PHONE_CONTACT_LT__SURGE, 36
.equ PHONE_CONTACT_MORTY, 37
.equ PHONE_CONTACT_JASMINE, 38
.equ PHONE_CONTACT_PRYCE, 39
.equ PHONE_CONTACT_HUEY, 40
.equ PHONE_CONTACT_GAVEN, 41
.equ PHONE_CONTACT_JAMIE, 42
.equ PHONE_CONTACT_REENA, 43
.equ PHONE_CONTACT_VANCE, 44
.equ PHONE_CONTACT_PARRY, 45
.equ PHONE_CONTACT_ERIN, 46
.equ PHONE_CONTACT_BEVERLY, 47
.equ PHONE_CONTACT_JOSE, 48
.equ PHONE_CONTACT_GINA, 49
.equ PHONE_CONTACT_ALAN, 50
.equ PHONE_CONTACT_DANA, 51
.equ PHONE_CONTACT_DEREK, 52
.equ PHONE_CONTACT_TULLY, 53
.equ PHONE_CONTACT_TIFFANY, 54
.equ PHONE_CONTACT_WILTON, 55
.equ PHONE_CONTACT_KRISE, 56
.equ PHONE_CONTACT_IAN, 57
.equ PHONE_CONTACT_WALT, 58
.equ PHONE_CONTACT_ALFRED, 59
.equ PHONE_CONTACT_DOUG, 60
.equ PHONE_CONTACT_ROB, 61
.equ PHONE_CONTACT_KYLE, 62
.equ PHONE_CONTACT_KYLER, 63
.equ PHONE_CONTACT_TIM_AND_SUE, 64
.equ PHONE_CONTACT_KENNY, 65
.equ PHONE_CONTACT_TANNER, 66
.equ PHONE_CONTACT_JOSH, 67
.equ PHONE_CONTACT_TORIN, 68
.equ PHONE_CONTACT_HILLARY, 69
.equ PHONE_CONTACT_BILLY, 70
.equ PHONE_CONTACT_KAY_AND_TIA, 71
.equ PHONE_CONTACT_REESE, 72
.equ PHONE_CONTACT_AIDEN, 73
.equ PHONE_CONTACT_ERNEST, 74
.equ NUM_PHONE_CONTACTS, 75

.macro check_registered_phone_number,arg0,arg1
.hword 147
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_148,arg0,arg1
.hword 148
.byte \arg0
.byte \arg1
.endm

.macro scrcmd_149,arg0
.hword 149
.byte \arg0
.endm

.macro restore_overworld
.hword 150
.endm

.macro scrcmd_151
.hword 151
.endm

.macro scrcmd_152
.hword 152
.endm

.macro scrcmd_153,arg0
.hword 153
.hword \arg0
.endm

.macro scrcmd_154,arg0,arg1,arg2
.hword 154
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_155,arg0,arg1
.hword 155
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_156
.hword 156
.endm

.macro town_map
.hword 157
.endm

.macro scrcmd_158,arg0
.hword 158
.byte \arg0
.endm

.macro scrcmd_159
.hword 159
.endm

.macro scrcmd_160
.hword 160
.endm

.macro scrcmd_161
.hword 161
.endm

.macro scrcmd_162
.hword 162
.endm

.macro hof_credits,arg0
.hword 163
.hword \arg0
.endm

.macro scrcmd_164
.hword 164
.endm

.macro scrcmd_165,arg0,arg1
.hword 165
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_166,arg0
.hword 166
.hword \arg0
.endm

.macro choose_starter
.hword 167
.endm

.macro get_trainer_path_to_player,arg0
.hword 168
.hword \arg0
.endm

.macro trainer_step_towards_player,arg0,arg1
.hword 169
.hword \arg0
.hword \arg1
.endm

.macro get_trainer_eye_type,arg0
.hword 170
.hword \arg0
.endm

// For when one or more trainers see you
.macro get_eye_trainer_num,arg0,arg1
.hword 171
.hword \arg0
.hword \arg1
.endm

.macro name_player,arg0
.hword 172
.hword \arg0
.endm

.macro nickname_input,arg0,arg1
.hword 173
.hword \arg0
.hword \arg1
.endm

.equ RGB_BLACK, 0
.equ RGB_WHITE, 0x7FFF

.macro fade_screen,arg0,speed,direction,color
.hword 174
.hword \arg0
.hword \speed
.hword \direction
.hword \color
.endm

.macro wait_fade
.hword 175
.endm

.macro warp,arg0,arg1,arg2,arg3,arg4
.hword 176
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro rock_climb,arg0
.hword 177
.hword \arg0
.endm

.macro surf,arg0
.hword 178
.hword \arg0
.endm

.macro waterfall,arg0
.hword 179
.hword \arg0
.endm

.macro scrcmd_180,arg0,arg1,arg2
.hword 180
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro flash_effect
.hword 181
.endm

.macro whirlpool,arg0
.hword 182
.hword \arg0
.endm

.macro scrcmd_183,arg0
.hword 183
.hword \arg0
.endm

.macro player_on_bike_check,arg0
.hword 184
.hword \arg0
.endm

.macro player_on_bike_set,arg0
.hword 185
.byte \arg0
.endm

.macro scrcmd_186,arg0
.hword 186
.byte \arg0
.endm


// Player avatar state
.equ PLAYER_STATE_WALKING, 0
.equ PLAYER_STATE_CYCLING, 1
.equ PLAYER_STATE_SURFING, 2
.equ PLAYER_STATE_ROCKET, 3

// Player transition bits
.equ PLAYER_TRANSITION_WALKING, 1
.equ PLAYER_TRANSITION_CYCLING, 2
.equ PLAYER_TRANSITION_SURFING, 4
.equ PLAYER_TRANSITION_x0008, 8
.equ PLAYER_TRANSITION_x0010, 16
.equ PLAYER_TRANSITION_x0020, 32
.equ PLAYER_TRANSITION_x0040, 64
.equ PLAYER_TRANSITION_x0080, 128
.equ PLAYER_TRANSITION_HEAL, 256
.equ PLAYER_TRANSITION_x0200, 512
.equ PLAYER_TRANSITION_ROCKET, 1024
.equ PLAYER_TRANSITION_ROCKET_HEAL, 2048
.equ PLAYER_TRANSITION_POKEATHLON, 4096
.equ PLAYER_TRANSITION_x2000, 8192
.equ PLAYER_TRANSITION_x4000, 16384


// Get the overworld state of the player.
// Used in some places to determine whether
// the player is masquerading as a member
// of Team Rocket.
.macro get_player_state,var
.hword 187
.hword \var
.endm

.macro set_avatar_bits,arg0
.hword 188
.hword \arg0
.endm

.macro update_avatar_state
.hword 189
.endm

// In the buffer_XXX commands,the maximum
// acceptable value for the slot arg is 7.
// This sets the message format placeholder
// to whatever is buffered.
.macro buffer_players_name,slot
.hword 190
.byte \slot
.endm

// If you use this before naming your rival,
// this will be an empty string.
.macro buffer_rivals_name,slot
.hword 191
.byte \slot
.endm

.macro buffer_friends_name,slot
.hword 192
.byte \slot
.endm

// For these commands, the additional argument
// is a flex arg, meaning it can be a literal
// or a variable.
.macro buffer_mon_species_name,slot,party_pos
.hword 193
.byte \slot
.hword \party_pos
.endm

.macro buffer_item_name,slot,item
.hword 194
.byte \slot
.hword \item
.endm

.macro buffer_pocket_name,slot,pocket
.hword 195
.byte \slot
.hword \pocket
.endm

.macro buffer_tmhm_move_name,slot,tmhm
.hword 196
.byte \slot
.hword \tmhm
.endm

.macro buffer_move_name,slot,move
.hword 197
.byte \slot
.hword \move
.endm

.macro buffer_int,slot,value
.hword 198
.byte \slot
.hword \value
.endm

.macro bufferpartymonnick,slot,party_pos
.hword 199
.byte \slot
.hword \party_pos
.endm

.macro buffer_trainer_class_name,slot,trcls
.hword 200
.byte \slot
.hword \trcls
.endm

.macro buffer_player_union_avatar_class_name,slot
.hword 201
.byte \slot
.endm

// The other two args here are unused
.macro buffer_species_name,slot,species,arg2,arg3
.hword 202
.byte \slot
.hword \species
.hword \arg2
.byte \arg3
.endm

.macro buffer_starter_species_name,slot
.hword 203
.byte \slot
.endm

// These two commands are leftover from Platinum.
// As such,they are configured to check for the
// Sinnoh starters instead of the Johto starters.
// Since the player will never start with any of
// Turtwig,Chimchar,or Piplup,this command
// will always return TURTWIG,and the following
// CHIMCHAR.
// These commands are unused in HGSS.
.macro buffer_dppt_rival_starter_species_name,slot
.hword 204
.byte \slot
.endm

.macro buffer_dppt_friend_starter_species_name,slot
.hword 205
.byte \slot
.endm

// Gets your starter species into the indicated
// variable. Used to calculate which rival
// party to use.
.macro get_starter_choice,var
.hword 206
.hword \var
.endm

.macro buffer_decoration_name,slot,deco
.hword 207
.byte \slot
.hword \deco
.endm

// Dummy
.macro scrcmd_208,slot,unk
.hword 208
.byte \slot
.hword \unk
.endm

.macro queue_new_repel
RunNewCommand NEW_COMMAND_QUEUE_NEW_REPEL, 0x800C
.endm

// Dummy
.macro scrcmd_209,slot,unk
.hword 209
.byte \slot
.hword \unk
.endm

.macro buffer_map_sec_name,slot,location
.hword 210
.byte \slot
.hword \location
.endm

.macro scrcmd_211,arg0,arg1
.hword 211
.hword \arg0
.hword \arg1
.endm

// For when you talk to a trainer
.macro get_trainer_num,arg0
.hword 212
.hword \arg0
.endm

.macro trainer_battle,trainer,arg1,arg2,arg3
.hword 213
.hword \trainer
.hword \arg1
.byte \arg2
.byte \arg3
.endm

.macro trainer_message,trainer,param
.hword 214
.hword \trainer
.hword \param
.endm

.macro get_trainer_msg_params,intro,after,_1poke
.hword 215
.hword \intro
.hword \after
.hword \_1poke
.endm

.macro get_rematch_msg_params,arg0,arg1,arg2
.hword 216
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro trainer_is_double_battle,arg0
.hword 217
.hword \arg0
.endm

.macro encounter_music,arg0
.hword 218
.hword \arg0
.endm

.macro white_out
.hword 219
.endm

// Is this loss?
.macro check_battle_won,var
.hword 220
.hword \var
.endm

.macro static_wild_won_or_caught,arg0,arg1
.hword 221
.hword \arg0
.byte \arg1
.endm

.macro party_check_for_double,arg0
.hword 222
.hword \arg0
.endm

.macro scrcmd_223
.hword 223
.endm

.macro scrcmd_224
.hword 224
.endm

.macro goto_if_trainer_defeated,arg0
.hword 225
.word \arg0-.-4
.endm

.macro scrcmd_226,arg0,arg1,arg2,arg3
.hword 226
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro scrcmd_227,arg0,arg1,arg2,arg3
.hword 227
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro scrcmd_228,arg0
.hword 228
.hword \arg0
.endm

.macro scrcmd_229,arg0
.hword 229
.hword \arg0
.endm

.macro scrcmd_230
.hword 230
.endm

.macro scrcmd_231
.hword 231
.endm

.macro scrcmd_232,arg0
.hword 232
.hword \arg0
.endm

.macro scrcmd_233,arg0
.hword 233
.hword \arg0
.endm

.macro scrcmd_234,arg0,arg1,arg2,arg3
.hword 234
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro scrcmd_235,arg0
.hword 235
.hword \arg0
.endm

.macro scrcmd_236,arg0
.hword 236
.hword \arg0
.endm

.macro scrcmd_237
.hword 237
.endm

.macro party_has_pokerus,arg0
.hword 238
.hword \arg0
.endm

.macro mon_get_gender,arg0,arg1
.hword 239
.hword \arg0
.hword \arg1
.endm

.macro set_dynamic_warp,arg0,arg1,arg2,arg3,arg4
.hword 240
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro get_dynamic_warp_floor_no,arg0
.hword 241
.hword \arg0
.endm

.macro elevator_cur_floor_box,arg0,arg1,arg2,arg3
.hword 242
.byte \arg0
.byte \arg1
.hword \arg2
.hword \arg3
.endm

.macro count_johto_dex_seen,var
.hword 243
.hword \var
.endm

.macro count_johto_dex_owned,var
.hword 244
.hword \var
.endm

.macro count_national_dex_seen,var
.hword 245
.hword \var
.endm

.macro count_national_dex_owned,var
.hword 246
.hword \var
.endm

// Dummy
.macro scrcmd_247
.hword 247
.endm

// The actual Pokedex evaluation.
// national: 0 = Johto dex, 1 = National dex
// msg: Variable to return the message ID
// fanfare: Variable to return the fanfare ID
.macro get_dex_eval_result,national,msg,fanfare
.hword 248
.byte \national
.hword \msg
.hword \fanfare
.endm

.macro rocket_trap_battle,arg0,arg1
.hword 249
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_250,arg0,arg1
.hword 250
.hword \arg0
.hword \arg1
.endm

.macro wild_battle_no_buttons,arg0,arg1
.hword 250
.hword \arg0
.hword \arg1
.endm

.macro catching_tutorial
.hword 251
.endm

.macro scrcmd_252
.hword 252
.endm

.macro get_save_file_state,arg0
.hword 253
.hword \arg0
.endm

.macro save_game_normal,arg0
.hword 254
.hword \arg0
.endm

.macro scrcmd_255,arg0,arg1
.hword 255
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_256,arg0
.hword 256
.hword \arg0
.endm

.macro scrcmd_257,arg0
.hword 257
.hword \arg0
.endm

.macro scrcmd_258
.hword 258
.endm

.macro scrcmd_259,arg0
.hword 259
.hword \arg0
.endm

.macro scrcmd_260,arg0
.hword 260
.hword \arg0
.endm

.macro scrcmd_261,arg0
.hword 261
.hword \arg0
.endm

.macro scrcmd_262
.hword 262
.endm

.macro scrcmd_263
.hword 263
.endm

.macro scrcmd_264,arg0
.hword 264
.hword \arg0
.endm

.macro scrcmd_265
.hword 265
.endm

.macro scrcmd_266
.hword 266
.endm

.macro scrcmd_267,arg0,arg1
.hword 267
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_268,arg0
.hword 268
.hword \arg0
.endm

.macro scrcmd_269,arg0
.hword 269
.hword \arg0
.endm

.macro scrcmd_270
.hword 270
.endm

.macro scrcmd_271,arg0,arg1
.hword 271
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_272,arg0
.hword 272
.hword \arg0
.endm

.macro scrcmd_273,arg0
.hword 273
.hword \arg0
.endm

.macro scrcmd_274,arg0,arg1
.hword 274
.hword \arg0
.hword \arg1
.endm

.macro mart_buy,arg0
.hword 275
.hword \arg0
.endm

.macro special_mart_buy,arg0
.hword 276
.hword \arg0
.endm

.macro decoration_mart,arg0
.hword 277
.hword \arg0
.endm

.macro seal_mart,arg0
.hword 278
.hword \arg0
.endm

// Used with poison faint,but due to overworld
// poison mechanics in gen 4,this is
// never reached.
.macro overworld_white_out
.hword 279
.endm

.macro set_spawn,arg0
.hword 280
.hword \arg0
.endm

// Are you a boy? Or are you a girl?
.macro get_player_gender,var
.hword 281
.hword \var
.endm

.macro heal_party
.hword 282
.endm

.macro scrcmd_283
.hword 283
.endm

.macro scrcmd_284
.hword 284
.endm

.macro scrcmd_285,arg0
.hword 285
.hword \arg0
.endm

.macro scrcmd_286
.hword 286
.endm

.macro buffer_union_room_avatar_choices
.hword 287
.endm

.macro union_room_avatar_idx_to_trainer_class,arg0,arg1
.hword 288
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_289,arg0
.hword 289
.hword \arg0
.endm

.macro check_pokedex,arg0
.hword 290
.hword \arg0
.endm

.macro give_pokedex
.hword 291
.endm

.macro check_running_shoes,arg0
.hword 292
.hword \arg0
.endm

.macro give_running_shoes
.hword 293
.endm

// badges
.equ BADGE_ZEPHYR, 0
.equ BADGE_HIVE, 1
.equ BADGE_PLAIN, 2
.equ BADGE_FOG, 3
.equ BADGE_STORM, 4
.equ BADGE_MINERAL, 5
.equ BADGE_GLACIER, 6
.equ BADGE_RISING, 7

.equ BADGE_BOULDER, 8
.equ BADGE_CASCADE, 9
.equ BADGE_THUNDER, 10
.equ BADGE_RAINBOW, 11
.equ BADGE_SOUL, 12
.equ BADGE_MARSH, 13
.equ BADGE_VOLCANO, 14
.equ BADGE_EARTH, 15

.macro check_badge,badge,var
.hword 294
.hword \badge
.hword \var
.endm

.macro give_badge,badge
.hword 295
.hword \badge
.endm

// This command is never used because it is
// assumed that you cannot get the 8th badge
// before the other 7,or the 16th before the
// other 15. This assumption does not account
// for tweaking.
.macro count_badges,var
.hword 296
.hword \var
.endm

.macro scrcmd_297,arg0
.hword 297
.hword \arg0
.endm

.macro scrcmd_298
.hword 298
.endm

.macro check_escort_mode,arg0
.hword 299
.hword \arg0
.endm

.macro set_escort_mode
.hword 300
.endm

.macro clear_escort_mode
.hword 301
.endm

.macro scrcmd_302,arg0
.hword 302
.hword \arg0
.endm

.macro scrcmd_303
.hword 303
.endm

.macro scrcmd_304
.hword 304
.endm

.macro scrcmd_305,arg0
.hword 305
.hword \arg0
.endm

.macro scrcmd_306
.hword 306
.endm

.macro scrcmd_307,arg0,arg1,arg2,arg3,arg4
.hword 307
.hword \arg0 // matrix x
.hword \arg1 // matrix y
.hword \arg2 // map x
.hword \arg3 // map y
.byte \arg4     // door id
.endm

.macro prepare_door_animation,arg0,arg1,arg2,arg3,arg4
.hword 307
.hword \arg0 // matrix x
.hword \arg1 // matrix y
.hword \arg2 // map x
.hword \arg3 // map y
.byte \arg4     // door id
.endm

.macro scrcmd_308,arg0
.hword 308
.byte \arg0     // door id
.endm

.macro wait_door_animation,arg0
.hword 308
.byte \arg0     // door id
.endm

.macro scrcmd_309,arg0
.hword 309
.byte \arg0     // door id
.endm

.macro free_door_animation,arg0
.hword 309
.byte \arg0     // door id
.endm

.macro scrcmd_310,arg0
.hword 310
.byte \arg0     // door id
.endm

.macro open_door_animation,arg0
.hword 310
.byte \arg0     // door id
.endm

.macro scrcmd_311,arg0
.hword 311
.byte \arg0     // door id
.endm

.macro close_door_animation,arg0
.hword 311
.byte \arg0     // door id
.endm

.macro buffer_day_care_mon_nicks
.hword 312
.endm

.macro get_day_care_state,arg0
.hword 313
.hword \arg0
.endm

.macro ecruteak_gym_init
.hword 314
.endm

.macro scrcmd_315
.hword 315
.endm

.macro scrcmd_316
.hword 316
.endm

.macro scrcmd_317,arg0
.hword 317
.byte \arg0
.endm

.macro cianwood_gym_init
.hword 318
.endm

.macro cianwood_gym_turn_winch,arg0
.hword 319
.hword \arg0
.endm

.macro vermilion_gym_init
.hword 320
.endm

.macro vermilion_gym_lock_action,arg0,arg1
.hword 321
.byte \arg0
.byte \arg1
.endm

.macro vermilion_gym_can_check,arg0,arg1
.hword 322
.byte \arg0
.hword \arg1
.endm

.macro resample_vermilion_gym_cans
.hword 323
.endm

.macro violet_gym_init
.hword 324
.endm

.macro violet_gym_elevator
.hword 325
.endm

.macro azalea_gym_init
.hword 326
.endm

.macro azalea_gym_spinarak,arg0
.hword 327
.byte \arg0
.endm

.macro azalea_gym_switch,arg0
.hword 328
.byte \arg0
.endm

.macro blackthorn_gym_init
.hword 329
.endm

.macro fuchsia_gym_init
.hword 330
.endm

.macro viridian_gym_init
.hword 331
.endm

.macro get_party_count,var
.hword 332
.hword \var
.endm

.macro scrcmd_333,arg0
.hword 333
.byte \arg0
.endm

.macro scrcmd_334,arg0
.hword 334
.hword \arg0
.endm

.macro scrcmd_335,arg0,arg1
.hword 335
.hword \arg0
.hword \arg1
.endm

.macro buffer_berry_name,slot,item,quantity
.hword 336
.byte \slot
.hword \item
.hword \quantity
.endm

.macro buffer_nature_name,slot,nature
.hword 337
.byte \slot
.hword \nature
.endm

.macro move_person,arg0,arg1,arg2
.hword 338
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro move_person_facing,person,x,z,y,facing
.hword 339
.hword \person
.hword \x
.hword \z
.hword \y
.hword \facing
.endm

.macro set_object_movement_type,arg0,arg1
.hword 340
.hword \arg0
.hword \arg1
.endm

.macro set_object_facing,arg0,arg1
.hword 341
.hword \arg0
.hword \arg1
.endm

.macro move_warp,arg0,arg1,arg2
.hword 342
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro move_bg_event,arg0,arg1,arg2
.hword 343
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_344,arg0,arg1
.hword 344
.hword \arg0
.hword \arg1
.endm

.macro add_waiting_icon
.hword 345
.endm

.macro remove_waiting_icon
.hword 346
.endm

.macro scrcmd_347,arg0
.hword 347
.hword \arg0
.endm

.macro wait_button_or_delay,arg0
.hword 348
.hword \arg0
.endm

.macro party_select_ui
.hword 349
.endm

.macro scrcmd_350
.hword 350
.endm

.macro get_party_selection,arg0
.hword 351
.hword \arg0
.endm

.macro pokemon_summary_screen,arg0,arg1,arg2
.hword 352
.byte \arg0
.hword \arg1
.hword \arg2
.endm

.macro get_move_selection,arg0,arg1
.hword 353
.byte \arg0
.hword \arg1
.endm

.macro get_partymon_species,slot,var
.hword 354
.hword \slot
.hword \var
.endm

.macro partymon_is_mine,slot,var
.hword 355
.hword \slot
.hword \var
.endm

.macro party_count_not_egg,var
.hword 356
.hword \var
.endm

// Count Pokemon that are not fainted.
// If except is set, exclude that slot
// from the tally. Use 6 to disable.
.macro count_alive_mons,var,except
.hword 357
.hword \var
.hword \except
.endm

.macro count_alive_mons_and_pc,arg0
.hword 358
.hword \arg0
.endm

.macro party_count_egg,arg0
.hword 359
.hword \arg0
.endm

.macro submoneyvar,var
.hword 360
.hword \var
.endm

.macro retrieve_day_care_mon,arg0,arg1
.hword 361
.hword \arg0
.hword \arg1
.endm

.macro give_loan_mon,arg0,arg1,arg2
.hword 362
.byte \arg0
.byte \arg1
.hword \arg2
.endm

.macro check_return_loan_mon,arg0,arg1,arg2
.hword 363
.byte \arg0
.hword \arg1
.hword \arg2
.endm

.macro return_loan_mon,arg0
.hword 364
.hword \arg0
.endm

.macro reset_day_care_egg
.hword 365
.endm

.macro give_day_care_egg
.hword 366
.endm

.macro buffer_day_care_withdraw_cost,arg0,arg1
.hword 367
.hword \arg0
.hword \arg1
.endm

.macro hasenoughmoneyvar,var,amount
.hword 368
.hword \var
.hword \amount
.endm

.macro egg_hatch_anim
.hword 369
.endm

.macro scrcmd_370,arg0
.hword 370
.byte \arg0
.endm

.macro buffer_day_care_mon_growth,arg0,arg1
.hword 371
.hword \arg0
.hword \arg1
.endm

.macro get_tail_day_care_mon_species_and_nick,arg0
.hword 372
.hword \arg0
.endm

.macro put_mon_in_day_care,arg0
.hword 373
.hword \arg0
.endm

.macro scrcmd_374,arg0
.hword 374
.hword \arg0
.endm

.macro make_object_visible,arg0
.hword 375
.hword \arg0
.endm

.macro scrcmd_376
.hword 376
.endm

.macro scrcmd_377,arg0
.hword 377
.hword \arg0
.endm

.macro view_rankings,record,retvar
.hword 378
.hword \record
.hword \retvar
.endm

.macro scrcmd_379,arg0
.hword 379
.hword \arg0
.endm

.macro random,arg0,arg1
.hword 380
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_381,arg0,arg1
.hword 381
.hword \arg0
.hword \arg1
.endm

.macro mon_get_friendship,arg0,arg1
.hword 382
.hword \arg0
.hword \arg1
.endm

.macro mon_add_friendship,arg0,arg1
.hword 383
.hword \arg0
.hword \arg1
.endm

.macro mon_subtract_friendship,arg0,arg1
.hword 384
.hword \arg0
.hword \arg1
.endm

.macro buffer_day_care_mon_stats,arg0,arg1,arg2,arg3
.hword 385
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro get_player_facing,arg0
.hword 386
.hword \arg0
.endm

.macro get_day_care_compatibility,arg0
.hword 387
.hword \arg0
.endm

.macro check_day_care_egg,arg0
.hword 388
.hword \arg0
.endm

.macro player_has_species,arg0,arg1
.hword 389
.hword \arg0
.hword \arg1
.endm

.macro size_record_compare,arg0,arg1
.hword 390
.hword \arg0
.hword \arg1
.endm

.macro size_record_update,arg0
.hword 391
.hword \arg0
.endm

.macro buffer_mon_size,arg0,arg1,arg2
.hword 392
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro buffer_record_size,arg0,arg1,arg2
.hword 393
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_394,arg0
.hword 394
.hword \arg0
.endm

.macro scrcmd_395,arg0
.hword 395
.hword \arg0
.endm

.macro count_mon_moves,arg0,arg1
.hword 396
.hword \arg0
.hword \arg1
.endm

.macro mon_forget_move,arg0,arg1
.hword 397
.hword \arg0
.hword \arg1
.endm

.macro mon_get_move,arg0,arg1,arg2
.hword 398
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro buffer_party_mon_move_name,slot,party_pos,move_pos
.hword 399
.byte \slot
.hword \party_pos
.hword \move_pos
.endm

// action = 0: Deactivate strength
// action = 1: Activate strength
// action = 2: Check whether strength is active
.macro strength_flag_action,action,var
.hword 400
.byte \action
.if \action == 2
.hword \var
.endif
.endm

.macro flash_action,action,var
.hword 401
.byte \action
.if \action == 2
.hword \var
.endif
.endm

.macro defog_action,action,var
.hword 402
.byte \action
.if \action == 2
.hword \var
.endif
.endm

.macro scrcmd_403,arg0,arg1
.hword 403
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_404,arg0,arg1,arg2
.hword 404
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_405,arg0,arg1,arg2
.hword 405
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_406,arg0
.hword 406
.hword \arg0
.endm

.macro scrcmd_407,arg0,arg1
.hword 407
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_408,arg0,arg1
.hword 408
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_409
.hword 409
.endm

.macro scrcmd_410,arg0,arg1
.hword 410
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_411
.hword 411
.endm

.macro scrcmd_412,arg0,arg1,arg2
.hword 412
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_413,arg0,arg1,arg2,arg3
.hword 413
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro scrcmd_414,arg0
.hword 414
.hword \arg0
.endm

.macro scrcmd_415,arg0
.hword 415
.hword \arg0
.endm

.macro scrcmd_416,arg0,arg1,arg2
.hword 416
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_417,arg0,arg1
.hword 417
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_418,arg0,arg1
.hword 418
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_419,arg0
.hword 419
.hword \arg0
.endm

.macro scrcmd_420,arg0
.hword 420
.hword \arg0
.endm

.macro scrcmd_421,arg0,arg1,arg2
.hword 421
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_422,arg0,arg1,arg2,arg3
.hword 422
.hword \arg0
.hword \arg1
.hword \arg2
.byte \arg3
.endm

.macro check_johto_dex_complete,arg0
.hword 423
.hword \arg0
.endm

.macro check_national_dex_complete,arg0
.hword 424
.hword \arg0
.endm

.macro show_certificate,arg0
.hword 425
.hword \arg0
.endm

.macro kenya_check,arg0,arg1,arg2
.hword 426
.hword \arg0
.hword \arg1
.byte \arg2
.endm

.macro scrcmd_427,arg0
.hword 427
.hword \arg0
.endm

.macro mon_give_mail,arg0
.hword 428
.hword \arg0
.endm

.macro countfossils,arg0
.hword 429
.hword \arg0
.endm

.macro set_phone_call,arg0,arg1,arg2
.hword 430
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro run_phone_call
.hword 431
.endm

.macro getfossilpokemon,arg0,arg1
.hword 432
.hword \arg0
.hword \arg1
.endm

.macro getfossilminimumamount,arg0,arg1,arg2
.hword 433
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro party_count_mons_at_or_below_level,arg0,arg1
.hword 434
.hword \arg0
.hword \arg1
.endm

.macro survive_poisoning,arg0,arg1
.hword 435
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_436
.hword 436
.endm

.macro debugwatch,arg0
.hword 437
.hword \arg0
.endm

.macro get_std_msg_naix,arg0,arg1
.hword 438
.hword \arg0
.hword \arg1
.endm

.macro non_npc_msg_extern,arg0,arg1
.hword 439
.hword \arg0
.hword \arg1
.endm

.macro msgbox_extern,arg0,arg1
.hword 440
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_441,arg0,arg1,arg2,arg3
.hword 441
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro scrcmd_442,arg0,arg1,arg2,arg3
.hword 442
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro scrcmd_443,arg0
.hword 443
.byte \arg0
.endm

.macro scrcmd_444,arg0,arg1,arg2,arg3
.hword 444
.byte \arg0
.hword \arg1
.hword \arg2
.byte \arg3
.endm

.macro scrcmd_445,arg0
.hword 445
.hword \arg0
.endm

.macro scrcmd_446,arg0
.hword 446
.hword \arg0
.endm

.macro safari_zone_action,arg0,arg1
.hword 447
.byte \arg0
.byte \arg1
.endm

.macro scrcmd_448,arg0,arg1,arg2,arg3,arg4
.hword 448
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro scrcmd_449
.hword 449
.endm

.macro scrcmd_450
.hword 450
.endm

.macro scrcmd_451,arg0
.hword 451
.hword \arg0
.endm

.macro scrcmd_452,arg0,arg1
.hword 452
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_453
.hword 453
.endm

.macro scrcmd_454
.hword 454
.endm

.macro scrcmd_455
.hword 455
.endm

.macro scrcmd_456,arg0
.hword 456
.byte \arg0
.endm

.macro mon_get_nature,arg0,arg1
.hword 457
.hword \arg0
.hword \arg1
.endm

.macro get_party_slot_with_nature,arg0,arg1
.hword 458
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_459
.hword 459
.endm

.macro load_phone_dat,arg0,arg1
.hword 460
.hword \arg0
.hword \arg1
.endm

.macro get_phone_contact_msg_ids,arg0,arg1,arg2
.hword 461
.byte \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_462,arg0
.hword 462
.hword \arg0
.endm

.macro enable_mass_outbreaks
.hword 463
.endm

.macro create_roamer,arg0
.hword 464
.byte \arg0
.endm

.macro scrcmd_465,arg0,arg1,arg2
.hword 465
.hword \arg0
.if \arg0 <= 3
	.hword \arg1
	.hword \arg2
.else
	.if \arg0 != 6
		.hword \arg1
	.endif
.endif
.endm

.macro scrcmd_466,arg0,arg1
.hword 466
.hword \arg0
.hword \arg1
.endm

.macro move_relearner_init,arg0
.hword 467
.hword \arg0
.endm

.macro move_tutor_init,arg0,arg1
.hword 468
.hword \arg0
.hword \arg1
.endm

.macro move_relearner_get_result,arg0
.hword 469
.hword \arg0
.endm

.macro load_npc_trade,arg0
.hword 470
.byte \arg0
.endm

.macro get_offered_species,arg0
.hword 471
.hword \arg0
.endm

.macro npc_trade_get_req_species,arg0
.hword 472
.hword \arg0
.endm

.macro npc_trade_exec,arg0
.hword 473
.hword \arg0
.endm

.macro npc_trade_end
.hword 474
.endm

.macro scrcmd_475
.hword 475
.endm

.macro scrcmd_476
.hword 476
.endm

.macro nat_dex_flag_action,arg0,arg1
.hword 477
.byte \arg0
.hword \arg1
.endm

.macro mon_get_ribbon_count,arg0,arg1
.hword 478
.hword \arg0
.hword \arg1
.endm

.macro party_get_ribbon_count,arg0
.hword 479
.hword \arg0
.endm

.macro mon_has_ribbon,arg0,arg1,arg2
.hword 480
.hword \arg0
.hword \arg1
.hword \arg2
.endm


.equ RIBBON_HOENN_CHAMPION, 0
.equ RIBBON_HOENN_COOL, 1
.equ RIBBON_HOENN_COOL_SUPER, 2
.equ RIBBON_HOENN_COOL_HYPER, 3
.equ RIBBON_HOENN_COOL_MASTER, 4
.equ RIBBON_HOENN_BEAUTY, 5
.equ RIBBON_HOENN_BEAUTY_SUPER, 6
.equ RIBBON_HOENN_BEAUTY_HYPER, 7
.equ RIBBON_HOENN_BEAUTY_MASTER, 8
.equ RIBBON_HOENN_CUTE, 9
.equ RIBBON_HOENN_CUTE_SUPER, 10
.equ RIBBON_HOENN_CUTE_HYPER, 11
.equ RIBBON_HOENN_CUTE_MASTER, 12
.equ RIBBON_HOENN_SMART, 13
.equ RIBBON_HOENN_SMART_SUPER, 14
.equ RIBBON_HOENN_SMART_HYPER, 15
.equ RIBBON_HOENN_SMART_MASTER, 16
.equ RIBBON_HOENN_TOUGH, 17
.equ RIBBON_HOENN_TOUGH_SUPER, 18
.equ RIBBON_HOENN_TOUGH_HYPER, 19
.equ RIBBON_HOENN_TOUGH_MASTER, 20
.equ RIBBON_HOENN_WINNING, 21
.equ RIBBON_HOENN_VICTORY, 22
.equ RIBBON_HOENN_ARTIST, 23
.equ RIBBON_HOENN_EFFORT, 24
.equ RIBBON_HOENN_MARINE, 25
.equ RIBBON_HOENN_LAND, 26
.equ RIBBON_HOENN_SKY, 27
.equ RIBBON_HOENN_COUNTRY, 28
.equ RIBBON_HOENN_NATIONAL, 29
.equ RIBBON_HOENN_EARTH, 30
.equ RIBBON_HOENN_WORLD, 31
.equ RIBBON_SINNOH_CHAMP, 32
.equ RIBBON_COOL, 33
.equ RIBBON_COOL_GREAT, 34
.equ RIBBON_COOL_ULTRA, 35
.equ RIBBON_COOL_MASTER, 36
.equ RIBBON_BEAUTY, 37
.equ RIBBON_BEAUTY_GREAT, 38
.equ RIBBON_BEAUTY_ULTRA, 39
.equ RIBBON_BEAUTY_MASTER, 40
.equ RIBBON_CUTE, 41
.equ RIBBON_CUTE_GREAT, 42
.equ RIBBON_CUTE_ULTRA, 43
.equ RIBBON_CUTE_MASTER, 44
.equ RIBBON_SMART, 45
.equ RIBBON_SMART_GREAT, 46
.equ RIBBON_SMART_ULTRA, 47
.equ RIBBON_SMART_MASTER, 48
.equ RIBBON_TOUGH, 49
.equ RIBBON_TOUGH_GREAT, 50
.equ RIBBON_TOUGH_ULTRA, 51
.equ RIBBON_TOUGH_MASTER, 52
.equ RIBBON_ABILITY, 53
.equ RIBBON_GREAT_ABILITY, 54
.equ RIBBON_DOUBLE_ABILITY, 55
.equ RIBBON_MULTI_ABILITY, 56
.equ RIBBON_PAIR_ABILITY, 57
.equ RIBBON_WORLD_ABILITY, 58
.equ RIBBON_ALERT, 59
.equ RIBBON_SHOCK, 60
.equ RIBBON_DOWNCAST, 61
.equ RIBBON_CARELESS, 62
.equ RIBBON_RELAX, 63
.equ RIBBON_SNOOZE, 64
.equ RIBBON_SMILE, 65
.equ RIBBON_GORGEOUS, 66
.equ RIBBON_ROYAL, 67
.equ RIBBON_GORGEOUS_ROYAL, 68
.equ RIBBON_FOOTPRINT, 69
.equ RIBBON_RECORD, 70
.equ RIBBON_HISTORY, 71
.equ RIBBON_LEGEND, 72
.equ RIBBON_RED, 73
.equ RIBBON_GREEN, 74
.equ RIBBON_BLUE, 75
.equ RIBBON_FESTIVAL, 76
.equ RIBBON_CARNIVAL, 77
.equ RIBBON_CLASSIC, 78
.equ RIBBON_PREMIER, 79
.equ RIBBON_MAX, 80

.macro give_ribbon,arg0,arg1
.hword 481
.hword \arg0
.hword \arg1
.endm

.macro buffer_ribbon_name,arg0,arg1
.hword 482
.byte \arg0
.hword \arg1
.endm

.macro get_ev_total,arg0,arg1
.hword 483
.hword \arg0
.hword \arg1
.endm

.macro get_weekday,arg0
.hword 484
.hword \arg0
.endm

.macro scrcmd_485,arg0
.hword 485
.hword \arg0
.endm

.macro dummy_486
.hword 486
.endm

.macro pokecen_anim,arg0
.hword 487
.hword \arg0
.endm

.macro elevator_anim,direction,distance
.hword 488
.hword \direction
.hword \distance
.endm

.macro mystery_gift,arg0,arg1,arg2
.hword 489
.hword \arg0
.if \arg0 >= 1 && \arg0 <= 3
    .hword \arg1
.else
    .if \arg0 == 5 || \arg0 == 6
        .hword \arg1
        .hword \arg2
    .endif
.endif
.endm

.macro nop_var_490,arg0
.hword 490
.hword \arg0
.endm

.macro scrcmd_491,arg0
.hword 491
.hword \arg0
.endm

.macro scrcmd_492,arg0,arg1,arg2
.hword 492
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro prompt_easy_chat,arg0,arg1,arg2
.hword 493
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_494,arg0,arg1
.hword 494
.hword \arg0
.hword \arg1
.endm

.macro get_game_version,arg0
.hword 495
.hword \arg0
.endm

.macro get_party_lead,arg0
.hword 496
.hword \arg0
.endm

.macro get_mon_types,arg0,arg1,arg2
.hword 497
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro primo_password_check_1,arg0,arg1,arg2,arg3,arg4
.hword 498
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro primo_password_check_2,arg0,arg1,arg2,arg3,arg4
.hword 499
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro scrcmd_500,arg0
.hword 500
.byte \arg0
.endm

.macro scrcmd_501,arg0
.hword 501
.byte \arg0
.endm

.macro scrcmd_502,arg0
.hword 502
.byte \arg0
.endm

.macro loto_id_get,arg0
.hword 503
.hword \arg0
.endm

.macro loto_id_search,arg0,arg1,arg2,arg3
.hword 504
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro loto_id_set
.hword 505
.endm

.macro bufferboxmonnick,arg0,arg1
.hword 506
.byte \arg0
.hword \arg1
.endm

.macro count_pc_empty_space,arg0
.hword 507
.hword \arg0
.endm

.macro palpark_action,arg0
.hword 508
.hword \arg0
.endm

.macro scrcmd_509,arg0
.hword 509
.hword \arg0
.endm

.macro scrcmd_510
.hword 510
.endm

.macro pal_park_score_get,arg0,arg1
.hword 511
.hword \arg0
.hword \arg1
.endm

.macro player_movement_saving_set
.hword 512
.endm

.macro player_movement_saving_clear
.hword 513
.endm

// Animate placing the balls on the machine
// for the Hall of Fame
.macro hall_of_fame_anim,num
.hword 514
.hword \num
.endm

.macro add_special_game_stat,arg0
.hword 515
.hword \arg0
.endm

.macro buffer_fashion_name,arg0,arg1
.hword 516
.byte \arg0
.hword \arg1
.endm

.macro scrcmd_517,arg0,arg1
.hword 517
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_518,arg0
.hword 518
.hword \arg0
.endm

.macro scrcmd_519,arg0
.hword 519
.hword \arg0
.endm

.macro scrcmd_520
.hword 520
.endm

.macro scrcmd_521
.hword 521
.endm

.macro scrcmd_522,arg0
.hword 522
.hword \arg0
.endm

.macro scrcmd_523,arg0,arg1,arg2,arg3,arg4
.hword 523
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro scrcmd_524,arg0,arg1,arg2
.hword 524
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_525,arg0
.hword 525
.hword \arg0
.endm

.macro scrcmd_526,arg0
.hword 526
.hword \arg0
.endm

.macro scrcmd_527,arg0
.hword 527
.hword \arg0
.endm

.macro scrcmd_528,arg0
.hword 528
.hword \arg0
.endm

.macro get_party_lead_alive,arg0
.hword 529
.hword \arg0
.endm

.macro scrcmd_530,arg0,arg1
.hword 530
.hword \arg0
.byte \arg1
.endm

.macro buffer_background_name,arg0,arg1
.hword 531
.byte \arg0
.hword \arg1
.endm

.macro check_coins_immediate,arg0,arg1
.hword 532
.hword \arg0
.word \arg1
.endm

.macro checkgivecoins,arg0,arg1
.hword 533
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_534,arg0
.hword 534
.hword \arg0
.endm

.macro mon_get_level,arg0,arg1
.hword 535
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_536,arg0,arg1
.hword 536
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_537
.hword 537
.endm

.macro scrcmd_538,arg0,arg1
.hword 538
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_539,arg0
.hword 539
.hword \arg0
.endm

.macro scrcmd_540,arg0
.hword 540
.hword \arg0
.endm

.macro buffer_int_ex,arg0,arg1,arg2,arg3
.hword 541
.byte \arg0
.hword \arg1
.byte \arg2
.byte \arg3
.endm

.macro mon_get_contest_value,arg0,arg1,arg2
.hword 542
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_543,arg0
.hword 543
.hword \arg0
.endm

.macro scrcmd_544,arg0,arg1
.hword 544
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_545,arg0
.hword 545
.hword \arg0
.endm

.macro scrcmd_546,arg0,arg1
.hword 546
.byte \arg0
.hword \arg1
.endm

.macro scrcmd_547,arg0
.hword 547
.hword \arg0
.endm

.macro scrcmd_548
.hword 548
.endm

.macro scrcmd_549,arg0
.hword 549
.hword \arg0
.endm

.macro scrcmd_550,arg0
.hword 550
.hword \arg0
.endm

.macro scrcmd_551,arg0
.hword 551
.hword \arg0
.endm

.macro scrcmd_552,arg0,arg1
.hword 552
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_553,arg0,arg1
.hword 553
.byte \arg0
.hword \arg1
.endm

.macro scrcmd_554,arg0
.hword 554
.hword \arg0
.endm

.macro scrcmd_555,arg0
.hword 555
.hword \arg0
.endm

.macro scrcmd_556,arg0
.hword 556
.hword \arg0
.endm

.macro check_battle_points,arg0,arg1
.hword 557
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_558,arg0,arg1
.hword 558
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_559,arg0,arg1
.hword 559
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_560,arg0,arg1
.hword 560
.hword \arg0
.hword \arg1
.endm

.macro screen_shake,arg0,arg1,arg2,arg3
.hword 561
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro multi_battle,arg0,arg1,arg2,arg3
.hword 562
.hword \arg0
.hword \arg1
.hword \arg2
.byte \arg3
.endm

.macro scrcmd_563,arg0,arg1,arg2
.hword 563
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_564,arg0
.hword 564
.hword \arg0
.endm

.macro scrcmd_565,arg0
.hword 565
.hword \arg0
.endm

.macro scrcmd_566
.hword 566
.endm

.macro getdpplprizeitemidandcost,arg0,arg1,arg2
.hword 567
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_568,arg0,arg1
.hword 568
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_569,arg0
.hword 569
.hword \arg0
.endm

.macro check_coins_var,arg0,arg1
.hword 570
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_571,arg0,arg1,arg2,arg3,arg4
.hword 571
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro get_unique_seals_quantity,arg0
.hword 572
.hword \arg0
.endm

.macro scrcmd_573
.hword 573
.endm

.macro scrcmd_574,arg0,arg1
.hword 574
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_575,arg0,arg1
.hword 575
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_576,arg0
.hword 576
.hword \arg0
.endm

.macro scrcmd_577
.hword 577
.endm

.macro scrcmd_578
.hword 578
.endm

.macro scrcmd_579
.hword 579
.endm

.macro buffer_seal_name,arg0,arg1
.hword 580
.byte \arg0
.hword \arg1
.endm

.macro lock_last_talked
.hword 581
.endm

.macro scrcmd_582,arg0,arg1,arg2
.hword 582
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_583,arg0,arg1
.hword 583
.hword \arg0
.byte \arg1
.endm

.macro party_legal_check,arg0
.hword 584
.hword \arg0
.endm

.macro scrcmd_585
.hword 585
.endm

.macro scrcmd_586,arg0
.hword 586
.hword \arg0
.endm

.macro scrcmd_587
.hword 587
.endm

.macro lati_caught_check,arg0
.hword 588
.hword \arg0
.endm

.macro wild_battle,species,level,shiny
.hword 589
.hword \species
.hword \level
.byte \shiny
.endm

.macro get_trcard_stars,arg0
.hword 590
.hword \arg0
.endm

.macro scrcmd_591
.hword 591
.endm

.macro scrcmd_592,arg0
.hword 592
.hword \arg0
.endm

.macro show_save_stats
.hword 593
.endm

.macro hide_save_stats
.hword 594
.endm

.macro scrcmd_595,arg0
.hword 595
.byte \arg0
.endm

.macro scrcmd_596,arg0
.hword 596
.hword \arg0
.endm

.macro scrcmd_597
.hword 597
.endm

.macro scrcmd_598,arg0
.hword 598
.hword \arg0
.endm

.macro scrcmd_599
.hword 599
.endm

.macro scrcmd_600
.hword 600
.endm

.macro send_follower_to_ball
.hword 600
.endm

.macro follow_poke_face_player
.hword 601
.endm

.macro toggle_following_pokemon_movement,arg0
.hword 602
.hword \arg0
.endm

.macro wait_following_pokemon_movement
.hword 603
.endm

.macro following_pokemon_movement,arg0
.hword 604
.hword \arg0
.endm

.macro scrcmd_605,arg0,arg1
.hword 605
.byte \arg0
.byte \arg1
.endm

.macro scrcmd_606
.hword 606
.endm

.macro reset_follower_with_ball
.hword 606
.endm

.macro scrcmd_607
.hword 607
.endm

.macro reset_follower_without_ball
.hword 607
.endm

.macro scrcmd_608
.hword 608
.endm

.macro scrcmd_609
.hword 609
.endm

.macro scrcmd_610,arg0
.hword 610
.hword \arg0
.endm

.macro pokeathlon,arg0,arg1,arg2,arg3,arg4,arg5,arg6
.hword 611
.byte \arg0
.byte \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.hword \arg5
.hword \arg6
.endm

.macro get_npc_trade_unused_flag,arg0
.hword 612
.hword \arg0
.endm

.macro get_phone_contact_random_gift_berry,arg0
.hword 613
.hword \arg0
.endm

.macro get_phone_contact_gift_item,arg0
.hword 614
.hword \arg0
.endm

.macro cameron_photo,arg0
.hword 615
.hword \arg0
.endm

.macro count_saved_photos,arg0
.hword 616
.hword \arg0
.endm

.macro open_photo_album
.hword 617
.endm

.macro photo_album_is_full,arg0
.hword 618
.hword \arg0
.endm

.macro rocket_costume_flag_check,arg0
.hword 619
.hword \arg0
.endm

.macro rocket_costume_flag_action,arg0
.hword 620
.byte \arg0
.endm

.macro place_starter_balls_in_elms_lab
.hword 621
.endm

.macro scrcmd_622,arg0,arg1
.hword 622
.hword \arg0
.hword \arg1
.endm

.macro anim_apricorn_tree,arg0
.hword 623
.hword \arg0
.endm

.macro apricorn_tree_get_apricorn,arg0
.hword 624
.hword \arg0
.endm

.macro give_apricorn_from_tree,arg0,arg1,arg2
.hword 625
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro buffer_apricorn_name,arg0,arg1
.hword 626
.byte \arg0
.hword \arg1
.endm

.macro scrcmd_627,arg0
.hword 627
.byte \arg0
.endm

.macro scrcmd_628,arg0,arg1
.hword 628
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_629
.hword 629
.endm

.macro scrcmd_630,arg0
.hword 630
.hword \arg0
.endm

.macro scrcmd_631,arg0,arg1,arg2
.hword 631
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro count_party_mons_of_species,arg0,arg1
.hword 632
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_633,arg0,arg1,arg2
.hword 633
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_634,arg0,arg1
.hword 634
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_635,arg0,arg1
.hword 635
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_636,arg0
.hword 636
.hword \arg0
.endm

.macro scrcmd_637,arg0,arg1,arg2
.hword 637
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_638,arg0,arg1,arg2
.hword 638
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_639,arg0,arg1,arg2
.hword 639
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_640,arg0
.hword 640
.hword \arg0
.endm

.macro save_wipe_extra_chunks
.hword 641
.endm

.macro scrcmd_642,arg0
.hword 642
.hword \arg0
.endm

.macro scrcmd_643,arg0,arg1,arg2
.hword 643
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_644,arg0,arg1,arg2
.hword 644
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_645,arg0,arg1,arg2
.hword 645
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_646,arg0
.hword 646
.hword \arg0
.endm

.macro get_party_slot_with_species,arg0,arg1
.hword 647
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_648,arg0,arg1,arg2,arg3,arg4
.hword 648
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro scratch_off_card
.hword 649
.endm

.macro scratch_off_card_end
.hword 650
.endm

.macro get_scratch_off_prize,arg0,arg1,arg2
.hword 651
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_652,arg0,arg1,arg2
.hword 652
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro move_tutor_choose_move,mon_slot,tutor_no,arg2,arg3
.hword 653
.hword \mon_slot
.hword \tutor_no
.hword \arg2
.hword \arg3
.endm

.macro tutor_move_teach_in_slot,party_slot,move_slot,move
.hword 654
.hword \party_slot
.hword \move_slot
.hword \move
.endm

.macro tutor_move_get_price,arg0,arg1
.hword 655
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_656,arg0,arg1
.hword 656
.hword \arg0
.hword \arg1
.endm

.macro stat_judge,mon_slot,iv_sum,best_stat,best_iv
.hword 657
.hword \mon_slot
.hword \iv_sum
.hword \best_stat
.hword \best_iv
.endm

.macro buffer_stat_name,arg0,arg1
.hword 658
.byte \arg0
.hword \arg1
.endm

.macro set_mon_forme,arg0,arg1
.hword 659
.hword \arg0
.hword \arg1
.endm

.macro buffer_trainer_name,arg0,arg1
.hword 660
.byte \arg0
.hword \arg1
.endm

.macro scrcmd_661,arg0,arg1,arg2,arg3
.hword 661
.byte \arg0
.word \arg1
.byte \arg2
.byte \arg3
.endm

.macro scrcmd_662,arg0,arg1,arg2
.hword 662
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_663,arg0
.hword 663
.hword \arg0
.endm

.macro scrcmd_664
.hword 664
.endm

.macro scrcmd_665,arg0
.hword 665
.hword \arg0
.endm

.macro scrcmd_666,arg0
.hword 666
.hword \arg0
.endm

.macro scrcmd_667,arg0
.hword 667
.hword \arg0
.endm

.macro buffer_type_name,arg0,arg1
.hword 668
.byte \arg0
.hword \arg1
.endm

.macro getitemquantity,arg0,arg1
.hword 669
.hword \arg0
.hword \arg1
.endm

.macro get_hidden_power_type,arg0,arg1
.hword 670
.hword \arg0
.hword \arg1
.endm

.macro set_favorite_mon
.hword 671
.endm

.macro scrcmd_672,arg0,arg1,arg2
.hword 672
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro get_owned_rotom_formes,arg0,arg1,arg2,arg3,arg4
.hword 673
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro count_transformed_rotoms_in_party,arg0,arg1
.hword 674
.hword \arg0
.hword \arg1
.endm

.macro update_rotom_forme,arg0,arg1,arg2,arg3
.hword 675
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro get_party_mon_forme,arg0,arg1
.hword 676
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_677,arg0,arg1
.hword 677
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_678,arg0,arg1
.hword 678
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_679
.hword 679
.endm

.macro add_special_game_stat_2,arg0
.hword 680
.hword \arg0
.endm

.macro scrcmd_681,arg0
.hword 681
.hword \arg0
.endm

.macro scrcmd_682,arg0
.hword 682
.hword \arg0
.endm

.macro get_static_encounter_outcome,arg0
.hword 683
.hword \arg0
.endm

.macro scrcmd_684,arg0
.hword 684
.hword \arg0
.endm

.macro get_player_xyz,arg0,arg1,arg2
.hword 685
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_686,arg0,arg1
.hword 686
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_687,arg0
.hword 687
.hword \arg0
.endm

.macro get_party_slot_with_fateful_encounter,arg0,arg1
.hword 688
.hword \arg0
.hword \arg1
.endm

// Attempt to remove all Griseous Orbs and reset Pokemon
// to formes present in Diamond and Pearl, to avoid
// problems communicating with those games.
.macro comm_sanitize_party,var_result
.hword 689
.hword \var_result
.endm

.macro day_care_sanitize_mon,arg0,arg1
.hword 690
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_691,arg0
.hword 691
.hword \arg0
.endm

.macro buffer_battle_hall_streak,arg0,arg1,arg2,arg3,arg4,arg5
.hword 692
.byte \arg0
.byte \arg1
.byte \arg2
.byte \arg3
.hword \arg4
.hword \arg5
.endm

.macro battle_hall_count_used_species,arg0
.hword 693
.hword \arg0
.endm

.macro battle_hall_get_total_streak,arg0
.hword 694
.hword \arg0
.endm

.macro scrcmd_695,arg0
.hword 695
.hword \arg0
.endm

.macro scrcmd_696,arg0
.hword 696
.hword \arg0
.endm

.macro scrcmd_697,arg0
.hword 697
.hword \arg0
.endm

.macro follower_poke_is_event_trigger,arg0,arg1,arg2
.hword 698
.byte \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_699
.hword 699
.endm

.macro scrcmd_700
.hword 700
.endm

.macro mon_has_item,arg0,arg1
.hword 701
.hword \arg0
.hword \arg1
.endm

.macro battle_tower_setup_multi_battle
.hword 702
.endm

.macro set_player_volume,arg0
.hword 703
.hword \arg0
.endm

.macro scrcmd_704,arg0,arg1
.hword 704
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_705,arg0,arg1
.hword 705
.hword \arg0
.word \arg1
.endm

.macro scrcmd_706,arg0
.hword 706
.hword \arg0
.endm

.macro check_mon_seen,arg0,arg1
.hword 707
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_708,arg0
.hword 708
.hword \arg0
.endm

.macro scrcmd_709
.hword 709
.endm

.macro scrcmd_710
.hword 710
.endm

.macro follow_poke_interact
.hword 711
.endm

.macro scrcmd_712,arg0
.hword 712
.byte \arg0
.endm

.macro alph_puzzle,arg0
.hword 713
.byte \arg0
.endm

.macro open_alph_hidden_room,arg0
.hword 714
.byte \arg0
.endm

.macro update_day_care_mon_objects
.hword 715
.endm

.macro scrcmd_716
.hword 716
.endm

.macro scrcmd_717,arg0
.hword 717
.hword \arg0
.endm

.macro scrcmd_718,arg0,arg1
.hword 718
.byte \arg0
.hword \arg1
.endm

.macro scrcmd_719,arg0,arg1
.hword 719
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_720,arg0
.hword 720
.hword \arg0
.endm

.macro scrcmd_721,arg0
.hword 721
.hword \arg0
.endm

.macro scrcmd_722,arg0,arg1,arg2,arg3,arg4
.hword 722
.byte \arg0
.byte \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro scrcmd_723,arg0,arg1,arg2,arg3,arg4
.hword 723
.byte \arg0
.byte \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro scrcmd_724,arg0,arg1
.hword 724
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_725,arg0,arg1
.hword 725
.byte \arg0
.hword \arg1
.endm

.macro scrcmd_726
.hword 726
.endm

.macro get_follow_poke_party_index,arg0
.hword 727
.hword \arg0
.endm

.macro scrcmd_728,arg0,arg1
.hword 728
.byte \arg0
.byte \arg1
.endm

.macro scrcmd_729,arg0
.hword 729
.hword \arg0
.endm

.macro scrcmd_730,arg0
.hword 730
.hword \arg0
.endm

.macro scrcmd_731
.hword 731
.endm

.macro scrcmd_732,arg0
.hword 732
.byte \arg0
.endm

.macro scrcmd_733,arg0,arg1
.hword 733
.byte \arg0
.hword \arg1
.endm

.macro scrcmd_734,arg0
.hword 734
.byte \arg0
.endm

.macro scrcmd_735,arg0
.hword 735
.hword \arg0
.endm

.macro clear_kurt_apricorn
.hword 736
.endm

.macro scrcmd_737,arg0
.hword 737
.hword \arg0
.endm

.macro get_total_apricorn_count,arg0
.hword 738
.hword \arg0
.endm

.macro scrcmd_739
.hword 739
.endm

.macro scrcmd_740,arg0,arg1
.hword 740
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_741,arg0,arg1,arg2,arg3
.hword 741
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro scrcmd_742,arg0,arg1,arg2
.hword 742
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro scrcmd_743,arg0
.hword 743
.hword \arg0
.endm

.macro create_friendship_room_statues
.hword 744
.endm

.macro buffer_pokeathlon_course_name,arg0,arg1
.hword 745
.byte \arg0
.hword \arg1
.endm

.macro touchscreen_menu_hide
.hword 746
.endm

.macro touchscreen_menu_show
.hword 747
.endm

.macro getmenuchoice,arg0
.hword 748
.hword \arg0
.endm

.macro menu_init_std_gmm,arg0,arg1,arg2,arg3,arg4
.hword 749
.byte \arg0
.byte \arg1
.byte \arg2
.byte \arg3
.hword \arg4
.endm

.macro menu_init,arg0,arg1,arg2,arg3,arg4
.hword 750
.byte \arg0
.byte \arg1
.byte \arg2
.byte \arg3
.hword \arg4
.endm

.macro menu_item_add,arg0,arg1,arg2
.hword 751
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro menu_exec
.hword 752
.endm

.macro scrcmd_rock_smash_item_check,arg0,arg1,arg2
.hword 753
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro try_headbutt_encounter,arg0
.hword 754
.hword \arg0
.endm

.macro legend_cutscene_clear_bell_anim_begin
.hword 755
.endm

.macro legend_cutscene_clear_bell_anim_end
.hword 756
.endm

.macro legend_cutscene_clear_bell_rise_from_bag
.hword 757
.endm

.macro legend_cutscene_clear_bell_shimmer,arg0
.hword 758
.hword \arg0
.endm

.macro legend_cutscene_lugia_eye_glimmer_effect
.hword 759
.endm

.macro scrcmd_760
.hword 760
.endm

.macro legend_cutscene_move_camera_to,arg0
.hword 761
.hword \arg0
.endm

.macro legend_cutscene_pan_camera_to,arg0
.hword 762
.hword \arg0
.endm

.macro legend_cutscene_wait_camera_pan
.hword 763
.endm

.macro legend_cutscene_bird_final_approach
.hword 764
.endm

.macro legend_cutscene_waves_or_leaves_effect_begin
.hword 765
.endm

.macro legend_cutscene_waves_or_leaves_effect_end
.hword 766
.endm

.macro legend_cutscene_lugia_arrives_effect_begin
.hword 767
.endm

.macro legend_cutscene_lugia_arrives_effect_end
.hword 768
.endm

.macro legend_cutscene_lugia_arrives_effect_camera_pan
.hword 769
.endm

.macro check_seen_all_letter_unown,arg0
.hword 770
.hword \arg0
.endm

.macro scrcmd_771
.hword 771
.endm

.macro scrcmd_772
.hword 772
.endm

.macro cinematic,arg0
.hword 773
.hword \arg0
.endm

.macro show_legendary_wing,arg0
.hword 774
.hword \arg0
.endm

.macro scrcmd_775,arg0,arg1
.hword 775
.hword \arg0
.hword \arg1
.endm

.macro give_togepi_egg
.hword 776
.endm

.macro scrcmd_777,arg0,arg1
.hword 777
.hword \arg0
.hword \arg1
.endm

.macro give_spiky_ear_pichu
.hword 778
.endm

.macro radio_music_is_playing,arg0,arg1
.hword 779
.hword \arg0
.hword \arg1
.endm

.macro casino_game,arg0,arg1
.hword 780
.byte \arg0
.byte \arg1
.endm

.macro kenya_check_party_or_mailbox,arg0
.hword 781
.hword \arg0
.endm

.macro mart_sell
.hword 782
.endm

.macro set_follow_poke_inhibit_state,arg0
.hword 783
.byte \arg0
.endm

.macro script_overlay_cmd,arg0,arg1
.hword 784
.byte \arg0
.byte \arg1
.endm

.macro bug_contest_action,arg0,arg1
.hword 785
.byte \arg0
.hword \arg1
.endm

.macro buffer_bug_contest_winner,arg0
.hword 786
.byte \arg0
.endm

.macro judge_bug_contest,arg0,arg1,arg2
.hword 787
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro buffer_bug_contest_mon_nick,arg0,arg1
.hword 788
.byte \arg0
.hword \arg1
.endm

.macro scrcmd_789,arg0
.hword 789
.byte \arg0
.endm

.macro is_npc_bug_contestant_registered,arg0,arg1
.hword 790
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_791,arg0,arg1
.hword 791
.byte \arg0
.hword \arg1
.endm

.macro scrcmd_792
.hword 792
.endm

.macro bank_transaction,arg0,arg1
.hword 793
.hword \arg0
.hword \arg1
.endm

.macro check_bank_balance,arg0,arg1
.hword 794
.hword \arg0
.word \arg1
.endm

.macro scrcmd_795,arg0,arg1
.hword 795
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_796
.hword 796
.endm

.macro scrcmd_797
.hword 797
.endm

.macro buffer_ruleset_name,arg0
.hword 798
.hword \arg0
.endm

.macro scrcmd_799,arg0
.hword 799
.hword \arg0
.endm

.macro scrcmd_800,arg0
.hword 800
.hword \arg0
.endm

.macro scrcmd_801,arg0
.hword 801
.hword \arg0
.endm

.macro scrcmd_802
.hword 802
.endm

.macro scrcmd_803,arg0,arg1
.hword 803
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_804,arg0
.hword 804
.byte \arg0
.endm

.macro scrcmd_805
.hword 805
.endm

.macro scrcmd_806
.hword 806
.endm

.macro set_trainer_house_sprite,arg0,arg1
.hword 807
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_808,arg0
.hword 808
.hword \arg0
.endm

.macro show_trainer_house_intro_message,arg0
.hword 809
.hword \arg0
.endm

.macro scrcmd_810
.hword 810
.endm

.macro scrcmd_811,arg0,arg1
.hword 811
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_812
.hword 812
.endm

.macro mom_gift_check,arg0
.hword 813
.hword \arg0
.endm

.macro scrcmd_814
.hword 814
.endm

.macro scrcmd_815,arg0
.hword 815
.hword \arg0
.endm

.macro unown_circle
.hword 816
.endm

.macro scrcmd_817,arg0
.hword 817
.byte \arg0
.endm

.macro mystry_stage_gymmick_init
.hword 818
.endm

.macro scrcmd_819
.hword 819
.endm

.macro scrcmd_820,arg0
.hword 820
.byte \arg0
.endm

.macro get_buenas_password,arg0,arg1
.hword 821
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_822
.hword 822
.endm

.macro scrcmd_823,arg0
.hword 823
.hword \arg0
.endm

.macro scrcmd_824,arg0
.hword 824
.hword \arg0
.endm

.macro get_shiny_leaf_count,arg0,arg1
.hword 825
.hword \arg0
.hword \arg1
.endm

.macro try_give_shiny_leaf_crown,arg0
.hword 826
.hword \arg0
.endm

.macro get_partymon_forme,arg0,arg1
.hword 827
.hword \arg0
.hword \arg1
.endm

.macro mon_add_contest_value,arg0,arg1,arg2
.hword 828
.hword \arg0
.byte \arg1
.hword \arg2
.endm

.macro scrcmd_829,arg0
.hword 829
.hword \arg0
.endm

.macro scrcmd_830,arg0
.hword 830
.hword \arg0
.endm

.macro scrcmd_831,arg0
.hword 831
.hword \arg0
.endm

.macro scrcmd_832,arg0
.hword 832
.hword \arg0
.endm

.macro scrcmd_833,arg0
.hword 833
.hword \arg0
.endm

.macro scrcmd_834,arg0
.hword 834
.hword \arg0
.endm

.macro scrcmd_835,arg0
.hword 835
.hword \arg0
.endm

.macro scrcmd_836,arg0
.hword 836
.hword \arg0
.endm

.macro scrcmd_837,arg0
.hword 837
.hword \arg0
.endm

.macro bank_or_wallet_is_full,arg0,arg1
.hword 838
.hword \arg0
.hword \arg1
.endm

.macro sys_set_sleep_flag,arg0
.hword 839
.hword \arg0
.endm

.macro scrcmd_840,arg0,arg1
.hword 840
.hword \arg0
.hword \arg1
.endm

.macro scrcmd_841,arg0
.hword 841
.byte \arg0
.endm

.macro scrcmd_842,arg0
.hword 842
.byte \arg0
.endm

.macro buffer_item_name_indef,arg0,arg1
.hword 843
.byte \arg0
.hword \arg1
.endm

.macro buffer_item_name_plural,arg0,arg1
.hword 844
.byte \arg0
.hword \arg1
.endm

.macro buffer_party_mon_species_name_indef,arg0,arg1
.hword 845
.byte \arg0
.hword \arg1
.endm

.macro buffer_species_name_indef,arg0,arg1,arg2,arg3
.hword 846
.byte \arg0
.hword \arg1
.hword \arg2
.byte \arg3
.endm

.macro buffer_dppt_friend_starter_species_name_indef,arg0
.hword 847
.byte \arg0
.endm

.macro buffer_fashion_name_indef,arg0,arg1
.hword 848
.byte \arg0
.hword \arg1
.endm

.macro buffer_trainer_class_name_indef,arg0,arg1
.hword 849
.byte \arg0
.hword \arg1
.endm

.macro buffer_seal_name_plural,arg0,arg1
.hword 850
.byte \arg0
.hword \arg1
.endm

.macro capitalize,arg0
.hword 851
.byte \arg0
.endm

.macro buffer_dept_store_floor_no,arg0,arg1
.hword 852
.byte \arg0
.byte \arg1
.endm

// Script headers

.macro map_script,kind,script
.byte \kind
.word \script
.endm

.macro map_script_2,var,val,script
.hword \var, \val, \script
.endm

// Convenience macros

// Generic compare macro which attempts to deduce argument types based on their values
// Any values between 0x4000 to 0x40FF and 0x8000 to 0x8015 are considered event variable identifiers
.macro compare,var,arg
    .if ((\arg >= VARS_START && \arg <= VARS_END) || (\arg >= SPECIAL_VARS_START && \arg <= SPECIAL_VARS_END))
        compare_var_to_var \var,\arg
    .else
        compare_var_to_value \var,\arg
    .endif
.endm

.macro goto_if_unset,flag,dest
checkflag \flag
goto_if 0,\dest
.endm

.macro goto_if_set,flag,dest
checkflag \flag
goto_if 1,\dest
.endm

.macro goto_if_lt,dest // LESS THAN
goto_if 0,\dest
.endm

.macro goto_if_eq,dest // EQUAL
goto_if 1,\dest
.endm

.macro goto_if_gt,dest // GREATER THAN
goto_if 2,\dest
.endm

.macro goto_if_le,dest // LESS THAN OR EQUAL
goto_if 3,\dest
.endm

.macro goto_if_ge,dest // GREATER THAN OR EQUAL
goto_if 4,\dest
.endm

.macro goto_if_ne,dest // NOT EQUAL
goto_if 5,\dest
.endm

.macro call_if_unset,flag,dest
checkflag \flag
call_if 0,\dest
.endm

.macro call_if_set,flag,dest
checkflag \flag
call_if 1,\dest
.endm

.macro call_if_lt,dest // LESS THAN
call_if 0,\dest
.endm

.macro call_if_eq,dest // EQUAL
call_if 1,\dest
.endm

.macro call_if_gt,dest // GREATER THAN
call_if 2,\dest
.endm

.macro call_if_le,dest // LESS THAN OR EQUAL
call_if 3,\dest
.endm

.macro call_if_ge,dest // GREATER THAN OR EQUAL
call_if 4,\dest
.endm

.macro call_if_ne,dest // NOT EQUAL
call_if 5,\dest
.endm

.macro goto_if_defeated,trainer,dest
checktrainerflag \trainer
goto_if 1,\dest
.endm

.macro goto_if_not_defeated,trainer,dest
checktrainerflag \trainer
goto_if 0,\dest
.endm

.macro call_if_defeated,trainer,dest
checktrainerflag \trainer
call_if 1,\dest
.endm

.macro call_if_not_defeated,trainer,dest
checktrainerflag \trainer
call_if 0,\dest
.endm

.macro item_vars,item,quantity
.if \item < 0x4000
setvar VAR_SPECIAL_x8004,\item
.else
copyvar VAR_SPECIAL_x8004,\item
.endif
.if \quantity < 0x4000
setvar VAR_SPECIAL_x8005,\quantity
.else
copyvar VAR_SPECIAL_x8005,\quantity
.endif
.endm

.macro goto_if_no_item_space,item,quantity,target
item_vars \item,\quantity
hasspaceforitem VAR_SPECIAL_x8004,VAR_SPECIAL_x8005,VAR_SPECIAL_RESULT
compare VAR_SPECIAL_RESULT,0
goto_if_eq \target
.endm

.macro goto_if_no_item_space_2,item,quantity,target
item_vars \item,\quantity
hasspaceforitem VAR_SPECIAL_x8004,VAR_SPECIAL_x8005,VAR_SPECIAL_RESULT
compare VAR_SPECIAL_RESULT,1
goto_if_ne \target
.endm

.macro giveitem_no_check,item,quantity
item_vars \item,\quantity
callstd std_give_item_verbose // std_give_item_verbose
.endm

.macro takeitem_no_check,item,quantity
item_vars \item,\quantity
takeitem VAR_SPECIAL_x8004,VAR_SPECIAL_x8005,VAR_SPECIAL_RESULT
.endm

.macro switch,var
copyvar VAR_SPECIAL_x8008,\var
.endm

.macro case,value,target
compare VAR_SPECIAL_x8008,\value
goto_if_eq \target
.endm

.macro phone_call,who,b,c
setvar VAR_SPECIAL_x8004,\who
setvar VAR_SPECIAL_x8005,\b
setvar VAR_SPECIAL_x8006,\c
callstd std_phone_call
.endm

.macro simple_npc_msg,msgid
play_se 1500 // SEQ_SE_DP_SELECT
lockall
faceplayer
npc_msg \msgid
wait_button_or_walk_away
closemsg
releaseall
.endm

.macro move_follower_to_player_coords
get_player_coords 0x8000, 0x8001
get_player_facing VAR_SPECIAL_RESULT
move_person_facing obj_partner_poke, 0x8000, 0, 0x8001, VAR_SPECIAL_RESULT
.endm

// Movement commands

.macro step,type,length
.hword \type
.hword \length
.endm

.macro step_end
.hword 254,0
.endm


// level script define macro

.equ TRIGGER_VARIABLE_VALUE, 1
.equ TRIGGER_MAP_CHANGE, 2
.equ TRIGGER_SCREEN_RESET, 3
.equ TRIGGER_LOAD_GAME, 4


// unused: .word \script+1 is absolute, so it resolves against linker.ld's base, not 0
.macro level_script,type,script
.byte \type
.if (\type == TRIGGER_VARIABLE_VALUE)
    .word \script-.-4
.else
    .word \script+1
.endif
.endm

.macro level_script_end
.byte 0
.endm


// conditional for use with TRIGGER_VARIABLE_VALUE

.macro var_level_script_run,var,value,script
.hword \var
.hword \value
.hword \script+1
.endm

.macro var_level_script_end
.hword 0
.endm



// DSPRE Syntax macros



// Dummy command
.macro Nop
.hword 0
.endm

//// Dummy command
//.macro Dummy
//.halfword 1
//.endmacro
//
//// Exits script execution and returns control to the player
//.macro End
//.halfword 2
//.endmacro

// Pauses for some frames,tracks the timer in a script variable
.macro WaitTime,frames,var
.hword 3
.hword \frames
.hword \var
.endm

// Loads 8-bit value into the specified script register
.macro RegValueSet,reg,val
.hword 4
.byte \reg
.byte \val
.endm

// Loads 32-bit value into the specified script register
.macro RegDataSet,reg,val
.hword 5
.byte \reg
.word \val
.endm

// Reads byte at a specific memory address into a script register
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro RegAdrsSet,reg,addr
.hword 6
.byte \reg
.word \addr
.endm

// Writes byte to a specific memory address from a script register
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro AdrsValueSet,addr,reg
.hword 7
.word \addr
.byte \reg
.endm

// Writes byte literal to a specific memory address
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro AdrsRegSet,addr,val
.hword 8
.word \addr
.byte \val
.endm

// Copies a byte between script registers
.macro RegRegSet,to,from
.hword 9
.byte \to
.byte \from
.endm

// Copies a byte between two memory addresses
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro AdrsAdrsSet,to,from
.hword 10
.word \to
.word \from
.endm

// Compares values between script reg and script reg
.macro CompareRegs,a,b
.hword 11
.byte \a
.byte \b
.endm

// Compares script reg to byte literal
.macro CompareRegValue,reg,val
.hword 12
.byte \reg
.byte \val
.endm

// Compares script reg to memory address
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro CompareRegAdrs,reg,addr
.hword 13
.byte \reg
.word \addr
.endm

// Compares memory address to script reg
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro CompareAdrsReg,addr,reg
.hword 14
.word \addr
.byte \reg
.endm

// Compares memory address to byte literal
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro CompareAdrsValue,addr,val
.hword 15
.word \addr
.byte \val
.endm

// Compares bytes at two memory addresses
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro CompareAdrsAdrs,a,b
.hword 16
.word \a
.word \b
.endm

// Compares variable to 16-bit literal
.macro CompareVarValue,var,val
.hword 17
.hword \var
.hword \val
.endm

// Compares two variables
.macro CompareVars,a,b
.hword 18
.hword \a
.hword \b
.endm

// Creates a new script context to run the indicated script asynchronously
.macro ParallelCommonScript,id
.hword 19
.hword \id
.endm

// Creates a new script context to run the indicated script and wait
.macro CommonScript,id
.hword 20
.hword \id
.endm

// Yield to parent context
.macro LocalScript
.hword 21
.endm

// Absolute branch to offset in script
.macro Jump,dest
.hword 22
.word \dest-.-4
.endm

// Branch to offset in script if interacting with a specific object
.macro JumpIfObjID,object,dest
.hword 23
.byte \object
.word \dest-.-4
.endm

// Branch to offset in script if interacting with a specific bg event
.macro JumpIfBgID,bg,dest
.hword 24
.byte \bg
.word \dest-.-4
.endm

// Branch to offset in script if facing a specific direction
.macro JumpIfPlayerDir,dir,dest
.hword 25
.byte \dir
.word \dest-.-4
.endm

// Call script as a subroutine
//.macro Call,sub
//.halfword 26
//.word sub-.-4
//.endmacro
//
//// Return from subroutine
//.macro Return
//.halfword 27
//.endmacro

// Conditional branch to offset in script
.macro JumpIf,condition,dest
.hword 28
.byte \condition
.word \dest-.-4
.endm

// Conditional call subroutine
.macro CallIf,condition,sub
.hword 29
.byte \condition
.word \sub-.-4
.endm

//// Set event flag
//.macro SetFlag,flag
//.halfword 30
//.halfword flag
//.endmacro
//
//// Clear event flag
//.macro ClearFlag,flag
//.halfword 31
//.halfword flag
//.endmacro
//
//// Check event flag, store result on context
//.macro CheckFlag,flag
//.halfword 32
//.halfword flag
//.endmacro

// Set event flag referenced in var
.macro SetFlagFromVar,var
.hword 33
.hword \var
.endm

// Clear event flag referenced in var
.macro ClearFlagFromVar,var
.hword 34
.hword \var
.endm

// Check event flag referenced in var, store result in other var
.macro FlagStatusToVar,var_flag,var_dest
.hword 35
.hword \var_flag
.hword \var_dest
.endm

//// Set trainer defeated flag
//.macro SetTrainerFlag,var_or_trno
//.halfword 36
//.halfword var_or_trno
//.endmacro
//
//// Clear trainer defeated flag
//.macro ClearTrainerFlag,var_or_trno
//.halfword 37
//.halfword var_or_trno
//.endmacro
//
//// Check trainer defeated flag,store result on context
//.macro CheckTrainerFlag,var_or_trno
//.halfword 38
//.halfword var_or_trno
//.endmacro

// Increment var value by value
.macro IncrementVar,var,var_or_addend
.hword 39
.hword \var
.hword \var_or_addend
.endm

// Decrement var value by value
.macro DecrementVar,var,var_or_addend
.hword 40
.hword \var
.hword \var_or_addend
.endm

//// Set var to short literal
//.macro SetVar,var,val
//.halfword 41
//.halfword var
//.halfword val
//.endmacro

// Set var from other var
.macro SetVarFromVariable,dst,src
.hword 42
.hword \dst
.hword \src
.endm

// Set var from other var or short literal
.macro SetVarFromFlexible,dst,src
.hword 43
.hword \dst
.hword \src
.endm

// Print non_npc_msg in field window from current map message bank
.macro MessageAll,msg_id
.hword 44
.byte \msg_id
.endm

// NPC dialogue window
.macro Message,msg_id
.hword 45
.byte \msg_id
.endm

// Not sure what to call this but it
// is also a message printer
.macro MessageFlex,msg_id
.hword 46
.hword \msg_id
.endm

.macro MessageNoSkip,arg0
.hword 47
.hword \arg0
.endm

.macro CMD_048,arg0
.hword 48
.byte \arg0
.endm

// Waits for A or B button
.macro WaitAB
.hword 49
.endm

// Waits for A,B,or dpad. On pressing dpad,does a turn frame.
.macro WaitButton
.hword 50
.endm

// Waits for A,B,or dpad. No turn frame.
.macro WaitABPad
.hword 51
.endm

.macro OpenMessage
.hword 52
.endm

.macro CloseMessage
.hword 53
.endm

// Like closemsg but does not clear the graphics.
.macro FreezeMessage
.hword 54
.endm

.macro SetIconBoard,message,arg1,arrow,arg3
.hword 55
.byte \message
.byte \arg1
.hword \arrow
.hword \arg3
.endm

.macro SetTextBoard,message,arg1
.hword 56
.byte \message
.hword \arg1
.endm

.macro ShowBoard,arg0
.hword 57
.byte \arg0
.endm

.macro WaitBoard
.hword 58
.endm

.macro BoardMessage,arg0,arg1
.hword 59
.byte \arg0
.hword \arg1
.endm

.macro CloseBoard,arg0
.hword 60
.hword \arg0
.endm

.macro Menu
.hword 61
.endm

.macro CMD_062,arg0,arg1,arg2,arg3,arg4,arg5
.hword 62
.byte \arg0
.byte \arg1
.byte \arg2
.byte \arg3
.byte \arg4
.byte \arg5
.endm

.macro YesNoBox,arg0
.hword 63
.hword \arg0
.endm

.macro MultiStandardText,arg0,arg1,arg2,arg3,arg4
.hword 64
.byte \arg0
.byte \arg1
.byte \arg2
.byte \arg3
.hword \arg4
.endm

.macro MultiLocalText,arg0,arg1,arg2,arg3,arg4
.hword 65
.byte \arg0
.byte \arg1
.byte \arg2
.byte \arg3
.hword \arg4
.endm

.macro AddMultiOption,arg0,arg1
.hword 66
.byte \arg0
.byte \arg1
.endm

.macro ShowMulti
.hword 67
.endm

// uses text bank 191 to choose what to do.
.macro ListStandardText,x,y,cursor,cancel,selection
.hword 68
.byte \x
.byte \y
.byte \cursor
.byte \cancel
.hword \selection
.endm

// uses the current loaded text bank on the map to choose what to do.
.macro ListLocalText,x,y,cursor,cancel,selection
.hword 69
.byte \x
.byte \y
.byte \cursor
.byte \cancel
.hword \selection
.endm

.macro AddListOption,optionmsg,highlightmsg,listslot
.hword 70
.hword \optionmsg
.hword \highlightmsg
.hword \listslot
.endm

.macro ShowList
.hword 71
.endm

.macro MultiColumn,arg0
.hword 72
.byte \arg0
.endm

.macro PlayFanfare,arg0
.hword 73
.hword \arg0
.endm

.macro StopFanfare,arg0
.hword 74
.hword \arg0
.endm

.macro WaitFanfare,arg0
.hword 75
.hword \arg0
.endm

.macro PlayCry,arg0,arg1
.hword 76
.hword \arg0
.hword \arg1
.endm

.macro WaitCry
.hword 77
.endm

.macro PlaySound,fanfare
.hword 78
.hword \fanfare
.endm

.macro WaitSound
.hword 79
.endm

.macro PlayMusic,bgm
.hword 80
.hword \bgm
.endm

.macro StopMusic,arg0
.hword 81
.hword \arg0
.endm

.macro PlayDefaultMusic
.hword 82
.endm

.macro SetMusic,arg0
.hword 83
.hword \arg0
.endm

// Fade out the music to the target level
// in the designated number of frames
.macro FadeOutMusic,target,frames
.hword 84
.hword \target
.hword \frames
.endm

.macro FadeInMusic,arg0
.hword 85
.hword \arg0
.endm

.macro SetMusicPauseStatus,arg0,arg1
.hword 86
.byte \arg0
.byte \arg1
.endm

.macro TempMusic,arg0
.hword 87
.hword \arg0
.endm

.macro SetBGMFlag,arg0
.hword 88
.byte \arg0
.endm

.macro CheckChatotCry,arg0
.hword 89
.hword \arg0
.endm

.macro StartChatotCry,arg0
.hword 90
.hword \arg0
.endm

.macro StopChatotCry
.hword 91
.endm

.macro SaveChatotCry
.hword 92
.endm

.macro CMD_093
.hword 93
.endm

.macro Movement,arg0,arg1
.hword 94
.hword \arg0
.word \arg1-.-4
.endm

.macro WaitMovement
.hword 95
.endm

//.macro LockAll
//.halfword 96
//.endmacro
//
//.macro ReleaseAll
//.halfword 97
//.endmacro
//
//.macro Lock,arg0
//.halfword 98
//.halfword arg0
//.endmacro
//
//.macro Release,arg0
//.halfword 99
//.halfword arg0
//.endmacro

.macro AddOW,arg0
.hword 100
.hword \arg0
.endm

.macro RemoveOW,arg0
.hword 101
.hword \arg0
.endm

.macro LockCamera,arg0,arg1
.hword 102
.hword \arg0
.hword \arg1
.endm

.macro ReleaseCamera
.hword 103
.endm

//.macro FacePlayer
//.halfword 104
//.endmacro

.macro GetPlayerPosition,arg0,arg1
.hword 105
.hword \arg0
.hword \arg1
.endm

.macro GetOWPosition,arg0,arg1,arg2
.hword 106
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro SetFollowingOverworld,arg0,arg1,arg2
.hword 107
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro KeepOverworld,arg0,arg1
.hword 108
.hword \arg0
.byte \arg1
.endm

.macro SetOWMovement,arg0,arg1
.hword 109
.hword \arg0
.hword \arg1
.endm

.equ MOVE_0_None, 0
.equ MOVE_1_None, 1
.equ MOVE_2_Looking_In_All_Directions, 2
.equ MOVE_3_Walking_In_All_Directions, 3
.equ MOVE_4_Walking_Up_and_Down, 4
.equ MOVE_5_Walking_Left_and_Right, 5
.equ MOVE_6_Looking_Up_and_Left, 6
.equ MOVE_7_Looking_Up_and_Right, 7
.equ MOVE_8_Looking_Down_and_Left, 8
.equ MOVE_9_Looking_Down_and_Right, 9
.equ MOVE_10_Looking_Up_Down_and_Left, 10
.equ MOVE_11_Looking_Up_Right_and_Down, 11
.equ MOVE_12_Looking_Right_Left_and_Up, 12
.equ MOVE_13_Looking_Right_Left_and_Down, 13
.equ MOVE_14_Facing_Up, 14
.equ MOVE_15_Facing_Down, 15
.equ MOVE_16_Facing_Left, 16
.equ MOVE_17_Facing_Right, 17
.equ MOVE_18_Counterclockwise_Spinning, 18
.equ MOVE_19_Clockwise_Spinning, 19
.equ MOVE_20_Running_Side_To_Side, 20// can be either horizontally or vertically depending on the overworld's movement ranges
.equ MOVE_21_L_Run_Up_and_Right, 21
.equ MOVE_22_Patrols_Then_Stops_CRASH, 22
.equ MOVE_23_Patrols_Then_Stops_CRASH, 23
.equ MOVE_24_L_Run_Up_and_Right, 24
.equ MOVE_25_Patrols_Then_Stops_CRASH, 25
.equ MOVE_26_Patrols_Then_Stops_CRASH, 26
.equ MOVE_27_Patrols_Then_Stops, 27
.equ MOVE_28_L_Run_Right_and_Down, 28
.equ MOVE_29_L_Run_Left_and_Up, 29
.equ MOVE_30_Continuous_Patrolling_CRASH, 30
.equ MOVE_31_Continuous_Patrolling_CRASH, 31
.equ MOVE_32_L_Run_Down_and_Right, 32
.equ MOVE_33_L_Run_Right_and_Up, 33
.equ MOVE_34_Patrols_Then_Stops, 34
.equ MOVE_35_Patrols_Then_Stops, 35
.equ MOVE_36_L_Run_Down_and_Left, 36
.equ MOVE_37_Running_Up_Left_Down_Right, 37
.equ MOVE_38_Running_Down_Right_Up_Left, 38
.equ MOVE_39_Running_Left_Down_Right_Up, 39
.equ MOVE_40_Runing_Right_Up_Left_Down, 40
.equ MOVE_41_Running_Up_Right_Down_Left, 41
.equ MOVE_42_Running_Down_Left_Up_Right, 42
.equ MOVE_43_Running_Left_Up_Right_Down, 43
.equ MOVE_44_Running_Right_Down_Left_Up, 44
.equ MOVE_45_Looking_Up_and_Down, 45
.equ MOVE_46Looking_Right_and_Left, 46
.equ MOVE_47_CRASH, 47
.equ MOVE_48_Follow_Hero, 48
.equ MOVE_49_Spin_Down_Right_and_Up, 49
.equ MOVE_50_Looking_Down, 50
.equ MOVE_51_Hidden_Under_Snow, 51
.equ MOVE_52_Hidden_Under_Snow, 52
.equ MOVE_53_Hidden_Underground, 53
.equ MOVE_54_Hidden_Under_Grass, 54
.equ MOVE_55_Follow_Hero, 55
.equ MOVE_56_Disappears, 56
.equ MOVE_57_Looking_Left, 57
.equ MOVE_58_Looking_Right, 58
.equ MOVE_59_Mimick_Player_Direction, 59
.equ MOVE_60_Mimick_Player_Direction, 60
.equ MOVE_61_Mimick_Player_Direction, 61
.equ MOVE_62_Mimick_Player_Direction, 62
.equ MOVE_63_NOTHING, 63
.equ MOVE_64_NOTHING, 64
.equ MOVE_65_NOTHING, 65
.equ MOVE_66_NOTHING, 66
.equ MOVE_67_Walking_Right_Left_CRASH, 67
.equ MOVE_68_Looking_Right, 68
.equ MOVE_69_NOTHING, 69
.equ MOVE_70_NOTHING, 70
.equ MOVE_71_Looking_Left, 71

.macro GiveMoney,arg0
.hword 110
.word \arg0
.endm

.macro TakeMoney,arg0
.hword 111
.word \arg0
.endm

.macro CompareMoney,arg0,arg1
.hword 112
.hword \arg0
.word \arg1
.endm

.macro ShowMoney,arg0,arg1
.hword 113
.hword \arg0
.hword \arg1
.endm

.macro HideMoney
.hword 114
.endm

.macro UpdateMoney
.hword 115
.endm

.macro ShowSpecialCurrency,arg0,arg1,arg2
.hword 116
.byte \arg0
.hword \arg1
.hword \arg2
.endm

.macro HideSpecialCurrency
.hword 117
.endm

.macro UpdateSpecialCurrency,arg0
.hword 118
.byte \arg0
.endm

.macro CheckCoins,arg0
.hword 119
.hword \arg0
.endm

.macro GiveCoins,arg0
.hword 120
.hword \arg0
.endm

.macro TakeCoins,arg0
.hword 121
.hword \arg0
.endm

.macro GiveAthletePoints,arg0
.hword 122
.hword \arg0
.endm

.macro TakeAthletePoints,arg0
.hword 123
.hword \arg0
.endm

.macro CompareAthletePoints,arg0,arg1
.hword 124
.hword \arg0
.hword \arg1
.endm

//.macro GiveItem,arg0,arg1,arg2
//.halfword 125
//.halfword arg0
//.halfword arg1
//.halfword arg2
//.endmacro
//
//.macro TakeItem,arg0,arg1,arg2
//.halfword 126
//.halfword arg0
//.halfword arg1
//.halfword arg2
//.endmacro

.macro CheckItemSpace,arg0,arg1,arg2
.hword 127
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CheckItem,arg0,arg1,arg2
.hword 128
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CheckItemIsMachine,arg0,arg1
.hword 129
.hword \arg0
.hword \arg1
.endm

//.macro GetItemPocket,arg0,arg1
//.halfword 130
//.halfword arg0
//.halfword arg1
//.endmacro

.macro SetStarter,arg0
.hword 131
.hword \arg0
.endm

.macro GenderMessage,arg0,arg1
.hword 132
.byte \arg0
.byte \arg1
.endm

.macro CheckSeals,arg0,arg1
.hword 133
.hword \arg0
.hword \arg1
.endm

.macro GiveSeals,arg0,arg1
.hword 134
.hword \arg0
.hword \arg1
.endm

.macro GiveRandomSeals,arg0,arg1,arg2
.hword 135
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CheckPokemonForm,arg0,arg1
.hword 136
.hword \arg0
.hword \arg1
.endm

.macro GivePokemon,arg0,arg1,arg2,arg3,arg4,arg5
.hword 137
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.hword \arg5
.endm

.macro GivePokemonEgg,arg0,arg1
.hword 138
.hword \arg0
.hword \arg1
.endm

.macro ReplaceMove,arg0,arg1,arg2
.hword 139
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CheckPokemonHasMove,arg0,arg1,arg2
.hword 140
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CheckMoveInParty,arg0,arg1
.hword 141
.hword \arg0
.hword \arg1
.endm

.macro GetPokeGearRematch,arg0,arg1
.hword 142
.hword \arg0
.hword \arg1
.endm

.macro ChooseRivalName,arg0
.hword 143
.hword \arg0
.endm

.macro GetCounterpartSprite,arg0
.hword 144
.hword \arg0
.endm

.macro UpgradePokegear,arg0
.hword 145
.byte \arg0
.endm

.macro RecordPokegearNumber,arg0
.hword 146
.hword \arg0
.endm

.macro CheckHasPokegearNumber,arg0,arg1
.hword 147
.hword \arg0
.hword \arg1
.endm

.macro CMD_148,arg0,arg1
.hword 148
.byte \arg0
.byte \arg1
.endm

.macro CMD_149,arg0
.hword 149
.byte \arg0
.endm

.macro ReturnScreen
.hword 150
.endm

.macro CMD_151
.hword 151
.endm

.macro Wifi
.hword 152
.endm

.macro DressPokemon,arg0
.hword 153
.hword \arg0
.endm

.macro ContestDressupScreen,arg0,arg1,arg2
.hword 154
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro DressUpArtworkScreen,arg0,arg1
.hword 155
.hword \arg0
.hword \arg1
.endm

.macro SealCapsuleScreen
.hword 156
.endm

.macro WorldMapScreen
.hword 157
.endm

.macro PCBoxScreen,arg0
.hword 158
.byte \arg0
.endm

.macro DrawScreenUnion
.hword 159
.endm

.macro TrainerCaseUnion
.hword 160
.endm

.macro TradeScreenUnion
.hword 161
.endm

.macro RecordMixingUnion
.hword 162
.endm

.macro EndGameScreen,arg0
.hword 163
.hword \arg0
.endm

.macro HallOfFameData
.hword 164
.endm

.macro StoreGTSStatus,arg0,arg1
.hword 165
.hword \arg0
.hword \arg1
.endm

.macro InitWFC,arg0
.hword 166
.hword \arg0
.endm

.macro StarterSelectionScreen
.hword 167
.endm

.macro GetTrainerPathToPlayer,arg0
.hword 168
.hword \arg0
.endm

.macro TrainerStepTowardsPlayer,arg0,arg1
.hword 169
.hword \arg0
.hword \arg1
.endm

.macro GetTrainerEyeType,arg0
.hword 170
.hword \arg0
.endm

// For when one or more trainers see you
.macro GetEyeTrainerNum,arg0,arg1
.hword 171
.hword \arg0
.hword \arg1
.endm

.macro WritePlayerName,arg0
.hword 172
.hword \arg0
.endm

.macro WritePokemonName,arg0,arg1
.hword 173
.hword \arg0
.hword \arg1
.endm

.macro FadeScreen,arg0,speed,direction,color
.hword 174
.hword \arg0
.hword \speed
.hword \direction
.hword \color
.endm

.equ FADE_OUT, 0
.equ FADE_IN, 1
.equ FADE_RGB_BLACK, 0
.equ FADE_RGB_WHITE, 32767// 0x7FFF

.macro WaitFadeScreen
.hword 175
.endm

//.macro Warp,arg0,arg1,arg2,arg3,arg4
//.halfword 176
//.halfword arg0
//.halfword arg1
//.halfword arg2
//.halfword arg3
//.halfword arg4
//.endmacro

.macro RockClimbAnimation,arg0
.hword 177
.hword \arg0
.endm

.macro SurfAnimation,arg0
.hword 178
.hword \arg0
.endm

.macro WaterfallAnimation,arg0
.hword 179
.hword \arg0
.endm

.macro FlyAnimation,arg0,arg1,arg2
.hword 180
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro FlashAnimation
.hword 181
.endm

.macro WhirlpoolAnimation,arg0
.hword 182
.hword \arg0
.endm

.macro CutAnimation,arg0
.hword 183
.hword \arg0
.endm

.macro CheckBike,arg0
.hword 184
.hword \arg0
.endm

.macro RideBike,arg0
.hword 185
.byte \arg0
.endm

.macro CyclingRoad,arg0
.hword 186
.byte \arg0
.endm

// Get the overworld state of the player.
// Used in some places to determine whether
// the player is masquerading as a member
// of Team Rocket.
.macro CheckPlayerForm,var
.hword 187
.hword \var
.endm

.macro SetPlayerForm,arg0
.hword 188
.hword \arg0
.endm

.equ FORM_ROCKET_DISGUISE, 1024

.macro UpdatePlayerForm
.hword 189
.endm

// In the buffer_XXX commands,the maximum
// acceptable value for the slot arg is 7.
// This sets the message format placeholder
// to whatever is buffered.
.macro TextPlayerName,slot
.hword 190
.byte \slot
.endm

// If you use this before naming your rival,
// this will be an empty string.
.macro TextRivalName,slot
.hword 191
.byte \slot
.endm

.macro TextCounterpart,slot
.hword 192
.byte \slot
.endm

// For these commands, the additional argument
// is a flex arg, meaning it can be a literal
// or a variable.
.macro TextPartyPokemon,slot,party_pos
.hword 193
.byte \slot
.hword \party_pos
.endm

.macro TextItem,slot,item
.hword 194
.byte \slot
.hword \item
.endm

.macro TextPocket,slot,pocket
.hword 195
.byte \slot
.hword \pocket
.endm

.macro TextMachineMove,slot,tmhm
.hword 196
.byte \slot
.hword \tmhm
.endm

.macro TextMove,slot,move
.hword 197
.byte \slot
.hword \move
.endm

.macro TextNumber,slot,value
.hword 198
.byte \slot
.hword \value
.endm

.macro TextPokeNickname,slot,party_pos
.hword 199
.byte \slot
.hword \party_pos
.endm

.macro TextTrainerClassName,slot,trcls
.hword 200
.byte \slot
.hword \trcls
.endm

.macro TextPlayerTrainerType,slot
.hword 201
.byte \slot
.endm

// The other two args here are unused
.macro TextPokemon,slot,species,arg2,arg3
.hword 202
.byte \slot
.hword \species
.hword \arg2
.byte \arg3
.endm

.macro TextStarterPokemon,slot
.hword 203
.byte \slot
.endm

// These two commands are leftover from Platinum.
// As such,they are configured to check for the
// Sinnoh starters instead of the Johto starters.
// Since the player will never start with any of
// Turtwig,Chimchar,or Piplup,this command
// will always return TURTWIG,and the following
// CHIMCHAR.
// These commands are unused in HGSS.
.macro TextRivalStarter,slot
.hword 204
.byte \slot
.endm

.macro TextCounterpartStarter,slot
.hword 205
.byte \slot
.endm

// Gets your starter species into the indicated
// variable. Used to calculate which rival
// party to use.
.macro CheckStarter,var
.hword 206
.hword \var
.endm

.macro DummyTextGoods,slot,deco
.hword 207
.byte \slot
.hword \deco
.endm

// Dummy
.macro DummyTextTrap,slot,unk
.hword 208
.byte \slot
.hword \unk
.endm

// 208 has been reused for new script commands
.equ NEW_COMMAND_QUEUE_NEW_REPEL, 0

.macro RunNewCommand,slot,unk
DummyTextTrap \slot, \unk
.endm

.macro QueueNewRepel
RunNewCommand NEW_COMMAND_QUEUE_NEW_REPEL, 0x800C
.endm

// Dummy
.macro DummyTextTreasure,slot,unk
.hword 209
.byte \slot
.hword \unk
.endm

.macro TextMapName,slot,location
.hword 210
.byte \slot
.hword \location
.endm

.macro GetSwarmInfo,arg0,arg1
.hword 211
.hword \arg0
.hword \arg1
.endm

// For when you talk to a trainer
.macro TrainerID,arg0
.hword 212
.hword \arg0
.endm

.macro TrainerBattle,trainer,arg1,arg2,arg3
.hword 213
.hword \trainer
.hword \arg1
.byte \arg2
.byte \arg3
.endm

.macro TrainerMessage,trainer,param
.hword 214
.hword \trainer
.hword \param
.endm

.macro TrainerMsgCheck,intro,after,_1poke
.hword 215
.hword \intro
.hword \after
.hword \_1poke
.endm

.macro TrainerRematchMsgCheck,arg0,arg1,arg2
.hword 216
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro TrainerTypeCheck,arg0
.hword 217
.hword \arg0
.endm

.macro TrainerMusic,arg0
.hword 218
.hword \arg0
.endm

.macro LostBattle
.hword 219
.endm

// Is this loss?
.macro CheckBattleIsLost,var
.hword 220
.hword \var
.endm

.macro CheckDefeatedPokemon,arg0,arg1
.hword 221
.hword \arg0
.byte \arg1
.endm

.macro Check2vs2,arg0
.hword 222
.hword \arg0
.endm

.macro DummyTrainerBattle
.hword 223
.endm

.macro DummyTrainerFlag
.hword 224
.endm

.macro DummyTrainerFlagJump,arg0
.hword 225
.word \arg0-.-4
.endm

.macro CMD_226,arg0,arg1,arg2,arg3
.hword 226
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro CMD_227,arg0,arg1,arg2,arg3
.hword 227
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro CMD_228,arg0
.hword 228
.hword \arg0
.endm

.macro CMD_229,arg0
.hword 229
.hword \arg0
.endm

.macro CMD_230
.hword 230
.endm

.macro CMD_231
.hword 231
.endm

.macro CMD_232,arg0
.hword 232
.hword \arg0
.endm

.macro CMD_233,arg0
.hword 233
.hword \arg0
.endm

.macro CMD_234,arg0,arg1,arg2,arg3
.hword 234
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro CMD_235,arg0
.hword 235
.hword \arg0
.endm

.macro CMD_236,arg0
.hword 236
.hword \arg0
.endm

.macro CMD_237
.hword 237
.endm

.macro CheckPokerus,arg0
.hword 238
.hword \arg0
.endm

.macro GetPokemonGender,arg0,arg1
.hword 239
.hword \arg0
.hword \arg1
.endm

.macro SetElevatorWarp,arg0,arg1,arg2,arg3,arg4
.hword 240
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro GetElevatorFloor,arg0
.hword 241
.hword \arg0
.endm

.macro ElevatorBox,arg0,arg1,arg2,arg3
.hword 242
.byte \arg0
.byte \arg1
.hword \arg2
.hword \arg3
.endm

.macro CountJohtoDexSeen,var
.hword 243
.hword \var
.endm

.macro CountJohtoDexObtained,var
.hword 244
.hword \var
.endm

.macro CountNationalDexSeen,var
.hword 245
.hword \var
.endm

.macro CountNationalDexObtained,var
.hword 246
.hword \var
.endm

// Dummy
.macro DummyNationalDexCheck
.hword 247
.endm

// The actual Pokedex evaluation.
// national: 0 = Johto dex, 1 = National dex
// msg: Variable to return the message ID
// fanfare: Variable to return the fanfare ID
.macro GetDexProgressMsg,national,msg,fanfare
.hword 248
.byte \national
.hword \msg
.hword \fanfare
.endm

.macro WildBattle,arg0,arg1
.hword 249
.hword \arg0
.hword \arg1
.endm

.macro WildBattleNoButtons,arg0,arg1
.hword 250
.hword \arg0
.hword \arg1
.endm

.macro CatchTutorial
.hword 251
.endm

.macro CMD_252
.hword 252
.endm

.macro CheckSaveGame,arg0
.hword 253
.hword \arg0
.endm

.macro SaveGame,arg0
.hword 254
.hword \arg0
.endm

.macro CheckPortrait,arg0,arg1
.hword 255
.hword \arg0
.hword \arg1
.endm

.macro SetPortraitTitle,arg0
.hword 256
.hword \arg0
.endm

.macro CMD_257,arg0
.hword 257
.hword \arg0
.endm

.macro CMD_258
.hword 258
.endm

.macro CMD_259,arg0
.hword 259
.hword \arg0
.endm

.macro CMD_260,arg0
.hword 260
.hword \arg0
.endm

.macro CMD_261,arg0
.hword 261
.hword \arg0
.endm

.macro CMD_262
.hword 262
.endm

.macro CMD_263
.hword 263
.endm

.macro CMD_264,arg0
.hword 264
.hword \arg0
.endm

.macro CMD_265
.hword 265
.endm

.macro CMD_266
.hword 266
.endm

.macro CMD_267,arg0,arg1
.hword 267
.hword \arg0
.hword \arg1
.endm

.macro CMD_268,arg0
.hword 268
.hword \arg0
.endm

.macro CMD_269,arg0
.hword 269
.hword \arg0
.endm

.macro CMD_270
.hword 270
.endm

.macro CMD_271,arg0,arg1
.hword 271
.hword \arg0
.hword \arg1
.endm

.macro CMD_272,arg0
.hword 272
.hword \arg0
.endm

.macro CMD_273,arg0
.hword 273
.hword \arg0
.endm

.macro CMD_274,arg0,arg1
.hword 274
.hword \arg0
.hword \arg1
.endm

.macro MartScreen,arg0
.hword 275
.hword \arg0
.endm

.macro SpMartScreen,arg0
.hword 276
.hword \arg0
.endm

.macro GoodsMartScreen,arg0
.hword 277
.hword \arg0
.endm

.macro SealMartScreen,arg0
.hword 278
.hword \arg0
.endm

// Used with poison faint,but due to overworld
// poison mechanics in gen 4,this is
// never reached.
.macro DummyLostBattle
.hword 279
.endm

.macro SetLastWarp,arg0
.hword 280
.hword \arg0
.endm

// Are you a boy? Or are you a girl?
.macro CheckPlayerGender,var
.hword 281
.hword \var
.endm

.macro HealPokemon
.hword 282
.endm

.macro EndWirelessComms
.hword 283
.endm

.macro EnterBattleRoom
.hword 284
.endm

.macro SetPlayerDirComm,arg0
.hword 285
.hword \arg0
.endm

.macro UnionMapChange
.hword 286
.endm

.macro UnionRoomSpriteScreen
.hword 287
.endm

.macro StoreUnionSprite,arg0,arg1
.hword 288
.hword \arg0
.hword \arg1
.endm

.macro SetUnionSprite,arg0
.hword 289
.hword \arg0
.endm

.macro CheckPokedex,arg0
.hword 290
.hword \arg0
.endm

.macro GivePokedex
.hword 291
.endm

.macro CheckShoes,arg0
.hword 292
.hword \arg0
.endm

.macro GiveShoes
.hword 293
.endm

.macro CheckBadge,badge,var
.hword 294
.hword \badge
.hword \var
.endm

.macro GiveBadge,badge
.hword 295
.hword \badge
.endm

// This command is never used because it is
// assumed that you cannot get the 8th badge
// before the other 7,or the 16th before the
// other 15. This assumption does not account
// for tweaking.
.macro CountBadges,var
.hword 296
.hword \var
.endm

.macro DummyCheckBag,arg0
.hword 297
.hword \arg0
.endm

.macro DummyGiveBag
.hword 298
.endm

.macro CheckPartner,arg0
.hword 299
.hword \arg0
.endm

.macro SetPartner
.hword 300
.endm

.macro ClearPartner
.hword 301
.endm

.macro CheckStepFlag,arg0
.hword 302
.hword \arg0
.endm

.macro SetStepFlag
.hword 303
.endm

.macro ClearStepFlag
.hword 304
.endm

.macro DummyCheckGameCompleted,arg0
.hword 305
.hword \arg0
.endm

.macro DummyGameCompleted
.hword 306
.endm

.macro DoorAnimation,arg0,arg1,arg2,arg3,arg4
.hword 307
.hword \arg0 // matrix x
.hword \arg1 // matrix y
.hword \arg2 // map x
.hword \arg3 // map y
.byte \arg4     // door id
.endm

.macro WaitDoor,arg0
.hword 308
.byte \arg0     // door id
.endm

.macro FreeDoor,arg0
.hword 309
.byte \arg0     // door id
.endm

.macro OpenDoor,arg0
.hword 310
.byte \arg0     // door id
.endm

.macro CloseDoor,arg0
.hword 311
.byte \arg0     // door id
.endm

.macro GetDaycareNames
.hword 312
.endm

.macro GetDaycareStatus,arg0
.hword 313
.hword \arg0
.endm

.macro InitEcruteakGym
.hword 314
.endm

.macro CMD_315
.hword 315
.endm

.macro CMD_316
.hword 316
.endm

.macro CMD_317,arg0
.hword 317
.byte \arg0
.endm

.macro CianwoodGymInit
.hword 318
.endm

.macro CianwoodGymTurnWinch,arg0
.hword 319
.hword \arg0
.endm

.macro VermilionGymInit
.hword 320
.endm

.macro VermilionGymLockAction,arg0,arg1
.hword 321
.byte \arg0
.byte \arg1
.endm

.macro VermilionGymCanCheck,arg0,arg1
.hword 322
.byte \arg0
.hword \arg1
.endm

.macro ResetVermilionGymCans
.hword 323
.endm

.macro InitVioletGym
.hword 324
.endm

.macro VioletGymElevator
.hword 325
.endm

.macro InitAzaleaGym
.hword 326
.endm

.macro AzaleaGymSpinarak,arg0
.hword 327
.byte \arg0
.endm

.macro AzaleaGymSwitch,arg0
.hword 328
.byte \arg0
.endm

.macro BlackthornGymInit
.hword 329
.endm

.macro FuchsiaGymInit
.hword 330
.endm

.macro ViridianGymInit
.hword 331
.endm

.macro GetPartyCount,var
.hword 332
.hword \var
.endm

.macro BagScreen,arg0
.hword 333
.byte \arg0
.endm

.macro BagScreenSelection,arg0
.hword 334
.hword \arg0
.endm

.macro CheckPocketItems,arg0,arg1
.hword 335
.hword \arg0
.hword \arg1
.endm

.macro DummyTextBerry,slot,item,quantity
.hword 336
.byte \slot
.hword \item
.hword \quantity
.endm

.macro TextNature,slot,nature
.hword 337
.byte \slot
.hword \nature
.endm

.macro SetOWDefaultPosition,arg0,arg1,arg2
.hword 338
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro SetOWPosition,person,x,z,y,facing
.hword 339
.hword \person
.hword \x
.hword \z
.hword \y
.hword \facing
.endm

.macro SetOWDefaultMovement,arg0,arg1
.hword 340
.hword \arg0
.hword \arg1
.endm

.macro SetOWDefaultDirection,arg0,arg1
.hword 341
.hword \arg0
.hword \arg1
.endm

.macro SetWarpPosition,arg0,arg1,arg2
.hword 342
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro SetSpawnablePosition,arg0,arg1,arg2
.hword 343
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro SetOWDirection,arg0,arg1
.hword 344
.hword \arg0
.hword \arg1
.endm

.macro AddWaitingIcon
.hword 345
.endm

.macro RemoveWaitingIcon
.hword 346
.endm

.macro ReturnScriptWkSet,arg0
.hword 347
.hword \arg0
.endm

.macro WaitTimeOrAB,arg0
.hword 348
.hword \arg0
.endm

.macro ChoosePKMNSelection
.hword 349
.endm

.macro UnionChoosePKMNSelection
.hword 350
.endm

.macro GetSelectedPartySlot,arg0
.hword 351
.hword \arg0
.endm

.macro SelectMove,arg0,arg1,arg2
.hword 352
.byte \arg0
.hword \arg1
.hword \arg2
.endm

.macro GetMoveSelection,arg0,arg1
.hword 353
.byte \arg0
.hword \arg1
.endm

.macro GetPartyPokemonID,slot,var
.hword 354
.hword \slot
.hword \var
.endm

.macro CheckTradedPokemon,slot,var
.hword 355
.hword \slot
.hword \var
.endm

.macro CountPartyBornPokemon,var
.hword 356
.hword \var
.endm

// Count Pokemon that are not fainted.
// If except is set, exclude that slot
// from the tally. Use 6 to disable.
.macro CountAlivePokemonExceptFirst,var,except
.hword 357
.hword \var
.hword \except
.endm

.macro CountTotalAlivePokemon,arg0
.hword 358
.hword \arg0
.endm

.macro CountPartyEggs,arg0
.hword 359
.hword \arg0
.endm

.macro TakeMoneyFlex,var
.hword 360
.hword \var
.endm

.macro RetrieveDayCareMon,arg0,arg1
.hword 361
.hword \arg0
.hword \arg1
.endm

.macro GiveLoanMon,arg0,arg1,arg2
.hword 362
.byte \arg0
.byte \arg1
.hword \arg2
.endm

.macro CheckReturnLoanMon,arg0,arg1,arg2
.hword 363
.byte \arg0
.hword \arg1
.hword \arg2
.endm

.macro DeletePartyPokemon,arg0
.hword 364
.hword \arg0
.endm

.macro RemoveDayCareEgg
.hword 365
.endm

.macro GiveDayCareEgg
.hword 366
.endm

.macro TextDayCareCost,arg0,arg1
.hword 367
.hword \arg0
.hword \arg1
.endm

.macro CompareMoneyFlex,var,amount
.hword 368
.hword \var
.hword \amount
.endm

.macro EggHatchScreen
.hword 369
.endm

.macro CMD_370,arg0
.hword 370
.byte \arg0
.endm

.macro CheckDaycareLevelGain,arg0,arg1
.hword 371
.hword \arg0
.hword \arg1
.endm

.macro GetDayCareSpeciesandNick,arg0
.hword 372
.hword \arg0
.endm

.macro GiveDayCareMon,arg0
.hword 373
.hword \arg0
.endm

.macro UnvanishOverworld,arg0
.hword 374
.hword \arg0
.endm

.macro VanishOverworld,arg0
.hword 375
.hword \arg0
.endm

.macro MailScreen
.hword 376
.endm

.macro CountMail,arg0
.hword 377
.hword \arg0
.endm

.macro RankingView,arg0,arg1,arg2
.hword 378
.hword \arg0 * 3 + \arg1
.hword \arg2
.endm

.macro GetTimePeriod,arg0
.hword 379
.hword \arg0
.endm

.equ TIME_MORNING, 0// 4:00-9:59
.equ TIME_AFTERNOON, 1// 10:00-16:59
.equ TIME_EVENING, 2// 17:00-19:59
.equ TIME_NIGHT, 3// 20:00-23:59
.equ TIME_MIDNIGHT, 4// 24:00-3:59

.macro GetRandom,arg0,arg1
.hword 380
.hword \arg0
.hword \arg1
.endm

.macro DummyGetRandom,arg0,arg1
.hword 381
.hword \arg0
.hword \arg1
.endm

.macro GetPokemonHappiness,arg0,arg1
.hword 382
.hword \arg0
.hword \arg1
.endm

.macro AddHappiness,arg0,arg1
.hword 383
.hword \arg0
.hword \arg1
.endm

.macro SubHappiness,arg0,arg1
.hword 384
.hword \arg0
.hword \arg1
.endm

.macro TextDayCareMonStats,arg0,arg1,arg2,arg3
.hword 385
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro GetPlayerDirection,arg0
.hword 386
.hword \arg0
.endm

.macro GetDayCareMonCompatibility,arg0
.hword 387
.hword \arg0
.endm

.macro CheckDayCareEgg,arg0
.hword 388
.hword \arg0
.endm

.macro CheckBornPokemonInParty,arg0,arg1
.hword 389
.hword \arg0
.hword \arg1
.endm

.macro CheckPokemonSizeRecord,arg0,arg1
.hword 390
.hword \arg0
.hword \arg1
.endm

.macro SetPokemonSizeRecord,arg0
.hword 391
.hword \arg0
.endm

.macro TextPartyPokemonSize,arg0,arg1,arg2
.hword 392
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro TextPokemonRecordSize,arg0,arg1,arg2
.hword 393
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_394,arg0
.hword 394
.hword \arg0
.endm

.macro CMD_395,arg0
.hword 395
.hword \arg0
.endm

.macro CountPokemonMoves,arg0,arg1
.hword 396
.hword \arg0
.hword \arg1
.endm

.macro DeleteMove,arg0,arg1
.hword 397
.hword \arg0
.hword \arg1
.endm

.macro GetPartyPokemonMove,arg0,arg1,arg2
.hword 398
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro TextPartyPokemonMove,slot,party_pos,move_pos
.hword 399
.byte \slot
.hword \party_pos
.hword \move_pos
.endm

// action = 0: Deactivate strength
// action = 1: Activate strength
// action = 2: Check whether strength is active
.macro Strength,action,var
.hword 400
.byte \action
.if \action == 2
.hword \var
.endif
.endm

.macro FlashAction,action,var
.hword 401
.byte \action
.if \action == 2
.hword \var
.endif
.endm

.macro DefogAction,action,var
.hword 402
.byte \action
.if \action == 2
.hword \var
.endif
.endm

.macro GiveAccessory,arg0,arg1
.hword 403
.hword \arg0
.hword \arg1
.endm

.macro CheckGivenAccessory,arg0,arg1,arg2
.hword 404
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CheckAccessory,arg0,arg1,arg2
.hword 405
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro GiveBGAccessory,arg0
.hword 406
.hword \arg0
.endm

.macro CheckBGAccessory,arg0,arg1
.hword 407
.hword \arg0
.hword \arg1
.endm

.macro CMD_408,arg0,arg1
.hword 408
.hword \arg0
.hword \arg1
.endm

.macro CMD_409
.hword 409
.endm

.macro CMD_410,arg0,arg1
.hword 410
.hword \arg0
.hword \arg1
.endm

.macro CMD_411
.hword 411
.endm

.macro CMD_412,arg0,arg1,arg2
.hword 412
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_413,arg0,arg1,arg2,arg3
.hword 413
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro CMD_414,arg0
.hword 414
.hword \arg0
.endm

.macro CMD_415,arg0
.hword 415
.hword \arg0
.endm

.macro CMD_416,arg0,arg1,arg2
.hword 416
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_417,arg0,arg1
.hword 417
.hword \arg0
.hword \arg1
.endm

.macro CMD_418,arg0,arg1
.hword 418
.hword \arg0
.hword \arg1
.endm

.macro CMD_419,arg0
.hword 419
.hword \arg0
.endm

.macro CMD_420,arg0
.hword 420
.hword \arg0
.endm

.macro CMD_421,arg0,arg1,arg2
.hword 421
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_422,arg0,arg1,arg2,arg3
.hword 422
.hword \arg0
.hword \arg1
.hword \arg2
.byte \arg3
.endm

.macro CheckCompleteJohtoDex,arg0
.hword 423
.hword \arg0
.endm

.macro CheckCompleteNationalDex,arg0
.hword 424
.hword \arg0
.endm

.macro OpenPokedexScreen,arg0
.hword 425
.hword \arg0
.endm

.macro CheckPokemonMail,arg0,arg1,arg2
.hword 426
.hword \arg0
.hword \arg1
.byte \arg2
.endm

.macro CMD_427,arg0
.hword 427
.hword \arg0
.endm

.macro TakePokemonMail,arg0
.hword 428
.hword \arg0
.endm

//.macro CountFossils,arg0
//.halfword 429
//.halfword arg0
//.endmacro

.macro SetPhoneCall,arg0,arg1,arg2
.hword 430
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro RunPhoneCall
.hword 431
.endm

.macro CheckFossilPokemon,arg0,arg1
.hword 432
.hword \arg0
.hword \arg1
.endm

.macro CheckFossil,arg0,arg1,arg2
.hword 433
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CountPokemonUnderLevel,arg0,arg1
.hword 434
.hword \arg0
.hword \arg1
.endm

.macro SurvivePoison,arg0,arg1
.hword 435
.hword \arg0
.hword \arg1
.endm

.macro FinishOverworldScreen
.hword 436
.endm

.macro DebugPoketch,arg0
.hword 437
.hword \arg0
.endm

.macro MessageAllFromArchive,arg0,arg1
.hword 438
.hword \arg0
.hword \arg1
.endm

.macro MessageFromArchive,arg0,arg1
.hword 439
.hword \arg0
.hword \arg1
.endm

.macro MessageAllPutPMS,arg0,arg1
.hword 440
.hword \arg0
.hword \arg1
.endm

.macro CMD_441,arg0,arg1,arg2,arg3
.hword 441
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro CMD_442,arg0,arg1,arg2,arg3
.hword 442
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro CMD_443,arg0
.hword 443
.byte \arg0
.endm

.macro CMD_444,arg0,arg1,arg2,arg3
.hword 444
.byte \arg0
.hword \arg1
.hword \arg2
.byte \arg3
.endm

.macro GetPreviousHeaderID,arg0
.hword 445
.hword \arg0
.endm

.macro GetCurrentHeaderID,arg0
.hword 446
.hword \arg0
.endm

.macro SetSafariFlag,arg0,arg1
.hword 447
.byte \arg0
.byte \arg1
.endm

.macro BattleRoomWarp,arg0,arg1,arg2,arg3,arg4
.hword 448
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro ExitBattleRoom
.hword 449
.endm

.macro GeonetScreen
.hword 450
.endm

.macro CMD_451,arg0
.hword 451
.hword \arg0
.endm

.macro ShowPokemonPic,arg0,arg1
.hword 452
.hword \arg0
.hword \arg1
.endm

.macro HidePokemonPic
.hword 453
.endm

.macro CMD_454
.hword 454
.endm

.macro CMD_455
.hword 455
.endm

.macro CMD_456,arg0
.hword 456
.byte \arg0
.endm

.macro GetPokemonNature,arg0,arg1
.hword 457
.hword \arg0
.hword \arg1
.endm

.macro CheckPartyNature,arg0,arg1
.hword 458
.hword \arg0
.hword \arg1
.endm

.macro CMD_459
.hword 459
.endm

.macro LoadPokegearData,arg0,arg1
.hword 460
.hword \arg0
.hword \arg1
.endm

.macro SetRebattleTrainerID,arg0,arg1,arg2
.hword 461
.byte \arg0
.hword \arg1
.hword \arg2
.endm

.macro SetRebattleGymLeaderID,arg0
.hword 462
.hword \arg0
.endm

.macro EnableMassOutbreaks
.hword 463
.endm

.macro AddRoamingPokemon,arg0
.hword 464
.byte \arg0
.endm

.macro UnionGroup,arg0,arg1,arg2
.hword 465
.hword \arg0
.if \arg0 <= 3
    .hword \arg1
    .hword \arg2
.else
    .if \arg0 != 6
        .hword \arg1
    .endif
.endif
.endm

.macro CheckEggMoves,arg0,arg1
.hword 466
.hword \arg0
.hword \arg1
.endm

.macro RememberMoveScreen,arg0
.hword 467
.hword \arg0
.endm

.macro TeachMovesScreen,arg0,arg1
.hword 468
.hword \arg0
.hword \arg1
.endm

.macro ResponseTeachMove,arg0
.hword 469
.hword \arg0
.endm

.macro InitTrade,arg0
.hword 470
.byte \arg0
.endm

.macro GetOfferedPokemon,arg0
.hword 471
.hword \arg0
.endm

.macro GetRequestedPokemon,arg0
.hword 472
.hword \arg0
.endm

.macro TradePokemonScreen,arg0
.hword 473
.hword \arg0
.endm

.macro EndTrade
.hword 474
.endm

.macro DummyInternationalDex
.hword 475
.endm

.macro DummyDimorphismDex
.hword 476
.endm

.macro NationalDex,arg0,arg1
.hword 477
.byte \arg0
.hword \arg1
.endm

.macro CountPokemonRibbons,arg0,arg1
.hword 478
.hword \arg0
.hword \arg1
.endm

.macro CountPartyRibbons,arg0
.hword 479
.hword \arg0
.endm

.macro CheckRibbon,arg0,arg1,arg2
.hword 480
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro GiveRibbon,arg0,arg1
.hword 481
.hword \arg0
.hword \arg1
.endm

.macro TextRibbon,arg0,arg1
.hword 482
.byte \arg0
.hword \arg1
.endm

.macro CountPokemonEVs,arg0,arg1
.hword 483
.hword \arg0
.hword \arg1
.endm

.macro GetDayOfWeek,arg0
.hword 484
.hword \arg0
.endm

.equ DAY_SUNDAY, 0
.equ DAY_MONDAY, 1
.equ DAY_TUESDAY, 2
.equ DAY_WEDNESDAY, 3
.equ DAY_THURSDAY, 4
.equ DAY_FRIDAY, 5
.equ DAY_SATURDAY, 6

.macro ShowRulesList,arg0
.hword 485
.hword \arg0
.endm

.macro DummyGetPokemonFootprint
.hword 486
.endm

.macro PCHealAnimation,arg0
.hword 487
.hword \arg0
.endm

.macro ElevatorAnimation,direction,distance
.hword 488
.hword \direction
.hword \distance
.endm

.macro MysteryGiftGive,arg0,arg1,arg2
.hword 489
.hword \arg0
.if \arg0 >= 1 && \arg0 <= 3
    .hword \arg1
.else
    .if \arg0 == 5 || \arg0 == 6
        .hword \arg1
        .hword \arg2
    .endif
.endif
.endm

.macro CMD_490,arg0
.hword 490
.hword \arg0
.endm

.macro CMD_491,arg0
.hword 491
.hword \arg0
.endm

.macro CMD_492,arg0,arg1,arg2
.hword 492
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro MPT_EASY_CHAT,arg0,arg1,arg2
.hword 493
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_494,arg0,arg1
.hword 494
.hword \arg0
.hword \arg1
.endm

.macro CheckVersion,arg0
.hword 495
.hword \arg0
.endm

.macro FirstPokemonInParty,arg0
.hword 496
.hword \arg0
.endm

.macro CheckPokemonType,arg0,arg1,arg2
.hword 497
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro FirstPrimoPassword,arg0,arg1,arg2,arg3,arg4
.hword 498
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro SecondPrimoPassword,arg0,arg1,arg2,arg3,arg4
.hword 499
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro PreparePCAnimation,arg0
.hword 500
.byte \arg0
.endm

.macro OpenPCAnimation,arg0
.hword 501
.byte \arg0
.endm

.macro ClosePCAnimation,arg0
.hword 502
.byte \arg0
.endm

.macro GetLottoNumber,arg0
.hword 503
.hword \arg0
.endm

.macro CheckWinLotto,arg0,arg1,arg2,arg3
.hword 504
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro InitLotto
.hword 505
.endm

.macro BufferBoxPokemonNick,arg0,arg1
.hword 506
.byte \arg0
.hword \arg1
.endm

.macro CountPCFreeSpace,arg0
.hword 507
.hword \arg0
.endm

.macro PalParkControl,arg0
.hword 508
.hword \arg0
.endm

.macro PalParkDepositCountCheck,arg0
.hword 509
.hword \arg0
.endm

.macro PalParkBoxPokemonCaught
.hword 510
.endm

.macro PalParkScoreResult,arg0,arg1
.hword 511
.hword \arg0
.hword \arg1
.endm

.macro PlayerMovementSavingSet
.hword 512
.endm

.macro PlayerMovementSavingClear
.hword 513
.endm

// Animate placing the balls on the machine
// for the Hall of Fame
.macro HallOfFameAnime,num
.hword 514
.hword \num
.endm

.macro AddTrainerScore,arg0
.hword 515
.hword \arg0
.endm

.macro TextAccessory,arg0,arg1
.hword 516
.byte \arg0
.hword \arg1
.endm

.macro CheckPokemonInParty,arg0,arg1
.hword 517
.hword \arg0
.hword \arg1
.endm

.macro SetDeoxysForm,arg0
.hword 518
.hword \arg0
.endm

.macro CheckBurmyForms,arg0
.hword 519
.hword \arg0
.endm

.macro CMD_520
.hword 520
.endm

.macro CMD_521
.hword 521
.endm

.macro GetHour,arg0
.hword 522
.hword \arg0
.endm

.macro ShakeOverworld,arg0,arg1,arg2,arg3,arg4
.hword 523
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro BlinkOverworld,arg0,arg1,arg2
.hword 524
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CheckRegis,arg0
.hword 525
.hword \arg0
.endm

.macro CMD_526,arg0
.hword 526
.hword \arg0
.endm

.macro MessageUnown,arg0
.hword 527
.hword \arg0
.endm

.macro CheckGBACartidge,arg0
.hword 528
.hword \arg0
.endm

.macro GetFirstAlivePokemonSlot,arg0
.hword 529
.hword \arg0
.endm

.macro SetMatrixAlternativeMap,arg0,arg1
.hword 530
.hword \arg0
.byte \arg1
.endm

.macro TextBackgroundName,arg0,arg1
.hword 531
.byte \arg0
.hword \arg1
.endm

.macro CheckCoinsImmediate,arg0,arg1
.hword 532
.hword \arg0
.word \arg1
.endm

//.macro CheckCoins,arg0,arg1
//.halfword 533
//.halfword arg0
//.halfword arg1
//.endmacro

.macro AddCoins,arg0
.hword 534
.hword \arg0
.endm

.macro GetPokemonLevel,arg0,arg1
.hword 535
.hword \arg0
.hword \arg1
.endm

.macro CMD_536,arg0,arg1
.hword 536
.hword \arg0
.hword \arg1
.endm

.macro CMD_537
.hword 537
.endm

.macro CMD_538,arg0,arg1
.hword 538
.hword \arg0
.hword \arg1
.endm

.macro CMD_539,arg0
.hword 539
.hword \arg0
.endm

.macro CMD_540,arg0
.hword 540
.hword \arg0
.endm

.macro TextNumberSp,arg0,arg1,arg2,arg3
.hword 541
.byte \arg0
.hword \arg1
.byte \arg2
.byte \arg3
.endm

.macro MonGetContestValue,arg0,arg1,arg2
.hword 542
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CheckBirthday,arg0
.hword 543
.hword \arg0
.endm

.macro MusicVolumeSet,arg0,arg1
.hword 544
.hword \arg0
.hword \arg1
.endm

.macro CountSeenUnown,arg0
.hword 545
.hword \arg0
.endm

.macro CMD_546,arg0,arg1
.hword 546
.byte \arg0
.hword \arg1
.endm

.macro CMD_547,arg0
.hword 547
.hword \arg0
.endm

.macro CMD_548
.hword 548
.endm

.macro CMD_549,arg0
.hword 549
.hword \arg0
.endm

.macro CountHallOfFameEntries,arg0
.hword 550
.hword \arg0
.endm

.macro CMD_551,arg0
.hword 551
.hword \arg0
.endm

.macro CMD_552,arg0,arg1
.hword 552
.hword \arg0
.hword \arg1
.endm

.macro CMD_553,arg0,arg1
.hword 553
.byte \arg0
.hword \arg1
.endm

.macro CMD_554,arg0
.hword 554
.hword \arg0
.endm

.macro CMD_555,arg0
.hword 555
.hword \arg0
.endm

.macro CMD_556,arg0
.hword 556
.hword \arg0
.endm

.macro CheckBattlePoints,arg0,arg1
.hword 557
.hword \arg0
.hword \arg1
.endm

.macro GiveBP,arg0,arg1
.hword 558
.hword \arg0
.hword \arg1
.endm

.macro TakeBP,arg0,arg1
.hword 559
.hword \arg0
.hword \arg1
.endm

.macro CompareBP,arg0,arg1
.hword 560
.hword \arg0
.hword \arg1
.endm

.macro ShakeCamera,arg0,arg1,arg2,arg3
.hword 561
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro Battle2vs2,arg0,arg1,arg2,arg3
.hword 562
.hword \arg0
.hword \arg1
.hword \arg2
.byte \arg3
.endm

.macro CMD_563,arg0,arg1,arg2
.hword 563
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_564,arg0
.hword 564
.hword \arg0
.endm

.macro CMD_565,arg0
.hword 565
.hword \arg0
.endm

.macro PartyPokemonTradeScreen
.hword 566
.endm

.macro GetDPPtPrizeItemIdAndCost,arg0,arg1,arg2
.hword 567
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_568,arg0,arg1
.hword 568
.hword \arg0
.hword \arg1
.endm

.macro CMD_569,arg0
.hword 569
.hword \arg0
.endm

.macro CheckCoinsVar,arg0,arg1
.hword 570
.hword \arg0
.hword \arg1
.endm

.macro CMD_571,arg0,arg1,arg2,arg3,arg4
.hword 571
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro GetUniqueSealsQuantity,arg0
.hword 572
.hword \arg0
.endm

.macro DummyActivateMysteryGift
.hword 573
.endm

.macro GetOWMovement,arg0,arg1
.hword 574
.hword \arg0
.hword \arg1
.endm

.macro CMD_575,arg0,arg1
.hword 575
.hword \arg0
.hword \arg1
.endm

.macro CMD_576,arg0
.hword 576
.hword \arg0
.endm

.macro CMD_577
.hword 577
.endm

.macro CMD_578
.hword 578
.endm

.macro CMD_579
.hword 579
.endm

.macro TextSealSingular,arg0,arg1
.hword 580
.byte \arg0
.hword \arg1
.endm

.macro DummyLockAll
.hword 581
.endm

.macro CMD_582,arg0,arg1,arg2
.hword 582
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_583,arg0,arg1
.hword 583
.hword \arg0
.byte \arg1
.endm

.macro PartyLegalCheck,arg0
.hword 584
.hword \arg0
.endm

.macro CMD_585
.hword 585
.endm

.macro CMD_586,arg0
.hword 586
.hword \arg0
.endm

.macro CMD_587
.hword 587
.endm

.macro LastBattleCheckCaught,arg0
.hword 588
.hword \arg0
.endm

.macro WildBattleSp,species,level,shiny
.hword 589
.hword \species
.hword \level
.byte \shiny
.endm

.macro CheckTrainerCardLevel,arg0
.hword 590
.hword \arg0
.endm

.macro DummyRideBike
.hword 591
.endm

.macro CMD_592,arg0
.hword 592
.hword \arg0
.endm

.macro ShowSaveBox
.hword 593
.endm

.macro HideSaveBox
.hword 594
.endm

.macro ScopeMode,arg0
.hword 595
.byte \arg0
.endm

.macro GetFollowingPokeSize,arg0
.hword 596
.hword \arg0
.endm

.macro CMD_597
.hword 597
.endm

.macro CMD_598,arg0
.hword 598
.hword \arg0
.endm

.macro FollowingPokePCAnimation
.hword 599
.endm

.macro SendBackFollowingPoke
.hword 600
.endm

.macro FollowingPokeFacePlayer
.hword 601
.endm

.macro LockFollowingPoke,arg0
.hword 602
.hword \arg0
.endm

.macro WaitFollowingPoke
.hword 603
.endm

.macro SetFollowingPokeMovement,arg0
.hword 604
.hword \arg0
.endm

.macro SetFollowingPokePosition,arg0,arg1
.hword 605
.byte \arg0
.byte \arg1
.endm

.macro BallResetFollowingPoke
.hword 606
.endm

.macro NoBallResetFollowingPoke
.hword 607
.endm

.macro SendOutFollowingPoke
.hword 608
.endm

.macro CMD_609
.hword 609
.endm

.macro CMD_610,arg0
.hword 610
.hword \arg0
.endm

//.macro Pokeathlon,arg0,arg1,arg2,arg3,arg4,arg5,arg6
//.halfword 611
//.byte arg0
//.byte arg1
//.halfword arg2
//.halfword arg3
//.halfword arg4
//.halfword arg5
//.halfword arg6
//.endmacro

.macro CMD_612,arg0
.hword 612
.hword \arg0
.endm

.macro GetPokegearContactRandomGiftBerry,arg0
.hword 613
.hword \arg0
.endm

.macro GetPokegearContactGiftItem,arg0
.hword 614
.hword \arg0
.endm

.macro CameronPhotoScreen,arg0
.hword 615
.hword \arg0
.endm

.macro TakePhoto,arg0
.hword 615
.hword \arg0
.endm

// Photo IDs
.equ PHOTO_NEW_BARK_TOWN, 0
.equ PHOTO_CHERRYGROVE_CITY, 1
.equ PHOTO_FALKNER, 2
.equ PHOTO_RUINS_OF_ALPH_EX, 3
.equ PHOTO_RUINS_OF_ALPH_IN, 4
.equ PHOTO_ROUTE_32, 5
.equ PHOTO_SLOWPOKE_WELL, 6
.equ PHOTO_BUGSY, 7
.equ PHOTO_ILEX_FOREST, 8
.equ PHOTO_ROUTE_34_WITH_DAYCARE_MAN, 9
.equ PHOTO_GOLDENROD_TUNNEL_TEAM_ROCKET, 10
.equ PHOTO_ROUTE_35, 11
.equ PHOTO_NATIONAL_PARK_GATE, 12
.equ PHOTO_POKEATHLON_DOME_APRIJUICE, 13
.equ PHOTO_POKEATHLON_DOME, 14
.equ PHOTO_WHITNEY, 15
.equ PHOTO_NATIONAL_PARK_FOUNTAIN, 16
.equ PHOTO_NATIONAL_PARK, 17
.equ PHOTO_ECRUTEAK_CITY, 19
.equ PHOTO_MORTY, 20

.equ PHOTO_OLIVINE_CITY, 23

.equ PHOTO_OLIVINE_CAFE, 25

.equ PHOTO_GLITTER_LIGHTHOUSE, 27
.equ PHOTO_ROUTE_39, 28
.equ PHOTO_JOHTO_FRONTIER_ACCESS, 29

.equ PHOTO_JOHTO_BATTLE_FRONTIER, 31

.equ PHOTO_CIANWOOD_CITY, 35

.equ PHOTO_ROUTE_48, 37
.equ PHOTO_SAFARI_ZONE_GATE, 38

.equ PHOTO_PRYCE, 40

.equ PHOTO_ICE_PATH, 43
.equ PHOTO_BLACKTHORN_CITY, 44

.equ PHOTO_DRAGON_MASTER, 46
.equ PHOTO_ROUTE_45, 47
.equ PHOTO_ROUTE_26, 48

.equ PHOTO_VERMILION_CITY, 50

.equ PHOTO_SAFFRON_CITY_TRAIN_STATION, 52
.equ PHOTO_SILPH_CO_EX, 53

.equ PHOTO_CERULEAN_CITY, 55

.equ PHOTO_CELADON_CITY, 57
.equ PHOTO_CELADON_CITY_DEPARTMENT_STORE, 58
.equ PHOTO_ROUTE_12, 59
.equ PHOTO_ROUTE_14, 60

.equ PHOTO_FUCHSIA_CITY, 62

.equ PHOTO_PEWTER_CITY_MUSEUM, 65
.equ PHOTO_PEWTER_CITY, 66

.equ PHOTO_VIRIDIAN_CITY, 69
.equ PHOTO_JANINE, 70
.equ PHOTO_ROUTE_22, 71
.equ PHOTO_ROUTE_1, 72
.equ PHOTO_PALLET_TOWN, 73
.equ PHOTO_ROUTE_21, 74
.equ PHOTO_SEAFOAM_ISLANDS, 75

.equ PHOTO_MT_SILVER, 77
.equ PHOTO_MT_SILVER_CAVE, 78

.equ PHOTO_LT_SURGE, 80
.equ PHOTO_ERIKA, 81

.equ PHOTO_CLAIR, 83
.equ PHOTO_MISTY, 84
.equ PHOTO_BLAINE, 85
.equ PHOTO_BROCK, 86

.equ PHOTO_SABRINA, 88
.equ PHOTO_JASMINE, 89
.equ PHOTO_PROFESSOR_OAK, 90
.equ PHOTO_CHUCK, 91
.equ PHOTO_BLUE, 92

.macro CMD_616,arg0
.hword 616
.hword \arg0
.endm

.macro CMD_617
.hword 617
.endm

.macro CheckAlbumIfFull,arg0
.hword 618
.hword \arg0
.endm

.macro CheckRocketCostume,arg0
.hword 619
.hword \arg0
.endm

.macro ActivateRocketCostume,arg0
.hword 620
.byte \arg0
.endm

.macro CMD_621
.hword 621
.endm

.macro GetOWDirection,arg0,arg1
.hword 622
.hword \arg0
.hword \arg1
.endm

.macro AnimationApricornTree,arg0
.hword 623
.hword \arg0
.endm

.macro ApricornTreeGetApricorn,arg0
.hword 624
.hword \arg0
.endm

.macro GiveApricornFromTree,arg0,arg1,arg2
.hword 625
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro TextApricornName,arg0,arg1
.hword 626
.byte \arg0
.hword \arg1
.endm

.macro CMD_627,arg0
.hword 627
.byte \arg0
.endm

.macro CMD_628,arg0,arg1
.hword 628
.hword \arg0
.hword \arg1
.endm

.macro CMD_629
.hword 629
.endm

.macro CMD_630,arg0
.hword 630
.hword \arg0
.endm

.macro CMD_631,arg0,arg1,arg2
.hword 631
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CountPartyMonsOfSpecies,arg0,arg1
.hword 632
.hword \arg0
.hword \arg1
.endm

.macro CMD_633,arg0,arg1,arg2
.hword 633
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_634,arg0,arg1
.hword 634
.hword \arg0
.hword \arg1
.endm

.macro CMD_635,arg0,arg1
.hword 635
.hword \arg0
.hword \arg1
.endm

.macro CMD_636,arg0
.hword 636
.hword \arg0
.endm

.macro CMD_637,arg0,arg1,arg2
.hword 637
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_638,arg0,arg1,arg2
.hword 638
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_639,arg0,arg1,arg2
.hword 639
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_640,arg0
.hword 640
.hword \arg0
.endm

.macro SaveWipeExtraChunks
.hword 641
.endm

.macro CMD_642,arg0
.hword 642
.hword \arg0
.endm

.macro CMD_643,arg0,arg1,arg2
.hword 643
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_644,arg0,arg1,arg2
.hword 644
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_645,arg0,arg1,arg2
.hword 645
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_646,arg0
.hword 646
.hword \arg0
.endm

.macro GetPartySlotWithSpecies,arg0,arg1
.hword 647
.hword \arg0
.hword \arg1
.endm

.macro CMD_648,arg0,arg1,arg2,arg3,arg4
.hword 648
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro OpenScratchCardScreen
.hword 649
.endm

.macro CloseScratchCard
.hword 650
.endm

.macro GetScratchCardPrize,arg0,arg1,arg2
.hword 651
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_652,arg0,arg1,arg2
.hword 652
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro MoveTutorChooseMove,mon_slot,tutor_no,arg2,arg3
.hword 653
.hword \mon_slot
.hword \tutor_no
.hword \arg2
.hword \arg3
.endm

.macro TutorMoveTeachInSlot,party_slot,move_slot,move
.hword 654
.hword \party_slot
.hword \move_slot
.hword \move
.endm

.macro TutorMoveGetPrice,arg0,arg1
.hword 655
.hword \arg0
.hword \arg1
.endm

.macro CheckHeadbuttCompatibility,arg0,arg1
.hword 656
.hword \arg0
.hword \arg1
.endm

.macro IVCheckerJudge,mon_slot,iv_sum,best_stat,best_iv
.hword 657
.hword \mon_slot
.hword \iv_sum
.hword \best_stat
.hword \best_iv
.endm

.macro BufferStatName,arg0,arg1
.hword 658
.byte \arg0
.hword \arg1
.endm

.macro SetMonForme,arg0,arg1
.hword 659
.hword \arg0
.hword \arg1
.endm

.macro TextTrainerName,arg0,arg1
.hword 660
.byte \arg0
.hword \arg1
.endm

.macro CMD_661,arg0,arg1,arg2,arg3
.hword 661
.byte \arg0
.word \arg1
.byte \arg2
.byte \arg3
.endm

.macro CMD_662,arg0,arg1,arg2
.hword 662
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_663,arg0
.hword 663
.hword \arg0
.endm

.macro CMD_664
.hword 664
.endm

.macro CMD_665,arg0
.hword 665
.hword \arg0
.endm

.macro CMD_666,arg0
.hword 666
.hword \arg0
.endm

.macro CMD_667,arg0
.hword 667
.hword \arg0
.endm

.macro TextTypeName,arg0,arg1
.hword 668
.byte \arg0
.hword \arg1
.endm

//.macro GetItemQuantity,arg0,arg1
//.halfword 669
//.halfword arg0
//.halfword arg1
//.endmacro

.macro GetHiddenPowerType,arg0,arg1
.hword 670
.hword \arg0
.hword \arg1
.endm

.macro SetFavoriteMon
.hword 671
.endm

.macro GetFavoriteMon,arg0,arg1,arg2
.hword 672
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro GetOwnedRotomFormes,arg0,arg1,arg2,arg3,arg4
.hword 673
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro CountTranformedRotomsInParty,arg0,arg1
.hword 674
.hword \arg0
.hword \arg1
.endm

.macro UpdateRotomForme,arg0,arg1,arg2,arg3
.hword 675
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro GetPartyPokemonForm,arg0,arg1
.hword 676
.hword \arg0
.hword \arg1
.endm

.macro CMD_677,arg0,arg1
.hword 677
.hword \arg0
.hword \arg1
.endm

.macro CMD_678,arg0,arg1
.hword 678
.hword \arg0
.hword \arg1
.endm

.macro CMD_679
.hword 679
.endm

.macro CMD_680,arg0
.hword 680
.hword \arg0
.endm

.macro CMD_681,arg0
.hword 681
.hword \arg0
.endm

.macro CMD_682,arg0
.hword 682
.hword \arg0
.endm

.macro CMD_683,arg0
.hword 683
.hword \arg0
.endm

.macro GetCurrentWeather,arg0
.hword 684
.hword \arg0
.endm

.macro GetPlayerCoordinates,arg0,arg1,arg2
.hword 685
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_686,arg0,arg1
.hword 686
.hword \arg0
.hword \arg1
.endm

.macro CMD_687,arg0
.hword 687
.hword \arg0
.endm

.macro CheckFatefulEncounter,arg0,arg1
.hword 688
.hword \arg0
.hword \arg1
.endm

// Attempt to remove all Griseous Orbs and reset Pokemon
// to formes present in Diamond and Pearl, to avoid
// problems communicating with those games.
.macro CommSanitizeParty,var_result
.hword 689
.hword \var_result
.endm

.macro DayCareSanitizeMon,arg0,arg1
.hword 690
.hword \arg0
.hword \arg1
.endm

.macro CMD_691,arg0
.hword 691
.hword \arg0
.endm

.macro TextBattleHallStreak,arg0,arg1,arg2,arg3,arg4,arg5
.hword 692
.byte \arg0
.byte \arg1
.byte \arg2
.byte \arg3
.hword \arg4
.hword \arg5
.endm

.macro BattleHallCountUsedSpecies,arg0
.hword 693
.hword \arg0
.endm

.macro BattleHallGetTotalStreak,arg0
.hword 694
.hword \arg0
.endm

.macro CMD_695,arg0
.hword 695
.hword \arg0
.endm

.macro CMD_696,arg0
.hword 696
.hword \arg0
.endm

.macro CMD_697,arg0
.hword 697
.hword \arg0
.endm

.macro FollowingPokemonIsEventTrigger,arg0,arg1,arg2
.hword 698
.byte \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_699
.hword 699
.endm

.macro CMD_700
.hword 700
.endm

.macro PokemonHasItem,arg0,arg1
.hword 701
.hword \arg0
.hword \arg1
.endm

.macro BattleTowerSetUpMultiBattle
.hword 702
.endm

.macro SetPlayerVolume,arg0
.hword 703
.hword \arg0
.endm

.macro CMD_704,arg0,arg1
.hword 704
.hword \arg0
.hword \arg1
.endm

.macro CMD_705,arg0,arg1
.hword 705
.hword \arg0
.word \arg1
.endm

.macro CMD_706,arg0
.hword 706
.hword \arg0
.endm

.macro CheckPokemonIsSeen,arg0,arg1
.hword 707
.hword \arg0
.hword \arg1
.endm

.macro FloorTrapAnimation,arg0
.hword 708
.hword \arg0
.endm

.macro CMD_709
.hword 709
.endm

.macro CMD_710
.hword 710
.endm

.macro TalkFollowingPoke
.hword 711
.endm

.macro CMD_712,arg0
.hword 712
.byte \arg0
.endm

.macro OpenAlphPuzzle,arg0
.hword 713
.byte \arg0
.endm

.macro OpenRuinsofAlphHiddenRoom,arg0
.hword 714
.byte \arg0
.endm

.macro UpdateDayCareMonOverworlds
.hword 715
.endm

.macro CMD_716
.hword 716
.endm

.macro CMD_717,arg0
.hword 717
.hword \arg0
.endm

.macro CMD_718,arg0,arg1
.hword 718
.byte \arg0
.hword \arg1
.endm

.macro CMD_719,arg0,arg1
.hword 719
.hword \arg0
.hword \arg1
.endm

.macro CMD_720,arg0
.hword 720
.hword \arg0
.endm

.macro CMD_721,arg0
.hword 721
.hword \arg0
.endm

.macro CMD_722,arg0,arg1,arg2,arg3,arg4
.hword 722
.byte \arg0
.byte \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro BoatAnimation,arg0,arg1,arg2,arg3,arg4
.hword 723
.byte \arg0
.byte \arg1
.hword \arg2
.hword \arg3
.hword \arg4
.endm

.macro CMD_724,arg0,arg1
.hword 724
.hword \arg0
.hword \arg1
.endm

.macro CMD_725,arg0,arg1
.hword 725
.byte \arg0
.hword \arg1
.endm

.macro CMD_726
.hword 726
.endm

.macro CMD_727,arg0
.hword 727
.hword \arg0
.endm

.macro CMD_728,arg0,arg1
.hword 728
.byte \arg0
.byte \arg1
.endm

.macro CheckAlivePokemon,arg0
.hword 729
.hword \arg0
.endm

.macro CheckFollowingPoke,arg0
.hword 730
.hword \arg0
.endm

.macro CMD_731
.hword 731
.endm

.macro CMD_732,arg0
.hword 732
.byte \arg0
.endm

.macro CMD_733,arg0,arg1
.hword 733
.byte \arg0
.hword \arg1
.endm

.macro CMD_734,arg0
.hword 734
.byte \arg0
.endm

.macro CheckKurtApricorn,arg0
.hword 735
.hword \arg0
.endm

.macro ClearKurtApricorn
.hword 736
.endm

.macro GiveApricornBalls,arg0
.hword 737
.hword \arg0
.endm

.macro CheckApricornCount,arg0
.hword 738
.hword \arg0
.endm

.macro KurtApricornMenuScreen
.hword 739
.endm

.macro StoreApricornJuice,arg0,arg1
.hword 740
.hword \arg0
.hword \arg1
.endm

.macro CheckJuice,arg0,arg1,arg2,arg3
.hword 741
.hword \arg0
.hword \arg1
.hword \arg2
.hword \arg3
.endm

.macro CMD_742,arg0,arg1,arg2
.hword 742
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_743,arg0
.hword 743
.hword \arg0
.endm

.macro CreatePokeathlonFriendshipRoomStatues
.hword 744
.endm

.macro TextPokeathlonCourseName,arg0,arg1
.hword 745
.byte \arg0
.hword \arg1
.endm

.macro OpenTouchScreen
.hword 746
.endm

.macro CloseTouchScreen
.hword 747
.endm

.macro YesNoTouchScreen,arg0
.hword 748
.hword \arg0
.endm

.macro MultiTouchStandardText,arg0,arg1,arg2,arg3,arg4
.hword 749
.byte \arg0
.byte \arg1
.byte \arg2
.byte \arg3
.hword \arg4
.endm

.macro MultiTouchLocalText,arg0,arg1,arg2,arg3,arg4
.hword 750
.byte \arg0
.byte \arg1
.byte \arg2
.byte \arg3
.hword \arg4
.endm

.macro CreateMultiTouchBox,arg0,arg1,arg2
.hword 751
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CloseMultiTouch
.hword 752
.endm

.macro RockSmashItemCheck,arg0,arg1,arg2
.hword 753
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro CMD_754,arg0
.hword 754
.hword \arg0
.endm

.macro CMD_755
.hword 755
.endm

.macro CMD_756
.hword 756
.endm

.macro CMD_757
.hword 757
.endm

.macro CMD_758,arg0
.hword 758
.hword \arg0
.endm

.macro CMD_759
.hword 759
.endm

.macro CMD_760
.hword 760
.endm

.macro CMD_761,arg0
.hword 761
.hword \arg0
.endm

.macro CMD_762,arg0
.hword 762
.hword \arg0
.endm

.macro CMD_763
.hword 763
.endm

.macro CMD_764
.hword 764
.endm

.macro CMD_765
.hword 765
.endm

.macro CMD_766
.hword 766
.endm

.macro CMD_767
.hword 767
.endm

.macro CMD_768
.hword 768
.endm

.macro CMD_769
.hword 769
.endm

.macro CMD_770,arg0
.hword 770
.hword \arg0
.endm

.macro CMD_771
.hword 771
.endm

.macro CMD_772
.hword 772
.endm

.macro RenderCutscene,arg0
.hword 773
.hword \arg0
.endm

.macro CMD_774,arg0
.hword 774
.hword \arg0
.endm

.macro CMD_775,arg0,arg1
.hword 775
.hword \arg0
.hword \arg1
.endm

.macro GiveTogepiEgg
.hword 776
.endm

.macro CMD_777,arg0,arg1
.hword 777
.hword \arg0
.hword \arg1
.endm

.macro GiveSpikyEaredPichu
.hword 778
.endm

.macro RadioMusicIsPlaying,arg0,arg1
.hword 779
.hword \arg0
.hword \arg1
.endm

.macro OpenVoltorbFlip,arg0,arg1
.hword 780
.byte \arg0
.byte \arg1
.endm

.macro KenyaCheckPartyOrMailbox,arg0
.hword 781
.hword \arg0
.endm

.macro MartSell
.hword 782
.endm

.macro SetFollowPokeInhibitState,arg0
.hword 783
.byte \arg0
.endm

.macro ScriptOverlayCmd,arg0,arg1
.hword 784
.byte \arg0
.byte \arg1
.endm

.macro BugContestAction,arg0,arg1
.hword 785
.byte \arg0
.hword \arg1
.endm

.macro TextBugContestWinner,arg0
.hword 786
.byte \arg0
.endm

.macro JudgeBugContest,arg0,arg1,arg2
.hword 787
.hword \arg0
.hword \arg1
.hword \arg2
.endm

.macro TextBugContestMonNick,arg0,arg1
.hword 788
.byte \arg0
.hword \arg1
.endm

.macro BugContestGetTimeLeft,arg0
.hword 789
.byte \arg0
.endm

.macro IsBugContestantRegistered,arg0,arg1
.hword 790
.hword \arg0
.hword \arg1
.endm

.macro CMD_791,arg0,arg1
.hword 791
.byte \arg0
.hword \arg1
.endm

.macro CMD_792
.hword 792
.endm

.macro TakeMomMoney,arg0,arg1
.hword 793
.hword \arg0
.hword \arg1
.endm

.macro CheckMomMoneyBalance,arg0,arg1
.hword 794
.hword \arg0
.word \arg1
.endm

.macro ShowMomMoney,arg0,arg1
.hword 795
.hword \arg0
.hword \arg1
.endm

.macro HideMomMoney
.hword 796
.endm

.macro CMD_797
.hword 797
.endm

.macro TextRulesetName,arg0
.hword 798
.hword \arg0
.endm

.macro CMD_799,arg0
.hword 799
.hword \arg0
.endm

.macro CMD_800,arg0
.hword 800
.hword \arg0
.endm

.macro CMD_801,arg0
.hword 801
.hword \arg0
.endm

.macro CMD_802
.hword 802
.endm

.macro CMD_803,arg0,arg1
.hword 803
.hword \arg0
.hword \arg1
.endm

.macro UpdateTownMap,arg0
.hword 804
.byte \arg0
.endm

.macro CMD_805
.hword 805
.endm

.macro CMD_806
.hword 806
.endm

.macro CMD_807,arg0,arg1
.hword 807
.hword \arg0
.hword \arg1
.endm

.macro CMD_808,arg0
.hword 808
.hword \arg0
.endm

.macro CMD_809,arg0
.hword 809
.hword \arg0
.endm

.macro CelebiTimeTravelAnimation
.hword 810
.endm

.macro CMD_811,arg0,arg1
.hword 811
.hword \arg0
.hword \arg1
.endm

.macro CMD_812
.hword 812
.endm

.macro MomGiftCheck,arg0
.hword 813
.hword \arg0
.endm

.macro CMD_814
.hword 814
.endm

.macro CMD_815,arg0
.hword 815
.hword \arg0
.endm

.macro UnownCircle
.hword 816
.endm

.macro CMD_817,arg0
.hword 817
.byte \arg0
.endm

.macro InitMystriStageAnimation
.hword 818
.endm

.macro CMD_819
.hword 819
.endm

.macro CMD_820,arg0
.hword 820
.byte \arg0
.endm

.macro GetBuenasPassword,arg0,arg1
.hword 821
.hword \arg0
.hword \arg1
.endm

.macro CMD_822
.hword 822
.endm

.macro CMD_823,arg0
.hword 823
.hword \arg0
.endm

.macro CMD_824,arg0
.hword 824
.hword \arg0
.endm

.macro GetShinyLeafCount,arg0,arg1
.hword 825
.hword \arg0
.hword \arg1
.endm

.macro TryGiveShinyLeafCrown,arg0
.hword 826
.hword \arg0
.endm

.macro CheckPokemonNickname,arg0,arg1
.hword 827
.hword \arg0
.hword \arg1
.endm

.macro CMD_828,arg0,arg1,arg2
.hword 828
.hword \arg0
.byte \arg1
.hword \arg2
.endm

.macro CMD_829,arg0
.hword 829
.hword \arg0
.endm

.macro CMD_830,arg0
.hword 830
.hword \arg0
.endm

.macro CMD_831,arg0
.hword 831
.hword \arg0
.endm

.macro CMD_832,arg0
.hword 832
.hword \arg0
.endm

.macro CMD_833,arg0
.hword 833
.hword \arg0
.endm

.macro CMD_834,arg0
.hword 834
.hword \arg0
.endm

.macro CMD_835,arg0
.hword 835
.hword \arg0
.endm

.macro CheckJadeOrbRequirements,arg0
.hword 836
.hword \arg0
.endm

.macro CMD_837,arg0
.hword 837
.hword \arg0
.endm

.macro CheckMoneyFull,arg0,arg1
.hword 838
.hword \arg0
.hword \arg1
.endm

.macro SystemSetSleepFlag,arg0
.hword 839
.hword \arg0
.endm

.macro CMD_840,arg0,arg1
.hword 840
.hword \arg0
.hword \arg1
.endm

.macro CMD_841,arg0
.hword 841
.byte \arg0
.endm

.macro CMD_842,arg0
.hword 842
.byte \arg0
.endm

.macro TextItemLowercase,arg0,arg1
.hword 843
.byte \arg0
.hword \arg1
.endm

.macro TextItemPlural,arg0,arg1
.hword 844
.byte \arg0
.hword \arg1
.endm

.macro TextPartyPokemonDefault,arg0,arg1
.hword 845
.byte \arg0
.hword \arg1
.endm

.macro CMD_846,arg0,arg1,arg2,arg3
.hword 846
.byte \arg0
.hword \arg1
.hword \arg2
.byte \arg3
.endm

.macro CMD_847,arg0
.hword 847
.byte \arg0
.endm

.macro CMD_848,arg0,arg1
.hword 848
.byte \arg0
.hword \arg1
.endm

.macro TextTrainerClass,arg0,arg1
.hword 849
.byte \arg0
.hword \arg1
.endm

.macro TextSealPlural,arg0,arg1
.hword 850
.byte \arg0
.hword \arg1
.endm

.macro TextCapitalize,arg0
.hword 851
.byte \arg0
.endm

.macro TextFloor,arg0,arg1
.hword 852
.byte \arg0
.byte \arg1
.endm

// Convenience macros

// Generic compare macro which attempts to deduce argument types based on their values
// Any values between 0x4000 to 0x40FF and 0x8000 to 0x8015 are considered event variable identifiers
//.macro Compare,var,arg
//  .if ((arg >= VARS_START && arg <= VARS_END) || (arg >= SPECIAL_VARS_START && arg <= SPECIAL_VARS_END))
//      compare_var_to_var var,arg
//  .else
//      compare_var_to_value var,arg
//  .endif
//.endmacro

.macro JumpIfUnset,flag,dest
checkflag \flag
goto_if 0,\dest
.endm

.macro JumpIfSet,flag,dest
checkflag \flag
goto_if 1,\dest
.endm

.macro JumpIfLessThan,dest // LESS THAN
goto_if 0,\dest
.endm

.macro JumpIfEqual,dest // EQUAL
goto_if 1,\dest
.endm

.macro JumpIfGreaterThan,dest // GREATER THAN
goto_if 2,\dest
.endm

.macro JumpIfLessThanOrEqual,dest // LESS THAN OR EQUAL
goto_if 3,\dest
.endm

.macro JumpIfGreaterThanOrEqual,dest // GREATER THAN OR EQUAL
goto_if 4,\dest
.endm

.macro JumpIfNotEqual,dest // NOT EQUAL
goto_if 5,\dest
.endm

.macro CallIfNotSet,flag,dest
checkflag \flag
call_if 0,\dest
.endm

.macro CallIfSet,flag,dest
checkflag \flag
call_if 1,\dest
.endm

.macro CallIfLessThan,dest // LESS THAN
call_if 0,\dest
.endm

.macro CallIfEqual,dest // EQUAL
call_if 1,\dest
.endm

.macro CallIfGreaterThan,dest // GREATER THAN
call_if 2,\dest
.endm

.macro CallIfLessThanOrEqual,dest // LESS THAN OR EQUAL
call_if 3,\dest
.endm

.macro CallIfGreaterThanOrEqual,dest // GREATER THAN OR EQUAL
call_if 4,\dest
.endm

.macro CallIfNotEqual,dest // NOT EQUAL
call_if 5,\dest
.endm

.macro JumpIfDefeated,trainer,dest
checktrainerflag \trainer
goto_if 1,\dest
.endm

.macro JumpIfNotDefeated,trainer,dest
checktrainerflag \trainer
goto_if 0,\dest
.endm

.macro CallIfDefeated,trainer,dest
checktrainerflag \trainer
call_if 1,\dest
.endm

.macro CallIfNotDefeated,trainer,dest
checktrainerflag \trainer
call_if 0,\dest
.endm

.macro SetItemVars,item,quantity
.if \item < 0x4000
setvar VAR_SPECIAL_x8004,\item
.else
copyvar VAR_SPECIAL_x8004,\item
.endif
.if \quantity < 0x4000
setvar VAR_SPECIAL_x8005,\quantity
.else
copyvar VAR_SPECIAL_x8005,\quantity
.endif
.endm

.macro JumpIfNoItemSpace,item,quantity,target
item_vars \item,\quantity
hasspaceforitem VAR_SPECIAL_x8004,VAR_SPECIAL_x8005,VAR_SPECIAL_RESULT
compare VAR_SPECIAL_RESULT,0
goto_if_eq \target
.endm

.macro GiveItemNoCheck,item,quantity
item_vars \item,\quantity
callstd std_give_item_verbose // std_give_item_verbose
.endm

.macro TakeItemNoCheck,item,quantity
item_vars \item,\quantity
takeitem VAR_SPECIAL_x8004,VAR_SPECIAL_x8005,VAR_SPECIAL_RESULT
.endm

//.macro Switch,var
//copyvar VAR_SPECIAL_x8008,var
//.endmacro

//.macro Case,value,target
//compare VAR_SPECIAL_x8008,value
//goto_if_eq target
//.endmacro

.macro PhoneCall,who,b,c
setvar VAR_SPECIAL_x8004,\who
setvar VAR_SPECIAL_x8005,\b
setvar VAR_SPECIAL_x8006,\c
callstd std_phone_call
.endm

.macro SimpleNPCMessage,msgid
play_se 1500 // SEQ_SE_DP_SELECT
lockall
faceplayer
npc_msg \msgid
wait_button_or_walk_away
closemsg
releaseall
.endm

// Adapted DSPRE Nomenclature
.equ LESS, 0
.equ EQUAL, 1
.equ GREATER, 2
.equ LESS_EQUAL, 3
.equ GREATER_EQUAL, 4
.equ DIFFERENT, 5

.equ Camera, 241
.equ Apricorn, 252
.equ Following, 253
.equ Player, 255

.equ Up, 0
.equ Down, 1
.equ Left, 2
.equ Right, 3

.endif // GUARD_SCRIPTMACROS
