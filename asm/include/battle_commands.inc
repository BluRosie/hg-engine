.ifndef ASM_BATTLE_SCRIPT_INC
.set ASM_BATTLE_SCRIPT_INC, 1
.include "asm/include/interop_macros.inc"
.include "asm/include/abilities.inc"
.include "asm/include/hold_item_effects.inc"
.include "asm/include/items.inc"
.include "asm/include/move_effects.inc"
.include "asm/include/moves.inc"
.include "asm/include/species.inc"
.include "asm/include/battle_constants.inc"

    .macro PlayEncounterAnimation
    .long 0
    .endm

    .macro SetPokemonEncounter arg_0
    .long 1
    .long \arg_0
    .endm

    .macro PokemonSlideIn arg_0
    .long 2
    .long \arg_0
    .endm

    .macro PokemonSendOut arg_0
    .long 3
    .long \arg_0
    .endm

    .macro RecallPokemon arg_0
    .long 4
    .long \arg_0
    .endm

    .macro DeletePokemon arg_0
    .long 5
    .long \arg_0
    .endm

    .macro SetTrainerEncounter arg_0
    .long 6
    .long \arg_0
    .endm

    .macro ThrowPokeball arg_0, arg_1
    .long 7
    .long \arg_0
    .long \arg_1
    .endm

    .macro TrainerSlideOut arg_0
    .long 8
    .long \arg_0
    .endm

    .macro TrainerSlideIn arg_0, arg_1
    .long 9
    .long \arg_0
    .long \arg_1
    .endm

    .macro BackgroundSlideIn
    .long 10
    .endm

    .macro HealthbarSlideIn arg_0
    .long 11
    .long \arg_0
    .endm

    .macro HealthbarSlideInDelay arg_0
    .long 12
    .long \arg_0
    .endm

    .macro HealthbarSlideOut arg_0
    .long 13
    .long \arg_0
    .endm

    .macro Wait
    .long 14
    .endm

    .macro CalcDamage
    .long 15
    .endm

    .macro CalcMaxDamage
    .long 16
    .endm

    .macro PrintAttackMessage
    .long 17
    .endm

    .macro PrintMessage msg_id, tag, arg_0, arg_1, arg_2, arg_3, arg_4, arg_5
    .long 18
    .long \msg_id
    .long \tag
    .if \tag > TAG_NONE
        .long \arg_0
        .if \tag > TAG_TRNAME
            .long \arg_1
            .if \tag > TAG_TRCLASS_TRNAME
                .long \arg_2
                .if \tag > TAG_TRCLASS_TRNAME_ITEM
                    .long \arg_3
                    .if \tag > TAG_TRCLASS_TRNAME_TRCLASS_TRNAME
                        .long \arg_4
                        .long \arg_5
                    .endif
                .endif
            .endif
        .endif
    .endif
    .endm

    .macro PrintGlobalMessage msg_id, tag, arg_0, arg_1, arg_2, arg_3, arg_4, arg_5
    .long 19
    .long \msg_id
    .long \tag
    .if \tag > TAG_NONE
        .long \arg_0
        .if \tag > TAG_TRNAME
            .long \arg_1
            .if \tag > TAG_TRCLASS_TRNAME
                .long \arg_2
                .if \tag > TAG_TRCLASS_TRNAME_ITEM
                    .long \arg_3
                    .if \tag > TAG_TRCLASS_TRNAME_TRCLASS_TRNAME
                        .long \arg_4
                        .long \arg_5
                    .endif
                .endif
            .endif
        .endif
    .endif
    .endm

    .macro PrintBufferedMessage
    .long 20
    .endm

    .macro BufferMessage msg_id, tag, arg_0, arg_1, arg_2, arg_3, arg_4, arg_5
    .long 21
    .long \msg_id
    .long \tag
    .if \tag > TAG_NONE
        .long \arg_0
        .if \tag > TAG_TRNAME
            .long \arg_1
            .if \tag > TAG_TRCLASS_TRNAME
                .long \arg_2
                .if \tag > TAG_TRCLASS_TRNAME_ITEM
                    .long \arg_3
                    .if \tag > TAG_TRCLASS_TRNAME_TRCLASS_TRNAME
                        .long \arg_4
                        .long \arg_5
                    .endif
                .endif
            .endif
        .endif
    .endif
    .endm

    .macro BufferLocalMessage battler, msg_id, tag, arg_0, arg_1, arg_2, arg_3, arg_4, arg_5
    .long 22
    .long \battler
    .long \msg_id
    .long \tag
    .if \tag > TAG_NONE
        .long \arg_0
        .if \tag > TAG_TRNAME
            .long \arg_1
            .if \tag > TAG_TRCLASS_TRNAME
                .long \arg_2
                .if \tag > TAG_TRCLASS_TRNAME_ITEM
                    .long \arg_3
                    .if \tag > TAG_TRCLASS_TRNAME_TRCLASS_TRNAME
                        .long \arg_4
                        .long \arg_5
                    .endif
                .endif
            .endif
        .endif
    .endif
    .endm

    .macro PlayMoveAnimation arg_0
    .long 23
    .long \arg_0
    .endm

    .macro PlayMoveAnimationOnMons arg_0, arg_1, arg_2
    .long 24
    .long \arg_0
    .long \arg_1
    .long \arg_2
    .endm

    .macro FlickerMon arg_0
    .long 25
    .long \arg_0
    .endm

    .macro UpdateHealthBarValue arg_0
    .long 26
    .long \arg_0
    .endm

    .macro UpdateHealthBar arg_0
    .long 27
    .long \arg_0
    .endm

    .macro TryFaintMon arg_0
    .long 28
    .long \arg_0
    .endm

    .macro PlayFaintAnimation
    .long 29
    .endm

    .macro WaitButtonABTime arg_0
    .long 30
    .long \arg_0
    .endm

    .macro PlaySound arg_0, arg_1
    .long 31
    .long \arg_0
    .long \arg_1
    .endm

    .macro CompareVarToValue op, var, val, jump
    .long 32
    .long \op
    .long \var
    .long \val
    .long ((((\jump-.)) / 4) - 1)
    .endm

    .macro CompareMonDataToValue op, battler, param, val, jump
    .long 33
    .long \op
    .long \battler
    .long \param
    .long \val
    .long (\jump-.) / 4 - 1
    .endm

    .macro FadeOutBattle
    .long 34
    .endm

    .macro GoToSubscript arg_0
    .long 35
    .long \arg_0
    .endm

    .macro GoToEffectScript
    .long 36
    .endm

    .macro GoToMoveScript arg_0
    .long 37
    .long \arg_0
    .endm

    .macro CalcCrit
    .long 38
    .endm

    .macro CalcExpGain arg_0
    .long 39
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro StartGetExpTask
    .long 40
    .endm

    .macro WaitGetExpTask
    .long 41
    .endm

    .macro Dummy2A arg_0
    .long 42
    .long \arg_0
    .endm

    .macro ShowParty
    .long 43
    .endm

    .macro WaitMonSelection
    .long 44
    .endm

    .macro SwitchAndUpdateMon arg_0
    .long 45
    .long \arg_0
    .endm

    .macro GoToIfAnySwitches arg_0
    .long 46
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro StartCatchMonTask arg_0
    .long 47
    .long \arg_0
    .endm

    .macro WaitCatchMonTask
    .long 48
    .endm

    .macro SetMultiHit arg_0, arg_1
    .long 49
    .long \arg_0
    .long \arg_1
    .endm

    .macro UpdateVar op, var, val
    .long 50
    .long \op
    .long \var
    .long \val
    .endm

    .macro ChangeStatStage arg_0, arg_1, arg_2
    .long 51
    .long (((\arg_0 - .) / 4) - 3)
    .long (((\arg_1 - .) / 4) - 2)
    .long (((\arg_2 - .) / 4) - 1)
    .endm

    .macro UpdateMonData op, battler, param, val
    .long 52
    .long \op
    .long \battler
    .long \param
    .long \val
    .endm

    .macro ClearVolatileStatus arg_0, arg_1
    .long 53
    .long \arg_0
    .long \arg_1
    .endm

    .macro ToggleVanish arg_0, arg_1
    .long 54
    .long \arg_0
    .long \arg_1
    .endm

    .macro CheckAbility arg_0, arg_1, arg_2, arg_3
    .long 55
    .long \arg_0
    .long \arg_1
    .long \arg_2
    .long (((\arg_3 - .) / 4) - 1)
    .endm

    .macro Random arg_0, arg_1
    .long 56
    .long \arg_0
    .long \arg_1
    .endm

    .macro UpdateVarFromVar op, dst, src
    .long 57
    .long \op
    .long \dst
    .long \src
    .endm

    .macro UpdateMonDataFromVar arg_0, arg_1, arg_2, arg_3
    .long 58
    .long \arg_0
    .long \arg_1
    .long \arg_2
    .long \arg_3
    .endm

    .macro GoTo arg_0
    .long 59
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro Call arg_0
    .long 60
    .long \arg_0
    .endm

    .macro CallFromVar arg_0
    .long 61
    .long \arg_0
    .endm

    .macro SetMirrorMove
    .long 62
    .endm

    .macro ResetAllStatChanges
    .long 63
    .endm

    .macro LockMoveChoice arg_0
    .long 64
    .long \arg_0
    .endm

    .macro UnlockMoveChoice arg_0
    .long 65
    .long \arg_0
    .endm

    .macro SetHealthbarStatus arg_0, arg_1
    .long 66
    .long \arg_0
    .long \arg_1
    .endm

    .macro PrintTrainerMessage arg_0, arg_1
    .long 67
    .long \arg_0
    .long \arg_1
    .endm

    .macro PayPrizeMoney
    .long 68
    .endm

    .macro PlayBattleAnimation arg_0, arg_1
    .long 69
    .long \arg_0
    .long \arg_1
    .endm

    .macro PlayBattleAnimationOnMons arg_0, arg_1, arg_2
    .long 70
    .long \arg_0
    .long \arg_1
    .long \arg_2
    .endm

    .macro PlayBattleAnimationFromVar arg_0, arg_1
    .long 71
    .long \arg_0
    .long \arg_1
    .endm

    .macro PrintRecallMessage arg_0
    .long 72
    .long \arg_0
    .endm

    .macro PrintSendOutMessage arg_0
    .long 73
    .long \arg_0
    .endm

    .macro PrintEncounterMessage arg_0
    .long 74
    .long \arg_0
    .endm

    .macro PrintFirstSendOutMessage arg_0
    .long 75
    .long \arg_0
    .endm

    .macro PrintBufferedTrainerMessage arg_0
    .long 76
    .long \arg_0
    .endm

    .macro TryConversion arg_0
    .long 77
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro CompareVarToVar arg_0, arg_1, arg_2, arg_3
    .long 78
    .long \arg_0
    .long \arg_1
    .long \arg_2
    .long (((\arg_3 - .) / 4) - 1)
    .endm

    .macro CompareMonDataToVar arg_0, arg_1, arg_2, arg_3, arg_4
    .long 79
    .long \arg_0
    .long \arg_1
    .long \arg_2
    .long \arg_3
    .long (((\arg_4 - .) / 4) - 1)
    .endm

    .macro AddPayDayMoney
    .long 80
    .endm

    .macro TryLightScreen arg_0
    .long 81
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TryReflect arg_0
    .long 82
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TryMist arg_0
    .long 83
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TryOHKOMove
    .long 84
    .endm

    .macro DivideVarByValue var, val
    .long 85
    .long \var
    .long \val
    .endm

    .macro DivideVarByVar arg_0, arg_1
    .long 86
    .long \arg_0
    .long \arg_1
    .endm

    .macro TryMimic arg_0
    .long 87
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro Metronome
    .long 88
    .endm

    .macro TryDisable arg_0
    .long 89
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro Counter
    .long 90
    .endm

    .macro MirrorCoat
    .long 91
    .endm

    .macro TryEncore arg_0
    .long 92
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TryConversion2 arg_0
    .long 93
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TrySketch arg_0
    .long 94
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TrySleepTalk arg_0
    .long 95
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro CalcFlailPower
    .long 96
    .endm

    .macro TrySpite arg_0
    .long 97
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TryPartyStatusRefresh
    .long 98
    .endm

    .macro TryStealItem arg_0, arg_1
    .long 99
    .long (((\arg_0 - .) / 4) - 2)
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro TryProtection arg_0
    .long 100
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TrySubstitute arg_0
    .long 101
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TryWhirlwind arg_0
    .long 102
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro Transform
    .long 103
    .endm

    .macro TrySpikes arg_0
    .long 104
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro CheckSpikes arg_0, arg_1
    .long 105
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro TryPerishSong arg_0
    .long 106
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro GetMonBySpeedOrder arg_0
    .long 107
    .long \arg_0
    .endm

    .macro GoToIfValidMon arg_0, arg_1
    .long 108
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro EndOfTurnWeatherEffect arg_0
    .long 109
    .long \arg_0
    .endm

    .macro CalcRolloutPower
    .long 110
    .endm

    .macro CalcFuryCutterPower
    .long 111
    .endm

    .macro TryAttract arg_0
    .long 112
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TrySafeguard arg_0
    .long 113
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro Present arg_0
    .long 114
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro CalcMagnitudePower
    .long 115
    .endm

    .macro TryReplaceFaintedMon arg_0, arg_1, arg_2
    .long 116
    .long \arg_0
    .long \arg_1
    .long (((\arg_2 - .) / 4) - 1)
    .endm

    .macro RapidSpin
    .long 117
    .endm

    .macro WeatherHPRecovery
    .long 118
    .endm

    .macro CalcHiddenPowerParams
    .long 119
    .endm

    .macro CopyStatStages
    .long 120
    .endm

    .macro TryFutureSight arg_0
    .long 121
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro CheckMoveHit arg_0, arg_1, arg_2, arg_3
    .long 122
    .long \arg_0
    .long \arg_1
    .long \arg_2
    .long (((\arg_3 - .) / 4) - 1)
    .endm

    .macro TryTeleport arg_0
    .long 123
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro BeatUp
    .long 124
    .endm

    .macro FollowMe
    .long 125
    .endm

    .macro TryHelpingHand arg_0
    .long 126
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TrySwapItems arg_0, arg_1
    .long 127
    .long (((\arg_0 - .) / 4) - 2)
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro TryWish arg_0
    .long 128
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TryAssist arg_0
    .long 129
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TrySetMagicCoat arg_0
    .long 130
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro MagicCoat
    .long 131
    .endm

    .macro CalcRevengePowerMul
    .long 132
    .endm

    .macro TryBreakScreens arg_0
    .long 133
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TryYawn arg_0
    .long 134
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TryKnockOff arg_0
    .long 135
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro CalcHPFalloffPower
    .long 136
    .endm

    .macro TryImprison arg_0
    .long 137
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TryGrudge arg_0
    .long 138
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TrySnatch arg_0
    .long 139
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro CalcWeightBasedPower
    .long 140
    .endm

    .macro CalcWeatherBallParams
    .long 141
    .endm

    .macro TryPursuit arg_0
    .long 142
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro ApplyTypeEffectiveness
    .long 143
    .endm

    .macro IfTurnFlag arg_0, arg_1, arg_2, arg_3
    .long 144
    .long \arg_0
    .long \arg_1
    .long \arg_2
    .long (((\arg_3 - .) / 4) - 1)
    .endm

    .macro SetTurnFlag arg_0, arg_1, arg_2
    .long 145
    .long \arg_0
    .long \arg_1
    .long \arg_2
    .endm

    .macro CalcGyroBallPower
    .long 146
    .endm

    .macro TryMetalBurst arg_0
    .long 147
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro CalcPaybackPower
    .long 148
    .endm

    .macro CalcTrumpCardPower
    .long 149
    .endm

    .macro CalcWringOutPower
    .long 150
    .endm

    .macro TryMeFirst arg_0
    .long 151
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TryCopycat arg_0
    .long 152
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro CalcPunishmentPower
    .long 153
    .endm

    .macro TrySuckerPunch arg_0
    .long 154
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro CheckSideCondition arg_0, arg_1, arg_2, arg_3
    .long 155
    .long \arg_0
    .long \arg_1
    .long \arg_2
    .long (((\arg_3 - .) / 4) - 1)
    .endm

    .macro TryFeint arg_0
    .long 156
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro CheckCanShareStatus arg_0
    .long 157
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TryLastResort arg_0
    .long 158
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TryToxicSpikes arg_0
    .long 159
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro CheckToxicSpikes arg_0, arg_1
    .long 160
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro CheckIgnorableAbility arg_0, arg_1, arg_2, arg_3
    .long 161
    .long \arg_0
    .long \arg_1
    .long \arg_2
    .long (((\arg_3 - .) / 4) - 1)
    .endm

    .macro IfSameSide arg_0, arg_1, arg_2
    .long 162
    .long \arg_0
    .long \arg_1
    .long (((\arg_2 - .) / 4) - 1)
    .endm

    .macro GenerateEndOfBattleItem
    .long 163
    .endm

    .macro TrickRoom
    .long 164
    .endm

    .macro IfMovedThisTurn arg_0, arg_1
    .long 165
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro CheckItemHoldEffect arg_0, arg_1, arg_2, arg_3
    .long 166
    .long \arg_0
    .long \arg_1
    .long \arg_2
    .long (((\arg_3 - .) / 4) - 1)
    .endm

    .macro GetItemHoldEffect arg_0, arg_1
    .long 167
    .long \arg_0
    .long \arg_1
    .endm

    .macro GetItemEffectParam arg_0, arg_1
    .long 168
    .long \arg_0
    .long \arg_1
    .endm

    .macro TryCamouflage arg_0
    .long 169
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro GetTerrainMove
    .long 170
    .endm

    .macro GetTerrainSecondaryEffect
    .long 171
    .endm

    .macro CalcNaturalGiftParams arg_0
    .long 172
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TryPluck arg_0, arg_1
    .long 173
    .long (((\arg_0 - .) / 4) - 2)
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro TryFling arg_0
    .long 174
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro YesNoMenu arg_0
    .long 175
    .long \arg_0
    .endm

    .macro WaitYesNoResult arg_0, arg_1
    .long 176
    .long (((\arg_0 - .) / 4) - 2)
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro ChoosePokemonMenu
    .long 177
    .endm

    .macro WaitPokemonMenuResult arg_0
    .long 178
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro SetLinkBattleResult
    .long 179
    .endm

    .macro CheckStealthRock arg_0, arg_1
    .long 180
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro CheckEffectActivation arg_0
    .long 181
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro CheckChatterActivation arg_0
    .long 182
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro GetCurrentMoveData arg_0
    .long 183
    .long \arg_0
    .endm

    .macro SetMosaic arg_0, arg_1, arg_2
    .long 184
    .long \arg_0
    .long \arg_1
    .long \arg_2
    .endm

    .macro ChangeForm arg_0
    .long 185
    .long \arg_0
    .endm

    .macro SetBattleBackground
    .long 186
    .endm

    .macro UseBagItem arg_0
    .long 187
    .long \arg_0
    .endm

    .macro TryEscape arg_0, arg_1
    .long 188
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro ShowBattleStartPartyGauge arg_0
    .long 189
    .long \arg_0
    .endm

    .macro HideBattleStartPartyGauge arg_0
    .long 190
    .long \arg_0
    .endm

    .macro ShowPartyGauge arg_0
    .long 191
    .long \arg_0
    .endm

    .macro HidePartyGauge arg_0
    .long 192
    .long \arg_0
    .endm

    .macro LoadPartyGaugeGraphics
    .long 193
    .endm

    .macro FreePartyGaugeGraphics
    .long 194
    .endm

    .macro IncrementGameStat arg_0, arg_1, arg_2
    .long 195
    .long \arg_0
    .long \arg_1
    .long \arg_2
    .endm

    .macro RestoreSprite arg_0
    .long 196
    .long \arg_0
    .endm

    .macro TriggerAbilityOnHit arg_0
    .long 197
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro SpriteToOAM arg_0
    .long 198
    .long \arg_0
    .endm

    .macro OAMToSprite arg_0
    .long 199
    .long \arg_0
    .endm

    .macro CheckBlackOut arg_0, arg_1
    .long 200
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro BoostRandomStatBy2 arg_0
    .long 201
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro RemoveItem arg_0
    .long 202
    .long \arg_0
    .endm

    .macro TryRecycle arg_0
    .long 203
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TriggerHeldItemOnHit arg_0
    .long 204
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro PrintBattleResultMessage
    .long 205
    .endm

    .macro PrintEscapeMessage
    .long 206
    .endm

    .macro PrintForfeitMessage
    .long 207
    .endm

    .macro CheckHoldOnWith1HP arg_0
    .long 208
    .long \arg_0
    .endm

    .macro TryRestoreStatusOnSwitch arg_0, arg_1
    .long 209
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro CheckSubstitute arg_0, arg_1
    .long 210
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro CheckIgnoreWeather arg_0
    .long 211
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro SetRandomTarget arg_0
    .long 212
    .long \arg_0
    .endm

    .macro TriggerHeldItemOnPivotMove arg_0
    .long 213
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro RefreshSprite arg_0
    .long 214
    .long \arg_0
    .endm

    .macro PlayMoveHitSound arg_0
    .long 215
    .long \arg_0
    .endm

    .macro PlayBGM arg_0, arg_1
    .long 216
    .long \arg_0
    .long \arg_1
    .endm

    .macro CheckSafariGameDone arg_0
    .long 217
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro WaitTime arg_0
    .long 218
    .long \arg_0
    .endm

    .macro CheckCurMoveIsType arg_0, arg_1
    .long 219
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro LoadArchivedMonData arg_0, arg_1, arg_2
    .long 220
    .long \arg_0
    .long \arg_1
    .long \arg_2
    .endm

    .macro RefreshMonData arg_0
    .long 221
    .long \arg_0
    .endm

    .macro COMMAND_DE arg_0, arg_1
    .long 222
    .long \arg_0
    .long \arg_1
    .endm

    .macro COMMAND_DF arg_0
    .long 223
    .long \arg_0
    .endm

    .macro End
    .long 224
    .endm

    .macro ReduceWeight arg_0
    .long 225
    .long \arg_0
    .endm

    .macro CalcHeavySlamPower
    .long 226
    .endm

    .macro IsAttackerLevelLowerThanDefender arg_0
    .long 227
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro SetTailwindCounter arg_0
    .long 228
    .long \arg_0
    .endm

    .macro GotoIfTailwindActive arg_0, arg_1
    .long 229
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro GotoIfCurrentFieldIsType arg_0, arg_1
    .long 230
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro GotoIfMovePowerNotZero arg_0
    .long 231
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro GotoIfGrounded arg_0, arg_1
    .long 232
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro GotoIfCurrentAdjustedMoveIsType arg_0, arg_1
    .long 233
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro GotoIfContactMove arg_0
    .long 234
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro GotoIfSoundMove arg_0
    .long 235
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro UpdateTerrainOverlay arg_0, arg_1
    .long 236
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro GotoIfTerrainOverlayIsType arg_0, arg_1
    .long 237
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .macro SetPsychicTerrainMoveUsedFlag
    .long 238
    .endm

    .macro GotoIfFirstHitOfParentalBond arg_0
    .long 239
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro GotoIfSecondHitOfParentalBond arg_0
    .long 240
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro SetParentalBondFlag
    .long 241
    .endm

    .macro GotoIfCurrentMoveIsValidForParentalBond arg_0
    .long 242
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro GotoIfCanApplyKnockOffBoost arg_0
    .long 243
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro GotoIfParentalBondIsActive arg_0
    .long 244
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro ChangePermanentBackground arg_0, arg_1
    .long 245
    .long \arg_0
    .long \arg_1
    .endm

    .macro ChangeExecutionOrderPriority arg_0, arg_1, arg_2
    .long 246
    .long \arg_0
    .long \arg_1
    .long (((\arg_2 - .) / 4) - 1)
    .endm

    .macro SetBindingTurns arg_0
    .long 247
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro ClearBindingTurns
    .long 248
    .endm

    .macro CanClearPrimalWeather arg_0, arg_1, arg_2, arg_3, arg_4
    .long 249
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 4)
    .long (((\arg_2 - .) / 4) - 3)
    .long (((\arg_3 - .) / 4) - 2)
    .long (((\arg_4 - .) / 4) - 1)
    .endm

    .macro SetAbilityActivatedFlag arg_0
    .long 250
    .long \arg_0
    .endm

    .macro SwitchInAbilityCheck arg_0
    .long 251
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TryStickyWeb arg_0
    .long 252
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro TryMegaOrUltraBurstDuringPursuit arg_0
    .long 253
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro CalcConfusionDamage arg_0
    .long 254
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro CheckCanActivateDefiantOrCompetitive arg_0, arg_1, arg_2
    .long 255
    .long (((\arg_0 - .) / 4) - 3)
    .long (((\arg_1 - .) / 4) - 2)
    .long (((\arg_2 - .) / 4) - 1)
    .endm

    .macro JumpToCurrentEntryHazard arg_0, arg_1, arg_2, arg_3, arg_4, arg_5
    .long 256
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 5)
    .long (((\arg_2 - .) / 4) - 4)
    .long (((\arg_3 - .) / 4) - 3)
    .long (((\arg_4 - .) / 4) - 2)
    .long (((\arg_5 - .) / 4) - 1)
    .endm

    .macro AddEntryHazardToQueue arg_0, arg_1
    .long 257
    .long \arg_0
    .long \arg_1
    .endm

    .macro RemoveEntryHazardFromQueue arg_0, arg_1
    .long 258
    .long \arg_0
    .long \arg_1
    .endm

    .macro CheckShouldNotTurnOffMultiStatAnim battlerCategory, label
    // need to skip the stat animation turning off in case of defiant and competitive so the animation shows properly
    CheckAbility CHECK_OPCODE_HAVE, \battlerCategory, ABILITY_DEFIANT, \label
    CheckAbility CHECK_OPCODE_HAVE, \battlerCategory, ABILITY_COMPETITIVE, \label
    .endm

    .macro CheckProtectContactMoves
    .long 259
    .endm

    .macro TryIncinerate arg_0
    .long 260
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro AddThirdType arg_0
    .long 261
    .long \arg_0
    .endm

    .macro TryAuroraVeil
    .long 262
    .endm

    .macro ClearAuroraVeil
    .long 263
    .endm

    .macro StrengthSapCalc
    .long 264
    .endm

    .macro CheckTargetIsPartner arg_0
    .long 265
    .long (((\arg_0 - .) / 4) - 1)
    .endm

    .macro ClearSmog
    .long 266
    .endm

    .macro GoToIfThirdType arg_0, arg_1, arg_2
    .long 267
    .long \arg_0
    .long \arg_1
    .long (((\arg_2 - .) / 4) - 1)
    .endm

    .macro GoToIfTerastallized arg_0, arg_1
    .long 268
    .long \arg_0
    .long (((\arg_1 - .) / 4) - 1)
    .endm

    .equ BASE_ENGINE_BTL_SCR_CMDS_MAX, 268

    // .macro YourCustomCommand
    // .long (BASE_ENGINE_BTL_SCR_CMDS_MAX + 1)
    // .endm


.endif
